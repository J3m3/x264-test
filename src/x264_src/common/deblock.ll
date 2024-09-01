; ModuleID = 'x264_src/common/deblock.c'
source_filename = "x264_src/common/deblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i_alpha_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !0
@i_beta_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16, !dbg !67
@i_tc0_table = internal unnamed_addr constant [76 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\02\02\03", [4 x i8] c"\FF\02\02\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\03\03\05", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\04\05\07", [4 x i8] c"\FF\04\05\08", [4 x i8] c"\FF\04\06\09", [4 x i8] c"\FF\05\07\0A", [4 x i8] c"\FF\06\08\0B", [4 x i8] c"\FF\06\08\0D", [4 x i8] c"\FF\07\0A\0E", [4 x i8] c"\FF\08\0B\10", [4 x i8] c"\FF\09\0C\12", [4 x i8] c"\FF\0A\0D\14", [4 x i8] c"\FF\0B\0F\17", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19"], align 16, !dbg !73

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_deblock_row(ptr noundef %h, i32 noundef %mb_y) local_unnamed_addr #0 !dbg !90 {
entry:
  %tc.i1092 = alloca [4 x i8], align 1, !DIAssignID !1422
  %tc.i1060 = alloca [4 x i8], align 1, !DIAssignID !1423
  %tc.i1028 = alloca [4 x i8], align 1, !DIAssignID !1424
  %tc.i996 = alloca [4 x i8], align 1, !DIAssignID !1425
  %tc.i964 = alloca [4 x i8], align 1, !DIAssignID !1426
  %tc.i932 = alloca [4 x i8], align 1, !DIAssignID !1427
  %tc.i872 = alloca [4 x i8], align 1, !DIAssignID !1428
  %tc.i840 = alloca [4 x i8], align 1, !DIAssignID !1429
  %tc.i808 = alloca [4 x i8], align 1, !DIAssignID !1430
  %tc.i776 = alloca [4 x i8], align 1, !DIAssignID !1431
  %tc.i748 = alloca [4 x i8], align 1, !DIAssignID !1432
  %tc.i = alloca [4 x i8], align 1, !DIAssignID !1433
    #dbg_value(ptr %h, !1386, !DIExpression(), !1434)
    #dbg_value(i32 %mb_y, !1387, !DIExpression(), !1434)
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268, !dbg !1435
  %0 = load i32, ptr %b_mbaff, align 4, !dbg !1435
    #dbg_value(i32 %0, !1388, !DIExpression(), !1434)
  %i_alpha_c0_offset = getelementptr inbounds i8, ptr %h, i64 13888, !dbg !1436
  %1 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1436
  %i_beta_offset = getelementptr inbounds i8, ptr %h, i64 13892, !dbg !1436
  %2 = load i32, ptr %i_beta_offset, align 4, !dbg !1436
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2), !dbg !1436
  %i_chroma_qp_offset = getelementptr inbounds i8, ptr %h, i64 408, !dbg !1437
  %3 = load i32, ptr %i_chroma_qp_offset, align 8, !dbg !1437
  %cond14 = tail call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !1437
  %4 = add i32 %., %cond14, !dbg !1438
  %sub15 = sub i32 15, %4, !dbg !1438
    #dbg_value(i32 %sub15, !1389, !DIExpression(), !1434)
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688, !dbg !1439
  %5 = load ptr, ptr %fdec, align 16, !dbg !1439
  %i_stride = getelementptr inbounds i8, ptr %5, i64 104, !dbg !1440
  %6 = load i32, ptr %i_stride, align 8, !dbg !1441
    #dbg_value(i32 %6, !1390, !DIExpression(), !1434)
  %shl = shl i32 %6, %0, !dbg !1442
    #dbg_value(i32 %shl, !1391, !DIExpression(), !1434)
  %arrayidx18 = getelementptr inbounds i8, ptr %5, i64 108, !dbg !1443
  %7 = load i32, ptr %arrayidx18, align 4, !dbg !1443
    #dbg_value(i32 %7, !1392, !DIExpression(), !1434)
  %shl19 = shl i32 %7, %0, !dbg !1444
    #dbg_value(i32 %shl19, !1393, !DIExpression(), !1434)
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176, !dbg !1445
  %8 = load ptr, ptr %scratch_buffer, align 8, !dbg !1445
    #dbg_value(ptr %8, !1394, !DIExpression(), !1434)
  %pps = getelementptr inbounds i8, ptr %h, i64 3328, !dbg !1446
  %9 = load ptr, ptr %pps, align 16, !dbg !1446
  %b_cabac = getelementptr inbounds i8, ptr %9, i64 8, !dbg !1448
  %10 = load i32, ptr %b_cabac, align 8, !dbg !1448
  %tobool.not = icmp eq i32 %10, 0, !dbg !1449
  br i1 %tobool.not, label %land.lhs.true, label %if.end, !dbg !1450

land.lhs.true:                                    ; preds = %entry
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %9, i64 60, !dbg !1451
  %11 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !1451
  %tobool21.not = icmp eq i32 %11, 0, !dbg !1452
  br i1 %tobool21.not, label %if.end, label %if.then, !dbg !1453

if.then:                                          ; preds = %land.lhs.true
    #dbg_value(ptr %h, !1454, !DIExpression(), !1465)
    #dbg_value(i32 %mb_y, !1462, !DIExpression(), !1465)
    #dbg_value(ptr %8, !1463, !DIExpression(), !1465)
    #dbg_value(ptr poison, !1464, !DIExpression(), !1465)
    #dbg_value(ptr %h, !1467, !DIExpression(), !1481)
    #dbg_value(i32 %mb_y, !1470, !DIExpression(), !1481)
    #dbg_value(ptr %8, !1471, !DIExpression(), !1481)
  %non_zero_count.i1235 = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !1483
  %12 = load ptr, ptr %non_zero_count.i1235, align 16, !dbg !1483
  %sps.i1236 = getelementptr inbounds i8, ptr %h, i64 3200, !dbg !1484
  %13 = load ptr, ptr %sps.i1236, align 16, !dbg !1484
  %i_mb_width.i1237 = getelementptr inbounds i8, ptr %13, i64 1084, !dbg !1485
  %14 = load i32, ptr %i_mb_width.i1237, align 4, !dbg !1485
  %mul.i1238 = mul nsw i32 %14, %mb_y, !dbg !1486
  %idx.ext.i1239 = sext i32 %mul.i1238 to i64, !dbg !1487
  %add.ptr.i1240 = getelementptr inbounds [6 x i32], ptr %12, i64 %idx.ext.i1239, !dbg !1487
    #dbg_value(ptr %add.ptr.i1240, !1472, !DIExpression(), !1481)
  %mb_transform_size.i1241 = getelementptr inbounds i8, ptr %h, i64 17240, !dbg !1488
  %15 = load ptr, ptr %mb_transform_size.i1241, align 8, !dbg !1488
  %add.ptr6.i1242 = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i1239, !dbg !1489
    #dbg_value(ptr %add.ptr6.i1242, !1473, !DIExpression(), !1481)
    #dbg_value(i32 0, !1474, !DIExpression(), !1490)
  %cmp79.i1243 = icmp sgt i32 %14, 0, !dbg !1491
  br i1 %cmp79.i1243, label %for.body.i1244, label %munge_cavlc_nnz_row.exit1272, !dbg !1492

for.body.i1244:                                   ; preds = %if.then, %for.inc.i1268
  %indvars.iv.i1245 = phi i64 [ %indvars.iv.next.i1269, %for.inc.i1268 ], [ 0, %if.then ]
    #dbg_value(i64 %indvars.iv.i1245, !1474, !DIExpression(), !1490)
  %add.ptr10.i1246 = getelementptr inbounds [16 x i8], ptr %8, i64 %indvars.iv.i1245, !dbg !1493
  %add.ptr12.i1247 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1240, i64 %indvars.iv.i1245, !dbg !1494
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1246, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1247, i64 16, i1 false), !dbg !1495
  %arrayidx.i1248 = getelementptr inbounds i8, ptr %add.ptr6.i1242, i64 %indvars.iv.i1245, !dbg !1496
  %16 = load i8, ptr %arrayidx.i1248, align 1, !dbg !1496
  %tobool.not.i1249 = icmp eq i8 %16, 0, !dbg !1496
  br i1 %tobool.not.i1249, label %for.inc.i1268, label %if.then.i1250, !dbg !1497

if.then.i1250:                                    ; preds = %for.body.i1244
  %17 = load i32, ptr %add.ptr12.i1247, align 4, !dbg !1498
  %arrayidx18.i1251 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 4, !dbg !1499
  %18 = load i32, ptr %arrayidx18.i1251, align 4, !dbg !1499
  %or.i1252 = or i32 %18, %17, !dbg !1500
    #dbg_value(i32 %or.i1252, !1476, !DIExpression(), !1501)
  %conv19.i1253 = and i32 %or.i1252, 65535, !dbg !1502
  %tobool20.not.i1254 = icmp eq i32 %conv19.i1253, 0, !dbg !1502
  %cond.i1255 = select i1 %tobool20.not.i1254, i32 0, i32 257, !dbg !1502
  %tobool21.not.i1256 = icmp ult i32 %or.i1252, 65536, !dbg !1503
  %cond22.i1257 = select i1 %tobool21.not.i1256, i32 0, i32 16842752, !dbg !1503
  %add.i1258 = or disjoint i32 %cond.i1255, %cond22.i1257, !dbg !1504
  store i32 %add.i1258, ptr %arrayidx18.i1251, align 4, !dbg !1505
  store i32 %add.i1258, ptr %add.ptr12.i1247, align 4, !dbg !1506
  %arrayidx31.i1259 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 8, !dbg !1507
  %19 = load i32, ptr %arrayidx31.i1259, align 4, !dbg !1507
  %arrayidx34.i1260 = getelementptr inbounds i8, ptr %add.ptr12.i1247, i64 12, !dbg !1508
  %20 = load i32, ptr %arrayidx34.i1260, align 4, !dbg !1508
  %or35.i1261 = or i32 %20, %19, !dbg !1509
    #dbg_value(i32 %or35.i1261, !1476, !DIExpression(), !1501)
  %conv37.i1262 = and i32 %or35.i1261, 65535, !dbg !1510
  %tobool38.not.i1263 = icmp eq i32 %conv37.i1262, 0, !dbg !1510
  %cond39.i1264 = select i1 %tobool38.not.i1263, i32 0, i32 257, !dbg !1510
  %tobool41.not.i1265 = icmp ult i32 %or35.i1261, 65536, !dbg !1511
  %cond42.i1266 = select i1 %tobool41.not.i1265, i32 0, i32 16842752, !dbg !1511
  %add43.i1267 = or disjoint i32 %cond39.i1264, %cond42.i1266, !dbg !1512
  store i32 %add43.i1267, ptr %arrayidx34.i1260, align 4, !dbg !1513
  store i32 %add43.i1267, ptr %arrayidx31.i1259, align 4, !dbg !1514
  br label %for.inc.i1268, !dbg !1515

for.inc.i1268:                                    ; preds = %if.then.i1250, %for.body.i1244
  %indvars.iv.next.i1269 = add nuw nsw i64 %indvars.iv.i1245, 1, !dbg !1516
    #dbg_value(i64 %indvars.iv.next.i1269, !1474, !DIExpression(), !1490)
  %21 = load ptr, ptr %sps.i1236, align 16, !dbg !1517
  %i_mb_width8.i1270 = getelementptr inbounds i8, ptr %21, i64 1084, !dbg !1518
  %22 = load i32, ptr %i_mb_width8.i1270, align 4, !dbg !1518
  %23 = sext i32 %22 to i64, !dbg !1491
  %cmp.i1271 = icmp slt i64 %indvars.iv.next.i1269, %23, !dbg !1491
  br i1 %cmp.i1271, label %for.body.i1244, label %munge_cavlc_nnz_row.exit1272, !dbg !1492, !llvm.loop !1519

munge_cavlc_nnz_row.exit1272:                     ; preds = %for.inc.i1268, %if.then
  %24 = phi i32 [ %14, %if.then ], [ %22, %for.inc.i1268 ]
  %25 = phi ptr [ %13, %if.then ], [ %21, %for.inc.i1268 ]
  %cmp.i = icmp sgt i32 %mb_y, 0, !dbg !1521
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1523

if.then.i:                                        ; preds = %munge_cavlc_nnz_row.exit1272
  %sub.i = add nsw i32 %mb_y, -1, !dbg !1524
  %idx.ext.i = sext i32 %24 to i64, !dbg !1525
  %add.ptr.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext.i, !dbg !1525
    #dbg_value(ptr %h, !1467, !DIExpression(), !1526)
    #dbg_value(i32 %sub.i, !1470, !DIExpression(), !1526)
    #dbg_value(ptr %add.ptr.i, !1471, !DIExpression(), !1526)
  %26 = load ptr, ptr %non_zero_count.i1235, align 16, !dbg !1528
  %mul.i1200 = mul nsw i32 %24, %sub.i, !dbg !1529
  %idx.ext.i1201 = sext i32 %mul.i1200 to i64, !dbg !1530
  %add.ptr.i1202 = getelementptr inbounds [6 x i32], ptr %26, i64 %idx.ext.i1201, !dbg !1530
    #dbg_value(ptr %add.ptr.i1202, !1472, !DIExpression(), !1526)
  %27 = load ptr, ptr %mb_transform_size.i1241, align 8, !dbg !1531
  %add.ptr6.i1204 = getelementptr inbounds i8, ptr %27, i64 %idx.ext.i1201, !dbg !1532
    #dbg_value(ptr %add.ptr6.i1204, !1473, !DIExpression(), !1526)
    #dbg_value(i32 0, !1474, !DIExpression(), !1533)
  %cmp79.i1205 = icmp sgt i32 %24, 0, !dbg !1534
  br i1 %cmp79.i1205, label %for.body.i1206, label %if.end.i, !dbg !1535

for.body.i1206:                                   ; preds = %if.then.i, %for.inc.i1230
  %indvars.iv.i1207 = phi i64 [ %indvars.iv.next.i1231, %for.inc.i1230 ], [ 0, %if.then.i ]
    #dbg_value(i64 %indvars.iv.i1207, !1474, !DIExpression(), !1533)
  %add.ptr10.i1208 = getelementptr inbounds [16 x i8], ptr %add.ptr.i, i64 %indvars.iv.i1207, !dbg !1536
  %add.ptr12.i1209 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1202, i64 %indvars.iv.i1207, !dbg !1537
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1208, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1209, i64 16, i1 false), !dbg !1538
  %arrayidx.i1210 = getelementptr inbounds i8, ptr %add.ptr6.i1204, i64 %indvars.iv.i1207, !dbg !1539
  %28 = load i8, ptr %arrayidx.i1210, align 1, !dbg !1539
  %tobool.not.i1211 = icmp eq i8 %28, 0, !dbg !1539
  br i1 %tobool.not.i1211, label %for.inc.i1230, label %if.then.i1212, !dbg !1540

if.then.i1212:                                    ; preds = %for.body.i1206
  %29 = load i32, ptr %add.ptr12.i1209, align 4, !dbg !1541
  %arrayidx18.i1213 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 4, !dbg !1542
  %30 = load i32, ptr %arrayidx18.i1213, align 4, !dbg !1542
  %or.i1214 = or i32 %30, %29, !dbg !1543
    #dbg_value(i32 %or.i1214, !1476, !DIExpression(), !1544)
  %conv19.i1215 = and i32 %or.i1214, 65535, !dbg !1545
  %tobool20.not.i1216 = icmp eq i32 %conv19.i1215, 0, !dbg !1545
  %cond.i1217 = select i1 %tobool20.not.i1216, i32 0, i32 257, !dbg !1545
  %tobool21.not.i1218 = icmp ult i32 %or.i1214, 65536, !dbg !1546
  %cond22.i1219 = select i1 %tobool21.not.i1218, i32 0, i32 16842752, !dbg !1546
  %add.i1220 = or disjoint i32 %cond.i1217, %cond22.i1219, !dbg !1547
  store i32 %add.i1220, ptr %arrayidx18.i1213, align 4, !dbg !1548
  store i32 %add.i1220, ptr %add.ptr12.i1209, align 4, !dbg !1549
  %arrayidx31.i1221 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 8, !dbg !1550
  %31 = load i32, ptr %arrayidx31.i1221, align 4, !dbg !1550
  %arrayidx34.i1222 = getelementptr inbounds i8, ptr %add.ptr12.i1209, i64 12, !dbg !1551
  %32 = load i32, ptr %arrayidx34.i1222, align 4, !dbg !1551
  %or35.i1223 = or i32 %32, %31, !dbg !1552
    #dbg_value(i32 %or35.i1223, !1476, !DIExpression(), !1544)
  %conv37.i1224 = and i32 %or35.i1223, 65535, !dbg !1553
  %tobool38.not.i1225 = icmp eq i32 %conv37.i1224, 0, !dbg !1553
  %cond39.i1226 = select i1 %tobool38.not.i1225, i32 0, i32 257, !dbg !1553
  %tobool41.not.i1227 = icmp ult i32 %or35.i1223, 65536, !dbg !1554
  %cond42.i1228 = select i1 %tobool41.not.i1227, i32 0, i32 16842752, !dbg !1554
  %add43.i1229 = or disjoint i32 %cond39.i1226, %cond42.i1228, !dbg !1555
  store i32 %add43.i1229, ptr %arrayidx34.i1222, align 4, !dbg !1556
  store i32 %add43.i1229, ptr %arrayidx31.i1221, align 4, !dbg !1557
  br label %for.inc.i1230, !dbg !1558

for.inc.i1230:                                    ; preds = %if.then.i1212, %for.body.i1206
  %indvars.iv.next.i1231 = add nuw nsw i64 %indvars.iv.i1207, 1, !dbg !1559
    #dbg_value(i64 %indvars.iv.next.i1231, !1474, !DIExpression(), !1533)
  %33 = load ptr, ptr %sps.i1236, align 16, !dbg !1560
  %i_mb_width8.i1232 = getelementptr inbounds i8, ptr %33, i64 1084, !dbg !1561
  %34 = load i32, ptr %i_mb_width8.i1232, align 4, !dbg !1561
  %35 = sext i32 %34 to i64, !dbg !1534
  %cmp.i1233 = icmp slt i64 %indvars.iv.next.i1231, %35, !dbg !1534
  br i1 %cmp.i1233, label %for.body.i1206, label %if.end.i, !dbg !1535, !llvm.loop !1562

if.end.i:                                         ; preds = %for.inc.i1230, %if.then.i, %munge_cavlc_nnz_row.exit1272
  %36 = phi ptr [ %25, %if.then.i ], [ %25, %munge_cavlc_nnz_row.exit1272 ], [ %33, %for.inc.i1230 ]
  %37 = load i32, ptr %b_mbaff, align 4, !dbg !1564
  %tobool.not.i = icmp eq i32 %37, 0, !dbg !1566
  br i1 %tobool.not.i, label %if.end, label %if.then1.i, !dbg !1567

if.then1.i:                                       ; preds = %if.end.i
  %add.i = add nsw i32 %mb_y, 1, !dbg !1568
  %i_mb_width3.i = getelementptr inbounds i8, ptr %36, i64 1084, !dbg !1570
  %38 = load i32, ptr %i_mb_width3.i, align 4, !dbg !1570
  %mul.i = shl nsw i32 %38, 1, !dbg !1571
  %idx.ext4.i = sext i32 %mul.i to i64, !dbg !1572
  %add.ptr5.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext4.i, !dbg !1572
    #dbg_value(ptr %h, !1467, !DIExpression(), !1573)
    #dbg_value(i32 %add.i, !1470, !DIExpression(), !1573)
    #dbg_value(ptr %add.ptr5.i, !1471, !DIExpression(), !1573)
  %39 = load ptr, ptr %non_zero_count.i1235, align 16, !dbg !1575
  %mul.i1162 = mul nsw i32 %38, %add.i, !dbg !1576
  %idx.ext.i1163 = sext i32 %mul.i1162 to i64, !dbg !1577
  %add.ptr.i1164 = getelementptr inbounds [6 x i32], ptr %39, i64 %idx.ext.i1163, !dbg !1577
    #dbg_value(ptr %add.ptr.i1164, !1472, !DIExpression(), !1573)
  %40 = load ptr, ptr %mb_transform_size.i1241, align 8, !dbg !1578
  %add.ptr6.i1166 = getelementptr inbounds i8, ptr %40, i64 %idx.ext.i1163, !dbg !1579
    #dbg_value(ptr %add.ptr6.i1166, !1473, !DIExpression(), !1573)
    #dbg_value(i32 0, !1474, !DIExpression(), !1580)
  %cmp79.i1167 = icmp sgt i32 %38, 0, !dbg !1581
  br i1 %cmp79.i1167, label %for.body.i1168, label %munge_cavlc_nnz_row.exit1196, !dbg !1582

for.body.i1168:                                   ; preds = %if.then1.i, %for.inc.i1192
  %indvars.iv.i1169 = phi i64 [ %indvars.iv.next.i1193, %for.inc.i1192 ], [ 0, %if.then1.i ]
    #dbg_value(i64 %indvars.iv.i1169, !1474, !DIExpression(), !1580)
  %add.ptr10.i1170 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i, i64 %indvars.iv.i1169, !dbg !1583
  %add.ptr12.i1171 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1164, i64 %indvars.iv.i1169, !dbg !1584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1170, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1171, i64 16, i1 false), !dbg !1585
  %arrayidx.i1172 = getelementptr inbounds i8, ptr %add.ptr6.i1166, i64 %indvars.iv.i1169, !dbg !1586
  %41 = load i8, ptr %arrayidx.i1172, align 1, !dbg !1586
  %tobool.not.i1173 = icmp eq i8 %41, 0, !dbg !1586
  br i1 %tobool.not.i1173, label %for.inc.i1192, label %if.then.i1174, !dbg !1587

if.then.i1174:                                    ; preds = %for.body.i1168
  %42 = load i32, ptr %add.ptr12.i1171, align 4, !dbg !1588
  %arrayidx18.i1175 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 4, !dbg !1589
  %43 = load i32, ptr %arrayidx18.i1175, align 4, !dbg !1589
  %or.i1176 = or i32 %43, %42, !dbg !1590
    #dbg_value(i32 %or.i1176, !1476, !DIExpression(), !1591)
  %conv19.i1177 = and i32 %or.i1176, 65535, !dbg !1592
  %tobool20.not.i1178 = icmp eq i32 %conv19.i1177, 0, !dbg !1592
  %cond.i1179 = select i1 %tobool20.not.i1178, i32 0, i32 257, !dbg !1592
  %tobool21.not.i1180 = icmp ult i32 %or.i1176, 65536, !dbg !1593
  %cond22.i1181 = select i1 %tobool21.not.i1180, i32 0, i32 16842752, !dbg !1593
  %add.i1182 = or disjoint i32 %cond.i1179, %cond22.i1181, !dbg !1594
  store i32 %add.i1182, ptr %arrayidx18.i1175, align 4, !dbg !1595
  store i32 %add.i1182, ptr %add.ptr12.i1171, align 4, !dbg !1596
  %arrayidx31.i1183 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 8, !dbg !1597
  %44 = load i32, ptr %arrayidx31.i1183, align 4, !dbg !1597
  %arrayidx34.i1184 = getelementptr inbounds i8, ptr %add.ptr12.i1171, i64 12, !dbg !1598
  %45 = load i32, ptr %arrayidx34.i1184, align 4, !dbg !1598
  %or35.i1185 = or i32 %45, %44, !dbg !1599
    #dbg_value(i32 %or35.i1185, !1476, !DIExpression(), !1591)
  %conv37.i1186 = and i32 %or35.i1185, 65535, !dbg !1600
  %tobool38.not.i1187 = icmp eq i32 %conv37.i1186, 0, !dbg !1600
  %cond39.i1188 = select i1 %tobool38.not.i1187, i32 0, i32 257, !dbg !1600
  %tobool41.not.i1189 = icmp ult i32 %or35.i1185, 65536, !dbg !1601
  %cond42.i1190 = select i1 %tobool41.not.i1189, i32 0, i32 16842752, !dbg !1601
  %add43.i1191 = or disjoint i32 %cond39.i1188, %cond42.i1190, !dbg !1602
  store i32 %add43.i1191, ptr %arrayidx34.i1184, align 4, !dbg !1603
  store i32 %add43.i1191, ptr %arrayidx31.i1183, align 4, !dbg !1604
  br label %for.inc.i1192, !dbg !1605

for.inc.i1192:                                    ; preds = %if.then.i1174, %for.body.i1168
  %indvars.iv.next.i1193 = add nuw nsw i64 %indvars.iv.i1169, 1, !dbg !1606
    #dbg_value(i64 %indvars.iv.next.i1193, !1474, !DIExpression(), !1580)
  %46 = load ptr, ptr %sps.i1236, align 16, !dbg !1607
  %i_mb_width8.i1194 = getelementptr inbounds i8, ptr %46, i64 1084, !dbg !1608
  %47 = load i32, ptr %i_mb_width8.i1194, align 4, !dbg !1608
  %48 = sext i32 %47 to i64, !dbg !1581
  %cmp.i1195 = icmp slt i64 %indvars.iv.next.i1193, %48, !dbg !1581
  br i1 %cmp.i1195, label %for.body.i1168, label %munge_cavlc_nnz_row.exit1196, !dbg !1582, !llvm.loop !1609

munge_cavlc_nnz_row.exit1196:                     ; preds = %for.inc.i1192, %if.then1.i
  %49 = phi i32 [ %38, %if.then1.i ], [ %47, %for.inc.i1192 ]
  br i1 %cmp.i, label %if.then7.i, label %if.end, !dbg !1611

if.then7.i:                                       ; preds = %munge_cavlc_nnz_row.exit1196
  %sub8.i = add nsw i32 %mb_y, -2, !dbg !1612
  %mul11.i = mul nsw i32 %49, 3, !dbg !1614
  %idx.ext12.i = sext i32 %mul11.i to i64, !dbg !1615
  %add.ptr13.i = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext12.i, !dbg !1615
    #dbg_value(ptr %h, !1467, !DIExpression(), !1616)
    #dbg_value(i32 %sub8.i, !1470, !DIExpression(), !1616)
    #dbg_value(ptr %add.ptr13.i, !1471, !DIExpression(), !1616)
  %50 = load ptr, ptr %non_zero_count.i1235, align 16, !dbg !1618
  %mul.i1150 = mul nsw i32 %49, %sub8.i, !dbg !1619
  %idx.ext.i1151 = sext i32 %mul.i1150 to i64, !dbg !1620
  %add.ptr.i1152 = getelementptr inbounds [6 x i32], ptr %50, i64 %idx.ext.i1151, !dbg !1620
    #dbg_value(ptr %add.ptr.i1152, !1472, !DIExpression(), !1616)
  %51 = load ptr, ptr %mb_transform_size.i1241, align 8, !dbg !1621
  %add.ptr6.i = getelementptr inbounds i8, ptr %51, i64 %idx.ext.i1151, !dbg !1622
    #dbg_value(ptr %add.ptr6.i, !1473, !DIExpression(), !1616)
    #dbg_value(i32 0, !1474, !DIExpression(), !1623)
  %cmp79.i = icmp sgt i32 %49, 0, !dbg !1624
  br i1 %cmp79.i, label %for.body.i, label %if.end, !dbg !1625

for.body.i:                                       ; preds = %if.then7.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %if.then7.i ]
    #dbg_value(i64 %indvars.iv.i, !1474, !DIExpression(), !1623)
  %add.ptr10.i = getelementptr inbounds [16 x i8], ptr %add.ptr13.i, i64 %indvars.iv.i, !dbg !1626
  %add.ptr12.i = getelementptr inbounds [6 x i32], ptr %add.ptr.i1152, i64 %indvars.iv.i, !dbg !1627
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i, i64 16, i1 false), !dbg !1628
  %arrayidx.i1153 = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %indvars.iv.i, !dbg !1629
  %52 = load i8, ptr %arrayidx.i1153, align 1, !dbg !1629
  %tobool.not.i1154 = icmp eq i8 %52, 0, !dbg !1629
  br i1 %tobool.not.i1154, label %for.inc.i, label %if.then.i1155, !dbg !1630

if.then.i1155:                                    ; preds = %for.body.i
  %53 = load i32, ptr %add.ptr12.i, align 4, !dbg !1631
  %arrayidx18.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 4, !dbg !1632
  %54 = load i32, ptr %arrayidx18.i, align 4, !dbg !1632
  %or.i = or i32 %54, %53, !dbg !1633
    #dbg_value(i32 %or.i, !1476, !DIExpression(), !1634)
  %conv19.i1156 = and i32 %or.i, 65535, !dbg !1635
  %tobool20.not.i = icmp eq i32 %conv19.i1156, 0, !dbg !1635
  %cond.i = select i1 %tobool20.not.i, i32 0, i32 257, !dbg !1635
  %tobool21.not.i = icmp ult i32 %or.i, 65536, !dbg !1636
  %cond22.i = select i1 %tobool21.not.i, i32 0, i32 16842752, !dbg !1636
  %add.i1157 = or disjoint i32 %cond.i, %cond22.i, !dbg !1637
  store i32 %add.i1157, ptr %arrayidx18.i, align 4, !dbg !1638
  store i32 %add.i1157, ptr %add.ptr12.i, align 4, !dbg !1639
  %arrayidx31.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 8, !dbg !1640
  %55 = load i32, ptr %arrayidx31.i, align 4, !dbg !1640
  %arrayidx34.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 12, !dbg !1641
  %56 = load i32, ptr %arrayidx34.i, align 4, !dbg !1641
  %or35.i = or i32 %56, %55, !dbg !1642
    #dbg_value(i32 %or35.i, !1476, !DIExpression(), !1634)
  %conv37.i = and i32 %or35.i, 65535, !dbg !1643
  %tobool38.not.i = icmp eq i32 %conv37.i, 0, !dbg !1643
  %cond39.i = select i1 %tobool38.not.i, i32 0, i32 257, !dbg !1643
  %tobool41.not.i = icmp ult i32 %or35.i, 65536, !dbg !1644
  %cond42.i = select i1 %tobool41.not.i, i32 0, i32 16842752, !dbg !1644
  %add43.i = or disjoint i32 %cond39.i, %cond42.i, !dbg !1645
  store i32 %add43.i, ptr %arrayidx34.i, align 4, !dbg !1646
  store i32 %add43.i, ptr %arrayidx31.i, align 4, !dbg !1647
  br label %for.inc.i, !dbg !1648

for.inc.i:                                        ; preds = %if.then.i1155, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1649
    #dbg_value(i64 %indvars.iv.next.i, !1474, !DIExpression(), !1623)
  %57 = load ptr, ptr %sps.i1236, align 16, !dbg !1650
  %i_mb_width8.i = getelementptr inbounds i8, ptr %57, i64 1084, !dbg !1651
  %58 = load i32, ptr %i_mb_width8.i, align 4, !dbg !1651
  %59 = sext i32 %58 to i64, !dbg !1624
  %cmp.i1158 = icmp slt i64 %indvars.iv.next.i, %59, !dbg !1624
  br i1 %cmp.i1158, label %for.body.i, label %if.end, !dbg !1625, !llvm.loop !1652

if.end:                                           ; preds = %for.inc.i, %munge_cavlc_nnz_row.exit1196, %if.end.i, %if.then7.i, %land.lhs.true, %entry
    #dbg_value(i32 0, !1396, !DIExpression(), !1654)
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
    #dbg_value(i32 %mb_y, !1387, !DIExpression(), !1434)
  %60 = load ptr, ptr %sps, align 16, !dbg !1655
  %i_mb_width1329 = getelementptr inbounds i8, ptr %60, i64 1084, !dbg !1656
  %61 = load i32, ptr %i_mb_width1329, align 4, !dbg !1656
  %cmp221330 = icmp sgt i32 %61, 0, !dbg !1657
  br i1 %cmp221330, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1658

for.body.lr.ph:                                   ; preds = %if.end
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  %mul = shl i32 %6, 4
  %mul69 = shl i32 %7, 3
  %tobool86.not = icmp eq i32 %0, 0
  %mul91 = mul nsw i32 %6, 15
  %idx.ext92 = sext i32 %mul91 to i64
  %idx.neg = sub nsw i64 0, %idx.ext92
  %mul94 = mul nsw i32 %7, 7
  %idx.ext95 = sext i32 %mul94 to i64
  %idx.neg96 = sub nsw i64 0, %idx.ext95
  %qp104 = getelementptr inbounds i8, ptr %h, i64 16632
  %chroma_qp_table = getelementptr inbounds i8, ptr %h, i64 7216
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600
  %loopf207 = getelementptr inbounds i8, ptr %h, i64 33256
  %arrayidx30.i = getelementptr inbounds i8, ptr %tc.i, i64 1
  %arrayidx40.i = getelementptr inbounds i8, ptr %tc.i, i64 2
  %arrayidx50.i = getelementptr inbounds i8, ptr %tc.i, i64 3
  %deblock_chroma = getelementptr inbounds i8, ptr %h, i64 33272
  %arrayidx30.i769 = getelementptr inbounds i8, ptr %tc.i748, i64 1
  %arrayidx40.i772 = getelementptr inbounds i8, ptr %tc.i748, i64 2
  %arrayidx50.i774 = getelementptr inbounds i8, ptr %tc.i748, i64 3
  %deblock_luma_intra = getelementptr inbounds i8, ptr %h, i64 33288
  %deblock_chroma_intra = getelementptr inbounds i8, ptr %h, i64 33304
  %arrayidx30.i799 = getelementptr inbounds i8, ptr %tc.i776, i64 1
  %arrayidx40.i803 = getelementptr inbounds i8, ptr %tc.i776, i64 2
  %arrayidx50.i806 = getelementptr inbounds i8, ptr %tc.i776, i64 3
  %arrayidx30.i831 = getelementptr inbounds i8, ptr %tc.i808, i64 1
  %arrayidx40.i835 = getelementptr inbounds i8, ptr %tc.i808, i64 2
  %arrayidx50.i838 = getelementptr inbounds i8, ptr %tc.i808, i64 3
  %arrayidx30.i863 = getelementptr inbounds i8, ptr %tc.i840, i64 1
  %arrayidx40.i867 = getelementptr inbounds i8, ptr %tc.i840, i64 2
  %arrayidx50.i870 = getelementptr inbounds i8, ptr %tc.i840, i64 3
  %arrayidx30.i895 = getelementptr inbounds i8, ptr %tc.i872, i64 1
  %arrayidx40.i899 = getelementptr inbounds i8, ptr %tc.i872, i64 2
  %arrayidx50.i902 = getelementptr inbounds i8, ptr %tc.i872, i64 3
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604
  %arrayidx379 = getelementptr inbounds i8, ptr %h, i64 33264
  %arrayidx30.i955 = getelementptr inbounds i8, ptr %tc.i932, i64 1
  %arrayidx40.i959 = getelementptr inbounds i8, ptr %tc.i932, i64 2
  %arrayidx50.i962 = getelementptr inbounds i8, ptr %tc.i932, i64 3
  %arrayidx391 = getelementptr inbounds i8, ptr %h, i64 33280
  %arrayidx30.i987 = getelementptr inbounds i8, ptr %tc.i964, i64 1
  %arrayidx40.i991 = getelementptr inbounds i8, ptr %tc.i964, i64 2
  %arrayidx50.i994 = getelementptr inbounds i8, ptr %tc.i964, i64 3
  %arrayidx348 = getelementptr inbounds i8, ptr %h, i64 33296
  %arrayidx360 = getelementptr inbounds i8, ptr %h, i64 33312
  %mul401 = shl nsw i32 %shl, 2
  %idx.ext402 = sext i32 %mul401 to i64
  %arrayidx30.i1019 = getelementptr inbounds i8, ptr %tc.i996, i64 1
  %arrayidx40.i1023 = getelementptr inbounds i8, ptr %tc.i996, i64 2
  %arrayidx50.i1026 = getelementptr inbounds i8, ptr %tc.i996, i64 3
  %mul414 = shl nsw i32 %shl, 3
  %idx.ext415 = sext i32 %mul414 to i64
  %arrayidx30.i1051 = getelementptr inbounds i8, ptr %tc.i1028, i64 1
  %arrayidx40.i1055 = getelementptr inbounds i8, ptr %tc.i1028, i64 2
  %arrayidx50.i1058 = getelementptr inbounds i8, ptr %tc.i1028, i64 3
  %mul423 = shl nsw i32 %shl19, 2
  %idx.ext424 = sext i32 %mul423 to i64
  %arrayidx30.i1083 = getelementptr inbounds i8, ptr %tc.i1060, i64 1
  %arrayidx40.i1087 = getelementptr inbounds i8, ptr %tc.i1060, i64 2
  %arrayidx50.i1090 = getelementptr inbounds i8, ptr %tc.i1060, i64 3
  %mul440 = mul nsw i32 %shl, 12
  %idx.ext441 = sext i32 %mul440 to i64
  %arrayidx30.i1115 = getelementptr inbounds i8, ptr %tc.i1092, i64 1
  %arrayidx40.i1119 = getelementptr inbounds i8, ptr %tc.i1092, i64 2
  %arrayidx50.i1122 = getelementptr inbounds i8, ptr %tc.i1092, i64 3
  %not = xor i32 %0, -1
  br label %for.body, !dbg !1658

for.cond.cleanup:                                 ; preds = %if.end452, %if.end
  %62 = phi ptr [ %60, %if.end ], [ %305, %if.end452 ]
  %mb_y.addr.0.lcssa = phi i32 [ %mb_y, %if.end ], [ %xor, %if.end452 ]
  %.lcssa = phi i32 [ %61, %if.end ], [ %306, %if.end452 ], !dbg !1656
  %63 = load ptr, ptr %pps, align 16, !dbg !1659
  %b_cabac456 = getelementptr inbounds i8, ptr %63, i64 8, !dbg !1661
  %64 = load i32, ptr %b_cabac456, align 8, !dbg !1661
  %tobool457.not = icmp eq i32 %64, 0, !dbg !1662
  br i1 %tobool457.not, label %land.lhs.true458, label %if.end463, !dbg !1663

for.body:                                         ; preds = %for.body.lr.ph, %if.end452
  %mb_y.addr.01332 = phi i32 [ %mb_y, %for.body.lr.ph ], [ %xor, %if.end452 ]
  %mb_x.01331 = phi i32 [ 0, %for.body.lr.ph ], [ %add454, %if.end452 ]
    #dbg_value(i32 %mb_y.addr.01332, !1387, !DIExpression(), !1434)
    #dbg_value(i32 %mb_x.01331, !1396, !DIExpression(), !1654)
  %65 = load ptr, ptr %fdec, align 16, !dbg !1664
  call void @x264_prefetch_fenc(ptr noundef nonnull %h, ptr noundef %65, i32 noundef %mb_x.01331, i32 noundef %mb_y.addr.01332) #12, !dbg !1665
  call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef nonnull %h, i32 noundef %mb_x.01331, i32 noundef %mb_y.addr.01332) #12, !dbg !1666
  %66 = load i32, ptr %i_mb_xy, align 8, !dbg !1667
    #dbg_value(i32 %66, !1398, !DIExpression(), !1668)
  %67 = load ptr, ptr %mb_transform_size, align 8, !dbg !1669
  %idxprom = sext i32 %66 to i64, !dbg !1670
  %arrayidx27 = getelementptr inbounds i8, ptr %67, i64 %idxprom, !dbg !1670
  %68 = load i8, ptr %arrayidx27, align 1, !dbg !1670
    #dbg_value(i8 %68, !1401, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1668)
  %69 = load ptr, ptr %type, align 8, !dbg !1671
  %arrayidx30 = getelementptr inbounds i8, ptr %69, i64 %idxprom, !dbg !1671
  %70 = load i8, ptr %arrayidx30, align 1, !dbg !1671
  %switch.selectcmp = icmp ult i8 %70, 4, !dbg !1671
    #dbg_value(i1 %switch.selectcmp, !1402, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1668)
  %and = and i32 %mb_y.addr.01332, %0, !dbg !1672
  %idxprom56 = sext i32 %and to i64, !dbg !1673
  %arrayidx57 = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %idxprom56, !dbg !1673
  %71 = load ptr, ptr %arrayidx57, align 8, !dbg !1673
  %idxprom58 = zext nneg i32 %mb_x.01331 to i64, !dbg !1673
  %arrayidx59 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %71, i64 %idxprom58, !dbg !1673
    #dbg_value(ptr %arrayidx59, !1403, !DIExpression(), !1668)
  %72 = load ptr, ptr %fdec, align 16, !dbg !1674
  %plane = getelementptr inbounds i8, ptr %72, i64 152, !dbg !1675
  %73 = load ptr, ptr %plane, align 8, !dbg !1676
  %mul62 = mul i32 %mul, %mb_y.addr.01332, !dbg !1677
  %idx.ext = sext i32 %mul62 to i64, !dbg !1678
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 %idx.ext, !dbg !1678
  %mul63 = shl nsw i32 %mb_x.01331, 4, !dbg !1679
  %idx.ext64 = zext nneg i32 %mul63 to i64, !dbg !1680
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext64, !dbg !1680
    #dbg_value(ptr %add.ptr65, !1404, !DIExpression(), !1668)
  %arrayidx68 = getelementptr inbounds i8, ptr %72, i64 160, !dbg !1681
  %74 = load ptr, ptr %arrayidx68, align 8, !dbg !1681
  %mul70 = mul i32 %mul69, %mb_y.addr.01332, !dbg !1682
  %idx.ext71 = sext i32 %mul70 to i64, !dbg !1683
  %add.ptr72 = getelementptr inbounds i8, ptr %74, i64 %idx.ext71, !dbg !1683
  %mul73 = shl nsw i32 %mb_x.01331, 3, !dbg !1684
  %idx.ext74 = zext nneg i32 %mul73 to i64, !dbg !1685
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr72, i64 %idx.ext74, !dbg !1685
    #dbg_value(ptr %add.ptr75, !1405, !DIExpression(), !1668)
  %arrayidx78 = getelementptr inbounds i8, ptr %72, i64 168, !dbg !1686
  %75 = load ptr, ptr %arrayidx78, align 8, !dbg !1686
  %add.ptr82 = getelementptr inbounds i8, ptr %75, i64 %idx.ext71, !dbg !1687
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.ext74, !dbg !1688
    #dbg_value(ptr %add.ptr85, !1406, !DIExpression(), !1668)
  %and88 = and i32 %mb_y.addr.01332, 1
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond680 = or i1 %tobool86.not, %tobool89.not, !dbg !1689
  %pixv.0.idx = select i1 %or.cond680, i64 0, i64 %idx.neg96, !dbg !1689
  %pixv.0 = getelementptr inbounds i8, ptr %add.ptr85, i64 %pixv.0.idx, !dbg !1689
  %pixu.0 = getelementptr inbounds i8, ptr %add.ptr75, i64 %pixv.0.idx, !dbg !1689
  %pixy.0.idx = select i1 %or.cond680, i64 0, i64 %idx.neg, !dbg !1689
  %pixy.0 = getelementptr inbounds i8, ptr %add.ptr65, i64 %pixy.0.idx, !dbg !1689
    #dbg_value(ptr %pixy.0, !1404, !DIExpression(), !1668)
    #dbg_value(ptr %pixu.0, !1405, !DIExpression(), !1668)
    #dbg_value(ptr %pixv.0, !1406, !DIExpression(), !1668)
  %76 = load ptr, ptr %qp104, align 8, !dbg !1691
  %arrayidx106 = getelementptr inbounds i8, ptr %76, i64 %idxprom, !dbg !1692
  %77 = load i8, ptr %arrayidx106, align 1, !dbg !1692
  %conv107 = sext i8 %77 to i32, !dbg !1692
    #dbg_value(i32 %conv107, !1407, !DIExpression(), !1668)
  %78 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1693
  %idxprom108 = sext i8 %77 to i64, !dbg !1694
  %arrayidx109 = getelementptr inbounds i8, ptr %78, i64 %idxprom108, !dbg !1694
  %79 = load i8, ptr %arrayidx109, align 1, !dbg !1694
  %conv110 = zext i8 %79 to i32, !dbg !1694
    #dbg_value(i32 %conv110, !1408, !DIExpression(), !1668)
  %cmp116 = icmp eq i8 %70, 6, !dbg !1695
  %cmp119 = icmp sge i32 %sub15, %conv107, !dbg !1696
  %80 = or i1 %cmp116, %cmp119, !dbg !1696
    #dbg_value(i1 %80, !1409, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1668)
  %81 = load i32, ptr %i_neighbour, align 8, !dbg !1697
  %and124 = and i32 %81, 1, !dbg !1698
  %tobool125.not = icmp eq i32 %and124, 0, !dbg !1698
  br i1 %tobool125.not, label %if.end219, label %if.then126, !dbg !1699

if.then126:                                       ; preds = %for.body
  %82 = load i32, ptr %i_mb_left_xy, align 8, !dbg !1700
  %idxprom130 = sext i32 %82 to i64, !dbg !1701
  %arrayidx131 = getelementptr inbounds i8, ptr %76, i64 %idxprom130, !dbg !1701
  %83 = load i8, ptr %arrayidx131, align 1, !dbg !1701
  %conv132 = sext i8 %83 to i32, !dbg !1701
    #dbg_value(i32 %conv132, !1410, !DIExpression(), !1702)
  %add = add nsw i32 %conv107, 1, !dbg !1703
  %add133 = add nsw i32 %add, %conv132, !dbg !1704
  %shr = ashr i32 %add133, 1, !dbg !1705
    #dbg_value(i32 %shr, !1413, !DIExpression(), !1702)
  %idxprom139 = sext i8 %83 to i64, !dbg !1706
  %arrayidx140 = getelementptr inbounds i8, ptr %78, i64 %idxprom139, !dbg !1706
  %84 = load i8, ptr %arrayidx140, align 1, !dbg !1706
  %conv141 = zext i8 %84 to i32, !dbg !1706
  %add142 = add nuw nsw i32 %conv110, 1, !dbg !1707
  %add143 = add nuw nsw i32 %add142, %conv141, !dbg !1708
  %shr144 = lshr i32 %add143, 1, !dbg !1709
    #dbg_value(i32 %shr144, !1414, !DIExpression(), !1702)
  %arrayidx150 = getelementptr inbounds i8, ptr %69, i64 %idxprom130, !dbg !1710
  %85 = load i8, ptr %arrayidx150, align 1, !dbg !1710
  %switch.selectcmp685 = icmp ult i8 %85, 4, !dbg !1710
    #dbg_value(i1 %switch.selectcmp685, !1415, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1702)
  %or.cond = or i1 %switch.selectcmp, %switch.selectcmp685, !dbg !1711
  br i1 %or.cond, label %do.body, label %do.body202, !dbg !1711

do.body:                                          ; preds = %if.then126
  %h.val693 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1713
  %h.val694 = load i32, ptr %i_beta_offset, align 4, !dbg !1713
    #dbg_value(ptr undef, !1715, !DIExpression(), !1729)
    #dbg_value(ptr %pixy.0, !1720, !DIExpression(), !1729)
    #dbg_value(ptr null, !1721, !DIExpression(), !1729)
    #dbg_value(i32 %shl, !1722, !DIExpression(), !1729)
    #dbg_value(ptr undef, !1723, !DIExpression(), !1729)
    #dbg_value(i32 %shr, !1724, !DIExpression(), !1729)
    #dbg_value(i32 0, !1725, !DIExpression(), !1729)
    #dbg_value(ptr poison, !1726, !DIExpression(), !1729)
  %add.i719 = add nsw i32 %shr, 12, !dbg !1731
  %add1.i = add i32 %h.val693, %add.i719, !dbg !1731
  %idxprom.i = sext i32 %add1.i to i64, !dbg !1731
    #dbg_value(i8 poison, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1729)
  %add4.i = add i32 %h.val694, %add.i719, !dbg !1732
  %idxprom5.i = sext i32 %add4.i to i64, !dbg !1732
    #dbg_value(i8 poison, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1729)
  %86 = add nsw i64 %idxprom.i, -28, !dbg !1733
  %tobool.i = icmp ult i64 %86, 48, !dbg !1733
  %87 = add nsw i64 %idxprom5.i, -28
  %tobool8.i = icmp ult i64 %87, 48
  %or.cond.i = select i1 %tobool.i, i1 %tobool8.i, i1 false, !dbg !1735
  br i1 %or.cond.i, label %if.end.i720, label %deblock_edge_intra.exit, !dbg !1735

if.end.i720:                                      ; preds = %do.body
  %arrayidx6.i = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i, !dbg !1732
  %88 = load i8, ptr %arrayidx6.i, align 1, !dbg !1732
    #dbg_value(i8 %88, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1729)
  %conv7.i = zext i8 %88 to i32, !dbg !1732
    #dbg_value(i32 %conv7.i, !1728, !DIExpression(), !1729)
  %arrayidx.i = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i, !dbg !1731
  %89 = load i8, ptr %arrayidx.i, align 1, !dbg !1731
    #dbg_value(i8 %89, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1729)
  %conv.i = zext i8 %89 to i32, !dbg !1731
    #dbg_value(i32 %conv.i, !1727, !DIExpression(), !1729)
  %90 = load ptr, ptr %deblock_luma_intra, align 8, !dbg !1713
    #dbg_value(ptr %90, !1726, !DIExpression(), !1729)
  call void %90(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i, i32 noundef %conv7.i) #12, !dbg !1736
  %h.val691.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1737
  %h.val692.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1737
  br label %deblock_edge_intra.exit

deblock_edge_intra.exit:                          ; preds = %do.body, %if.end.i720
  %h.val692 = phi i32 [ %h.val694, %do.body ], [ %h.val692.pre, %if.end.i720 ], !dbg !1737
  %h.val691 = phi i32 [ %h.val693, %do.body ], [ %h.val691.pre, %if.end.i720 ], !dbg !1737
    #dbg_value(ptr undef, !1715, !DIExpression(), !1739)
    #dbg_value(ptr %pixu.0, !1720, !DIExpression(), !1739)
    #dbg_value(ptr %pixv.0, !1721, !DIExpression(), !1739)
    #dbg_value(i32 %shl19, !1722, !DIExpression(), !1739)
    #dbg_value(ptr undef, !1723, !DIExpression(), !1739)
    #dbg_value(i32 %shr144, !1724, !DIExpression(), !1739)
    #dbg_value(i32 1, !1725, !DIExpression(), !1739)
    #dbg_value(ptr poison, !1726, !DIExpression(), !1739)
  %add.i721 = add nuw nsw i32 %shr144, 12, !dbg !1741
  %add1.i722 = add i32 %h.val691, %add.i721, !dbg !1741
  %idxprom.i723 = sext i32 %add1.i722 to i64, !dbg !1741
    #dbg_value(i8 poison, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1739)
  %add4.i726 = add i32 %h.val692, %add.i721, !dbg !1742
  %idxprom5.i727 = sext i32 %add4.i726 to i64, !dbg !1742
    #dbg_value(i8 poison, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1739)
  %91 = add nsw i64 %idxprom.i723, -28, !dbg !1743
  %tobool.i730 = icmp ult i64 %91, 48, !dbg !1743
  %92 = add nsw i64 %idxprom5.i727, -28
  %tobool8.i731 = icmp ult i64 %92, 48
  %or.cond.i732 = select i1 %tobool.i730, i1 %tobool8.i731, i1 false, !dbg !1744
  br i1 %or.cond.i732, label %if.end.i733, label %if.end219, !dbg !1744

if.end.i733:                                      ; preds = %deblock_edge_intra.exit
  %arrayidx6.i728 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i727, !dbg !1742
  %93 = load i8, ptr %arrayidx6.i728, align 1, !dbg !1742
    #dbg_value(i8 %93, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1739)
  %conv7.i729 = zext i8 %93 to i32, !dbg !1742
    #dbg_value(i32 %conv7.i729, !1728, !DIExpression(), !1739)
  %arrayidx.i724 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i723, !dbg !1741
  %94 = load i8, ptr %arrayidx.i724, align 1, !dbg !1741
    #dbg_value(i8 %94, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1739)
  %conv.i725 = zext i8 %94 to i32, !dbg !1741
    #dbg_value(i32 %conv.i725, !1727, !DIExpression(), !1739)
  %95 = load ptr, ptr %deblock_chroma_intra, align 8, !dbg !1737
    #dbg_value(ptr %95, !1726, !DIExpression(), !1739)
  call void %95(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i725, i32 noundef %conv7.i729) #12, !dbg !1745
  call void %95(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i725, i32 noundef %conv7.i729) #12, !dbg !1746
  br label %if.end219, !dbg !1746

do.body202:                                       ; preds = %if.then126
  %96 = load ptr, ptr %loopf207, align 8, !dbg !1748
  %h.val717 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1748
  %h.val718 = load i32, ptr %i_beta_offset, align 4, !dbg !1748
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1433, ptr %tc.i, !DIExpression(), !1766)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1766)
    #dbg_value(ptr %pixy.0, !1756, !DIExpression(), !1766)
    #dbg_value(ptr null, !1757, !DIExpression(), !1766)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !1766)
    #dbg_value(ptr %arrayidx59, !1759, !DIExpression(), !1766)
    #dbg_value(i32 %shr, !1760, !DIExpression(), !1766)
    #dbg_value(i32 0, !1761, !DIExpression(), !1766)
    #dbg_value(ptr %96, !1762, !DIExpression(), !1766)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1766)
  %add.i735 = add nsw i32 %shr, 12, !dbg !1768
  %add1.i736 = add i32 %h.val717, %add.i735, !dbg !1769
  %idxprom.i737 = sext i32 %add1.i736 to i64, !dbg !1769
  %arrayidx.i738 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i737, !dbg !1769
  %97 = load i8, ptr %arrayidx.i738, align 1, !dbg !1769
    #dbg_value(i8 %97, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1766)
  %add4.i740 = add i32 %h.val718, %add.i735, !dbg !1770
  %idxprom5.i741 = sext i32 %add4.i740 to i64, !dbg !1770
  %arrayidx6.i742 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i741, !dbg !1770
  %98 = load i8, ptr %arrayidx6.i742, align 1, !dbg !1770
    #dbg_value(i8 %98, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1766)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i) #12, !dbg !1771
  %99 = load i32, ptr %arrayidx59, align 4, !dbg !1772
  %tobool.i744 = icmp ne i32 %99, 0, !dbg !1772
  %100 = add nsw i64 %idxprom.i737, -28
  %tobool8.i745 = icmp ult i64 %100, 48
  %or.cond.i746 = select i1 %tobool.i744, i1 %tobool8.i745, i1 false, !dbg !1774
  %101 = add nsw i64 %idxprom5.i741, -28
  %tobool10.i = icmp ult i64 %101, 48
  %or.cond58.i = select i1 %or.cond.i746, i1 %tobool10.i, i1 false, !dbg !1774
  br i1 %or.cond58.i, label %if.end.i747, label %deblock_edge.exit, !dbg !1774

if.end.i747:                                      ; preds = %do.body202
  %conv7.i743 = zext i8 %98 to i32, !dbg !1770
    #dbg_value(i32 %conv7.i743, !1765, !DIExpression(), !1766)
  %conv.i739 = zext i8 %97 to i32, !dbg !1769
    #dbg_value(i32 %conv.i739, !1764, !DIExpression(), !1766)
  %102 = lshr i32 %99, 24, !dbg !1774
  %idxprom45.i = zext nneg i32 %102 to i64, !dbg !1774
  %103 = lshr i32 %99, 16, !dbg !1774
  %104 = lshr i32 %99, 8, !dbg !1774
  %105 = and i32 %99, 255, !dbg !1775
  %idxprom15.i = zext nneg i32 %105 to i64, !dbg !1775
  %arrayidx16.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom15.i, !dbg !1775
  %106 = load i8, ptr %arrayidx16.i, align 1, !dbg !1775
  store i8 %106, ptr %tc.i, align 1, !dbg !1776, !DIAssignID !1777
    #dbg_assign(i8 %106, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1777, ptr %tc.i, !DIExpression(), !1766)
  %107 = and i32 %104, 255, !dbg !1778
  %idxprom25.i = zext nneg i32 %107 to i64, !dbg !1778
  %arrayidx26.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom25.i, !dbg !1778
  %108 = load i8, ptr %arrayidx26.i, align 1, !dbg !1778
  store i8 %108, ptr %arrayidx30.i, align 1, !dbg !1779, !DIAssignID !1780
    #dbg_assign(i8 %108, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1780, ptr %arrayidx30.i, !DIExpression(), !1766)
  %109 = and i32 %103, 255, !dbg !1781
  %idxprom35.i = zext nneg i32 %109 to i64, !dbg !1781
  %arrayidx36.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom35.i, !dbg !1781
  %110 = load i8, ptr %arrayidx36.i, align 1, !dbg !1781
  store i8 %110, ptr %arrayidx40.i, align 1, !dbg !1782, !DIAssignID !1783
    #dbg_assign(i8 %110, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1783, ptr %arrayidx40.i, !DIExpression(), !1766)
  %arrayidx46.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i737, i64 %idxprom45.i, !dbg !1784
  %111 = load i8, ptr %arrayidx46.i, align 1, !dbg !1784
  store i8 %111, ptr %arrayidx50.i, align 1, !dbg !1785, !DIAssignID !1786
    #dbg_assign(i8 %111, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1786, ptr %arrayidx50.i, !DIExpression(), !1766)
  call void %96(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i739, i32 noundef %conv7.i743, ptr noundef nonnull %tc.i) #12, !dbg !1787
  %h.val715.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1788
  %h.val716.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1788
  br label %deblock_edge.exit

deblock_edge.exit:                                ; preds = %do.body202, %if.end.i747
  %h.val716 = phi i32 [ %h.val718, %do.body202 ], [ %h.val716.pre, %if.end.i747 ], !dbg !1788
  %h.val715 = phi i32 [ %h.val717, %do.body202 ], [ %h.val715.pre, %if.end.i747 ], !dbg !1788
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i) #12, !dbg !1790
  %112 = load ptr, ptr %deblock_chroma, align 8, !dbg !1788
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1432, ptr %tc.i748, !DIExpression(), !1791)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1791)
    #dbg_value(ptr %pixu.0, !1756, !DIExpression(), !1791)
    #dbg_value(ptr %pixv.0, !1757, !DIExpression(), !1791)
    #dbg_value(i32 %shl19, !1758, !DIExpression(), !1791)
    #dbg_value(ptr %arrayidx59, !1759, !DIExpression(), !1791)
    #dbg_value(i32 %shr144, !1760, !DIExpression(), !1791)
    #dbg_value(i32 1, !1761, !DIExpression(), !1791)
    #dbg_value(ptr %112, !1762, !DIExpression(), !1791)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1791)
  %add.i749 = add nuw nsw i32 %shr144, 12, !dbg !1793
  %add1.i750 = add i32 %h.val715, %add.i749, !dbg !1794
  %idxprom.i751 = sext i32 %add1.i750 to i64, !dbg !1794
  %arrayidx.i752 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i751, !dbg !1794
  %113 = load i8, ptr %arrayidx.i752, align 1, !dbg !1794
    #dbg_value(i8 %113, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1791)
  %add4.i754 = add i32 %h.val716, %add.i749, !dbg !1795
  %idxprom5.i755 = sext i32 %add4.i754 to i64, !dbg !1795
  %arrayidx6.i756 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i755, !dbg !1795
  %114 = load i8, ptr %arrayidx6.i756, align 1, !dbg !1795
    #dbg_value(i8 %114, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1791)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i748) #12, !dbg !1796
  %115 = load i32, ptr %arrayidx59, align 4, !dbg !1797
  %tobool.i758 = icmp ne i32 %115, 0, !dbg !1797
  %116 = add nsw i64 %idxprom.i751, -28
  %tobool8.i759 = icmp ult i64 %116, 48
  %or.cond.i760 = select i1 %tobool.i758, i1 %tobool8.i759, i1 false, !dbg !1798
  %117 = add nsw i64 %idxprom5.i755, -28
  %tobool10.i761 = icmp ult i64 %117, 48
  %or.cond58.i762 = select i1 %or.cond.i760, i1 %tobool10.i761, i1 false, !dbg !1798
  br i1 %or.cond58.i762, label %if.end.i763, label %deblock_edge.exit775, !dbg !1798

if.end.i763:                                      ; preds = %deblock_edge.exit
  %conv7.i757 = zext i8 %114 to i32, !dbg !1795
    #dbg_value(i32 %conv7.i757, !1765, !DIExpression(), !1791)
  %conv.i753 = zext i8 %113 to i32, !dbg !1794
    #dbg_value(i32 %conv.i753, !1764, !DIExpression(), !1791)
  %118 = lshr i32 %115, 24, !dbg !1798
  %idxprom45.i764 = zext nneg i32 %118 to i64, !dbg !1798
  %119 = lshr i32 %115, 16, !dbg !1798
  %120 = lshr i32 %115, 8, !dbg !1798
  %121 = and i32 %115, 255, !dbg !1799
  %idxprom15.i765 = zext nneg i32 %121 to i64, !dbg !1799
  %arrayidx16.i766 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom15.i765, !dbg !1799
  %122 = load i8, ptr %arrayidx16.i766, align 1, !dbg !1799
  %conv19.i = add i8 %122, 1, !dbg !1799
  store i8 %conv19.i, ptr %tc.i748, align 1, !dbg !1800, !DIAssignID !1801
    #dbg_assign(i8 %conv19.i, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1801, ptr %tc.i748, !DIExpression(), !1791)
  %123 = and i32 %120, 255, !dbg !1802
  %idxprom25.i767 = zext nneg i32 %123 to i64, !dbg !1802
  %arrayidx26.i768 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom25.i767, !dbg !1802
  %124 = load i8, ptr %arrayidx26.i768, align 1, !dbg !1802
  %conv29.i = add i8 %124, 1, !dbg !1802
  store i8 %conv29.i, ptr %arrayidx30.i769, align 1, !dbg !1803, !DIAssignID !1804
    #dbg_assign(i8 %conv29.i, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1804, ptr %arrayidx30.i769, !DIExpression(), !1791)
  %125 = and i32 %119, 255, !dbg !1805
  %idxprom35.i770 = zext nneg i32 %125 to i64, !dbg !1805
  %arrayidx36.i771 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom35.i770, !dbg !1805
  %126 = load i8, ptr %arrayidx36.i771, align 1, !dbg !1805
  %conv39.i = add i8 %126, 1, !dbg !1805
  store i8 %conv39.i, ptr %arrayidx40.i772, align 1, !dbg !1806, !DIAssignID !1807
    #dbg_assign(i8 %conv39.i, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1807, ptr %arrayidx40.i772, !DIExpression(), !1791)
  %arrayidx46.i773 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i751, i64 %idxprom45.i764, !dbg !1808
  %127 = load i8, ptr %arrayidx46.i773, align 1, !dbg !1808
  %conv49.i = add i8 %127, 1, !dbg !1808
  store i8 %conv49.i, ptr %arrayidx50.i774, align 1, !dbg !1809, !DIAssignID !1810
    #dbg_assign(i8 %conv49.i, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1810, ptr %arrayidx50.i774, !DIExpression(), !1791)
  call void %112(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i753, i32 noundef %conv7.i757, ptr noundef nonnull %tc.i748) #12, !dbg !1811
  call void %112(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i753, i32 noundef %conv7.i757, ptr noundef nonnull %tc.i748) #12, !dbg !1812
  br label %deblock_edge.exit775, !dbg !1812

deblock_edge.exit775:                             ; preds = %deblock_edge.exit, %if.end.i763
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i748) #12, !dbg !1814
  br label %if.end219

if.end219:                                        ; preds = %if.end.i733, %deblock_edge_intra.exit, %deblock_edge.exit775, %for.body
  br i1 %80, label %if.end266, label %if.then221, !dbg !1815

if.then221:                                       ; preds = %if.end219
  %tobool222.not = icmp eq i8 %68, 0, !dbg !1816
  %.pre1339 = load ptr, ptr %loopf207, align 8, !dbg !1820
  %h.val711.pre1340 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1820
  %h.val712.pre1342 = load i32, ptr %i_beta_offset, align 4, !dbg !1820
  br i1 %tobool222.not, label %do.body224, label %if.then221.do.body235_crit_edge, !dbg !1822

if.then221.do.body235_crit_edge:                  ; preds = %if.then221
  %.pre1366 = add nsw i32 %conv107, 12, !dbg !1823
  br label %do.body235, !dbg !1822

do.body224:                                       ; preds = %if.then221
  %arrayidx227 = getelementptr inbounds i8, ptr %arrayidx59, i64 4, !dbg !1825
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1431, ptr %tc.i776, !DIExpression(), !1827)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1827)
    #dbg_value(ptr %pixy.0, !1756, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1827)
    #dbg_value(ptr null, !1757, !DIExpression(), !1827)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !1827)
    #dbg_value(ptr %arrayidx227, !1759, !DIExpression(), !1827)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !1827)
    #dbg_value(i32 0, !1761, !DIExpression(), !1827)
    #dbg_value(ptr %.pre1339, !1762, !DIExpression(), !1827)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1827)
  %add.i777 = add nsw i32 %conv107, 12, !dbg !1829
  %add1.i778 = add i32 %h.val711.pre1340, %add.i777, !dbg !1830
  %idxprom.i779 = sext i32 %add1.i778 to i64, !dbg !1830
  %arrayidx.i780 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i779, !dbg !1830
  %128 = load i8, ptr %arrayidx.i780, align 1, !dbg !1830
    #dbg_value(i8 %128, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1827)
  %add4.i782 = add i32 %h.val712.pre1342, %add.i777, !dbg !1831
  %idxprom5.i783 = sext i32 %add4.i782 to i64, !dbg !1831
  %arrayidx6.i784 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i783, !dbg !1831
  %129 = load i8, ptr %arrayidx6.i784, align 1, !dbg !1831
    #dbg_value(i8 %129, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1827)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i776) #12, !dbg !1832
  %130 = load i32, ptr %arrayidx227, align 4, !dbg !1833
  %tobool.i786 = icmp ne i32 %130, 0, !dbg !1833
  %131 = add nsw i64 %idxprom.i779, -28
  %tobool8.i787 = icmp ult i64 %131, 48
  %or.cond.i788 = select i1 %tobool.i786, i1 %tobool8.i787, i1 false, !dbg !1834
  %132 = add nsw i64 %idxprom5.i783, -28
  %tobool10.i789 = icmp ult i64 %132, 48
  %or.cond58.i790 = select i1 %or.cond.i788, i1 %tobool10.i789, i1 false, !dbg !1834
  br i1 %or.cond58.i790, label %if.end.i791, label %deblock_edge.exit807, !dbg !1834

if.end.i791:                                      ; preds = %do.body224
  %conv7.i785 = zext i8 %129 to i32, !dbg !1831
    #dbg_value(i32 %conv7.i785, !1765, !DIExpression(), !1827)
  %conv.i781 = zext i8 %128 to i32, !dbg !1830
    #dbg_value(i32 %conv.i781, !1764, !DIExpression(), !1827)
  %add.ptr225 = getelementptr inbounds i8, ptr %pixy.0, i64 4, !dbg !1825
    #dbg_value(ptr %add.ptr225, !1756, !DIExpression(), !1827)
  %133 = lshr i32 %130, 24, !dbg !1834
  %idxprom45.i792 = zext nneg i32 %133 to i64, !dbg !1834
  %134 = lshr i32 %130, 16, !dbg !1834
  %135 = lshr i32 %130, 8, !dbg !1834
  %136 = and i32 %130, 255, !dbg !1835
  %idxprom15.i793 = zext nneg i32 %136 to i64, !dbg !1835
  %arrayidx16.i794 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom15.i793, !dbg !1835
  %137 = load i8, ptr %arrayidx16.i794, align 1, !dbg !1835
  store i8 %137, ptr %tc.i776, align 1, !dbg !1836, !DIAssignID !1837
    #dbg_assign(i8 %137, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1837, ptr %tc.i776, !DIExpression(), !1827)
  %138 = and i32 %135, 255, !dbg !1838
  %idxprom25.i796 = zext nneg i32 %138 to i64, !dbg !1838
  %arrayidx26.i797 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom25.i796, !dbg !1838
  %139 = load i8, ptr %arrayidx26.i797, align 1, !dbg !1838
  store i8 %139, ptr %arrayidx30.i799, align 1, !dbg !1839, !DIAssignID !1840
    #dbg_assign(i8 %139, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1840, ptr %arrayidx30.i799, !DIExpression(), !1827)
  %140 = and i32 %134, 255, !dbg !1841
  %idxprom35.i800 = zext nneg i32 %140 to i64, !dbg !1841
  %arrayidx36.i801 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom35.i800, !dbg !1841
  %141 = load i8, ptr %arrayidx36.i801, align 1, !dbg !1841
  store i8 %141, ptr %arrayidx40.i803, align 1, !dbg !1842, !DIAssignID !1843
    #dbg_assign(i8 %141, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1843, ptr %arrayidx40.i803, !DIExpression(), !1827)
  %arrayidx46.i804 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom45.i792, !dbg !1844
  %142 = load i8, ptr %arrayidx46.i804, align 1, !dbg !1844
  store i8 %142, ptr %arrayidx50.i806, align 1, !dbg !1845, !DIAssignID !1846
    #dbg_assign(i8 %142, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1846, ptr %arrayidx50.i806, !DIExpression(), !1827)
  call void %.pre1339(ptr noundef nonnull %add.ptr225, i32 noundef %shl, i32 noundef %conv.i781, i32 noundef %conv7.i785, ptr noundef nonnull %tc.i776) #12, !dbg !1847
  %.pre.pre = load ptr, ptr %loopf207, align 8, !dbg !1820
  %h.val711.pre.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1820
  %h.val712.pre.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1820
  br label %deblock_edge.exit807

deblock_edge.exit807:                             ; preds = %do.body224, %if.end.i791
  %h.val712.pre = phi i32 [ %h.val712.pre1342, %do.body224 ], [ %h.val712.pre.pre, %if.end.i791 ], !dbg !1820
  %h.val711.pre = phi i32 [ %h.val711.pre1340, %do.body224 ], [ %h.val711.pre.pre, %if.end.i791 ], !dbg !1820
  %.pre = phi ptr [ %.pre1339, %do.body224 ], [ %.pre.pre, %if.end.i791 ], !dbg !1820
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i776) #12, !dbg !1848
  br label %do.body235, !dbg !1825

do.body235:                                       ; preds = %if.then221.do.body235_crit_edge, %deblock_edge.exit807
  %add.i809.pre-phi = phi i32 [ %.pre1366, %if.then221.do.body235_crit_edge ], [ %add.i777, %deblock_edge.exit807 ], !dbg !1823
  %h.val712 = phi i32 [ %h.val712.pre1342, %if.then221.do.body235_crit_edge ], [ %h.val712.pre, %deblock_edge.exit807 ], !dbg !1820
  %h.val711 = phi i32 [ %h.val711.pre1340, %if.then221.do.body235_crit_edge ], [ %h.val711.pre, %deblock_edge.exit807 ], !dbg !1820
  %143 = phi ptr [ %.pre1339, %if.then221.do.body235_crit_edge ], [ %.pre, %deblock_edge.exit807 ], !dbg !1820
  %arrayidx238 = getelementptr inbounds i8, ptr %arrayidx59, i64 8, !dbg !1820
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1430, ptr %tc.i808, !DIExpression(), !1849)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1849)
    #dbg_value(ptr %pixy.0, !1756, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1849)
    #dbg_value(ptr null, !1757, !DIExpression(), !1849)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !1849)
    #dbg_value(ptr %arrayidx238, !1759, !DIExpression(), !1849)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !1849)
    #dbg_value(i32 0, !1761, !DIExpression(), !1849)
    #dbg_value(ptr %143, !1762, !DIExpression(), !1849)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1849)
  %add1.i810 = add i32 %h.val711, %add.i809.pre-phi, !dbg !1850
  %idxprom.i811 = sext i32 %add1.i810 to i64, !dbg !1850
  %arrayidx.i812 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i811, !dbg !1850
  %144 = load i8, ptr %arrayidx.i812, align 1, !dbg !1850
    #dbg_value(i8 %144, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1849)
  %add4.i814 = add i32 %h.val712, %add.i809.pre-phi, !dbg !1851
  %idxprom5.i815 = sext i32 %add4.i814 to i64, !dbg !1851
  %arrayidx6.i816 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i815, !dbg !1851
  %145 = load i8, ptr %arrayidx6.i816, align 1, !dbg !1851
    #dbg_value(i8 %145, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1849)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i808) #12, !dbg !1852
  %146 = load i32, ptr %arrayidx238, align 4, !dbg !1853
  %tobool.i818 = icmp ne i32 %146, 0, !dbg !1853
  %147 = add nsw i64 %idxprom.i811, -28
  %tobool8.i819 = icmp ult i64 %147, 48
  %or.cond.i820 = select i1 %tobool.i818, i1 %tobool8.i819, i1 false, !dbg !1854
  %148 = add nsw i64 %idxprom5.i815, -28
  %tobool10.i821 = icmp ult i64 %148, 48
  %or.cond58.i822 = select i1 %or.cond.i820, i1 %tobool10.i821, i1 false, !dbg !1854
  br i1 %or.cond58.i822, label %if.end.i823, label %deblock_edge.exit839, !dbg !1854

if.end.i823:                                      ; preds = %do.body235
  %conv7.i817 = zext i8 %145 to i32, !dbg !1851
    #dbg_value(i32 %conv7.i817, !1765, !DIExpression(), !1849)
  %conv.i813 = zext i8 %144 to i32, !dbg !1850
    #dbg_value(i32 %conv.i813, !1764, !DIExpression(), !1849)
  %add.ptr236 = getelementptr inbounds i8, ptr %pixy.0, i64 8, !dbg !1820
    #dbg_value(ptr %add.ptr236, !1756, !DIExpression(), !1849)
  %149 = lshr i32 %146, 24, !dbg !1854
  %idxprom45.i824 = zext nneg i32 %149 to i64, !dbg !1854
  %150 = lshr i32 %146, 16, !dbg !1854
  %151 = lshr i32 %146, 8, !dbg !1854
  %152 = and i32 %146, 255, !dbg !1855
  %idxprom15.i825 = zext nneg i32 %152 to i64, !dbg !1855
  %arrayidx16.i826 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom15.i825, !dbg !1855
  %153 = load i8, ptr %arrayidx16.i826, align 1, !dbg !1855
  store i8 %153, ptr %tc.i808, align 1, !dbg !1856, !DIAssignID !1857
    #dbg_assign(i8 %153, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1857, ptr %tc.i808, !DIExpression(), !1849)
  %154 = and i32 %151, 255, !dbg !1858
  %idxprom25.i828 = zext nneg i32 %154 to i64, !dbg !1858
  %arrayidx26.i829 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom25.i828, !dbg !1858
  %155 = load i8, ptr %arrayidx26.i829, align 1, !dbg !1858
  store i8 %155, ptr %arrayidx30.i831, align 1, !dbg !1859, !DIAssignID !1860
    #dbg_assign(i8 %155, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1860, ptr %arrayidx30.i831, !DIExpression(), !1849)
  %156 = and i32 %150, 255, !dbg !1861
  %idxprom35.i832 = zext nneg i32 %156 to i64, !dbg !1861
  %arrayidx36.i833 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom35.i832, !dbg !1861
  %157 = load i8, ptr %arrayidx36.i833, align 1, !dbg !1861
  store i8 %157, ptr %arrayidx40.i835, align 1, !dbg !1862, !DIAssignID !1863
    #dbg_assign(i8 %157, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1863, ptr %arrayidx40.i835, !DIExpression(), !1849)
  %arrayidx46.i836 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i811, i64 %idxprom45.i824, !dbg !1864
  %158 = load i8, ptr %arrayidx46.i836, align 1, !dbg !1864
  store i8 %158, ptr %arrayidx50.i838, align 1, !dbg !1865, !DIAssignID !1866
    #dbg_assign(i8 %158, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1866, ptr %arrayidx50.i838, !DIExpression(), !1849)
  call void %143(ptr noundef nonnull %add.ptr236, i32 noundef %shl, i32 noundef %conv.i813, i32 noundef %conv7.i817, ptr noundef nonnull %tc.i808) #12, !dbg !1867
  %h.val709.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1868
  %h.val710.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1868
  br label %deblock_edge.exit839

deblock_edge.exit839:                             ; preds = %do.body235, %if.end.i823
  %h.val710 = phi i32 [ %h.val712, %do.body235 ], [ %h.val710.pre, %if.end.i823 ], !dbg !1868
  %h.val709 = phi i32 [ %h.val711, %do.body235 ], [ %h.val709.pre, %if.end.i823 ], !dbg !1868
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i808) #12, !dbg !1870
  %159 = load ptr, ptr %deblock_chroma, align 8, !dbg !1868
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1429, ptr %tc.i840, !DIExpression(), !1871)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1871)
    #dbg_value(ptr %pixu.0, !1756, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1871)
    #dbg_value(ptr %pixv.0, !1757, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1871)
    #dbg_value(i32 %shl19, !1758, !DIExpression(), !1871)
    #dbg_value(ptr %arrayidx238, !1759, !DIExpression(), !1871)
    #dbg_value(i32 %conv110, !1760, !DIExpression(), !1871)
    #dbg_value(i32 1, !1761, !DIExpression(), !1871)
    #dbg_value(ptr %159, !1762, !DIExpression(), !1871)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1871)
  %add.i841 = add nuw nsw i32 %conv110, 12, !dbg !1873
  %add1.i842 = add i32 %h.val709, %add.i841, !dbg !1874
  %idxprom.i843 = sext i32 %add1.i842 to i64, !dbg !1874
  %arrayidx.i844 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i843, !dbg !1874
  %160 = load i8, ptr %arrayidx.i844, align 1, !dbg !1874
    #dbg_value(i8 %160, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1871)
  %add4.i846 = add i32 %h.val710, %add.i841, !dbg !1875
  %idxprom5.i847 = sext i32 %add4.i846 to i64, !dbg !1875
  %arrayidx6.i848 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i847, !dbg !1875
  %161 = load i8, ptr %arrayidx6.i848, align 1, !dbg !1875
    #dbg_value(i8 %161, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1871)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i840) #12, !dbg !1876
  %162 = load i32, ptr %arrayidx238, align 4, !dbg !1877
  %tobool.i850 = icmp ne i32 %162, 0, !dbg !1877
  %163 = add nsw i64 %idxprom.i843, -28
  %tobool8.i851 = icmp ult i64 %163, 48
  %or.cond.i852 = select i1 %tobool.i850, i1 %tobool8.i851, i1 false, !dbg !1878
  %164 = add nsw i64 %idxprom5.i847, -28
  %tobool10.i853 = icmp ult i64 %164, 48
  %or.cond58.i854 = select i1 %or.cond.i852, i1 %tobool10.i853, i1 false, !dbg !1878
  br i1 %or.cond58.i854, label %if.end.i855, label %deblock_edge.exit871, !dbg !1878

if.end.i855:                                      ; preds = %deblock_edge.exit839
  %conv7.i849 = zext i8 %161 to i32, !dbg !1875
    #dbg_value(i32 %conv7.i849, !1765, !DIExpression(), !1871)
  %conv.i845 = zext i8 %160 to i32, !dbg !1874
    #dbg_value(i32 %conv.i845, !1764, !DIExpression(), !1871)
  %add.ptr244 = getelementptr inbounds i8, ptr %pixv.0, i64 4, !dbg !1868
    #dbg_value(ptr %add.ptr244, !1757, !DIExpression(), !1871)
  %add.ptr243 = getelementptr inbounds i8, ptr %pixu.0, i64 4, !dbg !1868
    #dbg_value(ptr %add.ptr243, !1756, !DIExpression(), !1871)
  %165 = lshr i32 %162, 24, !dbg !1878
  %idxprom45.i856 = zext nneg i32 %165 to i64, !dbg !1878
  %166 = lshr i32 %162, 16, !dbg !1878
  %167 = lshr i32 %162, 8, !dbg !1878
  %168 = and i32 %162, 255, !dbg !1879
  %idxprom15.i857 = zext nneg i32 %168 to i64, !dbg !1879
  %arrayidx16.i858 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom15.i857, !dbg !1879
  %169 = load i8, ptr %arrayidx16.i858, align 1, !dbg !1879
  %conv19.i859 = add i8 %169, 1, !dbg !1879
  store i8 %conv19.i859, ptr %tc.i840, align 1, !dbg !1880, !DIAssignID !1881
    #dbg_assign(i8 %conv19.i859, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1881, ptr %tc.i840, !DIExpression(), !1871)
  %170 = and i32 %167, 255, !dbg !1882
  %idxprom25.i860 = zext nneg i32 %170 to i64, !dbg !1882
  %arrayidx26.i861 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom25.i860, !dbg !1882
  %171 = load i8, ptr %arrayidx26.i861, align 1, !dbg !1882
  %conv29.i862 = add i8 %171, 1, !dbg !1882
  store i8 %conv29.i862, ptr %arrayidx30.i863, align 1, !dbg !1883, !DIAssignID !1884
    #dbg_assign(i8 %conv29.i862, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1884, ptr %arrayidx30.i863, !DIExpression(), !1871)
  %172 = and i32 %166, 255, !dbg !1885
  %idxprom35.i864 = zext nneg i32 %172 to i64, !dbg !1885
  %arrayidx36.i865 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom35.i864, !dbg !1885
  %173 = load i8, ptr %arrayidx36.i865, align 1, !dbg !1885
  %conv39.i866 = add i8 %173, 1, !dbg !1885
  store i8 %conv39.i866, ptr %arrayidx40.i867, align 1, !dbg !1886, !DIAssignID !1887
    #dbg_assign(i8 %conv39.i866, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1887, ptr %arrayidx40.i867, !DIExpression(), !1871)
  %arrayidx46.i868 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i843, i64 %idxprom45.i856, !dbg !1888
  %174 = load i8, ptr %arrayidx46.i868, align 1, !dbg !1888
  %conv49.i869 = add i8 %174, 1, !dbg !1888
  store i8 %conv49.i869, ptr %arrayidx50.i870, align 1, !dbg !1889, !DIAssignID !1890
    #dbg_assign(i8 %conv49.i869, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1890, ptr %arrayidx50.i870, !DIExpression(), !1871)
  call void %159(ptr noundef nonnull %add.ptr243, i32 noundef %shl19, i32 noundef %conv.i845, i32 noundef %conv7.i849, ptr noundef nonnull %tc.i840) #12, !dbg !1891
  call void %159(ptr noundef nonnull %add.ptr244, i32 noundef %shl19, i32 noundef %conv.i845, i32 noundef %conv7.i849, ptr noundef nonnull %tc.i840) #12, !dbg !1892
  br label %deblock_edge.exit871, !dbg !1892

deblock_edge.exit871:                             ; preds = %deblock_edge.exit839, %if.end.i855
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i840) #12, !dbg !1893
  br i1 %tobool222.not, label %do.body255, label %if.end266, !dbg !1894

do.body255:                                       ; preds = %deblock_edge.exit871
  %arrayidx258 = getelementptr inbounds i8, ptr %arrayidx59, i64 12, !dbg !1895
  %175 = load ptr, ptr %loopf207, align 8, !dbg !1895
  %h.val707 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1895
  %h.val708 = load i32, ptr %i_beta_offset, align 4, !dbg !1895
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1428, ptr %tc.i872, !DIExpression(), !1898)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1898)
    #dbg_value(ptr %pixy.0, !1756, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !1898)
    #dbg_value(ptr null, !1757, !DIExpression(), !1898)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !1898)
    #dbg_value(ptr %arrayidx258, !1759, !DIExpression(), !1898)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !1898)
    #dbg_value(i32 0, !1761, !DIExpression(), !1898)
    #dbg_value(ptr %175, !1762, !DIExpression(), !1898)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1898)
  %add1.i874 = add i32 %h.val707, %add.i809.pre-phi, !dbg !1900
  %idxprom.i875 = sext i32 %add1.i874 to i64, !dbg !1900
  %arrayidx.i876 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i875, !dbg !1900
  %176 = load i8, ptr %arrayidx.i876, align 1, !dbg !1900
    #dbg_value(i8 %176, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1898)
  %add4.i878 = add i32 %h.val708, %add.i809.pre-phi, !dbg !1901
  %idxprom5.i879 = sext i32 %add4.i878 to i64, !dbg !1901
  %arrayidx6.i880 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i879, !dbg !1901
  %177 = load i8, ptr %arrayidx6.i880, align 1, !dbg !1901
    #dbg_value(i8 %177, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1898)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i872) #12, !dbg !1902
  %178 = load i32, ptr %arrayidx258, align 4, !dbg !1903
  %tobool.i882 = icmp ne i32 %178, 0, !dbg !1903
  %179 = add nsw i64 %idxprom.i875, -28
  %tobool8.i883 = icmp ult i64 %179, 48
  %or.cond.i884 = select i1 %tobool.i882, i1 %tobool8.i883, i1 false, !dbg !1904
  %180 = add nsw i64 %idxprom5.i879, -28
  %tobool10.i885 = icmp ult i64 %180, 48
  %or.cond58.i886 = select i1 %or.cond.i884, i1 %tobool10.i885, i1 false, !dbg !1904
  br i1 %or.cond58.i886, label %if.end.i887, label %deblock_edge.exit903, !dbg !1904

if.end.i887:                                      ; preds = %do.body255
  %conv7.i881 = zext i8 %177 to i32, !dbg !1901
    #dbg_value(i32 %conv7.i881, !1765, !DIExpression(), !1898)
  %conv.i877 = zext i8 %176 to i32, !dbg !1900
    #dbg_value(i32 %conv.i877, !1764, !DIExpression(), !1898)
  %add.ptr256 = getelementptr inbounds i8, ptr %pixy.0, i64 12, !dbg !1895
    #dbg_value(ptr %add.ptr256, !1756, !DIExpression(), !1898)
  %181 = lshr i32 %178, 24, !dbg !1904
  %idxprom45.i888 = zext nneg i32 %181 to i64, !dbg !1904
  %182 = lshr i32 %178, 16, !dbg !1904
  %183 = lshr i32 %178, 8, !dbg !1904
  %184 = and i32 %178, 255, !dbg !1905
  %idxprom15.i889 = zext nneg i32 %184 to i64, !dbg !1905
  %arrayidx16.i890 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom15.i889, !dbg !1905
  %185 = load i8, ptr %arrayidx16.i890, align 1, !dbg !1905
  store i8 %185, ptr %tc.i872, align 1, !dbg !1906, !DIAssignID !1907
    #dbg_assign(i8 %185, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1907, ptr %tc.i872, !DIExpression(), !1898)
  %186 = and i32 %183, 255, !dbg !1908
  %idxprom25.i892 = zext nneg i32 %186 to i64, !dbg !1908
  %arrayidx26.i893 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom25.i892, !dbg !1908
  %187 = load i8, ptr %arrayidx26.i893, align 1, !dbg !1908
  store i8 %187, ptr %arrayidx30.i895, align 1, !dbg !1909, !DIAssignID !1910
    #dbg_assign(i8 %187, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1910, ptr %arrayidx30.i895, !DIExpression(), !1898)
  %188 = and i32 %182, 255, !dbg !1911
  %idxprom35.i896 = zext nneg i32 %188 to i64, !dbg !1911
  %arrayidx36.i897 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom35.i896, !dbg !1911
  %189 = load i8, ptr %arrayidx36.i897, align 1, !dbg !1911
  store i8 %189, ptr %arrayidx40.i899, align 1, !dbg !1912, !DIAssignID !1913
    #dbg_assign(i8 %189, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1913, ptr %arrayidx40.i899, !DIExpression(), !1898)
  %arrayidx46.i900 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i875, i64 %idxprom45.i888, !dbg !1914
  %190 = load i8, ptr %arrayidx46.i900, align 1, !dbg !1914
  store i8 %190, ptr %arrayidx50.i902, align 1, !dbg !1915, !DIAssignID !1916
    #dbg_assign(i8 %190, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1916, ptr %arrayidx50.i902, !DIExpression(), !1898)
  call void %175(ptr noundef nonnull %add.ptr256, i32 noundef %shl, i32 noundef %conv.i877, i32 noundef %conv7.i881, ptr noundef nonnull %tc.i872) #12, !dbg !1917
  br label %deblock_edge.exit903

deblock_edge.exit903:                             ; preds = %do.body255, %if.end.i887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i872) #12, !dbg !1918
  br label %if.end266, !dbg !1895

if.end266:                                        ; preds = %deblock_edge.exit871, %deblock_edge.exit903, %if.end219
  %191 = load i32, ptr %i_neighbour, align 8, !dbg !1919
  %and269 = and i32 %191, 2, !dbg !1920
  %tobool270.not = icmp eq i32 %and269, 0, !dbg !1920
  br i1 %tobool270.not, label %if.end395, label %if.then271, !dbg !1921

if.then271:                                       ; preds = %if.end266
  %192 = load ptr, ptr %qp104, align 8, !dbg !1922
  %193 = load i32, ptr %i_mb_top_xy, align 4, !dbg !1923
  %idxprom275 = sext i32 %193 to i64, !dbg !1924
  %arrayidx276 = getelementptr inbounds i8, ptr %192, i64 %idxprom275, !dbg !1924
  %194 = load i8, ptr %arrayidx276, align 1, !dbg !1924
  %conv277 = sext i8 %194 to i32, !dbg !1924
    #dbg_value(i32 %conv277, !1416, !DIExpression(), !1925)
  %add278 = add nsw i32 %conv107, 1, !dbg !1926
  %add279 = add nsw i32 %add278, %conv277, !dbg !1927
  %shr280 = ashr i32 %add279, 1, !dbg !1928
    #dbg_value(i32 %shr280, !1419, !DIExpression(), !1925)
  %195 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1929
  %arrayidx283 = getelementptr inbounds i8, ptr %195, i64 %idxprom108, !dbg !1930
  %196 = load i8, ptr %arrayidx283, align 1, !dbg !1930
  %conv284 = zext i8 %196 to i32, !dbg !1930
  %idxprom286 = sext i8 %194 to i64, !dbg !1931
  %arrayidx287 = getelementptr inbounds i8, ptr %195, i64 %idxprom286, !dbg !1931
  %197 = load i8, ptr %arrayidx287, align 1, !dbg !1931
  %conv288 = zext i8 %197 to i32, !dbg !1931
  %add289 = add nuw nsw i32 %conv284, 1, !dbg !1932
  %add290 = add nuw nsw i32 %add289, %conv288, !dbg !1933
  %shr291 = lshr i32 %add290, 1, !dbg !1934
    #dbg_value(i32 %shr291, !1420, !DIExpression(), !1925)
  %198 = load ptr, ptr %type, align 8, !dbg !1935
  %arrayidx297 = getelementptr inbounds i8, ptr %198, i64 %idxprom275, !dbg !1935
  %199 = load i8, ptr %arrayidx297, align 1, !dbg !1935
  %switch.selectcmp687 = icmp ult i8 %199, 4, !dbg !1935
    #dbg_value(i1 %switch.selectcmp687, !1421, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1925)
  %or.cond464 = or i1 %switch.selectcmp, %switch.selectcmp687
  %or.cond683 = and i1 %tobool86.not, %or.cond464, !dbg !1936
  br i1 %or.cond683, label %do.body339, label %if.else363, !dbg !1936

do.body339:                                       ; preds = %if.then271
  %h.val689 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1938
  %h.val690 = load i32, ptr %i_beta_offset, align 4, !dbg !1938
    #dbg_value(ptr undef, !1715, !DIExpression(), !1940)
    #dbg_value(ptr %pixy.0, !1720, !DIExpression(), !1940)
    #dbg_value(ptr null, !1721, !DIExpression(), !1940)
    #dbg_value(i32 %shl, !1722, !DIExpression(), !1940)
    #dbg_value(ptr undef, !1723, !DIExpression(), !1940)
    #dbg_value(i32 %shr280, !1724, !DIExpression(), !1940)
    #dbg_value(i32 0, !1725, !DIExpression(), !1940)
    #dbg_value(ptr poison, !1726, !DIExpression(), !1940)
  %add.i904 = add nsw i32 %shr280, 12, !dbg !1942
  %add1.i905 = add i32 %h.val689, %add.i904, !dbg !1942
  %idxprom.i906 = sext i32 %add1.i905 to i64, !dbg !1942
    #dbg_value(i8 poison, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1940)
  %add4.i909 = add i32 %h.val690, %add.i904, !dbg !1943
  %idxprom5.i910 = sext i32 %add4.i909 to i64, !dbg !1943
    #dbg_value(i8 poison, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1940)
  %200 = add nsw i64 %idxprom.i906, -28, !dbg !1944
  %tobool.i913 = icmp ult i64 %200, 48, !dbg !1944
  %201 = add nsw i64 %idxprom5.i910, -28
  %tobool8.i914 = icmp ult i64 %201, 48
  %or.cond.i915 = select i1 %tobool.i913, i1 %tobool8.i914, i1 false, !dbg !1945
  br i1 %or.cond.i915, label %if.end.i916, label %deblock_edge_intra.exit917, !dbg !1945

if.end.i916:                                      ; preds = %do.body339
  %arrayidx6.i911 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i910, !dbg !1943
  %202 = load i8, ptr %arrayidx6.i911, align 1, !dbg !1943
    #dbg_value(i8 %202, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1940)
  %conv7.i912 = zext i8 %202 to i32, !dbg !1943
    #dbg_value(i32 %conv7.i912, !1728, !DIExpression(), !1940)
  %arrayidx.i907 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i906, !dbg !1942
  %203 = load i8, ptr %arrayidx.i907, align 1, !dbg !1942
    #dbg_value(i8 %203, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1940)
  %conv.i908 = zext i8 %203 to i32, !dbg !1942
    #dbg_value(i32 %conv.i908, !1727, !DIExpression(), !1940)
  %204 = load ptr, ptr %arrayidx348, align 8, !dbg !1938
    #dbg_value(ptr %204, !1726, !DIExpression(), !1940)
  call void %204(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i908, i32 noundef %conv7.i912) #12, !dbg !1946
  %h.val.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1947
  %h.val688.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1947
  br label %deblock_edge_intra.exit917

deblock_edge_intra.exit917:                       ; preds = %do.body339, %if.end.i916
  %h.val688 = phi i32 [ %h.val690, %do.body339 ], [ %h.val688.pre, %if.end.i916 ], !dbg !1947
  %h.val = phi i32 [ %h.val689, %do.body339 ], [ %h.val.pre, %if.end.i916 ], !dbg !1947
    #dbg_value(ptr undef, !1715, !DIExpression(), !1949)
    #dbg_value(ptr %pixu.0, !1720, !DIExpression(), !1949)
    #dbg_value(ptr %pixv.0, !1721, !DIExpression(), !1949)
    #dbg_value(i32 %shl19, !1722, !DIExpression(), !1949)
    #dbg_value(ptr undef, !1723, !DIExpression(), !1949)
    #dbg_value(i32 %shr291, !1724, !DIExpression(), !1949)
    #dbg_value(i32 1, !1725, !DIExpression(), !1949)
    #dbg_value(ptr poison, !1726, !DIExpression(), !1949)
  %add.i918 = add nuw nsw i32 %shr291, 12, !dbg !1951
  %add1.i919 = add i32 %h.val, %add.i918, !dbg !1951
  %idxprom.i920 = sext i32 %add1.i919 to i64, !dbg !1951
    #dbg_value(i8 poison, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1949)
  %add4.i923 = add i32 %h.val688, %add.i918, !dbg !1952
  %idxprom5.i924 = sext i32 %add4.i923 to i64, !dbg !1952
    #dbg_value(i8 poison, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1949)
  %205 = add nsw i64 %idxprom.i920, -28, !dbg !1953
  %tobool.i927 = icmp ult i64 %205, 48, !dbg !1953
  %206 = add nsw i64 %idxprom5.i924, -28
  %tobool8.i928 = icmp ult i64 %206, 48
  %or.cond.i929 = select i1 %tobool.i927, i1 %tobool8.i928, i1 false, !dbg !1954
  br i1 %or.cond.i929, label %if.end.i930, label %if.end395, !dbg !1954

if.end.i930:                                      ; preds = %deblock_edge_intra.exit917
  %arrayidx6.i925 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i924, !dbg !1952
  %207 = load i8, ptr %arrayidx6.i925, align 1, !dbg !1952
    #dbg_value(i8 %207, !1728, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1949)
  %conv7.i926 = zext i8 %207 to i32, !dbg !1952
    #dbg_value(i32 %conv7.i926, !1728, !DIExpression(), !1949)
  %arrayidx.i921 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i920, !dbg !1951
  %208 = load i8, ptr %arrayidx.i921, align 1, !dbg !1951
    #dbg_value(i8 %208, !1727, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1949)
  %conv.i922 = zext i8 %208 to i32, !dbg !1951
    #dbg_value(i32 %conv.i922, !1727, !DIExpression(), !1949)
  %209 = load ptr, ptr %arrayidx360, align 8, !dbg !1947
    #dbg_value(ptr %209, !1726, !DIExpression(), !1949)
  call void %209(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i922, i32 noundef %conv7.i926) #12, !dbg !1955
  call void %209(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i922, i32 noundef %conv7.i926) #12, !dbg !1956
  br label %if.end395, !dbg !1956

if.else363:                                       ; preds = %if.then271
  %arrayidx366 = getelementptr inbounds i8, ptr %arrayidx59, i64 16
  br i1 %switch.selectcmp687, label %if.then365, label %if.else363.do.body370_crit_edge, !dbg !1957

if.else363.do.body370_crit_edge:                  ; preds = %if.else363
  %.pre1346 = load i32, ptr %arrayidx366, align 4, !dbg !1959
  br label %do.body370, !dbg !1957

if.then365:                                       ; preds = %if.else363
  store i32 50529027, ptr %arrayidx366, align 1, !dbg !1962
  br label %do.body370, !dbg !1962

do.body370:                                       ; preds = %if.else363.do.body370_crit_edge, %if.then365
  %210 = phi i32 [ %.pre1346, %if.else363.do.body370_crit_edge ], [ 50529027, %if.then365 ], !dbg !1959
  %arrayidx374 = getelementptr inbounds i8, ptr %arrayidx59, i64 16, !dbg !1964
  %211 = load ptr, ptr %arrayidx379, align 8, !dbg !1964
  %h.val705 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1964
  %h.val706 = load i32, ptr %i_beta_offset, align 4, !dbg !1964
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1427, ptr %tc.i932, !DIExpression(), !1965)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1965)
    #dbg_value(ptr %pixy.0, !1756, !DIExpression(), !1965)
    #dbg_value(ptr null, !1757, !DIExpression(), !1965)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !1965)
    #dbg_value(ptr %arrayidx374, !1759, !DIExpression(), !1965)
    #dbg_value(i32 %shr280, !1760, !DIExpression(), !1965)
    #dbg_value(i32 0, !1761, !DIExpression(), !1965)
    #dbg_value(ptr %211, !1762, !DIExpression(), !1965)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1965)
  %add.i933 = add nsw i32 %shr280, 12, !dbg !1966
  %add1.i934 = add i32 %h.val705, %add.i933, !dbg !1967
  %idxprom.i935 = sext i32 %add1.i934 to i64, !dbg !1967
  %arrayidx.i936 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i935, !dbg !1967
  %212 = load i8, ptr %arrayidx.i936, align 1, !dbg !1967
    #dbg_value(i8 %212, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1965)
  %add4.i938 = add i32 %h.val706, %add.i933, !dbg !1968
  %idxprom5.i939 = sext i32 %add4.i938 to i64, !dbg !1968
  %arrayidx6.i940 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i939, !dbg !1968
  %213 = load i8, ptr %arrayidx6.i940, align 1, !dbg !1968
    #dbg_value(i8 %213, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1965)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i932) #12, !dbg !1969
  %tobool.i942 = icmp ne i32 %210, 0, !dbg !1959
  %214 = add nsw i64 %idxprom.i935, -28
  %tobool8.i943 = icmp ult i64 %214, 48
  %or.cond.i944 = select i1 %tobool.i942, i1 %tobool8.i943, i1 false, !dbg !1970
  %215 = add nsw i64 %idxprom5.i939, -28
  %tobool10.i945 = icmp ult i64 %215, 48
  %or.cond58.i946 = select i1 %or.cond.i944, i1 %tobool10.i945, i1 false, !dbg !1970
  br i1 %or.cond58.i946, label %if.end.i947, label %deblock_edge.exit963, !dbg !1970

if.end.i947:                                      ; preds = %do.body370
  %conv7.i941 = zext i8 %213 to i32, !dbg !1968
    #dbg_value(i32 %conv7.i941, !1765, !DIExpression(), !1965)
  %conv.i937 = zext i8 %212 to i32, !dbg !1967
    #dbg_value(i32 %conv.i937, !1764, !DIExpression(), !1965)
  %216 = lshr i32 %210, 24, !dbg !1970
  %idxprom45.i948 = zext nneg i32 %216 to i64, !dbg !1970
  %217 = lshr i32 %210, 16, !dbg !1970
  %218 = lshr i32 %210, 8, !dbg !1970
  %219 = and i32 %210, 255, !dbg !1971
  %idxprom15.i949 = zext nneg i32 %219 to i64, !dbg !1971
  %arrayidx16.i950 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom15.i949, !dbg !1971
  %220 = load i8, ptr %arrayidx16.i950, align 1, !dbg !1971
  store i8 %220, ptr %tc.i932, align 1, !dbg !1972, !DIAssignID !1973
    #dbg_assign(i8 %220, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1973, ptr %tc.i932, !DIExpression(), !1965)
  %221 = and i32 %218, 255, !dbg !1974
  %idxprom25.i952 = zext nneg i32 %221 to i64, !dbg !1974
  %arrayidx26.i953 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom25.i952, !dbg !1974
  %222 = load i8, ptr %arrayidx26.i953, align 1, !dbg !1974
  store i8 %222, ptr %arrayidx30.i955, align 1, !dbg !1975, !DIAssignID !1976
    #dbg_assign(i8 %222, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1976, ptr %arrayidx30.i955, !DIExpression(), !1965)
  %223 = and i32 %217, 255, !dbg !1977
  %idxprom35.i956 = zext nneg i32 %223 to i64, !dbg !1977
  %arrayidx36.i957 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom35.i956, !dbg !1977
  %224 = load i8, ptr %arrayidx36.i957, align 1, !dbg !1977
  store i8 %224, ptr %arrayidx40.i959, align 1, !dbg !1978, !DIAssignID !1979
    #dbg_assign(i8 %224, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1979, ptr %arrayidx40.i959, !DIExpression(), !1965)
  %arrayidx46.i960 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i935, i64 %idxprom45.i948, !dbg !1980
  %225 = load i8, ptr %arrayidx46.i960, align 1, !dbg !1980
  store i8 %225, ptr %arrayidx50.i962, align 1, !dbg !1981, !DIAssignID !1982
    #dbg_assign(i8 %225, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !1982, ptr %arrayidx50.i962, !DIExpression(), !1965)
  call void %211(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i937, i32 noundef %conv7.i941, ptr noundef nonnull %tc.i932) #12, !dbg !1983
  %h.val703.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1984
  %h.val704.pre = load i32, ptr %i_beta_offset, align 4, !dbg !1984
  br label %deblock_edge.exit963

deblock_edge.exit963:                             ; preds = %do.body370, %if.end.i947
  %h.val704 = phi i32 [ %h.val706, %do.body370 ], [ %h.val704.pre, %if.end.i947 ], !dbg !1984
  %h.val703 = phi i32 [ %h.val705, %do.body370 ], [ %h.val703.pre, %if.end.i947 ], !dbg !1984
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i932) #12, !dbg !1986
  %226 = load ptr, ptr %arrayidx391, align 8, !dbg !1984
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1426, ptr %tc.i964, !DIExpression(), !1987)
    #dbg_value(ptr undef, !1755, !DIExpression(), !1987)
    #dbg_value(ptr %pixu.0, !1756, !DIExpression(), !1987)
    #dbg_value(ptr %pixv.0, !1757, !DIExpression(), !1987)
    #dbg_value(i32 %shl19, !1758, !DIExpression(), !1987)
    #dbg_value(ptr %arrayidx374, !1759, !DIExpression(), !1987)
    #dbg_value(i32 %shr291, !1760, !DIExpression(), !1987)
    #dbg_value(i32 1, !1761, !DIExpression(), !1987)
    #dbg_value(ptr %226, !1762, !DIExpression(), !1987)
    #dbg_value(i32 poison, !1763, !DIExpression(), !1987)
  %add.i965 = add nuw nsw i32 %shr291, 12, !dbg !1989
  %add1.i966 = add i32 %h.val703, %add.i965, !dbg !1990
  %idxprom.i967 = sext i32 %add1.i966 to i64, !dbg !1990
  %arrayidx.i968 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i967, !dbg !1990
  %227 = load i8, ptr %arrayidx.i968, align 1, !dbg !1990
    #dbg_value(i8 %227, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1987)
  %add4.i970 = add i32 %h.val704, %add.i965, !dbg !1991
  %idxprom5.i971 = sext i32 %add4.i970 to i64, !dbg !1991
  %arrayidx6.i972 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i971, !dbg !1991
  %228 = load i8, ptr %arrayidx6.i972, align 1, !dbg !1991
    #dbg_value(i8 %228, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1987)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i964) #12, !dbg !1992
  %229 = load i32, ptr %arrayidx374, align 4, !dbg !1993
  %tobool.i974 = icmp ne i32 %229, 0, !dbg !1993
  %230 = add nsw i64 %idxprom.i967, -28
  %tobool8.i975 = icmp ult i64 %230, 48
  %or.cond.i976 = select i1 %tobool.i974, i1 %tobool8.i975, i1 false, !dbg !1994
  %231 = add nsw i64 %idxprom5.i971, -28
  %tobool10.i977 = icmp ult i64 %231, 48
  %or.cond58.i978 = select i1 %or.cond.i976, i1 %tobool10.i977, i1 false, !dbg !1994
  br i1 %or.cond58.i978, label %if.end.i979, label %deblock_edge.exit995, !dbg !1994

if.end.i979:                                      ; preds = %deblock_edge.exit963
  %conv7.i973 = zext i8 %228 to i32, !dbg !1991
    #dbg_value(i32 %conv7.i973, !1765, !DIExpression(), !1987)
  %conv.i969 = zext i8 %227 to i32, !dbg !1990
    #dbg_value(i32 %conv.i969, !1764, !DIExpression(), !1987)
  %232 = lshr i32 %229, 24, !dbg !1994
  %idxprom45.i980 = zext nneg i32 %232 to i64, !dbg !1994
  %233 = lshr i32 %229, 16, !dbg !1994
  %234 = lshr i32 %229, 8, !dbg !1994
  %235 = and i32 %229, 255, !dbg !1995
  %idxprom15.i981 = zext nneg i32 %235 to i64, !dbg !1995
  %arrayidx16.i982 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom15.i981, !dbg !1995
  %236 = load i8, ptr %arrayidx16.i982, align 1, !dbg !1995
  %conv19.i983 = add i8 %236, 1, !dbg !1995
  store i8 %conv19.i983, ptr %tc.i964, align 1, !dbg !1996, !DIAssignID !1997
    #dbg_assign(i8 %conv19.i983, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1997, ptr %tc.i964, !DIExpression(), !1987)
  %237 = and i32 %234, 255, !dbg !1998
  %idxprom25.i984 = zext nneg i32 %237 to i64, !dbg !1998
  %arrayidx26.i985 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom25.i984, !dbg !1998
  %238 = load i8, ptr %arrayidx26.i985, align 1, !dbg !1998
  %conv29.i986 = add i8 %238, 1, !dbg !1998
  store i8 %conv29.i986, ptr %arrayidx30.i987, align 1, !dbg !1999, !DIAssignID !2000
    #dbg_assign(i8 %conv29.i986, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2000, ptr %arrayidx30.i987, !DIExpression(), !1987)
  %239 = and i32 %233, 255, !dbg !2001
  %idxprom35.i988 = zext nneg i32 %239 to i64, !dbg !2001
  %arrayidx36.i989 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom35.i988, !dbg !2001
  %240 = load i8, ptr %arrayidx36.i989, align 1, !dbg !2001
  %conv39.i990 = add i8 %240, 1, !dbg !2001
  store i8 %conv39.i990, ptr %arrayidx40.i991, align 1, !dbg !2002, !DIAssignID !2003
    #dbg_assign(i8 %conv39.i990, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2003, ptr %arrayidx40.i991, !DIExpression(), !1987)
  %arrayidx46.i992 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i967, i64 %idxprom45.i980, !dbg !2004
  %241 = load i8, ptr %arrayidx46.i992, align 1, !dbg !2004
  %conv49.i993 = add i8 %241, 1, !dbg !2004
  store i8 %conv49.i993, ptr %arrayidx50.i994, align 1, !dbg !2005, !DIAssignID !2006
    #dbg_assign(i8 %conv49.i993, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2006, ptr %arrayidx50.i994, !DIExpression(), !1987)
  call void %226(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i969, i32 noundef %conv7.i973, ptr noundef nonnull %tc.i964) #12, !dbg !2007
  call void %226(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i969, i32 noundef %conv7.i973, ptr noundef nonnull %tc.i964) #12, !dbg !2008
  br label %deblock_edge.exit995, !dbg !2008

deblock_edge.exit995:                             ; preds = %deblock_edge.exit963, %if.end.i979
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i964) #12, !dbg !2009
  br label %if.end395

if.end395:                                        ; preds = %if.end.i930, %deblock_edge_intra.exit917, %deblock_edge.exit995, %if.end266
  br i1 %80, label %if.end452, label %if.then397, !dbg !2010

if.then397:                                       ; preds = %if.end395
  %tobool398.not = icmp eq i8 %68, 0, !dbg !2011
  %.pre1352 = load ptr, ptr %arrayidx379, align 8, !dbg !2015
  %h.val699.pre1353 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !2015
  %h.val700.pre1355 = load i32, ptr %i_beta_offset, align 4, !dbg !2015
  br i1 %tobool398.not, label %do.body400, label %if.then397.do.body413_crit_edge, !dbg !2017

if.then397.do.body413_crit_edge:                  ; preds = %if.then397
  %.pre1365 = add nsw i32 %conv107, 12, !dbg !2018
  br label %do.body413, !dbg !2017

do.body400:                                       ; preds = %if.then397
  %arrayidx405 = getelementptr inbounds i8, ptr %arrayidx59, i64 20, !dbg !2020
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1425, ptr %tc.i996, !DIExpression(), !2022)
    #dbg_value(ptr undef, !1755, !DIExpression(), !2022)
    #dbg_value(!DIArgList(ptr %pixy.0, i32 %shl), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2022)
    #dbg_value(ptr null, !1757, !DIExpression(), !2022)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !2022)
    #dbg_value(ptr %arrayidx405, !1759, !DIExpression(), !2022)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !2022)
    #dbg_value(i32 0, !1761, !DIExpression(), !2022)
    #dbg_value(ptr %.pre1352, !1762, !DIExpression(), !2022)
    #dbg_value(i32 poison, !1763, !DIExpression(), !2022)
  %add.i997 = add nsw i32 %conv107, 12, !dbg !2024
  %add1.i998 = add i32 %h.val699.pre1353, %add.i997, !dbg !2025
  %idxprom.i999 = sext i32 %add1.i998 to i64, !dbg !2025
  %arrayidx.i1000 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i999, !dbg !2025
  %242 = load i8, ptr %arrayidx.i1000, align 1, !dbg !2025
    #dbg_value(i8 %242, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2022)
  %add4.i1002 = add i32 %h.val700.pre1355, %add.i997, !dbg !2026
  %idxprom5.i1003 = sext i32 %add4.i1002 to i64, !dbg !2026
  %arrayidx6.i1004 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1003, !dbg !2026
  %243 = load i8, ptr %arrayidx6.i1004, align 1, !dbg !2026
    #dbg_value(i8 %243, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2022)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i996) #12, !dbg !2027
  %244 = load i32, ptr %arrayidx405, align 4, !dbg !2028
  %tobool.i1006 = icmp ne i32 %244, 0, !dbg !2028
  %245 = add nsw i64 %idxprom.i999, -28
  %tobool8.i1007 = icmp ult i64 %245, 48
  %or.cond.i1008 = select i1 %tobool.i1006, i1 %tobool8.i1007, i1 false, !dbg !2029
  %246 = add nsw i64 %idxprom5.i1003, -28
  %tobool10.i1009 = icmp ult i64 %246, 48
  %or.cond58.i1010 = select i1 %or.cond.i1008, i1 %tobool10.i1009, i1 false, !dbg !2029
  br i1 %or.cond58.i1010, label %if.end.i1011, label %deblock_edge.exit1027, !dbg !2029

if.end.i1011:                                     ; preds = %do.body400
  %conv7.i1005 = zext i8 %243 to i32, !dbg !2026
    #dbg_value(i32 %conv7.i1005, !1765, !DIExpression(), !2022)
  %conv.i1001 = zext i8 %242 to i32, !dbg !2025
    #dbg_value(i32 %conv.i1001, !1764, !DIExpression(), !2022)
    #dbg_value(!DIArgList(ptr %pixy.0, i64 %idx.ext402), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2022)
  %add.ptr403 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext402, !dbg !2020
    #dbg_value(ptr %add.ptr403, !1756, !DIExpression(), !2022)
  %247 = lshr i32 %244, 24, !dbg !2029
  %idxprom45.i1012 = zext nneg i32 %247 to i64, !dbg !2029
  %248 = lshr i32 %244, 16, !dbg !2029
  %249 = lshr i32 %244, 8, !dbg !2029
  %250 = and i32 %244, 255, !dbg !2030
  %idxprom15.i1013 = zext nneg i32 %250 to i64, !dbg !2030
  %arrayidx16.i1014 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom15.i1013, !dbg !2030
  %251 = load i8, ptr %arrayidx16.i1014, align 1, !dbg !2030
  store i8 %251, ptr %tc.i996, align 1, !dbg !2031, !DIAssignID !2032
    #dbg_assign(i8 %251, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2032, ptr %tc.i996, !DIExpression(), !2022)
  %252 = and i32 %249, 255, !dbg !2033
  %idxprom25.i1016 = zext nneg i32 %252 to i64, !dbg !2033
  %arrayidx26.i1017 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom25.i1016, !dbg !2033
  %253 = load i8, ptr %arrayidx26.i1017, align 1, !dbg !2033
  store i8 %253, ptr %arrayidx30.i1019, align 1, !dbg !2034, !DIAssignID !2035
    #dbg_assign(i8 %253, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2035, ptr %arrayidx30.i1019, !DIExpression(), !2022)
  %254 = and i32 %248, 255, !dbg !2036
  %idxprom35.i1020 = zext nneg i32 %254 to i64, !dbg !2036
  %arrayidx36.i1021 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom35.i1020, !dbg !2036
  %255 = load i8, ptr %arrayidx36.i1021, align 1, !dbg !2036
  store i8 %255, ptr %arrayidx40.i1023, align 1, !dbg !2037, !DIAssignID !2038
    #dbg_assign(i8 %255, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2038, ptr %arrayidx40.i1023, !DIExpression(), !2022)
  %arrayidx46.i1024 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i999, i64 %idxprom45.i1012, !dbg !2039
  %256 = load i8, ptr %arrayidx46.i1024, align 1, !dbg !2039
  store i8 %256, ptr %arrayidx50.i1026, align 1, !dbg !2040, !DIAssignID !2041
    #dbg_assign(i8 %256, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2041, ptr %arrayidx50.i1026, !DIExpression(), !2022)
  call void %.pre1352(ptr noundef %add.ptr403, i32 noundef %shl, i32 noundef %conv.i1001, i32 noundef %conv7.i1005, ptr noundef nonnull %tc.i996) #12, !dbg !2042
  %.pre1351.pre = load ptr, ptr %arrayidx379, align 8, !dbg !2015
  %h.val699.pre.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !2015
  %h.val700.pre.pre = load i32, ptr %i_beta_offset, align 4, !dbg !2015
  br label %deblock_edge.exit1027

deblock_edge.exit1027:                            ; preds = %do.body400, %if.end.i1011
  %h.val700.pre = phi i32 [ %h.val700.pre1355, %do.body400 ], [ %h.val700.pre.pre, %if.end.i1011 ], !dbg !2015
  %h.val699.pre = phi i32 [ %h.val699.pre1353, %do.body400 ], [ %h.val699.pre.pre, %if.end.i1011 ], !dbg !2015
  %.pre1351 = phi ptr [ %.pre1352, %do.body400 ], [ %.pre1351.pre, %if.end.i1011 ], !dbg !2015
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i996) #12, !dbg !2043
  br label %do.body413, !dbg !2020

do.body413:                                       ; preds = %if.then397.do.body413_crit_edge, %deblock_edge.exit1027
  %add.i1029.pre-phi = phi i32 [ %.pre1365, %if.then397.do.body413_crit_edge ], [ %add.i997, %deblock_edge.exit1027 ], !dbg !2018
  %h.val700 = phi i32 [ %h.val700.pre1355, %if.then397.do.body413_crit_edge ], [ %h.val700.pre, %deblock_edge.exit1027 ], !dbg !2015
  %h.val699 = phi i32 [ %h.val699.pre1353, %if.then397.do.body413_crit_edge ], [ %h.val699.pre, %deblock_edge.exit1027 ], !dbg !2015
  %257 = phi ptr [ %.pre1352, %if.then397.do.body413_crit_edge ], [ %.pre1351, %deblock_edge.exit1027 ], !dbg !2015
  %arrayidx418 = getelementptr inbounds i8, ptr %arrayidx59, i64 24, !dbg !2015
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1424, ptr %tc.i1028, !DIExpression(), !2044)
    #dbg_value(ptr undef, !1755, !DIExpression(), !2044)
    #dbg_value(!DIArgList(ptr %pixy.0, i32 %shl), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2044)
    #dbg_value(ptr null, !1757, !DIExpression(), !2044)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !2044)
    #dbg_value(ptr %arrayidx418, !1759, !DIExpression(), !2044)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !2044)
    #dbg_value(i32 0, !1761, !DIExpression(), !2044)
    #dbg_value(ptr %257, !1762, !DIExpression(), !2044)
    #dbg_value(i32 poison, !1763, !DIExpression(), !2044)
  %add1.i1030 = add i32 %h.val699, %add.i1029.pre-phi, !dbg !2045
  %idxprom.i1031 = sext i32 %add1.i1030 to i64, !dbg !2045
  %arrayidx.i1032 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1031, !dbg !2045
  %258 = load i8, ptr %arrayidx.i1032, align 1, !dbg !2045
    #dbg_value(i8 %258, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2044)
  %add4.i1034 = add i32 %h.val700, %add.i1029.pre-phi, !dbg !2046
  %idxprom5.i1035 = sext i32 %add4.i1034 to i64, !dbg !2046
  %arrayidx6.i1036 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1035, !dbg !2046
  %259 = load i8, ptr %arrayidx6.i1036, align 1, !dbg !2046
    #dbg_value(i8 %259, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2044)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1028) #12, !dbg !2047
  %260 = load i32, ptr %arrayidx418, align 4, !dbg !2048
  %tobool.i1038 = icmp ne i32 %260, 0, !dbg !2048
  %261 = add nsw i64 %idxprom.i1031, -28
  %tobool8.i1039 = icmp ult i64 %261, 48
  %or.cond.i1040 = select i1 %tobool.i1038, i1 %tobool8.i1039, i1 false, !dbg !2049
  %262 = add nsw i64 %idxprom5.i1035, -28
  %tobool10.i1041 = icmp ult i64 %262, 48
  %or.cond58.i1042 = select i1 %or.cond.i1040, i1 %tobool10.i1041, i1 false, !dbg !2049
  br i1 %or.cond58.i1042, label %if.end.i1043, label %deblock_edge.exit1059, !dbg !2049

if.end.i1043:                                     ; preds = %do.body413
  %conv7.i1037 = zext i8 %259 to i32, !dbg !2046
    #dbg_value(i32 %conv7.i1037, !1765, !DIExpression(), !2044)
  %conv.i1033 = zext i8 %258 to i32, !dbg !2045
    #dbg_value(i32 %conv.i1033, !1764, !DIExpression(), !2044)
    #dbg_value(!DIArgList(ptr %pixy.0, i64 %idx.ext415), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2044)
  %add.ptr416 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext415, !dbg !2015
    #dbg_value(ptr %add.ptr416, !1756, !DIExpression(), !2044)
  %263 = lshr i32 %260, 24, !dbg !2049
  %idxprom45.i1044 = zext nneg i32 %263 to i64, !dbg !2049
  %264 = lshr i32 %260, 16, !dbg !2049
  %265 = lshr i32 %260, 8, !dbg !2049
  %266 = and i32 %260, 255, !dbg !2050
  %idxprom15.i1045 = zext nneg i32 %266 to i64, !dbg !2050
  %arrayidx16.i1046 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom15.i1045, !dbg !2050
  %267 = load i8, ptr %arrayidx16.i1046, align 1, !dbg !2050
  store i8 %267, ptr %tc.i1028, align 1, !dbg !2051, !DIAssignID !2052
    #dbg_assign(i8 %267, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2052, ptr %tc.i1028, !DIExpression(), !2044)
  %268 = and i32 %265, 255, !dbg !2053
  %idxprom25.i1048 = zext nneg i32 %268 to i64, !dbg !2053
  %arrayidx26.i1049 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom25.i1048, !dbg !2053
  %269 = load i8, ptr %arrayidx26.i1049, align 1, !dbg !2053
  store i8 %269, ptr %arrayidx30.i1051, align 1, !dbg !2054, !DIAssignID !2055
    #dbg_assign(i8 %269, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2055, ptr %arrayidx30.i1051, !DIExpression(), !2044)
  %270 = and i32 %264, 255, !dbg !2056
  %idxprom35.i1052 = zext nneg i32 %270 to i64, !dbg !2056
  %arrayidx36.i1053 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom35.i1052, !dbg !2056
  %271 = load i8, ptr %arrayidx36.i1053, align 1, !dbg !2056
  store i8 %271, ptr %arrayidx40.i1055, align 1, !dbg !2057, !DIAssignID !2058
    #dbg_assign(i8 %271, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2058, ptr %arrayidx40.i1055, !DIExpression(), !2044)
  %arrayidx46.i1056 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom45.i1044, !dbg !2059
  %272 = load i8, ptr %arrayidx46.i1056, align 1, !dbg !2059
  store i8 %272, ptr %arrayidx50.i1058, align 1, !dbg !2060, !DIAssignID !2061
    #dbg_assign(i8 %272, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2061, ptr %arrayidx50.i1058, !DIExpression(), !2044)
  call void %257(ptr noundef %add.ptr416, i32 noundef %shl, i32 noundef %conv.i1033, i32 noundef %conv7.i1037, ptr noundef nonnull %tc.i1028) #12, !dbg !2062
  %h.val697.pre = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !2063
  %h.val698.pre = load i32, ptr %i_beta_offset, align 4, !dbg !2063
  br label %deblock_edge.exit1059

deblock_edge.exit1059:                            ; preds = %do.body413, %if.end.i1043
  %h.val698 = phi i32 [ %h.val700, %do.body413 ], [ %h.val698.pre, %if.end.i1043 ], !dbg !2063
  %h.val697 = phi i32 [ %h.val699, %do.body413 ], [ %h.val697.pre, %if.end.i1043 ], !dbg !2063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1028) #12, !dbg !2065
  %273 = load ptr, ptr %arrayidx391, align 8, !dbg !2063
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1423, ptr %tc.i1060, !DIExpression(), !2066)
    #dbg_value(ptr undef, !1755, !DIExpression(), !2066)
    #dbg_value(!DIArgList(ptr %pixu.0, i32 %shl19), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2066)
    #dbg_value(!DIArgList(ptr %pixv.0, i32 %shl19), !1757, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2066)
    #dbg_value(i32 %shl19, !1758, !DIExpression(), !2066)
    #dbg_value(ptr %arrayidx418, !1759, !DIExpression(), !2066)
    #dbg_value(i32 %conv110, !1760, !DIExpression(), !2066)
    #dbg_value(i32 1, !1761, !DIExpression(), !2066)
    #dbg_value(ptr %273, !1762, !DIExpression(), !2066)
    #dbg_value(i32 poison, !1763, !DIExpression(), !2066)
  %add.i1061 = add nuw nsw i32 %conv110, 12, !dbg !2068
  %add1.i1062 = add i32 %h.val697, %add.i1061, !dbg !2069
  %idxprom.i1063 = sext i32 %add1.i1062 to i64, !dbg !2069
  %arrayidx.i1064 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1063, !dbg !2069
  %274 = load i8, ptr %arrayidx.i1064, align 1, !dbg !2069
    #dbg_value(i8 %274, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2066)
  %add4.i1066 = add i32 %h.val698, %add.i1061, !dbg !2070
  %idxprom5.i1067 = sext i32 %add4.i1066 to i64, !dbg !2070
  %arrayidx6.i1068 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1067, !dbg !2070
  %275 = load i8, ptr %arrayidx6.i1068, align 1, !dbg !2070
    #dbg_value(i8 %275, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2066)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1060) #12, !dbg !2071
  %276 = load i32, ptr %arrayidx418, align 4, !dbg !2072
  %tobool.i1070 = icmp ne i32 %276, 0, !dbg !2072
  %277 = add nsw i64 %idxprom.i1063, -28
  %tobool8.i1071 = icmp ult i64 %277, 48
  %or.cond.i1072 = select i1 %tobool.i1070, i1 %tobool8.i1071, i1 false, !dbg !2073
  %278 = add nsw i64 %idxprom5.i1067, -28
  %tobool10.i1073 = icmp ult i64 %278, 48
  %or.cond58.i1074 = select i1 %or.cond.i1072, i1 %tobool10.i1073, i1 false, !dbg !2073
  br i1 %or.cond58.i1074, label %if.end.i1075, label %deblock_edge.exit1091, !dbg !2073

if.end.i1075:                                     ; preds = %deblock_edge.exit1059
  %conv7.i1069 = zext i8 %275 to i32, !dbg !2070
    #dbg_value(i32 %conv7.i1069, !1765, !DIExpression(), !2066)
  %conv.i1065 = zext i8 %274 to i32, !dbg !2069
    #dbg_value(i32 %conv.i1065, !1764, !DIExpression(), !2066)
    #dbg_value(!DIArgList(ptr %pixv.0, i64 %idx.ext424), !1757, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2066)
    #dbg_value(!DIArgList(ptr %pixu.0, i64 %idx.ext424), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2066)
  %add.ptr428 = getelementptr inbounds i8, ptr %pixv.0, i64 %idx.ext424, !dbg !2063
    #dbg_value(ptr %add.ptr428, !1757, !DIExpression(), !2066)
  %add.ptr425 = getelementptr inbounds i8, ptr %pixu.0, i64 %idx.ext424, !dbg !2063
    #dbg_value(ptr %add.ptr425, !1756, !DIExpression(), !2066)
  %279 = lshr i32 %276, 24, !dbg !2073
  %idxprom45.i1076 = zext nneg i32 %279 to i64, !dbg !2073
  %280 = lshr i32 %276, 16, !dbg !2073
  %281 = lshr i32 %276, 8, !dbg !2073
  %282 = and i32 %276, 255, !dbg !2074
  %idxprom15.i1077 = zext nneg i32 %282 to i64, !dbg !2074
  %arrayidx16.i1078 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom15.i1077, !dbg !2074
  %283 = load i8, ptr %arrayidx16.i1078, align 1, !dbg !2074
  %conv19.i1079 = add i8 %283, 1, !dbg !2074
  store i8 %conv19.i1079, ptr %tc.i1060, align 1, !dbg !2075, !DIAssignID !2076
    #dbg_assign(i8 %conv19.i1079, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2076, ptr %tc.i1060, !DIExpression(), !2066)
  %284 = and i32 %281, 255, !dbg !2077
  %idxprom25.i1080 = zext nneg i32 %284 to i64, !dbg !2077
  %arrayidx26.i1081 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom25.i1080, !dbg !2077
  %285 = load i8, ptr %arrayidx26.i1081, align 1, !dbg !2077
  %conv29.i1082 = add i8 %285, 1, !dbg !2077
  store i8 %conv29.i1082, ptr %arrayidx30.i1083, align 1, !dbg !2078, !DIAssignID !2079
    #dbg_assign(i8 %conv29.i1082, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2079, ptr %arrayidx30.i1083, !DIExpression(), !2066)
  %286 = and i32 %280, 255, !dbg !2080
  %idxprom35.i1084 = zext nneg i32 %286 to i64, !dbg !2080
  %arrayidx36.i1085 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom35.i1084, !dbg !2080
  %287 = load i8, ptr %arrayidx36.i1085, align 1, !dbg !2080
  %conv39.i1086 = add i8 %287, 1, !dbg !2080
  store i8 %conv39.i1086, ptr %arrayidx40.i1087, align 1, !dbg !2081, !DIAssignID !2082
    #dbg_assign(i8 %conv39.i1086, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2082, ptr %arrayidx40.i1087, !DIExpression(), !2066)
  %arrayidx46.i1088 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1063, i64 %idxprom45.i1076, !dbg !2083
  %288 = load i8, ptr %arrayidx46.i1088, align 1, !dbg !2083
  %conv49.i1089 = add i8 %288, 1, !dbg !2083
  store i8 %conv49.i1089, ptr %arrayidx50.i1090, align 1, !dbg !2084, !DIAssignID !2085
    #dbg_assign(i8 %conv49.i1089, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2085, ptr %arrayidx50.i1090, !DIExpression(), !2066)
  call void %273(ptr noundef %add.ptr425, i32 noundef %shl19, i32 noundef %conv.i1065, i32 noundef %conv7.i1069, ptr noundef nonnull %tc.i1060) #12, !dbg !2086
  call void %273(ptr noundef %add.ptr428, i32 noundef %shl19, i32 noundef %conv.i1065, i32 noundef %conv7.i1069, ptr noundef nonnull %tc.i1060) #12, !dbg !2087
  br label %deblock_edge.exit1091, !dbg !2087

deblock_edge.exit1091:                            ; preds = %deblock_edge.exit1059, %if.end.i1075
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1060) #12, !dbg !2088
  br i1 %tobool398.not, label %do.body439, label %if.end452, !dbg !2089

do.body439:                                       ; preds = %deblock_edge.exit1091
  %arrayidx444 = getelementptr inbounds i8, ptr %arrayidx59, i64 28, !dbg !2090
  %289 = load ptr, ptr %arrayidx379, align 8, !dbg !2090
  %h.val695 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !2090
  %h.val696 = load i32, ptr %i_beta_offset, align 4, !dbg !2090
    #dbg_assign(i1 undef, !1750, !DIExpression(), !1422, ptr %tc.i1092, !DIExpression(), !2093)
    #dbg_value(ptr undef, !1755, !DIExpression(), !2093)
    #dbg_value(!DIArgList(ptr %pixy.0, i32 %shl), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !2093)
    #dbg_value(ptr null, !1757, !DIExpression(), !2093)
    #dbg_value(i32 %shl, !1758, !DIExpression(), !2093)
    #dbg_value(ptr %arrayidx444, !1759, !DIExpression(), !2093)
    #dbg_value(i32 %conv107, !1760, !DIExpression(), !2093)
    #dbg_value(i32 0, !1761, !DIExpression(), !2093)
    #dbg_value(ptr %289, !1762, !DIExpression(), !2093)
    #dbg_value(i32 poison, !1763, !DIExpression(), !2093)
  %add1.i1094 = add i32 %h.val695, %add.i1029.pre-phi, !dbg !2095
  %idxprom.i1095 = sext i32 %add1.i1094 to i64, !dbg !2095
  %arrayidx.i1096 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1095, !dbg !2095
  %290 = load i8, ptr %arrayidx.i1096, align 1, !dbg !2095
    #dbg_value(i8 %290, !1764, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2093)
  %add4.i1098 = add i32 %h.val696, %add.i1029.pre-phi, !dbg !2096
  %idxprom5.i1099 = sext i32 %add4.i1098 to i64, !dbg !2096
  %arrayidx6.i1100 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1099, !dbg !2096
  %291 = load i8, ptr %arrayidx6.i1100, align 1, !dbg !2096
    #dbg_value(i8 %291, !1765, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2093)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1092) #12, !dbg !2097
  %292 = load i32, ptr %arrayidx444, align 4, !dbg !2098
  %tobool.i1102 = icmp ne i32 %292, 0, !dbg !2098
  %293 = add nsw i64 %idxprom.i1095, -28
  %tobool8.i1103 = icmp ult i64 %293, 48
  %or.cond.i1104 = select i1 %tobool.i1102, i1 %tobool8.i1103, i1 false, !dbg !2099
  %294 = add nsw i64 %idxprom5.i1099, -28
  %tobool10.i1105 = icmp ult i64 %294, 48
  %or.cond58.i1106 = select i1 %or.cond.i1104, i1 %tobool10.i1105, i1 false, !dbg !2099
  br i1 %or.cond58.i1106, label %if.end.i1107, label %deblock_edge.exit1123, !dbg !2099

if.end.i1107:                                     ; preds = %do.body439
  %conv7.i1101 = zext i8 %291 to i32, !dbg !2096
    #dbg_value(i32 %conv7.i1101, !1765, !DIExpression(), !2093)
  %conv.i1097 = zext i8 %290 to i32, !dbg !2095
    #dbg_value(i32 %conv.i1097, !1764, !DIExpression(), !2093)
    #dbg_value(!DIArgList(ptr %pixy.0, i64 %idx.ext441), !1756, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2093)
  %add.ptr442 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext441, !dbg !2090
    #dbg_value(ptr %add.ptr442, !1756, !DIExpression(), !2093)
  %295 = lshr i32 %292, 24, !dbg !2099
  %idxprom45.i1108 = zext nneg i32 %295 to i64, !dbg !2099
  %296 = lshr i32 %292, 16, !dbg !2099
  %297 = lshr i32 %292, 8, !dbg !2099
  %298 = and i32 %292, 255, !dbg !2100
  %idxprom15.i1109 = zext nneg i32 %298 to i64, !dbg !2100
  %arrayidx16.i1110 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom15.i1109, !dbg !2100
  %299 = load i8, ptr %arrayidx16.i1110, align 1, !dbg !2100
  store i8 %299, ptr %tc.i1092, align 1, !dbg !2101, !DIAssignID !2102
    #dbg_assign(i8 %299, !1750, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2102, ptr %tc.i1092, !DIExpression(), !2093)
  %300 = and i32 %297, 255, !dbg !2103
  %idxprom25.i1112 = zext nneg i32 %300 to i64, !dbg !2103
  %arrayidx26.i1113 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom25.i1112, !dbg !2103
  %301 = load i8, ptr %arrayidx26.i1113, align 1, !dbg !2103
  store i8 %301, ptr %arrayidx30.i1115, align 1, !dbg !2104, !DIAssignID !2105
    #dbg_assign(i8 %301, !1750, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !2105, ptr %arrayidx30.i1115, !DIExpression(), !2093)
  %302 = and i32 %296, 255, !dbg !2106
  %idxprom35.i1116 = zext nneg i32 %302 to i64, !dbg !2106
  %arrayidx36.i1117 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom35.i1116, !dbg !2106
  %303 = load i8, ptr %arrayidx36.i1117, align 1, !dbg !2106
  store i8 %303, ptr %arrayidx40.i1119, align 1, !dbg !2107, !DIAssignID !2108
    #dbg_assign(i8 %303, !1750, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !2108, ptr %arrayidx40.i1119, !DIExpression(), !2093)
  %arrayidx46.i1120 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1095, i64 %idxprom45.i1108, !dbg !2109
  %304 = load i8, ptr %arrayidx46.i1120, align 1, !dbg !2109
  store i8 %304, ptr %arrayidx50.i1122, align 1, !dbg !2110, !DIAssignID !2111
    #dbg_assign(i8 %304, !1750, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !2111, ptr %arrayidx50.i1122, !DIExpression(), !2093)
  call void %289(ptr noundef %add.ptr442, i32 noundef %shl, i32 noundef %conv.i1097, i32 noundef %conv7.i1101, ptr noundef nonnull %tc.i1092) #12, !dbg !2112
  br label %deblock_edge.exit1123

deblock_edge.exit1123:                            ; preds = %do.body439, %if.end.i1107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1092) #12, !dbg !2113
  br label %if.end452, !dbg !2090

if.end452:                                        ; preds = %deblock_edge.exit1091, %deblock_edge.exit1123, %if.end395
  %or = or i32 %mb_y.addr.01332, %not, !dbg !2114
  %and453 = and i32 %or, 1, !dbg !2115
  %add454 = add nuw nsw i32 %and453, %mb_x.01331, !dbg !2116
    #dbg_value(i32 %add454, !1396, !DIExpression(), !1654)
  %xor = xor i32 %mb_y.addr.01332, %0, !dbg !2117
    #dbg_value(i32 %xor, !1387, !DIExpression(), !1434)
  %305 = load ptr, ptr %sps, align 16, !dbg !1655
  %i_mb_width = getelementptr inbounds i8, ptr %305, i64 1084, !dbg !1656
  %306 = load i32, ptr %i_mb_width, align 4, !dbg !1656
  %cmp22 = icmp slt i32 %add454, %306, !dbg !1657
  br i1 %cmp22, label %for.body, label %for.cond.cleanup, !dbg !1658, !llvm.loop !2118

land.lhs.true458:                                 ; preds = %for.cond.cleanup
  %b_transform_8x8_mode460 = getelementptr inbounds i8, ptr %63, i64 60, !dbg !2120
  %307 = load i32, ptr %b_transform_8x8_mode460, align 4, !dbg !2120
  %tobool461.not = icmp eq i32 %307, 0, !dbg !2121
  br i1 %tobool461.not, label %if.end463, label %if.then462, !dbg !2122

if.then462:                                       ; preds = %land.lhs.true458
    #dbg_value(ptr %h, !1454, !DIExpression(), !2123)
    #dbg_value(i32 %mb_y.addr.0.lcssa, !1462, !DIExpression(), !2123)
    #dbg_value(ptr %8, !1463, !DIExpression(), !2123)
    #dbg_value(ptr poison, !1464, !DIExpression(), !2123)
    #dbg_value(ptr %h, !2125, !DIExpression(), !2133)
    #dbg_value(i32 %mb_y.addr.0.lcssa, !2128, !DIExpression(), !2133)
    #dbg_value(ptr %8, !2129, !DIExpression(), !2133)
  %non_zero_count.i1314 = getelementptr inbounds i8, ptr %h, i64 16656, !dbg !2135
  %308 = load ptr, ptr %non_zero_count.i1314, align 16, !dbg !2135
  %mul.i1317 = mul nsw i32 %.lcssa, %mb_y.addr.0.lcssa, !dbg !2136
  %idx.ext.i1318 = sext i32 %mul.i1317 to i64, !dbg !2137
  %add.ptr.i1319 = getelementptr inbounds [24 x i8], ptr %308, i64 %idx.ext.i1318, !dbg !2137
    #dbg_value(ptr %add.ptr.i1319, !2130, !DIExpression(), !2133)
    #dbg_value(i32 0, !2131, !DIExpression(), !2138)
  %cmp13.i1320 = icmp sgt i32 %.lcssa, 0, !dbg !2139
  br i1 %cmp13.i1320, label %for.body.i1321, label %restore_cavlc_nnz_row.exit1328, !dbg !2141

for.body.i1321:                                   ; preds = %if.then462, %for.body.i1321
  %indvars.iv.i1322 = phi i64 [ %indvars.iv.next.i1325, %for.body.i1321 ], [ 0, %if.then462 ]
    #dbg_value(i64 %indvars.iv.i1322, !2131, !DIExpression(), !2138)
  %add.ptr4.i1323 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1319, i64 %indvars.iv.i1322, !dbg !2142
  %add.ptr6.i1324 = getelementptr inbounds [16 x i8], ptr %8, i64 %indvars.iv.i1322, !dbg !2143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1323, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1324, i64 16, i1 false), !dbg !2144
  %indvars.iv.next.i1325 = add nuw nsw i64 %indvars.iv.i1322, 1, !dbg !2145
    #dbg_value(i64 %indvars.iv.next.i1325, !2131, !DIExpression(), !2138)
  %309 = load ptr, ptr %sps, align 16, !dbg !2146
  %i_mb_width2.i1326 = getelementptr inbounds i8, ptr %309, i64 1084, !dbg !2147
  %310 = load i32, ptr %i_mb_width2.i1326, align 4, !dbg !2147
  %311 = sext i32 %310 to i64, !dbg !2139
  %cmp.i1327 = icmp slt i64 %indvars.iv.next.i1325, %311, !dbg !2139
  br i1 %cmp.i1327, label %for.body.i1321, label %restore_cavlc_nnz_row.exit1328, !dbg !2141, !llvm.loop !2148

restore_cavlc_nnz_row.exit1328:                   ; preds = %for.body.i1321, %if.then462
  %312 = phi ptr [ %62, %if.then462 ], [ %309, %for.body.i1321 ]
  %cmp.i1124 = icmp sgt i32 %mb_y.addr.0.lcssa, 0, !dbg !2150
  br i1 %cmp.i1124, label %if.then.i1141, label %if.end.i1125, !dbg !2151

if.then.i1141:                                    ; preds = %restore_cavlc_nnz_row.exit1328
  %sub.i1142 = add nsw i32 %mb_y.addr.0.lcssa, -1, !dbg !2152
  %i_mb_width.i1144 = getelementptr inbounds i8, ptr %312, i64 1084, !dbg !2153
  %313 = load i32, ptr %i_mb_width.i1144, align 4, !dbg !2153
  %idx.ext.i1145 = sext i32 %313 to i64, !dbg !2154
  %add.ptr.i1146 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext.i1145, !dbg !2154
    #dbg_value(ptr %h, !2125, !DIExpression(), !2155)
    #dbg_value(i32 %sub.i1142, !2128, !DIExpression(), !2155)
    #dbg_value(ptr %add.ptr.i1146, !2129, !DIExpression(), !2155)
  %314 = load ptr, ptr %non_zero_count.i1314, align 16, !dbg !2157
  %mul.i1302 = mul nsw i32 %313, %sub.i1142, !dbg !2158
  %idx.ext.i1303 = sext i32 %mul.i1302 to i64, !dbg !2159
  %add.ptr.i1304 = getelementptr inbounds [24 x i8], ptr %314, i64 %idx.ext.i1303, !dbg !2159
    #dbg_value(ptr %add.ptr.i1304, !2130, !DIExpression(), !2155)
    #dbg_value(i32 0, !2131, !DIExpression(), !2160)
  %cmp13.i1305 = icmp sgt i32 %313, 0, !dbg !2161
  br i1 %cmp13.i1305, label %for.body.i1306, label %if.end.i1125, !dbg !2162

for.body.i1306:                                   ; preds = %if.then.i1141, %for.body.i1306
  %indvars.iv.i1307 = phi i64 [ %indvars.iv.next.i1310, %for.body.i1306 ], [ 0, %if.then.i1141 ]
    #dbg_value(i64 %indvars.iv.i1307, !2131, !DIExpression(), !2160)
  %add.ptr4.i1308 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1304, i64 %indvars.iv.i1307, !dbg !2163
  %add.ptr6.i1309 = getelementptr inbounds [16 x i8], ptr %add.ptr.i1146, i64 %indvars.iv.i1307, !dbg !2164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1308, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1309, i64 16, i1 false), !dbg !2165
  %indvars.iv.next.i1310 = add nuw nsw i64 %indvars.iv.i1307, 1, !dbg !2166
    #dbg_value(i64 %indvars.iv.next.i1310, !2131, !DIExpression(), !2160)
  %315 = load ptr, ptr %sps, align 16, !dbg !2167
  %i_mb_width2.i1311 = getelementptr inbounds i8, ptr %315, i64 1084, !dbg !2168
  %316 = load i32, ptr %i_mb_width2.i1311, align 4, !dbg !2168
  %317 = sext i32 %316 to i64, !dbg !2161
  %cmp.i1312 = icmp slt i64 %indvars.iv.next.i1310, %317, !dbg !2161
  br i1 %cmp.i1312, label %for.body.i1306, label %if.end.i1125, !dbg !2162, !llvm.loop !2169

if.end.i1125:                                     ; preds = %for.body.i1306, %if.then.i1141, %restore_cavlc_nnz_row.exit1328
  %318 = phi ptr [ %312, %if.then.i1141 ], [ %312, %restore_cavlc_nnz_row.exit1328 ], [ %315, %for.body.i1306 ]
  %319 = load i32, ptr %b_mbaff, align 4, !dbg !2171
  %tobool.not.i1127 = icmp eq i32 %319, 0, !dbg !2172
  br i1 %tobool.not.i1127, label %if.end463, label %if.then1.i1128, !dbg !2173

if.then1.i1128:                                   ; preds = %if.end.i1125
  %add.i1129 = add nsw i32 %mb_y.addr.0.lcssa, 1, !dbg !2174
  %i_mb_width3.i1131 = getelementptr inbounds i8, ptr %318, i64 1084, !dbg !2175
  %320 = load i32, ptr %i_mb_width3.i1131, align 4, !dbg !2175
  %mul.i1132 = shl nsw i32 %320, 1, !dbg !2176
  %idx.ext4.i1133 = sext i32 %mul.i1132 to i64, !dbg !2177
  %add.ptr5.i1134 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext4.i1133, !dbg !2177
    #dbg_value(ptr %h, !2125, !DIExpression(), !2178)
    #dbg_value(i32 %add.i1129, !2128, !DIExpression(), !2178)
    #dbg_value(ptr %add.ptr5.i1134, !2129, !DIExpression(), !2178)
  %321 = load ptr, ptr %non_zero_count.i1314, align 16, !dbg !2180
  %mul.i1287 = mul nsw i32 %320, %add.i1129, !dbg !2181
  %idx.ext.i1288 = sext i32 %mul.i1287 to i64, !dbg !2182
  %add.ptr.i1289 = getelementptr inbounds [24 x i8], ptr %321, i64 %idx.ext.i1288, !dbg !2182
    #dbg_value(ptr %add.ptr.i1289, !2130, !DIExpression(), !2178)
    #dbg_value(i32 0, !2131, !DIExpression(), !2183)
  %cmp13.i1290 = icmp sgt i32 %320, 0, !dbg !2184
  br i1 %cmp13.i1290, label %for.body.i1291, label %restore_cavlc_nnz_row.exit1298, !dbg !2185

for.body.i1291:                                   ; preds = %if.then1.i1128, %for.body.i1291
  %indvars.iv.i1292 = phi i64 [ %indvars.iv.next.i1295, %for.body.i1291 ], [ 0, %if.then1.i1128 ]
    #dbg_value(i64 %indvars.iv.i1292, !2131, !DIExpression(), !2183)
  %add.ptr4.i1293 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1289, i64 %indvars.iv.i1292, !dbg !2186
  %add.ptr6.i1294 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i1134, i64 %indvars.iv.i1292, !dbg !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1293, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1294, i64 16, i1 false), !dbg !2188
  %indvars.iv.next.i1295 = add nuw nsw i64 %indvars.iv.i1292, 1, !dbg !2189
    #dbg_value(i64 %indvars.iv.next.i1295, !2131, !DIExpression(), !2183)
  %322 = load ptr, ptr %sps, align 16, !dbg !2190
  %i_mb_width2.i1296 = getelementptr inbounds i8, ptr %322, i64 1084, !dbg !2191
  %323 = load i32, ptr %i_mb_width2.i1296, align 4, !dbg !2191
  %324 = sext i32 %323 to i64, !dbg !2184
  %cmp.i1297 = icmp slt i64 %indvars.iv.next.i1295, %324, !dbg !2184
  br i1 %cmp.i1297, label %for.body.i1291, label %restore_cavlc_nnz_row.exit1298, !dbg !2185, !llvm.loop !2192

restore_cavlc_nnz_row.exit1298:                   ; preds = %for.body.i1291, %if.then1.i1128
  %325 = phi i32 [ %320, %if.then1.i1128 ], [ %323, %for.body.i1291 ]
  br i1 %cmp.i1124, label %if.then7.i1135, label %if.end463, !dbg !2194

if.then7.i1135:                                   ; preds = %restore_cavlc_nnz_row.exit1298
  %sub8.i1136 = add nsw i32 %mb_y.addr.0.lcssa, -2, !dbg !2195
  %mul11.i1138 = mul nsw i32 %325, 3, !dbg !2196
  %idx.ext12.i1139 = sext i32 %mul11.i1138 to i64, !dbg !2197
  %add.ptr13.i1140 = getelementptr inbounds [16 x i8], ptr %8, i64 %idx.ext12.i1139, !dbg !2197
    #dbg_value(ptr %h, !2125, !DIExpression(), !2198)
    #dbg_value(i32 %sub8.i1136, !2128, !DIExpression(), !2198)
    #dbg_value(ptr %add.ptr13.i1140, !2129, !DIExpression(), !2198)
  %326 = load ptr, ptr %non_zero_count.i1314, align 16, !dbg !2200
  %mul.i1276 = mul nsw i32 %325, %sub8.i1136, !dbg !2201
  %idx.ext.i1277 = sext i32 %mul.i1276 to i64, !dbg !2202
  %add.ptr.i1278 = getelementptr inbounds [24 x i8], ptr %326, i64 %idx.ext.i1277, !dbg !2202
    #dbg_value(ptr %add.ptr.i1278, !2130, !DIExpression(), !2198)
    #dbg_value(i32 0, !2131, !DIExpression(), !2203)
  %cmp13.i = icmp sgt i32 %325, 0, !dbg !2204
  br i1 %cmp13.i, label %for.body.i1279, label %if.end463, !dbg !2205

for.body.i1279:                                   ; preds = %if.then7.i1135, %for.body.i1279
  %indvars.iv.i1280 = phi i64 [ %indvars.iv.next.i1282, %for.body.i1279 ], [ 0, %if.then7.i1135 ]
    #dbg_value(i64 %indvars.iv.i1280, !2131, !DIExpression(), !2203)
  %add.ptr4.i = getelementptr inbounds [24 x i8], ptr %add.ptr.i1278, i64 %indvars.iv.i1280, !dbg !2206
  %add.ptr6.i1281 = getelementptr inbounds [16 x i8], ptr %add.ptr13.i1140, i64 %indvars.iv.i1280, !dbg !2207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %add.ptr6.i1281, i64 16, i1 false), !dbg !2208
  %indvars.iv.next.i1282 = add nuw nsw i64 %indvars.iv.i1280, 1, !dbg !2209
    #dbg_value(i64 %indvars.iv.next.i1282, !2131, !DIExpression(), !2203)
  %327 = load ptr, ptr %sps, align 16, !dbg !2210
  %i_mb_width2.i = getelementptr inbounds i8, ptr %327, i64 1084, !dbg !2211
  %328 = load i32, ptr %i_mb_width2.i, align 4, !dbg !2211
  %329 = sext i32 %328 to i64, !dbg !2204
  %cmp.i1283 = icmp slt i64 %indvars.iv.next.i1282, %329, !dbg !2204
  br i1 %cmp.i1283, label %for.body.i1279, label %if.end463, !dbg !2205, !llvm.loop !2212

if.end463:                                        ; preds = %for.body.i1279, %restore_cavlc_nnz_row.exit1298, %if.end.i1125, %if.then7.i1135, %land.lhs.true458, %for.cond.cleanup
  ret void, !dbg !2214
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2215 void @x264_prefetch_fenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2218 void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_deblock_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #3 !dbg !2221 {
entry:
    #dbg_value(i32 %cpu, !2226, !DIExpression(), !2228)
    #dbg_value(ptr %pf, !2227, !DIExpression(), !2228)
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !2229
  store ptr @deblock_v_luma_c, ptr %arrayidx, align 8, !dbg !2230
  store ptr @deblock_h_luma_c, ptr %pf, align 8, !dbg !2231
  %deblock_chroma = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !2232
  %arrayidx3 = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !2233
  store ptr @deblock_v_chroma_c, ptr %arrayidx3, align 8, !dbg !2234
  store ptr @deblock_h_chroma_c, ptr %deblock_chroma, align 8, !dbg !2235
  %deblock_luma_intra = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !2236
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !2237
  store ptr @deblock_v_luma_intra_c, ptr %arrayidx6, align 8, !dbg !2238
  store ptr @deblock_h_luma_intra_c, ptr %deblock_luma_intra, align 8, !dbg !2239
  %deblock_chroma_intra = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !2240
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 56, !dbg !2241
  store ptr @deblock_v_chroma_intra_c, ptr %arrayidx9, align 8, !dbg !2242
  store ptr @deblock_h_chroma_intra_c, ptr %deblock_chroma_intra, align 8, !dbg !2243
  %deblock_strength = getelementptr inbounds i8, ptr %pf, i64 64, !dbg !2244
  store ptr @deblock_strength_c, ptr %deblock_strength, align 8, !dbg !2245
  ret void, !dbg !2246
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 !dbg !2247 {
entry:
    #dbg_value(ptr %pix, !2249, !DIExpression(), !2254)
    #dbg_value(i32 %stride, !2250, !DIExpression(), !2254)
    #dbg_value(i32 %alpha, !2251, !DIExpression(), !2254)
    #dbg_value(i32 %beta, !2252, !DIExpression(), !2254)
    #dbg_value(ptr %tc0, !2253, !DIExpression(), !2254)
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 !dbg !2257 {
entry:
    #dbg_value(ptr %pix, !2259, !DIExpression(), !2264)
    #dbg_value(i32 %stride, !2260, !DIExpression(), !2264)
    #dbg_value(i32 %alpha, !2261, !DIExpression(), !2264)
    #dbg_value(i32 %beta, !2262, !DIExpression(), !2264)
    #dbg_value(ptr %tc0, !2263, !DIExpression(), !2264)
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 !dbg !2267 {
entry:
    #dbg_value(ptr %pix, !2269, !DIExpression(), !2274)
    #dbg_value(i32 %stride, !2270, !DIExpression(), !2274)
    #dbg_value(i32 %alpha, !2271, !DIExpression(), !2274)
    #dbg_value(i32 %beta, !2272, !DIExpression(), !2274)
    #dbg_value(ptr %tc0, !2273, !DIExpression(), !2274)
  tail call fastcc void @deblock_chroma_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2275
  ret void, !dbg !2276
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #4 !dbg !2277 {
entry:
    #dbg_value(ptr %pix, !2279, !DIExpression(), !2284)
    #dbg_value(i32 %stride, !2280, !DIExpression(), !2284)
    #dbg_value(i32 %alpha, !2281, !DIExpression(), !2284)
    #dbg_value(i32 %beta, !2282, !DIExpression(), !2284)
    #dbg_value(ptr %tc0, !2283, !DIExpression(), !2284)
  tail call fastcc void @deblock_chroma_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2285
  ret void, !dbg !2286
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #4 !dbg !2287 {
entry:
    #dbg_value(ptr %pix, !2289, !DIExpression(), !2293)
    #dbg_value(i32 %stride, !2290, !DIExpression(), !2293)
    #dbg_value(i32 %alpha, !2291, !DIExpression(), !2293)
    #dbg_value(i32 %beta, !2292, !DIExpression(), !2293)
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta), !dbg !2294
  ret void, !dbg !2295
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #4 !dbg !2296 {
entry:
    #dbg_value(ptr %pix, !2298, !DIExpression(), !2302)
    #dbg_value(i32 %stride, !2299, !DIExpression(), !2302)
    #dbg_value(i32 %alpha, !2300, !DIExpression(), !2302)
    #dbg_value(i32 %beta, !2301, !DIExpression(), !2302)
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta), !dbg !2303
  ret void, !dbg !2304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2305 {
entry:
    #dbg_value(ptr %pix, !2307, !DIExpression(), !2311)
    #dbg_value(i32 %stride, !2308, !DIExpression(), !2311)
    #dbg_value(i32 %alpha, !2309, !DIExpression(), !2311)
    #dbg_value(i32 %beta, !2310, !DIExpression(), !2311)
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta), !dbg !2312
  ret void, !dbg !2313
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2314 {
entry:
    #dbg_value(ptr %pix, !2316, !DIExpression(), !2320)
    #dbg_value(i32 %stride, !2317, !DIExpression(), !2320)
    #dbg_value(i32 %alpha, !2318, !DIExpression(), !2320)
    #dbg_value(i32 %beta, !2319, !DIExpression(), !2320)
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta), !dbg !2321
  ret void, !dbg !2322
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @deblock_strength_c(ptr nocapture noundef readonly %nnz, ptr nocapture noundef readonly %ref, ptr nocapture noundef readonly %mv, ptr nocapture noundef writeonly %bs, i32 noundef %mvy_limit, i32 noundef %bframe) #6 !dbg !2323 {
entry:
    #dbg_value(ptr %nnz, !2325, !DIExpression(), !2346)
    #dbg_value(ptr %ref, !2326, !DIExpression(), !2346)
    #dbg_value(ptr %mv, !2327, !DIExpression(), !2346)
    #dbg_value(ptr %bs, !2328, !DIExpression(), !2346)
    #dbg_value(i32 %mvy_limit, !2329, !DIExpression(), !2346)
    #dbg_value(i32 %bframe, !2330, !DIExpression(), !2346)
    #dbg_value(i32 0, !2331, !DIExpression(), !2347)
  %tobool61.not = icmp eq i32 %bframe, 0
  %arrayidx62 = getelementptr inbounds i8, ptr %ref, i64 40
  %arrayidx73 = getelementptr inbounds i8, ptr %mv, i64 160
    #dbg_value(i32 0, !2331, !DIExpression(), !2347)
  br i1 %tobool61.not, label %for.body6.us.us, label %for.body

for.body6.us.us:                                  ; preds = %entry, %if.end114.us.us.us.3
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %if.end114.us.us.us.3 ], [ 0, %entry ]
    #dbg_value(i64 %indvars.iv192, !2337, !DIExpression(), !2348)
    #dbg_value(i32 0, !2339, !DIExpression(), !2349)
    #dbg_value(i64 %indvars.iv192, !2342, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 12, DW_OP_stack_value), !2349)
  %add.us.us = shl i64 %indvars.iv192, 32, !dbg !2350
  %sext = add i64 %add.us.us, 51539607552, !dbg !2350
  %0 = ashr exact i64 %sext, 32, !dbg !2350
    #dbg_value(i64 %0, !2342, !DIExpression(), !2349)
    #dbg_value(i64 0, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %0, !dbg !2352
  %1 = load i8, ptr %arrayidx.us.us.us, align 1, !dbg !2352
  %tobool11.not.us.us.us = icmp eq i8 %1, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us, label %lor.lhs.false.us.us.us, label %if.end114.us.us.us, !dbg !2354

lor.lhs.false.us.us.us:                           ; preds = %for.body6.us.us
  %2 = add nsw i64 %0, -1, !dbg !2355
    #dbg_value(i64 %2, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %2, !dbg !2356
  %3 = load i8, ptr %arrayidx13.us.us.us, align 1, !dbg !2356
  %tobool15.not.us.us.us = icmp eq i8 %3, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us, label %if.else.us.us.us, label %if.end114.us.us.us, !dbg !2357

if.else.us.us.us:                                 ; preds = %lor.lhs.false.us.us.us
  %arrayidx24.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %0, !dbg !2358
  %4 = load i8, ptr %arrayidx24.us.us.us, align 1, !dbg !2358
  %arrayidx28.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %2, !dbg !2360
  %5 = load i8, ptr %arrayidx28.us.us.us, align 1, !dbg !2360
  %cmp30.not.us.us.us = icmp eq i8 %4, %5, !dbg !2361
  br i1 %cmp30.not.us.us.us, label %lor.lhs.false32.us.us.us, label %if.then100.us.us.us, !dbg !2362

lor.lhs.false32.us.us.us:                         ; preds = %if.else.us.us.us
  %arrayidx35.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %0, !dbg !2363
  %6 = load i16, ptr %arrayidx35.us.us.us, align 2, !dbg !2363
  %conv37.us.us.us = sext i16 %6 to i32, !dbg !2363
  %arrayidx40.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %2, !dbg !2364
  %7 = load i16, ptr %arrayidx40.us.us.us, align 2, !dbg !2364
  %conv42.us.us.us = sext i16 %7 to i32, !dbg !2364
  %sub43.us.us.us = sub nsw i32 %conv37.us.us.us, %conv42.us.us.us, !dbg !2365
  %8 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us, i1 true), !dbg !2366
  %cmp44.us.us.us = icmp ugt i32 %8, 3, !dbg !2367
  br i1 %cmp44.us.us.us, label %if.then100.us.us.us, label %lor.lhs.false46.us.us.us, !dbg !2368

lor.lhs.false46.us.us.us:                         ; preds = %lor.lhs.false32.us.us.us
  %arrayidx50.us.us.us = getelementptr inbounds i8, ptr %arrayidx35.us.us.us, i64 2, !dbg !2369
  %9 = load i16, ptr %arrayidx50.us.us.us, align 2, !dbg !2369
  %conv51.us.us.us = sext i16 %9 to i32, !dbg !2369
  %arrayidx55.us.us.us = getelementptr inbounds i8, ptr %arrayidx40.us.us.us, i64 2, !dbg !2370
  %10 = load i16, ptr %arrayidx55.us.us.us, align 2, !dbg !2370
  %conv56.us.us.us = sext i16 %10 to i32, !dbg !2370
  %sub57.us.us.us = sub nsw i32 %conv51.us.us.us, %conv56.us.us.us, !dbg !2371
  %11 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us, i1 true), !dbg !2372
  %cmp58.not.us.us.us = icmp slt i32 %11, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us, label %if.end114.us.us.us, label %if.then100.us.us.us, !dbg !2374

if.then100.us.us.us:                              ; preds = %lor.lhs.false46.us.us.us, %lor.lhs.false32.us.us.us, %if.else.us.us.us
  br label %if.end114.us.us.us, !dbg !2375

if.end114.us.us.us:                               ; preds = %lor.lhs.false46.us.us.us, %for.body6.us.us, %lor.lhs.false.us.us.us, %if.then100.us.us.us
  %.sink = phi i8 [ 1, %if.then100.us.us.us ], [ 2, %lor.lhs.false.us.us.us ], [ 2, %for.body6.us.us ], [ 0, %lor.lhs.false46.us.us.us ]
  %arrayidx106.us.us.us = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 0, !dbg !2377
  store i8 %.sink, ptr %arrayidx106.us.us.us, align 1, !dbg !2377
    #dbg_value(i64 1, !2339, !DIExpression(), !2349)
  %indvars.iv.next184 = add nuw nsw i64 %0, 8, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184, !dbg !2352
  %12 = load i8, ptr %arrayidx.us.us.us.1, align 1, !dbg !2352
  %tobool11.not.us.us.us.1 = icmp eq i8 %12, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.1, label %lor.lhs.false.us.us.us.1, label %if.end114.us.us.us.1, !dbg !2354

lor.lhs.false.us.us.us.1:                         ; preds = %if.end114.us.us.us
  %13 = add nsw i64 %0, 7, !dbg !2355
    #dbg_value(i64 %13, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.1 = getelementptr inbounds i8, ptr %nnz, i64 %13, !dbg !2356
  %14 = load i8, ptr %arrayidx13.us.us.us.1, align 1, !dbg !2356
  %tobool15.not.us.us.us.1 = icmp eq i8 %14, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.1, label %if.else.us.us.us.1, label %if.end114.us.us.us.1, !dbg !2357

if.else.us.us.us.1:                               ; preds = %lor.lhs.false.us.us.us.1
  %arrayidx24.us.us.us.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184, !dbg !2358
  %15 = load i8, ptr %arrayidx24.us.us.us.1, align 1, !dbg !2358
  %arrayidx28.us.us.us.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %13, !dbg !2360
  %16 = load i8, ptr %arrayidx28.us.us.us.1, align 1, !dbg !2360
  %cmp30.not.us.us.us.1 = icmp eq i8 %15, %16, !dbg !2361
  br i1 %cmp30.not.us.us.us.1, label %lor.lhs.false32.us.us.us.1, label %if.then100.us.us.us.1, !dbg !2362

lor.lhs.false32.us.us.us.1:                       ; preds = %if.else.us.us.us.1
  %arrayidx35.us.us.us.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184, !dbg !2363
  %17 = load i16, ptr %arrayidx35.us.us.us.1, align 2, !dbg !2363
  %conv37.us.us.us.1 = sext i16 %17 to i32, !dbg !2363
  %arrayidx40.us.us.us.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %13, !dbg !2364
  %18 = load i16, ptr %arrayidx40.us.us.us.1, align 2, !dbg !2364
  %conv42.us.us.us.1 = sext i16 %18 to i32, !dbg !2364
  %sub43.us.us.us.1 = sub nsw i32 %conv37.us.us.us.1, %conv42.us.us.us.1, !dbg !2365
  %19 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1, i1 true), !dbg !2366
  %cmp44.us.us.us.1 = icmp ugt i32 %19, 3, !dbg !2367
  br i1 %cmp44.us.us.us.1, label %if.then100.us.us.us.1, label %lor.lhs.false46.us.us.us.1, !dbg !2368

lor.lhs.false46.us.us.us.1:                       ; preds = %lor.lhs.false32.us.us.us.1
  %arrayidx50.us.us.us.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1, i64 2, !dbg !2369
  %20 = load i16, ptr %arrayidx50.us.us.us.1, align 2, !dbg !2369
  %conv51.us.us.us.1 = sext i16 %20 to i32, !dbg !2369
  %arrayidx55.us.us.us.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1, i64 2, !dbg !2370
  %21 = load i16, ptr %arrayidx55.us.us.us.1, align 2, !dbg !2370
  %conv56.us.us.us.1 = sext i16 %21 to i32, !dbg !2370
  %sub57.us.us.us.1 = sub nsw i32 %conv51.us.us.us.1, %conv56.us.us.us.1, !dbg !2371
  %22 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1, i1 true), !dbg !2372
  %cmp58.not.us.us.us.1 = icmp slt i32 %22, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.1, label %if.end114.us.us.us.1, label %if.then100.us.us.us.1, !dbg !2374

if.then100.us.us.us.1:                            ; preds = %lor.lhs.false46.us.us.us.1, %lor.lhs.false32.us.us.us.1, %if.else.us.us.us.1
  br label %if.end114.us.us.us.1, !dbg !2375

if.end114.us.us.us.1:                             ; preds = %lor.lhs.false46.us.us.us.1, %if.end114.us.us.us, %lor.lhs.false.us.us.us.1, %if.then100.us.us.us.1
  %.sink200 = phi i8 [ 1, %if.then100.us.us.us.1 ], [ 2, %lor.lhs.false.us.us.us.1 ], [ 2, %if.end114.us.us.us ], [ 0, %lor.lhs.false46.us.us.us.1 ]
  %arrayidx106.us.us.us.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 1, !dbg !2377
  store i8 %.sink200, ptr %arrayidx106.us.us.us.1, align 1, !dbg !2377
    #dbg_value(i64 2, !2339, !DIExpression(), !2349)
  %indvars.iv.next184.1 = add nuw nsw i64 %0, 16, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184.1, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.2 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1, !dbg !2352
  %23 = load i8, ptr %arrayidx.us.us.us.2, align 1, !dbg !2352
  %tobool11.not.us.us.us.2 = icmp eq i8 %23, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.2, label %lor.lhs.false.us.us.us.2, label %if.end114.us.us.us.2, !dbg !2354

lor.lhs.false.us.us.us.2:                         ; preds = %if.end114.us.us.us.1
  %24 = add nsw i64 %0, 15, !dbg !2355
    #dbg_value(i64 %24, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.2 = getelementptr inbounds i8, ptr %nnz, i64 %24, !dbg !2356
  %25 = load i8, ptr %arrayidx13.us.us.us.2, align 1, !dbg !2356
  %tobool15.not.us.us.us.2 = icmp eq i8 %25, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.2, label %if.else.us.us.us.2, label %if.end114.us.us.us.2, !dbg !2357

if.else.us.us.us.2:                               ; preds = %lor.lhs.false.us.us.us.2
  %arrayidx24.us.us.us.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1, !dbg !2358
  %26 = load i8, ptr %arrayidx24.us.us.us.2, align 1, !dbg !2358
  %arrayidx28.us.us.us.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %24, !dbg !2360
  %27 = load i8, ptr %arrayidx28.us.us.us.2, align 1, !dbg !2360
  %cmp30.not.us.us.us.2 = icmp eq i8 %26, %27, !dbg !2361
  br i1 %cmp30.not.us.us.us.2, label %lor.lhs.false32.us.us.us.2, label %if.then100.us.us.us.2, !dbg !2362

lor.lhs.false32.us.us.us.2:                       ; preds = %if.else.us.us.us.2
  %arrayidx35.us.us.us.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1, !dbg !2363
  %28 = load i16, ptr %arrayidx35.us.us.us.2, align 2, !dbg !2363
  %conv37.us.us.us.2 = sext i16 %28 to i32, !dbg !2363
  %arrayidx40.us.us.us.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %24, !dbg !2364
  %29 = load i16, ptr %arrayidx40.us.us.us.2, align 2, !dbg !2364
  %conv42.us.us.us.2 = sext i16 %29 to i32, !dbg !2364
  %sub43.us.us.us.2 = sub nsw i32 %conv37.us.us.us.2, %conv42.us.us.us.2, !dbg !2365
  %30 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.2, i1 true), !dbg !2366
  %cmp44.us.us.us.2 = icmp ugt i32 %30, 3, !dbg !2367
  br i1 %cmp44.us.us.us.2, label %if.then100.us.us.us.2, label %lor.lhs.false46.us.us.us.2, !dbg !2368

lor.lhs.false46.us.us.us.2:                       ; preds = %lor.lhs.false32.us.us.us.2
  %arrayidx50.us.us.us.2 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.2, i64 2, !dbg !2369
  %31 = load i16, ptr %arrayidx50.us.us.us.2, align 2, !dbg !2369
  %conv51.us.us.us.2 = sext i16 %31 to i32, !dbg !2369
  %arrayidx55.us.us.us.2 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.2, i64 2, !dbg !2370
  %32 = load i16, ptr %arrayidx55.us.us.us.2, align 2, !dbg !2370
  %conv56.us.us.us.2 = sext i16 %32 to i32, !dbg !2370
  %sub57.us.us.us.2 = sub nsw i32 %conv51.us.us.us.2, %conv56.us.us.us.2, !dbg !2371
  %33 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.2, i1 true), !dbg !2372
  %cmp58.not.us.us.us.2 = icmp slt i32 %33, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.2, label %if.end114.us.us.us.2, label %if.then100.us.us.us.2, !dbg !2374

if.then100.us.us.us.2:                            ; preds = %lor.lhs.false46.us.us.us.2, %lor.lhs.false32.us.us.us.2, %if.else.us.us.us.2
  br label %if.end114.us.us.us.2, !dbg !2375

if.end114.us.us.us.2:                             ; preds = %lor.lhs.false46.us.us.us.2, %if.end114.us.us.us.1, %lor.lhs.false.us.us.us.2, %if.then100.us.us.us.2
  %.sink201 = phi i8 [ 1, %if.then100.us.us.us.2 ], [ 2, %lor.lhs.false.us.us.us.2 ], [ 2, %if.end114.us.us.us.1 ], [ 0, %lor.lhs.false46.us.us.us.2 ]
  %arrayidx106.us.us.us.2 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 2, !dbg !2377
  store i8 %.sink201, ptr %arrayidx106.us.us.us.2, align 1, !dbg !2377
    #dbg_value(i64 3, !2339, !DIExpression(), !2349)
  %indvars.iv.next184.2 = add nuw nsw i64 %0, 24, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184.2, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.3 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.2, !dbg !2352
  %34 = load i8, ptr %arrayidx.us.us.us.3, align 1, !dbg !2352
  %tobool11.not.us.us.us.3 = icmp eq i8 %34, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.3, label %lor.lhs.false.us.us.us.3, label %if.end114.us.us.us.3, !dbg !2354

lor.lhs.false.us.us.us.3:                         ; preds = %if.end114.us.us.us.2
  %35 = add nsw i64 %0, 23, !dbg !2355
    #dbg_value(i64 %35, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.3 = getelementptr inbounds i8, ptr %nnz, i64 %35, !dbg !2356
  %36 = load i8, ptr %arrayidx13.us.us.us.3, align 1, !dbg !2356
  %tobool15.not.us.us.us.3 = icmp eq i8 %36, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.3, label %if.else.us.us.us.3, label %if.end114.us.us.us.3, !dbg !2357

if.else.us.us.us.3:                               ; preds = %lor.lhs.false.us.us.us.3
  %arrayidx24.us.us.us.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.2, !dbg !2358
  %37 = load i8, ptr %arrayidx24.us.us.us.3, align 1, !dbg !2358
  %arrayidx28.us.us.us.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %35, !dbg !2360
  %38 = load i8, ptr %arrayidx28.us.us.us.3, align 1, !dbg !2360
  %cmp30.not.us.us.us.3 = icmp eq i8 %37, %38, !dbg !2361
  br i1 %cmp30.not.us.us.us.3, label %lor.lhs.false32.us.us.us.3, label %if.then100.us.us.us.3, !dbg !2362

lor.lhs.false32.us.us.us.3:                       ; preds = %if.else.us.us.us.3
  %arrayidx35.us.us.us.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.2, !dbg !2363
  %39 = load i16, ptr %arrayidx35.us.us.us.3, align 2, !dbg !2363
  %conv37.us.us.us.3 = sext i16 %39 to i32, !dbg !2363
  %arrayidx40.us.us.us.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %35, !dbg !2364
  %40 = load i16, ptr %arrayidx40.us.us.us.3, align 2, !dbg !2364
  %conv42.us.us.us.3 = sext i16 %40 to i32, !dbg !2364
  %sub43.us.us.us.3 = sub nsw i32 %conv37.us.us.us.3, %conv42.us.us.us.3, !dbg !2365
  %41 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.3, i1 true), !dbg !2366
  %cmp44.us.us.us.3 = icmp ugt i32 %41, 3, !dbg !2367
  br i1 %cmp44.us.us.us.3, label %if.then100.us.us.us.3, label %lor.lhs.false46.us.us.us.3, !dbg !2368

lor.lhs.false46.us.us.us.3:                       ; preds = %lor.lhs.false32.us.us.us.3
  %arrayidx50.us.us.us.3 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.3, i64 2, !dbg !2369
  %42 = load i16, ptr %arrayidx50.us.us.us.3, align 2, !dbg !2369
  %conv51.us.us.us.3 = sext i16 %42 to i32, !dbg !2369
  %arrayidx55.us.us.us.3 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.3, i64 2, !dbg !2370
  %43 = load i16, ptr %arrayidx55.us.us.us.3, align 2, !dbg !2370
  %conv56.us.us.us.3 = sext i16 %43 to i32, !dbg !2370
  %sub57.us.us.us.3 = sub nsw i32 %conv51.us.us.us.3, %conv56.us.us.us.3, !dbg !2371
  %44 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.3, i1 true), !dbg !2372
  %cmp58.not.us.us.us.3 = icmp slt i32 %44, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.3, label %if.end114.us.us.us.3, label %if.then100.us.us.us.3, !dbg !2374

if.then100.us.us.us.3:                            ; preds = %lor.lhs.false46.us.us.us.3, %lor.lhs.false32.us.us.us.3, %if.else.us.us.us.3
  br label %if.end114.us.us.us.3, !dbg !2375

if.end114.us.us.us.3:                             ; preds = %lor.lhs.false46.us.us.us.3, %if.end114.us.us.us.2, %lor.lhs.false.us.us.us.3, %if.then100.us.us.us.3
  %.sink202 = phi i8 [ 1, %if.then100.us.us.us.3 ], [ 2, %lor.lhs.false.us.us.us.3 ], [ 2, %if.end114.us.us.us.2 ], [ 0, %lor.lhs.false46.us.us.us.3 ]
  %arrayidx106.us.us.us.3 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 0, i64 %indvars.iv192, i64 3, !dbg !2377
  store i8 %.sink202, ptr %arrayidx106.us.us.us.3, align 1, !dbg !2377
    #dbg_value(i64 4, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i64 %indvars.iv.next184.2, i64 8), !2342, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2349)
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1, !dbg !2379
    #dbg_value(i64 %indvars.iv.next193, !2337, !DIExpression(), !2348)
  %exitcond195.not = icmp eq i64 %indvars.iv.next193, 4, !dbg !2380
  br i1 %exitcond195.not, label %for.body6.us.us.1, label %for.body6.us.us, !dbg !2381, !llvm.loop !2382

for.body6.us.us.1:                                ; preds = %if.end114.us.us.us.3, %if.end114.us.us.us.3.1
  %indvars.iv192.1 = phi i64 [ %indvars.iv.next193.1, %if.end114.us.us.us.3.1 ], [ 0, %if.end114.us.us.us.3 ]
    #dbg_value(i64 %indvars.iv192.1, !2337, !DIExpression(), !2348)
    #dbg_value(i32 0, !2339, !DIExpression(), !2349)
  %45 = trunc nuw nsw i64 %indvars.iv192.1 to i32, !dbg !2384
  %mul.us.us.1 = shl nuw nsw i32 %45, 3, !dbg !2384
  %add.us.us.1 = add nuw i32 %mul.us.us.1, 12, !dbg !2385
    #dbg_value(i32 %add.us.us.1, !2342, !DIExpression(), !2349)
  %46 = sext i32 %add.us.us.1 to i64, !dbg !2350
    #dbg_value(i64 %46, !2342, !DIExpression(), !2349)
    #dbg_value(i64 0, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.1209 = getelementptr inbounds i8, ptr %nnz, i64 %46, !dbg !2352
  %47 = load i8, ptr %arrayidx.us.us.us.1209, align 1, !dbg !2352
  %tobool11.not.us.us.us.1210 = icmp eq i8 %47, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.1210, label %lor.lhs.false.us.us.us.1213, label %if.end114.us.us.us.1235, !dbg !2354

lor.lhs.false.us.us.us.1213:                      ; preds = %for.body6.us.us.1
  %48 = add nsw i64 %46, -8, !dbg !2355
    #dbg_value(i64 %48, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.1211 = getelementptr inbounds i8, ptr %nnz, i64 %48, !dbg !2356
  %49 = load i8, ptr %arrayidx13.us.us.us.1211, align 1, !dbg !2356
  %tobool15.not.us.us.us.1212 = icmp eq i8 %49, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.1212, label %if.else.us.us.us.1217, label %if.end114.us.us.us.1235, !dbg !2357

if.else.us.us.us.1217:                            ; preds = %lor.lhs.false.us.us.us.1213
  %arrayidx24.us.us.us.1214 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %46, !dbg !2358
  %50 = load i8, ptr %arrayidx24.us.us.us.1214, align 1, !dbg !2358
  %arrayidx28.us.us.us.1215 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %48, !dbg !2360
  %51 = load i8, ptr %arrayidx28.us.us.us.1215, align 1, !dbg !2360
  %cmp30.not.us.us.us.1216 = icmp eq i8 %50, %51, !dbg !2361
  br i1 %cmp30.not.us.us.us.1216, label %lor.lhs.false32.us.us.us.1224, label %if.then100.us.us.us.1232, !dbg !2362

lor.lhs.false32.us.us.us.1224:                    ; preds = %if.else.us.us.us.1217
  %arrayidx35.us.us.us.1218 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %46, !dbg !2363
  %52 = load i16, ptr %arrayidx35.us.us.us.1218, align 2, !dbg !2363
  %conv37.us.us.us.1219 = sext i16 %52 to i32, !dbg !2363
  %arrayidx40.us.us.us.1220 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %48, !dbg !2364
  %53 = load i16, ptr %arrayidx40.us.us.us.1220, align 2, !dbg !2364
  %conv42.us.us.us.1221 = sext i16 %53 to i32, !dbg !2364
  %sub43.us.us.us.1222 = sub nsw i32 %conv37.us.us.us.1219, %conv42.us.us.us.1221, !dbg !2365
  %54 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1222, i1 true), !dbg !2366
  %cmp44.us.us.us.1223 = icmp ugt i32 %54, 3, !dbg !2367
  br i1 %cmp44.us.us.us.1223, label %if.then100.us.us.us.1232, label %lor.lhs.false46.us.us.us.1231, !dbg !2368

lor.lhs.false46.us.us.us.1231:                    ; preds = %lor.lhs.false32.us.us.us.1224
  %arrayidx50.us.us.us.1225 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1218, i64 2, !dbg !2369
  %55 = load i16, ptr %arrayidx50.us.us.us.1225, align 2, !dbg !2369
  %conv51.us.us.us.1226 = sext i16 %55 to i32, !dbg !2369
  %arrayidx55.us.us.us.1227 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1220, i64 2, !dbg !2370
  %56 = load i16, ptr %arrayidx55.us.us.us.1227, align 2, !dbg !2370
  %conv56.us.us.us.1228 = sext i16 %56 to i32, !dbg !2370
  %sub57.us.us.us.1229 = sub nsw i32 %conv51.us.us.us.1226, %conv56.us.us.us.1228, !dbg !2371
  %57 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1229, i1 true), !dbg !2372
  %cmp58.not.us.us.us.1230 = icmp slt i32 %57, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.1230, label %if.end114.us.us.us.1235, label %if.then100.us.us.us.1232, !dbg !2374

if.then100.us.us.us.1232:                         ; preds = %lor.lhs.false46.us.us.us.1231, %lor.lhs.false32.us.us.us.1224, %if.else.us.us.us.1217
  br label %if.end114.us.us.us.1235, !dbg !2375

if.end114.us.us.us.1235:                          ; preds = %if.then100.us.us.us.1232, %lor.lhs.false46.us.us.us.1231, %lor.lhs.false.us.us.us.1213, %for.body6.us.us.1
  %.sink.1 = phi i8 [ 1, %if.then100.us.us.us.1232 ], [ 2, %lor.lhs.false.us.us.us.1213 ], [ 2, %for.body6.us.us.1 ], [ 0, %lor.lhs.false46.us.us.us.1231 ]
  %arrayidx106.us.us.us.1233 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 0, !dbg !2377
  store i8 %.sink.1, ptr %arrayidx106.us.us.us.1233, align 1, !dbg !2377
    #dbg_value(i64 1, !2339, !DIExpression(), !2349)
  %indvars.iv.next184.1234 = or disjoint i64 %46, 1, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184.1234, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.1.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1234, !dbg !2352
  %58 = load i8, ptr %arrayidx.us.us.us.1.1, align 1, !dbg !2352
  %tobool11.not.us.us.us.1.1 = icmp eq i8 %58, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.1.1, label %lor.lhs.false.us.us.us.1.1, label %if.end114.us.us.us.1.1, !dbg !2354

lor.lhs.false.us.us.us.1.1:                       ; preds = %if.end114.us.us.us.1235
  %59 = add nsw i64 %46, -7, !dbg !2355
    #dbg_value(i64 %59, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.1.1 = getelementptr inbounds i8, ptr %nnz, i64 %59, !dbg !2356
  %60 = load i8, ptr %arrayidx13.us.us.us.1.1, align 1, !dbg !2356
  %tobool15.not.us.us.us.1.1 = icmp eq i8 %60, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.1.1, label %if.else.us.us.us.1.1, label %if.end114.us.us.us.1.1, !dbg !2357

if.else.us.us.us.1.1:                             ; preds = %lor.lhs.false.us.us.us.1.1
  %arrayidx24.us.us.us.1.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1234, !dbg !2358
  %61 = load i8, ptr %arrayidx24.us.us.us.1.1, align 1, !dbg !2358
  %arrayidx28.us.us.us.1.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %59, !dbg !2360
  %62 = load i8, ptr %arrayidx28.us.us.us.1.1, align 1, !dbg !2360
  %cmp30.not.us.us.us.1.1 = icmp eq i8 %61, %62, !dbg !2361
  br i1 %cmp30.not.us.us.us.1.1, label %lor.lhs.false32.us.us.us.1.1, label %if.then100.us.us.us.1.1, !dbg !2362

lor.lhs.false32.us.us.us.1.1:                     ; preds = %if.else.us.us.us.1.1
  %arrayidx35.us.us.us.1.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1234, !dbg !2363
  %63 = load i16, ptr %arrayidx35.us.us.us.1.1, align 2, !dbg !2363
  %conv37.us.us.us.1.1 = sext i16 %63 to i32, !dbg !2363
  %arrayidx40.us.us.us.1.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %59, !dbg !2364
  %64 = load i16, ptr %arrayidx40.us.us.us.1.1, align 2, !dbg !2364
  %conv42.us.us.us.1.1 = sext i16 %64 to i32, !dbg !2364
  %sub43.us.us.us.1.1 = sub nsw i32 %conv37.us.us.us.1.1, %conv42.us.us.us.1.1, !dbg !2365
  %65 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.1.1, i1 true), !dbg !2366
  %cmp44.us.us.us.1.1 = icmp ugt i32 %65, 3, !dbg !2367
  br i1 %cmp44.us.us.us.1.1, label %if.then100.us.us.us.1.1, label %lor.lhs.false46.us.us.us.1.1, !dbg !2368

lor.lhs.false46.us.us.us.1.1:                     ; preds = %lor.lhs.false32.us.us.us.1.1
  %arrayidx50.us.us.us.1.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.1.1, i64 2, !dbg !2369
  %66 = load i16, ptr %arrayidx50.us.us.us.1.1, align 2, !dbg !2369
  %conv51.us.us.us.1.1 = sext i16 %66 to i32, !dbg !2369
  %arrayidx55.us.us.us.1.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.1.1, i64 2, !dbg !2370
  %67 = load i16, ptr %arrayidx55.us.us.us.1.1, align 2, !dbg !2370
  %conv56.us.us.us.1.1 = sext i16 %67 to i32, !dbg !2370
  %sub57.us.us.us.1.1 = sub nsw i32 %conv51.us.us.us.1.1, %conv56.us.us.us.1.1, !dbg !2371
  %68 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.1.1, i1 true), !dbg !2372
  %cmp58.not.us.us.us.1.1 = icmp slt i32 %68, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.1.1, label %if.end114.us.us.us.1.1, label %if.then100.us.us.us.1.1, !dbg !2374

if.then100.us.us.us.1.1:                          ; preds = %lor.lhs.false46.us.us.us.1.1, %lor.lhs.false32.us.us.us.1.1, %if.else.us.us.us.1.1
  br label %if.end114.us.us.us.1.1, !dbg !2375

if.end114.us.us.us.1.1:                           ; preds = %if.then100.us.us.us.1.1, %lor.lhs.false46.us.us.us.1.1, %lor.lhs.false.us.us.us.1.1, %if.end114.us.us.us.1235
  %.sink200.1 = phi i8 [ 1, %if.then100.us.us.us.1.1 ], [ 2, %lor.lhs.false.us.us.us.1.1 ], [ 2, %if.end114.us.us.us.1235 ], [ 0, %lor.lhs.false46.us.us.us.1.1 ]
  %arrayidx106.us.us.us.1.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 1, !dbg !2377
  store i8 %.sink200.1, ptr %arrayidx106.us.us.us.1.1, align 1, !dbg !2377
    #dbg_value(i64 2, !2339, !DIExpression(), !2349)
  %indvars.iv.next184.1.1 = or disjoint i64 %46, 2, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184.1.1, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.2.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.1.1, !dbg !2352
  %69 = load i8, ptr %arrayidx.us.us.us.2.1, align 1, !dbg !2352
  %tobool11.not.us.us.us.2.1 = icmp eq i8 %69, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.2.1, label %lor.lhs.false.us.us.us.2.1, label %if.end114.us.us.us.2.1, !dbg !2354

lor.lhs.false.us.us.us.2.1:                       ; preds = %if.end114.us.us.us.1.1
  %70 = add nsw i64 %46, -6, !dbg !2355
    #dbg_value(i64 %70, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.2.1 = getelementptr inbounds i8, ptr %nnz, i64 %70, !dbg !2356
  %71 = load i8, ptr %arrayidx13.us.us.us.2.1, align 1, !dbg !2356
  %tobool15.not.us.us.us.2.1 = icmp eq i8 %71, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.2.1, label %if.else.us.us.us.2.1, label %if.end114.us.us.us.2.1, !dbg !2357

if.else.us.us.us.2.1:                             ; preds = %lor.lhs.false.us.us.us.2.1
  %arrayidx24.us.us.us.2.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.1.1, !dbg !2358
  %72 = load i8, ptr %arrayidx24.us.us.us.2.1, align 1, !dbg !2358
  %arrayidx28.us.us.us.2.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %70, !dbg !2360
  %73 = load i8, ptr %arrayidx28.us.us.us.2.1, align 1, !dbg !2360
  %cmp30.not.us.us.us.2.1 = icmp eq i8 %72, %73, !dbg !2361
  br i1 %cmp30.not.us.us.us.2.1, label %lor.lhs.false32.us.us.us.2.1, label %if.then100.us.us.us.2.1, !dbg !2362

lor.lhs.false32.us.us.us.2.1:                     ; preds = %if.else.us.us.us.2.1
  %arrayidx35.us.us.us.2.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.1.1, !dbg !2363
  %74 = load i16, ptr %arrayidx35.us.us.us.2.1, align 2, !dbg !2363
  %conv37.us.us.us.2.1 = sext i16 %74 to i32, !dbg !2363
  %arrayidx40.us.us.us.2.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %70, !dbg !2364
  %75 = load i16, ptr %arrayidx40.us.us.us.2.1, align 2, !dbg !2364
  %conv42.us.us.us.2.1 = sext i16 %75 to i32, !dbg !2364
  %sub43.us.us.us.2.1 = sub nsw i32 %conv37.us.us.us.2.1, %conv42.us.us.us.2.1, !dbg !2365
  %76 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.2.1, i1 true), !dbg !2366
  %cmp44.us.us.us.2.1 = icmp ugt i32 %76, 3, !dbg !2367
  br i1 %cmp44.us.us.us.2.1, label %if.then100.us.us.us.2.1, label %lor.lhs.false46.us.us.us.2.1, !dbg !2368

lor.lhs.false46.us.us.us.2.1:                     ; preds = %lor.lhs.false32.us.us.us.2.1
  %arrayidx50.us.us.us.2.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.2.1, i64 2, !dbg !2369
  %77 = load i16, ptr %arrayidx50.us.us.us.2.1, align 2, !dbg !2369
  %conv51.us.us.us.2.1 = sext i16 %77 to i32, !dbg !2369
  %arrayidx55.us.us.us.2.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.2.1, i64 2, !dbg !2370
  %78 = load i16, ptr %arrayidx55.us.us.us.2.1, align 2, !dbg !2370
  %conv56.us.us.us.2.1 = sext i16 %78 to i32, !dbg !2370
  %sub57.us.us.us.2.1 = sub nsw i32 %conv51.us.us.us.2.1, %conv56.us.us.us.2.1, !dbg !2371
  %79 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.2.1, i1 true), !dbg !2372
  %cmp58.not.us.us.us.2.1 = icmp slt i32 %79, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.2.1, label %if.end114.us.us.us.2.1, label %if.then100.us.us.us.2.1, !dbg !2374

if.then100.us.us.us.2.1:                          ; preds = %lor.lhs.false46.us.us.us.2.1, %lor.lhs.false32.us.us.us.2.1, %if.else.us.us.us.2.1
  br label %if.end114.us.us.us.2.1, !dbg !2375

if.end114.us.us.us.2.1:                           ; preds = %if.then100.us.us.us.2.1, %lor.lhs.false46.us.us.us.2.1, %lor.lhs.false.us.us.us.2.1, %if.end114.us.us.us.1.1
  %.sink201.1 = phi i8 [ 1, %if.then100.us.us.us.2.1 ], [ 2, %lor.lhs.false.us.us.us.2.1 ], [ 2, %if.end114.us.us.us.1.1 ], [ 0, %lor.lhs.false46.us.us.us.2.1 ]
  %arrayidx106.us.us.us.2.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 2, !dbg !2377
  store i8 %.sink201.1, ptr %arrayidx106.us.us.us.2.1, align 1, !dbg !2377
    #dbg_value(i64 3, !2339, !DIExpression(), !2349)
  %indvars.iv.next184.2.1 = or disjoint i64 %46, 3, !dbg !2378
    #dbg_value(i64 %indvars.iv.next184.2.1, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.us.us.us.3.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next184.2.1, !dbg !2352
  %80 = load i8, ptr %arrayidx.us.us.us.3.1, align 1, !dbg !2352
  %tobool11.not.us.us.us.3.1 = icmp eq i8 %80, 0, !dbg !2352
  br i1 %tobool11.not.us.us.us.3.1, label %lor.lhs.false.us.us.us.3.1, label %if.end114.us.us.us.3.1, !dbg !2354

lor.lhs.false.us.us.us.3.1:                       ; preds = %if.end114.us.us.us.2.1
  %81 = add nsw i64 %46, -5, !dbg !2355
    #dbg_value(i64 %81, !2343, !DIExpression(), !2351)
  %arrayidx13.us.us.us.3.1 = getelementptr inbounds i8, ptr %nnz, i64 %81, !dbg !2356
  %82 = load i8, ptr %arrayidx13.us.us.us.3.1, align 1, !dbg !2356
  %tobool15.not.us.us.us.3.1 = icmp eq i8 %82, 0, !dbg !2356
  br i1 %tobool15.not.us.us.us.3.1, label %if.else.us.us.us.3.1, label %if.end114.us.us.us.3.1, !dbg !2357

if.else.us.us.us.3.1:                             ; preds = %lor.lhs.false.us.us.us.3.1
  %arrayidx24.us.us.us.3.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next184.2.1, !dbg !2358
  %83 = load i8, ptr %arrayidx24.us.us.us.3.1, align 1, !dbg !2358
  %arrayidx28.us.us.us.3.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %81, !dbg !2360
  %84 = load i8, ptr %arrayidx28.us.us.us.3.1, align 1, !dbg !2360
  %cmp30.not.us.us.us.3.1 = icmp eq i8 %83, %84, !dbg !2361
  br i1 %cmp30.not.us.us.us.3.1, label %lor.lhs.false32.us.us.us.3.1, label %if.then100.us.us.us.3.1, !dbg !2362

lor.lhs.false32.us.us.us.3.1:                     ; preds = %if.else.us.us.us.3.1
  %arrayidx35.us.us.us.3.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next184.2.1, !dbg !2363
  %85 = load i16, ptr %arrayidx35.us.us.us.3.1, align 2, !dbg !2363
  %conv37.us.us.us.3.1 = sext i16 %85 to i32, !dbg !2363
  %arrayidx40.us.us.us.3.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %81, !dbg !2364
  %86 = load i16, ptr %arrayidx40.us.us.us.3.1, align 2, !dbg !2364
  %conv42.us.us.us.3.1 = sext i16 %86 to i32, !dbg !2364
  %sub43.us.us.us.3.1 = sub nsw i32 %conv37.us.us.us.3.1, %conv42.us.us.us.3.1, !dbg !2365
  %87 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us.3.1, i1 true), !dbg !2366
  %cmp44.us.us.us.3.1 = icmp ugt i32 %87, 3, !dbg !2367
  br i1 %cmp44.us.us.us.3.1, label %if.then100.us.us.us.3.1, label %lor.lhs.false46.us.us.us.3.1, !dbg !2368

lor.lhs.false46.us.us.us.3.1:                     ; preds = %lor.lhs.false32.us.us.us.3.1
  %arrayidx50.us.us.us.3.1 = getelementptr inbounds i8, ptr %arrayidx35.us.us.us.3.1, i64 2, !dbg !2369
  %88 = load i16, ptr %arrayidx50.us.us.us.3.1, align 2, !dbg !2369
  %conv51.us.us.us.3.1 = sext i16 %88 to i32, !dbg !2369
  %arrayidx55.us.us.us.3.1 = getelementptr inbounds i8, ptr %arrayidx40.us.us.us.3.1, i64 2, !dbg !2370
  %89 = load i16, ptr %arrayidx55.us.us.us.3.1, align 2, !dbg !2370
  %conv56.us.us.us.3.1 = sext i16 %89 to i32, !dbg !2370
  %sub57.us.us.us.3.1 = sub nsw i32 %conv51.us.us.us.3.1, %conv56.us.us.us.3.1, !dbg !2371
  %90 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us.3.1, i1 true), !dbg !2372
  %cmp58.not.us.us.us.3.1 = icmp slt i32 %90, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.us.us.us.3.1, label %if.end114.us.us.us.3.1, label %if.then100.us.us.us.3.1, !dbg !2374

if.then100.us.us.us.3.1:                          ; preds = %lor.lhs.false46.us.us.us.3.1, %lor.lhs.false32.us.us.us.3.1, %if.else.us.us.us.3.1
  br label %if.end114.us.us.us.3.1, !dbg !2375

if.end114.us.us.us.3.1:                           ; preds = %if.then100.us.us.us.3.1, %lor.lhs.false46.us.us.us.3.1, %lor.lhs.false.us.us.us.3.1, %if.end114.us.us.us.2.1
  %.sink202.1 = phi i8 [ 1, %if.then100.us.us.us.3.1 ], [ 2, %lor.lhs.false.us.us.us.3.1 ], [ 2, %if.end114.us.us.us.2.1 ], [ 0, %lor.lhs.false46.us.us.us.3.1 ]
  %arrayidx106.us.us.us.3.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 1, i64 %indvars.iv192.1, i64 3, !dbg !2377
  store i8 %.sink202.1, ptr %arrayidx106.us.us.us.3.1, align 1, !dbg !2377
    #dbg_value(i64 4, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i64 %indvars.iv.next184.2.1, i64 1), !2342, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2349)
  %indvars.iv.next193.1 = add nuw nsw i64 %indvars.iv192.1, 1, !dbg !2379
    #dbg_value(i64 %indvars.iv.next193.1, !2337, !DIExpression(), !2348)
  %exitcond195.not.1 = icmp eq i64 %indvars.iv.next193.1, 4, !dbg !2380
  br i1 %exitcond195.not.1, label %for.cond.cleanup, label %for.body6.us.us.1, !dbg !2381, !llvm.loop !2382

for.cond.cleanup:                                 ; preds = %for.cond.cleanup5.split, %if.end114.us.us.us.3.1
  ret void, !dbg !2386

for.body:                                         ; preds = %entry, %for.cond.cleanup5.split
  %tobool.not = phi i1 [ false, %for.cond.cleanup5.split ], [ true, %entry ]
  %indvars.iv180 = phi i64 [ 1, %for.cond.cleanup5.split ], [ 0, %entry ]
    #dbg_value(i64 %indvars.iv180, !2331, !DIExpression(), !2347)
    #dbg_value(i32 poison, !2333, !DIExpression(), !2387)
    #dbg_value(i32 poison, !2336, !DIExpression(), !2387)
    #dbg_value(i32 0, !2337, !DIExpression(), !2348)
  %91 = select i1 %tobool.not, i32 0, i32 3
  %92 = select i1 %tobool.not, i64 8, i64 1, !dbg !2381
  %93 = select i1 %tobool.not, i64 -1, i64 -8, !dbg !2381
  br label %for.body6, !dbg !2381

for.cond.cleanup5.split:                          ; preds = %if.end114.3
    #dbg_value(i64 %indvars.iv180, !2331, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2347)
  br i1 %tobool.not, label %for.body, label %for.cond.cleanup, !dbg !2388, !llvm.loop !2389

for.body6:                                        ; preds = %for.body, %if.end114.3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next178, %if.end114.3 ]
    #dbg_value(i64 %indvars.iv, !2337, !DIExpression(), !2348)
    #dbg_value(i32 0, !2339, !DIExpression(), !2349)
  %94 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2384
  %mul = shl nuw nsw i32 %94, %91, !dbg !2384
  %add = add nuw i32 %mul, 12, !dbg !2385
    #dbg_value(i32 %add, !2342, !DIExpression(), !2349)
  %95 = sext i32 %add to i64, !dbg !2350
    #dbg_value(i64 %95, !2342, !DIExpression(), !2349)
    #dbg_value(i64 0, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx = getelementptr inbounds i8, ptr %nnz, i64 %95, !dbg !2352
  %96 = load i8, ptr %arrayidx, align 1, !dbg !2352
  %tobool11.not = icmp eq i8 %96, 0, !dbg !2352
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end114, !dbg !2354

lor.lhs.false:                                    ; preds = %for.body6
  %97 = add nsw i64 %93, %95, !dbg !2355
    #dbg_value(i64 %97, !2343, !DIExpression(), !2351)
  %arrayidx13 = getelementptr inbounds i8, ptr %nnz, i64 %97, !dbg !2356
  %98 = load i8, ptr %arrayidx13, align 1, !dbg !2356
  %tobool15.not = icmp eq i8 %98, 0, !dbg !2356
  br i1 %tobool15.not, label %if.else, label %if.end114, !dbg !2357

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %95, !dbg !2358
  %99 = load i8, ptr %arrayidx24, align 1, !dbg !2358
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %97, !dbg !2360
  %100 = load i8, ptr %arrayidx28, align 1, !dbg !2360
  %cmp30.not = icmp eq i8 %99, %100, !dbg !2361
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.end114, !dbg !2362

lor.lhs.false32:                                  ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %95, !dbg !2363
  %101 = load i16, ptr %arrayidx35, align 2, !dbg !2363
  %conv37 = sext i16 %101 to i32, !dbg !2363
  %arrayidx40 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %97, !dbg !2364
  %102 = load i16, ptr %arrayidx40, align 2, !dbg !2364
  %conv42 = sext i16 %102 to i32, !dbg !2364
  %sub43 = sub nsw i32 %conv37, %conv42, !dbg !2365
  %103 = tail call i32 @llvm.abs.i32(i32 %sub43, i1 true), !dbg !2366
  %cmp44 = icmp ugt i32 %103, 3, !dbg !2367
  br i1 %cmp44, label %if.end114, label %lor.lhs.false46, !dbg !2368

lor.lhs.false46:                                  ; preds = %lor.lhs.false32
  %arrayidx50 = getelementptr inbounds i8, ptr %arrayidx35, i64 2, !dbg !2369
  %104 = load i16, ptr %arrayidx50, align 2, !dbg !2369
  %conv51 = sext i16 %104 to i32, !dbg !2369
  %arrayidx55 = getelementptr inbounds i8, ptr %arrayidx40, i64 2, !dbg !2370
  %105 = load i16, ptr %arrayidx55, align 2, !dbg !2370
  %conv56 = sext i16 %105 to i32, !dbg !2370
  %sub57 = sub nsw i32 %conv51, %conv56, !dbg !2371
  %106 = tail call i32 @llvm.abs.i32(i32 %sub57, i1 true), !dbg !2372
  %cmp58.not = icmp slt i32 %106, %mvy_limit, !dbg !2373
  br i1 %cmp58.not, label %lor.lhs.false60, label %if.end114, !dbg !2374

lor.lhs.false60:                                  ; preds = %lor.lhs.false46
  %arrayidx64 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %95, !dbg !2391
  %107 = load i8, ptr %arrayidx64, align 1, !dbg !2391
  %arrayidx68 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %97, !dbg !2392
  %108 = load i8, ptr %arrayidx68, align 1, !dbg !2392
  %cmp70.not = icmp eq i8 %107, %108, !dbg !2393
  br i1 %cmp70.not, label %lor.lhs.false72, label %if.end114, !dbg !2394

lor.lhs.false72:                                  ; preds = %lor.lhs.false60
  %arrayidx75 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %95, !dbg !2395
  %109 = load i16, ptr %arrayidx75, align 2, !dbg !2395
  %conv77 = sext i16 %109 to i32, !dbg !2395
  %arrayidx80 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %97, !dbg !2396
  %110 = load i16, ptr %arrayidx80, align 2, !dbg !2396
  %conv82 = sext i16 %110 to i32, !dbg !2396
  %sub83 = sub nsw i32 %conv77, %conv82, !dbg !2397
  %111 = tail call i32 @llvm.abs.i32(i32 %sub83, i1 true), !dbg !2398
  %cmp84 = icmp ugt i32 %111, 3, !dbg !2399
  br i1 %cmp84, label %if.end114, label %lor.lhs.false86, !dbg !2400

lor.lhs.false86:                                  ; preds = %lor.lhs.false72
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx75, i64 2, !dbg !2401
  %112 = load i16, ptr %arrayidx90, align 2, !dbg !2401
  %conv91 = sext i16 %112 to i32, !dbg !2401
  %arrayidx95 = getelementptr inbounds i8, ptr %arrayidx80, i64 2, !dbg !2402
  %113 = load i16, ptr %arrayidx95, align 2, !dbg !2402
  %conv96 = sext i16 %113 to i32, !dbg !2402
  %sub97 = sub nsw i32 %conv91, %conv96, !dbg !2403
  %114 = tail call i32 @llvm.abs.i32(i32 %sub97, i1 true), !dbg !2404
  %cmp98.not = icmp uge i32 %114, %mvy_limit, !dbg !2405
  %spec.select = zext i1 %cmp98.not to i8, !dbg !2406
  br label %if.end114, !dbg !2406

if.end114:                                        ; preds = %lor.lhs.false86, %if.else, %lor.lhs.false32, %lor.lhs.false46, %lor.lhs.false60, %lor.lhs.false72, %for.body6, %lor.lhs.false
  %.sink203 = phi i8 [ 2, %lor.lhs.false ], [ 2, %for.body6 ], [ 1, %lor.lhs.false72 ], [ 1, %lor.lhs.false60 ], [ 1, %lor.lhs.false46 ], [ 1, %lor.lhs.false32 ], [ 1, %if.else ], [ %spec.select, %lor.lhs.false86 ]
  %arrayidx106 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 0, !dbg !2377
  store i8 %.sink203, ptr %arrayidx106, align 1, !dbg !2377
    #dbg_value(i64 1, !2339, !DIExpression(), !2349)
  %indvars.iv.next = add nuw nsw i64 %92, %95, !dbg !2378
    #dbg_value(i64 %indvars.iv.next, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.1 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next, !dbg !2352
  %115 = load i8, ptr %arrayidx.1, align 1, !dbg !2352
  %tobool11.not.1 = icmp eq i8 %115, 0, !dbg !2352
  br i1 %tobool11.not.1, label %lor.lhs.false.1, label %if.end114.1, !dbg !2354

lor.lhs.false.1:                                  ; preds = %if.end114
  %116 = add nsw i64 %indvars.iv.next, %93, !dbg !2355
    #dbg_value(i64 %116, !2343, !DIExpression(), !2351)
  %arrayidx13.1 = getelementptr inbounds i8, ptr %nnz, i64 %116, !dbg !2356
  %117 = load i8, ptr %arrayidx13.1, align 1, !dbg !2356
  %tobool15.not.1 = icmp eq i8 %117, 0, !dbg !2356
  br i1 %tobool15.not.1, label %if.else.1, label %if.end114.1, !dbg !2357

if.else.1:                                        ; preds = %lor.lhs.false.1
  %arrayidx24.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next, !dbg !2358
  %118 = load i8, ptr %arrayidx24.1, align 1, !dbg !2358
  %arrayidx28.1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %116, !dbg !2360
  %119 = load i8, ptr %arrayidx28.1, align 1, !dbg !2360
  %cmp30.not.1 = icmp eq i8 %118, %119, !dbg !2361
  br i1 %cmp30.not.1, label %lor.lhs.false32.1, label %if.then100.1, !dbg !2362

lor.lhs.false32.1:                                ; preds = %if.else.1
  %arrayidx35.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next, !dbg !2363
  %120 = load i16, ptr %arrayidx35.1, align 2, !dbg !2363
  %conv37.1 = sext i16 %120 to i32, !dbg !2363
  %arrayidx40.1 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %116, !dbg !2364
  %121 = load i16, ptr %arrayidx40.1, align 2, !dbg !2364
  %conv42.1 = sext i16 %121 to i32, !dbg !2364
  %sub43.1 = sub nsw i32 %conv37.1, %conv42.1, !dbg !2365
  %122 = tail call i32 @llvm.abs.i32(i32 %sub43.1, i1 true), !dbg !2366
  %cmp44.1 = icmp ugt i32 %122, 3, !dbg !2367
  br i1 %cmp44.1, label %if.then100.1, label %lor.lhs.false46.1, !dbg !2368

lor.lhs.false46.1:                                ; preds = %lor.lhs.false32.1
  %arrayidx50.1 = getelementptr inbounds i8, ptr %arrayidx35.1, i64 2, !dbg !2369
  %123 = load i16, ptr %arrayidx50.1, align 2, !dbg !2369
  %conv51.1 = sext i16 %123 to i32, !dbg !2369
  %arrayidx55.1 = getelementptr inbounds i8, ptr %arrayidx40.1, i64 2, !dbg !2370
  %124 = load i16, ptr %arrayidx55.1, align 2, !dbg !2370
  %conv56.1 = sext i16 %124 to i32, !dbg !2370
  %sub57.1 = sub nsw i32 %conv51.1, %conv56.1, !dbg !2371
  %125 = tail call i32 @llvm.abs.i32(i32 %sub57.1, i1 true), !dbg !2372
  %cmp58.not.1 = icmp slt i32 %125, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.1, label %lor.lhs.false60.1, label %if.then100.1, !dbg !2374

lor.lhs.false60.1:                                ; preds = %lor.lhs.false46.1
  %arrayidx64.1 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next, !dbg !2391
  %126 = load i8, ptr %arrayidx64.1, align 1, !dbg !2391
  %arrayidx68.1 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %116, !dbg !2392
  %127 = load i8, ptr %arrayidx68.1, align 1, !dbg !2392
  %cmp70.not.1 = icmp eq i8 %126, %127, !dbg !2393
  br i1 %cmp70.not.1, label %lor.lhs.false72.1, label %if.then100.1, !dbg !2394

lor.lhs.false72.1:                                ; preds = %lor.lhs.false60.1
  %arrayidx75.1 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next, !dbg !2395
  %128 = load i16, ptr %arrayidx75.1, align 2, !dbg !2395
  %conv77.1 = sext i16 %128 to i32, !dbg !2395
  %arrayidx80.1 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %116, !dbg !2396
  %129 = load i16, ptr %arrayidx80.1, align 2, !dbg !2396
  %conv82.1 = sext i16 %129 to i32, !dbg !2396
  %sub83.1 = sub nsw i32 %conv77.1, %conv82.1, !dbg !2397
  %130 = tail call i32 @llvm.abs.i32(i32 %sub83.1, i1 true), !dbg !2398
  %cmp84.1 = icmp ugt i32 %130, 3, !dbg !2399
  br i1 %cmp84.1, label %if.then100.1, label %lor.lhs.false86.1, !dbg !2400

lor.lhs.false86.1:                                ; preds = %lor.lhs.false72.1
  %arrayidx90.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 2, !dbg !2401
  %131 = load i16, ptr %arrayidx90.1, align 2, !dbg !2401
  %conv91.1 = sext i16 %131 to i32, !dbg !2401
  %arrayidx95.1 = getelementptr inbounds i8, ptr %arrayidx80.1, i64 2, !dbg !2402
  %132 = load i16, ptr %arrayidx95.1, align 2, !dbg !2402
  %conv96.1 = sext i16 %132 to i32, !dbg !2402
  %sub97.1 = sub nsw i32 %conv91.1, %conv96.1, !dbg !2403
  %133 = tail call i32 @llvm.abs.i32(i32 %sub97.1, i1 true), !dbg !2404
  %cmp98.not.1 = icmp ult i32 %133, %mvy_limit, !dbg !2405
  br i1 %cmp98.not.1, label %if.end114.1, label %if.then100.1, !dbg !2406

if.then100.1:                                     ; preds = %lor.lhs.false86.1, %lor.lhs.false72.1, %lor.lhs.false60.1, %lor.lhs.false46.1, %lor.lhs.false32.1, %if.else.1
  br label %if.end114.1, !dbg !2375

if.end114.1:                                      ; preds = %lor.lhs.false86.1, %if.end114, %lor.lhs.false.1, %if.then100.1
  %.sink204 = phi i8 [ 1, %if.then100.1 ], [ 2, %lor.lhs.false.1 ], [ 2, %if.end114 ], [ 0, %lor.lhs.false86.1 ]
  %arrayidx106.1 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 1, !dbg !2377
  store i8 %.sink204, ptr %arrayidx106.1, align 1, !dbg !2377
    #dbg_value(i64 2, !2339, !DIExpression(), !2349)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, %92, !dbg !2378
    #dbg_value(i64 %indvars.iv.next.1, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.2 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next.1, !dbg !2352
  %134 = load i8, ptr %arrayidx.2, align 1, !dbg !2352
  %tobool11.not.2 = icmp eq i8 %134, 0, !dbg !2352
  br i1 %tobool11.not.2, label %lor.lhs.false.2, label %if.end114.2, !dbg !2354

lor.lhs.false.2:                                  ; preds = %if.end114.1
  %135 = add nsw i64 %indvars.iv.next.1, %93, !dbg !2355
    #dbg_value(i64 %135, !2343, !DIExpression(), !2351)
  %arrayidx13.2 = getelementptr inbounds i8, ptr %nnz, i64 %135, !dbg !2356
  %136 = load i8, ptr %arrayidx13.2, align 1, !dbg !2356
  %tobool15.not.2 = icmp eq i8 %136, 0, !dbg !2356
  br i1 %tobool15.not.2, label %if.else.2, label %if.end114.2, !dbg !2357

if.else.2:                                        ; preds = %lor.lhs.false.2
  %arrayidx24.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next.1, !dbg !2358
  %137 = load i8, ptr %arrayidx24.2, align 1, !dbg !2358
  %arrayidx28.2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %135, !dbg !2360
  %138 = load i8, ptr %arrayidx28.2, align 1, !dbg !2360
  %cmp30.not.2 = icmp eq i8 %137, %138, !dbg !2361
  br i1 %cmp30.not.2, label %lor.lhs.false32.2, label %if.then100.2, !dbg !2362

lor.lhs.false32.2:                                ; preds = %if.else.2
  %arrayidx35.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next.1, !dbg !2363
  %139 = load i16, ptr %arrayidx35.2, align 2, !dbg !2363
  %conv37.2 = sext i16 %139 to i32, !dbg !2363
  %arrayidx40.2 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %135, !dbg !2364
  %140 = load i16, ptr %arrayidx40.2, align 2, !dbg !2364
  %conv42.2 = sext i16 %140 to i32, !dbg !2364
  %sub43.2 = sub nsw i32 %conv37.2, %conv42.2, !dbg !2365
  %141 = tail call i32 @llvm.abs.i32(i32 %sub43.2, i1 true), !dbg !2366
  %cmp44.2 = icmp ugt i32 %141, 3, !dbg !2367
  br i1 %cmp44.2, label %if.then100.2, label %lor.lhs.false46.2, !dbg !2368

lor.lhs.false46.2:                                ; preds = %lor.lhs.false32.2
  %arrayidx50.2 = getelementptr inbounds i8, ptr %arrayidx35.2, i64 2, !dbg !2369
  %142 = load i16, ptr %arrayidx50.2, align 2, !dbg !2369
  %conv51.2 = sext i16 %142 to i32, !dbg !2369
  %arrayidx55.2 = getelementptr inbounds i8, ptr %arrayidx40.2, i64 2, !dbg !2370
  %143 = load i16, ptr %arrayidx55.2, align 2, !dbg !2370
  %conv56.2 = sext i16 %143 to i32, !dbg !2370
  %sub57.2 = sub nsw i32 %conv51.2, %conv56.2, !dbg !2371
  %144 = tail call i32 @llvm.abs.i32(i32 %sub57.2, i1 true), !dbg !2372
  %cmp58.not.2 = icmp slt i32 %144, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.2, label %lor.lhs.false60.2, label %if.then100.2, !dbg !2374

lor.lhs.false60.2:                                ; preds = %lor.lhs.false46.2
  %arrayidx64.2 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next.1, !dbg !2391
  %145 = load i8, ptr %arrayidx64.2, align 1, !dbg !2391
  %arrayidx68.2 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %135, !dbg !2392
  %146 = load i8, ptr %arrayidx68.2, align 1, !dbg !2392
  %cmp70.not.2 = icmp eq i8 %145, %146, !dbg !2393
  br i1 %cmp70.not.2, label %lor.lhs.false72.2, label %if.then100.2, !dbg !2394

lor.lhs.false72.2:                                ; preds = %lor.lhs.false60.2
  %arrayidx75.2 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next.1, !dbg !2395
  %147 = load i16, ptr %arrayidx75.2, align 2, !dbg !2395
  %conv77.2 = sext i16 %147 to i32, !dbg !2395
  %arrayidx80.2 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %135, !dbg !2396
  %148 = load i16, ptr %arrayidx80.2, align 2, !dbg !2396
  %conv82.2 = sext i16 %148 to i32, !dbg !2396
  %sub83.2 = sub nsw i32 %conv77.2, %conv82.2, !dbg !2397
  %149 = tail call i32 @llvm.abs.i32(i32 %sub83.2, i1 true), !dbg !2398
  %cmp84.2 = icmp ugt i32 %149, 3, !dbg !2399
  br i1 %cmp84.2, label %if.then100.2, label %lor.lhs.false86.2, !dbg !2400

lor.lhs.false86.2:                                ; preds = %lor.lhs.false72.2
  %arrayidx90.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 2, !dbg !2401
  %150 = load i16, ptr %arrayidx90.2, align 2, !dbg !2401
  %conv91.2 = sext i16 %150 to i32, !dbg !2401
  %arrayidx95.2 = getelementptr inbounds i8, ptr %arrayidx80.2, i64 2, !dbg !2402
  %151 = load i16, ptr %arrayidx95.2, align 2, !dbg !2402
  %conv96.2 = sext i16 %151 to i32, !dbg !2402
  %sub97.2 = sub nsw i32 %conv91.2, %conv96.2, !dbg !2403
  %152 = tail call i32 @llvm.abs.i32(i32 %sub97.2, i1 true), !dbg !2404
  %cmp98.not.2 = icmp ult i32 %152, %mvy_limit, !dbg !2405
  br i1 %cmp98.not.2, label %if.end114.2, label %if.then100.2, !dbg !2406

if.then100.2:                                     ; preds = %lor.lhs.false86.2, %lor.lhs.false72.2, %lor.lhs.false60.2, %lor.lhs.false46.2, %lor.lhs.false32.2, %if.else.2
  br label %if.end114.2, !dbg !2375

if.end114.2:                                      ; preds = %lor.lhs.false86.2, %if.end114.1, %lor.lhs.false.2, %if.then100.2
  %.sink205 = phi i8 [ 1, %if.then100.2 ], [ 2, %lor.lhs.false.2 ], [ 2, %if.end114.1 ], [ 0, %lor.lhs.false86.2 ]
  %arrayidx106.2 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 2, !dbg !2377
  store i8 %.sink205, ptr %arrayidx106.2, align 1, !dbg !2377
    #dbg_value(i64 3, !2339, !DIExpression(), !2349)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, %92, !dbg !2378
    #dbg_value(i64 %indvars.iv.next.2, !2342, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !2351)
  %arrayidx.3 = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv.next.2, !dbg !2352
  %153 = load i8, ptr %arrayidx.3, align 1, !dbg !2352
  %tobool11.not.3 = icmp eq i8 %153, 0, !dbg !2352
  br i1 %tobool11.not.3, label %lor.lhs.false.3, label %if.end114.3, !dbg !2354

lor.lhs.false.3:                                  ; preds = %if.end114.2
  %154 = add nsw i64 %indvars.iv.next.2, %93, !dbg !2355
    #dbg_value(i64 %154, !2343, !DIExpression(), !2351)
  %arrayidx13.3 = getelementptr inbounds i8, ptr %nnz, i64 %154, !dbg !2356
  %155 = load i8, ptr %arrayidx13.3, align 1, !dbg !2356
  %tobool15.not.3 = icmp eq i8 %155, 0, !dbg !2356
  br i1 %tobool15.not.3, label %if.else.3, label %if.end114.3, !dbg !2357

if.else.3:                                        ; preds = %lor.lhs.false.3
  %arrayidx24.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv.next.2, !dbg !2358
  %156 = load i8, ptr %arrayidx24.3, align 1, !dbg !2358
  %arrayidx28.3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %154, !dbg !2360
  %157 = load i8, ptr %arrayidx28.3, align 1, !dbg !2360
  %cmp30.not.3 = icmp eq i8 %156, %157, !dbg !2361
  br i1 %cmp30.not.3, label %lor.lhs.false32.3, label %if.then100.3, !dbg !2362

lor.lhs.false32.3:                                ; preds = %if.else.3
  %arrayidx35.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv.next.2, !dbg !2363
  %158 = load i16, ptr %arrayidx35.3, align 2, !dbg !2363
  %conv37.3 = sext i16 %158 to i32, !dbg !2363
  %arrayidx40.3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %154, !dbg !2364
  %159 = load i16, ptr %arrayidx40.3, align 2, !dbg !2364
  %conv42.3 = sext i16 %159 to i32, !dbg !2364
  %sub43.3 = sub nsw i32 %conv37.3, %conv42.3, !dbg !2365
  %160 = tail call i32 @llvm.abs.i32(i32 %sub43.3, i1 true), !dbg !2366
  %cmp44.3 = icmp ugt i32 %160, 3, !dbg !2367
  br i1 %cmp44.3, label %if.then100.3, label %lor.lhs.false46.3, !dbg !2368

lor.lhs.false46.3:                                ; preds = %lor.lhs.false32.3
  %arrayidx50.3 = getelementptr inbounds i8, ptr %arrayidx35.3, i64 2, !dbg !2369
  %161 = load i16, ptr %arrayidx50.3, align 2, !dbg !2369
  %conv51.3 = sext i16 %161 to i32, !dbg !2369
  %arrayidx55.3 = getelementptr inbounds i8, ptr %arrayidx40.3, i64 2, !dbg !2370
  %162 = load i16, ptr %arrayidx55.3, align 2, !dbg !2370
  %conv56.3 = sext i16 %162 to i32, !dbg !2370
  %sub57.3 = sub nsw i32 %conv51.3, %conv56.3, !dbg !2371
  %163 = tail call i32 @llvm.abs.i32(i32 %sub57.3, i1 true), !dbg !2372
  %cmp58.not.3 = icmp slt i32 %163, %mvy_limit, !dbg !2373
  br i1 %cmp58.not.3, label %lor.lhs.false60.3, label %if.then100.3, !dbg !2374

lor.lhs.false60.3:                                ; preds = %lor.lhs.false46.3
  %arrayidx64.3 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %indvars.iv.next.2, !dbg !2391
  %164 = load i8, ptr %arrayidx64.3, align 1, !dbg !2391
  %arrayidx68.3 = getelementptr inbounds [40 x i8], ptr %arrayidx62, i64 0, i64 %154, !dbg !2392
  %165 = load i8, ptr %arrayidx68.3, align 1, !dbg !2392
  %cmp70.not.3 = icmp eq i8 %164, %165, !dbg !2393
  br i1 %cmp70.not.3, label %lor.lhs.false72.3, label %if.then100.3, !dbg !2394

lor.lhs.false72.3:                                ; preds = %lor.lhs.false60.3
  %arrayidx75.3 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %indvars.iv.next.2, !dbg !2395
  %166 = load i16, ptr %arrayidx75.3, align 2, !dbg !2395
  %conv77.3 = sext i16 %166 to i32, !dbg !2395
  %arrayidx80.3 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx73, i64 0, i64 %154, !dbg !2396
  %167 = load i16, ptr %arrayidx80.3, align 2, !dbg !2396
  %conv82.3 = sext i16 %167 to i32, !dbg !2396
  %sub83.3 = sub nsw i32 %conv77.3, %conv82.3, !dbg !2397
  %168 = tail call i32 @llvm.abs.i32(i32 %sub83.3, i1 true), !dbg !2398
  %cmp84.3 = icmp ugt i32 %168, 3, !dbg !2399
  br i1 %cmp84.3, label %if.then100.3, label %lor.lhs.false86.3, !dbg !2400

lor.lhs.false86.3:                                ; preds = %lor.lhs.false72.3
  %arrayidx90.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 2, !dbg !2401
  %169 = load i16, ptr %arrayidx90.3, align 2, !dbg !2401
  %conv91.3 = sext i16 %169 to i32, !dbg !2401
  %arrayidx95.3 = getelementptr inbounds i8, ptr %arrayidx80.3, i64 2, !dbg !2402
  %170 = load i16, ptr %arrayidx95.3, align 2, !dbg !2402
  %conv96.3 = sext i16 %170 to i32, !dbg !2402
  %sub97.3 = sub nsw i32 %conv91.3, %conv96.3, !dbg !2403
  %171 = tail call i32 @llvm.abs.i32(i32 %sub97.3, i1 true), !dbg !2404
  %cmp98.not.3 = icmp ult i32 %171, %mvy_limit, !dbg !2405
  br i1 %cmp98.not.3, label %if.end114.3, label %if.then100.3, !dbg !2406

if.then100.3:                                     ; preds = %lor.lhs.false86.3, %lor.lhs.false72.3, %lor.lhs.false60.3, %lor.lhs.false46.3, %lor.lhs.false32.3, %if.else.3
  br label %if.end114.3, !dbg !2375

if.end114.3:                                      ; preds = %lor.lhs.false86.3, %if.end114.2, %lor.lhs.false.3, %if.then100.3
  %.sink206 = phi i8 [ 1, %if.then100.3 ], [ 2, %lor.lhs.false.3 ], [ 2, %if.end114.2 ], [ 0, %lor.lhs.false86.3 ]
  %arrayidx106.3 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv180, i64 %indvars.iv, i64 3, !dbg !2377
  store i8 %.sink206, ptr %arrayidx106.3, align 1, !dbg !2377
    #dbg_value(i64 4, !2339, !DIExpression(), !2349)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.2, i64 %92), !2342, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2349)
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv, 1, !dbg !2379
    #dbg_value(i64 %indvars.iv.next178, !2337, !DIExpression(), !2348)
  %exitcond.not = icmp eq i64 %indvars.iv.next178, 4, !dbg !2380
  br i1 %exitcond.not, label %for.cond.cleanup5.split, label %for.body6, !dbg !2381, !llvm.loop !2382
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) unnamed_addr #8 !dbg !2407 {
entry:
    #dbg_value(ptr %pix, !2411, !DIExpression(), !2435)
    #dbg_value(i32 %xstride, !2412, !DIExpression(), !2435)
    #dbg_value(i32 %ystride, !2413, !DIExpression(), !2435)
    #dbg_value(i32 %alpha, !2414, !DIExpression(), !2435)
    #dbg_value(i32 %beta, !2415, !DIExpression(), !2435)
    #dbg_value(ptr %tc0, !2416, !DIExpression(), !2435)
    #dbg_value(i32 0, !2417, !DIExpression(), !2436)
  %mul8 = mul nsw i32 %xstride, -3
  %idxprom9 = sext i32 %mul8 to i64
  %mul12 = mul nsw i32 %xstride, -2
  %idxprom13 = sext i32 %mul12 to i64
  %mul16 = sub nsw i32 0, %xstride
  %idxprom17 = sext i32 %mul16 to i64
  %idxprom25 = sext i32 %xstride to i64
  %mul28 = shl nsw i32 %xstride, 1
  %idxprom29 = sext i32 %mul28 to i64
  %idx.ext118 = sext i32 %ystride to i64
  %mul = shl nsw i32 %ystride, 2
  %idx.ext = sext i32 %mul to i64
  br label %for.body, !dbg !2437

for.cond.cleanup:                                 ; preds = %for.inc121
  ret void, !dbg !2438

for.body:                                         ; preds = %entry, %for.inc121
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc121 ]
  %pix.addr.0203 = phi ptr [ %pix, %entry ], [ %pix.addr.2, %for.inc121 ]
    #dbg_value(ptr %pix.addr.0203, !2411, !DIExpression(), !2435)
    #dbg_value(i64 %indvars.iv, !2417, !DIExpression(), !2436)
  %arrayidx = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv, !dbg !2439
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2439
  %cmp1 = icmp slt i8 %0, 0, !dbg !2441
  br i1 %cmp1, label %if.then, label %for.body7, !dbg !2442

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0203, i64 %idx.ext, !dbg !2443
    #dbg_value(ptr %add.ptr, !2411, !DIExpression(), !2435)
  br label %for.inc121, !dbg !2445

for.body7:                                        ; preds = %for.body, %if.end117
  %pix.addr.1201 = phi ptr [ %add.ptr119, %if.end117 ], [ %pix.addr.0203, %for.body ]
  %d.0200 = phi i32 [ %inc120, %if.end117 ], [ 0, %for.body ]
    #dbg_value(ptr %pix.addr.1201, !2411, !DIExpression(), !2435)
    #dbg_value(i32 %d.0200, !2419, !DIExpression(), !2446)
  %arrayidx10 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom9, !dbg !2447
  %1 = load i8, ptr %arrayidx10, align 1, !dbg !2447
  %conv11 = zext i8 %1 to i32, !dbg !2447
    #dbg_value(i32 %conv11, !2423, !DIExpression(), !2448)
  %arrayidx14 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom13, !dbg !2449
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !2449
  %conv15 = zext i8 %2 to i32, !dbg !2449
    #dbg_value(i32 %conv15, !2426, !DIExpression(), !2448)
  %arrayidx18 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom17, !dbg !2450
  %3 = load i8, ptr %arrayidx18, align 1, !dbg !2450
  %conv19 = zext i8 %3 to i32, !dbg !2450
    #dbg_value(i32 %conv19, !2427, !DIExpression(), !2448)
  %4 = load i8, ptr %pix.addr.1201, align 1, !dbg !2451
  %conv23 = zext i8 %4 to i32, !dbg !2451
    #dbg_value(i32 %conv23, !2428, !DIExpression(), !2448)
  %arrayidx26 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom25, !dbg !2452
  %5 = load i8, ptr %arrayidx26, align 1, !dbg !2452
  %conv27 = zext i8 %5 to i32, !dbg !2452
    #dbg_value(i32 %conv27, !2429, !DIExpression(), !2448)
  %arrayidx30 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idxprom29, !dbg !2453
  %6 = load i8, ptr %arrayidx30, align 1, !dbg !2453
  %conv31 = zext i8 %6 to i32, !dbg !2453
    #dbg_value(i32 %conv31, !2430, !DIExpression(), !2448)
  %sub = sub nsw i32 %conv19, %conv23, !dbg !2454
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2455
  %cmp32 = icmp slt i32 %7, %alpha, !dbg !2456
  br i1 %cmp32, label %land.lhs.true, label %if.end117, !dbg !2457

land.lhs.true:                                    ; preds = %for.body7
  %sub34 = sub nsw i32 %conv15, %conv19, !dbg !2458
  %8 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 true), !dbg !2459
  %cmp35 = icmp slt i32 %8, %beta, !dbg !2460
  br i1 %cmp35, label %land.lhs.true37, label %if.end117, !dbg !2461

land.lhs.true37:                                  ; preds = %land.lhs.true
  %sub38 = sub nsw i32 %conv27, %conv23, !dbg !2462
  %9 = tail call i32 @llvm.abs.i32(i32 %sub38, i1 true), !dbg !2463
  %cmp39 = icmp ult i32 %9, %beta, !dbg !2464
  br i1 %cmp39, label %if.then41, label %if.end117, !dbg !2465

if.then41:                                        ; preds = %land.lhs.true37
  %10 = load i8, ptr %arrayidx, align 1, !dbg !2466
  %conv44 = sext i8 %10 to i32, !dbg !2466
    #dbg_value(i32 %conv44, !2431, !DIExpression(), !2467)
  %sub45 = sub nsw i32 %conv11, %conv19, !dbg !2468
  %11 = tail call i32 @llvm.abs.i32(i32 %sub45, i1 true), !dbg !2470
  %cmp46 = icmp ult i32 %11, %beta, !dbg !2471
  br i1 %cmp46, label %if.then48, label %if.end69, !dbg !2472

if.then48:                                        ; preds = %if.then41
  %tobool.not = icmp eq i8 %10, 0, !dbg !2473
  br i1 %tobool.not, label %if.end68, label %if.then51, !dbg !2476

if.then51:                                        ; preds = %if.then48
  %add = add nuw nsw i32 %conv19, 1, !dbg !2477
  %add52 = add nuw nsw i32 %add, %conv23, !dbg !2478
  %shr = lshr i32 %add52, 1, !dbg !2479
  %add53 = add nuw nsw i32 %shr, %conv11, !dbg !2480
  %shr54 = lshr i32 %add53, 1, !dbg !2481
  %sub55 = sub nsw i32 %shr54, %conv15, !dbg !2482
  %sub59 = sub nsw i32 0, %conv44, !dbg !2483
    #dbg_value(i32 %sub55, !2484, !DIExpression(), !2491)
    #dbg_value(i32 %sub59, !2489, !DIExpression(), !2491)
    #dbg_value(i32 %conv44, !2490, !DIExpression(), !2491)
  %cmp.i = icmp slt i32 %sub55, %sub59, !dbg !2493
  %cond.i = tail call i32 @llvm.smin.i32(i32 %sub55, i32 %conv44), !dbg !2494
  %cond5.i = select i1 %cmp.i, i32 %sub59, i32 %cond.i, !dbg !2494
  %12 = trunc i32 %cond5.i to i8, !dbg !2495
  %conv64 = add i8 %2, %12, !dbg !2495
  store i8 %conv64, ptr %arrayidx14, align 1, !dbg !2496
  br label %if.end68, !dbg !2497

if.end68:                                         ; preds = %if.then51, %if.then48
  %inc = add nsw i32 %conv44, 1, !dbg !2498
    #dbg_value(i32 %inc, !2431, !DIExpression(), !2467)
  br label %if.end69, !dbg !2499

if.end69:                                         ; preds = %if.end68, %if.then41
  %tc.0 = phi i32 [ %inc, %if.end68 ], [ %conv44, %if.then41 ], !dbg !2467
    #dbg_value(i32 %tc.0, !2431, !DIExpression(), !2467)
  %sub70 = sub nsw i32 %conv31, %conv23, !dbg !2500
  %13 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true), !dbg !2502
  %cmp71 = icmp ult i32 %13, %beta, !dbg !2503
  br i1 %cmp71, label %if.then73, label %if.end99, !dbg !2504

if.then73:                                        ; preds = %if.end69
  %14 = load i8, ptr %arrayidx, align 1, !dbg !2505
  %tobool76.not = icmp eq i8 %14, 0, !dbg !2505
  br i1 %tobool76.not, label %if.end97, label %if.then77, !dbg !2508

if.then77:                                        ; preds = %if.then73
  %add78 = add nuw nsw i32 %conv19, 1, !dbg !2509
  %add79 = add nuw nsw i32 %add78, %conv23, !dbg !2510
  %shr80 = lshr i32 %add79, 1, !dbg !2511
  %add81 = add nuw nsw i32 %shr80, %conv31, !dbg !2512
  %shr82 = lshr i32 %add81, 1, !dbg !2513
  %sub83 = sub nsw i32 %shr82, %conv27, !dbg !2514
  %conv86 = sext i8 %14 to i32, !dbg !2515
  %sub87 = sub nsw i32 0, %conv86, !dbg !2516
    #dbg_value(i32 %sub83, !2484, !DIExpression(), !2517)
    #dbg_value(i32 %sub87, !2489, !DIExpression(), !2517)
    #dbg_value(i32 %conv86, !2490, !DIExpression(), !2517)
  %cmp.i189 = icmp slt i32 %sub83, %sub87, !dbg !2519
  %cond.i190 = tail call i32 @llvm.smin.i32(i32 %sub83, i32 %conv86), !dbg !2520
  %cond5.i191 = select i1 %cmp.i189, i32 %sub87, i32 %cond.i190, !dbg !2520
  %15 = trunc i32 %cond5.i191 to i8, !dbg !2521
  %conv93 = add i8 %5, %15, !dbg !2521
  store i8 %conv93, ptr %arrayidx26, align 1, !dbg !2522
  br label %if.end97, !dbg !2523

if.end97:                                         ; preds = %if.then77, %if.then73
  %inc98 = add nsw i32 %tc.0, 1, !dbg !2524
    #dbg_value(i32 %inc98, !2431, !DIExpression(), !2467)
  br label %if.end99, !dbg !2525

if.end99:                                         ; preds = %if.end97, %if.end69
  %tc.1 = phi i32 [ %inc98, %if.end97 ], [ %tc.0, %if.end69 ], !dbg !2467
    #dbg_value(i32 %tc.1, !2431, !DIExpression(), !2467)
  %sub100 = sub nsw i32 %conv23, %conv19, !dbg !2526
  %shl = shl nsw i32 %sub100, 2, !dbg !2527
  %sub101 = add nuw nsw i32 %conv15, 4, !dbg !2528
  %add102 = sub nsw i32 %sub101, %conv27, !dbg !2529
  %add103 = add nsw i32 %add102, %shl, !dbg !2530
  %shr104 = ashr i32 %add103, 3, !dbg !2531
  %sub105 = sub nsw i32 0, %tc.1, !dbg !2532
    #dbg_value(i32 %shr104, !2484, !DIExpression(), !2533)
    #dbg_value(i32 %sub105, !2489, !DIExpression(), !2533)
    #dbg_value(i32 %tc.1, !2490, !DIExpression(), !2533)
  %cmp.i192 = icmp slt i32 %shr104, %sub105, !dbg !2535
  %cond.i193 = tail call i32 @llvm.smin.i32(i32 %shr104, i32 %tc.1), !dbg !2536
  %cond5.i194 = select i1 %cmp.i192, i32 %sub105, i32 %cond.i193, !dbg !2536
    #dbg_value(i32 %cond5.i194, !2434, !DIExpression(), !2467)
  %add107 = add nsw i32 %cond5.i194, %conv19, !dbg !2537
    #dbg_value(i32 %add107, !2538, !DIExpression(), !2543)
  %tobool.not.i = icmp ult i32 %add107, 256, !dbg !2545
  %16 = icmp sgt i32 %add107, 0, !dbg !2546
  %shr.i = sext i1 %16 to i32, !dbg !2546
  %cond.i195 = select i1 %tobool.not.i, i32 %add107, i32 %shr.i, !dbg !2546
  %conv.i = trunc i32 %cond.i195 to i8, !dbg !2546
  store i8 %conv.i, ptr %arrayidx18, align 1, !dbg !2547
  %sub112 = sub nsw i32 %conv23, %cond5.i194, !dbg !2548
    #dbg_value(i32 %sub112, !2538, !DIExpression(), !2549)
  %tobool.not.i196 = icmp ult i32 %sub112, 256, !dbg !2551
  %17 = icmp sgt i32 %sub112, 0, !dbg !2552
  %shr.i197 = sext i1 %17 to i32, !dbg !2552
  %cond.i198 = select i1 %tobool.not.i196, i32 %sub112, i32 %shr.i197, !dbg !2552
  %conv.i199 = trunc i32 %cond.i198 to i8, !dbg !2552
  store i8 %conv.i199, ptr %pix.addr.1201, align 1, !dbg !2553
  br label %if.end117, !dbg !2554

if.end117:                                        ; preds = %if.end99, %land.lhs.true37, %land.lhs.true, %for.body7
  %add.ptr119 = getelementptr inbounds i8, ptr %pix.addr.1201, i64 %idx.ext118, !dbg !2555
    #dbg_value(ptr %add.ptr119, !2411, !DIExpression(), !2435)
  %inc120 = add nuw nsw i32 %d.0200, 1, !dbg !2556
    #dbg_value(i32 %inc120, !2419, !DIExpression(), !2446)
  %exitcond.not = icmp eq i32 %inc120, 4, !dbg !2557
  br i1 %exitcond.not, label %for.inc121, label %for.body7, !dbg !2558, !llvm.loop !2559

for.inc121:                                       ; preds = %if.end117, %if.then
  %pix.addr.2 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr119, %if.end117 ]
    #dbg_value(ptr %pix.addr.2, !2411, !DIExpression(), !2435)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2561
    #dbg_value(i64 %indvars.iv.next, !2417, !DIExpression(), !2436)
  %exitcond205.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2562
  br i1 %exitcond205.not, label %for.cond.cleanup, label %for.body, !dbg !2437, !llvm.loop !2563
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) unnamed_addr #8 !dbg !2565 {
entry:
    #dbg_value(ptr %pix, !2567, !DIExpression(), !2589)
    #dbg_value(i32 %xstride, !2568, !DIExpression(), !2589)
    #dbg_value(i32 %ystride, !2569, !DIExpression(), !2589)
    #dbg_value(i32 %alpha, !2570, !DIExpression(), !2589)
    #dbg_value(i32 %beta, !2571, !DIExpression(), !2589)
    #dbg_value(ptr %tc0, !2572, !DIExpression(), !2589)
    #dbg_value(i32 0, !2573, !DIExpression(), !2590)
  %mul8 = mul nsw i32 %xstride, -2
  %idxprom9 = sext i32 %mul8 to i64
  %mul12 = sub nsw i32 0, %xstride
  %idxprom13 = sext i32 %mul12 to i64
  %idxprom21 = sext i32 %xstride to i64
  %idx.ext49 = sext i32 %ystride to i64
  %mul = shl nsw i32 %ystride, 1
  %idx.ext = sext i32 %mul to i64
  br label %for.body, !dbg !2591

for.cond.cleanup:                                 ; preds = %cleanup
  ret void, !dbg !2592

for.body:                                         ; preds = %entry, %cleanup
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup ]
  %pix.addr.091 = phi ptr [ %pix, %entry ], [ %pix.addr.2, %cleanup ]
    #dbg_value(ptr %pix.addr.091, !2567, !DIExpression(), !2589)
    #dbg_value(i64 %indvars.iv, !2573, !DIExpression(), !2590)
  %arrayidx = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv, !dbg !2593
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2593
  %conv = sext i8 %0 to i32, !dbg !2593
    #dbg_value(i32 %conv, !2575, !DIExpression(), !2594)
  %cmp1 = icmp slt i8 %0, 1, !dbg !2595
  br i1 %cmp1, label %if.then, label %for.cond3.preheader, !dbg !2597

for.cond3.preheader:                              ; preds = %for.body
    #dbg_value(ptr %pix.addr.091, !2567, !DIExpression(), !2589)
    #dbg_value(i32 0, !2578, !DIExpression(), !2598)
  %sub37 = sub nsw i32 0, %conv
    #dbg_value(ptr %pix.addr.091, !2567, !DIExpression(), !2589)
    #dbg_value(i32 0, !2578, !DIExpression(), !2598)
  %arrayidx10 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom9, !dbg !2599
  %1 = load i8, ptr %arrayidx10, align 1, !dbg !2599
  %conv11 = zext i8 %1 to i32, !dbg !2599
    #dbg_value(i32 %conv11, !2580, !DIExpression(), !2600)
  %arrayidx14 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom13, !dbg !2601
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !2601
  %conv15 = zext i8 %2 to i32, !dbg !2601
    #dbg_value(i32 %conv15, !2583, !DIExpression(), !2600)
  %3 = load i8, ptr %pix.addr.091, align 1, !dbg !2602
  %conv19 = zext i8 %3 to i32, !dbg !2602
    #dbg_value(i32 %conv19, !2584, !DIExpression(), !2600)
  %arrayidx22 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idxprom21, !dbg !2603
  %4 = load i8, ptr %arrayidx22, align 1, !dbg !2603
  %conv23 = zext i8 %4 to i32, !dbg !2603
    #dbg_value(i32 %conv23, !2585, !DIExpression(), !2600)
  %sub = sub nsw i32 %conv15, %conv19, !dbg !2604
  %5 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2605
  %cmp24 = icmp slt i32 %5, %alpha, !dbg !2606
  br i1 %cmp24, label %land.lhs.true, label %if.end48, !dbg !2607

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idx.ext, !dbg !2608
    #dbg_value(ptr %add.ptr, !2567, !DIExpression(), !2589)
  br label %cleanup, !dbg !2610

land.lhs.true:                                    ; preds = %for.cond3.preheader
  %sub26 = sub nsw i32 %conv11, %conv15, !dbg !2611
  %6 = tail call i32 @llvm.abs.i32(i32 %sub26, i1 true), !dbg !2612
  %cmp27 = icmp slt i32 %6, %beta, !dbg !2613
  br i1 %cmp27, label %land.lhs.true29, label %if.end48, !dbg !2614

land.lhs.true29:                                  ; preds = %land.lhs.true
  %sub30 = sub nsw i32 %conv23, %conv19, !dbg !2615
  %7 = tail call i32 @llvm.abs.i32(i32 %sub30, i1 true), !dbg !2616
  %cmp31 = icmp ult i32 %7, %beta, !dbg !2617
  br i1 %cmp31, label %if.then33, label %if.end48, !dbg !2618

if.then33:                                        ; preds = %land.lhs.true29
  %sub34 = sub nsw i32 %conv19, %conv15, !dbg !2619
  %shl = shl nsw i32 %sub34, 2, !dbg !2620
  %sub35 = add nuw nsw i32 %conv11, 4, !dbg !2621
  %add = sub nsw i32 %sub35, %conv23, !dbg !2622
  %add36 = add nsw i32 %add, %shl, !dbg !2623
  %shr = ashr i32 %add36, 3, !dbg !2624
    #dbg_value(i32 %shr, !2484, !DIExpression(), !2625)
    #dbg_value(i32 %sub37, !2489, !DIExpression(), !2625)
    #dbg_value(i32 %conv, !2490, !DIExpression(), !2625)
  %cmp.i = icmp slt i32 %shr, %sub37, !dbg !2627
  %cond.i = tail call i32 @llvm.smin.i32(i32 %shr, i32 %conv), !dbg !2628
  %cond5.i = select i1 %cmp.i, i32 %sub37, i32 %cond.i, !dbg !2628
    #dbg_value(i32 %cond5.i, !2586, !DIExpression(), !2629)
  %add38 = add nsw i32 %cond5.i, %conv15, !dbg !2630
    #dbg_value(i32 %add38, !2538, !DIExpression(), !2631)
  %tobool.not.i = icmp ult i32 %add38, 256, !dbg !2633
  %8 = icmp sgt i32 %add38, 0, !dbg !2634
  %shr.i = sext i1 %8 to i32, !dbg !2634
  %cond.i83 = select i1 %tobool.not.i, i32 %add38, i32 %shr.i, !dbg !2634
  %conv.i = trunc i32 %cond.i83 to i8, !dbg !2634
  store i8 %conv.i, ptr %arrayidx14, align 1, !dbg !2635
  %sub43 = sub nsw i32 %conv19, %cond5.i, !dbg !2636
    #dbg_value(i32 %sub43, !2538, !DIExpression(), !2637)
  %tobool.not.i84 = icmp ult i32 %sub43, 256, !dbg !2639
  %9 = icmp sgt i32 %sub43, 0, !dbg !2640
  %shr.i85 = sext i1 %9 to i32, !dbg !2640
  %cond.i86 = select i1 %tobool.not.i84, i32 %sub43, i32 %shr.i85, !dbg !2640
  %conv.i87 = trunc i32 %cond.i86 to i8, !dbg !2640
  store i8 %conv.i87, ptr %pix.addr.091, align 1, !dbg !2641
  br label %if.end48, !dbg !2642

if.end48:                                         ; preds = %if.then33, %land.lhs.true29, %land.lhs.true, %for.cond3.preheader
  %add.ptr50 = getelementptr inbounds i8, ptr %pix.addr.091, i64 %idx.ext49, !dbg !2643
    #dbg_value(ptr %add.ptr50, !2567, !DIExpression(), !2589)
    #dbg_value(i32 1, !2578, !DIExpression(), !2598)
  %arrayidx10.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom9, !dbg !2599
  %10 = load i8, ptr %arrayidx10.1, align 1, !dbg !2599
  %conv11.1 = zext i8 %10 to i32, !dbg !2599
    #dbg_value(i32 %conv11.1, !2580, !DIExpression(), !2600)
  %arrayidx14.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom13, !dbg !2601
  %11 = load i8, ptr %arrayidx14.1, align 1, !dbg !2601
  %conv15.1 = zext i8 %11 to i32, !dbg !2601
    #dbg_value(i32 %conv15.1, !2583, !DIExpression(), !2600)
  %12 = load i8, ptr %add.ptr50, align 1, !dbg !2602
  %conv19.1 = zext i8 %12 to i32, !dbg !2602
    #dbg_value(i32 %conv19.1, !2584, !DIExpression(), !2600)
  %arrayidx22.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idxprom21, !dbg !2603
  %13 = load i8, ptr %arrayidx22.1, align 1, !dbg !2603
  %conv23.1 = zext i8 %13 to i32, !dbg !2603
    #dbg_value(i32 %conv23.1, !2585, !DIExpression(), !2600)
  %sub.1 = sub nsw i32 %conv15.1, %conv19.1, !dbg !2604
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 true), !dbg !2605
  %cmp24.1 = icmp slt i32 %14, %alpha, !dbg !2606
  br i1 %cmp24.1, label %land.lhs.true.1, label %if.end48.1, !dbg !2607

land.lhs.true.1:                                  ; preds = %if.end48
  %sub26.1 = sub nsw i32 %conv11.1, %conv15.1, !dbg !2611
  %15 = tail call i32 @llvm.abs.i32(i32 %sub26.1, i1 true), !dbg !2612
  %cmp27.1 = icmp slt i32 %15, %beta, !dbg !2613
  br i1 %cmp27.1, label %land.lhs.true29.1, label %if.end48.1, !dbg !2614

land.lhs.true29.1:                                ; preds = %land.lhs.true.1
  %sub30.1 = sub nsw i32 %conv23.1, %conv19.1, !dbg !2615
  %16 = tail call i32 @llvm.abs.i32(i32 %sub30.1, i1 true), !dbg !2616
  %cmp31.1 = icmp ult i32 %16, %beta, !dbg !2617
  br i1 %cmp31.1, label %if.then33.1, label %if.end48.1, !dbg !2618

if.then33.1:                                      ; preds = %land.lhs.true29.1
  %sub34.1 = sub nsw i32 %conv19.1, %conv15.1, !dbg !2619
  %shl.1 = shl nsw i32 %sub34.1, 2, !dbg !2620
  %sub35.1 = add nuw nsw i32 %conv11.1, 4, !dbg !2621
  %add.1 = sub nsw i32 %sub35.1, %conv23.1, !dbg !2622
  %add36.1 = add nsw i32 %add.1, %shl.1, !dbg !2623
  %shr.1 = ashr i32 %add36.1, 3, !dbg !2624
    #dbg_value(i32 %shr.1, !2484, !DIExpression(), !2625)
    #dbg_value(i32 %sub37, !2489, !DIExpression(), !2625)
    #dbg_value(i32 %conv, !2490, !DIExpression(), !2625)
  %cmp.i.1 = icmp slt i32 %shr.1, %sub37, !dbg !2627
  %cond.i.1 = tail call i32 @llvm.smin.i32(i32 %shr.1, i32 %conv), !dbg !2628
  %cond5.i.1 = select i1 %cmp.i.1, i32 %sub37, i32 %cond.i.1, !dbg !2628
    #dbg_value(i32 %cond5.i.1, !2586, !DIExpression(), !2629)
  %add38.1 = add nsw i32 %cond5.i.1, %conv15.1, !dbg !2630
    #dbg_value(i32 %add38.1, !2538, !DIExpression(), !2631)
  %tobool.not.i.1 = icmp ult i32 %add38.1, 256, !dbg !2633
  %17 = icmp sgt i32 %add38.1, 0, !dbg !2634
  %shr.i.1 = sext i1 %17 to i32, !dbg !2634
  %cond.i83.1 = select i1 %tobool.not.i.1, i32 %add38.1, i32 %shr.i.1, !dbg !2634
  %conv.i.1 = trunc i32 %cond.i83.1 to i8, !dbg !2634
  store i8 %conv.i.1, ptr %arrayidx14.1, align 1, !dbg !2635
  %sub43.1 = sub nsw i32 %conv19.1, %cond5.i.1, !dbg !2636
    #dbg_value(i32 %sub43.1, !2538, !DIExpression(), !2637)
  %tobool.not.i84.1 = icmp ult i32 %sub43.1, 256, !dbg !2639
  %18 = icmp sgt i32 %sub43.1, 0, !dbg !2640
  %shr.i85.1 = sext i1 %18 to i32, !dbg !2640
  %cond.i86.1 = select i1 %tobool.not.i84.1, i32 %sub43.1, i32 %shr.i85.1, !dbg !2640
  %conv.i87.1 = trunc i32 %cond.i86.1 to i8, !dbg !2640
  store i8 %conv.i87.1, ptr %add.ptr50, align 1, !dbg !2641
  br label %if.end48.1, !dbg !2642

if.end48.1:                                       ; preds = %if.then33.1, %land.lhs.true29.1, %land.lhs.true.1, %if.end48
  %add.ptr50.1 = getelementptr inbounds i8, ptr %add.ptr50, i64 %idx.ext49, !dbg !2643
    #dbg_value(ptr %add.ptr50.1, !2567, !DIExpression(), !2589)
    #dbg_value(i32 2, !2578, !DIExpression(), !2598)
  br label %cleanup, !dbg !2644

cleanup:                                          ; preds = %if.end48.1, %if.then
  %pix.addr.2 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr50.1, %if.end48.1 ]
    #dbg_value(ptr %pix.addr.2, !2567, !DIExpression(), !2589)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2644
    #dbg_value(i64 %indvars.iv.next, !2573, !DIExpression(), !2590)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2645
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2591, !llvm.loop !2646
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta) unnamed_addr #8 !dbg !2648 {
entry:
    #dbg_value(ptr %pix, !2652, !DIExpression(), !2678)
    #dbg_value(i32 %xstride, !2653, !DIExpression(), !2678)
    #dbg_value(i32 %ystride, !2654, !DIExpression(), !2678)
    #dbg_value(i32 %alpha, !2655, !DIExpression(), !2678)
    #dbg_value(i32 %beta, !2656, !DIExpression(), !2678)
    #dbg_value(i32 0, !2657, !DIExpression(), !2679)
  %mul = mul nsw i32 %xstride, -3
  %idxprom = sext i32 %mul to i64
  %mul1 = mul nsw i32 %xstride, -2
  %idxprom2 = sext i32 %mul1 to i64
  %mul5 = sub nsw i32 0, %xstride
  %idxprom6 = sext i32 %mul5 to i64
  %idxprom14 = sext i32 %xstride to i64
  %mul17 = shl nsw i32 %xstride, 1
  %idxprom18 = sext i32 %mul17 to i64
  %idx.ext = sext i32 %ystride to i64
    #dbg_value(ptr %pix, !2652, !DIExpression(), !2678)
    #dbg_value(i32 0, !2657, !DIExpression(), !2679)
  %shr = lshr i32 %alpha, 2
  %add = add nuw nsw i32 %shr, 2
  %mul38 = mul nsw i32 %xstride, -4
  %idxprom39 = sext i32 %mul38 to i64
  %mul89 = mul nsw i32 %xstride, 3
  %idxprom90 = sext i32 %mul89 to i64
  br label %for.body, !dbg !2680

for.cond.cleanup:                                 ; preds = %if.end158
  ret void, !dbg !2681

for.body:                                         ; preds = %entry, %if.end158
  %pix.addr.0244 = phi ptr [ %pix, %entry ], [ %add.ptr, %if.end158 ]
  %d.0243 = phi i32 [ 0, %entry ], [ %inc, %if.end158 ]
    #dbg_value(ptr %pix.addr.0244, !2652, !DIExpression(), !2678)
    #dbg_value(i32 %d.0243, !2657, !DIExpression(), !2679)
  %arrayidx = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom, !dbg !2682
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2682
  %conv = zext i8 %0 to i32, !dbg !2682
    #dbg_value(i32 %conv, !2659, !DIExpression(), !2683)
  %arrayidx3 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom2, !dbg !2684
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2684
  %conv4 = zext i8 %1 to i32, !dbg !2684
    #dbg_value(i32 %conv4, !2662, !DIExpression(), !2683)
  %arrayidx7 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom6, !dbg !2685
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !2685
  %conv8 = zext i8 %2 to i32, !dbg !2685
    #dbg_value(i32 %conv8, !2663, !DIExpression(), !2683)
  %3 = load i8, ptr %pix.addr.0244, align 1, !dbg !2686
  %conv12 = zext i8 %3 to i32, !dbg !2686
    #dbg_value(i32 %conv12, !2664, !DIExpression(), !2683)
  %arrayidx15 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom14, !dbg !2687
  %4 = load i8, ptr %arrayidx15, align 1, !dbg !2687
  %conv16 = zext i8 %4 to i32, !dbg !2687
    #dbg_value(i32 %conv16, !2665, !DIExpression(), !2683)
  %arrayidx19 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom18, !dbg !2688
  %5 = load i8, ptr %arrayidx19, align 1, !dbg !2688
  %conv20 = zext i8 %5 to i32, !dbg !2688
    #dbg_value(i32 %conv20, !2666, !DIExpression(), !2683)
  %sub = sub nsw i32 %conv8, %conv12, !dbg !2689
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2690
  %cmp21 = icmp slt i32 %6, %alpha, !dbg !2691
  br i1 %cmp21, label %land.lhs.true, label %if.end158, !dbg !2692

land.lhs.true:                                    ; preds = %for.body
  %sub23 = sub nsw i32 %conv4, %conv8, !dbg !2693
  %7 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 true), !dbg !2694
  %cmp24 = icmp slt i32 %7, %beta, !dbg !2695
  br i1 %cmp24, label %land.lhs.true26, label %if.end158, !dbg !2696

land.lhs.true26:                                  ; preds = %land.lhs.true
  %sub27 = sub nsw i32 %conv16, %conv12, !dbg !2697
  %8 = tail call i32 @llvm.abs.i32(i32 %sub27, i1 true), !dbg !2698
  %cmp28 = icmp ult i32 %8, %beta, !dbg !2699
  br i1 %cmp28, label %if.then, label %if.end158, !dbg !2700

if.then:                                          ; preds = %land.lhs.true26
  %cmp31 = icmp ult i32 %6, %add, !dbg !2701
  br i1 %cmp31, label %if.then33, label %if.else138, !dbg !2702

if.then33:                                        ; preds = %if.then
  %sub34 = sub nsw i32 %conv, %conv8, !dbg !2703
  %9 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 true), !dbg !2704
  %cmp35 = icmp ult i32 %9, %beta, !dbg !2705
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !2706

if.then37:                                        ; preds = %if.then33
  %arrayidx40 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom39, !dbg !2707
  %10 = load i8, ptr %arrayidx40, align 1, !dbg !2707
  %conv41 = zext i8 %10 to i32, !dbg !2707
    #dbg_value(i32 %conv41, !2667, !DIExpression(), !2708)
  %11 = add nuw nsw i32 %conv12, %conv4, !dbg !2709
  %12 = add nuw nsw i32 %11, %conv8, !dbg !2710
  %13 = shl nuw nsw i32 %12, 1, !dbg !2710
  %add47 = add nuw nsw i32 %conv16, 4, !dbg !2710
  %add48 = add nuw nsw i32 %add47, %conv, !dbg !2711
  %add49 = add nuw nsw i32 %add48, %13, !dbg !2712
  %shr50 = lshr i32 %add49, 3, !dbg !2713
  %conv51 = trunc nuw i32 %shr50 to i8, !dbg !2714
  store i8 %conv51, ptr %arrayidx7, align 1, !dbg !2715
  %add56 = add nuw nsw i32 %11, 2, !dbg !2716
  %add57 = add nuw nsw i32 %add56, %conv, !dbg !2717
  %add58 = add nuw nsw i32 %add57, %conv8, !dbg !2718
  %shr59 = lshr i32 %add58, 2, !dbg !2719
  %conv60 = trunc nuw i32 %shr59 to i8, !dbg !2720
  store i8 %conv60, ptr %arrayidx3, align 1, !dbg !2721
  %mul64 = shl nuw nsw i32 %conv41, 1, !dbg !2722
  %mul65 = mul nuw nsw i32 %conv, 3, !dbg !2723
  %add66 = add nuw nsw i32 %mul65, 4, !dbg !2724
  %add67 = add nuw nsw i32 %add66, %conv4, !dbg !2725
  %add68 = add nuw nsw i32 %add67, %conv8, !dbg !2726
  %add69 = add nuw nsw i32 %add68, %conv12, !dbg !2727
  %add70 = add nuw nsw i32 %add69, %mul64, !dbg !2728
  %shr71 = lshr i32 %add70, 3, !dbg !2729
  br label %if.end, !dbg !2730

if.else:                                          ; preds = %if.then33
  %mul76 = shl nuw nsw i32 %conv4, 1, !dbg !2731
  %add77 = add nuw nsw i32 %conv8, 2, !dbg !2732
  %add78 = add nuw nsw i32 %add77, %mul76, !dbg !2733
  %add79 = add nuw nsw i32 %add78, %conv16, !dbg !2734
  %shr80 = lshr i32 %add79, 2, !dbg !2735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then37
  %shr80.sink = phi i32 [ %shr80, %if.else ], [ %shr71, %if.then37 ]
  %arrayidx7.sink = phi ptr [ %arrayidx7, %if.else ], [ %arrayidx, %if.then37 ]
  %conv81 = trunc nuw i32 %shr80.sink to i8, !dbg !2736
  store i8 %conv81, ptr %arrayidx7.sink, align 1, !dbg !2736
  %sub85 = sub nsw i32 %conv20, %conv12, !dbg !2737
  %14 = tail call i32 @llvm.abs.i32(i32 %sub85, i1 true), !dbg !2738
  %cmp86 = icmp ult i32 %14, %beta, !dbg !2739
  br i1 %cmp86, label %if.then88, label %if.else127, !dbg !2740

if.then88:                                        ; preds = %if.end
  %arrayidx91 = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idxprom90, !dbg !2741
  %15 = load i8, ptr %arrayidx91, align 1, !dbg !2741
  %conv92 = zext i8 %15 to i32, !dbg !2741
    #dbg_value(i32 %conv92, !2675, !DIExpression(), !2742)
  %16 = add nuw nsw i32 %conv12, %conv8, !dbg !2743
  %17 = add nuw nsw i32 %16, %conv16, !dbg !2744
  %18 = shl nuw nsw i32 %17, 1, !dbg !2744
  %add98 = add nuw nsw i32 %conv4, 4, !dbg !2744
  %add99 = add nuw nsw i32 %add98, %conv20, !dbg !2745
  %add100 = add nuw nsw i32 %add99, %18, !dbg !2746
  %shr101 = lshr i32 %add100, 3, !dbg !2747
  %conv102 = trunc nuw i32 %shr101 to i8, !dbg !2748
  store i8 %conv102, ptr %pix.addr.0244, align 1, !dbg !2749
  %add108 = add nuw nsw i32 %conv20, 2, !dbg !2750
  %add109 = add nuw nsw i32 %add108, %17, !dbg !2751
  %shr110 = lshr i32 %add109, 2, !dbg !2752
  %conv111 = trunc nuw i32 %shr110 to i8, !dbg !2753
  store i8 %conv111, ptr %arrayidx15, align 1, !dbg !2754
  %mul115 = shl nuw nsw i32 %conv92, 1, !dbg !2755
  %mul116 = mul nuw nsw i32 %conv20, 3, !dbg !2756
  %add118 = add nuw nsw i32 %16, 4, !dbg !2757
  %add119 = add nuw nsw i32 %add118, %conv16, !dbg !2758
  %add120 = add nuw nsw i32 %add119, %mul116, !dbg !2759
  %add121 = add nuw nsw i32 %add120, %mul115, !dbg !2760
  %shr122 = lshr i32 %add121, 3, !dbg !2761
  br label %if.end158.sink.split, !dbg !2762

if.else127:                                       ; preds = %if.end
  %mul128 = shl nuw nsw i32 %conv16, 1, !dbg !2763
  %add129 = add nuw nsw i32 %conv12, %conv4, !dbg !2764
  %add130 = add nuw nsw i32 %add129, 2, !dbg !2765
  %add131 = add nuw nsw i32 %add130, %mul128, !dbg !2766
  %shr132 = lshr i32 %add131, 2, !dbg !2767
  br label %if.end158.sink.split

if.else138:                                       ; preds = %if.then
  %mul139 = shl nuw nsw i32 %conv4, 1, !dbg !2768
  %add140 = add nuw nsw i32 %conv8, 2, !dbg !2770
  %add141 = add nuw nsw i32 %add140, %mul139, !dbg !2771
  %add142 = add nuw nsw i32 %add141, %conv16, !dbg !2772
  %shr143 = lshr i32 %add142, 2, !dbg !2773
  %conv144 = trunc nuw i32 %shr143 to i8, !dbg !2774
  store i8 %conv144, ptr %arrayidx7, align 1, !dbg !2775
  %mul148 = shl nuw nsw i32 %conv16, 1, !dbg !2776
  %add149 = add nuw nsw i32 %conv12, %conv4, !dbg !2777
  %add150 = add nuw nsw i32 %add149, 2, !dbg !2778
  %add151 = add nuw nsw i32 %add150, %mul148, !dbg !2779
  %shr152 = lshr i32 %add151, 2, !dbg !2780
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.then88, %if.else127, %if.else138
  %shr152.sink = phi i32 [ %shr152, %if.else138 ], [ %shr132, %if.else127 ], [ %shr122, %if.then88 ]
  %pix.addr.0244.sink = phi ptr [ %pix.addr.0244, %if.else138 ], [ %pix.addr.0244, %if.else127 ], [ %arrayidx19, %if.then88 ]
  %conv153 = trunc nuw i32 %shr152.sink to i8, !dbg !2781
  store i8 %conv153, ptr %pix.addr.0244.sink, align 1, !dbg !2781
  br label %if.end158, !dbg !2782

if.end158:                                        ; preds = %if.end158.sink.split, %land.lhs.true26, %land.lhs.true, %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0244, i64 %idx.ext, !dbg !2782
    #dbg_value(ptr %add.ptr, !2652, !DIExpression(), !2678)
  %inc = add nuw nsw i32 %d.0243, 1, !dbg !2783
    #dbg_value(i32 %inc, !2657, !DIExpression(), !2679)
  %exitcond.not = icmp eq i32 %inc, 16, !dbg !2784
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2680, !llvm.loop !2785
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta) unnamed_addr #10 !dbg !2787 {
entry:
    #dbg_value(ptr %pix, !2789, !DIExpression(), !2802)
    #dbg_value(i32 %xstride, !2790, !DIExpression(), !2802)
    #dbg_value(i32 %ystride, !2791, !DIExpression(), !2802)
    #dbg_value(i32 %alpha, !2792, !DIExpression(), !2802)
    #dbg_value(i32 %beta, !2793, !DIExpression(), !2802)
    #dbg_value(i32 0, !2794, !DIExpression(), !2803)
  %mul = mul nsw i32 %xstride, -2
  %idxprom = sext i32 %mul to i64
  %mul1 = sub nsw i32 0, %xstride
  %idxprom2 = sext i32 %mul1 to i64
  %idxprom10 = sext i32 %xstride to i64
  %idx.ext = sext i32 %ystride to i64
    #dbg_value(ptr %pix, !2789, !DIExpression(), !2802)
    #dbg_value(i32 0, !2794, !DIExpression(), !2803)
    #dbg_value(ptr %pix, !2789, !DIExpression(), !2802)
    #dbg_value(i32 0, !2794, !DIExpression(), !2803)
  %arrayidx = getelementptr inbounds i8, ptr %pix, i64 %idxprom, !dbg !2804
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2804
  %conv = zext i8 %0 to i32, !dbg !2804
    #dbg_value(i32 %conv, !2796, !DIExpression(), !2805)
  %arrayidx3 = getelementptr inbounds i8, ptr %pix, i64 %idxprom2, !dbg !2806
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2806
  %conv4 = zext i8 %1 to i32, !dbg !2806
    #dbg_value(i32 %conv4, !2799, !DIExpression(), !2805)
  %2 = load i8, ptr %pix, align 1, !dbg !2807
  %conv8 = zext i8 %2 to i32, !dbg !2807
    #dbg_value(i32 %conv8, !2800, !DIExpression(), !2805)
  %arrayidx11 = getelementptr inbounds i8, ptr %pix, i64 %idxprom10, !dbg !2808
  %3 = load i8, ptr %arrayidx11, align 1, !dbg !2808
  %conv12 = zext i8 %3 to i32, !dbg !2808
    #dbg_value(i32 %conv12, !2801, !DIExpression(), !2805)
  %sub = sub nsw i32 %conv4, %conv8, !dbg !2809
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2811
  %cmp13 = icmp slt i32 %4, %alpha, !dbg !2812
  br i1 %cmp13, label %land.lhs.true, label %if.end, !dbg !2813

land.lhs.true:                                    ; preds = %entry
  %sub15 = sub nsw i32 %conv, %conv4, !dbg !2814
  %5 = tail call i32 @llvm.abs.i32(i32 %sub15, i1 true), !dbg !2815
  %cmp16 = icmp slt i32 %5, %beta, !dbg !2816
  br i1 %cmp16, label %land.lhs.true18, label %if.end, !dbg !2817

land.lhs.true18:                                  ; preds = %land.lhs.true
  %sub19 = sub nsw i32 %conv12, %conv8, !dbg !2818
  %6 = tail call i32 @llvm.abs.i32(i32 %sub19, i1 true), !dbg !2819
  %cmp20 = icmp ult i32 %6, %beta, !dbg !2820
  br i1 %cmp20, label %if.then, label %if.end, !dbg !2821

if.then:                                          ; preds = %land.lhs.true18
  %mul22 = shl nuw nsw i32 %conv, 1, !dbg !2822
  %add = add nuw nsw i32 %conv4, 2, !dbg !2824
  %add23 = add nuw nsw i32 %add, %mul22, !dbg !2825
  %add24 = add nuw nsw i32 %add23, %conv12, !dbg !2826
  %shr = lshr i32 %add24, 2, !dbg !2827
  %conv25 = trunc nuw i32 %shr to i8, !dbg !2828
  store i8 %conv25, ptr %arrayidx3, align 1, !dbg !2829
  %mul29 = shl nuw nsw i32 %conv12, 1, !dbg !2830
  %add30 = add nuw nsw i32 %conv, 2, !dbg !2831
  %add31 = add nuw nsw i32 %add30, %conv8, !dbg !2832
  %add32 = add nuw nsw i32 %add31, %mul29, !dbg !2833
  %shr33 = lshr i32 %add32, 2, !dbg !2834
  %conv34 = trunc nuw i32 %shr33 to i8, !dbg !2835
  store i8 %conv34, ptr %pix, align 1, !dbg !2836
  br label %if.end, !dbg !2837

if.end:                                           ; preds = %if.then, %land.lhs.true18, %land.lhs.true, %entry
  %add.ptr = getelementptr inbounds i8, ptr %pix, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr, !2789, !DIExpression(), !2802)
    #dbg_value(i32 1, !2794, !DIExpression(), !2803)
  %arrayidx.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom, !dbg !2804
  %7 = load i8, ptr %arrayidx.1, align 1, !dbg !2804
  %conv.1 = zext i8 %7 to i32, !dbg !2804
    #dbg_value(i32 %conv.1, !2796, !DIExpression(), !2805)
  %arrayidx3.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom2, !dbg !2806
  %8 = load i8, ptr %arrayidx3.1, align 1, !dbg !2806
  %conv4.1 = zext i8 %8 to i32, !dbg !2806
    #dbg_value(i32 %conv4.1, !2799, !DIExpression(), !2805)
  %9 = load i8, ptr %add.ptr, align 1, !dbg !2807
  %conv8.1 = zext i8 %9 to i32, !dbg !2807
    #dbg_value(i32 %conv8.1, !2800, !DIExpression(), !2805)
  %arrayidx11.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom10, !dbg !2808
  %10 = load i8, ptr %arrayidx11.1, align 1, !dbg !2808
  %conv12.1 = zext i8 %10 to i32, !dbg !2808
    #dbg_value(i32 %conv12.1, !2801, !DIExpression(), !2805)
  %sub.1 = sub nsw i32 %conv4.1, %conv8.1, !dbg !2809
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 true), !dbg !2811
  %cmp13.1 = icmp slt i32 %11, %alpha, !dbg !2812
  br i1 %cmp13.1, label %land.lhs.true.1, label %if.end.1, !dbg !2813

land.lhs.true.1:                                  ; preds = %if.end
  %sub15.1 = sub nsw i32 %conv.1, %conv4.1, !dbg !2814
  %12 = tail call i32 @llvm.abs.i32(i32 %sub15.1, i1 true), !dbg !2815
  %cmp16.1 = icmp slt i32 %12, %beta, !dbg !2816
  br i1 %cmp16.1, label %land.lhs.true18.1, label %if.end.1, !dbg !2817

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %sub19.1 = sub nsw i32 %conv12.1, %conv8.1, !dbg !2818
  %13 = tail call i32 @llvm.abs.i32(i32 %sub19.1, i1 true), !dbg !2819
  %cmp20.1 = icmp ult i32 %13, %beta, !dbg !2820
  br i1 %cmp20.1, label %if.then.1, label %if.end.1, !dbg !2821

if.then.1:                                        ; preds = %land.lhs.true18.1
  %mul22.1 = shl nuw nsw i32 %conv.1, 1, !dbg !2822
  %add.1 = add nuw nsw i32 %conv4.1, 2, !dbg !2824
  %add23.1 = add nuw nsw i32 %add.1, %mul22.1, !dbg !2825
  %add24.1 = add nuw nsw i32 %add23.1, %conv12.1, !dbg !2826
  %shr.1 = lshr i32 %add24.1, 2, !dbg !2827
  %conv25.1 = trunc nuw i32 %shr.1 to i8, !dbg !2828
  store i8 %conv25.1, ptr %arrayidx3.1, align 1, !dbg !2829
  %mul29.1 = shl nuw nsw i32 %conv12.1, 1, !dbg !2830
  %add30.1 = add nuw nsw i32 %conv.1, 2, !dbg !2831
  %add31.1 = add nuw nsw i32 %add30.1, %conv8.1, !dbg !2832
  %add32.1 = add nuw nsw i32 %add31.1, %mul29.1, !dbg !2833
  %shr33.1 = lshr i32 %add32.1, 2, !dbg !2834
  %conv34.1 = trunc nuw i32 %shr33.1 to i8, !dbg !2835
  store i8 %conv34.1, ptr %add.ptr, align 1, !dbg !2836
  br label %if.end.1, !dbg !2837

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true18.1, %land.lhs.true.1, %if.end
  %add.ptr.1 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.1, !2789, !DIExpression(), !2802)
    #dbg_value(i32 2, !2794, !DIExpression(), !2803)
  %arrayidx.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom, !dbg !2804
  %14 = load i8, ptr %arrayidx.2, align 1, !dbg !2804
  %conv.2 = zext i8 %14 to i32, !dbg !2804
    #dbg_value(i32 %conv.2, !2796, !DIExpression(), !2805)
  %arrayidx3.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom2, !dbg !2806
  %15 = load i8, ptr %arrayidx3.2, align 1, !dbg !2806
  %conv4.2 = zext i8 %15 to i32, !dbg !2806
    #dbg_value(i32 %conv4.2, !2799, !DIExpression(), !2805)
  %16 = load i8, ptr %add.ptr.1, align 1, !dbg !2807
  %conv8.2 = zext i8 %16 to i32, !dbg !2807
    #dbg_value(i32 %conv8.2, !2800, !DIExpression(), !2805)
  %arrayidx11.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idxprom10, !dbg !2808
  %17 = load i8, ptr %arrayidx11.2, align 1, !dbg !2808
  %conv12.2 = zext i8 %17 to i32, !dbg !2808
    #dbg_value(i32 %conv12.2, !2801, !DIExpression(), !2805)
  %sub.2 = sub nsw i32 %conv4.2, %conv8.2, !dbg !2809
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 true), !dbg !2811
  %cmp13.2 = icmp slt i32 %18, %alpha, !dbg !2812
  br i1 %cmp13.2, label %land.lhs.true.2, label %if.end.2, !dbg !2813

land.lhs.true.2:                                  ; preds = %if.end.1
  %sub15.2 = sub nsw i32 %conv.2, %conv4.2, !dbg !2814
  %19 = tail call i32 @llvm.abs.i32(i32 %sub15.2, i1 true), !dbg !2815
  %cmp16.2 = icmp slt i32 %19, %beta, !dbg !2816
  br i1 %cmp16.2, label %land.lhs.true18.2, label %if.end.2, !dbg !2817

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %sub19.2 = sub nsw i32 %conv12.2, %conv8.2, !dbg !2818
  %20 = tail call i32 @llvm.abs.i32(i32 %sub19.2, i1 true), !dbg !2819
  %cmp20.2 = icmp ult i32 %20, %beta, !dbg !2820
  br i1 %cmp20.2, label %if.then.2, label %if.end.2, !dbg !2821

if.then.2:                                        ; preds = %land.lhs.true18.2
  %mul22.2 = shl nuw nsw i32 %conv.2, 1, !dbg !2822
  %add.2 = add nuw nsw i32 %conv4.2, 2, !dbg !2824
  %add23.2 = add nuw nsw i32 %add.2, %mul22.2, !dbg !2825
  %add24.2 = add nuw nsw i32 %add23.2, %conv12.2, !dbg !2826
  %shr.2 = lshr i32 %add24.2, 2, !dbg !2827
  %conv25.2 = trunc nuw i32 %shr.2 to i8, !dbg !2828
  store i8 %conv25.2, ptr %arrayidx3.2, align 1, !dbg !2829
  %mul29.2 = shl nuw nsw i32 %conv12.2, 1, !dbg !2830
  %add30.2 = add nuw nsw i32 %conv.2, 2, !dbg !2831
  %add31.2 = add nuw nsw i32 %add30.2, %conv8.2, !dbg !2832
  %add32.2 = add nuw nsw i32 %add31.2, %mul29.2, !dbg !2833
  %shr33.2 = lshr i32 %add32.2, 2, !dbg !2834
  %conv34.2 = trunc nuw i32 %shr33.2 to i8, !dbg !2835
  store i8 %conv34.2, ptr %add.ptr.1, align 1, !dbg !2836
  br label %if.end.2, !dbg !2837

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true18.2, %land.lhs.true.2, %if.end.1
  %add.ptr.2 = getelementptr inbounds i8, ptr %add.ptr.1, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.2, !2789, !DIExpression(), !2802)
    #dbg_value(i32 3, !2794, !DIExpression(), !2803)
  %arrayidx.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom, !dbg !2804
  %21 = load i8, ptr %arrayidx.3, align 1, !dbg !2804
  %conv.3 = zext i8 %21 to i32, !dbg !2804
    #dbg_value(i32 %conv.3, !2796, !DIExpression(), !2805)
  %arrayidx3.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom2, !dbg !2806
  %22 = load i8, ptr %arrayidx3.3, align 1, !dbg !2806
  %conv4.3 = zext i8 %22 to i32, !dbg !2806
    #dbg_value(i32 %conv4.3, !2799, !DIExpression(), !2805)
  %23 = load i8, ptr %add.ptr.2, align 1, !dbg !2807
  %conv8.3 = zext i8 %23 to i32, !dbg !2807
    #dbg_value(i32 %conv8.3, !2800, !DIExpression(), !2805)
  %arrayidx11.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idxprom10, !dbg !2808
  %24 = load i8, ptr %arrayidx11.3, align 1, !dbg !2808
  %conv12.3 = zext i8 %24 to i32, !dbg !2808
    #dbg_value(i32 %conv12.3, !2801, !DIExpression(), !2805)
  %sub.3 = sub nsw i32 %conv4.3, %conv8.3, !dbg !2809
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 true), !dbg !2811
  %cmp13.3 = icmp slt i32 %25, %alpha, !dbg !2812
  br i1 %cmp13.3, label %land.lhs.true.3, label %if.end.3, !dbg !2813

land.lhs.true.3:                                  ; preds = %if.end.2
  %sub15.3 = sub nsw i32 %conv.3, %conv4.3, !dbg !2814
  %26 = tail call i32 @llvm.abs.i32(i32 %sub15.3, i1 true), !dbg !2815
  %cmp16.3 = icmp slt i32 %26, %beta, !dbg !2816
  br i1 %cmp16.3, label %land.lhs.true18.3, label %if.end.3, !dbg !2817

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %sub19.3 = sub nsw i32 %conv12.3, %conv8.3, !dbg !2818
  %27 = tail call i32 @llvm.abs.i32(i32 %sub19.3, i1 true), !dbg !2819
  %cmp20.3 = icmp ult i32 %27, %beta, !dbg !2820
  br i1 %cmp20.3, label %if.then.3, label %if.end.3, !dbg !2821

if.then.3:                                        ; preds = %land.lhs.true18.3
  %mul22.3 = shl nuw nsw i32 %conv.3, 1, !dbg !2822
  %add.3 = add nuw nsw i32 %conv4.3, 2, !dbg !2824
  %add23.3 = add nuw nsw i32 %add.3, %mul22.3, !dbg !2825
  %add24.3 = add nuw nsw i32 %add23.3, %conv12.3, !dbg !2826
  %shr.3 = lshr i32 %add24.3, 2, !dbg !2827
  %conv25.3 = trunc nuw i32 %shr.3 to i8, !dbg !2828
  store i8 %conv25.3, ptr %arrayidx3.3, align 1, !dbg !2829
  %mul29.3 = shl nuw nsw i32 %conv12.3, 1, !dbg !2830
  %add30.3 = add nuw nsw i32 %conv.3, 2, !dbg !2831
  %add31.3 = add nuw nsw i32 %add30.3, %conv8.3, !dbg !2832
  %add32.3 = add nuw nsw i32 %add31.3, %mul29.3, !dbg !2833
  %shr33.3 = lshr i32 %add32.3, 2, !dbg !2834
  %conv34.3 = trunc nuw i32 %shr33.3 to i8, !dbg !2835
  store i8 %conv34.3, ptr %add.ptr.2, align 1, !dbg !2836
  br label %if.end.3, !dbg !2837

if.end.3:                                         ; preds = %if.then.3, %land.lhs.true18.3, %land.lhs.true.3, %if.end.2
  %add.ptr.3 = getelementptr inbounds i8, ptr %add.ptr.2, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.3, !2789, !DIExpression(), !2802)
    #dbg_value(i32 4, !2794, !DIExpression(), !2803)
  %arrayidx.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom, !dbg !2804
  %28 = load i8, ptr %arrayidx.4, align 1, !dbg !2804
  %conv.4 = zext i8 %28 to i32, !dbg !2804
    #dbg_value(i32 %conv.4, !2796, !DIExpression(), !2805)
  %arrayidx3.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom2, !dbg !2806
  %29 = load i8, ptr %arrayidx3.4, align 1, !dbg !2806
  %conv4.4 = zext i8 %29 to i32, !dbg !2806
    #dbg_value(i32 %conv4.4, !2799, !DIExpression(), !2805)
  %30 = load i8, ptr %add.ptr.3, align 1, !dbg !2807
  %conv8.4 = zext i8 %30 to i32, !dbg !2807
    #dbg_value(i32 %conv8.4, !2800, !DIExpression(), !2805)
  %arrayidx11.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idxprom10, !dbg !2808
  %31 = load i8, ptr %arrayidx11.4, align 1, !dbg !2808
  %conv12.4 = zext i8 %31 to i32, !dbg !2808
    #dbg_value(i32 %conv12.4, !2801, !DIExpression(), !2805)
  %sub.4 = sub nsw i32 %conv4.4, %conv8.4, !dbg !2809
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 true), !dbg !2811
  %cmp13.4 = icmp slt i32 %32, %alpha, !dbg !2812
  br i1 %cmp13.4, label %land.lhs.true.4, label %if.end.4, !dbg !2813

land.lhs.true.4:                                  ; preds = %if.end.3
  %sub15.4 = sub nsw i32 %conv.4, %conv4.4, !dbg !2814
  %33 = tail call i32 @llvm.abs.i32(i32 %sub15.4, i1 true), !dbg !2815
  %cmp16.4 = icmp slt i32 %33, %beta, !dbg !2816
  br i1 %cmp16.4, label %land.lhs.true18.4, label %if.end.4, !dbg !2817

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %sub19.4 = sub nsw i32 %conv12.4, %conv8.4, !dbg !2818
  %34 = tail call i32 @llvm.abs.i32(i32 %sub19.4, i1 true), !dbg !2819
  %cmp20.4 = icmp ult i32 %34, %beta, !dbg !2820
  br i1 %cmp20.4, label %if.then.4, label %if.end.4, !dbg !2821

if.then.4:                                        ; preds = %land.lhs.true18.4
  %mul22.4 = shl nuw nsw i32 %conv.4, 1, !dbg !2822
  %add.4 = add nuw nsw i32 %conv4.4, 2, !dbg !2824
  %add23.4 = add nuw nsw i32 %add.4, %mul22.4, !dbg !2825
  %add24.4 = add nuw nsw i32 %add23.4, %conv12.4, !dbg !2826
  %shr.4 = lshr i32 %add24.4, 2, !dbg !2827
  %conv25.4 = trunc nuw i32 %shr.4 to i8, !dbg !2828
  store i8 %conv25.4, ptr %arrayidx3.4, align 1, !dbg !2829
  %mul29.4 = shl nuw nsw i32 %conv12.4, 1, !dbg !2830
  %add30.4 = add nuw nsw i32 %conv.4, 2, !dbg !2831
  %add31.4 = add nuw nsw i32 %add30.4, %conv8.4, !dbg !2832
  %add32.4 = add nuw nsw i32 %add31.4, %mul29.4, !dbg !2833
  %shr33.4 = lshr i32 %add32.4, 2, !dbg !2834
  %conv34.4 = trunc nuw i32 %shr33.4 to i8, !dbg !2835
  store i8 %conv34.4, ptr %add.ptr.3, align 1, !dbg !2836
  br label %if.end.4, !dbg !2837

if.end.4:                                         ; preds = %if.then.4, %land.lhs.true18.4, %land.lhs.true.4, %if.end.3
  %add.ptr.4 = getelementptr inbounds i8, ptr %add.ptr.3, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.4, !2789, !DIExpression(), !2802)
    #dbg_value(i32 5, !2794, !DIExpression(), !2803)
  %arrayidx.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom, !dbg !2804
  %35 = load i8, ptr %arrayidx.5, align 1, !dbg !2804
  %conv.5 = zext i8 %35 to i32, !dbg !2804
    #dbg_value(i32 %conv.5, !2796, !DIExpression(), !2805)
  %arrayidx3.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom2, !dbg !2806
  %36 = load i8, ptr %arrayidx3.5, align 1, !dbg !2806
  %conv4.5 = zext i8 %36 to i32, !dbg !2806
    #dbg_value(i32 %conv4.5, !2799, !DIExpression(), !2805)
  %37 = load i8, ptr %add.ptr.4, align 1, !dbg !2807
  %conv8.5 = zext i8 %37 to i32, !dbg !2807
    #dbg_value(i32 %conv8.5, !2800, !DIExpression(), !2805)
  %arrayidx11.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idxprom10, !dbg !2808
  %38 = load i8, ptr %arrayidx11.5, align 1, !dbg !2808
  %conv12.5 = zext i8 %38 to i32, !dbg !2808
    #dbg_value(i32 %conv12.5, !2801, !DIExpression(), !2805)
  %sub.5 = sub nsw i32 %conv4.5, %conv8.5, !dbg !2809
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 true), !dbg !2811
  %cmp13.5 = icmp slt i32 %39, %alpha, !dbg !2812
  br i1 %cmp13.5, label %land.lhs.true.5, label %if.end.5, !dbg !2813

land.lhs.true.5:                                  ; preds = %if.end.4
  %sub15.5 = sub nsw i32 %conv.5, %conv4.5, !dbg !2814
  %40 = tail call i32 @llvm.abs.i32(i32 %sub15.5, i1 true), !dbg !2815
  %cmp16.5 = icmp slt i32 %40, %beta, !dbg !2816
  br i1 %cmp16.5, label %land.lhs.true18.5, label %if.end.5, !dbg !2817

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %sub19.5 = sub nsw i32 %conv12.5, %conv8.5, !dbg !2818
  %41 = tail call i32 @llvm.abs.i32(i32 %sub19.5, i1 true), !dbg !2819
  %cmp20.5 = icmp ult i32 %41, %beta, !dbg !2820
  br i1 %cmp20.5, label %if.then.5, label %if.end.5, !dbg !2821

if.then.5:                                        ; preds = %land.lhs.true18.5
  %mul22.5 = shl nuw nsw i32 %conv.5, 1, !dbg !2822
  %add.5 = add nuw nsw i32 %conv4.5, 2, !dbg !2824
  %add23.5 = add nuw nsw i32 %add.5, %mul22.5, !dbg !2825
  %add24.5 = add nuw nsw i32 %add23.5, %conv12.5, !dbg !2826
  %shr.5 = lshr i32 %add24.5, 2, !dbg !2827
  %conv25.5 = trunc nuw i32 %shr.5 to i8, !dbg !2828
  store i8 %conv25.5, ptr %arrayidx3.5, align 1, !dbg !2829
  %mul29.5 = shl nuw nsw i32 %conv12.5, 1, !dbg !2830
  %add30.5 = add nuw nsw i32 %conv.5, 2, !dbg !2831
  %add31.5 = add nuw nsw i32 %add30.5, %conv8.5, !dbg !2832
  %add32.5 = add nuw nsw i32 %add31.5, %mul29.5, !dbg !2833
  %shr33.5 = lshr i32 %add32.5, 2, !dbg !2834
  %conv34.5 = trunc nuw i32 %shr33.5 to i8, !dbg !2835
  store i8 %conv34.5, ptr %add.ptr.4, align 1, !dbg !2836
  br label %if.end.5, !dbg !2837

if.end.5:                                         ; preds = %if.then.5, %land.lhs.true18.5, %land.lhs.true.5, %if.end.4
  %add.ptr.5 = getelementptr inbounds i8, ptr %add.ptr.4, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.5, !2789, !DIExpression(), !2802)
    #dbg_value(i32 6, !2794, !DIExpression(), !2803)
  %arrayidx.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom, !dbg !2804
  %42 = load i8, ptr %arrayidx.6, align 1, !dbg !2804
  %conv.6 = zext i8 %42 to i32, !dbg !2804
    #dbg_value(i32 %conv.6, !2796, !DIExpression(), !2805)
  %arrayidx3.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom2, !dbg !2806
  %43 = load i8, ptr %arrayidx3.6, align 1, !dbg !2806
  %conv4.6 = zext i8 %43 to i32, !dbg !2806
    #dbg_value(i32 %conv4.6, !2799, !DIExpression(), !2805)
  %44 = load i8, ptr %add.ptr.5, align 1, !dbg !2807
  %conv8.6 = zext i8 %44 to i32, !dbg !2807
    #dbg_value(i32 %conv8.6, !2800, !DIExpression(), !2805)
  %arrayidx11.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idxprom10, !dbg !2808
  %45 = load i8, ptr %arrayidx11.6, align 1, !dbg !2808
  %conv12.6 = zext i8 %45 to i32, !dbg !2808
    #dbg_value(i32 %conv12.6, !2801, !DIExpression(), !2805)
  %sub.6 = sub nsw i32 %conv4.6, %conv8.6, !dbg !2809
  %46 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 true), !dbg !2811
  %cmp13.6 = icmp slt i32 %46, %alpha, !dbg !2812
  br i1 %cmp13.6, label %land.lhs.true.6, label %if.end.6, !dbg !2813

land.lhs.true.6:                                  ; preds = %if.end.5
  %sub15.6 = sub nsw i32 %conv.6, %conv4.6, !dbg !2814
  %47 = tail call i32 @llvm.abs.i32(i32 %sub15.6, i1 true), !dbg !2815
  %cmp16.6 = icmp slt i32 %47, %beta, !dbg !2816
  br i1 %cmp16.6, label %land.lhs.true18.6, label %if.end.6, !dbg !2817

land.lhs.true18.6:                                ; preds = %land.lhs.true.6
  %sub19.6 = sub nsw i32 %conv12.6, %conv8.6, !dbg !2818
  %48 = tail call i32 @llvm.abs.i32(i32 %sub19.6, i1 true), !dbg !2819
  %cmp20.6 = icmp ult i32 %48, %beta, !dbg !2820
  br i1 %cmp20.6, label %if.then.6, label %if.end.6, !dbg !2821

if.then.6:                                        ; preds = %land.lhs.true18.6
  %mul22.6 = shl nuw nsw i32 %conv.6, 1, !dbg !2822
  %add.6 = add nuw nsw i32 %conv4.6, 2, !dbg !2824
  %add23.6 = add nuw nsw i32 %add.6, %mul22.6, !dbg !2825
  %add24.6 = add nuw nsw i32 %add23.6, %conv12.6, !dbg !2826
  %shr.6 = lshr i32 %add24.6, 2, !dbg !2827
  %conv25.6 = trunc nuw i32 %shr.6 to i8, !dbg !2828
  store i8 %conv25.6, ptr %arrayidx3.6, align 1, !dbg !2829
  %mul29.6 = shl nuw nsw i32 %conv12.6, 1, !dbg !2830
  %add30.6 = add nuw nsw i32 %conv.6, 2, !dbg !2831
  %add31.6 = add nuw nsw i32 %add30.6, %conv8.6, !dbg !2832
  %add32.6 = add nuw nsw i32 %add31.6, %mul29.6, !dbg !2833
  %shr33.6 = lshr i32 %add32.6, 2, !dbg !2834
  %conv34.6 = trunc nuw i32 %shr33.6 to i8, !dbg !2835
  store i8 %conv34.6, ptr %add.ptr.5, align 1, !dbg !2836
  br label %if.end.6, !dbg !2837

if.end.6:                                         ; preds = %if.then.6, %land.lhs.true18.6, %land.lhs.true.6, %if.end.5
  %add.ptr.6 = getelementptr inbounds i8, ptr %add.ptr.5, i64 %idx.ext, !dbg !2838
    #dbg_value(ptr %add.ptr.6, !2789, !DIExpression(), !2802)
    #dbg_value(i32 7, !2794, !DIExpression(), !2803)
  %arrayidx.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom, !dbg !2804
  %49 = load i8, ptr %arrayidx.7, align 1, !dbg !2804
  %conv.7 = zext i8 %49 to i32, !dbg !2804
    #dbg_value(i32 %conv.7, !2796, !DIExpression(), !2805)
  %arrayidx3.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom2, !dbg !2806
  %50 = load i8, ptr %arrayidx3.7, align 1, !dbg !2806
  %conv4.7 = zext i8 %50 to i32, !dbg !2806
    #dbg_value(i32 %conv4.7, !2799, !DIExpression(), !2805)
  %51 = load i8, ptr %add.ptr.6, align 1, !dbg !2807
  %conv8.7 = zext i8 %51 to i32, !dbg !2807
    #dbg_value(i32 %conv8.7, !2800, !DIExpression(), !2805)
  %arrayidx11.7 = getelementptr inbounds i8, ptr %add.ptr.6, i64 %idxprom10, !dbg !2808
  %52 = load i8, ptr %arrayidx11.7, align 1, !dbg !2808
  %conv12.7 = zext i8 %52 to i32, !dbg !2808
    #dbg_value(i32 %conv12.7, !2801, !DIExpression(), !2805)
  %sub.7 = sub nsw i32 %conv4.7, %conv8.7, !dbg !2809
  %53 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 true), !dbg !2811
  %cmp13.7 = icmp slt i32 %53, %alpha, !dbg !2812
  br i1 %cmp13.7, label %land.lhs.true.7, label %if.end.7, !dbg !2813

land.lhs.true.7:                                  ; preds = %if.end.6
  %sub15.7 = sub nsw i32 %conv.7, %conv4.7, !dbg !2814
  %54 = tail call i32 @llvm.abs.i32(i32 %sub15.7, i1 true), !dbg !2815
  %cmp16.7 = icmp slt i32 %54, %beta, !dbg !2816
  br i1 %cmp16.7, label %land.lhs.true18.7, label %if.end.7, !dbg !2817

land.lhs.true18.7:                                ; preds = %land.lhs.true.7
  %sub19.7 = sub nsw i32 %conv12.7, %conv8.7, !dbg !2818
  %55 = tail call i32 @llvm.abs.i32(i32 %sub19.7, i1 true), !dbg !2819
  %cmp20.7 = icmp ult i32 %55, %beta, !dbg !2820
  br i1 %cmp20.7, label %if.then.7, label %if.end.7, !dbg !2821

if.then.7:                                        ; preds = %land.lhs.true18.7
  %mul22.7 = shl nuw nsw i32 %conv.7, 1, !dbg !2822
  %add.7 = add nuw nsw i32 %conv4.7, 2, !dbg !2824
  %add23.7 = add nuw nsw i32 %add.7, %mul22.7, !dbg !2825
  %add24.7 = add nuw nsw i32 %add23.7, %conv12.7, !dbg !2826
  %shr.7 = lshr i32 %add24.7, 2, !dbg !2827
  %conv25.7 = trunc nuw i32 %shr.7 to i8, !dbg !2828
  store i8 %conv25.7, ptr %arrayidx3.7, align 1, !dbg !2829
  %mul29.7 = shl nuw nsw i32 %conv12.7, 1, !dbg !2830
  %add30.7 = add nuw nsw i32 %conv.7, 2, !dbg !2831
  %add31.7 = add nuw nsw i32 %add30.7, %conv8.7, !dbg !2832
  %add32.7 = add nuw nsw i32 %add31.7, %mul29.7, !dbg !2833
  %shr33.7 = lshr i32 %add32.7, 2, !dbg !2834
  %conv34.7 = trunc nuw i32 %shr33.7 to i8, !dbg !2835
  store i8 %conv34.7, ptr %add.ptr.6, align 1, !dbg !2836
  br label %if.end.7, !dbg !2837

if.end.7:                                         ; preds = %if.then.7, %land.lhs.true18.7, %land.lhs.true.7, %if.end.6
    #dbg_value(!DIArgList(ptr %add.ptr.6, i64 %idx.ext), !2789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2802)
    #dbg_value(i32 8, !2794, !DIExpression(), !2803)
  ret void, !dbg !2839
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i_alpha_table", scope: !2, file: !3, line: 68, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/deblock.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "6a351fa075ae4fa4953b93e96f39a58f")
!4 = !{!5, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!9 = !DIEnumerator(name: "I_4x4", value: 0)
!10 = !DIEnumerator(name: "I_8x8", value: 1)
!11 = !DIEnumerator(name: "I_16x16", value: 2)
!12 = !DIEnumerator(name: "I_PCM", value: 3)
!13 = !DIEnumerator(name: "P_L0", value: 4)
!14 = !DIEnumerator(name: "P_8x8", value: 5)
!15 = !DIEnumerator(name: "P_SKIP", value: 6)
!16 = !DIEnumerator(name: "B_DIRECT", value: 7)
!17 = !DIEnumerator(name: "B_L0_L0", value: 8)
!18 = !DIEnumerator(name: "B_L0_L1", value: 9)
!19 = !DIEnumerator(name: "B_L0_BI", value: 10)
!20 = !DIEnumerator(name: "B_L1_L0", value: 11)
!21 = !DIEnumerator(name: "B_L1_L1", value: 12)
!22 = !DIEnumerator(name: "B_L1_BI", value: 13)
!23 = !DIEnumerator(name: "B_BI_L0", value: 14)
!24 = !DIEnumerator(name: "B_BI_L1", value: 15)
!25 = !DIEnumerator(name: "B_BI_BI", value: 16)
!26 = !DIEnumerator(name: "B_8x8", value: 17)
!27 = !DIEnumerator(name: "B_SKIP", value: 18)
!28 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "MB_LEFT", value: 1)
!32 = !DIEnumerator(name: "MB_TOP", value: 2)
!33 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!34 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!35 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!36 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!37 = !{!38, !46, !49}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !44)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 26, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 42, baseType: !7)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!44 = !{!45}
!45 = !DISubrange(count: 6)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !41, line: 25, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !43, line: 40, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !51, line: 89, baseType: !52)
!51 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !51, line: 89, size: 32, elements: !53)
!53 = !{!54, !55, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !52, file: !51, line: 89, baseType: !40, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !52, file: !51, line: 89, baseType: !56, size: 32)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 2)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !52, file: !51, line: 89, baseType: !60, size: 32)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !41, line: 24, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !43, line: 38, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !{!0, !67, !73}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "i_beta_table", scope: !2, file: !3, line: 79, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 608, elements: !71)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!71 = !{!72}
!72 = !DISubrange(count: 76)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "i_tc0_table", scope: !2, file: !3, line: 90, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2432, elements: !81)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !78, line: 24, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !43, line: 37, baseType: !80)
!80 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!81 = !{!72, !65}
!82 = !{i32 7, !"Dwarf Version", i32 5}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{i32 1, !"wchar_size", i32 4}
!85 = !{i32 8, !"PIC Level", i32 2}
!86 = !{i32 7, !"PIE Level", i32 2}
!87 = !{i32 7, !"uwtable", i32 2}
!88 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!89 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!90 = distinct !DISubprogram(name: "x264_frame_deblock_row", scope: !3, file: !3, line: 339, type: !91, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !104}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !51, line: 381, size: 266752, elements: !97)
!97 = !{!98, !267, !271, !272, !273, !274, !275, !276, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !412, !414, !439, !441, !442, !443, !447, !451, !452, !453, !457, !461, !462, !463, !468, !471, !472, !550, !567, !728, !729, !730, !731, !735, !736, !737, !738, !739, !740, !741, !756, !949, !953, !1014, !1017, !1019, !1021, !1022, !1025, !1030, !1039, !1040, !1048, !1050, !1055, !1131, !1217, !1261, !1283, !1332, !1361}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !96, file: !51, line: 384, baseType: !99, size: 5632)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !95, line: 376, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !95, line: 176, size: 5632, elements: !101)
!101 = !{!102, !103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !146, !150, !151, !152, !153, !157, !158, !172, !173, !174, !175, !176, !205, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !100, file: !95, line: 179, baseType: !7, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !100, file: !95, line: 180, baseType: !104, size: 32, offset: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !100, file: !95, line: 181, baseType: !104, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !100, file: !95, line: 182, baseType: !104, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !100, file: !95, line: 183, baseType: !104, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !100, file: !95, line: 186, baseType: !104, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !100, file: !95, line: 187, baseType: !104, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !100, file: !95, line: 188, baseType: !104, size: 32, offset: 224)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !100, file: !95, line: 189, baseType: !104, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !100, file: !95, line: 190, baseType: !104, size: 32, offset: 288)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !100, file: !95, line: 198, baseType: !104, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !100, file: !95, line: 215, baseType: !115, size: 288, offset: 352)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 200, size: 288, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !115, file: !95, line: 203, baseType: !104, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !115, file: !95, line: 204, baseType: !104, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !115, file: !95, line: 206, baseType: !104, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !115, file: !95, line: 209, baseType: !104, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !115, file: !95, line: 210, baseType: !104, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !115, file: !95, line: 211, baseType: !104, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !115, file: !95, line: 212, baseType: !104, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !115, file: !95, line: 213, baseType: !104, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !115, file: !95, line: 214, baseType: !104, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !100, file: !95, line: 218, baseType: !104, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !100, file: !95, line: 219, baseType: !104, size: 32, offset: 672)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !100, file: !95, line: 220, baseType: !104, size: 32, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !100, file: !95, line: 221, baseType: !104, size: 32, offset: 736)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !100, file: !95, line: 222, baseType: !104, size: 32, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !100, file: !95, line: 224, baseType: !104, size: 32, offset: 800)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !100, file: !95, line: 225, baseType: !104, size: 32, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !100, file: !95, line: 226, baseType: !104, size: 32, offset: 864)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !100, file: !95, line: 227, baseType: !104, size: 32, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !100, file: !95, line: 229, baseType: !104, size: 32, offset: 928)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !100, file: !95, line: 230, baseType: !104, size: 32, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !100, file: !95, line: 231, baseType: !104, size: 32, offset: 992)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !100, file: !95, line: 233, baseType: !104, size: 32, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !100, file: !95, line: 234, baseType: !104, size: 32, offset: 1056)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !100, file: !95, line: 236, baseType: !104, size: 32, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !100, file: !95, line: 237, baseType: !104, size: 32, offset: 1120)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !100, file: !95, line: 239, baseType: !104, size: 32, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !100, file: !95, line: 240, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !100, file: !95, line: 241, baseType: !147, size: 128, offset: 1280)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !100, file: !95, line: 242, baseType: !147, size: 128, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !100, file: !95, line: 243, baseType: !147, size: 128, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !100, file: !95, line: 244, baseType: !147, size: 128, offset: 1664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !100, file: !95, line: 245, baseType: !154, size: 512, offset: 1792)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !100, file: !95, line: 246, baseType: !154, size: 512, offset: 2304)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !100, file: !95, line: 249, baseType: !159, size: 64, offset: 2816)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !104, !163, !165}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !166, file: !3, baseType: !7, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !166, file: !3, baseType: !7, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !166, file: !3, baseType: !162, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !166, file: !3, baseType: !162, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !100, file: !95, line: 250, baseType: !162, size: 64, offset: 2880)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !100, file: !95, line: 251, baseType: !104, size: 32, offset: 2944)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !100, file: !95, line: 252, baseType: !104, size: 32, offset: 2976)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !100, file: !95, line: 253, baseType: !144, size: 64, offset: 3008)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !100, file: !95, line: 287, baseType: !177, size: 800, offset: 3072)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 256, size: 800, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !203, !204}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !177, file: !95, line: 258, baseType: !7, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !177, file: !95, line: 259, baseType: !7, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !177, file: !95, line: 261, baseType: !104, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !177, file: !95, line: 262, baseType: !104, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !177, file: !95, line: 263, baseType: !104, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !177, file: !95, line: 264, baseType: !104, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !177, file: !95, line: 265, baseType: !104, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !177, file: !95, line: 267, baseType: !104, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !177, file: !95, line: 268, baseType: !104, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !177, file: !95, line: 269, baseType: !104, size: 32, offset: 288)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !177, file: !95, line: 270, baseType: !104, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !177, file: !95, line: 271, baseType: !104, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !177, file: !95, line: 272, baseType: !104, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !177, file: !95, line: 273, baseType: !104, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !177, file: !95, line: 274, baseType: !104, size: 32, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !177, file: !95, line: 275, baseType: !104, size: 32, offset: 480)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !177, file: !95, line: 276, baseType: !104, size: 32, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !177, file: !95, line: 277, baseType: !104, size: 32, offset: 544)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !177, file: !95, line: 278, baseType: !198, size: 32, offset: 576)
!198 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !177, file: !95, line: 279, baseType: !198, size: 32, offset: 608)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !177, file: !95, line: 280, baseType: !104, size: 32, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !177, file: !95, line: 283, baseType: !202, size: 64, offset: 672)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !57)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !177, file: !95, line: 285, baseType: !104, size: 32, offset: 736)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !177, file: !95, line: 286, baseType: !104, size: 32, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !100, file: !95, line: 327, baseType: !206, size: 1152, offset: 3904)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 290, size: 1152, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !245, !246}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !206, file: !95, line: 292, baseType: !104, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !206, file: !95, line: 294, baseType: !104, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !206, file: !95, line: 295, baseType: !104, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !206, file: !95, line: 296, baseType: !104, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !206, file: !95, line: 297, baseType: !104, size: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !206, file: !95, line: 299, baseType: !104, size: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !206, file: !95, line: 300, baseType: !198, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !206, file: !95, line: 301, baseType: !198, size: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !206, file: !95, line: 302, baseType: !198, size: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !206, file: !95, line: 303, baseType: !104, size: 32, offset: 288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !206, file: !95, line: 304, baseType: !104, size: 32, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !206, file: !95, line: 305, baseType: !198, size: 32, offset: 352)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !206, file: !95, line: 306, baseType: !198, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !206, file: !95, line: 307, baseType: !198, size: 32, offset: 416)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !206, file: !95, line: 309, baseType: !104, size: 32, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !206, file: !95, line: 310, baseType: !198, size: 32, offset: 480)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !206, file: !95, line: 311, baseType: !104, size: 32, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !206, file: !95, line: 312, baseType: !104, size: 32, offset: 544)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !206, file: !95, line: 315, baseType: !104, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !206, file: !95, line: 316, baseType: !144, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !206, file: !95, line: 317, baseType: !104, size: 32, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !206, file: !95, line: 318, baseType: !144, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !206, file: !95, line: 321, baseType: !198, size: 32, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !206, file: !95, line: 322, baseType: !198, size: 32, offset: 864)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !206, file: !95, line: 323, baseType: !198, size: 32, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !206, file: !95, line: 324, baseType: !234, size: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !95, line: 174, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 167, size: 256, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !236, file: !95, line: 169, baseType: !104, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !236, file: !95, line: 169, baseType: !104, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !236, file: !95, line: 170, baseType: !104, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !236, file: !95, line: 171, baseType: !104, size: 32, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !236, file: !95, line: 172, baseType: !198, size: 32, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !236, file: !95, line: 173, baseType: !244, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !206, file: !95, line: 325, baseType: !104, size: 32, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !206, file: !95, line: 326, baseType: !144, size: 64, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !100, file: !95, line: 330, baseType: !104, size: 32, offset: 5056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !100, file: !95, line: 331, baseType: !104, size: 32, offset: 5088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !100, file: !95, line: 332, baseType: !104, size: 32, offset: 5120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !100, file: !95, line: 334, baseType: !104, size: 32, offset: 5152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !100, file: !95, line: 335, baseType: !104, size: 32, offset: 5184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !100, file: !95, line: 336, baseType: !40, size: 32, offset: 5216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !100, file: !95, line: 337, baseType: !40, size: 32, offset: 5248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !100, file: !95, line: 338, baseType: !40, size: 32, offset: 5280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !100, file: !95, line: 339, baseType: !40, size: 32, offset: 5312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !100, file: !95, line: 340, baseType: !104, size: 32, offset: 5344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !100, file: !95, line: 344, baseType: !104, size: 32, offset: 5376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !100, file: !95, line: 356, baseType: !104, size: 32, offset: 5408)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !100, file: !95, line: 364, baseType: !104, size: 32, offset: 5440)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !100, file: !95, line: 367, baseType: !104, size: 32, offset: 5472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !100, file: !95, line: 368, baseType: !104, size: 32, offset: 5504)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !100, file: !95, line: 369, baseType: !104, size: 32, offset: 5536)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !100, file: !95, line: 375, baseType: !264, size: 64, offset: 5568)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !162}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !96, file: !51, line: 386, baseType: !268, size: 8256, offset: 5632)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 8256, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 129)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !96, file: !51, line: 387, baseType: !104, size: 32, offset: 13888)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !96, file: !51, line: 388, baseType: !104, size: 32, offset: 13920)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !96, file: !51, line: 389, baseType: !104, size: 32, offset: 13952)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !96, file: !51, line: 390, baseType: !104, size: 32, offset: 13984)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !96, file: !51, line: 391, baseType: !104, size: 32, offset: 14016)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !96, file: !51, line: 402, baseType: !277, size: 576, offset: 14080)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 394, size: 576, elements: !278)
!278 = !{!279, !280, !281, !291, !292, !293}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !277, file: !51, line: 396, baseType: !104, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !277, file: !51, line: 397, baseType: !104, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !277, file: !51, line: 398, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !95, line: 604, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 593, size: 192, elements: !285)
!285 = !{!286, !287, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !284, file: !95, line: 595, baseType: !104, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !284, file: !95, line: 596, baseType: !104, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !284, file: !95, line: 599, baseType: !104, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !284, file: !95, line: 603, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !277, file: !51, line: 399, baseType: !104, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !277, file: !51, line: 400, baseType: !290, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !277, file: !51, line: 401, baseType: !294, size: 320, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !295, line: 56, baseType: !296)
!295 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !295, line: 47, size: 320, elements: !297)
!297 = !{!298, !299, !300, !301, !305, !306}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !296, file: !295, line: 49, baseType: !290, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !296, file: !295, line: 50, baseType: !290, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !296, file: !295, line: 51, baseType: !290, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !296, file: !295, line: 53, baseType: !302, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !303, line: 87, baseType: !304)
!303 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!304 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !296, file: !295, line: 54, baseType: !104, size: 32, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !296, file: !295, line: 55, baseType: !104, size: 32, offset: 288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !96, file: !51, line: 404, baseType: !290, size: 64, offset: 14656)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !96, file: !51, line: 405, baseType: !104, size: 32, offset: 14720)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !96, file: !51, line: 410, baseType: !104, size: 32, offset: 14752)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !96, file: !51, line: 411, baseType: !104, size: 32, offset: 14784)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !96, file: !51, line: 413, baseType: !104, size: 32, offset: 14816)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !96, file: !51, line: 415, baseType: !104, size: 32, offset: 14848)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !96, file: !51, line: 416, baseType: !104, size: 32, offset: 14880)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !96, file: !51, line: 418, baseType: !104, size: 32, offset: 14912)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !96, file: !51, line: 419, baseType: !104, size: 32, offset: 14944)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !96, file: !51, line: 420, baseType: !104, size: 32, offset: 14976)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !96, file: !51, line: 421, baseType: !104, size: 32, offset: 15008)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !96, file: !51, line: 422, baseType: !104, size: 32, offset: 15040)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !96, file: !51, line: 424, baseType: !104, size: 32, offset: 15072)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !96, file: !51, line: 425, baseType: !104, size: 32, offset: 15104)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !96, file: !51, line: 427, baseType: !104, size: 32, offset: 15136)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !96, file: !51, line: 430, baseType: !323, size: 10400, offset: 15168)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 10400, elements: !410)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !325, line: 154, baseType: !326)
!325 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 52, size: 10400, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !345, !346, !347, !348, !349, !350, !351, !352, !353, !360, !361, !409}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !326, file: !325, line: 54, baseType: !104, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !326, file: !325, line: 56, baseType: !104, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !326, file: !325, line: 57, baseType: !104, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !326, file: !325, line: 59, baseType: !104, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !326, file: !325, line: 60, baseType: !104, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !326, file: !325, line: 61, baseType: !104, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !326, file: !325, line: 63, baseType: !104, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !326, file: !325, line: 65, baseType: !104, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !326, file: !325, line: 67, baseType: !104, size: 32, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !326, file: !325, line: 69, baseType: !104, size: 32, offset: 288)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !326, file: !325, line: 70, baseType: !104, size: 32, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !326, file: !325, line: 71, baseType: !104, size: 32, offset: 352)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !326, file: !325, line: 72, baseType: !104, size: 32, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !326, file: !325, line: 73, baseType: !342, size: 8192, offset: 416)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 8192, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !326, file: !325, line: 75, baseType: !104, size: 32, offset: 8608)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !326, file: !325, line: 76, baseType: !104, size: 32, offset: 8640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !326, file: !325, line: 77, baseType: !104, size: 32, offset: 8672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !326, file: !325, line: 78, baseType: !104, size: 32, offset: 8704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !326, file: !325, line: 79, baseType: !104, size: 32, offset: 8736)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !326, file: !325, line: 80, baseType: !104, size: 32, offset: 8768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !326, file: !325, line: 81, baseType: !104, size: 32, offset: 8800)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !326, file: !325, line: 83, baseType: !104, size: 32, offset: 8832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !326, file: !325, line: 90, baseType: !354, size: 128, offset: 8864)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !325, line: 84, size: 128, elements: !355)
!355 = !{!356, !357, !358, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !354, file: !325, line: 86, baseType: !104, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !354, file: !325, line: 87, baseType: !104, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !354, file: !325, line: 88, baseType: !104, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !354, file: !325, line: 89, baseType: !104, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !326, file: !325, line: 92, baseType: !104, size: 32, offset: 8992)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !326, file: !325, line: 150, baseType: !362, size: 1344, offset: 9024)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !325, line: 93, size: 1344, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !362, file: !325, line: 95, baseType: !104, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !362, file: !325, line: 96, baseType: !104, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !362, file: !325, line: 97, baseType: !104, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !362, file: !325, line: 99, baseType: !104, size: 32, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !362, file: !325, line: 100, baseType: !104, size: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !362, file: !325, line: 102, baseType: !104, size: 32, offset: 160)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !362, file: !325, line: 103, baseType: !104, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !362, file: !325, line: 104, baseType: !104, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !362, file: !325, line: 105, baseType: !104, size: 32, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !362, file: !325, line: 106, baseType: !104, size: 32, offset: 288)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !362, file: !325, line: 107, baseType: !104, size: 32, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !362, file: !325, line: 108, baseType: !104, size: 32, offset: 352)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !362, file: !325, line: 110, baseType: !104, size: 32, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !362, file: !325, line: 111, baseType: !104, size: 32, offset: 416)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !362, file: !325, line: 112, baseType: !104, size: 32, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !362, file: !325, line: 114, baseType: !104, size: 32, offset: 480)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !362, file: !325, line: 115, baseType: !40, size: 32, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !362, file: !325, line: 116, baseType: !40, size: 32, offset: 544)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !362, file: !325, line: 117, baseType: !104, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !362, file: !325, line: 119, baseType: !104, size: 32, offset: 608)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !362, file: !325, line: 120, baseType: !104, size: 32, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !362, file: !325, line: 137, baseType: !386, size: 384, offset: 672)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !362, file: !325, line: 122, size: 384, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !386, file: !325, line: 124, baseType: !104, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !386, file: !325, line: 125, baseType: !104, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !386, file: !325, line: 126, baseType: !104, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !386, file: !325, line: 127, baseType: !104, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !386, file: !325, line: 128, baseType: !104, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !386, file: !325, line: 129, baseType: !104, size: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !386, file: !325, line: 130, baseType: !104, size: 32, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !386, file: !325, line: 131, baseType: !104, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !386, file: !325, line: 133, baseType: !104, size: 32, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !386, file: !325, line: 134, baseType: !104, size: 32, offset: 288)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !386, file: !325, line: 135, baseType: !104, size: 32, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !386, file: !325, line: 136, baseType: !104, size: 32, offset: 352)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !362, file: !325, line: 139, baseType: !104, size: 32, offset: 1056)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !362, file: !325, line: 140, baseType: !104, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !362, file: !325, line: 141, baseType: !104, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !362, file: !325, line: 142, baseType: !104, size: 32, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !362, file: !325, line: 143, baseType: !104, size: 32, offset: 1184)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !362, file: !325, line: 144, baseType: !104, size: 32, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !362, file: !325, line: 145, baseType: !104, size: 32, offset: 1248)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !362, file: !325, line: 146, baseType: !104, size: 32, offset: 1280)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !362, file: !325, line: 147, baseType: !104, size: 32, offset: 1312)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !326, file: !325, line: 152, baseType: !104, size: 32, offset: 10368)
!410 = !{!411}
!411 = !DISubrange(count: 1)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !96, file: !51, line: 431, baseType: !413, size: 64, offset: 25600)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !96, file: !51, line: 432, baseType: !415, size: 960, offset: 25664)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 960, elements: !410)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !325, line: 186, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 156, size: 960, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !417, file: !325, line: 158, baseType: !104, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !417, file: !325, line: 159, baseType: !104, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !417, file: !325, line: 161, baseType: !104, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !417, file: !325, line: 163, baseType: !104, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !417, file: !325, line: 164, baseType: !104, size: 32, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !417, file: !325, line: 166, baseType: !104, size: 32, offset: 160)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !417, file: !325, line: 167, baseType: !104, size: 32, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !417, file: !325, line: 169, baseType: !104, size: 32, offset: 224)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !417, file: !325, line: 170, baseType: !104, size: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !417, file: !325, line: 172, baseType: !104, size: 32, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !417, file: !325, line: 173, baseType: !104, size: 32, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !417, file: !325, line: 175, baseType: !104, size: 32, offset: 352)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !417, file: !325, line: 177, baseType: !104, size: 32, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !417, file: !325, line: 178, baseType: !104, size: 32, offset: 416)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !417, file: !325, line: 179, baseType: !104, size: 32, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !417, file: !325, line: 181, baseType: !104, size: 32, offset: 480)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !417, file: !325, line: 183, baseType: !104, size: 32, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !417, file: !325, line: 184, baseType: !437, size: 384, offset: 576)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 384, elements: !44)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !96, file: !51, line: 433, baseType: !440, size: 64, offset: 26624)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !96, file: !51, line: 434, baseType: !104, size: 32, offset: 26688)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !96, file: !51, line: 437, baseType: !104, size: 32, offset: 26720)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !96, file: !51, line: 440, baseType: !444, size: 256, offset: 26752)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !148)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !96, file: !51, line: 441, baseType: !448, size: 128, offset: 27008)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 128, elements: !57)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !155)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !96, file: !51, line: 443, baseType: !444, size: 256, offset: 27136)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !96, file: !51, line: 444, baseType: !448, size: 128, offset: 27392)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !96, file: !51, line: 446, baseType: !454, size: 256, offset: 27520)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 256, elements: !64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !148)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !96, file: !51, line: 447, baseType: !458, size: 128, offset: 27776)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 128, elements: !57)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !155)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !96, file: !51, line: 448, baseType: !454, size: 256, offset: 27904)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !96, file: !51, line: 449, baseType: !458, size: 128, offset: 28160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !96, file: !51, line: 454, baseType: !464, size: 5888, offset: 28288)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 5888, elements: !466)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!466 = !{!467}
!467 = !DISubrange(count: 92)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !96, file: !51, line: 455, baseType: !469, size: 23552, offset: 34176)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 23552, elements: !470)
!470 = !{!467, !65}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !96, file: !51, line: 457, baseType: !438, size: 64, offset: 57728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !96, file: !51, line: 460, baseType: !473, size: 53376, offset: 57856)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !51, line: 364, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 302, size: 53376, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !504, !534, !535, !536, !542, !543, !544, !545, !546, !547, !548, !549}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !474, file: !51, line: 304, baseType: !413, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !474, file: !51, line: 305, baseType: !440, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !474, file: !51, line: 307, baseType: !104, size: 32, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !474, file: !51, line: 308, baseType: !104, size: 32, offset: 160)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !474, file: !51, line: 309, baseType: !104, size: 32, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !474, file: !51, line: 311, baseType: !104, size: 32, offset: 224)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !474, file: !51, line: 313, baseType: !104, size: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !474, file: !51, line: 315, baseType: !104, size: 32, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !474, file: !51, line: 316, baseType: !104, size: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !474, file: !51, line: 317, baseType: !104, size: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !474, file: !51, line: 319, baseType: !104, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !474, file: !51, line: 321, baseType: !104, size: 32, offset: 416)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !474, file: !51, line: 322, baseType: !104, size: 32, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !474, file: !51, line: 324, baseType: !202, size: 64, offset: 480)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !474, file: !51, line: 325, baseType: !104, size: 32, offset: 544)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !474, file: !51, line: 327, baseType: !104, size: 32, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !474, file: !51, line: 329, baseType: !104, size: 32, offset: 608)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !474, file: !51, line: 330, baseType: !104, size: 32, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !474, file: !51, line: 331, baseType: !104, size: 32, offset: 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !474, file: !51, line: 333, baseType: !104, size: 32, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !474, file: !51, line: 334, baseType: !104, size: 32, offset: 736)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !474, file: !51, line: 339, baseType: !498, size: 2048, offset: 768)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 2048, elements: !503)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !51, line: 335, size: 64, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !499, file: !51, line: 337, baseType: !104, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !499, file: !51, line: 338, baseType: !104, size: 32, offset: 32)
!503 = !{!58, !149}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !474, file: !51, line: 342, baseType: !505, size: 49152, align: 128, offset: 2816)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 49152, align: 128, elements: !531)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !507, line: 36, baseType: !508, align: 128)
!507 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !507, line: 26, size: 512, elements: !509)
!509 = !{!510, !517, !518, !521, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !508, file: !507, line: 30, baseType: !511, size: 128, align: 128)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 128, elements: !515)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !78, line: 25, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !43, line: 39, baseType: !514)
!514 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!515 = !{!516}
!516 = !DISubrange(count: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !508, file: !507, line: 31, baseType: !511, size: 128, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !508, file: !507, line: 32, baseType: !519, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !78, line: 26, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !43, line: 41, baseType: !104)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !508, file: !507, line: 33, baseType: !519, size: 32, offset: 288)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !508, file: !507, line: 34, baseType: !519, size: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !508, file: !507, line: 35, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !507, line: 25, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !290, !104, !290, !104, !529, !104}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!531 = !{!532, !533}
!532 = !DISubrange(count: 32)
!533 = !DISubrange(count: 3)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !474, file: !51, line: 344, baseType: !104, size: 32, offset: 51968)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !474, file: !51, line: 345, baseType: !104, size: 32, offset: 52000)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !474, file: !51, line: 350, baseType: !537, size: 1024, offset: 52032)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 1024, elements: !148)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !51, line: 346, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !538, file: !51, line: 348, baseType: !104, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !538, file: !51, line: 349, baseType: !104, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !474, file: !51, line: 352, baseType: !104, size: 32, offset: 53056)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !474, file: !51, line: 354, baseType: !104, size: 32, offset: 53088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !474, file: !51, line: 355, baseType: !104, size: 32, offset: 53120)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !474, file: !51, line: 356, baseType: !104, size: 32, offset: 53152)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !474, file: !51, line: 357, baseType: !104, size: 32, offset: 53184)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !474, file: !51, line: 360, baseType: !104, size: 32, offset: 53216)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !474, file: !51, line: 361, baseType: !104, size: 32, offset: 53248)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !474, file: !51, line: 362, baseType: !104, size: 32, offset: 53280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !96, file: !51, line: 463, baseType: !551, size: 4096, offset: 111232)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !552, line: 46, baseType: !553)
!552 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 27, size: 4096, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !553, file: !552, line: 30, baseType: !104, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !553, file: !552, line: 31, baseType: !104, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !553, file: !552, line: 34, baseType: !104, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !553, file: !552, line: 35, baseType: !104, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !553, file: !552, line: 37, baseType: !290, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !553, file: !552, line: 38, baseType: !290, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !553, file: !552, line: 39, baseType: !290, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !553, file: !552, line: 42, baseType: !104, size: 32, align: 128, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !553, file: !552, line: 45, baseType: !564, size: 3680, offset: 416)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3680, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 460)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !96, file: !51, line: 494, baseType: !568, size: 2112, offset: 115328)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 465, size: 2112, elements: !569)
!569 = !{!570, !708, !710, !711, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !724, !725, !726, !727}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !568, file: !51, line: 468, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !574, line: 146, baseType: !575)
!574 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !574, line: 31, size: 125056, elements: !576)
!576 = !{!577, !578, !579, !580, !583, !584, !585, !586, !587, !588, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !607, !608, !609, !610, !611, !612, !614, !616, !617, !618, !619, !620, !623, !625, !626, !628, !630, !631, !635, !636, !640, !644, !647, !649, !650, !652, !653, !655, !656, !657, !660, !662, !663, !664, !666, !667, !668, !669, !670, !671, !672, !673, !675, !676, !680, !689, !693, !695, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !575, file: !574, line: 34, baseType: !104, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !575, file: !574, line: 35, baseType: !104, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !575, file: !574, line: 36, baseType: !104, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !575, file: !574, line: 37, baseType: !581, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !78, line: 27, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !43, line: 44, baseType: !304)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !575, file: !574, line: 38, baseType: !581, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !575, file: !574, line: 39, baseType: !104, size: 32, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !575, file: !574, line: 40, baseType: !104, size: 32, offset: 288)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !575, file: !574, line: 41, baseType: !104, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !575, file: !574, line: 42, baseType: !104, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !575, file: !574, line: 43, baseType: !589, size: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !575, file: !574, line: 45, baseType: !104, size: 32, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !575, file: !574, line: 46, baseType: !104, size: 32, offset: 480)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !575, file: !574, line: 47, baseType: !104, size: 32, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !575, file: !574, line: 48, baseType: !104, size: 32, offset: 544)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !575, file: !574, line: 49, baseType: !104, size: 32, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !575, file: !574, line: 50, baseType: !104, size: 32, offset: 608)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !575, file: !574, line: 51, baseType: !104, size: 32, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !575, file: !574, line: 52, baseType: !61, size: 8, offset: 672)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !575, file: !574, line: 53, baseType: !61, size: 8, offset: 680)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !575, file: !574, line: 54, baseType: !61, size: 8, offset: 688)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !575, file: !574, line: 55, baseType: !198, size: 32, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !575, file: !574, line: 56, baseType: !198, size: 32, offset: 736)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !575, file: !574, line: 57, baseType: !104, size: 32, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !575, file: !574, line: 60, baseType: !104, size: 32, offset: 800)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !575, file: !574, line: 61, baseType: !605, size: 96, offset: 832)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 96, elements: !606)
!606 = !{!533}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !575, file: !574, line: 62, baseType: !605, size: 96, offset: 928)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !575, file: !574, line: 63, baseType: !605, size: 96, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !575, file: !574, line: 64, baseType: !104, size: 32, offset: 1120)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !575, file: !574, line: 65, baseType: !104, size: 32, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !575, file: !574, line: 66, baseType: !104, size: 32, offset: 1184)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !575, file: !574, line: 67, baseType: !613, size: 192, offset: 1216)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !606)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !575, file: !574, line: 68, baseType: !615, size: 256, offset: 1408)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !575, file: !574, line: 69, baseType: !615, size: 256, offset: 1664)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !575, file: !574, line: 70, baseType: !465, size: 64, offset: 1920)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !575, file: !574, line: 74, baseType: !615, size: 256, offset: 1984)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !575, file: !574, line: 75, baseType: !615, size: 256, offset: 2240)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !575, file: !574, line: 77, baseType: !621, size: 24576, align: 128, offset: 2560)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 24576, align: 128, elements: !622)
!622 = !{!149, !533}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !575, file: !574, line: 78, baseType: !624, size: 1024, offset: 27136)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 1024, elements: !148)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !575, file: !574, line: 79, baseType: !104, size: 32, offset: 28160)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !575, file: !574, line: 80, baseType: !627, size: 64, offset: 28224)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !575, file: !574, line: 83, baseType: !629, size: 64, offset: 28288)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !575, file: !574, line: 84, baseType: !290, size: 64, offset: 28352)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !575, file: !574, line: 85, baseType: !632, size: 128, offset: 28416)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 128, elements: !57)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 32, elements: !57)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !575, file: !574, line: 86, baseType: !633, size: 64, offset: 28544)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !575, file: !574, line: 87, baseType: !637, size: 2176, offset: 28608)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 2176, elements: !638)
!638 = !{!58, !639}
!639 = !DISubrange(count: 17)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !575, file: !574, line: 92, baseType: !641, size: 20736, offset: 30784)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 20736, elements: !642)
!642 = !{!643, !643}
!643 = !DISubrange(count: 18)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !575, file: !574, line: 96, baseType: !645, size: 2176, offset: 51520)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 2176, elements: !638)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !575, file: !574, line: 97, baseType: !648, size: 128, offset: 53696)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 128, elements: !57)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !575, file: !574, line: 98, baseType: !202, size: 64, offset: 53824)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !575, file: !574, line: 99, baseType: !651, size: 1024, offset: 53888)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !503)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !575, file: !574, line: 100, baseType: !634, size: 32, offset: 54912)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !575, file: !574, line: 105, baseType: !654, size: 10368, offset: 54944)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 10368, elements: !642)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !575, file: !574, line: 106, baseType: !654, size: 10368, offset: 65312)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !575, file: !574, line: 107, baseType: !104, size: 32, offset: 75680)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !575, file: !574, line: 108, baseType: !658, size: 576, offset: 75712)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 576, elements: !659)
!659 = !{!643}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !575, file: !574, line: 109, baseType: !661, size: 20736, offset: 76288)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 20736, elements: !642)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !575, file: !574, line: 110, baseType: !646, size: 64, offset: 97024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !575, file: !574, line: 111, baseType: !646, size: 64, offset: 97088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !575, file: !574, line: 112, baseType: !665, size: 64, offset: 97152)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !575, file: !574, line: 113, baseType: !665, size: 64, offset: 97216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !575, file: !574, line: 114, baseType: !665, size: 64, offset: 97280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !575, file: !574, line: 115, baseType: !104, size: 32, offset: 97344)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !575, file: !574, line: 116, baseType: !465, size: 64, offset: 97408)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !575, file: !574, line: 117, baseType: !465, size: 64, offset: 97472)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !575, file: !574, line: 118, baseType: !465, size: 64, offset: 97536)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !575, file: !574, line: 119, baseType: !104, size: 32, offset: 97600)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !575, file: !574, line: 120, baseType: !674, size: 576, offset: 97632)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 576, elements: !659)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !575, file: !574, line: 121, baseType: !40, size: 32, offset: 98208)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !575, file: !574, line: 122, baseType: !677, size: 64, offset: 98240)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !41, line: 27, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !43, line: 45, baseType: !679)
!679 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !575, file: !574, line: 125, baseType: !681, size: 256, offset: 98304)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !95, line: 503, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 496, size: 256, elements: !683)
!683 = !{!684, !686, !687, !688}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !682, file: !95, line: 498, baseType: !685, size: 64)
!685 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !682, file: !95, line: 499, baseType: !685, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !682, file: !95, line: 500, baseType: !685, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !682, file: !95, line: 502, baseType: !685, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !575, file: !574, line: 128, baseType: !690, size: 2008, offset: 98560)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2008, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 251)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !575, file: !574, line: 129, baseType: !694, size: 8032, offset: 100576)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 8032, elements: !691)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !575, file: !574, line: 130, baseType: !696, size: 16064, offset: 108608)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 16064, elements: !691)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !575, file: !574, line: 131, baseType: !104, size: 32, offset: 124672)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !575, file: !574, line: 132, baseType: !104, size: 32, offset: 124704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !575, file: !574, line: 135, baseType: !104, size: 32, offset: 124736)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !575, file: !574, line: 136, baseType: !104, size: 32, offset: 124768)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !575, file: !574, line: 137, baseType: !104, size: 32, offset: 124800)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !575, file: !574, line: 138, baseType: !104, size: 32, offset: 124832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !575, file: !574, line: 139, baseType: !104, size: 32, offset: 124864)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !575, file: !574, line: 142, baseType: !198, size: 32, offset: 124896)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !575, file: !574, line: 143, baseType: !104, size: 32, offset: 124928)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !575, file: !574, line: 144, baseType: !104, size: 32, offset: 124960)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !575, file: !574, line: 145, baseType: !104, size: 32, offset: 124992)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !568, file: !51, line: 470, baseType: !709, size: 128, offset: 64)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 128, elements: !57)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !568, file: !51, line: 473, baseType: !571, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !568, file: !51, line: 476, baseType: !712, size: 1152, offset: 256)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 1152, elements: !659)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !568, file: !51, line: 478, baseType: !104, size: 32, offset: 1408)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !568, file: !51, line: 480, baseType: !104, size: 32, offset: 1440)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !568, file: !51, line: 482, baseType: !104, size: 32, offset: 1472)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !568, file: !51, line: 483, baseType: !104, size: 32, offset: 1504)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !568, file: !51, line: 484, baseType: !104, size: 32, offset: 1536)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !568, file: !51, line: 485, baseType: !104, size: 32, offset: 1568)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !568, file: !51, line: 486, baseType: !104, size: 32, offset: 1600)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !568, file: !51, line: 487, baseType: !581, size: 64, offset: 1664)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !568, file: !51, line: 488, baseType: !581, size: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !568, file: !51, line: 489, baseType: !723, size: 128, offset: 1792)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 128, elements: !57)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !568, file: !51, line: 490, baseType: !581, size: 64, offset: 1920)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !568, file: !51, line: 491, baseType: !581, size: 64, offset: 1984)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !568, file: !51, line: 492, baseType: !104, size: 32, offset: 2048)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !568, file: !51, line: 493, baseType: !104, size: 32, offset: 2080)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !96, file: !51, line: 497, baseType: !572, size: 64, offset: 117440)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !96, file: !51, line: 500, baseType: !572, size: 64, offset: 117504)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !96, file: !51, line: 503, baseType: !104, size: 32, offset: 117568)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !96, file: !51, line: 504, baseType: !732, size: 1216, offset: 117632)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 1216, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 19)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !96, file: !51, line: 505, baseType: !104, size: 32, offset: 118848)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !96, file: !51, line: 506, baseType: !732, size: 1216, offset: 118912)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !96, file: !51, line: 507, baseType: !202, size: 64, offset: 120128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !96, file: !51, line: 510, baseType: !104, size: 32, offset: 120192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !96, file: !51, line: 511, baseType: !104, size: 32, offset: 120224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !96, file: !51, line: 512, baseType: !581, size: 64, offset: 120256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !96, file: !51, line: 522, baseType: !742, size: 10624, offset: 120320)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 515, size: 10624, elements: !743)
!743 = !{!744, !746, !749, !752}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !742, file: !51, line: 517, baseType: !745, size: 256, align: 128)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 256, elements: !148)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !742, file: !51, line: 518, baseType: !747, size: 128, align: 128, offset: 256)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 128, elements: !748)
!748 = !{!58, !65}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !742, file: !51, line: 520, baseType: !750, size: 4096, align: 128, offset: 384)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !751)
!751 = !{!65, !156}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !742, file: !51, line: 521, baseType: !753, size: 6144, align: 128, offset: 4480)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 6144, elements: !754)
!754 = !{!755, !149}
!755 = !DISubrange(count: 24)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !96, file: !51, line: 732, baseType: !757, size: 82688, offset: 130944)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 525, size: 82688, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !786, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !804, !807, !811, !812, !813, !818, !819, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !887, !918, !919, !920, !921, !922, !923, !924, !925, !926, !929, !930, !931, !934, !937, !939, !942, !944, !945}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !757, file: !51, line: 527, baseType: !104, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !757, file: !51, line: 530, baseType: !104, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !757, file: !51, line: 531, baseType: !104, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !757, file: !51, line: 532, baseType: !104, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !757, file: !51, line: 535, baseType: !104, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !757, file: !51, line: 536, baseType: !104, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !757, file: !51, line: 537, baseType: !104, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !757, file: !51, line: 538, baseType: !104, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !757, file: !51, line: 539, baseType: !104, size: 32, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !757, file: !51, line: 542, baseType: !104, size: 32, offset: 288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !757, file: !51, line: 543, baseType: !104, size: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !757, file: !51, line: 544, baseType: !104, size: 32, offset: 352)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !757, file: !51, line: 545, baseType: !104, size: 32, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !757, file: !51, line: 546, baseType: !104, size: 32, offset: 416)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !757, file: !51, line: 547, baseType: !104, size: 32, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !757, file: !51, line: 548, baseType: !104, size: 32, offset: 480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !757, file: !51, line: 549, baseType: !104, size: 32, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !757, file: !51, line: 551, baseType: !104, size: 32, offset: 544)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !757, file: !51, line: 554, baseType: !202, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !757, file: !51, line: 555, baseType: !202, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !757, file: !51, line: 558, baseType: !202, size: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !757, file: !51, line: 559, baseType: !202, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !757, file: !51, line: 561, baseType: !202, size: 64, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !757, file: !51, line: 562, baseType: !202, size: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !757, file: !51, line: 565, baseType: !7, size: 32, offset: 960)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !757, file: !51, line: 566, baseType: !785, size: 128, offset: 992)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !757, file: !51, line: 567, baseType: !787, size: 512, offset: 1120)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !148)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !757, file: !51, line: 568, baseType: !7, size: 32, offset: 1632)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !757, file: !51, line: 569, baseType: !7, size: 32, offset: 1664)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !757, file: !51, line: 570, baseType: !104, size: 32, offset: 1696)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !757, file: !51, line: 571, baseType: !104, size: 32, offset: 1728)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !757, file: !51, line: 572, baseType: !104, size: 32, offset: 1760)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !757, file: !51, line: 573, baseType: !104, size: 32, offset: 1792)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !757, file: !51, line: 574, baseType: !104, size: 32, offset: 1824)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !757, file: !51, line: 575, baseType: !104, size: 32, offset: 1856)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !757, file: !51, line: 576, baseType: !104, size: 32, offset: 1888)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !757, file: !51, line: 577, baseType: !104, size: 32, offset: 1920)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !757, file: !51, line: 578, baseType: !104, size: 32, offset: 1952)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !51, line: 585, baseType: !629, size: 64, offset: 1984)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !757, file: !51, line: 586, baseType: !290, size: 64, offset: 2048)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !757, file: !51, line: 587, baseType: !629, size: 64, offset: 2112)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !757, file: !51, line: 588, baseType: !803, size: 64, offset: 2176)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !757, file: !51, line: 589, baseType: !805, size: 64, offset: 2240)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !515)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !757, file: !51, line: 591, baseType: !808, size: 64, offset: 2304)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !810)
!810 = !{!755}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !757, file: !51, line: 592, baseType: !629, size: 64, offset: 2368)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !757, file: !51, line: 593, baseType: !632, size: 128, offset: 2432)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !757, file: !51, line: 594, baseType: !814, size: 128, offset: 2560)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 128, elements: !57)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !817)
!817 = !{!516, !58}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !757, file: !51, line: 595, baseType: !648, size: 128, offset: 2688)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !757, file: !51, line: 596, baseType: !820, size: 4096, offset: 2816)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 4096, elements: !821)
!821 = !{!58, !532}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !757, file: !51, line: 597, baseType: !629, size: 64, offset: 6912)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !757, file: !51, line: 598, baseType: !629, size: 64, offset: 6976)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !757, file: !51, line: 599, baseType: !465, size: 64, offset: 7040)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !757, file: !51, line: 603, baseType: !624, size: 1024, offset: 7104)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !757, file: !51, line: 606, baseType: !104, size: 32, offset: 8128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !757, file: !51, line: 607, baseType: !104, size: 32, offset: 8160)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !757, file: !51, line: 608, baseType: !60, size: 32, align: 32, offset: 8192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !757, file: !51, line: 609, baseType: !104, size: 32, offset: 8224)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !757, file: !51, line: 611, baseType: !104, size: 32, offset: 8256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !757, file: !51, line: 612, baseType: !104, size: 32, offset: 8288)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !757, file: !51, line: 614, baseType: !104, size: 32, offset: 8320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !757, file: !51, line: 615, baseType: !104, size: 32, offset: 8352)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !757, file: !51, line: 621, baseType: !104, size: 32, offset: 8384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !757, file: !51, line: 624, baseType: !104, size: 32, offset: 8416)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !757, file: !51, line: 626, baseType: !104, size: 32, offset: 8448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !757, file: !51, line: 627, baseType: !104, size: 32, offset: 8480)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !757, file: !51, line: 671, baseType: !839, size: 60672, offset: 8576)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !51, line: 629, size: 60672, elements: !840)
!840 = !{!841, !845, !849, !851, !852, !855, !859, !861, !862, !863, !864, !865, !868, !872, !875, !876, !877, !878, !879, !882, !884, !886}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !839, file: !51, line: 634, baseType: !842, size: 3072, align: 128)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3072, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !839, file: !51, line: 635, baseType: !846, size: 6912, align: 128, offset: 3072)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 6912, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 864)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !839, file: !51, line: 638, baseType: !850, size: 2048, align: 128, offset: 9984)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !343)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !839, file: !51, line: 639, baseType: !850, size: 2048, align: 128, offset: 12032)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !839, file: !51, line: 640, baseType: !853, size: 3072, align: 128, offset: 14080)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 3072, elements: !854)
!854 = !{!533, !156}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !839, file: !51, line: 641, baseType: !856, size: 3840, align: 128, offset: 17152)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 3840, elements: !857)
!857 = !{!858, !149}
!858 = !DISubrange(count: 15)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !839, file: !51, line: 642, baseType: !860, size: 128, offset: 20992)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !839, file: !51, line: 643, baseType: !860, size: 128, offset: 21120)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !839, file: !51, line: 644, baseType: !104, size: 32, offset: 21248)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !839, file: !51, line: 645, baseType: !104, size: 32, offset: 21280)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !839, file: !51, line: 648, baseType: !750, size: 4096, align: 128, offset: 21376)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !839, file: !51, line: 649, baseType: !866, size: 4096, align: 128, offset: 25472)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !867)
!867 = !{!149, !149}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !839, file: !51, line: 652, baseType: !869, size: 576, align: 128, offset: 29568)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 576, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 9)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !839, file: !51, line: 653, baseType: !873, size: 1024, align: 128, offset: 30208)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1024, elements: !874)
!874 = !{!532}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !839, file: !51, line: 656, baseType: !613, size: 192, offset: 31232)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !839, file: !51, line: 658, baseType: !613, size: 192, offset: 31424)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !839, file: !51, line: 661, baseType: !613, size: 192, offset: 31616)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !839, file: !51, line: 664, baseType: !202, size: 64, offset: 31808)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !839, file: !51, line: 665, baseType: !880, size: 24576, offset: 31872)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 24576, elements: !881)
!881 = !{!58, !532, !45}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !839, file: !51, line: 666, baseType: !883, size: 2048, offset: 56448)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 2048, elements: !874)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !839, file: !51, line: 667, baseType: !885, size: 2048, offset: 58496)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 2048, elements: !503)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !839, file: !51, line: 670, baseType: !605, size: 96, offset: 60544)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !757, file: !51, line: 704, baseType: !888, size: 6144, offset: 69248)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !51, line: 674, size: 6144, elements: !889)
!889 = !{!890, !894, !898, !901, !904, !906, !907, !910, !912, !913, !914, !915, !916, !917}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !888, file: !51, line: 677, baseType: !891, size: 320, align: 64)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 320, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 40)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !888, file: !51, line: 680, baseType: !895, size: 384, align: 128, offset: 384)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 384, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 48)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !888, file: !51, line: 683, baseType: !899, size: 640, align: 32, offset: 768)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 640, elements: !900)
!900 = !{!58, !893}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !888, file: !51, line: 686, baseType: !902, size: 2560, align: 128, offset: 1408)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 2560, elements: !903)
!903 = !{!58, !893, !58}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !888, file: !51, line: 687, baseType: !905, size: 1280, align: 64, offset: 3968)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1280, elements: !903)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !888, file: !51, line: 690, baseType: !891, size: 320, align: 32, offset: 5248)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !888, file: !51, line: 692, baseType: !908, size: 256, align: 32, offset: 5568)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 256, elements: !909)
!909 = !{!58, !65, !58}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !888, file: !51, line: 693, baseType: !911, size: 64, align: 32, offset: 5824)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !748)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !888, file: !51, line: 694, baseType: !104, size: 32, offset: 5888)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !888, file: !51, line: 695, baseType: !634, size: 32, align: 32, offset: 5920)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !888, file: !51, line: 698, baseType: !104, size: 32, offset: 5952)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !888, file: !51, line: 699, baseType: !104, size: 32, offset: 5984)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !888, file: !51, line: 702, baseType: !104, size: 32, offset: 6016)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !888, file: !51, line: 703, baseType: !104, size: 32, offset: 6048)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !757, file: !51, line: 707, baseType: !104, size: 32, offset: 75392)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !757, file: !51, line: 708, baseType: !104, size: 32, offset: 75424)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !757, file: !51, line: 709, baseType: !104, size: 32, offset: 75456)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !757, file: !51, line: 710, baseType: !104, size: 32, offset: 75488)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !757, file: !51, line: 711, baseType: !104, size: 32, offset: 75520)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !757, file: !51, line: 712, baseType: !104, size: 32, offset: 75552)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !757, file: !51, line: 713, baseType: !104, size: 32, offset: 75584)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !757, file: !51, line: 714, baseType: !104, size: 32, offset: 75616)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !757, file: !51, line: 717, baseType: !927, size: 128, offset: 75648)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !928)
!928 = !{!58, !58}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !757, file: !51, line: 718, baseType: !104, size: 32, offset: 75776)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !757, file: !51, line: 719, baseType: !104, size: 32, offset: 75808)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !757, file: !51, line: 722, baseType: !932, size: 4096, offset: 75840)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 4096, elements: !933)
!933 = !{!58, !532, !65}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !757, file: !51, line: 723, baseType: !935, size: 64, offset: 79936)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !757, file: !51, line: 724, baseType: !938, size: 2048, offset: 80000)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, elements: !933)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !757, file: !51, line: 725, baseType: !940, size: 64, offset: 82048)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !757, file: !51, line: 728, baseType: !943, size: 144, offset: 82112)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 144, elements: !659)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !757, file: !51, line: 729, baseType: !104, size: 32, offset: 82272)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !757, file: !51, line: 730, baseType: !946, size: 272, offset: 82304)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 272, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 34)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !96, file: !51, line: 735, baseType: !950, size: 64, offset: 213632)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !51, line: 379, baseType: !952)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !51, line: 379, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !96, file: !51, line: 793, baseType: !954, size: 29504, offset: 213696)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 738, size: 29504, elements: !955)
!955 = !{!956, !983, !987, !989, !991, !992, !993, !994, !995, !996, !997, !998, !1001, !1003, !1004, !1007, !1009, !1011, !1012, !1013}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !954, file: !51, line: 764, baseType: !957, size: 5632)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !51, line: 741, size: 5632, elements: !958)
!958 = !{!959, !960, !961, !962, !964, !965, !966, !967, !968, !970, !973, !975, !979, !980, !982}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !957, file: !51, line: 744, baseType: !104, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !957, file: !51, line: 746, baseType: !104, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !957, file: !51, line: 748, baseType: !104, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !957, file: !51, line: 750, baseType: !963, size: 608, offset: 96)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 608, elements: !733)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !957, file: !51, line: 751, baseType: !104, size: 32, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !957, file: !51, line: 752, baseType: !104, size: 32, offset: 736)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !957, file: !51, line: 753, baseType: !104, size: 32, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !957, file: !51, line: 754, baseType: !202, size: 64, offset: 800)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !957, file: !51, line: 755, baseType: !969, size: 2048, offset: 864)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !821)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !957, file: !51, line: 756, baseType: !971, size: 544, offset: 2912)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 544, elements: !972)
!972 = !{!639}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !957, file: !51, line: 757, baseType: !974, size: 192, offset: 3456)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 192, elements: !44)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !957, file: !51, line: 758, baseType: !976, size: 1664, offset: 3648)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1664, elements: !977)
!977 = !{!65, !978}
!978 = !DISubrange(count: 13)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !957, file: !51, line: 760, baseType: !202, size: 64, offset: 5312)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !957, file: !51, line: 762, baseType: !981, size: 192, offset: 5376)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 192, elements: !606)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !957, file: !51, line: 763, baseType: !685, size: 64, offset: 5568)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !954, file: !51, line: 769, baseType: !984, size: 160, offset: 5632)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 160, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 5)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !954, file: !51, line: 770, baseType: !988, size: 320, offset: 5824)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 320, elements: !985)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !954, file: !51, line: 771, baseType: !990, size: 320, offset: 6144)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 320, elements: !985)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !954, file: !51, line: 772, baseType: !971, size: 544, offset: 6464)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !954, file: !51, line: 774, baseType: !988, size: 320, offset: 7040)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !954, file: !51, line: 775, baseType: !990, size: 320, offset: 7360)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !954, file: !51, line: 776, baseType: !990, size: 320, offset: 7680)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !954, file: !51, line: 777, baseType: !990, size: 320, offset: 8000)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !954, file: !51, line: 778, baseType: !990, size: 320, offset: 8320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !954, file: !51, line: 779, baseType: !990, size: 320, offset: 8640)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !954, file: !51, line: 781, baseType: !999, size: 6080, offset: 8960)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 6080, elements: !1000)
!1000 = !{!986, !734}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !954, file: !51, line: 782, baseType: !1002, size: 2176, offset: 15040)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 2176, elements: !638)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !954, file: !51, line: 783, baseType: !723, size: 128, offset: 17216)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !954, file: !51, line: 784, baseType: !1005, size: 8192, offset: 17344)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 8192, elements: !1006)
!1006 = !{!58, !58, !532}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !954, file: !51, line: 785, baseType: !1008, size: 384, offset: 25536)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 384, elements: !44)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !954, file: !51, line: 786, baseType: !1010, size: 3328, offset: 25920)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 3328, elements: !977)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !954, file: !51, line: 788, baseType: !202, size: 64, offset: 29248)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !954, file: !51, line: 789, baseType: !202, size: 64, offset: 29312)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !954, file: !51, line: 791, baseType: !605, size: 96, offset: 29376)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !96, file: !51, line: 795, baseType: !1015, size: 4096, align: 128, offset: 243200)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !1016)
!1016 = !{!58, !156}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !96, file: !51, line: 796, baseType: !1018, size: 2048, align: 128, offset: 247296)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !1016)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !96, file: !51, line: 797, baseType: !1020, size: 64, offset: 249344)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !57)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !96, file: !51, line: 800, baseType: !162, size: 64, offset: 249408)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !96, file: !51, line: 801, baseType: !1023, size: 384, offset: 249472)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 384, elements: !1024)
!1024 = !{!58, !533}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !96, file: !51, line: 802, baseType: !1026, size: 128, offset: 249856)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 128, elements: !57)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !1029)
!1029 = !{!58, !65, !65}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !96, file: !51, line: 805, baseType: !1031, size: 448, offset: 249984)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 448, elements: !1037)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1033, line: 27, baseType: !1034)
!1033 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !290}
!1037 = !{!1038}
!1038 = !DISubrange(count: 7)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !96, file: !51, line: 806, baseType: !1031, size: 448, offset: 250432)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !96, file: !51, line: 807, baseType: !1041, size: 768, offset: 250880)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 768, elements: !1046)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1033, line: 28, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !290, !290}
!1046 = !{!1047}
!1047 = !DISubrange(count: 12)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !96, file: !51, line: 808, baseType: !1049, size: 768, offset: 251648)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 768, elements: !1046)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !96, file: !51, line: 809, baseType: !1051, size: 64, offset: 252416)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1033, line: 29, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !290, !290, !104, !104}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !96, file: !51, line: 811, baseType: !1056, size: 8448, offset: 252480)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1057, line: 110, baseType: !1058)
!1057 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 63, size: 8448, elements: !1059)
!1059 = !{!1060, !1066, !1067, !1068, !1069, !1071, !1072, !1073, !1074, !1080, !1086, !1087, !1091, !1096, !1097, !1103, !1107, !1108, !1109, !1110, !1111, !1116, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1058, file: !1057, line: 65, baseType: !1061, size: 448)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 448, elements: !1037)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1057, line: 26, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!104, !290, !104, !290, !104}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1058, file: !1057, line: 66, baseType: !1061, size: 448, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1058, file: !1057, line: 67, baseType: !1061, size: 448, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1058, file: !1057, line: 68, baseType: !1061, size: 448, offset: 1344)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1058, file: !1057, line: 69, baseType: !1070, size: 256, offset: 1792)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 256, elements: !64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1058, file: !1057, line: 70, baseType: !1061, size: 448, offset: 2048)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1058, file: !1057, line: 71, baseType: !1061, size: 448, offset: 2496)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1058, file: !1057, line: 72, baseType: !1061, size: 448, offset: 2944)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1058, file: !1057, line: 73, baseType: !1075, size: 448, offset: 3392)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 448, elements: !1037)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1057, line: 27, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !290, !290, !290, !290, !104, !646}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1058, file: !1057, line: 74, baseType: !1081, size: 448, offset: 3840)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 448, elements: !1037)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1057, line: 28, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !290, !290, !290, !290, !290, !104, !646}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1058, file: !1057, line: 75, baseType: !1061, size: 448, offset: 4288)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1058, file: !1057, line: 76, baseType: !1088, size: 64, offset: 4736)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!104, !290, !104, !290, !104, !646}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1058, file: !1057, line: 78, baseType: !1092, size: 256, offset: 4800)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 256, elements: !64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!677, !290, !104}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1058, file: !1057, line: 79, baseType: !1092, size: 256, offset: 5056)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1058, file: !1057, line: 81, baseType: !1098, size: 64, offset: 5312)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !438, !104, !438, !104, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1058, file: !1057, line: 83, baseType: !1104, size: 64, offset: 5376)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!198, !1101, !1101, !104}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1058, file: !1057, line: 86, baseType: !1075, size: 448, offset: 5440)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1058, file: !1057, line: 87, baseType: !1081, size: 448, offset: 5888)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1058, file: !1057, line: 88, baseType: !1075, size: 448, offset: 6336)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1058, file: !1057, line: 89, baseType: !1081, size: 448, offset: 6784)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1058, file: !1057, line: 93, baseType: !1112, size: 448, offset: 7232)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 448, elements: !1037)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!104, !646, !465, !104, !465, !803, !104, !104}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1058, file: !1057, line: 98, baseType: !1117, size: 64, offset: 7680)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !290, !290, !646}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1058, file: !1057, line: 99, baseType: !1117, size: 64, offset: 7744)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1058, file: !1057, line: 100, baseType: !1117, size: 64, offset: 7808)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1058, file: !1057, line: 101, baseType: !1117, size: 64, offset: 7872)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1058, file: !1057, line: 102, baseType: !1117, size: 64, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1058, file: !1057, line: 103, baseType: !1117, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1058, file: !1057, line: 104, baseType: !1117, size: 64, offset: 8064)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1058, file: !1057, line: 105, baseType: !1117, size: 64, offset: 8128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1058, file: !1057, line: 106, baseType: !1117, size: 64, offset: 8192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1058, file: !1057, line: 107, baseType: !1117, size: 64, offset: 8256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1058, file: !1057, line: 108, baseType: !1117, size: 64, offset: 8320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1058, file: !1057, line: 109, baseType: !1117, size: 64, offset: 8384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !96, file: !51, line: 812, baseType: !1132, size: 2368, offset: 260928)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !507, line: 111, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 58, size: 2368, elements: !1134)
!1134 = !{!1135, !1142, !1146, !1150, !1157, !1162, !1163, !1167, !1171, !1172, !1176, !1184, !1188, !1192, !1193, !1197, !1201, !1205, !1206, !1207, !1208, !1213}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1133, file: !507, line: 60, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !290, !104, !1139, !104, !104, !104, !104, !104, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1133, file: !507, line: 65, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!290, !290, !646, !1139, !104, !104, !104, !104, !104, !1140}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1133, file: !507, line: 71, baseType: !1147, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !290, !104, !290, !104, !104, !104, !104, !104}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1133, file: !507, line: 75, baseType: !1151, size: 640, offset: 192)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 640, elements: !1155)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !290, !104, !290, !104, !290, !104, !104}
!1155 = !{!1156}
!1156 = !DISubrange(count: 10)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1133, file: !507, line: 78, baseType: !1158, size: 448, offset: 832)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 448, elements: !1037)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !290, !104, !290, !104, !104}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1133, file: !507, line: 79, baseType: !1159, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1133, file: !507, line: 81, baseType: !1164, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !290, !104, !290, !104, !104, !104}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1133, file: !507, line: 84, baseType: !1168, size: 64, offset: 1408)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !290, !290, !290, !290, !104, !104, !104, !803}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1133, file: !507, line: 88, baseType: !1159, size: 64, offset: 1472)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1133, file: !507, line: 91, baseType: !1173, size: 64, offset: 1536)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !290, !104, !104}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1133, file: !507, line: 93, baseType: !1177, size: 64, offset: 1600)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!162, !162, !1180, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1183, line: 18, baseType: !679)
!1183 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1133, file: !507, line: 94, baseType: !1185, size: 64, offset: 1664)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !162, !104}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1133, file: !507, line: 97, baseType: !1189, size: 64, offset: 1728)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !465, !290, !104}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1133, file: !507, line: 98, baseType: !1189, size: 64, offset: 1792)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1133, file: !507, line: 99, baseType: !1194, size: 64, offset: 1856)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !465, !465, !104}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1133, file: !507, line: 100, baseType: !1198, size: 64, offset: 1920)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !465, !104}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1133, file: !507, line: 102, baseType: !1202, size: 64, offset: 1984)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !290, !290, !290, !290, !290, !104, !104, !104, !104}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1133, file: !507, line: 104, baseType: !524, size: 64, offset: 2048)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1133, file: !507, line: 105, baseType: !524, size: 64, offset: 2112)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1133, file: !507, line: 106, baseType: !524, size: 64, offset: 2176)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1133, file: !507, line: 107, baseType: !1209, size: 64, offset: 2240)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !93, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1133, file: !507, line: 109, baseType: !1214, size: 64, offset: 2304)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !646, !465, !465, !465, !465, !104}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !96, file: !51, line: 813, baseType: !1218, size: 960, offset: 263296)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1219, line: 115, baseType: !1220)
!1219 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1219, line: 89, size: 960, elements: !1221)
!1221 = !{!1222, !1226, !1230, !1235, !1236, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1252, !1256, !1260}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1220, file: !1219, line: 94, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !803, !290, !290}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1220, file: !1219, line: 95, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !290, !803}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1220, file: !1219, line: 97, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1234, !290, !290}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1220, file: !1219, line: 98, baseType: !1223, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1220, file: !1219, line: 99, baseType: !1237, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !290, !1234}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1220, file: !1219, line: 100, baseType: !1227, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1220, file: !1219, line: 102, baseType: !1231, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1220, file: !1219, line: 103, baseType: !1237, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1220, file: !1219, line: 104, baseType: !1227, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1220, file: !1219, line: 106, baseType: !1223, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1220, file: !1219, line: 107, baseType: !1227, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1220, file: !1219, line: 109, baseType: !1247, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1250, !290, !290}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1024, elements: !155)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1220, file: !1219, line: 110, baseType: !1253, size: 64, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !290, !1250}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1220, file: !1219, line: 112, baseType: !1257, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !803}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1220, file: !1219, line: 113, baseType: !1257, size: 64, offset: 896)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !96, file: !51, line: 814, baseType: !1262, size: 384, offset: 264256)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1219, line: 126, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1219, line: 117, size: 384, elements: !1264)
!1264 = !{!1265, !1269, !1270, !1274, !1275, !1279}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1263, file: !1219, line: 119, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !803, !803}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1263, file: !1219, line: 120, baseType: !1266, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1263, file: !1219, line: 121, baseType: !1271, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!104, !803, !438, !290}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1263, file: !1219, line: 122, baseType: !1271, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1263, file: !1219, line: 123, baseType: !1276, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!104, !803, !438, !290, !803}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1263, file: !1219, line: 124, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !803, !803, !290}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !96, file: !51, line: 815, baseType: !1284, size: 1408, offset: 264640)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1285, line: 44, baseType: !1286)
!1285 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1285, line: 26, size: 1408, elements: !1287)
!1287 = !{!1288, !1292, !1293, !1297, !1298, !1302, !1306, !1307, !1312, !1316, !1317, !1318, !1320}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1286, file: !1285, line: 28, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!104, !803, !465, !465}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1286, file: !1285, line: 29, baseType: !1289, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1286, file: !1285, line: 30, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!104, !803, !104, !104}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1286, file: !1285, line: 31, baseType: !1294, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1286, file: !1285, line: 33, baseType: !1299, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !803, !449, !104}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1286, file: !1285, line: 34, baseType: !1303, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !803, !445, !104}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1286, file: !1285, line: 35, baseType: !1303, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1286, file: !1285, line: 37, baseType: !1308, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !803, !1311, !465, !104}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1286, file: !1285, line: 39, baseType: !1313, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!104, !803}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1286, file: !1285, line: 40, baseType: !1313, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1286, file: !1285, line: 41, baseType: !1313, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1286, file: !1285, line: 42, baseType: !1319, size: 384, offset: 704)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 384, elements: !44)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1286, file: !1285, line: 43, baseType: !1321, size: 320, offset: 1088)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 320, elements: !985)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!104, !803, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !295, line: 63, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 58, size: 416, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1327, file: !295, line: 60, baseType: !104, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1327, file: !295, line: 61, baseType: !745, size: 256, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1327, file: !295, line: 62, baseType: !147, size: 128, offset: 288)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !96, file: !51, line: 816, baseType: !1333, size: 576, offset: 266048)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !574, line: 170, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 161, size: 576, elements: !1335)
!1335 = !{!1336, !1342, !1343, !1349, !1350}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1334, file: !574, line: 163, baseType: !1337, size: 128)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 128, elements: !57)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !574, line: 159, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !290, !104, !104, !104, !629}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1334, file: !574, line: 164, baseType: !1337, size: 128, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1334, file: !574, line: 165, baseType: !1344, size: 128, offset: 256)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 128, elements: !57)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !574, line: 160, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !290, !104, !104, !104}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1334, file: !574, line: 166, baseType: !1344, size: 128, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1334, file: !574, line: 167, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !290, !1354, !1355, !1358, !104, !104}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1280, elements: !1357)
!1357 = !{!893, !58}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !1360)
!1360 = !{!65, !65}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !96, file: !51, line: 821, baseType: !1362, size: 64, offset: 266624)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !51, line: 377, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !51, line: 366, size: 960, elements: !1365)
!1365 = !{!1366, !1368, !1369, !1370, !1371, !1372, !1373, !1383, !1384}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1364, file: !51, line: 368, baseType: !1367, size: 8)
!1367 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1364, file: !51, line: 369, baseType: !61, size: 8, offset: 8)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1364, file: !51, line: 370, baseType: !61, size: 8, offset: 16)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1364, file: !51, line: 371, baseType: !104, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1364, file: !51, line: 372, baseType: !104, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1364, file: !51, line: 373, baseType: !572, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1364, file: !51, line: 374, baseType: !1374, size: 256, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !574, line: 157, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 149, size: 256, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1375, file: !574, line: 151, baseType: !571, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1375, file: !574, line: 152, baseType: !104, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1375, file: !574, line: 153, baseType: !104, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1375, file: !574, line: 154, baseType: !104, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1375, file: !574, line: 155, baseType: !104, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1375, file: !574, line: 156, baseType: !104, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1364, file: !51, line: 375, baseType: !1374, size: 256, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1364, file: !51, line: 376, baseType: !1374, size: 256, offset: 704)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1396, !1398, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1413, !1414, !1415, !1416, !1419, !1420, !1421}
!1386 = !DILocalVariable(name: "h", arg: 1, scope: !90, file: !3, line: 339, type: !93)
!1387 = !DILocalVariable(name: "mb_y", arg: 2, scope: !90, file: !3, line: 339, type: !104)
!1388 = !DILocalVariable(name: "b_interlaced", scope: !90, file: !3, line: 341, type: !104)
!1389 = !DILocalVariable(name: "qp_thresh", scope: !90, file: !3, line: 342, type: !104)
!1390 = !DILocalVariable(name: "stridey", scope: !90, file: !3, line: 343, type: !104)
!1391 = !DILocalVariable(name: "stride2y", scope: !90, file: !3, line: 344, type: !104)
!1392 = !DILocalVariable(name: "strideuv", scope: !90, file: !3, line: 345, type: !104)
!1393 = !DILocalVariable(name: "stride2uv", scope: !90, file: !3, line: 346, type: !104)
!1394 = !DILocalVariable(name: "nnz_backup", scope: !90, file: !3, line: 347, type: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1396 = !DILocalVariable(name: "mb_x", scope: !1397, file: !3, line: 352, type: !104)
!1397 = distinct !DILexicalBlock(scope: !90, file: !3, line: 352, column: 5)
!1398 = !DILocalVariable(name: "mb_xy", scope: !1399, file: !3, line: 357, type: !104)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 353, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 352, column: 5)
!1401 = !DILocalVariable(name: "transform_8x8", scope: !1399, file: !3, line: 358, type: !104)
!1402 = !DILocalVariable(name: "intra_cur", scope: !1399, file: !3, line: 359, type: !104)
!1403 = !DILocalVariable(name: "bs", scope: !1399, file: !3, line: 360, type: !1358)
!1404 = !DILocalVariable(name: "pixy", scope: !1399, file: !3, line: 362, type: !290)
!1405 = !DILocalVariable(name: "pixu", scope: !1399, file: !3, line: 363, type: !290)
!1406 = !DILocalVariable(name: "pixv", scope: !1399, file: !3, line: 364, type: !290)
!1407 = !DILocalVariable(name: "qp", scope: !1399, file: !3, line: 372, type: !104)
!1408 = !DILocalVariable(name: "qpc", scope: !1399, file: !3, line: 373, type: !104)
!1409 = !DILocalVariable(name: "first_edge_only", scope: !1399, file: !3, line: 374, type: !104)
!1410 = !DILocalVariable(name: "qpl", scope: !1411, file: !3, line: 390, type: !104)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 389, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 388, column: 13)
!1413 = !DILocalVariable(name: "qp_left", scope: !1411, file: !3, line: 391, type: !104)
!1414 = !DILocalVariable(name: "qpc_left", scope: !1411, file: !3, line: 392, type: !104)
!1415 = !DILocalVariable(name: "intra_left", scope: !1411, file: !3, line: 393, type: !104)
!1416 = !DILocalVariable(name: "qpt", scope: !1417, file: !3, line: 409, type: !104)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 408, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 407, column: 13)
!1419 = !DILocalVariable(name: "qp_top", scope: !1417, file: !3, line: 410, type: !104)
!1420 = !DILocalVariable(name: "qpc_top", scope: !1417, file: !3, line: 411, type: !104)
!1421 = !DILocalVariable(name: "intra_top", scope: !1417, file: !3, line: 412, type: !104)
!1422 = distinct !DIAssignID()
!1423 = distinct !DIAssignID()
!1424 = distinct !DIAssignID()
!1425 = distinct !DIAssignID()
!1426 = distinct !DIAssignID()
!1427 = distinct !DIAssignID()
!1428 = distinct !DIAssignID()
!1429 = distinct !DIAssignID()
!1430 = distinct !DIAssignID()
!1431 = distinct !DIAssignID()
!1432 = distinct !DIAssignID()
!1433 = distinct !DIAssignID()
!1434 = !DILocation(line: 0, scope: !90)
!1435 = !DILocation(line: 341, column: 30, scope: !90)
!1436 = !DILocation(line: 342, column: 26, scope: !90)
!1437 = !DILocation(line: 342, column: 83, scope: !90)
!1438 = !DILocation(line: 342, column: 81, scope: !90)
!1439 = !DILocation(line: 343, column: 24, scope: !90)
!1440 = !DILocation(line: 343, column: 30, scope: !90)
!1441 = !DILocation(line: 343, column: 21, scope: !90)
!1442 = !DILocation(line: 344, column: 29, scope: !90)
!1443 = !DILocation(line: 345, column: 21, scope: !90)
!1444 = !DILocation(line: 346, column: 30, scope: !90)
!1445 = !DILocation(line: 347, column: 36, scope: !90)
!1446 = !DILocation(line: 349, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !90, file: !3, line: 349, column: 9)
!1448 = !DILocation(line: 349, column: 18, scope: !1447)
!1449 = !DILocation(line: 349, column: 10, scope: !1447)
!1450 = !DILocation(line: 349, column: 26, scope: !1447)
!1451 = !DILocation(line: 349, column: 37, scope: !1447)
!1452 = !DILocation(line: 349, column: 29, scope: !1447)
!1453 = !DILocation(line: 349, column: 9, scope: !90)
!1454 = !DILocalVariable(name: "h", arg: 1, scope: !1455, file: !3, line: 53, type: !93)
!1455 = distinct !DISubprogram(name: "munge_cavlc_nnz", scope: !3, file: !3, line: 53, type: !1456, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1461)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !93, !104, !1395, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !93, !104, !1395}
!1461 = !{!1454, !1462, !1463, !1464}
!1462 = !DILocalVariable(name: "mb_y", arg: 2, scope: !1455, file: !3, line: 53, type: !104)
!1463 = !DILocalVariable(name: "buf", arg: 3, scope: !1455, file: !3, line: 53, type: !1395)
!1464 = !DILocalVariable(name: "func", arg: 4, scope: !1455, file: !3, line: 53, type: !1458)
!1465 = !DILocation(line: 0, scope: !1455, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 350, column: 9, scope: !1447)
!1467 = !DILocalVariable(name: "h", arg: 1, scope: !1468, file: !3, line: 29, type: !93)
!1468 = distinct !DISubprogram(name: "munge_cavlc_nnz_row", scope: !3, file: !3, line: 29, type: !1459, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1469 = !{!1467, !1470, !1471, !1472, !1473, !1474, !1476}
!1470 = !DILocalVariable(name: "mb_y", arg: 2, scope: !1468, file: !3, line: 29, type: !104)
!1471 = !DILocalVariable(name: "buf", arg: 3, scope: !1468, file: !3, line: 29, type: !1395)
!1472 = !DILocalVariable(name: "src", scope: !1468, file: !3, line: 31, type: !38)
!1473 = !DILocalVariable(name: "transform", scope: !1468, file: !3, line: 32, type: !629)
!1474 = !DILocalVariable(name: "x", scope: !1475, file: !3, line: 33, type: !104)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 33, column: 5)
!1476 = !DILocalVariable(name: "nnz", scope: !1477, file: !3, line: 38, type: !104)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 37, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 36, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 34, column: 5)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 33, column: 5)
!1481 = !DILocation(line: 0, scope: !1468, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 55, column: 5, scope: !1455, inlinedAt: !1466)
!1483 = !DILocation(line: 31, column: 48, scope: !1468, inlinedAt: !1482)
!1484 = !DILocation(line: 31, column: 75, scope: !1468, inlinedAt: !1482)
!1485 = !DILocation(line: 31, column: 80, scope: !1468, inlinedAt: !1482)
!1486 = !DILocation(line: 31, column: 70, scope: !1468, inlinedAt: !1482)
!1487 = !DILocation(line: 31, column: 63, scope: !1468, inlinedAt: !1482)
!1488 = !DILocation(line: 32, column: 31, scope: !1468, inlinedAt: !1482)
!1489 = !DILocation(line: 32, column: 49, scope: !1468, inlinedAt: !1482)
!1490 = !DILocation(line: 0, scope: !1475, inlinedAt: !1482)
!1491 = !DILocation(line: 33, column: 22, scope: !1480, inlinedAt: !1482)
!1492 = !DILocation(line: 33, column: 5, scope: !1475, inlinedAt: !1482)
!1493 = !DILocation(line: 35, column: 20, scope: !1479, inlinedAt: !1482)
!1494 = !DILocation(line: 35, column: 27, scope: !1479, inlinedAt: !1482)
!1495 = !DILocation(line: 35, column: 9, scope: !1479, inlinedAt: !1482)
!1496 = !DILocation(line: 36, column: 13, scope: !1478, inlinedAt: !1482)
!1497 = !DILocation(line: 36, column: 13, scope: !1479, inlinedAt: !1482)
!1498 = !DILocation(line: 38, column: 23, scope: !1477, inlinedAt: !1482)
!1499 = !DILocation(line: 38, column: 35, scope: !1477, inlinedAt: !1482)
!1500 = !DILocation(line: 38, column: 33, scope: !1477, inlinedAt: !1482)
!1501 = !DILocation(line: 0, scope: !1477, inlinedAt: !1482)
!1502 = !DILocation(line: 39, column: 38, scope: !1477, inlinedAt: !1482)
!1503 = !DILocation(line: 39, column: 69, scope: !1477, inlinedAt: !1482)
!1504 = !DILocation(line: 39, column: 66, scope: !1477, inlinedAt: !1482)
!1505 = !DILocation(line: 39, column: 35, scope: !1477, inlinedAt: !1482)
!1506 = !DILocation(line: 39, column: 23, scope: !1477, inlinedAt: !1482)
!1507 = !DILocation(line: 40, column: 19, scope: !1477, inlinedAt: !1482)
!1508 = !DILocation(line: 40, column: 31, scope: !1477, inlinedAt: !1482)
!1509 = !DILocation(line: 40, column: 29, scope: !1477, inlinedAt: !1482)
!1510 = !DILocation(line: 41, column: 38, scope: !1477, inlinedAt: !1482)
!1511 = !DILocation(line: 41, column: 69, scope: !1477, inlinedAt: !1482)
!1512 = !DILocation(line: 41, column: 66, scope: !1477, inlinedAt: !1482)
!1513 = !DILocation(line: 41, column: 35, scope: !1477, inlinedAt: !1482)
!1514 = !DILocation(line: 41, column: 23, scope: !1477, inlinedAt: !1482)
!1515 = !DILocation(line: 42, column: 9, scope: !1477, inlinedAt: !1482)
!1516 = !DILocation(line: 33, column: 44, scope: !1480, inlinedAt: !1482)
!1517 = !DILocation(line: 33, column: 26, scope: !1480, inlinedAt: !1482)
!1518 = !DILocation(line: 33, column: 31, scope: !1480, inlinedAt: !1482)
!1519 = distinct !{!1519, !1492, !1520}
!1520 = !DILocation(line: 43, column: 5, scope: !1475, inlinedAt: !1482)
!1521 = !DILocation(line: 56, column: 14, scope: !1522, inlinedAt: !1466)
!1522 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 56, column: 9)
!1523 = !DILocation(line: 56, column: 9, scope: !1455, inlinedAt: !1466)
!1524 = !DILocation(line: 57, column: 22, scope: !1522, inlinedAt: !1466)
!1525 = !DILocation(line: 57, column: 30, scope: !1522, inlinedAt: !1466)
!1526 = !DILocation(line: 0, scope: !1468, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 57, column: 9, scope: !1522, inlinedAt: !1466)
!1528 = !DILocation(line: 31, column: 48, scope: !1468, inlinedAt: !1527)
!1529 = !DILocation(line: 31, column: 70, scope: !1468, inlinedAt: !1527)
!1530 = !DILocation(line: 31, column: 63, scope: !1468, inlinedAt: !1527)
!1531 = !DILocation(line: 32, column: 31, scope: !1468, inlinedAt: !1527)
!1532 = !DILocation(line: 32, column: 49, scope: !1468, inlinedAt: !1527)
!1533 = !DILocation(line: 0, scope: !1475, inlinedAt: !1527)
!1534 = !DILocation(line: 33, column: 22, scope: !1480, inlinedAt: !1527)
!1535 = !DILocation(line: 33, column: 5, scope: !1475, inlinedAt: !1527)
!1536 = !DILocation(line: 35, column: 20, scope: !1479, inlinedAt: !1527)
!1537 = !DILocation(line: 35, column: 27, scope: !1479, inlinedAt: !1527)
!1538 = !DILocation(line: 35, column: 9, scope: !1479, inlinedAt: !1527)
!1539 = !DILocation(line: 36, column: 13, scope: !1478, inlinedAt: !1527)
!1540 = !DILocation(line: 36, column: 13, scope: !1479, inlinedAt: !1527)
!1541 = !DILocation(line: 38, column: 23, scope: !1477, inlinedAt: !1527)
!1542 = !DILocation(line: 38, column: 35, scope: !1477, inlinedAt: !1527)
!1543 = !DILocation(line: 38, column: 33, scope: !1477, inlinedAt: !1527)
!1544 = !DILocation(line: 0, scope: !1477, inlinedAt: !1527)
!1545 = !DILocation(line: 39, column: 38, scope: !1477, inlinedAt: !1527)
!1546 = !DILocation(line: 39, column: 69, scope: !1477, inlinedAt: !1527)
!1547 = !DILocation(line: 39, column: 66, scope: !1477, inlinedAt: !1527)
!1548 = !DILocation(line: 39, column: 35, scope: !1477, inlinedAt: !1527)
!1549 = !DILocation(line: 39, column: 23, scope: !1477, inlinedAt: !1527)
!1550 = !DILocation(line: 40, column: 19, scope: !1477, inlinedAt: !1527)
!1551 = !DILocation(line: 40, column: 31, scope: !1477, inlinedAt: !1527)
!1552 = !DILocation(line: 40, column: 29, scope: !1477, inlinedAt: !1527)
!1553 = !DILocation(line: 41, column: 38, scope: !1477, inlinedAt: !1527)
!1554 = !DILocation(line: 41, column: 69, scope: !1477, inlinedAt: !1527)
!1555 = !DILocation(line: 41, column: 66, scope: !1477, inlinedAt: !1527)
!1556 = !DILocation(line: 41, column: 35, scope: !1477, inlinedAt: !1527)
!1557 = !DILocation(line: 41, column: 23, scope: !1477, inlinedAt: !1527)
!1558 = !DILocation(line: 42, column: 9, scope: !1477, inlinedAt: !1527)
!1559 = !DILocation(line: 33, column: 44, scope: !1480, inlinedAt: !1527)
!1560 = !DILocation(line: 33, column: 26, scope: !1480, inlinedAt: !1527)
!1561 = !DILocation(line: 33, column: 31, scope: !1480, inlinedAt: !1527)
!1562 = distinct !{!1562, !1535, !1563}
!1563 = !DILocation(line: 43, column: 5, scope: !1475, inlinedAt: !1527)
!1564 = !DILocation(line: 58, column: 15, scope: !1565, inlinedAt: !1466)
!1565 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 58, column: 9)
!1566 = !DILocation(line: 58, column: 9, scope: !1565, inlinedAt: !1466)
!1567 = !DILocation(line: 58, column: 9, scope: !1455, inlinedAt: !1466)
!1568 = !DILocation(line: 60, column: 22, scope: !1569, inlinedAt: !1466)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 59, column: 5)
!1570 = !DILocation(line: 60, column: 40, scope: !1569, inlinedAt: !1466)
!1571 = !DILocation(line: 60, column: 51, scope: !1569, inlinedAt: !1466)
!1572 = !DILocation(line: 60, column: 30, scope: !1569, inlinedAt: !1466)
!1573 = !DILocation(line: 0, scope: !1468, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 60, column: 9, scope: !1569, inlinedAt: !1466)
!1575 = !DILocation(line: 31, column: 48, scope: !1468, inlinedAt: !1574)
!1576 = !DILocation(line: 31, column: 70, scope: !1468, inlinedAt: !1574)
!1577 = !DILocation(line: 31, column: 63, scope: !1468, inlinedAt: !1574)
!1578 = !DILocation(line: 32, column: 31, scope: !1468, inlinedAt: !1574)
!1579 = !DILocation(line: 32, column: 49, scope: !1468, inlinedAt: !1574)
!1580 = !DILocation(line: 0, scope: !1475, inlinedAt: !1574)
!1581 = !DILocation(line: 33, column: 22, scope: !1480, inlinedAt: !1574)
!1582 = !DILocation(line: 33, column: 5, scope: !1475, inlinedAt: !1574)
!1583 = !DILocation(line: 35, column: 20, scope: !1479, inlinedAt: !1574)
!1584 = !DILocation(line: 35, column: 27, scope: !1479, inlinedAt: !1574)
!1585 = !DILocation(line: 35, column: 9, scope: !1479, inlinedAt: !1574)
!1586 = !DILocation(line: 36, column: 13, scope: !1478, inlinedAt: !1574)
!1587 = !DILocation(line: 36, column: 13, scope: !1479, inlinedAt: !1574)
!1588 = !DILocation(line: 38, column: 23, scope: !1477, inlinedAt: !1574)
!1589 = !DILocation(line: 38, column: 35, scope: !1477, inlinedAt: !1574)
!1590 = !DILocation(line: 38, column: 33, scope: !1477, inlinedAt: !1574)
!1591 = !DILocation(line: 0, scope: !1477, inlinedAt: !1574)
!1592 = !DILocation(line: 39, column: 38, scope: !1477, inlinedAt: !1574)
!1593 = !DILocation(line: 39, column: 69, scope: !1477, inlinedAt: !1574)
!1594 = !DILocation(line: 39, column: 66, scope: !1477, inlinedAt: !1574)
!1595 = !DILocation(line: 39, column: 35, scope: !1477, inlinedAt: !1574)
!1596 = !DILocation(line: 39, column: 23, scope: !1477, inlinedAt: !1574)
!1597 = !DILocation(line: 40, column: 19, scope: !1477, inlinedAt: !1574)
!1598 = !DILocation(line: 40, column: 31, scope: !1477, inlinedAt: !1574)
!1599 = !DILocation(line: 40, column: 29, scope: !1477, inlinedAt: !1574)
!1600 = !DILocation(line: 41, column: 38, scope: !1477, inlinedAt: !1574)
!1601 = !DILocation(line: 41, column: 69, scope: !1477, inlinedAt: !1574)
!1602 = !DILocation(line: 41, column: 66, scope: !1477, inlinedAt: !1574)
!1603 = !DILocation(line: 41, column: 35, scope: !1477, inlinedAt: !1574)
!1604 = !DILocation(line: 41, column: 23, scope: !1477, inlinedAt: !1574)
!1605 = !DILocation(line: 42, column: 9, scope: !1477, inlinedAt: !1574)
!1606 = !DILocation(line: 33, column: 44, scope: !1480, inlinedAt: !1574)
!1607 = !DILocation(line: 33, column: 26, scope: !1480, inlinedAt: !1574)
!1608 = !DILocation(line: 33, column: 31, scope: !1480, inlinedAt: !1574)
!1609 = distinct !{!1609, !1582, !1610}
!1610 = !DILocation(line: 43, column: 5, scope: !1475, inlinedAt: !1574)
!1611 = !DILocation(line: 61, column: 13, scope: !1569, inlinedAt: !1466)
!1612 = !DILocation(line: 62, column: 26, scope: !1613, inlinedAt: !1466)
!1613 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 61, column: 13)
!1614 = !DILocation(line: 62, column: 55, scope: !1613, inlinedAt: !1466)
!1615 = !DILocation(line: 62, column: 34, scope: !1613, inlinedAt: !1466)
!1616 = !DILocation(line: 0, scope: !1468, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 62, column: 13, scope: !1613, inlinedAt: !1466)
!1618 = !DILocation(line: 31, column: 48, scope: !1468, inlinedAt: !1617)
!1619 = !DILocation(line: 31, column: 70, scope: !1468, inlinedAt: !1617)
!1620 = !DILocation(line: 31, column: 63, scope: !1468, inlinedAt: !1617)
!1621 = !DILocation(line: 32, column: 31, scope: !1468, inlinedAt: !1617)
!1622 = !DILocation(line: 32, column: 49, scope: !1468, inlinedAt: !1617)
!1623 = !DILocation(line: 0, scope: !1475, inlinedAt: !1617)
!1624 = !DILocation(line: 33, column: 22, scope: !1480, inlinedAt: !1617)
!1625 = !DILocation(line: 33, column: 5, scope: !1475, inlinedAt: !1617)
!1626 = !DILocation(line: 35, column: 20, scope: !1479, inlinedAt: !1617)
!1627 = !DILocation(line: 35, column: 27, scope: !1479, inlinedAt: !1617)
!1628 = !DILocation(line: 35, column: 9, scope: !1479, inlinedAt: !1617)
!1629 = !DILocation(line: 36, column: 13, scope: !1478, inlinedAt: !1617)
!1630 = !DILocation(line: 36, column: 13, scope: !1479, inlinedAt: !1617)
!1631 = !DILocation(line: 38, column: 23, scope: !1477, inlinedAt: !1617)
!1632 = !DILocation(line: 38, column: 35, scope: !1477, inlinedAt: !1617)
!1633 = !DILocation(line: 38, column: 33, scope: !1477, inlinedAt: !1617)
!1634 = !DILocation(line: 0, scope: !1477, inlinedAt: !1617)
!1635 = !DILocation(line: 39, column: 38, scope: !1477, inlinedAt: !1617)
!1636 = !DILocation(line: 39, column: 69, scope: !1477, inlinedAt: !1617)
!1637 = !DILocation(line: 39, column: 66, scope: !1477, inlinedAt: !1617)
!1638 = !DILocation(line: 39, column: 35, scope: !1477, inlinedAt: !1617)
!1639 = !DILocation(line: 39, column: 23, scope: !1477, inlinedAt: !1617)
!1640 = !DILocation(line: 40, column: 19, scope: !1477, inlinedAt: !1617)
!1641 = !DILocation(line: 40, column: 31, scope: !1477, inlinedAt: !1617)
!1642 = !DILocation(line: 40, column: 29, scope: !1477, inlinedAt: !1617)
!1643 = !DILocation(line: 41, column: 38, scope: !1477, inlinedAt: !1617)
!1644 = !DILocation(line: 41, column: 69, scope: !1477, inlinedAt: !1617)
!1645 = !DILocation(line: 41, column: 66, scope: !1477, inlinedAt: !1617)
!1646 = !DILocation(line: 41, column: 35, scope: !1477, inlinedAt: !1617)
!1647 = !DILocation(line: 41, column: 23, scope: !1477, inlinedAt: !1617)
!1648 = !DILocation(line: 42, column: 9, scope: !1477, inlinedAt: !1617)
!1649 = !DILocation(line: 33, column: 44, scope: !1480, inlinedAt: !1617)
!1650 = !DILocation(line: 33, column: 26, scope: !1480, inlinedAt: !1617)
!1651 = !DILocation(line: 33, column: 31, scope: !1480, inlinedAt: !1617)
!1652 = distinct !{!1652, !1625, !1653}
!1653 = !DILocation(line: 43, column: 5, scope: !1475, inlinedAt: !1617)
!1654 = !DILocation(line: 0, scope: !1397)
!1655 = !DILocation(line: 352, column: 34, scope: !1400)
!1656 = !DILocation(line: 352, column: 39, scope: !1400)
!1657 = !DILocation(line: 352, column: 29, scope: !1400)
!1658 = !DILocation(line: 352, column: 5, scope: !1397)
!1659 = !DILocation(line: 431, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !90, file: !3, line: 431, column: 9)
!1661 = !DILocation(line: 431, column: 18, scope: !1660)
!1662 = !DILocation(line: 431, column: 10, scope: !1660)
!1663 = !DILocation(line: 431, column: 26, scope: !1660)
!1664 = !DILocation(line: 354, column: 35, scope: !1399)
!1665 = !DILocation(line: 354, column: 9, scope: !1399)
!1666 = !DILocation(line: 355, column: 9, scope: !1399)
!1667 = !DILocation(line: 357, column: 27, scope: !1399)
!1668 = !DILocation(line: 0, scope: !1399)
!1669 = !DILocation(line: 358, column: 35, scope: !1399)
!1670 = !DILocation(line: 358, column: 29, scope: !1399)
!1671 = !DILocation(line: 359, column: 25, scope: !1399)
!1672 = !DILocation(line: 360, column: 55, scope: !1399)
!1673 = !DILocation(line: 360, column: 31, scope: !1399)
!1674 = !DILocation(line: 362, column: 28, scope: !1399)
!1675 = !DILocation(line: 362, column: 34, scope: !1399)
!1676 = !DILocation(line: 362, column: 25, scope: !1399)
!1677 = !DILocation(line: 362, column: 52, scope: !1399)
!1678 = !DILocation(line: 362, column: 43, scope: !1399)
!1679 = !DILocation(line: 362, column: 66, scope: !1399)
!1680 = !DILocation(line: 362, column: 62, scope: !1399)
!1681 = !DILocation(line: 363, column: 25, scope: !1399)
!1682 = !DILocation(line: 363, column: 52, scope: !1399)
!1683 = !DILocation(line: 363, column: 43, scope: !1399)
!1684 = !DILocation(line: 363, column: 66, scope: !1399)
!1685 = !DILocation(line: 363, column: 62, scope: !1399)
!1686 = !DILocation(line: 364, column: 25, scope: !1399)
!1687 = !DILocation(line: 364, column: 43, scope: !1399)
!1688 = !DILocation(line: 364, column: 62, scope: !1399)
!1689 = !DILocation(line: 365, column: 26, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 365, column: 13)
!1691 = !DILocation(line: 372, column: 24, scope: !1399)
!1692 = !DILocation(line: 372, column: 18, scope: !1399)
!1693 = !DILocation(line: 373, column: 22, scope: !1399)
!1694 = !DILocation(line: 373, column: 19, scope: !1399)
!1695 = !DILocation(line: 374, column: 49, scope: !1399)
!1696 = !DILocation(line: 374, column: 59, scope: !1399)
!1697 = !DILocation(line: 388, column: 19, scope: !1412)
!1698 = !DILocation(line: 388, column: 31, scope: !1412)
!1699 = !DILocation(line: 388, column: 13, scope: !1399)
!1700 = !DILocation(line: 390, column: 38, scope: !1411)
!1701 = !DILocation(line: 390, column: 23, scope: !1411)
!1702 = !DILocation(line: 0, scope: !1411)
!1703 = !DILocation(line: 391, column: 31, scope: !1411)
!1704 = !DILocation(line: 391, column: 37, scope: !1411)
!1705 = !DILocation(line: 391, column: 42, scope: !1411)
!1706 = !DILocation(line: 392, column: 54, scope: !1411)
!1707 = !DILocation(line: 392, column: 52, scope: !1411)
!1708 = !DILocation(line: 392, column: 78, scope: !1411)
!1709 = !DILocation(line: 392, column: 83, scope: !1411)
!1710 = !DILocation(line: 393, column: 30, scope: !1411)
!1711 = !DILocation(line: 394, column: 27, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 394, column: 17)
!1713 = !DILocation(line: 395, column: 17, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 395, column: 17)
!1715 = !DILocalVariable(name: "h", arg: 1, scope: !1716, file: !3, line: 326, type: !93)
!1716 = distinct !DISubprogram(name: "deblock_edge_intra", scope: !3, file: !3, line: 326, type: !1717, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !93, !290, !290, !104, !290, !104, !104, !1345}
!1719 = !{!1715, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1720 = !DILocalVariable(name: "pix1", arg: 2, scope: !1716, file: !3, line: 326, type: !290)
!1721 = !DILocalVariable(name: "pix2", arg: 3, scope: !1716, file: !3, line: 326, type: !290)
!1722 = !DILocalVariable(name: "i_stride", arg: 4, scope: !1716, file: !3, line: 326, type: !104)
!1723 = !DILocalVariable(name: "bS", arg: 5, scope: !1716, file: !3, line: 326, type: !290)
!1724 = !DILocalVariable(name: "i_qp", arg: 6, scope: !1716, file: !3, line: 326, type: !104)
!1725 = !DILocalVariable(name: "b_chroma", arg: 7, scope: !1716, file: !3, line: 326, type: !104)
!1726 = !DILocalVariable(name: "pf_intra", arg: 8, scope: !1716, file: !3, line: 326, type: !1345)
!1727 = !DILocalVariable(name: "alpha", scope: !1716, file: !3, line: 328, type: !104)
!1728 = !DILocalVariable(name: "beta", scope: !1716, file: !3, line: 329, type: !104)
!1729 = !DILocation(line: 0, scope: !1716, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 395, column: 17, scope: !1714)
!1731 = !DILocation(line: 328, column: 17, scope: !1716, inlinedAt: !1730)
!1732 = !DILocation(line: 329, column: 17, scope: !1716, inlinedAt: !1730)
!1733 = !DILocation(line: 331, column: 10, scope: !1734, inlinedAt: !1730)
!1734 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 331, column: 9)
!1735 = !DILocation(line: 331, column: 16, scope: !1734, inlinedAt: !1730)
!1736 = !DILocation(line: 334, column: 5, scope: !1716, inlinedAt: !1730)
!1737 = !DILocation(line: 395, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 395, column: 17)
!1739 = !DILocation(line: 0, scope: !1716, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 395, column: 17, scope: !1738)
!1741 = !DILocation(line: 328, column: 17, scope: !1716, inlinedAt: !1740)
!1742 = !DILocation(line: 329, column: 17, scope: !1716, inlinedAt: !1740)
!1743 = !DILocation(line: 331, column: 10, scope: !1734, inlinedAt: !1740)
!1744 = !DILocation(line: 331, column: 16, scope: !1734, inlinedAt: !1740)
!1745 = !DILocation(line: 334, column: 5, scope: !1716, inlinedAt: !1740)
!1746 = !DILocation(line: 336, column: 9, scope: !1747, inlinedAt: !1740)
!1747 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 335, column: 9)
!1748 = !DILocation(line: 397, column: 17, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 397, column: 17)
!1750 = !DILocalVariable(name: "tc", scope: !1751, file: !3, line: 311, type: !941)
!1751 = distinct !DISubprogram(name: "deblock_edge", scope: !3, file: !3, line: 306, type: !1752, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !93, !290, !290, !104, !290, !104, !104, !1338}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1750}
!1755 = !DILocalVariable(name: "h", arg: 1, scope: !1751, file: !3, line: 306, type: !93)
!1756 = !DILocalVariable(name: "pix1", arg: 2, scope: !1751, file: !3, line: 306, type: !290)
!1757 = !DILocalVariable(name: "pix2", arg: 3, scope: !1751, file: !3, line: 306, type: !290)
!1758 = !DILocalVariable(name: "i_stride", arg: 4, scope: !1751, file: !3, line: 306, type: !104)
!1759 = !DILocalVariable(name: "bS", arg: 5, scope: !1751, file: !3, line: 306, type: !290)
!1760 = !DILocalVariable(name: "i_qp", arg: 6, scope: !1751, file: !3, line: 306, type: !104)
!1761 = !DILocalVariable(name: "b_chroma", arg: 7, scope: !1751, file: !3, line: 306, type: !104)
!1762 = !DILocalVariable(name: "pf_inter", arg: 8, scope: !1751, file: !3, line: 306, type: !1338)
!1763 = !DILocalVariable(name: "index_a", scope: !1751, file: !3, line: 308, type: !104)
!1764 = !DILocalVariable(name: "alpha", scope: !1751, file: !3, line: 309, type: !104)
!1765 = !DILocalVariable(name: "beta", scope: !1751, file: !3, line: 310, type: !104)
!1766 = !DILocation(line: 0, scope: !1751, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 397, column: 17, scope: !1749)
!1768 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1767)
!1769 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1767)
!1770 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1767)
!1771 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1767)
!1772 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1767)
!1773 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 313, column: 9)
!1774 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1767)
!1775 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1767)
!1776 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1767)
!1777 = distinct !DIAssignID()
!1778 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1767)
!1779 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1767)
!1780 = distinct !DIAssignID()
!1781 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1767)
!1782 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1767)
!1783 = distinct !DIAssignID()
!1784 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1767)
!1785 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1767)
!1786 = distinct !DIAssignID()
!1787 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1767)
!1788 = !DILocation(line: 397, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 397, column: 17)
!1790 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1767)
!1791 = !DILocation(line: 0, scope: !1751, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 397, column: 17, scope: !1789)
!1793 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1792)
!1794 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1792)
!1795 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1792)
!1796 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1792)
!1797 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1792)
!1798 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1792)
!1799 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1792)
!1800 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1792)
!1801 = distinct !DIAssignID()
!1802 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1792)
!1803 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1792)
!1804 = distinct !DIAssignID()
!1805 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1792)
!1806 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1792)
!1807 = distinct !DIAssignID()
!1808 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1792)
!1809 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1792)
!1810 = distinct !DIAssignID()
!1811 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1792)
!1812 = !DILocation(line: 323, column: 9, scope: !1813, inlinedAt: !1792)
!1813 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 322, column: 9)
!1814 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1792)
!1815 = !DILocation(line: 400, column: 13, scope: !1399)
!1816 = !DILocation(line: 402, column: 18, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 402, column: 17)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 401, column: 9)
!1819 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 400, column: 13)
!1820 = !DILocation(line: 403, column: 34, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 403, column: 34)
!1822 = !DILocation(line: 402, column: 17, scope: !1818)
!1823 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 403, column: 34, scope: !1821)
!1825 = !DILocation(line: 402, column: 34, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 402, column: 34)
!1827 = !DILocation(line: 0, scope: !1751, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 402, column: 34, scope: !1826)
!1829 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1828)
!1830 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1828)
!1831 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1828)
!1832 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1828)
!1833 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1828)
!1834 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1828)
!1835 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1828)
!1836 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1828)
!1837 = distinct !DIAssignID()
!1838 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1828)
!1839 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1828)
!1840 = distinct !DIAssignID()
!1841 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1828)
!1842 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1828)
!1843 = distinct !DIAssignID()
!1844 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1828)
!1845 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1828)
!1846 = distinct !DIAssignID()
!1847 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1828)
!1848 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1828)
!1849 = !DILocation(line: 0, scope: !1751, inlinedAt: !1824)
!1850 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1824)
!1851 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1824)
!1852 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1824)
!1853 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1824)
!1854 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1824)
!1855 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1824)
!1856 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1824)
!1857 = distinct !DIAssignID()
!1858 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1824)
!1859 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1824)
!1860 = distinct !DIAssignID()
!1861 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1824)
!1862 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1824)
!1863 = distinct !DIAssignID()
!1864 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1824)
!1865 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1824)
!1866 = distinct !DIAssignID()
!1867 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1824)
!1868 = !DILocation(line: 403, column: 34, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 403, column: 34)
!1870 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1824)
!1871 = !DILocation(line: 0, scope: !1751, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 403, column: 34, scope: !1869)
!1873 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1872)
!1874 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1872)
!1875 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1872)
!1876 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1872)
!1877 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1872)
!1878 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1872)
!1879 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1872)
!1880 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1872)
!1881 = distinct !DIAssignID()
!1882 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1872)
!1883 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1872)
!1884 = distinct !DIAssignID()
!1885 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1872)
!1886 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1872)
!1887 = distinct !DIAssignID()
!1888 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1872)
!1889 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1872)
!1890 = distinct !DIAssignID()
!1891 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1872)
!1892 = !DILocation(line: 323, column: 9, scope: !1813, inlinedAt: !1872)
!1893 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1872)
!1894 = !DILocation(line: 404, column: 17, scope: !1818)
!1895 = !DILocation(line: 404, column: 34, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 404, column: 34)
!1897 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 404, column: 17)
!1898 = !DILocation(line: 0, scope: !1751, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 404, column: 34, scope: !1896)
!1900 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1899)
!1901 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1899)
!1902 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1899)
!1903 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1899)
!1904 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1899)
!1905 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1899)
!1906 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1899)
!1907 = distinct !DIAssignID()
!1908 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1899)
!1909 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1899)
!1910 = distinct !DIAssignID()
!1911 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1899)
!1912 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1899)
!1913 = distinct !DIAssignID()
!1914 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1899)
!1915 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1899)
!1916 = distinct !DIAssignID()
!1917 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1899)
!1918 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1899)
!1919 = !DILocation(line: 407, column: 19, scope: !1418)
!1920 = !DILocation(line: 407, column: 31, scope: !1418)
!1921 = !DILocation(line: 407, column: 13, scope: !1399)
!1922 = !DILocation(line: 409, column: 29, scope: !1417)
!1923 = !DILocation(line: 409, column: 38, scope: !1417)
!1924 = !DILocation(line: 409, column: 23, scope: !1417)
!1925 = !DILocation(line: 0, scope: !1417)
!1926 = !DILocation(line: 410, column: 30, scope: !1417)
!1927 = !DILocation(line: 410, column: 36, scope: !1417)
!1928 = !DILocation(line: 410, column: 41, scope: !1417)
!1929 = !DILocation(line: 411, column: 31, scope: !1417)
!1930 = !DILocation(line: 411, column: 28, scope: !1417)
!1931 = !DILocation(line: 411, column: 53, scope: !1417)
!1932 = !DILocation(line: 411, column: 51, scope: !1417)
!1933 = !DILocation(line: 411, column: 77, scope: !1417)
!1934 = !DILocation(line: 411, column: 82, scope: !1417)
!1935 = !DILocation(line: 412, column: 29, scope: !1417)
!1936 = !DILocation(line: 413, column: 31, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 413, column: 17)
!1938 = !DILocation(line: 414, column: 17, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 414, column: 17)
!1940 = !DILocation(line: 0, scope: !1716, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 414, column: 17, scope: !1939)
!1942 = !DILocation(line: 328, column: 17, scope: !1716, inlinedAt: !1941)
!1943 = !DILocation(line: 329, column: 17, scope: !1716, inlinedAt: !1941)
!1944 = !DILocation(line: 331, column: 10, scope: !1734, inlinedAt: !1941)
!1945 = !DILocation(line: 331, column: 16, scope: !1734, inlinedAt: !1941)
!1946 = !DILocation(line: 334, column: 5, scope: !1716, inlinedAt: !1941)
!1947 = !DILocation(line: 414, column: 17, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 414, column: 17)
!1949 = !DILocation(line: 0, scope: !1716, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 414, column: 17, scope: !1948)
!1951 = !DILocation(line: 328, column: 17, scope: !1716, inlinedAt: !1950)
!1952 = !DILocation(line: 329, column: 17, scope: !1716, inlinedAt: !1950)
!1953 = !DILocation(line: 331, column: 10, scope: !1734, inlinedAt: !1950)
!1954 = !DILocation(line: 331, column: 16, scope: !1734, inlinedAt: !1950)
!1955 = !DILocation(line: 334, column: 5, scope: !1716, inlinedAt: !1950)
!1956 = !DILocation(line: 336, column: 9, scope: !1747, inlinedAt: !1950)
!1957 = !DILocation(line: 417, column: 21, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 416, column: 13)
!1959 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 419, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 419, column: 17)
!1962 = !DILocation(line: 418, column: 21, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 417, column: 21)
!1964 = !DILocation(line: 419, column: 17, scope: !1961)
!1965 = !DILocation(line: 0, scope: !1751, inlinedAt: !1960)
!1966 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1960)
!1967 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1960)
!1968 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1960)
!1969 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1960)
!1970 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1960)
!1971 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1960)
!1972 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1960)
!1973 = distinct !DIAssignID()
!1974 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1960)
!1975 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1960)
!1976 = distinct !DIAssignID()
!1977 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1960)
!1978 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1960)
!1979 = distinct !DIAssignID()
!1980 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1960)
!1981 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1960)
!1982 = distinct !DIAssignID()
!1983 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1960)
!1984 = !DILocation(line: 419, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 419, column: 17)
!1986 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1960)
!1987 = !DILocation(line: 0, scope: !1751, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 419, column: 17, scope: !1985)
!1989 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !1988)
!1990 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !1988)
!1991 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !1988)
!1992 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !1988)
!1993 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !1988)
!1994 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !1988)
!1995 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !1988)
!1996 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !1988)
!1997 = distinct !DIAssignID()
!1998 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !1988)
!1999 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !1988)
!2000 = distinct !DIAssignID()
!2001 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !1988)
!2002 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !1988)
!2003 = distinct !DIAssignID()
!2004 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !1988)
!2005 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !1988)
!2006 = distinct !DIAssignID()
!2007 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !1988)
!2008 = !DILocation(line: 323, column: 9, scope: !1813, inlinedAt: !1988)
!2009 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !1988)
!2010 = !DILocation(line: 423, column: 13, scope: !1399)
!2011 = !DILocation(line: 425, column: 18, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 425, column: 17)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 424, column: 9)
!2014 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 423, column: 13)
!2015 = !DILocation(line: 426, column: 34, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 426, column: 34)
!2017 = !DILocation(line: 425, column: 17, scope: !2013)
!2018 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 426, column: 34, scope: !2016)
!2020 = !DILocation(line: 425, column: 34, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 425, column: 34)
!2022 = !DILocation(line: 0, scope: !1751, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 425, column: 34, scope: !2021)
!2024 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !2023)
!2025 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !2023)
!2026 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !2023)
!2027 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !2023)
!2028 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !2023)
!2029 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !2023)
!2030 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !2023)
!2031 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !2023)
!2032 = distinct !DIAssignID()
!2033 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !2023)
!2034 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !2023)
!2035 = distinct !DIAssignID()
!2036 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !2023)
!2037 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !2023)
!2038 = distinct !DIAssignID()
!2039 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !2023)
!2040 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !2023)
!2041 = distinct !DIAssignID()
!2042 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !2023)
!2043 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !2023)
!2044 = !DILocation(line: 0, scope: !1751, inlinedAt: !2019)
!2045 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !2019)
!2046 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !2019)
!2047 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !2019)
!2048 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !2019)
!2049 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !2019)
!2050 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !2019)
!2051 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !2019)
!2052 = distinct !DIAssignID()
!2053 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !2019)
!2054 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !2019)
!2055 = distinct !DIAssignID()
!2056 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !2019)
!2057 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !2019)
!2058 = distinct !DIAssignID()
!2059 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !2019)
!2060 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !2019)
!2061 = distinct !DIAssignID()
!2062 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !2019)
!2063 = !DILocation(line: 426, column: 34, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 426, column: 34)
!2065 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !2019)
!2066 = !DILocation(line: 0, scope: !1751, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 426, column: 34, scope: !2064)
!2068 = !DILocation(line: 308, column: 24, scope: !1751, inlinedAt: !2067)
!2069 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !2067)
!2070 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !2067)
!2071 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !2067)
!2072 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !2067)
!2073 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !2067)
!2074 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !2067)
!2075 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !2067)
!2076 = distinct !DIAssignID()
!2077 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !2067)
!2078 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !2067)
!2079 = distinct !DIAssignID()
!2080 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !2067)
!2081 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !2067)
!2082 = distinct !DIAssignID()
!2083 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !2067)
!2084 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !2067)
!2085 = distinct !DIAssignID()
!2086 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !2067)
!2087 = !DILocation(line: 323, column: 9, scope: !1813, inlinedAt: !2067)
!2088 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !2067)
!2089 = !DILocation(line: 427, column: 17, scope: !2013)
!2090 = !DILocation(line: 427, column: 34, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 427, column: 34)
!2092 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 427, column: 17)
!2093 = !DILocation(line: 0, scope: !1751, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 427, column: 34, scope: !2091)
!2095 = !DILocation(line: 309, column: 17, scope: !1751, inlinedAt: !2094)
!2096 = !DILocation(line: 310, column: 17, scope: !1751, inlinedAt: !2094)
!2097 = !DILocation(line: 311, column: 5, scope: !1751, inlinedAt: !2094)
!2098 = !DILocation(line: 313, column: 10, scope: !1773, inlinedAt: !2094)
!2099 = !DILocation(line: 313, column: 18, scope: !1773, inlinedAt: !2094)
!2100 = !DILocation(line: 316, column: 13, scope: !1751, inlinedAt: !2094)
!2101 = !DILocation(line: 316, column: 11, scope: !1751, inlinedAt: !2094)
!2102 = distinct !DIAssignID()
!2103 = !DILocation(line: 317, column: 13, scope: !1751, inlinedAt: !2094)
!2104 = !DILocation(line: 317, column: 11, scope: !1751, inlinedAt: !2094)
!2105 = distinct !DIAssignID()
!2106 = !DILocation(line: 318, column: 13, scope: !1751, inlinedAt: !2094)
!2107 = !DILocation(line: 318, column: 11, scope: !1751, inlinedAt: !2094)
!2108 = distinct !DIAssignID()
!2109 = !DILocation(line: 319, column: 13, scope: !1751, inlinedAt: !2094)
!2110 = !DILocation(line: 319, column: 11, scope: !1751, inlinedAt: !2094)
!2111 = distinct !DIAssignID()
!2112 = !DILocation(line: 321, column: 5, scope: !1751, inlinedAt: !2094)
!2113 = !DILocation(line: 324, column: 1, scope: !1751, inlinedAt: !2094)
!2114 = !DILocation(line: 352, column: 74, scope: !1400)
!2115 = !DILocation(line: 352, column: 81, scope: !1400)
!2116 = !DILocation(line: 352, column: 56, scope: !1400)
!2117 = !DILocation(line: 352, column: 90, scope: !1400)
!2118 = distinct !{!2118, !1658, !2119}
!2119 = !DILocation(line: 429, column: 5, scope: !1397)
!2120 = !DILocation(line: 431, column: 37, scope: !1660)
!2121 = !DILocation(line: 431, column: 29, scope: !1660)
!2122 = !DILocation(line: 431, column: 9, scope: !90)
!2123 = !DILocation(line: 0, scope: !1455, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 432, column: 9, scope: !1660)
!2125 = !DILocalVariable(name: "h", arg: 1, scope: !2126, file: !3, line: 46, type: !93)
!2126 = distinct !DISubprogram(name: "restore_cavlc_nnz_row", scope: !3, file: !3, line: 46, type: !1459, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2125, !2128, !2129, !2130, !2131}
!2128 = !DILocalVariable(name: "mb_y", arg: 2, scope: !2126, file: !3, line: 46, type: !104)
!2129 = !DILocalVariable(name: "buf", arg: 3, scope: !2126, file: !3, line: 46, type: !1395)
!2130 = !DILocalVariable(name: "dst", scope: !2126, file: !3, line: 48, type: !808)
!2131 = !DILocalVariable(name: "x", scope: !2132, file: !3, line: 49, type: !104)
!2132 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 49, column: 5)
!2133 = !DILocation(line: 0, scope: !2126, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 55, column: 5, scope: !1455, inlinedAt: !2124)
!2135 = !DILocation(line: 48, column: 32, scope: !2126, inlinedAt: !2134)
!2136 = !DILocation(line: 48, column: 54, scope: !2126, inlinedAt: !2134)
!2137 = !DILocation(line: 48, column: 47, scope: !2126, inlinedAt: !2134)
!2138 = !DILocation(line: 0, scope: !2132, inlinedAt: !2134)
!2139 = !DILocation(line: 49, column: 23, scope: !2140, inlinedAt: !2134)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 49, column: 5)
!2141 = !DILocation(line: 49, column: 5, scope: !2132, inlinedAt: !2134)
!2142 = !DILocation(line: 50, column: 20, scope: !2140, inlinedAt: !2134)
!2143 = !DILocation(line: 50, column: 27, scope: !2140, inlinedAt: !2134)
!2144 = !DILocation(line: 50, column: 9, scope: !2140, inlinedAt: !2134)
!2145 = !DILocation(line: 49, column: 46, scope: !2140, inlinedAt: !2134)
!2146 = !DILocation(line: 49, column: 28, scope: !2140, inlinedAt: !2134)
!2147 = !DILocation(line: 49, column: 33, scope: !2140, inlinedAt: !2134)
!2148 = distinct !{!2148, !2141, !2149}
!2149 = !DILocation(line: 50, column: 34, scope: !2132, inlinedAt: !2134)
!2150 = !DILocation(line: 56, column: 14, scope: !1522, inlinedAt: !2124)
!2151 = !DILocation(line: 56, column: 9, scope: !1455, inlinedAt: !2124)
!2152 = !DILocation(line: 57, column: 22, scope: !1522, inlinedAt: !2124)
!2153 = !DILocation(line: 57, column: 40, scope: !1522, inlinedAt: !2124)
!2154 = !DILocation(line: 57, column: 30, scope: !1522, inlinedAt: !2124)
!2155 = !DILocation(line: 0, scope: !2126, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 57, column: 9, scope: !1522, inlinedAt: !2124)
!2157 = !DILocation(line: 48, column: 32, scope: !2126, inlinedAt: !2156)
!2158 = !DILocation(line: 48, column: 54, scope: !2126, inlinedAt: !2156)
!2159 = !DILocation(line: 48, column: 47, scope: !2126, inlinedAt: !2156)
!2160 = !DILocation(line: 0, scope: !2132, inlinedAt: !2156)
!2161 = !DILocation(line: 49, column: 23, scope: !2140, inlinedAt: !2156)
!2162 = !DILocation(line: 49, column: 5, scope: !2132, inlinedAt: !2156)
!2163 = !DILocation(line: 50, column: 20, scope: !2140, inlinedAt: !2156)
!2164 = !DILocation(line: 50, column: 27, scope: !2140, inlinedAt: !2156)
!2165 = !DILocation(line: 50, column: 9, scope: !2140, inlinedAt: !2156)
!2166 = !DILocation(line: 49, column: 46, scope: !2140, inlinedAt: !2156)
!2167 = !DILocation(line: 49, column: 28, scope: !2140, inlinedAt: !2156)
!2168 = !DILocation(line: 49, column: 33, scope: !2140, inlinedAt: !2156)
!2169 = distinct !{!2169, !2162, !2170}
!2170 = !DILocation(line: 50, column: 34, scope: !2132, inlinedAt: !2156)
!2171 = !DILocation(line: 58, column: 15, scope: !1565, inlinedAt: !2124)
!2172 = !DILocation(line: 58, column: 9, scope: !1565, inlinedAt: !2124)
!2173 = !DILocation(line: 58, column: 9, scope: !1455, inlinedAt: !2124)
!2174 = !DILocation(line: 60, column: 22, scope: !1569, inlinedAt: !2124)
!2175 = !DILocation(line: 60, column: 40, scope: !1569, inlinedAt: !2124)
!2176 = !DILocation(line: 60, column: 51, scope: !1569, inlinedAt: !2124)
!2177 = !DILocation(line: 60, column: 30, scope: !1569, inlinedAt: !2124)
!2178 = !DILocation(line: 0, scope: !2126, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 60, column: 9, scope: !1569, inlinedAt: !2124)
!2180 = !DILocation(line: 48, column: 32, scope: !2126, inlinedAt: !2179)
!2181 = !DILocation(line: 48, column: 54, scope: !2126, inlinedAt: !2179)
!2182 = !DILocation(line: 48, column: 47, scope: !2126, inlinedAt: !2179)
!2183 = !DILocation(line: 0, scope: !2132, inlinedAt: !2179)
!2184 = !DILocation(line: 49, column: 23, scope: !2140, inlinedAt: !2179)
!2185 = !DILocation(line: 49, column: 5, scope: !2132, inlinedAt: !2179)
!2186 = !DILocation(line: 50, column: 20, scope: !2140, inlinedAt: !2179)
!2187 = !DILocation(line: 50, column: 27, scope: !2140, inlinedAt: !2179)
!2188 = !DILocation(line: 50, column: 9, scope: !2140, inlinedAt: !2179)
!2189 = !DILocation(line: 49, column: 46, scope: !2140, inlinedAt: !2179)
!2190 = !DILocation(line: 49, column: 28, scope: !2140, inlinedAt: !2179)
!2191 = !DILocation(line: 49, column: 33, scope: !2140, inlinedAt: !2179)
!2192 = distinct !{!2192, !2185, !2193}
!2193 = !DILocation(line: 50, column: 34, scope: !2132, inlinedAt: !2179)
!2194 = !DILocation(line: 61, column: 13, scope: !1569, inlinedAt: !2124)
!2195 = !DILocation(line: 62, column: 26, scope: !1613, inlinedAt: !2124)
!2196 = !DILocation(line: 62, column: 55, scope: !1613, inlinedAt: !2124)
!2197 = !DILocation(line: 62, column: 34, scope: !1613, inlinedAt: !2124)
!2198 = !DILocation(line: 0, scope: !2126, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 62, column: 13, scope: !1613, inlinedAt: !2124)
!2200 = !DILocation(line: 48, column: 32, scope: !2126, inlinedAt: !2199)
!2201 = !DILocation(line: 48, column: 54, scope: !2126, inlinedAt: !2199)
!2202 = !DILocation(line: 48, column: 47, scope: !2126, inlinedAt: !2199)
!2203 = !DILocation(line: 0, scope: !2132, inlinedAt: !2199)
!2204 = !DILocation(line: 49, column: 23, scope: !2140, inlinedAt: !2199)
!2205 = !DILocation(line: 49, column: 5, scope: !2132, inlinedAt: !2199)
!2206 = !DILocation(line: 50, column: 20, scope: !2140, inlinedAt: !2199)
!2207 = !DILocation(line: 50, column: 27, scope: !2140, inlinedAt: !2199)
!2208 = !DILocation(line: 50, column: 9, scope: !2140, inlinedAt: !2199)
!2209 = !DILocation(line: 49, column: 46, scope: !2140, inlinedAt: !2199)
!2210 = !DILocation(line: 49, column: 28, scope: !2140, inlinedAt: !2199)
!2211 = !DILocation(line: 49, column: 33, scope: !2140, inlinedAt: !2199)
!2212 = distinct !{!2212, !2205, !2213}
!2213 = !DILocation(line: 50, column: 34, scope: !2132, inlinedAt: !2199)
!2214 = !DILocation(line: 433, column: 1, scope: !90)
!2215 = !DISubprogram(name: "x264_prefetch_fenc", scope: !6, file: !6, line: 285, type: !2216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !93, !572, !104, !104}
!2218 = !DISubprogram(name: "x264_macroblock_cache_load_neighbours_deblock", scope: !6, file: !6, line: 280, type: !2219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !93, !104, !104}
!2221 = distinct !DISubprogram(name: "x264_deblock_init", scope: !3, file: !3, line: 485, type: !2222, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !104, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "cpu", arg: 1, scope: !2221, file: !3, line: 485, type: !104)
!2227 = !DILocalVariable(name: "pf", arg: 2, scope: !2221, file: !3, line: 485, type: !2224)
!2228 = !DILocation(line: 0, scope: !2221)
!2229 = !DILocation(line: 487, column: 5, scope: !2221)
!2230 = !DILocation(line: 487, column: 25, scope: !2221)
!2231 = !DILocation(line: 488, column: 25, scope: !2221)
!2232 = !DILocation(line: 489, column: 9, scope: !2221)
!2233 = !DILocation(line: 489, column: 5, scope: !2221)
!2234 = !DILocation(line: 489, column: 27, scope: !2221)
!2235 = !DILocation(line: 490, column: 27, scope: !2221)
!2236 = !DILocation(line: 491, column: 9, scope: !2221)
!2237 = !DILocation(line: 491, column: 5, scope: !2221)
!2238 = !DILocation(line: 491, column: 31, scope: !2221)
!2239 = !DILocation(line: 492, column: 31, scope: !2221)
!2240 = !DILocation(line: 493, column: 9, scope: !2221)
!2241 = !DILocation(line: 493, column: 5, scope: !2221)
!2242 = !DILocation(line: 493, column: 33, scope: !2221)
!2243 = !DILocation(line: 494, column: 33, scope: !2221)
!2244 = !DILocation(line: 495, column: 9, scope: !2221)
!2245 = !DILocation(line: 495, column: 26, scope: !2221)
!2246 = !DILocation(line: 544, column: 1, scope: !2221)
!2247 = distinct !DISubprogram(name: "deblock_v_luma_c", scope: !3, file: !3, line: 154, type: !1340, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253}
!2249 = !DILocalVariable(name: "pix", arg: 1, scope: !2247, file: !3, line: 154, type: !290)
!2250 = !DILocalVariable(name: "stride", arg: 2, scope: !2247, file: !3, line: 154, type: !104)
!2251 = !DILocalVariable(name: "alpha", arg: 3, scope: !2247, file: !3, line: 154, type: !104)
!2252 = !DILocalVariable(name: "beta", arg: 4, scope: !2247, file: !3, line: 154, type: !104)
!2253 = !DILocalVariable(name: "tc0", arg: 5, scope: !2247, file: !3, line: 154, type: !629)
!2254 = !DILocation(line: 0, scope: !2247)
!2255 = !DILocation(line: 156, column: 5, scope: !2247)
!2256 = !DILocation(line: 157, column: 1, scope: !2247)
!2257 = distinct !DISubprogram(name: "deblock_h_luma_c", scope: !3, file: !3, line: 158, type: !1340, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263}
!2259 = !DILocalVariable(name: "pix", arg: 1, scope: !2257, file: !3, line: 158, type: !290)
!2260 = !DILocalVariable(name: "stride", arg: 2, scope: !2257, file: !3, line: 158, type: !104)
!2261 = !DILocalVariable(name: "alpha", arg: 3, scope: !2257, file: !3, line: 158, type: !104)
!2262 = !DILocalVariable(name: "beta", arg: 4, scope: !2257, file: !3, line: 158, type: !104)
!2263 = !DILocalVariable(name: "tc0", arg: 5, scope: !2257, file: !3, line: 158, type: !629)
!2264 = !DILocation(line: 0, scope: !2257)
!2265 = !DILocation(line: 160, column: 5, scope: !2257)
!2266 = !DILocation(line: 161, column: 1, scope: !2257)
!2267 = distinct !DISubprogram(name: "deblock_v_chroma_c", scope: !3, file: !3, line: 190, type: !1340, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273}
!2269 = !DILocalVariable(name: "pix", arg: 1, scope: !2267, file: !3, line: 190, type: !290)
!2270 = !DILocalVariable(name: "stride", arg: 2, scope: !2267, file: !3, line: 190, type: !104)
!2271 = !DILocalVariable(name: "alpha", arg: 3, scope: !2267, file: !3, line: 190, type: !104)
!2272 = !DILocalVariable(name: "beta", arg: 4, scope: !2267, file: !3, line: 190, type: !104)
!2273 = !DILocalVariable(name: "tc0", arg: 5, scope: !2267, file: !3, line: 190, type: !629)
!2274 = !DILocation(line: 0, scope: !2267)
!2275 = !DILocation(line: 192, column: 5, scope: !2267)
!2276 = !DILocation(line: 193, column: 1, scope: !2267)
!2277 = distinct !DISubprogram(name: "deblock_h_chroma_c", scope: !3, file: !3, line: 194, type: !1340, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283}
!2279 = !DILocalVariable(name: "pix", arg: 1, scope: !2277, file: !3, line: 194, type: !290)
!2280 = !DILocalVariable(name: "stride", arg: 2, scope: !2277, file: !3, line: 194, type: !104)
!2281 = !DILocalVariable(name: "alpha", arg: 3, scope: !2277, file: !3, line: 194, type: !104)
!2282 = !DILocalVariable(name: "beta", arg: 4, scope: !2277, file: !3, line: 194, type: !104)
!2283 = !DILocalVariable(name: "tc0", arg: 5, scope: !2277, file: !3, line: 194, type: !629)
!2284 = !DILocation(line: 0, scope: !2277)
!2285 = !DILocation(line: 196, column: 5, scope: !2277)
!2286 = !DILocation(line: 197, column: 1, scope: !2277)
!2287 = distinct !DISubprogram(name: "deblock_v_luma_intra_c", scope: !3, file: !3, line: 242, type: !1347, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2288 = !{!2289, !2290, !2291, !2292}
!2289 = !DILocalVariable(name: "pix", arg: 1, scope: !2287, file: !3, line: 242, type: !290)
!2290 = !DILocalVariable(name: "stride", arg: 2, scope: !2287, file: !3, line: 242, type: !104)
!2291 = !DILocalVariable(name: "alpha", arg: 3, scope: !2287, file: !3, line: 242, type: !104)
!2292 = !DILocalVariable(name: "beta", arg: 4, scope: !2287, file: !3, line: 242, type: !104)
!2293 = !DILocation(line: 0, scope: !2287)
!2294 = !DILocation(line: 244, column: 5, scope: !2287)
!2295 = !DILocation(line: 245, column: 1, scope: !2287)
!2296 = distinct !DISubprogram(name: "deblock_h_luma_intra_c", scope: !3, file: !3, line: 246, type: !1347, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2297 = !{!2298, !2299, !2300, !2301}
!2298 = !DILocalVariable(name: "pix", arg: 1, scope: !2296, file: !3, line: 246, type: !290)
!2299 = !DILocalVariable(name: "stride", arg: 2, scope: !2296, file: !3, line: 246, type: !104)
!2300 = !DILocalVariable(name: "alpha", arg: 3, scope: !2296, file: !3, line: 246, type: !104)
!2301 = !DILocalVariable(name: "beta", arg: 4, scope: !2296, file: !3, line: 246, type: !104)
!2302 = !DILocation(line: 0, scope: !2296)
!2303 = !DILocation(line: 248, column: 5, scope: !2296)
!2304 = !DILocation(line: 249, column: 1, scope: !2296)
!2305 = distinct !DISubprogram(name: "deblock_v_chroma_intra_c", scope: !3, file: !3, line: 268, type: !1347, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "pix", arg: 1, scope: !2305, file: !3, line: 268, type: !290)
!2308 = !DILocalVariable(name: "stride", arg: 2, scope: !2305, file: !3, line: 268, type: !104)
!2309 = !DILocalVariable(name: "alpha", arg: 3, scope: !2305, file: !3, line: 268, type: !104)
!2310 = !DILocalVariable(name: "beta", arg: 4, scope: !2305, file: !3, line: 268, type: !104)
!2311 = !DILocation(line: 0, scope: !2305)
!2312 = !DILocation(line: 270, column: 5, scope: !2305)
!2313 = !DILocation(line: 271, column: 1, scope: !2305)
!2314 = distinct !DISubprogram(name: "deblock_h_chroma_intra_c", scope: !3, file: !3, line: 272, type: !1347, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DILocalVariable(name: "pix", arg: 1, scope: !2314, file: !3, line: 272, type: !290)
!2317 = !DILocalVariable(name: "stride", arg: 2, scope: !2314, file: !3, line: 272, type: !104)
!2318 = !DILocalVariable(name: "alpha", arg: 3, scope: !2314, file: !3, line: 272, type: !104)
!2319 = !DILocalVariable(name: "beta", arg: 4, scope: !2314, file: !3, line: 272, type: !104)
!2320 = !DILocation(line: 0, scope: !2314)
!2321 = !DILocation(line: 274, column: 5, scope: !2314)
!2322 = !DILocation(line: 275, column: 1, scope: !2314)
!2323 = distinct !DISubprogram(name: "deblock_strength_c", scope: !3, file: !3, line: 277, type: !1352, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331, !2333, !2336, !2337, !2339, !2342, !2343}
!2325 = !DILocalVariable(name: "nnz", arg: 1, scope: !2323, file: !3, line: 277, type: !290)
!2326 = !DILocalVariable(name: "ref", arg: 2, scope: !2323, file: !3, line: 277, type: !1354)
!2327 = !DILocalVariable(name: "mv", arg: 3, scope: !2323, file: !3, line: 278, type: !1355)
!2328 = !DILocalVariable(name: "bs", arg: 4, scope: !2323, file: !3, line: 278, type: !1358)
!2329 = !DILocalVariable(name: "mvy_limit", arg: 5, scope: !2323, file: !3, line: 278, type: !104)
!2330 = !DILocalVariable(name: "bframe", arg: 6, scope: !2323, file: !3, line: 279, type: !104)
!2331 = !DILocalVariable(name: "dir", scope: !2332, file: !3, line: 281, type: !104)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 281, column: 5)
!2333 = !DILocalVariable(name: "s1", scope: !2334, file: !3, line: 283, type: !104)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 282, column: 5)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 281, column: 5)
!2336 = !DILocalVariable(name: "s2", scope: !2334, file: !3, line: 284, type: !104)
!2337 = !DILocalVariable(name: "edge", scope: !2338, file: !3, line: 285, type: !104)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 285, column: 9)
!2339 = !DILocalVariable(name: "i", scope: !2340, file: !3, line: 286, type: !104)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 286, column: 13)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 285, column: 9)
!2342 = !DILocalVariable(name: "loc", scope: !2340, file: !3, line: 286, type: !104)
!2343 = !DILocalVariable(name: "locn", scope: !2344, file: !3, line: 288, type: !104)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 287, column: 13)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 286, column: 13)
!2346 = !DILocation(line: 0, scope: !2323)
!2347 = !DILocation(line: 0, scope: !2332)
!2348 = !DILocation(line: 0, scope: !2338)
!2349 = !DILocation(line: 0, scope: !2340)
!2350 = !DILocation(line: 286, column: 13, scope: !2340)
!2351 = !DILocation(line: 0, scope: !2344)
!2352 = !DILocation(line: 289, column: 21, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 289, column: 21)
!2354 = !DILocation(line: 289, column: 30, scope: !2353)
!2355 = !DILocation(line: 288, column: 32, scope: !2344)
!2356 = !DILocation(line: 289, column: 33, scope: !2353)
!2357 = !DILocation(line: 289, column: 21, scope: !2344)
!2358 = !DILocation(line: 291, column: 26, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 291, column: 26)
!2360 = !DILocation(line: 291, column: 41, scope: !2359)
!2361 = !DILocation(line: 291, column: 38, scope: !2359)
!2362 = !DILocation(line: 291, column: 54, scope: !2359)
!2363 = !DILocation(line: 292, column: 31, scope: !2359)
!2364 = !DILocation(line: 292, column: 47, scope: !2359)
!2365 = !DILocation(line: 292, column: 45, scope: !2359)
!2366 = !DILocation(line: 292, column: 26, scope: !2359)
!2367 = !DILocation(line: 292, column: 64, scope: !2359)
!2368 = !DILocation(line: 292, column: 69, scope: !2359)
!2369 = !DILocation(line: 293, column: 31, scope: !2359)
!2370 = !DILocation(line: 293, column: 47, scope: !2359)
!2371 = !DILocation(line: 293, column: 45, scope: !2359)
!2372 = !DILocation(line: 293, column: 26, scope: !2359)
!2373 = !DILocation(line: 293, column: 64, scope: !2359)
!2374 = !DILocation(line: 293, column: 77, scope: !2359)
!2375 = !DILocation(line: 299, column: 17, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 297, column: 17)
!2377 = !DILocation(line: 0, scope: !2353)
!2378 = !DILocation(line: 286, column: 73, scope: !2345)
!2379 = !DILocation(line: 285, column: 42, scope: !2341)
!2380 = !DILocation(line: 285, column: 33, scope: !2341)
!2381 = !DILocation(line: 285, column: 9, scope: !2338)
!2382 = distinct !{!2382, !2381, !2383}
!2383 = !DILocation(line: 302, column: 13, scope: !2338)
!2384 = !DILocation(line: 286, column: 52, scope: !2340)
!2385 = !DILocation(line: 286, column: 47, scope: !2340)
!2386 = !DILocation(line: 304, column: 1, scope: !2323)
!2387 = !DILocation(line: 0, scope: !2334)
!2388 = !DILocation(line: 281, column: 5, scope: !2332)
!2389 = distinct !{!2389, !2388, !2390}
!2390 = !DILocation(line: 303, column: 5, scope: !2332)
!2391 = !DILocation(line: 294, column: 37, scope: !2359)
!2392 = !DILocation(line: 294, column: 52, scope: !2359)
!2393 = !DILocation(line: 294, column: 49, scope: !2359)
!2394 = !DILocation(line: 294, column: 65, scope: !2359)
!2395 = !DILocation(line: 295, column: 31, scope: !2359)
!2396 = !DILocation(line: 295, column: 47, scope: !2359)
!2397 = !DILocation(line: 295, column: 45, scope: !2359)
!2398 = !DILocation(line: 295, column: 26, scope: !2359)
!2399 = !DILocation(line: 295, column: 64, scope: !2359)
!2400 = !DILocation(line: 295, column: 69, scope: !2359)
!2401 = !DILocation(line: 296, column: 31, scope: !2359)
!2402 = !DILocation(line: 296, column: 47, scope: !2359)
!2403 = !DILocation(line: 296, column: 45, scope: !2359)
!2404 = !DILocation(line: 296, column: 26, scope: !2359)
!2405 = !DILocation(line: 296, column: 64, scope: !2359)
!2406 = !DILocation(line: 291, column: 26, scope: !2353)
!2407 = distinct !DISubprogram(name: "deblock_luma_c", scope: !3, file: !3, line: 111, type: !2408, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !290, !104, !104, !104, !104, !629}
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2419, !2423, !2426, !2427, !2428, !2429, !2430, !2431, !2434}
!2411 = !DILocalVariable(name: "pix", arg: 1, scope: !2407, file: !3, line: 111, type: !290)
!2412 = !DILocalVariable(name: "xstride", arg: 2, scope: !2407, file: !3, line: 111, type: !104)
!2413 = !DILocalVariable(name: "ystride", arg: 3, scope: !2407, file: !3, line: 111, type: !104)
!2414 = !DILocalVariable(name: "alpha", arg: 4, scope: !2407, file: !3, line: 111, type: !104)
!2415 = !DILocalVariable(name: "beta", arg: 5, scope: !2407, file: !3, line: 111, type: !104)
!2416 = !DILocalVariable(name: "tc0", arg: 6, scope: !2407, file: !3, line: 111, type: !629)
!2417 = !DILocalVariable(name: "i", scope: !2418, file: !3, line: 113, type: !104)
!2418 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 113, column: 5)
!2419 = !DILocalVariable(name: "d", scope: !2420, file: !3, line: 120, type: !104)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 120, column: 9)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 114, column: 5)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 113, column: 5)
!2423 = !DILocalVariable(name: "p2", scope: !2424, file: !3, line: 122, type: !104)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 121, column: 9)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 120, column: 9)
!2426 = !DILocalVariable(name: "p1", scope: !2424, file: !3, line: 123, type: !104)
!2427 = !DILocalVariable(name: "p0", scope: !2424, file: !3, line: 124, type: !104)
!2428 = !DILocalVariable(name: "q0", scope: !2424, file: !3, line: 125, type: !104)
!2429 = !DILocalVariable(name: "q1", scope: !2424, file: !3, line: 126, type: !104)
!2430 = !DILocalVariable(name: "q2", scope: !2424, file: !3, line: 127, type: !104)
!2431 = !DILocalVariable(name: "tc", scope: !2432, file: !3, line: 131, type: !104)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 130, column: 13)
!2433 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 129, column: 17)
!2434 = !DILocalVariable(name: "delta", scope: !2432, file: !3, line: 132, type: !104)
!2435 = !DILocation(line: 0, scope: !2407)
!2436 = !DILocation(line: 0, scope: !2418)
!2437 = !DILocation(line: 113, column: 5, scope: !2418)
!2438 = !DILocation(line: 153, column: 1, scope: !2407)
!2439 = !DILocation(line: 115, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 115, column: 13)
!2441 = !DILocation(line: 115, column: 20, scope: !2440)
!2442 = !DILocation(line: 115, column: 13, scope: !2421)
!2443 = !DILocation(line: 117, column: 17, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 116, column: 9)
!2445 = !DILocation(line: 118, column: 13, scope: !2444)
!2446 = !DILocation(line: 0, scope: !2420)
!2447 = !DILocation(line: 122, column: 22, scope: !2424)
!2448 = !DILocation(line: 0, scope: !2424)
!2449 = !DILocation(line: 123, column: 22, scope: !2424)
!2450 = !DILocation(line: 124, column: 22, scope: !2424)
!2451 = !DILocation(line: 125, column: 22, scope: !2424)
!2452 = !DILocation(line: 126, column: 22, scope: !2424)
!2453 = !DILocation(line: 127, column: 22, scope: !2424)
!2454 = !DILocation(line: 129, column: 25, scope: !2433)
!2455 = !DILocation(line: 129, column: 17, scope: !2433)
!2456 = !DILocation(line: 129, column: 32, scope: !2433)
!2457 = !DILocation(line: 129, column: 40, scope: !2433)
!2458 = !DILocation(line: 129, column: 51, scope: !2433)
!2459 = !DILocation(line: 129, column: 43, scope: !2433)
!2460 = !DILocation(line: 129, column: 58, scope: !2433)
!2461 = !DILocation(line: 129, column: 65, scope: !2433)
!2462 = !DILocation(line: 129, column: 76, scope: !2433)
!2463 = !DILocation(line: 129, column: 68, scope: !2433)
!2464 = !DILocation(line: 129, column: 83, scope: !2433)
!2465 = !DILocation(line: 129, column: 17, scope: !2424)
!2466 = !DILocation(line: 131, column: 26, scope: !2432)
!2467 = !DILocation(line: 0, scope: !2432)
!2468 = !DILocation(line: 133, column: 29, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 133, column: 21)
!2470 = !DILocation(line: 133, column: 21, scope: !2469)
!2471 = !DILocation(line: 133, column: 36, scope: !2469)
!2472 = !DILocation(line: 133, column: 21, scope: !2432)
!2473 = !DILocation(line: 135, column: 25, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 135, column: 25)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 134, column: 17)
!2476 = !DILocation(line: 135, column: 25, scope: !2475)
!2477 = !DILocation(line: 136, column: 73, scope: !2474)
!2478 = !DILocation(line: 136, column: 78, scope: !2474)
!2479 = !DILocation(line: 136, column: 83, scope: !2474)
!2480 = !DILocation(line: 136, column: 66, scope: !2474)
!2481 = !DILocation(line: 136, column: 90, scope: !2474)
!2482 = !DILocation(line: 136, column: 96, scope: !2474)
!2483 = !DILocation(line: 136, column: 102, scope: !2474)
!2484 = !DILocalVariable(name: "v", arg: 1, scope: !2485, file: !51, line: 200, type: !104)
!2485 = distinct !DISubprogram(name: "x264_clip3", scope: !51, file: !51, line: 200, type: !2486, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!104, !104, !104, !104}
!2488 = !{!2484, !2489, !2490}
!2489 = !DILocalVariable(name: "i_min", arg: 2, scope: !2485, file: !51, line: 200, type: !104)
!2490 = !DILocalVariable(name: "i_max", arg: 3, scope: !2485, file: !51, line: 200, type: !104)
!2491 = !DILocation(line: 0, scope: !2485, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 136, column: 48, scope: !2474)
!2493 = !DILocation(line: 202, column: 17, scope: !2485, inlinedAt: !2492)
!2494 = !DILocation(line: 202, column: 14, scope: !2485, inlinedAt: !2492)
!2495 = !DILocation(line: 136, column: 43, scope: !2474)
!2496 = !DILocation(line: 136, column: 41, scope: !2474)
!2497 = !DILocation(line: 136, column: 25, scope: !2474)
!2498 = !DILocation(line: 137, column: 23, scope: !2475)
!2499 = !DILocation(line: 138, column: 17, scope: !2475)
!2500 = !DILocation(line: 139, column: 29, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 139, column: 21)
!2502 = !DILocation(line: 139, column: 21, scope: !2501)
!2503 = !DILocation(line: 139, column: 36, scope: !2501)
!2504 = !DILocation(line: 139, column: 21, scope: !2432)
!2505 = !DILocation(line: 141, column: 25, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 141, column: 25)
!2507 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 140, column: 17)
!2508 = !DILocation(line: 141, column: 25, scope: !2507)
!2509 = !DILocation(line: 142, column: 73, scope: !2506)
!2510 = !DILocation(line: 142, column: 78, scope: !2506)
!2511 = !DILocation(line: 142, column: 83, scope: !2506)
!2512 = !DILocation(line: 142, column: 66, scope: !2506)
!2513 = !DILocation(line: 142, column: 90, scope: !2506)
!2514 = !DILocation(line: 142, column: 96, scope: !2506)
!2515 = !DILocation(line: 142, column: 103, scope: !2506)
!2516 = !DILocation(line: 142, column: 102, scope: !2506)
!2517 = !DILocation(line: 0, scope: !2485, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 142, column: 48, scope: !2506)
!2519 = !DILocation(line: 202, column: 17, scope: !2485, inlinedAt: !2518)
!2520 = !DILocation(line: 202, column: 14, scope: !2485, inlinedAt: !2518)
!2521 = !DILocation(line: 142, column: 43, scope: !2506)
!2522 = !DILocation(line: 142, column: 41, scope: !2506)
!2523 = !DILocation(line: 142, column: 25, scope: !2506)
!2524 = !DILocation(line: 143, column: 23, scope: !2507)
!2525 = !DILocation(line: 144, column: 17, scope: !2507)
!2526 = !DILocation(line: 146, column: 43, scope: !2432)
!2527 = !DILocation(line: 146, column: 50, scope: !2432)
!2528 = !DILocation(line: 146, column: 62, scope: !2432)
!2529 = !DILocation(line: 146, column: 56, scope: !2432)
!2530 = !DILocation(line: 146, column: 68, scope: !2432)
!2531 = !DILocation(line: 146, column: 73, scope: !2432)
!2532 = !DILocation(line: 146, column: 79, scope: !2432)
!2533 = !DILocation(line: 0, scope: !2485, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 146, column: 25, scope: !2432)
!2535 = !DILocation(line: 202, column: 17, scope: !2485, inlinedAt: !2534)
!2536 = !DILocation(line: 202, column: 14, scope: !2485, inlinedAt: !2534)
!2537 = !DILocation(line: 147, column: 55, scope: !2432)
!2538 = !DILocalVariable(name: "x", arg: 1, scope: !2539, file: !51, line: 195, type: !104)
!2539 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !51, file: !51, line: 195, type: !2540, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!61, !104}
!2542 = !{!2538}
!2543 = !DILocation(line: 0, scope: !2539, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 147, column: 35, scope: !2432)
!2545 = !DILocation(line: 197, column: 13, scope: !2539, inlinedAt: !2544)
!2546 = !DILocation(line: 197, column: 12, scope: !2539, inlinedAt: !2544)
!2547 = !DILocation(line: 147, column: 33, scope: !2432)
!2548 = !DILocation(line: 148, column: 55, scope: !2432)
!2549 = !DILocation(line: 0, scope: !2539, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 148, column: 35, scope: !2432)
!2551 = !DILocation(line: 197, column: 13, scope: !2539, inlinedAt: !2550)
!2552 = !DILocation(line: 197, column: 12, scope: !2539, inlinedAt: !2550)
!2553 = !DILocation(line: 148, column: 33, scope: !2432)
!2554 = !DILocation(line: 149, column: 13, scope: !2432)
!2555 = !DILocation(line: 150, column: 17, scope: !2424)
!2556 = !DILocation(line: 120, column: 33, scope: !2425)
!2557 = !DILocation(line: 120, column: 27, scope: !2425)
!2558 = !DILocation(line: 120, column: 9, scope: !2420)
!2559 = distinct !{!2559, !2558, !2560}
!2560 = !DILocation(line: 151, column: 9, scope: !2420)
!2561 = !DILocation(line: 113, column: 29, scope: !2422)
!2562 = !DILocation(line: 113, column: 23, scope: !2422)
!2563 = distinct !{!2563, !2437, !2564}
!2564 = !DILocation(line: 152, column: 5, scope: !2418)
!2565 = distinct !DISubprogram(name: "deblock_chroma_c", scope: !3, file: !3, line: 163, type: !2408, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2566)
!2566 = !{!2567, !2568, !2569, !2570, !2571, !2572, !2573, !2575, !2578, !2580, !2583, !2584, !2585, !2586}
!2567 = !DILocalVariable(name: "pix", arg: 1, scope: !2565, file: !3, line: 163, type: !290)
!2568 = !DILocalVariable(name: "xstride", arg: 2, scope: !2565, file: !3, line: 163, type: !104)
!2569 = !DILocalVariable(name: "ystride", arg: 3, scope: !2565, file: !3, line: 163, type: !104)
!2570 = !DILocalVariable(name: "alpha", arg: 4, scope: !2565, file: !3, line: 163, type: !104)
!2571 = !DILocalVariable(name: "beta", arg: 5, scope: !2565, file: !3, line: 163, type: !104)
!2572 = !DILocalVariable(name: "tc0", arg: 6, scope: !2565, file: !3, line: 163, type: !629)
!2573 = !DILocalVariable(name: "i", scope: !2574, file: !3, line: 165, type: !104)
!2574 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 165, column: 5)
!2575 = !DILocalVariable(name: "tc", scope: !2576, file: !3, line: 167, type: !104)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 166, column: 5)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 165, column: 5)
!2578 = !DILocalVariable(name: "d", scope: !2579, file: !3, line: 173, type: !104)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 173, column: 9)
!2580 = !DILocalVariable(name: "p1", scope: !2581, file: !3, line: 175, type: !104)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 174, column: 9)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 173, column: 9)
!2583 = !DILocalVariable(name: "p0", scope: !2581, file: !3, line: 176, type: !104)
!2584 = !DILocalVariable(name: "q0", scope: !2581, file: !3, line: 177, type: !104)
!2585 = !DILocalVariable(name: "q1", scope: !2581, file: !3, line: 178, type: !104)
!2586 = !DILocalVariable(name: "delta", scope: !2587, file: !3, line: 182, type: !104)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 181, column: 13)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 180, column: 17)
!2589 = !DILocation(line: 0, scope: !2565)
!2590 = !DILocation(line: 0, scope: !2574)
!2591 = !DILocation(line: 165, column: 5, scope: !2574)
!2592 = !DILocation(line: 189, column: 1, scope: !2565)
!2593 = !DILocation(line: 167, column: 18, scope: !2576)
!2594 = !DILocation(line: 0, scope: !2576)
!2595 = !DILocation(line: 168, column: 16, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 168, column: 13)
!2597 = !DILocation(line: 168, column: 13, scope: !2576)
!2598 = !DILocation(line: 0, scope: !2579)
!2599 = !DILocation(line: 175, column: 22, scope: !2581)
!2600 = !DILocation(line: 0, scope: !2581)
!2601 = !DILocation(line: 176, column: 22, scope: !2581)
!2602 = !DILocation(line: 177, column: 22, scope: !2581)
!2603 = !DILocation(line: 178, column: 22, scope: !2581)
!2604 = !DILocation(line: 180, column: 25, scope: !2588)
!2605 = !DILocation(line: 180, column: 17, scope: !2588)
!2606 = !DILocation(line: 180, column: 32, scope: !2588)
!2607 = !DILocation(line: 180, column: 40, scope: !2588)
!2608 = !DILocation(line: 170, column: 17, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 169, column: 9)
!2610 = !DILocation(line: 171, column: 13, scope: !2609)
!2611 = !DILocation(line: 180, column: 51, scope: !2588)
!2612 = !DILocation(line: 180, column: 43, scope: !2588)
!2613 = !DILocation(line: 180, column: 58, scope: !2588)
!2614 = !DILocation(line: 180, column: 65, scope: !2588)
!2615 = !DILocation(line: 180, column: 76, scope: !2588)
!2616 = !DILocation(line: 180, column: 68, scope: !2588)
!2617 = !DILocation(line: 180, column: 83, scope: !2588)
!2618 = !DILocation(line: 180, column: 17, scope: !2581)
!2619 = !DILocation(line: 182, column: 47, scope: !2587)
!2620 = !DILocation(line: 182, column: 54, scope: !2587)
!2621 = !DILocation(line: 182, column: 66, scope: !2587)
!2622 = !DILocation(line: 182, column: 60, scope: !2587)
!2623 = !DILocation(line: 182, column: 72, scope: !2587)
!2624 = !DILocation(line: 182, column: 77, scope: !2587)
!2625 = !DILocation(line: 0, scope: !2485, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 182, column: 29, scope: !2587)
!2627 = !DILocation(line: 202, column: 17, scope: !2485, inlinedAt: !2626)
!2628 = !DILocation(line: 202, column: 14, scope: !2485, inlinedAt: !2626)
!2629 = !DILocation(line: 0, scope: !2587)
!2630 = !DILocation(line: 183, column: 55, scope: !2587)
!2631 = !DILocation(line: 0, scope: !2539, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 183, column: 35, scope: !2587)
!2633 = !DILocation(line: 197, column: 13, scope: !2539, inlinedAt: !2632)
!2634 = !DILocation(line: 197, column: 12, scope: !2539, inlinedAt: !2632)
!2635 = !DILocation(line: 183, column: 33, scope: !2587)
!2636 = !DILocation(line: 184, column: 55, scope: !2587)
!2637 = !DILocation(line: 0, scope: !2539, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 184, column: 35, scope: !2587)
!2639 = !DILocation(line: 197, column: 13, scope: !2539, inlinedAt: !2638)
!2640 = !DILocation(line: 197, column: 12, scope: !2539, inlinedAt: !2638)
!2641 = !DILocation(line: 184, column: 33, scope: !2587)
!2642 = !DILocation(line: 185, column: 13, scope: !2587)
!2643 = !DILocation(line: 186, column: 17, scope: !2581)
!2644 = !DILocation(line: 165, column: 29, scope: !2577)
!2645 = !DILocation(line: 165, column: 23, scope: !2577)
!2646 = distinct !{!2646, !2591, !2647}
!2647 = !DILocation(line: 188, column: 5, scope: !2574)
!2648 = distinct !DISubprogram(name: "deblock_luma_intra_c", scope: !3, file: !3, line: 199, type: !2649, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{null, !290, !104, !104, !104, !104}
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2659, !2662, !2663, !2664, !2665, !2666, !2667, !2675}
!2652 = !DILocalVariable(name: "pix", arg: 1, scope: !2648, file: !3, line: 199, type: !290)
!2653 = !DILocalVariable(name: "xstride", arg: 2, scope: !2648, file: !3, line: 199, type: !104)
!2654 = !DILocalVariable(name: "ystride", arg: 3, scope: !2648, file: !3, line: 199, type: !104)
!2655 = !DILocalVariable(name: "alpha", arg: 4, scope: !2648, file: !3, line: 199, type: !104)
!2656 = !DILocalVariable(name: "beta", arg: 5, scope: !2648, file: !3, line: 199, type: !104)
!2657 = !DILocalVariable(name: "d", scope: !2658, file: !3, line: 201, type: !104)
!2658 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 201, column: 5)
!2659 = !DILocalVariable(name: "p2", scope: !2660, file: !3, line: 203, type: !104)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 202, column: 5)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 201, column: 5)
!2662 = !DILocalVariable(name: "p1", scope: !2660, file: !3, line: 204, type: !104)
!2663 = !DILocalVariable(name: "p0", scope: !2660, file: !3, line: 205, type: !104)
!2664 = !DILocalVariable(name: "q0", scope: !2660, file: !3, line: 206, type: !104)
!2665 = !DILocalVariable(name: "q1", scope: !2660, file: !3, line: 207, type: !104)
!2666 = !DILocalVariable(name: "q2", scope: !2660, file: !3, line: 208, type: !104)
!2667 = !DILocalVariable(name: "p3", scope: !2668, file: !3, line: 216, type: !2674)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 215, column: 17)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 214, column: 21)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 213, column: 13)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 212, column: 16)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 211, column: 9)
!2673 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 210, column: 13)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!2675 = !DILocalVariable(name: "q3", scope: !2676, file: !3, line: 225, type: !2674)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 224, column: 17)
!2677 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 223, column: 21)
!2678 = !DILocation(line: 0, scope: !2648)
!2679 = !DILocation(line: 0, scope: !2658)
!2680 = !DILocation(line: 201, column: 5, scope: !2658)
!2681 = !DILocation(line: 241, column: 1, scope: !2648)
!2682 = !DILocation(line: 203, column: 18, scope: !2660)
!2683 = !DILocation(line: 0, scope: !2660)
!2684 = !DILocation(line: 204, column: 18, scope: !2660)
!2685 = !DILocation(line: 205, column: 18, scope: !2660)
!2686 = !DILocation(line: 206, column: 18, scope: !2660)
!2687 = !DILocation(line: 207, column: 18, scope: !2660)
!2688 = !DILocation(line: 208, column: 18, scope: !2660)
!2689 = !DILocation(line: 210, column: 21, scope: !2673)
!2690 = !DILocation(line: 210, column: 13, scope: !2673)
!2691 = !DILocation(line: 210, column: 28, scope: !2673)
!2692 = !DILocation(line: 210, column: 36, scope: !2673)
!2693 = !DILocation(line: 210, column: 47, scope: !2673)
!2694 = !DILocation(line: 210, column: 39, scope: !2673)
!2695 = !DILocation(line: 210, column: 54, scope: !2673)
!2696 = !DILocation(line: 210, column: 61, scope: !2673)
!2697 = !DILocation(line: 210, column: 72, scope: !2673)
!2698 = !DILocation(line: 210, column: 64, scope: !2673)
!2699 = !DILocation(line: 210, column: 79, scope: !2673)
!2700 = !DILocation(line: 210, column: 13, scope: !2660)
!2701 = !DILocation(line: 212, column: 31, scope: !2671)
!2702 = !DILocation(line: 212, column: 16, scope: !2672)
!2703 = !DILocation(line: 214, column: 29, scope: !2669)
!2704 = !DILocation(line: 214, column: 21, scope: !2669)
!2705 = !DILocation(line: 214, column: 36, scope: !2669)
!2706 = !DILocation(line: 214, column: 21, scope: !2670)
!2707 = !DILocation(line: 216, column: 36, scope: !2668)
!2708 = !DILocation(line: 0, scope: !2668)
!2709 = !DILocation(line: 217, column: 51, scope: !2668)
!2710 = !DILocation(line: 217, column: 58, scope: !2668)
!2711 = !DILocation(line: 217, column: 65, scope: !2668)
!2712 = !DILocation(line: 217, column: 70, scope: !2668)
!2713 = !DILocation(line: 217, column: 76, scope: !2668)
!2714 = !DILocation(line: 217, column: 39, scope: !2668)
!2715 = !DILocation(line: 217, column: 37, scope: !2668)
!2716 = !DILocation(line: 218, column: 49, scope: !2668)
!2717 = !DILocation(line: 218, column: 54, scope: !2668)
!2718 = !DILocation(line: 218, column: 59, scope: !2668)
!2719 = !DILocation(line: 218, column: 65, scope: !2668)
!2720 = !DILocation(line: 218, column: 39, scope: !2668)
!2721 = !DILocation(line: 218, column: 37, scope: !2668)
!2722 = !DILocation(line: 219, column: 42, scope: !2668)
!2723 = !DILocation(line: 219, column: 49, scope: !2668)
!2724 = !DILocation(line: 219, column: 46, scope: !2668)
!2725 = !DILocation(line: 219, column: 53, scope: !2668)
!2726 = !DILocation(line: 219, column: 58, scope: !2668)
!2727 = !DILocation(line: 219, column: 63, scope: !2668)
!2728 = !DILocation(line: 219, column: 68, scope: !2668)
!2729 = !DILocation(line: 219, column: 74, scope: !2668)
!2730 = !DILocation(line: 220, column: 17, scope: !2668)
!2731 = !DILocation(line: 222, column: 42, scope: !2669)
!2732 = !DILocation(line: 222, column: 46, scope: !2669)
!2733 = !DILocation(line: 222, column: 51, scope: !2669)
!2734 = !DILocation(line: 222, column: 56, scope: !2669)
!2735 = !DILocation(line: 222, column: 62, scope: !2669)
!2736 = !DILocation(line: 0, scope: !2669)
!2737 = !DILocation(line: 223, column: 29, scope: !2677)
!2738 = !DILocation(line: 223, column: 21, scope: !2677)
!2739 = !DILocation(line: 223, column: 36, scope: !2677)
!2740 = !DILocation(line: 223, column: 21, scope: !2670)
!2741 = !DILocation(line: 225, column: 36, scope: !2676)
!2742 = !DILocation(line: 0, scope: !2676)
!2743 = !DILocation(line: 226, column: 50, scope: !2676)
!2744 = !DILocation(line: 226, column: 57, scope: !2676)
!2745 = !DILocation(line: 226, column: 64, scope: !2676)
!2746 = !DILocation(line: 226, column: 69, scope: !2676)
!2747 = !DILocation(line: 226, column: 75, scope: !2676)
!2748 = !DILocation(line: 226, column: 38, scope: !2676)
!2749 = !DILocation(line: 226, column: 36, scope: !2676)
!2750 = !DILocation(line: 227, column: 53, scope: !2676)
!2751 = !DILocation(line: 227, column: 58, scope: !2676)
!2752 = !DILocation(line: 227, column: 64, scope: !2676)
!2753 = !DILocation(line: 227, column: 38, scope: !2676)
!2754 = !DILocation(line: 227, column: 36, scope: !2676)
!2755 = !DILocation(line: 228, column: 41, scope: !2676)
!2756 = !DILocation(line: 228, column: 48, scope: !2676)
!2757 = !DILocation(line: 228, column: 52, scope: !2676)
!2758 = !DILocation(line: 228, column: 57, scope: !2676)
!2759 = !DILocation(line: 228, column: 62, scope: !2676)
!2760 = !DILocation(line: 228, column: 67, scope: !2676)
!2761 = !DILocation(line: 228, column: 73, scope: !2676)
!2762 = !DILocation(line: 229, column: 17, scope: !2676)
!2763 = !DILocation(line: 231, column: 41, scope: !2677)
!2764 = !DILocation(line: 231, column: 45, scope: !2677)
!2765 = !DILocation(line: 231, column: 50, scope: !2677)
!2766 = !DILocation(line: 231, column: 55, scope: !2677)
!2767 = !DILocation(line: 231, column: 61, scope: !2677)
!2768 = !DILocation(line: 235, column: 38, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 234, column: 13)
!2770 = !DILocation(line: 235, column: 42, scope: !2769)
!2771 = !DILocation(line: 235, column: 47, scope: !2769)
!2772 = !DILocation(line: 235, column: 52, scope: !2769)
!2773 = !DILocation(line: 235, column: 58, scope: !2769)
!2774 = !DILocation(line: 235, column: 35, scope: !2769)
!2775 = !DILocation(line: 235, column: 33, scope: !2769)
!2776 = !DILocation(line: 236, column: 38, scope: !2769)
!2777 = !DILocation(line: 236, column: 42, scope: !2769)
!2778 = !DILocation(line: 236, column: 47, scope: !2769)
!2779 = !DILocation(line: 236, column: 52, scope: !2769)
!2780 = !DILocation(line: 236, column: 58, scope: !2769)
!2781 = !DILocation(line: 0, scope: !2671)
!2782 = !DILocation(line: 239, column: 13, scope: !2660)
!2783 = !DILocation(line: 201, column: 30, scope: !2661)
!2784 = !DILocation(line: 201, column: 23, scope: !2661)
!2785 = distinct !{!2785, !2680, !2786}
!2786 = !DILocation(line: 240, column: 5, scope: !2658)
!2787 = distinct !DISubprogram(name: "deblock_chroma_intra_c", scope: !3, file: !3, line: 251, type: !2649, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2796, !2799, !2800, !2801}
!2789 = !DILocalVariable(name: "pix", arg: 1, scope: !2787, file: !3, line: 251, type: !290)
!2790 = !DILocalVariable(name: "xstride", arg: 2, scope: !2787, file: !3, line: 251, type: !104)
!2791 = !DILocalVariable(name: "ystride", arg: 3, scope: !2787, file: !3, line: 251, type: !104)
!2792 = !DILocalVariable(name: "alpha", arg: 4, scope: !2787, file: !3, line: 251, type: !104)
!2793 = !DILocalVariable(name: "beta", arg: 5, scope: !2787, file: !3, line: 251, type: !104)
!2794 = !DILocalVariable(name: "d", scope: !2795, file: !3, line: 253, type: !104)
!2795 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 253, column: 5)
!2796 = !DILocalVariable(name: "p1", scope: !2797, file: !3, line: 255, type: !104)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 254, column: 5)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 253, column: 5)
!2799 = !DILocalVariable(name: "p0", scope: !2797, file: !3, line: 256, type: !104)
!2800 = !DILocalVariable(name: "q0", scope: !2797, file: !3, line: 257, type: !104)
!2801 = !DILocalVariable(name: "q1", scope: !2797, file: !3, line: 258, type: !104)
!2802 = !DILocation(line: 0, scope: !2787)
!2803 = !DILocation(line: 0, scope: !2795)
!2804 = !DILocation(line: 255, column: 18, scope: !2797)
!2805 = !DILocation(line: 0, scope: !2797)
!2806 = !DILocation(line: 256, column: 18, scope: !2797)
!2807 = !DILocation(line: 257, column: 18, scope: !2797)
!2808 = !DILocation(line: 258, column: 18, scope: !2797)
!2809 = !DILocation(line: 260, column: 21, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 260, column: 13)
!2811 = !DILocation(line: 260, column: 13, scope: !2810)
!2812 = !DILocation(line: 260, column: 28, scope: !2810)
!2813 = !DILocation(line: 260, column: 36, scope: !2810)
!2814 = !DILocation(line: 260, column: 47, scope: !2810)
!2815 = !DILocation(line: 260, column: 39, scope: !2810)
!2816 = !DILocation(line: 260, column: 54, scope: !2810)
!2817 = !DILocation(line: 260, column: 61, scope: !2810)
!2818 = !DILocation(line: 260, column: 72, scope: !2810)
!2819 = !DILocation(line: 260, column: 64, scope: !2810)
!2820 = !DILocation(line: 260, column: 79, scope: !2810)
!2821 = !DILocation(line: 260, column: 13, scope: !2797)
!2822 = !DILocation(line: 262, column: 33, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 261, column: 9)
!2824 = !DILocation(line: 262, column: 37, scope: !2823)
!2825 = !DILocation(line: 262, column: 42, scope: !2823)
!2826 = !DILocation(line: 262, column: 47, scope: !2823)
!2827 = !DILocation(line: 262, column: 52, scope: !2823)
!2828 = !DILocation(line: 262, column: 31, scope: !2823)
!2829 = !DILocation(line: 262, column: 29, scope: !2823)
!2830 = !DILocation(line: 263, column: 33, scope: !2823)
!2831 = !DILocation(line: 263, column: 37, scope: !2823)
!2832 = !DILocation(line: 263, column: 42, scope: !2823)
!2833 = !DILocation(line: 263, column: 47, scope: !2823)
!2834 = !DILocation(line: 263, column: 52, scope: !2823)
!2835 = !DILocation(line: 263, column: 31, scope: !2823)
!2836 = !DILocation(line: 263, column: 29, scope: !2823)
!2837 = !DILocation(line: 264, column: 9, scope: !2823)
!2838 = !DILocation(line: 265, column: 13, scope: !2797)
!2839 = !DILocation(line: 267, column: 1, scope: !2787)
