; ModuleID = 'x264_src/common/frame.c'
source_filename = "x264_src/common/frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Invalid input colorspace\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"Input picture width is greater than stride\0A\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_new(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 !dbg !42 {
entry:
    #dbg_value(ptr %h, !1353, !DIExpression(), !1394)
    #dbg_value(i32 %b_fdec, !1354, !DIExpression(), !1394)
  %mb = getelementptr inbounds i8, ptr %h, i64 16368, !dbg !1395
  %0 = load i32, ptr %mb, align 16, !dbg !1396
    #dbg_value(i32 %0, !1356, !DIExpression(), !1394)
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136, !dbg !1397
  %1 = load i32, ptr %b_interlaced, align 8, !dbg !1397
  %shl = shl i32 32, %1, !dbg !1398
    #dbg_value(i32 %shl, !1360, !DIExpression(), !1394)
  %2 = load i32, ptr %h, align 16, !dbg !1399
    #dbg_value(i32 poison, !1363, !DIExpression(), !1394)
  %call = tail call ptr @x264_malloc(i32 noundef 15632) #11, !dbg !1400
    #dbg_value(ptr %call, !1355, !DIExpression(), !1394)
  %tobool9.not = icmp eq ptr %call, null, !dbg !1403
  br i1 %tobool9.not, label %fail, label %do.end, !dbg !1400

do.end:                                           ; preds = %entry
  %and = and i32 %2, 2, !dbg !1405
  %tobool.not = icmp eq i32 %and, 0, !dbg !1405
  %and5 = and i32 %2, 1, !dbg !1406
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !1406
  %cond = select i1 %tobool6.not, i32 16, i32 32, !dbg !1406
  %cond7 = select i1 %tobool.not, i32 %cond, i32 64, !dbg !1406
    #dbg_value(i32 %cond7, !1363, !DIExpression(), !1394)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call, i8 0, i64 15632, i1 false), !dbg !1407
  %i_width13 = getelementptr inbounds i8, ptr %h, i64 20, !dbg !1408
  %3 = load i32, ptr %i_width13, align 4, !dbg !1408
  %add = add nsw i32 %3, 15, !dbg !1408
  %and14 = and i32 %add, -16, !dbg !1408
    #dbg_value(i32 %and14, !1358, !DIExpression(), !1394)
  %sub = add nsw i32 %cond7, -1, !dbg !1409
  %add15 = add nuw nsw i32 %cond7, 63, !dbg !1409
  %add16 = add i32 %add15, %and14, !dbg !1409
  %not = sub nsw i32 0, %cond7, !dbg !1409
  %and18 = and i32 %add16, %not, !dbg !1409
    #dbg_value(i32 %and18, !1357, !DIExpression(), !1394)
  %i_height = getelementptr inbounds i8, ptr %h, i64 24, !dbg !1410
  %4 = load i32, ptr %i_height, align 8, !dbg !1410
  %5 = load i32, ptr %b_interlaced, align 8, !dbg !1410
  %shl22 = shl i32 16, %5, !dbg !1410
  %sub23 = add i32 %4, -1, !dbg !1410
  %add24 = add i32 %sub23, %shl22, !dbg !1410
  %not29 = sub i32 0, %shl22, !dbg !1410
  %and30 = and i32 %add24, %not29, !dbg !1410
    #dbg_value(i32 %and30, !1359, !DIExpression(), !1394)
  %i_plane = getelementptr inbounds i8, ptr %call, i64 100, !dbg !1411
  store i32 3, ptr %i_plane, align 4, !dbg !1412
    #dbg_value(i32 0, !1364, !DIExpression(), !1413)
  %i_stride38 = getelementptr inbounds i8, ptr %call, i64 104
  %i_width45 = getelementptr inbounds i8, ptr %call, i64 116
  %i_lines54 = getelementptr inbounds i8, ptr %call, i64 128
    #dbg_value(i32 0, !1364, !DIExpression(), !1413)
    #dbg_value(i64 0, !1364, !DIExpression(), !1413)
  %add34 = add nsw i32 %and18, %sub, !dbg !1414
  %and37 = and i32 %add34, %not, !dbg !1414
  store i32 %and37, ptr %i_stride38, align 4, !dbg !1417
  store i32 %and14, ptr %i_width45, align 4, !dbg !1418
  store i32 %and30, ptr %i_lines54, align 4, !dbg !1419
    #dbg_value(i64 1, !1364, !DIExpression(), !1413)
  %shr.1 = ashr exact i32 %and18, 1, !dbg !1414
  %add34.1 = add nsw i32 %shr.1, %sub, !dbg !1414
  %and37.1 = and i32 %add34.1, %not, !dbg !1414
  %arrayidx.1 = getelementptr inbounds i8, ptr %call, i64 108, !dbg !1420
  store i32 %and37.1, ptr %arrayidx.1, align 4, !dbg !1417
  %shr44.1 = ashr exact i32 %and14, 1, !dbg !1421
  %arrayidx47.1 = getelementptr inbounds i8, ptr %call, i64 120, !dbg !1422
  store i32 %shr44.1, ptr %arrayidx47.1, align 4, !dbg !1418
  %shr53.1 = ashr exact i32 %and30, 1, !dbg !1423
  %arrayidx56.1 = getelementptr inbounds i8, ptr %call, i64 132, !dbg !1424
  store i32 %shr53.1, ptr %arrayidx56.1, align 4, !dbg !1419
    #dbg_value(i64 2, !1364, !DIExpression(), !1413)
  %arrayidx.2 = getelementptr inbounds i8, ptr %call, i64 112, !dbg !1420
  store i32 %and37.1, ptr %arrayidx.2, align 4, !dbg !1417
  %arrayidx47.2 = getelementptr inbounds i8, ptr %call, i64 124, !dbg !1422
  store i32 %shr44.1, ptr %arrayidx47.2, align 4, !dbg !1418
  %arrayidx56.2 = getelementptr inbounds i8, ptr %call, i64 136, !dbg !1424
  store i32 %shr53.1, ptr %arrayidx56.2, align 4, !dbg !1419
    #dbg_value(i64 3, !1364, !DIExpression(), !1413)
  %mul = shl i32 64, %1, !dbg !1425
  %add61 = add nsw i32 %and30, %mul, !dbg !1426
  %mul62 = mul nsw i32 %add61, %and37, !dbg !1427
    #dbg_value(i32 %mul62, !1361, !DIExpression(), !1394)
  %add68 = add nsw i32 %shr53.1, %mul, !dbg !1428
  %mul69 = mul nsw i32 %add68, %and37.1, !dbg !1429
    #dbg_value(i32 %mul69, !1362, !DIExpression(), !1394)
    #dbg_value(i32 1, !1366, !DIExpression(), !1430)
  %buffer = getelementptr inbounds i8, ptr %call, i64 248
  %plane = getelementptr inbounds i8, ptr %call, i64 152
    #dbg_value(i64 1, !1366, !DIExpression(), !1430)
  %call76 = tail call ptr @x264_malloc(i32 noundef %mul69) #11, !dbg !1431
  %arrayidx78 = getelementptr inbounds i8, ptr %call, i64 256, !dbg !1431
  store ptr %call76, ptr %arrayidx78, align 8, !dbg !1431
  %tobool82.not = icmp eq ptr %call76, null, !dbg !1435
  br i1 %tobool82.not, label %fail, label %do.end86, !dbg !1431

for.cond107.preheader.preheader:                  ; preds = %do.end86.1
  %mul116 = ashr exact i32 %and30, 2
  %i_row_satds = getelementptr inbounds i8, ptr %call, i64 9536
  br label %for.cond107.preheader, !dbg !1437

do.end86:                                         ; preds = %do.end
  %6 = load i32, ptr %arrayidx.1, align 4, !dbg !1438
  %mul93 = mul nsw i32 %6, %shl, !dbg !1439
  %add94 = add nsw i32 %mul93, 32, !dbg !1440
  %div = ashr exact i32 %add94, 1, !dbg !1441
  %idx.ext = sext i32 %div to i64, !dbg !1442
  %add.ptr = getelementptr inbounds i8, ptr %call76, i64 %idx.ext, !dbg !1442
  %arrayidx96 = getelementptr inbounds i8, ptr %call, i64 160, !dbg !1443
  store ptr %add.ptr, ptr %arrayidx96, align 8, !dbg !1444
    #dbg_value(i64 2, !1366, !DIExpression(), !1430)
  %call76.1 = tail call ptr @x264_malloc(i32 noundef %mul69) #11, !dbg !1431
  %arrayidx78.1 = getelementptr inbounds i8, ptr %call, i64 264, !dbg !1431
  store ptr %call76.1, ptr %arrayidx78.1, align 8, !dbg !1431
  %tobool82.not.1 = icmp eq ptr %call76.1, null, !dbg !1435
  br i1 %tobool82.not.1, label %fail, label %do.end86.1, !dbg !1431

do.end86.1:                                       ; preds = %do.end86
  %7 = load i32, ptr %arrayidx.2, align 4, !dbg !1438
  %mul93.1 = mul nsw i32 %7, %shl, !dbg !1439
  %add94.1 = add nsw i32 %mul93.1, 32, !dbg !1440
  %div.1 = ashr exact i32 %add94.1, 1, !dbg !1441
  %idx.ext.1 = sext i32 %div.1 to i64, !dbg !1442
  %add.ptr.1 = getelementptr inbounds i8, ptr %call76.1, i64 %idx.ext.1, !dbg !1442
  %arrayidx96.1 = getelementptr inbounds i8, ptr %call, i64 168, !dbg !1443
  store ptr %add.ptr.1, ptr %arrayidx96.1, align 8, !dbg !1444
    #dbg_value(i64 3, !1366, !DIExpression(), !1430)
  %i_bframe = getelementptr inbounds i8, ptr %h, i64 100
    #dbg_value(i32 0, !1368, !DIExpression(), !1445)
  %8 = load i32, ptr %i_bframe, align 4, !dbg !1446
  %cmp104890 = icmp sgt i32 %8, -2, !dbg !1447
  br i1 %cmp104890, label %for.cond107.preheader.preheader, label %for.end142, !dbg !1437

for.cond107.preheader:                            ; preds = %for.cond107.preheader.preheader, %for.inc138
  %9 = phi i32 [ %8, %for.cond107.preheader.preheader ], [ %12, %for.inc138 ]
  %indvars.iv914 = phi i64 [ 0, %for.cond107.preheader.preheader ], [ %indvars.iv.next915, %for.inc138 ]
    #dbg_value(i64 %indvars.iv914, !1368, !DIExpression(), !1445)
    #dbg_value(i32 0, !1370, !DIExpression(), !1448)
  %cmp111.not887 = icmp sgt i32 %9, -2, !dbg !1449
  br i1 %cmp111.not887, label %do.body114, label %for.cond107.preheader.for.inc138_crit_edge, !dbg !1451

for.cond107.preheader.for.inc138_crit_edge:       ; preds = %for.cond107.preheader
  %.pre = sext i32 %9 to i64, !dbg !1447
  br label %for.inc138, !dbg !1451

for.cond107:                                      ; preds = %do.body114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1452
    #dbg_value(i32 poison, !1370, !DIExpression(), !1448)
  %10 = load i32, ptr %i_bframe, align 4, !dbg !1453
  %11 = sext i32 %10 to i64, !dbg !1449
  %cmp111.not.not = icmp sgt i64 %indvars.iv, %11, !dbg !1449
  br i1 %cmp111.not.not, label %for.inc138, label %do.body114, !dbg !1451, !llvm.loop !1454

do.body114:                                       ; preds = %for.cond107.preheader, %for.cond107
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond107 ], [ 0, %for.cond107.preheader ]
    #dbg_value(i64 %indvars.iv, !1370, !DIExpression(), !1448)
  %call118 = tail call ptr @x264_malloc(i32 noundef %mul116) #11, !dbg !1456
  %arrayidx122 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv914, i64 %indvars.iv, !dbg !1456
  store ptr %call118, ptr %arrayidx122, align 8, !dbg !1456
  %tobool128.not = icmp eq ptr %call118, null, !dbg !1458
    #dbg_value(i64 %indvars.iv, !1370, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1448)
  br i1 %tobool128.not, label %fail, label %for.cond107, !dbg !1456

for.inc138:                                       ; preds = %for.cond107, %for.cond107.preheader.for.inc138_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond107.preheader.for.inc138_crit_edge ], [ %11, %for.cond107 ], !dbg !1447
  %12 = phi i32 [ %9, %for.cond107.preheader.for.inc138_crit_edge ], [ %10, %for.cond107 ], !dbg !1446
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 1, !dbg !1460
    #dbg_value(i64 %indvars.iv.next915, !1368, !DIExpression(), !1445)
  %cmp104.not = icmp sgt i64 %indvars.iv914, %.pre-phi, !dbg !1447
  br i1 %cmp104.not, label %for.end142, label %for.cond107.preheader, !dbg !1437, !llvm.loop !1461

for.end142:                                       ; preds = %for.inc138, %do.end86.1
  store i32 -1, ptr %call, align 16, !dbg !1464
  %i_type = getelementptr inbounds i8, ptr %call, i64 4, !dbg !1465
  store i32 0, ptr %i_type, align 4, !dbg !1466
  %i_qpplus1 = getelementptr inbounds i8, ptr %call, i64 8, !dbg !1467
  store i32 0, ptr %i_qpplus1, align 8, !dbg !1468
  %i_pts = getelementptr inbounds i8, ptr %call, i64 16, !dbg !1469
  store i64 -1, ptr %i_pts, align 16, !dbg !1470
  %i_frame = getelementptr inbounds i8, ptr %call, i64 56, !dbg !1471
  store i32 -1, ptr %i_frame, align 8, !dbg !1472
  %i_frame_num = getelementptr inbounds i8, ptr %call, i64 68, !dbg !1473
  store i32 -1, ptr %i_frame_num, align 4, !dbg !1474
  %i_lines_completed = getelementptr inbounds i8, ptr %call, i64 15592, !dbg !1475
  store i32 -1, ptr %i_lines_completed, align 8, !dbg !1476
  %conv143 = trunc i32 %b_fdec to i8, !dbg !1477
  %b_fdec144 = getelementptr inbounds i8, ptr %call, i64 84, !dbg !1478
  store i8 %conv143, ptr %b_fdec144, align 4, !dbg !1479
  %i_pic_struct = getelementptr inbounds i8, ptr %call, i64 76, !dbg !1480
  store i32 0, ptr %i_pic_struct, align 4, !dbg !1481
  %i_field_cnt = getelementptr inbounds i8, ptr %call, i64 64, !dbg !1482
  store i32 -1, ptr %i_field_cnt, align 16, !dbg !1483
  %i_duration = getelementptr inbounds i8, ptr %call, i64 32, !dbg !1484
  %i_cpb_delay_lookahead = getelementptr inbounds i8, ptr %call, i64 15588, !dbg !1485
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i_duration, i8 0, i64 16, i1 false), !dbg !1486
  store i32 -1, ptr %i_cpb_delay_lookahead, align 4, !dbg !1487
  %i_coded_fields_lookahead = getelementptr inbounds i8, ptr %call, i64 15584, !dbg !1488
  store i32 -1, ptr %i_coded_fields_lookahead, align 16, !dbg !1489
  %orig = getelementptr inbounds i8, ptr %call, i64 3528, !dbg !1490
  store ptr %call, ptr %orig, align 8, !dbg !1491
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428, !dbg !1492
  %13 = load i32, ptr %i_subpel_refine, align 4, !dbg !1492
  %tobool146 = icmp ne i32 %13, 0, !dbg !1493
  %tobool147 = icmp ne i32 %b_fdec, 0
  %or.cond = and i1 %tobool147, %tobool146, !dbg !1494
  br i1 %or.cond, label %do.body149, label %do.body188, !dbg !1494

do.body149:                                       ; preds = %for.end142
  %mul150 = shl nsw i32 %mul62, 2, !dbg !1495
  %call151 = tail call ptr @x264_malloc(i32 noundef %mul150) #11, !dbg !1495
  store ptr %call151, ptr %buffer, align 8, !dbg !1495
  %tobool156.not = icmp eq ptr %call151, null, !dbg !1497
  br i1 %tobool156.not, label %fail, label %if.end211.thread, !dbg !1495

if.end211.thread:                                 ; preds = %do.body149
  %filtered = getelementptr inbounds i8, ptr %call, i64 176
    #dbg_value(i32 0, !1373, !DIExpression(), !1499)
  %14 = sext i32 %mul62 to i64, !dbg !1500
    #dbg_value(i64 0, !1373, !DIExpression(), !1499)
  %15 = load i32, ptr %i_stride38, align 8, !dbg !1501
  %mul174 = mul nsw i32 %15, %shl, !dbg !1503
  %idx.ext175 = sext i32 %mul174 to i64, !dbg !1504
  %add.ptr176 = getelementptr inbounds i8, ptr %call151, i64 %idx.ext175, !dbg !1504
  %add.ptr177 = getelementptr inbounds i8, ptr %add.ptr176, i64 32, !dbg !1505
  store ptr %add.ptr177, ptr %filtered, align 8, !dbg !1506
    #dbg_value(i64 1, !1373, !DIExpression(), !1499)
  %add.ptr171.1 = getelementptr inbounds i8, ptr %call151, i64 %14, !dbg !1507
  %add.ptr176.1 = getelementptr inbounds i8, ptr %add.ptr171.1, i64 %idx.ext175, !dbg !1504
  %add.ptr177.1 = getelementptr inbounds i8, ptr %add.ptr176.1, i64 32, !dbg !1505
  %arrayidx179.1 = getelementptr inbounds i8, ptr %call, i64 184, !dbg !1508
  store ptr %add.ptr177.1, ptr %arrayidx179.1, align 8, !dbg !1506
    #dbg_value(i64 2, !1373, !DIExpression(), !1499)
  %16 = shl nsw i64 %14, 1, !dbg !1509
  %add.ptr171.2 = getelementptr inbounds i8, ptr %call151, i64 %16, !dbg !1507
  %add.ptr176.2 = getelementptr inbounds i8, ptr %add.ptr171.2, i64 %idx.ext175, !dbg !1504
  %add.ptr177.2 = getelementptr inbounds i8, ptr %add.ptr176.2, i64 32, !dbg !1505
  %arrayidx179.2 = getelementptr inbounds i8, ptr %call, i64 192, !dbg !1508
  store ptr %add.ptr177.2, ptr %arrayidx179.2, align 8, !dbg !1506
    #dbg_value(i64 3, !1373, !DIExpression(), !1499)
  %17 = mul nsw i64 %14, 3, !dbg !1509
  %add.ptr171.3 = getelementptr inbounds i8, ptr %call151, i64 %17, !dbg !1507
  %add.ptr176.3 = getelementptr inbounds i8, ptr %add.ptr171.3, i64 %idx.ext175, !dbg !1504
  %add.ptr177.3 = getelementptr inbounds i8, ptr %add.ptr176.3, i64 32, !dbg !1505
  %arrayidx179.3 = getelementptr inbounds i8, ptr %call, i64 200, !dbg !1508
  store ptr %add.ptr177.3, ptr %arrayidx179.3, align 8, !dbg !1506
    #dbg_value(i64 4, !1373, !DIExpression(), !1499)
  store ptr %add.ptr177, ptr %plane, align 8, !dbg !1510
  %b_duplicate939 = getelementptr inbounds i8, ptr %call, i64 3520, !dbg !1511
  store i32 0, ptr %b_duplicate939, align 16, !dbg !1512
  br label %do.body214, !dbg !1513

do.body188:                                       ; preds = %for.end142
  %call189 = tail call ptr @x264_malloc(i32 noundef %mul62) #11, !dbg !1514
  store ptr %call189, ptr %buffer, align 8, !dbg !1514
  %tobool194.not = icmp eq ptr %call189, null, !dbg !1517
  br i1 %tobool194.not, label %fail, label %if.end211, !dbg !1514

if.end211:                                        ; preds = %do.body188
  %18 = load i32, ptr %i_stride38, align 8, !dbg !1519
  %mul203 = mul nsw i32 %18, %shl, !dbg !1520
  %idx.ext204 = sext i32 %mul203 to i64, !dbg !1521
  %add.ptr205 = getelementptr inbounds i8, ptr %call189, i64 %idx.ext204, !dbg !1521
  %add.ptr206 = getelementptr inbounds i8, ptr %add.ptr205, i64 32, !dbg !1522
  store ptr %add.ptr206, ptr %plane, align 8, !dbg !1523
  %filtered209 = getelementptr inbounds i8, ptr %call, i64 176, !dbg !1524
  store ptr %add.ptr206, ptr %filtered209, align 16, !dbg !1525
  %b_duplicate = getelementptr inbounds i8, ptr %call, i64 3520, !dbg !1511
  store i32 0, ptr %b_duplicate, align 16, !dbg !1512
  br i1 %tobool147, label %do.body214, label %if.else376, !dbg !1513

do.body214:                                       ; preds = %if.end211.thread, %if.end211
  %call218 = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !1526
  %mb_type = getelementptr inbounds i8, ptr %call, i64 3536, !dbg !1526
  store ptr %call218, ptr %mb_type, align 16, !dbg !1526
  %tobool220.not = icmp eq ptr %call218, null, !dbg !1529
  br i1 %tobool220.not, label %fail, label %do.body225, !dbg !1526

do.body225:                                       ; preds = %do.body214
  %call229 = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !1531
  %mb_partition = getelementptr inbounds i8, ptr %call, i64 3544, !dbg !1531
  store ptr %call229, ptr %mb_partition, align 8, !dbg !1531
  %tobool231.not = icmp eq ptr %call229, null, !dbg !1533
  br i1 %tobool231.not, label %fail, label %do.body236, !dbg !1531

do.body236:                                       ; preds = %do.body225
  %mul237 = shl i32 %0, 6, !dbg !1535
  %call241 = tail call ptr @x264_malloc(i32 noundef %mul237) #11, !dbg !1535
  %mv = getelementptr inbounds i8, ptr %call, i64 3552, !dbg !1535
  store ptr %call241, ptr %mv, align 16, !dbg !1535
  %tobool245.not = icmp eq ptr %call241, null, !dbg !1537
  br i1 %tobool245.not, label %fail, label %do.body250, !dbg !1535

do.body250:                                       ; preds = %do.body236
  %mul251 = shl i32 %0, 2, !dbg !1539
  %call255 = tail call ptr @x264_malloc(i32 noundef %mul251) #11, !dbg !1539
  %mv16x16 = getelementptr inbounds i8, ptr %call, i64 3568, !dbg !1539
  store ptr %call255, ptr %mv16x16, align 16, !dbg !1539
  %tobool257.not = icmp eq ptr %call255, null, !dbg !1541
  br i1 %tobool257.not, label %fail, label %do.body262, !dbg !1539

do.body262:                                       ; preds = %do.body250
  %call267 = tail call ptr @x264_malloc(i32 noundef %mul251) #11, !dbg !1543
  %ref = getelementptr inbounds i8, ptr %call, i64 6712, !dbg !1543
  store ptr %call267, ptr %ref, align 8, !dbg !1543
  %tobool271.not = icmp eq ptr %call267, null, !dbg !1545
  br i1 %tobool271.not, label %fail, label %do.end275, !dbg !1543

do.end275:                                        ; preds = %do.body262
  %19 = load i32, ptr %i_bframe, align 4, !dbg !1547
  %tobool278.not = icmp eq i32 %19, 0, !dbg !1549
  br i1 %tobool278.not, label %if.else310, label %do.body280, !dbg !1550

do.body280:                                       ; preds = %do.end275
  %call285 = tail call ptr @x264_malloc(i32 noundef %mul237) #11, !dbg !1551
  %arrayidx287 = getelementptr inbounds i8, ptr %call, i64 3560, !dbg !1551
  store ptr %call285, ptr %arrayidx287, align 8, !dbg !1551
  %tobool290.not = icmp eq ptr %call285, null, !dbg !1554
  br i1 %tobool290.not, label %fail, label %do.body295, !dbg !1551

do.body295:                                       ; preds = %do.body280
  %call300 = tail call ptr @x264_malloc(i32 noundef %mul251) #11, !dbg !1556
  %arrayidx302 = getelementptr inbounds i8, ptr %call, i64 6720, !dbg !1556
  store ptr %call300, ptr %arrayidx302, align 8, !dbg !1556
  %tobool305.not = icmp eq ptr %call300, null, !dbg !1558
  br i1 %tobool305.not, label %fail, label %do.body316, !dbg !1556

if.else310:                                       ; preds = %do.end275
  %arrayidx312 = getelementptr inbounds i8, ptr %call, i64 3560, !dbg !1560
  store ptr null, ptr %arrayidx312, align 8, !dbg !1562
  %arrayidx314 = getelementptr inbounds i8, ptr %call, i64 6720, !dbg !1563
  store ptr null, ptr %arrayidx314, align 8, !dbg !1564
  br label %do.body316

do.body316:                                       ; preds = %if.else310, %do.body295
  %mul319 = ashr exact i32 %and30, 2, !dbg !1565
  %call321 = tail call ptr @x264_malloc(i32 noundef %mul319) #11, !dbg !1565
  %i_row_bits = getelementptr inbounds i8, ptr %call, i64 12136, !dbg !1565
  store ptr %call321, ptr %i_row_bits, align 8, !dbg !1565
  %tobool323.not = icmp eq ptr %call321, null, !dbg !1567
  br i1 %tobool323.not, label %fail, label %do.body328, !dbg !1565

do.body328:                                       ; preds = %do.body316
  %call333 = tail call ptr @x264_malloc(i32 noundef %mul319) #11, !dbg !1569
  %f_row_qp = getelementptr inbounds i8, ptr %call, i64 12144, !dbg !1569
  store ptr %call333, ptr %f_row_qp, align 16, !dbg !1569
  %tobool335.not = icmp eq ptr %call333, null, !dbg !1571
  br i1 %tobool335.not, label %fail, label %do.end339, !dbg !1569

do.end339:                                        ; preds = %do.body328
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412, !dbg !1573
  %20 = load i32, ptr %i_me_method, align 4, !dbg !1573
  %cmp342 = icmp sgt i32 %20, 2, !dbg !1575
  br i1 %cmp342, label %do.body345, label %cleanup646, !dbg !1576

do.body345:                                       ; preds = %do.end339
  %21 = load i32, ptr %i_stride38, align 8, !dbg !1577
  %22 = load i32, ptr %i_lines54, align 16, !dbg !1577
  %add351 = add nsw i32 %22, %mul, !dbg !1577
  %mul352 = mul nsw i32 %add351, %21, !dbg !1577
  %conv353 = sext i32 %mul352 to i64, !dbg !1577
  %mul354 = shl nsw i64 %conv353, 1, !dbg !1577
  %b_have_sub8x8_esa = getelementptr inbounds i8, ptr %h, i64 14676, !dbg !1577
  %23 = load i32, ptr %b_have_sub8x8_esa, align 4, !dbg !1577
  %sh_prom = zext nneg i32 %23 to i64, !dbg !1577
  %shl355 = shl i64 %mul354, %sh_prom, !dbg !1577
  %conv356 = trunc i64 %shl355 to i32, !dbg !1577
  %call357 = tail call ptr @x264_malloc(i32 noundef %conv356) #11, !dbg !1577
  %arrayidx359 = getelementptr inbounds i8, ptr %call, i64 272, !dbg !1577
  store ptr %call357, ptr %arrayidx359, align 8, !dbg !1577
  %tobool362.not = icmp eq ptr %call357, null, !dbg !1580
  br i1 %tobool362.not, label %fail, label %do.end366, !dbg !1577

do.end366:                                        ; preds = %do.body345
  %24 = load i32, ptr %i_stride38, align 8, !dbg !1582
  %mul371 = mul nsw i32 %24, %shl, !dbg !1583
  %idx.ext372 = sext i32 %mul371 to i64, !dbg !1584
  %add.ptr373 = getelementptr inbounds i16, ptr %call357, i64 %idx.ext372, !dbg !1584
  %add.ptr374 = getelementptr inbounds i8, ptr %add.ptr373, i64 64, !dbg !1585
  %integral = getelementptr inbounds i8, ptr %call, i64 240, !dbg !1586
  store ptr %add.ptr374, ptr %integral, align 16, !dbg !1587
  br label %cleanup646, !dbg !1588

if.else376:                                       ; preds = %if.end211
  %b_have_lowres = getelementptr inbounds i8, ptr %h, i64 14672, !dbg !1589
  %25 = load i32, ptr %b_have_lowres, align 16, !dbg !1589
  %tobool378.not = icmp eq i32 %25, 0, !dbg !1590
  br i1 %tobool378.not, label %if.end586, label %if.then379, !dbg !1591

if.then379:                                       ; preds = %if.else376
  %26 = load i32, ptr %i_width45, align 4, !dbg !1592
  %div382 = sdiv i32 %26, 2, !dbg !1593
  %i_width_lowres = getelementptr inbounds i8, ptr %call, i64 144, !dbg !1594
  store i32 %div382, ptr %i_width_lowres, align 16, !dbg !1595
  %add386 = add nsw i32 %add15, %div382, !dbg !1596
  %and389 = and i32 %add386, %not, !dbg !1596
  %i_stride_lowres = getelementptr inbounds i8, ptr %call, i64 140, !dbg !1597
  store i32 %and389, ptr %i_stride_lowres, align 4, !dbg !1598
  %27 = load i32, ptr %i_lines54, align 16, !dbg !1599
  %div392 = sdiv i32 %27, 2, !dbg !1600
  %i_lines_lowres = getelementptr inbounds i8, ptr %call, i64 148, !dbg !1601
  store i32 %div392, ptr %i_lines_lowres, align 4, !dbg !1602
  %add397 = add nsw i32 %div392, 64, !dbg !1603
  %mul398 = mul nsw i32 %add397, %and389, !dbg !1604
    #dbg_value(i32 %mul398, !1361, !DIExpression(), !1394)
  %mul400 = shl nsw i32 %mul398, 2, !dbg !1605
  %call401 = tail call ptr @x264_malloc(i32 noundef %mul400) #11, !dbg !1605
  %buffer_lowres = getelementptr inbounds i8, ptr %call, i64 280, !dbg !1605
  store ptr %call401, ptr %buffer_lowres, align 8, !dbg !1605
  %tobool405.not = icmp eq ptr %call401, null, !dbg !1607
  br i1 %tobool405.not, label %fail, label %for.cond411.preheader, !dbg !1605

for.cond411.preheader:                            ; preds = %if.then379
  %lowres = getelementptr inbounds i8, ptr %call, i64 208
    #dbg_value(i32 0, !1377, !DIExpression(), !1609)
  %28 = sext i32 %mul398 to i64, !dbg !1610
    #dbg_value(i64 0, !1377, !DIExpression(), !1609)
  %29 = load i32, ptr %i_stride_lowres, align 4, !dbg !1611
  %mul419 = shl nsw i32 %29, 5, !dbg !1613
  %30 = sext i32 %mul419 to i64, !dbg !1614
  %31 = getelementptr i8, ptr %call401, i64 %30, !dbg !1614
  %add.ptr422 = getelementptr i8, ptr %31, i64 32, !dbg !1614
  store ptr %add.ptr422, ptr %lowres, align 8, !dbg !1615
    #dbg_value(i64 1, !1377, !DIExpression(), !1609)
  %add.ptr425.1 = getelementptr inbounds i8, ptr %add.ptr422, i64 %28, !dbg !1616
  %arrayidx427.1 = getelementptr inbounds i8, ptr %call, i64 216, !dbg !1617
  store ptr %add.ptr425.1, ptr %arrayidx427.1, align 8, !dbg !1615
    #dbg_value(i64 2, !1377, !DIExpression(), !1609)
  %32 = shl nsw i64 %28, 1, !dbg !1618
  %add.ptr425.2 = getelementptr inbounds i8, ptr %add.ptr422, i64 %32, !dbg !1616
  %arrayidx427.2 = getelementptr inbounds i8, ptr %call, i64 224, !dbg !1617
  store ptr %add.ptr425.2, ptr %arrayidx427.2, align 8, !dbg !1615
    #dbg_value(i64 3, !1377, !DIExpression(), !1609)
  %33 = mul nsw i64 %28, 3, !dbg !1618
  %add.ptr425.3 = getelementptr inbounds i8, ptr %add.ptr422, i64 %33, !dbg !1616
  %arrayidx427.3 = getelementptr inbounds i8, ptr %call, i64 232, !dbg !1617
  store ptr %add.ptr425.3, ptr %arrayidx427.3, align 8, !dbg !1615
    #dbg_value(i64 4, !1377, !DIExpression(), !1609)
    #dbg_value(i32 0, !1383, !DIExpression(), !1619)
  %lowres_mvs = getelementptr inbounds i8, ptr %call, i64 3576
  %lowres_mv_costs = getelementptr inbounds i8, ptr %call, i64 6440
  %34 = load i32, ptr %i_bframe, align 4, !dbg !1620
  %35 = icmp slt i32 %34, 0, !dbg !1622
  br i1 %35, label %do.body519, label %for.cond446.preheader

for.cond446.preheader:                            ; preds = %for.cond411.preheader, %for.inc514
  %36 = phi i32 [ %43, %for.inc514 ], [ %34, %for.cond411.preheader ]
  %37 = phi i1 [ false, %for.inc514 ], [ true, %for.cond411.preheader ]
  %indvars.iv928 = phi i64 [ 1, %for.inc514 ], [ 0, %for.cond411.preheader ]
    #dbg_value(i64 %indvars.iv928, !1383, !DIExpression(), !1619)
    #dbg_value(i32 0, !1385, !DIExpression(), !1623)
  %cmp449.not894 = icmp slt i32 %36, 0, !dbg !1622
  br i1 %cmp449.not894, label %for.inc514, label %do.body454, !dbg !1624

for.cond446:                                      ; preds = %do.end475
  %indvars.iv.next926 = add nuw nsw i64 %indvars.iv925, 1, !dbg !1625
    #dbg_value(i32 poison, !1385, !DIExpression(), !1623)
  %38 = load i32, ptr %i_bframe, align 4, !dbg !1620
  %39 = sext i32 %38 to i64, !dbg !1622
  %cmp449.not.not = icmp slt i64 %indvars.iv925, %39, !dbg !1622
  br i1 %cmp449.not.not, label %do.body454, label %for.inc514, !dbg !1624, !llvm.loop !1626

do.body454:                                       ; preds = %for.cond446.preheader, %for.cond446
  %indvars.iv925 = phi i64 [ %indvars.iv.next926, %for.cond446 ], [ 0, %for.cond446.preheader ]
    #dbg_value(i64 %indvars.iv925, !1385, !DIExpression(), !1623)
  %40 = load i32, ptr %mb, align 16, !dbg !1628
  %mul457 = shl i32 %40, 2, !dbg !1628
  %call461 = tail call ptr @x264_malloc(i32 noundef %mul457) #11, !dbg !1628
  %arrayidx465 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mvs, i64 0, i64 %indvars.iv928, i64 %indvars.iv925, !dbg !1628
  store ptr %call461, ptr %arrayidx465, align 8, !dbg !1628
  %tobool471.not = icmp eq ptr %call461, null, !dbg !1632
  br i1 %tobool471.not, label %fail, label %do.end475, !dbg !1628

do.end475:                                        ; preds = %do.body454
  %41 = load i32, ptr %mb, align 16, !dbg !1634
  %mul483 = shl nsw i32 %41, 1, !dbg !1634
  %conv484 = sext i32 %mul483 to i64, !dbg !1634
  %mul485 = shl nsw i64 %conv484, 1, !dbg !1634
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call461, i8 0, i64 %mul485, i1 false), !dbg !1634
  %42 = load i32, ptr %mb, align 16, !dbg !1635
  %mul492 = shl i32 %42, 2, !dbg !1635
  %call494 = tail call ptr @x264_malloc(i32 noundef %mul492) #11, !dbg !1635
  %arrayidx498 = getelementptr inbounds [2 x [17 x ptr]], ptr %lowres_mv_costs, i64 0, i64 %indvars.iv928, i64 %indvars.iv925, !dbg !1635
  store ptr %call494, ptr %arrayidx498, align 8, !dbg !1635
  %tobool504.not = icmp eq ptr %call494, null, !dbg !1637
    #dbg_value(i64 %indvars.iv925, !1385, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1623)
  br i1 %tobool504.not, label %fail, label %for.cond446, !dbg !1635

for.inc514:                                       ; preds = %for.cond446, %for.cond446.preheader
  %43 = phi i32 [ %36, %for.cond446.preheader ], [ %38, %for.cond446 ], !dbg !1639
    #dbg_value(i64 %indvars.iv928, !1383, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1619)
  %tobool436 = icmp ne i32 %43, 0, !dbg !1640
  %cmp441.not.not = and i1 %37, %tobool436, !dbg !1641
  br i1 %cmp441.not.not, label %for.cond446.preheader, label %do.body519, !dbg !1642, !llvm.loop !1643

do.body519:                                       ; preds = %for.inc514, %for.cond411.preheader
  %add520 = add nsw i32 %0, 3, !dbg !1645
  %conv521 = sext i32 %add520 to i64, !dbg !1645
  %mul522 = shl nsw i64 %conv521, 1, !dbg !1645
  %conv523 = trunc i64 %mul522 to i32, !dbg !1645
  %call524 = tail call ptr @x264_malloc(i32 noundef %conv523) #11, !dbg !1645
  %i_propagate_cost = getelementptr inbounds i8, ptr %call, i64 12184, !dbg !1645
  store ptr %call524, ptr %i_propagate_cost, align 8, !dbg !1645
  %tobool526.not = icmp eq ptr %call524, null, !dbg !1647
  br i1 %tobool526.not, label %fail, label %for.cond532.preheader, !dbg !1645

for.cond532.preheader:                            ; preds = %do.body519
    #dbg_value(i32 0, !1388, !DIExpression(), !1649)
  %44 = load i32, ptr %i_bframe, align 4, !dbg !1650
  %cmp536.not903 = icmp slt i32 %44, -1, !dbg !1651
  br i1 %cmp536.not903, label %for.end578, label %for.cond541.preheader.preheader, !dbg !1652

for.cond541.preheader.preheader:                  ; preds = %for.cond532.preheader
  %lowres_costs = getelementptr inbounds i8, ptr %call, i64 3848
  br label %for.cond541.preheader, !dbg !1652

for.cond541.preheader:                            ; preds = %for.cond541.preheader.preheader, %for.inc574
  %45 = phi i32 [ %44, %for.cond541.preheader.preheader ], [ %48, %for.inc574 ]
  %indvars.iv934 = phi i64 [ 0, %for.cond541.preheader.preheader ], [ %indvars.iv.next935, %for.inc574 ]
    #dbg_value(i64 %indvars.iv934, !1388, !DIExpression(), !1649)
    #dbg_value(i32 0, !1390, !DIExpression(), !1653)
  %cmp545.not900 = icmp slt i32 %45, -1, !dbg !1654
  br i1 %cmp545.not900, label %for.cond541.preheader.for.inc574_crit_edge, label %do.body549, !dbg !1656

for.cond541.preheader.for.inc574_crit_edge:       ; preds = %for.cond541.preheader
  %.pre937 = sext i32 %45 to i64, !dbg !1651
  br label %for.inc574, !dbg !1656

for.cond541:                                      ; preds = %do.body549
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1, !dbg !1657
    #dbg_value(i32 poison, !1390, !DIExpression(), !1653)
  %46 = load i32, ptr %i_bframe, align 4, !dbg !1658
  %47 = sext i32 %46 to i64, !dbg !1654
  %cmp545.not = icmp sgt i64 %indvars.iv931, %47, !dbg !1654
  br i1 %cmp545.not, label %for.inc574, label %do.body549, !dbg !1656, !llvm.loop !1659

do.body549:                                       ; preds = %for.cond541.preheader, %for.cond541
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %for.cond541 ], [ 0, %for.cond541.preheader ]
    #dbg_value(i64 %indvars.iv931, !1390, !DIExpression(), !1653)
  %call554 = tail call ptr @x264_malloc(i32 noundef %conv523) #11, !dbg !1661
  %arrayidx558 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv934, i64 %indvars.iv931, !dbg !1661
  store ptr %call554, ptr %arrayidx558, align 8, !dbg !1661
  %tobool564.not = icmp eq ptr %call554, null, !dbg !1663
    #dbg_value(i64 %indvars.iv931, !1390, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1653)
  br i1 %tobool564.not, label %fail, label %for.cond541, !dbg !1661

for.inc574:                                       ; preds = %for.cond541, %for.cond541.preheader.for.inc574_crit_edge
  %.pre-phi938 = phi i64 [ %.pre937, %for.cond541.preheader.for.inc574_crit_edge ], [ %47, %for.cond541 ], !dbg !1651
  %48 = phi i32 [ %45, %for.cond541.preheader.for.inc574_crit_edge ], [ %46, %for.cond541 ], !dbg !1650
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1, !dbg !1665
    #dbg_value(i64 %indvars.iv.next935, !1388, !DIExpression(), !1649)
  %cmp536.not = icmp sgt i64 %indvars.iv934, %.pre-phi938, !dbg !1651
  br i1 %cmp536.not, label %for.end578, label %for.cond541.preheader, !dbg !1652, !llvm.loop !1666

for.end578:                                       ; preds = %for.inc574, %for.cond532.preheader
  %lowres_costs579 = getelementptr inbounds i8, ptr %call, i64 3848, !dbg !1668
  %49 = load ptr, ptr %lowres_costs579, align 8, !dbg !1669
  %i_intra_cost = getelementptr inbounds i8, ptr %call, i64 12176, !dbg !1670
  store ptr %49, ptr %i_intra_cost, align 16, !dbg !1671
  tail call void @llvm.memset.p0.i64(ptr align 2 %49, i8 -1, i64 %mul522, i1 false), !dbg !1672
  br label %if.end586, !dbg !1673

if.end586:                                        ; preds = %for.end578, %if.else376
  %i_aq_mode = getelementptr inbounds i8, ptr %h, i64 544, !dbg !1674
  %50 = load i32, ptr %i_aq_mode, align 8, !dbg !1674
  %tobool588.not = icmp eq i32 %50, 0, !dbg !1676
  br i1 %tobool588.not, label %cleanup646, label %do.body590, !dbg !1677

do.body590:                                       ; preds = %if.end586
  %51 = load i32, ptr %mb, align 16, !dbg !1678
  %mul594 = shl i32 %51, 2, !dbg !1678
  %call596 = tail call ptr @x264_malloc(i32 noundef %mul594) #11, !dbg !1678
  %f_qp_offset = getelementptr inbounds i8, ptr %call, i64 12152, !dbg !1678
  store ptr %call596, ptr %f_qp_offset, align 8, !dbg !1678
  %tobool598.not = icmp eq ptr %call596, null, !dbg !1681
  br i1 %tobool598.not, label %fail, label %do.body603, !dbg !1678

do.body603:                                       ; preds = %do.body590
  %52 = load i32, ptr %mb, align 16, !dbg !1683
  %mul607 = shl i32 %52, 2, !dbg !1683
  %call609 = tail call ptr @x264_malloc(i32 noundef %mul607) #11, !dbg !1683
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %call, i64 12160, !dbg !1683
  store ptr %call609, ptr %f_qp_offset_aq, align 16, !dbg !1683
  %tobool611.not = icmp eq ptr %call609, null, !dbg !1685
  br i1 %tobool611.not, label %fail, label %do.end615, !dbg !1683

do.end615:                                        ; preds = %do.body603
  %53 = load i32, ptr %b_have_lowres, align 16, !dbg !1687
  %tobool618.not = icmp eq i32 %53, 0, !dbg !1689
  br i1 %tobool618.not, label %cleanup646, label %do.body621, !dbg !1690

do.body621:                                       ; preds = %do.end615
  %54 = load i32, ptr %mb, align 16, !dbg !1691
  %add624 = shl i32 %54, 1, !dbg !1691
  %mul626 = add i32 %add624, 6, !dbg !1691
  %call628 = tail call ptr @x264_malloc(i32 noundef %mul626) #11, !dbg !1691
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %call, i64 12192, !dbg !1691
  store ptr %call628, ptr %i_inv_qscale_factor, align 16, !dbg !1691
  %tobool630.not = icmp eq ptr %call628, null, !dbg !1694
  br i1 %tobool630.not, label %fail, label %do.end634, !dbg !1691

do.end634:                                        ; preds = %do.body621
  %55 = load i32, ptr %mb, align 16, !dbg !1696
  %add638 = add nsw i32 %55, 3, !dbg !1696
  %conv639 = sext i32 %add638 to i64, !dbg !1696
  %mul640 = shl nsw i64 %conv639, 1, !dbg !1696
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call628, i8 0, i64 %mul640, i1 false), !dbg !1696
  br label %cleanup646, !dbg !1696

fail:                                             ; preds = %do.body114, %do.body454, %do.end475, %do.body549, %do.end, %do.end86, %do.body621, %do.body603, %do.body590, %do.body519, %if.then379, %do.body345, %do.body328, %do.body316, %do.body295, %do.body280, %do.body262, %do.body250, %do.body236, %do.body225, %do.body214, %do.body188, %do.body149, %entry
    #dbg_label(!1393, !1697)
  tail call void @x264_free(ptr noundef %call) #11, !dbg !1698
  br label %cleanup646, !dbg !1699

cleanup646:                                       ; preds = %do.end366, %do.end339, %do.end615, %do.end634, %if.end586, %fail
  %retval.0 = phi ptr [ null, %fail ], [ %call, %if.end586 ], [ %call, %do.end634 ], [ %call, %do.end615 ], [ %call, %do.end339 ], [ %call, %do.end366 ]
  ret ptr %retval.0, !dbg !1700
}

declare !dbg !1701 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !1704 void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete(ptr noundef %frame) local_unnamed_addr #0 !dbg !1705 {
entry:
    #dbg_value(ptr %frame, !1709, !DIExpression(), !1731)
  %b_duplicate = getelementptr inbounds i8, ptr %frame, i64 3520, !dbg !1732
  %0 = load i32, ptr %b_duplicate, align 16, !dbg !1732
  %tobool.not = icmp eq i32 %0, 0, !dbg !1733
  br i1 %tobool.not, label %for.cond.preheader, label %if.end, !dbg !1734

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds i8, ptr %frame, i64 248
    #dbg_value(i32 0, !1710, !DIExpression(), !1735)
    #dbg_value(i64 0, !1710, !DIExpression(), !1735)
  %1 = load ptr, ptr %buffer, align 8, !dbg !1736
  tail call void @x264_free(ptr noundef %1) #11, !dbg !1738
    #dbg_value(i64 1, !1710, !DIExpression(), !1735)
  %arrayidx.1 = getelementptr inbounds i8, ptr %frame, i64 256, !dbg !1736
  %2 = load ptr, ptr %arrayidx.1, align 8, !dbg !1736
  tail call void @x264_free(ptr noundef %2) #11, !dbg !1738
    #dbg_value(i64 2, !1710, !DIExpression(), !1735)
  %arrayidx.2 = getelementptr inbounds i8, ptr %frame, i64 264, !dbg !1736
  %3 = load ptr, ptr %arrayidx.2, align 8, !dbg !1736
  tail call void @x264_free(ptr noundef %3) #11, !dbg !1738
    #dbg_value(i64 3, !1710, !DIExpression(), !1735)
  %arrayidx.3 = getelementptr inbounds i8, ptr %frame, i64 272, !dbg !1736
  %4 = load ptr, ptr %arrayidx.3, align 8, !dbg !1736
  tail call void @x264_free(ptr noundef %4) #11, !dbg !1738
    #dbg_value(i64 4, !1710, !DIExpression(), !1735)
  %buffer_lowres = getelementptr inbounds i8, ptr %frame, i64 280
    #dbg_value(i32 0, !1714, !DIExpression(), !1739)
    #dbg_value(i64 0, !1714, !DIExpression(), !1739)
  %5 = load ptr, ptr %buffer_lowres, align 8, !dbg !1740
  tail call void @x264_free(ptr noundef %5) #11, !dbg !1742
    #dbg_value(i64 1, !1714, !DIExpression(), !1739)
  %arrayidx7.1 = getelementptr inbounds i8, ptr %frame, i64 288, !dbg !1740
  %6 = load ptr, ptr %arrayidx7.1, align 8, !dbg !1740
  tail call void @x264_free(ptr noundef %6) #11, !dbg !1742
    #dbg_value(i64 2, !1714, !DIExpression(), !1739)
  %arrayidx7.2 = getelementptr inbounds i8, ptr %frame, i64 296, !dbg !1740
  %7 = load ptr, ptr %arrayidx7.2, align 8, !dbg !1740
  tail call void @x264_free(ptr noundef %7) #11, !dbg !1742
    #dbg_value(i64 3, !1714, !DIExpression(), !1739)
  %arrayidx7.3 = getelementptr inbounds i8, ptr %frame, i64 304, !dbg !1740
  %8 = load ptr, ptr %arrayidx7.3, align 8, !dbg !1740
  tail call void @x264_free(ptr noundef %8) #11, !dbg !1742
    #dbg_value(i64 4, !1714, !DIExpression(), !1739)
  %i_row_satds = getelementptr inbounds i8, ptr %frame, i64 9536
    #dbg_value(i32 0, !1716, !DIExpression(), !1743)
  br label %for.cond16.preheader, !dbg !1744

for.cond16.preheader:                             ; preds = %for.cond.preheader, %for.cond16.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.cond16.preheader ]
    #dbg_value(i64 %indvars.iv, !1716, !DIExpression(), !1743)
    #dbg_value(i32 0, !1718, !DIExpression(), !1745)
    #dbg_value(i64 0, !1718, !DIExpression(), !1745)
  %arrayidx23 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 0, !dbg !1746
  %9 = load ptr, ptr %arrayidx23, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %9) #11, !dbg !1748
    #dbg_value(i64 1, !1718, !DIExpression(), !1745)
  %arrayidx23.1 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 1, !dbg !1746
  %10 = load ptr, ptr %arrayidx23.1, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %10) #11, !dbg !1748
    #dbg_value(i64 2, !1718, !DIExpression(), !1745)
  %arrayidx23.2 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 2, !dbg !1746
  %11 = load ptr, ptr %arrayidx23.2, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %11) #11, !dbg !1748
    #dbg_value(i64 3, !1718, !DIExpression(), !1745)
  %arrayidx23.3 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 3, !dbg !1746
  %12 = load ptr, ptr %arrayidx23.3, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %12) #11, !dbg !1748
    #dbg_value(i64 4, !1718, !DIExpression(), !1745)
  %arrayidx23.4 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 4, !dbg !1746
  %13 = load ptr, ptr %arrayidx23.4, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %13) #11, !dbg !1748
    #dbg_value(i64 5, !1718, !DIExpression(), !1745)
  %arrayidx23.5 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 5, !dbg !1746
  %14 = load ptr, ptr %arrayidx23.5, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %14) #11, !dbg !1748
    #dbg_value(i64 6, !1718, !DIExpression(), !1745)
  %arrayidx23.6 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 6, !dbg !1746
  %15 = load ptr, ptr %arrayidx23.6, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %15) #11, !dbg !1748
    #dbg_value(i64 7, !1718, !DIExpression(), !1745)
  %arrayidx23.7 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 7, !dbg !1746
  %16 = load ptr, ptr %arrayidx23.7, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %16) #11, !dbg !1748
    #dbg_value(i64 8, !1718, !DIExpression(), !1745)
  %arrayidx23.8 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 8, !dbg !1746
  %17 = load ptr, ptr %arrayidx23.8, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %17) #11, !dbg !1748
    #dbg_value(i64 9, !1718, !DIExpression(), !1745)
  %arrayidx23.9 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 9, !dbg !1746
  %18 = load ptr, ptr %arrayidx23.9, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %18) #11, !dbg !1748
    #dbg_value(i64 10, !1718, !DIExpression(), !1745)
  %arrayidx23.10 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 10, !dbg !1746
  %19 = load ptr, ptr %arrayidx23.10, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %19) #11, !dbg !1748
    #dbg_value(i64 11, !1718, !DIExpression(), !1745)
  %arrayidx23.11 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 11, !dbg !1746
  %20 = load ptr, ptr %arrayidx23.11, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %20) #11, !dbg !1748
    #dbg_value(i64 12, !1718, !DIExpression(), !1745)
  %arrayidx23.12 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 12, !dbg !1746
  %21 = load ptr, ptr %arrayidx23.12, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %21) #11, !dbg !1748
    #dbg_value(i64 13, !1718, !DIExpression(), !1745)
  %arrayidx23.13 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 13, !dbg !1746
  %22 = load ptr, ptr %arrayidx23.13, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %22) #11, !dbg !1748
    #dbg_value(i64 14, !1718, !DIExpression(), !1745)
  %arrayidx23.14 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 14, !dbg !1746
  %23 = load ptr, ptr %arrayidx23.14, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %23) #11, !dbg !1748
    #dbg_value(i64 15, !1718, !DIExpression(), !1745)
  %arrayidx23.15 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 15, !dbg !1746
  %24 = load ptr, ptr %arrayidx23.15, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %24) #11, !dbg !1748
    #dbg_value(i64 16, !1718, !DIExpression(), !1745)
  %arrayidx23.16 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 16, !dbg !1746
  %25 = load ptr, ptr %arrayidx23.16, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %25) #11, !dbg !1748
    #dbg_value(i64 17, !1718, !DIExpression(), !1745)
  %arrayidx23.17 = getelementptr inbounds [18 x [18 x ptr]], ptr %i_row_satds, i64 0, i64 %indvars.iv, i64 17, !dbg !1746
  %26 = load ptr, ptr %arrayidx23.17, align 8, !dbg !1746
  tail call void @x264_free(ptr noundef %26) #11, !dbg !1748
    #dbg_value(i64 18, !1718, !DIExpression(), !1745)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1749
    #dbg_value(i64 %indvars.iv.next, !1716, !DIExpression(), !1743)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 18, !dbg !1750
  br i1 %exitcond.not, label %for.cond31.preheader, label %for.cond16.preheader, !dbg !1744, !llvm.loop !1751

for.cond31.preheader:                             ; preds = %for.cond16.preheader
  %lowres_mvs = getelementptr inbounds i8, ptr %frame, i64 3576
  %lowres_mv_costs = getelementptr inbounds i8, ptr %frame, i64 6440
    #dbg_value(i32 0, !1721, !DIExpression(), !1753)
    #dbg_value(i64 0, !1721, !DIExpression(), !1753)
    #dbg_value(i32 0, !1723, !DIExpression(), !1754)
    #dbg_value(i64 0, !1723, !DIExpression(), !1754)
  %27 = load ptr, ptr %lowres_mvs, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %27) #11, !dbg !1758
  %28 = load ptr, ptr %lowres_mv_costs, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %28) #11, !dbg !1760
    #dbg_value(i64 1, !1723, !DIExpression(), !1754)
  %arrayidx43.1 = getelementptr inbounds i8, ptr %frame, i64 3584, !dbg !1755
  %29 = load ptr, ptr %arrayidx43.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %29) #11, !dbg !1758
  %arrayidx47.1 = getelementptr inbounds i8, ptr %frame, i64 6448, !dbg !1759
  %30 = load ptr, ptr %arrayidx47.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %30) #11, !dbg !1760
    #dbg_value(i64 2, !1723, !DIExpression(), !1754)
  %arrayidx43.2 = getelementptr inbounds i8, ptr %frame, i64 3592, !dbg !1755
  %31 = load ptr, ptr %arrayidx43.2, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %31) #11, !dbg !1758
  %arrayidx47.2 = getelementptr inbounds i8, ptr %frame, i64 6456, !dbg !1759
  %32 = load ptr, ptr %arrayidx47.2, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %32) #11, !dbg !1760
    #dbg_value(i64 3, !1723, !DIExpression(), !1754)
  %arrayidx43.3 = getelementptr inbounds i8, ptr %frame, i64 3600, !dbg !1755
  %33 = load ptr, ptr %arrayidx43.3, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %33) #11, !dbg !1758
  %arrayidx47.3 = getelementptr inbounds i8, ptr %frame, i64 6464, !dbg !1759
  %34 = load ptr, ptr %arrayidx47.3, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %34) #11, !dbg !1760
    #dbg_value(i64 4, !1723, !DIExpression(), !1754)
  %arrayidx43.4 = getelementptr inbounds i8, ptr %frame, i64 3608, !dbg !1755
  %35 = load ptr, ptr %arrayidx43.4, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %35) #11, !dbg !1758
  %arrayidx47.4 = getelementptr inbounds i8, ptr %frame, i64 6472, !dbg !1759
  %36 = load ptr, ptr %arrayidx47.4, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %36) #11, !dbg !1760
    #dbg_value(i64 5, !1723, !DIExpression(), !1754)
  %arrayidx43.5 = getelementptr inbounds i8, ptr %frame, i64 3616, !dbg !1755
  %37 = load ptr, ptr %arrayidx43.5, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %37) #11, !dbg !1758
  %arrayidx47.5 = getelementptr inbounds i8, ptr %frame, i64 6480, !dbg !1759
  %38 = load ptr, ptr %arrayidx47.5, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %38) #11, !dbg !1760
    #dbg_value(i64 6, !1723, !DIExpression(), !1754)
  %arrayidx43.6 = getelementptr inbounds i8, ptr %frame, i64 3624, !dbg !1755
  %39 = load ptr, ptr %arrayidx43.6, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %39) #11, !dbg !1758
  %arrayidx47.6 = getelementptr inbounds i8, ptr %frame, i64 6488, !dbg !1759
  %40 = load ptr, ptr %arrayidx47.6, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %40) #11, !dbg !1760
    #dbg_value(i64 7, !1723, !DIExpression(), !1754)
  %arrayidx43.7 = getelementptr inbounds i8, ptr %frame, i64 3632, !dbg !1755
  %41 = load ptr, ptr %arrayidx43.7, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %41) #11, !dbg !1758
  %arrayidx47.7 = getelementptr inbounds i8, ptr %frame, i64 6496, !dbg !1759
  %42 = load ptr, ptr %arrayidx47.7, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %42) #11, !dbg !1760
    #dbg_value(i64 8, !1723, !DIExpression(), !1754)
  %arrayidx43.8 = getelementptr inbounds i8, ptr %frame, i64 3640, !dbg !1755
  %43 = load ptr, ptr %arrayidx43.8, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %43) #11, !dbg !1758
  %arrayidx47.8 = getelementptr inbounds i8, ptr %frame, i64 6504, !dbg !1759
  %44 = load ptr, ptr %arrayidx47.8, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %44) #11, !dbg !1760
    #dbg_value(i64 9, !1723, !DIExpression(), !1754)
  %arrayidx43.9 = getelementptr inbounds i8, ptr %frame, i64 3648, !dbg !1755
  %45 = load ptr, ptr %arrayidx43.9, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %45) #11, !dbg !1758
  %arrayidx47.9 = getelementptr inbounds i8, ptr %frame, i64 6512, !dbg !1759
  %46 = load ptr, ptr %arrayidx47.9, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %46) #11, !dbg !1760
    #dbg_value(i64 10, !1723, !DIExpression(), !1754)
  %arrayidx43.10 = getelementptr inbounds i8, ptr %frame, i64 3656, !dbg !1755
  %47 = load ptr, ptr %arrayidx43.10, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %47) #11, !dbg !1758
  %arrayidx47.10 = getelementptr inbounds i8, ptr %frame, i64 6520, !dbg !1759
  %48 = load ptr, ptr %arrayidx47.10, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %48) #11, !dbg !1760
    #dbg_value(i64 11, !1723, !DIExpression(), !1754)
  %arrayidx43.11 = getelementptr inbounds i8, ptr %frame, i64 3664, !dbg !1755
  %49 = load ptr, ptr %arrayidx43.11, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %49) #11, !dbg !1758
  %arrayidx47.11 = getelementptr inbounds i8, ptr %frame, i64 6528, !dbg !1759
  %50 = load ptr, ptr %arrayidx47.11, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %50) #11, !dbg !1760
    #dbg_value(i64 12, !1723, !DIExpression(), !1754)
  %arrayidx43.12 = getelementptr inbounds i8, ptr %frame, i64 3672, !dbg !1755
  %51 = load ptr, ptr %arrayidx43.12, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %51) #11, !dbg !1758
  %arrayidx47.12 = getelementptr inbounds i8, ptr %frame, i64 6536, !dbg !1759
  %52 = load ptr, ptr %arrayidx47.12, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %52) #11, !dbg !1760
    #dbg_value(i64 13, !1723, !DIExpression(), !1754)
  %arrayidx43.13 = getelementptr inbounds i8, ptr %frame, i64 3680, !dbg !1755
  %53 = load ptr, ptr %arrayidx43.13, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %53) #11, !dbg !1758
  %arrayidx47.13 = getelementptr inbounds i8, ptr %frame, i64 6544, !dbg !1759
  %54 = load ptr, ptr %arrayidx47.13, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %54) #11, !dbg !1760
    #dbg_value(i64 14, !1723, !DIExpression(), !1754)
  %arrayidx43.14 = getelementptr inbounds i8, ptr %frame, i64 3688, !dbg !1755
  %55 = load ptr, ptr %arrayidx43.14, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %55) #11, !dbg !1758
  %arrayidx47.14 = getelementptr inbounds i8, ptr %frame, i64 6552, !dbg !1759
  %56 = load ptr, ptr %arrayidx47.14, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %56) #11, !dbg !1760
    #dbg_value(i64 15, !1723, !DIExpression(), !1754)
  %arrayidx43.15 = getelementptr inbounds i8, ptr %frame, i64 3696, !dbg !1755
  %57 = load ptr, ptr %arrayidx43.15, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %57) #11, !dbg !1758
  %arrayidx47.15 = getelementptr inbounds i8, ptr %frame, i64 6560, !dbg !1759
  %58 = load ptr, ptr %arrayidx47.15, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %58) #11, !dbg !1760
    #dbg_value(i64 16, !1723, !DIExpression(), !1754)
  %arrayidx43.16 = getelementptr inbounds i8, ptr %frame, i64 3704, !dbg !1755
  %59 = load ptr, ptr %arrayidx43.16, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %59) #11, !dbg !1758
  %arrayidx47.16 = getelementptr inbounds i8, ptr %frame, i64 6568, !dbg !1759
  %60 = load ptr, ptr %arrayidx47.16, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %60) #11, !dbg !1760
    #dbg_value(i64 17, !1723, !DIExpression(), !1754)
    #dbg_value(i64 1, !1721, !DIExpression(), !1753)
    #dbg_value(i32 0, !1723, !DIExpression(), !1754)
    #dbg_value(i64 0, !1723, !DIExpression(), !1754)
  %arrayidx43.1137 = getelementptr inbounds i8, ptr %frame, i64 3712, !dbg !1755
  %61 = load ptr, ptr %arrayidx43.1137, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %61) #11, !dbg !1758
  %arrayidx47.1138 = getelementptr inbounds i8, ptr %frame, i64 6576, !dbg !1759
  %62 = load ptr, ptr %arrayidx47.1138, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %62) #11, !dbg !1760
    #dbg_value(i64 1, !1723, !DIExpression(), !1754)
  %arrayidx43.1.1 = getelementptr inbounds i8, ptr %frame, i64 3720, !dbg !1755
  %63 = load ptr, ptr %arrayidx43.1.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %63) #11, !dbg !1758
  %arrayidx47.1.1 = getelementptr inbounds i8, ptr %frame, i64 6584, !dbg !1759
  %64 = load ptr, ptr %arrayidx47.1.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %64) #11, !dbg !1760
    #dbg_value(i64 2, !1723, !DIExpression(), !1754)
  %arrayidx43.2.1 = getelementptr inbounds i8, ptr %frame, i64 3728, !dbg !1755
  %65 = load ptr, ptr %arrayidx43.2.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %65) #11, !dbg !1758
  %arrayidx47.2.1 = getelementptr inbounds i8, ptr %frame, i64 6592, !dbg !1759
  %66 = load ptr, ptr %arrayidx47.2.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %66) #11, !dbg !1760
    #dbg_value(i64 3, !1723, !DIExpression(), !1754)
  %arrayidx43.3.1 = getelementptr inbounds i8, ptr %frame, i64 3736, !dbg !1755
  %67 = load ptr, ptr %arrayidx43.3.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %67) #11, !dbg !1758
  %arrayidx47.3.1 = getelementptr inbounds i8, ptr %frame, i64 6600, !dbg !1759
  %68 = load ptr, ptr %arrayidx47.3.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %68) #11, !dbg !1760
    #dbg_value(i64 4, !1723, !DIExpression(), !1754)
  %arrayidx43.4.1 = getelementptr inbounds i8, ptr %frame, i64 3744, !dbg !1755
  %69 = load ptr, ptr %arrayidx43.4.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %69) #11, !dbg !1758
  %arrayidx47.4.1 = getelementptr inbounds i8, ptr %frame, i64 6608, !dbg !1759
  %70 = load ptr, ptr %arrayidx47.4.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %70) #11, !dbg !1760
    #dbg_value(i64 5, !1723, !DIExpression(), !1754)
  %arrayidx43.5.1 = getelementptr inbounds i8, ptr %frame, i64 3752, !dbg !1755
  %71 = load ptr, ptr %arrayidx43.5.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %71) #11, !dbg !1758
  %arrayidx47.5.1 = getelementptr inbounds i8, ptr %frame, i64 6616, !dbg !1759
  %72 = load ptr, ptr %arrayidx47.5.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %72) #11, !dbg !1760
    #dbg_value(i64 6, !1723, !DIExpression(), !1754)
  %arrayidx43.6.1 = getelementptr inbounds i8, ptr %frame, i64 3760, !dbg !1755
  %73 = load ptr, ptr %arrayidx43.6.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %73) #11, !dbg !1758
  %arrayidx47.6.1 = getelementptr inbounds i8, ptr %frame, i64 6624, !dbg !1759
  %74 = load ptr, ptr %arrayidx47.6.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %74) #11, !dbg !1760
    #dbg_value(i64 7, !1723, !DIExpression(), !1754)
  %arrayidx43.7.1 = getelementptr inbounds i8, ptr %frame, i64 3768, !dbg !1755
  %75 = load ptr, ptr %arrayidx43.7.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %75) #11, !dbg !1758
  %arrayidx47.7.1 = getelementptr inbounds i8, ptr %frame, i64 6632, !dbg !1759
  %76 = load ptr, ptr %arrayidx47.7.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %76) #11, !dbg !1760
    #dbg_value(i64 8, !1723, !DIExpression(), !1754)
  %arrayidx43.8.1 = getelementptr inbounds i8, ptr %frame, i64 3776, !dbg !1755
  %77 = load ptr, ptr %arrayidx43.8.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %77) #11, !dbg !1758
  %arrayidx47.8.1 = getelementptr inbounds i8, ptr %frame, i64 6640, !dbg !1759
  %78 = load ptr, ptr %arrayidx47.8.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %78) #11, !dbg !1760
    #dbg_value(i64 9, !1723, !DIExpression(), !1754)
  %arrayidx43.9.1 = getelementptr inbounds i8, ptr %frame, i64 3784, !dbg !1755
  %79 = load ptr, ptr %arrayidx43.9.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %79) #11, !dbg !1758
  %arrayidx47.9.1 = getelementptr inbounds i8, ptr %frame, i64 6648, !dbg !1759
  %80 = load ptr, ptr %arrayidx47.9.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %80) #11, !dbg !1760
    #dbg_value(i64 10, !1723, !DIExpression(), !1754)
  %arrayidx43.10.1 = getelementptr inbounds i8, ptr %frame, i64 3792, !dbg !1755
  %81 = load ptr, ptr %arrayidx43.10.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %81) #11, !dbg !1758
  %arrayidx47.10.1 = getelementptr inbounds i8, ptr %frame, i64 6656, !dbg !1759
  %82 = load ptr, ptr %arrayidx47.10.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %82) #11, !dbg !1760
    #dbg_value(i64 11, !1723, !DIExpression(), !1754)
  %arrayidx43.11.1 = getelementptr inbounds i8, ptr %frame, i64 3800, !dbg !1755
  %83 = load ptr, ptr %arrayidx43.11.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %83) #11, !dbg !1758
  %arrayidx47.11.1 = getelementptr inbounds i8, ptr %frame, i64 6664, !dbg !1759
  %84 = load ptr, ptr %arrayidx47.11.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %84) #11, !dbg !1760
    #dbg_value(i64 12, !1723, !DIExpression(), !1754)
  %arrayidx43.12.1 = getelementptr inbounds i8, ptr %frame, i64 3808, !dbg !1755
  %85 = load ptr, ptr %arrayidx43.12.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %85) #11, !dbg !1758
  %arrayidx47.12.1 = getelementptr inbounds i8, ptr %frame, i64 6672, !dbg !1759
  %86 = load ptr, ptr %arrayidx47.12.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %86) #11, !dbg !1760
    #dbg_value(i64 13, !1723, !DIExpression(), !1754)
  %arrayidx43.13.1 = getelementptr inbounds i8, ptr %frame, i64 3816, !dbg !1755
  %87 = load ptr, ptr %arrayidx43.13.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %87) #11, !dbg !1758
  %arrayidx47.13.1 = getelementptr inbounds i8, ptr %frame, i64 6680, !dbg !1759
  %88 = load ptr, ptr %arrayidx47.13.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %88) #11, !dbg !1760
    #dbg_value(i64 14, !1723, !DIExpression(), !1754)
  %arrayidx43.14.1 = getelementptr inbounds i8, ptr %frame, i64 3824, !dbg !1755
  %89 = load ptr, ptr %arrayidx43.14.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %89) #11, !dbg !1758
  %arrayidx47.14.1 = getelementptr inbounds i8, ptr %frame, i64 6688, !dbg !1759
  %90 = load ptr, ptr %arrayidx47.14.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %90) #11, !dbg !1760
    #dbg_value(i64 15, !1723, !DIExpression(), !1754)
  %arrayidx43.15.1 = getelementptr inbounds i8, ptr %frame, i64 3832, !dbg !1755
  %91 = load ptr, ptr %arrayidx43.15.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %91) #11, !dbg !1758
  %arrayidx47.15.1 = getelementptr inbounds i8, ptr %frame, i64 6696, !dbg !1759
  %92 = load ptr, ptr %arrayidx47.15.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %92) #11, !dbg !1760
    #dbg_value(i64 16, !1723, !DIExpression(), !1754)
  %arrayidx43.16.1 = getelementptr inbounds i8, ptr %frame, i64 3840, !dbg !1755
  %93 = load ptr, ptr %arrayidx43.16.1, align 8, !dbg !1755
  tail call void @x264_free(ptr noundef %93) #11, !dbg !1758
  %arrayidx47.16.1 = getelementptr inbounds i8, ptr %frame, i64 6704, !dbg !1759
  %94 = load ptr, ptr %arrayidx47.16.1, align 8, !dbg !1759
  tail call void @x264_free(ptr noundef %94) #11, !dbg !1760
    #dbg_value(i64 17, !1723, !DIExpression(), !1754)
    #dbg_value(i64 2, !1721, !DIExpression(), !1753)
  %i_propagate_cost = getelementptr inbounds i8, ptr %frame, i64 12184, !dbg !1761
  %95 = load ptr, ptr %i_propagate_cost, align 8, !dbg !1761
  tail call void @x264_free(ptr noundef %95) #11, !dbg !1762
    #dbg_value(i32 0, !1726, !DIExpression(), !1763)
  %lowres_costs = getelementptr inbounds i8, ptr %frame, i64 3848
  br label %for.cond60.preheader, !dbg !1764

for.cond60.preheader:                             ; preds = %for.cond31.preheader, %for.cond60.preheader
  %indvars.iv143 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next144, %for.cond60.preheader ]
    #dbg_value(i64 %indvars.iv143, !1726, !DIExpression(), !1763)
    #dbg_value(i32 0, !1728, !DIExpression(), !1765)
    #dbg_value(i64 0, !1728, !DIExpression(), !1765)
  %arrayidx67 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 0, !dbg !1766
  %96 = load ptr, ptr %arrayidx67, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %96) #11, !dbg !1768
    #dbg_value(i64 1, !1728, !DIExpression(), !1765)
  %arrayidx67.1 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 1, !dbg !1766
  %97 = load ptr, ptr %arrayidx67.1, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %97) #11, !dbg !1768
    #dbg_value(i64 2, !1728, !DIExpression(), !1765)
  %arrayidx67.2 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 2, !dbg !1766
  %98 = load ptr, ptr %arrayidx67.2, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %98) #11, !dbg !1768
    #dbg_value(i64 3, !1728, !DIExpression(), !1765)
  %arrayidx67.3 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 3, !dbg !1766
  %99 = load ptr, ptr %arrayidx67.3, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %99) #11, !dbg !1768
    #dbg_value(i64 4, !1728, !DIExpression(), !1765)
  %arrayidx67.4 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 4, !dbg !1766
  %100 = load ptr, ptr %arrayidx67.4, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %100) #11, !dbg !1768
    #dbg_value(i64 5, !1728, !DIExpression(), !1765)
  %arrayidx67.5 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 5, !dbg !1766
  %101 = load ptr, ptr %arrayidx67.5, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %101) #11, !dbg !1768
    #dbg_value(i64 6, !1728, !DIExpression(), !1765)
  %arrayidx67.6 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 6, !dbg !1766
  %102 = load ptr, ptr %arrayidx67.6, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %102) #11, !dbg !1768
    #dbg_value(i64 7, !1728, !DIExpression(), !1765)
  %arrayidx67.7 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 7, !dbg !1766
  %103 = load ptr, ptr %arrayidx67.7, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %103) #11, !dbg !1768
    #dbg_value(i64 8, !1728, !DIExpression(), !1765)
  %arrayidx67.8 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 8, !dbg !1766
  %104 = load ptr, ptr %arrayidx67.8, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %104) #11, !dbg !1768
    #dbg_value(i64 9, !1728, !DIExpression(), !1765)
  %arrayidx67.9 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 9, !dbg !1766
  %105 = load ptr, ptr %arrayidx67.9, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %105) #11, !dbg !1768
    #dbg_value(i64 10, !1728, !DIExpression(), !1765)
  %arrayidx67.10 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 10, !dbg !1766
  %106 = load ptr, ptr %arrayidx67.10, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %106) #11, !dbg !1768
    #dbg_value(i64 11, !1728, !DIExpression(), !1765)
  %arrayidx67.11 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 11, !dbg !1766
  %107 = load ptr, ptr %arrayidx67.11, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %107) #11, !dbg !1768
    #dbg_value(i64 12, !1728, !DIExpression(), !1765)
  %arrayidx67.12 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 12, !dbg !1766
  %108 = load ptr, ptr %arrayidx67.12, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %108) #11, !dbg !1768
    #dbg_value(i64 13, !1728, !DIExpression(), !1765)
  %arrayidx67.13 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 13, !dbg !1766
  %109 = load ptr, ptr %arrayidx67.13, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %109) #11, !dbg !1768
    #dbg_value(i64 14, !1728, !DIExpression(), !1765)
  %arrayidx67.14 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 14, !dbg !1766
  %110 = load ptr, ptr %arrayidx67.14, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %110) #11, !dbg !1768
    #dbg_value(i64 15, !1728, !DIExpression(), !1765)
  %arrayidx67.15 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 15, !dbg !1766
  %111 = load ptr, ptr %arrayidx67.15, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %111) #11, !dbg !1768
    #dbg_value(i64 16, !1728, !DIExpression(), !1765)
  %arrayidx67.16 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 16, !dbg !1766
  %112 = load ptr, ptr %arrayidx67.16, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %112) #11, !dbg !1768
    #dbg_value(i64 17, !1728, !DIExpression(), !1765)
  %arrayidx67.17 = getelementptr inbounds [18 x [18 x ptr]], ptr %lowres_costs, i64 0, i64 %indvars.iv143, i64 17, !dbg !1766
  %113 = load ptr, ptr %arrayidx67.17, align 8, !dbg !1766
  tail call void @x264_free(ptr noundef %113) #11, !dbg !1768
    #dbg_value(i64 18, !1728, !DIExpression(), !1765)
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1, !dbg !1769
    #dbg_value(i64 %indvars.iv.next144, !1726, !DIExpression(), !1763)
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 18, !dbg !1770
  br i1 %exitcond146.not, label %for.cond.cleanup57, label %for.cond60.preheader, !dbg !1764, !llvm.loop !1771

for.cond.cleanup57:                               ; preds = %for.cond60.preheader
  %f_qp_offset = getelementptr inbounds i8, ptr %frame, i64 12152, !dbg !1773
  %114 = load ptr, ptr %f_qp_offset, align 8, !dbg !1773
  tail call void @x264_free(ptr noundef %114) #11, !dbg !1774
  %f_qp_offset_aq = getelementptr inbounds i8, ptr %frame, i64 12160, !dbg !1775
  %115 = load ptr, ptr %f_qp_offset_aq, align 16, !dbg !1775
  tail call void @x264_free(ptr noundef %115) #11, !dbg !1776
  %i_inv_qscale_factor = getelementptr inbounds i8, ptr %frame, i64 12192, !dbg !1777
  %116 = load ptr, ptr %i_inv_qscale_factor, align 16, !dbg !1777
  tail call void @x264_free(ptr noundef %116) #11, !dbg !1778
  %i_row_bits = getelementptr inbounds i8, ptr %frame, i64 12136, !dbg !1779
  %117 = load ptr, ptr %i_row_bits, align 8, !dbg !1779
  tail call void @x264_free(ptr noundef %117) #11, !dbg !1780
  %f_row_qp = getelementptr inbounds i8, ptr %frame, i64 12144, !dbg !1781
  %118 = load ptr, ptr %f_row_qp, align 16, !dbg !1781
  tail call void @x264_free(ptr noundef %118) #11, !dbg !1782
  %mb_type = getelementptr inbounds i8, ptr %frame, i64 3536, !dbg !1783
  %119 = load ptr, ptr %mb_type, align 16, !dbg !1783
  tail call void @x264_free(ptr noundef %119) #11, !dbg !1784
  %mb_partition = getelementptr inbounds i8, ptr %frame, i64 3544, !dbg !1785
  %120 = load ptr, ptr %mb_partition, align 8, !dbg !1785
  tail call void @x264_free(ptr noundef %120) #11, !dbg !1786
  %mv = getelementptr inbounds i8, ptr %frame, i64 3552, !dbg !1787
  %121 = load ptr, ptr %mv, align 16, !dbg !1788
  tail call void @x264_free(ptr noundef %121) #11, !dbg !1789
  %arrayidx76 = getelementptr inbounds i8, ptr %frame, i64 3560, !dbg !1790
  %122 = load ptr, ptr %arrayidx76, align 8, !dbg !1790
  tail call void @x264_free(ptr noundef %122) #11, !dbg !1791
  %mv16x16 = getelementptr inbounds i8, ptr %frame, i64 3568, !dbg !1792
  %123 = load ptr, ptr %mv16x16, align 16, !dbg !1792
  tail call void @x264_free(ptr noundef %123) #11, !dbg !1793
  %ref = getelementptr inbounds i8, ptr %frame, i64 6712, !dbg !1794
  %124 = load ptr, ptr %ref, align 8, !dbg !1795
  tail call void @x264_free(ptr noundef %124) #11, !dbg !1796
  %arrayidx79 = getelementptr inbounds i8, ptr %frame, i64 6720, !dbg !1797
  %125 = load ptr, ptr %arrayidx79, align 8, !dbg !1797
  tail call void @x264_free(ptr noundef %125) #11, !dbg !1798
  br label %if.end, !dbg !1799

if.end:                                           ; preds = %for.cond.cleanup57, %entry
  tail call void @x264_free(ptr noundef nonnull %frame) #11, !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_frame_copy_picture(ptr noundef %h, ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #0 !dbg !1802 {
entry:
    #dbg_value(ptr %h, !1827, !DIExpression(), !1840)
    #dbg_value(ptr %dst, !1828, !DIExpression(), !1840)
    #dbg_value(ptr %src, !1829, !DIExpression(), !1840)
  %img = getelementptr inbounds i8, ptr %src, i64 40, !dbg !1841
  %0 = load i32, ptr %img, align 8, !dbg !1842
    #dbg_value(i32 %0, !1830, !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value), !1840)
  %.fr = freeze i32 %0, !dbg !1843
  %trunc = trunc i32 %.fr to i8, !dbg !1844
  switch i8 %trunc, label %if.then [
    i8 4, label %if.end
    i8 1, label %if.end
  ], !dbg !1844

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str) #11, !dbg !1846
  br label %cleanup48, !dbg !1848

if.end:                                           ; preds = %entry, %entry
  %and = and i32 %.fr, 255, !dbg !1843
  %1 = load i32, ptr %src, align 8, !dbg !1849
  %i_type3 = getelementptr inbounds i8, ptr %dst, i64 4, !dbg !1850
  store i32 %1, ptr %i_type3, align 4, !dbg !1851
  %i_qpplus1 = getelementptr inbounds i8, ptr %src, i64 4, !dbg !1852
  %2 = load i32, ptr %i_qpplus1, align 4, !dbg !1852
  %i_qpplus14 = getelementptr inbounds i8, ptr %dst, i64 8, !dbg !1853
  store i32 %2, ptr %i_qpplus14, align 8, !dbg !1854
  %i_pts = getelementptr inbounds i8, ptr %src, i64 16, !dbg !1855
  %3 = load i64, ptr %i_pts, align 8, !dbg !1855
  %i_reordered_pts = getelementptr inbounds i8, ptr %dst, i64 24, !dbg !1856
  store i64 %3, ptr %i_reordered_pts, align 8, !dbg !1857
  %i_pts5 = getelementptr inbounds i8, ptr %dst, i64 16, !dbg !1858
  store i64 %3, ptr %i_pts5, align 16, !dbg !1859
  %param = getelementptr inbounds i8, ptr %src, i64 32, !dbg !1860
  %4 = load ptr, ptr %param, align 8, !dbg !1860
  %param6 = getelementptr inbounds i8, ptr %dst, i64 48, !dbg !1861
  store ptr %4, ptr %param6, align 16, !dbg !1862
  %i_pic_struct = getelementptr inbounds i8, ptr %src, i64 8, !dbg !1863
  %5 = load i32, ptr %i_pic_struct, align 8, !dbg !1863
  %i_pic_struct7 = getelementptr inbounds i8, ptr %dst, i64 76, !dbg !1864
  store i32 %5, ptr %i_pic_struct7, align 4, !dbg !1865
    #dbg_value(i32 0, !1831, !DIExpression(), !1866)
  %cmp9 = icmp eq i32 %and, 4
  %i_stride = getelementptr inbounds i8, ptr %src, i64 48
  %i_width = getelementptr inbounds i8, ptr %h, i64 20
    #dbg_value(i32 0, !1831, !DIExpression(), !1866)
  %plane12 = getelementptr inbounds i8, ptr %src, i64 64
  %i_height = getelementptr inbounds i8, ptr %h, i64 24
  %plane_copy = getelementptr inbounds i8, ptr %h, i64 32784
  %plane36 = getelementptr inbounds i8, ptr %dst, i64 152
  %i_stride39 = getelementptr inbounds i8, ptr %dst, i64 104
  %6 = load i32, ptr %i_stride, align 4, !dbg !1867
  %7 = load i32, ptr %i_width, align 4, !dbg !1868
  %8 = tail call i32 @llvm.abs.i32(i32 %6, i1 true), !dbg !1869
  %cmp33.not = icmp sgt i32 %7, %8, !dbg !1871
  br i1 %cmp9, label %for.body.preheader, label %if.end.split.us

for.body.preheader:                               ; preds = %if.end
    #dbg_value(i64 0, !1831, !DIExpression(), !1866)
    #dbg_value(i32 0, !1833, !DIExpression(), !1872)
    #dbg_value(ptr poison, !1836, !DIExpression(), !1872)
    #dbg_value(i32 %6, !1837, !DIExpression(), !1872)
    #dbg_value(i32 %7, !1838, !DIExpression(), !1872)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 poison, !1837, !DIExpression(), !1872)
  br i1 %cmp33.not, label %cleanup.thread, label %for.inc, !dbg !1873

if.end.split.us:                                  ; preds = %if.end
    #dbg_value(i32 0, !1831, !DIExpression(), !1866)
  br i1 %cmp33.not, label %cleanup.thread, label %for.inc.us.preheader, !dbg !1873

for.inc.us.preheader:                             ; preds = %if.end.split.us
    #dbg_value(i64 0, !1831, !DIExpression(), !1866)
  %9 = load i32, ptr %img, align 8, !dbg !1874
  %and28.us = and i32 %9, 4096, !dbg !1876
  %tobool29.not.us = icmp eq i32 %and28.us, 0, !dbg !1876
  %sub31.us = sub nsw i32 0, %6, !dbg !1877
  %stride.0.us = select i1 %tobool29.not.us, i32 %6, i32 %sub31.us, !dbg !1877
    #dbg_value(i32 %stride.0.us, !1837, !DIExpression(), !1872)
  %10 = load ptr, ptr %plane12, align 8, !dbg !1878
    #dbg_value(ptr %10, !1836, !DIExpression(), !1872)
  %11 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(!DIArgList(i32 %11, i32 0), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 %11, !1839, !DIExpression(), !1872)
  %sub.us = add nsw i32 %11, -1, !dbg !1877
  %mul.us = mul nsw i32 %sub.us, %6, !dbg !1877
  %narrow.us = select i1 %tobool29.not.us, i32 0, i32 %mul.us, !dbg !1877
  %plane.0.idx.us = sext i32 %narrow.us to i64, !dbg !1877
  %plane.0.us = getelementptr inbounds i8, ptr %10, i64 %plane.0.idx.us, !dbg !1877
    #dbg_value(ptr %plane.0.us, !1836, !DIExpression(), !1872)
  %12 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %13 = load ptr, ptr %plane36, align 8, !dbg !1881
  %14 = load i32, ptr %i_stride39, align 4, !dbg !1882
  tail call void %12(ptr noundef %13, i32 noundef %14, ptr noundef %plane.0.us, i32 noundef %stride.0.us, i32 noundef %7, i32 noundef %11) #11, !dbg !1883
    #dbg_value(i64 0, !1831, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1866)
    #dbg_value(i64 1, !1831, !DIExpression(), !1866)
    #dbg_value(i32 poison, !1833, !DIExpression(), !1872)
    #dbg_value(ptr poison, !1836, !DIExpression(), !1872)
  %arrayidx15.us = getelementptr inbounds i8, ptr %src, i64 52, !dbg !1867
  %15 = load i32, ptr %arrayidx15.us, align 4, !dbg !1867
    #dbg_value(i32 %15, !1837, !DIExpression(), !1872)
  %16 = load i32, ptr %i_width, align 4, !dbg !1868
  %shr.us = ashr i32 %16, 1, !dbg !1884
    #dbg_value(i32 %shr.us, !1838, !DIExpression(), !1872)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 poison, !1837, !DIExpression(), !1872)
  %17 = tail call i32 @llvm.abs.i32(i32 %15, i1 true), !dbg !1869
  %cmp33.not.us = icmp sgt i32 %shr.us, %17, !dbg !1871
  br i1 %cmp33.not.us, label %cleanup.thread, label %for.inc.us.1, !dbg !1873, !llvm.loop !1885

for.inc.us.1:                                     ; preds = %for.inc.us.preheader
    #dbg_value(i64 1, !1831, !DIExpression(), !1866)
  %18 = load i32, ptr %img, align 8, !dbg !1874
  %and28.us.1 = and i32 %18, 4096, !dbg !1876
  %tobool29.not.us.1 = icmp eq i32 %and28.us.1, 0, !dbg !1876
  %sub31.us.1 = sub nsw i32 0, %15, !dbg !1877
  %stride.0.us.1 = select i1 %tobool29.not.us.1, i32 %15, i32 %sub31.us.1, !dbg !1877
    #dbg_value(i32 %stride.0.us.1, !1837, !DIExpression(), !1872)
  %arrayidx.us.1 = getelementptr inbounds i8, ptr %src, i64 72, !dbg !1878
  %19 = load ptr, ptr %arrayidx.us.1, align 8, !dbg !1878
    #dbg_value(ptr %19, !1836, !DIExpression(), !1872)
  %20 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(!DIArgList(i32 %20, i32 1), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
  %shr25.us.1 = ashr i32 %20, 1, !dbg !1888
    #dbg_value(i32 %shr25.us.1, !1839, !DIExpression(), !1872)
  %sub.us.1 = add nsw i32 %shr25.us.1, -1, !dbg !1877
  %mul.us.1 = mul nsw i32 %sub.us.1, %15, !dbg !1877
  %narrow.us.1 = select i1 %tobool29.not.us.1, i32 0, i32 %mul.us.1, !dbg !1877
  %plane.0.idx.us.1 = sext i32 %narrow.us.1 to i64, !dbg !1877
  %plane.0.us.1 = getelementptr inbounds i8, ptr %19, i64 %plane.0.idx.us.1, !dbg !1877
    #dbg_value(ptr %plane.0.us.1, !1836, !DIExpression(), !1872)
  %21 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %arrayidx38.us.1 = getelementptr inbounds i8, ptr %dst, i64 160, !dbg !1881
  %22 = load ptr, ptr %arrayidx38.us.1, align 8, !dbg !1881
  %arrayidx41.us.1 = getelementptr inbounds i8, ptr %dst, i64 108, !dbg !1882
  %23 = load i32, ptr %arrayidx41.us.1, align 4, !dbg !1882
  tail call void %21(ptr noundef %22, i32 noundef %23, ptr noundef %plane.0.us.1, i32 noundef %stride.0.us.1, i32 noundef %shr.us, i32 noundef %shr25.us.1) #11, !dbg !1883
    #dbg_value(i64 1, !1831, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1866)
    #dbg_value(i64 2, !1831, !DIExpression(), !1866)
    #dbg_value(i32 poison, !1833, !DIExpression(), !1872)
    #dbg_value(ptr poison, !1836, !DIExpression(), !1872)
  %arrayidx15.us.1 = getelementptr inbounds i8, ptr %src, i64 56, !dbg !1867
  %24 = load i32, ptr %arrayidx15.us.1, align 4, !dbg !1867
    #dbg_value(i32 %24, !1837, !DIExpression(), !1872)
  %25 = load i32, ptr %i_width, align 4, !dbg !1868
  %shr.us.1 = ashr i32 %25, 1, !dbg !1884
    #dbg_value(i32 %shr.us.1, !1838, !DIExpression(), !1872)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 poison, !1837, !DIExpression(), !1872)
  %26 = tail call i32 @llvm.abs.i32(i32 %24, i1 true), !dbg !1869
  %cmp33.not.us.1 = icmp sgt i32 %shr.us.1, %26, !dbg !1871
  br i1 %cmp33.not.us.1, label %cleanup.thread, label %cleanup46.loopexit100, !dbg !1873, !llvm.loop !1885

cleanup.thread:                                   ; preds = %for.inc.us.preheader, %for.inc.us.1, %for.body.preheader, %for.inc, %for.inc.1, %if.end.split.us
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1) #11, !dbg !1889
  br label %cleanup48

for.inc:                                          ; preds = %for.body.preheader
  %27 = load i32, ptr %img, align 8, !dbg !1874
  %and28 = and i32 %27, 4096, !dbg !1876
  %tobool29.not = icmp eq i32 %and28, 0, !dbg !1876
  %sub31 = sub nsw i32 0, %6, !dbg !1877
  %stride.0 = select i1 %tobool29.not, i32 %6, i32 %sub31, !dbg !1877
    #dbg_value(i32 %stride.0, !1837, !DIExpression(), !1872)
  %28 = load ptr, ptr %plane12, align 8, !dbg !1878
    #dbg_value(ptr %28, !1836, !DIExpression(), !1872)
  %29 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(i32 %29, !1839, !DIExpression(), !1872)
  %sub = add nsw i32 %29, -1, !dbg !1877
  %mul = mul nsw i32 %sub, %6, !dbg !1877
  %narrow = select i1 %tobool29.not, i32 0, i32 %mul, !dbg !1877
  %plane.0.idx = sext i32 %narrow to i64, !dbg !1877
  %plane.0 = getelementptr inbounds i8, ptr %28, i64 %plane.0.idx, !dbg !1877
    #dbg_value(ptr %plane.0, !1836, !DIExpression(), !1872)
  %30 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %31 = load ptr, ptr %plane36, align 8, !dbg !1881
  %32 = load i32, ptr %i_stride39, align 4, !dbg !1882
  tail call void %30(ptr noundef %31, i32 noundef %32, ptr noundef %plane.0, i32 noundef %stride.0, i32 noundef %7, i32 noundef %29) #11, !dbg !1883
    #dbg_value(i64 1, !1831, !DIExpression(), !1866)
    #dbg_value(i32 2, !1833, !DIExpression(), !1872)
    #dbg_value(ptr poison, !1836, !DIExpression(), !1872)
  %arrayidx15.1 = getelementptr inbounds i8, ptr %src, i64 56, !dbg !1867
  %33 = load i32, ptr %arrayidx15.1, align 4, !dbg !1867
    #dbg_value(i32 %33, !1837, !DIExpression(), !1872)
  %34 = load i32, ptr %i_width, align 4, !dbg !1868
  %shr.1 = ashr i32 %34, 1, !dbg !1884
    #dbg_value(i32 %shr.1, !1838, !DIExpression(), !1872)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 poison, !1837, !DIExpression(), !1872)
  %35 = tail call i32 @llvm.abs.i32(i32 %33, i1 true), !dbg !1869
  %cmp33.not.1 = icmp sgt i32 %shr.1, %35, !dbg !1871
  br i1 %cmp33.not.1, label %cleanup.thread, label %for.inc.1, !dbg !1873

for.inc.1:                                        ; preds = %for.inc
  %36 = load i32, ptr %img, align 8, !dbg !1874
  %and28.1 = and i32 %36, 4096, !dbg !1876
  %tobool29.not.1 = icmp eq i32 %and28.1, 0, !dbg !1876
  %sub31.1 = sub nsw i32 0, %33, !dbg !1877
  %stride.0.1 = select i1 %tobool29.not.1, i32 %33, i32 %sub31.1, !dbg !1877
    #dbg_value(i32 %stride.0.1, !1837, !DIExpression(), !1872)
  %arrayidx.1 = getelementptr inbounds i8, ptr %src, i64 80, !dbg !1878
  %37 = load ptr, ptr %arrayidx.1, align 8, !dbg !1878
    #dbg_value(ptr %37, !1836, !DIExpression(), !1872)
  %38 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(!DIArgList(i32 %38, i32 1), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
  %shr25.1 = ashr i32 %38, 1, !dbg !1888
    #dbg_value(i32 %shr25.1, !1839, !DIExpression(), !1872)
  %sub.1 = add nsw i32 %shr25.1, -1, !dbg !1877
  %mul.1 = mul nsw i32 %sub.1, %33, !dbg !1877
  %narrow.1 = select i1 %tobool29.not.1, i32 0, i32 %mul.1, !dbg !1877
  %plane.0.idx.1 = sext i32 %narrow.1 to i64, !dbg !1877
  %plane.0.1 = getelementptr inbounds i8, ptr %37, i64 %plane.0.idx.1, !dbg !1877
    #dbg_value(ptr %plane.0.1, !1836, !DIExpression(), !1872)
  %39 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %arrayidx38.1 = getelementptr inbounds i8, ptr %dst, i64 160, !dbg !1881
  %40 = load ptr, ptr %arrayidx38.1, align 8, !dbg !1881
  %arrayidx41.1 = getelementptr inbounds i8, ptr %dst, i64 108, !dbg !1882
  %41 = load i32, ptr %arrayidx41.1, align 4, !dbg !1882
  tail call void %39(ptr noundef %40, i32 noundef %41, ptr noundef %plane.0.1, i32 noundef %stride.0.1, i32 noundef %shr.1, i32 noundef %shr25.1) #11, !dbg !1883
    #dbg_value(i64 2, !1831, !DIExpression(), !1866)
    #dbg_value(i32 1, !1833, !DIExpression(), !1872)
    #dbg_value(ptr poison, !1836, !DIExpression(), !1872)
  %arrayidx15.2 = getelementptr inbounds i8, ptr %src, i64 52, !dbg !1867
  %42 = load i32, ptr %arrayidx15.2, align 4, !dbg !1867
    #dbg_value(i32 %42, !1837, !DIExpression(), !1872)
  %43 = load i32, ptr %i_width, align 4, !dbg !1868
  %shr.2 = ashr i32 %43, 1, !dbg !1884
    #dbg_value(i32 %shr.2, !1838, !DIExpression(), !1872)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
    #dbg_value(i32 poison, !1837, !DIExpression(), !1872)
  %44 = tail call i32 @llvm.abs.i32(i32 %42, i1 true), !dbg !1869
  %cmp33.not.2 = icmp sgt i32 %shr.2, %44, !dbg !1871
  br i1 %cmp33.not.2, label %cleanup.thread, label %for.inc.2, !dbg !1873

for.inc.2:                                        ; preds = %for.inc.1
  %45 = load i32, ptr %img, align 8, !dbg !1874
  %and28.2 = and i32 %45, 4096, !dbg !1876
  %tobool29.not.2 = icmp eq i32 %and28.2, 0, !dbg !1876
  %sub31.2 = sub nsw i32 0, %42, !dbg !1877
  %stride.0.2 = select i1 %tobool29.not.2, i32 %42, i32 %sub31.2, !dbg !1877
    #dbg_value(i32 %stride.0.2, !1837, !DIExpression(), !1872)
  %arrayidx.2 = getelementptr inbounds i8, ptr %src, i64 72, !dbg !1878
  %46 = load ptr, ptr %arrayidx.2, align 8, !dbg !1878
    #dbg_value(ptr %46, !1836, !DIExpression(), !1872)
  %47 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(!DIArgList(i32 %47, i32 1), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
  %shr25.2 = ashr i32 %47, 1, !dbg !1888
    #dbg_value(i32 %shr25.2, !1839, !DIExpression(), !1872)
  %sub.2 = add nsw i32 %shr25.2, -1, !dbg !1877
  %mul.2 = mul nsw i32 %sub.2, %42, !dbg !1877
  %narrow.2 = select i1 %tobool29.not.2, i32 0, i32 %mul.2, !dbg !1877
  %plane.0.idx.2 = sext i32 %narrow.2 to i64, !dbg !1877
  %plane.0.2 = getelementptr inbounds i8, ptr %46, i64 %plane.0.idx.2, !dbg !1877
    #dbg_value(ptr %plane.0.2, !1836, !DIExpression(), !1872)
  %48 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %arrayidx38.2 = getelementptr inbounds i8, ptr %dst, i64 168, !dbg !1881
  %49 = load ptr, ptr %arrayidx38.2, align 8, !dbg !1881
  %arrayidx41.2 = getelementptr inbounds i8, ptr %dst, i64 112, !dbg !1882
  %50 = load i32, ptr %arrayidx41.2, align 4, !dbg !1882
  tail call void %48(ptr noundef %49, i32 noundef %50, ptr noundef %plane.0.2, i32 noundef %stride.0.2, i32 noundef %shr.2, i32 noundef %shr25.2) #11, !dbg !1883
    #dbg_value(i64 3, !1831, !DIExpression(), !1866)
  br label %cleanup48

cleanup46.loopexit100:                            ; preds = %for.inc.us.1
    #dbg_value(i64 2, !1831, !DIExpression(), !1866)
  %51 = load i32, ptr %img, align 8, !dbg !1874
  %and28.us.2 = and i32 %51, 4096, !dbg !1876
  %tobool29.not.us.2 = icmp eq i32 %and28.us.2, 0, !dbg !1876
  %sub31.us.2 = sub nsw i32 0, %24, !dbg !1877
  %stride.0.us.2 = select i1 %tobool29.not.us.2, i32 %24, i32 %sub31.us.2, !dbg !1877
    #dbg_value(i32 %stride.0.us.2, !1837, !DIExpression(), !1872)
  %arrayidx.us.2 = getelementptr inbounds i8, ptr %src, i64 80, !dbg !1878
  %52 = load ptr, ptr %arrayidx.us.2, align 8, !dbg !1878
    #dbg_value(ptr %52, !1836, !DIExpression(), !1872)
  %53 = load i32, ptr %i_height, align 8, !dbg !1879
    #dbg_value(!DIArgList(i32 %53, i32 1), !1839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !1872)
  %shr25.us.2 = ashr i32 %53, 1, !dbg !1888
    #dbg_value(i32 %shr25.us.2, !1839, !DIExpression(), !1872)
  %sub.us.2 = add nsw i32 %shr25.us.2, -1, !dbg !1877
  %mul.us.2 = mul nsw i32 %sub.us.2, %24, !dbg !1877
  %narrow.us.2 = select i1 %tobool29.not.us.2, i32 0, i32 %mul.us.2, !dbg !1877
  %plane.0.idx.us.2 = sext i32 %narrow.us.2 to i64, !dbg !1877
  %plane.0.us.2 = getelementptr inbounds i8, ptr %52, i64 %plane.0.idx.us.2, !dbg !1877
    #dbg_value(ptr %plane.0.us.2, !1836, !DIExpression(), !1872)
  %54 = load ptr, ptr %plane_copy, align 8, !dbg !1880
  %arrayidx38.us.2 = getelementptr inbounds i8, ptr %dst, i64 168, !dbg !1881
  %55 = load ptr, ptr %arrayidx38.us.2, align 8, !dbg !1881
  %arrayidx41.us.2 = getelementptr inbounds i8, ptr %dst, i64 112, !dbg !1882
  %56 = load i32, ptr %arrayidx41.us.2, align 4, !dbg !1882
  tail call void %54(ptr noundef %55, i32 noundef %56, ptr noundef %plane.0.us.2, i32 noundef %stride.0.us.2, i32 noundef %shr.us.1, i32 noundef %shr25.us.2) #11, !dbg !1883
    #dbg_value(i64 2, !1831, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1866)
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup.thread, %for.inc.2, %cleanup46.loopexit100, %if.then
  %retval.3 = phi i32 [ -1, %if.then ], [ -1, %cleanup.thread ], [ 0, %for.inc.2 ], [ 0, %cleanup46.loopexit100 ], !dbg !1840
  ret i32 %retval.3, !dbg !1891
}

declare !dbg !1892 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 !dbg !1895 {
entry:
    #dbg_value(ptr %h, !1899, !DIExpression(), !1914)
    #dbg_value(ptr %frame, !1900, !DIExpression(), !1914)
    #dbg_value(i32 %mb_y, !1901, !DIExpression(), !1914)
    #dbg_value(i32 %b_end, !1902, !DIExpression(), !1914)
  %tobool.not = icmp eq i32 %mb_y, 0, !dbg !1915
    #dbg_value(i1 %tobool.not, !1903, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1914)
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !1916
  %0 = load i32, ptr %b_mbaff, align 4, !dbg !1916
  %and = and i32 %0, %mb_y, !dbg !1918
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1918
  br i1 %tobool1.not, label %for.cond.preheader, label %cleanup, !dbg !1919

for.cond.preheader:                               ; preds = %entry
  %i_plane = getelementptr inbounds i8, ptr %frame, i64 100
    #dbg_value(i32 0, !1904, !DIExpression(), !1920)
  %1 = load i32, ptr %i_plane, align 4, !dbg !1921
  %cmp227 = icmp sgt i32 %1, 0, !dbg !1922
  br i1 %cmp227, label %for.body.lr.ph, label %cleanup, !dbg !1923

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %tobool7.not = icmp eq i32 %b_end, 0
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %mul33 = shl nsw i32 %mb_y, 4
  %sub34 = add nsw i32 %mul33, -4
  %or.cond = or i1 %tobool.not, %tobool7.not
  br label %for.body, !dbg !1923

for.body:                                         ; preds = %for.body.lr.ph, %if.end77
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end77 ]
    #dbg_value(i64 %indvars.iv, !1904, !DIExpression(), !1920)
  %arrayidx = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv, !dbg !1924
  %2 = load i32, ptr %arrayidx, align 4, !dbg !1924
    #dbg_value(i32 %2, !1906, !DIExpression(), !1925)
  %3 = load ptr, ptr %sps, align 16, !dbg !1926
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084, !dbg !1927
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !1927
  %mul = shl nsw i32 %4, 4, !dbg !1928
  %tobool2 = icmp ne i64 %indvars.iv, 0, !dbg !1929
  %lnot.ext6 = zext i1 %tobool2 to i32, !dbg !1930
  %shr = ashr exact i32 %mul, %lnot.ext6, !dbg !1931
    #dbg_value(i32 %shr, !1909, !DIExpression(), !1925)
  br i1 %tobool7.not, label %cond.end, label %cond.true, !dbg !1932

cond.true:                                        ; preds = %for.body
  %i_mb_height = getelementptr inbounds i8, ptr %3, i64 1088, !dbg !1933
  %5 = load i32, ptr %i_mb_height, align 4, !dbg !1933
  %sub = sub nsw i32 %5, %mb_y, !dbg !1934
  %mul9 = shl nsw i32 %sub, 4, !dbg !1935
  %6 = load i32, ptr %b_mbaff, align 4, !dbg !1936
  %shr12 = ashr i32 %mul9, %6, !dbg !1937
  br label %cond.end, !dbg !1932

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %shr12, %cond.true ], [ 16, %for.body ], !dbg !1932
  %shr18 = ashr i32 %cond, %lnot.ext6, !dbg !1938
    #dbg_value(i32 %shr18, !1910, !DIExpression(), !1925)
  %shr24 = lshr exact i32 32, %lnot.ext6, !dbg !1939
    #dbg_value(i32 %shr24, !1911, !DIExpression(), !1925)
    #dbg_value(i32 %shr24, !1912, !DIExpression(), !1925)
  %arrayidx32 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv, !dbg !1940
  %7 = load ptr, ptr %arrayidx32, align 8, !dbg !1940
  %mul35 = mul nsw i32 %2, %sub34, !dbg !1941
  %shr41 = ashr exact i32 %mul35, %lnot.ext6, !dbg !1941
  %spec.select = tail call i32 @llvm.smax.i32(i32 %shr41, i32 0), !dbg !1941
  %idx.ext = zext nneg i32 %spec.select to i64, !dbg !1942
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !1942
    #dbg_value(ptr %add.ptr, !1913, !DIExpression(), !1925)
  %.pr = load i32, ptr %b_mbaff, align 4, !dbg !1925
  %add = add nsw i32 %.pr, %lnot.ext6, !dbg !1943
  %shr66 = lshr i32 4, %add, !dbg !1943
  %add67 = select i1 %or.cond, i32 0, i32 %shr66, !dbg !1943
  %height.0 = add nsw i32 %shr18, %add67, !dbg !1943
    #dbg_value(i32 %height.0, !1910, !DIExpression(), !1925)
  %tobool71.not = icmp eq i32 %.pr, 0, !dbg !1945
  br i1 %tobool71.not, label %if.else, label %if.then72, !dbg !1947

if.then72:                                        ; preds = %cond.end
  %mul73 = shl nsw i32 %2, 1, !dbg !1948
    #dbg_value(ptr %add.ptr, !1950, !DIExpression(), !1970)
    #dbg_value(i32 %mul73, !1955, !DIExpression(), !1970)
    #dbg_value(i32 %shr, !1956, !DIExpression(), !1970)
    #dbg_value(i32 %height.0, !1957, !DIExpression(), !1970)
    #dbg_value(i32 %shr24, !1958, !DIExpression(), !1970)
    #dbg_value(i32 %shr24, !1959, !DIExpression(), !1970)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1970)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !1970)
    #dbg_value(i32 0, !1962, !DIExpression(), !1972)
  %cmp113.i = icmp sgt i32 %height.0, 0, !dbg !1973
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i, !dbg !1975

for.body.lr.ph.i:                                 ; preds = %if.then72
  %sub.i = sub nsw i32 0, %shr24
  %idx.ext.i = sext i32 %sub.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i
  %conv7.i = zext nneg i32 %shr24 to i64
  %idx.ext8.i = sext i32 %shr to i64
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  %8 = sext i32 %mul73 to i64, !dbg !1975
  %wide.trip.count.i = zext nneg i32 %height.0 to i64, !dbg !1973
  %xtraiter = and i64 %wide.trip.count.i, 3, !dbg !1975
  %9 = icmp ult i32 %height.0, 4, !dbg !1975
  br i1 %9, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new, !dbg !1975

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644, !dbg !1975
  br label %for.body.i, !dbg !1975

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1975
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !1975

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i.epil, !1962, !DIExpression(), !1972)
  %10 = mul nsw i64 %indvars.iv.i.epil, %8, !dbg !1976
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %10, !dbg !1976
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %add.ptr, i64 %10, !dbg !1978
  %11 = load i8, ptr %add.ptr6.i.epil, align 1, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.epil, i8 %11, i64 %conv7.i, i1 false), !dbg !1979
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %10, !dbg !1980
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %10, !dbg !1981
  %12 = load i8, ptr %add.ptr18.i.epil, align 1, !dbg !1981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.epil, i8 %12, i64 %conv7.i, i1 false), !dbg !1982
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1, !dbg !1983
    #dbg_value(i64 %indvars.iv.next.i.epil, !1962, !DIExpression(), !1972)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !1975
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !1975
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !1975, !llvm.loop !1984

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then72
    #dbg_value(i32 0, !1964, !DIExpression(), !1986)
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i, !dbg !1987

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %sub28.i = sub nsw i32 0, %shr24
  %idx.ext29.i = sext i32 %sub28.i to i64
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i
  %mul42.i = shl nuw nsw i32 %shr24, 1
  %add.i = add nsw i32 %shr, %mul42.i
  %conv43.i = sext i32 %add.i to i64
  %13 = sext i32 %mul73 to i64, !dbg !1988
  %wide.trip.count127.i = zext nneg i32 %shr24 to i64, !dbg !1989
  br label %for.body27.i, !dbg !1988

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
    #dbg_value(i64 %indvars.iv.i, !1962, !DIExpression(), !1972)
  %14 = mul nsw i64 %indvars.iv.i, %8, !dbg !1976
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %14, !dbg !1976
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr, i64 %14, !dbg !1978
  %15 = load i8, ptr %add.ptr6.i, align 1, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i, i8 %15, i64 %conv7.i, i1 false), !dbg !1979
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %14, !dbg !1980
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %14, !dbg !1981
  %16 = load i8, ptr %add.ptr18.i, align 1, !dbg !1981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i, i8 %16, i64 %conv7.i, i1 false), !dbg !1982
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1, !dbg !1983
    #dbg_value(i64 %indvars.iv.next.i, !1962, !DIExpression(), !1972)
  %17 = mul nsw i64 %indvars.iv.next.i, %8, !dbg !1976
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %17, !dbg !1976
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %17, !dbg !1978
  %18 = load i8, ptr %add.ptr6.i.1, align 1, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.1, i8 %18, i64 %conv7.i, i1 false), !dbg !1979
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %17, !dbg !1980
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %17, !dbg !1981
  %19 = load i8, ptr %add.ptr18.i.1, align 1, !dbg !1981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.1, i8 %19, i64 %conv7.i, i1 false), !dbg !1982
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2, !dbg !1983
    #dbg_value(i64 %indvars.iv.next.i.1, !1962, !DIExpression(), !1972)
  %20 = mul nsw i64 %indvars.iv.next.i.1, %8, !dbg !1976
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %20, !dbg !1976
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %20, !dbg !1978
  %21 = load i8, ptr %add.ptr6.i.2, align 1, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.2, i8 %21, i64 %conv7.i, i1 false), !dbg !1979
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %20, !dbg !1980
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %20, !dbg !1981
  %22 = load i8, ptr %add.ptr18.i.2, align 1, !dbg !1981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.2, i8 %22, i64 %conv7.i, i1 false), !dbg !1982
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3, !dbg !1983
    #dbg_value(i64 %indvars.iv.next.i.2, !1962, !DIExpression(), !1972)
  %23 = mul nsw i64 %indvars.iv.next.i.2, %8, !dbg !1976
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %23, !dbg !1976
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %23, !dbg !1978
  %24 = load i8, ptr %add.ptr6.i.3, align 1, !dbg !1978
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i.3, i8 %24, i64 %conv7.i, i1 false), !dbg !1979
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %23, !dbg !1980
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %23, !dbg !1981
  %25 = load i8, ptr %add.ptr18.i.3, align 1, !dbg !1981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i.3, i8 %25, i64 %conv7.i, i1 false), !dbg !1982
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !1983
    #dbg_value(i64 %indvars.iv.next.i.3, !1962, !DIExpression(), !1972)
  %niter.next.3 = add i64 %niter, 4, !dbg !1975
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !1975
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i, !dbg !1975, !llvm.loop !1991

for.body27.i:                                     ; preds = %for.body27.i, %for.body27.lr.ph.i
  %indvars.iv122.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next123.i.1, %for.body27.i ]
    #dbg_value(i64 %indvars.iv122.i, !1964, !DIExpression(), !1986)
  %26 = xor i64 %indvars.iv122.i, -1, !dbg !1993
  %27 = mul nsw i64 %26, %13, !dbg !1993
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27, !dbg !1993
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !1994
    #dbg_value(i64 %indvars.iv122.i, !1964, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !1986)
  %28 = xor i64 %indvars.iv122.i, -2, !dbg !1993
  %29 = mul nsw i64 %28, %13, !dbg !1993
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29, !dbg !1993
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !1994
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2, !dbg !1995
    #dbg_value(i64 %indvars.iv.next123.i.1, !1964, !DIExpression(), !1986)
  %exitcond128.not.i.1 = icmp eq i64 %indvars.iv.next123.i.1, %wide.trip.count127.i, !dbg !1989
  br i1 %exitcond128.not.i.1, label %if.end.i, label %for.body27.i, !dbg !1988, !llvm.loop !1996

if.end.i:                                         ; preds = %for.body27.i, %for.cond.cleanup.i
    #dbg_value(i32 0, !1967, !DIExpression(), !1998)
  br i1 %tobool7.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i, !dbg !1999

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %sub55.i = sub nsw i32 0, %shr24
  %idx.ext56.i = sext i32 %sub55.i to i64
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i
  %sub65.i = add nsw i32 %height.0, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul73
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
  %mul69.i = shl nuw nsw i32 %shr24, 1
  %add70.i = add nsw i32 %shr, %mul69.i
  %conv71.i = sext i32 %add70.i to i64
  %30 = sext i32 %height.0 to i64, !dbg !2000
  %31 = sext i32 %mul73 to i64, !dbg !2000
  %wide.trip.count134.i = zext nneg i32 %shr24 to i64, !dbg !2001
  br label %for.body54.i, !dbg !2000

for.body54.i:                                     ; preds = %for.body54.i, %for.body54.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.body54.lr.ph.i ], [ %indvars.iv.next130.i.1, %for.body54.i ]
    #dbg_value(i64 %indvars.iv129.i, !1967, !DIExpression(), !1998)
  %32 = add nsw i64 %indvars.iv129.i, %30, !dbg !2003
  %33 = mul nsw i64 %32, %31, !dbg !2003
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %33, !dbg !2003
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv71.i, i1 false), !dbg !2004
  %indvars.iv.next130.i = or disjoint i64 %indvars.iv129.i, 1, !dbg !2005
    #dbg_value(i64 %indvars.iv.next130.i, !1967, !DIExpression(), !1998)
  %34 = add nsw i64 %indvars.iv.next130.i, %30, !dbg !2003
  %35 = mul nsw i64 %34, %31, !dbg !2003
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %35, !dbg !2003
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv71.i, i1 false), !dbg !2004
  %indvars.iv.next130.i.1 = add nuw nsw i64 %indvars.iv129.i, 2, !dbg !2005
    #dbg_value(i64 %indvars.iv.next130.i.1, !1967, !DIExpression(), !1998)
  %exitcond135.not.i.1 = icmp eq i64 %indvars.iv.next130.i.1, %wide.trip.count134.i, !dbg !2001
  br i1 %exitcond135.not.i.1, label %plane_expand_border.exit, label %for.body54.i, !dbg !2000, !llvm.loop !2006

plane_expand_border.exit:                         ; preds = %for.body54.i, %if.end.i
  %idx.ext74 = sext i32 %2 to i64, !dbg !2008
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext74, !dbg !2008
    #dbg_value(ptr %add.ptr75, !1950, !DIExpression(), !2009)
    #dbg_value(i32 %mul73, !1955, !DIExpression(), !2009)
    #dbg_value(i32 %shr, !1956, !DIExpression(), !2009)
    #dbg_value(i32 %height.0, !1957, !DIExpression(), !2009)
    #dbg_value(i32 %shr24, !1958, !DIExpression(), !2009)
    #dbg_value(i32 %shr24, !1959, !DIExpression(), !2009)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2009)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !2009)
    #dbg_value(i32 0, !1962, !DIExpression(), !2011)
  br i1 %cmp113.i, label %for.body.lr.ph.i156, label %for.cond.cleanup.i123, !dbg !2012

for.body.lr.ph.i156:                              ; preds = %plane_expand_border.exit
  %sub.i157 = sub nsw i32 0, %shr24
  %idx.ext.i158 = sext i32 %sub.i157 to i64
  %add.ptr.i159 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext.i158
  %conv7.i160 = zext nneg i32 %shr24 to i64
  %idx.ext8.i161 = sext i32 %shr to i64
  %add.ptr9.i162 = getelementptr i8, ptr %add.ptr75, i64 %idx.ext8.i161
  %add.ptr15.i163 = getelementptr i8, ptr %add.ptr9.i162, i64 -1
  %36 = sext i32 %mul73 to i64, !dbg !2012
  %wide.trip.count.i164 = zext nneg i32 %height.0 to i64, !dbg !2013
  %xtraiter234 = and i64 %wide.trip.count.i164, 3, !dbg !2012
  %37 = icmp ult i32 %height.0, 4, !dbg !2012
  br i1 %37, label %for.cond.cleanup.i123.loopexit.unr-lcssa, label %for.body.lr.ph.i156.new, !dbg !2012

for.body.lr.ph.i156.new:                          ; preds = %for.body.lr.ph.i156
  %unroll_iter237 = and i64 %wide.trip.count.i164, 2147483644, !dbg !2012
  br label %for.body.i165, !dbg !2012

for.cond.cleanup.i123.loopexit.unr-lcssa:         ; preds = %for.body.i165, %for.body.lr.ph.i156
  %indvars.iv.i166.unr = phi i64 [ 0, %for.body.lr.ph.i156 ], [ %indvars.iv.next.i171.3, %for.body.i165 ]
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0, !dbg !2012
  br i1 %lcmp.mod236.not, label %for.cond.cleanup.i123, label %for.body.i165.epil, !dbg !2012

for.body.i165.epil:                               ; preds = %for.cond.cleanup.i123.loopexit.unr-lcssa, %for.body.i165.epil
  %indvars.iv.i166.epil = phi i64 [ %indvars.iv.next.i171.epil, %for.body.i165.epil ], [ %indvars.iv.i166.unr, %for.cond.cleanup.i123.loopexit.unr-lcssa ]
  %epil.iter235 = phi i64 [ %epil.iter235.next, %for.body.i165.epil ], [ 0, %for.cond.cleanup.i123.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i166.epil, !1962, !DIExpression(), !2011)
  %38 = mul nsw i64 %indvars.iv.i166.epil, %36, !dbg !2014
  %add.ptr2.i167.epil = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %38, !dbg !2014
  %add.ptr6.i168.epil = getelementptr inbounds i8, ptr %add.ptr75, i64 %38, !dbg !2015
  %39 = load i8, ptr %add.ptr6.i168.epil, align 1, !dbg !2015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.epil, i8 %39, i64 %conv7.i160, i1 false), !dbg !2016
  %add.ptr12.i169.epil = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %38, !dbg !2017
  %add.ptr18.i170.epil = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %38, !dbg !2018
  %40 = load i8, ptr %add.ptr18.i170.epil, align 1, !dbg !2018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.epil, i8 %40, i64 %conv7.i160, i1 false), !dbg !2019
  %indvars.iv.next.i171.epil = add nuw nsw i64 %indvars.iv.i166.epil, 1, !dbg !2020
    #dbg_value(i64 %indvars.iv.next.i171.epil, !1962, !DIExpression(), !2011)
  %epil.iter235.next = add i64 %epil.iter235, 1, !dbg !2012
  %epil.iter235.cmp.not = icmp eq i64 %epil.iter235.next, %xtraiter234, !dbg !2012
  br i1 %epil.iter235.cmp.not, label %for.cond.cleanup.i123, label %for.body.i165.epil, !dbg !2012, !llvm.loop !2021

for.cond.cleanup.i123:                            ; preds = %for.cond.cleanup.i123.loopexit.unr-lcssa, %for.body.i165.epil, %plane_expand_border.exit
    #dbg_value(i32 0, !1964, !DIExpression(), !2022)
  br i1 %tobool.not, label %for.body27.lr.ph.i143, label %if.end.i124, !dbg !2023

for.body27.lr.ph.i143:                            ; preds = %for.cond.cleanup.i123
  %sub28.i144 = sub nsw i32 0, %shr24
  %idx.ext29.i145 = sext i32 %sub28.i144 to i64
  %add.ptr30.i146 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext29.i145
  %mul42.i147 = shl nuw nsw i32 %shr24, 1
  %add.i148 = add nsw i32 %shr, %mul42.i147
  %conv43.i149 = sext i32 %add.i148 to i64
  %41 = sext i32 %mul73 to i64, !dbg !2024
  %wide.trip.count127.i150 = zext nneg i32 %shr24 to i64, !dbg !2025
  br label %for.body27.i151, !dbg !2024

for.body.i165:                                    ; preds = %for.body.i165, %for.body.lr.ph.i156.new
  %indvars.iv.i166 = phi i64 [ 0, %for.body.lr.ph.i156.new ], [ %indvars.iv.next.i171.3, %for.body.i165 ]
  %niter238 = phi i64 [ 0, %for.body.lr.ph.i156.new ], [ %niter238.next.3, %for.body.i165 ]
    #dbg_value(i64 %indvars.iv.i166, !1962, !DIExpression(), !2011)
  %42 = mul nsw i64 %indvars.iv.i166, %36, !dbg !2014
  %add.ptr2.i167 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %42, !dbg !2014
  %add.ptr6.i168 = getelementptr inbounds i8, ptr %add.ptr75, i64 %42, !dbg !2015
  %43 = load i8, ptr %add.ptr6.i168, align 1, !dbg !2015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167, i8 %43, i64 %conv7.i160, i1 false), !dbg !2016
  %add.ptr12.i169 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %42, !dbg !2017
  %add.ptr18.i170 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %42, !dbg !2018
  %44 = load i8, ptr %add.ptr18.i170, align 1, !dbg !2018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169, i8 %44, i64 %conv7.i160, i1 false), !dbg !2019
  %indvars.iv.next.i171 = or disjoint i64 %indvars.iv.i166, 1, !dbg !2020
    #dbg_value(i64 %indvars.iv.next.i171, !1962, !DIExpression(), !2011)
  %45 = mul nsw i64 %indvars.iv.next.i171, %36, !dbg !2014
  %add.ptr2.i167.1 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %45, !dbg !2014
  %add.ptr6.i168.1 = getelementptr inbounds i8, ptr %add.ptr75, i64 %45, !dbg !2015
  %46 = load i8, ptr %add.ptr6.i168.1, align 1, !dbg !2015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.1, i8 %46, i64 %conv7.i160, i1 false), !dbg !2016
  %add.ptr12.i169.1 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %45, !dbg !2017
  %add.ptr18.i170.1 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %45, !dbg !2018
  %47 = load i8, ptr %add.ptr18.i170.1, align 1, !dbg !2018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.1, i8 %47, i64 %conv7.i160, i1 false), !dbg !2019
  %indvars.iv.next.i171.1 = or disjoint i64 %indvars.iv.i166, 2, !dbg !2020
    #dbg_value(i64 %indvars.iv.next.i171.1, !1962, !DIExpression(), !2011)
  %48 = mul nsw i64 %indvars.iv.next.i171.1, %36, !dbg !2014
  %add.ptr2.i167.2 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %48, !dbg !2014
  %add.ptr6.i168.2 = getelementptr inbounds i8, ptr %add.ptr75, i64 %48, !dbg !2015
  %49 = load i8, ptr %add.ptr6.i168.2, align 1, !dbg !2015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.2, i8 %49, i64 %conv7.i160, i1 false), !dbg !2016
  %add.ptr12.i169.2 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %48, !dbg !2017
  %add.ptr18.i170.2 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %48, !dbg !2018
  %50 = load i8, ptr %add.ptr18.i170.2, align 1, !dbg !2018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.2, i8 %50, i64 %conv7.i160, i1 false), !dbg !2019
  %indvars.iv.next.i171.2 = or disjoint i64 %indvars.iv.i166, 3, !dbg !2020
    #dbg_value(i64 %indvars.iv.next.i171.2, !1962, !DIExpression(), !2011)
  %51 = mul nsw i64 %indvars.iv.next.i171.2, %36, !dbg !2014
  %add.ptr2.i167.3 = getelementptr inbounds i8, ptr %add.ptr.i159, i64 %51, !dbg !2014
  %add.ptr6.i168.3 = getelementptr inbounds i8, ptr %add.ptr75, i64 %51, !dbg !2015
  %52 = load i8, ptr %add.ptr6.i168.3, align 1, !dbg !2015
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i167.3, i8 %52, i64 %conv7.i160, i1 false), !dbg !2016
  %add.ptr12.i169.3 = getelementptr inbounds i8, ptr %add.ptr9.i162, i64 %51, !dbg !2017
  %add.ptr18.i170.3 = getelementptr inbounds i8, ptr %add.ptr15.i163, i64 %51, !dbg !2018
  %53 = load i8, ptr %add.ptr18.i170.3, align 1, !dbg !2018
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i169.3, i8 %53, i64 %conv7.i160, i1 false), !dbg !2019
  %indvars.iv.next.i171.3 = add nuw nsw i64 %indvars.iv.i166, 4, !dbg !2020
    #dbg_value(i64 %indvars.iv.next.i171.3, !1962, !DIExpression(), !2011)
  %niter238.next.3 = add i64 %niter238, 4, !dbg !2012
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237, !dbg !2012
  br i1 %niter238.ncmp.3, label %for.cond.cleanup.i123.loopexit.unr-lcssa, label %for.body.i165, !dbg !2012, !llvm.loop !2026

for.body27.i151:                                  ; preds = %for.body27.i151, %for.body27.lr.ph.i143
  %indvars.iv122.i152 = phi i64 [ 0, %for.body27.lr.ph.i143 ], [ %indvars.iv.next123.i154.1, %for.body27.i151 ]
    #dbg_value(i64 %indvars.iv122.i152, !1964, !DIExpression(), !2022)
  %54 = xor i64 %indvars.iv122.i152, -1, !dbg !2028
  %55 = mul nsw i64 %54, %41, !dbg !2028
  %add.ptr35.i153 = getelementptr inbounds i8, ptr %add.ptr30.i146, i64 %55, !dbg !2028
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i153, ptr nonnull align 1 %add.ptr30.i146, i64 %conv43.i149, i1 false), !dbg !2029
    #dbg_value(i64 %indvars.iv122.i152, !1964, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2022)
  %56 = xor i64 %indvars.iv122.i152, -2, !dbg !2028
  %57 = mul nsw i64 %56, %41, !dbg !2028
  %add.ptr35.i153.1 = getelementptr inbounds i8, ptr %add.ptr30.i146, i64 %57, !dbg !2028
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i153.1, ptr nonnull align 1 %add.ptr30.i146, i64 %conv43.i149, i1 false), !dbg !2029
  %indvars.iv.next123.i154.1 = add nuw nsw i64 %indvars.iv122.i152, 2, !dbg !2030
    #dbg_value(i64 %indvars.iv.next123.i154.1, !1964, !DIExpression(), !2022)
  %exitcond128.not.i155.1 = icmp eq i64 %indvars.iv.next123.i154.1, %wide.trip.count127.i150, !dbg !2025
  br i1 %exitcond128.not.i155.1, label %if.end.i124, label %for.body27.i151, !dbg !2024, !llvm.loop !2031

if.end.i124:                                      ; preds = %for.body27.i151, %for.cond.cleanup.i123
    #dbg_value(i32 0, !1967, !DIExpression(), !2033)
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i126, !dbg !2034

for.body54.lr.ph.i126:                            ; preds = %if.end.i124
  %sub55.i127 = sub nsw i32 0, %shr24
  %idx.ext56.i128 = sext i32 %sub55.i127 to i64
  %add.ptr57.i129 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext56.i128
  %sub65.i130 = add nsw i32 %height.0, -1
  %mul66.i131 = mul nsw i32 %sub65.i130, %mul73
  %idx.ext67.i132 = sext i32 %mul66.i131 to i64
  %add.ptr68.i133 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %idx.ext67.i132
  %mul69.i134 = shl nuw nsw i32 %shr24, 1
  %add70.i135 = add nsw i32 %shr, %mul69.i134
  %conv71.i136 = sext i32 %add70.i135 to i64
  %58 = sext i32 %height.0 to i64, !dbg !2035
  %59 = sext i32 %mul73 to i64, !dbg !2035
  %wide.trip.count134.i137 = zext nneg i32 %shr24 to i64, !dbg !2036
  br label %for.body54.i138, !dbg !2035

for.body54.i138:                                  ; preds = %for.body54.i138, %for.body54.lr.ph.i126
  %indvars.iv129.i139 = phi i64 [ 0, %for.body54.lr.ph.i126 ], [ %indvars.iv.next130.i141.1, %for.body54.i138 ]
    #dbg_value(i64 %indvars.iv129.i139, !1967, !DIExpression(), !2033)
  %60 = add nsw i64 %indvars.iv129.i139, %58, !dbg !2037
  %61 = mul nsw i64 %60, %59, !dbg !2037
  %add.ptr61.i140 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %61, !dbg !2037
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i140, ptr nonnull align 1 %add.ptr68.i133, i64 %conv71.i136, i1 false), !dbg !2038
  %indvars.iv.next130.i141 = or disjoint i64 %indvars.iv129.i139, 1, !dbg !2039
    #dbg_value(i64 %indvars.iv.next130.i141, !1967, !DIExpression(), !2033)
  %62 = add nsw i64 %indvars.iv.next130.i141, %58, !dbg !2037
  %63 = mul nsw i64 %62, %59, !dbg !2037
  %add.ptr61.i140.1 = getelementptr inbounds i8, ptr %add.ptr57.i129, i64 %63, !dbg !2037
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i140.1, ptr nonnull align 1 %add.ptr68.i133, i64 %conv71.i136, i1 false), !dbg !2038
  %indvars.iv.next130.i141.1 = add nuw nsw i64 %indvars.iv129.i139, 2, !dbg !2039
    #dbg_value(i64 %indvars.iv.next130.i141.1, !1967, !DIExpression(), !2033)
  %exitcond135.not.i142.1 = icmp eq i64 %indvars.iv.next130.i141.1, %wide.trip.count134.i137, !dbg !2036
  br i1 %exitcond135.not.i142.1, label %if.end77, label %for.body54.i138, !dbg !2035, !llvm.loop !2040

if.else:                                          ; preds = %cond.end
    #dbg_value(ptr %add.ptr, !1950, !DIExpression(), !2042)
    #dbg_value(i32 %2, !1955, !DIExpression(), !2042)
    #dbg_value(i32 %shr, !1956, !DIExpression(), !2042)
    #dbg_value(i32 %height.0, !1957, !DIExpression(), !2042)
    #dbg_value(i32 %shr24, !1958, !DIExpression(), !2042)
    #dbg_value(i32 %shr24, !1959, !DIExpression(), !2042)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2042)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !2042)
    #dbg_value(i32 0, !1962, !DIExpression(), !2045)
  %cmp113.i174 = icmp sgt i32 %height.0, 0, !dbg !2046
  br i1 %cmp113.i174, label %for.body.lr.ph.i208, label %for.cond.cleanup.i175, !dbg !2047

for.body.lr.ph.i208:                              ; preds = %if.else
  %sub.i209 = sub nsw i32 0, %shr24
  %idx.ext.i210 = sext i32 %sub.i209 to i64
  %add.ptr.i211 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i210
  %conv7.i212 = zext nneg i32 %shr24 to i64
  %idx.ext8.i213 = sext i32 %shr to i64
  %add.ptr9.i214 = getelementptr i8, ptr %add.ptr, i64 %idx.ext8.i213
  %add.ptr15.i215 = getelementptr i8, ptr %add.ptr9.i214, i64 -1
  %64 = sext i32 %2 to i64, !dbg !2047
  %wide.trip.count.i216 = zext nneg i32 %height.0 to i64, !dbg !2046
  %xtraiter239 = and i64 %wide.trip.count.i216, 3, !dbg !2047
  %65 = icmp ult i32 %height.0, 4, !dbg !2047
  br i1 %65, label %for.cond.cleanup.i175.loopexit.unr-lcssa, label %for.body.lr.ph.i208.new, !dbg !2047

for.body.lr.ph.i208.new:                          ; preds = %for.body.lr.ph.i208
  %unroll_iter242 = and i64 %wide.trip.count.i216, 2147483644, !dbg !2047
  br label %for.body.i217, !dbg !2047

for.cond.cleanup.i175.loopexit.unr-lcssa:         ; preds = %for.body.i217, %for.body.lr.ph.i208
  %indvars.iv.i218.unr = phi i64 [ 0, %for.body.lr.ph.i208 ], [ %indvars.iv.next.i223.3, %for.body.i217 ]
  %lcmp.mod241.not = icmp eq i64 %xtraiter239, 0, !dbg !2047
  br i1 %lcmp.mod241.not, label %for.cond.cleanup.i175, label %for.body.i217.epil, !dbg !2047

for.body.i217.epil:                               ; preds = %for.cond.cleanup.i175.loopexit.unr-lcssa, %for.body.i217.epil
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.next.i223.epil, %for.body.i217.epil ], [ %indvars.iv.i218.unr, %for.cond.cleanup.i175.loopexit.unr-lcssa ]
  %epil.iter240 = phi i64 [ %epil.iter240.next, %for.body.i217.epil ], [ 0, %for.cond.cleanup.i175.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i218.epil, !1962, !DIExpression(), !2045)
  %66 = mul nsw i64 %indvars.iv.i218.epil, %64, !dbg !2048
  %add.ptr2.i219.epil = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %66, !dbg !2048
  %add.ptr6.i220.epil = getelementptr inbounds i8, ptr %add.ptr, i64 %66, !dbg !2049
  %67 = load i8, ptr %add.ptr6.i220.epil, align 1, !dbg !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.epil, i8 %67, i64 %conv7.i212, i1 false), !dbg !2050
  %add.ptr12.i221.epil = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %66, !dbg !2051
  %add.ptr18.i222.epil = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %66, !dbg !2052
  %68 = load i8, ptr %add.ptr18.i222.epil, align 1, !dbg !2052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.epil, i8 %68, i64 %conv7.i212, i1 false), !dbg !2053
  %indvars.iv.next.i223.epil = add nuw nsw i64 %indvars.iv.i218.epil, 1, !dbg !2054
    #dbg_value(i64 %indvars.iv.next.i223.epil, !1962, !DIExpression(), !2045)
  %epil.iter240.next = add i64 %epil.iter240, 1, !dbg !2047
  %epil.iter240.cmp.not = icmp eq i64 %epil.iter240.next, %xtraiter239, !dbg !2047
  br i1 %epil.iter240.cmp.not, label %for.cond.cleanup.i175, label %for.body.i217.epil, !dbg !2047, !llvm.loop !2055

for.cond.cleanup.i175:                            ; preds = %for.cond.cleanup.i175.loopexit.unr-lcssa, %for.body.i217.epil, %if.else
    #dbg_value(i32 0, !1964, !DIExpression(), !2056)
  br i1 %tobool.not, label %for.body27.lr.ph.i195, label %if.end.i176, !dbg !2057

for.body27.lr.ph.i195:                            ; preds = %for.cond.cleanup.i175
  %sub28.i196 = sub nsw i32 0, %shr24
  %idx.ext29.i197 = sext i32 %sub28.i196 to i64
  %add.ptr30.i198 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i197
  %mul42.i199 = shl nuw nsw i32 %shr24, 1
  %add.i200 = add nsw i32 %shr, %mul42.i199
  %conv43.i201 = sext i32 %add.i200 to i64
  %69 = sext i32 %2 to i64, !dbg !2058
  %wide.trip.count127.i202 = zext nneg i32 %shr24 to i64, !dbg !2059
  br label %for.body27.i203, !dbg !2058

for.body.i217:                                    ; preds = %for.body.i217, %for.body.lr.ph.i208.new
  %indvars.iv.i218 = phi i64 [ 0, %for.body.lr.ph.i208.new ], [ %indvars.iv.next.i223.3, %for.body.i217 ]
  %niter243 = phi i64 [ 0, %for.body.lr.ph.i208.new ], [ %niter243.next.3, %for.body.i217 ]
    #dbg_value(i64 %indvars.iv.i218, !1962, !DIExpression(), !2045)
  %70 = mul nsw i64 %indvars.iv.i218, %64, !dbg !2048
  %add.ptr2.i219 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %70, !dbg !2048
  %add.ptr6.i220 = getelementptr inbounds i8, ptr %add.ptr, i64 %70, !dbg !2049
  %71 = load i8, ptr %add.ptr6.i220, align 1, !dbg !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219, i8 %71, i64 %conv7.i212, i1 false), !dbg !2050
  %add.ptr12.i221 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %70, !dbg !2051
  %add.ptr18.i222 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %70, !dbg !2052
  %72 = load i8, ptr %add.ptr18.i222, align 1, !dbg !2052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221, i8 %72, i64 %conv7.i212, i1 false), !dbg !2053
  %indvars.iv.next.i223 = or disjoint i64 %indvars.iv.i218, 1, !dbg !2054
    #dbg_value(i64 %indvars.iv.next.i223, !1962, !DIExpression(), !2045)
  %73 = mul nsw i64 %indvars.iv.next.i223, %64, !dbg !2048
  %add.ptr2.i219.1 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %73, !dbg !2048
  %add.ptr6.i220.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %73, !dbg !2049
  %74 = load i8, ptr %add.ptr6.i220.1, align 1, !dbg !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.1, i8 %74, i64 %conv7.i212, i1 false), !dbg !2050
  %add.ptr12.i221.1 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %73, !dbg !2051
  %add.ptr18.i222.1 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %73, !dbg !2052
  %75 = load i8, ptr %add.ptr18.i222.1, align 1, !dbg !2052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.1, i8 %75, i64 %conv7.i212, i1 false), !dbg !2053
  %indvars.iv.next.i223.1 = or disjoint i64 %indvars.iv.i218, 2, !dbg !2054
    #dbg_value(i64 %indvars.iv.next.i223.1, !1962, !DIExpression(), !2045)
  %76 = mul nsw i64 %indvars.iv.next.i223.1, %64, !dbg !2048
  %add.ptr2.i219.2 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %76, !dbg !2048
  %add.ptr6.i220.2 = getelementptr inbounds i8, ptr %add.ptr, i64 %76, !dbg !2049
  %77 = load i8, ptr %add.ptr6.i220.2, align 1, !dbg !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.2, i8 %77, i64 %conv7.i212, i1 false), !dbg !2050
  %add.ptr12.i221.2 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %76, !dbg !2051
  %add.ptr18.i222.2 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %76, !dbg !2052
  %78 = load i8, ptr %add.ptr18.i222.2, align 1, !dbg !2052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.2, i8 %78, i64 %conv7.i212, i1 false), !dbg !2053
  %indvars.iv.next.i223.2 = or disjoint i64 %indvars.iv.i218, 3, !dbg !2054
    #dbg_value(i64 %indvars.iv.next.i223.2, !1962, !DIExpression(), !2045)
  %79 = mul nsw i64 %indvars.iv.next.i223.2, %64, !dbg !2048
  %add.ptr2.i219.3 = getelementptr inbounds i8, ptr %add.ptr.i211, i64 %79, !dbg !2048
  %add.ptr6.i220.3 = getelementptr inbounds i8, ptr %add.ptr, i64 %79, !dbg !2049
  %80 = load i8, ptr %add.ptr6.i220.3, align 1, !dbg !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr2.i219.3, i8 %80, i64 %conv7.i212, i1 false), !dbg !2050
  %add.ptr12.i221.3 = getelementptr inbounds i8, ptr %add.ptr9.i214, i64 %79, !dbg !2051
  %add.ptr18.i222.3 = getelementptr inbounds i8, ptr %add.ptr15.i215, i64 %79, !dbg !2052
  %81 = load i8, ptr %add.ptr18.i222.3, align 1, !dbg !2052
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %add.ptr12.i221.3, i8 %81, i64 %conv7.i212, i1 false), !dbg !2053
  %indvars.iv.next.i223.3 = add nuw nsw i64 %indvars.iv.i218, 4, !dbg !2054
    #dbg_value(i64 %indvars.iv.next.i223.3, !1962, !DIExpression(), !2045)
  %niter243.next.3 = add i64 %niter243, 4, !dbg !2047
  %niter243.ncmp.3 = icmp eq i64 %niter243.next.3, %unroll_iter242, !dbg !2047
  br i1 %niter243.ncmp.3, label %for.cond.cleanup.i175.loopexit.unr-lcssa, label %for.body.i217, !dbg !2047, !llvm.loop !2060

for.body27.i203:                                  ; preds = %for.body27.i203, %for.body27.lr.ph.i195
  %indvars.iv122.i204 = phi i64 [ 0, %for.body27.lr.ph.i195 ], [ %indvars.iv.next123.i206.1, %for.body27.i203 ]
    #dbg_value(i64 %indvars.iv122.i204, !1964, !DIExpression(), !2056)
  %82 = xor i64 %indvars.iv122.i204, -1, !dbg !2062
  %83 = mul nsw i64 %82, %69, !dbg !2062
  %add.ptr35.i205 = getelementptr inbounds i8, ptr %add.ptr30.i198, i64 %83, !dbg !2062
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i205, ptr nonnull align 1 %add.ptr30.i198, i64 %conv43.i201, i1 false), !dbg !2063
    #dbg_value(i64 %indvars.iv122.i204, !1964, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2056)
  %84 = xor i64 %indvars.iv122.i204, -2, !dbg !2062
  %85 = mul nsw i64 %84, %69, !dbg !2062
  %add.ptr35.i205.1 = getelementptr inbounds i8, ptr %add.ptr30.i198, i64 %85, !dbg !2062
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i205.1, ptr nonnull align 1 %add.ptr30.i198, i64 %conv43.i201, i1 false), !dbg !2063
  %indvars.iv.next123.i206.1 = add nuw nsw i64 %indvars.iv122.i204, 2, !dbg !2064
    #dbg_value(i64 %indvars.iv.next123.i206.1, !1964, !DIExpression(), !2056)
  %exitcond128.not.i207.1 = icmp eq i64 %indvars.iv.next123.i206.1, %wide.trip.count127.i202, !dbg !2059
  br i1 %exitcond128.not.i207.1, label %if.end.i176, label %for.body27.i203, !dbg !2058, !llvm.loop !2065

if.end.i176:                                      ; preds = %for.body27.i203, %for.cond.cleanup.i175
    #dbg_value(i32 0, !1967, !DIExpression(), !2067)
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i178, !dbg !2068

for.body54.lr.ph.i178:                            ; preds = %if.end.i176
  %sub55.i179 = sub nsw i32 0, %shr24
  %idx.ext56.i180 = sext i32 %sub55.i179 to i64
  %add.ptr57.i181 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i180
  %sub65.i182 = add nsw i32 %height.0, -1
  %mul66.i183 = mul nsw i32 %sub65.i182, %2
  %idx.ext67.i184 = sext i32 %mul66.i183 to i64
  %add.ptr68.i185 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %idx.ext67.i184
  %mul69.i186 = shl nuw nsw i32 %shr24, 1
  %add70.i187 = add nsw i32 %shr, %mul69.i186
  %conv71.i188 = sext i32 %add70.i187 to i64
  %86 = sext i32 %height.0 to i64, !dbg !2069
  %87 = sext i32 %2 to i64, !dbg !2069
  %wide.trip.count134.i189 = zext nneg i32 %shr24 to i64, !dbg !2070
  br label %for.body54.i190, !dbg !2069

for.body54.i190:                                  ; preds = %for.body54.i190, %for.body54.lr.ph.i178
  %indvars.iv129.i191 = phi i64 [ 0, %for.body54.lr.ph.i178 ], [ %indvars.iv.next130.i193.1, %for.body54.i190 ]
    #dbg_value(i64 %indvars.iv129.i191, !1967, !DIExpression(), !2067)
  %88 = add nsw i64 %indvars.iv129.i191, %86, !dbg !2071
  %89 = mul nsw i64 %88, %87, !dbg !2071
  %add.ptr61.i192 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %89, !dbg !2071
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i192, ptr nonnull align 1 %add.ptr68.i185, i64 %conv71.i188, i1 false), !dbg !2072
  %indvars.iv.next130.i193 = or disjoint i64 %indvars.iv129.i191, 1, !dbg !2073
    #dbg_value(i64 %indvars.iv.next130.i193, !1967, !DIExpression(), !2067)
  %90 = add nsw i64 %indvars.iv.next130.i193, %86, !dbg !2071
  %91 = mul nsw i64 %90, %87, !dbg !2071
  %add.ptr61.i192.1 = getelementptr inbounds i8, ptr %add.ptr57.i181, i64 %91, !dbg !2071
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i192.1, ptr nonnull align 1 %add.ptr68.i185, i64 %conv71.i188, i1 false), !dbg !2072
  %indvars.iv.next130.i193.1 = add nuw nsw i64 %indvars.iv129.i191, 2, !dbg !2073
    #dbg_value(i64 %indvars.iv.next130.i193.1, !1967, !DIExpression(), !2067)
  %exitcond135.not.i194.1 = icmp eq i64 %indvars.iv.next130.i193.1, %wide.trip.count134.i189, !dbg !2070
  br i1 %exitcond135.not.i194.1, label %if.end77, label %for.body54.i190, !dbg !2069, !llvm.loop !2074

if.end77:                                         ; preds = %for.body54.i138, %for.body54.i190, %if.end.i176, %if.end.i124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2076
    #dbg_value(i64 %indvars.iv.next, !1904, !DIExpression(), !1920)
  %92 = load i32, ptr %i_plane, align 4, !dbg !1921
  %93 = sext i32 %92 to i64, !dbg !1922
  %cmp = icmp slt i64 %indvars.iv.next, %93, !dbg !1922
  br i1 %cmp, label %for.body, label %cleanup, !dbg !1923, !llvm.loop !2077

cleanup:                                          ; preds = %if.end77, %for.cond.preheader, %entry
  ret void, !dbg !2079
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_filtered(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 !dbg !2080 {
entry:
    #dbg_value(ptr %h, !2082, !DIExpression(), !2097)
    #dbg_value(ptr %frame, !2083, !DIExpression(), !2097)
    #dbg_value(i32 %mb_y, !2084, !DIExpression(), !2097)
    #dbg_value(i32 %b_end, !2085, !DIExpression(), !2097)
  %tobool.not = icmp eq i32 %mb_y, 0, !dbg !2098
    #dbg_value(i1 %tobool.not, !2086, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2097)
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104, !dbg !2099
  %0 = load i32, ptr %i_stride, align 8, !dbg !2100
    #dbg_value(i32 %0, !2087, !DIExpression(), !2097)
  %sps = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !2101
  %1 = load ptr, ptr %sps, align 16, !dbg !2101
  %i_mb_width = getelementptr inbounds i8, ptr %1, i64 1084, !dbg !2102
  %2 = load i32, ptr %i_mb_width, align 4, !dbg !2102
  %mul = shl nsw i32 %2, 4, !dbg !2103
  %add = or disjoint i32 %mul, 8, !dbg !2104
    #dbg_value(i32 %add, !2088, !DIExpression(), !2097)
  %tobool1.not = icmp eq i32 %b_end, 0, !dbg !2105
  br i1 %tobool1.not, label %cond.end, label %cond.true, !dbg !2105

cond.true:                                        ; preds = %entry
  %i_mb_height = getelementptr inbounds i8, ptr %1, i64 1088, !dbg !2106
  %3 = load i32, ptr %i_mb_height, align 4, !dbg !2106
  %sub = sub nsw i32 %3, %mb_y, !dbg !2107
  %mul3 = shl nsw i32 %sub, 4, !dbg !2108
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !2109
  %4 = load i32, ptr %b_mbaff, align 4, !dbg !2109
  %shr = ashr i32 %mul3, %4, !dbg !2110
  %add4 = add nsw i32 %shr, 16, !dbg !2111
  br label %cond.end, !dbg !2105

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ 16, %entry ], !dbg !2105
    #dbg_value(i32 %cond, !2089, !DIExpression(), !2097)
    #dbg_value(i32 28, !2090, !DIExpression(), !2097)
    #dbg_value(i32 24, !2091, !DIExpression(), !2097)
    #dbg_value(i32 1, !2092, !DIExpression(), !2112)
  %filtered = getelementptr inbounds i8, ptr %frame, i64 176
  %mul6 = shl nsw i32 %mb_y, 4
  %b_mbaff8 = getelementptr inbounds i8, ptr %h, i64 7268
    #dbg_value(i32 1, !2092, !DIExpression(), !2112)
  %mul15 = shl nsw i32 %0, 1
  %cmp113.i = icmp sgt i32 %cond, 0
  %idx.ext8.i = sext i32 %add to i64
  %5 = sext i32 %mul15 to i64
  %wide.trip.count.i = zext i32 %cond to i64
  %add.i = add nsw i32 %mul, 64
  %conv43.i = sext i32 %add.i to i64
  %sub65.i = add nsw i32 %cond, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul15
  %idx.ext67.i = sext i32 %mul66.i to i64
  %6 = sext i32 %cond to i64
  %idx.ext16 = sext i32 %0 to i64
  %mul66.i95 = mul nsw i32 %sub65.i, %0
  %idx.ext67.i96 = sext i32 %mul66.i95 to i64
  %7 = sub nsw i64 0, %5
  %8 = mul nsw i64 %5, -2
  %9 = mul nsw i64 %5, -3
  %10 = mul nsw i64 %5, -4
  %11 = mul nsw i64 %5, -5
  %12 = mul nsw i64 %5, -6
  %13 = mul nsw i64 %5, -7
  %14 = mul nsw i64 %5, -8
  %15 = mul nsw i64 %5, -9
  %16 = mul nsw i64 %5, -10
  %17 = mul nsw i64 %5, -11
  %18 = mul nsw i64 %5, -12
  %19 = mul nsw i64 %5, -13
  %20 = mul nsw i64 %5, -14
  %21 = mul nsw i64 %5, -15
  %22 = mul nsw i64 %5, -16
  %23 = mul nsw i64 %5, -17
  %24 = mul nsw i64 %5, -18
  %25 = mul nsw i64 %5, -19
  %26 = mul nsw i64 %5, -20
  %27 = mul nsw i64 %5, -21
  %28 = mul nsw i64 %5, -22
  %29 = mul nsw i64 %5, -23
  %30 = mul nsw i64 %5, -24
  %31 = mul nsw i64 %6, %5
  %32 = add nsw i64 %6, 1
  %33 = mul nsw i64 %32, %5
  %34 = add nsw i64 %6, 2
  %35 = mul nsw i64 %34, %5
  %36 = add nsw i64 %6, 3
  %37 = mul nsw i64 %36, %5
  %38 = add nsw i64 %6, 4
  %39 = mul nsw i64 %38, %5
  %40 = add nsw i64 %6, 5
  %41 = mul nsw i64 %40, %5
  %42 = add nsw i64 %6, 6
  %43 = mul nsw i64 %42, %5
  %44 = add nsw i64 %6, 7
  %45 = mul nsw i64 %44, %5
  %46 = add nsw i64 %6, 8
  %47 = mul nsw i64 %46, %5
  %48 = add nsw i64 %6, 9
  %49 = mul nsw i64 %48, %5
  %50 = add nsw i64 %6, 10
  %51 = mul nsw i64 %50, %5
  %52 = add nsw i64 %6, 11
  %53 = mul nsw i64 %52, %5
  %54 = add nsw i64 %6, 12
  %55 = mul nsw i64 %54, %5
  %56 = add nsw i64 %6, 13
  %57 = mul nsw i64 %56, %5
  %58 = add nsw i64 %6, 14
  %59 = mul nsw i64 %58, %5
  %60 = add nsw i64 %6, 15
  %61 = mul nsw i64 %60, %5
  %62 = add nsw i64 %6, 16
  %63 = mul nsw i64 %62, %5
  %64 = add nsw i64 %6, 17
  %65 = mul nsw i64 %64, %5
  %66 = add nsw i64 %6, 18
  %67 = mul nsw i64 %66, %5
  %68 = add nsw i64 %6, 19
  %69 = mul nsw i64 %68, %5
  %70 = add nsw i64 %6, 20
  %71 = mul nsw i64 %70, %5
  %72 = add nsw i64 %6, 21
  %73 = mul nsw i64 %72, %5
  %74 = add nsw i64 %6, 22
  %75 = mul nsw i64 %74, %5
  %76 = add nsw i64 %6, 23
  %77 = mul nsw i64 %76, %5
  %78 = sub nsw i64 0, %5
  %79 = mul nsw i64 %5, -2
  %80 = mul nsw i64 %5, -3
  %81 = mul nsw i64 %5, -4
  %82 = mul nsw i64 %5, -5
  %83 = mul nsw i64 %5, -6
  %84 = mul nsw i64 %5, -7
  %85 = mul nsw i64 %5, -8
  %86 = mul nsw i64 %5, -9
  %87 = mul nsw i64 %5, -10
  %88 = mul nsw i64 %5, -11
  %89 = mul nsw i64 %5, -12
  %90 = mul nsw i64 %5, -13
  %91 = mul nsw i64 %5, -14
  %92 = mul nsw i64 %5, -15
  %93 = mul nsw i64 %5, -16
  %94 = mul nsw i64 %5, -17
  %95 = mul nsw i64 %5, -18
  %96 = mul nsw i64 %5, -19
  %97 = mul nsw i64 %5, -20
  %98 = mul nsw i64 %5, -21
  %99 = mul nsw i64 %5, -22
  %100 = mul nsw i64 %5, -23
  %101 = mul nsw i64 %5, -24
  %102 = mul nsw i64 %6, %5
  %103 = add nsw i64 %6, 1
  %104 = mul nsw i64 %103, %5
  %105 = add nsw i64 %6, 2
  %106 = mul nsw i64 %105, %5
  %107 = add nsw i64 %6, 3
  %108 = mul nsw i64 %107, %5
  %109 = add nsw i64 %6, 4
  %110 = mul nsw i64 %109, %5
  %111 = add nsw i64 %6, 5
  %112 = mul nsw i64 %111, %5
  %113 = add nsw i64 %6, 6
  %114 = mul nsw i64 %113, %5
  %115 = add nsw i64 %6, 7
  %116 = mul nsw i64 %115, %5
  %117 = add nsw i64 %6, 8
  %118 = mul nsw i64 %117, %5
  %119 = add nsw i64 %6, 9
  %120 = mul nsw i64 %119, %5
  %121 = add nsw i64 %6, 10
  %122 = mul nsw i64 %121, %5
  %123 = add nsw i64 %6, 11
  %124 = mul nsw i64 %123, %5
  %125 = add nsw i64 %6, 12
  %126 = mul nsw i64 %125, %5
  %127 = add nsw i64 %6, 13
  %128 = mul nsw i64 %127, %5
  %129 = add nsw i64 %6, 14
  %130 = mul nsw i64 %129, %5
  %131 = add nsw i64 %6, 15
  %132 = mul nsw i64 %131, %5
  %133 = add nsw i64 %6, 16
  %134 = mul nsw i64 %133, %5
  %135 = add nsw i64 %6, 17
  %136 = mul nsw i64 %135, %5
  %137 = add nsw i64 %6, 18
  %138 = mul nsw i64 %137, %5
  %139 = add nsw i64 %6, 19
  %140 = mul nsw i64 %139, %5
  %141 = add nsw i64 %6, 20
  %142 = mul nsw i64 %141, %5
  %143 = add nsw i64 %6, 21
  %144 = mul nsw i64 %143, %5
  %145 = add nsw i64 %6, 22
  %146 = mul nsw i64 %145, %5
  %147 = add nsw i64 %6, 23
  %148 = mul nsw i64 %147, %5
  %149 = sub nsw i64 0, %idx.ext16
  %150 = mul nsw i64 %idx.ext16, -2
  %151 = mul nsw i64 %idx.ext16, -3
  %152 = mul nsw i64 %idx.ext16, -4
  %153 = mul nsw i64 %idx.ext16, -5
  %154 = mul nsw i64 %idx.ext16, -6
  %155 = mul nsw i64 %idx.ext16, -7
  %156 = mul nsw i64 %idx.ext16, -8
  %157 = mul nsw i64 %idx.ext16, -9
  %158 = mul nsw i64 %idx.ext16, -10
  %159 = mul nsw i64 %idx.ext16, -11
  %160 = mul nsw i64 %idx.ext16, -12
  %161 = mul nsw i64 %idx.ext16, -13
  %162 = mul nsw i64 %idx.ext16, -14
  %163 = mul nsw i64 %idx.ext16, -15
  %164 = mul nsw i64 %idx.ext16, -16
  %165 = mul nsw i64 %idx.ext16, -17
  %166 = mul nsw i64 %idx.ext16, -18
  %167 = mul nsw i64 %idx.ext16, -19
  %168 = mul nsw i64 %idx.ext16, -20
  %169 = mul nsw i64 %idx.ext16, -21
  %170 = mul nsw i64 %idx.ext16, -22
  %171 = mul nsw i64 %idx.ext16, -23
  %172 = mul nsw i64 %idx.ext16, -24
  %173 = mul nsw i64 %6, %idx.ext16
  %174 = add nsw i64 %6, 1
  %175 = mul nsw i64 %174, %idx.ext16
  %176 = add nsw i64 %6, 2
  %177 = mul nsw i64 %176, %idx.ext16
  %178 = add nsw i64 %6, 3
  %179 = mul nsw i64 %178, %idx.ext16
  %180 = add nsw i64 %6, 4
  %181 = mul nsw i64 %180, %idx.ext16
  %182 = add nsw i64 %6, 5
  %183 = mul nsw i64 %182, %idx.ext16
  %184 = add nsw i64 %6, 6
  %185 = mul nsw i64 %184, %idx.ext16
  %186 = add nsw i64 %6, 7
  %187 = mul nsw i64 %186, %idx.ext16
  %188 = add nsw i64 %6, 8
  %189 = mul nsw i64 %188, %idx.ext16
  %190 = add nsw i64 %6, 9
  %191 = mul nsw i64 %190, %idx.ext16
  %192 = add nsw i64 %6, 10
  %193 = mul nsw i64 %192, %idx.ext16
  %194 = add nsw i64 %6, 11
  %195 = mul nsw i64 %194, %idx.ext16
  %196 = add nsw i64 %6, 12
  %197 = mul nsw i64 %196, %idx.ext16
  %198 = add nsw i64 %6, 13
  %199 = mul nsw i64 %198, %idx.ext16
  %200 = add nsw i64 %6, 14
  %201 = mul nsw i64 %200, %idx.ext16
  %202 = add nsw i64 %6, 15
  %203 = mul nsw i64 %202, %idx.ext16
  %204 = add nsw i64 %6, 16
  %205 = mul nsw i64 %204, %idx.ext16
  %206 = add nsw i64 %6, 17
  %207 = mul nsw i64 %206, %idx.ext16
  %208 = add nsw i64 %6, 18
  %209 = mul nsw i64 %208, %idx.ext16
  %210 = add nsw i64 %6, 19
  %211 = mul nsw i64 %210, %idx.ext16
  %212 = add nsw i64 %6, 20
  %213 = mul nsw i64 %212, %idx.ext16
  %214 = add nsw i64 %6, 21
  %215 = mul nsw i64 %214, %idx.ext16
  %216 = add nsw i64 %6, 22
  %217 = mul nsw i64 %216, %idx.ext16
  %218 = add nsw i64 %6, 23
  %219 = mul nsw i64 %218, %idx.ext16
  %xtraiter = and i64 %wide.trip.count.i, 3
  %220 = icmp ult i32 %cond, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter133 = and i64 %wide.trip.count.i, 3
  %221 = icmp ult i32 %cond, 4
  %unroll_iter136 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  %xtraiter138 = and i64 %wide.trip.count.i, 3
  %222 = icmp ult i32 %cond, 4
  %unroll_iter141 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod140.not = icmp eq i64 %xtraiter138, 0
  br label %for.body, !dbg !2113

for.cond.cleanup:                                 ; preds = %if.end
  ret void, !dbg !2114

for.body:                                         ; preds = %cond.end, %if.end
  %indvars.iv = phi i64 [ 1, %cond.end ], [ %indvars.iv.next, %if.end ]
    #dbg_value(i64 %indvars.iv, !2092, !DIExpression(), !2112)
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %filtered, i64 0, i64 %indvars.iv, !dbg !2115
  %223 = load ptr, ptr %arrayidx5, align 8, !dbg !2115
  %224 = load i32, ptr %b_mbaff8, align 4, !dbg !2116
  %shl.neg = shl i32 -8, %224, !dbg !2117
  %sub9 = add i32 %shl.neg, %mul6, !dbg !2118
  %mul10 = mul nsw i32 %sub9, %0, !dbg !2119
  %idx.ext = sext i32 %mul10 to i64, !dbg !2120
  %add.ptr = getelementptr inbounds i8, ptr %223, i64 %idx.ext, !dbg !2120
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 -4, !dbg !2121
    #dbg_value(ptr %add.ptr11, !2094, !DIExpression(), !2122)
  %tobool14.not = icmp eq i32 %224, 0, !dbg !2123
    #dbg_value(ptr %add.ptr11, !1950, !DIExpression(), !2125)
    #dbg_value(ptr %add.ptr11, !1950, !DIExpression(), !2127)
    #dbg_value(i32 %add, !1956, !DIExpression(), !2125)
    #dbg_value(i32 %add, !1956, !DIExpression(), !2127)
    #dbg_value(i32 %cond, !1957, !DIExpression(), !2125)
    #dbg_value(i32 %cond, !1957, !DIExpression(), !2127)
    #dbg_value(i32 28, !1958, !DIExpression(), !2125)
    #dbg_value(i32 28, !1958, !DIExpression(), !2127)
    #dbg_value(i32 24, !1959, !DIExpression(), !2125)
    #dbg_value(i32 24, !1959, !DIExpression(), !2127)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2125)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2127)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !2125)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !2127)
    #dbg_value(i32 0, !1962, !DIExpression(), !2130)
    #dbg_value(i32 0, !1962, !DIExpression(), !2131)
  br i1 %tobool14.not, label %if.else, label %if.then, !dbg !2132

if.then:                                          ; preds = %for.body
    #dbg_value(i32 %mul15, !1955, !DIExpression(), !2127)
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i, !dbg !2133

for.body.lr.ph.i:                                 ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  br i1 %220, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i, !dbg !2133

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !2133

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i.epil, !1962, !DIExpression(), !2131)
  %225 = mul nsw i64 %indvars.iv.i.epil, %5, !dbg !2134
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %225, !dbg !2134
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %add.ptr11, i64 %225, !dbg !2135
  %226 = load i8, ptr %add.ptr6.i.epil, align 1, !dbg !2135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.epil, i8 %226, i64 28, i1 false), !dbg !2136
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %225, !dbg !2137
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %225, !dbg !2138
  %227 = load i8, ptr %add.ptr18.i.epil, align 1, !dbg !2138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.epil, i8 %227, i64 28, i1 false), !dbg !2139
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1, !dbg !2140
    #dbg_value(i64 %indvars.iv.next.i.epil, !1962, !DIExpression(), !2131)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2133
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !2133
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !2133, !llvm.loop !2141

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %if.then
    #dbg_value(i32 0, !1964, !DIExpression(), !2142)
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i, !dbg !2143

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
    #dbg_value(i64 0, !1964, !DIExpression(), !2142)
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %7, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 1, !1964, !DIExpression(), !2142)
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %8, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 2, !1964, !DIExpression(), !2142)
  %add.ptr35.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %9, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.2, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 3, !1964, !DIExpression(), !2142)
  %add.ptr35.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %10, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.3, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 4, !1964, !DIExpression(), !2142)
  %add.ptr35.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %11, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.4, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 5, !1964, !DIExpression(), !2142)
  %add.ptr35.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %12, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.5, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 6, !1964, !DIExpression(), !2142)
  %add.ptr35.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %13, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.6, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 7, !1964, !DIExpression(), !2142)
  %add.ptr35.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %14, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.7, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 8, !1964, !DIExpression(), !2142)
  %add.ptr35.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %15, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.8, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 9, !1964, !DIExpression(), !2142)
  %add.ptr35.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %16, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.9, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 10, !1964, !DIExpression(), !2142)
  %add.ptr35.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %17, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.10, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 11, !1964, !DIExpression(), !2142)
  %add.ptr35.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %18, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.11, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 12, !1964, !DIExpression(), !2142)
  %add.ptr35.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %19, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.12, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 13, !1964, !DIExpression(), !2142)
  %add.ptr35.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %20, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.13, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 14, !1964, !DIExpression(), !2142)
  %add.ptr35.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %21, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.14, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 15, !1964, !DIExpression(), !2142)
  %add.ptr35.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %22, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.15, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 16, !1964, !DIExpression(), !2142)
  %add.ptr35.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %23, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.16, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 17, !1964, !DIExpression(), !2142)
  %add.ptr35.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %24, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.17, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 18, !1964, !DIExpression(), !2142)
  %add.ptr35.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %25, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.18, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 19, !1964, !DIExpression(), !2142)
  %add.ptr35.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %26, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.19, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 20, !1964, !DIExpression(), !2142)
  %add.ptr35.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.20, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 21, !1964, !DIExpression(), !2142)
  %add.ptr35.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %28, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.21, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 22, !1964, !DIExpression(), !2142)
  %add.ptr35.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.22, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 23, !1964, !DIExpression(), !2142)
  %add.ptr35.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %30, !dbg !2144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.23, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2145
    #dbg_value(i64 24, !1964, !DIExpression(), !2142)
  br label %if.end.i, !dbg !2146

for.body.i:                                       ; preds = %for.body.lr.ph.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body.i ], [ 0, %for.body.lr.ph.i ]
  %niter = phi i64 [ %niter.next.3, %for.body.i ], [ 0, %for.body.lr.ph.i ]
    #dbg_value(i64 %indvars.iv.i, !1962, !DIExpression(), !2131)
  %228 = mul nsw i64 %indvars.iv.i, %5, !dbg !2134
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %228, !dbg !2134
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr11, i64 %228, !dbg !2135
  %229 = load i8, ptr %add.ptr6.i, align 1, !dbg !2135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i, i8 %229, i64 28, i1 false), !dbg !2136
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %228, !dbg !2137
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %228, !dbg !2138
  %230 = load i8, ptr %add.ptr18.i, align 1, !dbg !2138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i, i8 %230, i64 28, i1 false), !dbg !2139
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1, !dbg !2140
    #dbg_value(i64 %indvars.iv.next.i, !1962, !DIExpression(), !2131)
  %231 = mul nsw i64 %indvars.iv.next.i, %5, !dbg !2134
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %231, !dbg !2134
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %add.ptr11, i64 %231, !dbg !2135
  %232 = load i8, ptr %add.ptr6.i.1, align 1, !dbg !2135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.1, i8 %232, i64 28, i1 false), !dbg !2136
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %231, !dbg !2137
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %231, !dbg !2138
  %233 = load i8, ptr %add.ptr18.i.1, align 1, !dbg !2138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.1, i8 %233, i64 28, i1 false), !dbg !2139
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2, !dbg !2140
    #dbg_value(i64 %indvars.iv.next.i.1, !1962, !DIExpression(), !2131)
  %234 = mul nsw i64 %indvars.iv.next.i.1, %5, !dbg !2134
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %234, !dbg !2134
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %add.ptr11, i64 %234, !dbg !2135
  %235 = load i8, ptr %add.ptr6.i.2, align 1, !dbg !2135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.2, i8 %235, i64 28, i1 false), !dbg !2136
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %234, !dbg !2137
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %234, !dbg !2138
  %236 = load i8, ptr %add.ptr18.i.2, align 1, !dbg !2138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.2, i8 %236, i64 28, i1 false), !dbg !2139
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3, !dbg !2140
    #dbg_value(i64 %indvars.iv.next.i.2, !1962, !DIExpression(), !2131)
  %237 = mul nsw i64 %indvars.iv.next.i.2, %5, !dbg !2134
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %237, !dbg !2134
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %add.ptr11, i64 %237, !dbg !2135
  %238 = load i8, ptr %add.ptr6.i.3, align 1, !dbg !2135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i.3, i8 %238, i64 28, i1 false), !dbg !2136
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %237, !dbg !2137
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %237, !dbg !2138
  %239 = load i8, ptr %add.ptr18.i.3, align 1, !dbg !2138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i.3, i8 %239, i64 28, i1 false), !dbg !2139
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !2140
    #dbg_value(i64 %indvars.iv.next.i.3, !1962, !DIExpression(), !2131)
  %niter.next.3 = add i64 %niter, 4, !dbg !2133
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2133
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i, !dbg !2133, !llvm.loop !2147

if.end.i:                                         ; preds = %for.body27.lr.ph.i, %for.cond.cleanup.i
    #dbg_value(i32 0, !1967, !DIExpression(), !2149)
  br i1 %tobool1.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i, !dbg !2146

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
    #dbg_value(i64 0, !1967, !DIExpression(), !2149)
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %31, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 1, !1967, !DIExpression(), !2149)
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %33, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 2, !1967, !DIExpression(), !2149)
  %add.ptr61.i.2 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %35, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.2, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 3, !1967, !DIExpression(), !2149)
  %add.ptr61.i.3 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %37, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.3, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 4, !1967, !DIExpression(), !2149)
  %add.ptr61.i.4 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %39, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.4, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 5, !1967, !DIExpression(), !2149)
  %add.ptr61.i.5 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %41, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.5, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 6, !1967, !DIExpression(), !2149)
  %add.ptr61.i.6 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %43, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.6, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 7, !1967, !DIExpression(), !2149)
  %add.ptr61.i.7 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %45, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.7, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 8, !1967, !DIExpression(), !2149)
  %add.ptr61.i.8 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %47, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.8, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 9, !1967, !DIExpression(), !2149)
  %add.ptr61.i.9 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %49, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.9, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 10, !1967, !DIExpression(), !2149)
  %add.ptr61.i.10 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %51, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.10, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 11, !1967, !DIExpression(), !2149)
  %add.ptr61.i.11 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %53, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.11, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 12, !1967, !DIExpression(), !2149)
  %add.ptr61.i.12 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %55, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.12, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 13, !1967, !DIExpression(), !2149)
  %add.ptr61.i.13 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %57, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.13, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 14, !1967, !DIExpression(), !2149)
  %add.ptr61.i.14 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %59, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.14, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 15, !1967, !DIExpression(), !2149)
  %add.ptr61.i.15 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %61, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.15, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 16, !1967, !DIExpression(), !2149)
  %add.ptr61.i.16 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %63, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.16, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 17, !1967, !DIExpression(), !2149)
  %add.ptr61.i.17 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %65, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.17, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 18, !1967, !DIExpression(), !2149)
  %add.ptr61.i.18 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %67, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.18, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 19, !1967, !DIExpression(), !2149)
  %add.ptr61.i.19 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %69, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.19, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 20, !1967, !DIExpression(), !2149)
  %add.ptr61.i.20 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %71, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.20, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 21, !1967, !DIExpression(), !2149)
  %add.ptr61.i.21 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %73, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.21, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 22, !1967, !DIExpression(), !2149)
  %add.ptr61.i.22 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %75, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.22, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 23, !1967, !DIExpression(), !2149)
  %add.ptr61.i.23 = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %77, !dbg !2150
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.23, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2151
    #dbg_value(i64 24, !1967, !DIExpression(), !2149)
  br label %plane_expand_border.exit, !dbg !2152

plane_expand_border.exit:                         ; preds = %for.body54.lr.ph.i, %if.end.i
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext16, !dbg !2152
    #dbg_value(ptr %add.ptr17, !1950, !DIExpression(), !2153)
    #dbg_value(i32 %mul15, !1955, !DIExpression(), !2153)
    #dbg_value(i32 %add, !1956, !DIExpression(), !2153)
    #dbg_value(i32 %cond, !1957, !DIExpression(), !2153)
    #dbg_value(i32 28, !1958, !DIExpression(), !2153)
    #dbg_value(i32 24, !1959, !DIExpression(), !2153)
    #dbg_value(i1 %tobool.not, !1960, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2153)
    #dbg_value(i32 %b_end, !1961, !DIExpression(), !2153)
    #dbg_value(i32 0, !1962, !DIExpression(), !2155)
  br i1 %cmp113.i, label %for.body.lr.ph.i73, label %for.cond.cleanup.i48, !dbg !2156

for.body.lr.ph.i73:                               ; preds = %plane_expand_border.exit
  %add.ptr.i74 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr9.i76 = getelementptr i8, ptr %add.ptr17, i64 %idx.ext8.i
  %add.ptr15.i77 = getelementptr i8, ptr %add.ptr9.i76, i64 -1
  br i1 %221, label %for.cond.cleanup.i48.loopexit.unr-lcssa, label %for.body.i79, !dbg !2156

for.cond.cleanup.i48.loopexit.unr-lcssa:          ; preds = %for.body.i79, %for.body.lr.ph.i73
  %indvars.iv.i80.unr = phi i64 [ 0, %for.body.lr.ph.i73 ], [ %indvars.iv.next.i85.3, %for.body.i79 ]
  br i1 %lcmp.mod135.not, label %for.cond.cleanup.i48, label %for.body.i79.epil, !dbg !2156

for.body.i79.epil:                                ; preds = %for.cond.cleanup.i48.loopexit.unr-lcssa, %for.body.i79.epil
  %indvars.iv.i80.epil = phi i64 [ %indvars.iv.next.i85.epil, %for.body.i79.epil ], [ %indvars.iv.i80.unr, %for.cond.cleanup.i48.loopexit.unr-lcssa ]
  %epil.iter134 = phi i64 [ %epil.iter134.next, %for.body.i79.epil ], [ 0, %for.cond.cleanup.i48.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i80.epil, !1962, !DIExpression(), !2155)
  %240 = mul nsw i64 %indvars.iv.i80.epil, %5, !dbg !2157
  %add.ptr2.i81.epil = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %240, !dbg !2157
  %add.ptr6.i82.epil = getelementptr inbounds i8, ptr %add.ptr17, i64 %240, !dbg !2158
  %241 = load i8, ptr %add.ptr6.i82.epil, align 1, !dbg !2158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.epil, i8 %241, i64 28, i1 false), !dbg !2159
  %add.ptr12.i83.epil = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %240, !dbg !2160
  %add.ptr18.i84.epil = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %240, !dbg !2161
  %242 = load i8, ptr %add.ptr18.i84.epil, align 1, !dbg !2161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.epil, i8 %242, i64 28, i1 false), !dbg !2162
  %indvars.iv.next.i85.epil = add nuw nsw i64 %indvars.iv.i80.epil, 1, !dbg !2163
    #dbg_value(i64 %indvars.iv.next.i85.epil, !1962, !DIExpression(), !2155)
  %epil.iter134.next = add i64 %epil.iter134, 1, !dbg !2156
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133, !dbg !2156
  br i1 %epil.iter134.cmp.not, label %for.cond.cleanup.i48, label %for.body.i79.epil, !dbg !2156, !llvm.loop !2164

for.cond.cleanup.i48:                             ; preds = %for.cond.cleanup.i48.loopexit.unr-lcssa, %for.body.i79.epil, %plane_expand_border.exit
    #dbg_value(i32 0, !1964, !DIExpression(), !2165)
  br i1 %tobool.not, label %for.body27.lr.ph.i64, label %if.end.i49, !dbg !2166

for.body27.lr.ph.i64:                             ; preds = %for.cond.cleanup.i48
  %add.ptr30.i65 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
    #dbg_value(i64 0, !1964, !DIExpression(), !2165)
  %add.ptr35.i70 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %78, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 1, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.1 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %79, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.1, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 2, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.2 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %80, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.2, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 3, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.3 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %81, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.3, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 4, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.4 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %82, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.4, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 5, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.5 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %83, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.5, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 6, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.6 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %84, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.6, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 7, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.7 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %85, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.7, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 8, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.8 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %86, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.8, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 9, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.9 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %87, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.9, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 10, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.10 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %88, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.10, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 11, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.11 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %89, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.11, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 12, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.12 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %90, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.12, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 13, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.13 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %91, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.13, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 14, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.14 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %92, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.14, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 15, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.15 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %93, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.15, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 16, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.16 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %94, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.16, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 17, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.17 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %95, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.17, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 18, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.18 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %96, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.18, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 19, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.19 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %97, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.19, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 20, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.20 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %98, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.20, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 21, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.21 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %99, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.21, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 22, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.22 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %100, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.22, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 23, !1964, !DIExpression(), !2165)
  %add.ptr35.i70.23 = getelementptr inbounds i8, ptr %add.ptr30.i65, i64 %101, !dbg !2167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70.23, ptr nonnull align 1 %add.ptr30.i65, i64 %conv43.i, i1 false), !dbg !2168
    #dbg_value(i64 24, !1964, !DIExpression(), !2165)
  br label %if.end.i49, !dbg !2169

for.body.i79:                                     ; preds = %for.body.lr.ph.i73, %for.body.i79
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i85.3, %for.body.i79 ], [ 0, %for.body.lr.ph.i73 ]
  %niter137 = phi i64 [ %niter137.next.3, %for.body.i79 ], [ 0, %for.body.lr.ph.i73 ]
    #dbg_value(i64 %indvars.iv.i80, !1962, !DIExpression(), !2155)
  %243 = mul nsw i64 %indvars.iv.i80, %5, !dbg !2157
  %add.ptr2.i81 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %243, !dbg !2157
  %add.ptr6.i82 = getelementptr inbounds i8, ptr %add.ptr17, i64 %243, !dbg !2158
  %244 = load i8, ptr %add.ptr6.i82, align 1, !dbg !2158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81, i8 %244, i64 28, i1 false), !dbg !2159
  %add.ptr12.i83 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %243, !dbg !2160
  %add.ptr18.i84 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %243, !dbg !2161
  %245 = load i8, ptr %add.ptr18.i84, align 1, !dbg !2161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83, i8 %245, i64 28, i1 false), !dbg !2162
  %indvars.iv.next.i85 = or disjoint i64 %indvars.iv.i80, 1, !dbg !2163
    #dbg_value(i64 %indvars.iv.next.i85, !1962, !DIExpression(), !2155)
  %246 = mul nsw i64 %indvars.iv.next.i85, %5, !dbg !2157
  %add.ptr2.i81.1 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %246, !dbg !2157
  %add.ptr6.i82.1 = getelementptr inbounds i8, ptr %add.ptr17, i64 %246, !dbg !2158
  %247 = load i8, ptr %add.ptr6.i82.1, align 1, !dbg !2158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.1, i8 %247, i64 28, i1 false), !dbg !2159
  %add.ptr12.i83.1 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %246, !dbg !2160
  %add.ptr18.i84.1 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %246, !dbg !2161
  %248 = load i8, ptr %add.ptr18.i84.1, align 1, !dbg !2161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.1, i8 %248, i64 28, i1 false), !dbg !2162
  %indvars.iv.next.i85.1 = or disjoint i64 %indvars.iv.i80, 2, !dbg !2163
    #dbg_value(i64 %indvars.iv.next.i85.1, !1962, !DIExpression(), !2155)
  %249 = mul nsw i64 %indvars.iv.next.i85.1, %5, !dbg !2157
  %add.ptr2.i81.2 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %249, !dbg !2157
  %add.ptr6.i82.2 = getelementptr inbounds i8, ptr %add.ptr17, i64 %249, !dbg !2158
  %250 = load i8, ptr %add.ptr6.i82.2, align 1, !dbg !2158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.2, i8 %250, i64 28, i1 false), !dbg !2159
  %add.ptr12.i83.2 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %249, !dbg !2160
  %add.ptr18.i84.2 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %249, !dbg !2161
  %251 = load i8, ptr %add.ptr18.i84.2, align 1, !dbg !2161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.2, i8 %251, i64 28, i1 false), !dbg !2162
  %indvars.iv.next.i85.2 = or disjoint i64 %indvars.iv.i80, 3, !dbg !2163
    #dbg_value(i64 %indvars.iv.next.i85.2, !1962, !DIExpression(), !2155)
  %252 = mul nsw i64 %indvars.iv.next.i85.2, %5, !dbg !2157
  %add.ptr2.i81.3 = getelementptr inbounds i8, ptr %add.ptr.i74, i64 %252, !dbg !2157
  %add.ptr6.i82.3 = getelementptr inbounds i8, ptr %add.ptr17, i64 %252, !dbg !2158
  %253 = load i8, ptr %add.ptr6.i82.3, align 1, !dbg !2158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i81.3, i8 %253, i64 28, i1 false), !dbg !2159
  %add.ptr12.i83.3 = getelementptr inbounds i8, ptr %add.ptr9.i76, i64 %252, !dbg !2160
  %add.ptr18.i84.3 = getelementptr inbounds i8, ptr %add.ptr15.i77, i64 %252, !dbg !2161
  %254 = load i8, ptr %add.ptr18.i84.3, align 1, !dbg !2161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i83.3, i8 %254, i64 28, i1 false), !dbg !2162
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i80, 4, !dbg !2163
    #dbg_value(i64 %indvars.iv.next.i85.3, !1962, !DIExpression(), !2155)
  %niter137.next.3 = add i64 %niter137, 4, !dbg !2156
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136, !dbg !2156
  br i1 %niter137.ncmp.3, label %for.cond.cleanup.i48.loopexit.unr-lcssa, label %for.body.i79, !dbg !2156, !llvm.loop !2170

if.end.i49:                                       ; preds = %for.body27.lr.ph.i64, %for.cond.cleanup.i48
    #dbg_value(i32 0, !1967, !DIExpression(), !2172)
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i51, !dbg !2169

for.body54.lr.ph.i51:                             ; preds = %if.end.i49
  %add.ptr57.i52 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr68.i56 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %idx.ext67.i
    #dbg_value(i64 0, !1967, !DIExpression(), !2172)
  %add.ptr61.i61 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %102, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 1, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.1 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %104, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.1, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 2, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.2 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %106, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.2, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 3, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.3 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %108, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.3, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 4, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.4 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %110, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.4, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 5, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.5 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %112, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.5, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 6, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.6 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %114, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.6, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 7, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.7 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %116, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.7, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 8, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.8 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %118, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.8, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 9, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.9 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %120, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.9, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 10, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.10 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %122, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.10, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 11, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.11 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %124, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.11, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 12, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.12 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %126, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.12, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 13, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.13 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %128, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.13, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 14, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.14 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %130, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.14, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 15, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.15 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %132, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.15, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 16, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.16 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %134, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.16, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 17, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.17 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %136, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.17, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 18, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.18 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %138, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.18, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 19, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.19 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %140, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.19, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 20, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.20 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %142, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.20, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 21, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.21 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %144, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.21, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 22, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.22 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %146, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.22, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 23, !1967, !DIExpression(), !2172)
  %add.ptr61.i61.23 = getelementptr inbounds i8, ptr %add.ptr57.i52, i64 %148, !dbg !2173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i61.23, ptr nonnull align 1 %add.ptr68.i56, i64 %conv43.i, i1 false), !dbg !2174
    #dbg_value(i64 24, !1967, !DIExpression(), !2172)
  br label %if.end, !dbg !2175

if.else:                                          ; preds = %for.body
    #dbg_value(i32 %0, !1955, !DIExpression(), !2125)
  br i1 %cmp113.i, label %for.body.lr.ph.i114, label %for.cond.cleanup.i89, !dbg !2176

for.body.lr.ph.i114:                              ; preds = %if.else
  %add.ptr.i115 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr9.i117 = getelementptr i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i118 = getelementptr i8, ptr %add.ptr9.i117, i64 -1
  br i1 %222, label %for.cond.cleanup.i89.loopexit.unr-lcssa, label %for.body.i120, !dbg !2176

for.cond.cleanup.i89.loopexit.unr-lcssa:          ; preds = %for.body.i120, %for.body.lr.ph.i114
  %indvars.iv.i121.unr = phi i64 [ 0, %for.body.lr.ph.i114 ], [ %indvars.iv.next.i126.3, %for.body.i120 ]
  br i1 %lcmp.mod140.not, label %for.cond.cleanup.i89, label %for.body.i120.epil, !dbg !2176

for.body.i120.epil:                               ; preds = %for.cond.cleanup.i89.loopexit.unr-lcssa, %for.body.i120.epil
  %indvars.iv.i121.epil = phi i64 [ %indvars.iv.next.i126.epil, %for.body.i120.epil ], [ %indvars.iv.i121.unr, %for.cond.cleanup.i89.loopexit.unr-lcssa ]
  %epil.iter139 = phi i64 [ %epil.iter139.next, %for.body.i120.epil ], [ 0, %for.cond.cleanup.i89.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i121.epil, !1962, !DIExpression(), !2130)
  %255 = mul nsw i64 %indvars.iv.i121.epil, %idx.ext16, !dbg !2177
  %add.ptr2.i122.epil = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %255, !dbg !2177
  %add.ptr6.i123.epil = getelementptr inbounds i8, ptr %add.ptr11, i64 %255, !dbg !2178
  %256 = load i8, ptr %add.ptr6.i123.epil, align 1, !dbg !2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.epil, i8 %256, i64 28, i1 false), !dbg !2179
  %add.ptr12.i124.epil = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %255, !dbg !2180
  %add.ptr18.i125.epil = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %255, !dbg !2181
  %257 = load i8, ptr %add.ptr18.i125.epil, align 1, !dbg !2181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.epil, i8 %257, i64 28, i1 false), !dbg !2182
  %indvars.iv.next.i126.epil = add nuw nsw i64 %indvars.iv.i121.epil, 1, !dbg !2183
    #dbg_value(i64 %indvars.iv.next.i126.epil, !1962, !DIExpression(), !2130)
  %epil.iter139.next = add i64 %epil.iter139, 1, !dbg !2176
  %epil.iter139.cmp.not = icmp eq i64 %epil.iter139.next, %xtraiter138, !dbg !2176
  br i1 %epil.iter139.cmp.not, label %for.cond.cleanup.i89, label %for.body.i120.epil, !dbg !2176, !llvm.loop !2184

for.cond.cleanup.i89:                             ; preds = %for.cond.cleanup.i89.loopexit.unr-lcssa, %for.body.i120.epil, %if.else
    #dbg_value(i32 0, !1964, !DIExpression(), !2185)
  br i1 %tobool.not, label %for.body27.lr.ph.i105, label %if.end.i90, !dbg !2186

for.body27.lr.ph.i105:                            ; preds = %for.cond.cleanup.i89
  %add.ptr30.i106 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
    #dbg_value(i64 0, !1964, !DIExpression(), !2185)
  %add.ptr35.i111 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %149, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 1, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.1 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %150, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.1, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 2, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.2 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %151, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.2, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 3, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.3 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %152, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.3, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 4, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.4 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %153, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.4, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 5, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.5 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %154, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.5, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 6, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.6 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %155, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.6, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 7, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.7 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %156, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.7, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 8, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.8 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %157, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.8, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 9, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.9 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %158, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.9, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 10, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.10 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %159, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.10, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 11, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.11 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %160, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.11, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 12, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.12 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %161, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.12, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 13, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.13 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %162, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.13, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 14, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.14 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %163, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.14, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 15, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.15 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %164, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.15, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 16, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.16 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %165, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.16, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 17, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.17 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %166, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.17, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 18, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.18 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %167, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.18, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 19, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.19 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %168, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.19, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 20, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.20 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %169, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.20, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 21, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.21 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %170, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.21, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 22, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.22 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %171, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.22, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 23, !1964, !DIExpression(), !2185)
  %add.ptr35.i111.23 = getelementptr inbounds i8, ptr %add.ptr30.i106, i64 %172, !dbg !2187
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i111.23, ptr nonnull align 1 %add.ptr30.i106, i64 %conv43.i, i1 false), !dbg !2188
    #dbg_value(i64 24, !1964, !DIExpression(), !2185)
  br label %if.end.i90, !dbg !2189

for.body.i120:                                    ; preds = %for.body.lr.ph.i114, %for.body.i120
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i126.3, %for.body.i120 ], [ 0, %for.body.lr.ph.i114 ]
  %niter142 = phi i64 [ %niter142.next.3, %for.body.i120 ], [ 0, %for.body.lr.ph.i114 ]
    #dbg_value(i64 %indvars.iv.i121, !1962, !DIExpression(), !2130)
  %258 = mul nsw i64 %indvars.iv.i121, %idx.ext16, !dbg !2177
  %add.ptr2.i122 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %258, !dbg !2177
  %add.ptr6.i123 = getelementptr inbounds i8, ptr %add.ptr11, i64 %258, !dbg !2178
  %259 = load i8, ptr %add.ptr6.i123, align 1, !dbg !2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122, i8 %259, i64 28, i1 false), !dbg !2179
  %add.ptr12.i124 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %258, !dbg !2180
  %add.ptr18.i125 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %258, !dbg !2181
  %260 = load i8, ptr %add.ptr18.i125, align 1, !dbg !2181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124, i8 %260, i64 28, i1 false), !dbg !2182
  %indvars.iv.next.i126 = or disjoint i64 %indvars.iv.i121, 1, !dbg !2183
    #dbg_value(i64 %indvars.iv.next.i126, !1962, !DIExpression(), !2130)
  %261 = mul nsw i64 %indvars.iv.next.i126, %idx.ext16, !dbg !2177
  %add.ptr2.i122.1 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %261, !dbg !2177
  %add.ptr6.i123.1 = getelementptr inbounds i8, ptr %add.ptr11, i64 %261, !dbg !2178
  %262 = load i8, ptr %add.ptr6.i123.1, align 1, !dbg !2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.1, i8 %262, i64 28, i1 false), !dbg !2179
  %add.ptr12.i124.1 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %261, !dbg !2180
  %add.ptr18.i125.1 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %261, !dbg !2181
  %263 = load i8, ptr %add.ptr18.i125.1, align 1, !dbg !2181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.1, i8 %263, i64 28, i1 false), !dbg !2182
  %indvars.iv.next.i126.1 = or disjoint i64 %indvars.iv.i121, 2, !dbg !2183
    #dbg_value(i64 %indvars.iv.next.i126.1, !1962, !DIExpression(), !2130)
  %264 = mul nsw i64 %indvars.iv.next.i126.1, %idx.ext16, !dbg !2177
  %add.ptr2.i122.2 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %264, !dbg !2177
  %add.ptr6.i123.2 = getelementptr inbounds i8, ptr %add.ptr11, i64 %264, !dbg !2178
  %265 = load i8, ptr %add.ptr6.i123.2, align 1, !dbg !2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.2, i8 %265, i64 28, i1 false), !dbg !2179
  %add.ptr12.i124.2 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %264, !dbg !2180
  %add.ptr18.i125.2 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %264, !dbg !2181
  %266 = load i8, ptr %add.ptr18.i125.2, align 1, !dbg !2181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.2, i8 %266, i64 28, i1 false), !dbg !2182
  %indvars.iv.next.i126.2 = or disjoint i64 %indvars.iv.i121, 3, !dbg !2183
    #dbg_value(i64 %indvars.iv.next.i126.2, !1962, !DIExpression(), !2130)
  %267 = mul nsw i64 %indvars.iv.next.i126.2, %idx.ext16, !dbg !2177
  %add.ptr2.i122.3 = getelementptr inbounds i8, ptr %add.ptr.i115, i64 %267, !dbg !2177
  %add.ptr6.i123.3 = getelementptr inbounds i8, ptr %add.ptr11, i64 %267, !dbg !2178
  %268 = load i8, ptr %add.ptr6.i123.3, align 1, !dbg !2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i122.3, i8 %268, i64 28, i1 false), !dbg !2179
  %add.ptr12.i124.3 = getelementptr inbounds i8, ptr %add.ptr9.i117, i64 %267, !dbg !2180
  %add.ptr18.i125.3 = getelementptr inbounds i8, ptr %add.ptr15.i118, i64 %267, !dbg !2181
  %269 = load i8, ptr %add.ptr18.i125.3, align 1, !dbg !2181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i124.3, i8 %269, i64 28, i1 false), !dbg !2182
  %indvars.iv.next.i126.3 = add nuw nsw i64 %indvars.iv.i121, 4, !dbg !2183
    #dbg_value(i64 %indvars.iv.next.i126.3, !1962, !DIExpression(), !2130)
  %niter142.next.3 = add i64 %niter142, 4, !dbg !2176
  %niter142.ncmp.3 = icmp eq i64 %niter142.next.3, %unroll_iter141, !dbg !2176
  br i1 %niter142.ncmp.3, label %for.cond.cleanup.i89.loopexit.unr-lcssa, label %for.body.i120, !dbg !2176, !llvm.loop !2190

if.end.i90:                                       ; preds = %for.body27.lr.ph.i105, %for.cond.cleanup.i89
    #dbg_value(i32 0, !1967, !DIExpression(), !2192)
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i92, !dbg !2189

for.body54.lr.ph.i92:                             ; preds = %if.end.i90
  %add.ptr57.i93 = getelementptr inbounds i8, ptr %add.ptr, i64 -32
  %add.ptr68.i97 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %idx.ext67.i96
    #dbg_value(i64 0, !1967, !DIExpression(), !2192)
  %add.ptr61.i102 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %173, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 1, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.1 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %175, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.1, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 2, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.2 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %177, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.2, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 3, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.3 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %179, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.3, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 4, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.4 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %181, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.4, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 5, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.5 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %183, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.5, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 6, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.6 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %185, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.6, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 7, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.7 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %187, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.7, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 8, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.8 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %189, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.8, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 9, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.9 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %191, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.9, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 10, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.10 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %193, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.10, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 11, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.11 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %195, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.11, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 12, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.12 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %197, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.12, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 13, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.13 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %199, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.13, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 14, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.14 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %201, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.14, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 15, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.15 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %203, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.15, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 16, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.16 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %205, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.16, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 17, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.17 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %207, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.17, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 18, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.18 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %209, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.18, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 19, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.19 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %211, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.19, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 20, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.20 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %213, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.20, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 21, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.21 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %215, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.21, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 22, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.22 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %217, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.22, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 23, !1967, !DIExpression(), !2192)
  %add.ptr61.i102.23 = getelementptr inbounds i8, ptr %add.ptr57.i93, i64 %219, !dbg !2193
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i102.23, ptr nonnull align 1 %add.ptr68.i97, i64 %conv43.i, i1 false), !dbg !2194
    #dbg_value(i64 24, !1967, !DIExpression(), !2192)
  br label %if.end, !dbg !2175

if.end:                                           ; preds = %for.body54.lr.ph.i51, %for.body54.lr.ph.i92, %if.end.i90, %if.end.i49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2175
    #dbg_value(i64 %indvars.iv.next, !2092, !DIExpression(), !2112)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2195
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2113, !llvm.loop !2196
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_lowres(ptr nocapture noundef readonly %frame) local_unnamed_addr #4 !dbg !2198 {
entry:
    #dbg_value(ptr %frame, !2200, !DIExpression(), !2203)
    #dbg_value(i32 0, !2201, !DIExpression(), !2204)
  %lowres = getelementptr inbounds i8, ptr %frame, i64 208
  %i_stride_lowres = getelementptr inbounds i8, ptr %frame, i64 140
  %i_width_lowres = getelementptr inbounds i8, ptr %frame, i64 144
  %i_lines_lowres = getelementptr inbounds i8, ptr %frame, i64 148
    #dbg_value(i32 0, !2201, !DIExpression(), !2204)
  br label %for.body, !dbg !2205

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.i
  ret void, !dbg !2206

for.body:                                         ; preds = %entry, %for.cond.cleanup.i
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.cleanup.i ]
    #dbg_value(i64 %indvars.iv, !2201, !DIExpression(), !2204)
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %lowres, i64 0, i64 %indvars.iv, !dbg !2207
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2207
  %1 = load i32, ptr %i_stride_lowres, align 4, !dbg !2209
  %2 = load i32, ptr %i_width_lowres, align 16, !dbg !2210
  %3 = load i32, ptr %i_lines_lowres, align 4, !dbg !2211
    #dbg_value(ptr %0, !1950, !DIExpression(), !2212)
    #dbg_value(i32 %1, !1955, !DIExpression(), !2212)
    #dbg_value(i32 %2, !1956, !DIExpression(), !2212)
    #dbg_value(i32 %3, !1957, !DIExpression(), !2212)
    #dbg_value(i32 32, !1958, !DIExpression(), !2212)
    #dbg_value(i32 32, !1959, !DIExpression(), !2212)
    #dbg_value(i32 1, !1960, !DIExpression(), !2212)
    #dbg_value(i32 1, !1961, !DIExpression(), !2212)
    #dbg_value(i32 0, !1962, !DIExpression(), !2214)
  %cmp113.i = icmp sgt i32 %3, 0, !dbg !2215
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.body.for.cond.cleanup.i_crit_edge, !dbg !2216

for.body.for.cond.cleanup.i_crit_edge:            ; preds = %for.body
  %.pre = sext i32 %1 to i64, !dbg !2217
  br label %for.cond.cleanup.i, !dbg !2216

for.body.lr.ph.i:                                 ; preds = %for.body
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 -32
  %idx.ext8.i = sext i32 %2 to i64
  %add.ptr9.i = getelementptr i8, ptr %0, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr9.i, i64 -1
  %4 = sext i32 %1 to i64, !dbg !2216
  %wide.trip.count.i = zext nneg i32 %3 to i64, !dbg !2215
  %xtraiter = and i64 %wide.trip.count.i, 3, !dbg !2216
  %5 = icmp ult i32 %3, 4, !dbg !2216
  br i1 %5, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.lr.ph.i.new, !dbg !2216

for.body.lr.ph.i.new:                             ; preds = %for.body.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644, !dbg !2216
  br label %for.body.i, !dbg !2216

for.cond.cleanup.i.loopexit.unr-lcssa:            ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.3, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2216
  br i1 %lcmp.mod.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !2216

for.body.i.epil:                                  ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %for.cond.cleanup.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.epil ], [ 0, %for.cond.cleanup.i.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i.epil, !1962, !DIExpression(), !2214)
  %6 = mul nsw i64 %indvars.iv.i.epil, %4, !dbg !2218
  %add.ptr2.i.epil = getelementptr inbounds i8, ptr %add.ptr.i, i64 %6, !dbg !2218
  %add.ptr6.i.epil = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !2219
  %7 = load i8, ptr %add.ptr6.i.epil, align 1, !dbg !2219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.epil, i8 %7, i64 32, i1 false), !dbg !2220
  %add.ptr12.i.epil = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %6, !dbg !2221
  %add.ptr18.i.epil = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %6, !dbg !2222
  %8 = load i8, ptr %add.ptr18.i.epil, align 1, !dbg !2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.epil, i8 %8, i64 32, i1 false), !dbg !2223
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1, !dbg !2224
    #dbg_value(i64 %indvars.iv.next.i.epil, !1962, !DIExpression(), !2214)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2216
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !2216
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.i, label %for.body.i.epil, !dbg !2216, !llvm.loop !2225

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup.i.loopexit.unr-lcssa, %for.body.i.epil, %for.body.for.cond.cleanup.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.body.for.cond.cleanup.i_crit_edge ], [ %4, %for.body.i.epil ], [ %4, %for.cond.cleanup.i.loopexit.unr-lcssa ], !dbg !2217
    #dbg_value(i32 0, !1964, !DIExpression(), !2226)
  %add.ptr30.i = getelementptr inbounds i8, ptr %0, i64 -32
  %add.i = add nsw i32 %2, 64
  %conv43.i = sext i32 %add.i to i64
    #dbg_value(i64 0, !1964, !DIExpression(), !2226)
  %9 = sub nsw i64 0, %.pre-phi, !dbg !2227
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %9, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 1, !1964, !DIExpression(), !2226)
  %10 = mul nsw i64 %.pre-phi, -2, !dbg !2227
  %add.ptr35.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %10, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.1, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 2, !1964, !DIExpression(), !2226)
  %11 = mul nsw i64 %.pre-phi, -3, !dbg !2227
  %add.ptr35.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %11, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.2, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 3, !1964, !DIExpression(), !2226)
  %12 = mul nsw i64 %.pre-phi, -4, !dbg !2227
  %add.ptr35.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %12, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.3, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 4, !1964, !DIExpression(), !2226)
  %13 = mul nsw i64 %.pre-phi, -5, !dbg !2227
  %add.ptr35.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %13, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.4, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 5, !1964, !DIExpression(), !2226)
  %14 = mul nsw i64 %.pre-phi, -6, !dbg !2227
  %add.ptr35.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %14, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.5, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 6, !1964, !DIExpression(), !2226)
  %15 = mul nsw i64 %.pre-phi, -7, !dbg !2227
  %add.ptr35.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %15, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.6, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 7, !1964, !DIExpression(), !2226)
  %16 = mul nsw i64 %.pre-phi, -8, !dbg !2227
  %add.ptr35.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %16, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.7, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 8, !1964, !DIExpression(), !2226)
  %17 = mul nsw i64 %.pre-phi, -9, !dbg !2227
  %add.ptr35.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %17, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.8, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 9, !1964, !DIExpression(), !2226)
  %18 = mul nsw i64 %.pre-phi, -10, !dbg !2227
  %add.ptr35.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %18, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.9, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 10, !1964, !DIExpression(), !2226)
  %19 = mul nsw i64 %.pre-phi, -11, !dbg !2227
  %add.ptr35.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %19, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.10, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 11, !1964, !DIExpression(), !2226)
  %20 = mul nsw i64 %.pre-phi, -12, !dbg !2227
  %add.ptr35.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %20, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.11, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 12, !1964, !DIExpression(), !2226)
  %21 = mul nsw i64 %.pre-phi, -13, !dbg !2227
  %add.ptr35.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %21, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.12, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 13, !1964, !DIExpression(), !2226)
  %22 = mul nsw i64 %.pre-phi, -14, !dbg !2227
  %add.ptr35.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %22, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.13, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 14, !1964, !DIExpression(), !2226)
  %23 = mul nsw i64 %.pre-phi, -15, !dbg !2227
  %add.ptr35.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %23, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.14, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 15, !1964, !DIExpression(), !2226)
  %24 = mul nsw i64 %.pre-phi, -16, !dbg !2227
  %add.ptr35.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %24, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.15, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 16, !1964, !DIExpression(), !2226)
  %25 = mul nsw i64 %.pre-phi, -17, !dbg !2227
  %add.ptr35.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %25, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.16, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 17, !1964, !DIExpression(), !2226)
  %26 = mul nsw i64 %.pre-phi, -18, !dbg !2227
  %add.ptr35.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %26, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.17, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 18, !1964, !DIExpression(), !2226)
  %27 = mul nsw i64 %.pre-phi, -19, !dbg !2227
  %add.ptr35.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %27, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.18, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 19, !1964, !DIExpression(), !2226)
  %28 = mul nsw i64 %.pre-phi, -20, !dbg !2227
  %add.ptr35.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %28, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.19, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 20, !1964, !DIExpression(), !2226)
  %29 = mul nsw i64 %.pre-phi, -21, !dbg !2227
  %add.ptr35.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %29, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.20, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 21, !1964, !DIExpression(), !2226)
  %30 = mul nsw i64 %.pre-phi, -22, !dbg !2227
  %add.ptr35.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %30, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.21, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 22, !1964, !DIExpression(), !2226)
  %31 = mul nsw i64 %.pre-phi, -23, !dbg !2227
  %add.ptr35.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %31, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.22, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 23, !1964, !DIExpression(), !2226)
  %32 = mul nsw i64 %.pre-phi, -24, !dbg !2227
  %add.ptr35.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %32, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.23, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 24, !1964, !DIExpression(), !2226)
  %33 = mul nsw i64 %.pre-phi, -25, !dbg !2227
  %add.ptr35.i.24 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %33, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.24, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 25, !1964, !DIExpression(), !2226)
  %34 = mul nsw i64 %.pre-phi, -26, !dbg !2227
  %add.ptr35.i.25 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %34, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.25, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 26, !1964, !DIExpression(), !2226)
  %35 = mul nsw i64 %.pre-phi, -27, !dbg !2227
  %add.ptr35.i.26 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %35, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.26, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 27, !1964, !DIExpression(), !2226)
  %36 = mul nsw i64 %.pre-phi, -28, !dbg !2227
  %add.ptr35.i.27 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %36, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.27, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 28, !1964, !DIExpression(), !2226)
  %37 = mul nsw i64 %.pre-phi, -29, !dbg !2227
  %add.ptr35.i.28 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %37, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.28, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 29, !1964, !DIExpression(), !2226)
  %38 = mul nsw i64 %.pre-phi, -30, !dbg !2227
  %add.ptr35.i.29 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %38, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.29, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 30, !1964, !DIExpression(), !2226)
  %39 = mul nsw i64 %.pre-phi, -31, !dbg !2227
  %add.ptr35.i.30 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %39, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.30, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 31, !1964, !DIExpression(), !2226)
  %40 = mul nsw i64 %.pre-phi, -32, !dbg !2227
  %add.ptr35.i.31 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %40, !dbg !2227
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i.31, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false), !dbg !2228
    #dbg_value(i64 32, !1964, !DIExpression(), !2226)
    #dbg_value(i32 0, !1967, !DIExpression(), !2229)
  %sub65.i = add nsw i32 %3, -1
  %mul66.i = mul nsw i32 %sub65.i, %1
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %idx.ext67.i
  %41 = sext i32 %3 to i64, !dbg !2230
    #dbg_value(i64 0, !1967, !DIExpression(), !2229)
  %42 = mul nsw i64 %.pre-phi, %41, !dbg !2231
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %42, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 1, !1967, !DIExpression(), !2229)
  %43 = add nsw i64 %41, 1, !dbg !2231
  %44 = mul nsw i64 %43, %.pre-phi, !dbg !2231
  %add.ptr61.i.1 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %44, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.1, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 2, !1967, !DIExpression(), !2229)
  %45 = add nsw i64 %41, 2, !dbg !2231
  %46 = mul nsw i64 %45, %.pre-phi, !dbg !2231
  %add.ptr61.i.2 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %46, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.2, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 3, !1967, !DIExpression(), !2229)
  %47 = add nsw i64 %41, 3, !dbg !2231
  %48 = mul nsw i64 %47, %.pre-phi, !dbg !2231
  %add.ptr61.i.3 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %48, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.3, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 4, !1967, !DIExpression(), !2229)
  %49 = add nsw i64 %41, 4, !dbg !2231
  %50 = mul nsw i64 %49, %.pre-phi, !dbg !2231
  %add.ptr61.i.4 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %50, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.4, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 5, !1967, !DIExpression(), !2229)
  %51 = add nsw i64 %41, 5, !dbg !2231
  %52 = mul nsw i64 %51, %.pre-phi, !dbg !2231
  %add.ptr61.i.5 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %52, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.5, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 6, !1967, !DIExpression(), !2229)
  %53 = add nsw i64 %41, 6, !dbg !2231
  %54 = mul nsw i64 %53, %.pre-phi, !dbg !2231
  %add.ptr61.i.6 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %54, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.6, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 7, !1967, !DIExpression(), !2229)
  %55 = add nsw i64 %41, 7, !dbg !2231
  %56 = mul nsw i64 %55, %.pre-phi, !dbg !2231
  %add.ptr61.i.7 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %56, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.7, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 8, !1967, !DIExpression(), !2229)
  %57 = add nsw i64 %41, 8, !dbg !2231
  %58 = mul nsw i64 %57, %.pre-phi, !dbg !2231
  %add.ptr61.i.8 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %58, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.8, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 9, !1967, !DIExpression(), !2229)
  %59 = add nsw i64 %41, 9, !dbg !2231
  %60 = mul nsw i64 %59, %.pre-phi, !dbg !2231
  %add.ptr61.i.9 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %60, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.9, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 10, !1967, !DIExpression(), !2229)
  %61 = add nsw i64 %41, 10, !dbg !2231
  %62 = mul nsw i64 %61, %.pre-phi, !dbg !2231
  %add.ptr61.i.10 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %62, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.10, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 11, !1967, !DIExpression(), !2229)
  %63 = add nsw i64 %41, 11, !dbg !2231
  %64 = mul nsw i64 %63, %.pre-phi, !dbg !2231
  %add.ptr61.i.11 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %64, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.11, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 12, !1967, !DIExpression(), !2229)
  %65 = add nsw i64 %41, 12, !dbg !2231
  %66 = mul nsw i64 %65, %.pre-phi, !dbg !2231
  %add.ptr61.i.12 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %66, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.12, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 13, !1967, !DIExpression(), !2229)
  %67 = add nsw i64 %41, 13, !dbg !2231
  %68 = mul nsw i64 %67, %.pre-phi, !dbg !2231
  %add.ptr61.i.13 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %68, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.13, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 14, !1967, !DIExpression(), !2229)
  %69 = add nsw i64 %41, 14, !dbg !2231
  %70 = mul nsw i64 %69, %.pre-phi, !dbg !2231
  %add.ptr61.i.14 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %70, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.14, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 15, !1967, !DIExpression(), !2229)
  %71 = add nsw i64 %41, 15, !dbg !2231
  %72 = mul nsw i64 %71, %.pre-phi, !dbg !2231
  %add.ptr61.i.15 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %72, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.15, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 16, !1967, !DIExpression(), !2229)
  %73 = add nsw i64 %41, 16, !dbg !2231
  %74 = mul nsw i64 %73, %.pre-phi, !dbg !2231
  %add.ptr61.i.16 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %74, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.16, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 17, !1967, !DIExpression(), !2229)
  %75 = add nsw i64 %41, 17, !dbg !2231
  %76 = mul nsw i64 %75, %.pre-phi, !dbg !2231
  %add.ptr61.i.17 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %76, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.17, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 18, !1967, !DIExpression(), !2229)
  %77 = add nsw i64 %41, 18, !dbg !2231
  %78 = mul nsw i64 %77, %.pre-phi, !dbg !2231
  %add.ptr61.i.18 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %78, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.18, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 19, !1967, !DIExpression(), !2229)
  %79 = add nsw i64 %41, 19, !dbg !2231
  %80 = mul nsw i64 %79, %.pre-phi, !dbg !2231
  %add.ptr61.i.19 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %80, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.19, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 20, !1967, !DIExpression(), !2229)
  %81 = add nsw i64 %41, 20, !dbg !2231
  %82 = mul nsw i64 %81, %.pre-phi, !dbg !2231
  %add.ptr61.i.20 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %82, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.20, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 21, !1967, !DIExpression(), !2229)
  %83 = add nsw i64 %41, 21, !dbg !2231
  %84 = mul nsw i64 %83, %.pre-phi, !dbg !2231
  %add.ptr61.i.21 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %84, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.21, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 22, !1967, !DIExpression(), !2229)
  %85 = add nsw i64 %41, 22, !dbg !2231
  %86 = mul nsw i64 %85, %.pre-phi, !dbg !2231
  %add.ptr61.i.22 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %86, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.22, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 23, !1967, !DIExpression(), !2229)
  %87 = add nsw i64 %41, 23, !dbg !2231
  %88 = mul nsw i64 %87, %.pre-phi, !dbg !2231
  %add.ptr61.i.23 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %88, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.23, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 24, !1967, !DIExpression(), !2229)
  %89 = add nsw i64 %41, 24, !dbg !2231
  %90 = mul nsw i64 %89, %.pre-phi, !dbg !2231
  %add.ptr61.i.24 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %90, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.24, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 25, !1967, !DIExpression(), !2229)
  %91 = add nsw i64 %41, 25, !dbg !2231
  %92 = mul nsw i64 %91, %.pre-phi, !dbg !2231
  %add.ptr61.i.25 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %92, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.25, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 26, !1967, !DIExpression(), !2229)
  %93 = add nsw i64 %41, 26, !dbg !2231
  %94 = mul nsw i64 %93, %.pre-phi, !dbg !2231
  %add.ptr61.i.26 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %94, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.26, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 27, !1967, !DIExpression(), !2229)
  %95 = add nsw i64 %41, 27, !dbg !2231
  %96 = mul nsw i64 %95, %.pre-phi, !dbg !2231
  %add.ptr61.i.27 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %96, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.27, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 28, !1967, !DIExpression(), !2229)
  %97 = add nsw i64 %41, 28, !dbg !2231
  %98 = mul nsw i64 %97, %.pre-phi, !dbg !2231
  %add.ptr61.i.28 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %98, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.28, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 29, !1967, !DIExpression(), !2229)
  %99 = add nsw i64 %41, 29, !dbg !2231
  %100 = mul nsw i64 %99, %.pre-phi, !dbg !2231
  %add.ptr61.i.29 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %100, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.29, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 30, !1967, !DIExpression(), !2229)
  %101 = add nsw i64 %41, 30, !dbg !2231
  %102 = mul nsw i64 %101, %.pre-phi, !dbg !2231
  %add.ptr61.i.30 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %102, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.30, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 31, !1967, !DIExpression(), !2229)
  %103 = add nsw i64 %41, 31, !dbg !2231
  %104 = mul nsw i64 %103, %.pre-phi, !dbg !2231
  %add.ptr61.i.31 = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %104, !dbg !2231
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i.31, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false), !dbg !2232
    #dbg_value(i64 32, !1967, !DIExpression(), !2229)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2233
    #dbg_value(i64 %indvars.iv.next, !2201, !DIExpression(), !2204)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2234
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2205, !llvm.loop !2235

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %indvars.iv.next.i.3, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i.new ], [ %niter.next.3, %for.body.i ]
    #dbg_value(i64 %indvars.iv.i, !1962, !DIExpression(), !2214)
  %105 = mul nsw i64 %indvars.iv.i, %4, !dbg !2218
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %105, !dbg !2218
  %add.ptr6.i = getelementptr inbounds i8, ptr %0, i64 %105, !dbg !2219
  %106 = load i8, ptr %add.ptr6.i, align 1, !dbg !2219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i, i8 %106, i64 32, i1 false), !dbg !2220
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %105, !dbg !2221
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %105, !dbg !2222
  %107 = load i8, ptr %add.ptr18.i, align 1, !dbg !2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i, i8 %107, i64 32, i1 false), !dbg !2223
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1, !dbg !2224
    #dbg_value(i64 %indvars.iv.next.i, !1962, !DIExpression(), !2214)
  %108 = mul nsw i64 %indvars.iv.next.i, %4, !dbg !2218
  %add.ptr2.i.1 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %108, !dbg !2218
  %add.ptr6.i.1 = getelementptr inbounds i8, ptr %0, i64 %108, !dbg !2219
  %109 = load i8, ptr %add.ptr6.i.1, align 1, !dbg !2219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.1, i8 %109, i64 32, i1 false), !dbg !2220
  %add.ptr12.i.1 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %108, !dbg !2221
  %add.ptr18.i.1 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %108, !dbg !2222
  %110 = load i8, ptr %add.ptr18.i.1, align 1, !dbg !2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.1, i8 %110, i64 32, i1 false), !dbg !2223
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2, !dbg !2224
    #dbg_value(i64 %indvars.iv.next.i.1, !1962, !DIExpression(), !2214)
  %111 = mul nsw i64 %indvars.iv.next.i.1, %4, !dbg !2218
  %add.ptr2.i.2 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %111, !dbg !2218
  %add.ptr6.i.2 = getelementptr inbounds i8, ptr %0, i64 %111, !dbg !2219
  %112 = load i8, ptr %add.ptr6.i.2, align 1, !dbg !2219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.2, i8 %112, i64 32, i1 false), !dbg !2220
  %add.ptr12.i.2 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %111, !dbg !2221
  %add.ptr18.i.2 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %111, !dbg !2222
  %113 = load i8, ptr %add.ptr18.i.2, align 1, !dbg !2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.2, i8 %113, i64 32, i1 false), !dbg !2223
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3, !dbg !2224
    #dbg_value(i64 %indvars.iv.next.i.2, !1962, !DIExpression(), !2214)
  %114 = mul nsw i64 %indvars.iv.next.i.2, %4, !dbg !2218
  %add.ptr2.i.3 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %114, !dbg !2218
  %add.ptr6.i.3 = getelementptr inbounds i8, ptr %0, i64 %114, !dbg !2219
  %115 = load i8, ptr %add.ptr6.i.3, align 1, !dbg !2219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i.3, i8 %115, i64 32, i1 false), !dbg !2220
  %add.ptr12.i.3 = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %114, !dbg !2221
  %add.ptr18.i.3 = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %114, !dbg !2222
  %116 = load i8, ptr %add.ptr18.i.3, align 1, !dbg !2222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i.3, i8 %116, i64 32, i1 false), !dbg !2223
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !2224
    #dbg_value(i64 %indvars.iv.next.i.3, !1962, !DIExpression(), !2214)
  %niter.next.3 = add i64 %niter, 4, !dbg !2216
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2216
  br i1 %niter.ncmp.3, label %for.cond.cleanup.i.loopexit.unr-lcssa, label %for.body.i, !dbg !2216, !llvm.loop !2237
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_mod16(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame) local_unnamed_addr #4 !dbg !2239 {
entry:
    #dbg_value(ptr %h, !2243, !DIExpression(), !2262)
    #dbg_value(ptr %frame, !2244, !DIExpression(), !2262)
    #dbg_value(i32 0, !2245, !DIExpression(), !2263)
  %i_plane = getelementptr inbounds i8, ptr %frame, i64 100
    #dbg_value(i32 0, !2245, !DIExpression(), !2263)
  %0 = load i32, ptr %i_plane, align 4, !dbg !2264
  %cmp120 = icmp sgt i32 %0, 0, !dbg !2265
  br i1 %cmp120, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !2266

for.body.lr.ph:                                   ; preds = %entry
  %i_width1 = getelementptr inbounds i8, ptr %h, i64 20
  %i_height3 = getelementptr inbounds i8, ptr %h, i64 24
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %plane = getelementptr inbounds i8, ptr %frame, i64 152
  %i_stride = getelementptr inbounds i8, ptr %frame, i64 104
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  br label %for.body, !dbg !2266

for.cond.cleanup:                                 ; preds = %if.end71, %entry
  ret void, !dbg !2267

for.body:                                         ; preds = %for.body.lr.ph, %if.end71
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end71 ]
    #dbg_value(i64 %indvars.iv, !2245, !DIExpression(), !2263)
  %tobool.not = icmp ne i64 %indvars.iv, 0, !dbg !2268
  %cond = zext i1 %tobool.not to i32, !dbg !2268
    #dbg_value(i32 %cond, !2247, !DIExpression(), !2269)
  %1 = load i32, ptr %i_width1, align 4, !dbg !2270
  %shr = ashr i32 %1, %cond, !dbg !2271
    #dbg_value(i32 %shr, !2250, !DIExpression(), !2269)
  %2 = load i32, ptr %i_height3, align 8, !dbg !2272
  %shr4 = ashr i32 %2, %cond, !dbg !2273
    #dbg_value(i32 %shr4, !2251, !DIExpression(), !2269)
  %3 = load ptr, ptr %sps, align 16, !dbg !2274
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084, !dbg !2275
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !2275
  %mul = shl nsw i32 %4, 4, !dbg !2276
  %sub = sub nsw i32 %mul, %1, !dbg !2277
  %shr7 = ashr i32 %sub, %cond, !dbg !2278
    #dbg_value(i32 %shr7, !2252, !DIExpression(), !2269)
  %i_mb_height = getelementptr inbounds i8, ptr %3, i64 1088, !dbg !2279
  %5 = load i32, ptr %i_mb_height, align 4, !dbg !2279
  %mul9 = shl nsw i32 %5, 4, !dbg !2280
  %sub12 = sub nsw i32 %mul9, %2, !dbg !2281
  %shr13 = ashr i32 %sub12, %cond, !dbg !2282
    #dbg_value(i32 %shr13, !2253, !DIExpression(), !2269)
  %tobool14.not = icmp ne i32 %shr7, 0, !dbg !2283
    #dbg_value(i32 0, !2254, !DIExpression(), !2284)
  %cmp16116 = icmp sgt i32 %shr4, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp16116, i1 false, !dbg !2285
  br i1 %or.cond, label %for.body18.lr.ph, label %if.end, !dbg !2285

for.body18.lr.ph:                                 ; preds = %for.body
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv
  %arrayidx20 = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv
  %conv35 = sext i32 %shr7 to i64
  %xtraiter = and i32 %shr4, 1, !dbg !2286
  %6 = icmp eq i32 %shr4, 1, !dbg !2286
  br i1 %6, label %if.end.loopexit.unr-lcssa, label %for.body18.lr.ph.new, !dbg !2286

for.body18.lr.ph.new:                             ; preds = %for.body18.lr.ph
  %unroll_iter = and i32 %shr4, 2147483646, !dbg !2286
  br label %for.body18, !dbg !2286

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph.new
  %y.0117 = phi i32 [ 0, %for.body18.lr.ph.new ], [ %inc.1, %for.body18 ]
  %niter = phi i32 [ 0, %for.body18.lr.ph.new ], [ %niter.next.1, %for.body18 ]
    #dbg_value(i32 %y.0117, !2254, !DIExpression(), !2284)
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2287
  %8 = load i32, ptr %arrayidx20, align 4, !dbg !2289
  %mul21 = mul nsw i32 %8, %y.0117, !dbg !2290
  %add = add nsw i32 %mul21, %shr, !dbg !2291
  %idxprom22 = sext i32 %add to i64, !dbg !2287
  %arrayidx23 = getelementptr i8, ptr %7, i64 %idxprom22, !dbg !2287
  %arrayidx34 = getelementptr i8, ptr %arrayidx23, i64 -1, !dbg !2292
  %9 = load i8, ptr %arrayidx34, align 1, !dbg !2292
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23, i8 %9, i64 %conv35, i1 false), !dbg !2293
  %inc = or disjoint i32 %y.0117, 1, !dbg !2294
    #dbg_value(i32 %inc, !2254, !DIExpression(), !2284)
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !2287
  %11 = load i32, ptr %arrayidx20, align 4, !dbg !2289
  %mul21.1 = mul nsw i32 %11, %inc, !dbg !2290
  %add.1 = add nsw i32 %mul21.1, %shr, !dbg !2291
  %idxprom22.1 = sext i32 %add.1 to i64, !dbg !2287
  %arrayidx23.1 = getelementptr i8, ptr %10, i64 %idxprom22.1, !dbg !2287
  %arrayidx34.1 = getelementptr i8, ptr %arrayidx23.1, i64 -1, !dbg !2292
  %12 = load i8, ptr %arrayidx34.1, align 1, !dbg !2292
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23.1, i8 %12, i64 %conv35, i1 false), !dbg !2293
  %inc.1 = add nuw nsw i32 %y.0117, 2, !dbg !2294
    #dbg_value(i32 %inc.1, !2254, !DIExpression(), !2284)
  %niter.next.1 = add i32 %niter, 2, !dbg !2286
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter, !dbg !2286
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body18, !dbg !2286, !llvm.loop !2295

if.end.loopexit.unr-lcssa:                        ; preds = %for.body18, %for.body18.lr.ph
  %y.0117.unr = phi i32 [ 0, %for.body18.lr.ph ], [ %inc.1, %for.body18 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2286
  br i1 %lcmp.mod.not, label %if.end, label %for.body18.epil, !dbg !2286

for.body18.epil:                                  ; preds = %if.end.loopexit.unr-lcssa
    #dbg_value(i32 %y.0117.unr, !2254, !DIExpression(), !2284)
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !2287
  %14 = load i32, ptr %arrayidx20, align 4, !dbg !2289
  %mul21.epil = mul nsw i32 %14, %y.0117.unr, !dbg !2290
  %add.epil = add nsw i32 %mul21.epil, %shr, !dbg !2291
  %idxprom22.epil = sext i32 %add.epil to i64, !dbg !2287
  %arrayidx23.epil = getelementptr i8, ptr %13, i64 %idxprom22.epil, !dbg !2287
  %arrayidx34.epil = getelementptr i8, ptr %arrayidx23.epil, i64 -1, !dbg !2292
  %15 = load i8, ptr %arrayidx34.epil, align 1, !dbg !2292
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23.epil, i8 %15, i64 %conv35, i1 false), !dbg !2293
    #dbg_value(i32 %y.0117.unr, !2254, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2284)
  br label %if.end, !dbg !2297

if.end:                                           ; preds = %for.body18.epil, %if.end.loopexit.unr-lcssa, %for.body
  %tobool36.not = icmp eq i32 %shr13, 0, !dbg !2297
  br i1 %tobool36.not, label %if.end71, label %for.cond39.preheader, !dbg !2298

for.cond39.preheader:                             ; preds = %if.end
  %add40 = add nsw i32 %shr13, %shr4
    #dbg_value(i32 %shr4, !2258, !DIExpression(), !2299)
  %cmp41118 = icmp sgt i32 %shr13, 0, !dbg !2300
  br i1 %cmp41118, label %for.body44.lr.ph, label %if.end71, !dbg !2302

for.body44.lr.ph:                                 ; preds = %for.cond39.preheader
  %arrayidx47 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %indvars.iv
  %arrayidx50 = getelementptr inbounds [3 x i32], ptr %i_stride, i64 0, i64 %indvars.iv
  %add66 = add nsw i32 %shr7, %shr
  %conv67 = sext i32 %add66 to i64
  br label %for.body44, !dbg !2302

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %y38.0119 = phi i32 [ %shr4, %for.body44.lr.ph ], [ %inc69, %for.body44 ]
    #dbg_value(i32 %y38.0119, !2258, !DIExpression(), !2299)
  %16 = load ptr, ptr %arrayidx47, align 8, !dbg !2303
  %17 = load i32, ptr %arrayidx50, align 4, !dbg !2304
  %mul51 = mul nsw i32 %17, %y38.0119, !dbg !2305
  %idxprom52 = sext i32 %mul51 to i64, !dbg !2303
  %arrayidx53 = getelementptr inbounds i8, ptr %16, i64 %idxprom52, !dbg !2303
  %18 = load i32, ptr %b_interlaced, align 8, !dbg !2306
  %.not = xor i32 %18, -1, !dbg !2307
  %19 = or i32 %y38.0119, %.not, !dbg !2307
  %sub59 = add i32 %19, %shr4, !dbg !2307
  %mul63 = mul nsw i32 %sub59, %17, !dbg !2308
  %idxprom64 = sext i32 %mul63 to i64, !dbg !2309
  %arrayidx65 = getelementptr inbounds i8, ptr %16, i64 %idxprom64, !dbg !2309
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx53, ptr align 1 %arrayidx65, i64 %conv67, i1 false), !dbg !2310
  %inc69 = add nsw i32 %y38.0119, 1, !dbg !2311
    #dbg_value(i32 %inc69, !2258, !DIExpression(), !2299)
  %cmp41 = icmp slt i32 %inc69, %add40, !dbg !2300
  br i1 %cmp41, label %for.body44, label %if.end71, !dbg !2302, !llvm.loop !2312

if.end71:                                         ; preds = %for.body44, %for.cond39.preheader, %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2314
    #dbg_value(i64 %indvars.iv.next, !2245, !DIExpression(), !2263)
  %20 = load i32, ptr %i_plane, align 4, !dbg !2264
  %21 = sext i32 %20 to i64, !dbg !2265
  %cmp = icmp slt i64 %indvars.iv.next, %21, !dbg !2265
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !2266, !llvm.loop !2315
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_frame_cond_broadcast(ptr nocapture noundef writeonly %frame, i32 noundef %i_lines_completed) local_unnamed_addr #6 !dbg !2317 {
entry:
    #dbg_value(ptr %frame, !2321, !DIExpression(), !2323)
    #dbg_value(i32 %i_lines_completed, !2322, !DIExpression(), !2323)
  %i_lines_completed1 = getelementptr inbounds i8, ptr %frame, i64 15592, !dbg !2324
  store i32 %i_lines_completed, ptr %i_lines_completed1, align 8, !dbg !2325
  ret void, !dbg !2326
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @x264_frame_cond_wait(ptr nocapture noundef readonly %frame, i32 noundef %i_lines_completed) local_unnamed_addr #7 !dbg !2327 {
entry:
    #dbg_value(ptr %frame, !2329, !DIExpression(), !2331)
    #dbg_value(i32 %i_lines_completed, !2330, !DIExpression(), !2331)
  %i_lines_completed1 = getelementptr inbounds i8, ptr %frame, i64 15592
  %0 = load i32, ptr %i_lines_completed1, align 8
  %cmp = icmp slt i32 %0, %i_lines_completed
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2332, !llvm.loop !2333

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond, !dbg !2332

while.end:                                        ; preds = %entry
  ret void, !dbg !2335
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_push(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 !dbg !2336 {
entry:
    #dbg_value(ptr %list, !2340, !DIExpression(), !2343)
    #dbg_value(ptr %frame, !2341, !DIExpression(), !2343)
    #dbg_value(i32 0, !2342, !DIExpression(), !2343)
  br label %while.cond, !dbg !2344

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2343
    #dbg_value(i64 %indvars.iv, !2342, !DIExpression(), !2343)
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv, !dbg !2345
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2345
  %tobool.not = icmp eq ptr %0, null, !dbg !2344
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2346
    #dbg_value(i64 %indvars.iv.next, !2342, !DIExpression(), !2343)
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !2344, !llvm.loop !2347

while.end:                                        ; preds = %while.cond
  %arrayidx.le = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv
  store ptr %frame, ptr %arrayidx.le, align 8, !dbg !2348
  ret void, !dbg !2349
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_pop(ptr nocapture noundef %list) local_unnamed_addr #8 !dbg !2350 {
entry:
    #dbg_value(ptr %list, !2354, !DIExpression(), !2357)
    #dbg_value(i32 0, !2356, !DIExpression(), !2357)
  br label %while.cond, !dbg !2358

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2357
    #dbg_value(i64 %indvars.iv, !2356, !DIExpression(), !2357)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2359
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2360
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2360
  %tobool.not = icmp eq ptr %0, null, !dbg !2358
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !2358, !llvm.loop !2361

while.end:                                        ; preds = %while.cond
  %idxprom1 = and i64 %indvars.iv, 4294967295, !dbg !2363
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %idxprom1, !dbg !2363
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !2363
    #dbg_value(ptr %1, !2355, !DIExpression(), !2357)
  store ptr null, ptr %arrayidx2, align 8, !dbg !2364
  ret ptr %1, !dbg !2365
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_unshift(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 !dbg !2366 {
entry:
    #dbg_value(ptr %list, !2368, !DIExpression(), !2371)
    #dbg_value(ptr %frame, !2369, !DIExpression(), !2371)
    #dbg_value(i32 0, !2370, !DIExpression(), !2371)
  br label %while.cond, !dbg !2372

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2371
    #dbg_value(i64 %indvars.iv, !2370, !DIExpression(), !2371)
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv, !dbg !2373
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2373
  %tobool.not = icmp eq ptr %0, null, !dbg !2372
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2374
    #dbg_value(i64 %indvars.iv.next, !2370, !DIExpression(), !2371)
  br i1 %tobool.not, label %while.cond1.preheader, label %while.cond, !dbg !2372, !llvm.loop !2375

while.cond1.preheader:                            ; preds = %while.cond
    #dbg_value(i64 %indvars.iv, !2370, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2371)
  %tobool2.not17 = icmp eq i64 %indvars.iv, 0, !dbg !2376
  br i1 %tobool2.not17, label %while.end8, label %while.body3.preheader, !dbg !2376

while.body3.preheader:                            ; preds = %while.cond1.preheader
  %min.iters.check = icmp ult i64 %indvars.iv, 8, !dbg !2376
  br i1 %min.iters.check, label %while.body3.preheader36, label %vector.ph, !dbg !2376

vector.ph:                                        ; preds = %while.body3.preheader
  %n.vec = and i64 %indvars.iv, 9223372036854775800, !dbg !2376
  %ind.end = and i64 %indvars.iv, 7, !dbg !2376
  br label %vector.body, !dbg !2376

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %indvars.iv, %index, !dbg !2376
  %1 = getelementptr ptr, ptr %list, i64 %offset.idx, !dbg !2377
  %2 = getelementptr i8, ptr %1, i64 -16, !dbg !2377
  %3 = getelementptr i8, ptr %1, i64 -32, !dbg !2377
  %4 = getelementptr i8, ptr %1, i64 -48, !dbg !2377
  %5 = getelementptr i8, ptr %1, i64 -64, !dbg !2377
  %wide.load = load <2 x ptr>, ptr %2, align 8, !dbg !2377
  %wide.load26 = load <2 x ptr>, ptr %3, align 8, !dbg !2377
  %wide.load28 = load <2 x ptr>, ptr %4, align 8, !dbg !2377
  %wide.load30 = load <2 x ptr>, ptr %5, align 8, !dbg !2377
  %6 = getelementptr inbounds ptr, ptr %list, i64 %offset.idx, !dbg !2378
  %7 = getelementptr inbounds i8, ptr %6, i64 -8, !dbg !2379
  %8 = getelementptr inbounds i8, ptr %6, i64 -24, !dbg !2379
  %9 = getelementptr inbounds i8, ptr %6, i64 -40, !dbg !2379
  %10 = getelementptr inbounds i8, ptr %6, i64 -56, !dbg !2379
  store <2 x ptr> %wide.load, ptr %7, align 8, !dbg !2379
  store <2 x ptr> %wide.load26, ptr %8, align 8, !dbg !2379
  store <2 x ptr> %wide.load28, ptr %9, align 8, !dbg !2379
  store <2 x ptr> %wide.load30, ptr %10, align 8, !dbg !2379
  %index.next = add nuw i64 %index, 8
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !2380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv, %n.vec, !dbg !2376
  br i1 %cmp.n, label %while.end8, label %while.body3.preheader36, !dbg !2376

while.body3.preheader36:                          ; preds = %middle.block, %while.body3.preheader
  %indvars.iv23.ph = phi i64 [ %indvars.iv, %while.body3.preheader ], [ %ind.end, %middle.block ]
  br label %while.body3, !dbg !2376

while.body3:                                      ; preds = %while.body3.preheader36, %while.body3
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %while.body3 ], [ %indvars.iv23.ph, %while.body3.preheader36 ]
    #dbg_value(i64 %indvars.iv23, !2370, !DIExpression(), !2371)
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1, !dbg !2384
    #dbg_value(i64 %indvars.iv.next24, !2370, !DIExpression(), !2371)
  %arrayidx5 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next24, !dbg !2377
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !2377
  %arrayidx7 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv23, !dbg !2378
  store ptr %12, ptr %arrayidx7, align 8, !dbg !2379
    #dbg_value(i64 %indvars.iv.next24, !2370, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2371)
  %13 = icmp eq i64 %indvars.iv.next24, 0, !dbg !2376
  br i1 %13, label %while.end8, label %while.body3, !dbg !2376, !llvm.loop !2385

while.end8:                                       ; preds = %while.body3, %middle.block, %while.cond1.preheader
  store ptr %frame, ptr %list, align 8, !dbg !2386
  ret void, !dbg !2387
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_shift(ptr nocapture noundef %list) local_unnamed_addr #8 !dbg !2388 {
entry:
    #dbg_value(ptr %list, !2390, !DIExpression(), !2393)
  %0 = load ptr, ptr %list, align 8, !dbg !2394
    #dbg_value(ptr %0, !2391, !DIExpression(), !2393)
    #dbg_value(i32 0, !2392, !DIExpression(), !2393)
  %tobool.not12 = icmp eq ptr %0, null, !dbg !2395
  br i1 %tobool.not12, label %for.end, label %for.body, !dbg !2395

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx114 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv, !dbg !2397
    #dbg_value(i64 %indvars.iv, !2392, !DIExpression(), !2393)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2397
  %arrayidx3 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2399
  %1 = load ptr, ptr %arrayidx3, align 8, !dbg !2399
  store ptr %1, ptr %arrayidx114, align 8, !dbg !2400
    #dbg_value(i64 %indvars.iv.next, !2392, !DIExpression(), !2393)
  %tobool.not = icmp eq ptr %1, null, !dbg !2395
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !2395, !llvm.loop !2401

for.end:                                          ; preds = %for.body, %entry
  ret ptr %0, !dbg !2403
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #4 !dbg !2404 {
entry:
    #dbg_value(ptr %h, !2406, !DIExpression(), !2408)
    #dbg_value(ptr %frame, !2407, !DIExpression(), !2408)
  %i_reference_count = getelementptr inbounds i8, ptr %frame, i64 15600, !dbg !2409
  %0 = load i32, ptr %i_reference_count, align 16, !dbg !2410
  %dec = add nsw i32 %0, -1, !dbg !2410
  store i32 %dec, ptr %i_reference_count, align 16, !dbg !2410
  %cmp = icmp eq i32 %dec, 0, !dbg !2411
  br i1 %cmp, label %if.then, label %if.end, !dbg !2413

if.then:                                          ; preds = %entry
  %unused = getelementptr inbounds i8, ptr %h, i64 14424, !dbg !2414
  %b_fdec = getelementptr inbounds i8, ptr %frame, i64 84, !dbg !2415
  %1 = load i8, ptr %b_fdec, align 4, !dbg !2415
  %idxprom = zext i8 %1 to i64, !dbg !2416
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %unused, i64 0, i64 %idxprom, !dbg !2416
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2416
    #dbg_value(ptr %2, !2340, !DIExpression(), !2417)
    #dbg_value(ptr %frame, !2341, !DIExpression(), !2417)
    #dbg_value(i32 0, !2342, !DIExpression(), !2417)
  br label %while.cond.i, !dbg !2419

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ], !dbg !2417
    #dbg_value(i64 %indvars.iv.i, !2342, !DIExpression(), !2417)
  %arrayidx.i = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.i, !dbg !2420
  %3 = load ptr, ptr %arrayidx.i, align 8, !dbg !2420
  %tobool.not.i = icmp eq ptr %3, null, !dbg !2419
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2421
    #dbg_value(i64 %indvars.iv.next.i, !2342, !DIExpression(), !2417)
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i, !dbg !2419, !llvm.loop !2422

x264_frame_push.exit:                             ; preds = %while.cond.i
  %arrayidx.i.le = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.i
  store ptr %frame, ptr %arrayidx.i.le, align 8, !dbg !2423
  br label %if.end, !dbg !2424

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_unused(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 !dbg !2426 {
entry:
    #dbg_value(ptr %h, !2428, !DIExpression(), !2431)
    #dbg_value(i32 %b_fdec, !2429, !DIExpression(), !2431)
  %unused = getelementptr inbounds i8, ptr %h, i64 14424, !dbg !2432
  %idxprom = sext i32 %b_fdec to i64, !dbg !2434
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %unused, i64 0, i64 %idxprom, !dbg !2434
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2434
  %1 = load ptr, ptr %0, align 8, !dbg !2434
  %tobool.not = icmp eq ptr %1, null, !dbg !2434
  br i1 %tobool.not, label %if.else, label %while.cond.i, !dbg !2435

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ], !dbg !2436
    #dbg_value(i64 %indvars.iv.i, !2356, !DIExpression(), !2436)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2438
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2439
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2439
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2440
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i, !dbg !2440, !llvm.loop !2441

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295, !dbg !2443
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i, !dbg !2443
  %3 = load ptr, ptr %arrayidx2.i, align 8, !dbg !2443
    #dbg_value(ptr %3, !2355, !DIExpression(), !2436)
  store ptr null, ptr %arrayidx2.i, align 8, !dbg !2444
    #dbg_value(ptr %3, !2430, !DIExpression(), !2431)
  br label %if.end, !dbg !2445

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @x264_frame_new(ptr noundef nonnull %h, i32 noundef %b_fdec), !dbg !2446
    #dbg_value(ptr %call6, !2430, !DIExpression(), !2431)
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call6, %if.else ], !dbg !2447
    #dbg_value(ptr %frame.0, !2430, !DIExpression(), !2431)
  %tobool7.not = icmp eq ptr %frame.0, null, !dbg !2448
  br i1 %tobool7.not, label %cleanup, label %if.end9, !dbg !2450

if.end9:                                          ; preds = %if.end
  %b_last_minigop_bframe = getelementptr inbounds i8, ptr %frame.0, i64 85, !dbg !2451
  store i8 0, ptr %b_last_minigop_bframe, align 1, !dbg !2452
  %i_reference_count = getelementptr inbounds i8, ptr %frame.0, i64 15600, !dbg !2453
  store i32 1, ptr %i_reference_count, align 16, !dbg !2454
  %b_intra_calculated = getelementptr inbounds i8, ptr %frame.0, i64 12168, !dbg !2455
  store i32 0, ptr %b_intra_calculated, align 8, !dbg !2456
  %b_scenecut = getelementptr inbounds i8, ptr %frame.0, i64 12200, !dbg !2457
  store i32 1, ptr %b_scenecut, align 8, !dbg !2458
  %b_keyframe = getelementptr inbounds i8, ptr %frame.0, i64 80, !dbg !2459
  store i32 0, ptr %b_keyframe, align 16, !dbg !2460
  %weight = getelementptr inbounds i8, ptr %frame.0, i64 320, !dbg !2461
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %weight, i8 0, i64 3072, i1 false), !dbg !2462
  %f_weighted_cost_delta = getelementptr inbounds i8, ptr %frame.0, i64 12204, !dbg !2463
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %f_weighted_cost_delta, i8 0, i64 72, i1 false), !dbg !2464
  br label %cleanup, !dbg !2465

cleanup:                                          ; preds = %if.end, %if.end9
  ret ptr %frame.0, !dbg !2466
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_blank_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #4 !dbg !2467 {
entry:
    #dbg_value(ptr %h, !2469, !DIExpression(), !2471)
    #dbg_value(ptr %frame, !2470, !DIExpression(), !2471)
  %i_reference_count = getelementptr inbounds i8, ptr %frame, i64 15600, !dbg !2472
  %0 = load i32, ptr %i_reference_count, align 16, !dbg !2473
  %dec = add nsw i32 %0, -1, !dbg !2473
  store i32 %dec, ptr %i_reference_count, align 16, !dbg !2473
  %cmp = icmp eq i32 %dec, 0, !dbg !2474
  br i1 %cmp, label %if.then, label %if.end, !dbg !2476

if.then:                                          ; preds = %entry
  %blank_unused = getelementptr inbounds i8, ptr %h, i64 14440, !dbg !2477
  %1 = load ptr, ptr %blank_unused, align 8, !dbg !2477
    #dbg_value(ptr %1, !2340, !DIExpression(), !2478)
    #dbg_value(ptr %frame, !2341, !DIExpression(), !2478)
    #dbg_value(i32 0, !2342, !DIExpression(), !2478)
  br label %while.cond.i, !dbg !2480

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ], !dbg !2478
    #dbg_value(i64 %indvars.iv.i, !2342, !DIExpression(), !2478)
  %arrayidx.i = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i, !dbg !2481
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2481
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2480
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2482
    #dbg_value(i64 %indvars.iv.next.i, !2342, !DIExpression(), !2478)
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i, !dbg !2480, !llvm.loop !2483

x264_frame_push.exit:                             ; preds = %while.cond.i
  %arrayidx.i.le = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i
  store ptr %frame, ptr %arrayidx.i.le, align 8, !dbg !2484
  br label %if.end, !dbg !2485

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void, !dbg !2486
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_blank_unused(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !2487 {
entry:
    #dbg_value(ptr %h, !2491, !DIExpression(), !2493)
  %blank_unused = getelementptr inbounds i8, ptr %h, i64 14440, !dbg !2494
  %0 = load ptr, ptr %blank_unused, align 8, !dbg !2494
  %1 = load ptr, ptr %0, align 8, !dbg !2496
  %tobool.not = icmp eq ptr %1, null, !dbg !2496
  br i1 %tobool.not, label %if.else, label %while.cond.i, !dbg !2497

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ], !dbg !2498
    #dbg_value(i64 %indvars.iv.i, !2356, !DIExpression(), !2498)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2500
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2501
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2501
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2502
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i, !dbg !2502, !llvm.loop !2503

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295, !dbg !2505
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i, !dbg !2505
  %3 = load ptr, ptr %arrayidx2.i, align 8, !dbg !2505
    #dbg_value(ptr %3, !2355, !DIExpression(), !2498)
  store ptr null, ptr %arrayidx2.i, align 8, !dbg !2506
    #dbg_value(ptr %3, !2492, !DIExpression(), !2493)
  br label %if.end, !dbg !2507

if.else:                                          ; preds = %entry
  %call3 = tail call ptr @x264_malloc(i32 noundef 15632) #11, !dbg !2508
    #dbg_value(ptr %call3, !2492, !DIExpression(), !2493)
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call3, %if.else ], !dbg !2509
    #dbg_value(ptr %frame.0, !2492, !DIExpression(), !2493)
  %tobool4.not = icmp eq ptr %frame.0, null, !dbg !2510
  br i1 %tobool4.not, label %cleanup, label %if.end6, !dbg !2512

if.end6:                                          ; preds = %if.end
  %b_duplicate = getelementptr inbounds i8, ptr %frame.0, i64 3520, !dbg !2513
  store i32 1, ptr %b_duplicate, align 16, !dbg !2514
  %i_reference_count = getelementptr inbounds i8, ptr %frame.0, i64 15600, !dbg !2515
  store i32 1, ptr %i_reference_count, align 16, !dbg !2516
  br label %cleanup, !dbg !2517

cleanup:                                          ; preds = %if.end, %if.end6
  ret ptr %frame.0, !dbg !2518
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_sort(ptr nocapture noundef %list, i32 noundef %b_dts) local_unnamed_addr #4 !dbg !2519 {
entry:
    #dbg_value(ptr %list, !2523, !DIExpression(), !2538)
    #dbg_value(i32 %b_dts, !2524, !DIExpression(), !2538)
  %arrayidx52 = getelementptr inbounds i8, ptr %list, i64 8
  %tobool14.not = icmp eq i32 %b_dts, 0
  %0 = load ptr, ptr %arrayidx52, align 8, !dbg !2539
  %1 = icmp eq ptr %0, null, !dbg !2540
  br i1 %1, label %do.end32, label %for.body.lr.ph

do.bodythread-pre-split:                          ; preds = %for.cond.cleanup
  %.pr = load ptr, ptr %arrayidx52, align 8, !dbg !2539
    #dbg_value(i32 1, !2525, !DIExpression(), !2538)
    #dbg_value(i32 0, !2526, !DIExpression(), !2541)
  %tobool.not53 = icmp eq ptr %.pr, null, !dbg !2540
  br i1 %tobool.not53, label %do.end32, label %for.body.lr.ph, !dbg !2540

for.body.lr.ph:                                   ; preds = %entry, %do.bodythread-pre-split
  %2 = phi ptr [ %.pr, %do.bodythread-pre-split ], [ %0, %entry ]
  br i1 %tobool14.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %if.end.us ], [ 0, %for.body.lr.ph ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %if.end.us ], [ 1, %for.body.lr.ph ]
  %3 = phi ptr [ %7, %if.end.us ], [ %2, %for.body.lr.ph ]
  %arrayidx57.us = phi ptr [ %arrayidx.us, %if.end.us ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055.us = phi i32 [ %b_ok.1.us, %if.end.us ], [ 1, %for.body.lr.ph ]
    #dbg_value(i32 %b_ok.055.us, !2525, !DIExpression(), !2538)
    #dbg_value(i64 %indvars.iv66, !2526, !DIExpression(), !2541)
  %arrayidx2.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv66, !dbg !2542
  %4 = load ptr, ptr %arrayidx2.us, align 8, !dbg !2542
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2543)
  %i_frame.us = getelementptr inbounds i8, ptr %4, i64 56, !dbg !2544
  %5 = load i32, ptr %i_frame.us, align 8, !dbg !2544
  %i_frame12.us = getelementptr inbounds i8, ptr %3, i64 56, !dbg !2545
  %6 = load i32, ptr %i_frame12.us, align 8, !dbg !2545
    #dbg_value(!DIArgList(i32 %5, i32 %6), !2532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2543)
  %cmp17.us = icmp sgt i32 %5, %6, !dbg !2546
    #dbg_value(i1 %cmp17.us, !2533, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2543)
  br i1 %cmp17.us, label %do.body19.us, label %if.end.us, !dbg !2547

do.body19.us:                                     ; preds = %for.body.us
    #dbg_value(ptr %4, !2534, !DIExpression(), !2548)
  store ptr %3, ptr %arrayidx2.us, align 8, !dbg !2549
  store ptr %4, ptr %arrayidx57.us, align 8, !dbg !2549
    #dbg_value(i32 0, !2525, !DIExpression(), !2538)
  br label %if.end.us, !dbg !2550

if.end.us:                                        ; preds = %do.body19.us, %for.body.us
  %b_ok.1.us = phi i32 [ 0, %do.body19.us ], [ %b_ok.055.us, %for.body.us ], !dbg !2551
    #dbg_value(i32 %b_ok.1.us, !2525, !DIExpression(), !2538)
    #dbg_value(i64 %indvars.iv64, !2526, !DIExpression(), !2541)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !2552
  %arrayidx.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next65, !dbg !2539
  %7 = load ptr, ptr %arrayidx.us, align 8, !dbg !2539
  %tobool.not.us = icmp eq ptr %7, null, !dbg !2540
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1, !dbg !2540
  br i1 %tobool.not.us, label %for.cond.cleanup, label %for.body.us, !dbg !2540, !llvm.loop !2553

for.cond.cleanup:                                 ; preds = %if.end, %if.end.us
  %b_ok.0.lcssa = phi i32 [ %b_ok.1.us, %if.end.us ], [ %b_ok.1, %if.end ], !dbg !2551
  %tobool31.not = icmp eq i32 %b_ok.0.lcssa, 0, !dbg !2555
  br i1 %tobool31.not, label %do.bodythread-pre-split, label %do.end32, !dbg !2556, !llvm.loop !2557

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %if.end ], [ 0, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body.lr.ph ]
  %8 = phi ptr [ %15, %if.end ], [ %2, %for.body.lr.ph ]
  %arrayidx57 = phi ptr [ %arrayidx, %if.end ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055 = phi i32 [ %b_ok.1, %if.end ], [ 1, %for.body.lr.ph ]
    #dbg_value(i32 %b_ok.055, !2525, !DIExpression(), !2538)
    #dbg_value(i64 %indvars.iv59, !2526, !DIExpression(), !2541)
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv59, !dbg !2542
  %9 = load ptr, ptr %arrayidx2, align 8, !dbg !2542
  %i_type = getelementptr inbounds i8, ptr %9, i64 4, !dbg !2560
  %10 = load i32, ptr %i_type, align 4, !dbg !2560
  %i_type6 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !2561
  %11 = load i32, ptr %i_type6, align 4, !dbg !2561
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2543)
    #dbg_value(!DIArgList(i32 %10, i32 %11), !2529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2543)
  %cmp = icmp sgt i32 %10, %11, !dbg !2562
  br i1 %cmp, label %do.body19, label %cond.end, !dbg !2563

cond.end:                                         ; preds = %for.body
  %i_frame = getelementptr inbounds i8, ptr %9, i64 56, !dbg !2544
  %12 = load i32, ptr %i_frame, align 8, !dbg !2544
  %i_frame12 = getelementptr inbounds i8, ptr %8, i64 56, !dbg !2545
  %13 = load i32, ptr %i_frame12, align 8, !dbg !2545
    #dbg_value(!DIArgList(i32 %12, i32 %13), !2532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2543)
  %cmp15 = icmp eq i32 %10, %11, !dbg !2564
  %cmp16 = icmp sgt i32 %12, %13, !dbg !2565
  %14 = select i1 %cmp15, i1 %cmp16, i1 false, !dbg !2565
    #dbg_value(i1 %14, !2533, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2543)
  br i1 %14, label %do.body19, label %if.end, !dbg !2547

do.body19:                                        ; preds = %for.body, %cond.end
    #dbg_value(ptr %9, !2534, !DIExpression(), !2548)
  store ptr %8, ptr %arrayidx2, align 8, !dbg !2549
  store ptr %9, ptr %arrayidx57, align 8, !dbg !2549
    #dbg_value(i32 0, !2525, !DIExpression(), !2538)
  br label %if.end, !dbg !2550

if.end:                                           ; preds = %do.body19, %cond.end
  %b_ok.1 = phi i32 [ 0, %do.body19 ], [ %b_ok.055, %cond.end ], !dbg !2551
    #dbg_value(i32 %b_ok.1, !2525, !DIExpression(), !2538)
    #dbg_value(i64 %indvars.iv, !2526, !DIExpression(), !2541)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2552
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2539
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !2539
  %tobool.not = icmp eq ptr %15, null, !dbg !2540
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1, !dbg !2540
  br i1 %tobool.not, label %for.cond.cleanup, label %for.body, !dbg !2540, !llvm.loop !2553

do.end32:                                         ; preds = %do.bodythread-pre-split, %for.cond.cleanup, %entry
  ret void, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_weight_scale_plane(ptr nocapture noundef readnone %h, ptr noundef %dst, i32 noundef %i_dst_stride, ptr noundef %src, i32 noundef %i_src_stride, i32 noundef %i_width, i32 noundef %i_height, ptr noundef %w) local_unnamed_addr #0 !dbg !2567 {
entry:
    #dbg_value(ptr %h, !2571, !DIExpression(), !2582)
    #dbg_value(ptr %dst, !2572, !DIExpression(), !2582)
    #dbg_value(i32 %i_dst_stride, !2573, !DIExpression(), !2582)
    #dbg_value(ptr %src, !2574, !DIExpression(), !2582)
    #dbg_value(i32 %i_src_stride, !2575, !DIExpression(), !2582)
    #dbg_value(i32 %i_width, !2576, !DIExpression(), !2582)
    #dbg_value(i32 %i_height, !2577, !DIExpression(), !2582)
    #dbg_value(ptr %w, !2578, !DIExpression(), !2582)
  %cmp23 = icmp sgt i32 %i_height, 0, !dbg !2583
  br i1 %cmp23, label %for.cond.preheader.lr.ph, label %while.end, !dbg !2584

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp121 = icmp sgt i32 %i_width, 0
  %weightfn = getelementptr inbounds i8, ptr %w, i64 48
  %mul = shl nsw i32 %i_dst_stride, 4
  %idx.ext5 = sext i32 %mul to i64
  %mul7 = shl nsw i32 %i_src_stride, 4
  %idx.ext8 = sext i32 %mul7 to i64
  br i1 %cmp121, label %for.cond.preheader.us, label %while.end

for.cond.preheader.us:                            ; preds = %for.cond.preheader.lr.ph, %for.cond.for.cond.cleanup_crit_edge.us
  %dst.addr.026.us = phi ptr [ %add.ptr6.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %dst, %for.cond.preheader.lr.ph ]
  %i_height.addr.025.us = phi i32 [ %sub.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %i_height, %for.cond.preheader.lr.ph ]
  %src.addr.024.us = phi ptr [ %add.ptr9.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %src, %for.cond.preheader.lr.ph ]
    #dbg_value(ptr %dst.addr.026.us, !2572, !DIExpression(), !2582)
    #dbg_value(i32 %i_height.addr.025.us, !2577, !DIExpression(), !2582)
    #dbg_value(ptr %src.addr.024.us, !2574, !DIExpression(), !2582)
    #dbg_value(i32 0, !2579, !DIExpression(), !2585)
  %0 = tail call i32 @llvm.umin.i32(i32 %i_height.addr.025.us, i32 16)
  br label %for.body.us, !dbg !2586

for.body.us:                                      ; preds = %for.cond.preheader.us, %for.body.us
  %indvars.iv = phi i64 [ 0, %for.cond.preheader.us ], [ %indvars.iv.next, %for.body.us ]
    #dbg_value(i64 %indvars.iv, !2579, !DIExpression(), !2585)
  %1 = load ptr, ptr %weightfn, align 16, !dbg !2587
  %arrayidx.us = getelementptr inbounds i8, ptr %1, i64 32, !dbg !2589
  %2 = load ptr, ptr %arrayidx.us, align 8, !dbg !2589
  %add.ptr.us = getelementptr inbounds i8, ptr %dst.addr.026.us, i64 %indvars.iv, !dbg !2590
  %add.ptr3.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %indvars.iv, !dbg !2591
  tail call void %2(ptr noundef %add.ptr.us, i32 noundef %i_dst_stride, ptr noundef %add.ptr3.us, i32 noundef %i_src_stride, ptr noundef %w, i32 noundef %0) #11, !dbg !2589
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16, !dbg !2592
    #dbg_value(i64 %indvars.iv.next, !2579, !DIExpression(), !2585)
  %3 = trunc nuw i64 %indvars.iv.next to i32, !dbg !2593
  %cmp1.us = icmp slt i32 %3, %i_width, !dbg !2593
  br i1 %cmp1.us, label %for.body.us, label %for.cond.for.cond.cleanup_crit_edge.us, !dbg !2586, !llvm.loop !2594

for.cond.for.cond.cleanup_crit_edge.us:           ; preds = %for.body.us
  %sub.us = add nsw i32 %i_height.addr.025.us, -16, !dbg !2596
    #dbg_value(i32 %sub.us, !2577, !DIExpression(), !2582)
  %add.ptr6.us = getelementptr inbounds i8, ptr %dst.addr.026.us, i64 %idx.ext5, !dbg !2597
    #dbg_value(ptr %add.ptr6.us, !2572, !DIExpression(), !2582)
  %add.ptr9.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %idx.ext8, !dbg !2598
    #dbg_value(ptr %add.ptr9.us, !2574, !DIExpression(), !2582)
  %cmp.us = icmp sgt i32 %i_height.addr.025.us, 16, !dbg !2583
  br i1 %cmp.us, label %for.cond.preheader.us, label %while.end, !dbg !2584, !llvm.loop !2599

while.end:                                        ; preds = %for.cond.for.cond.cleanup_crit_edge.us, %for.cond.preheader.lr.ph, %entry
  ret void, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete_list(ptr noundef %list) local_unnamed_addr #0 !dbg !2602 {
entry:
    #dbg_value(ptr %list, !2606, !DIExpression(), !2608)
    #dbg_value(i32 0, !2607, !DIExpression(), !2608)
  %tobool.not = icmp eq ptr %list, null, !dbg !2609
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader, !dbg !2611

while.cond.preheader:                             ; preds = %entry
    #dbg_value(i32 0, !2607, !DIExpression(), !2608)
  %0 = load ptr, ptr %list, align 8, !dbg !2612
  %tobool1.not8 = icmp eq ptr %0, null, !dbg !2613
  br i1 %tobool1.not8, label %while.end, label %while.body, !dbg !2613

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %while.cond.preheader ]
  %1 = phi ptr [ %2, %while.body ], [ %0, %while.cond.preheader ]
    #dbg_value(i64 %indvars.iv, !2607, !DIExpression(), !2608)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2614
    #dbg_value(i64 %indvars.iv.next, !2607, !DIExpression(), !2608)
  tail call void @x264_frame_delete(ptr noundef nonnull %1), !dbg !2615
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2612
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2612
  %tobool1.not = icmp eq ptr %2, null, !dbg !2613
  br i1 %tobool1.not, label %while.end, label %while.body, !dbg !2613, !llvm.loop !2616

while.end:                                        ; preds = %while.body, %while.cond.preheader
  tail call void @x264_free(ptr noundef nonnull %list) #11, !dbg !2618
  br label %cleanup, !dbg !2619

cleanup:                                          ; preds = %entry, %while.end
  ret void, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_synch_frame_list_init(ptr nocapture noundef writeonly %slist, i32 noundef %max_size) local_unnamed_addr #0 !dbg !2620 {
entry:
    #dbg_value(ptr %slist, !2625, !DIExpression(), !2628)
    #dbg_value(i32 %max_size, !2626, !DIExpression(), !2628)
  %cmp = icmp slt i32 %max_size, 0, !dbg !2629
  br i1 %cmp, label %return, label %if.end, !dbg !2631

if.end:                                           ; preds = %entry
  %i_max_size = getelementptr inbounds i8, ptr %slist, i64 8, !dbg !2632
  store i32 %max_size, ptr %i_max_size, align 8, !dbg !2633
  %i_size = getelementptr inbounds i8, ptr %slist, i64 12, !dbg !2634
  store i32 0, ptr %i_size, align 4, !dbg !2635
  %add = add nuw nsw i32 %max_size, 1, !dbg !2636
  %conv = zext nneg i32 %add to i64, !dbg !2636
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2636
  %conv2 = trunc i64 %mul to i32, !dbg !2636
  %call = tail call ptr @x264_malloc(i32 noundef %conv2) #11, !dbg !2636
  store ptr %call, ptr %slist, align 8, !dbg !2636
  %tobool.not = icmp eq ptr %call, null, !dbg !2639
  br i1 %tobool.not, label %return, label %do.end, !dbg !2636

do.end:                                           ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call, i8 0, i64 %mul, i1 false), !dbg !2641
  br label %return, !dbg !2642

return:                                           ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry ], [ -1, %if.end ], !dbg !2628
  ret i32 %retval.0, !dbg !2643
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_synch_frame_list_delete(ptr nocapture noundef readonly %slist) local_unnamed_addr #0 !dbg !2644 {
entry:
    #dbg_value(ptr %slist, !2648, !DIExpression(), !2649)
  %0 = load ptr, ptr %slist, align 8, !dbg !2650
    #dbg_value(ptr %0, !2606, !DIExpression(), !2651)
    #dbg_value(i32 0, !2607, !DIExpression(), !2651)
  %tobool.not.i = icmp eq ptr %0, null, !dbg !2653
  br i1 %tobool.not.i, label %x264_frame_delete_list.exit, label %while.cond.preheader.i, !dbg !2654

while.cond.preheader.i:                           ; preds = %entry
    #dbg_value(i32 0, !2607, !DIExpression(), !2651)
  %1 = load ptr, ptr %0, align 8, !dbg !2655
  %tobool1.not8.i = icmp eq ptr %1, null, !dbg !2656
  br i1 %tobool1.not8.i, label %while.end.i, label %while.body.i, !dbg !2656

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body.i ], [ 0, %while.cond.preheader.i ]
  %2 = phi ptr [ %3, %while.body.i ], [ %1, %while.cond.preheader.i ]
    #dbg_value(i64 %indvars.iv.i, !2607, !DIExpression(), !2651)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2657
    #dbg_value(i64 %indvars.iv.next.i, !2607, !DIExpression(), !2651)
  tail call void @x264_frame_delete(ptr noundef nonnull %2), !dbg !2658
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2655
  %3 = load ptr, ptr %arrayidx.i, align 8, !dbg !2655
  %tobool1.not.i = icmp eq ptr %3, null, !dbg !2656
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i, !dbg !2656, !llvm.loop !2659

while.end.i:                                      ; preds = %while.body.i, %while.cond.preheader.i
  tail call void @x264_free(ptr noundef nonnull %0) #11, !dbg !2661
  br label %x264_frame_delete_list.exit, !dbg !2662

x264_frame_delete_list.exit:                      ; preds = %entry, %while.end.i
  ret void, !dbg !2663
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_synch_frame_list_push(ptr nocapture noundef %slist, ptr noundef %frame) local_unnamed_addr #9 !dbg !2664 {
entry:
    #dbg_value(ptr %slist, !2668, !DIExpression(), !2670)
    #dbg_value(ptr %frame, !2669, !DIExpression(), !2670)
  %i_size = getelementptr inbounds i8, ptr %slist, i64 12
  %0 = load i32, ptr %i_size, align 4
  %i_max_size = getelementptr inbounds i8, ptr %slist, i64 8
  %1 = load i32, ptr %i_max_size, align 8
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2671, !llvm.loop !2672

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond, !dbg !2671

while.end:                                        ; preds = %entry
  %2 = load ptr, ptr %slist, align 8, !dbg !2674
  %inc = add nsw i32 %0, 1, !dbg !2675
  store i32 %inc, ptr %i_size, align 4, !dbg !2675
  %idxprom = sext i32 %0 to i64, !dbg !2676
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !2676
  store ptr %frame, ptr %arrayidx, align 8, !dbg !2677
  ret void, !dbg !2678
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "x264_src/common/frame.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2de27f64079da1a9117f5fc2a58ed5b6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 26)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 44)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !26, globals: !33, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pic_struct_e", file: !15, line: 483, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "PIC_STRUCT_AUTO", value: 0)
!19 = !DIEnumerator(name: "PIC_STRUCT_PROGRESSIVE", value: 1)
!20 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM", value: 4)
!21 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP", value: 5)
!22 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM_TOP", value: 6)
!23 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP_BOTTOM", value: 7)
!24 = !DIEnumerator(name: "PIC_STRUCT_DOUBLE", value: 8)
!25 = !DIEnumerator(name: "PIC_STRUCT_TRIPLE", value: 9)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !29, line: 25, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !31, line: 40, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !{!0, !7}
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 8, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!41 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!42 = distinct !DISubprogram(name: "x264_frame_new", scope: !2, file: !2, line: 29, type: !43, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1352)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !390, !51}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !47, line: 146, baseType: !48)
!47 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !47, line: 31, size: 125056, elements: !49)
!49 = !{!50, !52, !53, !54, !59, !60, !61, !62, !63, !64, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !257, !258, !259, !260, !261, !262, !265, !269, !270, !271, !272, !273, !301, !303, !304, !306, !311, !312, !316, !317, !321, !325, !328, !330, !331, !334, !335, !337, !338, !339, !342, !344, !345, !346, !348, !349, !350, !351, !352, !353, !354, !355, !357, !358, !362, !371, !375, !377, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !48, file: !47, line: 34, baseType: !51, size: 32)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !48, file: !47, line: 35, baseType: !51, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !48, file: !47, line: 36, baseType: !51, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !48, file: !47, line: 37, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !56, line: 27, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !31, line: 44, baseType: !58)
!58 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !48, file: !47, line: 38, baseType: !55, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !48, file: !47, line: 39, baseType: !51, size: 32, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !48, file: !47, line: 40, baseType: !51, size: 32, offset: 288)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !48, file: !47, line: 41, baseType: !51, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !48, file: !47, line: 42, baseType: !51, size: 32, offset: 352)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !48, file: !47, line: 43, baseType: !65, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !15, line: 376, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !15, line: 176, size: 5632, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !118, !119, !120, !121, !125, !126, !140, !141, !142, !143, !144, !175, !217, !218, !219, !220, !221, !222, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !67, file: !15, line: 179, baseType: !16, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !67, file: !15, line: 180, baseType: !51, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !67, file: !15, line: 181, baseType: !51, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !67, file: !15, line: 182, baseType: !51, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !67, file: !15, line: 183, baseType: !51, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !67, file: !15, line: 186, baseType: !51, size: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !67, file: !15, line: 187, baseType: !51, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !67, file: !15, line: 188, baseType: !51, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !67, file: !15, line: 189, baseType: !51, size: 32, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !67, file: !15, line: 190, baseType: !51, size: 32, offset: 288)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !67, file: !15, line: 198, baseType: !51, size: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !67, file: !15, line: 215, baseType: !81, size: 288, offset: 352)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !15, line: 200, size: 288, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !81, file: !15, line: 203, baseType: !51, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !81, file: !15, line: 204, baseType: !51, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !81, file: !15, line: 206, baseType: !51, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !81, file: !15, line: 209, baseType: !51, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !81, file: !15, line: 210, baseType: !51, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !81, file: !15, line: 211, baseType: !51, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !81, file: !15, line: 212, baseType: !51, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !81, file: !15, line: 213, baseType: !51, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !81, file: !15, line: 214, baseType: !51, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !67, file: !15, line: 218, baseType: !51, size: 32, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !67, file: !15, line: 219, baseType: !51, size: 32, offset: 672)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !67, file: !15, line: 220, baseType: !51, size: 32, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !67, file: !15, line: 221, baseType: !51, size: 32, offset: 736)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !67, file: !15, line: 222, baseType: !51, size: 32, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !67, file: !15, line: 224, baseType: !51, size: 32, offset: 800)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !67, file: !15, line: 225, baseType: !51, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !67, file: !15, line: 226, baseType: !51, size: 32, offset: 864)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !67, file: !15, line: 227, baseType: !51, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !67, file: !15, line: 229, baseType: !51, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !67, file: !15, line: 230, baseType: !51, size: 32, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !67, file: !15, line: 231, baseType: !51, size: 32, offset: 992)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !67, file: !15, line: 233, baseType: !51, size: 32, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !67, file: !15, line: 234, baseType: !51, size: 32, offset: 1056)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !67, file: !15, line: 236, baseType: !51, size: 32, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !67, file: !15, line: 237, baseType: !51, size: 32, offset: 1120)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !67, file: !15, line: 239, baseType: !51, size: 32, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !67, file: !15, line: 240, baseType: !110, size: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !67, file: !15, line: 241, baseType: !112, size: 128, offset: 1280)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !116)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 24, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !31, line: 38, baseType: !115)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !67, file: !15, line: 242, baseType: !112, size: 128, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !67, file: !15, line: 243, baseType: !112, size: 128, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !67, file: !15, line: 244, baseType: !112, size: 128, offset: 1664)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !67, file: !15, line: 245, baseType: !122, size: 512, offset: 1792)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !67, file: !15, line: 246, baseType: !122, size: 512, offset: 2304)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !67, file: !15, line: 249, baseType: !127, size: 64, offset: 2816)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !51, !131, !133}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !135)
!135 = !{!136, !137, !138, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !134, file: !2, baseType: !16, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !134, file: !2, baseType: !16, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !134, file: !2, baseType: !130, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !134, file: !2, baseType: !130, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !67, file: !15, line: 250, baseType: !130, size: 64, offset: 2880)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !67, file: !15, line: 251, baseType: !51, size: 32, offset: 2944)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !67, file: !15, line: 252, baseType: !51, size: 32, offset: 2976)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !67, file: !15, line: 253, baseType: !110, size: 64, offset: 3008)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !67, file: !15, line: 287, baseType: !145, size: 800, offset: 3072)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !15, line: 256, size: 800, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !167, !168, !169, !173, !174}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !145, file: !15, line: 258, baseType: !16, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !145, file: !15, line: 259, baseType: !16, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !145, file: !15, line: 261, baseType: !51, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !145, file: !15, line: 262, baseType: !51, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !145, file: !15, line: 263, baseType: !51, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !145, file: !15, line: 264, baseType: !51, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !145, file: !15, line: 265, baseType: !51, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !145, file: !15, line: 267, baseType: !51, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !145, file: !15, line: 268, baseType: !51, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !145, file: !15, line: 269, baseType: !51, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !145, file: !15, line: 270, baseType: !51, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !145, file: !15, line: 271, baseType: !51, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !145, file: !15, line: 272, baseType: !51, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !145, file: !15, line: 273, baseType: !51, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !145, file: !15, line: 274, baseType: !51, size: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !145, file: !15, line: 275, baseType: !51, size: 32, offset: 480)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !145, file: !15, line: 276, baseType: !51, size: 32, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !145, file: !15, line: 277, baseType: !51, size: 32, offset: 544)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !145, file: !15, line: 278, baseType: !166, size: 32, offset: 576)
!166 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !145, file: !15, line: 279, baseType: !166, size: 32, offset: 608)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !145, file: !15, line: 280, baseType: !51, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !145, file: !15, line: 283, baseType: !170, size: 64, offset: 672)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 2)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !145, file: !15, line: 285, baseType: !51, size: 32, offset: 736)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !145, file: !15, line: 286, baseType: !51, size: 32, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !67, file: !15, line: 327, baseType: !176, size: 1152, offset: 3904)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !15, line: 290, size: 1152, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !215, !216}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !176, file: !15, line: 292, baseType: !51, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !176, file: !15, line: 294, baseType: !51, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !176, file: !15, line: 295, baseType: !51, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !176, file: !15, line: 296, baseType: !51, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !176, file: !15, line: 297, baseType: !51, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !176, file: !15, line: 299, baseType: !51, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !176, file: !15, line: 300, baseType: !166, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !176, file: !15, line: 301, baseType: !166, size: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !176, file: !15, line: 302, baseType: !166, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !176, file: !15, line: 303, baseType: !51, size: 32, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !176, file: !15, line: 304, baseType: !51, size: 32, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !176, file: !15, line: 305, baseType: !166, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !176, file: !15, line: 306, baseType: !166, size: 32, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !176, file: !15, line: 307, baseType: !166, size: 32, offset: 416)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !176, file: !15, line: 309, baseType: !51, size: 32, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !176, file: !15, line: 310, baseType: !166, size: 32, offset: 480)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !176, file: !15, line: 311, baseType: !51, size: 32, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !176, file: !15, line: 312, baseType: !51, size: 32, offset: 544)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !176, file: !15, line: 315, baseType: !51, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !176, file: !15, line: 316, baseType: !110, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !176, file: !15, line: 317, baseType: !51, size: 32, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !176, file: !15, line: 318, baseType: !110, size: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !176, file: !15, line: 321, baseType: !166, size: 32, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !176, file: !15, line: 322, baseType: !166, size: 32, offset: 864)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !176, file: !15, line: 323, baseType: !166, size: 32, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !176, file: !15, line: 324, baseType: !204, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !15, line: 174, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 167, size: 256, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !206, file: !15, line: 169, baseType: !51, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !206, file: !15, line: 169, baseType: !51, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !206, file: !15, line: 170, baseType: !51, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !206, file: !15, line: 171, baseType: !51, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !206, file: !15, line: 172, baseType: !166, size: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !206, file: !15, line: 173, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !176, file: !15, line: 325, baseType: !51, size: 32, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !176, file: !15, line: 326, baseType: !110, size: 64, offset: 1088)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !67, file: !15, line: 330, baseType: !51, size: 32, offset: 5056)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !67, file: !15, line: 331, baseType: !51, size: 32, offset: 5088)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !67, file: !15, line: 332, baseType: !51, size: 32, offset: 5120)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !67, file: !15, line: 334, baseType: !51, size: 32, offset: 5152)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !67, file: !15, line: 335, baseType: !51, size: 32, offset: 5184)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !67, file: !15, line: 336, baseType: !223, size: 32, offset: 5216)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 26, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 42, baseType: !16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !67, file: !15, line: 337, baseType: !223, size: 32, offset: 5248)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !67, file: !15, line: 338, baseType: !223, size: 32, offset: 5280)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !67, file: !15, line: 339, baseType: !223, size: 32, offset: 5312)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !67, file: !15, line: 340, baseType: !51, size: 32, offset: 5344)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !67, file: !15, line: 344, baseType: !51, size: 32, offset: 5376)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !67, file: !15, line: 356, baseType: !51, size: 32, offset: 5408)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !67, file: !15, line: 364, baseType: !51, size: 32, offset: 5440)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !67, file: !15, line: 367, baseType: !51, size: 32, offset: 5472)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !67, file: !15, line: 368, baseType: !51, size: 32, offset: 5504)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !67, file: !15, line: 369, baseType: !51, size: 32, offset: 5536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !67, file: !15, line: 375, baseType: !236, size: 64, offset: 5568)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !130}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !48, file: !47, line: 45, baseType: !51, size: 32, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !48, file: !47, line: 46, baseType: !51, size: 32, offset: 480)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !48, file: !47, line: 47, baseType: !51, size: 32, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !48, file: !47, line: 48, baseType: !51, size: 32, offset: 544)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !48, file: !47, line: 49, baseType: !51, size: 32, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !48, file: !47, line: 50, baseType: !51, size: 32, offset: 608)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !48, file: !47, line: 51, baseType: !51, size: 32, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !48, file: !47, line: 52, baseType: !113, size: 8, offset: 672)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !48, file: !47, line: 53, baseType: !113, size: 8, offset: 680)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !48, file: !47, line: 54, baseType: !113, size: 8, offset: 688)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !48, file: !47, line: 55, baseType: !166, size: 32, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !48, file: !47, line: 56, baseType: !166, size: 32, offset: 736)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !48, file: !47, line: 57, baseType: !51, size: 32, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !48, file: !47, line: 60, baseType: !51, size: 32, offset: 800)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !48, file: !47, line: 61, baseType: !254, size: 96, offset: 832)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 96, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 3)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !48, file: !47, line: 62, baseType: !254, size: 96, offset: 928)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !48, file: !47, line: 63, baseType: !254, size: 96, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !48, file: !47, line: 64, baseType: !51, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !48, file: !47, line: 65, baseType: !51, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !48, file: !47, line: 66, baseType: !51, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !48, file: !47, line: 67, baseType: !263, size: 192, offset: 1216)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 192, elements: !255)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !48, file: !47, line: 68, baseType: !266, size: 256, offset: 1408)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !48, file: !47, line: 69, baseType: !266, size: 256, offset: 1664)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !48, file: !47, line: 70, baseType: !27, size: 64, offset: 1920)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !48, file: !47, line: 74, baseType: !266, size: 256, offset: 1984)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !48, file: !47, line: 75, baseType: !266, size: 256, offset: 2240)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !48, file: !47, line: 77, baseType: !274, size: 24576, align: 128, offset: 2560)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 24576, align: 128, elements: !300)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !276, line: 36, baseType: !277, align: 128)
!276 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !276, line: 26, size: 512, elements: !278)
!278 = !{!279, !286, !287, !290, !291, !292}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !277, file: !276, line: 30, baseType: !280, size: 128, align: 128)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !284)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !56, line: 25, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !31, line: 39, baseType: !283)
!283 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!284 = !{!285}
!285 = !DISubrange(count: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !277, file: !276, line: 31, baseType: !280, size: 128, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !277, file: !276, line: 32, baseType: !288, size: 32, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !56, line: 26, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !31, line: 41, baseType: !51)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !277, file: !276, line: 33, baseType: !288, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !277, file: !276, line: 34, baseType: !288, size: 32, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !277, file: !276, line: 35, baseType: !293, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !276, line: 25, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !264, !51, !264, !51, !298, !51}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!300 = !{!117, !256}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !48, file: !47, line: 78, baseType: !302, size: 1024, offset: 27136)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1024, elements: !116)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !48, file: !47, line: 79, baseType: !51, size: 32, offset: 28160)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !48, file: !47, line: 80, baseType: !305, size: 64, offset: 28224)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !48, file: !47, line: 83, baseType: !307, size: 64, offset: 28288)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !56, line: 24, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !31, line: 37, baseType: !310)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !48, file: !47, line: 84, baseType: !264, size: 64, offset: 28352)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !48, file: !47, line: 85, baseType: !313, size: 128, offset: 28416)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 128, elements: !171)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 32, elements: !171)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !48, file: !47, line: 86, baseType: !314, size: 64, offset: 28544)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !48, file: !47, line: 87, baseType: !318, size: 2176, offset: 28608)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 2176, elements: !319)
!319 = !{!172, !320}
!320 = !DISubrange(count: 17)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !48, file: !47, line: 92, baseType: !322, size: 20736, offset: 30784)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 20736, elements: !323)
!323 = !{!324, !324}
!324 = !DISubrange(count: 18)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !48, file: !47, line: 96, baseType: !326, size: 2176, offset: 51520)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2176, elements: !319)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !48, file: !47, line: 97, baseType: !329, size: 128, offset: 53696)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 128, elements: !171)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !48, file: !47, line: 98, baseType: !170, size: 64, offset: 53824)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !48, file: !47, line: 99, baseType: !332, size: 1024, offset: 53888)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, elements: !333)
!333 = !{!172, !117}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !48, file: !47, line: 100, baseType: !315, size: 32, offset: 54912)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !48, file: !47, line: 105, baseType: !336, size: 10368, offset: 54944)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 10368, elements: !323)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !48, file: !47, line: 106, baseType: !336, size: 10368, offset: 65312)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !48, file: !47, line: 107, baseType: !51, size: 32, offset: 75680)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !48, file: !47, line: 108, baseType: !340, size: 576, offset: 75712)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, elements: !341)
!341 = !{!324}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !48, file: !47, line: 109, baseType: !343, size: 20736, offset: 76288)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 20736, elements: !323)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !48, file: !47, line: 110, baseType: !327, size: 64, offset: 97024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !48, file: !47, line: 111, baseType: !327, size: 64, offset: 97088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !48, file: !47, line: 112, baseType: !347, size: 64, offset: 97152)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !48, file: !47, line: 113, baseType: !347, size: 64, offset: 97216)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !48, file: !47, line: 114, baseType: !347, size: 64, offset: 97280)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !48, file: !47, line: 115, baseType: !51, size: 32, offset: 97344)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !48, file: !47, line: 116, baseType: !27, size: 64, offset: 97408)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !48, file: !47, line: 117, baseType: !27, size: 64, offset: 97472)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !48, file: !47, line: 118, baseType: !27, size: 64, offset: 97536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !48, file: !47, line: 119, baseType: !51, size: 32, offset: 97600)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !48, file: !47, line: 120, baseType: !356, size: 576, offset: 97632)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 576, elements: !341)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !48, file: !47, line: 121, baseType: !223, size: 32, offset: 98208)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !48, file: !47, line: 122, baseType: !359, size: 64, offset: 98240)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !29, line: 27, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !31, line: 45, baseType: !361)
!361 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !48, file: !47, line: 125, baseType: !363, size: 256, offset: 98304)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !15, line: 503, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 496, size: 256, elements: !365)
!365 = !{!366, !368, !369, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !364, file: !15, line: 498, baseType: !367, size: 64)
!367 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !364, file: !15, line: 499, baseType: !367, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !364, file: !15, line: 500, baseType: !367, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !364, file: !15, line: 502, baseType: !367, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !48, file: !47, line: 128, baseType: !372, size: 2008, offset: 98560)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2008, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 251)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !48, file: !47, line: 129, baseType: !376, size: 8032, offset: 100576)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8032, elements: !373)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !48, file: !47, line: 130, baseType: !378, size: 16064, offset: 108608)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 16064, elements: !373)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !48, file: !47, line: 131, baseType: !51, size: 32, offset: 124672)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !48, file: !47, line: 132, baseType: !51, size: 32, offset: 124704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !48, file: !47, line: 135, baseType: !51, size: 32, offset: 124736)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !48, file: !47, line: 136, baseType: !51, size: 32, offset: 124768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !48, file: !47, line: 137, baseType: !51, size: 32, offset: 124800)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !48, file: !47, line: 138, baseType: !51, size: 32, offset: 124832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !48, file: !47, line: 139, baseType: !51, size: 32, offset: 124864)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !48, file: !47, line: 142, baseType: !166, size: 32, offset: 124896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !48, file: !47, line: 143, baseType: !51, size: 32, offset: 124928)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !48, file: !47, line: 144, baseType: !51, size: 32, offset: 124960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !48, file: !47, line: 145, baseType: !51, size: 32, offset: 124992)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !15, line: 46, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !393, line: 381, size: 266752, elements: !394)
!393 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!394 = !{!395, !396, !400, !401, !402, !403, !404, !405, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !539, !541, !569, !571, !572, !573, !577, !581, !582, !583, !587, !591, !592, !593, !597, !600, !601, !652, !669, !694, !695, !696, !697, !701, !702, !703, !704, !705, !706, !707, !722, !916, !920, !981, !984, !986, !988, !989, !992, !997, !1006, !1007, !1015, !1017, !1022, !1098, !1184, !1228, !1250, !1299, !1328}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !392, file: !393, line: 384, baseType: !66, size: 5632)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !392, file: !393, line: 386, baseType: !397, size: 8256, offset: 5632)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 8256, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 129)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !392, file: !393, line: 387, baseType: !51, size: 32, offset: 13888)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !392, file: !393, line: 388, baseType: !51, size: 32, offset: 13920)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !392, file: !393, line: 389, baseType: !51, size: 32, offset: 13952)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !392, file: !393, line: 390, baseType: !51, size: 32, offset: 13984)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !392, file: !393, line: 391, baseType: !51, size: 32, offset: 14016)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !392, file: !393, line: 402, baseType: !406, size: 576, offset: 14080)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 394, size: 576, elements: !407)
!407 = !{!408, !409, !410, !419, !420, !421}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !406, file: !393, line: 396, baseType: !51, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !406, file: !393, line: 397, baseType: !51, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !406, file: !393, line: 398, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !15, line: 604, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 593, size: 192, elements: !414)
!414 = !{!415, !416, !417, !418}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !413, file: !15, line: 595, baseType: !51, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !413, file: !15, line: 596, baseType: !51, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !413, file: !15, line: 599, baseType: !51, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !413, file: !15, line: 603, baseType: !264, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !406, file: !393, line: 399, baseType: !51, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !406, file: !393, line: 400, baseType: !264, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !406, file: !393, line: 401, baseType: !422, size: 320, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !423, line: 56, baseType: !424)
!423 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !423, line: 47, size: 320, elements: !425)
!425 = !{!426, !427, !428, !429, !432, !433}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !424, file: !423, line: 49, baseType: !264, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !424, file: !423, line: 50, baseType: !264, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !424, file: !423, line: 51, baseType: !264, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !424, file: !423, line: 53, baseType: !430, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !431, line: 87, baseType: !58)
!431 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !424, file: !423, line: 54, baseType: !51, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !424, file: !423, line: 55, baseType: !51, size: 32, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !392, file: !393, line: 404, baseType: !264, size: 64, offset: 14656)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !392, file: !393, line: 405, baseType: !51, size: 32, offset: 14720)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !392, file: !393, line: 410, baseType: !51, size: 32, offset: 14752)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !392, file: !393, line: 411, baseType: !51, size: 32, offset: 14784)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !392, file: !393, line: 413, baseType: !51, size: 32, offset: 14816)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !392, file: !393, line: 415, baseType: !51, size: 32, offset: 14848)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !392, file: !393, line: 416, baseType: !51, size: 32, offset: 14880)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !392, file: !393, line: 418, baseType: !51, size: 32, offset: 14912)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !392, file: !393, line: 419, baseType: !51, size: 32, offset: 14944)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !392, file: !393, line: 420, baseType: !51, size: 32, offset: 14976)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !392, file: !393, line: 421, baseType: !51, size: 32, offset: 15008)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !392, file: !393, line: 422, baseType: !51, size: 32, offset: 15040)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !392, file: !393, line: 424, baseType: !51, size: 32, offset: 15072)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !392, file: !393, line: 425, baseType: !51, size: 32, offset: 15104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !392, file: !393, line: 427, baseType: !51, size: 32, offset: 15136)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !392, file: !393, line: 430, baseType: !450, size: 10400, offset: 15168)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 10400, elements: !537)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !452, line: 154, baseType: !453)
!452 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 52, size: 10400, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !473, !474, !475, !476, !477, !478, !479, !480, !487, !488, !536}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !453, file: !452, line: 54, baseType: !51, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !453, file: !452, line: 56, baseType: !51, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !453, file: !452, line: 57, baseType: !51, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !453, file: !452, line: 59, baseType: !51, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !453, file: !452, line: 60, baseType: !51, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !453, file: !452, line: 61, baseType: !51, size: 32, offset: 160)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !453, file: !452, line: 63, baseType: !51, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !453, file: !452, line: 65, baseType: !51, size: 32, offset: 224)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !453, file: !452, line: 67, baseType: !51, size: 32, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !453, file: !452, line: 69, baseType: !51, size: 32, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !453, file: !452, line: 70, baseType: !51, size: 32, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !453, file: !452, line: 71, baseType: !51, size: 32, offset: 352)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !453, file: !452, line: 72, baseType: !51, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !453, file: !452, line: 73, baseType: !469, size: 8192, offset: 416)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8192, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !453, file: !452, line: 75, baseType: !51, size: 32, offset: 8608)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !453, file: !452, line: 76, baseType: !51, size: 32, offset: 8640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !453, file: !452, line: 77, baseType: !51, size: 32, offset: 8672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !453, file: !452, line: 78, baseType: !51, size: 32, offset: 8704)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !453, file: !452, line: 79, baseType: !51, size: 32, offset: 8736)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !453, file: !452, line: 80, baseType: !51, size: 32, offset: 8768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !453, file: !452, line: 81, baseType: !51, size: 32, offset: 8800)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !453, file: !452, line: 83, baseType: !51, size: 32, offset: 8832)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !453, file: !452, line: 90, baseType: !481, size: 128, offset: 8864)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !452, line: 84, size: 128, elements: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !481, file: !452, line: 86, baseType: !51, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !481, file: !452, line: 87, baseType: !51, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !481, file: !452, line: 88, baseType: !51, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !481, file: !452, line: 89, baseType: !51, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !453, file: !452, line: 92, baseType: !51, size: 32, offset: 8992)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !453, file: !452, line: 150, baseType: !489, size: 1344, offset: 9024)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !452, line: 93, size: 1344, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !489, file: !452, line: 95, baseType: !51, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !489, file: !452, line: 96, baseType: !51, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !489, file: !452, line: 97, baseType: !51, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !489, file: !452, line: 99, baseType: !51, size: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !489, file: !452, line: 100, baseType: !51, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !489, file: !452, line: 102, baseType: !51, size: 32, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !489, file: !452, line: 103, baseType: !51, size: 32, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !489, file: !452, line: 104, baseType: !51, size: 32, offset: 224)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !489, file: !452, line: 105, baseType: !51, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !489, file: !452, line: 106, baseType: !51, size: 32, offset: 288)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !489, file: !452, line: 107, baseType: !51, size: 32, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !489, file: !452, line: 108, baseType: !51, size: 32, offset: 352)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !489, file: !452, line: 110, baseType: !51, size: 32, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !489, file: !452, line: 111, baseType: !51, size: 32, offset: 416)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !489, file: !452, line: 112, baseType: !51, size: 32, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !489, file: !452, line: 114, baseType: !51, size: 32, offset: 480)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !489, file: !452, line: 115, baseType: !223, size: 32, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !489, file: !452, line: 116, baseType: !223, size: 32, offset: 544)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !489, file: !452, line: 117, baseType: !51, size: 32, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !489, file: !452, line: 119, baseType: !51, size: 32, offset: 608)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !489, file: !452, line: 120, baseType: !51, size: 32, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !489, file: !452, line: 137, baseType: !513, size: 384, offset: 672)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !452, line: 122, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !513, file: !452, line: 124, baseType: !51, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !513, file: !452, line: 125, baseType: !51, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !513, file: !452, line: 126, baseType: !51, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !513, file: !452, line: 127, baseType: !51, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !513, file: !452, line: 128, baseType: !51, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !513, file: !452, line: 129, baseType: !51, size: 32, offset: 160)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !513, file: !452, line: 130, baseType: !51, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !513, file: !452, line: 131, baseType: !51, size: 32, offset: 224)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !513, file: !452, line: 133, baseType: !51, size: 32, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !513, file: !452, line: 134, baseType: !51, size: 32, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !513, file: !452, line: 135, baseType: !51, size: 32, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !513, file: !452, line: 136, baseType: !51, size: 32, offset: 352)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !489, file: !452, line: 139, baseType: !51, size: 32, offset: 1056)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !489, file: !452, line: 140, baseType: !51, size: 32, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !489, file: !452, line: 141, baseType: !51, size: 32, offset: 1120)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !489, file: !452, line: 142, baseType: !51, size: 32, offset: 1152)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !489, file: !452, line: 143, baseType: !51, size: 32, offset: 1184)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !489, file: !452, line: 144, baseType: !51, size: 32, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !489, file: !452, line: 145, baseType: !51, size: 32, offset: 1248)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !489, file: !452, line: 146, baseType: !51, size: 32, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !489, file: !452, line: 147, baseType: !51, size: 32, offset: 1312)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !453, file: !452, line: 152, baseType: !51, size: 32, offset: 10368)
!537 = !{!538}
!538 = !DISubrange(count: 1)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !392, file: !393, line: 431, baseType: !540, size: 64, offset: 25600)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !392, file: !393, line: 432, baseType: !542, size: 960, offset: 25664)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 960, elements: !537)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !452, line: 186, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 156, size: 960, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !544, file: !452, line: 158, baseType: !51, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !544, file: !452, line: 159, baseType: !51, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !544, file: !452, line: 161, baseType: !51, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !544, file: !452, line: 163, baseType: !51, size: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !544, file: !452, line: 164, baseType: !51, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !544, file: !452, line: 166, baseType: !51, size: 32, offset: 160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !544, file: !452, line: 167, baseType: !51, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !544, file: !452, line: 169, baseType: !51, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !544, file: !452, line: 170, baseType: !51, size: 32, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !544, file: !452, line: 172, baseType: !51, size: 32, offset: 288)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !544, file: !452, line: 173, baseType: !51, size: 32, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !544, file: !452, line: 175, baseType: !51, size: 32, offset: 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !544, file: !452, line: 177, baseType: !51, size: 32, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !544, file: !452, line: 178, baseType: !51, size: 32, offset: 416)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !544, file: !452, line: 179, baseType: !51, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !544, file: !452, line: 181, baseType: !51, size: 32, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !544, file: !452, line: 183, baseType: !51, size: 32, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !544, file: !452, line: 184, baseType: !564, size: 384, offset: 576)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 384, elements: !567)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!567 = !{!568}
!568 = !DISubrange(count: 6)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !392, file: !393, line: 433, baseType: !570, size: 64, offset: 26624)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !392, file: !393, line: 434, baseType: !51, size: 32, offset: 26688)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !392, file: !393, line: 437, baseType: !51, size: 32, offset: 26720)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !392, file: !393, line: 440, baseType: !574, size: 256, offset: 26752)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 256, elements: !267)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !116)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !392, file: !393, line: 441, baseType: !578, size: 128, offset: 27008)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 128, elements: !171)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !123)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !392, file: !393, line: 443, baseType: !574, size: 256, offset: 27136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !392, file: !393, line: 444, baseType: !578, size: 128, offset: 27392)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !392, file: !393, line: 446, baseType: !584, size: 256, offset: 27520)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 256, elements: !267)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !116)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !392, file: !393, line: 447, baseType: !588, size: 128, offset: 27776)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 128, elements: !171)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !123)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !392, file: !393, line: 448, baseType: !584, size: 256, offset: 27904)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !392, file: !393, line: 449, baseType: !588, size: 128, offset: 28160)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !392, file: !393, line: 454, baseType: !594, size: 5888, offset: 28288)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 5888, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 92)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !392, file: !393, line: 455, baseType: !598, size: 23552, offset: 34176)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 23552, elements: !599)
!599 = !{!596, !268}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !392, file: !393, line: 457, baseType: !565, size: 64, offset: 57728)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !392, file: !393, line: 460, baseType: !602, size: 53376, offset: 57856)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !393, line: 364, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 302, size: 53376, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !632, !636, !637, !638, !644, !645, !646, !647, !648, !649, !650, !651}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !603, file: !393, line: 304, baseType: !540, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !603, file: !393, line: 305, baseType: !570, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !603, file: !393, line: 307, baseType: !51, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !603, file: !393, line: 308, baseType: !51, size: 32, offset: 160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !603, file: !393, line: 309, baseType: !51, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !603, file: !393, line: 311, baseType: !51, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !603, file: !393, line: 313, baseType: !51, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !603, file: !393, line: 315, baseType: !51, size: 32, offset: 288)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !603, file: !393, line: 316, baseType: !51, size: 32, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !603, file: !393, line: 317, baseType: !51, size: 32, offset: 352)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !603, file: !393, line: 319, baseType: !51, size: 32, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !603, file: !393, line: 321, baseType: !51, size: 32, offset: 416)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !603, file: !393, line: 322, baseType: !51, size: 32, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !603, file: !393, line: 324, baseType: !170, size: 64, offset: 480)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !603, file: !393, line: 325, baseType: !51, size: 32, offset: 544)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !603, file: !393, line: 327, baseType: !51, size: 32, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !603, file: !393, line: 329, baseType: !51, size: 32, offset: 608)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !603, file: !393, line: 330, baseType: !51, size: 32, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !603, file: !393, line: 331, baseType: !51, size: 32, offset: 672)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !603, file: !393, line: 333, baseType: !51, size: 32, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !603, file: !393, line: 334, baseType: !51, size: 32, offset: 736)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !603, file: !393, line: 339, baseType: !627, size: 2048, offset: 768)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 2048, elements: !333)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !393, line: 335, size: 64, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !628, file: !393, line: 337, baseType: !51, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !628, file: !393, line: 338, baseType: !51, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !603, file: !393, line: 342, baseType: !633, size: 49152, align: 128, offset: 2816)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 49152, align: 128, elements: !634)
!634 = !{!635, !256}
!635 = !DISubrange(count: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !603, file: !393, line: 344, baseType: !51, size: 32, offset: 51968)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !603, file: !393, line: 345, baseType: !51, size: 32, offset: 52000)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !603, file: !393, line: 350, baseType: !639, size: 1024, offset: 52032)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 1024, elements: !116)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !393, line: 346, size: 64, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !640, file: !393, line: 348, baseType: !51, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !640, file: !393, line: 349, baseType: !51, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !603, file: !393, line: 352, baseType: !51, size: 32, offset: 53056)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !603, file: !393, line: 354, baseType: !51, size: 32, offset: 53088)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !603, file: !393, line: 355, baseType: !51, size: 32, offset: 53120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !603, file: !393, line: 356, baseType: !51, size: 32, offset: 53152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !603, file: !393, line: 357, baseType: !51, size: 32, offset: 53184)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !603, file: !393, line: 360, baseType: !51, size: 32, offset: 53216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !603, file: !393, line: 361, baseType: !51, size: 32, offset: 53248)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !603, file: !393, line: 362, baseType: !51, size: 32, offset: 53280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !392, file: !393, line: 463, baseType: !653, size: 4096, offset: 111232)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !654, line: 46, baseType: !655)
!654 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !654, line: 27, size: 4096, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !655, file: !654, line: 30, baseType: !51, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !655, file: !654, line: 31, baseType: !51, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !655, file: !654, line: 34, baseType: !51, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !655, file: !654, line: 35, baseType: !51, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !655, file: !654, line: 37, baseType: !264, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !655, file: !654, line: 38, baseType: !264, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !655, file: !654, line: 39, baseType: !264, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !655, file: !654, line: 42, baseType: !51, size: 32, align: 128, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !655, file: !654, line: 45, baseType: !666, size: 3680, offset: 416)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3680, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 460)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !392, file: !393, line: 494, baseType: !670, size: 2112, offset: 115328)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 465, size: 2112, elements: !671)
!671 = !{!672, !674, !676, !677, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !690, !691, !692, !693}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !670, file: !393, line: 468, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !670, file: !393, line: 470, baseType: !675, size: 128, offset: 64)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 128, elements: !171)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !670, file: !393, line: 473, baseType: !673, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !670, file: !393, line: 476, baseType: !678, size: 1152, offset: 256)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1152, elements: !341)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !670, file: !393, line: 478, baseType: !51, size: 32, offset: 1408)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !670, file: !393, line: 480, baseType: !51, size: 32, offset: 1440)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !670, file: !393, line: 482, baseType: !51, size: 32, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !670, file: !393, line: 483, baseType: !51, size: 32, offset: 1504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !670, file: !393, line: 484, baseType: !51, size: 32, offset: 1536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !670, file: !393, line: 485, baseType: !51, size: 32, offset: 1568)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !670, file: !393, line: 486, baseType: !51, size: 32, offset: 1600)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !670, file: !393, line: 487, baseType: !55, size: 64, offset: 1664)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !670, file: !393, line: 488, baseType: !55, size: 64, offset: 1728)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !670, file: !393, line: 489, baseType: !689, size: 128, offset: 1792)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !171)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !670, file: !393, line: 490, baseType: !55, size: 64, offset: 1920)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !670, file: !393, line: 491, baseType: !55, size: 64, offset: 1984)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !670, file: !393, line: 492, baseType: !51, size: 32, offset: 2048)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !670, file: !393, line: 493, baseType: !51, size: 32, offset: 2080)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !392, file: !393, line: 497, baseType: !45, size: 64, offset: 117440)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !392, file: !393, line: 500, baseType: !45, size: 64, offset: 117504)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !392, file: !393, line: 503, baseType: !51, size: 32, offset: 117568)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !392, file: !393, line: 504, baseType: !698, size: 1216, offset: 117632)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1216, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 19)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !392, file: !393, line: 505, baseType: !51, size: 32, offset: 118848)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !392, file: !393, line: 506, baseType: !698, size: 1216, offset: 118912)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !392, file: !393, line: 507, baseType: !170, size: 64, offset: 120128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !392, file: !393, line: 510, baseType: !51, size: 32, offset: 120192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !392, file: !393, line: 511, baseType: !51, size: 32, offset: 120224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !392, file: !393, line: 512, baseType: !55, size: 64, offset: 120256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !392, file: !393, line: 522, baseType: !708, size: 10624, offset: 120320)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 515, size: 10624, elements: !709)
!709 = !{!710, !712, !715, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !708, file: !393, line: 517, baseType: !711, size: 256, align: 128)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !116)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !708, file: !393, line: 518, baseType: !713, size: 128, align: 128, offset: 256)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 128, elements: !714)
!714 = !{!172, !268}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !708, file: !393, line: 520, baseType: !716, size: 4096, align: 128, offset: 384)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 4096, elements: !717)
!717 = !{!268, !124}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !708, file: !393, line: 521, baseType: !719, size: 6144, align: 128, offset: 4480)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 6144, elements: !720)
!720 = !{!721, !117}
!721 = !DISubrange(count: 24)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !392, file: !393, line: 732, baseType: !723, size: 82688, offset: 130944)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 525, size: 82688, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !752, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !770, !773, !777, !778, !779, !784, !785, !788, !789, !790, !791, !792, !793, !794, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !854, !885, !886, !887, !888, !889, !890, !891, !892, !893, !896, !897, !898, !901, !904, !906, !909, !911, !912}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !723, file: !393, line: 527, baseType: !51, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !723, file: !393, line: 530, baseType: !51, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !723, file: !393, line: 531, baseType: !51, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !723, file: !393, line: 532, baseType: !51, size: 32, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !723, file: !393, line: 535, baseType: !51, size: 32, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !723, file: !393, line: 536, baseType: !51, size: 32, offset: 160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !723, file: !393, line: 537, baseType: !51, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !723, file: !393, line: 538, baseType: !51, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !723, file: !393, line: 539, baseType: !51, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !723, file: !393, line: 542, baseType: !51, size: 32, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !723, file: !393, line: 543, baseType: !51, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !723, file: !393, line: 544, baseType: !51, size: 32, offset: 352)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !723, file: !393, line: 545, baseType: !51, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !723, file: !393, line: 546, baseType: !51, size: 32, offset: 416)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !723, file: !393, line: 547, baseType: !51, size: 32, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !723, file: !393, line: 548, baseType: !51, size: 32, offset: 480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !723, file: !393, line: 549, baseType: !51, size: 32, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !723, file: !393, line: 551, baseType: !51, size: 32, offset: 544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !723, file: !393, line: 554, baseType: !170, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !723, file: !393, line: 555, baseType: !170, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !723, file: !393, line: 558, baseType: !170, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !723, file: !393, line: 559, baseType: !170, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !723, file: !393, line: 561, baseType: !170, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !723, file: !393, line: 562, baseType: !170, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !723, file: !393, line: 565, baseType: !16, size: 32, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !723, file: !393, line: 566, baseType: !751, size: 128, offset: 992)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !267)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !723, file: !393, line: 567, baseType: !753, size: 512, offset: 1120)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !116)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !723, file: !393, line: 568, baseType: !16, size: 32, offset: 1632)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !723, file: !393, line: 569, baseType: !16, size: 32, offset: 1664)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !723, file: !393, line: 570, baseType: !51, size: 32, offset: 1696)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !723, file: !393, line: 571, baseType: !51, size: 32, offset: 1728)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !723, file: !393, line: 572, baseType: !51, size: 32, offset: 1760)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !723, file: !393, line: 573, baseType: !51, size: 32, offset: 1792)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !723, file: !393, line: 574, baseType: !51, size: 32, offset: 1824)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !723, file: !393, line: 575, baseType: !51, size: 32, offset: 1856)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !723, file: !393, line: 576, baseType: !51, size: 32, offset: 1888)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !723, file: !393, line: 577, baseType: !51, size: 32, offset: 1920)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !723, file: !393, line: 578, baseType: !51, size: 32, offset: 1952)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !393, line: 585, baseType: !307, size: 64, offset: 1984)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !723, file: !393, line: 586, baseType: !264, size: 64, offset: 2048)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !723, file: !393, line: 587, baseType: !307, size: 64, offset: 2112)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !723, file: !393, line: 588, baseType: !769, size: 64, offset: 2176)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !723, file: !393, line: 589, baseType: !771, size: 64, offset: 2240)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !284)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !723, file: !393, line: 591, baseType: !774, size: 64, offset: 2304)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 192, elements: !776)
!776 = !{!721}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !723, file: !393, line: 592, baseType: !307, size: 64, offset: 2368)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !723, file: !393, line: 593, baseType: !313, size: 128, offset: 2432)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !723, file: !393, line: 594, baseType: !780, size: 128, offset: 2560)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 128, elements: !171)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !783)
!783 = !{!285, !172}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !723, file: !393, line: 595, baseType: !329, size: 128, offset: 2688)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !723, file: !393, line: 596, baseType: !786, size: 4096, offset: 2816)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 4096, elements: !787)
!787 = !{!172, !635}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !723, file: !393, line: 597, baseType: !307, size: 64, offset: 6912)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !723, file: !393, line: 598, baseType: !307, size: 64, offset: 6976)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !723, file: !393, line: 599, baseType: !27, size: 64, offset: 7040)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !723, file: !393, line: 603, baseType: !302, size: 1024, offset: 7104)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !723, file: !393, line: 606, baseType: !51, size: 32, offset: 8128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !723, file: !393, line: 607, baseType: !51, size: 32, offset: 8160)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !723, file: !393, line: 608, baseType: !795, size: 32, align: 32, offset: 8192)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 32, elements: !267)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !723, file: !393, line: 609, baseType: !51, size: 32, offset: 8224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !723, file: !393, line: 611, baseType: !51, size: 32, offset: 8256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !723, file: !393, line: 612, baseType: !51, size: 32, offset: 8288)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !723, file: !393, line: 614, baseType: !51, size: 32, offset: 8320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !723, file: !393, line: 615, baseType: !51, size: 32, offset: 8352)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !723, file: !393, line: 621, baseType: !51, size: 32, offset: 8384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !723, file: !393, line: 624, baseType: !51, size: 32, offset: 8416)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !723, file: !393, line: 626, baseType: !51, size: 32, offset: 8448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !723, file: !393, line: 627, baseType: !51, size: 32, offset: 8480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !723, file: !393, line: 671, baseType: !806, size: 60672, offset: 8576)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !393, line: 629, size: 60672, elements: !807)
!807 = !{!808, !812, !816, !818, !819, !822, !826, !828, !829, !830, !831, !832, !835, !839, !842, !843, !844, !845, !846, !849, !851, !853}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !806, file: !393, line: 634, baseType: !809, size: 3072, align: 128)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3072, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !806, file: !393, line: 635, baseType: !813, size: 6912, align: 128, offset: 3072)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 6912, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 864)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !806, file: !393, line: 638, baseType: !817, size: 2048, align: 128, offset: 9984)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2048, elements: !470)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !806, file: !393, line: 639, baseType: !817, size: 2048, align: 128, offset: 12032)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !806, file: !393, line: 640, baseType: !820, size: 3072, align: 128, offset: 14080)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 3072, elements: !821)
!821 = !{!256, !124}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !806, file: !393, line: 641, baseType: !823, size: 3840, align: 128, offset: 17152)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 3840, elements: !824)
!824 = !{!825, !117}
!825 = !DISubrange(count: 15)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !806, file: !393, line: 642, baseType: !827, size: 128, offset: 20992)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !267)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !806, file: !393, line: 643, baseType: !827, size: 128, offset: 21120)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !806, file: !393, line: 644, baseType: !51, size: 32, offset: 21248)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !806, file: !393, line: 645, baseType: !51, size: 32, offset: 21280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !806, file: !393, line: 648, baseType: !716, size: 4096, align: 128, offset: 21376)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !806, file: !393, line: 649, baseType: !833, size: 4096, align: 128, offset: 25472)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 4096, elements: !834)
!834 = !{!117, !117}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !806, file: !393, line: 652, baseType: !836, size: 576, align: 128, offset: 29568)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 576, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 9)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !806, file: !393, line: 653, baseType: !840, size: 1024, align: 128, offset: 30208)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 1024, elements: !841)
!841 = !{!635}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !806, file: !393, line: 656, baseType: !263, size: 192, offset: 31232)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !806, file: !393, line: 658, baseType: !263, size: 192, offset: 31424)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !806, file: !393, line: 661, baseType: !263, size: 192, offset: 31616)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !806, file: !393, line: 664, baseType: !170, size: 64, offset: 31808)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !806, file: !393, line: 665, baseType: !847, size: 24576, offset: 31872)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 24576, elements: !848)
!848 = !{!172, !635, !568}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !806, file: !393, line: 666, baseType: !850, size: 2048, offset: 56448)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 2048, elements: !841)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !806, file: !393, line: 667, baseType: !852, size: 2048, offset: 58496)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !333)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !806, file: !393, line: 670, baseType: !254, size: 96, offset: 60544)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !723, file: !393, line: 704, baseType: !855, size: 6144, offset: 69248)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !393, line: 674, size: 6144, elements: !856)
!856 = !{!857, !861, !865, !868, !871, !873, !874, !877, !879, !880, !881, !882, !883, !884}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !855, file: !393, line: 677, baseType: !858, size: 320, align: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 320, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 40)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !855, file: !393, line: 680, baseType: !862, size: 384, align: 128, offset: 384)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 384, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 48)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !855, file: !393, line: 683, baseType: !866, size: 640, align: 32, offset: 768)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 640, elements: !867)
!867 = !{!172, !860}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !855, file: !393, line: 686, baseType: !869, size: 2560, align: 128, offset: 1408)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 2560, elements: !870)
!870 = !{!172, !860, !172}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !855, file: !393, line: 687, baseType: !872, size: 1280, align: 64, offset: 3968)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1280, elements: !870)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !855, file: !393, line: 690, baseType: !858, size: 320, align: 32, offset: 5248)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !855, file: !393, line: 692, baseType: !875, size: 256, align: 32, offset: 5568)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !876)
!876 = !{!172, !268, !172}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !855, file: !393, line: 693, baseType: !878, size: 64, align: 32, offset: 5824)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !714)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !855, file: !393, line: 694, baseType: !51, size: 32, offset: 5888)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !855, file: !393, line: 695, baseType: !315, size: 32, align: 32, offset: 5920)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !855, file: !393, line: 698, baseType: !51, size: 32, offset: 5952)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !855, file: !393, line: 699, baseType: !51, size: 32, offset: 5984)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !855, file: !393, line: 702, baseType: !51, size: 32, offset: 6016)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !855, file: !393, line: 703, baseType: !51, size: 32, offset: 6048)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !723, file: !393, line: 707, baseType: !51, size: 32, offset: 75392)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !723, file: !393, line: 708, baseType: !51, size: 32, offset: 75424)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !723, file: !393, line: 709, baseType: !51, size: 32, offset: 75456)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !723, file: !393, line: 710, baseType: !51, size: 32, offset: 75488)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !723, file: !393, line: 711, baseType: !51, size: 32, offset: 75520)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !723, file: !393, line: 712, baseType: !51, size: 32, offset: 75552)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !723, file: !393, line: 713, baseType: !51, size: 32, offset: 75584)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !723, file: !393, line: 714, baseType: !51, size: 32, offset: 75616)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !723, file: !393, line: 717, baseType: !894, size: 128, offset: 75648)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !895)
!895 = !{!172, !172}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !723, file: !393, line: 718, baseType: !51, size: 32, offset: 75776)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !723, file: !393, line: 719, baseType: !51, size: 32, offset: 75808)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !723, file: !393, line: 722, baseType: !899, size: 4096, offset: 75840)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 4096, elements: !900)
!900 = !{!172, !635, !268}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !723, file: !393, line: 723, baseType: !902, size: 64, offset: 79936)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 64, elements: !267)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !723, file: !393, line: 724, baseType: !905, size: 2048, offset: 80000)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 2048, elements: !900)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !723, file: !393, line: 725, baseType: !907, size: 64, offset: 82048)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 32, elements: !267)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !723, file: !393, line: 728, baseType: !910, size: 144, offset: 82112)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 144, elements: !341)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !723, file: !393, line: 729, baseType: !51, size: 32, offset: 82272)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !723, file: !393, line: 730, baseType: !913, size: 272, offset: 82304)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 272, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 34)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !392, file: !393, line: 735, baseType: !917, size: 64, offset: 213632)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !393, line: 379, baseType: !919)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !393, line: 379, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !392, file: !393, line: 793, baseType: !921, size: 29504, offset: 213696)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !393, line: 738, size: 29504, elements: !922)
!922 = !{!923, !950, !954, !956, !958, !959, !960, !961, !962, !963, !964, !965, !968, !970, !971, !974, !976, !978, !979, !980}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !921, file: !393, line: 764, baseType: !924, size: 5632)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !393, line: 741, size: 5632, elements: !925)
!925 = !{!926, !927, !928, !929, !931, !932, !933, !934, !935, !937, !940, !942, !946, !947, !949}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !924, file: !393, line: 744, baseType: !51, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !924, file: !393, line: 746, baseType: !51, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !924, file: !393, line: 748, baseType: !51, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !924, file: !393, line: 750, baseType: !930, size: 608, offset: 96)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 608, elements: !699)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !924, file: !393, line: 751, baseType: !51, size: 32, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !924, file: !393, line: 752, baseType: !51, size: 32, offset: 736)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !924, file: !393, line: 753, baseType: !51, size: 32, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !924, file: !393, line: 754, baseType: !170, size: 64, offset: 800)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !924, file: !393, line: 755, baseType: !936, size: 2048, offset: 864)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !787)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !924, file: !393, line: 756, baseType: !938, size: 544, offset: 2912)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 544, elements: !939)
!939 = !{!320}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !924, file: !393, line: 757, baseType: !941, size: 192, offset: 3456)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !567)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !924, file: !393, line: 758, baseType: !943, size: 1664, offset: 3648)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1664, elements: !944)
!944 = !{!268, !945}
!945 = !DISubrange(count: 13)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !924, file: !393, line: 760, baseType: !170, size: 64, offset: 5312)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !924, file: !393, line: 762, baseType: !948, size: 192, offset: 5376)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 192, elements: !255)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !924, file: !393, line: 763, baseType: !367, size: 64, offset: 5568)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !921, file: !393, line: 769, baseType: !951, size: 160, offset: 5632)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 5)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !921, file: !393, line: 770, baseType: !955, size: 320, offset: 5824)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 320, elements: !952)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !921, file: !393, line: 771, baseType: !957, size: 320, offset: 6144)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 320, elements: !952)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !921, file: !393, line: 772, baseType: !938, size: 544, offset: 6464)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !921, file: !393, line: 774, baseType: !955, size: 320, offset: 7040)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !921, file: !393, line: 775, baseType: !957, size: 320, offset: 7360)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !921, file: !393, line: 776, baseType: !957, size: 320, offset: 7680)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !921, file: !393, line: 777, baseType: !957, size: 320, offset: 8000)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !921, file: !393, line: 778, baseType: !957, size: 320, offset: 8320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !921, file: !393, line: 779, baseType: !957, size: 320, offset: 8640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !921, file: !393, line: 781, baseType: !966, size: 6080, offset: 8960)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 6080, elements: !967)
!967 = !{!953, !700}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !921, file: !393, line: 782, baseType: !969, size: 2176, offset: 15040)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2176, elements: !319)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !921, file: !393, line: 783, baseType: !689, size: 128, offset: 17216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !921, file: !393, line: 784, baseType: !972, size: 8192, offset: 17344)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8192, elements: !973)
!973 = !{!172, !172, !635}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !921, file: !393, line: 785, baseType: !975, size: 384, offset: 25536)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 384, elements: !567)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !921, file: !393, line: 786, baseType: !977, size: 3328, offset: 25920)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !944)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !921, file: !393, line: 788, baseType: !170, size: 64, offset: 29248)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !921, file: !393, line: 789, baseType: !170, size: 64, offset: 29312)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !921, file: !393, line: 791, baseType: !254, size: 96, offset: 29376)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !392, file: !393, line: 795, baseType: !982, size: 4096, align: 128, offset: 243200)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 4096, elements: !983)
!983 = !{!172, !124}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !392, file: !393, line: 796, baseType: !985, size: 2048, align: 128, offset: 247296)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !983)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !392, file: !393, line: 797, baseType: !987, size: 64, offset: 249344)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !171)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !392, file: !393, line: 800, baseType: !130, size: 64, offset: 249408)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !392, file: !393, line: 801, baseType: !990, size: 384, offset: 249472)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 384, elements: !991)
!991 = !{!172, !256}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !392, file: !393, line: 802, baseType: !993, size: 128, offset: 249856)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 128, elements: !171)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !996)
!996 = !{!172, !268, !268}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !392, file: !393, line: 805, baseType: !998, size: 448, offset: 249984)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 448, elements: !1004)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1000, line: 27, baseType: !1001)
!1000 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !264}
!1004 = !{!1005}
!1005 = !DISubrange(count: 7)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !392, file: !393, line: 806, baseType: !998, size: 448, offset: 250432)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !392, file: !393, line: 807, baseType: !1008, size: 768, offset: 250880)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 768, elements: !1013)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1000, line: 28, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !264, !264}
!1013 = !{!1014}
!1014 = !DISubrange(count: 12)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !392, file: !393, line: 808, baseType: !1016, size: 768, offset: 251648)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 768, elements: !1013)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !392, file: !393, line: 809, baseType: !1018, size: 64, offset: 252416)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1000, line: 29, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !264, !264, !51, !51}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !392, file: !393, line: 811, baseType: !1023, size: 8448, offset: 252480)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1024, line: 110, baseType: !1025)
!1024 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1024, line: 63, size: 8448, elements: !1026)
!1026 = !{!1027, !1033, !1034, !1035, !1036, !1038, !1039, !1040, !1041, !1047, !1053, !1054, !1058, !1063, !1064, !1070, !1074, !1075, !1076, !1077, !1078, !1083, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1025, file: !1024, line: 65, baseType: !1028, size: 448)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 448, elements: !1004)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1024, line: 26, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!51, !264, !51, !264, !51}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1025, file: !1024, line: 66, baseType: !1028, size: 448, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1025, file: !1024, line: 67, baseType: !1028, size: 448, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1025, file: !1024, line: 68, baseType: !1028, size: 448, offset: 1344)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1025, file: !1024, line: 69, baseType: !1037, size: 256, offset: 1792)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !267)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1025, file: !1024, line: 70, baseType: !1028, size: 448, offset: 2048)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1025, file: !1024, line: 71, baseType: !1028, size: 448, offset: 2496)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1025, file: !1024, line: 72, baseType: !1028, size: 448, offset: 2944)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1025, file: !1024, line: 73, baseType: !1042, size: 448, offset: 3392)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 448, elements: !1004)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1024, line: 27, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !264, !264, !264, !264, !51, !327}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1025, file: !1024, line: 74, baseType: !1048, size: 448, offset: 3840)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 448, elements: !1004)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1024, line: 28, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !264, !264, !264, !264, !264, !51, !327}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1025, file: !1024, line: 75, baseType: !1028, size: 448, offset: 4288)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1025, file: !1024, line: 76, baseType: !1055, size: 64, offset: 4736)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!51, !264, !51, !264, !51, !327}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1025, file: !1024, line: 78, baseType: !1059, size: 256, offset: 4800)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 256, elements: !267)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!359, !264, !51}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1025, file: !1024, line: 79, baseType: !1059, size: 256, offset: 5056)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1025, file: !1024, line: 81, baseType: !1065, size: 64, offset: 5312)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !565, !51, !565, !51, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !267)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1025, file: !1024, line: 83, baseType: !1071, size: 64, offset: 5376)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!166, !1068, !1068, !51}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1025, file: !1024, line: 86, baseType: !1042, size: 448, offset: 5440)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1025, file: !1024, line: 87, baseType: !1048, size: 448, offset: 5888)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1025, file: !1024, line: 88, baseType: !1042, size: 448, offset: 6336)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1025, file: !1024, line: 89, baseType: !1048, size: 448, offset: 6784)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1025, file: !1024, line: 93, baseType: !1079, size: 448, offset: 7232)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 448, elements: !1004)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!51, !327, !27, !51, !27, !769, !51, !51}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1025, file: !1024, line: 98, baseType: !1084, size: 64, offset: 7680)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !264, !264, !327}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1025, file: !1024, line: 99, baseType: !1084, size: 64, offset: 7744)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1025, file: !1024, line: 100, baseType: !1084, size: 64, offset: 7808)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1025, file: !1024, line: 101, baseType: !1084, size: 64, offset: 7872)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1025, file: !1024, line: 102, baseType: !1084, size: 64, offset: 7936)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1025, file: !1024, line: 103, baseType: !1084, size: 64, offset: 8000)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1025, file: !1024, line: 104, baseType: !1084, size: 64, offset: 8064)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1025, file: !1024, line: 105, baseType: !1084, size: 64, offset: 8128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1025, file: !1024, line: 106, baseType: !1084, size: 64, offset: 8192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1025, file: !1024, line: 107, baseType: !1084, size: 64, offset: 8256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1025, file: !1024, line: 108, baseType: !1084, size: 64, offset: 8320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1025, file: !1024, line: 109, baseType: !1084, size: 64, offset: 8384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !392, file: !393, line: 812, baseType: !1099, size: 2368, offset: 260928)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !276, line: 111, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 58, size: 2368, elements: !1101)
!1101 = !{!1102, !1109, !1113, !1117, !1124, !1129, !1130, !1134, !1138, !1139, !1143, !1151, !1155, !1159, !1160, !1164, !1168, !1172, !1173, !1174, !1175, !1180}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1100, file: !276, line: 60, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !264, !51, !1106, !51, !51, !51, !51, !51, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1100, file: !276, line: 65, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!264, !264, !327, !1106, !51, !51, !51, !51, !51, !1107}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1100, file: !276, line: 71, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !264, !51, !264, !51, !51, !51, !51, !51}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1100, file: !276, line: 75, baseType: !1118, size: 640, offset: 192)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1119, size: 640, elements: !1122)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !264, !51, !264, !51, !264, !51, !51}
!1122 = !{!1123}
!1123 = !DISubrange(count: 10)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1100, file: !276, line: 78, baseType: !1125, size: 448, offset: 832)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 448, elements: !1004)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !264, !51, !264, !51, !51}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1100, file: !276, line: 79, baseType: !1126, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1100, file: !276, line: 81, baseType: !1131, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !264, !51, !264, !51, !51, !51}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1100, file: !276, line: 84, baseType: !1135, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !264, !264, !264, !264, !51, !51, !51, !769}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1100, file: !276, line: 88, baseType: !1126, size: 64, offset: 1472)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1100, file: !276, line: 91, baseType: !1140, size: 64, offset: 1536)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !264, !51, !51}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1100, file: !276, line: 93, baseType: !1144, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!130, !130, !1147, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1150, line: 18, baseType: !361)
!1150 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1100, file: !276, line: 94, baseType: !1152, size: 64, offset: 1664)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !130, !51}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1100, file: !276, line: 97, baseType: !1156, size: 64, offset: 1728)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !27, !264, !51}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1100, file: !276, line: 98, baseType: !1156, size: 64, offset: 1792)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1100, file: !276, line: 99, baseType: !1161, size: 64, offset: 1856)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !27, !27, !51}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1100, file: !276, line: 100, baseType: !1165, size: 64, offset: 1920)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !27, !51}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1100, file: !276, line: 102, baseType: !1169, size: 64, offset: 1984)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !264, !264, !264, !264, !264, !51, !51, !51, !51}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1100, file: !276, line: 104, baseType: !293, size: 64, offset: 2048)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1100, file: !276, line: 105, baseType: !293, size: 64, offset: 2112)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1100, file: !276, line: 106, baseType: !293, size: 64, offset: 2176)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1100, file: !276, line: 107, baseType: !1176, size: 64, offset: 2240)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !390, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1100, file: !276, line: 109, baseType: !1181, size: 64, offset: 2304)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !327, !27, !27, !27, !27, !51}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !392, file: !393, line: 813, baseType: !1185, size: 960, offset: 263296)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1186, line: 115, baseType: !1187)
!1186 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 89, size: 960, elements: !1188)
!1188 = !{!1189, !1193, !1197, !1202, !1203, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1219, !1223, !1227}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1187, file: !1186, line: 94, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !769, !264, !264}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1187, file: !1186, line: 95, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !264, !769}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1187, file: !1186, line: 97, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1201, !264, !264}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1187, file: !1186, line: 98, baseType: !1190, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1187, file: !1186, line: 99, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !264, !1201}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1187, file: !1186, line: 100, baseType: !1194, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1187, file: !1186, line: 102, baseType: !1198, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1187, file: !1186, line: 103, baseType: !1204, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1187, file: !1186, line: 104, baseType: !1194, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1187, file: !1186, line: 106, baseType: !1190, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1187, file: !1186, line: 107, baseType: !1194, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1187, file: !1186, line: 109, baseType: !1214, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1217, !264, !264}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 1024, elements: !123)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1187, file: !1186, line: 110, baseType: !1220, size: 64, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !264, !1217}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1187, file: !1186, line: 112, baseType: !1224, size: 64, offset: 832)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !769}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1187, file: !1186, line: 113, baseType: !1224, size: 64, offset: 896)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !392, file: !393, line: 814, baseType: !1229, size: 384, offset: 264256)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1186, line: 126, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 117, size: 384, elements: !1231)
!1231 = !{!1232, !1236, !1237, !1241, !1242, !1246}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1230, file: !1186, line: 119, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !769, !769}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1230, file: !1186, line: 120, baseType: !1233, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1230, file: !1186, line: 121, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!51, !769, !565, !264}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1230, file: !1186, line: 122, baseType: !1238, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1230, file: !1186, line: 123, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!51, !769, !565, !264, !769}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1230, file: !1186, line: 124, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !769, !769, !264}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !392, file: !393, line: 815, baseType: !1251, size: 1408, offset: 264640)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1252, line: 44, baseType: !1253)
!1252 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1252, line: 26, size: 1408, elements: !1254)
!1254 = !{!1255, !1259, !1260, !1264, !1265, !1269, !1273, !1274, !1279, !1283, !1284, !1285, !1287}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1253, file: !1252, line: 28, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!51, !769, !27, !27}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1253, file: !1252, line: 29, baseType: !1256, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1253, file: !1252, line: 30, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!51, !769, !51, !51}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1253, file: !1252, line: 31, baseType: !1261, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1253, file: !1252, line: 33, baseType: !1266, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !769, !579, !51}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1253, file: !1252, line: 34, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !769, !575, !51}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1253, file: !1252, line: 35, baseType: !1270, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1253, file: !1252, line: 37, baseType: !1275, size: 64, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !769, !1278, !27, !51}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1253, file: !1252, line: 39, baseType: !1280, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!51, !769}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1253, file: !1252, line: 40, baseType: !1280, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1253, file: !1252, line: 41, baseType: !1280, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1253, file: !1252, line: 42, baseType: !1286, size: 384, offset: 704)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 384, elements: !567)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1253, file: !1252, line: 43, baseType: !1288, size: 320, offset: 1088)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 320, elements: !952)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!51, !769, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !423, line: 63, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 58, size: 416, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1294, file: !423, line: 60, baseType: !51, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1294, file: !423, line: 61, baseType: !711, size: 256, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1294, file: !423, line: 62, baseType: !112, size: 128, offset: 288)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !392, file: !393, line: 816, baseType: !1300, size: 576, offset: 266048)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !47, line: 170, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 161, size: 576, elements: !1302)
!1302 = !{!1303, !1309, !1310, !1316, !1317}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1301, file: !47, line: 163, baseType: !1304, size: 128)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 128, elements: !171)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !47, line: 159, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !264, !51, !51, !51, !307}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1301, file: !47, line: 164, baseType: !1304, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1301, file: !47, line: 165, baseType: !1311, size: 128, offset: 256)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 128, elements: !171)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !47, line: 160, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !264, !51, !51, !51}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1301, file: !47, line: 166, baseType: !1311, size: 128, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1301, file: !47, line: 167, baseType: !1318, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !264, !1321, !1322, !1325, !51, !51}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 1280, elements: !1324)
!1324 = !{!860, !172}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !1327)
!1327 = !{!268, !268}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !392, file: !393, line: 821, baseType: !1329, size: 64, offset: 266624)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !393, line: 377, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !393, line: 366, size: 960, elements: !1332)
!1332 = !{!1333, !1335, !1336, !1337, !1338, !1339, !1340, !1350, !1351}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1331, file: !393, line: 368, baseType: !1334, size: 8)
!1334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1331, file: !393, line: 369, baseType: !113, size: 8, offset: 8)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1331, file: !393, line: 370, baseType: !113, size: 8, offset: 16)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1331, file: !393, line: 371, baseType: !51, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1331, file: !393, line: 372, baseType: !51, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1331, file: !393, line: 373, baseType: !45, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1331, file: !393, line: 374, baseType: !1341, size: 256, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !47, line: 157, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 149, size: 256, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1342, file: !47, line: 151, baseType: !673, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1342, file: !47, line: 152, baseType: !51, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1342, file: !47, line: 153, baseType: !51, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1342, file: !47, line: 154, baseType: !51, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1342, file: !47, line: 155, baseType: !51, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1342, file: !47, line: 156, baseType: !51, size: 32, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1331, file: !393, line: 375, baseType: !1341, size: 256, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1331, file: !393, line: 376, baseType: !1341, size: 256, offset: 704)
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1366, !1368, !1370, !1373, !1377, !1383, !1385, !1388, !1390, !1393}
!1353 = !DILocalVariable(name: "h", arg: 1, scope: !42, file: !2, line: 29, type: !390)
!1354 = !DILocalVariable(name: "b_fdec", arg: 2, scope: !42, file: !2, line: 29, type: !51)
!1355 = !DILocalVariable(name: "frame", scope: !42, file: !2, line: 31, type: !45)
!1356 = !DILocalVariable(name: "i_mb_count", scope: !42, file: !2, line: 33, type: !51)
!1357 = !DILocalVariable(name: "i_stride", scope: !42, file: !2, line: 34, type: !51)
!1358 = !DILocalVariable(name: "i_width", scope: !42, file: !2, line: 34, type: !51)
!1359 = !DILocalVariable(name: "i_lines", scope: !42, file: !2, line: 34, type: !51)
!1360 = !DILocalVariable(name: "i_padv", scope: !42, file: !2, line: 35, type: !51)
!1361 = !DILocalVariable(name: "luma_plane_size", scope: !42, file: !2, line: 36, type: !51)
!1362 = !DILocalVariable(name: "chroma_plane_size", scope: !42, file: !2, line: 37, type: !51)
!1363 = !DILocalVariable(name: "align", scope: !42, file: !2, line: 38, type: !51)
!1364 = !DILocalVariable(name: "i", scope: !1365, file: !2, line: 48, type: !51)
!1365 = distinct !DILexicalBlock(scope: !42, file: !2, line: 48, column: 5)
!1366 = !DILocalVariable(name: "i", scope: !1367, file: !2, line: 57, type: !51)
!1367 = distinct !DILexicalBlock(scope: !42, file: !2, line: 57, column: 5)
!1368 = !DILocalVariable(name: "i", scope: !1369, file: !2, line: 63, type: !51)
!1369 = distinct !DILexicalBlock(scope: !42, file: !2, line: 63, column: 5)
!1370 = !DILocalVariable(name: "j", scope: !1371, file: !2, line: 64, type: !51)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 64, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 63, column: 5)
!1373 = !DILocalVariable(name: "i", scope: !1374, file: !2, line: 91, type: !51)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 91, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 89, column: 5)
!1376 = distinct !DILexicalBlock(scope: !42, file: !2, line: 88, column: 9)
!1377 = !DILocalVariable(name: "i", scope: !1378, file: !2, line: 140, type: !51)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 140, column: 13)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 132, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 131, column: 13)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 130, column: 5)
!1382 = distinct !DILexicalBlock(scope: !42, file: !2, line: 103, column: 9)
!1383 = !DILocalVariable(name: "j", scope: !1384, file: !2, line: 143, type: !51)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 143, column: 13)
!1385 = !DILocalVariable(name: "i", scope: !1386, file: !2, line: 144, type: !51)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 144, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 143, column: 13)
!1388 = !DILocalVariable(name: "j", scope: !1389, file: !2, line: 150, type: !51)
!1389 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 150, column: 13)
!1390 = !DILocalVariable(name: "i", scope: !1391, file: !2, line: 151, type: !51)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 151, column: 17)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 150, column: 13)
!1393 = !DILabel(scope: !42, name: "fail", file: !2, line: 173)
!1394 = !DILocation(line: 0, scope: !42)
!1395 = !DILocation(line: 33, column: 25, scope: !42)
!1396 = !DILocation(line: 33, column: 28, scope: !42)
!1397 = !DILocation(line: 35, column: 35, scope: !42)
!1398 = !DILocation(line: 35, column: 23, scope: !42)
!1399 = !DILocation(line: 38, column: 26, scope: !42)
!1400 = !DILocation(line: 40, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 40, column: 5)
!1402 = distinct !DILexicalBlock(scope: !42, file: !2, line: 40, column: 5)
!1403 = !DILocation(line: 40, column: 5, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 40, column: 5)
!1405 = !DILocation(line: 38, column: 29, scope: !42)
!1406 = !DILocation(line: 38, column: 17, scope: !42)
!1407 = !DILocation(line: 40, column: 5, scope: !1402)
!1408 = !DILocation(line: 43, column: 16, scope: !42)
!1409 = !DILocation(line: 44, column: 16, scope: !42)
!1410 = !DILocation(line: 45, column: 16, scope: !42)
!1411 = !DILocation(line: 47, column: 12, scope: !42)
!1412 = !DILocation(line: 47, column: 20, scope: !42)
!1413 = !DILocation(line: 0, scope: !1365)
!1414 = !DILocation(line: 50, column: 30, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 49, column: 5)
!1416 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 48, column: 5)
!1417 = !DILocation(line: 50, column: 28, scope: !1415)
!1418 = !DILocation(line: 51, column: 27, scope: !1415)
!1419 = !DILocation(line: 52, column: 27, scope: !1415)
!1420 = !DILocation(line: 50, column: 9, scope: !1415)
!1421 = !DILocation(line: 51, column: 37, scope: !1415)
!1422 = !DILocation(line: 51, column: 9, scope: !1415)
!1423 = !DILocation(line: 52, column: 37, scope: !1415)
!1424 = !DILocation(line: 52, column: 9, scope: !1415)
!1425 = !DILocation(line: 55, column: 67, scope: !42)
!1426 = !DILocation(line: 55, column: 64, scope: !42)
!1427 = !DILocation(line: 55, column: 43, scope: !42)
!1428 = !DILocation(line: 56, column: 66, scope: !42)
!1429 = !DILocation(line: 56, column: 45, scope: !42)
!1430 = !DILocation(line: 0, scope: !1367)
!1431 = !DILocation(line: 59, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 59, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 58, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 57, column: 5)
!1435 = !DILocation(line: 59, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 59, column: 9)
!1437 = !DILocation(line: 63, column: 5, scope: !1369)
!1438 = !DILocation(line: 60, column: 47, scope: !1433)
!1439 = !DILocation(line: 60, column: 66, scope: !1433)
!1440 = !DILocation(line: 60, column: 75, scope: !1433)
!1441 = !DILocation(line: 60, column: 82, scope: !1433)
!1442 = !DILocation(line: 60, column: 44, scope: !1433)
!1443 = !DILocation(line: 60, column: 9, scope: !1433)
!1444 = !DILocation(line: 60, column: 25, scope: !1433)
!1445 = !DILocation(line: 0, scope: !1369)
!1446 = !DILocation(line: 63, column: 34, scope: !1372)
!1447 = !DILocation(line: 63, column: 23, scope: !1372)
!1448 = !DILocation(line: 0, scope: !1371)
!1449 = !DILocation(line: 64, column: 27, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 64, column: 9)
!1451 = !DILocation(line: 64, column: 9, scope: !1371)
!1452 = !DILocation(line: 64, column: 53, scope: !1450)
!1453 = !DILocation(line: 64, column: 38, scope: !1450)
!1454 = distinct !{!1454, !1451, !1455}
!1455 = !DILocation(line: 65, column: 13, scope: !1371)
!1456 = !DILocation(line: 65, column: 13, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 65, column: 13)
!1458 = !DILocation(line: 65, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 65, column: 13)
!1460 = !DILocation(line: 63, column: 49, scope: !1372)
!1461 = distinct !{!1461, !1437, !1462, !1463}
!1462 = !DILocation(line: 65, column: 13, scope: !1369)
!1463 = !{!"llvm.loop.unswitch.partial.disable"}
!1464 = !DILocation(line: 67, column: 18, scope: !42)
!1465 = !DILocation(line: 68, column: 12, scope: !42)
!1466 = !DILocation(line: 68, column: 19, scope: !42)
!1467 = !DILocation(line: 69, column: 12, scope: !42)
!1468 = !DILocation(line: 69, column: 22, scope: !42)
!1469 = !DILocation(line: 70, column: 12, scope: !42)
!1470 = !DILocation(line: 70, column: 18, scope: !42)
!1471 = !DILocation(line: 71, column: 12, scope: !42)
!1472 = !DILocation(line: 71, column: 20, scope: !42)
!1473 = !DILocation(line: 72, column: 12, scope: !42)
!1474 = !DILocation(line: 72, column: 24, scope: !42)
!1475 = !DILocation(line: 73, column: 12, scope: !42)
!1476 = !DILocation(line: 73, column: 30, scope: !42)
!1477 = !DILocation(line: 74, column: 21, scope: !42)
!1478 = !DILocation(line: 74, column: 12, scope: !42)
!1479 = !DILocation(line: 74, column: 19, scope: !42)
!1480 = !DILocation(line: 75, column: 12, scope: !42)
!1481 = !DILocation(line: 75, column: 25, scope: !42)
!1482 = !DILocation(line: 76, column: 12, scope: !42)
!1483 = !DILocation(line: 76, column: 24, scope: !42)
!1484 = !DILocation(line: 77, column: 12, scope: !42)
!1485 = !DILocation(line: 82, column: 12, scope: !42)
!1486 = !DILocation(line: 78, column: 27, scope: !42)
!1487 = !DILocation(line: 82, column: 34, scope: !42)
!1488 = !DILocation(line: 81, column: 12, scope: !42)
!1489 = !DILocation(line: 81, column: 37, scope: !42)
!1490 = !DILocation(line: 84, column: 12, scope: !42)
!1491 = !DILocation(line: 84, column: 17, scope: !42)
!1492 = !DILocation(line: 88, column: 26, scope: !1376)
!1493 = !DILocation(line: 88, column: 9, scope: !1376)
!1494 = !DILocation(line: 88, column: 42, scope: !1376)
!1495 = !DILocation(line: 90, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 90, column: 9)
!1497 = !DILocation(line: 90, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 90, column: 9)
!1499 = !DILocation(line: 0, scope: !1374)
!1500 = !DILocation(line: 91, column: 9, scope: !1374)
!1501 = !DILocation(line: 92, column: 73, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 91, column: 9)
!1503 = !DILocation(line: 92, column: 92, scope: !1502)
!1504 = !DILocation(line: 92, column: 71, scope: !1502)
!1505 = !DILocation(line: 92, column: 101, scope: !1502)
!1506 = !DILocation(line: 92, column: 32, scope: !1502)
!1507 = !DILocation(line: 92, column: 51, scope: !1502)
!1508 = !DILocation(line: 92, column: 13, scope: !1502)
!1509 = !DILocation(line: 92, column: 54, scope: !1502)
!1510 = !DILocation(line: 93, column: 25, scope: !1375)
!1511 = !DILocation(line: 101, column: 12, scope: !42)
!1512 = !DILocation(line: 101, column: 24, scope: !42)
!1513 = !DILocation(line: 103, column: 9, scope: !42)
!1514 = !DILocation(line: 97, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 97, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 96, column: 5)
!1517 = !DILocation(line: 97, column: 9, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 97, column: 9)
!1519 = !DILocation(line: 98, column: 67, scope: !1516)
!1520 = !DILocation(line: 98, column: 86, scope: !1516)
!1521 = !DILocation(line: 98, column: 65, scope: !1516)
!1522 = !DILocation(line: 98, column: 95, scope: !1516)
!1523 = !DILocation(line: 98, column: 46, scope: !1516)
!1524 = !DILocation(line: 98, column: 16, scope: !1516)
!1525 = !DILocation(line: 98, column: 28, scope: !1516)
!1526 = !DILocation(line: 105, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 105, column: 9)
!1528 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 104, column: 5)
!1529 = !DILocation(line: 105, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 105, column: 9)
!1531 = !DILocation(line: 106, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 106, column: 9)
!1533 = !DILocation(line: 106, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 106, column: 9)
!1535 = !DILocation(line: 107, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 107, column: 9)
!1537 = !DILocation(line: 107, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 107, column: 9)
!1539 = !DILocation(line: 108, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 108, column: 9)
!1541 = !DILocation(line: 108, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1540, file: !2, line: 108, column: 9)
!1543 = !DILocation(line: 109, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 109, column: 9)
!1545 = !DILocation(line: 109, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 109, column: 9)
!1547 = !DILocation(line: 110, column: 22, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 110, column: 13)
!1549 = !DILocation(line: 110, column: 13, scope: !1548)
!1550 = !DILocation(line: 110, column: 13, scope: !1528)
!1551 = !DILocation(line: 112, column: 13, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 112, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 111, column: 9)
!1554 = !DILocation(line: 112, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 112, column: 13)
!1556 = !DILocation(line: 113, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 113, column: 13)
!1558 = !DILocation(line: 113, column: 13, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 113, column: 13)
!1560 = !DILocation(line: 117, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 116, column: 9)
!1562 = !DILocation(line: 117, column: 27, scope: !1561)
!1563 = !DILocation(line: 118, column: 13, scope: !1561)
!1564 = !DILocation(line: 118, column: 27, scope: !1561)
!1565 = !DILocation(line: 120, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 120, column: 9)
!1567 = !DILocation(line: 120, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 120, column: 9)
!1569 = !DILocation(line: 121, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 121, column: 9)
!1571 = !DILocation(line: 121, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 121, column: 9)
!1573 = !DILocation(line: 122, column: 30, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 122, column: 13)
!1575 = !DILocation(line: 122, column: 42, scope: !1574)
!1576 = !DILocation(line: 122, column: 13, scope: !1528)
!1577 = !DILocation(line: 124, column: 13, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 124, column: 13)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 123, column: 9)
!1580 = !DILocation(line: 124, column: 13, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 124, column: 13)
!1582 = !DILocation(line: 126, column: 61, scope: !1579)
!1583 = !DILocation(line: 126, column: 80, scope: !1579)
!1584 = !DILocation(line: 126, column: 59, scope: !1579)
!1585 = !DILocation(line: 126, column: 89, scope: !1579)
!1586 = !DILocation(line: 126, column: 20, scope: !1579)
!1587 = !DILocation(line: 126, column: 29, scope: !1579)
!1588 = !DILocation(line: 127, column: 9, scope: !1579)
!1589 = !DILocation(line: 131, column: 23, scope: !1380)
!1590 = !DILocation(line: 131, column: 13, scope: !1380)
!1591 = !DILocation(line: 131, column: 13, scope: !1381)
!1592 = !DILocation(line: 133, column: 37, scope: !1379)
!1593 = !DILocation(line: 133, column: 54, scope: !1379)
!1594 = !DILocation(line: 133, column: 20, scope: !1379)
!1595 = !DILocation(line: 133, column: 35, scope: !1379)
!1596 = !DILocation(line: 134, column: 38, scope: !1379)
!1597 = !DILocation(line: 134, column: 20, scope: !1379)
!1598 = !DILocation(line: 134, column: 36, scope: !1379)
!1599 = !DILocation(line: 135, column: 37, scope: !1379)
!1600 = !DILocation(line: 135, column: 54, scope: !1379)
!1601 = !DILocation(line: 135, column: 20, scope: !1379)
!1602 = !DILocation(line: 135, column: 35, scope: !1379)
!1603 = !DILocation(line: 137, column: 77, scope: !1379)
!1604 = !DILocation(line: 137, column: 54, scope: !1379)
!1605 = !DILocation(line: 139, column: 13, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 139, column: 13)
!1607 = !DILocation(line: 139, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 139, column: 13)
!1609 = !DILocation(line: 0, scope: !1378)
!1610 = !DILocation(line: 140, column: 13, scope: !1378)
!1611 = !DILocation(line: 141, column: 70, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 140, column: 13)
!1613 = !DILocation(line: 141, column: 86, scope: !1612)
!1614 = !DILocation(line: 141, column: 60, scope: !1612)
!1615 = !DILocation(line: 141, column: 34, scope: !1612)
!1616 = !DILocation(line: 141, column: 101, scope: !1612)
!1617 = !DILocation(line: 141, column: 17, scope: !1612)
!1618 = !DILocation(line: 141, column: 105, scope: !1612)
!1619 = !DILocation(line: 0, scope: !1384)
!1620 = !DILocation(line: 144, column: 47, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 144, column: 17)
!1622 = !DILocation(line: 144, column: 35, scope: !1621)
!1623 = !DILocation(line: 0, scope: !1386)
!1624 = !DILocation(line: 144, column: 17, scope: !1386)
!1625 = !DILocation(line: 144, column: 58, scope: !1621)
!1626 = distinct !{!1626, !1624, !1627}
!1627 = !DILocation(line: 148, column: 17, scope: !1386)
!1628 = !DILocation(line: 146, column: 21, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 146, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 146, column: 21)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 145, column: 17)
!1632 = !DILocation(line: 146, column: 21, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 146, column: 21)
!1634 = !DILocation(line: 146, column: 21, scope: !1630)
!1635 = !DILocation(line: 147, column: 21, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 147, column: 21)
!1637 = !DILocation(line: 147, column: 21, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 147, column: 21)
!1639 = !DILocation(line: 143, column: 45, scope: !1387)
!1640 = !DILocation(line: 143, column: 35, scope: !1387)
!1641 = !DILocation(line: 143, column: 31, scope: !1387)
!1642 = !DILocation(line: 143, column: 13, scope: !1384)
!1643 = distinct !{!1643, !1642, !1644, !1463}
!1644 = !DILocation(line: 148, column: 17, scope: !1384)
!1645 = !DILocation(line: 149, column: 13, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 149, column: 13)
!1647 = !DILocation(line: 149, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 149, column: 13)
!1649 = !DILocation(line: 0, scope: !1389)
!1650 = !DILocation(line: 150, column: 43, scope: !1392)
!1651 = !DILocation(line: 150, column: 31, scope: !1392)
!1652 = !DILocation(line: 150, column: 13, scope: !1389)
!1653 = !DILocation(line: 0, scope: !1391)
!1654 = !DILocation(line: 151, column: 35, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 151, column: 17)
!1656 = !DILocation(line: 151, column: 17, scope: !1391)
!1657 = !DILocation(line: 151, column: 60, scope: !1655)
!1658 = !DILocation(line: 151, column: 47, scope: !1655)
!1659 = distinct !{!1659, !1656, !1660}
!1660 = !DILocation(line: 152, column: 21, scope: !1391)
!1661 = !DILocation(line: 152, column: 21, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 152, column: 21)
!1663 = !DILocation(line: 152, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 152, column: 21)
!1665 = !DILocation(line: 150, column: 56, scope: !1392)
!1666 = distinct !{!1666, !1652, !1667, !1463}
!1667 = !DILocation(line: 152, column: 21, scope: !1389)
!1668 = !DILocation(line: 153, column: 42, scope: !1379)
!1669 = !DILocation(line: 153, column: 35, scope: !1379)
!1670 = !DILocation(line: 153, column: 20, scope: !1379)
!1671 = !DILocation(line: 153, column: 33, scope: !1379)
!1672 = !DILocation(line: 154, column: 13, scope: !1379)
!1673 = !DILocation(line: 155, column: 9, scope: !1379)
!1674 = !DILocation(line: 156, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 156, column: 13)
!1676 = !DILocation(line: 156, column: 13, scope: !1675)
!1677 = !DILocation(line: 156, column: 13, scope: !1381)
!1678 = !DILocation(line: 158, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 158, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 157, column: 9)
!1681 = !DILocation(line: 158, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 158, column: 13)
!1683 = !DILocation(line: 159, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 159, column: 13)
!1685 = !DILocation(line: 159, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 159, column: 13)
!1687 = !DILocation(line: 160, column: 27, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 160, column: 17)
!1689 = !DILocation(line: 160, column: 17, scope: !1688)
!1690 = !DILocation(line: 160, column: 17, scope: !1680)
!1691 = !DILocation(line: 162, column: 17, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 162, column: 17)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 162, column: 17)
!1694 = !DILocation(line: 162, column: 17, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 162, column: 17)
!1696 = !DILocation(line: 162, column: 17, scope: !1693)
!1697 = !DILocation(line: 173, column: 1, scope: !42)
!1698 = !DILocation(line: 174, column: 5, scope: !42)
!1699 = !DILocation(line: 175, column: 5, scope: !42)
!1700 = !DILocation(line: 176, column: 1, scope: !42)
!1701 = !DISubprogram(name: "x264_malloc", scope: !393, file: !393, line: 174, type: !1702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!130, !51}
!1704 = !DISubprogram(name: "x264_free", scope: !393, file: !393, line: 175, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1705 = distinct !DISubprogram(name: "x264_frame_delete", scope: !2, file: !2, line: 178, type: !1706, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !45}
!1708 = !{!1709, !1710, !1714, !1716, !1718, !1721, !1723, !1726, !1728}
!1709 = !DILocalVariable(name: "frame", arg: 1, scope: !1705, file: !2, line: 178, type: !45)
!1710 = !DILocalVariable(name: "i", scope: !1711, file: !2, line: 184, type: !51)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 184, column: 9)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 183, column: 5)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 182, column: 9)
!1714 = !DILocalVariable(name: "i", scope: !1715, file: !2, line: 186, type: !51)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 186, column: 9)
!1716 = !DILocalVariable(name: "i", scope: !1717, file: !2, line: 188, type: !51)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 188, column: 9)
!1718 = !DILocalVariable(name: "j", scope: !1719, file: !2, line: 189, type: !51)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 189, column: 13)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 188, column: 9)
!1721 = !DILocalVariable(name: "j", scope: !1722, file: !2, line: 191, type: !51)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 191, column: 9)
!1723 = !DILocalVariable(name: "i", scope: !1724, file: !2, line: 192, type: !51)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 192, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 191, column: 9)
!1726 = !DILocalVariable(name: "j", scope: !1727, file: !2, line: 198, type: !51)
!1727 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 198, column: 9)
!1728 = !DILocalVariable(name: "i", scope: !1729, file: !2, line: 199, type: !51)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 199, column: 13)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 198, column: 9)
!1731 = !DILocation(line: 0, scope: !1705)
!1732 = !DILocation(line: 182, column: 17, scope: !1713)
!1733 = !DILocation(line: 182, column: 10, scope: !1713)
!1734 = !DILocation(line: 182, column: 9, scope: !1705)
!1735 = !DILocation(line: 0, scope: !1711)
!1736 = !DILocation(line: 185, column: 24, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 184, column: 9)
!1738 = !DILocation(line: 185, column: 13, scope: !1737)
!1739 = !DILocation(line: 0, scope: !1715)
!1740 = !DILocation(line: 187, column: 24, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 186, column: 9)
!1742 = !DILocation(line: 187, column: 13, scope: !1741)
!1743 = !DILocation(line: 0, scope: !1717)
!1744 = !DILocation(line: 188, column: 9, scope: !1717)
!1745 = !DILocation(line: 0, scope: !1719)
!1746 = !DILocation(line: 190, column: 28, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 189, column: 13)
!1748 = !DILocation(line: 190, column: 17, scope: !1747)
!1749 = !DILocation(line: 188, column: 49, scope: !1720)
!1750 = !DILocation(line: 188, column: 27, scope: !1720)
!1751 = distinct !{!1751, !1744, !1752}
!1752 = !DILocation(line: 190, column: 53, scope: !1717)
!1753 = !DILocation(line: 0, scope: !1722)
!1754 = !DILocation(line: 0, scope: !1724)
!1755 = !DILocation(line: 194, column: 28, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 193, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 192, column: 13)
!1758 = !DILocation(line: 194, column: 17, scope: !1756)
!1759 = !DILocation(line: 195, column: 28, scope: !1756)
!1760 = !DILocation(line: 195, column: 17, scope: !1756)
!1761 = !DILocation(line: 197, column: 27, scope: !1712)
!1762 = !DILocation(line: 197, column: 9, scope: !1712)
!1763 = !DILocation(line: 0, scope: !1727)
!1764 = !DILocation(line: 198, column: 9, scope: !1727)
!1765 = !DILocation(line: 0, scope: !1729)
!1766 = !DILocation(line: 200, column: 28, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 199, column: 13)
!1768 = !DILocation(line: 200, column: 17, scope: !1767)
!1769 = !DILocation(line: 198, column: 50, scope: !1730)
!1770 = !DILocation(line: 198, column: 27, scope: !1730)
!1771 = distinct !{!1771, !1764, !1772}
!1772 = !DILocation(line: 200, column: 54, scope: !1727)
!1773 = !DILocation(line: 201, column: 27, scope: !1712)
!1774 = !DILocation(line: 201, column: 9, scope: !1712)
!1775 = !DILocation(line: 202, column: 27, scope: !1712)
!1776 = !DILocation(line: 202, column: 9, scope: !1712)
!1777 = !DILocation(line: 203, column: 27, scope: !1712)
!1778 = !DILocation(line: 203, column: 9, scope: !1712)
!1779 = !DILocation(line: 204, column: 27, scope: !1712)
!1780 = !DILocation(line: 204, column: 9, scope: !1712)
!1781 = !DILocation(line: 205, column: 27, scope: !1712)
!1782 = !DILocation(line: 205, column: 9, scope: !1712)
!1783 = !DILocation(line: 206, column: 27, scope: !1712)
!1784 = !DILocation(line: 206, column: 9, scope: !1712)
!1785 = !DILocation(line: 207, column: 27, scope: !1712)
!1786 = !DILocation(line: 207, column: 9, scope: !1712)
!1787 = !DILocation(line: 208, column: 27, scope: !1712)
!1788 = !DILocation(line: 208, column: 20, scope: !1712)
!1789 = !DILocation(line: 208, column: 9, scope: !1712)
!1790 = !DILocation(line: 209, column: 20, scope: !1712)
!1791 = !DILocation(line: 209, column: 9, scope: !1712)
!1792 = !DILocation(line: 210, column: 27, scope: !1712)
!1793 = !DILocation(line: 210, column: 9, scope: !1712)
!1794 = !DILocation(line: 211, column: 27, scope: !1712)
!1795 = !DILocation(line: 211, column: 20, scope: !1712)
!1796 = !DILocation(line: 211, column: 9, scope: !1712)
!1797 = !DILocation(line: 212, column: 20, scope: !1712)
!1798 = !DILocation(line: 212, column: 9, scope: !1712)
!1799 = !DILocation(line: 215, column: 5, scope: !1712)
!1800 = !DILocation(line: 216, column: 5, scope: !1705)
!1801 = !DILocation(line: 217, column: 1, scope: !1705)
!1802 = distinct !DISubprogram(name: "x264_frame_copy_picture", scope: !2, file: !2, line: 219, type: !1803, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1826)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!51, !390, !45, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !15, line: 549, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 513, size: 1088, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1824, !1825}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1807, file: !15, line: 521, baseType: !51, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1807, file: !15, line: 523, baseType: !51, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !1807, file: !15, line: 526, baseType: !51, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !1807, file: !15, line: 529, baseType: !51, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1807, file: !15, line: 531, baseType: !55, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !1807, file: !15, line: 534, baseType: !55, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1807, file: !15, line: 541, baseType: !65, size: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !1807, file: !15, line: 543, baseType: !1817, size: 448, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !15, line: 511, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 505, size: 448, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !1818, file: !15, line: 507, baseType: !51, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1818, file: !15, line: 508, baseType: !51, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1818, file: !15, line: 509, baseType: !1069, size: 128, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1818, file: !15, line: 510, baseType: !266, size: 256, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !1807, file: !15, line: 545, baseType: !363, size: 256, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1807, file: !15, line: 548, baseType: !130, size: 64, offset: 1024)
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1833, !1836, !1837, !1838, !1839}
!1827 = !DILocalVariable(name: "h", arg: 1, scope: !1802, file: !2, line: 219, type: !390)
!1828 = !DILocalVariable(name: "dst", arg: 2, scope: !1802, file: !2, line: 219, type: !45)
!1829 = !DILocalVariable(name: "src", arg: 3, scope: !1802, file: !2, line: 219, type: !1805)
!1830 = !DILocalVariable(name: "i_csp", scope: !1802, file: !2, line: 221, type: !51)
!1831 = !DILocalVariable(name: "i", scope: !1832, file: !2, line: 234, type: !51)
!1832 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 234, column: 5)
!1833 = !DILocalVariable(name: "s", scope: !1834, file: !2, line: 236, type: !51)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 235, column: 5)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 234, column: 5)
!1836 = !DILocalVariable(name: "plane", scope: !1834, file: !2, line: 237, type: !264)
!1837 = !DILocalVariable(name: "stride", scope: !1834, file: !2, line: 238, type: !51)
!1838 = !DILocalVariable(name: "width", scope: !1834, file: !2, line: 239, type: !51)
!1839 = !DILocalVariable(name: "height", scope: !1834, file: !2, line: 240, type: !51)
!1840 = !DILocation(line: 0, scope: !1802)
!1841 = !DILocation(line: 221, column: 22, scope: !1802)
!1842 = !DILocation(line: 221, column: 26, scope: !1802)
!1843 = !DILocation(line: 221, column: 32, scope: !1802)
!1844 = !DILocation(line: 222, column: 32, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 222, column: 9)
!1846 = !DILocation(line: 224, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 223, column: 5)
!1848 = !DILocation(line: 225, column: 9, scope: !1847)
!1849 = !DILocation(line: 228, column: 28, scope: !1802)
!1850 = !DILocation(line: 228, column: 10, scope: !1802)
!1851 = !DILocation(line: 228, column: 21, scope: !1802)
!1852 = !DILocation(line: 229, column: 28, scope: !1802)
!1853 = !DILocation(line: 229, column: 10, scope: !1802)
!1854 = !DILocation(line: 229, column: 21, scope: !1802)
!1855 = !DILocation(line: 230, column: 51, scope: !1802)
!1856 = !DILocation(line: 230, column: 28, scope: !1802)
!1857 = !DILocation(line: 230, column: 44, scope: !1802)
!1858 = !DILocation(line: 230, column: 10, scope: !1802)
!1859 = !DILocation(line: 230, column: 21, scope: !1802)
!1860 = !DILocation(line: 231, column: 28, scope: !1802)
!1861 = !DILocation(line: 231, column: 10, scope: !1802)
!1862 = !DILocation(line: 231, column: 21, scope: !1802)
!1863 = !DILocation(line: 232, column: 30, scope: !1802)
!1864 = !DILocation(line: 232, column: 10, scope: !1802)
!1865 = !DILocation(line: 232, column: 23, scope: !1802)
!1866 = !DILocation(line: 0, scope: !1832)
!1867 = !DILocation(line: 238, column: 22, scope: !1834)
!1868 = !DILocation(line: 239, column: 30, scope: !1834)
!1869 = !DILocation(line: 246, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 246, column: 13)
!1871 = !DILocation(line: 246, column: 19, scope: !1870)
!1872 = !DILocation(line: 0, scope: !1834)
!1873 = !DILocation(line: 246, column: 13, scope: !1834)
!1874 = !DILocation(line: 241, column: 22, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 241, column: 13)
!1876 = !DILocation(line: 241, column: 28, scope: !1875)
!1877 = !DILocation(line: 241, column: 13, scope: !1834)
!1878 = !DILocation(line: 237, column: 26, scope: !1834)
!1879 = !DILocation(line: 240, column: 31, scope: !1834)
!1880 = !DILocation(line: 251, column: 15, scope: !1834)
!1881 = !DILocation(line: 251, column: 27, scope: !1834)
!1882 = !DILocation(line: 251, column: 42, scope: !1834)
!1883 = !DILocation(line: 251, column: 9, scope: !1834)
!1884 = !DILocation(line: 239, column: 38, scope: !1834)
!1885 = distinct !{!1885, !1886, !1887}
!1886 = !DILocation(line: 234, column: 5, scope: !1832)
!1887 = !DILocation(line: 252, column: 5, scope: !1832)
!1888 = !DILocation(line: 240, column: 40, scope: !1834)
!1889 = !DILocation(line: 248, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 247, column: 9)
!1891 = !DILocation(line: 254, column: 1, scope: !1802)
!1892 = !DISubprogram(name: "x264_log", scope: !393, file: !393, line: 190, type: !1893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !390, !51, !131, null}
!1895 = distinct !DISubprogram(name: "x264_frame_expand_border", scope: !2, file: !2, line: 279, type: !1896, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !390, !45, !51, !51}
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1906, !1909, !1910, !1911, !1912, !1913}
!1899 = !DILocalVariable(name: "h", arg: 1, scope: !1895, file: !2, line: 279, type: !390)
!1900 = !DILocalVariable(name: "frame", arg: 2, scope: !1895, file: !2, line: 279, type: !45)
!1901 = !DILocalVariable(name: "mb_y", arg: 3, scope: !1895, file: !2, line: 279, type: !51)
!1902 = !DILocalVariable(name: "b_end", arg: 4, scope: !1895, file: !2, line: 279, type: !51)
!1903 = !DILocalVariable(name: "b_start", scope: !1895, file: !2, line: 281, type: !51)
!1904 = !DILocalVariable(name: "i", scope: !1905, file: !2, line: 284, type: !51)
!1905 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 284, column: 5)
!1906 = !DILocalVariable(name: "stride", scope: !1907, file: !2, line: 286, type: !51)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 285, column: 5)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 284, column: 5)
!1909 = !DILocalVariable(name: "width", scope: !1907, file: !2, line: 287, type: !51)
!1910 = !DILocalVariable(name: "height", scope: !1907, file: !2, line: 288, type: !51)
!1911 = !DILocalVariable(name: "padh", scope: !1907, file: !2, line: 289, type: !51)
!1912 = !DILocalVariable(name: "padv", scope: !1907, file: !2, line: 290, type: !51)
!1913 = !DILocalVariable(name: "pix", scope: !1907, file: !2, line: 292, type: !264)
!1914 = !DILocation(line: 0, scope: !1895)
!1915 = !DILocation(line: 281, column: 19, scope: !1895)
!1916 = !DILocation(line: 282, column: 22, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 282, column: 9)
!1918 = !DILocation(line: 282, column: 14, scope: !1917)
!1919 = !DILocation(line: 282, column: 9, scope: !1895)
!1920 = !DILocation(line: 0, scope: !1905)
!1921 = !DILocation(line: 284, column: 32, scope: !1908)
!1922 = !DILocation(line: 284, column: 23, scope: !1908)
!1923 = !DILocation(line: 284, column: 5, scope: !1905)
!1924 = !DILocation(line: 286, column: 22, scope: !1907)
!1925 = !DILocation(line: 0, scope: !1907)
!1926 = !DILocation(line: 287, column: 27, scope: !1907)
!1927 = !DILocation(line: 287, column: 32, scope: !1907)
!1928 = !DILocation(line: 287, column: 23, scope: !1907)
!1929 = !DILocation(line: 287, column: 47, scope: !1907)
!1930 = !DILocation(line: 287, column: 46, scope: !1907)
!1931 = !DILocation(line: 287, column: 43, scope: !1907)
!1932 = !DILocation(line: 288, column: 23, scope: !1907)
!1933 = !DILocation(line: 288, column: 43, scope: !1907)
!1934 = !DILocation(line: 288, column: 55, scope: !1907)
!1935 = !DILocation(line: 288, column: 33, scope: !1907)
!1936 = !DILocation(line: 288, column: 72, scope: !1907)
!1937 = !DILocation(line: 288, column: 63, scope: !1907)
!1938 = !DILocation(line: 288, column: 86, scope: !1907)
!1939 = !DILocation(line: 289, column: 25, scope: !1907)
!1940 = !DILocation(line: 292, column: 24, scope: !1907)
!1941 = !DILocation(line: 292, column: 42, scope: !1907)
!1942 = !DILocation(line: 292, column: 40, scope: !1907)
!1943 = !DILocation(line: 293, column: 19, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 293, column: 13)
!1945 = !DILocation(line: 295, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 295, column: 13)
!1947 = !DILocation(line: 295, column: 13, scope: !1907)
!1948 = !DILocation(line: 297, column: 45, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 296, column: 9)
!1950 = !DILocalVariable(name: "pix", arg: 1, scope: !1951, file: !2, line: 258, type: !264)
!1951 = distinct !DISubprogram(name: "plane_expand_border", scope: !2, file: !2, line: 258, type: !1952, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !264, !51, !51, !51, !51, !51, !51, !51}
!1954 = !{!1950, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1964, !1967}
!1955 = !DILocalVariable(name: "i_stride", arg: 2, scope: !1951, file: !2, line: 258, type: !51)
!1956 = !DILocalVariable(name: "i_width", arg: 3, scope: !1951, file: !2, line: 258, type: !51)
!1957 = !DILocalVariable(name: "i_height", arg: 4, scope: !1951, file: !2, line: 258, type: !51)
!1958 = !DILocalVariable(name: "i_padh", arg: 5, scope: !1951, file: !2, line: 258, type: !51)
!1959 = !DILocalVariable(name: "i_padv", arg: 6, scope: !1951, file: !2, line: 258, type: !51)
!1960 = !DILocalVariable(name: "b_pad_top", arg: 7, scope: !1951, file: !2, line: 258, type: !51)
!1961 = !DILocalVariable(name: "b_pad_bottom", arg: 8, scope: !1951, file: !2, line: 258, type: !51)
!1962 = !DILocalVariable(name: "y", scope: !1963, file: !2, line: 261, type: !51)
!1963 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 261, column: 5)
!1964 = !DILocalVariable(name: "y", scope: !1965, file: !2, line: 270, type: !51)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 270, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 269, column: 9)
!1967 = !DILocalVariable(name: "y", scope: !1968, file: !2, line: 274, type: !51)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 274, column: 9)
!1969 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 273, column: 9)
!1970 = !DILocation(line: 0, scope: !1951, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 297, column: 13, scope: !1949)
!1972 = !DILocation(line: 0, scope: !1963, inlinedAt: !1971)
!1973 = !DILocation(line: 261, column: 23, scope: !1974, inlinedAt: !1971)
!1974 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 261, column: 5)
!1975 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !1971)
!1976 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !1971)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !2, line: 262, column: 5)
!1978 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !1971)
!1979 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !1971)
!1980 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !1971)
!1981 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !1971)
!1982 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !1971)
!1983 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !1971)
!1984 = distinct !{!1984, !1985}
!1985 = !{!"llvm.loop.unroll.disable"}
!1986 = !DILocation(line: 0, scope: !1965, inlinedAt: !1971)
!1987 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !1971)
!1988 = !DILocation(line: 270, column: 9, scope: !1965, inlinedAt: !1971)
!1989 = !DILocation(line: 270, column: 27, scope: !1990, inlinedAt: !1971)
!1990 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 270, column: 9)
!1991 = distinct !{!1991, !1975, !1992}
!1992 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !1971)
!1993 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !1971)
!1994 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !1971)
!1995 = !DILocation(line: 270, column: 38, scope: !1990, inlinedAt: !1971)
!1996 = distinct !{!1996, !1988, !1997}
!1997 = !DILocation(line: 271, column: 81, scope: !1965, inlinedAt: !1971)
!1998 = !DILocation(line: 0, scope: !1968, inlinedAt: !1971)
!1999 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !1971)
!2000 = !DILocation(line: 274, column: 9, scope: !1968, inlinedAt: !1971)
!2001 = !DILocation(line: 274, column: 27, scope: !2002, inlinedAt: !1971)
!2002 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 274, column: 9)
!2003 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !1971)
!2004 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !1971)
!2005 = !DILocation(line: 274, column: 38, scope: !2002, inlinedAt: !1971)
!2006 = distinct !{!2006, !2000, !2007}
!2007 = !DILocation(line: 275, column: 96, scope: !1968, inlinedAt: !1971)
!2008 = !DILocation(line: 298, column: 37, scope: !1949)
!2009 = !DILocation(line: 0, scope: !1951, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 298, column: 13, scope: !1949)
!2011 = !DILocation(line: 0, scope: !1963, inlinedAt: !2010)
!2012 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2010)
!2013 = !DILocation(line: 261, column: 23, scope: !1974, inlinedAt: !2010)
!2014 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2010)
!2015 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2010)
!2016 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2010)
!2017 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2010)
!2018 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2010)
!2019 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2010)
!2020 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2010)
!2021 = distinct !{!2021, !1985}
!2022 = !DILocation(line: 0, scope: !1965, inlinedAt: !2010)
!2023 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !2010)
!2024 = !DILocation(line: 270, column: 9, scope: !1965, inlinedAt: !2010)
!2025 = !DILocation(line: 270, column: 27, scope: !1990, inlinedAt: !2010)
!2026 = distinct !{!2026, !2012, !2027}
!2027 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2010)
!2028 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2010)
!2029 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2010)
!2030 = !DILocation(line: 270, column: 38, scope: !1990, inlinedAt: !2010)
!2031 = distinct !{!2031, !2024, !2032}
!2032 = !DILocation(line: 271, column: 81, scope: !1965, inlinedAt: !2010)
!2033 = !DILocation(line: 0, scope: !1968, inlinedAt: !2010)
!2034 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !2010)
!2035 = !DILocation(line: 274, column: 9, scope: !1968, inlinedAt: !2010)
!2036 = !DILocation(line: 274, column: 27, scope: !2002, inlinedAt: !2010)
!2037 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2010)
!2038 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2010)
!2039 = !DILocation(line: 274, column: 38, scope: !2002, inlinedAt: !2010)
!2040 = distinct !{!2040, !2035, !2041}
!2041 = !DILocation(line: 275, column: 96, scope: !1968, inlinedAt: !2010)
!2042 = !DILocation(line: 0, scope: !1951, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 302, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 301, column: 9)
!2045 = !DILocation(line: 0, scope: !1963, inlinedAt: !2043)
!2046 = !DILocation(line: 261, column: 23, scope: !1974, inlinedAt: !2043)
!2047 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2043)
!2048 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2043)
!2049 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2043)
!2050 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2043)
!2051 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2043)
!2052 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2043)
!2053 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2043)
!2054 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2043)
!2055 = distinct !{!2055, !1985}
!2056 = !DILocation(line: 0, scope: !1965, inlinedAt: !2043)
!2057 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !2043)
!2058 = !DILocation(line: 270, column: 9, scope: !1965, inlinedAt: !2043)
!2059 = !DILocation(line: 270, column: 27, scope: !1990, inlinedAt: !2043)
!2060 = distinct !{!2060, !2047, !2061}
!2061 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2043)
!2062 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2043)
!2063 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2043)
!2064 = !DILocation(line: 270, column: 38, scope: !1990, inlinedAt: !2043)
!2065 = distinct !{!2065, !2058, !2066}
!2066 = !DILocation(line: 271, column: 81, scope: !1965, inlinedAt: !2043)
!2067 = !DILocation(line: 0, scope: !1968, inlinedAt: !2043)
!2068 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !2043)
!2069 = !DILocation(line: 274, column: 9, scope: !1968, inlinedAt: !2043)
!2070 = !DILocation(line: 274, column: 27, scope: !2002, inlinedAt: !2043)
!2071 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2043)
!2072 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2043)
!2073 = !DILocation(line: 274, column: 38, scope: !2002, inlinedAt: !2043)
!2074 = distinct !{!2074, !2069, !2075}
!2075 = !DILocation(line: 275, column: 96, scope: !1968, inlinedAt: !2043)
!2076 = !DILocation(line: 284, column: 42, scope: !1908)
!2077 = distinct !{!2077, !1923, !2078}
!2078 = !DILocation(line: 304, column: 5, scope: !1905)
!2079 = !DILocation(line: 305, column: 1, scope: !1895)
!2080 = distinct !DISubprogram(name: "x264_frame_expand_border_filtered", scope: !2, file: !2, line: 307, type: !1896, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2094}
!2082 = !DILocalVariable(name: "h", arg: 1, scope: !2080, file: !2, line: 307, type: !390)
!2083 = !DILocalVariable(name: "frame", arg: 2, scope: !2080, file: !2, line: 307, type: !45)
!2084 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2080, file: !2, line: 307, type: !51)
!2085 = !DILocalVariable(name: "b_end", arg: 4, scope: !2080, file: !2, line: 307, type: !51)
!2086 = !DILocalVariable(name: "b_start", scope: !2080, file: !2, line: 312, type: !51)
!2087 = !DILocalVariable(name: "stride", scope: !2080, file: !2, line: 313, type: !51)
!2088 = !DILocalVariable(name: "width", scope: !2080, file: !2, line: 314, type: !51)
!2089 = !DILocalVariable(name: "height", scope: !2080, file: !2, line: 315, type: !51)
!2090 = !DILocalVariable(name: "padh", scope: !2080, file: !2, line: 316, type: !51)
!2091 = !DILocalVariable(name: "padv", scope: !2080, file: !2, line: 317, type: !51)
!2092 = !DILocalVariable(name: "i", scope: !2093, file: !2, line: 318, type: !51)
!2093 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 318, column: 5)
!2094 = !DILocalVariable(name: "pix", scope: !2095, file: !2, line: 321, type: !264)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !2, line: 319, column: 5)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 318, column: 5)
!2097 = !DILocation(line: 0, scope: !2080)
!2098 = !DILocation(line: 312, column: 19, scope: !2080)
!2099 = !DILocation(line: 313, column: 25, scope: !2080)
!2100 = !DILocation(line: 313, column: 18, scope: !2080)
!2101 = !DILocation(line: 314, column: 23, scope: !2080)
!2102 = !DILocation(line: 314, column: 28, scope: !2080)
!2103 = !DILocation(line: 314, column: 19, scope: !2080)
!2104 = !DILocation(line: 314, column: 39, scope: !2080)
!2105 = !DILocation(line: 315, column: 18, scope: !2080)
!2106 = !DILocation(line: 315, column: 39, scope: !2080)
!2107 = !DILocation(line: 315, column: 51, scope: !2080)
!2108 = !DILocation(line: 315, column: 29, scope: !2080)
!2109 = !DILocation(line: 315, column: 68, scope: !2080)
!2110 = !DILocation(line: 315, column: 59, scope: !2080)
!2111 = !DILocation(line: 315, column: 77, scope: !2080)
!2112 = !DILocation(line: 0, scope: !2093)
!2113 = !DILocation(line: 318, column: 5, scope: !2093)
!2114 = !DILocation(line: 330, column: 1, scope: !2080)
!2115 = !DILocation(line: 321, column: 24, scope: !2095)
!2116 = !DILocation(line: 321, column: 68, scope: !2095)
!2117 = !DILocation(line: 321, column: 59, scope: !2095)
!2118 = !DILocation(line: 321, column: 54, scope: !2095)
!2119 = !DILocation(line: 321, column: 78, scope: !2095)
!2120 = !DILocation(line: 321, column: 43, scope: !2095)
!2121 = !DILocation(line: 321, column: 87, scope: !2095)
!2122 = !DILocation(line: 0, scope: !2095)
!2123 = !DILocation(line: 322, column: 13, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 322, column: 13)
!2125 = !DILocation(line: 0, scope: !1951, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 328, column: 13, scope: !2124)
!2127 = !DILocation(line: 0, scope: !1951, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 324, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 323, column: 9)
!2130 = !DILocation(line: 0, scope: !1963, inlinedAt: !2126)
!2131 = !DILocation(line: 0, scope: !1963, inlinedAt: !2128)
!2132 = !DILocation(line: 322, column: 13, scope: !2095)
!2133 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2128)
!2134 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2128)
!2135 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2128)
!2136 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2128)
!2137 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2128)
!2138 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2128)
!2139 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2128)
!2140 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2128)
!2141 = distinct !{!2141, !1985}
!2142 = !DILocation(line: 0, scope: !1965, inlinedAt: !2128)
!2143 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !2128)
!2144 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2128)
!2145 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2128)
!2146 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !2128)
!2147 = distinct !{!2147, !2133, !2148}
!2148 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2128)
!2149 = !DILocation(line: 0, scope: !1968, inlinedAt: !2128)
!2150 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2128)
!2151 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2128)
!2152 = !DILocation(line: 325, column: 37, scope: !2129)
!2153 = !DILocation(line: 0, scope: !1951, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 325, column: 13, scope: !2129)
!2155 = !DILocation(line: 0, scope: !1963, inlinedAt: !2154)
!2156 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2154)
!2157 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2154)
!2158 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2154)
!2159 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2154)
!2160 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2154)
!2161 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2154)
!2162 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2154)
!2163 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2154)
!2164 = distinct !{!2164, !1985}
!2165 = !DILocation(line: 0, scope: !1965, inlinedAt: !2154)
!2166 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !2154)
!2167 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2154)
!2168 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2154)
!2169 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !2154)
!2170 = distinct !{!2170, !2156, !2171}
!2171 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2154)
!2172 = !DILocation(line: 0, scope: !1968, inlinedAt: !2154)
!2173 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2154)
!2174 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2154)
!2175 = !DILocation(line: 318, column: 29, scope: !2096)
!2176 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2126)
!2177 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2126)
!2178 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2126)
!2179 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2126)
!2180 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2126)
!2181 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2126)
!2182 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2126)
!2183 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2126)
!2184 = distinct !{!2184, !1985}
!2185 = !DILocation(line: 0, scope: !1965, inlinedAt: !2126)
!2186 = !DILocation(line: 269, column: 9, scope: !1951, inlinedAt: !2126)
!2187 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2126)
!2188 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2126)
!2189 = !DILocation(line: 273, column: 9, scope: !1951, inlinedAt: !2126)
!2190 = distinct !{!2190, !2176, !2191}
!2191 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2126)
!2192 = !DILocation(line: 0, scope: !1968, inlinedAt: !2126)
!2193 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2126)
!2194 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2126)
!2195 = !DILocation(line: 318, column: 23, scope: !2096)
!2196 = distinct !{!2196, !2113, !2197}
!2197 = !DILocation(line: 329, column: 5, scope: !2093)
!2198 = distinct !DISubprogram(name: "x264_frame_expand_border_lowres", scope: !2, file: !2, line: 332, type: !1706, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2199)
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "frame", arg: 1, scope: !2198, file: !2, line: 332, type: !45)
!2201 = !DILocalVariable(name: "i", scope: !2202, file: !2, line: 334, type: !51)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 334, column: 5)
!2203 = !DILocation(line: 0, scope: !2198)
!2204 = !DILocation(line: 0, scope: !2202)
!2205 = !DILocation(line: 334, column: 5, scope: !2202)
!2206 = !DILocation(line: 336, column: 1, scope: !2198)
!2207 = !DILocation(line: 335, column: 30, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 334, column: 5)
!2209 = !DILocation(line: 335, column: 55, scope: !2208)
!2210 = !DILocation(line: 335, column: 79, scope: !2208)
!2211 = !DILocation(line: 335, column: 102, scope: !2208)
!2212 = !DILocation(line: 0, scope: !1951, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 335, column: 9, scope: !2208)
!2214 = !DILocation(line: 0, scope: !1963, inlinedAt: !2213)
!2215 = !DILocation(line: 261, column: 23, scope: !1974, inlinedAt: !2213)
!2216 = !DILocation(line: 261, column: 5, scope: !1963, inlinedAt: !2213)
!2217 = !DILocation(line: 270, column: 9, scope: !1965, inlinedAt: !2213)
!2218 = !DILocation(line: 264, column: 17, scope: !1977, inlinedAt: !2213)
!2219 = !DILocation(line: 264, column: 37, scope: !1977, inlinedAt: !2213)
!2220 = !DILocation(line: 264, column: 9, scope: !1977, inlinedAt: !2213)
!2221 = !DILocation(line: 266, column: 17, scope: !1977, inlinedAt: !2213)
!2222 = !DILocation(line: 266, column: 37, scope: !1977, inlinedAt: !2213)
!2223 = !DILocation(line: 266, column: 9, scope: !1977, inlinedAt: !2213)
!2224 = !DILocation(line: 261, column: 36, scope: !1974, inlinedAt: !2213)
!2225 = distinct !{!2225, !1985}
!2226 = !DILocation(line: 0, scope: !1965, inlinedAt: !2213)
!2227 = !DILocation(line: 271, column: 21, scope: !1990, inlinedAt: !2213)
!2228 = !DILocation(line: 271, column: 13, scope: !1990, inlinedAt: !2213)
!2229 = !DILocation(line: 0, scope: !1968, inlinedAt: !2213)
!2230 = !DILocation(line: 274, column: 9, scope: !1968, inlinedAt: !2213)
!2231 = !DILocation(line: 275, column: 21, scope: !2002, inlinedAt: !2213)
!2232 = !DILocation(line: 275, column: 13, scope: !2002, inlinedAt: !2213)
!2233 = !DILocation(line: 334, column: 29, scope: !2208)
!2234 = !DILocation(line: 334, column: 23, scope: !2208)
!2235 = distinct !{!2235, !2205, !2236}
!2236 = !DILocation(line: 335, column: 135, scope: !2202)
!2237 = distinct !{!2237, !2216, !2238}
!2238 = !DILocation(line: 267, column: 5, scope: !1963, inlinedAt: !2213)
!2239 = distinct !DISubprogram(name: "x264_frame_expand_border_mod16", scope: !2, file: !2, line: 338, type: !2240, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !390, !45}
!2242 = !{!2243, !2244, !2245, !2247, !2250, !2251, !2252, !2253, !2254, !2258}
!2243 = !DILocalVariable(name: "h", arg: 1, scope: !2239, file: !2, line: 338, type: !390)
!2244 = !DILocalVariable(name: "frame", arg: 2, scope: !2239, file: !2, line: 338, type: !45)
!2245 = !DILocalVariable(name: "i", scope: !2246, file: !2, line: 340, type: !51)
!2246 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 340, column: 5)
!2247 = !DILocalVariable(name: "i_subsample", scope: !2248, file: !2, line: 342, type: !51)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 341, column: 5)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 340, column: 5)
!2250 = !DILocalVariable(name: "i_width", scope: !2248, file: !2, line: 343, type: !51)
!2251 = !DILocalVariable(name: "i_height", scope: !2248, file: !2, line: 344, type: !51)
!2252 = !DILocalVariable(name: "i_padx", scope: !2248, file: !2, line: 345, type: !51)
!2253 = !DILocalVariable(name: "i_pady", scope: !2248, file: !2, line: 346, type: !51)
!2254 = !DILocalVariable(name: "y", scope: !2255, file: !2, line: 350, type: !51)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 350, column: 13)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 349, column: 9)
!2257 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 348, column: 13)
!2258 = !DILocalVariable(name: "y", scope: !2259, file: !2, line: 357, type: !51)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 357, column: 13)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 356, column: 9)
!2261 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 355, column: 13)
!2262 = !DILocation(line: 0, scope: !2239)
!2263 = !DILocation(line: 0, scope: !2246)
!2264 = !DILocation(line: 340, column: 32, scope: !2249)
!2265 = !DILocation(line: 340, column: 23, scope: !2249)
!2266 = !DILocation(line: 340, column: 5, scope: !2246)
!2267 = !DILocation(line: 363, column: 1, scope: !2239)
!2268 = !DILocation(line: 342, column: 27, scope: !2248)
!2269 = !DILocation(line: 0, scope: !2248)
!2270 = !DILocation(line: 343, column: 32, scope: !2248)
!2271 = !DILocation(line: 343, column: 40, scope: !2248)
!2272 = !DILocation(line: 344, column: 33, scope: !2248)
!2273 = !DILocation(line: 344, column: 42, scope: !2248)
!2274 = !DILocation(line: 345, column: 26, scope: !2248)
!2275 = !DILocation(line: 345, column: 31, scope: !2248)
!2276 = !DILocation(line: 345, column: 42, scope: !2248)
!2277 = !DILocation(line: 345, column: 47, scope: !2248)
!2278 = !DILocation(line: 345, column: 67, scope: !2248)
!2279 = !DILocation(line: 346, column: 31, scope: !2248)
!2280 = !DILocation(line: 346, column: 43, scope: !2248)
!2281 = !DILocation(line: 346, column: 48, scope: !2248)
!2282 = !DILocation(line: 346, column: 69, scope: !2248)
!2283 = !DILocation(line: 348, column: 13, scope: !2257)
!2284 = !DILocation(line: 0, scope: !2255)
!2285 = !DILocation(line: 348, column: 13, scope: !2248)
!2286 = !DILocation(line: 350, column: 13, scope: !2255)
!2287 = !DILocation(line: 351, column: 26, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 350, column: 13)
!2289 = !DILocation(line: 351, column: 44, scope: !2288)
!2290 = !DILocation(line: 351, column: 43, scope: !2288)
!2291 = !DILocation(line: 351, column: 63, scope: !2288)
!2292 = !DILocation(line: 352, column: 26, scope: !2288)
!2293 = !DILocation(line: 351, column: 17, scope: !2288)
!2294 = !DILocation(line: 350, column: 44, scope: !2288)
!2295 = distinct !{!2295, !2286, !2296}
!2296 = !DILocation(line: 353, column: 33, scope: !2255)
!2297 = !DILocation(line: 355, column: 13, scope: !2261)
!2298 = !DILocation(line: 355, column: 13, scope: !2248)
!2299 = !DILocation(line: 0, scope: !2259)
!2300 = !DILocation(line: 357, column: 38, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 357, column: 13)
!2302 = !DILocation(line: 357, column: 13, scope: !2259)
!2303 = !DILocation(line: 358, column: 26, scope: !2301)
!2304 = !DILocation(line: 358, column: 44, scope: !2301)
!2305 = !DILocation(line: 358, column: 43, scope: !2301)
!2306 = !DILocation(line: 359, column: 65, scope: !2301)
!2307 = !DILocation(line: 359, column: 78, scope: !2301)
!2308 = !DILocation(line: 359, column: 81, scope: !2301)
!2309 = !DILocation(line: 359, column: 26, scope: !2301)
!2310 = !DILocation(line: 358, column: 17, scope: !2301)
!2311 = !DILocation(line: 357, column: 60, scope: !2301)
!2312 = distinct !{!2312, !2302, !2313}
!2313 = !DILocation(line: 360, column: 42, scope: !2259)
!2314 = !DILocation(line: 340, column: 42, scope: !2249)
!2315 = distinct !{!2315, !2266, !2316}
!2316 = !DILocation(line: 362, column: 5, scope: !2246)
!2317 = distinct !DISubprogram(name: "x264_frame_cond_broadcast", scope: !2, file: !2, line: 366, type: !2318, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !45, !51}
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "frame", arg: 1, scope: !2317, file: !2, line: 366, type: !45)
!2322 = !DILocalVariable(name: "i_lines_completed", arg: 2, scope: !2317, file: !2, line: 366, type: !51)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 369, column: 12, scope: !2317)
!2325 = !DILocation(line: 369, column: 30, scope: !2317)
!2326 = !DILocation(line: 372, column: 1, scope: !2317)
!2327 = distinct !DISubprogram(name: "x264_frame_cond_wait", scope: !2, file: !2, line: 374, type: !2318, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2328)
!2328 = !{!2329, !2330}
!2329 = !DILocalVariable(name: "frame", arg: 1, scope: !2327, file: !2, line: 374, type: !45)
!2330 = !DILocalVariable(name: "i_lines_completed", arg: 2, scope: !2327, file: !2, line: 374, type: !51)
!2331 = !DILocation(line: 0, scope: !2327)
!2332 = !DILocation(line: 377, column: 5, scope: !2327)
!2333 = distinct !{!2333, !2332, !2334}
!2334 = !DILocation(line: 378, column: 60, scope: !2327)
!2335 = !DILocation(line: 380, column: 1, scope: !2327)
!2336 = distinct !DISubprogram(name: "x264_frame_push", scope: !2, file: !2, line: 384, type: !2337, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !673, !45}
!2339 = !{!2340, !2341, !2342}
!2340 = !DILocalVariable(name: "list", arg: 1, scope: !2336, file: !2, line: 384, type: !673)
!2341 = !DILocalVariable(name: "frame", arg: 2, scope: !2336, file: !2, line: 384, type: !45)
!2342 = !DILocalVariable(name: "i", scope: !2336, file: !2, line: 386, type: !51)
!2343 = !DILocation(line: 0, scope: !2336)
!2344 = !DILocation(line: 387, column: 5, scope: !2336)
!2345 = !DILocation(line: 387, column: 12, scope: !2336)
!2346 = !DILocation(line: 387, column: 23, scope: !2336)
!2347 = distinct !{!2347, !2344, !2346}
!2348 = !DILocation(line: 388, column: 13, scope: !2336)
!2349 = !DILocation(line: 389, column: 1, scope: !2336)
!2350 = distinct !DISubprogram(name: "x264_frame_pop", scope: !2, file: !2, line: 391, type: !2351, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!45, !673}
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "list", arg: 1, scope: !2350, file: !2, line: 391, type: !673)
!2355 = !DILocalVariable(name: "frame", scope: !2350, file: !2, line: 393, type: !45)
!2356 = !DILocalVariable(name: "i", scope: !2350, file: !2, line: 394, type: !51)
!2357 = !DILocation(line: 0, scope: !2350)
!2358 = !DILocation(line: 396, column: 5, scope: !2350)
!2359 = !DILocation(line: 396, column: 18, scope: !2350)
!2360 = !DILocation(line: 396, column: 12, scope: !2350)
!2361 = distinct !{!2361, !2358, !2362}
!2362 = !DILocation(line: 396, column: 25, scope: !2350)
!2363 = !DILocation(line: 397, column: 13, scope: !2350)
!2364 = !DILocation(line: 398, column: 13, scope: !2350)
!2365 = !DILocation(line: 399, column: 5, scope: !2350)
!2366 = distinct !DISubprogram(name: "x264_frame_unshift", scope: !2, file: !2, line: 402, type: !2337, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2367)
!2367 = !{!2368, !2369, !2370}
!2368 = !DILocalVariable(name: "list", arg: 1, scope: !2366, file: !2, line: 402, type: !673)
!2369 = !DILocalVariable(name: "frame", arg: 2, scope: !2366, file: !2, line: 402, type: !45)
!2370 = !DILocalVariable(name: "i", scope: !2366, file: !2, line: 404, type: !51)
!2371 = !DILocation(line: 0, scope: !2366)
!2372 = !DILocation(line: 405, column: 5, scope: !2366)
!2373 = !DILocation(line: 405, column: 12, scope: !2366)
!2374 = !DILocation(line: 405, column: 23, scope: !2366)
!2375 = distinct !{!2375, !2372, !2374}
!2376 = !DILocation(line: 406, column: 5, scope: !2366)
!2377 = !DILocation(line: 407, column: 21, scope: !2366)
!2378 = !DILocation(line: 407, column: 9, scope: !2366)
!2379 = !DILocation(line: 407, column: 19, scope: !2366)
!2380 = distinct !{!2380, !2376, !2381, !2382, !2383}
!2381 = !DILocation(line: 407, column: 27, scope: !2366)
!2382 = !{!"llvm.loop.isvectorized", i32 1}
!2383 = !{!"llvm.loop.unroll.runtime.disable"}
!2384 = !DILocation(line: 406, column: 13, scope: !2366)
!2385 = distinct !{!2385, !2376, !2381, !2383, !2382}
!2386 = !DILocation(line: 408, column: 13, scope: !2366)
!2387 = !DILocation(line: 409, column: 1, scope: !2366)
!2388 = distinct !DISubprogram(name: "x264_frame_shift", scope: !2, file: !2, line: 411, type: !2351, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392}
!2390 = !DILocalVariable(name: "list", arg: 1, scope: !2388, file: !2, line: 411, type: !673)
!2391 = !DILocalVariable(name: "frame", scope: !2388, file: !2, line: 413, type: !45)
!2392 = !DILocalVariable(name: "i", scope: !2388, file: !2, line: 414, type: !51)
!2393 = !DILocation(line: 0, scope: !2388)
!2394 = !DILocation(line: 413, column: 27, scope: !2388)
!2395 = !DILocation(line: 415, column: 5, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 415, column: 5)
!2397 = !DILocation(line: 416, column: 25, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 415, column: 5)
!2399 = !DILocation(line: 416, column: 19, scope: !2398)
!2400 = !DILocation(line: 416, column: 17, scope: !2398)
!2401 = distinct !{!2401, !2395, !2402}
!2402 = !DILocation(line: 416, column: 27, scope: !2396)
!2403 = !DILocation(line: 418, column: 5, scope: !2388)
!2404 = distinct !DISubprogram(name: "x264_frame_push_unused", scope: !2, file: !2, line: 421, type: !2240, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2405)
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "h", arg: 1, scope: !2404, file: !2, line: 421, type: !390)
!2407 = !DILocalVariable(name: "frame", arg: 2, scope: !2404, file: !2, line: 421, type: !45)
!2408 = !DILocation(line: 0, scope: !2404)
!2409 = !DILocation(line: 424, column: 12, scope: !2404)
!2410 = !DILocation(line: 424, column: 29, scope: !2404)
!2411 = !DILocation(line: 425, column: 34, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 425, column: 9)
!2413 = !DILocation(line: 425, column: 9, scope: !2404)
!2414 = !DILocation(line: 426, column: 36, scope: !2412)
!2415 = !DILocation(line: 426, column: 50, scope: !2412)
!2416 = !DILocation(line: 426, column: 26, scope: !2412)
!2417 = !DILocation(line: 0, scope: !2336, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 426, column: 9, scope: !2412)
!2419 = !DILocation(line: 387, column: 5, scope: !2336, inlinedAt: !2418)
!2420 = !DILocation(line: 387, column: 12, scope: !2336, inlinedAt: !2418)
!2421 = !DILocation(line: 387, column: 23, scope: !2336, inlinedAt: !2418)
!2422 = distinct !{!2422, !2419, !2421}
!2423 = !DILocation(line: 388, column: 13, scope: !2336, inlinedAt: !2418)
!2424 = !DILocation(line: 426, column: 9, scope: !2412)
!2425 = !DILocation(line: 427, column: 1, scope: !2404)
!2426 = distinct !DISubprogram(name: "x264_frame_pop_unused", scope: !2, file: !2, line: 429, type: !43, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2427)
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "h", arg: 1, scope: !2426, file: !2, line: 429, type: !390)
!2429 = !DILocalVariable(name: "b_fdec", arg: 2, scope: !2426, file: !2, line: 429, type: !51)
!2430 = !DILocalVariable(name: "frame", scope: !2426, file: !2, line: 431, type: !45)
!2431 = !DILocation(line: 0, scope: !2426)
!2432 = !DILocation(line: 432, column: 19, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 432, column: 9)
!2434 = !DILocation(line: 432, column: 9, scope: !2433)
!2435 = !DILocation(line: 432, column: 9, scope: !2426)
!2436 = !DILocation(line: 0, scope: !2350, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 433, column: 17, scope: !2433)
!2438 = !DILocation(line: 396, column: 18, scope: !2350, inlinedAt: !2437)
!2439 = !DILocation(line: 396, column: 12, scope: !2350, inlinedAt: !2437)
!2440 = !DILocation(line: 396, column: 5, scope: !2350, inlinedAt: !2437)
!2441 = distinct !{!2441, !2440, !2442}
!2442 = !DILocation(line: 396, column: 25, scope: !2350, inlinedAt: !2437)
!2443 = !DILocation(line: 397, column: 13, scope: !2350, inlinedAt: !2437)
!2444 = !DILocation(line: 398, column: 13, scope: !2350, inlinedAt: !2437)
!2445 = !DILocation(line: 433, column: 9, scope: !2433)
!2446 = !DILocation(line: 435, column: 17, scope: !2433)
!2447 = !DILocation(line: 0, scope: !2433)
!2448 = !DILocation(line: 436, column: 10, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 436, column: 9)
!2450 = !DILocation(line: 436, column: 9, scope: !2426)
!2451 = !DILocation(line: 438, column: 12, scope: !2426)
!2452 = !DILocation(line: 438, column: 34, scope: !2426)
!2453 = !DILocation(line: 439, column: 12, scope: !2426)
!2454 = !DILocation(line: 439, column: 30, scope: !2426)
!2455 = !DILocation(line: 440, column: 12, scope: !2426)
!2456 = !DILocation(line: 440, column: 31, scope: !2426)
!2457 = !DILocation(line: 441, column: 12, scope: !2426)
!2458 = !DILocation(line: 441, column: 23, scope: !2426)
!2459 = !DILocation(line: 442, column: 12, scope: !2426)
!2460 = !DILocation(line: 442, column: 23, scope: !2426)
!2461 = !DILocation(line: 444, column: 20, scope: !2426)
!2462 = !DILocation(line: 444, column: 5, scope: !2426)
!2463 = !DILocation(line: 445, column: 20, scope: !2426)
!2464 = !DILocation(line: 445, column: 5, scope: !2426)
!2465 = !DILocation(line: 447, column: 5, scope: !2426)
!2466 = !DILocation(line: 448, column: 1, scope: !2426)
!2467 = distinct !DISubprogram(name: "x264_frame_push_blank_unused", scope: !2, file: !2, line: 450, type: !2240, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2468)
!2468 = !{!2469, !2470}
!2469 = !DILocalVariable(name: "h", arg: 1, scope: !2467, file: !2, line: 450, type: !390)
!2470 = !DILocalVariable(name: "frame", arg: 2, scope: !2467, file: !2, line: 450, type: !45)
!2471 = !DILocation(line: 0, scope: !2467)
!2472 = !DILocation(line: 453, column: 12, scope: !2467)
!2473 = !DILocation(line: 453, column: 29, scope: !2467)
!2474 = !DILocation(line: 454, column: 34, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 454, column: 9)
!2476 = !DILocation(line: 454, column: 9, scope: !2467)
!2477 = !DILocation(line: 455, column: 36, scope: !2475)
!2478 = !DILocation(line: 0, scope: !2336, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 455, column: 9, scope: !2475)
!2480 = !DILocation(line: 387, column: 5, scope: !2336, inlinedAt: !2479)
!2481 = !DILocation(line: 387, column: 12, scope: !2336, inlinedAt: !2479)
!2482 = !DILocation(line: 387, column: 23, scope: !2336, inlinedAt: !2479)
!2483 = distinct !{!2483, !2480, !2482}
!2484 = !DILocation(line: 388, column: 13, scope: !2336, inlinedAt: !2479)
!2485 = !DILocation(line: 455, column: 9, scope: !2475)
!2486 = !DILocation(line: 456, column: 1, scope: !2467)
!2487 = distinct !DISubprogram(name: "x264_frame_pop_blank_unused", scope: !2, file: !2, line: 458, type: !2488, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!45, !390}
!2490 = !{!2491, !2492}
!2491 = !DILocalVariable(name: "h", arg: 1, scope: !2487, file: !2, line: 458, type: !390)
!2492 = !DILocalVariable(name: "frame", scope: !2487, file: !2, line: 460, type: !45)
!2493 = !DILocation(line: 0, scope: !2487)
!2494 = !DILocation(line: 461, column: 19, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 461, column: 9)
!2496 = !DILocation(line: 461, column: 9, scope: !2495)
!2497 = !DILocation(line: 461, column: 9, scope: !2487)
!2498 = !DILocation(line: 0, scope: !2350, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 462, column: 17, scope: !2495)
!2500 = !DILocation(line: 396, column: 18, scope: !2350, inlinedAt: !2499)
!2501 = !DILocation(line: 396, column: 12, scope: !2350, inlinedAt: !2499)
!2502 = !DILocation(line: 396, column: 5, scope: !2350, inlinedAt: !2499)
!2503 = distinct !{!2503, !2502, !2504}
!2504 = !DILocation(line: 396, column: 25, scope: !2350, inlinedAt: !2499)
!2505 = !DILocation(line: 397, column: 13, scope: !2350, inlinedAt: !2499)
!2506 = !DILocation(line: 398, column: 13, scope: !2350, inlinedAt: !2499)
!2507 = !DILocation(line: 462, column: 9, scope: !2495)
!2508 = !DILocation(line: 464, column: 17, scope: !2495)
!2509 = !DILocation(line: 0, scope: !2495)
!2510 = !DILocation(line: 465, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 465, column: 9)
!2512 = !DILocation(line: 465, column: 9, scope: !2487)
!2513 = !DILocation(line: 467, column: 12, scope: !2487)
!2514 = !DILocation(line: 467, column: 24, scope: !2487)
!2515 = !DILocation(line: 468, column: 12, scope: !2487)
!2516 = !DILocation(line: 468, column: 30, scope: !2487)
!2517 = !DILocation(line: 469, column: 5, scope: !2487)
!2518 = !DILocation(line: 470, column: 1, scope: !2487)
!2519 = distinct !DISubprogram(name: "x264_frame_sort", scope: !2, file: !2, line: 472, type: !2520, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !673, !51}
!2522 = !{!2523, !2524, !2525, !2526, !2529, !2532, !2533, !2534}
!2523 = !DILocalVariable(name: "list", arg: 1, scope: !2519, file: !2, line: 472, type: !673)
!2524 = !DILocalVariable(name: "b_dts", arg: 2, scope: !2519, file: !2, line: 472, type: !51)
!2525 = !DILocalVariable(name: "b_ok", scope: !2519, file: !2, line: 474, type: !51)
!2526 = !DILocalVariable(name: "i", scope: !2527, file: !2, line: 477, type: !51)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 477, column: 9)
!2528 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 475, column: 8)
!2529 = !DILocalVariable(name: "dtype", scope: !2530, file: !2, line: 479, type: !51)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 478, column: 9)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 477, column: 9)
!2532 = !DILocalVariable(name: "dtime", scope: !2530, file: !2, line: 480, type: !51)
!2533 = !DILocalVariable(name: "swap", scope: !2530, file: !2, line: 481, type: !51)
!2534 = !DILocalVariable(name: "t", scope: !2535, file: !2, line: 485, type: !45)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 485, column: 17)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 484, column: 13)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 483, column: 17)
!2538 = !DILocation(line: 0, scope: !2519)
!2539 = !DILocation(line: 477, column: 25, scope: !2531)
!2540 = !DILocation(line: 477, column: 9, scope: !2527)
!2541 = !DILocation(line: 0, scope: !2527)
!2542 = !DILocation(line: 479, column: 25, scope: !2530)
!2543 = !DILocation(line: 0, scope: !2530)
!2544 = !DILocation(line: 480, column: 34, scope: !2530)
!2545 = !DILocation(line: 480, column: 55, scope: !2530)
!2546 = !DILocation(line: 482, column: 38, scope: !2530)
!2547 = !DILocation(line: 483, column: 17, scope: !2530)
!2548 = !DILocation(line: 0, scope: !2535)
!2549 = !DILocation(line: 485, column: 17, scope: !2535)
!2550 = !DILocation(line: 487, column: 13, scope: !2536)
!2551 = !DILocation(line: 0, scope: !2528)
!2552 = !DILocation(line: 477, column: 31, scope: !2531)
!2553 = distinct !{!2553, !2540, !2554}
!2554 = !DILocation(line: 488, column: 9, scope: !2527)
!2555 = !DILocation(line: 489, column: 14, scope: !2519)
!2556 = !DILocation(line: 489, column: 5, scope: !2528)
!2557 = distinct !{!2557, !2558, !2559, !1463}
!2558 = !DILocation(line: 475, column: 5, scope: !2519)
!2559 = !DILocation(line: 489, column: 20, scope: !2519)
!2560 = !DILocation(line: 479, column: 34, scope: !2530)
!2561 = !DILocation(line: 479, column: 54, scope: !2530)
!2562 = !DILocation(line: 481, column: 38, scope: !2530)
!2563 = !DILocation(line: 481, column: 42, scope: !2530)
!2564 = !DILocation(line: 481, column: 53, scope: !2530)
!2565 = !DILocation(line: 481, column: 58, scope: !2530)
!2566 = !DILocation(line: 490, column: 1, scope: !2519)
!2567 = distinct !DISubprogram(name: "x264_weight_scale_plane", scope: !2, file: !2, line: 492, type: !2568, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !390, !264, !51, !264, !51, !51, !51, !1179}
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2571 = !DILocalVariable(name: "h", arg: 1, scope: !2567, file: !2, line: 492, type: !390)
!2572 = !DILocalVariable(name: "dst", arg: 2, scope: !2567, file: !2, line: 492, type: !264)
!2573 = !DILocalVariable(name: "i_dst_stride", arg: 3, scope: !2567, file: !2, line: 492, type: !51)
!2574 = !DILocalVariable(name: "src", arg: 4, scope: !2567, file: !2, line: 492, type: !264)
!2575 = !DILocalVariable(name: "i_src_stride", arg: 5, scope: !2567, file: !2, line: 492, type: !51)
!2576 = !DILocalVariable(name: "i_width", arg: 6, scope: !2567, file: !2, line: 493, type: !51)
!2577 = !DILocalVariable(name: "i_height", arg: 7, scope: !2567, file: !2, line: 493, type: !51)
!2578 = !DILocalVariable(name: "w", arg: 8, scope: !2567, file: !2, line: 493, type: !1179)
!2579 = !DILocalVariable(name: "x", scope: !2580, file: !2, line: 499, type: !51)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !2, line: 499, column: 9)
!2581 = distinct !DILexicalBlock(scope: !2567, file: !2, line: 498, column: 5)
!2582 = !DILocation(line: 0, scope: !2567)
!2583 = !DILocation(line: 497, column: 21, scope: !2567)
!2584 = !DILocation(line: 497, column: 5, scope: !2567)
!2585 = !DILocation(line: 0, scope: !2580)
!2586 = !DILocation(line: 499, column: 9, scope: !2580)
!2587 = !DILocation(line: 500, column: 16, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !2, line: 499, column: 9)
!2589 = !DILocation(line: 500, column: 13, scope: !2588)
!2590 = !DILocation(line: 500, column: 36, scope: !2588)
!2591 = !DILocation(line: 500, column: 57, scope: !2588)
!2592 = !DILocation(line: 499, column: 40, scope: !2588)
!2593 = !DILocation(line: 499, column: 27, scope: !2588)
!2594 = distinct !{!2594, !2586, !2595}
!2595 = !DILocation(line: 500, column: 103, scope: !2580)
!2596 = !DILocation(line: 501, column: 18, scope: !2581)
!2597 = !DILocation(line: 502, column: 13, scope: !2581)
!2598 = !DILocation(line: 503, column: 13, scope: !2581)
!2599 = distinct !{!2599, !2584, !2600}
!2600 = !DILocation(line: 504, column: 5, scope: !2567)
!2601 = !DILocation(line: 505, column: 1, scope: !2567)
!2602 = distinct !DISubprogram(name: "x264_frame_delete_list", scope: !2, file: !2, line: 507, type: !2603, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !673}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "list", arg: 1, scope: !2602, file: !2, line: 507, type: !673)
!2607 = !DILocalVariable(name: "i", scope: !2602, file: !2, line: 509, type: !51)
!2608 = !DILocation(line: 0, scope: !2602)
!2609 = !DILocation(line: 510, column: 10, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 510, column: 9)
!2611 = !DILocation(line: 510, column: 9, scope: !2602)
!2612 = !DILocation(line: 512, column: 12, scope: !2602)
!2613 = !DILocation(line: 512, column: 5, scope: !2602)
!2614 = !DILocation(line: 513, column: 34, scope: !2602)
!2615 = !DILocation(line: 513, column: 9, scope: !2602)
!2616 = distinct !{!2616, !2613, !2617}
!2617 = !DILocation(line: 513, column: 38, scope: !2602)
!2618 = !DILocation(line: 514, column: 5, scope: !2602)
!2619 = !DILocation(line: 515, column: 1, scope: !2602)
!2620 = distinct !DISubprogram(name: "x264_synch_frame_list_init", scope: !2, file: !2, line: 517, type: !2621, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2624)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!51, !2623, !51}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "slist", arg: 1, scope: !2620, file: !2, line: 517, type: !2623)
!2626 = !DILocalVariable(name: "max_size", arg: 2, scope: !2620, file: !2, line: 517, type: !51)
!2627 = !DILabel(scope: !2620, name: "fail", file: !2, line: 529)
!2628 = !DILocation(line: 0, scope: !2620)
!2629 = !DILocation(line: 519, column: 18, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 519, column: 9)
!2631 = !DILocation(line: 519, column: 9, scope: !2620)
!2632 = !DILocation(line: 521, column: 12, scope: !2620)
!2633 = !DILocation(line: 521, column: 23, scope: !2620)
!2634 = !DILocation(line: 522, column: 12, scope: !2620)
!2635 = !DILocation(line: 522, column: 19, scope: !2620)
!2636 = !DILocation(line: 523, column: 5, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 523, column: 5)
!2638 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 523, column: 5)
!2639 = !DILocation(line: 523, column: 5, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !2, line: 523, column: 5)
!2641 = !DILocation(line: 523, column: 5, scope: !2638)
!2642 = !DILocation(line: 528, column: 5, scope: !2620)
!2643 = !DILocation(line: 531, column: 1, scope: !2620)
!2644 = distinct !DISubprogram(name: "x264_synch_frame_list_delete", scope: !2, file: !2, line: 533, type: !2645, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2623}
!2647 = !{!2648}
!2648 = !DILocalVariable(name: "slist", arg: 1, scope: !2644, file: !2, line: 533, type: !2623)
!2649 = !DILocation(line: 0, scope: !2644)
!2650 = !DILocation(line: 538, column: 36, scope: !2644)
!2651 = !DILocation(line: 0, scope: !2602, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 538, column: 5, scope: !2644)
!2653 = !DILocation(line: 510, column: 10, scope: !2610, inlinedAt: !2652)
!2654 = !DILocation(line: 510, column: 9, scope: !2602, inlinedAt: !2652)
!2655 = !DILocation(line: 512, column: 12, scope: !2602, inlinedAt: !2652)
!2656 = !DILocation(line: 512, column: 5, scope: !2602, inlinedAt: !2652)
!2657 = !DILocation(line: 513, column: 34, scope: !2602, inlinedAt: !2652)
!2658 = !DILocation(line: 513, column: 9, scope: !2602, inlinedAt: !2652)
!2659 = distinct !{!2659, !2656, !2660}
!2660 = !DILocation(line: 513, column: 38, scope: !2602, inlinedAt: !2652)
!2661 = !DILocation(line: 514, column: 5, scope: !2602, inlinedAt: !2652)
!2662 = !DILocation(line: 515, column: 1, scope: !2602, inlinedAt: !2652)
!2663 = !DILocation(line: 539, column: 1, scope: !2644)
!2664 = distinct !DISubprogram(name: "x264_synch_frame_list_push", scope: !2, file: !2, line: 541, type: !2665, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2623, !45}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "slist", arg: 1, scope: !2664, file: !2, line: 541, type: !2623)
!2669 = !DILocalVariable(name: "frame", arg: 2, scope: !2664, file: !2, line: 541, type: !45)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 544, column: 5, scope: !2664)
!2672 = distinct !{!2672, !2671, !2673}
!2673 = !DILocation(line: 545, column: 66, scope: !2664)
!2674 = !DILocation(line: 546, column: 12, scope: !2664)
!2675 = !DILocation(line: 546, column: 31, scope: !2664)
!2676 = !DILocation(line: 546, column: 5, scope: !2664)
!2677 = !DILocation(line: 546, column: 36, scope: !2664)
!2678 = !DILocation(line: 549, column: 1, scope: !2664)
