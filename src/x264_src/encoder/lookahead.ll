; ModuleID = 'x264_src/encoder/lookahead.c'
source_filename = "x264_src/encoder/lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_lookahead_init(ptr nocapture noundef readonly %h, i32 noundef %i_slicetype_length) local_unnamed_addr #0 !dbg !10 {
entry:
    #dbg_value(ptr %h, !1330, !DIExpression(), !1337)
    #dbg_value(i32 %i_slicetype_length, !1331, !DIExpression(), !1337)
  %call = tail call ptr @x264_malloc(i32 noundef 120) #5, !dbg !1338
    #dbg_value(ptr %call, !1332, !DIExpression(), !1337)
  %tobool.not = icmp eq ptr %call, null, !dbg !1341
  br i1 %tobool.not, label %fail, label %do.end, !dbg !1338

do.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %call, i8 0, i64 120, i1 false), !dbg !1343
    #dbg_value(i32 0, !1333, !DIExpression(), !1344)
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
    #dbg_value(i32 0, !1333, !DIExpression(), !1344)
  %0 = load i32, ptr %i_threads, align 4, !dbg !1345
  %cmp78 = icmp sgt i32 %0, 0, !dbg !1347
  br i1 %cmp78, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1348

for.body.lr.ph:                                   ; preds = %do.end
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  br label %for.body, !dbg !1348

for.cond.cleanup:                                 ; preds = %for.body, %do.end
  %i_keyint_max = getelementptr inbounds i8, ptr %h, i64 84, !dbg !1349
  %1 = load i32, ptr %i_keyint_max, align 4, !dbg !1349
  %sub = sub nsw i32 0, %1, !dbg !1350
  %i_last_keyframe = getelementptr inbounds i8, ptr %call, i64 4, !dbg !1351
  store i32 %sub, ptr %i_last_keyframe, align 4, !dbg !1352
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552, !dbg !1353
  %2 = load i32, ptr %b_mb_tree, align 8, !dbg !1353
  %tobool6.not = icmp eq i32 %2, 0, !dbg !1354
  br i1 %tobool6.not, label %lor.lhs.false, label %land.rhs, !dbg !1355

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1333, !DIExpression(), !1344)
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %indvars.iv, !dbg !1356
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1356
  %lookahead = getelementptr inbounds i8, ptr %3, i64 33328, !dbg !1357
  store ptr %call, ptr %lookahead, align 16, !dbg !1358
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1359
    #dbg_value(i64 %indvars.iv.next, !1333, !DIExpression(), !1344)
  %4 = load i32, ptr %i_threads, align 4, !dbg !1345
  %5 = sext i32 %4 to i64, !dbg !1347
  %cmp = icmp slt i64 %indvars.iv.next, %5, !dbg !1347
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1348, !llvm.loop !1360

lor.lhs.false:                                    ; preds = %for.cond.cleanup
  %i_vbv_buffer_size = getelementptr inbounds i8, ptr %h, i64 528, !dbg !1362
  %6 = load i32, ptr %i_vbv_buffer_size, align 8, !dbg !1362
  %tobool9.not = icmp eq i32 %6, 0, !dbg !1363
  br i1 %tobool9.not, label %land.end, label %land.lhs.true, !dbg !1364

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i_lookahead = getelementptr inbounds i8, ptr %h, i64 556, !dbg !1365
  %7 = load i32, ptr %i_lookahead, align 4, !dbg !1365
  %tobool12.not = icmp eq i32 %7, 0, !dbg !1366
  br i1 %tobool12.not, label %land.end, label %land.rhs, !dbg !1367

land.rhs:                                         ; preds = %land.lhs.true, %for.cond.cleanup
  %b_stat_read = getelementptr inbounds i8, ptr %h, i64 576, !dbg !1368
  %8 = load i32, ptr %b_stat_read, align 8, !dbg !1368
  %tobool15.not = icmp eq i32 %8, 0, !dbg !1369
  %9 = zext i1 %tobool15.not to i8, !dbg !1370
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false
  %conv = phi i8 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %9, %land.rhs ], !dbg !1337
  %b_analyse_keyframe = getelementptr inbounds i8, ptr %call, i64 2, !dbg !1371
  store i8 %conv, ptr %b_analyse_keyframe, align 2, !dbg !1372
  %i_slicetype_length16 = getelementptr inbounds i8, ptr %call, i64 8, !dbg !1373
  store i32 %i_slicetype_length, ptr %i_slicetype_length16, align 8, !dbg !1374
  %ifbuf = getelementptr inbounds i8, ptr %call, i64 24, !dbg !1375
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16, !dbg !1377
  %10 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1377
  %add = add nsw i32 %10, 3, !dbg !1378
  %call18 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ifbuf, i32 noundef %add) #5, !dbg !1379
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !1379
  br i1 %tobool19.not, label %lor.lhs.false20, label %fail, !dbg !1380

lor.lhs.false20:                                  ; preds = %land.end
  %next = getelementptr inbounds i8, ptr %call, i64 56, !dbg !1381
  %i_delay = getelementptr inbounds i8, ptr %h, i64 14612, !dbg !1382
  %11 = load i32, ptr %i_delay, align 4, !dbg !1382
  %add21 = add nsw i32 %11, 3, !dbg !1383
  %call22 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %next, i32 noundef %add21) #5, !dbg !1384
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !1384
  br i1 %tobool23.not, label %lor.lhs.false24, label %fail, !dbg !1385

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %ofbuf = getelementptr inbounds i8, ptr %call, i64 88, !dbg !1386
  %12 = load i32, ptr %i_delay, align 4, !dbg !1387
  %add27 = add nsw i32 %12, 3, !dbg !1388
  %call28 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ofbuf, i32 noundef %add27) #5, !dbg !1389
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !1389
  br i1 %tobool29.not, label %if.end31, label %fail, !dbg !1390

if.end31:                                         ; preds = %lor.lhs.false24
  %13 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1391
  %tobool34.not = icmp eq i32 %13, 0, !dbg !1393
  br i1 %tobool34.not, label %cleanup, label %if.end36, !dbg !1394

if.end36:                                         ; preds = %if.end31
  %thread37 = getelementptr inbounds i8, ptr %h, i64 704, !dbg !1395
  %14 = load i32, ptr %i_threads, align 4, !dbg !1396
  %idxprom40 = sext i32 %14 to i64, !dbg !1397
  %arrayidx41 = getelementptr inbounds [129 x ptr], ptr %thread37, i64 0, i64 %idxprom40, !dbg !1397
  %15 = load ptr, ptr %arrayidx41, align 8, !dbg !1397
    #dbg_value(ptr %15, !1335, !DIExpression(), !1337)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %15, ptr noundef nonnull align 16 dereferenceable(33344) %h, i64 33344, i1 false), !dbg !1398
  %call42 = tail call i32 @x264_macroblock_cache_allocate(ptr noundef %15) #5, !dbg !1399
  %tobool43.not = icmp eq i32 %call42, 0, !dbg !1399
  br i1 %tobool43.not, label %if.end45, label %fail, !dbg !1401

if.end45:                                         ; preds = %if.end36
  %call46 = tail call i32 @x264_macroblock_thread_allocate(ptr noundef nonnull %15, i32 noundef 1) #5, !dbg !1402
  %cmp47 = icmp slt i32 %call46, 0, !dbg !1404
  br i1 %cmp47, label %fail, label %if.end50, !dbg !1405

if.end50:                                         ; preds = %if.end45
  %b_thread_active = getelementptr inbounds i8, ptr %call, i64 1, !dbg !1406
  store i8 1, ptr %b_thread_active, align 1, !dbg !1407
  br label %cleanup, !dbg !1408

fail:                                             ; preds = %if.end45, %if.end36, %land.end, %lor.lhs.false20, %lor.lhs.false24, %entry
    #dbg_label(!1336, !1409)
  tail call void @x264_free(ptr noundef %call) #5, !dbg !1410
  br label %cleanup, !dbg !1411

cleanup:                                          ; preds = %if.end31, %fail, %if.end50
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end50 ], [ 0, %if.end31 ], !dbg !1337
  ret i32 %retval.0, !dbg !1412
}

declare !dbg !1413 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !1416 i32 @x264_synch_frame_list_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !1420 i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #1

declare !dbg !1424 i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1425 void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_delete(ptr noundef %h) local_unnamed_addr #0 !dbg !1426 {
entry:
    #dbg_value(ptr %h, !1430, !DIExpression(), !1431)
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16, !dbg !1432
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1432
  %tobool.not = icmp eq i32 %0, 0, !dbg !1434
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1435

if.then:                                          ; preds = %entry
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328, !dbg !1436
  %1 = load ptr, ptr %lookahead, align 16, !dbg !1436
  store volatile i8 1, ptr %1, align 8, !dbg !1438
  %thread = getelementptr inbounds i8, ptr %h, i64 704, !dbg !1439
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4, !dbg !1440
  %2 = load i32, ptr %i_threads, align 4, !dbg !1440
  %idxprom = sext i32 %2 to i64, !dbg !1441
  %arrayidx = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom, !dbg !1441
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1441
  tail call void @x264_macroblock_cache_free(ptr noundef %3) #5, !dbg !1442
  %4 = load i32, ptr %i_threads, align 4, !dbg !1443
  %idxprom5 = sext i32 %4 to i64, !dbg !1444
  %arrayidx6 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom5, !dbg !1444
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !1444
  tail call void @x264_macroblock_thread_free(ptr noundef %5, i32 noundef 1) #5, !dbg !1445
  %6 = load i32, ptr %i_threads, align 4, !dbg !1446
  %idxprom10 = sext i32 %6 to i64, !dbg !1447
  %arrayidx11 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom10, !dbg !1447
  %7 = load ptr, ptr %arrayidx11, align 8, !dbg !1447
  tail call void @x264_free(ptr noundef %7) #5, !dbg !1448
  br label %if.end, !dbg !1449

if.end:                                           ; preds = %if.then, %entry
  %lookahead12 = getelementptr inbounds i8, ptr %h, i64 33328, !dbg !1450
  %8 = load ptr, ptr %lookahead12, align 16, !dbg !1450
  %ifbuf = getelementptr inbounds i8, ptr %8, i64 24, !dbg !1451
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ifbuf) #5, !dbg !1452
  %9 = load ptr, ptr %lookahead12, align 16, !dbg !1453
  %next = getelementptr inbounds i8, ptr %9, i64 56, !dbg !1454
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %next) #5, !dbg !1455
  %10 = load ptr, ptr %lookahead12, align 16, !dbg !1456
  %last_nonb = getelementptr inbounds i8, ptr %10, i64 16, !dbg !1458
  %11 = load ptr, ptr %last_nonb, align 8, !dbg !1458
  %tobool15.not = icmp eq ptr %11, null, !dbg !1459
  br i1 %tobool15.not, label %if.end19, label %if.then16, !dbg !1460

if.then16:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %11) #5, !dbg !1461
  %.pre = load ptr, ptr %lookahead12, align 16, !dbg !1462
  br label %if.end19, !dbg !1461

if.end19:                                         ; preds = %if.then16, %if.end
  %12 = phi ptr [ %.pre, %if.then16 ], [ %10, %if.end ], !dbg !1462
  %ofbuf = getelementptr inbounds i8, ptr %12, i64 88, !dbg !1463
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ofbuf) #5, !dbg !1464
  %13 = load ptr, ptr %lookahead12, align 16, !dbg !1465
  tail call void @x264_free(ptr noundef %13) #5, !dbg !1466
  ret void, !dbg !1467
}

declare !dbg !1468 void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #1

declare !dbg !1469 void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1472 void @x264_synch_frame_list_delete(ptr noundef) local_unnamed_addr #1

declare !dbg !1475 void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_put_frame(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #0 !dbg !1478 {
entry:
    #dbg_value(ptr %h, !1480, !DIExpression(), !1482)
    #dbg_value(ptr %frame, !1481, !DIExpression(), !1482)
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16, !dbg !1483
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1483
  %tobool.not = icmp eq i32 %0, 0, !dbg !1485
  %lookahead1 = getelementptr inbounds i8, ptr %h, i64 33328, !dbg !1486
  %1 = load ptr, ptr %lookahead1, align 16, !dbg !1486
  %. = select i1 %tobool.not, i64 56, i64 24
  %next = getelementptr inbounds i8, ptr %1, i64 %., !dbg !1486
  tail call void @x264_synch_frame_list_push(ptr noundef nonnull %next, ptr noundef %frame) #5, !dbg !1486
  ret void, !dbg !1487
}

declare !dbg !1488 void @x264_synch_frame_list_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @x264_lookahead_is_empty(ptr nocapture noundef readonly %h) local_unnamed_addr #4 !dbg !1491 {
entry:
    #dbg_value(ptr %h, !1493, !DIExpression(), !1495)
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328, !dbg !1496
  %0 = load ptr, ptr %lookahead, align 16, !dbg !1496
  %i_size = getelementptr inbounds i8, ptr %0, i64 68, !dbg !1497
  %1 = load i32, ptr %i_size, align 4, !dbg !1497
  %tobool.not = icmp eq i32 %1, 0, !dbg !1498
  br i1 %tobool.not, label %land.rhs, label %land.end, !dbg !1499

land.rhs:                                         ; preds = %entry
  %i_size2 = getelementptr inbounds i8, ptr %0, i64 100, !dbg !1500
  %2 = load i32, ptr %i_size2, align 4, !dbg !1500
  %tobool3.not = icmp eq i32 %2, 0, !dbg !1501
  %3 = zext i1 %tobool3.not to i32, !dbg !1499
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %3, %land.rhs ], !dbg !1495
    #dbg_value(i32 %land.ext, !1494, !DIExpression(), !1495)
  ret i32 %land.ext, !dbg !1502
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_get_frames(ptr noundef %h) local_unnamed_addr #0 !dbg !1503 {
entry:
    #dbg_value(ptr %h, !1505, !DIExpression(), !1506)
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16, !dbg !1507
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1507
  %tobool.not = icmp eq i32 %0, 0, !dbg !1509
  br i1 %tobool.not, label %if.else, label %while.cond.preheader, !dbg !1510

while.cond.preheader:                             ; preds = %entry
  %lookahead = getelementptr inbounds i8, ptr %h, i64 33328
  %1 = load ptr, ptr %lookahead, align 16
  %i_size = getelementptr inbounds i8, ptr %1, i64 100
  %2 = load i32, ptr %i_size, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %while.cond.preheader.split, label %if.end.i, !dbg !1511

while.cond.preheader.split:                       ; preds = %while.cond.preheader
  %b_thread_active = getelementptr inbounds i8, ptr %1, i64 1
  %3 = load i8, ptr %b_thread_active, align 1
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end34, label %while.cond, !dbg !1513, !llvm.loop !1514

while.cond:                                       ; preds = %while.cond.preheader.split, %while.cond
  br label %while.cond, !dbg !1513

if.end.i:                                         ; preds = %while.cond.preheader
    #dbg_value(ptr %h, !1516, !DIExpression(), !1520)
  %ofbuf.i = getelementptr inbounds i8, ptr %1, i64 88, !dbg !1522
  %4 = load ptr, ptr %ofbuf.i, align 8, !dbg !1524
  %5 = load ptr, ptr %4, align 8, !dbg !1525
  %i_bframes.i = getelementptr inbounds i8, ptr %5, i64 86, !dbg !1526
  %6 = load i8, ptr %i_bframes.i, align 2, !dbg !1526
  %conv.i = zext i8 %6 to i32, !dbg !1525
  %add.i = add nuw nsw i32 %conv.i, 1, !dbg !1527
    #dbg_value(i32 %add.i, !1519, !DIExpression(), !1520)
  %frames.i = getelementptr inbounds i8, ptr %h, i64 14416
    #dbg_value(i32 %add.i, !1519, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1520)
  br label %while.body.i, !dbg !1528

while.body.i:                                     ; preds = %while.body.i, %if.end.i
  %i_frames.015.i = phi i32 [ %add.i, %if.end.i ], [ %dec.i, %while.body.i ]
    #dbg_value(i32 %i_frames.015.i, !1519, !DIExpression(), !1520)
  %dec.i = add nsw i32 %i_frames.015.i, -1, !dbg !1529
    #dbg_value(i32 %dec.i, !1519, !DIExpression(), !1520)
  %7 = load ptr, ptr %frames.i, align 16, !dbg !1530
  %8 = load ptr, ptr %lookahead, align 16, !dbg !1532
  %ofbuf5.i = getelementptr inbounds i8, ptr %8, i64 88, !dbg !1533
  %9 = load ptr, ptr %ofbuf5.i, align 8, !dbg !1534
  %call.i = tail call ptr @x264_frame_shift(ptr noundef %9) #5, !dbg !1535
  tail call void @x264_frame_push(ptr noundef %7, ptr noundef %call.i) #5, !dbg !1536
  %10 = load ptr, ptr %lookahead, align 16, !dbg !1537
  %i_size9.i = getelementptr inbounds i8, ptr %10, i64 100, !dbg !1538
  %11 = load i32, ptr %i_size9.i, align 4, !dbg !1539
  %dec10.i = add nsw i32 %11, -1, !dbg !1539
  store i32 %dec10.i, ptr %i_size9.i, align 4, !dbg !1539
    #dbg_value(i32 %dec.i, !1519, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1520)
  %tobool3.not.i = icmp eq i32 %dec.i, 0, !dbg !1528
  br i1 %tobool3.not.i, label %if.end34, label %while.body.i, !dbg !1528, !llvm.loop !1540

if.else:                                          ; preds = %entry
  %frames = getelementptr inbounds i8, ptr %h, i64 14416, !dbg !1542
  %12 = load ptr, ptr %frames, align 16, !dbg !1545
  %13 = load ptr, ptr %12, align 8, !dbg !1546
  %tobool4.not = icmp eq ptr %13, null, !dbg !1546
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end34, !dbg !1547

lor.lhs.false:                                    ; preds = %if.else
  %lookahead5 = getelementptr inbounds i8, ptr %h, i64 33328, !dbg !1548
  %14 = load ptr, ptr %lookahead5, align 16, !dbg !1548
  %i_size6 = getelementptr inbounds i8, ptr %14, i64 68, !dbg !1549
  %15 = load i32, ptr %i_size6, align 4, !dbg !1549
  %tobool7.not = icmp eq i32 %15, 0, !dbg !1550
  br i1 %tobool7.not, label %if.end34, label %if.end, !dbg !1551

if.end:                                           ; preds = %lor.lhs.false
  tail call void @x264_slicetype_decide(ptr noundef nonnull %h) #5, !dbg !1552
  %16 = load ptr, ptr %lookahead5, align 16, !dbg !1553
  %next10 = getelementptr inbounds i8, ptr %16, i64 56, !dbg !1554
  %17 = load ptr, ptr %next10, align 8, !dbg !1555
  %18 = load ptr, ptr %17, align 8, !dbg !1556
    #dbg_value(ptr %h, !1557, !DIExpression(), !1561)
    #dbg_value(ptr %18, !1560, !DIExpression(), !1561)
  %last_nonb.i = getelementptr inbounds i8, ptr %16, i64 16, !dbg !1563
  %19 = load ptr, ptr %last_nonb.i, align 8, !dbg !1563
  %tobool.not.i52 = icmp eq ptr %19, null, !dbg !1565
  br i1 %tobool.not.i52, label %x264_lookahead_update_last_nonb.exit, label %if.then.i, !dbg !1566

if.then.i:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %19) #5, !dbg !1567
  %.pre.i = load ptr, ptr %lookahead5, align 16, !dbg !1568
  br label %x264_lookahead_update_last_nonb.exit, !dbg !1567

x264_lookahead_update_last_nonb.exit:             ; preds = %if.end, %if.then.i
  %20 = phi ptr [ %.pre.i, %if.then.i ], [ %16, %if.end ], !dbg !1568
  %last_nonb4.i = getelementptr inbounds i8, ptr %20, i64 16, !dbg !1569
  store ptr %18, ptr %last_nonb4.i, align 8, !dbg !1570
  %i_reference_count.i = getelementptr inbounds i8, ptr %18, i64 15600, !dbg !1571
  %21 = load i32, ptr %i_reference_count.i, align 16, !dbg !1572
  %inc.i = add nsw i32 %21, 1, !dbg !1572
  store i32 %inc.i, ptr %i_reference_count.i, align 16, !dbg !1572
  %22 = load ptr, ptr %lookahead5, align 16, !dbg !1573
  %ofbuf13 = getelementptr inbounds i8, ptr %22, i64 88, !dbg !1574
  %next15 = getelementptr inbounds i8, ptr %22, i64 56, !dbg !1575
  %23 = load ptr, ptr %next15, align 8, !dbg !1576
  %24 = load ptr, ptr %23, align 8, !dbg !1577
  %i_bframes = getelementptr inbounds i8, ptr %24, i64 86, !dbg !1578
  %25 = load i8, ptr %i_bframes, align 2, !dbg !1578
  %conv20 = zext i8 %25 to i32, !dbg !1577
  %add = add nuw nsw i32 %conv20, 1, !dbg !1579
    #dbg_value(ptr %ofbuf13, !1580, !DIExpression(), !1588)
    #dbg_value(ptr %next15, !1585, !DIExpression(), !1588)
    #dbg_value(i32 %add, !1586, !DIExpression(), !1588)
    #dbg_value(i32 %add, !1587, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1588)
  %i_size.i54 = getelementptr inbounds i8, ptr %22, i64 100
  %i_size2.i = getelementptr inbounds i8, ptr %22, i64 68
  br label %while.body.i55, !dbg !1590

while.body.i55:                                   ; preds = %while.body.i55, %x264_lookahead_update_last_nonb.exit
  %i.09.i = phi i32 [ %add, %x264_lookahead_update_last_nonb.exit ], [ %dec.i56, %while.body.i55 ]
    #dbg_value(i32 %i.09.i, !1587, !DIExpression(), !1588)
  %dec.i56 = add nsw i32 %i.09.i, -1, !dbg !1591
    #dbg_value(i32 %dec.i56, !1587, !DIExpression(), !1588)
  %26 = load ptr, ptr %next15, align 8, !dbg !1592
  %call.i57 = tail call ptr @x264_frame_shift(ptr noundef %26) #5, !dbg !1594
  %27 = load ptr, ptr %ofbuf13, align 8, !dbg !1595
  %28 = load i32, ptr %i_size.i54, align 4, !dbg !1596
  %inc.i58 = add nsw i32 %28, 1, !dbg !1596
  store i32 %inc.i58, ptr %i_size.i54, align 4, !dbg !1596
  %idxprom.i = sext i32 %28 to i64, !dbg !1597
  %arrayidx.i = getelementptr inbounds ptr, ptr %27, i64 %idxprom.i, !dbg !1597
  store ptr %call.i57, ptr %arrayidx.i, align 8, !dbg !1598
  %29 = load i32, ptr %i_size2.i, align 4, !dbg !1599
  %dec3.i = add nsw i32 %29, -1, !dbg !1599
  store i32 %dec3.i, ptr %i_size2.i, align 4, !dbg !1599
    #dbg_value(i32 %dec.i56, !1587, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1588)
  %tobool.not.i59 = icmp eq i32 %dec.i56, 0, !dbg !1590
  br i1 %tobool.not.i59, label %x264_lookahead_shift.exit, label %while.body.i55, !dbg !1590, !llvm.loop !1600

x264_lookahead_shift.exit:                        ; preds = %while.body.i55
  %30 = load ptr, ptr %lookahead5, align 16, !dbg !1602
  %b_analyse_keyframe = getelementptr inbounds i8, ptr %30, i64 2, !dbg !1604
  %31 = load i8, ptr %b_analyse_keyframe, align 2, !dbg !1604
  %tobool23.not = icmp eq i8 %31, 0, !dbg !1605
  br i1 %tobool23.not, label %if.end33, label %land.lhs.true, !dbg !1606

land.lhs.true:                                    ; preds = %x264_lookahead_shift.exit
  %last_nonb = getelementptr inbounds i8, ptr %30, i64 16, !dbg !1607
  %32 = load ptr, ptr %last_nonb, align 8, !dbg !1607
  %i_type = getelementptr inbounds i8, ptr %32, i64 4, !dbg !1607
  %33 = load i32, ptr %i_type, align 4, !dbg !1607
  %.off = add i32 %33, -1, !dbg !1607
  %switch = icmp ult i32 %.off, 2, !dbg !1607
  br i1 %switch, label %if.then32, label %if.end33, !dbg !1607

if.then32:                                        ; preds = %land.lhs.true
  tail call void @x264_slicetype_analyse(ptr noundef nonnull %h, i32 noundef 1) #5, !dbg !1608
  %.pre = load ptr, ptr %lookahead5, align 16, !dbg !1609
  br label %if.end33, !dbg !1608

if.end33:                                         ; preds = %land.lhs.true, %if.then32, %x264_lookahead_shift.exit
  %34 = phi ptr [ %30, %land.lhs.true ], [ %.pre, %if.then32 ], [ %30, %x264_lookahead_shift.exit ], !dbg !1609
    #dbg_value(ptr %h, !1516, !DIExpression(), !1611)
  %i_size.i61 = getelementptr inbounds i8, ptr %34, i64 100, !dbg !1612
  %35 = load i32, ptr %i_size.i61, align 4, !dbg !1612
  %tobool.not.i62 = icmp eq i32 %35, 0, !dbg !1613
  br i1 %tobool.not.i62, label %if.end34, label %if.end.i63, !dbg !1614

if.end.i63:                                       ; preds = %if.end33
  %ofbuf.i64 = getelementptr inbounds i8, ptr %34, i64 88, !dbg !1615
  %36 = load ptr, ptr %ofbuf.i64, align 8, !dbg !1616
  %37 = load ptr, ptr %36, align 8, !dbg !1617
  %i_bframes.i65 = getelementptr inbounds i8, ptr %37, i64 86, !dbg !1618
  %38 = load i8, ptr %i_bframes.i65, align 2, !dbg !1618
  %conv.i66 = zext i8 %38 to i32, !dbg !1617
  %add.i67 = add nuw nsw i32 %conv.i66, 1, !dbg !1619
    #dbg_value(i32 %add.i67, !1519, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1611)
  br label %while.body.i69, !dbg !1620

while.body.i69:                                   ; preds = %while.body.i69, %if.end.i63
  %i_frames.015.i70 = phi i32 [ %add.i67, %if.end.i63 ], [ %dec.i71, %while.body.i69 ]
    #dbg_value(i32 %i_frames.015.i70, !1519, !DIExpression(), !1611)
  %dec.i71 = add nsw i32 %i_frames.015.i70, -1, !dbg !1621
    #dbg_value(i32 %dec.i71, !1519, !DIExpression(), !1611)
  %39 = load ptr, ptr %frames, align 16, !dbg !1622
  %40 = load ptr, ptr %lookahead5, align 16, !dbg !1623
  %ofbuf5.i72 = getelementptr inbounds i8, ptr %40, i64 88, !dbg !1624
  %41 = load ptr, ptr %ofbuf5.i72, align 8, !dbg !1625
  %call.i73 = tail call ptr @x264_frame_shift(ptr noundef %41) #5, !dbg !1626
  tail call void @x264_frame_push(ptr noundef %39, ptr noundef %call.i73) #5, !dbg !1627
  %42 = load ptr, ptr %lookahead5, align 16, !dbg !1628
  %i_size9.i74 = getelementptr inbounds i8, ptr %42, i64 100, !dbg !1629
  %43 = load i32, ptr %i_size9.i74, align 4, !dbg !1630
  %dec10.i75 = add nsw i32 %43, -1, !dbg !1630
  store i32 %dec10.i75, ptr %i_size9.i74, align 4, !dbg !1630
    #dbg_value(i32 %dec.i71, !1519, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1611)
  %tobool3.not.i76 = icmp eq i32 %dec.i71, 0, !dbg !1620
  br i1 %tobool3.not.i76, label %if.end34, label %while.body.i69, !dbg !1620, !llvm.loop !1631

if.end34:                                         ; preds = %while.body.i, %while.body.i69, %while.cond.preheader.split, %if.end33, %if.else, %lor.lhs.false
  ret void, !dbg !1633
}

declare !dbg !1634 void @x264_slicetype_decide(ptr noundef) local_unnamed_addr #1

declare !dbg !1636 void @x264_slicetype_analyse(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1637 void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1640 ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "x264_src/encoder/lookahead.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "27b33612dfe1b8e274f9789e59678140")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!10 = distinct !DISubprogram(name: "x264_lookahead_init", scope: !1, file: !1, line: 127, type: !11, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1329)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !18, line: 381, size: 266752, elements: !19)
!18 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!19 = !{!20, !198, !202, !203, !204, !205, !206, !207, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !343, !345, !373, !375, !376, !377, !383, !387, !388, !389, !396, !400, !401, !402, !407, !410, !411, !490, !507, !671, !672, !673, !674, !678, !679, !680, !681, !682, !683, !684, !699, !893, !897, !958, !961, !963, !965, !966, !969, !974, !983, !984, !992, !994, !999, !1075, !1161, !1205, !1227, !1276, !1305}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !17, file: !18, line: 384, baseType: !21, size: 5632)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !16, line: 376, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !16, line: 176, size: 5632, elements: !23)
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !77, !78, !79, !80, !84, !85, !99, !100, !101, !102, !103, !134, !176, !177, !178, !179, !180, !181, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !22, file: !16, line: 179, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !22, file: !16, line: 180, baseType: !13, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !22, file: !16, line: 181, baseType: !13, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !22, file: !16, line: 182, baseType: !13, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !22, file: !16, line: 186, baseType: !13, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !22, file: !16, line: 187, baseType: !13, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !22, file: !16, line: 189, baseType: !13, size: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !22, file: !16, line: 190, baseType: !13, size: 32, offset: 288)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !22, file: !16, line: 198, baseType: !13, size: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !22, file: !16, line: 215, baseType: !37, size: 288, offset: 352)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 200, size: 288, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !37, file: !16, line: 203, baseType: !13, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !37, file: !16, line: 204, baseType: !13, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !37, file: !16, line: 206, baseType: !13, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !37, file: !16, line: 209, baseType: !13, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !37, file: !16, line: 210, baseType: !13, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !37, file: !16, line: 211, baseType: !13, size: 32, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !37, file: !16, line: 212, baseType: !13, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !37, file: !16, line: 213, baseType: !13, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !37, file: !16, line: 214, baseType: !13, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !22, file: !16, line: 219, baseType: !13, size: 32, offset: 672)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !22, file: !16, line: 220, baseType: !13, size: 32, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !22, file: !16, line: 221, baseType: !13, size: 32, offset: 736)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !22, file: !16, line: 222, baseType: !13, size: 32, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !22, file: !16, line: 224, baseType: !13, size: 32, offset: 800)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !22, file: !16, line: 225, baseType: !13, size: 32, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !22, file: !16, line: 226, baseType: !13, size: 32, offset: 864)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !22, file: !16, line: 227, baseType: !13, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !22, file: !16, line: 230, baseType: !13, size: 32, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !22, file: !16, line: 231, baseType: !13, size: 32, offset: 992)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !22, file: !16, line: 233, baseType: !13, size: 32, offset: 1024)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !22, file: !16, line: 234, baseType: !13, size: 32, offset: 1056)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !22, file: !16, line: 236, baseType: !13, size: 32, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !22, file: !16, line: 237, baseType: !13, size: 32, offset: 1120)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !22, file: !16, line: 239, baseType: !13, size: 32, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !22, file: !16, line: 240, baseType: !66, size: 64, offset: 1216)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !22, file: !16, line: 241, baseType: !69, size: 128, offset: 1280)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !75)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !{!76}
!76 = !DISubrange(count: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !22, file: !16, line: 242, baseType: !69, size: 128, offset: 1408)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !22, file: !16, line: 243, baseType: !69, size: 128, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !22, file: !16, line: 244, baseType: !69, size: 128, offset: 1664)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !22, file: !16, line: 245, baseType: !81, size: 512, offset: 1792)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !22, file: !16, line: 246, baseType: !81, size: 512, offset: 2304)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !22, file: !16, line: 249, baseType: !86, size: 64, offset: 2816)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !13, !90, !92}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !93, file: !1, baseType: !25, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !93, file: !1, baseType: !25, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !93, file: !1, baseType: !89, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !93, file: !1, baseType: !89, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !22, file: !16, line: 250, baseType: !89, size: 64, offset: 2880)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !22, file: !16, line: 251, baseType: !13, size: 32, offset: 2944)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !22, file: !16, line: 252, baseType: !13, size: 32, offset: 2976)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !22, file: !16, line: 253, baseType: !66, size: 64, offset: 3008)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !22, file: !16, line: 287, baseType: !104, size: 800, offset: 3072)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 256, size: 800, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126, !127, !128, !132, !133}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !104, file: !16, line: 258, baseType: !25, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !104, file: !16, line: 259, baseType: !25, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !104, file: !16, line: 261, baseType: !13, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !104, file: !16, line: 262, baseType: !13, size: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !104, file: !16, line: 263, baseType: !13, size: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !104, file: !16, line: 264, baseType: !13, size: 32, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !104, file: !16, line: 265, baseType: !13, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !104, file: !16, line: 267, baseType: !13, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !104, file: !16, line: 268, baseType: !13, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !104, file: !16, line: 269, baseType: !13, size: 32, offset: 288)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !104, file: !16, line: 270, baseType: !13, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !104, file: !16, line: 271, baseType: !13, size: 32, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !104, file: !16, line: 272, baseType: !13, size: 32, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !104, file: !16, line: 273, baseType: !13, size: 32, offset: 416)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !104, file: !16, line: 274, baseType: !13, size: 32, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !104, file: !16, line: 275, baseType: !13, size: 32, offset: 480)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !104, file: !16, line: 276, baseType: !13, size: 32, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !104, file: !16, line: 277, baseType: !13, size: 32, offset: 544)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !104, file: !16, line: 278, baseType: !125, size: 32, offset: 576)
!125 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !104, file: !16, line: 279, baseType: !125, size: 32, offset: 608)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !104, file: !16, line: 280, baseType: !13, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !104, file: !16, line: 283, baseType: !129, size: 64, offset: 672)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 2)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !104, file: !16, line: 285, baseType: !13, size: 32, offset: 736)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !104, file: !16, line: 286, baseType: !13, size: 32, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !22, file: !16, line: 327, baseType: !135, size: 1152, offset: 3904)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 290, size: 1152, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !174, !175}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !135, file: !16, line: 292, baseType: !13, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !135, file: !16, line: 294, baseType: !13, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !135, file: !16, line: 295, baseType: !13, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !135, file: !16, line: 296, baseType: !13, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !135, file: !16, line: 297, baseType: !13, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !135, file: !16, line: 299, baseType: !13, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !135, file: !16, line: 300, baseType: !125, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !135, file: !16, line: 301, baseType: !125, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !135, file: !16, line: 302, baseType: !125, size: 32, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !135, file: !16, line: 303, baseType: !13, size: 32, offset: 288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !135, file: !16, line: 304, baseType: !13, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !135, file: !16, line: 305, baseType: !125, size: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !135, file: !16, line: 306, baseType: !125, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !135, file: !16, line: 307, baseType: !125, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !135, file: !16, line: 309, baseType: !13, size: 32, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !135, file: !16, line: 310, baseType: !125, size: 32, offset: 480)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !135, file: !16, line: 311, baseType: !13, size: 32, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !135, file: !16, line: 312, baseType: !13, size: 32, offset: 544)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !135, file: !16, line: 315, baseType: !13, size: 32, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !135, file: !16, line: 316, baseType: !66, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !135, file: !16, line: 317, baseType: !13, size: 32, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !135, file: !16, line: 318, baseType: !66, size: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !135, file: !16, line: 321, baseType: !125, size: 32, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !135, file: !16, line: 322, baseType: !125, size: 32, offset: 864)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !135, file: !16, line: 323, baseType: !125, size: 32, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !135, file: !16, line: 324, baseType: !163, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !16, line: 174, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 167, size: 256, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !165, file: !16, line: 169, baseType: !13, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !165, file: !16, line: 169, baseType: !13, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !165, file: !16, line: 170, baseType: !13, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !165, file: !16, line: 171, baseType: !13, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !165, file: !16, line: 172, baseType: !125, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !165, file: !16, line: 173, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !135, file: !16, line: 325, baseType: !13, size: 32, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !135, file: !16, line: 326, baseType: !66, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !22, file: !16, line: 330, baseType: !13, size: 32, offset: 5056)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !22, file: !16, line: 331, baseType: !13, size: 32, offset: 5088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !22, file: !16, line: 332, baseType: !13, size: 32, offset: 5120)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !22, file: !16, line: 334, baseType: !13, size: 32, offset: 5152)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !22, file: !16, line: 335, baseType: !13, size: 32, offset: 5184)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !22, file: !16, line: 336, baseType: !182, size: 32, offset: 5216)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !25)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !22, file: !16, line: 337, baseType: !182, size: 32, offset: 5248)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !22, file: !16, line: 338, baseType: !182, size: 32, offset: 5280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !22, file: !16, line: 339, baseType: !182, size: 32, offset: 5312)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !22, file: !16, line: 340, baseType: !13, size: 32, offset: 5344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !22, file: !16, line: 344, baseType: !13, size: 32, offset: 5376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !22, file: !16, line: 356, baseType: !13, size: 32, offset: 5408)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !22, file: !16, line: 364, baseType: !13, size: 32, offset: 5440)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !22, file: !16, line: 367, baseType: !13, size: 32, offset: 5472)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !22, file: !16, line: 368, baseType: !13, size: 32, offset: 5504)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !22, file: !16, line: 369, baseType: !13, size: 32, offset: 5536)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !22, file: !16, line: 375, baseType: !195, size: 64, offset: 5568)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !89}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !17, file: !18, line: 386, baseType: !199, size: 8256, offset: 5632)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8256, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 129)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !17, file: !18, line: 387, baseType: !13, size: 32, offset: 13888)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !17, file: !18, line: 388, baseType: !13, size: 32, offset: 13920)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !17, file: !18, line: 389, baseType: !13, size: 32, offset: 13952)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !17, file: !18, line: 390, baseType: !13, size: 32, offset: 13984)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !17, file: !18, line: 391, baseType: !13, size: 32, offset: 14016)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !17, file: !18, line: 402, baseType: !208, size: 576, offset: 14080)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 394, size: 576, elements: !209)
!209 = !{!210, !211, !212, !222, !223, !224}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !208, file: !18, line: 396, baseType: !13, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !208, file: !18, line: 397, baseType: !13, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !208, file: !18, line: 398, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !16, line: 604, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 593, size: 192, elements: !216)
!216 = !{!217, !218, !219, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !215, file: !16, line: 595, baseType: !13, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !215, file: !16, line: 596, baseType: !13, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !215, file: !16, line: 599, baseType: !13, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !215, file: !16, line: 603, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !208, file: !18, line: 399, baseType: !13, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !208, file: !18, line: 400, baseType: !221, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !208, file: !18, line: 401, baseType: !225, size: 320, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !226, line: 56, baseType: !227)
!226 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !226, line: 47, size: 320, elements: !228)
!228 = !{!229, !230, !231, !232, !236, !237}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !227, file: !226, line: 49, baseType: !221, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !227, file: !226, line: 50, baseType: !221, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !227, file: !226, line: 51, baseType: !221, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !227, file: !226, line: 53, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !234, line: 87, baseType: !235)
!234 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!235 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !227, file: !226, line: 54, baseType: !13, size: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !227, file: !226, line: 55, baseType: !13, size: 32, offset: 288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !17, file: !18, line: 404, baseType: !221, size: 64, offset: 14656)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !17, file: !18, line: 405, baseType: !13, size: 32, offset: 14720)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !17, file: !18, line: 410, baseType: !13, size: 32, offset: 14752)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !17, file: !18, line: 411, baseType: !13, size: 32, offset: 14784)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !17, file: !18, line: 413, baseType: !13, size: 32, offset: 14816)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !17, file: !18, line: 415, baseType: !13, size: 32, offset: 14848)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !17, file: !18, line: 416, baseType: !13, size: 32, offset: 14880)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !17, file: !18, line: 418, baseType: !13, size: 32, offset: 14912)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !17, file: !18, line: 419, baseType: !13, size: 32, offset: 14944)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !17, file: !18, line: 420, baseType: !13, size: 32, offset: 14976)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !17, file: !18, line: 421, baseType: !13, size: 32, offset: 15008)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !17, file: !18, line: 422, baseType: !13, size: 32, offset: 15040)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !17, file: !18, line: 424, baseType: !13, size: 32, offset: 15072)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !17, file: !18, line: 425, baseType: !13, size: 32, offset: 15104)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !17, file: !18, line: 427, baseType: !13, size: 32, offset: 15136)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !17, file: !18, line: 430, baseType: !254, size: 10400, offset: 15168)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 10400, elements: !341)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !256, line: 154, baseType: !257)
!256 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 52, size: 10400, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !276, !277, !278, !279, !280, !281, !282, !283, !284, !291, !292, !340}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !257, file: !256, line: 54, baseType: !13, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !257, file: !256, line: 56, baseType: !13, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !257, file: !256, line: 57, baseType: !13, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !257, file: !256, line: 59, baseType: !13, size: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !257, file: !256, line: 60, baseType: !13, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !257, file: !256, line: 61, baseType: !13, size: 32, offset: 160)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !257, file: !256, line: 63, baseType: !13, size: 32, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !257, file: !256, line: 65, baseType: !13, size: 32, offset: 224)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !257, file: !256, line: 67, baseType: !13, size: 32, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !257, file: !256, line: 69, baseType: !13, size: 32, offset: 288)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !257, file: !256, line: 70, baseType: !13, size: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !257, file: !256, line: 71, baseType: !13, size: 32, offset: 352)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !257, file: !256, line: 72, baseType: !13, size: 32, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !257, file: !256, line: 73, baseType: !273, size: 8192, offset: 416)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !257, file: !256, line: 75, baseType: !13, size: 32, offset: 8608)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !257, file: !256, line: 76, baseType: !13, size: 32, offset: 8640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !257, file: !256, line: 77, baseType: !13, size: 32, offset: 8672)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !257, file: !256, line: 78, baseType: !13, size: 32, offset: 8704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !257, file: !256, line: 79, baseType: !13, size: 32, offset: 8736)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !257, file: !256, line: 80, baseType: !13, size: 32, offset: 8768)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !257, file: !256, line: 81, baseType: !13, size: 32, offset: 8800)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !257, file: !256, line: 83, baseType: !13, size: 32, offset: 8832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !257, file: !256, line: 90, baseType: !285, size: 128, offset: 8864)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !257, file: !256, line: 84, size: 128, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !285, file: !256, line: 86, baseType: !13, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !285, file: !256, line: 87, baseType: !13, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !285, file: !256, line: 88, baseType: !13, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !285, file: !256, line: 89, baseType: !13, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !257, file: !256, line: 92, baseType: !13, size: 32, offset: 8992)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !257, file: !256, line: 150, baseType: !293, size: 1344, offset: 9024)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !257, file: !256, line: 93, size: 1344, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !293, file: !256, line: 95, baseType: !13, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !293, file: !256, line: 96, baseType: !13, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !293, file: !256, line: 97, baseType: !13, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !293, file: !256, line: 99, baseType: !13, size: 32, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !293, file: !256, line: 100, baseType: !13, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !293, file: !256, line: 102, baseType: !13, size: 32, offset: 160)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !293, file: !256, line: 103, baseType: !13, size: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !293, file: !256, line: 104, baseType: !13, size: 32, offset: 224)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !293, file: !256, line: 105, baseType: !13, size: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !293, file: !256, line: 106, baseType: !13, size: 32, offset: 288)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !293, file: !256, line: 107, baseType: !13, size: 32, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !293, file: !256, line: 108, baseType: !13, size: 32, offset: 352)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !293, file: !256, line: 110, baseType: !13, size: 32, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !293, file: !256, line: 111, baseType: !13, size: 32, offset: 416)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !293, file: !256, line: 112, baseType: !13, size: 32, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !293, file: !256, line: 114, baseType: !13, size: 32, offset: 480)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !293, file: !256, line: 115, baseType: !182, size: 32, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !293, file: !256, line: 116, baseType: !182, size: 32, offset: 544)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !293, file: !256, line: 117, baseType: !13, size: 32, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !293, file: !256, line: 119, baseType: !13, size: 32, offset: 608)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !293, file: !256, line: 120, baseType: !13, size: 32, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !293, file: !256, line: 137, baseType: !317, size: 384, offset: 672)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !293, file: !256, line: 122, size: 384, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !317, file: !256, line: 124, baseType: !13, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !317, file: !256, line: 125, baseType: !13, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !317, file: !256, line: 126, baseType: !13, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !317, file: !256, line: 127, baseType: !13, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !317, file: !256, line: 128, baseType: !13, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !317, file: !256, line: 129, baseType: !13, size: 32, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !317, file: !256, line: 130, baseType: !13, size: 32, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !317, file: !256, line: 131, baseType: !13, size: 32, offset: 224)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !317, file: !256, line: 133, baseType: !13, size: 32, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !317, file: !256, line: 134, baseType: !13, size: 32, offset: 288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !317, file: !256, line: 135, baseType: !13, size: 32, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !317, file: !256, line: 136, baseType: !13, size: 32, offset: 352)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !293, file: !256, line: 139, baseType: !13, size: 32, offset: 1056)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !293, file: !256, line: 140, baseType: !13, size: 32, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !293, file: !256, line: 141, baseType: !13, size: 32, offset: 1120)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !293, file: !256, line: 142, baseType: !13, size: 32, offset: 1152)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !293, file: !256, line: 143, baseType: !13, size: 32, offset: 1184)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !293, file: !256, line: 144, baseType: !13, size: 32, offset: 1216)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !293, file: !256, line: 145, baseType: !13, size: 32, offset: 1248)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !293, file: !256, line: 146, baseType: !13, size: 32, offset: 1280)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !293, file: !256, line: 147, baseType: !13, size: 32, offset: 1312)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !257, file: !256, line: 152, baseType: !13, size: 32, offset: 10368)
!341 = !{!342}
!342 = !DISubrange(count: 1)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !17, file: !18, line: 431, baseType: !344, size: 64, offset: 25600)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !17, file: !18, line: 432, baseType: !346, size: 960, offset: 25664)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 960, elements: !341)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !256, line: 186, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 156, size: 960, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !348, file: !256, line: 158, baseType: !13, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !348, file: !256, line: 159, baseType: !13, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !348, file: !256, line: 161, baseType: !13, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !348, file: !256, line: 163, baseType: !13, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !348, file: !256, line: 164, baseType: !13, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !348, file: !256, line: 166, baseType: !13, size: 32, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !348, file: !256, line: 167, baseType: !13, size: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !348, file: !256, line: 169, baseType: !13, size: 32, offset: 224)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !348, file: !256, line: 170, baseType: !13, size: 32, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !348, file: !256, line: 172, baseType: !13, size: 32, offset: 288)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !348, file: !256, line: 173, baseType: !13, size: 32, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !348, file: !256, line: 175, baseType: !13, size: 32, offset: 352)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !348, file: !256, line: 177, baseType: !13, size: 32, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !348, file: !256, line: 178, baseType: !13, size: 32, offset: 416)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !348, file: !256, line: 179, baseType: !13, size: 32, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !348, file: !256, line: 181, baseType: !13, size: 32, offset: 480)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !348, file: !256, line: 183, baseType: !13, size: 32, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !348, file: !256, line: 184, baseType: !368, size: 384, offset: 576)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, elements: !371)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!371 = !{!372}
!372 = !DISubrange(count: 6)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !17, file: !18, line: 433, baseType: !374, size: 64, offset: 26624)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !17, file: !18, line: 434, baseType: !13, size: 32, offset: 26688)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !17, file: !18, line: 437, baseType: !13, size: 32, offset: 26720)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !17, file: !18, line: 440, baseType: !378, size: 256, offset: 26752)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !381)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !75)
!381 = !{!382}
!382 = !DISubrange(count: 4)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !17, file: !18, line: 441, baseType: !384, size: 128, offset: 27008)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !130)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !82)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !17, file: !18, line: 443, baseType: !378, size: 256, offset: 27136)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !17, file: !18, line: 444, baseType: !384, size: 128, offset: 27392)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !17, file: !18, line: 446, baseType: !390, size: 256, offset: 27520)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !381)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !75)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !71, line: 25, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !395)
!395 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !17, file: !18, line: 447, baseType: !397, size: 128, offset: 27776)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 128, elements: !130)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1024, elements: !82)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !17, file: !18, line: 448, baseType: !390, size: 256, offset: 27904)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !17, file: !18, line: 449, baseType: !397, size: 128, offset: 28160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !17, file: !18, line: 454, baseType: !403, size: 5888, offset: 28288)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 5888, elements: !405)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!405 = !{!406}
!406 = !DISubrange(count: 92)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !17, file: !18, line: 455, baseType: !408, size: 23552, offset: 34176)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 23552, elements: !409)
!409 = !{!406, !382}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !17, file: !18, line: 457, baseType: !369, size: 64, offset: 57728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !17, file: !18, line: 460, baseType: !412, size: 53376, offset: 57856)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !18, line: 364, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 302, size: 53376, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !443, !474, !475, !476, !482, !483, !484, !485, !486, !487, !488, !489}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !413, file: !18, line: 304, baseType: !344, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !413, file: !18, line: 305, baseType: !374, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !413, file: !18, line: 307, baseType: !13, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !413, file: !18, line: 308, baseType: !13, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !413, file: !18, line: 309, baseType: !13, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !413, file: !18, line: 311, baseType: !13, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !413, file: !18, line: 313, baseType: !13, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !413, file: !18, line: 315, baseType: !13, size: 32, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !413, file: !18, line: 316, baseType: !13, size: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !413, file: !18, line: 317, baseType: !13, size: 32, offset: 352)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !413, file: !18, line: 319, baseType: !13, size: 32, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !413, file: !18, line: 321, baseType: !13, size: 32, offset: 416)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !413, file: !18, line: 322, baseType: !13, size: 32, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !413, file: !18, line: 324, baseType: !129, size: 64, offset: 480)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !413, file: !18, line: 325, baseType: !13, size: 32, offset: 544)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !413, file: !18, line: 327, baseType: !13, size: 32, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !413, file: !18, line: 329, baseType: !13, size: 32, offset: 608)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !413, file: !18, line: 330, baseType: !13, size: 32, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !413, file: !18, line: 331, baseType: !13, size: 32, offset: 672)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !413, file: !18, line: 333, baseType: !13, size: 32, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !413, file: !18, line: 334, baseType: !13, size: 32, offset: 736)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !413, file: !18, line: 339, baseType: !437, size: 2048, offset: 768)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 2048, elements: !442)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !18, line: 335, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !438, file: !18, line: 337, baseType: !13, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !438, file: !18, line: 338, baseType: !13, size: 32, offset: 32)
!442 = !{!131, !76}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !413, file: !18, line: 342, baseType: !444, size: 49152, align: 128, offset: 2816)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 49152, align: 128, elements: !471)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !446, line: 36, baseType: !447, align: 128)
!446 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !446, line: 26, size: 512, elements: !448)
!448 = !{!449, !457, !458, !461, !462, !463}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !447, file: !446, line: 30, baseType: !450, size: 128, align: 128)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 128, elements: !455)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !452, line: 25, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !73, line: 39, baseType: !454)
!454 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!455 = !{!456}
!456 = !DISubrange(count: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !447, file: !446, line: 31, baseType: !450, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !447, file: !446, line: 32, baseType: !459, size: 32, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !452, line: 26, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !73, line: 41, baseType: !13)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !447, file: !446, line: 33, baseType: !459, size: 32, offset: 288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !447, file: !446, line: 34, baseType: !459, size: 32, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !447, file: !446, line: 35, baseType: !464, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !446, line: 25, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !221, !13, !221, !13, !469, !13}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!471 = !{!472, !473}
!472 = !DISubrange(count: 32)
!473 = !DISubrange(count: 3)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !413, file: !18, line: 344, baseType: !13, size: 32, offset: 51968)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !413, file: !18, line: 345, baseType: !13, size: 32, offset: 52000)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !413, file: !18, line: 350, baseType: !477, size: 1024, offset: 52032)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 1024, elements: !75)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !18, line: 346, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !478, file: !18, line: 348, baseType: !13, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !478, file: !18, line: 349, baseType: !13, size: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !413, file: !18, line: 352, baseType: !13, size: 32, offset: 53056)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !413, file: !18, line: 354, baseType: !13, size: 32, offset: 53088)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !413, file: !18, line: 355, baseType: !13, size: 32, offset: 53120)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !413, file: !18, line: 356, baseType: !13, size: 32, offset: 53152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !413, file: !18, line: 357, baseType: !13, size: 32, offset: 53184)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !413, file: !18, line: 360, baseType: !13, size: 32, offset: 53216)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !413, file: !18, line: 361, baseType: !13, size: 32, offset: 53248)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !413, file: !18, line: 362, baseType: !13, size: 32, offset: 53280)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !17, file: !18, line: 463, baseType: !491, size: 4096, offset: 111232)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !492, line: 46, baseType: !493)
!492 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 27, size: 4096, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !493, file: !492, line: 30, baseType: !13, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !493, file: !492, line: 31, baseType: !13, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !493, file: !492, line: 34, baseType: !13, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !493, file: !492, line: 35, baseType: !13, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !493, file: !492, line: 37, baseType: !221, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !493, file: !492, line: 38, baseType: !221, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !493, file: !492, line: 39, baseType: !221, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !493, file: !492, line: 42, baseType: !13, size: 32, align: 128, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !493, file: !492, line: 45, baseType: !504, size: 3680, offset: 416)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3680, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 460)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !17, file: !18, line: 494, baseType: !508, size: 2112, offset: 115328)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 465, size: 2112, elements: !509)
!509 = !{!510, !651, !653, !654, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !667, !668, !669, !670}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !508, file: !18, line: 468, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !514, line: 146, baseType: !515)
!514 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !514, line: 31, size: 125056, elements: !516)
!516 = !{!517, !518, !519, !520, !523, !524, !525, !526, !527, !528, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !547, !548, !549, !550, !551, !552, !554, !556, !557, !558, !559, !560, !563, !565, !566, !568, !573, !574, !578, !579, !583, !587, !590, !592, !593, !595, !596, !598, !599, !600, !603, !605, !606, !607, !609, !610, !611, !612, !613, !614, !615, !616, !618, !619, !623, !632, !636, !638, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !515, file: !514, line: 34, baseType: !13, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !515, file: !514, line: 35, baseType: !13, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !515, file: !514, line: 36, baseType: !13, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !515, file: !514, line: 37, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !452, line: 27, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !73, line: 44, baseType: !235)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !515, file: !514, line: 38, baseType: !521, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !515, file: !514, line: 39, baseType: !13, size: 32, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !515, file: !514, line: 40, baseType: !13, size: 32, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !515, file: !514, line: 41, baseType: !13, size: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !515, file: !514, line: 42, baseType: !13, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !515, file: !514, line: 43, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !515, file: !514, line: 45, baseType: !13, size: 32, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !515, file: !514, line: 46, baseType: !13, size: 32, offset: 480)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !515, file: !514, line: 47, baseType: !13, size: 32, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !515, file: !514, line: 48, baseType: !13, size: 32, offset: 544)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !515, file: !514, line: 49, baseType: !13, size: 32, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !515, file: !514, line: 50, baseType: !13, size: 32, offset: 608)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !515, file: !514, line: 51, baseType: !13, size: 32, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !515, file: !514, line: 52, baseType: !70, size: 8, offset: 672)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !515, file: !514, line: 53, baseType: !70, size: 8, offset: 680)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !515, file: !514, line: 54, baseType: !70, size: 8, offset: 688)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !515, file: !514, line: 55, baseType: !125, size: 32, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !515, file: !514, line: 56, baseType: !125, size: 32, offset: 736)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !515, file: !514, line: 57, baseType: !13, size: 32, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !515, file: !514, line: 60, baseType: !13, size: 32, offset: 800)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !515, file: !514, line: 61, baseType: !545, size: 96, offset: 832)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !546)
!546 = !{!473}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !515, file: !514, line: 62, baseType: !545, size: 96, offset: 928)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !515, file: !514, line: 63, baseType: !545, size: 96, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !515, file: !514, line: 64, baseType: !13, size: 32, offset: 1120)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !515, file: !514, line: 65, baseType: !13, size: 32, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !515, file: !514, line: 66, baseType: !13, size: 32, offset: 1184)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !515, file: !514, line: 67, baseType: !553, size: 192, offset: 1216)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, elements: !546)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !515, file: !514, line: 68, baseType: !555, size: 256, offset: 1408)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !381)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !515, file: !514, line: 69, baseType: !555, size: 256, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !515, file: !514, line: 70, baseType: !404, size: 64, offset: 1920)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !515, file: !514, line: 74, baseType: !555, size: 256, offset: 1984)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !515, file: !514, line: 75, baseType: !555, size: 256, offset: 2240)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !515, file: !514, line: 77, baseType: !561, size: 24576, align: 128, offset: 2560)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 24576, align: 128, elements: !562)
!562 = !{!76, !473}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !515, file: !514, line: 78, baseType: !564, size: 1024, offset: 27136)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !75)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !515, file: !514, line: 79, baseType: !13, size: 32, offset: 28160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !515, file: !514, line: 80, baseType: !567, size: 64, offset: 28224)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !515, file: !514, line: 83, baseType: !569, size: 64, offset: 28288)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !452, line: 24, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !73, line: 37, baseType: !572)
!572 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !515, file: !514, line: 84, baseType: !221, size: 64, offset: 28352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !515, file: !514, line: 85, baseType: !575, size: 128, offset: 28416)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !130)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 32, elements: !130)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !515, file: !514, line: 86, baseType: !576, size: 64, offset: 28544)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !515, file: !514, line: 87, baseType: !580, size: 2176, offset: 28608)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2176, elements: !581)
!581 = !{!131, !582}
!582 = !DISubrange(count: 17)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !515, file: !514, line: 92, baseType: !584, size: 20736, offset: 30784)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 20736, elements: !585)
!585 = !{!586, !586}
!586 = !DISubrange(count: 18)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !515, file: !514, line: 96, baseType: !588, size: 2176, offset: 51520)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 2176, elements: !581)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !515, file: !514, line: 97, baseType: !591, size: 128, offset: 53696)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 128, elements: !130)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !515, file: !514, line: 98, baseType: !129, size: 64, offset: 53824)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !515, file: !514, line: 99, baseType: !594, size: 1024, offset: 53888)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !442)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !515, file: !514, line: 100, baseType: !577, size: 32, offset: 54912)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !515, file: !514, line: 105, baseType: !597, size: 10368, offset: 54944)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 10368, elements: !585)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !515, file: !514, line: 106, baseType: !597, size: 10368, offset: 65312)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !515, file: !514, line: 107, baseType: !13, size: 32, offset: 75680)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !515, file: !514, line: 108, baseType: !601, size: 576, offset: 75712)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 576, elements: !602)
!602 = !{!586}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !515, file: !514, line: 109, baseType: !604, size: 20736, offset: 76288)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 20736, elements: !585)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !515, file: !514, line: 110, baseType: !589, size: 64, offset: 97024)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !515, file: !514, line: 111, baseType: !589, size: 64, offset: 97088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !515, file: !514, line: 112, baseType: !608, size: 64, offset: 97152)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !515, file: !514, line: 113, baseType: !608, size: 64, offset: 97216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !515, file: !514, line: 114, baseType: !608, size: 64, offset: 97280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !515, file: !514, line: 115, baseType: !13, size: 32, offset: 97344)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !515, file: !514, line: 116, baseType: !404, size: 64, offset: 97408)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !515, file: !514, line: 117, baseType: !404, size: 64, offset: 97472)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !515, file: !514, line: 118, baseType: !404, size: 64, offset: 97536)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !515, file: !514, line: 119, baseType: !13, size: 32, offset: 97600)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !515, file: !514, line: 120, baseType: !617, size: 576, offset: 97632)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 576, elements: !602)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !515, file: !514, line: 121, baseType: !182, size: 32, offset: 98208)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !515, file: !514, line: 122, baseType: !620, size: 64, offset: 98240)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 27, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !622)
!622 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !515, file: !514, line: 125, baseType: !624, size: 256, offset: 98304)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !16, line: 503, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 496, size: 256, elements: !626)
!626 = !{!627, !629, !630, !631}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !625, file: !16, line: 498, baseType: !628, size: 64)
!628 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !625, file: !16, line: 499, baseType: !628, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !625, file: !16, line: 500, baseType: !628, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !625, file: !16, line: 502, baseType: !628, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !515, file: !514, line: 128, baseType: !633, size: 2008, offset: 98560)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2008, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 251)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !515, file: !514, line: 129, baseType: !637, size: 8032, offset: 100576)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8032, elements: !634)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !515, file: !514, line: 130, baseType: !639, size: 16064, offset: 108608)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 16064, elements: !634)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !515, file: !514, line: 131, baseType: !13, size: 32, offset: 124672)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !515, file: !514, line: 132, baseType: !13, size: 32, offset: 124704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !515, file: !514, line: 135, baseType: !13, size: 32, offset: 124736)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !515, file: !514, line: 136, baseType: !13, size: 32, offset: 124768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !515, file: !514, line: 137, baseType: !13, size: 32, offset: 124800)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !515, file: !514, line: 138, baseType: !13, size: 32, offset: 124832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !515, file: !514, line: 139, baseType: !13, size: 32, offset: 124864)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !515, file: !514, line: 142, baseType: !125, size: 32, offset: 124896)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !515, file: !514, line: 143, baseType: !13, size: 32, offset: 124928)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !515, file: !514, line: 144, baseType: !13, size: 32, offset: 124960)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !515, file: !514, line: 145, baseType: !13, size: 32, offset: 124992)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !508, file: !18, line: 470, baseType: !652, size: 128, offset: 64)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 128, elements: !130)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !508, file: !18, line: 473, baseType: !511, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !508, file: !18, line: 476, baseType: !655, size: 1152, offset: 256)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1152, elements: !602)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !508, file: !18, line: 478, baseType: !13, size: 32, offset: 1408)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !508, file: !18, line: 480, baseType: !13, size: 32, offset: 1440)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !508, file: !18, line: 482, baseType: !13, size: 32, offset: 1472)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !508, file: !18, line: 483, baseType: !13, size: 32, offset: 1504)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !508, file: !18, line: 484, baseType: !13, size: 32, offset: 1536)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !508, file: !18, line: 485, baseType: !13, size: 32, offset: 1568)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !508, file: !18, line: 486, baseType: !13, size: 32, offset: 1600)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !508, file: !18, line: 487, baseType: !521, size: 64, offset: 1664)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !508, file: !18, line: 488, baseType: !521, size: 64, offset: 1728)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !508, file: !18, line: 489, baseType: !666, size: 128, offset: 1792)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 128, elements: !130)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !508, file: !18, line: 490, baseType: !521, size: 64, offset: 1920)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !508, file: !18, line: 491, baseType: !521, size: 64, offset: 1984)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !508, file: !18, line: 492, baseType: !13, size: 32, offset: 2048)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !508, file: !18, line: 493, baseType: !13, size: 32, offset: 2080)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !17, file: !18, line: 497, baseType: !512, size: 64, offset: 117440)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !17, file: !18, line: 500, baseType: !512, size: 64, offset: 117504)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !17, file: !18, line: 503, baseType: !13, size: 32, offset: 117568)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !17, file: !18, line: 504, baseType: !675, size: 1216, offset: 117632)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1216, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 19)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !17, file: !18, line: 505, baseType: !13, size: 32, offset: 118848)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !17, file: !18, line: 506, baseType: !675, size: 1216, offset: 118912)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !17, file: !18, line: 507, baseType: !129, size: 64, offset: 120128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !17, file: !18, line: 510, baseType: !13, size: 32, offset: 120192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !17, file: !18, line: 511, baseType: !13, size: 32, offset: 120224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !17, file: !18, line: 512, baseType: !521, size: 64, offset: 120256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !17, file: !18, line: 522, baseType: !685, size: 10624, offset: 120320)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 515, size: 10624, elements: !686)
!686 = !{!687, !689, !692, !695}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !685, file: !18, line: 517, baseType: !688, size: 256, align: 128)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 256, elements: !75)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !685, file: !18, line: 518, baseType: !690, size: 128, align: 128, offset: 256)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 128, elements: !691)
!691 = !{!131, !382}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !685, file: !18, line: 520, baseType: !693, size: 4096, align: 128, offset: 384)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 4096, elements: !694)
!694 = !{!382, !83}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !685, file: !18, line: 521, baseType: !696, size: 6144, align: 128, offset: 4480)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 6144, elements: !697)
!697 = !{!698, !76}
!698 = !DISubrange(count: 24)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !17, file: !18, line: 732, baseType: !700, size: 82688, offset: 130944)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 525, size: 82688, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !729, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !747, !750, !754, !755, !756, !761, !762, !765, !766, !767, !768, !769, !770, !771, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !831, !862, !863, !864, !865, !866, !867, !868, !869, !870, !873, !874, !875, !878, !881, !883, !886, !888, !889}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !700, file: !18, line: 527, baseType: !13, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !700, file: !18, line: 530, baseType: !13, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !700, file: !18, line: 531, baseType: !13, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !700, file: !18, line: 532, baseType: !13, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !700, file: !18, line: 535, baseType: !13, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !700, file: !18, line: 536, baseType: !13, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !700, file: !18, line: 537, baseType: !13, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !700, file: !18, line: 538, baseType: !13, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !700, file: !18, line: 539, baseType: !13, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !700, file: !18, line: 542, baseType: !13, size: 32, offset: 288)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !700, file: !18, line: 543, baseType: !13, size: 32, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !700, file: !18, line: 544, baseType: !13, size: 32, offset: 352)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !700, file: !18, line: 545, baseType: !13, size: 32, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !700, file: !18, line: 546, baseType: !13, size: 32, offset: 416)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !700, file: !18, line: 547, baseType: !13, size: 32, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !700, file: !18, line: 548, baseType: !13, size: 32, offset: 480)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !700, file: !18, line: 549, baseType: !13, size: 32, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !700, file: !18, line: 551, baseType: !13, size: 32, offset: 544)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !700, file: !18, line: 554, baseType: !129, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !700, file: !18, line: 555, baseType: !129, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !700, file: !18, line: 558, baseType: !129, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !700, file: !18, line: 559, baseType: !129, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !700, file: !18, line: 561, baseType: !129, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !700, file: !18, line: 562, baseType: !129, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !700, file: !18, line: 565, baseType: !25, size: 32, offset: 960)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !700, file: !18, line: 566, baseType: !728, size: 128, offset: 992)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !381)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !700, file: !18, line: 567, baseType: !730, size: 512, offset: 1120)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !75)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !700, file: !18, line: 568, baseType: !25, size: 32, offset: 1632)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !700, file: !18, line: 569, baseType: !25, size: 32, offset: 1664)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !700, file: !18, line: 570, baseType: !13, size: 32, offset: 1696)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !700, file: !18, line: 571, baseType: !13, size: 32, offset: 1728)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !700, file: !18, line: 572, baseType: !13, size: 32, offset: 1760)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !700, file: !18, line: 573, baseType: !13, size: 32, offset: 1792)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !700, file: !18, line: 574, baseType: !13, size: 32, offset: 1824)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !700, file: !18, line: 575, baseType: !13, size: 32, offset: 1856)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !700, file: !18, line: 576, baseType: !13, size: 32, offset: 1888)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !700, file: !18, line: 577, baseType: !13, size: 32, offset: 1920)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !700, file: !18, line: 578, baseType: !13, size: 32, offset: 1952)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !18, line: 585, baseType: !569, size: 64, offset: 1984)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !700, file: !18, line: 586, baseType: !221, size: 64, offset: 2048)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !700, file: !18, line: 587, baseType: !569, size: 64, offset: 2112)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !700, file: !18, line: 588, baseType: !746, size: 64, offset: 2176)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !700, file: !18, line: 589, baseType: !748, size: 64, offset: 2240)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 64, elements: !455)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !700, file: !18, line: 591, baseType: !751, size: 64, offset: 2304)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !753)
!753 = !{!698}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !700, file: !18, line: 592, baseType: !569, size: 64, offset: 2368)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !700, file: !18, line: 593, baseType: !575, size: 128, offset: 2432)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !700, file: !18, line: 594, baseType: !757, size: 128, offset: 2560)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !130)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !760)
!760 = !{!456, !131}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !700, file: !18, line: 595, baseType: !591, size: 128, offset: 2688)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !700, file: !18, line: 596, baseType: !763, size: 4096, offset: 2816)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4096, elements: !764)
!764 = !{!131, !472}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !700, file: !18, line: 597, baseType: !569, size: 64, offset: 6912)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !700, file: !18, line: 598, baseType: !569, size: 64, offset: 6976)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !700, file: !18, line: 599, baseType: !404, size: 64, offset: 7040)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !700, file: !18, line: 603, baseType: !564, size: 1024, offset: 7104)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !700, file: !18, line: 606, baseType: !13, size: 32, offset: 8128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !700, file: !18, line: 607, baseType: !13, size: 32, offset: 8160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !700, file: !18, line: 608, baseType: !772, size: 32, align: 32, offset: 8192)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !381)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !700, file: !18, line: 609, baseType: !13, size: 32, offset: 8224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !700, file: !18, line: 611, baseType: !13, size: 32, offset: 8256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !700, file: !18, line: 612, baseType: !13, size: 32, offset: 8288)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !700, file: !18, line: 614, baseType: !13, size: 32, offset: 8320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !700, file: !18, line: 615, baseType: !13, size: 32, offset: 8352)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !700, file: !18, line: 621, baseType: !13, size: 32, offset: 8384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !700, file: !18, line: 624, baseType: !13, size: 32, offset: 8416)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !700, file: !18, line: 626, baseType: !13, size: 32, offset: 8448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !700, file: !18, line: 627, baseType: !13, size: 32, offset: 8480)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !700, file: !18, line: 671, baseType: !783, size: 60672, offset: 8576)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !18, line: 629, size: 60672, elements: !784)
!784 = !{!785, !789, !793, !795, !796, !799, !803, !805, !806, !807, !808, !809, !812, !816, !819, !820, !821, !822, !823, !826, !828, !830}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !783, file: !18, line: 634, baseType: !786, size: 3072, align: 128)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3072, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !783, file: !18, line: 635, baseType: !790, size: 6912, align: 128, offset: 3072)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 6912, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 864)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !783, file: !18, line: 638, baseType: !794, size: 2048, align: 128, offset: 9984)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2048, elements: !274)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !783, file: !18, line: 639, baseType: !794, size: 2048, align: 128, offset: 12032)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !783, file: !18, line: 640, baseType: !797, size: 3072, align: 128, offset: 14080)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 3072, elements: !798)
!798 = !{!473, !83}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !783, file: !18, line: 641, baseType: !800, size: 3840, align: 128, offset: 17152)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 3840, elements: !801)
!801 = !{!802, !76}
!802 = !DISubrange(count: 15)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !783, file: !18, line: 642, baseType: !804, size: 128, offset: 20992)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !381)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !783, file: !18, line: 643, baseType: !804, size: 128, offset: 21120)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !783, file: !18, line: 644, baseType: !13, size: 32, offset: 21248)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !783, file: !18, line: 645, baseType: !13, size: 32, offset: 21280)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !783, file: !18, line: 648, baseType: !693, size: 4096, align: 128, offset: 21376)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !783, file: !18, line: 649, baseType: !810, size: 4096, align: 128, offset: 25472)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 4096, elements: !811)
!811 = !{!76, !76}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !783, file: !18, line: 652, baseType: !813, size: 576, align: 128, offset: 29568)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 576, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 9)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !783, file: !18, line: 653, baseType: !817, size: 1024, align: 128, offset: 30208)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !818)
!818 = !{!472}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !783, file: !18, line: 656, baseType: !553, size: 192, offset: 31232)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !783, file: !18, line: 658, baseType: !553, size: 192, offset: 31424)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !783, file: !18, line: 661, baseType: !553, size: 192, offset: 31616)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !783, file: !18, line: 664, baseType: !129, size: 64, offset: 31808)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !783, file: !18, line: 665, baseType: !824, size: 24576, offset: 31872)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 24576, elements: !825)
!825 = !{!131, !472, !372}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !783, file: !18, line: 666, baseType: !827, size: 2048, offset: 56448)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2048, elements: !818)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !783, file: !18, line: 667, baseType: !829, size: 2048, offset: 58496)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 2048, elements: !442)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !783, file: !18, line: 670, baseType: !545, size: 96, offset: 60544)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !700, file: !18, line: 704, baseType: !832, size: 6144, offset: 69248)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !18, line: 674, size: 6144, elements: !833)
!833 = !{!834, !838, !842, !845, !848, !850, !851, !854, !856, !857, !858, !859, !860, !861}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !832, file: !18, line: 677, baseType: !835, size: 320, align: 64)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 320, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 40)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !832, file: !18, line: 680, baseType: !839, size: 384, align: 128, offset: 384)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 384, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 48)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !832, file: !18, line: 683, baseType: !843, size: 640, align: 32, offset: 768)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 640, elements: !844)
!844 = !{!131, !837}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !832, file: !18, line: 686, baseType: !846, size: 2560, align: 128, offset: 1408)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 2560, elements: !847)
!847 = !{!131, !837, !131}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !832, file: !18, line: 687, baseType: !849, size: 1280, align: 64, offset: 3968)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1280, elements: !847)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !832, file: !18, line: 690, baseType: !835, size: 320, align: 32, offset: 5248)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !832, file: !18, line: 692, baseType: !852, size: 256, align: 32, offset: 5568)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 256, elements: !853)
!853 = !{!131, !382, !131}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !832, file: !18, line: 693, baseType: !855, size: 64, align: 32, offset: 5824)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 64, elements: !691)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !832, file: !18, line: 694, baseType: !13, size: 32, offset: 5888)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !832, file: !18, line: 695, baseType: !577, size: 32, align: 32, offset: 5920)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !832, file: !18, line: 698, baseType: !13, size: 32, offset: 5952)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !832, file: !18, line: 699, baseType: !13, size: 32, offset: 5984)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !832, file: !18, line: 702, baseType: !13, size: 32, offset: 6016)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !832, file: !18, line: 703, baseType: !13, size: 32, offset: 6048)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !700, file: !18, line: 707, baseType: !13, size: 32, offset: 75392)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !700, file: !18, line: 708, baseType: !13, size: 32, offset: 75424)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !700, file: !18, line: 709, baseType: !13, size: 32, offset: 75456)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !700, file: !18, line: 710, baseType: !13, size: 32, offset: 75488)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !700, file: !18, line: 711, baseType: !13, size: 32, offset: 75520)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !700, file: !18, line: 712, baseType: !13, size: 32, offset: 75552)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !700, file: !18, line: 713, baseType: !13, size: 32, offset: 75584)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !700, file: !18, line: 714, baseType: !13, size: 32, offset: 75616)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !700, file: !18, line: 717, baseType: !871, size: 128, offset: 75648)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !872)
!872 = !{!131, !131}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !700, file: !18, line: 718, baseType: !13, size: 32, offset: 75776)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !700, file: !18, line: 719, baseType: !13, size: 32, offset: 75808)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !700, file: !18, line: 722, baseType: !876, size: 4096, offset: 75840)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 4096, elements: !877)
!877 = !{!131, !472, !382}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !700, file: !18, line: 723, baseType: !879, size: 64, offset: 79936)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 64, elements: !381)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !700, file: !18, line: 724, baseType: !882, size: 2048, offset: 80000)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 2048, elements: !877)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !700, file: !18, line: 725, baseType: !884, size: 64, offset: 82048)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 32, elements: !381)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !700, file: !18, line: 728, baseType: !887, size: 144, offset: 82112)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 144, elements: !602)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !700, file: !18, line: 729, baseType: !13, size: 32, offset: 82272)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !700, file: !18, line: 730, baseType: !890, size: 272, offset: 82304)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 272, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 34)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !17, file: !18, line: 735, baseType: !894, size: 64, offset: 213632)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !18, line: 379, baseType: !896)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !18, line: 379, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !17, file: !18, line: 793, baseType: !898, size: 29504, offset: 213696)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 738, size: 29504, elements: !899)
!899 = !{!900, !927, !931, !933, !935, !936, !937, !938, !939, !940, !941, !942, !945, !947, !948, !951, !953, !955, !956, !957}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !898, file: !18, line: 764, baseType: !901, size: 5632)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !18, line: 741, size: 5632, elements: !902)
!902 = !{!903, !904, !905, !906, !908, !909, !910, !911, !912, !914, !917, !919, !923, !924, !926}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !901, file: !18, line: 744, baseType: !13, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !901, file: !18, line: 746, baseType: !13, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !901, file: !18, line: 748, baseType: !13, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !901, file: !18, line: 750, baseType: !907, size: 608, offset: 96)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 608, elements: !676)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !901, file: !18, line: 751, baseType: !13, size: 32, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !901, file: !18, line: 752, baseType: !13, size: 32, offset: 736)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !901, file: !18, line: 753, baseType: !13, size: 32, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !901, file: !18, line: 754, baseType: !129, size: 64, offset: 800)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !901, file: !18, line: 755, baseType: !913, size: 2048, offset: 864)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !764)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !901, file: !18, line: 756, baseType: !915, size: 544, offset: 2912)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 544, elements: !916)
!916 = !{!582}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !901, file: !18, line: 757, baseType: !918, size: 192, offset: 3456)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !371)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !901, file: !18, line: 758, baseType: !920, size: 1664, offset: 3648)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1664, elements: !921)
!921 = !{!382, !922}
!922 = !DISubrange(count: 13)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !901, file: !18, line: 760, baseType: !129, size: 64, offset: 5312)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !901, file: !18, line: 762, baseType: !925, size: 192, offset: 5376)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 192, elements: !546)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !901, file: !18, line: 763, baseType: !628, size: 64, offset: 5568)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !898, file: !18, line: 769, baseType: !928, size: 160, offset: 5632)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 5)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !898, file: !18, line: 770, baseType: !932, size: 320, offset: 5824)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 320, elements: !929)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !898, file: !18, line: 771, baseType: !934, size: 320, offset: 6144)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 320, elements: !929)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !898, file: !18, line: 772, baseType: !915, size: 544, offset: 6464)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !898, file: !18, line: 774, baseType: !932, size: 320, offset: 7040)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !898, file: !18, line: 775, baseType: !934, size: 320, offset: 7360)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !898, file: !18, line: 776, baseType: !934, size: 320, offset: 7680)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !898, file: !18, line: 777, baseType: !934, size: 320, offset: 8000)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !898, file: !18, line: 778, baseType: !934, size: 320, offset: 8320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !898, file: !18, line: 779, baseType: !934, size: 320, offset: 8640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !898, file: !18, line: 781, baseType: !943, size: 6080, offset: 8960)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 6080, elements: !944)
!944 = !{!930, !677}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !898, file: !18, line: 782, baseType: !946, size: 2176, offset: 15040)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 2176, elements: !581)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !898, file: !18, line: 783, baseType: !666, size: 128, offset: 17216)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !898, file: !18, line: 784, baseType: !949, size: 8192, offset: 17344)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 8192, elements: !950)
!950 = !{!131, !131, !472}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !898, file: !18, line: 785, baseType: !952, size: 384, offset: 25536)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 384, elements: !371)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !898, file: !18, line: 786, baseType: !954, size: 3328, offset: 25920)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 3328, elements: !921)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !898, file: !18, line: 788, baseType: !129, size: 64, offset: 29248)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !898, file: !18, line: 789, baseType: !129, size: 64, offset: 29312)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !898, file: !18, line: 791, baseType: !545, size: 96, offset: 29376)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !17, file: !18, line: 795, baseType: !959, size: 4096, align: 128, offset: 243200)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 4096, elements: !960)
!960 = !{!131, !83}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !17, file: !18, line: 796, baseType: !962, size: 2048, align: 128, offset: 247296)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2048, elements: !960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !17, file: !18, line: 797, baseType: !964, size: 64, offset: 249344)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !130)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !17, file: !18, line: 800, baseType: !89, size: 64, offset: 249408)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !17, file: !18, line: 801, baseType: !967, size: 384, offset: 249472)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !968)
!968 = !{!131, !473}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !17, file: !18, line: 802, baseType: !970, size: 128, offset: 249856)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 128, elements: !130)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !973)
!973 = !{!131, !382, !382}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !17, file: !18, line: 805, baseType: !975, size: 448, offset: 249984)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 448, elements: !981)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !977, line: 27, baseType: !978)
!977 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !221}
!981 = !{!982}
!982 = !DISubrange(count: 7)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !17, file: !18, line: 806, baseType: !975, size: 448, offset: 250432)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !17, file: !18, line: 807, baseType: !985, size: 768, offset: 250880)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 768, elements: !990)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !977, line: 28, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !221, !221}
!990 = !{!991}
!991 = !DISubrange(count: 12)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !17, file: !18, line: 808, baseType: !993, size: 768, offset: 251648)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 768, elements: !990)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !17, file: !18, line: 809, baseType: !995, size: 64, offset: 252416)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !977, line: 29, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !221, !221, !13, !13}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !17, file: !18, line: 811, baseType: !1000, size: 8448, offset: 252480)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1001, line: 110, baseType: !1002)
!1001 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1001, line: 63, size: 8448, elements: !1003)
!1003 = !{!1004, !1010, !1011, !1012, !1013, !1015, !1016, !1017, !1018, !1024, !1030, !1031, !1035, !1040, !1041, !1047, !1051, !1052, !1053, !1054, !1055, !1060, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1002, file: !1001, line: 65, baseType: !1005, size: 448)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 448, elements: !981)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1001, line: 26, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!13, !221, !13, !221, !13}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1002, file: !1001, line: 66, baseType: !1005, size: 448, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1002, file: !1001, line: 67, baseType: !1005, size: 448, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1002, file: !1001, line: 68, baseType: !1005, size: 448, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1002, file: !1001, line: 69, baseType: !1014, size: 256, offset: 1792)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 256, elements: !381)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1002, file: !1001, line: 70, baseType: !1005, size: 448, offset: 2048)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1002, file: !1001, line: 71, baseType: !1005, size: 448, offset: 2496)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1002, file: !1001, line: 72, baseType: !1005, size: 448, offset: 2944)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1002, file: !1001, line: 73, baseType: !1019, size: 448, offset: 3392)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 448, elements: !981)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1001, line: 27, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !221, !221, !221, !221, !13, !589}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1002, file: !1001, line: 74, baseType: !1025, size: 448, offset: 3840)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 448, elements: !981)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1001, line: 28, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !221, !221, !221, !221, !221, !13, !589}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1002, file: !1001, line: 75, baseType: !1005, size: 448, offset: 4288)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1002, file: !1001, line: 76, baseType: !1032, size: 64, offset: 4736)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!13, !221, !13, !221, !13, !589}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1002, file: !1001, line: 78, baseType: !1036, size: 256, offset: 4800)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 256, elements: !381)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!620, !221, !13}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1002, file: !1001, line: 79, baseType: !1036, size: 256, offset: 5056)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1002, file: !1001, line: 81, baseType: !1042, size: 64, offset: 5312)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !369, !13, !369, !13, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !381)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1002, file: !1001, line: 83, baseType: !1048, size: 64, offset: 5376)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!125, !1045, !1045, !13}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1002, file: !1001, line: 86, baseType: !1019, size: 448, offset: 5440)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1002, file: !1001, line: 87, baseType: !1025, size: 448, offset: 5888)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1002, file: !1001, line: 88, baseType: !1019, size: 448, offset: 6336)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1002, file: !1001, line: 89, baseType: !1025, size: 448, offset: 6784)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1002, file: !1001, line: 93, baseType: !1056, size: 448, offset: 7232)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 448, elements: !981)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!13, !589, !404, !13, !404, !746, !13, !13}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1002, file: !1001, line: 98, baseType: !1061, size: 64, offset: 7680)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !221, !221, !589}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1002, file: !1001, line: 99, baseType: !1061, size: 64, offset: 7744)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1002, file: !1001, line: 100, baseType: !1061, size: 64, offset: 7808)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1002, file: !1001, line: 101, baseType: !1061, size: 64, offset: 7872)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1002, file: !1001, line: 102, baseType: !1061, size: 64, offset: 7936)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1002, file: !1001, line: 103, baseType: !1061, size: 64, offset: 8000)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1002, file: !1001, line: 104, baseType: !1061, size: 64, offset: 8064)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1002, file: !1001, line: 105, baseType: !1061, size: 64, offset: 8128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1002, file: !1001, line: 106, baseType: !1061, size: 64, offset: 8192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1002, file: !1001, line: 107, baseType: !1061, size: 64, offset: 8256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1002, file: !1001, line: 108, baseType: !1061, size: 64, offset: 8320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1002, file: !1001, line: 109, baseType: !1061, size: 64, offset: 8384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !17, file: !18, line: 812, baseType: !1076, size: 2368, offset: 260928)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !446, line: 111, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 58, size: 2368, elements: !1078)
!1078 = !{!1079, !1086, !1090, !1094, !1101, !1106, !1107, !1111, !1115, !1116, !1120, !1128, !1132, !1136, !1137, !1141, !1145, !1149, !1150, !1151, !1152, !1157}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1077, file: !446, line: 60, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !221, !13, !1083, !13, !13, !13, !13, !13, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1077, file: !446, line: 65, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!221, !221, !589, !1083, !13, !13, !13, !13, !13, !1084}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1077, file: !446, line: 71, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !221, !13, !221, !13, !13, !13, !13, !13}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1077, file: !446, line: 75, baseType: !1095, size: 640, offset: 192)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, size: 640, elements: !1099)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !221, !13, !221, !13, !221, !13, !13}
!1099 = !{!1100}
!1100 = !DISubrange(count: 10)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1077, file: !446, line: 78, baseType: !1102, size: 448, offset: 832)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 448, elements: !981)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !221, !13, !221, !13, !13}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1077, file: !446, line: 79, baseType: !1103, size: 64, offset: 1280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1077, file: !446, line: 81, baseType: !1108, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !221, !13, !221, !13, !13, !13}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1077, file: !446, line: 84, baseType: !1112, size: 64, offset: 1408)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !221, !221, !221, !221, !13, !13, !13, !746}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1077, file: !446, line: 88, baseType: !1103, size: 64, offset: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1077, file: !446, line: 91, baseType: !1117, size: 64, offset: 1536)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !221, !13, !13}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1077, file: !446, line: 93, baseType: !1121, size: 64, offset: 1600)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!89, !89, !1124, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1127, line: 18, baseType: !622)
!1127 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1077, file: !446, line: 94, baseType: !1129, size: 64, offset: 1664)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !89, !13}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1077, file: !446, line: 97, baseType: !1133, size: 64, offset: 1728)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !404, !221, !13}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1077, file: !446, line: 98, baseType: !1133, size: 64, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1077, file: !446, line: 99, baseType: !1138, size: 64, offset: 1856)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !404, !404, !13}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1077, file: !446, line: 100, baseType: !1142, size: 64, offset: 1920)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !404, !13}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1077, file: !446, line: 102, baseType: !1146, size: 64, offset: 1984)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !221, !221, !221, !221, !221, !13, !13, !13, !13}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1077, file: !446, line: 104, baseType: !464, size: 64, offset: 2048)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1077, file: !446, line: 105, baseType: !464, size: 64, offset: 2112)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1077, file: !446, line: 106, baseType: !464, size: 64, offset: 2176)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1077, file: !446, line: 107, baseType: !1153, size: 64, offset: 2240)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !14, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1077, file: !446, line: 109, baseType: !1158, size: 64, offset: 2304)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !589, !404, !404, !404, !404, !13}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !17, file: !18, line: 813, baseType: !1162, size: 960, offset: 263296)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1163, line: 115, baseType: !1164)
!1163 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 89, size: 960, elements: !1165)
!1165 = !{!1166, !1170, !1174, !1179, !1180, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1196, !1200, !1204}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1164, file: !1163, line: 94, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !746, !221, !221}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1164, file: !1163, line: 95, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !221, !746}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1164, file: !1163, line: 97, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1178, !221, !221}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1164, file: !1163, line: 98, baseType: !1167, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1164, file: !1163, line: 99, baseType: !1181, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !221, !1178}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1164, file: !1163, line: 100, baseType: !1171, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1164, file: !1163, line: 102, baseType: !1175, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1164, file: !1163, line: 103, baseType: !1181, size: 64, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1164, file: !1163, line: 104, baseType: !1171, size: 64, offset: 512)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1164, file: !1163, line: 106, baseType: !1167, size: 64, offset: 576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1164, file: !1163, line: 107, baseType: !1171, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1164, file: !1163, line: 109, baseType: !1191, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1194, !221, !221}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 1024, elements: !82)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1164, file: !1163, line: 110, baseType: !1197, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !221, !1194}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1164, file: !1163, line: 112, baseType: !1201, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !746}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1164, file: !1163, line: 113, baseType: !1201, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !17, file: !18, line: 814, baseType: !1206, size: 384, offset: 264256)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1163, line: 126, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 117, size: 384, elements: !1208)
!1208 = !{!1209, !1213, !1214, !1218, !1219, !1223}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1207, file: !1163, line: 119, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !746, !746}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1207, file: !1163, line: 120, baseType: !1210, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1207, file: !1163, line: 121, baseType: !1215, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!13, !746, !369, !221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1207, file: !1163, line: 122, baseType: !1215, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1207, file: !1163, line: 123, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!13, !746, !369, !221, !746}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1207, file: !1163, line: 124, baseType: !1224, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !746, !746, !221}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !17, file: !18, line: 815, baseType: !1228, size: 1408, offset: 264640)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1229, line: 44, baseType: !1230)
!1229 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1229, line: 26, size: 1408, elements: !1231)
!1231 = !{!1232, !1236, !1237, !1241, !1242, !1246, !1250, !1251, !1256, !1260, !1261, !1262, !1264}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1230, file: !1229, line: 28, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!13, !746, !404, !404}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1230, file: !1229, line: 29, baseType: !1233, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1230, file: !1229, line: 30, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!13, !746, !13, !13}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1230, file: !1229, line: 31, baseType: !1238, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1230, file: !1229, line: 33, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !746, !385, !13}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1230, file: !1229, line: 34, baseType: !1247, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !746, !379, !13}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1230, file: !1229, line: 35, baseType: !1247, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1230, file: !1229, line: 37, baseType: !1252, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !746, !1255, !404, !13}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1230, file: !1229, line: 39, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!13, !746}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1230, file: !1229, line: 40, baseType: !1257, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1230, file: !1229, line: 41, baseType: !1257, size: 64, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1230, file: !1229, line: 42, baseType: !1263, size: 384, offset: 704)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 384, elements: !371)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1230, file: !1229, line: 43, baseType: !1265, size: 320, offset: 1088)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 320, elements: !929)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!13, !746, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !226, line: 63, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 58, size: 416, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1271, file: !226, line: 60, baseType: !13, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1271, file: !226, line: 61, baseType: !688, size: 256, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1271, file: !226, line: 62, baseType: !69, size: 128, offset: 288)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !17, file: !18, line: 816, baseType: !1277, size: 576, offset: 266048)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !514, line: 170, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 161, size: 576, elements: !1279)
!1279 = !{!1280, !1286, !1287, !1293, !1294}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1278, file: !514, line: 163, baseType: !1281, size: 128)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 128, elements: !130)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !514, line: 159, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !221, !13, !13, !13, !569}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1278, file: !514, line: 164, baseType: !1281, size: 128, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1278, file: !514, line: 165, baseType: !1288, size: 128, offset: 256)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 128, elements: !130)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !514, line: 160, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !221, !13, !13, !13}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1278, file: !514, line: 166, baseType: !1288, size: 128, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1278, file: !514, line: 167, baseType: !1295, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !221, !1298, !1299, !1302, !13, !13}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 1280, elements: !1301)
!1301 = !{!837, !131}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !1304)
!1304 = !{!382, !382}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !17, file: !18, line: 821, baseType: !1306, size: 64, offset: 266624)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !18, line: 377, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !18, line: 366, size: 960, elements: !1309)
!1309 = !{!1310, !1312, !1313, !1314, !1315, !1316, !1317, !1327, !1328}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1308, file: !18, line: 368, baseType: !1311, size: 8)
!1311 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1308, file: !18, line: 369, baseType: !70, size: 8, offset: 8)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1308, file: !18, line: 370, baseType: !70, size: 8, offset: 16)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1308, file: !18, line: 371, baseType: !13, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1308, file: !18, line: 372, baseType: !13, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1308, file: !18, line: 373, baseType: !512, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1308, file: !18, line: 374, baseType: !1318, size: 256, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !514, line: 157, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 149, size: 256, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1319, file: !514, line: 151, baseType: !511, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1319, file: !514, line: 152, baseType: !13, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1319, file: !514, line: 153, baseType: !13, size: 32, offset: 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1319, file: !514, line: 154, baseType: !13, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1319, file: !514, line: 155, baseType: !13, size: 32, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1319, file: !514, line: 156, baseType: !13, size: 32, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !18, line: 375, baseType: !1318, size: 256, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1308, file: !18, line: 376, baseType: !1318, size: 256, offset: 704)
!1329 = !{!1330, !1331, !1332, !1333, !1335, !1336}
!1330 = !DILocalVariable(name: "h", arg: 1, scope: !10, file: !1, line: 127, type: !14)
!1331 = !DILocalVariable(name: "i_slicetype_length", arg: 2, scope: !10, file: !1, line: 127, type: !13)
!1332 = !DILocalVariable(name: "look", scope: !10, file: !1, line: 129, type: !1306)
!1333 = !DILocalVariable(name: "i", scope: !1334, file: !1, line: 131, type: !13)
!1334 = distinct !DILexicalBlock(scope: !10, file: !1, line: 131, column: 5)
!1335 = !DILocalVariable(name: "look_h", scope: !10, file: !1, line: 148, type: !14)
!1336 = !DILabel(scope: !10, name: "fail", file: !1, line: 161)
!1337 = !DILocation(line: 0, scope: !10)
!1338 = !DILocation(line: 130, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 130, column: 5)
!1340 = distinct !DILexicalBlock(scope: !10, file: !1, line: 130, column: 5)
!1341 = !DILocation(line: 130, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 130, column: 5)
!1343 = !DILocation(line: 130, column: 5, scope: !1340)
!1344 = !DILocation(line: 0, scope: !1334)
!1345 = !DILocation(line: 131, column: 34, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 131, column: 5)
!1347 = !DILocation(line: 131, column: 23, scope: !1346)
!1348 = !DILocation(line: 131, column: 5, scope: !1334)
!1349 = !DILocation(line: 134, column: 40, scope: !10)
!1350 = !DILocation(line: 134, column: 29, scope: !10)
!1351 = !DILocation(line: 134, column: 11, scope: !10)
!1352 = !DILocation(line: 134, column: 27, scope: !10)
!1353 = !DILocation(line: 135, column: 45, scope: !10)
!1354 = !DILocation(line: 135, column: 33, scope: !10)
!1355 = !DILocation(line: 135, column: 55, scope: !10)
!1356 = !DILocation(line: 132, column: 9, scope: !1346)
!1357 = !DILocation(line: 132, column: 23, scope: !1346)
!1358 = !DILocation(line: 132, column: 33, scope: !1346)
!1359 = !DILocation(line: 131, column: 46, scope: !1346)
!1360 = distinct !{!1360, !1348, !1361}
!1361 = !DILocation(line: 132, column: 35, scope: !1334)
!1362 = !DILocation(line: 135, column: 71, scope: !10)
!1363 = !DILocation(line: 135, column: 59, scope: !10)
!1364 = !DILocation(line: 135, column: 89, scope: !10)
!1365 = !DILocation(line: 135, column: 104, scope: !10)
!1366 = !DILocation(line: 135, column: 92, scope: !10)
!1367 = !DILocation(line: 136, column: 32, scope: !10)
!1368 = !DILocation(line: 136, column: 48, scope: !10)
!1369 = !DILocation(line: 136, column: 35, scope: !10)
!1370 = !DILocation(line: 135, column: 32, scope: !10)
!1371 = !DILocation(line: 135, column: 11, scope: !10)
!1372 = !DILocation(line: 135, column: 30, scope: !10)
!1373 = !DILocation(line: 137, column: 11, scope: !10)
!1374 = !DILocation(line: 137, column: 30, scope: !10)
!1375 = !DILocation(line: 140, column: 44, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !10, file: !1, line: 140, column: 9)
!1377 = !DILocation(line: 140, column: 60, scope: !1376)
!1378 = !DILocation(line: 140, column: 76, scope: !1376)
!1379 = !DILocation(line: 140, column: 9, scope: !1376)
!1380 = !DILocation(line: 140, column: 81, scope: !1376)
!1381 = !DILocation(line: 141, column: 44, scope: !1376)
!1382 = !DILocation(line: 141, column: 60, scope: !1376)
!1383 = !DILocation(line: 141, column: 67, scope: !1376)
!1384 = !DILocation(line: 141, column: 9, scope: !1376)
!1385 = !DILocation(line: 141, column: 72, scope: !1376)
!1386 = !DILocation(line: 142, column: 44, scope: !1376)
!1387 = !DILocation(line: 142, column: 61, scope: !1376)
!1388 = !DILocation(line: 142, column: 68, scope: !1376)
!1389 = !DILocation(line: 142, column: 9, scope: !1376)
!1390 = !DILocation(line: 140, column: 9, scope: !10)
!1391 = !DILocation(line: 145, column: 19, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !10, file: !1, line: 145, column: 9)
!1393 = !DILocation(line: 145, column: 10, scope: !1392)
!1394 = !DILocation(line: 145, column: 9, scope: !10)
!1395 = !DILocation(line: 148, column: 25, scope: !10)
!1396 = !DILocation(line: 148, column: 41, scope: !10)
!1397 = !DILocation(line: 148, column: 22, scope: !10)
!1398 = !DILocation(line: 149, column: 15, scope: !10)
!1399 = !DILocation(line: 150, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !10, file: !1, line: 150, column: 9)
!1401 = !DILocation(line: 150, column: 9, scope: !10)
!1402 = !DILocation(line: 153, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !10, file: !1, line: 153, column: 9)
!1404 = !DILocation(line: 153, column: 54, scope: !1403)
!1405 = !DILocation(line: 153, column: 9, scope: !10)
!1406 = !DILocation(line: 158, column: 11, scope: !10)
!1407 = !DILocation(line: 158, column: 27, scope: !10)
!1408 = !DILocation(line: 160, column: 5, scope: !10)
!1409 = !DILocation(line: 161, column: 1, scope: !10)
!1410 = !DILocation(line: 162, column: 5, scope: !10)
!1411 = !DILocation(line: 163, column: 5, scope: !10)
!1412 = !DILocation(line: 164, column: 1, scope: !10)
!1413 = !DISubprogram(name: "x264_malloc", scope: !18, file: !18, line: 174, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!89, !13}
!1416 = !DISubprogram(name: "x264_synch_frame_list_init", scope: !514, file: !514, line: 205, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!13, !1419, !13}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1420 = !DISubprogram(name: "x264_macroblock_cache_allocate", scope: !1421, file: !1421, line: 269, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!13, !14}
!1424 = !DISubprogram(name: "x264_macroblock_thread_allocate", scope: !1421, file: !1421, line: 273, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DISubprogram(name: "x264_free", scope: !18, file: !18, line: 175, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = distinct !DISubprogram(name: "x264_lookahead_delete", scope: !1, file: !1, line: 166, type: !1427, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !14}
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "h", arg: 1, scope: !1426, file: !1, line: 166, type: !14)
!1431 = !DILocation(line: 0, scope: !1426)
!1432 = !DILocation(line: 168, column: 18, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 168, column: 9)
!1434 = !DILocation(line: 168, column: 9, scope: !1433)
!1435 = !DILocation(line: 168, column: 9, scope: !1426)
!1436 = !DILocation(line: 171, column: 12, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 169, column: 5)
!1438 = !DILocation(line: 171, column: 37, scope: !1437)
!1439 = !DILocation(line: 175, column: 40, scope: !1437)
!1440 = !DILocation(line: 175, column: 56, scope: !1437)
!1441 = !DILocation(line: 175, column: 37, scope: !1437)
!1442 = !DILocation(line: 175, column: 9, scope: !1437)
!1443 = !DILocation(line: 176, column: 57, scope: !1437)
!1444 = !DILocation(line: 176, column: 38, scope: !1437)
!1445 = !DILocation(line: 176, column: 9, scope: !1437)
!1446 = !DILocation(line: 177, column: 39, scope: !1437)
!1447 = !DILocation(line: 177, column: 20, scope: !1437)
!1448 = !DILocation(line: 177, column: 9, scope: !1437)
!1449 = !DILocation(line: 178, column: 5, scope: !1437)
!1450 = !DILocation(line: 179, column: 39, scope: !1426)
!1451 = !DILocation(line: 179, column: 50, scope: !1426)
!1452 = !DILocation(line: 179, column: 5, scope: !1426)
!1453 = !DILocation(line: 180, column: 39, scope: !1426)
!1454 = !DILocation(line: 180, column: 50, scope: !1426)
!1455 = !DILocation(line: 180, column: 5, scope: !1426)
!1456 = !DILocation(line: 181, column: 12, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1426, file: !1, line: 181, column: 9)
!1458 = !DILocation(line: 181, column: 23, scope: !1457)
!1459 = !DILocation(line: 181, column: 9, scope: !1457)
!1460 = !DILocation(line: 181, column: 9, scope: !1426)
!1461 = !DILocation(line: 182, column: 9, scope: !1457)
!1462 = !DILocation(line: 183, column: 39, scope: !1426)
!1463 = !DILocation(line: 183, column: 50, scope: !1426)
!1464 = !DILocation(line: 183, column: 5, scope: !1426)
!1465 = !DILocation(line: 184, column: 19, scope: !1426)
!1466 = !DILocation(line: 184, column: 5, scope: !1426)
!1467 = !DILocation(line: 185, column: 1, scope: !1426)
!1468 = !DISubprogram(name: "x264_macroblock_cache_free", scope: !1421, file: !1421, line: 270, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DISubprogram(name: "x264_macroblock_thread_free", scope: !1421, file: !1421, line: 274, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !14, !13}
!1472 = !DISubprogram(name: "x264_synch_frame_list_delete", scope: !514, file: !514, line: 206, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1419}
!1475 = !DISubprogram(name: "x264_frame_push_unused", scope: !514, file: !514, line: 196, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !14, !512}
!1478 = distinct !DISubprogram(name: "x264_lookahead_put_frame", scope: !1, file: !1, line: 187, type: !1476, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1479)
!1479 = !{!1480, !1481}
!1480 = !DILocalVariable(name: "h", arg: 1, scope: !1478, file: !1, line: 187, type: !14)
!1481 = !DILocalVariable(name: "frame", arg: 2, scope: !1478, file: !1, line: 187, type: !512)
!1482 = !DILocation(line: 0, scope: !1478)
!1483 = !DILocation(line: 189, column: 18, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 189, column: 9)
!1485 = !DILocation(line: 189, column: 9, scope: !1484)
!1486 = !DILocation(line: 0, scope: !1484)
!1487 = !DILocation(line: 193, column: 1, scope: !1478)
!1488 = !DISubprogram(name: "x264_synch_frame_list_push", scope: !514, file: !514, line: 207, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !1419, !512}
!1491 = distinct !DISubprogram(name: "x264_lookahead_is_empty", scope: !1, file: !1, line: 195, type: !1422, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1492)
!1492 = !{!1493, !1494}
!1493 = !DILocalVariable(name: "h", arg: 1, scope: !1491, file: !1, line: 195, type: !14)
!1494 = !DILocalVariable(name: "b_empty", scope: !1491, file: !1, line: 199, type: !13)
!1495 = !DILocation(line: 0, scope: !1491)
!1496 = !DILocation(line: 199, column: 23, scope: !1491)
!1497 = !DILocation(line: 199, column: 39, scope: !1491)
!1498 = !DILocation(line: 199, column: 20, scope: !1491)
!1499 = !DILocation(line: 199, column: 46, scope: !1491)
!1500 = !DILocation(line: 199, column: 70, scope: !1491)
!1501 = !DILocation(line: 199, column: 49, scope: !1491)
!1502 = !DILocation(line: 202, column: 5, scope: !1491)
!1503 = distinct !DISubprogram(name: "x264_lookahead_get_frames", scope: !1, file: !1, line: 218, type: !1427, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1504)
!1504 = !{!1505}
!1505 = !DILocalVariable(name: "h", arg: 1, scope: !1503, file: !1, line: 218, type: !14)
!1506 = !DILocation(line: 0, scope: !1503)
!1507 = !DILocation(line: 220, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 220, column: 9)
!1509 = !DILocation(line: 220, column: 9, scope: !1508)
!1510 = !DILocation(line: 220, column: 9, scope: !1503)
!1511 = !DILocation(line: 223, column: 44, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 221, column: 5)
!1513 = !DILocation(line: 223, column: 9, scope: !1512)
!1514 = distinct !{!1514, !1513, !1515}
!1515 = !DILocation(line: 224, column: 95, scope: !1512)
!1516 = !DILocalVariable(name: "h", arg: 1, scope: !1517, file: !1, line: 205, type: !14)
!1517 = distinct !DISubprogram(name: "x264_lookahead_encoder_shift", scope: !1, file: !1, line: 205, type: !1427, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1518)
!1518 = !{!1516, !1519}
!1519 = !DILocalVariable(name: "i_frames", scope: !1517, file: !1, line: 209, type: !13)
!1520 = !DILocation(line: 0, scope: !1517, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 225, column: 9, scope: !1512)
!1522 = !DILocation(line: 207, column: 24, scope: !1523, inlinedAt: !1521)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 207, column: 9)
!1524 = !DILocation(line: 209, column: 40, scope: !1517, inlinedAt: !1521)
!1525 = !DILocation(line: 209, column: 20, scope: !1517, inlinedAt: !1521)
!1526 = !DILocation(line: 209, column: 49, scope: !1517, inlinedAt: !1521)
!1527 = !DILocation(line: 209, column: 59, scope: !1517, inlinedAt: !1521)
!1528 = !DILocation(line: 210, column: 5, scope: !1517, inlinedAt: !1521)
!1529 = !DILocation(line: 210, column: 20, scope: !1517, inlinedAt: !1521)
!1530 = !DILocation(line: 212, column: 36, scope: !1531, inlinedAt: !1521)
!1531 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 211, column: 5)
!1532 = !DILocation(line: 212, column: 66, scope: !1531, inlinedAt: !1521)
!1533 = !DILocation(line: 212, column: 77, scope: !1531, inlinedAt: !1521)
!1534 = !DILocation(line: 212, column: 83, scope: !1531, inlinedAt: !1521)
!1535 = !DILocation(line: 212, column: 45, scope: !1531, inlinedAt: !1521)
!1536 = !DILocation(line: 212, column: 9, scope: !1531, inlinedAt: !1521)
!1537 = !DILocation(line: 213, column: 12, scope: !1531, inlinedAt: !1521)
!1538 = !DILocation(line: 213, column: 29, scope: !1531, inlinedAt: !1521)
!1539 = !DILocation(line: 213, column: 35, scope: !1531, inlinedAt: !1521)
!1540 = distinct !{!1540, !1528, !1541}
!1541 = !DILocation(line: 214, column: 5, scope: !1517, inlinedAt: !1521)
!1542 = !DILocation(line: 231, column: 16, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 231, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 229, column: 5)
!1545 = !DILocation(line: 231, column: 23, scope: !1543)
!1546 = !DILocation(line: 231, column: 13, scope: !1543)
!1547 = !DILocation(line: 231, column: 34, scope: !1543)
!1548 = !DILocation(line: 231, column: 41, scope: !1543)
!1549 = !DILocation(line: 231, column: 57, scope: !1543)
!1550 = !DILocation(line: 231, column: 38, scope: !1543)
!1551 = !DILocation(line: 231, column: 13, scope: !1544)
!1552 = !DILocation(line: 234, column: 9, scope: !1544)
!1553 = !DILocation(line: 235, column: 48, scope: !1544)
!1554 = !DILocation(line: 235, column: 59, scope: !1544)
!1555 = !DILocation(line: 235, column: 64, scope: !1544)
!1556 = !DILocation(line: 235, column: 45, scope: !1544)
!1557 = !DILocalVariable(name: "h", arg: 1, scope: !1558, file: !1, line: 57, type: !14)
!1558 = distinct !DISubprogram(name: "x264_lookahead_update_last_nonb", scope: !1, file: !1, line: 57, type: !1476, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1559)
!1559 = !{!1557, !1560}
!1560 = !DILocalVariable(name: "new_nonb", arg: 2, scope: !1558, file: !1, line: 57, type: !512)
!1561 = !DILocation(line: 0, scope: !1558, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 235, column: 9, scope: !1544)
!1563 = !DILocation(line: 59, column: 23, scope: !1564, inlinedAt: !1562)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 59, column: 9)
!1565 = !DILocation(line: 59, column: 9, scope: !1564, inlinedAt: !1562)
!1566 = !DILocation(line: 59, column: 9, scope: !1558, inlinedAt: !1562)
!1567 = !DILocation(line: 60, column: 9, scope: !1564, inlinedAt: !1562)
!1568 = !DILocation(line: 61, column: 8, scope: !1558, inlinedAt: !1562)
!1569 = !DILocation(line: 61, column: 19, scope: !1558, inlinedAt: !1562)
!1570 = !DILocation(line: 61, column: 29, scope: !1558, inlinedAt: !1562)
!1571 = !DILocation(line: 62, column: 15, scope: !1558, inlinedAt: !1562)
!1572 = !DILocation(line: 62, column: 32, scope: !1558, inlinedAt: !1562)
!1573 = !DILocation(line: 236, column: 35, scope: !1544)
!1574 = !DILocation(line: 236, column: 46, scope: !1544)
!1575 = !DILocation(line: 236, column: 68, scope: !1544)
!1576 = !DILocation(line: 236, column: 93, scope: !1544)
!1577 = !DILocation(line: 236, column: 74, scope: !1544)
!1578 = !DILocation(line: 236, column: 102, scope: !1544)
!1579 = !DILocation(line: 236, column: 112, scope: !1544)
!1580 = !DILocalVariable(name: "dst", arg: 1, scope: !1581, file: !1, line: 40, type: !1419)
!1581 = distinct !DISubprogram(name: "x264_lookahead_shift", scope: !1, file: !1, line: 40, type: !1582, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1419, !1419, !13}
!1584 = !{!1580, !1585, !1586, !1587}
!1585 = !DILocalVariable(name: "src", arg: 2, scope: !1581, file: !1, line: 40, type: !1419)
!1586 = !DILocalVariable(name: "count", arg: 3, scope: !1581, file: !1, line: 40, type: !13)
!1587 = !DILocalVariable(name: "i", scope: !1581, file: !1, line: 42, type: !13)
!1588 = !DILocation(line: 0, scope: !1581, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 236, column: 9, scope: !1544)
!1590 = !DILocation(line: 43, column: 5, scope: !1581, inlinedAt: !1589)
!1591 = !DILocation(line: 43, column: 13, scope: !1581, inlinedAt: !1589)
!1592 = !DILocation(line: 47, column: 61, scope: !1593, inlinedAt: !1589)
!1593 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 44, column: 5)
!1594 = !DILocation(line: 47, column: 38, scope: !1593, inlinedAt: !1589)
!1595 = !DILocation(line: 47, column: 14, scope: !1593, inlinedAt: !1589)
!1596 = !DILocation(line: 47, column: 31, scope: !1593, inlinedAt: !1589)
!1597 = !DILocation(line: 47, column: 9, scope: !1593, inlinedAt: !1589)
!1598 = !DILocation(line: 47, column: 36, scope: !1593, inlinedAt: !1589)
!1599 = !DILocation(line: 48, column: 20, scope: !1593, inlinedAt: !1589)
!1600 = distinct !{!1600, !1590, !1601}
!1601 = !DILocation(line: 49, column: 5, scope: !1581, inlinedAt: !1589)
!1602 = !DILocation(line: 239, column: 16, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 239, column: 13)
!1604 = !DILocation(line: 239, column: 27, scope: !1603)
!1605 = !DILocation(line: 239, column: 13, scope: !1603)
!1606 = !DILocation(line: 239, column: 46, scope: !1603)
!1607 = !DILocation(line: 239, column: 49, scope: !1603)
!1608 = !DILocation(line: 240, column: 13, scope: !1603)
!1609 = !DILocation(line: 207, column: 13, scope: !1523, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 242, column: 9, scope: !1544)
!1611 = !DILocation(line: 0, scope: !1517, inlinedAt: !1610)
!1612 = !DILocation(line: 207, column: 30, scope: !1523, inlinedAt: !1610)
!1613 = !DILocation(line: 207, column: 10, scope: !1523, inlinedAt: !1610)
!1614 = !DILocation(line: 207, column: 9, scope: !1517, inlinedAt: !1610)
!1615 = !DILocation(line: 207, column: 24, scope: !1523, inlinedAt: !1610)
!1616 = !DILocation(line: 209, column: 40, scope: !1517, inlinedAt: !1610)
!1617 = !DILocation(line: 209, column: 20, scope: !1517, inlinedAt: !1610)
!1618 = !DILocation(line: 209, column: 49, scope: !1517, inlinedAt: !1610)
!1619 = !DILocation(line: 209, column: 59, scope: !1517, inlinedAt: !1610)
!1620 = !DILocation(line: 210, column: 5, scope: !1517, inlinedAt: !1610)
!1621 = !DILocation(line: 210, column: 20, scope: !1517, inlinedAt: !1610)
!1622 = !DILocation(line: 212, column: 36, scope: !1531, inlinedAt: !1610)
!1623 = !DILocation(line: 212, column: 66, scope: !1531, inlinedAt: !1610)
!1624 = !DILocation(line: 212, column: 77, scope: !1531, inlinedAt: !1610)
!1625 = !DILocation(line: 212, column: 83, scope: !1531, inlinedAt: !1610)
!1626 = !DILocation(line: 212, column: 45, scope: !1531, inlinedAt: !1610)
!1627 = !DILocation(line: 212, column: 9, scope: !1531, inlinedAt: !1610)
!1628 = !DILocation(line: 213, column: 12, scope: !1531, inlinedAt: !1610)
!1629 = !DILocation(line: 213, column: 29, scope: !1531, inlinedAt: !1610)
!1630 = !DILocation(line: 213, column: 35, scope: !1531, inlinedAt: !1610)
!1631 = distinct !{!1631, !1620, !1632}
!1632 = !DILocation(line: 214, column: 5, scope: !1517, inlinedAt: !1610)
!1633 = !DILocation(line: 244, column: 1, scope: !1503)
!1634 = !DISubprogram(name: "x264_slicetype_decide", scope: !1635, file: !1635, line: 31, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DIFile(filename: "x264_src/encoder/analyse.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcc4e1839a8c83d6cd319084cb483d0b")
!1636 = !DISubprogram(name: "x264_slicetype_analyse", scope: !1635, file: !1635, line: 33, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubprogram(name: "x264_frame_push", scope: !514, file: !514, line: 192, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !511, !512}
!1640 = !DISubprogram(name: "x264_frame_shift", scope: !514, file: !514, line: 195, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!512, !511}
