; ModuleID = 'x264_src/common/macroblock.c'
source_filename = "x264_src/common/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }

@x264_mb_type_fix = internal unnamed_addr constant [19 x i8] c"\00\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16, !dbg !0
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1, !dbg !182
@x264_size2pixel = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\00\06\04\00\00", [5 x i8] c"\00\05\03\00\01", [5 x i8] zeroinitializer, [5 x i8] c"\00\00\02\00\00"], align 16, !dbg !176
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc_8x8(ptr noundef %h, i32 noundef %i8) local_unnamed_addr #0 !dbg !198 {
entry:
    #dbg_value(ptr %h, !1482, !DIExpression(), !1489)
    #dbg_value(i32 %i8, !1483, !DIExpression(), !1489)
  %and = shl i32 %i8, 1, !dbg !1490
  %mul = and i32 %and, 2, !dbg !1490
    #dbg_value(i32 %mul, !1484, !DIExpression(), !1489)
  %mul1 = and i32 %i8, -2, !dbg !1491
    #dbg_value(i32 %i8, !1485, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !1489)
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !1492
  %0 = load i32, ptr %i_type, align 16, !dbg !1492
  %cmp = icmp eq i32 %0, 0, !dbg !1493
  br i1 %cmp, label %if.then, label %if.else, !dbg !1494

if.then:                                          ; preds = %entry
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392, !dbg !1495
  %idxprom = sext i32 %i8 to i64, !dbg !1497
  %arrayidx = getelementptr inbounds [4 x i8], ptr %i_sub_partition, i64 0, i64 %idxprom, !dbg !1497
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1497
  switch i8 %1, label %if.end40 [
    i8 3, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
    i8 0, label %sw.bb7
  ], !dbg !1498

sw.bb:                                            ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1499
  br label %if.end40, !dbg !1501

sw.bb2:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 1), !dbg !1502
  %add3 = or i32 %i8, 1, !dbg !1503
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add3, i32 noundef 2, i32 noundef 1), !dbg !1504
  br label %if.end40, !dbg !1505

sw.bb4:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 2), !dbg !1506
  %add6 = or disjoint i32 %mul, 1, !dbg !1507
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add6, i32 noundef %mul1, i32 noundef 1, i32 noundef 2), !dbg !1508
  br label %if.end40, !dbg !1509

sw.bb7:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 1), !dbg !1510
  %add10 = or disjoint i32 %mul, 1, !dbg !1511
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %mul1, i32 noundef 1, i32 noundef 1), !dbg !1512
  %add13 = or i32 %i8, 1, !dbg !1513
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add13, i32 noundef 1, i32 noundef 1), !dbg !1514
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %add13, i32 noundef 1, i32 noundef 1), !dbg !1515
  br label %if.end40, !dbg !1516

if.else:                                          ; preds = %entry
  %mul17 = shl nsw i32 %i8, 3, !dbg !1517
  %add16 = or disjoint i32 %mul, %mul17, !dbg !1518
  %add18 = or i32 %add16, 12, !dbg !1518
    #dbg_value(i32 %add18, !1486, !DIExpression(), !1519)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !1520
  %idxprom21 = sext i32 %add18 to i64, !dbg !1522
  %arrayidx22 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom21, !dbg !1522
  %2 = load i8, ptr %arrayidx22, align 1, !dbg !1522
  %cmp24 = icmp sgt i8 %2, -1, !dbg !1523
  br i1 %cmp24, label %if.then26, label %if.else38, !dbg !1524

if.then26:                                        ; preds = %if.else
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 25160, !dbg !1525
  %arrayidx32 = getelementptr inbounds [40 x i8], ptr %arrayidx30, i64 0, i64 %idxprom21, !dbg !1525
  %3 = load i8, ptr %arrayidx32, align 1, !dbg !1525
  %cmp34 = icmp sgt i8 %3, -1, !dbg !1527
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !1528

if.then36:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1529
  br label %if.end40, !dbg !1529

if.else37:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1530
  br label %if.end40

if.else38:                                        ; preds = %if.else
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1531
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.else37, %if.then36, %sw.bb, %sw.bb2, %sw.bb4, %sw.bb7, %if.then
  ret void, !dbg !1532
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_0xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1533 {
entry:
    #dbg_value(ptr %h, !1537, !DIExpression(), !1546)
    #dbg_value(i32 %x, !1538, !DIExpression(), !1546)
    #dbg_value(i32 %y, !1539, !DIExpression(), !1546)
    #dbg_value(i32 %width, !1540, !DIExpression(), !1546)
    #dbg_value(i32 %height, !1541, !DIExpression(), !1546)
  %add = add nuw nsw i32 %x, 12, !dbg !1547
  %mul = shl nsw i32 %y, 3, !dbg !1548
  %add1 = add nsw i32 %add, %mul, !dbg !1549
    #dbg_value(i32 %add1, !1542, !DIExpression(), !1546)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !1550
  %idxprom = sext i32 %add1 to i64, !dbg !1551
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom, !dbg !1551
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1551
  %conv = sext i8 %0 to i32, !dbg !1551
    #dbg_value(i32 %conv, !1543, !DIExpression(), !1546)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !1552
  %arrayidx7 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, !dbg !1553
  %1 = load i16, ptr %arrayidx7, align 4, !dbg !1553
  %conv9 = sext i16 %1 to i32, !dbg !1553
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440, !dbg !1554
  %2 = load i32, ptr %mv_min, align 8, !dbg !1555
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448, !dbg !1556
  %3 = load i32, ptr %mv_max, align 16, !dbg !1557
    #dbg_value(i32 %conv9, !1558, !DIExpression(), !1565)
    #dbg_value(i32 %2, !1563, !DIExpression(), !1565)
    #dbg_value(i32 %3, !1564, !DIExpression(), !1565)
  %cmp.i = icmp sgt i32 %2, %conv9, !dbg !1567
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3), !dbg !1568
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i, !dbg !1568
  %mul14 = shl nuw nsw i32 %x, 4, !dbg !1569
  %add15 = add nsw i32 %cond5.i, %mul14, !dbg !1570
    #dbg_value(i32 %add15, !1544, !DIExpression(), !1546)
  %arrayidx22 = getelementptr inbounds i8, ptr %arrayidx7, i64 2, !dbg !1571
  %4 = load i16, ptr %arrayidx22, align 2, !dbg !1571
  %conv23 = sext i16 %4 to i32, !dbg !1571
  %arrayidx26 = getelementptr inbounds i8, ptr %h, i64 16444, !dbg !1572
  %5 = load i32, ptr %arrayidx26, align 4, !dbg !1572
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 16452, !dbg !1573
  %6 = load i32, ptr %arrayidx29, align 4, !dbg !1573
    #dbg_value(i32 %conv23, !1558, !DIExpression(), !1574)
    #dbg_value(i32 %5, !1563, !DIExpression(), !1574)
    #dbg_value(i32 %6, !1564, !DIExpression(), !1574)
  %cmp.i267 = icmp sgt i32 %5, %conv23, !dbg !1576
  %cond.i268 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %6), !dbg !1577
  %cond5.i269 = select i1 %cmp.i267, i32 %5, i32 %cond.i268, !dbg !1577
  %mul31 = shl nsw i32 %y, 4, !dbg !1578
  %add32 = add nsw i32 %cond5.i269, %mul31, !dbg !1579
    #dbg_value(i32 %add32, !1545, !DIExpression(), !1546)
  %mc = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !1580
  %7 = load ptr, ptr %mc, align 8, !dbg !1581
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !1582
  %8 = load ptr, ptr %p_fdec, align 16, !dbg !1583
  %mul36 = shl nsw i32 %y, 7, !dbg !1584
  %mul37 = shl nuw nsw i32 %x, 2, !dbg !1585
  %add38 = add nsw i32 %mul36, %mul37, !dbg !1586
  %idxprom39 = sext i32 %add38 to i64, !dbg !1583
  %arrayidx40 = getelementptr inbounds i8, ptr %8, i64 %idxprom39, !dbg !1583
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424, !dbg !1587
  %idxprom44 = sext i8 %0 to i64, !dbg !1588
  %arrayidx45 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom44, !dbg !1588
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !1589
  %9 = load i32, ptr %i_stride, align 16, !dbg !1590
  %mul49 = shl nuw nsw i32 %width, 2, !dbg !1591
  %mul50 = shl nuw nsw i32 %height, 2, !dbg !1592
  %weight = getelementptr inbounds i8, ptr %h, i64 7584, !dbg !1593
  %arrayidx52 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight, i64 0, i64 %idxprom44, !dbg !1594
  tail call void %7(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %9, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull %arrayidx52) #13, !dbg !1595
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1596
  %10 = load i32, ptr %b_interlaced, align 4, !dbg !1596
  %and = and i32 %10, %conv, !dbg !1598
  %tobool.not = icmp eq i32 %and, 0, !dbg !1598
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1599

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1600
  %11 = load i32, ptr %i_mb_y, align 4, !dbg !1600
  %and56 = shl i32 %11, 2, !dbg !1601
  %mul57 = and i32 %and56, 4, !dbg !1601
  %sub = add i32 %add32, -2, !dbg !1602
  %add58 = add i32 %sub, %mul57, !dbg !1603
    #dbg_value(i32 %add58, !1545, !DIExpression(), !1546)
  br label %if.end, !dbg !1604

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add58, %if.then ], [ %add32, %entry ], !dbg !1546
    #dbg_value(i32 %mvy.0, !1545, !DIExpression(), !1546)
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !1605
  %12 = load ptr, ptr %mc_chroma, align 8, !dbg !1605
  %arrayidx63 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !1606
  %13 = load ptr, ptr %arrayidx63, align 8, !dbg !1606
  %mul65 = shl nsw i32 %y, 6, !dbg !1607
  %mul66 = shl nuw nsw i32 %x, 1, !dbg !1608
  %add67 = add nsw i32 %mul65, %mul66, !dbg !1609
  %idxprom68 = sext i32 %add67 to i64, !dbg !1606
  %arrayidx69 = getelementptr inbounds i8, ptr %13, i64 %idxprom68, !dbg !1606
  %arrayidx76 = getelementptr inbounds i8, ptr %arrayidx45, i64 32, !dbg !1610
  %14 = load ptr, ptr %arrayidx76, align 16, !dbg !1610
  %arrayidx80 = getelementptr inbounds i8, ptr %h, i64 25012, !dbg !1611
  %15 = load i32, ptr %arrayidx80, align 4, !dbg !1611
  %mul81 = shl nuw nsw i32 %width, 1, !dbg !1612
  %mul82 = shl nuw nsw i32 %height, 1, !dbg !1613
  tail call void %12(ptr noundef %arrayidx69, i32 noundef 32, ptr noundef %14, i32 noundef %15, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #13, !dbg !1614
  %weightfn = getelementptr inbounds i8, ptr %arrayidx52, i64 112, !dbg !1615
  %16 = load ptr, ptr %weightfn, align 16, !dbg !1615
  %tobool88.not = icmp eq ptr %16, null, !dbg !1617
  br i1 %tobool88.not, label %if.end124, label %if.then89, !dbg !1618

if.then89:                                        ; preds = %if.end
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx52, i64 64, !dbg !1617
  %shr = lshr i32 %width, 1, !dbg !1619
  %idxprom96 = zext nneg i32 %shr to i64, !dbg !1620
  %arrayidx97 = getelementptr inbounds ptr, ptr %16, i64 %idxprom96, !dbg !1620
  %17 = load ptr, ptr %arrayidx97, align 8, !dbg !1620
  %18 = load ptr, ptr %arrayidx63, align 8, !dbg !1621
  %arrayidx107 = getelementptr inbounds i8, ptr %18, i64 %idxprom68, !dbg !1621
  tail call void %17(ptr noundef %arrayidx107, i32 noundef 32, ptr noundef %arrayidx107, i32 noundef 32, ptr noundef nonnull %arrayidx87, i32 noundef %mul82) #13, !dbg !1620
  br label %if.end124, !dbg !1620

if.end124:                                        ; preds = %if.then89, %if.end
  %19 = load ptr, ptr %mc_chroma, align 8, !dbg !1622
  %arrayidx130 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !1623
  %20 = load ptr, ptr %arrayidx130, align 16, !dbg !1623
  %arrayidx136 = getelementptr inbounds i8, ptr %20, i64 %idxprom68, !dbg !1623
  %arrayidx143 = getelementptr inbounds i8, ptr %arrayidx45, i64 40, !dbg !1624
  %21 = load ptr, ptr %arrayidx143, align 8, !dbg !1624
  %arrayidx147 = getelementptr inbounds i8, ptr %h, i64 25016, !dbg !1625
  %22 = load i32, ptr %arrayidx147, align 8, !dbg !1625
  tail call void %19(ptr noundef %arrayidx136, i32 noundef 32, ptr noundef %21, i32 noundef %22, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #13, !dbg !1626
  %weightfn155 = getelementptr inbounds i8, ptr %arrayidx52, i64 176, !dbg !1627
  %23 = load ptr, ptr %weightfn155, align 16, !dbg !1627
  %tobool156.not = icmp eq ptr %23, null, !dbg !1629
  br i1 %tobool156.not, label %if.end193, label %if.then157, !dbg !1630

if.then157:                                       ; preds = %if.end124
  %arrayidx154 = getelementptr inbounds i8, ptr %arrayidx52, i64 128, !dbg !1629
  %shr164 = lshr i32 %width, 1, !dbg !1631
  %idxprom165 = zext nneg i32 %shr164 to i64, !dbg !1632
  %arrayidx166 = getelementptr inbounds ptr, ptr %23, i64 %idxprom165, !dbg !1632
  %24 = load ptr, ptr %arrayidx166, align 8, !dbg !1632
  %25 = load ptr, ptr %arrayidx130, align 16, !dbg !1633
  %arrayidx176 = getelementptr inbounds i8, ptr %25, i64 %idxprom68, !dbg !1633
  tail call void %24(ptr noundef %arrayidx176, i32 noundef 32, ptr noundef %arrayidx176, i32 noundef 32, ptr noundef nonnull %arrayidx154, i32 noundef %mul82) #13, !dbg !1632
  br label %if.end193, !dbg !1632

if.end193:                                        ; preds = %if.then157, %if.end124
  ret void, !dbg !1634
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_01xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1635 {
entry:
  %i_stride0 = alloca i32, align 4, !DIAssignID !1657
    #dbg_assign(i1 undef, !1651, !DIExpression(), !1657, ptr %i_stride0, !DIExpression(), !1658)
  %i_stride1 = alloca i32, align 4, !DIAssignID !1659
    #dbg_assign(i1 undef, !1652, !DIExpression(), !1659, ptr %i_stride1, !DIExpression(), !1658)
  %tmp0 = alloca [256 x i8], align 16, !DIAssignID !1660
    #dbg_assign(i1 undef, !1653, !DIExpression(), !1660, ptr %tmp0, !DIExpression(), !1658)
  %tmp1 = alloca [256 x i8], align 16, !DIAssignID !1661
    #dbg_assign(i1 undef, !1654, !DIExpression(), !1661, ptr %tmp1, !DIExpression(), !1658)
    #dbg_value(ptr %h, !1637, !DIExpression(), !1658)
    #dbg_value(i32 %x, !1638, !DIExpression(), !1658)
    #dbg_value(i32 %y, !1639, !DIExpression(), !1658)
    #dbg_value(i32 %width, !1640, !DIExpression(), !1658)
    #dbg_value(i32 %height, !1641, !DIExpression(), !1658)
  %add = add nuw nsw i32 %x, 12, !dbg !1662
  %mul = shl nsw i32 %y, 3, !dbg !1663
  %add1 = add nsw i32 %add, %mul, !dbg !1664
    #dbg_value(i32 %add1, !1642, !DIExpression(), !1658)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !1665
  %idxprom = sext i32 %add1 to i64, !dbg !1666
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom, !dbg !1666
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1666
  %conv = sext i8 %0 to i32, !dbg !1666
    #dbg_value(i32 %conv, !1643, !DIExpression(), !1658)
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 25160, !dbg !1667
  %arrayidx8 = getelementptr inbounds [40 x i8], ptr %arrayidx6, i64 0, i64 %idxprom, !dbg !1667
  %1 = load i8, ptr %arrayidx8, align 1, !dbg !1667
  %conv9 = sext i8 %1 to i32, !dbg !1667
    #dbg_value(i32 %conv9, !1644, !DIExpression(), !1658)
  %bipred_weight = getelementptr inbounds i8, ptr %h, i64 26624, !dbg !1668
  %2 = load ptr, ptr %bipred_weight, align 16, !dbg !1668
  %idxprom11 = sext i8 %0 to i64, !dbg !1669
  %idxprom13 = sext i8 %1 to i64, !dbg !1669
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %2, i64 %idxprom11, i64 %idxprom13, !dbg !1669
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !1669
  %conv15 = sext i8 %3 to i32, !dbg !1669
    #dbg_value(i32 %conv15, !1645, !DIExpression(), !1658)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !1670
  %arrayidx20 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, !dbg !1671
  %4 = load i16, ptr %arrayidx20, align 4, !dbg !1671
  %conv22 = sext i16 %4 to i32, !dbg !1671
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440, !dbg !1672
  %5 = load i32, ptr %mv_min, align 8, !dbg !1673
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448, !dbg !1674
  %6 = load i32, ptr %mv_max, align 16, !dbg !1675
    #dbg_value(i32 %conv22, !1558, !DIExpression(), !1676)
    #dbg_value(i32 %5, !1563, !DIExpression(), !1676)
    #dbg_value(i32 %6, !1564, !DIExpression(), !1676)
  %cmp.i = icmp sgt i32 %5, %conv22, !dbg !1678
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv22, i32 %6), !dbg !1679
  %cond5.i = select i1 %cmp.i, i32 %5, i32 %cond.i, !dbg !1679
  %mul27 = shl nuw nsw i32 %x, 4, !dbg !1680
  %add28 = add nsw i32 %cond5.i, %mul27, !dbg !1681
    #dbg_value(i32 %add28, !1646, !DIExpression(), !1658)
  %arrayidx32 = getelementptr inbounds i8, ptr %h, i64 25360, !dbg !1682
  %arrayidx34 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx32, i64 0, i64 %idxprom, !dbg !1682
  %7 = load i16, ptr %arrayidx34, align 4, !dbg !1682
  %conv36 = sext i16 %7 to i32, !dbg !1682
    #dbg_value(i32 %conv36, !1558, !DIExpression(), !1683)
    #dbg_value(i32 %5, !1563, !DIExpression(), !1683)
    #dbg_value(i32 %6, !1564, !DIExpression(), !1683)
  %cmp.i330 = icmp sgt i32 %5, %conv36, !dbg !1685
  %cond.i331 = tail call i32 @llvm.smin.i32(i32 %conv36, i32 %6), !dbg !1686
  %cond5.i332 = select i1 %cmp.i330, i32 %5, i32 %cond.i331, !dbg !1686
  %add45 = add nsw i32 %cond5.i332, %mul27, !dbg !1687
    #dbg_value(i32 %add45, !1647, !DIExpression(), !1658)
  %arrayidx52 = getelementptr inbounds i8, ptr %arrayidx20, i64 2, !dbg !1688
  %8 = load i16, ptr %arrayidx52, align 2, !dbg !1688
  %conv53 = sext i16 %8 to i32, !dbg !1688
  %arrayidx56 = getelementptr inbounds i8, ptr %h, i64 16444, !dbg !1689
  %9 = load i32, ptr %arrayidx56, align 4, !dbg !1689
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 16452, !dbg !1690
  %10 = load i32, ptr %arrayidx59, align 4, !dbg !1690
    #dbg_value(i32 %conv53, !1558, !DIExpression(), !1691)
    #dbg_value(i32 %9, !1563, !DIExpression(), !1691)
    #dbg_value(i32 %10, !1564, !DIExpression(), !1691)
  %cmp.i333 = icmp sgt i32 %9, %conv53, !dbg !1693
  %cond.i334 = tail call i32 @llvm.smin.i32(i32 %conv53, i32 %10), !dbg !1694
  %cond5.i335 = select i1 %cmp.i333, i32 %9, i32 %cond.i334, !dbg !1694
  %mul61 = shl nsw i32 %y, 4, !dbg !1695
  %add62 = add nsw i32 %cond5.i335, %mul61, !dbg !1696
    #dbg_value(i32 %add62, !1648, !DIExpression(), !1658)
  %arrayidx69 = getelementptr inbounds i8, ptr %arrayidx34, i64 2, !dbg !1697
  %11 = load i16, ptr %arrayidx69, align 2, !dbg !1697
  %conv70 = sext i16 %11 to i32, !dbg !1697
    #dbg_value(i32 %conv70, !1558, !DIExpression(), !1698)
    #dbg_value(i32 %9, !1563, !DIExpression(), !1698)
    #dbg_value(i32 %10, !1564, !DIExpression(), !1698)
  %cmp.i336 = icmp sgt i32 %9, %conv70, !dbg !1700
  %cond.i337 = tail call i32 @llvm.smin.i32(i32 %conv70, i32 %10), !dbg !1701
  %cond5.i338 = select i1 %cmp.i336, i32 %9, i32 %cond.i337, !dbg !1701
  %add79 = add nsw i32 %cond5.i338, %mul61, !dbg !1702
    #dbg_value(i32 %add79, !1649, !DIExpression(), !1658)
  %idxprom80 = zext nneg i32 %height to i64, !dbg !1703
  %idxprom82 = zext nneg i32 %width to i64, !dbg !1703
  %arrayidx83 = getelementptr inbounds [5 x [5 x i8]], ptr @x264_size2pixel, i64 0, i64 %idxprom80, i64 %idxprom82, !dbg !1703
  %12 = load i8, ptr %arrayidx83, align 1, !dbg !1703
    #dbg_value(i8 %12, !1650, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1658)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride0) #13, !dbg !1704
  store i32 16, ptr %i_stride0, align 4, !dbg !1705, !DIAssignID !1706
    #dbg_assign(i32 16, !1651, !DIExpression(), !1706, ptr %i_stride0, !DIExpression(), !1658)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride1) #13, !dbg !1704
  store i32 16, ptr %i_stride1, align 4, !dbg !1707, !DIAssignID !1708
    #dbg_assign(i32 16, !1652, !DIExpression(), !1708, ptr %i_stride1, !DIExpression(), !1658)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp0) #13, !dbg !1709
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp1) #13, !dbg !1710
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624, !dbg !1711
  %13 = load ptr, ptr %get_ref, align 8, !dbg !1711
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424, !dbg !1712
  %arrayidx88 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom11, !dbg !1713
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !1714
  %14 = load i32, ptr %i_stride, align 16, !dbg !1715
  %mul93 = shl nuw nsw i32 %width, 2, !dbg !1716
  %mul94 = shl nuw nsw i32 %height, 2, !dbg !1717
  %call95 = call ptr %13(ptr noundef nonnull %tmp0, ptr noundef nonnull %i_stride0, ptr noundef nonnull %arrayidx88, i32 noundef %14, i32 noundef %add28, i32 noundef %add62, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #13, !dbg !1718
    #dbg_value(ptr %call95, !1655, !DIExpression(), !1658)
  %15 = load ptr, ptr %get_ref, align 8, !dbg !1719
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 22960, !dbg !1720
  %arrayidx104 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx102, i64 0, i64 %idxprom13, !dbg !1720
  %16 = load i32, ptr %i_stride, align 16, !dbg !1721
  %call112 = call ptr %15(ptr noundef nonnull %tmp1, ptr noundef nonnull %i_stride1, ptr noundef nonnull %arrayidx104, i32 noundef %16, i32 noundef %add45, i32 noundef %add79, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #13, !dbg !1722
    #dbg_value(ptr %call112, !1656, !DIExpression(), !1658)
  %avg = getelementptr inbounds i8, ptr %h, i64 32640, !dbg !1723
  %idxprom114 = zext i8 %12 to i64, !dbg !1724
  %arrayidx115 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom114, !dbg !1724
  %17 = load ptr, ptr %arrayidx115, align 8, !dbg !1724
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !1725
  %18 = load ptr, ptr %p_fdec, align 16, !dbg !1726
  %mul120 = shl nsw i32 %y, 7, !dbg !1727
  %mul121 = shl nuw nsw i32 %x, 2, !dbg !1728
  %add122 = add nsw i32 %mul120, %mul121, !dbg !1729
  %idxprom123 = sext i32 %add122 to i64, !dbg !1726
  %arrayidx124 = getelementptr inbounds i8, ptr %18, i64 %idxprom123, !dbg !1726
  %19 = load i32, ptr %i_stride0, align 4, !dbg !1730
  %20 = load i32, ptr %i_stride1, align 4, !dbg !1731
  call void %17(ptr noundef %arrayidx124, i32 noundef 32, ptr noundef %call95, i32 noundef %19, ptr noundef %call112, i32 noundef %20, i32 noundef %conv15) #13, !dbg !1724
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1732
  %21 = load i32, ptr %b_interlaced, align 4, !dbg !1732
  %and = and i32 %21, %conv, !dbg !1734
  %tobool.not = icmp eq i32 %and, 0, !dbg !1734
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1735

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1736
  %22 = load i32, ptr %i_mb_y, align 4, !dbg !1736
  %and127 = shl i32 %22, 2, !dbg !1737
  %mul128 = and i32 %and127, 4, !dbg !1737
  %sub = add i32 %add62, -2, !dbg !1738
  %add129 = add i32 %sub, %mul128, !dbg !1739
    #dbg_value(i32 %add129, !1648, !DIExpression(), !1658)
  br label %if.end, !dbg !1740

if.end:                                           ; preds = %if.then, %entry
  %mvy0.0 = phi i32 [ %add129, %if.then ], [ %add62, %entry ], !dbg !1658
    #dbg_value(i32 %mvy0.0, !1648, !DIExpression(), !1658)
  %and132 = and i32 %21, %conv9, !dbg !1741
  %tobool133.not = icmp eq i32 %and132, 0, !dbg !1741
  br i1 %tobool133.not, label %if.end141, label %if.then134, !dbg !1743

if.then134:                                       ; preds = %if.end
  %i_mb_y136 = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1744
  %23 = load i32, ptr %i_mb_y136, align 4, !dbg !1744
  %and137 = shl i32 %23, 2, !dbg !1745
  %mul138 = and i32 %and137, 4, !dbg !1745
  %sub139 = add i32 %add79, -2, !dbg !1746
  %add140 = add i32 %sub139, %mul138, !dbg !1747
    #dbg_value(i32 %add140, !1649, !DIExpression(), !1658)
  br label %if.end141, !dbg !1748

if.end141:                                        ; preds = %if.then134, %if.end
  %mvy1.0 = phi i32 [ %add140, %if.then134 ], [ %add79, %if.end ], !dbg !1658
    #dbg_value(i8 %12, !1650, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1658)
    #dbg_value(i32 %mvy1.0, !1649, !DIExpression(), !1658)
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !1749
  %24 = load ptr, ptr %mc_chroma, align 8, !dbg !1749
  %arrayidx150 = getelementptr inbounds i8, ptr %arrayidx88, i64 32, !dbg !1750
  %25 = load ptr, ptr %arrayidx150, align 16, !dbg !1750
  %arrayidx154 = getelementptr inbounds i8, ptr %h, i64 25012, !dbg !1751
  %26 = load i32, ptr %arrayidx154, align 4, !dbg !1751
  %mul155 = shl nuw nsw i32 %width, 1, !dbg !1752
  %mul156 = shl nuw nsw i32 %height, 1, !dbg !1753
  call void %24(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %25, i32 noundef %26, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #13, !dbg !1754
  %27 = load ptr, ptr %mc_chroma, align 8, !dbg !1755
  %arrayidx166 = getelementptr inbounds i8, ptr %arrayidx104, i64 32, !dbg !1756
  %28 = load ptr, ptr %arrayidx166, align 16, !dbg !1756
  %29 = load i32, ptr %arrayidx154, align 4, !dbg !1757
  call void %27(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %28, i32 noundef %29, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #13, !dbg !1758
  %add175 = add nuw nsw i64 %idxprom114, 3, !dbg !1759
  %arrayidx177 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %add175, !dbg !1760
  %30 = load ptr, ptr %arrayidx177, align 8, !dbg !1760
  %arrayidx181 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !1761
  %31 = load ptr, ptr %arrayidx181, align 8, !dbg !1761
  %mul183 = shl nsw i32 %y, 6, !dbg !1762
  %mul184 = shl nuw nsw i32 %x, 1, !dbg !1763
  %add185 = add nsw i32 %mul183, %mul184, !dbg !1764
  %idxprom186 = sext i32 %add185 to i64, !dbg !1761
  %arrayidx187 = getelementptr inbounds i8, ptr %31, i64 %idxprom186, !dbg !1761
  call void %30(ptr noundef %arrayidx187, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #13, !dbg !1760
  %32 = load ptr, ptr %mc_chroma, align 8, !dbg !1765
  %arrayidx199 = getelementptr inbounds i8, ptr %arrayidx88, i64 40, !dbg !1766
  %33 = load ptr, ptr %arrayidx199, align 8, !dbg !1766
  %arrayidx203 = getelementptr inbounds i8, ptr %h, i64 25016, !dbg !1767
  %34 = load i32, ptr %arrayidx203, align 8, !dbg !1767
  call void %32(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %33, i32 noundef %34, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #13, !dbg !1768
  %35 = load ptr, ptr %mc_chroma, align 8, !dbg !1769
  %arrayidx215 = getelementptr inbounds i8, ptr %arrayidx104, i64 40, !dbg !1770
  %36 = load ptr, ptr %arrayidx215, align 8, !dbg !1770
  %37 = load i32, ptr %arrayidx203, align 8, !dbg !1771
  call void %35(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %36, i32 noundef %37, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #13, !dbg !1772
  %38 = load ptr, ptr %arrayidx177, align 8, !dbg !1773
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !1774
  %39 = load ptr, ptr %arrayidx230, align 16, !dbg !1774
  %arrayidx236 = getelementptr inbounds i8, ptr %39, i64 %idxprom186, !dbg !1774
  call void %38(ptr noundef %arrayidx236, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #13, !dbg !1773
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp1) #13, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp0) #13, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride1) #13, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride0) #13, !dbg !1775
  ret void, !dbg !1775
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_1xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1776 {
entry:
    #dbg_value(ptr %h, !1778, !DIExpression(), !1787)
    #dbg_value(i32 %x, !1779, !DIExpression(), !1787)
    #dbg_value(i32 %y, !1780, !DIExpression(), !1787)
    #dbg_value(i32 %width, !1781, !DIExpression(), !1787)
    #dbg_value(i32 %height, !1782, !DIExpression(), !1787)
  %add = add nuw nsw i32 %x, 12, !dbg !1788
  %mul = shl nsw i32 %y, 3, !dbg !1789
  %add1 = add nsw i32 %add, %mul, !dbg !1790
    #dbg_value(i32 %add1, !1783, !DIExpression(), !1787)
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 25160, !dbg !1791
  %idxprom = sext i32 %add1 to i64, !dbg !1791
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %arrayidx, i64 0, i64 %idxprom, !dbg !1791
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1791
  %conv = sext i8 %0 to i32, !dbg !1791
    #dbg_value(i32 %conv, !1784, !DIExpression(), !1787)
  %arrayidx5 = getelementptr inbounds i8, ptr %h, i64 25360, !dbg !1792
  %arrayidx7 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx5, i64 0, i64 %idxprom, !dbg !1792
  %1 = load i16, ptr %arrayidx7, align 4, !dbg !1792
  %conv9 = sext i16 %1 to i32, !dbg !1792
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440, !dbg !1793
  %2 = load i32, ptr %mv_min, align 8, !dbg !1794
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448, !dbg !1795
  %3 = load i32, ptr %mv_max, align 16, !dbg !1796
    #dbg_value(i32 %conv9, !1558, !DIExpression(), !1797)
    #dbg_value(i32 %2, !1563, !DIExpression(), !1797)
    #dbg_value(i32 %3, !1564, !DIExpression(), !1797)
  %cmp.i = icmp sgt i32 %2, %conv9, !dbg !1799
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3), !dbg !1800
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i, !dbg !1800
  %mul14 = shl nuw nsw i32 %x, 4, !dbg !1801
  %add15 = add nsw i32 %cond5.i, %mul14, !dbg !1802
    #dbg_value(i32 %add15, !1785, !DIExpression(), !1787)
  %arrayidx22 = getelementptr inbounds i8, ptr %arrayidx7, i64 2, !dbg !1803
  %4 = load i16, ptr %arrayidx22, align 2, !dbg !1803
  %conv23 = sext i16 %4 to i32, !dbg !1803
  %arrayidx26 = getelementptr inbounds i8, ptr %h, i64 16444, !dbg !1804
  %5 = load i32, ptr %arrayidx26, align 4, !dbg !1804
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 16452, !dbg !1805
  %6 = load i32, ptr %arrayidx29, align 4, !dbg !1805
    #dbg_value(i32 %conv23, !1558, !DIExpression(), !1806)
    #dbg_value(i32 %5, !1563, !DIExpression(), !1806)
    #dbg_value(i32 %6, !1564, !DIExpression(), !1806)
  %cmp.i147 = icmp sgt i32 %5, %conv23, !dbg !1808
  %cond.i148 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %6), !dbg !1809
  %cond5.i149 = select i1 %cmp.i147, i32 %5, i32 %cond.i148, !dbg !1809
  %mul31 = shl nsw i32 %y, 4, !dbg !1810
  %add32 = add nsw i32 %cond5.i149, %mul31, !dbg !1811
    #dbg_value(i32 %add32, !1786, !DIExpression(), !1787)
  %mc = getelementptr inbounds i8, ptr %h, i64 32616, !dbg !1812
  %7 = load ptr, ptr %mc, align 8, !dbg !1813
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !1814
  %8 = load ptr, ptr %p_fdec, align 16, !dbg !1815
  %mul36 = shl nsw i32 %y, 7, !dbg !1816
  %mul37 = shl nuw nsw i32 %x, 2, !dbg !1817
  %add38 = add nsw i32 %mul36, %mul37, !dbg !1818
  %idxprom39 = sext i32 %add38 to i64, !dbg !1815
  %arrayidx40 = getelementptr inbounds i8, ptr %8, i64 %idxprom39, !dbg !1815
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 22960, !dbg !1819
  %idxprom44 = sext i8 %0 to i64, !dbg !1819
  %arrayidx45 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx43, i64 0, i64 %idxprom44, !dbg !1819
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !1820
  %9 = load i32, ptr %i_stride, align 16, !dbg !1821
  %mul49 = shl nuw nsw i32 %width, 2, !dbg !1822
  %mul50 = shl nuw nsw i32 %height, 2, !dbg !1823
  tail call void %7(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %9, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull @weight_none) #13, !dbg !1824
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1825
  %10 = load i32, ptr %b_interlaced, align 4, !dbg !1825
  %and = and i32 %10, %conv, !dbg !1827
  %tobool.not = icmp eq i32 %and, 0, !dbg !1827
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1828

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !1829
  %11 = load i32, ptr %i_mb_y, align 4, !dbg !1829
  %and53 = shl i32 %11, 2, !dbg !1830
  %mul54 = and i32 %and53, 4, !dbg !1830
  %sub = add i32 %add32, -2, !dbg !1831
  %add55 = add i32 %sub, %mul54, !dbg !1832
    #dbg_value(i32 %add55, !1786, !DIExpression(), !1787)
  br label %if.end, !dbg !1833

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add55, %if.then ], [ %add32, %entry ], !dbg !1787
    #dbg_value(i32 %mvy.0, !1786, !DIExpression(), !1787)
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632, !dbg !1834
  %12 = load ptr, ptr %mc_chroma, align 8, !dbg !1834
  %arrayidx60 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !1835
  %13 = load ptr, ptr %arrayidx60, align 8, !dbg !1835
  %mul62 = shl nsw i32 %y, 6, !dbg !1836
  %mul63 = shl nuw nsw i32 %x, 1, !dbg !1837
  %add64 = add nsw i32 %mul62, %mul63, !dbg !1838
  %idxprom65 = sext i32 %add64 to i64, !dbg !1835
  %arrayidx66 = getelementptr inbounds i8, ptr %13, i64 %idxprom65, !dbg !1835
  %arrayidx73 = getelementptr inbounds i8, ptr %arrayidx45, i64 32, !dbg !1839
  %14 = load ptr, ptr %arrayidx73, align 16, !dbg !1839
  %arrayidx77 = getelementptr inbounds i8, ptr %h, i64 25012, !dbg !1840
  %15 = load i32, ptr %arrayidx77, align 4, !dbg !1840
  %mul78 = shl nuw nsw i32 %width, 1, !dbg !1841
  %mul79 = shl nuw nsw i32 %height, 1, !dbg !1842
  tail call void %12(ptr noundef %arrayidx66, i32 noundef 32, ptr noundef %14, i32 noundef %15, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #13, !dbg !1843
  %16 = load ptr, ptr %mc_chroma, align 8, !dbg !1844
  %arrayidx85 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !1845
  %17 = load ptr, ptr %arrayidx85, align 16, !dbg !1845
  %arrayidx91 = getelementptr inbounds i8, ptr %17, i64 %idxprom65, !dbg !1845
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx45, i64 40, !dbg !1846
  %18 = load ptr, ptr %arrayidx98, align 8, !dbg !1846
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 25016, !dbg !1847
  %19 = load i32, ptr %arrayidx102, align 8, !dbg !1847
  tail call void %16(ptr noundef %arrayidx91, i32 noundef 32, ptr noundef %18, i32 noundef %19, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #13, !dbg !1848
  ret void, !dbg !1849
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc(ptr noundef %h) local_unnamed_addr #0 !dbg !1850 {
entry:
    #dbg_value(ptr %h, !1854, !DIExpression(), !1864)
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !1865
  %0 = load i32, ptr %i_partition, align 4, !dbg !1865
  %cmp = icmp eq i32 %0, 13, !dbg !1866
  br i1 %cmp, label %for.body.preheader, label %if.else, !dbg !1867

for.body.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !1855, !DIExpression(), !1868)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 0), !dbg !1869
    #dbg_value(i32 1, !1855, !DIExpression(), !1868)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 1), !dbg !1869
    #dbg_value(i32 2, !1855, !DIExpression(), !1868)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 2), !dbg !1869
    #dbg_value(i32 3, !1855, !DIExpression(), !1868)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 3), !dbg !1869
    #dbg_value(i32 4, !1855, !DIExpression(), !1868)
  br label %if.end94, !dbg !1871

if.else:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !1872
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !1872
    #dbg_value(i8 %1, !1859, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1873)
  %arrayidx9 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !1874
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !1874
    #dbg_value(i8 %2, !1861, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1873)
  %arrayidx16 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !1875
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !1875
    #dbg_value(i8 %3, !1862, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1873)
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !1876
  %4 = load i8, ptr %arrayidx23, align 1, !dbg !1876
    #dbg_value(i8 %4, !1863, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1873)
  switch i32 %0, label %if.end94 [
    i32 16, label %if.then29
    i32 14, label %if.then44
    i32 15, label %if.then70
  ], !dbg !1877

if.then29:                                        ; preds = %if.else
    #dbg_value(i8 %1, !1859, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1873)
  %cmp30 = icmp sgt i8 %1, -1, !dbg !1878
  br i1 %cmp30, label %if.then32, label %if.else37, !dbg !1882

if.then32:                                        ; preds = %if.then29
  %cmp33 = icmp sgt i8 %3, -1, !dbg !1883
  br i1 %cmp33, label %if.then35, label %if.else36, !dbg !1885

if.then35:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1886
  br label %if.end94, !dbg !1886

if.else36:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1887
  br label %if.end94

if.else37:                                        ; preds = %if.then29
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1888
  br label %if.end94

if.then44:                                        ; preds = %if.else
  %cmp45 = icmp sgt i8 %1, -1, !dbg !1889
  br i1 %cmp45, label %if.then47, label %if.else53, !dbg !1893

if.then47:                                        ; preds = %if.then44
  %cmp48 = icmp sgt i8 %3, -1, !dbg !1894
  br i1 %cmp48, label %if.then50, label %if.else51, !dbg !1896

if.then50:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1897
  br label %if.end54, !dbg !1897

if.else51:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1898
  br label %if.end54

if.else53:                                        ; preds = %if.then44
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1899
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else51, %if.else53
  %cmp55 = icmp sgt i8 %2, -1, !dbg !1900
  br i1 %cmp55, label %if.then57, label %if.else63, !dbg !1902

if.then57:                                        ; preds = %if.end54
  %cmp58 = icmp sgt i8 %4, -1, !dbg !1903
  br i1 %cmp58, label %if.then60, label %if.else61, !dbg !1905

if.then60:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1906
  br label %if.end94, !dbg !1906

if.else61:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1907
  br label %if.end94

if.else63:                                        ; preds = %if.end54
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1908
  br label %if.end94

if.then70:                                        ; preds = %if.else
  %cmp71 = icmp sgt i8 %1, -1, !dbg !1909
  br i1 %cmp71, label %if.then73, label %if.else79, !dbg !1913

if.then73:                                        ; preds = %if.then70
  %cmp74 = icmp sgt i8 %3, -1, !dbg !1914
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !1916

if.then76:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1917
  br label %if.end80, !dbg !1917

if.else77:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1918
  br label %if.end80

if.else79:                                        ; preds = %if.then70
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1919
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.else77, %if.else79
  %cmp81 = icmp sgt i8 %2, -1, !dbg !1920
  br i1 %cmp81, label %if.then83, label %if.else89, !dbg !1922

if.then83:                                        ; preds = %if.end80
  %cmp84 = icmp sgt i8 %4, -1, !dbg !1923
  br i1 %cmp84, label %if.then86, label %if.else87, !dbg !1925

if.then86:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1926
  br label %if.end94, !dbg !1926

if.else87:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1927
  br label %if.end94

if.else89:                                        ; preds = %if.end80
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1928
  br label %if.end94

if.end94:                                         ; preds = %for.body.preheader, %if.then35, %if.else36, %if.else37, %if.then86, %if.else87, %if.else89, %if.else63, %if.else61, %if.then60, %if.else
  ret void, !dbg !1871
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_cache_allocate(ptr noundef %h) local_unnamed_addr #0 !dbg !1929 {
entry:
    #dbg_value(ptr %h, !1933, !DIExpression(), !1952)
  %mb = getelementptr inbounds i8, ptr %h, i64 16368, !dbg !1953
  %0 = load i32, ptr %mb, align 16, !dbg !1954
    #dbg_value(i32 %0, !1934, !DIExpression(), !1952)
  %sps = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !1955
  %1 = load ptr, ptr %sps, align 16, !dbg !1955
  %i_mb_width = getelementptr inbounds i8, ptr %1, i64 1084, !dbg !1956
  %2 = load i32, ptr %i_mb_width, align 4, !dbg !1956
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !1957
  store i32 %2, ptr %i_mb_stride, align 4, !dbg !1958
  %mul = shl nsw i32 %2, 1, !dbg !1959
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376, !dbg !1960
  store i32 %mul, ptr %i_b8_stride, align 8, !dbg !1961
  %3 = load i32, ptr %i_mb_width, align 4, !dbg !1962
  %mul8 = shl nsw i32 %3, 2, !dbg !1963
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380, !dbg !1964
  store i32 %mul8, ptr %i_b4_stride, align 4, !dbg !1965
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136, !dbg !1966
  %4 = load i32, ptr %b_interlaced, align 8, !dbg !1966
  %b_interlaced11 = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !1967
  store i32 %4, ptr %b_interlaced11, align 4, !dbg !1968
  %call = tail call ptr @x264_malloc(i32 noundef %0) #13, !dbg !1969
  %qp = getelementptr inbounds i8, ptr %h, i64 16632, !dbg !1969
  store ptr %call, ptr %qp, align 8, !dbg !1969
  %tobool.not = icmp eq ptr %call, null, !dbg !1971
  br i1 %tobool.not, label %cleanup346, label %do.body17, !dbg !1969

do.body17:                                        ; preds = %entry
  %conv = sext i32 %0 to i64, !dbg !1969
  %mul19 = shl nsw i64 %conv, 1, !dbg !1973
  %conv20 = trunc i64 %mul19 to i32, !dbg !1973
  %call21 = tail call ptr @x264_malloc(i32 noundef %conv20) #13, !dbg !1973
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !1973
  store ptr %call21, ptr %cbp, align 16, !dbg !1973
  %tobool25.not = icmp eq ptr %call21, null, !dbg !1975
  br i1 %tobool25.not, label %cleanup346, label %do.body30, !dbg !1973

do.body30:                                        ; preds = %do.body17
  %call34 = tail call ptr @x264_malloc(i32 noundef %0) #13, !dbg !1977
  %skipbp = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !1977
  store ptr %call34, ptr %skipbp, align 16, !dbg !1977
  %tobool38.not = icmp eq ptr %call34, null, !dbg !1979
  br i1 %tobool38.not, label %cleanup346, label %do.body43, !dbg !1977

do.body43:                                        ; preds = %do.body30
  %call47 = tail call ptr @x264_malloc(i32 noundef %0) #13, !dbg !1981
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !1981
  store ptr %call47, ptr %mb_transform_size, align 8, !dbg !1981
  %tobool51.not = icmp eq ptr %call47, null, !dbg !1983
  br i1 %tobool51.not, label %cleanup346, label %do.body56, !dbg !1981

do.body56:                                        ; preds = %do.body43
  %call60 = tail call ptr @x264_malloc(i32 noundef %conv20) #13, !dbg !1985
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248, !dbg !1985
  store ptr %call60, ptr %slice_table, align 16, !dbg !1985
  %tobool64.not = icmp eq ptr %call60, null, !dbg !1987
  br i1 %tobool64.not, label %cleanup346, label %do.end68, !dbg !1985

do.end68:                                         ; preds = %do.body56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call60, i8 -1, i64 %mul19, i1 false), !dbg !1989
  %mul74 = shl nsw i32 %0, 3, !dbg !1990
  %call78 = tail call ptr @x264_malloc(i32 noundef %mul74) #13, !dbg !1990
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648, !dbg !1990
  store ptr %call78, ptr %intra4x4_pred_mode, align 8, !dbg !1990
  %tobool82.not = icmp eq ptr %call78, null, !dbg !1992
  br i1 %tobool82.not, label %cleanup346, label %do.body87, !dbg !1990

do.body87:                                        ; preds = %do.end68
  %mul88 = mul nsw i32 %0, 24, !dbg !1994
  %call92 = tail call ptr @x264_malloc(i32 noundef %mul88) #13, !dbg !1994
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !1994
  store ptr %call92, ptr %non_zero_count, align 16, !dbg !1994
  %tobool96.not = icmp eq ptr %call92, null, !dbg !1996
  br i1 %tobool96.not, label %cleanup346, label %do.end100, !dbg !1994

do.end100:                                        ; preds = %do.body87
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128, !dbg !1998
  %5 = load i32, ptr %b_cabac, align 16, !dbg !1998
  %tobool102.not = icmp eq i32 %5, 0, !dbg !2000
  br i1 %tobool102.not, label %cond.end, label %do.body104, !dbg !2001

do.body104:                                       ; preds = %do.end100
  %call108 = tail call ptr @x264_malloc(i32 noundef %0) #13, !dbg !2002
  %chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 16664, !dbg !2002
  store ptr %call108, ptr %chroma_pred_mode, align 8, !dbg !2002
  %tobool112.not = icmp eq ptr %call108, null, !dbg !2005
  br i1 %tobool112.not, label %cleanup346, label %do.body117, !dbg !2002

do.body117:                                       ; preds = %do.body104
  %mul119 = shl i32 %0, 4, !dbg !2007
  %call121 = tail call ptr @x264_malloc(i32 noundef %mul119) #13, !dbg !2007
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688, !dbg !2007
  store ptr %call121, ptr %mvd, align 16, !dbg !2007
  %tobool126.not = icmp eq ptr %call121, null, !dbg !2009
  br i1 %tobool126.not, label %cleanup346, label %do.body131, !dbg !2007

do.body131:                                       ; preds = %do.body117
  %call135 = tail call ptr @x264_malloc(i32 noundef %mul119) #13, !dbg !2011
  %arrayidx138 = getelementptr inbounds i8, ptr %h, i64 16696, !dbg !2011
  store ptr %call135, ptr %arrayidx138, align 8, !dbg !2011
  %tobool142.not = icmp eq ptr %call135, null, !dbg !2013
  br i1 %tobool142.not, label %cleanup346, label %cond.end, !dbg !2011

cond.end:                                         ; preds = %do.end100, %do.body131
    #dbg_value(i32 0, !1935, !DIExpression(), !2015)
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %i_bframe_pyramid161 = getelementptr inbounds i8, ptr %h, i64 112
  %mul214 = shl i32 %0, 2
  %mvr = getelementptr inbounds i8, ptr %h, i64 16720
    #dbg_value(i64 0, !1935, !DIExpression(), !2015)
  %i_frame_reference = getelementptr inbounds i8, ptr %h, i64 80
  %6 = load i32, ptr %i_frame_reference, align 16, !dbg !2016
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 16), !dbg !2016
  %7 = load i32, ptr %b_interlaced, align 8, !dbg !2017
  %shl = shl i32 %spec.select, %7, !dbg !2018
    #dbg_value(i32 %shl, !1937, !DIExpression(), !2019)
  %8 = load i32, ptr %i_weighted_pred, align 4, !dbg !2020
  switch i32 %8, label %if.end204 [
    i32 2, label %if.then180
    i32 1, label %if.then194
  ], !dbg !2022

if.then180:                                       ; preds = %cond.end
  %9 = tail call i32 @llvm.smin.i32(i32 %shl, i32 14), !dbg !2023
  %cond188 = add nsw i32 %9, 2, !dbg !2023
    #dbg_value(i32 %cond188, !1937, !DIExpression(), !2019)
  br label %if.end204, !dbg !2024

if.then194:                                       ; preds = %cond.end
  %10 = tail call i32 @llvm.smin.i32(i32 %shl, i32 15), !dbg !2025
  %cond202 = add nsw i32 %10, 1, !dbg !2025
    #dbg_value(i32 %cond202, !1937, !DIExpression(), !2019)
  br label %if.end204, !dbg !2027

if.end204:                                        ; preds = %cond.end, %if.then194, %if.then180
  %i_refs.0 = phi i32 [ %cond188, %if.then180 ], [ %cond202, %if.then194 ], [ %shl, %cond.end ], !dbg !2019
    #dbg_value(i32 %i_refs.0, !1937, !DIExpression(), !2019)
    #dbg_value(i32 1, !1940, !DIExpression(), !2028)
  %cmp209.not451 = icmp sgt i32 %i_refs.0, 1, !dbg !2029
  br i1 %cmp209.not451, label %do.body213.lr.ph, label %cond.end173.1, !dbg !2031

do.body213.lr.ph:                                 ; preds = %if.end204
  %wide.trip.count = zext nneg i32 %i_refs.0 to i64, !dbg !2029
  br label %do.body213, !dbg !2031

for.cond208:                                      ; preds = %do.body213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2032
    #dbg_value(i32 poison, !1940, !DIExpression(), !2028)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2029
  br i1 %exitcond.not, label %cond.end173.1, label %do.body213, !dbg !2031, !llvm.loop !2033

do.body213:                                       ; preds = %do.body213.lr.ph, %for.cond208
  %indvars.iv = phi i64 [ 1, %do.body213.lr.ph ], [ %indvars.iv.next, %for.cond208 ]
    #dbg_value(i64 %indvars.iv, !1940, !DIExpression(), !2028)
  %call218 = tail call ptr @x264_malloc(i32 noundef %mul214) #13, !dbg !2035
  %arrayidx222 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr, i64 0, i64 0, i64 %indvars.iv, !dbg !2035
  store ptr %call218, ptr %arrayidx222, align 8, !dbg !2035
  %tobool229.not = icmp eq ptr %call218, null, !dbg !2037
    #dbg_value(i64 %indvars.iv, !1940, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2028)
  br i1 %tobool229.not, label %cleanup346, label %for.cond208, !dbg !2035

cond.end173.1:                                    ; preds = %for.cond208, %if.end204
    #dbg_value(i64 1, !1935, !DIExpression(), !2015)
  %11 = load i32, ptr %i_bframe_pyramid161, align 16, !dbg !2016
  %tobool162.not.1 = icmp eq i32 %11, 0, !dbg !2016
  %add167.1 = select i1 %tobool162.not.1, i32 1, i32 2, !dbg !2016
  %12 = load i32, ptr %b_interlaced, align 8, !dbg !2017
  %shl.1 = shl i32 %add167.1, %12, !dbg !2018
    #dbg_value(i32 %shl.1, !1937, !DIExpression(), !2019)
  %13 = load i32, ptr %i_weighted_pred, align 4, !dbg !2020
  switch i32 %13, label %if.end204.1 [
    i32 2, label %if.then180.1
    i32 1, label %if.then194.1
  ], !dbg !2022

if.then194.1:                                     ; preds = %cond.end173.1
  %14 = tail call i32 @llvm.smin.i32(i32 %shl.1, i32 15), !dbg !2025
  %cond202.1 = add nsw i32 %14, 1, !dbg !2025
    #dbg_value(i32 %cond202.1, !1937, !DIExpression(), !2019)
  br label %if.end204.1, !dbg !2027

if.then180.1:                                     ; preds = %cond.end173.1
  %15 = tail call i32 @llvm.smin.i32(i32 %shl.1, i32 14), !dbg !2023
  %cond188.1 = add nsw i32 %15, 2, !dbg !2023
    #dbg_value(i32 %cond188.1, !1937, !DIExpression(), !2019)
  br label %if.end204.1, !dbg !2024

if.end204.1:                                      ; preds = %if.then180.1, %if.then194.1, %cond.end173.1
  %i_refs.0.1 = phi i32 [ %cond188.1, %if.then180.1 ], [ %cond202.1, %if.then194.1 ], [ %shl.1, %cond.end173.1 ], !dbg !2019
    #dbg_value(i32 %i_refs.0.1, !1937, !DIExpression(), !2019)
    #dbg_value(i32 0, !1940, !DIExpression(), !2028)
  %cmp209.not451.1 = icmp sgt i32 %i_refs.0.1, 0, !dbg !2029
  br i1 %cmp209.not451.1, label %do.body213.lr.ph.1, label %for.inc236.1, !dbg !2031

do.body213.lr.ph.1:                               ; preds = %if.end204.1
  %wide.trip.count.1 = zext nneg i32 %i_refs.0.1 to i64, !dbg !2029
  br label %do.body213.1, !dbg !2031

do.body213.1:                                     ; preds = %for.cond208.1, %do.body213.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %do.body213.lr.ph.1 ], [ %indvars.iv.next.1, %for.cond208.1 ]
    #dbg_value(i64 %indvars.iv.1, !1940, !DIExpression(), !2028)
  %call218.1 = tail call ptr @x264_malloc(i32 noundef %mul214) #13, !dbg !2035
  %arrayidx222.1 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr, i64 0, i64 1, i64 %indvars.iv.1, !dbg !2035
  store ptr %call218.1, ptr %arrayidx222.1, align 8, !dbg !2035
  %tobool229.not.1 = icmp eq ptr %call218.1, null, !dbg !2037
    #dbg_value(i64 %indvars.iv.1, !1940, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2028)
  br i1 %tobool229.not.1, label %cleanup346, label %for.cond208.1, !dbg !2035

for.cond208.1:                                    ; preds = %do.body213.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !2032
    #dbg_value(i32 poison, !1940, !DIExpression(), !2028)
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1, !dbg !2029
  br i1 %exitcond.1.not, label %for.inc236.loopexit.1, label %do.body213.1, !dbg !2031, !llvm.loop !2033

for.inc236.loopexit.1:                            ; preds = %for.cond208.1
  %.pre = load i32, ptr %i_weighted_pred, align 4, !dbg !2039
  br label %for.inc236.1, !dbg !2040

for.inc236.1:                                     ; preds = %for.inc236.loopexit.1, %if.end204.1
  %16 = phi i32 [ %.pre, %for.inc236.loopexit.1 ], [ %13, %if.end204.1 ], !dbg !2039
    #dbg_value(i64 2, !1935, !DIExpression(), !2015)
  %tobool244.not = icmp eq i32 %16, 0, !dbg !2041
  br i1 %tobool244.not, label %cleanup346, label %if.then245, !dbg !2042

if.then245:                                       ; preds = %for.inc236.1
  %17 = load i32, ptr %b_interlaced, align 8, !dbg !2043
    #dbg_value(!DIArgList(i32 32, i32 %17), !1942, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !2044)
  %18 = load i32, ptr %h, align 16, !dbg !2045
  %and = and i32 %18, 2, !dbg !2046
  %tobool250.not = icmp eq i32 %and, 0, !dbg !2046
  %and255 = and i32 %18, 1, !dbg !2047
  %tobool256.not = icmp eq i32 %and255, 0, !dbg !2047
  %cond257 = select i1 %tobool256.not, i32 16, i32 32, !dbg !2047
  %cond259 = select i1 %tobool250.not, i32 %cond257, i32 64, !dbg !2047
    #dbg_value(i32 %cond259, !1945, !DIExpression(), !2044)
    #dbg_value(i32 0, !1947, !DIExpression(), !2044)
  %cmp263 = icmp eq i32 %16, -1, !dbg !2048
  br i1 %cmp263, label %if.then265, label %if.else288, !dbg !2050

if.then265:                                       ; preds = %if.then245
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16, !dbg !2051
  %19 = load i32, ptr %i_sync_lookahead, align 16, !dbg !2051
  %tobool267.not = icmp eq i32 %19, 0, !dbg !2054
  br i1 %tobool267.not, label %if.then273, label %lor.lhs.false, !dbg !2055

lor.lhs.false:                                    ; preds = %if.then265
  %thread = getelementptr inbounds i8, ptr %h, i64 704, !dbg !2056
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4, !dbg !2057
  %20 = load i32, ptr %i_threads, align 4, !dbg !2057
  %idxprom269 = sext i32 %20 to i64, !dbg !2058
  %arrayidx270 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom269, !dbg !2058
  %21 = load ptr, ptr %arrayidx270, align 8, !dbg !2058
  %cmp271 = icmp eq ptr %21, %h, !dbg !2059
  br i1 %cmp271, label %if.then273, label %cleanup346, !dbg !2060

if.then273:                                       ; preds = %lor.lhs.false, %if.then265
  %22 = load ptr, ptr %sps, align 16, !dbg !2061
  %i_mb_width275 = getelementptr inbounds i8, ptr %22, i64 1084, !dbg !2061
  %23 = load i32, ptr %i_mb_width275, align 4, !dbg !2061
  %mul276 = shl nsw i32 %23, 3, !dbg !2061
  %sub = add nuw nsw i32 %cond259, 63, !dbg !2061
  %add278 = add i32 %sub, %mul276, !dbg !2061
  %not = sub nsw i32 0, %cond259, !dbg !2061
  %and280 = and i32 %add278, %not, !dbg !2061
    #dbg_value(i32 %and280, !1946, !DIExpression(), !2044)
  %i_mb_height = getelementptr inbounds i8, ptr %22, i64 1088, !dbg !2063
  %24 = load i32, ptr %i_mb_height, align 4, !dbg !2063
  %mul282 = shl nsw i32 %24, 3, !dbg !2064
  %mul283 = shl i32 64, %17, !dbg !2065
  %add284 = add nsw i32 %mul282, %mul283, !dbg !2066
  %mul285 = mul nsw i32 %and280, %add284, !dbg !2067
    #dbg_value(i32 %mul285, !1947, !DIExpression(), !2044)
    #dbg_value(i32 1, !1948, !DIExpression(), !2044)
  br label %do.body319.lr.ph, !dbg !2068

if.else288:                                       ; preds = %if.then245
  %25 = load ptr, ptr %sps, align 16, !dbg !2069
  %i_mb_width290 = getelementptr inbounds i8, ptr %25, i64 1084, !dbg !2069
  %26 = load i32, ptr %i_mb_width290, align 4, !dbg !2069
  %mul291 = shl nsw i32 %26, 4, !dbg !2069
  %sub293 = add nuw nsw i32 %cond259, 63, !dbg !2069
  %add294 = add i32 %sub293, %mul291, !dbg !2069
  %not296 = sub nsw i32 0, %cond259, !dbg !2069
  %and297 = and i32 %add294, %not296, !dbg !2069
    #dbg_value(i32 %and297, !1946, !DIExpression(), !2044)
  %i_mb_height299 = getelementptr inbounds i8, ptr %25, i64 1088, !dbg !2071
  %27 = load i32, ptr %i_mb_height299, align 4, !dbg !2071
  %mul300 = shl nsw i32 %27, 4, !dbg !2072
  %mul301 = shl i32 64, %17, !dbg !2073
  %add302 = add nsw i32 %mul300, %mul301, !dbg !2074
  %mul303 = mul nsw i32 %and297, %add302, !dbg !2075
    #dbg_value(i32 %mul303, !1947, !DIExpression(), !2044)
  %cmp307 = icmp eq i32 %16, 2, !dbg !2076
  %. = select i1 %cmp307, i64 2, i64 1
  br label %do.body319.lr.ph

do.body319.lr.ph:                                 ; preds = %if.then273, %if.else288
  %luma_plane_size.0.ph = phi i32 [ %mul303, %if.else288 ], [ %mul285, %if.then273 ]
  %numweightbuf.0.ph = phi i64 [ %., %if.else288 ], [ 1, %if.then273 ]
    #dbg_value(i64 %numweightbuf.0.ph, !1948, !DIExpression(), !2044)
    #dbg_value(i32 %luma_plane_size.0.ph, !1947, !DIExpression(), !2044)
    #dbg_value(i32 0, !1949, !DIExpression(), !2078)
  %p_weight_buf = getelementptr inbounds i8, ptr %h, i64 17256
  br label %do.body319, !dbg !2079

for.cond314:                                      ; preds = %do.body319
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1, !dbg !2080
    #dbg_value(i64 %indvars.iv.next464, !1949, !DIExpression(), !2078)
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %numweightbuf.0.ph, !dbg !2082
  br i1 %exitcond467.not, label %cleanup346, label %do.body319, !dbg !2079, !llvm.loop !2083

do.body319:                                       ; preds = %do.body319.lr.ph, %for.cond314
  %indvars.iv463 = phi i64 [ 0, %do.body319.lr.ph ], [ %indvars.iv.next464, %for.cond314 ]
    #dbg_value(i64 %indvars.iv463, !1949, !DIExpression(), !2078)
  %call320 = tail call ptr @x264_malloc(i32 noundef %luma_plane_size.0.ph) #13, !dbg !2085
  %arrayidx323 = getelementptr inbounds [16 x ptr], ptr %p_weight_buf, i64 0, i64 %indvars.iv463, !dbg !2085
  store ptr %call320, ptr %arrayidx323, align 8, !dbg !2085
  %tobool328.not = icmp eq ptr %call320, null, !dbg !2087
    #dbg_value(i64 %indvars.iv463, !1949, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2078)
  br i1 %tobool328.not, label %cleanup346, label %for.cond314, !dbg !2085

cleanup346:                                       ; preds = %do.body213, %do.body213.1, %do.body319, %for.cond314, %lor.lhs.false, %entry, %do.body17, %do.body30, %do.body43, %do.body56, %do.end68, %do.body87, %do.body104, %do.body117, %do.body131, %for.inc236.1
  %retval.0 = phi i32 [ 0, %for.inc236.1 ], [ -1, %do.body131 ], [ -1, %do.body117 ], [ -1, %do.body104 ], [ -1, %do.body87 ], [ -1, %do.end68 ], [ -1, %do.body56 ], [ -1, %do.body43 ], [ -1, %do.body30 ], [ -1, %do.body17 ], [ -1, %entry ], [ 0, %lor.lhs.false ], [ -1, %do.body319 ], [ 0, %for.cond314 ], [ -1, %do.body213.1 ], [ -1, %do.body213 ]
  ret i32 %retval.0, !dbg !2089
}

declare !dbg !2090 ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_free(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !2093 {
for.cond.cleanup3.1:
    #dbg_value(ptr %h, !2095, !DIExpression(), !2103)
    #dbg_value(i64 0, !2096, !DIExpression(), !2104)
    #dbg_value(i64 1, !2098, !DIExpression(), !2105)
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 16728, !dbg !2106
  %0 = load ptr, ptr %arrayidx6, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %0) #13, !dbg !2108
    #dbg_value(i64 2, !2098, !DIExpression(), !2105)
  %arrayidx6.162 = getelementptr inbounds i8, ptr %h, i64 16736, !dbg !2106
  %1 = load ptr, ptr %arrayidx6.162, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %1) #13, !dbg !2108
    #dbg_value(i64 3, !2098, !DIExpression(), !2105)
  %arrayidx6.2 = getelementptr inbounds i8, ptr %h, i64 16744, !dbg !2106
  %2 = load ptr, ptr %arrayidx6.2, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %2) #13, !dbg !2108
    #dbg_value(i64 4, !2098, !DIExpression(), !2105)
  %arrayidx6.3 = getelementptr inbounds i8, ptr %h, i64 16752, !dbg !2106
  %3 = load ptr, ptr %arrayidx6.3, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %3) #13, !dbg !2108
    #dbg_value(i64 5, !2098, !DIExpression(), !2105)
  %arrayidx6.4 = getelementptr inbounds i8, ptr %h, i64 16760, !dbg !2106
  %4 = load ptr, ptr %arrayidx6.4, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %4) #13, !dbg !2108
    #dbg_value(i64 6, !2098, !DIExpression(), !2105)
  %arrayidx6.5 = getelementptr inbounds i8, ptr %h, i64 16768, !dbg !2106
  %5 = load ptr, ptr %arrayidx6.5, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %5) #13, !dbg !2108
    #dbg_value(i64 7, !2098, !DIExpression(), !2105)
  %arrayidx6.6 = getelementptr inbounds i8, ptr %h, i64 16776, !dbg !2106
  %6 = load ptr, ptr %arrayidx6.6, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %6) #13, !dbg !2108
    #dbg_value(i64 8, !2098, !DIExpression(), !2105)
  %arrayidx6.7 = getelementptr inbounds i8, ptr %h, i64 16784, !dbg !2106
  %7 = load ptr, ptr %arrayidx6.7, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %7) #13, !dbg !2108
    #dbg_value(i64 9, !2098, !DIExpression(), !2105)
  %arrayidx6.8 = getelementptr inbounds i8, ptr %h, i64 16792, !dbg !2106
  %8 = load ptr, ptr %arrayidx6.8, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %8) #13, !dbg !2108
    #dbg_value(i64 10, !2098, !DIExpression(), !2105)
  %arrayidx6.9 = getelementptr inbounds i8, ptr %h, i64 16800, !dbg !2106
  %9 = load ptr, ptr %arrayidx6.9, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %9) #13, !dbg !2108
    #dbg_value(i64 11, !2098, !DIExpression(), !2105)
  %arrayidx6.10 = getelementptr inbounds i8, ptr %h, i64 16808, !dbg !2106
  %10 = load ptr, ptr %arrayidx6.10, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %10) #13, !dbg !2108
    #dbg_value(i64 12, !2098, !DIExpression(), !2105)
  %arrayidx6.11 = getelementptr inbounds i8, ptr %h, i64 16816, !dbg !2106
  %11 = load ptr, ptr %arrayidx6.11, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %11) #13, !dbg !2108
    #dbg_value(i64 13, !2098, !DIExpression(), !2105)
  %arrayidx6.12 = getelementptr inbounds i8, ptr %h, i64 16824, !dbg !2106
  %12 = load ptr, ptr %arrayidx6.12, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %12) #13, !dbg !2108
    #dbg_value(i64 14, !2098, !DIExpression(), !2105)
  %arrayidx6.13 = getelementptr inbounds i8, ptr %h, i64 16832, !dbg !2106
  %13 = load ptr, ptr %arrayidx6.13, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %13) #13, !dbg !2108
    #dbg_value(i64 15, !2098, !DIExpression(), !2105)
  %arrayidx6.14 = getelementptr inbounds i8, ptr %h, i64 16840, !dbg !2106
  %14 = load ptr, ptr %arrayidx6.14, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %14) #13, !dbg !2108
    #dbg_value(i64 16, !2098, !DIExpression(), !2105)
  %arrayidx6.15 = getelementptr inbounds i8, ptr %h, i64 16848, !dbg !2106
  %15 = load ptr, ptr %arrayidx6.15, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %15) #13, !dbg !2108
    #dbg_value(i64 17, !2098, !DIExpression(), !2105)
  %arrayidx6.16 = getelementptr inbounds i8, ptr %h, i64 16856, !dbg !2106
  %16 = load ptr, ptr %arrayidx6.16, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %16) #13, !dbg !2108
    #dbg_value(i64 18, !2098, !DIExpression(), !2105)
  %arrayidx6.17 = getelementptr inbounds i8, ptr %h, i64 16864, !dbg !2106
  %17 = load ptr, ptr %arrayidx6.17, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %17) #13, !dbg !2108
    #dbg_value(i64 19, !2098, !DIExpression(), !2105)
  %arrayidx6.18 = getelementptr inbounds i8, ptr %h, i64 16872, !dbg !2106
  %18 = load ptr, ptr %arrayidx6.18, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %18) #13, !dbg !2108
    #dbg_value(i64 20, !2098, !DIExpression(), !2105)
  %arrayidx6.19 = getelementptr inbounds i8, ptr %h, i64 16880, !dbg !2106
  %19 = load ptr, ptr %arrayidx6.19, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %19) #13, !dbg !2108
    #dbg_value(i64 21, !2098, !DIExpression(), !2105)
  %arrayidx6.20 = getelementptr inbounds i8, ptr %h, i64 16888, !dbg !2106
  %20 = load ptr, ptr %arrayidx6.20, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %20) #13, !dbg !2108
    #dbg_value(i64 22, !2098, !DIExpression(), !2105)
  %arrayidx6.21 = getelementptr inbounds i8, ptr %h, i64 16896, !dbg !2106
  %21 = load ptr, ptr %arrayidx6.21, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %21) #13, !dbg !2108
    #dbg_value(i64 23, !2098, !DIExpression(), !2105)
  %arrayidx6.22 = getelementptr inbounds i8, ptr %h, i64 16904, !dbg !2106
  %22 = load ptr, ptr %arrayidx6.22, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %22) #13, !dbg !2108
    #dbg_value(i64 24, !2098, !DIExpression(), !2105)
  %arrayidx6.23 = getelementptr inbounds i8, ptr %h, i64 16912, !dbg !2106
  %23 = load ptr, ptr %arrayidx6.23, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %23) #13, !dbg !2108
    #dbg_value(i64 25, !2098, !DIExpression(), !2105)
  %arrayidx6.24 = getelementptr inbounds i8, ptr %h, i64 16920, !dbg !2106
  %24 = load ptr, ptr %arrayidx6.24, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %24) #13, !dbg !2108
    #dbg_value(i64 26, !2098, !DIExpression(), !2105)
  %arrayidx6.25 = getelementptr inbounds i8, ptr %h, i64 16928, !dbg !2106
  %25 = load ptr, ptr %arrayidx6.25, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %25) #13, !dbg !2108
    #dbg_value(i64 27, !2098, !DIExpression(), !2105)
  %arrayidx6.26 = getelementptr inbounds i8, ptr %h, i64 16936, !dbg !2106
  %26 = load ptr, ptr %arrayidx6.26, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %26) #13, !dbg !2108
    #dbg_value(i64 28, !2098, !DIExpression(), !2105)
  %arrayidx6.27 = getelementptr inbounds i8, ptr %h, i64 16944, !dbg !2106
  %27 = load ptr, ptr %arrayidx6.27, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %27) #13, !dbg !2108
    #dbg_value(i64 29, !2098, !DIExpression(), !2105)
  %arrayidx6.28 = getelementptr inbounds i8, ptr %h, i64 16952, !dbg !2106
  %28 = load ptr, ptr %arrayidx6.28, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %28) #13, !dbg !2108
    #dbg_value(i64 30, !2098, !DIExpression(), !2105)
  %arrayidx6.29 = getelementptr inbounds i8, ptr %h, i64 16960, !dbg !2106
  %29 = load ptr, ptr %arrayidx6.29, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %29) #13, !dbg !2108
    #dbg_value(i64 31, !2098, !DIExpression(), !2105)
  %arrayidx6.30 = getelementptr inbounds i8, ptr %h, i64 16968, !dbg !2106
  %30 = load ptr, ptr %arrayidx6.30, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %30) #13, !dbg !2108
    #dbg_value(i64 1, !2096, !DIExpression(), !2104)
    #dbg_value(i64 0, !2098, !DIExpression(), !2105)
  %arrayidx6.1 = getelementptr inbounds i8, ptr %h, i64 16976, !dbg !2106
  %31 = load ptr, ptr %arrayidx6.1, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %31) #13, !dbg !2108
    #dbg_value(i64 1, !2098, !DIExpression(), !2105)
  %arrayidx6.1.1 = getelementptr inbounds i8, ptr %h, i64 16984, !dbg !2106
  %32 = load ptr, ptr %arrayidx6.1.1, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %32) #13, !dbg !2108
    #dbg_value(i64 2, !2098, !DIExpression(), !2105)
  %arrayidx6.1.2 = getelementptr inbounds i8, ptr %h, i64 16992, !dbg !2106
  %33 = load ptr, ptr %arrayidx6.1.2, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %33) #13, !dbg !2108
    #dbg_value(i64 3, !2098, !DIExpression(), !2105)
  %arrayidx6.1.3 = getelementptr inbounds i8, ptr %h, i64 17000, !dbg !2106
  %34 = load ptr, ptr %arrayidx6.1.3, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %34) #13, !dbg !2108
    #dbg_value(i64 4, !2098, !DIExpression(), !2105)
  %arrayidx6.1.4 = getelementptr inbounds i8, ptr %h, i64 17008, !dbg !2106
  %35 = load ptr, ptr %arrayidx6.1.4, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %35) #13, !dbg !2108
    #dbg_value(i64 5, !2098, !DIExpression(), !2105)
  %arrayidx6.1.5 = getelementptr inbounds i8, ptr %h, i64 17016, !dbg !2106
  %36 = load ptr, ptr %arrayidx6.1.5, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %36) #13, !dbg !2108
    #dbg_value(i64 6, !2098, !DIExpression(), !2105)
  %arrayidx6.1.6 = getelementptr inbounds i8, ptr %h, i64 17024, !dbg !2106
  %37 = load ptr, ptr %arrayidx6.1.6, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %37) #13, !dbg !2108
    #dbg_value(i64 7, !2098, !DIExpression(), !2105)
  %arrayidx6.1.7 = getelementptr inbounds i8, ptr %h, i64 17032, !dbg !2106
  %38 = load ptr, ptr %arrayidx6.1.7, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %38) #13, !dbg !2108
    #dbg_value(i64 8, !2098, !DIExpression(), !2105)
  %arrayidx6.1.8 = getelementptr inbounds i8, ptr %h, i64 17040, !dbg !2106
  %39 = load ptr, ptr %arrayidx6.1.8, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %39) #13, !dbg !2108
    #dbg_value(i64 9, !2098, !DIExpression(), !2105)
  %arrayidx6.1.9 = getelementptr inbounds i8, ptr %h, i64 17048, !dbg !2106
  %40 = load ptr, ptr %arrayidx6.1.9, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %40) #13, !dbg !2108
    #dbg_value(i64 10, !2098, !DIExpression(), !2105)
  %arrayidx6.1.10 = getelementptr inbounds i8, ptr %h, i64 17056, !dbg !2106
  %41 = load ptr, ptr %arrayidx6.1.10, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %41) #13, !dbg !2108
    #dbg_value(i64 11, !2098, !DIExpression(), !2105)
  %arrayidx6.1.11 = getelementptr inbounds i8, ptr %h, i64 17064, !dbg !2106
  %42 = load ptr, ptr %arrayidx6.1.11, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %42) #13, !dbg !2108
    #dbg_value(i64 12, !2098, !DIExpression(), !2105)
  %arrayidx6.1.12 = getelementptr inbounds i8, ptr %h, i64 17072, !dbg !2106
  %43 = load ptr, ptr %arrayidx6.1.12, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %43) #13, !dbg !2108
    #dbg_value(i64 13, !2098, !DIExpression(), !2105)
  %arrayidx6.1.13 = getelementptr inbounds i8, ptr %h, i64 17080, !dbg !2106
  %44 = load ptr, ptr %arrayidx6.1.13, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %44) #13, !dbg !2108
    #dbg_value(i64 14, !2098, !DIExpression(), !2105)
  %arrayidx6.1.14 = getelementptr inbounds i8, ptr %h, i64 17088, !dbg !2106
  %45 = load ptr, ptr %arrayidx6.1.14, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %45) #13, !dbg !2108
    #dbg_value(i64 15, !2098, !DIExpression(), !2105)
  %arrayidx6.1.15 = getelementptr inbounds i8, ptr %h, i64 17096, !dbg !2106
  %46 = load ptr, ptr %arrayidx6.1.15, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %46) #13, !dbg !2108
    #dbg_value(i64 16, !2098, !DIExpression(), !2105)
  %arrayidx6.1.16 = getelementptr inbounds i8, ptr %h, i64 17104, !dbg !2106
  %47 = load ptr, ptr %arrayidx6.1.16, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %47) #13, !dbg !2108
    #dbg_value(i64 17, !2098, !DIExpression(), !2105)
  %arrayidx6.1.17 = getelementptr inbounds i8, ptr %h, i64 17112, !dbg !2106
  %48 = load ptr, ptr %arrayidx6.1.17, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %48) #13, !dbg !2108
    #dbg_value(i64 18, !2098, !DIExpression(), !2105)
  %arrayidx6.1.18 = getelementptr inbounds i8, ptr %h, i64 17120, !dbg !2106
  %49 = load ptr, ptr %arrayidx6.1.18, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %49) #13, !dbg !2108
    #dbg_value(i64 19, !2098, !DIExpression(), !2105)
  %arrayidx6.1.19 = getelementptr inbounds i8, ptr %h, i64 17128, !dbg !2106
  %50 = load ptr, ptr %arrayidx6.1.19, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %50) #13, !dbg !2108
    #dbg_value(i64 20, !2098, !DIExpression(), !2105)
  %arrayidx6.1.20 = getelementptr inbounds i8, ptr %h, i64 17136, !dbg !2106
  %51 = load ptr, ptr %arrayidx6.1.20, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %51) #13, !dbg !2108
    #dbg_value(i64 21, !2098, !DIExpression(), !2105)
  %arrayidx6.1.21 = getelementptr inbounds i8, ptr %h, i64 17144, !dbg !2106
  %52 = load ptr, ptr %arrayidx6.1.21, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %52) #13, !dbg !2108
    #dbg_value(i64 22, !2098, !DIExpression(), !2105)
  %arrayidx6.1.22 = getelementptr inbounds i8, ptr %h, i64 17152, !dbg !2106
  %53 = load ptr, ptr %arrayidx6.1.22, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %53) #13, !dbg !2108
    #dbg_value(i64 23, !2098, !DIExpression(), !2105)
  %arrayidx6.1.23 = getelementptr inbounds i8, ptr %h, i64 17160, !dbg !2106
  %54 = load ptr, ptr %arrayidx6.1.23, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %54) #13, !dbg !2108
    #dbg_value(i64 24, !2098, !DIExpression(), !2105)
  %arrayidx6.1.24 = getelementptr inbounds i8, ptr %h, i64 17168, !dbg !2106
  %55 = load ptr, ptr %arrayidx6.1.24, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %55) #13, !dbg !2108
    #dbg_value(i64 25, !2098, !DIExpression(), !2105)
  %arrayidx6.1.25 = getelementptr inbounds i8, ptr %h, i64 17176, !dbg !2106
  %56 = load ptr, ptr %arrayidx6.1.25, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %56) #13, !dbg !2108
    #dbg_value(i64 26, !2098, !DIExpression(), !2105)
  %arrayidx6.1.26 = getelementptr inbounds i8, ptr %h, i64 17184, !dbg !2106
  %57 = load ptr, ptr %arrayidx6.1.26, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %57) #13, !dbg !2108
    #dbg_value(i64 27, !2098, !DIExpression(), !2105)
  %arrayidx6.1.27 = getelementptr inbounds i8, ptr %h, i64 17192, !dbg !2106
  %58 = load ptr, ptr %arrayidx6.1.27, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %58) #13, !dbg !2108
    #dbg_value(i64 28, !2098, !DIExpression(), !2105)
  %arrayidx6.1.28 = getelementptr inbounds i8, ptr %h, i64 17200, !dbg !2106
  %59 = load ptr, ptr %arrayidx6.1.28, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %59) #13, !dbg !2108
    #dbg_value(i64 29, !2098, !DIExpression(), !2105)
  %arrayidx6.1.29 = getelementptr inbounds i8, ptr %h, i64 17208, !dbg !2106
  %60 = load ptr, ptr %arrayidx6.1.29, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %60) #13, !dbg !2108
    #dbg_value(i64 30, !2098, !DIExpression(), !2105)
  %arrayidx6.1.30 = getelementptr inbounds i8, ptr %h, i64 17216, !dbg !2106
  %61 = load ptr, ptr %arrayidx6.1.30, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %61) #13, !dbg !2108
    #dbg_value(i64 31, !2098, !DIExpression(), !2105)
  %arrayidx6.1.31 = getelementptr inbounds i8, ptr %h, i64 17224, !dbg !2106
  %62 = load ptr, ptr %arrayidx6.1.31, align 8, !dbg !2106
  tail call void @x264_free(ptr noundef %62) #13, !dbg !2108
    #dbg_value(i64 32, !2098, !DIExpression(), !2105)
    #dbg_value(i64 2, !2096, !DIExpression(), !2104)
  %p_weight_buf = getelementptr inbounds i8, ptr %h, i64 17256
    #dbg_value(i64 0, !2101, !DIExpression(), !2109)
  %63 = load ptr, ptr %p_weight_buf, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %63) #13, !dbg !2112
    #dbg_value(i64 1, !2101, !DIExpression(), !2109)
  %arrayidx17.1 = getelementptr inbounds i8, ptr %h, i64 17264, !dbg !2110
  %64 = load ptr, ptr %arrayidx17.1, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %64) #13, !dbg !2112
    #dbg_value(i64 2, !2101, !DIExpression(), !2109)
  %arrayidx17.2 = getelementptr inbounds i8, ptr %h, i64 17272, !dbg !2110
  %65 = load ptr, ptr %arrayidx17.2, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %65) #13, !dbg !2112
    #dbg_value(i64 3, !2101, !DIExpression(), !2109)
  %arrayidx17.3 = getelementptr inbounds i8, ptr %h, i64 17280, !dbg !2110
  %66 = load ptr, ptr %arrayidx17.3, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %66) #13, !dbg !2112
    #dbg_value(i64 4, !2101, !DIExpression(), !2109)
  %arrayidx17.4 = getelementptr inbounds i8, ptr %h, i64 17288, !dbg !2110
  %67 = load ptr, ptr %arrayidx17.4, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %67) #13, !dbg !2112
    #dbg_value(i64 5, !2101, !DIExpression(), !2109)
  %arrayidx17.5 = getelementptr inbounds i8, ptr %h, i64 17296, !dbg !2110
  %68 = load ptr, ptr %arrayidx17.5, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %68) #13, !dbg !2112
    #dbg_value(i64 6, !2101, !DIExpression(), !2109)
  %arrayidx17.6 = getelementptr inbounds i8, ptr %h, i64 17304, !dbg !2110
  %69 = load ptr, ptr %arrayidx17.6, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %69) #13, !dbg !2112
    #dbg_value(i64 7, !2101, !DIExpression(), !2109)
  %arrayidx17.7 = getelementptr inbounds i8, ptr %h, i64 17312, !dbg !2110
  %70 = load ptr, ptr %arrayidx17.7, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %70) #13, !dbg !2112
    #dbg_value(i64 8, !2101, !DIExpression(), !2109)
  %arrayidx17.8 = getelementptr inbounds i8, ptr %h, i64 17320, !dbg !2110
  %71 = load ptr, ptr %arrayidx17.8, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %71) #13, !dbg !2112
    #dbg_value(i64 9, !2101, !DIExpression(), !2109)
  %arrayidx17.9 = getelementptr inbounds i8, ptr %h, i64 17328, !dbg !2110
  %72 = load ptr, ptr %arrayidx17.9, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %72) #13, !dbg !2112
    #dbg_value(i64 10, !2101, !DIExpression(), !2109)
  %arrayidx17.10 = getelementptr inbounds i8, ptr %h, i64 17336, !dbg !2110
  %73 = load ptr, ptr %arrayidx17.10, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %73) #13, !dbg !2112
    #dbg_value(i64 11, !2101, !DIExpression(), !2109)
  %arrayidx17.11 = getelementptr inbounds i8, ptr %h, i64 17344, !dbg !2110
  %74 = load ptr, ptr %arrayidx17.11, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %74) #13, !dbg !2112
    #dbg_value(i64 12, !2101, !DIExpression(), !2109)
  %arrayidx17.12 = getelementptr inbounds i8, ptr %h, i64 17352, !dbg !2110
  %75 = load ptr, ptr %arrayidx17.12, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %75) #13, !dbg !2112
    #dbg_value(i64 13, !2101, !DIExpression(), !2109)
  %arrayidx17.13 = getelementptr inbounds i8, ptr %h, i64 17360, !dbg !2110
  %76 = load ptr, ptr %arrayidx17.13, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %76) #13, !dbg !2112
    #dbg_value(i64 14, !2101, !DIExpression(), !2109)
  %arrayidx17.14 = getelementptr inbounds i8, ptr %h, i64 17368, !dbg !2110
  %77 = load ptr, ptr %arrayidx17.14, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %77) #13, !dbg !2112
    #dbg_value(i64 15, !2101, !DIExpression(), !2109)
  %arrayidx17.15 = getelementptr inbounds i8, ptr %h, i64 17376, !dbg !2110
  %78 = load ptr, ptr %arrayidx17.15, align 8, !dbg !2110
  tail call void @x264_free(ptr noundef %78) #13, !dbg !2112
    #dbg_value(i64 16, !2101, !DIExpression(), !2109)
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128, !dbg !2113
  %79 = load i32, ptr %b_cabac, align 16, !dbg !2113
  %tobool21.not = icmp eq i32 %79, 0, !dbg !2115
  br i1 %tobool21.not, label %if.end, label %if.then, !dbg !2116

if.then:                                          ; preds = %for.cond.cleanup3.1
  %chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 16664, !dbg !2117
  %80 = load ptr, ptr %chroma_pred_mode, align 8, !dbg !2117
  tail call void @x264_free(ptr noundef %80) #13, !dbg !2119
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688, !dbg !2120
  %81 = load ptr, ptr %mvd, align 16, !dbg !2121
  tail call void @x264_free(ptr noundef %81) #13, !dbg !2122
  %arrayidx27 = getelementptr inbounds i8, ptr %h, i64 16696, !dbg !2123
  %82 = load ptr, ptr %arrayidx27, align 8, !dbg !2123
  tail call void @x264_free(ptr noundef %82) #13, !dbg !2124
  br label %if.end, !dbg !2125

if.end:                                           ; preds = %if.then, %for.cond.cleanup3.1
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248, !dbg !2126
  %83 = load ptr, ptr %slice_table, align 16, !dbg !2126
  tail call void @x264_free(ptr noundef %83) #13, !dbg !2127
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648, !dbg !2128
  %84 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !2128
  tail call void @x264_free(ptr noundef %84) #13, !dbg !2129
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !2130
  %85 = load ptr, ptr %non_zero_count, align 16, !dbg !2130
  tail call void @x264_free(ptr noundef %85) #13, !dbg !2131
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !2132
  %86 = load ptr, ptr %mb_transform_size, align 8, !dbg !2132
  tail call void @x264_free(ptr noundef %86) #13, !dbg !2133
  %skipbp = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !2134
  %87 = load ptr, ptr %skipbp, align 16, !dbg !2134
  tail call void @x264_free(ptr noundef %87) #13, !dbg !2135
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !2136
  %88 = load ptr, ptr %cbp, align 16, !dbg !2136
  tail call void @x264_free(ptr noundef %88) #13, !dbg !2137
  %qp = getelementptr inbounds i8, ptr %h, i64 16632, !dbg !2138
  %89 = load ptr, ptr %qp, align 8, !dbg !2138
  tail call void @x264_free(ptr noundef %89) #13, !dbg !2139
  ret void, !dbg !2140
}

declare !dbg !2141 void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_macroblock_thread_allocate(ptr nocapture noundef %h, i32 noundef %b_lookahead) local_unnamed_addr #0 !dbg !2142 {
entry:
    #dbg_value(ptr %h, !2146, !DIExpression(), !2165)
    #dbg_value(i32 %b_lookahead, !2147, !DIExpression(), !2165)
  %tobool.not = icmp eq i32 %b_lookahead, 0, !dbg !2166
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end165_crit_edge, !dbg !2167

entry.if.end165_crit_edge:                        ; preds = %entry
  %sps167.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 3200
  %.pre = load ptr, ptr %sps167.phi.trans.insert, align 16, !dbg !2168
  %i_mb_width168.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 1084
  %.pre264 = load i32, ptr %i_mb_width168.phi.trans.insert, align 4, !dbg !2169
  br label %if.end165, !dbg !2167

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
    #dbg_value(i32 0, !2148, !DIExpression(), !2170)
  %0 = load i32, ptr %b_interlaced, align 8, !dbg !2171
  %cmp.not259 = icmp slt i32 %0, 0, !dbg !2172
  br i1 %cmp.not259, label %if.then63, label %for.cond1.preheader.lr.ph, !dbg !2173

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  br label %for.cond1.preheader, !dbg !2173

for.cond:                                         ; preds = %do.end.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2174
    #dbg_value(i64 %indvars.iv.next, !2148, !DIExpression(), !2170)
    #dbg_value(i64 %indvars.iv.next, !2148, !DIExpression(), !2170)
  %1 = load i32, ptr %b_interlaced, align 8, !dbg !2171
  %2 = sext i32 %1 to i64, !dbg !2172
  %cmp.not.not = icmp slt i64 %indvars.iv, %2, !dbg !2172
  br i1 %cmp.not.not, label %for.cond1.preheader, label %if.then63, !dbg !2173, !llvm.loop !2175

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.cond ]
    #dbg_value(i64 %indvars.iv, !2148, !DIExpression(), !2170)
    #dbg_value(i32 0, !2151, !DIExpression(), !2177)
    #dbg_value(i64 0, !2151, !DIExpression(), !2177)
  %3 = load ptr, ptr %sps, align 16, !dbg !2178
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084, !dbg !2178
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !2178
  %mul = shl nsw i32 %4, 4, !dbg !2178
  %add = add nsw i32 %mul, 32, !dbg !2178
  %call = tail call ptr @x264_malloc(i32 noundef %add) #13, !dbg !2178
  %arrayidx9 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 0, !dbg !2178
  store ptr %call, ptr %arrayidx9, align 8, !dbg !2178
  %tobool15.not = icmp eq ptr %call, null, !dbg !2183
  br i1 %tobool15.not, label %fail, label %do.end, !dbg !2178

do.end:                                           ; preds = %for.cond1.preheader
  %5 = load ptr, ptr %sps, align 16, !dbg !2185
  %i_mb_width23 = getelementptr inbounds i8, ptr %5, i64 1084, !dbg !2185
  %6 = load i32, ptr %i_mb_width23, align 4, !dbg !2185
  %mul24 = shl nsw i32 %6, 4, !dbg !2185
  %add25 = add nsw i32 %mul24, 32, !dbg !2185
  %conv = sext i32 %add25 to i64, !dbg !2185
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call, i8 0, i64 %conv, i1 false), !dbg !2185
  %7 = load ptr, ptr %arrayidx9, align 8, !dbg !2186
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 8, !dbg !2186
  store ptr %add.ptr, ptr %arrayidx9, align 8, !dbg !2186
    #dbg_value(i64 1, !2151, !DIExpression(), !2177)
  %8 = load ptr, ptr %sps, align 16, !dbg !2178
  %i_mb_width.1 = getelementptr inbounds i8, ptr %8, i64 1084, !dbg !2178
  %9 = load i32, ptr %i_mb_width.1, align 4, !dbg !2178
  %mul.1 = shl nsw i32 %9, 4, !dbg !2178
  %add.1 = add nsw i32 %mul.1, 32, !dbg !2178
  %shr.1 = ashr exact i32 %add.1, 1, !dbg !2178
  %call.1 = tail call ptr @x264_malloc(i32 noundef %shr.1) #13, !dbg !2178
  %arrayidx9.1 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 1, !dbg !2178
  store ptr %call.1, ptr %arrayidx9.1, align 8, !dbg !2178
  %tobool15.not.1 = icmp eq ptr %call.1, null, !dbg !2183
  br i1 %tobool15.not.1, label %fail, label %do.end.1, !dbg !2178

do.end.1:                                         ; preds = %do.end
  %10 = load ptr, ptr %sps, align 16, !dbg !2185
  %i_mb_width23.1 = getelementptr inbounds i8, ptr %10, i64 1084, !dbg !2185
  %11 = load i32, ptr %i_mb_width23.1, align 4, !dbg !2185
  %mul24.1 = shl nsw i32 %11, 4, !dbg !2185
  %add25.1 = add nsw i32 %mul24.1, 32, !dbg !2185
  %shr31.1 = ashr exact i32 %add25.1, 1, !dbg !2185
  %conv.1 = sext i32 %shr31.1 to i64, !dbg !2185
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call.1, i8 0, i64 %conv.1, i1 false), !dbg !2185
  %12 = load ptr, ptr %arrayidx9.1, align 8, !dbg !2186
  %add.ptr.1 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !2186
  store ptr %add.ptr.1, ptr %arrayidx9.1, align 8, !dbg !2186
    #dbg_value(i64 2, !2151, !DIExpression(), !2177)
  %13 = load ptr, ptr %sps, align 16, !dbg !2178
  %i_mb_width.2 = getelementptr inbounds i8, ptr %13, i64 1084, !dbg !2178
  %14 = load i32, ptr %i_mb_width.2, align 4, !dbg !2178
  %mul.2 = shl nsw i32 %14, 4, !dbg !2178
  %add.2 = add nsw i32 %mul.2, 32, !dbg !2178
  %shr.2 = ashr exact i32 %add.2, 1, !dbg !2178
  %call.2 = tail call ptr @x264_malloc(i32 noundef %shr.2) #13, !dbg !2178
  %arrayidx9.2 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 2, !dbg !2178
  store ptr %call.2, ptr %arrayidx9.2, align 8, !dbg !2178
  %tobool15.not.2 = icmp eq ptr %call.2, null, !dbg !2183
  br i1 %tobool15.not.2, label %fail, label %do.end.2, !dbg !2178

do.end.2:                                         ; preds = %do.end.1
  %15 = load ptr, ptr %sps, align 16, !dbg !2185
  %i_mb_width23.2 = getelementptr inbounds i8, ptr %15, i64 1084, !dbg !2185
  %16 = load i32, ptr %i_mb_width23.2, align 4, !dbg !2185
  %mul24.2 = shl nsw i32 %16, 4, !dbg !2185
  %add25.2 = add nsw i32 %mul24.2, 32, !dbg !2185
  %shr31.2 = ashr exact i32 %add25.2, 1, !dbg !2185
  %conv.2 = sext i32 %shr31.2 to i64, !dbg !2185
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call.2, i8 0, i64 %conv.2, i1 false), !dbg !2185
  %17 = load ptr, ptr %arrayidx9.2, align 8, !dbg !2186
  %add.ptr.2 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !2186
  store ptr %add.ptr.2, ptr %arrayidx9.2, align 8, !dbg !2186
    #dbg_value(i64 3, !2151, !DIExpression(), !2177)
  %18 = load ptr, ptr %sps, align 16, !dbg !2187
  %i_mb_width41 = getelementptr inbounds i8, ptr %18, i64 1084, !dbg !2187
  %19 = load i32, ptr %i_mb_width41, align 4, !dbg !2187
  %mul43 = shl i32 %19, 5, !dbg !2187
  %call45 = tail call ptr @x264_malloc(i32 noundef %mul43) #13, !dbg !2187
  %arrayidx47 = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %indvars.iv, !dbg !2187
  store ptr %call45, ptr %arrayidx47, align 8, !dbg !2187
  %tobool51.not = icmp eq ptr %call45, null, !dbg !2189
    #dbg_value(i64 %indvars.iv, !2148, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2170)
  br i1 %tobool51.not, label %fail, label %for.cond, !dbg !2187

if.then63:                                        ; preds = %for.cond, %for.cond.preheader
    #dbg_value(i32 0, !2155, !DIExpression(), !2165)
  %thread = getelementptr inbounds i8, ptr %h, i64 704, !dbg !2191
  %20 = load ptr, ptr %thread, align 16, !dbg !2192
  %fdec = getelementptr inbounds i8, ptr %20, i64 14688, !dbg !2193
  %21 = load ptr, ptr %fdec, align 16, !dbg !2193
  %i_width = getelementptr inbounds i8, ptr %21, i64 116, !dbg !2194
  %22 = load i32, ptr %i_width, align 4, !dbg !2192
  %add66 = shl i32 %22, 1, !dbg !2195
  %mul68 = add i32 %add66, 96, !dbg !2195
    #dbg_value(i32 %mul68, !2156, !DIExpression(), !2196)
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480, !dbg !2197
  %23 = load i32, ptr %b_ssim, align 16, !dbg !2197
  %i_width73 = getelementptr inbounds i8, ptr %h, i64 20, !dbg !2198
  %24 = load i32, ptr %i_width73, align 4, !dbg !2198
  %div = sdiv i32 %24, 4, !dbg !2199
  %add74 = add nsw i32 %div, 3, !dbg !2200
  %mul75 = shl i32 %23, 5, !dbg !2201
  %mul77 = mul i32 %mul75, %add74, !dbg !2202
    #dbg_value(i32 %mul77, !2159, !DIExpression(), !2196)
  %i_me_range = getelementptr inbounds i8, ptr %h, i64 416, !dbg !2203
  %25 = load i32, ptr %i_me_range, align 16, !dbg !2203
  %i_mv_range = getelementptr inbounds i8, ptr %h, i64 420, !dbg !2203
  %26 = load i32, ptr %i_mv_range, align 4, !dbg !2203
  %. = tail call i32 @llvm.smin.i32(i32 %25, i32 %26), !dbg !2203
    #dbg_value(i32 %., !2160, !DIExpression(), !2196)
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412, !dbg !2204
  %27 = load i32, ptr %i_me_method, align 4, !dbg !2204
  %cmp93 = icmp sgt i32 %27, 2, !dbg !2205
  %mul96 = shl i32 %., 2, !dbg !2206
  %mul99 = add i32 %mul96, 36, !dbg !2207
  %add100 = add nsw i32 %., 4, !dbg !2208
  %add101 = shl i32 %., 5, !dbg !2209
  %mul102 = add i32 %add101, 32, !dbg !2209
  %mul103 = mul i32 %mul102, %add100, !dbg !2210
  %add106 = add i32 %mul99, %mul103, !dbg !2211
  %conv108 = select i1 %cmp93, i32 %add106, i32 0, !dbg !2212
    #dbg_value(i32 %conv108, !2161, !DIExpression(), !2196)
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128, !dbg !2213
  %28 = load i32, ptr %b_cabac, align 16, !dbg !2213
  %tobool110.not = icmp eq i32 %28, 0, !dbg !2214
  %pps = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !2215
  %29 = load ptr, ptr %pps, align 16, !dbg !2215
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %29, i64 60, !dbg !2216
  %30 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !2216
  %31 = shl i32 %30, 6, !dbg !2217
  %sps115 = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !2218
  %32 = load ptr, ptr %sps115, align 16, !dbg !2218
  %i_mb_width116 = getelementptr inbounds i8, ptr %32, i64 1084, !dbg !2219
  %33 = load i32, ptr %i_mb_width116, align 4, !dbg !2219
  %mul118 = select i1 %tobool110.not, i32 %31, i32 0, !dbg !2217
  %mul121 = mul i32 %mul118, %33, !dbg !2220
    #dbg_value(i32 %mul121, !2162, !DIExpression(), !2196)
  %cond128 = tail call i32 @llvm.smax.i32(i32 %conv108, i32 %mul121), !dbg !2221
  %cond140 = tail call i32 @llvm.smax.i32(i32 %mul77, i32 %cond128), !dbg !2221
  %cond164 = tail call i32 @llvm.smax.i32(i32 %mul68, i32 %cond140), !dbg !2221
    #dbg_value(i32 %cond164, !2155, !DIExpression(), !2165)
  br label %if.end165, !dbg !2222

if.end165:                                        ; preds = %entry.if.end165_crit_edge, %if.then63
  %34 = phi i32 [ %33, %if.then63 ], [ %.pre264, %entry.if.end165_crit_edge ], !dbg !2169
  %scratch_size.0 = phi i32 [ %cond164, %if.then63 ], [ 0, %entry.if.end165_crit_edge ], !dbg !2165
    #dbg_value(i32 %scratch_size.0, !2155, !DIExpression(), !2165)
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552, !dbg !2223
  %35 = load i32, ptr %b_mb_tree, align 8, !dbg !2223
  %add169 = add nsw i32 %34, 3, !dbg !2224
  %and = and i32 %add169, 1073741820, !dbg !2225
  %mul170 = shl i32 %35, 2, !dbg !2226
  %mul172 = mul i32 %mul170, %and, !dbg !2227
    #dbg_value(i32 %mul172, !2163, !DIExpression(), !2165)
  %cond179 = tail call i32 @llvm.smax.i32(i32 %scratch_size.0, i32 %mul172), !dbg !2228
    #dbg_value(i32 %cond179, !2155, !DIExpression(), !2165)
  %call181 = tail call ptr @x264_malloc(i32 noundef %cond179) #13, !dbg !2229
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176, !dbg !2229
  store ptr %call181, ptr %scratch_buffer, align 8, !dbg !2229
  %tobool183.not = icmp eq ptr %call181, null, !dbg !2231
  br i1 %tobool183.not, label %fail, label %return, !dbg !2229

fail:                                             ; preds = %do.end.2, %for.cond1.preheader, %do.end, %do.end.1, %if.end165
    #dbg_label(!2164, !2233)
  br label %return, !dbg !2234

return:                                           ; preds = %if.end165, %fail
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end165 ], !dbg !2165
  ret i32 %retval.0, !dbg !2235
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_thread_free(ptr nocapture noundef readonly %h, i32 noundef %b_lookahead) local_unnamed_addr #0 !dbg !2236 {
entry:
    #dbg_value(ptr %h, !2238, !DIExpression(), !2247)
    #dbg_value(i32 %b_lookahead, !2239, !DIExpression(), !2247)
  %tobool.not = icmp eq i32 %b_lookahead, 0, !dbg !2248
  br i1 %tobool.not, label %for.cond.preheader, label %if.end, !dbg !2249

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
    #dbg_value(i32 0, !2240, !DIExpression(), !2250)
  %0 = load i32, ptr %b_interlaced, align 8, !dbg !2251
  %cmp.not21 = icmp slt i32 %0, 0, !dbg !2252
  br i1 %cmp.not21, label %if.end, label %for.body.lr.ph, !dbg !2253

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  br label %for.body, !dbg !2253

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !2240, !DIExpression(), !2250)
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %indvars.iv, !dbg !2254
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2254
  tail call void @x264_free(ptr noundef %1) #13, !dbg !2255
    #dbg_value(i32 0, !2243, !DIExpression(), !2256)
    #dbg_value(i32 0, !2243, !DIExpression(), !2256)
    #dbg_value(i64 0, !2243, !DIExpression(), !2256)
  %arrayidx8 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 0, !dbg !2257
  %2 = load ptr, ptr %arrayidx8, align 8, !dbg !2257
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 -8, !dbg !2259
  tail call void @x264_free(ptr noundef nonnull %add.ptr) #13, !dbg !2260
    #dbg_value(i64 1, !2243, !DIExpression(), !2256)
  %arrayidx8.1 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 1, !dbg !2257
  %3 = load ptr, ptr %arrayidx8.1, align 8, !dbg !2257
  %add.ptr.1 = getelementptr inbounds i8, ptr %3, i64 -8, !dbg !2259
  tail call void @x264_free(ptr noundef nonnull %add.ptr.1) #13, !dbg !2260
    #dbg_value(i64 2, !2243, !DIExpression(), !2256)
  %arrayidx8.2 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 2, !dbg !2257
  %4 = load ptr, ptr %arrayidx8.2, align 8, !dbg !2257
  %add.ptr.2 = getelementptr inbounds i8, ptr %4, i64 -8, !dbg !2259
  tail call void @x264_free(ptr noundef nonnull %add.ptr.2) #13, !dbg !2260
    #dbg_value(i64 3, !2243, !DIExpression(), !2256)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2261
    #dbg_value(i64 %indvars.iv.next, !2240, !DIExpression(), !2250)
  %5 = load i32, ptr %b_interlaced, align 8, !dbg !2251
  %6 = sext i32 %5 to i64, !dbg !2252
  %cmp.not.not = icmp slt i64 %indvars.iv, %6, !dbg !2252
  br i1 %cmp.not.not, label %for.body, label %if.end, !dbg !2253, !llvm.loop !2262

if.end:                                           ; preds = %for.body, %for.cond.preheader, %entry
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176, !dbg !2264
  %7 = load ptr, ptr %scratch_buffer, align 8, !dbg !2264
  tail call void @x264_free(ptr noundef %7) #13, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_slice_init(ptr noundef %h) local_unnamed_addr #4 !dbg !2267 {
entry:
    #dbg_value(ptr %h, !2269, !DIExpression(), !2293)
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !2294
  %0 = load ptr, ptr %fdec, align 16, !dbg !2294
  %mv = getelementptr inbounds i8, ptr %0, i64 3552, !dbg !2295
  %1 = load ptr, ptr %mv, align 16, !dbg !2296
  %mv1 = getelementptr inbounds i8, ptr %h, i64 16672, !dbg !2297
  store ptr %1, ptr %mv1, align 16, !dbg !2298
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 3560, !dbg !2299
  %2 = load ptr, ptr %arrayidx5, align 8, !dbg !2299
  %arrayidx8 = getelementptr inbounds i8, ptr %h, i64 16680, !dbg !2300
  store ptr %2, ptr %arrayidx8, align 8, !dbg !2301
  %mv16x16 = getelementptr inbounds i8, ptr %0, i64 3568, !dbg !2302
  %3 = load ptr, ptr %mv16x16, align 16, !dbg !2302
  %mvr = getelementptr inbounds i8, ptr %h, i64 16720, !dbg !2303
  store ptr %3, ptr %mvr, align 16, !dbg !2304
  %ref = getelementptr inbounds i8, ptr %0, i64 6712, !dbg !2305
  %4 = load ptr, ptr %ref, align 8, !dbg !2306
  %ref16 = getelementptr inbounds i8, ptr %h, i64 16704, !dbg !2307
  store ptr %4, ptr %ref16, align 16, !dbg !2308
  %arrayidx20 = getelementptr inbounds i8, ptr %0, i64 6720, !dbg !2309
  %5 = load ptr, ptr %arrayidx20, align 8, !dbg !2309
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 16712, !dbg !2310
  store ptr %5, ptr %arrayidx23, align 8, !dbg !2311
  %mb_type = getelementptr inbounds i8, ptr %0, i64 3536, !dbg !2312
  %6 = load ptr, ptr %mb_type, align 16, !dbg !2312
  %type = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !2313
  store ptr %6, ptr %type, align 8, !dbg !2314
  %mb_partition = getelementptr inbounds i8, ptr %0, i64 3544, !dbg !2315
  %7 = load ptr, ptr %mb_partition, align 8, !dbg !2315
  %partition = getelementptr inbounds i8, ptr %h, i64 16624, !dbg !2316
  store ptr %7, ptr %partition, align 16, !dbg !2317
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696, !dbg !2318
  %8 = load i32, ptr %i_ref0, align 8, !dbg !2318
  %i_ref = getelementptr inbounds i8, ptr %0, i64 6728, !dbg !2319
  store i32 %8, ptr %i_ref, align 8, !dbg !2320
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856, !dbg !2321
  %9 = load i32, ptr %i_ref1, align 8, !dbg !2321
  %10 = load ptr, ptr %fdec, align 16, !dbg !2322
  %arrayidx32 = getelementptr inbounds i8, ptr %10, i64 6732, !dbg !2323
  store i32 %9, ptr %arrayidx32, align 4, !dbg !2324
    #dbg_value(i32 0, !2270, !DIExpression(), !2325)
  %11 = load i32, ptr %i_ref0, align 8, !dbg !2326
  %cmp313 = icmp sgt i32 %11, 0, !dbg !2328
  br i1 %cmp313, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !2329

for.body.lr.ph:                                   ; preds = %entry
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  br label %for.body, !dbg !2329

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !2330
  %12 = load i32, ptr %i_type, align 16, !dbg !2330
  %cmp39 = icmp eq i32 %12, 1, !dbg !2331
  br i1 %cmp39, label %for.cond41.preheader, label %if.end104, !dbg !2332

for.cond41.preheader:                             ; preds = %for.cond.cleanup
    #dbg_value(i32 0, !2272, !DIExpression(), !2333)
  %13 = load i32, ptr %i_ref1, align 8, !dbg !2334
  %cmp43315 = icmp sgt i32 %13, 0, !dbg !2336
  br i1 %cmp43315, label %for.body45.lr.ph, label %for.cond.cleanup44, !dbg !2337

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  br label %for.body45, !dbg !2337

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !2270, !DIExpression(), !2325)
  %arrayidx34 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv, !dbg !2338
  %14 = load ptr, ptr %arrayidx34, align 8, !dbg !2338
  %15 = load i32, ptr %14, align 16, !dbg !2339
  %16 = load ptr, ptr %fdec, align 16, !dbg !2340
  %ref_poc = getelementptr inbounds i8, ptr %16, i64 6736, !dbg !2341
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %ref_poc, i64 0, i64 %indvars.iv, !dbg !2342
  store i32 %15, ptr %arrayidx38, align 4, !dbg !2343
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2344
    #dbg_value(i64 %indvars.iv.next, !2270, !DIExpression(), !2325)
  %17 = load i32, ptr %i_ref0, align 8, !dbg !2326
  %18 = sext i32 %17 to i64, !dbg !2328
  %cmp = icmp slt i64 %indvars.iv.next, %18, !dbg !2328
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !2329, !llvm.loop !2345

for.cond.cleanup44:                               ; preds = %for.body45, %for.cond41.preheader
  %map_col_to_list0 = getelementptr inbounds i8, ptr %h, i64 26632, !dbg !2347
  %arrayidx58 = getelementptr inbounds i8, ptr %h, i64 26633, !dbg !2347
  store i8 -1, ptr %arrayidx58, align 1, !dbg !2348
  store i8 -2, ptr %map_col_to_list0, align 8, !dbg !2349
    #dbg_value(i32 0, !2276, !DIExpression(), !2350)
  %fref164 = getelementptr inbounds i8, ptr %h, i64 14864
  %19 = load ptr, ptr %fref164, align 16
  %i_ref66 = getelementptr inbounds i8, ptr %19, i64 6728
  %20 = load i32, ptr %i_ref66, align 8, !dbg !2351
  %cmp68319 = icmp sgt i32 %20, 0, !dbg !2352
  br i1 %cmp68319, label %for.body70.lr.ph, label %if.end104thread-pre-split, !dbg !2353

for.body70.lr.ph:                                 ; preds = %for.cond.cleanup44
  %ref_poc73 = getelementptr inbounds i8, ptr %19, i64 6736
  %21 = load i32, ptr %i_ref0, align 8
  %cmp83317 = icmp sgt i32 %21, 0
  %fref086 = getelementptr inbounds i8, ptr %h, i64 14704
  br i1 %cmp83317, label %for.body70.us.preheader, label %for.body70

for.body70.us.preheader:                          ; preds = %for.body70.lr.ph
  %wide.trip.count = zext nneg i32 %21 to i64
  br label %for.body70.us, !dbg !2353

for.body70.us:                                    ; preds = %for.body70.us.preheader, %cleanup.us
  %indvars.iv339 = phi i64 [ 0, %for.body70.us.preheader ], [ %indvars.iv.next340, %cleanup.us ]
    #dbg_value(i64 %indvars.iv339, !2276, !DIExpression(), !2350)
  %arrayidx76.us = getelementptr inbounds [16 x i32], ptr %ref_poc73, i64 0, i64 %indvars.iv339, !dbg !2354
  %22 = load i32, ptr %arrayidx76.us, align 4, !dbg !2354
    #dbg_value(i32 %22, !2278, !DIExpression(), !2355)
  %23 = add nuw nsw i64 %indvars.iv339, 2, !dbg !2356
  %arrayidx80.us = getelementptr inbounds [18 x i8], ptr %map_col_to_list0, i64 0, i64 %23, !dbg !2356
  store i8 -2, ptr %arrayidx80.us, align 1, !dbg !2357
    #dbg_value(i32 0, !2281, !DIExpression(), !2358)
  br label %for.body85.us, !dbg !2359

for.body85.us:                                    ; preds = %for.body70.us, %for.inc97.us
  %indvars.iv336 = phi i64 [ 0, %for.body70.us ], [ %indvars.iv.next337, %for.inc97.us ]
    #dbg_value(i64 %indvars.iv336, !2281, !DIExpression(), !2358)
  %arrayidx88.us = getelementptr inbounds [19 x ptr], ptr %fref086, i64 0, i64 %indvars.iv336, !dbg !2360
  %24 = load ptr, ptr %arrayidx88.us, align 8, !dbg !2360
  %25 = load i32, ptr %24, align 16, !dbg !2363
  %cmp90.us = icmp eq i32 %25, %22, !dbg !2364
  br i1 %cmp90.us, label %if.then91.us, label %for.inc97.us, !dbg !2365

for.inc97.us:                                     ; preds = %for.body85.us
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1, !dbg !2366
    #dbg_value(i64 %indvars.iv.next337, !2281, !DIExpression(), !2358)
  %exitcond.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count, !dbg !2367
  br i1 %exitcond.not, label %cleanup.us, label %for.body85.us, !dbg !2359, !llvm.loop !2368

if.then91.us:                                     ; preds = %for.body85.us
  %conv.us = trunc i64 %indvars.iv336 to i8, !dbg !2370
  store i8 %conv.us, ptr %arrayidx80.us, align 1, !dbg !2372
  br label %cleanup.us, !dbg !2373

cleanup.us:                                       ; preds = %for.inc97.us, %if.then91.us
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1, !dbg !2374
    #dbg_value(i64 %indvars.iv.next340, !2276, !DIExpression(), !2350)
  %26 = load i32, ptr %i_ref66, align 8, !dbg !2351
  %27 = sext i32 %26 to i64, !dbg !2352
  %cmp68.us = icmp slt i64 %indvars.iv.next340, %27, !dbg !2352
  br i1 %cmp68.us, label %for.body70.us, label %if.end104thread-pre-split, !dbg !2353, !llvm.loop !2375

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %indvars.iv329 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next330, %for.body45 ]
    #dbg_value(i64 %indvars.iv329, !2272, !DIExpression(), !2333)
  %arrayidx47 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv329, !dbg !2377
  %28 = load ptr, ptr %arrayidx47, align 8, !dbg !2377
  %29 = load i32, ptr %28, align 16, !dbg !2378
  %30 = load ptr, ptr %fdec, align 16, !dbg !2379
  %arrayidx51 = getelementptr inbounds i8, ptr %30, i64 6800, !dbg !2380
  %arrayidx53 = getelementptr inbounds [16 x i32], ptr %arrayidx51, i64 0, i64 %indvars.iv329, !dbg !2380
  store i32 %29, ptr %arrayidx53, align 4, !dbg !2381
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1, !dbg !2382
    #dbg_value(i64 %indvars.iv.next330, !2272, !DIExpression(), !2333)
  %31 = load i32, ptr %i_ref1, align 8, !dbg !2334
  %32 = sext i32 %31 to i64, !dbg !2336
  %cmp43 = icmp slt i64 %indvars.iv.next330, %32, !dbg !2336
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44, !dbg !2337, !llvm.loop !2383

for.body70:                                       ; preds = %for.body70.lr.ph, %for.body70
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %for.body70 ], [ 0, %for.body70.lr.ph ]
    #dbg_value(i64 %indvars.iv332, !2276, !DIExpression(), !2350)
    #dbg_value(i32 poison, !2278, !DIExpression(), !2355)
  %33 = add nuw nsw i64 %indvars.iv332, 2, !dbg !2356
  %arrayidx80 = getelementptr inbounds [18 x i8], ptr %map_col_to_list0, i64 0, i64 %33, !dbg !2356
  store i8 -2, ptr %arrayidx80, align 1, !dbg !2357
    #dbg_value(i32 0, !2281, !DIExpression(), !2358)
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1, !dbg !2374
    #dbg_value(i64 %indvars.iv.next333, !2276, !DIExpression(), !2350)
  %34 = load i32, ptr %i_ref66, align 8, !dbg !2351
  %35 = sext i32 %34 to i64, !dbg !2352
  %cmp68 = icmp slt i64 %indvars.iv.next333, %35, !dbg !2352
  br i1 %cmp68, label %for.body70, label %if.end104thread-pre-split, !dbg !2353, !llvm.loop !2375

if.end104thread-pre-split:                        ; preds = %for.body70, %cleanup.us, %for.cond.cleanup44
  %.pr = load i32, ptr %i_type, align 16, !dbg !2385
  br label %if.end104, !dbg !2385

if.end104:                                        ; preds = %if.end104thread-pre-split, %for.cond.cleanup
  %36 = phi i32 [ %.pr, %if.end104thread-pre-split ], [ %12, %for.cond.cleanup ], !dbg !2385
  %cmp107 = icmp eq i32 %36, 0, !dbg !2387
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !2388

if.then109:                                       ; preds = %if.end104
  %skip = getelementptr inbounds i8, ptr %h, i64 25680, !dbg !2389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %skip, i8 0, i64 40, i1 false), !dbg !2390
  br label %if.end111, !dbg !2390

if.end111:                                        ; preds = %if.then109, %if.end104
  %ref114 = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !2391
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %ref114, i8 -2, i64 80, i1 false), !dbg !2392
  %37 = load i32, ptr %i_ref0, align 8, !dbg !2393
  %cmp117 = icmp slt i32 %37, 1, !dbg !2394
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %38 = load i32, ptr %b_mbaff, align 4
    #dbg_value(i32 0, !2283, !DIExpression(), !2395)
  %cmp122.not321 = icmp slt i32 %38, 0
  %or.cond = select i1 %cmp117, i1 true, i1 %cmp122.not321, !dbg !2396
  br i1 %or.cond, label %if.end151, label %for.body125.lr.ph, !dbg !2396

for.body125.lr.ph:                                ; preds = %if.end111
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288
  %fref0130 = getelementptr inbounds i8, ptr %h, i64 14704
    #dbg_value(i64 0, !2283, !DIExpression(), !2395)
  %39 = load ptr, ptr %fdec, align 16, !dbg !2397
  %40 = load i32, ptr %39, align 16, !dbg !2398
    #dbg_value(i32 poison, !2286, !DIExpression(), !2399)
  %41 = load ptr, ptr %fref0130, align 16, !dbg !2400
  %42 = load i32, ptr %41, align 16, !dbg !2401
    #dbg_value(i32 poison, !2289, !DIExpression(), !2399)
  %sub.peel = sub i32 %40, %42, !dbg !2402
    #dbg_value(i32 %sub.peel, !2290, !DIExpression(), !2399)
  %div.peel = sdiv i32 %sub.peel, 2, !dbg !2403
  %add141.peel = add nsw i32 %div.peel, 256, !dbg !2404
  %div142.peel = sdiv i32 %add141.peel, %sub.peel, !dbg !2405
  %conv143.peel = trunc i32 %div142.peel to i16, !dbg !2406
  %inv_ref_poc.peel = getelementptr inbounds i8, ptr %39, i64 6864, !dbg !2407
  store i16 %conv143.peel, ptr %inv_ref_poc.peel, align 2, !dbg !2408
    #dbg_value(i64 1, !2283, !DIExpression(), !2395)
  %43 = load i32, ptr %b_mbaff, align 4, !dbg !2409
  %cmp122.not.not.peel = icmp sgt i32 %43, 0, !dbg !2410
  br i1 %cmp122.not.not.peel, label %for.body125, label %if.end151.loopexit, !dbg !2411

for.body125:                                      ; preds = %for.body125.lr.ph, %for.body125
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %for.body125 ], [ 1, %for.body125.lr.ph ]
  %44 = phi i32 [ %52, %for.body125 ], [ 1, %for.body125.lr.ph ]
    #dbg_value(i64 %indvars.iv343, !2283, !DIExpression(), !2395)
  %45 = load ptr, ptr %fdec, align 16, !dbg !2397
  %46 = load i32, ptr %45, align 16, !dbg !2398
  %47 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !2412
  %48 = trunc nuw nsw i64 %indvars.iv343 to i32, !dbg !2413
  %mul = mul nsw i32 %47, %48, !dbg !2413
    #dbg_value(i32 poison, !2286, !DIExpression(), !2399)
  %49 = load ptr, ptr %fref0130, align 16, !dbg !2400
  %50 = load i32, ptr %49, align 16, !dbg !2401
    #dbg_value(i32 %50, !2289, !DIExpression(), !2399)
  %tobool.not = icmp eq i32 %44, 0, !dbg !2414
  %add139 = select i1 %tobool.not, i32 0, i32 %47, !dbg !2416
    #dbg_value(i32 poison, !2289, !DIExpression(), !2399)
  %spec.select.neg = add i32 %mul, %46, !dbg !2416
  %51 = add i32 %add139, %50, !dbg !2402
  %sub = sub i32 %spec.select.neg, %51, !dbg !2402
    #dbg_value(i32 %sub, !2290, !DIExpression(), !2399)
  %div = sdiv i32 %sub, 2, !dbg !2403
  %add141 = add nsw i32 %div, 256, !dbg !2404
  %div142 = sdiv i32 %add141, %sub, !dbg !2405
  %conv143 = trunc i32 %div142 to i16, !dbg !2406
  %inv_ref_poc = getelementptr inbounds i8, ptr %45, i64 6864, !dbg !2407
  %arrayidx146 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %indvars.iv343, !dbg !2417
  store i16 %conv143, ptr %arrayidx146, align 2, !dbg !2408
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1, !dbg !2418
    #dbg_value(i64 %indvars.iv.next344, !2283, !DIExpression(), !2395)
  %52 = load i32, ptr %b_mbaff, align 4, !dbg !2409
  %53 = sext i32 %52 to i64, !dbg !2410
  %cmp122.not.not = icmp slt i64 %indvars.iv343, %53, !dbg !2410
  br i1 %cmp122.not.not, label %for.body125, label %if.end151.loopexit, !dbg !2411, !llvm.loop !2419

if.end151.loopexit:                               ; preds = %for.body125, %for.body125.lr.ph
  %54 = phi i32 [ %43, %for.body125.lr.ph ], [ %52, %for.body125 ]
  %.pre = load i32, ptr %i_ref0, align 8
  br label %if.end151, !dbg !2422

if.end151:                                        ; preds = %if.end111, %if.end151.loopexit
  %55 = phi i32 [ %54, %if.end151.loopexit ], [ %38, %if.end111 ]
  %56 = phi i32 [ %.pre, %if.end151.loopexit ], [ %37, %if.end111 ]
  %deblock_ref_table = getelementptr inbounds i8, ptr %h, i64 26656, !dbg !2422
  store i8 -2, ptr %deblock_ref_table, align 16, !dbg !2423
  %arrayidx156 = getelementptr inbounds i8, ptr %h, i64 26657, !dbg !2424
  store i8 -1, ptr %arrayidx156, align 1, !dbg !2425
    #dbg_value(i32 0, !2291, !DIExpression(), !2426)
  %shl = shl i32 %56, %55
  %cmp162323 = icmp sgt i32 %shl, 0, !dbg !2427
  br i1 %cmp162323, label %for.body165.lr.ph, label %for.cond.cleanup164, !dbg !2429

for.body165.lr.ph:                                ; preds = %if.end151
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %57 = load i32, ptr %b_interlaced, align 4
  %tobool167.not = icmp eq i32 %57, 0
  %fref0178 = getelementptr inbounds i8, ptr %h, i64 14704
  %wide.trip.count357 = zext nneg i32 %shl to i64, !dbg !2427
  br i1 %tobool167.not, label %for.body165.us.preheader, label %for.body165.preheader

for.body165.preheader:                            ; preds = %for.body165.lr.ph
  %xtraiter = and i64 %wide.trip.count357, 1, !dbg !2429
  %58 = icmp eq i32 %shl, 1, !dbg !2429
  br i1 %58, label %for.cond.cleanup164.loopexit366.unr-lcssa, label %for.body165.preheader.new, !dbg !2429

for.body165.preheader.new:                        ; preds = %for.body165.preheader
  %unroll_iter = and i64 %wide.trip.count357, 2147483646, !dbg !2429
  br label %for.body165, !dbg !2429

for.body165.us.preheader:                         ; preds = %for.body165.lr.ph
  %xtraiter369 = and i64 %wide.trip.count357, 1, !dbg !2429
  %59 = icmp eq i32 %shl, 1, !dbg !2429
  br i1 %59, label %for.cond.cleanup164.loopexit.unr-lcssa, label %for.body165.us.preheader.new, !dbg !2429

for.body165.us.preheader.new:                     ; preds = %for.body165.us.preheader
  %unroll_iter371 = and i64 %wide.trip.count357, 2147483646, !dbg !2429
  br label %for.body165.us, !dbg !2429

for.body165.us:                                   ; preds = %for.body165.us, %for.body165.us.preheader.new
  %indvars.iv353 = phi i64 [ 0, %for.body165.us.preheader.new ], [ %indvars.iv.next354.1, %for.body165.us ]
  %niter372 = phi i64 [ 0, %for.body165.us.preheader.new ], [ %niter372.next.1, %for.body165.us ]
    #dbg_value(i64 %indvars.iv353, !2291, !DIExpression(), !2426)
  %arrayidx171.us = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv353, !dbg !2430
  %60 = load ptr, ptr %arrayidx171.us, align 8, !dbg !2430
  %i_frame_num.us = getelementptr inbounds i8, ptr %60, i64 68, !dbg !2433
  %61 = load i32, ptr %i_frame_num.us, align 4, !dbg !2433
  %62 = trunc i32 %61 to i8, !dbg !2430
  %conv172.us = and i8 %62, 63, !dbg !2430
  %63 = add nuw nsw i64 %indvars.iv353, 2, !dbg !2434
  %arrayidx177.us = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %63, !dbg !2434
  store i8 %conv172.us, ptr %arrayidx177.us, align 1, !dbg !2435
  %indvars.iv.next354 = or disjoint i64 %indvars.iv353, 1, !dbg !2436
    #dbg_value(i64 %indvars.iv.next354, !2291, !DIExpression(), !2426)
  %arrayidx171.us.1 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv.next354, !dbg !2430
  %64 = load ptr, ptr %arrayidx171.us.1, align 8, !dbg !2430
  %i_frame_num.us.1 = getelementptr inbounds i8, ptr %64, i64 68, !dbg !2433
  %65 = load i32, ptr %i_frame_num.us.1, align 4, !dbg !2433
  %66 = trunc i32 %65 to i8, !dbg !2430
  %conv172.us.1 = and i8 %66, 63, !dbg !2430
  %67 = add nuw nsw i64 %indvars.iv353, 3, !dbg !2434
  %arrayidx177.us.1 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %67, !dbg !2434
  store i8 %conv172.us.1, ptr %arrayidx177.us.1, align 1, !dbg !2435
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2, !dbg !2436
    #dbg_value(i64 %indvars.iv.next354.1, !2291, !DIExpression(), !2426)
  %niter372.next.1 = add i64 %niter372, 2, !dbg !2429
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371, !dbg !2429
  br i1 %niter372.ncmp.1, label %for.cond.cleanup164.loopexit.unr-lcssa, label %for.body165.us, !dbg !2429, !llvm.loop !2437

for.cond.cleanup164.loopexit.unr-lcssa:           ; preds = %for.body165.us, %for.body165.us.preheader
  %indvars.iv353.unr = phi i64 [ 0, %for.body165.us.preheader ], [ %indvars.iv.next354.1, %for.body165.us ]
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0, !dbg !2429
  br i1 %lcmp.mod370.not, label %for.cond.cleanup164, label %for.body165.us.epil, !dbg !2429

for.body165.us.epil:                              ; preds = %for.cond.cleanup164.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv353.unr, !2291, !DIExpression(), !2426)
  %arrayidx171.us.epil = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv353.unr, !dbg !2430
  %68 = load ptr, ptr %arrayidx171.us.epil, align 8, !dbg !2430
  %i_frame_num.us.epil = getelementptr inbounds i8, ptr %68, i64 68, !dbg !2433
  %69 = load i32, ptr %i_frame_num.us.epil, align 4, !dbg !2433
  %70 = trunc i32 %69 to i8, !dbg !2430
  %conv172.us.epil = and i8 %70, 63, !dbg !2430
  %71 = add nuw nsw i64 %indvars.iv353.unr, 2, !dbg !2434
  %arrayidx177.us.epil = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %71, !dbg !2434
  store i8 %conv172.us.epil, ptr %arrayidx177.us.epil, align 1, !dbg !2435
    #dbg_value(i64 %indvars.iv353.unr, !2291, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2426)
  br label %for.cond.cleanup164, !dbg !2439

for.cond.cleanup164.loopexit366.unr-lcssa:        ; preds = %for.body165, %for.body165.preheader
  %indvars.iv347.unr = phi i64 [ 0, %for.body165.preheader ], [ %indvars.iv.next348.1, %for.body165 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2429
  br i1 %lcmp.mod.not, label %for.cond.cleanup164, label %for.body165.epil, !dbg !2429

for.body165.epil:                                 ; preds = %for.cond.cleanup164.loopexit366.unr-lcssa
    #dbg_value(i64 %indvars.iv347.unr, !2291, !DIExpression(), !2426)
  %72 = trunc nuw nsw i64 %indvars.iv347.unr to i32, !dbg !2440
  %shr.epil = lshr i64 %indvars.iv347.unr, 1, !dbg !2440
  %idxprom179.epil = and i64 %shr.epil, 2147483647, !dbg !2441
  %arrayidx180.epil = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179.epil, !dbg !2441
  %73 = load ptr, ptr %arrayidx180.epil, align 8, !dbg !2441
  %i_frame_num181.epil = getelementptr inbounds i8, ptr %73, i64 68, !dbg !2442
  %74 = load i32, ptr %i_frame_num181.epil, align 4, !dbg !2442
  %and182.epil = shl i32 %74, 1, !dbg !2443
  %shl183.epil = and i32 %and182.epil, 126, !dbg !2443
  %and184.epil = and i32 %72, 1, !dbg !2444
  %add185.epil = or disjoint i32 %shl183.epil, %and184.epil, !dbg !2445
  %conv186.epil = trunc nuw nsw i32 %add185.epil to i8, !dbg !2446
  %75 = add nuw nsw i64 %indvars.iv347.unr, 2, !dbg !2447
  %arrayidx191.epil = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %75, !dbg !2447
  store i8 %conv186.epil, ptr %arrayidx191.epil, align 1, !dbg !2448
    #dbg_value(i64 %indvars.iv347.unr, !2291, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2426)
  br label %for.cond.cleanup164, !dbg !2439

for.cond.cleanup164:                              ; preds = %for.body165.epil, %for.cond.cleanup164.loopexit366.unr-lcssa, %for.body165.us.epil, %for.cond.cleanup164.loopexit.unr-lcssa, %if.end151
  %arrayidx204 = getelementptr inbounds i8, ptr %h, i64 16544, !dbg !2439
  store i32 15, ptr %arrayidx204, align 4, !dbg !2449
  %arrayidx207 = getelementptr inbounds i8, ptr %h, i64 16532, !dbg !2450
  store i32 15, ptr %arrayidx207, align 4, !dbg !2451
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 16504, !dbg !2452
  store i32 11, ptr %arrayidx209, align 4, !dbg !2453
  %arrayidx212 = getelementptr inbounds i8, ptr %h, i64 16568, !dbg !2454
  store i32 11, ptr %arrayidx212, align 4, !dbg !2455
  %arrayidx218 = getelementptr inbounds i8, ptr %h, i64 16552, !dbg !2456
  store <4 x i32> <i32 11, i32 15, i32 11, i32 15>, ptr %arrayidx218, align 4, !dbg !2457
  %arrayidx221 = getelementptr inbounds i8, ptr %h, i64 16536, !dbg !2458
  store i32 11, ptr %arrayidx221, align 4, !dbg !2459
  %arrayidx224 = getelementptr inbounds i8, ptr %h, i64 16520, !dbg !2460
  store i32 11, ptr %arrayidx224, align 4, !dbg !2461
  ret void, !dbg !2462

for.body165:                                      ; preds = %for.body165, %for.body165.preheader.new
  %indvars.iv347 = phi i64 [ 0, %for.body165.preheader.new ], [ %indvars.iv.next348.1, %for.body165 ]
  %niter = phi i64 [ 0, %for.body165.preheader.new ], [ %niter.next.1, %for.body165 ]
    #dbg_value(i64 %indvars.iv347, !2291, !DIExpression(), !2426)
  %shr = lshr exact i64 %indvars.iv347, 1, !dbg !2440
  %idxprom179 = and i64 %shr, 2147483647, !dbg !2441
  %arrayidx180 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179, !dbg !2441
  %76 = load ptr, ptr %arrayidx180, align 8, !dbg !2441
  %i_frame_num181 = getelementptr inbounds i8, ptr %76, i64 68, !dbg !2442
  %77 = load i32, ptr %i_frame_num181, align 4, !dbg !2442
  %.tr = trunc i32 %77 to i8, !dbg !2446
  %78 = shl i8 %.tr, 1, !dbg !2446
  %conv186 = and i8 %78, 126, !dbg !2446
  %79 = add nuw nsw i64 %indvars.iv347, 2, !dbg !2447
  %arrayidx191 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %79, !dbg !2447
  store i8 %conv186, ptr %arrayidx191, align 1, !dbg !2448
    #dbg_value(i64 %indvars.iv347, !2291, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2426)
  %shr.1 = lshr exact i64 %indvars.iv347, 1, !dbg !2440
  %idxprom179.1 = and i64 %shr.1, 2147483647, !dbg !2441
  %arrayidx180.1 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179.1, !dbg !2441
  %80 = load ptr, ptr %arrayidx180.1, align 8, !dbg !2441
  %i_frame_num181.1 = getelementptr inbounds i8, ptr %80, i64 68, !dbg !2442
  %81 = load i32, ptr %i_frame_num181.1, align 4, !dbg !2442
  %.tr373 = trunc i32 %81 to i8, !dbg !2446
  %82 = shl i8 %.tr373, 1, !dbg !2446
  %83 = and i8 %82, 126, !dbg !2446
  %conv186.1 = or disjoint i8 %83, 1, !dbg !2446
  %84 = add nuw nsw i64 %indvars.iv347, 3, !dbg !2447
  %arrayidx191.1 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %84, !dbg !2447
  store i8 %conv186.1, ptr %arrayidx191.1, align 1, !dbg !2448
  %indvars.iv.next348.1 = add nuw nsw i64 %indvars.iv347, 2, !dbg !2436
    #dbg_value(i64 %indvars.iv.next348.1, !2291, !DIExpression(), !2426)
  %niter.next.1 = add i64 %niter, 2, !dbg !2429
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2429
  br i1 %niter.ncmp.1, label %for.cond.cleanup164.loopexit366.unr-lcssa, label %for.body165, !dbg !2429, !llvm.loop !2437
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_macroblock_thread_init(ptr noundef %h) local_unnamed_addr #5 !dbg !2463 {
entry:
    #dbg_value(ptr %h, !2465, !DIExpression(), !2466)
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412, !dbg !2467
  %0 = load i32, ptr %i_me_method, align 4, !dbg !2467
  %i_me_method1 = getelementptr inbounds i8, ptr %h, i64 16404, !dbg !2468
  store i32 %0, ptr %i_me_method1, align 4, !dbg !2469
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428, !dbg !2470
  %1 = load i32, ptr %i_subpel_refine, align 4, !dbg !2470
  %i_subpel_refine5 = getelementptr inbounds i8, ptr %h, i64 16408, !dbg !2471
  store i32 %1, ptr %i_subpel_refine5, align 8, !dbg !2472
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !2473
  %2 = load i32, ptr %i_type, align 16, !dbg !2473
  %cmp = icmp eq i32 %2, 1, !dbg !2475
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2476

land.lhs.true:                                    ; preds = %entry
  switch i32 %1, label %land.end.thread120 [
    i32 6, label %if.then
    i32 8, label %if.then
  ], !dbg !2477

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %dec = add nsw i32 %1, -1, !dbg !2478
  store i32 %dec, ptr %i_subpel_refine5, align 8, !dbg !2478
  br label %land.end.thread120, !dbg !2479

land.end.thread120:                               ; preds = %if.then, %land.lhs.true
  %b_chroma_me24121 = getelementptr inbounds i8, ptr %h, i64 16412, !dbg !2480
  store i32 0, ptr %b_chroma_me24121, align 4, !dbg !2481
  br label %lor.end, !dbg !2482

if.end:                                           ; preds = %entry
  %b_chroma_me = getelementptr inbounds i8, ptr %h, i64 432, !dbg !2483
  %3 = load i32, ptr %b_chroma_me, align 16, !dbg !2483
  %tobool.not = icmp ne i32 %3, 0, !dbg !2484
  %cmp19 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp19, %tobool.not, !dbg !2485
  %cmp22 = icmp sgt i32 %1, 4, !dbg !2485
  %narrow = select i1 %or.cond, i1 %cmp22, i1 false, !dbg !2485
  %.sink = zext i1 %narrow to i32, !dbg !2485
  %b_chroma_me24 = getelementptr inbounds i8, ptr %h, i64 16412, !dbg !2480
  store i32 %.sink, ptr %b_chroma_me24, align 4, !dbg !2481
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 448, !dbg !2486
  %4 = load i32, ptr %b_dct_decimate, align 16, !dbg !2486
  %tobool30.not = icmp eq i32 %4, 0, !dbg !2487
  br i1 %tobool30.not, label %lor.end, label %land.rhs31, !dbg !2488

land.rhs31:                                       ; preds = %if.end
  %cmp34 = icmp ne i32 %2, 2, !dbg !2489
  %5 = zext i1 %cmp34 to i32, !dbg !2482
  br label %lor.end

lor.end:                                          ; preds = %land.end.thread120, %if.end, %land.rhs31
  %lor.ext = phi i32 [ 0, %if.end ], [ %5, %land.rhs31 ], [ 1, %land.end.thread120 ]
  %b_dct_decimate38 = getelementptr inbounds i8, ptr %h, i64 16424, !dbg !2490
  store i32 %lor.ext, ptr %b_dct_decimate38, align 8, !dbg !2491
  %pic = getelementptr inbounds i8, ptr %h, i64 17440, !dbg !2492
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !2493
  store ptr %pic, ptr %p_fenc, align 16, !dbg !2494
  %add.ptr = getelementptr inbounds i8, ptr %h, i64 17696, !dbg !2495
  %arrayidx49 = getelementptr inbounds i8, ptr %h, i64 21352, !dbg !2496
  store ptr %add.ptr, ptr %arrayidx49, align 8, !dbg !2497
  %add.ptr55 = getelementptr inbounds i8, ptr %h, i64 17704, !dbg !2498
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 21360, !dbg !2499
  store ptr %add.ptr55, ptr %arrayidx59, align 16, !dbg !2500
  %add.ptr63 = getelementptr inbounds i8, ptr %h, i64 17888, !dbg !2501
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2502
  store ptr %add.ptr63, ptr %p_fdec, align 16, !dbg !2503
  %add.ptr71 = getelementptr inbounds i8, ptr %h, i64 18432, !dbg !2504
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2505
  store ptr %add.ptr71, ptr %arrayidx75, align 8, !dbg !2506
  %add.ptr81 = getelementptr inbounds i8, ptr %h, i64 18448, !dbg !2507
  %arrayidx85 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2508
  store ptr %add.ptr81, ptr %arrayidx85, align 16, !dbg !2509
  ret void, !dbg !2510
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_prefetch_fenc(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %fenc, i32 noundef %i_mb_x, i32 noundef %i_mb_y) local_unnamed_addr #0 !dbg !2511 {
entry:
    #dbg_value(ptr %h, !2515, !DIExpression(), !2523)
    #dbg_value(ptr %fenc, !2516, !DIExpression(), !2523)
    #dbg_value(i32 %i_mb_x, !2517, !DIExpression(), !2523)
    #dbg_value(i32 %i_mb_y, !2518, !DIExpression(), !2523)
  %i_stride = getelementptr inbounds i8, ptr %fenc, i64 104, !dbg !2524
  %0 = load i32, ptr %i_stride, align 8, !dbg !2525
    #dbg_value(i32 %0, !2519, !DIExpression(), !2523)
  %arrayidx2 = getelementptr inbounds i8, ptr %fenc, i64 108, !dbg !2526
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !2526
    #dbg_value(i32 %1, !2520, !DIExpression(), !2523)
  %mul = mul nsw i32 %0, %i_mb_y, !dbg !2527
  %add = add nsw i32 %mul, %i_mb_x, !dbg !2528
  %mul3 = shl nsw i32 %add, 4, !dbg !2529
    #dbg_value(i32 %mul3, !2521, !DIExpression(), !2523)
  %mul4 = mul nsw i32 %1, %i_mb_y, !dbg !2530
  %add5 = add nsw i32 %mul4, %i_mb_x, !dbg !2531
  %mul6 = shl nsw i32 %add5, 3, !dbg !2532
    #dbg_value(i32 %mul6, !2522, !DIExpression(), !2523)
  %prefetch_fenc = getelementptr inbounds i8, ptr %h, i64 32800, !dbg !2533
  %2 = load ptr, ptr %prefetch_fenc, align 8, !dbg !2533
  %plane = getelementptr inbounds i8, ptr %fenc, i64 152, !dbg !2534
  %3 = load ptr, ptr %plane, align 8, !dbg !2535
  %idx.ext = sext i32 %mul3 to i64, !dbg !2536
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext, !dbg !2536
  %and = and i32 %i_mb_x, 1, !dbg !2537
  %add9 = add nuw nsw i32 %and, 1, !dbg !2538
  %idxprom = zext nneg i32 %add9 to i64, !dbg !2539
  %arrayidx10 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %idxprom, !dbg !2539
  %4 = load ptr, ptr %arrayidx10, align 8, !dbg !2539
  %idx.ext11 = sext i32 %mul6 to i64, !dbg !2540
  %add.ptr12 = getelementptr inbounds i8, ptr %4, i64 %idx.ext11, !dbg !2540
  tail call void %2(ptr noundef %add.ptr, i32 noundef %0, ptr noundef %add.ptr12, i32 noundef %1, i32 noundef %i_mb_x) #13, !dbg !2541
  ret void, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_load(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #0 !dbg !2543 {
entry:
    #dbg_value(ptr %h, !2547, !DIExpression(), !2599)
    #dbg_value(i32 %mb_x, !2548, !DIExpression(), !2599)
    #dbg_value(i32 %mb_y, !2549, !DIExpression(), !2599)
    #dbg_value(ptr %h, !2600, !DIExpression(), !2606)
    #dbg_value(i32 %mb_x, !2603, !DIExpression(), !2606)
    #dbg_value(i32 %mb_y, !2604, !DIExpression(), !2606)
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2608
  %0 = load i32, ptr %b_interlaced.i, align 4, !dbg !2608
  %shl.neg.i = shl nsw i32 -1, %0, !dbg !2609
  %sub.i = add i32 %shl.neg.i, %mb_y, !dbg !2610
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !2611
  %1 = load i32, ptr %i_mb_stride.i, align 4, !dbg !2611
  %mul.i = mul nsw i32 %sub.i, %1, !dbg !2612
  %add.i = add nsw i32 %mul.i, %mb_x, !dbg !2613
    #dbg_value(i32 %add.i, !2605, !DIExpression(), !2606)
  %i_mb_x.i = getelementptr inbounds i8, ptr %h, i64 16384, !dbg !2614
  store i32 %mb_x, ptr %i_mb_x.i, align 16, !dbg !2615
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !2616
  store i32 %mb_y, ptr %i_mb_y.i, align 4, !dbg !2617
  %mul6.i = mul nsw i32 %1, %mb_y, !dbg !2618
  %add7.i = add nsw i32 %mul6.i, %mb_x, !dbg !2619
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2620
  store i32 %add7.i, ptr %i_mb_xy.i, align 8, !dbg !2621
  %i_b8_stride.i = getelementptr inbounds i8, ptr %h, i64 16376, !dbg !2622
  %2 = load i32, ptr %i_b8_stride.i, align 8, !dbg !2622
  %mul10.i = mul nsw i32 %2, %mb_y, !dbg !2623
  %add11.i = add nsw i32 %mul10.i, %mb_x, !dbg !2624
  %mul12.i = shl nsw i32 %add11.i, 1, !dbg !2625
  %i_b8_xy.i = getelementptr inbounds i8, ptr %h, i64 16396, !dbg !2626
  store i32 %mul12.i, ptr %i_b8_xy.i, align 4, !dbg !2627
  %i_b4_stride.i = getelementptr inbounds i8, ptr %h, i64 16380, !dbg !2628
  %3 = load i32, ptr %i_b4_stride.i, align 4, !dbg !2628
  %mul15.i = mul nsw i32 %3, %mb_y, !dbg !2629
  %add16.i = add nsw i32 %mul15.i, %mb_x, !dbg !2630
  %mul17.i = shl nsw i32 %add16.i, 2, !dbg !2631
  %i_b4_xy.i = getelementptr inbounds i8, ptr %h, i64 16400, !dbg !2632
  store i32 %mul17.i, ptr %i_b4_xy.i, align 16, !dbg !2633
  %i_neighbour.i = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !2634
  store i32 0, ptr %i_neighbour.i, align 8, !dbg !2635
  %i_neighbour_intra.i = getelementptr inbounds i8, ptr %h, i64 16572, !dbg !2636
  store i32 0, ptr %i_neighbour_intra.i, align 4, !dbg !2637
  %i_neighbour_frame.i = getelementptr inbounds i8, ptr %h, i64 16576, !dbg !2638
  store i32 0, ptr %i_neighbour_frame.i, align 16, !dbg !2639
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !2640
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !2641
  %i_mb_topleft_xy.i = getelementptr inbounds i8, ptr %h, i64 16608, !dbg !2642
  %i_mb_topright_xy.i = getelementptr inbounds i8, ptr %h, i64 16612, !dbg !2643
  %i_mb_type_top.i = getelementptr inbounds i8, ptr %h, i64 16580, !dbg !2644
  %i_mb_type_topleft.i = getelementptr inbounds i8, ptr %h, i64 16588, !dbg !2645
  %i_mb_type_topright.i = getelementptr inbounds i8, ptr %h, i64 16592, !dbg !2646
  %cmp.i = icmp sgt i32 %mb_x, 0, !dbg !2647
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i_mb_type_top.i, i8 -1, i64 16, i1 false), !dbg !2649
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i_mb_left_xy.i, i8 -1, i64 16, i1 false), !dbg !2650
  br i1 %cmp.i, label %if.then.i, label %if.end74.i, !dbg !2651

if.then.i:                                        ; preds = %entry
  %i_mb_type_left.i = getelementptr inbounds i8, ptr %h, i64 16584, !dbg !2652
  store i32 1, ptr %i_neighbour_frame.i, align 16, !dbg !2653
  %sub34.i = add nsw i32 %add7.i, -1, !dbg !2655
  store i32 %sub34.i, ptr %i_mb_left_xy.i, align 8, !dbg !2656
  %type.i = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !2657
  %4 = load ptr, ptr %type.i, align 8, !dbg !2657
  %idxprom.i = sext i32 %sub34.i to i64, !dbg !2658
  %arrayidx.i = getelementptr inbounds i8, ptr %4, i64 %idxprom.i, !dbg !2658
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !2658
  %conv.i = sext i8 %5 to i32, !dbg !2658
  store i32 %conv.i, ptr %i_mb_type_left.i, align 8, !dbg !2659
  %i_first_mb.i = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !2660
  %6 = load i32, ptr %i_first_mb.i, align 4, !dbg !2660
  %cmp44.i = icmp sgt i32 %add7.i, %6, !dbg !2662
  br i1 %cmp44.i, label %if.then46.i, label %if.end74.i, !dbg !2663

if.then46.i:                                      ; preds = %if.then.i
  store i32 1, ptr %i_neighbour.i, align 8, !dbg !2664
  %b_constrained_intra.i = getelementptr inbounds i8, ptr %h, i64 140, !dbg !2666
  %7 = load i32, ptr %b_constrained_intra.i, align 4, !dbg !2666
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !2668
  %switch.i = icmp ult i8 %5, 4
  %or.cond394.i = select i1 %tobool.not.i, i1 true, i1 %switch.i, !dbg !2669
  br i1 %or.cond394.i, label %if.then69.i, label %if.end74.i, !dbg !2669

if.then69.i:                                      ; preds = %if.then46.i
  store i32 1, ptr %i_neighbour_intra.i, align 4, !dbg !2670
  br label %if.end74.i, !dbg !2671

if.end74.i:                                       ; preds = %if.then69.i, %if.then46.i, %if.then.i, %entry
  %8 = phi i32 [ %sub34.i, %if.then46.i ], [ %sub34.i, %if.then.i ], [ %sub34.i, %if.then69.i ], [ -1, %entry ]
  %9 = phi i32 [ 0, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %10 = phi i32 [ 1, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %11 = phi i32 [ 1, %if.then46.i ], [ 1, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %i_threadslice_start.i = getelementptr inbounds i8, ptr %h, i64 1748, !dbg !2672
  %12 = load i32, ptr %i_threadslice_start.i, align 4, !dbg !2672
  %shr.i = ashr i32 %12, %0, !dbg !2674
  %shr79.i = ashr i32 %mb_y, %0, !dbg !2675
  %cmp80.not.i = icmp eq i32 %shr.i, %shr79.i, !dbg !2676
  br i1 %cmp80.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then82.i, !dbg !2677

if.then82.i:                                      ; preds = %if.end74.i
  %cmp83.i = icmp sgt i32 %add.i, -1, !dbg !2678
  br i1 %cmp83.i, label %if.then85.i, label %if.end213.i, !dbg !2681

if.then85.i:                                      ; preds = %if.then82.i
  %or88.i = or disjoint i32 %11, 2, !dbg !2682
  store i32 %or88.i, ptr %i_neighbour_frame.i, align 16, !dbg !2682
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4, !dbg !2684
  %type92.i = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !2685
  %13 = load ptr, ptr %type92.i, align 8, !dbg !2685
  %idxprom95.i = zext nneg i32 %add.i to i64, !dbg !2686
  %arrayidx96.i = getelementptr inbounds i8, ptr %13, i64 %idxprom95.i, !dbg !2686
  %14 = load i8, ptr %arrayidx96.i, align 1, !dbg !2686
  %conv97.i = sext i8 %14 to i32, !dbg !2686
  store i32 %conv97.i, ptr %i_mb_type_top.i, align 4, !dbg !2687
  %i_first_mb101.i = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !2688
  %15 = load i32, ptr %i_first_mb101.i, align 4, !dbg !2688
  %cmp102.not.i = icmp slt i32 %add.i, %15, !dbg !2690
  br i1 %cmp102.not.i, label %if.end153.i, label %if.then104.i, !dbg !2691

if.then104.i:                                     ; preds = %if.then85.i
  %or107.i = or disjoint i32 %10, 2, !dbg !2692
  store i32 %or107.i, ptr %i_neighbour.i, align 8, !dbg !2692
  %b_constrained_intra109.i = getelementptr inbounds i8, ptr %h, i64 140, !dbg !2694
  %16 = load i32, ptr %b_constrained_intra109.i, align 4, !dbg !2694
  %tobool110.not.i = icmp eq i32 %16, 0, !dbg !2696
  %switch389.i = icmp ult i8 %14, 4
  %or.cond395.i = select i1 %tobool110.not.i, i1 true, i1 %switch389.i, !dbg !2697
  br i1 %or.cond395.i, label %if.then131.i, label %if.end135.i, !dbg !2697

if.then131.i:                                     ; preds = %if.then104.i
  %or134.i = or disjoint i32 %9, 2, !dbg !2698
  store i32 %or134.i, ptr %i_neighbour_intra.i, align 4, !dbg !2698
  br label %if.end135.i, !dbg !2699

if.end135.i:                                      ; preds = %if.then131.i, %if.then104.i
  %17 = phi i32 [ %9, %if.then104.i ], [ %or134.i, %if.then131.i ]
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !2700
  %18 = load ptr, ptr %cbp.i, align 16, !dbg !2700
  %arrayidx138.i = getelementptr inbounds i16, ptr %18, i64 %idxprom95.i, !dbg !2700
  tail call void @llvm.prefetch.p0(ptr %arrayidx138.i, i32 0, i32 3, i32 1), !dbg !2700
  %intra4x4_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 16648, !dbg !2701
  %19 = load ptr, ptr %intra4x4_pred_mode.i, align 8, !dbg !2701
  %arrayidx141.i = getelementptr inbounds [8 x i8], ptr %19, i64 %idxprom95.i, !dbg !2701
  tail call void @llvm.prefetch.p0(ptr %arrayidx141.i, i32 0, i32 3, i32 1), !dbg !2701
  %non_zero_count.i = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !2702
  %20 = load ptr, ptr %non_zero_count.i, align 16, !dbg !2702
  %arrayidx145.i = getelementptr inbounds [24 x i8], ptr %20, i64 %idxprom95.i, i64 12, !dbg !2702
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx145.i, i32 0, i32 3, i32 1), !dbg !2702
  %mb_transform_size.i = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !2703
  %21 = load ptr, ptr %mb_transform_size.i, align 8, !dbg !2703
  %arrayidx148.i = getelementptr inbounds i8, ptr %21, i64 %idxprom95.i, !dbg !2703
  tail call void @llvm.prefetch.p0(ptr %arrayidx148.i, i32 0, i32 3, i32 1), !dbg !2703
  %skipbp.i = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !2704
  %22 = load ptr, ptr %skipbp.i, align 16, !dbg !2704
  %arrayidx151.i = getelementptr inbounds i8, ptr %22, i64 %idxprom95.i, !dbg !2704
  tail call void @llvm.prefetch.p0(ptr %arrayidx151.i, i32 0, i32 3, i32 1), !dbg !2704
  br label %if.end153.i, !dbg !2705

if.end153.i:                                      ; preds = %if.end135.i, %if.then85.i
  %23 = phi i32 [ %9, %if.then85.i ], [ %17, %if.end135.i ]
  %24 = phi i32 [ %10, %if.then85.i ], [ %or107.i, %if.end135.i ]
  %cmp157.i = icmp ne i32 %add.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp157.i, i1 false, !dbg !2706
  br i1 %or.cond.i, label %if.then159.i, label %if.end213.i, !dbg !2706

if.then159.i:                                     ; preds = %if.end153.i
  %sub156.i = add nsw i32 %add.i, -1, !dbg !2708
  %or162.i = or disjoint i32 %11, 10, !dbg !2709
  store i32 %or162.i, ptr %i_neighbour_frame.i, align 16, !dbg !2709
  store i32 %sub156.i, ptr %i_mb_topleft_xy.i, align 16, !dbg !2711
  %idxprom170.i = zext nneg i32 %sub156.i to i64, !dbg !2712
  %arrayidx171.i = getelementptr inbounds i8, ptr %13, i64 %idxprom170.i, !dbg !2712
  %25 = load i8, ptr %arrayidx171.i, align 1, !dbg !2712
  %conv172.i = sext i8 %25 to i32, !dbg !2712
  store i32 %conv172.i, ptr %i_mb_type_topleft.i, align 4, !dbg !2713
  %cmp178.not.not.i = icmp sgt i32 %add.i, %15, !dbg !2714
  br i1 %cmp178.not.not.i, label %if.then180.i, label %if.end213.i, !dbg !2716

if.then180.i:                                     ; preds = %if.then159.i
  %or183.i = or i32 %24, 8, !dbg !2717
  store i32 %or183.i, ptr %i_neighbour.i, align 8, !dbg !2717
  %b_constrained_intra185.i = getelementptr inbounds i8, ptr %h, i64 140, !dbg !2719
  %26 = load i32, ptr %b_constrained_intra185.i, align 4, !dbg !2719
  %tobool186.not.i = icmp eq i32 %26, 0, !dbg !2721
  %switch390.i = icmp ult i8 %25, 4
  %or.cond396.i = select i1 %tobool186.not.i, i1 true, i1 %switch390.i, !dbg !2722
  br i1 %or.cond396.i, label %if.then207.i, label %if.end213.i, !dbg !2722

if.then207.i:                                     ; preds = %if.then180.i
  %or210.i = or i32 %23, 8, !dbg !2723
  store i32 %or210.i, ptr %i_neighbour_intra.i, align 4, !dbg !2723
  br label %if.end213.i, !dbg !2724

if.end213.i:                                      ; preds = %if.then207.i, %if.then180.i, %if.then159.i, %if.end153.i, %if.then82.i
  %27 = phi i32 [ %add.i, %if.then180.i ], [ -1, %if.then82.i ], [ %add.i, %if.then159.i ], [ %add.i, %if.then207.i ], [ %add.i, %if.end153.i ]
  %28 = phi i32 [ %23, %if.then180.i ], [ %9, %if.then82.i ], [ %23, %if.then159.i ], [ %or210.i, %if.then207.i ], [ %23, %if.end153.i ]
  %29 = phi i32 [ %or183.i, %if.then180.i ], [ %10, %if.then82.i ], [ %24, %if.then159.i ], [ %or183.i, %if.then207.i ], [ %24, %if.end153.i ]
  %30 = phi i32 [ %or162.i, %if.then180.i ], [ %11, %if.then82.i ], [ %or162.i, %if.then159.i ], [ %or162.i, %if.then207.i ], [ %or88.i, %if.end153.i ]
  %sps.i = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !2725
  %31 = load ptr, ptr %sps.i, align 16, !dbg !2725
  %i_mb_width.i = getelementptr inbounds i8, ptr %31, i64 1084, !dbg !2727
  %32 = load i32, ptr %i_mb_width.i, align 4, !dbg !2727
  %sub214.i = add nsw i32 %32, -1, !dbg !2728
  %cmp215.i = icmp sgt i32 %sub214.i, %mb_x, !dbg !2729
  %cmp219.i = icmp sgt i32 %add.i, -2
  %or.cond388.i = select i1 %cmp215.i, i1 %cmp219.i, i1 false, !dbg !2730
  br i1 %or.cond388.i, label %if.then221.i, label %x264_macroblock_cache_load_neighbours.exit, !dbg !2730

if.then221.i:                                     ; preds = %if.end213.i
  %add218.i = add nsw i32 %add.i, 1, !dbg !2731
  %or224.i = or i32 %30, 4, !dbg !2732
  store i32 %or224.i, ptr %i_neighbour_frame.i, align 16, !dbg !2732
  store i32 %add218.i, ptr %i_mb_topright_xy.i, align 4, !dbg !2734
  %type229.i = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !2735
  %33 = load ptr, ptr %type229.i, align 8, !dbg !2735
  %idxprom232.i = zext nneg i32 %add218.i to i64, !dbg !2736
  %arrayidx233.i = getelementptr inbounds i8, ptr %33, i64 %idxprom232.i, !dbg !2736
  %34 = load i8, ptr %arrayidx233.i, align 1, !dbg !2736
  %conv234.i = sext i8 %34 to i32, !dbg !2736
  store i32 %conv234.i, ptr %i_mb_type_topright.i, align 16, !dbg !2737
  %i_first_mb239.i = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !2738
  %35 = load i32, ptr %i_first_mb239.i, align 4, !dbg !2738
  %cmp240.not.i = icmp slt i32 %add218.i, %35, !dbg !2740
  br i1 %cmp240.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then242.i, !dbg !2741

if.then242.i:                                     ; preds = %if.then221.i
  %or245.i = or i32 %29, 4, !dbg !2742
  store i32 %or245.i, ptr %i_neighbour.i, align 8, !dbg !2742
  %b_constrained_intra247.i = getelementptr inbounds i8, ptr %h, i64 140, !dbg !2744
  %36 = load i32, ptr %b_constrained_intra247.i, align 4, !dbg !2744
  %tobool248.not.i = icmp eq i32 %36, 0, !dbg !2746
  %switch391.i = icmp ult i8 %34, 4
  %or.cond397.i = select i1 %tobool248.not.i, i1 true, i1 %switch391.i, !dbg !2747
  br i1 %or.cond397.i, label %if.then269.i, label %x264_macroblock_cache_load_neighbours.exit, !dbg !2747

if.then269.i:                                     ; preds = %if.then242.i
  %or272.i = or i32 %28, 4, !dbg !2748
  store i32 %or272.i, ptr %i_neighbour_intra.i, align 4, !dbg !2748
  br label %x264_macroblock_cache_load_neighbours.exit, !dbg !2749

x264_macroblock_cache_load_neighbours.exit:       ; preds = %if.end74.i, %if.end213.i, %if.then221.i, %if.then242.i, %if.then269.i
  %37 = phi i32 [ %10, %if.end74.i ], [ %29, %if.end213.i ], [ %29, %if.then221.i ], [ %or245.i, %if.then242.i ], [ %or245.i, %if.then269.i ], !dbg !2750
  %38 = phi i32 [ -1, %if.end74.i ], [ %27, %if.end213.i ], [ %27, %if.then221.i ], [ %27, %if.then242.i ], [ %27, %if.then269.i ], !dbg !2752
    #dbg_value(i32 %8, !2550, !DIExpression(), !2599)
    #dbg_value(i32 %38, !2551, !DIExpression(), !2599)
    #dbg_value(i32 %sub.i, !2552, !DIExpression(), !2599)
  %mul = shl nsw i32 %sub.i, 1, !dbg !2753
  %add = or disjoint i32 %mul, 1, !dbg !2754
  %mul4 = mul nsw i32 %2, %add, !dbg !2755
  %mul5 = shl nsw i32 %mb_x, 1, !dbg !2756
  %add6 = add nsw i32 %mul4, %mul5, !dbg !2757
    #dbg_value(i32 %add6, !2553, !DIExpression(), !2599)
  %mul7 = shl nsw i32 %sub.i, 2, !dbg !2758
  %add8 = or disjoint i32 %mul7, 3, !dbg !2759
  %mul10 = mul nsw i32 %3, %add8, !dbg !2760
  %mul11 = shl nsw i32 %mb_x, 2, !dbg !2761
  %add12 = add nsw i32 %mul10, %mul11, !dbg !2762
    #dbg_value(i32 %add12, !2554, !DIExpression(), !2599)
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648, !dbg !2763
  %39 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !2763
    #dbg_value(ptr %39, !2555, !DIExpression(), !2599)
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !2764
  %40 = load ptr, ptr %non_zero_count, align 16, !dbg !2764
    #dbg_value(ptr %40, !2556, !DIExpression(), !2599)
  %cbp16 = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !2765
  %41 = load ptr, ptr %cbp16, align 16, !dbg !2765
    #dbg_value(ptr %41, !2557, !DIExpression(), !2599)
  %and = and i32 %37, 2, !dbg !2766
  %tobool.not = icmp eq i32 %and, 0, !dbg !2766
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2767

if.then:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %idxprom = sext i32 %38 to i64, !dbg !2768
  %arrayidx = getelementptr inbounds i16, ptr %41, i64 %idxprom, !dbg !2768
  %42 = load i16, ptr %arrayidx, align 2, !dbg !2768
  %conv = sext i16 %42 to i32, !dbg !2768
  %i_cbp_top = getelementptr inbounds i8, ptr %h, i64 25776, !dbg !2770
  store i32 %conv, ptr %i_cbp_top, align 16, !dbg !2771
  %arrayidx20 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom, !dbg !2772
  %43 = load i32, ptr %arrayidx20, align 4, !dbg !2772
  %arrayidx27 = getelementptr inbounds i8, ptr %h, i64 25028, !dbg !2772
  store i32 %43, ptr %arrayidx27, align 1, !dbg !2772
  %arrayidx29 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom, !dbg !2773
  %arrayidx30 = getelementptr inbounds i8, ptr %arrayidx29, i64 12, !dbg !2773
  %44 = load i32, ptr %arrayidx30, align 4, !dbg !2773
  %non_zero_count33 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !2773
  %arrayidx36 = getelementptr inbounds i8, ptr %h, i64 25076, !dbg !2773
  store i32 %44, ptr %arrayidx36, align 1, !dbg !2773
  %arrayidx39 = getelementptr inbounds i8, ptr %arrayidx29, i64 18, !dbg !2774
  %45 = load i16, ptr %arrayidx39, align 2, !dbg !2774
  %conv40 = zext i16 %45 to i32, !dbg !2774
  %shl41 = shl nuw nsw i32 %conv40, 8, !dbg !2775
  store i32 %shl41, ptr %non_zero_count33, align 1, !dbg !2776
  %arrayidx50 = getelementptr inbounds i8, ptr %arrayidx29, i64 22, !dbg !2777
  %46 = load i16, ptr %arrayidx50, align 2, !dbg !2777
  %conv51 = zext i16 %46 to i32, !dbg !2777
  %shl52 = shl nuw nsw i32 %conv51, 8, !dbg !2778
  br label %if.end, !dbg !2779

if.else:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %i_cbp_top61 = getelementptr inbounds i8, ptr %h, i64 25776, !dbg !2780
  store i32 -1, ptr %i_cbp_top61, align 16, !dbg !2782
  %arrayidx67 = getelementptr inbounds i8, ptr %h, i64 25028, !dbg !2783
  store i32 -1, ptr %arrayidx67, align 1, !dbg !2784
  %non_zero_count70 = getelementptr inbounds i8, ptr %h, i64 25072, !dbg !2785
  %arrayidx73 = getelementptr inbounds i8, ptr %h, i64 25076, !dbg !2785
  store i32 -2139062144, ptr %arrayidx73, align 1, !dbg !2786
  store i32 -2139062144, ptr %non_zero_count70, align 1, !dbg !2787
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl52.sink = phi i32 [ -2139062144, %if.else ], [ %shl52, %if.then ], !dbg !2788
  %47 = getelementptr inbounds i8, ptr %h, i64 25096, !dbg !2788
  store i32 %shl52.sink, ptr %47, align 1, !dbg !2788
  %and88 = and i32 %37, 1, !dbg !2789
  %tobool89.not = icmp eq i32 %and88, 0, !dbg !2789
  br i1 %tobool89.not, label %if.end314.thread1466, label %if.then90, !dbg !2790

if.then90:                                        ; preds = %if.end
  %idxprom91 = sext i32 %8 to i64, !dbg !2791
  %arrayidx92 = getelementptr inbounds i16, ptr %41, i64 %idxprom91, !dbg !2791
  %48 = load i16, ptr %arrayidx92, align 2, !dbg !2791
  %conv93 = sext i16 %48 to i32, !dbg !2791
  %i_cbp_left = getelementptr inbounds i8, ptr %h, i64 25780, !dbg !2792
  store i32 %conv93, ptr %i_cbp_left, align 4, !dbg !2793
  %arrayidx97 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91, !dbg !2794
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx97, i64 4, !dbg !2794
  %49 = load i8, ptr %arrayidx98, align 1, !dbg !2794
  %arrayidx104 = getelementptr inbounds i8, ptr %h, i64 25035, !dbg !2795
  store i8 %49, ptr %arrayidx104, align 1, !dbg !2796
  %arrayidx107 = getelementptr inbounds i8, ptr %arrayidx97, i64 5, !dbg !2797
  %50 = load i8, ptr %arrayidx107, align 1, !dbg !2797
  %arrayidx113 = getelementptr inbounds i8, ptr %h, i64 25043, !dbg !2798
  store i8 %50, ptr %arrayidx113, align 1, !dbg !2799
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx97, i64 6, !dbg !2800
  %51 = load i8, ptr %arrayidx116, align 1, !dbg !2800
  %arrayidx122 = getelementptr inbounds i8, ptr %h, i64 25051, !dbg !2801
  store i8 %51, ptr %arrayidx122, align 1, !dbg !2802
  %arrayidx125 = getelementptr inbounds i8, ptr %arrayidx97, i64 3, !dbg !2803
  %52 = load i8, ptr %arrayidx125, align 1, !dbg !2803
  %arrayidx131 = getelementptr inbounds i8, ptr %h, i64 25059, !dbg !2804
  store i8 %52, ptr %arrayidx131, align 1, !dbg !2805
  %arrayidx133 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, !dbg !2806
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx133, i64 3, !dbg !2806
  %53 = load i8, ptr %arrayidx134, align 1, !dbg !2806
  %arrayidx140 = getelementptr inbounds i8, ptr %h, i64 25083, !dbg !2807
  store i8 %53, ptr %arrayidx140, align 1, !dbg !2808
  %arrayidx143 = getelementptr inbounds i8, ptr %arrayidx133, i64 7, !dbg !2809
  %54 = load i8, ptr %arrayidx143, align 1, !dbg !2809
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 25091, !dbg !2810
  store i8 %54, ptr %arrayidx149, align 1, !dbg !2811
  %arrayidx152 = getelementptr inbounds i8, ptr %arrayidx133, i64 11, !dbg !2812
  %55 = load i8, ptr %arrayidx152, align 1, !dbg !2812
  %arrayidx158 = getelementptr inbounds i8, ptr %h, i64 25099, !dbg !2813
  store i8 %55, ptr %arrayidx158, align 1, !dbg !2814
  %arrayidx161 = getelementptr inbounds i8, ptr %arrayidx133, i64 15, !dbg !2815
  %56 = load i8, ptr %arrayidx161, align 1, !dbg !2815
  %arrayidx167 = getelementptr inbounds i8, ptr %h, i64 25107, !dbg !2816
  store i8 %56, ptr %arrayidx167, align 1, !dbg !2817
  %arrayidx170 = getelementptr inbounds i8, ptr %arrayidx133, i64 17, !dbg !2818
  %57 = load i8, ptr %arrayidx170, align 1, !dbg !2818
  %arrayidx176 = getelementptr inbounds i8, ptr %h, i64 25080, !dbg !2819
  store i8 %57, ptr %arrayidx176, align 1, !dbg !2820
  %arrayidx179 = getelementptr inbounds i8, ptr %arrayidx133, i64 19, !dbg !2821
  %58 = load i8, ptr %arrayidx179, align 1, !dbg !2821
  %arrayidx185 = getelementptr inbounds i8, ptr %h, i64 25088, !dbg !2822
  store i8 %58, ptr %arrayidx185, align 1, !dbg !2823
  %arrayidx188 = getelementptr inbounds i8, ptr %arrayidx133, i64 21, !dbg !2824
  %59 = load i8, ptr %arrayidx188, align 1, !dbg !2824
  %arrayidx194 = getelementptr inbounds i8, ptr %h, i64 25104, !dbg !2825
  store i8 %59, ptr %arrayidx194, align 1, !dbg !2826
  %arrayidx197 = getelementptr inbounds i8, ptr %arrayidx133, i64 23, !dbg !2827
  %60 = load i8, ptr %arrayidx197, align 1, !dbg !2827
  %arrayidx203 = getelementptr inbounds i8, ptr %h, i64 25112, !dbg !2828
  store i8 %60, ptr %arrayidx203, align 1, !dbg !2829
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !2830
  %61 = load i32, ptr %i_type, align 16, !dbg !2830
  %cmp.not = icmp eq i32 %61, 2, !dbg !2831
  br i1 %cmp.not, label %if.end314.thread, label %for.cond.preheader, !dbg !2832

for.cond.preheader:                               ; preds = %if.then90
  %62 = sext i32 %add12 to i64
  %63 = sext i32 %add6 to i64
  %idxprom235 = sext i32 %38 to i64
    #dbg_value(i32 0, !2558, !DIExpression(), !2833)
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688
  %ref = getelementptr inbounds i8, ptr %h, i64 16704
  %mv = getelementptr inbounds i8, ptr %h, i64 16672
  %cmp208 = icmp eq i32 %61, 1
    #dbg_value(i64 0, !2558, !DIExpression(), !2833)
  %64 = load ptr, ptr %mv, align 8, !dbg !2834
  %65 = getelementptr [2 x i16], ptr %64, i64 %62, !dbg !2834
  %arrayidx218 = getelementptr i8, ptr %65, i64 -4, !dbg !2834
  tail call void @llvm.prefetch.p0(ptr %arrayidx218, i32 0, i32 3, i32 1), !dbg !2834
  %arrayidx225 = getelementptr i8, ptr %65, i64 16, !dbg !2837
  tail call void @llvm.prefetch.p0(ptr %arrayidx225, i32 0, i32 3, i32 1), !dbg !2837
  %66 = load ptr, ptr %ref, align 8, !dbg !2838
  %67 = getelementptr i8, ptr %66, i64 %63, !dbg !2838
  %arrayidx231 = getelementptr i8, ptr %67, i64 -1, !dbg !2838
  tail call void @llvm.prefetch.p0(ptr %arrayidx231, i32 0, i32 3, i32 1), !dbg !2838
  %68 = load ptr, ptr %mvd, align 8, !dbg !2839
  %arrayidx236 = getelementptr inbounds [8 x [2 x i8]], ptr %68, i64 %idxprom235, !dbg !2839
  tail call void @llvm.prefetch.p0(ptr %arrayidx236, i32 0, i32 3, i32 1), !dbg !2839
    #dbg_value(i64 0, !2558, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2833)
  br i1 %cmp208, label %for.body.1, label %if.end314, !dbg !2840, !llvm.loop !2841

for.body.1:                                       ; preds = %for.cond.preheader
    #dbg_value(i64 1, !2558, !DIExpression(), !2833)
  %arrayidx215.1 = getelementptr inbounds i8, ptr %h, i64 16680, !dbg !2834
  %69 = load ptr, ptr %arrayidx215.1, align 8, !dbg !2834
  %70 = getelementptr [2 x i16], ptr %69, i64 %62, !dbg !2834
  %arrayidx218.1 = getelementptr i8, ptr %70, i64 -4, !dbg !2834
  tail call void @llvm.prefetch.p0(ptr %arrayidx218.1, i32 0, i32 3, i32 1), !dbg !2834
  %arrayidx225.1 = getelementptr i8, ptr %70, i64 16, !dbg !2837
  tail call void @llvm.prefetch.p0(ptr %arrayidx225.1, i32 0, i32 3, i32 1), !dbg !2837
  %arrayidx228.1 = getelementptr inbounds i8, ptr %h, i64 16712, !dbg !2838
  %71 = load ptr, ptr %arrayidx228.1, align 8, !dbg !2838
  %72 = getelementptr i8, ptr %71, i64 %63, !dbg !2838
  %arrayidx231.1 = getelementptr i8, ptr %72, i64 -1, !dbg !2838
  tail call void @llvm.prefetch.p0(ptr %arrayidx231.1, i32 0, i32 3, i32 1), !dbg !2838
  %arrayidx234.1 = getelementptr inbounds i8, ptr %h, i64 16696, !dbg !2839
  %73 = load ptr, ptr %arrayidx234.1, align 8, !dbg !2839
  %arrayidx236.1 = getelementptr inbounds [8 x [2 x i8]], ptr %73, i64 %idxprom235, !dbg !2839
  tail call void @llvm.prefetch.p0(ptr %arrayidx236.1, i32 0, i32 3, i32 1), !dbg !2839
    #dbg_value(i64 1, !2558, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2833)
  br label %if.end314

if.end314:                                        ; preds = %for.body.1, %for.cond.preheader
  %pps = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !2843
  %74 = load ptr, ptr %pps, align 16, !dbg !2843
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %74, i64 60, !dbg !2845
  %75 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !2845
  %tobool315.not = icmp eq i32 %75, 0, !dbg !2846
  br i1 %tobool315.not, label %if.end342, label %land.rhs, !dbg !2847

if.end314.thread1466:                             ; preds = %if.end
  %i_cbp_left241 = getelementptr inbounds i8, ptr %h, i64 25780, !dbg !2848
  store i32 -1, ptr %i_cbp_left241, align 4, !dbg !2850
  %arrayidx247 = getelementptr inbounds i8, ptr %h, i64 25059, !dbg !2851
  store i8 -1, ptr %arrayidx247, align 1, !dbg !2852
  %arrayidx253 = getelementptr inbounds i8, ptr %h, i64 25051, !dbg !2853
  store i8 -1, ptr %arrayidx253, align 1, !dbg !2854
  %arrayidx259 = getelementptr inbounds i8, ptr %h, i64 25043, !dbg !2855
  store i8 -1, ptr %arrayidx259, align 1, !dbg !2856
  %arrayidx265 = getelementptr inbounds i8, ptr %h, i64 25035, !dbg !2857
  store i8 -1, ptr %arrayidx265, align 1, !dbg !2858
  %arrayidx271 = getelementptr inbounds i8, ptr %h, i64 25112, !dbg !2859
  store i8 -128, ptr %arrayidx271, align 1, !dbg !2860
  %arrayidx277 = getelementptr inbounds i8, ptr %h, i64 25104, !dbg !2861
  store i8 -128, ptr %arrayidx277, align 1, !dbg !2862
  %arrayidx283 = getelementptr inbounds i8, ptr %h, i64 25088, !dbg !2863
  store i8 -128, ptr %arrayidx283, align 1, !dbg !2864
  %arrayidx289 = getelementptr inbounds i8, ptr %h, i64 25080, !dbg !2865
  store i8 -128, ptr %arrayidx289, align 1, !dbg !2866
  %arrayidx295 = getelementptr inbounds i8, ptr %h, i64 25107, !dbg !2867
  store i8 -128, ptr %arrayidx295, align 1, !dbg !2868
  %arrayidx301 = getelementptr inbounds i8, ptr %h, i64 25099, !dbg !2869
  store i8 -128, ptr %arrayidx301, align 1, !dbg !2870
  %arrayidx307 = getelementptr inbounds i8, ptr %h, i64 25091, !dbg !2871
  store i8 -128, ptr %arrayidx307, align 1, !dbg !2872
  %arrayidx313 = getelementptr inbounds i8, ptr %h, i64 25083, !dbg !2873
  store i8 -128, ptr %arrayidx313, align 1, !dbg !2874
  %pps1467 = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !2843
  %76 = load ptr, ptr %pps1467, align 16, !dbg !2843
  %b_transform_8x8_mode1468 = getelementptr inbounds i8, ptr %76, i64 60, !dbg !2845
  %77 = load i32, ptr %b_transform_8x8_mode1468, align 4, !dbg !2845
  %tobool315.not1469 = icmp eq i32 %77, 0, !dbg !2846
  br i1 %tobool315.not1469, label %if.end342, label %land.end, !dbg !2847

if.end314.thread:                                 ; preds = %if.then90
  %pps1463 = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !2843
  %78 = load ptr, ptr %pps1463, align 16, !dbg !2843
  %b_transform_8x8_mode1464 = getelementptr inbounds i8, ptr %78, i64 60, !dbg !2845
  %79 = load i32, ptr %b_transform_8x8_mode1464, align 4, !dbg !2845
  %tobool315.not1465 = icmp eq i32 %79, 0, !dbg !2846
  br i1 %tobool315.not1465, label %if.end342, label %land.rhs, !dbg !2847

land.rhs:                                         ; preds = %if.end314, %if.end314.thread
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !2875
  %80 = load ptr, ptr %mb_transform_size, align 8, !dbg !2875
  %arrayidx323 = getelementptr inbounds i8, ptr %80, i64 %idxprom91, !dbg !2877
  %81 = load i8, ptr %arrayidx323, align 1, !dbg !2877
  %tobool325 = icmp ne i8 %81, 0, !dbg !2878
  %82 = zext i1 %tobool325 to i32, !dbg !2878
  br label %land.end

land.end:                                         ; preds = %if.end314.thread1466, %land.rhs
  %land.ext = phi i32 [ %82, %land.rhs ], [ 0, %if.end314.thread1466 ], !dbg !2879
  br i1 %tobool.not, label %land.end337, label %land.rhs330, !dbg !2880

land.rhs330:                                      ; preds = %land.end
  %mb_transform_size332 = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !2881
  %83 = load ptr, ptr %mb_transform_size332, align 8, !dbg !2881
  %idxprom333 = sext i32 %38 to i64, !dbg !2882
  %arrayidx334 = getelementptr inbounds i8, ptr %83, i64 %idxprom333, !dbg !2882
  %84 = load i8, ptr %arrayidx334, align 1, !dbg !2882
  %tobool336 = icmp ne i8 %84, 0, !dbg !2880
  %85 = zext i1 %tobool336 to i32, !dbg !2880
  br label %land.end337

land.end337:                                      ; preds = %land.rhs330, %land.end
  %land.ext338 = phi i32 [ 0, %land.end ], [ %85, %land.rhs330 ], !dbg !2879
  %add339 = add nuw nsw i32 %land.ext338, %land.ext, !dbg !2883
  %i_neighbour_transform_size = getelementptr inbounds i8, ptr %h, i64 25768, !dbg !2884
  store i32 %add339, ptr %i_neighbour_transform_size, align 8, !dbg !2885
  br label %if.end342, !dbg !2886

if.end342:                                        ; preds = %if.end314.thread1466, %if.end314.thread, %land.end337, %if.end314
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !2887
  %86 = load i32, ptr %b_mbaff, align 4, !dbg !2887
  %tobool344.not = icmp eq i32 %86, 0, !dbg !2889
  br i1 %tobool344.not, label %if.end374, label %if.then345, !dbg !2890

if.then345:                                       ; preds = %if.end342
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696, !dbg !2891
  %87 = load i32, ptr %i_ref0, align 8, !dbg !2891
  %shl348 = shl i32 %87, %0, !dbg !2893
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416, !dbg !2894
  store i32 %shl348, ptr %i_fref, align 8, !dbg !2895
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856, !dbg !2896
  %88 = load i32, ptr %i_ref1, align 8, !dbg !2896
  %shl353 = shl i32 %88, %0, !dbg !2897
  %arrayidx357 = getelementptr inbounds i8, ptr %h, i64 21420, !dbg !2898
  store i32 %shl353, ptr %arrayidx357, align 4, !dbg !2899
  %and365 = lshr i32 %37, 1, !dbg !2900
  %and365.lobit = and i32 %and365, 1, !dbg !2900
  %add371 = add nuw nsw i32 %and365.lobit, %and88, !dbg !2901
  %i_neighbour_interlaced = getelementptr inbounds i8, ptr %h, i64 25772, !dbg !2902
  store i32 %add371, ptr %i_neighbour_interlaced, align 4, !dbg !2903
  br label %if.end374, !dbg !2904

if.end374:                                        ; preds = %if.then345, %if.end342
  %tobool377.not = icmp eq i32 %0, 0, !dbg !2905
  br i1 %tobool377.not, label %if.then378, label %if.end425, !dbg !2907

if.then378:                                       ; preds = %if.end374
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !2908
  %89 = load ptr, ptr %p_fdec, align 16, !dbg !2910
  %add.ptr382 = getelementptr inbounds i8, ptr %89, i64 127, !dbg !2911
  %add.ptr388 = getelementptr inbounds i8, ptr %89, i64 143, !dbg !2912
    #dbg_value(ptr %add.ptr382, !2913, !DIExpression(), !2919)
    #dbg_value(ptr %add.ptr388, !2916, !DIExpression(), !2919)
    #dbg_value(i64 -4, !2917, !DIExpression(), !2921)
  %arrayidx.i1415 = getelementptr inbounds i8, ptr %89, i64 15, !dbg !2922
  %90 = load i8, ptr %arrayidx.i1415, align 1, !dbg !2922
  %arrayidx3.i = getelementptr inbounds i8, ptr %89, i64 -1, !dbg !2924
  store i8 %90, ptr %arrayidx3.i, align 1, !dbg !2925
    #dbg_value(i64 -3, !2917, !DIExpression(), !2921)
  %arrayidx.1.i = getelementptr inbounds i8, ptr %89, i64 47, !dbg !2922
  %91 = load i8, ptr %arrayidx.1.i, align 1, !dbg !2922
  %arrayidx3.1.i = getelementptr inbounds i8, ptr %89, i64 31, !dbg !2924
  store i8 %91, ptr %arrayidx3.1.i, align 1, !dbg !2925
    #dbg_value(i64 -2, !2917, !DIExpression(), !2921)
  %arrayidx.2.i = getelementptr inbounds i8, ptr %89, i64 79, !dbg !2922
  %92 = load i8, ptr %arrayidx.2.i, align 1, !dbg !2922
  %arrayidx3.2.i = getelementptr inbounds i8, ptr %89, i64 63, !dbg !2924
  store i8 %92, ptr %arrayidx3.2.i, align 1, !dbg !2925
    #dbg_value(i64 -1, !2917, !DIExpression(), !2921)
  %arrayidx.3.i = getelementptr inbounds i8, ptr %89, i64 111, !dbg !2922
  %93 = load i8, ptr %arrayidx.3.i, align 1, !dbg !2922
  %arrayidx3.3.i = getelementptr inbounds i8, ptr %89, i64 95, !dbg !2924
  store i8 %93, ptr %arrayidx3.3.i, align 1, !dbg !2925
    #dbg_value(i64 0, !2917, !DIExpression(), !2921)
  %94 = load i8, ptr %add.ptr388, align 1, !dbg !2922
  store i8 %94, ptr %add.ptr382, align 1, !dbg !2925
    #dbg_value(i64 1, !2917, !DIExpression(), !2921)
  %arrayidx.5.i = getelementptr inbounds i8, ptr %89, i64 175, !dbg !2922
  %95 = load i8, ptr %arrayidx.5.i, align 1, !dbg !2922
  %arrayidx3.5.i = getelementptr inbounds i8, ptr %89, i64 159, !dbg !2924
  store i8 %95, ptr %arrayidx3.5.i, align 1, !dbg !2925
    #dbg_value(i64 2, !2917, !DIExpression(), !2921)
  %arrayidx.6.i = getelementptr inbounds i8, ptr %89, i64 207, !dbg !2922
  %96 = load i8, ptr %arrayidx.6.i, align 1, !dbg !2922
  %arrayidx3.6.i = getelementptr inbounds i8, ptr %89, i64 191, !dbg !2924
  store i8 %96, ptr %arrayidx3.6.i, align 1, !dbg !2925
    #dbg_value(i64 3, !2917, !DIExpression(), !2921)
  %arrayidx.7.i = getelementptr inbounds i8, ptr %89, i64 239, !dbg !2922
  %97 = load i8, ptr %arrayidx.7.i, align 1, !dbg !2922
  %arrayidx3.7.i = getelementptr inbounds i8, ptr %89, i64 223, !dbg !2924
  store i8 %97, ptr %arrayidx3.7.i, align 1, !dbg !2925
    #dbg_value(i64 4, !2917, !DIExpression(), !2921)
  %98 = load ptr, ptr %p_fdec, align 16, !dbg !2926
  %add.ptr394 = getelementptr inbounds i8, ptr %98, i64 383, !dbg !2927
  %add.ptr400 = getelementptr inbounds i8, ptr %98, i64 399, !dbg !2928
    #dbg_value(ptr %add.ptr394, !2913, !DIExpression(), !2929)
    #dbg_value(ptr %add.ptr400, !2916, !DIExpression(), !2929)
    #dbg_value(i64 -4, !2917, !DIExpression(), !2931)
  %arrayidx.i1416 = getelementptr inbounds i8, ptr %98, i64 271, !dbg !2932
  %99 = load i8, ptr %arrayidx.i1416, align 1, !dbg !2932
  %arrayidx3.i1417 = getelementptr inbounds i8, ptr %98, i64 255, !dbg !2933
  store i8 %99, ptr %arrayidx3.i1417, align 1, !dbg !2934
    #dbg_value(i64 -3, !2917, !DIExpression(), !2931)
  %arrayidx.1.i1418 = getelementptr inbounds i8, ptr %98, i64 303, !dbg !2932
  %100 = load i8, ptr %arrayidx.1.i1418, align 1, !dbg !2932
  %arrayidx3.1.i1419 = getelementptr inbounds i8, ptr %98, i64 287, !dbg !2933
  store i8 %100, ptr %arrayidx3.1.i1419, align 1, !dbg !2934
    #dbg_value(i64 -2, !2917, !DIExpression(), !2931)
  %arrayidx.2.i1420 = getelementptr inbounds i8, ptr %98, i64 335, !dbg !2932
  %101 = load i8, ptr %arrayidx.2.i1420, align 1, !dbg !2932
  %arrayidx3.2.i1421 = getelementptr inbounds i8, ptr %98, i64 319, !dbg !2933
  store i8 %101, ptr %arrayidx3.2.i1421, align 1, !dbg !2934
    #dbg_value(i64 -1, !2917, !DIExpression(), !2931)
  %arrayidx.3.i1422 = getelementptr inbounds i8, ptr %98, i64 367, !dbg !2932
  %102 = load i8, ptr %arrayidx.3.i1422, align 1, !dbg !2932
  %arrayidx3.3.i1423 = getelementptr inbounds i8, ptr %98, i64 351, !dbg !2933
  store i8 %102, ptr %arrayidx3.3.i1423, align 1, !dbg !2934
    #dbg_value(i64 0, !2917, !DIExpression(), !2931)
  %103 = load i8, ptr %add.ptr400, align 1, !dbg !2932
  store i8 %103, ptr %add.ptr394, align 1, !dbg !2934
    #dbg_value(i64 1, !2917, !DIExpression(), !2931)
  %arrayidx.5.i1424 = getelementptr inbounds i8, ptr %98, i64 431, !dbg !2932
  %104 = load i8, ptr %arrayidx.5.i1424, align 1, !dbg !2932
  %arrayidx3.5.i1425 = getelementptr inbounds i8, ptr %98, i64 415, !dbg !2933
  store i8 %104, ptr %arrayidx3.5.i1425, align 1, !dbg !2934
    #dbg_value(i64 2, !2917, !DIExpression(), !2931)
  %arrayidx.6.i1426 = getelementptr inbounds i8, ptr %98, i64 463, !dbg !2932
  %105 = load i8, ptr %arrayidx.6.i1426, align 1, !dbg !2932
  %arrayidx3.6.i1427 = getelementptr inbounds i8, ptr %98, i64 447, !dbg !2933
  store i8 %105, ptr %arrayidx3.6.i1427, align 1, !dbg !2934
    #dbg_value(i64 3, !2917, !DIExpression(), !2931)
  %arrayidx.7.i1428 = getelementptr inbounds i8, ptr %98, i64 495, !dbg !2932
  %106 = load i8, ptr %arrayidx.7.i1428, align 1, !dbg !2932
  %arrayidx3.7.i1429 = getelementptr inbounds i8, ptr %98, i64 479, !dbg !2933
  store i8 %106, ptr %arrayidx3.7.i1429, align 1, !dbg !2934
    #dbg_value(i64 4, !2917, !DIExpression(), !2931)
  %arrayidx404 = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !2935
  %107 = load ptr, ptr %arrayidx404, align 8, !dbg !2935
  %add.ptr406 = getelementptr inbounds i8, ptr %107, i64 127, !dbg !2936
  %add.ptr412 = getelementptr inbounds i8, ptr %107, i64 135, !dbg !2937
    #dbg_value(ptr %add.ptr406, !2913, !DIExpression(), !2938)
    #dbg_value(ptr %add.ptr412, !2916, !DIExpression(), !2938)
    #dbg_value(i64 -4, !2917, !DIExpression(), !2940)
  %arrayidx.i1430 = getelementptr inbounds i8, ptr %107, i64 7, !dbg !2941
  %108 = load i8, ptr %arrayidx.i1430, align 1, !dbg !2941
  %arrayidx3.i1431 = getelementptr inbounds i8, ptr %107, i64 -1, !dbg !2942
  store i8 %108, ptr %arrayidx3.i1431, align 1, !dbg !2943
    #dbg_value(i64 -3, !2917, !DIExpression(), !2940)
  %arrayidx.1.i1432 = getelementptr inbounds i8, ptr %107, i64 39, !dbg !2941
  %109 = load i8, ptr %arrayidx.1.i1432, align 1, !dbg !2941
  %arrayidx3.1.i1433 = getelementptr inbounds i8, ptr %107, i64 31, !dbg !2942
  store i8 %109, ptr %arrayidx3.1.i1433, align 1, !dbg !2943
    #dbg_value(i64 -2, !2917, !DIExpression(), !2940)
  %arrayidx.2.i1434 = getelementptr inbounds i8, ptr %107, i64 71, !dbg !2941
  %110 = load i8, ptr %arrayidx.2.i1434, align 1, !dbg !2941
  %arrayidx3.2.i1435 = getelementptr inbounds i8, ptr %107, i64 63, !dbg !2942
  store i8 %110, ptr %arrayidx3.2.i1435, align 1, !dbg !2943
    #dbg_value(i64 -1, !2917, !DIExpression(), !2940)
  %arrayidx.3.i1436 = getelementptr inbounds i8, ptr %107, i64 103, !dbg !2941
  %111 = load i8, ptr %arrayidx.3.i1436, align 1, !dbg !2941
  %arrayidx3.3.i1437 = getelementptr inbounds i8, ptr %107, i64 95, !dbg !2942
  store i8 %111, ptr %arrayidx3.3.i1437, align 1, !dbg !2943
    #dbg_value(i64 0, !2917, !DIExpression(), !2940)
  %112 = load i8, ptr %add.ptr412, align 1, !dbg !2941
  store i8 %112, ptr %add.ptr406, align 1, !dbg !2943
    #dbg_value(i64 1, !2917, !DIExpression(), !2940)
  %arrayidx.5.i1438 = getelementptr inbounds i8, ptr %107, i64 167, !dbg !2941
  %113 = load i8, ptr %arrayidx.5.i1438, align 1, !dbg !2941
  %arrayidx3.5.i1439 = getelementptr inbounds i8, ptr %107, i64 159, !dbg !2942
  store i8 %113, ptr %arrayidx3.5.i1439, align 1, !dbg !2943
    #dbg_value(i64 2, !2917, !DIExpression(), !2940)
  %arrayidx.6.i1440 = getelementptr inbounds i8, ptr %107, i64 199, !dbg !2941
  %114 = load i8, ptr %arrayidx.6.i1440, align 1, !dbg !2941
  %arrayidx3.6.i1441 = getelementptr inbounds i8, ptr %107, i64 191, !dbg !2942
  store i8 %114, ptr %arrayidx3.6.i1441, align 1, !dbg !2943
    #dbg_value(i64 3, !2917, !DIExpression(), !2940)
  %arrayidx.7.i1442 = getelementptr inbounds i8, ptr %107, i64 231, !dbg !2941
  %115 = load i8, ptr %arrayidx.7.i1442, align 1, !dbg !2941
  %arrayidx3.7.i1443 = getelementptr inbounds i8, ptr %107, i64 223, !dbg !2942
  store i8 %115, ptr %arrayidx3.7.i1443, align 1, !dbg !2943
    #dbg_value(i64 4, !2917, !DIExpression(), !2940)
  %arrayidx416 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !2944
  %116 = load ptr, ptr %arrayidx416, align 16, !dbg !2944
  %add.ptr418 = getelementptr inbounds i8, ptr %116, i64 127, !dbg !2945
  %add.ptr424 = getelementptr inbounds i8, ptr %116, i64 135, !dbg !2946
    #dbg_value(ptr %add.ptr418, !2913, !DIExpression(), !2947)
    #dbg_value(ptr %add.ptr424, !2916, !DIExpression(), !2947)
    #dbg_value(i64 -4, !2917, !DIExpression(), !2949)
  %arrayidx.i1444 = getelementptr inbounds i8, ptr %116, i64 7, !dbg !2950
  %117 = load i8, ptr %arrayidx.i1444, align 1, !dbg !2950
  %arrayidx3.i1445 = getelementptr inbounds i8, ptr %116, i64 -1, !dbg !2951
  store i8 %117, ptr %arrayidx3.i1445, align 1, !dbg !2952
    #dbg_value(i64 -3, !2917, !DIExpression(), !2949)
  %arrayidx.1.i1446 = getelementptr inbounds i8, ptr %116, i64 39, !dbg !2950
  %118 = load i8, ptr %arrayidx.1.i1446, align 1, !dbg !2950
  %arrayidx3.1.i1447 = getelementptr inbounds i8, ptr %116, i64 31, !dbg !2951
  store i8 %118, ptr %arrayidx3.1.i1447, align 1, !dbg !2952
    #dbg_value(i64 -2, !2917, !DIExpression(), !2949)
  %arrayidx.2.i1448 = getelementptr inbounds i8, ptr %116, i64 71, !dbg !2950
  %119 = load i8, ptr %arrayidx.2.i1448, align 1, !dbg !2950
  %arrayidx3.2.i1449 = getelementptr inbounds i8, ptr %116, i64 63, !dbg !2951
  store i8 %119, ptr %arrayidx3.2.i1449, align 1, !dbg !2952
    #dbg_value(i64 -1, !2917, !DIExpression(), !2949)
  %arrayidx.3.i1450 = getelementptr inbounds i8, ptr %116, i64 103, !dbg !2950
  %120 = load i8, ptr %arrayidx.3.i1450, align 1, !dbg !2950
  %arrayidx3.3.i1451 = getelementptr inbounds i8, ptr %116, i64 95, !dbg !2951
  store i8 %120, ptr %arrayidx3.3.i1451, align 1, !dbg !2952
    #dbg_value(i64 0, !2917, !DIExpression(), !2949)
  %121 = load i8, ptr %add.ptr424, align 1, !dbg !2950
  store i8 %121, ptr %add.ptr418, align 1, !dbg !2952
    #dbg_value(i64 1, !2917, !DIExpression(), !2949)
  %arrayidx.5.i1452 = getelementptr inbounds i8, ptr %116, i64 167, !dbg !2950
  %122 = load i8, ptr %arrayidx.5.i1452, align 1, !dbg !2950
  %arrayidx3.5.i1453 = getelementptr inbounds i8, ptr %116, i64 159, !dbg !2951
  store i8 %122, ptr %arrayidx3.5.i1453, align 1, !dbg !2952
    #dbg_value(i64 2, !2917, !DIExpression(), !2949)
  %arrayidx.6.i1454 = getelementptr inbounds i8, ptr %116, i64 199, !dbg !2950
  %123 = load i8, ptr %arrayidx.6.i1454, align 1, !dbg !2950
  %arrayidx3.6.i1455 = getelementptr inbounds i8, ptr %116, i64 191, !dbg !2951
  store i8 %123, ptr %arrayidx3.6.i1455, align 1, !dbg !2952
    #dbg_value(i64 3, !2917, !DIExpression(), !2949)
  %arrayidx.7.i1456 = getelementptr inbounds i8, ptr %116, i64 231, !dbg !2950
  %124 = load i8, ptr %arrayidx.7.i1456, align 1, !dbg !2950
  %arrayidx3.7.i1457 = getelementptr inbounds i8, ptr %116, i64 223, !dbg !2951
  store i8 %124, ptr %arrayidx3.7.i1457, align 1, !dbg !2952
    #dbg_value(i64 4, !2917, !DIExpression(), !2949)
  br label %if.end425, !dbg !2953

if.end425:                                        ; preds = %if.then378, %if.end374
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 0), !dbg !2954
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 1), !dbg !2955
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 2), !dbg !2956
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !2957
  %125 = load ptr, ptr %fdec, align 16, !dbg !2957
  %integral = getelementptr inbounds i8, ptr %125, i64 240, !dbg !2958
  %126 = load ptr, ptr %integral, align 16, !dbg !2958
  %tobool426.not = icmp eq ptr %126, null, !dbg !2959
  br i1 %tobool426.not, label %if.end479, label %if.then427, !dbg !2960

if.then427:                                       ; preds = %if.end425
  %i_stride = getelementptr inbounds i8, ptr %125, i64 104, !dbg !2961
  %127 = load i32, ptr %i_stride, align 8, !dbg !2962
  %mul430 = mul nsw i32 %127, %mb_y, !dbg !2963
  %add431 = add nsw i32 %mul430, %mb_x, !dbg !2964
  %mul432 = shl nsw i32 %add431, 4, !dbg !2965
    #dbg_value(i32 %mul432, !2563, !DIExpression(), !2966)
    #dbg_value(i32 0, !2566, !DIExpression(), !2967)
  %i_fref436 = getelementptr inbounds i8, ptr %h, i64 21416
  %128 = load i32, ptr %i_fref436, align 8
    #dbg_value(i32 0, !2566, !DIExpression(), !2967)
  %cmp4381473 = icmp sgt i32 %128, 0, !dbg !2968
  br i1 %cmp4381473, label %for.body441.lr.ph, label %for.cond456.preheader, !dbg !2970

for.body441.lr.ph:                                ; preds = %if.then427
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %idxprom445 = sext i32 %mul432 to i64
  %p_integral = getelementptr inbounds i8, ptr %h, i64 24752
  %wide.trip.count = zext nneg i32 %128 to i64, !dbg !2968
  %xtraiter = and i64 %wide.trip.count, 3, !dbg !2970
  %129 = icmp ult i32 %128, 4, !dbg !2970
  br i1 %129, label %for.cond456.preheader.loopexit.unr-lcssa, label %for.body441.lr.ph.new, !dbg !2970

for.body441.lr.ph.new:                            ; preds = %for.body441.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644, !dbg !2970
  br label %for.body441, !dbg !2970

for.cond456.preheader.loopexit.unr-lcssa:         ; preds = %for.body441, %for.body441.lr.ph
  %indvars.iv1483.unr = phi i64 [ 0, %for.body441.lr.ph ], [ %indvars.iv.next1484.3, %for.body441 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2970
  br i1 %lcmp.mod.not, label %for.cond456.preheader, label %for.body441.epil, !dbg !2970

for.body441.epil:                                 ; preds = %for.cond456.preheader.loopexit.unr-lcssa, %for.body441.epil
  %indvars.iv1483.epil = phi i64 [ %indvars.iv.next1484.epil, %for.body441.epil ], [ %indvars.iv1483.unr, %for.cond456.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body441.epil ], [ 0, %for.cond456.preheader.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv1483.epil, !2566, !DIExpression(), !2967)
  %arrayidx443.epil = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv1483.epil, !dbg !2971
  %130 = load ptr, ptr %arrayidx443.epil, align 8, !dbg !2971
  %integral444.epil = getelementptr inbounds i8, ptr %130, i64 240, !dbg !2972
  %131 = load ptr, ptr %integral444.epil, align 16, !dbg !2972
  %arrayidx446.epil = getelementptr inbounds i16, ptr %131, i64 %idxprom445, !dbg !2971
  %arrayidx451.epil = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv1483.epil, !dbg !2973
  store ptr %arrayidx446.epil, ptr %arrayidx451.epil, align 8, !dbg !2974
  %indvars.iv.next1484.epil = add nuw nsw i64 %indvars.iv1483.epil, 1, !dbg !2975
    #dbg_value(i64 %indvars.iv.next1484.epil, !2566, !DIExpression(), !2967)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2970
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !2970
  br i1 %epil.iter.cmp.not, label %for.cond456.preheader, label %for.body441.epil, !dbg !2970, !llvm.loop !2976

for.cond456.preheader:                            ; preds = %for.cond456.preheader.loopexit.unr-lcssa, %for.body441.epil, %if.then427
  %arrayidx460 = getelementptr inbounds i8, ptr %h, i64 21420
  %132 = load i32, ptr %arrayidx460, align 4
    #dbg_value(i32 0, !2568, !DIExpression(), !2978)
  %cmp4611475 = icmp sgt i32 %132, 0, !dbg !2979
  br i1 %cmp4611475, label %for.body464.lr.ph, label %if.end479, !dbg !2981

for.body464.lr.ph:                                ; preds = %for.cond456.preheader
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %idxprom468 = sext i32 %mul432 to i64
  %arrayidx473 = getelementptr inbounds i8, ptr %h, i64 24880
  %wide.trip.count1489 = zext nneg i32 %132 to i64, !dbg !2979
  %xtraiter1507 = and i64 %wide.trip.count1489, 3, !dbg !2981
  %133 = icmp ult i32 %132, 4, !dbg !2981
  br i1 %133, label %if.end479.loopexit.unr-lcssa, label %for.body464.lr.ph.new, !dbg !2981

for.body464.lr.ph.new:                            ; preds = %for.body464.lr.ph
  %unroll_iter1510 = and i64 %wide.trip.count1489, 2147483644, !dbg !2981
  br label %for.body464, !dbg !2981

for.body441:                                      ; preds = %for.body441, %for.body441.lr.ph.new
  %indvars.iv1483 = phi i64 [ 0, %for.body441.lr.ph.new ], [ %indvars.iv.next1484.3, %for.body441 ]
  %niter = phi i64 [ 0, %for.body441.lr.ph.new ], [ %niter.next.3, %for.body441 ]
    #dbg_value(i64 %indvars.iv1483, !2566, !DIExpression(), !2967)
  %arrayidx443 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv1483, !dbg !2971
  %134 = load ptr, ptr %arrayidx443, align 8, !dbg !2971
  %integral444 = getelementptr inbounds i8, ptr %134, i64 240, !dbg !2972
  %135 = load ptr, ptr %integral444, align 16, !dbg !2972
  %arrayidx446 = getelementptr inbounds i16, ptr %135, i64 %idxprom445, !dbg !2971
  %arrayidx451 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv1483, !dbg !2973
  store ptr %arrayidx446, ptr %arrayidx451, align 8, !dbg !2974
  %indvars.iv.next1484 = or disjoint i64 %indvars.iv1483, 1, !dbg !2975
    #dbg_value(i64 %indvars.iv.next1484, !2566, !DIExpression(), !2967)
  %arrayidx443.1 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484, !dbg !2971
  %136 = load ptr, ptr %arrayidx443.1, align 8, !dbg !2971
  %integral444.1 = getelementptr inbounds i8, ptr %136, i64 240, !dbg !2972
  %137 = load ptr, ptr %integral444.1, align 16, !dbg !2972
  %arrayidx446.1 = getelementptr inbounds i16, ptr %137, i64 %idxprom445, !dbg !2971
  %arrayidx451.1 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484, !dbg !2973
  store ptr %arrayidx446.1, ptr %arrayidx451.1, align 8, !dbg !2974
  %indvars.iv.next1484.1 = or disjoint i64 %indvars.iv1483, 2, !dbg !2975
    #dbg_value(i64 %indvars.iv.next1484.1, !2566, !DIExpression(), !2967)
  %arrayidx443.2 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484.1, !dbg !2971
  %138 = load ptr, ptr %arrayidx443.2, align 8, !dbg !2971
  %integral444.2 = getelementptr inbounds i8, ptr %138, i64 240, !dbg !2972
  %139 = load ptr, ptr %integral444.2, align 16, !dbg !2972
  %arrayidx446.2 = getelementptr inbounds i16, ptr %139, i64 %idxprom445, !dbg !2971
  %arrayidx451.2 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484.1, !dbg !2973
  store ptr %arrayidx446.2, ptr %arrayidx451.2, align 8, !dbg !2974
  %indvars.iv.next1484.2 = or disjoint i64 %indvars.iv1483, 3, !dbg !2975
    #dbg_value(i64 %indvars.iv.next1484.2, !2566, !DIExpression(), !2967)
  %arrayidx443.3 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484.2, !dbg !2971
  %140 = load ptr, ptr %arrayidx443.3, align 8, !dbg !2971
  %integral444.3 = getelementptr inbounds i8, ptr %140, i64 240, !dbg !2972
  %141 = load ptr, ptr %integral444.3, align 16, !dbg !2972
  %arrayidx446.3 = getelementptr inbounds i16, ptr %141, i64 %idxprom445, !dbg !2971
  %arrayidx451.3 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484.2, !dbg !2973
  store ptr %arrayidx446.3, ptr %arrayidx451.3, align 8, !dbg !2974
  %indvars.iv.next1484.3 = add nuw nsw i64 %indvars.iv1483, 4, !dbg !2975
    #dbg_value(i64 %indvars.iv.next1484.3, !2566, !DIExpression(), !2967)
  %niter.next.3 = add i64 %niter, 4, !dbg !2970
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2970
  br i1 %niter.ncmp.3, label %for.cond456.preheader.loopexit.unr-lcssa, label %for.body441, !dbg !2970, !llvm.loop !2982

for.body464:                                      ; preds = %for.body464, %for.body464.lr.ph.new
  %indvars.iv1486 = phi i64 [ 0, %for.body464.lr.ph.new ], [ %indvars.iv.next1487.3, %for.body464 ]
  %niter1511 = phi i64 [ 0, %for.body464.lr.ph.new ], [ %niter1511.next.3, %for.body464 ]
    #dbg_value(i64 %indvars.iv1486, !2568, !DIExpression(), !2978)
  %arrayidx466 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv1486, !dbg !2984
  %142 = load ptr, ptr %arrayidx466, align 8, !dbg !2984
  %integral467 = getelementptr inbounds i8, ptr %142, i64 240, !dbg !2985
  %143 = load ptr, ptr %integral467, align 16, !dbg !2985
  %arrayidx469 = getelementptr inbounds i16, ptr %143, i64 %idxprom468, !dbg !2984
  %arrayidx475 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv1486, !dbg !2986
  store ptr %arrayidx469, ptr %arrayidx475, align 8, !dbg !2987
  %indvars.iv.next1487 = or disjoint i64 %indvars.iv1486, 1, !dbg !2988
    #dbg_value(i64 %indvars.iv.next1487, !2568, !DIExpression(), !2978)
  %arrayidx466.1 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487, !dbg !2984
  %144 = load ptr, ptr %arrayidx466.1, align 8, !dbg !2984
  %integral467.1 = getelementptr inbounds i8, ptr %144, i64 240, !dbg !2985
  %145 = load ptr, ptr %integral467.1, align 16, !dbg !2985
  %arrayidx469.1 = getelementptr inbounds i16, ptr %145, i64 %idxprom468, !dbg !2984
  %arrayidx475.1 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487, !dbg !2986
  store ptr %arrayidx469.1, ptr %arrayidx475.1, align 8, !dbg !2987
  %indvars.iv.next1487.1 = or disjoint i64 %indvars.iv1486, 2, !dbg !2988
    #dbg_value(i64 %indvars.iv.next1487.1, !2568, !DIExpression(), !2978)
  %arrayidx466.2 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487.1, !dbg !2984
  %146 = load ptr, ptr %arrayidx466.2, align 8, !dbg !2984
  %integral467.2 = getelementptr inbounds i8, ptr %146, i64 240, !dbg !2985
  %147 = load ptr, ptr %integral467.2, align 16, !dbg !2985
  %arrayidx469.2 = getelementptr inbounds i16, ptr %147, i64 %idxprom468, !dbg !2984
  %arrayidx475.2 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487.1, !dbg !2986
  store ptr %arrayidx469.2, ptr %arrayidx475.2, align 8, !dbg !2987
  %indvars.iv.next1487.2 = or disjoint i64 %indvars.iv1486, 3, !dbg !2988
    #dbg_value(i64 %indvars.iv.next1487.2, !2568, !DIExpression(), !2978)
  %arrayidx466.3 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487.2, !dbg !2984
  %148 = load ptr, ptr %arrayidx466.3, align 8, !dbg !2984
  %integral467.3 = getelementptr inbounds i8, ptr %148, i64 240, !dbg !2985
  %149 = load ptr, ptr %integral467.3, align 16, !dbg !2985
  %arrayidx469.3 = getelementptr inbounds i16, ptr %149, i64 %idxprom468, !dbg !2984
  %arrayidx475.3 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487.2, !dbg !2986
  store ptr %arrayidx469.3, ptr %arrayidx475.3, align 8, !dbg !2987
  %indvars.iv.next1487.3 = add nuw nsw i64 %indvars.iv1486, 4, !dbg !2988
    #dbg_value(i64 %indvars.iv.next1487.3, !2568, !DIExpression(), !2978)
  %niter1511.next.3 = add i64 %niter1511, 4, !dbg !2981
  %niter1511.ncmp.3 = icmp eq i64 %niter1511.next.3, %unroll_iter1510, !dbg !2981
  br i1 %niter1511.ncmp.3, label %if.end479.loopexit.unr-lcssa, label %for.body464, !dbg !2981, !llvm.loop !2989

if.end479.loopexit.unr-lcssa:                     ; preds = %for.body464, %for.body464.lr.ph
  %indvars.iv1486.unr = phi i64 [ 0, %for.body464.lr.ph ], [ %indvars.iv.next1487.3, %for.body464 ]
  %lcmp.mod1509.not = icmp eq i64 %xtraiter1507, 0, !dbg !2981
  br i1 %lcmp.mod1509.not, label %if.end479, label %for.body464.epil, !dbg !2981

for.body464.epil:                                 ; preds = %if.end479.loopexit.unr-lcssa, %for.body464.epil
  %indvars.iv1486.epil = phi i64 [ %indvars.iv.next1487.epil, %for.body464.epil ], [ %indvars.iv1486.unr, %if.end479.loopexit.unr-lcssa ]
  %epil.iter1508 = phi i64 [ %epil.iter1508.next, %for.body464.epil ], [ 0, %if.end479.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv1486.epil, !2568, !DIExpression(), !2978)
  %arrayidx466.epil = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv1486.epil, !dbg !2984
  %150 = load ptr, ptr %arrayidx466.epil, align 8, !dbg !2984
  %integral467.epil = getelementptr inbounds i8, ptr %150, i64 240, !dbg !2985
  %151 = load ptr, ptr %integral467.epil, align 16, !dbg !2985
  %arrayidx469.epil = getelementptr inbounds i16, ptr %151, i64 %idxprom468, !dbg !2984
  %arrayidx475.epil = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv1486.epil, !dbg !2986
  store ptr %arrayidx469.epil, ptr %arrayidx475.epil, align 8, !dbg !2987
  %indvars.iv.next1487.epil = add nuw nsw i64 %indvars.iv1486.epil, 1, !dbg !2988
    #dbg_value(i64 %indvars.iv.next1487.epil, !2568, !DIExpression(), !2978)
  %epil.iter1508.next = add i64 %epil.iter1508, 1, !dbg !2981
  %epil.iter1508.cmp.not = icmp eq i64 %epil.iter1508.next, %xtraiter1507, !dbg !2981
  br i1 %epil.iter1508.cmp.not, label %if.end479, label %for.body464.epil, !dbg !2981, !llvm.loop !2991

if.end479:                                        ; preds = %if.end479.loopexit.unr-lcssa, %for.body464.epil, %for.cond456.preheader, %if.end425
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2992
  %152 = load ptr, ptr %fenc, align 8, !dbg !2992
    #dbg_value(ptr %h, !2515, !DIExpression(), !2993)
    #dbg_value(ptr %152, !2516, !DIExpression(), !2993)
    #dbg_value(i32 %mb_x, !2517, !DIExpression(), !2993)
    #dbg_value(i32 %mb_y, !2518, !DIExpression(), !2993)
  %i_stride.i = getelementptr inbounds i8, ptr %152, i64 104, !dbg !2995
  %153 = load i32, ptr %i_stride.i, align 8, !dbg !2996
    #dbg_value(i32 %153, !2519, !DIExpression(), !2993)
  %arrayidx2.i = getelementptr inbounds i8, ptr %152, i64 108, !dbg !2997
  %154 = load i32, ptr %arrayidx2.i, align 4, !dbg !2997
    #dbg_value(i32 %154, !2520, !DIExpression(), !2993)
  %mul.i1458 = mul nsw i32 %153, %mb_y, !dbg !2998
  %add.i1459 = add nsw i32 %mul.i1458, %mb_x, !dbg !2999
  %mul3.i = shl nsw i32 %add.i1459, 4, !dbg !3000
    #dbg_value(i32 %mul3.i, !2521, !DIExpression(), !2993)
  %mul4.i = mul nsw i32 %154, %mb_y, !dbg !3001
  %add5.i = add nsw i32 %mul4.i, %mb_x, !dbg !3002
  %mul6.i1460 = shl nsw i32 %add5.i, 3, !dbg !3003
    #dbg_value(i32 %mul6.i1460, !2522, !DIExpression(), !2993)
  %prefetch_fenc.i = getelementptr inbounds i8, ptr %h, i64 32800, !dbg !3004
  %155 = load ptr, ptr %prefetch_fenc.i, align 8, !dbg !3004
  %plane.i = getelementptr inbounds i8, ptr %152, i64 152, !dbg !3005
  %156 = load ptr, ptr %plane.i, align 8, !dbg !3006
  %idx.ext.i = sext i32 %mul3.i to i64, !dbg !3007
  %add.ptr.i = getelementptr inbounds i8, ptr %156, i64 %idx.ext.i, !dbg !3007
  %and.i = and i32 %mb_x, 1, !dbg !3008
  %add9.i = add nuw nsw i32 %and.i, 1, !dbg !3009
  %idxprom.i1461 = zext nneg i32 %add9.i to i64, !dbg !3010
  %arrayidx10.i = getelementptr inbounds [3 x ptr], ptr %plane.i, i64 0, i64 %idxprom.i1461, !dbg !3010
  %157 = load ptr, ptr %arrayidx10.i, align 8, !dbg !3010
  %idx.ext11.i = sext i32 %mul6.i1460 to i64, !dbg !3011
  %add.ptr12.i = getelementptr inbounds i8, ptr %157, i64 %idx.ext11.i, !dbg !3011
  tail call void %155(ptr noundef %add.ptr.i, i32 noundef %153, ptr noundef %add.ptr12.i, i32 noundef %154, i32 noundef %mb_x) #13, !dbg !3012
  %i_type481 = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !3013
  %158 = load i32, ptr %i_type481, align 16, !dbg !3013
  %cmp482.not = icmp eq i32 %158, 2, !dbg !3014
  br i1 %cmp482.not, label %if.end1018, label %if.then484, !dbg !3015

if.then484:                                       ; preds = %if.end479
  %159 = load i32, ptr %i_b8_stride.i, align 8, !dbg !3016
    #dbg_value(i32 %159, !2570, !DIExpression(), !3017)
  %160 = load i32, ptr %i_b4_stride.i, align 4, !dbg !3018
    #dbg_value(i32 %160, !2573, !DIExpression(), !3017)
    #dbg_value(i32 0, !2574, !DIExpression(), !3019)
  %cmp493 = icmp eq i32 %158, 1
  %161 = load i32, ptr %i_neighbour.i, align 8
  %162 = insertelement <4 x i32> poison, i32 %161, i64 0
  %163 = shufflevector <4 x i32> %162, <4 x i32> poison, <4 x i32> zeroinitializer
  %164 = and <4 x i32> %163, <i32 1, i32 4, i32 2, i32 8>
  %165 = icmp eq <4 x i32> %164, zeroinitializer
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %166 = load i32, ptr %b_cabac, align 16
  %tobool802.not = icmp eq i32 %166, 0
  %167 = sext i32 %add6 to i64
  %168 = sext i32 %add12 to i64
  %mul744 = shl nsw i32 %160, 1
  %mul758 = mul nsw i32 %160, 3
  %mvd806 = getelementptr inbounds i8, ptr %h, i64 16688
  %idxprom814 = sext i32 %38 to i64
  %idxprom843 = sext i32 %8 to i64
  %169 = extractelement <4 x i1> %165, i64 0, !dbg !3020
  %170 = extractelement <4 x i1> %165, i64 1, !dbg !3021
  %171 = extractelement <4 x i1> %165, i64 2, !dbg !3022
  %172 = extractelement <4 x i1> %165, i64 3, !dbg !3023
  %ref507 = getelementptr inbounds i8, ptr %h, i64 16704
  %mv502 = getelementptr inbounds i8, ptr %h, i64 16672
    #dbg_value(i64 0, !2574, !DIExpression(), !3019)
  %173 = load ptr, ptr %mv502, align 8, !dbg !3024
    #dbg_value(ptr %173, !2576, !DIExpression(), !3025)
  %174 = load ptr, ptr %ref507, align 8, !dbg !3026
    #dbg_value(ptr %174, !2579, !DIExpression(), !3025)
    #dbg_value(i32 3, !2580, !DIExpression(), !3025)
  br i1 %172, label %if.else538, label %if.then516, !dbg !3023

if.then516:                                       ; preds = %if.then484
  %175 = getelementptr i8, ptr %174, i64 %167, !dbg !3027
  %arrayidx519 = getelementptr i8, ptr %175, i64 -1, !dbg !3027
  %176 = load i8, ptr %arrayidx519, align 1, !dbg !3027
  %arrayidx526 = getelementptr inbounds i8, ptr %h, i64 25123, !dbg !3030
  store i8 %176, ptr %arrayidx526, align 1, !dbg !3031
  %177 = getelementptr [2 x i16], ptr %173, i64 %168, !dbg !3032
  %arrayidx529 = getelementptr i8, ptr %177, i64 -4, !dbg !3032
  %178 = load i32, ptr %arrayidx529, align 4, !dbg !3032
  br label %if.end554, !dbg !3033

if.else538:                                       ; preds = %if.then484
  %arrayidx545 = getelementptr inbounds i8, ptr %h, i64 25123, !dbg !3034
  store i8 -2, ptr %arrayidx545, align 1, !dbg !3036
  br label %if.end554

if.end554:                                        ; preds = %if.else538, %if.then516
  %.sink = phi i32 [ 0, %if.else538 ], [ %178, %if.then516 ]
  %arrayidx552 = getelementptr inbounds i8, ptr %h, i64 25212, !dbg !3037
  store i32 %.sink, ptr %arrayidx552, align 4, !dbg !3037
    #dbg_value(i32 4, !2580, !DIExpression(), !3025)
  br i1 %171, label %if.else610, label %if.then560, !dbg !3038

if.then560:                                       ; preds = %if.end554
  %arrayidx563 = getelementptr inbounds i8, ptr %174, i64 %167, !dbg !3039
  %179 = load i8, ptr %arrayidx563, align 1, !dbg !3039
  %arrayidx571 = getelementptr inbounds i8, ptr %h, i64 25125, !dbg !3042
  store i8 %179, ptr %arrayidx571, align 1, !dbg !3043
  %arrayidx579 = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !3044
  store i8 %179, ptr %arrayidx579, align 1, !dbg !3045
  %arrayidx582 = getelementptr i8, ptr %arrayidx563, i64 1, !dbg !3046
  %180 = load i8, ptr %arrayidx582, align 1, !dbg !3046
  %arrayidx590 = getelementptr inbounds i8, ptr %h, i64 25127, !dbg !3047
  store i8 %180, ptr %arrayidx590, align 1, !dbg !3048
  %arrayidx598 = getelementptr inbounds i8, ptr %h, i64 25126, !dbg !3049
  store i8 %180, ptr %arrayidx598, align 1, !dbg !3050
  %arrayidx605 = getelementptr inbounds i8, ptr %h, i64 25216, !dbg !3051
  %arrayidx608 = getelementptr inbounds [2 x i16], ptr %173, i64 %168, !dbg !3051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx605, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx608, i64 16, i1 false), !dbg !3051
  br label %if.end627, !dbg !3052

if.else610:                                       ; preds = %if.end554
  %arrayidx617 = getelementptr inbounds i8, ptr %h, i64 25216, !dbg !3053
  %arrayidx626 = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !3055
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx617, i8 0, i64 16, i1 false), !dbg !3056
  store i32 -16843010, ptr %arrayidx626, align 1, !dbg !3057
  br label %if.end627

if.end627:                                        ; preds = %if.else610, %if.then560
    #dbg_value(i32 8, !2580, !DIExpression(), !3025)
  br i1 %170, label %if.else657, label %if.then634, !dbg !3021

if.then634:                                       ; preds = %if.end627
  %181 = getelementptr i8, ptr %174, i64 %167, !dbg !3058
  %arrayidx637 = getelementptr i8, ptr %181, i64 2, !dbg !3058
  %182 = load i8, ptr %arrayidx637, align 1, !dbg !3058
  %arrayidx644 = getelementptr inbounds i8, ptr %h, i64 25128, !dbg !3061
  store i8 %182, ptr %arrayidx644, align 1, !dbg !3062
  %183 = getelementptr [2 x i16], ptr %173, i64 %168, !dbg !3063
  %arrayidx647 = getelementptr i8, ptr %183, i64 16, !dbg !3063
  %184 = load i32, ptr %arrayidx647, align 4, !dbg !3063
  %arrayidx655 = getelementptr inbounds i8, ptr %h, i64 25232, !dbg !3063
  store i32 %184, ptr %arrayidx655, align 4, !dbg !3063
  br label %if.end665, !dbg !3064

if.else657:                                       ; preds = %if.end627
  %arrayidx664 = getelementptr inbounds i8, ptr %h, i64 25128, !dbg !3065
  store i8 -2, ptr %arrayidx664, align 1, !dbg !3066
  br label %if.end665

if.end665:                                        ; preds = %if.else657, %if.then634
    #dbg_value(i32 11, !2580, !DIExpression(), !3025)
  br i1 %169, label %for.body778.preheader, label %if.then671, !dbg !3067

for.body778.preheader:                            ; preds = %if.end665
    #dbg_value(i64 0, !2585, !DIExpression(), !3068)
  %arrayidx787 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !3069
  store i8 -2, ptr %arrayidx787, align 1, !dbg !3072
  %arrayidx796 = getelementptr inbounds i8, ptr %h, i64 25244, !dbg !3073
  store i32 0, ptr %arrayidx796, align 4, !dbg !3074
    #dbg_value(i64 1, !2585, !DIExpression(), !3068)
  %arrayidx787.1 = getelementptr inbounds i8, ptr %h, i64 25139, !dbg !3069
  store i8 -2, ptr %arrayidx787.1, align 1, !dbg !3072
  %arrayidx796.1 = getelementptr inbounds i8, ptr %h, i64 25276, !dbg !3073
  store i32 0, ptr %arrayidx796.1, align 4, !dbg !3074
    #dbg_value(i64 2, !2585, !DIExpression(), !3068)
  %arrayidx787.2 = getelementptr inbounds i8, ptr %h, i64 25147, !dbg !3069
  store i8 -2, ptr %arrayidx787.2, align 1, !dbg !3072
  %arrayidx796.2 = getelementptr inbounds i8, ptr %h, i64 25308, !dbg !3073
  store i32 0, ptr %arrayidx796.2, align 4, !dbg !3074
    #dbg_value(i64 3, !2585, !DIExpression(), !3068)
  %arrayidx787.3 = getelementptr inbounds i8, ptr %h, i64 25155, !dbg !3069
  store i8 -2, ptr %arrayidx787.3, align 1, !dbg !3072
  %arrayidx796.3 = getelementptr inbounds i8, ptr %h, i64 25340, !dbg !3073
  store i32 0, ptr %arrayidx796.3, align 4, !dbg !3074
    #dbg_value(i64 4, !2585, !DIExpression(), !3068)
  br label %if.end801, !dbg !3075

if.then671:                                       ; preds = %if.end665
  %185 = load i32, ptr %i_b8_xy.i, align 4, !dbg !3076
  %sub673 = add nsw i32 %185, -1, !dbg !3077
    #dbg_value(i32 %sub673, !2581, !DIExpression(), !3078)
  %186 = load i32, ptr %i_b4_xy.i, align 16, !dbg !3079
  %sub675 = add nsw i32 %186, -1, !dbg !3080
    #dbg_value(i32 %sub675, !2584, !DIExpression(), !3078)
  %idxprom678 = sext i32 %sub673 to i64, !dbg !3081
  %arrayidx679 = getelementptr inbounds i8, ptr %174, i64 %idxprom678, !dbg !3081
  %187 = load i8, ptr %arrayidx679, align 1, !dbg !3081
  %arrayidx687 = getelementptr inbounds i8, ptr %h, i64 25139, !dbg !3082
  store i8 %187, ptr %arrayidx687, align 1, !dbg !3083
  %arrayidx695 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !3084
  store i8 %187, ptr %arrayidx695, align 1, !dbg !3085
  %add697 = add nsw i32 %sub673, %159, !dbg !3086
  %idxprom698 = sext i32 %add697 to i64, !dbg !3087
  %arrayidx699 = getelementptr inbounds i8, ptr %174, i64 %idxprom698, !dbg !3087
  %188 = load i8, ptr %arrayidx699, align 1, !dbg !3087
  %arrayidx707 = getelementptr inbounds i8, ptr %h, i64 25155, !dbg !3088
  store i8 %188, ptr %arrayidx707, align 1, !dbg !3089
  %arrayidx715 = getelementptr inbounds i8, ptr %h, i64 25147, !dbg !3090
  store i8 %188, ptr %arrayidx715, align 1, !dbg !3091
  %idxprom718 = sext i32 %sub675 to i64, !dbg !3092
  %arrayidx719 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom718, !dbg !3092
  %189 = load i32, ptr %arrayidx719, align 4, !dbg !3092
  %arrayidx728 = getelementptr inbounds i8, ptr %h, i64 25244, !dbg !3092
  store i32 %189, ptr %arrayidx728, align 4, !dbg !3092
  %add731 = add nsw i32 %sub675, %160, !dbg !3093
  %idxprom732 = sext i32 %add731 to i64, !dbg !3093
  %arrayidx733 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom732, !dbg !3093
  %190 = load i32, ptr %arrayidx733, align 4, !dbg !3093
  %arrayidx742 = getelementptr inbounds i8, ptr %h, i64 25276, !dbg !3093
  store i32 %190, ptr %arrayidx742, align 4, !dbg !3093
  %add745 = add nsw i32 %sub675, %mul744, !dbg !3094
  %idxprom746 = sext i32 %add745 to i64, !dbg !3094
  %arrayidx747 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom746, !dbg !3094
  %191 = load i32, ptr %arrayidx747, align 4, !dbg !3094
  %arrayidx756 = getelementptr inbounds i8, ptr %h, i64 25308, !dbg !3094
  store i32 %191, ptr %arrayidx756, align 4, !dbg !3094
  %add759 = add nsw i32 %sub675, %mul758, !dbg !3095
  %idxprom760 = sext i32 %add759 to i64, !dbg !3095
  %arrayidx761 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom760, !dbg !3095
  %192 = load i32, ptr %arrayidx761, align 4, !dbg !3095
  %arrayidx770 = getelementptr inbounds i8, ptr %h, i64 25340, !dbg !3095
  store i32 %192, ptr %arrayidx770, align 4, !dbg !3095
  br label %if.end801, !dbg !3096

if.end801:                                        ; preds = %for.body778.preheader, %if.then671
  br i1 %tobool802.not, label %if.end917, label %if.then803, !dbg !3075

if.then803:                                       ; preds = %if.end801
  %193 = load ptr, ptr %mvd806, align 8, !dbg !3097
    #dbg_value(ptr %193, !2588, !DIExpression(), !3098)
  br i1 %171, label %if.end837, label %if.then813, !dbg !3022

if.then813:                                       ; preds = %if.then803
  %arrayidx815 = getelementptr inbounds [8 x [2 x i8]], ptr %193, i64 %idxprom814, !dbg !3099
  %194 = load i64, ptr %arrayidx815, align 8, !dbg !3099
  br label %if.end837, !dbg !3099

if.end837:                                        ; preds = %if.then803, %if.then813
  %.sink1506 = phi i64 [ %194, %if.then813 ], [ 0, %if.then803 ]
  %arrayidx835 = getelementptr inbounds i8, ptr %h, i64 25528, !dbg !3101
  store i64 %.sink1506, ptr %arrayidx835, align 2, !dbg !3101
  br i1 %169, label %for.body901.preheader, label %if.then842, !dbg !3020

for.body901.preheader:                            ; preds = %if.end837
    #dbg_value(i64 0, !2591, !DIExpression(), !3102)
  %arrayidx911 = getelementptr inbounds i8, ptr %h, i64 25542, !dbg !3103
  store i16 0, ptr %arrayidx911, align 2, !dbg !3105
    #dbg_value(i64 1, !2591, !DIExpression(), !3102)
  %arrayidx911.1 = getelementptr inbounds i8, ptr %h, i64 25558, !dbg !3103
  store i16 0, ptr %arrayidx911.1, align 2, !dbg !3105
    #dbg_value(i64 2, !2591, !DIExpression(), !3102)
  %arrayidx911.2 = getelementptr inbounds i8, ptr %h, i64 25574, !dbg !3103
  store i16 0, ptr %arrayidx911.2, align 2, !dbg !3105
    #dbg_value(i64 3, !2591, !DIExpression(), !3102)
  %arrayidx911.3 = getelementptr inbounds i8, ptr %h, i64 25590, !dbg !3103
  store i16 0, ptr %arrayidx911.3, align 2, !dbg !3105
    #dbg_value(i64 4, !2591, !DIExpression(), !3102)
  br label %if.end917, !dbg !3106

if.then842:                                       ; preds = %if.end837
  %arrayidx844 = getelementptr inbounds [8 x [2 x i8]], ptr %193, i64 %idxprom843, !dbg !3107
  %arrayidx845 = getelementptr inbounds i8, ptr %arrayidx844, i64 8, !dbg !3107
  %195 = load i16, ptr %arrayidx845, align 2, !dbg !3107
  %arrayidx854 = getelementptr inbounds i8, ptr %h, i64 25542, !dbg !3107
  store i16 %195, ptr %arrayidx854, align 2, !dbg !3107
  %arrayidx858 = getelementptr inbounds i8, ptr %arrayidx844, i64 10, !dbg !3109
  %196 = load i16, ptr %arrayidx858, align 2, !dbg !3109
  %arrayidx867 = getelementptr inbounds i8, ptr %h, i64 25558, !dbg !3109
  store i16 %196, ptr %arrayidx867, align 2, !dbg !3109
  %arrayidx871 = getelementptr inbounds i8, ptr %arrayidx844, i64 12, !dbg !3110
  %197 = load i16, ptr %arrayidx871, align 2, !dbg !3110
  %arrayidx880 = getelementptr inbounds i8, ptr %h, i64 25574, !dbg !3110
  store i16 %197, ptr %arrayidx880, align 2, !dbg !3110
  %arrayidx884 = getelementptr inbounds i8, ptr %arrayidx844, i64 6, !dbg !3111
  %198 = load i16, ptr %arrayidx884, align 2, !dbg !3111
  %arrayidx893 = getelementptr inbounds i8, ptr %h, i64 25590, !dbg !3111
  store i16 %198, ptr %arrayidx893, align 2, !dbg !3111
  br label %if.end917, !dbg !3112

if.end917:                                        ; preds = %for.body901.preheader, %if.then842, %if.end801
    #dbg_value(i64 0, !2574, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3019)
  br i1 %cmp493, label %for.body499.1, label %if.end1008, !dbg !3113, !llvm.loop !3114

for.body499.1:                                    ; preds = %if.end917
    #dbg_value(i64 1, !2574, !DIExpression(), !3019)
  %arrayidx504.1 = getelementptr inbounds i8, ptr %h, i64 16680, !dbg !3024
  %199 = load ptr, ptr %arrayidx504.1, align 8, !dbg !3024
    #dbg_value(ptr %199, !2576, !DIExpression(), !3025)
  %arrayidx509.1 = getelementptr inbounds i8, ptr %h, i64 16712, !dbg !3026
  %200 = load ptr, ptr %arrayidx509.1, align 8, !dbg !3026
    #dbg_value(ptr %200, !2579, !DIExpression(), !3025)
    #dbg_value(i32 3, !2580, !DIExpression(), !3025)
  br i1 %172, label %if.else538.1, label %if.then516.1, !dbg !3023

if.then516.1:                                     ; preds = %for.body499.1
  %201 = getelementptr i8, ptr %200, i64 %167, !dbg !3027
  %arrayidx519.1 = getelementptr i8, ptr %201, i64 -1, !dbg !3027
  %202 = load i8, ptr %arrayidx519.1, align 1, !dbg !3027
  %arrayidx526.1 = getelementptr inbounds i8, ptr %h, i64 25163, !dbg !3030
  store i8 %202, ptr %arrayidx526.1, align 1, !dbg !3031
  %203 = getelementptr [2 x i16], ptr %199, i64 %168, !dbg !3032
  %arrayidx529.1 = getelementptr i8, ptr %203, i64 -4, !dbg !3032
  %204 = load i32, ptr %arrayidx529.1, align 4, !dbg !3032
  br label %if.end554.1, !dbg !3033

if.else538.1:                                     ; preds = %for.body499.1
  %arrayidx545.1 = getelementptr inbounds i8, ptr %h, i64 25163, !dbg !3034
  store i8 -2, ptr %arrayidx545.1, align 1, !dbg !3036
  br label %if.end554.1

if.end554.1:                                      ; preds = %if.else538.1, %if.then516.1
  %.sink.1 = phi i32 [ 0, %if.else538.1 ], [ %204, %if.then516.1 ]
  %arrayidx552.1 = getelementptr inbounds i8, ptr %h, i64 25372, !dbg !3037
  store i32 %.sink.1, ptr %arrayidx552.1, align 4, !dbg !3037
    #dbg_value(i32 4, !2580, !DIExpression(), !3025)
  br i1 %171, label %if.else610.1, label %if.then560.1, !dbg !3038

if.then560.1:                                     ; preds = %if.end554.1
  %arrayidx563.1 = getelementptr inbounds i8, ptr %200, i64 %167, !dbg !3039
  %205 = load i8, ptr %arrayidx563.1, align 1, !dbg !3039
  %arrayidx571.1 = getelementptr inbounds i8, ptr %h, i64 25165, !dbg !3042
  store i8 %205, ptr %arrayidx571.1, align 1, !dbg !3043
  %arrayidx579.1 = getelementptr inbounds i8, ptr %h, i64 25164, !dbg !3044
  store i8 %205, ptr %arrayidx579.1, align 1, !dbg !3045
  %arrayidx582.1 = getelementptr i8, ptr %arrayidx563.1, i64 1, !dbg !3046
  %206 = load i8, ptr %arrayidx582.1, align 1, !dbg !3046
  %arrayidx590.1 = getelementptr inbounds i8, ptr %h, i64 25167, !dbg !3047
  store i8 %206, ptr %arrayidx590.1, align 1, !dbg !3048
  %arrayidx598.1 = getelementptr inbounds i8, ptr %h, i64 25166, !dbg !3049
  store i8 %206, ptr %arrayidx598.1, align 1, !dbg !3050
  %arrayidx605.1 = getelementptr inbounds i8, ptr %h, i64 25376, !dbg !3051
  %arrayidx608.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %168, !dbg !3051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx605.1, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx608.1, i64 16, i1 false), !dbg !3051
  br label %if.end627.1, !dbg !3052

if.else610.1:                                     ; preds = %if.end554.1
  %arrayidx617.1 = getelementptr inbounds i8, ptr %h, i64 25376, !dbg !3053
  %arrayidx626.1 = getelementptr inbounds i8, ptr %h, i64 25164, !dbg !3055
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx617.1, i8 0, i64 16, i1 false), !dbg !3056
  store i32 -16843010, ptr %arrayidx626.1, align 1, !dbg !3057
  br label %if.end627.1

if.end627.1:                                      ; preds = %if.else610.1, %if.then560.1
    #dbg_value(i32 8, !2580, !DIExpression(), !3025)
  br i1 %170, label %if.else657.1, label %if.then634.1, !dbg !3021

if.then634.1:                                     ; preds = %if.end627.1
  %207 = getelementptr i8, ptr %200, i64 %167, !dbg !3058
  %arrayidx637.1 = getelementptr i8, ptr %207, i64 2, !dbg !3058
  %208 = load i8, ptr %arrayidx637.1, align 1, !dbg !3058
  %arrayidx644.1 = getelementptr inbounds i8, ptr %h, i64 25168, !dbg !3061
  store i8 %208, ptr %arrayidx644.1, align 1, !dbg !3062
  %209 = getelementptr [2 x i16], ptr %199, i64 %168, !dbg !3063
  %arrayidx647.1 = getelementptr i8, ptr %209, i64 16, !dbg !3063
  %210 = load i32, ptr %arrayidx647.1, align 4, !dbg !3063
  %arrayidx655.1 = getelementptr inbounds i8, ptr %h, i64 25392, !dbg !3063
  store i32 %210, ptr %arrayidx655.1, align 4, !dbg !3063
  br label %if.end665.1, !dbg !3064

if.else657.1:                                     ; preds = %if.end627.1
  %arrayidx664.1 = getelementptr inbounds i8, ptr %h, i64 25168, !dbg !3065
  store i8 -2, ptr %arrayidx664.1, align 1, !dbg !3066
  br label %if.end665.1

if.end665.1:                                      ; preds = %if.else657.1, %if.then634.1
    #dbg_value(i32 11, !2580, !DIExpression(), !3025)
  br i1 %169, label %for.body778.preheader.1, label %if.then671.1, !dbg !3067

if.then671.1:                                     ; preds = %if.end665.1
  %211 = load i32, ptr %i_b8_xy.i, align 4, !dbg !3076
  %sub673.1 = add nsw i32 %211, -1, !dbg !3077
    #dbg_value(i32 %sub673.1, !2581, !DIExpression(), !3078)
  %212 = load i32, ptr %i_b4_xy.i, align 16, !dbg !3079
  %sub675.1 = add nsw i32 %212, -1, !dbg !3080
    #dbg_value(i32 %sub675.1, !2584, !DIExpression(), !3078)
  %idxprom678.1 = sext i32 %sub673.1 to i64, !dbg !3081
  %arrayidx679.1 = getelementptr inbounds i8, ptr %200, i64 %idxprom678.1, !dbg !3081
  %213 = load i8, ptr %arrayidx679.1, align 1, !dbg !3081
  %arrayidx687.1 = getelementptr inbounds i8, ptr %h, i64 25179, !dbg !3082
  store i8 %213, ptr %arrayidx687.1, align 1, !dbg !3083
  %arrayidx695.1 = getelementptr inbounds i8, ptr %h, i64 25171, !dbg !3084
  store i8 %213, ptr %arrayidx695.1, align 1, !dbg !3085
  %add697.1 = add nsw i32 %sub673.1, %159, !dbg !3086
  %idxprom698.1 = sext i32 %add697.1 to i64, !dbg !3087
  %arrayidx699.1 = getelementptr inbounds i8, ptr %200, i64 %idxprom698.1, !dbg !3087
  %214 = load i8, ptr %arrayidx699.1, align 1, !dbg !3087
  %arrayidx707.1 = getelementptr inbounds i8, ptr %h, i64 25195, !dbg !3088
  store i8 %214, ptr %arrayidx707.1, align 1, !dbg !3089
  %arrayidx715.1 = getelementptr inbounds i8, ptr %h, i64 25187, !dbg !3090
  store i8 %214, ptr %arrayidx715.1, align 1, !dbg !3091
  %idxprom718.1 = sext i32 %sub675.1 to i64, !dbg !3092
  %arrayidx719.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom718.1, !dbg !3092
  %215 = load i32, ptr %arrayidx719.1, align 4, !dbg !3092
  %arrayidx728.1 = getelementptr inbounds i8, ptr %h, i64 25404, !dbg !3092
  store i32 %215, ptr %arrayidx728.1, align 4, !dbg !3092
  %add731.1 = add nsw i32 %sub675.1, %160, !dbg !3093
  %idxprom732.1 = sext i32 %add731.1 to i64, !dbg !3093
  %arrayidx733.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom732.1, !dbg !3093
  %216 = load i32, ptr %arrayidx733.1, align 4, !dbg !3093
  %arrayidx742.1 = getelementptr inbounds i8, ptr %h, i64 25436, !dbg !3093
  store i32 %216, ptr %arrayidx742.1, align 4, !dbg !3093
  %add745.1 = add nsw i32 %sub675.1, %mul744, !dbg !3094
  %idxprom746.1 = sext i32 %add745.1 to i64, !dbg !3094
  %arrayidx747.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom746.1, !dbg !3094
  %217 = load i32, ptr %arrayidx747.1, align 4, !dbg !3094
  %arrayidx756.1 = getelementptr inbounds i8, ptr %h, i64 25468, !dbg !3094
  store i32 %217, ptr %arrayidx756.1, align 4, !dbg !3094
  %add759.1 = add nsw i32 %sub675.1, %mul758, !dbg !3095
  %idxprom760.1 = sext i32 %add759.1 to i64, !dbg !3095
  %arrayidx761.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom760.1, !dbg !3095
  %218 = load i32, ptr %arrayidx761.1, align 4, !dbg !3095
  %arrayidx770.1 = getelementptr inbounds i8, ptr %h, i64 25500, !dbg !3095
  store i32 %218, ptr %arrayidx770.1, align 4, !dbg !3095
  br label %if.end801.1, !dbg !3096

for.body778.preheader.1:                          ; preds = %if.end665.1
    #dbg_value(i64 0, !2585, !DIExpression(), !3068)
  %arrayidx787.11512 = getelementptr inbounds i8, ptr %h, i64 25171, !dbg !3069
  store i8 -2, ptr %arrayidx787.11512, align 1, !dbg !3072
  %arrayidx796.11513 = getelementptr inbounds i8, ptr %h, i64 25404, !dbg !3073
  store i32 0, ptr %arrayidx796.11513, align 4, !dbg !3074
    #dbg_value(i64 1, !2585, !DIExpression(), !3068)
  %arrayidx787.1.1 = getelementptr inbounds i8, ptr %h, i64 25179, !dbg !3069
  store i8 -2, ptr %arrayidx787.1.1, align 1, !dbg !3072
  %arrayidx796.1.1 = getelementptr inbounds i8, ptr %h, i64 25436, !dbg !3073
  store i32 0, ptr %arrayidx796.1.1, align 4, !dbg !3074
    #dbg_value(i64 2, !2585, !DIExpression(), !3068)
  %arrayidx787.2.1 = getelementptr inbounds i8, ptr %h, i64 25187, !dbg !3069
  store i8 -2, ptr %arrayidx787.2.1, align 1, !dbg !3072
  %arrayidx796.2.1 = getelementptr inbounds i8, ptr %h, i64 25468, !dbg !3073
  store i32 0, ptr %arrayidx796.2.1, align 4, !dbg !3074
    #dbg_value(i64 3, !2585, !DIExpression(), !3068)
  %arrayidx787.3.1 = getelementptr inbounds i8, ptr %h, i64 25195, !dbg !3069
  store i8 -2, ptr %arrayidx787.3.1, align 1, !dbg !3072
  %arrayidx796.3.1 = getelementptr inbounds i8, ptr %h, i64 25500, !dbg !3073
  store i32 0, ptr %arrayidx796.3.1, align 4, !dbg !3074
    #dbg_value(i64 4, !2585, !DIExpression(), !3068)
  br label %if.end801.1, !dbg !3075

if.end801.1:                                      ; preds = %for.body778.preheader.1, %if.then671.1
  br i1 %tobool802.not, label %if.end917.1, label %if.then803.1, !dbg !3075

if.then803.1:                                     ; preds = %if.end801.1
  %arrayidx808.1 = getelementptr inbounds i8, ptr %h, i64 16696, !dbg !3097
  %219 = load ptr, ptr %arrayidx808.1, align 8, !dbg !3097
    #dbg_value(ptr %219, !2588, !DIExpression(), !3098)
  br i1 %171, label %if.end837.1, label %if.then813.1, !dbg !3022

if.then813.1:                                     ; preds = %if.then803.1
  %arrayidx815.1 = getelementptr inbounds [8 x [2 x i8]], ptr %219, i64 %idxprom814, !dbg !3099
  %220 = load i64, ptr %arrayidx815.1, align 8, !dbg !3099
  br label %if.end837.1, !dbg !3099

if.end837.1:                                      ; preds = %if.then813.1, %if.then803.1
  %.sink1506.1 = phi i64 [ %220, %if.then813.1 ], [ 0, %if.then803.1 ]
  %arrayidx835.1 = getelementptr inbounds i8, ptr %h, i64 25608, !dbg !3101
  store i64 %.sink1506.1, ptr %arrayidx835.1, align 2, !dbg !3101
  br i1 %169, label %for.body901.preheader.1, label %if.then842.1, !dbg !3020

if.then842.1:                                     ; preds = %if.end837.1
  %arrayidx844.1 = getelementptr inbounds [8 x [2 x i8]], ptr %219, i64 %idxprom843, !dbg !3107
  %arrayidx845.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 8, !dbg !3107
  %221 = load i16, ptr %arrayidx845.1, align 2, !dbg !3107
  %arrayidx854.1 = getelementptr inbounds i8, ptr %h, i64 25622, !dbg !3107
  store i16 %221, ptr %arrayidx854.1, align 2, !dbg !3107
  %arrayidx858.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 10, !dbg !3109
  %222 = load i16, ptr %arrayidx858.1, align 2, !dbg !3109
  %arrayidx867.1 = getelementptr inbounds i8, ptr %h, i64 25638, !dbg !3109
  store i16 %222, ptr %arrayidx867.1, align 2, !dbg !3109
  %arrayidx871.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 12, !dbg !3110
  %223 = load i16, ptr %arrayidx871.1, align 2, !dbg !3110
  %arrayidx880.1 = getelementptr inbounds i8, ptr %h, i64 25654, !dbg !3110
  store i16 %223, ptr %arrayidx880.1, align 2, !dbg !3110
  %arrayidx884.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 6, !dbg !3111
  %224 = load i16, ptr %arrayidx884.1, align 2, !dbg !3111
  %arrayidx893.1 = getelementptr inbounds i8, ptr %h, i64 25670, !dbg !3111
  store i16 %224, ptr %arrayidx893.1, align 2, !dbg !3111
  br label %if.end917.1, !dbg !3112

for.body901.preheader.1:                          ; preds = %if.end837.1
    #dbg_value(i64 0, !2591, !DIExpression(), !3102)
  %arrayidx911.11514 = getelementptr inbounds i8, ptr %h, i64 25622, !dbg !3103
  store i16 0, ptr %arrayidx911.11514, align 2, !dbg !3105
    #dbg_value(i64 1, !2591, !DIExpression(), !3102)
  %arrayidx911.1.1 = getelementptr inbounds i8, ptr %h, i64 25638, !dbg !3103
  store i16 0, ptr %arrayidx911.1.1, align 2, !dbg !3105
    #dbg_value(i64 2, !2591, !DIExpression(), !3102)
  %arrayidx911.2.1 = getelementptr inbounds i8, ptr %h, i64 25654, !dbg !3103
  store i16 0, ptr %arrayidx911.2.1, align 2, !dbg !3105
    #dbg_value(i64 3, !2591, !DIExpression(), !3102)
  %arrayidx911.3.1 = getelementptr inbounds i8, ptr %h, i64 25670, !dbg !3103
  store i16 0, ptr %arrayidx911.3.1, align 2, !dbg !3105
    #dbg_value(i64 4, !2591, !DIExpression(), !3102)
  br label %if.end917.1, !dbg !3106

if.end917.1:                                      ; preds = %for.body901.preheader.1, %if.then842.1, %if.end801.1
    #dbg_value(i64 1, !2574, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3019)
  br i1 %cmp493, label %if.then925, label %if.end1008, !dbg !3116

if.then925:                                       ; preds = %if.end917.1
  %bipred_weight_buf = getelementptr inbounds i8, ptr %h, i64 26368, !dbg !3117
  %225 = load i32, ptr %b_interlaced.i, align 4, !dbg !3118
  %and929 = and i32 %mb_y, 1, !dbg !3119
  %and930 = and i32 %and929, %225, !dbg !3120
  %idxprom931 = zext nneg i32 %and930 to i64, !dbg !3121
  %arrayidx932 = getelementptr inbounds [2 x [32 x [4 x i8]]], ptr %bipred_weight_buf, i64 0, i64 %idxprom931, !dbg !3121
  %bipred_weight = getelementptr inbounds i8, ptr %h, i64 26624, !dbg !3122
  store ptr %arrayidx932, ptr %bipred_weight, align 16, !dbg !3123
  %dist_scale_factor_buf = getelementptr inbounds i8, ptr %h, i64 25848, !dbg !3124
  %arrayidx941 = getelementptr inbounds [2 x [32 x [4 x i16]]], ptr %dist_scale_factor_buf, i64 0, i64 %idxprom931, !dbg !3125
  %dist_scale_factor = getelementptr inbounds i8, ptr %h, i64 26360, !dbg !3126
  store ptr %arrayidx941, ptr %dist_scale_factor, align 8, !dbg !3127
  br i1 %tobool802.not, label %if.end1018, label %if.then947, !dbg !3128

if.then947:                                       ; preds = %if.then925
    #dbg_value(ptr %h, !3129, !DIExpression(), !3140)
    #dbg_value(i32 0, !3135, !DIExpression(), !3140)
    #dbg_value(i32 0, !3136, !DIExpression(), !3140)
    #dbg_value(i32 4, !3137, !DIExpression(), !3140)
    #dbg_value(i32 4, !3138, !DIExpression(), !3140)
    #dbg_value(i32 0, !3139, !DIExpression(), !3140)
  %arrayidx.i1462 = getelementptr inbounds i8, ptr %h, i64 25692, !dbg !3142
    #dbg_value(ptr %arrayidx.i1462, !3143, !DIExpression(), !3156)
    #dbg_value(i32 4, !3148, !DIExpression(), !3156)
    #dbg_value(i32 4, !3149, !DIExpression(), !3156)
    #dbg_value(i32 0, !3151, !DIExpression(), !3156)
    #dbg_value(ptr %arrayidx.i1462, !3152, !DIExpression(), !3156)
    #dbg_value(i16 0, !3153, !DIExpression(), !3156)
    #dbg_value(i32 0, !3154, !DIExpression(), !3156)
    #dbg_value(i64 0, !3155, !DIExpression(), !3156)
    #dbg_value(i32 8, !3150, !DIExpression(), !3156)
  store i32 0, ptr %arrayidx.i1462, align 4, !dbg !3158
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %h, i64 25700, !dbg !3162
  store i32 0, ptr %add.ptr49.i.i, align 4, !dbg !3163
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %h, i64 25708, !dbg !3164
  store i32 0, ptr %add.ptr56.i.i, align 4, !dbg !3165
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %h, i64 25716, !dbg !3166
  store i32 0, ptr %add.ptr59.i.i, align 4, !dbg !3167
  br i1 %169, label %cond.end, label %cond.true, !dbg !3168

cond.true:                                        ; preds = %if.then947
  %skipbp953 = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !3169
  %226 = load ptr, ptr %skipbp953, align 16, !dbg !3169
  %arrayidx955 = getelementptr inbounds i8, ptr %226, i64 %idxprom843, !dbg !3170
  %227 = load i8, ptr %arrayidx955, align 1, !dbg !3170
  br label %cond.end, !dbg !3168

cond.end:                                         ; preds = %if.then947, %cond.true
  %cond = phi i8 [ %227, %cond.true ], [ 0, %if.then947 ], !dbg !3168
    #dbg_value(i32 poison, !2594, !DIExpression(), !3171)
  %conv960 = and i8 %cond, 2, !dbg !3172
  %arrayidx965 = getelementptr inbounds i8, ptr %h, i64 25691, !dbg !3173
  store i8 %conv960, ptr %arrayidx965, align 1, !dbg !3174
  %conv968 = and i8 %cond, 8, !dbg !3175
  %arrayidx974 = getelementptr inbounds i8, ptr %h, i64 25707, !dbg !3176
  store i8 %conv968, ptr %arrayidx974, align 1, !dbg !3177
  br i1 %171, label %cond.end986, label %cond.true979, !dbg !3178

cond.true979:                                     ; preds = %cond.end
  %skipbp981 = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !3179
  %228 = load ptr, ptr %skipbp981, align 16, !dbg !3179
  %arrayidx983 = getelementptr inbounds i8, ptr %228, i64 %idxprom814, !dbg !3180
  %229 = load i8, ptr %arrayidx983, align 1, !dbg !3180
  br label %cond.end986, !dbg !3178

cond.end986:                                      ; preds = %cond.end, %cond.true979
  %cond987 = phi i8 [ %229, %cond.true979 ], [ 0, %cond.end ], !dbg !3178
    #dbg_value(i32 poison, !2594, !DIExpression(), !3171)
  %conv991 = and i8 %cond987, 4, !dbg !3181
  %arrayidx997 = getelementptr inbounds i8, ptr %h, i64 25684, !dbg !3182
  store i8 %conv991, ptr %arrayidx997, align 1, !dbg !3183
  %conv1000 = and i8 %cond987, 8, !dbg !3184
  %arrayidx1006 = getelementptr inbounds i8, ptr %h, i64 25686, !dbg !3185
  store i8 %conv1000, ptr %arrayidx1006, align 1, !dbg !3186
  br label %if.end1018, !dbg !3187

if.end1008:                                       ; preds = %if.end917, %if.end917.1
  %cmp1011 = icmp eq i32 %158, 0, !dbg !3188
  br i1 %cmp1011, label %if.then1013, label %if.end1018, !dbg !3190

if.then1013:                                      ; preds = %if.end1008
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764, !dbg !3191
  tail call void @x264_mb_predict_mv_pskip(ptr noundef nonnull %h, ptr noundef nonnull %pskip_mv) #13, !dbg !3192
  br label %if.end1018, !dbg !3192

if.end1018:                                       ; preds = %cond.end986, %if.then925, %if.end1008, %if.then1013, %if.end479
  %230 = load i32, ptr %i_neighbour_intra.i, align 4, !dbg !3193
  %and1020 = and i32 %230, 11, !dbg !3194
  %and1023 = shl i32 %230, 1, !dbg !3195
  %cond1025 = and i32 %and1023, 4, !dbg !3195
  %or = or disjoint i32 %cond1025, %and1020, !dbg !3196
  %i_neighbour8 = getelementptr inbounds i8, ptr %h, i64 16492, !dbg !3197
  store i32 %or, ptr %i_neighbour8, align 4, !dbg !3198
  %i_neighbour4 = getelementptr inbounds i8, ptr %h, i64 16508, !dbg !3199
  store i32 %or, ptr %i_neighbour4, align 4, !dbg !3200
  %and1032 = and i32 %230, 2, !dbg !3201
  %tobool1033.not = icmp eq i32 %and1032, 0, !dbg !3202
  %or1035 = select i1 %tobool1033.not, i32 1, i32 15, !dbg !3203
  %arrayidx1038 = getelementptr inbounds i8, ptr %h, i64 16512, !dbg !3204
  store i32 %or1035, ptr %arrayidx1038, align 4, !dbg !3205
  %arrayidx1041 = getelementptr inbounds i8, ptr %h, i64 16524, !dbg !3206
  store i32 %or1035, ptr %arrayidx1041, align 4, !dbg !3207
  %and1044 = and i32 %230, 1, !dbg !3208
  %tobool1045.not = icmp eq i32 %and1044, 0, !dbg !3209
  %or1047 = select i1 %tobool1045.not, i32 6, i32 15, !dbg !3210
  %arrayidx1050 = getelementptr inbounds i8, ptr %h, i64 16500, !dbg !3211
  store i32 %or1047, ptr %arrayidx1050, align 4, !dbg !3212
  %arrayidx1053 = getelementptr inbounds i8, ptr %h, i64 16548, !dbg !3213
  store i32 %or1047, ptr %arrayidx1053, align 4, !dbg !3214
  %arrayidx1056 = getelementptr inbounds i8, ptr %h, i64 16540, !dbg !3215
  store i32 %or1047, ptr %arrayidx1056, align 4, !dbg !3216
  %arrayidx1059 = getelementptr inbounds i8, ptr %h, i64 16516, !dbg !3217
  store i32 %or1047, ptr %arrayidx1059, align 4, !dbg !3218
  %and1062 = and i32 %230, 4, !dbg !3219
  %cond1068 = select i1 %tobool1033.not, i32 0, i32 10, !dbg !3220
  %or1063 = or disjoint i32 %and1062, %cond1068, !dbg !3221
  %or1069 = or disjoint i32 %or1063, 1, !dbg !3221
  %arrayidx1072 = getelementptr inbounds i8, ptr %h, i64 16496, !dbg !3222
  store i32 %or1069, ptr %arrayidx1072, align 4, !dbg !3223
  %arrayidx1075 = getelementptr inbounds i8, ptr %h, i64 16528, !dbg !3224
  store i32 %or1069, ptr %arrayidx1075, align 4, !dbg !3225
  ret void, !dbg !3226
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr nocapture noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %i) unnamed_addr #7 !dbg !3227 {
entry:
  %ref_pix_offset = alloca [2 x i32], align 4, !DIAssignID !3262
    #dbg_assign(i1 undef, !3241, !DIExpression(), !3262, ptr %ref_pix_offset, !DIExpression(), !3263)
    #dbg_value(ptr %h, !3231, !DIExpression(), !3263)
    #dbg_value(i32 %mb_x, !3232, !DIExpression(), !3263)
    #dbg_value(i32 %mb_y, !3233, !DIExpression(), !3263)
    #dbg_value(i32 %i, !3234, !DIExpression(), !3263)
  %cmp = icmp eq i32 %i, 0, !dbg !3264
  %cond = select i1 %cmp, i32 16, i32 8, !dbg !3265
    #dbg_value(i32 %cond, !3235, !DIExpression(), !3263)
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !3266
  %0 = load ptr, ptr %fdec, align 16, !dbg !3266
  %i_stride1 = getelementptr inbounds i8, ptr %0, i64 104, !dbg !3267
  %tobool = icmp ne i32 %i, 0, !dbg !3268
  %lnot.ext = zext i1 %tobool to i32, !dbg !3269
  %idxprom = zext i1 %tobool to i64, !dbg !3270
  %arrayidx = getelementptr inbounds [3 x i32], ptr %i_stride1, i64 0, i64 %idxprom, !dbg !3270
  %1 = load i32, ptr %arrayidx, align 4, !dbg !3270
    #dbg_value(i32 %1, !3236, !DIExpression(), !3263)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3271
  %2 = load i32, ptr %b_interlaced, align 4, !dbg !3271
  %shl = shl i32 %1, %2, !dbg !3272
    #dbg_value(i32 %shl, !3237, !DIExpression(), !3263)
  %tobool5.not = icmp eq i32 %2, 0, !dbg !3273
  br i1 %tobool5.not, label %cond.false, label %cond.true, !dbg !3273

cond.true:                                        ; preds = %entry
  %and = and i32 %mb_y, -2, !dbg !3274
  %mul = mul nsw i32 %1, %and, !dbg !3275
  %add = add nsw i32 %mul, %mb_x, !dbg !3276
  %3 = select i1 %cmp, i32 4, i32 3, !dbg !3277
  %mul6 = shl i32 %add, %3, !dbg !3277
  %4 = trunc i32 %mb_y to i1, !dbg !3278
  %mul8 = select i1 %4, i32 %1, i32 0, !dbg !3278
  %add9 = add nsw i32 %mul6, %mul8, !dbg !3279
  br label %cond.end, !dbg !3273

cond.false:                                       ; preds = %entry
  %mul10 = mul nsw i32 %1, %mb_y, !dbg !3280
  %add11 = add nsw i32 %mul10, %mb_x, !dbg !3281
  %5 = select i1 %cmp, i32 4, i32 3, !dbg !3282
  %mul12 = shl i32 %add11, %5, !dbg !3282
  br label %cond.end, !dbg !3273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %add9, %cond.true ], [ %mul12, %cond.false ], !dbg !3273
    #dbg_value(i32 %cond13, !3238, !DIExpression(), !3263)
  %plane = getelementptr inbounds i8, ptr %0, i64 152, !dbg !3283
  %idxprom15 = zext nneg i32 %i to i64, !dbg !3284
  %arrayidx16 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %idxprom15, !dbg !3284
  %6 = load ptr, ptr %arrayidx16, align 8, !dbg !3284
  %idxprom17 = sext i32 %cond13 to i64, !dbg !3284
  %arrayidx18 = getelementptr inbounds i8, ptr %6, i64 %idxprom17, !dbg !3284
    #dbg_value(ptr %arrayidx18, !3239, !DIExpression(), !3263)
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184, !dbg !3285
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !3286
  %7 = load i32, ptr %b_mbaff, align 4, !dbg !3286
  %and19 = and i32 %7, %mb_y, !dbg !3287
  %idxprom20 = sext i32 %and19 to i64, !dbg !3288
  %arrayidx23 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %idxprom20, i64 %idxprom15, !dbg !3288
  %8 = load ptr, ptr %arrayidx23, align 8, !dbg !3288
  %mul24 = shl nsw i32 %mb_x, 4, !dbg !3289
  %shr = ashr exact i32 %mul24, %lnot.ext, !dbg !3290
  %idxprom30 = sext i32 %shr to i64, !dbg !3288
  %arrayidx31 = getelementptr inbounds i8, ptr %8, i64 %idxprom30, !dbg !3288
    #dbg_value(ptr %arrayidx31, !3240, !DIExpression(), !3263)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref_pix_offset) #13, !dbg !3291
  store i32 %cond13, ptr %ref_pix_offset, align 4, !dbg !3292, !DIAssignID !3293
    #dbg_assign(i32 %cond13, !3241, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3293, ptr %ref_pix_offset, !DIExpression(), !3263)
  %arrayinit.element = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4, !dbg !3292
    #dbg_assign(i32 %cond13, !3241, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3294, ptr %arrayinit.element, !DIExpression(), !3263)
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704, !dbg !3295
    #dbg_value(ptr %fref0, !3242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3263)
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864, !dbg !3296
    #dbg_value(ptr %fref1, !3242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3263)
  br i1 %tobool5.not, label %if.end, label %if.then, !dbg !3297

if.then:                                          ; preds = %cond.end
  %and37 = shl i32 %mb_y, 1, !dbg !3298
  %mul38 = and i32 %and37, 2, !dbg !3298
  %sub = sub nsw i32 1, %mul38, !dbg !3300
  %mul39 = mul nsw i32 %1, %sub, !dbg !3301
  %add41 = add nsw i32 %cond13, %mul39, !dbg !3302
    #dbg_assign(i32 %add41, !3241, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3294, ptr %arrayinit.element, !DIExpression(), !3263)
  br label %if.end, !dbg !3303

if.end:                                           ; preds = %if.then, %cond.end
  %storemerge = phi i32 [ %add41, %if.then ], [ %cond13, %cond.end ], !dbg !3263
  store i32 %storemerge, ptr %arrayinit.element, align 4, !dbg !3263, !DIAssignID !3294
  %i_stride43 = getelementptr inbounds i8, ptr %h, i64 25008, !dbg !3304
  %arrayidx45 = getelementptr inbounds [3 x i32], ptr %i_stride43, i64 0, i64 %idxprom15, !dbg !3305
  store i32 %shl, ptr %arrayidx45, align 4, !dbg !3306
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !3307
  %9 = load ptr, ptr %fenc, align 8, !dbg !3307
  %plane46 = getelementptr inbounds i8, ptr %9, i64 152, !dbg !3308
  %arrayidx48 = getelementptr inbounds [3 x ptr], ptr %plane46, i64 0, i64 %idxprom15, !dbg !3309
  %10 = load ptr, ptr %arrayidx48, align 8, !dbg !3309
  %arrayidx50 = getelementptr inbounds i8, ptr %10, i64 %idxprom17, !dbg !3309
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368, !dbg !3310
  %arrayidx54 = getelementptr inbounds [3 x ptr], ptr %p_fenc_plane, i64 0, i64 %idxprom15, !dbg !3311
  store ptr %arrayidx50, ptr %arrayidx54, align 8, !dbg !3312
  %copy = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !3313
  %cond56 = select i1 %tobool, i64 3, i64 0, !dbg !3314
  %arrayidx58 = getelementptr inbounds [7 x ptr], ptr %copy, i64 0, i64 %cond56, !dbg !3315
  %11 = load ptr, ptr %arrayidx58, align 8, !dbg !3315
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344, !dbg !3316
  %arrayidx62 = getelementptr inbounds [3 x ptr], ptr %p_fenc, i64 0, i64 %idxprom15, !dbg !3317
  %12 = load ptr, ptr %arrayidx62, align 8, !dbg !3317
  tail call void %11(ptr noundef %12, i32 noundef 16, ptr noundef %arrayidx50, i32 noundef %shl, i32 noundef %cond) #13, !dbg !3315
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3318
  %arrayidx71 = getelementptr inbounds [3 x ptr], ptr %p_fdec, i64 0, i64 %idxprom15, !dbg !3319
  %13 = load ptr, ptr %arrayidx71, align 8, !dbg !3319
  %arrayidx72 = getelementptr inbounds i8, ptr %13, i64 -33, !dbg !3319
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx31, i64 -1, !dbg !3320
  %add74 = select i1 %cmp, i64 25, i64 13, !dbg !3321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %arrayidx72, ptr noundef nonnull align 1 dereferenceable(13) %add.ptr, i64 %add74, i1 false), !dbg !3322
  %14 = load i32, ptr %b_interlaced, align 4, !dbg !3323
  %tobool77.not = icmp eq i32 %14, 0, !dbg !3324
  br i1 %tobool77.not, label %if.end94, label %for.cond.preheader, !dbg !3325

for.cond.preheader:                               ; preds = %if.end
  %invariant.gep = getelementptr i8, ptr %arrayidx18, i64 -1, !dbg !3326
    #dbg_value(i32 0, !3243, !DIExpression(), !3327)
  %15 = sext i32 %shl to i64, !dbg !3326
  %wide.trip.count = zext nneg i32 %cond to i64, !dbg !3328
  br label %for.body, !dbg !3326

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next.3, %for.body ]
    #dbg_value(i64 %indvars.iv, !3243, !DIExpression(), !3327)
  %16 = mul nsw i64 %indvars.iv, %15, !dbg !3330
  %gep = getelementptr i8, ptr %invariant.gep, i64 %16, !dbg !3331
  %17 = load i8, ptr %gep, align 1, !dbg !3331
  %18 = load ptr, ptr %arrayidx71, align 8, !dbg !3332
  %19 = shl nsw i64 %indvars.iv, 5, !dbg !3333
  %20 = getelementptr i8, ptr %18, i64 %19, !dbg !3332
  %arrayidx93 = getelementptr i8, ptr %20, i64 -1, !dbg !3332
  store i8 %17, ptr %arrayidx93, align 1, !dbg !3334
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !3335
    #dbg_value(i64 %indvars.iv.next, !3243, !DIExpression(), !3327)
  %21 = mul nsw i64 %indvars.iv.next, %15, !dbg !3330
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %21, !dbg !3331
  %22 = load i8, ptr %gep.1, align 1, !dbg !3331
  %23 = load ptr, ptr %arrayidx71, align 8, !dbg !3332
  %24 = shl nsw i64 %indvars.iv.next, 5, !dbg !3333
  %25 = getelementptr i8, ptr %23, i64 %24, !dbg !3332
  %arrayidx93.1 = getelementptr i8, ptr %25, i64 -1, !dbg !3332
  store i8 %22, ptr %arrayidx93.1, align 1, !dbg !3334
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2, !dbg !3335
    #dbg_value(i64 %indvars.iv.next.1, !3243, !DIExpression(), !3327)
  %26 = mul nsw i64 %indvars.iv.next.1, %15, !dbg !3330
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %26, !dbg !3331
  %27 = load i8, ptr %gep.2, align 1, !dbg !3331
  %28 = load ptr, ptr %arrayidx71, align 8, !dbg !3332
  %29 = shl nsw i64 %indvars.iv.next.1, 5, !dbg !3333
  %30 = getelementptr i8, ptr %28, i64 %29, !dbg !3332
  %arrayidx93.2 = getelementptr i8, ptr %30, i64 -1, !dbg !3332
  store i8 %27, ptr %arrayidx93.2, align 1, !dbg !3334
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3, !dbg !3335
    #dbg_value(i64 %indvars.iv.next.2, !3243, !DIExpression(), !3327)
  %31 = mul nsw i64 %indvars.iv.next.2, %15, !dbg !3330
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %31, !dbg !3331
  %32 = load i8, ptr %gep.3, align 1, !dbg !3331
  %33 = load ptr, ptr %arrayidx71, align 8, !dbg !3332
  %34 = shl nsw i64 %indvars.iv.next.2, 5, !dbg !3333
  %35 = getelementptr i8, ptr %33, i64 %34, !dbg !3332
  %arrayidx93.3 = getelementptr i8, ptr %35, i64 -1, !dbg !3332
  store i8 %32, ptr %arrayidx93.3, align 1, !dbg !3334
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4, !dbg !3335
    #dbg_value(i64 %indvars.iv.next.3, !3243, !DIExpression(), !3327)
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count, !dbg !3328
  br i1 %exitcond.not.3, label %if.end94, label %for.body, !dbg !3326, !llvm.loop !3336

if.end94:                                         ; preds = %for.body, %if.end
    #dbg_value(i32 0, !3246, !DIExpression(), !3338)
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416
  %36 = load i32, ptr %i_fref, align 8
  %cmp100390 = icmp sgt i32 %36, 0, !dbg !3339
  br i1 %cmp100390, label %for.body103.lr.ph, label %for.cond.cleanup102, !dbg !3340

for.body103.lr.ph:                                ; preds = %if.end94
  %37 = load i32, ptr %b_interlaced, align 4
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424
  %add127 = add nuw nsw i32 %i, 3
  %cond129 = select i1 %cmp, i32 0, i32 %add127
  %idxprom130 = zext nneg i32 %cond129 to i64
  %weight = getelementptr inbounds i8, ptr %h, i64 7584
  %p_fref_w = getelementptr inbounds i8, ptr %h, i64 24496
  %wide.trip.count412 = zext nneg i32 %36 to i64, !dbg !3339
  br i1 %cmp, label %for.body103.us, label %for.body103.preheader

for.body103.preheader:                            ; preds = %for.body103.lr.ph
  %xtraiter = and i64 %wide.trip.count412, 1, !dbg !3340
  %38 = icmp eq i32 %36, 1, !dbg !3340
  br i1 %38, label %for.cond.cleanup102.loopexit433.unr-lcssa, label %for.body103.preheader.new, !dbg !3340

for.body103.preheader.new:                        ; preds = %for.body103.preheader
  %unroll_iter = and i64 %wide.trip.count412, 2147483646, !dbg !3340
  %39 = load i32, ptr %ref_pix_offset, align 4
  %idxprom116 = sext i32 %39 to i64
  %arrayidx115.1 = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4
  %40 = load i32, ptr %arrayidx115.1, align 4
  %idxprom116.1 = sext i32 %40 to i64
  br label %for.body103, !dbg !3340

for.body103.us:                                   ; preds = %for.body103.lr.ph, %for.inc199.us
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %for.inc199.us ], [ 0, %for.body103.lr.ph ]
    #dbg_value(i64 %indvars.iv409, !3246, !DIExpression(), !3338)
  %41 = trunc nuw nsw i64 %indvars.iv409 to i32, !dbg !3341
  %shr107.us = lshr i32 %41, %37, !dbg !3341
  %idxprom108.us = zext nneg i32 %shr107.us to i64, !dbg !3342
  %arrayidx109.us = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.us, !dbg !3342
  %42 = load ptr, ptr %arrayidx109.us, align 8, !dbg !3342
  %plane110.us = getelementptr inbounds i8, ptr %42, i64 152, !dbg !3343
  %arrayidx112.us = getelementptr inbounds [3 x ptr], ptr %plane110.us, i64 0, i64 %idxprom15, !dbg !3342
  %43 = load ptr, ptr %arrayidx112.us, align 8, !dbg !3342
  %and113.us = and i64 %indvars.iv409, 1, !dbg !3344
  %arrayidx115.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and113.us, !dbg !3345
  %44 = load i32, ptr %arrayidx115.us, align 4, !dbg !3345
  %idxprom116.us = sext i32 %44 to i64, !dbg !3342
  %arrayidx117.us = getelementptr inbounds i8, ptr %43, i64 %idxprom116.us, !dbg !3342
  %arrayidx131.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 %idxprom130, !dbg !3346
  store ptr %arrayidx117.us, ptr %arrayidx131.us, align 8, !dbg !3347
    #dbg_value(i64 1, !3248, !DIExpression(), !3348)
  %45 = load ptr, ptr %arrayidx109.us, align 8, !dbg !3349
  %arrayidx147.us = getelementptr inbounds i8, ptr %45, i64 184, !dbg !3349
  %46 = load ptr, ptr %arrayidx147.us, align 8, !dbg !3349
  %arrayidx152.us = getelementptr inbounds i8, ptr %46, i64 %idxprom116.us, !dbg !3349
  %arrayidx160.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 1, !dbg !3351
  store ptr %arrayidx152.us, ptr %arrayidx160.us, align 8, !dbg !3352
    #dbg_value(i64 2, !3248, !DIExpression(), !3348)
  %47 = load ptr, ptr %arrayidx109.us, align 8, !dbg !3349
  %arrayidx147.us.1 = getelementptr inbounds i8, ptr %47, i64 192, !dbg !3349
  %48 = load ptr, ptr %arrayidx147.us.1, align 8, !dbg !3349
  %arrayidx152.us.1 = getelementptr inbounds i8, ptr %48, i64 %idxprom116.us, !dbg !3349
  %arrayidx160.us.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 2, !dbg !3351
  store ptr %arrayidx152.us.1, ptr %arrayidx160.us.1, align 8, !dbg !3352
    #dbg_value(i64 3, !3248, !DIExpression(), !3348)
  %49 = load ptr, ptr %arrayidx109.us, align 8, !dbg !3349
  %arrayidx147.us.2 = getelementptr inbounds i8, ptr %49, i64 200, !dbg !3349
  %50 = load ptr, ptr %arrayidx147.us.2, align 8, !dbg !3349
  %arrayidx152.us.2 = getelementptr inbounds i8, ptr %50, i64 %idxprom116.us, !dbg !3349
  %arrayidx160.us.2 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 3, !dbg !3351
  store ptr %arrayidx152.us.2, ptr %arrayidx160.us.2, align 8, !dbg !3352
    #dbg_value(i64 4, !3248, !DIExpression(), !3348)
  %weightfn.us = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight, i64 0, i64 %indvars.iv409, i64 0, i32 5, !dbg !3353
  %51 = load ptr, ptr %weightfn.us, align 16, !dbg !3353
  %tobool168.not.us = icmp eq ptr %51, null, !dbg !3355
  br i1 %tobool168.not.us, label %if.else.us, label %if.then169.us, !dbg !3356

if.then169.us:                                    ; preds = %for.body103.us
  %52 = load ptr, ptr %fenc, align 8, !dbg !3357
  %weighted.us = getelementptr inbounds i8, ptr %52, i64 3392, !dbg !3358
  %arrayidx175.us = getelementptr inbounds [16 x ptr], ptr %weighted.us, i64 0, i64 %idxprom108.us, !dbg !3359
  %53 = load ptr, ptr %arrayidx175.us, align 8, !dbg !3359
  %arrayidx180.us = getelementptr inbounds i8, ptr %53, i64 %idxprom116.us, !dbg !3359
  br label %for.inc199.us, !dbg !3360

if.else.us:                                       ; preds = %for.body103.us
  %arrayidx122.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, !dbg !3346
  %54 = load ptr, ptr %arrayidx122.us, align 16, !dbg !3361
  br label %for.inc199.us

for.inc199.us:                                    ; preds = %if.else.us, %if.then169.us
  %.sink = phi ptr [ %54, %if.else.us ], [ %arrayidx180.us, %if.then169.us ]
  %arrayidx196.us = getelementptr inbounds [32 x ptr], ptr %p_fref_w, i64 0, i64 %indvars.iv409, !dbg !3362
  store ptr %.sink, ptr %arrayidx196.us, align 8, !dbg !3362
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1, !dbg !3363
    #dbg_value(i64 %indvars.iv.next410, !3246, !DIExpression(), !3338)
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412, !dbg !3339
  br i1 %exitcond413.not, label %for.cond.cleanup102, label %for.body103.us, !dbg !3340, !llvm.loop !3364

for.cond.cleanup102.loopexit433.unr-lcssa:        ; preds = %for.body103, %for.body103.preheader
  %indvars.iv400.unr = phi i64 [ 0, %for.body103.preheader ], [ %indvars.iv.next401.1, %for.body103 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3340
  br i1 %lcmp.mod.not, label %for.cond.cleanup102, label %for.body103.epil, !dbg !3340

for.body103.epil:                                 ; preds = %for.cond.cleanup102.loopexit433.unr-lcssa
    #dbg_value(i64 %indvars.iv400.unr, !3246, !DIExpression(), !3338)
  %55 = trunc nuw nsw i64 %indvars.iv400.unr to i32, !dbg !3341
  %shr107.epil = lshr i32 %55, %37, !dbg !3341
  %idxprom108.epil = zext nneg i32 %shr107.epil to i64, !dbg !3342
  %arrayidx109.epil = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.epil, !dbg !3342
  %56 = load ptr, ptr %arrayidx109.epil, align 8, !dbg !3342
  %plane110.epil = getelementptr inbounds i8, ptr %56, i64 152, !dbg !3343
  %arrayidx112.epil = getelementptr inbounds [3 x ptr], ptr %plane110.epil, i64 0, i64 %idxprom15, !dbg !3342
  %57 = load ptr, ptr %arrayidx112.epil, align 8, !dbg !3342
  %and113.epil = and i64 %indvars.iv400.unr, 1, !dbg !3344
  %arrayidx115.epil = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and113.epil, !dbg !3345
  %58 = load i32, ptr %arrayidx115.epil, align 4, !dbg !3345
  %idxprom116.epil = sext i32 %58 to i64, !dbg !3342
  %arrayidx117.epil = getelementptr inbounds i8, ptr %57, i64 %idxprom116.epil, !dbg !3342
  %arrayidx131.epil = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv400.unr, i64 %idxprom130, !dbg !3346
  store ptr %arrayidx117.epil, ptr %arrayidx131.epil, align 8, !dbg !3347
    #dbg_value(i64 %indvars.iv400.unr, !3246, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3338)
  br label %for.cond.cleanup102, !dbg !3366

for.cond.cleanup102:                              ; preds = %for.body103.epil, %for.cond.cleanup102.loopexit433.unr-lcssa, %for.inc199.us, %if.end94
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !3366
  %59 = load i32, ptr %i_type, align 16, !dbg !3366
  %cmp203 = icmp eq i32 %59, 1, !dbg !3367
  br i1 %cmp203, label %for.cond207.preheader, label %if.end283, !dbg !3368

for.cond207.preheader:                            ; preds = %for.cond.cleanup102
  %arrayidx211 = getelementptr inbounds i8, ptr %h, i64 21420
  %60 = load i32, ptr %arrayidx211, align 4
    #dbg_value(i32 0, !3254, !DIExpression(), !3369)
  %cmp212393 = icmp sgt i32 %60, 0, !dbg !3370
  br i1 %cmp212393, label %for.body215.lr.ph, label %if.end283, !dbg !3371

for.body215.lr.ph:                                ; preds = %for.cond207.preheader
  %61 = load i32, ptr %b_interlaced, align 4
  %arrayidx233 = getelementptr inbounds i8, ptr %h, i64 22960
  %add240 = add nuw nsw i32 %i, 3
  %cond242 = select i1 %cmp, i32 0, i32 %add240
  %idxprom243 = zext nneg i32 %cond242 to i64
  %wide.trip.count426 = zext nneg i32 %60 to i64, !dbg !3370
  br i1 %cmp, label %for.body215.us, label %for.body215.preheader

for.body215.preheader:                            ; preds = %for.body215.lr.ph
  %xtraiter434 = and i64 %wide.trip.count426, 1, !dbg !3371
  %62 = icmp eq i32 %60, 1, !dbg !3371
  br i1 %62, label %if.end283.loopexit432.unr-lcssa, label %for.body215.preheader.new, !dbg !3371

for.body215.preheader.new:                        ; preds = %for.body215.preheader
  %unroll_iter436 = and i64 %wide.trip.count426, 2147483646, !dbg !3371
  %63 = load i32, ptr %ref_pix_offset, align 4
  %idxprom228 = sext i32 %63 to i64
  %arrayidx227.1 = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4
  %64 = load i32, ptr %arrayidx227.1, align 4
  %idxprom228.1 = sext i32 %64 to i64
  br label %for.body215, !dbg !3371

for.body215.us:                                   ; preds = %for.body215.lr.ph, %for.body215.us
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %for.body215.us ], [ 0, %for.body215.lr.ph ]
    #dbg_value(i64 %indvars.iv423, !3254, !DIExpression(), !3369)
  %65 = trunc nuw nsw i64 %indvars.iv423 to i32, !dbg !3372
  %shr219.us = lshr i32 %65, %61, !dbg !3372
  %idxprom220.us = zext nneg i32 %shr219.us to i64, !dbg !3373
  %arrayidx221.us = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.us, !dbg !3373
  %66 = load ptr, ptr %arrayidx221.us, align 8, !dbg !3373
  %plane222.us = getelementptr inbounds i8, ptr %66, i64 152, !dbg !3374
  %arrayidx224.us = getelementptr inbounds [3 x ptr], ptr %plane222.us, i64 0, i64 %idxprom15, !dbg !3373
  %67 = load ptr, ptr %arrayidx224.us, align 8, !dbg !3373
  %and225.us = and i64 %indvars.iv423, 1, !dbg !3375
  %arrayidx227.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and225.us, !dbg !3376
  %68 = load i32, ptr %arrayidx227.us, align 4, !dbg !3376
  %idxprom228.us = sext i32 %68 to i64, !dbg !3373
  %arrayidx229.us = getelementptr inbounds i8, ptr %67, i64 %idxprom228.us, !dbg !3373
  %arrayidx244.us = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 %idxprom243, !dbg !3377
  store ptr %arrayidx229.us, ptr %arrayidx244.us, align 8, !dbg !3378
    #dbg_value(i64 1, !3257, !DIExpression(), !3379)
  %69 = load ptr, ptr %arrayidx221.us, align 8, !dbg !3380
  %arrayidx262.us = getelementptr inbounds i8, ptr %69, i64 184, !dbg !3380
  %70 = load ptr, ptr %arrayidx262.us, align 8, !dbg !3380
  %arrayidx267.us = getelementptr inbounds i8, ptr %70, i64 %idxprom228.us, !dbg !3380
  %arrayidx275.us = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 1, !dbg !3382
  store ptr %arrayidx267.us, ptr %arrayidx275.us, align 8, !dbg !3383
    #dbg_value(i64 2, !3257, !DIExpression(), !3379)
  %71 = load ptr, ptr %arrayidx221.us, align 8, !dbg !3380
  %arrayidx262.us.1 = getelementptr inbounds i8, ptr %71, i64 192, !dbg !3380
  %72 = load ptr, ptr %arrayidx262.us.1, align 8, !dbg !3380
  %arrayidx267.us.1 = getelementptr inbounds i8, ptr %72, i64 %idxprom228.us, !dbg !3380
  %arrayidx275.us.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 2, !dbg !3382
  store ptr %arrayidx267.us.1, ptr %arrayidx275.us.1, align 8, !dbg !3383
    #dbg_value(i64 3, !3257, !DIExpression(), !3379)
  %73 = load ptr, ptr %arrayidx221.us, align 8, !dbg !3380
  %arrayidx262.us.2 = getelementptr inbounds i8, ptr %73, i64 200, !dbg !3380
  %74 = load ptr, ptr %arrayidx262.us.2, align 8, !dbg !3380
  %arrayidx267.us.2 = getelementptr inbounds i8, ptr %74, i64 %idxprom228.us, !dbg !3380
  %arrayidx275.us.2 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 3, !dbg !3382
  store ptr %arrayidx267.us.2, ptr %arrayidx275.us.2, align 8, !dbg !3383
    #dbg_value(i64 4, !3257, !DIExpression(), !3379)
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1, !dbg !3384
    #dbg_value(i64 %indvars.iv.next424, !3254, !DIExpression(), !3369)
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426, !dbg !3370
  br i1 %exitcond427.not, label %if.end283, label %for.body215.us, !dbg !3371, !llvm.loop !3385

for.body103:                                      ; preds = %for.body103, %for.body103.preheader.new
  %indvars.iv400 = phi i64 [ 0, %for.body103.preheader.new ], [ %indvars.iv.next401.1, %for.body103 ]
  %niter = phi i64 [ 0, %for.body103.preheader.new ], [ %niter.next.1, %for.body103 ]
    #dbg_value(i64 %indvars.iv400, !3246, !DIExpression(), !3338)
  %75 = trunc nuw nsw i64 %indvars.iv400 to i32, !dbg !3341
  %shr107 = lshr i32 %75, %37, !dbg !3341
  %idxprom108 = zext nneg i32 %shr107 to i64, !dbg !3342
  %arrayidx109 = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108, !dbg !3342
  %76 = load ptr, ptr %arrayidx109, align 8, !dbg !3342
  %plane110 = getelementptr inbounds i8, ptr %76, i64 152, !dbg !3343
  %arrayidx112 = getelementptr inbounds [3 x ptr], ptr %plane110, i64 0, i64 %idxprom15, !dbg !3342
  %77 = load ptr, ptr %arrayidx112, align 8, !dbg !3342
  %arrayidx117 = getelementptr inbounds i8, ptr %77, i64 %idxprom116, !dbg !3342
  %arrayidx131 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv400, i64 %idxprom130, !dbg !3346
  store ptr %arrayidx117, ptr %arrayidx131, align 8, !dbg !3347
  %indvars.iv.next401 = or disjoint i64 %indvars.iv400, 1, !dbg !3363
    #dbg_value(i64 %indvars.iv.next401, !3246, !DIExpression(), !3338)
  %78 = trunc nuw nsw i64 %indvars.iv.next401 to i32, !dbg !3341
  %shr107.1 = lshr i32 %78, %37, !dbg !3341
  %idxprom108.1 = zext nneg i32 %shr107.1 to i64, !dbg !3342
  %arrayidx109.1 = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.1, !dbg !3342
  %79 = load ptr, ptr %arrayidx109.1, align 8, !dbg !3342
  %plane110.1 = getelementptr inbounds i8, ptr %79, i64 152, !dbg !3343
  %arrayidx112.1 = getelementptr inbounds [3 x ptr], ptr %plane110.1, i64 0, i64 %idxprom15, !dbg !3342
  %80 = load ptr, ptr %arrayidx112.1, align 8, !dbg !3342
  %arrayidx117.1 = getelementptr inbounds i8, ptr %80, i64 %idxprom116.1, !dbg !3342
  %arrayidx131.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv.next401, i64 %idxprom130, !dbg !3346
  store ptr %arrayidx117.1, ptr %arrayidx131.1, align 8, !dbg !3347
  %indvars.iv.next401.1 = add nuw nsw i64 %indvars.iv400, 2, !dbg !3363
    #dbg_value(i64 %indvars.iv.next401.1, !3246, !DIExpression(), !3338)
  %niter.next.1 = add i64 %niter, 2, !dbg !3340
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3340
  br i1 %niter.ncmp.1, label %for.cond.cleanup102.loopexit433.unr-lcssa, label %for.body103, !dbg !3340, !llvm.loop !3364

for.body215:                                      ; preds = %for.body215, %for.body215.preheader.new
  %indvars.iv414 = phi i64 [ 0, %for.body215.preheader.new ], [ %indvars.iv.next415.1, %for.body215 ]
  %niter437 = phi i64 [ 0, %for.body215.preheader.new ], [ %niter437.next.1, %for.body215 ]
    #dbg_value(i64 %indvars.iv414, !3254, !DIExpression(), !3369)
  %81 = trunc nuw nsw i64 %indvars.iv414 to i32, !dbg !3372
  %shr219 = lshr i32 %81, %61, !dbg !3372
  %idxprom220 = zext nneg i32 %shr219 to i64, !dbg !3373
  %arrayidx221 = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220, !dbg !3373
  %82 = load ptr, ptr %arrayidx221, align 8, !dbg !3373
  %plane222 = getelementptr inbounds i8, ptr %82, i64 152, !dbg !3374
  %arrayidx224 = getelementptr inbounds [3 x ptr], ptr %plane222, i64 0, i64 %idxprom15, !dbg !3373
  %83 = load ptr, ptr %arrayidx224, align 8, !dbg !3373
  %arrayidx229 = getelementptr inbounds i8, ptr %83, i64 %idxprom228, !dbg !3373
  %arrayidx244 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv414, i64 %idxprom243, !dbg !3377
  store ptr %arrayidx229, ptr %arrayidx244, align 8, !dbg !3378
  %indvars.iv.next415 = or disjoint i64 %indvars.iv414, 1, !dbg !3384
    #dbg_value(i64 %indvars.iv.next415, !3254, !DIExpression(), !3369)
  %84 = trunc nuw nsw i64 %indvars.iv.next415 to i32, !dbg !3372
  %shr219.1 = lshr i32 %84, %61, !dbg !3372
  %idxprom220.1 = zext nneg i32 %shr219.1 to i64, !dbg !3373
  %arrayidx221.1 = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.1, !dbg !3373
  %85 = load ptr, ptr %arrayidx221.1, align 8, !dbg !3373
  %plane222.1 = getelementptr inbounds i8, ptr %85, i64 152, !dbg !3374
  %arrayidx224.1 = getelementptr inbounds [3 x ptr], ptr %plane222.1, i64 0, i64 %idxprom15, !dbg !3373
  %86 = load ptr, ptr %arrayidx224.1, align 8, !dbg !3373
  %arrayidx229.1 = getelementptr inbounds i8, ptr %86, i64 %idxprom228.1, !dbg !3373
  %arrayidx244.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv.next415, i64 %idxprom243, !dbg !3377
  store ptr %arrayidx229.1, ptr %arrayidx244.1, align 8, !dbg !3378
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2, !dbg !3384
    #dbg_value(i64 %indvars.iv.next415.1, !3254, !DIExpression(), !3369)
  %niter437.next.1 = add i64 %niter437, 2, !dbg !3371
  %niter437.ncmp.1 = icmp eq i64 %niter437.next.1, %unroll_iter436, !dbg !3371
  br i1 %niter437.ncmp.1, label %if.end283.loopexit432.unr-lcssa, label %for.body215, !dbg !3371, !llvm.loop !3385

if.end283.loopexit432.unr-lcssa:                  ; preds = %for.body215, %for.body215.preheader
  %indvars.iv414.unr = phi i64 [ 0, %for.body215.preheader ], [ %indvars.iv.next415.1, %for.body215 ]
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0, !dbg !3371
  br i1 %lcmp.mod435.not, label %if.end283, label %for.body215.epil, !dbg !3371

for.body215.epil:                                 ; preds = %if.end283.loopexit432.unr-lcssa
    #dbg_value(i64 %indvars.iv414.unr, !3254, !DIExpression(), !3369)
  %87 = trunc nuw nsw i64 %indvars.iv414.unr to i32, !dbg !3372
  %shr219.epil = lshr i32 %87, %61, !dbg !3372
  %idxprom220.epil = zext nneg i32 %shr219.epil to i64, !dbg !3373
  %arrayidx221.epil = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.epil, !dbg !3373
  %88 = load ptr, ptr %arrayidx221.epil, align 8, !dbg !3373
  %plane222.epil = getelementptr inbounds i8, ptr %88, i64 152, !dbg !3374
  %arrayidx224.epil = getelementptr inbounds [3 x ptr], ptr %plane222.epil, i64 0, i64 %idxprom15, !dbg !3373
  %89 = load ptr, ptr %arrayidx224.epil, align 8, !dbg !3373
  %and225.epil = and i64 %indvars.iv414.unr, 1, !dbg !3375
  %arrayidx227.epil = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and225.epil, !dbg !3376
  %90 = load i32, ptr %arrayidx227.epil, align 4, !dbg !3376
  %idxprom228.epil = sext i32 %90 to i64, !dbg !3373
  %arrayidx229.epil = getelementptr inbounds i8, ptr %89, i64 %idxprom228.epil, !dbg !3373
  %arrayidx244.epil = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv414.unr, i64 %idxprom243, !dbg !3377
  store ptr %arrayidx229.epil, ptr %arrayidx244.epil, align 8, !dbg !3378
    #dbg_value(i64 %indvars.iv414.unr, !3254, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3369)
  br label %if.end283, !dbg !3387

if.end283:                                        ; preds = %for.body215.epil, %if.end283.loopexit432.unr-lcssa, %for.body215.us, %for.cond207.preheader, %for.cond.cleanup102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref_pix_offset) #13, !dbg !3387
  ret void, !dbg !3387
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare !dbg !3388 void @x264_mb_predict_mv_pskip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_neighbours_deblock(ptr nocapture noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #9 !dbg !3391 {
entry:
    #dbg_value(ptr %h, !3393, !DIExpression(), !3398)
    #dbg_value(i32 %mb_x, !3394, !DIExpression(), !3398)
    #dbg_value(i32 %mb_y, !3395, !DIExpression(), !3398)
  %i_disable_deblocking_filter_idc = getelementptr inbounds i8, ptr %h, i64 13884, !dbg !3399
  %0 = load i32, ptr %i_disable_deblocking_filter_idc, align 4, !dbg !3399
  %cmp.not = icmp eq i32 %0, 2, !dbg !3400
    #dbg_value(i1 %cmp.not, !3396, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3398)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3401
  %1 = load i32, ptr %b_interlaced, align 4, !dbg !3401
  %shl.neg = shl nsw i32 -1, %1, !dbg !3402
  %sub = add i32 %shl.neg, %mb_y, !dbg !3403
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !3404
  %2 = load i32, ptr %i_mb_stride, align 4, !dbg !3404
  %mul = mul nsw i32 %sub, %2, !dbg !3405
  %add = add nsw i32 %mul, %mb_x, !dbg !3406
    #dbg_value(i32 %add, !3397, !DIExpression(), !3398)
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !3407
  store i32 0, ptr %i_neighbour, align 8, !dbg !3408
  %mul5 = mul nsw i32 %2, %mb_y, !dbg !3409
  %add6 = add nsw i32 %mul5, %mb_x, !dbg !3410
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !3411
  store i32 %add6, ptr %i_mb_xy, align 8, !dbg !3412
  %cmp8 = icmp sgt i32 %mb_x, 0, !dbg !3413
  br i1 %cmp8, label %if.then, label %if.end30, !dbg !3415

if.then:                                          ; preds = %entry
  %sub12 = add nsw i32 %add6, -1, !dbg !3416
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !3418
  store i32 %sub12, ptr %i_mb_left_xy, align 8, !dbg !3419
  br i1 %cmp.not, label %lor.lhs.false, label %if.then27, !dbg !3420

lor.lhs.false:                                    ; preds = %if.then
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248, !dbg !3422
  %3 = load ptr, ptr %slice_table, align 16, !dbg !3422
  %idxprom = sext i32 %sub12 to i64, !dbg !3423
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom, !dbg !3423
  %4 = load i16, ptr %arrayidx, align 2, !dbg !3423
  %idxprom22 = sext i32 %add6 to i64, !dbg !3424
  %arrayidx23 = getelementptr inbounds i16, ptr %3, i64 %idxprom22, !dbg !3424
  %5 = load i16, ptr %arrayidx23, align 2, !dbg !3424
  %cmp25 = icmp eq i16 %4, %5, !dbg !3425
  br i1 %cmp25, label %if.then27, label %if.end30.thread, !dbg !3426

if.then27:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, ptr %i_neighbour, align 8, !dbg !3427
  br label %if.end30, !dbg !3428

if.end30:                                         ; preds = %if.then27, %entry
  %6 = phi i32 [ 1, %if.then27 ], [ 0, %entry ]
  %cmp31 = icmp sgt i32 %add, -1, !dbg !3429
  br i1 %cmp31, label %if.then33, label %if.end58, !dbg !3431

if.end30.thread:                                  ; preds = %lor.lhs.false
  %cmp3182 = icmp sgt i32 %add, -1, !dbg !3429
  br i1 %cmp3182, label %if.then33.thread, label %if.end58, !dbg !3431

if.then33.thread:                                 ; preds = %if.end30.thread
  %i_mb_top_xy83 = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !3432
  store i32 %add, ptr %i_mb_top_xy83, align 4, !dbg !3434
  br label %lor.lhs.false36, !dbg !3435

if.then33:                                        ; preds = %if.end30
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !3432
  store i32 %add, ptr %i_mb_top_xy, align 4, !dbg !3434
  br i1 %cmp.not, label %if.then33.lor.lhs.false36_crit_edge, label %if.then53, !dbg !3435

if.then33.lor.lhs.false36_crit_edge:              ; preds = %if.then33
  %slice_table38.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 17248
  %.pre = load ptr, ptr %slice_table38.phi.trans.insert, align 16, !dbg !3437
  %.pre84 = sext i32 %add6 to i64, !dbg !3438
  br label %lor.lhs.false36, !dbg !3435

lor.lhs.false36:                                  ; preds = %if.then33.lor.lhs.false36_crit_edge, %if.then33.thread
  %7 = phi i32 [ %6, %if.then33.lor.lhs.false36_crit_edge ], [ 0, %if.then33.thread ]
  %idxprom48.pre-phi = phi i64 [ %.pre84, %if.then33.lor.lhs.false36_crit_edge ], [ %idxprom22, %if.then33.thread ], !dbg !3438
  %8 = phi ptr [ %.pre, %if.then33.lor.lhs.false36_crit_edge ], [ %3, %if.then33.thread ], !dbg !3437
  %idxprom41 = zext nneg i32 %add to i64, !dbg !3439
  %arrayidx42 = getelementptr inbounds i16, ptr %8, i64 %idxprom41, !dbg !3439
  %9 = load i16, ptr %arrayidx42, align 2, !dbg !3439
  %arrayidx49 = getelementptr inbounds i16, ptr %8, i64 %idxprom48.pre-phi, !dbg !3438
  %10 = load i16, ptr %arrayidx49, align 2, !dbg !3438
  %cmp51 = icmp eq i16 %9, %10, !dbg !3440
  br i1 %cmp51, label %if.then53, label %if.end58, !dbg !3441

if.then53:                                        ; preds = %lor.lhs.false36, %if.then33
  %11 = phi i32 [ %7, %lor.lhs.false36 ], [ %6, %if.then33 ], !dbg !3442
  %or56 = or i32 %11, 2, !dbg !3442
  store i32 %or56, ptr %i_neighbour, align 8, !dbg !3442
  br label %if.end58, !dbg !3443

if.end58:                                         ; preds = %if.end30.thread, %lor.lhs.false36, %if.then53, %if.end30
  ret void, !dbg !3444
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_deblock(ptr noundef %h) local_unnamed_addr #4 !dbg !3445 {
entry:
    #dbg_value(ptr %h, !3447, !DIExpression(), !3483)
  %type = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !3484
  %0 = load ptr, ptr %type, align 8, !dbg !3484
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !3484
  %1 = load i32, ptr %i_mb_xy, align 8, !dbg !3484
  %idxprom = sext i32 %1 to i64, !dbg !3484
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !3484
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3484
  %switch = icmp ult i8 %2, 4, !dbg !3484
  br i1 %switch, label %if.end504, label %if.end, !dbg !3484

if.end:                                           ; preds = %entry
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !3486
  %3 = load i32, ptr %i_first_mb, align 4, !dbg !3486
  %tobool.not = icmp eq i32 %3, 0, !dbg !3487
  br i1 %tobool.not, label %if.end295, label %land.lhs.true, !dbg !3488

land.lhs.true:                                    ; preds = %if.end
  %i_disable_deblocking_filter_idc = getelementptr inbounds i8, ptr %h, i64 13884, !dbg !3489
  %4 = load i32, ptr %i_disable_deblocking_filter_idc, align 4, !dbg !3489
  %cmp33.not = icmp eq i32 %4, 2, !dbg !3490
  br i1 %cmp33.not, label %if.end295, label %if.then35, !dbg !3491

if.then35:                                        ; preds = %land.lhs.true
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488, !dbg !3492
  %5 = load i32, ptr %i_neighbour, align 8, !dbg !3492
    #dbg_value(i32 %5, !3448, !DIExpression(), !3493)
  %i_mb_x = getelementptr inbounds i8, ptr %h, i64 16384, !dbg !3494
  %6 = load i32, ptr %i_mb_x, align 16, !dbg !3494
    #dbg_value(i32 %6, !3451, !DIExpression(), !3493)
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !3495
  %7 = load i32, ptr %i_mb_y, align 4, !dbg !3495
    #dbg_value(i32 %7, !3452, !DIExpression(), !3493)
    #dbg_value(ptr %h, !3393, !DIExpression(), !3496)
    #dbg_value(i32 %6, !3394, !DIExpression(), !3496)
    #dbg_value(i32 %7, !3395, !DIExpression(), !3496)
    #dbg_value(i1 false, !3396, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3496)
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3498
  %8 = load i32, ptr %b_interlaced.i, align 4, !dbg !3498
  %shl.neg.i = shl nsw i32 -1, %8, !dbg !3499
  %sub.i = add i32 %shl.neg.i, %7, !dbg !3500
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !3501
  %9 = load i32, ptr %i_mb_stride.i, align 4, !dbg !3501
  %mul.i = mul nsw i32 %sub.i, %9, !dbg !3502
  %add.i = add nsw i32 %mul.i, %6, !dbg !3503
    #dbg_value(i32 %add.i, !3397, !DIExpression(), !3496)
  %mul5.i = mul nsw i32 %9, %7, !dbg !3504
  %add6.i = add nsw i32 %mul5.i, %6, !dbg !3505
  store i32 %add6.i, ptr %i_mb_xy, align 8, !dbg !3506
  %cmp8.i = icmp sgt i32 %6, 0, !dbg !3507
  br i1 %cmp8.i, label %if.then27.i, label %if.end30.i, !dbg !3508

if.then27.i:                                      ; preds = %if.then35
  %sub12.i = add nsw i32 %add6.i, -1, !dbg !3509
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !3510
  store i32 %sub12.i, ptr %i_mb_left_xy.i, align 8, !dbg !3511
  br label %if.end30.i, !dbg !3512

if.end30.i:                                       ; preds = %if.then27.i, %if.then35
  %10 = phi i32 [ 1, %if.then27.i ], [ 0, %if.then35 ]
  %or56.i = phi i32 [ 3, %if.then27.i ], [ 2, %if.then35 ]
  %cmp31.i = icmp sgt i32 %add.i, -1, !dbg !3513
  br i1 %cmp31.i, label %if.then53.i, label %x264_macroblock_cache_load_neighbours_deblock.exit, !dbg !3514

if.then53.i:                                      ; preds = %if.end30.i
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !3515
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4, !dbg !3516
  br label %x264_macroblock_cache_load_neighbours_deblock.exit, !dbg !3517

x264_macroblock_cache_load_neighbours_deblock.exit: ; preds = %if.end30.i, %if.then53.i
  %11 = phi i32 [ %10, %if.end30.i ], [ %or56.i, %if.then53.i ], !dbg !3518
  %not = xor i32 %5, -1, !dbg !3519
  %and = and i32 %11, %not, !dbg !3518
  store i32 %and, ptr %i_neighbour, align 8, !dbg !3518
  %tobool43.not = icmp eq i32 %and, 0, !dbg !3520
  br i1 %tobool43.not, label %if.end295, label %if.then44, !dbg !3521

if.then44:                                        ; preds = %x264_macroblock_cache_load_neighbours_deblock.exit
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !3522
  %12 = load i32, ptr %i_mb_left_xy, align 8, !dbg !3522
    #dbg_value(i32 %12, !3453, !DIExpression(), !3523)
    #dbg_value(i32 poison, !3456, !DIExpression(), !3523)
    #dbg_value(i32 %sub.i, !3457, !DIExpression(), !3523)
  %mul = shl nsw i32 %sub.i, 1, !dbg !3524
  %add = or disjoint i32 %mul, 1, !dbg !3525
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376, !dbg !3526
  %13 = load i32, ptr %i_b8_stride, align 8, !dbg !3526
  %mul49 = mul nsw i32 %13, %add, !dbg !3527
  %mul50 = shl nsw i32 %6, 1, !dbg !3528
  %add51 = add nsw i32 %mul49, %mul50, !dbg !3529
    #dbg_value(i32 %add51, !3458, !DIExpression(), !3523)
  %mul52 = shl nsw i32 %sub.i, 2, !dbg !3530
  %add53 = or disjoint i32 %mul52, 3, !dbg !3531
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380, !dbg !3532
  %14 = load i32, ptr %i_b4_stride, align 4, !dbg !3532
  %mul55 = mul nsw i32 %14, %add53, !dbg !3533
  %mul56 = shl nsw i32 %6, 2, !dbg !3534
  %add57 = add nsw i32 %mul55, %mul56, !dbg !3535
    #dbg_value(i32 %add57, !3459, !DIExpression(), !3523)
    #dbg_value(i32 %13, !3460, !DIExpression(), !3523)
    #dbg_value(i32 %14, !3461, !DIExpression(), !3523)
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !3536
  %15 = load ptr, ptr %non_zero_count, align 16, !dbg !3536
    #dbg_value(ptr %15, !3462, !DIExpression(), !3523)
  %and65 = and i32 %and, 2, !dbg !3537
  %tobool66.not = icmp eq i32 %and65, 0, !dbg !3537
  br i1 %tobool66.not, label %if.end76, label %if.end76.thread, !dbg !3539

if.end76:                                         ; preds = %if.then44
  %and79 = and i32 %and, 1, !dbg !3540
  %tobool80.not = icmp eq i32 %and79, 0, !dbg !3540
  br i1 %tobool80.not, label %if.end295, label %if.end118.split, !dbg !3542

if.end76.thread:                                  ; preds = %if.then44
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !3543
  %16 = load i32, ptr %i_mb_top_xy, align 4, !dbg !3543
    #dbg_value(i32 %16, !3456, !DIExpression(), !3523)
  %idxprom68 = sext i32 %16 to i64, !dbg !3544
  %arrayidx70 = getelementptr inbounds [24 x i8], ptr %15, i64 %idxprom68, i64 12, !dbg !3544
  %17 = load i32, ptr %arrayidx70, align 4, !dbg !3544
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 25076, !dbg !3544
  store i32 %17, ptr %arrayidx75, align 1, !dbg !3544
  %and79694 = and i32 %and, 1, !dbg !3540
  %tobool80.not695 = icmp eq i32 %and79694, 0, !dbg !3540
  br i1 %tobool80.not695, label %for.body.us.preheader, label %if.end118.split, !dbg !3542

for.body.us.preheader:                            ; preds = %if.end76.thread
    #dbg_value(i32 0, !3463, !DIExpression(), !3545)
  %i_type679696 = getelementptr inbounds i8, ptr %h, i64 7248
  %18 = load i32, ptr %i_type679696, align 16
  %cmp120680697 = icmp eq i32 %18, 1
  %mv125681698 = getelementptr inbounds i8, ptr %h, i64 16672
  %ref129682699 = getelementptr inbounds i8, ptr %h, i64 16704
  %idxprom139683700 = sext i32 %add51 to i64
  %ref143684701 = getelementptr inbounds i8, ptr %h, i64 25120
  %mv178685702 = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom183686703 = sext i32 %add57 to i64
  %wide.trip.count677 = select i1 %cmp120680697, i64 2, i64 1, !dbg !3546
  br label %for.body.us, !dbg !3546

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv674 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next675, %for.body.us ]
    #dbg_value(i64 %indvars.iv674, !3463, !DIExpression(), !3545)
  %arrayidx127.us = getelementptr inbounds [2 x ptr], ptr %mv125681698, i64 0, i64 %indvars.iv674, !dbg !3547
  %19 = load ptr, ptr %arrayidx127.us, align 8, !dbg !3547
    #dbg_value(ptr %19, !3465, !DIExpression(), !3548)
  %arrayidx131.us = getelementptr inbounds [2 x ptr], ptr %ref129682699, i64 0, i64 %indvars.iv674, !dbg !3549
  %20 = load ptr, ptr %arrayidx131.us, align 8, !dbg !3549
    #dbg_value(ptr %20, !3468, !DIExpression(), !3548)
    #dbg_value(i32 4, !3469, !DIExpression(), !3548)
  %arrayidx140.us = getelementptr inbounds i8, ptr %20, i64 %idxprom139683700, !dbg !3550
  %21 = load i8, ptr %arrayidx140.us, align 1, !dbg !3550
  %arrayidx145.us = getelementptr inbounds [2 x [40 x i8]], ptr %ref143684701, i64 0, i64 %indvars.iv674, !dbg !3553
  %arrayidx148.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 5, !dbg !3553
  store i8 %21, ptr %arrayidx148.us, align 1, !dbg !3554
  %arrayidx156.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 4, !dbg !3555
  store i8 %21, ptr %arrayidx156.us, align 1, !dbg !3556
  %arrayidx159.us = getelementptr i8, ptr %arrayidx140.us, i64 1, !dbg !3557
  %22 = load i8, ptr %arrayidx159.us, align 1, !dbg !3557
  %arrayidx167.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 7, !dbg !3558
  store i8 %22, ptr %arrayidx167.us, align 1, !dbg !3559
  %arrayidx175.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 6, !dbg !3560
  store i8 %22, ptr %arrayidx175.us, align 1, !dbg !3561
  %arrayidx182.us = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178685702, i64 0, i64 %indvars.iv674, i64 4, !dbg !3562
  %arrayidx184.us = getelementptr inbounds [2 x i16], ptr %19, i64 %idxprom183686703, !dbg !3562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182.us, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184.us, i64 16, i1 false), !dbg !3562
    #dbg_value(i32 11, !3469, !DIExpression(), !3548)
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1, !dbg !3563
    #dbg_value(i64 %indvars.iv.next675, !3463, !DIExpression(), !3545)
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677, !dbg !3564
  br i1 %exitcond678.not, label %if.end295, label %for.body.us, !dbg !3546, !llvm.loop !3565

if.end118.split:                                  ; preds = %if.end76, %if.end76.thread
  %idxprom82 = sext i32 %12 to i64, !dbg !3567
  %arrayidx83 = getelementptr inbounds [24 x i8], ptr %15, i64 %idxprom82, !dbg !3567
  %arrayidx84 = getelementptr inbounds i8, ptr %arrayidx83, i64 3, !dbg !3567
  %23 = load i8, ptr %arrayidx84, align 1, !dbg !3567
  %arrayidx90 = getelementptr inbounds i8, ptr %h, i64 25083, !dbg !3569
  store i8 %23, ptr %arrayidx90, align 1, !dbg !3570
  %arrayidx93 = getelementptr inbounds i8, ptr %arrayidx83, i64 7, !dbg !3571
  %24 = load i8, ptr %arrayidx93, align 1, !dbg !3571
  %arrayidx99 = getelementptr inbounds i8, ptr %h, i64 25091, !dbg !3572
  store i8 %24, ptr %arrayidx99, align 1, !dbg !3573
  %arrayidx102 = getelementptr inbounds i8, ptr %arrayidx83, i64 11, !dbg !3574
  %25 = load i8, ptr %arrayidx102, align 1, !dbg !3574
  %arrayidx108 = getelementptr inbounds i8, ptr %h, i64 25099, !dbg !3575
  store i8 %25, ptr %arrayidx108, align 1, !dbg !3576
  %arrayidx111 = getelementptr inbounds i8, ptr %arrayidx83, i64 15, !dbg !3577
  %26 = load i8, ptr %arrayidx111, align 1, !dbg !3577
  %arrayidx117 = getelementptr inbounds i8, ptr %h, i64 25107, !dbg !3578
  store i8 %26, ptr %arrayidx117, align 1, !dbg !3579
    #dbg_value(i32 0, !3463, !DIExpression(), !3545)
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %27 = load i32, ptr %i_type, align 16
  %cmp120 = icmp eq i32 %27, 1
  %mv125 = getelementptr inbounds i8, ptr %h, i64 16672
  %ref129 = getelementptr inbounds i8, ptr %h, i64 16704
  %idxprom139 = sext i32 %add51 to i64
  %ref143 = getelementptr inbounds i8, ptr %h, i64 25120
  %mv178 = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom183 = sext i32 %add57 to i64
  %mul279 = mul nsw i32 %14, 3
  %mul265 = shl nsw i32 %14, 1
  %i_b4_xy = getelementptr inbounds i8, ptr %h, i64 16400
  %i_b8_xy = getelementptr inbounds i8, ptr %h, i64 16396
  %28 = load i32, ptr %i_b8_xy, align 4
  %sub194 = add nsw i32 %28, -1
  %29 = load i32, ptr %i_b4_xy, align 16
  %sub196 = add nsw i32 %29, -1
  %idxprom199 = sext i32 %sub194 to i64
  %add218 = add nsw i32 %sub194, %13
  %idxprom219 = sext i32 %add218 to i64
  %idxprom239 = sext i32 %sub196 to i64
  %add252 = add nsw i32 %sub196, %14
  %idxprom253 = sext i32 %add252 to i64
  %add266 = add nsw i32 %sub196, %mul265
  %idxprom267 = sext i32 %add266 to i64
  %add280 = add nsw i32 %sub196, %mul279
  %idxprom281 = sext i32 %add280 to i64
  %wide.trip.count672 = select i1 %cmp120, i64 2, i64 1, !dbg !3546
  br i1 %tobool66.not, label %for.body.us657, label %for.body

for.body.us657:                                   ; preds = %if.end118.split, %for.body.us657
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %for.body.us657 ], [ 0, %if.end118.split ]
    #dbg_value(i64 %indvars.iv669, !3463, !DIExpression(), !3545)
  %arrayidx127.us660 = getelementptr inbounds [2 x ptr], ptr %mv125, i64 0, i64 %indvars.iv669, !dbg !3547
  %30 = load ptr, ptr %arrayidx127.us660, align 8, !dbg !3547
    #dbg_value(ptr %30, !3465, !DIExpression(), !3548)
  %arrayidx131.us661 = getelementptr inbounds [2 x ptr], ptr %ref129, i64 0, i64 %indvars.iv669, !dbg !3549
  %31 = load ptr, ptr %arrayidx131.us661, align 8, !dbg !3549
    #dbg_value(ptr %31, !3468, !DIExpression(), !3548)
    #dbg_value(i32 11, !3469, !DIExpression(), !3548)
    #dbg_value(i32 %sub194, !3470, !DIExpression(), !3580)
    #dbg_value(i32 %sub196, !3473, !DIExpression(), !3580)
  %arrayidx200.us = getelementptr inbounds i8, ptr %31, i64 %idxprom199, !dbg !3581
  %32 = load i8, ptr %arrayidx200.us, align 1, !dbg !3581
  %arrayidx205.us = getelementptr inbounds [2 x [40 x i8]], ptr %ref143, i64 0, i64 %indvars.iv669, !dbg !3582
  %arrayidx208.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 19, !dbg !3582
  store i8 %32, ptr %arrayidx208.us, align 1, !dbg !3583
  %arrayidx216.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 11, !dbg !3584
  store i8 %32, ptr %arrayidx216.us, align 1, !dbg !3585
  %arrayidx220.us = getelementptr inbounds i8, ptr %31, i64 %idxprom219, !dbg !3586
  %33 = load i8, ptr %arrayidx220.us, align 1, !dbg !3586
  %arrayidx228.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 35, !dbg !3587
  store i8 %33, ptr %arrayidx228.us, align 1, !dbg !3588
  %arrayidx236.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 27, !dbg !3589
  store i8 %33, ptr %arrayidx236.us, align 1, !dbg !3590
  %arrayidx240.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom239, !dbg !3591
  %34 = load i32, ptr %arrayidx240.us, align 4, !dbg !3591
  %arrayidx246.us = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv669, !dbg !3591
  %arrayidx249.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 44, !dbg !3591
  store i32 %34, ptr %arrayidx249.us, align 4, !dbg !3591
  %arrayidx254.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom253, !dbg !3592
  %35 = load i32, ptr %arrayidx254.us, align 4, !dbg !3592
  %arrayidx263.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 76, !dbg !3592
  store i32 %35, ptr %arrayidx263.us, align 4, !dbg !3592
  %arrayidx268.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom267, !dbg !3593
  %36 = load i32, ptr %arrayidx268.us, align 4, !dbg !3593
  %arrayidx277.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 108, !dbg !3593
  store i32 %36, ptr %arrayidx277.us, align 4, !dbg !3593
  %arrayidx282.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom281, !dbg !3594
  %37 = load i32, ptr %arrayidx282.us, align 4, !dbg !3594
  %arrayidx291.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 140, !dbg !3594
  store i32 %37, ptr %arrayidx291.us, align 4, !dbg !3594
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1, !dbg !3563
    #dbg_value(i64 %indvars.iv.next670, !3463, !DIExpression(), !3545)
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672, !dbg !3564
  br i1 %exitcond673.not, label %if.end295, label %for.body.us657, !dbg !3546, !llvm.loop !3565

for.body:                                         ; preds = %if.end118.split, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end118.split ]
    #dbg_value(i64 %indvars.iv, !3463, !DIExpression(), !3545)
  %arrayidx127 = getelementptr inbounds [2 x ptr], ptr %mv125, i64 0, i64 %indvars.iv, !dbg !3547
  %38 = load ptr, ptr %arrayidx127, align 8, !dbg !3547
    #dbg_value(ptr %38, !3465, !DIExpression(), !3548)
  %arrayidx131 = getelementptr inbounds [2 x ptr], ptr %ref129, i64 0, i64 %indvars.iv, !dbg !3549
  %39 = load ptr, ptr %arrayidx131, align 8, !dbg !3549
    #dbg_value(ptr %39, !3468, !DIExpression(), !3548)
    #dbg_value(i32 4, !3469, !DIExpression(), !3548)
  %arrayidx140 = getelementptr inbounds i8, ptr %39, i64 %idxprom139, !dbg !3550
  %40 = load i8, ptr %arrayidx140, align 1, !dbg !3550
  %arrayidx145 = getelementptr inbounds [2 x [40 x i8]], ptr %ref143, i64 0, i64 %indvars.iv, !dbg !3553
  %arrayidx148 = getelementptr inbounds i8, ptr %arrayidx145, i64 5, !dbg !3553
  store i8 %40, ptr %arrayidx148, align 1, !dbg !3554
  %arrayidx156 = getelementptr inbounds i8, ptr %arrayidx145, i64 4, !dbg !3555
  store i8 %40, ptr %arrayidx156, align 1, !dbg !3556
  %arrayidx159 = getelementptr i8, ptr %arrayidx140, i64 1, !dbg !3557
  %41 = load i8, ptr %arrayidx159, align 1, !dbg !3557
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx145, i64 7, !dbg !3558
  store i8 %41, ptr %arrayidx167, align 1, !dbg !3559
  %arrayidx175 = getelementptr inbounds i8, ptr %arrayidx145, i64 6, !dbg !3560
  store i8 %41, ptr %arrayidx175, align 1, !dbg !3561
  %arrayidx182 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv, i64 4, !dbg !3562
  %arrayidx184 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom183, !dbg !3562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184, i64 16, i1 false), !dbg !3562
    #dbg_value(i32 11, !3469, !DIExpression(), !3548)
    #dbg_value(i32 %sub194, !3470, !DIExpression(), !3580)
    #dbg_value(i32 %sub196, !3473, !DIExpression(), !3580)
  %arrayidx200 = getelementptr inbounds i8, ptr %39, i64 %idxprom199, !dbg !3581
  %42 = load i8, ptr %arrayidx200, align 1, !dbg !3581
  %arrayidx208 = getelementptr inbounds i8, ptr %arrayidx145, i64 19, !dbg !3582
  store i8 %42, ptr %arrayidx208, align 1, !dbg !3583
  %arrayidx216 = getelementptr inbounds i8, ptr %arrayidx145, i64 11, !dbg !3584
  store i8 %42, ptr %arrayidx216, align 1, !dbg !3585
  %arrayidx220 = getelementptr inbounds i8, ptr %39, i64 %idxprom219, !dbg !3586
  %43 = load i8, ptr %arrayidx220, align 1, !dbg !3586
  %arrayidx228 = getelementptr inbounds i8, ptr %arrayidx145, i64 35, !dbg !3587
  store i8 %43, ptr %arrayidx228, align 1, !dbg !3588
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx145, i64 27, !dbg !3589
  store i8 %43, ptr %arrayidx236, align 1, !dbg !3590
  %arrayidx240 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom239, !dbg !3591
  %44 = load i32, ptr %arrayidx240, align 4, !dbg !3591
  %arrayidx246 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv, !dbg !3591
  %arrayidx249 = getelementptr inbounds i8, ptr %arrayidx246, i64 44, !dbg !3591
  store i32 %44, ptr %arrayidx249, align 4, !dbg !3591
  %arrayidx254 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom253, !dbg !3592
  %45 = load i32, ptr %arrayidx254, align 4, !dbg !3592
  %arrayidx263 = getelementptr inbounds i8, ptr %arrayidx246, i64 76, !dbg !3592
  store i32 %45, ptr %arrayidx263, align 4, !dbg !3592
  %arrayidx268 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom267, !dbg !3593
  %46 = load i32, ptr %arrayidx268, align 4, !dbg !3593
  %arrayidx277 = getelementptr inbounds i8, ptr %arrayidx246, i64 108, !dbg !3593
  store i32 %46, ptr %arrayidx277, align 4, !dbg !3593
  %arrayidx282 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom281, !dbg !3594
  %47 = load i32, ptr %arrayidx282, align 4, !dbg !3594
  %arrayidx291 = getelementptr inbounds i8, ptr %arrayidx246, i64 140, !dbg !3594
  store i32 %47, ptr %arrayidx291, align 4, !dbg !3594
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3563
    #dbg_value(i64 %indvars.iv.next, !3463, !DIExpression(), !3545)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count672, !dbg !3564
  br i1 %exitcond.not, label %if.end295, label %for.body, !dbg !3546, !llvm.loop !3565

if.end295:                                        ; preds = %for.body.us, %for.body, %for.body.us657, %if.end76, %x264_macroblock_cache_load_neighbours_deblock.exit, %land.lhs.true, %if.end
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396, !dbg !3595
  %48 = load i32, ptr %i_weighted_pred, align 4, !dbg !3595
  %tobool296.not = icmp eq i32 %48, 0, !dbg !3596
  br i1 %tobool296.not, label %if.end504, label %land.lhs.true297, !dbg !3597

land.lhs.true297:                                 ; preds = %if.end295
  %i_type299 = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !3598
  %49 = load i32, ptr %i_type299, align 16, !dbg !3598
  %cmp300 = icmp eq i32 %49, 0, !dbg !3599
  br i1 %cmp300, label %if.then302, label %if.end504, !dbg !3600

if.then302:                                       ; preds = %land.lhs.true297
    #dbg_value(i32 4, !3474, !DIExpression(), !3601)
  %deblock_ref_table = getelementptr inbounds i8, ptr %h, i64 26656, !dbg !3602
  %arrayidx312 = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !3602
  %50 = load i8, ptr %arrayidx312, align 1, !dbg !3602
  %conv313 = sext i8 %50 to i64, !dbg !3602
  %add314 = add nsw i64 %conv313, 2, !dbg !3602
  %arrayidx316 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add314, !dbg !3602
  %51 = load i8, ptr %arrayidx316, align 1, !dbg !3602
  %arrayidx323 = getelementptr inbounds i8, ptr %h, i64 25125, !dbg !3603
  store i8 %51, ptr %arrayidx323, align 1, !dbg !3604
  store i8 %51, ptr %arrayidx312, align 1, !dbg !3605
  %arrayidx339 = getelementptr inbounds i8, ptr %h, i64 25126, !dbg !3606
  %52 = load i8, ptr %arrayidx339, align 1, !dbg !3606
  %conv340 = sext i8 %52 to i64, !dbg !3606
  %add341 = add nsw i64 %conv340, 2, !dbg !3606
  %arrayidx343 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add341, !dbg !3606
  %53 = load i8, ptr %arrayidx343, align 1, !dbg !3606
  %arrayidx350 = getelementptr inbounds i8, ptr %h, i64 25127, !dbg !3607
  store i8 %53, ptr %arrayidx350, align 1, !dbg !3608
  store i8 %53, ptr %arrayidx339, align 1, !dbg !3609
    #dbg_value(i32 11, !3474, !DIExpression(), !3601)
  %arrayidx367 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !3610
  %54 = load i8, ptr %arrayidx367, align 1, !dbg !3610
  %conv368 = sext i8 %54 to i64, !dbg !3610
  %add369 = add nsw i64 %conv368, 2, !dbg !3610
  %arrayidx371 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add369, !dbg !3610
  %55 = load i8, ptr %arrayidx371, align 1, !dbg !3610
  %arrayidx378 = getelementptr inbounds i8, ptr %h, i64 25139, !dbg !3611
  store i8 %55, ptr %arrayidx378, align 1, !dbg !3612
  store i8 %55, ptr %arrayidx367, align 1, !dbg !3613
  %arrayidx394 = getelementptr inbounds i8, ptr %h, i64 25147, !dbg !3614
  %56 = load i8, ptr %arrayidx394, align 1, !dbg !3614
  %conv395 = sext i8 %56 to i64, !dbg !3614
  %add396 = add nsw i64 %conv395, 2, !dbg !3614
  %arrayidx398 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add396, !dbg !3614
  %57 = load i8, ptr %arrayidx398, align 1, !dbg !3614
  %arrayidx405 = getelementptr inbounds i8, ptr %h, i64 25155, !dbg !3615
  store i8 %57, ptr %arrayidx405, align 1, !dbg !3616
  store i8 %57, ptr %arrayidx394, align 1, !dbg !3617
  %arrayidx420 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !3618
  %58 = load i8, ptr %arrayidx420, align 1, !dbg !3618
  %conv421 = sext i8 %58 to i64, !dbg !3618
  %add422 = add nsw i64 %conv421, 2, !dbg !3618
  %arrayidx424 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add422, !dbg !3618
  %59 = load i8, ptr %arrayidx424, align 1, !dbg !3618
    #dbg_value(i8 %59, !3477, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3601)
  %arrayidx433 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !3619
  %60 = load i8, ptr %arrayidx433, align 1, !dbg !3619
  %conv434 = sext i8 %60 to i64, !dbg !3619
  %add435 = add nsw i64 %conv434, 2, !dbg !3619
  %arrayidx437 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add435, !dbg !3619
  %61 = load i8, ptr %arrayidx437, align 1, !dbg !3619
    #dbg_value(i8 %61, !3478, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3601)
  %arrayidx446 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !3620
  %62 = load i8, ptr %arrayidx446, align 1, !dbg !3620
  %conv447 = sext i8 %62 to i64, !dbg !3620
  %add448 = add nsw i64 %conv447, 2, !dbg !3620
  %arrayidx450 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add448, !dbg !3620
  %63 = load i8, ptr %arrayidx450, align 1, !dbg !3620
    #dbg_value(i8 %63, !3479, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3601)
  %arrayidx459 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !3621
  %64 = load i8, ptr %arrayidx459, align 1, !dbg !3621
  %conv460 = sext i8 %64 to i64, !dbg !3621
  %add461 = add nsw i64 %conv460, 2, !dbg !3621
  %arrayidx463 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add461, !dbg !3621
  %65 = load i8, ptr %arrayidx463, align 1, !dbg !3621
    #dbg_value(i8 %65, !3480, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3601)
  %conv466 = zext i8 %59 to i32, !dbg !3622
  %conv468 = zext i8 %61 to i32, !dbg !3623
    #dbg_value(i32 %conv466, !3624, !DIExpression(), !3630)
    #dbg_value(i32 %conv468, !3629, !DIExpression(), !3630)
  %shl.i = shl nuw nsw i32 %conv468, 16, !dbg !3632
  %add.i653 = or disjoint i32 %shl.i, %conv466, !dbg !3633
  %mul469 = mul nuw i32 %add.i653, 257, !dbg !3634
    #dbg_value(i32 %mul469, !3481, !DIExpression(), !3601)
  %conv471 = zext i8 %63 to i32, !dbg !3635
  %conv473 = zext i8 %65 to i32, !dbg !3636
    #dbg_value(i32 %conv471, !3624, !DIExpression(), !3637)
    #dbg_value(i32 %conv473, !3629, !DIExpression(), !3637)
  %shl.i654 = shl nuw nsw i32 %conv473, 16, !dbg !3639
  %add.i655 = or disjoint i32 %shl.i654, %conv471, !dbg !3640
  %mul475 = mul nuw i32 %add.i655, 257, !dbg !3641
    #dbg_value(i32 %mul475, !3482, !DIExpression(), !3601)
  store i32 %mul469, ptr %arrayidx420, align 1, !dbg !3642
  %arrayidx489 = getelementptr inbounds i8, ptr %h, i64 25140, !dbg !3643
  store i32 %mul469, ptr %arrayidx489, align 1, !dbg !3644
  store i32 %mul475, ptr %arrayidx446, align 1, !dbg !3645
  %arrayidx503 = getelementptr inbounds i8, ptr %h, i64 25156, !dbg !3646
  store i32 %mul475, ptr %arrayidx503, align 1, !dbg !3647
  br label %if.end504, !dbg !3648

if.end504:                                        ; preds = %entry, %if.then302, %land.lhs.true297, %if.end295
  ret void, !dbg !3649
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_save(ptr noundef %h) local_unnamed_addr #0 !dbg !3650 {
entry:
    #dbg_value(ptr %h, !3652, !DIExpression(), !3682)
  %i_mb_xy1 = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !3683
  %0 = load i32, ptr %i_mb_xy1, align 8, !dbg !3683
    #dbg_value(i32 %0, !3653, !DIExpression(), !3682)
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384, !dbg !3684
  %1 = load i32, ptr %i_type, align 8, !dbg !3684
  %idxprom = sext i32 %1 to i64, !dbg !3685
  %arrayidx = getelementptr inbounds [19 x i8], ptr @x264_mb_type_fix, i64 0, i64 %idxprom, !dbg !3685
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3685
    #dbg_value(i8 %2, !3654, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3682)
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376, !dbg !3686
  %3 = load i32, ptr %i_b8_stride, align 8, !dbg !3686
    #dbg_value(i32 %3, !3655, !DIExpression(), !3682)
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380, !dbg !3687
  %4 = load i32, ptr %i_b4_stride, align 4, !dbg !3687
    #dbg_value(i32 %4, !3656, !DIExpression(), !3682)
  %i_b4_xy = getelementptr inbounds i8, ptr %h, i64 16400, !dbg !3688
  %5 = load i32, ptr %i_b4_xy, align 16, !dbg !3688
    #dbg_value(i32 %5, !3657, !DIExpression(), !3682)
  %i_b8_xy = getelementptr inbounds i8, ptr %h, i64 16396, !dbg !3689
  %6 = load i32, ptr %i_b8_xy, align 4, !dbg !3689
    #dbg_value(i32 %6, !3658, !DIExpression(), !3682)
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648, !dbg !3690
  %7 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !3690
  %idxprom8 = sext i32 %0 to i64, !dbg !3691
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %7, i64 %idxprom8, !dbg !3691
    #dbg_value(ptr %arrayidx9, !3659, !DIExpression(), !3682)
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !3692
  %8 = load ptr, ptr %non_zero_count, align 16, !dbg !3692
  %arrayidx12 = getelementptr inbounds [24 x i8], ptr %8, i64 %idxprom8, !dbg !3693
    #dbg_value(ptr %arrayidx12, !3660, !DIExpression(), !3682)
    #dbg_value(ptr %h, !3694, !DIExpression(), !3702)
    #dbg_value(i32 0, !3697, !DIExpression(), !3702)
    #dbg_value(i32 poison, !3698, !DIExpression(), !3702)
  %fdec.i = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !3704
  %9 = load ptr, ptr %fdec.i, align 16, !dbg !3704
  %i_stride1.i = getelementptr inbounds i8, ptr %9, i64 104, !dbg !3705
  %10 = load i32, ptr %i_stride1.i, align 4, !dbg !3706
    #dbg_value(i32 %10, !3699, !DIExpression(), !3702)
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !3707
  %11 = load i32, ptr %b_interlaced.i, align 4, !dbg !3707
    #dbg_value(!DIArgList(i32 %10, i32 %11), !3700, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !3702)
  %tobool6.not.i = icmp eq i32 %11, 0, !dbg !3708
  %i_mb_x16.i = getelementptr inbounds i8, ptr %h, i64 16384, !dbg !3702
  %12 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3702
  %i_mb_y18.i = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !3702
  %13 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3702
  br i1 %tobool6.not.i, label %cond.false.i, label %cond.true.i, !dbg !3708

cond.true.i:                                      ; preds = %entry
  %and.i = and i32 %13, 268435454, !dbg !3709
  %mul.i = mul i32 %and.i, %10, !dbg !3710
  %add.i = add i32 %mul.i, %12, !dbg !3711
  %mul9.i = shl i32 %add.i, 4, !dbg !3712
  %14 = trunc i32 %13 to i1, !dbg !3713
  %mul13.i = select i1 %14, i32 %10, i32 0, !dbg !3713
  %add14.i = add nsw i32 %mul9.i, %mul13.i, !dbg !3714
  br label %x264_macroblock_store_pic.exit, !dbg !3708

cond.false.i:                                     ; preds = %entry
  %mul19.i = mul nsw i32 %13, %10, !dbg !3715
  %add20.i = add nsw i32 %mul19.i, %12, !dbg !3716
  %mul21.i = shl i32 %add20.i, 4, !dbg !3717
  br label %x264_macroblock_store_pic.exit, !dbg !3708

x264_macroblock_store_pic.exit:                   ; preds = %cond.true.i, %cond.false.i
  %cond22.i = phi i32 [ %add14.i, %cond.true.i ], [ %mul21.i, %cond.false.i ], !dbg !3708
    #dbg_value(i32 16, !3698, !DIExpression(), !3702)
  %shl.i = shl i32 %10, %11, !dbg !3718
    #dbg_value(i32 %shl.i, !3700, !DIExpression(), !3702)
    #dbg_value(i32 %cond22.i, !3701, !DIExpression(), !3702)
  %copy.i = getelementptr inbounds i8, ptr %h, i64 32720, !dbg !3719
  %15 = load ptr, ptr %copy.i, align 8, !dbg !3720
  %plane.i = getelementptr inbounds i8, ptr %9, i64 152, !dbg !3721
  %16 = load ptr, ptr %plane.i, align 8, !dbg !3722
  %idxprom30.i = sext i32 %cond22.i to i64, !dbg !3722
  %arrayidx31.i = getelementptr inbounds i8, ptr %16, i64 %idxprom30.i, !dbg !3722
  %p_fdec.i = getelementptr inbounds i8, ptr %h, i64 21392, !dbg !3723
  %17 = load ptr, ptr %p_fdec.i, align 8, !dbg !3724
  tail call void %15(ptr noundef %arrayidx31.i, i32 noundef %shl.i, ptr noundef %17, i32 noundef 32, i32 noundef 16) #13, !dbg !3720
    #dbg_value(ptr %h, !3694, !DIExpression(), !3725)
    #dbg_value(i32 1, !3697, !DIExpression(), !3725)
    #dbg_value(i32 poison, !3698, !DIExpression(), !3725)
  %18 = load ptr, ptr %fdec.i, align 16, !dbg !3727
  %arrayidx.i = getelementptr inbounds i8, ptr %18, i64 108, !dbg !3728
  %19 = load i32, ptr %arrayidx.i, align 4, !dbg !3728
    #dbg_value(i32 %19, !3699, !DIExpression(), !3725)
  %20 = load i32, ptr %b_interlaced.i, align 4, !dbg !3729
    #dbg_value(!DIArgList(i32 %19, i32 %20), !3700, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !3725)
  %tobool6.not.i961 = icmp eq i32 %20, 0, !dbg !3730
  %21 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3725
  %22 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3725
  br i1 %tobool6.not.i961, label %cond.false.i978, label %cond.true.i964, !dbg !3730

cond.true.i964:                                   ; preds = %x264_macroblock_store_pic.exit
  %and.i965 = and i32 %22, 536870910, !dbg !3731
  %mul.i966 = mul i32 %and.i965, %19, !dbg !3732
  %add.i967 = add i32 %mul.i966, %21, !dbg !3733
  %mul9.i968 = shl i32 %add.i967, 3, !dbg !3734
  %23 = trunc i32 %22 to i1, !dbg !3735
  %mul13.i969 = select i1 %23, i32 %19, i32 0, !dbg !3735
  %add14.i970 = add nsw i32 %mul9.i968, %mul13.i969, !dbg !3736
  br label %x264_macroblock_store_pic.exit982, !dbg !3730

cond.false.i978:                                  ; preds = %x264_macroblock_store_pic.exit
  %mul19.i979 = mul nsw i32 %22, %19, !dbg !3737
  %add20.i980 = add nsw i32 %mul19.i979, %21, !dbg !3738
  %mul21.i981 = shl i32 %add20.i980, 3, !dbg !3739
  br label %x264_macroblock_store_pic.exit982, !dbg !3730

x264_macroblock_store_pic.exit982:                ; preds = %cond.true.i964, %cond.false.i978
  %cond22.i971 = phi i32 [ %add14.i970, %cond.true.i964 ], [ %mul21.i981, %cond.false.i978 ], !dbg !3730
    #dbg_value(i32 8, !3698, !DIExpression(), !3725)
  %shl.i972 = shl i32 %19, %20, !dbg !3740
    #dbg_value(i32 %shl.i972, !3700, !DIExpression(), !3725)
    #dbg_value(i32 %cond22.i971, !3701, !DIExpression(), !3725)
  %arrayidx26.i = getelementptr inbounds i8, ptr %h, i64 32744, !dbg !3741
  %24 = load ptr, ptr %arrayidx26.i, align 8, !dbg !3741
  %arrayidx29.i = getelementptr inbounds i8, ptr %18, i64 160, !dbg !3742
  %25 = load ptr, ptr %arrayidx29.i, align 8, !dbg !3742
  %idxprom30.i975 = sext i32 %cond22.i971 to i64, !dbg !3742
  %arrayidx31.i976 = getelementptr inbounds i8, ptr %25, i64 %idxprom30.i975, !dbg !3742
  %arrayidx34.i = getelementptr inbounds i8, ptr %h, i64 21400, !dbg !3743
  %26 = load ptr, ptr %arrayidx34.i, align 8, !dbg !3743
  tail call void %24(ptr noundef %arrayidx31.i976, i32 noundef %shl.i972, ptr noundef %26, i32 noundef 32, i32 noundef 8) #13, !dbg !3741
    #dbg_value(ptr %h, !3694, !DIExpression(), !3744)
    #dbg_value(i32 2, !3697, !DIExpression(), !3744)
    #dbg_value(i32 poison, !3698, !DIExpression(), !3744)
  %27 = load ptr, ptr %fdec.i, align 16, !dbg !3746
  %arrayidx.i985 = getelementptr inbounds i8, ptr %27, i64 108, !dbg !3747
  %28 = load i32, ptr %arrayidx.i985, align 4, !dbg !3747
    #dbg_value(i32 %28, !3699, !DIExpression(), !3744)
  %29 = load i32, ptr %b_interlaced.i, align 4, !dbg !3748
    #dbg_value(!DIArgList(i32 %28, i32 %29), !3700, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !3744)
  %tobool6.not.i987 = icmp eq i32 %29, 0, !dbg !3749
  %30 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3744
  %31 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3744
  br i1 %tobool6.not.i987, label %cond.false.i1007, label %cond.true.i990, !dbg !3749

cond.true.i990:                                   ; preds = %x264_macroblock_store_pic.exit982
  %and.i991 = and i32 %31, 536870910, !dbg !3750
  %mul.i992 = mul i32 %and.i991, %28, !dbg !3751
  %add.i993 = add i32 %mul.i992, %30, !dbg !3752
  %mul9.i994 = shl i32 %add.i993, 3, !dbg !3753
  %32 = trunc i32 %31 to i1, !dbg !3754
  %mul13.i995 = select i1 %32, i32 %28, i32 0, !dbg !3754
  %add14.i996 = add nsw i32 %mul9.i994, %mul13.i995, !dbg !3755
  br label %x264_macroblock_store_pic.exit1011, !dbg !3749

cond.false.i1007:                                 ; preds = %x264_macroblock_store_pic.exit982
  %mul19.i1008 = mul nsw i32 %31, %28, !dbg !3756
  %add20.i1009 = add nsw i32 %mul19.i1008, %30, !dbg !3757
  %mul21.i1010 = shl i32 %add20.i1009, 3, !dbg !3758
  br label %x264_macroblock_store_pic.exit1011, !dbg !3749

x264_macroblock_store_pic.exit1011:               ; preds = %cond.true.i990, %cond.false.i1007
  %cond22.i997 = phi i32 [ %add14.i996, %cond.true.i990 ], [ %mul21.i1010, %cond.false.i1007 ], !dbg !3749
    #dbg_value(i32 8, !3698, !DIExpression(), !3744)
  %shl.i998 = shl i32 %28, %29, !dbg !3759
    #dbg_value(i32 %shl.i998, !3700, !DIExpression(), !3744)
    #dbg_value(i32 %cond22.i997, !3701, !DIExpression(), !3744)
  %33 = load ptr, ptr %arrayidx26.i, align 8, !dbg !3760
  %arrayidx29.i1002 = getelementptr inbounds i8, ptr %27, i64 168, !dbg !3761
  %34 = load ptr, ptr %arrayidx29.i1002, align 8, !dbg !3761
  %idxprom30.i1003 = sext i32 %cond22.i997 to i64, !dbg !3761
  %arrayidx31.i1004 = getelementptr inbounds i8, ptr %34, i64 %idxprom30.i1003, !dbg !3761
  %arrayidx34.i1006 = getelementptr inbounds i8, ptr %h, i64 21408, !dbg !3762
  %35 = load ptr, ptr %arrayidx34.i1006, align 8, !dbg !3762
  tail call void %33(ptr noundef %arrayidx31.i1004, i32 noundef %shl.i998, ptr noundef %35, i32 noundef 32, i32 noundef 8) #13, !dbg !3760
  %36 = load ptr, ptr %fdec.i, align 16, !dbg !3763
  %37 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3764
  %38 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3765
    #dbg_value(ptr %h, !2515, !DIExpression(), !3766)
    #dbg_value(ptr %36, !2516, !DIExpression(), !3766)
    #dbg_value(i32 %37, !2517, !DIExpression(), !3766)
    #dbg_value(i32 %38, !2518, !DIExpression(), !3766)
  %i_stride.i = getelementptr inbounds i8, ptr %36, i64 104, !dbg !3768
  %39 = load i32, ptr %i_stride.i, align 8, !dbg !3769
    #dbg_value(i32 %39, !2519, !DIExpression(), !3766)
  %arrayidx2.i = getelementptr inbounds i8, ptr %36, i64 108, !dbg !3770
  %40 = load i32, ptr %arrayidx2.i, align 4, !dbg !3770
    #dbg_value(i32 %40, !2520, !DIExpression(), !3766)
  %mul.i1012 = mul nsw i32 %39, %38, !dbg !3771
  %add.i1013 = add nsw i32 %mul.i1012, %37, !dbg !3772
  %mul3.i = shl nsw i32 %add.i1013, 4, !dbg !3773
    #dbg_value(i32 %mul3.i, !2521, !DIExpression(), !3766)
  %mul4.i = mul nsw i32 %40, %38, !dbg !3774
  %add5.i = add nsw i32 %mul4.i, %37, !dbg !3775
  %mul6.i = shl nsw i32 %add5.i, 3, !dbg !3776
    #dbg_value(i32 %mul6.i, !2522, !DIExpression(), !3766)
  %prefetch_fenc.i = getelementptr inbounds i8, ptr %h, i64 32800, !dbg !3777
  %41 = load ptr, ptr %prefetch_fenc.i, align 8, !dbg !3777
  %plane.i1014 = getelementptr inbounds i8, ptr %36, i64 152, !dbg !3778
  %42 = load ptr, ptr %plane.i1014, align 8, !dbg !3779
  %idx.ext.i = sext i32 %mul3.i to i64, !dbg !3780
  %add.ptr.i = getelementptr inbounds i8, ptr %42, i64 %idx.ext.i, !dbg !3780
  %and.i1015 = and i32 %37, 1, !dbg !3781
  %add9.i = add nuw nsw i32 %and.i1015, 1, !dbg !3782
  %idxprom.i = zext nneg i32 %add9.i to i64, !dbg !3783
  %arrayidx10.i = getelementptr inbounds [3 x ptr], ptr %plane.i1014, i64 0, i64 %idxprom.i, !dbg !3783
  %43 = load ptr, ptr %arrayidx10.i, align 8, !dbg !3783
  %idx.ext11.i = sext i32 %mul6.i to i64, !dbg !3784
  %add.ptr12.i = getelementptr inbounds i8, ptr %43, i64 %idx.ext11.i, !dbg !3784
  tail call void %41(ptr noundef %add.ptr.i, i32 noundef %39, ptr noundef %add.ptr12.i, i32 noundef %40, i32 noundef %37) #13, !dbg !3785
  %type = getelementptr inbounds i8, ptr %h, i64 16616, !dbg !3786
  %44 = load ptr, ptr %type, align 8, !dbg !3786
  %arrayidx19 = getelementptr inbounds i8, ptr %44, i64 %idxprom8, !dbg !3787
  store i8 %2, ptr %arrayidx19, align 1, !dbg !3788
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252, !dbg !3789
  %45 = load i32, ptr %i_first_mb, align 4, !dbg !3789
  %conv20 = trunc i32 %45 to i16, !dbg !3790
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248, !dbg !3791
  %46 = load ptr, ptr %slice_table, align 16, !dbg !3791
  %arrayidx23 = getelementptr inbounds i16, ptr %46, i64 %idxprom8, !dbg !3792
  store i16 %conv20, ptr %arrayidx23, align 2, !dbg !3793
  %cmp31 = icmp eq i32 %1, 3, !dbg !3794
  %or.cond714 = icmp ult i32 %1, 4, !dbg !3794
  br i1 %or.cond714, label %cond.end, label %cond.end.thread, !dbg !3794

cond.end.thread:                                  ; preds = %x264_macroblock_store_pic.exit1011
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !3795
  %47 = load i32, ptr %i_partition, align 4, !dbg !3795
  %conv341019 = trunc i32 %47 to i8, !dbg !3794
  %partition1020 = getelementptr inbounds i8, ptr %h, i64 16624, !dbg !3796
  %48 = load ptr, ptr %partition1020, align 16, !dbg !3796
  %arrayidx371021 = getelementptr inbounds i8, ptr %48, i64 %idxprom8, !dbg !3797
  store i8 %conv341019, ptr %arrayidx371021, align 1, !dbg !3798
  %i_mb_prev_xy1022 = getelementptr inbounds i8, ptr %h, i64 16596, !dbg !3799
  store i32 %0, ptr %i_mb_prev_xy1022, align 4, !dbg !3800
  br label %if.else, !dbg !3801

cond.end:                                         ; preds = %x264_macroblock_store_pic.exit1011
  %cmp = icmp ult i32 %1, 2, !dbg !3794
  %partition = getelementptr inbounds i8, ptr %h, i64 16624, !dbg !3796
  %49 = load ptr, ptr %partition, align 16, !dbg !3796
  %arrayidx37 = getelementptr inbounds i8, ptr %49, i64 %idxprom8, !dbg !3797
  store i8 16, ptr %arrayidx37, align 1, !dbg !3798
  %i_mb_prev_xy = getelementptr inbounds i8, ptr %h, i64 16596, !dbg !3799
  store i32 %0, ptr %i_mb_prev_xy, align 4, !dbg !3800
  br i1 %cmp, label %if.then, label %if.else, !dbg !3801

if.then:                                          ; preds = %cond.end
  %arrayidx44 = getelementptr inbounds i8, ptr %h, i64 25060, !dbg !3802
  %50 = load i32, ptr %arrayidx44, align 1, !dbg !3802
  store i32 %50, ptr %arrayidx9, align 4, !dbg !3802
  %arrayidx50 = getelementptr inbounds i8, ptr %h, i64 25039, !dbg !3805
  %51 = load i8, ptr %arrayidx50, align 1, !dbg !3805
  %conv51 = sext i8 %51 to i32, !dbg !3805
  %arrayidx56 = getelementptr inbounds i8, ptr %h, i64 25047, !dbg !3806
  %52 = load i8, ptr %arrayidx56, align 1, !dbg !3806
  %conv57 = sext i8 %52 to i32, !dbg !3806
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25055, !dbg !3807
  %53 = load i8, ptr %arrayidx62, align 1, !dbg !3807
  %conv63 = sext i8 %53 to i32, !dbg !3807
    #dbg_value(i32 %conv51, !3808, !DIExpression(), !3816)
    #dbg_value(i32 %conv57, !3813, !DIExpression(), !3816)
    #dbg_value(i32 %conv63, !3814, !DIExpression(), !3816)
    #dbg_value(i32 0, !3815, !DIExpression(), !3816)
  %shl.i1016 = shl nsw i32 %conv57, 8, !dbg !3818
  %add.i1017 = add nsw i32 %shl.i1016, %conv51, !dbg !3819
  %shl1.i = shl nsw i32 %conv63, 16, !dbg !3820
  %add2.i = add nsw i32 %add.i1017, %shl1.i, !dbg !3821
  %arrayidx64 = getelementptr inbounds i8, ptr %arrayidx9, i64 4, !dbg !3822
  store i32 %add2.i, ptr %arrayidx64, align 4, !dbg !3823
  br label %if.else102, !dbg !3824

if.else:                                          ; preds = %cond.end.thread, %cond.end
  %b_constrained_intra = getelementptr inbounds i8, ptr %h, i64 140, !dbg !3825
  %54 = load i32, ptr %b_constrained_intra, align 4, !dbg !3825
  %tobool = icmp eq i32 %54, 0, !dbg !3827
  %55 = and i32 %1, -2, !dbg !3828
  %56 = icmp eq i32 %55, 2, !dbg !3828
  %or.cond718 = or i1 %56, %tobool, !dbg !3828
  br i1 %or.cond718, label %if.end79, label %if.else78, !dbg !3828

if.else78:                                        ; preds = %if.else
  store i64 -1, ptr %arrayidx9, align 8, !dbg !3829
  br label %if.else102

if.end79:                                         ; preds = %if.else
  store i64 144680345676153346, ptr %arrayidx9, align 8, !dbg !3830
  br i1 %cmp31, label %if.then82, label %if.else102, !dbg !3831

if.then82:                                        ; preds = %if.end79
  %qp = getelementptr inbounds i8, ptr %h, i64 16632, !dbg !3832
  %57 = load ptr, ptr %qp, align 8, !dbg !3832
  %arrayidx85 = getelementptr inbounds i8, ptr %57, i64 %idxprom8, !dbg !3833
  store i8 0, ptr %arrayidx85, align 1, !dbg !3834
  %i_last_dqp = getelementptr inbounds i8, ptr %h, i64 25804, !dbg !3835
  store i32 0, ptr %i_last_dqp, align 4, !dbg !3836
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3837
  store i32 2, ptr %i_cbp_chroma, align 4, !dbg !3838
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3839
  store i32 15, ptr %i_cbp_luma, align 8, !dbg !3840
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640, !dbg !3841
  %58 = load ptr, ptr %cbp, align 16, !dbg !3841
  %arrayidx91 = getelementptr inbounds i16, ptr %58, i64 %idxprom8, !dbg !3842
  store i16 1839, ptr %arrayidx91, align 2, !dbg !3843
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3844
  store i32 0, ptr %b_transform_8x8, align 4, !dbg !3845
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %arrayidx12, i8 16, i64 24, i1 false), !dbg !3846
    #dbg_value(i32 0, !3661, !DIExpression(), !3847)
    #dbg_value(i32 0, !3661, !DIExpression(), !3847)
    #dbg_value(i64 0, !3661, !DIExpression(), !3847)
  %arrayidx101 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3848
    #dbg_value(i64 1, !3661, !DIExpression(), !3847)
    #dbg_value(i64 2, !3661, !DIExpression(), !3847)
  %arrayidx101.2 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3848
    #dbg_value(i64 3, !3661, !DIExpression(), !3847)
    #dbg_value(i64 4, !3661, !DIExpression(), !3847)
    #dbg_value(i64 5, !3661, !DIExpression(), !3847)
    #dbg_value(i64 6, !3661, !DIExpression(), !3847)
    #dbg_value(i64 7, !3661, !DIExpression(), !3847)
    #dbg_value(i64 8, !3661, !DIExpression(), !3847)
  %arrayidx101.8 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3848
    #dbg_value(i64 9, !3661, !DIExpression(), !3847)
    #dbg_value(i64 10, !3661, !DIExpression(), !3847)
  %arrayidx101.10 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3848
    #dbg_value(i64 11, !3661, !DIExpression(), !3847)
    #dbg_value(i64 12, !3661, !DIExpression(), !3847)
    #dbg_value(i64 13, !3661, !DIExpression(), !3847)
    #dbg_value(i64 14, !3661, !DIExpression(), !3847)
    #dbg_value(i64 15, !3661, !DIExpression(), !3847)
    #dbg_value(i64 16, !3661, !DIExpression(), !3847)
  %arrayidx101.16 = getelementptr inbounds i8, ptr %h, i64 25081, !dbg !3848
  store i8 16, ptr %arrayidx101.16, align 1, !dbg !3850
    #dbg_value(i64 17, !3661, !DIExpression(), !3847)
  %arrayidx101.17 = getelementptr inbounds i8, ptr %h, i64 25082, !dbg !3848
  store i8 16, ptr %arrayidx101.17, align 1, !dbg !3850
    #dbg_value(i64 18, !3661, !DIExpression(), !3847)
  %arrayidx101.18 = getelementptr inbounds i8, ptr %h, i64 25089, !dbg !3848
  store i8 16, ptr %arrayidx101.18, align 1, !dbg !3850
    #dbg_value(i64 19, !3661, !DIExpression(), !3847)
  %arrayidx101.19 = getelementptr inbounds i8, ptr %h, i64 25090, !dbg !3848
  store i8 16, ptr %arrayidx101.19, align 1, !dbg !3850
    #dbg_value(i64 20, !3661, !DIExpression(), !3847)
  %arrayidx101.20 = getelementptr inbounds i8, ptr %h, i64 25105, !dbg !3848
  store i8 16, ptr %arrayidx101.20, align 1, !dbg !3850
    #dbg_value(i64 21, !3661, !DIExpression(), !3847)
  %arrayidx101.21 = getelementptr inbounds i8, ptr %h, i64 25106, !dbg !3848
  store i8 16, ptr %arrayidx101.21, align 1, !dbg !3850
    #dbg_value(i64 22, !3661, !DIExpression(), !3847)
  %arrayidx101.22 = getelementptr inbounds i8, ptr %h, i64 25113, !dbg !3848
  store i8 16, ptr %arrayidx101.22, align 1, !dbg !3850
    #dbg_value(i64 23, !3661, !DIExpression(), !3847)
  %arrayidx101.23 = getelementptr inbounds i8, ptr %h, i64 25114, !dbg !3848
  store i8 16, ptr %arrayidx101.23, align 1, !dbg !3850
    #dbg_value(i64 24, !3661, !DIExpression(), !3847)
  store i32 269488144, ptr %arrayidx101, align 1, !dbg !3850
  store i32 269488144, ptr %arrayidx101.2, align 1, !dbg !3850
  store i32 269488144, ptr %arrayidx101.8, align 1, !dbg !3850
  store i32 269488144, ptr %arrayidx101.10, align 1, !dbg !3850
  br label %if.end199, !dbg !3851

if.else102:                                       ; preds = %if.then, %if.else78, %if.end79
  %arrayidx107 = getelementptr inbounds i8, ptr %h, i64 25084, !dbg !3853
  %59 = load i32, ptr %arrayidx107, align 1, !dbg !3853
  store i32 %59, ptr %arrayidx12, align 4, !dbg !3853
  %arrayidx114 = getelementptr inbounds i8, ptr %h, i64 25092, !dbg !3855
  %60 = load i32, ptr %arrayidx114, align 1, !dbg !3855
  %arrayidx115 = getelementptr inbounds i8, ptr %arrayidx12, i64 4, !dbg !3855
  store i32 %60, ptr %arrayidx115, align 4, !dbg !3855
  %arrayidx121 = getelementptr inbounds i8, ptr %h, i64 25100, !dbg !3856
  %61 = load i32, ptr %arrayidx121, align 1, !dbg !3856
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx12, i64 8, !dbg !3856
  store i32 %61, ptr %arrayidx122, align 4, !dbg !3856
  %arrayidx128 = getelementptr inbounds i8, ptr %h, i64 25108, !dbg !3857
  %62 = load i32, ptr %arrayidx128, align 1, !dbg !3857
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx12, i64 12, !dbg !3857
  store i32 %62, ptr %arrayidx129, align 4, !dbg !3857
  %arrayidx134 = getelementptr inbounds i8, ptr %h, i64 25080, !dbg !3858
  %63 = load i32, ptr %arrayidx134, align 1, !dbg !3858
  %shr = lshr i32 %63, 8, !dbg !3859
  %conv135 = trunc i32 %shr to i16, !dbg !3858
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx12, i64 16, !dbg !3860
  store i16 %conv135, ptr %arrayidx136, align 2, !dbg !3861
  %arrayidx142 = getelementptr inbounds i8, ptr %h, i64 25088, !dbg !3862
  %64 = load i32, ptr %arrayidx142, align 1, !dbg !3862
  %shr143 = lshr i32 %64, 8, !dbg !3863
  %conv144 = trunc i32 %shr143 to i16, !dbg !3862
  %arrayidx145 = getelementptr inbounds i8, ptr %arrayidx12, i64 18, !dbg !3864
  store i16 %conv144, ptr %arrayidx145, align 2, !dbg !3865
  %arrayidx151 = getelementptr inbounds i8, ptr %h, i64 25104, !dbg !3866
  %65 = load i32, ptr %arrayidx151, align 1, !dbg !3866
  %shr152 = lshr i32 %65, 8, !dbg !3867
  %conv153 = trunc i32 %shr152 to i16, !dbg !3866
  %arrayidx154 = getelementptr inbounds i8, ptr %arrayidx12, i64 20, !dbg !3868
  store i16 %conv153, ptr %arrayidx154, align 2, !dbg !3869
  %arrayidx160 = getelementptr inbounds i8, ptr %h, i64 25112, !dbg !3870
  %66 = load i32, ptr %arrayidx160, align 1, !dbg !3870
  %shr161 = lshr i32 %66, 8, !dbg !3871
  %conv162 = trunc i32 %shr161 to i16, !dbg !3870
  %arrayidx163 = getelementptr inbounds i8, ptr %arrayidx12, i64 22, !dbg !3872
  store i16 %conv162, ptr %arrayidx163, align 2, !dbg !3873
  %67 = load i32, ptr %i_type, align 8, !dbg !3874
  %cmp166.not = icmp eq i32 %67, 2, !dbg !3876
  br i1 %cmp166.not, label %if.end180, label %land.lhs.true, !dbg !3877

land.lhs.true:                                    ; preds = %if.else102
  %i_cbp_luma169 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3878
  %68 = load i32, ptr %i_cbp_luma169, align 8, !dbg !3878
  %cmp170 = icmp eq i32 %68, 0, !dbg !3879
  br i1 %cmp170, label %land.lhs.true172, label %if.end180, !dbg !3880

land.lhs.true172:                                 ; preds = %land.lhs.true
  %i_cbp_chroma174 = getelementptr inbounds i8, ptr %h, i64 17404, !dbg !3881
  %69 = load i32, ptr %i_cbp_chroma174, align 4, !dbg !3881
  %cmp175 = icmp eq i32 %69, 0, !dbg !3882
  br i1 %cmp175, label %if.then177, label %if.end180, !dbg !3883

if.then177:                                       ; preds = %land.lhs.true172
  %i_last_qp = getelementptr inbounds i8, ptr %h, i64 25800, !dbg !3884
  %70 = load i32, ptr %i_last_qp, align 8, !dbg !3884
  %i_qp = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3885
  store i32 %70, ptr %i_qp, align 16, !dbg !3886
  br label %if.end180, !dbg !3887

if.end180:                                        ; preds = %if.then177, %land.lhs.true172, %land.lhs.true, %if.else102
  %i_qp182 = getelementptr inbounds i8, ptr %h, i64 25792, !dbg !3888
  %71 = load i32, ptr %i_qp182, align 16, !dbg !3888
  %conv183 = trunc i32 %71 to i8, !dbg !3889
  %qp185 = getelementptr inbounds i8, ptr %h, i64 16632, !dbg !3890
  %72 = load ptr, ptr %qp185, align 8, !dbg !3890
  %arrayidx187 = getelementptr inbounds i8, ptr %72, i64 %idxprom8, !dbg !3891
  store i8 %conv183, ptr %arrayidx187, align 1, !dbg !3892
  %73 = load i32, ptr %i_qp182, align 16, !dbg !3893
  %i_last_qp191 = getelementptr inbounds i8, ptr %h, i64 25800, !dbg !3894
  %74 = load i32, ptr %i_last_qp191, align 8, !dbg !3894
  %sub192 = sub nsw i32 %73, %74, !dbg !3895
  %i_last_dqp194 = getelementptr inbounds i8, ptr %h, i64 25804, !dbg !3896
  store i32 %sub192, ptr %i_last_dqp194, align 4, !dbg !3897
  store i32 %73, ptr %i_last_qp191, align 8, !dbg !3898
  br label %if.end199

if.end199:                                        ; preds = %if.then82, %if.end180
  %i_cbp_luma201 = getelementptr inbounds i8, ptr %h, i64 17400, !dbg !3851
  %75 = load i32, ptr %i_cbp_luma201, align 8, !dbg !3851
  %cmp202 = icmp eq i32 %75, 0, !dbg !3899
  br i1 %cmp202, label %land.lhs.true204, label %if.end212, !dbg !3900

land.lhs.true204:                                 ; preds = %if.end199
  %76 = load i32, ptr %i_type, align 8, !dbg !3901
  %cmp207.not = icmp eq i32 %76, 1, !dbg !3902
  br i1 %cmp207.not, label %if.end212, label %if.then209, !dbg !3903

if.then209:                                       ; preds = %land.lhs.true204
  %b_transform_8x8211 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3904
  store i32 0, ptr %b_transform_8x8211, align 4, !dbg !3905
  br label %if.end212, !dbg !3906

if.end212:                                        ; preds = %if.then209, %land.lhs.true204, %if.end199
  %b_transform_8x8214 = getelementptr inbounds i8, ptr %h, i64 17396, !dbg !3907
  %77 = load i32, ptr %b_transform_8x8214, align 4, !dbg !3907
  %conv215 = trunc i32 %77 to i8, !dbg !3908
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !3909
  %78 = load ptr, ptr %mb_transform_size, align 8, !dbg !3909
  %arrayidx218 = getelementptr inbounds i8, ptr %78, i64 %idxprom8, !dbg !3910
  store i8 %conv215, ptr %arrayidx218, align 1, !dbg !3911
  %i_type220 = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !3912
  %79 = load i32, ptr %i_type220, align 16, !dbg !3912
  %cmp221.not = icmp eq i32 %79, 2, !dbg !3913
  br i1 %cmp221.not, label %if.end493, label %if.then223, !dbg !3914

if.then223:                                       ; preds = %if.end212
  %mv = getelementptr inbounds i8, ptr %h, i64 16672, !dbg !3915
  %80 = load ptr, ptr %mv, align 16, !dbg !3916
  %idxprom226 = sext i32 %5 to i64, !dbg !3916
  %arrayidx227 = getelementptr inbounds [2 x i16], ptr %80, i64 %idxprom226, !dbg !3916
    #dbg_value(ptr %arrayidx227, !3665, !DIExpression(), !3917)
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 16680, !dbg !3918
  %81 = load ptr, ptr %arrayidx230, align 8, !dbg !3918
  %arrayidx232 = getelementptr inbounds [2 x i16], ptr %81, i64 %idxprom226, !dbg !3918
    #dbg_value(ptr %arrayidx232, !3668, !DIExpression(), !3917)
  %ref = getelementptr inbounds i8, ptr %h, i64 16704, !dbg !3919
  %82 = load ptr, ptr %ref, align 16, !dbg !3920
  %idxprom235 = sext i32 %6 to i64, !dbg !3920
  %arrayidx236 = getelementptr inbounds i8, ptr %82, i64 %idxprom235, !dbg !3920
    #dbg_value(ptr %arrayidx236, !3669, !DIExpression(), !3917)
  %arrayidx239 = getelementptr inbounds i8, ptr %h, i64 16712, !dbg !3921
  %83 = load ptr, ptr %arrayidx239, align 8, !dbg !3921
  %arrayidx241 = getelementptr inbounds i8, ptr %83, i64 %idxprom235, !dbg !3921
    #dbg_value(ptr %arrayidx241, !3670, !DIExpression(), !3917)
  br i1 %or.cond714, label %if.else427, label %if.then253, !dbg !3922

if.then253:                                       ; preds = %if.then223
  %arrayidx259 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !3924
  %84 = load i8, ptr %arrayidx259, align 1, !dbg !3924
  store i8 %84, ptr %arrayidx236, align 1, !dbg !3926
  %arrayidx268 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !3927
  %85 = load i8, ptr %arrayidx268, align 1, !dbg !3927
  %arrayidx272 = getelementptr inbounds i8, ptr %arrayidx236, i64 1, !dbg !3928
  store i8 %85, ptr %arrayidx272, align 1, !dbg !3929
  %arrayidx278 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !3930
  %86 = load i8, ptr %arrayidx278, align 1, !dbg !3930
  %idxprom281 = sext i32 %3 to i64, !dbg !3931
  %arrayidx282 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom281, !dbg !3931
  store i8 %86, ptr %arrayidx282, align 1, !dbg !3932
  %arrayidx288 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !3933
  %87 = load i8, ptr %arrayidx288, align 1, !dbg !3933
  %add290 = add nsw i32 %3, 1, !dbg !3934
  %idxprom291 = sext i32 %add290 to i64, !dbg !3935
  %arrayidx292 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom291, !dbg !3935
  store i8 %87, ptr %arrayidx292, align 1, !dbg !3936
  %arrayidx302 = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !3937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx302, i64 16, i1 false), !dbg !3937
  %idxprom305 = sext i32 %4 to i64, !dbg !3938
  %arrayidx306 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom305, !dbg !3938
  %arrayidx313 = getelementptr inbounds i8, ptr %h, i64 25280, !dbg !3938
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx306, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx313, i64 16, i1 false), !dbg !3938
  %mul315 = shl nsw i32 %4, 1, !dbg !3939
  %idxprom316 = sext i32 %mul315 to i64, !dbg !3939
  %arrayidx317 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom316, !dbg !3939
  %arrayidx324 = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !3939
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx317, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx324, i64 16, i1 false), !dbg !3939
  %mul326 = mul nsw i32 %4, 3, !dbg !3940
  %idxprom327 = sext i32 %mul326 to i64, !dbg !3940
  %arrayidx328 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom327, !dbg !3940
  %arrayidx335 = getelementptr inbounds i8, ptr %h, i64 25344, !dbg !3940
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx328, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx335, i64 16, i1 false), !dbg !3940
  %88 = load i32, ptr %i_type220, align 16, !dbg !3941
  %cmp339 = icmp eq i32 %88, 1, !dbg !3943
  br i1 %cmp339, label %if.then341, label %if.end493, !dbg !3944

if.then341:                                       ; preds = %if.then253
  %arrayidx347 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !3945
  %89 = load i8, ptr %arrayidx347, align 1, !dbg !3945
  store i8 %89, ptr %arrayidx241, align 1, !dbg !3947
  %arrayidx357 = getelementptr inbounds i8, ptr %h, i64 25174, !dbg !3948
  %90 = load i8, ptr %arrayidx357, align 1, !dbg !3948
  %arrayidx361 = getelementptr inbounds i8, ptr %arrayidx241, i64 1, !dbg !3949
  store i8 %90, ptr %arrayidx361, align 1, !dbg !3950
  %arrayidx367 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !3951
  %91 = load i8, ptr %arrayidx367, align 1, !dbg !3951
  %arrayidx371 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom281, !dbg !3952
  store i8 %91, ptr %arrayidx371, align 1, !dbg !3953
  %arrayidx377 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !3954
  %92 = load i8, ptr %arrayidx377, align 1, !dbg !3954
  %arrayidx381 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom291, !dbg !3955
  store i8 %92, ptr %arrayidx381, align 1, !dbg !3956
  %arrayidx391 = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !3957
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx391, i64 16, i1 false), !dbg !3957
  %arrayidx395 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom305, !dbg !3958
  %arrayidx402 = getelementptr inbounds i8, ptr %h, i64 25440, !dbg !3958
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx395, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx402, i64 16, i1 false), !dbg !3958
  %arrayidx406 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom316, !dbg !3959
  %arrayidx413 = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !3959
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx406, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx413, i64 16, i1 false), !dbg !3959
  %arrayidx417 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom327, !dbg !3960
  %arrayidx424 = getelementptr inbounds i8, ptr %h, i64 25504, !dbg !3960
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx417, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx424, i64 16, i1 false), !dbg !3960
  br label %if.end493, !dbg !3961

if.else427:                                       ; preds = %if.then223
  store i16 -1, ptr %arrayidx236, align 2, !dbg !3962
  %idxprom432 = sext i32 %3 to i64, !dbg !3964
  %arrayidx433 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom432, !dbg !3964
  store i16 -1, ptr %arrayidx433, align 2, !dbg !3965
  %idxprom439 = sext i32 %4 to i64, !dbg !3966
  %arrayidx440 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom439, !dbg !3966
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, i8 0, i64 16, i1 false), !dbg !3967
  %mul444 = shl nsw i32 %4, 1, !dbg !3968
  %idxprom445 = sext i32 %mul444 to i64, !dbg !3968
  %arrayidx446 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom445, !dbg !3968
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx440, i8 0, i64 16, i1 false), !dbg !3969
  %mul450 = mul nsw i32 %4, 3, !dbg !3970
  %idxprom451 = sext i32 %mul450 to i64, !dbg !3970
  %arrayidx452 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom451, !dbg !3970
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx446, i8 0, i64 16, i1 false), !dbg !3971
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx452, i8 0, i64 16, i1 false), !dbg !3972
  %93 = load i32, ptr %i_type220, align 16, !dbg !3973
  %cmp458 = icmp eq i32 %93, 1, !dbg !3975
  br i1 %cmp458, label %if.then460, label %if.end493, !dbg !3976

if.then460:                                       ; preds = %if.else427
  store i16 -1, ptr %arrayidx241, align 2, !dbg !3977
  %arrayidx466 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom432, !dbg !3979
  store i16 -1, ptr %arrayidx466, align 2, !dbg !3980
  %arrayidx475 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom439, !dbg !3981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, i8 0, i64 16, i1 false), !dbg !3982
  %arrayidx481 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom445, !dbg !3983
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx475, i8 0, i64 16, i1 false), !dbg !3984
  %arrayidx487 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom451, !dbg !3985
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx481, i8 0, i64 16, i1 false), !dbg !3986
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx487, i8 0, i64 16, i1 false), !dbg !3987
  br label %if.end493, !dbg !3988

if.end493:                                        ; preds = %if.then341, %if.then253, %if.then460, %if.else427, %if.end212
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128, !dbg !3989
  %94 = load i32, ptr %b_cabac, align 16, !dbg !3989
  %tobool495.not = icmp eq i32 %94, 0, !dbg !3990
  br i1 %tobool495.not, label %if.end712, label %if.then496, !dbg !3991

if.then496:                                       ; preds = %if.end493
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688, !dbg !3992
  %95 = load ptr, ptr %mvd, align 16, !dbg !3993
  %arrayidx500 = getelementptr inbounds [8 x [2 x i8]], ptr %95, i64 %idxprom8, !dbg !3993
    #dbg_value(ptr %arrayidx500, !3671, !DIExpression(), !3994)
  %arrayidx504 = getelementptr inbounds i8, ptr %h, i64 16696, !dbg !3995
  %96 = load ptr, ptr %arrayidx504, align 8, !dbg !3995
  %arrayidx506 = getelementptr inbounds [8 x [2 x i8]], ptr %96, i64 %idxprom8, !dbg !3995
    #dbg_value(ptr %arrayidx506, !3675, !DIExpression(), !3994)
  %or.cond725 = icmp ult i32 %1, 3, !dbg !3996
  br i1 %or.cond725, label %if.then522, label %if.end534, !dbg !3996

if.then522:                                       ; preds = %if.then496
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412, !dbg !3998
  %97 = load i32, ptr %i_chroma_pred_mode, align 4, !dbg !3998
  %idxprom524 = sext i32 %97 to i64, !dbg !3999
  %arrayidx525 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom524, !dbg !3999
  %98 = load i8, ptr %arrayidx525, align 1, !dbg !3999
  br label %if.end534, !dbg !4000

if.end534:                                        ; preds = %if.then496, %if.then522
  %.sink = phi i8 [ %98, %if.then522 ], [ 0, %if.then496 ]
  %chroma_pred_mode531 = getelementptr inbounds i8, ptr %h, i64 16664, !dbg !4001
  %99 = load ptr, ptr %chroma_pred_mode531, align 8, !dbg !4001
  %arrayidx533 = getelementptr inbounds i8, ptr %99, i64 %idxprom8, !dbg !4001
  store i8 %.sink, ptr %arrayidx533, align 1, !dbg !4001
  switch i32 %1, label %if.then555 [
    i32 18, label %if.else634
    i32 7, label %if.else634
    i32 6, label %if.else634
    i32 3, label %if.else634
    i32 2, label %if.else634
    i32 1, label %if.else634
    i32 0, label %if.else634
  ], !dbg !4002

if.then555:                                       ; preds = %if.end534
  %arrayidx561 = getelementptr inbounds i8, ptr %h, i64 25592, !dbg !4004
  %100 = load i64, ptr %arrayidx561, align 2, !dbg !4004
  store i64 %100, ptr %arrayidx500, align 8, !dbg !4004
  %arrayidx570 = getelementptr inbounds i8, ptr %h, i64 25550, !dbg !4006
  %101 = load i16, ptr %arrayidx570, align 2, !dbg !4006
  %arrayidx572 = getelementptr inbounds i8, ptr %arrayidx500, i64 8, !dbg !4006
  store i16 %101, ptr %arrayidx572, align 2, !dbg !4006
  %arrayidx579 = getelementptr inbounds i8, ptr %h, i64 25566, !dbg !4007
  %102 = load i16, ptr %arrayidx579, align 2, !dbg !4007
  %arrayidx581 = getelementptr inbounds i8, ptr %arrayidx500, i64 10, !dbg !4007
  store i16 %102, ptr %arrayidx581, align 2, !dbg !4007
  %arrayidx588 = getelementptr inbounds i8, ptr %h, i64 25582, !dbg !4008
  %103 = load i16, ptr %arrayidx588, align 2, !dbg !4008
  %arrayidx590 = getelementptr inbounds i8, ptr %arrayidx500, i64 12, !dbg !4008
  store i16 %103, ptr %arrayidx590, align 2, !dbg !4008
  %104 = load i32, ptr %i_type220, align 16, !dbg !4009
  %cmp594 = icmp eq i32 %104, 1, !dbg !4011
  br i1 %cmp594, label %if.then596, label %if.end712, !dbg !4012

if.then596:                                       ; preds = %if.then555
  %arrayidx602 = getelementptr inbounds i8, ptr %h, i64 25672, !dbg !4013
  %105 = load i64, ptr %arrayidx602, align 2, !dbg !4013
  store i64 %105, ptr %arrayidx506, align 8, !dbg !4013
  %arrayidx611 = getelementptr inbounds i8, ptr %h, i64 25630, !dbg !4015
  %106 = load i16, ptr %arrayidx611, align 2, !dbg !4015
  %arrayidx613 = getelementptr inbounds i8, ptr %arrayidx506, i64 8, !dbg !4015
  store i16 %106, ptr %arrayidx613, align 2, !dbg !4015
  %arrayidx620 = getelementptr inbounds i8, ptr %h, i64 25646, !dbg !4016
  %107 = load i16, ptr %arrayidx620, align 2, !dbg !4016
  %arrayidx622 = getelementptr inbounds i8, ptr %arrayidx506, i64 10, !dbg !4016
  store i16 %107, ptr %arrayidx622, align 2, !dbg !4016
  %arrayidx629 = getelementptr inbounds i8, ptr %h, i64 25662, !dbg !4017
  %108 = load i16, ptr %arrayidx629, align 2, !dbg !4017
  %arrayidx631 = getelementptr inbounds i8, ptr %arrayidx506, i64 12, !dbg !4017
  store i16 %108, ptr %arrayidx631, align 2, !dbg !4017
  br label %if.end651, !dbg !4018

if.else634:                                       ; preds = %if.end534, %if.end534, %if.end534, %if.end534, %if.end534, %if.end534, %if.end534
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx500, i8 0, i64 16, i1 false), !dbg !4019
  %109 = load i32, ptr %i_type220, align 16, !dbg !4021
  %cmp642 = icmp eq i32 %109, 1, !dbg !4023
  br i1 %cmp642, label %if.then644, label %if.end712, !dbg !4024

if.then644:                                       ; preds = %if.else634
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx506, i8 0, i64 16, i1 false), !dbg !4025
  br label %if.end651, !dbg !4026

if.end651:                                        ; preds = %if.then644, %if.then596
  %.pr = load i32, ptr %i_type220, align 16, !dbg !4027
  %cmp654 = icmp eq i32 %.pr, 1, !dbg !4028
  br i1 %cmp654, label %if.then656, label %if.end712, !dbg !4029

if.then656:                                       ; preds = %if.end651
  switch i32 %1, label %if.else704 [
    i32 18, label %if.end712.sink.split
    i32 7, label %if.end712.sink.split
    i32 17, label %if.then669
  ], !dbg !4030

if.then669:                                       ; preds = %if.then656
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392, !dbg !4031
    #dbg_value(i8 poison, !3676, !DIExpression(DW_OP_constu, 12, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4032)
    #dbg_value(!DIArgList(i32 poison, i1 poison), !3676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !4032)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !3676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4032)
  %110 = load <4 x i8>, ptr %i_sub_partition, align 16, !dbg !4033
  %111 = icmp eq <4 x i8> %110, <i8 12, i8 12, i8 12, i8 12>, !dbg !4034
  %112 = extractelement <4 x i1> %111, i64 0, !dbg !4035
  %conv675 = zext i1 %112 to i8, !dbg !4035
  %113 = extractelement <4 x i1> %111, i64 1, !dbg !4036
  %shl682 = select i1 %113, i8 2, i8 0, !dbg !4036
  %or = or disjoint i8 %shl682, %conv675, !dbg !4037
  %114 = extractelement <4 x i1> %111, i64 2, !dbg !4038
  %shl689 = select i1 %114, i8 4, i8 0, !dbg !4038
  %or690 = or disjoint i8 %or, %shl689, !dbg !4039
  %115 = extractelement <4 x i1> %111, i64 3, !dbg !4040
  %shl697 = select i1 %115, i8 8, i8 0, !dbg !4040
  %or698 = or disjoint i8 %or690, %shl697, !dbg !4041
  br label %if.end712.sink.split, !dbg !4042

if.else704:                                       ; preds = %if.then656
  br label %if.end712.sink.split

if.end712.sink.split:                             ; preds = %if.then656, %if.then656, %if.else704, %if.then669
  %or698.sink = phi i8 [ %or698, %if.then669 ], [ 0, %if.else704 ], [ 15, %if.then656 ], [ 15, %if.then656 ]
  %skipbp701 = getelementptr inbounds i8, ptr %h, i64 17232, !dbg !4043
  %116 = load ptr, ptr %skipbp701, align 16, !dbg !4043
  %arrayidx703 = getelementptr inbounds i8, ptr %116, i64 %idxprom8, !dbg !4043
  store i8 %or698.sink, ptr %arrayidx703, align 1, !dbg !4043
  br label %if.end712, !dbg !4044

if.end712:                                        ; preds = %if.end712.sink.split, %if.then555, %if.else634, %if.end651, %if.end493
  ret void, !dbg !4044
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_bipred_init(ptr nocapture noundef %h) local_unnamed_addr #10 !dbg !4045 {
entry:
    #dbg_value(ptr %h, !4047, !DIExpression(), !4068)
    #dbg_value(i32 0, !4048, !DIExpression(), !4069)
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %0 = load i32, ptr %b_mbaff, align 4
    #dbg_value(i32 0, !4048, !DIExpression(), !4069)
  %.fr = freeze i32 %0
  %cmp.not162 = icmp slt i32 %.fr, 0, !dbg !4070
  br i1 %cmp.not162, label %for.cond.cleanup, label %for.cond1.preheader.lr.ph, !dbg !4071

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %i_ref02 = getelementptr inbounds i8, ptr %h, i64 14696
  %1 = load i32, ptr %i_ref02, align 8
  %shl = shl i32 %1, %.fr
  %cmp5152 = icmp sgt i32 %shl, 0
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %tobool.not = icmp eq i32 %.fr, 0
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %dist_scale_factor_buf = getelementptr inbounds i8, ptr %h, i64 25848
  %b_weighted_bipred = getelementptr inbounds i8, ptr %h, i64 400
  %bipred_weight_buf81 = getelementptr inbounds i8, ptr %h, i64 26368
  br i1 %cmp5152, label %for.cond1.preheader.lr.ph.split.us, label %for.cond.cleanup

for.cond1.preheader.lr.ph.split.us:               ; preds = %for.cond1.preheader.lr.ph
  %i_ref115 = getelementptr inbounds i8, ptr %h, i64 14856
  %2 = load i32, ptr %i_ref115, align 8
  %shl18.us = shl i32 %2, %.fr
  %cmp19150.us = icmp sgt i32 %shl18.us, 0
  br i1 %cmp19150.us, label %for.cond1.preheader.lr.ph.split.us.split.us, label %for.cond.cleanup

for.cond1.preheader.lr.ph.split.us.split.us:      ; preds = %for.cond1.preheader.lr.ph.split.us
  %3 = load i32, ptr %b_weighted_bipred, align 16
  %tobool62.us.us.us = icmp ne i32 %3, 0
  %4 = add nuw i32 %.fr, 1, !dbg !4071
  %wide.trip.count194 = zext i32 %4 to i64, !dbg !4070
  %wide.trip.count189 = zext nneg i32 %shl to i64
  %wide.trip.count = zext nneg i32 %shl18.us to i64
  br label %for.cond1.preheader.us.us, !dbg !4071

for.cond1.preheader.us.us:                        ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us.split.us
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us ], [ 0, %for.cond1.preheader.lr.ph.split.us.split.us ]
    #dbg_value(i64 %indvars.iv191, !4048, !DIExpression(), !4069)
    #dbg_value(i32 0, !4050, !DIExpression(), !4072)
  %5 = trunc nuw nsw i64 %indvars.iv191 to i32
  br label %for.body7.us.us.us, !dbg !4073

for.body7.us.us.us:                               ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, %for.cond1.preheader.us.us
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.cond14.for.cond.cleanup20_crit_edge.us.us.us ], [ 0, %for.cond1.preheader.us.us ]
    #dbg_value(i64 %indvars.iv186, !4050, !DIExpression(), !4072)
  %6 = trunc nuw nsw i64 %indvars.iv186 to i32, !dbg !4074
  %shr.us.us.us = lshr i32 %6, %.fr, !dbg !4074
  %idxprom.us.us.us = zext nneg i32 %shr.us.us.us to i64, !dbg !4075
  %arrayidx.us.us.us = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %idxprom.us.us.us, !dbg !4075
  %7 = load ptr, ptr %arrayidx.us.us.us, align 8, !dbg !4075
  %8 = load i32, ptr %7, align 16, !dbg !4076
    #dbg_value(i32 %8, !4053, !DIExpression(), !4077)
  %and.us.us.us = and i64 %indvars.iv186, 1
  %tobool12.not.us.us.us = icmp eq i64 %indvars.iv191, %and.us.us.us
  %or.cond.us.us.us = or i1 %tobool.not, %tobool12.not.us.us.us, !dbg !4078
  br i1 %or.cond.us.us.us, label %if.end.us.us.us, label %if.then.us.us.us, !dbg !4078

if.then.us.us.us:                                 ; preds = %for.body7.us.us.us
  %9 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4080
  %add.us.us.us = add nsw i32 %9, %8, !dbg !4081
    #dbg_value(i32 %add.us.us.us, !4053, !DIExpression(), !4077)
  br label %if.end.us.us.us, !dbg !4082

if.end.us.us.us:                                  ; preds = %if.then.us.us.us, %for.body7.us.us.us
  %poc0.0.us.us.us = phi i32 [ %add.us.us.us, %if.then.us.us.us ], [ %8, %for.body7.us.us.us ], !dbg !4077
    #dbg_value(i32 %poc0.0.us.us.us, !4053, !DIExpression(), !4077)
    #dbg_value(i32 0, !4056, !DIExpression(), !4083)
  br label %for.body21.us.us.us, !dbg !4084

for.body21.us.us.us:                              ; preds = %if.end54.us.us.us, %if.end.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end54.us.us.us ], [ 0, %if.end.us.us.us ]
    #dbg_value(i64 %indvars.iv, !4056, !DIExpression(), !4083)
  %10 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !4085
  %shr24.us.us.us = lshr i32 %10, %.fr, !dbg !4085
  %idxprom25.us.us.us = zext nneg i32 %shr24.us.us.us to i64, !dbg !4086
  %arrayidx26.us.us.us = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %idxprom25.us.us.us, !dbg !4086
  %11 = load ptr, ptr %arrayidx26.us.us.us, align 8, !dbg !4086
  %12 = load i32, ptr %11, align 16, !dbg !4087
    #dbg_value(i32 %12, !4061, !DIExpression(), !4088)
  %and32.us.us.us = and i64 %indvars.iv, 1
  %tobool34.not.us.us.us = icmp eq i64 %indvars.iv191, %and32.us.us.us
  %or.cond142.us.us.us = or i1 %tobool.not, %tobool34.not.us.us.us, !dbg !4089
  br i1 %or.cond142.us.us.us, label %if.end39.us.us.us, label %if.then35.us.us.us, !dbg !4089

if.then35.us.us.us:                               ; preds = %for.body21.us.us.us
  %13 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4091
  %add38.us.us.us = add nsw i32 %13, %12, !dbg !4092
    #dbg_value(i32 %add38.us.us.us, !4061, !DIExpression(), !4088)
  br label %if.end39.us.us.us, !dbg !4093

if.end39.us.us.us:                                ; preds = %if.then35.us.us.us, %for.body21.us.us.us
  %poc1.0.us.us.us = phi i32 [ %add38.us.us.us, %if.then35.us.us.us ], [ %12, %for.body21.us.us.us ], !dbg !4088
    #dbg_value(i32 %poc1.0.us.us.us, !4061, !DIExpression(), !4088)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !4062, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4088)
    #dbg_value(!DIArgList(i32 %poc1.0.us.us.us, i32 %poc0.0.us.us.us), !1558, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !4094)
    #dbg_value(i32 -128, !1563, !DIExpression(), !4094)
    #dbg_value(i32 127, !1564, !DIExpression(), !4094)
    #dbg_value(i32 poison, !4063, !DIExpression(), !4088)
  %cmp44.us.us.us = icmp eq i32 %poc1.0.us.us.us, %poc0.0.us.us.us, !dbg !4096
  br i1 %cmp44.us.us.us, label %if.end54.us.us.us, label %if.else.us.us.us, !dbg !4097

if.else.us.us.us:                                 ; preds = %if.end39.us.us.us
  %sub.us.us.us = sub nsw i32 %poc1.0.us.us.us, %poc0.0.us.us.us, !dbg !4098
    #dbg_value(i32 %sub.us.us.us, !1558, !DIExpression(), !4094)
  %cond.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %sub.us.us.us, i32 127), !dbg !4099
  %cond5.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i.us.us.us, i32 -128), !dbg !4099
    #dbg_value(i32 %cond5.i.us.us.us, !4063, !DIExpression(), !4088)
  %14 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4100
  %15 = load ptr, ptr %fdec, align 16, !dbg !4101
  %16 = load i32, ptr %15, align 16, !dbg !4102
    #dbg_value(!DIArgList(i32 %16, i64 %indvars.iv191, i32 %14), !4062, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4088)
  %mul.us.us.us = mul nsw i32 %14, %5, !dbg !4103
    #dbg_value(i32 poison, !4062, !DIExpression(), !4088)
  %add43.us.us.us = sub i32 %mul.us.us.us, %poc0.0.us.us.us, !dbg !4104
  %sub46.us.us.us = add i32 %add43.us.us.us, %16, !dbg !4105
    #dbg_value(i32 %sub46.us.us.us, !1558, !DIExpression(), !4106)
    #dbg_value(i32 -128, !1563, !DIExpression(), !4106)
    #dbg_value(i32 127, !1564, !DIExpression(), !4106)
  %cond.i144.us.us.us = tail call i32 @llvm.smin.i32(i32 %sub46.us.us.us, i32 127), !dbg !4108
  %cond5.i145.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i144.us.us.us, i32 -128), !dbg !4108
    #dbg_value(i32 %cond5.i145.us.us.us, !4064, !DIExpression(), !4109)
  %17 = tail call i32 @llvm.abs.i32(i32 %cond5.i.us.us.us, i1 true), !dbg !4110
  %shr48.us.us.us = lshr i32 %17, 1, !dbg !4111
  %18 = trunc nuw nsw i32 %shr48.us.us.us to i16, !dbg !4112
  %div.lhs.trunc.us.us.us = add nuw nsw i16 %18, 16384, !dbg !4112
  %div.rhs.trunc.us.us.us = trunc nsw i32 %cond5.i.us.us.us to i16, !dbg !4112
  %div149.us.us.us = sdiv i16 %div.lhs.trunc.us.us.us, %div.rhs.trunc.us.us.us, !dbg !4112
  %div.sext.us.us.us = sext i16 %div149.us.us.us to i32, !dbg !4112
    #dbg_value(i32 %div.sext.us.us.us, !4067, !DIExpression(), !4109)
  %mul50.us.us.us = mul nsw i32 %cond5.i145.us.us.us, %div.sext.us.us.us, !dbg !4113
  %add51.us.us.us = add nsw i32 %mul50.us.us.us, 32, !dbg !4114
  %shr52.us.us.us = ashr i32 %add51.us.us.us, 6, !dbg !4115
    #dbg_value(i32 %shr52.us.us.us, !1558, !DIExpression(), !4116)
    #dbg_value(i32 -1024, !1563, !DIExpression(), !4116)
    #dbg_value(i32 1023, !1564, !DIExpression(), !4116)
  %cond.i147.us.us.us = tail call i32 @llvm.smin.i32(i32 %shr52.us.us.us, i32 1023), !dbg !4118
  %cond5.i148.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i147.us.us.us, i32 -1024), !dbg !4118
    #dbg_value(i32 %cond5.i148.us.us.us, !4058, !DIExpression(), !4088)
  br label %if.end54.us.us.us

if.end54.us.us.us:                                ; preds = %if.else.us.us.us, %if.end39.us.us.us
  %dist_scale_factor.0.us.us.us = phi i32 [ %cond5.i148.us.us.us, %if.else.us.us.us ], [ 256, %if.end39.us.us.us ], !dbg !4119
    #dbg_value(i32 %dist_scale_factor.0.us.us.us, !4058, !DIExpression(), !4088)
  %conv.us.us.us = trunc nsw i32 %dist_scale_factor.0.us.us.us to i16, !dbg !4120
  %arrayidx60.us.us.us = getelementptr inbounds [2 x [32 x [4 x i16]]], ptr %dist_scale_factor_buf, i64 0, i64 %indvars.iv191, i64 %indvars.iv186, i64 %indvars.iv, !dbg !4121
  store i16 %conv.us.us.us, ptr %arrayidx60.us.us.us, align 2, !dbg !4122
  %shr61.us.us.us = ashr i32 %dist_scale_factor.0.us.us.us, 2, !dbg !4123
    #dbg_value(i32 %shr61.us.us.us, !4058, !DIExpression(), !4088)
  %19 = add nsw i32 %shr61.us.us.us, 64, !dbg !4124
  %20 = icmp ult i32 %19, 193, !dbg !4124
  %or.cond95.us.us.us = select i1 %tobool62.us.us.us, i1 %20, i1 false, !dbg !4124
  %21 = trunc i32 %shr61.us.us.us to i8, !dbg !4124
  %conv71.us.us.us = sub i8 64, %21, !dbg !4124
  %conv71.us.us.us.sink = select i1 %or.cond95.us.us.us, i8 %conv71.us.us.us, i8 32, !dbg !4124
  %arrayidx78.us.us.us = getelementptr inbounds [2 x [32 x [4 x i8]]], ptr %bipred_weight_buf81, i64 0, i64 %indvars.iv191, i64 %indvars.iv186, i64 %indvars.iv, !dbg !4126
  store i8 %conv71.us.us.us.sink, ptr %arrayidx78.us.us.us, align 1, !dbg !4126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4127
    #dbg_value(i64 %indvars.iv.next, !4056, !DIExpression(), !4083)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !4128
  br i1 %exitcond.not, label %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, label %for.body21.us.us.us, !dbg !4084, !llvm.loop !4129

for.cond14.for.cond.cleanup20_crit_edge.us.us.us: ; preds = %if.end54.us.us.us
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1, !dbg !4131
    #dbg_value(i64 %indvars.iv.next187, !4050, !DIExpression(), !4072)
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189, !dbg !4132
  br i1 %exitcond190.not, label %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, label %for.body7.us.us.us, !dbg !4073, !llvm.loop !4133

for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us: ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1, !dbg !4135
    #dbg_value(i64 %indvars.iv.next192, !4048, !DIExpression(), !4069)
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194, !dbg !4070
  br i1 %exitcond195.not, label %for.cond.cleanup, label %for.cond1.preheader.us.us, !dbg !4071, !llvm.loop !4136

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us, %for.cond1.preheader.lr.ph, %entry
  ret void, !dbg !4138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_mb_type_fix", scope: !2, file: !15, line: 92, type: !187, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/macroblock.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b3bd83ad3c1537e307ae76d0bffb91a")
!4 = !{!5, !14, !35, !43, !65, !80, !89}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!10 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!11 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!12 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!13 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !15, line: 117, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!17 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!18 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!19 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!20 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!21 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!22 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!23 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!24 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!25 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!26 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!27 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!28 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!29 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!30 = !DIEnumerator(name: "D_8x8", value: 13)
!31 = !DIEnumerator(name: "D_16x8", value: 14)
!32 = !DIEnumerator(name: "D_8x16", value: 15)
!33 = !DIEnumerator(name: "D_16x16", value: 16)
!34 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !15, line: 33, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "MB_LEFT", value: 1)
!38 = !DIEnumerator(name: "MB_TOP", value: 2)
!39 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!40 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!41 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!42 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !15, line: 66, baseType: !7, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!45 = !DIEnumerator(name: "I_4x4", value: 0)
!46 = !DIEnumerator(name: "I_8x8", value: 1)
!47 = !DIEnumerator(name: "I_16x16", value: 2)
!48 = !DIEnumerator(name: "I_PCM", value: 3)
!49 = !DIEnumerator(name: "P_L0", value: 4)
!50 = !DIEnumerator(name: "P_8x8", value: 5)
!51 = !DIEnumerator(name: "P_SKIP", value: 6)
!52 = !DIEnumerator(name: "B_DIRECT", value: 7)
!53 = !DIEnumerator(name: "B_L0_L0", value: 8)
!54 = !DIEnumerator(name: "B_L0_L1", value: 9)
!55 = !DIEnumerator(name: "B_L0_BI", value: 10)
!56 = !DIEnumerator(name: "B_L1_L0", value: 11)
!57 = !DIEnumerator(name: "B_L1_L1", value: 12)
!58 = !DIEnumerator(name: "B_L1_BI", value: 13)
!59 = !DIEnumerator(name: "B_BI_L0", value: 14)
!60 = !DIEnumerator(name: "B_BI_L1", value: 15)
!61 = !DIEnumerator(name: "B_BI_BI", value: 16)
!62 = !DIEnumerator(name: "B_8x8", value: 17)
!63 = !DIEnumerator(name: "B_SKIP", value: 18)
!64 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !66, line: 65, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!68 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!69 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!70 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!71 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!72 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!73 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!74 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!75 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!76 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!77 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!78 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!79 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !66, line: 31, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!83 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!84 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!85 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!86 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!87 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!88 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 30, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!92 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!93 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!94 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!95 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!96 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!97 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!98 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!99 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!100 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!101 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!102 = !{!103, !126, !133, !121, !157, !143}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !6, line: 89, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 89, size: 32, elements: !106)
!106 = !{!107, !112, !119}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !105, file: !6, line: 89, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 26, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 42, baseType: !7)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !105, file: !6, line: 89, baseType: !113, size: 32)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 32, elements: !117)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !109, line: 25, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !111, line: 40, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !{!118}
!118 = !DISubrange(count: 2)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !105, file: !6, line: 89, baseType: !120, size: 32)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !124)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !109, line: 24, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !111, line: 38, baseType: !123)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !6, line: 88, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 88, size: 16, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !128, file: !6, line: 88, baseType: !114, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !128, file: !6, line: 88, baseType: !132, size: 16)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16, elements: !117)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union128_t", file: !6, line: 92, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 92, size: 128, elements: !136)
!136 = !{!137, !146, !147, !149, !153}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !135, file: !6, line: 92, baseType: !138, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_uint128_t", file: !6, line: 91, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 91, size: 128, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !139, file: !6, line: 91, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !117)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !109, line: 27, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !111, line: 45, baseType: !145)
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !135, file: !6, line: 92, baseType: !142, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !135, file: !6, line: 92, baseType: !148, size: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !124)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !135, file: !6, line: 92, baseType: !150, size: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !135, file: !6, line: 92, baseType: !154, size: 128)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !6, line: 90, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 90, size: 64, elements: !160)
!160 = !{!161, !162, !164, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !159, file: !6, line: 90, baseType: !143, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !159, file: !6, line: 90, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !117)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !159, file: !6, line: 90, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !124)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !159, file: !6, line: 90, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !151)
!168 = !{!169, !176, !0, !182}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !6, line: 125, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 864, elements: !174)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!174 = !{!175}
!175 = !DISubrange(count: 27)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "x264_size2pixel", scope: !2, file: !90, line: 55, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 200, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!180 = !{!181, !181}
!181 = !DISubrange(count: 5)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !2, file: !66, line: 42, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 56, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 7)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 152, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 19)
!190 = !{i32 7, !"Dwarf Version", i32 5}
!191 = !{i32 2, !"Debug Info Version", i32 3}
!192 = !{i32 1, !"wchar_size", i32 4}
!193 = !{i32 8, !"PIC Level", i32 2}
!194 = !{i32 7, !"PIE Level", i32 2}
!195 = !{i32 7, !"uwtable", i32 2}
!196 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!197 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!198 = distinct !DISubprogram(name: "x264_mb_mc_8x8", scope: !3, file: !3, line: 125, type: !199, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !173}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !203, line: 46, baseType: !204)
!203 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !6, line: 381, size: 266752, elements: !205)
!205 = !{!206, !371, !375, !376, !377, !378, !379, !380, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !516, !518, !545, !547, !548, !549, !553, !557, !558, !559, !563, !567, !568, !569, !574, !577, !578, !655, !672, !833, !834, !835, !836, !838, !839, !840, !841, !842, !843, !844, !859, !1051, !1055, !1115, !1118, !1120, !1121, !1122, !1125, !1130, !1136, !1137, !1145, !1147, !1152, !1227, !1313, !1357, !1379, !1428, !1457}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !204, file: !6, line: 384, baseType: !207, size: 5632)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !203, line: 376, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !203, line: 176, size: 5632, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !254, !255, !256, !257, !261, !262, !276, !277, !278, !279, !280, !309, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !208, file: !203, line: 179, baseType: !7, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !208, file: !203, line: 180, baseType: !173, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !208, file: !203, line: 181, baseType: !173, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !208, file: !203, line: 182, baseType: !173, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !208, file: !203, line: 183, baseType: !173, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !208, file: !203, line: 186, baseType: !173, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !208, file: !203, line: 187, baseType: !173, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !208, file: !203, line: 188, baseType: !173, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !208, file: !203, line: 189, baseType: !173, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !208, file: !203, line: 190, baseType: !173, size: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !208, file: !203, line: 198, baseType: !173, size: 32, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !208, file: !203, line: 215, baseType: !222, size: 288, offset: 352)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 200, size: 288, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !222, file: !203, line: 203, baseType: !173, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !222, file: !203, line: 204, baseType: !173, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !222, file: !203, line: 206, baseType: !173, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !222, file: !203, line: 209, baseType: !173, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !222, file: !203, line: 210, baseType: !173, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !222, file: !203, line: 211, baseType: !173, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !222, file: !203, line: 212, baseType: !173, size: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !222, file: !203, line: 213, baseType: !173, size: 32, offset: 224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !222, file: !203, line: 214, baseType: !173, size: 32, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !208, file: !203, line: 218, baseType: !173, size: 32, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !208, file: !203, line: 219, baseType: !173, size: 32, offset: 672)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !208, file: !203, line: 220, baseType: !173, size: 32, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !208, file: !203, line: 221, baseType: !173, size: 32, offset: 736)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !208, file: !203, line: 222, baseType: !173, size: 32, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !208, file: !203, line: 224, baseType: !173, size: 32, offset: 800)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !208, file: !203, line: 225, baseType: !173, size: 32, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !208, file: !203, line: 226, baseType: !173, size: 32, offset: 864)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !208, file: !203, line: 227, baseType: !173, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !208, file: !203, line: 229, baseType: !173, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !208, file: !203, line: 230, baseType: !173, size: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !208, file: !203, line: 231, baseType: !173, size: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !208, file: !203, line: 233, baseType: !173, size: 32, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !208, file: !203, line: 234, baseType: !173, size: 32, offset: 1056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !208, file: !203, line: 236, baseType: !173, size: 32, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !208, file: !203, line: 237, baseType: !173, size: 32, offset: 1120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !208, file: !203, line: 239, baseType: !173, size: 32, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !208, file: !203, line: 240, baseType: !251, size: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !208, file: !203, line: 241, baseType: !154, size: 128, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !208, file: !203, line: 242, baseType: !154, size: 128, offset: 1408)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !208, file: !203, line: 243, baseType: !154, size: 128, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !208, file: !203, line: 244, baseType: !154, size: 128, offset: 1664)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !208, file: !203, line: 245, baseType: !258, size: 512, offset: 1792)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !208, file: !203, line: 246, baseType: !258, size: 512, offset: 2304)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !208, file: !203, line: 249, baseType: !263, size: 64, offset: 2816)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266, !173, !267, !269}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !271)
!271 = !{!272, !273, !274, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !270, file: !3, baseType: !7, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !270, file: !3, baseType: !7, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !270, file: !3, baseType: !266, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !270, file: !3, baseType: !266, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !208, file: !203, line: 250, baseType: !266, size: 64, offset: 2880)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !208, file: !203, line: 251, baseType: !173, size: 32, offset: 2944)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !208, file: !203, line: 252, baseType: !173, size: 32, offset: 2976)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !208, file: !203, line: 253, baseType: !251, size: 64, offset: 3008)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !208, file: !203, line: 287, baseType: !281, size: 800, offset: 3072)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 256, size: 800, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !303, !304, !305, !307, !308}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !281, file: !203, line: 258, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !281, file: !203, line: 259, baseType: !7, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !281, file: !203, line: 261, baseType: !173, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !281, file: !203, line: 262, baseType: !173, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !281, file: !203, line: 263, baseType: !173, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !281, file: !203, line: 264, baseType: !173, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !281, file: !203, line: 265, baseType: !173, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !281, file: !203, line: 267, baseType: !173, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !281, file: !203, line: 268, baseType: !173, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !281, file: !203, line: 269, baseType: !173, size: 32, offset: 288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !281, file: !203, line: 270, baseType: !173, size: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !281, file: !203, line: 271, baseType: !173, size: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !281, file: !203, line: 272, baseType: !173, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !281, file: !203, line: 273, baseType: !173, size: 32, offset: 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !281, file: !203, line: 274, baseType: !173, size: 32, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !281, file: !203, line: 275, baseType: !173, size: 32, offset: 480)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !281, file: !203, line: 276, baseType: !173, size: 32, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !281, file: !203, line: 277, baseType: !173, size: 32, offset: 544)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !281, file: !203, line: 278, baseType: !302, size: 32, offset: 576)
!302 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !281, file: !203, line: 279, baseType: !302, size: 32, offset: 608)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !281, file: !203, line: 280, baseType: !173, size: 32, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !281, file: !203, line: 283, baseType: !306, size: 64, offset: 672)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !117)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !281, file: !203, line: 285, baseType: !173, size: 32, offset: 736)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !281, file: !203, line: 286, baseType: !173, size: 32, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !208, file: !203, line: 327, baseType: !310, size: 1152, offset: 3904)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 290, size: 1152, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !349, !350}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !310, file: !203, line: 292, baseType: !173, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !310, file: !203, line: 294, baseType: !173, size: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !310, file: !203, line: 295, baseType: !173, size: 32, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !310, file: !203, line: 296, baseType: !173, size: 32, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !310, file: !203, line: 297, baseType: !173, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !310, file: !203, line: 299, baseType: !173, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !310, file: !203, line: 300, baseType: !302, size: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !310, file: !203, line: 301, baseType: !302, size: 32, offset: 224)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !310, file: !203, line: 302, baseType: !302, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !310, file: !203, line: 303, baseType: !173, size: 32, offset: 288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !310, file: !203, line: 304, baseType: !173, size: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !310, file: !203, line: 305, baseType: !302, size: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !310, file: !203, line: 306, baseType: !302, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !310, file: !203, line: 307, baseType: !302, size: 32, offset: 416)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !310, file: !203, line: 309, baseType: !173, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !310, file: !203, line: 310, baseType: !302, size: 32, offset: 480)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !310, file: !203, line: 311, baseType: !173, size: 32, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !310, file: !203, line: 312, baseType: !173, size: 32, offset: 544)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !310, file: !203, line: 315, baseType: !173, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !310, file: !203, line: 316, baseType: !251, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !310, file: !203, line: 317, baseType: !173, size: 32, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !310, file: !203, line: 318, baseType: !251, size: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !310, file: !203, line: 321, baseType: !302, size: 32, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !310, file: !203, line: 322, baseType: !302, size: 32, offset: 864)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !310, file: !203, line: 323, baseType: !302, size: 32, offset: 896)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !310, file: !203, line: 324, baseType: !338, size: 64, offset: 960)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !203, line: 174, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 167, size: 256, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !340, file: !203, line: 169, baseType: !173, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !340, file: !203, line: 169, baseType: !173, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !340, file: !203, line: 170, baseType: !173, size: 32, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !340, file: !203, line: 171, baseType: !173, size: 32, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !340, file: !203, line: 172, baseType: !302, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !340, file: !203, line: 173, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !310, file: !203, line: 325, baseType: !173, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !310, file: !203, line: 326, baseType: !251, size: 64, offset: 1088)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !208, file: !203, line: 330, baseType: !173, size: 32, offset: 5056)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !208, file: !203, line: 331, baseType: !173, size: 32, offset: 5088)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !208, file: !203, line: 332, baseType: !173, size: 32, offset: 5120)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !208, file: !203, line: 334, baseType: !173, size: 32, offset: 5152)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !208, file: !203, line: 335, baseType: !173, size: 32, offset: 5184)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !208, file: !203, line: 336, baseType: !108, size: 32, offset: 5216)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !208, file: !203, line: 337, baseType: !108, size: 32, offset: 5248)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !208, file: !203, line: 338, baseType: !108, size: 32, offset: 5280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !208, file: !203, line: 339, baseType: !108, size: 32, offset: 5312)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !208, file: !203, line: 340, baseType: !173, size: 32, offset: 5344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !208, file: !203, line: 344, baseType: !173, size: 32, offset: 5376)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !208, file: !203, line: 356, baseType: !173, size: 32, offset: 5408)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !208, file: !203, line: 364, baseType: !173, size: 32, offset: 5440)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !208, file: !203, line: 367, baseType: !173, size: 32, offset: 5472)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !208, file: !203, line: 368, baseType: !173, size: 32, offset: 5504)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !208, file: !203, line: 369, baseType: !173, size: 32, offset: 5536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !208, file: !203, line: 375, baseType: !368, size: 64, offset: 5568)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !266}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !204, file: !6, line: 386, baseType: !372, size: 8256, offset: 5632)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 8256, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 129)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !204, file: !6, line: 387, baseType: !173, size: 32, offset: 13888)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !204, file: !6, line: 388, baseType: !173, size: 32, offset: 13920)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !204, file: !6, line: 389, baseType: !173, size: 32, offset: 13952)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !204, file: !6, line: 390, baseType: !173, size: 32, offset: 13984)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !204, file: !6, line: 391, baseType: !173, size: 32, offset: 14016)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !204, file: !6, line: 402, baseType: !381, size: 576, offset: 14080)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 394, size: 576, elements: !382)
!382 = !{!383, !384, !385, !395, !396, !397}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !381, file: !6, line: 396, baseType: !173, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !381, file: !6, line: 397, baseType: !173, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !381, file: !6, line: 398, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !203, line: 604, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 593, size: 192, elements: !389)
!389 = !{!390, !391, !392, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !388, file: !203, line: 595, baseType: !173, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !388, file: !203, line: 596, baseType: !173, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !388, file: !203, line: 599, baseType: !173, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !388, file: !203, line: 603, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !381, file: !6, line: 399, baseType: !173, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !381, file: !6, line: 400, baseType: !394, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !381, file: !6, line: 401, baseType: !398, size: 320, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !399, line: 56, baseType: !400)
!399 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !399, line: 47, size: 320, elements: !401)
!401 = !{!402, !403, !404, !405, !409, !410}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !400, file: !399, line: 49, baseType: !394, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !400, file: !399, line: 50, baseType: !394, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !400, file: !399, line: 51, baseType: !394, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !400, file: !399, line: 53, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !407, line: 87, baseType: !408)
!407 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!408 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !400, file: !399, line: 54, baseType: !173, size: 32, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !400, file: !399, line: 55, baseType: !173, size: 32, offset: 288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !204, file: !6, line: 404, baseType: !394, size: 64, offset: 14656)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !204, file: !6, line: 405, baseType: !173, size: 32, offset: 14720)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !204, file: !6, line: 410, baseType: !173, size: 32, offset: 14752)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !204, file: !6, line: 411, baseType: !173, size: 32, offset: 14784)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !204, file: !6, line: 413, baseType: !173, size: 32, offset: 14816)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !204, file: !6, line: 415, baseType: !173, size: 32, offset: 14848)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !204, file: !6, line: 416, baseType: !173, size: 32, offset: 14880)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !204, file: !6, line: 418, baseType: !173, size: 32, offset: 14912)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !204, file: !6, line: 419, baseType: !173, size: 32, offset: 14944)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !204, file: !6, line: 420, baseType: !173, size: 32, offset: 14976)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !204, file: !6, line: 421, baseType: !173, size: 32, offset: 15008)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !204, file: !6, line: 422, baseType: !173, size: 32, offset: 15040)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !204, file: !6, line: 424, baseType: !173, size: 32, offset: 15072)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !204, file: !6, line: 425, baseType: !173, size: 32, offset: 15104)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !204, file: !6, line: 427, baseType: !173, size: 32, offset: 15136)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !204, file: !6, line: 430, baseType: !427, size: 10400, offset: 15168)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 10400, elements: !514)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !429, line: 154, baseType: !430)
!429 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 52, size: 10400, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !449, !450, !451, !452, !453, !454, !455, !456, !457, !464, !465, !513}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !430, file: !429, line: 54, baseType: !173, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !430, file: !429, line: 56, baseType: !173, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !430, file: !429, line: 57, baseType: !173, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !430, file: !429, line: 59, baseType: !173, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !430, file: !429, line: 60, baseType: !173, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !430, file: !429, line: 61, baseType: !173, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !430, file: !429, line: 63, baseType: !173, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !430, file: !429, line: 65, baseType: !173, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !430, file: !429, line: 67, baseType: !173, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !430, file: !429, line: 69, baseType: !173, size: 32, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !430, file: !429, line: 70, baseType: !173, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !430, file: !429, line: 71, baseType: !173, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !430, file: !429, line: 72, baseType: !173, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !430, file: !429, line: 73, baseType: !446, size: 8192, offset: 416)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 8192, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !430, file: !429, line: 75, baseType: !173, size: 32, offset: 8608)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !430, file: !429, line: 76, baseType: !173, size: 32, offset: 8640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !430, file: !429, line: 77, baseType: !173, size: 32, offset: 8672)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !430, file: !429, line: 78, baseType: !173, size: 32, offset: 8704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !430, file: !429, line: 79, baseType: !173, size: 32, offset: 8736)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !430, file: !429, line: 80, baseType: !173, size: 32, offset: 8768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !430, file: !429, line: 81, baseType: !173, size: 32, offset: 8800)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !430, file: !429, line: 83, baseType: !173, size: 32, offset: 8832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !430, file: !429, line: 90, baseType: !458, size: 128, offset: 8864)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !429, line: 84, size: 128, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !458, file: !429, line: 86, baseType: !173, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !458, file: !429, line: 87, baseType: !173, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !458, file: !429, line: 88, baseType: !173, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !458, file: !429, line: 89, baseType: !173, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !430, file: !429, line: 92, baseType: !173, size: 32, offset: 8992)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !430, file: !429, line: 150, baseType: !466, size: 1344, offset: 9024)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !429, line: 93, size: 1344, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !466, file: !429, line: 95, baseType: !173, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !466, file: !429, line: 96, baseType: !173, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !466, file: !429, line: 97, baseType: !173, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !466, file: !429, line: 99, baseType: !173, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !466, file: !429, line: 100, baseType: !173, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !466, file: !429, line: 102, baseType: !173, size: 32, offset: 160)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !466, file: !429, line: 103, baseType: !173, size: 32, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !466, file: !429, line: 104, baseType: !173, size: 32, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !466, file: !429, line: 105, baseType: !173, size: 32, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !466, file: !429, line: 106, baseType: !173, size: 32, offset: 288)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !466, file: !429, line: 107, baseType: !173, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !466, file: !429, line: 108, baseType: !173, size: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !466, file: !429, line: 110, baseType: !173, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !466, file: !429, line: 111, baseType: !173, size: 32, offset: 416)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !466, file: !429, line: 112, baseType: !173, size: 32, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !466, file: !429, line: 114, baseType: !173, size: 32, offset: 480)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !466, file: !429, line: 115, baseType: !108, size: 32, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !466, file: !429, line: 116, baseType: !108, size: 32, offset: 544)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !466, file: !429, line: 117, baseType: !173, size: 32, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !466, file: !429, line: 119, baseType: !173, size: 32, offset: 608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !466, file: !429, line: 120, baseType: !173, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !466, file: !429, line: 137, baseType: !490, size: 384, offset: 672)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !429, line: 122, size: 384, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !490, file: !429, line: 124, baseType: !173, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !490, file: !429, line: 125, baseType: !173, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !490, file: !429, line: 126, baseType: !173, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !490, file: !429, line: 127, baseType: !173, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !490, file: !429, line: 128, baseType: !173, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !490, file: !429, line: 129, baseType: !173, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !490, file: !429, line: 130, baseType: !173, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !490, file: !429, line: 131, baseType: !173, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !490, file: !429, line: 133, baseType: !173, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !490, file: !429, line: 134, baseType: !173, size: 32, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !490, file: !429, line: 135, baseType: !173, size: 32, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !490, file: !429, line: 136, baseType: !173, size: 32, offset: 352)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !466, file: !429, line: 139, baseType: !173, size: 32, offset: 1056)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !466, file: !429, line: 140, baseType: !173, size: 32, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !466, file: !429, line: 141, baseType: !173, size: 32, offset: 1120)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !466, file: !429, line: 142, baseType: !173, size: 32, offset: 1152)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !466, file: !429, line: 143, baseType: !173, size: 32, offset: 1184)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !466, file: !429, line: 144, baseType: !173, size: 32, offset: 1216)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !466, file: !429, line: 145, baseType: !173, size: 32, offset: 1248)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !466, file: !429, line: 146, baseType: !173, size: 32, offset: 1280)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !466, file: !429, line: 147, baseType: !173, size: 32, offset: 1312)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !430, file: !429, line: 152, baseType: !173, size: 32, offset: 10368)
!514 = !{!515}
!515 = !DISubrange(count: 1)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !204, file: !6, line: 431, baseType: !517, size: 64, offset: 25600)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !204, file: !6, line: 432, baseType: !519, size: 960, offset: 25664)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 960, elements: !514)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !429, line: 186, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 156, size: 960, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !521, file: !429, line: 158, baseType: !173, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !521, file: !429, line: 159, baseType: !173, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !521, file: !429, line: 161, baseType: !173, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !521, file: !429, line: 163, baseType: !173, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !521, file: !429, line: 164, baseType: !173, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !521, file: !429, line: 166, baseType: !173, size: 32, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !521, file: !429, line: 167, baseType: !173, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !521, file: !429, line: 169, baseType: !173, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !521, file: !429, line: 170, baseType: !173, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !521, file: !429, line: 172, baseType: !173, size: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !521, file: !429, line: 173, baseType: !173, size: 32, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !521, file: !429, line: 175, baseType: !173, size: 32, offset: 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !521, file: !429, line: 177, baseType: !173, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !521, file: !429, line: 178, baseType: !173, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !521, file: !429, line: 179, baseType: !173, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !521, file: !429, line: 181, baseType: !173, size: 32, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !521, file: !429, line: 183, baseType: !173, size: 32, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !521, file: !429, line: 184, baseType: !541, size: 384, offset: 576)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 384, elements: !543)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!543 = !{!544}
!544 = !DISubrange(count: 6)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !204, file: !6, line: 433, baseType: !546, size: 64, offset: 26624)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !204, file: !6, line: 434, baseType: !173, size: 32, offset: 26688)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !204, file: !6, line: 437, baseType: !173, size: 32, offset: 26720)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !204, file: !6, line: 440, baseType: !550, size: 256, offset: 26752)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 256, elements: !124)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 512, elements: !155)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !204, file: !6, line: 441, baseType: !554, size: 128, offset: 27008)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 128, elements: !117)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !259)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !204, file: !6, line: 443, baseType: !550, size: 256, offset: 27136)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !204, file: !6, line: 444, baseType: !554, size: 128, offset: 27392)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !204, file: !6, line: 446, baseType: !560, size: 256, offset: 27520)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !124)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !155)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !204, file: !6, line: 447, baseType: !564, size: 128, offset: 27776)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 128, elements: !117)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !259)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !204, file: !6, line: 448, baseType: !560, size: 256, offset: 27904)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !204, file: !6, line: 449, baseType: !564, size: 128, offset: 28160)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !204, file: !6, line: 454, baseType: !570, size: 5888, offset: 28288)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 5888, elements: !572)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!572 = !{!573}
!573 = !DISubrange(count: 92)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !204, file: !6, line: 455, baseType: !575, size: 23552, offset: 34176)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 23552, elements: !576)
!576 = !{!573, !125}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !204, file: !6, line: 457, baseType: !542, size: 64, offset: 57728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !204, file: !6, line: 460, baseType: !579, size: 53376, offset: 57856)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !6, line: 364, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 302, size: 53376, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !610, !639, !640, !641, !647, !648, !649, !650, !651, !652, !653, !654}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !580, file: !6, line: 304, baseType: !517, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !580, file: !6, line: 305, baseType: !546, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !580, file: !6, line: 307, baseType: !173, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !580, file: !6, line: 308, baseType: !173, size: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !580, file: !6, line: 309, baseType: !173, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !580, file: !6, line: 311, baseType: !173, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !580, file: !6, line: 313, baseType: !173, size: 32, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !580, file: !6, line: 315, baseType: !173, size: 32, offset: 288)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !580, file: !6, line: 316, baseType: !173, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !580, file: !6, line: 317, baseType: !173, size: 32, offset: 352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !580, file: !6, line: 319, baseType: !173, size: 32, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !580, file: !6, line: 321, baseType: !173, size: 32, offset: 416)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !580, file: !6, line: 322, baseType: !173, size: 32, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !580, file: !6, line: 324, baseType: !306, size: 64, offset: 480)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !580, file: !6, line: 325, baseType: !173, size: 32, offset: 544)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !580, file: !6, line: 327, baseType: !173, size: 32, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !580, file: !6, line: 329, baseType: !173, size: 32, offset: 608)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !580, file: !6, line: 330, baseType: !173, size: 32, offset: 640)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !580, file: !6, line: 331, baseType: !173, size: 32, offset: 672)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !580, file: !6, line: 333, baseType: !173, size: 32, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !580, file: !6, line: 334, baseType: !173, size: 32, offset: 736)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !580, file: !6, line: 339, baseType: !604, size: 2048, offset: 768)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 2048, elements: !609)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !6, line: 335, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !605, file: !6, line: 337, baseType: !173, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !605, file: !6, line: 338, baseType: !173, size: 32, offset: 32)
!609 = !{!118, !156}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !580, file: !6, line: 342, baseType: !611, size: 49152, align: 128, offset: 2816)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 49152, align: 128, elements: !636)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !613, line: 36, baseType: !614, align: 128)
!613 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !613, line: 26, size: 512, elements: !615)
!615 = !{!616, !622, !623, !626, !627, !628}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !614, file: !613, line: 30, baseType: !617, size: 128, align: 128)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 128, elements: !151)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !619, line: 25, baseType: !620)
!619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !111, line: 39, baseType: !621)
!621 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !614, file: !613, line: 31, baseType: !617, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !614, file: !613, line: 32, baseType: !624, size: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !619, line: 26, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 41, baseType: !173)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !614, file: !613, line: 33, baseType: !624, size: 32, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !614, file: !613, line: 34, baseType: !624, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !614, file: !613, line: 35, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !613, line: 25, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !394, !173, !394, !173, !634, !173}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!636 = !{!637, !638}
!637 = !DISubrange(count: 32)
!638 = !DISubrange(count: 3)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !580, file: !6, line: 344, baseType: !173, size: 32, offset: 51968)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !580, file: !6, line: 345, baseType: !173, size: 32, offset: 52000)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !580, file: !6, line: 350, baseType: !642, size: 1024, offset: 52032)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 1024, elements: !155)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !6, line: 346, size: 64, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !643, file: !6, line: 348, baseType: !173, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !643, file: !6, line: 349, baseType: !173, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !580, file: !6, line: 352, baseType: !173, size: 32, offset: 53056)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !580, file: !6, line: 354, baseType: !173, size: 32, offset: 53088)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !580, file: !6, line: 355, baseType: !173, size: 32, offset: 53120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !580, file: !6, line: 356, baseType: !173, size: 32, offset: 53152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !580, file: !6, line: 357, baseType: !173, size: 32, offset: 53184)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !580, file: !6, line: 360, baseType: !173, size: 32, offset: 53216)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !580, file: !6, line: 361, baseType: !173, size: 32, offset: 53248)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !580, file: !6, line: 362, baseType: !173, size: 32, offset: 53280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !204, file: !6, line: 463, baseType: !656, size: 4096, offset: 111232)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !657, line: 46, baseType: !658)
!657 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 27, size: 4096, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !658, file: !657, line: 30, baseType: !173, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !658, file: !657, line: 31, baseType: !173, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !658, file: !657, line: 34, baseType: !173, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !658, file: !657, line: 35, baseType: !173, size: 32, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !658, file: !657, line: 37, baseType: !394, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !658, file: !657, line: 38, baseType: !394, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !658, file: !657, line: 39, baseType: !394, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !658, file: !657, line: 42, baseType: !173, size: 32, align: 128, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !657, line: 45, baseType: !669, size: 3680, offset: 416)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 3680, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 460)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !204, file: !6, line: 494, baseType: !673, size: 2112, offset: 115328)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 465, size: 2112, elements: !674)
!674 = !{!675, !813, !815, !816, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !829, !830, !831, !832}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !673, file: !6, line: 468, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !679, line: 146, baseType: !680)
!679 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !679, line: 31, size: 125056, elements: !681)
!681 = !{!682, !683, !684, !685, !688, !689, !690, !691, !692, !693, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !712, !713, !714, !715, !716, !717, !719, !721, !722, !723, !724, !725, !728, !730, !731, !733, !738, !739, !743, !744, !748, !752, !755, !757, !758, !760, !761, !763, !764, !765, !768, !770, !771, !772, !774, !775, !776, !777, !778, !779, !780, !781, !783, !784, !785, !794, !798, !800, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !680, file: !679, line: 34, baseType: !173, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !680, file: !679, line: 35, baseType: !173, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !680, file: !679, line: 36, baseType: !173, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !680, file: !679, line: 37, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !619, line: 27, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !408)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !680, file: !679, line: 38, baseType: !686, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !680, file: !679, line: 39, baseType: !173, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !680, file: !679, line: 40, baseType: !173, size: 32, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !680, file: !679, line: 41, baseType: !173, size: 32, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !680, file: !679, line: 42, baseType: !173, size: 32, offset: 352)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !680, file: !679, line: 43, baseType: !694, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !680, file: !679, line: 45, baseType: !173, size: 32, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !680, file: !679, line: 46, baseType: !173, size: 32, offset: 480)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !680, file: !679, line: 47, baseType: !173, size: 32, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !680, file: !679, line: 48, baseType: !173, size: 32, offset: 544)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !680, file: !679, line: 49, baseType: !173, size: 32, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !680, file: !679, line: 50, baseType: !173, size: 32, offset: 608)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !680, file: !679, line: 51, baseType: !173, size: 32, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !680, file: !679, line: 52, baseType: !121, size: 8, offset: 672)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !680, file: !679, line: 53, baseType: !121, size: 8, offset: 680)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !680, file: !679, line: 54, baseType: !121, size: 8, offset: 688)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !680, file: !679, line: 55, baseType: !302, size: 32, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !680, file: !679, line: 56, baseType: !302, size: 32, offset: 736)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !680, file: !679, line: 57, baseType: !173, size: 32, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !680, file: !679, line: 60, baseType: !173, size: 32, offset: 800)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !680, file: !679, line: 61, baseType: !710, size: 96, offset: 832)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 96, elements: !711)
!711 = !{!638}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !680, file: !679, line: 62, baseType: !710, size: 96, offset: 928)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !680, file: !679, line: 63, baseType: !710, size: 96, offset: 1024)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !680, file: !679, line: 64, baseType: !173, size: 32, offset: 1120)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !680, file: !679, line: 65, baseType: !173, size: 32, offset: 1152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !680, file: !679, line: 66, baseType: !173, size: 32, offset: 1184)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !680, file: !679, line: 67, baseType: !718, size: 192, offset: 1216)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 192, elements: !711)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !680, file: !679, line: 68, baseType: !720, size: 256, offset: 1408)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !124)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !680, file: !679, line: 69, baseType: !720, size: 256, offset: 1664)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !680, file: !679, line: 70, baseType: !571, size: 64, offset: 1920)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !680, file: !679, line: 74, baseType: !720, size: 256, offset: 1984)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !680, file: !679, line: 75, baseType: !720, size: 256, offset: 2240)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !680, file: !679, line: 77, baseType: !726, size: 24576, align: 128, offset: 2560)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 24576, align: 128, elements: !727)
!727 = !{!156, !638}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !680, file: !679, line: 78, baseType: !729, size: 1024, offset: 27136)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 1024, elements: !155)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !680, file: !679, line: 79, baseType: !173, size: 32, offset: 28160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !680, file: !679, line: 80, baseType: !732, size: 64, offset: 28224)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !680, file: !679, line: 83, baseType: !734, size: 64, offset: 28288)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !619, line: 24, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !111, line: 37, baseType: !737)
!737 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !680, file: !679, line: 84, baseType: !394, size: 64, offset: 28352)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !680, file: !679, line: 85, baseType: !740, size: 128, offset: 28416)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 128, elements: !117)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 32, elements: !117)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !680, file: !679, line: 86, baseType: !741, size: 64, offset: 28544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !680, file: !679, line: 87, baseType: !745, size: 2176, offset: 28608)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 2176, elements: !746)
!746 = !{!118, !747}
!747 = !DISubrange(count: 17)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !680, file: !679, line: 92, baseType: !749, size: 20736, offset: 30784)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 20736, elements: !750)
!750 = !{!751, !751}
!751 = !DISubrange(count: 18)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !680, file: !679, line: 96, baseType: !753, size: 2176, offset: 51520)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 2176, elements: !746)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !680, file: !679, line: 97, baseType: !756, size: 128, offset: 53696)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 128, elements: !117)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !680, file: !679, line: 98, baseType: !306, size: 64, offset: 53824)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !680, file: !679, line: 99, baseType: !759, size: 1024, offset: 53888)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1024, elements: !609)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !680, file: !679, line: 100, baseType: !742, size: 32, offset: 54912)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !680, file: !679, line: 105, baseType: !762, size: 10368, offset: 54944)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 10368, elements: !750)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !680, file: !679, line: 106, baseType: !762, size: 10368, offset: 65312)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !680, file: !679, line: 107, baseType: !173, size: 32, offset: 75680)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !680, file: !679, line: 108, baseType: !766, size: 576, offset: 75712)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 576, elements: !767)
!767 = !{!751}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !680, file: !679, line: 109, baseType: !769, size: 20736, offset: 76288)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 20736, elements: !750)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !680, file: !679, line: 110, baseType: !754, size: 64, offset: 97024)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !680, file: !679, line: 111, baseType: !754, size: 64, offset: 97088)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !680, file: !679, line: 112, baseType: !773, size: 64, offset: 97152)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !680, file: !679, line: 113, baseType: !773, size: 64, offset: 97216)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !680, file: !679, line: 114, baseType: !773, size: 64, offset: 97280)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !680, file: !679, line: 115, baseType: !173, size: 32, offset: 97344)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !680, file: !679, line: 116, baseType: !571, size: 64, offset: 97408)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !680, file: !679, line: 117, baseType: !571, size: 64, offset: 97472)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !680, file: !679, line: 118, baseType: !571, size: 64, offset: 97536)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !680, file: !679, line: 119, baseType: !173, size: 32, offset: 97600)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !680, file: !679, line: 120, baseType: !782, size: 576, offset: 97632)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 576, elements: !767)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !680, file: !679, line: 121, baseType: !108, size: 32, offset: 98208)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !680, file: !679, line: 122, baseType: !143, size: 64, offset: 98240)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !680, file: !679, line: 125, baseType: !786, size: 256, offset: 98304)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !203, line: 503, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 496, size: 256, elements: !788)
!788 = !{!789, !791, !792, !793}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !787, file: !203, line: 498, baseType: !790, size: 64)
!790 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !787, file: !203, line: 499, baseType: !790, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !787, file: !203, line: 500, baseType: !790, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !787, file: !203, line: 502, baseType: !790, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !680, file: !679, line: 128, baseType: !795, size: 2008, offset: 98560)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2008, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 251)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !680, file: !679, line: 129, baseType: !799, size: 8032, offset: 100576)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 8032, elements: !796)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !680, file: !679, line: 130, baseType: !801, size: 16064, offset: 108608)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 16064, elements: !796)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !680, file: !679, line: 131, baseType: !173, size: 32, offset: 124672)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !680, file: !679, line: 132, baseType: !173, size: 32, offset: 124704)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !680, file: !679, line: 135, baseType: !173, size: 32, offset: 124736)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !680, file: !679, line: 136, baseType: !173, size: 32, offset: 124768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !680, file: !679, line: 137, baseType: !173, size: 32, offset: 124800)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !680, file: !679, line: 138, baseType: !173, size: 32, offset: 124832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !680, file: !679, line: 139, baseType: !173, size: 32, offset: 124864)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !680, file: !679, line: 142, baseType: !302, size: 32, offset: 124896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !680, file: !679, line: 143, baseType: !173, size: 32, offset: 124928)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !680, file: !679, line: 144, baseType: !173, size: 32, offset: 124960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !680, file: !679, line: 145, baseType: !173, size: 32, offset: 124992)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !673, file: !6, line: 470, baseType: !814, size: 128, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 128, elements: !117)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !673, file: !6, line: 473, baseType: !676, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !673, file: !6, line: 476, baseType: !817, size: 1152, offset: 256)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 1152, elements: !767)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !673, file: !6, line: 478, baseType: !173, size: 32, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !673, file: !6, line: 480, baseType: !173, size: 32, offset: 1440)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !673, file: !6, line: 482, baseType: !173, size: 32, offset: 1472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !673, file: !6, line: 483, baseType: !173, size: 32, offset: 1504)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !673, file: !6, line: 484, baseType: !173, size: 32, offset: 1536)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !673, file: !6, line: 485, baseType: !173, size: 32, offset: 1568)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !673, file: !6, line: 486, baseType: !173, size: 32, offset: 1600)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !673, file: !6, line: 487, baseType: !686, size: 64, offset: 1664)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !673, file: !6, line: 488, baseType: !686, size: 64, offset: 1728)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !673, file: !6, line: 489, baseType: !828, size: 128, offset: 1792)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 128, elements: !117)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !673, file: !6, line: 490, baseType: !686, size: 64, offset: 1920)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !673, file: !6, line: 491, baseType: !686, size: 64, offset: 1984)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !673, file: !6, line: 492, baseType: !173, size: 32, offset: 2048)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !673, file: !6, line: 493, baseType: !173, size: 32, offset: 2080)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !204, file: !6, line: 497, baseType: !677, size: 64, offset: 117440)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !204, file: !6, line: 500, baseType: !677, size: 64, offset: 117504)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !204, file: !6, line: 503, baseType: !173, size: 32, offset: 117568)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !204, file: !6, line: 504, baseType: !837, size: 1216, offset: 117632)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 1216, elements: !188)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !204, file: !6, line: 505, baseType: !173, size: 32, offset: 118848)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !204, file: !6, line: 506, baseType: !837, size: 1216, offset: 118912)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !204, file: !6, line: 507, baseType: !306, size: 64, offset: 120128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !204, file: !6, line: 510, baseType: !173, size: 32, offset: 120192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !204, file: !6, line: 511, baseType: !173, size: 32, offset: 120224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !204, file: !6, line: 512, baseType: !686, size: 64, offset: 120256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !204, file: !6, line: 522, baseType: !845, size: 10624, offset: 120320)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 515, size: 10624, elements: !846)
!846 = !{!847, !849, !852, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !845, file: !6, line: 517, baseType: !848, size: 256, align: 128)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 256, elements: !155)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !845, file: !6, line: 518, baseType: !850, size: 128, align: 128, offset: 256)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 128, elements: !851)
!851 = !{!118, !125}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !845, file: !6, line: 520, baseType: !853, size: 4096, align: 128, offset: 384)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, elements: !854)
!854 = !{!125, !260}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !845, file: !6, line: 521, baseType: !856, size: 6144, align: 128, offset: 4480)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 6144, elements: !857)
!857 = !{!858, !156}
!858 = !DISubrange(count: 24)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !204, file: !6, line: 732, baseType: !860, size: 82688, offset: 130944)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 525, size: 82688, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !889, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !907, !910, !914, !915, !916, !921, !922, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !989, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1031, !1032, !1033, !1036, !1039, !1041, !1044, !1046, !1047}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !860, file: !6, line: 527, baseType: !173, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !860, file: !6, line: 530, baseType: !173, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !860, file: !6, line: 531, baseType: !173, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !860, file: !6, line: 532, baseType: !173, size: 32, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !860, file: !6, line: 535, baseType: !173, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !860, file: !6, line: 536, baseType: !173, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !860, file: !6, line: 537, baseType: !173, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !860, file: !6, line: 538, baseType: !173, size: 32, offset: 224)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !860, file: !6, line: 539, baseType: !173, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !860, file: !6, line: 542, baseType: !173, size: 32, offset: 288)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !860, file: !6, line: 543, baseType: !173, size: 32, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !860, file: !6, line: 544, baseType: !173, size: 32, offset: 352)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !860, file: !6, line: 545, baseType: !173, size: 32, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !860, file: !6, line: 546, baseType: !173, size: 32, offset: 416)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !860, file: !6, line: 547, baseType: !173, size: 32, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !860, file: !6, line: 548, baseType: !173, size: 32, offset: 480)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !860, file: !6, line: 549, baseType: !173, size: 32, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !860, file: !6, line: 551, baseType: !173, size: 32, offset: 544)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !860, file: !6, line: 554, baseType: !306, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !860, file: !6, line: 555, baseType: !306, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !860, file: !6, line: 558, baseType: !306, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !860, file: !6, line: 559, baseType: !306, size: 64, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !860, file: !6, line: 561, baseType: !306, size: 64, offset: 832)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !860, file: !6, line: 562, baseType: !306, size: 64, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !860, file: !6, line: 565, baseType: !7, size: 32, offset: 960)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !860, file: !6, line: 566, baseType: !888, size: 128, offset: 992)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !124)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !860, file: !6, line: 567, baseType: !890, size: 512, offset: 1120)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !155)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !860, file: !6, line: 568, baseType: !7, size: 32, offset: 1632)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !860, file: !6, line: 569, baseType: !7, size: 32, offset: 1664)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !860, file: !6, line: 570, baseType: !173, size: 32, offset: 1696)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !860, file: !6, line: 571, baseType: !173, size: 32, offset: 1728)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !860, file: !6, line: 572, baseType: !173, size: 32, offset: 1760)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !860, file: !6, line: 573, baseType: !173, size: 32, offset: 1792)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !860, file: !6, line: 574, baseType: !173, size: 32, offset: 1824)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !860, file: !6, line: 575, baseType: !173, size: 32, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !860, file: !6, line: 576, baseType: !173, size: 32, offset: 1888)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !860, file: !6, line: 577, baseType: !173, size: 32, offset: 1920)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !860, file: !6, line: 578, baseType: !173, size: 32, offset: 1952)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !6, line: 585, baseType: !734, size: 64, offset: 1984)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !860, file: !6, line: 586, baseType: !394, size: 64, offset: 2048)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !860, file: !6, line: 587, baseType: !734, size: 64, offset: 2112)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !860, file: !6, line: 588, baseType: !906, size: 64, offset: 2176)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !860, file: !6, line: 589, baseType: !908, size: 64, offset: 2240)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 64, elements: !151)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !860, file: !6, line: 591, baseType: !911, size: 64, offset: 2304)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !913)
!913 = !{!858}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !860, file: !6, line: 592, baseType: !734, size: 64, offset: 2368)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !860, file: !6, line: 593, baseType: !740, size: 128, offset: 2432)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !860, file: !6, line: 594, baseType: !917, size: 128, offset: 2560)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 128, elements: !117)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !920)
!920 = !{!152, !118}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !860, file: !6, line: 595, baseType: !756, size: 128, offset: 2688)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !860, file: !6, line: 596, baseType: !923, size: 4096, offset: 2816)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 4096, elements: !924)
!924 = !{!118, !637}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !860, file: !6, line: 597, baseType: !734, size: 64, offset: 6912)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !860, file: !6, line: 598, baseType: !734, size: 64, offset: 6976)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !860, file: !6, line: 599, baseType: !571, size: 64, offset: 7040)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !860, file: !6, line: 603, baseType: !729, size: 1024, offset: 7104)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !860, file: !6, line: 606, baseType: !173, size: 32, offset: 8128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !860, file: !6, line: 607, baseType: !173, size: 32, offset: 8160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !860, file: !6, line: 608, baseType: !120, size: 32, align: 32, offset: 8192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !860, file: !6, line: 609, baseType: !173, size: 32, offset: 8224)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !860, file: !6, line: 611, baseType: !173, size: 32, offset: 8256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !860, file: !6, line: 612, baseType: !173, size: 32, offset: 8288)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !860, file: !6, line: 614, baseType: !173, size: 32, offset: 8320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !860, file: !6, line: 615, baseType: !173, size: 32, offset: 8352)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !860, file: !6, line: 621, baseType: !173, size: 32, offset: 8384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !860, file: !6, line: 624, baseType: !173, size: 32, offset: 8416)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !860, file: !6, line: 626, baseType: !173, size: 32, offset: 8448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !860, file: !6, line: 627, baseType: !173, size: 32, offset: 8480)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !860, file: !6, line: 671, baseType: !942, size: 60672, offset: 8576)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !6, line: 629, size: 60672, elements: !943)
!943 = !{!944, !948, !952, !954, !955, !958, !962, !963, !964, !965, !966, !967, !970, !974, !977, !978, !979, !980, !981, !984, !986, !988}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !942, file: !6, line: 634, baseType: !945, size: 3072, align: 128)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 3072, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !942, file: !6, line: 635, baseType: !949, size: 6912, align: 128, offset: 3072)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 6912, elements: !950)
!950 = !{!951}
!951 = !DISubrange(count: 864)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !942, file: !6, line: 638, baseType: !953, size: 2048, align: 128, offset: 9984)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2048, elements: !447)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !942, file: !6, line: 639, baseType: !953, size: 2048, align: 128, offset: 12032)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !942, file: !6, line: 640, baseType: !956, size: 3072, align: 128, offset: 14080)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 3072, elements: !957)
!957 = !{!638, !260}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !942, file: !6, line: 641, baseType: !959, size: 3840, align: 128, offset: 17152)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 3840, elements: !960)
!960 = !{!961, !156}
!961 = !DISubrange(count: 15)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !942, file: !6, line: 642, baseType: !148, size: 128, offset: 20992)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !942, file: !6, line: 643, baseType: !148, size: 128, offset: 21120)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !942, file: !6, line: 644, baseType: !173, size: 32, offset: 21248)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !942, file: !6, line: 645, baseType: !173, size: 32, offset: 21280)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !942, file: !6, line: 648, baseType: !853, size: 4096, align: 128, offset: 21376)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !942, file: !6, line: 649, baseType: !968, size: 4096, align: 128, offset: 25472)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, elements: !969)
!969 = !{!156, !156}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !942, file: !6, line: 652, baseType: !971, size: 576, align: 128, offset: 29568)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 576, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 9)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !942, file: !6, line: 653, baseType: !975, size: 1024, align: 128, offset: 30208)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1024, elements: !976)
!976 = !{!637}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !942, file: !6, line: 656, baseType: !718, size: 192, offset: 31232)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !942, file: !6, line: 658, baseType: !718, size: 192, offset: 31424)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !942, file: !6, line: 661, baseType: !718, size: 192, offset: 31616)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !942, file: !6, line: 664, baseType: !306, size: 64, offset: 31808)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !942, file: !6, line: 665, baseType: !982, size: 24576, offset: 31872)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 24576, elements: !983)
!983 = !{!118, !637, !544}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !942, file: !6, line: 666, baseType: !985, size: 2048, offset: 56448)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 2048, elements: !976)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !942, file: !6, line: 667, baseType: !987, size: 2048, offset: 58496)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 2048, elements: !609)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !942, file: !6, line: 670, baseType: !710, size: 96, offset: 60544)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !860, file: !6, line: 704, baseType: !990, size: 6144, offset: 69248)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !6, line: 674, size: 6144, elements: !991)
!991 = !{!992, !996, !1000, !1003, !1006, !1008, !1009, !1012, !1014, !1015, !1016, !1017, !1018, !1019}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !990, file: !6, line: 677, baseType: !993, size: 320, align: 64)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 320, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 40)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !990, file: !6, line: 680, baseType: !997, size: 384, align: 128, offset: 384)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 48)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !990, file: !6, line: 683, baseType: !1001, size: 640, align: 32, offset: 768)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 640, elements: !1002)
!1002 = !{!118, !995}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !990, file: !6, line: 686, baseType: !1004, size: 2560, align: 128, offset: 1408)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 2560, elements: !1005)
!1005 = !{!118, !995, !118}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !990, file: !6, line: 687, baseType: !1007, size: 1280, align: 64, offset: 3968)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1280, elements: !1005)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !990, file: !6, line: 690, baseType: !993, size: 320, align: 32, offset: 5248)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !990, file: !6, line: 692, baseType: !1010, size: 256, align: 32, offset: 5568)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 256, elements: !1011)
!1011 = !{!118, !125, !118}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !990, file: !6, line: 693, baseType: !1013, size: 64, align: 32, offset: 5824)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 64, elements: !851)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !990, file: !6, line: 694, baseType: !173, size: 32, offset: 5888)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !990, file: !6, line: 695, baseType: !742, size: 32, align: 32, offset: 5920)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !990, file: !6, line: 698, baseType: !173, size: 32, offset: 5952)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !990, file: !6, line: 699, baseType: !173, size: 32, offset: 5984)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !990, file: !6, line: 702, baseType: !173, size: 32, offset: 6016)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !990, file: !6, line: 703, baseType: !173, size: 32, offset: 6048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !860, file: !6, line: 707, baseType: !173, size: 32, offset: 75392)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !860, file: !6, line: 708, baseType: !173, size: 32, offset: 75424)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !860, file: !6, line: 709, baseType: !173, size: 32, offset: 75456)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !860, file: !6, line: 710, baseType: !173, size: 32, offset: 75488)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !860, file: !6, line: 711, baseType: !173, size: 32, offset: 75520)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !860, file: !6, line: 712, baseType: !173, size: 32, offset: 75552)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !860, file: !6, line: 713, baseType: !173, size: 32, offset: 75584)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !860, file: !6, line: 714, baseType: !173, size: 32, offset: 75616)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !860, file: !6, line: 717, baseType: !1029, size: 128, offset: 75648)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !1030)
!1030 = !{!118, !118}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !860, file: !6, line: 718, baseType: !173, size: 32, offset: 75776)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !860, file: !6, line: 719, baseType: !173, size: 32, offset: 75808)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !860, file: !6, line: 722, baseType: !1034, size: 4096, offset: 75840)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, elements: !1035)
!1035 = !{!118, !637, !125}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !860, file: !6, line: 723, baseType: !1037, size: 64, offset: 79936)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 64, elements: !124)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !860, file: !6, line: 724, baseType: !1040, size: 2048, offset: 80000)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 2048, elements: !1035)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !860, file: !6, line: 725, baseType: !1042, size: 64, offset: 82048)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 32, elements: !124)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !860, file: !6, line: 728, baseType: !1045, size: 144, offset: 82112)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 144, elements: !767)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !860, file: !6, line: 729, baseType: !173, size: 32, offset: 82272)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !860, file: !6, line: 730, baseType: !1048, size: 272, offset: 82304)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 272, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 34)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !204, file: !6, line: 735, baseType: !1052, size: 64, offset: 213632)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !6, line: 379, baseType: !1054)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !6, line: 379, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !204, file: !6, line: 793, baseType: !1056, size: 29504, offset: 213696)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 738, size: 29504, elements: !1057)
!1057 = !{!1058, !1085, !1088, !1090, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1102, !1104, !1105, !1108, !1110, !1112, !1113, !1114}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1056, file: !6, line: 764, baseType: !1059, size: 5632)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !6, line: 741, size: 5632, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1066, !1067, !1068, !1069, !1070, !1072, !1075, !1077, !1081, !1082, !1084}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1059, file: !6, line: 744, baseType: !173, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1059, file: !6, line: 746, baseType: !173, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1059, file: !6, line: 748, baseType: !173, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1059, file: !6, line: 750, baseType: !1065, size: 608, offset: 96)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 608, elements: !188)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1059, file: !6, line: 751, baseType: !173, size: 32, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1059, file: !6, line: 752, baseType: !173, size: 32, offset: 736)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1059, file: !6, line: 753, baseType: !173, size: 32, offset: 768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1059, file: !6, line: 754, baseType: !306, size: 64, offset: 800)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1059, file: !6, line: 755, baseType: !1071, size: 2048, offset: 864)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !924)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1059, file: !6, line: 756, baseType: !1073, size: 544, offset: 2912)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 544, elements: !1074)
!1074 = !{!747}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1059, file: !6, line: 757, baseType: !1076, size: 192, offset: 3456)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !543)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1059, file: !6, line: 758, baseType: !1078, size: 1664, offset: 3648)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1664, elements: !1079)
!1079 = !{!125, !1080}
!1080 = !DISubrange(count: 13)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1059, file: !6, line: 760, baseType: !306, size: 64, offset: 5312)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1059, file: !6, line: 762, baseType: !1083, size: 192, offset: 5376)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 192, elements: !711)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1059, file: !6, line: 763, baseType: !790, size: 64, offset: 5568)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1056, file: !6, line: 769, baseType: !1086, size: 160, offset: 5632)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 160, elements: !1087)
!1087 = !{!181}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1056, file: !6, line: 770, baseType: !1089, size: 320, offset: 5824)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 320, elements: !1087)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1056, file: !6, line: 771, baseType: !1091, size: 320, offset: 6144)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 320, elements: !1087)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1056, file: !6, line: 772, baseType: !1073, size: 544, offset: 6464)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1056, file: !6, line: 774, baseType: !1089, size: 320, offset: 7040)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1056, file: !6, line: 775, baseType: !1091, size: 320, offset: 7360)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1056, file: !6, line: 776, baseType: !1091, size: 320, offset: 7680)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1056, file: !6, line: 777, baseType: !1091, size: 320, offset: 8000)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1056, file: !6, line: 778, baseType: !1091, size: 320, offset: 8320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1056, file: !6, line: 779, baseType: !1091, size: 320, offset: 8640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1056, file: !6, line: 781, baseType: !1100, size: 6080, offset: 8960)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 6080, elements: !1101)
!1101 = !{!181, !189}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1056, file: !6, line: 782, baseType: !1103, size: 2176, offset: 15040)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 2176, elements: !746)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1056, file: !6, line: 783, baseType: !828, size: 128, offset: 17216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1056, file: !6, line: 784, baseType: !1106, size: 8192, offset: 17344)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 8192, elements: !1107)
!1107 = !{!118, !118, !637}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1056, file: !6, line: 785, baseType: !1109, size: 384, offset: 25536)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 384, elements: !543)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1056, file: !6, line: 786, baseType: !1111, size: 3328, offset: 25920)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 3328, elements: !1079)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1056, file: !6, line: 788, baseType: !306, size: 64, offset: 29248)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1056, file: !6, line: 789, baseType: !306, size: 64, offset: 29312)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1056, file: !6, line: 791, baseType: !710, size: 96, offset: 29376)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !204, file: !6, line: 795, baseType: !1116, size: 4096, align: 128, offset: 243200)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 4096, elements: !1117)
!1117 = !{!118, !260}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !204, file: !6, line: 796, baseType: !1119, size: 2048, align: 128, offset: 247296)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, elements: !1117)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !204, file: !6, line: 797, baseType: !163, size: 64, offset: 249344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !204, file: !6, line: 800, baseType: !266, size: 64, offset: 249408)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !204, file: !6, line: 801, baseType: !1123, size: 384, offset: 249472)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 384, elements: !1124)
!1124 = !{!118, !638}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !204, file: !6, line: 802, baseType: !1126, size: 128, offset: 249856)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 128, elements: !117)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !1129)
!1129 = !{!118, !125, !125}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !204, file: !6, line: 805, baseType: !1131, size: 448, offset: 249984)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 448, elements: !185)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !66, line: 27, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !394}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !204, file: !6, line: 806, baseType: !1131, size: 448, offset: 250432)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !204, file: !6, line: 807, baseType: !1138, size: 768, offset: 250880)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 768, elements: !1143)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !66, line: 28, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !394, !394}
!1143 = !{!1144}
!1144 = !DISubrange(count: 12)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !204, file: !6, line: 808, baseType: !1146, size: 768, offset: 251648)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 768, elements: !1143)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !204, file: !6, line: 809, baseType: !1148, size: 64, offset: 252416)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !66, line: 29, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !394, !394, !173, !173}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !204, file: !6, line: 811, baseType: !1153, size: 8448, offset: 252480)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !90, line: 110, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 63, size: 8448, elements: !1155)
!1155 = !{!1156, !1162, !1163, !1164, !1165, !1167, !1168, !1169, !1170, !1176, !1182, !1183, !1187, !1192, !1193, !1199, !1203, !1204, !1205, !1206, !1207, !1212, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1154, file: !90, line: 65, baseType: !1157, size: 448)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 448, elements: !185)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !90, line: 26, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!173, !394, !173, !394, !173}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1154, file: !90, line: 66, baseType: !1157, size: 448, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1154, file: !90, line: 67, baseType: !1157, size: 448, offset: 896)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1154, file: !90, line: 68, baseType: !1157, size: 448, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1154, file: !90, line: 69, baseType: !1166, size: 256, offset: 1792)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 256, elements: !124)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1154, file: !90, line: 70, baseType: !1157, size: 448, offset: 2048)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1154, file: !90, line: 71, baseType: !1157, size: 448, offset: 2496)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1154, file: !90, line: 72, baseType: !1157, size: 448, offset: 2944)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1154, file: !90, line: 73, baseType: !1171, size: 448, offset: 3392)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 448, elements: !185)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !90, line: 27, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !394, !394, !394, !394, !173, !754}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1154, file: !90, line: 74, baseType: !1177, size: 448, offset: 3840)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 448, elements: !185)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !90, line: 28, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !394, !394, !394, !394, !394, !173, !754}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1154, file: !90, line: 75, baseType: !1157, size: 448, offset: 4288)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1154, file: !90, line: 76, baseType: !1184, size: 64, offset: 4736)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!173, !394, !173, !394, !173, !754}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1154, file: !90, line: 78, baseType: !1188, size: 256, offset: 4800)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 256, elements: !124)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!143, !394, !173}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1154, file: !90, line: 79, baseType: !1188, size: 256, offset: 5056)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1154, file: !90, line: 81, baseType: !1194, size: 64, offset: 5312)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !542, !173, !542, !173, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !124)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1154, file: !90, line: 83, baseType: !1200, size: 64, offset: 5376)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!302, !1197, !1197, !173}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1154, file: !90, line: 86, baseType: !1171, size: 448, offset: 5440)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1154, file: !90, line: 87, baseType: !1177, size: 448, offset: 5888)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1154, file: !90, line: 88, baseType: !1171, size: 448, offset: 6336)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1154, file: !90, line: 89, baseType: !1177, size: 448, offset: 6784)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1154, file: !90, line: 93, baseType: !1208, size: 448, offset: 7232)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1209, size: 448, elements: !185)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!173, !754, !571, !173, !571, !906, !173, !173}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1154, file: !90, line: 98, baseType: !1213, size: 64, offset: 7680)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !394, !394, !754}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1154, file: !90, line: 99, baseType: !1213, size: 64, offset: 7744)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1154, file: !90, line: 100, baseType: !1213, size: 64, offset: 7808)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1154, file: !90, line: 101, baseType: !1213, size: 64, offset: 7872)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1154, file: !90, line: 102, baseType: !1213, size: 64, offset: 7936)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1154, file: !90, line: 103, baseType: !1213, size: 64, offset: 8000)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1154, file: !90, line: 104, baseType: !1213, size: 64, offset: 8064)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1154, file: !90, line: 105, baseType: !1213, size: 64, offset: 8128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1154, file: !90, line: 106, baseType: !1213, size: 64, offset: 8192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1154, file: !90, line: 107, baseType: !1213, size: 64, offset: 8256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1154, file: !90, line: 108, baseType: !1213, size: 64, offset: 8320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1154, file: !90, line: 109, baseType: !1213, size: 64, offset: 8384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !204, file: !6, line: 812, baseType: !1228, size: 2368, offset: 260928)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !613, line: 111, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 58, size: 2368, elements: !1230)
!1230 = !{!1231, !1238, !1242, !1246, !1253, !1258, !1259, !1263, !1267, !1268, !1272, !1280, !1284, !1288, !1289, !1293, !1297, !1301, !1302, !1303, !1304, !1309}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1229, file: !613, line: 60, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !394, !173, !1235, !173, !173, !173, !173, !173, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1229, file: !613, line: 65, baseType: !1239, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!394, !394, !754, !1235, !173, !173, !173, !173, !173, !1236}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1229, file: !613, line: 71, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !394, !173, !394, !173, !173, !173, !173, !173}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1229, file: !613, line: 75, baseType: !1247, size: 640, offset: 192)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1248, size: 640, elements: !1251)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !394, !173, !394, !173, !394, !173, !173}
!1251 = !{!1252}
!1252 = !DISubrange(count: 10)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1229, file: !613, line: 78, baseType: !1254, size: 448, offset: 832)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 448, elements: !185)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !394, !173, !394, !173, !173}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1229, file: !613, line: 79, baseType: !1255, size: 64, offset: 1280)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1229, file: !613, line: 81, baseType: !1260, size: 64, offset: 1344)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !394, !173, !394, !173, !173, !173}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1229, file: !613, line: 84, baseType: !1264, size: 64, offset: 1408)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !394, !394, !394, !394, !173, !173, !173, !906}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1229, file: !613, line: 88, baseType: !1255, size: 64, offset: 1472)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1229, file: !613, line: 91, baseType: !1269, size: 64, offset: 1536)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !394, !173, !173}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1229, file: !613, line: 93, baseType: !1273, size: 64, offset: 1600)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!266, !266, !1276, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1279, line: 18, baseType: !145)
!1279 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1229, file: !613, line: 94, baseType: !1281, size: 64, offset: 1664)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !266, !173}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1229, file: !613, line: 97, baseType: !1285, size: 64, offset: 1728)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !571, !394, !173}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1229, file: !613, line: 98, baseType: !1285, size: 64, offset: 1792)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1229, file: !613, line: 99, baseType: !1290, size: 64, offset: 1856)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !571, !571, !173}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1229, file: !613, line: 100, baseType: !1294, size: 64, offset: 1920)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !571, !173}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1229, file: !613, line: 102, baseType: !1298, size: 64, offset: 1984)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !394, !394, !394, !394, !394, !173, !173, !173, !173}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1229, file: !613, line: 104, baseType: !629, size: 64, offset: 2048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1229, file: !613, line: 105, baseType: !629, size: 64, offset: 2112)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1229, file: !613, line: 106, baseType: !629, size: 64, offset: 2176)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1229, file: !613, line: 107, baseType: !1305, size: 64, offset: 2240)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !201, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1229, file: !613, line: 109, baseType: !1310, size: 64, offset: 2304)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !754, !571, !571, !571, !571, !173}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !204, file: !6, line: 813, baseType: !1314, size: 960, offset: 263296)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1315, line: 115, baseType: !1316)
!1315 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 89, size: 960, elements: !1317)
!1317 = !{!1318, !1322, !1326, !1331, !1332, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1348, !1352, !1356}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1316, file: !1315, line: 94, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !906, !394, !394}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1316, file: !1315, line: 95, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !394, !906}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1316, file: !1315, line: 97, baseType: !1327, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330, !394, !394}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1316, file: !1315, line: 98, baseType: !1319, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1316, file: !1315, line: 99, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !394, !1330}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1316, file: !1315, line: 100, baseType: !1323, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1316, file: !1315, line: 102, baseType: !1327, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1316, file: !1315, line: 103, baseType: !1333, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1316, file: !1315, line: 104, baseType: !1323, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1316, file: !1315, line: 106, baseType: !1319, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1316, file: !1315, line: 107, baseType: !1323, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1316, file: !1315, line: 109, baseType: !1343, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346, !394, !394}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 1024, elements: !259)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1316, file: !1315, line: 110, baseType: !1349, size: 64, offset: 768)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !394, !1346}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1316, file: !1315, line: 112, baseType: !1353, size: 64, offset: 832)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !906}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1316, file: !1315, line: 113, baseType: !1353, size: 64, offset: 896)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !204, file: !6, line: 814, baseType: !1358, size: 384, offset: 264256)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1315, line: 126, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 117, size: 384, elements: !1360)
!1360 = !{!1361, !1365, !1366, !1370, !1371, !1375}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1359, file: !1315, line: 119, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !906, !906}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1359, file: !1315, line: 120, baseType: !1362, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1359, file: !1315, line: 121, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!173, !906, !542, !394}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1359, file: !1315, line: 122, baseType: !1367, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1359, file: !1315, line: 123, baseType: !1372, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!173, !906, !542, !394, !906}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1359, file: !1315, line: 124, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !906, !906, !394}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !204, file: !6, line: 815, baseType: !1380, size: 1408, offset: 264640)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1381, line: 44, baseType: !1382)
!1381 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1381, line: 26, size: 1408, elements: !1383)
!1383 = !{!1384, !1388, !1389, !1393, !1394, !1398, !1402, !1403, !1408, !1412, !1413, !1414, !1416}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1382, file: !1381, line: 28, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!173, !906, !571, !571}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1382, file: !1381, line: 29, baseType: !1385, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1382, file: !1381, line: 30, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!173, !906, !173, !173}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1382, file: !1381, line: 31, baseType: !1390, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1382, file: !1381, line: 33, baseType: !1395, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !906, !555, !173}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1382, file: !1381, line: 34, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !906, !551, !173}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1382, file: !1381, line: 35, baseType: !1399, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1382, file: !1381, line: 37, baseType: !1404, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !906, !1407, !571, !173}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1382, file: !1381, line: 39, baseType: !1409, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!173, !906}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1382, file: !1381, line: 40, baseType: !1409, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1382, file: !1381, line: 41, baseType: !1409, size: 64, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1382, file: !1381, line: 42, baseType: !1415, size: 384, offset: 704)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 384, elements: !543)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1382, file: !1381, line: 43, baseType: !1417, size: 320, offset: 1088)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 320, elements: !1087)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!173, !906, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !399, line: 63, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 58, size: 416, elements: !1424)
!1424 = !{!1425, !1426, !1427}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1423, file: !399, line: 60, baseType: !173, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1423, file: !399, line: 61, baseType: !848, size: 256, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1423, file: !399, line: 62, baseType: !154, size: 128, offset: 288)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !204, file: !6, line: 816, baseType: !1429, size: 576, offset: 266048)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !679, line: 170, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 161, size: 576, elements: !1431)
!1431 = !{!1432, !1438, !1439, !1445, !1446}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1430, file: !679, line: 163, baseType: !1433, size: 128)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 128, elements: !117)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !679, line: 159, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !394, !173, !173, !173, !734}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1430, file: !679, line: 164, baseType: !1433, size: 128, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1430, file: !679, line: 165, baseType: !1440, size: 128, offset: 256)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 128, elements: !117)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !679, line: 160, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !394, !173, !173, !173}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1430, file: !679, line: 166, baseType: !1440, size: 128, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1430, file: !679, line: 167, baseType: !1447, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !394, !1450, !1451, !1454, !173, !173}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 1280, elements: !1453)
!1453 = !{!995, !118}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1456)
!1456 = !{!125, !125}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !204, file: !6, line: 821, baseType: !1458, size: 64, offset: 266624)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !6, line: 377, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !6, line: 366, size: 960, elements: !1461)
!1461 = !{!1462, !1464, !1465, !1466, !1467, !1468, !1469, !1479, !1480}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1460, file: !6, line: 368, baseType: !1463, size: 8)
!1463 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1460, file: !6, line: 369, baseType: !121, size: 8, offset: 8)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1460, file: !6, line: 370, baseType: !121, size: 8, offset: 16)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1460, file: !6, line: 371, baseType: !173, size: 32, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1460, file: !6, line: 372, baseType: !173, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1460, file: !6, line: 373, baseType: !677, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1460, file: !6, line: 374, baseType: !1470, size: 256, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !679, line: 157, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 149, size: 256, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1471, file: !679, line: 151, baseType: !676, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1471, file: !679, line: 152, baseType: !173, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1471, file: !679, line: 153, baseType: !173, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1471, file: !679, line: 154, baseType: !173, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1471, file: !679, line: 155, baseType: !173, size: 32, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1471, file: !679, line: 156, baseType: !173, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1460, file: !6, line: 375, baseType: !1470, size: 256, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1460, file: !6, line: 376, baseType: !1470, size: 256, offset: 704)
!1481 = !{!1482, !1483, !1484, !1485, !1486}
!1482 = !DILocalVariable(name: "h", arg: 1, scope: !198, file: !3, line: 125, type: !201)
!1483 = !DILocalVariable(name: "i8", arg: 2, scope: !198, file: !3, line: 125, type: !173)
!1484 = !DILocalVariable(name: "x", scope: !198, file: !3, line: 127, type: !173)
!1485 = !DILocalVariable(name: "y", scope: !198, file: !3, line: 128, type: !173)
!1486 = !DILocalVariable(name: "scan8", scope: !1487, file: !3, line: 155, type: !173)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 154, column: 5)
!1488 = distinct !DILexicalBlock(scope: !198, file: !3, line: 130, column: 9)
!1489 = !DILocation(line: 0, scope: !198)
!1490 = !DILocation(line: 127, column: 14, scope: !198)
!1491 = !DILocation(line: 128, column: 14, scope: !198)
!1492 = !DILocation(line: 130, column: 15, scope: !1488)
!1493 = !DILocation(line: 130, column: 22, scope: !1488)
!1494 = !DILocation(line: 130, column: 9, scope: !198)
!1495 = !DILocation(line: 132, column: 23, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 131, column: 5)
!1497 = !DILocation(line: 132, column: 17, scope: !1496)
!1498 = !DILocation(line: 132, column: 9, scope: !1496)
!1499 = !DILocation(line: 135, column: 17, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 133, column: 9)
!1501 = !DILocation(line: 136, column: 17, scope: !1500)
!1502 = !DILocation(line: 138, column: 17, scope: !1500)
!1503 = !DILocation(line: 139, column: 42, scope: !1500)
!1504 = !DILocation(line: 139, column: 17, scope: !1500)
!1505 = !DILocation(line: 140, column: 17, scope: !1500)
!1506 = !DILocation(line: 142, column: 17, scope: !1500)
!1507 = !DILocation(line: 143, column: 39, scope: !1500)
!1508 = !DILocation(line: 143, column: 17, scope: !1500)
!1509 = !DILocation(line: 144, column: 17, scope: !1500)
!1510 = !DILocation(line: 146, column: 17, scope: !1500)
!1511 = !DILocation(line: 147, column: 39, scope: !1500)
!1512 = !DILocation(line: 147, column: 17, scope: !1500)
!1513 = !DILocation(line: 148, column: 44, scope: !1500)
!1514 = !DILocation(line: 148, column: 17, scope: !1500)
!1515 = !DILocation(line: 149, column: 17, scope: !1500)
!1516 = !DILocation(line: 150, column: 17, scope: !1500)
!1517 = !DILocation(line: 155, column: 42, scope: !1487)
!1518 = !DILocation(line: 155, column: 39, scope: !1487)
!1519 = !DILocation(line: 0, scope: !1487)
!1520 = !DILocation(line: 157, column: 25, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 157, column: 13)
!1522 = !DILocation(line: 157, column: 13, scope: !1521)
!1523 = !DILocation(line: 157, column: 39, scope: !1521)
!1524 = !DILocation(line: 157, column: 13, scope: !1487)
!1525 = !DILocation(line: 158, column: 17, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 158, column: 17)
!1527 = !DILocation(line: 158, column: 43, scope: !1526)
!1528 = !DILocation(line: 158, column: 17, scope: !1521)
!1529 = !DILocation(line: 159, column: 17, scope: !1526)
!1530 = !DILocation(line: 161, column: 17, scope: !1526)
!1531 = !DILocation(line: 163, column: 13, scope: !1521)
!1532 = !DILocation(line: 165, column: 1, scope: !198)
!1533 = distinct !DISubprogram(name: "x264_mb_mc_0xywh", scope: !3, file: !3, line: 28, type: !1534, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !201, !173, !173, !173, !173}
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1537 = !DILocalVariable(name: "h", arg: 1, scope: !1533, file: !3, line: 28, type: !201)
!1538 = !DILocalVariable(name: "x", arg: 2, scope: !1533, file: !3, line: 28, type: !173)
!1539 = !DILocalVariable(name: "y", arg: 3, scope: !1533, file: !3, line: 28, type: !173)
!1540 = !DILocalVariable(name: "width", arg: 4, scope: !1533, file: !3, line: 28, type: !173)
!1541 = !DILocalVariable(name: "height", arg: 5, scope: !1533, file: !3, line: 28, type: !173)
!1542 = !DILocalVariable(name: "i8", scope: !1533, file: !3, line: 30, type: !173)
!1543 = !DILocalVariable(name: "i_ref", scope: !1533, file: !3, line: 31, type: !173)
!1544 = !DILocalVariable(name: "mvx", scope: !1533, file: !3, line: 32, type: !173)
!1545 = !DILocalVariable(name: "mvy", scope: !1533, file: !3, line: 33, type: !173)
!1546 = !DILocation(line: 0, scope: !1533)
!1547 = !DILocation(line: 30, column: 30, scope: !1533)
!1548 = !DILocation(line: 30, column: 34, scope: !1533)
!1549 = !DILocation(line: 30, column: 32, scope: !1533)
!1550 = !DILocation(line: 31, column: 29, scope: !1533)
!1551 = !DILocation(line: 31, column: 17, scope: !1533)
!1552 = !DILocation(line: 32, column: 41, scope: !1533)
!1553 = !DILocation(line: 32, column: 29, scope: !1533)
!1554 = !DILocation(line: 32, column: 61, scope: !1533)
!1555 = !DILocation(line: 32, column: 55, scope: !1533)
!1556 = !DILocation(line: 32, column: 78, scope: !1533)
!1557 = !DILocation(line: 32, column: 72, scope: !1533)
!1558 = !DILocalVariable(name: "v", arg: 1, scope: !1559, file: !6, line: 200, type: !173)
!1559 = distinct !DISubprogram(name: "x264_clip3", scope: !6, file: !6, line: 200, type: !1560, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!173, !173, !173, !173}
!1562 = !{!1558, !1563, !1564}
!1563 = !DILocalVariable(name: "i_min", arg: 2, scope: !1559, file: !6, line: 200, type: !173)
!1564 = !DILocalVariable(name: "i_max", arg: 3, scope: !1559, file: !6, line: 200, type: !173)
!1565 = !DILocation(line: 0, scope: !1559, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 32, column: 17, scope: !1533)
!1567 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1566)
!1568 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1566)
!1569 = !DILocation(line: 32, column: 95, scope: !1533)
!1570 = !DILocation(line: 32, column: 90, scope: !1533)
!1571 = !DILocation(line: 33, column: 29, scope: !1533)
!1572 = !DILocation(line: 33, column: 55, scope: !1533)
!1573 = !DILocation(line: 33, column: 72, scope: !1533)
!1574 = !DILocation(line: 0, scope: !1559, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 33, column: 17, scope: !1533)
!1576 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1575)
!1577 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1575)
!1578 = !DILocation(line: 33, column: 95, scope: !1533)
!1579 = !DILocation(line: 33, column: 90, scope: !1533)
!1580 = !DILocation(line: 35, column: 8, scope: !1533)
!1581 = !DILocation(line: 35, column: 11, scope: !1533)
!1582 = !DILocation(line: 35, column: 31, scope: !1533)
!1583 = !DILocation(line: 35, column: 21, scope: !1533)
!1584 = !DILocation(line: 35, column: 44, scope: !1533)
!1585 = !DILocation(line: 35, column: 58, scope: !1533)
!1586 = !DILocation(line: 35, column: 56, scope: !1533)
!1587 = !DILocation(line: 36, column: 30, scope: !1533)
!1588 = !DILocation(line: 36, column: 20, scope: !1533)
!1589 = !DILocation(line: 36, column: 58, scope: !1533)
!1590 = !DILocation(line: 36, column: 48, scope: !1533)
!1591 = !DILocation(line: 37, column: 31, scope: !1533)
!1592 = !DILocation(line: 37, column: 40, scope: !1533)
!1593 = !DILocation(line: 37, column: 56, scope: !1533)
!1594 = !DILocation(line: 37, column: 50, scope: !1533)
!1595 = !DILocation(line: 35, column: 5, scope: !1533)
!1596 = !DILocation(line: 40, column: 15, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 40, column: 9)
!1598 = !DILocation(line: 40, column: 28, scope: !1597)
!1599 = !DILocation(line: 40, column: 9, scope: !1533)
!1600 = !DILocation(line: 41, column: 23, scope: !1597)
!1601 = !DILocation(line: 41, column: 34, scope: !1597)
!1602 = !DILocation(line: 41, column: 37, scope: !1597)
!1603 = !DILocation(line: 41, column: 13, scope: !1597)
!1604 = !DILocation(line: 41, column: 9, scope: !1597)
!1605 = !DILocation(line: 43, column: 11, scope: !1533)
!1606 = !DILocation(line: 43, column: 23, scope: !1533)
!1607 = !DILocation(line: 43, column: 46, scope: !1533)
!1608 = !DILocation(line: 43, column: 60, scope: !1533)
!1609 = !DILocation(line: 43, column: 58, scope: !1533)
!1610 = !DILocation(line: 44, column: 22, scope: !1533)
!1611 = !DILocation(line: 44, column: 53, scope: !1533)
!1612 = !DILocation(line: 45, column: 33, scope: !1533)
!1613 = !DILocation(line: 45, column: 42, scope: !1533)
!1614 = !DILocation(line: 43, column: 5, scope: !1533)
!1615 = !DILocation(line: 47, column: 32, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 47, column: 9)
!1617 = !DILocation(line: 47, column: 9, scope: !1616)
!1618 = !DILocation(line: 47, column: 9, scope: !1533)
!1619 = !DILocation(line: 48, column: 46, scope: !1616)
!1620 = !DILocation(line: 48, column: 9, scope: !1616)
!1621 = !DILocation(line: 48, column: 53, scope: !1616)
!1622 = !DILocation(line: 52, column: 11, scope: !1533)
!1623 = !DILocation(line: 52, column: 23, scope: !1533)
!1624 = !DILocation(line: 53, column: 22, scope: !1533)
!1625 = !DILocation(line: 53, column: 53, scope: !1533)
!1626 = !DILocation(line: 52, column: 5, scope: !1533)
!1627 = !DILocation(line: 56, column: 32, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 56, column: 9)
!1629 = !DILocation(line: 56, column: 9, scope: !1628)
!1630 = !DILocation(line: 56, column: 9, scope: !1533)
!1631 = !DILocation(line: 57, column: 46, scope: !1628)
!1632 = !DILocation(line: 57, column: 9, scope: !1628)
!1633 = !DILocation(line: 57, column: 53, scope: !1628)
!1634 = !DILocation(line: 61, column: 1, scope: !1533)
!1635 = distinct !DISubprogram(name: "x264_mb_mc_01xywh", scope: !3, file: !3, line: 85, type: !1534, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1637 = !DILocalVariable(name: "h", arg: 1, scope: !1635, file: !3, line: 85, type: !201)
!1638 = !DILocalVariable(name: "x", arg: 2, scope: !1635, file: !3, line: 85, type: !173)
!1639 = !DILocalVariable(name: "y", arg: 3, scope: !1635, file: !3, line: 85, type: !173)
!1640 = !DILocalVariable(name: "width", arg: 4, scope: !1635, file: !3, line: 85, type: !173)
!1641 = !DILocalVariable(name: "height", arg: 5, scope: !1635, file: !3, line: 85, type: !173)
!1642 = !DILocalVariable(name: "i8", scope: !1635, file: !3, line: 87, type: !173)
!1643 = !DILocalVariable(name: "i_ref0", scope: !1635, file: !3, line: 88, type: !173)
!1644 = !DILocalVariable(name: "i_ref1", scope: !1635, file: !3, line: 89, type: !173)
!1645 = !DILocalVariable(name: "weight", scope: !1635, file: !3, line: 90, type: !173)
!1646 = !DILocalVariable(name: "mvx0", scope: !1635, file: !3, line: 91, type: !173)
!1647 = !DILocalVariable(name: "mvx1", scope: !1635, file: !3, line: 92, type: !173)
!1648 = !DILocalVariable(name: "mvy0", scope: !1635, file: !3, line: 93, type: !173)
!1649 = !DILocalVariable(name: "mvy1", scope: !1635, file: !3, line: 94, type: !173)
!1650 = !DILocalVariable(name: "i_mode", scope: !1635, file: !3, line: 95, type: !173)
!1651 = !DILocalVariable(name: "i_stride0", scope: !1635, file: !3, line: 96, type: !173)
!1652 = !DILocalVariable(name: "i_stride1", scope: !1635, file: !3, line: 96, type: !173)
!1653 = !DILocalVariable(name: "tmp0", scope: !1635, file: !3, line: 97, type: !953, align: 128)
!1654 = !DILocalVariable(name: "tmp1", scope: !1635, file: !3, line: 98, type: !953, align: 128)
!1655 = !DILocalVariable(name: "src0", scope: !1635, file: !3, line: 99, type: !394)
!1656 = !DILocalVariable(name: "src1", scope: !1635, file: !3, line: 99, type: !394)
!1657 = distinct !DIAssignID()
!1658 = !DILocation(line: 0, scope: !1635)
!1659 = distinct !DIAssignID()
!1660 = distinct !DIAssignID()
!1661 = distinct !DIAssignID()
!1662 = !DILocation(line: 87, column: 27, scope: !1635)
!1663 = !DILocation(line: 87, column: 31, scope: !1635)
!1664 = !DILocation(line: 87, column: 29, scope: !1635)
!1665 = !DILocation(line: 88, column: 30, scope: !1635)
!1666 = !DILocation(line: 88, column: 18, scope: !1635)
!1667 = !DILocation(line: 89, column: 18, scope: !1635)
!1668 = !DILocation(line: 90, column: 24, scope: !1635)
!1669 = !DILocation(line: 90, column: 18, scope: !1635)
!1670 = !DILocation(line: 91, column: 42, scope: !1635)
!1671 = !DILocation(line: 91, column: 30, scope: !1635)
!1672 = !DILocation(line: 91, column: 62, scope: !1635)
!1673 = !DILocation(line: 91, column: 56, scope: !1635)
!1674 = !DILocation(line: 91, column: 79, scope: !1635)
!1675 = !DILocation(line: 91, column: 73, scope: !1635)
!1676 = !DILocation(line: 0, scope: !1559, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 91, column: 18, scope: !1635)
!1678 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1677)
!1679 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1677)
!1680 = !DILocation(line: 91, column: 96, scope: !1635)
!1681 = !DILocation(line: 91, column: 91, scope: !1635)
!1682 = !DILocation(line: 92, column: 30, scope: !1635)
!1683 = !DILocation(line: 0, scope: !1559, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 92, column: 18, scope: !1635)
!1685 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1684)
!1686 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1684)
!1687 = !DILocation(line: 92, column: 91, scope: !1635)
!1688 = !DILocation(line: 93, column: 30, scope: !1635)
!1689 = !DILocation(line: 93, column: 56, scope: !1635)
!1690 = !DILocation(line: 93, column: 73, scope: !1635)
!1691 = !DILocation(line: 0, scope: !1559, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 93, column: 18, scope: !1635)
!1693 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1692)
!1694 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1692)
!1695 = !DILocation(line: 93, column: 96, scope: !1635)
!1696 = !DILocation(line: 93, column: 91, scope: !1635)
!1697 = !DILocation(line: 94, column: 30, scope: !1635)
!1698 = !DILocation(line: 0, scope: !1559, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 94, column: 18, scope: !1635)
!1700 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1699)
!1701 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1699)
!1702 = !DILocation(line: 94, column: 91, scope: !1635)
!1703 = !DILocation(line: 95, column: 18, scope: !1635)
!1704 = !DILocation(line: 96, column: 5, scope: !1635)
!1705 = !DILocation(line: 96, column: 9, scope: !1635)
!1706 = distinct !DIAssignID()
!1707 = !DILocation(line: 96, column: 25, scope: !1635)
!1708 = distinct !DIAssignID()
!1709 = !DILocation(line: 97, column: 5, scope: !1635)
!1710 = !DILocation(line: 98, column: 5, scope: !1635)
!1711 = !DILocation(line: 101, column: 18, scope: !1635)
!1712 = !DILocation(line: 101, column: 55, scope: !1635)
!1713 = !DILocation(line: 101, column: 45, scope: !1635)
!1714 = !DILocation(line: 101, column: 84, scope: !1635)
!1715 = !DILocation(line: 101, column: 74, scope: !1635)
!1716 = !DILocation(line: 102, column: 40, scope: !1635)
!1717 = !DILocation(line: 102, column: 49, scope: !1635)
!1718 = !DILocation(line: 101, column: 12, scope: !1635)
!1719 = !DILocation(line: 103, column: 18, scope: !1635)
!1720 = !DILocation(line: 103, column: 45, scope: !1635)
!1721 = !DILocation(line: 103, column: 74, scope: !1635)
!1722 = !DILocation(line: 103, column: 12, scope: !1635)
!1723 = !DILocation(line: 105, column: 11, scope: !1635)
!1724 = !DILocation(line: 105, column: 5, scope: !1635)
!1725 = !DILocation(line: 105, column: 35, scope: !1635)
!1726 = !DILocation(line: 105, column: 25, scope: !1635)
!1727 = !DILocation(line: 105, column: 48, scope: !1635)
!1728 = !DILocation(line: 105, column: 62, scope: !1635)
!1729 = !DILocation(line: 105, column: 60, scope: !1635)
!1730 = !DILocation(line: 106, column: 30, scope: !1635)
!1731 = !DILocation(line: 106, column: 47, scope: !1635)
!1732 = !DILocation(line: 108, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 108, column: 9)
!1734 = !DILocation(line: 108, column: 28, scope: !1733)
!1735 = !DILocation(line: 108, column: 9, scope: !1635)
!1736 = !DILocation(line: 109, column: 24, scope: !1733)
!1737 = !DILocation(line: 109, column: 35, scope: !1733)
!1738 = !DILocation(line: 109, column: 38, scope: !1733)
!1739 = !DILocation(line: 109, column: 14, scope: !1733)
!1740 = !DILocation(line: 109, column: 9, scope: !1733)
!1741 = !DILocation(line: 110, column: 28, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 110, column: 9)
!1743 = !DILocation(line: 110, column: 9, scope: !1635)
!1744 = !DILocation(line: 111, column: 24, scope: !1742)
!1745 = !DILocation(line: 111, column: 35, scope: !1742)
!1746 = !DILocation(line: 111, column: 38, scope: !1742)
!1747 = !DILocation(line: 111, column: 14, scope: !1742)
!1748 = !DILocation(line: 111, column: 9, scope: !1742)
!1749 = !DILocation(line: 113, column: 11, scope: !1635)
!1750 = !DILocation(line: 113, column: 32, scope: !1635)
!1751 = !DILocation(line: 113, column: 64, scope: !1635)
!1752 = !DILocation(line: 114, column: 35, scope: !1635)
!1753 = !DILocation(line: 114, column: 44, scope: !1635)
!1754 = !DILocation(line: 113, column: 5, scope: !1635)
!1755 = !DILocation(line: 115, column: 11, scope: !1635)
!1756 = !DILocation(line: 115, column: 32, scope: !1635)
!1757 = !DILocation(line: 115, column: 64, scope: !1635)
!1758 = !DILocation(line: 115, column: 5, scope: !1635)
!1759 = !DILocation(line: 117, column: 21, scope: !1635)
!1760 = !DILocation(line: 117, column: 5, scope: !1635)
!1761 = !DILocation(line: 117, column: 27, scope: !1635)
!1762 = !DILocation(line: 117, column: 50, scope: !1635)
!1763 = !DILocation(line: 117, column: 64, scope: !1635)
!1764 = !DILocation(line: 117, column: 62, scope: !1635)
!1765 = !DILocation(line: 118, column: 11, scope: !1635)
!1766 = !DILocation(line: 118, column: 32, scope: !1635)
!1767 = !DILocation(line: 118, column: 64, scope: !1635)
!1768 = !DILocation(line: 118, column: 5, scope: !1635)
!1769 = !DILocation(line: 120, column: 11, scope: !1635)
!1770 = !DILocation(line: 120, column: 32, scope: !1635)
!1771 = !DILocation(line: 120, column: 64, scope: !1635)
!1772 = !DILocation(line: 120, column: 5, scope: !1635)
!1773 = !DILocation(line: 122, column: 5, scope: !1635)
!1774 = !DILocation(line: 122, column: 27, scope: !1635)
!1775 = !DILocation(line: 123, column: 1, scope: !1635)
!1776 = distinct !DISubprogram(name: "x264_mb_mc_1xywh", scope: !3, file: !3, line: 62, type: !1534, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1778 = !DILocalVariable(name: "h", arg: 1, scope: !1776, file: !3, line: 62, type: !201)
!1779 = !DILocalVariable(name: "x", arg: 2, scope: !1776, file: !3, line: 62, type: !173)
!1780 = !DILocalVariable(name: "y", arg: 3, scope: !1776, file: !3, line: 62, type: !173)
!1781 = !DILocalVariable(name: "width", arg: 4, scope: !1776, file: !3, line: 62, type: !173)
!1782 = !DILocalVariable(name: "height", arg: 5, scope: !1776, file: !3, line: 62, type: !173)
!1783 = !DILocalVariable(name: "i8", scope: !1776, file: !3, line: 64, type: !173)
!1784 = !DILocalVariable(name: "i_ref", scope: !1776, file: !3, line: 65, type: !173)
!1785 = !DILocalVariable(name: "mvx", scope: !1776, file: !3, line: 66, type: !173)
!1786 = !DILocalVariable(name: "mvy", scope: !1776, file: !3, line: 67, type: !173)
!1787 = !DILocation(line: 0, scope: !1776)
!1788 = !DILocation(line: 64, column: 30, scope: !1776)
!1789 = !DILocation(line: 64, column: 34, scope: !1776)
!1790 = !DILocation(line: 64, column: 32, scope: !1776)
!1791 = !DILocation(line: 65, column: 17, scope: !1776)
!1792 = !DILocation(line: 66, column: 29, scope: !1776)
!1793 = !DILocation(line: 66, column: 61, scope: !1776)
!1794 = !DILocation(line: 66, column: 55, scope: !1776)
!1795 = !DILocation(line: 66, column: 78, scope: !1776)
!1796 = !DILocation(line: 66, column: 72, scope: !1776)
!1797 = !DILocation(line: 0, scope: !1559, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 66, column: 17, scope: !1776)
!1799 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1798)
!1800 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1798)
!1801 = !DILocation(line: 66, column: 95, scope: !1776)
!1802 = !DILocation(line: 66, column: 90, scope: !1776)
!1803 = !DILocation(line: 67, column: 29, scope: !1776)
!1804 = !DILocation(line: 67, column: 55, scope: !1776)
!1805 = !DILocation(line: 67, column: 72, scope: !1776)
!1806 = !DILocation(line: 0, scope: !1559, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 67, column: 17, scope: !1776)
!1808 = !DILocation(line: 202, column: 17, scope: !1559, inlinedAt: !1807)
!1809 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !1807)
!1810 = !DILocation(line: 67, column: 95, scope: !1776)
!1811 = !DILocation(line: 67, column: 90, scope: !1776)
!1812 = !DILocation(line: 69, column: 8, scope: !1776)
!1813 = !DILocation(line: 69, column: 11, scope: !1776)
!1814 = !DILocation(line: 69, column: 31, scope: !1776)
!1815 = !DILocation(line: 69, column: 21, scope: !1776)
!1816 = !DILocation(line: 69, column: 44, scope: !1776)
!1817 = !DILocation(line: 69, column: 58, scope: !1776)
!1818 = !DILocation(line: 69, column: 56, scope: !1776)
!1819 = !DILocation(line: 70, column: 20, scope: !1776)
!1820 = !DILocation(line: 70, column: 58, scope: !1776)
!1821 = !DILocation(line: 70, column: 48, scope: !1776)
!1822 = !DILocation(line: 71, column: 31, scope: !1776)
!1823 = !DILocation(line: 71, column: 40, scope: !1776)
!1824 = !DILocation(line: 69, column: 5, scope: !1776)
!1825 = !DILocation(line: 73, column: 15, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 73, column: 9)
!1827 = !DILocation(line: 73, column: 28, scope: !1826)
!1828 = !DILocation(line: 73, column: 9, scope: !1776)
!1829 = !DILocation(line: 74, column: 23, scope: !1826)
!1830 = !DILocation(line: 74, column: 34, scope: !1826)
!1831 = !DILocation(line: 74, column: 37, scope: !1826)
!1832 = !DILocation(line: 74, column: 13, scope: !1826)
!1833 = !DILocation(line: 74, column: 9, scope: !1826)
!1834 = !DILocation(line: 76, column: 11, scope: !1776)
!1835 = !DILocation(line: 76, column: 23, scope: !1776)
!1836 = !DILocation(line: 76, column: 46, scope: !1776)
!1837 = !DILocation(line: 76, column: 60, scope: !1776)
!1838 = !DILocation(line: 76, column: 58, scope: !1776)
!1839 = !DILocation(line: 77, column: 22, scope: !1776)
!1840 = !DILocation(line: 77, column: 53, scope: !1776)
!1841 = !DILocation(line: 78, column: 33, scope: !1776)
!1842 = !DILocation(line: 78, column: 42, scope: !1776)
!1843 = !DILocation(line: 76, column: 5, scope: !1776)
!1844 = !DILocation(line: 80, column: 11, scope: !1776)
!1845 = !DILocation(line: 80, column: 23, scope: !1776)
!1846 = !DILocation(line: 81, column: 22, scope: !1776)
!1847 = !DILocation(line: 81, column: 53, scope: !1776)
!1848 = !DILocation(line: 80, column: 5, scope: !1776)
!1849 = !DILocation(line: 83, column: 1, scope: !1776)
!1850 = distinct !DISubprogram(name: "x264_mb_mc", scope: !3, file: !3, line: 167, type: !1851, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !201}
!1853 = !{!1854, !1855, !1859, !1861, !1862, !1863}
!1854 = !DILocalVariable(name: "h", arg: 1, scope: !1850, file: !3, line: 167, type: !201)
!1855 = !DILocalVariable(name: "i", scope: !1856, file: !3, line: 171, type: !173)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 171, column: 9)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 170, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 169, column: 9)
!1859 = !DILocalVariable(name: "ref0a", scope: !1860, file: !3, line: 176, type: !173)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 175, column: 5)
!1861 = !DILocalVariable(name: "ref0b", scope: !1860, file: !3, line: 177, type: !173)
!1862 = !DILocalVariable(name: "ref1a", scope: !1860, file: !3, line: 178, type: !173)
!1863 = !DILocalVariable(name: "ref1b", scope: !1860, file: !3, line: 179, type: !173)
!1864 = !DILocation(line: 0, scope: !1850)
!1865 = !DILocation(line: 169, column: 15, scope: !1858)
!1866 = !DILocation(line: 169, column: 27, scope: !1858)
!1867 = !DILocation(line: 169, column: 9, scope: !1850)
!1868 = !DILocation(line: 0, scope: !1856)
!1869 = !DILocation(line: 172, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 171, column: 9)
!1871 = !DILocation(line: 213, column: 1, scope: !1850)
!1872 = !DILocation(line: 176, column: 21, scope: !1860)
!1873 = !DILocation(line: 0, scope: !1860)
!1874 = !DILocation(line: 177, column: 21, scope: !1860)
!1875 = !DILocation(line: 178, column: 21, scope: !1860)
!1876 = !DILocation(line: 179, column: 21, scope: !1860)
!1877 = !DILocation(line: 181, column: 13, scope: !1860)
!1878 = !DILocation(line: 183, column: 23, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 183, column: 17)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 182, column: 9)
!1881 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 181, column: 13)
!1882 = !DILocation(line: 183, column: 17, scope: !1880)
!1883 = !DILocation(line: 184, column: 27, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 184, column: 21)
!1885 = !DILocation(line: 184, column: 21, scope: !1879)
!1886 = !DILocation(line: 184, column: 34, scope: !1884)
!1887 = !DILocation(line: 185, column: 34, scope: !1884)
!1888 = !DILocation(line: 186, column: 34, scope: !1879)
!1889 = !DILocation(line: 190, column: 23, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 190, column: 17)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 189, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 188, column: 18)
!1893 = !DILocation(line: 190, column: 17, scope: !1891)
!1894 = !DILocation(line: 191, column: 27, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 191, column: 21)
!1896 = !DILocation(line: 191, column: 21, scope: !1890)
!1897 = !DILocation(line: 191, column: 34, scope: !1895)
!1898 = !DILocation(line: 192, column: 34, scope: !1895)
!1899 = !DILocation(line: 193, column: 34, scope: !1890)
!1900 = !DILocation(line: 195, column: 23, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 195, column: 17)
!1902 = !DILocation(line: 195, column: 17, scope: !1891)
!1903 = !DILocation(line: 196, column: 27, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 196, column: 21)
!1905 = !DILocation(line: 196, column: 21, scope: !1901)
!1906 = !DILocation(line: 196, column: 34, scope: !1904)
!1907 = !DILocation(line: 197, column: 34, scope: !1904)
!1908 = !DILocation(line: 198, column: 34, scope: !1901)
!1909 = !DILocation(line: 202, column: 23, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 202, column: 17)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 201, column: 9)
!1912 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 200, column: 18)
!1913 = !DILocation(line: 202, column: 17, scope: !1911)
!1914 = !DILocation(line: 203, column: 27, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 203, column: 21)
!1916 = !DILocation(line: 203, column: 21, scope: !1910)
!1917 = !DILocation(line: 203, column: 34, scope: !1915)
!1918 = !DILocation(line: 204, column: 34, scope: !1915)
!1919 = !DILocation(line: 205, column: 34, scope: !1910)
!1920 = !DILocation(line: 207, column: 23, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 207, column: 17)
!1922 = !DILocation(line: 207, column: 17, scope: !1911)
!1923 = !DILocation(line: 208, column: 27, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 208, column: 21)
!1925 = !DILocation(line: 208, column: 21, scope: !1921)
!1926 = !DILocation(line: 208, column: 34, scope: !1924)
!1927 = !DILocation(line: 209, column: 34, scope: !1924)
!1928 = !DILocation(line: 210, column: 34, scope: !1921)
!1929 = distinct !DISubprogram(name: "x264_macroblock_cache_allocate", scope: !3, file: !3, line: 215, type: !1930, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!173, !201}
!1932 = !{!1933, !1934, !1935, !1937, !1940, !1942, !1945, !1946, !1947, !1948, !1949, !1951}
!1933 = !DILocalVariable(name: "h", arg: 1, scope: !1929, file: !3, line: 215, type: !201)
!1934 = !DILocalVariable(name: "i_mb_count", scope: !1929, file: !3, line: 217, type: !173)
!1935 = !DILocalVariable(name: "i", scope: !1936, file: !3, line: 245, type: !173)
!1936 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 245, column: 5)
!1937 = !DILocalVariable(name: "i_refs", scope: !1938, file: !3, line: 247, type: !173)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 246, column: 5)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 245, column: 5)
!1940 = !DILocalVariable(name: "j", scope: !1941, file: !3, line: 253, type: !173)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 253, column: 9)
!1942 = !DILocalVariable(name: "i_padv", scope: !1943, file: !3, line: 259, type: !173)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 258, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 257, column: 9)
!1945 = !DILocalVariable(name: "align", scope: !1943, file: !3, line: 261, type: !173)
!1946 = !DILocalVariable(name: "i_stride", scope: !1943, file: !3, line: 262, type: !173)
!1947 = !DILocalVariable(name: "luma_plane_size", scope: !1943, file: !3, line: 262, type: !173)
!1948 = !DILocalVariable(name: "numweightbuf", scope: !1943, file: !3, line: 263, type: !173)
!1949 = !DILocalVariable(name: "i", scope: !1950, file: !3, line: 292, type: !173)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 292, column: 9)
!1951 = !DILabel(scope: !1929, name: "fail", file: !3, line: 298)
!1952 = !DILocation(line: 0, scope: !1929)
!1953 = !DILocation(line: 217, column: 25, scope: !1929)
!1954 = !DILocation(line: 217, column: 28, scope: !1929)
!1955 = !DILocation(line: 219, column: 28, scope: !1929)
!1956 = !DILocation(line: 219, column: 33, scope: !1929)
!1957 = !DILocation(line: 219, column: 11, scope: !1929)
!1958 = !DILocation(line: 219, column: 23, scope: !1929)
!1959 = !DILocation(line: 220, column: 44, scope: !1929)
!1960 = !DILocation(line: 220, column: 11, scope: !1929)
!1961 = !DILocation(line: 220, column: 23, scope: !1929)
!1962 = !DILocation(line: 221, column: 33, scope: !1929)
!1963 = !DILocation(line: 221, column: 44, scope: !1929)
!1964 = !DILocation(line: 221, column: 11, scope: !1929)
!1965 = !DILocation(line: 221, column: 23, scope: !1929)
!1966 = !DILocation(line: 223, column: 35, scope: !1929)
!1967 = !DILocation(line: 223, column: 11, scope: !1929)
!1968 = !DILocation(line: 223, column: 24, scope: !1929)
!1969 = !DILocation(line: 225, column: 5, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 225, column: 5)
!1971 = !DILocation(line: 225, column: 5, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 225, column: 5)
!1973 = !DILocation(line: 226, column: 5, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 226, column: 5)
!1975 = !DILocation(line: 226, column: 5, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 226, column: 5)
!1977 = !DILocation(line: 227, column: 5, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 227, column: 5)
!1979 = !DILocation(line: 227, column: 5, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 227, column: 5)
!1981 = !DILocation(line: 228, column: 5, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 228, column: 5)
!1983 = !DILocation(line: 228, column: 5, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 228, column: 5)
!1985 = !DILocation(line: 229, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 229, column: 5)
!1987 = !DILocation(line: 229, column: 5, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 229, column: 5)
!1989 = !DILocation(line: 230, column: 5, scope: !1929)
!1990 = !DILocation(line: 233, column: 5, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 233, column: 5)
!1992 = !DILocation(line: 233, column: 5, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 233, column: 5)
!1994 = !DILocation(line: 236, column: 5, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 236, column: 5)
!1996 = !DILocation(line: 236, column: 5, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 236, column: 5)
!1998 = !DILocation(line: 238, column: 18, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 238, column: 9)
!2000 = !DILocation(line: 238, column: 9, scope: !1999)
!2001 = !DILocation(line: 238, column: 9, scope: !1929)
!2002 = !DILocation(line: 240, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 240, column: 9)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 239, column: 5)
!2005 = !DILocation(line: 240, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 240, column: 9)
!2007 = !DILocation(line: 241, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 241, column: 9)
!2009 = !DILocation(line: 241, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 241, column: 9)
!2011 = !DILocation(line: 242, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 242, column: 9)
!2013 = !DILocation(line: 242, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 242, column: 9)
!2015 = !DILocation(line: 0, scope: !1936)
!2016 = !DILocation(line: 247, column: 22, scope: !1938)
!2017 = !DILocation(line: 247, column: 116, scope: !1938)
!2018 = !DILocation(line: 247, column: 104, scope: !1938)
!2019 = !DILocation(line: 0, scope: !1938)
!2020 = !DILocation(line: 248, column: 30, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 248, column: 13)
!2022 = !DILocation(line: 248, column: 13, scope: !1938)
!2023 = !DILocation(line: 249, column: 22, scope: !2021)
!2024 = !DILocation(line: 249, column: 13, scope: !2021)
!2025 = !DILocation(line: 251, column: 22, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 250, column: 18)
!2027 = !DILocation(line: 251, column: 13, scope: !2026)
!2028 = !DILocation(line: 0, scope: !1941)
!2029 = !DILocation(line: 253, column: 28, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 253, column: 9)
!2031 = !DILocation(line: 253, column: 9, scope: !1941)
!2032 = !DILocation(line: 253, column: 39, scope: !2030)
!2033 = distinct !{!2033, !2031, !2034}
!2034 = !DILocation(line: 254, column: 13, scope: !1941)
!2035 = !DILocation(line: 254, column: 13, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 254, column: 13)
!2037 = !DILocation(line: 254, column: 13, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 254, column: 13)
!2039 = !DILocation(line: 257, column: 26, scope: !1944)
!2040 = !DILocation(line: 245, column: 29, scope: !1939)
!2041 = !DILocation(line: 257, column: 9, scope: !1944)
!2042 = !DILocation(line: 257, column: 9, scope: !1929)
!2043 = !DILocation(line: 259, column: 39, scope: !1943)
!2044 = !DILocation(line: 0, scope: !1943)
!2045 = !DILocation(line: 261, column: 30, scope: !1943)
!2046 = !DILocation(line: 261, column: 33, scope: !1943)
!2047 = !DILocation(line: 261, column: 21, scope: !1943)
!2048 = !DILocation(line: 265, column: 46, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 265, column: 13)
!2050 = !DILocation(line: 265, column: 13, scope: !1943)
!2051 = !DILocation(line: 268, column: 27, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 268, column: 17)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 266, column: 9)
!2054 = !DILocation(line: 268, column: 18, scope: !2052)
!2055 = !DILocation(line: 268, column: 44, scope: !2052)
!2056 = !DILocation(line: 268, column: 55, scope: !2052)
!2057 = !DILocation(line: 268, column: 71, scope: !2052)
!2058 = !DILocation(line: 268, column: 52, scope: !2052)
!2059 = !DILocation(line: 268, column: 49, scope: !2052)
!2060 = !DILocation(line: 268, column: 17, scope: !2053)
!2061 = !DILocation(line: 271, column: 28, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 269, column: 13)
!2063 = !DILocation(line: 272, column: 55, scope: !2062)
!2064 = !DILocation(line: 272, column: 66, scope: !2062)
!2065 = !DILocation(line: 272, column: 70, scope: !2062)
!2066 = !DILocation(line: 272, column: 68, scope: !2062)
!2067 = !DILocation(line: 272, column: 44, scope: !2062)
!2068 = !DILocation(line: 275, column: 13, scope: !2062)
!2069 = !DILocation(line: 281, column: 24, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 280, column: 9)
!2071 = !DILocation(line: 282, column: 51, scope: !2070)
!2072 = !DILocation(line: 282, column: 62, scope: !2070)
!2073 = !DILocation(line: 282, column: 67, scope: !2070)
!2074 = !DILocation(line: 282, column: 65, scope: !2070)
!2075 = !DILocation(line: 282, column: 40, scope: !2070)
!2076 = !DILocation(line: 284, column: 50, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 284, column: 17)
!2078 = !DILocation(line: 0, scope: !1950)
!2079 = !DILocation(line: 292, column: 9, scope: !1950)
!2080 = !DILocation(line: 292, column: 44, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 292, column: 9)
!2082 = !DILocation(line: 292, column: 27, scope: !2081)
!2083 = distinct !{!2083, !2079, !2084}
!2084 = !DILocation(line: 293, column: 13, scope: !1950)
!2085 = !DILocation(line: 293, column: 13, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 293, column: 13)
!2087 = !DILocation(line: 293, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 293, column: 13)
!2089 = !DILocation(line: 300, column: 1, scope: !1929)
!2090 = !DISubprogram(name: "x264_malloc", scope: !6, file: !6, line: 174, type: !2091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!266, !173}
!2093 = distinct !DISubprogram(name: "x264_macroblock_cache_free", scope: !3, file: !3, line: 301, type: !1851, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095, !2096, !2098, !2101}
!2095 = !DILocalVariable(name: "h", arg: 1, scope: !2093, file: !3, line: 301, type: !201)
!2096 = !DILocalVariable(name: "i", scope: !2097, file: !3, line: 303, type: !173)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 303, column: 5)
!2098 = !DILocalVariable(name: "j", scope: !2099, file: !3, line: 304, type: !173)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 304, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 303, column: 5)
!2101 = !DILocalVariable(name: "i", scope: !2102, file: !3, line: 306, type: !173)
!2102 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 306, column: 5)
!2103 = !DILocation(line: 0, scope: !2093)
!2104 = !DILocation(line: 0, scope: !2097)
!2105 = !DILocation(line: 0, scope: !2099)
!2106 = !DILocation(line: 305, column: 24, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 304, column: 9)
!2108 = !DILocation(line: 305, column: 13, scope: !2107)
!2109 = !DILocation(line: 0, scope: !2102)
!2110 = !DILocation(line: 307, column: 20, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 306, column: 5)
!2112 = !DILocation(line: 307, column: 9, scope: !2111)
!2113 = !DILocation(line: 309, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 309, column: 9)
!2115 = !DILocation(line: 309, column: 9, scope: !2114)
!2116 = !DILocation(line: 309, column: 9, scope: !2093)
!2117 = !DILocation(line: 311, column: 26, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 310, column: 5)
!2119 = !DILocation(line: 311, column: 9, scope: !2118)
!2120 = !DILocation(line: 312, column: 26, scope: !2118)
!2121 = !DILocation(line: 312, column: 20, scope: !2118)
!2122 = !DILocation(line: 312, column: 9, scope: !2118)
!2123 = !DILocation(line: 313, column: 20, scope: !2118)
!2124 = !DILocation(line: 313, column: 9, scope: !2118)
!2125 = !DILocation(line: 314, column: 5, scope: !2118)
!2126 = !DILocation(line: 315, column: 22, scope: !2093)
!2127 = !DILocation(line: 315, column: 5, scope: !2093)
!2128 = !DILocation(line: 316, column: 22, scope: !2093)
!2129 = !DILocation(line: 316, column: 5, scope: !2093)
!2130 = !DILocation(line: 317, column: 22, scope: !2093)
!2131 = !DILocation(line: 317, column: 5, scope: !2093)
!2132 = !DILocation(line: 318, column: 22, scope: !2093)
!2133 = !DILocation(line: 318, column: 5, scope: !2093)
!2134 = !DILocation(line: 319, column: 22, scope: !2093)
!2135 = !DILocation(line: 319, column: 5, scope: !2093)
!2136 = !DILocation(line: 320, column: 22, scope: !2093)
!2137 = !DILocation(line: 320, column: 5, scope: !2093)
!2138 = !DILocation(line: 321, column: 22, scope: !2093)
!2139 = !DILocation(line: 321, column: 5, scope: !2093)
!2140 = !DILocation(line: 322, column: 1, scope: !2093)
!2141 = !DISubprogram(name: "x264_free", scope: !6, file: !6, line: 175, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = distinct !DISubprogram(name: "x264_macroblock_thread_allocate", scope: !3, file: !3, line: 324, type: !2143, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!173, !201, !173}
!2145 = !{!2146, !2147, !2148, !2151, !2155, !2156, !2159, !2160, !2161, !2162, !2163, !2164}
!2146 = !DILocalVariable(name: "h", arg: 1, scope: !2142, file: !3, line: 324, type: !201)
!2147 = !DILocalVariable(name: "b_lookahead", arg: 2, scope: !2142, file: !3, line: 324, type: !173)
!2148 = !DILocalVariable(name: "i", scope: !2149, file: !3, line: 327, type: !173)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 327, column: 9)
!2150 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 326, column: 9)
!2151 = !DILocalVariable(name: "j", scope: !2152, file: !3, line: 329, type: !173)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 329, column: 13)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 328, column: 9)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 327, column: 9)
!2155 = !DILocalVariable(name: "scratch_size", scope: !2142, file: !3, line: 339, type: !173)
!2156 = !DILocalVariable(name: "buf_hpel", scope: !2157, file: !3, line: 342, type: !173)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 341, column: 5)
!2158 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 340, column: 9)
!2159 = !DILocalVariable(name: "buf_ssim", scope: !2157, file: !3, line: 343, type: !173)
!2160 = !DILocalVariable(name: "me_range", scope: !2157, file: !3, line: 344, type: !173)
!2161 = !DILocalVariable(name: "buf_tesa", scope: !2157, file: !3, line: 345, type: !173)
!2162 = !DILocalVariable(name: "buf_nnz", scope: !2157, file: !3, line: 347, type: !173)
!2163 = !DILocalVariable(name: "buf_mbtree", scope: !2142, file: !3, line: 350, type: !173)
!2164 = !DILabel(scope: !2142, name: "fail", file: !3, line: 355)
!2165 = !DILocation(line: 0, scope: !2142)
!2166 = !DILocation(line: 326, column: 10, scope: !2150)
!2167 = !DILocation(line: 326, column: 9, scope: !2142)
!2168 = !DILocation(line: 350, column: 51, scope: !2142)
!2169 = !DILocation(line: 350, column: 56, scope: !2142)
!2170 = !DILocation(line: 0, scope: !2149)
!2171 = !DILocation(line: 327, column: 39, scope: !2154)
!2172 = !DILocation(line: 327, column: 27, scope: !2154)
!2173 = !DILocation(line: 327, column: 9, scope: !2149)
!2174 = !DILocation(line: 327, column: 54, scope: !2154)
!2175 = distinct !{!2175, !2173, !2176}
!2176 = !DILocation(line: 336, column: 9, scope: !2149)
!2177 = !DILocation(line: 0, scope: !2152)
!2178 = !DILocation(line: 332, column: 17, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 332, column: 17)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 332, column: 17)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 330, column: 13)
!2182 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 329, column: 13)
!2183 = !DILocation(line: 332, column: 17, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 332, column: 17)
!2185 = !DILocation(line: 332, column: 17, scope: !2180)
!2186 = !DILocation(line: 333, column: 46, scope: !2181)
!2187 = !DILocation(line: 335, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 335, column: 13)
!2189 = !DILocation(line: 335, column: 13, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 335, column: 13)
!2191 = !DILocation(line: 342, column: 28, scope: !2157)
!2192 = !DILocation(line: 342, column: 25, scope: !2157)
!2193 = !DILocation(line: 342, column: 39, scope: !2157)
!2194 = !DILocation(line: 342, column: 45, scope: !2157)
!2195 = !DILocation(line: 342, column: 60, scope: !2157)
!2196 = !DILocation(line: 0, scope: !2157)
!2197 = !DILocation(line: 343, column: 41, scope: !2157)
!2198 = !DILocation(line: 343, column: 64, scope: !2157)
!2199 = !DILocation(line: 343, column: 71, scope: !2157)
!2200 = !DILocation(line: 343, column: 73, scope: !2157)
!2201 = !DILocation(line: 343, column: 52, scope: !2157)
!2202 = !DILocation(line: 343, column: 77, scope: !2157)
!2203 = !DILocation(line: 344, column: 24, scope: !2157)
!2204 = !DILocation(line: 345, column: 42, scope: !2157)
!2205 = !DILocation(line: 345, column: 54, scope: !2157)
!2206 = !DILocation(line: 346, column: 23, scope: !2157)
!2207 = !DILocation(line: 346, column: 30, scope: !2157)
!2208 = !DILocation(line: 346, column: 59, scope: !2157)
!2209 = !DILocation(line: 346, column: 63, scope: !2157)
!2210 = !DILocation(line: 346, column: 78, scope: !2157)
!2211 = !DILocation(line: 346, column: 48, scope: !2157)
!2212 = !DILocation(line: 345, column: 24, scope: !2157)
!2213 = !DILocation(line: 347, column: 33, scope: !2157)
!2214 = !DILocation(line: 347, column: 23, scope: !2157)
!2215 = !DILocation(line: 347, column: 46, scope: !2157)
!2216 = !DILocation(line: 347, column: 51, scope: !2157)
!2217 = !DILocation(line: 347, column: 98, scope: !2157)
!2218 = !DILocation(line: 347, column: 78, scope: !2157)
!2219 = !DILocation(line: 347, column: 83, scope: !2157)
!2220 = !DILocation(line: 347, column: 72, scope: !2157)
!2221 = !DILocation(line: 348, column: 24, scope: !2157)
!2222 = !DILocation(line: 349, column: 5, scope: !2157)
!2223 = !DILocation(line: 350, column: 34, scope: !2142)
!2224 = !DILocation(line: 350, column: 66, scope: !2142)
!2225 = !DILocation(line: 350, column: 69, scope: !2142)
!2226 = !DILocation(line: 350, column: 44, scope: !2142)
!2227 = !DILocation(line: 350, column: 74, scope: !2142)
!2228 = !DILocation(line: 351, column: 20, scope: !2142)
!2229 = !DILocation(line: 352, column: 5, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 352, column: 5)
!2231 = !DILocation(line: 352, column: 5, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 352, column: 5)
!2233 = !DILocation(line: 355, column: 1, scope: !2142)
!2234 = !DILocation(line: 356, column: 5, scope: !2142)
!2235 = !DILocation(line: 357, column: 1, scope: !2142)
!2236 = distinct !DISubprogram(name: "x264_macroblock_thread_free", scope: !3, file: !3, line: 359, type: !199, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2237 = !{!2238, !2239, !2240, !2243}
!2238 = !DILocalVariable(name: "h", arg: 1, scope: !2236, file: !3, line: 359, type: !201)
!2239 = !DILocalVariable(name: "b_lookahead", arg: 2, scope: !2236, file: !3, line: 359, type: !173)
!2240 = !DILocalVariable(name: "i", scope: !2241, file: !3, line: 362, type: !173)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 362, column: 9)
!2242 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 361, column: 9)
!2243 = !DILocalVariable(name: "j", scope: !2244, file: !3, line: 365, type: !173)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 365, column: 13)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 363, column: 9)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 362, column: 9)
!2247 = !DILocation(line: 0, scope: !2236)
!2248 = !DILocation(line: 361, column: 10, scope: !2242)
!2249 = !DILocation(line: 361, column: 9, scope: !2236)
!2250 = !DILocation(line: 0, scope: !2241)
!2251 = !DILocation(line: 362, column: 39, scope: !2246)
!2252 = !DILocation(line: 362, column: 27, scope: !2246)
!2253 = !DILocation(line: 362, column: 9, scope: !2241)
!2254 = !DILocation(line: 364, column: 24, scope: !2245)
!2255 = !DILocation(line: 364, column: 13, scope: !2245)
!2256 = !DILocation(line: 0, scope: !2244)
!2257 = !DILocation(line: 366, column: 28, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 365, column: 13)
!2259 = !DILocation(line: 366, column: 57, scope: !2258)
!2260 = !DILocation(line: 366, column: 17, scope: !2258)
!2261 = !DILocation(line: 362, column: 54, scope: !2246)
!2262 = distinct !{!2262, !2253, !2263}
!2263 = !DILocation(line: 367, column: 9, scope: !2241)
!2264 = !DILocation(line: 368, column: 19, scope: !2236)
!2265 = !DILocation(line: 368, column: 5, scope: !2236)
!2266 = !DILocation(line: 369, column: 1, scope: !2236)
!2267 = distinct !DISubprogram(name: "x264_macroblock_slice_init", scope: !3, file: !3, line: 371, type: !1851, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2272, !2276, !2278, !2281, !2283, !2286, !2289, !2290, !2291}
!2269 = !DILocalVariable(name: "h", arg: 1, scope: !2267, file: !3, line: 371, type: !201)
!2270 = !DILocalVariable(name: "i", scope: !2271, file: !3, line: 383, type: !173)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 383, column: 5)
!2272 = !DILocalVariable(name: "i", scope: !2273, file: !3, line: 387, type: !173)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 387, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 386, column: 5)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 385, column: 9)
!2276 = !DILocalVariable(name: "i", scope: !2277, file: !3, line: 392, type: !173)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 392, column: 9)
!2278 = !DILocalVariable(name: "poc", scope: !2279, file: !3, line: 394, type: !173)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 393, column: 9)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 392, column: 9)
!2281 = !DILocalVariable(name: "j", scope: !2282, file: !3, line: 396, type: !173)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 396, column: 13)
!2283 = !DILocalVariable(name: "field", scope: !2284, file: !3, line: 411, type: !173)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 411, column: 9)
!2285 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 410, column: 9)
!2286 = !DILocalVariable(name: "curpoc", scope: !2287, file: !3, line: 413, type: !173)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 412, column: 9)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 411, column: 9)
!2289 = !DILocalVariable(name: "refpoc", scope: !2287, file: !3, line: 414, type: !173)
!2290 = !DILocalVariable(name: "delta", scope: !2287, file: !3, line: 417, type: !173)
!2291 = !DILocalVariable(name: "i", scope: !2292, file: !3, line: 424, type: !173)
!2292 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 424, column: 5)
!2293 = !DILocation(line: 0, scope: !2267)
!2294 = !DILocation(line: 373, column: 22, scope: !2267)
!2295 = !DILocation(line: 373, column: 28, scope: !2267)
!2296 = !DILocation(line: 373, column: 19, scope: !2267)
!2297 = !DILocation(line: 373, column: 11, scope: !2267)
!2298 = !DILocation(line: 373, column: 17, scope: !2267)
!2299 = !DILocation(line: 374, column: 19, scope: !2267)
!2300 = !DILocation(line: 374, column: 5, scope: !2267)
!2301 = !DILocation(line: 374, column: 17, scope: !2267)
!2302 = !DILocation(line: 375, column: 32, scope: !2267)
!2303 = !DILocation(line: 375, column: 11, scope: !2267)
!2304 = !DILocation(line: 375, column: 21, scope: !2267)
!2305 = !DILocation(line: 376, column: 29, scope: !2267)
!2306 = !DILocation(line: 376, column: 20, scope: !2267)
!2307 = !DILocation(line: 376, column: 11, scope: !2267)
!2308 = !DILocation(line: 376, column: 18, scope: !2267)
!2309 = !DILocation(line: 377, column: 20, scope: !2267)
!2310 = !DILocation(line: 377, column: 5, scope: !2267)
!2311 = !DILocation(line: 377, column: 18, scope: !2267)
!2312 = !DILocation(line: 378, column: 27, scope: !2267)
!2313 = !DILocation(line: 378, column: 11, scope: !2267)
!2314 = !DILocation(line: 378, column: 16, scope: !2267)
!2315 = !DILocation(line: 379, column: 32, scope: !2267)
!2316 = !DILocation(line: 379, column: 11, scope: !2267)
!2317 = !DILocation(line: 379, column: 21, scope: !2267)
!2318 = !DILocation(line: 381, column: 28, scope: !2267)
!2319 = !DILocation(line: 381, column: 14, scope: !2267)
!2320 = !DILocation(line: 381, column: 23, scope: !2267)
!2321 = !DILocation(line: 382, column: 28, scope: !2267)
!2322 = !DILocation(line: 382, column: 8, scope: !2267)
!2323 = !DILocation(line: 382, column: 5, scope: !2267)
!2324 = !DILocation(line: 382, column: 23, scope: !2267)
!2325 = !DILocation(line: 0, scope: !2271)
!2326 = !DILocation(line: 383, column: 28, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 383, column: 5)
!2328 = !DILocation(line: 383, column: 23, scope: !2327)
!2329 = !DILocation(line: 383, column: 5, scope: !2271)
!2330 = !DILocation(line: 385, column: 15, scope: !2275)
!2331 = !DILocation(line: 385, column: 22, scope: !2275)
!2332 = !DILocation(line: 385, column: 9, scope: !2267)
!2333 = !DILocation(line: 0, scope: !2273)
!2334 = !DILocation(line: 387, column: 32, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 387, column: 9)
!2336 = !DILocation(line: 387, column: 27, scope: !2335)
!2337 = !DILocation(line: 387, column: 9, scope: !2273)
!2338 = !DILocation(line: 384, column: 34, scope: !2327)
!2339 = !DILocation(line: 384, column: 47, scope: !2327)
!2340 = !DILocation(line: 384, column: 12, scope: !2327)
!2341 = !DILocation(line: 384, column: 18, scope: !2327)
!2342 = !DILocation(line: 384, column: 9, scope: !2327)
!2343 = !DILocation(line: 384, column: 32, scope: !2327)
!2344 = !DILocation(line: 383, column: 37, scope: !2327)
!2345 = distinct !{!2345, !2329, !2346}
!2346 = !DILocation(line: 384, column: 47, scope: !2271)
!2347 = !DILocation(line: 390, column: 9, scope: !2274)
!2348 = !DILocation(line: 390, column: 30, scope: !2274)
!2349 = !DILocation(line: 391, column: 30, scope: !2274)
!2350 = !DILocation(line: 0, scope: !2277)
!2351 = !DILocation(line: 392, column: 29, scope: !2280)
!2352 = !DILocation(line: 392, column: 27, scope: !2280)
!2353 = !DILocation(line: 392, column: 9, scope: !2277)
!2354 = !DILocation(line: 394, column: 23, scope: !2279)
!2355 = !DILocation(line: 0, scope: !2279)
!2356 = !DILocation(line: 395, column: 13, scope: !2279)
!2357 = !DILocation(line: 395, column: 33, scope: !2279)
!2358 = !DILocation(line: 0, scope: !2282)
!2359 = !DILocation(line: 396, column: 13, scope: !2282)
!2360 = !DILocation(line: 397, column: 21, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 397, column: 21)
!2362 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 396, column: 13)
!2363 = !DILocation(line: 397, column: 34, scope: !2361)
!2364 = !DILocation(line: 397, column: 40, scope: !2361)
!2365 = !DILocation(line: 397, column: 21, scope: !2362)
!2366 = !DILocation(line: 396, column: 45, scope: !2362)
!2367 = !DILocation(line: 396, column: 31, scope: !2362)
!2368 = distinct !{!2368, !2359, !2369}
!2369 = !DILocation(line: 401, column: 17, scope: !2282)
!2370 = !DILocation(line: 399, column: 43, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 398, column: 17)
!2372 = !DILocation(line: 399, column: 41, scope: !2371)
!2373 = !DILocation(line: 400, column: 21, scope: !2371)
!2374 = !DILocation(line: 392, column: 53, scope: !2280)
!2375 = distinct !{!2375, !2353, !2376}
!2376 = !DILocation(line: 402, column: 9, scope: !2277)
!2377 = !DILocation(line: 388, column: 38, scope: !2335)
!2378 = !DILocation(line: 388, column: 51, scope: !2335)
!2379 = !DILocation(line: 388, column: 16, scope: !2335)
!2380 = !DILocation(line: 388, column: 13, scope: !2335)
!2381 = !DILocation(line: 388, column: 36, scope: !2335)
!2382 = !DILocation(line: 387, column: 41, scope: !2335)
!2383 = distinct !{!2383, !2337, !2384}
!2384 = !DILocation(line: 388, column: 51, scope: !2273)
!2385 = !DILocation(line: 404, column: 15, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 404, column: 9)
!2387 = !DILocation(line: 404, column: 22, scope: !2386)
!2388 = !DILocation(line: 404, column: 9, scope: !2267)
!2389 = !DILocation(line: 405, column: 29, scope: !2386)
!2390 = !DILocation(line: 405, column: 9, scope: !2386)
!2391 = !DILocation(line: 408, column: 25, scope: !2267)
!2392 = !DILocation(line: 408, column: 5, scope: !2267)
!2393 = !DILocation(line: 410, column: 12, scope: !2285)
!2394 = !DILocation(line: 410, column: 19, scope: !2285)
!2395 = !DILocation(line: 0, scope: !2284)
!2396 = !DILocation(line: 410, column: 9, scope: !2267)
!2397 = !DILocation(line: 413, column: 29, scope: !2287)
!2398 = !DILocation(line: 413, column: 35, scope: !2287)
!2399 = !DILocation(line: 0, scope: !2287)
!2400 = !DILocation(line: 414, column: 26, scope: !2287)
!2401 = !DILocation(line: 414, column: 39, scope: !2287)
!2402 = !DILocation(line: 417, column: 32, scope: !2287)
!2403 = !DILocation(line: 419, column: 55, scope: !2287)
!2404 = !DILocation(line: 419, column: 48, scope: !2287)
!2405 = !DILocation(line: 419, column: 59, scope: !2287)
!2406 = !DILocation(line: 419, column: 43, scope: !2287)
!2407 = !DILocation(line: 419, column: 22, scope: !2287)
!2408 = !DILocation(line: 419, column: 41, scope: !2287)
!2409 = !DILocation(line: 411, column: 44, scope: !2288)
!2410 = !DILocation(line: 411, column: 35, scope: !2288)
!2411 = !DILocation(line: 411, column: 9, scope: !2284)
!2412 = !DILocation(line: 413, column: 55, scope: !2287)
!2413 = !DILocation(line: 413, column: 48, scope: !2287)
!2414 = !DILocation(line: 415, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 415, column: 17)
!2416 = !DILocation(line: 415, column: 31, scope: !2415)
!2417 = !DILocation(line: 419, column: 13, scope: !2287)
!2418 = !DILocation(line: 411, column: 58, scope: !2288)
!2419 = distinct !{!2419, !2411, !2420, !2421}
!2420 = !DILocation(line: 420, column: 9, scope: !2284)
!2421 = !{!"llvm.loop.peeled.count", i32 1}
!2422 = !DILocation(line: 422, column: 5, scope: !2267)
!2423 = !DILocation(line: 422, column: 27, scope: !2267)
!2424 = !DILocation(line: 423, column: 5, scope: !2267)
!2425 = !DILocation(line: 423, column: 27, scope: !2267)
!2426 = !DILocation(line: 0, scope: !2292)
!2427 = !DILocation(line: 424, column: 23, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 424, column: 5)
!2429 = !DILocation(line: 424, column: 5, scope: !2292)
!2430 = !DILocation(line: 430, column: 36, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 429, column: 13)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 425, column: 5)
!2433 = !DILocation(line: 430, column: 49, scope: !2431)
!2434 = !DILocation(line: 430, column: 13, scope: !2431)
!2435 = !DILocation(line: 430, column: 34, scope: !2431)
!2436 = !DILocation(line: 424, column: 54, scope: !2428)
!2437 = distinct !{!2437, !2429, !2438}
!2438 = !DILocation(line: 433, column: 5, scope: !2292)
!2439 = !DILocation(line: 436, column: 5, scope: !2267)
!2440 = !DILocation(line: 432, column: 48, scope: !2431)
!2441 = !DILocation(line: 432, column: 38, scope: !2431)
!2442 = !DILocation(line: 432, column: 54, scope: !2431)
!2443 = !DILocation(line: 432, column: 69, scope: !2431)
!2444 = !DILocation(line: 432, column: 78, scope: !2431)
!2445 = !DILocation(line: 432, column: 74, scope: !2431)
!2446 = !DILocation(line: 432, column: 36, scope: !2431)
!2447 = !DILocation(line: 432, column: 13, scope: !2431)
!2448 = !DILocation(line: 432, column: 34, scope: !2431)
!2449 = !DILocation(line: 436, column: 27, scope: !2267)
!2450 = !DILocation(line: 435, column: 5, scope: !2267)
!2451 = !DILocation(line: 435, column: 27, scope: !2267)
!2452 = !DILocation(line: 444, column: 5, scope: !2267)
!2453 = !DILocation(line: 444, column: 27, scope: !2267)
!2454 = !DILocation(line: 443, column: 5, scope: !2267)
!2455 = !DILocation(line: 443, column: 28, scope: !2267)
!2456 = !DILocation(line: 441, column: 5, scope: !2267)
!2457 = !DILocation(line: 441, column: 28, scope: !2267)
!2458 = !DILocation(line: 440, column: 5, scope: !2267)
!2459 = !DILocation(line: 440, column: 27, scope: !2267)
!2460 = !DILocation(line: 439, column: 5, scope: !2267)
!2461 = !DILocation(line: 439, column: 27, scope: !2267)
!2462 = !DILocation(line: 445, column: 1, scope: !2267)
!2463 = distinct !DISubprogram(name: "x264_macroblock_thread_init", scope: !3, file: !3, line: 447, type: !1851, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2464)
!2464 = !{!2465}
!2465 = !DILocalVariable(name: "h", arg: 1, scope: !2463, file: !3, line: 447, type: !201)
!2466 = !DILocation(line: 0, scope: !2463)
!2467 = !DILocation(line: 449, column: 42, scope: !2463)
!2468 = !DILocation(line: 449, column: 11, scope: !2463)
!2469 = !DILocation(line: 449, column: 23, scope: !2463)
!2470 = !DILocation(line: 450, column: 46, scope: !2463)
!2471 = !DILocation(line: 450, column: 11, scope: !2463)
!2472 = !DILocation(line: 450, column: 27, scope: !2463)
!2473 = !DILocation(line: 451, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 451, column: 9)
!2475 = !DILocation(line: 451, column: 22, scope: !2474)
!2476 = !DILocation(line: 451, column: 38, scope: !2474)
!2477 = !DILocation(line: 451, column: 69, scope: !2474)
!2478 = !DILocation(line: 452, column: 30, scope: !2474)
!2479 = !DILocation(line: 452, column: 9, scope: !2474)
!2480 = !DILocation(line: 453, column: 11, scope: !2463)
!2481 = !DILocation(line: 453, column: 23, scope: !2463)
!2482 = !DILocation(line: 455, column: 57, scope: !2463)
!2483 = !DILocation(line: 453, column: 42, scope: !2463)
!2484 = !DILocation(line: 453, column: 25, scope: !2463)
!2485 = !DILocation(line: 453, column: 54, scope: !2463)
!2486 = !DILocation(line: 456, column: 45, scope: !2463)
!2487 = !DILocation(line: 456, column: 28, scope: !2463)
!2488 = !DILocation(line: 456, column: 60, scope: !2463)
!2489 = !DILocation(line: 456, column: 76, scope: !2463)
!2490 = !DILocation(line: 455, column: 11, scope: !2463)
!2491 = !DILocation(line: 455, column: 26, scope: !2463)
!2492 = !DILocation(line: 469, column: 33, scope: !2463)
!2493 = !DILocation(line: 469, column: 15, scope: !2463)
!2494 = !DILocation(line: 469, column: 25, scope: !2463)
!2495 = !DILocation(line: 470, column: 46, scope: !2463)
!2496 = !DILocation(line: 470, column: 5, scope: !2463)
!2497 = !DILocation(line: 470, column: 25, scope: !2463)
!2498 = !DILocation(line: 471, column: 63, scope: !2463)
!2499 = !DILocation(line: 471, column: 5, scope: !2463)
!2500 = !DILocation(line: 471, column: 25, scope: !2463)
!2501 = !DILocation(line: 472, column: 46, scope: !2463)
!2502 = !DILocation(line: 472, column: 15, scope: !2463)
!2503 = !DILocation(line: 472, column: 25, scope: !2463)
!2504 = !DILocation(line: 473, column: 46, scope: !2463)
!2505 = !DILocation(line: 473, column: 5, scope: !2463)
!2506 = !DILocation(line: 473, column: 25, scope: !2463)
!2507 = !DILocation(line: 474, column: 63, scope: !2463)
!2508 = !DILocation(line: 474, column: 5, scope: !2463)
!2509 = !DILocation(line: 474, column: 25, scope: !2463)
!2510 = !DILocation(line: 475, column: 1, scope: !2463)
!2511 = distinct !DISubprogram(name: "x264_prefetch_fenc", scope: !3, file: !3, line: 477, type: !2512, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !201, !677, !173, !173}
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2515 = !DILocalVariable(name: "h", arg: 1, scope: !2511, file: !3, line: 477, type: !201)
!2516 = !DILocalVariable(name: "fenc", arg: 2, scope: !2511, file: !3, line: 477, type: !677)
!2517 = !DILocalVariable(name: "i_mb_x", arg: 3, scope: !2511, file: !3, line: 477, type: !173)
!2518 = !DILocalVariable(name: "i_mb_y", arg: 4, scope: !2511, file: !3, line: 477, type: !173)
!2519 = !DILocalVariable(name: "stride_y", scope: !2511, file: !3, line: 479, type: !173)
!2520 = !DILocalVariable(name: "stride_uv", scope: !2511, file: !3, line: 480, type: !173)
!2521 = !DILocalVariable(name: "off_y", scope: !2511, file: !3, line: 481, type: !173)
!2522 = !DILocalVariable(name: "off_uv", scope: !2511, file: !3, line: 482, type: !173)
!2523 = !DILocation(line: 0, scope: !2511)
!2524 = !DILocation(line: 479, column: 27, scope: !2511)
!2525 = !DILocation(line: 479, column: 21, scope: !2511)
!2526 = !DILocation(line: 480, column: 21, scope: !2511)
!2527 = !DILocation(line: 481, column: 39, scope: !2511)
!2528 = !DILocation(line: 481, column: 30, scope: !2511)
!2529 = !DILocation(line: 481, column: 20, scope: !2511)
!2530 = !DILocation(line: 482, column: 39, scope: !2511)
!2531 = !DILocation(line: 482, column: 30, scope: !2511)
!2532 = !DILocation(line: 482, column: 20, scope: !2511)
!2533 = !DILocation(line: 483, column: 11, scope: !2511)
!2534 = !DILocation(line: 483, column: 32, scope: !2511)
!2535 = !DILocation(line: 483, column: 26, scope: !2511)
!2536 = !DILocation(line: 483, column: 40, scope: !2511)
!2537 = !DILocation(line: 484, column: 47, scope: !2511)
!2538 = !DILocation(line: 484, column: 39, scope: !2511)
!2539 = !DILocation(line: 484, column: 26, scope: !2511)
!2540 = !DILocation(line: 484, column: 51, scope: !2511)
!2541 = !DILocation(line: 483, column: 5, scope: !2511)
!2542 = !DILocation(line: 485, column: 1, scope: !2511)
!2543 = distinct !DISubprogram(name: "x264_macroblock_cache_load", scope: !3, file: !3, line: 631, type: !2544, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !201, !173, !173}
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2563, !2566, !2568, !2570, !2573, !2574, !2576, !2579, !2580, !2581, !2584, !2585, !2588, !2591, !2594}
!2547 = !DILocalVariable(name: "h", arg: 1, scope: !2543, file: !3, line: 631, type: !201)
!2548 = !DILocalVariable(name: "mb_x", arg: 2, scope: !2543, file: !3, line: 631, type: !173)
!2549 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2543, file: !3, line: 631, type: !173)
!2550 = !DILocalVariable(name: "left", scope: !2543, file: !3, line: 635, type: !173)
!2551 = !DILocalVariable(name: "top", scope: !2543, file: !3, line: 636, type: !173)
!2552 = !DILocalVariable(name: "top_y", scope: !2543, file: !3, line: 637, type: !173)
!2553 = !DILocalVariable(name: "top_8x8", scope: !2543, file: !3, line: 638, type: !173)
!2554 = !DILocalVariable(name: "top_4x4", scope: !2543, file: !3, line: 639, type: !173)
!2555 = !DILocalVariable(name: "i4x4", scope: !2543, file: !3, line: 643, type: !908)
!2556 = !DILocalVariable(name: "nnz", scope: !2543, file: !3, line: 644, type: !911)
!2557 = !DILocalVariable(name: "cbp", scope: !2543, file: !3, line: 645, type: !906)
!2558 = !DILocalVariable(name: "l", scope: !2559, file: !3, line: 697, type: !173)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 697, column: 13)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 696, column: 13)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 674, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 673, column: 9)
!2563 = !DILocalVariable(name: "offset", scope: !2564, file: !3, line: 758, type: !173)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 757, column: 5)
!2565 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 756, column: 9)
!2566 = !DILocalVariable(name: "i", scope: !2567, file: !3, line: 759, type: !173)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 759, column: 9)
!2568 = !DILocalVariable(name: "i", scope: !2569, file: !3, line: 761, type: !173)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 761, column: 9)
!2570 = !DILocalVariable(name: "s8x8", scope: !2571, file: !3, line: 770, type: !173)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 769, column: 5)
!2572 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 768, column: 9)
!2573 = !DILocalVariable(name: "s4x4", scope: !2571, file: !3, line: 771, type: !173)
!2574 = !DILocalVariable(name: "l", scope: !2575, file: !3, line: 773, type: !173)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 773, column: 9)
!2576 = !DILocalVariable(name: "mv", scope: !2577, file: !3, line: 775, type: !741)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 774, column: 9)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 773, column: 9)
!2579 = !DILocalVariable(name: "ref", scope: !2577, file: !3, line: 776, type: !734)
!2580 = !DILocalVariable(name: "i8", scope: !2577, file: !3, line: 778, type: !173)
!2581 = !DILocalVariable(name: "ir", scope: !2582, file: !3, line: 817, type: !172)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 816, column: 13)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 815, column: 17)
!2584 = !DILocalVariable(name: "iv", scope: !2582, file: !3, line: 818, type: !172)
!2585 = !DILocalVariable(name: "i", scope: !2586, file: !3, line: 831, type: !173)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 831, column: 17)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 830, column: 13)
!2588 = !DILocalVariable(name: "mvd", scope: !2589, file: !3, line: 840, type: !918)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 839, column: 13)
!2590 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 838, column: 17)
!2591 = !DILocalVariable(name: "i", scope: !2592, file: !3, line: 854, type: !173)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 854, column: 21)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 846, column: 21)
!2594 = !DILocalVariable(name: "skipbp", scope: !2595, file: !3, line: 866, type: !121)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 865, column: 13)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 864, column: 17)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 861, column: 9)
!2598 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 860, column: 13)
!2599 = !DILocation(line: 0, scope: !2543)
!2600 = !DILocalVariable(name: "h", arg: 1, scope: !2601, file: !3, line: 539, type: !201)
!2601 = distinct !DISubprogram(name: "x264_macroblock_cache_load_neighbours", scope: !3, file: !3, line: 539, type: !2544, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2602 = !{!2600, !2603, !2604, !2605}
!2603 = !DILocalVariable(name: "mb_x", arg: 2, scope: !2601, file: !3, line: 539, type: !173)
!2604 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2601, file: !3, line: 539, type: !173)
!2605 = !DILocalVariable(name: "top", scope: !2601, file: !3, line: 541, type: !173)
!2606 = !DILocation(line: 0, scope: !2601, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 633, column: 5, scope: !2543)
!2608 = !DILocation(line: 541, column: 35, scope: !2601, inlinedAt: !2607)
!2609 = !DILocation(line: 541, column: 26, scope: !2601, inlinedAt: !2607)
!2610 = !DILocation(line: 541, column: 21, scope: !2601, inlinedAt: !2607)
!2611 = !DILocation(line: 541, column: 58, scope: !2601, inlinedAt: !2607)
!2612 = !DILocation(line: 541, column: 50, scope: !2601, inlinedAt: !2607)
!2613 = !DILocation(line: 541, column: 70, scope: !2601, inlinedAt: !2607)
!2614 = !DILocation(line: 543, column: 11, scope: !2601, inlinedAt: !2607)
!2615 = !DILocation(line: 543, column: 18, scope: !2601, inlinedAt: !2607)
!2616 = !DILocation(line: 544, column: 11, scope: !2601, inlinedAt: !2607)
!2617 = !DILocation(line: 544, column: 18, scope: !2601, inlinedAt: !2607)
!2618 = !DILocation(line: 545, column: 26, scope: !2601, inlinedAt: !2607)
!2619 = !DILocation(line: 545, column: 46, scope: !2601, inlinedAt: !2607)
!2620 = !DILocation(line: 545, column: 11, scope: !2601, inlinedAt: !2607)
!2621 = !DILocation(line: 545, column: 19, scope: !2601, inlinedAt: !2607)
!2622 = !DILocation(line: 546, column: 37, scope: !2601, inlinedAt: !2607)
!2623 = !DILocation(line: 546, column: 29, scope: !2601, inlinedAt: !2607)
!2624 = !DILocation(line: 546, column: 49, scope: !2601, inlinedAt: !2607)
!2625 = !DILocation(line: 546, column: 22, scope: !2601, inlinedAt: !2607)
!2626 = !DILocation(line: 546, column: 11, scope: !2601, inlinedAt: !2607)
!2627 = !DILocation(line: 546, column: 19, scope: !2601, inlinedAt: !2607)
!2628 = !DILocation(line: 547, column: 37, scope: !2601, inlinedAt: !2607)
!2629 = !DILocation(line: 547, column: 29, scope: !2601, inlinedAt: !2607)
!2630 = !DILocation(line: 547, column: 49, scope: !2601, inlinedAt: !2607)
!2631 = !DILocation(line: 547, column: 22, scope: !2601, inlinedAt: !2607)
!2632 = !DILocation(line: 547, column: 11, scope: !2601, inlinedAt: !2607)
!2633 = !DILocation(line: 547, column: 19, scope: !2601, inlinedAt: !2607)
!2634 = !DILocation(line: 548, column: 11, scope: !2601, inlinedAt: !2607)
!2635 = !DILocation(line: 548, column: 23, scope: !2601, inlinedAt: !2607)
!2636 = !DILocation(line: 549, column: 11, scope: !2601, inlinedAt: !2607)
!2637 = !DILocation(line: 549, column: 29, scope: !2601, inlinedAt: !2607)
!2638 = !DILocation(line: 550, column: 11, scope: !2601, inlinedAt: !2607)
!2639 = !DILocation(line: 550, column: 29, scope: !2601, inlinedAt: !2607)
!2640 = !DILocation(line: 551, column: 11, scope: !2601, inlinedAt: !2607)
!2641 = !DILocation(line: 552, column: 11, scope: !2601, inlinedAt: !2607)
!2642 = !DILocation(line: 553, column: 11, scope: !2601, inlinedAt: !2607)
!2643 = !DILocation(line: 554, column: 11, scope: !2601, inlinedAt: !2607)
!2644 = !DILocation(line: 555, column: 11, scope: !2601, inlinedAt: !2607)
!2645 = !DILocation(line: 557, column: 11, scope: !2601, inlinedAt: !2607)
!2646 = !DILocation(line: 558, column: 11, scope: !2601, inlinedAt: !2607)
!2647 = !DILocation(line: 560, column: 14, scope: !2648, inlinedAt: !2607)
!2648 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 560, column: 9)
!2649 = !DILocation(line: 555, column: 25, scope: !2601, inlinedAt: !2607)
!2650 = !DILocation(line: 552, column: 24, scope: !2601, inlinedAt: !2607)
!2651 = !DILocation(line: 560, column: 9, scope: !2601, inlinedAt: !2607)
!2652 = !DILocation(line: 556, column: 11, scope: !2601, inlinedAt: !2607)
!2653 = !DILocation(line: 562, column: 33, scope: !2654, inlinedAt: !2607)
!2654 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 561, column: 5)
!2655 = !DILocation(line: 563, column: 44, scope: !2654, inlinedAt: !2607)
!2656 = !DILocation(line: 563, column: 28, scope: !2654, inlinedAt: !2607)
!2657 = !DILocation(line: 564, column: 38, scope: !2654, inlinedAt: !2607)
!2658 = !DILocation(line: 564, column: 32, scope: !2654, inlinedAt: !2607)
!2659 = !DILocation(line: 564, column: 30, scope: !2654, inlinedAt: !2607)
!2660 = !DILocation(line: 565, column: 35, scope: !2661, inlinedAt: !2607)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 565, column: 13)
!2662 = !DILocation(line: 565, column: 27, scope: !2661, inlinedAt: !2607)
!2663 = !DILocation(line: 565, column: 13, scope: !2654, inlinedAt: !2607)
!2664 = !DILocation(line: 567, column: 31, scope: !2665, inlinedAt: !2607)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 566, column: 9)
!2666 = !DILocation(line: 569, column: 27, scope: !2667, inlinedAt: !2607)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 569, column: 17)
!2668 = !DILocation(line: 569, column: 18, scope: !2667, inlinedAt: !2607)
!2669 = !DILocation(line: 569, column: 47, scope: !2667, inlinedAt: !2607)
!2670 = !DILocation(line: 570, column: 41, scope: !2667, inlinedAt: !2607)
!2671 = !DILocation(line: 570, column: 17, scope: !2667, inlinedAt: !2607)
!2672 = !DILocation(line: 575, column: 13, scope: !2673, inlinedAt: !2607)
!2673 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 575, column: 9)
!2674 = !DILocation(line: 575, column: 33, scope: !2673, inlinedAt: !2607)
!2675 = !DILocation(line: 575, column: 65, scope: !2673, inlinedAt: !2607)
!2676 = !DILocation(line: 575, column: 56, scope: !2673, inlinedAt: !2607)
!2677 = !DILocation(line: 575, column: 9, scope: !2601, inlinedAt: !2607)
!2678 = !DILocation(line: 577, column: 17, scope: !2679, inlinedAt: !2607)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 577, column: 13)
!2680 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 576, column: 5)
!2681 = !DILocation(line: 577, column: 13, scope: !2680, inlinedAt: !2607)
!2682 = !DILocation(line: 579, column: 37, scope: !2683, inlinedAt: !2607)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 578, column: 9)
!2684 = !DILocation(line: 580, column: 31, scope: !2683, inlinedAt: !2607)
!2685 = !DILocation(line: 581, column: 41, scope: !2683, inlinedAt: !2607)
!2686 = !DILocation(line: 581, column: 35, scope: !2683, inlinedAt: !2607)
!2687 = !DILocation(line: 581, column: 33, scope: !2683, inlinedAt: !2607)
!2688 = !DILocation(line: 582, column: 30, scope: !2689, inlinedAt: !2607)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 582, column: 17)
!2690 = !DILocation(line: 582, column: 21, scope: !2689, inlinedAt: !2607)
!2691 = !DILocation(line: 582, column: 17, scope: !2683, inlinedAt: !2607)
!2692 = !DILocation(line: 584, column: 35, scope: !2693, inlinedAt: !2607)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 583, column: 13)
!2694 = !DILocation(line: 586, column: 31, scope: !2695, inlinedAt: !2607)
!2695 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 586, column: 21)
!2696 = !DILocation(line: 586, column: 22, scope: !2695, inlinedAt: !2607)
!2697 = !DILocation(line: 586, column: 51, scope: !2695, inlinedAt: !2607)
!2698 = !DILocation(line: 587, column: 45, scope: !2695, inlinedAt: !2607)
!2699 = !DILocation(line: 587, column: 21, scope: !2695, inlinedAt: !2607)
!2700 = !DILocation(line: 592, column: 17, scope: !2693, inlinedAt: !2607)
!2701 = !DILocation(line: 593, column: 17, scope: !2693, inlinedAt: !2607)
!2702 = !DILocation(line: 594, column: 17, scope: !2693, inlinedAt: !2607)
!2703 = !DILocation(line: 596, column: 17, scope: !2693, inlinedAt: !2607)
!2704 = !DILocation(line: 597, column: 17, scope: !2693, inlinedAt: !2607)
!2705 = !DILocation(line: 598, column: 13, scope: !2693, inlinedAt: !2607)
!2706 = !DILocation(line: 601, column: 22, scope: !2707, inlinedAt: !2607)
!2707 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 601, column: 13)
!2708 = !DILocation(line: 601, column: 29, scope: !2707, inlinedAt: !2607)
!2709 = !DILocation(line: 603, column: 37, scope: !2710, inlinedAt: !2607)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 602, column: 9)
!2711 = !DILocation(line: 604, column: 35, scope: !2710, inlinedAt: !2607)
!2712 = !DILocation(line: 605, column: 39, scope: !2710, inlinedAt: !2607)
!2713 = !DILocation(line: 605, column: 37, scope: !2710, inlinedAt: !2607)
!2714 = !DILocation(line: 606, column: 25, scope: !2715, inlinedAt: !2607)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 606, column: 17)
!2716 = !DILocation(line: 606, column: 17, scope: !2710, inlinedAt: !2607)
!2717 = !DILocation(line: 608, column: 35, scope: !2718, inlinedAt: !2607)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 607, column: 13)
!2719 = !DILocation(line: 610, column: 31, scope: !2720, inlinedAt: !2607)
!2720 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 610, column: 21)
!2721 = !DILocation(line: 610, column: 22, scope: !2720, inlinedAt: !2607)
!2722 = !DILocation(line: 610, column: 51, scope: !2720, inlinedAt: !2607)
!2723 = !DILocation(line: 611, column: 45, scope: !2720, inlinedAt: !2607)
!2724 = !DILocation(line: 611, column: 21, scope: !2720, inlinedAt: !2607)
!2725 = !DILocation(line: 615, column: 23, scope: !2726, inlinedAt: !2607)
!2726 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 615, column: 13)
!2727 = !DILocation(line: 615, column: 28, scope: !2726, inlinedAt: !2607)
!2728 = !DILocation(line: 615, column: 39, scope: !2726, inlinedAt: !2607)
!2729 = !DILocation(line: 615, column: 18, scope: !2726, inlinedAt: !2607)
!2730 = !DILocation(line: 615, column: 43, scope: !2726, inlinedAt: !2607)
!2731 = !DILocation(line: 615, column: 50, scope: !2726, inlinedAt: !2607)
!2732 = !DILocation(line: 617, column: 37, scope: !2733, inlinedAt: !2607)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 616, column: 9)
!2734 = !DILocation(line: 618, column: 36, scope: !2733, inlinedAt: !2607)
!2735 = !DILocation(line: 619, column: 46, scope: !2733, inlinedAt: !2607)
!2736 = !DILocation(line: 619, column: 40, scope: !2733, inlinedAt: !2607)
!2737 = !DILocation(line: 619, column: 38, scope: !2733, inlinedAt: !2607)
!2738 = !DILocation(line: 620, column: 34, scope: !2739, inlinedAt: !2607)
!2739 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 620, column: 17)
!2740 = !DILocation(line: 620, column: 25, scope: !2739, inlinedAt: !2607)
!2741 = !DILocation(line: 620, column: 17, scope: !2733, inlinedAt: !2607)
!2742 = !DILocation(line: 622, column: 35, scope: !2743, inlinedAt: !2607)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 621, column: 13)
!2744 = !DILocation(line: 624, column: 31, scope: !2745, inlinedAt: !2607)
!2745 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 624, column: 21)
!2746 = !DILocation(line: 624, column: 22, scope: !2745, inlinedAt: !2607)
!2747 = !DILocation(line: 624, column: 51, scope: !2745, inlinedAt: !2607)
!2748 = !DILocation(line: 625, column: 45, scope: !2745, inlinedAt: !2607)
!2749 = !DILocation(line: 625, column: 21, scope: !2745, inlinedAt: !2607)
!2750 = !DILocation(line: 648, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 648, column: 9)
!2752 = !DILocation(line: 636, column: 22, scope: !2543)
!2753 = !DILocation(line: 638, column: 21, scope: !2543)
!2754 = !DILocation(line: 638, column: 27, scope: !2543)
!2755 = !DILocation(line: 638, column: 31, scope: !2543)
!2756 = !DILocation(line: 638, column: 54, scope: !2543)
!2757 = !DILocation(line: 638, column: 51, scope: !2543)
!2758 = !DILocation(line: 639, column: 21, scope: !2543)
!2759 = !DILocation(line: 639, column: 27, scope: !2543)
!2760 = !DILocation(line: 639, column: 31, scope: !2543)
!2761 = !DILocation(line: 639, column: 54, scope: !2543)
!2762 = !DILocation(line: 639, column: 51, scope: !2543)
!2763 = !DILocation(line: 643, column: 31, scope: !2543)
!2764 = !DILocation(line: 644, column: 32, scope: !2543)
!2765 = !DILocation(line: 645, column: 26, scope: !2543)
!2766 = !DILocation(line: 648, column: 27, scope: !2751)
!2767 = !DILocation(line: 648, column: 9, scope: !2543)
!2768 = !DILocation(line: 650, column: 33, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 649, column: 5)
!2770 = !DILocation(line: 650, column: 21, scope: !2769)
!2771 = !DILocation(line: 650, column: 31, scope: !2769)
!2772 = !DILocation(line: 652, column: 9, scope: !2769)
!2773 = !DILocation(line: 655, column: 9, scope: !2769)
!2774 = !DILocation(line: 657, column: 68, scope: !2769)
!2775 = !DILocation(line: 657, column: 89, scope: !2769)
!2776 = !DILocation(line: 657, column: 66, scope: !2769)
!2777 = !DILocation(line: 658, column: 68, scope: !2769)
!2778 = !DILocation(line: 658, column: 89, scope: !2769)
!2779 = !DILocation(line: 659, column: 5, scope: !2769)
!2780 = !DILocation(line: 662, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 661, column: 5)
!2782 = !DILocation(line: 662, column: 31, scope: !2781)
!2783 = !DILocation(line: 665, column: 9, scope: !2781)
!2784 = !DILocation(line: 665, column: 67, scope: !2781)
!2785 = !DILocation(line: 668, column: 9, scope: !2781)
!2786 = !DILocation(line: 668, column: 66, scope: !2781)
!2787 = !DILocation(line: 669, column: 66, scope: !2781)
!2788 = !DILocation(line: 0, scope: !2751)
!2789 = !DILocation(line: 673, column: 27, scope: !2562)
!2790 = !DILocation(line: 673, column: 9, scope: !2543)
!2791 = !DILocation(line: 675, column: 34, scope: !2561)
!2792 = !DILocation(line: 675, column: 21, scope: !2561)
!2793 = !DILocation(line: 675, column: 32, scope: !2561)
!2794 = !DILocation(line: 678, column: 62, scope: !2561)
!2795 = !DILocation(line: 678, column: 9, scope: !2561)
!2796 = !DILocation(line: 678, column: 60, scope: !2561)
!2797 = !DILocation(line: 679, column: 62, scope: !2561)
!2798 = !DILocation(line: 679, column: 9, scope: !2561)
!2799 = !DILocation(line: 679, column: 60, scope: !2561)
!2800 = !DILocation(line: 680, column: 62, scope: !2561)
!2801 = !DILocation(line: 680, column: 9, scope: !2561)
!2802 = !DILocation(line: 680, column: 60, scope: !2561)
!2803 = !DILocation(line: 681, column: 62, scope: !2561)
!2804 = !DILocation(line: 681, column: 9, scope: !2561)
!2805 = !DILocation(line: 681, column: 60, scope: !2561)
!2806 = !DILocation(line: 684, column: 58, scope: !2561)
!2807 = !DILocation(line: 684, column: 9, scope: !2561)
!2808 = !DILocation(line: 684, column: 56, scope: !2561)
!2809 = !DILocation(line: 685, column: 58, scope: !2561)
!2810 = !DILocation(line: 685, column: 9, scope: !2561)
!2811 = !DILocation(line: 685, column: 56, scope: !2561)
!2812 = !DILocation(line: 686, column: 58, scope: !2561)
!2813 = !DILocation(line: 686, column: 9, scope: !2561)
!2814 = !DILocation(line: 686, column: 56, scope: !2561)
!2815 = !DILocation(line: 687, column: 58, scope: !2561)
!2816 = !DILocation(line: 687, column: 9, scope: !2561)
!2817 = !DILocation(line: 687, column: 56, scope: !2561)
!2818 = !DILocation(line: 689, column: 60, scope: !2561)
!2819 = !DILocation(line: 689, column: 9, scope: !2561)
!2820 = !DILocation(line: 689, column: 58, scope: !2561)
!2821 = !DILocation(line: 690, column: 60, scope: !2561)
!2822 = !DILocation(line: 690, column: 9, scope: !2561)
!2823 = !DILocation(line: 690, column: 58, scope: !2561)
!2824 = !DILocation(line: 692, column: 62, scope: !2561)
!2825 = !DILocation(line: 692, column: 9, scope: !2561)
!2826 = !DILocation(line: 692, column: 60, scope: !2561)
!2827 = !DILocation(line: 693, column: 62, scope: !2561)
!2828 = !DILocation(line: 693, column: 9, scope: !2561)
!2829 = !DILocation(line: 693, column: 60, scope: !2561)
!2830 = !DILocation(line: 696, column: 19, scope: !2560)
!2831 = !DILocation(line: 696, column: 26, scope: !2560)
!2832 = !DILocation(line: 696, column: 13, scope: !2561)
!2833 = !DILocation(line: 0, scope: !2559)
!2834 = !DILocation(line: 699, column: 17, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 698, column: 13)
!2836 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 697, column: 13)
!2837 = !DILocation(line: 702, column: 17, scope: !2835)
!2838 = !DILocation(line: 703, column: 17, scope: !2835)
!2839 = !DILocation(line: 704, column: 17, scope: !2835)
!2840 = !DILocation(line: 697, column: 13, scope: !2559)
!2841 = distinct !{!2841, !2840, !2842}
!2842 = !DILocation(line: 705, column: 13, scope: !2559)
!2843 = !DILocation(line: 727, column: 12, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 727, column: 9)
!2845 = !DILocation(line: 727, column: 17, scope: !2844)
!2846 = !DILocation(line: 727, column: 9, scope: !2844)
!2847 = !DILocation(line: 727, column: 9, scope: !2543)
!2848 = !DILocation(line: 709, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 708, column: 5)
!2850 = !DILocation(line: 709, column: 32, scope: !2849)
!2851 = !DILocation(line: 714, column: 9, scope: !2849)
!2852 = !DILocation(line: 714, column: 60, scope: !2849)
!2853 = !DILocation(line: 713, column: 9, scope: !2849)
!2854 = !DILocation(line: 713, column: 60, scope: !2849)
!2855 = !DILocation(line: 712, column: 9, scope: !2849)
!2856 = !DILocation(line: 712, column: 60, scope: !2849)
!2857 = !DILocation(line: 711, column: 9, scope: !2849)
!2858 = !DILocation(line: 711, column: 60, scope: !2849)
!2859 = !DILocation(line: 724, column: 9, scope: !2849)
!2860 = !DILocation(line: 724, column: 60, scope: !2849)
!2861 = !DILocation(line: 723, column: 9, scope: !2849)
!2862 = !DILocation(line: 723, column: 60, scope: !2849)
!2863 = !DILocation(line: 722, column: 9, scope: !2849)
!2864 = !DILocation(line: 722, column: 58, scope: !2849)
!2865 = !DILocation(line: 721, column: 9, scope: !2849)
!2866 = !DILocation(line: 721, column: 58, scope: !2849)
!2867 = !DILocation(line: 720, column: 9, scope: !2849)
!2868 = !DILocation(line: 720, column: 56, scope: !2849)
!2869 = !DILocation(line: 719, column: 9, scope: !2849)
!2870 = !DILocation(line: 719, column: 56, scope: !2849)
!2871 = !DILocation(line: 718, column: 9, scope: !2849)
!2872 = !DILocation(line: 718, column: 56, scope: !2849)
!2873 = !DILocation(line: 717, column: 9, scope: !2849)
!2874 = !DILocation(line: 717, column: 56, scope: !2849)
!2875 = !DILocation(line: 730, column: 54, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 728, column: 5)
!2877 = !DILocation(line: 730, column: 48, scope: !2876)
!2878 = !DILocation(line: 730, column: 45, scope: !2876)
!2879 = !DILocation(line: 0, scope: !2876)
!2880 = !DILocation(line: 731, column: 44, scope: !2876)
!2881 = !DILocation(line: 731, column: 53, scope: !2876)
!2882 = !DILocation(line: 731, column: 47, scope: !2876)
!2883 = !DILocation(line: 731, column: 11, scope: !2876)
!2884 = !DILocation(line: 729, column: 21, scope: !2876)
!2885 = !DILocation(line: 729, column: 48, scope: !2876)
!2886 = !DILocation(line: 732, column: 5, scope: !2876)
!2887 = !DILocation(line: 734, column: 15, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 734, column: 9)
!2889 = !DILocation(line: 734, column: 9, scope: !2888)
!2890 = !DILocation(line: 734, column: 9, scope: !2543)
!2891 = !DILocation(line: 736, column: 34, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 735, column: 5)
!2893 = !DILocation(line: 736, column: 41, scope: !2892)
!2894 = !DILocation(line: 736, column: 19, scope: !2892)
!2895 = !DILocation(line: 736, column: 29, scope: !2892)
!2896 = !DILocation(line: 737, column: 34, scope: !2892)
!2897 = !DILocation(line: 737, column: 41, scope: !2892)
!2898 = !DILocation(line: 737, column: 9, scope: !2892)
!2899 = !DILocation(line: 737, column: 29, scope: !2892)
!2900 = !DILocation(line: 740, column: 13, scope: !2892)
!2901 = !DILocation(line: 740, column: 11, scope: !2892)
!2902 = !DILocation(line: 738, column: 21, scope: !2892)
!2903 = !DILocation(line: 738, column: 44, scope: !2892)
!2904 = !DILocation(line: 741, column: 5, scope: !2892)
!2905 = !DILocation(line: 743, column: 10, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 743, column: 9)
!2907 = !DILocation(line: 743, column: 9, scope: !2543)
!2908 = !DILocation(line: 745, column: 33, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 744, column: 5)
!2910 = !DILocation(line: 745, column: 23, scope: !2909)
!2911 = !DILocation(line: 745, column: 44, scope: !2909)
!2912 = !DILocation(line: 745, column: 83, scope: !2909)
!2913 = !DILocalVariable(name: "dst", arg: 1, scope: !2914, file: !3, line: 487, type: !394)
!2914 = distinct !DISubprogram(name: "copy_column8", scope: !3, file: !3, line: 487, type: !1141, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2915 = !{!2913, !2916, !2917}
!2916 = !DILocalVariable(name: "src", arg: 2, scope: !2914, file: !3, line: 487, type: !394)
!2917 = !DILocalVariable(name: "i", scope: !2918, file: !3, line: 490, type: !173)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 490, column: 5)
!2919 = !DILocation(line: 0, scope: !2914, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 745, column: 9, scope: !2909)
!2921 = !DILocation(line: 0, scope: !2918, inlinedAt: !2920)
!2922 = !DILocation(line: 491, column: 30, scope: !2923, inlinedAt: !2920)
!2923 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 490, column: 5)
!2924 = !DILocation(line: 491, column: 9, scope: !2923, inlinedAt: !2920)
!2925 = !DILocation(line: 491, column: 28, scope: !2923, inlinedAt: !2920)
!2926 = !DILocation(line: 746, column: 23, scope: !2909)
!2927 = !DILocation(line: 746, column: 44, scope: !2909)
!2928 = !DILocation(line: 746, column: 83, scope: !2909)
!2929 = !DILocation(line: 0, scope: !2914, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 746, column: 9, scope: !2909)
!2931 = !DILocation(line: 0, scope: !2918, inlinedAt: !2930)
!2932 = !DILocation(line: 491, column: 30, scope: !2923, inlinedAt: !2930)
!2933 = !DILocation(line: 491, column: 9, scope: !2923, inlinedAt: !2930)
!2934 = !DILocation(line: 491, column: 28, scope: !2923, inlinedAt: !2930)
!2935 = !DILocation(line: 747, column: 23, scope: !2909)
!2936 = !DILocation(line: 747, column: 44, scope: !2909)
!2937 = !DILocation(line: 747, column: 83, scope: !2909)
!2938 = !DILocation(line: 0, scope: !2914, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 747, column: 9, scope: !2909)
!2940 = !DILocation(line: 0, scope: !2918, inlinedAt: !2939)
!2941 = !DILocation(line: 491, column: 30, scope: !2923, inlinedAt: !2939)
!2942 = !DILocation(line: 491, column: 9, scope: !2923, inlinedAt: !2939)
!2943 = !DILocation(line: 491, column: 28, scope: !2923, inlinedAt: !2939)
!2944 = !DILocation(line: 748, column: 23, scope: !2909)
!2945 = !DILocation(line: 748, column: 44, scope: !2909)
!2946 = !DILocation(line: 748, column: 83, scope: !2909)
!2947 = !DILocation(line: 0, scope: !2914, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 748, column: 9, scope: !2909)
!2949 = !DILocation(line: 0, scope: !2918, inlinedAt: !2948)
!2950 = !DILocation(line: 491, column: 30, scope: !2923, inlinedAt: !2948)
!2951 = !DILocation(line: 491, column: 9, scope: !2923, inlinedAt: !2948)
!2952 = !DILocation(line: 491, column: 28, scope: !2923, inlinedAt: !2948)
!2953 = !DILocation(line: 749, column: 5, scope: !2909)
!2954 = !DILocation(line: 752, column: 5, scope: !2543)
!2955 = !DILocation(line: 753, column: 5, scope: !2543)
!2956 = !DILocation(line: 754, column: 5, scope: !2543)
!2957 = !DILocation(line: 756, column: 12, scope: !2565)
!2958 = !DILocation(line: 756, column: 18, scope: !2565)
!2959 = !DILocation(line: 756, column: 9, scope: !2565)
!2960 = !DILocation(line: 756, column: 9, scope: !2543)
!2961 = !DILocation(line: 758, column: 51, scope: !2564)
!2962 = !DILocation(line: 758, column: 42, scope: !2564)
!2963 = !DILocation(line: 758, column: 40, scope: !2564)
!2964 = !DILocation(line: 758, column: 33, scope: !2564)
!2965 = !DILocation(line: 758, column: 25, scope: !2564)
!2966 = !DILocation(line: 0, scope: !2564)
!2967 = !DILocation(line: 0, scope: !2567)
!2968 = !DILocation(line: 759, column: 27, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 759, column: 9)
!2970 = !DILocation(line: 759, column: 9, scope: !2567)
!2971 = !DILocation(line: 760, column: 43, scope: !2969)
!2972 = !DILocation(line: 760, column: 56, scope: !2969)
!2973 = !DILocation(line: 760, column: 13, scope: !2969)
!2974 = !DILocation(line: 760, column: 40, scope: !2969)
!2975 = !DILocation(line: 759, column: 51, scope: !2969)
!2976 = distinct !{!2976, !2977}
!2977 = !{!"llvm.loop.unroll.disable"}
!2978 = !DILocation(line: 0, scope: !2569)
!2979 = !DILocation(line: 761, column: 27, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 761, column: 9)
!2981 = !DILocation(line: 761, column: 9, scope: !2569)
!2982 = distinct !{!2982, !2970, !2983}
!2983 = !DILocation(line: 760, column: 71, scope: !2567)
!2984 = !DILocation(line: 762, column: 43, scope: !2980)
!2985 = !DILocation(line: 762, column: 56, scope: !2980)
!2986 = !DILocation(line: 762, column: 13, scope: !2980)
!2987 = !DILocation(line: 762, column: 40, scope: !2980)
!2988 = !DILocation(line: 761, column: 51, scope: !2980)
!2989 = distinct !{!2989, !2981, !2990}
!2990 = !DILocation(line: 762, column: 71, scope: !2569)
!2991 = distinct !{!2991, !2977}
!2992 = !DILocation(line: 765, column: 31, scope: !2543)
!2993 = !DILocation(line: 0, scope: !2511, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 765, column: 5, scope: !2543)
!2995 = !DILocation(line: 479, column: 27, scope: !2511, inlinedAt: !2994)
!2996 = !DILocation(line: 479, column: 21, scope: !2511, inlinedAt: !2994)
!2997 = !DILocation(line: 480, column: 21, scope: !2511, inlinedAt: !2994)
!2998 = !DILocation(line: 481, column: 39, scope: !2511, inlinedAt: !2994)
!2999 = !DILocation(line: 481, column: 30, scope: !2511, inlinedAt: !2994)
!3000 = !DILocation(line: 481, column: 20, scope: !2511, inlinedAt: !2994)
!3001 = !DILocation(line: 482, column: 39, scope: !2511, inlinedAt: !2994)
!3002 = !DILocation(line: 482, column: 30, scope: !2511, inlinedAt: !2994)
!3003 = !DILocation(line: 482, column: 20, scope: !2511, inlinedAt: !2994)
!3004 = !DILocation(line: 483, column: 11, scope: !2511, inlinedAt: !2994)
!3005 = !DILocation(line: 483, column: 32, scope: !2511, inlinedAt: !2994)
!3006 = !DILocation(line: 483, column: 26, scope: !2511, inlinedAt: !2994)
!3007 = !DILocation(line: 483, column: 40, scope: !2511, inlinedAt: !2994)
!3008 = !DILocation(line: 484, column: 47, scope: !2511, inlinedAt: !2994)
!3009 = !DILocation(line: 484, column: 39, scope: !2511, inlinedAt: !2994)
!3010 = !DILocation(line: 484, column: 26, scope: !2511, inlinedAt: !2994)
!3011 = !DILocation(line: 484, column: 51, scope: !2511, inlinedAt: !2994)
!3012 = !DILocation(line: 483, column: 5, scope: !2511, inlinedAt: !2994)
!3013 = !DILocation(line: 768, column: 15, scope: !2572)
!3014 = !DILocation(line: 768, column: 22, scope: !2572)
!3015 = !DILocation(line: 768, column: 9, scope: !2543)
!3016 = !DILocation(line: 770, column: 26, scope: !2571)
!3017 = !DILocation(line: 0, scope: !2571)
!3018 = !DILocation(line: 771, column: 26, scope: !2571)
!3019 = !DILocation(line: 0, scope: !2575)
!3020 = !DILocation(line: 846, column: 21, scope: !2589)
!3021 = !DILocation(line: 806, column: 17, scope: !2577)
!3022 = !DILocation(line: 841, column: 21, scope: !2589)
!3023 = !DILocation(line: 779, column: 17, scope: !2577)
!3024 = !DILocation(line: 775, column: 32, scope: !2577)
!3025 = !DILocation(line: 0, scope: !2577)
!3026 = !DILocation(line: 776, column: 27, scope: !2577)
!3027 = !DILocation(line: 781, column: 42, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 780, column: 13)
!3029 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 779, column: 17)
!3030 = !DILocation(line: 781, column: 17, scope: !3028)
!3031 = !DILocation(line: 781, column: 40, scope: !3028)
!3032 = !DILocation(line: 782, column: 17, scope: !3028)
!3033 = !DILocation(line: 783, column: 13, scope: !3028)
!3034 = !DILocation(line: 786, column: 17, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 785, column: 13)
!3036 = !DILocation(line: 786, column: 40, scope: !3035)
!3037 = !DILocation(line: 0, scope: !3029)
!3038 = !DILocation(line: 791, column: 17, scope: !2577)
!3039 = !DILocation(line: 794, column: 44, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 792, column: 13)
!3041 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 791, column: 17)
!3042 = !DILocation(line: 794, column: 17, scope: !3040)
!3043 = !DILocation(line: 794, column: 42, scope: !3040)
!3044 = !DILocation(line: 793, column: 17, scope: !3040)
!3045 = !DILocation(line: 793, column: 42, scope: !3040)
!3046 = !DILocation(line: 796, column: 44, scope: !3040)
!3047 = !DILocation(line: 796, column: 17, scope: !3040)
!3048 = !DILocation(line: 796, column: 42, scope: !3040)
!3049 = !DILocation(line: 795, column: 17, scope: !3040)
!3050 = !DILocation(line: 795, column: 42, scope: !3040)
!3051 = !DILocation(line: 797, column: 17, scope: !3040)
!3052 = !DILocation(line: 798, column: 13, scope: !3040)
!3053 = !DILocation(line: 801, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 800, column: 13)
!3055 = !DILocation(line: 802, column: 17, scope: !3054)
!3056 = !DILocation(line: 801, column: 49, scope: !3054)
!3057 = !DILocation(line: 802, column: 48, scope: !3054)
!3058 = !DILocation(line: 808, column: 42, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 807, column: 13)
!3060 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 806, column: 17)
!3061 = !DILocation(line: 808, column: 17, scope: !3059)
!3062 = !DILocation(line: 808, column: 40, scope: !3059)
!3063 = !DILocation(line: 809, column: 17, scope: !3059)
!3064 = !DILocation(line: 810, column: 13, scope: !3059)
!3065 = !DILocation(line: 812, column: 18, scope: !3060)
!3066 = !DILocation(line: 812, column: 41, scope: !3060)
!3067 = !DILocation(line: 815, column: 17, scope: !2577)
!3068 = !DILocation(line: 0, scope: !2586)
!3069 = !DILocation(line: 833, column: 21, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 832, column: 17)
!3071 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 831, column: 17)
!3072 = !DILocation(line: 833, column: 48, scope: !3070)
!3073 = !DILocation(line: 834, column: 21, scope: !3070)
!3074 = !DILocation(line: 834, column: 54, scope: !3070)
!3075 = !DILocation(line: 838, column: 17, scope: !2577)
!3076 = !DILocation(line: 817, column: 38, scope: !2582)
!3077 = !DILocation(line: 817, column: 46, scope: !2582)
!3078 = !DILocation(line: 0, scope: !2582)
!3079 = !DILocation(line: 818, column: 38, scope: !2582)
!3080 = !DILocation(line: 818, column: 46, scope: !2582)
!3081 = !DILocation(line: 820, column: 46, scope: !2582)
!3082 = !DILocation(line: 820, column: 17, scope: !2582)
!3083 = !DILocation(line: 820, column: 44, scope: !2582)
!3084 = !DILocation(line: 819, column: 17, scope: !2582)
!3085 = !DILocation(line: 819, column: 44, scope: !2582)
!3086 = !DILocation(line: 822, column: 53, scope: !2582)
!3087 = !DILocation(line: 822, column: 46, scope: !2582)
!3088 = !DILocation(line: 822, column: 17, scope: !2582)
!3089 = !DILocation(line: 822, column: 44, scope: !2582)
!3090 = !DILocation(line: 821, column: 17, scope: !2582)
!3091 = !DILocation(line: 821, column: 44, scope: !2582)
!3092 = !DILocation(line: 824, column: 17, scope: !2582)
!3093 = !DILocation(line: 825, column: 17, scope: !2582)
!3094 = !DILocation(line: 826, column: 17, scope: !2582)
!3095 = !DILocation(line: 827, column: 17, scope: !2582)
!3096 = !DILocation(line: 828, column: 13, scope: !2582)
!3097 = !DILocation(line: 840, column: 40, scope: !2589)
!3098 = !DILocation(line: 0, scope: !2589)
!3099 = !DILocation(line: 842, column: 21, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 841, column: 21)
!3101 = !DILocation(line: 0, scope: !3100)
!3102 = !DILocation(line: 0, scope: !2592)
!3103 = !DILocation(line: 855, column: 25, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 854, column: 21)
!3105 = !DILocation(line: 855, column: 72, scope: !3104)
!3106 = !DILocation(line: 773, column: 66, scope: !2578)
!3107 = !DILocation(line: 848, column: 21, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 847, column: 17)
!3109 = !DILocation(line: 849, column: 21, scope: !3108)
!3110 = !DILocation(line: 850, column: 21, scope: !3108)
!3111 = !DILocation(line: 851, column: 21, scope: !3108)
!3112 = !DILocation(line: 852, column: 17, scope: !3108)
!3113 = !DILocation(line: 773, column: 9, scope: !2575)
!3114 = distinct !{!3114, !3113, !3115}
!3115 = !DILocation(line: 857, column: 9, scope: !2575)
!3116 = !DILocation(line: 860, column: 13, scope: !2571)
!3117 = !DILocation(line: 862, column: 41, scope: !2597)
!3118 = !DILocation(line: 862, column: 65, scope: !2597)
!3119 = !DILocation(line: 862, column: 83, scope: !2597)
!3120 = !DILocation(line: 862, column: 77, scope: !2597)
!3121 = !DILocation(line: 862, column: 35, scope: !2597)
!3122 = !DILocation(line: 862, column: 19, scope: !2597)
!3123 = !DILocation(line: 862, column: 33, scope: !2597)
!3124 = !DILocation(line: 863, column: 45, scope: !2597)
!3125 = !DILocation(line: 863, column: 39, scope: !2597)
!3126 = !DILocation(line: 863, column: 19, scope: !2597)
!3127 = !DILocation(line: 863, column: 37, scope: !2597)
!3128 = !DILocation(line: 864, column: 17, scope: !2597)
!3129 = !DILocalVariable(name: "h", arg: 1, scope: !3130, file: !3131, line: 134, type: !201)
!3130 = distinct !DISubprogram(name: "x264_macroblock_cache_skip", scope: !3131, file: !3131, line: 134, type: !3132, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3131 = !DIFile(filename: "x264_src/common/rectangle.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !201, !173, !173, !173, !173, !173}
!3134 = !{!3129, !3135, !3136, !3137, !3138, !3139}
!3135 = !DILocalVariable(name: "x", arg: 2, scope: !3130, file: !3131, line: 134, type: !173)
!3136 = !DILocalVariable(name: "y", arg: 3, scope: !3130, file: !3131, line: 134, type: !173)
!3137 = !DILocalVariable(name: "width", arg: 4, scope: !3130, file: !3131, line: 134, type: !173)
!3138 = !DILocalVariable(name: "height", arg: 5, scope: !3130, file: !3131, line: 134, type: !173)
!3139 = !DILocalVariable(name: "b_skip", arg: 6, scope: !3130, file: !3131, line: 134, type: !173)
!3140 = !DILocation(line: 0, scope: !3130, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 867, column: 17, scope: !2595)
!3142 = !DILocation(line: 136, column: 34, scope: !3130, inlinedAt: !3141)
!3143 = !DILocalVariable(name: "dst", arg: 1, scope: !3144, file: !3131, line: 22, type: !266)
!3144 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !3131, file: !3131, line: 22, type: !3145, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !266, !173, !173, !173, !108}
!3147 = !{!3143, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3148 = !DILocalVariable(name: "w", arg: 2, scope: !3144, file: !3131, line: 22, type: !173)
!3149 = !DILocalVariable(name: "h", arg: 3, scope: !3144, file: !3131, line: 22, type: !173)
!3150 = !DILocalVariable(name: "s", arg: 4, scope: !3144, file: !3131, line: 22, type: !173)
!3151 = !DILocalVariable(name: "v", arg: 5, scope: !3144, file: !3131, line: 22, type: !108)
!3152 = !DILocalVariable(name: "d", scope: !3144, file: !3131, line: 24, type: !394)
!3153 = !DILocalVariable(name: "v2", scope: !3144, file: !3131, line: 25, type: !114)
!3154 = !DILocalVariable(name: "v4", scope: !3144, file: !3131, line: 26, type: !108)
!3155 = !DILocalVariable(name: "v8", scope: !3144, file: !3131, line: 27, type: !143)
!3156 = !DILocation(line: 0, scope: !3144, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 136, column: 5, scope: !3130, inlinedAt: !3141)
!3158 = !DILocation(line: 41, column: 22, scope: !3159, inlinedAt: !3157)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3131, line: 40, column: 5)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3131, line: 39, column: 14)
!3161 = distinct !DILexicalBlock(scope: !3144, file: !3131, line: 30, column: 9)
!3162 = !DILocation(line: 43, column: 9, scope: !3159, inlinedAt: !3157)
!3163 = !DILocation(line: 43, column: 22, scope: !3159, inlinedAt: !3157)
!3164 = !DILocation(line: 45, column: 9, scope: !3159, inlinedAt: !3157)
!3165 = !DILocation(line: 45, column: 22, scope: !3159, inlinedAt: !3157)
!3166 = !DILocation(line: 46, column: 9, scope: !3159, inlinedAt: !3157)
!3167 = !DILocation(line: 46, column: 22, scope: !3159, inlinedAt: !3157)
!3168 = !DILocation(line: 868, column: 26, scope: !2595)
!3169 = !DILocation(line: 868, column: 64, scope: !2595)
!3170 = !DILocation(line: 868, column: 58, scope: !2595)
!3171 = !DILocation(line: 0, scope: !2595)
!3172 = !DILocation(line: 869, column: 55, scope: !2595)
!3173 = !DILocation(line: 869, column: 17, scope: !2595)
!3174 = !DILocation(line: 869, column: 53, scope: !2595)
!3175 = !DILocation(line: 870, column: 55, scope: !2595)
!3176 = !DILocation(line: 870, column: 17, scope: !2595)
!3177 = !DILocation(line: 870, column: 53, scope: !2595)
!3178 = !DILocation(line: 871, column: 26, scope: !2595)
!3179 = !DILocation(line: 871, column: 63, scope: !2595)
!3180 = !DILocation(line: 871, column: 57, scope: !2595)
!3181 = !DILocation(line: 872, column: 55, scope: !2595)
!3182 = !DILocation(line: 872, column: 17, scope: !2595)
!3183 = !DILocation(line: 872, column: 53, scope: !2595)
!3184 = !DILocation(line: 873, column: 55, scope: !2595)
!3185 = !DILocation(line: 873, column: 17, scope: !2595)
!3186 = !DILocation(line: 873, column: 53, scope: !2595)
!3187 = !DILocation(line: 874, column: 13, scope: !2595)
!3188 = !DILocation(line: 877, column: 26, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 877, column: 13)
!3190 = !DILocation(line: 877, column: 13, scope: !2571)
!3191 = !DILocation(line: 878, column: 54, scope: !3189)
!3192 = !DILocation(line: 878, column: 13, scope: !3189)
!3193 = !DILocation(line: 882, column: 36, scope: !2543)
!3194 = !DILocation(line: 882, column: 54, scope: !2543)
!3195 = !DILocation(line: 883, column: 32, scope: !2543)
!3196 = !DILocation(line: 883, column: 29, scope: !2543)
!3197 = !DILocation(line: 882, column: 11, scope: !2543)
!3198 = !DILocation(line: 882, column: 27, scope: !2543)
!3199 = !DILocation(line: 881, column: 11, scope: !2543)
!3200 = !DILocation(line: 881, column: 27, scope: !2543)
!3201 = !DILocation(line: 885, column: 65, scope: !2543)
!3202 = !DILocation(line: 885, column: 40, scope: !2543)
!3203 = !DILocation(line: 885, column: 37, scope: !2543)
!3204 = !DILocation(line: 885, column: 5, scope: !2543)
!3205 = !DILocation(line: 885, column: 27, scope: !2543)
!3206 = !DILocation(line: 884, column: 5, scope: !2543)
!3207 = !DILocation(line: 884, column: 27, scope: !2543)
!3208 = !DILocation(line: 889, column: 76, scope: !2543)
!3209 = !DILocation(line: 889, column: 51, scope: !2543)
!3210 = !DILocation(line: 889, column: 48, scope: !2543)
!3211 = !DILocation(line: 889, column: 5, scope: !2543)
!3212 = !DILocation(line: 889, column: 27, scope: !2543)
!3213 = !DILocation(line: 888, column: 5, scope: !2543)
!3214 = !DILocation(line: 888, column: 28, scope: !2543)
!3215 = !DILocation(line: 887, column: 5, scope: !2543)
!3216 = !DILocation(line: 887, column: 27, scope: !2543)
!3217 = !DILocation(line: 886, column: 5, scope: !2543)
!3218 = !DILocation(line: 886, column: 27, scope: !2543)
!3219 = !DILocation(line: 891, column: 64, scope: !2543)
!3220 = !DILocation(line: 892, column: 32, scope: !2543)
!3221 = !DILocation(line: 892, column: 29, scope: !2543)
!3222 = !DILocation(line: 891, column: 5, scope: !2543)
!3223 = !DILocation(line: 891, column: 27, scope: !2543)
!3224 = !DILocation(line: 890, column: 5, scope: !2543)
!3225 = !DILocation(line: 890, column: 27, scope: !2543)
!3226 = !DILocation(line: 893, column: 1, scope: !2543)
!3227 = distinct !DISubprogram(name: "x264_macroblock_load_pic_pointers", scope: !3, file: !3, line: 494, type: !3228, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !201, !173, !173, !173}
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3246, !3248, !3254, !3257}
!3231 = !DILocalVariable(name: "h", arg: 1, scope: !3227, file: !3, line: 494, type: !201)
!3232 = !DILocalVariable(name: "mb_x", arg: 2, scope: !3227, file: !3, line: 494, type: !173)
!3233 = !DILocalVariable(name: "mb_y", arg: 3, scope: !3227, file: !3, line: 494, type: !173)
!3234 = !DILocalVariable(name: "i", arg: 4, scope: !3227, file: !3, line: 494, type: !173)
!3235 = !DILocalVariable(name: "w", scope: !3227, file: !3, line: 496, type: !172)
!3236 = !DILocalVariable(name: "i_stride", scope: !3227, file: !3, line: 497, type: !172)
!3237 = !DILocalVariable(name: "i_stride2", scope: !3227, file: !3, line: 498, type: !172)
!3238 = !DILocalVariable(name: "i_pix_offset", scope: !3227, file: !3, line: 499, type: !172)
!3239 = !DILocalVariable(name: "plane_fdec", scope: !3227, file: !3, line: 502, type: !542)
!3240 = !DILocalVariable(name: "intra_fdec", scope: !3227, file: !3, line: 503, type: !542)
!3241 = !DILocalVariable(name: "ref_pix_offset", scope: !3227, file: !3, line: 504, type: !306)
!3242 = !DILocalVariable(name: "fref", scope: !3227, file: !3, line: 505, type: !814)
!3243 = !DILocalVariable(name: "j", scope: !3244, file: !3, line: 514, type: !173)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 514, column: 9)
!3245 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 513, column: 9)
!3246 = !DILocalVariable(name: "j", scope: !3247, file: !3, line: 516, type: !173)
!3247 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 516, column: 5)
!3248 = !DILocalVariable(name: "k", scope: !3249, file: !3, line: 521, type: !173)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 521, column: 13)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 520, column: 9)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 519, column: 13)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 517, column: 5)
!3253 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 516, column: 5)
!3254 = !DILocalVariable(name: "j", scope: !3255, file: !3, line: 530, type: !173)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 530, column: 9)
!3256 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 529, column: 9)
!3257 = !DILocalVariable(name: "k", scope: !3258, file: !3, line: 534, type: !173)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 534, column: 17)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 533, column: 17)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 531, column: 9)
!3261 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 530, column: 9)
!3262 = distinct !DIAssignID()
!3263 = !DILocation(line: 0, scope: !3227)
!3264 = !DILocation(line: 496, column: 22, scope: !3227)
!3265 = !DILocation(line: 496, column: 20, scope: !3227)
!3266 = !DILocation(line: 497, column: 29, scope: !3227)
!3267 = !DILocation(line: 497, column: 35, scope: !3227)
!3268 = !DILocation(line: 497, column: 45, scope: !3227)
!3269 = !DILocation(line: 497, column: 44, scope: !3227)
!3270 = !DILocation(line: 497, column: 26, scope: !3227)
!3271 = !DILocation(line: 498, column: 45, scope: !3227)
!3272 = !DILocation(line: 498, column: 36, scope: !3227)
!3273 = !DILocation(line: 499, column: 30, scope: !3227)
!3274 = !DILocation(line: 500, column: 47, scope: !3227)
!3275 = !DILocation(line: 500, column: 52, scope: !3227)
!3276 = !DILocation(line: 500, column: 40, scope: !3227)
!3277 = !DILocation(line: 500, column: 32, scope: !3227)
!3278 = !DILocation(line: 500, column: 75, scope: !3227)
!3279 = !DILocation(line: 500, column: 64, scope: !3227)
!3280 = !DILocation(line: 501, column: 47, scope: !3227)
!3281 = !DILocation(line: 501, column: 40, scope: !3227)
!3282 = !DILocation(line: 501, column: 32, scope: !3227)
!3283 = !DILocation(line: 502, column: 43, scope: !3227)
!3284 = !DILocation(line: 502, column: 34, scope: !3227)
!3285 = !DILocation(line: 503, column: 37, scope: !3227)
!3286 = !DILocation(line: 503, column: 70, scope: !3227)
!3287 = !DILocation(line: 503, column: 62, scope: !3227)
!3288 = !DILocation(line: 503, column: 34, scope: !3227)
!3289 = !DILocation(line: 503, column: 86, scope: !3227)
!3290 = !DILocation(line: 503, column: 89, scope: !3227)
!3291 = !DILocation(line: 504, column: 5, scope: !3227)
!3292 = !DILocation(line: 504, column: 29, scope: !3227)
!3293 = distinct !DIAssignID()
!3294 = distinct !DIAssignID()
!3295 = !DILocation(line: 505, column: 35, scope: !3227)
!3296 = !DILocation(line: 505, column: 45, scope: !3227)
!3297 = !DILocation(line: 506, column: 9, scope: !3227)
!3298 = !DILocation(line: 507, column: 34, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 506, column: 9)
!3300 = !DILocation(line: 507, column: 32, scope: !3299)
!3301 = !DILocation(line: 507, column: 45, scope: !3299)
!3302 = !DILocation(line: 507, column: 27, scope: !3299)
!3303 = !DILocation(line: 507, column: 9, scope: !3299)
!3304 = !DILocation(line: 508, column: 15, scope: !3227)
!3305 = !DILocation(line: 508, column: 5, scope: !3227)
!3306 = !DILocation(line: 508, column: 27, scope: !3227)
!3307 = !DILocation(line: 509, column: 37, scope: !3227)
!3308 = !DILocation(line: 509, column: 43, scope: !3227)
!3309 = !DILocation(line: 509, column: 34, scope: !3227)
!3310 = !DILocation(line: 509, column: 15, scope: !3227)
!3311 = !DILocation(line: 509, column: 5, scope: !3227)
!3312 = !DILocation(line: 509, column: 31, scope: !3227)
!3313 = !DILocation(line: 510, column: 11, scope: !3227)
!3314 = !DILocation(line: 510, column: 16, scope: !3227)
!3315 = !DILocation(line: 510, column: 5, scope: !3227)
!3316 = !DILocation(line: 510, column: 52, scope: !3227)
!3317 = !DILocation(line: 510, column: 42, scope: !3227)
!3318 = !DILocation(line: 512, column: 24, scope: !3227)
!3319 = !DILocation(line: 512, column: 14, scope: !3227)
!3320 = !DILocation(line: 512, column: 61, scope: !3227)
!3321 = !DILocation(line: 512, column: 70, scope: !3227)
!3322 = !DILocation(line: 512, column: 5, scope: !3227)
!3323 = !DILocation(line: 513, column: 15, scope: !3245)
!3324 = !DILocation(line: 513, column: 9, scope: !3245)
!3325 = !DILocation(line: 513, column: 9, scope: !3227)
!3326 = !DILocation(line: 514, column: 9, scope: !3244)
!3327 = !DILocation(line: 0, scope: !3244)
!3328 = !DILocation(line: 514, column: 27, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 514, column: 9)
!3330 = !DILocation(line: 515, column: 68, scope: !3329)
!3331 = !DILocation(line: 515, column: 53, scope: !3329)
!3332 = !DILocation(line: 515, column: 13, scope: !3329)
!3333 = !DILocation(line: 515, column: 37, scope: !3329)
!3334 = !DILocation(line: 515, column: 51, scope: !3329)
!3335 = !DILocation(line: 514, column: 33, scope: !3329)
!3336 = distinct !{!3336, !3326, !3337}
!3337 = !DILocation(line: 515, column: 78, scope: !3244)
!3338 = !DILocation(line: 0, scope: !3247)
!3339 = !DILocation(line: 516, column: 23, scope: !3253)
!3340 = !DILocation(line: 516, column: 5, scope: !3247)
!3341 = !DILocation(line: 518, column: 59, scope: !3252)
!3342 = !DILocation(line: 518, column: 49, scope: !3252)
!3343 = !DILocation(line: 518, column: 83, scope: !3252)
!3344 = !DILocation(line: 518, column: 108, scope: !3252)
!3345 = !DILocation(line: 518, column: 92, scope: !3252)
!3346 = !DILocation(line: 518, column: 9, scope: !3252)
!3347 = !DILocation(line: 518, column: 46, scope: !3252)
!3348 = !DILocation(line: 0, scope: !3249)
!3349 = !DILocation(line: 522, column: 46, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 521, column: 13)
!3351 = !DILocation(line: 522, column: 17, scope: !3350)
!3352 = !DILocation(line: 522, column: 43, scope: !3350)
!3353 = !DILocation(line: 523, column: 36, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 523, column: 17)
!3355 = !DILocation(line: 523, column: 17, scope: !3354)
!3356 = !DILocation(line: 523, column: 17, scope: !3250)
!3357 = !DILocation(line: 524, column: 45, scope: !3354)
!3358 = !DILocation(line: 524, column: 51, scope: !3354)
!3359 = !DILocation(line: 524, column: 42, scope: !3354)
!3360 = !DILocation(line: 524, column: 17, scope: !3354)
!3361 = !DILocation(line: 526, column: 41, scope: !3354)
!3362 = !DILocation(line: 0, scope: !3354)
!3363 = !DILocation(line: 516, column: 47, scope: !3253)
!3364 = distinct !{!3364, !3340, !3365}
!3365 = !DILocation(line: 528, column: 5, scope: !3247)
!3366 = !DILocation(line: 529, column: 15, scope: !3256)
!3367 = !DILocation(line: 529, column: 22, scope: !3256)
!3368 = !DILocation(line: 529, column: 9, scope: !3227)
!3369 = !DILocation(line: 0, scope: !3255)
!3370 = !DILocation(line: 530, column: 27, scope: !3261)
!3371 = !DILocation(line: 530, column: 9, scope: !3255)
!3372 = !DILocation(line: 532, column: 63, scope: !3260)
!3373 = !DILocation(line: 532, column: 53, scope: !3260)
!3374 = !DILocation(line: 532, column: 87, scope: !3260)
!3375 = !DILocation(line: 532, column: 112, scope: !3260)
!3376 = !DILocation(line: 532, column: 96, scope: !3260)
!3377 = !DILocation(line: 532, column: 13, scope: !3260)
!3378 = !DILocation(line: 532, column: 50, scope: !3260)
!3379 = !DILocation(line: 0, scope: !3258)
!3380 = !DILocation(line: 535, column: 50, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 534, column: 17)
!3382 = !DILocation(line: 535, column: 21, scope: !3381)
!3383 = !DILocation(line: 535, column: 47, scope: !3381)
!3384 = !DILocation(line: 530, column: 51, scope: !3261)
!3385 = distinct !{!3385, !3371, !3386}
!3386 = !DILocation(line: 536, column: 9, scope: !3255)
!3387 = !DILocation(line: 537, column: 1, scope: !3227)
!3388 = !DISubprogram(name: "x264_mb_predict_mv_pskip", scope: !15, file: !15, line: 294, type: !3389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !201, !906}
!3391 = distinct !DISubprogram(name: "x264_macroblock_cache_load_neighbours_deblock", scope: !3, file: !3, line: 895, type: !2544, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397}
!3393 = !DILocalVariable(name: "h", arg: 1, scope: !3391, file: !3, line: 895, type: !201)
!3394 = !DILocalVariable(name: "mb_x", arg: 2, scope: !3391, file: !3, line: 895, type: !173)
!3395 = !DILocalVariable(name: "mb_y", arg: 3, scope: !3391, file: !3, line: 895, type: !173)
!3396 = !DILocalVariable(name: "deblock_on_slice_edges", scope: !3391, file: !3, line: 897, type: !173)
!3397 = !DILocalVariable(name: "top", scope: !3391, file: !3, line: 898, type: !173)
!3398 = !DILocation(line: 0, scope: !3391)
!3399 = !DILocation(line: 897, column: 40, scope: !3391)
!3400 = !DILocation(line: 897, column: 72, scope: !3391)
!3401 = !DILocation(line: 898, column: 35, scope: !3391)
!3402 = !DILocation(line: 898, column: 26, scope: !3391)
!3403 = !DILocation(line: 898, column: 21, scope: !3391)
!3404 = !DILocation(line: 898, column: 58, scope: !3391)
!3405 = !DILocation(line: 898, column: 50, scope: !3391)
!3406 = !DILocation(line: 898, column: 70, scope: !3391)
!3407 = !DILocation(line: 900, column: 11, scope: !3391)
!3408 = !DILocation(line: 900, column: 23, scope: !3391)
!3409 = !DILocation(line: 901, column: 26, scope: !3391)
!3410 = !DILocation(line: 901, column: 46, scope: !3391)
!3411 = !DILocation(line: 901, column: 11, scope: !3391)
!3412 = !DILocation(line: 901, column: 19, scope: !3391)
!3413 = !DILocation(line: 903, column: 14, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 903, column: 9)
!3415 = !DILocation(line: 903, column: 9, scope: !3391)
!3416 = !DILocation(line: 905, column: 44, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 904, column: 5)
!3418 = !DILocation(line: 905, column: 15, scope: !3417)
!3419 = !DILocation(line: 905, column: 28, scope: !3417)
!3420 = !DILocation(line: 906, column: 36, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 906, column: 13)
!3422 = !DILocation(line: 906, column: 45, scope: !3421)
!3423 = !DILocation(line: 906, column: 39, scope: !3421)
!3424 = !DILocation(line: 906, column: 80, scope: !3421)
!3425 = !DILocation(line: 906, column: 77, scope: !3421)
!3426 = !DILocation(line: 906, column: 13, scope: !3417)
!3427 = !DILocation(line: 907, column: 31, scope: !3421)
!3428 = !DILocation(line: 907, column: 13, scope: !3421)
!3429 = !DILocation(line: 910, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 910, column: 9)
!3431 = !DILocation(line: 910, column: 9, scope: !3391)
!3432 = !DILocation(line: 912, column: 15, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 911, column: 5)
!3434 = !DILocation(line: 912, column: 27, scope: !3433)
!3435 = !DILocation(line: 913, column: 36, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 913, column: 13)
!3437 = !DILocation(line: 913, column: 45, scope: !3436)
!3438 = !DILocation(line: 913, column: 79, scope: !3436)
!3439 = !DILocation(line: 913, column: 39, scope: !3436)
!3440 = !DILocation(line: 913, column: 76, scope: !3436)
!3441 = !DILocation(line: 913, column: 13, scope: !3433)
!3442 = !DILocation(line: 914, column: 31, scope: !3436)
!3443 = !DILocation(line: 914, column: 13, scope: !3436)
!3444 = !DILocation(line: 916, column: 1, scope: !3391)
!3445 = distinct !DISubprogram(name: "x264_macroblock_cache_load_deblock", scope: !3, file: !3, line: 918, type: !1851, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3446)
!3446 = !{!3447, !3448, !3451, !3452, !3453, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3465, !3468, !3469, !3470, !3473, !3474, !3477, !3478, !3479, !3480, !3481, !3482}
!3447 = !DILocalVariable(name: "h", arg: 1, scope: !3445, file: !3, line: 918, type: !201)
!3448 = !DILocalVariable(name: "old_neighbour", scope: !3449, file: !3, line: 927, type: !173)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 926, column: 5)
!3450 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 925, column: 9)
!3451 = !DILocalVariable(name: "mb_x", scope: !3449, file: !3, line: 928, type: !173)
!3452 = !DILocalVariable(name: "mb_y", scope: !3449, file: !3, line: 929, type: !173)
!3453 = !DILocalVariable(name: "left", scope: !3454, file: !3, line: 934, type: !173)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 933, column: 9)
!3455 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 932, column: 13)
!3456 = !DILocalVariable(name: "top", scope: !3454, file: !3, line: 935, type: !173)
!3457 = !DILocalVariable(name: "top_y", scope: !3454, file: !3, line: 936, type: !173)
!3458 = !DILocalVariable(name: "top_8x8", scope: !3454, file: !3, line: 937, type: !173)
!3459 = !DILocalVariable(name: "top_4x4", scope: !3454, file: !3, line: 938, type: !173)
!3460 = !DILocalVariable(name: "s8x8", scope: !3454, file: !3, line: 939, type: !173)
!3461 = !DILocalVariable(name: "s4x4", scope: !3454, file: !3, line: 940, type: !173)
!3462 = !DILocalVariable(name: "nnz", scope: !3454, file: !3, line: 942, type: !911)
!3463 = !DILocalVariable(name: "l", scope: !3464, file: !3, line: 955, type: !173)
!3464 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 955, column: 13)
!3465 = !DILocalVariable(name: "mv", scope: !3466, file: !3, line: 957, type: !741)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 956, column: 13)
!3467 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 955, column: 13)
!3468 = !DILocalVariable(name: "ref", scope: !3466, file: !3, line: 958, type: !734)
!3469 = !DILocalVariable(name: "i8", scope: !3466, file: !3, line: 960, type: !173)
!3470 = !DILocalVariable(name: "ir", scope: !3471, file: !3, line: 973, type: !173)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 972, column: 17)
!3472 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 971, column: 21)
!3473 = !DILocalVariable(name: "iv", scope: !3471, file: !3, line: 974, type: !173)
!3474 = !DILocalVariable(name: "i8", scope: !3475, file: !3, line: 992, type: !173)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 990, column: 5)
!3476 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 989, column: 9)
!3477 = !DILocalVariable(name: "ref0", scope: !3475, file: !3, line: 1004, type: !173)
!3478 = !DILocalVariable(name: "ref1", scope: !3475, file: !3, line: 1005, type: !173)
!3479 = !DILocalVariable(name: "ref2", scope: !3475, file: !3, line: 1006, type: !173)
!3480 = !DILocalVariable(name: "ref3", scope: !3475, file: !3, line: 1007, type: !173)
!3481 = !DILocalVariable(name: "reftop", scope: !3475, file: !3, line: 1008, type: !108)
!3482 = !DILocalVariable(name: "refbot", scope: !3475, file: !3, line: 1009, type: !108)
!3483 = !DILocation(line: 0, scope: !3445)
!3484 = !DILocation(line: 920, column: 9, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 920, column: 9)
!3486 = !DILocation(line: 925, column: 15, scope: !3450)
!3487 = !DILocation(line: 925, column: 9, scope: !3450)
!3488 = !DILocation(line: 925, column: 26, scope: !3450)
!3489 = !DILocation(line: 925, column: 35, scope: !3450)
!3490 = !DILocation(line: 925, column: 67, scope: !3450)
!3491 = !DILocation(line: 925, column: 9, scope: !3445)
!3492 = !DILocation(line: 927, column: 35, scope: !3449)
!3493 = !DILocation(line: 0, scope: !3449)
!3494 = !DILocation(line: 928, column: 26, scope: !3449)
!3495 = !DILocation(line: 929, column: 26, scope: !3449)
!3496 = !DILocation(line: 0, scope: !3391, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 930, column: 9, scope: !3449)
!3498 = !DILocation(line: 898, column: 35, scope: !3391, inlinedAt: !3497)
!3499 = !DILocation(line: 898, column: 26, scope: !3391, inlinedAt: !3497)
!3500 = !DILocation(line: 898, column: 21, scope: !3391, inlinedAt: !3497)
!3501 = !DILocation(line: 898, column: 58, scope: !3391, inlinedAt: !3497)
!3502 = !DILocation(line: 898, column: 50, scope: !3391, inlinedAt: !3497)
!3503 = !DILocation(line: 898, column: 70, scope: !3391, inlinedAt: !3497)
!3504 = !DILocation(line: 901, column: 26, scope: !3391, inlinedAt: !3497)
!3505 = !DILocation(line: 901, column: 46, scope: !3391, inlinedAt: !3497)
!3506 = !DILocation(line: 901, column: 19, scope: !3391, inlinedAt: !3497)
!3507 = !DILocation(line: 903, column: 14, scope: !3414, inlinedAt: !3497)
!3508 = !DILocation(line: 903, column: 9, scope: !3391, inlinedAt: !3497)
!3509 = !DILocation(line: 905, column: 44, scope: !3417, inlinedAt: !3497)
!3510 = !DILocation(line: 905, column: 15, scope: !3417, inlinedAt: !3497)
!3511 = !DILocation(line: 905, column: 28, scope: !3417, inlinedAt: !3497)
!3512 = !DILocation(line: 907, column: 13, scope: !3421, inlinedAt: !3497)
!3513 = !DILocation(line: 910, column: 13, scope: !3430, inlinedAt: !3497)
!3514 = !DILocation(line: 910, column: 9, scope: !3391, inlinedAt: !3497)
!3515 = !DILocation(line: 912, column: 15, scope: !3433, inlinedAt: !3497)
!3516 = !DILocation(line: 912, column: 27, scope: !3433, inlinedAt: !3497)
!3517 = !DILocation(line: 914, column: 13, scope: !3436, inlinedAt: !3497)
!3518 = !DILocation(line: 931, column: 27, scope: !3449)
!3519 = !DILocation(line: 931, column: 30, scope: !3449)
!3520 = !DILocation(line: 932, column: 13, scope: !3455)
!3521 = !DILocation(line: 932, column: 13, scope: !3449)
!3522 = !DILocation(line: 934, column: 30, scope: !3454)
!3523 = !DILocation(line: 0, scope: !3454)
!3524 = !DILocation(line: 937, column: 29, scope: !3454)
!3525 = !DILocation(line: 937, column: 35, scope: !3454)
!3526 = !DILocation(line: 937, column: 47, scope: !3454)
!3527 = !DILocation(line: 937, column: 39, scope: !3454)
!3528 = !DILocation(line: 937, column: 62, scope: !3454)
!3529 = !DILocation(line: 937, column: 59, scope: !3454)
!3530 = !DILocation(line: 938, column: 29, scope: !3454)
!3531 = !DILocation(line: 938, column: 35, scope: !3454)
!3532 = !DILocation(line: 938, column: 47, scope: !3454)
!3533 = !DILocation(line: 938, column: 39, scope: !3454)
!3534 = !DILocation(line: 938, column: 62, scope: !3454)
!3535 = !DILocation(line: 938, column: 59, scope: !3454)
!3536 = !DILocation(line: 942, column: 40, scope: !3454)
!3537 = !DILocation(line: 944, column: 35, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 944, column: 17)
!3539 = !DILocation(line: 944, column: 17, scope: !3454)
!3540 = !DILocation(line: 947, column: 35, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 947, column: 17)
!3542 = !DILocation(line: 947, column: 17, scope: !3454)
!3543 = !DILocation(line: 935, column: 30, scope: !3454)
!3544 = !DILocation(line: 945, column: 17, scope: !3538)
!3545 = !DILocation(line: 0, scope: !3464)
!3546 = !DILocation(line: 955, column: 13, scope: !3464)
!3547 = !DILocation(line: 957, column: 36, scope: !3466)
!3548 = !DILocation(line: 0, scope: !3466)
!3549 = !DILocation(line: 958, column: 31, scope: !3466)
!3550 = !DILocation(line: 964, column: 48, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 962, column: 17)
!3552 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 961, column: 21)
!3553 = !DILocation(line: 964, column: 21, scope: !3551)
!3554 = !DILocation(line: 964, column: 46, scope: !3551)
!3555 = !DILocation(line: 963, column: 21, scope: !3551)
!3556 = !DILocation(line: 963, column: 46, scope: !3551)
!3557 = !DILocation(line: 966, column: 48, scope: !3551)
!3558 = !DILocation(line: 966, column: 21, scope: !3551)
!3559 = !DILocation(line: 966, column: 46, scope: !3551)
!3560 = !DILocation(line: 965, column: 21, scope: !3551)
!3561 = !DILocation(line: 965, column: 46, scope: !3551)
!3562 = !DILocation(line: 967, column: 21, scope: !3551)
!3563 = !DILocation(line: 955, column: 67, scope: !3467)
!3564 = !DILocation(line: 955, column: 31, scope: !3467)
!3565 = distinct !{!3565, !3546, !3566}
!3566 = !DILocation(line: 985, column: 13, scope: !3464)
!3567 = !DILocation(line: 949, column: 66, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 948, column: 13)
!3569 = !DILocation(line: 949, column: 17, scope: !3568)
!3570 = !DILocation(line: 949, column: 64, scope: !3568)
!3571 = !DILocation(line: 950, column: 66, scope: !3568)
!3572 = !DILocation(line: 950, column: 17, scope: !3568)
!3573 = !DILocation(line: 950, column: 64, scope: !3568)
!3574 = !DILocation(line: 951, column: 66, scope: !3568)
!3575 = !DILocation(line: 951, column: 17, scope: !3568)
!3576 = !DILocation(line: 951, column: 64, scope: !3568)
!3577 = !DILocation(line: 952, column: 66, scope: !3568)
!3578 = !DILocation(line: 952, column: 17, scope: !3568)
!3579 = !DILocation(line: 952, column: 64, scope: !3568)
!3580 = !DILocation(line: 0, scope: !3471)
!3581 = !DILocation(line: 976, column: 50, scope: !3471)
!3582 = !DILocation(line: 976, column: 21, scope: !3471)
!3583 = !DILocation(line: 976, column: 48, scope: !3471)
!3584 = !DILocation(line: 975, column: 21, scope: !3471)
!3585 = !DILocation(line: 975, column: 48, scope: !3471)
!3586 = !DILocation(line: 978, column: 50, scope: !3471)
!3587 = !DILocation(line: 978, column: 21, scope: !3471)
!3588 = !DILocation(line: 978, column: 48, scope: !3471)
!3589 = !DILocation(line: 977, column: 21, scope: !3471)
!3590 = !DILocation(line: 977, column: 48, scope: !3471)
!3591 = !DILocation(line: 980, column: 21, scope: !3471)
!3592 = !DILocation(line: 981, column: 21, scope: !3471)
!3593 = !DILocation(line: 982, column: 21, scope: !3471)
!3594 = !DILocation(line: 983, column: 21, scope: !3471)
!3595 = !DILocation(line: 989, column: 26, scope: !3476)
!3596 = !DILocation(line: 989, column: 9, scope: !3476)
!3597 = !DILocation(line: 989, column: 42, scope: !3476)
!3598 = !DILocation(line: 989, column: 51, scope: !3476)
!3599 = !DILocation(line: 989, column: 58, scope: !3476)
!3600 = !DILocation(line: 989, column: 9, scope: !3445)
!3601 = !DILocation(line: 0, scope: !3475)
!3602 = !DILocation(line: 994, column: 36, scope: !3475)
!3603 = !DILocation(line: 994, column: 9, scope: !3475)
!3604 = !DILocation(line: 994, column: 34, scope: !3475)
!3605 = !DILocation(line: 993, column: 34, scope: !3475)
!3606 = !DILocation(line: 996, column: 36, scope: !3475)
!3607 = !DILocation(line: 996, column: 9, scope: !3475)
!3608 = !DILocation(line: 996, column: 34, scope: !3475)
!3609 = !DILocation(line: 995, column: 34, scope: !3475)
!3610 = !DILocation(line: 1000, column: 38, scope: !3475)
!3611 = !DILocation(line: 1000, column: 9, scope: !3475)
!3612 = !DILocation(line: 1000, column: 36, scope: !3475)
!3613 = !DILocation(line: 999, column: 36, scope: !3475)
!3614 = !DILocation(line: 1002, column: 38, scope: !3475)
!3615 = !DILocation(line: 1002, column: 9, scope: !3475)
!3616 = !DILocation(line: 1002, column: 36, scope: !3475)
!3617 = !DILocation(line: 1001, column: 36, scope: !3475)
!3618 = !DILocation(line: 1004, column: 20, scope: !3475)
!3619 = !DILocation(line: 1005, column: 20, scope: !3475)
!3620 = !DILocation(line: 1006, column: 20, scope: !3475)
!3621 = !DILocation(line: 1007, column: 20, scope: !3475)
!3622 = !DILocation(line: 1008, column: 39, scope: !3475)
!3623 = !DILocation(line: 1008, column: 54, scope: !3475)
!3624 = !DILocalVariable(name: "a", arg: 1, scope: !3625, file: !15, line: 316, type: !173)
!3625 = distinct !DISubprogram(name: "pack16to32", scope: !15, file: !15, line: 316, type: !3626, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!108, !173, !173}
!3628 = !{!3624, !3629}
!3629 = !DILocalVariable(name: "b", arg: 2, scope: !3625, file: !15, line: 316, type: !173)
!3630 = !DILocation(line: 0, scope: !3625, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1008, column: 27, scope: !3475)
!3632 = !DILocation(line: 321, column: 17, scope: !3625, inlinedAt: !3631)
!3633 = !DILocation(line: 321, column: 13, scope: !3625, inlinedAt: !3631)
!3634 = !DILocation(line: 1008, column: 70, scope: !3475)
!3635 = !DILocation(line: 1009, column: 39, scope: !3475)
!3636 = !DILocation(line: 1009, column: 54, scope: !3475)
!3637 = !DILocation(line: 0, scope: !3625, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1009, column: 27, scope: !3475)
!3639 = !DILocation(line: 321, column: 17, scope: !3625, inlinedAt: !3638)
!3640 = !DILocation(line: 321, column: 13, scope: !3625, inlinedAt: !3638)
!3641 = !DILocation(line: 1009, column: 70, scope: !3475)
!3642 = !DILocation(line: 1011, column: 55, scope: !3475)
!3643 = !DILocation(line: 1012, column: 9, scope: !3475)
!3644 = !DILocation(line: 1012, column: 55, scope: !3475)
!3645 = !DILocation(line: 1013, column: 55, scope: !3475)
!3646 = !DILocation(line: 1014, column: 9, scope: !3475)
!3647 = !DILocation(line: 1014, column: 55, scope: !3475)
!3648 = !DILocation(line: 1015, column: 5, scope: !3475)
!3649 = !DILocation(line: 1016, column: 1, scope: !3445)
!3650 = distinct !DISubprogram(name: "x264_macroblock_cache_save", scope: !3, file: !3, line: 1030, type: !1851, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3665, !3668, !3669, !3670, !3671, !3675, !3676}
!3652 = !DILocalVariable(name: "h", arg: 1, scope: !3650, file: !3, line: 1030, type: !201)
!3653 = !DILocalVariable(name: "i_mb_xy", scope: !3650, file: !3, line: 1032, type: !172)
!3654 = !DILocalVariable(name: "i_mb_type", scope: !3650, file: !3, line: 1033, type: !172)
!3655 = !DILocalVariable(name: "s8x8", scope: !3650, file: !3, line: 1034, type: !172)
!3656 = !DILocalVariable(name: "s4x4", scope: !3650, file: !3, line: 1035, type: !172)
!3657 = !DILocalVariable(name: "i_mb_4x4", scope: !3650, file: !3, line: 1036, type: !172)
!3658 = !DILocalVariable(name: "i_mb_8x8", scope: !3650, file: !3, line: 1037, type: !172)
!3659 = !DILocalVariable(name: "i4x4", scope: !3650, file: !3, line: 1041, type: !734)
!3660 = !DILocalVariable(name: "nnz", scope: !3650, file: !3, line: 1042, type: !394)
!3661 = !DILocalVariable(name: "i", scope: !3662, file: !3, line: 1078, type: !173)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 1078, column: 9)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1070, column: 5)
!3664 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1069, column: 9)
!3665 = !DILocalVariable(name: "mv0", scope: !3666, file: !3, line: 1106, type: !741)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 1105, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1104, column: 9)
!3668 = !DILocalVariable(name: "mv1", scope: !3666, file: !3, line: 1107, type: !741)
!3669 = !DILocalVariable(name: "ref0", scope: !3666, file: !3, line: 1108, type: !734)
!3670 = !DILocalVariable(name: "ref1", scope: !3666, file: !3, line: 1109, type: !734)
!3671 = !DILocalVariable(name: "mvd0", scope: !3672, file: !3, line: 1154, type: !3674)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 1153, column: 5)
!3673 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1152, column: 9)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3675 = !DILocalVariable(name: "mvd1", scope: !3672, file: !3, line: 1155, type: !3674)
!3676 = !DILocalVariable(name: "skipbp", scope: !3677, file: !3, line: 1188, type: !173)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1187, column: 13)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 1186, column: 22)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 1184, column: 17)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1183, column: 9)
!3681 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1182, column: 13)
!3682 = !DILocation(line: 0, scope: !3650)
!3683 = !DILocation(line: 1032, column: 31, scope: !3650)
!3684 = !DILocation(line: 1033, column: 50, scope: !3650)
!3685 = !DILocation(line: 1033, column: 27, scope: !3650)
!3686 = !DILocation(line: 1034, column: 28, scope: !3650)
!3687 = !DILocation(line: 1035, column: 28, scope: !3650)
!3688 = !DILocation(line: 1036, column: 32, scope: !3650)
!3689 = !DILocation(line: 1037, column: 32, scope: !3650)
!3690 = !DILocation(line: 1041, column: 26, scope: !3650)
!3691 = !DILocation(line: 1041, column: 20, scope: !3650)
!3692 = !DILocation(line: 1042, column: 26, scope: !3650)
!3693 = !DILocation(line: 1042, column: 20, scope: !3650)
!3694 = !DILocalVariable(name: "h", arg: 1, scope: !3695, file: !3, line: 1018, type: !201)
!3695 = distinct !DISubprogram(name: "x264_macroblock_store_pic", scope: !3, file: !3, line: 1018, type: !199, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3696)
!3696 = !{!3694, !3697, !3698, !3699, !3700, !3701}
!3697 = !DILocalVariable(name: "i", arg: 2, scope: !3695, file: !3, line: 1018, type: !173)
!3698 = !DILocalVariable(name: "w", scope: !3695, file: !3, line: 1020, type: !173)
!3699 = !DILocalVariable(name: "i_stride", scope: !3695, file: !3, line: 1021, type: !173)
!3700 = !DILocalVariable(name: "i_stride2", scope: !3695, file: !3, line: 1022, type: !173)
!3701 = !DILocalVariable(name: "i_pix_offset", scope: !3695, file: !3, line: 1023, type: !173)
!3702 = !DILocation(line: 0, scope: !3695, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 1044, column: 5, scope: !3650)
!3704 = !DILocation(line: 1021, column: 23, scope: !3695, inlinedAt: !3703)
!3705 = !DILocation(line: 1021, column: 29, scope: !3695, inlinedAt: !3703)
!3706 = !DILocation(line: 1021, column: 20, scope: !3695, inlinedAt: !3703)
!3707 = !DILocation(line: 1022, column: 39, scope: !3695, inlinedAt: !3703)
!3708 = !DILocation(line: 1023, column: 24, scope: !3695, inlinedAt: !3703)
!3709 = !DILocation(line: 1024, column: 57, scope: !3695, inlinedAt: !3703)
!3710 = !DILocation(line: 1024, column: 62, scope: !3695, inlinedAt: !3703)
!3711 = !DILocation(line: 1024, column: 42, scope: !3695, inlinedAt: !3703)
!3712 = !DILocation(line: 1024, column: 26, scope: !3695, inlinedAt: !3703)
!3713 = !DILocation(line: 1024, column: 93, scope: !3695, inlinedAt: !3703)
!3714 = !DILocation(line: 1024, column: 74, scope: !3695, inlinedAt: !3703)
!3715 = !DILocation(line: 1025, column: 57, scope: !3695, inlinedAt: !3703)
!3716 = !DILocation(line: 1025, column: 42, scope: !3695, inlinedAt: !3703)
!3717 = !DILocation(line: 1025, column: 26, scope: !3695, inlinedAt: !3703)
!3718 = !DILocation(line: 1022, column: 30, scope: !3695, inlinedAt: !3703)
!3719 = !DILocation(line: 1026, column: 11, scope: !3695, inlinedAt: !3703)
!3720 = !DILocation(line: 1026, column: 5, scope: !3695, inlinedAt: !3703)
!3721 = !DILocation(line: 1026, column: 52, scope: !3695, inlinedAt: !3703)
!3722 = !DILocation(line: 1026, column: 43, scope: !3695, inlinedAt: !3703)
!3723 = !DILocation(line: 1027, column: 52, scope: !3695, inlinedAt: !3703)
!3724 = !DILocation(line: 1027, column: 42, scope: !3695, inlinedAt: !3703)
!3725 = !DILocation(line: 0, scope: !3695, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1045, column: 5, scope: !3650)
!3727 = !DILocation(line: 1021, column: 23, scope: !3695, inlinedAt: !3726)
!3728 = !DILocation(line: 1021, column: 20, scope: !3695, inlinedAt: !3726)
!3729 = !DILocation(line: 1022, column: 39, scope: !3695, inlinedAt: !3726)
!3730 = !DILocation(line: 1023, column: 24, scope: !3695, inlinedAt: !3726)
!3731 = !DILocation(line: 1024, column: 57, scope: !3695, inlinedAt: !3726)
!3732 = !DILocation(line: 1024, column: 62, scope: !3695, inlinedAt: !3726)
!3733 = !DILocation(line: 1024, column: 42, scope: !3695, inlinedAt: !3726)
!3734 = !DILocation(line: 1024, column: 26, scope: !3695, inlinedAt: !3726)
!3735 = !DILocation(line: 1024, column: 93, scope: !3695, inlinedAt: !3726)
!3736 = !DILocation(line: 1024, column: 74, scope: !3695, inlinedAt: !3726)
!3737 = !DILocation(line: 1025, column: 57, scope: !3695, inlinedAt: !3726)
!3738 = !DILocation(line: 1025, column: 42, scope: !3695, inlinedAt: !3726)
!3739 = !DILocation(line: 1025, column: 26, scope: !3695, inlinedAt: !3726)
!3740 = !DILocation(line: 1022, column: 30, scope: !3695, inlinedAt: !3726)
!3741 = !DILocation(line: 1026, column: 5, scope: !3695, inlinedAt: !3726)
!3742 = !DILocation(line: 1026, column: 43, scope: !3695, inlinedAt: !3726)
!3743 = !DILocation(line: 1027, column: 42, scope: !3695, inlinedAt: !3726)
!3744 = !DILocation(line: 0, scope: !3695, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 1046, column: 5, scope: !3650)
!3746 = !DILocation(line: 1021, column: 23, scope: !3695, inlinedAt: !3745)
!3747 = !DILocation(line: 1021, column: 20, scope: !3695, inlinedAt: !3745)
!3748 = !DILocation(line: 1022, column: 39, scope: !3695, inlinedAt: !3745)
!3749 = !DILocation(line: 1023, column: 24, scope: !3695, inlinedAt: !3745)
!3750 = !DILocation(line: 1024, column: 57, scope: !3695, inlinedAt: !3745)
!3751 = !DILocation(line: 1024, column: 62, scope: !3695, inlinedAt: !3745)
!3752 = !DILocation(line: 1024, column: 42, scope: !3695, inlinedAt: !3745)
!3753 = !DILocation(line: 1024, column: 26, scope: !3695, inlinedAt: !3745)
!3754 = !DILocation(line: 1024, column: 93, scope: !3695, inlinedAt: !3745)
!3755 = !DILocation(line: 1024, column: 74, scope: !3695, inlinedAt: !3745)
!3756 = !DILocation(line: 1025, column: 57, scope: !3695, inlinedAt: !3745)
!3757 = !DILocation(line: 1025, column: 42, scope: !3695, inlinedAt: !3745)
!3758 = !DILocation(line: 1025, column: 26, scope: !3695, inlinedAt: !3745)
!3759 = !DILocation(line: 1022, column: 30, scope: !3695, inlinedAt: !3745)
!3760 = !DILocation(line: 1026, column: 5, scope: !3695, inlinedAt: !3745)
!3761 = !DILocation(line: 1026, column: 43, scope: !3695, inlinedAt: !3745)
!3762 = !DILocation(line: 1027, column: 42, scope: !3695, inlinedAt: !3745)
!3763 = !DILocation(line: 1048, column: 31, scope: !3650)
!3764 = !DILocation(line: 1048, column: 43, scope: !3650)
!3765 = !DILocation(line: 1048, column: 57, scope: !3650)
!3766 = !DILocation(line: 0, scope: !2511, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 1048, column: 5, scope: !3650)
!3768 = !DILocation(line: 479, column: 27, scope: !2511, inlinedAt: !3767)
!3769 = !DILocation(line: 479, column: 21, scope: !2511, inlinedAt: !3767)
!3770 = !DILocation(line: 480, column: 21, scope: !2511, inlinedAt: !3767)
!3771 = !DILocation(line: 481, column: 39, scope: !2511, inlinedAt: !3767)
!3772 = !DILocation(line: 481, column: 30, scope: !2511, inlinedAt: !3767)
!3773 = !DILocation(line: 481, column: 20, scope: !2511, inlinedAt: !3767)
!3774 = !DILocation(line: 482, column: 39, scope: !2511, inlinedAt: !3767)
!3775 = !DILocation(line: 482, column: 30, scope: !2511, inlinedAt: !3767)
!3776 = !DILocation(line: 482, column: 20, scope: !2511, inlinedAt: !3767)
!3777 = !DILocation(line: 483, column: 11, scope: !2511, inlinedAt: !3767)
!3778 = !DILocation(line: 483, column: 32, scope: !2511, inlinedAt: !3767)
!3779 = !DILocation(line: 483, column: 26, scope: !2511, inlinedAt: !3767)
!3780 = !DILocation(line: 483, column: 40, scope: !2511, inlinedAt: !3767)
!3781 = !DILocation(line: 484, column: 47, scope: !2511, inlinedAt: !3767)
!3782 = !DILocation(line: 484, column: 39, scope: !2511, inlinedAt: !3767)
!3783 = !DILocation(line: 484, column: 26, scope: !2511, inlinedAt: !3767)
!3784 = !DILocation(line: 484, column: 51, scope: !2511, inlinedAt: !3767)
!3785 = !DILocation(line: 483, column: 5, scope: !2511, inlinedAt: !3767)
!3786 = !DILocation(line: 1050, column: 11, scope: !3650)
!3787 = !DILocation(line: 1050, column: 5, scope: !3650)
!3788 = !DILocation(line: 1050, column: 25, scope: !3650)
!3789 = !DILocation(line: 1051, column: 40, scope: !3650)
!3790 = !DILocation(line: 1051, column: 34, scope: !3650)
!3791 = !DILocation(line: 1051, column: 11, scope: !3650)
!3792 = !DILocation(line: 1051, column: 5, scope: !3650)
!3793 = !DILocation(line: 1051, column: 32, scope: !3650)
!3794 = !DILocation(line: 1052, column: 32, scope: !3650)
!3795 = !DILocation(line: 1052, column: 72, scope: !3650)
!3796 = !DILocation(line: 1052, column: 11, scope: !3650)
!3797 = !DILocation(line: 1052, column: 5, scope: !3650)
!3798 = !DILocation(line: 1052, column: 30, scope: !3650)
!3799 = !DILocation(line: 1053, column: 11, scope: !3650)
!3800 = !DILocation(line: 1053, column: 24, scope: !3650)
!3801 = !DILocation(line: 1056, column: 9, scope: !3650)
!3802 = !DILocation(line: 1058, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 1057, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1056, column: 9)
!3805 = !DILocation(line: 1059, column: 38, scope: !3803)
!3806 = !DILocation(line: 1060, column: 38, scope: !3803)
!3807 = !DILocation(line: 1061, column: 38, scope: !3803)
!3808 = !DILocalVariable(name: "a", arg: 1, scope: !3809, file: !15, line: 332, type: !173)
!3809 = distinct !DISubprogram(name: "pack8to32", scope: !15, file: !15, line: 332, type: !3810, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!108, !173, !173, !173, !173}
!3812 = !{!3808, !3813, !3814, !3815}
!3813 = !DILocalVariable(name: "b", arg: 2, scope: !3809, file: !15, line: 332, type: !173)
!3814 = !DILocalVariable(name: "c", arg: 3, scope: !3809, file: !15, line: 332, type: !173)
!3815 = !DILocalVariable(name: "d", arg: 4, scope: !3809, file: !15, line: 332, type: !173)
!3816 = !DILocation(line: 0, scope: !3809, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 1059, column: 27, scope: !3803)
!3818 = !DILocation(line: 337, column: 17, scope: !3809, inlinedAt: !3817)
!3819 = !DILocation(line: 337, column: 13, scope: !3809, inlinedAt: !3817)
!3820 = !DILocation(line: 337, column: 26, scope: !3809, inlinedAt: !3817)
!3821 = !DILocation(line: 337, column: 22, scope: !3809, inlinedAt: !3817)
!3822 = !DILocation(line: 1059, column: 9, scope: !3803)
!3823 = !DILocation(line: 1059, column: 25, scope: !3803)
!3824 = !DILocation(line: 1062, column: 5, scope: !3803)
!3825 = !DILocation(line: 1063, column: 24, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 1063, column: 14)
!3827 = !DILocation(line: 1063, column: 15, scope: !3826)
!3828 = !DILocation(line: 1063, column: 44, scope: !3826)
!3829 = !DILocation(line: 1066, column: 21, scope: !3826)
!3830 = !DILocation(line: 1064, column: 21, scope: !3826)
!3831 = !DILocation(line: 1069, column: 9, scope: !3650)
!3832 = !DILocation(line: 1071, column: 15, scope: !3663)
!3833 = !DILocation(line: 1071, column: 9, scope: !3663)
!3834 = !DILocation(line: 1071, column: 27, scope: !3663)
!3835 = !DILocation(line: 1072, column: 15, scope: !3663)
!3836 = !DILocation(line: 1072, column: 26, scope: !3663)
!3837 = !DILocation(line: 1073, column: 15, scope: !3663)
!3838 = !DILocation(line: 1073, column: 28, scope: !3663)
!3839 = !DILocation(line: 1074, column: 15, scope: !3663)
!3840 = !DILocation(line: 1074, column: 26, scope: !3663)
!3841 = !DILocation(line: 1075, column: 15, scope: !3663)
!3842 = !DILocation(line: 1075, column: 9, scope: !3663)
!3843 = !DILocation(line: 1075, column: 28, scope: !3663)
!3844 = !DILocation(line: 1076, column: 15, scope: !3663)
!3845 = !DILocation(line: 1076, column: 31, scope: !3663)
!3846 = !DILocation(line: 1077, column: 9, scope: !3663)
!3847 = !DILocation(line: 0, scope: !3662)
!3848 = !DILocation(line: 1079, column: 13, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1078, column: 9)
!3850 = !DILocation(line: 1079, column: 55, scope: !3849)
!3851 = !DILocation(line: 1100, column: 15, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1100, column: 9)
!3853 = !DILocation(line: 1084, column: 9, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1082, column: 5)
!3855 = !DILocation(line: 1085, column: 9, scope: !3854)
!3856 = !DILocation(line: 1086, column: 9, scope: !3854)
!3857 = !DILocation(line: 1087, column: 9, scope: !3854)
!3858 = !DILocation(line: 1088, column: 31, scope: !3854)
!3859 = !DILocation(line: 1088, column: 88, scope: !3854)
!3860 = !DILocation(line: 1088, column: 9, scope: !3854)
!3861 = !DILocation(line: 1088, column: 29, scope: !3854)
!3862 = !DILocation(line: 1089, column: 31, scope: !3854)
!3863 = !DILocation(line: 1089, column: 88, scope: !3854)
!3864 = !DILocation(line: 1089, column: 9, scope: !3854)
!3865 = !DILocation(line: 1089, column: 29, scope: !3854)
!3866 = !DILocation(line: 1090, column: 31, scope: !3854)
!3867 = !DILocation(line: 1090, column: 88, scope: !3854)
!3868 = !DILocation(line: 1090, column: 9, scope: !3854)
!3869 = !DILocation(line: 1090, column: 29, scope: !3854)
!3870 = !DILocation(line: 1091, column: 31, scope: !3854)
!3871 = !DILocation(line: 1091, column: 88, scope: !3854)
!3872 = !DILocation(line: 1091, column: 9, scope: !3854)
!3873 = !DILocation(line: 1091, column: 29, scope: !3854)
!3874 = !DILocation(line: 1093, column: 19, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 1093, column: 13)
!3876 = !DILocation(line: 1093, column: 26, scope: !3875)
!3877 = !DILocation(line: 1093, column: 37, scope: !3875)
!3878 = !DILocation(line: 1093, column: 46, scope: !3875)
!3879 = !DILocation(line: 1093, column: 57, scope: !3875)
!3880 = !DILocation(line: 1093, column: 62, scope: !3875)
!3881 = !DILocation(line: 1093, column: 71, scope: !3875)
!3882 = !DILocation(line: 1093, column: 84, scope: !3875)
!3883 = !DILocation(line: 1093, column: 13, scope: !3854)
!3884 = !DILocation(line: 1094, column: 32, scope: !3875)
!3885 = !DILocation(line: 1094, column: 19, scope: !3875)
!3886 = !DILocation(line: 1094, column: 24, scope: !3875)
!3887 = !DILocation(line: 1094, column: 13, scope: !3875)
!3888 = !DILocation(line: 1095, column: 35, scope: !3854)
!3889 = !DILocation(line: 1095, column: 29, scope: !3854)
!3890 = !DILocation(line: 1095, column: 15, scope: !3854)
!3891 = !DILocation(line: 1095, column: 9, scope: !3854)
!3892 = !DILocation(line: 1095, column: 27, scope: !3854)
!3893 = !DILocation(line: 1096, column: 34, scope: !3854)
!3894 = !DILocation(line: 1096, column: 47, scope: !3854)
!3895 = !DILocation(line: 1096, column: 39, scope: !3854)
!3896 = !DILocation(line: 1096, column: 15, scope: !3854)
!3897 = !DILocation(line: 1096, column: 26, scope: !3854)
!3898 = !DILocation(line: 1097, column: 25, scope: !3854)
!3899 = !DILocation(line: 1100, column: 26, scope: !3852)
!3900 = !DILocation(line: 1100, column: 31, scope: !3852)
!3901 = !DILocation(line: 1100, column: 40, scope: !3852)
!3902 = !DILocation(line: 1100, column: 47, scope: !3852)
!3903 = !DILocation(line: 1100, column: 9, scope: !3650)
!3904 = !DILocation(line: 1101, column: 15, scope: !3852)
!3905 = !DILocation(line: 1101, column: 31, scope: !3852)
!3906 = !DILocation(line: 1101, column: 9, scope: !3852)
!3907 = !DILocation(line: 1102, column: 46, scope: !3650)
!3908 = !DILocation(line: 1102, column: 40, scope: !3650)
!3909 = !DILocation(line: 1102, column: 11, scope: !3650)
!3910 = !DILocation(line: 1102, column: 5, scope: !3650)
!3911 = !DILocation(line: 1102, column: 38, scope: !3650)
!3912 = !DILocation(line: 1104, column: 15, scope: !3667)
!3913 = !DILocation(line: 1104, column: 22, scope: !3667)
!3914 = !DILocation(line: 1104, column: 9, scope: !3650)
!3915 = !DILocation(line: 1106, column: 36, scope: !3666)
!3916 = !DILocation(line: 1106, column: 30, scope: !3666)
!3917 = !DILocation(line: 0, scope: !3666)
!3918 = !DILocation(line: 1107, column: 30, scope: !3666)
!3919 = !DILocation(line: 1108, column: 31, scope: !3666)
!3920 = !DILocation(line: 1108, column: 25, scope: !3666)
!3921 = !DILocation(line: 1109, column: 25, scope: !3666)
!3922 = !DILocation(line: 1110, column: 14, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 1110, column: 13)
!3924 = !DILocation(line: 1112, column: 30, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1111, column: 9)
!3926 = !DILocation(line: 1112, column: 28, scope: !3925)
!3927 = !DILocation(line: 1113, column: 30, scope: !3925)
!3928 = !DILocation(line: 1113, column: 13, scope: !3925)
!3929 = !DILocation(line: 1113, column: 28, scope: !3925)
!3930 = !DILocation(line: 1114, column: 30, scope: !3925)
!3931 = !DILocation(line: 1114, column: 13, scope: !3925)
!3932 = !DILocation(line: 1114, column: 28, scope: !3925)
!3933 = !DILocation(line: 1115, column: 30, scope: !3925)
!3934 = !DILocation(line: 1115, column: 19, scope: !3925)
!3935 = !DILocation(line: 1115, column: 13, scope: !3925)
!3936 = !DILocation(line: 1115, column: 28, scope: !3925)
!3937 = !DILocation(line: 1116, column: 13, scope: !3925)
!3938 = !DILocation(line: 1117, column: 13, scope: !3925)
!3939 = !DILocation(line: 1118, column: 13, scope: !3925)
!3940 = !DILocation(line: 1119, column: 13, scope: !3925)
!3941 = !DILocation(line: 1120, column: 23, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 1120, column: 17)
!3943 = !DILocation(line: 1120, column: 30, scope: !3942)
!3944 = !DILocation(line: 1120, column: 17, scope: !3925)
!3945 = !DILocation(line: 1122, column: 34, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1121, column: 13)
!3947 = !DILocation(line: 1122, column: 32, scope: !3946)
!3948 = !DILocation(line: 1123, column: 34, scope: !3946)
!3949 = !DILocation(line: 1123, column: 17, scope: !3946)
!3950 = !DILocation(line: 1123, column: 32, scope: !3946)
!3951 = !DILocation(line: 1124, column: 34, scope: !3946)
!3952 = !DILocation(line: 1124, column: 17, scope: !3946)
!3953 = !DILocation(line: 1124, column: 32, scope: !3946)
!3954 = !DILocation(line: 1125, column: 34, scope: !3946)
!3955 = !DILocation(line: 1125, column: 17, scope: !3946)
!3956 = !DILocation(line: 1125, column: 32, scope: !3946)
!3957 = !DILocation(line: 1126, column: 17, scope: !3946)
!3958 = !DILocation(line: 1127, column: 17, scope: !3946)
!3959 = !DILocation(line: 1128, column: 17, scope: !3946)
!3960 = !DILocation(line: 1129, column: 17, scope: !3946)
!3961 = !DILocation(line: 1130, column: 13, scope: !3946)
!3962 = !DILocation(line: 1134, column: 34, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 1133, column: 9)
!3964 = !DILocation(line: 1135, column: 13, scope: !3963)
!3965 = !DILocation(line: 1135, column: 34, scope: !3963)
!3966 = !DILocation(line: 1137, column: 13, scope: !3963)
!3967 = !DILocation(line: 1136, column: 36, scope: !3963)
!3968 = !DILocation(line: 1138, column: 13, scope: !3963)
!3969 = !DILocation(line: 1137, column: 36, scope: !3963)
!3970 = !DILocation(line: 1139, column: 13, scope: !3963)
!3971 = !DILocation(line: 1138, column: 36, scope: !3963)
!3972 = !DILocation(line: 1139, column: 36, scope: !3963)
!3973 = !DILocation(line: 1140, column: 23, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 1140, column: 17)
!3975 = !DILocation(line: 1140, column: 30, scope: !3974)
!3976 = !DILocation(line: 1140, column: 17, scope: !3963)
!3977 = !DILocation(line: 1142, column: 38, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 1141, column: 13)
!3979 = !DILocation(line: 1143, column: 17, scope: !3978)
!3980 = !DILocation(line: 1143, column: 38, scope: !3978)
!3981 = !DILocation(line: 1145, column: 17, scope: !3978)
!3982 = !DILocation(line: 1144, column: 40, scope: !3978)
!3983 = !DILocation(line: 1146, column: 17, scope: !3978)
!3984 = !DILocation(line: 1145, column: 40, scope: !3978)
!3985 = !DILocation(line: 1147, column: 17, scope: !3978)
!3986 = !DILocation(line: 1146, column: 40, scope: !3978)
!3987 = !DILocation(line: 1147, column: 40, scope: !3978)
!3988 = !DILocation(line: 1148, column: 13, scope: !3978)
!3989 = !DILocation(line: 1152, column: 18, scope: !3673)
!3990 = !DILocation(line: 1152, column: 9, scope: !3673)
!3991 = !DILocation(line: 1152, column: 9, scope: !3650)
!3992 = !DILocation(line: 1154, column: 36, scope: !3672)
!3993 = !DILocation(line: 1154, column: 30, scope: !3672)
!3994 = !DILocation(line: 0, scope: !3672)
!3995 = !DILocation(line: 1155, column: 30, scope: !3672)
!3996 = !DILocation(line: 1156, column: 13, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1156, column: 13)
!3998 = !DILocation(line: 1157, column: 80, scope: !3997)
!3999 = !DILocation(line: 1157, column: 47, scope: !3997)
!4000 = !DILocation(line: 1157, column: 13, scope: !3997)
!4001 = !DILocation(line: 0, scope: !3997)
!4002 = !DILocation(line: 1161, column: 14, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1161, column: 13)
!4004 = !DILocation(line: 1163, column: 13, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1162, column: 9)
!4006 = !DILocation(line: 1164, column: 13, scope: !4005)
!4007 = !DILocation(line: 1165, column: 13, scope: !4005)
!4008 = !DILocation(line: 1166, column: 13, scope: !4005)
!4009 = !DILocation(line: 1167, column: 23, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 1167, column: 17)
!4011 = !DILocation(line: 1167, column: 30, scope: !4010)
!4012 = !DILocation(line: 1167, column: 17, scope: !4005)
!4013 = !DILocation(line: 1169, column: 17, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 1168, column: 13)
!4015 = !DILocation(line: 1170, column: 17, scope: !4014)
!4016 = !DILocation(line: 1171, column: 17, scope: !4014)
!4017 = !DILocation(line: 1172, column: 17, scope: !4014)
!4018 = !DILocation(line: 1173, column: 13, scope: !4014)
!4019 = !DILocation(line: 1177, column: 31, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1176, column: 9)
!4021 = !DILocation(line: 1178, column: 23, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 1178, column: 17)
!4023 = !DILocation(line: 1178, column: 30, scope: !4022)
!4024 = !DILocation(line: 1178, column: 17, scope: !4020)
!4025 = !DILocation(line: 1179, column: 35, scope: !4022)
!4026 = !DILocation(line: 1179, column: 17, scope: !4022)
!4027 = !DILocation(line: 1182, column: 19, scope: !3681)
!4028 = !DILocation(line: 1182, column: 26, scope: !3681)
!4029 = !DILocation(line: 1182, column: 13, scope: !3672)
!4030 = !DILocation(line: 1184, column: 37, scope: !3679)
!4031 = !DILocation(line: 1188, column: 38, scope: !3677)
!4032 = !DILocation(line: 0, scope: !3677)
!4033 = !DILocation(line: 1188, column: 32, scope: !3677)
!4034 = !DILocation(line: 1191, column: 57, scope: !3677)
!4035 = !DILocation(line: 1188, column: 57, scope: !3677)
!4036 = !DILocation(line: 1189, column: 75, scope: !3677)
!4037 = !DILocation(line: 1189, column: 27, scope: !3677)
!4038 = !DILocation(line: 1190, column: 75, scope: !3677)
!4039 = !DILocation(line: 1190, column: 27, scope: !3677)
!4040 = !DILocation(line: 1191, column: 75, scope: !3677)
!4041 = !DILocation(line: 1191, column: 27, scope: !3677)
!4042 = !DILocation(line: 1193, column: 13, scope: !3677)
!4043 = !DILocation(line: 0, scope: !3679)
!4044 = !DILocation(line: 1198, column: 1, scope: !3650)
!4045 = distinct !DISubprogram(name: "x264_macroblock_bipred_init", scope: !3, file: !3, line: 1201, type: !1851, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4046)
!4046 = !{!4047, !4048, !4050, !4053, !4056, !4058, !4061, !4062, !4063, !4064, !4067}
!4047 = !DILocalVariable(name: "h", arg: 1, scope: !4045, file: !3, line: 1201, type: !201)
!4048 = !DILocalVariable(name: "field", scope: !4049, file: !3, line: 1203, type: !173)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1203, column: 5)
!4050 = !DILocalVariable(name: "i_ref0", scope: !4051, file: !3, line: 1204, type: !173)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 1204, column: 9)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 1203, column: 5)
!4053 = !DILocalVariable(name: "poc0", scope: !4054, file: !3, line: 1206, type: !173)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 1205, column: 9)
!4055 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1204, column: 9)
!4056 = !DILocalVariable(name: "i_ref1", scope: !4057, file: !3, line: 1209, type: !173)
!4057 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 1209, column: 13)
!4058 = !DILocalVariable(name: "dist_scale_factor", scope: !4059, file: !3, line: 1211, type: !173)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 1210, column: 13)
!4060 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1209, column: 13)
!4061 = !DILocalVariable(name: "poc1", scope: !4059, file: !3, line: 1212, type: !173)
!4062 = !DILocalVariable(name: "cur_poc", scope: !4059, file: !3, line: 1215, type: !173)
!4063 = !DILocalVariable(name: "td", scope: !4059, file: !3, line: 1216, type: !173)
!4064 = !DILocalVariable(name: "tb", scope: !4065, file: !3, line: 1221, type: !173)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 1220, column: 17)
!4066 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1217, column: 21)
!4067 = !DILocalVariable(name: "tx", scope: !4065, file: !3, line: 1222, type: !173)
!4068 = !DILocation(line: 0, scope: !4045)
!4069 = !DILocation(line: 0, scope: !4049)
!4070 = !DILocation(line: 1203, column: 31, scope: !4052)
!4071 = !DILocation(line: 1203, column: 5, scope: !4049)
!4072 = !DILocation(line: 0, scope: !4051)
!4073 = !DILocation(line: 1204, column: 9, scope: !4051)
!4074 = !DILocation(line: 1206, column: 39, scope: !4054)
!4075 = !DILocation(line: 1206, column: 24, scope: !4054)
!4076 = !DILocation(line: 1206, column: 57, scope: !4054)
!4077 = !DILocation(line: 0, scope: !4054)
!4078 = !DILocation(line: 1207, column: 31, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 1207, column: 17)
!4080 = !DILocation(line: 1208, column: 31, scope: !4079)
!4081 = !DILocation(line: 1208, column: 22, scope: !4079)
!4082 = !DILocation(line: 1208, column: 17, scope: !4079)
!4083 = !DILocation(line: 0, scope: !4057)
!4084 = !DILocation(line: 1209, column: 13, scope: !4057)
!4085 = !DILocation(line: 1212, column: 43, scope: !4059)
!4086 = !DILocation(line: 1212, column: 28, scope: !4059)
!4087 = !DILocation(line: 1212, column: 61, scope: !4059)
!4088 = !DILocation(line: 0, scope: !4059)
!4089 = !DILocation(line: 1213, column: 35, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1213, column: 21)
!4091 = !DILocation(line: 1214, column: 35, scope: !4090)
!4092 = !DILocation(line: 1214, column: 26, scope: !4090)
!4093 = !DILocation(line: 1214, column: 21, scope: !4090)
!4094 = !DILocation(line: 0, scope: !1559, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 1216, column: 26, scope: !4059)
!4096 = !DILocation(line: 1217, column: 24, scope: !4066)
!4097 = !DILocation(line: 1217, column: 21, scope: !4059)
!4098 = !DILocation(line: 1216, column: 43, scope: !4059)
!4099 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !4095)
!4100 = !DILocation(line: 1215, column: 60, scope: !4059)
!4101 = !DILocation(line: 1215, column: 34, scope: !4059)
!4102 = !DILocation(line: 1215, column: 40, scope: !4059)
!4103 = !DILocation(line: 1215, column: 53, scope: !4059)
!4104 = !DILocation(line: 1215, column: 46, scope: !4059)
!4105 = !DILocation(line: 1221, column: 50, scope: !4065)
!4106 = !DILocation(line: 0, scope: !1559, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 1221, column: 30, scope: !4065)
!4108 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !4107)
!4109 = !DILocation(line: 0, scope: !4065)
!4110 = !DILocation(line: 1222, column: 40, scope: !4065)
!4111 = !DILocation(line: 1222, column: 48, scope: !4065)
!4112 = !DILocation(line: 1222, column: 55, scope: !4065)
!4113 = !DILocation(line: 1223, column: 57, scope: !4065)
!4114 = !DILocation(line: 1223, column: 62, scope: !4065)
!4115 = !DILocation(line: 1223, column: 68, scope: !4065)
!4116 = !DILocation(line: 0, scope: !1559, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 1223, column: 41, scope: !4065)
!4118 = !DILocation(line: 202, column: 14, scope: !1559, inlinedAt: !4117)
!4119 = !DILocation(line: 0, scope: !4066)
!4120 = !DILocation(line: 1226, column: 70, scope: !4059)
!4121 = !DILocation(line: 1226, column: 17, scope: !4059)
!4122 = !DILocation(line: 1226, column: 68, scope: !4059)
!4123 = !DILocation(line: 1228, column: 35, scope: !4059)
!4124 = !DILocation(line: 1230, column: 23, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1229, column: 21)
!4126 = !DILocation(line: 0, scope: !4125)
!4127 = !DILocation(line: 1209, column: 77, scope: !4060)
!4128 = !DILocation(line: 1209, column: 41, scope: !4060)
!4129 = distinct !{!4129, !4084, !4130}
!4130 = !DILocation(line: 1240, column: 13, scope: !4057)
!4131 = !DILocation(line: 1204, column: 73, scope: !4055)
!4132 = !DILocation(line: 1204, column: 37, scope: !4055)
!4133 = distinct !{!4133, !4073, !4134}
!4134 = !DILocation(line: 1241, column: 9, scope: !4051)
!4135 = !DILocation(line: 1203, column: 54, scope: !4052)
!4136 = distinct !{!4136, !4071, !4137}
!4137 = !DILocation(line: 1241, column: 9, scope: !4049)
!4138 = !DILocation(line: 1242, column: 1, scope: !4045)
