; ModuleID = 'x264_src/common/mvpred.c'
source_filename = "x264_src/common/mvpred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_mb_predict_mv(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %i_width, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #0 !dbg !134 {
entry:
    #dbg_value(ptr %h, !1425, !DIExpression(), !1442)
    #dbg_value(i32 %i_list, !1426, !DIExpression(), !1442)
    #dbg_value(i32 %idx, !1427, !DIExpression(), !1442)
    #dbg_value(i32 %i_width, !1428, !DIExpression(), !1442)
    #dbg_value(ptr %mvp, !1429, !DIExpression(), !1442)
  %idxprom = sext i32 %idx to i64, !dbg !1443
  %arrayidx = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !1443
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1443
    #dbg_value(i32 %0, !1430, !DIExpression(), !1442)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !1444
  %idxprom1 = sext i32 %i_list to i64, !dbg !1445
  %idxprom3 = sext i32 %0 to i64, !dbg !1445
  %arrayidx4 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom3, !dbg !1445
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !1445
    #dbg_value(i8 %1, !1431, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
  %sub = add nsw i32 %0, -1, !dbg !1446
  %idxprom10 = sext i32 %sub to i64, !dbg !1447
  %arrayidx11 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom10, !dbg !1447
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !1447
    #dbg_value(i8 %2, !1432, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !1448
  %arrayidx19 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom10, !dbg !1449
    #dbg_value(ptr %arrayidx19, !1433, !DIExpression(), !1442)
  %sub25 = add nsw i32 %0, -8, !dbg !1450
  %idxprom26 = sext i32 %sub25 to i64, !dbg !1451
  %arrayidx27 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom26, !dbg !1451
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !1451
    #dbg_value(i8 %3, !1434, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
  %arrayidx36 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom26, !dbg !1452
    #dbg_value(ptr %arrayidx36, !1435, !DIExpression(), !1442)
  %add = add nsw i32 %sub25, %i_width, !dbg !1453
  %idxprom44 = sext i32 %add to i64, !dbg !1454
  %arrayidx45 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom44, !dbg !1454
  %4 = load i8, ptr %arrayidx45, align 1, !dbg !1454
    #dbg_value(i8 %4, !1436, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
    #dbg_value(!DIArgList(ptr %mv, i64 %idxprom1, i64 %idxprom44), !1437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 160, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1442)
  %and = and i32 %idx, 3, !dbg !1455
  %and57 = and i32 %i_width, 1, !dbg !1457
  %add58 = or disjoint i32 %and57, 2, !dbg !1458
  %cmp = icmp uge i32 %and, %add58, !dbg !1459
  %cmp60 = icmp eq i8 %4, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp60, !dbg !1460
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1460

if.then:                                          ; preds = %entry
  %sub68 = add nsw i32 %0, -9, !dbg !1461
  %idxprom69 = sext i32 %sub68 to i64, !dbg !1463
  %arrayidx70 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom1, i64 %idxprom69, !dbg !1463
  %5 = load i8, ptr %arrayidx70, align 1, !dbg !1463
    #dbg_value(i8 %5, !1436, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
    #dbg_value(!DIArgList(ptr %mv, i64 %idxprom1, i64 %idxprom69), !1437, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 160, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1442)
  br label %if.end, !dbg !1464

if.end:                                           ; preds = %entry, %if.then
  %idxprom69.pn = phi i64 [ %idxprom69, %if.then ], [ %idxprom44, %entry ]
  %i_refc.0.in = phi i8 [ %5, %if.then ], [ %4, %entry ]
  %mv_c.0 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom1, i64 %idxprom69.pn, !dbg !1442
    #dbg_value(i8 %i_refc.0.in, !1436, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1442)
    #dbg_value(ptr %mv_c.0, !1437, !DIExpression(), !1442)
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !1465
  %6 = load i32, ptr %i_partition, align 4, !dbg !1465
  switch i32 %6, label %if.end118 [
    i32 14, label %if.then85
    i32 15, label %if.then103
  ], !dbg !1467

if.then85:                                        ; preds = %if.end
  %cmp86 = icmp eq i32 %idx, 0, !dbg !1468
  br i1 %cmp86, label %if.then88, label %if.else, !dbg !1471

if.then88:                                        ; preds = %if.then85
  %cmp89 = icmp eq i8 %3, %1, !dbg !1472
  br i1 %cmp89, label %if.then91, label %if.end118, !dbg !1475

if.then91:                                        ; preds = %if.then88
  %7 = load i32, ptr %arrayidx36, align 4, !dbg !1476
  store i32 %7, ptr %mvp, align 4, !dbg !1476
  br label %cleanup, !dbg !1478

if.else:                                          ; preds = %if.then85
  %cmp93 = icmp eq i8 %2, %1, !dbg !1479
  br i1 %cmp93, label %if.then95, label %if.end118, !dbg !1482

if.then95:                                        ; preds = %if.else
  %8 = load i32, ptr %arrayidx19, align 4, !dbg !1483
  store i32 %8, ptr %mvp, align 4, !dbg !1483
  br label %cleanup, !dbg !1485

if.then103:                                       ; preds = %if.end
  %cmp104 = icmp eq i32 %idx, 0, !dbg !1486
  br i1 %cmp104, label %if.then106, label %if.else111, !dbg !1490

if.then106:                                       ; preds = %if.then103
  %cmp107 = icmp eq i8 %2, %1, !dbg !1491
  br i1 %cmp107, label %if.then109, label %if.end118, !dbg !1494

if.then109:                                       ; preds = %if.then106
  %9 = load i32, ptr %arrayidx19, align 4, !dbg !1495
  store i32 %9, ptr %mvp, align 4, !dbg !1495
  br label %cleanup, !dbg !1497

if.else111:                                       ; preds = %if.then103
  %cmp112 = icmp eq i8 %i_refc.0.in, %1, !dbg !1498
  br i1 %cmp112, label %if.then114, label %if.end118, !dbg !1501

if.then114:                                       ; preds = %if.else111
  %10 = load i32, ptr %mv_c.0, align 4, !dbg !1502
  store i32 %10, ptr %mvp, align 4, !dbg !1502
  br label %cleanup, !dbg !1504

if.end118:                                        ; preds = %if.end, %if.else111, %if.then106, %if.then88, %if.else
  %cmp119 = icmp eq i8 %2, %1, !dbg !1505
  %conv120 = zext i1 %cmp119 to i32, !dbg !1505
  %cmp121 = icmp eq i8 %3, %1, !dbg !1506
  %conv122 = zext i1 %cmp121 to i32, !dbg !1506
  %add123 = add nuw nsw i32 %conv122, %conv120, !dbg !1507
  %cmp124 = icmp eq i8 %i_refc.0.in, %1, !dbg !1508
  %conv125 = zext i1 %cmp124 to i32, !dbg !1508
  %add126 = add nuw nsw i32 %add123, %conv125, !dbg !1509
    #dbg_value(i32 %add126, !1438, !DIExpression(), !1442)
  %cmp127 = icmp ugt i32 %add126, 1, !dbg !1510
  br i1 %cmp127, label %median, label %if.else130, !dbg !1511

median:                                           ; preds = %if.else144, %if.end118
    #dbg_label(!1439, !1512)
    #dbg_value(ptr %mvp, !1513, !DIExpression(), !1521)
    #dbg_value(ptr %arrayidx19, !1518, !DIExpression(), !1521)
    #dbg_value(ptr %arrayidx36, !1519, !DIExpression(), !1521)
    #dbg_value(ptr %mv_c.0, !1520, !DIExpression(), !1521)
  %11 = load i16, ptr %arrayidx19, align 2, !dbg !1523
  %conv.i = sext i16 %11 to i32, !dbg !1523
  %12 = load i16, ptr %arrayidx36, align 2, !dbg !1524
  %conv2.i = sext i16 %12 to i32, !dbg !1524
  %13 = load i16, ptr %mv_c.0, align 2, !dbg !1525
  %conv4.i = sext i16 %13 to i32, !dbg !1525
    #dbg_value(i32 %conv.i, !1526, !DIExpression(), !1534)
    #dbg_value(i32 %conv2.i, !1531, !DIExpression(), !1534)
    #dbg_value(i32 %conv4.i, !1532, !DIExpression(), !1534)
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1536
  %and.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0), !dbg !1537
    #dbg_value(i32 %and.i.i, !1533, !DIExpression(), !1534)
  %sub2.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 %conv2.i), !dbg !1538
    #dbg_value(i32 %sub2.i.i, !1526, !DIExpression(), !1534)
  %add.i.i = add nsw i32 %and.i.i, %conv2.i, !dbg !1539
    #dbg_value(i32 %add.i.i, !1531, !DIExpression(), !1534)
  %sub7.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i, i32 %conv4.i), !dbg !1540
    #dbg_value(i32 %sub7.i.i, !1531, !DIExpression(), !1534)
  %sub8.i.i = sub nsw i32 %sub2.i.i, %sub7.i.i, !dbg !1541
  %and11.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0), !dbg !1542
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i, !dbg !1543
    #dbg_value(i32 %add12.i.i, !1531, !DIExpression(), !1534)
  %conv5.i = trunc i32 %add12.i.i to i16, !dbg !1544
  store i16 %conv5.i, ptr %mvp, align 2, !dbg !1545
  %arrayidx7.i = getelementptr inbounds i8, ptr %arrayidx19, i64 2, !dbg !1546
  %14 = load i16, ptr %arrayidx7.i, align 2, !dbg !1546
  %conv8.i = sext i16 %14 to i32, !dbg !1546
  %arrayidx9.i = getelementptr inbounds i8, ptr %arrayidx36, i64 2, !dbg !1547
  %15 = load i16, ptr %arrayidx9.i, align 2, !dbg !1547
  %conv10.i = sext i16 %15 to i32, !dbg !1547
  %arrayidx11.i = getelementptr inbounds i8, ptr %mv_c.0, i64 2, !dbg !1548
  %16 = load i16, ptr %arrayidx11.i, align 2, !dbg !1548
  %conv12.i = sext i16 %16 to i32, !dbg !1548
    #dbg_value(i32 %conv8.i, !1526, !DIExpression(), !1549)
    #dbg_value(i32 %conv10.i, !1531, !DIExpression(), !1549)
    #dbg_value(i32 %conv12.i, !1532, !DIExpression(), !1549)
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i, !dbg !1551
  %and.i21.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0), !dbg !1552
    #dbg_value(i32 %and.i21.i, !1533, !DIExpression(), !1549)
  %sub2.i22.i = tail call i32 @llvm.smax.i32(i32 %conv8.i, i32 %conv10.i), !dbg !1553
    #dbg_value(i32 %sub2.i22.i, !1526, !DIExpression(), !1549)
  %add.i23.i = add nsw i32 %and.i21.i, %conv10.i, !dbg !1554
    #dbg_value(i32 %add.i23.i, !1531, !DIExpression(), !1549)
  %sub7.i24.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i, i32 %conv12.i), !dbg !1555
    #dbg_value(i32 %sub7.i24.i, !1531, !DIExpression(), !1549)
  %sub8.i25.i = sub nsw i32 %sub2.i22.i, %sub7.i24.i, !dbg !1556
  %and11.i26.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i, i32 0), !dbg !1557
  %add12.i27.i = add nsw i32 %and11.i26.i, %sub7.i24.i, !dbg !1558
    #dbg_value(i32 %add12.i27.i, !1531, !DIExpression(), !1549)
  %conv14.i = trunc i32 %add12.i27.i to i16, !dbg !1559
  %arrayidx15.i = getelementptr inbounds i8, ptr %mvp, i64 2, !dbg !1560
  store i16 %conv14.i, ptr %arrayidx15.i, align 2, !dbg !1561
  br label %cleanup, !dbg !1562

if.else130:                                       ; preds = %if.end118
  %cmp131 = icmp eq i32 %add126, 1, !dbg !1563
  br i1 %cmp131, label %if.then133, label %if.else144, !dbg !1565

if.then133:                                       ; preds = %if.else130
  br i1 %cmp119, label %if.then136, label %if.else137, !dbg !1566

if.then136:                                       ; preds = %if.then133
  %17 = load i32, ptr %arrayidx19, align 4, !dbg !1568
  store i32 %17, ptr %mvp, align 4, !dbg !1568
  br label %cleanup, !dbg !1568

if.else137:                                       ; preds = %if.then133
  br i1 %cmp121, label %if.then140, label %if.else141, !dbg !1570

if.then140:                                       ; preds = %if.else137
  %18 = load i32, ptr %arrayidx36, align 4, !dbg !1571
  store i32 %18, ptr %mvp, align 4, !dbg !1571
  br label %cleanup, !dbg !1571

if.else141:                                       ; preds = %if.else137
  %19 = load i32, ptr %mv_c.0, align 4, !dbg !1573
  store i32 %19, ptr %mvp, align 4, !dbg !1573
  br label %cleanup

if.else144:                                       ; preds = %if.else130
  %cmp145 = icmp eq i8 %3, -2, !dbg !1574
  %cmp147 = icmp eq i8 %i_refc.0.in, -2
  %or.cond164 = select i1 %cmp145, i1 %cmp147, i1 false, !dbg !1576
  %cmp150 = icmp ne i8 %2, -2
  %or.cond165 = select i1 %or.cond164, i1 %cmp150, i1 false, !dbg !1576
  br i1 %or.cond165, label %if.then152, label %median, !dbg !1576

if.then152:                                       ; preds = %if.else144
  %20 = load i32, ptr %arrayidx19, align 4, !dbg !1577
  store i32 %20, ptr %mvp, align 4, !dbg !1577
  br label %cleanup

cleanup:                                          ; preds = %median, %if.then136, %if.else141, %if.then140, %if.then152, %if.then114, %if.then109, %if.then95, %if.then91
  ret void, !dbg !1578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_16x16(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #1 !dbg !1579 {
entry:
    #dbg_value(ptr %h, !1583, !DIExpression(), !1597)
    #dbg_value(i32 %i_list, !1584, !DIExpression(), !1597)
    #dbg_value(i32 %i_ref, !1585, !DIExpression(), !1597)
    #dbg_value(ptr %mvp, !1586, !DIExpression(), !1597)
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !1598
  %idxprom = sext i32 %i_list to i64, !dbg !1599
  %arrayidx = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom, !dbg !1599
  %arrayidx1 = getelementptr inbounds i8, ptr %arrayidx, i64 11, !dbg !1599
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1599
  %conv = sext i8 %0 to i32, !dbg !1599
    #dbg_value(i32 %conv, !1587, !DIExpression(), !1597)
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !1600
  %arrayidx5 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, !dbg !1601
  %arrayidx6 = getelementptr inbounds i8, ptr %arrayidx5, i64 44, !dbg !1601
    #dbg_value(ptr %arrayidx6, !1588, !DIExpression(), !1597)
  %arrayidx12 = getelementptr inbounds i8, ptr %arrayidx, i64 4, !dbg !1602
  %1 = load i8, ptr %arrayidx12, align 4, !dbg !1602
  %conv13 = sext i8 %1 to i32, !dbg !1602
    #dbg_value(i32 %conv13, !1589, !DIExpression(), !1597)
  %arrayidx19 = getelementptr inbounds i8, ptr %arrayidx5, i64 16, !dbg !1603
    #dbg_value(ptr %arrayidx19, !1590, !DIExpression(), !1597)
  %arrayidx26 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1604
  %2 = load i8, ptr %arrayidx26, align 8, !dbg !1604
    #dbg_value(i8 %2, !1591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1597)
  %arrayidx33 = getelementptr inbounds i8, ptr %arrayidx5, i64 32, !dbg !1605
    #dbg_value(ptr %arrayidx33, !1592, !DIExpression(), !1597)
  %cmp = icmp eq i8 %2, -2, !dbg !1606
  br i1 %cmp, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %entry
  %arrayidx41 = getelementptr inbounds i8, ptr %arrayidx, i64 3, !dbg !1609
  %3 = load i8, ptr %arrayidx41, align 1, !dbg !1609
    #dbg_value(i8 %3, !1591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1597)
  %arrayidx48 = getelementptr inbounds i8, ptr %arrayidx5, i64 12, !dbg !1611
    #dbg_value(ptr %arrayidx48, !1592, !DIExpression(), !1597)
  br label %if.end, !dbg !1612

if.end:                                           ; preds = %if.then, %entry
  %mv_c.0 = phi ptr [ %arrayidx48, %if.then ], [ %arrayidx33, %entry ], !dbg !1597
  %i_refc.0.in = phi i8 [ %3, %if.then ], [ %2, %entry ]
  %i_refc.0 = sext i8 %i_refc.0.in to i32, !dbg !1597
    #dbg_value(i32 %i_refc.0, !1591, !DIExpression(), !1597)
    #dbg_value(ptr %mv_c.0, !1592, !DIExpression(), !1597)
  %cmp50 = icmp eq i32 %conv, %i_ref, !dbg !1613
  %conv51 = zext i1 %cmp50 to i32, !dbg !1613
  %cmp52 = icmp eq i32 %conv13, %i_ref, !dbg !1614
  %conv53 = zext i1 %cmp52 to i32, !dbg !1614
  %add = add nuw nsw i32 %conv53, %conv51, !dbg !1615
  %cmp54 = icmp eq i32 %i_refc.0, %i_ref, !dbg !1616
  %conv55 = zext i1 %cmp54 to i32, !dbg !1616
  %add56 = add nuw nsw i32 %add, %conv55, !dbg !1617
    #dbg_value(i32 %add56, !1593, !DIExpression(), !1597)
  %cmp57 = icmp ugt i32 %add56, 1, !dbg !1618
  br i1 %cmp57, label %median, label %if.else, !dbg !1619

median:                                           ; preds = %if.else73, %if.end
    #dbg_label(!1594, !1620)
    #dbg_value(ptr %mvp, !1513, !DIExpression(), !1621)
    #dbg_value(ptr %arrayidx6, !1518, !DIExpression(), !1621)
    #dbg_value(ptr %arrayidx19, !1519, !DIExpression(), !1621)
    #dbg_value(ptr %mv_c.0, !1520, !DIExpression(), !1621)
  %4 = load i16, ptr %arrayidx6, align 2, !dbg !1623
  %conv.i = sext i16 %4 to i32, !dbg !1623
  %5 = load i16, ptr %arrayidx19, align 2, !dbg !1624
  %conv2.i = sext i16 %5 to i32, !dbg !1624
  %6 = load i16, ptr %mv_c.0, align 2, !dbg !1625
  %conv4.i = sext i16 %6 to i32, !dbg !1625
    #dbg_value(i32 %conv.i, !1526, !DIExpression(), !1626)
    #dbg_value(i32 %conv2.i, !1531, !DIExpression(), !1626)
    #dbg_value(i32 %conv4.i, !1532, !DIExpression(), !1626)
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1628
  %and.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0), !dbg !1629
    #dbg_value(i32 %and.i.i, !1533, !DIExpression(), !1626)
  %sub2.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i, i32 %conv2.i), !dbg !1630
    #dbg_value(i32 %sub2.i.i, !1526, !DIExpression(), !1626)
  %add.i.i = add nsw i32 %and.i.i, %conv2.i, !dbg !1631
    #dbg_value(i32 %add.i.i, !1531, !DIExpression(), !1626)
  %sub7.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i, i32 %conv4.i), !dbg !1632
    #dbg_value(i32 %sub7.i.i, !1531, !DIExpression(), !1626)
  %sub8.i.i = sub nsw i32 %sub2.i.i, %sub7.i.i, !dbg !1633
  %and11.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0), !dbg !1634
  %add12.i.i = add nsw i32 %and11.i.i, %sub7.i.i, !dbg !1635
    #dbg_value(i32 %add12.i.i, !1531, !DIExpression(), !1626)
  %conv5.i = trunc i32 %add12.i.i to i16, !dbg !1636
  store i16 %conv5.i, ptr %mvp, align 2, !dbg !1637
  %arrayidx7.i = getelementptr inbounds i8, ptr %arrayidx5, i64 46, !dbg !1638
  %7 = load i16, ptr %arrayidx7.i, align 2, !dbg !1638
  %conv8.i = sext i16 %7 to i32, !dbg !1638
  %arrayidx9.i = getelementptr inbounds i8, ptr %arrayidx5, i64 18, !dbg !1639
  %8 = load i16, ptr %arrayidx9.i, align 2, !dbg !1639
  %conv10.i = sext i16 %8 to i32, !dbg !1639
  %arrayidx11.i = getelementptr inbounds i8, ptr %mv_c.0, i64 2, !dbg !1640
  %9 = load i16, ptr %arrayidx11.i, align 2, !dbg !1640
  %conv12.i = sext i16 %9 to i32, !dbg !1640
    #dbg_value(i32 %conv8.i, !1526, !DIExpression(), !1641)
    #dbg_value(i32 %conv10.i, !1531, !DIExpression(), !1641)
    #dbg_value(i32 %conv12.i, !1532, !DIExpression(), !1641)
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i, !dbg !1643
  %and.i21.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0), !dbg !1644
    #dbg_value(i32 %and.i21.i, !1533, !DIExpression(), !1641)
  %sub2.i22.i = tail call i32 @llvm.smax.i32(i32 %conv8.i, i32 %conv10.i), !dbg !1645
    #dbg_value(i32 %sub2.i22.i, !1526, !DIExpression(), !1641)
  %add.i23.i = add nsw i32 %and.i21.i, %conv10.i, !dbg !1646
    #dbg_value(i32 %add.i23.i, !1531, !DIExpression(), !1641)
  %sub7.i24.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i, i32 %conv12.i), !dbg !1647
    #dbg_value(i32 %sub7.i24.i, !1531, !DIExpression(), !1641)
  %sub8.i25.i = sub nsw i32 %sub2.i22.i, %sub7.i24.i, !dbg !1648
  %and11.i26.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i, i32 0), !dbg !1649
  %add12.i27.i = add nsw i32 %and11.i26.i, %sub7.i24.i, !dbg !1650
    #dbg_value(i32 %add12.i27.i, !1531, !DIExpression(), !1641)
  %conv14.i = trunc i32 %add12.i27.i to i16, !dbg !1651
  %arrayidx15.i = getelementptr inbounds i8, ptr %mvp, i64 2, !dbg !1652
  store i16 %conv14.i, ptr %arrayidx15.i, align 2, !dbg !1653
  br label %if.end85, !dbg !1654

if.else:                                          ; preds = %if.end
  %cmp60 = icmp eq i32 %add56, 1, !dbg !1655
  br i1 %cmp60, label %if.then62, label %if.else73, !dbg !1657

if.then62:                                        ; preds = %if.else
  br i1 %cmp50, label %if.then65, label %if.else66, !dbg !1658

if.then65:                                        ; preds = %if.then62
  %10 = load i32, ptr %arrayidx6, align 4, !dbg !1660
  store i32 %10, ptr %mvp, align 4, !dbg !1660
  br label %if.end85, !dbg !1660

if.else66:                                        ; preds = %if.then62
  br i1 %cmp52, label %if.then69, label %if.else70, !dbg !1662

if.then69:                                        ; preds = %if.else66
  %11 = load i32, ptr %arrayidx19, align 4, !dbg !1663
  store i32 %11, ptr %mvp, align 4, !dbg !1663
  br label %if.end85, !dbg !1663

if.else70:                                        ; preds = %if.else66
  %12 = load i32, ptr %mv_c.0, align 4, !dbg !1665
  store i32 %12, ptr %mvp, align 4, !dbg !1665
  br label %if.end85

if.else73:                                        ; preds = %if.else
  %cmp74 = icmp eq i8 %1, -2, !dbg !1666
  %cmp76 = icmp eq i8 %i_refc.0.in, -2
  %or.cond = and i1 %cmp74, %cmp76, !dbg !1668
  %cmp79 = icmp ne i8 %0, -2
  %or.cond86 = select i1 %or.cond, i1 %cmp79, i1 false, !dbg !1668
  br i1 %or.cond86, label %if.then81, label %median, !dbg !1668

if.then81:                                        ; preds = %if.else73
  %13 = load i32, ptr %arrayidx6, align 4, !dbg !1669
  store i32 %13, ptr %mvp, align 4, !dbg !1669
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.then69, %if.else70, %if.then65, %median
  ret void, !dbg !1670
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_pskip(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %mv) local_unnamed_addr #1 !dbg !1671 {
entry:
    #dbg_value(ptr %h, !1675, !DIExpression(), !1681)
    #dbg_value(ptr %mv, !1676, !DIExpression(), !1681)
  %arrayidx1 = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !1682
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1682
    #dbg_value(i8 %0, !1677, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1681)
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !1683
  %1 = load i8, ptr %arrayidx6, align 4, !dbg !1683
  %conv7 = sext i8 %1 to i32, !dbg !1683
    #dbg_value(i32 %conv7, !1678, !DIExpression(), !1681)
    #dbg_value(ptr %h, !1679, !DIExpression(DW_OP_plus_uconst, 25244, DW_OP_stack_value), !1681)
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 25216, !dbg !1684
    #dbg_value(ptr %arrayidx17, !1680, !DIExpression(), !1681)
  %cmp = icmp eq i8 %0, -2, !dbg !1685
  %cmp20 = icmp eq i8 %1, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp20, !dbg !1687
  br i1 %or.cond, label %if.then, label %lor.lhs.false22, !dbg !1687

lor.lhs.false22:                                  ; preds = %entry
  %conv = sext i8 %0 to i32, !dbg !1682
    #dbg_value(i32 %conv, !1677, !DIExpression(), !1681)
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25244, !dbg !1688
    #dbg_value(ptr %arrayidx12, !1679, !DIExpression(), !1681)
  %2 = load i32, ptr %arrayidx12, align 4, !dbg !1689
  %or = or i32 %2, %conv, !dbg !1690
  %tobool.not = icmp eq i32 %or, 0, !dbg !1690
  br i1 %tobool.not, label %if.then, label %lor.lhs.false23, !dbg !1691

lor.lhs.false23:                                  ; preds = %lor.lhs.false22
  %3 = load i32, ptr %arrayidx17, align 4, !dbg !1692
  %or24 = or i32 %3, %conv7, !dbg !1693
  %tobool25.not = icmp eq i32 %or24, 0, !dbg !1693
  br i1 %tobool25.not, label %if.then, label %if.else, !dbg !1694

if.then:                                          ; preds = %lor.lhs.false23, %lor.lhs.false22, %entry
  store i32 0, ptr %mv, align 4, !dbg !1695
  br label %if.end, !dbg !1697

if.else:                                          ; preds = %lor.lhs.false23
    #dbg_value(ptr %h, !1583, !DIExpression(), !1698)
    #dbg_value(i32 0, !1584, !DIExpression(), !1698)
    #dbg_value(i32 0, !1585, !DIExpression(), !1698)
    #dbg_value(ptr %mv, !1586, !DIExpression(), !1698)
    #dbg_value(i8 %0, !1587, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1698)
    #dbg_value(ptr %arrayidx12, !1588, !DIExpression(), !1698)
    #dbg_value(i8 %1, !1589, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1698)
    #dbg_value(ptr %arrayidx17, !1590, !DIExpression(), !1698)
  %arrayidx26.i = getelementptr inbounds i8, ptr %h, i64 25128, !dbg !1700
  %4 = load i8, ptr %arrayidx26.i, align 8, !dbg !1700
    #dbg_value(i8 %4, !1591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1698)
  %arrayidx33.i = getelementptr inbounds i8, ptr %h, i64 25232, !dbg !1701
    #dbg_value(ptr %arrayidx33.i, !1592, !DIExpression(), !1698)
  %cmp.i = icmp eq i8 %4, -2, !dbg !1702
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1703

if.then.i:                                        ; preds = %if.else
  %arrayidx41.i = getelementptr inbounds i8, ptr %h, i64 25123, !dbg !1704
  %5 = load i8, ptr %arrayidx41.i, align 1, !dbg !1704
    #dbg_value(i8 %5, !1591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1698)
  %arrayidx48.i = getelementptr inbounds i8, ptr %h, i64 25212, !dbg !1705
    #dbg_value(ptr %arrayidx48.i, !1592, !DIExpression(), !1698)
  br label %if.end.i, !dbg !1706

if.end.i:                                         ; preds = %if.then.i, %if.else
  %mv_c.0.i = phi ptr [ %arrayidx48.i, %if.then.i ], [ %arrayidx33.i, %if.else ], !dbg !1698
  %i_refc.0.in.i = phi i8 [ %5, %if.then.i ], [ %4, %if.else ]
    #dbg_value(i8 %i_refc.0.in.i, !1591, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1698)
    #dbg_value(ptr %mv_c.0.i, !1592, !DIExpression(), !1698)
  %cmp50.i = icmp eq i8 %0, 0, !dbg !1707
  %conv51.i = zext i1 %cmp50.i to i32, !dbg !1707
  %cmp52.i = icmp eq i8 %1, 0, !dbg !1708
  %conv53.i = zext i1 %cmp52.i to i32, !dbg !1708
  %add.i = add nuw nsw i32 %conv53.i, %conv51.i, !dbg !1709
  %cmp54.i = icmp eq i8 %i_refc.0.in.i, 0, !dbg !1710
  %conv55.i = zext i1 %cmp54.i to i32, !dbg !1710
  %add56.i = add nuw nsw i32 %add.i, %conv55.i, !dbg !1711
    #dbg_value(i32 %add56.i, !1593, !DIExpression(), !1698)
  %cmp60.i = icmp eq i32 %add56.i, 1
  br i1 %cmp60.i, label %if.then62.i, label %median.i, !dbg !1712

median.i:                                         ; preds = %if.end.i
    #dbg_label(!1594, !1713)
    #dbg_value(ptr %mv, !1513, !DIExpression(), !1714)
    #dbg_value(ptr %arrayidx12, !1518, !DIExpression(), !1714)
    #dbg_value(ptr %arrayidx17, !1519, !DIExpression(), !1714)
    #dbg_value(ptr %mv_c.0.i, !1520, !DIExpression(), !1714)
  %sext = shl i32 %2, 16, !dbg !1716
  %conv.i.i = ashr exact i32 %sext, 16, !dbg !1716
  %sext33 = shl i32 %3, 16, !dbg !1717
  %conv2.i.i = ashr exact i32 %sext33, 16, !dbg !1717
  %6 = load i16, ptr %mv_c.0.i, align 2, !dbg !1718
  %conv4.i.i = sext i16 %6 to i32, !dbg !1718
    #dbg_value(i32 %conv.i.i, !1526, !DIExpression(), !1719)
    #dbg_value(i32 %conv2.i.i, !1531, !DIExpression(), !1719)
    #dbg_value(i32 %conv4.i.i, !1532, !DIExpression(), !1719)
  %sub.i.i.i = sub nsw i32 %conv.i.i, %conv2.i.i, !dbg !1721
  %and.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 0), !dbg !1722
    #dbg_value(i32 %and.i.i.i, !1533, !DIExpression(), !1719)
  %sub2.i.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i.i, i32 %conv2.i.i), !dbg !1723
    #dbg_value(i32 %sub2.i.i.i, !1526, !DIExpression(), !1719)
  %add.i.i.i = add nsw i32 %and.i.i.i, %conv2.i.i, !dbg !1724
    #dbg_value(i32 %add.i.i.i, !1531, !DIExpression(), !1719)
  %sub7.i.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.i, i32 %conv4.i.i), !dbg !1725
    #dbg_value(i32 %sub7.i.i.i, !1531, !DIExpression(), !1719)
  %sub8.i.i.i = sub nsw i32 %sub2.i.i.i, %sub7.i.i.i, !dbg !1726
  %and11.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.i, i32 0), !dbg !1727
  %add12.i.i.i = add nsw i32 %and11.i.i.i, %sub7.i.i.i, !dbg !1728
    #dbg_value(i32 %add12.i.i.i, !1531, !DIExpression(), !1719)
  %conv5.i.i = trunc i32 %add12.i.i.i to i16, !dbg !1729
  store i16 %conv5.i.i, ptr %mv, align 2, !dbg !1730
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %h, i64 25246, !dbg !1731
  %7 = load i16, ptr %arrayidx7.i.i, align 2, !dbg !1731
  %conv8.i.i = sext i16 %7 to i32, !dbg !1731
  %arrayidx9.i.i = getelementptr inbounds i8, ptr %h, i64 25218, !dbg !1732
  %8 = load i16, ptr %arrayidx9.i.i, align 2, !dbg !1732
  %conv10.i.i = sext i16 %8 to i32, !dbg !1732
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %mv_c.0.i, i64 2, !dbg !1733
  %9 = load i16, ptr %arrayidx11.i.i, align 2, !dbg !1733
  %conv12.i.i = sext i16 %9 to i32, !dbg !1733
    #dbg_value(i32 %conv8.i.i, !1526, !DIExpression(), !1734)
    #dbg_value(i32 %conv10.i.i, !1531, !DIExpression(), !1734)
    #dbg_value(i32 %conv12.i.i, !1532, !DIExpression(), !1734)
  %sub.i20.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i, !dbg !1736
  %and.i21.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.i, i32 0), !dbg !1737
    #dbg_value(i32 %and.i21.i.i, !1533, !DIExpression(), !1734)
  %sub2.i22.i.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.i, i32 %conv10.i.i), !dbg !1738
    #dbg_value(i32 %sub2.i22.i.i, !1526, !DIExpression(), !1734)
  %add.i23.i.i = add nsw i32 %and.i21.i.i, %conv10.i.i, !dbg !1739
    #dbg_value(i32 %add.i23.i.i, !1531, !DIExpression(), !1734)
  %sub7.i24.i.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.i, i32 %conv12.i.i), !dbg !1740
    #dbg_value(i32 %sub7.i24.i.i, !1531, !DIExpression(), !1734)
  %sub8.i25.i.i = sub nsw i32 %sub2.i22.i.i, %sub7.i24.i.i, !dbg !1741
  %and11.i26.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.i, i32 0), !dbg !1742
  %add12.i27.i.i = add nsw i32 %and11.i26.i.i, %sub7.i24.i.i, !dbg !1743
    #dbg_value(i32 %add12.i27.i.i, !1531, !DIExpression(), !1734)
  %conv14.i.i = trunc i32 %add12.i27.i.i to i16, !dbg !1744
  %arrayidx15.i.i = getelementptr inbounds i8, ptr %mv, i64 2, !dbg !1745
  store i16 %conv14.i.i, ptr %arrayidx15.i.i, align 2, !dbg !1746
  br label %if.end, !dbg !1747

if.then62.i:                                      ; preds = %if.end.i
  br i1 %cmp50.i, label %if.then65.i, label %if.else66.i, !dbg !1748

if.then65.i:                                      ; preds = %if.then62.i
  store i32 %2, ptr %mv, align 4, !dbg !1749
  br label %if.end, !dbg !1749

if.else66.i:                                      ; preds = %if.then62.i
  br i1 %cmp52.i, label %if.then69.i, label %if.else70.i, !dbg !1750

if.then69.i:                                      ; preds = %if.else66.i
  store i32 %3, ptr %mv, align 4, !dbg !1751
  br label %if.end, !dbg !1751

if.else70.i:                                      ; preds = %if.else66.i
  %10 = load i32, ptr %mv_c.0.i, align 4, !dbg !1752
  store i32 %10, ptr %mv, align 4, !dbg !1752
  br label %if.end

if.end:                                           ; preds = %if.else70.i, %if.then69.i, %if.then65.i, %median.i, %if.then
  ret void, !dbg !1753
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_mb_predict_mv_direct16x16(ptr noundef %h, ptr noundef writeonly %b_changed) local_unnamed_addr #2 !dbg !1754 {
entry:
    #dbg_value(ptr %h, !1758, !DIExpression(), !1767)
    #dbg_value(ptr %b_changed, !1759, !DIExpression(), !1767)
  %i_direct_mv_pred = getelementptr inbounds i8, ptr %h, i64 404, !dbg !1768
  %0 = load i32, ptr %i_direct_mv_pred, align 4, !dbg !1768
  %cmp = icmp eq i32 %0, 0, !dbg !1770
  br i1 %cmp, label %cleanup376, label %if.else, !dbg !1771

if.else:                                          ; preds = %entry
  %b_direct_spatial_mv_pred = getelementptr inbounds i8, ptr %h, i64 7304, !dbg !1772
  %1 = load i32, ptr %b_direct_spatial_mv_pred, align 8, !dbg !1772
  %tobool.not = icmp eq i32 %1, 0, !dbg !1774
  %i_mb_xy.i482 = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !1775
  %2 = load i32, ptr %i_mb_xy.i482, align 8, !dbg !1775
  %idxprom.i483 = sext i32 %2 to i64, !dbg !1775
  br i1 %tobool.not, label %if.else2, label %if.then1, !dbg !1776

if.then1:                                         ; preds = %if.else
    #dbg_value(ptr %h, !1777, !DIExpression(), !1821)
  %fref1.i = getelementptr inbounds i8, ptr %h, i64 14864, !dbg !1823
  %3 = load ptr, ptr %fref1.i, align 16, !dbg !1824
  %ref1.i = getelementptr inbounds i8, ptr %3, i64 6712, !dbg !1825
  %4 = load ptr, ptr %ref1.i, align 8, !dbg !1824
  %i_b8_xy.i = getelementptr inbounds i8, ptr %h, i64 16396, !dbg !1826
  %5 = load i32, ptr %i_b8_xy.i, align 4, !dbg !1826
  %idxprom.i = sext i32 %5 to i64, !dbg !1824
    #dbg_value(ptr %arrayidx3.i, !1786, !DIExpression(), !1821)
  %arrayidx7.i = getelementptr inbounds i8, ptr %3, i64 6720, !dbg !1827
  %6 = load ptr, ptr %arrayidx7.i, align 8, !dbg !1827
    #dbg_value(ptr %arrayidx11.i, !1789, !DIExpression(), !1821)
  %mv14.i = getelementptr inbounds i8, ptr %3, i64 3552, !dbg !1828
  %7 = load ptr, ptr %mv14.i, align 16, !dbg !1829
  %i_b4_xy.i = getelementptr inbounds i8, ptr %h, i64 16400, !dbg !1830
  %8 = load i32, ptr %i_b4_xy.i, align 16, !dbg !1830
    #dbg_value(!DIArgList(ptr %7, i64 %idxprom17.i), !1790, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1821)
  %arrayidx22.i = getelementptr inbounds i8, ptr %3, i64 3560, !dbg !1831
  %9 = load ptr, ptr %arrayidx22.i, align 8, !dbg !1831
    #dbg_value(!DIArgList(ptr %9, i64 %idxprom17.i), !1790, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1821)
  %mb_type.i = getelementptr inbounds i8, ptr %3, i64 3536, !dbg !1832
  %10 = load ptr, ptr %mb_type.i, align 16, !dbg !1832
  %arrayidx31.i = getelementptr inbounds i8, ptr %10, i64 %idxprom.i483, !dbg !1833
  %11 = load i8, ptr %arrayidx31.i, align 1, !dbg !1833
    #dbg_value(i8 %11, !1792, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1821)
  %mb_partition.i = getelementptr inbounds i8, ptr %3, i64 3544, !dbg !1834
  %12 = load ptr, ptr %mb_partition.i, align 8, !dbg !1834
  %arrayidx37.i = getelementptr inbounds i8, ptr %12, i64 %idxprom.i483, !dbg !1835
  %13 = load i8, ptr %arrayidx37.i, align 1, !dbg !1835
  %conv38.i = zext i8 %13 to i32, !dbg !1835
    #dbg_value(i32 %conv38.i, !1793, !DIExpression(), !1821)
  %i_partition.i = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !1836
  store i32 %conv38.i, ptr %i_partition.i, align 4, !dbg !1837
    #dbg_value(i32 0, !1794, !DIExpression(), !1838)
  %mv49.i = getelementptr inbounds i8, ptr %h, i64 25200
    #dbg_value(i64 0, !1794, !DIExpression(), !1838)
  %arrayidx45.i = getelementptr inbounds i8, ptr %h, i64 25131, !dbg !1839
  %14 = load i8, ptr %arrayidx45.i, align 1, !dbg !1839
  %conv46.i = sext i8 %14 to i32, !dbg !1839
    #dbg_value(i32 %conv46.i, !1796, !DIExpression(), !1840)
  %arrayidx52.i = getelementptr inbounds i8, ptr %h, i64 25244, !dbg !1841
    #dbg_value(ptr %arrayidx52.i, !1799, !DIExpression(), !1840)
  %arrayidx58.i = getelementptr inbounds i8, ptr %h, i64 25124, !dbg !1842
  %15 = load i8, ptr %arrayidx58.i, align 4, !dbg !1842
  %conv59.i = sext i8 %15 to i32, !dbg !1842
    #dbg_value(i32 %conv59.i, !1800, !DIExpression(), !1840)
  %arrayidx65.i = getelementptr inbounds i8, ptr %h, i64 25216, !dbg !1843
    #dbg_value(ptr %arrayidx65.i, !1801, !DIExpression(), !1840)
  %arrayidx72.i = getelementptr inbounds i8, ptr %h, i64 25128, !dbg !1844
  %16 = load i8, ptr %arrayidx72.i, align 8, !dbg !1844
    #dbg_value(i8 %16, !1802, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1840)
  %arrayidx79.i = getelementptr inbounds i8, ptr %h, i64 25232, !dbg !1845
    #dbg_value(ptr %arrayidx79.i, !1803, !DIExpression(), !1840)
  %cmp81.i = icmp eq i8 %16, -2, !dbg !1846
  br i1 %cmp81.i, label %if.then.i, label %if.end.i, !dbg !1848

if.then.i:                                        ; preds = %if.then1
  %arrayidx88.i = getelementptr inbounds i8, ptr %h, i64 25123, !dbg !1849
  %17 = load i8, ptr %arrayidx88.i, align 1, !dbg !1849
    #dbg_value(i8 %17, !1802, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1840)
  %arrayidx95.i = getelementptr inbounds i8, ptr %h, i64 25212, !dbg !1851
    #dbg_value(ptr %arrayidx95.i, !1803, !DIExpression(), !1840)
  br label %if.end.i, !dbg !1852

if.end.i:                                         ; preds = %if.then.i, %if.then1
  %mv_c.0.i = phi ptr [ %arrayidx95.i, %if.then.i ], [ %arrayidx79.i, %if.then1 ], !dbg !1840
  %i_refc.0.in.i = phi i8 [ %17, %if.then.i ], [ %16, %if.then1 ]
  %i_refc.0.i = sext i8 %i_refc.0.in.i to i32, !dbg !1840
    #dbg_value(i32 %i_refc.0.i, !1802, !DIExpression(), !1840)
    #dbg_value(ptr %mv_c.0.i, !1803, !DIExpression(), !1840)
  %cond.i = tail call i32 @llvm.umin.i32(i32 %conv59.i, i32 %i_refc.0.i), !dbg !1853
  %conv46.cond.i = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %conv46.i), !dbg !1853
    #dbg_value(i32 %conv46.cond.i, !1804, !DIExpression(), !1840)
  %cmp111.i = icmp slt i32 %conv46.cond.i, 0, !dbg !1854
  br i1 %cmp111.i, label %if.end151.i, label %if.else.i, !dbg !1855

if.else.i:                                        ; preds = %if.end.i
  %cmp117.i = icmp uge i32 %cond.i, %conv46.i, !dbg !1856
  %conv118.i = zext i1 %cmp117.i to i32, !dbg !1856
  %cmp119.i = icmp eq i32 %conv46.cond.i, %conv59.i, !dbg !1857
  %conv120.i = zext i1 %cmp119.i to i32, !dbg !1857
  %add.i = add nuw nsw i32 %conv120.i, %conv118.i, !dbg !1858
  %cmp121.i = icmp eq i32 %conv46.cond.i, %i_refc.0.i, !dbg !1859
  %conv122.i = zext i1 %cmp121.i to i32, !dbg !1859
  %add123.i = add nuw nsw i32 %add.i, %conv122.i, !dbg !1860
    #dbg_value(i32 %add123.i, !1805, !DIExpression(), !1861)
  %cmp124.i = icmp ugt i32 %add123.i, 1, !dbg !1862
  br i1 %cmp124.i, label %if.then126.i, label %if.else130.i, !dbg !1864

if.then126.i:                                     ; preds = %if.else.i
    #dbg_value(ptr undef, !1513, !DIExpression(), !1865)
    #dbg_value(ptr %arrayidx52.i, !1518, !DIExpression(), !1865)
    #dbg_value(ptr %arrayidx65.i, !1519, !DIExpression(), !1865)
    #dbg_value(ptr %mv_c.0.i, !1520, !DIExpression(), !1865)
  %18 = load i16, ptr %arrayidx52.i, align 2, !dbg !1867
  %conv.i.i = sext i16 %18 to i32, !dbg !1867
  %19 = load i16, ptr %arrayidx65.i, align 2, !dbg !1868
  %conv2.i.i = sext i16 %19 to i32, !dbg !1868
  %20 = load i16, ptr %mv_c.0.i, align 2, !dbg !1869
  %conv4.i.i = sext i16 %20 to i32, !dbg !1869
    #dbg_value(i32 %conv.i.i, !1526, !DIExpression(), !1870)
    #dbg_value(i32 %conv2.i.i, !1531, !DIExpression(), !1870)
    #dbg_value(i32 %conv4.i.i, !1532, !DIExpression(), !1870)
  %sub.i.i.i = sub nsw i32 %conv.i.i, %conv2.i.i, !dbg !1872
  %and.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 0), !dbg !1873
    #dbg_value(i32 %and.i.i.i, !1533, !DIExpression(), !1870)
  %sub2.i.i.i = tail call i32 @llvm.smax.i32(i32 %conv.i.i, i32 %conv2.i.i), !dbg !1874
    #dbg_value(i32 %sub2.i.i.i, !1526, !DIExpression(), !1870)
  %add.i.i.i = add nsw i32 %and.i.i.i, %conv2.i.i, !dbg !1875
    #dbg_value(i32 %add.i.i.i, !1531, !DIExpression(), !1870)
  %sub7.i.i.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.i, i32 %conv4.i.i), !dbg !1876
    #dbg_value(i32 %sub7.i.i.i, !1531, !DIExpression(), !1870)
  %sub8.i.i.i = sub nsw i32 %sub2.i.i.i, %sub7.i.i.i, !dbg !1877
  %and11.i.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.i, i32 0), !dbg !1878
  %add12.i.i.i = add nsw i32 %and11.i.i.i, %sub7.i.i.i, !dbg !1879
    #dbg_value(i32 %add12.i.i.i, !1531, !DIExpression(), !1870)
    #dbg_value(i32 %add12.i.i.i, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1821)
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %h, i64 25246, !dbg !1880
  %21 = load i16, ptr %arrayidx7.i.i, align 2, !dbg !1880
  %conv8.i.i = sext i16 %21 to i32, !dbg !1880
  %arrayidx9.i.i = getelementptr inbounds i8, ptr %h, i64 25218, !dbg !1881
  %22 = load i16, ptr %arrayidx9.i.i, align 2, !dbg !1881
  %conv10.i.i = sext i16 %22 to i32, !dbg !1881
  %arrayidx11.i.i = getelementptr inbounds i8, ptr %mv_c.0.i, i64 2, !dbg !1882
  %23 = load i16, ptr %arrayidx11.i.i, align 2, !dbg !1882
  %conv12.i.i = sext i16 %23 to i32, !dbg !1882
    #dbg_value(i32 %conv8.i.i, !1526, !DIExpression(), !1883)
    #dbg_value(i32 %conv10.i.i, !1531, !DIExpression(), !1883)
    #dbg_value(i32 %conv12.i.i, !1532, !DIExpression(), !1883)
  %sub.i20.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i, !dbg !1885
  %and.i21.i.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.i, i32 0), !dbg !1886
    #dbg_value(i32 %and.i21.i.i, !1533, !DIExpression(), !1883)
  %sub2.i22.i.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.i, i32 %conv10.i.i), !dbg !1887
    #dbg_value(i32 %sub2.i22.i.i, !1526, !DIExpression(), !1883)
  %add.i23.i.i = add nsw i32 %and.i21.i.i, %conv10.i.i, !dbg !1888
    #dbg_value(i32 %add.i23.i.i, !1531, !DIExpression(), !1883)
  %sub7.i24.i.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.i, i32 %conv12.i.i), !dbg !1889
    #dbg_value(i32 %sub7.i24.i.i, !1531, !DIExpression(), !1883)
  %sub8.i25.i.i = sub nsw i32 %sub2.i22.i.i, %sub7.i24.i.i, !dbg !1890
  %and11.i26.i.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.i, i32 0), !dbg !1891
  %add12.i27.i.i = add nsw i32 %and11.i26.i.i, %sub7.i24.i.i, !dbg !1892
    #dbg_value(i32 %add12.i27.i.i, !1531, !DIExpression(), !1883)
  %conv14.i.i = trunc i32 %add12.i27.i.i to i16, !dbg !1893
    #dbg_value(i16 %conv14.i.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1821)
  br label %if.end151.i, !dbg !1894

if.else130.i:                                     ; preds = %if.else.i
  br i1 %cmp117.i, label %if.then133.i, label %if.else137.i, !dbg !1895

if.then133.i:                                     ; preds = %if.else130.i
  %24 = load i32, ptr %arrayidx52.i, align 4, !dbg !1897
    #dbg_value(i32 %24, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1821)
  %mv.sroa.0.sroa.9.0.extract.shift498.i = lshr i32 %24, 16, !dbg !1897
  %mv.sroa.0.sroa.9.0.extract.trunc499.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift498.i to i16, !dbg !1897
    #dbg_value(i16 %mv.sroa.0.sroa.9.0.extract.trunc499.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1821)
  br label %if.end151.i, !dbg !1897

if.else137.i:                                     ; preds = %if.else130.i
  br i1 %cmp119.i, label %if.then140.i, label %if.else144.i, !dbg !1899

if.then140.i:                                     ; preds = %if.else137.i
  %25 = load i32, ptr %arrayidx65.i, align 4, !dbg !1900
    #dbg_value(i32 %25, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1821)
  %mv.sroa.0.sroa.9.0.extract.shift496.i = lshr i32 %25, 16, !dbg !1900
  %mv.sroa.0.sroa.9.0.extract.trunc497.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift496.i to i16, !dbg !1900
    #dbg_value(i16 %mv.sroa.0.sroa.9.0.extract.trunc497.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1821)
  br label %if.end151.i, !dbg !1900

if.else144.i:                                     ; preds = %if.else137.i
  %26 = load i32, ptr %mv_c.0.i, align 4, !dbg !1902
    #dbg_value(i32 %26, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !1821)
  %mv.sroa.0.sroa.9.0.extract.shift.i = lshr i32 %26, 16, !dbg !1902
  %mv.sroa.0.sroa.9.0.extract.trunc.i = trunc nuw i32 %mv.sroa.0.sroa.9.0.extract.shift.i to i16, !dbg !1902
    #dbg_value(i16 %mv.sroa.0.sroa.9.0.extract.trunc.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1821)
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else144.i, %if.then140.i, %if.then133.i, %if.then126.i, %if.end.i
  %mv.sroa.0.sroa.9.0.i = phi i16 [ %conv14.i.i, %if.then126.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc499.i, %if.then133.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc497.i, %if.then140.i ], [ %mv.sroa.0.sroa.9.0.extract.trunc.i, %if.else144.i ], [ 0, %if.end.i ], !dbg !1903
  %mv.sroa.0.sroa.0.0.i = phi i32 [ %add12.i.i.i, %if.then126.i ], [ %24, %if.then133.i ], [ %25, %if.then140.i ], [ %26, %if.else144.i ], [ 0, %if.end.i ], !dbg !1903
  %i_ref.0.i = phi i32 [ %conv46.cond.i, %if.then126.i ], [ %conv46.cond.i, %if.then133.i ], [ %conv59.i, %if.then140.i ], [ %conv46.cond.i, %if.else144.i ], [ -1, %if.end.i ], !dbg !1840
    #dbg_value(i16 poison, !1784, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1821)
    #dbg_value(i16 %mv.sroa.0.sroa.9.0.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1821)
    #dbg_value(i32 %i_ref.0.i, !1804, !DIExpression(), !1840)
    #dbg_value(ptr %h, !1904, !DIExpression(), !1917)
    #dbg_value(i32 0, !1910, !DIExpression(), !1917)
    #dbg_value(i32 0, !1911, !DIExpression(), !1917)
    #dbg_value(i32 4, !1912, !DIExpression(), !1917)
    #dbg_value(i32 4, !1913, !DIExpression(), !1917)
    #dbg_value(i64 0, !1914, !DIExpression(), !1917)
    #dbg_value(i32 %i_ref.0.i, !1915, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1917)
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !1919
    #dbg_value(ptr %arrayidx4.i.i, !1916, !DIExpression(), !1917)
  %conv.i404.i = and i32 %i_ref.0.i, 255, !dbg !1920
    #dbg_value(ptr %arrayidx4.i.i, !1922, !DIExpression(), !1935)
    #dbg_value(i32 4, !1927, !DIExpression(), !1935)
    #dbg_value(i32 4, !1928, !DIExpression(), !1935)
    #dbg_value(i32 1, !1929, !DIExpression(), !1935)
    #dbg_value(i32 %conv.i404.i, !1930, !DIExpression(), !1935)
    #dbg_value(ptr %arrayidx4.i.i, !1931, !DIExpression(), !1935)
    #dbg_value(i32 %i_ref.0.i, !1932, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1935)
  %cond14.i.i.i = mul nuw i32 %conv.i404.i, 16843009, !dbg !1937
    #dbg_value(i32 %cond14.i.i.i, !1933, !DIExpression(), !1935)
    #dbg_value(i32 %cond14.i.i.i, !1934, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !1935)
    #dbg_value(i32 8, !1929, !DIExpression(), !1935)
  store i32 %cond14.i.i.i, ptr %arrayidx4.i.i, align 4, !dbg !1938
  %add.ptr49.i.i.i = getelementptr inbounds i8, ptr %h, i64 25140, !dbg !1942
  store i32 %cond14.i.i.i, ptr %add.ptr49.i.i.i, align 4, !dbg !1943
  %add.ptr56.i.i.i = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !1944
  store i32 %cond14.i.i.i, ptr %add.ptr56.i.i.i, align 4, !dbg !1945
  %add.ptr59.i.i.i = getelementptr inbounds i8, ptr %h, i64 25156, !dbg !1946
  store i32 %cond14.i.i.i, ptr %add.ptr59.i.i.i, align 4, !dbg !1947
  %mv.sroa.0.sroa.9.0.insert.ext.i = zext i16 %mv.sroa.0.sroa.9.0.i to i32, !dbg !1948
  %mv.sroa.0.sroa.9.0.insert.shift.i = shl nuw i32 %mv.sroa.0.sroa.9.0.insert.ext.i, 16, !dbg !1948
  %mv.sroa.0.sroa.0.0.insert.ext.i = and i32 %mv.sroa.0.sroa.0.0.i, 65535, !dbg !1948
  %mv.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %mv.sroa.0.sroa.9.0.insert.shift.i, %mv.sroa.0.sroa.0.0.insert.ext.i, !dbg !1948
    #dbg_value(ptr %h, !1953, !DIExpression(), !1962)
    #dbg_value(i32 0, !1954, !DIExpression(), !1962)
    #dbg_value(i32 0, !1955, !DIExpression(), !1962)
    #dbg_value(i32 4, !1956, !DIExpression(), !1962)
    #dbg_value(i32 4, !1957, !DIExpression(), !1962)
    #dbg_value(i64 0, !1958, !DIExpression(), !1962)
    #dbg_value(i32 %mv.sroa.0.sroa.0.0.insert.insert.i, !1959, !DIExpression(), !1962)
  %arrayidx4.i407.i = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !1948
    #dbg_value(ptr %arrayidx4.i407.i, !1960, !DIExpression(), !1962)
    #dbg_value(ptr %arrayidx4.i407.i, !1922, !DIExpression(), !1963)
    #dbg_value(i32 16, !1927, !DIExpression(), !1963)
    #dbg_value(i32 4, !1928, !DIExpression(), !1963)
    #dbg_value(i32 4, !1929, !DIExpression(), !1963)
    #dbg_value(i32 %mv.sroa.0.sroa.0.0.insert.insert.i, !1930, !DIExpression(), !1963)
    #dbg_value(ptr %arrayidx4.i407.i, !1931, !DIExpression(), !1963)
    #dbg_value(i32 %mv.sroa.0.sroa.0.0.insert.insert.i, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1963)
    #dbg_value(i32 %mv.sroa.0.sroa.0.0.insert.insert.i, !1933, !DIExpression(), !1963)
  %conv15.i.i408.i = zext i32 %mv.sroa.0.sroa.0.0.insert.insert.i to i64, !dbg !1966
  %add.i.i409.i = mul nuw i64 %conv15.i.i408.i, 4294967297, !dbg !1967
    #dbg_value(i64 %add.i.i409.i, !1934, !DIExpression(), !1963)
    #dbg_value(i32 32, !1929, !DIExpression(), !1963)
  store i64 %add.i.i409.i, ptr %arrayidx4.i407.i, align 8, !dbg !1968
  %add.ptr95.i.i.i = getelementptr inbounds i8, ptr %h, i64 25256, !dbg !1975
  store i64 %add.i.i409.i, ptr %add.ptr95.i.i.i, align 8, !dbg !1976
  %add.ptr98.i.i.i = getelementptr inbounds i8, ptr %h, i64 25280, !dbg !1977
  store i64 %add.i.i409.i, ptr %add.ptr98.i.i.i, align 8, !dbg !1978
  %add.ptr103.i.i.i = getelementptr inbounds i8, ptr %h, i64 25288, !dbg !1979
  store i64 %add.i.i409.i, ptr %add.ptr103.i.i.i, align 8, !dbg !1980
    #dbg_value(i32 2, !1928, !DIExpression(), !1963)
  %add.ptr106.i.i.i = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !1981
    #dbg_value(ptr %add.ptr106.i.i.i, !1931, !DIExpression(), !1963)
  store i64 %add.i.i409.i, ptr %add.ptr106.i.i.i, align 8, !dbg !1968
  %add.ptr95.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25320, !dbg !1975
  store i64 %add.i.i409.i, ptr %add.ptr95.i.i.1.i, align 8, !dbg !1976
  %add.ptr98.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25344, !dbg !1977
  store i64 %add.i.i409.i, ptr %add.ptr98.i.i.1.i, align 8, !dbg !1978
  %add.ptr103.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25352, !dbg !1979
  store i64 %add.i.i409.i, ptr %add.ptr103.i.i.1.i, align 8, !dbg !1980
    #dbg_value(i32 0, !1928, !DIExpression(), !1963)
    #dbg_value(ptr %add.ptr106.i.i.i, !1931, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !1963)
    #dbg_value(i32 %i_ref.0.i, !1782, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !1821)
    #dbg_value(i64 1, !1794, !DIExpression(), !1838)
  %arrayidx45.1.i = getelementptr inbounds i8, ptr %h, i64 25171, !dbg !1839
  %27 = load i8, ptr %arrayidx45.1.i, align 1, !dbg !1839
  %conv46.1.i = sext i8 %27 to i32, !dbg !1839
    #dbg_value(i32 %conv46.1.i, !1796, !DIExpression(), !1840)
  %arrayidx52.1.i = getelementptr inbounds i8, ptr %h, i64 25404, !dbg !1841
    #dbg_value(ptr %arrayidx52.1.i, !1799, !DIExpression(), !1840)
  %arrayidx58.1.i = getelementptr inbounds i8, ptr %h, i64 25164, !dbg !1842
  %28 = load i8, ptr %arrayidx58.1.i, align 4, !dbg !1842
  %conv59.1.i = sext i8 %28 to i32, !dbg !1842
    #dbg_value(i32 %conv59.1.i, !1800, !DIExpression(), !1840)
  %arrayidx65.1.i = getelementptr inbounds i8, ptr %h, i64 25376, !dbg !1843
    #dbg_value(ptr %arrayidx65.1.i, !1801, !DIExpression(), !1840)
  %arrayidx72.1.i = getelementptr inbounds i8, ptr %h, i64 25168, !dbg !1844
  %29 = load i8, ptr %arrayidx72.1.i, align 8, !dbg !1844
    #dbg_value(i8 %29, !1802, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1840)
  %arrayidx79.1.i = getelementptr inbounds i8, ptr %h, i64 25392, !dbg !1845
    #dbg_value(ptr %arrayidx79.1.i, !1803, !DIExpression(), !1840)
  %cmp81.1.i = icmp eq i8 %29, -2, !dbg !1846
  br i1 %cmp81.1.i, label %if.then.1.i, label %if.end.1.i, !dbg !1848

if.then.1.i:                                      ; preds = %if.end151.i
  %arrayidx88.1.i = getelementptr inbounds i8, ptr %h, i64 25163, !dbg !1849
  %30 = load i8, ptr %arrayidx88.1.i, align 1, !dbg !1849
    #dbg_value(i8 %30, !1802, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1840)
  %arrayidx95.1.i = getelementptr inbounds i8, ptr %h, i64 25372, !dbg !1851
    #dbg_value(ptr %arrayidx95.1.i, !1803, !DIExpression(), !1840)
  br label %if.end.1.i, !dbg !1852

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end151.i
  %mv_c.0.1.i = phi ptr [ %arrayidx95.1.i, %if.then.1.i ], [ %arrayidx79.1.i, %if.end151.i ], !dbg !1840
  %i_refc.0.in.1.i = phi i8 [ %30, %if.then.1.i ], [ %29, %if.end151.i ]
  %i_refc.0.1.i = sext i8 %i_refc.0.in.1.i to i32, !dbg !1840
    #dbg_value(i32 %i_refc.0.1.i, !1802, !DIExpression(), !1840)
    #dbg_value(ptr %mv_c.0.1.i, !1803, !DIExpression(), !1840)
  %cond.1.i = tail call i32 @llvm.umin.i32(i32 %conv59.1.i, i32 %i_refc.0.1.i), !dbg !1853
  %conv46.cond.1.i = tail call i32 @llvm.umin.i32(i32 %cond.1.i, i32 %conv46.1.i), !dbg !1853
    #dbg_value(i32 %conv46.cond.1.i, !1804, !DIExpression(), !1840)
  %cmp111.1.i = icmp slt i32 %conv46.cond.1.i, 0, !dbg !1854
  br i1 %cmp111.1.i, label %if.end151.1.i, label %if.else.1.i, !dbg !1855

if.else.1.i:                                      ; preds = %if.end.1.i
  %cmp117.1.i = icmp uge i32 %cond.1.i, %conv46.1.i, !dbg !1856
  %conv118.1.i = zext i1 %cmp117.1.i to i32, !dbg !1856
  %cmp119.1.i = icmp eq i32 %conv46.cond.1.i, %conv59.1.i, !dbg !1857
  %conv120.1.i = zext i1 %cmp119.1.i to i32, !dbg !1857
  %add.1.i = add nuw nsw i32 %conv120.1.i, %conv118.1.i, !dbg !1858
  %cmp121.1.i = icmp eq i32 %conv46.cond.1.i, %i_refc.0.1.i, !dbg !1859
  %conv122.1.i = zext i1 %cmp121.1.i to i32, !dbg !1859
  %add123.1.i = add nuw nsw i32 %add.1.i, %conv122.1.i, !dbg !1860
    #dbg_value(i32 %add123.1.i, !1805, !DIExpression(), !1861)
  %cmp124.1.i = icmp ugt i32 %add123.1.i, 1, !dbg !1862
  br i1 %cmp124.1.i, label %if.then126.1.i, label %if.else130.1.i, !dbg !1864

if.else130.1.i:                                   ; preds = %if.else.1.i
  br i1 %cmp117.1.i, label %if.then133.1.i, label %if.else137.1.i, !dbg !1895

if.else137.1.i:                                   ; preds = %if.else130.1.i
  br i1 %cmp119.1.i, label %if.then140.1.i, label %if.else144.1.i, !dbg !1899

if.else144.1.i:                                   ; preds = %if.else137.1.i
  %31 = load i32, ptr %mv_c.0.1.i, align 4, !dbg !1902
    #dbg_value(i32 %31, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1821)
  %mv.sroa.11.sroa.9.0.extract.shift.i = lshr i32 %31, 16, !dbg !1902
  %mv.sroa.11.sroa.9.0.extract.trunc.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift.i to i16, !dbg !1902
    #dbg_value(i16 %mv.sroa.11.sroa.9.0.extract.trunc.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1821)
  br label %if.end151.1.i

if.then140.1.i:                                   ; preds = %if.else137.1.i
  %32 = load i32, ptr %arrayidx65.1.i, align 4, !dbg !1900
    #dbg_value(i32 %32, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1821)
  %mv.sroa.11.sroa.9.0.extract.shift483.i = lshr i32 %32, 16, !dbg !1900
  %mv.sroa.11.sroa.9.0.extract.trunc484.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift483.i to i16, !dbg !1900
    #dbg_value(i16 %mv.sroa.11.sroa.9.0.extract.trunc484.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1821)
  br label %if.end151.1.i, !dbg !1900

if.then133.1.i:                                   ; preds = %if.else130.1.i
  %33 = load i32, ptr %arrayidx52.1.i, align 4, !dbg !1897
    #dbg_value(i32 %33, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1821)
  %mv.sroa.11.sroa.9.0.extract.shift485.i = lshr i32 %33, 16, !dbg !1897
  %mv.sroa.11.sroa.9.0.extract.trunc486.i = trunc nuw i32 %mv.sroa.11.sroa.9.0.extract.shift485.i to i16, !dbg !1897
    #dbg_value(i16 %mv.sroa.11.sroa.9.0.extract.trunc486.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1821)
  br label %if.end151.1.i, !dbg !1897

if.then126.1.i:                                   ; preds = %if.else.1.i
    #dbg_value(ptr undef, !1513, !DIExpression(), !1865)
    #dbg_value(ptr %arrayidx52.1.i, !1518, !DIExpression(), !1865)
    #dbg_value(ptr %arrayidx65.1.i, !1519, !DIExpression(), !1865)
    #dbg_value(ptr %mv_c.0.1.i, !1520, !DIExpression(), !1865)
  %34 = load i16, ptr %arrayidx52.1.i, align 2, !dbg !1867
  %conv.i.1.i = sext i16 %34 to i32, !dbg !1867
  %35 = load i16, ptr %arrayidx65.1.i, align 2, !dbg !1868
  %conv2.i.1.i = sext i16 %35 to i32, !dbg !1868
  %36 = load i16, ptr %mv_c.0.1.i, align 2, !dbg !1869
  %conv4.i.1.i = sext i16 %36 to i32, !dbg !1869
    #dbg_value(i32 %conv.i.1.i, !1526, !DIExpression(), !1870)
    #dbg_value(i32 %conv2.i.1.i, !1531, !DIExpression(), !1870)
    #dbg_value(i32 %conv4.i.1.i, !1532, !DIExpression(), !1870)
  %sub.i.i.1.i = sub nsw i32 %conv.i.1.i, %conv2.i.1.i, !dbg !1872
  %and.i.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub.i.i.1.i, i32 0), !dbg !1873
    #dbg_value(i32 %and.i.i.1.i, !1533, !DIExpression(), !1870)
  %sub2.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %conv.i.1.i, i32 %conv2.i.1.i), !dbg !1874
    #dbg_value(i32 %sub2.i.i.1.i, !1526, !DIExpression(), !1870)
  %add.i.i.1.i = add nsw i32 %and.i.i.1.i, %conv2.i.1.i, !dbg !1875
    #dbg_value(i32 %add.i.i.1.i, !1531, !DIExpression(), !1870)
  %sub7.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %add.i.i.1.i, i32 %conv4.i.1.i), !dbg !1876
    #dbg_value(i32 %sub7.i.i.1.i, !1531, !DIExpression(), !1870)
  %sub8.i.i.1.i = sub nsw i32 %sub2.i.i.1.i, %sub7.i.i.1.i, !dbg !1877
  %and11.i.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.1.i, i32 0), !dbg !1878
  %add12.i.i.1.i = add nsw i32 %and11.i.i.1.i, %sub7.i.i.1.i, !dbg !1879
    #dbg_value(i32 %add12.i.i.1.i, !1531, !DIExpression(), !1870)
    #dbg_value(i32 %add12.i.i.1.i, !1784, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 16), !1821)
  %arrayidx7.i.1.i = getelementptr inbounds i8, ptr %h, i64 25406, !dbg !1880
  %37 = load i16, ptr %arrayidx7.i.1.i, align 2, !dbg !1880
  %conv8.i.1.i = sext i16 %37 to i32, !dbg !1880
  %arrayidx9.i.1.i = getelementptr inbounds i8, ptr %h, i64 25378, !dbg !1881
  %38 = load i16, ptr %arrayidx9.i.1.i, align 2, !dbg !1881
  %conv10.i.1.i = sext i16 %38 to i32, !dbg !1881
  %arrayidx11.i.1.i = getelementptr inbounds i8, ptr %mv_c.0.1.i, i64 2, !dbg !1882
  %39 = load i16, ptr %arrayidx11.i.1.i, align 2, !dbg !1882
  %conv12.i.1.i = sext i16 %39 to i32, !dbg !1882
    #dbg_value(i32 %conv8.i.1.i, !1526, !DIExpression(), !1883)
    #dbg_value(i32 %conv10.i.1.i, !1531, !DIExpression(), !1883)
    #dbg_value(i32 %conv12.i.1.i, !1532, !DIExpression(), !1883)
  %sub.i20.i.1.i = sub nsw i32 %conv8.i.1.i, %conv10.i.1.i, !dbg !1885
  %and.i21.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.1.i, i32 0), !dbg !1886
    #dbg_value(i32 %and.i21.i.1.i, !1533, !DIExpression(), !1883)
  %sub2.i22.i.1.i = tail call i32 @llvm.smax.i32(i32 %conv8.i.1.i, i32 %conv10.i.1.i), !dbg !1887
    #dbg_value(i32 %sub2.i22.i.1.i, !1526, !DIExpression(), !1883)
  %add.i23.i.1.i = add nsw i32 %and.i21.i.1.i, %conv10.i.1.i, !dbg !1888
    #dbg_value(i32 %add.i23.i.1.i, !1531, !DIExpression(), !1883)
  %sub7.i24.i.1.i = tail call i32 @llvm.smax.i32(i32 %add.i23.i.1.i, i32 %conv12.i.1.i), !dbg !1889
    #dbg_value(i32 %sub7.i24.i.1.i, !1531, !DIExpression(), !1883)
  %sub8.i25.i.1.i = sub nsw i32 %sub2.i22.i.1.i, %sub7.i24.i.1.i, !dbg !1890
  %and11.i26.i.1.i = tail call i32 @llvm.smin.i32(i32 %sub8.i25.i.1.i, i32 0), !dbg !1891
  %add12.i27.i.1.i = add nsw i32 %and11.i26.i.1.i, %sub7.i24.i.1.i, !dbg !1892
    #dbg_value(i32 %add12.i27.i.1.i, !1531, !DIExpression(), !1883)
  %conv14.i.1.i = trunc i32 %add12.i27.i.1.i to i16, !dbg !1893
    #dbg_value(i16 %conv14.i.1.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1821)
  br label %if.end151.1.i, !dbg !1894

if.end151.1.i:                                    ; preds = %if.then126.1.i, %if.then133.1.i, %if.then140.1.i, %if.else144.1.i, %if.end.1.i
  %mv.sroa.11.sroa.9.0.i = phi i16 [ %conv14.i.1.i, %if.then126.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc486.i, %if.then133.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc484.i, %if.then140.1.i ], [ %mv.sroa.11.sroa.9.0.extract.trunc.i, %if.else144.1.i ], [ 0, %if.end.1.i ], !dbg !1903
  %mv.sroa.11.sroa.0.0.i = phi i32 [ %add12.i.i.1.i, %if.then126.1.i ], [ %33, %if.then133.1.i ], [ %32, %if.then140.1.i ], [ %31, %if.else144.1.i ], [ 0, %if.end.1.i ], !dbg !1903
  %i_ref.0.1.i = phi i32 [ %conv46.cond.1.i, %if.then126.1.i ], [ %conv46.cond.1.i, %if.then133.1.i ], [ %conv59.1.i, %if.then140.1.i ], [ %conv46.cond.1.i, %if.else144.1.i ], [ -1, %if.end.1.i ], !dbg !1840
    #dbg_value(i16 poison, !1784, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !1821)
    #dbg_value(i16 %mv.sroa.11.sroa.9.0.i, !1784, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !1821)
    #dbg_value(i32 %i_ref.0.1.i, !1804, !DIExpression(), !1840)
    #dbg_value(ptr %h, !1904, !DIExpression(), !1917)
    #dbg_value(i32 0, !1910, !DIExpression(), !1917)
    #dbg_value(i32 0, !1911, !DIExpression(), !1917)
    #dbg_value(i32 4, !1912, !DIExpression(), !1917)
    #dbg_value(i32 4, !1913, !DIExpression(), !1917)
    #dbg_value(i64 1, !1914, !DIExpression(), !1917)
    #dbg_value(i32 %i_ref.0.1.i, !1915, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !1917)
  %arrayidx4.i.1.i = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !1919
    #dbg_value(ptr %arrayidx4.i.1.i, !1916, !DIExpression(), !1917)
  %conv.i404.1.i = and i32 %i_ref.0.1.i, 255, !dbg !1920
    #dbg_value(ptr %arrayidx4.i.1.i, !1922, !DIExpression(), !1935)
    #dbg_value(i32 4, !1927, !DIExpression(), !1935)
    #dbg_value(i32 4, !1928, !DIExpression(), !1935)
    #dbg_value(i32 1, !1929, !DIExpression(), !1935)
    #dbg_value(i32 %conv.i404.1.i, !1930, !DIExpression(), !1935)
    #dbg_value(ptr %arrayidx4.i.1.i, !1931, !DIExpression(), !1935)
    #dbg_value(i32 %i_ref.0.1.i, !1932, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value), !1935)
  %cond14.i.i.1.i = mul nuw i32 %conv.i404.1.i, 16843009, !dbg !1937
    #dbg_value(i32 %cond14.i.i.1.i, !1933, !DIExpression(), !1935)
    #dbg_value(i32 %cond14.i.i.1.i, !1934, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !1935)
    #dbg_value(i32 8, !1929, !DIExpression(), !1935)
  store i32 %cond14.i.i.1.i, ptr %arrayidx4.i.1.i, align 4, !dbg !1938
  %add.ptr49.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25180, !dbg !1942
  store i32 %cond14.i.i.1.i, ptr %add.ptr49.i.i.1.i, align 4, !dbg !1943
  %add.ptr56.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !1944
  store i32 %cond14.i.i.1.i, ptr %add.ptr56.i.i.1.i, align 4, !dbg !1945
  %add.ptr59.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25196, !dbg !1946
  store i32 %cond14.i.i.1.i, ptr %add.ptr59.i.i.1.i, align 4, !dbg !1947
  %mv.sroa.11.sroa.9.0.insert.ext487.i = zext i16 %mv.sroa.11.sroa.9.0.i to i32, !dbg !1948
  %mv.sroa.11.sroa.9.0.insert.shift488.i = shl nuw i32 %mv.sroa.11.sroa.9.0.insert.ext487.i, 16, !dbg !1948
  %mv.sroa.11.sroa.0.0.insert.ext480.i = and i32 %mv.sroa.11.sroa.0.0.i, 65535, !dbg !1948
  %mv.sroa.11.sroa.0.0.insert.insert482.i = or disjoint i32 %mv.sroa.11.sroa.9.0.insert.shift488.i, %mv.sroa.11.sroa.0.0.insert.ext480.i, !dbg !1948
    #dbg_value(ptr %h, !1953, !DIExpression(), !1962)
    #dbg_value(i32 0, !1954, !DIExpression(), !1962)
    #dbg_value(i32 0, !1955, !DIExpression(), !1962)
    #dbg_value(i32 4, !1956, !DIExpression(), !1962)
    #dbg_value(i32 4, !1957, !DIExpression(), !1962)
    #dbg_value(i64 1, !1958, !DIExpression(), !1962)
    #dbg_value(i32 %mv.sroa.11.sroa.0.0.insert.insert482.i, !1959, !DIExpression(), !1962)
  %arrayidx4.i407.1.i = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !1948
    #dbg_value(ptr %arrayidx4.i407.1.i, !1960, !DIExpression(), !1962)
    #dbg_value(ptr %arrayidx4.i407.1.i, !1922, !DIExpression(), !1963)
    #dbg_value(i32 16, !1927, !DIExpression(), !1963)
    #dbg_value(i32 4, !1928, !DIExpression(), !1963)
    #dbg_value(i32 4, !1929, !DIExpression(), !1963)
    #dbg_value(i32 %mv.sroa.11.sroa.0.0.insert.insert482.i, !1930, !DIExpression(), !1963)
    #dbg_value(ptr %arrayidx4.i407.1.i, !1931, !DIExpression(), !1963)
    #dbg_value(i32 %mv.sroa.11.sroa.0.0.insert.insert482.i, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1963)
    #dbg_value(i32 %mv.sroa.11.sroa.0.0.insert.insert482.i, !1933, !DIExpression(), !1963)
  %conv15.i.i408.1.i = zext i32 %mv.sroa.11.sroa.0.0.insert.insert482.i to i64, !dbg !1966
  %add.i.i409.1.i = mul nuw i64 %conv15.i.i408.1.i, 4294967297, !dbg !1967
    #dbg_value(i64 %add.i.i409.1.i, !1934, !DIExpression(), !1963)
    #dbg_value(i32 32, !1929, !DIExpression(), !1963)
  store i64 %add.i.i409.1.i, ptr %arrayidx4.i407.1.i, align 8, !dbg !1968
  %add.ptr95.i.i.1474.i = getelementptr inbounds i8, ptr %h, i64 25416, !dbg !1975
  store i64 %add.i.i409.1.i, ptr %add.ptr95.i.i.1474.i, align 8, !dbg !1976
  %add.ptr98.i.i.1475.i = getelementptr inbounds i8, ptr %h, i64 25440, !dbg !1977
  store i64 %add.i.i409.1.i, ptr %add.ptr98.i.i.1475.i, align 8, !dbg !1978
  %add.ptr103.i.i.1476.i = getelementptr inbounds i8, ptr %h, i64 25448, !dbg !1979
  store i64 %add.i.i409.1.i, ptr %add.ptr103.i.i.1476.i, align 8, !dbg !1980
    #dbg_value(i32 2, !1928, !DIExpression(), !1963)
  %add.ptr106.i.i.1.i = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !1981
    #dbg_value(ptr %add.ptr106.i.i.1.i, !1931, !DIExpression(), !1963)
  store i64 %add.i.i409.1.i, ptr %add.ptr106.i.i.1.i, align 8, !dbg !1968
  %add.ptr95.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25480, !dbg !1975
  store i64 %add.i.i409.1.i, ptr %add.ptr95.i.i.1.1.i, align 8, !dbg !1976
  %add.ptr98.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25504, !dbg !1977
  store i64 %add.i.i409.1.i, ptr %add.ptr98.i.i.1.1.i, align 8, !dbg !1978
  %add.ptr103.i.i.1.1.i = getelementptr inbounds i8, ptr %h, i64 25512, !dbg !1979
  store i64 %add.i.i409.1.i, ptr %add.ptr103.i.i.1.1.i, align 8, !dbg !1980
    #dbg_value(i32 0, !1928, !DIExpression(), !1963)
    #dbg_value(ptr %add.ptr106.i.i.1.i, !1931, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !1963)
    #dbg_value(i32 %i_ref.0.1.i, !1782, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !1821)
    #dbg_value(i64 2, !1794, !DIExpression(), !1838)
  %arrayidx3.i = getelementptr inbounds i8, ptr %4, i64 %idxprom.i, !dbg !1824
  %arrayidx11.i = getelementptr inbounds i8, ptr %6, i64 %idxprom.i, !dbg !1827
  %idxprom17.i = sext i32 %8 to i64, !dbg !1829
  %40 = trunc nsw i32 %i_ref.0.1.i to i16, !dbg !1982
  %ref.sroa.5.0.insert.ext.i = shl nsw i16 %40, 8, !dbg !1982
  %41 = trunc nsw i32 %i_ref.0.i to i16, !dbg !1982
  %ref.sroa.0.0.insert.ext.i = and i16 %41, 128, !dbg !1982
  %ref.sroa.5.0.insert.ext.masked.i = and i16 %ref.sroa.5.0.insert.ext.i, -32768, !dbg !1982
  %42 = or disjoint i16 %ref.sroa.5.0.insert.ext.masked.i, %ref.sroa.0.0.insert.ext.i, !dbg !1982
  %cmp161.i = icmp eq i16 %42, -32640, !dbg !1984
  br i1 %cmp161.i, label %if.then163.i, label %if.end164.i, !dbg !1985

if.then163.i:                                     ; preds = %if.end151.1.i
    #dbg_value(ptr %h, !1904, !DIExpression(), !1986)
    #dbg_value(i32 0, !1910, !DIExpression(), !1986)
    #dbg_value(i32 0, !1911, !DIExpression(), !1986)
    #dbg_value(i32 4, !1912, !DIExpression(), !1986)
    #dbg_value(i32 4, !1913, !DIExpression(), !1986)
    #dbg_value(i32 0, !1914, !DIExpression(), !1986)
    #dbg_value(i8 0, !1915, !DIExpression(), !1986)
    #dbg_value(ptr %arrayidx4.i.i, !1916, !DIExpression(), !1986)
    #dbg_value(ptr %arrayidx4.i.i, !1922, !DIExpression(), !1989)
    #dbg_value(i32 4, !1927, !DIExpression(), !1989)
    #dbg_value(i32 4, !1928, !DIExpression(), !1989)
    #dbg_value(i32 0, !1930, !DIExpression(), !1989)
    #dbg_value(ptr %arrayidx4.i.i, !1931, !DIExpression(), !1989)
    #dbg_value(i16 0, !1932, !DIExpression(), !1989)
    #dbg_value(i32 0, !1933, !DIExpression(), !1989)
    #dbg_value(i64 0, !1934, !DIExpression(), !1989)
    #dbg_value(i32 8, !1929, !DIExpression(), !1989)
  store i32 0, ptr %arrayidx4.i.i, align 4, !dbg !1991
  store i32 0, ptr %add.ptr49.i.i.i, align 4, !dbg !1992
  store i32 0, ptr %add.ptr56.i.i.i, align 4, !dbg !1993
  store i32 0, ptr %add.ptr59.i.i.i, align 4, !dbg !1994
    #dbg_value(ptr %h, !1904, !DIExpression(), !1995)
    #dbg_value(i32 0, !1910, !DIExpression(), !1995)
    #dbg_value(i32 0, !1911, !DIExpression(), !1995)
    #dbg_value(i32 4, !1912, !DIExpression(), !1995)
    #dbg_value(i32 4, !1913, !DIExpression(), !1995)
    #dbg_value(i32 1, !1914, !DIExpression(), !1995)
    #dbg_value(i8 0, !1915, !DIExpression(), !1995)
    #dbg_value(ptr %arrayidx4.i.1.i, !1916, !DIExpression(), !1995)
    #dbg_value(ptr %arrayidx4.i.1.i, !1922, !DIExpression(), !1997)
    #dbg_value(i32 4, !1927, !DIExpression(), !1997)
    #dbg_value(i32 4, !1928, !DIExpression(), !1997)
    #dbg_value(i32 0, !1930, !DIExpression(), !1997)
    #dbg_value(ptr %arrayidx4.i.1.i, !1931, !DIExpression(), !1997)
    #dbg_value(i16 0, !1932, !DIExpression(), !1997)
    #dbg_value(i32 0, !1933, !DIExpression(), !1997)
    #dbg_value(i64 0, !1934, !DIExpression(), !1997)
    #dbg_value(i32 8, !1929, !DIExpression(), !1997)
  store i32 0, ptr %arrayidx4.i.1.i, align 4, !dbg !1999
  store i32 0, ptr %add.ptr49.i.i.1.i, align 4, !dbg !2000
  store i32 0, ptr %add.ptr56.i.i.1.i, align 4, !dbg !2001
  store i32 0, ptr %add.ptr59.i.i.1.i, align 4, !dbg !2002
  br label %if.end4, !dbg !2003

if.end164.i:                                      ; preds = %if.end151.1.i
  %i_threads.i = getelementptr inbounds i8, ptr %h, i64 4, !dbg !2004
  %43 = load i32, ptr %i_threads.i, align 4, !dbg !2004
  %cmp165.i = icmp sgt i32 %43, 1, !dbg !2006
  br i1 %cmp165.i, label %land.lhs.true.i, label %if.end183.i, !dbg !2007

land.lhs.true.i:                                  ; preds = %if.end164.i
  %conv169.i = sext i16 %mv.sroa.0.sroa.9.0.i to i32, !dbg !2008
  %arrayidx171.i = getelementptr inbounds i8, ptr %h, i64 16468, !dbg !2009
  %44 = load i32, ptr %arrayidx171.i, align 4, !dbg !2009
  %cmp172.i = icmp slt i32 %44, %conv169.i, !dbg !2010
  %conv176.i = sext i16 %mv.sroa.11.sroa.9.0.i to i32
  %cmp180.i = icmp slt i32 %44, %conv176.i
  %or.cond.i = select i1 %cmp172.i, i1 true, i1 %cmp180.i, !dbg !2011
  br i1 %or.cond.i, label %cleanup376, label %if.end183.i, !dbg !2011

if.end183.i:                                      ; preds = %land.lhs.true.i, %if.end164.i
  %mv.sroa.11.0.insert.shift.i = shl nuw i64 %conv15.i.i408.1.i, 32, !dbg !2012
  %mv.sroa.0.0.insert.insert.i = or disjoint i64 %mv.sroa.11.0.insert.shift.i, %conv15.i.i408.i, !dbg !2012
  %tobool.i = icmp eq i64 %mv.sroa.0.0.insert.insert.i, 0, !dbg !2012
  %45 = icmp ult i8 %11, 4, !dbg !2014
  %or.cond307.i = select i1 %tobool.i, i1 true, i1 %45, !dbg !2014
  br i1 %or.cond307.i, label %if.end4, label %lor.lhs.false197.i, !dbg !2014

lor.lhs.false197.i:                               ; preds = %if.end183.i
  %tobool200.i = icmp ne i32 %i_ref.0.i, 0, !dbg !2015
  %tobool204.i = icmp ne i32 %i_ref.0.1.i, 0
  %or.cond308.i = select i1 %tobool200.i, i1 %tobool204.i, i1 false, !dbg !2016
  br i1 %or.cond308.i, label %if.end4, label %if.end206.i, !dbg !2016

if.end206.i:                                      ; preds = %lor.lhs.false197.i
  %sub.i = sub nsw i32 16, %conv38.i, !dbg !2017
  %add207.i = sub nsw i32 17, %conv38.i, !dbg !2018
    #dbg_value(i32 %add207.i, !1808, !DIExpression(), !1821)
  %cmp208.i = icmp eq i8 %13, 14, !dbg !2019
  %add210.i = select i1 %cmp208.i, i32 2, i32 1, !dbg !2020
    #dbg_value(i32 %add210.i, !1809, !DIExpression(), !1821)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !1821)
  %shr214.i = ashr i32 %sub.i, 1, !dbg !2021
  %shr215.i = lshr i32 4, %shr214.i, !dbg !2022
    #dbg_value(i32 %shr215.i, !1811, !DIExpression(), !1821)
    #dbg_value(i32 0, !1812, !DIExpression(), !2023)
  %cmp217471.i = icmp ult i8 %13, 17, !dbg !2024
  br i1 %cmp217471.i, label %for.body220.lr.ph.i, label %if.end4, !dbg !2025

for.body220.lr.ph.i:                              ; preds = %if.end206.i
  %and212.i = and i32 %sub.i, 1, !dbg !2026
    #dbg_value(!DIArgList(i32 4, i32 %and212.i), !1810, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !1821)
  %shr.i = lshr exact i32 4, %and212.i, !dbg !2027
    #dbg_value(i32 %shr.i, !1810, !DIExpression(), !1821)
  %i_b8_stride.i = getelementptr inbounds i8, ptr %h, i64 16376
  %i_b4_stride.i = getelementptr inbounds i8, ptr %h, i64 16380
  %cmp271.i = icmp eq i32 %i_ref.0.i, 0
  %mul5.i.i = shl nuw nsw i32 %shr.i, 2
  %46 = add nsw i32 %mul5.i.i, -2
  %47 = tail call i32 @llvm.fshl.i32(i32 2, i32 %46, i32 31)
  %cmp67.i.i.i = icmp eq i32 %shr214.i, 2
  %cmp74.i.i.i = icmp eq i32 %shr214.i, 1
  %cmp279.i = icmp eq i32 %i_ref.0.1.i, 0
  %48 = add nsw i32 %shr215.i, -2, !dbg !2025
  %49 = lshr i32 %48, 1, !dbg !2025
  %50 = add nuw i32 %49, 1, !dbg !2025
  %xtraiter = and i32 %50, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %51 = icmp ult i32 %48, 14
  %xtraiter569 = and i32 %50, 7
  %lcmp.mod570.not = icmp eq i32 %xtraiter569, 0
  %52 = icmp ult i32 %48, 14
  br label %for.body220.i, !dbg !2025

for.body220.i:                                    ; preds = %cleanup.i, %for.body220.lr.ph.i
  %i8.0472.i = phi i32 [ 0, %for.body220.lr.ph.i ], [ %add291.i, %cleanup.i ]
    #dbg_value(i32 %i8.0472.i, !1812, !DIExpression(), !2023)
  %and221.i = and i32 %i8.0472.i, 1, !dbg !2028
    #dbg_value(i32 %and221.i, !1814, !DIExpression(), !2029)
  %shr222.i = lshr i32 %i8.0472.i, 1, !dbg !2030
    #dbg_value(i32 %shr222.i, !1817, !DIExpression(), !2029)
  %53 = load i32, ptr %i_b8_stride.i, align 8, !dbg !2031
  %mul.i = mul nsw i32 %53, %shr222.i, !dbg !2032
  %add224.i = add nsw i32 %mul.i, %and221.i, !dbg !2033
    #dbg_value(i32 %add224.i, !1818, !DIExpression(), !2029)
  %54 = load i32, ptr %i_b4_stride.i, align 4, !dbg !2034
  %mul226.i = mul nsw i32 %54, %shr222.i, !dbg !2035
  %add227.i = add nsw i32 %mul226.i, %and221.i, !dbg !2036
  %mul228.i = mul nsw i32 %add227.i, 3, !dbg !2037
    #dbg_value(i32 %mul228.i, !1819, !DIExpression(), !2029)
  %idxprom229.i = sext i32 %add224.i to i64, !dbg !2038
  %arrayidx230.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 %idxprom229.i, !dbg !2038
  %55 = load i8, ptr %arrayidx230.i, align 1, !dbg !2038
  %cmp232.i = icmp eq i8 %55, 0, !dbg !2040
  br i1 %cmp232.i, label %if.end250.i, label %if.else235.i, !dbg !2041

if.else235.i:                                     ; preds = %for.body220.i
  %cmp239.i = icmp slt i8 %55, 0, !dbg !2042
  br i1 %cmp239.i, label %land.lhs.true241.i, label %cleanup.i, !dbg !2044

land.lhs.true241.i:                               ; preds = %if.else235.i
  %arrayidx243.i = getelementptr inbounds i8, ptr %arrayidx11.i, i64 %idxprom229.i, !dbg !2045
  %56 = load i8, ptr %arrayidx243.i, align 1, !dbg !2045
  %cmp245.i = icmp eq i8 %56, 0, !dbg !2046
  br i1 %cmp245.i, label %if.end250.i, label %cleanup.i, !dbg !2047

if.end250.i:                                      ; preds = %land.lhs.true241.i, %for.body220.i
  %.pn.i = phi ptr [ %7, %for.body220.i ], [ %9, %land.lhs.true241.i ]
  %idx.0.sroa.phi.sroa.speculated.i = getelementptr inbounds [2 x i16], ptr %.pn.i, i64 %idxprom17.i, !dbg !2048
    #dbg_value(i64 poison, !1820, !DIExpression(), !2029)
  %idxprom253.i = sext i32 %mul228.i to i64, !dbg !2049
  %arrayidx254.i = getelementptr inbounds [2 x i16], ptr %idx.0.sroa.phi.sroa.speculated.i, i64 %idxprom253.i, !dbg !2049
  %57 = load i16, ptr %arrayidx254.i, align 2, !dbg !2049
  %58 = tail call i16 @llvm.abs.i16(i16 %57, i1 false), !dbg !2051
  %cmp257.i = icmp ult i16 %58, 2, !dbg !2052
  br i1 %cmp257.i, label %land.lhs.true259.i, label %cleanup.i, !dbg !2053

land.lhs.true259.i:                               ; preds = %if.end250.i
  %arrayidx264.i = getelementptr inbounds i8, ptr %arrayidx254.i, i64 2, !dbg !2054
  %59 = load i16, ptr %arrayidx264.i, align 2, !dbg !2054
  %60 = tail call i16 @llvm.abs.i16(i16 %59, i1 false), !dbg !2055
  %cmp266.i = icmp ult i16 %60, 2, !dbg !2056
  br i1 %cmp266.i, label %if.then268.i, label %cleanup.i, !dbg !2057

if.then268.i:                                     ; preds = %land.lhs.true259.i
  br i1 %cmp271.i, label %if.then273.i, label %if.end276.i, !dbg !2058

if.then273.i:                                     ; preds = %if.then268.i
  %mul274.i = shl nuw nsw i32 %and221.i, 1, !dbg !2060
    #dbg_value(ptr %h, !1953, !DIExpression(), !2062)
    #dbg_value(i32 %mul274.i, !1954, !DIExpression(), !2062)
    #dbg_value(i32 %i8.0472.i, !1955, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2062)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i), !1956, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2062)
    #dbg_value(i32 %shr215.i, !1957, !DIExpression(), !2062)
    #dbg_value(i32 0, !1958, !DIExpression(), !2062)
    #dbg_value(i32 0, !1959, !DIExpression(), !2062)
  %mul275.i = shl i32 %i8.0472.i, 3, !dbg !2064
  %add.i.i = or disjoint i32 %mul274.i, %mul275.i, !dbg !2065
  %add2.i.i = or i32 %add.i.i, 12, !dbg !2065
  %idxprom3.i.i = sext i32 %add2.i.i to i64, !dbg !2066
  %arrayidx4.i422.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv49.i, i64 0, i64 0, i64 %idxprom3.i.i, !dbg !2066
    #dbg_value(ptr %arrayidx4.i422.i, !1960, !DIExpression(), !2062)
    #dbg_value(ptr %arrayidx4.i422.i, !1922, !DIExpression(), !2067)
    #dbg_value(i32 %mul5.i.i, !1927, !DIExpression(), !2067)
    #dbg_value(i32 %shr215.i, !1928, !DIExpression(), !2067)
    #dbg_value(i32 0, !1930, !DIExpression(), !2067)
    #dbg_value(ptr %arrayidx4.i422.i, !1931, !DIExpression(), !2067)
    #dbg_value(i32 0, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2067)
    #dbg_value(i32 0, !1933, !DIExpression(), !2067)
    #dbg_value(i64 0, !1934, !DIExpression(), !2067)
    #dbg_value(i32 32, !1929, !DIExpression(), !2067)
  switch i32 %47, label %if.end276.i [
    i32 7, label %do.body.i.i426.i.preheader
    i32 3, label %if.then63.i.i.i
  ], !dbg !2069

do.body.i.i426.i.preheader:                       ; preds = %if.then273.i
  br i1 %lcmp.mod.not, label %do.body.i.i426.i.prol.loopexit, label %do.body.i.i426.i.prol, !dbg !2070

do.body.i.i426.i.prol:                            ; preds = %do.body.i.i426.i.preheader, %do.body.i.i426.i.prol
  %d.0.i.i427.i.prol = phi ptr [ %add.ptr106.i.i433.i.prol, %do.body.i.i426.i.prol ], [ %arrayidx4.i422.i, %do.body.i.i426.i.preheader ], !dbg !2067
  %h.addr.0.i.i428.i.prol = phi i32 [ %sub.i.i432.i.prol, %do.body.i.i426.i.prol ], [ %shr215.i, %do.body.i.i426.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %do.body.i.i426.i.prol ], [ 0, %do.body.i.i426.i.preheader ]
    #dbg_value(i32 %h.addr.0.i.i428.i.prol, !1928, !DIExpression(), !2067)
    #dbg_value(ptr %d.0.i.i427.i.prol, !1931, !DIExpression(), !2067)
  %add.ptr98.i.i430.i.prol = getelementptr inbounds i8, ptr %d.0.i.i427.i.prol, i64 32, !dbg !2071
  %sub.i.i432.i.prol = add nsw i32 %h.addr.0.i.i428.i.prol, -2, !dbg !2072
    #dbg_value(i32 %sub.i.i432.i.prol, !1928, !DIExpression(), !2067)
  %add.ptr106.i.i433.i.prol = getelementptr inbounds i8, ptr %d.0.i.i427.i.prol, i64 64, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.prol, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i427.i.prol, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.prol, i8 0, i64 16, i1 false), !dbg !2075
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !2076
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !2076
  br i1 %prol.iter.cmp.not, label %do.body.i.i426.i.prol.loopexit, label %do.body.i.i426.i.prol, !dbg !2076, !llvm.loop !2077

do.body.i.i426.i.prol.loopexit:                   ; preds = %do.body.i.i426.i.prol, %do.body.i.i426.i.preheader
  %d.0.i.i427.i.unr = phi ptr [ %arrayidx4.i422.i, %do.body.i.i426.i.preheader ], [ %add.ptr106.i.i433.i.prol, %do.body.i.i426.i.prol ]
  %h.addr.0.i.i428.i.unr = phi i32 [ %shr215.i, %do.body.i.i426.i.preheader ], [ %sub.i.i432.i.prol, %do.body.i.i426.i.prol ]
  br i1 %51, label %if.end276.i, label %do.body.i.i426.i, !dbg !2070

if.then63.i.i.i:                                  ; preds = %if.then273.i
  store i64 0, ptr %arrayidx4.i422.i, align 8, !dbg !2079
  br i1 %cmp67.i.i.i, label %if.end276.i, label %if.end70.i.i.i, !dbg !2083

if.end70.i.i.i:                                   ; preds = %if.then63.i.i.i
  %add.ptr73.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 32, !dbg !2084
  store i64 0, ptr %add.ptr73.i.i.i, align 8, !dbg !2085
  br i1 %cmp74.i.i.i, label %if.end276.i, label %if.end77.i.i.i, !dbg !2086

if.end77.i.i.i:                                   ; preds = %if.end70.i.i.i
  %add.ptr80.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 64, !dbg !2087
  store i64 0, ptr %add.ptr80.i.i.i, align 8, !dbg !2088
  %add.ptr83.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 96, !dbg !2089
  store i64 0, ptr %add.ptr83.i.i.i, align 8, !dbg !2090
  br label %if.end276.i, !dbg !2091

do.body.i.i426.i:                                 ; preds = %do.body.i.i426.i.prol.loopexit, %do.body.i.i426.i
  %d.0.i.i427.i = phi ptr [ %add.ptr106.i.i433.i.7, %do.body.i.i426.i ], [ %d.0.i.i427.i.unr, %do.body.i.i426.i.prol.loopexit ], !dbg !2067
  %h.addr.0.i.i428.i = phi i32 [ %sub.i.i432.i.7, %do.body.i.i426.i ], [ %h.addr.0.i.i428.i.unr, %do.body.i.i426.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(), !2067)
    #dbg_value(ptr %d.0.i.i427.i, !1931, !DIExpression(), !2067)
  %add.ptr98.i.i430.i = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 32, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 64, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i427.i, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.1 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 96, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.1 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 128, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.1, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.1, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.2 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 160, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.2 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 192, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.2, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.1, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.2, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.3 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 224, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.3 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 256, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.3, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.2, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.3, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.4 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 288, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 10, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.4 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 320, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.4, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.3, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.4, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.5 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 352, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.5 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 384, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.5, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.4, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.5, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.6 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 416, !dbg !2071
    #dbg_value(i32 %h.addr.0.i.i428.i, !1928, !DIExpression(DW_OP_constu, 14, DW_OP_minus, DW_OP_stack_value), !2067)
  %add.ptr106.i.i433.i.6 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 448, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.6, !1931, !DIExpression(), !2067)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.5, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.6, i8 0, i64 16, i1 false), !dbg !2075
  %add.ptr98.i.i430.i.7 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 480, !dbg !2071
  %sub.i.i432.i.7 = add nsw i32 %h.addr.0.i.i428.i, -16, !dbg !2072
    #dbg_value(i32 %sub.i.i432.i.7, !1928, !DIExpression(), !2067)
  %add.ptr106.i.i433.i.7 = getelementptr inbounds i8, ptr %d.0.i.i427.i, i64 512, !dbg !2073
    #dbg_value(ptr %add.ptr106.i.i433.i.7, !1931, !DIExpression(), !2067)
  %tobool.not.i.i434.i.7 = icmp eq i32 %sub.i.i432.i.7, 0, !dbg !2076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i433.i.6, i8 0, i64 16, i1 false), !dbg !2074
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i430.i.7, i8 0, i64 16, i1 false), !dbg !2075
  br i1 %tobool.not.i.i434.i.7, label %if.end276.i, label %do.body.i.i426.i, !dbg !2076, !llvm.loop !2092

if.end276.i:                                      ; preds = %do.body.i.i426.i.prol.loopexit, %do.body.i.i426.i, %if.end77.i.i.i, %if.end70.i.i.i, %if.then63.i.i.i, %if.then273.i, %if.then268.i
  br i1 %cmp279.i, label %if.then281.i, label %cleanup.i, !dbg !2094

if.then281.i:                                     ; preds = %if.end276.i
  %mul282.i = shl nuw nsw i32 %and221.i, 1, !dbg !2095
    #dbg_value(ptr %h, !1953, !DIExpression(), !2097)
    #dbg_value(i32 %mul282.i, !1954, !DIExpression(), !2097)
    #dbg_value(i32 %i8.0472.i, !1955, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2097)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i), !1956, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2097)
    #dbg_value(i32 %shr215.i, !1957, !DIExpression(), !2097)
    #dbg_value(i32 1, !1958, !DIExpression(), !2097)
    #dbg_value(i32 0, !1959, !DIExpression(), !2097)
  %mul283.i = shl i32 %i8.0472.i, 3, !dbg !2099
  %add.i437.i = or disjoint i32 %mul282.i, %mul283.i, !dbg !2100
  %add2.i439.i = or i32 %add.i437.i, 12, !dbg !2100
  %idxprom3.i440.i = sext i32 %add2.i439.i to i64, !dbg !2101
  %arrayidx4.i441.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv49.i, i64 0, i64 1, i64 %idxprom3.i440.i, !dbg !2101
    #dbg_value(ptr %arrayidx4.i441.i, !1960, !DIExpression(), !2097)
    #dbg_value(ptr %arrayidx4.i441.i, !1922, !DIExpression(), !2102)
    #dbg_value(i32 %mul5.i.i, !1927, !DIExpression(), !2102)
    #dbg_value(i32 %shr215.i, !1928, !DIExpression(), !2102)
    #dbg_value(i32 0, !1930, !DIExpression(), !2102)
    #dbg_value(ptr %arrayidx4.i441.i, !1931, !DIExpression(), !2102)
    #dbg_value(i32 0, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2102)
    #dbg_value(i32 0, !1933, !DIExpression(), !2102)
    #dbg_value(i64 0, !1934, !DIExpression(), !2102)
    #dbg_value(i32 32, !1929, !DIExpression(), !2102)
  switch i32 %47, label %cleanup.i [
    i32 7, label %do.body.i.i459.i.preheader
    i32 3, label %if.then63.i.i443.i
  ], !dbg !2104

do.body.i.i459.i.preheader:                       ; preds = %if.then281.i
  br i1 %lcmp.mod570.not, label %do.body.i.i459.i.prol.loopexit, label %do.body.i.i459.i.prol, !dbg !2105

do.body.i.i459.i.prol:                            ; preds = %do.body.i.i459.i.preheader, %do.body.i.i459.i.prol
  %d.0.i.i460.i.prol = phi ptr [ %add.ptr106.i.i466.i.prol, %do.body.i.i459.i.prol ], [ %arrayidx4.i441.i, %do.body.i.i459.i.preheader ], !dbg !2102
  %h.addr.0.i.i461.i.prol = phi i32 [ %sub.i.i465.i.prol, %do.body.i.i459.i.prol ], [ %shr215.i, %do.body.i.i459.i.preheader ]
  %prol.iter571 = phi i32 [ %prol.iter571.next, %do.body.i.i459.i.prol ], [ 0, %do.body.i.i459.i.preheader ]
    #dbg_value(i32 %h.addr.0.i.i461.i.prol, !1928, !DIExpression(), !2102)
    #dbg_value(ptr %d.0.i.i460.i.prol, !1931, !DIExpression(), !2102)
  %add.ptr98.i.i463.i.prol = getelementptr inbounds i8, ptr %d.0.i.i460.i.prol, i64 32, !dbg !2106
  %sub.i.i465.i.prol = add nsw i32 %h.addr.0.i.i461.i.prol, -2, !dbg !2107
    #dbg_value(i32 %sub.i.i465.i.prol, !1928, !DIExpression(), !2102)
  %add.ptr106.i.i466.i.prol = getelementptr inbounds i8, ptr %d.0.i.i460.i.prol, i64 64, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.prol, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i460.i.prol, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.prol, i8 0, i64 16, i1 false), !dbg !2110
  %prol.iter571.next = add i32 %prol.iter571, 1, !dbg !2111
  %prol.iter571.cmp.not = icmp eq i32 %prol.iter571.next, %xtraiter569, !dbg !2111
  br i1 %prol.iter571.cmp.not, label %do.body.i.i459.i.prol.loopexit, label %do.body.i.i459.i.prol, !dbg !2111, !llvm.loop !2112

do.body.i.i459.i.prol.loopexit:                   ; preds = %do.body.i.i459.i.prol, %do.body.i.i459.i.preheader
  %d.0.i.i460.i.unr = phi ptr [ %arrayidx4.i441.i, %do.body.i.i459.i.preheader ], [ %add.ptr106.i.i466.i.prol, %do.body.i.i459.i.prol ]
  %h.addr.0.i.i461.i.unr = phi i32 [ %shr215.i, %do.body.i.i459.i.preheader ], [ %sub.i.i465.i.prol, %do.body.i.i459.i.prol ]
  br i1 %52, label %cleanup.i, label %do.body.i.i459.i, !dbg !2105

if.then63.i.i443.i:                               ; preds = %if.then281.i
  store i64 0, ptr %arrayidx4.i441.i, align 8, !dbg !2113
  br i1 %cmp67.i.i.i, label %cleanup.i, label %if.end70.i.i445.i, !dbg !2114

if.end70.i.i445.i:                                ; preds = %if.then63.i.i443.i
  %add.ptr73.i.i446.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 32, !dbg !2115
  store i64 0, ptr %add.ptr73.i.i446.i, align 8, !dbg !2116
  br i1 %cmp74.i.i.i, label %cleanup.i, label %if.end77.i.i448.i, !dbg !2117

if.end77.i.i448.i:                                ; preds = %if.end70.i.i445.i
  %add.ptr80.i.i449.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 64, !dbg !2118
  store i64 0, ptr %add.ptr80.i.i449.i, align 8, !dbg !2119
  %add.ptr83.i.i450.i = getelementptr inbounds i8, ptr %arrayidx4.i441.i, i64 96, !dbg !2120
  store i64 0, ptr %add.ptr83.i.i450.i, align 8, !dbg !2121
  br label %cleanup.i, !dbg !2122

do.body.i.i459.i:                                 ; preds = %do.body.i.i459.i.prol.loopexit, %do.body.i.i459.i
  %d.0.i.i460.i = phi ptr [ %add.ptr106.i.i466.i.7, %do.body.i.i459.i ], [ %d.0.i.i460.i.unr, %do.body.i.i459.i.prol.loopexit ], !dbg !2102
  %h.addr.0.i.i461.i = phi i32 [ %sub.i.i465.i.7, %do.body.i.i459.i ], [ %h.addr.0.i.i461.i.unr, %do.body.i.i459.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(), !2102)
    #dbg_value(ptr %d.0.i.i460.i, !1931, !DIExpression(), !2102)
  %add.ptr98.i.i463.i = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 32, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 64, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i460.i, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.1 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 96, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.1 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 128, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.1, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.1, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.2 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 160, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.2 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 192, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.2, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.1, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.2, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.3 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 224, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.3 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 256, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.3, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.2, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.3, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.4 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 288, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 10, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.4 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 320, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.4, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.3, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.4, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.5 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 352, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.5 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 384, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.5, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.4, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.5, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.6 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 416, !dbg !2106
    #dbg_value(i32 %h.addr.0.i.i461.i, !1928, !DIExpression(DW_OP_constu, 14, DW_OP_minus, DW_OP_stack_value), !2102)
  %add.ptr106.i.i466.i.6 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 448, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.6, !1931, !DIExpression(), !2102)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.5, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.6, i8 0, i64 16, i1 false), !dbg !2110
  %add.ptr98.i.i463.i.7 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 480, !dbg !2106
  %sub.i.i465.i.7 = add nsw i32 %h.addr.0.i.i461.i, -16, !dbg !2107
    #dbg_value(i32 %sub.i.i465.i.7, !1928, !DIExpression(), !2102)
  %add.ptr106.i.i466.i.7 = getelementptr inbounds i8, ptr %d.0.i.i460.i, i64 512, !dbg !2108
    #dbg_value(ptr %add.ptr106.i.i466.i.7, !1931, !DIExpression(), !2102)
  %tobool.not.i.i467.i.7 = icmp eq i32 %sub.i.i465.i.7, 0, !dbg !2111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i466.i.6, i8 0, i64 16, i1 false), !dbg !2109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i463.i.7, i8 0, i64 16, i1 false), !dbg !2110
  br i1 %tobool.not.i.i467.i.7, label %cleanup.i, label %do.body.i.i459.i, !dbg !2111, !llvm.loop !2123

cleanup.i:                                        ; preds = %do.body.i.i459.i.prol.loopexit, %do.body.i.i459.i, %if.end77.i.i448.i, %if.end70.i.i445.i, %if.then63.i.i443.i, %if.then281.i, %if.end276.i, %land.lhs.true259.i, %if.end250.i, %land.lhs.true241.i, %if.else235.i
  %add291.i = add nuw nsw i32 %i8.0472.i, %add210.i, !dbg !2125
    #dbg_value(i32 %add291.i, !1812, !DIExpression(), !2023)
  %cmp217.i = icmp slt i32 %add291.i, %add207.i, !dbg !2024
  br i1 %cmp217.i, label %for.body220.i, label %if.end4, !dbg !2025, !llvm.loop !2126

if.else2:                                         ; preds = %if.else
    #dbg_value(ptr %h, !2128, !DIExpression(), !2154)
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !2156
  %61 = load i32, ptr %i_mb_stride.i, align 4, !dbg !2156
  %mul.i479 = shl nsw i32 %61, 4, !dbg !2157
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !2158
  %62 = load i32, ptr %i_mb_y.i, align 4, !dbg !2158
  %mul2.i = mul nsw i32 %mul.i479, %62, !dbg !2159
  %i_mb_x.i = getelementptr inbounds i8, ptr %h, i64 16384, !dbg !2160
  %63 = load i32, ptr %i_mb_x.i, align 16, !dbg !2160
  %mul4.i = shl nsw i32 %63, 2, !dbg !2161
    #dbg_value(!DIArgList(i32 %mul4.i, i32 %mul2.i), !2131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2154)
  %mul7.i = shl nsw i32 %61, 2, !dbg !2162
  %mul10.i = mul nsw i32 %mul7.i, %62, !dbg !2163
  %mul13.i = shl nsw i32 %63, 1, !dbg !2164
  %add14.i = add nsw i32 %mul13.i, %mul10.i, !dbg !2165
    #dbg_value(i32 %add14.i, !2132, !DIExpression(), !2154)
  %fref1.i480 = getelementptr inbounds i8, ptr %h, i64 14864, !dbg !2166
  %64 = load ptr, ptr %fref1.i480, align 16, !dbg !2167
  %mb_type.i481 = getelementptr inbounds i8, ptr %64, i64 3536, !dbg !2168
  %65 = load ptr, ptr %mb_type.i481, align 16, !dbg !2168
  %arrayidx16.i = getelementptr inbounds i8, ptr %65, i64 %idxprom.i483, !dbg !2167
  %66 = load i8, ptr %arrayidx16.i, align 1, !dbg !2167
    #dbg_value(i8 %66, !2133, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2154)
  %mb_partition.i484 = getelementptr inbounds i8, ptr %64, i64 3544, !dbg !2169
  %67 = load ptr, ptr %mb_partition.i484, align 8, !dbg !2169
  %arrayidx22.i485 = getelementptr inbounds i8, ptr %67, i64 %idxprom.i483, !dbg !2170
  %68 = load i8, ptr %arrayidx22.i485, align 1, !dbg !2170
  %conv23.i = zext i8 %68 to i32, !dbg !2170
    #dbg_value(i32 %conv23.i, !2134, !DIExpression(), !2154)
    #dbg_value(ptr %h, !1904, !DIExpression(), !2171)
    #dbg_value(i32 0, !1910, !DIExpression(), !2171)
    #dbg_value(i32 0, !1911, !DIExpression(), !2171)
    #dbg_value(i32 4, !1912, !DIExpression(), !2171)
    #dbg_value(i32 4, !1913, !DIExpression(), !2171)
    #dbg_value(i32 1, !1914, !DIExpression(), !2171)
    #dbg_value(i8 0, !1915, !DIExpression(), !2171)
  %ref1.i.i = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !2173
  %arrayidx4.i.i486 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2174
    #dbg_value(ptr %arrayidx4.i.i486, !1916, !DIExpression(), !2171)
    #dbg_value(ptr %arrayidx4.i.i486, !1922, !DIExpression(), !2175)
    #dbg_value(i32 4, !1927, !DIExpression(), !2175)
    #dbg_value(i32 4, !1928, !DIExpression(), !2175)
    #dbg_value(i32 0, !1930, !DIExpression(), !2175)
    #dbg_value(ptr %arrayidx4.i.i486, !1931, !DIExpression(), !2175)
    #dbg_value(i16 0, !1932, !DIExpression(), !2175)
    #dbg_value(i32 0, !1933, !DIExpression(), !2175)
    #dbg_value(i64 0, !1934, !DIExpression(), !2175)
    #dbg_value(i32 8, !1929, !DIExpression(), !2175)
  store i32 0, ptr %arrayidx4.i.i486, align 4, !dbg !2177
  %add.ptr49.i.i.i487 = getelementptr inbounds i8, ptr %h, i64 25180, !dbg !2178
  store i32 0, ptr %add.ptr49.i.i.i487, align 4, !dbg !2179
  %add.ptr56.i.i.i488 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !2180
  store i32 0, ptr %add.ptr56.i.i.i488, align 4, !dbg !2181
  %add.ptr59.i.i.i489 = getelementptr inbounds i8, ptr %h, i64 25196, !dbg !2182
  store i32 0, ptr %add.ptr59.i.i.i489, align 4, !dbg !2183
  %i_partition.i490 = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !2184
  store i32 %conv23.i, ptr %i_partition.i490, align 4, !dbg !2185
  %or.cond154.i = icmp ult i8 %66, 4, !dbg !2186
  br i1 %or.cond154.i, label %if.then.i508, label %if.end.i491, !dbg !2186

if.then.i508:                                     ; preds = %if.else2
    #dbg_value(ptr %h, !1904, !DIExpression(), !2188)
    #dbg_value(i32 0, !1910, !DIExpression(), !2188)
    #dbg_value(i32 0, !1911, !DIExpression(), !2188)
    #dbg_value(i32 4, !1912, !DIExpression(), !2188)
    #dbg_value(i32 4, !1913, !DIExpression(), !2188)
    #dbg_value(i32 0, !1914, !DIExpression(), !2188)
    #dbg_value(i8 0, !1915, !DIExpression(), !2188)
  %arrayidx4.i221.i = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2191
    #dbg_value(ptr %arrayidx4.i221.i, !1916, !DIExpression(), !2188)
    #dbg_value(ptr %arrayidx4.i221.i, !1922, !DIExpression(), !2192)
    #dbg_value(i32 4, !1927, !DIExpression(), !2192)
    #dbg_value(i32 4, !1928, !DIExpression(), !2192)
    #dbg_value(i32 0, !1930, !DIExpression(), !2192)
    #dbg_value(ptr %arrayidx4.i221.i, !1931, !DIExpression(), !2192)
    #dbg_value(i16 0, !1932, !DIExpression(), !2192)
    #dbg_value(i32 0, !1933, !DIExpression(), !2192)
    #dbg_value(i64 0, !1934, !DIExpression(), !2192)
    #dbg_value(i32 8, !1929, !DIExpression(), !2192)
  store i32 0, ptr %arrayidx4.i221.i, align 4, !dbg !2194
  %add.ptr49.i.i222.i = getelementptr inbounds i8, ptr %h, i64 25140, !dbg !2195
  store i32 0, ptr %add.ptr49.i.i222.i, align 4, !dbg !2196
  %add.ptr56.i.i223.i = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2197
  store i32 0, ptr %add.ptr56.i.i223.i, align 4, !dbg !2198
  %add.ptr59.i.i224.i = getelementptr inbounds i8, ptr %h, i64 25156, !dbg !2199
  store i32 0, ptr %add.ptr59.i.i224.i, align 4, !dbg !2200
    #dbg_value(ptr %h, !1953, !DIExpression(), !2201)
    #dbg_value(i32 0, !1954, !DIExpression(), !2201)
    #dbg_value(i32 0, !1955, !DIExpression(), !2201)
    #dbg_value(i32 4, !1956, !DIExpression(), !2201)
    #dbg_value(i32 4, !1957, !DIExpression(), !2201)
    #dbg_value(i32 0, !1958, !DIExpression(), !2201)
    #dbg_value(i32 0, !1959, !DIExpression(), !2201)
  %arrayidx4.i225.i = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !2203
    #dbg_value(ptr %arrayidx4.i225.i, !1960, !DIExpression(), !2201)
    #dbg_value(ptr %arrayidx4.i225.i, !1922, !DIExpression(), !2204)
    #dbg_value(i32 16, !1927, !DIExpression(), !2204)
    #dbg_value(i32 0, !1930, !DIExpression(), !2204)
    #dbg_value(i32 0, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2204)
    #dbg_value(i32 0, !1933, !DIExpression(), !2204)
    #dbg_value(i64 0, !1934, !DIExpression(), !2204)
    #dbg_value(i32 32, !1929, !DIExpression(), !2204)
    #dbg_value(i32 4, !1928, !DIExpression(), !2204)
    #dbg_value(ptr %arrayidx4.i225.i, !1931, !DIExpression(), !2204)
  %add.ptr98.i.i.i509 = getelementptr inbounds i8, ptr %h, i64 25280, !dbg !2206
    #dbg_value(i32 2, !1928, !DIExpression(), !2204)
  %add.ptr106.i.i.i510 = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !2207
    #dbg_value(ptr %add.ptr106.i.i.i510, !1931, !DIExpression(), !2204)
  %add.ptr98.i.i.1.i511 = getelementptr inbounds i8, ptr %h, i64 25344, !dbg !2206
    #dbg_value(i32 0, !1928, !DIExpression(), !2204)
    #dbg_value(ptr %add.ptr106.i.i.i510, !1931, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !2204)
    #dbg_value(ptr %h, !1953, !DIExpression(), !2208)
    #dbg_value(i32 0, !1954, !DIExpression(), !2208)
    #dbg_value(i32 0, !1955, !DIExpression(), !2208)
    #dbg_value(i32 4, !1956, !DIExpression(), !2208)
    #dbg_value(i32 4, !1957, !DIExpression(), !2208)
    #dbg_value(i32 1, !1958, !DIExpression(), !2208)
    #dbg_value(i32 0, !1959, !DIExpression(), !2208)
  %arrayidx4.i227.i = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !2210
    #dbg_value(ptr %arrayidx4.i227.i, !1960, !DIExpression(), !2208)
    #dbg_value(ptr %arrayidx4.i227.i, !1922, !DIExpression(), !2211)
    #dbg_value(i32 16, !1927, !DIExpression(), !2211)
    #dbg_value(i32 0, !1930, !DIExpression(), !2211)
    #dbg_value(i32 0, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2211)
    #dbg_value(i32 0, !1933, !DIExpression(), !2211)
    #dbg_value(i64 0, !1934, !DIExpression(), !2211)
    #dbg_value(i32 32, !1929, !DIExpression(), !2211)
    #dbg_value(i32 4, !1928, !DIExpression(), !2211)
    #dbg_value(ptr %arrayidx4.i227.i, !1931, !DIExpression(), !2211)
  %add.ptr98.i.i232.i = getelementptr inbounds i8, ptr %h, i64 25440, !dbg !2213
    #dbg_value(i32 2, !1928, !DIExpression(), !2211)
  %add.ptr106.i.i235.i = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !2214
    #dbg_value(ptr %add.ptr106.i.i235.i, !1931, !DIExpression(), !2211)
  %add.ptr98.i.i232.1.i = getelementptr inbounds i8, ptr %h, i64 25504, !dbg !2213
    #dbg_value(i32 0, !1928, !DIExpression(), !2211)
    #dbg_value(ptr %add.ptr106.i.i235.i, !1931, !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value), !2211)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx4.i225.i, i8 0, i64 16, i1 false), !dbg !2215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i.i509, i8 0, i64 16, i1 false), !dbg !2216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i.i510, i8 0, i64 16, i1 false), !dbg !2215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i.1.i511, i8 0, i64 16, i1 false), !dbg !2216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx4.i227.i, i8 0, i64 16, i1 false), !dbg !2217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i232.i, i8 0, i64 16, i1 false), !dbg !2218
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr106.i.i235.i, i8 0, i64 16, i1 false), !dbg !2217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i232.1.i, i8 0, i64 16, i1 false), !dbg !2218
  br label %if.end4, !dbg !2219

if.end.i491:                                      ; preds = %if.else2
  %sub.i492 = sub nsw i32 16, %conv23.i, !dbg !2220
  %add34.i = sub nsw i32 17, %conv23.i, !dbg !2221
    #dbg_value(i32 %add34.i, !2135, !DIExpression(), !2154)
  %cmp35.i = icmp eq i8 %68, 14, !dbg !2222
  %add37.i = select i1 %cmp35.i, i32 2, i32 1, !dbg !2223
    #dbg_value(i32 %add37.i, !2136, !DIExpression(), !2154)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !2137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2154)
  %shr40.i = ashr i32 %sub.i492, 1, !dbg !2224
  %shr41.i = lshr i32 4, %shr40.i, !dbg !2225
    #dbg_value(i32 %shr41.i, !2138, !DIExpression(), !2154)
    #dbg_value(i32 0, !2139, !DIExpression(), !2226)
  %cmp42.not352.i = icmp ugt i8 %68, 16, !dbg !2227
  br i1 %cmp42.not352.i, label %if.end4, label %for.body.lr.ph.i, !dbg !2228

for.body.lr.ph.i:                                 ; preds = %if.end.i491
  %and.i = and i32 %sub.i492, 1, !dbg !2229
    #dbg_value(!DIArgList(i32 4, i32 %and.i), !2137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value), !2154)
  %shr.i493 = lshr exact i32 4, %and.i, !dbg !2230
    #dbg_value(i32 %shr.i493, !2137, !DIExpression(), !2154)
  %i_b8_stride.i494 = getelementptr inbounds i8, ptr %h, i64 16376
  %map_col_to_list0.i = getelementptr inbounds i8, ptr %h, i64 26632
  %b_mbaff.i = getelementptr inbounds i8, ptr %h, i64 7268
  %dist_scale_factor72.i = getelementptr inbounds i8, ptr %h, i64 26360
  %i_b4_stride.i495 = getelementptr inbounds i8, ptr %h, i64 16380
  %add81.i = add i32 %mul4.i, %mul2.i
  %i_threads.i496 = getelementptr inbounds i8, ptr %h, i64 4
  %arrayidx101.i = getelementptr inbounds i8, ptr %h, i64 16468
  %cmp67.i.i.i497 = icmp eq i32 %shr40.i, 2
  %cmp74.i.i.i498 = icmp eq i32 %shr40.i, 1
  %mv1.i251.i = getelementptr inbounds i8, ptr %h, i64 25200
  %mul5.i.i499 = shl nuw nsw i32 %shr.i493, 2
  %69 = add nsw i32 %mul5.i.i499, -2
  %70 = tail call i32 @llvm.fshl.i32(i32 2, i32 %69, i32 31)
  %invariant.gep.i = getelementptr i8, ptr %h, i64 25232, !dbg !2228
  %invariant.gep357.i = getelementptr i8, ptr %h, i64 25264, !dbg !2228
  %invariant.gep359.i = getelementptr i8, ptr %h, i64 25296, !dbg !2228
  %switch.not.i = icmp eq i32 %and.i, 0
  %71 = add nsw i32 %shr41.i, -2, !dbg !2228
  %72 = lshr i32 %71, 1, !dbg !2228
  %narrow = add nuw i32 %72, 1, !dbg !2228
  %73 = zext i32 %narrow to i64, !dbg !2228
  %74 = add nsw i32 %shr41.i, -2, !dbg !2228
  %75 = lshr i32 %74, 1, !dbg !2228
  %narrow565 = add nuw i32 %75, 1, !dbg !2228
  %76 = zext i32 %narrow565 to i64, !dbg !2228
  %min.iters.check547 = icmp ult i32 %74, 6
  %n.vec550 = and i64 %76, 4294967292
  %77 = shl nuw nsw i64 %n.vec550, 6
  %.cast553 = trunc nuw i64 %n.vec550 to i32
  %78 = mul i32 %.cast553, -2
  %ind.end554 = or disjoint i32 %shr41.i, %78
  %cmp.n564 = icmp eq i64 %n.vec550, %76
  %min.iters.check = icmp ult i32 %71, 6
  %n.vec = and i64 %73, 4294967292
  %79 = shl nuw nsw i64 %n.vec, 6
  %.cast = trunc nuw i64 %n.vec to i32
  %80 = mul i32 %.cast, -2
  %ind.end540 = or disjoint i32 %shr41.i, %80
  %cmp.n = icmp eq i64 %n.vec, %73
  br label %for.body.i, !dbg !2228

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i8.0353.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add140.i, %for.inc.i ]
    #dbg_value(i32 %i8.0353.i, !2139, !DIExpression(), !2226)
  %and44.i = and i32 %i8.0353.i, 1, !dbg !2231
    #dbg_value(i32 %and44.i, !2141, !DIExpression(), !2232)
  %shr45.i = lshr i32 %i8.0353.i, 1, !dbg !2233
    #dbg_value(i32 %shr45.i, !2144, !DIExpression(), !2232)
  %add46.i = or disjoint i32 %add14.i, %and44.i, !dbg !2234
  %81 = load i32, ptr %i_b8_stride.i494, align 8, !dbg !2235
  %mul48.i = mul nsw i32 %81, %shr45.i, !dbg !2236
  %add49.i = add nsw i32 %add46.i, %mul48.i, !dbg !2237
    #dbg_value(i32 %add49.i, !2145, !DIExpression(), !2232)
  %82 = load ptr, ptr %fref1.i480, align 16, !dbg !2238
  %ref.i = getelementptr inbounds i8, ptr %82, i64 6712, !dbg !2239
  %83 = load ptr, ptr %ref.i, align 8, !dbg !2238
  %idxprom53.i = sext i32 %add49.i to i64, !dbg !2238
  %arrayidx54.i = getelementptr inbounds i8, ptr %83, i64 %idxprom53.i, !dbg !2238
  %84 = load i8, ptr %arrayidx54.i, align 1, !dbg !2238
  %conv55.i = sext i8 %84 to i32, !dbg !2238
    #dbg_value(i32 %conv55.i, !2146, !DIExpression(), !2232)
  %85 = load i32, ptr %b_mbaff.i, align 4, !dbg !2240
  %shr57.i = ashr i32 %conv55.i, %85, !dbg !2240
  %add58.i = add nsw i32 %shr57.i, 2, !dbg !2240
  %idxprom59.i = sext i32 %add58.i to i64, !dbg !2240
  %arrayidx60.i = getelementptr inbounds [18 x i8], ptr %map_col_to_list0.i, i64 0, i64 %idxprom59.i, !dbg !2240
  %86 = load i8, ptr %arrayidx60.i, align 1, !dbg !2240
  %conv61.i = sext i8 %86 to i32, !dbg !2240
  %shl.i = shl i32 %conv61.i, %85, !dbg !2241
  %and66.i = and i32 %85, %conv55.i, !dbg !2242
  %add67.i = add nsw i32 %shl.i, %and66.i, !dbg !2243
    #dbg_value(i32 %add67.i, !2147, !DIExpression(), !2232)
  %cmp68.i = icmp sgt i32 %add67.i, -1, !dbg !2244
  br i1 %cmp68.i, label %if.then70.i, label %cleanup376, !dbg !2245

if.then70.i:                                      ; preds = %for.body.i
  %87 = load ptr, ptr %dist_scale_factor72.i, align 8, !dbg !2246
  %idxprom73.i = zext nneg i32 %add67.i to i64, !dbg !2247
  %arrayidx74.i = getelementptr inbounds [4 x i16], ptr %87, i64 %idxprom73.i, !dbg !2247
  %88 = load i16, ptr %arrayidx74.i, align 2, !dbg !2247
  %conv76.i = sext i16 %88 to i32, !dbg !2247
    #dbg_value(i32 %conv76.i, !2148, !DIExpression(), !2248)
  %mv.i = getelementptr inbounds i8, ptr %82, i64 3552, !dbg !2249
  %89 = load ptr, ptr %mv.i, align 16, !dbg !2250
  %90 = load i32, ptr %i_b4_stride.i495, align 4, !dbg !2251
  %mul84.i = mul i32 %90, %shr45.i, !dbg !2252
  %reass.add.i = add i32 %mul84.i, %and44.i
  %reass.mul.i = mul i32 %reass.add.i, 3
  %add85.i = add i32 %add81.i, %reass.mul.i, !dbg !2253
  %idxprom86.i = sext i32 %add85.i to i64, !dbg !2250
  %arrayidx87.i = getelementptr inbounds [2 x i16], ptr %89, i64 %idxprom86.i, !dbg !2250
    #dbg_value(ptr %arrayidx87.i, !2151, !DIExpression(), !2248)
  %91 = load i16, ptr %arrayidx87.i, align 2, !dbg !2254
  %conv89.i = sext i16 %91 to i32, !dbg !2254
  %mul90.i = mul nsw i32 %conv89.i, %conv76.i, !dbg !2255
  %add91.i = add nsw i32 %mul90.i, 128, !dbg !2256
  %shr92.i = ashr i32 %add91.i, 8, !dbg !2257
    #dbg_value(i32 %shr92.i, !2152, !DIExpression(), !2248)
  %arrayidx93.i = getelementptr inbounds i8, ptr %arrayidx87.i, i64 2, !dbg !2258
  %92 = load i16, ptr %arrayidx93.i, align 2, !dbg !2258
  %conv94.i = sext i16 %92 to i32, !dbg !2258
  %mul95.i = mul nsw i32 %conv94.i, %conv76.i, !dbg !2259
  %add96.i = add nsw i32 %mul95.i, 128, !dbg !2260
  %shr97.i = ashr i32 %add96.i, 8, !dbg !2261
    #dbg_value(i32 %shr97.i, !2153, !DIExpression(), !2248)
  %93 = load i32, ptr %i_threads.i496, align 4, !dbg !2262
  %cmp98.i = icmp sgt i32 %93, 1, !dbg !2264
  br i1 %cmp98.i, label %land.lhs.true.i505, label %if.end114.i, !dbg !2265

land.lhs.true.i505:                               ; preds = %if.then70.i
  %94 = load i32, ptr %arrayidx101.i, align 4, !dbg !2266
  %cmp102.i = icmp sgt i32 %shr97.i, %94, !dbg !2267
  %sub107.i = sub nsw i32 %shr97.i, %conv94.i
  %cmp111.i506 = icmp sgt i32 %sub107.i, %94
  %or.cond.i507 = select i1 %cmp102.i, i1 true, i1 %cmp111.i506, !dbg !2268
  br i1 %or.cond.i507, label %cleanup376, label %if.end114.i, !dbg !2268

if.end114.i:                                      ; preds = %land.lhs.true.i505, %if.then70.i
  %mul115.i = shl nuw nsw i32 %and44.i, 1, !dbg !2269
  %conv117.i = trunc i32 %add67.i to i16, !dbg !2270
    #dbg_value(ptr %h, !1904, !DIExpression(), !2271)
    #dbg_value(i32 %mul115.i, !1910, !DIExpression(), !2271)
    #dbg_value(i32 %i8.0353.i, !1911, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2271)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !1912, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2271)
    #dbg_value(i32 %shr41.i, !1913, !DIExpression(), !2271)
    #dbg_value(i32 0, !1914, !DIExpression(), !2271)
    #dbg_value(i32 %add67.i, !1915, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2271)
  %mul116.i = shl i32 %i8.0353.i, 3, !dbg !2273
  %add.i.i500 = or disjoint i32 %mul115.i, %mul116.i, !dbg !2274
  %add2.i.i501 = or i32 %add.i.i500, 12, !dbg !2274
  %idxprom3.i.i502 = sext i32 %add2.i.i501 to i64, !dbg !2275
  %arrayidx4.i239.i = getelementptr inbounds [2 x [40 x i8]], ptr %ref1.i.i, i64 0, i64 0, i64 %idxprom3.i.i502, !dbg !2275
    #dbg_value(ptr %arrayidx4.i239.i, !1916, !DIExpression(), !2271)
  %conv.i.i503 = and i32 %add67.i, 255, !dbg !2276
    #dbg_value(ptr %arrayidx4.i239.i, !1922, !DIExpression(), !2277)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !1927, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2277)
    #dbg_value(i32 %shr41.i, !1928, !DIExpression(), !2277)
    #dbg_value(i32 1, !1929, !DIExpression(), !2277)
    #dbg_value(i32 %conv.i.i503, !1930, !DIExpression(), !2277)
    #dbg_value(ptr %arrayidx4.i239.i, !1931, !DIExpression(), !2277)
  %95 = and i16 %conv117.i, 255, !dbg !2279
  %conv.i.i.i = mul nuw i16 %95, 257, !dbg !2279
    #dbg_value(i16 %conv.i.i.i, !1932, !DIExpression(), !2277)
  %cond14.i.i.i504 = mul nuw i32 %conv.i.i503, 16843009, !dbg !2280
    #dbg_value(i32 %cond14.i.i.i504, !1933, !DIExpression(), !2277)
    #dbg_value(i32 %cond14.i.i.i504, !1934, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value), !2277)
    #dbg_value(i32 8, !1929, !DIExpression(), !2277)
  br i1 %switch.not.i, label %if.then39.i.i.i, label %if.then.i.i.i, !dbg !2281

if.then.i.i.i:                                    ; preds = %if.end114.i
  store i16 %conv.i.i.i, ptr %arrayidx4.i239.i, align 2, !dbg !2282
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_ref.exit.i, label %if.end.i.i.i, !dbg !2284

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 8, !dbg !2285
  store i16 %conv.i.i.i, ptr %add.ptr26.i.i.i, align 2, !dbg !2286
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_ref.exit.i, label %if.end30.i.i.i, !dbg !2287

if.end30.i.i.i:                                   ; preds = %if.end.i.i.i
  %add.ptr33.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 16, !dbg !2288
  store i16 %conv.i.i.i, ptr %add.ptr33.i.i.i, align 2, !dbg !2289
  %add.ptr36.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 24, !dbg !2290
  store i16 %conv.i.i.i, ptr %add.ptr36.i.i.i, align 2, !dbg !2291
  br label %x264_macroblock_cache_ref.exit.i, !dbg !2292

if.then39.i.i.i:                                  ; preds = %if.end114.i
  store i32 %cond14.i.i.i504, ptr %arrayidx4.i239.i, align 4, !dbg !2293
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_ref.exit.i, label %if.end46.i.i.i, !dbg !2294

if.end46.i.i.i:                                   ; preds = %if.then39.i.i.i
  %add.ptr49.i.i247.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 8, !dbg !2295
  store i32 %cond14.i.i.i504, ptr %add.ptr49.i.i247.i, align 4, !dbg !2296
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_ref.exit.i, label %if.end53.i.i.i, !dbg !2297

if.end53.i.i.i:                                   ; preds = %if.end46.i.i.i
  %add.ptr56.i.i248.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 16, !dbg !2298
  store i32 %cond14.i.i.i504, ptr %add.ptr56.i.i248.i, align 4, !dbg !2299
  %add.ptr59.i.i249.i = getelementptr inbounds i8, ptr %arrayidx4.i239.i, i64 24, !dbg !2300
  store i32 %cond14.i.i.i504, ptr %add.ptr59.i.i249.i, align 4, !dbg !2301
  br label %x264_macroblock_cache_ref.exit.i, !dbg !2302

x264_macroblock_cache_ref.exit.i:                 ; preds = %if.end53.i.i.i, %if.end46.i.i.i, %if.then39.i.i.i, %if.end30.i.i.i, %if.end.i.i.i, %if.then.i.i.i
    #dbg_value(i32 %shr92.i, !2303, !DIExpression(), !2309)
    #dbg_value(i32 %shr97.i, !2308, !DIExpression(), !2309)
  %and.i.i = and i32 %shr92.i, 65535, !dbg !2311
  %shl.i.i = shl i32 %shr97.i, 16, !dbg !2312
  %add.i250.i = or disjoint i32 %shl.i.i, %and.i.i, !dbg !2313
    #dbg_value(ptr %h, !1953, !DIExpression(), !2314)
    #dbg_value(i32 %mul115.i, !1954, !DIExpression(), !2314)
    #dbg_value(i32 %i8.0353.i, !1955, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2314)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !1956, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2314)
    #dbg_value(i32 %shr41.i, !1957, !DIExpression(), !2314)
    #dbg_value(i32 0, !1958, !DIExpression(), !2314)
    #dbg_value(i32 %add.i250.i, !1959, !DIExpression(), !2314)
  %arrayidx4.i256.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 0, i64 %idxprom3.i.i502, !dbg !2316
    #dbg_value(ptr %arrayidx4.i256.i, !1960, !DIExpression(), !2314)
    #dbg_value(ptr %arrayidx4.i256.i, !1922, !DIExpression(), !2317)
    #dbg_value(i32 %mul5.i.i499, !1927, !DIExpression(), !2317)
    #dbg_value(i32 %shr41.i, !1928, !DIExpression(), !2317)
    #dbg_value(i32 4, !1929, !DIExpression(), !2317)
    #dbg_value(i32 %add.i250.i, !1930, !DIExpression(), !2317)
    #dbg_value(ptr %arrayidx4.i256.i, !1931, !DIExpression(), !2317)
    #dbg_value(i32 %add.i250.i, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2317)
    #dbg_value(i32 %add.i250.i, !1933, !DIExpression(), !2317)
  %conv15.i.i257.i = zext i32 %add.i250.i to i64, !dbg !2319
  %add.i.i258.i = mul nuw i64 %conv15.i.i257.i, 4294967297, !dbg !2320
    #dbg_value(i64 %add.i.i258.i, !1934, !DIExpression(), !2317)
    #dbg_value(i32 32, !1929, !DIExpression(), !2317)
  switch i32 %70, label %x264_macroblock_cache_mv.exit284.i [
    i32 7, label %do.body.i.i275.i.preheader
    i32 3, label %if.then63.i.i259.i
  ], !dbg !2321

do.body.i.i275.i.preheader:                       ; preds = %x264_macroblock_cache_ref.exit.i
  br i1 %min.iters.check547, label %do.body.i.i275.i.preheader567, label %vector.ph548, !dbg !2322

do.body.i.i275.i.preheader567:                    ; preds = %middle.block545, %do.body.i.i275.i.preheader
  %d.0.i.i276.i.ph = phi ptr [ %arrayidx4.i256.i, %do.body.i.i275.i.preheader ], [ %ind.end551, %middle.block545 ]
  %h.addr.0.i.i277.i.ph = phi i32 [ %shr41.i, %do.body.i.i275.i.preheader ], [ %ind.end554, %middle.block545 ]
  %96 = add nsw i32 %h.addr.0.i.i277.i.ph, -2, !dbg !2322
  %97 = lshr i32 %96, 1, !dbg !2322
  %98 = add nuw i32 %97, 1, !dbg !2322
  %xtraiter572 = and i32 %98, 3, !dbg !2322
  %lcmp.mod573.not = icmp eq i32 %xtraiter572, 0, !dbg !2322
  br i1 %lcmp.mod573.not, label %do.body.i.i275.i.prol.loopexit, label %do.body.i.i275.i.prol, !dbg !2322

do.body.i.i275.i.prol:                            ; preds = %do.body.i.i275.i.preheader567, %do.body.i.i275.i.prol
  %d.0.i.i276.i.prol = phi ptr [ %add.ptr106.i.i282.i.prol, %do.body.i.i275.i.prol ], [ %d.0.i.i276.i.ph, %do.body.i.i275.i.preheader567 ], !dbg !2317
  %h.addr.0.i.i277.i.prol = phi i32 [ %sub.i.i281.i.prol, %do.body.i.i275.i.prol ], [ %h.addr.0.i.i277.i.ph, %do.body.i.i275.i.preheader567 ]
  %prol.iter574 = phi i32 [ %prol.iter574.next, %do.body.i.i275.i.prol ], [ 0, %do.body.i.i275.i.preheader567 ]
    #dbg_value(i32 %h.addr.0.i.i277.i.prol, !1928, !DIExpression(), !2317)
    #dbg_value(ptr %d.0.i.i276.i.prol, !1931, !DIExpression(), !2317)
  store i64 %add.i.i258.i, ptr %d.0.i.i276.i.prol, align 8, !dbg !2323
  %add.ptr95.i.i278.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 8, !dbg !2324
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.prol, align 8, !dbg !2325
  %add.ptr98.i.i279.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 32, !dbg !2326
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.prol, align 8, !dbg !2327
  %add.ptr103.i.i280.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 40, !dbg !2328
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.prol, align 8, !dbg !2329
  %sub.i.i281.i.prol = add nsw i32 %h.addr.0.i.i277.i.prol, -2, !dbg !2330
    #dbg_value(i32 %sub.i.i281.i.prol, !1928, !DIExpression(), !2317)
  %add.ptr106.i.i282.i.prol = getelementptr inbounds i8, ptr %d.0.i.i276.i.prol, i64 64, !dbg !2331
    #dbg_value(ptr %add.ptr106.i.i282.i.prol, !1931, !DIExpression(), !2317)
  %prol.iter574.next = add i32 %prol.iter574, 1, !dbg !2332
  %prol.iter574.cmp.not = icmp eq i32 %prol.iter574.next, %xtraiter572, !dbg !2332
  br i1 %prol.iter574.cmp.not, label %do.body.i.i275.i.prol.loopexit, label %do.body.i.i275.i.prol, !dbg !2332, !llvm.loop !2333

do.body.i.i275.i.prol.loopexit:                   ; preds = %do.body.i.i275.i.prol, %do.body.i.i275.i.preheader567
  %d.0.i.i276.i.unr = phi ptr [ %d.0.i.i276.i.ph, %do.body.i.i275.i.preheader567 ], [ %add.ptr106.i.i282.i.prol, %do.body.i.i275.i.prol ]
  %h.addr.0.i.i277.i.unr = phi i32 [ %h.addr.0.i.i277.i.ph, %do.body.i.i275.i.preheader567 ], [ %sub.i.i281.i.prol, %do.body.i.i275.i.prol ]
  %99 = icmp ult i32 %96, 6, !dbg !2322
  br i1 %99, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i, !dbg !2322

vector.ph548:                                     ; preds = %do.body.i.i275.i.preheader
  %ind.end551 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %77, !dbg !2322
  br label %vector.body556, !dbg !2322

vector.body556:                                   ; preds = %vector.body556, %vector.ph548
  %index557 = phi i64 [ 0, %vector.ph548 ], [ %index.next563, %vector.body556 ]
  %offset.idx558 = shl i64 %index557, 6, !dbg !2322
  %100 = or disjoint i64 %offset.idx558, 64, !dbg !2322
  %101 = or disjoint i64 %offset.idx558, 128, !dbg !2322
  %102 = or disjoint i64 %offset.idx558, 192, !dbg !2322
  %next.gep559 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %offset.idx558
  %next.gep560 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %100
  %next.gep561 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %101
  %next.gep562 = getelementptr i8, ptr %arrayidx4.i256.i, i64 %102
  store i64 %add.i.i258.i, ptr %next.gep559, align 8, !dbg !2323
  store i64 %add.i.i258.i, ptr %next.gep560, align 8, !dbg !2323
  store i64 %add.i.i258.i, ptr %next.gep561, align 8, !dbg !2323
  store i64 %add.i.i258.i, ptr %next.gep562, align 8, !dbg !2323
  %103 = getelementptr inbounds i8, ptr %next.gep559, i64 8, !dbg !2324
  %104 = getelementptr inbounds i8, ptr %next.gep560, i64 8, !dbg !2324
  %105 = getelementptr inbounds i8, ptr %next.gep561, i64 8, !dbg !2324
  %106 = getelementptr inbounds i8, ptr %next.gep562, i64 8, !dbg !2324
  store i64 %add.i.i258.i, ptr %103, align 8, !dbg !2325
  store i64 %add.i.i258.i, ptr %104, align 8, !dbg !2325
  store i64 %add.i.i258.i, ptr %105, align 8, !dbg !2325
  store i64 %add.i.i258.i, ptr %106, align 8, !dbg !2325
  %107 = getelementptr inbounds i8, ptr %next.gep559, i64 32, !dbg !2326
  %108 = getelementptr inbounds i8, ptr %next.gep560, i64 32, !dbg !2326
  %109 = getelementptr inbounds i8, ptr %next.gep561, i64 32, !dbg !2326
  %110 = getelementptr inbounds i8, ptr %next.gep562, i64 32, !dbg !2326
  store i64 %add.i.i258.i, ptr %107, align 8, !dbg !2327
  store i64 %add.i.i258.i, ptr %108, align 8, !dbg !2327
  store i64 %add.i.i258.i, ptr %109, align 8, !dbg !2327
  store i64 %add.i.i258.i, ptr %110, align 8, !dbg !2327
  %111 = getelementptr inbounds i8, ptr %next.gep559, i64 40, !dbg !2328
  %112 = getelementptr inbounds i8, ptr %next.gep560, i64 40, !dbg !2328
  %113 = getelementptr inbounds i8, ptr %next.gep561, i64 40, !dbg !2328
  %114 = getelementptr inbounds i8, ptr %next.gep562, i64 40, !dbg !2328
  store i64 %add.i.i258.i, ptr %111, align 8, !dbg !2329
  store i64 %add.i.i258.i, ptr %112, align 8, !dbg !2329
  store i64 %add.i.i258.i, ptr %113, align 8, !dbg !2329
  store i64 %add.i.i258.i, ptr %114, align 8, !dbg !2329
  %index.next563 = add nuw i64 %index557, 4
  %115 = icmp eq i64 %index.next563, %n.vec550
  br i1 %115, label %middle.block545, label %vector.body556, !llvm.loop !2334

middle.block545:                                  ; preds = %vector.body556
  br i1 %cmp.n564, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i.preheader567, !dbg !2332

if.then63.i.i259.i:                               ; preds = %x264_macroblock_cache_ref.exit.i
  store i64 %add.i.i258.i, ptr %arrayidx4.i256.i, align 8, !dbg !2338
  br i1 %cmp67.i.i.i497, label %x264_macroblock_cache_mv.exit284.thread336.i, label %if.end70.i.i261.i, !dbg !2339

if.end70.i.i261.i:                                ; preds = %if.then63.i.i259.i
  %add.ptr73.i.i262.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 32, !dbg !2340
  store i64 %add.i.i258.i, ptr %add.ptr73.i.i262.i, align 8, !dbg !2341
  br i1 %cmp74.i.i.i498, label %x264_macroblock_cache_mv.exit284.thread336.i, label %if.end77.i.i264.i, !dbg !2342

if.end77.i.i264.i:                                ; preds = %if.end70.i.i261.i
  %add.ptr80.i.i265.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 64, !dbg !2343
  store i64 %add.i.i258.i, ptr %add.ptr80.i.i265.i, align 8, !dbg !2344
  %add.ptr83.i.i266.i = getelementptr inbounds i8, ptr %arrayidx4.i256.i, i64 96, !dbg !2345
  store i64 %add.i.i258.i, ptr %add.ptr83.i.i266.i, align 8, !dbg !2346
  br label %x264_macroblock_cache_mv.exit284.thread336.i, !dbg !2347

do.body.i.i275.i:                                 ; preds = %do.body.i.i275.i.prol.loopexit, %do.body.i.i275.i
  %d.0.i.i276.i = phi ptr [ %add.ptr106.i.i282.i.3, %do.body.i.i275.i ], [ %d.0.i.i276.i.unr, %do.body.i.i275.i.prol.loopexit ], !dbg !2317
  %h.addr.0.i.i277.i = phi i32 [ %sub.i.i281.i.3, %do.body.i.i275.i ], [ %h.addr.0.i.i277.i.unr, %do.body.i.i275.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i277.i, !1928, !DIExpression(), !2317)
    #dbg_value(ptr %d.0.i.i276.i, !1931, !DIExpression(), !2317)
  store i64 %add.i.i258.i, ptr %d.0.i.i276.i, align 8, !dbg !2323
  %add.ptr95.i.i278.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 8, !dbg !2324
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i, align 8, !dbg !2325
  %add.ptr98.i.i279.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 32, !dbg !2326
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i, align 8, !dbg !2327
  %add.ptr103.i.i280.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 40, !dbg !2328
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i, align 8, !dbg !2329
    #dbg_value(i32 %h.addr.0.i.i277.i, !1928, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2317)
  %add.ptr106.i.i282.i = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 64, !dbg !2331
    #dbg_value(ptr %add.ptr106.i.i282.i, !1931, !DIExpression(), !2317)
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i, align 8, !dbg !2323
  %add.ptr95.i.i278.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 72, !dbg !2324
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.1, align 8, !dbg !2325
  %add.ptr98.i.i279.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 96, !dbg !2326
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.1, align 8, !dbg !2327
  %add.ptr103.i.i280.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 104, !dbg !2328
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.1, align 8, !dbg !2329
    #dbg_value(i32 %h.addr.0.i.i277.i, !1928, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2317)
  %add.ptr106.i.i282.i.1 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 128, !dbg !2331
    #dbg_value(ptr %add.ptr106.i.i282.i.1, !1931, !DIExpression(), !2317)
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i.1, align 8, !dbg !2323
  %add.ptr95.i.i278.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 136, !dbg !2324
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.2, align 8, !dbg !2325
  %add.ptr98.i.i279.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 160, !dbg !2326
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.2, align 8, !dbg !2327
  %add.ptr103.i.i280.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 168, !dbg !2328
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.2, align 8, !dbg !2329
    #dbg_value(i32 %h.addr.0.i.i277.i, !1928, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !2317)
  %add.ptr106.i.i282.i.2 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 192, !dbg !2331
    #dbg_value(ptr %add.ptr106.i.i282.i.2, !1931, !DIExpression(), !2317)
  store i64 %add.i.i258.i, ptr %add.ptr106.i.i282.i.2, align 8, !dbg !2323
  %add.ptr95.i.i278.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 200, !dbg !2324
  store i64 %add.i.i258.i, ptr %add.ptr95.i.i278.i.3, align 8, !dbg !2325
  %add.ptr98.i.i279.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 224, !dbg !2326
  store i64 %add.i.i258.i, ptr %add.ptr98.i.i279.i.3, align 8, !dbg !2327
  %add.ptr103.i.i280.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 232, !dbg !2328
  store i64 %add.i.i258.i, ptr %add.ptr103.i.i280.i.3, align 8, !dbg !2329
  %sub.i.i281.i.3 = add nsw i32 %h.addr.0.i.i277.i, -8, !dbg !2330
    #dbg_value(i32 %sub.i.i281.i.3, !1928, !DIExpression(), !2317)
  %add.ptr106.i.i282.i.3 = getelementptr inbounds i8, ptr %d.0.i.i276.i, i64 256, !dbg !2331
    #dbg_value(ptr %add.ptr106.i.i282.i.3, !1931, !DIExpression(), !2317)
  %tobool.not.i.i283.i.3 = icmp eq i32 %sub.i.i281.i.3, 0, !dbg !2332
  br i1 %tobool.not.i.i283.i.3, label %x264_macroblock_cache_mv.exit284.i, label %do.body.i.i275.i, !dbg !2332, !llvm.loop !2348

x264_macroblock_cache_mv.exit284.thread336.i:     ; preds = %if.end77.i.i264.i, %if.end70.i.i261.i, %if.then63.i.i259.i
  %116 = load i16, ptr %arrayidx87.i, align 2, !dbg !2349
  %117 = load i16, ptr %arrayidx93.i, align 2, !dbg !2350
  %conv126339.i = zext i16 %117 to i32, !dbg !2350
  %sub127340.i = sub nsw i32 %shr97.i, %conv126339.i, !dbg !2351
    #dbg_value(!DIArgList(i32 %shr92.i, i16 %116), !2303, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value), !2352)
    #dbg_value(!DIArgList(i32 %shr97.i, i32 %conv126339.i), !2308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2352)
  %shr92.tr.i = trunc i32 %shr92.i to i16, !dbg !2354
  %sub124338.narrow.i = sub i16 %shr92.tr.i, %116, !dbg !2354
  %and.i285341.i = zext i16 %sub124338.narrow.i to i32, !dbg !2354
  %shl.i286342.i = shl i32 %sub127340.i, 16, !dbg !2355
  %add.i287343.i = or disjoint i32 %shl.i286342.i, %and.i285341.i, !dbg !2356
    #dbg_value(ptr %h, !1953, !DIExpression(), !2357)
    #dbg_value(i32 %mul115.i, !1954, !DIExpression(), !2357)
    #dbg_value(i32 %i8.0353.i, !1955, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2357)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !1956, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2357)
    #dbg_value(i32 %shr41.i, !1957, !DIExpression(), !2357)
    #dbg_value(i32 1, !1958, !DIExpression(), !2357)
    #dbg_value(i32 %add.i287343.i, !1959, !DIExpression(), !2357)
  %arrayidx4.i293344.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 1, i64 %idxprom3.i.i502, !dbg !2359
    #dbg_value(ptr %arrayidx4.i293344.i, !1960, !DIExpression(), !2357)
    #dbg_value(ptr %arrayidx4.i293344.i, !1922, !DIExpression(), !2360)
    #dbg_value(i32 %mul5.i.i499, !1927, !DIExpression(), !2360)
    #dbg_value(i32 %shr41.i, !1928, !DIExpression(), !2360)
    #dbg_value(i32 4, !1929, !DIExpression(), !2360)
    #dbg_value(i32 %add.i287343.i, !1930, !DIExpression(), !2360)
    #dbg_value(ptr %arrayidx4.i293344.i, !1931, !DIExpression(), !2360)
    #dbg_value(i32 %add.i287343.i, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2360)
    #dbg_value(i32 %add.i287343.i, !1933, !DIExpression(), !2360)
  %conv15.i.i295345.i = zext i32 %add.i287343.i to i64, !dbg !2362
  %add.i.i296346.i = mul nuw i64 %conv15.i.i295345.i, 4294967297, !dbg !2363
    #dbg_value(i64 %add.i.i296346.i, !1934, !DIExpression(), !2360)
    #dbg_value(i32 32, !1929, !DIExpression(), !2360)
  br label %if.then63.i.i297.i, !dbg !2364

x264_macroblock_cache_mv.exit284.i:               ; preds = %do.body.i.i275.i.prol.loopexit, %do.body.i.i275.i, %middle.block545, %x264_macroblock_cache_ref.exit.i
  %118 = load i16, ptr %arrayidx87.i, align 2, !dbg !2349
  %119 = load i16, ptr %arrayidx93.i, align 2, !dbg !2350
  %conv126.i = zext i16 %119 to i32, !dbg !2350
  %sub127.i = sub nsw i32 %shr97.i, %conv126.i, !dbg !2351
    #dbg_value(!DIArgList(i32 %shr92.i, i16 %118), !2303, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value), !2352)
    #dbg_value(!DIArgList(i32 %shr97.i, i32 %conv126.i), !2308, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2352)
  %shr92.tr351.i = trunc i32 %shr92.i to i16, !dbg !2354
  %sub124.narrow.i = sub i16 %shr92.tr351.i, %118, !dbg !2354
  %and.i285.i = zext i16 %sub124.narrow.i to i32, !dbg !2354
  %shl.i286.i = shl i32 %sub127.i, 16, !dbg !2355
  %add.i287.i = or disjoint i32 %shl.i286.i, %and.i285.i, !dbg !2356
    #dbg_value(ptr %h, !1953, !DIExpression(), !2357)
    #dbg_value(i32 %mul115.i, !1954, !DIExpression(), !2357)
    #dbg_value(i32 %i8.0353.i, !1955, !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value), !2357)
    #dbg_value(!DIArgList(i32 4, i32 %sub.i492), !1956, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value), !2357)
    #dbg_value(i32 %shr41.i, !1957, !DIExpression(), !2357)
    #dbg_value(i32 1, !1958, !DIExpression(), !2357)
    #dbg_value(i32 %add.i287.i, !1959, !DIExpression(), !2357)
  %arrayidx4.i293.i = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv1.i251.i, i64 0, i64 1, i64 %idxprom3.i.i502, !dbg !2359
    #dbg_value(ptr %arrayidx4.i293.i, !1960, !DIExpression(), !2357)
    #dbg_value(ptr %arrayidx4.i293.i, !1922, !DIExpression(), !2360)
    #dbg_value(i32 %mul5.i.i499, !1927, !DIExpression(), !2360)
    #dbg_value(i32 %shr41.i, !1928, !DIExpression(), !2360)
    #dbg_value(i32 4, !1929, !DIExpression(), !2360)
    #dbg_value(i32 %add.i287.i, !1930, !DIExpression(), !2360)
    #dbg_value(ptr %arrayidx4.i293.i, !1931, !DIExpression(), !2360)
    #dbg_value(i32 %add.i287.i, !1932, !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !2360)
    #dbg_value(i32 %add.i287.i, !1933, !DIExpression(), !2360)
  %conv15.i.i295.i = zext i32 %add.i287.i to i64, !dbg !2362
  %add.i.i296.i = mul nuw i64 %conv15.i.i295.i, 4294967297, !dbg !2363
    #dbg_value(i64 %add.i.i296.i, !1934, !DIExpression(), !2360)
    #dbg_value(i32 32, !1929, !DIExpression(), !2360)
  switch i32 %70, label %for.inc.i [
    i32 7, label %do.body.i.i313.i.preheader
    i32 3, label %if.then63.i.i297.i
  ], !dbg !2364

do.body.i.i313.i.preheader:                       ; preds = %x264_macroblock_cache_mv.exit284.i
  br i1 %min.iters.check, label %do.body.i.i313.i.preheader566, label %vector.ph, !dbg !2365

do.body.i.i313.i.preheader566:                    ; preds = %middle.block, %do.body.i.i313.i.preheader
  %d.0.i.i314.i.ph = phi ptr [ %arrayidx4.i293.i, %do.body.i.i313.i.preheader ], [ %ind.end, %middle.block ]
  %h.addr.0.i.i315.i.ph = phi i32 [ %shr41.i, %do.body.i.i313.i.preheader ], [ %ind.end540, %middle.block ]
  %120 = add nsw i32 %h.addr.0.i.i315.i.ph, -2, !dbg !2365
  %121 = lshr i32 %120, 1, !dbg !2365
  %122 = add nuw i32 %121, 1, !dbg !2365
  %xtraiter575 = and i32 %122, 3, !dbg !2365
  %lcmp.mod576.not = icmp eq i32 %xtraiter575, 0, !dbg !2365
  br i1 %lcmp.mod576.not, label %do.body.i.i313.i.prol.loopexit, label %do.body.i.i313.i.prol, !dbg !2365

do.body.i.i313.i.prol:                            ; preds = %do.body.i.i313.i.preheader566, %do.body.i.i313.i.prol
  %d.0.i.i314.i.prol = phi ptr [ %add.ptr106.i.i320.i.prol, %do.body.i.i313.i.prol ], [ %d.0.i.i314.i.ph, %do.body.i.i313.i.preheader566 ], !dbg !2360
  %h.addr.0.i.i315.i.prol = phi i32 [ %sub.i.i319.i.prol, %do.body.i.i313.i.prol ], [ %h.addr.0.i.i315.i.ph, %do.body.i.i313.i.preheader566 ]
  %prol.iter577 = phi i32 [ %prol.iter577.next, %do.body.i.i313.i.prol ], [ 0, %do.body.i.i313.i.preheader566 ]
    #dbg_value(i32 %h.addr.0.i.i315.i.prol, !1928, !DIExpression(), !2360)
    #dbg_value(ptr %d.0.i.i314.i.prol, !1931, !DIExpression(), !2360)
  store i64 %add.i.i296.i, ptr %d.0.i.i314.i.prol, align 8, !dbg !2366
  %add.ptr95.i.i316.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 8, !dbg !2367
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.prol, align 8, !dbg !2368
  %add.ptr98.i.i317.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 32, !dbg !2369
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.prol, align 8, !dbg !2370
  %add.ptr103.i.i318.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 40, !dbg !2371
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.prol, align 8, !dbg !2372
  %sub.i.i319.i.prol = add nsw i32 %h.addr.0.i.i315.i.prol, -2, !dbg !2373
    #dbg_value(i32 %sub.i.i319.i.prol, !1928, !DIExpression(), !2360)
  %add.ptr106.i.i320.i.prol = getelementptr inbounds i8, ptr %d.0.i.i314.i.prol, i64 64, !dbg !2374
    #dbg_value(ptr %add.ptr106.i.i320.i.prol, !1931, !DIExpression(), !2360)
  %prol.iter577.next = add i32 %prol.iter577, 1, !dbg !2375
  %prol.iter577.cmp.not = icmp eq i32 %prol.iter577.next, %xtraiter575, !dbg !2375
  br i1 %prol.iter577.cmp.not, label %do.body.i.i313.i.prol.loopexit, label %do.body.i.i313.i.prol, !dbg !2375, !llvm.loop !2376

do.body.i.i313.i.prol.loopexit:                   ; preds = %do.body.i.i313.i.prol, %do.body.i.i313.i.preheader566
  %d.0.i.i314.i.unr = phi ptr [ %d.0.i.i314.i.ph, %do.body.i.i313.i.preheader566 ], [ %add.ptr106.i.i320.i.prol, %do.body.i.i313.i.prol ]
  %h.addr.0.i.i315.i.unr = phi i32 [ %h.addr.0.i.i315.i.ph, %do.body.i.i313.i.preheader566 ], [ %sub.i.i319.i.prol, %do.body.i.i313.i.prol ]
  %123 = icmp ult i32 %120, 6, !dbg !2365
  br i1 %123, label %for.inc.i, label %do.body.i.i313.i, !dbg !2365

vector.ph:                                        ; preds = %do.body.i.i313.i.preheader
  %ind.end = getelementptr i8, ptr %arrayidx4.i293.i, i64 %79, !dbg !2365
  br label %vector.body, !dbg !2365

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 6, !dbg !2365
  %124 = or disjoint i64 %offset.idx, 64, !dbg !2365
  %125 = or disjoint i64 %offset.idx, 128, !dbg !2365
  %126 = or disjoint i64 %offset.idx, 192, !dbg !2365
  %next.gep = getelementptr i8, ptr %arrayidx4.i293.i, i64 %offset.idx
  %next.gep542 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %124
  %next.gep543 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %125
  %next.gep544 = getelementptr i8, ptr %arrayidx4.i293.i, i64 %126
  store i64 %add.i.i296.i, ptr %next.gep, align 8, !dbg !2366
  store i64 %add.i.i296.i, ptr %next.gep542, align 8, !dbg !2366
  store i64 %add.i.i296.i, ptr %next.gep543, align 8, !dbg !2366
  store i64 %add.i.i296.i, ptr %next.gep544, align 8, !dbg !2366
  %127 = getelementptr inbounds i8, ptr %next.gep, i64 8, !dbg !2367
  %128 = getelementptr inbounds i8, ptr %next.gep542, i64 8, !dbg !2367
  %129 = getelementptr inbounds i8, ptr %next.gep543, i64 8, !dbg !2367
  %130 = getelementptr inbounds i8, ptr %next.gep544, i64 8, !dbg !2367
  store i64 %add.i.i296.i, ptr %127, align 8, !dbg !2368
  store i64 %add.i.i296.i, ptr %128, align 8, !dbg !2368
  store i64 %add.i.i296.i, ptr %129, align 8, !dbg !2368
  store i64 %add.i.i296.i, ptr %130, align 8, !dbg !2368
  %131 = getelementptr inbounds i8, ptr %next.gep, i64 32, !dbg !2369
  %132 = getelementptr inbounds i8, ptr %next.gep542, i64 32, !dbg !2369
  %133 = getelementptr inbounds i8, ptr %next.gep543, i64 32, !dbg !2369
  %134 = getelementptr inbounds i8, ptr %next.gep544, i64 32, !dbg !2369
  store i64 %add.i.i296.i, ptr %131, align 8, !dbg !2370
  store i64 %add.i.i296.i, ptr %132, align 8, !dbg !2370
  store i64 %add.i.i296.i, ptr %133, align 8, !dbg !2370
  store i64 %add.i.i296.i, ptr %134, align 8, !dbg !2370
  %135 = getelementptr inbounds i8, ptr %next.gep, i64 40, !dbg !2371
  %136 = getelementptr inbounds i8, ptr %next.gep542, i64 40, !dbg !2371
  %137 = getelementptr inbounds i8, ptr %next.gep543, i64 40, !dbg !2371
  %138 = getelementptr inbounds i8, ptr %next.gep544, i64 40, !dbg !2371
  store i64 %add.i.i296.i, ptr %135, align 8, !dbg !2372
  store i64 %add.i.i296.i, ptr %136, align 8, !dbg !2372
  store i64 %add.i.i296.i, ptr %137, align 8, !dbg !2372
  store i64 %add.i.i296.i, ptr %138, align 8, !dbg !2372
  %index.next = add nuw i64 %index, 4
  %139 = icmp eq i64 %index.next, %n.vec
  br i1 %139, label %middle.block, label %vector.body, !llvm.loop !2377

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc.i, label %do.body.i.i313.i.preheader566, !dbg !2375

if.then63.i.i297.i:                               ; preds = %x264_macroblock_cache_mv.exit284.i, %x264_macroblock_cache_mv.exit284.thread336.i
  %add.i.i296348.i = phi i64 [ %add.i.i296346.i, %x264_macroblock_cache_mv.exit284.thread336.i ], [ %add.i.i296.i, %x264_macroblock_cache_mv.exit284.i ]
  %arrayidx4.i293347.i = phi ptr [ %arrayidx4.i293344.i, %x264_macroblock_cache_mv.exit284.thread336.i ], [ %arrayidx4.i293.i, %x264_macroblock_cache_mv.exit284.i ]
  store i64 %add.i.i296348.i, ptr %arrayidx4.i293347.i, align 8, !dbg !2379
  br i1 %cmp67.i.i.i497, label %for.inc.i, label %if.end70.i.i299.i, !dbg !2380

if.end70.i.i299.i:                                ; preds = %if.then63.i.i297.i
  %gep.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep.i, i64 0, i64 1, i64 %idxprom3.i.i502, !dbg !2381
  store i64 %add.i.i296348.i, ptr %gep.i, align 8, !dbg !2382
  br i1 %cmp74.i.i.i498, label %for.inc.i, label %if.end77.i.i302.i, !dbg !2383

if.end77.i.i302.i:                                ; preds = %if.end70.i.i299.i
  %gep358.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep357.i, i64 0, i64 1, i64 %idxprom3.i.i502, !dbg !2384
  store i64 %add.i.i296348.i, ptr %gep358.i, align 8, !dbg !2385
  %gep360.i = getelementptr [2 x [40 x [2 x i16]]], ptr %invariant.gep359.i, i64 0, i64 1, i64 %idxprom3.i.i502, !dbg !2386
  store i64 %add.i.i296348.i, ptr %gep360.i, align 8, !dbg !2387
  br label %for.inc.i, !dbg !2388

do.body.i.i313.i:                                 ; preds = %do.body.i.i313.i.prol.loopexit, %do.body.i.i313.i
  %d.0.i.i314.i = phi ptr [ %add.ptr106.i.i320.i.3, %do.body.i.i313.i ], [ %d.0.i.i314.i.unr, %do.body.i.i313.i.prol.loopexit ], !dbg !2360
  %h.addr.0.i.i315.i = phi i32 [ %sub.i.i319.i.3, %do.body.i.i313.i ], [ %h.addr.0.i.i315.i.unr, %do.body.i.i313.i.prol.loopexit ]
    #dbg_value(i32 %h.addr.0.i.i315.i, !1928, !DIExpression(), !2360)
    #dbg_value(ptr %d.0.i.i314.i, !1931, !DIExpression(), !2360)
  store i64 %add.i.i296.i, ptr %d.0.i.i314.i, align 8, !dbg !2366
  %add.ptr95.i.i316.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 8, !dbg !2367
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i, align 8, !dbg !2368
  %add.ptr98.i.i317.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 32, !dbg !2369
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i, align 8, !dbg !2370
  %add.ptr103.i.i318.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 40, !dbg !2371
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i, align 8, !dbg !2372
    #dbg_value(i32 %h.addr.0.i.i315.i, !1928, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2360)
  %add.ptr106.i.i320.i = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 64, !dbg !2374
    #dbg_value(ptr %add.ptr106.i.i320.i, !1931, !DIExpression(), !2360)
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i, align 8, !dbg !2366
  %add.ptr95.i.i316.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 72, !dbg !2367
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.1, align 8, !dbg !2368
  %add.ptr98.i.i317.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 96, !dbg !2369
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.1, align 8, !dbg !2370
  %add.ptr103.i.i318.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 104, !dbg !2371
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.1, align 8, !dbg !2372
    #dbg_value(i32 %h.addr.0.i.i315.i, !1928, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !2360)
  %add.ptr106.i.i320.i.1 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 128, !dbg !2374
    #dbg_value(ptr %add.ptr106.i.i320.i.1, !1931, !DIExpression(), !2360)
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i.1, align 8, !dbg !2366
  %add.ptr95.i.i316.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 136, !dbg !2367
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.2, align 8, !dbg !2368
  %add.ptr98.i.i317.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 160, !dbg !2369
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.2, align 8, !dbg !2370
  %add.ptr103.i.i318.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 168, !dbg !2371
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.2, align 8, !dbg !2372
    #dbg_value(i32 %h.addr.0.i.i315.i, !1928, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !2360)
  %add.ptr106.i.i320.i.2 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 192, !dbg !2374
    #dbg_value(ptr %add.ptr106.i.i320.i.2, !1931, !DIExpression(), !2360)
  store i64 %add.i.i296.i, ptr %add.ptr106.i.i320.i.2, align 8, !dbg !2366
  %add.ptr95.i.i316.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 200, !dbg !2367
  store i64 %add.i.i296.i, ptr %add.ptr95.i.i316.i.3, align 8, !dbg !2368
  %add.ptr98.i.i317.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 224, !dbg !2369
  store i64 %add.i.i296.i, ptr %add.ptr98.i.i317.i.3, align 8, !dbg !2370
  %add.ptr103.i.i318.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 232, !dbg !2371
  store i64 %add.i.i296.i, ptr %add.ptr103.i.i318.i.3, align 8, !dbg !2372
  %sub.i.i319.i.3 = add nsw i32 %h.addr.0.i.i315.i, -8, !dbg !2373
    #dbg_value(i32 %sub.i.i319.i.3, !1928, !DIExpression(), !2360)
  %add.ptr106.i.i320.i.3 = getelementptr inbounds i8, ptr %d.0.i.i314.i, i64 256, !dbg !2374
    #dbg_value(ptr %add.ptr106.i.i320.i.3, !1931, !DIExpression(), !2360)
  %tobool.not.i.i321.i.3 = icmp eq i32 %sub.i.i319.i.3, 0, !dbg !2375
  br i1 %tobool.not.i.i321.i.3, label %for.inc.i, label %do.body.i.i313.i, !dbg !2375, !llvm.loop !2389

for.inc.i:                                        ; preds = %do.body.i.i313.i.prol.loopexit, %do.body.i.i313.i, %middle.block, %if.end77.i.i302.i, %if.end70.i.i299.i, %if.then63.i.i297.i, %x264_macroblock_cache_mv.exit284.i
  %add140.i = add nuw nsw i32 %i8.0353.i, %add37.i, !dbg !2390
    #dbg_value(i32 %add140.i, !2139, !DIExpression(), !2226)
  %cmp42.not.not.i = icmp slt i32 %add140.i, %add34.i, !dbg !2227
  br i1 %cmp42.not.not.i, label %for.body.i, label %if.end4, !dbg !2228, !llvm.loop !2391

if.end4:                                          ; preds = %cleanup.i, %for.inc.i, %if.end.i491, %if.then.i508, %if.end206.i, %lor.lhs.false197.i, %if.end183.i, %if.then163.i
    #dbg_value(i32 1, !1760, !DIExpression(), !1767)
  %cmp5.not = icmp eq ptr %b_changed, null, !dbg !2393
  br i1 %cmp5.not, label %for.cond.preheader, label %if.then7, !dbg !2394

if.then7:                                         ; preds = %if.end4
  %direct_mv = getelementptr inbounds i8, ptr %h, i64 25720, !dbg !2395
  %140 = load i32, ptr %direct_mv, align 8, !dbg !2395
  %arrayidx12 = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !2396
  %141 = load i32, ptr %arrayidx12, align 4, !dbg !2396
  %xor = xor i32 %141, %140, !dbg !2397
    #dbg_value(i32 %xor, !1761, !DIExpression(), !2398)
  %arrayidx17 = getelementptr inbounds i8, ptr %h, i64 25736, !dbg !2399
  %142 = load i32, ptr %arrayidx17, align 8, !dbg !2399
  %arrayidx25 = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !2400
  %143 = load i32, ptr %arrayidx25, align 4, !dbg !2400
  %xor27 = xor i32 %143, %142, !dbg !2401
  %or = or i32 %xor27, %xor, !dbg !2402
    #dbg_value(i32 %or, !1761, !DIExpression(), !2398)
  %direct_ref = getelementptr inbounds i8, ptr %h, i64 25752, !dbg !2403
  %144 = load i8, ptr %direct_ref, align 8, !dbg !2404
  %arrayidx36 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2405
  %145 = load i8, ptr %arrayidx36, align 1, !dbg !2405
  %xor38471 = xor i8 %145, %144, !dbg !2406
  %xor38 = sext i8 %xor38471 to i32, !dbg !2406
  %or39 = or i32 %or, %xor38, !dbg !2407
    #dbg_value(i32 %or39, !1761, !DIExpression(), !2398)
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 25756, !dbg !2408
  %146 = load i8, ptr %arrayidx43, align 4, !dbg !2408
  %arrayidx51 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2409
  %147 = load i8, ptr %arrayidx51, align 1, !dbg !2409
  %xor53472 = xor i8 %147, %146, !dbg !2410
  %xor53 = sext i8 %xor53472 to i32, !dbg !2410
  %or54 = or i32 %or39, %xor53, !dbg !2411
    #dbg_value(i32 %or54, !1761, !DIExpression(), !2398)
  %tobool55.not = icmp eq i32 %or54, 0, !dbg !2412
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end249.thread535, !dbg !2414

land.lhs.true56:                                  ; preds = %if.then7
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388, !dbg !2415
  %148 = load i32, ptr %i_partition, align 4, !dbg !2415
  %cmp58.not = icmp eq i32 %148, 16, !dbg !2416
  br i1 %cmp58.not, label %if.end249.thread, label %if.end121, !dbg !2417

if.end121:                                        ; preds = %land.lhs.true56
  %arrayidx65 = getelementptr inbounds i8, ptr %h, i64 25732, !dbg !2418
  %149 = load i32, ptr %arrayidx65, align 4, !dbg !2418
  %arrayidx72 = getelementptr inbounds i8, ptr %h, i64 25320, !dbg !2420
  %150 = load i32, ptr %arrayidx72, align 4, !dbg !2420
  %xor74 = xor i32 %150, %149, !dbg !2421
    #dbg_value(i32 %xor74, !1761, !DIExpression(), !2398)
  %arrayidx80 = getelementptr inbounds i8, ptr %h, i64 25748, !dbg !2422
  %151 = load i32, ptr %arrayidx80, align 4, !dbg !2422
  %arrayidx87 = getelementptr inbounds i8, ptr %h, i64 25480, !dbg !2423
  %152 = load i32, ptr %arrayidx87, align 4, !dbg !2423
  %xor89 = xor i32 %152, %151, !dbg !2424
  %or90 = or i32 %xor89, %xor74, !dbg !2425
    #dbg_value(i32 %or90, !1761, !DIExpression(), !2398)
  %arrayidx95 = getelementptr inbounds i8, ptr %h, i64 25755, !dbg !2426
  %153 = load i8, ptr %arrayidx95, align 1, !dbg !2426
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2427
  %154 = load i8, ptr %arrayidx102, align 1, !dbg !2427
  %xor104473 = xor i8 %154, %153, !dbg !2428
  %xor104 = sext i8 %xor104473 to i32, !dbg !2428
  %or105 = or i32 %or90, %xor104, !dbg !2429
    #dbg_value(i32 %or105, !1761, !DIExpression(), !2398)
  %arrayidx110 = getelementptr inbounds i8, ptr %h, i64 25759, !dbg !2430
  %155 = load i8, ptr %arrayidx110, align 1, !dbg !2430
  %arrayidx117 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !2431
  %156 = load i8, ptr %arrayidx117, align 1, !dbg !2431
  %xor119474 = xor i8 %156, %155, !dbg !2432
  %xor119 = sext i8 %xor119474 to i32, !dbg !2432
  %or120 = or i32 %or105, %xor119, !dbg !2433
    #dbg_value(i32 %or120, !1761, !DIExpression(), !2398)
  %tobool122.not = icmp eq i32 %or120, 0, !dbg !2434
  br i1 %tobool122.not, label %land.lhs.true123, label %if.end249.thread535, !dbg !2436

land.lhs.true123:                                 ; preds = %if.end121
  %cmp126 = icmp eq i32 %148, 13, !dbg !2437
  br i1 %cmp126, label %if.end249, label %if.end249.thread, !dbg !2438

if.end249.thread:                                 ; preds = %land.lhs.true56, %land.lhs.true123
    #dbg_value(i32 0, !1761, !DIExpression(), !2398)
  store i32 0, ptr %b_changed, align 4, !dbg !2439
  br label %cleanup376

if.end249.thread535:                              ; preds = %if.end121, %if.then7
  %changed.1.ph = phi i32 [ %or54, %if.then7 ], [ %or120, %if.end121 ]
    #dbg_value(i32 %changed.1.ph, !1761, !DIExpression(), !2398)
  store i32 %changed.1.ph, ptr %b_changed, align 4, !dbg !2439
  br label %for.cond.preheader

if.end249:                                        ; preds = %land.lhs.true123
  %arrayidx133 = getelementptr inbounds i8, ptr %h, i64 25724, !dbg !2440
  %157 = load i32, ptr %arrayidx133, align 4, !dbg !2440
  %arrayidx140 = getelementptr inbounds i8, ptr %h, i64 25256, !dbg !2442
  %158 = load i32, ptr %arrayidx140, align 4, !dbg !2442
  %xor142 = xor i32 %158, %157, !dbg !2443
    #dbg_value(i32 %xor142, !1761, !DIExpression(), !2398)
  %arrayidx148 = getelementptr inbounds i8, ptr %h, i64 25740, !dbg !2444
  %159 = load i32, ptr %arrayidx148, align 4, !dbg !2444
  %arrayidx155 = getelementptr inbounds i8, ptr %h, i64 25416, !dbg !2445
  %160 = load i32, ptr %arrayidx155, align 4, !dbg !2445
  %xor157 = xor i32 %160, %159, !dbg !2446
  %or158 = or i32 %xor157, %xor142, !dbg !2447
    #dbg_value(i32 %or158, !1761, !DIExpression(), !2398)
  %arrayidx163 = getelementptr inbounds i8, ptr %h, i64 25728, !dbg !2448
  %161 = load i32, ptr %arrayidx163, align 8, !dbg !2448
  %arrayidx170 = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !2449
  %162 = load i32, ptr %arrayidx170, align 4, !dbg !2449
  %xor172 = xor i32 %162, %161, !dbg !2450
  %or173 = or i32 %or158, %xor172, !dbg !2451
    #dbg_value(i32 %or173, !1761, !DIExpression(), !2398)
  %arrayidx178 = getelementptr inbounds i8, ptr %h, i64 25744, !dbg !2452
  %163 = load i32, ptr %arrayidx178, align 8, !dbg !2452
  %arrayidx185 = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !2453
  %164 = load i32, ptr %arrayidx185, align 4, !dbg !2453
  %xor187 = xor i32 %164, %163, !dbg !2454
  %or188 = or i32 %or173, %xor187, !dbg !2455
    #dbg_value(i32 %or188, !1761, !DIExpression(), !2398)
  %arrayidx193 = getelementptr inbounds i8, ptr %h, i64 25753, !dbg !2456
  %165 = load i8, ptr %arrayidx193, align 1, !dbg !2456
  %arrayidx200 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2457
  %166 = load i8, ptr %arrayidx200, align 1, !dbg !2457
  %xor202475 = xor i8 %166, %165, !dbg !2458
  %xor202 = sext i8 %xor202475 to i32, !dbg !2458
  %or203 = or i32 %or188, %xor202, !dbg !2459
    #dbg_value(i32 %or203, !1761, !DIExpression(), !2398)
  %arrayidx208 = getelementptr inbounds i8, ptr %h, i64 25757, !dbg !2460
  %167 = load i8, ptr %arrayidx208, align 1, !dbg !2460
  %arrayidx215 = getelementptr inbounds i8, ptr %h, i64 25174, !dbg !2461
  %168 = load i8, ptr %arrayidx215, align 1, !dbg !2461
  %xor217476 = xor i8 %168, %167, !dbg !2462
  %xor217 = sext i8 %xor217476 to i32, !dbg !2462
  %or218 = or i32 %or203, %xor217, !dbg !2463
    #dbg_value(i32 %or218, !1761, !DIExpression(), !2398)
  %arrayidx223 = getelementptr inbounds i8, ptr %h, i64 25754, !dbg !2464
  %169 = load i8, ptr %arrayidx223, align 2, !dbg !2464
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2465
  %170 = load i8, ptr %arrayidx230, align 1, !dbg !2465
  %xor232477 = xor i8 %170, %169, !dbg !2466
  %xor232 = sext i8 %xor232477 to i32, !dbg !2466
  %or233 = or i32 %or218, %xor232, !dbg !2467
    #dbg_value(i32 %or233, !1761, !DIExpression(), !2398)
  %arrayidx238 = getelementptr inbounds i8, ptr %h, i64 25758, !dbg !2468
  %171 = load i8, ptr %arrayidx238, align 2, !dbg !2468
  %arrayidx245 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !2469
  %172 = load i8, ptr %arrayidx245, align 1, !dbg !2469
  %xor247478 = xor i8 %172, %171, !dbg !2470
  %xor247 = sext i8 %xor247478 to i32, !dbg !2470
  %or248 = or i32 %or233, %xor247, !dbg !2471
    #dbg_value(i32 %or248, !1761, !DIExpression(), !2398)
  store i32 %or248, ptr %b_changed, align 4, !dbg !2439
  %tobool250.not.not = icmp eq i32 %or248, 0, !dbg !2472
  br i1 %tobool250.not.not, label %cleanup376, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end249.thread535, %if.end249, %if.end4
  %direct_mv268 = getelementptr inbounds i8, ptr %h, i64 25720
  %direct_ref327 = getelementptr inbounds i8, ptr %h, i64 25752
  %i_partition371 = getelementptr inbounds i8, ptr %h, i64 17388
  %173 = load i32, ptr %i_partition371, align 4
  %direct_partition = getelementptr inbounds i8, ptr %h, i64 25760
    #dbg_value(i64 0, !1764, !DIExpression(), !2474)
  %arrayidx264 = getelementptr inbounds i8, ptr %h, i64 25248, !dbg !2475
  %174 = load i32, ptr %arrayidx264, align 4, !dbg !2475
  store i32 %174, ptr %direct_mv268, align 8, !dbg !2475
  %arrayidx279 = getelementptr inbounds i8, ptr %h, i64 25256, !dbg !2478
  %175 = load i32, ptr %arrayidx279, align 4, !dbg !2478
  %arrayidx286 = getelementptr inbounds i8, ptr %h, i64 25724, !dbg !2478
  store i32 %175, ptr %arrayidx286, align 4, !dbg !2478
  %arrayidx294 = getelementptr inbounds i8, ptr %h, i64 25312, !dbg !2479
  %176 = load i32, ptr %arrayidx294, align 4, !dbg !2479
  %arrayidx301 = getelementptr inbounds i8, ptr %h, i64 25728, !dbg !2479
  store i32 %176, ptr %arrayidx301, align 8, !dbg !2479
  %arrayidx309 = getelementptr inbounds i8, ptr %h, i64 25320, !dbg !2480
  %177 = load i32, ptr %arrayidx309, align 4, !dbg !2480
  %arrayidx316 = getelementptr inbounds i8, ptr %h, i64 25732, !dbg !2480
  store i32 %177, ptr %arrayidx316, align 4, !dbg !2480
  %arrayidx324 = getelementptr inbounds i8, ptr %h, i64 25132, !dbg !2481
  %178 = load i8, ptr %arrayidx324, align 1, !dbg !2481
  store i8 %178, ptr %direct_ref327, align 4, !dbg !2482
  %arrayidx337 = getelementptr inbounds i8, ptr %h, i64 25134, !dbg !2483
  %179 = load i8, ptr %arrayidx337, align 1, !dbg !2483
  %arrayidx343 = getelementptr inbounds i8, ptr %h, i64 25753, !dbg !2484
  store i8 %179, ptr %arrayidx343, align 1, !dbg !2485
  %arrayidx350 = getelementptr inbounds i8, ptr %h, i64 25148, !dbg !2486
  %180 = load i8, ptr %arrayidx350, align 1, !dbg !2486
  %arrayidx356 = getelementptr inbounds i8, ptr %h, i64 25754, !dbg !2487
  store i8 %180, ptr %arrayidx356, align 2, !dbg !2488
  %arrayidx363 = getelementptr inbounds i8, ptr %h, i64 25150, !dbg !2489
  %181 = load i8, ptr %arrayidx363, align 1, !dbg !2489
  %arrayidx369 = getelementptr inbounds i8, ptr %h, i64 25755, !dbg !2490
  store i8 %181, ptr %arrayidx369, align 1, !dbg !2491
    #dbg_value(i64 1, !1764, !DIExpression(), !2474)
  %arrayidx264.1 = getelementptr inbounds i8, ptr %h, i64 25408, !dbg !2475
  %182 = load i32, ptr %arrayidx264.1, align 4, !dbg !2475
  %arrayidx270.1 = getelementptr inbounds i8, ptr %h, i64 25736, !dbg !2475
  store i32 %182, ptr %arrayidx270.1, align 8, !dbg !2475
  %arrayidx279.1 = getelementptr inbounds i8, ptr %h, i64 25416, !dbg !2478
  %183 = load i32, ptr %arrayidx279.1, align 4, !dbg !2478
  %arrayidx286.1 = getelementptr inbounds i8, ptr %h, i64 25740, !dbg !2478
  store i32 %183, ptr %arrayidx286.1, align 4, !dbg !2478
  %arrayidx294.1 = getelementptr inbounds i8, ptr %h, i64 25472, !dbg !2479
  %184 = load i32, ptr %arrayidx294.1, align 4, !dbg !2479
  %arrayidx301.1 = getelementptr inbounds i8, ptr %h, i64 25744, !dbg !2479
  store i32 %184, ptr %arrayidx301.1, align 8, !dbg !2479
  %arrayidx309.1 = getelementptr inbounds i8, ptr %h, i64 25480, !dbg !2480
  %185 = load i32, ptr %arrayidx309.1, align 4, !dbg !2480
  %arrayidx316.1 = getelementptr inbounds i8, ptr %h, i64 25748, !dbg !2480
  store i32 %185, ptr %arrayidx316.1, align 4, !dbg !2480
  %arrayidx324.1 = getelementptr inbounds i8, ptr %h, i64 25172, !dbg !2481
  %186 = load i8, ptr %arrayidx324.1, align 1, !dbg !2481
  %arrayidx329.1 = getelementptr inbounds i8, ptr %h, i64 25756, !dbg !2492
  store i8 %186, ptr %arrayidx329.1, align 4, !dbg !2482
  %arrayidx337.1 = getelementptr inbounds i8, ptr %h, i64 25174, !dbg !2483
  %187 = load i8, ptr %arrayidx337.1, align 1, !dbg !2483
  %arrayidx343.1 = getelementptr inbounds i8, ptr %h, i64 25757, !dbg !2484
  store i8 %187, ptr %arrayidx343.1, align 1, !dbg !2485
  %arrayidx350.1 = getelementptr inbounds i8, ptr %h, i64 25188, !dbg !2486
  %188 = load i8, ptr %arrayidx350.1, align 1, !dbg !2486
  %arrayidx356.1 = getelementptr inbounds i8, ptr %h, i64 25758, !dbg !2487
  store i8 %188, ptr %arrayidx356.1, align 2, !dbg !2488
  %arrayidx363.1 = getelementptr inbounds i8, ptr %h, i64 25190, !dbg !2489
  %189 = load i8, ptr %arrayidx363.1, align 1, !dbg !2489
  %arrayidx369.1 = getelementptr inbounds i8, ptr %h, i64 25759, !dbg !2490
  store i8 %189, ptr %arrayidx369.1, align 1, !dbg !2491
  store i32 %173, ptr %direct_partition, align 16, !dbg !2493
    #dbg_value(i64 2, !1764, !DIExpression(), !2474)
  br label %cleanup376, !dbg !2494

cleanup376:                                       ; preds = %land.lhs.true.i505, %for.body.i, %for.cond.preheader, %land.lhs.true.i, %if.end249.thread, %if.end249, %entry
  %retval.1 = phi i32 [ 1, %if.end249 ], [ 0, %entry ], [ 1, %if.end249.thread ], [ 0, %land.lhs.true.i ], [ 1, %for.cond.preheader ], [ 0, %for.body.i ], [ 0, %land.lhs.true.i505 ]
  ret i32 %retval.1, !dbg !2494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvc, ptr nocapture noundef writeonly %i_mvc) local_unnamed_addr #1 !dbg !2495 {
entry:
    #dbg_value(ptr %h, !2499, !DIExpression(), !2527)
    #dbg_value(i32 %i_list, !2500, !DIExpression(), !2527)
    #dbg_value(i32 %i_ref, !2501, !DIExpression(), !2527)
    #dbg_value(ptr %mvc, !2502, !DIExpression(), !2527)
    #dbg_value(ptr %i_mvc, !2503, !DIExpression(), !2527)
  %mvr1 = getelementptr inbounds i8, ptr %h, i64 16720, !dbg !2528
  %idxprom = sext i32 %i_list to i64, !dbg !2529
  %idxprom2 = sext i32 %i_ref to i64, !dbg !2529
  %arrayidx3 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr1, i64 0, i64 %idxprom, i64 %idxprom2, !dbg !2529
  %0 = load ptr, ptr %arrayidx3, align 8, !dbg !2529
    #dbg_value(ptr %0, !2504, !DIExpression(), !2527)
    #dbg_value(i32 0, !2505, !DIExpression(), !2527)
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248, !dbg !2530
  %1 = load i32, ptr %i_type, align 16, !dbg !2530
  %cmp = icmp eq i32 %1, 1, !dbg !2532
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2533

land.lhs.true:                                    ; preds = %entry
  %ref = getelementptr inbounds i8, ptr %h, i64 25120, !dbg !2534
  %arrayidx8 = getelementptr inbounds [2 x [40 x i8]], ptr %ref, i64 0, i64 %idxprom, i64 30, !dbg !2535
  %2 = load i8, ptr %arrayidx8, align 1, !dbg !2535
  %conv = sext i8 %2 to i32, !dbg !2535
  %cmp9 = icmp eq i32 %conv, %i_ref, !dbg !2536
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2537

if.then:                                          ; preds = %land.lhs.true
  %mv = getelementptr inbounds i8, ptr %h, i64 25200, !dbg !2538
  %arrayidx16 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv, i64 0, i64 %idxprom, i64 30, !dbg !2538
  %3 = load i32, ptr %arrayidx16, align 4, !dbg !2538
  store i32 %3, ptr %mvc, align 4, !dbg !2538
    #dbg_value(i32 1, !2505, !DIExpression(), !2527)
  br label %if.end, !dbg !2541

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !2527
    #dbg_value(i32 %i.0, !2505, !DIExpression(), !2527)
  %cmp20 = icmp eq i32 %i_ref, 0, !dbg !2542
  br i1 %cmp20, label %land.lhs.true22, label %if.end58, !dbg !2543

land.lhs.true22:                                  ; preds = %if.end
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672, !dbg !2544
  %4 = load i32, ptr %b_have_lowres, align 16, !dbg !2544
  %tobool.not = icmp eq i32 %4, 0, !dbg !2545
  br i1 %tobool.not, label %if.end58, label %if.then23, !dbg !2546

if.then23:                                        ; preds = %land.lhs.true22
  %tobool24.not = icmp eq i32 %i_list, 0, !dbg !2547
  %fenc32 = getelementptr inbounds i8, ptr %h, i64 14680, !dbg !2548
  %5 = load ptr, ptr %fenc32, align 8, !dbg !2548
  br i1 %tobool24.not, label %cond.false, label %cond.true, !dbg !2547

cond.true:                                        ; preds = %if.then23
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864, !dbg !2549
  %6 = load ptr, ptr %fref1, align 16, !dbg !2550
  br label %cond.end, !dbg !2547

cond.false:                                       ; preds = %if.then23
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704, !dbg !2551
  %7 = load ptr, ptr %fref0, align 16, !dbg !2552
  br label %cond.end, !dbg !2547

cond.end:                                         ; preds = %cond.false, %cond.true
  %.sink403 = phi ptr [ %7, %cond.false ], [ %5, %cond.true ]
  %.pn = phi ptr [ %5, %cond.false ], [ %6, %cond.true ]
  %8 = phi i64 [ 3576, %cond.false ], [ 3712, %cond.true ]
  %9 = getelementptr inbounds i8, ptr %5, i64 %8, !dbg !2553
  %.sink.in = getelementptr inbounds i8, ptr %.pn, i64 56, !dbg !2548
  %.sink = load i32, ptr %.sink.in, align 8, !dbg !2548
  %i_frame38 = getelementptr inbounds i8, ptr %.sink403, i64 56, !dbg !2548
  %10 = load i32, ptr %i_frame38, align 8, !dbg !2548
  %11 = xor i32 %10, -1, !dbg !2548
  %sub40 = add i32 %.sink, %11, !dbg !2548
  %idxprom41 = sext i32 %sub40 to i64, !dbg !2548
  %arrayidx42 = getelementptr inbounds [17 x ptr], ptr %9, i64 0, i64 %idxprom41, !dbg !2548
  %cond = load ptr, ptr %arrayidx42, align 8, !dbg !2547
    #dbg_value(ptr %cond, !2506, !DIExpression(), !2548)
  %12 = load i16, ptr %cond, align 2, !dbg !2554
  %cmp46.not = icmp eq i16 %12, 32767, !dbg !2556
  br i1 %cmp46.not, label %if.end58, label %if.then48, !dbg !2557

if.then48:                                        ; preds = %cond.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2558
  %13 = load i32, ptr %i_mb_xy, align 8, !dbg !2558
  %idxprom50 = sext i32 %13 to i64, !dbg !2558
  %arrayidx51 = getelementptr inbounds [2 x i16], ptr %cond, i64 %idxprom50, !dbg !2558
  %14 = load i32, ptr %arrayidx51, align 4, !dbg !2558
  %mul = shl i32 %14, 1, !dbg !2560
  %and = and i32 %mul, -65538, !dbg !2561
  %idxprom53 = zext nneg i32 %i.0 to i64, !dbg !2562
  %arrayidx54 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom53, !dbg !2562
  store i32 %and, ptr %arrayidx54, align 4, !dbg !2563
  %inc56 = add nuw nsw i32 %i.0, 1, !dbg !2564
    #dbg_value(i32 %inc56, !2505, !DIExpression(), !2527)
  br label %if.end58, !dbg !2565

if.end58:                                         ; preds = %cond.end, %if.then48, %land.lhs.true22, %if.end
  %i.2 = phi i32 [ %i.0, %land.lhs.true22 ], [ %i.0, %if.end ], [ %inc56, %if.then48 ], [ %i.0, %cond.end ], !dbg !2527
    #dbg_value(i32 %i.2, !2505, !DIExpression(), !2527)
  %i_neighbour_frame = getelementptr inbounds i8, ptr %h, i64 16576, !dbg !2566
  %15 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2566
  %and60 = and i32 %15, 1, !dbg !2568
  %tobool61.not = icmp eq i32 %and60, 0, !dbg !2568
  br i1 %tobool61.not, label %if.end71, label %if.then62, !dbg !2569

if.then62:                                        ; preds = %if.end58
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600, !dbg !2570
  %16 = load i32, ptr %i_mb_left_xy, align 8, !dbg !2570
  %idxprom64 = sext i32 %16 to i64, !dbg !2570
  %arrayidx65 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom64, !dbg !2570
  %17 = load i32, ptr %arrayidx65, align 4, !dbg !2570
  %idxprom67 = zext nneg i32 %i.2 to i64, !dbg !2570
  %arrayidx68 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom67, !dbg !2570
  store i32 %17, ptr %arrayidx68, align 4, !dbg !2570
  %inc70 = add nuw nsw i32 %i.2, 1, !dbg !2570
    #dbg_value(i32 %inc70, !2505, !DIExpression(), !2527)
  %.pre = load i32, ptr %i_neighbour_frame, align 16, !dbg !2573
  br label %if.end71, !dbg !2575

if.end71:                                         ; preds = %if.then62, %if.end58
  %18 = phi i32 [ %.pre, %if.then62 ], [ %15, %if.end58 ], !dbg !2573
  %i.3 = phi i32 [ %inc70, %if.then62 ], [ %i.2, %if.end58 ], !dbg !2527
    #dbg_value(i32 %i.3, !2505, !DIExpression(), !2527)
  %and74 = and i32 %18, 2, !dbg !2576
  %tobool75.not = icmp eq i32 %and74, 0, !dbg !2576
  br i1 %tobool75.not, label %if.end113, label %if.then76, !dbg !2577

if.then76:                                        ; preds = %if.end71
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604, !dbg !2578
  %19 = load i32, ptr %i_mb_top_xy, align 4, !dbg !2578
  %idxprom78 = sext i32 %19 to i64, !dbg !2578
  %arrayidx79 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom78, !dbg !2578
  %20 = load i32, ptr %arrayidx79, align 4, !dbg !2578
  %idxprom81 = zext nneg i32 %i.3 to i64, !dbg !2578
  %arrayidx82 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom81, !dbg !2578
  store i32 %20, ptr %arrayidx82, align 4, !dbg !2578
  %inc84 = add nuw nsw i32 %i.3, 1, !dbg !2578
    #dbg_value(i32 %inc84, !2505, !DIExpression(), !2527)
  %21 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2581
  %and87 = and i32 %21, 8, !dbg !2583
  %tobool88.not = icmp eq i32 %and87, 0, !dbg !2583
  br i1 %tobool88.not, label %if.end98, label %if.then89, !dbg !2584

if.then89:                                        ; preds = %if.then76
  %i_mb_topleft_xy = getelementptr inbounds i8, ptr %h, i64 16608, !dbg !2585
  %22 = load i32, ptr %i_mb_topleft_xy, align 16, !dbg !2585
  %idxprom91 = sext i32 %22 to i64, !dbg !2585
  %arrayidx92 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom91, !dbg !2585
  %23 = load i32, ptr %arrayidx92, align 4, !dbg !2585
  %idxprom94 = zext nneg i32 %inc84 to i64, !dbg !2585
  %arrayidx95 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom94, !dbg !2585
  store i32 %23, ptr %arrayidx95, align 4, !dbg !2585
  %inc97 = add nuw nsw i32 %i.3, 2, !dbg !2585
    #dbg_value(i32 %inc97, !2505, !DIExpression(), !2527)
  %.pre399 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2587
  br label %if.end98, !dbg !2585

if.end98:                                         ; preds = %if.then89, %if.then76
  %24 = phi i32 [ %.pre399, %if.then89 ], [ %21, %if.then76 ], !dbg !2587
  %i.4 = phi i32 [ %inc97, %if.then89 ], [ %inc84, %if.then76 ], !dbg !2589
    #dbg_value(i32 %i.4, !2505, !DIExpression(), !2527)
  %and101 = and i32 %24, 4, !dbg !2590
  %tobool102.not = icmp eq i32 %and101, 0, !dbg !2590
  br i1 %tobool102.not, label %if.end113, label %if.then103, !dbg !2591

if.then103:                                       ; preds = %if.end98
  %i_mb_topright_xy = getelementptr inbounds i8, ptr %h, i64 16612, !dbg !2592
  %25 = load i32, ptr %i_mb_topright_xy, align 4, !dbg !2592
  %idxprom105 = sext i32 %25 to i64, !dbg !2592
  %arrayidx106 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom105, !dbg !2592
  %26 = load i32, ptr %arrayidx106, align 4, !dbg !2592
  %idxprom108 = zext nneg i32 %i.4 to i64, !dbg !2592
  %arrayidx109 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom108, !dbg !2592
  store i32 %26, ptr %arrayidx109, align 4, !dbg !2592
  %inc111 = add nuw nsw i32 %i.4, 1, !dbg !2592
    #dbg_value(i32 %inc111, !2505, !DIExpression(), !2527)
  br label %if.end113, !dbg !2592

if.end113:                                        ; preds = %if.end98, %if.then103, %if.end71
  %i.5 = phi i32 [ %inc111, %if.then103 ], [ %i.4, %if.end98 ], [ %i.3, %if.end71 ], !dbg !2527
    #dbg_value(i32 %i.5, !2505, !DIExpression(), !2527)
  %fref0114 = getelementptr inbounds i8, ptr %h, i64 14704, !dbg !2594
  %27 = load ptr, ptr %fref0114, align 16, !dbg !2595
  %i_ref116 = getelementptr inbounds i8, ptr %27, i64 6728, !dbg !2596
  %28 = load i32, ptr %i_ref116, align 8, !dbg !2595
  %cmp118 = icmp sgt i32 %28, 0, !dbg !2597
  br i1 %cmp118, label %if.then120, label %if.end288, !dbg !2598

if.then120:                                       ; preds = %if.end113
    #dbg_value(ptr %27, !2509, !DIExpression(), !2599)
  %tobool123.not = icmp eq i32 %i_list, 0, !dbg !2600
  %fref1125 = getelementptr inbounds i8, ptr %h, i64 14864, !dbg !2600
  %cond131 = select i1 %tobool123.not, ptr %fref0114, ptr %fref1125, !dbg !2600
    #dbg_value(ptr %cond131, !2512, !DIExpression(), !2599)
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388, !dbg !2601
  %29 = load i32, ptr %i_mb_y, align 4, !dbg !2601
  %and133 = and i32 %29, 1, !dbg !2602
    #dbg_value(i32 %and133, !2513, !DIExpression(), !2599)
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !2603
  %30 = load ptr, ptr %fdec, align 16, !dbg !2603
  %31 = load i32, ptr %30, align 16, !dbg !2604
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288, !dbg !2605
  %32 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !2605
  %mul135 = mul nuw nsw i32 %32, %and133, !dbg !2606
  %add = add nsw i32 %mul135, %31, !dbg !2607
    #dbg_value(i32 %add, !2514, !DIExpression(), !2599)
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !2608
  %33 = load i32, ptr %b_mbaff, align 4, !dbg !2608
  %shr = ashr i32 %i_ref, %33, !dbg !2609
  %idxprom137 = sext i32 %shr to i64, !dbg !2610
  %arrayidx138 = getelementptr inbounds ptr, ptr %cond131, i64 %idxprom137, !dbg !2610
  %34 = load ptr, ptr %arrayidx138, align 8, !dbg !2610
  %35 = load i32, ptr %34, align 16, !dbg !2611
    #dbg_value(i32 %35, !2515, !DIExpression(), !2599)
  %tobool142.not = icmp eq i32 %33, 0, !dbg !2612
  br i1 %tobool142.not, label %if.end150, label %land.lhs.true143, !dbg !2614

land.lhs.true143:                                 ; preds = %if.then120
  %and133398 = xor i32 %29, %i_ref, !dbg !2615
  %xor = and i32 %and133398, 1, !dbg !2615
  %tobool145.not = icmp eq i32 %xor, 0, !dbg !2615
  %add149 = select i1 %tobool145.not, i32 0, i32 %32, !dbg !2616
  %spec.select = add nsw i32 %35, %add149, !dbg !2616
  br label %if.end150, !dbg !2616

if.end150:                                        ; preds = %land.lhs.true143, %if.then120
  %refpoc.0 = phi i32 [ %35, %if.then120 ], [ %spec.select, %land.lhs.true143 ], !dbg !2599
    #dbg_value(i32 %refpoc.0, !2515, !DIExpression(), !2599)
  %i_mb_xy152 = getelementptr inbounds i8, ptr %h, i64 16392, !dbg !2617
  %36 = load i32, ptr %i_mb_xy152, align 8, !dbg !2617
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372, !dbg !2617
    #dbg_value(i32 %36, !2516, !DIExpression(), !2618)
  %sub157 = sub i32 %add, %refpoc.0, !dbg !2617
  %inv_ref_poc = getelementptr inbounds i8, ptr %27, i64 6864, !dbg !2617
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436, !dbg !2617
  %37 = load i32, ptr %b_interlaced, align 4, !dbg !2617
  %and159 = and i32 %37, %and133, !dbg !2617
  %idxprom160 = zext nneg i32 %and159 to i64, !dbg !2617
  %arrayidx161 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom160, !dbg !2617
  %38 = load i16, ptr %arrayidx161, align 2, !dbg !2617
  %conv162 = sext i16 %38 to i32, !dbg !2617
  %mul163 = mul nsw i32 %sub157, %conv162, !dbg !2617
    #dbg_value(i32 %mul163, !2518, !DIExpression(), !2618)
  %mv16x16 = getelementptr inbounds i8, ptr %27, i64 3568, !dbg !2617
  %39 = load ptr, ptr %mv16x16, align 16, !dbg !2617
  %idxprom164 = sext i32 %36 to i64, !dbg !2617
  %arrayidx165 = getelementptr inbounds [2 x i16], ptr %39, i64 %idxprom164, !dbg !2617
  %40 = load i16, ptr %arrayidx165, align 2, !dbg !2617
  %conv167 = sext i16 %40 to i32, !dbg !2617
  %mul168 = mul nsw i32 %mul163, %conv167, !dbg !2617
  %add169 = add nsw i32 %mul168, 128, !dbg !2617
  %shr170 = lshr i32 %add169, 8, !dbg !2617
  %conv171 = trunc i32 %shr170 to i16, !dbg !2617
  %idxprom172 = zext nneg i32 %i.5 to i64, !dbg !2617
  %arrayidx173 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom172, !dbg !2617
  store i16 %conv171, ptr %arrayidx173, align 2, !dbg !2617
  %41 = load ptr, ptr %mv16x16, align 16, !dbg !2617
  %arrayidx178 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom164, i64 1, !dbg !2617
  %42 = load i16, ptr %arrayidx178, align 2, !dbg !2617
  %conv179 = sext i16 %42 to i32, !dbg !2617
  %mul180 = mul nsw i32 %mul163, %conv179, !dbg !2617
  %add181 = add nsw i32 %mul180, 128, !dbg !2617
  %shr182 = lshr i32 %add181, 8, !dbg !2617
  %conv183 = trunc i32 %shr182 to i16, !dbg !2617
  %arrayidx186 = getelementptr inbounds i8, ptr %arrayidx173, i64 2, !dbg !2617
  store i16 %conv183, ptr %arrayidx186, align 2, !dbg !2617
  %inc187 = add nuw nsw i32 %i.5, 1, !dbg !2617
    #dbg_value(i32 %inc187, !2505, !DIExpression(), !2527)
  %i_mb_x = getelementptr inbounds i8, ptr %h, i64 16384, !dbg !2619
  %43 = load i32, ptr %i_mb_x, align 16, !dbg !2619
  %sps = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !2620
  %44 = load ptr, ptr %sps, align 16, !dbg !2620
  %i_mb_width = getelementptr inbounds i8, ptr %44, i64 1084, !dbg !2621
  %45 = load i32, ptr %i_mb_width, align 4, !dbg !2621
  %sub189 = add nsw i32 %45, -1, !dbg !2622
  %cmp190 = icmp slt i32 %43, %sub189, !dbg !2623
  br i1 %cmp190, label %if.then192, label %if.end236, !dbg !2624

if.then192:                                       ; preds = %if.end150
  %46 = load i32, ptr %i_mb_xy152, align 8, !dbg !2625
  %add196 = add nsw i32 %46, 1, !dbg !2625
    #dbg_value(i32 %add196, !2519, !DIExpression(), !2626)
  %47 = load i32, ptr %b_interlaced, align 4, !dbg !2625
  %and206 = and i32 %47, %and133, !dbg !2625
  %idxprom207 = zext nneg i32 %and206 to i64, !dbg !2625
  %arrayidx208 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom207, !dbg !2625
  %48 = load i16, ptr %arrayidx208, align 2, !dbg !2625
  %conv209 = sext i16 %48 to i32, !dbg !2625
  %mul210 = mul nsw i32 %sub157, %conv209, !dbg !2625
    #dbg_value(i32 %mul210, !2522, !DIExpression(), !2626)
  %49 = load ptr, ptr %mv16x16, align 16, !dbg !2625
  %idxprom212 = sext i32 %add196 to i64, !dbg !2625
  %arrayidx213 = getelementptr inbounds [2 x i16], ptr %49, i64 %idxprom212, !dbg !2625
  %50 = load i16, ptr %arrayidx213, align 2, !dbg !2625
  %conv215 = sext i16 %50 to i32, !dbg !2625
  %mul216 = mul nsw i32 %mul210, %conv215, !dbg !2625
  %add217 = add nsw i32 %mul216, 128, !dbg !2625
  %shr218 = lshr i32 %add217, 8, !dbg !2625
  %conv219 = trunc i32 %shr218 to i16, !dbg !2625
  %idxprom220 = zext nneg i32 %inc187 to i64, !dbg !2625
  %arrayidx221 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom220, !dbg !2625
  store i16 %conv219, ptr %arrayidx221, align 2, !dbg !2625
  %51 = load ptr, ptr %mv16x16, align 16, !dbg !2625
  %arrayidx226 = getelementptr inbounds [2 x i16], ptr %51, i64 %idxprom212, i64 1, !dbg !2625
  %52 = load i16, ptr %arrayidx226, align 2, !dbg !2625
  %conv227 = sext i16 %52 to i32, !dbg !2625
  %mul228 = mul nsw i32 %mul210, %conv227, !dbg !2625
  %add229 = add nsw i32 %mul228, 128, !dbg !2625
  %shr230 = lshr i32 %add229, 8, !dbg !2625
  %conv231 = trunc i32 %shr230 to i16, !dbg !2625
  %arrayidx234 = getelementptr inbounds i8, ptr %arrayidx221, i64 2, !dbg !2625
  store i16 %conv231, ptr %arrayidx234, align 2, !dbg !2625
  %inc235 = add nuw nsw i32 %i.5, 2, !dbg !2625
    #dbg_value(i32 %inc235, !2505, !DIExpression(), !2527)
  %.pre400 = load ptr, ptr %sps, align 16, !dbg !2627
  br label %if.end236, !dbg !2625

if.end236:                                        ; preds = %if.then192, %if.end150
  %53 = phi ptr [ %.pre400, %if.then192 ], [ %44, %if.end150 ], !dbg !2627
  %i.6 = phi i32 [ %inc235, %if.then192 ], [ %inc187, %if.end150 ], !dbg !2599
    #dbg_value(i32 %i.6, !2505, !DIExpression(), !2527)
  %54 = load i32, ptr %i_mb_y, align 4, !dbg !2628
  %i_mb_height = getelementptr inbounds i8, ptr %53, i64 1088, !dbg !2629
  %55 = load i32, ptr %i_mb_height, align 4, !dbg !2629
  %sub240 = add nsw i32 %55, -1, !dbg !2630
  %cmp241 = icmp slt i32 %54, %sub240, !dbg !2631
  br i1 %cmp241, label %if.then243, label %if.end288, !dbg !2632

if.then243:                                       ; preds = %if.end236
  %56 = load i32, ptr %i_mb_xy152, align 8, !dbg !2633
  %57 = load i32, ptr %i_mb_stride, align 4, !dbg !2633
  %add251 = add nsw i32 %57, %56, !dbg !2633
    #dbg_value(i32 %add251, !2523, !DIExpression(), !2634)
  %58 = load i32, ptr %b_interlaced, align 4, !dbg !2633
  %and257 = and i32 %58, %and133, !dbg !2633
  %idxprom258 = zext nneg i32 %and257 to i64, !dbg !2633
  %arrayidx259 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %idxprom258, !dbg !2633
  %59 = load i16, ptr %arrayidx259, align 2, !dbg !2633
  %conv260 = sext i16 %59 to i32, !dbg !2633
  %mul261 = mul nsw i32 %sub157, %conv260, !dbg !2633
    #dbg_value(i32 %mul261, !2526, !DIExpression(), !2634)
  %60 = load ptr, ptr %mv16x16, align 16, !dbg !2633
  %idxprom263 = sext i32 %add251 to i64, !dbg !2633
  %arrayidx264 = getelementptr inbounds [2 x i16], ptr %60, i64 %idxprom263, !dbg !2633
  %61 = load i16, ptr %arrayidx264, align 2, !dbg !2633
  %conv266 = sext i16 %61 to i32, !dbg !2633
  %mul267 = mul nsw i32 %mul261, %conv266, !dbg !2633
  %add268 = add nsw i32 %mul267, 128, !dbg !2633
  %shr269 = lshr i32 %add268, 8, !dbg !2633
  %conv270 = trunc i32 %shr269 to i16, !dbg !2633
  %idxprom271 = zext nneg i32 %i.6 to i64, !dbg !2633
  %arrayidx272 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom271, !dbg !2633
  store i16 %conv270, ptr %arrayidx272, align 2, !dbg !2633
  %62 = load ptr, ptr %mv16x16, align 16, !dbg !2633
  %arrayidx277 = getelementptr inbounds [2 x i16], ptr %62, i64 %idxprom263, i64 1, !dbg !2633
  %63 = load i16, ptr %arrayidx277, align 2, !dbg !2633
  %conv278 = sext i16 %63 to i32, !dbg !2633
  %mul279 = mul nsw i32 %mul261, %conv278, !dbg !2633
  %add280 = add nsw i32 %mul279, 128, !dbg !2633
  %shr281 = lshr i32 %add280, 8, !dbg !2633
  %conv282 = trunc i32 %shr281 to i16, !dbg !2633
  %arrayidx285 = getelementptr inbounds i8, ptr %arrayidx272, i64 2, !dbg !2633
  store i16 %conv282, ptr %arrayidx285, align 2, !dbg !2633
  %inc286 = add nuw nsw i32 %i.6, 1, !dbg !2633
    #dbg_value(i32 %inc286, !2505, !DIExpression(), !2527)
  br label %if.end288, !dbg !2633

if.end288:                                        ; preds = %if.end236, %if.then243, %if.end113
  %i.8 = phi i32 [ %i.5, %if.end113 ], [ %inc286, %if.then243 ], [ %i.6, %if.end236 ], !dbg !2527
    #dbg_value(i32 %i.8, !2505, !DIExpression(), !2527)
  store i32 %i.8, ptr %i_mvc, align 4, !dbg !2635
  ret void, !dbg !2636
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !28, line: 125, type: !121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/mvpred.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "3012a7d0e2b81d922088fb8c07eaaf20")
!4 = !{!5, !27, !35, !43}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 117, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!9 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!10 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!11 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!12 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!13 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!14 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!15 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!16 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!17 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!18 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!19 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!20 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!21 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!22 = !DIEnumerator(name: "D_8x8", value: 13)
!23 = !DIEnumerator(name: "D_16x8", value: 14)
!24 = !DIEnumerator(name: "D_8x16", value: 15)
!25 = !DIEnumerator(name: "D_16x16", value: 16)
!26 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !28, line: 280, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!31 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!32 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!33 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!34 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "MB_LEFT", value: 1)
!38 = !DIEnumerator(name: "MB_TOP", value: 2)
!39 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!40 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!41 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!42 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !44)
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
!65 = !{!66, !89, !90, !7, !97, !104, !109}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !28, line: 89, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 89, size: 32, elements: !69)
!69 = !{!70, !75, !82}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !68, file: !28, line: 89, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 26, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !74, line: 42, baseType: !7)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !68, file: !28, line: 89, baseType: !76, size: 32)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !80)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !72, line: 25, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !74, line: 40, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !68, file: !28, line: 89, baseType: !83, size: 32)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !87)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !72, line: 24, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !74, line: 38, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !80)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !74, line: 39, baseType: !96)
!96 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !28, line: 88, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 88, size: 16, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !99, file: !28, line: 88, baseType: !77, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !99, file: !28, line: 88, baseType: !103, size: 16)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 16, elements: !80)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !28, line: 90, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 90, size: 64, elements: !107)
!107 = !{!108, !112, !114, !116}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !106, file: !28, line: 90, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !72, line: 27, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !74, line: 45, baseType: !111)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !106, file: !28, line: 90, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !106, file: !28, line: 90, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !87)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !106, file: !28, line: 90, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !{!0}
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 864, elements: !124)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125}
!125 = !DISubrange(count: 27)
!126 = !{i32 7, !"Dwarf Version", i32 5}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{i32 1, !"wchar_size", i32 4}
!129 = !{i32 8, !"PIC Level", i32 2}
!130 = !{i32 7, !"PIE Level", i32 2}
!131 = !{i32 7, !"uwtable", i32 2}
!132 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!133 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!134 = distinct !DISubprogram(name: "x264_mb_predict_mv", scope: !3, file: !3, line: 27, type: !135, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1424)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !123, !123, !123, !843}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !28, line: 381, size: 266752, elements: !141)
!141 = !{!142, !309, !313, !314, !315, !316, !317, !318, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !454, !456, !484, !486, !487, !488, !492, !496, !497, !498, !502, !506, !507, !508, !513, !516, !517, !590, !607, !768, !769, !770, !771, !775, !776, !777, !778, !779, !780, !781, !796, !989, !993, !1054, !1057, !1059, !1060, !1061, !1064, !1069, !1078, !1079, !1087, !1089, !1094, !1170, !1256, !1300, !1322, !1371, !1400}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !140, file: !28, line: 384, baseType: !143, size: 5632)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !139, line: 376, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !139, line: 176, size: 5632, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !189, !193, !194, !195, !196, !200, !201, !214, !215, !216, !217, !218, !247, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !144, file: !139, line: 179, baseType: !7, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !144, file: !139, line: 180, baseType: !123, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !144, file: !139, line: 181, baseType: !123, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !144, file: !139, line: 182, baseType: !123, size: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !144, file: !139, line: 183, baseType: !123, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !144, file: !139, line: 186, baseType: !123, size: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !144, file: !139, line: 187, baseType: !123, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !144, file: !139, line: 188, baseType: !123, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !144, file: !139, line: 189, baseType: !123, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !144, file: !139, line: 190, baseType: !123, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !144, file: !139, line: 198, baseType: !123, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !144, file: !139, line: 215, baseType: !158, size: 288, offset: 352)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 200, size: 288, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !158, file: !139, line: 203, baseType: !123, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !158, file: !139, line: 204, baseType: !123, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !158, file: !139, line: 206, baseType: !123, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !158, file: !139, line: 209, baseType: !123, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !158, file: !139, line: 210, baseType: !123, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !158, file: !139, line: 211, baseType: !123, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !158, file: !139, line: 212, baseType: !123, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !158, file: !139, line: 213, baseType: !123, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !158, file: !139, line: 214, baseType: !123, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !144, file: !139, line: 218, baseType: !123, size: 32, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !144, file: !139, line: 219, baseType: !123, size: 32, offset: 672)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !144, file: !139, line: 220, baseType: !123, size: 32, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !144, file: !139, line: 221, baseType: !123, size: 32, offset: 736)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !144, file: !139, line: 222, baseType: !123, size: 32, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !144, file: !139, line: 224, baseType: !123, size: 32, offset: 800)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !144, file: !139, line: 225, baseType: !123, size: 32, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !144, file: !139, line: 226, baseType: !123, size: 32, offset: 864)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !144, file: !139, line: 227, baseType: !123, size: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !144, file: !139, line: 229, baseType: !123, size: 32, offset: 928)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !144, file: !139, line: 230, baseType: !123, size: 32, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !144, file: !139, line: 231, baseType: !123, size: 32, offset: 992)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !144, file: !139, line: 233, baseType: !123, size: 32, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !144, file: !139, line: 234, baseType: !123, size: 32, offset: 1056)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !144, file: !139, line: 236, baseType: !123, size: 32, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !144, file: !139, line: 237, baseType: !123, size: 32, offset: 1120)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !144, file: !139, line: 239, baseType: !123, size: 32, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !144, file: !139, line: 240, baseType: !187, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !144, file: !139, line: 241, baseType: !190, size: 128, offset: 1280)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !144, file: !139, line: 242, baseType: !190, size: 128, offset: 1408)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !144, file: !139, line: 243, baseType: !190, size: 128, offset: 1536)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !144, file: !139, line: 244, baseType: !190, size: 128, offset: 1664)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !144, file: !139, line: 245, baseType: !197, size: 512, offset: 1792)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 512, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !144, file: !139, line: 246, baseType: !197, size: 512, offset: 2304)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !144, file: !139, line: 249, baseType: !202, size: 64, offset: 2816)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !89, !123, !205, !207}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !208, file: !3, baseType: !7, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !208, file: !3, baseType: !7, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !208, file: !3, baseType: !89, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !208, file: !3, baseType: !89, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !144, file: !139, line: 250, baseType: !89, size: 64, offset: 2880)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !144, file: !139, line: 251, baseType: !123, size: 32, offset: 2944)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !144, file: !139, line: 252, baseType: !123, size: 32, offset: 2976)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !144, file: !139, line: 253, baseType: !187, size: 64, offset: 3008)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !144, file: !139, line: 287, baseType: !219, size: 800, offset: 3072)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 256, size: 800, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !245, !246}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !219, file: !139, line: 258, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !219, file: !139, line: 259, baseType: !7, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !219, file: !139, line: 261, baseType: !123, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !219, file: !139, line: 262, baseType: !123, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !219, file: !139, line: 263, baseType: !123, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !219, file: !139, line: 264, baseType: !123, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !219, file: !139, line: 265, baseType: !123, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !219, file: !139, line: 267, baseType: !123, size: 32, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !219, file: !139, line: 268, baseType: !123, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !219, file: !139, line: 269, baseType: !123, size: 32, offset: 288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !219, file: !139, line: 270, baseType: !123, size: 32, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !219, file: !139, line: 271, baseType: !123, size: 32, offset: 352)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !219, file: !139, line: 272, baseType: !123, size: 32, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !219, file: !139, line: 273, baseType: !123, size: 32, offset: 416)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !219, file: !139, line: 274, baseType: !123, size: 32, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !219, file: !139, line: 275, baseType: !123, size: 32, offset: 480)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !219, file: !139, line: 276, baseType: !123, size: 32, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !219, file: !139, line: 277, baseType: !123, size: 32, offset: 544)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !219, file: !139, line: 278, baseType: !240, size: 32, offset: 576)
!240 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !219, file: !139, line: 279, baseType: !240, size: 32, offset: 608)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !219, file: !139, line: 280, baseType: !123, size: 32, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !219, file: !139, line: 283, baseType: !244, size: 64, offset: 672)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !80)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !219, file: !139, line: 285, baseType: !123, size: 32, offset: 736)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !219, file: !139, line: 286, baseType: !123, size: 32, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !144, file: !139, line: 327, baseType: !248, size: 1152, offset: 3904)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 290, size: 1152, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !287, !288}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !248, file: !139, line: 292, baseType: !123, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !248, file: !139, line: 294, baseType: !123, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !248, file: !139, line: 295, baseType: !123, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !248, file: !139, line: 296, baseType: !123, size: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !248, file: !139, line: 297, baseType: !123, size: 32, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !248, file: !139, line: 299, baseType: !123, size: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !248, file: !139, line: 300, baseType: !240, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !248, file: !139, line: 301, baseType: !240, size: 32, offset: 224)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !248, file: !139, line: 302, baseType: !240, size: 32, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !248, file: !139, line: 303, baseType: !123, size: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !248, file: !139, line: 304, baseType: !123, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !248, file: !139, line: 305, baseType: !240, size: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !248, file: !139, line: 306, baseType: !240, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !248, file: !139, line: 307, baseType: !240, size: 32, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !248, file: !139, line: 309, baseType: !123, size: 32, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !248, file: !139, line: 310, baseType: !240, size: 32, offset: 480)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !248, file: !139, line: 311, baseType: !123, size: 32, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !248, file: !139, line: 312, baseType: !123, size: 32, offset: 544)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !248, file: !139, line: 315, baseType: !123, size: 32, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !248, file: !139, line: 316, baseType: !187, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !248, file: !139, line: 317, baseType: !123, size: 32, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !248, file: !139, line: 318, baseType: !187, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !248, file: !139, line: 321, baseType: !240, size: 32, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !248, file: !139, line: 322, baseType: !240, size: 32, offset: 864)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !248, file: !139, line: 323, baseType: !240, size: 32, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !248, file: !139, line: 324, baseType: !276, size: 64, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !139, line: 174, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 167, size: 256, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !278, file: !139, line: 169, baseType: !123, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !278, file: !139, line: 169, baseType: !123, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !278, file: !139, line: 170, baseType: !123, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !278, file: !139, line: 171, baseType: !123, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !278, file: !139, line: 172, baseType: !240, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !278, file: !139, line: 173, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !248, file: !139, line: 325, baseType: !123, size: 32, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !248, file: !139, line: 326, baseType: !187, size: 64, offset: 1088)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !144, file: !139, line: 330, baseType: !123, size: 32, offset: 5056)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !144, file: !139, line: 331, baseType: !123, size: 32, offset: 5088)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !144, file: !139, line: 332, baseType: !123, size: 32, offset: 5120)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !144, file: !139, line: 334, baseType: !123, size: 32, offset: 5152)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !144, file: !139, line: 335, baseType: !123, size: 32, offset: 5184)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !144, file: !139, line: 336, baseType: !71, size: 32, offset: 5216)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !144, file: !139, line: 337, baseType: !71, size: 32, offset: 5248)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !144, file: !139, line: 338, baseType: !71, size: 32, offset: 5280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !144, file: !139, line: 339, baseType: !71, size: 32, offset: 5312)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !144, file: !139, line: 340, baseType: !123, size: 32, offset: 5344)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !144, file: !139, line: 344, baseType: !123, size: 32, offset: 5376)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !144, file: !139, line: 356, baseType: !123, size: 32, offset: 5408)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !144, file: !139, line: 364, baseType: !123, size: 32, offset: 5440)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !144, file: !139, line: 367, baseType: !123, size: 32, offset: 5472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !144, file: !139, line: 368, baseType: !123, size: 32, offset: 5504)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !144, file: !139, line: 369, baseType: !123, size: 32, offset: 5536)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !144, file: !139, line: 375, baseType: !306, size: 64, offset: 5568)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !89}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !140, file: !28, line: 386, baseType: !310, size: 8256, offset: 5632)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 8256, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 129)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !140, file: !28, line: 387, baseType: !123, size: 32, offset: 13888)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !140, file: !28, line: 388, baseType: !123, size: 32, offset: 13920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !140, file: !28, line: 389, baseType: !123, size: 32, offset: 13952)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !140, file: !28, line: 390, baseType: !123, size: 32, offset: 13984)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !140, file: !28, line: 391, baseType: !123, size: 32, offset: 14016)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !140, file: !28, line: 402, baseType: !319, size: 576, offset: 14080)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 394, size: 576, elements: !320)
!320 = !{!321, !322, !323, !333, !334, !335}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !319, file: !28, line: 396, baseType: !123, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !319, file: !28, line: 397, baseType: !123, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !319, file: !28, line: 398, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !139, line: 604, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 593, size: 192, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !326, file: !139, line: 595, baseType: !123, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !326, file: !139, line: 596, baseType: !123, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !326, file: !139, line: 599, baseType: !123, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !326, file: !139, line: 603, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !319, file: !28, line: 399, baseType: !123, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !319, file: !28, line: 400, baseType: !332, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !319, file: !28, line: 401, baseType: !336, size: 320, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !337, line: 56, baseType: !338)
!337 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !337, line: 47, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !338, file: !337, line: 49, baseType: !332, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !338, file: !337, line: 50, baseType: !332, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !338, file: !337, line: 51, baseType: !332, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !338, file: !337, line: 53, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !345, line: 87, baseType: !346)
!345 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!346 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !338, file: !337, line: 54, baseType: !123, size: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !338, file: !337, line: 55, baseType: !123, size: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !140, file: !28, line: 404, baseType: !332, size: 64, offset: 14656)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !140, file: !28, line: 405, baseType: !123, size: 32, offset: 14720)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !140, file: !28, line: 410, baseType: !123, size: 32, offset: 14752)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !140, file: !28, line: 411, baseType: !123, size: 32, offset: 14784)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !140, file: !28, line: 413, baseType: !123, size: 32, offset: 14816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !140, file: !28, line: 415, baseType: !123, size: 32, offset: 14848)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !140, file: !28, line: 416, baseType: !123, size: 32, offset: 14880)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !140, file: !28, line: 418, baseType: !123, size: 32, offset: 14912)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !140, file: !28, line: 419, baseType: !123, size: 32, offset: 14944)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !140, file: !28, line: 420, baseType: !123, size: 32, offset: 14976)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !140, file: !28, line: 421, baseType: !123, size: 32, offset: 15008)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !140, file: !28, line: 422, baseType: !123, size: 32, offset: 15040)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !140, file: !28, line: 424, baseType: !123, size: 32, offset: 15072)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !140, file: !28, line: 425, baseType: !123, size: 32, offset: 15104)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !140, file: !28, line: 427, baseType: !123, size: 32, offset: 15136)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !140, file: !28, line: 430, baseType: !365, size: 10400, offset: 15168)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 10400, elements: !452)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !367, line: 154, baseType: !368)
!367 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 52, size: 10400, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !387, !388, !389, !390, !391, !392, !393, !394, !395, !402, !403, !451}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !368, file: !367, line: 54, baseType: !123, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !368, file: !367, line: 56, baseType: !123, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !368, file: !367, line: 57, baseType: !123, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !368, file: !367, line: 59, baseType: !123, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !368, file: !367, line: 60, baseType: !123, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !368, file: !367, line: 61, baseType: !123, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !368, file: !367, line: 63, baseType: !123, size: 32, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !368, file: !367, line: 65, baseType: !123, size: 32, offset: 224)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !368, file: !367, line: 67, baseType: !123, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !368, file: !367, line: 69, baseType: !123, size: 32, offset: 288)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !368, file: !367, line: 70, baseType: !123, size: 32, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !368, file: !367, line: 71, baseType: !123, size: 32, offset: 352)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !368, file: !367, line: 72, baseType: !123, size: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !368, file: !367, line: 73, baseType: !384, size: 8192, offset: 416)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8192, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !368, file: !367, line: 75, baseType: !123, size: 32, offset: 8608)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !368, file: !367, line: 76, baseType: !123, size: 32, offset: 8640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !368, file: !367, line: 77, baseType: !123, size: 32, offset: 8672)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !368, file: !367, line: 78, baseType: !123, size: 32, offset: 8704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !368, file: !367, line: 79, baseType: !123, size: 32, offset: 8736)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !368, file: !367, line: 80, baseType: !123, size: 32, offset: 8768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !368, file: !367, line: 81, baseType: !123, size: 32, offset: 8800)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !368, file: !367, line: 83, baseType: !123, size: 32, offset: 8832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !368, file: !367, line: 90, baseType: !396, size: 128, offset: 8864)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !367, line: 84, size: 128, elements: !397)
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !396, file: !367, line: 86, baseType: !123, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !396, file: !367, line: 87, baseType: !123, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !396, file: !367, line: 88, baseType: !123, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !396, file: !367, line: 89, baseType: !123, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !368, file: !367, line: 92, baseType: !123, size: 32, offset: 8992)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !368, file: !367, line: 150, baseType: !404, size: 1344, offset: 9024)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !367, line: 93, size: 1344, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !404, file: !367, line: 95, baseType: !123, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !404, file: !367, line: 96, baseType: !123, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !404, file: !367, line: 97, baseType: !123, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !404, file: !367, line: 99, baseType: !123, size: 32, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !404, file: !367, line: 100, baseType: !123, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !404, file: !367, line: 102, baseType: !123, size: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !404, file: !367, line: 103, baseType: !123, size: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !404, file: !367, line: 104, baseType: !123, size: 32, offset: 224)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !404, file: !367, line: 105, baseType: !123, size: 32, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !404, file: !367, line: 106, baseType: !123, size: 32, offset: 288)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !404, file: !367, line: 107, baseType: !123, size: 32, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !404, file: !367, line: 108, baseType: !123, size: 32, offset: 352)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !404, file: !367, line: 110, baseType: !123, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !404, file: !367, line: 111, baseType: !123, size: 32, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !404, file: !367, line: 112, baseType: !123, size: 32, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !404, file: !367, line: 114, baseType: !123, size: 32, offset: 480)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !404, file: !367, line: 115, baseType: !71, size: 32, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !404, file: !367, line: 116, baseType: !71, size: 32, offset: 544)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !404, file: !367, line: 117, baseType: !123, size: 32, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !404, file: !367, line: 119, baseType: !123, size: 32, offset: 608)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !404, file: !367, line: 120, baseType: !123, size: 32, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !404, file: !367, line: 137, baseType: !428, size: 384, offset: 672)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !367, line: 122, size: 384, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !428, file: !367, line: 124, baseType: !123, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !428, file: !367, line: 125, baseType: !123, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !428, file: !367, line: 126, baseType: !123, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !428, file: !367, line: 127, baseType: !123, size: 32, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !428, file: !367, line: 128, baseType: !123, size: 32, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !428, file: !367, line: 129, baseType: !123, size: 32, offset: 160)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !428, file: !367, line: 130, baseType: !123, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !428, file: !367, line: 131, baseType: !123, size: 32, offset: 224)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !428, file: !367, line: 133, baseType: !123, size: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !428, file: !367, line: 134, baseType: !123, size: 32, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !428, file: !367, line: 135, baseType: !123, size: 32, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !428, file: !367, line: 136, baseType: !123, size: 32, offset: 352)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !404, file: !367, line: 139, baseType: !123, size: 32, offset: 1056)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !404, file: !367, line: 140, baseType: !123, size: 32, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !404, file: !367, line: 141, baseType: !123, size: 32, offset: 1120)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !404, file: !367, line: 142, baseType: !123, size: 32, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !404, file: !367, line: 143, baseType: !123, size: 32, offset: 1184)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !404, file: !367, line: 144, baseType: !123, size: 32, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !404, file: !367, line: 145, baseType: !123, size: 32, offset: 1248)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !404, file: !367, line: 146, baseType: !123, size: 32, offset: 1280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !404, file: !367, line: 147, baseType: !123, size: 32, offset: 1312)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !368, file: !367, line: 152, baseType: !123, size: 32, offset: 10368)
!452 = !{!453}
!453 = !DISubrange(count: 1)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !140, file: !28, line: 431, baseType: !455, size: 64, offset: 25600)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !140, file: !28, line: 432, baseType: !457, size: 960, offset: 25664)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 960, elements: !452)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !367, line: 186, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 156, size: 960, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !459, file: !367, line: 158, baseType: !123, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !459, file: !367, line: 159, baseType: !123, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !459, file: !367, line: 161, baseType: !123, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !459, file: !367, line: 163, baseType: !123, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !459, file: !367, line: 164, baseType: !123, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !459, file: !367, line: 166, baseType: !123, size: 32, offset: 160)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !459, file: !367, line: 167, baseType: !123, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !459, file: !367, line: 169, baseType: !123, size: 32, offset: 224)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !459, file: !367, line: 170, baseType: !123, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !459, file: !367, line: 172, baseType: !123, size: 32, offset: 288)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !459, file: !367, line: 173, baseType: !123, size: 32, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !459, file: !367, line: 175, baseType: !123, size: 32, offset: 352)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !459, file: !367, line: 177, baseType: !123, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !459, file: !367, line: 178, baseType: !123, size: 32, offset: 416)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !459, file: !367, line: 179, baseType: !123, size: 32, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !459, file: !367, line: 181, baseType: !123, size: 32, offset: 480)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !459, file: !367, line: 183, baseType: !123, size: 32, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !459, file: !367, line: 184, baseType: !479, size: 384, offset: 576)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 384, elements: !482)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!482 = !{!483}
!483 = !DISubrange(count: 6)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !140, file: !28, line: 433, baseType: !485, size: 64, offset: 26624)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !140, file: !28, line: 434, baseType: !123, size: 32, offset: 26688)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !140, file: !28, line: 437, baseType: !123, size: 32, offset: 26720)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !140, file: !28, line: 440, baseType: !489, size: 256, offset: 26752)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 256, elements: !87)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !191)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !140, file: !28, line: 441, baseType: !493, size: 128, offset: 27008)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !80)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !198)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !140, file: !28, line: 443, baseType: !489, size: 256, offset: 27136)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !140, file: !28, line: 444, baseType: !493, size: 128, offset: 27392)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !140, file: !28, line: 446, baseType: !499, size: 256, offset: 27520)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 256, elements: !87)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !191)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !140, file: !28, line: 447, baseType: !503, size: 128, offset: 27776)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 128, elements: !80)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, elements: !198)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !140, file: !28, line: 448, baseType: !499, size: 256, offset: 27904)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !140, file: !28, line: 449, baseType: !503, size: 128, offset: 28160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !140, file: !28, line: 454, baseType: !509, size: 5888, offset: 28288)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 5888, elements: !511)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!511 = !{!512}
!512 = !DISubrange(count: 92)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !140, file: !28, line: 455, baseType: !514, size: 23552, offset: 34176)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 23552, elements: !515)
!515 = !{!512, !88}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !140, file: !28, line: 457, baseType: !480, size: 64, offset: 57728)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !140, file: !28, line: 460, baseType: !518, size: 53376, offset: 57856)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !28, line: 364, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 302, size: 53376, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !549, !574, !575, !576, !582, !583, !584, !585, !586, !587, !588, !589}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !519, file: !28, line: 304, baseType: !455, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !519, file: !28, line: 305, baseType: !485, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !519, file: !28, line: 307, baseType: !123, size: 32, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !519, file: !28, line: 308, baseType: !123, size: 32, offset: 160)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !519, file: !28, line: 309, baseType: !123, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !519, file: !28, line: 311, baseType: !123, size: 32, offset: 224)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !519, file: !28, line: 313, baseType: !123, size: 32, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !519, file: !28, line: 315, baseType: !123, size: 32, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !519, file: !28, line: 316, baseType: !123, size: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !519, file: !28, line: 317, baseType: !123, size: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !519, file: !28, line: 319, baseType: !123, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !519, file: !28, line: 321, baseType: !123, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !519, file: !28, line: 322, baseType: !123, size: 32, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !519, file: !28, line: 324, baseType: !244, size: 64, offset: 480)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !519, file: !28, line: 325, baseType: !123, size: 32, offset: 544)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !519, file: !28, line: 327, baseType: !123, size: 32, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !519, file: !28, line: 329, baseType: !123, size: 32, offset: 608)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !519, file: !28, line: 330, baseType: !123, size: 32, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !519, file: !28, line: 331, baseType: !123, size: 32, offset: 672)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !519, file: !28, line: 333, baseType: !123, size: 32, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !519, file: !28, line: 334, baseType: !123, size: 32, offset: 736)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !519, file: !28, line: 339, baseType: !543, size: 2048, offset: 768)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 2048, elements: !548)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !28, line: 335, size: 64, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !544, file: !28, line: 337, baseType: !123, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !544, file: !28, line: 338, baseType: !123, size: 32, offset: 32)
!548 = !{!81, !192}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !519, file: !28, line: 342, baseType: !550, size: 49152, align: 128, offset: 2816)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 49152, align: 128, elements: !571)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !552, line: 36, baseType: !553, align: 128)
!552 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !552, line: 26, size: 512, elements: !554)
!554 = !{!555, !557, !558, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !553, file: !552, line: 30, baseType: !556, size: 128, align: 128)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !118)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !553, file: !552, line: 31, baseType: !556, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !553, file: !552, line: 32, baseType: !559, size: 32, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !94, line: 26, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !74, line: 41, baseType: !123)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !553, file: !552, line: 33, baseType: !559, size: 32, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !553, file: !552, line: 34, baseType: !559, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !553, file: !552, line: 35, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !552, line: 25, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !332, !123, !332, !123, !569, !123}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!571 = !{!572, !573}
!572 = !DISubrange(count: 32)
!573 = !DISubrange(count: 3)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !519, file: !28, line: 344, baseType: !123, size: 32, offset: 51968)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !519, file: !28, line: 345, baseType: !123, size: 32, offset: 52000)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !519, file: !28, line: 350, baseType: !577, size: 1024, offset: 52032)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 1024, elements: !191)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !28, line: 346, size: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !578, file: !28, line: 348, baseType: !123, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !578, file: !28, line: 349, baseType: !123, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !519, file: !28, line: 352, baseType: !123, size: 32, offset: 53056)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !519, file: !28, line: 354, baseType: !123, size: 32, offset: 53088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !519, file: !28, line: 355, baseType: !123, size: 32, offset: 53120)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !519, file: !28, line: 356, baseType: !123, size: 32, offset: 53152)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !519, file: !28, line: 357, baseType: !123, size: 32, offset: 53184)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !519, file: !28, line: 360, baseType: !123, size: 32, offset: 53216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !519, file: !28, line: 361, baseType: !123, size: 32, offset: 53248)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !519, file: !28, line: 362, baseType: !123, size: 32, offset: 53280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !140, file: !28, line: 463, baseType: !591, size: 4096, offset: 111232)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !592, line: 46, baseType: !593)
!592 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !592, line: 27, size: 4096, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !593, file: !592, line: 30, baseType: !123, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !593, file: !592, line: 31, baseType: !123, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !593, file: !592, line: 34, baseType: !123, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !593, file: !592, line: 35, baseType: !123, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !593, file: !592, line: 37, baseType: !332, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !593, file: !592, line: 38, baseType: !332, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !593, file: !592, line: 39, baseType: !332, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !593, file: !592, line: 42, baseType: !123, size: 32, align: 128, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !593, file: !592, line: 45, baseType: !604, size: 3680, offset: 416)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3680, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 460)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !140, file: !28, line: 494, baseType: !608, size: 2112, offset: 115328)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 465, size: 2112, elements: !609)
!609 = !{!610, !748, !750, !751, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !764, !765, !766, !767}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !608, file: !28, line: 468, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !614, line: 146, baseType: !615)
!614 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !614, line: 31, size: 125056, elements: !616)
!616 = !{!617, !618, !619, !620, !623, !624, !625, !626, !627, !628, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !647, !648, !649, !650, !651, !652, !654, !656, !657, !658, !659, !660, !663, !665, !666, !668, !673, !674, !678, !679, !683, !687, !690, !692, !693, !695, !696, !698, !699, !700, !703, !705, !706, !707, !709, !710, !711, !712, !713, !714, !715, !716, !718, !719, !720, !729, !733, !735, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !615, file: !614, line: 34, baseType: !123, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !615, file: !614, line: 35, baseType: !123, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !615, file: !614, line: 36, baseType: !123, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !615, file: !614, line: 37, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !94, line: 27, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !74, line: 44, baseType: !346)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !615, file: !614, line: 38, baseType: !621, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !615, file: !614, line: 39, baseType: !123, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !615, file: !614, line: 40, baseType: !123, size: 32, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !615, file: !614, line: 41, baseType: !123, size: 32, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !615, file: !614, line: 42, baseType: !123, size: 32, offset: 352)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !615, file: !614, line: 43, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !615, file: !614, line: 45, baseType: !123, size: 32, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !615, file: !614, line: 46, baseType: !123, size: 32, offset: 480)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !615, file: !614, line: 47, baseType: !123, size: 32, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !615, file: !614, line: 48, baseType: !123, size: 32, offset: 544)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !615, file: !614, line: 49, baseType: !123, size: 32, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !615, file: !614, line: 50, baseType: !123, size: 32, offset: 608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !615, file: !614, line: 51, baseType: !123, size: 32, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !615, file: !614, line: 52, baseType: !84, size: 8, offset: 672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !615, file: !614, line: 53, baseType: !84, size: 8, offset: 680)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !615, file: !614, line: 54, baseType: !84, size: 8, offset: 688)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !615, file: !614, line: 55, baseType: !240, size: 32, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !615, file: !614, line: 56, baseType: !240, size: 32, offset: 736)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !615, file: !614, line: 57, baseType: !123, size: 32, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !615, file: !614, line: 60, baseType: !123, size: 32, offset: 800)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !615, file: !614, line: 61, baseType: !645, size: 96, offset: 832)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !646)
!646 = !{!573}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !615, file: !614, line: 62, baseType: !645, size: 96, offset: 928)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !615, file: !614, line: 63, baseType: !645, size: 96, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !615, file: !614, line: 64, baseType: !123, size: 32, offset: 1120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !615, file: !614, line: 65, baseType: !123, size: 32, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !615, file: !614, line: 66, baseType: !123, size: 32, offset: 1184)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !615, file: !614, line: 67, baseType: !653, size: 192, offset: 1216)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !646)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !615, file: !614, line: 68, baseType: !655, size: 256, offset: 1408)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !87)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !615, file: !614, line: 69, baseType: !655, size: 256, offset: 1664)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !615, file: !614, line: 70, baseType: !510, size: 64, offset: 1920)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !615, file: !614, line: 74, baseType: !655, size: 256, offset: 1984)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !615, file: !614, line: 75, baseType: !655, size: 256, offset: 2240)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !615, file: !614, line: 77, baseType: !661, size: 24576, align: 128, offset: 2560)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 24576, align: 128, elements: !662)
!662 = !{!192, !573}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !615, file: !614, line: 78, baseType: !664, size: 1024, offset: 27136)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !191)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !615, file: !614, line: 79, baseType: !123, size: 32, offset: 28160)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !615, file: !614, line: 80, baseType: !667, size: 64, offset: 28224)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !615, file: !614, line: 83, baseType: !669, size: 64, offset: 28288)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !94, line: 24, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !74, line: 37, baseType: !672)
!672 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !615, file: !614, line: 84, baseType: !332, size: 64, offset: 28352)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !615, file: !614, line: 85, baseType: !675, size: 128, offset: 28416)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 128, elements: !80)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !615, file: !614, line: 86, baseType: !676, size: 64, offset: 28544)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !615, file: !614, line: 87, baseType: !680, size: 2176, offset: 28608)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 2176, elements: !681)
!681 = !{!81, !682}
!682 = !DISubrange(count: 17)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !615, file: !614, line: 92, baseType: !684, size: 20736, offset: 30784)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 20736, elements: !685)
!685 = !{!686, !686}
!686 = !DISubrange(count: 18)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !615, file: !614, line: 96, baseType: !688, size: 2176, offset: 51520)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 2176, elements: !681)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !615, file: !614, line: 97, baseType: !691, size: 128, offset: 53696)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 128, elements: !80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !615, file: !614, line: 98, baseType: !244, size: 64, offset: 53824)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !615, file: !614, line: 99, baseType: !694, size: 1024, offset: 53888)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !548)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !615, file: !614, line: 100, baseType: !677, size: 32, offset: 54912)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !615, file: !614, line: 105, baseType: !697, size: 10368, offset: 54944)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 10368, elements: !685)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !615, file: !614, line: 106, baseType: !697, size: 10368, offset: 65312)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !615, file: !614, line: 107, baseType: !123, size: 32, offset: 75680)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !615, file: !614, line: 108, baseType: !701, size: 576, offset: 75712)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 576, elements: !702)
!702 = !{!686}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !615, file: !614, line: 109, baseType: !704, size: 20736, offset: 76288)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 20736, elements: !685)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !615, file: !614, line: 110, baseType: !689, size: 64, offset: 97024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !615, file: !614, line: 111, baseType: !689, size: 64, offset: 97088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !615, file: !614, line: 112, baseType: !708, size: 64, offset: 97152)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !615, file: !614, line: 113, baseType: !708, size: 64, offset: 97216)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !615, file: !614, line: 114, baseType: !708, size: 64, offset: 97280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !615, file: !614, line: 115, baseType: !123, size: 32, offset: 97344)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !615, file: !614, line: 116, baseType: !510, size: 64, offset: 97408)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !615, file: !614, line: 117, baseType: !510, size: 64, offset: 97472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !615, file: !614, line: 118, baseType: !510, size: 64, offset: 97536)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !615, file: !614, line: 119, baseType: !123, size: 32, offset: 97600)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !615, file: !614, line: 120, baseType: !717, size: 576, offset: 97632)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 576, elements: !702)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !615, file: !614, line: 121, baseType: !71, size: 32, offset: 98208)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !615, file: !614, line: 122, baseType: !109, size: 64, offset: 98240)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !615, file: !614, line: 125, baseType: !721, size: 256, offset: 98304)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !139, line: 503, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 496, size: 256, elements: !723)
!723 = !{!724, !726, !727, !728}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !722, file: !139, line: 498, baseType: !725, size: 64)
!725 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !722, file: !139, line: 499, baseType: !725, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !722, file: !139, line: 500, baseType: !725, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !722, file: !139, line: 502, baseType: !725, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !615, file: !614, line: 128, baseType: !730, size: 2008, offset: 98560)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2008, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 251)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !615, file: !614, line: 129, baseType: !734, size: 8032, offset: 100576)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8032, elements: !731)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !615, file: !614, line: 130, baseType: !736, size: 16064, offset: 108608)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 16064, elements: !731)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !615, file: !614, line: 131, baseType: !123, size: 32, offset: 124672)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !615, file: !614, line: 132, baseType: !123, size: 32, offset: 124704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !615, file: !614, line: 135, baseType: !123, size: 32, offset: 124736)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !615, file: !614, line: 136, baseType: !123, size: 32, offset: 124768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !615, file: !614, line: 137, baseType: !123, size: 32, offset: 124800)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !615, file: !614, line: 138, baseType: !123, size: 32, offset: 124832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !615, file: !614, line: 139, baseType: !123, size: 32, offset: 124864)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !615, file: !614, line: 142, baseType: !240, size: 32, offset: 124896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !615, file: !614, line: 143, baseType: !123, size: 32, offset: 124928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !615, file: !614, line: 144, baseType: !123, size: 32, offset: 124960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !615, file: !614, line: 145, baseType: !123, size: 32, offset: 124992)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !608, file: !28, line: 470, baseType: !749, size: 128, offset: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !608, file: !28, line: 473, baseType: !611, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !608, file: !28, line: 476, baseType: !752, size: 1152, offset: 256)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 1152, elements: !702)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !608, file: !28, line: 478, baseType: !123, size: 32, offset: 1408)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !608, file: !28, line: 480, baseType: !123, size: 32, offset: 1440)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !608, file: !28, line: 482, baseType: !123, size: 32, offset: 1472)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !608, file: !28, line: 483, baseType: !123, size: 32, offset: 1504)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !608, file: !28, line: 484, baseType: !123, size: 32, offset: 1536)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !608, file: !28, line: 485, baseType: !123, size: 32, offset: 1568)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !608, file: !28, line: 486, baseType: !123, size: 32, offset: 1600)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !608, file: !28, line: 487, baseType: !621, size: 64, offset: 1664)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !608, file: !28, line: 488, baseType: !621, size: 64, offset: 1728)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !608, file: !28, line: 489, baseType: !763, size: 128, offset: 1792)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 128, elements: !80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !608, file: !28, line: 490, baseType: !621, size: 64, offset: 1920)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !608, file: !28, line: 491, baseType: !621, size: 64, offset: 1984)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !608, file: !28, line: 492, baseType: !123, size: 32, offset: 2048)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !608, file: !28, line: 493, baseType: !123, size: 32, offset: 2080)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !140, file: !28, line: 497, baseType: !612, size: 64, offset: 117440)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !140, file: !28, line: 500, baseType: !612, size: 64, offset: 117504)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !140, file: !28, line: 503, baseType: !123, size: 32, offset: 117568)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !140, file: !28, line: 504, baseType: !772, size: 1216, offset: 117632)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 1216, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 19)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !140, file: !28, line: 505, baseType: !123, size: 32, offset: 118848)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !140, file: !28, line: 506, baseType: !772, size: 1216, offset: 118912)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !140, file: !28, line: 507, baseType: !244, size: 64, offset: 120128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !140, file: !28, line: 510, baseType: !123, size: 32, offset: 120192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !140, file: !28, line: 511, baseType: !123, size: 32, offset: 120224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !140, file: !28, line: 512, baseType: !621, size: 64, offset: 120256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !140, file: !28, line: 522, baseType: !782, size: 10624, offset: 120320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 515, size: 10624, elements: !783)
!783 = !{!784, !786, !789, !792}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !782, file: !28, line: 517, baseType: !785, size: 256, align: 128)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !191)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !782, file: !28, line: 518, baseType: !787, size: 128, align: 128, offset: 256)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !788)
!788 = !{!81, !88}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !782, file: !28, line: 520, baseType: !790, size: 4096, align: 128, offset: 384)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !791)
!791 = !{!88, !199}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !782, file: !28, line: 521, baseType: !793, size: 6144, align: 128, offset: 4480)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 6144, elements: !794)
!794 = !{!795, !192}
!795 = !DISubrange(count: 24)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !140, file: !28, line: 732, baseType: !797, size: 82688, offset: 130944)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 525, size: 82688, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !826, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !844, !847, !851, !852, !853, !858, !859, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !927, !958, !959, !960, !961, !962, !963, !964, !965, !966, !969, !970, !971, !974, !977, !979, !982, !984, !985}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !797, file: !28, line: 527, baseType: !123, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !797, file: !28, line: 530, baseType: !123, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !797, file: !28, line: 531, baseType: !123, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !797, file: !28, line: 532, baseType: !123, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !797, file: !28, line: 535, baseType: !123, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !797, file: !28, line: 536, baseType: !123, size: 32, offset: 160)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !797, file: !28, line: 537, baseType: !123, size: 32, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !797, file: !28, line: 538, baseType: !123, size: 32, offset: 224)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !797, file: !28, line: 539, baseType: !123, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !797, file: !28, line: 542, baseType: !123, size: 32, offset: 288)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !797, file: !28, line: 543, baseType: !123, size: 32, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !797, file: !28, line: 544, baseType: !123, size: 32, offset: 352)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !797, file: !28, line: 545, baseType: !123, size: 32, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !797, file: !28, line: 546, baseType: !123, size: 32, offset: 416)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !797, file: !28, line: 547, baseType: !123, size: 32, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !797, file: !28, line: 548, baseType: !123, size: 32, offset: 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !797, file: !28, line: 549, baseType: !123, size: 32, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !797, file: !28, line: 551, baseType: !123, size: 32, offset: 544)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !797, file: !28, line: 554, baseType: !244, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !797, file: !28, line: 555, baseType: !244, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !797, file: !28, line: 558, baseType: !244, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !797, file: !28, line: 559, baseType: !244, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !797, file: !28, line: 561, baseType: !244, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !797, file: !28, line: 562, baseType: !244, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !797, file: !28, line: 565, baseType: !7, size: 32, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !797, file: !28, line: 566, baseType: !825, size: 128, offset: 992)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !87)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !797, file: !28, line: 567, baseType: !827, size: 512, offset: 1120)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !191)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !797, file: !28, line: 568, baseType: !7, size: 32, offset: 1632)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !797, file: !28, line: 569, baseType: !7, size: 32, offset: 1664)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !797, file: !28, line: 570, baseType: !123, size: 32, offset: 1696)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !797, file: !28, line: 571, baseType: !123, size: 32, offset: 1728)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !797, file: !28, line: 572, baseType: !123, size: 32, offset: 1760)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !797, file: !28, line: 573, baseType: !123, size: 32, offset: 1792)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !797, file: !28, line: 574, baseType: !123, size: 32, offset: 1824)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !797, file: !28, line: 575, baseType: !123, size: 32, offset: 1856)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !797, file: !28, line: 576, baseType: !123, size: 32, offset: 1888)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !797, file: !28, line: 577, baseType: !123, size: 32, offset: 1920)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !797, file: !28, line: 578, baseType: !123, size: 32, offset: 1952)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !28, line: 585, baseType: !669, size: 64, offset: 1984)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !797, file: !28, line: 586, baseType: !332, size: 64, offset: 2048)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !797, file: !28, line: 587, baseType: !669, size: 64, offset: 2112)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !797, file: !28, line: 588, baseType: !843, size: 64, offset: 2176)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !797, file: !28, line: 589, baseType: !845, size: 64, offset: 2240)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 64, elements: !118)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !797, file: !28, line: 591, baseType: !848, size: 64, offset: 2304)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 192, elements: !850)
!850 = !{!795}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !797, file: !28, line: 592, baseType: !669, size: 64, offset: 2368)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !797, file: !28, line: 593, baseType: !675, size: 128, offset: 2432)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !797, file: !28, line: 594, baseType: !854, size: 128, offset: 2560)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 128, elements: !80)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !857)
!857 = !{!119, !81}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !797, file: !28, line: 595, baseType: !691, size: 128, offset: 2688)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !797, file: !28, line: 596, baseType: !860, size: 4096, offset: 2816)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 4096, elements: !861)
!861 = !{!81, !572}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !797, file: !28, line: 597, baseType: !669, size: 64, offset: 6912)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !797, file: !28, line: 598, baseType: !669, size: 64, offset: 6976)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !797, file: !28, line: 599, baseType: !510, size: 64, offset: 7040)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !797, file: !28, line: 603, baseType: !664, size: 1024, offset: 7104)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !797, file: !28, line: 606, baseType: !123, size: 32, offset: 8128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !797, file: !28, line: 607, baseType: !123, size: 32, offset: 8160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !797, file: !28, line: 608, baseType: !83, size: 32, align: 32, offset: 8192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !797, file: !28, line: 609, baseType: !123, size: 32, offset: 8224)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !797, file: !28, line: 611, baseType: !123, size: 32, offset: 8256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !797, file: !28, line: 612, baseType: !123, size: 32, offset: 8288)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !797, file: !28, line: 614, baseType: !123, size: 32, offset: 8320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !797, file: !28, line: 615, baseType: !123, size: 32, offset: 8352)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !797, file: !28, line: 621, baseType: !123, size: 32, offset: 8384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !797, file: !28, line: 624, baseType: !123, size: 32, offset: 8416)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !797, file: !28, line: 626, baseType: !123, size: 32, offset: 8448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !797, file: !28, line: 627, baseType: !123, size: 32, offset: 8480)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !797, file: !28, line: 671, baseType: !879, size: 60672, offset: 8576)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !28, line: 629, size: 60672, elements: !880)
!880 = !{!881, !885, !889, !891, !892, !895, !899, !901, !902, !903, !904, !905, !908, !912, !915, !916, !917, !918, !919, !922, !924, !926}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !879, file: !28, line: 634, baseType: !882, size: 3072, align: 128)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3072, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !879, file: !28, line: 635, baseType: !886, size: 6912, align: 128, offset: 3072)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 6912, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 864)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !879, file: !28, line: 638, baseType: !890, size: 2048, align: 128, offset: 9984)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2048, elements: !385)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !879, file: !28, line: 639, baseType: !890, size: 2048, align: 128, offset: 12032)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !879, file: !28, line: 640, baseType: !893, size: 3072, align: 128, offset: 14080)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !894)
!894 = !{!573, !199}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !879, file: !28, line: 641, baseType: !896, size: 3840, align: 128, offset: 17152)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3840, elements: !897)
!897 = !{!898, !192}
!898 = !DISubrange(count: 15)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !879, file: !28, line: 642, baseType: !900, size: 128, offset: 20992)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !87)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !879, file: !28, line: 643, baseType: !900, size: 128, offset: 21120)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !879, file: !28, line: 644, baseType: !123, size: 32, offset: 21248)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !879, file: !28, line: 645, baseType: !123, size: 32, offset: 21280)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !879, file: !28, line: 648, baseType: !790, size: 4096, align: 128, offset: 21376)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !879, file: !28, line: 649, baseType: !906, size: 4096, align: 128, offset: 25472)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !907)
!907 = !{!192, !192}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !879, file: !28, line: 652, baseType: !909, size: 576, align: 128, offset: 29568)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 576, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 9)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !879, file: !28, line: 653, baseType: !913, size: 1024, align: 128, offset: 30208)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, elements: !914)
!914 = !{!572}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !879, file: !28, line: 656, baseType: !653, size: 192, offset: 31232)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !879, file: !28, line: 658, baseType: !653, size: 192, offset: 31424)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !879, file: !28, line: 661, baseType: !653, size: 192, offset: 31616)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !879, file: !28, line: 664, baseType: !244, size: 64, offset: 31808)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !879, file: !28, line: 665, baseType: !920, size: 24576, offset: 31872)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 24576, elements: !921)
!921 = !{!81, !572, !483}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !879, file: !28, line: 666, baseType: !923, size: 2048, offset: 56448)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 2048, elements: !914)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !879, file: !28, line: 667, baseType: !925, size: 2048, offset: 58496)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 2048, elements: !548)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !879, file: !28, line: 670, baseType: !645, size: 96, offset: 60544)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !797, file: !28, line: 704, baseType: !928, size: 6144, offset: 69248)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !28, line: 674, size: 6144, elements: !929)
!929 = !{!930, !934, !938, !941, !944, !946, !947, !950, !952, !953, !954, !955, !956, !957}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !928, file: !28, line: 677, baseType: !931, size: 320, align: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 320, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 40)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !928, file: !28, line: 680, baseType: !935, size: 384, align: 128, offset: 384)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 384, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 48)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !928, file: !28, line: 683, baseType: !939, size: 640, align: 32, offset: 768)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 640, elements: !940)
!940 = !{!81, !933}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !928, file: !28, line: 686, baseType: !942, size: 2560, align: 128, offset: 1408)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2560, elements: !943)
!943 = !{!81, !933, !81}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !928, file: !28, line: 687, baseType: !945, size: 1280, align: 64, offset: 3968)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1280, elements: !943)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !928, file: !28, line: 690, baseType: !931, size: 320, align: 32, offset: 5248)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !928, file: !28, line: 692, baseType: !948, size: 256, align: 32, offset: 5568)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !949)
!949 = !{!81, !88, !81}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !928, file: !28, line: 693, baseType: !951, size: 64, align: 32, offset: 5824)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 64, elements: !788)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !928, file: !28, line: 694, baseType: !123, size: 32, offset: 5888)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !928, file: !28, line: 695, baseType: !677, size: 32, align: 32, offset: 5920)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !928, file: !28, line: 698, baseType: !123, size: 32, offset: 5952)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !928, file: !28, line: 699, baseType: !123, size: 32, offset: 5984)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !928, file: !28, line: 702, baseType: !123, size: 32, offset: 6016)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !928, file: !28, line: 703, baseType: !123, size: 32, offset: 6048)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !797, file: !28, line: 707, baseType: !123, size: 32, offset: 75392)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !797, file: !28, line: 708, baseType: !123, size: 32, offset: 75424)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !797, file: !28, line: 709, baseType: !123, size: 32, offset: 75456)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !797, file: !28, line: 710, baseType: !123, size: 32, offset: 75488)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !797, file: !28, line: 711, baseType: !123, size: 32, offset: 75520)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !797, file: !28, line: 712, baseType: !123, size: 32, offset: 75552)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !797, file: !28, line: 713, baseType: !123, size: 32, offset: 75584)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !797, file: !28, line: 714, baseType: !123, size: 32, offset: 75616)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !797, file: !28, line: 717, baseType: !967, size: 128, offset: 75648)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !968)
!968 = !{!81, !81}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !797, file: !28, line: 718, baseType: !123, size: 32, offset: 75776)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !797, file: !28, line: 719, baseType: !123, size: 32, offset: 75808)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !797, file: !28, line: 722, baseType: !972, size: 4096, offset: 75840)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !973)
!973 = !{!81, !572, !88}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !797, file: !28, line: 723, baseType: !975, size: 64, offset: 79936)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !87)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !797, file: !28, line: 724, baseType: !978, size: 2048, offset: 80000)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 2048, elements: !973)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !797, file: !28, line: 725, baseType: !980, size: 64, offset: 82048)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 32, elements: !87)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !797, file: !28, line: 728, baseType: !983, size: 144, offset: 82112)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 144, elements: !702)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !797, file: !28, line: 729, baseType: !123, size: 32, offset: 82272)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !797, file: !28, line: 730, baseType: !986, size: 272, offset: 82304)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 272, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 34)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !140, file: !28, line: 735, baseType: !990, size: 64, offset: 213632)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !28, line: 379, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !28, line: 379, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !140, file: !28, line: 793, baseType: !994, size: 29504, offset: 213696)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 738, size: 29504, elements: !995)
!995 = !{!996, !1023, !1027, !1029, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1041, !1043, !1044, !1047, !1049, !1051, !1052, !1053}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !994, file: !28, line: 764, baseType: !997, size: 5632)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !28, line: 741, size: 5632, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1004, !1005, !1006, !1007, !1008, !1010, !1013, !1015, !1019, !1020, !1022}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !997, file: !28, line: 744, baseType: !123, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !997, file: !28, line: 746, baseType: !123, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !997, file: !28, line: 748, baseType: !123, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !997, file: !28, line: 750, baseType: !1003, size: 608, offset: 96)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 608, elements: !773)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !997, file: !28, line: 751, baseType: !123, size: 32, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !997, file: !28, line: 752, baseType: !123, size: 32, offset: 736)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !997, file: !28, line: 753, baseType: !123, size: 32, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !997, file: !28, line: 754, baseType: !244, size: 64, offset: 800)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !997, file: !28, line: 755, baseType: !1009, size: 2048, offset: 864)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !861)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !997, file: !28, line: 756, baseType: !1011, size: 544, offset: 2912)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 544, elements: !1012)
!1012 = !{!682}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !997, file: !28, line: 757, baseType: !1014, size: 192, offset: 3456)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 192, elements: !482)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !997, file: !28, line: 758, baseType: !1016, size: 1664, offset: 3648)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1664, elements: !1017)
!1017 = !{!88, !1018}
!1018 = !DISubrange(count: 13)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !997, file: !28, line: 760, baseType: !244, size: 64, offset: 5312)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !997, file: !28, line: 762, baseType: !1021, size: 192, offset: 5376)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 192, elements: !646)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !997, file: !28, line: 763, baseType: !725, size: 64, offset: 5568)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !994, file: !28, line: 769, baseType: !1024, size: 160, offset: 5632)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 160, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 5)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !994, file: !28, line: 770, baseType: !1028, size: 320, offset: 5824)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 320, elements: !1025)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !994, file: !28, line: 771, baseType: !1030, size: 320, offset: 6144)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 320, elements: !1025)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !994, file: !28, line: 772, baseType: !1011, size: 544, offset: 6464)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !994, file: !28, line: 774, baseType: !1028, size: 320, offset: 7040)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !994, file: !28, line: 775, baseType: !1030, size: 320, offset: 7360)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !994, file: !28, line: 776, baseType: !1030, size: 320, offset: 7680)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !994, file: !28, line: 777, baseType: !1030, size: 320, offset: 8000)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !994, file: !28, line: 778, baseType: !1030, size: 320, offset: 8320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !994, file: !28, line: 779, baseType: !1030, size: 320, offset: 8640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !994, file: !28, line: 781, baseType: !1039, size: 6080, offset: 8960)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 6080, elements: !1040)
!1040 = !{!1026, !774}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !994, file: !28, line: 782, baseType: !1042, size: 2176, offset: 15040)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 2176, elements: !681)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !994, file: !28, line: 783, baseType: !763, size: 128, offset: 17216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !994, file: !28, line: 784, baseType: !1045, size: 8192, offset: 17344)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 8192, elements: !1046)
!1046 = !{!81, !81, !572}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !994, file: !28, line: 785, baseType: !1048, size: 384, offset: 25536)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 384, elements: !482)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !994, file: !28, line: 786, baseType: !1050, size: 3328, offset: 25920)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 3328, elements: !1017)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !994, file: !28, line: 788, baseType: !244, size: 64, offset: 29248)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !994, file: !28, line: 789, baseType: !244, size: 64, offset: 29312)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !994, file: !28, line: 791, baseType: !645, size: 96, offset: 29376)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !140, file: !28, line: 795, baseType: !1055, size: 4096, align: 128, offset: 243200)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 4096, elements: !1056)
!1056 = !{!81, !199}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !140, file: !28, line: 796, baseType: !1058, size: 2048, align: 128, offset: 247296)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, elements: !1056)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !140, file: !28, line: 797, baseType: !113, size: 64, offset: 249344)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !140, file: !28, line: 800, baseType: !89, size: 64, offset: 249408)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !140, file: !28, line: 801, baseType: !1062, size: 384, offset: 249472)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !1063)
!1063 = !{!81, !573}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !140, file: !28, line: 802, baseType: !1065, size: 128, offset: 249856)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 128, elements: !80)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !1068)
!1068 = !{!81, !88, !88}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !140, file: !28, line: 805, baseType: !1070, size: 448, offset: 249984)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 448, elements: !1076)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1072, line: 27, baseType: !1073)
!1072 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !332}
!1076 = !{!1077}
!1077 = !DISubrange(count: 7)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !140, file: !28, line: 806, baseType: !1070, size: 448, offset: 250432)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !140, file: !28, line: 807, baseType: !1080, size: 768, offset: 250880)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 768, elements: !1085)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1072, line: 28, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !332, !332}
!1085 = !{!1086}
!1086 = !DISubrange(count: 12)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !140, file: !28, line: 808, baseType: !1088, size: 768, offset: 251648)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 768, elements: !1085)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !140, file: !28, line: 809, baseType: !1090, size: 64, offset: 252416)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1072, line: 29, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !332, !332, !123, !123}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !140, file: !28, line: 811, baseType: !1095, size: 8448, offset: 252480)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1096, line: 110, baseType: !1097)
!1096 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 63, size: 8448, elements: !1098)
!1098 = !{!1099, !1105, !1106, !1107, !1108, !1110, !1111, !1112, !1113, !1119, !1125, !1126, !1130, !1135, !1136, !1142, !1146, !1147, !1148, !1149, !1150, !1155, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1097, file: !1096, line: 65, baseType: !1100, size: 448)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 448, elements: !1076)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1096, line: 26, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!123, !332, !123, !332, !123}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1097, file: !1096, line: 66, baseType: !1100, size: 448, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1097, file: !1096, line: 67, baseType: !1100, size: 448, offset: 896)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1097, file: !1096, line: 68, baseType: !1100, size: 448, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1097, file: !1096, line: 69, baseType: !1109, size: 256, offset: 1792)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 256, elements: !87)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1097, file: !1096, line: 70, baseType: !1100, size: 448, offset: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1097, file: !1096, line: 71, baseType: !1100, size: 448, offset: 2496)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1097, file: !1096, line: 72, baseType: !1100, size: 448, offset: 2944)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1097, file: !1096, line: 73, baseType: !1114, size: 448, offset: 3392)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 448, elements: !1076)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1096, line: 27, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !332, !332, !332, !332, !123, !689}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1097, file: !1096, line: 74, baseType: !1120, size: 448, offset: 3840)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 448, elements: !1076)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1096, line: 28, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !332, !332, !332, !332, !332, !123, !689}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1097, file: !1096, line: 75, baseType: !1100, size: 448, offset: 4288)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1097, file: !1096, line: 76, baseType: !1127, size: 64, offset: 4736)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!123, !332, !123, !332, !123, !689}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1097, file: !1096, line: 78, baseType: !1131, size: 256, offset: 4800)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 256, elements: !87)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!109, !332, !123}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1097, file: !1096, line: 79, baseType: !1131, size: 256, offset: 5056)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1097, file: !1096, line: 81, baseType: !1137, size: 64, offset: 5312)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !480, !123, !480, !123, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !87)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1097, file: !1096, line: 83, baseType: !1143, size: 64, offset: 5376)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!240, !1140, !1140, !123}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1097, file: !1096, line: 86, baseType: !1114, size: 448, offset: 5440)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1097, file: !1096, line: 87, baseType: !1120, size: 448, offset: 5888)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1097, file: !1096, line: 88, baseType: !1114, size: 448, offset: 6336)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1097, file: !1096, line: 89, baseType: !1120, size: 448, offset: 6784)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1097, file: !1096, line: 93, baseType: !1151, size: 448, offset: 7232)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 448, elements: !1076)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!123, !689, !510, !123, !510, !843, !123, !123}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1097, file: !1096, line: 98, baseType: !1156, size: 64, offset: 7680)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !332, !332, !689}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1097, file: !1096, line: 99, baseType: !1156, size: 64, offset: 7744)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1097, file: !1096, line: 100, baseType: !1156, size: 64, offset: 7808)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1097, file: !1096, line: 101, baseType: !1156, size: 64, offset: 7872)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1097, file: !1096, line: 102, baseType: !1156, size: 64, offset: 7936)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1097, file: !1096, line: 103, baseType: !1156, size: 64, offset: 8000)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1097, file: !1096, line: 104, baseType: !1156, size: 64, offset: 8064)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1097, file: !1096, line: 105, baseType: !1156, size: 64, offset: 8128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1097, file: !1096, line: 106, baseType: !1156, size: 64, offset: 8192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1097, file: !1096, line: 107, baseType: !1156, size: 64, offset: 8256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1097, file: !1096, line: 108, baseType: !1156, size: 64, offset: 8320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1097, file: !1096, line: 109, baseType: !1156, size: 64, offset: 8384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !140, file: !28, line: 812, baseType: !1171, size: 2368, offset: 260928)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !552, line: 111, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 58, size: 2368, elements: !1173)
!1173 = !{!1174, !1181, !1185, !1189, !1196, !1201, !1202, !1206, !1210, !1211, !1215, !1223, !1227, !1231, !1232, !1236, !1240, !1244, !1245, !1246, !1247, !1252}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1172, file: !552, line: 60, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !332, !123, !1178, !123, !123, !123, !123, !123, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1172, file: !552, line: 65, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!332, !332, !689, !1178, !123, !123, !123, !123, !123, !1179}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1172, file: !552, line: 71, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !332, !123, !332, !123, !123, !123, !123, !123}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1172, file: !552, line: 75, baseType: !1190, size: 640, offset: 192)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 640, elements: !1194)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !332, !123, !332, !123, !332, !123, !123}
!1194 = !{!1195}
!1195 = !DISubrange(count: 10)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1172, file: !552, line: 78, baseType: !1197, size: 448, offset: 832)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 448, elements: !1076)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !332, !123, !332, !123, !123}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1172, file: !552, line: 79, baseType: !1198, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1172, file: !552, line: 81, baseType: !1203, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !332, !123, !332, !123, !123, !123}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1172, file: !552, line: 84, baseType: !1207, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !332, !332, !332, !332, !123, !123, !123, !843}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1172, file: !552, line: 88, baseType: !1198, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1172, file: !552, line: 91, baseType: !1212, size: 64, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !332, !123, !123}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1172, file: !552, line: 93, baseType: !1216, size: 64, offset: 1600)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!89, !89, !1219, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1222, line: 18, baseType: !111)
!1222 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1172, file: !552, line: 94, baseType: !1224, size: 64, offset: 1664)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !89, !123}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1172, file: !552, line: 97, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !510, !332, !123}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1172, file: !552, line: 98, baseType: !1228, size: 64, offset: 1792)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1172, file: !552, line: 99, baseType: !1233, size: 64, offset: 1856)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !510, !510, !123}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1172, file: !552, line: 100, baseType: !1237, size: 64, offset: 1920)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !510, !123}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1172, file: !552, line: 102, baseType: !1241, size: 64, offset: 1984)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !332, !332, !332, !332, !332, !123, !123, !123, !123}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1172, file: !552, line: 104, baseType: !564, size: 64, offset: 2048)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1172, file: !552, line: 105, baseType: !564, size: 64, offset: 2112)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1172, file: !552, line: 106, baseType: !564, size: 64, offset: 2176)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1172, file: !552, line: 107, baseType: !1248, size: 64, offset: 2240)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !137, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1172, file: !552, line: 109, baseType: !1253, size: 64, offset: 2304)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !689, !510, !510, !510, !510, !123}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !140, file: !28, line: 813, baseType: !1257, size: 960, offset: 263296)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1258, line: 115, baseType: !1259)
!1258 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1258, line: 89, size: 960, elements: !1260)
!1260 = !{!1261, !1265, !1269, !1274, !1275, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1291, !1295, !1299}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1259, file: !1258, line: 94, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !843, !332, !332}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1259, file: !1258, line: 95, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !332, !843}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1259, file: !1258, line: 97, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1273, !332, !332}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1259, file: !1258, line: 98, baseType: !1262, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1259, file: !1258, line: 99, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !332, !1273}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1259, file: !1258, line: 100, baseType: !1266, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1259, file: !1258, line: 102, baseType: !1270, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1259, file: !1258, line: 103, baseType: !1276, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1259, file: !1258, line: 104, baseType: !1266, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1259, file: !1258, line: 106, baseType: !1262, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1259, file: !1258, line: 107, baseType: !1266, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1259, file: !1258, line: 109, baseType: !1286, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289, !332, !332}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !198)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1259, file: !1258, line: 110, baseType: !1292, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !332, !1289}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1259, file: !1258, line: 112, baseType: !1296, size: 64, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !843}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1259, file: !1258, line: 113, baseType: !1296, size: 64, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !140, file: !28, line: 814, baseType: !1301, size: 384, offset: 264256)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1258, line: 126, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1258, line: 117, size: 384, elements: !1303)
!1303 = !{!1304, !1308, !1309, !1313, !1314, !1318}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1302, file: !1258, line: 119, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !843, !843}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1302, file: !1258, line: 120, baseType: !1305, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1302, file: !1258, line: 121, baseType: !1310, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!123, !843, !480, !332}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1302, file: !1258, line: 122, baseType: !1310, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1302, file: !1258, line: 123, baseType: !1315, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!123, !843, !480, !332, !843}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1302, file: !1258, line: 124, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !843, !843, !332}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !140, file: !28, line: 815, baseType: !1323, size: 1408, offset: 264640)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1324, line: 44, baseType: !1325)
!1324 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 26, size: 1408, elements: !1326)
!1326 = !{!1327, !1331, !1332, !1336, !1337, !1341, !1345, !1346, !1351, !1355, !1356, !1357, !1359}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1325, file: !1324, line: 28, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!123, !843, !510, !510}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1325, file: !1324, line: 29, baseType: !1328, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1325, file: !1324, line: 30, baseType: !1333, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!123, !843, !123, !123}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1325, file: !1324, line: 31, baseType: !1333, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1325, file: !1324, line: 33, baseType: !1338, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !843, !494, !123}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1325, file: !1324, line: 34, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !843, !490, !123}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1325, file: !1324, line: 35, baseType: !1342, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1325, file: !1324, line: 37, baseType: !1347, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !843, !1350, !510, !123}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1325, file: !1324, line: 39, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!123, !843}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1325, file: !1324, line: 40, baseType: !1352, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1325, file: !1324, line: 41, baseType: !1352, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1325, file: !1324, line: 42, baseType: !1358, size: 384, offset: 704)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 384, elements: !482)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1325, file: !1324, line: 43, baseType: !1360, size: 320, offset: 1088)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 320, elements: !1025)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!123, !843, !1364}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !337, line: 63, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 58, size: 416, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1366, file: !337, line: 60, baseType: !123, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1366, file: !337, line: 61, baseType: !785, size: 256, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1366, file: !337, line: 62, baseType: !190, size: 128, offset: 288)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !140, file: !28, line: 816, baseType: !1372, size: 576, offset: 266048)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !614, line: 170, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 161, size: 576, elements: !1374)
!1374 = !{!1375, !1381, !1382, !1388, !1389}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1373, file: !614, line: 163, baseType: !1376, size: 128)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 128, elements: !80)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !614, line: 159, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !332, !123, !123, !123, !669}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1373, file: !614, line: 164, baseType: !1376, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1373, file: !614, line: 165, baseType: !1383, size: 128, offset: 256)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 128, elements: !80)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !614, line: 160, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !332, !123, !123, !123}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1373, file: !614, line: 166, baseType: !1383, size: 128, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1373, file: !614, line: 167, baseType: !1390, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !332, !1393, !1394, !1397, !123, !123}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1280, elements: !1396)
!1396 = !{!933, !81}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !1399)
!1399 = !{!88, !88}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !140, file: !28, line: 821, baseType: !1401, size: 64, offset: 266624)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !28, line: 377, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !28, line: 366, size: 960, elements: !1404)
!1404 = !{!1405, !1407, !1408, !1409, !1410, !1411, !1412, !1422, !1423}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1403, file: !28, line: 368, baseType: !1406, size: 8)
!1406 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1403, file: !28, line: 369, baseType: !84, size: 8, offset: 8)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1403, file: !28, line: 370, baseType: !84, size: 8, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1403, file: !28, line: 371, baseType: !123, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1403, file: !28, line: 372, baseType: !123, size: 32, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1403, file: !28, line: 373, baseType: !612, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1403, file: !28, line: 374, baseType: !1413, size: 256, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !614, line: 157, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 149, size: 256, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1414, file: !614, line: 151, baseType: !611, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1414, file: !614, line: 152, baseType: !123, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1414, file: !614, line: 153, baseType: !123, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1414, file: !614, line: 154, baseType: !123, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1414, file: !614, line: 155, baseType: !123, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1414, file: !614, line: 156, baseType: !123, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1403, file: !28, line: 375, baseType: !1413, size: 256, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1403, file: !28, line: 376, baseType: !1413, size: 256, offset: 704)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1425 = !DILocalVariable(name: "h", arg: 1, scope: !134, file: !3, line: 27, type: !137)
!1426 = !DILocalVariable(name: "i_list", arg: 2, scope: !134, file: !3, line: 27, type: !123)
!1427 = !DILocalVariable(name: "idx", arg: 3, scope: !134, file: !3, line: 27, type: !123)
!1428 = !DILocalVariable(name: "i_width", arg: 4, scope: !134, file: !3, line: 27, type: !123)
!1429 = !DILocalVariable(name: "mvp", arg: 5, scope: !134, file: !3, line: 27, type: !843)
!1430 = !DILocalVariable(name: "i8", scope: !134, file: !3, line: 29, type: !122)
!1431 = !DILocalVariable(name: "i_ref", scope: !134, file: !3, line: 30, type: !122)
!1432 = !DILocalVariable(name: "i_refa", scope: !134, file: !3, line: 31, type: !123)
!1433 = !DILocalVariable(name: "mv_a", scope: !134, file: !3, line: 32, type: !843)
!1434 = !DILocalVariable(name: "i_refb", scope: !134, file: !3, line: 33, type: !123)
!1435 = !DILocalVariable(name: "mv_b", scope: !134, file: !3, line: 34, type: !843)
!1436 = !DILocalVariable(name: "i_refc", scope: !134, file: !3, line: 35, type: !123)
!1437 = !DILocalVariable(name: "mv_c", scope: !134, file: !3, line: 36, type: !843)
!1438 = !DILocalVariable(name: "i_count", scope: !134, file: !3, line: 83, type: !123)
!1439 = !DILabel(scope: !1440, name: "median", file: !3, line: 87)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 86, column: 5)
!1441 = distinct !DILexicalBlock(scope: !134, file: !3, line: 85, column: 9)
!1442 = !DILocation(line: 0, scope: !134)
!1443 = !DILocation(line: 29, column: 20, scope: !134)
!1444 = !DILocation(line: 30, column: 34, scope: !134)
!1445 = !DILocation(line: 30, column: 22, scope: !134)
!1446 = !DILocation(line: 31, column: 49, scope: !134)
!1447 = !DILocation(line: 31, column: 22, scope: !134)
!1448 = !DILocation(line: 32, column: 34, scope: !134)
!1449 = !DILocation(line: 32, column: 22, scope: !134)
!1450 = !DILocation(line: 33, column: 49, scope: !134)
!1451 = !DILocation(line: 33, column: 22, scope: !134)
!1452 = !DILocation(line: 34, column: 22, scope: !134)
!1453 = !DILocation(line: 35, column: 53, scope: !134)
!1454 = !DILocation(line: 35, column: 22, scope: !134)
!1455 = !DILocation(line: 38, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !134, file: !3, line: 38, column: 9)
!1457 = !DILocation(line: 38, column: 32, scope: !1456)
!1458 = !DILocation(line: 38, column: 22, scope: !1456)
!1459 = !DILocation(line: 38, column: 17, scope: !1456)
!1460 = !DILocation(line: 38, column: 36, scope: !1456)
!1461 = !DILocation(line: 40, column: 49, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 39, column: 5)
!1463 = !DILocation(line: 40, column: 18, scope: !1462)
!1464 = !DILocation(line: 42, column: 5, scope: !1462)
!1465 = !DILocation(line: 44, column: 15, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !134, file: !3, line: 44, column: 9)
!1467 = !DILocation(line: 44, column: 9, scope: !134)
!1468 = !DILocation(line: 46, column: 17, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 46, column: 13)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 45, column: 5)
!1471 = !DILocation(line: 46, column: 13, scope: !1470)
!1472 = !DILocation(line: 48, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 48, column: 17)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 47, column: 9)
!1475 = !DILocation(line: 48, column: 17, scope: !1474)
!1476 = !DILocation(line: 50, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 49, column: 13)
!1478 = !DILocation(line: 51, column: 17, scope: !1477)
!1479 = !DILocation(line: 56, column: 24, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 56, column: 17)
!1481 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 55, column: 9)
!1482 = !DILocation(line: 56, column: 17, scope: !1481)
!1483 = !DILocation(line: 58, column: 17, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 57, column: 13)
!1485 = !DILocation(line: 59, column: 17, scope: !1484)
!1486 = !DILocation(line: 65, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 65, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 64, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 63, column: 14)
!1490 = !DILocation(line: 65, column: 13, scope: !1488)
!1491 = !DILocation(line: 67, column: 24, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 67, column: 17)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 66, column: 9)
!1494 = !DILocation(line: 67, column: 17, scope: !1493)
!1495 = !DILocation(line: 69, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 68, column: 13)
!1497 = !DILocation(line: 70, column: 17, scope: !1496)
!1498 = !DILocation(line: 75, column: 24, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 75, column: 17)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 74, column: 9)
!1501 = !DILocation(line: 75, column: 17, scope: !1500)
!1502 = !DILocation(line: 77, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 76, column: 13)
!1504 = !DILocation(line: 78, column: 17, scope: !1503)
!1505 = !DILocation(line: 83, column: 27, scope: !134)
!1506 = !DILocation(line: 83, column: 47, scope: !134)
!1507 = !DILocation(line: 83, column: 37, scope: !134)
!1508 = !DILocation(line: 83, column: 67, scope: !134)
!1509 = !DILocation(line: 83, column: 57, scope: !134)
!1510 = !DILocation(line: 85, column: 17, scope: !1441)
!1511 = !DILocation(line: 85, column: 9, scope: !134)
!1512 = !DILocation(line: 87, column: 1, scope: !1440)
!1513 = !DILocalVariable(name: "dst", arg: 1, scope: !1514, file: !28, line: 220, type: !843)
!1514 = distinct !DISubprogram(name: "x264_median_mv", scope: !28, file: !28, line: 220, type: !1515, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !843, !843, !843, !843}
!1517 = !{!1513, !1518, !1519, !1520}
!1518 = !DILocalVariable(name: "a", arg: 2, scope: !1514, file: !28, line: 220, type: !843)
!1519 = !DILocalVariable(name: "b", arg: 3, scope: !1514, file: !28, line: 220, type: !843)
!1520 = !DILocalVariable(name: "c", arg: 4, scope: !1514, file: !28, line: 220, type: !843)
!1521 = !DILocation(line: 0, scope: !1514, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 88, column: 9, scope: !1440)
!1523 = !DILocation(line: 222, column: 27, scope: !1514, inlinedAt: !1522)
!1524 = !DILocation(line: 222, column: 33, scope: !1514, inlinedAt: !1522)
!1525 = !DILocation(line: 222, column: 39, scope: !1514, inlinedAt: !1522)
!1526 = !DILocalVariable(name: "a", arg: 1, scope: !1527, file: !28, line: 210, type: !123)
!1527 = distinct !DISubprogram(name: "x264_median", scope: !28, file: !28, line: 210, type: !1528, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!123, !123, !123, !123}
!1530 = !{!1526, !1531, !1532, !1533}
!1531 = !DILocalVariable(name: "b", arg: 2, scope: !1527, file: !28, line: 210, type: !123)
!1532 = !DILocalVariable(name: "c", arg: 3, scope: !1527, file: !28, line: 210, type: !123)
!1533 = !DILocalVariable(name: "t", scope: !1527, file: !28, line: 212, type: !123)
!1534 = !DILocation(line: 0, scope: !1527, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1522)
!1536 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1535)
!1537 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1535)
!1538 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1535)
!1539 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1535)
!1540 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1535)
!1541 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1535)
!1542 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1535)
!1543 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1535)
!1544 = !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1522)
!1545 = !DILocation(line: 222, column: 12, scope: !1514, inlinedAt: !1522)
!1546 = !DILocation(line: 223, column: 27, scope: !1514, inlinedAt: !1522)
!1547 = !DILocation(line: 223, column: 33, scope: !1514, inlinedAt: !1522)
!1548 = !DILocation(line: 223, column: 39, scope: !1514, inlinedAt: !1522)
!1549 = !DILocation(line: 0, scope: !1527, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1522)
!1551 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1550)
!1552 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1550)
!1553 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1550)
!1554 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1550)
!1555 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1550)
!1556 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1550)
!1557 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1550)
!1558 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1550)
!1559 = !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1522)
!1560 = !DILocation(line: 223, column: 5, scope: !1514, inlinedAt: !1522)
!1561 = !DILocation(line: 223, column: 12, scope: !1514, inlinedAt: !1522)
!1562 = !DILocation(line: 89, column: 5, scope: !1440)
!1563 = !DILocation(line: 90, column: 22, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 90, column: 14)
!1565 = !DILocation(line: 90, column: 14, scope: !1441)
!1566 = !DILocation(line: 92, column: 13, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 91, column: 5)
!1568 = !DILocation(line: 93, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 92, column: 13)
!1570 = !DILocation(line: 94, column: 18, scope: !1569)
!1571 = !DILocation(line: 95, column: 13, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 94, column: 18)
!1573 = !DILocation(line: 97, column: 13, scope: !1572)
!1574 = !DILocation(line: 99, column: 21, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 99, column: 14)
!1576 = !DILocation(line: 99, column: 27, scope: !1575)
!1577 = !DILocation(line: 100, column: 9, scope: !1575)
!1578 = !DILocation(line: 103, column: 1, scope: !134)
!1579 = distinct !DISubprogram(name: "x264_mb_predict_mv_16x16", scope: !3, file: !3, line: 105, type: !1580, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !137, !123, !123, !843}
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1583 = !DILocalVariable(name: "h", arg: 1, scope: !1579, file: !3, line: 105, type: !137)
!1584 = !DILocalVariable(name: "i_list", arg: 2, scope: !1579, file: !3, line: 105, type: !123)
!1585 = !DILocalVariable(name: "i_ref", arg: 3, scope: !1579, file: !3, line: 105, type: !123)
!1586 = !DILocalVariable(name: "mvp", arg: 4, scope: !1579, file: !3, line: 105, type: !843)
!1587 = !DILocalVariable(name: "i_refa", scope: !1579, file: !3, line: 107, type: !123)
!1588 = !DILocalVariable(name: "mv_a", scope: !1579, file: !3, line: 108, type: !843)
!1589 = !DILocalVariable(name: "i_refb", scope: !1579, file: !3, line: 109, type: !123)
!1590 = !DILocalVariable(name: "mv_b", scope: !1579, file: !3, line: 110, type: !843)
!1591 = !DILocalVariable(name: "i_refc", scope: !1579, file: !3, line: 111, type: !123)
!1592 = !DILocalVariable(name: "mv_c", scope: !1579, file: !3, line: 112, type: !843)
!1593 = !DILocalVariable(name: "i_count", scope: !1579, file: !3, line: 119, type: !123)
!1594 = !DILabel(scope: !1595, name: "median", file: !3, line: 123)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 122, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 121, column: 9)
!1597 = !DILocation(line: 0, scope: !1579)
!1598 = !DILocation(line: 107, column: 34, scope: !1579)
!1599 = !DILocation(line: 107, column: 22, scope: !1579)
!1600 = !DILocation(line: 108, column: 34, scope: !1579)
!1601 = !DILocation(line: 108, column: 22, scope: !1579)
!1602 = !DILocation(line: 109, column: 22, scope: !1579)
!1603 = !DILocation(line: 110, column: 22, scope: !1579)
!1604 = !DILocation(line: 111, column: 22, scope: !1579)
!1605 = !DILocation(line: 112, column: 22, scope: !1579)
!1606 = !DILocation(line: 113, column: 16, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 113, column: 9)
!1608 = !DILocation(line: 113, column: 9, scope: !1579)
!1609 = !DILocation(line: 115, column: 18, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 114, column: 5)
!1611 = !DILocation(line: 116, column: 18, scope: !1610)
!1612 = !DILocation(line: 117, column: 5, scope: !1610)
!1613 = !DILocation(line: 119, column: 27, scope: !1579)
!1614 = !DILocation(line: 119, column: 47, scope: !1579)
!1615 = !DILocation(line: 119, column: 37, scope: !1579)
!1616 = !DILocation(line: 119, column: 67, scope: !1579)
!1617 = !DILocation(line: 119, column: 57, scope: !1579)
!1618 = !DILocation(line: 121, column: 17, scope: !1596)
!1619 = !DILocation(line: 121, column: 9, scope: !1579)
!1620 = !DILocation(line: 123, column: 1, scope: !1595)
!1621 = !DILocation(line: 0, scope: !1514, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 124, column: 9, scope: !1595)
!1623 = !DILocation(line: 222, column: 27, scope: !1514, inlinedAt: !1622)
!1624 = !DILocation(line: 222, column: 33, scope: !1514, inlinedAt: !1622)
!1625 = !DILocation(line: 222, column: 39, scope: !1514, inlinedAt: !1622)
!1626 = !DILocation(line: 0, scope: !1527, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1622)
!1628 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1627)
!1629 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1627)
!1630 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1627)
!1631 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1627)
!1632 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1627)
!1633 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1627)
!1634 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1627)
!1635 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1627)
!1636 = !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1622)
!1637 = !DILocation(line: 222, column: 12, scope: !1514, inlinedAt: !1622)
!1638 = !DILocation(line: 223, column: 27, scope: !1514, inlinedAt: !1622)
!1639 = !DILocation(line: 223, column: 33, scope: !1514, inlinedAt: !1622)
!1640 = !DILocation(line: 223, column: 39, scope: !1514, inlinedAt: !1622)
!1641 = !DILocation(line: 0, scope: !1527, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1622)
!1643 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1642)
!1644 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1642)
!1645 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1642)
!1646 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1642)
!1647 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1642)
!1648 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1642)
!1649 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1642)
!1650 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1642)
!1651 = !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1622)
!1652 = !DILocation(line: 223, column: 5, scope: !1514, inlinedAt: !1622)
!1653 = !DILocation(line: 223, column: 12, scope: !1514, inlinedAt: !1622)
!1654 = !DILocation(line: 125, column: 5, scope: !1595)
!1655 = !DILocation(line: 126, column: 22, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 126, column: 14)
!1657 = !DILocation(line: 126, column: 14, scope: !1596)
!1658 = !DILocation(line: 128, column: 13, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 127, column: 5)
!1660 = !DILocation(line: 129, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 128, column: 13)
!1662 = !DILocation(line: 130, column: 18, scope: !1661)
!1663 = !DILocation(line: 131, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 130, column: 18)
!1665 = !DILocation(line: 133, column: 13, scope: !1664)
!1666 = !DILocation(line: 135, column: 21, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 135, column: 14)
!1668 = !DILocation(line: 135, column: 27, scope: !1667)
!1669 = !DILocation(line: 136, column: 9, scope: !1667)
!1670 = !DILocation(line: 139, column: 1, scope: !1579)
!1671 = distinct !DISubprogram(name: "x264_mb_predict_mv_pskip", scope: !3, file: !3, line: 142, type: !1672, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !137, !843}
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680}
!1675 = !DILocalVariable(name: "h", arg: 1, scope: !1671, file: !3, line: 142, type: !137)
!1676 = !DILocalVariable(name: "mv", arg: 2, scope: !1671, file: !3, line: 142, type: !843)
!1677 = !DILocalVariable(name: "i_refa", scope: !1671, file: !3, line: 144, type: !123)
!1678 = !DILocalVariable(name: "i_refb", scope: !1671, file: !3, line: 145, type: !123)
!1679 = !DILocalVariable(name: "mv_a", scope: !1671, file: !3, line: 146, type: !843)
!1680 = !DILocalVariable(name: "mv_b", scope: !1671, file: !3, line: 147, type: !843)
!1681 = !DILocation(line: 0, scope: !1671)
!1682 = !DILocation(line: 144, column: 22, scope: !1671)
!1683 = !DILocation(line: 145, column: 22, scope: !1671)
!1684 = !DILocation(line: 147, column: 22, scope: !1671)
!1685 = !DILocation(line: 149, column: 16, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 149, column: 9)
!1687 = !DILocation(line: 149, column: 22, scope: !1686)
!1688 = !DILocation(line: 146, column: 22, scope: !1671)
!1689 = !DILocation(line: 150, column: 21, scope: !1686)
!1690 = !DILocation(line: 150, column: 19, scope: !1686)
!1691 = !DILocation(line: 150, column: 35, scope: !1686)
!1692 = !DILocation(line: 151, column: 21, scope: !1686)
!1693 = !DILocation(line: 151, column: 19, scope: !1686)
!1694 = !DILocation(line: 149, column: 9, scope: !1671)
!1695 = !DILocation(line: 153, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 152, column: 5)
!1697 = !DILocation(line: 154, column: 5, scope: !1696)
!1698 = !DILocation(line: 0, scope: !1579, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 156, column: 9, scope: !1686)
!1700 = !DILocation(line: 111, column: 22, scope: !1579, inlinedAt: !1699)
!1701 = !DILocation(line: 112, column: 22, scope: !1579, inlinedAt: !1699)
!1702 = !DILocation(line: 113, column: 16, scope: !1607, inlinedAt: !1699)
!1703 = !DILocation(line: 113, column: 9, scope: !1579, inlinedAt: !1699)
!1704 = !DILocation(line: 115, column: 18, scope: !1610, inlinedAt: !1699)
!1705 = !DILocation(line: 116, column: 18, scope: !1610, inlinedAt: !1699)
!1706 = !DILocation(line: 117, column: 5, scope: !1610, inlinedAt: !1699)
!1707 = !DILocation(line: 119, column: 27, scope: !1579, inlinedAt: !1699)
!1708 = !DILocation(line: 119, column: 47, scope: !1579, inlinedAt: !1699)
!1709 = !DILocation(line: 119, column: 37, scope: !1579, inlinedAt: !1699)
!1710 = !DILocation(line: 119, column: 67, scope: !1579, inlinedAt: !1699)
!1711 = !DILocation(line: 119, column: 57, scope: !1579, inlinedAt: !1699)
!1712 = !DILocation(line: 121, column: 9, scope: !1579, inlinedAt: !1699)
!1713 = !DILocation(line: 123, column: 1, scope: !1595, inlinedAt: !1699)
!1714 = !DILocation(line: 0, scope: !1514, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 124, column: 9, scope: !1595, inlinedAt: !1699)
!1716 = !DILocation(line: 222, column: 27, scope: !1514, inlinedAt: !1715)
!1717 = !DILocation(line: 222, column: 33, scope: !1514, inlinedAt: !1715)
!1718 = !DILocation(line: 222, column: 39, scope: !1514, inlinedAt: !1715)
!1719 = !DILocation(line: 0, scope: !1527, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1715)
!1721 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1720)
!1722 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1720)
!1723 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1720)
!1724 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1720)
!1725 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1720)
!1726 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1720)
!1727 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1720)
!1728 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1720)
!1729 = !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1715)
!1730 = !DILocation(line: 222, column: 12, scope: !1514, inlinedAt: !1715)
!1731 = !DILocation(line: 223, column: 27, scope: !1514, inlinedAt: !1715)
!1732 = !DILocation(line: 223, column: 33, scope: !1514, inlinedAt: !1715)
!1733 = !DILocation(line: 223, column: 39, scope: !1514, inlinedAt: !1715)
!1734 = !DILocation(line: 0, scope: !1527, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1715)
!1736 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1735)
!1737 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1735)
!1738 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1735)
!1739 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1735)
!1740 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1735)
!1741 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1735)
!1742 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1735)
!1743 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1735)
!1744 = !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1715)
!1745 = !DILocation(line: 223, column: 5, scope: !1514, inlinedAt: !1715)
!1746 = !DILocation(line: 223, column: 12, scope: !1514, inlinedAt: !1715)
!1747 = !DILocation(line: 125, column: 5, scope: !1595, inlinedAt: !1699)
!1748 = !DILocation(line: 128, column: 13, scope: !1659, inlinedAt: !1699)
!1749 = !DILocation(line: 129, column: 13, scope: !1661, inlinedAt: !1699)
!1750 = !DILocation(line: 130, column: 18, scope: !1661, inlinedAt: !1699)
!1751 = !DILocation(line: 131, column: 13, scope: !1664, inlinedAt: !1699)
!1752 = !DILocation(line: 133, column: 13, scope: !1664, inlinedAt: !1699)
!1753 = !DILocation(line: 157, column: 1, scope: !1671)
!1754 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16", scope: !3, file: !3, line: 332, type: !1755, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!123, !137, !689}
!1757 = !{!1758, !1759, !1760, !1761, !1764}
!1758 = !DILocalVariable(name: "h", arg: 1, scope: !1754, file: !3, line: 332, type: !137)
!1759 = !DILocalVariable(name: "b_changed", arg: 2, scope: !1754, file: !3, line: 332, type: !689)
!1760 = !DILocalVariable(name: "b_available", scope: !1754, file: !3, line: 334, type: !123)
!1761 = !DILocalVariable(name: "changed", scope: !1762, file: !3, line: 344, type: !123)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 343, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 342, column: 9)
!1764 = !DILocalVariable(name: "l", scope: !1765, file: !3, line: 375, type: !123)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 375, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 374, column: 9)
!1767 = !DILocation(line: 0, scope: !1754)
!1768 = !DILocation(line: 335, column: 26, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 335, column: 9)
!1770 = !DILocation(line: 335, column: 43, scope: !1769)
!1771 = !DILocation(line: 335, column: 9, scope: !1754)
!1772 = !DILocation(line: 337, column: 20, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 337, column: 14)
!1774 = !DILocation(line: 337, column: 14, scope: !1773)
!1775 = !DILocation(line: 0, scope: !1773)
!1776 = !DILocation(line: 337, column: 14, scope: !1769)
!1777 = !DILocalVariable(name: "h", arg: 1, scope: !1778, file: !3, line: 220, type: !137)
!1778 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16_spatial", scope: !3, file: !3, line: 220, type: !1779, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!123, !137}
!1781 = !{!1777, !1782, !1784, !1786, !1789, !1790, !1792, !1793, !1794, !1796, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1808, !1809, !1810, !1811, !1812, !1814, !1817, !1818, !1819, !1820}
!1782 = !DILocalVariable(name: "ref", scope: !1778, file: !3, line: 222, type: !1783)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 16, elements: !80)
!1784 = !DILocalVariable(name: "mv", scope: !1778, file: !3, line: 223, type: !1785, align: 64)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !968)
!1786 = !DILocalVariable(name: "l1ref0", scope: !1778, file: !3, line: 224, type: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!1789 = !DILocalVariable(name: "l1ref1", scope: !1778, file: !3, line: 225, type: !1787)
!1790 = !DILocalVariable(name: "l1mv", scope: !1778, file: !3, line: 226, type: !1791)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !80)
!1792 = !DILocalVariable(name: "type_col", scope: !1778, file: !3, line: 228, type: !122)
!1793 = !DILocalVariable(name: "partition_col", scope: !1778, file: !3, line: 229, type: !122)
!1794 = !DILocalVariable(name: "i_list", scope: !1795, file: !3, line: 233, type: !123)
!1795 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 233, column: 5)
!1796 = !DILocalVariable(name: "i_refa", scope: !1797, file: !3, line: 235, type: !123)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 234, column: 5)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 233, column: 5)
!1799 = !DILocalVariable(name: "mv_a", scope: !1797, file: !3, line: 236, type: !843)
!1800 = !DILocalVariable(name: "i_refb", scope: !1797, file: !3, line: 237, type: !123)
!1801 = !DILocalVariable(name: "mv_b", scope: !1797, file: !3, line: 238, type: !843)
!1802 = !DILocalVariable(name: "i_refc", scope: !1797, file: !3, line: 239, type: !123)
!1803 = !DILocalVariable(name: "mv_c", scope: !1797, file: !3, line: 240, type: !843)
!1804 = !DILocalVariable(name: "i_ref", scope: !1797, file: !3, line: 247, type: !123)
!1805 = !DILocalVariable(name: "i_count", scope: !1806, file: !3, line: 257, type: !123)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 254, column: 9)
!1807 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 248, column: 13)
!1808 = !DILocalVariable(name: "max_i8", scope: !1778, file: !3, line: 302, type: !123)
!1809 = !DILocalVariable(name: "step", scope: !1778, file: !3, line: 303, type: !123)
!1810 = !DILocalVariable(name: "width", scope: !1778, file: !3, line: 304, type: !123)
!1811 = !DILocalVariable(name: "height", scope: !1778, file: !3, line: 305, type: !123)
!1812 = !DILocalVariable(name: "i8", scope: !1813, file: !3, line: 308, type: !123)
!1813 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 308, column: 5)
!1814 = !DILocalVariable(name: "x8", scope: !1815, file: !3, line: 310, type: !122)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 309, column: 5)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 308, column: 5)
!1817 = !DILocalVariable(name: "y8", scope: !1815, file: !3, line: 311, type: !122)
!1818 = !DILocalVariable(name: "o8", scope: !1815, file: !3, line: 312, type: !122)
!1819 = !DILocalVariable(name: "o4", scope: !1815, file: !3, line: 313, type: !122)
!1820 = !DILocalVariable(name: "idx", scope: !1815, file: !3, line: 314, type: !123)
!1821 = !DILocation(line: 0, scope: !1778, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 338, column: 23, scope: !1773)
!1823 = !DILocation(line: 224, column: 32, scope: !1778, inlinedAt: !1822)
!1824 = !DILocation(line: 224, column: 29, scope: !1778, inlinedAt: !1822)
!1825 = !DILocation(line: 224, column: 42, scope: !1778, inlinedAt: !1822)
!1826 = !DILocation(line: 224, column: 55, scope: !1778, inlinedAt: !1822)
!1827 = !DILocation(line: 225, column: 29, scope: !1778, inlinedAt: !1822)
!1828 = !DILocation(line: 226, column: 74, scope: !1778, inlinedAt: !1822)
!1829 = !DILocation(line: 226, column: 61, scope: !1778, inlinedAt: !1822)
!1830 = !DILocation(line: 226, column: 86, scope: !1778, inlinedAt: !1822)
!1831 = !DILocation(line: 227, column: 61, scope: !1778, inlinedAt: !1822)
!1832 = !DILocation(line: 228, column: 39, scope: !1778, inlinedAt: !1822)
!1833 = !DILocation(line: 228, column: 26, scope: !1778, inlinedAt: !1822)
!1834 = !DILocation(line: 229, column: 44, scope: !1778, inlinedAt: !1822)
!1835 = !DILocation(line: 229, column: 31, scope: !1778, inlinedAt: !1822)
!1836 = !DILocation(line: 231, column: 11, scope: !1778, inlinedAt: !1822)
!1837 = !DILocation(line: 231, column: 23, scope: !1778, inlinedAt: !1822)
!1838 = !DILocation(line: 0, scope: !1795, inlinedAt: !1822)
!1839 = !DILocation(line: 235, column: 26, scope: !1797, inlinedAt: !1822)
!1840 = !DILocation(line: 0, scope: !1797, inlinedAt: !1822)
!1841 = !DILocation(line: 236, column: 26, scope: !1797, inlinedAt: !1822)
!1842 = !DILocation(line: 237, column: 26, scope: !1797, inlinedAt: !1822)
!1843 = !DILocation(line: 238, column: 26, scope: !1797, inlinedAt: !1822)
!1844 = !DILocation(line: 239, column: 26, scope: !1797, inlinedAt: !1822)
!1845 = !DILocation(line: 240, column: 26, scope: !1797, inlinedAt: !1822)
!1846 = !DILocation(line: 241, column: 20, scope: !1847, inlinedAt: !1822)
!1847 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 241, column: 13)
!1848 = !DILocation(line: 241, column: 13, scope: !1797, inlinedAt: !1822)
!1849 = !DILocation(line: 243, column: 22, scope: !1850, inlinedAt: !1822)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 242, column: 9)
!1851 = !DILocation(line: 244, column: 22, scope: !1850, inlinedAt: !1822)
!1852 = !DILocation(line: 245, column: 9, scope: !1850, inlinedAt: !1822)
!1853 = !DILocation(line: 247, column: 21, scope: !1797, inlinedAt: !1822)
!1854 = !DILocation(line: 248, column: 19, scope: !1807, inlinedAt: !1822)
!1855 = !DILocation(line: 248, column: 13, scope: !1797, inlinedAt: !1822)
!1856 = !DILocation(line: 257, column: 35, scope: !1806, inlinedAt: !1822)
!1857 = !DILocation(line: 257, column: 55, scope: !1806, inlinedAt: !1822)
!1858 = !DILocation(line: 257, column: 45, scope: !1806, inlinedAt: !1822)
!1859 = !DILocation(line: 257, column: 75, scope: !1806, inlinedAt: !1822)
!1860 = !DILocation(line: 257, column: 65, scope: !1806, inlinedAt: !1822)
!1861 = !DILocation(line: 0, scope: !1806, inlinedAt: !1822)
!1862 = !DILocation(line: 259, column: 25, scope: !1863, inlinedAt: !1822)
!1863 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 259, column: 17)
!1864 = !DILocation(line: 259, column: 17, scope: !1806, inlinedAt: !1822)
!1865 = !DILocation(line: 0, scope: !1514, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 260, column: 17, scope: !1863, inlinedAt: !1822)
!1867 = !DILocation(line: 222, column: 27, scope: !1514, inlinedAt: !1866)
!1868 = !DILocation(line: 222, column: 33, scope: !1514, inlinedAt: !1866)
!1869 = !DILocation(line: 222, column: 39, scope: !1514, inlinedAt: !1866)
!1870 = !DILocation(line: 0, scope: !1527, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 222, column: 14, scope: !1514, inlinedAt: !1866)
!1872 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1871)
!1873 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1871)
!1874 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1871)
!1875 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1871)
!1876 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1871)
!1877 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1871)
!1878 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1871)
!1879 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1871)
!1880 = !DILocation(line: 223, column: 27, scope: !1514, inlinedAt: !1866)
!1881 = !DILocation(line: 223, column: 33, scope: !1514, inlinedAt: !1866)
!1882 = !DILocation(line: 223, column: 39, scope: !1514, inlinedAt: !1866)
!1883 = !DILocation(line: 0, scope: !1527, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1866)
!1885 = !DILocation(line: 212, column: 15, scope: !1527, inlinedAt: !1884)
!1886 = !DILocation(line: 212, column: 18, scope: !1527, inlinedAt: !1884)
!1887 = !DILocation(line: 213, column: 7, scope: !1527, inlinedAt: !1884)
!1888 = !DILocation(line: 214, column: 7, scope: !1527, inlinedAt: !1884)
!1889 = !DILocation(line: 215, column: 7, scope: !1527, inlinedAt: !1884)
!1890 = !DILocation(line: 216, column: 12, scope: !1527, inlinedAt: !1884)
!1891 = !DILocation(line: 216, column: 15, scope: !1527, inlinedAt: !1884)
!1892 = !DILocation(line: 216, column: 7, scope: !1527, inlinedAt: !1884)
!1893 = !DILocation(line: 223, column: 14, scope: !1514, inlinedAt: !1866)
!1894 = !DILocation(line: 260, column: 17, scope: !1863, inlinedAt: !1822)
!1895 = !DILocation(line: 263, column: 21, scope: !1896, inlinedAt: !1822)
!1896 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 262, column: 13)
!1897 = !DILocation(line: 264, column: 21, scope: !1898, inlinedAt: !1822)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 263, column: 21)
!1899 = !DILocation(line: 265, column: 26, scope: !1898, inlinedAt: !1822)
!1900 = !DILocation(line: 266, column: 21, scope: !1901, inlinedAt: !1822)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 265, column: 26)
!1902 = !DILocation(line: 268, column: 21, scope: !1901, inlinedAt: !1822)
!1903 = !DILocation(line: 0, scope: !1807, inlinedAt: !1822)
!1904 = !DILocalVariable(name: "h", arg: 1, scope: !1905, file: !1906, line: 126, type: !137)
!1905 = distinct !DISubprogram(name: "x264_macroblock_cache_ref", scope: !1906, file: !1906, line: 126, type: !1907, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1906 = !DIFile(filename: "x264_src/common/rectangle.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !137, !123, !123, !123, !123, !123, !84}
!1909 = !{!1904, !1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1910 = !DILocalVariable(name: "x", arg: 2, scope: !1905, file: !1906, line: 126, type: !123)
!1911 = !DILocalVariable(name: "y", arg: 3, scope: !1905, file: !1906, line: 126, type: !123)
!1912 = !DILocalVariable(name: "width", arg: 4, scope: !1905, file: !1906, line: 126, type: !123)
!1913 = !DILocalVariable(name: "height", arg: 5, scope: !1905, file: !1906, line: 126, type: !123)
!1914 = !DILocalVariable(name: "i_list", arg: 6, scope: !1905, file: !1906, line: 126, type: !123)
!1915 = !DILocalVariable(name: "ref", arg: 7, scope: !1905, file: !1906, line: 126, type: !84)
!1916 = !DILocalVariable(name: "ref_cache", scope: !1905, file: !1906, line: 128, type: !89)
!1917 = !DILocation(line: 0, scope: !1905, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 272, column: 9, scope: !1797, inlinedAt: !1822)
!1919 = !DILocation(line: 128, column: 24, scope: !1905, inlinedAt: !1918)
!1920 = !DILocation(line: 132, column: 66, scope: !1921, inlinedAt: !1918)
!1921 = distinct !DILexicalBlock(scope: !1905, file: !1906, line: 129, column: 9)
!1922 = !DILocalVariable(name: "dst", arg: 1, scope: !1923, file: !1906, line: 22, type: !89)
!1923 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !1906, file: !1906, line: 22, type: !1924, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !89, !123, !123, !123, !71}
!1926 = !{!1922, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1927 = !DILocalVariable(name: "w", arg: 2, scope: !1923, file: !1906, line: 22, type: !123)
!1928 = !DILocalVariable(name: "h", arg: 3, scope: !1923, file: !1906, line: 22, type: !123)
!1929 = !DILocalVariable(name: "s", arg: 4, scope: !1923, file: !1906, line: 22, type: !123)
!1930 = !DILocalVariable(name: "v", arg: 5, scope: !1923, file: !1906, line: 22, type: !71)
!1931 = !DILocalVariable(name: "d", scope: !1923, file: !1906, line: 24, type: !332)
!1932 = !DILocalVariable(name: "v2", scope: !1923, file: !1906, line: 25, type: !77)
!1933 = !DILocalVariable(name: "v4", scope: !1923, file: !1906, line: 26, type: !71)
!1934 = !DILocalVariable(name: "v8", scope: !1923, file: !1906, line: 27, type: !109)
!1935 = !DILocation(line: 0, scope: !1923, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !1918)
!1937 = !DILocation(line: 26, column: 19, scope: !1923, inlinedAt: !1936)
!1938 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !1936)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1906, line: 40, column: 5)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !1906, line: 39, column: 14)
!1941 = distinct !DILexicalBlock(scope: !1923, file: !1906, line: 30, column: 9)
!1942 = !DILocation(line: 43, column: 9, scope: !1939, inlinedAt: !1936)
!1943 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !1936)
!1944 = !DILocation(line: 45, column: 9, scope: !1939, inlinedAt: !1936)
!1945 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !1936)
!1946 = !DILocation(line: 46, column: 9, scope: !1939, inlinedAt: !1936)
!1947 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !1936)
!1948 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !1961)
!1949 = distinct !DISubprogram(name: "x264_macroblock_cache_mv", scope: !1906, file: !1906, line: 110, type: !1950, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !137, !123, !123, !123, !123, !123, !71}
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1953 = !DILocalVariable(name: "h", arg: 1, scope: !1949, file: !1906, line: 110, type: !137)
!1954 = !DILocalVariable(name: "x", arg: 2, scope: !1949, file: !1906, line: 110, type: !123)
!1955 = !DILocalVariable(name: "y", arg: 3, scope: !1949, file: !1906, line: 110, type: !123)
!1956 = !DILocalVariable(name: "width", arg: 4, scope: !1949, file: !1906, line: 110, type: !123)
!1957 = !DILocalVariable(name: "height", arg: 5, scope: !1949, file: !1906, line: 110, type: !123)
!1958 = !DILocalVariable(name: "i_list", arg: 6, scope: !1949, file: !1906, line: 110, type: !123)
!1959 = !DILocalVariable(name: "mv", arg: 7, scope: !1949, file: !1906, line: 110, type: !71)
!1960 = !DILocalVariable(name: "mv_cache", scope: !1949, file: !1906, line: 112, type: !89)
!1961 = distinct !DILocation(line: 273, column: 9, scope: !1797, inlinedAt: !1822)
!1962 = !DILocation(line: 0, scope: !1949, inlinedAt: !1961)
!1963 = !DILocation(line: 0, scope: !1923, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !1961)
!1965 = distinct !DILexicalBlock(scope: !1949, file: !1906, line: 113, column: 9)
!1966 = !DILocation(line: 27, column: 19, scope: !1923, inlinedAt: !1964)
!1967 = !DILocation(line: 27, column: 22, scope: !1923, inlinedAt: !1964)
!1968 = !DILocation(line: 81, column: 32, scope: !1969, inlinedAt: !1964)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1906, line: 80, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !1906, line: 78, column: 9)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1906, line: 77, column: 13)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1906, line: 74, column: 5)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1906, line: 73, column: 14)
!1974 = distinct !DILexicalBlock(scope: !1940, file: !1906, line: 48, column: 14)
!1975 = !DILocation(line: 82, column: 17, scope: !1969, inlinedAt: !1964)
!1976 = !DILocation(line: 82, column: 32, scope: !1969, inlinedAt: !1964)
!1977 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !1964)
!1978 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !1964)
!1979 = !DILocation(line: 84, column: 17, scope: !1969, inlinedAt: !1964)
!1980 = !DILocation(line: 84, column: 32, scope: !1969, inlinedAt: !1964)
!1981 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !1964)
!1982 = !DILocation(line: 277, column: 21, scope: !1983, inlinedAt: !1822)
!1983 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 277, column: 9)
!1984 = !DILocation(line: 277, column: 31, scope: !1983, inlinedAt: !1822)
!1985 = !DILocation(line: 277, column: 9, scope: !1778, inlinedAt: !1822)
!1986 = !DILocation(line: 0, scope: !1905, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 279, column: 9, scope: !1988, inlinedAt: !1822)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 278, column: 5)
!1989 = !DILocation(line: 0, scope: !1923, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !1987)
!1991 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !1990)
!1992 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !1990)
!1993 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !1990)
!1994 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !1990)
!1995 = !DILocation(line: 0, scope: !1905, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 280, column: 9, scope: !1988, inlinedAt: !1822)
!1997 = !DILocation(line: 0, scope: !1923, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !1996)
!1999 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !1998)
!2000 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !1998)
!2001 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !1998)
!2002 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !1998)
!2003 = !DILocation(line: 281, column: 9, scope: !1988, inlinedAt: !1822)
!2004 = !DILocation(line: 284, column: 18, scope: !2005, inlinedAt: !1822)
!2005 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 284, column: 9)
!2006 = !DILocation(line: 284, column: 28, scope: !2005, inlinedAt: !1822)
!2007 = !DILocation(line: 285, column: 9, scope: !2005, inlinedAt: !1822)
!2008 = !DILocation(line: 285, column: 14, scope: !2005, inlinedAt: !1822)
!2009 = !DILocation(line: 285, column: 25, scope: !2005, inlinedAt: !1822)
!2010 = !DILocation(line: 285, column: 23, scope: !2005, inlinedAt: !1822)
!2011 = !DILocation(line: 286, column: 11, scope: !2005, inlinedAt: !1822)
!2012 = !DILocation(line: 296, column: 10, scope: !2013, inlinedAt: !1822)
!2013 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 296, column: 9)
!2014 = !DILocation(line: 296, column: 20, scope: !2013, inlinedAt: !1822)
!2015 = !DILocation(line: 296, column: 48, scope: !2013, inlinedAt: !1822)
!2016 = !DILocation(line: 296, column: 54, scope: !2013, inlinedAt: !1822)
!2017 = !DILocation(line: 302, column: 27, scope: !1778, inlinedAt: !1822)
!2018 = !DILocation(line: 302, column: 44, scope: !1778, inlinedAt: !1822)
!2019 = !DILocation(line: 303, column: 31, scope: !1778, inlinedAt: !1822)
!2020 = !DILocation(line: 303, column: 42, scope: !1778, inlinedAt: !1822)
!2021 = !DILocation(line: 305, column: 49, scope: !1778, inlinedAt: !1822)
!2022 = !DILocation(line: 305, column: 20, scope: !1778, inlinedAt: !1822)
!2023 = !DILocation(line: 0, scope: !1813, inlinedAt: !1822)
!2024 = !DILocation(line: 308, column: 25, scope: !1816, inlinedAt: !1822)
!2025 = !DILocation(line: 308, column: 5, scope: !1813, inlinedAt: !1822)
!2026 = !DILocation(line: 304, column: 48, scope: !1778, inlinedAt: !1822)
!2027 = !DILocation(line: 304, column: 19, scope: !1778, inlinedAt: !1822)
!2028 = !DILocation(line: 310, column: 26, scope: !1815, inlinedAt: !1822)
!2029 = !DILocation(line: 0, scope: !1815, inlinedAt: !1822)
!2030 = !DILocation(line: 311, column: 26, scope: !1815, inlinedAt: !1822)
!2031 = !DILocation(line: 312, column: 40, scope: !1815, inlinedAt: !1822)
!2032 = !DILocation(line: 312, column: 32, scope: !1815, inlinedAt: !1822)
!2033 = !DILocation(line: 312, column: 27, scope: !1815, inlinedAt: !1822)
!2034 = !DILocation(line: 313, column: 43, scope: !1815, inlinedAt: !1822)
!2035 = !DILocation(line: 313, column: 35, scope: !1815, inlinedAt: !1822)
!2036 = !DILocation(line: 313, column: 30, scope: !1815, inlinedAt: !1822)
!2037 = !DILocation(line: 313, column: 25, scope: !1815, inlinedAt: !1822)
!2038 = !DILocation(line: 315, column: 13, scope: !2039, inlinedAt: !1822)
!2039 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 315, column: 13)
!2040 = !DILocation(line: 315, column: 24, scope: !2039, inlinedAt: !1822)
!2041 = !DILocation(line: 315, column: 13, scope: !1815, inlinedAt: !1822)
!2042 = !DILocation(line: 317, column: 29, scope: !2043, inlinedAt: !1822)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 317, column: 18)
!2044 = !DILocation(line: 317, column: 33, scope: !2043, inlinedAt: !1822)
!2045 = !DILocation(line: 317, column: 36, scope: !2043, inlinedAt: !1822)
!2046 = !DILocation(line: 317, column: 47, scope: !2043, inlinedAt: !1822)
!2047 = !DILocation(line: 317, column: 18, scope: !2039, inlinedAt: !1822)
!2048 = !DILocation(line: 0, scope: !2039, inlinedAt: !1822)
!2049 = !DILocation(line: 322, column: 18, scope: !2050, inlinedAt: !1822)
!2050 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 322, column: 13)
!2051 = !DILocation(line: 322, column: 13, scope: !2050, inlinedAt: !1822)
!2052 = !DILocation(line: 322, column: 37, scope: !2050, inlinedAt: !1822)
!2053 = !DILocation(line: 322, column: 42, scope: !2050, inlinedAt: !1822)
!2054 = !DILocation(line: 322, column: 50, scope: !2050, inlinedAt: !1822)
!2055 = !DILocation(line: 322, column: 45, scope: !2050, inlinedAt: !1822)
!2056 = !DILocation(line: 322, column: 69, scope: !2050, inlinedAt: !1822)
!2057 = !DILocation(line: 322, column: 13, scope: !1815, inlinedAt: !1822)
!2058 = !DILocation(line: 324, column: 17, scope: !2059, inlinedAt: !1822)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 323, column: 9)
!2060 = !DILocation(line: 324, column: 61, scope: !2061, inlinedAt: !1822)
!2061 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 324, column: 17)
!2062 = !DILocation(line: 0, scope: !1949, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 324, column: 31, scope: !2061, inlinedAt: !1822)
!2064 = !DILocation(line: 112, column: 62, scope: !1949, inlinedAt: !2063)
!2065 = !DILocation(line: 112, column: 60, scope: !1949, inlinedAt: !2063)
!2066 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2063)
!2067 = !DILocation(line: 0, scope: !1923, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2063)
!2069 = !DILocation(line: 30, column: 9, scope: !1923, inlinedAt: !2068)
!2070 = !DILocation(line: 79, column: 13, scope: !1970, inlinedAt: !2068)
!2071 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2068)
!2072 = !DILocation(line: 85, column: 19, scope: !1969, inlinedAt: !2068)
!2073 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2068)
!2074 = !DILocation(line: 82, column: 32, scope: !1969, inlinedAt: !2068)
!2075 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2068)
!2076 = !DILocation(line: 87, column: 13, scope: !1969, inlinedAt: !2068)
!2077 = distinct !{!2077, !2078}
!2078 = !{!"llvm.loop.unroll.disable"}
!2079 = !DILocation(line: 52, column: 26, scope: !2080, inlinedAt: !2068)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1906, line: 51, column: 9)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !1906, line: 50, column: 13)
!2082 = distinct !DILexicalBlock(scope: !1974, file: !1906, line: 49, column: 5)
!2083 = !DILocation(line: 53, column: 17, scope: !2080, inlinedAt: !2068)
!2084 = !DILocation(line: 54, column: 13, scope: !2080, inlinedAt: !2068)
!2085 = !DILocation(line: 54, column: 26, scope: !2080, inlinedAt: !2068)
!2086 = !DILocation(line: 55, column: 17, scope: !2080, inlinedAt: !2068)
!2087 = !DILocation(line: 56, column: 13, scope: !2080, inlinedAt: !2068)
!2088 = !DILocation(line: 56, column: 26, scope: !2080, inlinedAt: !2068)
!2089 = !DILocation(line: 57, column: 13, scope: !2080, inlinedAt: !2068)
!2090 = !DILocation(line: 57, column: 26, scope: !2080, inlinedAt: !2068)
!2091 = !DILocation(line: 72, column: 5, scope: !2082, inlinedAt: !2068)
!2092 = distinct !{!2092, !2070, !2093}
!2093 = !DILocation(line: 87, column: 24, scope: !1970, inlinedAt: !2068)
!2094 = !DILocation(line: 325, column: 17, scope: !2059, inlinedAt: !1822)
!2095 = !DILocation(line: 325, column: 61, scope: !2096, inlinedAt: !1822)
!2096 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 325, column: 17)
!2097 = !DILocation(line: 0, scope: !1949, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 325, column: 31, scope: !2096, inlinedAt: !1822)
!2099 = !DILocation(line: 112, column: 62, scope: !1949, inlinedAt: !2098)
!2100 = !DILocation(line: 112, column: 60, scope: !1949, inlinedAt: !2098)
!2101 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2098)
!2102 = !DILocation(line: 0, scope: !1923, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2098)
!2104 = !DILocation(line: 30, column: 9, scope: !1923, inlinedAt: !2103)
!2105 = !DILocation(line: 79, column: 13, scope: !1970, inlinedAt: !2103)
!2106 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2103)
!2107 = !DILocation(line: 85, column: 19, scope: !1969, inlinedAt: !2103)
!2108 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2103)
!2109 = !DILocation(line: 82, column: 32, scope: !1969, inlinedAt: !2103)
!2110 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2103)
!2111 = !DILocation(line: 87, column: 13, scope: !1969, inlinedAt: !2103)
!2112 = distinct !{!2112, !2078}
!2113 = !DILocation(line: 52, column: 26, scope: !2080, inlinedAt: !2103)
!2114 = !DILocation(line: 53, column: 17, scope: !2080, inlinedAt: !2103)
!2115 = !DILocation(line: 54, column: 13, scope: !2080, inlinedAt: !2103)
!2116 = !DILocation(line: 54, column: 26, scope: !2080, inlinedAt: !2103)
!2117 = !DILocation(line: 55, column: 17, scope: !2080, inlinedAt: !2103)
!2118 = !DILocation(line: 56, column: 13, scope: !2080, inlinedAt: !2103)
!2119 = !DILocation(line: 56, column: 26, scope: !2080, inlinedAt: !2103)
!2120 = !DILocation(line: 57, column: 13, scope: !2080, inlinedAt: !2103)
!2121 = !DILocation(line: 57, column: 26, scope: !2080, inlinedAt: !2103)
!2122 = !DILocation(line: 72, column: 5, scope: !2082, inlinedAt: !2103)
!2123 = distinct !{!2123, !2105, !2124}
!2124 = !DILocation(line: 87, column: 24, scope: !1970, inlinedAt: !2103)
!2125 = !DILocation(line: 308, column: 38, scope: !1816, inlinedAt: !1822)
!2126 = distinct !{!2126, !2025, !2127}
!2127 = !DILocation(line: 327, column: 5, scope: !1813, inlinedAt: !1822)
!2128 = !DILocalVariable(name: "h", arg: 1, scope: !2129, file: !3, line: 159, type: !137)
!2129 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16_temporal", scope: !3, file: !3, line: 159, type: !1779, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2130 = !{!2128, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2141, !2144, !2145, !2146, !2147, !2148, !2151, !2152, !2153}
!2131 = !DILocalVariable(name: "i_mb_4x4", scope: !2129, file: !3, line: 161, type: !123)
!2132 = !DILocalVariable(name: "i_mb_8x8", scope: !2129, file: !3, line: 162, type: !123)
!2133 = !DILocalVariable(name: "type_col", scope: !2129, file: !3, line: 163, type: !122)
!2134 = !DILocalVariable(name: "partition_col", scope: !2129, file: !3, line: 164, type: !122)
!2135 = !DILocalVariable(name: "max_i8", scope: !2129, file: !3, line: 181, type: !123)
!2136 = !DILocalVariable(name: "step", scope: !2129, file: !3, line: 182, type: !123)
!2137 = !DILocalVariable(name: "width", scope: !2129, file: !3, line: 183, type: !123)
!2138 = !DILocalVariable(name: "height", scope: !2129, file: !3, line: 184, type: !123)
!2139 = !DILocalVariable(name: "i8", scope: !2140, file: !3, line: 186, type: !123)
!2140 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 186, column: 5)
!2141 = !DILocalVariable(name: "x8", scope: !2142, file: !3, line: 188, type: !123)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 187, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 186, column: 5)
!2144 = !DILocalVariable(name: "y8", scope: !2142, file: !3, line: 189, type: !123)
!2145 = !DILocalVariable(name: "i_part_8x8", scope: !2142, file: !3, line: 190, type: !123)
!2146 = !DILocalVariable(name: "i_ref1_ref", scope: !2142, file: !3, line: 191, type: !123)
!2147 = !DILocalVariable(name: "i_ref", scope: !2142, file: !3, line: 192, type: !123)
!2148 = !DILocalVariable(name: "dist_scale_factor", scope: !2149, file: !3, line: 196, type: !123)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 195, column: 9)
!2150 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 194, column: 13)
!2151 = !DILocalVariable(name: "mv_col", scope: !2149, file: !3, line: 197, type: !843)
!2152 = !DILocalVariable(name: "l0x", scope: !2149, file: !3, line: 198, type: !123)
!2153 = !DILocalVariable(name: "l0y", scope: !2149, file: !3, line: 199, type: !123)
!2154 = !DILocation(line: 0, scope: !2129, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 340, column: 23, scope: !1773)
!2156 = !DILocation(line: 161, column: 31, scope: !2129, inlinedAt: !2155)
!2157 = !DILocation(line: 161, column: 23, scope: !2129, inlinedAt: !2155)
!2158 = !DILocation(line: 161, column: 51, scope: !2129, inlinedAt: !2155)
!2159 = !DILocation(line: 161, column: 43, scope: !2129, inlinedAt: !2155)
!2160 = !DILocation(line: 161, column: 70, scope: !2129, inlinedAt: !2155)
!2161 = !DILocation(line: 161, column: 62, scope: !2129, inlinedAt: !2155)
!2162 = !DILocation(line: 162, column: 23, scope: !2129, inlinedAt: !2155)
!2163 = !DILocation(line: 162, column: 43, scope: !2129, inlinedAt: !2155)
!2164 = !DILocation(line: 162, column: 62, scope: !2129, inlinedAt: !2155)
!2165 = !DILocation(line: 162, column: 58, scope: !2129, inlinedAt: !2155)
!2166 = !DILocation(line: 163, column: 29, scope: !2129, inlinedAt: !2155)
!2167 = !DILocation(line: 163, column: 26, scope: !2129, inlinedAt: !2155)
!2168 = !DILocation(line: 163, column: 39, scope: !2129, inlinedAt: !2155)
!2169 = !DILocation(line: 164, column: 44, scope: !2129, inlinedAt: !2155)
!2170 = !DILocation(line: 164, column: 31, scope: !2129, inlinedAt: !2155)
!2171 = !DILocation(line: 0, scope: !1905, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 166, column: 5, scope: !2129, inlinedAt: !2155)
!2173 = !DILocation(line: 128, column: 36, scope: !1905, inlinedAt: !2172)
!2174 = !DILocation(line: 128, column: 24, scope: !1905, inlinedAt: !2172)
!2175 = !DILocation(line: 0, scope: !1923, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !2172)
!2177 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !2176)
!2178 = !DILocation(line: 43, column: 9, scope: !1939, inlinedAt: !2176)
!2179 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !2176)
!2180 = !DILocation(line: 45, column: 9, scope: !1939, inlinedAt: !2176)
!2181 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !2176)
!2182 = !DILocation(line: 46, column: 9, scope: !1939, inlinedAt: !2176)
!2183 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !2176)
!2184 = !DILocation(line: 168, column: 11, scope: !2129, inlinedAt: !2155)
!2185 = !DILocation(line: 168, column: 23, scope: !2129, inlinedAt: !2155)
!2186 = !DILocation(line: 170, column: 9, scope: !2187, inlinedAt: !2155)
!2187 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 170, column: 9)
!2188 = !DILocation(line: 0, scope: !1905, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 172, column: 9, scope: !2190, inlinedAt: !2155)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 171, column: 5)
!2191 = !DILocation(line: 128, column: 24, scope: !1905, inlinedAt: !2189)
!2192 = !DILocation(line: 0, scope: !1923, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !2189)
!2194 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !2193)
!2195 = !DILocation(line: 43, column: 9, scope: !1939, inlinedAt: !2193)
!2196 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !2193)
!2197 = !DILocation(line: 45, column: 9, scope: !1939, inlinedAt: !2193)
!2198 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !2193)
!2199 = !DILocation(line: 46, column: 9, scope: !1939, inlinedAt: !2193)
!2200 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !2193)
!2201 = !DILocation(line: 0, scope: !1949, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 173, column: 9, scope: !2190, inlinedAt: !2155)
!2203 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2202)
!2204 = !DILocation(line: 0, scope: !1923, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2202)
!2206 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2205)
!2207 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2205)
!2208 = !DILocation(line: 0, scope: !1949, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 174, column: 9, scope: !2190, inlinedAt: !2155)
!2210 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2209)
!2211 = !DILocation(line: 0, scope: !1923, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2209)
!2213 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2212)
!2214 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2212)
!2215 = !DILocation(line: 81, column: 32, scope: !1969, inlinedAt: !2205)
!2216 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2205)
!2217 = !DILocation(line: 81, column: 32, scope: !1969, inlinedAt: !2212)
!2218 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2212)
!2219 = !DILocation(line: 218, column: 1, scope: !2129, inlinedAt: !2155)
!2220 = !DILocation(line: 181, column: 27, scope: !2129, inlinedAt: !2155)
!2221 = !DILocation(line: 181, column: 44, scope: !2129, inlinedAt: !2155)
!2222 = !DILocation(line: 182, column: 31, scope: !2129, inlinedAt: !2155)
!2223 = !DILocation(line: 182, column: 42, scope: !2129, inlinedAt: !2155)
!2224 = !DILocation(line: 184, column: 49, scope: !2129, inlinedAt: !2155)
!2225 = !DILocation(line: 184, column: 20, scope: !2129, inlinedAt: !2155)
!2226 = !DILocation(line: 0, scope: !2140, inlinedAt: !2155)
!2227 = !DILocation(line: 186, column: 25, scope: !2143, inlinedAt: !2155)
!2228 = !DILocation(line: 186, column: 5, scope: !2140, inlinedAt: !2155)
!2229 = !DILocation(line: 183, column: 48, scope: !2129, inlinedAt: !2155)
!2230 = !DILocation(line: 183, column: 19, scope: !2129, inlinedAt: !2155)
!2231 = !DILocation(line: 188, column: 20, scope: !2142, inlinedAt: !2155)
!2232 = !DILocation(line: 0, scope: !2142, inlinedAt: !2155)
!2233 = !DILocation(line: 189, column: 20, scope: !2142, inlinedAt: !2155)
!2234 = !DILocation(line: 190, column: 35, scope: !2142, inlinedAt: !2155)
!2235 = !DILocation(line: 190, column: 53, scope: !2142, inlinedAt: !2155)
!2236 = !DILocation(line: 190, column: 45, scope: !2142, inlinedAt: !2155)
!2237 = !DILocation(line: 190, column: 40, scope: !2142, inlinedAt: !2155)
!2238 = !DILocation(line: 191, column: 26, scope: !2142, inlinedAt: !2155)
!2239 = !DILocation(line: 191, column: 39, scope: !2142, inlinedAt: !2155)
!2240 = !DILocation(line: 192, column: 22, scope: !2142, inlinedAt: !2155)
!2241 = !DILocation(line: 192, column: 66, scope: !2142, inlinedAt: !2155)
!2242 = !DILocation(line: 192, column: 97, scope: !2142, inlinedAt: !2155)
!2243 = !DILocation(line: 192, column: 84, scope: !2142, inlinedAt: !2155)
!2244 = !DILocation(line: 194, column: 19, scope: !2150, inlinedAt: !2155)
!2245 = !DILocation(line: 194, column: 13, scope: !2142, inlinedAt: !2155)
!2246 = !DILocation(line: 196, column: 43, scope: !2149, inlinedAt: !2155)
!2247 = !DILocation(line: 196, column: 37, scope: !2149, inlinedAt: !2155)
!2248 = !DILocation(line: 0, scope: !2149, inlinedAt: !2155)
!2249 = !DILocation(line: 197, column: 44, scope: !2149, inlinedAt: !2155)
!2250 = !DILocation(line: 197, column: 31, scope: !2149, inlinedAt: !2155)
!2251 = !DILocation(line: 197, column: 81, scope: !2149, inlinedAt: !2155)
!2252 = !DILocation(line: 197, column: 73, scope: !2149, inlinedAt: !2155)
!2253 = !DILocation(line: 197, column: 66, scope: !2149, inlinedAt: !2155)
!2254 = !DILocation(line: 198, column: 45, scope: !2149, inlinedAt: !2155)
!2255 = !DILocation(line: 198, column: 43, scope: !2149, inlinedAt: !2155)
!2256 = !DILocation(line: 198, column: 55, scope: !2149, inlinedAt: !2155)
!2257 = !DILocation(line: 198, column: 63, scope: !2149, inlinedAt: !2155)
!2258 = !DILocation(line: 199, column: 45, scope: !2149, inlinedAt: !2155)
!2259 = !DILocation(line: 199, column: 43, scope: !2149, inlinedAt: !2155)
!2260 = !DILocation(line: 199, column: 55, scope: !2149, inlinedAt: !2155)
!2261 = !DILocation(line: 199, column: 63, scope: !2149, inlinedAt: !2155)
!2262 = !DILocation(line: 200, column: 26, scope: !2263, inlinedAt: !2155)
!2263 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 200, column: 17)
!2264 = !DILocation(line: 200, column: 36, scope: !2263, inlinedAt: !2155)
!2265 = !DILocation(line: 200, column: 40, scope: !2263, inlinedAt: !2155)
!2266 = !DILocation(line: 200, column: 50, scope: !2263, inlinedAt: !2155)
!2267 = !DILocation(line: 200, column: 48, scope: !2263, inlinedAt: !2155)
!2268 = !DILocation(line: 200, column: 71, scope: !2263, inlinedAt: !2155)
!2269 = !DILocation(line: 202, column: 44, scope: !2149, inlinedAt: !2155)
!2270 = !DILocation(line: 202, column: 73, scope: !2149, inlinedAt: !2155)
!2271 = !DILocation(line: 0, scope: !1905, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 202, column: 13, scope: !2149, inlinedAt: !2155)
!2273 = !DILocation(line: 128, column: 64, scope: !1905, inlinedAt: !2272)
!2274 = !DILocation(line: 128, column: 62, scope: !1905, inlinedAt: !2272)
!2275 = !DILocation(line: 128, column: 24, scope: !1905, inlinedAt: !2272)
!2276 = !DILocation(line: 132, column: 66, scope: !1921, inlinedAt: !2272)
!2277 = !DILocation(line: 0, scope: !1923, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 132, column: 9, scope: !1921, inlinedAt: !2272)
!2279 = !DILocation(line: 25, column: 19, scope: !1923, inlinedAt: !2278)
!2280 = !DILocation(line: 26, column: 19, scope: !1923, inlinedAt: !2278)
!2281 = !DILocation(line: 30, column: 9, scope: !1923, inlinedAt: !2278)
!2282 = !DILocation(line: 32, column: 22, scope: !2283, inlinedAt: !2278)
!2283 = distinct !DILexicalBlock(scope: !1941, file: !1906, line: 31, column: 5)
!2284 = !DILocation(line: 33, column: 13, scope: !2283, inlinedAt: !2278)
!2285 = !DILocation(line: 34, column: 9, scope: !2283, inlinedAt: !2278)
!2286 = !DILocation(line: 34, column: 22, scope: !2283, inlinedAt: !2278)
!2287 = !DILocation(line: 35, column: 13, scope: !2283, inlinedAt: !2278)
!2288 = !DILocation(line: 36, column: 9, scope: !2283, inlinedAt: !2278)
!2289 = !DILocation(line: 36, column: 22, scope: !2283, inlinedAt: !2278)
!2290 = !DILocation(line: 37, column: 9, scope: !2283, inlinedAt: !2278)
!2291 = !DILocation(line: 37, column: 22, scope: !2283, inlinedAt: !2278)
!2292 = !DILocation(line: 38, column: 5, scope: !2283, inlinedAt: !2278)
!2293 = !DILocation(line: 41, column: 22, scope: !1939, inlinedAt: !2278)
!2294 = !DILocation(line: 42, column: 13, scope: !1939, inlinedAt: !2278)
!2295 = !DILocation(line: 43, column: 9, scope: !1939, inlinedAt: !2278)
!2296 = !DILocation(line: 43, column: 22, scope: !1939, inlinedAt: !2278)
!2297 = !DILocation(line: 44, column: 13, scope: !1939, inlinedAt: !2278)
!2298 = !DILocation(line: 45, column: 9, scope: !1939, inlinedAt: !2278)
!2299 = !DILocation(line: 45, column: 22, scope: !1939, inlinedAt: !2278)
!2300 = !DILocation(line: 46, column: 9, scope: !1939, inlinedAt: !2278)
!2301 = !DILocation(line: 46, column: 22, scope: !1939, inlinedAt: !2278)
!2302 = !DILocation(line: 47, column: 5, scope: !1939, inlinedAt: !2278)
!2303 = !DILocalVariable(name: "a", arg: 1, scope: !2304, file: !6, line: 340, type: !123)
!2304 = distinct !DISubprogram(name: "pack16to32_mask", scope: !6, file: !6, line: 340, type: !2305, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!71, !123, !123}
!2307 = !{!2303, !2308}
!2308 = !DILocalVariable(name: "b", arg: 2, scope: !2304, file: !6, line: 340, type: !123)
!2309 = !DILocation(line: 0, scope: !2304, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 203, column: 72, scope: !2149, inlinedAt: !2155)
!2311 = !DILocation(line: 345, column: 13, scope: !2304, inlinedAt: !2310)
!2312 = !DILocation(line: 345, column: 26, scope: !2304, inlinedAt: !2310)
!2313 = !DILocation(line: 345, column: 22, scope: !2304, inlinedAt: !2310)
!2314 = !DILocation(line: 0, scope: !1949, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 203, column: 13, scope: !2149, inlinedAt: !2155)
!2316 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2315)
!2317 = !DILocation(line: 0, scope: !1923, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2315)
!2319 = !DILocation(line: 27, column: 19, scope: !1923, inlinedAt: !2318)
!2320 = !DILocation(line: 27, column: 22, scope: !1923, inlinedAt: !2318)
!2321 = !DILocation(line: 30, column: 9, scope: !1923, inlinedAt: !2318)
!2322 = !DILocation(line: 79, column: 13, scope: !1970, inlinedAt: !2318)
!2323 = !DILocation(line: 81, column: 32, scope: !1969, inlinedAt: !2318)
!2324 = !DILocation(line: 82, column: 17, scope: !1969, inlinedAt: !2318)
!2325 = !DILocation(line: 82, column: 32, scope: !1969, inlinedAt: !2318)
!2326 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2318)
!2327 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2318)
!2328 = !DILocation(line: 84, column: 17, scope: !1969, inlinedAt: !2318)
!2329 = !DILocation(line: 84, column: 32, scope: !1969, inlinedAt: !2318)
!2330 = !DILocation(line: 85, column: 19, scope: !1969, inlinedAt: !2318)
!2331 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2318)
!2332 = !DILocation(line: 87, column: 13, scope: !1969, inlinedAt: !2318)
!2333 = distinct !{!2333, !2078}
!2334 = distinct !{!2334, !2322, !2335, !2336, !2337}
!2335 = !DILocation(line: 87, column: 24, scope: !1970, inlinedAt: !2318)
!2336 = !{!"llvm.loop.isvectorized", i32 1}
!2337 = !{!"llvm.loop.unroll.runtime.disable"}
!2338 = !DILocation(line: 52, column: 26, scope: !2080, inlinedAt: !2318)
!2339 = !DILocation(line: 53, column: 17, scope: !2080, inlinedAt: !2318)
!2340 = !DILocation(line: 54, column: 13, scope: !2080, inlinedAt: !2318)
!2341 = !DILocation(line: 54, column: 26, scope: !2080, inlinedAt: !2318)
!2342 = !DILocation(line: 55, column: 17, scope: !2080, inlinedAt: !2318)
!2343 = !DILocation(line: 56, column: 13, scope: !2080, inlinedAt: !2318)
!2344 = !DILocation(line: 56, column: 26, scope: !2080, inlinedAt: !2318)
!2345 = !DILocation(line: 57, column: 13, scope: !2080, inlinedAt: !2318)
!2346 = !DILocation(line: 57, column: 26, scope: !2080, inlinedAt: !2318)
!2347 = !DILocation(line: 72, column: 5, scope: !2082, inlinedAt: !2318)
!2348 = distinct !{!2348, !2322, !2335, !2336}
!2349 = !DILocation(line: 204, column: 92, scope: !2149, inlinedAt: !2155)
!2350 = !DILocation(line: 204, column: 107, scope: !2149, inlinedAt: !2155)
!2351 = !DILocation(line: 204, column: 106, scope: !2149, inlinedAt: !2155)
!2352 = !DILocation(line: 0, scope: !2304, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 204, column: 72, scope: !2149, inlinedAt: !2155)
!2354 = !DILocation(line: 345, column: 13, scope: !2304, inlinedAt: !2353)
!2355 = !DILocation(line: 345, column: 26, scope: !2304, inlinedAt: !2353)
!2356 = !DILocation(line: 345, column: 22, scope: !2304, inlinedAt: !2353)
!2357 = !DILocation(line: 0, scope: !1949, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 204, column: 13, scope: !2149, inlinedAt: !2155)
!2359 = !DILocation(line: 112, column: 23, scope: !1949, inlinedAt: !2358)
!2360 = !DILocation(line: 0, scope: !1923, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 116, column: 9, scope: !1965, inlinedAt: !2358)
!2362 = !DILocation(line: 27, column: 19, scope: !1923, inlinedAt: !2361)
!2363 = !DILocation(line: 27, column: 22, scope: !1923, inlinedAt: !2361)
!2364 = !DILocation(line: 30, column: 9, scope: !1923, inlinedAt: !2361)
!2365 = !DILocation(line: 79, column: 13, scope: !1970, inlinedAt: !2361)
!2366 = !DILocation(line: 81, column: 32, scope: !1969, inlinedAt: !2361)
!2367 = !DILocation(line: 82, column: 17, scope: !1969, inlinedAt: !2361)
!2368 = !DILocation(line: 82, column: 32, scope: !1969, inlinedAt: !2361)
!2369 = !DILocation(line: 83, column: 17, scope: !1969, inlinedAt: !2361)
!2370 = !DILocation(line: 83, column: 32, scope: !1969, inlinedAt: !2361)
!2371 = !DILocation(line: 84, column: 17, scope: !1969, inlinedAt: !2361)
!2372 = !DILocation(line: 84, column: 32, scope: !1969, inlinedAt: !2361)
!2373 = !DILocation(line: 85, column: 19, scope: !1969, inlinedAt: !2361)
!2374 = !DILocation(line: 86, column: 19, scope: !1969, inlinedAt: !2361)
!2375 = !DILocation(line: 87, column: 13, scope: !1969, inlinedAt: !2361)
!2376 = distinct !{!2376, !2078}
!2377 = distinct !{!2377, !2365, !2378, !2336, !2337}
!2378 = !DILocation(line: 87, column: 24, scope: !1970, inlinedAt: !2361)
!2379 = !DILocation(line: 52, column: 26, scope: !2080, inlinedAt: !2361)
!2380 = !DILocation(line: 53, column: 17, scope: !2080, inlinedAt: !2361)
!2381 = !DILocation(line: 54, column: 13, scope: !2080, inlinedAt: !2361)
!2382 = !DILocation(line: 54, column: 26, scope: !2080, inlinedAt: !2361)
!2383 = !DILocation(line: 55, column: 17, scope: !2080, inlinedAt: !2361)
!2384 = !DILocation(line: 56, column: 13, scope: !2080, inlinedAt: !2361)
!2385 = !DILocation(line: 56, column: 26, scope: !2080, inlinedAt: !2361)
!2386 = !DILocation(line: 57, column: 13, scope: !2080, inlinedAt: !2361)
!2387 = !DILocation(line: 57, column: 26, scope: !2080, inlinedAt: !2361)
!2388 = !DILocation(line: 72, column: 5, scope: !2082, inlinedAt: !2361)
!2389 = distinct !{!2389, !2365, !2378, !2336}
!2390 = !DILocation(line: 186, column: 38, scope: !2143, inlinedAt: !2155)
!2391 = distinct !{!2391, !2228, !2392}
!2392 = !DILocation(line: 215, column: 5, scope: !2140, inlinedAt: !2155)
!2393 = !DILocation(line: 342, column: 19, scope: !1763)
!2394 = !DILocation(line: 342, column: 27, scope: !1763)
!2395 = !DILocation(line: 346, column: 20, scope: !1762)
!2396 = !DILocation(line: 346, column: 57, scope: !1762)
!2397 = !DILocation(line: 346, column: 55, scope: !1762)
!2398 = !DILocation(line: 0, scope: !1762)
!2399 = !DILocation(line: 347, column: 20, scope: !1762)
!2400 = !DILocation(line: 347, column: 57, scope: !1762)
!2401 = !DILocation(line: 347, column: 55, scope: !1762)
!2402 = !DILocation(line: 347, column: 17, scope: !1762)
!2403 = !DILocation(line: 348, column: 32, scope: !1762)
!2404 = !DILocation(line: 348, column: 20, scope: !1762)
!2405 = !DILocation(line: 348, column: 51, scope: !1762)
!2406 = !DILocation(line: 348, column: 49, scope: !1762)
!2407 = !DILocation(line: 348, column: 17, scope: !1762)
!2408 = !DILocation(line: 349, column: 20, scope: !1762)
!2409 = !DILocation(line: 349, column: 51, scope: !1762)
!2410 = !DILocation(line: 349, column: 49, scope: !1762)
!2411 = !DILocation(line: 349, column: 17, scope: !1762)
!2412 = !DILocation(line: 350, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 350, column: 13)
!2414 = !DILocation(line: 350, column: 22, scope: !2413)
!2415 = !DILocation(line: 350, column: 31, scope: !2413)
!2416 = !DILocation(line: 350, column: 43, scope: !2413)
!2417 = !DILocation(line: 350, column: 13, scope: !1762)
!2418 = !DILocation(line: 352, column: 24, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 351, column: 9)
!2420 = !DILocation(line: 352, column: 61, scope: !2419)
!2421 = !DILocation(line: 352, column: 59, scope: !2419)
!2422 = !DILocation(line: 353, column: 24, scope: !2419)
!2423 = !DILocation(line: 353, column: 61, scope: !2419)
!2424 = !DILocation(line: 353, column: 59, scope: !2419)
!2425 = !DILocation(line: 353, column: 21, scope: !2419)
!2426 = !DILocation(line: 354, column: 24, scope: !2419)
!2427 = !DILocation(line: 354, column: 55, scope: !2419)
!2428 = !DILocation(line: 354, column: 53, scope: !2419)
!2429 = !DILocation(line: 354, column: 21, scope: !2419)
!2430 = !DILocation(line: 355, column: 24, scope: !2419)
!2431 = !DILocation(line: 355, column: 55, scope: !2419)
!2432 = !DILocation(line: 355, column: 53, scope: !2419)
!2433 = !DILocation(line: 355, column: 21, scope: !2419)
!2434 = !DILocation(line: 357, column: 14, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 357, column: 13)
!2436 = !DILocation(line: 357, column: 22, scope: !2435)
!2437 = !DILocation(line: 357, column: 43, scope: !2435)
!2438 = !DILocation(line: 357, column: 13, scope: !1762)
!2439 = !DILocation(line: 368, column: 20, scope: !1762)
!2440 = !DILocation(line: 359, column: 24, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 358, column: 9)
!2442 = !DILocation(line: 359, column: 61, scope: !2441)
!2443 = !DILocation(line: 359, column: 59, scope: !2441)
!2444 = !DILocation(line: 360, column: 24, scope: !2441)
!2445 = !DILocation(line: 360, column: 61, scope: !2441)
!2446 = !DILocation(line: 360, column: 59, scope: !2441)
!2447 = !DILocation(line: 360, column: 21, scope: !2441)
!2448 = !DILocation(line: 361, column: 24, scope: !2441)
!2449 = !DILocation(line: 361, column: 61, scope: !2441)
!2450 = !DILocation(line: 361, column: 59, scope: !2441)
!2451 = !DILocation(line: 361, column: 21, scope: !2441)
!2452 = !DILocation(line: 362, column: 24, scope: !2441)
!2453 = !DILocation(line: 362, column: 61, scope: !2441)
!2454 = !DILocation(line: 362, column: 59, scope: !2441)
!2455 = !DILocation(line: 362, column: 21, scope: !2441)
!2456 = !DILocation(line: 363, column: 24, scope: !2441)
!2457 = !DILocation(line: 363, column: 55, scope: !2441)
!2458 = !DILocation(line: 363, column: 53, scope: !2441)
!2459 = !DILocation(line: 363, column: 21, scope: !2441)
!2460 = !DILocation(line: 364, column: 24, scope: !2441)
!2461 = !DILocation(line: 364, column: 55, scope: !2441)
!2462 = !DILocation(line: 364, column: 53, scope: !2441)
!2463 = !DILocation(line: 364, column: 21, scope: !2441)
!2464 = !DILocation(line: 365, column: 24, scope: !2441)
!2465 = !DILocation(line: 365, column: 55, scope: !2441)
!2466 = !DILocation(line: 365, column: 53, scope: !2441)
!2467 = !DILocation(line: 365, column: 21, scope: !2441)
!2468 = !DILocation(line: 366, column: 24, scope: !2441)
!2469 = !DILocation(line: 366, column: 55, scope: !2441)
!2470 = !DILocation(line: 366, column: 53, scope: !2441)
!2471 = !DILocation(line: 366, column: 21, scope: !2441)
!2472 = !DILocation(line: 369, column: 14, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 369, column: 13)
!2474 = !DILocation(line: 0, scope: !1765)
!2475 = !DILocation(line: 377, column: 13, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 376, column: 9)
!2477 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 375, column: 9)
!2478 = !DILocation(line: 378, column: 13, scope: !2476)
!2479 = !DILocation(line: 379, column: 13, scope: !2476)
!2480 = !DILocation(line: 380, column: 13, scope: !2476)
!2481 = !DILocation(line: 381, column: 44, scope: !2476)
!2482 = !DILocation(line: 381, column: 42, scope: !2476)
!2483 = !DILocation(line: 382, column: 44, scope: !2476)
!2484 = !DILocation(line: 382, column: 13, scope: !2476)
!2485 = !DILocation(line: 382, column: 42, scope: !2476)
!2486 = !DILocation(line: 383, column: 44, scope: !2476)
!2487 = !DILocation(line: 383, column: 13, scope: !2476)
!2488 = !DILocation(line: 383, column: 42, scope: !2476)
!2489 = !DILocation(line: 384, column: 44, scope: !2476)
!2490 = !DILocation(line: 384, column: 13, scope: !2476)
!2491 = !DILocation(line: 384, column: 42, scope: !2476)
!2492 = !DILocation(line: 381, column: 13, scope: !2476)
!2493 = !DILocation(line: 385, column: 42, scope: !2476)
!2494 = !DILocation(line: 389, column: 1, scope: !1754)
!2495 = distinct !DISubprogram(name: "x264_mb_predict_mv_ref16x16", scope: !3, file: !3, line: 392, type: !2496, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !137, !123, !123, !676, !689}
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2509, !2512, !2513, !2514, !2515, !2516, !2518, !2519, !2522, !2523, !2526}
!2499 = !DILocalVariable(name: "h", arg: 1, scope: !2495, file: !3, line: 392, type: !137)
!2500 = !DILocalVariable(name: "i_list", arg: 2, scope: !2495, file: !3, line: 392, type: !123)
!2501 = !DILocalVariable(name: "i_ref", arg: 3, scope: !2495, file: !3, line: 392, type: !123)
!2502 = !DILocalVariable(name: "mvc", arg: 4, scope: !2495, file: !3, line: 392, type: !676)
!2503 = !DILocalVariable(name: "i_mvc", arg: 5, scope: !2495, file: !3, line: 392, type: !689)
!2504 = !DILocalVariable(name: "mvr", scope: !2495, file: !3, line: 394, type: !676)
!2505 = !DILocalVariable(name: "i", scope: !2495, file: !3, line: 395, type: !123)
!2506 = !DILocalVariable(name: "lowres_mv", scope: !2507, file: !3, line: 412, type: !676)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 411, column: 5)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 410, column: 9)
!2509 = !DILocalVariable(name: "l0", scope: !2510, file: !3, line: 440, type: !612)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 439, column: 5)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 438, column: 9)
!2512 = !DILocalVariable(name: "fref", scope: !2510, file: !3, line: 441, type: !611)
!2513 = !DILocalVariable(name: "field", scope: !2510, file: !3, line: 442, type: !123)
!2514 = !DILocalVariable(name: "curpoc", scope: !2510, file: !3, line: 443, type: !123)
!2515 = !DILocalVariable(name: "refpoc", scope: !2510, file: !3, line: 444, type: !123)
!2516 = !DILocalVariable(name: "mb_index", scope: !2517, file: !3, line: 457, type: !123)
!2517 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 457, column: 9)
!2518 = !DILocalVariable(name: "scale", scope: !2517, file: !3, line: 457, type: !123)
!2519 = !DILocalVariable(name: "mb_index", scope: !2520, file: !3, line: 459, type: !123)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 459, column: 13)
!2521 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 458, column: 13)
!2522 = !DILocalVariable(name: "scale", scope: !2520, file: !3, line: 459, type: !123)
!2523 = !DILocalVariable(name: "mb_index", scope: !2524, file: !3, line: 461, type: !123)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 461, column: 13)
!2525 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 460, column: 13)
!2526 = !DILocalVariable(name: "scale", scope: !2524, file: !3, line: 461, type: !123)
!2527 = !DILocation(line: 0, scope: !2495)
!2528 = !DILocation(line: 394, column: 31, scope: !2495)
!2529 = !DILocation(line: 394, column: 25, scope: !2495)
!2530 = !DILocation(line: 404, column: 15, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 404, column: 9)
!2532 = !DILocation(line: 404, column: 22, scope: !2531)
!2533 = !DILocation(line: 405, column: 9, scope: !2531)
!2534 = !DILocation(line: 405, column: 24, scope: !2531)
!2535 = !DILocation(line: 405, column: 12, scope: !2531)
!2536 = !DILocation(line: 405, column: 52, scope: !2531)
!2537 = !DILocation(line: 404, column: 9, scope: !2495)
!2538 = !DILocation(line: 407, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 407, column: 9)
!2540 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 406, column: 5)
!2541 = !DILocation(line: 408, column: 5, scope: !2540)
!2542 = !DILocation(line: 410, column: 15, scope: !2508)
!2543 = !DILocation(line: 410, column: 20, scope: !2508)
!2544 = !DILocation(line: 410, column: 33, scope: !2508)
!2545 = !DILocation(line: 410, column: 23, scope: !2508)
!2546 = !DILocation(line: 410, column: 9, scope: !2495)
!2547 = !DILocation(line: 412, column: 35, scope: !2507)
!2548 = !DILocation(line: 0, scope: !2507)
!2549 = !DILocation(line: 412, column: 70, scope: !2507)
!2550 = !DILocation(line: 412, column: 67, scope: !2507)
!2551 = !DILocation(line: 413, column: 87, scope: !2507)
!2552 = !DILocation(line: 413, column: 84, scope: !2507)
!2553 = !DILocation(line: 413, column: 53, scope: !2507)
!2554 = !DILocation(line: 414, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 414, column: 13)
!2556 = !DILocation(line: 414, column: 29, scope: !2555)
!2557 = !DILocation(line: 414, column: 13, scope: !2507)
!2558 = !DILocation(line: 416, column: 30, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 415, column: 9)
!2560 = !DILocation(line: 416, column: 61, scope: !2559)
!2561 = !DILocation(line: 416, column: 64, scope: !2559)
!2562 = !DILocation(line: 416, column: 13, scope: !2559)
!2563 = !DILocation(line: 416, column: 27, scope: !2559)
!2564 = !DILocation(line: 417, column: 14, scope: !2559)
!2565 = !DILocation(line: 418, column: 9, scope: !2559)
!2566 = !DILocation(line: 422, column: 15, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 422, column: 9)
!2568 = !DILocation(line: 422, column: 33, scope: !2567)
!2569 = !DILocation(line: 422, column: 9, scope: !2495)
!2570 = !DILocation(line: 424, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 424, column: 9)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 423, column: 5)
!2573 = !DILocation(line: 426, column: 15, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 426, column: 9)
!2575 = !DILocation(line: 425, column: 5, scope: !2572)
!2576 = !DILocation(line: 426, column: 33, scope: !2574)
!2577 = !DILocation(line: 426, column: 9, scope: !2495)
!2578 = !DILocation(line: 428, column: 9, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 428, column: 9)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 427, column: 5)
!2581 = !DILocation(line: 430, column: 19, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 430, column: 13)
!2583 = !DILocation(line: 430, column: 37, scope: !2582)
!2584 = !DILocation(line: 430, column: 13, scope: !2580)
!2585 = !DILocation(line: 431, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 431, column: 13)
!2587 = !DILocation(line: 432, column: 19, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 432, column: 13)
!2589 = !DILocation(line: 0, scope: !2580)
!2590 = !DILocation(line: 432, column: 37, scope: !2588)
!2591 = !DILocation(line: 432, column: 13, scope: !2580)
!2592 = !DILocation(line: 433, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 433, column: 13)
!2594 = !DILocation(line: 438, column: 12, scope: !2511)
!2595 = !DILocation(line: 438, column: 9, scope: !2511)
!2596 = !DILocation(line: 438, column: 22, scope: !2511)
!2597 = !DILocation(line: 438, column: 31, scope: !2511)
!2598 = !DILocation(line: 438, column: 9, scope: !2495)
!2599 = !DILocation(line: 0, scope: !2510)
!2600 = !DILocation(line: 441, column: 31, scope: !2510)
!2601 = !DILocation(line: 442, column: 27, scope: !2510)
!2602 = !DILocation(line: 442, column: 33, scope: !2510)
!2603 = !DILocation(line: 443, column: 25, scope: !2510)
!2604 = !DILocation(line: 443, column: 31, scope: !2510)
!2605 = !DILocation(line: 443, column: 51, scope: !2510)
!2606 = !DILocation(line: 443, column: 44, scope: !2510)
!2607 = !DILocation(line: 443, column: 37, scope: !2510)
!2608 = !DILocation(line: 444, column: 40, scope: !2510)
!2609 = !DILocation(line: 444, column: 32, scope: !2510)
!2610 = !DILocation(line: 444, column: 22, scope: !2510)
!2611 = !DILocation(line: 444, column: 50, scope: !2510)
!2612 = !DILocation(line: 445, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 445, column: 13)
!2614 = !DILocation(line: 445, column: 27, scope: !2613)
!2615 = !DILocation(line: 445, column: 35, scope: !2613)
!2616 = !DILocation(line: 445, column: 13, scope: !2510)
!2617 = !DILocation(line: 457, column: 9, scope: !2517)
!2618 = !DILocation(line: 0, scope: !2517)
!2619 = !DILocation(line: 458, column: 19, scope: !2521)
!2620 = !DILocation(line: 458, column: 31, scope: !2521)
!2621 = !DILocation(line: 458, column: 36, scope: !2521)
!2622 = !DILocation(line: 458, column: 46, scope: !2521)
!2623 = !DILocation(line: 458, column: 26, scope: !2521)
!2624 = !DILocation(line: 458, column: 13, scope: !2510)
!2625 = !DILocation(line: 459, column: 13, scope: !2520)
!2626 = !DILocation(line: 0, scope: !2520)
!2627 = !DILocation(line: 460, column: 31, scope: !2525)
!2628 = !DILocation(line: 460, column: 19, scope: !2525)
!2629 = !DILocation(line: 460, column: 36, scope: !2525)
!2630 = !DILocation(line: 460, column: 47, scope: !2525)
!2631 = !DILocation(line: 460, column: 26, scope: !2525)
!2632 = !DILocation(line: 460, column: 13, scope: !2510)
!2633 = !DILocation(line: 461, column: 13, scope: !2524)
!2634 = !DILocation(line: 0, scope: !2524)
!2635 = !DILocation(line: 465, column: 12, scope: !2495)
!2636 = !DILocation(line: 466, column: 1, scope: !2495)
