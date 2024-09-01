; ModuleID = 'ldecod_src/erc_do_p.c'
source_filename = "ldecod_src/erc_do_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_buffer = type { i8, i32, i32, [3 x i32] }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }

@.str = private unnamed_addr constant [29 x i8] c"ercConcealInterFrame: predMB\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"Missing POC=%d\0A\00", align 1, !dbg !7
@uv_div = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0]], align 16, !dbg !12
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16, !dbg !223
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16, !dbg !231

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ercConcealInterFrame(ptr nocapture noundef readonly %recfr, ptr nocapture noundef %object_list, i32 noundef %picSizeX, i32 noundef %picSizeY, ptr noundef %errorVar, i32 noundef %chroma_format_idc) local_unnamed_addr #0 !dbg !253 {
entry:
  %predBlocks = alloca [8 x i32], align 16, !DIAssignID !1354
    #dbg_assign(i1 undef, !1343, !DIExpression(), !1354, ptr %predBlocks, !DIExpression(), !1355)
    #dbg_value(ptr %recfr, !1334, !DIExpression(), !1355)
    #dbg_value(ptr %object_list, !1335, !DIExpression(), !1355)
    #dbg_value(i32 %picSizeX, !1336, !DIExpression(), !1355)
    #dbg_value(i32 %picSizeY, !1337, !DIExpression(), !1355)
    #dbg_value(ptr %errorVar, !1338, !DIExpression(), !1355)
    #dbg_value(i32 %chroma_format_idc, !1339, !DIExpression(), !1355)
  %0 = load ptr, ptr %recfr, align 8, !dbg !1356
    #dbg_value(ptr %0, !1340, !DIExpression(), !1355)
    #dbg_value(i32 0, !1341, !DIExpression(), !1355)
    #dbg_value(i32 0, !1342, !DIExpression(), !1355)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %predBlocks) #18, !dbg !1357
    #dbg_value(i32 -1, !1345, !DIExpression(), !1355)
    #dbg_value(i32 -1, !1346, !DIExpression(), !1355)
    #dbg_value(i32 0, !1347, !DIExpression(), !1355)
    #dbg_value(i32 0, !1351, !DIExpression(), !1355)
    #dbg_value(i32 0, !1352, !DIExpression(), !1355)
  %tobool.not = icmp eq ptr %errorVar, null, !dbg !1358
  br i1 %tobool.not, label %cleanup, label %land.lhs.true, !dbg !1360

land.lhs.true:                                    ; preds = %entry
  %concealment = getelementptr inbounds i8, ptr %errorVar, i64 64, !dbg !1361
  %1 = load i32, ptr %concealment, align 8, !dbg !1361
  %tobool2.not = icmp eq i32 %1, 0, !dbg !1362
  br i1 %tobool2.not, label %cleanup, label %if.then, !dbg !1363

if.then:                                          ; preds = %land.lhs.true
  %nOfCorruptedSegments = getelementptr inbounds i8, ptr %errorVar, i64 60, !dbg !1364
  %2 = load i32, ptr %nOfCorruptedSegments, align 4, !dbg !1364
  %tobool3.not = icmp eq i32 %2, 0, !dbg !1367
  br i1 %tobool3.not, label %cleanup, label %if.then4, !dbg !1368

if.then4:                                         ; preds = %if.then
  %cmp.not = icmp eq i32 %chroma_format_idc, 0, !dbg !1369
  br i1 %cmp.not, label %if.else, label %if.then5, !dbg !1372

if.then5:                                         ; preds = %if.then4
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108, !dbg !1373
  %3 = load i32, ptr %mb_cr_size_x, align 4, !dbg !1373
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112, !dbg !1374
  %4 = load i32, ptr %mb_cr_size_y, align 8, !dbg !1374
  %mul = shl i32 %3, 1, !dbg !1375
  %mul6 = mul i32 %mul, %4, !dbg !1376
  %add = add nsw i32 %mul6, 256, !dbg !1377
  %conv = sext i32 %add to i64, !dbg !1378
  %mul7 = shl nsw i64 %conv, 1, !dbg !1379
  %call = tail call noalias ptr @malloc(i64 noundef %mul7) #19, !dbg !1380
    #dbg_value(ptr %call, !1353, !DIExpression(), !1355)
  br label %if.end, !dbg !1381

if.else:                                          ; preds = %if.then4
  %call8 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #19, !dbg !1382
    #dbg_value(ptr %call8, !1353, !DIExpression(), !1355)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %predMB.0 = phi ptr [ %call, %if.then5 ], [ %call8, %if.else ], !dbg !1383
    #dbg_value(ptr %predMB.0, !1353, !DIExpression(), !1355)
  %cmp9 = icmp eq ptr %predMB.0, null, !dbg !1384
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1386

if.then11:                                        ; preds = %if.end
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #18, !dbg !1387
  br label %if.end12, !dbg !1387

if.end12:                                         ; preds = %if.then11, %if.end
  %shr = ashr i32 %picSizeY, 4, !dbg !1388
    #dbg_value(i32 %shr, !1342, !DIExpression(), !1355)
  %shr13 = ashr i32 %picSizeX, 4, !dbg !1389
    #dbg_value(i32 %shr13, !1341, !DIExpression(), !1355)
    #dbg_value(i32 0, !1350, !DIExpression(), !1355)
  %cmp14315 = icmp sgt i32 %shr13, 0, !dbg !1390
  br i1 %cmp14315, label %for.body.lr.ph, label %for.end169, !dbg !1393

for.body.lr.ph:                                   ; preds = %if.end12
  %cmp20313 = icmp sgt i32 %shr, 0
  %yCondition = getelementptr inbounds i8, ptr %errorVar, i64 8
  %5 = lshr i32 %picSizeX, 2
  %shl = and i32 %5, 1073741822
  %shl64 = shl nsw i32 %shr, 1
  %shl65 = shl nuw nsw i32 %shr13, 1
  %erc_mvperMB = getelementptr inbounds i8, ptr %0, i64 856512
  br i1 %cmp20313, label %for.body.us.preheader, label %for.end169

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %6 = zext nneg i32 %shr to i64, !dbg !1393
  br label %for.body.us, !dbg !1393

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond19.for.inc167_crit_edge.us
  %columnInd.0316.us = phi i32 [ %inc168.us, %for.cond19.for.inc167_crit_edge.us ], [ 0, %for.body.us.preheader ]
    #dbg_value(i32 %columnInd.0316.us, !1350, !DIExpression(), !1355)
  %rem.us = and i32 %columnInd.0316.us, 1, !dbg !1394
  %tobool16.not.us = icmp eq i32 %rem.us, 0, !dbg !1394
  %div303.us = lshr i32 %columnInd.0316.us, 1, !dbg !1396
  %7 = xor i32 %div303.us, -1, !dbg !1396
  %sub17.us = add nsw i32 %shr13, %7, !dbg !1396
  %cond.us = select i1 %tobool16.not.us, i32 %div303.us, i32 %sub17.us, !dbg !1396
    #dbg_value(i32 %cond.us, !1349, !DIExpression(), !1355)
    #dbg_value(i32 0, !1348, !DIExpression(), !1355)
  %shl26.us = shl i32 %cond.us, 1
  br label %for.body22.us, !dbg !1397

for.body22.us:                                    ; preds = %for.body.us, %for.inc164.us
  %row.0314.us = phi i32 [ 0, %for.body.us ], [ %inc165.us, %for.inc164.us ]
    #dbg_value(i32 %row.0314.us, !1348, !DIExpression(), !1355)
  %8 = load ptr, ptr %yCondition, align 8, !dbg !1399
  %mul25.us = mul i32 %shl, %row.0314.us, !dbg !1403
  %add27.us = add nsw i32 %mul25.us, %shl26.us, !dbg !1403
  %idxprom.us = sext i32 %add27.us to i64, !dbg !1404
  %arrayidx.us = getelementptr inbounds i8, ptr %8, i64 %idxprom.us, !dbg !1404
  %9 = load i8, ptr %arrayidx.us, align 1, !dbg !1404
  %cmp30.us = icmp slt i8 %9, 2, !dbg !1405
  br i1 %cmp30.us, label %for.cond34.us.preheader, label %for.inc164.us, !dbg !1406

for.cond34.us.preheader:                          ; preds = %for.body22.us
  %10 = sext i32 %row.0314.us to i64, !dbg !1407
  br label %for.cond34.us, !dbg !1407

for.cond34.us:                                    ; preds = %for.cond34.us.preheader, %for.body37.us
  %indvars.iv = phi i64 [ %10, %for.cond34.us.preheader ], [ %indvars.iv.next, %for.body37.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1410
    #dbg_value(i64 %indvars.iv.next, !1345, !DIExpression(), !1355)
  %cmp35.us = icmp slt i64 %indvars.iv.next, %6, !dbg !1411
  br i1 %cmp35.us, label %for.body37.us, label %for.cond57.preheader.us, !dbg !1407

for.body37.us:                                    ; preds = %for.cond34.us
  %11 = trunc nsw i64 %indvars.iv.next to i32, !dbg !1413
  %mul42.us = mul i32 %shl, %11, !dbg !1413
  %add44.us = add nsw i32 %mul42.us, %shl26.us, !dbg !1413
  %idxprom46.us = sext i32 %add44.us to i64, !dbg !1416
  %arrayidx47.us = getelementptr inbounds i8, ptr %8, i64 %idxprom46.us, !dbg !1416
  %12 = load i8, ptr %arrayidx47.us, align 1, !dbg !1416
  %cmp49.us = icmp sgt i8 %12, 1, !dbg !1417
  br i1 %cmp49.us, label %for.end.us, label %for.cond34.us, !dbg !1418, !llvm.loop !1419

for.end.us:                                       ; preds = %for.body37.us
  %13 = trunc nsw i64 %indvars.iv to i32
    #dbg_value(i32 %13, !1345, !DIExpression(), !1355)
  %cmp53.not.us = icmp sgt i32 %shr, %13, !dbg !1421
  br i1 %cmp53.not.us, label %if.else85.us, label %for.cond57.preheader.us, !dbg !1423

for.body60.us:                                    ; preds = %for.cond57.preheader.us, %if.end79.us
  %currRow.0306.us = phi i32 [ %inc83.us, %if.end79.us ], [ %row.0314.us, %for.cond57.preheader.us ]
    #dbg_value(i32 %currRow.0306.us, !1347, !DIExpression(), !1355)
  %shl61.us = shl i32 %currRow.0306.us, 1, !dbg !1424
  %14 = load ptr, ptr %yCondition, align 8, !dbg !1429
  %call66.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl61.us, i32 noundef %shl26.us, ptr noundef %14, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18, !dbg !1430
  %15 = load i32, ptr %erc_mvperMB, align 8, !dbg !1431
  %cmp67.us = icmp sgt i32 %15, 7, !dbg !1433
  %mul70.us = mul nsw i32 %currRow.0306.us, %shr13, !dbg !1434
  %add71.us = add nsw i32 %mul70.us, %cond.us, !dbg !1434
  br i1 %cmp67.us, label %if.then69.us, label %if.else75.us, !dbg !1435

if.else75.us:                                     ; preds = %for.body60.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add71.us, ptr noundef %object_list, i32 noundef %picSizeX), !dbg !1436
  br label %if.end79.us

if.then69.us:                                     ; preds = %for.body60.us
  %16 = load ptr, ptr %yCondition, align 8, !dbg !1437
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add71.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %16), !dbg !1438
  br label %if.end79.us, !dbg !1438

if.end79.us:                                      ; preds = %if.then69.us, %if.else75.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add71.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18, !dbg !1439
  %inc83.us = add i32 %currRow.0306.us, 1, !dbg !1440
    #dbg_value(i32 %inc83.us, !1347, !DIExpression(), !1355)
  %exitcond.not = icmp eq i32 %inc83.us, %shr, !dbg !1441
  br i1 %exitcond.not, label %for.inc164.us, label %for.body60.us, !dbg !1442, !llvm.loop !1443

if.else85.us:                                     ; preds = %for.end.us
  %cmp86.us = icmp eq i32 %row.0314.us, 0, !dbg !1445
  br i1 %cmp86.us, label %for.cond89.preheader.us, label %if.else120.us, !dbg !1447

if.else120.us:                                    ; preds = %if.else85.us
  %add121.us = add nsw i32 %13, 1, !dbg !1448
    #dbg_value(i32 %add121.us, !1348, !DIExpression(), !1355)
    #dbg_value(!DIArgList(i32 %13, i32 %row.0314.us), !1351, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !1355)
    #dbg_value(i32 0, !1352, !DIExpression(), !1355)
    #dbg_value(i32 %row.0314.us, !1346, !DIExpression(), !1355)
    #dbg_value(i32 %13, !1345, !DIExpression(), !1355)
  %cmp125.not307.us = icmp sgt i32 %row.0314.us, %13, !dbg !1450
  br i1 %cmp125.not307.us, label %for.inc164.us, label %for.body127.us.preheader, !dbg !1453

for.body127.us.preheader:                         ; preds = %if.else120.us
  %17 = sub i32 %add121.us, %row.0314.us, !dbg !1453
  br label %for.body127.us, !dbg !1453

for.body127.us:                                   ; preds = %for.body127.us.preheader, %if.end155.us
  %i.0310.us = phi i32 [ %inc159.us, %if.end155.us ], [ 0, %for.body127.us.preheader ]
  %firstCorruptedRow.0309.us = phi i32 [ %firstCorruptedRow.1.us, %if.end155.us ], [ %row.0314.us, %for.body127.us.preheader ]
  %lastCorruptedRow.2308.us = phi i32 [ %lastCorruptedRow.3.us, %if.end155.us ], [ %13, %for.body127.us.preheader ]
    #dbg_value(i32 %i.0310.us, !1352, !DIExpression(), !1355)
    #dbg_value(i32 %firstCorruptedRow.0309.us, !1346, !DIExpression(), !1355)
    #dbg_value(i32 %lastCorruptedRow.2308.us, !1345, !DIExpression(), !1355)
  %rem128.us = and i32 %i.0310.us, 1, !dbg !1454
  %tobool129.not.us = icmp ne i32 %rem128.us, 0, !dbg !1454
  %dec131.us = sext i1 %tobool129.not.us to i32, !dbg !1457
  %lastCorruptedRow.3.us = add nsw i32 %lastCorruptedRow.2308.us, %dec131.us, !dbg !1457
  %18 = xor i32 %rem128.us, 1, !dbg !1457
  %firstCorruptedRow.1.us = add i32 %18, %firstCorruptedRow.0309.us, !dbg !1457
  %currRow.2.us = select i1 %tobool129.not.us, i32 %lastCorruptedRow.2308.us, i32 %firstCorruptedRow.0309.us, !dbg !1457
    #dbg_value(i32 %currRow.2.us, !1347, !DIExpression(), !1355)
    #dbg_value(i32 %firstCorruptedRow.1.us, !1346, !DIExpression(), !1355)
    #dbg_value(i32 %lastCorruptedRow.3.us, !1345, !DIExpression(), !1355)
  %shl136.us = shl i32 %currRow.2.us, 1, !dbg !1458
  %19 = load ptr, ptr %yCondition, align 8, !dbg !1459
  %call141.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl136.us, i32 noundef %shl26.us, ptr noundef %19, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18, !dbg !1460
  %20 = load i32, ptr %erc_mvperMB, align 8, !dbg !1461
  %cmp143.us = icmp sgt i32 %20, 7, !dbg !1463
  %mul146.us = mul nsw i32 %currRow.2.us, %shr13, !dbg !1464
  %add147.us = add nsw i32 %mul146.us, %cond.us, !dbg !1464
  br i1 %cmp143.us, label %if.then145.us, label %if.else151.us, !dbg !1465

if.else151.us:                                    ; preds = %for.body127.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add147.us, ptr noundef %object_list, i32 noundef %picSizeX), !dbg !1466
  br label %if.end155.us

if.then145.us:                                    ; preds = %for.body127.us
  %21 = load ptr, ptr %yCondition, align 8, !dbg !1467
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add147.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %21), !dbg !1468
  br label %if.end155.us, !dbg !1468

if.end155.us:                                     ; preds = %if.then145.us, %if.else151.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add147.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18, !dbg !1469
  %inc159.us = add nuw i32 %i.0310.us, 1, !dbg !1470
    #dbg_value(i32 %inc159.us, !1352, !DIExpression(), !1355)
    #dbg_value(i32 %firstCorruptedRow.1.us, !1346, !DIExpression(), !1355)
    #dbg_value(i32 %lastCorruptedRow.3.us, !1345, !DIExpression(), !1355)
  %exitcond320.not = icmp eq i32 %inc159.us, %17, !dbg !1450
  br i1 %exitcond320.not, label %for.inc164.us, label %for.body127.us, !dbg !1453, !llvm.loop !1471

for.end118.us:                                    ; preds = %if.end113.us, %for.cond89.preheader.us
  %add119.us = add nsw i32 %13, 1, !dbg !1473
    #dbg_value(i32 %add119.us, !1348, !DIExpression(), !1355)
  br label %for.inc164.us, !dbg !1475

for.inc164.us:                                    ; preds = %if.end79.us, %if.end155.us, %for.cond57.preheader.us, %if.else120.us, %for.end118.us, %for.body22.us
  %row.2.us = phi i32 [ %row.0314.us, %for.body22.us ], [ %add119.us, %for.end118.us ], [ %add121.us, %if.else120.us ], [ %shr, %for.cond57.preheader.us ], [ %add121.us, %if.end155.us ], [ %shr, %if.end79.us ], !dbg !1476
    #dbg_value(i32 %row.2.us, !1348, !DIExpression(), !1355)
  %inc165.us = add nsw i32 %row.2.us, 1, !dbg !1477
    #dbg_value(i32 %inc165.us, !1348, !DIExpression(), !1355)
  %cmp20.us = icmp slt i32 %inc165.us, %shr, !dbg !1478
  br i1 %cmp20.us, label %for.body22.us, label %for.cond19.for.inc167_crit_edge.us, !dbg !1397, !llvm.loop !1479

for.body92.us:                                    ; preds = %for.cond89.preheader.us, %if.end113.us
  %currRow.1312.us = phi i32 [ %dec117.us, %if.end113.us ], [ %13, %for.cond89.preheader.us ]
    #dbg_value(i32 %currRow.1312.us, !1347, !DIExpression(), !1355)
  %shl94.us = shl nuw i32 %currRow.1312.us, 1, !dbg !1481
  %22 = load ptr, ptr %yCondition, align 8, !dbg !1485
  %call99.us = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %predBlocks, i32 noundef %shl94.us, i32 noundef %shl26.us, ptr noundef %22, i32 noundef %shl64, i32 noundef %shl65, i32 noundef 2, i8 noundef zeroext 0) #18, !dbg !1486
  %23 = load i32, ptr %erc_mvperMB, align 8, !dbg !1487
  %cmp101.us = icmp sgt i32 %23, 7, !dbg !1489
  %mul104.us = mul nsw i32 %currRow.1312.us, %shr13, !dbg !1490
  %add105.us = add nsw i32 %mul104.us, %cond.us, !dbg !1490
  br i1 %cmp101.us, label %if.then103.us, label %if.else109.us, !dbg !1491

if.else109.us:                                    ; preds = %for.body92.us
  call fastcc void @concealByCopy(ptr noundef nonnull %recfr, i32 noundef %add105.us, ptr noundef %object_list, i32 noundef %picSizeX), !dbg !1492
  br label %if.end113.us

if.then103.us:                                    ; preds = %for.body92.us
  %24 = load ptr, ptr %yCondition, align 8, !dbg !1493
  call fastcc void @concealByTrial(ptr noundef nonnull %recfr, ptr noundef %predMB.0, i32 noundef %add105.us, ptr noundef %object_list, ptr noundef nonnull %predBlocks, i32 noundef %picSizeX, ptr noundef %24), !dbg !1494
  br label %if.end113.us, !dbg !1494

if.end113.us:                                     ; preds = %if.then103.us, %if.else109.us
  call void @ercMarkCurrMBConcealed(i32 noundef %add105.us, i32 noundef -1, i32 noundef %picSizeX, ptr noundef nonnull %errorVar) #18, !dbg !1495
  %dec117.us = add nsw i32 %currRow.1312.us, -1, !dbg !1496
    #dbg_value(i32 %dec117.us, !1347, !DIExpression(), !1355)
  %cmp90.us = icmp sgt i32 %currRow.1312.us, 0, !dbg !1497
  br i1 %cmp90.us, label %for.body92.us, label %for.end118.us, !dbg !1498, !llvm.loop !1499

for.cond89.preheader.us:                          ; preds = %if.else85.us
    #dbg_value(i32 %13, !1347, !DIExpression(), !1355)
  %cmp90311.us = icmp sgt i64 %indvars.iv, -1, !dbg !1497
  br i1 %cmp90311.us, label %for.body92.us, label %for.end118.us, !dbg !1498

for.cond57.preheader.us:                          ; preds = %for.cond34.us, %for.end.us
    #dbg_value(i32 %row.0314.us, !1347, !DIExpression(), !1355)
  %cmp58305.us = icmp slt i32 %row.0314.us, %shr, !dbg !1441
  br i1 %cmp58305.us, label %for.body60.us, label %for.inc164.us, !dbg !1442

for.cond19.for.inc167_crit_edge.us:               ; preds = %for.inc164.us
  %inc168.us = add nuw nsw i32 %columnInd.0316.us, 1, !dbg !1501
    #dbg_value(i32 %inc168.us, !1350, !DIExpression(), !1355)
  %exitcond321.not = icmp eq i32 %inc168.us, %shr13, !dbg !1390
  br i1 %exitcond321.not, label %for.end169, label %for.body.us, !dbg !1393, !llvm.loop !1502

for.end169:                                       ; preds = %for.cond19.for.inc167_crit_edge.us, %for.body.lr.ph, %if.end12
  call void @free(ptr noundef %predMB.0) #18, !dbg !1504
  br label %cleanup, !dbg !1505

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then, %for.end169
  %retval.0 = phi i32 [ 1, %for.end169 ], [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1506
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %predBlocks) #18, !dbg !1507
  ret i32 %retval.0, !dbg !1507
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1508 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare !dbg !1515 void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare !dbg !1520 i32 @ercCollect8PredBlocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @concealByTrial(ptr nocapture noundef readonly %recfr, ptr nocapture noundef %predMB, i32 noundef %currMBNum, ptr nocapture noundef %object_list, ptr nocapture noundef readonly %predBlocks, i32 noundef %picSizeX, ptr nocapture noundef writeonly %yCondition) unnamed_addr #0 !dbg !1524 {
entry:
  %mvBest = alloca [3 x i32], align 4, !DIAssignID !1560
    #dbg_assign(i1 undef, !1557, !DIExpression(), !1560, ptr %mvBest, !DIExpression(), !1561)
  %mvPred = alloca [3 x i32], align 8, !DIAssignID !1562
    #dbg_assign(i1 undef, !1558, !DIExpression(), !1562, ptr %mvPred, !DIExpression(), !1561)
    #dbg_value(ptr %recfr, !1528, !DIExpression(), !1561)
    #dbg_value(ptr %predMB, !1529, !DIExpression(), !1561)
    #dbg_value(i32 %currMBNum, !1530, !DIExpression(), !1561)
    #dbg_value(ptr %object_list, !1531, !DIExpression(), !1561)
    #dbg_value(ptr %predBlocks, !1532, !DIExpression(), !1561)
    #dbg_value(i32 %picSizeX, !1533, !DIExpression(), !1561)
    #dbg_value(i32 poison, !1534, !DIExpression(), !1561)
    #dbg_value(ptr %yCondition, !1535, !DIExpression(), !1561)
  %0 = load ptr, ptr %recfr, align 8, !dbg !1563
    #dbg_value(ptr %0, !1536, !DIExpression(), !1561)
    #dbg_value(i32 0, !1537, !DIExpression(), !1561)
    #dbg_value(i32 0, !1539, !DIExpression(), !1561)
    #dbg_value(i32 0, !1540, !DIExpression(), !1561)
    #dbg_value(i32 1, !1541, !DIExpression(), !1561)
    #dbg_value(i32 0, !1542, !DIExpression(), !1561)
    #dbg_value(i32 1, !1544, !DIExpression(), !1561)
    #dbg_value(i32 0, !1548, !DIExpression(), !1561)
    #dbg_value(i32 3, !1549, !DIExpression(), !1561)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mvBest), !dbg !1564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, i8 0, i64 12, i1 false), !dbg !1565, !DIAssignID !1566
    #dbg_assign(i8 0, !1557, !DIExpression(), !1566, ptr %mvBest, !DIExpression(), !1561)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mvPred) #18, !dbg !1564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i8 0, i64 12, i1 false), !dbg !1567, !DIAssignID !1568
    #dbg_assign(i8 0, !1558, !DIExpression(), !1568, ptr %mvPred, !DIExpression(), !1561)
  %shr = ashr i32 %picSizeX, 4, !dbg !1569
    #dbg_value(i32 %shr, !1538, !DIExpression(), !1561)
    #dbg_value(i32 16, !1555, !DIExpression(), !1561)
  %shl = shl i32 %currMBNum, 2, !dbg !1570
  %idx.ext = sext i32 %shl to i64, !dbg !1572
  %add.ptr = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext, !dbg !1572
    #dbg_value(ptr %add.ptr, !1556, !DIExpression(), !1561)
  %div = sdiv i32 %currMBNum, %shr, !dbg !1573
  %shr7 = ashr i32 %picSizeX, 3, !dbg !1573
  %shl5 = shl nsw i32 %shr7, 1, !dbg !1573
  %mul = mul i32 %shl5, %div, !dbg !1573
  %rem = srem i32 %currMBNum, %shr, !dbg !1573
  %shl9 = shl nsw i32 %rem, 1, !dbg !1573
  %add10 = add nsw i32 %mul, %shl9, !dbg !1573
  %rem13 = srem i32 %add10, %shr7, !dbg !1573
  %shl14 = shl nsw i32 %rem13, 3, !dbg !1574
  %xMin = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !1575
  store i32 %shl14, ptr %xMin, align 4, !dbg !1576
  %div29 = sdiv i32 %add10, %shr7, !dbg !1577
  %shl30 = shl i32 %div29, 3, !dbg !1578
  %yMin = getelementptr inbounds i8, ptr %add.ptr, i64 8, !dbg !1579
  store i32 %shl30, ptr %yMin, align 4, !dbg !1580
  %add38 = add nsw i32 %currMBNum, 1
  %add36 = add nsw i32 %shr, %currMBNum
  %sub34 = add nsw i32 %currMBNum, -1
  %sub = sub nsw i32 %currMBNum, %shr
  %arrayidx181 = getelementptr inbounds i8, ptr %mvPred, i64 4
  %arrayidx183 = getelementptr inbounds i8, ptr %mvPred, i64 8
  %erc_img184 = getelementptr inbounds i8, ptr %0, i64 856520
  %yptr = getelementptr inbounds i8, ptr %recfr, i64 8
  br label %do.body31, !dbg !1581

do.body31:                                        ; preds = %for.end278, %entry
  %threshold.1 = phi i32 [ 3, %entry ], [ 2, %for.end278 ], !dbg !1561
  %compSplit2.1 = phi i32 [ 0, %entry ], [ %compSplit2.4, %for.end278 ], !dbg !1582
  %compSplit1.1 = phi i32 [ 0, %entry ], [ %compSplit1.4, %for.end278 ], !dbg !1583
  %predMBNum.1 = phi i32 [ 0, %entry ], [ %predMBNum.4, %for.end278 ], !dbg !1584
    #dbg_value(i32 %predMBNum.1, !1537, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit1.1, !1539, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.1, !1540, !DIExpression(), !1561)
    #dbg_value(i32 %threshold.1, !1549, !DIExpression(), !1561)
    #dbg_value(i32 0, !1550, !DIExpression(), !1561)
    #dbg_value(i32 0, !1545, !DIExpression(), !1561)
    #dbg_value(i32 0, !1546, !DIExpression(), !1561)
    #dbg_value(i32 0, !1547, !DIExpression(), !1561)
    #dbg_value(i32 4, !1552, !DIExpression(), !1561)
  br label %for.body, !dbg !1585

for.body:                                         ; preds = %do.body31, %for.inc276
  %indvars.iv = phi i64 [ 4, %do.body31 ], [ %indvars.iv.next, %for.inc276 ]
  %predMBNum.2557 = phi i32 [ %predMBNum.1, %do.body31 ], [ %predMBNum.4, %for.inc276 ]
  %compSplit1.2556 = phi i32 [ %compSplit1.1, %do.body31 ], [ %compSplit1.4, %for.inc276 ]
  %compSplit2.2555 = phi i32 [ %compSplit2.1, %do.body31 ], [ %compSplit2.4, %for.inc276 ]
  %minDist.0553 = phi i32 [ 0, %do.body31 ], [ %minDist.4, %for.inc276 ]
  %fZeroMotionChecked.0552 = phi i32 [ 0, %do.body31 ], [ %fZeroMotionChecked.4, %for.inc276 ]
  %fInterNeighborExists.0550 = phi i32 [ 0, %do.body31 ], [ %fInterNeighborExists.3, %for.inc276 ]
    #dbg_value(i32 %predMBNum.2557, !1537, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit1.2556, !1539, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.2555, !1540, !DIExpression(), !1561)
    #dbg_value(i64 %indvars.iv, !1552, !DIExpression(), !1561)
    #dbg_value(i32 %minDist.0553, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.0552, !1547, !DIExpression(), !1561)
    #dbg_value(i32 poison, !1546, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.0550, !1545, !DIExpression(), !1561)
  %arrayidx = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv, !dbg !1588
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1588
  %cmp32.not = icmp slt i32 %1, %threshold.1, !dbg !1592
  br i1 %cmp32.not, label %for.inc276, label %if.then, !dbg !1593

if.then:                                          ; preds = %for.body
  %2 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1594
  switch i32 %2, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb33
    i32 6, label %sw.bb35
    i32 7, label %sw.bb37
  ], !dbg !1594

sw.bb:                                            ; preds = %if.then
    #dbg_value(i32 %sub, !1537, !DIExpression(), !1561)
    #dbg_value(i32 2, !1539, !DIExpression(), !1561)
    #dbg_value(i32 3, !1540, !DIExpression(), !1561)
  br label %sw.epilog, !dbg !1596

sw.bb33:                                          ; preds = %if.then
    #dbg_value(i32 %sub34, !1537, !DIExpression(), !1561)
    #dbg_value(i32 1, !1539, !DIExpression(), !1561)
    #dbg_value(i32 3, !1540, !DIExpression(), !1561)
  br label %sw.epilog, !dbg !1598

sw.bb35:                                          ; preds = %if.then
    #dbg_value(i32 %add36, !1537, !DIExpression(), !1561)
    #dbg_value(i32 0, !1539, !DIExpression(), !1561)
    #dbg_value(i32 1, !1540, !DIExpression(), !1561)
  br label %sw.epilog, !dbg !1599

sw.bb37:                                          ; preds = %if.then
    #dbg_value(i32 %add38, !1537, !DIExpression(), !1561)
    #dbg_value(i32 0, !1539, !DIExpression(), !1561)
    #dbg_value(i32 2, !1540, !DIExpression(), !1561)
  br label %sw.epilog, !dbg !1600

sw.epilog:                                        ; preds = %if.then, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb
  %compSplit2.3 = phi i32 [ %compSplit2.2555, %if.then ], [ 2, %sw.bb37 ], [ 1, %sw.bb35 ], [ 3, %sw.bb33 ], [ 3, %sw.bb ], !dbg !1561
  %compSplit1.3 = phi i32 [ %compSplit1.2556, %if.then ], [ 0, %sw.bb37 ], [ 0, %sw.bb35 ], [ 1, %sw.bb33 ], [ 2, %sw.bb ], !dbg !1561
  %predMBNum.3 = phi i32 [ %predMBNum.2557, %if.then ], [ %add38, %sw.bb37 ], [ %add36, %sw.bb35 ], [ %sub34, %sw.bb33 ], [ %sub, %sw.bb ], !dbg !1561
    #dbg_value(i32 %predMBNum.3, !1537, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit1.3, !1539, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.3, !1540, !DIExpression(), !1561)
  %shl39 = shl i32 %predMBNum.3, 2, !dbg !1601
  %idx.ext40 = sext i32 %shl39 to i64, !dbg !1601
  %add.ptr41 = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext40, !dbg !1601
  %3 = load i8, ptr %add.ptr41, align 4, !dbg !1601
  %cmp42 = icmp ugt i8 %3, 2, !dbg !1601
  br i1 %cmp42, label %cond.true, label %cond.false, !dbg !1603

cond.true:                                        ; preds = %sw.epilog
  %idx.ext47 = zext nneg i32 %compSplit1.3 to i64, !dbg !1601
  %add.ptr48 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext47, !dbg !1601
  %4 = load i8, ptr %add.ptr48, align 4, !dbg !1601
  %cmp51 = icmp eq i8 %4, 6, !dbg !1601
  br i1 %cmp51, label %for.inc276, label %cond.true67, !dbg !1601

cond.false:                                       ; preds = %sw.epilog
  %cmp58 = icmp eq i8 %3, 2, !dbg !1601
  br i1 %cmp58, label %for.inc276, label %cond.false114.peel, !dbg !1603

cond.true67:                                      ; preds = %cond.true
  %idx.ext71 = zext nneg i32 %compSplit2.3 to i64, !dbg !1604
  %add.ptr72 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext71, !dbg !1604
  %5 = load i8, ptr %add.ptr72, align 4, !dbg !1604
  %cmp75 = icmp eq i8 %5, 6, !dbg !1604
  br i1 %cmp75, label %for.inc276, label %cond.true104.peel, !dbg !1604

cond.false114.peel:                               ; preds = %cond.false
    #dbg_value(i1 false, !1548, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1561)
    #dbg_value(i32 %compSplit1.3, !1543, !DIExpression(), !1561)
    #dbg_value(i32 %minDist.0553, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.0552, !1547, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.0550, !1545, !DIExpression(), !1561)
  %mv176 = getelementptr inbounds i8, ptr %add.ptr41, i64 12
  %cmp269 = icmp eq i32 %compSplit1.3, %compSplit2.3
  %cond271.neg = select i1 %cmp269, i32 -2, i32 -1
  %cond589 = icmp eq i8 %3, 0, !dbg !1605
  br i1 %cond589, label %if.then122.peel, label %cond.false114.peel.if.else157.peel_crit_edge, !dbg !1605

cond.false114.peel.if.else157.peel_crit_edge:     ; preds = %cond.false114.peel
  %.pre569 = zext nneg i32 %compSplit1.3 to i64, !dbg !1610
  br label %if.else157.peel, !dbg !1605

cond.true104.peel:                                ; preds = %cond.true67
    #dbg_value(i1 %cmp42, !1548, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1561)
    #dbg_value(i32 %compSplit1.3, !1543, !DIExpression(), !1561)
    #dbg_value(i32 %minDist.0553, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.0552, !1547, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.0550, !1545, !DIExpression(), !1561)
  %mv176571 = getelementptr inbounds i8, ptr %add.ptr41, i64 12
  %cmp269572 = icmp eq i32 %compSplit1.3, %compSplit2.3
  %cond271.neg573 = select i1 %cmp269572, i32 -2, i32 -1
  %idx.ext108.peel = zext nneg i32 %compSplit1.3 to i64, !dbg !1614
  %add.ptr109.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext108.peel, !dbg !1614
  %6 = load i8, ptr %add.ptr109.peel, align 4, !dbg !1614
  switch i8 %6, label %if.else157.peel [
    i8 4, label %if.then122.peel
    i8 6, label %for.inc268.peel
  ], !dbg !1614

if.else157.peel:                                  ; preds = %cond.true104.peel, %cond.false114.peel.if.else157.peel_crit_edge
  %cond271.neg587 = phi i32 [ %cond271.neg, %cond.false114.peel.if.else157.peel_crit_edge ], [ %cond271.neg573, %cond.true104.peel ]
  %mv176582 = phi ptr [ %mv176, %cond.false114.peel.if.else157.peel_crit_edge ], [ %mv176571, %cond.true104.peel ]
  %conv92577 = phi i32 [ 0, %cond.false114.peel.if.else157.peel_crit_edge ], [ 1, %cond.true104.peel ]
  %idx.ext169.peel.pre-phi = phi i64 [ %.pre569, %cond.false114.peel.if.else157.peel_crit_edge ], [ %idx.ext108.peel, %cond.true104.peel ], !dbg !1610
  %mv.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext169.peel.pre-phi, i32 3, !dbg !1610
  %cond.peel = select i1 %cmp42, ptr %mv.peel, ptr %mv176582, !dbg !1610
    #dbg_value(ptr %cond.peel, !1559, !DIExpression(), !1561)
    #dbg_assign(i32 poison, !1558, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1615, ptr %mvPred, !DIExpression(), !1561)
  %7 = load <2 x i32>, ptr %cond.peel, align 4, !dbg !1616
  store <2 x i32> %7, ptr %mvPred, align 8, !dbg !1617, !DIAssignID !1615
    #dbg_assign(i32 poison, !1558, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1615, ptr %arrayidx181, !DIExpression(), !1561)
  %arrayidx182.peel = getelementptr inbounds i8, ptr %cond.peel, i64 8, !dbg !1618
  %8 = load i32, ptr %arrayidx182.peel, align 4, !dbg !1618
    #dbg_assign(i32 %8, !1558, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1619, ptr %arrayidx183, !DIExpression(), !1561)
  br label %if.end189.peel

if.then122.peel:                                  ; preds = %cond.true104.peel, %cond.false114.peel
  %cond271.neg586 = phi i32 [ %cond271.neg573, %cond.true104.peel ], [ %cond271.neg, %cond.false114.peel ]
  %mv176581 = phi ptr [ %mv176571, %cond.true104.peel ], [ %mv176, %cond.false114.peel ]
  %conv92576 = phi i32 [ 1, %cond.true104.peel ], [ 0, %cond.false114.peel ]
  %tobool.not.peel = icmp eq i32 %fZeroMotionChecked.0552, 0, !dbg !1620
  br i1 %tobool.not.peel, label %if.else124.peel, label %for.inc268.peel, !dbg !1623

if.else124.peel:                                  ; preds = %if.then122.peel
    #dbg_value(i32 1, !1547, !DIExpression(), !1561)
  store i32 0, ptr %arrayidx181, align 4, !dbg !1624, !DIAssignID !1626
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1626, ptr %arrayidx181, !DIExpression(), !1561)
  store i32 0, ptr %mvPred, align 8, !dbg !1627, !DIAssignID !1628
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1628, ptr %mvPred, !DIExpression(), !1561)
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1619, ptr %arrayidx183, !DIExpression(), !1561)
  br label %if.end189.peel, !dbg !1629

if.end189.peel:                                   ; preds = %if.else124.peel, %if.else157.peel
  %.sink = phi i32 [ 0, %if.else124.peel ], [ %8, %if.else157.peel ]
  %cond271.neg585 = phi i32 [ %cond271.neg586, %if.else124.peel ], [ %cond271.neg587, %if.else157.peel ]
  %mv176580 = phi ptr [ %mv176581, %if.else124.peel ], [ %mv176582, %if.else157.peel ]
  %conv92575 = phi i32 [ %conv92576, %if.else124.peel ], [ %conv92577, %if.else157.peel ]
  %fZeroMotionChecked.2.peel = phi i32 [ 1, %if.else124.peel ], [ %fZeroMotionChecked.0552, %if.else157.peel ], !dbg !1630
  store i32 %.sink, ptr %arrayidx183, align 8, !dbg !1631, !DIAssignID !1619
  %9 = load ptr, ptr %erc_img184, align 8, !dbg !1631
  %10 = load i32, ptr %xMin, align 4, !dbg !1631
  %11 = load i32, ptr %yMin, align 4, !dbg !1631
  call fastcc void @buildPredRegionYUV(ptr noundef %9, ptr noundef nonnull %mvPred, i32 noundef %10, i32 noundef %11, ptr noundef %predMB), !dbg !1631
    #dbg_value(i32 %fZeroMotionChecked.2.peel, !1547, !DIExpression(), !1561)
  %12 = load ptr, ptr %yptr, align 8, !dbg !1632
  %call.peel = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %12, i32 noundef %picSizeX), !dbg !1633
    #dbg_value(i32 %call.peel, !1551, !DIExpression(), !1561)
  %cmp203.peel = icmp sge i32 %call.peel, %minDist.0553, !dbg !1634
  %tobool206.peel = icmp ne i32 %fInterNeighborExists.0550, 0
  %or.cond.peel = select i1 %cmp203.peel, i1 %tobool206.peel, i1 false, !dbg !1636
  br i1 %or.cond.peel, label %for.inc268.peel, label %for.body211.preheader.peel, !dbg !1636

for.body211.preheader.peel:                       ; preds = %if.end189.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false), !dbg !1637
    #dbg_value(i64 poison, !1553, !DIExpression(), !1561)
  %13 = load i8, ptr %add.ptr41, align 4, !dbg !1641
  %cmp222.peel = icmp ugt i8 %13, 2, !dbg !1641
  br i1 %cmp222.peel, label %cond.true224.peel, label %cond.false234.peel, !dbg !1642

cond.false234.peel:                               ; preds = %for.body211.preheader.peel
  %cmp240.peel = icmp eq i8 %13, 0, !dbg !1641
  br i1 %cmp240.peel, label %cond.end250.peel, label %cond.false246.peel, !dbg !1642

cond.true224.peel:                                ; preds = %for.body211.preheader.peel
  %idx.ext228.peel = zext nneg i32 %compSplit1.3 to i64, !dbg !1641
  %add.ptr229.peel = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext228.peel, !dbg !1641
  %14 = load i8, ptr %add.ptr229.peel, align 4, !dbg !1641
  %cmp232.peel = icmp eq i8 %14, 4, !dbg !1641
  br i1 %cmp232.peel, label %cond.end250.peel, label %cond.false246.peel, !dbg !1641

cond.false246.peel:                               ; preds = %cond.true224.peel, %cond.false234.peel
  br label %cond.end250.peel, !dbg !1642

cond.end250.peel:                                 ; preds = %cond.false246.peel, %cond.true224.peel, %cond.false234.peel
  %cond251.peel = phi i8 [ 1, %cond.false246.peel ], [ 0, %cond.false234.peel ], [ 0, %cond.true224.peel ], !dbg !1642
  store i8 %cond251.peel, ptr %add.ptr, align 4, !dbg !1643
  %recfr.val541.peel = load ptr, ptr %recfr, align 8, !dbg !1644
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val541.peel, i32 noundef %picSizeX), !dbg !1644
  br label %for.inc268.peel, !dbg !1645

for.inc268.peel:                                  ; preds = %cond.true104.peel, %cond.end250.peel, %if.end189.peel, %if.then122.peel
  %cond271.neg584 = phi i32 [ %cond271.neg586, %if.then122.peel ], [ %cond271.neg585, %if.end189.peel ], [ %cond271.neg585, %cond.end250.peel ], [ %cond271.neg573, %cond.true104.peel ]
  %mv176579 = phi ptr [ %mv176581, %if.then122.peel ], [ %mv176580, %if.end189.peel ], [ %mv176580, %cond.end250.peel ], [ %mv176571, %cond.true104.peel ]
  %conv92574 = phi i32 [ %conv92576, %if.then122.peel ], [ %conv92575, %if.end189.peel ], [ %conv92575, %cond.end250.peel ], [ 1, %cond.true104.peel ]
  %fInterNeighborExists.2.peel = phi i32 [ %fInterNeighborExists.0550, %if.then122.peel ], [ 1, %if.end189.peel ], [ 1, %cond.end250.peel ], [ %fInterNeighborExists.0550, %cond.true104.peel ], !dbg !1630
  %fZeroMotionChecked.3.peel = phi i32 [ 1, %if.then122.peel ], [ %fZeroMotionChecked.2.peel, %if.end189.peel ], [ %fZeroMotionChecked.2.peel, %cond.end250.peel ], [ %fZeroMotionChecked.0552, %cond.true104.peel ], !dbg !1630
  %minDist.3.peel = phi i32 [ %minDist.0553, %if.then122.peel ], [ %minDist.0553, %if.end189.peel ], [ %call.peel, %cond.end250.peel ], [ %minDist.0553, %cond.true104.peel ], !dbg !1646
    #dbg_value(i32 %minDist.3.peel, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.3.peel, !1547, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.2.peel, !1545, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.3, !1543, !DIExpression(), !1561)
  %sub272.peel = add nsw i32 %cond271.neg584, %conv92574, !dbg !1647
    #dbg_value(i32 %sub272.peel, !1548, !DIExpression(), !1561)
  %cmp94.peel = icmp sgt i32 %sub272.peel, -1, !dbg !1648
  br i1 %cmp94.peel, label %for.body96, label %for.inc276, !dbg !1649

for.body96:                                       ; preds = %for.inc268.peel
    #dbg_value(i32 %minDist.3.peel, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %sub272.peel, !1548, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.3.peel, !1547, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.2.peel, !1545, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.3, !1543, !DIExpression(), !1561)
  %15 = load i8, ptr %add.ptr41, align 4, !dbg !1614
  %cmp102 = icmp ugt i8 %15, 2, !dbg !1614
  br i1 %cmp102, label %cond.true104, label %cond.false114, !dbg !1605

cond.true104:                                     ; preds = %for.body96
  %idx.ext108 = zext nneg i32 %compSplit2.3 to i64, !dbg !1614
  %add.ptr109 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext108, !dbg !1614
  %16 = load i8, ptr %add.ptr109, align 4, !dbg !1614
  switch i8 %16, label %if.else157 [
    i8 4, label %if.then122
    i8 6, label %for.inc276
  ], !dbg !1614

cond.false114:                                    ; preds = %for.body96
  switch i8 %15, label %cond.false114.if.else157_crit_edge [
    i8 0, label %if.then122
    i8 2, label %for.inc276
  ], !dbg !1605

cond.false114.if.else157_crit_edge:               ; preds = %cond.false114
  %.pre = zext nneg i32 %compSplit2.3 to i64, !dbg !1610
  br label %if.else157, !dbg !1605

if.then122:                                       ; preds = %cond.true104, %cond.false114
  %tobool.not = icmp eq i32 %fZeroMotionChecked.3.peel, 0, !dbg !1620
  br i1 %tobool.not, label %if.else124, label %for.inc276, !dbg !1623

if.else124:                                       ; preds = %if.then122
    #dbg_value(i32 1, !1547, !DIExpression(), !1561)
  store i32 0, ptr %arrayidx181, align 4, !dbg !1624, !DIAssignID !1626
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1626, ptr %arrayidx181, !DIExpression(), !1561)
  store i32 0, ptr %mvPred, align 8, !dbg !1627, !DIAssignID !1628
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1628, ptr %mvPred, !DIExpression(), !1561)
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1619, ptr %arrayidx183, !DIExpression(), !1561)
  br label %if.end189, !dbg !1629

if.else157:                                       ; preds = %cond.true104, %cond.false114.if.else157_crit_edge
  %idx.ext169.pre-phi = phi i64 [ %.pre, %cond.false114.if.else157_crit_edge ], [ %idx.ext108, %cond.true104 ], !dbg !1610
  %mv = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext169.pre-phi, i32 3, !dbg !1610
  %cond = select i1 %cmp102, ptr %mv, ptr %mv176579, !dbg !1610
    #dbg_value(ptr %cond, !1559, !DIExpression(), !1561)
    #dbg_assign(i32 poison, !1558, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1615, ptr %mvPred, !DIExpression(), !1561)
  %17 = load <2 x i32>, ptr %cond, align 4, !dbg !1616
  store <2 x i32> %17, ptr %mvPred, align 8, !dbg !1617, !DIAssignID !1615
    #dbg_assign(i32 poison, !1558, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1615, ptr %arrayidx181, !DIExpression(), !1561)
  %arrayidx182 = getelementptr inbounds i8, ptr %cond, i64 8, !dbg !1618
  %18 = load i32, ptr %arrayidx182, align 4, !dbg !1618
    #dbg_assign(i32 %18, !1558, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1619, ptr %arrayidx183, !DIExpression(), !1561)
  br label %if.end189

if.end189:                                        ; preds = %if.else157, %if.else124
  %.sink595 = phi i32 [ %18, %if.else157 ], [ 0, %if.else124 ]
  %fZeroMotionChecked.2 = phi i32 [ %fZeroMotionChecked.3.peel, %if.else157 ], [ 1, %if.else124 ], !dbg !1630
  store i32 %.sink595, ptr %arrayidx183, align 8, !dbg !1631, !DIAssignID !1619
  %19 = load ptr, ptr %erc_img184, align 8, !dbg !1631
  %20 = load i32, ptr %xMin, align 4, !dbg !1631
  %21 = load i32, ptr %yMin, align 4, !dbg !1631
  call fastcc void @buildPredRegionYUV(ptr noundef %19, ptr noundef nonnull %mvPred, i32 noundef %20, i32 noundef %21, ptr noundef %predMB), !dbg !1631
    #dbg_value(i32 %fZeroMotionChecked.2, !1547, !DIExpression(), !1561)
  %22 = load ptr, ptr %yptr, align 8, !dbg !1632
  %call = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %22, i32 noundef %picSizeX), !dbg !1633
    #dbg_value(i32 %call, !1551, !DIExpression(), !1561)
  %cmp203 = icmp sge i32 %call, %minDist.3.peel, !dbg !1634
  %tobool206 = icmp ne i32 %fInterNeighborExists.2.peel, 0
  %or.cond = select i1 %cmp203, i1 %tobool206, i1 false, !dbg !1636
  br i1 %or.cond, label %for.inc276, label %for.body211.preheader, !dbg !1636

for.body211.preheader:                            ; preds = %if.end189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false), !dbg !1637
    #dbg_value(i64 poison, !1553, !DIExpression(), !1561)
  %23 = load i8, ptr %add.ptr41, align 4, !dbg !1641
  %cmp222 = icmp ugt i8 %23, 2, !dbg !1641
  br i1 %cmp222, label %cond.true224, label %cond.false234, !dbg !1642

cond.true224:                                     ; preds = %for.body211.preheader
  %idx.ext228 = zext nneg i32 %compSplit2.3 to i64, !dbg !1641
  %add.ptr229 = getelementptr inbounds %struct.object_buffer, ptr %add.ptr41, i64 %idx.ext228, !dbg !1641
  %24 = load i8, ptr %add.ptr229, align 4, !dbg !1641
  %cmp232 = icmp eq i8 %24, 4, !dbg !1641
  br i1 %cmp232, label %cond.end250, label %cond.false246, !dbg !1641

cond.false234:                                    ; preds = %for.body211.preheader
  %cmp240 = icmp eq i8 %23, 0, !dbg !1641
  br i1 %cmp240, label %cond.end250, label %cond.false246, !dbg !1642

cond.false246:                                    ; preds = %cond.false234, %cond.true224
  br label %cond.end250, !dbg !1642

cond.end250:                                      ; preds = %cond.true224, %cond.false234, %cond.false246
  %cond251 = phi i8 [ 1, %cond.false246 ], [ 0, %cond.false234 ], [ 0, %cond.true224 ], !dbg !1642
  store i8 %cond251, ptr %add.ptr, align 4, !dbg !1643
  %recfr.val541 = load ptr, ptr %recfr, align 8, !dbg !1644
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val541, i32 noundef %picSizeX), !dbg !1644
  br label %for.inc276, !dbg !1645

for.inc276:                                       ; preds = %cond.true104, %for.inc268.peel, %if.then122, %if.end189, %cond.end250, %cond.false114, %cond.true, %cond.false, %cond.true67, %for.body
  %fInterNeighborExists.3 = phi i32 [ %fInterNeighborExists.0550, %for.body ], [ %fInterNeighborExists.0550, %cond.true67 ], [ %fInterNeighborExists.0550, %cond.false ], [ %fInterNeighborExists.0550, %cond.true ], [ %fInterNeighborExists.2.peel, %for.inc268.peel ], [ %fInterNeighborExists.2.peel, %if.then122 ], [ 1, %if.end189 ], [ 1, %cond.end250 ], [ %fInterNeighborExists.2.peel, %cond.false114 ], [ %fInterNeighborExists.2.peel, %cond.true104 ], !dbg !1650
  %fZeroMotionChecked.4 = phi i32 [ %fZeroMotionChecked.0552, %for.body ], [ %fZeroMotionChecked.0552, %cond.true67 ], [ %fZeroMotionChecked.0552, %cond.false ], [ %fZeroMotionChecked.0552, %cond.true ], [ %fZeroMotionChecked.3.peel, %for.inc268.peel ], [ 1, %if.then122 ], [ %fZeroMotionChecked.2, %if.end189 ], [ %fZeroMotionChecked.2, %cond.end250 ], [ %fZeroMotionChecked.3.peel, %cond.false114 ], [ %fZeroMotionChecked.3.peel, %cond.true104 ], !dbg !1651
  %minDist.4 = phi i32 [ %minDist.0553, %for.body ], [ %minDist.0553, %cond.true67 ], [ %minDist.0553, %cond.false ], [ %minDist.0553, %cond.true ], [ %minDist.3.peel, %for.inc268.peel ], [ %minDist.3.peel, %if.then122 ], [ %minDist.3.peel, %if.end189 ], [ %call, %cond.end250 ], [ %minDist.3.peel, %cond.false114 ], [ %minDist.3.peel, %cond.true104 ], !dbg !1646
  %compSplit2.4 = phi i32 [ %compSplit2.2555, %for.body ], [ %compSplit2.3, %cond.true67 ], [ %compSplit2.3, %cond.false ], [ %compSplit2.3, %cond.true ], [ %compSplit2.3, %for.inc268.peel ], [ %compSplit2.3, %if.then122 ], [ %compSplit2.3, %if.end189 ], [ %compSplit2.3, %cond.end250 ], [ %compSplit2.3, %cond.false114 ], [ %compSplit2.3, %cond.true104 ], !dbg !1582
  %compSplit1.4 = phi i32 [ %compSplit1.2556, %for.body ], [ %compSplit1.3, %cond.true67 ], [ %compSplit1.3, %cond.false ], [ %compSplit1.3, %cond.true ], [ %compSplit1.3, %for.inc268.peel ], [ %compSplit1.3, %if.then122 ], [ %compSplit1.3, %if.end189 ], [ %compSplit1.3, %cond.end250 ], [ %compSplit1.3, %cond.false114 ], [ %compSplit1.3, %cond.true104 ], !dbg !1583
  %predMBNum.4 = phi i32 [ %predMBNum.2557, %for.body ], [ %predMBNum.3, %cond.true67 ], [ %predMBNum.3, %cond.false ], [ %predMBNum.3, %cond.true ], [ %predMBNum.3, %for.inc268.peel ], [ %predMBNum.3, %if.then122 ], [ %predMBNum.3, %if.end189 ], [ %predMBNum.3, %cond.end250 ], [ %predMBNum.3, %cond.false114 ], [ %predMBNum.3, %cond.true104 ], !dbg !1584
    #dbg_value(i32 %predMBNum.4, !1537, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit1.4, !1539, !DIExpression(), !1561)
    #dbg_value(i32 %compSplit2.4, !1540, !DIExpression(), !1561)
    #dbg_value(i32 %minDist.4, !1550, !DIExpression(), !1561)
    #dbg_value(i32 %fZeroMotionChecked.4, !1547, !DIExpression(), !1561)
    #dbg_value(i32 poison, !1546, !DIExpression(), !1561)
    #dbg_value(i32 %fInterNeighborExists.3, !1545, !DIExpression(), !1561)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1652
    #dbg_value(i64 %indvars.iv.next, !1552, !DIExpression(), !1561)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !1653
  br i1 %exitcond.not, label %for.end278, label %for.body, !dbg !1585, !llvm.loop !1654

for.end278:                                       ; preds = %for.inc276
    #dbg_value(i32 %threshold.1, !1549, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1561)
  %25 = add nsw i32 %threshold.1, -3, !dbg !1656
  %cmp279 = icmp ult i32 %25, -2, !dbg !1656
  %cmp281 = icmp eq i32 %fInterNeighborExists.3, 0, !dbg !1657
  %26 = select i1 %cmp279, i1 %cmp281, i1 false, !dbg !1657
  br i1 %26, label %do.body31, label %do.end, !dbg !1658, !llvm.loop !1659

do.end:                                           ; preds = %for.end278
  %tobool283.not = icmp eq i32 %fZeroMotionChecked.4, 0, !dbg !1661
  br i1 %tobool283.not, label %if.then284, label %if.end342, !dbg !1663

if.then284:                                       ; preds = %do.end
  store i32 0, ptr %arrayidx181, align 4, !dbg !1664, !DIAssignID !1666
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !1666, ptr %arrayidx181, !DIExpression(), !1561)
  store i32 0, ptr %mvPred, align 8, !dbg !1667, !DIAssignID !1668
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !1668, ptr %mvPred, !DIExpression(), !1561)
  store i32 0, ptr %arrayidx183, align 8, !dbg !1669, !DIAssignID !1670
    #dbg_assign(i32 0, !1558, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !1670, ptr %arrayidx183, !DIExpression(), !1561)
  %27 = load ptr, ptr %erc_img184, align 8, !dbg !1671
  %28 = load i32, ptr %xMin, align 4, !dbg !1672
  %29 = load i32, ptr %yMin, align 4, !dbg !1673
  call fastcc void @buildPredRegionYUV(ptr noundef %27, ptr noundef nonnull %mvPred, i32 noundef %28, i32 noundef %29, ptr noundef %predMB), !dbg !1674
  %30 = load ptr, ptr %yptr, align 8, !dbg !1675
  %call306 = tail call fastcc i32 @edgeDistortion(ptr noundef nonnull %predBlocks, i32 noundef %add10, ptr noundef %predMB, ptr noundef %30, i32 noundef %picSizeX), !dbg !1676
    #dbg_value(i32 %call306, !1551, !DIExpression(), !1561)
  %cmp307 = icmp sge i32 %call306, %minDist.4, !dbg !1677
  %tobool310 = icmp ne i32 %fInterNeighborExists.3, 0
  %or.cond377 = select i1 %cmp307, i1 %tobool310, i1 false, !dbg !1679
  br i1 %or.cond377, label %if.end342, label %for.body315.preheader, !dbg !1679

for.body315.preheader:                            ; preds = %if.then284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mvBest, ptr noundef nonnull align 8 dereferenceable(12) %mvPred, i64 12, i1 false), !dbg !1680
    #dbg_value(i64 poison, !1553, !DIExpression(), !1561)
  store i8 0, ptr %add.ptr, align 4, !dbg !1684
  %recfr.val = load ptr, ptr %recfr, align 8, !dbg !1685
  tail call fastcc void @copyPredMB(i32 noundef %add10, ptr noundef %predMB, ptr %recfr.val, i32 noundef %picSizeX), !dbg !1685
  br label %if.end342, !dbg !1686

if.end342:                                        ; preds = %for.body315.preheader, %if.then284, %do.end
    #dbg_value(i32 0, !1552, !DIExpression(), !1561)
  %mv349 = getelementptr inbounds i8, ptr %add.ptr, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %mv349, ptr noundef nonnull align 4 dereferenceable(12) %mvBest, i64 12, i1 false), !dbg !1687
    #dbg_value(i64 poison, !1552, !DIExpression(), !1561)
  %idxprom368 = sext i32 %add10 to i64, !dbg !1690
  %arrayidx369 = getelementptr inbounds i8, ptr %yCondition, i64 %idxprom368, !dbg !1690
  store i8 2, ptr %arrayidx369, align 1, !dbg !1691
    #dbg_value(i32 1, !1542, !DIExpression(), !1561)
    #dbg_value(i32 0, !1541, !DIExpression(), !1561)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mvPred) #18, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mvBest), !dbg !1692
  ret void, !dbg !1693
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealByCopy(ptr nocapture noundef readonly %recfr, i32 noundef %currMBNum, ptr nocapture noundef writeonly %object_list, i32 noundef %picSizeX) unnamed_addr #4 !dbg !1694 {
entry:
    #dbg_value(ptr %recfr, !1698, !DIExpression(), !1703)
    #dbg_value(i32 %currMBNum, !1699, !DIExpression(), !1703)
    #dbg_value(ptr %object_list, !1700, !DIExpression(), !1703)
    #dbg_value(i32 %picSizeX, !1701, !DIExpression(), !1703)
  %shl = shl i32 %currMBNum, 2, !dbg !1704
  %idx.ext = sext i32 %shl to i64, !dbg !1705
  %add.ptr = getelementptr inbounds %struct.object_buffer, ptr %object_list, i64 %idx.ext, !dbg !1705
    #dbg_value(ptr %add.ptr, !1702, !DIExpression(), !1703)
  store i8 0, ptr %add.ptr, align 4, !dbg !1706
  %shr = ashr i32 %picSizeX, 4, !dbg !1707
  %rem = srem i32 %currMBNum, %shr, !dbg !1707
  %shl1 = shl nsw i32 %rem, 4, !dbg !1708
  %xMin = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !1709
  store i32 %shl1, ptr %xMin, align 4, !dbg !1710
  %div = sdiv i32 %currMBNum, %shr, !dbg !1711
  %shl3 = shl i32 %div, 4, !dbg !1712
  %yMin = getelementptr inbounds i8, ptr %add.ptr, i64 8, !dbg !1713
  store i32 %shl3, ptr %yMin, align 4, !dbg !1714
  %shr7 = ashr i32 %picSizeX, 3, !dbg !1715
  %shl6 = shl nsw i32 %shr7, 1, !dbg !1715
  %mul = mul i32 %shl6, %div, !dbg !1715
  %shl10 = shl nsw i32 %rem, 1, !dbg !1715
  %add11 = add nsw i32 %mul, %shl10, !dbg !1715
    #dbg_value(ptr %recfr, !1716, !DIExpression(), !1732)
    #dbg_value(i32 %add11, !1721, !DIExpression(), !1732)
    #dbg_value(i32 %picSizeX, !1722, !DIExpression(), !1732)
    #dbg_value(i32 16, !1723, !DIExpression(), !1732)
  %0 = load ptr, ptr %recfr, align 8, !dbg !1734
    #dbg_value(ptr %0, !1724, !DIExpression(), !1732)
  %dec_picture2.i = getelementptr inbounds i8, ptr %0, i64 856456, !dbg !1735
  %1 = load ptr, ptr %dec_picture2.i, align 8, !dbg !1735
    #dbg_value(ptr %1, !1725, !DIExpression(), !1732)
  %ppSliceList.i = getelementptr inbounds i8, ptr %0, i64 848736, !dbg !1736
  %2 = load ptr, ptr %ppSliceList.i, align 8, !dbg !1736
  %3 = load ptr, ptr %2, align 8, !dbg !1737
  %listX.i = getelementptr inbounds i8, ptr %3, i64 264, !dbg !1738
  %4 = load ptr, ptr %listX.i, align 8, !dbg !1737
  %5 = load ptr, ptr %4, align 8, !dbg !1737
    #dbg_value(ptr %5, !1731, !DIExpression(), !1732)
  %rem.i = srem i32 %add11, %shr7, !dbg !1739
  %shl.i = shl nsw i32 %rem.i, 3, !dbg !1740
    #dbg_value(i32 %shl.i, !1729, !DIExpression(), !1732)
  %div.i = sdiv i32 %add11, %shr7, !dbg !1741
  %shl6.i = shl i32 %div.i, 3, !dbg !1742
    #dbg_value(i32 %shl6.i, !1730, !DIExpression(), !1732)
    #dbg_value(i32 %shl6.i, !1726, !DIExpression(), !1732)
  %add.i = add nsw i32 %shl6.i, 16
  %imgY.i = getelementptr inbounds i8, ptr %5, i64 128
  %yptr.i = getelementptr inbounds i8, ptr %recfr, i64 8
    #dbg_value(i32 %shl6.i, !1726, !DIExpression(), !1732)
  %6 = sext i32 %shl.i to i64, !dbg !1743
  %7 = sext i32 %shl6.i to i64, !dbg !1743
  %8 = sext i32 %picSizeX to i64, !dbg !1743
  %9 = sext i32 %add.i to i64, !dbg !1743
  %indvars.iv.next.i = or disjoint i64 %6, 1
  %indvars.iv.next.i.1 = or disjoint i64 %6, 2
  %indvars.iv.next.i.2 = or disjoint i64 %6, 3
  %indvars.iv.next.i.3 = or disjoint i64 %6, 4
  %indvars.iv.next.i.4 = or disjoint i64 %6, 5
  %indvars.iv.next.i.5 = or disjoint i64 %6, 6
  %indvars.iv.next.i.6 = or disjoint i64 %6, 7
  %indvars.iv.next.i.7 = add nsw i64 %6, 8
  %indvars.iv.next.i.8 = add nsw i64 %6, 9
  %indvars.iv.next.i.9 = add nsw i64 %6, 10
  %indvars.iv.next.i.10 = add nsw i64 %6, 11
  %indvars.iv.next.i.11 = add nsw i64 %6, 12
  %indvars.iv.next.i.12 = add nsw i64 %6, 13
  %indvars.iv.next.i.13 = add nsw i64 %6, 14
  %indvars.iv.next.i.14 = add nsw i64 %6, 15
  br label %for.cond7.preheader.i, !dbg !1743

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i, %entry
  %indvars.iv126.i = phi i64 [ %7, %entry ], [ %indvars.iv.next127.i, %for.cond7.preheader.i ]
    #dbg_value(i64 %indvars.iv126.i, !1726, !DIExpression(), !1732)
  %10 = mul nsw i64 %indvars.iv126.i, %8
    #dbg_value(i32 %shl.i, !1727, !DIExpression(), !1732)
    #dbg_value(i64 %6, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %6, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %11 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i = getelementptr inbounds ptr, ptr %11, i64 %indvars.iv126.i, !dbg !1750
  %12 = load ptr, ptr %arrayidx12.i, align 8, !dbg !1750
  %arrayidx14.i = getelementptr inbounds i16, ptr %12, i64 %6, !dbg !1750
  %13 = load i16, ptr %arrayidx14.i, align 2, !dbg !1750
  %14 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %15 = getelementptr i16, ptr %14, i64 %6, !dbg !1752
  %arrayidx16.i = getelementptr i16, ptr %15, i64 %10, !dbg !1752
  store i16 %13, ptr %arrayidx16.i, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %16 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.1 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv126.i, !dbg !1750
  %17 = load ptr, ptr %arrayidx12.i.1, align 8, !dbg !1750
  %arrayidx14.i.1 = getelementptr inbounds i16, ptr %17, i64 %indvars.iv.next.i, !dbg !1750
  %18 = load i16, ptr %arrayidx14.i.1, align 2, !dbg !1750
  %19 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %20 = getelementptr i16, ptr %19, i64 %indvars.iv.next.i, !dbg !1752
  %arrayidx16.i.1 = getelementptr i16, ptr %20, i64 %10, !dbg !1752
  store i16 %18, ptr %arrayidx16.i.1, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.1, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.1, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %21 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.2 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv126.i, !dbg !1750
  %22 = load ptr, ptr %arrayidx12.i.2, align 8, !dbg !1750
  %arrayidx14.i.2 = getelementptr inbounds i16, ptr %22, i64 %indvars.iv.next.i.1, !dbg !1750
  %23 = load i16, ptr %arrayidx14.i.2, align 2, !dbg !1750
  %24 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %25 = getelementptr i16, ptr %24, i64 %indvars.iv.next.i.1, !dbg !1752
  %arrayidx16.i.2 = getelementptr i16, ptr %25, i64 %10, !dbg !1752
  store i16 %23, ptr %arrayidx16.i.2, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.2, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.2, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %26 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.3 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv126.i, !dbg !1750
  %27 = load ptr, ptr %arrayidx12.i.3, align 8, !dbg !1750
  %arrayidx14.i.3 = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.next.i.2, !dbg !1750
  %28 = load i16, ptr %arrayidx14.i.3, align 2, !dbg !1750
  %29 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %30 = getelementptr i16, ptr %29, i64 %indvars.iv.next.i.2, !dbg !1752
  %arrayidx16.i.3 = getelementptr i16, ptr %30, i64 %10, !dbg !1752
  store i16 %28, ptr %arrayidx16.i.3, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.3, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.3, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %31 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.4 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv126.i, !dbg !1750
  %32 = load ptr, ptr %arrayidx12.i.4, align 8, !dbg !1750
  %arrayidx14.i.4 = getelementptr inbounds i16, ptr %32, i64 %indvars.iv.next.i.3, !dbg !1750
  %33 = load i16, ptr %arrayidx14.i.4, align 2, !dbg !1750
  %34 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %35 = getelementptr i16, ptr %34, i64 %indvars.iv.next.i.3, !dbg !1752
  %arrayidx16.i.4 = getelementptr i16, ptr %35, i64 %10, !dbg !1752
  store i16 %33, ptr %arrayidx16.i.4, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.4, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.4, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %36 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.5 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv126.i, !dbg !1750
  %37 = load ptr, ptr %arrayidx12.i.5, align 8, !dbg !1750
  %arrayidx14.i.5 = getelementptr inbounds i16, ptr %37, i64 %indvars.iv.next.i.4, !dbg !1750
  %38 = load i16, ptr %arrayidx14.i.5, align 2, !dbg !1750
  %39 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %40 = getelementptr i16, ptr %39, i64 %indvars.iv.next.i.4, !dbg !1752
  %arrayidx16.i.5 = getelementptr i16, ptr %40, i64 %10, !dbg !1752
  store i16 %38, ptr %arrayidx16.i.5, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.5, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.5, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %41 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.6 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv126.i, !dbg !1750
  %42 = load ptr, ptr %arrayidx12.i.6, align 8, !dbg !1750
  %arrayidx14.i.6 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv.next.i.5, !dbg !1750
  %43 = load i16, ptr %arrayidx14.i.6, align 2, !dbg !1750
  %44 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %45 = getelementptr i16, ptr %44, i64 %indvars.iv.next.i.5, !dbg !1752
  %arrayidx16.i.6 = getelementptr i16, ptr %45, i64 %10, !dbg !1752
  store i16 %43, ptr %arrayidx16.i.6, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.6, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.6, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %46 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.7 = getelementptr inbounds ptr, ptr %46, i64 %indvars.iv126.i, !dbg !1750
  %47 = load ptr, ptr %arrayidx12.i.7, align 8, !dbg !1750
  %arrayidx14.i.7 = getelementptr inbounds i16, ptr %47, i64 %indvars.iv.next.i.6, !dbg !1750
  %48 = load i16, ptr %arrayidx14.i.7, align 2, !dbg !1750
  %49 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %50 = getelementptr i16, ptr %49, i64 %indvars.iv.next.i.6, !dbg !1752
  %arrayidx16.i.7 = getelementptr i16, ptr %50, i64 %10, !dbg !1752
  store i16 %48, ptr %arrayidx16.i.7, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.7, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.7, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %51 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.8 = getelementptr inbounds ptr, ptr %51, i64 %indvars.iv126.i, !dbg !1750
  %52 = load ptr, ptr %arrayidx12.i.8, align 8, !dbg !1750
  %arrayidx14.i.8 = getelementptr inbounds i16, ptr %52, i64 %indvars.iv.next.i.7, !dbg !1750
  %53 = load i16, ptr %arrayidx14.i.8, align 2, !dbg !1750
  %54 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %55 = getelementptr i16, ptr %54, i64 %indvars.iv.next.i.7, !dbg !1752
  %arrayidx16.i.8 = getelementptr i16, ptr %55, i64 %10, !dbg !1752
  store i16 %53, ptr %arrayidx16.i.8, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.8, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.8, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %56 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.9 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv126.i, !dbg !1750
  %57 = load ptr, ptr %arrayidx12.i.9, align 8, !dbg !1750
  %arrayidx14.i.9 = getelementptr inbounds i16, ptr %57, i64 %indvars.iv.next.i.8, !dbg !1750
  %58 = load i16, ptr %arrayidx14.i.9, align 2, !dbg !1750
  %59 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %60 = getelementptr i16, ptr %59, i64 %indvars.iv.next.i.8, !dbg !1752
  %arrayidx16.i.9 = getelementptr i16, ptr %60, i64 %10, !dbg !1752
  store i16 %58, ptr %arrayidx16.i.9, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.9, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.9, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %61 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.10 = getelementptr inbounds ptr, ptr %61, i64 %indvars.iv126.i, !dbg !1750
  %62 = load ptr, ptr %arrayidx12.i.10, align 8, !dbg !1750
  %arrayidx14.i.10 = getelementptr inbounds i16, ptr %62, i64 %indvars.iv.next.i.9, !dbg !1750
  %63 = load i16, ptr %arrayidx14.i.10, align 2, !dbg !1750
  %64 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %65 = getelementptr i16, ptr %64, i64 %indvars.iv.next.i.9, !dbg !1752
  %arrayidx16.i.10 = getelementptr i16, ptr %65, i64 %10, !dbg !1752
  store i16 %63, ptr %arrayidx16.i.10, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.10, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.10, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %66 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.11 = getelementptr inbounds ptr, ptr %66, i64 %indvars.iv126.i, !dbg !1750
  %67 = load ptr, ptr %arrayidx12.i.11, align 8, !dbg !1750
  %arrayidx14.i.11 = getelementptr inbounds i16, ptr %67, i64 %indvars.iv.next.i.10, !dbg !1750
  %68 = load i16, ptr %arrayidx14.i.11, align 2, !dbg !1750
  %69 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %70 = getelementptr i16, ptr %69, i64 %indvars.iv.next.i.10, !dbg !1752
  %arrayidx16.i.11 = getelementptr i16, ptr %70, i64 %10, !dbg !1752
  store i16 %68, ptr %arrayidx16.i.11, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.11, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.11, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %71 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.12 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv126.i, !dbg !1750
  %72 = load ptr, ptr %arrayidx12.i.12, align 8, !dbg !1750
  %arrayidx14.i.12 = getelementptr inbounds i16, ptr %72, i64 %indvars.iv.next.i.11, !dbg !1750
  %73 = load i16, ptr %arrayidx14.i.12, align 2, !dbg !1750
  %74 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %75 = getelementptr i16, ptr %74, i64 %indvars.iv.next.i.11, !dbg !1752
  %arrayidx16.i.12 = getelementptr i16, ptr %75, i64 %10, !dbg !1752
  store i16 %73, ptr %arrayidx16.i.12, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.12, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.12, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %76 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.13 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv126.i, !dbg !1750
  %77 = load ptr, ptr %arrayidx12.i.13, align 8, !dbg !1750
  %arrayidx14.i.13 = getelementptr inbounds i16, ptr %77, i64 %indvars.iv.next.i.12, !dbg !1750
  %78 = load i16, ptr %arrayidx14.i.13, align 2, !dbg !1750
  %79 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %80 = getelementptr i16, ptr %79, i64 %indvars.iv.next.i.12, !dbg !1752
  %arrayidx16.i.13 = getelementptr i16, ptr %80, i64 %10, !dbg !1752
  store i16 %78, ptr %arrayidx16.i.13, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.13, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.13, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %81 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.14 = getelementptr inbounds ptr, ptr %81, i64 %indvars.iv126.i, !dbg !1750
  %82 = load ptr, ptr %arrayidx12.i.14, align 8, !dbg !1750
  %arrayidx14.i.14 = getelementptr inbounds i16, ptr %82, i64 %indvars.iv.next.i.13, !dbg !1750
  %83 = load i16, ptr %arrayidx14.i.14, align 2, !dbg !1750
  %84 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %85 = getelementptr i16, ptr %84, i64 %indvars.iv.next.i.13, !dbg !1752
  %arrayidx16.i.14 = getelementptr i16, ptr %85, i64 %10, !dbg !1752
  store i16 %83, ptr %arrayidx16.i.14, align 2, !dbg !1753
    #dbg_value(i64 %indvars.iv.next.i.14, !1727, !DIExpression(), !1732)
    #dbg_value(!DIArgList(i64 %indvars.iv.next.i.14, i64 %10), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1732)
  %86 = load ptr, ptr %imgY.i, align 8, !dbg !1745
  %arrayidx12.i.15 = getelementptr inbounds ptr, ptr %86, i64 %indvars.iv126.i, !dbg !1750
  %87 = load ptr, ptr %arrayidx12.i.15, align 8, !dbg !1750
  %arrayidx14.i.15 = getelementptr inbounds i16, ptr %87, i64 %indvars.iv.next.i.14, !dbg !1750
  %88 = load i16, ptr %arrayidx14.i.15, align 2, !dbg !1750
  %89 = load ptr, ptr %yptr.i, align 8, !dbg !1751
  %90 = getelementptr i16, ptr %89, i64 %indvars.iv.next.i.14, !dbg !1752
  %arrayidx16.i.15 = getelementptr i16, ptr %90, i64 %10, !dbg !1752
  store i16 %88, ptr %arrayidx16.i.15, align 2, !dbg !1753
    #dbg_value(i64 %6, !1727, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1732)
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, 1, !dbg !1754
    #dbg_value(i64 %indvars.iv.next127.i, !1726, !DIExpression(), !1732)
  %cmp.i = icmp slt i64 %indvars.iv.next127.i, %9, !dbg !1755
  br i1 %cmp.i, label %for.cond7.preheader.i, label %for.end19.i, !dbg !1743, !llvm.loop !1756

for.end19.i:                                      ; preds = %for.cond7.preheader.i
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %1, i64 268, !dbg !1758
  %91 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !1758
  %idxprom20.i = sext i32 %91 to i64, !dbg !1760
  %arrayidx21.i = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom20.i, !dbg !1760
  %92 = load i32, ptr %arrayidx21.i, align 4, !dbg !1760
  %shr22.i = ashr i32 %shl6.i, %92, !dbg !1761
    #dbg_value(i32 %shr22.i, !1726, !DIExpression(), !1732)
  %shr28120.i = ashr i32 %add.i, %92, !dbg !1762
  %cmp29121.i = icmp slt i32 %shr22.i, %shr28120.i, !dbg !1764
  br i1 %cmp29121.i, label %for.body30.lr.ph.i, label %copyBetweenFrames.exit, !dbg !1765

for.body30.lr.ph.i:                               ; preds = %for.end19.i
  %add36.i = add nsw i32 %shl.i, 16
  %imgUV.i = getelementptr inbounds i8, ptr %5, i64 136
  %uptr.i = getelementptr inbounds i8, ptr %recfr, i64 16
  %vptr.i = getelementptr inbounds i8, ptr %recfr, i64 24
  %93 = sext i32 %shr22.i to i64, !dbg !1765
  br label %for.body30.i, !dbg !1765

for.body30.i:                                     ; preds = %for.inc67.i, %for.body30.lr.ph.i
  %94 = phi i32 [ %91, %for.body30.lr.ph.i ], [ %116, %for.inc67.i ]
  %indvars.iv134.i = phi i64 [ %93, %for.body30.lr.ph.i ], [ %indvars.iv.next135.i, %for.inc67.i ]
  %idxprom26123.i = phi i64 [ %idxprom20.i, %for.body30.lr.ph.i ], [ %idxprom26.pre-phi.i, %for.inc67.i ]
    #dbg_value(i64 %indvars.iv134.i, !1726, !DIExpression(), !1732)
  %arrayidx33.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom26123.i, !dbg !1766
  %95 = load i32, ptr %arrayidx33.i, align 4, !dbg !1766
  %shr34.i = ashr i32 %shl.i, %95, !dbg !1768
    #dbg_value(i32 %shr34.i, !1727, !DIExpression(), !1732)
    #dbg_value(i32 %shr34.i, !1727, !DIExpression(), !1732)
  %idxprom38113.i = sext i32 %94 to i64, !dbg !1769
  %arrayidx39114.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom38113.i, !dbg !1769
  %96 = load i32, ptr %arrayidx39114.i, align 4, !dbg !1769
  %shr40115.i = ashr i32 %add36.i, %96, !dbg !1771
  %cmp41116.i = icmp slt i32 %shr34.i, %shr40115.i, !dbg !1772
  br i1 %cmp41116.i, label %for.body42.lr.ph.i, label %for.inc67.i, !dbg !1773

for.body42.lr.ph.i:                               ; preds = %for.body30.i
  %97 = sext i32 %shr34.i to i64, !dbg !1773
  %98 = trunc i64 %indvars.iv134.i to i32
  %99 = mul i32 %98, %picSizeX
  br label %for.body42.i, !dbg !1773

for.body42.i:                                     ; preds = %for.body42.i, %for.body42.lr.ph.i
  %indvars.iv130.i = phi i64 [ %97, %for.body42.lr.ph.i ], [ %indvars.iv.next131.i, %for.body42.i ]
  %100 = phi i32 [ %96, %for.body42.lr.ph.i ], [ %114, %for.body42.i ]
    #dbg_value(i64 %indvars.iv130.i, !1727, !DIExpression(), !1732)
  %shr47.i = ashr i32 %99, %100, !dbg !1774
  %101 = sext i32 %shr47.i to i64, !dbg !1776
  %102 = add nsw i64 %indvars.iv130.i, %101, !dbg !1776
    #dbg_value(!DIArgList(i32 %shr47.i, i64 %indvars.iv130.i), !1728, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value), !1732)
  %103 = load ptr, ptr %imgUV.i, align 8, !dbg !1777
  %104 = load ptr, ptr %103, align 8, !dbg !1778
  %arrayidx51.i = getelementptr inbounds ptr, ptr %104, i64 %indvars.iv134.i, !dbg !1778
  %105 = load ptr, ptr %arrayidx51.i, align 8, !dbg !1778
  %arrayidx53.i = getelementptr inbounds i16, ptr %105, i64 %indvars.iv130.i, !dbg !1778
  %106 = load i16, ptr %arrayidx53.i, align 2, !dbg !1778
  %107 = load ptr, ptr %uptr.i, align 8, !dbg !1779
  %arrayidx55.i = getelementptr inbounds i16, ptr %107, i64 %102, !dbg !1780
  store i16 %106, ptr %arrayidx55.i, align 2, !dbg !1781
  %108 = load ptr, ptr %imgUV.i, align 8, !dbg !1782
  %arrayidx57.i = getelementptr inbounds i8, ptr %108, i64 8, !dbg !1783
  %109 = load ptr, ptr %arrayidx57.i, align 8, !dbg !1783
  %arrayidx59.i = getelementptr inbounds ptr, ptr %109, i64 %indvars.iv134.i, !dbg !1783
  %110 = load ptr, ptr %arrayidx59.i, align 8, !dbg !1783
  %arrayidx61.i = getelementptr inbounds i16, ptr %110, i64 %indvars.iv130.i, !dbg !1783
  %111 = load i16, ptr %arrayidx61.i, align 2, !dbg !1783
  %112 = load ptr, ptr %vptr.i, align 8, !dbg !1784
  %arrayidx63.i = getelementptr inbounds i16, ptr %112, i64 %102, !dbg !1785
  store i16 %111, ptr %arrayidx63.i, align 2, !dbg !1786
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1, !dbg !1787
    #dbg_value(i64 %indvars.iv.next131.i, !1727, !DIExpression(), !1732)
  %113 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !1788
  %idxprom38.i = sext i32 %113 to i64, !dbg !1769
  %arrayidx39.i = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom38.i, !dbg !1769
  %114 = load i32, ptr %arrayidx39.i, align 4, !dbg !1769
  %shr40.i = ashr i32 %add36.i, %114, !dbg !1771
  %115 = sext i32 %shr40.i to i64, !dbg !1772
  %cmp41.i = icmp slt i64 %indvars.iv.next131.i, %115, !dbg !1772
  br i1 %cmp41.i, label %for.body42.i, label %for.inc67.i, !dbg !1773, !llvm.loop !1789

for.inc67.i:                                      ; preds = %for.body42.i, %for.body30.i
  %idxprom26.pre-phi.i = phi i64 [ %idxprom38113.i, %for.body30.i ], [ %idxprom38.i, %for.body42.i ], !dbg !1791
  %116 = phi i32 [ %94, %for.body30.i ], [ %113, %for.body42.i ], !dbg !1792
  %indvars.iv.next135.i = add nsw i64 %indvars.iv134.i, 1, !dbg !1793
    #dbg_value(i64 %indvars.iv.next135.i, !1726, !DIExpression(), !1732)
  %arrayidx27.i = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom26.pre-phi.i, !dbg !1791
  %117 = load i32, ptr %arrayidx27.i, align 4, !dbg !1791
  %shr28.i = ashr i32 %add.i, %117, !dbg !1762
  %118 = sext i32 %shr28.i to i64, !dbg !1764
  %cmp29.i = icmp slt i64 %indvars.iv.next135.i, %118, !dbg !1764
  br i1 %cmp29.i, label %for.body30.i, label %copyBetweenFrames.exit, !dbg !1765, !llvm.loop !1794

copyBetweenFrames.exit:                           ; preds = %for.inc67.i, %for.end19.i
  ret void, !dbg !1796
}

declare !dbg !1797 void @ercMarkCurrMBConcealed(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1800 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @conceal_lost_frames(ptr noundef %p_Dpb, ptr nocapture noundef %pSlice) local_unnamed_addr #0 !dbg !1803 {
entry:
    #dbg_value(ptr %p_Dpb, !1809, !DIExpression(), !1818)
    #dbg_value(ptr %pSlice, !1810, !DIExpression(), !1818)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !1819
    #dbg_value(ptr %0, !1811, !DIExpression(), !1818)
    #dbg_value(ptr null, !1814, !DIExpression(), !1818)
  %delta_pic_order_cnt = getelementptr inbounds i8, ptr %pSlice, i64 88, !dbg !1820
    #dbg_value(i32 poison, !1815, !DIExpression(), !1818)
  %arrayidx3 = getelementptr inbounds i8, ptr %pSlice, i64 92, !dbg !1821
  %1 = load <2 x i32>, ptr %delta_pic_order_cnt, align 8, !dbg !1822
    #dbg_value(i32 poison, !1816, !DIExpression(), !1818)
  store i32 0, ptr %arrayidx3, align 4, !dbg !1823
  store i32 0, ptr %delta_pic_order_cnt, align 8, !dbg !1824
  %IDR_concealment_flag = getelementptr inbounds i8, ptr %0, i64 849252, !dbg !1825
  %2 = load i32, ptr %IDR_concealment_flag, align 4, !dbg !1825
  %cmp = icmp eq i32 %2, 1, !dbg !1827
  br i1 %cmp, label %if.then, label %if.else, !dbg !1828

if.then:                                          ; preds = %entry
    #dbg_value(i32 0, !1813, !DIExpression(), !1818)
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236, !dbg !1829
  %3 = load i32, ptr %poc_gap, align 4, !dbg !1829
  %sub = sub nsw i32 0, %3, !dbg !1831
  %last_ref_pic_poc = getelementptr inbounds i8, ptr %0, i64 849228, !dbg !1832
  store i32 %sub, ptr %last_ref_pic_poc, align 4, !dbg !1833
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244, !dbg !1834
  store i32 0, ptr %earlier_missing_poc, align 4, !dbg !1835
  br label %if.end, !dbg !1836

if.else:                                          ; preds = %entry
  %pre_frame_num = getelementptr inbounds i8, ptr %0, i64 848944, !dbg !1837
  %4 = load i32, ptr %pre_frame_num, align 8, !dbg !1837
  %add = add i32 %4, 1, !dbg !1838
  %MaxFrameNum = getelementptr inbounds i8, ptr %0, i64 848992, !dbg !1839
  %5 = load i32, ptr %MaxFrameNum, align 8, !dbg !1839
  %rem = urem i32 %add, %5, !dbg !1840
    #dbg_value(i32 %rem, !1813, !DIExpression(), !1818)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %UnusedShortTermFrameNum.0 = phi i32 [ 0, %if.then ], [ %rem, %if.else ], !dbg !1841
    #dbg_value(i32 %UnusedShortTermFrameNum.0, !1813, !DIExpression(), !1818)
  %frame_num = getelementptr inbounds i8, ptr %pSlice, i64 172, !dbg !1842
  %6 = load i32, ptr %frame_num, align 4, !dbg !1842
    #dbg_value(i32 %6, !1812, !DIExpression(), !1818)
    #dbg_value(i32 %UnusedShortTermFrameNum.0, !1813, !DIExpression(), !1818)
  %cmp8.not119 = icmp eq i32 %6, %UnusedShortTermFrameNum.0, !dbg !1843
  br i1 %cmp8.not119, label %while.end, label %while.body.lr.ph, !dbg !1844

while.body.lr.ph:                                 ; preds = %if.end
  %width = getelementptr inbounds i8, ptr %0, i64 848780
  %height = getelementptr inbounds i8, ptr %0, i64 848784
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792
  %last_ref_pic_poc11 = getelementptr inbounds i8, ptr %0, i64 849228
  %ref_poc_gap = getelementptr inbounds i8, ptr %0, i64 849232
  %used_size1.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 44
  %fs.i.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %ppSliceList = getelementptr inbounds i8, ptr %0, i64 848736
  %p_Dpb32 = getelementptr inbounds i8, ptr %0, i64 856656
  %pre_frame_num33 = getelementptr inbounds i8, ptr %0, i64 848944
  %MaxFrameNum35 = getelementptr inbounds i8, ptr %0, i64 848992
  %ref_flag = getelementptr i8, ptr %pSlice, i64 13340
  %scevgep = getelementptr i8, ptr %pSlice, i64 13344, !dbg !1844
  br label %while.body, !dbg !1844

while.body:                                       ; preds = %while.body.lr.ph, %if.end31
  %UnusedShortTermFrameNum.1120 = phi i32 [ %UnusedShortTermFrameNum.0, %while.body.lr.ph ], [ %rem36, %if.end31 ]
    #dbg_value(i32 %UnusedShortTermFrameNum.1120, !1813, !DIExpression(), !1818)
  %7 = load i32, ptr %width, align 4, !dbg !1845
  %8 = load i32, ptr %height, align 8, !dbg !1847
  %9 = load i32, ptr %width_cr, align 4, !dbg !1848
  %10 = load i32, ptr %height_cr, align 8, !dbg !1849
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #18, !dbg !1850
    #dbg_value(ptr %call, !1814, !DIExpression(), !1818)
  %coded_frame = getelementptr inbounds i8, ptr %call, i64 96, !dbg !1851
  store i32 1, ptr %coded_frame, align 8, !dbg !1852
  %pic_num = getelementptr inbounds i8, ptr %call, i64 28, !dbg !1853
  store i32 %UnusedShortTermFrameNum.1120, ptr %pic_num, align 4, !dbg !1854
  %frame_num9 = getelementptr inbounds i8, ptr %call, i64 20, !dbg !1855
  store i32 %UnusedShortTermFrameNum.1120, ptr %frame_num9, align 4, !dbg !1856
  %non_existing = getelementptr inbounds i8, ptr %call, i64 52, !dbg !1857
  store i32 0, ptr %non_existing, align 4, !dbg !1858
  %is_output = getelementptr inbounds i8, ptr %call, i64 48, !dbg !1859
  store i32 0, ptr %is_output, align 8, !dbg !1860
  %used_for_reference = getelementptr inbounds i8, ptr %call, i64 44, !dbg !1861
  store i32 1, ptr %used_for_reference, align 4, !dbg !1862
  %concealed_pic = getelementptr inbounds i8, ptr %call, i64 320, !dbg !1863
  store i32 1, ptr %concealed_pic, align 8, !dbg !1864
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %call, i64 264, !dbg !1865
  store i32 0, ptr %adaptive_ref_pic_buffering_flag, align 8, !dbg !1866
  store i32 %UnusedShortTermFrameNum.1120, ptr %frame_num, align 4, !dbg !1867
  %11 = load i32, ptr %last_ref_pic_poc11, align 4, !dbg !1868
  %12 = load i32, ptr %ref_poc_gap, align 8, !dbg !1869
  %add12 = add nsw i32 %12, %11, !dbg !1870
  %poc = getelementptr inbounds i8, ptr %call, i64 4, !dbg !1871
  %13 = insertelement <4 x i32> poison, i32 %add12, i64 0, !dbg !1872
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1872
  store <4 x i32> %14, ptr %poc, align 4, !dbg !1872
  store i32 %add12, ptr %last_ref_pic_poc11, align 4, !dbg !1873
    #dbg_value(ptr %call, !1874, !DIExpression(), !1882)
    #dbg_value(ptr %p_Dpb, !1879, !DIExpression(), !1882)
  %15 = load ptr, ptr %p_Dpb, align 8, !dbg !1884
    #dbg_value(ptr %15, !1880, !DIExpression(), !1882)
    #dbg_value(ptr %p_Dpb, !1885, !DIExpression(), !1892)
  %16 = load i32, ptr %used_size1.i.i, align 4, !dbg !1894
    #dbg_value(i32 %16, !1890, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1892)
    #dbg_value(i32 %16, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1892)
  %i.027.i.i = add i32 %16, -1, !dbg !1895
  %cmp28.i.i = icmp sgt i32 %i.027.i.i, -1, !dbg !1897
  br i1 %cmp28.i.i, label %for.body.lr.ph.i.i, label %copy_prev_pic_to_concealed_pic.exit, !dbg !1899

for.body.lr.ph.i.i:                               ; preds = %while.body
  %17 = load ptr, ptr %fs.i.i, align 8
  %18 = zext nneg i32 %i.027.i.i to i64, !dbg !1899
  br label %for.body.i.i, !dbg !1899

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %18, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv.i.i, !dbg !1900
  %19 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !1900
  %20 = load i32, ptr %19, align 8, !dbg !1903
  %cmp2.i.i = icmp eq i32 %20, 3, !dbg !1904
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.inc.i.i, !dbg !1905

if.then.i.i:                                      ; preds = %for.body.i.i
  %frame.i.i = getelementptr inbounds i8, ptr %19, i64 48, !dbg !1906
  %21 = load ptr, ptr %frame.i.i, align 8, !dbg !1906
  %used_for_reference.i.i = getelementptr inbounds i8, ptr %21, i64 44, !dbg !1909
  %22 = load i32, ptr %used_for_reference.i.i, align 4, !dbg !1909
  %tobool.not.i.i = icmp eq i32 %22, 0, !dbg !1910
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i, !dbg !1911

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %is_long_term.i.i = getelementptr inbounds i8, ptr %21, i64 40, !dbg !1912
  %23 = load i8, ptr %is_long_term.i.i, align 8, !dbg !1912
  %tobool10.not.i.i = icmp eq i8 %23, 0, !dbg !1913
  br i1 %tobool10.not.i.i, label %copy_prev_pic_to_concealed_pic.exit, label %for.inc.i.i, !dbg !1914

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %if.then.i.i, %for.body.i.i
    #dbg_value(i64 %indvars.iv.i.i, !1891, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1892)
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1, !dbg !1895
    #dbg_value(i64 %indvars.iv.next.i.i, !1891, !DIExpression(), !1892)
  %cmp.i.i = icmp sgt i64 %indvars.iv.i.i, 0, !dbg !1897
  br i1 %cmp.i.i, label %for.body.i.i, label %copy_prev_pic_to_concealed_pic.exit, !dbg !1899, !llvm.loop !1915

copy_prev_pic_to_concealed_pic.exit:              ; preds = %land.lhs.true.i.i, %for.inc.i.i, %while.body
  %retval.0.i.i = phi ptr [ null, %while.body ], [ null, %for.inc.i.i ], [ %21, %land.lhs.true.i.i ], !dbg !1892
    #dbg_value(ptr %retval.0.i.i, !1881, !DIExpression(), !1882)
  %conceal_slice_type.i = getelementptr inbounds i8, ptr %15, i64 849256, !dbg !1917
  store i32 0, ptr %conceal_slice_type.i, align 8, !dbg !1918
  tail call fastcc void @copy_to_conceal(ptr noundef %retval.0.i.i, ptr noundef %call, ptr noundef %15), !dbg !1919
  %24 = load i32, ptr %IDR_concealment_flag, align 4, !dbg !1920
  %cmp19 = icmp eq i32 %24, 1, !dbg !1922
  br i1 %cmp19, label %if.then20, label %if.end31, !dbg !1923

if.then20:                                        ; preds = %copy_prev_pic_to_concealed_pic.exit
  %slice_type = getelementptr inbounds i8, ptr %call, i64 248, !dbg !1924
  store i32 2, ptr %slice_type, align 8, !dbg !1926
  %idr_flag = getelementptr inbounds i8, ptr %call, i64 252, !dbg !1927
  store i32 1, ptr %idr_flag, align 4, !dbg !1928
  %25 = load ptr, ptr %ppSliceList, align 8, !dbg !1929
  %26 = load ptr, ptr %25, align 8, !dbg !1930
  %view_id = getelementptr inbounds i8, ptr %26, i64 1176, !dbg !1931
  %27 = load i32, ptr %view_id, align 8, !dbg !1931
  tail call void @flush_dpb(ptr noundef nonnull %p_Dpb, i32 noundef %27) #18, !dbg !1932
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %poc, i8 0, i64 16, i1 false), !dbg !1933
  store i32 0, ptr %last_ref_pic_poc11, align 4, !dbg !1934
  br label %if.end31, !dbg !1935

if.end31:                                         ; preds = %if.then20, %copy_prev_pic_to_concealed_pic.exit
  %28 = load ptr, ptr %p_Dpb32, align 8, !dbg !1936
  tail call void @store_picture_in_dpb(ptr noundef %28, ptr noundef %call) #18, !dbg !1937
    #dbg_value(ptr null, !1814, !DIExpression(), !1818)
  store i32 %UnusedShortTermFrameNum.1120, ptr %pre_frame_num33, align 8, !dbg !1938
  %29 = load i32, ptr %MaxFrameNum35, align 8, !dbg !1939
    #dbg_value(i32 %rem36, !1813, !DIExpression(), !1818)
    #dbg_value(i32 16, !1817, !DIExpression(), !1818)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %scevgep, ptr noundef nonnull align 4 dereferenceable(64) %ref_flag, i64 64, i1 false), !dbg !1940
    #dbg_value(i64 poison, !1817, !DIExpression(), !1818)
  %add34 = add nsw i32 %UnusedShortTermFrameNum.1120, 1, !dbg !1944
  %rem36 = srem i32 %add34, %29, !dbg !1945
  store i32 0, ptr %ref_flag, align 4, !dbg !1946
  %cmp8.not = icmp eq i32 %6, %rem36, !dbg !1843
  br i1 %cmp8.not, label %while.end, label %while.body, !dbg !1844, !llvm.loop !1947

while.end:                                        ; preds = %if.end31, %if.end
  store <2 x i32> %1, ptr %delta_pic_order_cnt, align 8, !dbg !1949
  store i32 %6, ptr %frame_num, align 4, !dbg !1950
  ret void, !dbg !1951
}

declare !dbg !1952 ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1955 void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1958 void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list_for_concealment(ptr nocapture noundef %p_Dpb) local_unnamed_addr #4 !dbg !1961 {
entry:
    #dbg_value(ptr %p_Dpb, !1965, !DIExpression(), !1969)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !1970
    #dbg_value(ptr %0, !1966, !DIExpression(), !1969)
    #dbg_value(i32 0, !1968, !DIExpression(), !1969)
    #dbg_value(i32 0, !1967, !DIExpression(), !1969)
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
    #dbg_value(i32 0, !1968, !DIExpression(), !1969)
    #dbg_value(i32 0, !1967, !DIExpression(), !1969)
  %1 = load i32, ptr %used_size, align 4, !dbg !1971
  %cmp16.not = icmp eq i32 %1, 0, !dbg !1974
  br i1 %cmp16.not, label %for.end, label %for.body.lr.ph, !dbg !1975

for.body.lr.ph:                                   ; preds = %entry
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %fs_ref = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br label %for.body, !dbg !1975

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.018 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
    #dbg_value(i32 %j.018, !1968, !DIExpression(), !1969)
    #dbg_value(i64 %indvars.iv, !1967, !DIExpression(), !1969)
  %3 = load ptr, ptr %fs, align 8, !dbg !1976
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv, !dbg !1979
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1979
  %concealment_reference = getelementptr inbounds i8, ptr %4, i64 44, !dbg !1980
  %5 = load i32, ptr %concealment_reference, align 4, !dbg !1980
  %tobool.not = icmp eq i32 %5, 0, !dbg !1979
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !1981

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %fs_ref, align 8, !dbg !1982
  %inc = add i32 %j.018, 1, !dbg !1984
    #dbg_value(i32 %inc, !1968, !DIExpression(), !1969)
  %idxprom5 = zext i32 %j.018 to i64, !dbg !1985
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5, !dbg !1985
  store ptr %4, ptr %arrayidx6, align 8, !dbg !1986
  %.pre = load i32, ptr %used_size, align 4, !dbg !1971
  br label %for.inc, !dbg !1987

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi i32 [ %.pre, %if.then ], [ %2, %for.body ], !dbg !1971
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.018, %for.body ], !dbg !1969
    #dbg_value(i32 %j.1, !1968, !DIExpression(), !1969)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1988
    #dbg_value(i64 %indvars.iv.next, !1967, !DIExpression(), !1969)
  %8 = zext i32 %7 to i64, !dbg !1974
  %cmp = icmp ult i64 %indvars.iv.next, %8, !dbg !1974
  br i1 %cmp, label %for.body, label %for.end, !dbg !1975, !llvm.loop !1989

for.end:                                          ; preds = %for.inc, %entry
  %active_pps = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1991
  %9 = load ptr, ptr %active_pps, align 8, !dbg !1991
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds i8, ptr %9, i64 2168, !dbg !1992
  %10 = load i32, ptr %num_ref_idx_l0_active_minus1, align 8, !dbg !1992
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48, !dbg !1993
  store i32 %10, ptr %ref_frames_in_buffer, align 8, !dbg !1994
  ret void, !dbg !1995
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @init_lists_for_non_reference_loss(ptr nocapture noundef readonly %p_Dpb, i32 noundef %currSliceType, i32 noundef %currPicStructure) local_unnamed_addr #6 !dbg !1996 {
entry:
    #dbg_value(ptr %p_Dpb, !2000, !DIExpression(), !2012)
    #dbg_value(i32 %currSliceType, !2001, !DIExpression(), !2012)
    #dbg_value(i32 %currPicStructure, !2002, !DIExpression(), !2012)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !2013
    #dbg_value(ptr %0, !2003, !DIExpression(), !2012)
  %active_sps2 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !2014
  %1 = load ptr, ptr %active_sps2, align 8, !dbg !2014
    #dbg_value(ptr %1, !2004, !DIExpression(), !2012)
  %log2_max_frame_num_minus4 = getelementptr inbounds i8, ptr %1, i64 2068, !dbg !2015
  %2 = load i32, ptr %log2_max_frame_num_minus4, align 4, !dbg !2015
  %add = add i32 %2, 4, !dbg !2016
  %shl.neg = shl nsw i32 -1, %add, !dbg !2017
    #dbg_value(!DIArgList(i32 1, i32 %add), !2007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !2012)
    #dbg_value(i32 0, !2009, !DIExpression(), !2012)
    #dbg_value(i32 0, !2010, !DIExpression(), !2012)
  %cmp = icmp eq i32 %currPicStructure, 0, !dbg !2018
  br i1 %cmp, label %for.cond.preheader, label %if.end33, !dbg !2020

for.cond.preheader:                               ; preds = %entry
  %ref_frames_in_buffer = getelementptr inbounds i8, ptr %p_Dpb, i64 48
    #dbg_value(i32 0, !2005, !DIExpression(), !2012)
  %3 = load i32, ptr %ref_frames_in_buffer, align 8, !dbg !2021
  %cmp3520.not = icmp eq i32 %3, 0, !dbg !2025
  br i1 %cmp3520.not, label %if.end33, label %for.body.lr.ph, !dbg !2026

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %frame_to_conceal = getelementptr inbounds i8, ptr %0, i64 849248
  %fs_ref21 = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  br label %for.body, !dbg !2026

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %16, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !2005, !DIExpression(), !2012)
  %5 = load ptr, ptr %fs, align 8, !dbg !2027
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv, !dbg !2030
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2030
  %concealment_reference = getelementptr inbounds i8, ptr %6, i64 44, !dbg !2031
  %7 = load i32, ptr %concealment_reference, align 4, !dbg !2031
  %cmp4 = icmp eq i32 %7, 1, !dbg !2032
  br i1 %cmp4, label %if.then5, label %for.inc, !dbg !2033

if.then5:                                         ; preds = %for.body
  %frame_num = getelementptr inbounds i8, ptr %6, i64 20, !dbg !2034
  %8 = load i32, ptr %frame_num, align 4, !dbg !2034
  %9 = load i32, ptr %frame_to_conceal, align 8, !dbg !2037
  %cmp9 = icmp ugt i32 %8, %9, !dbg !2038
  %sub = select i1 %cmp9, i32 %shl.neg, i32 0, !dbg !2039
  %.sink = add i32 %8, %sub, !dbg !2039
  %10 = load ptr, ptr %fs_ref21, align 8, !dbg !2040
  %arrayidx23 = getelementptr inbounds ptr, ptr %10, i64 %indvars.iv, !dbg !2040
  %11 = load ptr, ptr %arrayidx23, align 8, !dbg !2040
  %frame_num_wrap24 = getelementptr inbounds i8, ptr %11, i64 28, !dbg !2040
  store i32 %.sink, ptr %frame_num_wrap24, align 4, !dbg !2040
  %12 = load ptr, ptr %fs_ref21, align 8, !dbg !2041
  %arrayidx27 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv, !dbg !2042
  %13 = load ptr, ptr %arrayidx27, align 8, !dbg !2042
  %frame_num_wrap28 = getelementptr inbounds i8, ptr %13, i64 28, !dbg !2043
  %14 = load i32, ptr %frame_num_wrap28, align 4, !dbg !2043
  %frame = getelementptr inbounds i8, ptr %13, i64 48, !dbg !2044
  %15 = load ptr, ptr %frame, align 8, !dbg !2044
  %pic_num = getelementptr inbounds i8, ptr %15, i64 28, !dbg !2045
  store i32 %14, ptr %pic_num, align 4, !dbg !2046
  %.pre = load i32, ptr %ref_frames_in_buffer, align 8, !dbg !2021
  br label %for.inc, !dbg !2047

for.inc:                                          ; preds = %for.body, %if.then5
  %16 = phi i32 [ %4, %for.body ], [ %.pre, %if.then5 ], !dbg !2021
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2048
    #dbg_value(i64 %indvars.iv.next, !2005, !DIExpression(), !2012)
  %17 = zext i32 %16 to i64, !dbg !2025
  %cmp3 = icmp ult i64 %indvars.iv.next, %17, !dbg !2025
  br i1 %cmp3, label %for.body, label %if.end33, !dbg !2026, !llvm.loop !2049

if.end33:                                         ; preds = %for.inc, %for.cond.preheader, %entry
  %18 = or i32 %currPicStructure, %currSliceType, !dbg !2051
  %or.cond = icmp eq i32 %18, 0, !dbg !2051
  br i1 %or.cond, label %for.cond38.preheader, label %if.end69, !dbg !2051

for.cond38.preheader:                             ; preds = %if.end33
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44
    #dbg_value(i32 0, !2005, !DIExpression(), !2012)
    #dbg_value(i32 0, !2009, !DIExpression(), !2012)
  %19 = load i32, ptr %used_size, align 4, !dbg !2052
  %cmp39522.not = icmp eq i32 %19, 0, !dbg !2059
  br i1 %cmp39522.not, label %for.end59, label %for.body40.lr.ph, !dbg !2060

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %fs41 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %ppSliceList = getelementptr inbounds i8, ptr %0, i64 848736
  br label %for.body40, !dbg !2060

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc57
  %20 = phi i32 [ %19, %for.body40.lr.ph ], [ %28, %for.inc57 ]
  %indvars.iv544 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next545, %for.inc57 ]
  %list0idx.0523 = phi i32 [ 0, %for.body40.lr.ph ], [ %list0idx.1, %for.inc57 ]
    #dbg_value(i64 %indvars.iv544, !2005, !DIExpression(), !2012)
    #dbg_value(i32 %list0idx.0523, !2009, !DIExpression(), !2012)
  %21 = load ptr, ptr %fs41, align 8, !dbg !2061
  %arrayidx43 = getelementptr inbounds ptr, ptr %21, i64 %indvars.iv544, !dbg !2064
  %22 = load ptr, ptr %arrayidx43, align 8, !dbg !2064
  %concealment_reference44 = getelementptr inbounds i8, ptr %22, i64 44, !dbg !2065
  %23 = load i32, ptr %concealment_reference44, align 4, !dbg !2065
  %cmp45 = icmp eq i32 %23, 1, !dbg !2066
  br i1 %cmp45, label %if.then46, label %for.inc57, !dbg !2067

if.then46:                                        ; preds = %for.body40
  %frame50 = getelementptr inbounds i8, ptr %22, i64 48, !dbg !2068
  %24 = load ptr, ptr %frame50, align 8, !dbg !2068
  %25 = load ptr, ptr %ppSliceList, align 8, !dbg !2070
  %26 = load ptr, ptr %25, align 8, !dbg !2071
  %listX = getelementptr inbounds i8, ptr %26, i64 264, !dbg !2072
  %27 = load ptr, ptr %listX, align 8, !dbg !2071
  %inc53 = add nsw i32 %list0idx.0523, 1, !dbg !2073
    #dbg_value(i32 %inc53, !2009, !DIExpression(), !2012)
  %idxprom54 = sext i32 %list0idx.0523 to i64, !dbg !2071
  %arrayidx55 = getelementptr inbounds ptr, ptr %27, i64 %idxprom54, !dbg !2071
  store ptr %24, ptr %arrayidx55, align 8, !dbg !2074
  %.pre578 = load i32, ptr %used_size, align 4, !dbg !2052
  br label %for.inc57, !dbg !2075

for.inc57:                                        ; preds = %for.body40, %if.then46
  %28 = phi i32 [ %.pre578, %if.then46 ], [ %20, %for.body40 ], !dbg !2052
  %list0idx.1 = phi i32 [ %inc53, %if.then46 ], [ %list0idx.0523, %for.body40 ], !dbg !2012
    #dbg_value(i32 %list0idx.1, !2009, !DIExpression(), !2012)
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1, !dbg !2076
    #dbg_value(i64 %indvars.iv.next545, !2005, !DIExpression(), !2012)
  %29 = zext i32 %28 to i64, !dbg !2059
  %cmp39 = icmp ult i64 %indvars.iv.next545, %29, !dbg !2059
  br i1 %cmp39, label %for.body40, label %for.end59, !dbg !2060, !llvm.loop !2077

for.end59:                                        ; preds = %for.inc57, %for.cond38.preheader
  %list0idx.0.lcssa = phi i32 [ 0, %for.cond38.preheader ], [ %list0idx.1, %for.inc57 ], !dbg !2012
  %ppSliceList60 = getelementptr inbounds i8, ptr %0, i64 848736, !dbg !2079
  %30 = load ptr, ptr %ppSliceList60, align 8, !dbg !2079
  %31 = load ptr, ptr %30, align 8, !dbg !2080
  %listX62 = getelementptr inbounds i8, ptr %31, i64 264, !dbg !2081
  %32 = load ptr, ptr %listX62, align 8, !dbg !2080
  %conv = sext i32 %list0idx.0.lcssa to i64, !dbg !2082
  tail call void @qsort(ptr noundef %32, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #18, !dbg !2083
  %conv64 = trunc i32 %list0idx.0.lcssa to i8, !dbg !2084
  %33 = load ptr, ptr %ppSliceList60, align 8, !dbg !2085
  %34 = load ptr, ptr %33, align 8, !dbg !2086
  %listXsize = getelementptr inbounds i8, ptr %34, i64 256, !dbg !2087
  store i8 %conv64, ptr %listXsize, align 8, !dbg !2088
  br label %if.end69, !dbg !2089

if.end69:                                         ; preds = %for.end59, %if.end33
  %list0idx.2 = phi i32 [ %list0idx.0.lcssa, %for.end59 ], [ 0, %if.end33 ], !dbg !2090
    #dbg_value(i32 %list0idx.2, !2009, !DIExpression(), !2012)
  %cmp70 = icmp eq i32 %currSliceType, 1, !dbg !2091
  %or.cond391 = and i1 %cmp70, %cmp, !dbg !2093
  br i1 %or.cond391, label %for.cond76.preheader, label %if.end257, !dbg !2093

for.cond76.preheader:                             ; preds = %if.end69
  %used_size77 = getelementptr inbounds i8, ptr %p_Dpb, i64 44
    #dbg_value(i32 0, !2005, !DIExpression(), !2012)
    #dbg_value(i32 %list0idx.2, !2009, !DIExpression(), !2012)
  %35 = load i32, ptr %used_size77, align 4, !dbg !2094
  %cmp78525.not = icmp eq i32 %35, 0, !dbg !2100
  br i1 %cmp78525.not, label %for.end110, label %for.body80.lr.ph, !dbg !2101

for.body80.lr.ph:                                 ; preds = %for.cond76.preheader
  %fs81 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  %ppSliceList99 = getelementptr inbounds i8, ptr %0, i64 848736
  br label %for.body80, !dbg !2101

for.body80:                                       ; preds = %for.body80.lr.ph, %for.inc108
  %36 = phi i32 [ %35, %for.body80.lr.ph ], [ %46, %for.inc108 ]
  %indvars.iv547 = phi i64 [ 0, %for.body80.lr.ph ], [ %indvars.iv.next548, %for.inc108 ]
  %list0idx.3526 = phi i32 [ %list0idx.2, %for.body80.lr.ph ], [ %list0idx.4, %for.inc108 ]
    #dbg_value(i64 %indvars.iv547, !2005, !DIExpression(), !2012)
    #dbg_value(i32 %list0idx.3526, !2009, !DIExpression(), !2012)
  %37 = load ptr, ptr %fs81, align 8, !dbg !2102
  %arrayidx83 = getelementptr inbounds ptr, ptr %37, i64 %indvars.iv547, !dbg !2105
  %38 = load ptr, ptr %arrayidx83, align 8, !dbg !2105
  %concealment_reference84 = getelementptr inbounds i8, ptr %38, i64 44, !dbg !2106
  %39 = load i32, ptr %concealment_reference84, align 4, !dbg !2106
  %cmp85 = icmp eq i32 %39, 1, !dbg !2107
  br i1 %cmp85, label %if.then87, label %for.inc108, !dbg !2108

if.then87:                                        ; preds = %for.body80
  %40 = load i32, ptr %earlier_missing_poc, align 4, !dbg !2109
  %frame91 = getelementptr inbounds i8, ptr %38, i64 48, !dbg !2112
  %41 = load ptr, ptr %frame91, align 8, !dbg !2112
  %poc = getelementptr inbounds i8, ptr %41, i64 4, !dbg !2113
  %42 = load i32, ptr %poc, align 4, !dbg !2113
  %cmp92 = icmp sgt i32 %40, %42, !dbg !2114
  br i1 %cmp92, label %if.then94, label %for.inc108, !dbg !2115

if.then94:                                        ; preds = %if.then87
  %43 = load ptr, ptr %ppSliceList99, align 8, !dbg !2116
  %44 = load ptr, ptr %43, align 8, !dbg !2117
  %listX101 = getelementptr inbounds i8, ptr %44, i64 264, !dbg !2118
  %45 = load ptr, ptr %listX101, align 8, !dbg !2117
  %inc103 = add nsw i32 %list0idx.3526, 1, !dbg !2119
    #dbg_value(i32 %inc103, !2009, !DIExpression(), !2012)
  %idxprom104 = sext i32 %list0idx.3526 to i64, !dbg !2117
  %arrayidx105 = getelementptr inbounds ptr, ptr %45, i64 %idxprom104, !dbg !2117
  store ptr %41, ptr %arrayidx105, align 8, !dbg !2120
  %.pre579 = load i32, ptr %used_size77, align 4, !dbg !2094
  br label %for.inc108, !dbg !2117

for.inc108:                                       ; preds = %for.body80, %if.then94, %if.then87
  %46 = phi i32 [ %.pre579, %if.then94 ], [ %36, %if.then87 ], [ %36, %for.body80 ], !dbg !2094
  %list0idx.4 = phi i32 [ %inc103, %if.then94 ], [ %list0idx.3526, %if.then87 ], [ %list0idx.3526, %for.body80 ], !dbg !2012
    #dbg_value(i32 %list0idx.4, !2009, !DIExpression(), !2012)
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1, !dbg !2121
    #dbg_value(i64 %indvars.iv.next548, !2005, !DIExpression(), !2012)
  %47 = zext i32 %46 to i64, !dbg !2100
  %cmp78 = icmp ult i64 %indvars.iv.next548, %47, !dbg !2100
  br i1 %cmp78, label %for.body80, label %for.end110, !dbg !2101, !llvm.loop !2122

for.end110:                                       ; preds = %for.inc108, %for.cond76.preheader
  %list0idx.3.lcssa = phi i32 [ %list0idx.2, %for.cond76.preheader ], [ %list0idx.4, %for.inc108 ], !dbg !2012
  %ppSliceList111 = getelementptr inbounds i8, ptr %0, i64 848736, !dbg !2124
  %48 = load ptr, ptr %ppSliceList111, align 8, !dbg !2124
  %49 = load ptr, ptr %48, align 8, !dbg !2125
  %listX113 = getelementptr inbounds i8, ptr %49, i64 264, !dbg !2126
  %50 = load ptr, ptr %listX113, align 8, !dbg !2125
  %conv115 = sext i32 %list0idx.3.lcssa to i64, !dbg !2127
  tail call void @qsort(ptr noundef %50, i64 noundef %conv115, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #18, !dbg !2128
    #dbg_value(i32 %list0idx.3.lcssa, !2010, !DIExpression(), !2012)
    #dbg_value(i32 0, !2005, !DIExpression(), !2012)
    #dbg_value(i32 %list0idx.3.lcssa, !2009, !DIExpression(), !2012)
  %51 = load i32, ptr %used_size77, align 4, !dbg !2129
  %cmp118529.not = icmp eq i32 %51, 0, !dbg !2132
  br i1 %cmp118529.not, label %for.end152, label %for.body120.lr.ph, !dbg !2133

for.body120.lr.ph:                                ; preds = %for.end110
  %fs121 = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %earlier_missing_poc128 = getelementptr inbounds i8, ptr %0, i64 849244
  br label %for.body120, !dbg !2133

for.body120:                                      ; preds = %for.body120.lr.ph, %for.inc150
  %52 = phi i32 [ %51, %for.body120.lr.ph ], [ %62, %for.inc150 ]
  %indvars.iv550 = phi i64 [ 0, %for.body120.lr.ph ], [ %indvars.iv.next551, %for.inc150 ]
  %list0idx.5530 = phi i32 [ %list0idx.3.lcssa, %for.body120.lr.ph ], [ %list0idx.6, %for.inc150 ]
    #dbg_value(i64 %indvars.iv550, !2005, !DIExpression(), !2012)
    #dbg_value(i32 %list0idx.5530, !2009, !DIExpression(), !2012)
  %53 = load ptr, ptr %fs121, align 8, !dbg !2134
  %arrayidx123 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv550, !dbg !2137
  %54 = load ptr, ptr %arrayidx123, align 8, !dbg !2137
  %concealment_reference124 = getelementptr inbounds i8, ptr %54, i64 44, !dbg !2138
  %55 = load i32, ptr %concealment_reference124, align 4, !dbg !2138
  %cmp125 = icmp eq i32 %55, 1, !dbg !2139
  br i1 %cmp125, label %if.then127, label %for.inc150, !dbg !2140

if.then127:                                       ; preds = %for.body120
  %56 = load i32, ptr %earlier_missing_poc128, align 4, !dbg !2141
  %frame132 = getelementptr inbounds i8, ptr %54, i64 48, !dbg !2144
  %57 = load ptr, ptr %frame132, align 8, !dbg !2144
  %poc133 = getelementptr inbounds i8, ptr %57, i64 4, !dbg !2145
  %58 = load i32, ptr %poc133, align 4, !dbg !2145
  %cmp134 = icmp slt i32 %56, %58, !dbg !2146
  br i1 %cmp134, label %if.then136, label %for.inc150, !dbg !2147

if.then136:                                       ; preds = %if.then127
  %59 = load ptr, ptr %ppSliceList111, align 8, !dbg !2148
  %60 = load ptr, ptr %59, align 8, !dbg !2149
  %listX143 = getelementptr inbounds i8, ptr %60, i64 264, !dbg !2150
  %61 = load ptr, ptr %listX143, align 8, !dbg !2149
  %inc145 = add nsw i32 %list0idx.5530, 1, !dbg !2151
    #dbg_value(i32 %inc145, !2009, !DIExpression(), !2012)
  %idxprom146 = sext i32 %list0idx.5530 to i64, !dbg !2149
  %arrayidx147 = getelementptr inbounds ptr, ptr %61, i64 %idxprom146, !dbg !2149
  store ptr %57, ptr %arrayidx147, align 8, !dbg !2152
  %.pre580 = load i32, ptr %used_size77, align 4, !dbg !2129
  br label %for.inc150, !dbg !2149

for.inc150:                                       ; preds = %for.body120, %if.then136, %if.then127
  %62 = phi i32 [ %.pre580, %if.then136 ], [ %52, %if.then127 ], [ %52, %for.body120 ], !dbg !2129
  %list0idx.6 = phi i32 [ %inc145, %if.then136 ], [ %list0idx.5530, %if.then127 ], [ %list0idx.5530, %for.body120 ], !dbg !2012
    #dbg_value(i32 %list0idx.6, !2009, !DIExpression(), !2012)
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1, !dbg !2153
    #dbg_value(i64 %indvars.iv.next551, !2005, !DIExpression(), !2012)
  %63 = zext i32 %62 to i64, !dbg !2132
  %cmp118 = icmp ult i64 %indvars.iv.next551, %63, !dbg !2132
  br i1 %cmp118, label %for.body120, label %for.end152, !dbg !2133, !llvm.loop !2154

for.end152:                                       ; preds = %for.inc150, %for.end110
  %list0idx.5.lcssa = phi i32 [ %list0idx.3.lcssa, %for.end110 ], [ %list0idx.6, %for.inc150 ], !dbg !2012
  %64 = load ptr, ptr %ppSliceList111, align 8, !dbg !2156
  %65 = load ptr, ptr %64, align 8, !dbg !2157
  %listX155 = getelementptr inbounds i8, ptr %65, i64 264, !dbg !2158
  %66 = load ptr, ptr %listX155, align 8, !dbg !2157
  %arrayidx158 = getelementptr inbounds ptr, ptr %66, i64 %conv115, !dbg !2157
  %sub159 = sub nsw i32 %list0idx.5.lcssa, %list0idx.3.lcssa, !dbg !2159
  %conv160 = sext i32 %sub159 to i64, !dbg !2160
  tail call void @qsort(ptr noundef %arrayidx158, i64 noundef %conv160, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #18, !dbg !2161
    #dbg_value(i32 0, !2006, !DIExpression(), !2012)
  %cmp162533 = icmp sgt i32 %list0idx.3.lcssa, 0, !dbg !2162
  br i1 %cmp162533, label %for.body164.preheader, label %for.cond182.preheader, !dbg !2165

for.body164.preheader:                            ; preds = %for.end152
  %wide.trip.count = zext nneg i32 %list0idx.3.lcssa to i64, !dbg !2162
  %xtraiter = and i64 %wide.trip.count, 1, !dbg !2165
  %67 = icmp eq i32 %list0idx.3.lcssa, 1, !dbg !2165
  br i1 %67, label %for.cond182.preheader.loopexit.unr-lcssa, label %for.body164.preheader.new, !dbg !2165

for.body164.preheader.new:                        ; preds = %for.body164.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646, !dbg !2165
  br label %for.body164, !dbg !2165

for.cond182.preheader.loopexit.unr-lcssa:         ; preds = %for.body164, %for.body164.preheader
  %indvars.iv553.unr = phi i64 [ 0, %for.body164.preheader ], [ %indvars.iv.next554.1, %for.body164 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2165
  br i1 %lcmp.mod.not, label %for.cond182.preheader, label %for.body164.epil, !dbg !2165

for.body164.epil:                                 ; preds = %for.cond182.preheader.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv553.unr, !2006, !DIExpression(), !2012)
  %68 = load ptr, ptr %ppSliceList111, align 8, !dbg !2166
  %69 = load ptr, ptr %68, align 8, !dbg !2168
  %listX167.epil = getelementptr inbounds i8, ptr %69, i64 264, !dbg !2169
  %70 = load ptr, ptr %listX167.epil, align 8, !dbg !2168
  %arrayidx170.epil = getelementptr inbounds ptr, ptr %70, i64 %indvars.iv553.unr, !dbg !2168
  %71 = load ptr, ptr %arrayidx170.epil, align 8, !dbg !2168
  %arrayidx174.epil = getelementptr inbounds i8, ptr %69, i64 272, !dbg !2170
  %72 = load ptr, ptr %arrayidx174.epil, align 8, !dbg !2170
  %73 = getelementptr ptr, ptr %72, i64 %indvars.iv553.unr, !dbg !2170
  %arrayidx178.epil = getelementptr ptr, ptr %73, i64 %conv160, !dbg !2170
  store ptr %71, ptr %arrayidx178.epil, align 8, !dbg !2171
    #dbg_value(i64 %indvars.iv553.unr, !2006, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2012)
  br label %for.cond182.preheader, !dbg !2172

for.cond182.preheader:                            ; preds = %for.body164.epil, %for.cond182.preheader.loopexit.unr-lcssa, %for.end152
    #dbg_value(i32 %list0idx.3.lcssa, !2006, !DIExpression(), !2012)
  %cmp183535 = icmp slt i32 %list0idx.3.lcssa, %list0idx.5.lcssa, !dbg !2172
  br i1 %cmp183535, label %for.body185.preheader, label %for.end201, !dbg !2175

for.body185.preheader:                            ; preds = %for.cond182.preheader
  %wide.trip.count562 = sext i32 %list0idx.5.lcssa to i64, !dbg !2172
  %74 = sub nsw i64 %wide.trip.count562, %conv115, !dbg !2175
  %xtraiter604 = and i64 %74, 1, !dbg !2175
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0, !dbg !2175
  br i1 %lcmp.mod605.not, label %for.body185.prol.loopexit, label %for.body185.prol, !dbg !2175

for.body185.prol:                                 ; preds = %for.body185.preheader
    #dbg_value(i64 %conv115, !2006, !DIExpression(), !2012)
  %75 = load ptr, ptr %ppSliceList111, align 8, !dbg !2176
  %76 = load ptr, ptr %75, align 8, !dbg !2178
  %listX188.prol = getelementptr inbounds i8, ptr %76, i64 264, !dbg !2179
  %77 = load ptr, ptr %listX188.prol, align 8, !dbg !2178
  %arrayidx191.prol = getelementptr inbounds ptr, ptr %77, i64 %conv115, !dbg !2178
  %78 = load ptr, ptr %arrayidx191.prol, align 8, !dbg !2178
  %arrayidx195.prol = getelementptr inbounds i8, ptr %76, i64 272, !dbg !2180
  %79 = load ptr, ptr %arrayidx195.prol, align 8, !dbg !2180
  store ptr %78, ptr %79, align 8, !dbg !2181
  %indvars.iv.next559.prol = add nsw i64 %conv115, 1, !dbg !2182
    #dbg_value(i64 %indvars.iv.next559.prol, !2006, !DIExpression(), !2012)
  br label %for.body185.prol.loopexit, !dbg !2175

for.body185.prol.loopexit:                        ; preds = %for.body185.prol, %for.body185.preheader
  %indvars.iv558.unr = phi i64 [ %conv115, %for.body185.preheader ], [ %indvars.iv.next559.prol, %for.body185.prol ]
  %80 = add nsw i64 %wide.trip.count562, -1, !dbg !2175
  %81 = icmp eq i64 %80, %conv115, !dbg !2175
  br i1 %81, label %for.end201, label %for.body185, !dbg !2175

for.body164:                                      ; preds = %for.body164, %for.body164.preheader.new
  %indvars.iv553 = phi i64 [ 0, %for.body164.preheader.new ], [ %indvars.iv.next554.1, %for.body164 ]
  %niter = phi i64 [ 0, %for.body164.preheader.new ], [ %niter.next.1, %for.body164 ]
    #dbg_value(i64 %indvars.iv553, !2006, !DIExpression(), !2012)
  %82 = load ptr, ptr %ppSliceList111, align 8, !dbg !2166
  %83 = load ptr, ptr %82, align 8, !dbg !2168
  %listX167 = getelementptr inbounds i8, ptr %83, i64 264, !dbg !2169
  %84 = load ptr, ptr %listX167, align 8, !dbg !2168
  %arrayidx170 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv553, !dbg !2168
  %85 = load ptr, ptr %arrayidx170, align 8, !dbg !2168
  %arrayidx174 = getelementptr inbounds i8, ptr %83, i64 272, !dbg !2170
  %86 = load ptr, ptr %arrayidx174, align 8, !dbg !2170
  %87 = getelementptr ptr, ptr %86, i64 %indvars.iv553, !dbg !2170
  %arrayidx178 = getelementptr ptr, ptr %87, i64 %conv160, !dbg !2170
  store ptr %85, ptr %arrayidx178, align 8, !dbg !2171
  %indvars.iv.next554 = or disjoint i64 %indvars.iv553, 1, !dbg !2183
    #dbg_value(i64 %indvars.iv.next554, !2006, !DIExpression(), !2012)
  %88 = load ptr, ptr %ppSliceList111, align 8, !dbg !2166
  %89 = load ptr, ptr %88, align 8, !dbg !2168
  %listX167.1 = getelementptr inbounds i8, ptr %89, i64 264, !dbg !2169
  %90 = load ptr, ptr %listX167.1, align 8, !dbg !2168
  %arrayidx170.1 = getelementptr inbounds ptr, ptr %90, i64 %indvars.iv.next554, !dbg !2168
  %91 = load ptr, ptr %arrayidx170.1, align 8, !dbg !2168
  %arrayidx174.1 = getelementptr inbounds i8, ptr %89, i64 272, !dbg !2170
  %92 = load ptr, ptr %arrayidx174.1, align 8, !dbg !2170
  %93 = getelementptr ptr, ptr %92, i64 %indvars.iv.next554, !dbg !2170
  %arrayidx178.1 = getelementptr ptr, ptr %93, i64 %conv160, !dbg !2170
  store ptr %91, ptr %arrayidx178.1, align 8, !dbg !2171
  %indvars.iv.next554.1 = add nuw nsw i64 %indvars.iv553, 2, !dbg !2183
    #dbg_value(i64 %indvars.iv.next554.1, !2006, !DIExpression(), !2012)
  %niter.next.1 = add i64 %niter, 2, !dbg !2165
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2165
  br i1 %niter.ncmp.1, label %for.cond182.preheader.loopexit.unr-lcssa, label %for.body164, !dbg !2165, !llvm.loop !2184

for.body185:                                      ; preds = %for.body185.prol.loopexit, %for.body185
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.1, %for.body185 ], [ %indvars.iv558.unr, %for.body185.prol.loopexit ]
    #dbg_value(i64 %indvars.iv558, !2006, !DIExpression(), !2012)
  %94 = load ptr, ptr %ppSliceList111, align 8, !dbg !2176
  %95 = load ptr, ptr %94, align 8, !dbg !2178
  %listX188 = getelementptr inbounds i8, ptr %95, i64 264, !dbg !2179
  %96 = load ptr, ptr %listX188, align 8, !dbg !2178
  %arrayidx191 = getelementptr inbounds ptr, ptr %96, i64 %indvars.iv558, !dbg !2178
  %97 = load ptr, ptr %arrayidx191, align 8, !dbg !2178
  %arrayidx195 = getelementptr inbounds i8, ptr %95, i64 272, !dbg !2180
  %98 = load ptr, ptr %arrayidx195, align 8, !dbg !2180
  %99 = sub nsw i64 %indvars.iv558, %conv115, !dbg !2186
  %arrayidx198 = getelementptr inbounds ptr, ptr %98, i64 %99, !dbg !2180
  store ptr %97, ptr %arrayidx198, align 8, !dbg !2181
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1, !dbg !2182
    #dbg_value(i64 %indvars.iv.next559, !2006, !DIExpression(), !2012)
  %100 = load ptr, ptr %ppSliceList111, align 8, !dbg !2176
  %101 = load ptr, ptr %100, align 8, !dbg !2178
  %listX188.1 = getelementptr inbounds i8, ptr %101, i64 264, !dbg !2179
  %102 = load ptr, ptr %listX188.1, align 8, !dbg !2178
  %arrayidx191.1 = getelementptr inbounds ptr, ptr %102, i64 %indvars.iv.next559, !dbg !2178
  %103 = load ptr, ptr %arrayidx191.1, align 8, !dbg !2178
  %arrayidx195.1 = getelementptr inbounds i8, ptr %101, i64 272, !dbg !2180
  %104 = load ptr, ptr %arrayidx195.1, align 8, !dbg !2180
  %105 = sub nsw i64 %indvars.iv.next559, %conv115, !dbg !2186
  %arrayidx198.1 = getelementptr inbounds ptr, ptr %104, i64 %105, !dbg !2180
  store ptr %103, ptr %arrayidx198.1, align 8, !dbg !2181
  %indvars.iv.next559.1 = add nsw i64 %indvars.iv558, 2, !dbg !2182
    #dbg_value(i64 %indvars.iv.next559.1, !2006, !DIExpression(), !2012)
  %exitcond563.not.1 = icmp eq i64 %indvars.iv.next559.1, %wide.trip.count562, !dbg !2172
  br i1 %exitcond563.not.1, label %for.end201, label %for.body185, !dbg !2175, !llvm.loop !2187

for.end201:                                       ; preds = %for.body185.prol.loopexit, %for.body185, %for.cond182.preheader
  %conv202 = trunc i32 %list0idx.5.lcssa to i8, !dbg !2189
  %106 = load ptr, ptr %ppSliceList111, align 8, !dbg !2190
  %107 = load ptr, ptr %106, align 8, !dbg !2191
  %arrayidx206 = getelementptr inbounds i8, ptr %107, i64 257, !dbg !2191
  store i8 %conv202, ptr %arrayidx206, align 1, !dbg !2192
  %108 = load ptr, ptr %ppSliceList111, align 8, !dbg !2193
  %109 = load ptr, ptr %108, align 8, !dbg !2194
  %listXsize209 = getelementptr inbounds i8, ptr %109, i64 256, !dbg !2195
  store i8 %conv202, ptr %listXsize209, align 8, !dbg !2196
  %110 = load ptr, ptr %ppSliceList111, align 8, !dbg !2197
  %111 = load ptr, ptr %110, align 8, !dbg !2198
  %listX213 = getelementptr inbounds i8, ptr %111, i64 264, !dbg !2199
  %112 = load ptr, ptr %listX213, align 8, !dbg !2198
  %listXsize217 = getelementptr inbounds i8, ptr %111, i64 256, !dbg !2200
  %113 = load i8, ptr %listXsize217, align 8, !dbg !2201
  %idxprom220 = sext i8 %113 to i64, !dbg !2198
  %arrayidx221 = getelementptr inbounds ptr, ptr %112, i64 %idxprom220, !dbg !2198
  %conv226 = sext i8 %113 to i32, !dbg !2202
  %sub227 = sub nsw i32 %list0idx.5.lcssa, %conv226, !dbg !2203
  %conv228 = sext i32 %sub227 to i64, !dbg !2204
  tail call void @qsort(ptr noundef %arrayidx221, i64 noundef %conv228, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #18, !dbg !2205
  %114 = load ptr, ptr %ppSliceList111, align 8, !dbg !2206
  %115 = load ptr, ptr %114, align 8, !dbg !2207
  %arrayidx232 = getelementptr inbounds i8, ptr %115, i64 272, !dbg !2207
  %116 = load ptr, ptr %arrayidx232, align 8, !dbg !2207
  %listXsize235 = getelementptr inbounds i8, ptr %115, i64 256, !dbg !2208
  %117 = load i8, ptr %listXsize235, align 8, !dbg !2209
  %idxprom238 = sext i8 %117 to i64, !dbg !2207
  %arrayidx239 = getelementptr inbounds ptr, ptr %116, i64 %idxprom238, !dbg !2207
  %conv244 = sext i8 %117 to i32, !dbg !2210
  %sub245 = sub nsw i32 %list0idx.5.lcssa, %conv244, !dbg !2211
  %conv246 = sext i32 %sub245 to i64, !dbg !2212
  tail call void @qsort(ptr noundef %arrayidx239, i64 noundef %conv246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #18, !dbg !2213
  %118 = load ptr, ptr %ppSliceList111, align 8, !dbg !2214
  %119 = load ptr, ptr %118, align 8, !dbg !2215
  %arrayidx251 = getelementptr inbounds i8, ptr %119, i64 257, !dbg !2215
  store i8 %conv202, ptr %arrayidx251, align 1, !dbg !2216
  %120 = load ptr, ptr %ppSliceList111, align 8, !dbg !2217
  %121 = load ptr, ptr %120, align 8, !dbg !2218
  %listXsize254 = getelementptr inbounds i8, ptr %121, i64 256, !dbg !2219
  store i8 %conv202, ptr %listXsize254, align 8, !dbg !2220
  br label %if.end257, !dbg !2221

if.end257:                                        ; preds = %for.end201, %if.end69
  %ppSliceList258 = getelementptr inbounds i8, ptr %0, i64 848736, !dbg !2222
  %122 = load ptr, ptr %ppSliceList258, align 8, !dbg !2222
  %123 = load ptr, ptr %122, align 8, !dbg !2224
  %listXsize260 = getelementptr inbounds i8, ptr %123, i64 256, !dbg !2225
  %124 = load i8, ptr %listXsize260, align 8, !dbg !2224
  %arrayidx266 = getelementptr inbounds i8, ptr %123, i64 257, !dbg !2226
  %125 = load i8, ptr %arrayidx266, align 1, !dbg !2226
  %cmp268 = icmp eq i8 %124, %125, !dbg !2227
  %cmp275 = icmp sgt i8 %124, 1
  %or.cond518 = and i1 %cmp275, %cmp268, !dbg !2228
  br i1 %or.cond518, label %for.cond278.preheader, label %if.end328, !dbg !2228

for.cond278.preheader:                            ; preds = %if.end257
  %listX289 = getelementptr inbounds i8, ptr %123, i64 264
  %126 = load ptr, ptr %listX289, align 8
  %arrayidx296 = getelementptr inbounds i8, ptr %123, i64 272
  %127 = load ptr, ptr %arrayidx296, align 8
    #dbg_value(i32 0, !2008, !DIExpression(), !2012)
    #dbg_value(i32 0, !2006, !DIExpression(), !2012)
  %wide.trip.count567 = zext nneg i8 %124 to i64, !dbg !2229
  %min.iters.check = icmp ult i8 %124, 8, !dbg !2233
  br i1 %min.iters.check, label %for.body286.preheader, label %vector.ph, !dbg !2233

vector.ph:                                        ; preds = %for.cond278.preheader
  %n.vec = and i64 %wide.trip.count567, 120, !dbg !2233
  br label %vector.body, !dbg !2233

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !2234
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %140, %vector.body ]
  %vec.phi588 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %141, %vector.body ]
  %vec.phi589 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %142, %vector.body ]
  %vec.phi590 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %143, %vector.body ]
  %128 = getelementptr inbounds ptr, ptr %126, i64 %index, !dbg !2235
  %129 = getelementptr inbounds i8, ptr %128, i64 16, !dbg !2235
  %130 = getelementptr inbounds i8, ptr %128, i64 32, !dbg !2235
  %131 = getelementptr inbounds i8, ptr %128, i64 48, !dbg !2235
  %wide.load = load <2 x ptr>, ptr %128, align 8, !dbg !2235
  %wide.load591 = load <2 x ptr>, ptr %129, align 8, !dbg !2235
  %wide.load592 = load <2 x ptr>, ptr %130, align 8, !dbg !2235
  %wide.load593 = load <2 x ptr>, ptr %131, align 8, !dbg !2235
  %132 = getelementptr inbounds ptr, ptr %127, i64 %index, !dbg !2238
  %133 = getelementptr inbounds i8, ptr %132, i64 16, !dbg !2238
  %134 = getelementptr inbounds i8, ptr %132, i64 32, !dbg !2238
  %135 = getelementptr inbounds i8, ptr %132, i64 48, !dbg !2238
  %wide.load594 = load <2 x ptr>, ptr %132, align 8, !dbg !2238
  %wide.load595 = load <2 x ptr>, ptr %133, align 8, !dbg !2238
  %wide.load596 = load <2 x ptr>, ptr %134, align 8, !dbg !2238
  %wide.load597 = load <2 x ptr>, ptr %135, align 8, !dbg !2238
  %136 = icmp ne <2 x ptr> %wide.load, %wide.load594, !dbg !2239
  %137 = icmp ne <2 x ptr> %wide.load591, %wide.load595, !dbg !2239
  %138 = icmp ne <2 x ptr> %wide.load592, %wide.load596, !dbg !2239
  %139 = icmp ne <2 x ptr> %wide.load593, %wide.load597, !dbg !2239
  %140 = or <2 x i1> %vec.phi, %136
  %141 = or <2 x i1> %vec.phi588, %137
  %142 = or <2 x i1> %vec.phi589, %138
  %143 = or <2 x i1> %vec.phi590, %139
  %index.next = add nuw i64 %index, 8, !dbg !2234
  %144 = icmp eq i64 %index.next, %n.vec, !dbg !2234
  br i1 %144, label %middle.block, label %vector.body, !dbg !2234, !llvm.loop !2240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %141, %140, !dbg !2233
  %bin.rdx598 = or <2 x i1> %142, %bin.rdx, !dbg !2233
  %bin.rdx599 = or <2 x i1> %143, %bin.rdx598, !dbg !2233
  %bin.rdx599.fr = freeze <2 x i1> %bin.rdx599, !dbg !2233
  %145 = bitcast <2 x i1> %bin.rdx599.fr to i2, !dbg !2233
  %.not = icmp ne i2 %145, 0, !dbg !2233
  %rdx.select = zext i1 %.not to i32, !dbg !2233
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count567, !dbg !2233
  br i1 %cmp.n, label %for.end305, label %for.body286.preheader, !dbg !2233

for.body286.preheader:                            ; preds = %middle.block, %for.cond278.preheader
  %indvars.iv564.ph = phi i64 [ 0, %for.cond278.preheader ], [ %n.vec, %middle.block ]
  %diff.0538.ph = phi i32 [ 0, %for.cond278.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body286, !dbg !2233

for.body286:                                      ; preds = %for.body286.preheader, %for.body286
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %for.body286 ], [ %indvars.iv564.ph, %for.body286.preheader ]
  %diff.0538 = phi i32 [ %spec.select, %for.body286 ], [ %diff.0538.ph, %for.body286.preheader ]
    #dbg_value(i32 %diff.0538, !2008, !DIExpression(), !2012)
    #dbg_value(i64 %indvars.iv564, !2006, !DIExpression(), !2012)
  %arrayidx292 = getelementptr inbounds ptr, ptr %126, i64 %indvars.iv564, !dbg !2235
  %146 = load ptr, ptr %arrayidx292, align 8, !dbg !2235
  %arrayidx298 = getelementptr inbounds ptr, ptr %127, i64 %indvars.iv564, !dbg !2238
  %147 = load ptr, ptr %arrayidx298, align 8, !dbg !2238
  %cmp299.not = icmp eq ptr %146, %147, !dbg !2239
  %spec.select = select i1 %cmp299.not, i32 %diff.0538, i32 1, !dbg !2244
    #dbg_value(i32 %spec.select, !2008, !DIExpression(), !2012)
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1, !dbg !2234
    #dbg_value(i64 %indvars.iv.next565, !2006, !DIExpression(), !2012)
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567, !dbg !2229
  br i1 %exitcond568.not, label %for.end305, label %for.body286, !dbg !2233, !llvm.loop !2245

for.end305:                                       ; preds = %for.body286, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body286 ], !dbg !2244
  %tobool.not = icmp eq i32 %spec.select.lcssa, 0, !dbg !2246
  br i1 %tobool.not, label %if.then306, label %if.end328, !dbg !2248

if.then306:                                       ; preds = %for.end305
  %148 = load ptr, ptr %127, align 8, !dbg !2249
    #dbg_value(ptr %148, !2011, !DIExpression(), !2012)
  %arrayidx316 = getelementptr inbounds i8, ptr %127, i64 8, !dbg !2251
  %149 = load ptr, ptr %arrayidx316, align 8, !dbg !2251
  store ptr %149, ptr %127, align 8, !dbg !2252
  %150 = load ptr, ptr %ppSliceList258, align 8, !dbg !2253
  %151 = load ptr, ptr %150, align 8, !dbg !2254
  %arrayidx325 = getelementptr inbounds i8, ptr %151, i64 272, !dbg !2254
  %152 = load ptr, ptr %arrayidx325, align 8, !dbg !2254
  %arrayidx326 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2254
  store ptr %148, ptr %arrayidx326, align 8, !dbg !2255
  %.pre581 = load ptr, ptr %ppSliceList258, align 8, !dbg !2256
  %.pre582 = load ptr, ptr %.pre581, align 8, !dbg !2257
  %listXsize331.phi.trans.insert = getelementptr inbounds i8, ptr %.pre582, i64 256
  %.pre583 = load i8, ptr %listXsize331.phi.trans.insert, align 8, !dbg !2257
  br label %if.end328, !dbg !2258

if.end328:                                        ; preds = %for.end305, %if.then306, %if.end257
  %153 = phi i8 [ %124, %for.end305 ], [ %.pre583, %if.then306 ], [ %124, %if.end257 ], !dbg !2257
  %154 = phi ptr [ %123, %for.end305 ], [ %.pre582, %if.then306 ], [ %123, %if.end257 ], !dbg !2257
  %listXsize331 = getelementptr inbounds i8, ptr %154, i64 256, !dbg !2259
  %conv333 = sext i8 %153 to i32, !dbg !2257
  %num_ref_frames = getelementptr inbounds i8, ptr %1, i64 3120, !dbg !2260
  %155 = load i32, ptr %num_ref_frames, align 4, !dbg !2260
    #dbg_value(i32 %conv333, !2261, !DIExpression(), !2267)
    #dbg_value(i32 %155, !2266, !DIExpression(), !2267)
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %conv333, i32 %155), !dbg !2269
  %conv334 = trunc i32 %cond.i to i8, !dbg !2270
  store i8 %conv334, ptr %listXsize331, align 8, !dbg !2271
  %156 = load ptr, ptr %ppSliceList258, align 8, !dbg !2272
  %157 = load ptr, ptr %156, align 8, !dbg !2273
  %arrayidx342 = getelementptr inbounds i8, ptr %157, i64 257, !dbg !2273
  %158 = load i8, ptr %arrayidx342, align 1, !dbg !2273
  %conv343 = sext i8 %158 to i32, !dbg !2273
  %159 = load i32, ptr %num_ref_frames, align 4, !dbg !2274
    #dbg_value(i32 %conv343, !2261, !DIExpression(), !2275)
    #dbg_value(i32 %159, !2266, !DIExpression(), !2275)
  %cond.i519 = tail call noundef i32 @llvm.smin.i32(i32 %conv343, i32 %159), !dbg !2277
  %conv346 = trunc i32 %cond.i519 to i8, !dbg !2278
  store i8 %conv346, ptr %arrayidx342, align 1, !dbg !2279
  %160 = load ptr, ptr %ppSliceList258, align 8, !dbg !2280
  %161 = load ptr, ptr %160, align 8, !dbg !2281
  %arrayidx354 = getelementptr inbounds i8, ptr %161, i64 257, !dbg !2281
  store i8 0, ptr %arrayidx354, align 1, !dbg !2282
  %162 = load ptr, ptr %ppSliceList258, align 8, !dbg !2283
  %163 = load ptr, ptr %162, align 8, !dbg !2285
  %listXsize357 = getelementptr inbounds i8, ptr %163, i64 256, !dbg !2286
  %164 = load i8, ptr %listXsize357, align 8, !dbg !2285
    #dbg_value(i8 %164, !2005, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2012)
  %cmp361539 = icmp ult i8 %164, 33, !dbg !2287
  br i1 %cmp361539, label %for.body363.preheader, label %for.end372, !dbg !2289

for.body363.preheader:                            ; preds = %if.end328
  %conv359 = zext nneg i8 %164 to i64, !dbg !2285
    #dbg_value(i64 %conv359, !2005, !DIExpression(), !2012)
  br label %for.body363, !dbg !2289

for.body363:                                      ; preds = %for.body363.preheader, %for.body363
  %indvars.iv569 = phi i64 [ %conv359, %for.body363.preheader ], [ %indvars.iv.next570, %for.body363 ]
    #dbg_value(i64 %indvars.iv569, !2005, !DIExpression(), !2012)
  %165 = load ptr, ptr %ppSliceList258, align 8, !dbg !2290
  %166 = load ptr, ptr %165, align 8, !dbg !2292
  %listX366 = getelementptr inbounds i8, ptr %166, i64 264, !dbg !2293
  %167 = load ptr, ptr %listX366, align 8, !dbg !2292
  %arrayidx369 = getelementptr inbounds ptr, ptr %167, i64 %indvars.iv569, !dbg !2292
  store ptr null, ptr %arrayidx369, align 8, !dbg !2294
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1, !dbg !2295
    #dbg_value(i64 %indvars.iv.next570, !2005, !DIExpression(), !2012)
  %168 = and i64 %indvars.iv.next570, 4294967295, !dbg !2287
  %exitcond572.not = icmp eq i64 %168, 33, !dbg !2287
  br i1 %exitcond572.not, label %for.end372.loopexit, label %for.body363, !dbg !2289, !llvm.loop !2296

for.end372.loopexit:                              ; preds = %for.body363
  %.pre584 = load ptr, ptr %ppSliceList258, align 8, !dbg !2298
  %.pre585 = load ptr, ptr %.pre584, align 8, !dbg !2300
  br label %for.end372, !dbg !2298

for.end372:                                       ; preds = %for.end372.loopexit, %if.end328
  %169 = phi ptr [ %.pre585, %for.end372.loopexit ], [ %163, %if.end328 ], !dbg !2300
  %arrayidx376 = getelementptr inbounds i8, ptr %169, i64 257, !dbg !2300
  %170 = load i8, ptr %arrayidx376, align 1, !dbg !2300
    #dbg_value(i8 %170, !2005, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2012)
  %cmp379541 = icmp ult i8 %170, 33, !dbg !2301
  br i1 %cmp379541, label %for.body381.preheader, label %for.end390, !dbg !2303

for.body381.preheader:                            ; preds = %for.end372
  %conv377 = zext nneg i8 %170 to i64, !dbg !2300
    #dbg_value(i64 %conv377, !2005, !DIExpression(), !2012)
  br label %for.body381, !dbg !2303

for.body381:                                      ; preds = %for.body381.preheader, %for.body381
  %indvars.iv573 = phi i64 [ %conv377, %for.body381.preheader ], [ %indvars.iv.next574, %for.body381 ]
    #dbg_value(i64 %indvars.iv573, !2005, !DIExpression(), !2012)
  %171 = load ptr, ptr %ppSliceList258, align 8, !dbg !2304
  %172 = load ptr, ptr %171, align 8, !dbg !2306
  %arrayidx385 = getelementptr inbounds i8, ptr %172, i64 272, !dbg !2306
  %173 = load ptr, ptr %arrayidx385, align 8, !dbg !2306
  %arrayidx387 = getelementptr inbounds ptr, ptr %173, i64 %indvars.iv573, !dbg !2306
  store ptr null, ptr %arrayidx387, align 8, !dbg !2307
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1, !dbg !2308
    #dbg_value(i64 %indvars.iv.next574, !2005, !DIExpression(), !2012)
  %174 = and i64 %indvars.iv.next574, 4294967295, !dbg !2301
  %exitcond577.not = icmp eq i64 %174, 33, !dbg !2301
  br i1 %exitcond577.not, label %for.end390, label %for.body381, !dbg !2303, !llvm.loop !2309

for.end390:                                       ; preds = %for.body381, %for.end372
  ret void, !dbg !2311
}

; Function Attrs: nofree
declare !dbg !2312 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 !dbg !2321 {
entry:
    #dbg_value(ptr %arg1, !2323, !DIExpression(), !2327)
    #dbg_value(ptr %arg2, !2324, !DIExpression(), !2327)
  %0 = load ptr, ptr %arg1, align 8, !dbg !2328
  %pic_num = getelementptr inbounds i8, ptr %0, i64 28, !dbg !2329
  %1 = load i32, ptr %pic_num, align 4, !dbg !2329
    #dbg_value(i32 %1, !2325, !DIExpression(), !2327)
  %2 = load ptr, ptr %arg2, align 8, !dbg !2330
  %pic_num3 = getelementptr inbounds i8, ptr %2, i64 28, !dbg !2331
  %3 = load i32, ptr %pic_num3, align 4, !dbg !2331
    #dbg_value(i32 %3, !2326, !DIExpression(), !2327)
  %cmp = icmp slt i32 %1, %3, !dbg !2332
  %cmp4 = icmp sgt i32 %1, %3, !dbg !2334
  %. = sext i1 %cmp4 to i32, !dbg !2334
  %retval.0 = select i1 %cmp, i32 1, i32 %., !dbg !2334
  ret i32 %retval.0, !dbg !2335
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 !dbg !2336 {
entry:
    #dbg_value(ptr %arg1, !2338, !DIExpression(), !2342)
    #dbg_value(ptr %arg2, !2339, !DIExpression(), !2342)
  %0 = load ptr, ptr %arg1, align 8, !dbg !2343
  %poc = getelementptr inbounds i8, ptr %0, i64 4, !dbg !2344
  %1 = load i32, ptr %poc, align 4, !dbg !2344
    #dbg_value(i32 %1, !2340, !DIExpression(), !2342)
  %2 = load ptr, ptr %arg2, align 8, !dbg !2345
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !2346
  %3 = load i32, ptr %poc3, align 4, !dbg !2346
    #dbg_value(i32 %3, !2341, !DIExpression(), !2342)
  %cmp = icmp slt i32 %1, %3, !dbg !2347
  %cmp4 = icmp sgt i32 %1, %3, !dbg !2349
  %. = sext i1 %cmp4 to i32, !dbg !2349
  %retval.0 = select i1 %cmp, i32 1, i32 %., !dbg !2349
  ret i32 %retval.0, !dbg !2350
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 !dbg !2351 {
entry:
    #dbg_value(ptr %arg1, !2353, !DIExpression(), !2357)
    #dbg_value(ptr %arg2, !2354, !DIExpression(), !2357)
  %0 = load ptr, ptr %arg1, align 8, !dbg !2358
  %poc = getelementptr inbounds i8, ptr %0, i64 4, !dbg !2359
  %1 = load i32, ptr %poc, align 4, !dbg !2359
    #dbg_value(i32 %1, !2355, !DIExpression(), !2357)
  %2 = load ptr, ptr %arg2, align 8, !dbg !2360
  %poc3 = getelementptr inbounds i8, ptr %2, i64 4, !dbg !2361
  %3 = load i32, ptr %poc3, align 4, !dbg !2361
    #dbg_value(i32 %3, !2356, !DIExpression(), !2357)
  %cmp = icmp slt i32 %1, %3, !dbg !2362
  %cmp4 = icmp sgt i32 %1, %3, !dbg !2364
  %. = zext i1 %cmp4 to i32, !dbg !2364
  %retval.0 = select i1 %cmp, i32 -1, i32 %., !dbg !2364
  ret i32 %retval.0, !dbg !2365
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %arg1, ptr nocapture noundef readonly %arg2) #8 !dbg !2366 {
entry:
    #dbg_value(ptr %arg1, !2368, !DIExpression(), !2372)
    #dbg_value(ptr %arg2, !2369, !DIExpression(), !2372)
  %0 = load ptr, ptr %arg1, align 8, !dbg !2373
  %long_term_pic_num = getelementptr inbounds i8, ptr %0, i64 32, !dbg !2374
  %1 = load i32, ptr %long_term_pic_num, align 8, !dbg !2374
    #dbg_value(i32 %1, !2370, !DIExpression(), !2372)
  %2 = load ptr, ptr %arg2, align 8, !dbg !2375
  %long_term_pic_num3 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !2376
  %3 = load i32, ptr %long_term_pic_num3, align 8, !dbg !2376
    #dbg_value(i32 %3, !2371, !DIExpression(), !2372)
  %cmp = icmp slt i32 %1, %3, !dbg !2377
  %cmp4 = icmp sgt i32 %1, %3, !dbg !2379
  %. = zext i1 %cmp4 to i32, !dbg !2379
  %retval.0 = select i1 %cmp, i32 -1, i32 %., !dbg !2379
  ret i32 %retval.0, !dbg !2380
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @get_pic_from_dpb(ptr nocapture noundef readonly %p_Dpb, i32 noundef %missingpoc, ptr nocapture noundef writeonly %pos) local_unnamed_addr #9 !dbg !2381 {
entry:
    #dbg_value(ptr %p_Dpb, !2386, !DIExpression(), !2393)
    #dbg_value(i32 %missingpoc, !2387, !DIExpression(), !2393)
    #dbg_value(ptr %pos, !2388, !DIExpression(), !2393)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !2394
    #dbg_value(ptr %0, !2389, !DIExpression(), !2393)
  %used_size2 = getelementptr inbounds i8, ptr %p_Dpb, i64 44, !dbg !2395
  %1 = load i32, ptr %used_size2, align 4, !dbg !2395
    #dbg_value(i32 %1, !2390, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2393)
    #dbg_value(i32 0, !2392, !DIExpression(), !2393)
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240, !dbg !2396
  %2 = load i32, ptr %conceal_mode, align 8, !dbg !2396
  switch i32 %2, label %if.end8 [
    i32 1, label %if.then
    i32 2, label %if.then6
  ], !dbg !2398

if.then:                                          ; preds = %entry
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236, !dbg !2399
  %3 = load i32, ptr %poc_gap, align 4, !dbg !2399
  %sub3 = sub nsw i32 %missingpoc, %3, !dbg !2400
    #dbg_value(i32 %sub3, !2392, !DIExpression(), !2393)
  br label %if.end8, !dbg !2401

if.then6:                                         ; preds = %entry
  %poc_gap7 = getelementptr inbounds i8, ptr %0, i64 849236, !dbg !2402
  %4 = load i32, ptr %poc_gap7, align 4, !dbg !2402
  %add = add nsw i32 %4, %missingpoc, !dbg !2404
    #dbg_value(i32 %add, !2392, !DIExpression(), !2393)
  br label %if.end8, !dbg !2405

if.end8:                                          ; preds = %entry, %if.then6, %if.then
  %concealfrom.0 = phi i32 [ %sub3, %if.then ], [ %add, %if.then6 ], [ 0, %entry ], !dbg !2393
    #dbg_value(i32 %concealfrom.0, !2392, !DIExpression(), !2393)
    #dbg_value(i32 %1, !2391, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2393)
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %5 = zext i32 %1 to i64, !dbg !2406
  br label %for.cond, !dbg !2406

for.cond:                                         ; preds = %for.body, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %5, %if.end8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2408
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !2408
    #dbg_value(i32 %indvars, !2391, !DIExpression(), !2393)
  %cmp9 = icmp sgt i32 %indvars, -1, !dbg !2409
  br i1 %cmp9, label %for.body, label %cleanup, !dbg !2411

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %fs, align 8, !dbg !2412
  %idxprom = and i64 %indvars.iv.next, 2147483647, !dbg !2415
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom, !dbg !2415
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2415
  %poc = getelementptr inbounds i8, ptr %7, i64 40, !dbg !2416
  %8 = load i32, ptr %poc, align 8, !dbg !2416
  %cmp10 = icmp eq i32 %8, %concealfrom.0, !dbg !2417
  br i1 %cmp10, label %if.then11, label %for.cond, !dbg !2418, !llvm.loop !2419

if.then11:                                        ; preds = %for.body
  store i32 %indvars, ptr %pos, align 4, !dbg !2421
  %9 = load ptr, ptr %fs, align 8, !dbg !2423
  %arrayidx14 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !2424
  %10 = load ptr, ptr %arrayidx14, align 8, !dbg !2424
  %frame = getelementptr inbounds i8, ptr %10, i64 48, !dbg !2425
  %11 = load ptr, ptr %frame, align 8, !dbg !2425
  br label %cleanup, !dbg !2426

cleanup:                                          ; preds = %for.cond, %if.then11
  %retval.0 = phi ptr [ %11, %if.then11 ], [ null, %for.cond ], !dbg !2393
  ret ptr %retval.0, !dbg !2427
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @comp(ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %j) #10 !dbg !2428 {
entry:
    #dbg_value(ptr %i, !2430, !DIExpression(), !2432)
    #dbg_value(ptr %j, !2431, !DIExpression(), !2432)
  %0 = load i32, ptr %i, align 4, !dbg !2433
  %1 = load i32, ptr %j, align 4, !dbg !2434
  %sub = sub nsw i32 %0, %1, !dbg !2435
  ret i32 %sub, !dbg !2436
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @init_node(ptr noundef %picture, i32 noundef %missingpoc) local_unnamed_addr #11 !dbg !2437 {
entry:
    #dbg_value(ptr %picture, !2441, !DIExpression(), !2444)
    #dbg_value(i32 %missingpoc, !2442, !DIExpression(), !2444)
  %call = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #20, !dbg !2445
    #dbg_value(ptr %call, !2443, !DIExpression(), !2444)
  %cmp = icmp eq ptr %call, null, !dbg !2446
  br i1 %cmp, label %cleanup, label %if.else, !dbg !2448

if.else:                                          ; preds = %entry
  store ptr %picture, ptr %call, align 8, !dbg !2449
  %missingpocs = getelementptr inbounds i8, ptr %call, i64 8, !dbg !2451
  store i32 %missingpoc, ptr %missingpocs, align 8, !dbg !2452
  br label %cleanup, !dbg !2453

cleanup:                                          ; preds = %entry, %if.else
  ret ptr %call, !dbg !2454
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !2455 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_node(ptr nocapture noundef readonly %ptr) local_unnamed_addr #6 !dbg !2458 {
entry:
    #dbg_value(ptr %ptr, !2462, !DIExpression(), !2463)
  %missingpocs = getelementptr inbounds i8, ptr %ptr, i64 8, !dbg !2464
  %0 = load i32, ptr %missingpocs, align 8, !dbg !2464
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0), !dbg !2465
  ret void, !dbg !2466
}

; Function Attrs: nofree nounwind
declare !dbg !2467 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_list(ptr noundef readonly %ptr) local_unnamed_addr #6 !dbg !2474 {
entry:
    #dbg_value(ptr %ptr, !2476, !DIExpression(), !2477)
  %cmp.not3 = icmp eq ptr %ptr, null, !dbg !2478
  br i1 %cmp.not3, label %while.end, label %while.body, !dbg !2479

while.body:                                       ; preds = %entry, %while.body
  %ptr.addr.04 = phi ptr [ %1, %while.body ], [ %ptr, %entry ]
    #dbg_value(ptr %ptr.addr.04, !2476, !DIExpression(), !2477)
    #dbg_value(ptr %ptr.addr.04, !2462, !DIExpression(), !2480)
  %missingpocs.i = getelementptr inbounds i8, ptr %ptr.addr.04, i64 8, !dbg !2483
  %0 = load i32, ptr %missingpocs.i, align 8, !dbg !2483
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0), !dbg !2484
  %next = getelementptr inbounds i8, ptr %ptr.addr.04, i64 16, !dbg !2485
  %1 = load ptr, ptr %next, align 8, !dbg !2485
    #dbg_value(ptr %1, !2476, !DIExpression(), !2477)
  %cmp.not = icmp eq ptr %1, null, !dbg !2478
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !2479, !llvm.loop !2486

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !2488
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_list(ptr nocapture noundef %p_Vid, ptr noundef %ptr) local_unnamed_addr #0 !dbg !2489 {
entry:
    #dbg_value(ptr %p_Vid, !2493, !DIExpression(), !2496)
    #dbg_value(ptr %ptr, !2494, !DIExpression(), !2496)
  %concealment_head = getelementptr inbounds i8, ptr %p_Vid, i64 848928, !dbg !2497
  %0 = load ptr, ptr %concealment_head, align 8, !dbg !2497
  %cmp = icmp eq ptr %0, null, !dbg !2499
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2500

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %0, %ptr, !dbg !2501
  br i1 %cmp2, label %if.then3, label %while.cond, !dbg !2503

if.then3:                                         ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %concealment_head, i8 0, i64 16, i1 false), !dbg !2504
  br label %if.end9, !dbg !2506

while.cond:                                       ; preds = %if.end, %while.cond
  %temp.0 = phi ptr [ %1, %while.cond ], [ %0, %if.end ], !dbg !2507
    #dbg_value(ptr %temp.0, !2495, !DIExpression(), !2496)
  %next = getelementptr inbounds i8, ptr %temp.0, i64 16, !dbg !2509
  %1 = load ptr, ptr %next, align 8, !dbg !2509
  %cmp6.not = icmp eq ptr %1, %ptr, !dbg !2510
  br i1 %cmp6.not, label %while.end, label %while.cond, !dbg !2511, !llvm.loop !2512

while.end:                                        ; preds = %while.cond
  %concealment_end8 = getelementptr inbounds i8, ptr %p_Vid, i64 848936, !dbg !2514
  store ptr %temp.0, ptr %concealment_end8, align 8, !dbg !2515
  br label %if.end9

if.end9:                                          ; preds = %while.end, %if.then3
    #dbg_value(ptr %ptr, !2494, !DIExpression(), !2496)
  %cmp11.not28 = icmp eq ptr %ptr, null, !dbg !2516
  br i1 %cmp11.not28, label %cleanup, label %while.body12, !dbg !2517

while.body12:                                     ; preds = %if.end9, %while.body12
  %ptr.addr.029 = phi ptr [ %2, %while.body12 ], [ %ptr, %if.end9 ]
    #dbg_value(ptr %ptr.addr.029, !2494, !DIExpression(), !2496)
  %next13 = getelementptr inbounds i8, ptr %ptr.addr.029, i64 16, !dbg !2518
  %2 = load ptr, ptr %next13, align 8, !dbg !2518
    #dbg_value(ptr %2, !2495, !DIExpression(), !2496)
  tail call void @free(ptr noundef nonnull %ptr.addr.029) #18, !dbg !2520
    #dbg_value(ptr %2, !2494, !DIExpression(), !2496)
  %cmp11.not = icmp eq ptr %2, null, !dbg !2516
  br i1 %cmp11.not, label %cleanup, label %while.body12, !dbg !2517, !llvm.loop !2521

cleanup:                                          ; preds = %while.body12, %if.end9, %entry
  ret void, !dbg !2523
}

; Function Attrs: nounwind uwtable
define dso_local void @conceal_non_ref_pics(ptr nocapture noundef %p_Dpb, i32 noundef %diff) local_unnamed_addr #0 !dbg !2524 {
entry:
    #dbg_value(ptr %p_Dpb, !2526, !DIExpression(), !2536)
    #dbg_value(i32 %diff, !2527, !DIExpression(), !2536)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !2537
    #dbg_value(ptr %0, !2528, !DIExpression(), !2536)
    #dbg_value(i32 0, !2529, !DIExpression(), !2536)
    #dbg_value(i32 0, !2531, !DIExpression(), !2536)
    #dbg_value(ptr null, !2532, !DIExpression(), !2536)
    #dbg_value(ptr null, !2533, !DIExpression(), !2536)
    #dbg_value(ptr null, !2534, !DIExpression(), !2536)
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44, !dbg !2538
  %1 = load i32, ptr %used_size, align 4, !dbg !2538
    #dbg_value(i32 %1, !2535, !DIExpression(), !2536)
  %cmp = icmp eq i32 %1, 0, !dbg !2539
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2541

if.end:                                           ; preds = %entry
  %pocs_in_dpb = getelementptr inbounds i8, ptr %0, i64 856056, !dbg !2542
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40, !dbg !2543
  %2 = load i32, ptr %size, align 8, !dbg !2543
  %conv = zext i32 %2 to i64, !dbg !2544
  tail call void @qsort(ptr noundef nonnull %pocs_in_dpb, i64 noundef %conv, i64 noundef 4, ptr noundef nonnull @comp) #18, !dbg !2545
    #dbg_value(i32 0, !2530, !DIExpression(), !2536)
    #dbg_value(i32 0, !2531, !DIExpression(), !2536)
  %3 = load i32, ptr %size, align 8, !dbg !2546
  %cmp494.not = icmp eq i32 %3, %diff, !dbg !2549
  br i1 %cmp494.not, label %for.end, label %for.body.lr.ph, !dbg !2550

for.body.lr.ph:                                   ; preds = %if.end
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236
  %width = getelementptr inbounds i8, ptr %0, i64 848780
  %height = getelementptr inbounds i8, ptr %0, i64 848784
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792
  %earlier_missing_poc = getelementptr inbounds i8, ptr %0, i64 849244
  %fs.i = getelementptr inbounds i8, ptr %p_Dpb, i64 16
  %frame_to_conceal = getelementptr inbounds i8, ptr %0, i64 849248
  %fs_ref.i = getelementptr inbounds i8, ptr %p_Dpb, i64 24
  %ref_frames_in_buffer.i = getelementptr inbounds i8, ptr %p_Dpb, i64 48
  %conceal_slice_type = getelementptr inbounds i8, ptr %0, i64 849256
  %concealment_head.i = getelementptr inbounds i8, ptr %0, i64 848928
  %concealment_end2.i = getelementptr inbounds i8, ptr %0, i64 848936
  br label %for.body, !dbg !2550

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %41, %for.inc ]
  %pos.095 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.2, %for.inc ]
    #dbg_value(i64 %indvars.iv, !2530, !DIExpression(), !2536)
    #dbg_value(i32 %pos.095, !2531, !DIExpression(), !2536)
  store i32 %4, ptr %used_size, align 4, !dbg !2551
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2553
  %arrayidx = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv.next, !dbg !2555
  %5 = load i32, ptr %arrayidx, align 4, !dbg !2555
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv, !dbg !2556
  %6 = load i32, ptr %arrayidx11, align 4, !dbg !2556
  %sub12 = sub nsw i32 %5, %6, !dbg !2557
  %7 = load i32, ptr %poc_gap, align 4, !dbg !2558
  %cmp13 = icmp sgt i32 %sub12, %7, !dbg !2559
  br i1 %cmp13, label %if.then15, label %for.inc, !dbg !2560

if.then15:                                        ; preds = %for.body
  %8 = load i32, ptr %width, align 4, !dbg !2561
  %9 = load i32, ptr %height, align 8, !dbg !2563
  %10 = load i32, ptr %width_cr, align 4, !dbg !2564
  %11 = load i32, ptr %height_cr, align 8, !dbg !2565
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #18, !dbg !2566
    #dbg_value(ptr %call, !2533, !DIExpression(), !2536)
  %12 = load i32, ptr %arrayidx11, align 4, !dbg !2567
  %13 = load i32, ptr %poc_gap, align 4, !dbg !2568
  %add20 = add nsw i32 %13, %12, !dbg !2569
    #dbg_value(i32 %add20, !2529, !DIExpression(), !2536)
  %14 = load i32, ptr %earlier_missing_poc, align 4, !dbg !2570
  %cmp21 = icmp sgt i32 %add20, %14, !dbg !2572
  br i1 %cmp21, label %if.then23, label %for.inc, !dbg !2573

if.then23:                                        ; preds = %if.then15
  store i32 %add20, ptr %earlier_missing_poc, align 4, !dbg !2574
  %poc = getelementptr inbounds i8, ptr %call, i64 4, !dbg !2576
  %15 = insertelement <4 x i32> poison, i32 %add20, i64 0, !dbg !2577
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !2577
  store <4 x i32> %16, ptr %poc, align 4, !dbg !2577
    #dbg_value(ptr %p_Dpb, !2386, !DIExpression(), !2578)
    #dbg_value(i32 %add20, !2387, !DIExpression(), !2578)
    #dbg_value(ptr undef, !2388, !DIExpression(), !2578)
  %17 = load ptr, ptr %p_Dpb, align 8, !dbg !2580
    #dbg_value(ptr %17, !2389, !DIExpression(), !2578)
  %18 = load i32, ptr %used_size, align 4, !dbg !2581
    #dbg_value(i32 %18, !2390, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2578)
    #dbg_value(i32 0, !2392, !DIExpression(), !2578)
  %conceal_mode.i = getelementptr inbounds i8, ptr %17, i64 849240, !dbg !2582
  %19 = load i32, ptr %conceal_mode.i, align 8, !dbg !2582
  switch i32 %19, label %if.end8.i [
    i32 1, label %if.then.i
    i32 2, label %if.then6.i
  ], !dbg !2583

if.then.i:                                        ; preds = %if.then23
  %poc_gap.i = getelementptr inbounds i8, ptr %17, i64 849236, !dbg !2584
  %20 = load i32, ptr %poc_gap.i, align 4, !dbg !2584
  %sub3.i = sub nsw i32 %add20, %20, !dbg !2585
    #dbg_value(i32 %sub3.i, !2392, !DIExpression(), !2578)
  br label %if.end8.i, !dbg !2586

if.then6.i:                                       ; preds = %if.then23
  %poc_gap7.i = getelementptr inbounds i8, ptr %17, i64 849236, !dbg !2587
  %21 = load i32, ptr %poc_gap7.i, align 4, !dbg !2587
  %add.i = add nsw i32 %21, %add20, !dbg !2588
    #dbg_value(i32 %add.i, !2392, !DIExpression(), !2578)
  br label %if.end8.i, !dbg !2589

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i, %if.then23
  %concealfrom.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %add.i, %if.then6.i ], [ 0, %if.then23 ], !dbg !2578
    #dbg_value(i32 %concealfrom.0.i, !2392, !DIExpression(), !2578)
    #dbg_value(i32 %18, !2391, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2578)
  %22 = zext i32 %18 to i64, !dbg !2590
  br label %for.cond.i, !dbg !2590

for.cond.i:                                       ; preds = %for.body.i, %if.end8.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %22, %if.end8.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1, !dbg !2591
  %indvars.i = trunc i64 %indvars.iv.next.i to i32, !dbg !2591
    #dbg_value(i32 %indvars.i, !2391, !DIExpression(), !2578)
  %cmp9.i = icmp sgt i32 %indvars.i, -1, !dbg !2592
  br i1 %cmp9.i, label %for.body.i, label %get_pic_from_dpb.exit, !dbg !2593

for.body.i:                                       ; preds = %for.cond.i
  %23 = load ptr, ptr %fs.i, align 8, !dbg !2594
  %idxprom.i = and i64 %indvars.iv.next.i, 2147483647, !dbg !2595
  %arrayidx.i = getelementptr inbounds ptr, ptr %23, i64 %idxprom.i, !dbg !2595
  %24 = load ptr, ptr %arrayidx.i, align 8, !dbg !2595
  %poc.i = getelementptr inbounds i8, ptr %24, i64 40, !dbg !2596
  %25 = load i32, ptr %poc.i, align 8, !dbg !2596
  %cmp10.i = icmp eq i32 %25, %concealfrom.0.i, !dbg !2597
  br i1 %cmp10.i, label %if.then11.i, label %for.cond.i, !dbg !2598, !llvm.loop !2599

if.then11.i:                                      ; preds = %for.body.i
    #dbg_value(i32 %indvars.i, !2531, !DIExpression(), !2536)
  %frame.i = getelementptr inbounds i8, ptr %24, i64 48, !dbg !2601
  %26 = load ptr, ptr %frame.i, align 8, !dbg !2601
  br label %get_pic_from_dpb.exit, !dbg !2602

get_pic_from_dpb.exit:                            ; preds = %for.cond.i, %if.then11.i
  %pos.1 = phi i32 [ %indvars.i, %if.then11.i ], [ %pos.095, %for.cond.i ], !dbg !2536
  %retval.0.i = phi ptr [ %26, %if.then11.i ], [ null, %for.cond.i ], !dbg !2578
    #dbg_value(i32 %pos.1, !2531, !DIExpression(), !2536)
    #dbg_value(ptr %retval.0.i, !2532, !DIExpression(), !2536)
  %add26 = add i32 %pos.1, 1, !dbg !2603
  store i32 %add26, ptr %used_size, align 4, !dbg !2604
  %frame_num = getelementptr inbounds i8, ptr %retval.0.i, i64 20, !dbg !2605
  %27 = load i32, ptr %frame_num, align 4, !dbg !2605
  %add28 = add i32 %27, 1, !dbg !2606
  store i32 %add28, ptr %frame_to_conceal, align 8, !dbg !2607
    #dbg_value(ptr %p_Dpb, !1965, !DIExpression(), !2608)
  %28 = load ptr, ptr %p_Dpb, align 8, !dbg !2610
    #dbg_value(ptr %28, !1966, !DIExpression(), !2608)
    #dbg_value(i32 0, !1968, !DIExpression(), !2608)
    #dbg_value(i32 0, !1967, !DIExpression(), !2608)
  %29 = load i32, ptr %used_size, align 4, !dbg !2611
  %cmp16.not.i = icmp eq i32 %29, 0, !dbg !2612
  br i1 %cmp16.not.i, label %update_ref_list_for_concealment.exit, label %for.body.i84, !dbg !2613

for.body.i84:                                     ; preds = %get_pic_from_dpb.exit, %for.inc.i
  %30 = phi i32 [ %35, %for.inc.i ], [ %29, %get_pic_from_dpb.exit ]
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i88, %for.inc.i ], [ 0, %get_pic_from_dpb.exit ]
  %j.018.i = phi i32 [ %j.1.i, %for.inc.i ], [ 0, %get_pic_from_dpb.exit ]
    #dbg_value(i32 %j.018.i, !1968, !DIExpression(), !2608)
    #dbg_value(i64 %indvars.iv.i85, !1967, !DIExpression(), !2608)
  %31 = load ptr, ptr %fs.i, align 8, !dbg !2614
  %arrayidx.i86 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv.i85, !dbg !2615
  %32 = load ptr, ptr %arrayidx.i86, align 8, !dbg !2615
  %concealment_reference.i = getelementptr inbounds i8, ptr %32, i64 44, !dbg !2616
  %33 = load i32, ptr %concealment_reference.i, align 4, !dbg !2616
  %tobool.not.i = icmp eq i32 %33, 0, !dbg !2615
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i87, !dbg !2617

if.then.i87:                                      ; preds = %for.body.i84
  %34 = load ptr, ptr %fs_ref.i, align 8, !dbg !2618
  %inc.i = add i32 %j.018.i, 1, !dbg !2619
    #dbg_value(i32 %inc.i, !1968, !DIExpression(), !2608)
  %idxprom5.i = zext i32 %j.018.i to i64, !dbg !2620
  %arrayidx6.i = getelementptr inbounds ptr, ptr %34, i64 %idxprom5.i, !dbg !2620
  store ptr %32, ptr %arrayidx6.i, align 8, !dbg !2621
  %.pre.i = load i32, ptr %used_size, align 4, !dbg !2611
  br label %for.inc.i, !dbg !2622

for.inc.i:                                        ; preds = %if.then.i87, %for.body.i84
  %35 = phi i32 [ %.pre.i, %if.then.i87 ], [ %30, %for.body.i84 ], !dbg !2611
  %j.1.i = phi i32 [ %inc.i, %if.then.i87 ], [ %j.018.i, %for.body.i84 ], !dbg !2608
    #dbg_value(i32 %j.1.i, !1968, !DIExpression(), !2608)
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i85, 1, !dbg !2623
    #dbg_value(i64 %indvars.iv.next.i88, !1967, !DIExpression(), !2608)
  %36 = zext i32 %35 to i64, !dbg !2612
  %cmp.i = icmp ult i64 %indvars.iv.next.i88, %36, !dbg !2612
  br i1 %cmp.i, label %for.body.i84, label %update_ref_list_for_concealment.exit, !dbg !2613, !llvm.loop !2624

update_ref_list_for_concealment.exit:             ; preds = %for.inc.i, %get_pic_from_dpb.exit
  %active_pps.i = getelementptr inbounds i8, ptr %28, i64 8, !dbg !2626
  %37 = load ptr, ptr %active_pps.i, align 8, !dbg !2626
  %num_ref_idx_l0_active_minus1.i = getelementptr inbounds i8, ptr %37, i64 2168, !dbg !2627
  %38 = load i32, ptr %num_ref_idx_l0_active_minus1.i, align 8, !dbg !2627
  store i32 %38, ptr %ref_frames_in_buffer.i, align 8, !dbg !2628
  store i32 1, ptr %conceal_slice_type, align 8, !dbg !2629
  tail call fastcc void @copy_to_conceal(ptr noundef %retval.0.i, ptr noundef %call, ptr noundef %0), !dbg !2630
    #dbg_value(ptr %call, !2441, !DIExpression(), !2631)
    #dbg_value(i32 %add20, !2442, !DIExpression(), !2631)
  %call.i = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #20, !dbg !2633
    #dbg_value(ptr %call.i, !2443, !DIExpression(), !2631)
  %cmp.i89 = icmp eq ptr %call.i, null, !dbg !2634
  br i1 %cmp.i89, label %init_node.exit, label %if.else.i, !dbg !2635

if.else.i:                                        ; preds = %update_ref_list_for_concealment.exit
  store ptr %call, ptr %call.i, align 8, !dbg !2636
  %missingpocs.i = getelementptr inbounds i8, ptr %call.i, i64 8, !dbg !2637
  store i32 %add20, ptr %missingpocs.i, align 8, !dbg !2638
  br label %init_node.exit, !dbg !2639

init_node.exit:                                   ; preds = %update_ref_list_for_concealment.exit, %if.else.i
    #dbg_value(ptr %call.i, !2534, !DIExpression(), !2536)
    #dbg_value(ptr %0, !2640, !DIExpression(), !2644)
    #dbg_value(ptr %call.i, !2643, !DIExpression(), !2644)
  %39 = load ptr, ptr %concealment_head.i, align 8, !dbg !2646
  %cmp.i90 = icmp eq ptr %39, null, !dbg !2648
  br i1 %cmp.i90, label %add_node.exit, label %if.end.i, !dbg !2649

if.end.i:                                         ; preds = %init_node.exit
  %40 = load ptr, ptr %concealment_end2.i, align 8, !dbg !2650
  %next.i = getelementptr inbounds i8, ptr %40, i64 16, !dbg !2651
  br label %add_node.exit, !dbg !2652

add_node.exit:                                    ; preds = %init_node.exit, %if.end.i
  %concealment_head.i.sink = phi ptr [ %next.i, %if.end.i ], [ %concealment_head.i, %init_node.exit ]
  store ptr %call.i, ptr %concealment_head.i.sink, align 8, !dbg !2644
  store ptr %call.i, ptr %concealment_end2.i, align 8, !dbg !2644
  br label %for.inc, !dbg !2653

for.inc:                                          ; preds = %for.body, %add_node.exit, %if.then15
  %pos.2 = phi i32 [ %pos.1, %add_node.exit ], [ %pos.095, %if.then15 ], [ %pos.095, %for.body ], !dbg !2536
    #dbg_value(i32 %pos.2, !2531, !DIExpression(), !2536)
    #dbg_value(i64 %indvars.iv.next, !2530, !DIExpression(), !2536)
  %41 = load i32, ptr %size, align 8, !dbg !2546
  %sub = sub i32 %41, %diff, !dbg !2654
  %42 = zext i32 %sub to i64, !dbg !2549
  %cmp4 = icmp ult i64 %indvars.iv.next, %42, !dbg !2549
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2550, !llvm.loop !2655

for.end:                                          ; preds = %for.inc, %if.end
  store i32 %1, ptr %used_size, align 4, !dbg !2657
  br label %cleanup, !dbg !2658

cleanup:                                          ; preds = %entry, %for.end
  ret void, !dbg !2658
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_to_conceal(ptr nocapture noundef %src, ptr nocapture noundef %dst, ptr noundef %p_Vid) unnamed_addr #0 !dbg !2659 {
entry:
  %tmp_block.i = alloca ptr, align 8, !DIAssignID !2684
    #dbg_value(ptr %src, !2663, !DIExpression(), !2685)
    #dbg_value(ptr %dst, !2664, !DIExpression(), !2685)
    #dbg_value(ptr %p_Vid, !2665, !DIExpression(), !2685)
    #dbg_value(i32 0, !2666, !DIExpression(), !2685)
    #dbg_value(i32 0, !2676, !DIExpression(), !2685)
    #dbg_value(i32 0, !2677, !DIExpression(), !2685)
    #dbg_value(i32 1, !2681, !DIExpression(), !2685)
    #dbg_value(ptr poison, !2682, !DIExpression(), !2685)
    #dbg_value(i32 0, !2683, !DIExpression(), !2685)
  %PicSizeInMbs = getelementptr inbounds i8, ptr %src, i64 108, !dbg !2686
  %0 = load i32, ptr %PicSizeInMbs, align 4, !dbg !2686
  %PicSizeInMbs2 = getelementptr inbounds i8, ptr %dst, i64 108, !dbg !2687
  store i32 %0, ptr %PicSizeInMbs2, align 4, !dbg !2688
  %conceal_slice_type = getelementptr inbounds i8, ptr %p_Vid, i64 849256, !dbg !2689
  %1 = load i32, ptr %conceal_slice_type, align 8, !dbg !2689
  %slice_type = getelementptr inbounds i8, ptr %src, i64 248, !dbg !2690
  store i32 %1, ptr %slice_type, align 8, !dbg !2691
  %slice_type3 = getelementptr inbounds i8, ptr %dst, i64 248, !dbg !2692
  store i32 %1, ptr %slice_type3, align 8, !dbg !2693
  %idr_flag = getelementptr inbounds i8, ptr %dst, i64 252, !dbg !2694
  store i32 0, ptr %idr_flag, align 4, !dbg !2695
  %no_output_of_prior_pics_flag = getelementptr inbounds i8, ptr %src, i64 256, !dbg !2696
  %2 = load i32, ptr %no_output_of_prior_pics_flag, align 8, !dbg !2696
  %no_output_of_prior_pics_flag4 = getelementptr inbounds i8, ptr %dst, i64 256, !dbg !2697
  store i32 %2, ptr %no_output_of_prior_pics_flag4, align 8, !dbg !2698
  %long_term_reference_flag = getelementptr inbounds i8, ptr %src, i64 260, !dbg !2699
  %3 = load i32, ptr %long_term_reference_flag, align 4, !dbg !2699
  %long_term_reference_flag5 = getelementptr inbounds i8, ptr %dst, i64 260, !dbg !2700
  store i32 %3, ptr %long_term_reference_flag5, align 4, !dbg !2701
  %adaptive_ref_pic_buffering_flag = getelementptr inbounds i8, ptr %src, i64 264, !dbg !2702
  store i32 0, ptr %adaptive_ref_pic_buffering_flag, align 8, !dbg !2703
  %adaptive_ref_pic_buffering_flag6 = getelementptr inbounds i8, ptr %dst, i64 264, !dbg !2704
  store i32 0, ptr %adaptive_ref_pic_buffering_flag6, align 8, !dbg !2705
  %chroma_format_idc = getelementptr inbounds i8, ptr %src, i64 268, !dbg !2706
  %4 = load i32, ptr %chroma_format_idc, align 4, !dbg !2706
  %chroma_format_idc7 = getelementptr inbounds i8, ptr %dst, i64 268, !dbg !2707
  store i32 %4, ptr %chroma_format_idc7, align 4, !dbg !2708
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %src, i64 272, !dbg !2709
  %5 = load i32, ptr %frame_mbs_only_flag, align 8, !dbg !2709
  %frame_mbs_only_flag8 = getelementptr inbounds i8, ptr %dst, i64 272, !dbg !2710
  store i32 %5, ptr %frame_mbs_only_flag8, align 8, !dbg !2711
  %frame_cropping_flag = getelementptr inbounds i8, ptr %src, i64 276, !dbg !2712
  %6 = load i32, ptr %frame_cropping_flag, align 4, !dbg !2712
  %frame_cropping_flag9 = getelementptr inbounds i8, ptr %dst, i64 276, !dbg !2713
  store i32 %6, ptr %frame_cropping_flag9, align 4, !dbg !2714
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %src, i64 280, !dbg !2715
  %7 = load i32, ptr %frame_cropping_rect_left_offset, align 8, !dbg !2715
  %frame_cropping_rect_left_offset10 = getelementptr inbounds i8, ptr %dst, i64 280, !dbg !2716
  store i32 %7, ptr %frame_cropping_rect_left_offset10, align 8, !dbg !2717
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %src, i64 284, !dbg !2718
  %8 = load i32, ptr %frame_cropping_rect_right_offset, align 4, !dbg !2718
  %frame_cropping_rect_right_offset11 = getelementptr inbounds i8, ptr %dst, i64 284, !dbg !2719
  store i32 %8, ptr %frame_cropping_rect_right_offset11, align 4, !dbg !2720
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %src, i64 292, !dbg !2721
  %9 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4, !dbg !2721
  %frame_cropping_rect_bottom_offset12 = getelementptr inbounds i8, ptr %dst, i64 292, !dbg !2722
  store i32 %9, ptr %frame_cropping_rect_bottom_offset12, align 4, !dbg !2723
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %src, i64 288, !dbg !2724
  %10 = load i32, ptr %frame_cropping_rect_top_offset, align 8, !dbg !2724
  %frame_cropping_rect_top_offset13 = getelementptr inbounds i8, ptr %dst, i64 288, !dbg !2725
  store i32 %10, ptr %frame_cropping_rect_top_offset13, align 8, !dbg !2726
  %qp = getelementptr inbounds i8, ptr %src, i64 296, !dbg !2727
  %11 = load i32, ptr %qp, align 8, !dbg !2727
  %qp14 = getelementptr inbounds i8, ptr %dst, i64 296, !dbg !2728
  store i32 %11, ptr %qp14, align 8, !dbg !2729
  %slice_qp_delta = getelementptr inbounds i8, ptr %src, i64 308, !dbg !2730
  %12 = load i32, ptr %slice_qp_delta, align 4, !dbg !2730
  %slice_qp_delta15 = getelementptr inbounds i8, ptr %dst, i64 308, !dbg !2731
  store i32 %12, ptr %slice_qp_delta15, align 4, !dbg !2732
    #dbg_value(ptr %src, !2682, !DIExpression(), !2685)
  %conceal_mode = getelementptr inbounds i8, ptr %p_Vid, i64 849240, !dbg !2733
  %13 = load i32, ptr %conceal_mode, align 8, !dbg !2733
  %cmp = icmp eq i32 %13, 1, !dbg !2735
  br i1 %cmp, label %if.then, label %if.end, !dbg !2736

if.then:                                          ; preds = %entry
  %PicWidthInMbs = getelementptr inbounds i8, ptr %src, i64 104, !dbg !2737
  %14 = load i32, ptr %PicWidthInMbs, align 8, !dbg !2737
  %PicWidthInMbs16 = getelementptr inbounds i8, ptr %dst, i64 104, !dbg !2739
  store i32 %14, ptr %PicWidthInMbs16, align 8, !dbg !2740
  %15 = load i32, ptr %PicSizeInMbs, align 4, !dbg !2741
  store i32 %15, ptr %PicSizeInMbs2, align 4, !dbg !2742
  %imgY = getelementptr inbounds i8, ptr %src, i64 128, !dbg !2743
  %16 = load ptr, ptr %imgY, align 8, !dbg !2743
  %imgUV = getelementptr inbounds i8, ptr %src, i64 136, !dbg !2744
  %17 = load ptr, ptr %imgUV, align 8, !dbg !2744
  %imgY19 = getelementptr inbounds i8, ptr %dst, i64 128, !dbg !2745
  %18 = load ptr, ptr %imgY19, align 8, !dbg !2745
  %imgUV20 = getelementptr inbounds i8, ptr %dst, i64 136, !dbg !2746
  %19 = load ptr, ptr %imgUV20, align 8, !dbg !2746
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !2747
  %20 = load i32, ptr %width, align 4, !dbg !2747
  %height = getelementptr inbounds i8, ptr %p_Vid, i64 848784, !dbg !2748
  %21 = load i32, ptr %height, align 8, !dbg !2748
  %width_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848788, !dbg !2749
  %22 = load i32, ptr %width_cr, align 4, !dbg !2749
  %height_cr = getelementptr inbounds i8, ptr %p_Vid, i64 848792, !dbg !2750
  %23 = load i32, ptr %height_cr, align 8, !dbg !2750
    #dbg_value(ptr %16, !2751, !DIExpression(), !2765)
    #dbg_value(ptr %17, !2756, !DIExpression(), !2765)
    #dbg_value(ptr %18, !2757, !DIExpression(), !2765)
    #dbg_value(ptr %19, !2758, !DIExpression(), !2765)
    #dbg_value(i32 %20, !2759, !DIExpression(), !2765)
    #dbg_value(i32 %21, !2760, !DIExpression(), !2765)
    #dbg_value(i32 %22, !2761, !DIExpression(), !2765)
    #dbg_value(i32 %23, !2762, !DIExpression(), !2765)
    #dbg_value(i32 0, !2764, !DIExpression(), !2765)
  %cmp67.i = icmp sgt i32 %21, 0, !dbg !2767
  %cmp265.i = icmp sgt i32 %20, 0
  %or.cond.i = and i1 %cmp265.i, %cmp67.i, !dbg !2770
  br i1 %or.cond.i, label %for.cond1.preheader.us.preheader.i, label %for.cond13.preheader.i, !dbg !2770

for.cond1.preheader.us.preheader.i:               ; preds = %if.then
  %wide.trip.count79.i = zext nneg i32 %21 to i64, !dbg !2767
  %wide.trip.count.i = zext nneg i32 %20 to i64
  %xtraiter = and i64 %wide.trip.count.i, 3
  %24 = icmp ult i32 %20, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %for.cond1.preheader.us.i, !dbg !2770

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.inc10_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %indvars.iv76.i = phi i64 [ 0, %for.cond1.preheader.us.preheader.i ], [ %indvars.iv.next77.i, %for.cond1.for.inc10_crit_edge.us.i ]
    #dbg_value(i64 %indvars.iv76.i, !2764, !DIExpression(), !2765)
    #dbg_value(i32 0, !2763, !DIExpression(), !2765)
  %arrayidx.us.i = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv76.i
  %arrayidx7.us.i = getelementptr inbounds ptr, ptr %18, i64 %indvars.iv76.i
  br i1 %24, label %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, label %for.body3.us.i, !dbg !2771

for.body3.us.i:                                   ; preds = %for.cond1.preheader.us.i, %for.body3.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %for.body3.us.i ], [ 0, %for.cond1.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %for.body3.us.i ], [ 0, %for.cond1.preheader.us.i ]
    #dbg_value(i64 %indvars.iv.i, !2763, !DIExpression(), !2765)
  %25 = load ptr, ptr %arrayidx.us.i, align 8, !dbg !2773
  %arrayidx5.us.i = getelementptr inbounds i16, ptr %25, i64 %indvars.iv.i, !dbg !2773
  %26 = load i16, ptr %arrayidx5.us.i, align 2, !dbg !2773
  %27 = load ptr, ptr %arrayidx7.us.i, align 8, !dbg !2775
  %arrayidx9.us.i = getelementptr inbounds i16, ptr %27, i64 %indvars.iv.i, !dbg !2775
  store i16 %26, ptr %arrayidx9.us.i, align 2, !dbg !2776
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1, !dbg !2777
    #dbg_value(i64 %indvars.iv.next.i, !2763, !DIExpression(), !2765)
  %28 = load ptr, ptr %arrayidx.us.i, align 8, !dbg !2773
  %arrayidx5.us.i.1 = getelementptr inbounds i16, ptr %28, i64 %indvars.iv.next.i, !dbg !2773
  %29 = load i16, ptr %arrayidx5.us.i.1, align 2, !dbg !2773
  %30 = load ptr, ptr %arrayidx7.us.i, align 8, !dbg !2775
  %arrayidx9.us.i.1 = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next.i, !dbg !2775
  store i16 %29, ptr %arrayidx9.us.i.1, align 2, !dbg !2776
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2, !dbg !2777
    #dbg_value(i64 %indvars.iv.next.i.1, !2763, !DIExpression(), !2765)
  %31 = load ptr, ptr %arrayidx.us.i, align 8, !dbg !2773
  %arrayidx5.us.i.2 = getelementptr inbounds i16, ptr %31, i64 %indvars.iv.next.i.1, !dbg !2773
  %32 = load i16, ptr %arrayidx5.us.i.2, align 2, !dbg !2773
  %33 = load ptr, ptr %arrayidx7.us.i, align 8, !dbg !2775
  %arrayidx9.us.i.2 = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.i.1, !dbg !2775
  store i16 %32, ptr %arrayidx9.us.i.2, align 2, !dbg !2776
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3, !dbg !2777
    #dbg_value(i64 %indvars.iv.next.i.2, !2763, !DIExpression(), !2765)
  %34 = load ptr, ptr %arrayidx.us.i, align 8, !dbg !2773
  %arrayidx5.us.i.3 = getelementptr inbounds i16, ptr %34, i64 %indvars.iv.next.i.2, !dbg !2773
  %35 = load i16, ptr %arrayidx5.us.i.3, align 2, !dbg !2773
  %36 = load ptr, ptr %arrayidx7.us.i, align 8, !dbg !2775
  %arrayidx9.us.i.3 = getelementptr inbounds i16, ptr %36, i64 %indvars.iv.next.i.2, !dbg !2775
  store i16 %35, ptr %arrayidx9.us.i.3, align 2, !dbg !2776
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4, !dbg !2777
    #dbg_value(i64 %indvars.iv.next.i.3, !2763, !DIExpression(), !2765)
  %niter.next.3 = add i64 %niter, 4, !dbg !2771
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !2771
  br i1 %niter.ncmp.3, label %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, label %for.body3.us.i, !dbg !2771, !llvm.loop !2778

for.cond1.for.inc10_crit_edge.us.i.unr-lcssa:     ; preds = %for.body3.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i.3, %for.body3.us.i ]
  br i1 %lcmp.mod.not, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.epil, !dbg !2771

for.body3.us.i.epil:                              ; preds = %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa, %for.body3.us.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body3.us.i.epil ], [ %indvars.iv.i.unr, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body3.us.i.epil ], [ 0, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.i.epil, !2763, !DIExpression(), !2765)
  %37 = load ptr, ptr %arrayidx.us.i, align 8, !dbg !2773
  %arrayidx5.us.i.epil = getelementptr inbounds i16, ptr %37, i64 %indvars.iv.i.epil, !dbg !2773
  %38 = load i16, ptr %arrayidx5.us.i.epil, align 2, !dbg !2773
  %39 = load ptr, ptr %arrayidx7.us.i, align 8, !dbg !2775
  %arrayidx9.us.i.epil = getelementptr inbounds i16, ptr %39, i64 %indvars.iv.i.epil, !dbg !2775
  store i16 %38, ptr %arrayidx9.us.i.epil, align 2, !dbg !2776
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1, !dbg !2777
    #dbg_value(i64 %indvars.iv.next.i.epil, !2763, !DIExpression(), !2765)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2771
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !2771
  br i1 %epil.iter.cmp.not, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.epil, !dbg !2771, !llvm.loop !2780

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i.epil, %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1, !dbg !2782
    #dbg_value(i64 %indvars.iv.next77.i, !2764, !DIExpression(), !2765)
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i, !dbg !2767
  br i1 %exitcond80.not.i, label %for.cond13.preheader.i, label %for.cond1.preheader.us.i, !dbg !2770, !llvm.loop !2783

for.cond13.preheader.i:                           ; preds = %for.cond1.for.inc10_crit_edge.us.i, %if.then
    #dbg_value(i32 0, !2764, !DIExpression(), !2765)
  %cmp1471.i = icmp sgt i32 %23, 0, !dbg !2785
  br i1 %cmp1471.i, label %for.cond16.preheader.lr.ph.i, label %if.endthread-pre-split, !dbg !2788

for.cond16.preheader.lr.ph.i:                     ; preds = %for.cond13.preheader.i
  %cmp1769.i = icmp sgt i32 %22, 0
  %arrayidx29.i = getelementptr inbounds i8, ptr %17, i64 8
  %arrayidx34.i = getelementptr inbounds i8, ptr %19, i64 8
  br i1 %cmp1769.i, label %for.cond16.preheader.us.preheader.i, label %if.endthread-pre-split

for.cond16.preheader.us.preheader.i:              ; preds = %for.cond16.preheader.lr.ph.i
  %wide.trip.count89.i = zext nneg i32 %23 to i64, !dbg !2785
  %wide.trip.count84.i = zext nneg i32 %22 to i64
  br label %for.cond16.preheader.us.i, !dbg !2788

for.cond16.preheader.us.i:                        ; preds = %for.cond16.for.inc42_crit_edge.us.i, %for.cond16.preheader.us.preheader.i
  %indvars.iv86.i = phi i64 [ 0, %for.cond16.preheader.us.preheader.i ], [ %indvars.iv.next87.i, %for.cond16.for.inc42_crit_edge.us.i ]
    #dbg_value(i64 %indvars.iv86.i, !2764, !DIExpression(), !2765)
    #dbg_value(i32 0, !2763, !DIExpression(), !2765)
  br label %for.body18.us.i, !dbg !2789

for.body18.us.i:                                  ; preds = %for.body18.us.i, %for.cond16.preheader.us.i
  %indvars.iv81.i = phi i64 [ 0, %for.cond16.preheader.us.i ], [ %indvars.iv.next82.i, %for.body18.us.i ]
    #dbg_value(i64 %indvars.iv81.i, !2763, !DIExpression(), !2765)
  %40 = load ptr, ptr %17, align 8, !dbg !2791
  %arrayidx21.us.i = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv86.i, !dbg !2791
  %41 = load ptr, ptr %arrayidx21.us.i, align 8, !dbg !2791
  %arrayidx23.us.i = getelementptr inbounds i16, ptr %41, i64 %indvars.iv81.i, !dbg !2791
  %42 = load i16, ptr %arrayidx23.us.i, align 2, !dbg !2791
  %43 = load ptr, ptr %19, align 8, !dbg !2794
  %arrayidx26.us.i = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv86.i, !dbg !2794
  %44 = load ptr, ptr %arrayidx26.us.i, align 8, !dbg !2794
  %arrayidx28.us.i = getelementptr inbounds i16, ptr %44, i64 %indvars.iv81.i, !dbg !2794
  store i16 %42, ptr %arrayidx28.us.i, align 2, !dbg !2795
  %45 = load ptr, ptr %arrayidx29.i, align 8, !dbg !2796
  %arrayidx31.us.i = getelementptr inbounds ptr, ptr %45, i64 %indvars.iv86.i, !dbg !2796
  %46 = load ptr, ptr %arrayidx31.us.i, align 8, !dbg !2796
  %arrayidx33.us.i = getelementptr inbounds i16, ptr %46, i64 %indvars.iv81.i, !dbg !2796
  %47 = load i16, ptr %arrayidx33.us.i, align 2, !dbg !2796
  %48 = load ptr, ptr %arrayidx34.i, align 8, !dbg !2797
  %arrayidx36.us.i = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv86.i, !dbg !2797
  %49 = load ptr, ptr %arrayidx36.us.i, align 8, !dbg !2797
  %arrayidx38.us.i = getelementptr inbounds i16, ptr %49, i64 %indvars.iv81.i, !dbg !2797
  store i16 %47, ptr %arrayidx38.us.i, align 2, !dbg !2798
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1, !dbg !2799
    #dbg_value(i64 %indvars.iv.next82.i, !2763, !DIExpression(), !2765)
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count84.i, !dbg !2800
  br i1 %exitcond85.not.i, label %for.cond16.for.inc42_crit_edge.us.i, label %for.body18.us.i, !dbg !2789, !llvm.loop !2801

for.cond16.for.inc42_crit_edge.us.i:              ; preds = %for.body18.us.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1, !dbg !2803
    #dbg_value(i64 %indvars.iv.next87.i, !2764, !DIExpression(), !2765)
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next87.i, %wide.trip.count89.i, !dbg !2785
  br i1 %exitcond90.not.i, label %if.endthread-pre-split, label %for.cond16.preheader.us.i, !dbg !2788, !llvm.loop !2804

if.endthread-pre-split:                           ; preds = %for.cond16.for.inc42_crit_edge.us.i, %for.cond13.preheader.i, %for.cond16.preheader.lr.ph.i
  %.pr = load i32, ptr %conceal_mode, align 8, !dbg !2806
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %if.endthread-pre-split, %entry
  %50 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %13, %entry ], !dbg !2806
  %cmp22 = icmp eq i32 %50, 2, !dbg !2808
  br i1 %cmp22, label %if.then23, label %if.end214, !dbg !2809

if.then23:                                        ; preds = %if.end
  %51 = load i32, ptr %chroma_format_idc, align 4, !dbg !2810
  %cmp25.not = icmp eq i32 %51, 0, !dbg !2813
  br i1 %cmp25.not, label %if.else, label %if.then26, !dbg !2814

if.then26:                                        ; preds = %if.then23
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108, !dbg !2815
  %52 = load i32, ptr %mb_cr_size_x, align 4, !dbg !2815
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112, !dbg !2817
  %53 = load i32, ptr %mb_cr_size_y, align 8, !dbg !2817
  %mul = mul nsw i32 %53, %52, !dbg !2818
  %div = sdiv i32 %mul, 8, !dbg !2819
  %add = add nsw i32 %div, 16, !dbg !2820
  %conv = sext i32 %add to i64, !dbg !2821
  %mul28 = shl nsw i64 %conv, 1, !dbg !2822
  %call = tail call noalias ptr @malloc(i64 noundef %mul28) #19, !dbg !2823
    #dbg_value(ptr %call, !2670, !DIExpression(), !2685)
  br label %if.end30, !dbg !2824

if.else:                                          ; preds = %if.then23
  %call29 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19, !dbg !2825
    #dbg_value(ptr %call29, !2670, !DIExpression(), !2685)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %storeYUV.0 = phi ptr [ %call, %if.then26 ], [ %call29, %if.else ], !dbg !2827
    #dbg_value(ptr %storeYUV.0, !2670, !DIExpression(), !2685)
  %erc_img = getelementptr inbounds i8, ptr %p_Vid, i64 856520, !dbg !2828
  store ptr %p_Vid, ptr %erc_img, align 8, !dbg !2829
  %PicWidthInMbs31 = getelementptr inbounds i8, ptr %src, i64 104, !dbg !2830
  %54 = load i32, ptr %PicWidthInMbs31, align 8, !dbg !2830
  %PicWidthInMbs32 = getelementptr inbounds i8, ptr %dst, i64 104, !dbg !2831
  store i32 %54, ptr %PicWidthInMbs32, align 8, !dbg !2832
  %55 = load i32, ptr %PicSizeInMbs, align 4, !dbg !2833
  store i32 %55, ptr %PicSizeInMbs2, align 4, !dbg !2834
    #dbg_value(i32 %54, !2675, !DIExpression(), !2685)
  %div38 = udiv i32 %55, %54, !dbg !2835
    #dbg_value(i32 %div38, !2674, !DIExpression(), !2685)
  %56 = load i32, ptr %conceal_slice_type, align 8, !dbg !2836
  %cmp40 = icmp eq i32 %56, 1, !dbg !2837
  %cond = select i1 %cmp40, i32 2, i32 1, !dbg !2838
    #dbg_value(i32 %cond, !2681, !DIExpression(), !2685)
  br i1 %cmp40, label %if.then45, label %if.else47, !dbg !2839

if.then45:                                        ; preds = %if.end30
  %p_Dpb = getelementptr inbounds i8, ptr %p_Vid, i64 856656, !dbg !2840
  %57 = load ptr, ptr %p_Dpb, align 8, !dbg !2840
  %58 = load i32, ptr %slice_type3, align 8, !dbg !2842
  %ppSliceList = getelementptr inbounds i8, ptr %p_Vid, i64 848736, !dbg !2843
  %59 = load ptr, ptr %ppSliceList, align 8, !dbg !2843
  %60 = load ptr, ptr %59, align 8, !dbg !2844
  %structure = getelementptr inbounds i8, ptr %60, i64 184, !dbg !2845
  %61 = load i32, ptr %structure, align 8, !dbg !2845
  tail call void @init_lists_for_non_reference_loss(ptr noundef %57, i32 noundef %58, i32 noundef %61), !dbg !2846
  br label %if.end50, !dbg !2846

if.else47:                                        ; preds = %if.end30
  %ppSliceList48 = getelementptr inbounds i8, ptr %p_Vid, i64 848736, !dbg !2847
  %62 = load ptr, ptr %ppSliceList48, align 8, !dbg !2847
  %63 = load ptr, ptr %62, align 8, !dbg !2848
  tail call void @init_lists(ptr noundef %63) #18, !dbg !2849
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then45
    #dbg_value(i32 4, !2668, !DIExpression(), !2685)
    #dbg_value(i32 0, !2666, !DIExpression(), !2685)
  %mul51 = shl nsw i32 %div38, 2
    #dbg_value(i32 0, !2683, !DIExpression(), !2685)
  %cmp52362 = icmp sgt i32 %div38, 0, !dbg !2850
  br i1 %cmp52362, label %for.body.lr.ph, label %for.end213, !dbg !2853

for.body.lr.ph:                                   ; preds = %if.end50
  %cmp57359 = icmp sgt i32 %54, 0
  %mv_info = getelementptr inbounds i8, ptr %src, i64 152
  %mv_info95 = getelementptr inbounds i8, ptr %dst, i64 152
  %arrayidx72.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 2
  %arrayidx72.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 4
  %arrayidx72.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 6
  %arrayidx72.1419.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 8
  %arrayidx72.1.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 10
  %arrayidx72.2.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 12
  %arrayidx72.3.1.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 14
  %arrayidx72.2421.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 16
  %arrayidx72.1.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 18
  %arrayidx72.2.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 20
  %arrayidx72.3.2.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 22
  %arrayidx72.3423.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 24
  %arrayidx72.1.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 26
  %arrayidx72.2.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 28
  %arrayidx72.3.3.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 30
  %add.ptr.i = getelementptr inbounds i8, ptr %storeYUV.0, i64 32
  %imgY144 = getelementptr inbounds i8, ptr %dst, i64 128
  %imgUV181 = getelementptr inbounds i8, ptr %dst, i64 136
  br i1 %cmp57359, label %for.body.us.preheader, label %for.end213

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %mul56 = shl i32 %54, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %mul56, i32 1), !dbg !2853
  %64 = zext nneg i32 %mul51 to i64, !dbg !2853
  %wide.trip.count = zext nneg i32 %smax to i64
  %arrayidx180.us.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 34
  %arrayidx180.us.1387 = getelementptr inbounds i8, ptr %storeYUV.0, i64 36
  %arrayidx180.us.1.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 38
  %add.ptr203.us = getelementptr inbounds i8, ptr %storeYUV.0, i64 40
  %arrayidx180.us.1.1395 = getelementptr inbounds i8, ptr %storeYUV.0, i64 42
  %arrayidx180.us.1387.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 44
  %arrayidx180.us.1.1.1 = getelementptr inbounds i8, ptr %storeYUV.0, i64 46
  br label %for.body.us, !dbg !2853

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond55.for.inc211_crit_edge.us
  %indvars.iv404 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next405, %for.cond55.for.inc211_crit_edge.us ]
  %current_mb_nr.0364.us = phi i32 [ 0, %for.body.us.preheader ], [ %current_mb_nr.2.us, %for.cond55.for.inc211_crit_edge.us ]
    #dbg_value(i64 %indvars.iv404, !2666, !DIExpression(), !2685)
    #dbg_value(i64 %indvars.iv404, !2679, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2685)
    #dbg_value(i32 %current_mb_nr.0364.us, !2683, !DIExpression(), !2685)
    #dbg_value(i32 0, !2671, !DIExpression(), !2685)
  %65 = trunc nuw nsw i64 %indvars.iv404 to i32
  %conv5.i.us = trunc i64 %indvars.iv404 to i16
  %sext.i.us = shl i32 %65, 16
  %mul.i.us = ashr exact i32 %sext.i.us, 14
  %conv13.i.us = ashr exact i32 %sext.i.us, 16
  %66 = shl nuw nsw i64 %indvars.iv404, 1
  %67 = shl i64 %indvars.iv404, 2, !dbg !2854
  %68 = and i64 %67, 4294967292, !dbg !2854
  %indvars.iv404.tr = trunc i64 %indvars.iv404 to i32
  %69 = shl i32 %indvars.iv404.tr, 4
  %70 = or disjoint i64 %68, 1
  %71 = or disjoint i64 %68, 2
  %72 = or disjoint i64 %68, 3
  %73 = or disjoint i64 %66, 1
  br label %for.body59.us, !dbg !2854

for.body59.us:                                    ; preds = %for.body.us, %for.inc208.us
  %indvars.iv = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next, %for.inc208.us ]
  %current_mb_nr.1361.us = phi i32 [ %current_mb_nr.0364.us, %for.body.us ], [ %current_mb_nr.2.us, %for.inc208.us ]
    #dbg_value(i32 %current_mb_nr.1361.us, !2683, !DIExpression(), !2685)
    #dbg_value(i64 %indvars.iv, !2671, !DIExpression(), !2685)
    #dbg_value(i64 %indvars.iv, !2680, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2685)
  %74 = load ptr, ptr %mv_info, align 8, !dbg !2857
  %arrayidx61.us = getelementptr inbounds ptr, ptr %74, i64 %indvars.iv404, !dbg !2860
  %75 = load ptr, ptr %arrayidx61.us, align 8, !dbg !2860
  %mv64.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 1, !dbg !2861
  %76 = load i16, ptr %mv64.us, align 8, !dbg !2862
  %conv66.us = sext i16 %76 to i32, !dbg !2860
  %div67.us = sdiv i32 %conv66.us, %cond, !dbg !2863
    #dbg_value(i32 %div67.us, !2667, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2685)
  %mv_y.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 1, i64 0, i32 1, !dbg !2864
  %77 = load i16, ptr %mv_y.us, align 2, !dbg !2864
  %conv76.us = sext i16 %77 to i32, !dbg !2865
  %div77.us = sdiv i32 %conv76.us, %cond, !dbg !2866
    #dbg_value(i32 %div77.us, !2667, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2685)
  %ref_idx.us = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %indvars.iv, i32 2, !dbg !2867
  %78 = load i8, ptr %ref_idx.us, align 8, !dbg !2868
    #dbg_value(i8 %narrow.us, !2667, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !2685)
  %narrow.us = call i8 @llvm.smax.i8(i8 %78, i8 0), !dbg !2869
  %conv94.us = trunc nsw i32 %div67.us to i16, !dbg !2870
  %79 = load ptr, ptr %mv_info95, align 8, !dbg !2871
  %arrayidx97.us = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv404, !dbg !2872
  %80 = load ptr, ptr %arrayidx97.us, align 8, !dbg !2872
  %mv100.us = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %indvars.iv, i32 1, !dbg !2873
  store i16 %conv94.us, ptr %mv100.us, align 8, !dbg !2874
  %conv104.us = trunc nsw i32 %div77.us to i16, !dbg !2875
  %81 = load ptr, ptr %mv_info95, align 8, !dbg !2876
  %arrayidx107.us = getelementptr inbounds ptr, ptr %81, i64 %indvars.iv404, !dbg !2877
  %82 = load ptr, ptr %arrayidx107.us, align 8, !dbg !2877
  %mv_y112.us = getelementptr inbounds %struct.pic_motion_params, ptr %82, i64 %indvars.iv, i32 1, i64 0, i32 1, !dbg !2878
  store i16 %conv104.us, ptr %mv_y112.us, align 2, !dbg !2879
  %83 = load ptr, ptr %mv_info95, align 8, !dbg !2880
  %arrayidx117.us = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv404, !dbg !2881
  %84 = load ptr, ptr %arrayidx117.us, align 8, !dbg !2881
  %ref_idx120.us = getelementptr inbounds %struct.pic_motion_params, ptr %84, i64 %indvars.iv, i32 2, !dbg !2882
  store i8 %narrow.us, ptr %ref_idx120.us, align 8, !dbg !2883
    #dbg_value(i64 %indvars.iv, !2673, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2685)
    #dbg_value(i64 %indvars.iv404, !2672, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2685)
  %85 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2884
  %86 = or i32 %85, %65, !dbg !2884
  %87 = and i32 %86, 3, !dbg !2884
  %or.cond.us = icmp eq i32 %87, 0, !dbg !2884
  %inc.us = zext i1 %or.cond.us to i32, !dbg !2884
  %current_mb_nr.2.us = add nsw i32 %current_mb_nr.1361.us, %inc.us, !dbg !2884
    #dbg_value(i32 %current_mb_nr.2.us, !2683, !DIExpression(), !2685)
  %88 = load ptr, ptr %erc_img, align 8, !dbg !2886
    #dbg_assign(i1 undef, !2887, !DIExpression(), !2684, ptr %tmp_block.i, !DIExpression(), !2936)
    #dbg_value(ptr %88, !2892, !DIExpression(), !2936)
    #dbg_value(ptr undef, !2893, !DIExpression(), !2936)
    #dbg_value(i64 %indvars.iv, !2894, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2936)
    #dbg_value(i64 %indvars.iv404, !2895, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2936)
    #dbg_value(ptr %storeYUV.0, !2896, !DIExpression(), !2936)
    #dbg_value(i32 0, !2897, !DIExpression(), !2936)
    #dbg_value(i32 %current_mb_nr.2.us, !2898, !DIExpression(), !2936)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_block.i) #18, !dbg !2938
    #dbg_value(i32 0, !2899, !DIExpression(), !2936)
    #dbg_value(i32 0, !2900, !DIExpression(), !2936)
    #dbg_value(i32 0, !2901, !DIExpression(), !2936)
    #dbg_value(i32 0, !2902, !DIExpression(), !2936)
    #dbg_value(i32 0, !2903, !DIExpression(), !2936)
    #dbg_value(i32 0, !2904, !DIExpression(), !2936)
    #dbg_value(i32 0, !2905, !DIExpression(), !2936)
    #dbg_value(i32 0, !2906, !DIExpression(), !2936)
    #dbg_value(i32 0, !2907, !DIExpression(), !2936)
    #dbg_value(i32 0, !2909, !DIExpression(), !2936)
    #dbg_value(i32 0, !2910, !DIExpression(), !2936)
  %dec_picture1.i.us = getelementptr inbounds i8, ptr %88, i64 856456, !dbg !2939
  %89 = load ptr, ptr %dec_picture1.i.us, align 8, !dbg !2939
    #dbg_value(ptr %89, !2913, !DIExpression(), !2936)
    #dbg_value(ptr %storeYUV.0, !2914, !DIExpression(), !2936)
  %chroma_format_idc.i.us = getelementptr inbounds i8, ptr %89, i64 268, !dbg !2940
    #dbg_value(i32 poison, !2931, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2936)
    #dbg_value(i8 %narrow.us, !2932, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2936)
    #dbg_value(i32 %current_mb_nr.2.us, !2933, !DIExpression(), !2936)
  %mb_data.i.us = getelementptr inbounds i8, ptr %88, i64 848888, !dbg !2941
  %90 = load ptr, ptr %mb_data.i.us, align 8, !dbg !2941
  %idxprom.i.us = sext i32 %current_mb_nr.2.us to i64, !dbg !2942
  %arrayidx2.i.us = getelementptr inbounds %struct.macroblock, ptr %90, i64 %idxprom.i.us, !dbg !2942
    #dbg_value(ptr %arrayidx2.i.us, !2934, !DIExpression(), !2936)
  %91 = load ptr, ptr %arrayidx2.i.us, align 8, !dbg !2943
    #dbg_value(ptr %91, !2935, !DIExpression(), !2936)
  %call.i.us = call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block.i, i32 noundef 16, i32 noundef 16) #18, !dbg !2944
  %conv.i.us = trunc i64 %indvars.iv to i16, !dbg !2945
  %mb.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 28, !dbg !2946
  store i16 %conv.i.us, ptr %mb.i.us, align 4, !dbg !2947
  %y7.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 30, !dbg !2948
  store i16 %conv5.i.us, ptr %y7.i.us, align 2, !dbg !2949
  %block_y.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 36, !dbg !2950
  store i32 %mul.i.us, ptr %block_y.i.us, align 4, !dbg !2951
  %mb_cr_size_y.i.us = getelementptr inbounds i8, ptr %88, i64 849112, !dbg !2952
  %92 = load i32, ptr %mb_cr_size_y.i.us, align 8, !dbg !2952
  %mul14.i.us = mul nsw i32 %92, %conv13.i.us, !dbg !2953
  %div15.i.us = sdiv i32 %mul14.i.us, 4, !dbg !2954
  %pix_c_y.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 56, !dbg !2955
  store i32 %div15.i.us, ptr %pix_c_y.i.us, align 8, !dbg !2956
  %sext393.i.us = shl i32 %85, 16, !dbg !2957
  %conv18.i.us = ashr exact i32 %sext393.i.us, 16, !dbg !2957
  %mul19.i.us = ashr exact i32 %sext393.i.us, 14, !dbg !2958
  %block_x.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 32, !dbg !2959
  store i32 %mul19.i.us, ptr %block_x.i.us, align 8, !dbg !2960
  %mb_cr_size_x.i.us = getelementptr inbounds i8, ptr %88, i64 849108, !dbg !2961
  %93 = load i32, ptr %mb_cr_size_x.i.us, align 4, !dbg !2961
  %mul23.i.us = mul nsw i32 %93, %conv18.i.us, !dbg !2962
  %div24.i.us = sdiv i32 %mul23.i.us, 4, !dbg !2963
  %pix_c_x.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 52, !dbg !2964
  store i32 %div24.i.us, ptr %pix_c_x.i.us, align 4, !dbg !2965
    #dbg_value(i32 4, !2923, !DIExpression(), !2936)
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !2966
  %94 = shl i32 %indvars.iv.tr, 4, !dbg !2966
  %add.i.us = add nsw i32 %div67.us, %94, !dbg !2966
    #dbg_value(i32 %add.i.us, !2909, !DIExpression(), !2936)
  %add29.i.us = add nsw i32 %div77.us, %69, !dbg !2967
    #dbg_value(i32 %add29.i.us, !2910, !DIExpression(), !2936)
  %listX.i.us = getelementptr inbounds i8, ptr %91, i64 264, !dbg !2968
  %95 = load ptr, ptr %listX.i.us, align 8, !dbg !2969
  %idxprom32.i.us = zext nneg i8 %narrow.us to i64, !dbg !2969
  %arrayidx33.i.us = getelementptr inbounds ptr, ptr %95, i64 %idxprom32.i.us, !dbg !2969
  %96 = load ptr, ptr %arrayidx33.i.us, align 8, !dbg !2969
  %97 = load ptr, ptr %tmp_block.i, align 8, !dbg !2970
  %iLumaStride.i.us = getelementptr inbounds i8, ptr %89, i64 356, !dbg !2971
  %98 = load i32, ptr %iLumaStride.i.us, align 4, !dbg !2971
  %size_x_m1.i.us = getelementptr inbounds i8, ptr %89, i64 80, !dbg !2972
  %99 = load i32, ptr %size_x_m1.i.us, align 8, !dbg !2972
  %mb_field.i.us = getelementptr inbounds i8, ptr %arrayidx2.i.us, i64 384, !dbg !2973
  %100 = load i32, ptr %mb_field.i.us, align 8, !dbg !2973
  %tobool.not.i.us = icmp eq i32 %100, 0, !dbg !2974
  br i1 %tobool.not.i.us, label %cond.false.i.us, label %cond.true.i.us, !dbg !2974

cond.true.i.us:                                   ; preds = %for.body59.us
  %size_y.i.us = getelementptr inbounds i8, ptr %89, i64 68, !dbg !2975
  %101 = load i32, ptr %size_y.i.us, align 4, !dbg !2975
  %shr.i.us = ashr i32 %101, 1, !dbg !2976
  %sub34.i.us = add nsw i32 %shr.i.us, -1, !dbg !2977
  br label %cond.end.i.us, !dbg !2974

cond.false.i.us:                                  ; preds = %for.body59.us
  %size_y_m1.i.us = getelementptr inbounds i8, ptr %89, i64 84, !dbg !2978
  %102 = load i32, ptr %size_y_m1.i.us, align 4, !dbg !2978
  br label %cond.end.i.us, !dbg !2974

cond.end.i.us:                                    ; preds = %cond.false.i.us, %cond.true.i.us
  %cond.i.us = phi i32 [ %sub34.i.us, %cond.true.i.us ], [ %102, %cond.false.i.us ], !dbg !2974
  %tmp_res.i.us = getelementptr inbounds i8, ptr %91, i64 1368, !dbg !2979
  %103 = load ptr, ptr %tmp_res.i.us, align 8, !dbg !2979
  %max_pel_value_comp.i.us = getelementptr inbounds i8, ptr %88, i64 849072, !dbg !2980
  %104 = load i32, ptr %max_pel_value_comp.i.us, align 8, !dbg !2981
  %dc_pred_value_comp.i.us = getelementptr inbounds i8, ptr %88, i64 849060, !dbg !2982
  %105 = load i32, ptr %dc_pred_value_comp.i.us, align 4, !dbg !2983
  %conv37.i.us = trunc i32 %105 to i16, !dbg !2984
  call void @get_block_luma(ptr noundef %96, i32 noundef %add.i.us, i32 noundef %add29.i.us, i32 noundef 4, i32 noundef 4, ptr noundef %97, i32 noundef %98, i32 noundef %99, i32 noundef %cond.i.us, ptr noundef %103, i32 noundef %104, i16 noundef zeroext %conv37.i.us, ptr noundef nonnull %arrayidx2.i.us) #18, !dbg !2985
    #dbg_value(i32 0, !2902, !DIExpression(), !2936)
  %mb_pred.i.us = getelementptr inbounds i8, ptr %91, i64 1248
    #dbg_value(i64 0, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
  %106 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %107 = load ptr, ptr %106, align 8, !dbg !2986
  %108 = load i16, ptr %107, align 2, !dbg !2986
  %109 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %110 = load ptr, ptr %109, align 8, !dbg !2992
  %111 = load ptr, ptr %110, align 8, !dbg !2992
  store i16 %108, ptr %111, align 2, !dbg !2993
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
  %112 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %113 = load ptr, ptr %112, align 8, !dbg !2986
  %arrayidx46.1.i.us = getelementptr inbounds i8, ptr %113, i64 2, !dbg !2986
  %114 = load i16, ptr %arrayidx46.1.i.us, align 2, !dbg !2986
  %115 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %116 = load ptr, ptr %115, align 8, !dbg !2992
  %117 = load ptr, ptr %116, align 8, !dbg !2992
  %arrayidx51.1.i.us = getelementptr inbounds i8, ptr %117, i64 2, !dbg !2992
  store i16 %114, ptr %arrayidx51.1.i.us, align 2, !dbg !2993
    #dbg_value(i64 2, !2901, !DIExpression(), !2936)
  %118 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %119 = load ptr, ptr %118, align 8, !dbg !2986
  %arrayidx46.2.i.us = getelementptr inbounds i8, ptr %119, i64 4, !dbg !2986
  %120 = load i16, ptr %arrayidx46.2.i.us, align 2, !dbg !2986
  %121 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %122 = load ptr, ptr %121, align 8, !dbg !2992
  %123 = load ptr, ptr %122, align 8, !dbg !2992
  %arrayidx51.2.i.us = getelementptr inbounds i8, ptr %123, i64 4, !dbg !2992
  store i16 %120, ptr %arrayidx51.2.i.us, align 2, !dbg !2993
    #dbg_value(i64 3, !2901, !DIExpression(), !2936)
  %124 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %125 = load ptr, ptr %124, align 8, !dbg !2986
  %arrayidx46.3.i.us = getelementptr inbounds i8, ptr %125, i64 6, !dbg !2986
  %126 = load i16, ptr %arrayidx46.3.i.us, align 2, !dbg !2986
  %127 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %128 = load ptr, ptr %127, align 8, !dbg !2992
  %129 = load ptr, ptr %128, align 8, !dbg !2992
  %arrayidx51.3.i.us = getelementptr inbounds i8, ptr %129, i64 6, !dbg !2992
  store i16 %126, ptr %arrayidx51.3.i.us, align 2, !dbg !2993
    #dbg_value(i64 1, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
  %130 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.1408.i.us = getelementptr inbounds i8, ptr %130, i64 8, !dbg !2986
  %131 = load ptr, ptr %arrayidx44.1408.i.us, align 8, !dbg !2986
  %132 = load i16, ptr %131, align 2, !dbg !2986
  %133 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %134 = load ptr, ptr %133, align 8, !dbg !2992
  %arrayidx49.1409.i.us = getelementptr inbounds i8, ptr %134, i64 8, !dbg !2992
  %135 = load ptr, ptr %arrayidx49.1409.i.us, align 8, !dbg !2992
  store i16 %132, ptr %135, align 2, !dbg !2993
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
  %136 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.1.1.i.us = getelementptr inbounds i8, ptr %136, i64 8, !dbg !2986
  %137 = load ptr, ptr %arrayidx44.1.1.i.us, align 8, !dbg !2986
  %arrayidx46.1.1.i.us = getelementptr inbounds i8, ptr %137, i64 2, !dbg !2986
  %138 = load i16, ptr %arrayidx46.1.1.i.us, align 2, !dbg !2986
  %139 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %140 = load ptr, ptr %139, align 8, !dbg !2992
  %arrayidx49.1.1.i.us = getelementptr inbounds i8, ptr %140, i64 8, !dbg !2992
  %141 = load ptr, ptr %arrayidx49.1.1.i.us, align 8, !dbg !2992
  %arrayidx51.1.1.i.us = getelementptr inbounds i8, ptr %141, i64 2, !dbg !2992
  store i16 %138, ptr %arrayidx51.1.1.i.us, align 2, !dbg !2993
    #dbg_value(i64 2, !2901, !DIExpression(), !2936)
  %142 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.2.1.i.us = getelementptr inbounds i8, ptr %142, i64 8, !dbg !2986
  %143 = load ptr, ptr %arrayidx44.2.1.i.us, align 8, !dbg !2986
  %arrayidx46.2.1.i.us = getelementptr inbounds i8, ptr %143, i64 4, !dbg !2986
  %144 = load i16, ptr %arrayidx46.2.1.i.us, align 2, !dbg !2986
  %145 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %146 = load ptr, ptr %145, align 8, !dbg !2992
  %arrayidx49.2.1.i.us = getelementptr inbounds i8, ptr %146, i64 8, !dbg !2992
  %147 = load ptr, ptr %arrayidx49.2.1.i.us, align 8, !dbg !2992
  %arrayidx51.2.1.i.us = getelementptr inbounds i8, ptr %147, i64 4, !dbg !2992
  store i16 %144, ptr %arrayidx51.2.1.i.us, align 2, !dbg !2993
    #dbg_value(i64 3, !2901, !DIExpression(), !2936)
  %148 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.3.1.i.us = getelementptr inbounds i8, ptr %148, i64 8, !dbg !2986
  %149 = load ptr, ptr %arrayidx44.3.1.i.us, align 8, !dbg !2986
  %arrayidx46.3.1.i.us = getelementptr inbounds i8, ptr %149, i64 6, !dbg !2986
  %150 = load i16, ptr %arrayidx46.3.1.i.us, align 2, !dbg !2986
  %151 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %152 = load ptr, ptr %151, align 8, !dbg !2992
  %arrayidx49.3.1.i.us = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2992
  %153 = load ptr, ptr %arrayidx49.3.1.i.us, align 8, !dbg !2992
  %arrayidx51.3.1.i.us = getelementptr inbounds i8, ptr %153, i64 6, !dbg !2992
  store i16 %150, ptr %arrayidx51.3.1.i.us, align 2, !dbg !2993
    #dbg_value(i64 2, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
  %154 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.2410.i.us = getelementptr inbounds i8, ptr %154, i64 16, !dbg !2986
  %155 = load ptr, ptr %arrayidx44.2410.i.us, align 8, !dbg !2986
  %156 = load i16, ptr %155, align 2, !dbg !2986
  %157 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %158 = load ptr, ptr %157, align 8, !dbg !2992
  %arrayidx49.2411.i.us = getelementptr inbounds i8, ptr %158, i64 16, !dbg !2992
  %159 = load ptr, ptr %arrayidx49.2411.i.us, align 8, !dbg !2992
  store i16 %156, ptr %159, align 2, !dbg !2993
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
  %160 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.1.2.i.us = getelementptr inbounds i8, ptr %160, i64 16, !dbg !2986
  %161 = load ptr, ptr %arrayidx44.1.2.i.us, align 8, !dbg !2986
  %arrayidx46.1.2.i.us = getelementptr inbounds i8, ptr %161, i64 2, !dbg !2986
  %162 = load i16, ptr %arrayidx46.1.2.i.us, align 2, !dbg !2986
  %163 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %164 = load ptr, ptr %163, align 8, !dbg !2992
  %arrayidx49.1.2.i.us = getelementptr inbounds i8, ptr %164, i64 16, !dbg !2992
  %165 = load ptr, ptr %arrayidx49.1.2.i.us, align 8, !dbg !2992
  %arrayidx51.1.2.i.us = getelementptr inbounds i8, ptr %165, i64 2, !dbg !2992
  store i16 %162, ptr %arrayidx51.1.2.i.us, align 2, !dbg !2993
    #dbg_value(i64 2, !2901, !DIExpression(), !2936)
  %166 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.2.2.i.us = getelementptr inbounds i8, ptr %166, i64 16, !dbg !2986
  %167 = load ptr, ptr %arrayidx44.2.2.i.us, align 8, !dbg !2986
  %arrayidx46.2.2.i.us = getelementptr inbounds i8, ptr %167, i64 4, !dbg !2986
  %168 = load i16, ptr %arrayidx46.2.2.i.us, align 2, !dbg !2986
  %169 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %170 = load ptr, ptr %169, align 8, !dbg !2992
  %arrayidx49.2.2.i.us = getelementptr inbounds i8, ptr %170, i64 16, !dbg !2992
  %171 = load ptr, ptr %arrayidx49.2.2.i.us, align 8, !dbg !2992
  %arrayidx51.2.2.i.us = getelementptr inbounds i8, ptr %171, i64 4, !dbg !2992
  store i16 %168, ptr %arrayidx51.2.2.i.us, align 2, !dbg !2993
    #dbg_value(i64 3, !2901, !DIExpression(), !2936)
  %172 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.3.2.i.us = getelementptr inbounds i8, ptr %172, i64 16, !dbg !2986
  %173 = load ptr, ptr %arrayidx44.3.2.i.us, align 8, !dbg !2986
  %arrayidx46.3.2.i.us = getelementptr inbounds i8, ptr %173, i64 6, !dbg !2986
  %174 = load i16, ptr %arrayidx46.3.2.i.us, align 2, !dbg !2986
  %175 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %176 = load ptr, ptr %175, align 8, !dbg !2992
  %arrayidx49.3.2.i.us = getelementptr inbounds i8, ptr %176, i64 16, !dbg !2992
  %177 = load ptr, ptr %arrayidx49.3.2.i.us, align 8, !dbg !2992
  %arrayidx51.3.2.i.us = getelementptr inbounds i8, ptr %177, i64 6, !dbg !2992
  store i16 %174, ptr %arrayidx51.3.2.i.us, align 2, !dbg !2993
    #dbg_value(i64 3, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
  %178 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.3412.i.us = getelementptr inbounds i8, ptr %178, i64 24, !dbg !2986
  %179 = load ptr, ptr %arrayidx44.3412.i.us, align 8, !dbg !2986
  %180 = load i16, ptr %179, align 2, !dbg !2986
  %181 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %182 = load ptr, ptr %181, align 8, !dbg !2992
  %arrayidx49.3413.i.us = getelementptr inbounds i8, ptr %182, i64 24, !dbg !2992
  %183 = load ptr, ptr %arrayidx49.3413.i.us, align 8, !dbg !2992
  store i16 %180, ptr %183, align 2, !dbg !2993
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
  %184 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.1.3.i.us = getelementptr inbounds i8, ptr %184, i64 24, !dbg !2986
  %185 = load ptr, ptr %arrayidx44.1.3.i.us, align 8, !dbg !2986
  %arrayidx46.1.3.i.us = getelementptr inbounds i8, ptr %185, i64 2, !dbg !2986
  %186 = load i16, ptr %arrayidx46.1.3.i.us, align 2, !dbg !2986
  %187 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %188 = load ptr, ptr %187, align 8, !dbg !2992
  %arrayidx49.1.3.i.us = getelementptr inbounds i8, ptr %188, i64 24, !dbg !2992
  %189 = load ptr, ptr %arrayidx49.1.3.i.us, align 8, !dbg !2992
  %arrayidx51.1.3.i.us = getelementptr inbounds i8, ptr %189, i64 2, !dbg !2992
  store i16 %186, ptr %arrayidx51.1.3.i.us, align 2, !dbg !2993
    #dbg_value(i64 2, !2901, !DIExpression(), !2936)
  %190 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.2.3.i.us = getelementptr inbounds i8, ptr %190, i64 24, !dbg !2986
  %191 = load ptr, ptr %arrayidx44.2.3.i.us, align 8, !dbg !2986
  %arrayidx46.2.3.i.us = getelementptr inbounds i8, ptr %191, i64 4, !dbg !2986
  %192 = load i16, ptr %arrayidx46.2.3.i.us, align 2, !dbg !2986
  %193 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %194 = load ptr, ptr %193, align 8, !dbg !2992
  %arrayidx49.2.3.i.us = getelementptr inbounds i8, ptr %194, i64 24, !dbg !2992
  %195 = load ptr, ptr %arrayidx49.2.3.i.us, align 8, !dbg !2992
  %arrayidx51.2.3.i.us = getelementptr inbounds i8, ptr %195, i64 4, !dbg !2992
  store i16 %192, ptr %arrayidx51.2.3.i.us, align 2, !dbg !2993
    #dbg_value(i64 3, !2901, !DIExpression(), !2936)
  %196 = load ptr, ptr %tmp_block.i, align 8, !dbg !2986
  %arrayidx44.3.3.i.us = getelementptr inbounds i8, ptr %196, i64 24, !dbg !2986
  %197 = load ptr, ptr %arrayidx44.3.3.i.us, align 8, !dbg !2986
  %arrayidx46.3.3.i.us = getelementptr inbounds i8, ptr %197, i64 6, !dbg !2986
  %198 = load i16, ptr %arrayidx46.3.3.i.us, align 2, !dbg !2986
  %199 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2991
  %200 = load ptr, ptr %199, align 8, !dbg !2992
  %arrayidx49.3.3.i.us = getelementptr inbounds i8, ptr %200, i64 24, !dbg !2992
  %201 = load ptr, ptr %arrayidx49.3.3.i.us, align 8, !dbg !2992
  %arrayidx51.3.3.i.us = getelementptr inbounds i8, ptr %201, i64 6, !dbg !2992
  store i16 %198, ptr %arrayidx51.3.3.i.us, align 2, !dbg !2993
    #dbg_value(i64 4, !2901, !DIExpression(), !2936)
    #dbg_value(i64 4, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %202 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !2994
  %203 = load ptr, ptr %202, align 8, !dbg !3001
  %204 = load ptr, ptr %203, align 8, !dbg !3001
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
    #dbg_value(i64 2, !2899, !DIExpression(), !2936)
    #dbg_value(i64 3, !2899, !DIExpression(), !2936)
  %205 = load <4 x i16>, ptr %204, align 2, !dbg !3001
    #dbg_value(i64 1, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %arrayidx66.1418.i.us = getelementptr inbounds i8, ptr %203, i64 8, !dbg !3001
  %206 = load ptr, ptr %arrayidx66.1418.i.us, align 8, !dbg !3001
  %207 = load i16, ptr %206, align 2, !dbg !3001
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
  %arrayidx68.1.1.i.us = getelementptr inbounds i8, ptr %206, i64 2, !dbg !3001
  %208 = load i16, ptr %arrayidx68.1.1.i.us, align 2, !dbg !3001
    #dbg_value(i64 2, !2899, !DIExpression(), !2936)
  %arrayidx68.2.1.i.us = getelementptr inbounds i8, ptr %206, i64 4, !dbg !3001
  %209 = load i16, ptr %arrayidx68.2.1.i.us, align 2, !dbg !3001
    #dbg_value(i64 3, !2899, !DIExpression(), !2936)
  %arrayidx68.3.1.i.us = getelementptr inbounds i8, ptr %206, i64 6, !dbg !3001
  %210 = load i16, ptr %arrayidx68.3.1.i.us, align 2, !dbg !3001
  %211 = shufflevector <4 x i16> %205, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !3002
  %212 = insertelement <8 x i16> %211, i16 %207, i64 4, !dbg !3002
  %213 = insertelement <8 x i16> %212, i16 %208, i64 5, !dbg !3002
  %214 = insertelement <8 x i16> %213, i16 %209, i64 6, !dbg !3002
  %215 = insertelement <8 x i16> %214, i16 %210, i64 7, !dbg !3002
  store <8 x i16> %215, ptr %storeYUV.0, align 2, !dbg !3002
    #dbg_value(i64 2, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %arrayidx66.2420.i.us = getelementptr inbounds i8, ptr %203, i64 16, !dbg !3001
  %216 = load ptr, ptr %arrayidx66.2420.i.us, align 8, !dbg !3001
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
    #dbg_value(i64 2, !2899, !DIExpression(), !2936)
    #dbg_value(i64 3, !2899, !DIExpression(), !2936)
  %217 = load <4 x i16>, ptr %216, align 2, !dbg !3001
    #dbg_value(i64 3, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %arrayidx66.3422.i.us = getelementptr inbounds i8, ptr %203, i64 24, !dbg !3001
  %218 = load ptr, ptr %arrayidx66.3422.i.us, align 8, !dbg !3001
  %219 = load i16, ptr %218, align 2, !dbg !3001
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
  %arrayidx68.1.3.i.us = getelementptr inbounds i8, ptr %218, i64 2, !dbg !3001
  %220 = load i16, ptr %arrayidx68.1.3.i.us, align 2, !dbg !3001
    #dbg_value(i64 2, !2899, !DIExpression(), !2936)
  %arrayidx68.2.3.i.us = getelementptr inbounds i8, ptr %218, i64 4, !dbg !3001
  %221 = load i16, ptr %arrayidx68.2.3.i.us, align 2, !dbg !3001
    #dbg_value(i64 3, !2899, !DIExpression(), !2936)
  %arrayidx68.3.3.i.us = getelementptr inbounds i8, ptr %218, i64 6, !dbg !3001
  %222 = load i16, ptr %arrayidx68.3.3.i.us, align 2, !dbg !3001
  %223 = shufflevector <4 x i16> %217, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !3002
  %224 = insertelement <8 x i16> %223, i16 %219, i64 4, !dbg !3002
  %225 = insertelement <8 x i16> %224, i16 %220, i64 5, !dbg !3002
  %226 = insertelement <8 x i16> %225, i16 %221, i64 6, !dbg !3002
  %227 = insertelement <8 x i16> %226, i16 %222, i64 7, !dbg !3002
  store <8 x i16> %227, ptr %arrayidx72.2421.i, align 2, !dbg !3002
    #dbg_value(i64 4, !2899, !DIExpression(), !2936)
    #dbg_value(i64 4, !2900, !DIExpression(), !2936)
    #dbg_value(ptr %storeYUV.0, !2914, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !2936)
  %228 = load i32, ptr %chroma_format_idc.i.us, align 4, !dbg !3003
  %cmp80.not.i.us = icmp eq i32 %228, 0, !dbg !3005
  br i1 %cmp80.not.i.us, label %buildPredblockRegionYUV.exit.us, label %if.then.i.us, !dbg !3006

if.then.i.us:                                     ; preds = %cond.end.i.us
    #dbg_value(ptr %add.ptr.i, !2914, !DIExpression(), !2936)
  %229 = load i32, ptr %mb_cr_size_x.i.us, align 4, !dbg !3007
  %div83.i.us = sdiv i32 64, %229, !dbg !3009
    #dbg_value(i32 %div83.i.us, !2924, !DIExpression(), !2936)
  %sub84.i.us = add nsw i32 %div83.i.us, -1, !dbg !3010
    #dbg_value(i32 %sub84.i.us, !2926, !DIExpression(), !2936)
  %230 = load i32, ptr %mb_cr_size_y.i.us, align 8, !dbg !3011
  %div86.i.us = sdiv i32 64, %230, !dbg !3012
    #dbg_value(i32 %div86.i.us, !2925, !DIExpression(), !2936)
  %sub87.i.us = add nsw i32 %div86.i.us, -1, !dbg !3013
    #dbg_value(i32 %sub87.i.us, !2927, !DIExpression(), !2936)
  %mul88.i.us = mul nsw i32 %div86.i.us, %div83.i.us, !dbg !3014
    #dbg_value(i32 %mul88.i.us, !2928, !DIExpression(), !2936)
  %shr89.i.us = ashr i32 %mul88.i.us, 1, !dbg !3015
    #dbg_value(i32 %shr89.i.us, !2929, !DIExpression(), !2936)
    #dbg_value(i32 0, !2908, !DIExpression(), !2936)
  %size_x_cr.i.us = getelementptr inbounds i8, ptr %89, i64 72
  %size_y_cr.i.us = getelementptr inbounds i8, ptr %89, i64 76
  br label %for.body93.i.us, !dbg !3016

for.body93.i.us:                                  ; preds = %for.body93.i.us, %if.then.i.us
  %cmp91.i.us = phi i1 [ true, %if.then.i.us ], [ false, %for.body93.i.us ]
  %indvars.iv441.i.us = phi i64 [ 0, %if.then.i.us ], [ 1, %for.body93.i.us ]
  %pMB.0404.i.us = phi ptr [ %add.ptr.i, %if.then.i.us ], [ %add.ptr256.i.us, %for.body93.i.us ]
    #dbg_value(i64 %indvars.iv441.i.us, !2908, !DIExpression(), !2936)
    #dbg_value(ptr %pMB.0404.i.us, !2914, !DIExpression(), !2936)
    #dbg_value(i32 0, !2912, !DIExpression(), !2936)
  %231 = load i32, ptr %pix_c_y.i.us, align 8, !dbg !3018
    #dbg_value(i32 %231, !2905, !DIExpression(), !2936)
    #dbg_value(i32 0, !2911, !DIExpression(), !2936)
  %232 = load i32, ptr %pix_c_x.i.us, align 4, !dbg !3021
    #dbg_value(i32 %232, !2906, !DIExpression(), !2936)
    #dbg_value(i32 0, !2902, !DIExpression(), !2936)
  %233 = mul i32 %232, %div83.i.us, !dbg !3022
  %234 = add i32 %232, 1
  %235 = mul i32 %234, %div83.i.us
  %add127.i.us = add nsw i32 %233, %div67.us
  %div133.i.us = sdiv i32 %add127.i.us, %div83.i.us
  %cond.i.i.i.us = call noundef i32 @llvm.smax.i32(i32 %div133.i.us, i32 0)
  %add140.i.us = add nsw i32 %add127.i.us, %sub84.i.us
  %div141.i.us = sdiv i32 %add140.i.us, %div83.i.us
  %cond.i.i389.i.us = call noundef i32 @llvm.smax.i32(i32 %div141.i.us, i32 0)
  %and.i.us = and i32 %add127.i.us, %sub84.i.us
  %sub149.i.us = sub nsw i32 %div83.i.us, %and.i.us
  %add127.1.i.us = add nsw i32 %235, %div67.us
  %div133.1.i.us = sdiv i32 %add127.1.i.us, %div83.i.us
  %cond.i.i.1.i.us = call noundef i32 @llvm.smax.i32(i32 %div133.1.i.us, i32 0)
  %add140.1.i.us = add nsw i32 %add127.1.i.us, %sub84.i.us
  %div141.1.i.us = sdiv i32 %add140.1.i.us, %div83.i.us
  %cond.i.i389.1.i.us = call noundef i32 @llvm.smax.i32(i32 %div141.1.i.us, i32 0)
  %and.1.i.us = and i32 %add127.1.i.us, %sub84.i.us
  %sub149.1.i.us = sub nsw i32 %div83.i.us, %and.1.i.us
    #dbg_value(i64 0, !2902, !DIExpression(), !2936)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2907, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_div, DW_OP_div, DW_OP_stack_value), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2930, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_div, DW_OP_div, DW_OP_stack_value), !2936)
    #dbg_value(i32 %add127.i.us, !2903, !DIExpression(), !2936)
  %236 = mul i32 %231, %div86.i.us, !dbg !3029
  %add131.i.us = add nsw i32 %236, %div77.us, !dbg !3029
    #dbg_value(i32 %add131.i.us, !2904, !DIExpression(), !2936)
  %237 = load i32, ptr %size_x_cr.i.us, align 8, !dbg !3030
  %sub132.i.us = add nsw i32 %237, -1, !dbg !3031
    #dbg_value(i32 0, !3032, !DIExpression(), !3039)
    #dbg_value(i32 %sub132.i.us, !3037, !DIExpression(), !3039)
    #dbg_value(i32 %div133.i.us, !3041, !DIExpression(), !3045)
    #dbg_value(i32 0, !3044, !DIExpression(), !3045)
    #dbg_value(i32 %cond.i.i.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i.i.i.us, !2261, !DIExpression(), !3047)
    #dbg_value(i32 %sub132.i.us, !2266, !DIExpression(), !3047)
  %cond.i4.i.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i.us, i32 %sub132.i.us), !dbg !3049
    #dbg_value(i32 %cond.i4.i.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i4.i.i.us, !2915, !DIExpression(), !2936)
  %238 = load i32, ptr %size_y_cr.i.us, align 4, !dbg !3050
  %sub135.i.us = add nsw i32 %238, -1, !dbg !3051
  %div136.i.us = sdiv i32 %add131.i.us, %div86.i.us, !dbg !3052
    #dbg_value(i32 0, !3032, !DIExpression(), !3053)
    #dbg_value(i32 %sub135.i.us, !3037, !DIExpression(), !3053)
    #dbg_value(i32 %div136.i.us, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %div136.i.us, !3041, !DIExpression(), !3055)
    #dbg_value(i32 0, !3044, !DIExpression(), !3055)
  %cond.i.i387.i.us = call noundef i32 @llvm.smax.i32(i32 %div136.i.us, i32 0), !dbg !3057
    #dbg_value(i32 %cond.i.i387.i.us, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i.i387.i.us, !2261, !DIExpression(), !3058)
    #dbg_value(i32 %sub135.i.us, !2266, !DIExpression(), !3058)
  %cond.i4.i388.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us, i32 %sub135.i.us), !dbg !3060
    #dbg_value(i32 %cond.i4.i388.i.us, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i4.i388.i.us, !2916, !DIExpression(), !2936)
    #dbg_value(i32 0, !3032, !DIExpression(), !3061)
    #dbg_value(i32 %sub132.i.us, !3037, !DIExpression(), !3061)
    #dbg_value(i32 %div141.i.us, !3041, !DIExpression(), !3063)
    #dbg_value(i32 0, !3044, !DIExpression(), !3063)
    #dbg_value(i32 %cond.i.i389.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i.i389.i.us, !2261, !DIExpression(), !3065)
    #dbg_value(i32 %sub132.i.us, !2266, !DIExpression(), !3065)
  %cond.i4.i390.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.i.us, i32 %sub132.i.us), !dbg !3067
    #dbg_value(i32 %cond.i4.i390.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i4.i390.i.us, !2917, !DIExpression(), !2936)
  %add145.i.us = add nsw i32 %add131.i.us, %sub87.i.us, !dbg !3068
  %div146.i.us = sdiv i32 %add145.i.us, %div86.i.us, !dbg !3069
    #dbg_value(i32 0, !3032, !DIExpression(), !3070)
    #dbg_value(i32 %sub135.i.us, !3037, !DIExpression(), !3070)
    #dbg_value(i32 %div146.i.us, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %div146.i.us, !3041, !DIExpression(), !3072)
    #dbg_value(i32 0, !3044, !DIExpression(), !3072)
  %cond.i.i391.i.us = call noundef i32 @llvm.smax.i32(i32 %div146.i.us, i32 0), !dbg !3074
    #dbg_value(i32 %cond.i.i391.i.us, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i.i391.i.us, !2261, !DIExpression(), !3075)
    #dbg_value(i32 %sub135.i.us, !2266, !DIExpression(), !3075)
  %cond.i4.i392.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us, i32 %sub135.i.us), !dbg !3077
    #dbg_value(i32 %cond.i4.i392.i.us, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i4.i392.i.us, !2918, !DIExpression(), !2936)
    #dbg_value(i32 %and.i.us, !2919, !DIExpression(), !2936)
  %and148.i.us = and i32 %add131.i.us, %sub87.i.us, !dbg !3078
    #dbg_value(i32 %and148.i.us, !2920, !DIExpression(), !2936)
    #dbg_value(i32 %sub149.i.us, !2921, !DIExpression(), !2936)
  %sub150.i.us = sub nsw i32 %div86.i.us, %and148.i.us, !dbg !3079
    #dbg_value(i32 %sub150.i.us, !2922, !DIExpression(), !2936)
  %239 = load ptr, ptr %listX.i.us, align 8, !dbg !3080
  %arrayidx156.i.us = getelementptr inbounds ptr, ptr %239, i64 %idxprom32.i.us, !dbg !3080
  %240 = load ptr, ptr %arrayidx156.i.us, align 8, !dbg !3080
  %imgUV.i.us = getelementptr inbounds i8, ptr %240, i64 136, !dbg !3081
  %241 = load ptr, ptr %imgUV.i.us, align 8, !dbg !3081
  %arrayidx158.i.us = getelementptr inbounds ptr, ptr %241, i64 %indvars.iv441.i.us, !dbg !3080
  %242 = load ptr, ptr %arrayidx158.i.us, align 8, !dbg !3080
  %idxprom159.i.us = sext i32 %cond.i4.i388.i.us to i64, !dbg !3080
  %arrayidx160.i.us = getelementptr inbounds ptr, ptr %242, i64 %idxprom159.i.us, !dbg !3080
  %243 = load ptr, ptr %arrayidx160.i.us, align 8, !dbg !3080
  %idxprom161.i.us = sext i32 %cond.i4.i.i.us to i64, !dbg !3080
  %arrayidx162.i.us = getelementptr inbounds i16, ptr %243, i64 %idxprom161.i.us, !dbg !3080
  %244 = load i16, ptr %arrayidx162.i.us, align 2, !dbg !3080
  %conv163.i.us = zext i16 %244 to i32, !dbg !3080
  %mul164.i.us = mul i32 %sub149.i.us, %conv163.i.us, !dbg !3082
  %idxprom176.i.us = sext i32 %cond.i4.i390.i.us to i64, !dbg !3083
  %arrayidx177.i.us = getelementptr inbounds i16, ptr %243, i64 %idxprom176.i.us, !dbg !3083
  %245 = load i16, ptr %arrayidx177.i.us, align 2, !dbg !3083
  %conv178.i.us = zext i16 %245 to i32, !dbg !3083
  %mul179.i.us = mul i32 %and.i.us, %conv178.i.us, !dbg !3084
  %idxprom190.i.us = sext i32 %cond.i4.i392.i.us to i64, !dbg !3085
  %arrayidx191.i.us = getelementptr inbounds ptr, ptr %242, i64 %idxprom190.i.us, !dbg !3085
  %246 = load ptr, ptr %arrayidx191.i.us, align 8, !dbg !3085
  %arrayidx193.i.us = getelementptr inbounds i16, ptr %246, i64 %idxprom161.i.us, !dbg !3085
  %247 = load i16, ptr %arrayidx193.i.us, align 2, !dbg !3085
  %conv194.i.us = zext i16 %247 to i32, !dbg !3085
  %mul195.i.us = mul i32 %sub149.i.us, %conv194.i.us, !dbg !3086
  %arrayidx209.i.us = getelementptr inbounds i16, ptr %246, i64 %idxprom176.i.us, !dbg !3087
  %248 = load i16, ptr %arrayidx209.i.us, align 2, !dbg !3087
  %conv210.i.us = zext i16 %248 to i32, !dbg !3087
  %mul211.i.us = mul i32 %and.i.us, %conv210.i.us, !dbg !3088
  %reass.add.i.us = add i32 %mul211.i.us, %mul195.i.us
  %reass.mul.i.us = mul i32 %reass.add.i.us, %and148.i.us
  %reass.add394.i.us = add i32 %mul179.i.us, %mul164.i.us
  %reass.mul395.i.us = mul i32 %reass.add394.i.us, %sub150.i.us
  %add212.i.us = add i32 %reass.mul395.i.us, %shr89.i.us, !dbg !3089
  %add213.i.us = add i32 %add212.i.us, %reass.mul.i.us, !dbg !3090
  %div214.i.us = sdiv i32 %add213.i.us, %mul88.i.us, !dbg !3091
  %conv215.i.us = trunc i32 %div214.i.us to i16, !dbg !3092
  %249 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3093
  %250 = getelementptr inbounds ptr, ptr %249, i64 %indvars.iv441.i.us, !dbg !3094
  %arrayidx219.i.us = getelementptr inbounds i8, ptr %250, i64 8, !dbg !3094
  %251 = load ptr, ptr %arrayidx219.i.us, align 8, !dbg !3094
  %252 = load ptr, ptr %251, align 8, !dbg !3094
  store i16 %conv215.i.us, ptr %252, align 2, !dbg !3095
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
    #dbg_value(i32 %add127.1.i.us, !2903, !DIExpression(), !2936)
  %253 = load i32, ptr %size_x_cr.i.us, align 8, !dbg !3030
  %sub132.1.i.us = add nsw i32 %253, -1, !dbg !3031
    #dbg_value(i32 %sub132.1.i.us, !3037, !DIExpression(), !3039)
    #dbg_value(i32 %div133.1.i.us, !3041, !DIExpression(), !3045)
    #dbg_value(i32 %cond.i.i.1.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i.i.1.i.us, !2261, !DIExpression(), !3047)
    #dbg_value(i32 %sub132.1.i.us, !2266, !DIExpression(), !3047)
  %cond.i4.i.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i.us, i32 %sub132.1.i.us), !dbg !3049
    #dbg_value(i32 %cond.i4.i.1.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i4.i.1.i.us, !2915, !DIExpression(), !2936)
  %254 = load i32, ptr %size_y_cr.i.us, align 4, !dbg !3050
  %sub135.1.i.us = add nsw i32 %254, -1, !dbg !3051
    #dbg_value(i32 %sub135.1.i.us, !3037, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i.i387.i.us, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %sub135.1.i.us, !2266, !DIExpression(), !3058)
  %cond.i4.i388.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us, i32 %sub135.1.i.us), !dbg !3060
    #dbg_value(i32 %cond.i4.i388.1.i.us, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i4.i388.1.i.us, !2916, !DIExpression(), !2936)
    #dbg_value(i32 %sub132.1.i.us, !3037, !DIExpression(), !3061)
    #dbg_value(i32 %div141.1.i.us, !3041, !DIExpression(), !3063)
    #dbg_value(i32 %cond.i.i389.1.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i.i389.1.i.us, !2261, !DIExpression(), !3065)
    #dbg_value(i32 %sub132.1.i.us, !2266, !DIExpression(), !3065)
  %cond.i4.i390.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.1.i.us, i32 %sub132.1.i.us), !dbg !3067
    #dbg_value(i32 %cond.i4.i390.1.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i4.i390.1.i.us, !2917, !DIExpression(), !2936)
    #dbg_value(i32 %sub135.1.i.us, !3037, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i.i391.i.us, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %sub135.1.i.us, !2266, !DIExpression(), !3075)
  %cond.i4.i392.1.i.us = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us, i32 %sub135.1.i.us), !dbg !3077
    #dbg_value(i32 %cond.i4.i392.1.i.us, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i4.i392.1.i.us, !2918, !DIExpression(), !2936)
    #dbg_value(i32 %and.1.i.us, !2919, !DIExpression(), !2936)
    #dbg_value(i32 %sub149.1.i.us, !2921, !DIExpression(), !2936)
  %255 = load ptr, ptr %listX.i.us, align 8, !dbg !3080
  %arrayidx156.1.i.us = getelementptr inbounds ptr, ptr %255, i64 %idxprom32.i.us, !dbg !3080
  %256 = load ptr, ptr %arrayidx156.1.i.us, align 8, !dbg !3080
  %imgUV.1.i.us = getelementptr inbounds i8, ptr %256, i64 136, !dbg !3081
  %257 = load ptr, ptr %imgUV.1.i.us, align 8, !dbg !3081
  %arrayidx158.1.i.us = getelementptr inbounds ptr, ptr %257, i64 %indvars.iv441.i.us, !dbg !3080
  %258 = load ptr, ptr %arrayidx158.1.i.us, align 8, !dbg !3080
  %idxprom159.1.i.us = sext i32 %cond.i4.i388.1.i.us to i64, !dbg !3080
  %arrayidx160.1.i.us = getelementptr inbounds ptr, ptr %258, i64 %idxprom159.1.i.us, !dbg !3080
  %259 = load ptr, ptr %arrayidx160.1.i.us, align 8, !dbg !3080
  %idxprom161.1.i.us = sext i32 %cond.i4.i.1.i.us to i64, !dbg !3080
  %arrayidx162.1.i.us = getelementptr inbounds i16, ptr %259, i64 %idxprom161.1.i.us, !dbg !3080
  %260 = load i16, ptr %arrayidx162.1.i.us, align 2, !dbg !3080
  %conv163.1.i.us = zext i16 %260 to i32, !dbg !3080
  %mul164.1.i.us = mul i32 %sub149.1.i.us, %conv163.1.i.us, !dbg !3082
  %idxprom176.1.i.us = sext i32 %cond.i4.i390.1.i.us to i64, !dbg !3083
  %arrayidx177.1.i.us = getelementptr inbounds i16, ptr %259, i64 %idxprom176.1.i.us, !dbg !3083
  %261 = load i16, ptr %arrayidx177.1.i.us, align 2, !dbg !3083
  %conv178.1.i.us = zext i16 %261 to i32, !dbg !3083
  %mul179.1.i.us = mul i32 %and.1.i.us, %conv178.1.i.us, !dbg !3084
  %idxprom190.1.i.us = sext i32 %cond.i4.i392.1.i.us to i64, !dbg !3085
  %arrayidx191.1.i.us = getelementptr inbounds ptr, ptr %258, i64 %idxprom190.1.i.us, !dbg !3085
  %262 = load ptr, ptr %arrayidx191.1.i.us, align 8, !dbg !3085
  %arrayidx193.1.i.us = getelementptr inbounds i16, ptr %262, i64 %idxprom161.1.i.us, !dbg !3085
  %263 = load i16, ptr %arrayidx193.1.i.us, align 2, !dbg !3085
  %conv194.1.i.us = zext i16 %263 to i32, !dbg !3085
  %mul195.1.i.us = mul i32 %sub149.1.i.us, %conv194.1.i.us, !dbg !3086
  %arrayidx209.1.i.us = getelementptr inbounds i16, ptr %262, i64 %idxprom176.1.i.us, !dbg !3087
  %264 = load i16, ptr %arrayidx209.1.i.us, align 2, !dbg !3087
  %conv210.1.i.us = zext i16 %264 to i32, !dbg !3087
  %mul211.1.i.us = mul i32 %and.1.i.us, %conv210.1.i.us, !dbg !3088
  %reass.add.1.i.us = add i32 %mul211.1.i.us, %mul195.1.i.us
  %reass.mul.1.i.us = mul i32 %reass.add.1.i.us, %and148.i.us
  %reass.add394.1.i.us = add i32 %mul179.1.i.us, %mul164.1.i.us
  %reass.mul395.1.i.us = mul i32 %reass.add394.1.i.us, %sub150.i.us
  %add212.1.i.us = add i32 %reass.mul395.1.i.us, %shr89.i.us, !dbg !3089
  %add213.1.i.us = add i32 %add212.1.i.us, %reass.mul.1.i.us, !dbg !3090
  %div214.1.i.us = sdiv i32 %add213.1.i.us, %mul88.i.us, !dbg !3091
  %conv215.1.i.us = trunc i32 %div214.1.i.us to i16, !dbg !3092
  %265 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3093
  %266 = getelementptr inbounds ptr, ptr %265, i64 %indvars.iv441.i.us, !dbg !3094
  %arrayidx219.1.i.us = getelementptr inbounds i8, ptr %266, i64 8, !dbg !3094
  %267 = load ptr, ptr %arrayidx219.1.i.us, align 8, !dbg !3094
  %268 = load ptr, ptr %267, align 8, !dbg !3094
  %arrayidx223.1.i.us = getelementptr inbounds i8, ptr %268, i64 2, !dbg !3094
  store i16 %conv215.1.i.us, ptr %arrayidx223.1.i.us, align 2, !dbg !3095
    #dbg_value(i64 1, !2902, !DIExpression(), !2936)
    #dbg_value(i64 0, !2901, !DIExpression(), !2936)
    #dbg_value(i32 %add127.i.us, !2903, !DIExpression(), !2936)
  %269 = add i32 %231, 1, !dbg !3029
  %270 = mul i32 %269, %div86.i.us, !dbg !3029
  %add131.i.us.1 = add nsw i32 %270, %div77.us, !dbg !3029
    #dbg_value(i32 %add131.i.us.1, !2904, !DIExpression(), !2936)
  %271 = load i32, ptr %size_x_cr.i.us, align 8, !dbg !3030
  %sub132.i.us.1 = add nsw i32 %271, -1, !dbg !3031
    #dbg_value(i32 %sub132.i.us.1, !3037, !DIExpression(), !3039)
    #dbg_value(i32 %div133.i.us, !3041, !DIExpression(), !3045)
    #dbg_value(i32 %cond.i.i.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i.i.i.us, !2261, !DIExpression(), !3047)
    #dbg_value(i32 %sub132.i.us.1, !2266, !DIExpression(), !3047)
  %cond.i4.i.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i.us, i32 %sub132.i.us.1), !dbg !3049
    #dbg_value(i32 %cond.i4.i.i.us.1, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i4.i.i.us.1, !2915, !DIExpression(), !2936)
  %272 = load i32, ptr %size_y_cr.i.us, align 4, !dbg !3050
  %sub135.i.us.1 = add nsw i32 %272, -1, !dbg !3051
  %div136.i.us.1 = sdiv i32 %add131.i.us.1, %div86.i.us, !dbg !3052
    #dbg_value(i32 %sub135.i.us.1, !3037, !DIExpression(), !3053)
    #dbg_value(i32 %div136.i.us.1, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %div136.i.us.1, !3041, !DIExpression(), !3055)
  %cond.i.i387.i.us.1 = call noundef i32 @llvm.smax.i32(i32 %div136.i.us.1, i32 0), !dbg !3057
    #dbg_value(i32 %cond.i.i387.i.us.1, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i.i387.i.us.1, !2261, !DIExpression(), !3058)
    #dbg_value(i32 %sub135.i.us.1, !2266, !DIExpression(), !3058)
  %cond.i4.i388.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us.1, i32 %sub135.i.us.1), !dbg !3060
    #dbg_value(i32 %cond.i4.i388.i.us.1, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i4.i388.i.us.1, !2916, !DIExpression(), !2936)
    #dbg_value(i32 %sub132.i.us.1, !3037, !DIExpression(), !3061)
    #dbg_value(i32 %div141.i.us, !3041, !DIExpression(), !3063)
    #dbg_value(i32 %cond.i.i389.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i.i389.i.us, !2261, !DIExpression(), !3065)
    #dbg_value(i32 %sub132.i.us.1, !2266, !DIExpression(), !3065)
  %cond.i4.i390.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.i.us, i32 %sub132.i.us.1), !dbg !3067
    #dbg_value(i32 %cond.i4.i390.i.us.1, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i4.i390.i.us.1, !2917, !DIExpression(), !2936)
  %add145.i.us.1 = add nsw i32 %add131.i.us.1, %sub87.i.us, !dbg !3068
  %div146.i.us.1 = sdiv i32 %add145.i.us.1, %div86.i.us, !dbg !3069
    #dbg_value(i32 %sub135.i.us.1, !3037, !DIExpression(), !3070)
    #dbg_value(i32 %div146.i.us.1, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %div146.i.us.1, !3041, !DIExpression(), !3072)
  %cond.i.i391.i.us.1 = call noundef i32 @llvm.smax.i32(i32 %div146.i.us.1, i32 0), !dbg !3074
    #dbg_value(i32 %cond.i.i391.i.us.1, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i.i391.i.us.1, !2261, !DIExpression(), !3075)
    #dbg_value(i32 %sub135.i.us.1, !2266, !DIExpression(), !3075)
  %cond.i4.i392.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us.1, i32 %sub135.i.us.1), !dbg !3077
    #dbg_value(i32 %cond.i4.i392.i.us.1, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i4.i392.i.us.1, !2918, !DIExpression(), !2936)
    #dbg_value(i32 %and.i.us, !2919, !DIExpression(), !2936)
  %and148.i.us.1 = and i32 %add131.i.us.1, %sub87.i.us, !dbg !3078
    #dbg_value(i32 %and148.i.us.1, !2920, !DIExpression(), !2936)
    #dbg_value(i32 %sub149.i.us, !2921, !DIExpression(), !2936)
  %sub150.i.us.1 = sub nsw i32 %div86.i.us, %and148.i.us.1, !dbg !3079
    #dbg_value(i32 %sub150.i.us.1, !2922, !DIExpression(), !2936)
  %273 = load ptr, ptr %listX.i.us, align 8, !dbg !3080
  %arrayidx156.i.us.1 = getelementptr inbounds ptr, ptr %273, i64 %idxprom32.i.us, !dbg !3080
  %274 = load ptr, ptr %arrayidx156.i.us.1, align 8, !dbg !3080
  %imgUV.i.us.1 = getelementptr inbounds i8, ptr %274, i64 136, !dbg !3081
  %275 = load ptr, ptr %imgUV.i.us.1, align 8, !dbg !3081
  %arrayidx158.i.us.1 = getelementptr inbounds ptr, ptr %275, i64 %indvars.iv441.i.us, !dbg !3080
  %276 = load ptr, ptr %arrayidx158.i.us.1, align 8, !dbg !3080
  %idxprom159.i.us.1 = sext i32 %cond.i4.i388.i.us.1 to i64, !dbg !3080
  %arrayidx160.i.us.1 = getelementptr inbounds ptr, ptr %276, i64 %idxprom159.i.us.1, !dbg !3080
  %277 = load ptr, ptr %arrayidx160.i.us.1, align 8, !dbg !3080
  %idxprom161.i.us.1 = sext i32 %cond.i4.i.i.us.1 to i64, !dbg !3080
  %arrayidx162.i.us.1 = getelementptr inbounds i16, ptr %277, i64 %idxprom161.i.us.1, !dbg !3080
  %278 = load i16, ptr %arrayidx162.i.us.1, align 2, !dbg !3080
  %conv163.i.us.1 = zext i16 %278 to i32, !dbg !3080
  %mul164.i.us.1 = mul i32 %sub149.i.us, %conv163.i.us.1, !dbg !3082
  %idxprom176.i.us.1 = sext i32 %cond.i4.i390.i.us.1 to i64, !dbg !3083
  %arrayidx177.i.us.1 = getelementptr inbounds i16, ptr %277, i64 %idxprom176.i.us.1, !dbg !3083
  %279 = load i16, ptr %arrayidx177.i.us.1, align 2, !dbg !3083
  %conv178.i.us.1 = zext i16 %279 to i32, !dbg !3083
  %mul179.i.us.1 = mul i32 %and.i.us, %conv178.i.us.1, !dbg !3084
  %idxprom190.i.us.1 = sext i32 %cond.i4.i392.i.us.1 to i64, !dbg !3085
  %arrayidx191.i.us.1 = getelementptr inbounds ptr, ptr %276, i64 %idxprom190.i.us.1, !dbg !3085
  %280 = load ptr, ptr %arrayidx191.i.us.1, align 8, !dbg !3085
  %arrayidx193.i.us.1 = getelementptr inbounds i16, ptr %280, i64 %idxprom161.i.us.1, !dbg !3085
  %281 = load i16, ptr %arrayidx193.i.us.1, align 2, !dbg !3085
  %conv194.i.us.1 = zext i16 %281 to i32, !dbg !3085
  %mul195.i.us.1 = mul i32 %sub149.i.us, %conv194.i.us.1, !dbg !3086
  %arrayidx209.i.us.1 = getelementptr inbounds i16, ptr %280, i64 %idxprom176.i.us.1, !dbg !3087
  %282 = load i16, ptr %arrayidx209.i.us.1, align 2, !dbg !3087
  %conv210.i.us.1 = zext i16 %282 to i32, !dbg !3087
  %mul211.i.us.1 = mul i32 %and.i.us, %conv210.i.us.1, !dbg !3088
  %reass.add.i.us.1 = add i32 %mul211.i.us.1, %mul195.i.us.1
  %reass.mul.i.us.1 = mul i32 %reass.add.i.us.1, %and148.i.us.1
  %reass.add394.i.us.1 = add i32 %mul179.i.us.1, %mul164.i.us.1
  %reass.mul395.i.us.1 = mul i32 %reass.add394.i.us.1, %sub150.i.us.1
  %add212.i.us.1 = add i32 %reass.mul395.i.us.1, %shr89.i.us, !dbg !3089
  %add213.i.us.1 = add i32 %add212.i.us.1, %reass.mul.i.us.1, !dbg !3090
  %div214.i.us.1 = sdiv i32 %add213.i.us.1, %mul88.i.us, !dbg !3091
  %conv215.i.us.1 = trunc i32 %div214.i.us.1 to i16, !dbg !3092
  %283 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3093
  %284 = getelementptr inbounds ptr, ptr %283, i64 %indvars.iv441.i.us, !dbg !3094
  %arrayidx219.i.us.1 = getelementptr inbounds i8, ptr %284, i64 8, !dbg !3094
  %285 = load ptr, ptr %arrayidx219.i.us.1, align 8, !dbg !3094
  %arrayidx221.i.us.1 = getelementptr inbounds i8, ptr %285, i64 8, !dbg !3094
  %286 = load ptr, ptr %arrayidx221.i.us.1, align 8, !dbg !3094
  store i16 %conv215.i.us.1, ptr %286, align 2, !dbg !3095
    #dbg_value(i64 1, !2901, !DIExpression(), !2936)
    #dbg_value(i32 %add127.1.i.us, !2903, !DIExpression(), !2936)
  %287 = load i32, ptr %size_x_cr.i.us, align 8, !dbg !3030
  %sub132.1.i.us.1 = add nsw i32 %287, -1, !dbg !3031
    #dbg_value(i32 %sub132.1.i.us.1, !3037, !DIExpression(), !3039)
    #dbg_value(i32 %div133.1.i.us, !3041, !DIExpression(), !3045)
    #dbg_value(i32 %cond.i.i.1.i.us, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i.i.1.i.us, !2261, !DIExpression(), !3047)
    #dbg_value(i32 %sub132.1.i.us.1, !2266, !DIExpression(), !3047)
  %cond.i4.i.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i.us, i32 %sub132.1.i.us.1), !dbg !3049
    #dbg_value(i32 %cond.i4.i.1.i.us.1, !3038, !DIExpression(), !3039)
    #dbg_value(i32 %cond.i4.i.1.i.us.1, !2915, !DIExpression(), !2936)
  %288 = load i32, ptr %size_y_cr.i.us, align 4, !dbg !3050
  %sub135.1.i.us.1 = add nsw i32 %288, -1, !dbg !3051
    #dbg_value(i32 %sub135.1.i.us.1, !3037, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i.i387.i.us.1, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %sub135.1.i.us.1, !2266, !DIExpression(), !3058)
  %cond.i4.i388.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i387.i.us.1, i32 %sub135.1.i.us.1), !dbg !3060
    #dbg_value(i32 %cond.i4.i388.1.i.us.1, !3038, !DIExpression(), !3053)
    #dbg_value(i32 %cond.i4.i388.1.i.us.1, !2916, !DIExpression(), !2936)
    #dbg_value(i32 %sub132.1.i.us.1, !3037, !DIExpression(), !3061)
    #dbg_value(i32 %div141.1.i.us, !3041, !DIExpression(), !3063)
    #dbg_value(i32 %cond.i.i389.1.i.us, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i.i389.1.i.us, !2261, !DIExpression(), !3065)
    #dbg_value(i32 %sub132.1.i.us.1, !2266, !DIExpression(), !3065)
  %cond.i4.i390.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i389.1.i.us, i32 %sub132.1.i.us.1), !dbg !3067
    #dbg_value(i32 %cond.i4.i390.1.i.us.1, !3038, !DIExpression(), !3061)
    #dbg_value(i32 %cond.i4.i390.1.i.us.1, !2917, !DIExpression(), !2936)
    #dbg_value(i32 %sub135.1.i.us.1, !3037, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i.i391.i.us.1, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %sub135.1.i.us.1, !2266, !DIExpression(), !3075)
  %cond.i4.i392.1.i.us.1 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i391.i.us.1, i32 %sub135.1.i.us.1), !dbg !3077
    #dbg_value(i32 %cond.i4.i392.1.i.us.1, !3038, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i4.i392.1.i.us.1, !2918, !DIExpression(), !2936)
    #dbg_value(i32 %and.1.i.us, !2919, !DIExpression(), !2936)
    #dbg_value(i32 %sub149.1.i.us, !2921, !DIExpression(), !2936)
  %289 = load ptr, ptr %listX.i.us, align 8, !dbg !3080
  %arrayidx156.1.i.us.1 = getelementptr inbounds ptr, ptr %289, i64 %idxprom32.i.us, !dbg !3080
  %290 = load ptr, ptr %arrayidx156.1.i.us.1, align 8, !dbg !3080
  %imgUV.1.i.us.1 = getelementptr inbounds i8, ptr %290, i64 136, !dbg !3081
  %291 = load ptr, ptr %imgUV.1.i.us.1, align 8, !dbg !3081
  %arrayidx158.1.i.us.1 = getelementptr inbounds ptr, ptr %291, i64 %indvars.iv441.i.us, !dbg !3080
  %292 = load ptr, ptr %arrayidx158.1.i.us.1, align 8, !dbg !3080
  %idxprom159.1.i.us.1 = sext i32 %cond.i4.i388.1.i.us.1 to i64, !dbg !3080
  %arrayidx160.1.i.us.1 = getelementptr inbounds ptr, ptr %292, i64 %idxprom159.1.i.us.1, !dbg !3080
  %293 = load ptr, ptr %arrayidx160.1.i.us.1, align 8, !dbg !3080
  %idxprom161.1.i.us.1 = sext i32 %cond.i4.i.1.i.us.1 to i64, !dbg !3080
  %arrayidx162.1.i.us.1 = getelementptr inbounds i16, ptr %293, i64 %idxprom161.1.i.us.1, !dbg !3080
  %294 = load i16, ptr %arrayidx162.1.i.us.1, align 2, !dbg !3080
  %conv163.1.i.us.1 = zext i16 %294 to i32, !dbg !3080
  %mul164.1.i.us.1 = mul i32 %sub149.1.i.us, %conv163.1.i.us.1, !dbg !3082
  %idxprom176.1.i.us.1 = sext i32 %cond.i4.i390.1.i.us.1 to i64, !dbg !3083
  %arrayidx177.1.i.us.1 = getelementptr inbounds i16, ptr %293, i64 %idxprom176.1.i.us.1, !dbg !3083
  %295 = load i16, ptr %arrayidx177.1.i.us.1, align 2, !dbg !3083
  %conv178.1.i.us.1 = zext i16 %295 to i32, !dbg !3083
  %mul179.1.i.us.1 = mul i32 %and.1.i.us, %conv178.1.i.us.1, !dbg !3084
  %idxprom190.1.i.us.1 = sext i32 %cond.i4.i392.1.i.us.1 to i64, !dbg !3085
  %arrayidx191.1.i.us.1 = getelementptr inbounds ptr, ptr %292, i64 %idxprom190.1.i.us.1, !dbg !3085
  %296 = load ptr, ptr %arrayidx191.1.i.us.1, align 8, !dbg !3085
  %arrayidx193.1.i.us.1 = getelementptr inbounds i16, ptr %296, i64 %idxprom161.1.i.us.1, !dbg !3085
  %297 = load i16, ptr %arrayidx193.1.i.us.1, align 2, !dbg !3085
  %conv194.1.i.us.1 = zext i16 %297 to i32, !dbg !3085
  %mul195.1.i.us.1 = mul i32 %sub149.1.i.us, %conv194.1.i.us.1, !dbg !3086
  %arrayidx209.1.i.us.1 = getelementptr inbounds i16, ptr %296, i64 %idxprom176.1.i.us.1, !dbg !3087
  %298 = load i16, ptr %arrayidx209.1.i.us.1, align 2, !dbg !3087
  %conv210.1.i.us.1 = zext i16 %298 to i32, !dbg !3087
  %mul211.1.i.us.1 = mul i32 %and.1.i.us, %conv210.1.i.us.1, !dbg !3088
  %reass.add.1.i.us.1 = add i32 %mul211.1.i.us.1, %mul195.1.i.us.1
  %reass.mul.1.i.us.1 = mul i32 %reass.add.1.i.us.1, %and148.i.us.1
  %reass.add394.1.i.us.1 = add i32 %mul179.1.i.us.1, %mul164.1.i.us.1
  %reass.mul395.1.i.us.1 = mul i32 %reass.add394.1.i.us.1, %sub150.i.us.1
  %add212.1.i.us.1 = add i32 %reass.mul395.1.i.us.1, %shr89.i.us, !dbg !3089
  %add213.1.i.us.1 = add i32 %add212.1.i.us.1, %reass.mul.1.i.us.1, !dbg !3090
  %div214.1.i.us.1 = sdiv i32 %add213.1.i.us.1, %mul88.i.us, !dbg !3091
  %conv215.1.i.us.1 = trunc i32 %div214.1.i.us.1 to i16, !dbg !3092
  %299 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3093
  %300 = getelementptr inbounds ptr, ptr %299, i64 %indvars.iv441.i.us, !dbg !3094
  %arrayidx219.1.i.us.1 = getelementptr inbounds i8, ptr %300, i64 8, !dbg !3094
  %301 = load ptr, ptr %arrayidx219.1.i.us.1, align 8, !dbg !3094
  %arrayidx221.1.i.us.1 = getelementptr inbounds i8, ptr %301, i64 8, !dbg !3094
  %302 = load ptr, ptr %arrayidx221.1.i.us.1, align 8, !dbg !3094
  %arrayidx223.1.i.us.1 = getelementptr inbounds i8, ptr %302, i64 2, !dbg !3094
  store i16 %conv215.1.i.us.1, ptr %arrayidx223.1.i.us.1, align 2, !dbg !3095
    #dbg_value(i64 2, !2901, !DIExpression(), !2936)
    #dbg_value(i64 1, !2902, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2936)
    #dbg_value(i64 0, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %303 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3096
  %304 = getelementptr inbounds ptr, ptr %303, i64 %indvars.iv441.i.us, !dbg !3103
  %arrayidx241.i.us = getelementptr inbounds i8, ptr %304, i64 8, !dbg !3103
  %305 = load ptr, ptr %arrayidx241.i.us, align 8, !dbg !3103
  %306 = load ptr, ptr %305, align 8, !dbg !3103
  %307 = load i16, ptr %306, align 2, !dbg !3103
  store i16 %307, ptr %pMB.0404.i.us, align 2, !dbg !3104
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
  %308 = load ptr, ptr %305, align 8, !dbg !3103
  %arrayidx245.1.i.us = getelementptr inbounds i8, ptr %308, i64 2, !dbg !3103
  %309 = load i16, ptr %arrayidx245.1.i.us, align 2, !dbg !3103
  %arrayidx249.1.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 2, !dbg !3105
  store i16 %309, ptr %arrayidx249.1.i.us, align 2, !dbg !3104
    #dbg_value(i64 1, !2900, !DIExpression(), !2936)
    #dbg_value(i64 0, !2899, !DIExpression(), !2936)
  %310 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3096
  %311 = getelementptr inbounds ptr, ptr %310, i64 %indvars.iv441.i.us, !dbg !3103
  %arrayidx241.1438.i.us = getelementptr inbounds i8, ptr %311, i64 8, !dbg !3103
  %312 = load ptr, ptr %arrayidx241.1438.i.us, align 8, !dbg !3103
  %arrayidx243.1439.i.us = getelementptr inbounds i8, ptr %312, i64 8, !dbg !3103
  %313 = load ptr, ptr %arrayidx243.1439.i.us, align 8, !dbg !3103
  %314 = load i16, ptr %313, align 2, !dbg !3103
  %arrayidx249.1440.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 4, !dbg !3105
  store i16 %314, ptr %arrayidx249.1440.i.us, align 2, !dbg !3104
    #dbg_value(i64 1, !2899, !DIExpression(), !2936)
  %315 = load ptr, ptr %mb_pred.i.us, align 8, !dbg !3096
  %316 = getelementptr inbounds ptr, ptr %315, i64 %indvars.iv441.i.us, !dbg !3103
  %arrayidx241.1.1.i.us = getelementptr inbounds i8, ptr %316, i64 8, !dbg !3103
  %317 = load ptr, ptr %arrayidx241.1.1.i.us, align 8, !dbg !3103
  %arrayidx243.1.1.i.us = getelementptr inbounds i8, ptr %317, i64 8, !dbg !3103
  %318 = load ptr, ptr %arrayidx243.1.1.i.us, align 8, !dbg !3103
  %arrayidx245.1.1.i.us = getelementptr inbounds i8, ptr %318, i64 2, !dbg !3103
  %319 = load i16, ptr %arrayidx245.1.1.i.us, align 2, !dbg !3103
  %arrayidx249.1.1.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 6, !dbg !3105
  store i16 %319, ptr %arrayidx249.1.1.i.us, align 2, !dbg !3104
    #dbg_value(i64 2, !2899, !DIExpression(), !2936)
    #dbg_value(i64 2, !2900, !DIExpression(), !2936)
  %add.ptr256.i.us = getelementptr inbounds i8, ptr %pMB.0404.i.us, i64 8, !dbg !3106
    #dbg_value(ptr %add.ptr256.i.us, !2914, !DIExpression(), !2936)
    #dbg_value(i64 %indvars.iv441.i.us, !2908, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2936)
  br i1 %cmp91.i.us, label %for.body93.i.us, label %buildPredblockRegionYUV.exit.us, !dbg !3016, !llvm.loop !3107

buildPredblockRegionYUV.exit.us:                  ; preds = %for.body93.i.us, %cond.end.i.us
  %320 = load ptr, ptr %tmp_block.i, align 8, !dbg !3109
  call void @free_mem2Dpel(ptr noundef %320) #18, !dbg !3110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_block.i) #18, !dbg !3111
    #dbg_value(ptr %storeYUV.0, !2669, !DIExpression(), !2685)
    #dbg_value(i32 0, !2676, !DIExpression(), !2685)
  %321 = shl i64 %indvars.iv, 2, !dbg !3112
  %322 = and i64 %321, 4294967292, !dbg !3112
    #dbg_value(i64 0, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %323 = load i16, ptr %storeYUV.0, align 2, !dbg !3114
  %324 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us = getelementptr inbounds ptr, ptr %324, i64 %68, !dbg !3121
  %325 = load ptr, ptr %arrayidx148.us, align 8, !dbg !3121
  %arrayidx152.us = getelementptr inbounds i16, ptr %325, i64 %322, !dbg !3121
  store i16 %323, ptr %arrayidx152.us, align 2, !dbg !3122
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %326 = load i16, ptr %arrayidx72.1.i, align 2, !dbg !3114
  %327 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.1 = getelementptr inbounds ptr, ptr %327, i64 %68, !dbg !3121
  %328 = load ptr, ptr %arrayidx148.us.1, align 8, !dbg !3121
  %329 = or disjoint i64 %322, 1, !dbg !3123
  %arrayidx152.us.1 = getelementptr inbounds i16, ptr %328, i64 %329, !dbg !3121
  store i16 %326, ptr %arrayidx152.us.1, align 2, !dbg !3122
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
  %330 = load i16, ptr %arrayidx72.2.i, align 2, !dbg !3114
  %331 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.2 = getelementptr inbounds ptr, ptr %331, i64 %68, !dbg !3121
  %332 = load ptr, ptr %arrayidx148.us.2, align 8, !dbg !3121
  %333 = or disjoint i64 %322, 2, !dbg !3123
  %arrayidx152.us.2 = getelementptr inbounds i16, ptr %332, i64 %333, !dbg !3121
  store i16 %330, ptr %arrayidx152.us.2, align 2, !dbg !3122
    #dbg_value(i64 3, !2677, !DIExpression(), !2685)
  %334 = load i16, ptr %arrayidx72.3.i, align 2, !dbg !3114
  %335 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.3 = getelementptr inbounds ptr, ptr %335, i64 %68, !dbg !3121
  %336 = load ptr, ptr %arrayidx148.us.3, align 8, !dbg !3121
  %337 = or disjoint i64 %322, 3, !dbg !3123
  %arrayidx152.us.3 = getelementptr inbounds i16, ptr %336, i64 %337, !dbg !3121
  store i16 %334, ptr %arrayidx152.us.3, align 2, !dbg !3122
    #dbg_value(i64 4, !2677, !DIExpression(), !2685)
    #dbg_value(i64 1, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %338 = load i16, ptr %arrayidx72.1419.i, align 2, !dbg !3114
  %339 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.1373 = getelementptr inbounds ptr, ptr %339, i64 %70, !dbg !3121
  %340 = load ptr, ptr %arrayidx148.us.1373, align 8, !dbg !3121
  %arrayidx152.us.1374 = getelementptr inbounds i16, ptr %340, i64 %322, !dbg !3121
  store i16 %338, ptr %arrayidx152.us.1374, align 2, !dbg !3122
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %341 = load i16, ptr %arrayidx72.1.1.i, align 2, !dbg !3114
  %342 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.1.1 = getelementptr inbounds ptr, ptr %342, i64 %70, !dbg !3121
  %343 = load ptr, ptr %arrayidx148.us.1.1, align 8, !dbg !3121
  %arrayidx152.us.1.1 = getelementptr inbounds i16, ptr %343, i64 %329, !dbg !3121
  store i16 %341, ptr %arrayidx152.us.1.1, align 2, !dbg !3122
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
  %344 = load i16, ptr %arrayidx72.2.1.i, align 2, !dbg !3114
  %345 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.2.1 = getelementptr inbounds ptr, ptr %345, i64 %70, !dbg !3121
  %346 = load ptr, ptr %arrayidx148.us.2.1, align 8, !dbg !3121
  %arrayidx152.us.2.1 = getelementptr inbounds i16, ptr %346, i64 %333, !dbg !3121
  store i16 %344, ptr %arrayidx152.us.2.1, align 2, !dbg !3122
    #dbg_value(i64 3, !2677, !DIExpression(), !2685)
  %347 = load i16, ptr %arrayidx72.3.1.i, align 2, !dbg !3114
  %348 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.3.1 = getelementptr inbounds ptr, ptr %348, i64 %70, !dbg !3121
  %349 = load ptr, ptr %arrayidx148.us.3.1, align 8, !dbg !3121
  %arrayidx152.us.3.1 = getelementptr inbounds i16, ptr %349, i64 %337, !dbg !3121
  store i16 %347, ptr %arrayidx152.us.3.1, align 2, !dbg !3122
    #dbg_value(i64 4, !2677, !DIExpression(), !2685)
    #dbg_value(i64 2, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %350 = load i16, ptr %arrayidx72.2421.i, align 2, !dbg !3114
  %351 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.2376 = getelementptr inbounds ptr, ptr %351, i64 %71, !dbg !3121
  %352 = load ptr, ptr %arrayidx148.us.2376, align 8, !dbg !3121
  %arrayidx152.us.2377 = getelementptr inbounds i16, ptr %352, i64 %322, !dbg !3121
  store i16 %350, ptr %arrayidx152.us.2377, align 2, !dbg !3122
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %353 = load i16, ptr %arrayidx72.1.2.i, align 2, !dbg !3114
  %354 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.1.2 = getelementptr inbounds ptr, ptr %354, i64 %71, !dbg !3121
  %355 = load ptr, ptr %arrayidx148.us.1.2, align 8, !dbg !3121
  %arrayidx152.us.1.2 = getelementptr inbounds i16, ptr %355, i64 %329, !dbg !3121
  store i16 %353, ptr %arrayidx152.us.1.2, align 2, !dbg !3122
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
  %356 = load i16, ptr %arrayidx72.2.2.i, align 2, !dbg !3114
  %357 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.2.2 = getelementptr inbounds ptr, ptr %357, i64 %71, !dbg !3121
  %358 = load ptr, ptr %arrayidx148.us.2.2, align 8, !dbg !3121
  %arrayidx152.us.2.2 = getelementptr inbounds i16, ptr %358, i64 %333, !dbg !3121
  store i16 %356, ptr %arrayidx152.us.2.2, align 2, !dbg !3122
    #dbg_value(i64 3, !2677, !DIExpression(), !2685)
  %359 = load i16, ptr %arrayidx72.3.2.i, align 2, !dbg !3114
  %360 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.3.2 = getelementptr inbounds ptr, ptr %360, i64 %71, !dbg !3121
  %361 = load ptr, ptr %arrayidx148.us.3.2, align 8, !dbg !3121
  %arrayidx152.us.3.2 = getelementptr inbounds i16, ptr %361, i64 %337, !dbg !3121
  store i16 %359, ptr %arrayidx152.us.3.2, align 2, !dbg !3122
    #dbg_value(i64 4, !2677, !DIExpression(), !2685)
    #dbg_value(i64 3, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %362 = load i16, ptr %arrayidx72.3423.i, align 2, !dbg !3114
  %363 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.3379 = getelementptr inbounds ptr, ptr %363, i64 %72, !dbg !3121
  %364 = load ptr, ptr %arrayidx148.us.3379, align 8, !dbg !3121
  %arrayidx152.us.3380 = getelementptr inbounds i16, ptr %364, i64 %322, !dbg !3121
  store i16 %362, ptr %arrayidx152.us.3380, align 2, !dbg !3122
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %365 = load i16, ptr %arrayidx72.1.3.i, align 2, !dbg !3114
  %366 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.1.3 = getelementptr inbounds ptr, ptr %366, i64 %72, !dbg !3121
  %367 = load ptr, ptr %arrayidx148.us.1.3, align 8, !dbg !3121
  %arrayidx152.us.1.3 = getelementptr inbounds i16, ptr %367, i64 %329, !dbg !3121
  store i16 %365, ptr %arrayidx152.us.1.3, align 2, !dbg !3122
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
  %368 = load i16, ptr %arrayidx72.2.3.i, align 2, !dbg !3114
  %369 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.2.3 = getelementptr inbounds ptr, ptr %369, i64 %72, !dbg !3121
  %370 = load ptr, ptr %arrayidx148.us.2.3, align 8, !dbg !3121
  %arrayidx152.us.2.3 = getelementptr inbounds i16, ptr %370, i64 %333, !dbg !3121
  store i16 %368, ptr %arrayidx152.us.2.3, align 2, !dbg !3122
    #dbg_value(i64 3, !2677, !DIExpression(), !2685)
  %371 = load i16, ptr %arrayidx72.3.3.i, align 2, !dbg !3114
  %372 = load ptr, ptr %imgY144, align 8, !dbg !3120
  %arrayidx148.us.3.3 = getelementptr inbounds ptr, ptr %372, i64 %72, !dbg !3121
  %373 = load ptr, ptr %arrayidx148.us.3.3, align 8, !dbg !3121
  %arrayidx152.us.3.3 = getelementptr inbounds i16, ptr %373, i64 %337, !dbg !3121
  store i16 %371, ptr %arrayidx152.us.3.3, align 2, !dbg !3122
    #dbg_value(i64 4, !2677, !DIExpression(), !2685)
    #dbg_value(i64 4, !2676, !DIExpression(), !2685)
    #dbg_value(ptr %storeYUV.0, !2669, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !2685)
  %374 = load i32, ptr %chroma_format_idc, align 4, !dbg !3124
  %cmp159.not.us = icmp eq i32 %374, 0, !dbg !3126
  br i1 %cmp159.not.us, label %for.inc208.us, label %if.then161.us, !dbg !3127

if.then161.us:                                    ; preds = %buildPredblockRegionYUV.exit.us
    #dbg_value(ptr %add.ptr.i, !2669, !DIExpression(), !2685)
    #dbg_value(i32 0, !2678, !DIExpression(), !2685)
  %375 = shl nuw nsw i64 %indvars.iv, 1
    #dbg_value(i64 0, !2678, !DIExpression(), !2685)
    #dbg_value(i64 0, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %376 = load i16, ptr %add.ptr.i, align 2, !dbg !3128
  %377 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %378 = load ptr, ptr %377, align 8, !dbg !3140
  %arrayidx188.us = getelementptr inbounds ptr, ptr %378, i64 %66, !dbg !3140
  %379 = load ptr, ptr %arrayidx188.us, align 8, !dbg !3140
  %arrayidx193.us = getelementptr inbounds i16, ptr %379, i64 %375, !dbg !3140
  store i16 %376, ptr %arrayidx193.us, align 2, !dbg !3141
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %380 = load i16, ptr %arrayidx180.us.1, align 2, !dbg !3128
  %381 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %382 = load ptr, ptr %381, align 8, !dbg !3140
  %arrayidx188.us.1 = getelementptr inbounds ptr, ptr %382, i64 %66, !dbg !3140
  %383 = load ptr, ptr %arrayidx188.us.1, align 8, !dbg !3140
  %384 = or disjoint i64 %375, 1, !dbg !3142
  %arrayidx193.us.1 = getelementptr inbounds i16, ptr %383, i64 %384, !dbg !3140
  store i16 %380, ptr %arrayidx193.us.1, align 2, !dbg !3141
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
    #dbg_value(i64 1, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %385 = load i16, ptr %arrayidx180.us.1387, align 2, !dbg !3128
  %386 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %387 = load ptr, ptr %386, align 8, !dbg !3140
  %arrayidx188.us.1389 = getelementptr inbounds ptr, ptr %387, i64 %73, !dbg !3140
  %388 = load ptr, ptr %arrayidx188.us.1389, align 8, !dbg !3140
  %arrayidx193.us.1390 = getelementptr inbounds i16, ptr %388, i64 %375, !dbg !3140
  store i16 %385, ptr %arrayidx193.us.1390, align 2, !dbg !3141
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %389 = load i16, ptr %arrayidx180.us.1.1, align 2, !dbg !3128
  %390 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %391 = load ptr, ptr %390, align 8, !dbg !3140
  %arrayidx188.us.1.1 = getelementptr inbounds ptr, ptr %391, i64 %73, !dbg !3140
  %392 = load ptr, ptr %arrayidx188.us.1.1, align 8, !dbg !3140
  %arrayidx193.us.1.1 = getelementptr inbounds i16, ptr %392, i64 %384, !dbg !3140
  store i16 %389, ptr %arrayidx193.us.1.1, align 2, !dbg !3141
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
    #dbg_value(i64 2, !2676, !DIExpression(), !2685)
    #dbg_value(ptr %add.ptr203.us, !2669, !DIExpression(), !2685)
    #dbg_value(i64 1, !2678, !DIExpression(), !2685)
    #dbg_value(i64 0, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %393 = load i16, ptr %add.ptr203.us, align 2, !dbg !3128
  %394 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %arrayidx183.us.1392 = getelementptr inbounds i8, ptr %394, i64 8, !dbg !3140
  %395 = load ptr, ptr %arrayidx183.us.1392, align 8, !dbg !3140
  %arrayidx188.us.1393 = getelementptr inbounds ptr, ptr %395, i64 %66, !dbg !3140
  %396 = load ptr, ptr %arrayidx188.us.1393, align 8, !dbg !3140
  %arrayidx193.us.1394 = getelementptr inbounds i16, ptr %396, i64 %375, !dbg !3140
  store i16 %393, ptr %arrayidx193.us.1394, align 2, !dbg !3141
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %397 = load i16, ptr %arrayidx180.us.1.1395, align 2, !dbg !3128
  %398 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %arrayidx183.us.1.1396 = getelementptr inbounds i8, ptr %398, i64 8, !dbg !3140
  %399 = load ptr, ptr %arrayidx183.us.1.1396, align 8, !dbg !3140
  %arrayidx188.us.1.1397 = getelementptr inbounds ptr, ptr %399, i64 %66, !dbg !3140
  %400 = load ptr, ptr %arrayidx188.us.1.1397, align 8, !dbg !3140
  %arrayidx193.us.1.1398 = getelementptr inbounds i16, ptr %400, i64 %384, !dbg !3140
  store i16 %397, ptr %arrayidx193.us.1.1398, align 2, !dbg !3141
    #dbg_value(i64 1, !2676, !DIExpression(), !2685)
    #dbg_value(i64 0, !2677, !DIExpression(), !2685)
  %401 = load i16, ptr %arrayidx180.us.1387.1, align 2, !dbg !3128
  %402 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %arrayidx183.us.1388.1 = getelementptr inbounds i8, ptr %402, i64 8, !dbg !3140
  %403 = load ptr, ptr %arrayidx183.us.1388.1, align 8, !dbg !3140
  %arrayidx188.us.1389.1 = getelementptr inbounds ptr, ptr %403, i64 %73, !dbg !3140
  %404 = load ptr, ptr %arrayidx188.us.1389.1, align 8, !dbg !3140
  %arrayidx193.us.1390.1 = getelementptr inbounds i16, ptr %404, i64 %375, !dbg !3140
  store i16 %401, ptr %arrayidx193.us.1390.1, align 2, !dbg !3141
    #dbg_value(i64 1, !2677, !DIExpression(), !2685)
  %405 = load i16, ptr %arrayidx180.us.1.1.1, align 2, !dbg !3128
  %406 = load ptr, ptr %imgUV181, align 8, !dbg !3139
  %arrayidx183.us.1.1.1 = getelementptr inbounds i8, ptr %406, i64 8, !dbg !3140
  %407 = load ptr, ptr %arrayidx183.us.1.1.1, align 8, !dbg !3140
  %arrayidx188.us.1.1.1 = getelementptr inbounds ptr, ptr %407, i64 %73, !dbg !3140
  %408 = load ptr, ptr %arrayidx188.us.1.1.1, align 8, !dbg !3140
  %arrayidx193.us.1.1.1 = getelementptr inbounds i16, ptr %408, i64 %384, !dbg !3140
  store i16 %405, ptr %arrayidx193.us.1.1.1, align 2, !dbg !3141
    #dbg_value(i64 2, !2677, !DIExpression(), !2685)
    #dbg_value(i64 2, !2676, !DIExpression(), !2685)
    #dbg_value(ptr %add.ptr203.us, !2669, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2685)
    #dbg_value(i64 2, !2678, !DIExpression(), !2685)
  br label %for.inc208.us, !dbg !3143

for.inc208.us:                                    ; preds = %if.then161.us, %buildPredblockRegionYUV.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3143
    #dbg_value(i32 %current_mb_nr.2.us, !2683, !DIExpression(), !2685)
    #dbg_value(i64 %indvars.iv.next, !2671, !DIExpression(), !2685)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3144
  br i1 %exitcond.not, label %for.cond55.for.inc211_crit_edge.us, label %for.body59.us, !dbg !2854, !llvm.loop !3145

for.cond55.for.inc211_crit_edge.us:               ; preds = %for.inc208.us
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1, !dbg !3147
    #dbg_value(i32 poison, !2683, !DIExpression(), !2685)
    #dbg_value(i64 %indvars.iv.next405, !2666, !DIExpression(), !2685)
  %cmp52.us = icmp ult i64 %indvars.iv.next405, %64, !dbg !2850
  br i1 %cmp52.us, label %for.body.us, label %for.end213, !dbg !2853, !llvm.loop !3148

for.end213:                                       ; preds = %for.cond55.for.inc211_crit_edge.us, %for.body.lr.ph, %if.end50
  call void @free(ptr noundef %storeYUV.0) #18, !dbg !3150
  br label %if.end214, !dbg !3151

if.end214:                                        ; preds = %for.end213, %if.end
  ret void, !dbg !3152
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sliding_window_poc_management(ptr nocapture noundef readonly %p_Dpb, ptr nocapture noundef readnone %p) local_unnamed_addr #4 !dbg !3153 {
entry:
    #dbg_value(ptr %p_Dpb, !3155, !DIExpression(), !3161)
    #dbg_value(ptr %p, !3156, !DIExpression(), !3161)
  %used_size = getelementptr inbounds i8, ptr %p_Dpb, i64 44, !dbg !3162
  %0 = load i32, ptr %used_size, align 4, !dbg !3162
  %size = getelementptr inbounds i8, ptr %p_Dpb, i64 40, !dbg !3163
  %1 = load i32, ptr %size, align 8, !dbg !3163
  %cmp = icmp ne i32 %0, %1, !dbg !3164
    #dbg_value(ptr poison, !3157, !DIExpression(), !3165)
    #dbg_value(i32 0, !3160, !DIExpression(), !3165)
  %cmp315.not = icmp eq i32 %0, 1
  %or.cond = or i1 %cmp, %cmp315.not, !dbg !3166
  br i1 %or.cond, label %if.end, label %for.body.lr.ph, !dbg !3166

for.body.lr.ph:                                   ; preds = %entry
  %2 = load ptr, ptr %p_Dpb, align 8, !dbg !3167
    #dbg_value(ptr %2, !3157, !DIExpression(), !3165)
  %pocs_in_dpb = getelementptr inbounds i8, ptr %2, i64 856056
  br label %for.body, !dbg !3168

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !3160, !DIExpression(), !3165)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3170
  %arrayidx = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv.next, !dbg !3172
  %3 = load i32, ptr %arrayidx, align 4, !dbg !3172
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %pocs_in_dpb, i64 0, i64 %indvars.iv, !dbg !3173
  store i32 %3, ptr %arrayidx6, align 4, !dbg !3174
    #dbg_value(i64 %indvars.iv.next, !3160, !DIExpression(), !3165)
  %4 = load i32, ptr %size, align 8, !dbg !3175
  %sub = add i32 %4, -1, !dbg !3176
  %5 = zext i32 %sub to i64, !dbg !3177
  %cmp3 = icmp ult i64 %indvars.iv.next, %5, !dbg !3177
  br i1 %cmp3, label %for.body, label %if.end, !dbg !3168, !llvm.loop !3178

if.end:                                           ; preds = %for.body, %entry
  ret void, !dbg !3180
}

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_non_ref_pic(ptr nocapture noundef readonly %p_Dpb, i32 noundef %poc, i32 noundef %p_out) local_unnamed_addr #0 !dbg !3181 {
entry:
  %concealment_fs = alloca %struct.frame_store, align 8, !DIAssignID !3190
    #dbg_assign(i1 undef, !3189, !DIExpression(), !3190, ptr %concealment_fs, !DIExpression(), !3191)
    #dbg_value(ptr %p_Dpb, !3185, !DIExpression(), !3191)
    #dbg_value(i32 %poc, !3186, !DIExpression(), !3191)
    #dbg_value(i32 %p_out, !3187, !DIExpression(), !3191)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !3192
    #dbg_value(ptr %0, !3188, !DIExpression(), !3191)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %concealment_fs) #18, !dbg !3193
  %cmp = icmp sgt i32 %poc, 0, !dbg !3194
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3196

if.then:                                          ; preds = %entry
  %last_output_poc = getelementptr inbounds i8, ptr %p_Dpb, i64 56, !dbg !3197
  %1 = load i32, ptr %last_output_poc, align 8, !dbg !3197
  %sub = sub nsw i32 %poc, %1, !dbg !3200
  %poc_gap = getelementptr inbounds i8, ptr %0, i64 849236, !dbg !3201
  %2 = load i32, ptr %poc_gap, align 4, !dbg !3201
  %cmp2 = icmp sgt i32 %sub, %2, !dbg !3202
  br i1 %cmp2, label %if.then.i, label %if.end5, !dbg !3203

if.then.i:                                        ; preds = %if.then
  %concealment_head = getelementptr inbounds i8, ptr %0, i64 848928, !dbg !3204
  %3 = load ptr, ptr %concealment_head, align 8, !dbg !3204
  %4 = load ptr, ptr %3, align 8, !dbg !3206
  %frame = getelementptr inbounds i8, ptr %concealment_fs, i64 48, !dbg !3207
  store ptr %4, ptr %frame, align 8, !dbg !3208, !DIAssignID !3209
    #dbg_assign(ptr %4, !3189, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !3209, ptr %frame, !DIExpression(), !3191)
  %is_output = getelementptr inbounds i8, ptr %concealment_fs, i64 36, !dbg !3210
  store i32 0, ptr %is_output, align 4, !dbg !3211, !DIAssignID !3212
    #dbg_assign(i32 0, !3189, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !3212, ptr %is_output, !DIExpression(), !3191)
  %is_reference = getelementptr inbounds i8, ptr %concealment_fs, i64 4, !dbg !3213
  store i32 0, ptr %is_reference, align 4, !dbg !3214, !DIAssignID !3215
    #dbg_assign(i32 0, !3189, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !3215, ptr %is_reference, !DIExpression(), !3191)
  store i32 3, ptr %concealment_fs, align 8, !dbg !3216, !DIAssignID !3217
    #dbg_assign(i32 3, !3189, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !3217, ptr %concealment_fs, !DIExpression(), !3191)
  call void @write_stored_frame(ptr noundef nonnull %0, ptr noundef nonnull %concealment_fs, i32 noundef %p_out) #18, !dbg !3218
  %5 = load ptr, ptr %concealment_head, align 8, !dbg !3219
    #dbg_value(ptr %0, !3220, !DIExpression(), !3224)
    #dbg_value(ptr %5, !3223, !DIExpression(), !3224)
  %next.i = getelementptr inbounds i8, ptr %5, i64 16, !dbg !3226
  %6 = load ptr, ptr %next.i, align 8, !dbg !3226
  store ptr %6, ptr %concealment_head, align 8, !dbg !3229
  %concealment_end.i = getelementptr inbounds i8, ptr %0, i64 848936, !dbg !3230
  %7 = load ptr, ptr %concealment_end.i, align 8, !dbg !3230
  %cmp3.i = icmp eq ptr %7, %5, !dbg !3232
  br i1 %cmp3.i, label %if.then4.i, label %delete_node.exit, !dbg !3233

if.then4.i:                                       ; preds = %if.then.i
  %next6.i = getelementptr inbounds i8, ptr %7, i64 16, !dbg !3234
  %8 = load ptr, ptr %next6.i, align 8, !dbg !3234
  store ptr %8, ptr %concealment_end.i, align 8, !dbg !3235
  br label %delete_node.exit, !dbg !3236

delete_node.exit:                                 ; preds = %if.then.i, %if.then4.i
  call void @free(ptr noundef nonnull %5) #18, !dbg !3237
  br label %if.end5, !dbg !3238

if.end5:                                          ; preds = %if.then, %delete_node.exit, %entry
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %concealment_fs) #18, !dbg !3239
  ret void, !dbg !3239
}

declare !dbg !3240 void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_ref_after_idr(ptr nocapture noundef readonly %p_Dpb, i32 noundef %pos) local_unnamed_addr #0 !dbg !3244 {
entry:
    #dbg_value(ptr %p_Dpb, !3246, !DIExpression(), !3250)
    #dbg_value(i32 %pos, !3247, !DIExpression(), !3250)
  %0 = load ptr, ptr %p_Dpb, align 8, !dbg !3251
    #dbg_value(ptr %0, !3248, !DIExpression(), !3250)
    #dbg_value(i32 1, !3249, !DIExpression(), !3250)
  %last_out_fs = getelementptr inbounds i8, ptr %0, i64 856048, !dbg !3252
  %1 = load ptr, ptr %last_out_fs, align 8, !dbg !3252
  %frame = getelementptr inbounds i8, ptr %1, i64 48, !dbg !3254
  %2 = load ptr, ptr %frame, align 8, !dbg !3254
  %cmp = icmp eq ptr %2, null, !dbg !3255
  br i1 %cmp, label %if.then, label %if.end, !dbg !3256

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds i8, ptr %0, i64 848780, !dbg !3257
  %3 = load i32, ptr %width, align 4, !dbg !3257
  %height = getelementptr inbounds i8, ptr %0, i64 848784, !dbg !3259
  %4 = load i32, ptr %height, align 8, !dbg !3259
  %width_cr = getelementptr inbounds i8, ptr %0, i64 848788, !dbg !3260
  %5 = load i32, ptr %width_cr, align 4, !dbg !3260
  %height_cr = getelementptr inbounds i8, ptr %0, i64 848792, !dbg !3261
  %6 = load i32, ptr %height_cr, align 8, !dbg !3261
  %call = tail call ptr @alloc_storable_picture(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #18, !dbg !3262
  %7 = load ptr, ptr %last_out_fs, align 8, !dbg !3263
  %frame3 = getelementptr inbounds i8, ptr %7, i64 48, !dbg !3264
  store ptr %call, ptr %frame3, align 8, !dbg !3265
  %8 = load ptr, ptr %last_out_fs, align 8, !dbg !3266
  store i32 3, ptr %8, align 8, !dbg !3267
  br label %if.end, !dbg !3268

if.end:                                           ; preds = %if.then, %entry
  %conceal_mode = getelementptr inbounds i8, ptr %0, i64 849240, !dbg !3269
  %9 = load i32, ptr %conceal_mode, align 8, !dbg !3269
  %cmp5 = icmp eq i32 %9, 2, !dbg !3271
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !3272

if.then6:                                         ; preds = %if.end
    #dbg_value(i32 2, !3249, !DIExpression(), !3250)
  store i32 1, ptr %conceal_mode, align 8, !dbg !3273
  br label %if.end8, !dbg !3275

if.end8:                                          ; preds = %if.then6, %if.end
  %temp.0 = phi i32 [ 2, %if.then6 ], [ 1, %if.end ], !dbg !3250
    #dbg_value(i32 %temp.0, !3249, !DIExpression(), !3250)
  %fs = getelementptr inbounds i8, ptr %p_Dpb, i64 16, !dbg !3276
  %10 = load ptr, ptr %fs, align 8, !dbg !3276
  %idxprom = sext i32 %pos to i64, !dbg !3277
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !3277
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !3277
  %frame9 = getelementptr inbounds i8, ptr %11, i64 48, !dbg !3278
  %12 = load ptr, ptr %frame9, align 8, !dbg !3278
  %13 = load ptr, ptr %last_out_fs, align 8, !dbg !3279
  %frame11 = getelementptr inbounds i8, ptr %13, i64 48, !dbg !3280
  %14 = load ptr, ptr %frame11, align 8, !dbg !3280
  tail call fastcc void @copy_to_conceal(ptr noundef %12, ptr noundef %14, ptr noundef nonnull %0), !dbg !3281
  store i32 %temp.0, ptr %conceal_mode, align 8, !dbg !3282
  ret void, !dbg !3283
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @buildPredRegionYUV(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %mv, i32 noundef %x, i32 noundef %y, ptr nocapture noundef writeonly %predMB) unnamed_addr #0 !dbg !3284 {
entry:
  %tmp_block = alloca ptr, align 8, !DIAssignID !3334
    #dbg_assign(i1 undef, !3293, !DIExpression(), !3334, ptr %tmp_block, !DIExpression(), !3335)
    #dbg_value(ptr %p_Vid, !3288, !DIExpression(), !3335)
    #dbg_value(ptr %mv, !3289, !DIExpression(), !3335)
    #dbg_value(i32 %x, !3290, !DIExpression(), !3335)
    #dbg_value(i32 %y, !3291, !DIExpression(), !3335)
    #dbg_value(ptr %predMB, !3292, !DIExpression(), !3335)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_block) #18, !dbg !3336
    #dbg_value(i32 0, !3294, !DIExpression(), !3335)
    #dbg_value(i32 0, !3295, !DIExpression(), !3335)
    #dbg_value(i32 0, !3296, !DIExpression(), !3335)
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
    #dbg_value(i32 0, !3298, !DIExpression(), !3335)
    #dbg_value(i32 0, !3299, !DIExpression(), !3335)
    #dbg_value(i32 0, !3300, !DIExpression(), !3335)
    #dbg_value(i32 0, !3301, !DIExpression(), !3335)
    #dbg_value(i32 0, !3302, !DIExpression(), !3335)
    #dbg_value(i32 0, !3304, !DIExpression(), !3335)
    #dbg_value(i32 0, !3305, !DIExpression(), !3335)
    #dbg_value(ptr %predMB, !3308, !DIExpression(), !3335)
  %dec_picture1 = getelementptr inbounds i8, ptr %p_Vid, i64 856456, !dbg !3337
  %0 = load ptr, ptr %dec_picture1, align 8, !dbg !3337
    #dbg_value(ptr %0, !3310, !DIExpression(), !3335)
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 268, !dbg !3338
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !3338
    #dbg_value(i32 %sub, !3329, !DIExpression(), !3335)
  %arrayidx = getelementptr inbounds i8, ptr %mv, i64 8, !dbg !3339
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3339
    #dbg_value(i32 %2, !3041, !DIExpression(), !3340)
    #dbg_value(i32 0, !3044, !DIExpression(), !3340)
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 0), !dbg !3342
    #dbg_value(i32 %cond.i, !3330, !DIExpression(), !3335)
  %div = sdiv i32 %y, 16, !dbg !3343
  %width = getelementptr inbounds i8, ptr %p_Vid, i64 848780, !dbg !3344
  %3 = load i32, ptr %width, align 4, !dbg !3344
  %div2 = sdiv i32 %3, 16, !dbg !3345
  %mul = mul nsw i32 %div2, %div, !dbg !3346
  %div3 = sdiv i32 %x, 16, !dbg !3347
  %add = add nsw i32 %mul, %div3, !dbg !3348
    #dbg_value(i32 %add, !3331, !DIExpression(), !3335)
    #dbg_value(ptr null, !3332, !DIExpression(), !3335)
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888, !dbg !3349
  %4 = load ptr, ptr %mb_data, align 8, !dbg !3349
  %idxprom = sext i32 %add to i64, !dbg !3350
  %arrayidx4 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom, !dbg !3350
    #dbg_value(ptr %arrayidx4, !3333, !DIExpression(), !3335)
  %5 = load ptr, ptr %arrayidx4, align 8, !dbg !3351
    #dbg_value(ptr %5, !3309, !DIExpression(), !3335)
  %tmp_res5 = getelementptr inbounds i8, ptr %5, i64 1368, !dbg !3352
  %6 = load ptr, ptr %tmp_res5, align 8, !dbg !3352
    #dbg_value(ptr %6, !3332, !DIExpression(), !3335)
  %call6 = call i32 @get_mem2Dpel(ptr noundef nonnull %tmp_block, i32 noundef 16, i32 noundef 16) #18, !dbg !3353
  %conv = trunc i32 %div3 to i16, !dbg !3354
  %mb = getelementptr inbounds i8, ptr %arrayidx4, i64 28, !dbg !3355
  store i16 %conv, ptr %mb, align 4, !dbg !3356
  %conv10 = trunc i32 %div to i16, !dbg !3357
  %y12 = getelementptr inbounds i8, ptr %arrayidx4, i64 30, !dbg !3358
  store i16 %conv10, ptr %y12, align 2, !dbg !3359
  %sext = shl i32 %div, 16, !dbg !3360
  %mul16 = ashr exact i32 %sext, 14, !dbg !3361
  %block_y = getelementptr inbounds i8, ptr %arrayidx4, i64 36, !dbg !3362
  store i32 %mul16, ptr %block_y, align 4, !dbg !3363
  %conv19 = ashr exact i32 %sext, 16, !dbg !3364
  %mb_cr_size_y = getelementptr inbounds i8, ptr %p_Vid, i64 849112, !dbg !3365
  %7 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3365
  %mul20 = mul nsw i32 %7, %conv19, !dbg !3366
  %pix_c_y = getelementptr inbounds i8, ptr %arrayidx4, i64 56, !dbg !3367
  store i32 %mul20, ptr %pix_c_y, align 8, !dbg !3368
  %sext457 = shl i32 %div3, 16, !dbg !3369
  %conv23 = ashr exact i32 %sext457, 16, !dbg !3369
  %mul24 = ashr exact i32 %sext457, 14, !dbg !3370
  %block_x = getelementptr inbounds i8, ptr %arrayidx4, i64 32, !dbg !3371
  store i32 %mul24, ptr %block_x, align 8, !dbg !3372
  %mb_cr_size_x = getelementptr inbounds i8, ptr %p_Vid, i64 849108, !dbg !3373
  %8 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3373
  %mul28 = mul nsw i32 %8, %conv23, !dbg !3374
  %pix_c_x = getelementptr inbounds i8, ptr %arrayidx4, i64 52, !dbg !3375
  store i32 %mul28, ptr %pix_c_x, align 4, !dbg !3376
    #dbg_value(i32 4, !3319, !DIExpression(), !3335)
  %arrayidx46 = getelementptr inbounds i8, ptr %mv, i64 4
  %listX = getelementptr inbounds i8, ptr %5, i64 264
  %idxprom49 = zext nneg i32 %cond.i to i64
  %iLumaStride = getelementptr inbounds i8, ptr %0, i64 356
  %size_x_m1 = getelementptr inbounds i8, ptr %0, i64 80
  %mb_field = getelementptr inbounds i8, ptr %arrayidx4, i64 384
  %max_pel_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849072
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060
  %size_y = getelementptr inbounds i8, ptr %0, i64 68
  %size_y_m1 = getelementptr inbounds i8, ptr %0, i64 84
  %mb_pred = getelementptr inbounds i8, ptr %5, i64 1248
    #dbg_value(i32 0, !3295, !DIExpression(), !3335)
  br label %for.body, !dbg !3377

for.body:                                         ; preds = %entry, %for.inc80
  %indvars.iv490 = phi i64 [ 0, %entry ], [ %indvars.iv.next491, %for.inc80 ]
    #dbg_value(i64 %indvars.iv490, !3295, !DIExpression(), !3335)
  %9 = shl nuw nsw i64 %indvars.iv490, 2, !dbg !3379
    #dbg_value(i64 %9, !3307, !DIExpression(), !3335)
  %10 = load i32, ptr %block_y, align 4, !dbg !3382
  %11 = trunc nuw nsw i64 %indvars.iv490 to i32, !dbg !3383
  %add32 = add nsw i32 %10, %11, !dbg !3383
    #dbg_value(i32 %add32, !3300, !DIExpression(), !3335)
    #dbg_value(i32 0, !3294, !DIExpression(), !3335)
  %mul45 = shl nsw i32 %add32, 4
    #dbg_value(i32 0, !3294, !DIExpression(), !3335)
  %12 = or disjoint i64 %9, 1
  %13 = or disjoint i64 %9, 2
  %14 = or disjoint i64 %9, 3
  br label %for.body36, !dbg !3384

for.body36:                                       ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %cond.end ]
    #dbg_value(i64 %indvars.iv, !3294, !DIExpression(), !3335)
  %15 = shl nuw nsw i64 %indvars.iv, 2, !dbg !3386
    #dbg_value(i64 %15, !3306, !DIExpression(), !3335)
  %16 = load i32, ptr %block_x, align 8, !dbg !3389
  %17 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !3390
  %add39 = add nsw i32 %16, %17, !dbg !3390
    #dbg_value(i32 %add39, !3301, !DIExpression(), !3335)
  %mul41 = shl nsw i32 %add39, 4, !dbg !3391
  %18 = load i32, ptr %mv, align 4, !dbg !3392
  %add43 = add nsw i32 %mul41, %18, !dbg !3393
    #dbg_value(i32 %add43, !3304, !DIExpression(), !3335)
  %19 = load i32, ptr %arrayidx46, align 4, !dbg !3394
  %add47 = add nsw i32 %19, %mul45, !dbg !3395
    #dbg_value(i32 %add47, !3305, !DIExpression(), !3335)
  %20 = load ptr, ptr %listX, align 8, !dbg !3396
  %arrayidx50 = getelementptr inbounds ptr, ptr %20, i64 %idxprom49, !dbg !3396
  %21 = load ptr, ptr %arrayidx50, align 8, !dbg !3396
  %22 = load ptr, ptr %tmp_block, align 8, !dbg !3397
  %23 = load i32, ptr %iLumaStride, align 4, !dbg !3398
  %24 = load i32, ptr %size_x_m1, align 8, !dbg !3399
  %25 = load i32, ptr %mb_field, align 8, !dbg !3400
  %tobool.not = icmp eq i32 %25, 0, !dbg !3401
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !3401

cond.true:                                        ; preds = %for.body36
  %26 = load i32, ptr %size_y, align 4, !dbg !3402
  %shr = ashr i32 %26, 1, !dbg !3403
  %sub51 = add nsw i32 %shr, -1, !dbg !3404
  br label %cond.end, !dbg !3401

cond.false:                                       ; preds = %for.body36
  %27 = load i32, ptr %size_y_m1, align 4, !dbg !3405
  br label %cond.end, !dbg !3401

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub51, %cond.true ], [ %27, %cond.false ], !dbg !3401
  %28 = load i32, ptr %max_pel_value_comp, align 8, !dbg !3406
  %29 = load i32, ptr %dc_pred_value_comp, align 4, !dbg !3407
  %conv54 = trunc i32 %29 to i16, !dbg !3408
  call void @get_block_luma(ptr noundef %21, i32 noundef %add43, i32 noundef %add47, i32 noundef 4, i32 noundef 4, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %cond, ptr noundef %6, i32 noundef %28, i16 noundef zeroext %conv54, ptr noundef nonnull %arrayidx4) #18, !dbg !3409
    #dbg_value(i32 0, !3296, !DIExpression(), !3335)
    #dbg_value(i32 0, !3296, !DIExpression(), !3335)
    #dbg_value(i64 0, !3296, !DIExpression(), !3335)
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
    #dbg_value(i64 0, !3297, !DIExpression(), !3335)
  %30 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %31 = load ptr, ptr %30, align 8, !dbg !3410
  %32 = load i16, ptr %31, align 2, !dbg !3410
  %33 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %34 = load ptr, ptr %33, align 8, !dbg !3416
  %arrayidx70 = getelementptr inbounds ptr, ptr %34, i64 %9, !dbg !3416
  %35 = load ptr, ptr %arrayidx70, align 8, !dbg !3416
  %arrayidx73 = getelementptr inbounds i16, ptr %35, i64 %15, !dbg !3416
  store i16 %32, ptr %arrayidx73, align 2, !dbg !3417
    #dbg_value(i64 1, !3297, !DIExpression(), !3335)
  %36 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.1 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !3410
  %37 = load ptr, ptr %arrayidx64.1, align 8, !dbg !3410
  %38 = load i16, ptr %37, align 2, !dbg !3410
  %39 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %40 = load ptr, ptr %39, align 8, !dbg !3416
  %arrayidx70.1 = getelementptr inbounds ptr, ptr %40, i64 %12, !dbg !3416
  %41 = load ptr, ptr %arrayidx70.1, align 8, !dbg !3416
  %arrayidx73.1 = getelementptr inbounds i16, ptr %41, i64 %15, !dbg !3416
  store i16 %38, ptr %arrayidx73.1, align 2, !dbg !3417
    #dbg_value(i64 2, !3297, !DIExpression(), !3335)
  %42 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.2 = getelementptr inbounds i8, ptr %42, i64 16, !dbg !3410
  %43 = load ptr, ptr %arrayidx64.2, align 8, !dbg !3410
  %44 = load i16, ptr %43, align 2, !dbg !3410
  %45 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %46 = load ptr, ptr %45, align 8, !dbg !3416
  %arrayidx70.2 = getelementptr inbounds ptr, ptr %46, i64 %13, !dbg !3416
  %47 = load ptr, ptr %arrayidx70.2, align 8, !dbg !3416
  %arrayidx73.2 = getelementptr inbounds i16, ptr %47, i64 %15, !dbg !3416
  store i16 %44, ptr %arrayidx73.2, align 2, !dbg !3417
    #dbg_value(i64 3, !3297, !DIExpression(), !3335)
  %48 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.3 = getelementptr inbounds i8, ptr %48, i64 24, !dbg !3410
  %49 = load ptr, ptr %arrayidx64.3, align 8, !dbg !3410
  %50 = load i16, ptr %49, align 2, !dbg !3410
  %51 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %52 = load ptr, ptr %51, align 8, !dbg !3416
  %arrayidx70.3 = getelementptr inbounds ptr, ptr %52, i64 %14, !dbg !3416
  %53 = load ptr, ptr %arrayidx70.3, align 8, !dbg !3416
  %arrayidx73.3 = getelementptr inbounds i16, ptr %53, i64 %15, !dbg !3416
  store i16 %50, ptr %arrayidx73.3, align 2, !dbg !3417
    #dbg_value(i64 4, !3297, !DIExpression(), !3335)
    #dbg_value(i64 1, !3296, !DIExpression(), !3335)
  %54 = or disjoint i64 %15, 1
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
    #dbg_value(i64 0, !3297, !DIExpression(), !3335)
  %55 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %56 = load ptr, ptr %55, align 8, !dbg !3410
  %arrayidx66.1479 = getelementptr inbounds i8, ptr %56, i64 2, !dbg !3410
  %57 = load i16, ptr %arrayidx66.1479, align 2, !dbg !3410
  %58 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %59 = load ptr, ptr %58, align 8, !dbg !3416
  %arrayidx70.1480 = getelementptr inbounds ptr, ptr %59, i64 %9, !dbg !3416
  %60 = load ptr, ptr %arrayidx70.1480, align 8, !dbg !3416
  %arrayidx73.1481 = getelementptr inbounds i16, ptr %60, i64 %54, !dbg !3416
  store i16 %57, ptr %arrayidx73.1481, align 2, !dbg !3417
    #dbg_value(i64 1, !3297, !DIExpression(), !3335)
  %61 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.1.1 = getelementptr inbounds i8, ptr %61, i64 8, !dbg !3410
  %62 = load ptr, ptr %arrayidx64.1.1, align 8, !dbg !3410
  %arrayidx66.1.1 = getelementptr inbounds i8, ptr %62, i64 2, !dbg !3410
  %63 = load i16, ptr %arrayidx66.1.1, align 2, !dbg !3410
  %64 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %65 = load ptr, ptr %64, align 8, !dbg !3416
  %arrayidx70.1.1 = getelementptr inbounds ptr, ptr %65, i64 %12, !dbg !3416
  %66 = load ptr, ptr %arrayidx70.1.1, align 8, !dbg !3416
  %arrayidx73.1.1 = getelementptr inbounds i16, ptr %66, i64 %54, !dbg !3416
  store i16 %63, ptr %arrayidx73.1.1, align 2, !dbg !3417
    #dbg_value(i64 2, !3297, !DIExpression(), !3335)
  %67 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.2.1 = getelementptr inbounds i8, ptr %67, i64 16, !dbg !3410
  %68 = load ptr, ptr %arrayidx64.2.1, align 8, !dbg !3410
  %arrayidx66.2.1 = getelementptr inbounds i8, ptr %68, i64 2, !dbg !3410
  %69 = load i16, ptr %arrayidx66.2.1, align 2, !dbg !3410
  %70 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %71 = load ptr, ptr %70, align 8, !dbg !3416
  %arrayidx70.2.1 = getelementptr inbounds ptr, ptr %71, i64 %13, !dbg !3416
  %72 = load ptr, ptr %arrayidx70.2.1, align 8, !dbg !3416
  %arrayidx73.2.1 = getelementptr inbounds i16, ptr %72, i64 %54, !dbg !3416
  store i16 %69, ptr %arrayidx73.2.1, align 2, !dbg !3417
    #dbg_value(i64 3, !3297, !DIExpression(), !3335)
  %73 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.3.1 = getelementptr inbounds i8, ptr %73, i64 24, !dbg !3410
  %74 = load ptr, ptr %arrayidx64.3.1, align 8, !dbg !3410
  %arrayidx66.3.1 = getelementptr inbounds i8, ptr %74, i64 2, !dbg !3410
  %75 = load i16, ptr %arrayidx66.3.1, align 2, !dbg !3410
  %76 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %77 = load ptr, ptr %76, align 8, !dbg !3416
  %arrayidx70.3.1 = getelementptr inbounds ptr, ptr %77, i64 %14, !dbg !3416
  %78 = load ptr, ptr %arrayidx70.3.1, align 8, !dbg !3416
  %arrayidx73.3.1 = getelementptr inbounds i16, ptr %78, i64 %54, !dbg !3416
  store i16 %75, ptr %arrayidx73.3.1, align 2, !dbg !3417
    #dbg_value(i64 4, !3297, !DIExpression(), !3335)
    #dbg_value(i64 2, !3296, !DIExpression(), !3335)
  %79 = or disjoint i64 %15, 2
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
    #dbg_value(i64 0, !3297, !DIExpression(), !3335)
  %80 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %81 = load ptr, ptr %80, align 8, !dbg !3410
  %arrayidx66.2482 = getelementptr inbounds i8, ptr %81, i64 4, !dbg !3410
  %82 = load i16, ptr %arrayidx66.2482, align 2, !dbg !3410
  %83 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %84 = load ptr, ptr %83, align 8, !dbg !3416
  %arrayidx70.2483 = getelementptr inbounds ptr, ptr %84, i64 %9, !dbg !3416
  %85 = load ptr, ptr %arrayidx70.2483, align 8, !dbg !3416
  %arrayidx73.2484 = getelementptr inbounds i16, ptr %85, i64 %79, !dbg !3416
  store i16 %82, ptr %arrayidx73.2484, align 2, !dbg !3417
    #dbg_value(i64 1, !3297, !DIExpression(), !3335)
  %86 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.1.2 = getelementptr inbounds i8, ptr %86, i64 8, !dbg !3410
  %87 = load ptr, ptr %arrayidx64.1.2, align 8, !dbg !3410
  %arrayidx66.1.2 = getelementptr inbounds i8, ptr %87, i64 4, !dbg !3410
  %88 = load i16, ptr %arrayidx66.1.2, align 2, !dbg !3410
  %89 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %90 = load ptr, ptr %89, align 8, !dbg !3416
  %arrayidx70.1.2 = getelementptr inbounds ptr, ptr %90, i64 %12, !dbg !3416
  %91 = load ptr, ptr %arrayidx70.1.2, align 8, !dbg !3416
  %arrayidx73.1.2 = getelementptr inbounds i16, ptr %91, i64 %79, !dbg !3416
  store i16 %88, ptr %arrayidx73.1.2, align 2, !dbg !3417
    #dbg_value(i64 2, !3297, !DIExpression(), !3335)
  %92 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.2.2 = getelementptr inbounds i8, ptr %92, i64 16, !dbg !3410
  %93 = load ptr, ptr %arrayidx64.2.2, align 8, !dbg !3410
  %arrayidx66.2.2 = getelementptr inbounds i8, ptr %93, i64 4, !dbg !3410
  %94 = load i16, ptr %arrayidx66.2.2, align 2, !dbg !3410
  %95 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %96 = load ptr, ptr %95, align 8, !dbg !3416
  %arrayidx70.2.2 = getelementptr inbounds ptr, ptr %96, i64 %13, !dbg !3416
  %97 = load ptr, ptr %arrayidx70.2.2, align 8, !dbg !3416
  %arrayidx73.2.2 = getelementptr inbounds i16, ptr %97, i64 %79, !dbg !3416
  store i16 %94, ptr %arrayidx73.2.2, align 2, !dbg !3417
    #dbg_value(i64 3, !3297, !DIExpression(), !3335)
  %98 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.3.2 = getelementptr inbounds i8, ptr %98, i64 24, !dbg !3410
  %99 = load ptr, ptr %arrayidx64.3.2, align 8, !dbg !3410
  %arrayidx66.3.2 = getelementptr inbounds i8, ptr %99, i64 4, !dbg !3410
  %100 = load i16, ptr %arrayidx66.3.2, align 2, !dbg !3410
  %101 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %102 = load ptr, ptr %101, align 8, !dbg !3416
  %arrayidx70.3.2 = getelementptr inbounds ptr, ptr %102, i64 %14, !dbg !3416
  %103 = load ptr, ptr %arrayidx70.3.2, align 8, !dbg !3416
  %arrayidx73.3.2 = getelementptr inbounds i16, ptr %103, i64 %79, !dbg !3416
  store i16 %100, ptr %arrayidx73.3.2, align 2, !dbg !3417
    #dbg_value(i64 4, !3297, !DIExpression(), !3335)
    #dbg_value(i64 3, !3296, !DIExpression(), !3335)
  %104 = or disjoint i64 %15, 3
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
    #dbg_value(i64 0, !3297, !DIExpression(), !3335)
  %105 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %106 = load ptr, ptr %105, align 8, !dbg !3410
  %arrayidx66.3485 = getelementptr inbounds i8, ptr %106, i64 6, !dbg !3410
  %107 = load i16, ptr %arrayidx66.3485, align 2, !dbg !3410
  %108 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %109 = load ptr, ptr %108, align 8, !dbg !3416
  %arrayidx70.3486 = getelementptr inbounds ptr, ptr %109, i64 %9, !dbg !3416
  %110 = load ptr, ptr %arrayidx70.3486, align 8, !dbg !3416
  %arrayidx73.3487 = getelementptr inbounds i16, ptr %110, i64 %104, !dbg !3416
  store i16 %107, ptr %arrayidx73.3487, align 2, !dbg !3417
    #dbg_value(i64 1, !3297, !DIExpression(), !3335)
  %111 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.1.3 = getelementptr inbounds i8, ptr %111, i64 8, !dbg !3410
  %112 = load ptr, ptr %arrayidx64.1.3, align 8, !dbg !3410
  %arrayidx66.1.3 = getelementptr inbounds i8, ptr %112, i64 6, !dbg !3410
  %113 = load i16, ptr %arrayidx66.1.3, align 2, !dbg !3410
  %114 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %115 = load ptr, ptr %114, align 8, !dbg !3416
  %arrayidx70.1.3 = getelementptr inbounds ptr, ptr %115, i64 %12, !dbg !3416
  %116 = load ptr, ptr %arrayidx70.1.3, align 8, !dbg !3416
  %arrayidx73.1.3 = getelementptr inbounds i16, ptr %116, i64 %104, !dbg !3416
  store i16 %113, ptr %arrayidx73.1.3, align 2, !dbg !3417
    #dbg_value(i64 2, !3297, !DIExpression(), !3335)
  %117 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.2.3 = getelementptr inbounds i8, ptr %117, i64 16, !dbg !3410
  %118 = load ptr, ptr %arrayidx64.2.3, align 8, !dbg !3410
  %arrayidx66.2.3 = getelementptr inbounds i8, ptr %118, i64 6, !dbg !3410
  %119 = load i16, ptr %arrayidx66.2.3, align 2, !dbg !3410
  %120 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %121 = load ptr, ptr %120, align 8, !dbg !3416
  %arrayidx70.2.3 = getelementptr inbounds ptr, ptr %121, i64 %13, !dbg !3416
  %122 = load ptr, ptr %arrayidx70.2.3, align 8, !dbg !3416
  %arrayidx73.2.3 = getelementptr inbounds i16, ptr %122, i64 %104, !dbg !3416
  store i16 %119, ptr %arrayidx73.2.3, align 2, !dbg !3417
    #dbg_value(i64 3, !3297, !DIExpression(), !3335)
  %123 = load ptr, ptr %tmp_block, align 8, !dbg !3410
  %arrayidx64.3.3 = getelementptr inbounds i8, ptr %123, i64 24, !dbg !3410
  %124 = load ptr, ptr %arrayidx64.3.3, align 8, !dbg !3410
  %arrayidx66.3.3 = getelementptr inbounds i8, ptr %124, i64 6, !dbg !3410
  %125 = load i16, ptr %arrayidx66.3.3, align 2, !dbg !3410
  %126 = load ptr, ptr %mb_pred, align 8, !dbg !3415
  %127 = load ptr, ptr %126, align 8, !dbg !3416
  %arrayidx70.3.3 = getelementptr inbounds ptr, ptr %127, i64 %14, !dbg !3416
  %128 = load ptr, ptr %arrayidx70.3.3, align 8, !dbg !3416
  %arrayidx73.3.3 = getelementptr inbounds i16, ptr %128, i64 %104, !dbg !3416
  store i16 %125, ptr %arrayidx73.3.3, align 2, !dbg !3417
    #dbg_value(i64 4, !3297, !DIExpression(), !3335)
    #dbg_value(i64 4, !3296, !DIExpression(), !3335)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3418
    #dbg_value(i64 %indvars.iv.next, !3294, !DIExpression(), !3335)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !3419
  br i1 %exitcond.not, label %for.inc80, label %for.body36, !dbg !3384, !llvm.loop !3420

for.inc80:                                        ; preds = %cond.end
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1, !dbg !3422
    #dbg_value(i64 %indvars.iv.next491, !3295, !DIExpression(), !3335)
  %exitcond494.not = icmp eq i64 %indvars.iv.next491, 4, !dbg !3423
  br i1 %exitcond494.not, label %for.cond87.preheader, label %for.body, !dbg !3377, !llvm.loop !3424

for.cond87.preheader:                             ; preds = %for.inc80, %for.cond87.preheader
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.cond87.preheader ], [ 0, %for.inc80 ]
    #dbg_value(i64 %indvars.iv500, !3295, !DIExpression(), !3335)
  %129 = shl nuw nsw i64 %indvars.iv500, 4
    #dbg_value(i32 0, !3294, !DIExpression(), !3335)
    #dbg_value(i64 0, !3294, !DIExpression(), !3335)
  %130 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %131 = load ptr, ptr %130, align 8, !dbg !3433
  %arrayidx94 = getelementptr inbounds ptr, ptr %131, i64 %indvars.iv500, !dbg !3433
  %132 = load ptr, ptr %arrayidx94, align 8, !dbg !3433
  %133 = load i16, ptr %132, align 2, !dbg !3433
  %arrayidx100 = getelementptr inbounds i16, ptr %predMB, i64 %129, !dbg !3434
  store i16 %133, ptr %arrayidx100, align 2, !dbg !3435
    #dbg_value(i64 1, !3294, !DIExpression(), !3335)
  %134 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %135 = load ptr, ptr %134, align 8, !dbg !3433
  %arrayidx94.1 = getelementptr inbounds ptr, ptr %135, i64 %indvars.iv500, !dbg !3433
  %136 = load ptr, ptr %arrayidx94.1, align 8, !dbg !3433
  %arrayidx96.1 = getelementptr inbounds i8, ptr %136, i64 2, !dbg !3433
  %137 = load i16, ptr %arrayidx96.1, align 2, !dbg !3433
  %138 = or disjoint i64 %129, 1, !dbg !3436
  %arrayidx100.1 = getelementptr inbounds i16, ptr %predMB, i64 %138, !dbg !3434
  store i16 %137, ptr %arrayidx100.1, align 2, !dbg !3435
    #dbg_value(i64 2, !3294, !DIExpression(), !3335)
  %139 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %140 = load ptr, ptr %139, align 8, !dbg !3433
  %arrayidx94.2 = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv500, !dbg !3433
  %141 = load ptr, ptr %arrayidx94.2, align 8, !dbg !3433
  %arrayidx96.2 = getelementptr inbounds i8, ptr %141, i64 4, !dbg !3433
  %142 = load i16, ptr %arrayidx96.2, align 2, !dbg !3433
  %143 = or disjoint i64 %129, 2, !dbg !3436
  %arrayidx100.2 = getelementptr inbounds i16, ptr %predMB, i64 %143, !dbg !3434
  store i16 %142, ptr %arrayidx100.2, align 2, !dbg !3435
    #dbg_value(i64 3, !3294, !DIExpression(), !3335)
  %144 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %145 = load ptr, ptr %144, align 8, !dbg !3433
  %arrayidx94.3 = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv500, !dbg !3433
  %146 = load ptr, ptr %arrayidx94.3, align 8, !dbg !3433
  %arrayidx96.3 = getelementptr inbounds i8, ptr %146, i64 6, !dbg !3433
  %147 = load i16, ptr %arrayidx96.3, align 2, !dbg !3433
  %148 = or disjoint i64 %129, 3, !dbg !3436
  %arrayidx100.3 = getelementptr inbounds i16, ptr %predMB, i64 %148, !dbg !3434
  store i16 %147, ptr %arrayidx100.3, align 2, !dbg !3435
    #dbg_value(i64 4, !3294, !DIExpression(), !3335)
  %149 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %150 = load ptr, ptr %149, align 8, !dbg !3433
  %arrayidx94.4 = getelementptr inbounds ptr, ptr %150, i64 %indvars.iv500, !dbg !3433
  %151 = load ptr, ptr %arrayidx94.4, align 8, !dbg !3433
  %arrayidx96.4 = getelementptr inbounds i8, ptr %151, i64 8, !dbg !3433
  %152 = load i16, ptr %arrayidx96.4, align 2, !dbg !3433
  %153 = or disjoint i64 %129, 4, !dbg !3436
  %arrayidx100.4 = getelementptr inbounds i16, ptr %predMB, i64 %153, !dbg !3434
  store i16 %152, ptr %arrayidx100.4, align 2, !dbg !3435
    #dbg_value(i64 5, !3294, !DIExpression(), !3335)
  %154 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %155 = load ptr, ptr %154, align 8, !dbg !3433
  %arrayidx94.5 = getelementptr inbounds ptr, ptr %155, i64 %indvars.iv500, !dbg !3433
  %156 = load ptr, ptr %arrayidx94.5, align 8, !dbg !3433
  %arrayidx96.5 = getelementptr inbounds i8, ptr %156, i64 10, !dbg !3433
  %157 = load i16, ptr %arrayidx96.5, align 2, !dbg !3433
  %158 = or disjoint i64 %129, 5, !dbg !3436
  %arrayidx100.5 = getelementptr inbounds i16, ptr %predMB, i64 %158, !dbg !3434
  store i16 %157, ptr %arrayidx100.5, align 2, !dbg !3435
    #dbg_value(i64 6, !3294, !DIExpression(), !3335)
  %159 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %160 = load ptr, ptr %159, align 8, !dbg !3433
  %arrayidx94.6 = getelementptr inbounds ptr, ptr %160, i64 %indvars.iv500, !dbg !3433
  %161 = load ptr, ptr %arrayidx94.6, align 8, !dbg !3433
  %arrayidx96.6 = getelementptr inbounds i8, ptr %161, i64 12, !dbg !3433
  %162 = load i16, ptr %arrayidx96.6, align 2, !dbg !3433
  %163 = or disjoint i64 %129, 6, !dbg !3436
  %arrayidx100.6 = getelementptr inbounds i16, ptr %predMB, i64 %163, !dbg !3434
  store i16 %162, ptr %arrayidx100.6, align 2, !dbg !3435
    #dbg_value(i64 7, !3294, !DIExpression(), !3335)
  %164 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %165 = load ptr, ptr %164, align 8, !dbg !3433
  %arrayidx94.7 = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv500, !dbg !3433
  %166 = load ptr, ptr %arrayidx94.7, align 8, !dbg !3433
  %arrayidx96.7 = getelementptr inbounds i8, ptr %166, i64 14, !dbg !3433
  %167 = load i16, ptr %arrayidx96.7, align 2, !dbg !3433
  %168 = or disjoint i64 %129, 7, !dbg !3436
  %arrayidx100.7 = getelementptr inbounds i16, ptr %predMB, i64 %168, !dbg !3434
  store i16 %167, ptr %arrayidx100.7, align 2, !dbg !3435
    #dbg_value(i64 8, !3294, !DIExpression(), !3335)
  %169 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %170 = load ptr, ptr %169, align 8, !dbg !3433
  %arrayidx94.8 = getelementptr inbounds ptr, ptr %170, i64 %indvars.iv500, !dbg !3433
  %171 = load ptr, ptr %arrayidx94.8, align 8, !dbg !3433
  %arrayidx96.8 = getelementptr inbounds i8, ptr %171, i64 16, !dbg !3433
  %172 = load i16, ptr %arrayidx96.8, align 2, !dbg !3433
  %173 = or disjoint i64 %129, 8, !dbg !3436
  %arrayidx100.8 = getelementptr inbounds i16, ptr %predMB, i64 %173, !dbg !3434
  store i16 %172, ptr %arrayidx100.8, align 2, !dbg !3435
    #dbg_value(i64 9, !3294, !DIExpression(), !3335)
  %174 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %175 = load ptr, ptr %174, align 8, !dbg !3433
  %arrayidx94.9 = getelementptr inbounds ptr, ptr %175, i64 %indvars.iv500, !dbg !3433
  %176 = load ptr, ptr %arrayidx94.9, align 8, !dbg !3433
  %arrayidx96.9 = getelementptr inbounds i8, ptr %176, i64 18, !dbg !3433
  %177 = load i16, ptr %arrayidx96.9, align 2, !dbg !3433
  %178 = or disjoint i64 %129, 9, !dbg !3436
  %arrayidx100.9 = getelementptr inbounds i16, ptr %predMB, i64 %178, !dbg !3434
  store i16 %177, ptr %arrayidx100.9, align 2, !dbg !3435
    #dbg_value(i64 10, !3294, !DIExpression(), !3335)
  %179 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %180 = load ptr, ptr %179, align 8, !dbg !3433
  %arrayidx94.10 = getelementptr inbounds ptr, ptr %180, i64 %indvars.iv500, !dbg !3433
  %181 = load ptr, ptr %arrayidx94.10, align 8, !dbg !3433
  %arrayidx96.10 = getelementptr inbounds i8, ptr %181, i64 20, !dbg !3433
  %182 = load i16, ptr %arrayidx96.10, align 2, !dbg !3433
  %183 = or disjoint i64 %129, 10, !dbg !3436
  %arrayidx100.10 = getelementptr inbounds i16, ptr %predMB, i64 %183, !dbg !3434
  store i16 %182, ptr %arrayidx100.10, align 2, !dbg !3435
    #dbg_value(i64 11, !3294, !DIExpression(), !3335)
  %184 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %185 = load ptr, ptr %184, align 8, !dbg !3433
  %arrayidx94.11 = getelementptr inbounds ptr, ptr %185, i64 %indvars.iv500, !dbg !3433
  %186 = load ptr, ptr %arrayidx94.11, align 8, !dbg !3433
  %arrayidx96.11 = getelementptr inbounds i8, ptr %186, i64 22, !dbg !3433
  %187 = load i16, ptr %arrayidx96.11, align 2, !dbg !3433
  %188 = or disjoint i64 %129, 11, !dbg !3436
  %arrayidx100.11 = getelementptr inbounds i16, ptr %predMB, i64 %188, !dbg !3434
  store i16 %187, ptr %arrayidx100.11, align 2, !dbg !3435
    #dbg_value(i64 12, !3294, !DIExpression(), !3335)
  %189 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %190 = load ptr, ptr %189, align 8, !dbg !3433
  %arrayidx94.12 = getelementptr inbounds ptr, ptr %190, i64 %indvars.iv500, !dbg !3433
  %191 = load ptr, ptr %arrayidx94.12, align 8, !dbg !3433
  %arrayidx96.12 = getelementptr inbounds i8, ptr %191, i64 24, !dbg !3433
  %192 = load i16, ptr %arrayidx96.12, align 2, !dbg !3433
  %193 = or disjoint i64 %129, 12, !dbg !3436
  %arrayidx100.12 = getelementptr inbounds i16, ptr %predMB, i64 %193, !dbg !3434
  store i16 %192, ptr %arrayidx100.12, align 2, !dbg !3435
    #dbg_value(i64 13, !3294, !DIExpression(), !3335)
  %194 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %195 = load ptr, ptr %194, align 8, !dbg !3433
  %arrayidx94.13 = getelementptr inbounds ptr, ptr %195, i64 %indvars.iv500, !dbg !3433
  %196 = load ptr, ptr %arrayidx94.13, align 8, !dbg !3433
  %arrayidx96.13 = getelementptr inbounds i8, ptr %196, i64 26, !dbg !3433
  %197 = load i16, ptr %arrayidx96.13, align 2, !dbg !3433
  %198 = or disjoint i64 %129, 13, !dbg !3436
  %arrayidx100.13 = getelementptr inbounds i16, ptr %predMB, i64 %198, !dbg !3434
  store i16 %197, ptr %arrayidx100.13, align 2, !dbg !3435
    #dbg_value(i64 14, !3294, !DIExpression(), !3335)
  %199 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %200 = load ptr, ptr %199, align 8, !dbg !3433
  %arrayidx94.14 = getelementptr inbounds ptr, ptr %200, i64 %indvars.iv500, !dbg !3433
  %201 = load ptr, ptr %arrayidx94.14, align 8, !dbg !3433
  %arrayidx96.14 = getelementptr inbounds i8, ptr %201, i64 28, !dbg !3433
  %202 = load i16, ptr %arrayidx96.14, align 2, !dbg !3433
  %203 = or disjoint i64 %129, 14, !dbg !3436
  %arrayidx100.14 = getelementptr inbounds i16, ptr %predMB, i64 %203, !dbg !3434
  store i16 %202, ptr %arrayidx100.14, align 2, !dbg !3435
    #dbg_value(i64 15, !3294, !DIExpression(), !3335)
  %204 = load ptr, ptr %mb_pred, align 8, !dbg !3426
  %205 = load ptr, ptr %204, align 8, !dbg !3433
  %arrayidx94.15 = getelementptr inbounds ptr, ptr %205, i64 %indvars.iv500, !dbg !3433
  %206 = load ptr, ptr %arrayidx94.15, align 8, !dbg !3433
  %arrayidx96.15 = getelementptr inbounds i8, ptr %206, i64 30, !dbg !3433
  %207 = load i16, ptr %arrayidx96.15, align 2, !dbg !3433
  %208 = or disjoint i64 %129, 15, !dbg !3436
  %arrayidx100.15 = getelementptr inbounds i16, ptr %predMB, i64 %208, !dbg !3434
  store i16 %207, ptr %arrayidx100.15, align 2, !dbg !3435
    #dbg_value(i64 16, !3294, !DIExpression(), !3335)
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1, !dbg !3437
    #dbg_value(i64 %indvars.iv.next501, !3295, !DIExpression(), !3335)
  %exitcond504.not = icmp eq i64 %indvars.iv.next501, 16, !dbg !3438
  br i1 %exitcond504.not, label %for.end106, label %for.cond87.preheader, !dbg !3439, !llvm.loop !3440

for.end106:                                       ; preds = %for.cond87.preheader
    #dbg_value(ptr %predMB, !3308, !DIExpression(DW_OP_plus_uconst, 512, DW_OP_stack_value), !3335)
  %209 = load i32, ptr %chroma_format_idc, align 4, !dbg !3442
  %cmp108.not = icmp eq i32 %209, 0, !dbg !3444
  br i1 %cmp108.not, label %if.end, label %if.then, !dbg !3445

if.then:                                          ; preds = %for.end106
  %sub = add nsw i32 %1, -1, !dbg !3446
  %add.ptr = getelementptr inbounds i8, ptr %predMB, i64 512, !dbg !3447
    #dbg_value(ptr %add.ptr, !3308, !DIExpression(), !3335)
  %210 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3448
  %div111 = sdiv i32 64, %210, !dbg !3450
    #dbg_value(i32 %div111, !3320, !DIExpression(), !3335)
  %sub112 = add nsw i32 %div111, -1, !dbg !3451
    #dbg_value(i32 %sub112, !3322, !DIExpression(), !3335)
  %211 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3452
  %div114 = sdiv i32 64, %211, !dbg !3453
    #dbg_value(i32 %div114, !3321, !DIExpression(), !3335)
  %sub115 = add nsw i32 %div114, -1, !dbg !3454
    #dbg_value(i32 %sub115, !3323, !DIExpression(), !3335)
  %mul116 = mul nsw i32 %div114, %div111, !dbg !3455
    #dbg_value(i32 %mul116, !3324, !DIExpression(), !3335)
  %shr117 = ashr i32 %mul116, 1, !dbg !3456
    #dbg_value(i32 %shr117, !3325, !DIExpression(), !3335)
    #dbg_value(i32 0, !3303, !DIExpression(), !3335)
  %num_uv_blocks = getelementptr inbounds i8, ptr %p_Vid, i64 849100
    #dbg_value(i32 0, !3303, !DIExpression(), !3335)
    #dbg_value(ptr %add.ptr, !3308, !DIExpression(), !3335)
  %idxprom130 = sext i32 %sub to i64
  %size_x_cr = getelementptr inbounds i8, ptr %0, i64 72
  %size_y_cr = getelementptr inbounds i8, ptr %0, i64 76
  br label %for.cond122.preheader, !dbg !3457

for.cond122.preheader:                            ; preds = %if.then, %for.end299
  %cmp119 = phi i1 [ true, %if.then ], [ false, %for.end299 ]
  %indvars.iv536 = phi i64 [ 0, %if.then ], [ 1, %for.end299 ]
  %pMB.0473 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr300, %for.end299 ]
    #dbg_value(i64 %indvars.iv536, !3303, !DIExpression(), !3335)
    #dbg_value(ptr %pMB.0473, !3308, !DIExpression(), !3335)
    #dbg_value(i32 0, !3327, !DIExpression(), !3335)
  %212 = load i32, ptr %num_uv_blocks, align 4, !dbg !3459
  %cmp123469 = icmp sgt i32 %212, 0, !dbg !3464
  br i1 %cmp123469, label %for.cond126.preheader, label %for.cond278.preheader.preheader, !dbg !3465

for.cond126.preheader:                            ; preds = %for.cond122.preheader, %for.inc271
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %for.inc271 ], [ 0, %for.cond122.preheader ]
    #dbg_value(i64 %indvars.iv523, !3327, !DIExpression(), !3335)
    #dbg_value(i32 0, !3328, !DIExpression(), !3335)
  br label %for.body129, !dbg !3466

for.body129:                                      ; preds = %for.cond126.preheader, %for.inc268
  %indvars.iv519 = phi i64 [ 0, %for.cond126.preheader ], [ %indvars.iv.next520, %for.inc268 ]
    #dbg_value(i64 %indvars.iv519, !3328, !DIExpression(), !3335)
  %arrayidx135 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %idxprom130, i64 %indvars.iv523, i64 %indvars.iv519, !dbg !3469
  %213 = load i8, ptr %arrayidx135, align 1, !dbg !3469
  %conv136 = zext i8 %213 to i32, !dbg !3469
    #dbg_value(i32 %conv136, !3307, !DIExpression(), !3335)
  %214 = load i32, ptr %pix_c_y, align 8, !dbg !3472
  %add138 = add nsw i32 %214, %conv136, !dbg !3473
    #dbg_value(i32 %add138, !3300, !DIExpression(), !3335)
  %arrayidx144 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %idxprom130, i64 %indvars.iv523, i64 %indvars.iv519, !dbg !3474
  %215 = load i8, ptr %arrayidx144, align 1, !dbg !3474
  %conv145 = zext i8 %215 to i32, !dbg !3474
    #dbg_value(i32 %conv145, !3306, !DIExpression(), !3335)
  %216 = load i32, ptr %pix_c_x, align 4, !dbg !3475
  %add147 = add nsw i32 %216, %conv145, !dbg !3476
    #dbg_value(i32 %add147, !3301, !DIExpression(), !3335)
    #dbg_value(i32 0, !3297, !DIExpression(), !3335)
  %217 = zext i8 %215 to i64, !dbg !3477
  %218 = zext i8 %213 to i64, !dbg !3477
  br label %for.body151, !dbg !3477

for.body151:                                      ; preds = %for.body129, %for.inc265
  %indvars.iv512 = phi i64 [ 0, %for.body129 ], [ %indvars.iv.next513, %for.inc265 ]
    #dbg_value(i64 %indvars.iv512, !3297, !DIExpression(), !3335)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !3302, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_div, DW_OP_div, DW_OP_stack_value), !3335)
    #dbg_value(i32 0, !3296, !DIExpression(), !3335)
  %219 = trunc i64 %indvars.iv512 to i32
  %220 = add i32 %add138, %219
  %221 = mul i32 %220, %div114
  br label %for.body159, !dbg !3479

for.body159:                                      ; preds = %for.body151, %for.body159
  %indvars.iv505 = phi i64 [ 0, %for.body151 ], [ %indvars.iv.next506, %for.body159 ]
    #dbg_value(i64 %indvars.iv505, !3296, !DIExpression(), !3335)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !3326, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_div, DW_OP_div, DW_OP_stack_value), !3335)
  %222 = load i32, ptr %mv, align 4, !dbg !3483
  %223 = trunc i64 %indvars.iv505 to i32, !dbg !3486
  %224 = add i32 %add147, %223, !dbg !3486
  %225 = mul i32 %224, %div111, !dbg !3486
  %add167 = add nsw i32 %222, %225, !dbg !3486
    #dbg_value(i32 %add167, !3298, !DIExpression(), !3335)
  %226 = load i32, ptr %arrayidx46, align 4, !dbg !3487
  %add171 = add nsw i32 %226, %221, !dbg !3488
    #dbg_value(i32 %add171, !3299, !DIExpression(), !3335)
  %227 = load i32, ptr %size_x_cr, align 8, !dbg !3489
  %sub172 = add nsw i32 %227, -1, !dbg !3490
  %div173 = sdiv i32 %add167, %div111, !dbg !3491
    #dbg_value(i32 0, !3032, !DIExpression(), !3492)
    #dbg_value(i32 %sub172, !3037, !DIExpression(), !3492)
    #dbg_value(i32 %div173, !3038, !DIExpression(), !3492)
    #dbg_value(i32 %div173, !3041, !DIExpression(), !3494)
    #dbg_value(i32 0, !3044, !DIExpression(), !3494)
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %div173, i32 0), !dbg !3496
    #dbg_value(i32 %cond.i.i, !3038, !DIExpression(), !3492)
    #dbg_value(i32 %cond.i.i, !2261, !DIExpression(), !3497)
    #dbg_value(i32 %sub172, !2266, !DIExpression(), !3497)
  %cond.i4.i = call noundef i32 @llvm.smin.i32(i32 %cond.i.i, i32 %sub172), !dbg !3499
    #dbg_value(i32 %cond.i4.i, !3038, !DIExpression(), !3492)
    #dbg_value(i32 %cond.i4.i, !3311, !DIExpression(), !3335)
  %228 = load i32, ptr %size_y_cr, align 4, !dbg !3500
  %sub175 = add nsw i32 %228, -1, !dbg !3501
  %div176 = sdiv i32 %add171, %div114, !dbg !3502
    #dbg_value(i32 0, !3032, !DIExpression(), !3503)
    #dbg_value(i32 %sub175, !3037, !DIExpression(), !3503)
    #dbg_value(i32 %div176, !3038, !DIExpression(), !3503)
    #dbg_value(i32 %div176, !3041, !DIExpression(), !3505)
    #dbg_value(i32 0, !3044, !DIExpression(), !3505)
  %cond.i.i451 = call noundef i32 @llvm.smax.i32(i32 %div176, i32 0), !dbg !3507
    #dbg_value(i32 %cond.i.i451, !3038, !DIExpression(), !3503)
    #dbg_value(i32 %cond.i.i451, !2261, !DIExpression(), !3508)
    #dbg_value(i32 %sub175, !2266, !DIExpression(), !3508)
  %cond.i4.i452 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i451, i32 %sub175), !dbg !3510
    #dbg_value(i32 %cond.i4.i452, !3038, !DIExpression(), !3503)
    #dbg_value(i32 %cond.i4.i452, !3312, !DIExpression(), !3335)
  %add180 = add nsw i32 %add167, %sub112, !dbg !3511
  %div181 = sdiv i32 %add180, %div111, !dbg !3512
    #dbg_value(i32 0, !3032, !DIExpression(), !3513)
    #dbg_value(i32 %sub172, !3037, !DIExpression(), !3513)
    #dbg_value(i32 %div181, !3038, !DIExpression(), !3513)
    #dbg_value(i32 %div181, !3041, !DIExpression(), !3515)
    #dbg_value(i32 0, !3044, !DIExpression(), !3515)
  %cond.i.i453 = call noundef i32 @llvm.smax.i32(i32 %div181, i32 0), !dbg !3517
    #dbg_value(i32 %cond.i.i453, !3038, !DIExpression(), !3513)
    #dbg_value(i32 %cond.i.i453, !2261, !DIExpression(), !3518)
    #dbg_value(i32 %sub172, !2266, !DIExpression(), !3518)
  %cond.i4.i454 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i453, i32 %sub172), !dbg !3520
    #dbg_value(i32 %cond.i4.i454, !3038, !DIExpression(), !3513)
    #dbg_value(i32 %cond.i4.i454, !3313, !DIExpression(), !3335)
  %add185 = add nsw i32 %add171, %sub115, !dbg !3521
  %div186 = sdiv i32 %add185, %div114, !dbg !3522
    #dbg_value(i32 0, !3032, !DIExpression(), !3523)
    #dbg_value(i32 %sub175, !3037, !DIExpression(), !3523)
    #dbg_value(i32 %div186, !3038, !DIExpression(), !3523)
    #dbg_value(i32 %div186, !3041, !DIExpression(), !3525)
    #dbg_value(i32 0, !3044, !DIExpression(), !3525)
  %cond.i.i455 = call noundef i32 @llvm.smax.i32(i32 %div186, i32 0), !dbg !3527
    #dbg_value(i32 %cond.i.i455, !3038, !DIExpression(), !3523)
    #dbg_value(i32 %cond.i.i455, !2261, !DIExpression(), !3528)
    #dbg_value(i32 %sub175, !2266, !DIExpression(), !3528)
  %cond.i4.i456 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i455, i32 %sub175), !dbg !3530
    #dbg_value(i32 %cond.i4.i456, !3038, !DIExpression(), !3523)
    #dbg_value(i32 %cond.i4.i456, !3314, !DIExpression(), !3335)
  %and = and i32 %add167, %sub112, !dbg !3531
    #dbg_value(i32 %and, !3315, !DIExpression(), !3335)
  %and188 = and i32 %add171, %sub115, !dbg !3532
    #dbg_value(i32 %and188, !3316, !DIExpression(), !3335)
  %sub189 = sub nsw i32 %div111, %and, !dbg !3533
    #dbg_value(i32 %sub189, !3317, !DIExpression(), !3335)
  %sub190 = sub nsw i32 %div114, %and188, !dbg !3534
    #dbg_value(i32 %sub190, !3318, !DIExpression(), !3335)
  %229 = load ptr, ptr %listX, align 8, !dbg !3535
  %arrayidx195 = getelementptr inbounds ptr, ptr %229, i64 %idxprom49, !dbg !3535
  %230 = load ptr, ptr %arrayidx195, align 8, !dbg !3535
  %imgUV = getelementptr inbounds i8, ptr %230, i64 136, !dbg !3536
  %231 = load ptr, ptr %imgUV, align 8, !dbg !3536
  %arrayidx197 = getelementptr inbounds ptr, ptr %231, i64 %indvars.iv536, !dbg !3535
  %232 = load ptr, ptr %arrayidx197, align 8, !dbg !3535
  %idxprom198 = sext i32 %cond.i4.i452 to i64, !dbg !3535
  %arrayidx199 = getelementptr inbounds ptr, ptr %232, i64 %idxprom198, !dbg !3535
  %233 = load ptr, ptr %arrayidx199, align 8, !dbg !3535
  %idxprom200 = sext i32 %cond.i4.i to i64, !dbg !3535
  %arrayidx201 = getelementptr inbounds i16, ptr %233, i64 %idxprom200, !dbg !3535
  %234 = load i16, ptr %arrayidx201, align 2, !dbg !3535
  %conv202 = zext i16 %234 to i32, !dbg !3535
  %mul203 = mul i32 %sub189, %conv202, !dbg !3537
  %idxprom214 = sext i32 %cond.i4.i454 to i64, !dbg !3538
  %arrayidx215 = getelementptr inbounds i16, ptr %233, i64 %idxprom214, !dbg !3538
  %235 = load i16, ptr %arrayidx215, align 2, !dbg !3538
  %conv216 = zext i16 %235 to i32, !dbg !3538
  %mul217 = mul i32 %and, %conv216, !dbg !3539
  %idxprom227 = sext i32 %cond.i4.i456 to i64, !dbg !3540
  %arrayidx228 = getelementptr inbounds ptr, ptr %232, i64 %idxprom227, !dbg !3540
  %236 = load ptr, ptr %arrayidx228, align 8, !dbg !3540
  %arrayidx230 = getelementptr inbounds i16, ptr %236, i64 %idxprom200, !dbg !3540
  %237 = load i16, ptr %arrayidx230, align 2, !dbg !3540
  %conv231 = zext i16 %237 to i32, !dbg !3540
  %mul232 = mul i32 %sub189, %conv231, !dbg !3541
  %arrayidx245 = getelementptr inbounds i16, ptr %236, i64 %idxprom214, !dbg !3542
  %238 = load i16, ptr %arrayidx245, align 2, !dbg !3542
  %conv246 = zext i16 %238 to i32, !dbg !3542
  %mul247 = mul i32 %and, %conv246, !dbg !3543
  %reass.add = add i32 %mul247, %mul232
  %reass.mul = mul i32 %reass.add, %and188
  %reass.add458 = add i32 %mul217, %mul203
  %reass.mul459 = mul i32 %reass.add458, %sub190
  %add248 = add i32 %reass.mul459, %shr117, !dbg !3544
  %add249 = add i32 %add248, %reass.mul, !dbg !3545
  %div250 = sdiv i32 %add249, %mul116, !dbg !3546
  %conv251 = trunc i32 %div250 to i16, !dbg !3547
  %239 = load ptr, ptr %mb_pred, align 8, !dbg !3548
  %240 = getelementptr inbounds ptr, ptr %239, i64 %indvars.iv536, !dbg !3549
  %arrayidx255 = getelementptr inbounds i8, ptr %240, i64 8, !dbg !3549
  %241 = load ptr, ptr %arrayidx255, align 8, !dbg !3549
  %242 = getelementptr inbounds ptr, ptr %241, i64 %indvars.iv512, !dbg !3549
  %arrayidx258 = getelementptr inbounds ptr, ptr %242, i64 %218, !dbg !3549
  %243 = load ptr, ptr %arrayidx258, align 8, !dbg !3549
  %244 = getelementptr inbounds i16, ptr %243, i64 %indvars.iv505, !dbg !3549
  %arrayidx261 = getelementptr inbounds i16, ptr %244, i64 %217, !dbg !3549
  store i16 %conv251, ptr %arrayidx261, align 2, !dbg !3550
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1, !dbg !3551
    #dbg_value(i64 %indvars.iv.next506, !3296, !DIExpression(), !3335)
  %exitcond511.not = icmp eq i64 %indvars.iv.next506, 4, !dbg !3552
  br i1 %exitcond511.not, label %for.inc265, label %for.body159, !dbg !3479, !llvm.loop !3553

for.inc265:                                       ; preds = %for.body159
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1, !dbg !3555
    #dbg_value(i64 %indvars.iv.next513, !3297, !DIExpression(), !3335)
  %exitcond518.not = icmp eq i64 %indvars.iv.next513, 4, !dbg !3556
  br i1 %exitcond518.not, label %for.inc268, label %for.body151, !dbg !3477, !llvm.loop !3557

for.inc268:                                       ; preds = %for.inc265
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1, !dbg !3559
    #dbg_value(i64 %indvars.iv.next520, !3328, !DIExpression(), !3335)
  %exitcond522.not = icmp eq i64 %indvars.iv.next520, 4, !dbg !3560
  br i1 %exitcond522.not, label %for.inc271, label %for.body129, !dbg !3466, !llvm.loop !3561

for.inc271:                                       ; preds = %for.inc268
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1, !dbg !3563
    #dbg_value(i64 %indvars.iv.next524, !3327, !DIExpression(), !3335)
  %245 = load i32, ptr %num_uv_blocks, align 4, !dbg !3459
  %246 = sext i32 %245 to i64, !dbg !3464
  %cmp123 = icmp slt i64 %indvars.iv.next524, %246, !dbg !3464
  br i1 %cmp123, label %for.cond126.preheader, label %for.cond278.preheader.preheader, !dbg !3465, !llvm.loop !3564

for.cond278.preheader.preheader:                  ; preds = %for.inc271, %for.cond122.preheader
  br label %for.cond278.preheader, !dbg !3566

for.cond278.preheader:                            ; preds = %for.cond278.preheader.preheader, %for.cond278.preheader
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %for.cond278.preheader ], [ 0, %for.cond278.preheader.preheader ]
    #dbg_value(i64 %indvars.iv531, !3295, !DIExpression(), !3335)
  %247 = shl nuw nsw i64 %indvars.iv531, 3
    #dbg_value(i64 0, !3294, !DIExpression(), !3335)
  %248 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %249 = getelementptr inbounds ptr, ptr %248, i64 %indvars.iv536, !dbg !3574
  %arrayidx285 = getelementptr inbounds i8, ptr %249, i64 8, !dbg !3574
  %250 = load ptr, ptr %arrayidx285, align 8, !dbg !3574
  %arrayidx287 = getelementptr inbounds ptr, ptr %250, i64 %indvars.iv531, !dbg !3574
  %251 = load ptr, ptr %arrayidx287, align 8, !dbg !3574
  %252 = load i16, ptr %251, align 2, !dbg !3574
  %arrayidx293 = getelementptr inbounds i16, ptr %pMB.0473, i64 %247, !dbg !3575
  store i16 %252, ptr %arrayidx293, align 2, !dbg !3576
    #dbg_value(i64 1, !3294, !DIExpression(), !3335)
  %253 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %254 = getelementptr inbounds ptr, ptr %253, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.1 = getelementptr inbounds i8, ptr %254, i64 8, !dbg !3574
  %255 = load ptr, ptr %arrayidx285.1, align 8, !dbg !3574
  %arrayidx287.1 = getelementptr inbounds ptr, ptr %255, i64 %indvars.iv531, !dbg !3574
  %256 = load ptr, ptr %arrayidx287.1, align 8, !dbg !3574
  %arrayidx289.1 = getelementptr inbounds i8, ptr %256, i64 2, !dbg !3574
  %257 = load i16, ptr %arrayidx289.1, align 2, !dbg !3574
  %258 = or disjoint i64 %247, 1, !dbg !3577
  %arrayidx293.1 = getelementptr inbounds i16, ptr %pMB.0473, i64 %258, !dbg !3575
  store i16 %257, ptr %arrayidx293.1, align 2, !dbg !3576
    #dbg_value(i64 2, !3294, !DIExpression(), !3335)
  %259 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %260 = getelementptr inbounds ptr, ptr %259, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.2 = getelementptr inbounds i8, ptr %260, i64 8, !dbg !3574
  %261 = load ptr, ptr %arrayidx285.2, align 8, !dbg !3574
  %arrayidx287.2 = getelementptr inbounds ptr, ptr %261, i64 %indvars.iv531, !dbg !3574
  %262 = load ptr, ptr %arrayidx287.2, align 8, !dbg !3574
  %arrayidx289.2 = getelementptr inbounds i8, ptr %262, i64 4, !dbg !3574
  %263 = load i16, ptr %arrayidx289.2, align 2, !dbg !3574
  %264 = or disjoint i64 %247, 2, !dbg !3577
  %arrayidx293.2 = getelementptr inbounds i16, ptr %pMB.0473, i64 %264, !dbg !3575
  store i16 %263, ptr %arrayidx293.2, align 2, !dbg !3576
    #dbg_value(i64 3, !3294, !DIExpression(), !3335)
  %265 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %266 = getelementptr inbounds ptr, ptr %265, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.3 = getelementptr inbounds i8, ptr %266, i64 8, !dbg !3574
  %267 = load ptr, ptr %arrayidx285.3, align 8, !dbg !3574
  %arrayidx287.3 = getelementptr inbounds ptr, ptr %267, i64 %indvars.iv531, !dbg !3574
  %268 = load ptr, ptr %arrayidx287.3, align 8, !dbg !3574
  %arrayidx289.3 = getelementptr inbounds i8, ptr %268, i64 6, !dbg !3574
  %269 = load i16, ptr %arrayidx289.3, align 2, !dbg !3574
  %270 = or disjoint i64 %247, 3, !dbg !3577
  %arrayidx293.3 = getelementptr inbounds i16, ptr %pMB.0473, i64 %270, !dbg !3575
  store i16 %269, ptr %arrayidx293.3, align 2, !dbg !3576
    #dbg_value(i64 4, !3294, !DIExpression(), !3335)
  %271 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %272 = getelementptr inbounds ptr, ptr %271, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.4 = getelementptr inbounds i8, ptr %272, i64 8, !dbg !3574
  %273 = load ptr, ptr %arrayidx285.4, align 8, !dbg !3574
  %arrayidx287.4 = getelementptr inbounds ptr, ptr %273, i64 %indvars.iv531, !dbg !3574
  %274 = load ptr, ptr %arrayidx287.4, align 8, !dbg !3574
  %arrayidx289.4 = getelementptr inbounds i8, ptr %274, i64 8, !dbg !3574
  %275 = load i16, ptr %arrayidx289.4, align 2, !dbg !3574
  %276 = or disjoint i64 %247, 4, !dbg !3577
  %arrayidx293.4 = getelementptr inbounds i16, ptr %pMB.0473, i64 %276, !dbg !3575
  store i16 %275, ptr %arrayidx293.4, align 2, !dbg !3576
    #dbg_value(i64 5, !3294, !DIExpression(), !3335)
  %277 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %278 = getelementptr inbounds ptr, ptr %277, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.5 = getelementptr inbounds i8, ptr %278, i64 8, !dbg !3574
  %279 = load ptr, ptr %arrayidx285.5, align 8, !dbg !3574
  %arrayidx287.5 = getelementptr inbounds ptr, ptr %279, i64 %indvars.iv531, !dbg !3574
  %280 = load ptr, ptr %arrayidx287.5, align 8, !dbg !3574
  %arrayidx289.5 = getelementptr inbounds i8, ptr %280, i64 10, !dbg !3574
  %281 = load i16, ptr %arrayidx289.5, align 2, !dbg !3574
  %282 = or disjoint i64 %247, 5, !dbg !3577
  %arrayidx293.5 = getelementptr inbounds i16, ptr %pMB.0473, i64 %282, !dbg !3575
  store i16 %281, ptr %arrayidx293.5, align 2, !dbg !3576
    #dbg_value(i64 6, !3294, !DIExpression(), !3335)
  %283 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %284 = getelementptr inbounds ptr, ptr %283, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.6 = getelementptr inbounds i8, ptr %284, i64 8, !dbg !3574
  %285 = load ptr, ptr %arrayidx285.6, align 8, !dbg !3574
  %arrayidx287.6 = getelementptr inbounds ptr, ptr %285, i64 %indvars.iv531, !dbg !3574
  %286 = load ptr, ptr %arrayidx287.6, align 8, !dbg !3574
  %arrayidx289.6 = getelementptr inbounds i8, ptr %286, i64 12, !dbg !3574
  %287 = load i16, ptr %arrayidx289.6, align 2, !dbg !3574
  %288 = or disjoint i64 %247, 6, !dbg !3577
  %arrayidx293.6 = getelementptr inbounds i16, ptr %pMB.0473, i64 %288, !dbg !3575
  store i16 %287, ptr %arrayidx293.6, align 2, !dbg !3576
    #dbg_value(i64 7, !3294, !DIExpression(), !3335)
  %289 = load ptr, ptr %mb_pred, align 8, !dbg !3568
  %290 = getelementptr inbounds ptr, ptr %289, i64 %indvars.iv536, !dbg !3574
  %arrayidx285.7 = getelementptr inbounds i8, ptr %290, i64 8, !dbg !3574
  %291 = load ptr, ptr %arrayidx285.7, align 8, !dbg !3574
  %arrayidx287.7 = getelementptr inbounds ptr, ptr %291, i64 %indvars.iv531, !dbg !3574
  %292 = load ptr, ptr %arrayidx287.7, align 8, !dbg !3574
  %arrayidx289.7 = getelementptr inbounds i8, ptr %292, i64 14, !dbg !3574
  %293 = load i16, ptr %arrayidx289.7, align 2, !dbg !3574
  %294 = or disjoint i64 %247, 7, !dbg !3577
  %arrayidx293.7 = getelementptr inbounds i16, ptr %pMB.0473, i64 %294, !dbg !3575
  store i16 %293, ptr %arrayidx293.7, align 2, !dbg !3576
    #dbg_value(i64 8, !3294, !DIExpression(), !3335)
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1, !dbg !3578
    #dbg_value(i64 %indvars.iv.next532, !3295, !DIExpression(), !3335)
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, 8, !dbg !3579
  br i1 %exitcond535.not, label %for.end299, label %for.cond278.preheader, !dbg !3566, !llvm.loop !3580

for.end299:                                       ; preds = %for.cond278.preheader
  %add.ptr300 = getelementptr inbounds i8, ptr %pMB.0473, i64 128, !dbg !3582
    #dbg_value(ptr %add.ptr300, !3308, !DIExpression(), !3335)
    #dbg_value(i64 %indvars.iv536, !3303, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3335)
  br i1 %cmp119, label %for.cond122.preheader, label %if.end, !dbg !3457, !llvm.loop !3583

if.end:                                           ; preds = %for.end299, %for.end106
  %295 = load ptr, ptr %tmp_block, align 8, !dbg !3585
  call void @free_mem2Dpel(ptr noundef %295) #18, !dbg !3586
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_block) #18, !dbg !3587
  ret void, !dbg !3587
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @edgeDistortion(ptr nocapture noundef readonly %predBlocks, i32 noundef %currYBlockNum, ptr nocapture noundef readonly %predMB, ptr nocapture noundef readonly %recY, i32 noundef %picSizeX) unnamed_addr #15 !dbg !3588 {
entry:
    #dbg_value(ptr %predBlocks, !3592, !DIExpression(), !3606)
    #dbg_value(i32 %currYBlockNum, !3593, !DIExpression(), !3606)
    #dbg_value(ptr %predMB, !3594, !DIExpression(), !3606)
    #dbg_value(ptr %recY, !3595, !DIExpression(), !3606)
    #dbg_value(i32 %picSizeX, !3596, !DIExpression(), !3606)
    #dbg_value(i32 16, !3597, !DIExpression(), !3606)
    #dbg_value(i32 3, !3602, !DIExpression(), !3606)
    #dbg_value(ptr null, !3603, !DIExpression(), !3606)
    #dbg_value(ptr null, !3604, !DIExpression(), !3606)
    #dbg_value(i32 0, !3605, !DIExpression(), !3606)
  %shr = ashr i32 %picSizeX, 3, !dbg !3607
  %div = sdiv i32 %currYBlockNum, %shr, !dbg !3607
  %shl = shl i32 %picSizeX, 3, !dbg !3608
  %mul = mul i32 %shl, %div, !dbg !3609
  %idx.ext = sext i32 %mul to i64, !dbg !3610
  %add.ptr = getelementptr inbounds i16, ptr %recY, i64 %idx.ext, !dbg !3610
  %rem = srem i32 %currYBlockNum, %shr, !dbg !3611
  %shl2 = shl nsw i32 %rem, 3, !dbg !3612
  %idx.ext3 = sext i32 %shl2 to i64, !dbg !3613
  %add.ptr4 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext3, !dbg !3613
    #dbg_value(ptr %add.ptr4, !3603, !DIExpression(), !3606)
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr4, i64 32
  %mul37 = shl nsw i32 %picSizeX, 4
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i16, ptr %add.ptr4, i64 %idx.ext38
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr4, i64 -2
  %idx.ext6 = sext i32 %picSizeX to i64
  %idx.neg = sub nsw i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i16, ptr %add.ptr4, i64 %idx.neg
  %arrayidx70 = getelementptr inbounds i8, ptr %predMB, i64 30
  %arrayidx70.1 = getelementptr inbounds i8, ptr %predMB, i64 62
  %arrayidx74.1 = getelementptr inbounds i16, ptr %add.ptr61, i64 %idx.ext6
  %arrayidx70.2 = getelementptr inbounds i8, ptr %predMB, i64 94
  %arrayidx74.2.idx = shl nsw i64 %idx.ext6, 2
  %arrayidx74.2 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.2.idx
  %arrayidx70.3 = getelementptr inbounds i8, ptr %predMB, i64 126
  %arrayidx74.3.idx = mul nsw i64 %idx.ext6, 6
  %arrayidx74.3 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.3.idx
  %arrayidx70.4 = getelementptr inbounds i8, ptr %predMB, i64 158
  %arrayidx74.4.idx = shl nsw i64 %idx.ext6, 3
  %arrayidx74.4 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.4.idx
  %arrayidx70.5 = getelementptr inbounds i8, ptr %predMB, i64 190
  %arrayidx74.5.idx = mul nsw i64 %idx.ext6, 10
  %arrayidx74.5 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.5.idx
  %arrayidx70.6 = getelementptr inbounds i8, ptr %predMB, i64 222
  %arrayidx74.6.idx = mul nsw i64 %idx.ext6, 12
  %arrayidx74.6 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.6.idx
  %arrayidx70.7 = getelementptr inbounds i8, ptr %predMB, i64 254
  %arrayidx74.7.idx = mul nsw i64 %idx.ext6, 14
  %arrayidx74.7 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.7.idx
  %arrayidx70.8 = getelementptr inbounds i8, ptr %predMB, i64 286
  %arrayidx74.8.idx = shl nsw i64 %idx.ext6, 4
  %arrayidx74.8 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.8.idx
  %arrayidx70.9 = getelementptr inbounds i8, ptr %predMB, i64 318
  %arrayidx74.9.idx = mul nsw i64 %idx.ext6, 18
  %arrayidx74.9 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.9.idx
  %arrayidx70.10 = getelementptr inbounds i8, ptr %predMB, i64 350
  %arrayidx74.10.idx = mul nsw i64 %idx.ext6, 20
  %arrayidx74.10 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.10.idx
  %arrayidx70.11 = getelementptr inbounds i8, ptr %predMB, i64 382
  %arrayidx74.11.idx = mul nsw i64 %idx.ext6, 22
  %arrayidx74.11 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.11.idx
  %arrayidx70.12 = getelementptr inbounds i8, ptr %predMB, i64 414
  %arrayidx74.12.idx = mul nsw i64 %idx.ext6, 24
  %arrayidx74.12 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.12.idx
  %arrayidx70.13 = getelementptr inbounds i8, ptr %predMB, i64 446
  %arrayidx74.13.idx = mul nsw i64 %idx.ext6, 26
  %arrayidx74.13 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.13.idx
  %arrayidx70.14 = getelementptr inbounds i8, ptr %predMB, i64 478
  %arrayidx74.14.idx = mul nsw i64 %idx.ext6, 28
  %arrayidx74.14 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.14.idx
  %arrayidx70.15 = getelementptr inbounds i8, ptr %predMB, i64 510
  %arrayidx74.15.idx = mul nsw i64 %idx.ext6, 30
  %arrayidx74.15 = getelementptr inbounds i8, ptr %add.ptr61, i64 %arrayidx74.15.idx
  %arrayidx48 = getelementptr inbounds i8, ptr %predMB, i64 480
  %arrayidx48.1 = getelementptr inbounds i8, ptr %predMB, i64 482
  %arrayidx51.1 = getelementptr inbounds i8, ptr %add.ptr39, i64 2
  %arrayidx48.2 = getelementptr inbounds i8, ptr %predMB, i64 484
  %arrayidx51.2 = getelementptr inbounds i8, ptr %add.ptr39, i64 4
  %arrayidx48.3 = getelementptr inbounds i8, ptr %predMB, i64 486
  %arrayidx51.3 = getelementptr inbounds i8, ptr %add.ptr39, i64 6
  %arrayidx48.4 = getelementptr inbounds i8, ptr %predMB, i64 488
  %arrayidx51.4 = getelementptr inbounds i8, ptr %add.ptr39, i64 8
  %arrayidx48.5 = getelementptr inbounds i8, ptr %predMB, i64 490
  %arrayidx51.5 = getelementptr inbounds i8, ptr %add.ptr39, i64 10
  %arrayidx48.6 = getelementptr inbounds i8, ptr %predMB, i64 492
  %arrayidx51.6 = getelementptr inbounds i8, ptr %add.ptr39, i64 12
  %arrayidx48.7 = getelementptr inbounds i8, ptr %predMB, i64 494
  %arrayidx51.7 = getelementptr inbounds i8, ptr %add.ptr39, i64 14
  %arrayidx48.8 = getelementptr inbounds i8, ptr %predMB, i64 496
  %arrayidx51.8 = getelementptr inbounds i8, ptr %add.ptr39, i64 16
  %arrayidx48.9 = getelementptr inbounds i8, ptr %predMB, i64 498
  %arrayidx51.9 = getelementptr inbounds i8, ptr %add.ptr39, i64 18
  %arrayidx48.10 = getelementptr inbounds i8, ptr %predMB, i64 500
  %arrayidx51.10 = getelementptr inbounds i8, ptr %add.ptr39, i64 20
  %arrayidx48.11 = getelementptr inbounds i8, ptr %predMB, i64 502
  %arrayidx51.11 = getelementptr inbounds i8, ptr %add.ptr39, i64 22
  %arrayidx48.12 = getelementptr inbounds i8, ptr %predMB, i64 504
  %arrayidx51.12 = getelementptr inbounds i8, ptr %add.ptr39, i64 24
  %arrayidx48.13 = getelementptr inbounds i8, ptr %predMB, i64 506
  %arrayidx51.13 = getelementptr inbounds i8, ptr %add.ptr39, i64 26
  %arrayidx48.14 = getelementptr inbounds i8, ptr %predMB, i64 508
  %arrayidx51.14 = getelementptr inbounds i8, ptr %add.ptr39, i64 28
  %arrayidx48.15 = getelementptr inbounds i8, ptr %predMB, i64 510
  %arrayidx51.15 = getelementptr inbounds i8, ptr %add.ptr39, i64 30
  %arrayidx24.1 = getelementptr inbounds i8, ptr %predMB, i64 32
  %arrayidx28.1 = getelementptr inbounds i16, ptr %add.ptr17, i64 %idx.ext6
  %arrayidx24.2 = getelementptr inbounds i8, ptr %predMB, i64 64
  %arrayidx28.2.idx = shl nsw i64 %idx.ext6, 2
  %arrayidx28.2 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.2.idx
  %arrayidx24.3 = getelementptr inbounds i8, ptr %predMB, i64 96
  %arrayidx28.3.idx = mul nsw i64 %idx.ext6, 6
  %arrayidx28.3 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.3.idx
  %arrayidx24.4 = getelementptr inbounds i8, ptr %predMB, i64 128
  %arrayidx28.4.idx = shl nsw i64 %idx.ext6, 3
  %arrayidx28.4 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.4.idx
  %arrayidx24.5 = getelementptr inbounds i8, ptr %predMB, i64 160
  %arrayidx28.5.idx = mul nsw i64 %idx.ext6, 10
  %arrayidx28.5 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.5.idx
  %arrayidx24.6 = getelementptr inbounds i8, ptr %predMB, i64 192
  %arrayidx28.6.idx = mul nsw i64 %idx.ext6, 12
  %arrayidx28.6 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.6.idx
  %arrayidx24.7 = getelementptr inbounds i8, ptr %predMB, i64 224
  %arrayidx28.7.idx = mul nsw i64 %idx.ext6, 14
  %arrayidx28.7 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.7.idx
  %arrayidx24.8 = getelementptr inbounds i8, ptr %predMB, i64 256
  %arrayidx28.8.idx = shl nsw i64 %idx.ext6, 4
  %arrayidx28.8 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.8.idx
  %arrayidx24.9 = getelementptr inbounds i8, ptr %predMB, i64 288
  %arrayidx28.9.idx = mul nsw i64 %idx.ext6, 18
  %arrayidx28.9 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.9.idx
  %arrayidx24.10 = getelementptr inbounds i8, ptr %predMB, i64 320
  %arrayidx28.10.idx = mul nsw i64 %idx.ext6, 20
  %arrayidx28.10 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.10.idx
  %arrayidx24.11 = getelementptr inbounds i8, ptr %predMB, i64 352
  %arrayidx28.11.idx = mul nsw i64 %idx.ext6, 22
  %arrayidx28.11 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.11.idx
  %arrayidx24.12 = getelementptr inbounds i8, ptr %predMB, i64 384
  %arrayidx28.12.idx = mul nsw i64 %idx.ext6, 24
  %arrayidx28.12 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.12.idx
  %arrayidx24.13 = getelementptr inbounds i8, ptr %predMB, i64 416
  %arrayidx28.13.idx = mul nsw i64 %idx.ext6, 26
  %arrayidx28.13 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.13.idx
  %arrayidx24.14 = getelementptr inbounds i8, ptr %predMB, i64 448
  %arrayidx28.14.idx = mul nsw i64 %idx.ext6, 28
  %arrayidx28.14 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.14.idx
  %arrayidx24.15 = getelementptr inbounds i8, ptr %predMB, i64 480
  %arrayidx28.15.idx = mul nsw i64 %idx.ext6, 30
  %arrayidx28.15 = getelementptr inbounds i8, ptr %add.ptr17, i64 %arrayidx28.15.idx
  %arrayidx12.1 = getelementptr inbounds i8, ptr %predMB, i64 2
  %arrayidx14.1 = getelementptr inbounds i8, ptr %add.ptr7, i64 2
  %arrayidx12.2 = getelementptr inbounds i8, ptr %predMB, i64 4
  %arrayidx14.2 = getelementptr inbounds i8, ptr %add.ptr7, i64 4
  %arrayidx12.3 = getelementptr inbounds i8, ptr %predMB, i64 6
  %arrayidx14.3 = getelementptr inbounds i8, ptr %add.ptr7, i64 6
  %arrayidx12.4 = getelementptr inbounds i8, ptr %predMB, i64 8
  %arrayidx14.4 = getelementptr inbounds i8, ptr %add.ptr7, i64 8
  %arrayidx12.5 = getelementptr inbounds i8, ptr %predMB, i64 10
  %arrayidx14.5 = getelementptr inbounds i8, ptr %add.ptr7, i64 10
  %arrayidx12.6 = getelementptr inbounds i8, ptr %predMB, i64 12
  %arrayidx14.6 = getelementptr inbounds i8, ptr %add.ptr7, i64 12
  %arrayidx12.7 = getelementptr inbounds i8, ptr %predMB, i64 14
  %arrayidx14.7 = getelementptr inbounds i8, ptr %add.ptr7, i64 14
  %arrayidx12.8 = getelementptr inbounds i8, ptr %predMB, i64 16
  %arrayidx14.8 = getelementptr inbounds i8, ptr %add.ptr7, i64 16
  %arrayidx12.9 = getelementptr inbounds i8, ptr %predMB, i64 18
  %arrayidx14.9 = getelementptr inbounds i8, ptr %add.ptr7, i64 18
  %arrayidx12.10 = getelementptr inbounds i8, ptr %predMB, i64 20
  %arrayidx14.10 = getelementptr inbounds i8, ptr %add.ptr7, i64 20
  %arrayidx12.11 = getelementptr inbounds i8, ptr %predMB, i64 22
  %arrayidx14.11 = getelementptr inbounds i8, ptr %add.ptr7, i64 22
  %arrayidx12.12 = getelementptr inbounds i8, ptr %predMB, i64 24
  %arrayidx14.12 = getelementptr inbounds i8, ptr %add.ptr7, i64 24
  %arrayidx12.13 = getelementptr inbounds i8, ptr %predMB, i64 26
  %arrayidx14.13 = getelementptr inbounds i8, ptr %add.ptr7, i64 26
  %arrayidx12.14 = getelementptr inbounds i8, ptr %predMB, i64 28
  %arrayidx14.14 = getelementptr inbounds i8, ptr %add.ptr7, i64 28
  %arrayidx12.15 = getelementptr inbounds i8, ptr %predMB, i64 30
  %arrayidx14.15 = getelementptr inbounds i8, ptr %add.ptr7, i64 30
    #dbg_value(i32 3, !3602, !DIExpression(), !3606)
    #dbg_value(i32 0, !3600, !DIExpression(), !3606)
    #dbg_value(i32 0, !3601, !DIExpression(), !3606)
    #dbg_value(i32 4, !3599, !DIExpression(), !3606)
  br label %for.body, !dbg !3614

for.body:                                         ; preds = %entry, %for.inc83
  %indvars.iv = phi i64 [ 4, %entry ], [ %indvars.iv.next, %for.inc83 ]
  %numOfPredBlocks.0171 = phi i32 [ 0, %entry ], [ %numOfPredBlocks.1, %for.inc83 ]
  %distortion.0170 = phi i32 [ 0, %entry ], [ %distortion.6, %for.inc83 ]
    #dbg_value(i32 %numOfPredBlocks.0171, !3601, !DIExpression(), !3606)
    #dbg_value(i32 %distortion.0170, !3600, !DIExpression(), !3606)
    #dbg_value(i64 %indvars.iv, !3599, !DIExpression(), !3606)
  %arrayidx = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv, !dbg !3617
  %0 = load i32, ptr %arrayidx, align 4, !dbg !3617
  %cmp5.not = icmp slt i32 %0, 3, !dbg !3621
  br i1 %cmp5.not, label %for.inc83, label %if.then, !dbg !3622

if.then:                                          ; preds = %for.body
  %1 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !3623
  switch i32 %1, label %sw.epilog [
    i32 4, label %for.body10.preheader
    i32 5, label %for.body21.preheader
    i32 6, label %for.body45.preheader
    i32 7, label %sw.epilog.sink.split
  ], !dbg !3623

for.body45.preheader:                             ; preds = %if.then
    #dbg_value(i32 %sub76.15, !240, !DIExpression(), !3625)
    #dbg_value(i32 %sub76.15, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3625)
    #dbg_value(i32 %add78.15, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split, !dbg !3631

for.body21.preheader:                             ; preds = %if.then
    #dbg_value(i32 %sub76.15, !240, !DIExpression(), !3632)
    #dbg_value(i32 %sub76.15, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3632)
    #dbg_value(i32 %add78.15, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split, !dbg !3631

for.body10.preheader:                             ; preds = %if.then
    #dbg_value(i32 %sub76.15, !240, !DIExpression(), !3637)
    #dbg_value(i32 %sub76.15, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3637)
    #dbg_value(i32 %add78.15, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split, !dbg !3631

sw.epilog.sink.split:                             ; preds = %if.then, %for.body10.preheader, %for.body21.preheader, %for.body45.preheader
  %arrayidx70.sink = phi ptr [ %arrayidx48, %for.body45.preheader ], [ %predMB, %for.body21.preheader ], [ %predMB, %for.body10.preheader ], [ %arrayidx70, %if.then ]
  %add.ptr61.sink = phi ptr [ %add.ptr39, %for.body45.preheader ], [ %add.ptr17, %for.body21.preheader ], [ %add.ptr7, %for.body10.preheader ], [ %add.ptr61, %if.then ]
  %arrayidx70.1.sink = phi ptr [ %arrayidx48.1, %for.body45.preheader ], [ %arrayidx24.1, %for.body21.preheader ], [ %arrayidx12.1, %for.body10.preheader ], [ %arrayidx70.1, %if.then ]
  %arrayidx74.1.sink = phi ptr [ %arrayidx51.1, %for.body45.preheader ], [ %arrayidx28.1, %for.body21.preheader ], [ %arrayidx14.1, %for.body10.preheader ], [ %arrayidx74.1, %if.then ]
  %arrayidx70.2.sink = phi ptr [ %arrayidx48.2, %for.body45.preheader ], [ %arrayidx24.2, %for.body21.preheader ], [ %arrayidx12.2, %for.body10.preheader ], [ %arrayidx70.2, %if.then ]
  %arrayidx74.2.sink = phi ptr [ %arrayidx51.2, %for.body45.preheader ], [ %arrayidx28.2, %for.body21.preheader ], [ %arrayidx14.2, %for.body10.preheader ], [ %arrayidx74.2, %if.then ]
  %arrayidx70.3.sink = phi ptr [ %arrayidx48.3, %for.body45.preheader ], [ %arrayidx24.3, %for.body21.preheader ], [ %arrayidx12.3, %for.body10.preheader ], [ %arrayidx70.3, %if.then ]
  %arrayidx74.3.sink = phi ptr [ %arrayidx51.3, %for.body45.preheader ], [ %arrayidx28.3, %for.body21.preheader ], [ %arrayidx14.3, %for.body10.preheader ], [ %arrayidx74.3, %if.then ]
  %arrayidx70.4.sink = phi ptr [ %arrayidx48.4, %for.body45.preheader ], [ %arrayidx24.4, %for.body21.preheader ], [ %arrayidx12.4, %for.body10.preheader ], [ %arrayidx70.4, %if.then ]
  %arrayidx74.4.sink = phi ptr [ %arrayidx51.4, %for.body45.preheader ], [ %arrayidx28.4, %for.body21.preheader ], [ %arrayidx14.4, %for.body10.preheader ], [ %arrayidx74.4, %if.then ]
  %arrayidx70.5.sink = phi ptr [ %arrayidx48.5, %for.body45.preheader ], [ %arrayidx24.5, %for.body21.preheader ], [ %arrayidx12.5, %for.body10.preheader ], [ %arrayidx70.5, %if.then ]
  %arrayidx74.5.sink = phi ptr [ %arrayidx51.5, %for.body45.preheader ], [ %arrayidx28.5, %for.body21.preheader ], [ %arrayidx14.5, %for.body10.preheader ], [ %arrayidx74.5, %if.then ]
  %arrayidx70.6.sink = phi ptr [ %arrayidx48.6, %for.body45.preheader ], [ %arrayidx24.6, %for.body21.preheader ], [ %arrayidx12.6, %for.body10.preheader ], [ %arrayidx70.6, %if.then ]
  %arrayidx74.6.sink = phi ptr [ %arrayidx51.6, %for.body45.preheader ], [ %arrayidx28.6, %for.body21.preheader ], [ %arrayidx14.6, %for.body10.preheader ], [ %arrayidx74.6, %if.then ]
  %arrayidx70.7.sink = phi ptr [ %arrayidx48.7, %for.body45.preheader ], [ %arrayidx24.7, %for.body21.preheader ], [ %arrayidx12.7, %for.body10.preheader ], [ %arrayidx70.7, %if.then ]
  %arrayidx74.7.sink = phi ptr [ %arrayidx51.7, %for.body45.preheader ], [ %arrayidx28.7, %for.body21.preheader ], [ %arrayidx14.7, %for.body10.preheader ], [ %arrayidx74.7, %if.then ]
  %arrayidx70.8.sink = phi ptr [ %arrayidx48.8, %for.body45.preheader ], [ %arrayidx24.8, %for.body21.preheader ], [ %arrayidx12.8, %for.body10.preheader ], [ %arrayidx70.8, %if.then ]
  %arrayidx74.8.sink = phi ptr [ %arrayidx51.8, %for.body45.preheader ], [ %arrayidx28.8, %for.body21.preheader ], [ %arrayidx14.8, %for.body10.preheader ], [ %arrayidx74.8, %if.then ]
  %arrayidx70.9.sink = phi ptr [ %arrayidx48.9, %for.body45.preheader ], [ %arrayidx24.9, %for.body21.preheader ], [ %arrayidx12.9, %for.body10.preheader ], [ %arrayidx70.9, %if.then ]
  %arrayidx74.9.sink = phi ptr [ %arrayidx51.9, %for.body45.preheader ], [ %arrayidx28.9, %for.body21.preheader ], [ %arrayidx14.9, %for.body10.preheader ], [ %arrayidx74.9, %if.then ]
  %arrayidx70.10.sink = phi ptr [ %arrayidx48.10, %for.body45.preheader ], [ %arrayidx24.10, %for.body21.preheader ], [ %arrayidx12.10, %for.body10.preheader ], [ %arrayidx70.10, %if.then ]
  %arrayidx74.10.sink = phi ptr [ %arrayidx51.10, %for.body45.preheader ], [ %arrayidx28.10, %for.body21.preheader ], [ %arrayidx14.10, %for.body10.preheader ], [ %arrayidx74.10, %if.then ]
  %arrayidx70.11.sink = phi ptr [ %arrayidx48.11, %for.body45.preheader ], [ %arrayidx24.11, %for.body21.preheader ], [ %arrayidx12.11, %for.body10.preheader ], [ %arrayidx70.11, %if.then ]
  %arrayidx74.11.sink = phi ptr [ %arrayidx51.11, %for.body45.preheader ], [ %arrayidx28.11, %for.body21.preheader ], [ %arrayidx14.11, %for.body10.preheader ], [ %arrayidx74.11, %if.then ]
  %arrayidx70.12.sink = phi ptr [ %arrayidx48.12, %for.body45.preheader ], [ %arrayidx24.12, %for.body21.preheader ], [ %arrayidx12.12, %for.body10.preheader ], [ %arrayidx70.12, %if.then ]
  %arrayidx74.12.sink = phi ptr [ %arrayidx51.12, %for.body45.preheader ], [ %arrayidx28.12, %for.body21.preheader ], [ %arrayidx14.12, %for.body10.preheader ], [ %arrayidx74.12, %if.then ]
  %arrayidx70.13.sink = phi ptr [ %arrayidx48.13, %for.body45.preheader ], [ %arrayidx24.13, %for.body21.preheader ], [ %arrayidx12.13, %for.body10.preheader ], [ %arrayidx70.13, %if.then ]
  %arrayidx74.13.sink = phi ptr [ %arrayidx51.13, %for.body45.preheader ], [ %arrayidx28.13, %for.body21.preheader ], [ %arrayidx14.13, %for.body10.preheader ], [ %arrayidx74.13, %if.then ]
  %arrayidx70.14.sink = phi ptr [ %arrayidx48.14, %for.body45.preheader ], [ %arrayidx24.14, %for.body21.preheader ], [ %arrayidx12.14, %for.body10.preheader ], [ %arrayidx70.14, %if.then ]
  %arrayidx74.14.sink = phi ptr [ %arrayidx51.14, %for.body45.preheader ], [ %arrayidx28.14, %for.body21.preheader ], [ %arrayidx14.14, %for.body10.preheader ], [ %arrayidx74.14, %if.then ]
  %arrayidx70.15.sink = phi ptr [ %arrayidx48.15, %for.body45.preheader ], [ %arrayidx24.15, %for.body21.preheader ], [ %arrayidx12.15, %for.body10.preheader ], [ %arrayidx70.15, %if.then ]
  %arrayidx74.15.sink = phi ptr [ %arrayidx51.15, %for.body45.preheader ], [ %arrayidx28.15, %for.body21.preheader ], [ %arrayidx14.15, %for.body10.preheader ], [ %arrayidx74.15, %if.then ]
  %2 = load i16, ptr %arrayidx70.sink, align 2, !dbg !3642
  %conv71 = zext i16 %2 to i32, !dbg !3642
  %3 = load i16, ptr %add.ptr61.sink, align 2, !dbg !3642
  %conv75 = zext i16 %3 to i32, !dbg !3642
  %sub76 = sub nsw i32 %conv71, %conv75, !dbg !3642
  %sub.i157 = tail call i32 @llvm.abs.i32(i32 %sub76, i1 true), !dbg !3643
  %add78 = add nsw i32 %sub.i157, %distortion.0170, !dbg !3642
  %4 = load i16, ptr %arrayidx70.1.sink, align 2, !dbg !3642
  %conv71.1 = zext i16 %4 to i32, !dbg !3642
  %5 = load i16, ptr %arrayidx74.1.sink, align 2, !dbg !3642
  %conv75.1 = zext i16 %5 to i32, !dbg !3642
  %sub76.1 = sub nsw i32 %conv71.1, %conv75.1, !dbg !3642
  %sub.i157.1 = tail call i32 @llvm.abs.i32(i32 %sub76.1, i1 true), !dbg !3643
  %add78.1 = add nsw i32 %sub.i157.1, %add78, !dbg !3642
  %6 = load i16, ptr %arrayidx70.2.sink, align 2, !dbg !3642
  %conv71.2 = zext i16 %6 to i32, !dbg !3642
  %7 = load i16, ptr %arrayidx74.2.sink, align 2, !dbg !3642
  %conv75.2 = zext i16 %7 to i32, !dbg !3642
  %sub76.2 = sub nsw i32 %conv71.2, %conv75.2, !dbg !3642
  %sub.i157.2 = tail call i32 @llvm.abs.i32(i32 %sub76.2, i1 true), !dbg !3643
  %add78.2 = add nsw i32 %sub.i157.2, %add78.1, !dbg !3642
  %8 = load i16, ptr %arrayidx70.3.sink, align 2, !dbg !3642
  %conv71.3 = zext i16 %8 to i32, !dbg !3642
  %9 = load i16, ptr %arrayidx74.3.sink, align 2, !dbg !3642
  %conv75.3 = zext i16 %9 to i32, !dbg !3642
  %sub76.3 = sub nsw i32 %conv71.3, %conv75.3, !dbg !3642
  %sub.i157.3 = tail call i32 @llvm.abs.i32(i32 %sub76.3, i1 true), !dbg !3643
  %add78.3 = add nsw i32 %sub.i157.3, %add78.2, !dbg !3642
  %10 = load i16, ptr %arrayidx70.4.sink, align 2, !dbg !3642
  %conv71.4 = zext i16 %10 to i32, !dbg !3642
  %11 = load i16, ptr %arrayidx74.4.sink, align 2, !dbg !3642
  %conv75.4 = zext i16 %11 to i32, !dbg !3642
  %sub76.4 = sub nsw i32 %conv71.4, %conv75.4, !dbg !3642
  %sub.i157.4 = tail call i32 @llvm.abs.i32(i32 %sub76.4, i1 true), !dbg !3643
  %add78.4 = add nsw i32 %sub.i157.4, %add78.3, !dbg !3642
  %12 = load i16, ptr %arrayidx70.5.sink, align 2, !dbg !3642
  %conv71.5 = zext i16 %12 to i32, !dbg !3642
  %13 = load i16, ptr %arrayidx74.5.sink, align 2, !dbg !3642
  %conv75.5 = zext i16 %13 to i32, !dbg !3642
  %sub76.5 = sub nsw i32 %conv71.5, %conv75.5, !dbg !3642
  %sub.i157.5 = tail call i32 @llvm.abs.i32(i32 %sub76.5, i1 true), !dbg !3643
  %add78.5 = add nsw i32 %sub.i157.5, %add78.4, !dbg !3642
  %14 = load i16, ptr %arrayidx70.6.sink, align 2, !dbg !3642
  %conv71.6 = zext i16 %14 to i32, !dbg !3642
  %15 = load i16, ptr %arrayidx74.6.sink, align 2, !dbg !3642
  %conv75.6 = zext i16 %15 to i32, !dbg !3642
  %sub76.6 = sub nsw i32 %conv71.6, %conv75.6, !dbg !3642
  %sub.i157.6 = tail call i32 @llvm.abs.i32(i32 %sub76.6, i1 true), !dbg !3643
  %add78.6 = add nsw i32 %sub.i157.6, %add78.5, !dbg !3642
  %16 = load i16, ptr %arrayidx70.7.sink, align 2, !dbg !3642
  %conv71.7 = zext i16 %16 to i32, !dbg !3642
  %17 = load i16, ptr %arrayidx74.7.sink, align 2, !dbg !3642
  %conv75.7 = zext i16 %17 to i32, !dbg !3642
  %sub76.7 = sub nsw i32 %conv71.7, %conv75.7, !dbg !3642
  %sub.i157.7 = tail call i32 @llvm.abs.i32(i32 %sub76.7, i1 true), !dbg !3643
  %add78.7 = add nsw i32 %sub.i157.7, %add78.6, !dbg !3642
  %18 = load i16, ptr %arrayidx70.8.sink, align 2, !dbg !3642
  %conv71.8 = zext i16 %18 to i32, !dbg !3642
  %19 = load i16, ptr %arrayidx74.8.sink, align 2, !dbg !3642
  %conv75.8 = zext i16 %19 to i32, !dbg !3642
  %sub76.8 = sub nsw i32 %conv71.8, %conv75.8, !dbg !3642
  %sub.i157.8 = tail call i32 @llvm.abs.i32(i32 %sub76.8, i1 true), !dbg !3643
  %add78.8 = add nsw i32 %sub.i157.8, %add78.7, !dbg !3642
  %20 = load i16, ptr %arrayidx70.9.sink, align 2, !dbg !3642
  %conv71.9 = zext i16 %20 to i32, !dbg !3642
  %21 = load i16, ptr %arrayidx74.9.sink, align 2, !dbg !3642
  %conv75.9 = zext i16 %21 to i32, !dbg !3642
  %sub76.9 = sub nsw i32 %conv71.9, %conv75.9, !dbg !3642
  %sub.i157.9 = tail call i32 @llvm.abs.i32(i32 %sub76.9, i1 true), !dbg !3643
  %add78.9 = add nsw i32 %sub.i157.9, %add78.8, !dbg !3642
  %22 = load i16, ptr %arrayidx70.10.sink, align 2, !dbg !3642
  %conv71.10 = zext i16 %22 to i32, !dbg !3642
  %23 = load i16, ptr %arrayidx74.10.sink, align 2, !dbg !3642
  %conv75.10 = zext i16 %23 to i32, !dbg !3642
  %sub76.10 = sub nsw i32 %conv71.10, %conv75.10, !dbg !3642
  %sub.i157.10 = tail call i32 @llvm.abs.i32(i32 %sub76.10, i1 true), !dbg !3643
  %add78.10 = add nsw i32 %sub.i157.10, %add78.9, !dbg !3642
  %24 = load i16, ptr %arrayidx70.11.sink, align 2, !dbg !3642
  %conv71.11 = zext i16 %24 to i32, !dbg !3642
  %25 = load i16, ptr %arrayidx74.11.sink, align 2, !dbg !3642
  %conv75.11 = zext i16 %25 to i32, !dbg !3642
  %sub76.11 = sub nsw i32 %conv71.11, %conv75.11, !dbg !3642
  %sub.i157.11 = tail call i32 @llvm.abs.i32(i32 %sub76.11, i1 true), !dbg !3643
  %add78.11 = add nsw i32 %sub.i157.11, %add78.10, !dbg !3642
  %26 = load i16, ptr %arrayidx70.12.sink, align 2, !dbg !3642
  %conv71.12 = zext i16 %26 to i32, !dbg !3642
  %27 = load i16, ptr %arrayidx74.12.sink, align 2, !dbg !3642
  %conv75.12 = zext i16 %27 to i32, !dbg !3642
  %sub76.12 = sub nsw i32 %conv71.12, %conv75.12, !dbg !3642
  %sub.i157.12 = tail call i32 @llvm.abs.i32(i32 %sub76.12, i1 true), !dbg !3643
  %add78.12 = add nsw i32 %sub.i157.12, %add78.11, !dbg !3642
  %28 = load i16, ptr %arrayidx70.13.sink, align 2, !dbg !3642
  %conv71.13 = zext i16 %28 to i32, !dbg !3642
  %29 = load i16, ptr %arrayidx74.13.sink, align 2, !dbg !3642
  %conv75.13 = zext i16 %29 to i32, !dbg !3642
  %sub76.13 = sub nsw i32 %conv71.13, %conv75.13, !dbg !3642
  %sub.i157.13 = tail call i32 @llvm.abs.i32(i32 %sub76.13, i1 true), !dbg !3643
  %add78.13 = add nsw i32 %sub.i157.13, %add78.12, !dbg !3642
  %30 = load i16, ptr %arrayidx70.14.sink, align 2, !dbg !3642
  %conv71.14 = zext i16 %30 to i32, !dbg !3642
  %31 = load i16, ptr %arrayidx74.14.sink, align 2, !dbg !3642
  %conv75.14 = zext i16 %31 to i32, !dbg !3642
  %sub76.14 = sub nsw i32 %conv71.14, %conv75.14, !dbg !3642
  %sub.i157.14 = tail call i32 @llvm.abs.i32(i32 %sub76.14, i1 true), !dbg !3643
  %add78.14 = add nsw i32 %sub.i157.14, %add78.13, !dbg !3642
  %32 = load i16, ptr %arrayidx70.15.sink, align 2, !dbg !3642
  %conv71.15 = zext i16 %32 to i32, !dbg !3642
  %33 = load i16, ptr %arrayidx74.15.sink, align 2, !dbg !3642
  %conv75.15 = zext i16 %33 to i32, !dbg !3642
  %sub76.15 = sub nsw i32 %conv71.15, %conv75.15, !dbg !3642
  %sub.i157.15 = tail call i32 @llvm.abs.i32(i32 %sub76.15, i1 true), !dbg !3643
  %add78.15 = add nsw i32 %sub.i157.15, %add78.14, !dbg !3642
  br label %sw.epilog, !dbg !3631

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then
  %distortion.5 = phi i32 [ %distortion.0170, %if.then ], [ %add78.15, %sw.epilog.sink.split ], !dbg !3644
    #dbg_value(i32 %distortion.5, !3600, !DIExpression(), !3606)
  %inc82 = add nsw i32 %numOfPredBlocks.0171, 1, !dbg !3631
    #dbg_value(i32 %inc82, !3601, !DIExpression(), !3606)
  br label %for.inc83, !dbg !3645

for.inc83:                                        ; preds = %for.body, %sw.epilog
  %distortion.6 = phi i32 [ %distortion.5, %sw.epilog ], [ %distortion.0170, %for.body ], !dbg !3644
  %numOfPredBlocks.1 = phi i32 [ %inc82, %sw.epilog ], [ %numOfPredBlocks.0171, %for.body ], !dbg !3646
    #dbg_value(i32 %numOfPredBlocks.1, !3601, !DIExpression(), !3606)
    #dbg_value(i32 %distortion.6, !3600, !DIExpression(), !3606)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3647
    #dbg_value(i64 %indvars.iv.next, !3599, !DIExpression(), !3606)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !3648
  br i1 %exitcond.not, label %for.end85, label %for.body, !dbg !3614, !llvm.loop !3649

for.end85:                                        ; preds = %for.inc83
    #dbg_value(i32 3, !3602, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3606)
  %cmp90 = icmp eq i32 %numOfPredBlocks.1, 0
  br i1 %cmp90, label %for.body.1, label %do.end, !dbg !3651, !llvm.loop !3652

for.body.1:                                       ; preds = %for.end85, %for.inc83.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %for.inc83.1 ], [ 4, %for.end85 ]
  %numOfPredBlocks.0171.1 = phi i32 [ %numOfPredBlocks.1.1, %for.inc83.1 ], [ 0, %for.end85 ]
  %distortion.0170.1 = phi i32 [ %distortion.6.1, %for.inc83.1 ], [ 0, %for.end85 ]
    #dbg_value(i32 %numOfPredBlocks.0171.1, !3601, !DIExpression(), !3606)
    #dbg_value(i32 %distortion.0170.1, !3600, !DIExpression(), !3606)
    #dbg_value(i64 %indvars.iv.1, !3599, !DIExpression(), !3606)
  %arrayidx.1 = getelementptr inbounds i32, ptr %predBlocks, i64 %indvars.iv.1, !dbg !3617
  %34 = load i32, ptr %arrayidx.1, align 4, !dbg !3617
  %cmp5.not.1 = icmp slt i32 %34, 2, !dbg !3621
  br i1 %cmp5.not.1, label %for.inc83.1, label %if.then.1, !dbg !3622

if.then.1:                                        ; preds = %for.body.1
  %35 = trunc nuw nsw i64 %indvars.iv.1 to i32, !dbg !3623
  switch i32 %35, label %sw.epilog.1 [
    i32 4, label %for.body10.preheader.1
    i32 5, label %for.body21.preheader.1
    i32 6, label %for.body45.preheader.1
    i32 7, label %sw.epilog.sink.split.1
  ], !dbg !3623

for.body45.preheader.1:                           ; preds = %if.then.1
    #dbg_value(i32 %sub76.15.1, !240, !DIExpression(), !3625)
    #dbg_value(i32 %sub76.15.1, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3625)
    #dbg_value(i32 %add78.15.1, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split.1, !dbg !3631

for.body21.preheader.1:                           ; preds = %if.then.1
    #dbg_value(i32 %sub76.15.1, !240, !DIExpression(), !3632)
    #dbg_value(i32 %sub76.15.1, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3632)
    #dbg_value(i32 %add78.15.1, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split.1, !dbg !3631

for.body10.preheader.1:                           ; preds = %if.then.1
    #dbg_value(i32 %sub76.15.1, !240, !DIExpression(), !3637)
    #dbg_value(i32 %sub76.15.1, !241, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3637)
    #dbg_value(i32 %add78.15.1, !3600, !DIExpression(), !3606)
    #dbg_value(i64 16, !3598, !DIExpression(), !3606)
  br label %sw.epilog.sink.split.1, !dbg !3631

sw.epilog.sink.split.1:                           ; preds = %for.body10.preheader.1, %for.body21.preheader.1, %for.body45.preheader.1, %if.then.1
  %arrayidx70.sink.1 = phi ptr [ %arrayidx48, %for.body45.preheader.1 ], [ %predMB, %for.body21.preheader.1 ], [ %predMB, %for.body10.preheader.1 ], [ %arrayidx70, %if.then.1 ]
  %add.ptr61.sink.1 = phi ptr [ %add.ptr39, %for.body45.preheader.1 ], [ %add.ptr17, %for.body21.preheader.1 ], [ %add.ptr7, %for.body10.preheader.1 ], [ %add.ptr61, %if.then.1 ]
  %arrayidx70.1.sink.1 = phi ptr [ %arrayidx48.1, %for.body45.preheader.1 ], [ %arrayidx24.1, %for.body21.preheader.1 ], [ %arrayidx12.1, %for.body10.preheader.1 ], [ %arrayidx70.1, %if.then.1 ]
  %arrayidx74.1.sink.1 = phi ptr [ %arrayidx51.1, %for.body45.preheader.1 ], [ %arrayidx28.1, %for.body21.preheader.1 ], [ %arrayidx14.1, %for.body10.preheader.1 ], [ %arrayidx74.1, %if.then.1 ]
  %arrayidx70.2.sink.1 = phi ptr [ %arrayidx48.2, %for.body45.preheader.1 ], [ %arrayidx24.2, %for.body21.preheader.1 ], [ %arrayidx12.2, %for.body10.preheader.1 ], [ %arrayidx70.2, %if.then.1 ]
  %arrayidx74.2.sink.1 = phi ptr [ %arrayidx51.2, %for.body45.preheader.1 ], [ %arrayidx28.2, %for.body21.preheader.1 ], [ %arrayidx14.2, %for.body10.preheader.1 ], [ %arrayidx74.2, %if.then.1 ]
  %arrayidx70.3.sink.1 = phi ptr [ %arrayidx48.3, %for.body45.preheader.1 ], [ %arrayidx24.3, %for.body21.preheader.1 ], [ %arrayidx12.3, %for.body10.preheader.1 ], [ %arrayidx70.3, %if.then.1 ]
  %arrayidx74.3.sink.1 = phi ptr [ %arrayidx51.3, %for.body45.preheader.1 ], [ %arrayidx28.3, %for.body21.preheader.1 ], [ %arrayidx14.3, %for.body10.preheader.1 ], [ %arrayidx74.3, %if.then.1 ]
  %arrayidx70.4.sink.1 = phi ptr [ %arrayidx48.4, %for.body45.preheader.1 ], [ %arrayidx24.4, %for.body21.preheader.1 ], [ %arrayidx12.4, %for.body10.preheader.1 ], [ %arrayidx70.4, %if.then.1 ]
  %arrayidx74.4.sink.1 = phi ptr [ %arrayidx51.4, %for.body45.preheader.1 ], [ %arrayidx28.4, %for.body21.preheader.1 ], [ %arrayidx14.4, %for.body10.preheader.1 ], [ %arrayidx74.4, %if.then.1 ]
  %arrayidx70.5.sink.1 = phi ptr [ %arrayidx48.5, %for.body45.preheader.1 ], [ %arrayidx24.5, %for.body21.preheader.1 ], [ %arrayidx12.5, %for.body10.preheader.1 ], [ %arrayidx70.5, %if.then.1 ]
  %arrayidx74.5.sink.1 = phi ptr [ %arrayidx51.5, %for.body45.preheader.1 ], [ %arrayidx28.5, %for.body21.preheader.1 ], [ %arrayidx14.5, %for.body10.preheader.1 ], [ %arrayidx74.5, %if.then.1 ]
  %arrayidx70.6.sink.1 = phi ptr [ %arrayidx48.6, %for.body45.preheader.1 ], [ %arrayidx24.6, %for.body21.preheader.1 ], [ %arrayidx12.6, %for.body10.preheader.1 ], [ %arrayidx70.6, %if.then.1 ]
  %arrayidx74.6.sink.1 = phi ptr [ %arrayidx51.6, %for.body45.preheader.1 ], [ %arrayidx28.6, %for.body21.preheader.1 ], [ %arrayidx14.6, %for.body10.preheader.1 ], [ %arrayidx74.6, %if.then.1 ]
  %arrayidx70.7.sink.1 = phi ptr [ %arrayidx48.7, %for.body45.preheader.1 ], [ %arrayidx24.7, %for.body21.preheader.1 ], [ %arrayidx12.7, %for.body10.preheader.1 ], [ %arrayidx70.7, %if.then.1 ]
  %arrayidx74.7.sink.1 = phi ptr [ %arrayidx51.7, %for.body45.preheader.1 ], [ %arrayidx28.7, %for.body21.preheader.1 ], [ %arrayidx14.7, %for.body10.preheader.1 ], [ %arrayidx74.7, %if.then.1 ]
  %arrayidx70.8.sink.1 = phi ptr [ %arrayidx48.8, %for.body45.preheader.1 ], [ %arrayidx24.8, %for.body21.preheader.1 ], [ %arrayidx12.8, %for.body10.preheader.1 ], [ %arrayidx70.8, %if.then.1 ]
  %arrayidx74.8.sink.1 = phi ptr [ %arrayidx51.8, %for.body45.preheader.1 ], [ %arrayidx28.8, %for.body21.preheader.1 ], [ %arrayidx14.8, %for.body10.preheader.1 ], [ %arrayidx74.8, %if.then.1 ]
  %arrayidx70.9.sink.1 = phi ptr [ %arrayidx48.9, %for.body45.preheader.1 ], [ %arrayidx24.9, %for.body21.preheader.1 ], [ %arrayidx12.9, %for.body10.preheader.1 ], [ %arrayidx70.9, %if.then.1 ]
  %arrayidx74.9.sink.1 = phi ptr [ %arrayidx51.9, %for.body45.preheader.1 ], [ %arrayidx28.9, %for.body21.preheader.1 ], [ %arrayidx14.9, %for.body10.preheader.1 ], [ %arrayidx74.9, %if.then.1 ]
  %arrayidx70.10.sink.1 = phi ptr [ %arrayidx48.10, %for.body45.preheader.1 ], [ %arrayidx24.10, %for.body21.preheader.1 ], [ %arrayidx12.10, %for.body10.preheader.1 ], [ %arrayidx70.10, %if.then.1 ]
  %arrayidx74.10.sink.1 = phi ptr [ %arrayidx51.10, %for.body45.preheader.1 ], [ %arrayidx28.10, %for.body21.preheader.1 ], [ %arrayidx14.10, %for.body10.preheader.1 ], [ %arrayidx74.10, %if.then.1 ]
  %arrayidx70.11.sink.1 = phi ptr [ %arrayidx48.11, %for.body45.preheader.1 ], [ %arrayidx24.11, %for.body21.preheader.1 ], [ %arrayidx12.11, %for.body10.preheader.1 ], [ %arrayidx70.11, %if.then.1 ]
  %arrayidx74.11.sink.1 = phi ptr [ %arrayidx51.11, %for.body45.preheader.1 ], [ %arrayidx28.11, %for.body21.preheader.1 ], [ %arrayidx14.11, %for.body10.preheader.1 ], [ %arrayidx74.11, %if.then.1 ]
  %arrayidx70.12.sink.1 = phi ptr [ %arrayidx48.12, %for.body45.preheader.1 ], [ %arrayidx24.12, %for.body21.preheader.1 ], [ %arrayidx12.12, %for.body10.preheader.1 ], [ %arrayidx70.12, %if.then.1 ]
  %arrayidx74.12.sink.1 = phi ptr [ %arrayidx51.12, %for.body45.preheader.1 ], [ %arrayidx28.12, %for.body21.preheader.1 ], [ %arrayidx14.12, %for.body10.preheader.1 ], [ %arrayidx74.12, %if.then.1 ]
  %arrayidx70.13.sink.1 = phi ptr [ %arrayidx48.13, %for.body45.preheader.1 ], [ %arrayidx24.13, %for.body21.preheader.1 ], [ %arrayidx12.13, %for.body10.preheader.1 ], [ %arrayidx70.13, %if.then.1 ]
  %arrayidx74.13.sink.1 = phi ptr [ %arrayidx51.13, %for.body45.preheader.1 ], [ %arrayidx28.13, %for.body21.preheader.1 ], [ %arrayidx14.13, %for.body10.preheader.1 ], [ %arrayidx74.13, %if.then.1 ]
  %arrayidx70.14.sink.1 = phi ptr [ %arrayidx48.14, %for.body45.preheader.1 ], [ %arrayidx24.14, %for.body21.preheader.1 ], [ %arrayidx12.14, %for.body10.preheader.1 ], [ %arrayidx70.14, %if.then.1 ]
  %arrayidx74.14.sink.1 = phi ptr [ %arrayidx51.14, %for.body45.preheader.1 ], [ %arrayidx28.14, %for.body21.preheader.1 ], [ %arrayidx14.14, %for.body10.preheader.1 ], [ %arrayidx74.14, %if.then.1 ]
  %arrayidx70.15.sink.1 = phi ptr [ %arrayidx48.15, %for.body45.preheader.1 ], [ %arrayidx24.15, %for.body21.preheader.1 ], [ %arrayidx12.15, %for.body10.preheader.1 ], [ %arrayidx70.15, %if.then.1 ]
  %arrayidx74.15.sink.1 = phi ptr [ %arrayidx51.15, %for.body45.preheader.1 ], [ %arrayidx28.15, %for.body21.preheader.1 ], [ %arrayidx14.15, %for.body10.preheader.1 ], [ %arrayidx74.15, %if.then.1 ]
  %36 = load i16, ptr %arrayidx70.sink.1, align 2, !dbg !3642
  %conv71.16 = zext i16 %36 to i32, !dbg !3642
  %37 = load i16, ptr %add.ptr61.sink.1, align 2, !dbg !3642
  %conv75.17 = zext i16 %37 to i32, !dbg !3642
  %sub76.18 = sub nsw i32 %conv71.16, %conv75.17, !dbg !3642
  %sub.i157.19 = tail call i32 @llvm.abs.i32(i32 %sub76.18, i1 true), !dbg !3643
  %add78.110 = add nsw i32 %sub.i157.19, %distortion.0170.1, !dbg !3642
  %38 = load i16, ptr %arrayidx70.1.sink.1, align 2, !dbg !3642
  %conv71.1.1 = zext i16 %38 to i32, !dbg !3642
  %39 = load i16, ptr %arrayidx74.1.sink.1, align 2, !dbg !3642
  %conv75.1.1 = zext i16 %39 to i32, !dbg !3642
  %sub76.1.1 = sub nsw i32 %conv71.1.1, %conv75.1.1, !dbg !3642
  %sub.i157.1.1 = tail call i32 @llvm.abs.i32(i32 %sub76.1.1, i1 true), !dbg !3643
  %add78.1.1 = add nsw i32 %sub.i157.1.1, %add78.110, !dbg !3642
  %40 = load i16, ptr %arrayidx70.2.sink.1, align 2, !dbg !3642
  %conv71.2.1 = zext i16 %40 to i32, !dbg !3642
  %41 = load i16, ptr %arrayidx74.2.sink.1, align 2, !dbg !3642
  %conv75.2.1 = zext i16 %41 to i32, !dbg !3642
  %sub76.2.1 = sub nsw i32 %conv71.2.1, %conv75.2.1, !dbg !3642
  %sub.i157.2.1 = tail call i32 @llvm.abs.i32(i32 %sub76.2.1, i1 true), !dbg !3643
  %add78.2.1 = add nsw i32 %sub.i157.2.1, %add78.1.1, !dbg !3642
  %42 = load i16, ptr %arrayidx70.3.sink.1, align 2, !dbg !3642
  %conv71.3.1 = zext i16 %42 to i32, !dbg !3642
  %43 = load i16, ptr %arrayidx74.3.sink.1, align 2, !dbg !3642
  %conv75.3.1 = zext i16 %43 to i32, !dbg !3642
  %sub76.3.1 = sub nsw i32 %conv71.3.1, %conv75.3.1, !dbg !3642
  %sub.i157.3.1 = tail call i32 @llvm.abs.i32(i32 %sub76.3.1, i1 true), !dbg !3643
  %add78.3.1 = add nsw i32 %sub.i157.3.1, %add78.2.1, !dbg !3642
  %44 = load i16, ptr %arrayidx70.4.sink.1, align 2, !dbg !3642
  %conv71.4.1 = zext i16 %44 to i32, !dbg !3642
  %45 = load i16, ptr %arrayidx74.4.sink.1, align 2, !dbg !3642
  %conv75.4.1 = zext i16 %45 to i32, !dbg !3642
  %sub76.4.1 = sub nsw i32 %conv71.4.1, %conv75.4.1, !dbg !3642
  %sub.i157.4.1 = tail call i32 @llvm.abs.i32(i32 %sub76.4.1, i1 true), !dbg !3643
  %add78.4.1 = add nsw i32 %sub.i157.4.1, %add78.3.1, !dbg !3642
  %46 = load i16, ptr %arrayidx70.5.sink.1, align 2, !dbg !3642
  %conv71.5.1 = zext i16 %46 to i32, !dbg !3642
  %47 = load i16, ptr %arrayidx74.5.sink.1, align 2, !dbg !3642
  %conv75.5.1 = zext i16 %47 to i32, !dbg !3642
  %sub76.5.1 = sub nsw i32 %conv71.5.1, %conv75.5.1, !dbg !3642
  %sub.i157.5.1 = tail call i32 @llvm.abs.i32(i32 %sub76.5.1, i1 true), !dbg !3643
  %add78.5.1 = add nsw i32 %sub.i157.5.1, %add78.4.1, !dbg !3642
  %48 = load i16, ptr %arrayidx70.6.sink.1, align 2, !dbg !3642
  %conv71.6.1 = zext i16 %48 to i32, !dbg !3642
  %49 = load i16, ptr %arrayidx74.6.sink.1, align 2, !dbg !3642
  %conv75.6.1 = zext i16 %49 to i32, !dbg !3642
  %sub76.6.1 = sub nsw i32 %conv71.6.1, %conv75.6.1, !dbg !3642
  %sub.i157.6.1 = tail call i32 @llvm.abs.i32(i32 %sub76.6.1, i1 true), !dbg !3643
  %add78.6.1 = add nsw i32 %sub.i157.6.1, %add78.5.1, !dbg !3642
  %50 = load i16, ptr %arrayidx70.7.sink.1, align 2, !dbg !3642
  %conv71.7.1 = zext i16 %50 to i32, !dbg !3642
  %51 = load i16, ptr %arrayidx74.7.sink.1, align 2, !dbg !3642
  %conv75.7.1 = zext i16 %51 to i32, !dbg !3642
  %sub76.7.1 = sub nsw i32 %conv71.7.1, %conv75.7.1, !dbg !3642
  %sub.i157.7.1 = tail call i32 @llvm.abs.i32(i32 %sub76.7.1, i1 true), !dbg !3643
  %add78.7.1 = add nsw i32 %sub.i157.7.1, %add78.6.1, !dbg !3642
  %52 = load i16, ptr %arrayidx70.8.sink.1, align 2, !dbg !3642
  %conv71.8.1 = zext i16 %52 to i32, !dbg !3642
  %53 = load i16, ptr %arrayidx74.8.sink.1, align 2, !dbg !3642
  %conv75.8.1 = zext i16 %53 to i32, !dbg !3642
  %sub76.8.1 = sub nsw i32 %conv71.8.1, %conv75.8.1, !dbg !3642
  %sub.i157.8.1 = tail call i32 @llvm.abs.i32(i32 %sub76.8.1, i1 true), !dbg !3643
  %add78.8.1 = add nsw i32 %sub.i157.8.1, %add78.7.1, !dbg !3642
  %54 = load i16, ptr %arrayidx70.9.sink.1, align 2, !dbg !3642
  %conv71.9.1 = zext i16 %54 to i32, !dbg !3642
  %55 = load i16, ptr %arrayidx74.9.sink.1, align 2, !dbg !3642
  %conv75.9.1 = zext i16 %55 to i32, !dbg !3642
  %sub76.9.1 = sub nsw i32 %conv71.9.1, %conv75.9.1, !dbg !3642
  %sub.i157.9.1 = tail call i32 @llvm.abs.i32(i32 %sub76.9.1, i1 true), !dbg !3643
  %add78.9.1 = add nsw i32 %sub.i157.9.1, %add78.8.1, !dbg !3642
  %56 = load i16, ptr %arrayidx70.10.sink.1, align 2, !dbg !3642
  %conv71.10.1 = zext i16 %56 to i32, !dbg !3642
  %57 = load i16, ptr %arrayidx74.10.sink.1, align 2, !dbg !3642
  %conv75.10.1 = zext i16 %57 to i32, !dbg !3642
  %sub76.10.1 = sub nsw i32 %conv71.10.1, %conv75.10.1, !dbg !3642
  %sub.i157.10.1 = tail call i32 @llvm.abs.i32(i32 %sub76.10.1, i1 true), !dbg !3643
  %add78.10.1 = add nsw i32 %sub.i157.10.1, %add78.9.1, !dbg !3642
  %58 = load i16, ptr %arrayidx70.11.sink.1, align 2, !dbg !3642
  %conv71.11.1 = zext i16 %58 to i32, !dbg !3642
  %59 = load i16, ptr %arrayidx74.11.sink.1, align 2, !dbg !3642
  %conv75.11.1 = zext i16 %59 to i32, !dbg !3642
  %sub76.11.1 = sub nsw i32 %conv71.11.1, %conv75.11.1, !dbg !3642
  %sub.i157.11.1 = tail call i32 @llvm.abs.i32(i32 %sub76.11.1, i1 true), !dbg !3643
  %add78.11.1 = add nsw i32 %sub.i157.11.1, %add78.10.1, !dbg !3642
  %60 = load i16, ptr %arrayidx70.12.sink.1, align 2, !dbg !3642
  %conv71.12.1 = zext i16 %60 to i32, !dbg !3642
  %61 = load i16, ptr %arrayidx74.12.sink.1, align 2, !dbg !3642
  %conv75.12.1 = zext i16 %61 to i32, !dbg !3642
  %sub76.12.1 = sub nsw i32 %conv71.12.1, %conv75.12.1, !dbg !3642
  %sub.i157.12.1 = tail call i32 @llvm.abs.i32(i32 %sub76.12.1, i1 true), !dbg !3643
  %add78.12.1 = add nsw i32 %sub.i157.12.1, %add78.11.1, !dbg !3642
  %62 = load i16, ptr %arrayidx70.13.sink.1, align 2, !dbg !3642
  %conv71.13.1 = zext i16 %62 to i32, !dbg !3642
  %63 = load i16, ptr %arrayidx74.13.sink.1, align 2, !dbg !3642
  %conv75.13.1 = zext i16 %63 to i32, !dbg !3642
  %sub76.13.1 = sub nsw i32 %conv71.13.1, %conv75.13.1, !dbg !3642
  %sub.i157.13.1 = tail call i32 @llvm.abs.i32(i32 %sub76.13.1, i1 true), !dbg !3643
  %add78.13.1 = add nsw i32 %sub.i157.13.1, %add78.12.1, !dbg !3642
  %64 = load i16, ptr %arrayidx70.14.sink.1, align 2, !dbg !3642
  %conv71.14.1 = zext i16 %64 to i32, !dbg !3642
  %65 = load i16, ptr %arrayidx74.14.sink.1, align 2, !dbg !3642
  %conv75.14.1 = zext i16 %65 to i32, !dbg !3642
  %sub76.14.1 = sub nsw i32 %conv71.14.1, %conv75.14.1, !dbg !3642
  %sub.i157.14.1 = tail call i32 @llvm.abs.i32(i32 %sub76.14.1, i1 true), !dbg !3643
  %add78.14.1 = add nsw i32 %sub.i157.14.1, %add78.13.1, !dbg !3642
  %66 = load i16, ptr %arrayidx70.15.sink.1, align 2, !dbg !3642
  %conv71.15.1 = zext i16 %66 to i32, !dbg !3642
  %67 = load i16, ptr %arrayidx74.15.sink.1, align 2, !dbg !3642
  %conv75.15.1 = zext i16 %67 to i32, !dbg !3642
  %sub76.15.1 = sub nsw i32 %conv71.15.1, %conv75.15.1, !dbg !3642
  %sub.i157.15.1 = tail call i32 @llvm.abs.i32(i32 %sub76.15.1, i1 true), !dbg !3643
  %add78.15.1 = add nsw i32 %sub.i157.15.1, %add78.14.1, !dbg !3642
  br label %sw.epilog.1, !dbg !3631

sw.epilog.1:                                      ; preds = %sw.epilog.sink.split.1, %if.then.1
  %distortion.5.1 = phi i32 [ %distortion.0170.1, %if.then.1 ], [ %add78.15.1, %sw.epilog.sink.split.1 ], !dbg !3644
    #dbg_value(i32 %distortion.5.1, !3600, !DIExpression(), !3606)
  %inc82.1 = add nsw i32 %numOfPredBlocks.0171.1, 1, !dbg !3631
    #dbg_value(i32 %inc82.1, !3601, !DIExpression(), !3606)
  br label %for.inc83.1, !dbg !3645

for.inc83.1:                                      ; preds = %sw.epilog.1, %for.body.1
  %distortion.6.1 = phi i32 [ %distortion.5.1, %sw.epilog.1 ], [ %distortion.0170.1, %for.body.1 ], !dbg !3644
  %numOfPredBlocks.1.1 = phi i32 [ %inc82.1, %sw.epilog.1 ], [ %numOfPredBlocks.0171.1, %for.body.1 ], !dbg !3646
    #dbg_value(i32 %numOfPredBlocks.1.1, !3601, !DIExpression(), !3606)
    #dbg_value(i32 %distortion.6.1, !3600, !DIExpression(), !3606)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !3647
    #dbg_value(i64 %indvars.iv.next.1, !3599, !DIExpression(), !3606)
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 8, !dbg !3648
  br i1 %exitcond.not.1, label %for.end85.1, label %for.body.1, !dbg !3614, !llvm.loop !3649

for.end85.1:                                      ; preds = %for.inc83.1
    #dbg_value(i32 2, !3602, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3606)
  %cmp90.1 = icmp eq i32 %numOfPredBlocks.1.1, 0
  br label %do.end

do.end:                                           ; preds = %for.end85.1, %for.end85
  %cmp90.lcssa = phi i1 [ %cmp90, %for.end85 ], [ %cmp90.1, %for.end85.1 ]
  %distortion.6.lcssa.lcssa = phi i32 [ %distortion.6, %for.end85 ], [ %distortion.6.1, %for.end85.1 ], !dbg !3644
  %numOfPredBlocks.1.lcssa.lcssa = phi i32 [ %numOfPredBlocks.1, %for.end85 ], [ %numOfPredBlocks.1.1, %for.end85.1 ], !dbg !3646
  br i1 %cmp90.lcssa, label %cleanup, label %if.end95, !dbg !3655

if.end95:                                         ; preds = %do.end
  %div96 = sdiv i32 %distortion.6.lcssa.lcssa, %numOfPredBlocks.1.lcssa.lcssa, !dbg !3656
  br label %cleanup, !dbg !3657

cleanup:                                          ; preds = %do.end, %if.end95
  %retval.0 = phi i32 [ %div96, %if.end95 ], [ 0, %do.end ], !dbg !3606
  ret i32 %retval.0, !dbg !3658
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyPredMB(i32 noundef %currYBlockNum, ptr nocapture noundef readonly %predMB, ptr nocapture readonly %recfr.0.val, i32 noundef %picSizeX) unnamed_addr #4 !dbg !3659 {
entry:
    #dbg_value(i32 %currYBlockNum, !3663, !DIExpression(), !3680)
    #dbg_value(ptr %predMB, !3664, !DIExpression(), !3680)
    #dbg_value(ptr undef, !3665, !DIExpression(), !3680)
    #dbg_value(i32 %picSizeX, !3666, !DIExpression(), !3680)
    #dbg_value(i32 16, !3667, !DIExpression(), !3680)
    #dbg_value(ptr %recfr.0.val, !3668, !DIExpression(), !3680)
  %dec_picture2 = getelementptr inbounds i8, ptr %recfr.0.val, i64 856456, !dbg !3681
  %0 = load ptr, ptr %dec_picture2, align 8, !dbg !3681
    #dbg_value(ptr %0, !3669, !DIExpression(), !3680)
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 268, !dbg !3682
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !3682
  %idxprom = sext i32 %1 to i64, !dbg !3683
  %arrayidx = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %idxprom, !dbg !3683
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3683
    #dbg_value(i32 %2, !3678, !DIExpression(), !3680)
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @uv_div, i64 16), i64 0, i64 %idxprom, !dbg !3684
  %3 = load i32, ptr %arrayidx5, align 4, !dbg !3684
    #dbg_value(i32 %3, !3679, !DIExpression(), !3680)
  %shr = ashr i32 %picSizeX, 3, !dbg !3685
  %rem = srem i32 %currYBlockNum, %shr, !dbg !3685
  %shl = shl nsw i32 %rem, 3, !dbg !3686
    #dbg_value(i32 %shl, !3672, !DIExpression(), !3680)
  %div = sdiv i32 %currYBlockNum, %shr, !dbg !3687
  %shl7 = shl i32 %div, 3, !dbg !3688
    #dbg_value(i32 %shl7, !3673, !DIExpression(), !3680)
    #dbg_value(i32 %sub, !3674, !DIExpression(), !3680)
  %sub9 = add i32 %shl7, 15, !dbg !3689
    #dbg_value(i32 %sub9, !3675, !DIExpression(), !3680)
    #dbg_value(i32 %shl7, !3670, !DIExpression(), !3680)
  %imgY = getelementptr inbounds i8, ptr %0, i64 128
    #dbg_value(i32 %shl7, !3670, !DIExpression(), !3680)
  %4 = sext i32 %shl to i64, !dbg !3690
  %5 = sext i32 %shl7 to i64, !dbg !3690
  %smax = tail call i32 @llvm.smax.i32(i32 %shl7, i32 %sub9), !dbg !3690
  %6 = add i32 %smax, 1, !dbg !3690
  %indvars.iv.next = or disjoint i64 %4, 1
  %7 = trunc nsw i64 %indvars.iv.next to i32
  %indvars.iv.next.1 = or disjoint i64 %4, 2
  %8 = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next.2 = or disjoint i64 %4, 3
  %9 = trunc nsw i64 %indvars.iv.next.2 to i32
  %indvars.iv.next.3 = or disjoint i64 %4, 4
  %10 = trunc nsw i64 %indvars.iv.next.3 to i32
  %indvars.iv.next.4 = or disjoint i64 %4, 5
  %11 = trunc nsw i64 %indvars.iv.next.4 to i32
  %indvars.iv.next.5 = or disjoint i64 %4, 6
  %12 = trunc nsw i64 %indvars.iv.next.5 to i32
  %indvars.iv.next.6 = or disjoint i64 %4, 7
  %13 = trunc nsw i64 %indvars.iv.next.6 to i32
  %indvars.iv.next.7 = add nsw i64 %4, 8
  %14 = trunc nsw i64 %indvars.iv.next.7 to i32
  %indvars.iv.next.8 = add nsw i64 %4, 9
  %15 = trunc nsw i64 %indvars.iv.next.8 to i32
  %indvars.iv.next.9 = add nsw i64 %4, 10
  %16 = trunc nsw i64 %indvars.iv.next.9 to i32
  %indvars.iv.next.10 = add nsw i64 %4, 11
  %17 = trunc nsw i64 %indvars.iv.next.10 to i32
  %indvars.iv.next.11 = add nsw i64 %4, 12
  %18 = trunc nsw i64 %indvars.iv.next.11 to i32
  %indvars.iv.next.12 = add nsw i64 %4, 13
  %19 = trunc nsw i64 %indvars.iv.next.12 to i32
  %indvars.iv.next.13 = add nsw i64 %4, 14
  %20 = trunc nsw i64 %indvars.iv.next.13 to i32
  %indvars.iv.next.14 = add nsw i64 %4, 15
  %21 = trunc nsw i64 %indvars.iv.next.14 to i32
  br label %for.cond10.preheader, !dbg !3690

for.cond10.preheader:                             ; preds = %entry, %for.cond10.preheader
  %indvars.iv = phi i64 [ %5, %entry ], [ %indvars.iv.next11, %for.cond10.preheader ]
    #dbg_value(i64 %indvars.iv, !3670, !DIExpression(), !3680)
  %22 = sub nsw i64 %indvars.iv, %5
  %23 = shl nsw i64 %22, 4
  %24 = trunc nuw nsw i64 %23 to i32
  %sub16 = sub i32 %24, %shl
    #dbg_value(i32 %shl, !3671, !DIExpression(), !3680)
    #dbg_value(i64 %4, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %4, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
    #dbg_value(i64 %23, !3676, !DIExpression(), !3680)
  %arrayidx19 = getelementptr inbounds i16, ptr %predMB, i64 %23, !dbg !3692
  %25 = load i16, ptr %arrayidx19, align 2, !dbg !3692
  %26 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21 = getelementptr inbounds ptr, ptr %26, i64 %indvars.iv, !dbg !3699
  %27 = load ptr, ptr %arrayidx21, align 8, !dbg !3699
  %arrayidx23 = getelementptr inbounds i16, ptr %27, i64 %4, !dbg !3699
  store i16 %25, ptr %arrayidx23, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.1 = add i32 %sub16, %7, !dbg !3701
    #dbg_value(i32 %add17.1, !3676, !DIExpression(), !3680)
  %idxprom18.1 = sext i32 %add17.1 to i64, !dbg !3692
  %arrayidx19.1 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.1, !dbg !3692
  %28 = load i16, ptr %arrayidx19.1, align 2, !dbg !3692
  %29 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.1 = getelementptr inbounds ptr, ptr %29, i64 %indvars.iv, !dbg !3699
  %30 = load ptr, ptr %arrayidx21.1, align 8, !dbg !3699
  %arrayidx23.1 = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next, !dbg !3699
  store i16 %28, ptr %arrayidx23.1, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.1, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.1, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.2 = add i32 %sub16, %8, !dbg !3701
    #dbg_value(i32 %add17.2, !3676, !DIExpression(), !3680)
  %idxprom18.2 = sext i32 %add17.2 to i64, !dbg !3692
  %arrayidx19.2 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.2, !dbg !3692
  %31 = load i16, ptr %arrayidx19.2, align 2, !dbg !3692
  %32 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.2 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv, !dbg !3699
  %33 = load ptr, ptr %arrayidx21.2, align 8, !dbg !3699
  %arrayidx23.2 = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.1, !dbg !3699
  store i16 %31, ptr %arrayidx23.2, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.2, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.2, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.3 = add i32 %sub16, %9, !dbg !3701
    #dbg_value(i32 %add17.3, !3676, !DIExpression(), !3680)
  %idxprom18.3 = sext i32 %add17.3 to i64, !dbg !3692
  %arrayidx19.3 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.3, !dbg !3692
  %34 = load i16, ptr %arrayidx19.3, align 2, !dbg !3692
  %35 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.3 = getelementptr inbounds ptr, ptr %35, i64 %indvars.iv, !dbg !3699
  %36 = load ptr, ptr %arrayidx21.3, align 8, !dbg !3699
  %arrayidx23.3 = getelementptr inbounds i16, ptr %36, i64 %indvars.iv.next.2, !dbg !3699
  store i16 %34, ptr %arrayidx23.3, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.3, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.3, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.4 = add i32 %sub16, %10, !dbg !3701
    #dbg_value(i32 %add17.4, !3676, !DIExpression(), !3680)
  %idxprom18.4 = sext i32 %add17.4 to i64, !dbg !3692
  %arrayidx19.4 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.4, !dbg !3692
  %37 = load i16, ptr %arrayidx19.4, align 2, !dbg !3692
  %38 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.4 = getelementptr inbounds ptr, ptr %38, i64 %indvars.iv, !dbg !3699
  %39 = load ptr, ptr %arrayidx21.4, align 8, !dbg !3699
  %arrayidx23.4 = getelementptr inbounds i16, ptr %39, i64 %indvars.iv.next.3, !dbg !3699
  store i16 %37, ptr %arrayidx23.4, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.4, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.4, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.5 = add i32 %sub16, %11, !dbg !3701
    #dbg_value(i32 %add17.5, !3676, !DIExpression(), !3680)
  %idxprom18.5 = sext i32 %add17.5 to i64, !dbg !3692
  %arrayidx19.5 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.5, !dbg !3692
  %40 = load i16, ptr %arrayidx19.5, align 2, !dbg !3692
  %41 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.5 = getelementptr inbounds ptr, ptr %41, i64 %indvars.iv, !dbg !3699
  %42 = load ptr, ptr %arrayidx21.5, align 8, !dbg !3699
  %arrayidx23.5 = getelementptr inbounds i16, ptr %42, i64 %indvars.iv.next.4, !dbg !3699
  store i16 %40, ptr %arrayidx23.5, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.5, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.5, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.6 = add i32 %sub16, %12, !dbg !3701
    #dbg_value(i32 %add17.6, !3676, !DIExpression(), !3680)
  %idxprom18.6 = sext i32 %add17.6 to i64, !dbg !3692
  %arrayidx19.6 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.6, !dbg !3692
  %43 = load i16, ptr %arrayidx19.6, align 2, !dbg !3692
  %44 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.6 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv, !dbg !3699
  %45 = load ptr, ptr %arrayidx21.6, align 8, !dbg !3699
  %arrayidx23.6 = getelementptr inbounds i16, ptr %45, i64 %indvars.iv.next.5, !dbg !3699
  store i16 %43, ptr %arrayidx23.6, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.6, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.6, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.7 = add i32 %sub16, %13, !dbg !3701
    #dbg_value(i32 %add17.7, !3676, !DIExpression(), !3680)
  %idxprom18.7 = sext i32 %add17.7 to i64, !dbg !3692
  %arrayidx19.7 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.7, !dbg !3692
  %46 = load i16, ptr %arrayidx19.7, align 2, !dbg !3692
  %47 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.7 = getelementptr inbounds ptr, ptr %47, i64 %indvars.iv, !dbg !3699
  %48 = load ptr, ptr %arrayidx21.7, align 8, !dbg !3699
  %arrayidx23.7 = getelementptr inbounds i16, ptr %48, i64 %indvars.iv.next.6, !dbg !3699
  store i16 %46, ptr %arrayidx23.7, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.7, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.7, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.8 = add i32 %sub16, %14, !dbg !3701
    #dbg_value(i32 %add17.8, !3676, !DIExpression(), !3680)
  %idxprom18.8 = sext i32 %add17.8 to i64, !dbg !3692
  %arrayidx19.8 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.8, !dbg !3692
  %49 = load i16, ptr %arrayidx19.8, align 2, !dbg !3692
  %50 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.8 = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv, !dbg !3699
  %51 = load ptr, ptr %arrayidx21.8, align 8, !dbg !3699
  %arrayidx23.8 = getelementptr inbounds i16, ptr %51, i64 %indvars.iv.next.7, !dbg !3699
  store i16 %49, ptr %arrayidx23.8, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.8, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.8, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.9 = add i32 %sub16, %15, !dbg !3701
    #dbg_value(i32 %add17.9, !3676, !DIExpression(), !3680)
  %idxprom18.9 = sext i32 %add17.9 to i64, !dbg !3692
  %arrayidx19.9 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.9, !dbg !3692
  %52 = load i16, ptr %arrayidx19.9, align 2, !dbg !3692
  %53 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.9 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv, !dbg !3699
  %54 = load ptr, ptr %arrayidx21.9, align 8, !dbg !3699
  %arrayidx23.9 = getelementptr inbounds i16, ptr %54, i64 %indvars.iv.next.8, !dbg !3699
  store i16 %52, ptr %arrayidx23.9, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.9, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.9, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.10 = add i32 %sub16, %16, !dbg !3701
    #dbg_value(i32 %add17.10, !3676, !DIExpression(), !3680)
  %idxprom18.10 = sext i32 %add17.10 to i64, !dbg !3692
  %arrayidx19.10 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.10, !dbg !3692
  %55 = load i16, ptr %arrayidx19.10, align 2, !dbg !3692
  %56 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.10 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv, !dbg !3699
  %57 = load ptr, ptr %arrayidx21.10, align 8, !dbg !3699
  %arrayidx23.10 = getelementptr inbounds i16, ptr %57, i64 %indvars.iv.next.9, !dbg !3699
  store i16 %55, ptr %arrayidx23.10, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.10, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.10, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.11 = add i32 %sub16, %17, !dbg !3701
    #dbg_value(i32 %add17.11, !3676, !DIExpression(), !3680)
  %idxprom18.11 = sext i32 %add17.11 to i64, !dbg !3692
  %arrayidx19.11 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.11, !dbg !3692
  %58 = load i16, ptr %arrayidx19.11, align 2, !dbg !3692
  %59 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.11 = getelementptr inbounds ptr, ptr %59, i64 %indvars.iv, !dbg !3699
  %60 = load ptr, ptr %arrayidx21.11, align 8, !dbg !3699
  %arrayidx23.11 = getelementptr inbounds i16, ptr %60, i64 %indvars.iv.next.10, !dbg !3699
  store i16 %58, ptr %arrayidx23.11, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.11, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.11, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.12 = add i32 %sub16, %18, !dbg !3701
    #dbg_value(i32 %add17.12, !3676, !DIExpression(), !3680)
  %idxprom18.12 = sext i32 %add17.12 to i64, !dbg !3692
  %arrayidx19.12 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.12, !dbg !3692
  %61 = load i16, ptr %arrayidx19.12, align 2, !dbg !3692
  %62 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.12 = getelementptr inbounds ptr, ptr %62, i64 %indvars.iv, !dbg !3699
  %63 = load ptr, ptr %arrayidx21.12, align 8, !dbg !3699
  %arrayidx23.12 = getelementptr inbounds i16, ptr %63, i64 %indvars.iv.next.11, !dbg !3699
  store i16 %61, ptr %arrayidx23.12, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.12, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.12, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.13 = add i32 %sub16, %19, !dbg !3701
    #dbg_value(i32 %add17.13, !3676, !DIExpression(), !3680)
  %idxprom18.13 = sext i32 %add17.13 to i64, !dbg !3692
  %arrayidx19.13 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.13, !dbg !3692
  %64 = load i16, ptr %arrayidx19.13, align 2, !dbg !3692
  %65 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.13 = getelementptr inbounds ptr, ptr %65, i64 %indvars.iv, !dbg !3699
  %66 = load ptr, ptr %arrayidx21.13, align 8, !dbg !3699
  %arrayidx23.13 = getelementptr inbounds i16, ptr %66, i64 %indvars.iv.next.12, !dbg !3699
  store i16 %64, ptr %arrayidx23.13, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.13, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.13, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.14 = add i32 %sub16, %20, !dbg !3701
    #dbg_value(i32 %add17.14, !3676, !DIExpression(), !3680)
  %idxprom18.14 = sext i32 %add17.14 to i64, !dbg !3692
  %arrayidx19.14 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.14, !dbg !3692
  %67 = load i16, ptr %arrayidx19.14, align 2, !dbg !3692
  %68 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.14 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv, !dbg !3699
  %69 = load ptr, ptr %arrayidx21.14, align 8, !dbg !3699
  %arrayidx23.14 = getelementptr inbounds i16, ptr %69, i64 %indvars.iv.next.13, !dbg !3699
  store i16 %67, ptr %arrayidx23.14, align 2, !dbg !3700
    #dbg_value(i64 %indvars.iv.next.14, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv, i64 %indvars.iv.next.14, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %add17.15 = add i32 %sub16, %21, !dbg !3701
    #dbg_value(i32 %add17.15, !3676, !DIExpression(), !3680)
  %idxprom18.15 = sext i32 %add17.15 to i64, !dbg !3692
  %arrayidx19.15 = getelementptr inbounds i16, ptr %predMB, i64 %idxprom18.15, !dbg !3692
  %70 = load i16, ptr %arrayidx19.15, align 2, !dbg !3692
  %71 = load ptr, ptr %imgY, align 8, !dbg !3698
  %arrayidx21.15 = getelementptr inbounds ptr, ptr %71, i64 %indvars.iv, !dbg !3699
  %72 = load ptr, ptr %arrayidx21.15, align 8, !dbg !3699
  %arrayidx23.15 = getelementptr inbounds i16, ptr %72, i64 %indvars.iv.next.14, !dbg !3699
  store i16 %70, ptr %arrayidx23.15, align 2, !dbg !3700
    #dbg_value(i64 %4, !3671, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3680)
  %indvars.iv.next11 = add nsw i64 %indvars.iv, 1, !dbg !3702
    #dbg_value(i64 %indvars.iv.next11, !3670, !DIExpression(), !3680)
  %lftr.wideiv = trunc i64 %indvars.iv.next11 to i32, !dbg !3703
  %exitcond.not = icmp eq i32 %6, %lftr.wideiv, !dbg !3703
  br i1 %exitcond.not, label %for.end26, label %for.cond10.preheader, !dbg !3690, !llvm.loop !3704

for.end26:                                        ; preds = %for.cond10.preheader
  %sub = add nsw i32 %shl, 15, !dbg !3706
  %73 = load i32, ptr %chroma_format_idc, align 4, !dbg !3707
  %cmp28.not = icmp eq i32 %73, 0, !dbg !3709
  br i1 %cmp28.not, label %if.end, label %if.then, !dbg !3710

if.then:                                          ; preds = %for.end26
  %shr29 = ashr i32 %shl7, %3, !dbg !3711
    #dbg_value(i32 %shr29, !3670, !DIExpression(), !3680)
  %shr31 = ashr i32 %sub9, %3
    #dbg_value(i32 %shr29, !3670, !DIExpression(), !3680)
  %cmp32.not7 = icmp sgt i32 %shr29, %shr31, !dbg !3714
  br i1 %cmp32.not7, label %if.end, label %for.body33.lr.ph, !dbg !3716

for.body33.lr.ph:                                 ; preds = %if.then
  %shr34 = ashr i32 %shl, %2
  %shr36 = ashr i32 %sub, %2
  %invariant.gep = getelementptr i8, ptr %predMB, i64 512
  %invariant.gep3 = getelementptr i8, ptr %predMB, i64 640
  %cmp37.not5 = icmp sgt i32 %shr34, %shr36
  %mb_cr_size_x = getelementptr inbounds i8, ptr %recfr.0.val, i64 849108
  %imgUV = getelementptr inbounds i8, ptr %0, i64 136
  br i1 %cmp37.not5, label %if.end, label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.body33.lr.ph
  %shr45 = shl nsw i32 %rem, 2
  %74 = sext i32 %shr34 to i64, !dbg !3716
  %75 = sext i32 %shr45 to i64, !dbg !3716
  %76 = add i32 %shr36, 1, !dbg !3716
  %77 = sext i32 %shr29 to i64, !dbg !3716
  %78 = add i32 %shr31, 1, !dbg !3716
  br label %for.body33, !dbg !3716

for.body33:                                       ; preds = %for.body33.preheader, %for.cond35.for.inc68_crit_edge
  %indvars.iv22 = phi i64 [ %77, %for.body33.preheader ], [ %indvars.iv.next23, %for.cond35.for.inc68_crit_edge ]
    #dbg_value(i64 %indvars.iv22, !3670, !DIExpression(), !3680)
    #dbg_value(i32 %shr34, !3671, !DIExpression(), !3680)
  %79 = sub nsw i64 %indvars.iv22, %77
  br label %for.body38, !dbg !3717

for.body38:                                       ; preds = %for.body33, %for.body38
  %indvars.iv15 = phi i64 [ %74, %for.body33 ], [ %indvars.iv.next16, %for.body38 ]
    #dbg_value(i64 %indvars.iv15, !3671, !DIExpression(), !3680)
    #dbg_value(!DIArgList(i64 %indvars.iv22, i64 %indvars.iv15, i32 %2, i32 %picSizeX), !3677, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_shra, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3680)
  %80 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3720
  %81 = sext i32 %80 to i64, !dbg !3723
  %82 = mul nsw i64 %79, %81, !dbg !3723
  %83 = sub nsw i64 %indvars.iv15, %75, !dbg !3724
  %84 = add nsw i64 %82, %83, !dbg !3725
    #dbg_value(!DIArgList(i32 %80, i64 %indvars.iv15, i32 %shr45, i64 %indvars.iv22, i32 %shr29), !3676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 256, DW_OP_stack_value), !3680)
  %gep = getelementptr i16, ptr %invariant.gep, i64 %84, !dbg !3726
  %85 = load i16, ptr %gep, align 2, !dbg !3726
  %86 = load ptr, ptr %imgUV, align 8, !dbg !3727
  %87 = load ptr, ptr %86, align 8, !dbg !3728
  %arrayidx53 = getelementptr inbounds ptr, ptr %87, i64 %indvars.iv22, !dbg !3728
  %88 = load ptr, ptr %arrayidx53, align 8, !dbg !3728
  %arrayidx55 = getelementptr inbounds i16, ptr %88, i64 %indvars.iv15, !dbg !3728
  store i16 %85, ptr %arrayidx55, align 2, !dbg !3729
    #dbg_value(!DIArgList(i32 %80, i64 %indvars.iv15, i32 %shr45, i64 %indvars.iv22, i32 %shr29), !3676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_plus_uconst, 320, DW_OP_stack_value), !3680)
  %gep4 = getelementptr i16, ptr %invariant.gep3, i64 %84, !dbg !3730
  %89 = load i16, ptr %gep4, align 2, !dbg !3730
  %90 = load ptr, ptr %imgUV, align 8, !dbg !3731
  %arrayidx60 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !3732
  %91 = load ptr, ptr %arrayidx60, align 8, !dbg !3732
  %arrayidx62 = getelementptr inbounds ptr, ptr %91, i64 %indvars.iv22, !dbg !3732
  %92 = load ptr, ptr %arrayidx62, align 8, !dbg !3732
  %arrayidx64 = getelementptr inbounds i16, ptr %92, i64 %indvars.iv15, !dbg !3732
  store i16 %89, ptr %arrayidx64, align 2, !dbg !3733
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !3734
    #dbg_value(i64 %indvars.iv.next16, !3671, !DIExpression(), !3680)
  %lftr.wideiv20 = trunc i64 %indvars.iv.next16 to i32, !dbg !3735
  %exitcond21.not = icmp eq i32 %76, %lftr.wideiv20, !dbg !3735
  br i1 %exitcond21.not, label %for.cond35.for.inc68_crit_edge, label %for.body38, !dbg !3717, !llvm.loop !3736

for.cond35.for.inc68_crit_edge:                   ; preds = %for.body38
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1, !dbg !3738
    #dbg_value(i64 %indvars.iv.next23, !3670, !DIExpression(), !3680)
  %lftr.wideiv27 = trunc i64 %indvars.iv.next23 to i32, !dbg !3714
  %exitcond28.not = icmp eq i32 %78, %lftr.wideiv27, !dbg !3714
  br i1 %exitcond28.not, label %if.end, label %for.body33, !dbg !3716, !llvm.loop !3739

if.end:                                           ; preds = %for.cond35.for.inc68_crit_edge, %for.body33.lr.ph, %if.then, %for.end26
  ret void, !dbg !3741
}

declare !dbg !3742 i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3745 void @get_block_luma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare !dbg !3749 void @free_mem2Dpel(ptr noundef) local_unnamed_addr #3

declare !dbg !3752 void @init_lists(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251}
!llvm.ident = !{!252}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/erc_do_p.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "77c8a761cc65c5e921be34454b48f400")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1621, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "uv_div", scope: !14, file: !2, line: 51, type: !243, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !76, globals: !222, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !25, !31, !40, !47, !55, !63, !69}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 22, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!21 = !DIEnumerator(name: "YUV400", value: 0)
!22 = !DIEnumerator(name: "YUV420", value: 1)
!23 = !DIEnumerator(name: "YUV422", value: 2)
!24 = !DIEnumerator(name: "YUV444", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 15, baseType: !18, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!28 = !DIEnumerator(name: "CM_YUV", value: 0)
!29 = !DIEnumerator(name: "CM_RGB", value: 1)
!30 = !DIEnumerator(name: "CM_XYZ", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 25, baseType: !18, size: 32, elements: !33)
!32 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!35 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!36 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!37 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!38 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!39 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 135, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46}
!44 = !DIEnumerator(name: "FRAME", value: 0)
!45 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!46 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 22, baseType: !42, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DIEnumerator(name: "PLANE_Y", value: 0)
!50 = !DIEnumerator(name: "PLANE_U", value: 1)
!51 = !DIEnumerator(name: "PLANE_V", value: 2)
!52 = !DIEnumerator(name: "PLANE_G", value: 0)
!53 = !DIEnumerator(name: "PLANE_B", value: 1)
!54 = !DIEnumerator(name: "PLANE_R", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 142, baseType: !42, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "P_SLICE", value: 0)
!58 = !DIEnumerator(name: "B_SLICE", value: 1)
!59 = !DIEnumerator(name: "I_SLICE", value: 2)
!60 = !DIEnumerator(name: "SP_SLICE", value: 3)
!61 = !DIEnumerator(name: "SI_SLICE", value: 4)
!62 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 65, baseType: !42, size: 32, elements: !65)
!64 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "LumaComp", value: 0)
!67 = !DIEnumerator(name: "CrComp", value: 1)
!68 = !DIEnumerator(name: "CbComp", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 34, baseType: !42, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75}
!71 = !DIEnumerator(name: "LIST_0", value: 0)
!72 = !DIEnumerator(name: "LIST_1", value: 1)
!73 = !DIEnumerator(name: "BI_PRED", value: 2)
!74 = !DIEnumerator(name: "BI_PRED_L0", value: 3)
!75 = !DIEnumerator(name: "BI_PRED_L1", value: 4)
!76 = !{!77, !82, !18, !83, !84, !85, !86, !78, !221}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !79, line: 23, baseType: !81)
!81 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !88, line: 136, size: 192, elements: !89)
!88 = !DIFile(filename: "ldecod_src/inc/erc_api.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9f38a583d5066807e951e2b61474101e")
!89 = !{!90, !219, !220}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "picture", scope: !87, file: !88, line: 137, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !93, line: 138, baseType: !94)
!93 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !93, line: 46, size: 3328, elements: !95)
!95 = !{!96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !135, !136, !155, !159, !164, !166, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !188, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !94, file: !93, line: 48, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !41, line: 140, baseType: !40)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !94, file: !93, line: 50, baseType: !18, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !94, file: !93, line: 51, baseType: !18, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !94, file: !93, line: 52, baseType: !18, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !94, file: !93, line: 53, baseType: !18, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !94, file: !93, line: 54, baseType: !42, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !94, file: !93, line: 55, baseType: !42, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !94, file: !93, line: 57, baseType: !18, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !94, file: !93, line: 58, baseType: !18, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !94, file: !93, line: 59, baseType: !18, size: 32, offset: 288)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !94, file: !93, line: 61, baseType: !108, size: 8, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !79, line: 21, baseType: !109)
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !94, file: !93, line: 62, baseType: !18, size: 32, offset: 352)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !94, file: !93, line: 63, baseType: !18, size: 32, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !94, file: !93, line: 64, baseType: !18, size: 32, offset: 416)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !94, file: !93, line: 65, baseType: !18, size: 32, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !94, file: !93, line: 67, baseType: !84, size: 16, offset: 480)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !94, file: !93, line: 69, baseType: !18, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !94, file: !93, line: 69, baseType: !18, size: 32, offset: 544)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !94, file: !93, line: 69, baseType: !18, size: 32, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !94, file: !93, line: 69, baseType: !18, size: 32, offset: 608)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !94, file: !93, line: 70, baseType: !18, size: 32, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !94, file: !93, line: 70, baseType: !18, size: 32, offset: 672)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !94, file: !93, line: 70, baseType: !18, size: 32, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !94, file: !93, line: 70, baseType: !18, size: 32, offset: 736)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !94, file: !93, line: 71, baseType: !18, size: 32, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !94, file: !93, line: 72, baseType: !18, size: 32, offset: 800)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !94, file: !93, line: 73, baseType: !42, size: 32, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !94, file: !93, line: 74, baseType: !42, size: 32, offset: 864)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !94, file: !93, line: 75, baseType: !18, size: 32, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !94, file: !93, line: 75, baseType: !18, size: 32, offset: 928)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !94, file: !93, line: 76, baseType: !18, size: 32, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !94, file: !93, line: 76, baseType: !18, size: 32, offset: 992)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !94, file: !93, line: 79, baseType: !132, size: 64, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !94, file: !93, line: 80, baseType: !134, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !94, file: !93, line: 81, baseType: !134, size: 64, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !94, file: !93, line: 84, baseType: !137, size: 64, offset: 1216)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !93, line: 36, size: 256, elements: !140)
!140 = !{!141, !146, !153}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !139, file: !93, line: 38, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !139, file: !93, line: 39, baseType: !147, size: 64, offset: 128)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, elements: !144)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !64, line: 104, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 100, size: 32, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !149, file: !64, line: 102, baseType: !84, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !149, file: !64, line: 103, baseType: !84, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !139, file: !93, line: 40, baseType: !154, size: 16, offset: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 16, elements: !144)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !94, file: !93, line: 85, baseType: !156, size: 192, offset: 1280)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 3)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !94, file: !93, line: 87, baseType: !160, size: 64, offset: 1472)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !93, line: 29, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !160, file: !93, line: 31, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !94, file: !93, line: 88, baseType: !165, size: 192, offset: 1536)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 192, elements: !157)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !94, file: !93, line: 90, baseType: !167, size: 64, offset: 1728)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !94, file: !93, line: 92, baseType: !143, size: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !94, file: !93, line: 93, baseType: !143, size: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !94, file: !93, line: 94, baseType: !143, size: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !94, file: !93, line: 96, baseType: !18, size: 32, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !94, file: !93, line: 97, baseType: !18, size: 32, offset: 2016)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !94, file: !93, line: 98, baseType: !18, size: 32, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !94, file: !93, line: 99, baseType: !18, size: 32, offset: 2080)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !94, file: !93, line: 100, baseType: !18, size: 32, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !94, file: !93, line: 102, baseType: !18, size: 32, offset: 2144)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !94, file: !93, line: 103, baseType: !18, size: 32, offset: 2176)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !94, file: !93, line: 104, baseType: !18, size: 32, offset: 2208)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !94, file: !93, line: 105, baseType: !18, size: 32, offset: 2240)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !94, file: !93, line: 106, baseType: !18, size: 32, offset: 2272)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !94, file: !93, line: 107, baseType: !18, size: 32, offset: 2304)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !94, file: !93, line: 108, baseType: !18, size: 32, offset: 2336)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !94, file: !93, line: 109, baseType: !18, size: 32, offset: 2368)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !94, file: !93, line: 110, baseType: !186, size: 64, offset: 2400)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !144)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !94, file: !93, line: 111, baseType: !18, size: 32, offset: 2464)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !94, file: !93, line: 112, baseType: !189, size: 64, offset: 2496)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !64, line: 194, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !64, line: 186, size: 256, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !191, file: !64, line: 188, baseType: !18, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !191, file: !64, line: 189, baseType: !18, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !191, file: !64, line: 190, baseType: !18, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !191, file: !64, line: 191, baseType: !18, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !191, file: !64, line: 192, baseType: !18, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !191, file: !64, line: 193, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !94, file: !93, line: 115, baseType: !18, size: 32, offset: 2560)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !94, file: !93, line: 118, baseType: !18, size: 32, offset: 2592)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !94, file: !93, line: 119, baseType: !18, size: 32, offset: 2624)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !94, file: !93, line: 120, baseType: !18, size: 32, offset: 2656)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !94, file: !93, line: 121, baseType: !77, size: 64, offset: 2688)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !94, file: !93, line: 124, baseType: !18, size: 32, offset: 2752)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !94, file: !93, line: 125, baseType: !18, size: 32, offset: 2784)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !94, file: !93, line: 126, baseType: !18, size: 32, offset: 2816)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !94, file: !93, line: 128, baseType: !18, size: 32, offset: 2848)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !94, file: !93, line: 129, baseType: !18, size: 32, offset: 2880)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !94, file: !93, line: 130, baseType: !18, size: 32, offset: 2912)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !94, file: !93, line: 131, baseType: !18, size: 32, offset: 2944)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !94, file: !93, line: 132, baseType: !132, size: 64, offset: 3008)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !94, file: !93, line: 133, baseType: !18, size: 32, offset: 3072)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !94, file: !93, line: 134, baseType: !18, size: 32, offset: 3104)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !94, file: !93, line: 136, baseType: !154, size: 16, offset: 3136)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !94, file: !93, line: 137, baseType: !217, size: 128, offset: 3200)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 128, elements: !144)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "missingpocs", scope: !87, file: !88, line: 138, baseType: !18, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !88, line: 139, baseType: !86, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!222 = !{!0, !7, !12, !223, !231, !233}
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "subblk_offset_y", scope: !14, file: !225, line: 69, type: !226, isLocal: true, isDefinition: true)
!225 = !DIFile(filename: "ldecod_src/inc/block.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e90b7727b4f0f4492b5dc2d8d9d6a429")
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 768, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!228 = !{!158, !229, !230}
!229 = !DISubrange(count: 8)
!230 = !DISubrange(count: 4)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "subblk_offset_x", scope: !14, file: !225, line: 34, type: !226, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "INT_BITS", scope: !235, file: !236, line: 118, type: !242, isLocal: true, isDefinition: true)
!235 = distinct !DISubprogram(name: "iabs", scope: !236, file: !236, line: 116, type: !237, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !239)
!236 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!237 = !DISubroutineType(types: !238)
!238 = !{!18, !18}
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "x", arg: 1, scope: !235, file: !236, line: 116, type: !18)
!241 = !DILocalVariable(name: "y", scope: !235, file: !236, line: 119, type: !18)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !244)
!244 = !{!145, !230}
!245 = !{i32 7, !"Dwarf Version", i32 5}
!246 = !{i32 2, !"Debug Info Version", i32 3}
!247 = !{i32 1, !"wchar_size", i32 4}
!248 = !{i32 8, !"PIC Level", i32 2}
!249 = !{i32 7, !"PIE Level", i32 2}
!250 = !{i32 7, !"uwtable", i32 2}
!251 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!252 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!253 = distinct !DISubprogram(name: "ercConcealInterFrame", scope: !2, file: !2, line: 74, type: !254, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1333)
!254 = !DISubroutineType(types: !255)
!255 = !{!18, !256, !1329, !18, !18, !1331, !18}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame", file: !258, line: 39, baseType: !259)
!258 = !DIFile(filename: "ldecod_src/inc/erc_globals.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c27fab662deb7c381592b003d3b76fc7")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_s", file: !258, line: 33, size: 256, elements: !260)
!260 = !{!261, !1326, !1327, !1328}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !259, file: !258, line: 35, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !64, line: 836, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !64, line: 566, size: 6855040, elements: !265)
!265 = !{!266, !348, !399, !502, !504, !506, !563, !565, !566, !567, !568, !569, !572, !589, !601, !602, !603, !604, !605, !606, !1051, !1052, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1062, !1065, !1066, !1068, !1069, !1070, !1071, !1072, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197, !1198, !1200, !1201, !1209, !1231, !1232, !1233, !1237, !1240, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1252, !1255, !1256, !1257, !1258, !1261, !1266, !1270, !1274, !1278, !1279, !1283, !1284, !1288, !1289, !1293, !1314, !1315, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !264, file: !64, line: 568, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !64, line: 850, size: 32128, elements: !269)
!269 = !{!270, !274, !275, !276, !277, !278, !279, !280, !281, !282, !310, !311, !312, !313, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !268, file: !64, line: 852, baseType: !271, size: 2040)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 255)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !268, file: !64, line: 853, baseType: !271, size: 2040, offset: 2040)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !268, file: !64, line: 854, baseType: !271, size: 2040, offset: 4080)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !268, file: !64, line: 856, baseType: !18, size: 32, offset: 6144)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !268, file: !64, line: 857, baseType: !18, size: 32, offset: 6176)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !268, file: !64, line: 858, baseType: !18, size: 32, offset: 6208)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !268, file: !64, line: 859, baseType: !18, size: 32, offset: 6240)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !268, file: !64, line: 860, baseType: !18, size: 32, offset: 6272)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !268, file: !64, line: 861, baseType: !18, size: 32, offset: 6304)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !268, file: !64, line: 864, baseType: !283, size: 1088, offset: 6336)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !17, line: 52, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !17, line: 30, size: 1088, elements: !285)
!285 = !{!286, !288, !290, !292, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !284, file: !17, line: 32, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !17, line: 28, baseType: !16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !284, file: !17, line: 33, baseType: !289, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !17, line: 20, baseType: !25)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !284, file: !17, line: 34, baseType: !291, size: 64, offset: 64)
!291 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !284, file: !17, line: 35, baseType: !293, size: 96, offset: 128)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !157)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !284, file: !17, line: 36, baseType: !293, size: 96, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !284, file: !17, line: 37, baseType: !18, size: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !284, file: !17, line: 38, baseType: !18, size: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !284, file: !17, line: 39, baseType: !18, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !284, file: !17, line: 40, baseType: !18, size: 32, offset: 416)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !284, file: !17, line: 41, baseType: !18, size: 32, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !284, file: !17, line: 42, baseType: !18, size: 32, offset: 480)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !284, file: !17, line: 43, baseType: !18, size: 32, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !284, file: !17, line: 44, baseType: !18, size: 32, offset: 544)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !284, file: !17, line: 45, baseType: !293, size: 96, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !17, line: 46, baseType: !18, size: 32, offset: 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !284, file: !17, line: 47, baseType: !293, size: 96, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !284, file: !17, line: 48, baseType: !293, size: 96, offset: 800)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !284, file: !17, line: 49, baseType: !293, size: 96, offset: 896)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !284, file: !17, line: 50, baseType: !18, size: 32, offset: 992)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !284, file: !17, line: 51, baseType: !18, size: 32, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !268, file: !64, line: 865, baseType: !283, size: 1088, offset: 7424)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !268, file: !64, line: 867, baseType: !18, size: 32, offset: 8512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !268, file: !64, line: 868, baseType: !18, size: 32, offset: 8544)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !268, file: !64, line: 869, baseType: !314, size: 7744, offset: 8576)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !32, line: 60, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !32, line: 34, size: 7744, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !315, file: !32, line: 37, baseType: !271, size: 2040)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !315, file: !32, line: 38, baseType: !271, size: 2040, offset: 2040)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !315, file: !32, line: 39, baseType: !271, size: 2040, offset: 4080)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !315, file: !32, line: 40, baseType: !18, size: 32, offset: 6144)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !315, file: !32, line: 41, baseType: !322, size: 32, offset: 6176)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !32, line: 32, baseType: !31)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !315, file: !32, line: 42, baseType: !283, size: 1088, offset: 6208)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !315, file: !32, line: 43, baseType: !18, size: 32, offset: 7296)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !315, file: !32, line: 44, baseType: !18, size: 32, offset: 7328)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !315, file: !32, line: 45, baseType: !18, size: 32, offset: 7360)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !315, file: !32, line: 46, baseType: !18, size: 32, offset: 7392)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !315, file: !32, line: 47, baseType: !18, size: 32, offset: 7424)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !315, file: !32, line: 48, baseType: !18, size: 32, offset: 7456)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !315, file: !32, line: 49, baseType: !18, size: 32, offset: 7488)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !315, file: !32, line: 50, baseType: !18, size: 32, offset: 7520)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !315, file: !32, line: 51, baseType: !18, size: 32, offset: 7552)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !315, file: !32, line: 52, baseType: !18, size: 32, offset: 7584)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !315, file: !32, line: 53, baseType: !18, size: 32, offset: 7616)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !315, file: !32, line: 56, baseType: !85, size: 64, offset: 7680)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !268, file: !64, line: 870, baseType: !314, size: 7744, offset: 16320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !268, file: !64, line: 871, baseType: !314, size: 7744, offset: 24064)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !268, file: !64, line: 873, baseType: !18, size: 32, offset: 31808)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !268, file: !64, line: 884, baseType: !18, size: 32, offset: 31840)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !268, file: !64, line: 885, baseType: !18, size: 32, offset: 31872)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !268, file: !64, line: 886, baseType: !18, size: 32, offset: 31904)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !268, file: !64, line: 890, baseType: !18, size: 32, offset: 31936)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !268, file: !64, line: 893, baseType: !18, size: 32, offset: 31968)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !268, file: !64, line: 894, baseType: !18, size: 32, offset: 32000)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !268, file: !64, line: 895, baseType: !18, size: 32, offset: 32032)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !268, file: !64, line: 897, baseType: !18, size: 32, offset: 32064)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !268, file: !64, line: 899, baseType: !18, size: 32, offset: 32096)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !264, file: !64, line: 569, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !351, line: 138, baseType: !352)
!351 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 94, size: 17728, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !364, !368, !372, !375, !376, !377, !378, !379, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !352, file: !351, line: 96, baseType: !18, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !352, file: !351, line: 97, baseType: !42, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !352, file: !351, line: 98, baseType: !42, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !352, file: !351, line: 99, baseType: !18, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !352, file: !351, line: 100, baseType: !18, size: 32, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !352, file: !351, line: 102, baseType: !18, size: 32, offset: 160)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !352, file: !351, line: 103, baseType: !361, size: 384, offset: 192)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 12)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !352, file: !351, line: 104, baseType: !365, size: 3072, offset: 576)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3072, elements: !366)
!366 = !{!367, !11}
!367 = !DISubrange(count: 6)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !352, file: !351, line: 105, baseType: !369, size: 12288, offset: 3648)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 12288, elements: !370)
!370 = !{!367, !371}
!371 = !DISubrange(count: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !352, file: !351, line: 106, baseType: !373, size: 192, offset: 15936)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !374)
!374 = !{!367}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !352, file: !351, line: 107, baseType: !373, size: 192, offset: 16128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !352, file: !351, line: 110, baseType: !18, size: 32, offset: 16320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !352, file: !351, line: 111, baseType: !42, size: 32, offset: 16352)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !352, file: !351, line: 112, baseType: !42, size: 32, offset: 16384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !352, file: !351, line: 114, baseType: !380, size: 256, offset: 16416)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !381)
!381 = !{!229}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !352, file: !351, line: 116, baseType: !380, size: 256, offset: 16672)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !352, file: !351, line: 117, baseType: !380, size: 256, offset: 16928)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !352, file: !351, line: 119, baseType: !18, size: 32, offset: 17184)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !352, file: !351, line: 120, baseType: !42, size: 32, offset: 17216)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !352, file: !351, line: 122, baseType: !42, size: 32, offset: 17248)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !352, file: !351, line: 123, baseType: !163, size: 64, offset: 17280)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !352, file: !351, line: 125, baseType: !18, size: 32, offset: 17344)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !352, file: !351, line: 126, baseType: !18, size: 32, offset: 17376)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !352, file: !351, line: 127, baseType: !18, size: 32, offset: 17408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !352, file: !351, line: 128, baseType: !42, size: 32, offset: 17440)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !352, file: !351, line: 129, baseType: !18, size: 32, offset: 17472)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !352, file: !351, line: 130, baseType: !18, size: 32, offset: 17504)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !352, file: !351, line: 131, baseType: !18, size: 32, offset: 17536)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !352, file: !351, line: 133, baseType: !18, size: 32, offset: 17568)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !352, file: !351, line: 135, baseType: !18, size: 32, offset: 17600)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !352, file: !351, line: 136, baseType: !18, size: 32, offset: 17632)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !352, file: !351, line: 137, baseType: !18, size: 32, offset: 17664)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !264, file: !64, line: 570, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !351, line: 197, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 142, size: 33024, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !500, !501}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !402, file: !351, line: 144, baseType: !18, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !402, file: !351, line: 146, baseType: !42, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !402, file: !351, line: 147, baseType: !18, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !402, file: !351, line: 148, baseType: !18, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !402, file: !351, line: 149, baseType: !18, size: 32, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !402, file: !351, line: 150, baseType: !18, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !402, file: !351, line: 152, baseType: !18, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !402, file: !351, line: 154, baseType: !42, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !402, file: !351, line: 155, baseType: !42, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !402, file: !351, line: 156, baseType: !42, size: 32, offset: 288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !402, file: !351, line: 158, baseType: !18, size: 32, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !402, file: !351, line: 159, baseType: !361, size: 384, offset: 352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !402, file: !351, line: 160, baseType: !365, size: 3072, offset: 736)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !402, file: !351, line: 161, baseType: !369, size: 12288, offset: 3808)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !402, file: !351, line: 162, baseType: !373, size: 192, offset: 16096)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !402, file: !351, line: 163, baseType: !373, size: 192, offset: 16288)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !402, file: !351, line: 165, baseType: !42, size: 32, offset: 16480)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !402, file: !351, line: 166, baseType: !42, size: 32, offset: 16512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !402, file: !351, line: 167, baseType: !42, size: 32, offset: 16544)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !402, file: !351, line: 168, baseType: !42, size: 32, offset: 16576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !402, file: !351, line: 170, baseType: !42, size: 32, offset: 16608)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !402, file: !351, line: 172, baseType: !18, size: 32, offset: 16640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !402, file: !351, line: 173, baseType: !18, size: 32, offset: 16672)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !402, file: !351, line: 174, baseType: !18, size: 32, offset: 16704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !402, file: !351, line: 175, baseType: !42, size: 32, offset: 16736)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !402, file: !351, line: 177, baseType: !430, size: 8192, offset: 16768)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !402, file: !351, line: 178, baseType: !42, size: 32, offset: 24960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !402, file: !351, line: 179, baseType: !18, size: 32, offset: 24992)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !402, file: !351, line: 180, baseType: !42, size: 32, offset: 25024)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !402, file: !351, line: 181, baseType: !42, size: 32, offset: 25056)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !402, file: !351, line: 182, baseType: !18, size: 32, offset: 25088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !402, file: !351, line: 184, baseType: !18, size: 32, offset: 25120)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !402, file: !351, line: 185, baseType: !18, size: 32, offset: 25152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !402, file: !351, line: 186, baseType: !18, size: 32, offset: 25184)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !402, file: !351, line: 187, baseType: !42, size: 32, offset: 25216)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !402, file: !351, line: 188, baseType: !42, size: 32, offset: 25248)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !402, file: !351, line: 189, baseType: !42, size: 32, offset: 25280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !402, file: !351, line: 190, baseType: !42, size: 32, offset: 25312)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !402, file: !351, line: 191, baseType: !18, size: 32, offset: 25344)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !402, file: !351, line: 192, baseType: !447, size: 7584, offset: 25376)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !351, line: 90, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 53, size: 7584, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !448, file: !351, line: 55, baseType: !18, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !448, file: !351, line: 56, baseType: !42, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !448, file: !351, line: 57, baseType: !81, size: 16, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !448, file: !351, line: 58, baseType: !81, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !448, file: !351, line: 59, baseType: !18, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !448, file: !351, line: 60, baseType: !18, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !448, file: !351, line: 61, baseType: !18, size: 32, offset: 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !448, file: !351, line: 62, baseType: !42, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !448, file: !351, line: 63, baseType: !18, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !448, file: !351, line: 64, baseType: !18, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !448, file: !351, line: 65, baseType: !42, size: 32, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !448, file: !351, line: 66, baseType: !42, size: 32, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !448, file: !351, line: 67, baseType: !42, size: 32, offset: 352)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !448, file: !351, line: 68, baseType: !18, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !448, file: !351, line: 69, baseType: !42, size: 32, offset: 416)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !448, file: !351, line: 70, baseType: !42, size: 32, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !448, file: !351, line: 71, baseType: !18, size: 32, offset: 480)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !448, file: !351, line: 72, baseType: !42, size: 32, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !448, file: !351, line: 73, baseType: !42, size: 32, offset: 544)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !448, file: !351, line: 74, baseType: !18, size: 32, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !448, file: !351, line: 75, baseType: !18, size: 32, offset: 608)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !448, file: !351, line: 76, baseType: !472, size: 3296, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !351, line: 50, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 38, size: 3296, elements: !474)
!474 = !{!475, !476, !477, !478, !482, !483, !484, !485, !486, !487}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !473, file: !351, line: 40, baseType: !42, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !473, file: !351, line: 41, baseType: !42, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !473, file: !351, line: 42, baseType: !42, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !473, file: !351, line: 43, baseType: !479, size: 1024, offset: 96)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !473, file: !351, line: 44, baseType: !479, size: 1024, offset: 1120)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !473, file: !351, line: 45, baseType: !479, size: 1024, offset: 2144)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !473, file: !351, line: 46, baseType: !42, size: 32, offset: 3168)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !473, file: !351, line: 47, baseType: !42, size: 32, offset: 3200)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !473, file: !351, line: 48, baseType: !42, size: 32, offset: 3232)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !473, file: !351, line: 49, baseType: !42, size: 32, offset: 3264)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !448, file: !351, line: 77, baseType: !18, size: 32, offset: 3936)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !448, file: !351, line: 78, baseType: !472, size: 3296, offset: 3968)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !448, file: !351, line: 80, baseType: !18, size: 32, offset: 7264)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !448, file: !351, line: 81, baseType: !18, size: 32, offset: 7296)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !448, file: !351, line: 82, baseType: !18, size: 32, offset: 7328)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !448, file: !351, line: 83, baseType: !18, size: 32, offset: 7360)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !448, file: !351, line: 84, baseType: !42, size: 32, offset: 7392)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !448, file: !351, line: 85, baseType: !42, size: 32, offset: 7424)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !448, file: !351, line: 86, baseType: !42, size: 32, offset: 7456)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !448, file: !351, line: 87, baseType: !42, size: 32, offset: 7488)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !448, file: !351, line: 88, baseType: !42, size: 32, offset: 7520)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !448, file: !351, line: 89, baseType: !42, size: 32, offset: 7552)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !402, file: !351, line: 193, baseType: !42, size: 32, offset: 32960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !402, file: !351, line: 195, baseType: !18, size: 32, offset: 32992)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !264, file: !64, line: 571, baseType: !503, size: 1056768, offset: 192)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 1056768, elements: !480)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !264, file: !64, line: 572, baseType: !505, size: 4538368, offset: 1056960)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 4538368, elements: !431)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !264, file: !64, line: 575, baseType: !507, size: 64, offset: 5595328)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !351, line: 256, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 228, size: 37312, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !531, !532, !533, !534}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !509, file: !351, line: 230, baseType: !401, size: 33024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !509, file: !351, line: 232, baseType: !42, size: 32, offset: 33024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !509, file: !351, line: 233, baseType: !18, size: 32, offset: 33056)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !509, file: !351, line: 234, baseType: !85, size: 64, offset: 33088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !509, file: !351, line: 235, baseType: !85, size: 64, offset: 33152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !509, file: !351, line: 236, baseType: !517, size: 64, offset: 33216)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !509, file: !351, line: 237, baseType: !85, size: 64, offset: 33280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !509, file: !351, line: 238, baseType: !517, size: 64, offset: 33344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !509, file: !351, line: 240, baseType: !85, size: 64, offset: 33408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !509, file: !351, line: 241, baseType: !517, size: 64, offset: 33472)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !509, file: !351, line: 242, baseType: !85, size: 64, offset: 33536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !509, file: !351, line: 243, baseType: !517, size: 64, offset: 33600)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !509, file: !351, line: 245, baseType: !18, size: 32, offset: 33664)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !509, file: !351, line: 246, baseType: !85, size: 64, offset: 33728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !509, file: !351, line: 247, baseType: !85, size: 64, offset: 33792)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !509, file: !351, line: 248, baseType: !517, size: 64, offset: 33856)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !509, file: !351, line: 249, baseType: !517, size: 64, offset: 33920)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !509, file: !351, line: 250, baseType: !530, size: 64, offset: 33984)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !509, file: !351, line: 251, baseType: !517, size: 64, offset: 34048)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !509, file: !351, line: 253, baseType: !42, size: 32, offset: 34112)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !509, file: !351, line: 254, baseType: !18, size: 32, offset: 34144)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !509, file: !351, line: 255, baseType: !535, size: 3136, offset: 34176)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !351, line: 226, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !351, line: 200, size: 3136, elements: !537)
!537 = !{!538, !539, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !556, !557, !559, !560, !561, !562}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !536, file: !351, line: 202, baseType: !18, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !536, file: !351, line: 203, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !536, file: !351, line: 204, baseType: !85, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !536, file: !351, line: 205, baseType: !517, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !536, file: !351, line: 206, baseType: !540, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !536, file: !351, line: 207, baseType: !85, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !536, file: !351, line: 208, baseType: !85, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !536, file: !351, line: 209, baseType: !540, size: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !536, file: !351, line: 210, baseType: !540, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !536, file: !351, line: 211, baseType: !540, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !536, file: !351, line: 212, baseType: !540, size: 64, offset: 640)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !536, file: !351, line: 213, baseType: !540, size: 64, offset: 704)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !536, file: !351, line: 216, baseType: !83, size: 8, offset: 768)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !536, file: !351, line: 217, baseType: !83, size: 8, offset: 776)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !536, file: !351, line: 218, baseType: !83, size: 8, offset: 784)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !536, file: !351, line: 219, baseType: !555, size: 1024, offset: 800)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !480)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !536, file: !351, line: 220, baseType: !555, size: 1024, offset: 1824)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !536, file: !351, line: 221, baseType: !558, size: 256, offset: 2848)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !536, file: !351, line: 222, baseType: !83, size: 8, offset: 3104)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !536, file: !351, line: 223, baseType: !83, size: 8, offset: 3112)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !536, file: !351, line: 224, baseType: !83, size: 8, offset: 3120)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !536, file: !351, line: 225, baseType: !83, size: 8, offset: 3128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !264, file: !64, line: 577, baseType: !564, size: 1193984, offset: 5595392)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 1193984, elements: !480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !264, file: !64, line: 578, baseType: !18, size: 32, offset: 6789376)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !264, file: !64, line: 579, baseType: !18, size: 32, offset: 6789408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !264, file: !64, line: 580, baseType: !18, size: 32, offset: 6789440)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !264, file: !64, line: 581, baseType: !18, size: 32, offset: 6789472)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !264, file: !64, line: 584, baseType: !570, size: 64, offset: 6789504)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !64, line: 584, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !264, file: !64, line: 586, baseType: !573, size: 64, offset: 6789568)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !64, line: 902, size: 416, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !574, file: !64, line: 904, baseType: !42, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !574, file: !64, line: 905, baseType: !42, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !574, file: !64, line: 906, baseType: !18, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !574, file: !64, line: 907, baseType: !42, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !574, file: !64, line: 908, baseType: !18, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !574, file: !64, line: 909, baseType: !186, size: 64, offset: 160)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !574, file: !64, line: 910, baseType: !108, size: 8, offset: 224)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !574, file: !64, line: 911, baseType: !108, size: 8, offset: 232)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !574, file: !64, line: 912, baseType: !18, size: 32, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !574, file: !64, line: 913, baseType: !18, size: 32, offset: 288)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !574, file: !64, line: 915, baseType: !18, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !574, file: !64, line: 916, baseType: !18, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !574, file: !64, line: 917, baseType: !18, size: 32, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !264, file: !64, line: 587, baseType: !590, size: 64, offset: 6789632)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !64, line: 839, size: 512, elements: !592)
!592 = !{!593, !594, !597, !598, !599, !600}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !591, file: !64, line: 841, baseType: !18, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !591, file: !64, line: 842, baseType: !595, size: 96, offset: 32)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 96, elements: !157)
!596 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !591, file: !64, line: 843, baseType: !595, size: 96, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !591, file: !64, line: 844, baseType: !595, size: 96, offset: 224)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !591, file: !64, line: 845, baseType: !595, size: 96, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !591, file: !64, line: 846, baseType: !595, size: 96, offset: 416)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !264, file: !64, line: 588, baseType: !18, size: 32, offset: 6789696)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !264, file: !64, line: 591, baseType: !42, size: 32, offset: 6789728)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !264, file: !64, line: 592, baseType: !18, size: 32, offset: 6789760)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !264, file: !64, line: 593, baseType: !18, size: 32, offset: 6789792)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !264, file: !64, line: 594, baseType: !18, size: 32, offset: 6789824)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !264, file: !64, line: 595, baseType: !607, size: 64, offset: 6789888)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !64, line: 542, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !64, line: 341, size: 109184, elements: !611)
!611 = !{!612, !614, !615, !616, !617, !618, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !716, !718, !880, !909, !936, !939, !940, !942, !943, !944, !945, !946, !947, !948, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !974, !975, !976, !977, !978, !979, !982, !983, !986, !987, !989, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1002, !1003, !1004, !1005, !1006, !1009, !1010, !1011, !1015, !1019, !1023, !1027, !1031, !1032, !1033, !1034, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1048, !1049}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !610, file: !64, line: 343, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !610, file: !64, line: 344, baseType: !267, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !610, file: !64, line: 345, baseType: !349, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !610, file: !64, line: 346, baseType: !400, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !610, file: !64, line: 347, baseType: !18, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !610, file: !64, line: 350, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !93, line: 186, size: 33408, elements: !621)
!621 = !{!622, !623, !626, !650, !651, !652, !653, !654, !655, !656, !657, !658, !662, !663, !664}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !620, file: !93, line: 188, baseType: !262, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !620, file: !93, line: 189, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !64, line: 900, baseType: !268)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !620, file: !93, line: 190, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !93, line: 182, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !93, line: 152, size: 768, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !630, file: !93, line: 154, baseType: !18, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !630, file: !93, line: 155, baseType: !18, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !630, file: !93, line: 156, baseType: !18, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !630, file: !93, line: 157, baseType: !18, size: 32, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !630, file: !93, line: 159, baseType: !18, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !630, file: !93, line: 161, baseType: !42, size: 32, offset: 160)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !630, file: !93, line: 162, baseType: !42, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !630, file: !93, line: 164, baseType: !18, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !630, file: !93, line: 165, baseType: !18, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !630, file: !93, line: 166, baseType: !18, size: 32, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !630, file: !93, line: 167, baseType: !18, size: 32, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !630, file: !93, line: 170, baseType: !18, size: 32, offset: 352)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !630, file: !93, line: 172, baseType: !91, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !630, file: !93, line: 173, baseType: !91, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !630, file: !93, line: 174, baseType: !91, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !630, file: !93, line: 177, baseType: !18, size: 32, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !630, file: !93, line: 178, baseType: !186, size: 64, offset: 608)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !630, file: !93, line: 179, baseType: !186, size: 64, offset: 672)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !620, file: !93, line: 191, baseType: !627, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !620, file: !93, line: 192, baseType: !627, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !620, file: !93, line: 193, baseType: !42, size: 32, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !620, file: !93, line: 194, baseType: !42, size: 32, offset: 352)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !620, file: !93, line: 195, baseType: !42, size: 32, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !620, file: !93, line: 196, baseType: !42, size: 32, offset: 416)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !620, file: !93, line: 197, baseType: !18, size: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !620, file: !93, line: 199, baseType: !18, size: 32, offset: 480)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !620, file: !93, line: 200, baseType: !659, size: 32768, offset: 512)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 1024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !620, file: !93, line: 205, baseType: !18, size: 32, offset: 33280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !620, file: !93, line: 206, baseType: !18, size: 32, offset: 33312)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !620, file: !93, line: 208, baseType: !628, size: 64, offset: 33344)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !610, file: !64, line: 353, baseType: !18, size: 32, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !610, file: !64, line: 354, baseType: !18, size: 32, offset: 416)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !610, file: !64, line: 355, baseType: !18, size: 32, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !610, file: !64, line: 356, baseType: !18, size: 32, offset: 480)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !610, file: !64, line: 357, baseType: !18, size: 32, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !610, file: !64, line: 359, baseType: !18, size: 32, offset: 544)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !610, file: !64, line: 360, baseType: !18, size: 32, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !610, file: !64, line: 361, baseType: !18, size: 32, offset: 608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !610, file: !64, line: 365, baseType: !42, size: 32, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !610, file: !64, line: 366, baseType: !18, size: 32, offset: 672)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !610, file: !64, line: 368, baseType: !186, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !610, file: !64, line: 372, baseType: !18, size: 32, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !610, file: !64, line: 378, baseType: !42, size: 32, offset: 800)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !610, file: !64, line: 379, baseType: !18, size: 32, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !610, file: !64, line: 387, baseType: !42, size: 32, offset: 864)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !610, file: !64, line: 388, baseType: !42, size: 32, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !610, file: !64, line: 389, baseType: !84, size: 16, offset: 928)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !610, file: !64, line: 396, baseType: !18, size: 32, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !610, file: !64, line: 397, baseType: !18, size: 32, offset: 992)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !610, file: !64, line: 400, baseType: !18, size: 32, offset: 1024)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !610, file: !64, line: 401, baseType: !18, size: 32, offset: 1056)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !610, file: !64, line: 402, baseType: !186, size: 64, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !610, file: !64, line: 406, baseType: !18, size: 32, offset: 1152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !610, file: !64, line: 407, baseType: !18, size: 32, offset: 1184)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !610, file: !64, line: 408, baseType: !18, size: 32, offset: 1216)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !610, file: !64, line: 409, baseType: !18, size: 32, offset: 1248)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !610, file: !64, line: 410, baseType: !18, size: 32, offset: 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !610, file: !64, line: 411, baseType: !18, size: 32, offset: 1312)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !610, file: !64, line: 412, baseType: !18, size: 32, offset: 1344)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !610, file: !64, line: 413, baseType: !42, size: 32, offset: 1376)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !610, file: !64, line: 414, baseType: !42, size: 32, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !610, file: !64, line: 415, baseType: !108, size: 8, offset: 1440)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !610, file: !64, line: 416, baseType: !97, size: 32, offset: 1472)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !610, file: !64, line: 417, baseType: !18, size: 32, offset: 1504)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !610, file: !64, line: 418, baseType: !18, size: 32, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !610, file: !64, line: 419, baseType: !18, size: 32, offset: 1568)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !610, file: !64, line: 420, baseType: !18, size: 32, offset: 1600)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !610, file: !64, line: 421, baseType: !18, size: 32, offset: 1632)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !610, file: !64, line: 422, baseType: !18, size: 32, offset: 1664)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !610, file: !64, line: 423, baseType: !18, size: 32, offset: 1696)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !610, file: !64, line: 426, baseType: !18, size: 32, offset: 1728)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !610, file: !64, line: 427, baseType: !18, size: 32, offset: 1760)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !610, file: !64, line: 428, baseType: !18, size: 32, offset: 1792)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !610, file: !64, line: 429, baseType: !18, size: 32, offset: 1824)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !610, file: !64, line: 430, baseType: !18, size: 32, offset: 1856)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !610, file: !64, line: 431, baseType: !18, size: 32, offset: 1888)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !610, file: !64, line: 432, baseType: !18, size: 32, offset: 1920)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !610, file: !64, line: 433, baseType: !18, size: 32, offset: 1952)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !610, file: !64, line: 434, baseType: !189, size: 64, offset: 1984)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !610, file: !64, line: 436, baseType: !715, size: 48, offset: 2048)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 48, elements: !374)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !610, file: !64, line: 437, baseType: !717, size: 384, offset: 2112)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 384, elements: !374)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !610, file: !64, line: 440, baseType: !719, size: 64, offset: 2496)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !64, line: 324, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !64, line: 314, size: 384, elements: !722)
!722 = !{!723, !734, !743}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !721, file: !64, line: 317, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !64, line: 47, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !64, line: 300, size: 256, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !726, file: !64, line: 303, baseType: !18, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !726, file: !64, line: 304, baseType: !18, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !726, file: !64, line: 306, baseType: !18, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !726, file: !64, line: 307, baseType: !18, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !726, file: !64, line: 309, baseType: !163, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !726, file: !64, line: 310, baseType: !18, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !721, file: !64, line: 318, baseType: !735, size: 256, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !64, line: 95, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 88, size: 256, elements: !737)
!737 = !{!738, !739, !740, !741, !742}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !736, file: !64, line: 90, baseType: !42, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !736, file: !64, line: 91, baseType: !42, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !736, file: !64, line: 92, baseType: !18, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !736, file: !64, line: 93, baseType: !163, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !736, file: !64, line: 94, baseType: !85, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !721, file: !64, line: 320, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!18, !747, !878, !876}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !64, line: 273, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !64, line: 197, size: 3840, elements: !750)
!750 = !{!751, !753, !754, !755, !756, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !785, !786, !787, !788, !789, !792, !793, !802, !803, !804, !805, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !831, !832, !847, !853, !877}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !749, file: !64, line: 199, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !749, file: !64, line: 200, baseType: !613, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !749, file: !64, line: 201, baseType: !267, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !749, file: !64, line: 202, baseType: !18, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !749, file: !64, line: 203, baseType: !757, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !64, line: 112, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 108, size: 32, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !758, file: !64, line: 110, baseType: !84, size: 16)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !758, file: !64, line: 111, baseType: !84, size: 16, offset: 16)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !749, file: !64, line: 204, baseType: !18, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !749, file: !64, line: 205, baseType: !18, size: 32, offset: 288)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !749, file: !64, line: 206, baseType: !18, size: 32, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !749, file: !64, line: 207, baseType: !18, size: 32, offset: 352)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !749, file: !64, line: 208, baseType: !18, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !749, file: !64, line: 209, baseType: !18, size: 32, offset: 416)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !749, file: !64, line: 210, baseType: !18, size: 32, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !749, file: !64, line: 212, baseType: !18, size: 32, offset: 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !749, file: !64, line: 213, baseType: !18, size: 32, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !749, file: !64, line: 215, baseType: !18, size: 32, offset: 544)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !749, file: !64, line: 216, baseType: !186, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !749, file: !64, line: 217, baseType: !293, size: 96, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !749, file: !64, line: 218, baseType: !18, size: 32, offset: 736)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !749, file: !64, line: 219, baseType: !18, size: 32, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !749, file: !64, line: 220, baseType: !18, size: 32, offset: 800)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !749, file: !64, line: 221, baseType: !18, size: 32, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !749, file: !64, line: 223, baseType: !84, size: 16, offset: 864)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !749, file: !64, line: 224, baseType: !83, size: 8, offset: 880)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !749, file: !64, line: 225, baseType: !83, size: 8, offset: 888)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !749, file: !64, line: 226, baseType: !84, size: 16, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !749, file: !64, line: 227, baseType: !84, size: 16, offset: 912)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !749, file: !64, line: 229, baseType: !784, size: 64, offset: 960)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !749, file: !64, line: 230, baseType: !784, size: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !749, file: !64, line: 232, baseType: !784, size: 64, offset: 1088)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !749, file: !64, line: 233, baseType: !784, size: 64, offset: 1152)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !749, file: !64, line: 236, baseType: !84, size: 16, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !749, file: !64, line: 237, baseType: !790, size: 1024, offset: 1232)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1024, elements: !791)
!791 = !{!145, !230, !230, !145}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !749, file: !64, line: 239, baseType: !18, size: 32, offset: 2272)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !749, file: !64, line: 240, baseType: !794, size: 192, offset: 2304)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 192, elements: !157)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !796, line: 103, baseType: !797)
!796 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !798, line: 27, baseType: !799)
!798 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !800, line: 44, baseType: !801)
!800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!801 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !749, file: !64, line: 241, baseType: !794, size: 192, offset: 2496)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !749, file: !64, line: 242, baseType: !794, size: 192, offset: 2688)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !749, file: !64, line: 244, baseType: !18, size: 32, offset: 2880)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !749, file: !64, line: 245, baseType: !806, size: 32, offset: 2912)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32, elements: !807)
!807 = !{!230}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !749, file: !64, line: 246, baseType: !806, size: 32, offset: 2944)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !749, file: !64, line: 247, baseType: !83, size: 8, offset: 2976)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !749, file: !64, line: 248, baseType: !83, size: 8, offset: 2984)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !749, file: !64, line: 249, baseType: !83, size: 8, offset: 2992)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !749, file: !64, line: 250, baseType: !84, size: 16, offset: 3008)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !749, file: !64, line: 251, baseType: !84, size: 16, offset: 3024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !749, file: !64, line: 252, baseType: !84, size: 16, offset: 3040)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !749, file: !64, line: 254, baseType: !18, size: 32, offset: 3072)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !749, file: !64, line: 256, baseType: !18, size: 32, offset: 3104)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !749, file: !64, line: 256, baseType: !18, size: 32, offset: 3136)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !749, file: !64, line: 256, baseType: !18, size: 32, offset: 3168)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !749, file: !64, line: 256, baseType: !18, size: 32, offset: 3200)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !749, file: !64, line: 257, baseType: !18, size: 32, offset: 3232)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !749, file: !64, line: 257, baseType: !18, size: 32, offset: 3264)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !749, file: !64, line: 257, baseType: !18, size: 32, offset: 3296)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !749, file: !64, line: 257, baseType: !18, size: 32, offset: 3328)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !749, file: !64, line: 259, baseType: !18, size: 32, offset: 3360)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !749, file: !64, line: 260, baseType: !18, size: 32, offset: 3392)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !749, file: !64, line: 262, baseType: !827, size: 64, offset: 3456)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !784, !830, !18, !18}
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !41, line: 32, baseType: !47)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !749, file: !64, line: 263, baseType: !827, size: 64, offset: 3520)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !749, file: !64, line: 265, baseType: !833, size: 64, offset: 3584)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !784, !836, !846, !84, !137, !18, !18, !18, !18, !18}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !64, line: 85, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !64, line: 77, size: 128, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !838, file: !64, line: 79, baseType: !18, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !838, file: !64, line: 80, baseType: !18, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !838, file: !64, line: 81, baseType: !84, size: 16, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !838, file: !64, line: 82, baseType: !84, size: 16, offset: 80)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !838, file: !64, line: 83, baseType: !84, size: 16, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !838, file: !64, line: 84, baseType: !84, size: 16, offset: 112)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !749, file: !64, line: 268, baseType: !848, size: 64, offset: 3648)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!18, !784, !851, !18}
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !64, line: 97, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !749, file: !64, line: 269, baseType: !854, size: 64, offset: 3712)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!83, !784, !857, !876, !83, !18}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !64, line: 276, size: 384, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !872}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !64, line: 278, baseType: !18, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !858, file: !64, line: 279, baseType: !18, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !858, file: !64, line: 280, baseType: !18, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !858, file: !64, line: 281, baseType: !18, size: 32, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !858, file: !64, line: 282, baseType: !18, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !858, file: !64, line: 283, baseType: !42, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !858, file: !64, line: 284, baseType: !18, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !858, file: !64, line: 285, baseType: !18, size: 32, offset: 224)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !858, file: !64, line: 293, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !18, !18, !85, !85}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !858, file: !64, line: 295, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !747, !857, !851}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !749, file: !64, line: 272, baseType: !108, size: 8, offset: 3776)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !64, line: 296, baseType: !858)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !610, file: !64, line: 441, baseType: !881, size: 64, offset: 2560)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !64, line: 153, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 145, size: 2912, elements: !884)
!884 = !{!885, !895, !899, !903, !906, !908}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !883, file: !64, line: 147, baseType: !886, size: 1056)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 1056, elements: !893)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !64, line: 122, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 117, size: 32, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !888, file: !64, line: 119, baseType: !80, size: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !888, file: !64, line: 120, baseType: !109, size: 8, offset: 16)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !888, file: !64, line: 121, baseType: !109, size: 8, offset: 24)
!893 = !{!158, !894}
!894 = !DISubrange(count: 11)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !883, file: !64, line: 148, baseType: !896, size: 576, offset: 1056)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 576, elements: !897)
!897 = !{!145, !898}
!898 = !DISubrange(count: 9)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !883, file: !64, line: 149, baseType: !900, size: 640, offset: 1632)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 640, elements: !901)
!901 = !{!145, !902}
!902 = !DISubrange(count: 10)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !883, file: !64, line: 150, baseType: !904, size: 384, offset: 2272)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 384, elements: !905)
!905 = !{!145, !367}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !883, file: !64, line: 151, baseType: !907, size: 128, offset: 2656)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 128, elements: !807)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !883, file: !64, line: 152, baseType: !907, size: 128, offset: 2784)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !610, file: !64, line: 442, baseType: !910, size: 64, offset: 2624)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !64, line: 175, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 164, size: 52768, elements: !913)
!913 = !{!914, !916, !918, !919, !922, !926, !930, !931, !935}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !912, file: !64, line: 166, baseType: !915, size: 96)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 96, elements: !157)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !912, file: !64, line: 167, baseType: !917, size: 64, offset: 96)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 64, elements: !144)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !912, file: !64, line: 168, baseType: !907, size: 128, offset: 160)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !912, file: !64, line: 169, baseType: !920, size: 384, offset: 288)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 384, elements: !921)
!921 = !{!158, !230}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !912, file: !64, line: 170, baseType: !923, size: 2816, offset: 672)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 2816, elements: !924)
!924 = !{!925, !230}
!925 = !DISubrange(count: 22)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !912, file: !64, line: 171, baseType: !927, size: 21120, offset: 3488)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 21120, elements: !928)
!928 = !{!145, !925, !929}
!929 = !DISubrange(count: 15)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !912, file: !64, line: 172, baseType: !927, size: 21120, offset: 24608)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !912, file: !64, line: 173, baseType: !932, size: 3520, offset: 45728)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !887, size: 3520, elements: !933)
!933 = !{!925, !934}
!934 = !DISubrange(count: 5)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !912, file: !64, line: 174, baseType: !932, size: 3520, offset: 49248)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !610, file: !64, line: 444, baseType: !937, size: 6144, offset: 2688)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 6144, elements: !938)
!938 = !{!367, !481}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !610, file: !64, line: 446, baseType: !186, size: 64, offset: 8832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !610, file: !64, line: 447, baseType: !941, size: 128, offset: 8896)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !144)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !610, file: !64, line: 448, baseType: !941, size: 128, offset: 9024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !610, file: !64, line: 449, baseType: !941, size: 128, offset: 9152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !610, file: !64, line: 452, baseType: !941, size: 128, offset: 9280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !610, file: !64, line: 454, baseType: !18, size: 32, offset: 9408)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !610, file: !64, line: 455, baseType: !18, size: 32, offset: 9440)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !610, file: !64, line: 456, baseType: !18, size: 32, offset: 9472)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !610, file: !64, line: 458, baseType: !949, size: 256, offset: 9504)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !64, line: 337, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !64, line: 327, size: 256, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !950, file: !64, line: 329, baseType: !42, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !950, file: !64, line: 330, baseType: !42, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !950, file: !64, line: 331, baseType: !42, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !950, file: !64, line: 332, baseType: !42, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !950, file: !64, line: 333, baseType: !42, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !950, file: !64, line: 334, baseType: !42, size: 32, offset: 160)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !950, file: !64, line: 335, baseType: !42, size: 32, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !950, file: !64, line: 336, baseType: !42, size: 32, offset: 224)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !610, file: !64, line: 461, baseType: !84, size: 16, offset: 9760)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !610, file: !64, line: 462, baseType: !84, size: 16, offset: 9776)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !610, file: !64, line: 463, baseType: !84, size: 16, offset: 9792)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !610, file: !64, line: 465, baseType: !18, size: 32, offset: 9824)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !610, file: !64, line: 467, baseType: !18, size: 32, offset: 9856)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !610, file: !64, line: 468, baseType: !18, size: 32, offset: 9888)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !610, file: !64, line: 470, baseType: !18, size: 32, offset: 9920)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !610, file: !64, line: 471, baseType: !134, size: 64, offset: 9984)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !610, file: !64, line: 472, baseType: !134, size: 64, offset: 10048)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !610, file: !64, line: 473, baseType: !530, size: 64, offset: 10112)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !610, file: !64, line: 474, baseType: !530, size: 64, offset: 10176)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !610, file: !64, line: 475, baseType: !530, size: 64, offset: 10240)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !610, file: !64, line: 477, baseType: !973, size: 512, offset: 10304)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !10)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !610, file: !64, line: 479, baseType: !132, size: 64, offset: 10816)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !610, file: !64, line: 480, baseType: !132, size: 64, offset: 10880)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !610, file: !64, line: 481, baseType: !517, size: 64, offset: 10944)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !610, file: !64, line: 482, baseType: !132, size: 64, offset: 11008)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !610, file: !64, line: 483, baseType: !132, size: 64, offset: 11072)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !610, file: !64, line: 486, baseType: !980, size: 9216, offset: 11136)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 9216, elements: !981)
!981 = !{!158, !367, !230, !230}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !610, file: !64, line: 487, baseType: !980, size: 9216, offset: 20352)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !610, file: !64, line: 488, baseType: !984, size: 36864, offset: 29568)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 36864, elements: !985)
!985 = !{!158, !367, !229, !229}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !610, file: !64, line: 489, baseType: !984, size: 36864, offset: 66432)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !610, file: !64, line: 491, baseType: !988, size: 768, offset: 103296)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 768, elements: !362)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !610, file: !64, line: 494, baseType: !990, size: 2048, offset: 104064)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !991)
!991 = !{!371}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !610, file: !64, line: 495, baseType: !18, size: 32, offset: 106112)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !610, file: !64, line: 496, baseType: !18, size: 32, offset: 106144)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !610, file: !64, line: 500, baseType: !81, size: 16, offset: 106176)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !610, file: !64, line: 501, baseType: !81, size: 16, offset: 106192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !610, file: !64, line: 503, baseType: !81, size: 16, offset: 106208)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !610, file: !64, line: 504, baseType: !81, size: 16, offset: 106224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !610, file: !64, line: 505, baseType: !530, size: 64, offset: 106240)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !610, file: !64, line: 506, baseType: !530, size: 64, offset: 106304)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !610, file: !64, line: 507, baseType: !1001, size: 64, offset: 106368)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !610, file: !64, line: 508, baseType: !84, size: 16, offset: 106432)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !610, file: !64, line: 509, baseType: !84, size: 16, offset: 106448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !610, file: !64, line: 512, baseType: !18, size: 32, offset: 106464)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !610, file: !64, line: 513, baseType: !18, size: 32, offset: 106496)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !610, file: !64, line: 514, baseType: !1007, size: 64, offset: 106560)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !610, file: !64, line: 515, baseType: !1007, size: 64, offset: 106624)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !610, file: !64, line: 520, baseType: !18, size: 32, offset: 106688)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !610, file: !64, line: 521, baseType: !1012, size: 544, offset: 106720)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 544, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 17)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !610, file: !64, line: 523, baseType: !1016, size: 64, offset: 107264)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !747}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !610, file: !64, line: 524, baseType: !1020, size: 64, offset: 107328)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!18, !747, !830, !132, !143}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !610, file: !64, line: 525, baseType: !1024, size: 64, offset: 107392)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!18, !613, !267}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !610, file: !64, line: 526, baseType: !1028, size: 64, offset: 107456)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!18, !752, !18}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !610, file: !64, line: 527, baseType: !1016, size: 64, offset: 107520)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !610, file: !64, line: 528, baseType: !1016, size: 64, offset: 107584)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !610, file: !64, line: 529, baseType: !1016, size: 64, offset: 107648)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !610, file: !64, line: 530, baseType: !1035, size: 64, offset: 107712)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !752}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !610, file: !64, line: 531, baseType: !1016, size: 64, offset: 107776)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !610, file: !64, line: 532, baseType: !869, size: 64, offset: 107840)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !610, file: !64, line: 533, baseType: !869, size: 64, offset: 107904)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !610, file: !64, line: 534, baseType: !1016, size: 64, offset: 107968)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !610, file: !64, line: 535, baseType: !18, size: 32, offset: 108032)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !610, file: !64, line: 536, baseType: !747, size: 64, offset: 108096)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !610, file: !64, line: 537, baseType: !143, size: 64, offset: 108160)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !610, file: !64, line: 538, baseType: !517, size: 64, offset: 108224)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !610, file: !64, line: 539, baseType: !1047, size: 64, offset: 108288)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !610, file: !64, line: 540, baseType: !540, size: 64, offset: 108352)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !610, file: !64, line: 541, baseType: !1050, size: 768, offset: 108416)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 768, elements: !366)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !264, file: !64, line: 596, baseType: !540, size: 64, offset: 6789952)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !264, file: !64, line: 597, baseType: !1053, size: 192, offset: 6790016)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 192, elements: !157)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !64, line: 601, baseType: !18, size: 32, offset: 6790208)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !264, file: !64, line: 602, baseType: !18, size: 32, offset: 6790240)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !264, file: !64, line: 603, baseType: !18, size: 32, offset: 6790272)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !264, file: !64, line: 604, baseType: !18, size: 32, offset: 6790304)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !264, file: !64, line: 605, baseType: !18, size: 32, offset: 6790336)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !264, file: !64, line: 607, baseType: !1047, size: 64, offset: 6790400)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !264, file: !64, line: 608, baseType: !1061, size: 192, offset: 6790464)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 192, elements: !157)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !264, file: !64, line: 609, baseType: !1063, size: 64, offset: 6790656)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !264, file: !64, line: 610, baseType: !517, size: 64, offset: 6790720)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !264, file: !64, line: 611, baseType: !1067, size: 192, offset: 6790784)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, elements: !157)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !264, file: !64, line: 613, baseType: !18, size: 32, offset: 6790976)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !264, file: !64, line: 614, baseType: !18, size: 32, offset: 6791008)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !264, file: !64, line: 617, baseType: !608, size: 64, offset: 6791040)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !264, file: !64, line: 618, baseType: !747, size: 64, offset: 6791104)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !264, file: !64, line: 619, baseType: !1073, size: 192, offset: 6791168)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 192, elements: !157)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !264, file: !64, line: 621, baseType: !18, size: 32, offset: 6791360)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !264, file: !64, line: 626, baseType: !86, size: 64, offset: 6791424)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !264, file: !64, line: 627, baseType: !86, size: 64, offset: 6791488)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !264, file: !64, line: 629, baseType: !42, size: 32, offset: 6791552)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !264, file: !64, line: 630, baseType: !18, size: 32, offset: 6791584)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !264, file: !64, line: 634, baseType: !18, size: 32, offset: 6791616)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !264, file: !64, line: 635, baseType: !42, size: 32, offset: 6791648)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !264, file: !64, line: 638, baseType: !18, size: 32, offset: 6791680)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !264, file: !64, line: 638, baseType: !18, size: 32, offset: 6791712)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !264, file: !64, line: 638, baseType: !18, size: 32, offset: 6791744)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !264, file: !64, line: 639, baseType: !42, size: 32, offset: 6791776)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !264, file: !64, line: 639, baseType: !42, size: 32, offset: 6791808)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !264, file: !64, line: 640, baseType: !18, size: 32, offset: 6791840)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !264, file: !64, line: 641, baseType: !18, size: 32, offset: 6791872)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !264, file: !64, line: 642, baseType: !18, size: 32, offset: 6791904)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !264, file: !64, line: 645, baseType: !18, size: 32, offset: 6791936)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !264, file: !64, line: 647, baseType: !42, size: 32, offset: 6791968)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !264, file: !64, line: 648, baseType: !42, size: 32, offset: 6792000)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !264, file: !64, line: 649, baseType: !42, size: 32, offset: 6792032)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !264, file: !64, line: 650, baseType: !42, size: 32, offset: 6792064)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !264, file: !64, line: 651, baseType: !42, size: 32, offset: 6792096)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !264, file: !64, line: 652, baseType: !42, size: 32, offset: 6792128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !264, file: !64, line: 653, baseType: !42, size: 32, offset: 6792160)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !264, file: !64, line: 655, baseType: !18, size: 32, offset: 6792192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !264, file: !64, line: 657, baseType: !18, size: 32, offset: 6792224)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !264, file: !64, line: 658, baseType: !18, size: 32, offset: 6792256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !264, file: !64, line: 661, baseType: !18, size: 32, offset: 6792288)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !264, file: !64, line: 662, baseType: !84, size: 16, offset: 6792320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !264, file: !64, line: 663, baseType: !84, size: 16, offset: 6792336)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !264, file: !64, line: 664, baseType: !186, size: 64, offset: 6792352)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !264, file: !64, line: 665, baseType: !18, size: 32, offset: 6792416)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !264, file: !64, line: 666, baseType: !18, size: 32, offset: 6792448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !264, file: !64, line: 667, baseType: !1107, size: 96, offset: 6792480)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, elements: !157)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !264, file: !64, line: 668, baseType: !293, size: 96, offset: 6792576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !264, file: !64, line: 670, baseType: !18, size: 32, offset: 6792672)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !264, file: !64, line: 671, baseType: !18, size: 32, offset: 6792704)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !264, file: !64, line: 672, baseType: !18, size: 32, offset: 6792736)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !264, file: !64, line: 673, baseType: !18, size: 32, offset: 6792768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !264, file: !64, line: 674, baseType: !18, size: 32, offset: 6792800)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !264, file: !64, line: 675, baseType: !18, size: 32, offset: 6792832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !264, file: !64, line: 676, baseType: !18, size: 32, offset: 6792864)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !264, file: !64, line: 677, baseType: !18, size: 32, offset: 6792896)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !264, file: !64, line: 678, baseType: !18, size: 32, offset: 6792928)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !264, file: !64, line: 679, baseType: !18, size: 32, offset: 6792960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !264, file: !64, line: 680, baseType: !1120, size: 192, offset: 6792992)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !1121)
!1121 = !{!158, !145}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !264, file: !64, line: 681, baseType: !1120, size: 192, offset: 6793184)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !264, file: !64, line: 682, baseType: !1120, size: 192, offset: 6793376)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !264, file: !64, line: 683, baseType: !18, size: 32, offset: 6793568)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !264, file: !64, line: 684, baseType: !18, size: 32, offset: 6793600)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !264, file: !64, line: 685, baseType: !18, size: 32, offset: 6793632)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !264, file: !64, line: 686, baseType: !18, size: 32, offset: 6793664)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !264, file: !64, line: 687, baseType: !18, size: 32, offset: 6793696)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !264, file: !64, line: 689, baseType: !18, size: 32, offset: 6793728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !264, file: !64, line: 692, baseType: !18, size: 32, offset: 6793760)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !264, file: !64, line: 693, baseType: !18, size: 32, offset: 6793792)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !264, file: !64, line: 700, baseType: !18, size: 32, offset: 6793824)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !264, file: !64, line: 701, baseType: !18, size: 32, offset: 6793856)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !264, file: !64, line: 702, baseType: !18, size: 32, offset: 6793888)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !264, file: !64, line: 703, baseType: !18, size: 32, offset: 6793920)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !264, file: !64, line: 704, baseType: !18, size: 32, offset: 6793952)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !264, file: !64, line: 705, baseType: !42, size: 32, offset: 6793984)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !264, file: !64, line: 706, baseType: !18, size: 32, offset: 6794016)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !264, file: !64, line: 707, baseType: !18, size: 32, offset: 6794048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !264, file: !64, line: 710, baseType: !18, size: 32, offset: 6794080)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !264, file: !64, line: 711, baseType: !18, size: 32, offset: 6794112)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !264, file: !64, line: 712, baseType: !18, size: 32, offset: 6794144)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !264, file: !64, line: 713, baseType: !18, size: 32, offset: 6794176)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !264, file: !64, line: 714, baseType: !18, size: 32, offset: 6794208)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !264, file: !64, line: 716, baseType: !18, size: 32, offset: 6794240)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !264, file: !64, line: 717, baseType: !18, size: 32, offset: 6794272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !64, line: 719, baseType: !163, size: 64, offset: 6794304)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !264, file: !64, line: 720, baseType: !163, size: 64, offset: 6794368)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !264, file: !64, line: 722, baseType: !1150, size: 2560, offset: 6794432)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1151, line: 38, baseType: !1152)
!1151 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1151, line: 20, size: 2560, elements: !1153)
!1153 = !{!1154, !1155, !1157, !1158, !1159, !1163, !1164, !1165, !1166, !1167}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1152, file: !1151, line: 22, baseType: !283, size: 1088)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1152, file: !1151, line: 24, baseType: !1156, size: 192, offset: 1088)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 192, elements: !157)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1152, file: !1151, line: 25, baseType: !1156, size: 192, offset: 1280)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1152, file: !1151, line: 26, baseType: !1156, size: 192, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1152, file: !1151, line: 31, baseType: !1160, size: 192, offset: 1664)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 192, elements: !157)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1152, file: !1151, line: 32, baseType: !1160, size: 192, offset: 1856)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1152, file: !1151, line: 33, baseType: !1160, size: 192, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1152, file: !1151, line: 35, baseType: !293, size: 96, offset: 2240)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1152, file: !1151, line: 36, baseType: !293, size: 96, offset: 2336)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1152, file: !1151, line: 37, baseType: !293, size: 96, offset: 2432)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !264, file: !64, line: 723, baseType: !1150, size: 2560, offset: 6796992)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !264, file: !64, line: 724, baseType: !1150, size: 2560, offset: 6799552)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !264, file: !64, line: 725, baseType: !1150, size: 2560, offset: 6802112)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !264, file: !64, line: 728, baseType: !1150, size: 2560, offset: 6804672)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !264, file: !64, line: 729, baseType: !1150, size: 2560, offset: 6807232)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !264, file: !64, line: 730, baseType: !1150, size: 2560, offset: 6809792)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !264, file: !64, line: 731, baseType: !1150, size: 2560, offset: 6812352)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !264, file: !64, line: 735, baseType: !42, size: 32, offset: 6814912)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !264, file: !64, line: 737, baseType: !18, size: 32, offset: 6814944)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !264, file: !64, line: 738, baseType: !18, size: 32, offset: 6814976)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !264, file: !64, line: 741, baseType: !795, size: 64, offset: 6815040)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !264, file: !64, line: 744, baseType: !18, size: 32, offset: 6815104)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !264, file: !64, line: 746, baseType: !659, size: 32768, offset: 6815136)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !264, file: !64, line: 748, baseType: !18, size: 32, offset: 6847904)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !264, file: !64, line: 751, baseType: !18, size: 32, offset: 6847936)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !264, file: !64, line: 752, baseType: !18, size: 32, offset: 6847968)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !264, file: !64, line: 755, baseType: !18, size: 32, offset: 6848000)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !264, file: !64, line: 756, baseType: !18, size: 32, offset: 6848032)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !264, file: !64, line: 758, baseType: !18, size: 32, offset: 6848064)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !264, file: !64, line: 759, baseType: !18, size: 32, offset: 6848096)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !264, file: !64, line: 762, baseType: !132, size: 64, offset: 6848128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !264, file: !64, line: 763, baseType: !134, size: 64, offset: 6848192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !264, file: !64, line: 765, baseType: !85, size: 64, offset: 6848256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !264, file: !64, line: 766, baseType: !85, size: 64, offset: 6848320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !264, file: !64, line: 768, baseType: !1008, size: 64, offset: 6848384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !264, file: !64, line: 769, baseType: !1194, size: 3200, offset: 6848448)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3200, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 100)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !264, file: !64, line: 771, baseType: !143, size: 64, offset: 6851648)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !264, file: !64, line: 772, baseType: !1199, size: 192, offset: 6851712)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !157)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !264, file: !64, line: 773, baseType: !143, size: 64, offset: 6851904)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !264, file: !64, line: 776, baseType: !1202, size: 64, offset: 6851968)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !258, line: 42, size: 192, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "regionMode", scope: !1203, file: !258, line: 44, baseType: !108, size: 8)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "xMin", scope: !1203, file: !258, line: 45, baseType: !18, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "yMin", scope: !1203, file: !258, line: 46, baseType: !18, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1203, file: !258, line: 47, baseType: !293, size: 96, offset: 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !264, file: !64, line: 777, baseType: !1210, size: 64, offset: 6852032)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !88, line: 79, size: 576, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1226, !1227, !1228, !1229, !1230}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nOfMBs", scope: !1211, file: !88, line: 82, baseType: !18, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nOfSegments", scope: !1211, file: !88, line: 84, baseType: !18, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "yCondition", scope: !1211, file: !88, line: 87, baseType: !540, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "uCondition", scope: !1211, file: !88, line: 89, baseType: !540, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vCondition", scope: !1211, file: !88, line: 91, baseType: !540, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "segments", scope: !1211, file: !88, line: 94, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercSegment_t", file: !88, line: 76, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ercSegment_s", file: !88, line: 71, size: 48, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "startMBPos", scope: !1221, file: !88, line: 73, baseType: !84, size: 16)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "endMBPos", scope: !1221, file: !88, line: 74, baseType: !84, size: 16, offset: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fCorrupted", scope: !1221, file: !88, line: 75, baseType: !83, size: 8, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "currSegment", scope: !1211, file: !88, line: 95, baseType: !18, size: 32, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "prevFrameYCondition", scope: !1211, file: !88, line: 98, baseType: !540, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "currSegmentCorrupted", scope: !1211, file: !88, line: 101, baseType: !18, size: 32, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nOfCorruptedSegments", scope: !1211, file: !88, line: 103, baseType: !18, size: 32, offset: 480)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "concealment", scope: !1211, file: !88, line: 106, baseType: !18, size: 32, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !264, file: !64, line: 779, baseType: !18, size: 32, offset: 6852096)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !264, file: !64, line: 780, baseType: !613, size: 64, offset: 6852160)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !264, file: !64, line: 781, baseType: !1234, size: 640, offset: 6852224)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 640, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 20)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !264, file: !64, line: 783, baseType: !1238, size: 64, offset: 6852864)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !64, line: 783, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !264, file: !64, line: 784, baseType: !1241, size: 64, offset: 6852928)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !64, line: 784, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !264, file: !64, line: 786, baseType: !1008, size: 64, offset: 6852992)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !264, file: !64, line: 788, baseType: !143, size: 64, offset: 6853056)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !264, file: !64, line: 789, baseType: !18, size: 32, offset: 6853120)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !264, file: !64, line: 790, baseType: !18, size: 32, offset: 6853152)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !264, file: !64, line: 792, baseType: !18, size: 32, offset: 6853184)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !264, file: !64, line: 794, baseType: !619, size: 64, offset: 6853248)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !264, file: !64, line: 795, baseType: !619, size: 64, offset: 6853312)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !264, file: !64, line: 796, baseType: !1251, size: 128, offset: 6853376)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 128, elements: !144)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !264, file: !64, line: 800, baseType: !1253, size: 72, offset: 6853504)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1254)
!1254 = !{!898}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !264, file: !64, line: 802, baseType: !85, size: 64, offset: 6853632)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !264, file: !64, line: 803, baseType: !85, size: 64, offset: 6853696)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !264, file: !64, line: 804, baseType: !18, size: 32, offset: 6853760)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !264, file: !64, line: 807, baseType: !1259, size: 64, offset: 6853824)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !64, line: 807, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !264, file: !64, line: 810, baseType: !1262, size: 64, offset: 6853888)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !132, !1265, !18, !18, !18, !18, !18, !18}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !264, file: !64, line: 811, baseType: !1267, size: 64, offset: 6853952)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !747, !18, !18, !85, !836}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !264, file: !64, line: 812, baseType: !1271, size: 64, offset: 6854016)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !18, !168, !168}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !264, file: !64, line: 813, baseType: !1275, size: 64, offset: 6854080)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !163, !747, !18, !18, !143}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !264, file: !64, line: 814, baseType: !1275, size: 64, offset: 6854144)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !264, file: !64, line: 815, baseType: !1280, size: 64, offset: 6854208)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !830, !132, !163, !747, !18, !143}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !264, file: !64, line: 816, baseType: !1280, size: 64, offset: 6854272)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !264, file: !64, line: 817, baseType: !1285, size: 64, offset: 6854336)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !132, !163, !747, !18, !18, !143}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !264, file: !64, line: 818, baseType: !1285, size: 64, offset: 6854400)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !264, file: !64, line: 819, baseType: !1290, size: 64, offset: 6854464)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !132, !1265, !18, !18, !18, !18, !18, !18, !18, !18}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !264, file: !64, line: 821, baseType: !1294, size: 64, offset: 6854528)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !64, line: 561, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !64, line: 544, size: 640, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1296, file: !64, line: 546, baseType: !18, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1296, file: !64, line: 547, baseType: !18, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1296, file: !64, line: 548, baseType: !18, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1296, file: !64, line: 549, baseType: !18, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1296, file: !64, line: 550, baseType: !18, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1296, file: !64, line: 551, baseType: !18, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1296, file: !64, line: 552, baseType: !163, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1296, file: !64, line: 553, baseType: !163, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1296, file: !64, line: 554, baseType: !163, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1296, file: !64, line: 555, baseType: !18, size: 32, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1296, file: !64, line: 556, baseType: !18, size: 32, offset: 416)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1296, file: !64, line: 557, baseType: !18, size: 32, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1296, file: !64, line: 558, baseType: !18, size: 32, offset: 480)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1296, file: !64, line: 559, baseType: !18, size: 32, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1296, file: !64, line: 560, baseType: !1313, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !264, file: !64, line: 822, baseType: !18, size: 32, offset: 6854592)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !264, file: !64, line: 823, baseType: !1316, size: 64, offset: 6854656)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !64, line: 823, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !264, file: !64, line: 824, baseType: !18, size: 32, offset: 6854720)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !264, file: !64, line: 825, baseType: !18, size: 32, offset: 6854752)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !264, file: !64, line: 826, baseType: !18, size: 32, offset: 6854784)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !264, file: !64, line: 827, baseType: !18, size: 32, offset: 6854816)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !264, file: !64, line: 829, baseType: !18, size: 32, offset: 6854848)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !264, file: !64, line: 830, baseType: !18, size: 32, offset: 6854880)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !264, file: !64, line: 831, baseType: !18, size: 32, offset: 6854912)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !264, file: !64, line: 835, baseType: !349, size: 64, offset: 6854976)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "yptr", scope: !259, file: !258, line: 36, baseType: !77, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !259, file: !258, line: 37, baseType: !77, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !259, file: !258, line: 38, baseType: !77, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "objectBuffer_t", file: !258, line: 49, baseType: !1203)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ercVariables_t", file: !88, line: 108, baseType: !1211)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1334 = !DILocalVariable(name: "recfr", arg: 1, scope: !253, file: !2, line: 74, type: !256)
!1335 = !DILocalVariable(name: "object_list", arg: 2, scope: !253, file: !2, line: 74, type: !1329)
!1336 = !DILocalVariable(name: "picSizeX", arg: 3, scope: !253, file: !2, line: 75, type: !18)
!1337 = !DILocalVariable(name: "picSizeY", arg: 4, scope: !253, file: !2, line: 75, type: !18)
!1338 = !DILocalVariable(name: "errorVar", arg: 5, scope: !253, file: !2, line: 75, type: !1331)
!1339 = !DILocalVariable(name: "chroma_format_idc", arg: 6, scope: !253, file: !2, line: 75, type: !18)
!1340 = !DILocalVariable(name: "p_Vid", scope: !253, file: !2, line: 77, type: !262)
!1341 = !DILocalVariable(name: "lastColumn", scope: !253, file: !2, line: 78, type: !18)
!1342 = !DILocalVariable(name: "lastRow", scope: !253, file: !2, line: 78, type: !18)
!1343 = !DILocalVariable(name: "predBlocks", scope: !253, file: !2, line: 78, type: !1344)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 256, elements: !381)
!1345 = !DILocalVariable(name: "lastCorruptedRow", scope: !253, file: !2, line: 79, type: !18)
!1346 = !DILocalVariable(name: "firstCorruptedRow", scope: !253, file: !2, line: 79, type: !18)
!1347 = !DILocalVariable(name: "currRow", scope: !253, file: !2, line: 80, type: !18)
!1348 = !DILocalVariable(name: "row", scope: !253, file: !2, line: 80, type: !18)
!1349 = !DILocalVariable(name: "column", scope: !253, file: !2, line: 80, type: !18)
!1350 = !DILocalVariable(name: "columnInd", scope: !253, file: !2, line: 80, type: !18)
!1351 = !DILocalVariable(name: "areaHeight", scope: !253, file: !2, line: 80, type: !18)
!1352 = !DILocalVariable(name: "i", scope: !253, file: !2, line: 80, type: !18)
!1353 = !DILocalVariable(name: "predMB", scope: !253, file: !2, line: 81, type: !77)
!1354 = distinct !DIAssignID()
!1355 = !DILocation(line: 0, scope: !253)
!1356 = !DILocation(line: 77, column: 35, scope: !253)
!1357 = !DILocation(line: 78, column: 3, scope: !253)
!1358 = !DILocation(line: 84, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !253, file: !2, line: 84, column: 8)
!1360 = !DILocation(line: 84, column: 17, scope: !1359)
!1361 = !DILocation(line: 84, column: 30, scope: !1359)
!1362 = !DILocation(line: 84, column: 20, scope: !1359)
!1363 = !DILocation(line: 84, column: 8, scope: !253)
!1364 = !DILocation(line: 87, column: 20, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 87, column: 10)
!1366 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 85, column: 3)
!1367 = !DILocation(line: 87, column: 10, scope: !1365)
!1368 = !DILocation(line: 87, column: 10, scope: !1366)
!1369 = !DILocation(line: 89, column: 29, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 89, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 88, column: 5)
!1372 = !DILocation(line: 89, column: 11, scope: !1371)
!1373 = !DILocation(line: 90, column: 53, scope: !1370)
!1374 = !DILocation(line: 90, column: 75, scope: !1370)
!1375 = !DILocation(line: 90, column: 66, scope: !1370)
!1376 = !DILocation(line: 90, column: 88, scope: !1370)
!1377 = !DILocation(line: 90, column: 43, scope: !1370)
!1378 = !DILocation(line: 90, column: 38, scope: !1370)
!1379 = !DILocation(line: 90, column: 92, scope: !1370)
!1380 = !DILocation(line: 90, column: 29, scope: !1370)
!1381 = !DILocation(line: 90, column: 9, scope: !1370)
!1382 = !DILocation(line: 92, column: 29, scope: !1370)
!1383 = !DILocation(line: 0, scope: !1370)
!1384 = !DILocation(line: 94, column: 19, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 94, column: 12)
!1386 = !DILocation(line: 94, column: 12, scope: !1371)
!1387 = !DILocation(line: 94, column: 29, scope: !1385)
!1388 = !DILocation(line: 96, column: 32, scope: !1371)
!1389 = !DILocation(line: 97, column: 35, scope: !1371)
!1390 = !DILocation(line: 99, column: 38, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 99, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 99, column: 7)
!1393 = !DILocation(line: 99, column: 7, scope: !1392)
!1394 = !DILocation(line: 102, column: 29, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 100, column: 7)
!1396 = !DILocation(line: 102, column: 19, scope: !1395)
!1397 = !DILocation(line: 104, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 104, column: 9)
!1399 = !DILocation(line: 107, column: 26, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 107, column: 16)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 105, column: 9)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 104, column: 9)
!1403 = !DILocation(line: 107, column: 37, scope: !1400)
!1404 = !DILocation(line: 107, column: 16, scope: !1400)
!1405 = !DILocation(line: 107, column: 76, scope: !1400)
!1406 = !DILocation(line: 107, column: 16, scope: !1401)
!1407 = !DILocation(line: 111, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 111, column: 13)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 108, column: 11)
!1410 = !DILocation(line: 111, scope: !1408)
!1411 = !DILocation(line: 111, column: 62, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 111, column: 13)
!1413 = !DILocation(line: 114, column: 40, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 114, column: 19)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 112, column: 13)
!1416 = !DILocation(line: 114, column: 19, scope: !1414)
!1417 = !DILocation(line: 114, column: 92, scope: !1414)
!1418 = !DILocation(line: 114, column: 19, scope: !1415)
!1419 = distinct !{!1419, !1407, !1420}
!1420 = !DILocation(line: 120, column: 13, scope: !1408)
!1421 = !DILocation(line: 121, column: 35, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 121, column: 18)
!1423 = !DILocation(line: 121, column: 18, scope: !1409)
!1424 = !DILocation(line: 128, column: 60, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 126, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 125, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 125, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 122, column: 13)
!1429 = !DILocation(line: 129, column: 29, scope: !1425)
!1430 = !DILocation(line: 128, column: 17, scope: !1425)
!1431 = !DILocation(line: 131, column: 27, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 131, column: 20)
!1433 = !DILocation(line: 131, column: 39, scope: !1432)
!1434 = !DILocation(line: 0, scope: !1432)
!1435 = !DILocation(line: 131, column: 20, scope: !1425)
!1436 = !DILocation(line: 137, column: 19, scope: !1432)
!1437 = !DILocation(line: 135, column: 31, scope: !1432)
!1438 = !DILocation(line: 132, column: 19, scope: !1432)
!1439 = !DILocation(line: 140, column: 17, scope: !1425)
!1440 = !DILocation(line: 125, column: 76, scope: !1426)
!1441 = !DILocation(line: 125, column: 58, scope: !1426)
!1442 = !DILocation(line: 125, column: 15, scope: !1427)
!1443 = distinct !{!1443, !1442, !1444}
!1444 = !DILocation(line: 141, column: 15, scope: !1427)
!1445 = !DILocation(line: 144, column: 41, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 144, column: 23)
!1447 = !DILocation(line: 144, column: 23, scope: !1422)
!1448 = !DILocation(line: 171, column: 37, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 168, column: 13)
!1450 = !DILocation(line: 178, column: 30, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 178, column: 15)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 178, column: 15)
!1453 = !DILocation(line: 178, column: 15, scope: !1452)
!1454 = !DILocation(line: 180, column: 24, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 180, column: 22)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 179, column: 15)
!1457 = !DILocation(line: 180, column: 22, scope: !1456)
!1458 = !DILocation(line: 191, column: 60, scope: !1456)
!1459 = !DILocation(line: 192, column: 29, scope: !1456)
!1460 = !DILocation(line: 191, column: 17, scope: !1456)
!1461 = !DILocation(line: 194, column: 27, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 194, column: 20)
!1463 = !DILocation(line: 194, column: 39, scope: !1462)
!1464 = !DILocation(line: 0, scope: !1462)
!1465 = !DILocation(line: 194, column: 20, scope: !1456)
!1466 = !DILocation(line: 200, column: 19, scope: !1462)
!1467 = !DILocation(line: 198, column: 31, scope: !1462)
!1468 = !DILocation(line: 195, column: 19, scope: !1462)
!1469 = !DILocation(line: 203, column: 17, scope: !1456)
!1470 = !DILocation(line: 178, column: 45, scope: !1451)
!1471 = distinct !{!1471, !1453, !1472}
!1472 = !DILocation(line: 205, column: 15, scope: !1452)
!1473 = !DILocation(line: 165, column: 37, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 145, column: 13)
!1475 = !DILocation(line: 166, column: 13, scope: !1474)
!1476 = !DILocation(line: 0, scope: !1398)
!1477 = !DILocation(line: 104, column: 42, scope: !1402)
!1478 = !DILocation(line: 104, column: 28, scope: !1402)
!1479 = distinct !{!1479, !1397, !1480}
!1480 = !DILocation(line: 210, column: 9, scope: !1398)
!1481 = !DILocation(line: 150, column: 60, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 148, column: 15)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 147, column: 15)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 147, column: 15)
!1485 = !DILocation(line: 151, column: 29, scope: !1482)
!1486 = !DILocation(line: 150, column: 17, scope: !1482)
!1487 = !DILocation(line: 153, column: 27, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 153, column: 20)
!1489 = !DILocation(line: 153, column: 39, scope: !1488)
!1490 = !DILocation(line: 0, scope: !1488)
!1491 = !DILocation(line: 153, column: 20, scope: !1482)
!1492 = !DILocation(line: 159, column: 19, scope: !1488)
!1493 = !DILocation(line: 157, column: 31, scope: !1488)
!1494 = !DILocation(line: 154, column: 19, scope: !1488)
!1495 = !DILocation(line: 162, column: 17, scope: !1482)
!1496 = !DILocation(line: 147, column: 70, scope: !1483)
!1497 = !DILocation(line: 147, column: 57, scope: !1483)
!1498 = !DILocation(line: 147, column: 15, scope: !1484)
!1499 = distinct !{!1499, !1498, !1500}
!1500 = !DILocation(line: 163, column: 15, scope: !1484)
!1501 = !DILocation(line: 99, column: 62, scope: !1391)
!1502 = distinct !{!1502, !1393, !1503}
!1503 = !DILocation(line: 211, column: 7, scope: !1392)
!1504 = !DILocation(line: 213, column: 7, scope: !1371)
!1505 = !DILocation(line: 214, column: 5, scope: !1371)
!1506 = !DILocation(line: 0, scope: !1359)
!1507 = !DILocation(line: 219, column: 1, scope: !253)
!1508 = !DISubprogram(name: "malloc", scope: !1509, file: !1509, line: 540, type: !1510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!82, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1513, line: 18, baseType: !1514)
!1513 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1514 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1515 = !DISubprogram(name: "no_mem_exit", scope: !1516, file: !1516, line: 180, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1520 = !DISubprogram(name: "ercCollect8PredBlocks", scope: !1521, file: !1521, line: 24, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DIFile(filename: "ldecod_src/inc/erc_do.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4cafcab6631707c26f660753f6c5ac8c")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!18, !85, !18, !18, !540, !18, !18, !18, !108}
!1524 = distinct !DISubprogram(name: "concealByTrial", scope: !2, file: !2, line: 329, type: !1525, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1527)
!1525 = !DISubroutineType(cc: DW_CC_nocall, types: !1526)
!1526 = !{!18, !256, !77, !18, !1329, !85, !18, !18, !540}
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1528 = !DILocalVariable(name: "recfr", arg: 1, scope: !1524, file: !2, line: 329, type: !256)
!1529 = !DILocalVariable(name: "predMB", arg: 2, scope: !1524, file: !2, line: 329, type: !77)
!1530 = !DILocalVariable(name: "currMBNum", arg: 3, scope: !1524, file: !2, line: 330, type: !18)
!1531 = !DILocalVariable(name: "object_list", arg: 4, scope: !1524, file: !2, line: 330, type: !1329)
!1532 = !DILocalVariable(name: "predBlocks", arg: 5, scope: !1524, file: !2, line: 330, type: !85)
!1533 = !DILocalVariable(name: "picSizeX", arg: 6, scope: !1524, file: !2, line: 331, type: !18)
!1534 = !DILocalVariable(name: "picSizeY", arg: 7, scope: !1524, file: !2, line: 331, type: !18)
!1535 = !DILocalVariable(name: "yCondition", arg: 8, scope: !1524, file: !2, line: 331, type: !540)
!1536 = !DILocalVariable(name: "p_Vid", scope: !1524, file: !2, line: 333, type: !262)
!1537 = !DILocalVariable(name: "predMBNum", scope: !1524, file: !2, line: 335, type: !18)
!1538 = !DILocalVariable(name: "numMBPerLine", scope: !1524, file: !2, line: 335, type: !18)
!1539 = !DILocalVariable(name: "compSplit1", scope: !1524, file: !2, line: 336, type: !18)
!1540 = !DILocalVariable(name: "compSplit2", scope: !1524, file: !2, line: 336, type: !18)
!1541 = !DILocalVariable(name: "compLeft", scope: !1524, file: !2, line: 336, type: !18)
!1542 = !DILocalVariable(name: "comp", scope: !1524, file: !2, line: 336, type: !18)
!1543 = !DILocalVariable(name: "compPred", scope: !1524, file: !2, line: 336, type: !18)
!1544 = !DILocalVariable(name: "order", scope: !1524, file: !2, line: 336, type: !18)
!1545 = !DILocalVariable(name: "fInterNeighborExists", scope: !1524, file: !2, line: 337, type: !18)
!1546 = !DILocalVariable(name: "numIntraNeighbours", scope: !1524, file: !2, line: 337, type: !18)
!1547 = !DILocalVariable(name: "fZeroMotionChecked", scope: !1524, file: !2, line: 338, type: !18)
!1548 = !DILocalVariable(name: "predSplitted", scope: !1524, file: !2, line: 338, type: !18)
!1549 = !DILocalVariable(name: "threshold", scope: !1524, file: !2, line: 339, type: !18)
!1550 = !DILocalVariable(name: "minDist", scope: !1524, file: !2, line: 340, type: !18)
!1551 = !DILocalVariable(name: "currDist", scope: !1524, file: !2, line: 340, type: !18)
!1552 = !DILocalVariable(name: "i", scope: !1524, file: !2, line: 340, type: !18)
!1553 = !DILocalVariable(name: "k", scope: !1524, file: !2, line: 340, type: !18)
!1554 = !DILocalVariable(name: "bestDir", scope: !1524, file: !2, line: 340, type: !18)
!1555 = !DILocalVariable(name: "regionSize", scope: !1524, file: !2, line: 341, type: !18)
!1556 = !DILocalVariable(name: "currRegion", scope: !1524, file: !2, line: 342, type: !1329)
!1557 = !DILocalVariable(name: "mvBest", scope: !1524, file: !2, line: 343, type: !293)
!1558 = !DILocalVariable(name: "mvPred", scope: !1524, file: !2, line: 343, type: !293)
!1559 = !DILocalVariable(name: "mvptr", scope: !1524, file: !2, line: 343, type: !85)
!1560 = distinct !DIAssignID()
!1561 = !DILocation(line: 0, scope: !1524)
!1562 = distinct !DIAssignID()
!1563 = !DILocation(line: 333, column: 35, scope: !1524)
!1564 = !DILocation(line: 343, column: 3, scope: !1524)
!1565 = !DILocation(line: 343, column: 7, scope: !1524)
!1566 = distinct !DIAssignID()
!1567 = !DILocation(line: 343, column: 30, scope: !1524)
!1568 = distinct !DIAssignID()
!1569 = !DILocation(line: 345, column: 33, scope: !1524)
!1570 = !DILocation(line: 353, column: 40, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 351, column: 3)
!1572 = !DILocation(line: 353, column: 29, scope: !1571)
!1573 = !DILocation(line: 357, column: 25, scope: !1571)
!1574 = !DILocation(line: 357, column: 83, scope: !1571)
!1575 = !DILocation(line: 357, column: 17, scope: !1571)
!1576 = !DILocation(line: 357, column: 22, scope: !1571)
!1577 = !DILocation(line: 358, column: 25, scope: !1571)
!1578 = !DILocation(line: 358, column: 83, scope: !1571)
!1579 = !DILocation(line: 358, column: 17, scope: !1571)
!1580 = !DILocation(line: 358, column: 22, scope: !1571)
!1581 = !DILocation(line: 360, column: 5, scope: !1571)
!1582 = !DILocation(line: 336, column: 23, scope: !1524)
!1583 = !DILocation(line: 336, column: 7, scope: !1524)
!1584 = !DILocation(line: 335, column: 7, scope: !1524)
!1585 = !DILocation(line: 369, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 369, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 361, column: 5)
!1588 = !DILocation(line: 373, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 373, column: 13)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 370, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 369, column: 7)
!1592 = !DILocation(line: 373, column: 27, scope: !1589)
!1593 = !DILocation(line: 373, column: 13, scope: !1590)
!1594 = !DILocation(line: 375, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 374, column: 9)
!1596 = !DILocation(line: 381, column: 13, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 376, column: 11)
!1598 = !DILocation(line: 387, column: 13, scope: !1597)
!1599 = !DILocation(line: 393, column: 13, scope: !1597)
!1600 = !DILocation(line: 399, column: 13, scope: !1597)
!1601 = !DILocation(line: 404, column: 15, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 404, column: 15)
!1603 = !DILocation(line: 404, column: 63, scope: !1602)
!1604 = !DILocation(line: 405, column: 13, scope: !1602)
!1605 = !DILocation(line: 420, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 417, column: 13)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 412, column: 13)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 412, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 410, column: 11)
!1610 = !DILocation(line: 444, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 443, column: 15)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 438, column: 24)
!1613 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 420, column: 19)
!1614 = !DILocation(line: 420, column: 19, scope: !1613)
!1615 = distinct !DIAssignID()
!1616 = !DILocation(line: 446, column: 29, scope: !1611)
!1617 = !DILocation(line: 446, column: 27, scope: !1611)
!1618 = !DILocation(line: 448, column: 29, scope: !1611)
!1619 = distinct !DIAssignID()
!1620 = !DILocation(line: 423, column: 21, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 423, column: 21)
!1622 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 421, column: 15)
!1623 = !DILocation(line: 423, column: 21, scope: !1622)
!1624 = !DILocation(line: 431, column: 41, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 428, column: 17)
!1626 = distinct !DIAssignID()
!1627 = !DILocation(line: 431, column: 29, scope: !1625)
!1628 = distinct !DIAssignID()
!1629 = !DILocation(line: 436, column: 15, scope: !1622)
!1630 = !DILocation(line: 0, scope: !1587)
!1631 = !DILocation(line: 0, scope: !1613)
!1632 = !DILocation(line: 456, column: 32, scope: !1606)
!1633 = !DILocation(line: 454, column: 26, scope: !1606)
!1634 = !DILocation(line: 459, column: 28, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 459, column: 19)
!1636 = !DILocation(line: 459, column: 38, scope: !1635)
!1637 = !DILocation(line: 466, column: 29, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 465, column: 17)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 465, column: 17)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 460, column: 15)
!1641 = !DILocation(line: 469, column: 20, scope: !1640)
!1642 = !DILocation(line: 469, column: 19, scope: !1640)
!1643 = !DILocation(line: 468, column: 40, scope: !1640)
!1644 = !DILocation(line: 473, column: 17, scope: !1640)
!1645 = !DILocation(line: 475, column: 15, scope: !1640)
!1646 = !DILocation(line: 363, column: 15, scope: !1587)
!1647 = !DILocation(line: 416, column: 28, scope: !1607)
!1648 = !DILocation(line: 414, column: 28, scope: !1607)
!1649 = !DILocation(line: 412, column: 13, scope: !1608)
!1650 = !DILocation(line: 364, column: 28, scope: !1587)
!1651 = !DILocation(line: 366, column: 26, scope: !1587)
!1652 = !DILocation(line: 369, column: 27, scope: !1591)
!1653 = !DILocation(line: 369, column: 21, scope: !1591)
!1654 = distinct !{!1654, !1585, !1655}
!1655 = !DILocation(line: 481, column: 5, scope: !1586)
!1656 = !DILocation(line: 485, column: 25, scope: !1571)
!1657 = !DILocation(line: 485, column: 49, scope: !1571)
!1658 = !DILocation(line: 485, column: 5, scope: !1587)
!1659 = distinct !{!1659, !1581, !1660}
!1660 = !DILocation(line: 485, column: 79, scope: !1571)
!1661 = !DILocation(line: 488, column: 10, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 488, column: 9)
!1663 = !DILocation(line: 488, column: 9, scope: !1571)
!1664 = !DILocation(line: 490, column: 29, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 489, column: 5)
!1666 = distinct !DIAssignID()
!1667 = !DILocation(line: 490, column: 17, scope: !1665)
!1668 = distinct !DIAssignID()
!1669 = !DILocation(line: 491, column: 17, scope: !1665)
!1670 = distinct !DIAssignID()
!1671 = !DILocation(line: 493, column: 33, scope: !1665)
!1672 = !DILocation(line: 493, column: 62, scope: !1665)
!1673 = !DILocation(line: 493, column: 80, scope: !1665)
!1674 = !DILocation(line: 493, column: 7, scope: !1665)
!1675 = !DILocation(line: 497, column: 24, scope: !1665)
!1676 = !DILocation(line: 495, column: 18, scope: !1665)
!1677 = !DILocation(line: 499, column: 20, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 499, column: 11)
!1679 = !DILocation(line: 499, column: 30, scope: !1678)
!1680 = !DILocation(line: 504, column: 21, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 503, column: 9)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 503, column: 9)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 500, column: 7)
!1684 = !DILocation(line: 506, column: 32, scope: !1683)
!1685 = !DILocation(line: 509, column: 9, scope: !1683)
!1686 = !DILocation(line: 511, column: 7, scope: !1683)
!1687 = !DILocation(line: 515, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 514, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 514, column: 5)
!1690 = !DILocation(line: 517, column: 5, scope: !1571)
!1691 = !DILocation(line: 517, column: 55, scope: !1571)
!1692 = !DILocation(line: 524, column: 1, scope: !1524)
!1693 = !DILocation(line: 523, column: 5, scope: !1524)
!1694 = distinct !DISubprogram(name: "concealByCopy", scope: !2, file: !2, line: 239, type: !1695, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1697)
!1695 = !DISubroutineType(cc: DW_CC_nocall, types: !1696)
!1696 = !{!18, !256, !18, !1329, !18}
!1697 = !{!1698, !1699, !1700, !1701, !1702}
!1698 = !DILocalVariable(name: "recfr", arg: 1, scope: !1694, file: !2, line: 239, type: !256)
!1699 = !DILocalVariable(name: "currMBNum", arg: 2, scope: !1694, file: !2, line: 239, type: !18)
!1700 = !DILocalVariable(name: "object_list", arg: 3, scope: !1694, file: !2, line: 240, type: !1329)
!1701 = !DILocalVariable(name: "picSizeX", arg: 4, scope: !1694, file: !2, line: 240, type: !18)
!1702 = !DILocalVariable(name: "currRegion", scope: !1694, file: !2, line: 242, type: !1329)
!1703 = !DILocation(line: 0, scope: !1694)
!1704 = !DILocation(line: 244, column: 38, scope: !1694)
!1705 = !DILocation(line: 244, column: 27, scope: !1694)
!1706 = !DILocation(line: 245, column: 26, scope: !1694)
!1707 = !DILocation(line: 247, column: 23, scope: !1694)
!1708 = !DILocation(line: 247, column: 49, scope: !1694)
!1709 = !DILocation(line: 247, column: 15, scope: !1694)
!1710 = !DILocation(line: 247, column: 20, scope: !1694)
!1711 = !DILocation(line: 248, column: 23, scope: !1694)
!1712 = !DILocation(line: 248, column: 49, scope: !1694)
!1713 = !DILocation(line: 248, column: 15, scope: !1694)
!1714 = !DILocation(line: 248, column: 20, scope: !1694)
!1715 = !DILocation(line: 250, column: 29, scope: !1694)
!1716 = !DILocalVariable(name: "recfr", arg: 1, scope: !1717, file: !2, line: 270, type: !256)
!1717 = distinct !DISubprogram(name: "copyBetweenFrames", scope: !2, file: !2, line: 270, type: !1718, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !256, !18, !18, !18}
!1720 = !{!1716, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1721 = !DILocalVariable(name: "currYBlockNum", arg: 2, scope: !1717, file: !2, line: 270, type: !18)
!1722 = !DILocalVariable(name: "picSizeX", arg: 3, scope: !1717, file: !2, line: 270, type: !18)
!1723 = !DILocalVariable(name: "regionSize", arg: 4, scope: !1717, file: !2, line: 270, type: !18)
!1724 = !DILocalVariable(name: "p_Vid", scope: !1717, file: !2, line: 272, type: !262)
!1725 = !DILocalVariable(name: "dec_picture", scope: !1717, file: !2, line: 273, type: !91)
!1726 = !DILocalVariable(name: "j", scope: !1717, file: !2, line: 274, type: !18)
!1727 = !DILocalVariable(name: "k", scope: !1717, file: !2, line: 274, type: !18)
!1728 = !DILocalVariable(name: "location", scope: !1717, file: !2, line: 274, type: !18)
!1729 = !DILocalVariable(name: "xmin", scope: !1717, file: !2, line: 274, type: !18)
!1730 = !DILocalVariable(name: "ymin", scope: !1717, file: !2, line: 274, type: !18)
!1731 = !DILocalVariable(name: "refPic", scope: !1717, file: !2, line: 275, type: !91)
!1732 = !DILocation(line: 0, scope: !1717, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 250, column: 3, scope: !1694)
!1734 = !DILocation(line: 272, column: 35, scope: !1717, inlinedAt: !1733)
!1735 = !DILocation(line: 273, column: 41, scope: !1717, inlinedAt: !1733)
!1736 = !DILocation(line: 275, column: 36, scope: !1717, inlinedAt: !1733)
!1737 = !DILocation(line: 275, column: 29, scope: !1717, inlinedAt: !1733)
!1738 = !DILocation(line: 275, column: 52, scope: !1717, inlinedAt: !1733)
!1739 = !DILocation(line: 278, column: 11, scope: !1717, inlinedAt: !1733)
!1740 = !DILocation(line: 278, column: 45, scope: !1717, inlinedAt: !1733)
!1741 = !DILocation(line: 279, column: 11, scope: !1717, inlinedAt: !1733)
!1742 = !DILocation(line: 279, column: 45, scope: !1717, inlinedAt: !1733)
!1743 = !DILocation(line: 281, column: 3, scope: !1744, inlinedAt: !1733)
!1744 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 281, column: 3)
!1745 = !DILocation(line: 286, column: 39, scope: !1746, inlinedAt: !1733)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 283, column: 5)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 282, column: 5)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 282, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 281, column: 3)
!1750 = !DILocation(line: 286, column: 31, scope: !1746, inlinedAt: !1733)
!1751 = !DILocation(line: 286, column: 14, scope: !1746, inlinedAt: !1733)
!1752 = !DILocation(line: 286, column: 7, scope: !1746, inlinedAt: !1733)
!1753 = !DILocation(line: 286, column: 29, scope: !1746, inlinedAt: !1733)
!1754 = !DILocation(line: 281, column: 42, scope: !1749, inlinedAt: !1733)
!1755 = !DILocation(line: 281, column: 20, scope: !1749, inlinedAt: !1733)
!1756 = distinct !{!1756, !1743, !1757}
!1757 = !DILocation(line: 287, column: 5, scope: !1744, inlinedAt: !1733)
!1758 = !DILocation(line: 289, column: 45, scope: !1759, inlinedAt: !1733)
!1759 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 289, column: 5)
!1760 = !DILocation(line: 289, column: 22, scope: !1759, inlinedAt: !1733)
!1761 = !DILocation(line: 289, column: 19, scope: !1759, inlinedAt: !1733)
!1762 = !DILocation(line: 289, column: 89, scope: !1763, inlinedAt: !1733)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 289, column: 5)
!1764 = !DILocation(line: 289, column: 67, scope: !1763, inlinedAt: !1733)
!1765 = !DILocation(line: 289, column: 5, scope: !1759, inlinedAt: !1733)
!1766 = !DILocation(line: 290, column: 24, scope: !1767, inlinedAt: !1733)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 290, column: 7)
!1768 = !DILocation(line: 290, column: 21, scope: !1767, inlinedAt: !1733)
!1769 = !DILocation(line: 290, column: 94, scope: !1770, inlinedAt: !1733)
!1770 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 290, column: 7)
!1771 = !DILocation(line: 290, column: 91, scope: !1770, inlinedAt: !1733)
!1772 = !DILocation(line: 290, column: 69, scope: !1770, inlinedAt: !1733)
!1773 = !DILocation(line: 290, column: 7, scope: !1767, inlinedAt: !1733)
!1774 = !DILocation(line: 293, column: 36, scope: !1775, inlinedAt: !1733)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 291, column: 7)
!1776 = !DILocation(line: 293, column: 82, scope: !1775, inlinedAt: !1733)
!1777 = !DILocation(line: 297, column: 41, scope: !1775, inlinedAt: !1733)
!1778 = !DILocation(line: 297, column: 33, scope: !1775, inlinedAt: !1733)
!1779 = !DILocation(line: 297, column: 16, scope: !1775, inlinedAt: !1733)
!1780 = !DILocation(line: 297, column: 9, scope: !1775, inlinedAt: !1733)
!1781 = !DILocation(line: 297, column: 31, scope: !1775, inlinedAt: !1733)
!1782 = !DILocation(line: 298, column: 41, scope: !1775, inlinedAt: !1733)
!1783 = !DILocation(line: 298, column: 33, scope: !1775, inlinedAt: !1733)
!1784 = !DILocation(line: 298, column: 16, scope: !1775, inlinedAt: !1733)
!1785 = !DILocation(line: 298, column: 9, scope: !1775, inlinedAt: !1733)
!1786 = !DILocation(line: 298, column: 31, scope: !1775, inlinedAt: !1733)
!1787 = !DILocation(line: 290, column: 138, scope: !1770, inlinedAt: !1733)
!1788 = !DILocation(line: 290, column: 117, scope: !1770, inlinedAt: !1733)
!1789 = distinct !{!1789, !1773, !1790}
!1790 = !DILocation(line: 299, column: 7, scope: !1767, inlinedAt: !1733)
!1791 = !DILocation(line: 289, column: 92, scope: !1763, inlinedAt: !1733)
!1792 = !DILocation(line: 289, column: 115, scope: !1763, inlinedAt: !1733)
!1793 = !DILocation(line: 289, column: 136, scope: !1763, inlinedAt: !1733)
!1794 = distinct !{!1794, !1765, !1795}
!1795 = !DILocation(line: 299, column: 7, scope: !1759, inlinedAt: !1733)
!1796 = !DILocation(line: 252, column: 3, scope: !1694)
!1797 = !DISubprogram(name: "ercMarkCurrMBConcealed", scope: !88, file: !88, line: 124, type: !1798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !18, !18, !18, !1331}
!1800 = !DISubprogram(name: "free", scope: !1509, file: !1509, line: 555, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !82}
!1803 = distinct !DISubprogram(name: "conceal_lost_frames", scope: !2, file: !2, line: 1290, type: !1804, scopeLine: 1291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1808)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1806, !608}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPictureBuffer", file: !93, line: 209, baseType: !620)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1809 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !1803, file: !2, line: 1290, type: !1806)
!1810 = !DILocalVariable(name: "pSlice", arg: 2, scope: !1803, file: !2, line: 1290, type: !608)
!1811 = !DILocalVariable(name: "p_Vid", scope: !1803, file: !2, line: 1292, type: !262)
!1812 = !DILocalVariable(name: "CurrFrameNum", scope: !1803, file: !2, line: 1293, type: !18)
!1813 = !DILocalVariable(name: "UnusedShortTermFrameNum", scope: !1803, file: !2, line: 1294, type: !18)
!1814 = !DILocalVariable(name: "picture", scope: !1803, file: !2, line: 1295, type: !91)
!1815 = !DILocalVariable(name: "tmp1", scope: !1803, file: !2, line: 1296, type: !18)
!1816 = !DILocalVariable(name: "tmp2", scope: !1803, file: !2, line: 1297, type: !18)
!1817 = !DILocalVariable(name: "i", scope: !1803, file: !2, line: 1298, type: !18)
!1818 = !DILocation(line: 0, scope: !1803)
!1819 = !DILocation(line: 1292, column: 35, scope: !1803)
!1820 = !DILocation(line: 1296, column: 22, scope: !1803)
!1821 = !DILocation(line: 1297, column: 14, scope: !1803)
!1822 = !DILocation(line: 1296, column: 14, scope: !1803)
!1823 = !DILocation(line: 1300, column: 67, scope: !1803)
!1824 = !DILocation(line: 1300, column: 34, scope: !1803)
!1825 = !DILocation(line: 1304, column: 13, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 1304, column: 6)
!1827 = !DILocation(line: 1304, column: 34, scope: !1826)
!1828 = !DILocation(line: 1304, column: 6, scope: !1803)
!1829 = !DILocation(line: 1309, column: 39, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 1305, column: 3)
!1831 = !DILocation(line: 1309, column: 31, scope: !1830)
!1832 = !DILocation(line: 1309, column: 12, scope: !1830)
!1833 = !DILocation(line: 1309, column: 29, scope: !1830)
!1834 = !DILocation(line: 1310, column: 12, scope: !1830)
!1835 = !DILocation(line: 1310, column: 32, scope: !1830)
!1836 = !DILocation(line: 1311, column: 3, scope: !1830)
!1837 = !DILocation(line: 1313, column: 39, scope: !1826)
!1838 = !DILocation(line: 1313, column: 53, scope: !1826)
!1839 = !DILocation(line: 1313, column: 67, scope: !1826)
!1840 = !DILocation(line: 1313, column: 58, scope: !1826)
!1841 = !DILocation(line: 0, scope: !1826)
!1842 = !DILocation(line: 1315, column: 26, scope: !1803)
!1843 = !DILocation(line: 1317, column: 23, scope: !1803)
!1844 = !DILocation(line: 1317, column: 3, scope: !1803)
!1845 = !DILocation(line: 1319, column: 60, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 1318, column: 3)
!1847 = !DILocation(line: 1319, column: 74, scope: !1846)
!1848 = !DILocation(line: 1319, column: 89, scope: !1846)
!1849 = !DILocation(line: 1319, column: 106, scope: !1846)
!1850 = !DILocation(line: 1319, column: 15, scope: !1846)
!1851 = !DILocation(line: 1321, column: 14, scope: !1846)
!1852 = !DILocation(line: 1321, column: 26, scope: !1846)
!1853 = !DILocation(line: 1322, column: 14, scope: !1846)
!1854 = !DILocation(line: 1322, column: 22, scope: !1846)
!1855 = !DILocation(line: 1323, column: 14, scope: !1846)
!1856 = !DILocation(line: 1323, column: 24, scope: !1846)
!1857 = !DILocation(line: 1324, column: 14, scope: !1846)
!1858 = !DILocation(line: 1324, column: 27, scope: !1846)
!1859 = !DILocation(line: 1325, column: 14, scope: !1846)
!1860 = !DILocation(line: 1325, column: 24, scope: !1846)
!1861 = !DILocation(line: 1326, column: 14, scope: !1846)
!1862 = !DILocation(line: 1326, column: 33, scope: !1846)
!1863 = !DILocation(line: 1327, column: 14, scope: !1846)
!1864 = !DILocation(line: 1327, column: 28, scope: !1846)
!1865 = !DILocation(line: 1329, column: 14, scope: !1846)
!1866 = !DILocation(line: 1329, column: 46, scope: !1846)
!1867 = !DILocation(line: 1331, column: 23, scope: !1846)
!1868 = !DILocation(line: 1333, column: 29, scope: !1846)
!1869 = !DILocation(line: 1333, column: 55, scope: !1846)
!1870 = !DILocation(line: 1333, column: 46, scope: !1846)
!1871 = !DILocation(line: 1336, column: 14, scope: !1846)
!1872 = !DILocation(line: 1336, column: 17, scope: !1846)
!1873 = !DILocation(line: 1337, column: 29, scope: !1846)
!1874 = !DILocalVariable(name: "picture", arg: 1, scope: !1875, file: !2, line: 1266, type: !91)
!1875 = distinct !DISubprogram(name: "copy_prev_pic_to_concealed_pic", scope: !2, file: !2, line: 1266, type: !1876, scopeLine: 1267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !91, !1806}
!1878 = !{!1874, !1879, !1880, !1881}
!1879 = !DILocalVariable(name: "p_Dpb", arg: 2, scope: !1875, file: !2, line: 1266, type: !1806)
!1880 = !DILocalVariable(name: "p_Vid", scope: !1875, file: !2, line: 1268, type: !262)
!1881 = !DILocalVariable(name: "ref_pic", scope: !1875, file: !2, line: 1270, type: !91)
!1882 = !DILocation(line: 0, scope: !1875, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 1339, column: 5, scope: !1846)
!1884 = !DILocation(line: 1268, column: 35, scope: !1875, inlinedAt: !1883)
!1885 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !1886, file: !2, line: 1094, type: !1806)
!1886 = distinct !DISubprogram(name: "get_last_ref_pic_from_dpb", scope: !2, file: !2, line: 1094, type: !1887, scopeLine: 1095, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!91, !1806}
!1889 = !{!1885, !1890, !1891}
!1890 = !DILocalVariable(name: "used_size", scope: !1886, file: !2, line: 1096, type: !18)
!1891 = !DILocalVariable(name: "i", scope: !1886, file: !2, line: 1097, type: !18)
!1892 = !DILocation(line: 0, scope: !1886, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 1270, column: 30, scope: !1875, inlinedAt: !1883)
!1894 = !DILocation(line: 1096, column: 26, scope: !1886, inlinedAt: !1893)
!1895 = !DILocation(line: 1099, scope: !1896, inlinedAt: !1893)
!1896 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 1099, column: 3)
!1897 = !DILocation(line: 1099, column: 24, scope: !1898, inlinedAt: !1893)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 1099, column: 3)
!1899 = !DILocation(line: 1099, column: 3, scope: !1896, inlinedAt: !1893)
!1900 = !DILocation(line: 1101, column: 9, scope: !1901, inlinedAt: !1893)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 1101, column: 9)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 1100, column: 3)
!1903 = !DILocation(line: 1101, column: 23, scope: !1901, inlinedAt: !1893)
!1904 = !DILocation(line: 1101, column: 30, scope: !1901, inlinedAt: !1893)
!1905 = !DILocation(line: 1101, column: 9, scope: !1902, inlinedAt: !1893)
!1906 = !DILocation(line: 1103, column: 27, scope: !1907, inlinedAt: !1893)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 1103, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 1102, column: 5)
!1909 = !DILocation(line: 1103, column: 34, scope: !1907, inlinedAt: !1893)
!1910 = !DILocation(line: 1103, column: 12, scope: !1907, inlinedAt: !1893)
!1911 = !DILocation(line: 1103, column: 54, scope: !1907, inlinedAt: !1893)
!1912 = !DILocation(line: 1104, column: 32, scope: !1907, inlinedAt: !1893)
!1913 = !DILocation(line: 1104, column: 11, scope: !1907, inlinedAt: !1893)
!1914 = !DILocation(line: 1103, column: 11, scope: !1908, inlinedAt: !1893)
!1915 = distinct !{!1915, !1899, !1916}
!1916 = !DILocation(line: 1110, column: 3, scope: !1896, inlinedAt: !1893)
!1917 = !DILocation(line: 1275, column: 10, scope: !1875, inlinedAt: !1883)
!1918 = !DILocation(line: 1275, column: 29, scope: !1875, inlinedAt: !1883)
!1919 = !DILocation(line: 1276, column: 3, scope: !1875, inlinedAt: !1883)
!1920 = !DILocation(line: 1342, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 1342, column: 8)
!1922 = !DILocation(line: 1342, column: 36, scope: !1921)
!1923 = !DILocation(line: 1342, column: 8, scope: !1846)
!1924 = !DILocation(line: 1344, column: 16, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 1343, column: 5)
!1926 = !DILocation(line: 1344, column: 27, scope: !1925)
!1927 = !DILocation(line: 1345, column: 16, scope: !1925)
!1928 = !DILocation(line: 1345, column: 25, scope: !1925)
!1929 = !DILocation(line: 1347, column: 31, scope: !1925)
!1930 = !DILocation(line: 1347, column: 24, scope: !1925)
!1931 = !DILocation(line: 1347, column: 47, scope: !1925)
!1932 = !DILocation(line: 1347, column: 7, scope: !1925)
!1933 = !DILocation(line: 1354, column: 19, scope: !1925)
!1934 = !DILocation(line: 1355, column: 31, scope: !1925)
!1935 = !DILocation(line: 1356, column: 5, scope: !1925)
!1936 = !DILocation(line: 1358, column: 33, scope: !1846)
!1937 = !DILocation(line: 1358, column: 5, scope: !1846)
!1938 = !DILocation(line: 1362, column: 26, scope: !1846)
!1939 = !DILocation(line: 1363, column: 70, scope: !1846)
!1940 = !DILocation(line: 1368, column: 27, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 1367, column: 5)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 1366, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 1366, column: 5)
!1944 = !DILocation(line: 1363, column: 56, scope: !1846)
!1945 = !DILocation(line: 1363, column: 61, scope: !1846)
!1946 = !DILocation(line: 1370, column: 25, scope: !1846)
!1947 = distinct !{!1947, !1844, !1948}
!1948 = !DILocation(line: 1371, column: 3, scope: !1803)
!1949 = !DILocation(line: 1372, column: 34, scope: !1803)
!1950 = !DILocation(line: 1374, column: 21, scope: !1803)
!1951 = !DILocation(line: 1375, column: 1, scope: !1803)
!1952 = !DISubprogram(name: "alloc_storable_picture", scope: !93, file: !93, line: 216, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!91, !262, !97, !18, !18, !18, !18}
!1955 = !DISubprogram(name: "flush_dpb", scope: !93, file: !93, line: 223, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1806, !18}
!1958 = !DISubprogram(name: "store_picture_in_dpb", scope: !93, file: !93, line: 218, type: !1959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !1806, !91}
!1961 = distinct !DISubprogram(name: "update_ref_list_for_concealment", scope: !2, file: !2, line: 1386, type: !1962, scopeLine: 1387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1806}
!1964 = !{!1965, !1966, !1967, !1968}
!1965 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !1961, file: !2, line: 1386, type: !1806)
!1966 = !DILocalVariable(name: "p_Vid", scope: !1961, file: !2, line: 1388, type: !262)
!1967 = !DILocalVariable(name: "i", scope: !1961, file: !2, line: 1389, type: !42)
!1968 = !DILocalVariable(name: "j", scope: !1961, file: !2, line: 1389, type: !42)
!1969 = !DILocation(line: 0, scope: !1961)
!1970 = !DILocation(line: 1388, column: 35, scope: !1961)
!1971 = !DILocation(line: 1391, column: 26, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 1391, column: 3)
!1973 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1391, column: 3)
!1974 = !DILocation(line: 1391, column: 17, scope: !1972)
!1975 = !DILocation(line: 1391, column: 3, scope: !1973)
!1976 = !DILocation(line: 1393, column: 16, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1393, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1392, column: 3)
!1979 = !DILocation(line: 1393, column: 9, scope: !1977)
!1980 = !DILocation(line: 1393, column: 23, scope: !1977)
!1981 = !DILocation(line: 1393, column: 9, scope: !1978)
!1982 = !DILocation(line: 1395, column: 14, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 1394, column: 5)
!1984 = !DILocation(line: 1395, column: 22, scope: !1983)
!1985 = !DILocation(line: 1395, column: 7, scope: !1983)
!1986 = !DILocation(line: 1395, column: 26, scope: !1983)
!1987 = !DILocation(line: 1396, column: 5, scope: !1983)
!1988 = !DILocation(line: 1391, column: 38, scope: !1972)
!1989 = distinct !{!1989, !1975, !1990}
!1990 = !DILocation(line: 1397, column: 3, scope: !1973)
!1991 = !DILocation(line: 1399, column: 40, scope: !1961)
!1992 = !DILocation(line: 1399, column: 52, scope: !1961)
!1993 = !DILocation(line: 1399, column: 10, scope: !1961)
!1994 = !DILocation(line: 1399, column: 31, scope: !1961)
!1995 = !DILocation(line: 1400, column: 1, scope: !1961)
!1996 = distinct !DISubprogram(name: "init_lists_for_non_reference_loss", scope: !2, file: !2, line: 1411, type: !1997, scopeLine: 1412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1806, !18, !97}
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!2000 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !1996, file: !2, line: 1411, type: !1806)
!2001 = !DILocalVariable(name: "currSliceType", arg: 2, scope: !1996, file: !2, line: 1411, type: !18)
!2002 = !DILocalVariable(name: "currPicStructure", arg: 3, scope: !1996, file: !2, line: 1411, type: !97)
!2003 = !DILocalVariable(name: "p_Vid", scope: !1996, file: !2, line: 1413, type: !262)
!2004 = !DILocalVariable(name: "active_sps", scope: !1996, file: !2, line: 1414, type: !400)
!2005 = !DILocalVariable(name: "i", scope: !1996, file: !2, line: 1416, type: !42)
!2006 = !DILocalVariable(name: "j", scope: !1996, file: !2, line: 1417, type: !18)
!2007 = !DILocalVariable(name: "MaxFrameNum", scope: !1996, file: !2, line: 1418, type: !18)
!2008 = !DILocalVariable(name: "diff", scope: !1996, file: !2, line: 1419, type: !18)
!2009 = !DILocalVariable(name: "list0idx", scope: !1996, file: !2, line: 1421, type: !18)
!2010 = !DILocalVariable(name: "list0idx_1", scope: !1996, file: !2, line: 1422, type: !18)
!2011 = !DILocalVariable(name: "tmp_s", scope: !1996, file: !2, line: 1424, type: !91)
!2012 = !DILocation(line: 0, scope: !1996)
!2013 = !DILocation(line: 1413, column: 35, scope: !1996)
!2014 = !DILocation(line: 1414, column: 49, scope: !1996)
!2015 = !DILocation(line: 1418, column: 39, scope: !1996)
!2016 = !DILocation(line: 1418, column: 65, scope: !1996)
!2017 = !DILocation(line: 1418, column: 23, scope: !1996)
!2018 = !DILocation(line: 1426, column: 24, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1426, column: 7)
!2020 = !DILocation(line: 1426, column: 7, scope: !1996)
!2021 = !DILocation(line: 1428, column: 22, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 1428, column: 5)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 1428, column: 5)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1427, column: 3)
!2025 = !DILocation(line: 1428, column: 14, scope: !2022)
!2026 = !DILocation(line: 1428, column: 5, scope: !2023)
!2027 = !DILocation(line: 1430, column: 17, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 1430, column: 10)
!2029 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 1429, column: 5)
!2030 = !DILocation(line: 1430, column: 10, scope: !2028)
!2031 = !DILocation(line: 1430, column: 24, scope: !2028)
!2032 = !DILocation(line: 1430, column: 46, scope: !2028)
!2033 = !DILocation(line: 1430, column: 10, scope: !2029)
!2034 = !DILocation(line: 1432, column: 26, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 1432, column: 12)
!2036 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 1431, column: 7)
!2037 = !DILocation(line: 1432, column: 45, scope: !2035)
!2038 = !DILocation(line: 1432, column: 36, scope: !2035)
!2039 = !DILocation(line: 1432, column: 12, scope: !2036)
!2040 = !DILocation(line: 0, scope: !2035)
!2041 = !DILocation(line: 1436, column: 51, scope: !2036)
!2042 = !DILocation(line: 1436, column: 44, scope: !2036)
!2043 = !DILocation(line: 1436, column: 62, scope: !2036)
!2044 = !DILocation(line: 1436, column: 27, scope: !2036)
!2045 = !DILocation(line: 1436, column: 34, scope: !2036)
!2046 = !DILocation(line: 1436, column: 42, scope: !2036)
!2047 = !DILocation(line: 1437, column: 7, scope: !2036)
!2048 = !DILocation(line: 1428, column: 45, scope: !2022)
!2049 = distinct !{!2049, !2026, !2050}
!2050 = !DILocation(line: 1438, column: 5, scope: !2023)
!2051 = !DILocation(line: 1441, column: 7, scope: !1996)
!2052 = !DILocation(line: 1446, column: 24, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 1446, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !2, line: 1446, column: 7)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !2, line: 1445, column: 5)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 1444, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 1442, column: 3)
!2058 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1441, column: 7)
!2059 = !DILocation(line: 1446, column: 16, scope: !2053)
!2060 = !DILocation(line: 1446, column: 7, scope: !2054)
!2061 = !DILocation(line: 1448, column: 19, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 1448, column: 12)
!2063 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 1447, column: 7)
!2064 = !DILocation(line: 1448, column: 12, scope: !2062)
!2065 = !DILocation(line: 1448, column: 26, scope: !2062)
!2066 = !DILocation(line: 1448, column: 48, scope: !2062)
!2067 = !DILocation(line: 1448, column: 12, scope: !2063)
!2068 = !DILocation(line: 1450, column: 71, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 1449, column: 9)
!2070 = !DILocation(line: 1450, column: 18, scope: !2069)
!2071 = !DILocation(line: 1450, column: 11, scope: !2069)
!2072 = !DILocation(line: 1450, column: 34, scope: !2069)
!2073 = !DILocation(line: 1450, column: 51, scope: !2069)
!2074 = !DILocation(line: 1450, column: 55, scope: !2069)
!2075 = !DILocation(line: 1451, column: 9, scope: !2069)
!2076 = !DILocation(line: 1446, column: 36, scope: !2053)
!2077 = distinct !{!2077, !2060, !2078}
!2078 = !DILocation(line: 1452, column: 7, scope: !2054)
!2079 = !DILocation(line: 1454, column: 28, scope: !2055)
!2080 = !DILocation(line: 1454, column: 21, scope: !2055)
!2081 = !DILocation(line: 1454, column: 44, scope: !2055)
!2082 = !DILocation(line: 1454, column: 54, scope: !2055)
!2083 = !DILocation(line: 1454, column: 7, scope: !2055)
!2084 = !DILocation(line: 1455, column: 45, scope: !2055)
!2085 = !DILocation(line: 1455, column: 14, scope: !2055)
!2086 = !DILocation(line: 1455, column: 7, scope: !2055)
!2087 = !DILocation(line: 1455, column: 30, scope: !2055)
!2088 = !DILocation(line: 1455, column: 43, scope: !2055)
!2089 = !DILocation(line: 1456, column: 5, scope: !2055)
!2090 = !DILocation(line: 1421, column: 7, scope: !1996)
!2091 = !DILocation(line: 1459, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1459, column: 7)
!2093 = !DILocation(line: 1459, column: 7, scope: !1996)
!2094 = !DILocation(line: 1464, column: 24, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !2, line: 1464, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1464, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 1462, column: 5)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 1461, column: 9)
!2099 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1460, column: 3)
!2100 = !DILocation(line: 1464, column: 16, scope: !2095)
!2101 = !DILocation(line: 1464, column: 7, scope: !2096)
!2102 = !DILocation(line: 1466, column: 19, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 1466, column: 12)
!2104 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 1465, column: 7)
!2105 = !DILocation(line: 1466, column: 12, scope: !2103)
!2106 = !DILocation(line: 1466, column: 26, scope: !2103)
!2107 = !DILocation(line: 1466, column: 48, scope: !2103)
!2108 = !DILocation(line: 1466, column: 12, scope: !2104)
!2109 = !DILocation(line: 1468, column: 21, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 1468, column: 14)
!2111 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 1467, column: 9)
!2112 = !DILocation(line: 1468, column: 57, scope: !2110)
!2113 = !DILocation(line: 1468, column: 64, scope: !2110)
!2114 = !DILocation(line: 1468, column: 41, scope: !2110)
!2115 = !DILocation(line: 1468, column: 14, scope: !2111)
!2116 = !DILocation(line: 1469, column: 20, scope: !2110)
!2117 = !DILocation(line: 1469, column: 13, scope: !2110)
!2118 = !DILocation(line: 1469, column: 36, scope: !2110)
!2119 = !DILocation(line: 1469, column: 53, scope: !2110)
!2120 = !DILocation(line: 1469, column: 57, scope: !2110)
!2121 = !DILocation(line: 1464, column: 36, scope: !2095)
!2122 = distinct !{!2122, !2101, !2123}
!2123 = !DILocation(line: 1471, column: 7, scope: !2096)
!2124 = !DILocation(line: 1473, column: 28, scope: !2097)
!2125 = !DILocation(line: 1473, column: 21, scope: !2097)
!2126 = !DILocation(line: 1473, column: 44, scope: !2097)
!2127 = !DILocation(line: 1473, column: 54, scope: !2097)
!2128 = !DILocation(line: 1473, column: 7, scope: !2097)
!2129 = !DILocation(line: 1477, column: 24, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 1477, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1477, column: 7)
!2132 = !DILocation(line: 1477, column: 16, scope: !2130)
!2133 = !DILocation(line: 1477, column: 7, scope: !2131)
!2134 = !DILocation(line: 1479, column: 19, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !2, line: 1479, column: 12)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 1478, column: 7)
!2137 = !DILocation(line: 1479, column: 12, scope: !2135)
!2138 = !DILocation(line: 1479, column: 26, scope: !2135)
!2139 = !DILocation(line: 1479, column: 48, scope: !2135)
!2140 = !DILocation(line: 1479, column: 12, scope: !2136)
!2141 = !DILocation(line: 1481, column: 21, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 1481, column: 14)
!2143 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 1480, column: 9)
!2144 = !DILocation(line: 1481, column: 57, scope: !2142)
!2145 = !DILocation(line: 1481, column: 64, scope: !2142)
!2146 = !DILocation(line: 1481, column: 41, scope: !2142)
!2147 = !DILocation(line: 1481, column: 14, scope: !2143)
!2148 = !DILocation(line: 1482, column: 20, scope: !2142)
!2149 = !DILocation(line: 1482, column: 13, scope: !2142)
!2150 = !DILocation(line: 1482, column: 36, scope: !2142)
!2151 = !DILocation(line: 1482, column: 53, scope: !2142)
!2152 = !DILocation(line: 1482, column: 57, scope: !2142)
!2153 = !DILocation(line: 1477, column: 36, scope: !2130)
!2154 = distinct !{!2154, !2133, !2155}
!2155 = !DILocation(line: 1484, column: 7, scope: !2131)
!2156 = !DILocation(line: 1486, column: 29, scope: !2097)
!2157 = !DILocation(line: 1486, column: 22, scope: !2097)
!2158 = !DILocation(line: 1486, column: 45, scope: !2097)
!2159 = !DILocation(line: 1486, column: 75, scope: !2097)
!2160 = !DILocation(line: 1486, column: 67, scope: !2097)
!2161 = !DILocation(line: 1486, column: 7, scope: !2097)
!2162 = !DILocation(line: 1488, column: 18, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1488, column: 7)
!2164 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1488, column: 7)
!2165 = !DILocation(line: 1488, column: 7, scope: !2164)
!2166 = !DILocation(line: 1490, column: 71, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 1489, column: 7)
!2168 = !DILocation(line: 1490, column: 64, scope: !2167)
!2169 = !DILocation(line: 1490, column: 87, scope: !2167)
!2170 = !DILocation(line: 1490, column: 9, scope: !2167)
!2171 = !DILocation(line: 1490, column: 63, scope: !2167)
!2172 = !DILocation(line: 1492, column: 27, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 1492, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1492, column: 7)
!2175 = !DILocation(line: 1492, column: 7, scope: !2174)
!2176 = !DILocation(line: 1494, column: 62, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 1493, column: 7)
!2178 = !DILocation(line: 1494, column: 55, scope: !2177)
!2179 = !DILocation(line: 1494, column: 78, scope: !2177)
!2180 = !DILocation(line: 1494, column: 9, scope: !2177)
!2181 = !DILocation(line: 1494, column: 54, scope: !2177)
!2182 = !DILocation(line: 1492, column: 39, scope: !2173)
!2183 = !DILocation(line: 1488, column: 32, scope: !2163)
!2184 = distinct !{!2184, !2165, !2185}
!2185 = !DILocation(line: 1491, column: 7, scope: !2164)
!2186 = !DILocation(line: 1494, column: 42, scope: !2177)
!2187 = distinct !{!2187, !2175, !2188}
!2188 = !DILocation(line: 1495, column: 7, scope: !2174)
!2189 = !DILocation(line: 1497, column: 83, scope: !2097)
!2190 = !DILocation(line: 1497, column: 52, scope: !2097)
!2191 = !DILocation(line: 1497, column: 45, scope: !2097)
!2192 = !DILocation(line: 1497, column: 81, scope: !2097)
!2193 = !DILocation(line: 1497, column: 14, scope: !2097)
!2194 = !DILocation(line: 1497, column: 7, scope: !2097)
!2195 = !DILocation(line: 1497, column: 30, scope: !2097)
!2196 = !DILocation(line: 1497, column: 43, scope: !2097)
!2197 = !DILocation(line: 1499, column: 29, scope: !2097)
!2198 = !DILocation(line: 1499, column: 22, scope: !2097)
!2199 = !DILocation(line: 1499, column: 45, scope: !2097)
!2200 = !DILocation(line: 1499, column: 85, scope: !2097)
!2201 = !DILocation(line: 1499, column: 62, scope: !2097)
!2202 = !DILocation(line: 1499, column: 109, scope: !2097)
!2203 = !DILocation(line: 1499, column: 108, scope: !2097)
!2204 = !DILocation(line: 1499, column: 100, scope: !2097)
!2205 = !DILocation(line: 1499, column: 7, scope: !2097)
!2206 = !DILocation(line: 1500, column: 29, scope: !2097)
!2207 = !DILocation(line: 1500, column: 22, scope: !2097)
!2208 = !DILocation(line: 1500, column: 85, scope: !2097)
!2209 = !DILocation(line: 1500, column: 62, scope: !2097)
!2210 = !DILocation(line: 1500, column: 109, scope: !2097)
!2211 = !DILocation(line: 1500, column: 108, scope: !2097)
!2212 = !DILocation(line: 1500, column: 100, scope: !2097)
!2213 = !DILocation(line: 1500, column: 7, scope: !2097)
!2214 = !DILocation(line: 1501, column: 52, scope: !2097)
!2215 = !DILocation(line: 1501, column: 45, scope: !2097)
!2216 = !DILocation(line: 1501, column: 81, scope: !2097)
!2217 = !DILocation(line: 1501, column: 14, scope: !2097)
!2218 = !DILocation(line: 1501, column: 7, scope: !2097)
!2219 = !DILocation(line: 1501, column: 30, scope: !2097)
!2220 = !DILocation(line: 1501, column: 43, scope: !2097)
!2221 = !DILocation(line: 1502, column: 5, scope: !2097)
!2222 = !DILocation(line: 1505, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1505, column: 7)
!2224 = !DILocation(line: 1505, column: 8, scope: !2223)
!2225 = !DILocation(line: 1505, column: 31, scope: !2223)
!2226 = !DILocation(line: 1505, column: 47, scope: !2223)
!2227 = !DILocation(line: 1505, column: 44, scope: !2223)
!2228 = !DILocation(line: 1505, column: 84, scope: !2223)
!2229 = !DILocation(line: 1509, column: 18, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 1509, column: 5)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1509, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 1506, column: 3)
!2233 = !DILocation(line: 1509, column: 5, scope: !2231)
!2234 = !DILocation(line: 1509, column: 58, scope: !2230)
!2235 = !DILocation(line: 1511, column: 11, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 1511, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 1510, column: 5)
!2238 = !DILocation(line: 1511, column: 47, scope: !2236)
!2239 = !DILocation(line: 1511, column: 45, scope: !2236)
!2240 = distinct !{!2240, !2233, !2241, !2242, !2243}
!2241 = !DILocation(line: 1513, column: 5, scope: !2231)
!2242 = !{!"llvm.loop.isvectorized", i32 1}
!2243 = !{!"llvm.loop.unroll.runtime.disable"}
!2244 = !DILocation(line: 1511, column: 11, scope: !2237)
!2245 = distinct !{!2245, !2233, !2241, !2243, !2242}
!2246 = !DILocation(line: 1514, column: 10, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 1514, column: 9)
!2248 = !DILocation(line: 1514, column: 9, scope: !2232)
!2249 = !DILocation(line: 1516, column: 15, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 1515, column: 5)
!2251 = !DILocation(line: 1517, column: 42, scope: !2250)
!2252 = !DILocation(line: 1517, column: 41, scope: !2250)
!2253 = !DILocation(line: 1518, column: 14, scope: !2250)
!2254 = !DILocation(line: 1518, column: 7, scope: !2250)
!2255 = !DILocation(line: 1518, column: 41, scope: !2250)
!2256 = !DILocation(line: 1523, column: 68, scope: !1996)
!2257 = !DILocation(line: 1523, column: 61, scope: !1996)
!2258 = !DILocation(line: 1519, column: 5, scope: !2250)
!2259 = !DILocation(line: 1523, column: 84, scope: !1996)
!2260 = !DILocation(line: 1523, column: 115, scope: !1996)
!2261 = !DILocalVariable(name: "a", arg: 1, scope: !2262, file: !236, line: 42, type: !18)
!2262 = distinct !DISubprogram(name: "imin", scope: !236, file: !236, line: 42, type: !2263, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!18, !18, !18}
!2265 = !{!2261, !2266}
!2266 = !DILocalVariable(name: "b", arg: 2, scope: !2262, file: !236, line: 42, type: !18)
!2267 = !DILocation(line: 0, scope: !2262, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 1523, column: 55, scope: !1996)
!2269 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !2268)
!2270 = !DILocation(line: 1523, column: 41, scope: !1996)
!2271 = !DILocation(line: 1523, column: 39, scope: !1996)
!2272 = !DILocation(line: 1524, column: 68, scope: !1996)
!2273 = !DILocation(line: 1524, column: 61, scope: !1996)
!2274 = !DILocation(line: 1524, column: 115, scope: !1996)
!2275 = !DILocation(line: 0, scope: !2262, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 1524, column: 55, scope: !1996)
!2277 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !2276)
!2278 = !DILocation(line: 1524, column: 41, scope: !1996)
!2279 = !DILocation(line: 1524, column: 39, scope: !1996)
!2280 = !DILocation(line: 1526, column: 10, scope: !1996)
!2281 = !DILocation(line: 1526, column: 3, scope: !1996)
!2282 = !DILocation(line: 1526, column: 39, scope: !1996)
!2283 = !DILocation(line: 1528, column: 17, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1528, column: 3)
!2285 = !DILocation(line: 1528, column: 10, scope: !2284)
!2286 = !DILocation(line: 1528, column: 33, scope: !2284)
!2287 = !DILocation(line: 1528, column: 48, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !2, line: 1528, column: 3)
!2289 = !DILocation(line: 1528, column: 3, scope: !2284)
!2290 = !DILocation(line: 1530, column: 12, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 1529, column: 3)
!2292 = !DILocation(line: 1530, column: 5, scope: !2291)
!2293 = !DILocation(line: 1530, column: 28, scope: !2291)
!2294 = !DILocation(line: 1530, column: 40, scope: !2291)
!2295 = !DILocation(line: 1528, column: 69, scope: !2288)
!2296 = distinct !{!2296, !2289, !2297}
!2297 = !DILocation(line: 1531, column: 3, scope: !2284)
!2298 = !DILocation(line: 1532, column: 17, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1532, column: 3)
!2300 = !DILocation(line: 1532, column: 10, scope: !2299)
!2301 = !DILocation(line: 1532, column: 48, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 1532, column: 3)
!2303 = !DILocation(line: 1532, column: 3, scope: !2299)
!2304 = !DILocation(line: 1534, column: 12, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 1533, column: 3)
!2306 = !DILocation(line: 1534, column: 5, scope: !2305)
!2307 = !DILocation(line: 1534, column: 40, scope: !2305)
!2308 = !DILocation(line: 1532, column: 69, scope: !2302)
!2309 = distinct !{!2309, !2303, !2310}
!2310 = !DILocation(line: 1535, column: 3, scope: !2299)
!2311 = !DILocation(line: 1536, column: 1, scope: !1996)
!2312 = !DISubprogram(name: "qsort", scope: !1509, file: !1509, line: 838, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !82, !1512, !1512, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1509, line: 816, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!18, !2319, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2321 = distinct !DISubprogram(name: "compare_pic_by_pic_num_desc", scope: !2, file: !2, line: 989, type: !2317, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325, !2326}
!2323 = !DILocalVariable(name: "arg1", arg: 1, scope: !2321, file: !2, line: 989, type: !2319)
!2324 = !DILocalVariable(name: "arg2", arg: 2, scope: !2321, file: !2, line: 989, type: !2319)
!2325 = !DILocalVariable(name: "pic_num1", scope: !2321, file: !2, line: 991, type: !18)
!2326 = !DILocalVariable(name: "pic_num2", scope: !2321, file: !2, line: 992, type: !18)
!2327 = !DILocation(line: 0, scope: !2321)
!2328 = !DILocation(line: 991, column: 19, scope: !2321)
!2329 = !DILocation(line: 991, column: 46, scope: !2321)
!2330 = !DILocation(line: 992, column: 19, scope: !2321)
!2331 = !DILocation(line: 992, column: 46, scope: !2321)
!2332 = !DILocation(line: 994, column: 16, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 994, column: 7)
!2334 = !DILocation(line: 994, column: 7, scope: !2321)
!2335 = !DILocation(line: 1000, column: 1, scope: !2321)
!2336 = distinct !DISubprogram(name: "compare_pic_by_poc_desc", scope: !2, file: !2, line: 1050, type: !2317, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2337)
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "arg1", arg: 1, scope: !2336, file: !2, line: 1050, type: !2319)
!2339 = !DILocalVariable(name: "arg2", arg: 2, scope: !2336, file: !2, line: 1050, type: !2319)
!2340 = !DILocalVariable(name: "poc1", scope: !2336, file: !2, line: 1052, type: !18)
!2341 = !DILocalVariable(name: "poc2", scope: !2336, file: !2, line: 1053, type: !18)
!2342 = !DILocation(line: 0, scope: !2336)
!2343 = !DILocation(line: 1052, column: 15, scope: !2336)
!2344 = !DILocation(line: 1052, column: 42, scope: !2336)
!2345 = !DILocation(line: 1053, column: 15, scope: !2336)
!2346 = !DILocation(line: 1053, column: 42, scope: !2336)
!2347 = !DILocation(line: 1055, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 1055, column: 7)
!2349 = !DILocation(line: 1055, column: 7, scope: !2336)
!2350 = !DILocation(line: 1061, column: 1, scope: !2336)
!2351 = distinct !DISubprogram(name: "compare_pic_by_poc_asc", scope: !2, file: !2, line: 1029, type: !2317, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2352)
!2352 = !{!2353, !2354, !2355, !2356}
!2353 = !DILocalVariable(name: "arg1", arg: 1, scope: !2351, file: !2, line: 1029, type: !2319)
!2354 = !DILocalVariable(name: "arg2", arg: 2, scope: !2351, file: !2, line: 1029, type: !2319)
!2355 = !DILocalVariable(name: "poc1", scope: !2351, file: !2, line: 1031, type: !18)
!2356 = !DILocalVariable(name: "poc2", scope: !2351, file: !2, line: 1032, type: !18)
!2357 = !DILocation(line: 0, scope: !2351)
!2358 = !DILocation(line: 1031, column: 15, scope: !2351)
!2359 = !DILocation(line: 1031, column: 42, scope: !2351)
!2360 = !DILocation(line: 1032, column: 15, scope: !2351)
!2361 = !DILocation(line: 1032, column: 42, scope: !2351)
!2362 = !DILocation(line: 1034, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 1034, column: 8)
!2364 = !DILocation(line: 1034, column: 8, scope: !2351)
!2365 = !DILocation(line: 1040, column: 1, scope: !2351)
!2366 = distinct !DISubprogram(name: "compare_pic_by_lt_pic_num_asc", scope: !2, file: !2, line: 1009, type: !2317, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2367)
!2367 = !{!2368, !2369, !2370, !2371}
!2368 = !DILocalVariable(name: "arg1", arg: 1, scope: !2366, file: !2, line: 1009, type: !2319)
!2369 = !DILocalVariable(name: "arg2", arg: 2, scope: !2366, file: !2, line: 1009, type: !2319)
!2370 = !DILocalVariable(name: "long_term_pic_num1", scope: !2366, file: !2, line: 1011, type: !18)
!2371 = !DILocalVariable(name: "long_term_pic_num2", scope: !2366, file: !2, line: 1012, type: !18)
!2372 = !DILocation(line: 0, scope: !2366)
!2373 = !DILocation(line: 1011, column: 29, scope: !2366)
!2374 = !DILocation(line: 1011, column: 56, scope: !2366)
!2375 = !DILocation(line: 1012, column: 29, scope: !2366)
!2376 = !DILocation(line: 1012, column: 56, scope: !2366)
!2377 = !DILocation(line: 1013, column: 27, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 1013, column: 8)
!2379 = !DILocation(line: 1013, column: 8, scope: !2366)
!2380 = !DILocation(line: 1020, column: 1, scope: !2366)
!2381 = distinct !DISubprogram(name: "get_pic_from_dpb", scope: !2, file: !2, line: 1549, type: !2382, scopeLine: 1550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!91, !1806, !18, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392}
!2386 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !2381, file: !2, line: 1549, type: !1806)
!2387 = !DILocalVariable(name: "missingpoc", arg: 2, scope: !2381, file: !2, line: 1549, type: !18)
!2388 = !DILocalVariable(name: "pos", arg: 3, scope: !2381, file: !2, line: 1549, type: !2384)
!2389 = !DILocalVariable(name: "p_Vid", scope: !2381, file: !2, line: 1551, type: !262)
!2390 = !DILocalVariable(name: "used_size", scope: !2381, file: !2, line: 1552, type: !18)
!2391 = !DILocalVariable(name: "i", scope: !2381, file: !2, line: 1553, type: !18)
!2392 = !DILocalVariable(name: "concealfrom", scope: !2381, file: !2, line: 1553, type: !18)
!2393 = !DILocation(line: 0, scope: !2381)
!2394 = !DILocation(line: 1551, column: 35, scope: !2381)
!2395 = !DILocation(line: 1552, column: 26, scope: !2381)
!2396 = !DILocation(line: 1555, column: 13, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 1555, column: 6)
!2398 = !DILocation(line: 1555, column: 6, scope: !2381)
!2399 = !DILocation(line: 1556, column: 39, scope: !2397)
!2400 = !DILocation(line: 1556, column: 30, scope: !2397)
!2401 = !DILocation(line: 1556, column: 5, scope: !2397)
!2402 = !DILocation(line: 1558, column: 39, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 1557, column: 12)
!2404 = !DILocation(line: 1558, column: 30, scope: !2403)
!2405 = !DILocation(line: 1558, column: 5, scope: !2403)
!2406 = !DILocation(line: 1560, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 1560, column: 3)
!2408 = !DILocation(line: 1560, scope: !2407)
!2409 = !DILocation(line: 1560, column: 24, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 1560, column: 3)
!2411 = !DILocation(line: 1560, column: 3, scope: !2407)
!2412 = !DILocation(line: 1562, column: 15, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 1562, column: 8)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 1561, column: 3)
!2415 = !DILocation(line: 1562, column: 8, scope: !2413)
!2416 = !DILocation(line: 1562, column: 22, scope: !2413)
!2417 = !DILocation(line: 1562, column: 26, scope: !2413)
!2418 = !DILocation(line: 1562, column: 8, scope: !2414)
!2419 = distinct !{!2419, !2411, !2420}
!2420 = !DILocation(line: 1567, column: 3, scope: !2407)
!2421 = !DILocation(line: 1564, column: 12, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2413, file: !2, line: 1563, column: 5)
!2423 = !DILocation(line: 1565, column: 21, scope: !2422)
!2424 = !DILocation(line: 1565, column: 14, scope: !2422)
!2425 = !DILocation(line: 1565, column: 28, scope: !2422)
!2426 = !DILocation(line: 1565, column: 7, scope: !2422)
!2427 = !DILocation(line: 1570, column: 1, scope: !2381)
!2428 = distinct !DISubprogram(name: "comp", scope: !2, file: !2, line: 1581, type: !2317, scopeLine: 1582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2429)
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "i", arg: 1, scope: !2428, file: !2, line: 1581, type: !2319)
!2431 = !DILocalVariable(name: "j", arg: 2, scope: !2428, file: !2, line: 1581, type: !2319)
!2432 = !DILocation(line: 0, scope: !2428)
!2433 = !DILocation(line: 1583, column: 10, scope: !2428)
!2434 = !DILocation(line: 1583, column: 22, scope: !2428)
!2435 = !DILocation(line: 1583, column: 20, scope: !2428)
!2436 = !DILocation(line: 1583, column: 3, scope: !2428)
!2437 = distinct !DISubprogram(name: "init_node", scope: !2, file: !2, line: 1595, type: !2438, scopeLine: 1596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!86, !91, !18}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "picture", arg: 1, scope: !2437, file: !2, line: 1595, type: !91)
!2442 = !DILocalVariable(name: "missingpoc", arg: 2, scope: !2437, file: !2, line: 1595, type: !18)
!2443 = !DILocalVariable(name: "ptr", scope: !2437, file: !2, line: 1597, type: !86)
!2444 = !DILocation(line: 0, scope: !2437)
!2445 = !DILocation(line: 1599, column: 37, scope: !2437)
!2446 = !DILocation(line: 1601, column: 11, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 1601, column: 7)
!2448 = !DILocation(line: 1601, column: 7, scope: !2437)
!2449 = !DILocation(line: 1604, column: 18, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 1603, column: 8)
!2451 = !DILocation(line: 1605, column: 10, scope: !2450)
!2452 = !DILocation(line: 1605, column: 22, scope: !2450)
!2453 = !DILocation(line: 1607, column: 5, scope: !2450)
!2454 = !DILocation(line: 1609, column: 1, scope: !2437)
!2455 = !DISubprogram(name: "calloc", scope: !1509, file: !1509, line: 543, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!82, !1512, !1512}
!2458 = distinct !DISubprogram(name: "print_node", scope: !2, file: !2, line: 1619, type: !2459, scopeLine: 1620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !86}
!2461 = !{!2462}
!2462 = !DILocalVariable(name: "ptr", arg: 1, scope: !2458, file: !2, line: 1619, type: !86)
!2463 = !DILocation(line: 0, scope: !2458)
!2464 = !DILocation(line: 1621, column: 35, scope: !2458)
!2465 = !DILocation(line: 1621, column: 3, scope: !2458)
!2466 = !DILocation(line: 1622, column: 1, scope: !2458)
!2467 = !DISubprogram(name: "printf", scope: !2468, file: !2468, line: 356, type: !2469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2468 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!18, !2471, null}
!2471 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2472)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!2474 = distinct !DISubprogram(name: "print_list", scope: !2, file: !2, line: 1633, type: !2459, scopeLine: 1634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2475)
!2475 = !{!2476}
!2476 = !DILocalVariable(name: "ptr", arg: 1, scope: !2474, file: !2, line: 1633, type: !86)
!2477 = !DILocation(line: 0, scope: !2474)
!2478 = !DILocation(line: 1635, column: 14, scope: !2474)
!2479 = !DILocation(line: 1635, column: 3, scope: !2474)
!2480 = !DILocation(line: 0, scope: !2458, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1637, column: 5, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2474, file: !2, line: 1636, column: 3)
!2483 = !DILocation(line: 1621, column: 35, scope: !2458, inlinedAt: !2481)
!2484 = !DILocation(line: 1621, column: 3, scope: !2458, inlinedAt: !2481)
!2485 = !DILocation(line: 1638, column: 16, scope: !2482)
!2486 = distinct !{!2486, !2479, !2487}
!2487 = !DILocation(line: 1639, column: 3, scope: !2474)
!2488 = !DILocation(line: 1640, column: 1, scope: !2474)
!2489 = distinct !DISubprogram(name: "delete_list", scope: !2, file: !2, line: 1692, type: !2490, scopeLine: 1693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !262, !86}
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2489, file: !2, line: 1692, type: !262)
!2494 = !DILocalVariable(name: "ptr", arg: 2, scope: !2489, file: !2, line: 1692, type: !86)
!2495 = !DILocalVariable(name: "temp", scope: !2489, file: !2, line: 1694, type: !86)
!2496 = !DILocation(line: 0, scope: !2489)
!2497 = !DILocation(line: 1696, column: 14, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 1696, column: 7)
!2499 = !DILocation(line: 1696, column: 31, scope: !2498)
!2500 = !DILocation(line: 1696, column: 7, scope: !2489)
!2501 = !DILocation(line: 1698, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 1698, column: 7)
!2503 = !DILocation(line: 1698, column: 7, scope: !2489)
!2504 = !DILocation(line: 1701, column: 28, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 1699, column: 3)
!2506 = !DILocation(line: 1702, column: 3, scope: !2505)
!2507 = !DILocation(line: 0, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 1704, column: 3)
!2509 = !DILocation(line: 1707, column: 18, scope: !2508)
!2510 = !DILocation(line: 1707, column: 23, scope: !2508)
!2511 = !DILocation(line: 1707, column: 5, scope: !2508)
!2512 = distinct !{!2512, !2511, !2513}
!2513 = !DILocation(line: 1708, column: 20, scope: !2508)
!2514 = !DILocation(line: 1709, column: 12, scope: !2508)
!2515 = !DILocation(line: 1709, column: 28, scope: !2508)
!2516 = !DILocation(line: 1712, column: 14, scope: !2489)
!2517 = !DILocation(line: 1712, column: 3, scope: !2489)
!2518 = !DILocation(line: 1714, column: 17, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2489, file: !2, line: 1713, column: 3)
!2520 = !DILocation(line: 1715, column: 5, scope: !2519)
!2521 = distinct !{!2521, !2517, !2522}
!2522 = !DILocation(line: 1717, column: 3, scope: !2489)
!2523 = !DILocation(line: 1718, column: 1, scope: !2489)
!2524 = distinct !DISubprogram(name: "conceal_non_ref_pics", scope: !2, file: !2, line: 1731, type: !1956, scopeLine: 1732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2526 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !2524, file: !2, line: 1731, type: !1806)
!2527 = !DILocalVariable(name: "diff", arg: 2, scope: !2524, file: !2, line: 1731, type: !18)
!2528 = !DILocalVariable(name: "p_Vid", scope: !2524, file: !2, line: 1733, type: !262)
!2529 = !DILocalVariable(name: "missingpoc", scope: !2524, file: !2, line: 1734, type: !18)
!2530 = !DILocalVariable(name: "i", scope: !2524, file: !2, line: 1735, type: !42)
!2531 = !DILocalVariable(name: "pos", scope: !2524, file: !2, line: 1735, type: !42)
!2532 = !DILocalVariable(name: "conceal_from_picture", scope: !2524, file: !2, line: 1736, type: !91)
!2533 = !DILocalVariable(name: "conceal_to_picture", scope: !2524, file: !2, line: 1737, type: !91)
!2534 = !DILocalVariable(name: "concealment_ptr", scope: !2524, file: !2, line: 1738, type: !86)
!2535 = !DILocalVariable(name: "temp_used_size", scope: !2524, file: !2, line: 1739, type: !18)
!2536 = !DILocation(line: 0, scope: !2524)
!2537 = !DILocation(line: 1733, column: 35, scope: !2524)
!2538 = !DILocation(line: 1739, column: 31, scope: !2524)
!2539 = !DILocation(line: 1741, column: 23, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1741, column: 6)
!2541 = !DILocation(line: 1741, column: 6, scope: !2524)
!2542 = !DILocation(line: 1744, column: 16, scope: !2524)
!2543 = !DILocation(line: 1744, column: 36, scope: !2524)
!2544 = !DILocation(line: 1744, column: 29, scope: !2524)
!2545 = !DILocation(line: 1744, column: 3, scope: !2524)
!2546 = !DILocation(line: 1746, column: 20, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !2, line: 1746, column: 3)
!2548 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1746, column: 3)
!2549 = !DILocation(line: 1746, column: 12, scope: !2547)
!2550 = !DILocation(line: 1746, column: 3, scope: !2548)
!2551 = !DILocation(line: 1748, column: 22, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 1747, column: 3)
!2553 = !DILocation(line: 1749, column: 29, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2552, file: !2, line: 1749, column: 8)
!2555 = !DILocation(line: 1749, column: 9, scope: !2554)
!2556 = !DILocation(line: 1749, column: 35, scope: !2554)
!2557 = !DILocation(line: 1749, column: 33, scope: !2554)
!2558 = !DILocation(line: 1749, column: 67, scope: !2554)
!2559 = !DILocation(line: 1749, column: 58, scope: !2554)
!2560 = !DILocation(line: 1749, column: 8, scope: !2552)
!2561 = !DILocation(line: 1751, column: 73, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 1750, column: 5)
!2563 = !DILocation(line: 1751, column: 87, scope: !2562)
!2564 = !DILocation(line: 1751, column: 102, scope: !2562)
!2565 = !DILocation(line: 1751, column: 119, scope: !2562)
!2566 = !DILocation(line: 1751, column: 28, scope: !2562)
!2567 = !DILocation(line: 1753, column: 20, scope: !2562)
!2568 = !DILocation(line: 1753, column: 51, scope: !2562)
!2569 = !DILocation(line: 1753, column: 42, scope: !2562)
!2570 = !DILocation(line: 1757, column: 30, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2562, file: !2, line: 1757, column: 10)
!2572 = !DILocation(line: 1757, column: 21, scope: !2571)
!2573 = !DILocation(line: 1757, column: 10, scope: !2562)
!2574 = !DILocation(line: 1759, column: 37, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 1758, column: 7)
!2576 = !DILocation(line: 1763, column: 29, scope: !2575)
!2577 = !DILocation(line: 1763, column: 33, scope: !2575)
!2578 = !DILocation(line: 0, scope: !2381, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1764, column: 32, scope: !2575)
!2580 = !DILocation(line: 1551, column: 35, scope: !2381, inlinedAt: !2579)
!2581 = !DILocation(line: 1552, column: 26, scope: !2381, inlinedAt: !2579)
!2582 = !DILocation(line: 1555, column: 13, scope: !2397, inlinedAt: !2579)
!2583 = !DILocation(line: 1555, column: 6, scope: !2381, inlinedAt: !2579)
!2584 = !DILocation(line: 1556, column: 39, scope: !2397, inlinedAt: !2579)
!2585 = !DILocation(line: 1556, column: 30, scope: !2397, inlinedAt: !2579)
!2586 = !DILocation(line: 1556, column: 5, scope: !2397, inlinedAt: !2579)
!2587 = !DILocation(line: 1558, column: 39, scope: !2403, inlinedAt: !2579)
!2588 = !DILocation(line: 1558, column: 30, scope: !2403, inlinedAt: !2579)
!2589 = !DILocation(line: 1558, column: 5, scope: !2403, inlinedAt: !2579)
!2590 = !DILocation(line: 1560, column: 7, scope: !2407, inlinedAt: !2579)
!2591 = !DILocation(line: 1560, scope: !2407, inlinedAt: !2579)
!2592 = !DILocation(line: 1560, column: 24, scope: !2410, inlinedAt: !2579)
!2593 = !DILocation(line: 1560, column: 3, scope: !2407, inlinedAt: !2579)
!2594 = !DILocation(line: 1562, column: 15, scope: !2413, inlinedAt: !2579)
!2595 = !DILocation(line: 1562, column: 8, scope: !2413, inlinedAt: !2579)
!2596 = !DILocation(line: 1562, column: 22, scope: !2413, inlinedAt: !2579)
!2597 = !DILocation(line: 1562, column: 26, scope: !2413, inlinedAt: !2579)
!2598 = !DILocation(line: 1562, column: 8, scope: !2414, inlinedAt: !2579)
!2599 = distinct !{!2599, !2593, !2600}
!2600 = !DILocation(line: 1567, column: 3, scope: !2407, inlinedAt: !2579)
!2601 = !DILocation(line: 1565, column: 28, scope: !2422, inlinedAt: !2579)
!2602 = !DILocation(line: 1565, column: 7, scope: !2422, inlinedAt: !2579)
!2603 = !DILocation(line: 1768, column: 32, scope: !2575)
!2604 = !DILocation(line: 1768, column: 26, scope: !2575)
!2605 = !DILocation(line: 1770, column: 57, scope: !2575)
!2606 = !DILocation(line: 1770, column: 67, scope: !2575)
!2607 = !DILocation(line: 1770, column: 33, scope: !2575)
!2608 = !DILocation(line: 0, scope: !1961, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1772, column: 9, scope: !2575)
!2610 = !DILocation(line: 1388, column: 35, scope: !1961, inlinedAt: !2609)
!2611 = !DILocation(line: 1391, column: 26, scope: !1972, inlinedAt: !2609)
!2612 = !DILocation(line: 1391, column: 17, scope: !1972, inlinedAt: !2609)
!2613 = !DILocation(line: 1391, column: 3, scope: !1973, inlinedAt: !2609)
!2614 = !DILocation(line: 1393, column: 16, scope: !1977, inlinedAt: !2609)
!2615 = !DILocation(line: 1393, column: 9, scope: !1977, inlinedAt: !2609)
!2616 = !DILocation(line: 1393, column: 23, scope: !1977, inlinedAt: !2609)
!2617 = !DILocation(line: 1393, column: 9, scope: !1978, inlinedAt: !2609)
!2618 = !DILocation(line: 1395, column: 14, scope: !1983, inlinedAt: !2609)
!2619 = !DILocation(line: 1395, column: 22, scope: !1983, inlinedAt: !2609)
!2620 = !DILocation(line: 1395, column: 7, scope: !1983, inlinedAt: !2609)
!2621 = !DILocation(line: 1395, column: 26, scope: !1983, inlinedAt: !2609)
!2622 = !DILocation(line: 1396, column: 5, scope: !1983, inlinedAt: !2609)
!2623 = !DILocation(line: 1391, column: 38, scope: !1972, inlinedAt: !2609)
!2624 = distinct !{!2624, !2613, !2625}
!2625 = !DILocation(line: 1397, column: 3, scope: !1973, inlinedAt: !2609)
!2626 = !DILocation(line: 1399, column: 40, scope: !1961, inlinedAt: !2609)
!2627 = !DILocation(line: 1399, column: 52, scope: !1961, inlinedAt: !2609)
!2628 = !DILocation(line: 1399, column: 31, scope: !1961, inlinedAt: !2609)
!2629 = !DILocation(line: 1773, column: 35, scope: !2575)
!2630 = !DILocation(line: 1774, column: 9, scope: !2575)
!2631 = !DILocation(line: 0, scope: !2437, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1775, column: 27, scope: !2575)
!2633 = !DILocation(line: 1599, column: 37, scope: !2437, inlinedAt: !2632)
!2634 = !DILocation(line: 1601, column: 11, scope: !2447, inlinedAt: !2632)
!2635 = !DILocation(line: 1601, column: 7, scope: !2437, inlinedAt: !2632)
!2636 = !DILocation(line: 1604, column: 18, scope: !2450, inlinedAt: !2632)
!2637 = !DILocation(line: 1605, column: 10, scope: !2450, inlinedAt: !2632)
!2638 = !DILocation(line: 1605, column: 22, scope: !2450, inlinedAt: !2632)
!2639 = !DILocation(line: 1607, column: 5, scope: !2450, inlinedAt: !2632)
!2640 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2641, file: !2, line: 1651, type: !262)
!2641 = distinct !DISubprogram(name: "add_node", scope: !2, file: !2, line: 1651, type: !2490, scopeLine: 1652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2642)
!2642 = !{!2640, !2643}
!2643 = !DILocalVariable(name: "concealment_new", arg: 2, scope: !2641, file: !2, line: 1651, type: !86)
!2644 = !DILocation(line: 0, scope: !2641, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1776, column: 9, scope: !2575)
!2646 = !DILocation(line: 1653, column: 14, scope: !2647, inlinedAt: !2645)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !2, line: 1653, column: 7)
!2648 = !DILocation(line: 1653, column: 31, scope: !2647, inlinedAt: !2645)
!2649 = !DILocation(line: 1653, column: 7, scope: !2641, inlinedAt: !2645)
!2650 = !DILocation(line: 1658, column: 10, scope: !2641, inlinedAt: !2645)
!2651 = !DILocation(line: 1658, column: 27, scope: !2641, inlinedAt: !2645)
!2652 = !DILocation(line: 1660, column: 1, scope: !2641, inlinedAt: !2645)
!2653 = !DILocation(line: 1779, column: 7, scope: !2575)
!2654 = !DILocation(line: 1746, column: 24, scope: !2547)
!2655 = distinct !{!2655, !2550, !2656}
!2656 = !DILocation(line: 1781, column: 3, scope: !2548)
!2657 = !DILocation(line: 1785, column: 20, scope: !2524)
!2658 = !DILocation(line: 1786, column: 1, scope: !2524)
!2659 = distinct !DISubprogram(name: "copy_to_conceal", scope: !2, file: !2, line: 1124, type: !2660, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !91, !91, !262}
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2663 = !DILocalVariable(name: "src", arg: 1, scope: !2659, file: !2, line: 1124, type: !91)
!2664 = !DILocalVariable(name: "dst", arg: 2, scope: !2659, file: !2, line: 1124, type: !91)
!2665 = !DILocalVariable(name: "p_Vid", arg: 3, scope: !2659, file: !2, line: 1124, type: !262)
!2666 = !DILocalVariable(name: "i", scope: !2659, file: !2, line: 1126, type: !18)
!2667 = !DILocalVariable(name: "mv", scope: !2659, file: !2, line: 1127, type: !293)
!2668 = !DILocalVariable(name: "multiplier", scope: !2659, file: !2, line: 1128, type: !18)
!2669 = !DILocalVariable(name: "predMB", scope: !2659, file: !2, line: 1129, type: !77)
!2670 = !DILocalVariable(name: "storeYUV", scope: !2659, file: !2, line: 1129, type: !77)
!2671 = !DILocalVariable(name: "j", scope: !2659, file: !2, line: 1130, type: !18)
!2672 = !DILocalVariable(name: "y", scope: !2659, file: !2, line: 1130, type: !18)
!2673 = !DILocalVariable(name: "x", scope: !2659, file: !2, line: 1130, type: !18)
!2674 = !DILocalVariable(name: "mb_height", scope: !2659, file: !2, line: 1130, type: !18)
!2675 = !DILocalVariable(name: "mb_width", scope: !2659, file: !2, line: 1130, type: !18)
!2676 = !DILocalVariable(name: "ii", scope: !2659, file: !2, line: 1130, type: !18)
!2677 = !DILocalVariable(name: "jj", scope: !2659, file: !2, line: 1130, type: !18)
!2678 = !DILocalVariable(name: "uv", scope: !2659, file: !2, line: 1131, type: !18)
!2679 = !DILocalVariable(name: "mm", scope: !2659, file: !2, line: 1132, type: !18)
!2680 = !DILocalVariable(name: "nn", scope: !2659, file: !2, line: 1132, type: !18)
!2681 = !DILocalVariable(name: "scale", scope: !2659, file: !2, line: 1133, type: !18)
!2682 = !DILocalVariable(name: "dec_picture", scope: !2659, file: !2, line: 1134, type: !91)
!2683 = !DILocalVariable(name: "current_mb_nr", scope: !2659, file: !2, line: 1137, type: !18)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 0, scope: !2659)
!2686 = !DILocation(line: 1139, column: 29, scope: !2659)
!2687 = !DILocation(line: 1139, column: 8, scope: !2659)
!2688 = !DILocation(line: 1139, column: 22, scope: !2659)
!2689 = !DILocation(line: 1141, column: 46, scope: !2659)
!2690 = !DILocation(line: 1141, column: 26, scope: !2659)
!2691 = !DILocation(line: 1141, column: 37, scope: !2659)
!2692 = !DILocation(line: 1141, column: 8, scope: !2659)
!2693 = !DILocation(line: 1141, column: 19, scope: !2659)
!2694 = !DILocation(line: 1143, column: 8, scope: !2659)
!2695 = !DILocation(line: 1143, column: 17, scope: !2659)
!2696 = !DILocation(line: 1145, column: 44, scope: !2659)
!2697 = !DILocation(line: 1145, column: 8, scope: !2659)
!2698 = !DILocation(line: 1145, column: 37, scope: !2659)
!2699 = !DILocation(line: 1146, column: 40, scope: !2659)
!2700 = !DILocation(line: 1146, column: 8, scope: !2659)
!2701 = !DILocation(line: 1146, column: 33, scope: !2659)
!2702 = !DILocation(line: 1147, column: 47, scope: !2659)
!2703 = !DILocation(line: 1147, column: 79, scope: !2659)
!2704 = !DILocation(line: 1147, column: 8, scope: !2659)
!2705 = !DILocation(line: 1147, column: 40, scope: !2659)
!2706 = !DILocation(line: 1148, column: 33, scope: !2659)
!2707 = !DILocation(line: 1148, column: 8, scope: !2659)
!2708 = !DILocation(line: 1148, column: 26, scope: !2659)
!2709 = !DILocation(line: 1149, column: 35, scope: !2659)
!2710 = !DILocation(line: 1149, column: 8, scope: !2659)
!2711 = !DILocation(line: 1149, column: 28, scope: !2659)
!2712 = !DILocation(line: 1150, column: 35, scope: !2659)
!2713 = !DILocation(line: 1150, column: 8, scope: !2659)
!2714 = !DILocation(line: 1150, column: 28, scope: !2659)
!2715 = !DILocation(line: 1151, column: 47, scope: !2659)
!2716 = !DILocation(line: 1151, column: 8, scope: !2659)
!2717 = !DILocation(line: 1151, column: 40, scope: !2659)
!2718 = !DILocation(line: 1152, column: 48, scope: !2659)
!2719 = !DILocation(line: 1152, column: 8, scope: !2659)
!2720 = !DILocation(line: 1152, column: 41, scope: !2659)
!2721 = !DILocation(line: 1153, column: 49, scope: !2659)
!2722 = !DILocation(line: 1153, column: 8, scope: !2659)
!2723 = !DILocation(line: 1153, column: 42, scope: !2659)
!2724 = !DILocation(line: 1154, column: 46, scope: !2659)
!2725 = !DILocation(line: 1154, column: 8, scope: !2659)
!2726 = !DILocation(line: 1154, column: 39, scope: !2659)
!2727 = !DILocation(line: 1155, column: 18, scope: !2659)
!2728 = !DILocation(line: 1155, column: 8, scope: !2659)
!2729 = !DILocation(line: 1155, column: 11, scope: !2659)
!2730 = !DILocation(line: 1156, column: 30, scope: !2659)
!2731 = !DILocation(line: 1156, column: 8, scope: !2659)
!2732 = !DILocation(line: 1156, column: 23, scope: !2659)
!2733 = !DILocation(line: 1161, column: 14, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2659, file: !2, line: 1161, column: 7)
!2735 = !DILocation(line: 1161, column: 26, scope: !2734)
!2736 = !DILocation(line: 1161, column: 7, scope: !2659)
!2737 = !DILocation(line: 1165, column: 31, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1162, column: 3)
!2739 = !DILocation(line: 1165, column: 10, scope: !2738)
!2740 = !DILocation(line: 1165, column: 24, scope: !2738)
!2741 = !DILocation(line: 1166, column: 30, scope: !2738)
!2742 = !DILocation(line: 1166, column: 23, scope: !2738)
!2743 = !DILocation(line: 1168, column: 23, scope: !2738)
!2744 = !DILocation(line: 1168, column: 34, scope: !2738)
!2745 = !DILocation(line: 1168, column: 46, scope: !2738)
!2746 = !DILocation(line: 1168, column: 57, scope: !2738)
!2747 = !DILocation(line: 1168, column: 71, scope: !2738)
!2748 = !DILocation(line: 1168, column: 85, scope: !2738)
!2749 = !DILocation(line: 1168, column: 100, scope: !2738)
!2750 = !DILocation(line: 1168, column: 117, scope: !2738)
!2751 = !DILocalVariable(name: "inputY", arg: 1, scope: !2752, file: !2, line: 1070, type: !132)
!2752 = distinct !DISubprogram(name: "CopyImgData", scope: !2, file: !2, line: 1070, type: !2753, scopeLine: 1072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !132, !134, !132, !134, !18, !18, !18, !18}
!2755 = !{!2751, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2756 = !DILocalVariable(name: "inputUV", arg: 2, scope: !2752, file: !2, line: 1070, type: !134)
!2757 = !DILocalVariable(name: "outputY", arg: 3, scope: !2752, file: !2, line: 1070, type: !132)
!2758 = !DILocalVariable(name: "outputUV", arg: 4, scope: !2752, file: !2, line: 1070, type: !134)
!2759 = !DILocalVariable(name: "img_width", arg: 5, scope: !2752, file: !2, line: 1071, type: !18)
!2760 = !DILocalVariable(name: "img_height", arg: 6, scope: !2752, file: !2, line: 1071, type: !18)
!2761 = !DILocalVariable(name: "img_width_cr", arg: 7, scope: !2752, file: !2, line: 1071, type: !18)
!2762 = !DILocalVariable(name: "img_height_cr", arg: 8, scope: !2752, file: !2, line: 1071, type: !18)
!2763 = !DILocalVariable(name: "x", scope: !2752, file: !2, line: 1073, type: !18)
!2764 = !DILocalVariable(name: "y", scope: !2752, file: !2, line: 1073, type: !18)
!2765 = !DILocation(line: 0, scope: !2752, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1168, column: 5, scope: !2738)
!2767 = !DILocation(line: 1075, column: 14, scope: !2768, inlinedAt: !2766)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 1075, column: 3)
!2769 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1075, column: 3)
!2770 = !DILocation(line: 1075, column: 3, scope: !2769, inlinedAt: !2766)
!2771 = !DILocation(line: 1076, column: 5, scope: !2772, inlinedAt: !2766)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !2, line: 1076, column: 5)
!2773 = !DILocation(line: 1077, column: 23, scope: !2774, inlinedAt: !2766)
!2774 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1076, column: 5)
!2775 = !DILocation(line: 1077, column: 7, scope: !2774, inlinedAt: !2766)
!2776 = !DILocation(line: 1077, column: 21, scope: !2774, inlinedAt: !2766)
!2777 = !DILocation(line: 1076, column: 29, scope: !2774, inlinedAt: !2766)
!2778 = distinct !{!2778, !2771, !2779}
!2779 = !DILocation(line: 1077, column: 34, scope: !2772, inlinedAt: !2766)
!2780 = distinct !{!2780, !2781}
!2781 = !{!"llvm.loop.unroll.disable"}
!2782 = !DILocation(line: 1075, column: 28, scope: !2768, inlinedAt: !2766)
!2783 = distinct !{!2783, !2770, !2784}
!2784 = !DILocation(line: 1077, column: 34, scope: !2769, inlinedAt: !2766)
!2785 = !DILocation(line: 1079, column: 14, scope: !2786, inlinedAt: !2766)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 1079, column: 3)
!2787 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1079, column: 3)
!2788 = !DILocation(line: 1079, column: 3, scope: !2787, inlinedAt: !2766)
!2789 = !DILocation(line: 1080, column: 5, scope: !2790, inlinedAt: !2766)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !2, line: 1080, column: 5)
!2791 = !DILocation(line: 1082, column: 27, scope: !2792, inlinedAt: !2766)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1081, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 1080, column: 5)
!2794 = !DILocation(line: 1082, column: 7, scope: !2792, inlinedAt: !2766)
!2795 = !DILocation(line: 1082, column: 25, scope: !2792, inlinedAt: !2766)
!2796 = !DILocation(line: 1083, column: 27, scope: !2792, inlinedAt: !2766)
!2797 = !DILocation(line: 1083, column: 7, scope: !2792, inlinedAt: !2766)
!2798 = !DILocation(line: 1083, column: 25, scope: !2792, inlinedAt: !2766)
!2799 = !DILocation(line: 1080, column: 32, scope: !2793, inlinedAt: !2766)
!2800 = !DILocation(line: 1080, column: 16, scope: !2793, inlinedAt: !2766)
!2801 = distinct !{!2801, !2789, !2802}
!2802 = !DILocation(line: 1084, column: 5, scope: !2790, inlinedAt: !2766)
!2803 = !DILocation(line: 1079, column: 31, scope: !2786, inlinedAt: !2766)
!2804 = distinct !{!2804, !2788, !2805}
!2805 = !DILocation(line: 1084, column: 5, scope: !2787, inlinedAt: !2766)
!2806 = !DILocation(line: 1172, column: 14, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2659, file: !2, line: 1172, column: 7)
!2808 = !DILocation(line: 1172, column: 26, scope: !2807)
!2809 = !DILocation(line: 1172, column: 7, scope: !2659)
!2810 = !DILocation(line: 1174, column: 22, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 1174, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 1173, column: 3)
!2813 = !DILocation(line: 1174, column: 40, scope: !2811)
!2814 = !DILocation(line: 1174, column: 9, scope: !2812)
!2815 = !DILocation(line: 1176, column: 52, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 1175, column: 5)
!2817 = !DILocation(line: 1176, column: 72, scope: !2816)
!2818 = !DILocation(line: 1176, column: 64, scope: !2816)
!2819 = !DILocation(line: 1176, column: 87, scope: !2816)
!2820 = !DILocation(line: 1176, column: 42, scope: !2816)
!2821 = !DILocation(line: 1176, column: 38, scope: !2816)
!2822 = !DILocation(line: 1176, column: 92, scope: !2816)
!2823 = !DILocation(line: 1176, column: 29, scope: !2816)
!2824 = !DILocation(line: 1177, column: 5, scope: !2816)
!2825 = !DILocation(line: 1180, column: 29, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 1179, column: 5)
!2827 = !DILocation(line: 0, scope: !2811)
!2828 = !DILocation(line: 1183, column: 12, scope: !2812)
!2829 = !DILocation(line: 1183, column: 20, scope: !2812)
!2830 = !DILocation(line: 1185, column: 31, scope: !2812)
!2831 = !DILocation(line: 1185, column: 10, scope: !2812)
!2832 = !DILocation(line: 1185, column: 24, scope: !2812)
!2833 = !DILocation(line: 1186, column: 30, scope: !2812)
!2834 = !DILocation(line: 1186, column: 23, scope: !2812)
!2835 = !DILocation(line: 1188, column: 36, scope: !2812)
!2836 = !DILocation(line: 1189, column: 21, scope: !2812)
!2837 = !DILocation(line: 1189, column: 40, scope: !2812)
!2838 = !DILocation(line: 1189, column: 13, scope: !2812)
!2839 = !DILocation(line: 1191, column: 8, scope: !2812)
!2840 = !DILocation(line: 1192, column: 48, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 1191, column: 8)
!2842 = !DILocation(line: 1192, column: 60, scope: !2841)
!2843 = !DILocation(line: 1192, column: 79, scope: !2841)
!2844 = !DILocation(line: 1192, column: 72, scope: !2841)
!2845 = !DILocation(line: 1192, column: 95, scope: !2841)
!2846 = !DILocation(line: 1192, column: 7, scope: !2841)
!2847 = !DILocation(line: 1194, column: 25, scope: !2841)
!2848 = !DILocation(line: 1194, column: 18, scope: !2841)
!2849 = !DILocation(line: 1194, column: 7, scope: !2841)
!2850 = !DILocation(line: 1198, column: 14, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 1198, column: 5)
!2852 = distinct !DILexicalBlock(scope: !2812, file: !2, line: 1198, column: 5)
!2853 = !DILocation(line: 1198, column: 5, scope: !2852)
!2854 = !DILocation(line: 1201, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !2, line: 1201, column: 7)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 1199, column: 5)
!2857 = !DILocation(line: 1205, column: 22, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !2, line: 1202, column: 7)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1201, column: 7)
!2860 = !DILocation(line: 1205, column: 17, scope: !2858)
!2861 = !DILocation(line: 1205, column: 36, scope: !2858)
!2862 = !DILocation(line: 1205, column: 47, scope: !2858)
!2863 = !DILocation(line: 1205, column: 52, scope: !2858)
!2864 = !DILocation(line: 1206, column: 47, scope: !2858)
!2865 = !DILocation(line: 1206, column: 17, scope: !2858)
!2866 = !DILocation(line: 1206, column: 52, scope: !2858)
!2867 = !DILocation(line: 1207, column: 36, scope: !2858)
!2868 = !DILocation(line: 1207, column: 17, scope: !2858)
!2869 = !DILocation(line: 1209, column: 12, scope: !2858)
!2870 = !DILocation(line: 1212, column: 46, scope: !2858)
!2871 = !DILocation(line: 1212, column: 14, scope: !2858)
!2872 = !DILocation(line: 1212, column: 9, scope: !2858)
!2873 = !DILocation(line: 1212, column: 28, scope: !2858)
!2874 = !DILocation(line: 1212, column: 44, scope: !2858)
!2875 = !DILocation(line: 1213, column: 46, scope: !2858)
!2876 = !DILocation(line: 1213, column: 14, scope: !2858)
!2877 = !DILocation(line: 1213, column: 9, scope: !2858)
!2878 = !DILocation(line: 1213, column: 39, scope: !2858)
!2879 = !DILocation(line: 1213, column: 44, scope: !2858)
!2880 = !DILocation(line: 1214, column: 14, scope: !2858)
!2881 = !DILocation(line: 1214, column: 9, scope: !2858)
!2882 = !DILocation(line: 1214, column: 28, scope: !2858)
!2883 = !DILocation(line: 1214, column: 44, scope: !2858)
!2884 = !DILocation(line: 1219, column: 24, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1219, column: 13)
!2886 = !DILocation(line: 1222, column: 40, scope: !2858)
!2887 = !DILocalVariable(name: "tmp_block", scope: !2888, file: !2, line: 864, type: !132)
!2888 = distinct !DISubprogram(name: "buildPredblockRegionYUV", scope: !2, file: !2, line: 861, type: !2889, scopeLine: 863, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !262, !85, !18, !18, !77, !18, !18}
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2897, !2898, !2887, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2892 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2888, file: !2, line: 861, type: !262)
!2893 = !DILocalVariable(name: "mv", arg: 2, scope: !2888, file: !2, line: 861, type: !85)
!2894 = !DILocalVariable(name: "x", arg: 3, scope: !2888, file: !2, line: 862, type: !18)
!2895 = !DILocalVariable(name: "y", arg: 4, scope: !2888, file: !2, line: 862, type: !18)
!2896 = !DILocalVariable(name: "predMB", arg: 5, scope: !2888, file: !2, line: 862, type: !77)
!2897 = !DILocalVariable(name: "list", arg: 6, scope: !2888, file: !2, line: 862, type: !18)
!2898 = !DILocalVariable(name: "current_mb_nr", arg: 7, scope: !2888, file: !2, line: 862, type: !18)
!2899 = !DILocalVariable(name: "i", scope: !2888, file: !2, line: 865, type: !18)
!2900 = !DILocalVariable(name: "j", scope: !2888, file: !2, line: 865, type: !18)
!2901 = !DILocalVariable(name: "ii", scope: !2888, file: !2, line: 865, type: !18)
!2902 = !DILocalVariable(name: "jj", scope: !2888, file: !2, line: 865, type: !18)
!2903 = !DILocalVariable(name: "i1", scope: !2888, file: !2, line: 865, type: !18)
!2904 = !DILocalVariable(name: "j1", scope: !2888, file: !2, line: 865, type: !18)
!2905 = !DILocalVariable(name: "j4", scope: !2888, file: !2, line: 865, type: !18)
!2906 = !DILocalVariable(name: "i4", scope: !2888, file: !2, line: 865, type: !18)
!2907 = !DILocalVariable(name: "jf", scope: !2888, file: !2, line: 866, type: !18)
!2908 = !DILocalVariable(name: "uv", scope: !2888, file: !2, line: 867, type: !18)
!2909 = !DILocalVariable(name: "vec1_x", scope: !2888, file: !2, line: 868, type: !18)
!2910 = !DILocalVariable(name: "vec1_y", scope: !2888, file: !2, line: 868, type: !18)
!2911 = !DILocalVariable(name: "ioff", scope: !2888, file: !2, line: 869, type: !18)
!2912 = !DILocalVariable(name: "joff", scope: !2888, file: !2, line: 869, type: !18)
!2913 = !DILocalVariable(name: "dec_picture", scope: !2888, file: !2, line: 871, type: !91)
!2914 = !DILocalVariable(name: "pMB", scope: !2888, file: !2, line: 872, type: !77)
!2915 = !DILocalVariable(name: "ii0", scope: !2888, file: !2, line: 874, type: !18)
!2916 = !DILocalVariable(name: "jj0", scope: !2888, file: !2, line: 874, type: !18)
!2917 = !DILocalVariable(name: "ii1", scope: !2888, file: !2, line: 874, type: !18)
!2918 = !DILocalVariable(name: "jj1", scope: !2888, file: !2, line: 874, type: !18)
!2919 = !DILocalVariable(name: "if1", scope: !2888, file: !2, line: 874, type: !18)
!2920 = !DILocalVariable(name: "jf1", scope: !2888, file: !2, line: 874, type: !18)
!2921 = !DILocalVariable(name: "if0", scope: !2888, file: !2, line: 874, type: !18)
!2922 = !DILocalVariable(name: "jf0", scope: !2888, file: !2, line: 874, type: !18)
!2923 = !DILocalVariable(name: "mv_mul", scope: !2888, file: !2, line: 875, type: !18)
!2924 = !DILocalVariable(name: "f1_x", scope: !2888, file: !2, line: 878, type: !18)
!2925 = !DILocalVariable(name: "f1_y", scope: !2888, file: !2, line: 878, type: !18)
!2926 = !DILocalVariable(name: "f2_x", scope: !2888, file: !2, line: 878, type: !18)
!2927 = !DILocalVariable(name: "f2_y", scope: !2888, file: !2, line: 878, type: !18)
!2928 = !DILocalVariable(name: "f3", scope: !2888, file: !2, line: 878, type: !18)
!2929 = !DILocalVariable(name: "f4", scope: !2888, file: !2, line: 878, type: !18)
!2930 = !DILocalVariable(name: "ifx", scope: !2888, file: !2, line: 878, type: !18)
!2931 = !DILocalVariable(name: "yuv", scope: !2888, file: !2, line: 879, type: !18)
!2932 = !DILocalVariable(name: "ref_frame", scope: !2888, file: !2, line: 881, type: !18)
!2933 = !DILocalVariable(name: "mb_nr", scope: !2888, file: !2, line: 882, type: !18)
!2934 = !DILocalVariable(name: "currMB", scope: !2888, file: !2, line: 884, type: !747)
!2935 = !DILocalVariable(name: "currSlice", scope: !2888, file: !2, line: 885, type: !608)
!2936 = !DILocation(line: 0, scope: !2888, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1222, column: 9, scope: !2858)
!2938 = !DILocation(line: 864, column: 3, scope: !2888, inlinedAt: !2937)
!2939 = !DILocation(line: 871, column: 41, scope: !2888, inlinedAt: !2937)
!2940 = !DILocation(line: 879, column: 26, scope: !2888, inlinedAt: !2937)
!2941 = !DILocation(line: 884, column: 32, scope: !2888, inlinedAt: !2937)
!2942 = !DILocation(line: 884, column: 25, scope: !2888, inlinedAt: !2937)
!2943 = !DILocation(line: 885, column: 30, scope: !2888, inlinedAt: !2937)
!2944 = !DILocation(line: 887, column: 3, scope: !2888, inlinedAt: !2937)
!2945 = !DILocation(line: 891, column: 18, scope: !2888, inlinedAt: !2937)
!2946 = !DILocation(line: 891, column: 11, scope: !2888, inlinedAt: !2937)
!2947 = !DILocation(line: 891, column: 16, scope: !2888, inlinedAt: !2937)
!2948 = !DILocation(line: 892, column: 14, scope: !2888, inlinedAt: !2937)
!2949 = !DILocation(line: 892, column: 16, scope: !2888, inlinedAt: !2937)
!2950 = !DILocation(line: 893, column: 11, scope: !2888, inlinedAt: !2937)
!2951 = !DILocation(line: 893, column: 19, scope: !2888, inlinedAt: !2937)
!2952 = !DILocation(line: 894, column: 43, scope: !2888, inlinedAt: !2937)
!2953 = !DILocation(line: 894, column: 34, scope: !2888, inlinedAt: !2937)
!2954 = !DILocation(line: 894, column: 55, scope: !2888, inlinedAt: !2937)
!2955 = !DILocation(line: 894, column: 11, scope: !2888, inlinedAt: !2937)
!2956 = !DILocation(line: 894, column: 19, scope: !2888, inlinedAt: !2937)
!2957 = !DILocation(line: 895, column: 21, scope: !2888, inlinedAt: !2937)
!2958 = !DILocation(line: 895, column: 34, scope: !2888, inlinedAt: !2937)
!2959 = !DILocation(line: 895, column: 11, scope: !2888, inlinedAt: !2937)
!2960 = !DILocation(line: 895, column: 19, scope: !2888, inlinedAt: !2937)
!2961 = !DILocation(line: 896, column: 43, scope: !2888, inlinedAt: !2937)
!2962 = !DILocation(line: 896, column: 34, scope: !2888, inlinedAt: !2937)
!2963 = !DILocation(line: 896, column: 55, scope: !2888, inlinedAt: !2937)
!2964 = !DILocation(line: 896, column: 11, scope: !2888, inlinedAt: !2937)
!2965 = !DILocation(line: 896, column: 19, scope: !2888, inlinedAt: !2937)
!2966 = !DILocation(line: 902, column: 21, scope: !2888, inlinedAt: !2937)
!2967 = !DILocation(line: 903, column: 21, scope: !2888, inlinedAt: !2937)
!2968 = !DILocation(line: 904, column: 29, scope: !2888, inlinedAt: !2937)
!2969 = !DILocation(line: 904, column: 18, scope: !2888, inlinedAt: !2937)
!2970 = !DILocation(line: 904, column: 94, scope: !2888, inlinedAt: !2937)
!2971 = !DILocation(line: 905, column: 18, scope: !2888, inlinedAt: !2937)
!2972 = !DILocation(line: 905, column: 43, scope: !2888, inlinedAt: !2937)
!2973 = !DILocation(line: 905, column: 63, scope: !2888, inlinedAt: !2937)
!2974 = !DILocation(line: 905, column: 54, scope: !2888, inlinedAt: !2937)
!2975 = !DILocation(line: 905, column: 89, scope: !2888, inlinedAt: !2937)
!2976 = !DILocation(line: 905, column: 96, scope: !2888, inlinedAt: !2937)
!2977 = !DILocation(line: 905, column: 102, scope: !2888, inlinedAt: !2937)
!2978 = !DILocation(line: 905, column: 121, scope: !2888, inlinedAt: !2937)
!2979 = !DILocation(line: 905, column: 142, scope: !2888, inlinedAt: !2937)
!2980 = !DILocation(line: 906, column: 12, scope: !2888, inlinedAt: !2937)
!2981 = !DILocation(line: 906, column: 5, scope: !2888, inlinedAt: !2937)
!2982 = !DILocation(line: 906, column: 56, scope: !2888, inlinedAt: !2937)
!2983 = !DILocation(line: 906, column: 49, scope: !2888, inlinedAt: !2937)
!2984 = !DILocation(line: 906, column: 40, scope: !2888, inlinedAt: !2937)
!2985 = !DILocation(line: 904, column: 3, scope: !2888, inlinedAt: !2937)
!2986 = !DILocation(line: 910, column: 44, scope: !2987, inlinedAt: !2937)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2, line: 909, column: 5)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 909, column: 5)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 908, column: 3)
!2990 = distinct !DILexicalBlock(scope: !2888, file: !2, line: 908, column: 3)
!2991 = !DILocation(line: 910, column: 18, scope: !2987, inlinedAt: !2937)
!2992 = !DILocation(line: 910, column: 7, scope: !2987, inlinedAt: !2937)
!2993 = !DILocation(line: 910, column: 43, scope: !2987, inlinedAt: !2937)
!2994 = !DILocation(line: 917, column: 31, scope: !2995, inlinedAt: !2937)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 916, column: 5)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 915, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 915, column: 5)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !2, line: 914, column: 3)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !2, line: 913, column: 3)
!3000 = distinct !DILexicalBlock(scope: !2888, file: !2, line: 913, column: 3)
!3001 = !DILocation(line: 917, column: 20, scope: !2995, inlinedAt: !2937)
!3002 = !DILocation(line: 917, column: 18, scope: !2995, inlinedAt: !2937)
!3003 = !DILocation(line: 922, column: 20, scope: !3004, inlinedAt: !2937)
!3004 = distinct !DILexicalBlock(scope: !2888, file: !2, line: 922, column: 7)
!3005 = !DILocation(line: 922, column: 38, scope: !3004, inlinedAt: !2937)
!3006 = !DILocation(line: 922, column: 7, scope: !2888, inlinedAt: !2937)
!3007 = !DILocation(line: 925, column: 23, scope: !3008, inlinedAt: !2937)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 923, column: 3)
!3009 = !DILocation(line: 925, column: 14, scope: !3008, inlinedAt: !2937)
!3010 = !DILocation(line: 926, column: 14, scope: !3008, inlinedAt: !2937)
!3011 = !DILocation(line: 928, column: 23, scope: !3008, inlinedAt: !2937)
!3012 = !DILocation(line: 928, column: 14, scope: !3008, inlinedAt: !2937)
!3013 = !DILocation(line: 929, column: 14, scope: !3008, inlinedAt: !2937)
!3014 = !DILocation(line: 931, column: 12, scope: !3008, inlinedAt: !2937)
!3015 = !DILocation(line: 932, column: 10, scope: !3008, inlinedAt: !2937)
!3016 = !DILocation(line: 934, column: 5, scope: !3017, inlinedAt: !2937)
!3017 = distinct !DILexicalBlock(scope: !3008, file: !2, line: 934, column: 5)
!3018 = !DILocation(line: 937, column: 18, scope: !3019, inlinedAt: !2937)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !2, line: 935, column: 5)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 934, column: 5)
!3021 = !DILocation(line: 939, column: 18, scope: !3019, inlinedAt: !2937)
!3022 = !DILocation(line: 948, column: 21, scope: !3023, inlinedAt: !2937)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !2, line: 945, column: 9)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !2, line: 944, column: 9)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 944, column: 9)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !2, line: 942, column: 7)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !2, line: 941, column: 7)
!3028 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 941, column: 7)
!3029 = !DILocation(line: 949, column: 27, scope: !3023, inlinedAt: !2937)
!3030 = !DILocation(line: 951, column: 39, scope: !3023, inlinedAt: !2937)
!3031 = !DILocation(line: 951, column: 48, scope: !3023, inlinedAt: !2937)
!3032 = !DILocalVariable(name: "low", arg: 1, scope: !3033, file: !236, line: 198, type: !18)
!3033 = distinct !DISubprogram(name: "iClip3", scope: !236, file: !236, line: 198, type: !3034, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!18, !18, !18, !18}
!3036 = !{!3032, !3037, !3038}
!3037 = !DILocalVariable(name: "high", arg: 2, scope: !3033, file: !236, line: 198, type: !18)
!3038 = !DILocalVariable(name: "x", arg: 3, scope: !3033, file: !236, line: 198, type: !18)
!3039 = !DILocation(line: 0, scope: !3033, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 951, column: 15, scope: !3023, inlinedAt: !2937)
!3041 = !DILocalVariable(name: "a", arg: 1, scope: !3042, file: !236, line: 47, type: !18)
!3042 = distinct !DISubprogram(name: "imax", scope: !236, file: !236, line: 47, type: !2263, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3043)
!3043 = !{!3041, !3044}
!3044 = !DILocalVariable(name: "b", arg: 2, scope: !3042, file: !236, line: 47, type: !18)
!3045 = !DILocation(line: 0, scope: !3042, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3040)
!3047 = !DILocation(line: 0, scope: !2262, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3040)
!3049 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3048)
!3050 = !DILocation(line: 952, column: 39, scope: !3023, inlinedAt: !2937)
!3051 = !DILocation(line: 952, column: 48, scope: !3023, inlinedAt: !2937)
!3052 = !DILocation(line: 952, column: 54, scope: !3023, inlinedAt: !2937)
!3053 = !DILocation(line: 0, scope: !3033, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 952, column: 15, scope: !3023, inlinedAt: !2937)
!3055 = !DILocation(line: 0, scope: !3042, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3054)
!3057 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3056)
!3058 = !DILocation(line: 0, scope: !2262, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3054)
!3060 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3059)
!3061 = !DILocation(line: 0, scope: !3033, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 953, column: 15, scope: !3023, inlinedAt: !2937)
!3063 = !DILocation(line: 0, scope: !3042, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3062)
!3065 = !DILocation(line: 0, scope: !2262, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3062)
!3067 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3066)
!3068 = !DILocation(line: 954, column: 56, scope: !3023, inlinedAt: !2937)
!3069 = !DILocation(line: 954, column: 62, scope: !3023, inlinedAt: !2937)
!3070 = !DILocation(line: 0, scope: !3033, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 954, column: 15, scope: !3023, inlinedAt: !2937)
!3072 = !DILocation(line: 0, scope: !3042, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3071)
!3074 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3073)
!3075 = !DILocation(line: 0, scope: !2262, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3071)
!3077 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3076)
!3078 = !DILocation(line: 957, column: 19, scope: !3023, inlinedAt: !2937)
!3079 = !DILocation(line: 959, column: 19, scope: !3023, inlinedAt: !2937)
!3080 = !DILocation(line: 961, column: 65, scope: !3023, inlinedAt: !2937)
!3081 = !DILocation(line: 961, column: 100, scope: !3023, inlinedAt: !2937)
!3082 = !DILocation(line: 961, column: 64, scope: !3023, inlinedAt: !2937)
!3083 = !DILocation(line: 962, column: 21, scope: !3023, inlinedAt: !2937)
!3084 = !DILocation(line: 962, column: 20, scope: !3023, inlinedAt: !2937)
!3085 = !DILocation(line: 963, column: 21, scope: !3023, inlinedAt: !2937)
!3086 = !DILocation(line: 963, column: 20, scope: !3023, inlinedAt: !2937)
!3087 = !DILocation(line: 964, column: 21, scope: !3023, inlinedAt: !2937)
!3088 = !DILocation(line: 964, column: 20, scope: !3023, inlinedAt: !2937)
!3089 = !DILocation(line: 963, column: 75, scope: !3023, inlinedAt: !2937)
!3090 = !DILocation(line: 964, column: 75, scope: !3023, inlinedAt: !2937)
!3091 = !DILocation(line: 964, column: 79, scope: !3023, inlinedAt: !2937)
!3092 = !DILocation(line: 961, column: 46, scope: !3023, inlinedAt: !2937)
!3093 = !DILocation(line: 961, column: 22, scope: !3023, inlinedAt: !2937)
!3094 = !DILocation(line: 961, column: 11, scope: !3023, inlinedAt: !2937)
!3095 = !DILocation(line: 961, column: 45, scope: !3023, inlinedAt: !2937)
!3096 = !DILocation(line: 972, column: 35, scope: !3097, inlinedAt: !2937)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !2, line: 971, column: 9)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 970, column: 9)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !2, line: 970, column: 9)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !2, line: 969, column: 7)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !2, line: 968, column: 7)
!3102 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 968, column: 7)
!3103 = !DILocation(line: 972, column: 24, scope: !3097, inlinedAt: !2937)
!3104 = !DILocation(line: 972, column: 22, scope: !3097, inlinedAt: !2937)
!3105 = !DILocation(line: 972, column: 11, scope: !3097, inlinedAt: !2937)
!3106 = !DILocation(line: 975, column: 11, scope: !3019, inlinedAt: !2937)
!3107 = distinct !{!3107, !3016, !3108}
!3108 = !DILocation(line: 977, column: 5, scope: !3017, inlinedAt: !2937)
!3109 = !DILocation(line: 979, column: 17, scope: !2888, inlinedAt: !2937)
!3110 = !DILocation(line: 979, column: 3, scope: !2888, inlinedAt: !2937)
!3111 = !DILocation(line: 980, column: 1, scope: !2888, inlinedAt: !2937)
!3112 = !DILocation(line: 1226, column: 9, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1226, column: 9)
!3114 = !DILocation(line: 1230, column: 59, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !2, line: 1229, column: 11)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !2, line: 1228, column: 11)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1228, column: 11)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !2, line: 1227, column: 9)
!3119 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 1226, column: 9)
!3120 = !DILocation(line: 1230, column: 18, scope: !3115)
!3121 = !DILocation(line: 1230, column: 13, scope: !3115)
!3122 = !DILocation(line: 1230, column: 57, scope: !3115)
!3123 = !DILocation(line: 1230, column: 52, scope: !3115)
!3124 = !DILocation(line: 1236, column: 26, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1236, column: 13)
!3126 = !DILocation(line: 1236, column: 44, scope: !3125)
!3127 = !DILocation(line: 1236, column: 13, scope: !2858)
!3128 = !DILocation(line: 1245, column: 74, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !2, line: 1244, column: 15)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1243, column: 15)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 1243, column: 15)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !2, line: 1242, column: 13)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !2, line: 1241, column: 13)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1241, column: 13)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !2, line: 1240, column: 11)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !2, line: 1239, column: 11)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !2, line: 1239, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 1237, column: 9)
!3139 = !DILocation(line: 1245, column: 22, scope: !3129)
!3140 = !DILocation(line: 1245, column: 17, scope: !3129)
!3141 = !DILocation(line: 1245, column: 72, scope: !3129)
!3142 = !DILocation(line: 1245, column: 67, scope: !3129)
!3143 = !DILocation(line: 1201, column: 29, scope: !2859)
!3144 = !DILocation(line: 1201, column: 16, scope: !2859)
!3145 = distinct !{!3145, !2854, !3146}
!3146 = !DILocation(line: 1251, column: 7, scope: !2855)
!3147 = !DILocation(line: 1198, column: 28, scope: !2851)
!3148 = distinct !{!3148, !2853, !3149}
!3149 = !DILocation(line: 1252, column: 5, scope: !2852)
!3150 = !DILocation(line: 1253, column: 5, scope: !2812)
!3151 = !DILocation(line: 1254, column: 3, scope: !2812)
!3152 = !DILocation(line: 1255, column: 1, scope: !2659)
!3153 = distinct !DISubprogram(name: "sliding_window_poc_management", scope: !2, file: !2, line: 1797, type: !1959, scopeLine: 1798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3154)
!3154 = !{!3155, !3156, !3157, !3160}
!3155 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !3153, file: !2, line: 1797, type: !1806)
!3156 = !DILocalVariable(name: "p", arg: 2, scope: !3153, file: !2, line: 1797, type: !91)
!3157 = !DILocalVariable(name: "p_Vid", scope: !3158, file: !2, line: 1801, type: !262)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !2, line: 1800, column: 3)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !2, line: 1799, column: 7)
!3160 = !DILocalVariable(name: "i", scope: !3158, file: !2, line: 1802, type: !42)
!3161 = !DILocation(line: 0, scope: !3153)
!3162 = !DILocation(line: 1799, column: 14, scope: !3159)
!3163 = !DILocation(line: 1799, column: 34, scope: !3159)
!3164 = !DILocation(line: 1799, column: 24, scope: !3159)
!3165 = !DILocation(line: 0, scope: !3158)
!3166 = !DILocation(line: 1799, column: 7, scope: !3153)
!3167 = !DILocation(line: 1801, column: 37, scope: !3158)
!3168 = !DILocation(line: 1804, column: 5, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3158, file: !2, line: 1804, column: 5)
!3170 = !DILocation(line: 1805, column: 51, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3169, file: !2, line: 1804, column: 5)
!3172 = !DILocation(line: 1805, column: 31, scope: !3171)
!3173 = !DILocation(line: 1805, column: 7, scope: !3171)
!3174 = !DILocation(line: 1805, column: 29, scope: !3171)
!3175 = !DILocation(line: 1804, column: 22, scope: !3171)
!3176 = !DILocation(line: 1804, column: 26, scope: !3171)
!3177 = !DILocation(line: 1804, column: 14, scope: !3171)
!3178 = distinct !{!3178, !3168, !3179}
!3179 = !DILocation(line: 1805, column: 53, scope: !3169)
!3180 = !DILocation(line: 1807, column: 1, scope: !3153)
!3181 = distinct !DISubprogram(name: "write_lost_non_ref_pic", scope: !2, file: !2, line: 1821, type: !3182, scopeLine: 1822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !1806, !18, !18}
!3184 = !{!3185, !3186, !3187, !3188, !3189}
!3185 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !3181, file: !2, line: 1821, type: !1806)
!3186 = !DILocalVariable(name: "poc", arg: 2, scope: !3181, file: !2, line: 1821, type: !18)
!3187 = !DILocalVariable(name: "p_out", arg: 3, scope: !3181, file: !2, line: 1821, type: !18)
!3188 = !DILocalVariable(name: "p_Vid", scope: !3181, file: !2, line: 1823, type: !262)
!3189 = !DILocalVariable(name: "concealment_fs", scope: !3181, file: !2, line: 1824, type: !629)
!3190 = distinct !DIAssignID()
!3191 = !DILocation(line: 0, scope: !3181)
!3192 = !DILocation(line: 1823, column: 35, scope: !3181)
!3193 = !DILocation(line: 1824, column: 3, scope: !3181)
!3194 = !DILocation(line: 1825, column: 10, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3181, file: !2, line: 1825, column: 6)
!3196 = !DILocation(line: 1825, column: 6, scope: !3181)
!3197 = !DILocation(line: 1827, column: 22, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !2, line: 1827, column: 8)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 1826, column: 3)
!3200 = !DILocation(line: 1827, column: 13, scope: !3198)
!3201 = !DILocation(line: 1827, column: 48, scope: !3198)
!3202 = !DILocation(line: 1827, column: 39, scope: !3198)
!3203 = !DILocation(line: 1827, column: 8, scope: !3199)
!3204 = !DILocation(line: 1830, column: 37, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 1828, column: 5)
!3206 = !DILocation(line: 1830, column: 55, scope: !3205)
!3207 = !DILocation(line: 1830, column: 22, scope: !3205)
!3208 = !DILocation(line: 1830, column: 28, scope: !3205)
!3209 = distinct !DIAssignID()
!3210 = !DILocation(line: 1831, column: 22, scope: !3205)
!3211 = !DILocation(line: 1831, column: 32, scope: !3205)
!3212 = distinct !DIAssignID()
!3213 = !DILocation(line: 1832, column: 22, scope: !3205)
!3214 = !DILocation(line: 1832, column: 35, scope: !3205)
!3215 = distinct !DIAssignID()
!3216 = !DILocation(line: 1833, column: 30, scope: !3205)
!3217 = distinct !DIAssignID()
!3218 = !DILocation(line: 1835, column: 7, scope: !3205)
!3219 = !DILocation(line: 1836, column: 33, scope: !3205)
!3220 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3221, file: !2, line: 1672, type: !262)
!3221 = distinct !DISubprogram(name: "delete_node", scope: !2, file: !2, line: 1672, type: !2490, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "ptr", arg: 2, scope: !3221, file: !2, line: 1672, type: !86)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1836, column: 7, scope: !3205)
!3226 = !DILocation(line: 1677, column: 56, scope: !3227, inlinedAt: !3225)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !2, line: 1676, column: 3)
!3228 = distinct !DILexicalBlock(scope: !3221, file: !2, line: 1675, column: 7)
!3229 = !DILocation(line: 1677, column: 29, scope: !3227, inlinedAt: !3225)
!3230 = !DILocation(line: 1678, column: 16, scope: !3231, inlinedAt: !3225)
!3231 = distinct !DILexicalBlock(scope: !3227, file: !2, line: 1678, column: 9)
!3232 = !DILocation(line: 1678, column: 32, scope: !3231, inlinedAt: !3225)
!3233 = !DILocation(line: 1678, column: 9, scope: !3227, inlinedAt: !3225)
!3234 = !DILocation(line: 1679, column: 56, scope: !3231, inlinedAt: !3225)
!3235 = !DILocation(line: 1679, column: 30, scope: !3231, inlinedAt: !3225)
!3236 = !DILocation(line: 1679, column: 7, scope: !3231, inlinedAt: !3225)
!3237 = !DILocation(line: 1680, column: 5, scope: !3227, inlinedAt: !3225)
!3238 = !DILocation(line: 1837, column: 5, scope: !3205)
!3239 = !DILocation(line: 1839, column: 1, scope: !3181)
!3240 = !DISubprogram(name: "write_stored_frame", scope: !3241, file: !3241, line: 18, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3241 = !DIFile(filename: "ldecod_src/inc/output.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "703e2f977a63a5284263027e4e14389d")
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !262, !628, !18}
!3244 = distinct !DISubprogram(name: "write_lost_ref_after_idr", scope: !2, file: !2, line: 1850, type: !1956, scopeLine: 1851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "p_Dpb", arg: 1, scope: !3244, file: !2, line: 1850, type: !1806)
!3247 = !DILocalVariable(name: "pos", arg: 2, scope: !3244, file: !2, line: 1850, type: !18)
!3248 = !DILocalVariable(name: "p_Vid", scope: !3244, file: !2, line: 1852, type: !262)
!3249 = !DILocalVariable(name: "temp", scope: !3244, file: !2, line: 1854, type: !18)
!3250 = !DILocation(line: 0, scope: !3244)
!3251 = !DILocation(line: 1852, column: 35, scope: !3244)
!3252 = !DILocation(line: 1856, column: 13, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3244, file: !2, line: 1856, column: 6)
!3254 = !DILocation(line: 1856, column: 26, scope: !3253)
!3255 = !DILocation(line: 1856, column: 32, scope: !3253)
!3256 = !DILocation(line: 1856, column: 6, scope: !3244)
!3257 = !DILocation(line: 1858, column: 78, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !2, line: 1857, column: 3)
!3259 = !DILocation(line: 1858, column: 92, scope: !3258)
!3260 = !DILocation(line: 1859, column: 14, scope: !3258)
!3261 = !DILocation(line: 1859, column: 31, scope: !3258)
!3262 = !DILocation(line: 1858, column: 33, scope: !3258)
!3263 = !DILocation(line: 1858, column: 12, scope: !3258)
!3264 = !DILocation(line: 1858, column: 25, scope: !3258)
!3265 = !DILocation(line: 1858, column: 31, scope: !3258)
!3266 = !DILocation(line: 1860, column: 12, scope: !3258)
!3267 = !DILocation(line: 1860, column: 33, scope: !3258)
!3268 = !DILocation(line: 1861, column: 3, scope: !3258)
!3269 = !DILocation(line: 1863, column: 13, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3244, file: !2, line: 1863, column: 6)
!3271 = !DILocation(line: 1863, column: 26, scope: !3270)
!3272 = !DILocation(line: 1863, column: 6, scope: !3244)
!3273 = !DILocation(line: 1866, column: 25, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !2, line: 1864, column: 3)
!3275 = !DILocation(line: 1867, column: 3, scope: !3274)
!3276 = !DILocation(line: 1868, column: 26, scope: !3244)
!3277 = !DILocation(line: 1868, column: 19, scope: !3244)
!3278 = !DILocation(line: 1868, column: 35, scope: !3244)
!3279 = !DILocation(line: 1868, column: 49, scope: !3244)
!3280 = !DILocation(line: 1868, column: 62, scope: !3244)
!3281 = !DILocation(line: 1868, column: 3, scope: !3244)
!3282 = !DILocation(line: 1870, column: 23, scope: !3244)
!3283 = !DILocation(line: 1871, column: 1, scope: !3244)
!3284 = distinct !DISubprogram(name: "buildPredRegionYUV", scope: !2, file: !2, line: 546, type: !3285, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !262, !85, !18, !18, !77}
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3288 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !3284, file: !2, line: 546, type: !262)
!3289 = !DILocalVariable(name: "mv", arg: 2, scope: !3284, file: !2, line: 546, type: !85)
!3290 = !DILocalVariable(name: "x", arg: 3, scope: !3284, file: !2, line: 546, type: !18)
!3291 = !DILocalVariable(name: "y", arg: 4, scope: !3284, file: !2, line: 546, type: !18)
!3292 = !DILocalVariable(name: "predMB", arg: 5, scope: !3284, file: !2, line: 546, type: !77)
!3293 = !DILocalVariable(name: "tmp_block", scope: !3284, file: !2, line: 548, type: !132)
!3294 = !DILocalVariable(name: "i", scope: !3284, file: !2, line: 549, type: !18)
!3295 = !DILocalVariable(name: "j", scope: !3284, file: !2, line: 549, type: !18)
!3296 = !DILocalVariable(name: "ii", scope: !3284, file: !2, line: 549, type: !18)
!3297 = !DILocalVariable(name: "jj", scope: !3284, file: !2, line: 549, type: !18)
!3298 = !DILocalVariable(name: "i1", scope: !3284, file: !2, line: 549, type: !18)
!3299 = !DILocalVariable(name: "j1", scope: !3284, file: !2, line: 549, type: !18)
!3300 = !DILocalVariable(name: "j4", scope: !3284, file: !2, line: 549, type: !18)
!3301 = !DILocalVariable(name: "i4", scope: !3284, file: !2, line: 549, type: !18)
!3302 = !DILocalVariable(name: "jf", scope: !3284, file: !2, line: 550, type: !18)
!3303 = !DILocalVariable(name: "uv", scope: !3284, file: !2, line: 551, type: !18)
!3304 = !DILocalVariable(name: "vec1_x", scope: !3284, file: !2, line: 552, type: !18)
!3305 = !DILocalVariable(name: "vec1_y", scope: !3284, file: !2, line: 552, type: !18)
!3306 = !DILocalVariable(name: "ioff", scope: !3284, file: !2, line: 553, type: !18)
!3307 = !DILocalVariable(name: "joff", scope: !3284, file: !2, line: 553, type: !18)
!3308 = !DILocalVariable(name: "pMB", scope: !3284, file: !2, line: 554, type: !77)
!3309 = !DILocalVariable(name: "currSlice", scope: !3284, file: !2, line: 555, type: !608)
!3310 = !DILocalVariable(name: "dec_picture", scope: !3284, file: !2, line: 556, type: !91)
!3311 = !DILocalVariable(name: "ii0", scope: !3284, file: !2, line: 557, type: !18)
!3312 = !DILocalVariable(name: "jj0", scope: !3284, file: !2, line: 557, type: !18)
!3313 = !DILocalVariable(name: "ii1", scope: !3284, file: !2, line: 557, type: !18)
!3314 = !DILocalVariable(name: "jj1", scope: !3284, file: !2, line: 557, type: !18)
!3315 = !DILocalVariable(name: "if1", scope: !3284, file: !2, line: 557, type: !18)
!3316 = !DILocalVariable(name: "jf1", scope: !3284, file: !2, line: 557, type: !18)
!3317 = !DILocalVariable(name: "if0", scope: !3284, file: !2, line: 557, type: !18)
!3318 = !DILocalVariable(name: "jf0", scope: !3284, file: !2, line: 557, type: !18)
!3319 = !DILocalVariable(name: "mv_mul", scope: !3284, file: !2, line: 558, type: !18)
!3320 = !DILocalVariable(name: "f1_x", scope: !3284, file: !2, line: 561, type: !18)
!3321 = !DILocalVariable(name: "f1_y", scope: !3284, file: !2, line: 561, type: !18)
!3322 = !DILocalVariable(name: "f2_x", scope: !3284, file: !2, line: 561, type: !18)
!3323 = !DILocalVariable(name: "f2_y", scope: !3284, file: !2, line: 561, type: !18)
!3324 = !DILocalVariable(name: "f3", scope: !3284, file: !2, line: 561, type: !18)
!3325 = !DILocalVariable(name: "f4", scope: !3284, file: !2, line: 561, type: !18)
!3326 = !DILocalVariable(name: "ifx", scope: !3284, file: !2, line: 561, type: !18)
!3327 = !DILocalVariable(name: "b8", scope: !3284, file: !2, line: 562, type: !18)
!3328 = !DILocalVariable(name: "b4", scope: !3284, file: !2, line: 562, type: !18)
!3329 = !DILocalVariable(name: "yuv", scope: !3284, file: !2, line: 563, type: !18)
!3330 = !DILocalVariable(name: "ref_frame", scope: !3284, file: !2, line: 565, type: !18)
!3331 = !DILocalVariable(name: "mb_nr", scope: !3284, file: !2, line: 566, type: !18)
!3332 = !DILocalVariable(name: "tmp_res", scope: !3284, file: !2, line: 567, type: !517)
!3333 = !DILocalVariable(name: "currMB", scope: !3284, file: !2, line: 569, type: !747)
!3334 = distinct !DIAssignID()
!3335 = !DILocation(line: 0, scope: !3284)
!3336 = !DILocation(line: 548, column: 3, scope: !3284)
!3337 = !DILocation(line: 556, column: 41, scope: !3284)
!3338 = !DILocation(line: 563, column: 26, scope: !3284)
!3339 = !DILocation(line: 565, column: 25, scope: !3284)
!3340 = !DILocation(line: 0, scope: !3042, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 565, column: 19, scope: !3284)
!3342 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3341)
!3343 = !DILocation(line: 566, column: 16, scope: !3284)
!3344 = !DILocation(line: 566, column: 28, scope: !3284)
!3345 = !DILocation(line: 566, column: 33, scope: !3284)
!3346 = !DILocation(line: 566, column: 19, scope: !3284)
!3347 = !DILocation(line: 566, column: 39, scope: !3284)
!3348 = !DILocation(line: 566, column: 37, scope: !3284)
!3349 = !DILocation(line: 569, column: 32, scope: !3284)
!3350 = !DILocation(line: 569, column: 25, scope: !3284)
!3351 = !DILocation(line: 570, column: 23, scope: !3284)
!3352 = !DILocation(line: 571, column: 24, scope: !3284)
!3353 = !DILocation(line: 574, column: 3, scope: !3284)
!3354 = !DILocation(line: 577, column: 18, scope: !3284)
!3355 = !DILocation(line: 577, column: 11, scope: !3284)
!3356 = !DILocation(line: 577, column: 16, scope: !3284)
!3357 = !DILocation(line: 578, column: 18, scope: !3284)
!3358 = !DILocation(line: 578, column: 14, scope: !3284)
!3359 = !DILocation(line: 578, column: 16, scope: !3284)
!3360 = !DILocation(line: 579, column: 21, scope: !3284)
!3361 = !DILocation(line: 579, column: 34, scope: !3284)
!3362 = !DILocation(line: 579, column: 11, scope: !3284)
!3363 = !DILocation(line: 579, column: 19, scope: !3284)
!3364 = !DILocation(line: 580, column: 21, scope: !3284)
!3365 = !DILocation(line: 580, column: 43, scope: !3284)
!3366 = !DILocation(line: 580, column: 34, scope: !3284)
!3367 = !DILocation(line: 580, column: 11, scope: !3284)
!3368 = !DILocation(line: 580, column: 19, scope: !3284)
!3369 = !DILocation(line: 581, column: 21, scope: !3284)
!3370 = !DILocation(line: 581, column: 34, scope: !3284)
!3371 = !DILocation(line: 581, column: 11, scope: !3284)
!3372 = !DILocation(line: 581, column: 19, scope: !3284)
!3373 = !DILocation(line: 582, column: 43, scope: !3284)
!3374 = !DILocation(line: 582, column: 34, scope: !3284)
!3375 = !DILocation(line: 582, column: 11, scope: !3284)
!3376 = !DILocation(line: 582, column: 19, scope: !3284)
!3377 = !DILocation(line: 588, column: 3, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 588, column: 3)
!3379 = !DILocation(line: 590, column: 11, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !2, line: 589, column: 3)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !2, line: 588, column: 3)
!3382 = !DILocation(line: 591, column: 16, scope: !3380)
!3383 = !DILocation(line: 591, column: 23, scope: !3380)
!3384 = !DILocation(line: 592, column: 5, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !2, line: 592, column: 5)
!3386 = !DILocation(line: 594, column: 13, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 593, column: 5)
!3388 = distinct !DILexicalBlock(scope: !3385, file: !2, line: 592, column: 5)
!3389 = !DILocation(line: 595, column: 18, scope: !3387)
!3390 = !DILocation(line: 595, column: 25, scope: !3387)
!3391 = !DILocation(line: 597, column: 20, scope: !3387)
!3392 = !DILocation(line: 597, column: 30, scope: !3387)
!3393 = !DILocation(line: 597, column: 28, scope: !3387)
!3394 = !DILocation(line: 598, column: 30, scope: !3387)
!3395 = !DILocation(line: 598, column: 28, scope: !3387)
!3396 = !DILocation(line: 600, column: 22, scope: !3387)
!3397 = !DILocation(line: 601, column: 9, scope: !3387)
!3398 = !DILocation(line: 602, column: 22, scope: !3387)
!3399 = !DILocation(line: 602, column: 47, scope: !3387)
!3400 = !DILocation(line: 603, column: 18, scope: !3387)
!3401 = !DILocation(line: 603, column: 9, scope: !3387)
!3402 = !DILocation(line: 603, column: 44, scope: !3387)
!3403 = !DILocation(line: 603, column: 51, scope: !3387)
!3404 = !DILocation(line: 603, column: 57, scope: !3387)
!3405 = !DILocation(line: 603, column: 76, scope: !3387)
!3406 = !DILocation(line: 604, column: 9, scope: !3387)
!3407 = !DILocation(line: 604, column: 53, scope: !3387)
!3408 = !DILocation(line: 604, column: 44, scope: !3387)
!3409 = !DILocation(line: 600, column: 7, scope: !3387)
!3410 = !DILocation(line: 608, column: 58, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !2, line: 607, column: 9)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !2, line: 607, column: 9)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 606, column: 7)
!3414 = distinct !DILexicalBlock(scope: !3387, file: !2, line: 606, column: 7)
!3415 = !DILocation(line: 608, column: 22, scope: !3411)
!3416 = !DILocation(line: 608, column: 11, scope: !3411)
!3417 = !DILocation(line: 608, column: 57, scope: !3411)
!3418 = !DILocation(line: 592, column: 41, scope: !3388)
!3419 = !DILocation(line: 592, column: 14, scope: !3388)
!3420 = distinct !{!3420, !3384, !3421}
!3421 = !DILocation(line: 609, column: 5, scope: !3385)
!3422 = !DILocation(line: 588, column: 39, scope: !3381)
!3423 = !DILocation(line: 588, column: 12, scope: !3381)
!3424 = distinct !{!3424, !3377, !3425}
!3425 = !DILocation(line: 610, column: 3, scope: !3378)
!3426 = !DILocation(line: 617, column: 32, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !2, line: 616, column: 5)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !2, line: 615, column: 5)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 615, column: 5)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !2, line: 614, column: 3)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !2, line: 613, column: 3)
!3432 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 613, column: 3)
!3433 = !DILocation(line: 617, column: 21, scope: !3427)
!3434 = !DILocation(line: 617, column: 7, scope: !3427)
!3435 = !DILocation(line: 617, column: 19, scope: !3427)
!3436 = !DILocation(line: 617, column: 15, scope: !3427)
!3437 = !DILocation(line: 613, column: 24, scope: !3431)
!3438 = !DILocation(line: 613, column: 17, scope: !3431)
!3439 = !DILocation(line: 613, column: 3, scope: !3432)
!3440 = distinct !{!3440, !3439, !3441}
!3441 = !DILocation(line: 619, column: 3, scope: !3432)
!3442 = !DILocation(line: 622, column: 20, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 622, column: 7)
!3444 = !DILocation(line: 622, column: 38, scope: !3443)
!3445 = !DILocation(line: 622, column: 7, scope: !3284)
!3446 = !DILocation(line: 563, column: 44, scope: !3284)
!3447 = !DILocation(line: 620, column: 7, scope: !3284)
!3448 = !DILocation(line: 625, column: 22, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !2, line: 623, column: 3)
!3450 = !DILocation(line: 625, column: 14, scope: !3449)
!3451 = !DILocation(line: 626, column: 14, scope: !3449)
!3452 = !DILocation(line: 628, column: 22, scope: !3449)
!3453 = !DILocation(line: 628, column: 14, scope: !3449)
!3454 = !DILocation(line: 629, column: 14, scope: !3449)
!3455 = !DILocation(line: 631, column: 12, scope: !3449)
!3456 = !DILocation(line: 632, column: 10, scope: !3449)
!3457 = !DILocation(line: 634, column: 5, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3449, file: !2, line: 634, column: 5)
!3459 = !DILocation(line: 636, column: 28, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 636, column: 7)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !2, line: 636, column: 7)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !2, line: 635, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3458, file: !2, line: 634, column: 5)
!3464 = !DILocation(line: 636, column: 19, scope: !3460)
!3465 = !DILocation(line: 636, column: 7, scope: !3461)
!3466 = !DILocation(line: 638, column: 9, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !2, line: 638, column: 9)
!3468 = distinct !DILexicalBlock(scope: !3460, file: !2, line: 637, column: 7)
!3469 = !DILocation(line: 640, column: 18, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !2, line: 639, column: 9)
!3471 = distinct !DILexicalBlock(scope: !3467, file: !2, line: 638, column: 9)
!3472 = !DILocation(line: 641, column: 22, scope: !3470)
!3473 = !DILocation(line: 641, column: 29, scope: !3470)
!3474 = !DILocation(line: 642, column: 18, scope: !3470)
!3475 = !DILocation(line: 643, column: 22, scope: !3470)
!3476 = !DILocation(line: 643, column: 29, scope: !3470)
!3477 = !DILocation(line: 645, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3470, file: !2, line: 645, column: 11)
!3479 = !DILocation(line: 648, column: 13, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !2, line: 648, column: 13)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 646, column: 11)
!3482 = distinct !DILexicalBlock(scope: !3478, file: !2, line: 645, column: 11)
!3483 = !DILocation(line: 652, column: 33, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !2, line: 649, column: 13)
!3485 = distinct !DILexicalBlock(scope: !3480, file: !2, line: 648, column: 13)
!3486 = !DILocation(line: 652, column: 31, scope: !3484)
!3487 = !DILocation(line: 653, column: 33, scope: !3484)
!3488 = !DILocation(line: 653, column: 31, scope: !3484)
!3489 = !DILocation(line: 655, column: 43, scope: !3484)
!3490 = !DILocation(line: 655, column: 52, scope: !3484)
!3491 = !DILocation(line: 655, column: 58, scope: !3484)
!3492 = !DILocation(line: 0, scope: !3033, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 655, column: 19, scope: !3484)
!3494 = !DILocation(line: 0, scope: !3042, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3493)
!3496 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3495)
!3497 = !DILocation(line: 0, scope: !2262, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3493)
!3499 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3498)
!3500 = !DILocation(line: 656, column: 43, scope: !3484)
!3501 = !DILocation(line: 656, column: 52, scope: !3484)
!3502 = !DILocation(line: 656, column: 58, scope: !3484)
!3503 = !DILocation(line: 0, scope: !3033, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 656, column: 19, scope: !3484)
!3505 = !DILocation(line: 0, scope: !3042, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3504)
!3507 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3506)
!3508 = !DILocation(line: 0, scope: !2262, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3504)
!3510 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3509)
!3511 = !DILocation(line: 657, column: 60, scope: !3484)
!3512 = !DILocation(line: 657, column: 66, scope: !3484)
!3513 = !DILocation(line: 0, scope: !3033, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 657, column: 19, scope: !3484)
!3515 = !DILocation(line: 0, scope: !3042, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3514)
!3517 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3516)
!3518 = !DILocation(line: 0, scope: !2262, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3514)
!3520 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3519)
!3521 = !DILocation(line: 658, column: 60, scope: !3484)
!3522 = !DILocation(line: 658, column: 66, scope: !3484)
!3523 = !DILocation(line: 0, scope: !3033, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 658, column: 19, scope: !3484)
!3525 = !DILocation(line: 0, scope: !3042, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 200, column: 7, scope: !3033, inlinedAt: !3524)
!3527 = !DILocation(line: 49, column: 10, scope: !3042, inlinedAt: !3526)
!3528 = !DILocation(line: 0, scope: !2262, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 201, column: 7, scope: !3033, inlinedAt: !3524)
!3530 = !DILocation(line: 44, column: 10, scope: !2262, inlinedAt: !3529)
!3531 = !DILocation(line: 660, column: 23, scope: !3484)
!3532 = !DILocation(line: 661, column: 23, scope: !3484)
!3533 = !DILocation(line: 662, column: 23, scope: !3484)
!3534 = !DILocation(line: 663, column: 23, scope: !3484)
!3535 = !DILocation(line: 666, column: 27, scope: !3484)
!3536 = !DILocation(line: 666, column: 59, scope: !3484)
!3537 = !DILocation(line: 666, column: 26, scope: !3484)
!3538 = !DILocation(line: 667, column: 25, scope: !3484)
!3539 = !DILocation(line: 667, column: 24, scope: !3484)
!3540 = !DILocation(line: 668, column: 25, scope: !3484)
!3541 = !DILocation(line: 668, column: 24, scope: !3484)
!3542 = !DILocation(line: 669, column: 25, scope: !3484)
!3543 = !DILocation(line: 669, column: 24, scope: !3484)
!3544 = !DILocation(line: 668, column: 76, scope: !3484)
!3545 = !DILocation(line: 669, column: 76, scope: !3484)
!3546 = !DILocation(line: 669, column: 80, scope: !3484)
!3547 = !DILocation(line: 665, column: 62, scope: !3484)
!3548 = !DILocation(line: 665, column: 26, scope: !3484)
!3549 = !DILocation(line: 665, column: 15, scope: !3484)
!3550 = !DILocation(line: 665, column: 60, scope: !3484)
!3551 = !DILocation(line: 648, column: 29, scope: !3485)
!3552 = !DILocation(line: 648, column: 24, scope: !3485)
!3553 = distinct !{!3553, !3479, !3554}
!3554 = !DILocation(line: 670, column: 13, scope: !3480)
!3555 = !DILocation(line: 645, column: 27, scope: !3482)
!3556 = !DILocation(line: 645, column: 22, scope: !3482)
!3557 = distinct !{!3557, !3477, !3558}
!3558 = !DILocation(line: 671, column: 11, scope: !3478)
!3559 = !DILocation(line: 638, column: 25, scope: !3471)
!3560 = !DILocation(line: 638, column: 20, scope: !3471)
!3561 = distinct !{!3561, !3466, !3562}
!3562 = !DILocation(line: 672, column: 9, scope: !3467)
!3563 = !DILocation(line: 636, column: 45, scope: !3460)
!3564 = distinct !{!3564, !3465, !3565}
!3565 = !DILocation(line: 673, column: 7, scope: !3461)
!3566 = !DILocation(line: 675, column: 7, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3462, file: !2, line: 675, column: 7)
!3568 = !DILocation(line: 679, column: 35, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !2, line: 678, column: 9)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !2, line: 677, column: 9)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !2, line: 677, column: 9)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !2, line: 676, column: 7)
!3573 = distinct !DILexicalBlock(scope: !3567, file: !2, line: 675, column: 7)
!3574 = !DILocation(line: 679, column: 24, scope: !3569)
!3575 = !DILocation(line: 679, column: 11, scope: !3569)
!3576 = !DILocation(line: 679, column: 22, scope: !3569)
!3577 = !DILocation(line: 679, column: 18, scope: !3569)
!3578 = !DILocation(line: 675, column: 27, scope: !3573)
!3579 = !DILocation(line: 675, column: 21, scope: !3573)
!3580 = distinct !{!3580, !3566, !3581}
!3581 = !DILocation(line: 681, column: 7, scope: !3567)
!3582 = !DILocation(line: 682, column: 11, scope: !3462)
!3583 = distinct !{!3583, !3457, !3584}
!3584 = !DILocation(line: 684, column: 5, scope: !3458)
!3585 = !DILocation(line: 687, column: 17, scope: !3284)
!3586 = !DILocation(line: 687, column: 3, scope: !3284)
!3587 = !DILocation(line: 688, column: 1, scope: !3284)
!3588 = distinct !DISubprogram(name: "edgeDistortion", scope: !2, file: !2, line: 778, type: !3589, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3591)
!3589 = !DISubroutineType(cc: DW_CC_nocall, types: !3590)
!3590 = !{!18, !85, !18, !77, !77, !18, !18}
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3592 = !DILocalVariable(name: "predBlocks", arg: 1, scope: !3588, file: !2, line: 778, type: !85)
!3593 = !DILocalVariable(name: "currYBlockNum", arg: 2, scope: !3588, file: !2, line: 778, type: !18)
!3594 = !DILocalVariable(name: "predMB", arg: 3, scope: !3588, file: !2, line: 778, type: !77)
!3595 = !DILocalVariable(name: "recY", arg: 4, scope: !3588, file: !2, line: 779, type: !77)
!3596 = !DILocalVariable(name: "picSizeX", arg: 5, scope: !3588, file: !2, line: 779, type: !18)
!3597 = !DILocalVariable(name: "regionSize", arg: 6, scope: !3588, file: !2, line: 779, type: !18)
!3598 = !DILocalVariable(name: "i", scope: !3588, file: !2, line: 781, type: !18)
!3599 = !DILocalVariable(name: "j", scope: !3588, file: !2, line: 781, type: !18)
!3600 = !DILocalVariable(name: "distortion", scope: !3588, file: !2, line: 781, type: !18)
!3601 = !DILocalVariable(name: "numOfPredBlocks", scope: !3588, file: !2, line: 781, type: !18)
!3602 = !DILocalVariable(name: "threshold", scope: !3588, file: !2, line: 781, type: !18)
!3603 = !DILocalVariable(name: "currBlock", scope: !3588, file: !2, line: 782, type: !77)
!3604 = !DILocalVariable(name: "neighbor", scope: !3588, file: !2, line: 782, type: !77)
!3605 = !DILocalVariable(name: "currBlockOffset", scope: !3588, file: !2, line: 783, type: !18)
!3606 = !DILocation(line: 0, scope: !3588)
!3607 = !DILocation(line: 785, column: 23, scope: !3588)
!3608 = !DILocation(line: 785, column: 57, scope: !3588)
!3609 = !DILocation(line: 785, column: 61, scope: !3588)
!3610 = !DILocation(line: 785, column: 20, scope: !3588)
!3611 = !DILocation(line: 785, column: 74, scope: !3588)
!3612 = !DILocation(line: 785, column: 108, scope: !3588)
!3613 = !DILocation(line: 785, column: 71, scope: !3588)
!3614 = !DILocation(line: 793, column: 5, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !2, line: 793, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3588, file: !2, line: 788, column: 3)
!3617 = !DILocation(line: 796, column: 11, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !2, line: 796, column: 11)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !2, line: 794, column: 5)
!3620 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 793, column: 5)
!3621 = !DILocation(line: 796, column: 25, scope: !3618)
!3622 = !DILocation(line: 796, column: 11, scope: !3619)
!3623 = !DILocation(line: 799, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 797, column: 7)
!3625 = !DILocation(line: 0, scope: !235, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 820, column: 27, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !2, line: 819, column: 11)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !2, line: 818, column: 11)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !2, line: 818, column: 11)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 800, column: 9)
!3631 = !DILocation(line: 833, column: 24, scope: !3624)
!3632 = !DILocation(line: 0, scope: !235, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 812, column: 27, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !2, line: 811, column: 11)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 810, column: 11)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !2, line: 810, column: 11)
!3637 = !DILocation(line: 0, scope: !235, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 805, column: 27, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !2, line: 804, column: 11)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !2, line: 803, column: 11)
!3641 = distinct !DILexicalBlock(scope: !3630, file: !2, line: 803, column: 11)
!3642 = !DILocation(line: 0, scope: !3630)
!3643 = !DILocation(line: 120, column: 18, scope: !235, inlinedAt: !3642)
!3644 = !DILocation(line: 790, column: 16, scope: !3616)
!3645 = !DILocation(line: 834, column: 7, scope: !3624)
!3646 = !DILocation(line: 0, scope: !3616)
!3647 = !DILocation(line: 793, column: 25, scope: !3620)
!3648 = !DILocation(line: 793, column: 19, scope: !3620)
!3649 = distinct !{!3649, !3614, !3650}
!3650 = !DILocation(line: 835, column: 5, scope: !3615)
!3651 = !DILocation(line: 838, column: 9, scope: !3616)
!3652 = distinct !{!3652, !3653, !3654}
!3653 = !DILocation(line: 787, column: 3, scope: !3588)
!3654 = !DILocation(line: 840, column: 32, scope: !3588)
!3655 = !DILocation(line: 842, column: 6, scope: !3588)
!3656 = !DILocation(line: 847, column: 21, scope: !3588)
!3657 = !DILocation(line: 847, column: 3, scope: !3588)
!3658 = !DILocation(line: 848, column: 1, scope: !3588)
!3659 = distinct !DISubprogram(name: "copyPredMB", scope: !2, file: !2, line: 708, type: !3660, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3662)
!3660 = !DISubroutineType(cc: DW_CC_nocall, types: !3661)
!3661 = !{null, !18, !77, !256, !18, !18}
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679}
!3663 = !DILocalVariable(name: "currYBlockNum", arg: 1, scope: !3659, file: !2, line: 708, type: !18)
!3664 = !DILocalVariable(name: "predMB", arg: 2, scope: !3659, file: !2, line: 708, type: !77)
!3665 = !DILocalVariable(name: "recfr", arg: 3, scope: !3659, file: !2, line: 708, type: !256)
!3666 = !DILocalVariable(name: "picSizeX", arg: 4, scope: !3659, file: !2, line: 709, type: !18)
!3667 = !DILocalVariable(name: "regionSize", arg: 5, scope: !3659, file: !2, line: 709, type: !18)
!3668 = !DILocalVariable(name: "p_Vid", scope: !3659, file: !2, line: 711, type: !262)
!3669 = !DILocalVariable(name: "dec_picture", scope: !3659, file: !2, line: 712, type: !91)
!3670 = !DILocalVariable(name: "j", scope: !3659, file: !2, line: 713, type: !18)
!3671 = !DILocalVariable(name: "k", scope: !3659, file: !2, line: 713, type: !18)
!3672 = !DILocalVariable(name: "xmin", scope: !3659, file: !2, line: 713, type: !18)
!3673 = !DILocalVariable(name: "ymin", scope: !3659, file: !2, line: 713, type: !18)
!3674 = !DILocalVariable(name: "xmax", scope: !3659, file: !2, line: 713, type: !18)
!3675 = !DILocalVariable(name: "ymax", scope: !3659, file: !2, line: 713, type: !18)
!3676 = !DILocalVariable(name: "locationTmp", scope: !3659, file: !2, line: 714, type: !18)
!3677 = !DILocalVariable(name: "locationPred", scope: !3659, file: !2, line: 714, type: !18)
!3678 = !DILocalVariable(name: "uv_x", scope: !3659, file: !2, line: 715, type: !18)
!3679 = !DILocalVariable(name: "uv_y", scope: !3659, file: !2, line: 716, type: !18)
!3680 = !DILocation(line: 0, scope: !3659)
!3681 = !DILocation(line: 712, column: 41, scope: !3659)
!3682 = !DILocation(line: 715, column: 37, scope: !3659)
!3683 = !DILocation(line: 715, column: 14, scope: !3659)
!3684 = !DILocation(line: 716, column: 14, scope: !3659)
!3685 = !DILocation(line: 718, column: 11, scope: !3659)
!3686 = !DILocation(line: 718, column: 45, scope: !3659)
!3687 = !DILocation(line: 719, column: 11, scope: !3659)
!3688 = !DILocation(line: 719, column: 45, scope: !3659)
!3689 = !DILocation(line: 721, column: 28, scope: !3659)
!3690 = !DILocation(line: 723, column: 3, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3659, file: !2, line: 723, column: 3)
!3692 = !DILocation(line: 729, column: 33, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !2, line: 726, column: 5)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !2, line: 725, column: 5)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 725, column: 5)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !2, line: 724, column: 3)
!3697 = distinct !DILexicalBlock(scope: !3691, file: !2, line: 723, column: 3)
!3698 = !DILocation(line: 729, column: 20, scope: !3693)
!3699 = !DILocation(line: 729, column: 7, scope: !3693)
!3700 = !DILocation(line: 729, column: 31, scope: !3693)
!3701 = !DILocation(line: 728, column: 35, scope: !3693)
!3702 = !DILocation(line: 723, column: 30, scope: !3697)
!3703 = !DILocation(line: 723, column: 20, scope: !3697)
!3704 = distinct !{!3704, !3690, !3705}
!3705 = !DILocation(line: 731, column: 3, scope: !3691)
!3706 = !DILocation(line: 720, column: 28, scope: !3659)
!3707 = !DILocation(line: 733, column: 20, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3659, file: !2, line: 733, column: 7)
!3709 = !DILocation(line: 733, column: 38, scope: !3708)
!3710 = !DILocation(line: 733, column: 7, scope: !3659)
!3711 = !DILocation(line: 735, column: 19, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !2, line: 735, column: 5)
!3713 = distinct !DILexicalBlock(scope: !3708, file: !2, line: 734, column: 3)
!3714 = !DILocation(line: 735, column: 30, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !2, line: 735, column: 5)
!3716 = !DILocation(line: 735, column: 5, scope: !3712)
!3717 = !DILocation(line: 737, column: 7, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 737, column: 7)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !2, line: 736, column: 5)
!3720 = !DILocation(line: 740, column: 49, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 738, column: 7)
!3722 = distinct !DILexicalBlock(scope: !3718, file: !2, line: 737, column: 7)
!3723 = !DILocation(line: 740, column: 40, scope: !3721)
!3724 = !DILocation(line: 740, column: 66, scope: !3721)
!3725 = !DILocation(line: 740, column: 62, scope: !3721)
!3726 = !DILocation(line: 741, column: 39, scope: !3721)
!3727 = !DILocation(line: 741, column: 22, scope: !3721)
!3728 = !DILocation(line: 741, column: 9, scope: !3721)
!3729 = !DILocation(line: 741, column: 37, scope: !3721)
!3730 = !DILocation(line: 745, column: 39, scope: !3721)
!3731 = !DILocation(line: 745, column: 22, scope: !3721)
!3732 = !DILocation(line: 745, column: 9, scope: !3721)
!3733 = !DILocation(line: 745, column: 37, scope: !3721)
!3734 = !DILocation(line: 737, column: 50, scope: !3722)
!3735 = !DILocation(line: 737, column: 32, scope: !3722)
!3736 = distinct !{!3736, !3717, !3737}
!3737 = !DILocation(line: 746, column: 7, scope: !3718)
!3738 = !DILocation(line: 735, column: 48, scope: !3715)
!3739 = distinct !{!3739, !3716, !3740}
!3740 = !DILocation(line: 747, column: 5, scope: !3712)
!3741 = !DILocation(line: 749, column: 1, scope: !3659)
!3742 = !DISubprogram(name: "get_mem2Dpel", scope: !1516, file: !1516, line: 77, type: !3743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!18, !134, !18, !18}
!3745 = !DISubprogram(name: "get_block_luma", scope: !3746, file: !3746, line: 26, type: !3747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3746 = !DIFile(filename: "ldecod_src/inc/mc_prediction.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b29b7430ebaae75df281117d292611ae")
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !91, !18, !18, !18, !18, !132, !18, !18, !18, !517, !18, !78, !747}
!3749 = !DISubprogram(name: "free_mem2Dpel", scope: !1516, file: !1516, line: 157, type: !3750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !132}
!3752 = !DISubprogram(name: "init_lists", scope: !93, file: !93, line: 238, type: !3753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !608}
