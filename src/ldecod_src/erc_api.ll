; ModuleID = 'ldecod_src/erc_api.c'
source_filename = "ldecod_src/erc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ercSegment_s = type { i16, i16, i8 }

@.str = private unnamed_addr constant [25 x i8] c"ercInit: erc_object_list\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"ercOpen: errorVar\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [29 x i8] c"ercReset: errorVar->segments\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->yCondition\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [40 x i8] c"ercReset: errorVar->prevFrameYCondition\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->uCondition\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->vCondition\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local void @ercInit(ptr nocapture noundef %p_Vid, i32 noundef %pic_sizex, i32 noundef %pic_sizey, i32 noundef %flag) local_unnamed_addr #0 !dbg !124 {
entry:
    #dbg_value(ptr %p_Vid, !1304, !DIExpression(), !1308)
    #dbg_value(i32 %pic_sizex, !1305, !DIExpression(), !1308)
    #dbg_value(i32 %pic_sizey, !1306, !DIExpression(), !1308)
    #dbg_value(i32 %flag, !1307, !DIExpression(), !1308)
  %erc_errorVar = getelementptr inbounds i8, ptr %p_Vid, i64 856504, !dbg !1309
  %0 = load ptr, ptr %erc_errorVar, align 8, !dbg !1309
  tail call void @ercClose(ptr noundef %p_Vid, ptr noundef %0), !dbg !1310
  %mul = mul nsw i32 %pic_sizey, %pic_sizex, !dbg !1311
  %shr = ashr i32 %mul, 6, !dbg !1312
  %conv = sext i32 %shr to i64, !dbg !1313
  %call = tail call noalias ptr @calloc(i64 noundef %conv, i64 noundef 24) #10, !dbg !1314
  %erc_object_list = getelementptr inbounds i8, ptr %p_Vid, i64 856496, !dbg !1315
  store ptr %call, ptr %erc_object_list, align 8, !dbg !1316
  %cmp = icmp eq ptr %call, null, !dbg !1317
  br i1 %cmp, label %if.then, label %if.end, !dbg !1319

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #11, !dbg !1320
  br label %if.end, !dbg !1320

if.end:                                           ; preds = %if.then, %entry
    #dbg_value(ptr null, !1321, !DIExpression(), !1326)
  %call.i = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12, !dbg !1328
    #dbg_value(ptr %call.i, !1321, !DIExpression(), !1326)
  %cmp.i = icmp eq ptr %call.i, null, !dbg !1329
  br i1 %cmp.i, label %if.then.i, label %ercSetErrorConcealment.exit, !dbg !1331

if.then.i:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11, !dbg !1332
  br label %ercSetErrorConcealment.exit, !dbg !1332

ercSetErrorConcealment.exit:                      ; preds = %if.end, %if.then.i
  store i32 0, ptr %call.i, align 8, !dbg !1333
  %yCondition.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !1334
  %prevFrameYCondition.i = getelementptr inbounds i8, ptr %call.i, i64 48, !dbg !1335
  store ptr null, ptr %prevFrameYCondition.i, align 8, !dbg !1336
  %concealment.i = getelementptr inbounds i8, ptr %call.i, i64 64, !dbg !1337
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %yCondition.i, i8 0, i64 36, i1 false), !dbg !1338
  store ptr %call.i, ptr %erc_errorVar, align 8, !dbg !1339
    #dbg_value(ptr %call.i, !1340, !DIExpression(), !1346)
    #dbg_value(i32 %flag, !1345, !DIExpression(), !1346)
  store i32 %flag, ptr %concealment.i, align 8, !dbg !1348
  ret void, !dbg !1350
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @ercClose(ptr nocapture noundef %p_Vid, ptr noundef %errorVar) local_unnamed_addr #1 !dbg !1351 {
entry:
    #dbg_value(ptr %p_Vid, !1355, !DIExpression(), !1357)
    #dbg_value(ptr %errorVar, !1356, !DIExpression(), !1357)
  %cmp.not = icmp eq ptr %errorVar, null, !dbg !1358
  br i1 %cmp.not, label %if.end4, label %if.then, !dbg !1360

if.then:                                          ; preds = %entry
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8, !dbg !1361
  %0 = load ptr, ptr %yCondition, align 8, !dbg !1361
  %cmp1.not = icmp eq ptr %0, null, !dbg !1364
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !1365

if.then2:                                         ; preds = %if.then
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1366
  %1 = load ptr, ptr %segments, align 8, !dbg !1366
  tail call void @free(ptr noundef %1) #11, !dbg !1368
  %2 = load ptr, ptr %yCondition, align 8, !dbg !1369
  tail call void @free(ptr noundef %2) #11, !dbg !1370
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1371
  %3 = load ptr, ptr %uCondition, align 8, !dbg !1371
  tail call void @free(ptr noundef %3) #11, !dbg !1372
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24, !dbg !1373
  %4 = load ptr, ptr %vCondition, align 8, !dbg !1373
  tail call void @free(ptr noundef %4) #11, !dbg !1374
  %prevFrameYCondition = getelementptr inbounds i8, ptr %errorVar, i64 48, !dbg !1375
  %5 = load ptr, ptr %prevFrameYCondition, align 8, !dbg !1375
  tail call void @free(ptr noundef %5) #11, !dbg !1376
  br label %if.end, !dbg !1377

if.end:                                           ; preds = %if.then2, %if.then
  tail call void @free(ptr noundef nonnull %errorVar) #11, !dbg !1378
    #dbg_value(ptr null, !1356, !DIExpression(), !1357)
  br label %if.end4, !dbg !1379

if.end4:                                          ; preds = %if.end, %entry
  %erc_object_list = getelementptr inbounds i8, ptr %p_Vid, i64 856496, !dbg !1380
  %6 = load ptr, ptr %erc_object_list, align 8, !dbg !1380
  %tobool.not = icmp eq ptr %6, null, !dbg !1382
  br i1 %tobool.not, label %if.end8, label %if.then5, !dbg !1383

if.then5:                                         ; preds = %if.end4
  tail call void @free(ptr noundef nonnull %6) #11, !dbg !1384
  store ptr null, ptr %erc_object_list, align 8, !dbg !1386
  br label %if.end8, !dbg !1387

if.end8:                                          ; preds = %if.then5, %if.end4
  ret void, !dbg !1388
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1389 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1396 void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ercOpen() local_unnamed_addr #0 !dbg !1322 {
entry:
    #dbg_value(ptr null, !1321, !DIExpression(), !1401)
  %call = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12, !dbg !1402
    #dbg_value(ptr %call, !1321, !DIExpression(), !1401)
  %cmp = icmp eq ptr %call, null, !dbg !1403
  br i1 %cmp, label %if.then, label %if.end, !dbg !1404

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11, !dbg !1405
  br label %if.end, !dbg !1405

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %call, align 8, !dbg !1406
  %yCondition = getelementptr inbounds i8, ptr %call, i64 8, !dbg !1407
  %prevFrameYCondition = getelementptr inbounds i8, ptr %call, i64 48, !dbg !1408
  store ptr null, ptr %prevFrameYCondition, align 8, !dbg !1409
  %concealment = getelementptr inbounds i8, ptr %call, i64 64, !dbg !1410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %yCondition, i8 0, i64 36, i1 false), !dbg !1411
  store i32 1, ptr %concealment, align 8, !dbg !1412
  ret ptr %call, !dbg !1413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ercSetErrorConcealment(ptr noundef writeonly %errorVar, i32 noundef %value) local_unnamed_addr #4 !dbg !1341 {
entry:
    #dbg_value(ptr %errorVar, !1340, !DIExpression(), !1414)
    #dbg_value(i32 %value, !1345, !DIExpression(), !1414)
  %cmp.not = icmp eq ptr %errorVar, null, !dbg !1415
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1416

if.then:                                          ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1417
  store i32 %value, ptr %concealment, align 8, !dbg !1418
  br label %if.end, !dbg !1419

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1420
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1421 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ercReset(ptr noundef %errorVar, i32 noundef %nOfMBs, i32 noundef %numOfSegments, i32 noundef %picSizeX) local_unnamed_addr #0 !dbg !1424 {
entry:
    #dbg_value(ptr %errorVar, !1428, !DIExpression(), !1437)
    #dbg_value(i32 %nOfMBs, !1429, !DIExpression(), !1437)
    #dbg_value(i32 %numOfSegments, !1430, !DIExpression(), !1437)
    #dbg_value(i32 %picSizeX, !1431, !DIExpression(), !1437)
    #dbg_value(ptr null, !1432, !DIExpression(), !1437)
    #dbg_value(i32 0, !1433, !DIExpression(), !1437)
  %tobool.not = icmp eq ptr %errorVar, null, !dbg !1438
  br i1 %tobool.not, label %if.end105, label %land.lhs.true, !dbg !1439

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1440
  %0 = load i32, ptr %concealment, align 8, !dbg !1440
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1441
  br i1 %tobool1.not, label %if.end105, label %if.then, !dbg !1442

if.then:                                          ; preds = %land.lhs.true
    #dbg_value(ptr null, !1434, !DIExpression(), !1443)
  %1 = load i32, ptr %errorVar, align 8, !dbg !1444
  %cmp.not = icmp eq i32 %1, %nOfMBs, !dbg !1446
  br i1 %cmp.not, label %if.end, label %land.lhs.true3, !dbg !1447

land.lhs.true3:                                   ; preds = %if.then
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8, !dbg !1448
  %2 = load ptr, ptr %yCondition, align 8, !dbg !1448
  %cmp4.not = icmp eq ptr %2, null, !dbg !1449
  br i1 %cmp4.not, label %if.end, label %if.then5, !dbg !1450

if.then5:                                         ; preds = %land.lhs.true3
  tail call void @free(ptr noundef nonnull %2) #11, !dbg !1451
  store ptr null, ptr %yCondition, align 8, !dbg !1453
  %prevFrameYCondition = getelementptr inbounds i8, ptr %errorVar, i64 48, !dbg !1454
  %3 = load ptr, ptr %prevFrameYCondition, align 8, !dbg !1454
  tail call void @free(ptr noundef %3) #11, !dbg !1455
  store ptr null, ptr %prevFrameYCondition, align 8, !dbg !1456
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1457
  %4 = load ptr, ptr %uCondition, align 8, !dbg !1457
  tail call void @free(ptr noundef %4) #11, !dbg !1458
  store ptr null, ptr %uCondition, align 8, !dbg !1459
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24, !dbg !1460
  %5 = load ptr, ptr %vCondition, align 8, !dbg !1460
  tail call void @free(ptr noundef %5) #11, !dbg !1461
  store ptr null, ptr %vCondition, align 8, !dbg !1462
  %segments11 = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1463
  %6 = load ptr, ptr %segments11, align 8, !dbg !1463
  tail call void @free(ptr noundef %6) #11, !dbg !1464
  store ptr null, ptr %segments11, align 8, !dbg !1465
  br label %if.end, !dbg !1466

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  %yCondition13 = getelementptr inbounds i8, ptr %errorVar, i64 8, !dbg !1467
  %7 = load ptr, ptr %yCondition13, align 8, !dbg !1467
  %cmp14 = icmp eq ptr %7, null, !dbg !1469
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !1470

if.then15:                                        ; preds = %if.end
  %conv = sext i32 %numOfSegments to i64, !dbg !1471
  %mul = mul nsw i64 %conv, 6, !dbg !1473
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #12, !dbg !1474
  %segments16 = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1475
  store ptr %call, ptr %segments16, align 8, !dbg !1476
  %cmp18 = icmp eq ptr %call, null, !dbg !1477
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1479

if.then20:                                        ; preds = %if.then15
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11, !dbg !1480
  %.pre = load ptr, ptr %segments16, align 8, !dbg !1481
  br label %if.end21, !dbg !1480

if.end21:                                         ; preds = %if.then20, %if.then15
  %8 = phi ptr [ %.pre, %if.then20 ], [ %call, %if.then15 ], !dbg !1481
    #dbg_value(ptr %8, !1482, !DIExpression(), !1490)
    #dbg_value(i32 0, !1488, !DIExpression(), !1490)
    #dbg_value(i64 %mul, !1489, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1490)
  %sext = mul i64 %conv, 25769803776, !dbg !1492
  %conv.i = ashr exact i64 %sext, 32, !dbg !1492
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %conv.i, i1 false), !dbg !1493
  %nOfSegments = getelementptr inbounds i8, ptr %errorVar, i64 4, !dbg !1494
  store i32 %numOfSegments, ptr %nOfSegments, align 4, !dbg !1495
  %mul26 = shl nsw i32 %nOfMBs, 2, !dbg !1496
  %conv27 = sext i32 %mul26 to i64, !dbg !1497
  %call29 = tail call noalias ptr @malloc(i64 noundef %conv27) #12, !dbg !1498
  store ptr %call29, ptr %yCondition13, align 8, !dbg !1499
  %cmp32 = icmp eq ptr %call29, null, !dbg !1500
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1502

if.then34:                                        ; preds = %if.end21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #11, !dbg !1503
  br label %if.end35, !dbg !1503

if.end35:                                         ; preds = %if.then34, %if.end21
  %call39 = tail call noalias ptr @malloc(i64 noundef %conv27) #12, !dbg !1504
  %prevFrameYCondition40 = getelementptr inbounds i8, ptr %errorVar, i64 48, !dbg !1505
  store ptr %call39, ptr %prevFrameYCondition40, align 8, !dbg !1506
  %cmp42 = icmp eq ptr %call39, null, !dbg !1507
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1509

if.then44:                                        ; preds = %if.end35
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #11, !dbg !1510
  br label %if.end45, !dbg !1510

if.end45:                                         ; preds = %if.then44, %if.end35
  %conv46 = sext i32 %nOfMBs to i64, !dbg !1511
  %call48 = tail call noalias ptr @malloc(i64 noundef %conv46) #12, !dbg !1512
  %uCondition49 = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1513
  store ptr %call48, ptr %uCondition49, align 8, !dbg !1514
  %cmp51 = icmp eq ptr %call48, null, !dbg !1515
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !1517

if.then53:                                        ; preds = %if.end45
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #11, !dbg !1518
  br label %if.end54, !dbg !1518

if.end54:                                         ; preds = %if.then53, %if.end45
  %call57 = tail call noalias ptr @malloc(i64 noundef %conv46) #12, !dbg !1519
  %vCondition58 = getelementptr inbounds i8, ptr %errorVar, i64 24, !dbg !1520
  store ptr %call57, ptr %vCondition58, align 8, !dbg !1521
  %cmp60 = icmp eq ptr %call57, null, !dbg !1522
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1524

if.then62:                                        ; preds = %if.end54
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #11, !dbg !1525
  br label %if.end63, !dbg !1525

if.end63:                                         ; preds = %if.then62, %if.end54
  store i32 %nOfMBs, ptr %errorVar, align 8, !dbg !1526
  %.pre174 = load ptr, ptr %yCondition13, align 8, !dbg !1527
  br label %if.end69, !dbg !1528

if.else:                                          ; preds = %if.end
  %prevFrameYCondition65 = getelementptr inbounds i8, ptr %errorVar, i64 48, !dbg !1529
  %9 = load ptr, ptr %prevFrameYCondition65, align 8, !dbg !1529
    #dbg_value(ptr %9, !1432, !DIExpression(), !1437)
  store ptr %7, ptr %prevFrameYCondition65, align 8, !dbg !1531
  store ptr %9, ptr %yCondition13, align 8, !dbg !1532
  %.pre175 = shl nsw i32 %nOfMBs, 2, !dbg !1533
  %.pre176 = sext i32 %.pre175 to i64, !dbg !1534
  %.pre177 = sext i32 %nOfMBs to i64, !dbg !1536
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.end63
  %conv.i169.pre-phi = phi i64 [ %.pre177, %if.else ], [ %conv46, %if.end63 ], !dbg !1536
  %conv.i168.pre-phi = phi i64 [ %.pre176, %if.else ], [ %conv27, %if.end63 ], !dbg !1534
  %10 = phi ptr [ %9, %if.else ], [ %.pre174, %if.end63 ], !dbg !1527
    #dbg_value(ptr %10, !1482, !DIExpression(), !1538)
    #dbg_value(i32 0, !1488, !DIExpression(), !1538)
    #dbg_value(i32 poison, !1489, !DIExpression(), !1538)
  tail call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 %conv.i168.pre-phi, i1 false), !dbg !1539
  %uCondition75 = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1540
  %11 = load ptr, ptr %uCondition75, align 8, !dbg !1540
    #dbg_value(ptr %11, !1482, !DIExpression(), !1541)
    #dbg_value(i32 0, !1488, !DIExpression(), !1541)
    #dbg_value(i32 %nOfMBs, !1489, !DIExpression(), !1541)
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %conv.i169.pre-phi, i1 false), !dbg !1542
  %vCondition79 = getelementptr inbounds i8, ptr %errorVar, i64 24, !dbg !1543
  %12 = load ptr, ptr %vCondition79, align 8, !dbg !1543
    #dbg_value(ptr %12, !1482, !DIExpression(), !1544)
    #dbg_value(i32 0, !1488, !DIExpression(), !1544)
    #dbg_value(i32 %nOfMBs, !1489, !DIExpression(), !1544)
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %conv.i169.pre-phi, i1 false), !dbg !1546
  %nOfSegments83 = getelementptr inbounds i8, ptr %errorVar, i64 4, !dbg !1547
  %13 = load i32, ptr %nOfSegments83, align 4, !dbg !1547
  %cmp84.not = icmp eq i32 %13, %numOfSegments, !dbg !1549
  br i1 %cmp84.not, label %if.end99, label %if.then86, !dbg !1550

if.then86:                                        ; preds = %if.end69
  %segments87 = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1551
  %14 = load ptr, ptr %segments87, align 8, !dbg !1551
  tail call void @free(ptr noundef %14) #11, !dbg !1553
  %conv89 = sext i32 %numOfSegments to i64, !dbg !1554
  %mul90 = mul nsw i64 %conv89, 6, !dbg !1555
  %call91 = tail call noalias ptr @malloc(i64 noundef %mul90) #12, !dbg !1556
  store ptr %call91, ptr %segments87, align 8, !dbg !1557
  %cmp94 = icmp eq ptr %call91, null, !dbg !1558
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !1560

if.then96:                                        ; preds = %if.then86
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11, !dbg !1561
  br label %if.end97, !dbg !1561

if.end97:                                         ; preds = %if.then96, %if.then86
  store i32 %numOfSegments, ptr %nOfSegments83, align 4, !dbg !1562
  br label %if.end99, !dbg !1563

if.end99:                                         ; preds = %if.end97, %if.end69
    #dbg_value(ptr poison, !1434, !DIExpression(), !1443)
    #dbg_value(i32 0, !1433, !DIExpression(), !1437)
  %cmp102171 = icmp sgt i32 %numOfSegments, 0, !dbg !1564
  br i1 %cmp102171, label %for.body.lr.ph, label %for.end, !dbg !1567

for.body.lr.ph:                                   ; preds = %if.end99
  %segments100 = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1568
  %15 = load ptr, ptr %segments100, align 8, !dbg !1568
    #dbg_value(ptr %15, !1434, !DIExpression(), !1443)
  %16 = trunc i32 %nOfMBs to i16
  %conv104 = add i16 %16, -1
  br label %for.body, !dbg !1567

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %segments.0173 = phi ptr [ %15, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %i.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
    #dbg_value(ptr %segments.0173, !1434, !DIExpression(), !1443)
    #dbg_value(i32 %i.0172, !1433, !DIExpression(), !1437)
  store i16 0, ptr %segments.0173, align 2, !dbg !1569
  %endMBPos = getelementptr inbounds i8, ptr %segments.0173, i64 2, !dbg !1571
  store i16 %conv104, ptr %endMBPos, align 2, !dbg !1572
  %incdec.ptr = getelementptr inbounds i8, ptr %segments.0173, i64 6, !dbg !1573
    #dbg_value(ptr %incdec.ptr, !1434, !DIExpression(), !1443)
  %fCorrupted = getelementptr inbounds i8, ptr %segments.0173, i64 4, !dbg !1574
  store i8 1, ptr %fCorrupted, align 2, !dbg !1575
  %inc = add nuw nsw i32 %i.0172, 1, !dbg !1576
    #dbg_value(i32 %inc, !1433, !DIExpression(), !1437)
  %17 = load i32, ptr %nOfSegments83, align 4, !dbg !1577
  %cmp102 = icmp slt i32 %inc, %17, !dbg !1564
  br i1 %cmp102, label %for.body, label %for.end, !dbg !1567, !llvm.loop !1578

for.end:                                          ; preds = %for.body, %if.end99
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40, !dbg !1580
  store i32 0, ptr %currSegment, align 8, !dbg !1581
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60, !dbg !1582
  store i32 0, ptr %nOfCorruptedSegments, align 4, !dbg !1583
  br label %if.end105, !dbg !1584

if.end105:                                        ; preds = %for.end, %land.lhs.true, %entry
  ret void, !dbg !1585
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1586 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStartSegment(i32 noundef %currMBNum, i32 noundef %segment, i32 noundef %bitPos, ptr noundef %errorVar) local_unnamed_addr #7 !dbg !1589 {
entry:
    #dbg_value(i32 %currMBNum, !1593, !DIExpression(), !1597)
    #dbg_value(i32 %segment, !1594, !DIExpression(), !1597)
    #dbg_value(i32 %bitPos, !1595, !DIExpression(), !1597)
    #dbg_value(ptr %errorVar, !1596, !DIExpression(), !1597)
  %tobool.not = icmp eq ptr %errorVar, null, !dbg !1598
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1600

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1601
  %0 = load i32, ptr %concealment, align 8, !dbg !1601
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1602
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !1603

if.then:                                          ; preds = %land.lhs.true
  %currSegmentCorrupted = getelementptr inbounds i8, ptr %errorVar, i64 56, !dbg !1604
  store i32 0, ptr %currSegmentCorrupted, align 8, !dbg !1606
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1607
  %1 = load ptr, ptr %segments, align 8, !dbg !1607
  %idxprom = sext i32 %segment to i64, !dbg !1608
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %1, i64 %idxprom, i32 2, !dbg !1609
  store i8 0, ptr %fCorrupted, align 2, !dbg !1610
  %conv = trunc i32 %currMBNum to i16, !dbg !1611
  %2 = load ptr, ptr %segments, align 8, !dbg !1612
  %arrayidx4 = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom, !dbg !1613
  store i16 %conv, ptr %arrayidx4, align 2, !dbg !1614
  br label %if.end, !dbg !1615

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1616
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStopSegment(i32 noundef %currMBNum, i32 noundef %segment, i32 noundef %bitPos, ptr noundef %errorVar) local_unnamed_addr #7 !dbg !1617 {
entry:
    #dbg_value(i32 %currMBNum, !1619, !DIExpression(), !1623)
    #dbg_value(i32 %segment, !1620, !DIExpression(), !1623)
    #dbg_value(i32 %bitPos, !1621, !DIExpression(), !1623)
    #dbg_value(ptr %errorVar, !1622, !DIExpression(), !1623)
  %tobool.not = icmp eq ptr %errorVar, null, !dbg !1624
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1626

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1627
  %0 = load i32, ptr %concealment, align 8, !dbg !1627
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1628
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !1629

if.then:                                          ; preds = %land.lhs.true
  %conv = trunc i32 %currMBNum to i16, !dbg !1630
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1632
  %1 = load ptr, ptr %segments, align 8, !dbg !1632
  %idxprom = sext i32 %segment to i64, !dbg !1633
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %1, i64 %idxprom, i32 1, !dbg !1634
  store i16 %conv, ptr %endMBPos, align 2, !dbg !1635
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40, !dbg !1636
  %2 = load i32, ptr %currSegment, align 8, !dbg !1637
  %inc = add nsw i32 %2, 1, !dbg !1637
  store i32 %inc, ptr %currSegment, align 8, !dbg !1637
  br label %if.end, !dbg !1638

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1639
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %picSizeX, ptr nocapture noundef %errorVar) local_unnamed_addr #8 !dbg !1640 {
land.lhs.true:
    #dbg_value(i32 %picSizeX, !1644, !DIExpression(), !1648)
    #dbg_value(ptr %errorVar, !1645, !DIExpression(), !1648)
    #dbg_value(i32 0, !1646, !DIExpression(), !1648)
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40, !dbg !1649
  %0 = load i32, ptr %currSegment, align 8, !dbg !1649
  %sub = add nsw i32 %0, -1, !dbg !1650
    #dbg_value(i32 %sub, !1647, !DIExpression(), !1648)
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1651
  %1 = load i32, ptr %concealment, align 8, !dbg !1651
  %tobool1.not = icmp eq i32 %1, 0, !dbg !1653
  br i1 %tobool1.not, label %if.end67, label %if.then, !dbg !1654

if.then:                                          ; preds = %land.lhs.true
  %currSegmentCorrupted = getelementptr inbounds i8, ptr %errorVar, i64 56, !dbg !1655
  %2 = load i32, ptr %currSegmentCorrupted, align 8, !dbg !1655
  %cmp = icmp eq i32 %2, 0, !dbg !1658
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1659

if.then2:                                         ; preds = %if.then
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60, !dbg !1660
  %3 = load i32, ptr %nOfCorruptedSegments, align 4, !dbg !1662
  %inc = add nsw i32 %3, 1, !dbg !1662
  store i32 %inc, ptr %nOfCorruptedSegments, align 4, !dbg !1662
  store i32 1, ptr %currSegmentCorrupted, align 8, !dbg !1663
  br label %if.end, !dbg !1664

if.end:                                           ; preds = %if.then2, %if.then
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1665
  %4 = load ptr, ptr %segments, align 8, !dbg !1665
  %idxprom = sext i32 %sub to i64, !dbg !1667
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, ptr %4, i64 %idxprom, !dbg !1667
  %5 = load i16, ptr %arrayidx, align 2, !dbg !1668
    #dbg_value(i16 %5, !1646, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1648)
  %endMBPos107 = getelementptr inbounds %struct.ercSegment_s, ptr %4, i64 %idxprom, i32 1, !dbg !1669
  %6 = load i16, ptr %endMBPos107, align 2, !dbg !1669
  %cmp8.not109 = icmp sgt i16 %5, %6, !dbg !1671
  br i1 %cmp8.not109, label %for.end, label %for.body.lr.ph, !dbg !1672

for.body.lr.ph:                                   ; preds = %if.end
    #dbg_value(i16 %5, !1646, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1648)
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %shr = ashr i32 %picSizeX, 4
  %shr10 = ashr i32 %picSizeX, 3
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %7 = sext i16 %5 to i64, !dbg !1672
  br label %for.body, !dbg !1672

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1646, !DIExpression(), !1648)
  %8 = load ptr, ptr %yCondition, align 8, !dbg !1673
  %9 = trunc nsw i64 %indvars.iv to i32, !dbg !1675
  %div = sdiv i32 %9, %shr, !dbg !1675
  %shl = shl nsw i32 %div, 1, !dbg !1675
  %mul = mul nsw i32 %shl, %shr10, !dbg !1675
  %rem = srem i32 %9, %shr, !dbg !1675
  %shl12 = shl nsw i32 %rem, 1, !dbg !1675
  %add13 = add nsw i32 %mul, %shl12, !dbg !1675
  %idxprom15 = sext i32 %add13 to i64, !dbg !1676
  %arrayidx16 = getelementptr inbounds i8, ptr %8, i64 %idxprom15, !dbg !1676
  store i8 1, ptr %arrayidx16, align 1, !dbg !1677
  %10 = load ptr, ptr %yCondition, align 8, !dbg !1678
  %add28 = or disjoint i32 %add13, 1, !dbg !1679
  %idxprom29 = sext i32 %add28 to i64, !dbg !1680
  %arrayidx30 = getelementptr inbounds i8, ptr %10, i64 %idxprom29, !dbg !1680
  store i8 1, ptr %arrayidx30, align 1, !dbg !1681
  %11 = load ptr, ptr %yCondition, align 8, !dbg !1682
  %add35 = or disjoint i32 %shl, 1, !dbg !1683
  %mul37 = mul nsw i32 %add35, %shr10, !dbg !1683
  %add41 = add nsw i32 %mul37, %shl12, !dbg !1683
  %idxprom43 = sext i32 %add41 to i64, !dbg !1684
  %arrayidx44 = getelementptr inbounds i8, ptr %11, i64 %idxprom43, !dbg !1684
  store i8 1, ptr %arrayidx44, align 1, !dbg !1685
  %12 = load ptr, ptr %yCondition, align 8, !dbg !1686
  %13 = getelementptr i8, ptr %12, i64 %idxprom43, !dbg !1687
  %arrayidx58 = getelementptr i8, ptr %13, i64 1, !dbg !1687
  store i8 1, ptr %arrayidx58, align 1, !dbg !1688
  %14 = load ptr, ptr %uCondition, align 8, !dbg !1689
  %arrayidx60 = getelementptr inbounds i8, ptr %14, i64 %indvars.iv, !dbg !1690
  store i8 1, ptr %arrayidx60, align 1, !dbg !1691
  %15 = load ptr, ptr %vCondition, align 8, !dbg !1692
  %arrayidx62 = getelementptr inbounds i8, ptr %15, i64 %indvars.iv, !dbg !1693
  store i8 1, ptr %arrayidx62, align 1, !dbg !1694
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1695
    #dbg_value(i64 %indvars.iv.next, !1646, !DIExpression(), !1648)
  %16 = load ptr, ptr %segments, align 8, !dbg !1696
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %16, i64 %idxprom, i32 1, !dbg !1669
  %17 = load i16, ptr %endMBPos, align 2, !dbg !1669
  %18 = sext i16 %17 to i64, !dbg !1671
  %cmp8.not.not = icmp slt i64 %indvars.iv, %18, !dbg !1671
  br i1 %cmp8.not.not, label %for.body, label %for.end, !dbg !1672, !llvm.loop !1697

for.end:                                          ; preds = %for.body, %if.end
  %19 = phi ptr [ %4, %if.end ], [ %16, %for.body ], !dbg !1699
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %19, i64 %idxprom, i32 2, !dbg !1700
  store i8 1, ptr %fCorrupted, align 2, !dbg !1701
  br label %if.end67, !dbg !1702

if.end67:                                         ; preds = %for.end, %land.lhs.true
  ret void, !dbg !1703
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %picSizeX, ptr nocapture noundef readonly %errorVar) local_unnamed_addr #8 !dbg !1704 {
land.lhs.true:
    #dbg_value(i32 %picSizeX, !1706, !DIExpression(), !1710)
    #dbg_value(ptr %errorVar, !1707, !DIExpression(), !1710)
    #dbg_value(i32 0, !1708, !DIExpression(), !1710)
    #dbg_value(i32 poison, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1710)
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1711
  %0 = load i32, ptr %concealment, align 8, !dbg !1711
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1713
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !1714

if.then:                                          ; preds = %land.lhs.true
  %currSegment = getelementptr inbounds i8, ptr %errorVar, i64 40, !dbg !1715
  %1 = load i32, ptr %currSegment, align 8, !dbg !1715
    #dbg_value(i32 %1, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1710)
  %sub = add nsw i32 %1, -1, !dbg !1716
    #dbg_value(i32 %sub, !1709, !DIExpression(), !1710)
  %segments = getelementptr inbounds i8, ptr %errorVar, i64 32, !dbg !1717
  %2 = load ptr, ptr %segments, align 8, !dbg !1717
  %idxprom = sext i32 %sub to i64, !dbg !1720
  %arrayidx = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom, !dbg !1720
  %3 = load i16, ptr %arrayidx, align 2, !dbg !1721
    #dbg_value(i16 %3, !1708, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1710)
  %endMBPos99 = getelementptr inbounds %struct.ercSegment_s, ptr %2, i64 %idxprom, i32 1, !dbg !1722
  %4 = load i16, ptr %endMBPos99, align 2, !dbg !1722
  %cmp.not101 = icmp sgt i16 %3, %4, !dbg !1724
  br i1 %cmp.not101, label %for.end, label %for.body.lr.ph, !dbg !1725

for.body.lr.ph:                                   ; preds = %if.then
    #dbg_value(i16 %3, !1708, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1710)
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %shr = ashr i32 %picSizeX, 4
  %shr7 = ashr i32 %picSizeX, 3
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24
  %5 = sext i16 %3 to i64, !dbg !1725
  br label %for.body, !dbg !1725

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1708, !DIExpression(), !1710)
  %6 = load ptr, ptr %yCondition, align 8, !dbg !1726
  %7 = trunc nsw i64 %indvars.iv to i32, !dbg !1728
  %div = sdiv i32 %7, %shr, !dbg !1728
  %shl = shl nsw i32 %div, 1, !dbg !1728
  %mul = mul nsw i32 %shl, %shr7, !dbg !1728
  %rem = srem i32 %7, %shr, !dbg !1728
  %shl9 = shl nsw i32 %rem, 1, !dbg !1728
  %add10 = add nsw i32 %mul, %shl9, !dbg !1728
  %idxprom12 = sext i32 %add10 to i64, !dbg !1729
  %arrayidx13 = getelementptr inbounds i8, ptr %6, i64 %idxprom12, !dbg !1729
  store i8 3, ptr %arrayidx13, align 1, !dbg !1730
  %8 = load ptr, ptr %yCondition, align 8, !dbg !1731
  %add25 = or disjoint i32 %add10, 1, !dbg !1732
  %idxprom26 = sext i32 %add25 to i64, !dbg !1733
  %arrayidx27 = getelementptr inbounds i8, ptr %8, i64 %idxprom26, !dbg !1733
  store i8 3, ptr %arrayidx27, align 1, !dbg !1734
  %9 = load ptr, ptr %yCondition, align 8, !dbg !1735
  %add32 = or disjoint i32 %shl, 1, !dbg !1736
  %mul34 = mul nsw i32 %add32, %shr7, !dbg !1736
  %add38 = add nsw i32 %mul34, %shl9, !dbg !1736
  %idxprom40 = sext i32 %add38 to i64, !dbg !1737
  %arrayidx41 = getelementptr inbounds i8, ptr %9, i64 %idxprom40, !dbg !1737
  store i8 3, ptr %arrayidx41, align 1, !dbg !1738
  %10 = load ptr, ptr %yCondition, align 8, !dbg !1739
  %11 = getelementptr i8, ptr %10, i64 %idxprom40, !dbg !1740
  %arrayidx55 = getelementptr i8, ptr %11, i64 1, !dbg !1740
  store i8 3, ptr %arrayidx55, align 1, !dbg !1741
  %12 = load ptr, ptr %uCondition, align 8, !dbg !1742
  %arrayidx57 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv, !dbg !1743
  store i8 3, ptr %arrayidx57, align 1, !dbg !1744
  %13 = load ptr, ptr %vCondition, align 8, !dbg !1745
  %arrayidx59 = getelementptr inbounds i8, ptr %13, i64 %indvars.iv, !dbg !1746
  store i8 3, ptr %arrayidx59, align 1, !dbg !1747
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1748
    #dbg_value(i64 %indvars.iv.next, !1708, !DIExpression(), !1710)
  %14 = load ptr, ptr %segments, align 8, !dbg !1749
  %endMBPos = getelementptr inbounds %struct.ercSegment_s, ptr %14, i64 %idxprom, i32 1, !dbg !1722
  %15 = load i16, ptr %endMBPos, align 2, !dbg !1722
  %16 = sext i16 %15 to i64, !dbg !1724
  %cmp.not.not = icmp slt i64 %indvars.iv, %16, !dbg !1724
  br i1 %cmp.not.not, label %for.body, label %for.end, !dbg !1725, !llvm.loop !1750

for.end:                                          ; preds = %for.body, %if.then
  %17 = phi ptr [ %2, %if.then ], [ %14, %for.body ], !dbg !1752
  %fCorrupted = getelementptr inbounds %struct.ercSegment_s, ptr %17, i64 %idxprom, i32 2, !dbg !1753
  store i8 0, ptr %fCorrupted, align 2, !dbg !1754
  br label %if.end, !dbg !1755

if.end:                                           ; preds = %for.end, %land.lhs.true
  ret void, !dbg !1756
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %currMBNum, i32 noundef %comp, i32 noundef %picSizeX, ptr noundef readonly %errorVar) local_unnamed_addr #7 !dbg !1757 {
entry:
    #dbg_value(i32 %currMBNum, !1761, !DIExpression(), !1766)
    #dbg_value(i32 %comp, !1762, !DIExpression(), !1766)
    #dbg_value(i32 %picSizeX, !1763, !DIExpression(), !1766)
    #dbg_value(ptr %errorVar, !1764, !DIExpression(), !1766)
    #dbg_value(i32 0, !1765, !DIExpression(), !1766)
  %tobool.not = icmp eq ptr %errorVar, null, !dbg !1767
  br i1 %tobool.not, label %if.end62, label %land.lhs.true, !dbg !1769

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1770
  %0 = load i32, ptr %concealment, align 8, !dbg !1770
  %tobool1.not = icmp eq i32 %0, 0, !dbg !1771
  br i1 %tobool1.not, label %if.end62, label %if.then, !dbg !1772

if.then:                                          ; preds = %land.lhs.true
  %cmp = icmp sgt i32 %comp, -1, !dbg !1773
  %spec.select = select i1 %cmp, i32 %comp, i32 0, !dbg !1776
    #dbg_value(i32 poison, !1765, !DIExpression(), !1766)
    #dbg_value(i32 %spec.select, !1762, !DIExpression(), !1766)
  switch i32 %spec.select, label %if.end62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb53
    i32 2, label %if.then.sw.bb59_crit_edge
  ], !dbg !1777

if.then.sw.bb59_crit_edge:                        ; preds = %if.then
  %.pre = sext i32 %currMBNum to i64, !dbg !1778
  br label %sw.bb59, !dbg !1777

sw.bb:                                            ; preds = %if.then
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8, !dbg !1780
  %1 = load ptr, ptr %yCondition, align 8, !dbg !1780
  %shr = ashr i32 %picSizeX, 4, !dbg !1781
  %div = sdiv i32 %currMBNum, %shr, !dbg !1781
  %shl = shl i32 %div, 1, !dbg !1781
  %shr3 = ashr i32 %picSizeX, 3, !dbg !1781
  %mul = mul nsw i32 %shl, %shr3, !dbg !1781
  %rem = srem i32 %currMBNum, %shr, !dbg !1781
  %shl5 = shl nsw i32 %rem, 1, !dbg !1781
  %add6 = add nsw i32 %mul, %shl5, !dbg !1781
  %idxprom = sext i32 %add6 to i64, !dbg !1782
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !1782
  store i8 2, ptr %arrayidx, align 1, !dbg !1783
  %2 = load ptr, ptr %yCondition, align 8, !dbg !1784
  %add19 = or disjoint i32 %add6, 1, !dbg !1785
  %idxprom20 = sext i32 %add19 to i64, !dbg !1786
  %arrayidx21 = getelementptr inbounds i8, ptr %2, i64 %idxprom20, !dbg !1786
  store i8 2, ptr %arrayidx21, align 1, !dbg !1787
  %3 = load ptr, ptr %yCondition, align 8, !dbg !1788
  %add26 = or disjoint i32 %shl, 1, !dbg !1789
  %mul28 = mul nsw i32 %add26, %shr3, !dbg !1789
  %add32 = add nsw i32 %mul28, %shl5, !dbg !1789
  %idxprom34 = sext i32 %add32 to i64, !dbg !1790
  %arrayidx35 = getelementptr inbounds i8, ptr %3, i64 %idxprom34, !dbg !1790
  store i8 2, ptr %arrayidx35, align 1, !dbg !1791
  %4 = load ptr, ptr %yCondition, align 8, !dbg !1792
  %5 = getelementptr i8, ptr %4, i64 %idxprom34, !dbg !1793
  %arrayidx49 = getelementptr i8, ptr %5, i64 1, !dbg !1793
  store i8 2, ptr %arrayidx49, align 1, !dbg !1794
  br i1 %cmp, label %if.end62, label %sw.bb59.critedge, !dbg !1795

sw.bb53:                                          ; preds = %if.then
  %uCondition = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1796
  %6 = load ptr, ptr %uCondition, align 8, !dbg !1796
  %idxprom54 = sext i32 %currMBNum to i64, !dbg !1797
  %arrayidx55 = getelementptr inbounds i8, ptr %6, i64 %idxprom54, !dbg !1797
  store i8 2, ptr %arrayidx55, align 1, !dbg !1798
  br i1 %cmp, label %if.end62, label %sw.bb59, !dbg !1799

sw.bb59.critedge:                                 ; preds = %sw.bb
  %uCondition.c = getelementptr inbounds i8, ptr %errorVar, i64 16, !dbg !1796
  %7 = load ptr, ptr %uCondition.c, align 8, !dbg !1796
  %idxprom54.c = sext i32 %currMBNum to i64, !dbg !1797
  %arrayidx55.c = getelementptr inbounds i8, ptr %7, i64 %idxprom54.c, !dbg !1797
  store i8 2, ptr %arrayidx55.c, align 1, !dbg !1798
  br label %sw.bb59, !dbg !1799

sw.bb59:                                          ; preds = %if.then.sw.bb59_crit_edge, %sw.bb59.critedge, %sw.bb53
  %idxprom60.pre-phi = phi i64 [ %.pre, %if.then.sw.bb59_crit_edge ], [ %idxprom54.c, %sw.bb59.critedge ], [ %idxprom54, %sw.bb53 ], !dbg !1778
  %vCondition = getelementptr inbounds i8, ptr %errorVar, i64 24, !dbg !1800
  %8 = load ptr, ptr %vCondition, align 8, !dbg !1800
  %arrayidx61 = getelementptr inbounds i8, ptr %8, i64 %idxprom60.pre-phi, !dbg !1778
  store i8 2, ptr %arrayidx61, align 1, !dbg !1801
  br label %if.end62, !dbg !1802

if.end62:                                         ; preds = %if.then, %sw.bb59, %sw.bb, %sw.bb53, %land.lhs.true, %entry
  ret void, !dbg !1803
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!31}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/erc_api.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "075226c332d2e09c07e96a75f8b59424")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 29)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 40)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !19, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !19, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !72, globals: !115, splitDebugInlining: false, nameTableKind: None)
!32 = !{!33, !42, !48, !57, !64}
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 22, baseType: !35, size: 32, elements: !36)
!34 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!38 = !DIEnumerator(name: "YUV400", value: 0)
!39 = !DIEnumerator(name: "YUV420", value: 1)
!40 = !DIEnumerator(name: "YUV422", value: 2)
!41 = !DIEnumerator(name: "YUV444", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !34, line: 15, baseType: !35, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!45 = !DIEnumerator(name: "CM_YUV", value: 0)
!46 = !DIEnumerator(name: "CM_RGB", value: 1)
!47 = !DIEnumerator(name: "CM_XYZ", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 25, baseType: !35, size: 32, elements: !50)
!49 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!52 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!53 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!54 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!55 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!56 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 135, baseType: !59, size: 32, elements: !60)
!58 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "FRAME", value: 0)
!62 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!63 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 22, baseType: !59, size: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIEnumerator(name: "PLANE_Y", value: 0)
!67 = !DIEnumerator(name: "PLANE_U", value: 1)
!68 = !DIEnumerator(name: "PLANE_V", value: 2)
!69 = !DIEnumerator(name: "PLANE_G", value: 0)
!70 = !DIEnumerator(name: "PLANE_B", value: 1)
!71 = !DIEnumerator(name: "PLANE_R", value: 2)
!72 = !{!73, !88, !89, !102, !97, !107}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "objectBuffer_t", file: !75, line: 49, baseType: !76)
!75 = !DIFile(filename: "ldecod_src/inc/erc_globals.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c27fab662deb7c381592b003d3b76fc7")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !75, line: 42, size: 192, elements: !77)
!77 = !{!78, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "regionMode", scope: !76, file: !75, line: 44, baseType: !79, size: 8)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "xMin", scope: !76, file: !75, line: 45, baseType: !35, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "yMin", scope: !76, file: !75, line: 46, baseType: !35, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !76, file: !75, line: 47, baseType: !85, size: 96, offset: 96)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 96, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercVariables_t", file: !91, line: 108, baseType: !92)
!91 = !DIFile(filename: "ldecod_src/inc/erc_api.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9f38a583d5066807e951e2b61474101e")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !91, line: 79, size: 576, elements: !93)
!93 = !{!94, !95, !96, !99, !100, !101, !110, !111, !112, !113, !114}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "nOfMBs", scope: !92, file: !91, line: 82, baseType: !35, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nOfSegments", scope: !92, file: !91, line: 84, baseType: !35, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "yCondition", scope: !92, file: !91, line: 87, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uCondition", scope: !92, file: !91, line: 89, baseType: !97, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vCondition", scope: !92, file: !91, line: 91, baseType: !97, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "segments", scope: !92, file: !91, line: 94, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercSegment_t", file: !91, line: 76, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercSegment_s", file: !91, line: 71, size: 48, elements: !105)
!105 = !{!106, !108, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "startMBPos", scope: !104, file: !91, line: 73, baseType: !107, size: 16)
!107 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "endMBPos", scope: !104, file: !91, line: 74, baseType: !107, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fCorrupted", scope: !104, file: !91, line: 75, baseType: !98, size: 8, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "currSegment", scope: !92, file: !91, line: 95, baseType: !35, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prevFrameYCondition", scope: !92, file: !91, line: 98, baseType: !97, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "currSegmentCorrupted", scope: !92, file: !91, line: 101, baseType: !35, size: 32, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nOfCorruptedSegments", scope: !92, file: !91, line: 103, baseType: !35, size: 32, offset: 480)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "concealment", scope: !92, file: !91, line: 106, baseType: !35, size: 32, offset: 512)
!115 = !{!0, !7, !12, !17, !22, !27, !29}
!116 = !{i32 7, !"Dwarf Version", i32 5}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = !{i32 8, !"PIC Level", i32 2}
!120 = !{i32 7, !"PIE Level", i32 2}
!121 = !{i32 7, !"uwtable", i32 2}
!122 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!123 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!124 = distinct !DISubprogram(name: "ercInit", scope: !2, file: !2, line: 29, type: !125, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1303)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !35, !35, !35}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !129, line: 836, baseType: !130)
!129 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !129, line: 566, size: 6855040, elements: !131)
!131 = !{!132, !214, !268, !372, !374, !376, !432, !434, !435, !436, !437, !438, !441, !461, !473, !474, !475, !476, !477, !478, !1048, !1049, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1059, !1062, !1063, !1065, !1066, !1067, !1068, !1069, !1071, !1072, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1201, !1203, !1204, !1206, !1208, !1209, !1210, !1214, !1217, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1229, !1232, !1233, !1234, !1235, !1238, !1243, !1247, !1251, !1255, !1256, !1260, !1261, !1265, !1266, !1270, !1291, !1292, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !130, file: !129, line: 568, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !129, line: 850, size: 32128, elements: !135)
!135 = !{!136, !140, !141, !142, !143, !144, !145, !146, !147, !148, !175, !176, !177, !178, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !134, file: !129, line: 852, baseType: !137, size: 2040)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 255)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !134, file: !129, line: 853, baseType: !137, size: 2040, offset: 2040)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !134, file: !129, line: 854, baseType: !137, size: 2040, offset: 4080)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !134, file: !129, line: 856, baseType: !35, size: 32, offset: 6144)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !134, file: !129, line: 857, baseType: !35, size: 32, offset: 6176)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !134, file: !129, line: 858, baseType: !35, size: 32, offset: 6208)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !134, file: !129, line: 859, baseType: !35, size: 32, offset: 6240)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !134, file: !129, line: 860, baseType: !35, size: 32, offset: 6272)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !134, file: !129, line: 861, baseType: !35, size: 32, offset: 6304)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !134, file: !129, line: 864, baseType: !149, size: 1088, offset: 6336)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !34, line: 52, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !34, line: 30, size: 1088, elements: !151)
!151 = !{!152, !154, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !150, file: !34, line: 32, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !34, line: 28, baseType: !33)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !150, file: !34, line: 33, baseType: !155, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !34, line: 20, baseType: !42)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !150, file: !34, line: 34, baseType: !157, size: 64, offset: 64)
!157 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !150, file: !34, line: 35, baseType: !85, size: 96, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !150, file: !34, line: 36, baseType: !85, size: 96, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !150, file: !34, line: 37, baseType: !35, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !150, file: !34, line: 38, baseType: !35, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !150, file: !34, line: 39, baseType: !35, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !150, file: !34, line: 40, baseType: !35, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !150, file: !34, line: 41, baseType: !35, size: 32, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !150, file: !34, line: 42, baseType: !35, size: 32, offset: 480)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !150, file: !34, line: 43, baseType: !35, size: 32, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !150, file: !34, line: 44, baseType: !35, size: 32, offset: 544)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !150, file: !34, line: 45, baseType: !85, size: 96, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !150, file: !34, line: 46, baseType: !35, size: 32, offset: 672)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !150, file: !34, line: 47, baseType: !85, size: 96, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !150, file: !34, line: 48, baseType: !85, size: 96, offset: 800)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !150, file: !34, line: 49, baseType: !85, size: 96, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !150, file: !34, line: 50, baseType: !35, size: 32, offset: 992)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !150, file: !34, line: 51, baseType: !35, size: 32, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !134, file: !129, line: 865, baseType: !149, size: 1088, offset: 7424)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !134, file: !129, line: 867, baseType: !35, size: 32, offset: 8512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !134, file: !129, line: 868, baseType: !35, size: 32, offset: 8544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !134, file: !129, line: 869, baseType: !179, size: 7744, offset: 8576)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !49, line: 60, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !49, line: 34, size: 7744, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !180, file: !49, line: 37, baseType: !137, size: 2040)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !180, file: !49, line: 38, baseType: !137, size: 2040, offset: 2040)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !180, file: !49, line: 39, baseType: !137, size: 2040, offset: 4080)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !180, file: !49, line: 40, baseType: !35, size: 32, offset: 6144)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !180, file: !49, line: 41, baseType: !187, size: 32, offset: 6176)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !49, line: 32, baseType: !48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !180, file: !49, line: 42, baseType: !149, size: 1088, offset: 6208)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !180, file: !49, line: 43, baseType: !35, size: 32, offset: 7296)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !180, file: !49, line: 44, baseType: !35, size: 32, offset: 7328)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !180, file: !49, line: 45, baseType: !35, size: 32, offset: 7360)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !180, file: !49, line: 46, baseType: !35, size: 32, offset: 7392)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !180, file: !49, line: 47, baseType: !35, size: 32, offset: 7424)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !180, file: !49, line: 48, baseType: !35, size: 32, offset: 7456)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !180, file: !49, line: 49, baseType: !35, size: 32, offset: 7488)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !180, file: !49, line: 50, baseType: !35, size: 32, offset: 7520)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !180, file: !49, line: 51, baseType: !35, size: 32, offset: 7552)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !180, file: !49, line: 52, baseType: !35, size: 32, offset: 7584)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !180, file: !49, line: 53, baseType: !35, size: 32, offset: 7616)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !180, file: !49, line: 56, baseType: !201, size: 64, offset: 7680)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !134, file: !129, line: 870, baseType: !179, size: 7744, offset: 16320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !134, file: !129, line: 871, baseType: !179, size: 7744, offset: 24064)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !134, file: !129, line: 873, baseType: !35, size: 32, offset: 31808)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !134, file: !129, line: 884, baseType: !35, size: 32, offset: 31840)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !134, file: !129, line: 885, baseType: !35, size: 32, offset: 31872)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !134, file: !129, line: 886, baseType: !35, size: 32, offset: 31904)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !134, file: !129, line: 890, baseType: !35, size: 32, offset: 31936)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !134, file: !129, line: 893, baseType: !35, size: 32, offset: 31968)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !134, file: !129, line: 894, baseType: !35, size: 32, offset: 32000)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !134, file: !129, line: 895, baseType: !35, size: 32, offset: 32032)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !134, file: !129, line: 897, baseType: !35, size: 32, offset: 32064)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !134, file: !129, line: 899, baseType: !35, size: 32, offset: 32096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !130, file: !129, line: 569, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !217, line: 138, baseType: !218)
!217 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 94, size: 17728, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !230, !235, !239, !242, !243, !244, !245, !246, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !218, file: !217, line: 96, baseType: !35, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !218, file: !217, line: 97, baseType: !59, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !218, file: !217, line: 98, baseType: !59, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !218, file: !217, line: 99, baseType: !35, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !218, file: !217, line: 100, baseType: !35, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !218, file: !217, line: 102, baseType: !35, size: 32, offset: 160)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !218, file: !217, line: 103, baseType: !227, size: 384, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 384, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 12)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !218, file: !217, line: 104, baseType: !231, size: 3072, offset: 576)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3072, elements: !232)
!232 = !{!233, !234}
!233 = !DISubrange(count: 6)
!234 = !DISubrange(count: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !218, file: !217, line: 105, baseType: !236, size: 12288, offset: 3648)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 12288, elements: !237)
!237 = !{!233, !238}
!238 = !DISubrange(count: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !218, file: !217, line: 106, baseType: !240, size: 192, offset: 15936)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !241)
!241 = !{!233}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !218, file: !217, line: 107, baseType: !240, size: 192, offset: 16128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !218, file: !217, line: 110, baseType: !35, size: 32, offset: 16320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !218, file: !217, line: 111, baseType: !59, size: 32, offset: 16352)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !218, file: !217, line: 112, baseType: !59, size: 32, offset: 16384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !218, file: !217, line: 114, baseType: !247, size: 256, offset: 16416)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !218, file: !217, line: 116, baseType: !247, size: 256, offset: 16672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !218, file: !217, line: 117, baseType: !247, size: 256, offset: 16928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !218, file: !217, line: 119, baseType: !35, size: 32, offset: 17184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !218, file: !217, line: 120, baseType: !59, size: 32, offset: 17216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !218, file: !217, line: 122, baseType: !59, size: 32, offset: 17248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !218, file: !217, line: 123, baseType: !256, size: 64, offset: 17280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !218, file: !217, line: 125, baseType: !35, size: 32, offset: 17344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !218, file: !217, line: 126, baseType: !35, size: 32, offset: 17376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !218, file: !217, line: 127, baseType: !35, size: 32, offset: 17408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !218, file: !217, line: 128, baseType: !59, size: 32, offset: 17440)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !218, file: !217, line: 129, baseType: !35, size: 32, offset: 17472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !218, file: !217, line: 130, baseType: !35, size: 32, offset: 17504)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !218, file: !217, line: 131, baseType: !35, size: 32, offset: 17536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !218, file: !217, line: 133, baseType: !35, size: 32, offset: 17568)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !218, file: !217, line: 135, baseType: !35, size: 32, offset: 17600)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !218, file: !217, line: 136, baseType: !35, size: 32, offset: 17632)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !218, file: !217, line: 137, baseType: !35, size: 32, offset: 17664)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !130, file: !129, line: 570, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !217, line: 197, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 142, size: 33024, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !370, !371}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !271, file: !217, line: 144, baseType: !35, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !271, file: !217, line: 146, baseType: !59, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !271, file: !217, line: 147, baseType: !35, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !271, file: !217, line: 148, baseType: !35, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !271, file: !217, line: 149, baseType: !35, size: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !271, file: !217, line: 150, baseType: !35, size: 32, offset: 160)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !271, file: !217, line: 152, baseType: !35, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !271, file: !217, line: 154, baseType: !59, size: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !271, file: !217, line: 155, baseType: !59, size: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !271, file: !217, line: 156, baseType: !59, size: 32, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !271, file: !217, line: 158, baseType: !35, size: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !271, file: !217, line: 159, baseType: !227, size: 384, offset: 352)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !271, file: !217, line: 160, baseType: !231, size: 3072, offset: 736)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !271, file: !217, line: 161, baseType: !236, size: 12288, offset: 3808)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !271, file: !217, line: 162, baseType: !240, size: 192, offset: 16096)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !271, file: !217, line: 163, baseType: !240, size: 192, offset: 16288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !271, file: !217, line: 165, baseType: !59, size: 32, offset: 16480)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !271, file: !217, line: 166, baseType: !59, size: 32, offset: 16512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !271, file: !217, line: 167, baseType: !59, size: 32, offset: 16544)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !271, file: !217, line: 168, baseType: !59, size: 32, offset: 16576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !271, file: !217, line: 170, baseType: !59, size: 32, offset: 16608)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !271, file: !217, line: 172, baseType: !35, size: 32, offset: 16640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !271, file: !217, line: 173, baseType: !35, size: 32, offset: 16672)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !271, file: !217, line: 174, baseType: !35, size: 32, offset: 16704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !271, file: !217, line: 175, baseType: !59, size: 32, offset: 16736)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !271, file: !217, line: 177, baseType: !299, size: 8192, offset: 16768)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8192, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !271, file: !217, line: 178, baseType: !59, size: 32, offset: 24960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !271, file: !217, line: 179, baseType: !35, size: 32, offset: 24992)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !271, file: !217, line: 180, baseType: !59, size: 32, offset: 25024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !271, file: !217, line: 181, baseType: !59, size: 32, offset: 25056)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !271, file: !217, line: 182, baseType: !35, size: 32, offset: 25088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !271, file: !217, line: 184, baseType: !35, size: 32, offset: 25120)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !271, file: !217, line: 185, baseType: !35, size: 32, offset: 25152)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !271, file: !217, line: 186, baseType: !35, size: 32, offset: 25184)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !271, file: !217, line: 187, baseType: !59, size: 32, offset: 25216)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !271, file: !217, line: 188, baseType: !59, size: 32, offset: 25248)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !271, file: !217, line: 189, baseType: !59, size: 32, offset: 25280)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !271, file: !217, line: 190, baseType: !59, size: 32, offset: 25312)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !271, file: !217, line: 191, baseType: !35, size: 32, offset: 25344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !271, file: !217, line: 192, baseType: !316, size: 7584, offset: 25376)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !217, line: 90, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 53, size: 7584, elements: !318)
!318 = !{!319, !320, !321, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !317, file: !217, line: 55, baseType: !35, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !317, file: !217, line: 56, baseType: !59, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !317, file: !217, line: 57, baseType: !322, size: 16, offset: 64)
!322 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !317, file: !217, line: 58, baseType: !322, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !317, file: !217, line: 59, baseType: !35, size: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !317, file: !217, line: 60, baseType: !35, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !317, file: !217, line: 61, baseType: !35, size: 32, offset: 160)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !317, file: !217, line: 62, baseType: !59, size: 32, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !317, file: !217, line: 63, baseType: !35, size: 32, offset: 224)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !317, file: !217, line: 64, baseType: !35, size: 32, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !317, file: !217, line: 65, baseType: !59, size: 32, offset: 288)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !317, file: !217, line: 66, baseType: !59, size: 32, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !317, file: !217, line: 67, baseType: !59, size: 32, offset: 352)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !317, file: !217, line: 68, baseType: !35, size: 32, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !317, file: !217, line: 69, baseType: !59, size: 32, offset: 416)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !317, file: !217, line: 70, baseType: !59, size: 32, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !317, file: !217, line: 71, baseType: !35, size: 32, offset: 480)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !317, file: !217, line: 72, baseType: !59, size: 32, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !317, file: !217, line: 73, baseType: !59, size: 32, offset: 544)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !317, file: !217, line: 74, baseType: !35, size: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !317, file: !217, line: 75, baseType: !35, size: 32, offset: 608)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !317, file: !217, line: 76, baseType: !342, size: 3296, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !217, line: 50, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 38, size: 3296, elements: !344)
!344 = !{!345, !346, !347, !348, !352, !353, !354, !355, !356, !357}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !343, file: !217, line: 40, baseType: !59, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !343, file: !217, line: 41, baseType: !59, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !343, file: !217, line: 42, baseType: !59, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !343, file: !217, line: 43, baseType: !349, size: 1024, offset: 96)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1024, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !343, file: !217, line: 44, baseType: !349, size: 1024, offset: 1120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !343, file: !217, line: 45, baseType: !349, size: 1024, offset: 2144)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !343, file: !217, line: 46, baseType: !59, size: 32, offset: 3168)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !343, file: !217, line: 47, baseType: !59, size: 32, offset: 3200)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !343, file: !217, line: 48, baseType: !59, size: 32, offset: 3232)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !343, file: !217, line: 49, baseType: !59, size: 32, offset: 3264)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !317, file: !217, line: 77, baseType: !35, size: 32, offset: 3936)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !317, file: !217, line: 78, baseType: !342, size: 3296, offset: 3968)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !317, file: !217, line: 80, baseType: !35, size: 32, offset: 7264)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !317, file: !217, line: 81, baseType: !35, size: 32, offset: 7296)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !317, file: !217, line: 82, baseType: !35, size: 32, offset: 7328)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !317, file: !217, line: 83, baseType: !35, size: 32, offset: 7360)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !317, file: !217, line: 84, baseType: !59, size: 32, offset: 7392)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !317, file: !217, line: 85, baseType: !59, size: 32, offset: 7424)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !317, file: !217, line: 86, baseType: !59, size: 32, offset: 7456)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !317, file: !217, line: 87, baseType: !59, size: 32, offset: 7488)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !317, file: !217, line: 88, baseType: !59, size: 32, offset: 7520)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !317, file: !217, line: 89, baseType: !59, size: 32, offset: 7552)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !271, file: !217, line: 193, baseType: !59, size: 32, offset: 32960)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !271, file: !217, line: 195, baseType: !35, size: 32, offset: 32992)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !130, file: !129, line: 571, baseType: !373, size: 1056768, offset: 192)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 1056768, elements: !350)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !130, file: !129, line: 572, baseType: !375, size: 4538368, offset: 1056960)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 4538368, elements: !300)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !130, file: !129, line: 575, baseType: !377, size: 64, offset: 5595328)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !217, line: 256, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 228, size: 37312, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !401, !402, !403, !404}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !379, file: !217, line: 230, baseType: !270, size: 33024)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !379, file: !217, line: 232, baseType: !59, size: 32, offset: 33024)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !379, file: !217, line: 233, baseType: !35, size: 32, offset: 33056)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !379, file: !217, line: 234, baseType: !201, size: 64, offset: 33088)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !379, file: !217, line: 235, baseType: !201, size: 64, offset: 33152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !379, file: !217, line: 236, baseType: !387, size: 64, offset: 33216)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !379, file: !217, line: 237, baseType: !201, size: 64, offset: 33280)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !379, file: !217, line: 238, baseType: !387, size: 64, offset: 33344)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !379, file: !217, line: 240, baseType: !201, size: 64, offset: 33408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !379, file: !217, line: 241, baseType: !387, size: 64, offset: 33472)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !379, file: !217, line: 242, baseType: !201, size: 64, offset: 33536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !379, file: !217, line: 243, baseType: !387, size: 64, offset: 33600)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !379, file: !217, line: 245, baseType: !35, size: 32, offset: 33664)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !379, file: !217, line: 246, baseType: !201, size: 64, offset: 33728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !379, file: !217, line: 247, baseType: !201, size: 64, offset: 33792)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !379, file: !217, line: 248, baseType: !387, size: 64, offset: 33856)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !379, file: !217, line: 249, baseType: !387, size: 64, offset: 33920)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !379, file: !217, line: 250, baseType: !400, size: 64, offset: 33984)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !379, file: !217, line: 251, baseType: !387, size: 64, offset: 34048)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !379, file: !217, line: 253, baseType: !59, size: 32, offset: 34112)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !379, file: !217, line: 254, baseType: !35, size: 32, offset: 34144)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !379, file: !217, line: 255, baseType: !405, size: 3136, offset: 34176)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !217, line: 226, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !217, line: 200, size: 3136, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !425, !426, !428, !429, !430, !431}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !406, file: !217, line: 202, baseType: !35, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !406, file: !217, line: 203, baseType: !97, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !406, file: !217, line: 204, baseType: !201, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !406, file: !217, line: 205, baseType: !387, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !406, file: !217, line: 206, baseType: !97, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !406, file: !217, line: 207, baseType: !201, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !406, file: !217, line: 208, baseType: !201, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !406, file: !217, line: 209, baseType: !97, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !406, file: !217, line: 210, baseType: !97, size: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !406, file: !217, line: 211, baseType: !97, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !406, file: !217, line: 212, baseType: !97, size: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !406, file: !217, line: 213, baseType: !97, size: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !406, file: !217, line: 216, baseType: !98, size: 8, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !406, file: !217, line: 217, baseType: !98, size: 8, offset: 776)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !406, file: !217, line: 218, baseType: !98, size: 8, offset: 784)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !406, file: !217, line: 219, baseType: !424, size: 1024, offset: 800)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, elements: !350)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !406, file: !217, line: 220, baseType: !424, size: 1024, offset: 1824)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !406, file: !217, line: 221, baseType: !427, size: 256, offset: 2848)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 256, elements: !350)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !406, file: !217, line: 222, baseType: !98, size: 8, offset: 3104)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !406, file: !217, line: 223, baseType: !98, size: 8, offset: 3112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !406, file: !217, line: 224, baseType: !98, size: 8, offset: 3120)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !406, file: !217, line: 225, baseType: !98, size: 8, offset: 3128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !130, file: !129, line: 577, baseType: !433, size: 1193984, offset: 5595392)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1193984, elements: !350)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !130, file: !129, line: 578, baseType: !35, size: 32, offset: 6789376)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !130, file: !129, line: 579, baseType: !35, size: 32, offset: 6789408)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !130, file: !129, line: 580, baseType: !35, size: 32, offset: 6789440)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !130, file: !129, line: 581, baseType: !35, size: 32, offset: 6789472)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !130, file: !129, line: 584, baseType: !439, size: 64, offset: 6789504)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !129, line: 584, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !130, file: !129, line: 586, baseType: !442, size: 64, offset: 6789568)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !129, line: 902, size: 416, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !454, !455, !456, !457, !458, !459, !460}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !443, file: !129, line: 904, baseType: !59, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !443, file: !129, line: 905, baseType: !59, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !443, file: !129, line: 906, baseType: !35, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !443, file: !129, line: 907, baseType: !59, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !443, file: !129, line: 908, baseType: !35, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !443, file: !129, line: 909, baseType: !451, size: 64, offset: 160)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 2)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !443, file: !129, line: 910, baseType: !79, size: 8, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !443, file: !129, line: 911, baseType: !79, size: 8, offset: 232)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !443, file: !129, line: 912, baseType: !35, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !443, file: !129, line: 913, baseType: !35, size: 32, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !443, file: !129, line: 915, baseType: !35, size: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !443, file: !129, line: 916, baseType: !35, size: 32, offset: 352)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !443, file: !129, line: 917, baseType: !35, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !130, file: !129, line: 587, baseType: !462, size: 64, offset: 6789632)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !129, line: 839, size: 512, elements: !464)
!464 = !{!465, !466, !469, !470, !471, !472}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !463, file: !129, line: 841, baseType: !35, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !463, file: !129, line: 842, baseType: !467, size: 96, offset: 32)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 96, elements: !86)
!468 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !463, file: !129, line: 843, baseType: !467, size: 96, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !463, file: !129, line: 844, baseType: !467, size: 96, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !463, file: !129, line: 845, baseType: !467, size: 96, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !463, file: !129, line: 846, baseType: !467, size: 96, offset: 416)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !130, file: !129, line: 588, baseType: !35, size: 32, offset: 6789696)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !130, file: !129, line: 591, baseType: !59, size: 32, offset: 6789728)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !130, file: !129, line: 592, baseType: !35, size: 32, offset: 6789760)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !130, file: !129, line: 593, baseType: !35, size: 32, offset: 6789792)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !130, file: !129, line: 594, baseType: !35, size: 32, offset: 6789824)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !130, file: !129, line: 595, baseType: !479, size: 64, offset: 6789888)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !129, line: 542, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !129, line: 341, size: 109184, elements: !483)
!483 = !{!484, !486, !487, !488, !489, !490, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !711, !713, !876, !905, !932, !935, !936, !938, !939, !940, !941, !942, !943, !944, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !971, !972, !973, !974, !975, !976, !979, !980, !983, !984, !986, !989, !990, !991, !992, !993, !994, !995, !996, !997, !999, !1000, !1001, !1002, !1003, !1006, !1007, !1008, !1012, !1016, !1020, !1024, !1028, !1029, !1030, !1031, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1045, !1046}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !482, file: !129, line: 343, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !482, file: !129, line: 344, baseType: !133, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !482, file: !129, line: 345, baseType: !215, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !482, file: !129, line: 346, baseType: !269, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !482, file: !129, line: 347, baseType: !35, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !482, file: !129, line: 350, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !493, line: 186, size: 33408, elements: !494)
!493 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!494 = !{!495, !496, !499, !645, !646, !647, !648, !649, !650, !651, !652, !653, !657, !658, !659}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !492, file: !493, line: 188, baseType: !127, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !492, file: !493, line: 189, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !129, line: 900, baseType: !134)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !492, file: !493, line: 190, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !493, line: 182, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !493, line: 152, size: 768, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !640, !641, !642, !643, !644}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !503, file: !493, line: 154, baseType: !35, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !503, file: !493, line: 155, baseType: !35, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !503, file: !493, line: 156, baseType: !35, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !503, file: !493, line: 157, baseType: !35, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !503, file: !493, line: 159, baseType: !35, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !503, file: !493, line: 161, baseType: !59, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !503, file: !493, line: 162, baseType: !59, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !503, file: !493, line: 164, baseType: !35, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !503, file: !493, line: 165, baseType: !35, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !503, file: !493, line: 166, baseType: !35, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !503, file: !493, line: 167, baseType: !35, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !503, file: !493, line: 170, baseType: !35, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !503, file: !493, line: 172, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !493, line: 138, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !493, line: 46, size: 3328, elements: !521)
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !560, !562, !563, !580, !582, !586, !588, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !520, file: !493, line: 48, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !58, line: 140, baseType: !57)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !520, file: !493, line: 50, baseType: !35, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !520, file: !493, line: 51, baseType: !35, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !520, file: !493, line: 52, baseType: !35, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !520, file: !493, line: 53, baseType: !35, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !520, file: !493, line: 54, baseType: !59, size: 32, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !520, file: !493, line: 55, baseType: !59, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !520, file: !493, line: 57, baseType: !35, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !520, file: !493, line: 58, baseType: !35, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !520, file: !493, line: 59, baseType: !35, size: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !520, file: !493, line: 61, baseType: !79, size: 8, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !520, file: !493, line: 62, baseType: !35, size: 32, offset: 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !520, file: !493, line: 63, baseType: !35, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !520, file: !493, line: 64, baseType: !35, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !520, file: !493, line: 65, baseType: !35, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !520, file: !493, line: 67, baseType: !107, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !520, file: !493, line: 69, baseType: !35, size: 32, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !520, file: !493, line: 69, baseType: !35, size: 32, offset: 544)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !520, file: !493, line: 69, baseType: !35, size: 32, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !520, file: !493, line: 69, baseType: !35, size: 32, offset: 608)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !520, file: !493, line: 70, baseType: !35, size: 32, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !520, file: !493, line: 70, baseType: !35, size: 32, offset: 672)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !520, file: !493, line: 70, baseType: !35, size: 32, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !520, file: !493, line: 70, baseType: !35, size: 32, offset: 736)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !520, file: !493, line: 71, baseType: !35, size: 32, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !520, file: !493, line: 72, baseType: !35, size: 32, offset: 800)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !520, file: !493, line: 73, baseType: !59, size: 32, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !520, file: !493, line: 74, baseType: !59, size: 32, offset: 864)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !520, file: !493, line: 75, baseType: !35, size: 32, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !520, file: !493, line: 75, baseType: !35, size: 32, offset: 928)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !520, file: !493, line: 76, baseType: !35, size: 32, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !520, file: !493, line: 76, baseType: !35, size: 32, offset: 992)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !520, file: !493, line: 79, baseType: !556, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !80, line: 41, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !80, line: 23, baseType: !322)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !520, file: !493, line: 80, baseType: !561, size: 64, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !520, file: !493, line: 81, baseType: !561, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !520, file: !493, line: 84, baseType: !564, size: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !493, line: 36, size: 256, elements: !567)
!567 = !{!568, !571, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !566, file: !493, line: 38, baseType: !569, size: 128)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 128, elements: !452)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !566, file: !493, line: 39, baseType: !572, size: 64, offset: 128)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 64, elements: !452)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !129, line: 104, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 100, size: 32, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !574, file: !129, line: 102, baseType: !107, size: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !574, file: !129, line: 103, baseType: !107, size: 16, offset: 16)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !566, file: !493, line: 40, baseType: !579, size: 16, offset: 192)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16, elements: !452)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !520, file: !493, line: 85, baseType: !581, size: 192, offset: 1280)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 192, elements: !86)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !520, file: !493, line: 87, baseType: !583, size: 64, offset: 1472)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !493, line: 29, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !583, file: !493, line: 31, baseType: !256, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !520, file: !493, line: 88, baseType: !587, size: 192, offset: 1536)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 192, elements: !86)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !520, file: !493, line: 90, baseType: !589, size: 64, offset: 1728)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !520, file: !493, line: 92, baseType: !570, size: 64, offset: 1792)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !520, file: !493, line: 93, baseType: !570, size: 64, offset: 1856)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !520, file: !493, line: 94, baseType: !570, size: 64, offset: 1920)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !520, file: !493, line: 96, baseType: !35, size: 32, offset: 1984)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !520, file: !493, line: 97, baseType: !35, size: 32, offset: 2016)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !520, file: !493, line: 98, baseType: !35, size: 32, offset: 2048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !520, file: !493, line: 99, baseType: !35, size: 32, offset: 2080)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !520, file: !493, line: 100, baseType: !35, size: 32, offset: 2112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !520, file: !493, line: 102, baseType: !35, size: 32, offset: 2144)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !520, file: !493, line: 103, baseType: !35, size: 32, offset: 2176)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !520, file: !493, line: 104, baseType: !35, size: 32, offset: 2208)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !520, file: !493, line: 105, baseType: !35, size: 32, offset: 2240)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !520, file: !493, line: 106, baseType: !35, size: 32, offset: 2272)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !520, file: !493, line: 107, baseType: !35, size: 32, offset: 2304)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !520, file: !493, line: 108, baseType: !35, size: 32, offset: 2336)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !520, file: !493, line: 109, baseType: !35, size: 32, offset: 2368)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !520, file: !493, line: 110, baseType: !451, size: 64, offset: 2400)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !520, file: !493, line: 111, baseType: !35, size: 32, offset: 2464)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !520, file: !493, line: 112, baseType: !610, size: 64, offset: 2496)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !129, line: 194, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !129, line: 186, size: 256, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !612, file: !129, line: 188, baseType: !35, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !612, file: !129, line: 189, baseType: !35, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !612, file: !129, line: 190, baseType: !35, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !612, file: !129, line: 191, baseType: !35, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !612, file: !129, line: 192, baseType: !35, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !612, file: !129, line: 193, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !520, file: !493, line: 115, baseType: !35, size: 32, offset: 2560)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !520, file: !493, line: 118, baseType: !35, size: 32, offset: 2592)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !520, file: !493, line: 119, baseType: !35, size: 32, offset: 2624)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !520, file: !493, line: 120, baseType: !35, size: 32, offset: 2656)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !520, file: !493, line: 121, baseType: !557, size: 64, offset: 2688)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !520, file: !493, line: 124, baseType: !35, size: 32, offset: 2752)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !520, file: !493, line: 125, baseType: !35, size: 32, offset: 2784)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !520, file: !493, line: 126, baseType: !35, size: 32, offset: 2816)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !520, file: !493, line: 128, baseType: !35, size: 32, offset: 2848)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !520, file: !493, line: 129, baseType: !35, size: 32, offset: 2880)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !520, file: !493, line: 130, baseType: !35, size: 32, offset: 2912)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !520, file: !493, line: 131, baseType: !35, size: 32, offset: 2944)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !520, file: !493, line: 132, baseType: !556, size: 64, offset: 3008)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !520, file: !493, line: 133, baseType: !35, size: 32, offset: 3072)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !520, file: !493, line: 134, baseType: !35, size: 32, offset: 3104)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !520, file: !493, line: 136, baseType: !579, size: 16, offset: 3136)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !520, file: !493, line: 137, baseType: !638, size: 128, offset: 3200)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !452)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !503, file: !493, line: 173, baseType: !518, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !503, file: !493, line: 174, baseType: !518, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !503, file: !493, line: 177, baseType: !35, size: 32, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !503, file: !493, line: 178, baseType: !451, size: 64, offset: 608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !503, file: !493, line: 179, baseType: !451, size: 64, offset: 672)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !492, file: !493, line: 191, baseType: !500, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !492, file: !493, line: 192, baseType: !500, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !493, line: 193, baseType: !59, size: 32, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !492, file: !493, line: 194, baseType: !59, size: 32, offset: 352)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !492, file: !493, line: 195, baseType: !59, size: 32, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !492, file: !493, line: 196, baseType: !59, size: 32, offset: 416)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !492, file: !493, line: 197, baseType: !35, size: 32, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !492, file: !493, line: 199, baseType: !35, size: 32, offset: 480)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !492, file: !493, line: 200, baseType: !654, size: 32768, offset: 512)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32768, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !492, file: !493, line: 205, baseType: !35, size: 32, offset: 33280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !492, file: !493, line: 206, baseType: !35, size: 32, offset: 33312)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !492, file: !493, line: 208, baseType: !501, size: 64, offset: 33344)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !482, file: !129, line: 353, baseType: !35, size: 32, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !482, file: !129, line: 354, baseType: !35, size: 32, offset: 416)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !482, file: !129, line: 355, baseType: !35, size: 32, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !482, file: !129, line: 356, baseType: !35, size: 32, offset: 480)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !482, file: !129, line: 357, baseType: !35, size: 32, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !482, file: !129, line: 359, baseType: !35, size: 32, offset: 544)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !482, file: !129, line: 360, baseType: !35, size: 32, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !482, file: !129, line: 361, baseType: !35, size: 32, offset: 608)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !482, file: !129, line: 365, baseType: !59, size: 32, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !482, file: !129, line: 366, baseType: !35, size: 32, offset: 672)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !482, file: !129, line: 368, baseType: !451, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !482, file: !129, line: 372, baseType: !35, size: 32, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !482, file: !129, line: 378, baseType: !59, size: 32, offset: 800)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !482, file: !129, line: 379, baseType: !35, size: 32, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !482, file: !129, line: 387, baseType: !59, size: 32, offset: 864)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !482, file: !129, line: 388, baseType: !59, size: 32, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !482, file: !129, line: 389, baseType: !107, size: 16, offset: 928)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !482, file: !129, line: 396, baseType: !35, size: 32, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !482, file: !129, line: 397, baseType: !35, size: 32, offset: 992)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !482, file: !129, line: 400, baseType: !35, size: 32, offset: 1024)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !482, file: !129, line: 401, baseType: !35, size: 32, offset: 1056)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !482, file: !129, line: 402, baseType: !451, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !482, file: !129, line: 406, baseType: !35, size: 32, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !482, file: !129, line: 407, baseType: !35, size: 32, offset: 1184)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !482, file: !129, line: 408, baseType: !35, size: 32, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !482, file: !129, line: 409, baseType: !35, size: 32, offset: 1248)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !482, file: !129, line: 410, baseType: !35, size: 32, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !482, file: !129, line: 411, baseType: !35, size: 32, offset: 1312)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !482, file: !129, line: 412, baseType: !35, size: 32, offset: 1344)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !482, file: !129, line: 413, baseType: !59, size: 32, offset: 1376)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !482, file: !129, line: 414, baseType: !59, size: 32, offset: 1408)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !482, file: !129, line: 415, baseType: !79, size: 8, offset: 1440)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !482, file: !129, line: 416, baseType: !523, size: 32, offset: 1472)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !482, file: !129, line: 417, baseType: !35, size: 32, offset: 1504)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !482, file: !129, line: 418, baseType: !35, size: 32, offset: 1536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !482, file: !129, line: 419, baseType: !35, size: 32, offset: 1568)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !482, file: !129, line: 420, baseType: !35, size: 32, offset: 1600)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !482, file: !129, line: 421, baseType: !35, size: 32, offset: 1632)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !482, file: !129, line: 422, baseType: !35, size: 32, offset: 1664)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !482, file: !129, line: 423, baseType: !35, size: 32, offset: 1696)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !482, file: !129, line: 426, baseType: !35, size: 32, offset: 1728)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !482, file: !129, line: 427, baseType: !35, size: 32, offset: 1760)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !482, file: !129, line: 428, baseType: !35, size: 32, offset: 1792)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !482, file: !129, line: 429, baseType: !35, size: 32, offset: 1824)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !482, file: !129, line: 430, baseType: !35, size: 32, offset: 1856)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !482, file: !129, line: 431, baseType: !35, size: 32, offset: 1888)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !482, file: !129, line: 432, baseType: !35, size: 32, offset: 1920)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !482, file: !129, line: 433, baseType: !35, size: 32, offset: 1952)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !482, file: !129, line: 434, baseType: !610, size: 64, offset: 1984)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !482, file: !129, line: 436, baseType: !710, size: 48, offset: 2048)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 48, elements: !241)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !482, file: !129, line: 437, baseType: !712, size: 384, offset: 2112)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 384, elements: !241)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !482, file: !129, line: 440, baseType: !714, size: 64, offset: 2496)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !129, line: 324, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !129, line: 314, size: 384, elements: !717)
!717 = !{!718, !729, !738}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !716, file: !129, line: 317, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !129, line: 47, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !129, line: 300, size: 256, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !721, file: !129, line: 303, baseType: !35, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !721, file: !129, line: 304, baseType: !35, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !721, file: !129, line: 306, baseType: !35, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !721, file: !129, line: 307, baseType: !35, size: 32, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !721, file: !129, line: 309, baseType: !256, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !721, file: !129, line: 310, baseType: !35, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !716, file: !129, line: 318, baseType: !730, size: 256, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !129, line: 95, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 88, size: 256, elements: !732)
!732 = !{!733, !734, !735, !736, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !731, file: !129, line: 90, baseType: !59, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !731, file: !129, line: 91, baseType: !59, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !731, file: !129, line: 92, baseType: !35, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !731, file: !129, line: 93, baseType: !256, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !731, file: !129, line: 94, baseType: !201, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !716, file: !129, line: 320, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!35, !742, !874, !872}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !129, line: 273, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !129, line: 197, size: 3840, elements: !745)
!745 = !{!746, !748, !749, !750, !751, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !780, !781, !782, !783, !784, !788, !789, !798, !799, !800, !801, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !827, !828, !843, !849, !873}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !744, file: !129, line: 199, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !744, file: !129, line: 200, baseType: !485, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !744, file: !129, line: 201, baseType: !133, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !744, file: !129, line: 202, baseType: !35, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !744, file: !129, line: 203, baseType: !752, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !129, line: 112, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 108, size: 32, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !753, file: !129, line: 110, baseType: !107, size: 16)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !753, file: !129, line: 111, baseType: !107, size: 16, offset: 16)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !744, file: !129, line: 204, baseType: !35, size: 32, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !744, file: !129, line: 205, baseType: !35, size: 32, offset: 288)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !744, file: !129, line: 206, baseType: !35, size: 32, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !744, file: !129, line: 207, baseType: !35, size: 32, offset: 352)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !744, file: !129, line: 208, baseType: !35, size: 32, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !744, file: !129, line: 209, baseType: !35, size: 32, offset: 416)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !744, file: !129, line: 210, baseType: !35, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !744, file: !129, line: 212, baseType: !35, size: 32, offset: 480)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !744, file: !129, line: 213, baseType: !35, size: 32, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !744, file: !129, line: 215, baseType: !35, size: 32, offset: 544)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !744, file: !129, line: 216, baseType: !451, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !744, file: !129, line: 217, baseType: !85, size: 96, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !744, file: !129, line: 218, baseType: !35, size: 32, offset: 736)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !744, file: !129, line: 219, baseType: !35, size: 32, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !744, file: !129, line: 220, baseType: !35, size: 32, offset: 800)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !744, file: !129, line: 221, baseType: !35, size: 32, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !744, file: !129, line: 223, baseType: !107, size: 16, offset: 864)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !744, file: !129, line: 224, baseType: !98, size: 8, offset: 880)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !744, file: !129, line: 225, baseType: !98, size: 8, offset: 888)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !744, file: !129, line: 226, baseType: !107, size: 16, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !744, file: !129, line: 227, baseType: !107, size: 16, offset: 912)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !744, file: !129, line: 229, baseType: !779, size: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !744, file: !129, line: 230, baseType: !779, size: 64, offset: 1024)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !744, file: !129, line: 232, baseType: !779, size: 64, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !744, file: !129, line: 233, baseType: !779, size: 64, offset: 1152)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !744, file: !129, line: 236, baseType: !107, size: 16, offset: 1216)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !744, file: !129, line: 237, baseType: !785, size: 1024, offset: 1232)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1024, elements: !786)
!786 = !{!453, !787, !787, !453}
!787 = !DISubrange(count: 4)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !744, file: !129, line: 239, baseType: !35, size: 32, offset: 2272)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !744, file: !129, line: 240, baseType: !790, size: 192, offset: 2304)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 192, elements: !86)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !792, line: 103, baseType: !793)
!792 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !794, line: 27, baseType: !795)
!794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !796, line: 44, baseType: !797)
!796 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!797 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !744, file: !129, line: 241, baseType: !790, size: 192, offset: 2496)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !744, file: !129, line: 242, baseType: !790, size: 192, offset: 2688)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !744, file: !129, line: 244, baseType: !35, size: 32, offset: 2880)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !744, file: !129, line: 245, baseType: !802, size: 32, offset: 2912)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !803)
!803 = !{!787}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !744, file: !129, line: 246, baseType: !802, size: 32, offset: 2944)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !744, file: !129, line: 247, baseType: !98, size: 8, offset: 2976)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !744, file: !129, line: 248, baseType: !98, size: 8, offset: 2984)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !744, file: !129, line: 249, baseType: !98, size: 8, offset: 2992)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !744, file: !129, line: 250, baseType: !107, size: 16, offset: 3008)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !744, file: !129, line: 251, baseType: !107, size: 16, offset: 3024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !744, file: !129, line: 252, baseType: !107, size: 16, offset: 3040)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !744, file: !129, line: 254, baseType: !35, size: 32, offset: 3072)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !744, file: !129, line: 256, baseType: !35, size: 32, offset: 3104)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !744, file: !129, line: 256, baseType: !35, size: 32, offset: 3136)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !744, file: !129, line: 256, baseType: !35, size: 32, offset: 3168)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !744, file: !129, line: 256, baseType: !35, size: 32, offset: 3200)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !744, file: !129, line: 257, baseType: !35, size: 32, offset: 3232)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !744, file: !129, line: 257, baseType: !35, size: 32, offset: 3264)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !744, file: !129, line: 257, baseType: !35, size: 32, offset: 3296)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !744, file: !129, line: 257, baseType: !35, size: 32, offset: 3328)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !744, file: !129, line: 259, baseType: !35, size: 32, offset: 3360)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !744, file: !129, line: 260, baseType: !35, size: 32, offset: 3392)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !744, file: !129, line: 262, baseType: !823, size: 64, offset: 3456)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !779, !826, !35, !35}
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !58, line: 32, baseType: !64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !744, file: !129, line: 263, baseType: !823, size: 64, offset: 3520)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !744, file: !129, line: 265, baseType: !829, size: 64, offset: 3584)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !779, !832, !842, !107, !564, !35, !35, !35, !35, !35}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !129, line: 85, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !129, line: 77, size: 128, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !834, file: !129, line: 79, baseType: !35, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !834, file: !129, line: 80, baseType: !35, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !834, file: !129, line: 81, baseType: !107, size: 16, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !834, file: !129, line: 82, baseType: !107, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !834, file: !129, line: 83, baseType: !107, size: 16, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !834, file: !129, line: 84, baseType: !107, size: 16, offset: 112)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !744, file: !129, line: 268, baseType: !844, size: 64, offset: 3648)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!35, !779, !847, !35}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !129, line: 97, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !744, file: !129, line: 269, baseType: !850, size: 64, offset: 3712)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!98, !779, !853, !872, !98, !35}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !129, line: 276, size: 384, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !868}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !854, file: !129, line: 278, baseType: !35, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !854, file: !129, line: 279, baseType: !35, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !854, file: !129, line: 280, baseType: !35, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !854, file: !129, line: 281, baseType: !35, size: 32, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !854, file: !129, line: 282, baseType: !35, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !854, file: !129, line: 283, baseType: !59, size: 32, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !854, file: !129, line: 284, baseType: !35, size: 32, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !854, file: !129, line: 285, baseType: !35, size: 32, offset: 224)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !854, file: !129, line: 293, baseType: !865, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !35, !35, !201, !201}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !854, file: !129, line: 295, baseType: !869, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !742, !853, !847}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !744, file: !129, line: 272, baseType: !79, size: 8, offset: 3776)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !129, line: 296, baseType: !854)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !482, file: !129, line: 441, baseType: !877, size: 64, offset: 2560)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !129, line: 153, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 145, size: 2912, elements: !880)
!880 = !{!881, !891, !895, !899, !902, !904}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !879, file: !129, line: 147, baseType: !882, size: 1056)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 1056, elements: !889)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !129, line: 122, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 117, size: 32, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !884, file: !129, line: 119, baseType: !559, size: 16)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !884, file: !129, line: 120, baseType: !81, size: 8, offset: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !884, file: !129, line: 121, baseType: !81, size: 8, offset: 24)
!889 = !{!87, !890}
!890 = !DISubrange(count: 11)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !879, file: !129, line: 148, baseType: !892, size: 576, offset: 1056)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 576, elements: !893)
!893 = !{!453, !894}
!894 = !DISubrange(count: 9)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !879, file: !129, line: 149, baseType: !896, size: 640, offset: 1632)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 640, elements: !897)
!897 = !{!453, !898}
!898 = !DISubrange(count: 10)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !879, file: !129, line: 150, baseType: !900, size: 384, offset: 2272)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 384, elements: !901)
!901 = !{!453, !233}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !879, file: !129, line: 151, baseType: !903, size: 128, offset: 2656)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 128, elements: !803)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !879, file: !129, line: 152, baseType: !903, size: 128, offset: 2784)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !482, file: !129, line: 442, baseType: !906, size: 64, offset: 2624)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !129, line: 175, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 164, size: 52768, elements: !909)
!909 = !{!910, !912, !914, !915, !918, !922, !926, !927, !931}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !908, file: !129, line: 166, baseType: !911, size: 96)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 96, elements: !86)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !908, file: !129, line: 167, baseType: !913, size: 64, offset: 96)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 64, elements: !452)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !908, file: !129, line: 168, baseType: !903, size: 128, offset: 160)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !908, file: !129, line: 169, baseType: !916, size: 384, offset: 288)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 384, elements: !917)
!917 = !{!87, !787}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !908, file: !129, line: 170, baseType: !919, size: 2816, offset: 672)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 2816, elements: !920)
!920 = !{!921, !787}
!921 = !DISubrange(count: 22)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !908, file: !129, line: 171, baseType: !923, size: 21120, offset: 3488)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 21120, elements: !924)
!924 = !{!453, !921, !925}
!925 = !DISubrange(count: 15)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !908, file: !129, line: 172, baseType: !923, size: 21120, offset: 24608)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !908, file: !129, line: 173, baseType: !928, size: 3520, offset: 45728)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 3520, elements: !929)
!929 = !{!921, !930}
!930 = !DISubrange(count: 5)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !908, file: !129, line: 174, baseType: !928, size: 3520, offset: 49248)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !482, file: !129, line: 444, baseType: !933, size: 6144, offset: 2688)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6144, elements: !934)
!934 = !{!233, !351}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !482, file: !129, line: 446, baseType: !451, size: 64, offset: 8832)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !482, file: !129, line: 447, baseType: !937, size: 128, offset: 8896)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !452)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !482, file: !129, line: 448, baseType: !937, size: 128, offset: 9024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !482, file: !129, line: 449, baseType: !937, size: 128, offset: 9152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !482, file: !129, line: 452, baseType: !937, size: 128, offset: 9280)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !482, file: !129, line: 454, baseType: !35, size: 32, offset: 9408)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !482, file: !129, line: 455, baseType: !35, size: 32, offset: 9440)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !482, file: !129, line: 456, baseType: !35, size: 32, offset: 9472)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !482, file: !129, line: 458, baseType: !945, size: 256, offset: 9504)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !129, line: 337, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !129, line: 327, size: 256, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !946, file: !129, line: 329, baseType: !59, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !946, file: !129, line: 330, baseType: !59, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !946, file: !129, line: 331, baseType: !59, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !946, file: !129, line: 332, baseType: !59, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !946, file: !129, line: 333, baseType: !59, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !946, file: !129, line: 334, baseType: !59, size: 32, offset: 160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !946, file: !129, line: 335, baseType: !59, size: 32, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !946, file: !129, line: 336, baseType: !59, size: 32, offset: 224)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !482, file: !129, line: 461, baseType: !107, size: 16, offset: 9760)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !482, file: !129, line: 462, baseType: !107, size: 16, offset: 9776)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !482, file: !129, line: 463, baseType: !107, size: 16, offset: 9792)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !482, file: !129, line: 465, baseType: !35, size: 32, offset: 9824)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !482, file: !129, line: 467, baseType: !35, size: 32, offset: 9856)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !482, file: !129, line: 468, baseType: !35, size: 32, offset: 9888)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !482, file: !129, line: 470, baseType: !35, size: 32, offset: 9920)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !482, file: !129, line: 471, baseType: !561, size: 64, offset: 9984)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !482, file: !129, line: 472, baseType: !561, size: 64, offset: 10048)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !482, file: !129, line: 473, baseType: !400, size: 64, offset: 10112)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !482, file: !129, line: 474, baseType: !400, size: 64, offset: 10176)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !482, file: !129, line: 475, baseType: !400, size: 64, offset: 10240)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !482, file: !129, line: 477, baseType: !969, size: 512, offset: 10304)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !970)
!970 = !{!234}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !482, file: !129, line: 479, baseType: !556, size: 64, offset: 10816)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !482, file: !129, line: 480, baseType: !556, size: 64, offset: 10880)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !482, file: !129, line: 481, baseType: !387, size: 64, offset: 10944)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !482, file: !129, line: 482, baseType: !556, size: 64, offset: 11008)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !482, file: !129, line: 483, baseType: !556, size: 64, offset: 11072)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !482, file: !129, line: 486, baseType: !977, size: 9216, offset: 11136)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 9216, elements: !978)
!978 = !{!87, !233, !787, !787}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !482, file: !129, line: 487, baseType: !977, size: 9216, offset: 20352)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !482, file: !129, line: 488, baseType: !981, size: 36864, offset: 29568)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 36864, elements: !982)
!982 = !{!87, !233, !249, !249}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !482, file: !129, line: 489, baseType: !981, size: 36864, offset: 66432)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !482, file: !129, line: 491, baseType: !985, size: 768, offset: 103296)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 768, elements: !228)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !482, file: !129, line: 494, baseType: !987, size: 2048, offset: 104064)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !988)
!988 = !{!238}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !482, file: !129, line: 495, baseType: !35, size: 32, offset: 106112)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !482, file: !129, line: 496, baseType: !35, size: 32, offset: 106144)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !482, file: !129, line: 500, baseType: !322, size: 16, offset: 106176)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !482, file: !129, line: 501, baseType: !322, size: 16, offset: 106192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !482, file: !129, line: 503, baseType: !322, size: 16, offset: 106208)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !482, file: !129, line: 504, baseType: !322, size: 16, offset: 106224)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !482, file: !129, line: 505, baseType: !400, size: 64, offset: 106240)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !482, file: !129, line: 506, baseType: !400, size: 64, offset: 106304)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !482, file: !129, line: 507, baseType: !998, size: 64, offset: 106368)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !482, file: !129, line: 508, baseType: !107, size: 16, offset: 106432)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !482, file: !129, line: 509, baseType: !107, size: 16, offset: 106448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !482, file: !129, line: 512, baseType: !35, size: 32, offset: 106464)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !482, file: !129, line: 513, baseType: !35, size: 32, offset: 106496)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !482, file: !129, line: 514, baseType: !1004, size: 64, offset: 106560)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !482, file: !129, line: 515, baseType: !1004, size: 64, offset: 106624)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !482, file: !129, line: 520, baseType: !35, size: 32, offset: 106688)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !482, file: !129, line: 521, baseType: !1009, size: 544, offset: 106720)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 544, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 17)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !482, file: !129, line: 523, baseType: !1013, size: 64, offset: 107264)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !742}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !482, file: !129, line: 524, baseType: !1017, size: 64, offset: 107328)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!35, !742, !826, !556, !570}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !482, file: !129, line: 525, baseType: !1021, size: 64, offset: 107392)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!35, !485, !133}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !482, file: !129, line: 526, baseType: !1025, size: 64, offset: 107456)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!35, !747, !35}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !482, file: !129, line: 527, baseType: !1013, size: 64, offset: 107520)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !482, file: !129, line: 528, baseType: !1013, size: 64, offset: 107584)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !482, file: !129, line: 529, baseType: !1013, size: 64, offset: 107648)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !482, file: !129, line: 530, baseType: !1032, size: 64, offset: 107712)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !747}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !482, file: !129, line: 531, baseType: !1013, size: 64, offset: 107776)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !482, file: !129, line: 532, baseType: !865, size: 64, offset: 107840)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !482, file: !129, line: 533, baseType: !865, size: 64, offset: 107904)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !482, file: !129, line: 534, baseType: !1013, size: 64, offset: 107968)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !482, file: !129, line: 535, baseType: !35, size: 32, offset: 108032)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !482, file: !129, line: 536, baseType: !742, size: 64, offset: 108096)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !482, file: !129, line: 537, baseType: !570, size: 64, offset: 108160)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !482, file: !129, line: 538, baseType: !387, size: 64, offset: 108224)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !482, file: !129, line: 539, baseType: !1044, size: 64, offset: 108288)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !482, file: !129, line: 540, baseType: !97, size: 64, offset: 108352)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !482, file: !129, line: 541, baseType: !1047, size: 768, offset: 108416)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 768, elements: !232)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !130, file: !129, line: 596, baseType: !97, size: 64, offset: 6789952)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !130, file: !129, line: 597, baseType: !1050, size: 192, offset: 6790016)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !86)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !129, line: 601, baseType: !35, size: 32, offset: 6790208)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !130, file: !129, line: 602, baseType: !35, size: 32, offset: 6790240)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !130, file: !129, line: 603, baseType: !35, size: 32, offset: 6790272)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !130, file: !129, line: 604, baseType: !35, size: 32, offset: 6790304)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !130, file: !129, line: 605, baseType: !35, size: 32, offset: 6790336)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !130, file: !129, line: 607, baseType: !1044, size: 64, offset: 6790400)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !130, file: !129, line: 608, baseType: !1058, size: 192, offset: 6790464)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 192, elements: !86)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !130, file: !129, line: 609, baseType: !1060, size: 64, offset: 6790656)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !130, file: !129, line: 610, baseType: !387, size: 64, offset: 6790720)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !130, file: !129, line: 611, baseType: !1064, size: 192, offset: 6790784)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 192, elements: !86)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !130, file: !129, line: 613, baseType: !35, size: 32, offset: 6790976)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !130, file: !129, line: 614, baseType: !35, size: 32, offset: 6791008)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !130, file: !129, line: 617, baseType: !480, size: 64, offset: 6791040)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !130, file: !129, line: 618, baseType: !742, size: 64, offset: 6791104)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !130, file: !129, line: 619, baseType: !1070, size: 192, offset: 6791168)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 192, elements: !86)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !130, file: !129, line: 621, baseType: !35, size: 32, offset: 6791360)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !130, file: !129, line: 626, baseType: !1073, size: 64, offset: 6791424)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !91, line: 136, size: 192, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !1074, file: !91, line: 137, baseType: !518, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "missingpocs", scope: !1074, file: !91, line: 138, baseType: !35, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1074, file: !91, line: 139, baseType: !1073, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !130, file: !129, line: 627, baseType: !1073, size: 64, offset: 6791488)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !130, file: !129, line: 629, baseType: !59, size: 32, offset: 6791552)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !130, file: !129, line: 630, baseType: !35, size: 32, offset: 6791584)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !130, file: !129, line: 634, baseType: !35, size: 32, offset: 6791616)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !130, file: !129, line: 635, baseType: !59, size: 32, offset: 6791648)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !130, file: !129, line: 638, baseType: !35, size: 32, offset: 6791680)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !130, file: !129, line: 638, baseType: !35, size: 32, offset: 6791712)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !130, file: !129, line: 638, baseType: !35, size: 32, offset: 6791744)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !130, file: !129, line: 639, baseType: !59, size: 32, offset: 6791776)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !130, file: !129, line: 639, baseType: !59, size: 32, offset: 6791808)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !130, file: !129, line: 640, baseType: !35, size: 32, offset: 6791840)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !130, file: !129, line: 641, baseType: !35, size: 32, offset: 6791872)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !130, file: !129, line: 642, baseType: !35, size: 32, offset: 6791904)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !130, file: !129, line: 645, baseType: !35, size: 32, offset: 6791936)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !130, file: !129, line: 647, baseType: !59, size: 32, offset: 6791968)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !130, file: !129, line: 648, baseType: !59, size: 32, offset: 6792000)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !130, file: !129, line: 649, baseType: !59, size: 32, offset: 6792032)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !130, file: !129, line: 650, baseType: !59, size: 32, offset: 6792064)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !130, file: !129, line: 651, baseType: !59, size: 32, offset: 6792096)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !130, file: !129, line: 652, baseType: !59, size: 32, offset: 6792128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !130, file: !129, line: 653, baseType: !59, size: 32, offset: 6792160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !130, file: !129, line: 655, baseType: !35, size: 32, offset: 6792192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !130, file: !129, line: 657, baseType: !35, size: 32, offset: 6792224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !130, file: !129, line: 658, baseType: !35, size: 32, offset: 6792256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !130, file: !129, line: 661, baseType: !35, size: 32, offset: 6792288)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !130, file: !129, line: 662, baseType: !107, size: 16, offset: 6792320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !130, file: !129, line: 663, baseType: !107, size: 16, offset: 6792336)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !130, file: !129, line: 664, baseType: !451, size: 64, offset: 6792352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !130, file: !129, line: 665, baseType: !35, size: 32, offset: 6792416)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !130, file: !129, line: 666, baseType: !35, size: 32, offset: 6792448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !130, file: !129, line: 667, baseType: !1110, size: 96, offset: 6792480)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 96, elements: !86)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !130, file: !129, line: 668, baseType: !85, size: 96, offset: 6792576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !130, file: !129, line: 670, baseType: !35, size: 32, offset: 6792672)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !130, file: !129, line: 671, baseType: !35, size: 32, offset: 6792704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !130, file: !129, line: 672, baseType: !35, size: 32, offset: 6792736)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !130, file: !129, line: 673, baseType: !35, size: 32, offset: 6792768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !130, file: !129, line: 674, baseType: !35, size: 32, offset: 6792800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !130, file: !129, line: 675, baseType: !35, size: 32, offset: 6792832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !130, file: !129, line: 676, baseType: !35, size: 32, offset: 6792864)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !130, file: !129, line: 677, baseType: !35, size: 32, offset: 6792896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !130, file: !129, line: 678, baseType: !35, size: 32, offset: 6792928)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !130, file: !129, line: 679, baseType: !35, size: 32, offset: 6792960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !130, file: !129, line: 680, baseType: !1123, size: 192, offset: 6792992)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !1124)
!1124 = !{!87, !453}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !130, file: !129, line: 681, baseType: !1123, size: 192, offset: 6793184)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !130, file: !129, line: 682, baseType: !1123, size: 192, offset: 6793376)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !130, file: !129, line: 683, baseType: !35, size: 32, offset: 6793568)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !130, file: !129, line: 684, baseType: !35, size: 32, offset: 6793600)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !130, file: !129, line: 685, baseType: !35, size: 32, offset: 6793632)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !130, file: !129, line: 686, baseType: !35, size: 32, offset: 6793664)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !130, file: !129, line: 687, baseType: !35, size: 32, offset: 6793696)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !130, file: !129, line: 689, baseType: !35, size: 32, offset: 6793728)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !130, file: !129, line: 692, baseType: !35, size: 32, offset: 6793760)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !130, file: !129, line: 693, baseType: !35, size: 32, offset: 6793792)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !130, file: !129, line: 700, baseType: !35, size: 32, offset: 6793824)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !130, file: !129, line: 701, baseType: !35, size: 32, offset: 6793856)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !130, file: !129, line: 702, baseType: !35, size: 32, offset: 6793888)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !130, file: !129, line: 703, baseType: !35, size: 32, offset: 6793920)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !130, file: !129, line: 704, baseType: !35, size: 32, offset: 6793952)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !130, file: !129, line: 705, baseType: !59, size: 32, offset: 6793984)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !130, file: !129, line: 706, baseType: !35, size: 32, offset: 6794016)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !130, file: !129, line: 707, baseType: !35, size: 32, offset: 6794048)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !130, file: !129, line: 710, baseType: !35, size: 32, offset: 6794080)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !130, file: !129, line: 711, baseType: !35, size: 32, offset: 6794112)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !130, file: !129, line: 712, baseType: !35, size: 32, offset: 6794144)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !130, file: !129, line: 713, baseType: !35, size: 32, offset: 6794176)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !130, file: !129, line: 714, baseType: !35, size: 32, offset: 6794208)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !130, file: !129, line: 716, baseType: !35, size: 32, offset: 6794240)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !130, file: !129, line: 717, baseType: !35, size: 32, offset: 6794272)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !130, file: !129, line: 719, baseType: !256, size: 64, offset: 6794304)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !130, file: !129, line: 720, baseType: !256, size: 64, offset: 6794368)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !130, file: !129, line: 722, baseType: !1153, size: 2560, offset: 6794432)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1154, line: 38, baseType: !1155)
!1154 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1154, line: 20, size: 2560, elements: !1156)
!1156 = !{!1157, !1158, !1160, !1161, !1162, !1166, !1167, !1168, !1169, !1170}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1155, file: !1154, line: 22, baseType: !149, size: 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1155, file: !1154, line: 24, baseType: !1159, size: 192, offset: 1088)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, elements: !86)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1155, file: !1154, line: 25, baseType: !1159, size: 192, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1155, file: !1154, line: 26, baseType: !1159, size: 192, offset: 1472)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1155, file: !1154, line: 31, baseType: !1163, size: 192, offset: 1664)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 192, elements: !86)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1155, file: !1154, line: 32, baseType: !1163, size: 192, offset: 1856)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1155, file: !1154, line: 33, baseType: !1163, size: 192, offset: 2048)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1155, file: !1154, line: 35, baseType: !85, size: 96, offset: 2240)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1155, file: !1154, line: 36, baseType: !85, size: 96, offset: 2336)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1155, file: !1154, line: 37, baseType: !85, size: 96, offset: 2432)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !130, file: !129, line: 723, baseType: !1153, size: 2560, offset: 6796992)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !130, file: !129, line: 724, baseType: !1153, size: 2560, offset: 6799552)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !130, file: !129, line: 725, baseType: !1153, size: 2560, offset: 6802112)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !130, file: !129, line: 728, baseType: !1153, size: 2560, offset: 6804672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !130, file: !129, line: 729, baseType: !1153, size: 2560, offset: 6807232)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !130, file: !129, line: 730, baseType: !1153, size: 2560, offset: 6809792)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !130, file: !129, line: 731, baseType: !1153, size: 2560, offset: 6812352)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !130, file: !129, line: 735, baseType: !59, size: 32, offset: 6814912)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !130, file: !129, line: 737, baseType: !35, size: 32, offset: 6814944)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !130, file: !129, line: 738, baseType: !35, size: 32, offset: 6814976)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !130, file: !129, line: 741, baseType: !791, size: 64, offset: 6815040)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !130, file: !129, line: 744, baseType: !35, size: 32, offset: 6815104)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !130, file: !129, line: 746, baseType: !654, size: 32768, offset: 6815136)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !130, file: !129, line: 748, baseType: !35, size: 32, offset: 6847904)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !130, file: !129, line: 751, baseType: !35, size: 32, offset: 6847936)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !130, file: !129, line: 752, baseType: !35, size: 32, offset: 6847968)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !130, file: !129, line: 755, baseType: !35, size: 32, offset: 6848000)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !130, file: !129, line: 756, baseType: !35, size: 32, offset: 6848032)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !130, file: !129, line: 758, baseType: !35, size: 32, offset: 6848064)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !130, file: !129, line: 759, baseType: !35, size: 32, offset: 6848096)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !130, file: !129, line: 762, baseType: !556, size: 64, offset: 6848128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !130, file: !129, line: 763, baseType: !561, size: 64, offset: 6848192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !130, file: !129, line: 765, baseType: !201, size: 64, offset: 6848256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !130, file: !129, line: 766, baseType: !201, size: 64, offset: 6848320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !130, file: !129, line: 768, baseType: !1005, size: 64, offset: 6848384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !130, file: !129, line: 769, baseType: !1197, size: 3200, offset: 6848448)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3200, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 100)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !130, file: !129, line: 771, baseType: !570, size: 64, offset: 6851648)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !130, file: !129, line: 772, baseType: !1202, size: 192, offset: 6851712)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 192, elements: !86)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !130, file: !129, line: 773, baseType: !570, size: 64, offset: 6851904)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !130, file: !129, line: 776, baseType: !1205, size: 64, offset: 6851968)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !130, file: !129, line: 777, baseType: !1207, size: 64, offset: 6852032)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !130, file: !129, line: 779, baseType: !35, size: 32, offset: 6852096)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !130, file: !129, line: 780, baseType: !485, size: 64, offset: 6852160)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !130, file: !129, line: 781, baseType: !1211, size: 640, offset: 6852224)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 20)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !130, file: !129, line: 783, baseType: !1215, size: 64, offset: 6852864)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !129, line: 783, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !130, file: !129, line: 784, baseType: !1218, size: 64, offset: 6852928)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !129, line: 784, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !130, file: !129, line: 786, baseType: !1005, size: 64, offset: 6852992)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !130, file: !129, line: 788, baseType: !570, size: 64, offset: 6853056)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !130, file: !129, line: 789, baseType: !35, size: 32, offset: 6853120)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !130, file: !129, line: 790, baseType: !35, size: 32, offset: 6853152)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !130, file: !129, line: 792, baseType: !35, size: 32, offset: 6853184)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !130, file: !129, line: 794, baseType: !491, size: 64, offset: 6853248)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !130, file: !129, line: 795, baseType: !491, size: 64, offset: 6853312)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !130, file: !129, line: 796, baseType: !1228, size: 128, offset: 6853376)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 128, elements: !452)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !130, file: !129, line: 800, baseType: !1230, size: 72, offset: 6853504)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1231)
!1231 = !{!894}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !130, file: !129, line: 802, baseType: !201, size: 64, offset: 6853632)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !130, file: !129, line: 803, baseType: !201, size: 64, offset: 6853696)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !130, file: !129, line: 804, baseType: !35, size: 32, offset: 6853760)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !130, file: !129, line: 807, baseType: !1236, size: 64, offset: 6853824)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !129, line: 807, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !130, file: !129, line: 810, baseType: !1239, size: 64, offset: 6853888)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !556, !1242, !35, !35, !35, !35, !35, !35}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !130, file: !129, line: 811, baseType: !1244, size: 64, offset: 6853952)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !742, !35, !35, !201, !832}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !130, file: !129, line: 812, baseType: !1248, size: 64, offset: 6854016)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !35, !590, !590}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !130, file: !129, line: 813, baseType: !1252, size: 64, offset: 6854080)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !256, !742, !35, !35, !570}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !130, file: !129, line: 814, baseType: !1252, size: 64, offset: 6854144)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !130, file: !129, line: 815, baseType: !1257, size: 64, offset: 6854208)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !826, !556, !256, !742, !35, !570}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !130, file: !129, line: 816, baseType: !1257, size: 64, offset: 6854272)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !130, file: !129, line: 817, baseType: !1262, size: 64, offset: 6854336)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !556, !256, !742, !35, !35, !570}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !130, file: !129, line: 818, baseType: !1262, size: 64, offset: 6854400)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !130, file: !129, line: 819, baseType: !1267, size: 64, offset: 6854464)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !556, !1242, !35, !35, !35, !35, !35, !35, !35, !35}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !130, file: !129, line: 821, baseType: !1271, size: 64, offset: 6854528)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !129, line: 561, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !129, line: 544, size: 640, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1273, file: !129, line: 546, baseType: !35, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1273, file: !129, line: 547, baseType: !35, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1273, file: !129, line: 548, baseType: !35, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1273, file: !129, line: 549, baseType: !35, size: 32, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1273, file: !129, line: 550, baseType: !35, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1273, file: !129, line: 551, baseType: !35, size: 32, offset: 160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1273, file: !129, line: 552, baseType: !256, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1273, file: !129, line: 553, baseType: !256, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1273, file: !129, line: 554, baseType: !256, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1273, file: !129, line: 555, baseType: !35, size: 32, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1273, file: !129, line: 556, baseType: !35, size: 32, offset: 416)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1273, file: !129, line: 557, baseType: !35, size: 32, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1273, file: !129, line: 558, baseType: !35, size: 32, offset: 480)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1273, file: !129, line: 559, baseType: !35, size: 32, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1273, file: !129, line: 560, baseType: !1290, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !130, file: !129, line: 822, baseType: !35, size: 32, offset: 6854592)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !130, file: !129, line: 823, baseType: !1293, size: 64, offset: 6854656)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !129, line: 823, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !130, file: !129, line: 824, baseType: !35, size: 32, offset: 6854720)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !130, file: !129, line: 825, baseType: !35, size: 32, offset: 6854752)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !130, file: !129, line: 826, baseType: !35, size: 32, offset: 6854784)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !130, file: !129, line: 827, baseType: !35, size: 32, offset: 6854816)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !130, file: !129, line: 829, baseType: !35, size: 32, offset: 6854848)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !130, file: !129, line: 830, baseType: !35, size: 32, offset: 6854880)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !130, file: !129, line: 831, baseType: !35, size: 32, offset: 6854912)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !130, file: !129, line: 835, baseType: !215, size: 64, offset: 6854976)
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !124, file: !2, line: 29, type: !127)
!1305 = !DILocalVariable(name: "pic_sizex", arg: 2, scope: !124, file: !2, line: 29, type: !35)
!1306 = !DILocalVariable(name: "pic_sizey", arg: 3, scope: !124, file: !2, line: 29, type: !35)
!1307 = !DILocalVariable(name: "flag", arg: 4, scope: !124, file: !2, line: 29, type: !35)
!1308 = !DILocation(line: 0, scope: !124)
!1309 = !DILocation(line: 31, column: 26, scope: !124)
!1310 = !DILocation(line: 31, column: 3, scope: !124)
!1311 = !DILocation(line: 32, column: 65, scope: !124)
!1312 = !DILocation(line: 32, column: 78, scope: !124)
!1313 = !DILocation(line: 32, column: 54, scope: !124)
!1314 = !DILocation(line: 32, column: 47, scope: !124)
!1315 = !DILocation(line: 32, column: 10, scope: !124)
!1316 = !DILocation(line: 32, column: 26, scope: !124)
!1317 = !DILocation(line: 33, column: 30, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !124, file: !2, line: 33, column: 7)
!1319 = !DILocation(line: 33, column: 7, scope: !124)
!1320 = !DILocation(line: 33, column: 39, scope: !1318)
!1321 = !DILocalVariable(name: "errorVar", scope: !1322, file: !2, line: 52, type: !89)
!1322 = distinct !DISubprogram(name: "ercOpen", scope: !2, file: !2, line: 50, type: !1323, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!89}
!1325 = !{!1321}
!1326 = !DILocation(line: 0, scope: !1322, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 36, column: 25, scope: !124)
!1328 = !DILocation(line: 54, column: 32, scope: !1322, inlinedAt: !1327)
!1329 = !DILocation(line: 55, column: 17, scope: !1330, inlinedAt: !1327)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 55, column: 8)
!1331 = !DILocation(line: 55, column: 8, scope: !1322, inlinedAt: !1327)
!1332 = !DILocation(line: 55, column: 27, scope: !1330, inlinedAt: !1327)
!1333 = !DILocation(line: 57, column: 20, scope: !1322, inlinedAt: !1327)
!1334 = !DILocation(line: 60, column: 13, scope: !1322, inlinedAt: !1327)
!1335 = !DILocation(line: 63, column: 13, scope: !1322, inlinedAt: !1327)
!1336 = !DILocation(line: 63, column: 33, scope: !1322, inlinedAt: !1327)
!1337 = !DILocation(line: 65, column: 13, scope: !1322, inlinedAt: !1327)
!1338 = !DILocation(line: 60, column: 24, scope: !1322, inlinedAt: !1327)
!1339 = !DILocation(line: 36, column: 23, scope: !124)
!1340 = !DILocalVariable(name: "errorVar", arg: 1, scope: !1341, file: !2, line: 207, type: !89)
!1341 = distinct !DISubprogram(name: "ercSetErrorConcealment", scope: !2, file: !2, line: 207, type: !1342, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !89, !35}
!1344 = !{!1340, !1345}
!1345 = !DILocalVariable(name: "value", arg: 2, scope: !1341, file: !2, line: 207, type: !35)
!1346 = !DILocation(line: 0, scope: !1341, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 39, column: 3, scope: !124)
!1348 = !DILocation(line: 210, column: 27, scope: !1349, inlinedAt: !1347)
!1349 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 209, column: 8)
!1350 = !DILocation(line: 40, column: 1, scope: !124)
!1351 = distinct !DISubprogram(name: "ercClose", scope: !2, file: !2, line: 174, type: !1352, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !127, !89}
!1354 = !{!1355, !1356}
!1355 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1351, file: !2, line: 174, type: !127)
!1356 = !DILocalVariable(name: "errorVar", arg: 2, scope: !1351, file: !2, line: 174, type: !89)
!1357 = !DILocation(line: 0, scope: !1351)
!1358 = !DILocation(line: 176, column: 17, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 176, column: 8)
!1360 = !DILocation(line: 176, column: 8, scope: !1351)
!1361 = !DILocation(line: 178, column: 19, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 178, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 177, column: 3)
!1364 = !DILocation(line: 178, column: 30, scope: !1362)
!1365 = !DILocation(line: 178, column: 9, scope: !1363)
!1366 = !DILocation(line: 180, column: 23, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 179, column: 5)
!1368 = !DILocation(line: 180, column: 7, scope: !1367)
!1369 = !DILocation(line: 181, column: 23, scope: !1367)
!1370 = !DILocation(line: 181, column: 7, scope: !1367)
!1371 = !DILocation(line: 182, column: 23, scope: !1367)
!1372 = !DILocation(line: 182, column: 7, scope: !1367)
!1373 = !DILocation(line: 183, column: 23, scope: !1367)
!1374 = !DILocation(line: 183, column: 7, scope: !1367)
!1375 = !DILocation(line: 184, column: 23, scope: !1367)
!1376 = !DILocation(line: 184, column: 7, scope: !1367)
!1377 = !DILocation(line: 185, column: 5, scope: !1367)
!1378 = !DILocation(line: 186, column: 5, scope: !1363)
!1379 = !DILocation(line: 188, column: 3, scope: !1363)
!1380 = !DILocation(line: 190, column: 14, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 190, column: 7)
!1382 = !DILocation(line: 190, column: 7, scope: !1381)
!1383 = !DILocation(line: 190, column: 7, scope: !1351)
!1384 = !DILocation(line: 192, column: 5, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 191, column: 3)
!1386 = !DILocation(line: 193, column: 27, scope: !1385)
!1387 = !DILocation(line: 194, column: 3, scope: !1385)
!1388 = !DILocation(line: 195, column: 1, scope: !1351)
!1389 = !DISubprogram(name: "calloc", scope: !1390, file: !1390, line: 543, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!88, !1393, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1394, line: 18, baseType: !1395)
!1394 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1395 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1396 = !DISubprogram(name: "no_mem_exit", scope: !1397, file: !1397, line: 180, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1401 = !DILocation(line: 0, scope: !1322)
!1402 = !DILocation(line: 54, column: 32, scope: !1322)
!1403 = !DILocation(line: 55, column: 17, scope: !1330)
!1404 = !DILocation(line: 55, column: 8, scope: !1322)
!1405 = !DILocation(line: 55, column: 27, scope: !1330)
!1406 = !DILocation(line: 57, column: 20, scope: !1322)
!1407 = !DILocation(line: 60, column: 13, scope: !1322)
!1408 = !DILocation(line: 63, column: 13, scope: !1322)
!1409 = !DILocation(line: 63, column: 33, scope: !1322)
!1410 = !DILocation(line: 65, column: 13, scope: !1322)
!1411 = !DILocation(line: 60, column: 24, scope: !1322)
!1412 = !DILocation(line: 65, column: 25, scope: !1322)
!1413 = !DILocation(line: 67, column: 3, scope: !1322)
!1414 = !DILocation(line: 0, scope: !1341)
!1415 = !DILocation(line: 209, column: 17, scope: !1349)
!1416 = !DILocation(line: 209, column: 8, scope: !1341)
!1417 = !DILocation(line: 210, column: 15, scope: !1349)
!1418 = !DILocation(line: 210, column: 27, scope: !1349)
!1419 = !DILocation(line: 210, column: 5, scope: !1349)
!1420 = !DILocation(line: 211, column: 1, scope: !1341)
!1421 = !DISubprogram(name: "malloc", scope: !1390, file: !1390, line: 540, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!88, !1393}
!1424 = distinct !DISubprogram(name: "ercReset", scope: !2, file: !2, line: 85, type: !1425, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !89, !35, !35, !35}
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1428 = !DILocalVariable(name: "errorVar", arg: 1, scope: !1424, file: !2, line: 85, type: !89)
!1429 = !DILocalVariable(name: "nOfMBs", arg: 2, scope: !1424, file: !2, line: 85, type: !35)
!1430 = !DILocalVariable(name: "numOfSegments", arg: 3, scope: !1424, file: !2, line: 85, type: !35)
!1431 = !DILocalVariable(name: "picSizeX", arg: 4, scope: !1424, file: !2, line: 85, type: !35)
!1432 = !DILocalVariable(name: "tmp", scope: !1424, file: !2, line: 87, type: !97)
!1433 = !DILocalVariable(name: "i", scope: !1424, file: !2, line: 88, type: !35)
!1434 = !DILocalVariable(name: "segments", scope: !1435, file: !2, line: 92, type: !102)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 91, column: 3)
!1436 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 90, column: 8)
!1437 = !DILocation(line: 0, scope: !1424)
!1438 = !DILocation(line: 90, column: 8, scope: !1436)
!1439 = !DILocation(line: 90, column: 17, scope: !1436)
!1440 = !DILocation(line: 90, column: 30, scope: !1436)
!1441 = !DILocation(line: 90, column: 20, scope: !1436)
!1442 = !DILocation(line: 90, column: 8, scope: !1424)
!1443 = !DILocation(line: 0, scope: !1435)
!1444 = !DILocation(line: 94, column: 30, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 94, column: 10)
!1446 = !DILocation(line: 94, column: 17, scope: !1445)
!1447 = !DILocation(line: 94, column: 37, scope: !1445)
!1448 = !DILocation(line: 94, column: 50, scope: !1445)
!1449 = !DILocation(line: 94, column: 61, scope: !1445)
!1450 = !DILocation(line: 94, column: 10, scope: !1435)
!1451 = !DILocation(line: 96, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 95, column: 5)
!1453 = !DILocation(line: 97, column: 28, scope: !1452)
!1454 = !DILocation(line: 98, column: 23, scope: !1452)
!1455 = !DILocation(line: 98, column: 7, scope: !1452)
!1456 = !DILocation(line: 99, column: 37, scope: !1452)
!1457 = !DILocation(line: 100, column: 23, scope: !1452)
!1458 = !DILocation(line: 100, column: 7, scope: !1452)
!1459 = !DILocation(line: 101, column: 28, scope: !1452)
!1460 = !DILocation(line: 102, column: 23, scope: !1452)
!1461 = !DILocation(line: 102, column: 7, scope: !1452)
!1462 = !DILocation(line: 103, column: 28, scope: !1452)
!1463 = !DILocation(line: 104, column: 23, scope: !1452)
!1464 = !DILocation(line: 104, column: 7, scope: !1452)
!1465 = !DILocation(line: 105, column: 26, scope: !1452)
!1466 = !DILocation(line: 106, column: 5, scope: !1452)
!1467 = !DILocation(line: 109, column: 20, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 109, column: 10)
!1469 = !DILocation(line: 109, column: 31, scope: !1468)
!1470 = !DILocation(line: 109, column: 10, scope: !1435)
!1471 = !DILocation(line: 111, column: 52, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 110, column: 5)
!1473 = !DILocation(line: 111, column: 65, scope: !1472)
!1474 = !DILocation(line: 111, column: 44, scope: !1472)
!1475 = !DILocation(line: 111, column: 17, scope: !1472)
!1476 = !DILocation(line: 111, column: 26, scope: !1472)
!1477 = !DILocation(line: 112, column: 31, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 112, column: 12)
!1479 = !DILocation(line: 112, column: 12, scope: !1472)
!1480 = !DILocation(line: 112, column: 41, scope: !1478)
!1481 = !DILocation(line: 113, column: 30, scope: !1472)
!1482 = !DILocalVariable(name: "dst", arg: 1, scope: !1483, file: !1484, line: 21, type: !88)
!1483 = distinct !DISubprogram(name: "fast_memset", scope: !1484, file: !1484, line: 21, type: !1485, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1487)
!1484 = !DIFile(filename: "ldecod_src/inc/fast_memory.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "49b3114f30776e7555e4b756c6802326")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !88, !35, !35}
!1487 = !{!1482, !1488, !1489}
!1488 = !DILocalVariable(name: "value", arg: 2, scope: !1483, file: !1484, line: 21, type: !35)
!1489 = !DILocalVariable(name: "width", arg: 3, scope: !1483, file: !1484, line: 21, type: !35)
!1490 = !DILocation(line: 0, scope: !1483, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 113, column: 7, scope: !1472)
!1492 = !DILocation(line: 23, column: 20, scope: !1483, inlinedAt: !1491)
!1493 = !DILocation(line: 23, column: 3, scope: !1483, inlinedAt: !1491)
!1494 = !DILocation(line: 114, column: 17, scope: !1472)
!1495 = !DILocation(line: 114, column: 29, scope: !1472)
!1496 = !DILocation(line: 116, column: 54, scope: !1472)
!1497 = !DILocation(line: 116, column: 53, scope: !1472)
!1498 = !DILocation(line: 116, column: 45, scope: !1472)
!1499 = !DILocation(line: 116, column: 28, scope: !1472)
!1500 = !DILocation(line: 117, column: 33, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 117, column: 12)
!1502 = !DILocation(line: 117, column: 12, scope: !1472)
!1503 = !DILocation(line: 117, column: 43, scope: !1501)
!1504 = !DILocation(line: 118, column: 54, scope: !1472)
!1505 = !DILocation(line: 118, column: 17, scope: !1472)
!1506 = !DILocation(line: 118, column: 37, scope: !1472)
!1507 = !DILocation(line: 119, column: 42, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 119, column: 12)
!1509 = !DILocation(line: 119, column: 12, scope: !1472)
!1510 = !DILocation(line: 119, column: 52, scope: !1508)
!1511 = !DILocation(line: 120, column: 53, scope: !1472)
!1512 = !DILocation(line: 120, column: 45, scope: !1472)
!1513 = !DILocation(line: 120, column: 17, scope: !1472)
!1514 = !DILocation(line: 120, column: 28, scope: !1472)
!1515 = !DILocation(line: 121, column: 33, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 121, column: 12)
!1517 = !DILocation(line: 121, column: 12, scope: !1472)
!1518 = !DILocation(line: 121, column: 43, scope: !1516)
!1519 = !DILocation(line: 122, column: 45, scope: !1472)
!1520 = !DILocation(line: 122, column: 17, scope: !1472)
!1521 = !DILocation(line: 122, column: 28, scope: !1472)
!1522 = !DILocation(line: 123, column: 33, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 123, column: 12)
!1524 = !DILocation(line: 123, column: 12, scope: !1472)
!1525 = !DILocation(line: 123, column: 43, scope: !1523)
!1526 = !DILocation(line: 124, column: 24, scope: !1472)
!1527 = !DILocation(line: 135, column: 28, scope: !1435)
!1528 = !DILocation(line: 125, column: 5, scope: !1472)
!1529 = !DILocation(line: 129, column: 23, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 127, column: 5)
!1531 = !DILocation(line: 130, column: 37, scope: !1530)
!1532 = !DILocation(line: 131, column: 28, scope: !1530)
!1533 = !DILocation(line: 135, column: 44, scope: !1435)
!1534 = !DILocation(line: 23, column: 20, scope: !1483, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 135, column: 5, scope: !1435)
!1536 = !DILocation(line: 23, column: 20, scope: !1483, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 136, column: 5, scope: !1435)
!1538 = !DILocation(line: 0, scope: !1483, inlinedAt: !1535)
!1539 = !DILocation(line: 23, column: 3, scope: !1483, inlinedAt: !1535)
!1540 = !DILocation(line: 136, column: 28, scope: !1435)
!1541 = !DILocation(line: 0, scope: !1483, inlinedAt: !1537)
!1542 = !DILocation(line: 23, column: 3, scope: !1483, inlinedAt: !1537)
!1543 = !DILocation(line: 137, column: 28, scope: !1435)
!1544 = !DILocation(line: 0, scope: !1483, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 137, column: 5, scope: !1435)
!1546 = !DILocation(line: 23, column: 3, scope: !1483, inlinedAt: !1545)
!1547 = !DILocation(line: 139, column: 19, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 139, column: 9)
!1549 = !DILocation(line: 139, column: 31, scope: !1548)
!1550 = !DILocation(line: 139, column: 9, scope: !1435)
!1551 = !DILocation(line: 141, column: 23, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 140, column: 5)
!1553 = !DILocation(line: 141, column: 7, scope: !1552)
!1554 = !DILocation(line: 143, column: 52, scope: !1552)
!1555 = !DILocation(line: 143, column: 65, scope: !1552)
!1556 = !DILocation(line: 143, column: 44, scope: !1552)
!1557 = !DILocation(line: 143, column: 26, scope: !1552)
!1558 = !DILocation(line: 144, column: 31, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 144, column: 12)
!1560 = !DILocation(line: 144, column: 12, scope: !1552)
!1561 = !DILocation(line: 144, column: 41, scope: !1559)
!1562 = !DILocation(line: 145, column: 29, scope: !1552)
!1563 = !DILocation(line: 146, column: 5, scope: !1552)
!1564 = !DILocation(line: 151, column: 20, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 151, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1435, file: !2, line: 151, column: 5)
!1567 = !DILocation(line: 151, column: 5, scope: !1566)
!1568 = !DILocation(line: 150, column: 26, scope: !1435)
!1569 = !DILocation(line: 153, column: 28, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 152, column: 5)
!1571 = !DILocation(line: 154, column: 17, scope: !1570)
!1572 = !DILocation(line: 154, column: 26, scope: !1570)
!1573 = !DILocation(line: 155, column: 16, scope: !1570)
!1574 = !DILocation(line: 155, column: 21, scope: !1570)
!1575 = !DILocation(line: 155, column: 32, scope: !1570)
!1576 = !DILocation(line: 151, column: 46, scope: !1565)
!1577 = !DILocation(line: 151, column: 32, scope: !1565)
!1578 = distinct !{!1578, !1567, !1579}
!1579 = !DILocation(line: 156, column: 5, scope: !1566)
!1580 = !DILocation(line: 158, column: 15, scope: !1435)
!1581 = !DILocation(line: 158, column: 27, scope: !1435)
!1582 = !DILocation(line: 159, column: 15, scope: !1435)
!1583 = !DILocation(line: 159, column: 36, scope: !1435)
!1584 = !DILocation(line: 160, column: 3, scope: !1435)
!1585 = !DILocation(line: 161, column: 1, scope: !1424)
!1586 = !DISubprogram(name: "free", scope: !1390, file: !1390, line: 555, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !88}
!1589 = distinct !DISubprogram(name: "ercStartSegment", scope: !2, file: !2, line: 230, type: !1590, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !35, !35, !59, !89}
!1592 = !{!1593, !1594, !1595, !1596}
!1593 = !DILocalVariable(name: "currMBNum", arg: 1, scope: !1589, file: !2, line: 230, type: !35)
!1594 = !DILocalVariable(name: "segment", arg: 2, scope: !1589, file: !2, line: 230, type: !35)
!1595 = !DILocalVariable(name: "bitPos", arg: 3, scope: !1589, file: !2, line: 230, type: !59)
!1596 = !DILocalVariable(name: "errorVar", arg: 4, scope: !1589, file: !2, line: 230, type: !89)
!1597 = !DILocation(line: 0, scope: !1589)
!1598 = !DILocation(line: 232, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 232, column: 8)
!1600 = !DILocation(line: 232, column: 17, scope: !1599)
!1601 = !DILocation(line: 232, column: 30, scope: !1599)
!1602 = !DILocation(line: 232, column: 20, scope: !1599)
!1603 = !DILocation(line: 232, column: 8, scope: !1589)
!1604 = !DILocation(line: 234, column: 15, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 233, column: 3)
!1606 = !DILocation(line: 234, column: 36, scope: !1605)
!1607 = !DILocation(line: 236, column: 15, scope: !1605)
!1608 = !DILocation(line: 236, column: 5, scope: !1605)
!1609 = !DILocation(line: 236, column: 35, scope: !1605)
!1610 = !DILocation(line: 236, column: 46, scope: !1605)
!1611 = !DILocation(line: 237, column: 48, scope: !1605)
!1612 = !DILocation(line: 237, column: 15, scope: !1605)
!1613 = !DILocation(line: 237, column: 5, scope: !1605)
!1614 = !DILocation(line: 237, column: 46, scope: !1605)
!1615 = !DILocation(line: 239, column: 3, scope: !1605)
!1616 = !DILocation(line: 240, column: 1, scope: !1589)
!1617 = distinct !DISubprogram(name: "ercStopSegment", scope: !2, file: !2, line: 257, type: !1590, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1618)
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = !DILocalVariable(name: "currMBNum", arg: 1, scope: !1617, file: !2, line: 257, type: !35)
!1620 = !DILocalVariable(name: "segment", arg: 2, scope: !1617, file: !2, line: 257, type: !35)
!1621 = !DILocalVariable(name: "bitPos", arg: 3, scope: !1617, file: !2, line: 257, type: !59)
!1622 = !DILocalVariable(name: "errorVar", arg: 4, scope: !1617, file: !2, line: 257, type: !89)
!1623 = !DILocation(line: 0, scope: !1617)
!1624 = !DILocation(line: 259, column: 8, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 259, column: 8)
!1626 = !DILocation(line: 259, column: 17, scope: !1625)
!1627 = !DILocation(line: 259, column: 30, scope: !1625)
!1628 = !DILocation(line: 259, column: 20, scope: !1625)
!1629 = !DILocation(line: 259, column: 8, scope: !1617)
!1630 = !DILocation(line: 261, column: 46, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 260, column: 3)
!1632 = !DILocation(line: 261, column: 15, scope: !1631)
!1633 = !DILocation(line: 261, column: 5, scope: !1631)
!1634 = !DILocation(line: 261, column: 35, scope: !1631)
!1635 = !DILocation(line: 261, column: 44, scope: !1631)
!1636 = !DILocation(line: 262, column: 15, scope: !1631)
!1637 = !DILocation(line: 262, column: 26, scope: !1631)
!1638 = !DILocation(line: 263, column: 3, scope: !1631)
!1639 = !DILocation(line: 264, column: 1, scope: !1617)
!1640 = distinct !DISubprogram(name: "ercMarkCurrSegmentLost", scope: !2, file: !2, line: 277, type: !1641, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !35, !89}
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DILocalVariable(name: "picSizeX", arg: 1, scope: !1640, file: !2, line: 277, type: !35)
!1645 = !DILocalVariable(name: "errorVar", arg: 2, scope: !1640, file: !2, line: 277, type: !89)
!1646 = !DILocalVariable(name: "j", scope: !1640, file: !2, line: 279, type: !35)
!1647 = !DILocalVariable(name: "current_segment", scope: !1640, file: !2, line: 280, type: !35)
!1648 = !DILocation(line: 0, scope: !1640)
!1649 = !DILocation(line: 282, column: 31, scope: !1640)
!1650 = !DILocation(line: 282, column: 42, scope: !1640)
!1651 = !DILocation(line: 283, column: 30, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 283, column: 8)
!1653 = !DILocation(line: 283, column: 20, scope: !1652)
!1654 = !DILocation(line: 283, column: 8, scope: !1640)
!1655 = !DILocation(line: 285, column: 19, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 285, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 284, column: 3)
!1658 = !DILocation(line: 285, column: 40, scope: !1656)
!1659 = !DILocation(line: 285, column: 9, scope: !1657)
!1660 = !DILocation(line: 287, column: 17, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 286, column: 5)
!1662 = !DILocation(line: 287, column: 37, scope: !1661)
!1663 = !DILocation(line: 288, column: 38, scope: !1661)
!1664 = !DILocation(line: 289, column: 5, scope: !1661)
!1665 = !DILocation(line: 291, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 291, column: 5)
!1667 = !DILocation(line: 291, column: 15, scope: !1666)
!1668 = !DILocation(line: 291, column: 51, scope: !1666)
!1669 = !DILocation(line: 291, column: 104, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 291, column: 5)
!1671 = !DILocation(line: 291, column: 65, scope: !1670)
!1672 = !DILocation(line: 291, column: 5, scope: !1666)
!1673 = !DILocation(line: 293, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 292, column: 5)
!1675 = !DILocation(line: 293, column: 28, scope: !1674)
!1676 = !DILocation(line: 293, column: 7, scope: !1674)
!1677 = !DILocation(line: 293, column: 59, scope: !1674)
!1678 = !DILocation(line: 294, column: 17, scope: !1674)
!1679 = !DILocation(line: 294, column: 28, scope: !1674)
!1680 = !DILocation(line: 294, column: 7, scope: !1674)
!1681 = !DILocation(line: 294, column: 59, scope: !1674)
!1682 = !DILocation(line: 295, column: 17, scope: !1674)
!1683 = !DILocation(line: 295, column: 28, scope: !1674)
!1684 = !DILocation(line: 295, column: 7, scope: !1674)
!1685 = !DILocation(line: 295, column: 59, scope: !1674)
!1686 = !DILocation(line: 296, column: 17, scope: !1674)
!1687 = !DILocation(line: 296, column: 7, scope: !1674)
!1688 = !DILocation(line: 296, column: 59, scope: !1674)
!1689 = !DILocation(line: 297, column: 17, scope: !1674)
!1690 = !DILocation(line: 297, column: 7, scope: !1674)
!1691 = !DILocation(line: 297, column: 31, scope: !1674)
!1692 = !DILocation(line: 298, column: 17, scope: !1674)
!1693 = !DILocation(line: 298, column: 7, scope: !1674)
!1694 = !DILocation(line: 298, column: 31, scope: !1674)
!1695 = !DILocation(line: 291, column: 115, scope: !1670)
!1696 = !DILocation(line: 291, column: 78, scope: !1670)
!1697 = distinct !{!1697, !1672, !1698}
!1698 = !DILocation(line: 299, column: 5, scope: !1666)
!1699 = !DILocation(line: 291, column: 68, scope: !1670)
!1700 = !DILocation(line: 300, column: 41, scope: !1657)
!1701 = !DILocation(line: 300, column: 52, scope: !1657)
!1702 = !DILocation(line: 301, column: 3, scope: !1657)
!1703 = !DILocation(line: 302, column: 1, scope: !1640)
!1704 = distinct !DISubprogram(name: "ercMarkCurrSegmentOK", scope: !2, file: !2, line: 315, type: !1641, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1705)
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DILocalVariable(name: "picSizeX", arg: 1, scope: !1704, file: !2, line: 315, type: !35)
!1707 = !DILocalVariable(name: "errorVar", arg: 2, scope: !1704, file: !2, line: 315, type: !89)
!1708 = !DILocalVariable(name: "j", scope: !1704, file: !2, line: 317, type: !35)
!1709 = !DILocalVariable(name: "current_segment", scope: !1704, file: !2, line: 318, type: !35)
!1710 = !DILocation(line: 0, scope: !1704)
!1711 = !DILocation(line: 321, column: 30, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 321, column: 8)
!1713 = !DILocation(line: 321, column: 20, scope: !1712)
!1714 = !DILocation(line: 321, column: 8, scope: !1704)
!1715 = !DILocation(line: 320, column: 31, scope: !1704)
!1716 = !DILocation(line: 320, column: 42, scope: !1704)
!1717 = !DILocation(line: 324, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 324, column: 5)
!1719 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 322, column: 3)
!1720 = !DILocation(line: 324, column: 15, scope: !1718)
!1721 = !DILocation(line: 324, column: 51, scope: !1718)
!1722 = !DILocation(line: 324, column: 104, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 324, column: 5)
!1724 = !DILocation(line: 324, column: 65, scope: !1723)
!1725 = !DILocation(line: 324, column: 5, scope: !1718)
!1726 = !DILocation(line: 326, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 325, column: 5)
!1728 = !DILocation(line: 326, column: 28, scope: !1727)
!1729 = !DILocation(line: 326, column: 7, scope: !1727)
!1730 = !DILocation(line: 326, column: 59, scope: !1727)
!1731 = !DILocation(line: 327, column: 17, scope: !1727)
!1732 = !DILocation(line: 327, column: 28, scope: !1727)
!1733 = !DILocation(line: 327, column: 7, scope: !1727)
!1734 = !DILocation(line: 327, column: 59, scope: !1727)
!1735 = !DILocation(line: 328, column: 17, scope: !1727)
!1736 = !DILocation(line: 328, column: 28, scope: !1727)
!1737 = !DILocation(line: 328, column: 7, scope: !1727)
!1738 = !DILocation(line: 328, column: 59, scope: !1727)
!1739 = !DILocation(line: 329, column: 17, scope: !1727)
!1740 = !DILocation(line: 329, column: 7, scope: !1727)
!1741 = !DILocation(line: 329, column: 59, scope: !1727)
!1742 = !DILocation(line: 330, column: 17, scope: !1727)
!1743 = !DILocation(line: 330, column: 7, scope: !1727)
!1744 = !DILocation(line: 330, column: 31, scope: !1727)
!1745 = !DILocation(line: 331, column: 17, scope: !1727)
!1746 = !DILocation(line: 331, column: 7, scope: !1727)
!1747 = !DILocation(line: 331, column: 31, scope: !1727)
!1748 = !DILocation(line: 324, column: 115, scope: !1723)
!1749 = !DILocation(line: 324, column: 78, scope: !1723)
!1750 = distinct !{!1750, !1725, !1751}
!1751 = !DILocation(line: 332, column: 5, scope: !1718)
!1752 = !DILocation(line: 324, column: 68, scope: !1723)
!1753 = !DILocation(line: 333, column: 41, scope: !1719)
!1754 = !DILocation(line: 333, column: 52, scope: !1719)
!1755 = !DILocation(line: 334, column: 3, scope: !1719)
!1756 = !DILocation(line: 335, column: 1, scope: !1704)
!1757 = distinct !DISubprogram(name: "ercMarkCurrMBConcealed", scope: !2, file: !2, line: 351, type: !1758, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !31, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !35, !35, !35, !89}
!1760 = !{!1761, !1762, !1763, !1764, !1765}
!1761 = !DILocalVariable(name: "currMBNum", arg: 1, scope: !1757, file: !2, line: 351, type: !35)
!1762 = !DILocalVariable(name: "comp", arg: 2, scope: !1757, file: !2, line: 351, type: !35)
!1763 = !DILocalVariable(name: "picSizeX", arg: 3, scope: !1757, file: !2, line: 351, type: !35)
!1764 = !DILocalVariable(name: "errorVar", arg: 4, scope: !1757, file: !2, line: 351, type: !89)
!1765 = !DILocalVariable(name: "setAll", scope: !1757, file: !2, line: 353, type: !35)
!1766 = !DILocation(line: 0, scope: !1757)
!1767 = !DILocation(line: 355, column: 8, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 355, column: 8)
!1769 = !DILocation(line: 355, column: 17, scope: !1768)
!1770 = !DILocation(line: 355, column: 30, scope: !1768)
!1771 = !DILocation(line: 355, column: 20, scope: !1768)
!1772 = !DILocation(line: 355, column: 8, scope: !1757)
!1773 = !DILocation(line: 357, column: 14, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 357, column: 9)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 356, column: 3)
!1776 = !DILocation(line: 357, column: 9, scope: !1775)
!1777 = !DILocation(line: 363, column: 5, scope: !1775)
!1778 = !DILocation(line: 377, column: 7, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 364, column: 5)
!1780 = !DILocation(line: 366, column: 17, scope: !1779)
!1781 = !DILocation(line: 366, column: 28, scope: !1779)
!1782 = !DILocation(line: 366, column: 7, scope: !1779)
!1783 = !DILocation(line: 366, column: 67, scope: !1779)
!1784 = !DILocation(line: 367, column: 17, scope: !1779)
!1785 = !DILocation(line: 367, column: 28, scope: !1779)
!1786 = !DILocation(line: 367, column: 7, scope: !1779)
!1787 = !DILocation(line: 367, column: 67, scope: !1779)
!1788 = !DILocation(line: 368, column: 17, scope: !1779)
!1789 = !DILocation(line: 368, column: 28, scope: !1779)
!1790 = !DILocation(line: 368, column: 7, scope: !1779)
!1791 = !DILocation(line: 368, column: 67, scope: !1779)
!1792 = !DILocation(line: 369, column: 17, scope: !1779)
!1793 = !DILocation(line: 369, column: 7, scope: !1779)
!1794 = !DILocation(line: 369, column: 67, scope: !1779)
!1795 = !DILocation(line: 370, column: 11, scope: !1779)
!1796 = !DILocation(line: 373, column: 17, scope: !1779)
!1797 = !DILocation(line: 373, column: 7, scope: !1779)
!1798 = !DILocation(line: 373, column: 39, scope: !1779)
!1799 = !DILocation(line: 374, column: 11, scope: !1779)
!1800 = !DILocation(line: 377, column: 17, scope: !1779)
!1801 = !DILocation(line: 377, column: 39, scope: !1779)
!1802 = !DILocation(line: 378, column: 5, scope: !1779)
!1803 = !DILocation(line: 380, column: 1, scope: !1757)
