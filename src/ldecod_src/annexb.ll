; ModuleID = 'ldecod_src/annexb.c'
source_filename = "ldecod_src/annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [42 x i8] c"Memory allocation for Annex_B file failed\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"GetAnnexbNALU: Buf\00", align 1, !dbg !7
@.str.6 = private unnamed_addr constant [49 x i8] c"OpenAnnexBFile: tried to open Annex B file twice\00", align 1, !dbg !12
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot open Annex B ByteStream file '%s'\00", align 1, !dbg !17
@.str.8 = private unnamed_addr constant [42 x i8] c"OpenAnnexBFile: cannot allocate IO buffer\00", align 1, !dbg !22
@str.9 = private unnamed_addr constant [110 x i8] c"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1\00", align 1
@str.10 = private unnamed_addr constant [69 x i8] c"GetAnnexbNALU: no Start Code at the beginning of the NALU, return -1\00", align 1
@str.11 = private unnamed_addr constant [36 x i8] c"GetAnnexbNALU can't read start code\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @malloc_annex_b(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 !dbg !141 {
entry:
    #dbg_value(ptr %p_Vid, !1340, !DIExpression(), !1341)
  %call = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #14, !dbg !1342
  %annex_b = getelementptr inbounds i8, ptr %p_Vid, i64 856608, !dbg !1344
  store ptr %call, ptr %annex_b, align 8, !dbg !1345
  %cmp = icmp eq ptr %call, null, !dbg !1346
  br i1 %cmp, label %if.then, label %if.end, !dbg !1347

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) @errortext, ptr noundef nonnull align 1 dereferenceable(42) @.str, i64 42, i1 false), !dbg !1348
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #15, !dbg !1350
  %.pre = load ptr, ptr %annex_b, align 8, !dbg !1351
  br label %if.end, !dbg !1353

if.end:                                           ; preds = %if.then, %entry
  %0 = phi ptr [ %.pre, %if.then ], [ %call, %entry ], !dbg !1351
  %nalu = getelementptr inbounds i8, ptr %p_Vid, i64 856832, !dbg !1354
  %1 = load ptr, ptr %nalu, align 8, !dbg !1354
  %max_size = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1355
  %2 = load i32, ptr %max_size, align 8, !dbg !1355
  %conv = zext i32 %2 to i64, !dbg !1356
  %call2 = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !1357
  %Buf = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1358
  store ptr %call2, ptr %Buf, align 8, !dbg !1359
  %cmp4 = icmp eq ptr %call2, null, !dbg !1360
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1361

if.then6:                                         ; preds = %if.end
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 101) #15, !dbg !1362
  br label %if.end7, !dbg !1364

if.end7:                                          ; preds = %if.then6, %if.end
  ret void, !dbg !1365
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1366 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !1373 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !1382 void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1385 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_annex_b(ptr nocapture noundef writeonly %annex_b) local_unnamed_addr #5 !dbg !1388 {
entry:
    #dbg_value(ptr %annex_b, !1392, !DIExpression(), !1393)
  store i32 -1, ptr %annex_b, align 8, !dbg !1394
  %iobuffer = getelementptr inbounds i8, ptr %annex_b, i64 8, !dbg !1395
  %IsFirstByteStreamNALU = getelementptr inbounds i8, ptr %annex_b, i64 36, !dbg !1396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %iobuffer, i8 0, i64 24, i1 false), !dbg !1397
  store i32 1, ptr %IsFirstByteStreamNALU, align 4, !dbg !1398
  %nextstartcodebytes = getelementptr inbounds i8, ptr %annex_b, i64 40, !dbg !1399
  store i32 0, ptr %nextstartcodebytes, align 8, !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_annex_b(ptr nocapture noundef %p_Vid) local_unnamed_addr #6 !dbg !1402 {
entry:
    #dbg_value(ptr %p_Vid, !1404, !DIExpression(), !1405)
  %annex_b = getelementptr inbounds i8, ptr %p_Vid, i64 856608, !dbg !1406
  %0 = load ptr, ptr %annex_b, align 8, !dbg !1406
  %Buf = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1407
  %1 = load ptr, ptr %Buf, align 8, !dbg !1407
  tail call void @free(ptr noundef %1) #15, !dbg !1408
  %2 = load ptr, ptr %annex_b, align 8, !dbg !1409
  %Buf2 = getelementptr inbounds i8, ptr %2, i64 48, !dbg !1410
  store ptr null, ptr %Buf2, align 8, !dbg !1411
  %3 = load ptr, ptr %annex_b, align 8, !dbg !1412
  tail call void @free(ptr noundef %3) #15, !dbg !1413
  store ptr null, ptr %annex_b, align 8, !dbg !1414
  ret void, !dbg !1415
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1416 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @GetAnnexbNALU(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef %nalu) local_unnamed_addr #8 !dbg !1419 {
entry:
    #dbg_value(ptr %p_Vid, !1425, !DIExpression(), !1435)
    #dbg_value(ptr %nalu, !1426, !DIExpression(), !1435)
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608, !dbg !1436
  %0 = load ptr, ptr %annex_b1, align 8, !dbg !1436
    #dbg_value(ptr %0, !1427, !DIExpression(), !1435)
    #dbg_value(i32 0, !1429, !DIExpression(), !1435)
    #dbg_value(i32 0, !1430, !DIExpression(), !1435)
    #dbg_value(i32 0, !1431, !DIExpression(), !1435)
    #dbg_value(i32 0, !1432, !DIExpression(), !1435)
    #dbg_value(i32 0, !1433, !DIExpression(), !1435)
  %Buf = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1437
  %1 = load ptr, ptr %Buf, align 8, !dbg !1437
    #dbg_value(ptr %1, !1434, !DIExpression(), !1435)
  %nextstartcodebytes = getelementptr inbounds i8, ptr %0, i64 40, !dbg !1438
  %2 = load i32, ptr %nextstartcodebytes, align 8, !dbg !1438
  %cmp.not = icmp eq i32 %2, 0, !dbg !1440
  br i1 %cmp.not, label %while.cond.preheader, label %for.cond.preheader, !dbg !1441

for.cond.preheader:                               ; preds = %entry
    #dbg_value(ptr %1, !1434, !DIExpression(), !1435)
    #dbg_value(i32 0, !1431, !DIExpression(), !1435)
    #dbg_value(i32 0, !1428, !DIExpression(), !1435)
  %cmp3263 = icmp sgt i32 %2, 1, !dbg !1442
  br i1 %cmp3263, label %for.body, label %for.end, !dbg !1446

while.cond.preheader:                             ; preds = %entry
  %is_eof = getelementptr inbounds i8, ptr %0, i64 28
  %bytesinbuffer.i = getelementptr inbounds i8, ptr %0, i64 24
  %iobufferread.phi.trans.insert.i = getelementptr inbounds i8, ptr %0, i64 16
  %iobuffer.i.i = getelementptr inbounds i8, ptr %0, i64 8
  %iIOBufferSize.i.i = getelementptr inbounds i8, ptr %0, i64 32
  br label %while.cond, !dbg !1447

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %pBuf.0266 = phi ptr [ %incdec.ptr, %for.body ], [ %1, %for.cond.preheader ]
  %pos.0265 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
    #dbg_value(ptr %pBuf.0266, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %pos.0265, !1431, !DIExpression(), !1435)
    #dbg_value(i32 %pos.0265, !1428, !DIExpression(), !1435)
  %incdec.ptr = getelementptr inbounds i8, ptr %pBuf.0266, i64 1, !dbg !1449
    #dbg_value(ptr %incdec.ptr, !1434, !DIExpression(), !1435)
  store i8 0, ptr %pBuf.0266, align 1, !dbg !1451
  %inc = add nuw nsw i32 %pos.0265, 1, !dbg !1452
    #dbg_value(i32 %inc, !1431, !DIExpression(), !1435)
    #dbg_value(i32 %inc, !1428, !DIExpression(), !1435)
  %3 = load i32, ptr %nextstartcodebytes, align 8, !dbg !1453
  %sub = add nsw i32 %3, -1, !dbg !1454
  %cmp3 = icmp slt i32 %inc, %sub, !dbg !1442
  br i1 %cmp3, label %for.body, label %for.end.loopexit, !dbg !1446, !llvm.loop !1455

for.end.loopexit:                                 ; preds = %for.body
  %4 = add nuw nsw i32 %pos.0265, 2, !dbg !1457
  br label %for.end, !dbg !1458

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %pos.0.lcssa = phi i32 [ 1, %for.cond.preheader ], [ %4, %for.end.loopexit ], !dbg !1435
  %pBuf.0.lcssa = phi ptr [ %1, %for.cond.preheader ], [ %incdec.ptr, %for.end.loopexit ], !dbg !1435
  %incdec.ptr5 = getelementptr inbounds i8, ptr %pBuf.0.lcssa, i64 1, !dbg !1458
    #dbg_value(ptr %incdec.ptr5, !1434, !DIExpression(), !1435)
  store i8 1, ptr %pBuf.0.lcssa, align 1, !dbg !1459
    #dbg_value(i32 %pos.0.lcssa, !1431, !DIExpression(), !1435)
  br label %if.end12, !dbg !1460

while.cond:                                       ; preds = %while.cond.preheader, %getfbyte.exit
  %pos.1 = phi i32 [ %inc7, %getfbyte.exit ], [ 0, %while.cond.preheader ], !dbg !1435
  %pBuf.1 = phi ptr [ %incdec.ptr8, %getfbyte.exit ], [ %1, %while.cond.preheader ], !dbg !1435
    #dbg_value(ptr %pBuf.1, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %pos.1, !1431, !DIExpression(), !1435)
  %5 = load i32, ptr %is_eof, align 4, !dbg !1461
  %tobool.not = icmp eq i32 %5, 0, !dbg !1462
  br i1 %tobool.not, label %while.body, label %if.end12, !dbg !1447

while.body:                                       ; preds = %while.cond
  %inc7 = add nuw nsw i32 %pos.1, 1, !dbg !1463
    #dbg_value(i32 %inc7, !1431, !DIExpression(), !1435)
    #dbg_value(ptr %0, !1465, !DIExpression(), !1470)
  %6 = load i32, ptr %bytesinbuffer.i, align 8, !dbg !1473
  %cmp.i = icmp eq i32 %6, 0, !dbg !1475
  br i1 %cmp.i, label %if.then.i, label %if.end3.i, !dbg !1476

if.then.i:                                        ; preds = %while.body
    #dbg_value(ptr %0, !1477, !DIExpression(), !1483)
  %7 = load i32, ptr %0, align 8, !dbg !1487
  %8 = load ptr, ptr %iobuffer.i.i, align 8, !dbg !1488
  %9 = load i32, ptr %iIOBufferSize.i.i, align 8, !dbg !1489
  %conv.i.i = sext i32 %9 to i64, !dbg !1490
  %call.i.i = tail call i64 @read(i32 noundef %7, ptr noundef %8, i64 noundef %conv.i.i) #15, !dbg !1491
  %conv1.i.i = trunc i64 %call.i.i to i32, !dbg !1491
    #dbg_value(i32 %conv1.i.i, !1482, !DIExpression(), !1483)
  %cmp.i.i = icmp eq i32 %conv1.i.i, 0, !dbg !1492
  br i1 %cmp.i.i, label %getChunk.exit.thread.i, label %if.end3.i, !dbg !1494

getChunk.exit.thread.i:                           ; preds = %if.then.i
  store i32 1, ptr %is_eof, align 4, !dbg !1495
  br label %getfbyte.exit, !dbg !1497

if.end3.i:                                        ; preds = %while.body, %if.then.i
  %iobufferread.phi.trans.insert.sink.i = phi ptr [ %iobuffer.i.i, %if.then.i ], [ %iobufferread.phi.trans.insert.i, %while.body ]
  %10 = phi i32 [ %conv1.i.i, %if.then.i ], [ %6, %while.body ], !dbg !1498
  %.pre.i = load ptr, ptr %iobufferread.phi.trans.insert.sink.i, align 8, !dbg !1470
  %dec.i = add nsw i32 %10, -1, !dbg !1498
  store i32 %dec.i, ptr %bytesinbuffer.i, align 8, !dbg !1498
  %incdec.ptr.i = getelementptr inbounds i8, ptr %.pre.i, i64 1, !dbg !1499
  store ptr %incdec.ptr.i, ptr %iobufferread.phi.trans.insert.i, align 8, !dbg !1499
  %11 = load i8, ptr %.pre.i, align 1, !dbg !1500
  br label %getfbyte.exit, !dbg !1501

getfbyte.exit:                                    ; preds = %getChunk.exit.thread.i, %if.end3.i
  %retval.0.i = phi i8 [ %11, %if.end3.i ], [ 0, %getChunk.exit.thread.i ], !dbg !1470
  %incdec.ptr8 = getelementptr inbounds i8, ptr %pBuf.1, i64 1, !dbg !1502
    #dbg_value(ptr %incdec.ptr8, !1434, !DIExpression(), !1435)
  store i8 %retval.0.i, ptr %pBuf.1, align 1, !dbg !1503
  %cmp9.not = icmp eq i8 %retval.0.i, 0, !dbg !1504
  br i1 %cmp9.not, label %while.cond, label %if.end12, !dbg !1505, !llvm.loop !1506

if.end12:                                         ; preds = %while.cond, %getfbyte.exit, %for.end
  %pos.2 = phi i32 [ %pos.0.lcssa, %for.end ], [ %pos.1, %while.cond ], [ %inc7, %getfbyte.exit ], !dbg !1435
  %pBuf.2 = phi ptr [ %incdec.ptr5, %for.end ], [ %pBuf.1, %while.cond ], [ %incdec.ptr8, %getfbyte.exit ], !dbg !1435
    #dbg_value(ptr %pBuf.2, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %pos.2, !1431, !DIExpression(), !1435)
  %is_eof13 = getelementptr inbounds i8, ptr %0, i64 28, !dbg !1508
  %12 = load i32, ptr %is_eof13, align 4, !dbg !1508
  %cmp14 = icmp eq i32 %12, 1, !dbg !1510
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !1511

if.then16:                                        ; preds = %if.end12
  %cmp17 = icmp eq i32 %pos.2, 0, !dbg !1512
  br i1 %cmp17, label %cleanup, label %if.else20, !dbg !1515

if.else20:                                        ; preds = %if.then16
  %puts216 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11), !dbg !1516
  br label %cleanup, !dbg !1518

if.end22:                                         ; preds = %if.end12
  %add.ptr = getelementptr inbounds i8, ptr %pBuf.2, i64 -1, !dbg !1519
  %13 = load i8, ptr %add.ptr, align 1, !dbg !1521
  %cmp24 = icmp ne i8 %13, 1, !dbg !1522
  %cmp26 = icmp slt i32 %pos.2, 3
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp26, !dbg !1523
  br i1 %or.cond, label %if.then28, label %if.end30, !dbg !1523

if.then28:                                        ; preds = %if.end22
  %puts215 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10), !dbg !1524
  br label %cleanup, !dbg !1526

if.end30:                                         ; preds = %if.end22
  %cmp31 = icmp eq i32 %pos.2, 3, !dbg !1527
  %14 = icmp ugt i32 %pos.2, 4, !dbg !1529
  %storemerge = select i1 %cmp31, i32 3, i32 4, !dbg !1529
  store i32 %storemerge, ptr %nalu, align 8, !dbg !1530
    #dbg_value(i1 %14, !1433, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1435)
  %IsFirstByteStreamNALU = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1531
  %15 = load i32, ptr %IsFirstByteStreamNALU, align 4, !dbg !1531
  %tobool38 = icmp eq i32 %15, 0, !dbg !1533
  %or.cond145 = select i1 %tobool38, i1 %14, i1 false, !dbg !1534
  br i1 %or.cond145, label %if.then41, label %if.end43, !dbg !1534

if.then41:                                        ; preds = %if.end30
  %puts214 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9), !dbg !1535
  br label %cleanup, !dbg !1537

if.end43:                                         ; preds = %if.end30
    #dbg_value(i32 %pos.2, !1433, !DIExpression(), !1435)
  store i32 0, ptr %IsFirstByteStreamNALU, align 4, !dbg !1538
    #dbg_value(ptr %pBuf.2, !1434, !DIExpression(), !1435)
    #dbg_value(i32 0, !1432, !DIExpression(), !1435)
    #dbg_value(i32 %pos.2, !1431, !DIExpression(), !1435)
    #dbg_value(i32 0, !1430, !DIExpression(), !1435)
    #dbg_value(i32 0, !1429, !DIExpression(), !1435)
  %bytesinbuffer.i217 = getelementptr inbounds i8, ptr %0, i64 24
  %iobufferread.phi.trans.insert.i220 = getelementptr inbounds i8, ptr %0, i64 16
  %iobuffer.i.i229 = getelementptr inbounds i8, ptr %0, i64 8
  %iIOBufferSize.i.i230 = getelementptr inbounds i8, ptr %0, i64 32
  br label %while.body48, !dbg !1539

while.body48:                                     ; preds = %if.end43, %if.end91
  %pBuf.3270 = phi ptr [ %pBuf.2, %if.end43 ], [ %incdec.ptr81, %if.end91 ]
  %pos.3269 = phi i32 [ %pos.2, %if.end43 ], [ %inc79, %if.end91 ]
    #dbg_value(ptr %pBuf.3270, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %pos.3269, !1431, !DIExpression(), !1435)
    #dbg_value(i32 poison, !1429, !DIExpression(), !1435)
  %16 = load i32, ptr %is_eof13, align 4, !dbg !1540
  %cmp50 = icmp eq i32 %16, 1, !dbg !1543
  br i1 %cmp50, label %if.then52, label %if.end78, !dbg !1544

if.then52:                                        ; preds = %while.body48
  %add.ptr53 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -2, !dbg !1545
    #dbg_value(i32 %pos.3269, !1431, !DIExpression(), !1435)
    #dbg_value(ptr %add.ptr53, !1434, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1435)
  %17 = load i8, ptr %add.ptr53, align 1, !dbg !1547
  %cmp57275 = icmp eq i8 %17, 0, !dbg !1548
  br i1 %cmp57275, label %while.body59, label %while.end60, !dbg !1549

while.body59:                                     ; preds = %if.then52, %while.body59
  %pBuf.4277 = phi ptr [ %incdec.ptr55, %while.body59 ], [ %add.ptr53, %if.then52 ]
  %pos.4276 = phi i32 [ %dec, %while.body59 ], [ %pos.3269, %if.then52 ]
    #dbg_value(ptr %pBuf.4277, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %pos.4276, !1431, !DIExpression(), !1435)
  %incdec.ptr55 = getelementptr inbounds i8, ptr %pBuf.4277, i64 -1, !dbg !1550
    #dbg_value(ptr %incdec.ptr55, !1434, !DIExpression(), !1435)
  %dec = add nsw i32 %pos.4276, -1, !dbg !1551
    #dbg_value(i32 %dec, !1431, !DIExpression(), !1435)
    #dbg_value(ptr %incdec.ptr55, !1434, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1435)
  %18 = load i8, ptr %incdec.ptr55, align 1, !dbg !1547
  %cmp57 = icmp eq i8 %18, 0, !dbg !1548
  br i1 %cmp57, label %while.body59, label %while.end60, !dbg !1549, !llvm.loop !1552

while.end60:                                      ; preds = %while.body59, %if.then52
  %pos.4.lcssa = phi i32 [ %pos.3269, %if.then52 ], [ %dec, %while.body59 ], !dbg !1435
  %sub61 = add nsw i32 %pos.4.lcssa, -1, !dbg !1553
  %sub62 = sub nsw i32 %sub61, %pos.2, !dbg !1554
  %len = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !1555
  store i32 %sub62, ptr %len, align 4, !dbg !1556
  %buf = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !1557
  %19 = load ptr, ptr %buf, align 8, !dbg !1557
  %20 = load ptr, ptr %Buf, align 8, !dbg !1558
  %idx.ext = zext nneg i32 %pos.2 to i64, !dbg !1559
  %add.ptr64 = getelementptr inbounds i8, ptr %20, i64 %idx.ext, !dbg !1559
  %conv66 = zext i32 %sub62 to i64, !dbg !1560
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %add.ptr64, i64 %conv66, i1 false), !dbg !1561
  %21 = load ptr, ptr %buf, align 8, !dbg !1562
  %22 = load i8, ptr %21, align 1, !dbg !1563
  %23 = lshr i8 %22, 7, !dbg !1564
  %shr = zext nneg i8 %23 to i32, !dbg !1564
  %forbidden_bit = getelementptr inbounds i8, ptr %nalu, i64 12, !dbg !1565
  store i32 %shr, ptr %forbidden_bit, align 4, !dbg !1566
  %24 = load i8, ptr %21, align 1, !dbg !1567
  %25 = lshr i8 %24, 5, !dbg !1568
  %26 = and i8 %25, 3, !dbg !1569
  %and72 = zext nneg i8 %26 to i32, !dbg !1569
  %nal_reference_idc = getelementptr inbounds i8, ptr %nalu, i64 20, !dbg !1570
  store i32 %and72, ptr %nal_reference_idc, align 4, !dbg !1571
  %27 = load i8, ptr %21, align 1, !dbg !1572
  %28 = and i8 %27, 31, !dbg !1573
  %and75 = zext nneg i8 %28 to i32, !dbg !1573
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16, !dbg !1574
  store i32 %and75, ptr %nal_unit_type, align 8, !dbg !1575
  store i32 0, ptr %nextstartcodebytes, align 8, !dbg !1576
  br label %cleanup, !dbg !1577

if.end78:                                         ; preds = %while.body48
  %inc79 = add nuw nsw i32 %pos.3269, 1, !dbg !1578
    #dbg_value(i32 %inc79, !1431, !DIExpression(), !1435)
    #dbg_value(ptr %0, !1465, !DIExpression(), !1579)
  %29 = load i32, ptr %bytesinbuffer.i217, align 8, !dbg !1581
  %cmp.i218 = icmp eq i32 %29, 0, !dbg !1582
  br i1 %cmp.i218, label %if.then.i228, label %if.end3.i221, !dbg !1583

if.then.i228:                                     ; preds = %if.end78
    #dbg_value(ptr %0, !1477, !DIExpression(), !1584)
  %30 = load i32, ptr %0, align 8, !dbg !1586
  %31 = load ptr, ptr %iobuffer.i.i229, align 8, !dbg !1587
  %32 = load i32, ptr %iIOBufferSize.i.i230, align 8, !dbg !1588
  %conv.i.i231 = sext i32 %32 to i64, !dbg !1589
  %call.i.i232 = tail call i64 @read(i32 noundef %30, ptr noundef %31, i64 noundef %conv.i.i231) #15, !dbg !1590
  %conv1.i.i233 = trunc i64 %call.i.i232 to i32, !dbg !1590
    #dbg_value(i32 %conv1.i.i233, !1482, !DIExpression(), !1584)
  %cmp.i.i234 = icmp eq i32 %conv1.i.i233, 0, !dbg !1591
  br i1 %cmp.i.i234, label %getChunk.exit.thread.i235, label %if.end3.i221, !dbg !1592

getChunk.exit.thread.i235:                        ; preds = %if.then.i228
  store i32 1, ptr %is_eof13, align 4, !dbg !1593
  br label %getfbyte.exit237, !dbg !1594

if.end3.i221:                                     ; preds = %if.end78, %if.then.i228
  %iobufferread.phi.trans.insert.sink.i222 = phi ptr [ %iobuffer.i.i229, %if.then.i228 ], [ %iobufferread.phi.trans.insert.i220, %if.end78 ]
  %33 = phi i32 [ %conv1.i.i233, %if.then.i228 ], [ %29, %if.end78 ], !dbg !1595
  %.pre.i223 = load ptr, ptr %iobufferread.phi.trans.insert.sink.i222, align 8, !dbg !1579
  %dec.i224 = add nsw i32 %33, -1, !dbg !1595
  store i32 %dec.i224, ptr %bytesinbuffer.i217, align 8, !dbg !1595
  %incdec.ptr.i226 = getelementptr inbounds i8, ptr %.pre.i223, i64 1, !dbg !1596
  store ptr %incdec.ptr.i226, ptr %iobufferread.phi.trans.insert.i220, align 8, !dbg !1596
  %34 = load i8, ptr %.pre.i223, align 1, !dbg !1597
  br label %getfbyte.exit237, !dbg !1598

getfbyte.exit237:                                 ; preds = %getChunk.exit.thread.i235, %if.end3.i221
  %35 = phi i8 [ %34, %if.end3.i221 ], [ 0, %getChunk.exit.thread.i235 ], !dbg !1579
  %incdec.ptr81 = getelementptr inbounds i8, ptr %pBuf.3270, i64 1, !dbg !1599
    #dbg_value(ptr %incdec.ptr81, !1434, !DIExpression(), !1435)
  store i8 %35, ptr %pBuf.3270, align 1, !dbg !1600
  %add.ptr82 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -3, !dbg !1601
    #dbg_value(i32 3, !1602, !DIExpression(), !1609)
    #dbg_value(i32 0, !1608, !DIExpression(), !1609)
    #dbg_value(ptr %add.ptr82, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1609)
  %36 = load i8, ptr %add.ptr82, align 1, !dbg !1611
  %cmp1.not.i = icmp eq i8 %36, 0, !dbg !1616
  %incdec.ptr.i239 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -2
  %37 = load i8, ptr %incdec.ptr.i239, align 1, !dbg !1617
  %cmp1.not.i.1 = icmp eq i8 %37, 0, !dbg !1619
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then86, !dbg !1620

for.inc.i:                                        ; preds = %getfbyte.exit237
    #dbg_value(i32 1, !1608, !DIExpression(), !1609)
    #dbg_value(ptr %incdec.ptr.i239, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1609)
  br i1 %cmp1.not.i.1, label %for.inc.i.1, label %if.end91, !dbg !1620

for.inc.i.1:                                      ; preds = %for.inc.i
  %incdec.ptr.i239.1 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -1, !dbg !1621
    #dbg_value(i32 2, !1608, !DIExpression(), !1609)
    #dbg_value(ptr %incdec.ptr.i239.1, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1609)
  %38 = load i8, ptr %incdec.ptr.i239.1, align 1, !dbg !1611
  %cmp1.not.i.2 = icmp eq i8 %38, 0, !dbg !1616
    #dbg_value(ptr %incdec.ptr.i239.1, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1609)
    #dbg_value(i32 3, !1608, !DIExpression(), !1609)
  %cmp4.not.i.not = icmp eq i8 %35, 1
    #dbg_value(i1 %cmp4.not.i.not, !1430, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1435)
  %or.cond299 = select i1 %cmp1.not.i.2, i1 %cmp4.not.i.not, i1 false, !dbg !1620
  br i1 %or.cond299, label %if.then95, label %for.inc.i246, !dbg !1620

if.then86:                                        ; preds = %getfbyte.exit237
    #dbg_value(i32 2, !1602, !DIExpression(), !1622)
    #dbg_value(i32 0, !1608, !DIExpression(), !1622)
    #dbg_value(ptr %pBuf.3270, !1607, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !1622)
  br i1 %cmp1.not.i.1, label %for.inc.i246, label %if.end91, !dbg !1626

for.inc.i246:                                     ; preds = %for.inc.i.1, %if.then86
    #dbg_value(ptr %pBuf.3270, !1607, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !1622)
  %incdec.ptr.i247 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -1, !dbg !1627
    #dbg_value(i32 1, !1608, !DIExpression(), !1622)
    #dbg_value(ptr %incdec.ptr.i247, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1622)
  %39 = load i8, ptr %incdec.ptr.i247, align 1, !dbg !1628
  %cmp1.not.i244.1 = icmp eq i8 %39, 0, !dbg !1629
  br i1 %cmp1.not.i244.1, label %for.inc.i246.1, label %if.end91, !dbg !1626

for.inc.i246.1:                                   ; preds = %for.inc.i246
    #dbg_value(ptr %incdec.ptr.i247, !1607, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1622)
    #dbg_value(i32 2, !1608, !DIExpression(), !1622)
  %cmp4.not.i251 = icmp eq i8 %35, 1, !dbg !1630
  %..i252 = zext i1 %cmp4.not.i251 to i32, !dbg !1622
  br label %if.end91, !dbg !1622

if.end91:                                         ; preds = %for.inc.i, %if.then86, %for.inc.i246, %for.inc.i246.1
  %info2.1 = phi i32 [ %..i252, %for.inc.i246.1 ], [ 0, %for.inc.i246 ], [ 0, %if.then86 ], [ 0, %for.inc.i ], !dbg !1435
    #dbg_value(ptr %incdec.ptr81, !1434, !DIExpression(), !1435)
    #dbg_value(i32 %info2.1, !1432, !DIExpression(), !1435)
    #dbg_value(i32 %inc79, !1431, !DIExpression(), !1435)
    #dbg_value(i32 poison, !1430, !DIExpression(), !1435)
    #dbg_value(i32 %info2.1, !1429, !DIExpression(), !1435)
  %tobool46.not = icmp eq i32 %info2.1, 0, !dbg !1632
  br i1 %tobool46.not, label %while.body48, label %if.end114, !dbg !1539, !llvm.loop !1633

if.then95:                                        ; preds = %for.inc.i.1
    #dbg_value(ptr %incdec.ptr81, !1434, !DIExpression(), !1435)
    #dbg_value(i32 1, !1432, !DIExpression(), !1435)
    #dbg_value(i32 %inc79, !1431, !DIExpression(), !1435)
    #dbg_value(i32 poison, !1430, !DIExpression(), !1435)
    #dbg_value(i32 poison, !1429, !DIExpression(), !1435)
  %add.ptr96 = getelementptr inbounds i8, ptr %pBuf.3270, i64 -4, !dbg !1635
    #dbg_value(ptr %add.ptr96, !1434, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1435)
  %40 = load i8, ptr %add.ptr96, align 1, !dbg !1638
  %cmp100271 = icmp eq i8 %40, 0, !dbg !1639
  br i1 %cmp100271, label %while.body102, label %if.end114, !dbg !1640

while.body102:                                    ; preds = %if.then95, %while.body102
  %pBuf.5273 = phi ptr [ %incdec.ptr98, %while.body102 ], [ %add.ptr96, %if.then95 ]
  %pos.5272 = phi i32 [ %dec103, %while.body102 ], [ %inc79, %if.then95 ]
    #dbg_value(ptr %pBuf.5273, !1434, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1435)
    #dbg_value(i32 %pos.5272, !1431, !DIExpression(), !1435)
  %incdec.ptr98 = getelementptr inbounds i8, ptr %pBuf.5273, i64 -1, !dbg !1641
    #dbg_value(ptr %incdec.ptr98, !1434, !DIExpression(), !1435)
  %dec103 = add nsw i32 %pos.5272, -1, !dbg !1642
    #dbg_value(i32 %dec103, !1431, !DIExpression(), !1435)
    #dbg_value(ptr %incdec.ptr98, !1434, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1435)
  %41 = load i8, ptr %incdec.ptr98, align 1, !dbg !1638
  %cmp100 = icmp eq i8 %41, 0, !dbg !1639
  br i1 %cmp100, label %while.body102, label %if.end114, !dbg !1640, !llvm.loop !1643

if.end114:                                        ; preds = %if.end91, %while.body102, %if.then95
  %storemerge213 = phi i32 [ 4, %if.then95 ], [ 4, %while.body102 ], [ 3, %if.end91 ], !dbg !1644
  %pos.6 = phi i32 [ %inc79, %if.then95 ], [ %dec103, %while.body102 ], [ %inc79, %if.end91 ], !dbg !1457
  store i32 %storemerge213, ptr %nextstartcodebytes, align 8, !dbg !1644
    #dbg_value(i32 %pos.6, !1431, !DIExpression(), !1435)
  %sub116 = sub nsw i32 %pos.6, %storemerge213, !dbg !1645
    #dbg_value(i32 %sub116, !1431, !DIExpression(), !1435)
  %sub117 = sub nsw i32 %sub116, %pos.2, !dbg !1646
  %len118 = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !1647
  store i32 %sub117, ptr %len118, align 4, !dbg !1648
  %buf119 = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !1649
  %42 = load ptr, ptr %buf119, align 8, !dbg !1649
  %43 = load ptr, ptr %Buf, align 8, !dbg !1650
  %idx.ext121 = zext nneg i32 %pos.2 to i64, !dbg !1651
  %add.ptr122 = getelementptr inbounds i8, ptr %43, i64 %idx.ext121, !dbg !1651
    #dbg_value(ptr %42, !1652, !DIExpression(), !1660)
    #dbg_value(ptr %add.ptr122, !1658, !DIExpression(), !1660)
    #dbg_value(i32 %sub117, !1659, !DIExpression(), !1660)
  %conv.i = sext i32 %sub117 to i64, !dbg !1662
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr readonly align 1 %add.ptr122, i64 %conv.i, i1 false), !dbg !1663
  %44 = load ptr, ptr %buf119, align 8, !dbg !1664
  %45 = load i8, ptr %44, align 1, !dbg !1665
  %46 = lshr i8 %45, 7, !dbg !1666
  %shr126 = zext nneg i8 %46 to i32, !dbg !1666
  %forbidden_bit128 = getelementptr inbounds i8, ptr %nalu, i64 12, !dbg !1667
  store i32 %shr126, ptr %forbidden_bit128, align 4, !dbg !1668
  %47 = load i8, ptr %44, align 1, !dbg !1669
  %48 = lshr i8 %47, 5, !dbg !1670
  %49 = and i8 %48, 3, !dbg !1671
  %and132 = zext nneg i8 %49 to i32, !dbg !1671
  %nal_reference_idc133 = getelementptr inbounds i8, ptr %nalu, i64 20, !dbg !1672
  store i32 %and132, ptr %nal_reference_idc133, align 4, !dbg !1673
  %50 = load i8, ptr %44, align 1, !dbg !1674
  %51 = and i8 %50, 31, !dbg !1675
  %and136 = zext nneg i8 %51 to i32, !dbg !1675
  %nal_unit_type137 = getelementptr inbounds i8, ptr %nalu, i64 16, !dbg !1676
  store i32 %and136, ptr %nal_unit_type137, align 8, !dbg !1677
  %lost_packets = getelementptr inbounds i8, ptr %nalu, i64 32, !dbg !1678
  store i16 0, ptr %lost_packets, align 8, !dbg !1679
  br label %cleanup, !dbg !1680

cleanup:                                          ; preds = %if.then16, %if.end114, %while.end60, %if.then41, %if.then28, %if.else20
  %retval.0 = phi i32 [ -1, %if.else20 ], [ -1, %if.then28 ], [ -1, %if.then41 ], [ %sub61, %while.end60 ], [ %sub116, %if.end114 ], [ 0, %if.then16 ], !dbg !1435
  ret i32 %retval.0, !dbg !1681
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @OpenAnnexBFile(ptr nocapture noundef readonly %p_Vid, ptr noundef %fn) local_unnamed_addr #0 !dbg !1682 {
entry:
    #dbg_value(ptr %p_Vid, !1686, !DIExpression(), !1689)
    #dbg_value(ptr %fn, !1687, !DIExpression(), !1689)
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608, !dbg !1690
  %0 = load ptr, ptr %annex_b1, align 8, !dbg !1690
    #dbg_value(ptr %0, !1688, !DIExpression(), !1689)
  %iobuffer = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1691
  %1 = load ptr, ptr %iobuffer, align 8, !dbg !1691
  %cmp.not = icmp eq ptr %1, null, !dbg !1693
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1694

if.then:                                          ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #15, !dbg !1695
  br label %if.end, !dbg !1697

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %fn, i32 noundef 0) #15, !dbg !1698
  store i32 %call, ptr %0, align 8, !dbg !1700
  %cmp2 = icmp eq i32 %call, -1, !dbg !1701
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1702

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.7, ptr noundef %fn) #15, !dbg !1703
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 500) #15, !dbg !1705
  br label %if.end5, !dbg !1706

if.end5:                                          ; preds = %if.then3, %if.end
  %iIOBufferSize = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1707
  store i32 524288, ptr %iIOBufferSize, align 8, !dbg !1708
  %call7 = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #16, !dbg !1709
  store ptr %call7, ptr %iobuffer, align 8, !dbg !1710
  %cmp10 = icmp eq ptr %call7, null, !dbg !1711
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1713

if.then12:                                        ; preds = %if.end5
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #15, !dbg !1714
  %.pre = load ptr, ptr %iobuffer, align 8, !dbg !1716
  %.pre23 = load i32, ptr %iIOBufferSize, align 8, !dbg !1718
  %2 = sext i32 %.pre23 to i64, !dbg !1719
  br label %if.end13, !dbg !1720

if.end13:                                         ; preds = %if.then12, %if.end5
  %conv.i = phi i64 [ %2, %if.then12 ], [ 524288, %if.end5 ], !dbg !1718
  %3 = phi ptr [ %.pre, %if.then12 ], [ %call7, %if.end5 ], !dbg !1716
  %is_eof = getelementptr inbounds i8, ptr %0, i64 28, !dbg !1721
  store i32 0, ptr %is_eof, align 4, !dbg !1722
    #dbg_value(ptr %0, !1477, !DIExpression(), !1723)
  %4 = load i32, ptr %0, align 8, !dbg !1724
  %call.i = tail call i64 @read(i32 noundef %4, ptr noundef %3, i64 noundef %conv.i) #15, !dbg !1725
  %conv1.i = trunc i64 %call.i to i32, !dbg !1725
    #dbg_value(i32 %conv1.i, !1482, !DIExpression(), !1723)
  %cmp.i = icmp eq i32 %conv1.i, 0, !dbg !1726
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1727

if.then.i:                                        ; preds = %if.end13
  store i32 1, ptr %is_eof, align 4, !dbg !1728
  br label %getChunk.exit, !dbg !1729

if.end.i:                                         ; preds = %if.end13
  %bytesinbuffer.i = getelementptr inbounds i8, ptr %0, i64 24, !dbg !1730
  store i32 %conv1.i, ptr %bytesinbuffer.i, align 8, !dbg !1731
  %5 = load ptr, ptr %iobuffer, align 8, !dbg !1732
  %iobufferread.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !1733
  store ptr %5, ptr %iobufferread.i, align 8, !dbg !1734
  br label %getChunk.exit, !dbg !1735

getChunk.exit:                                    ; preds = %if.then.i, %if.end.i
  ret void, !dbg !1736
}

; Function Attrs: nofree
declare !dbg !1737 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @CloseAnnexBFile(ptr nocapture noundef readonly %p_Vid) local_unnamed_addr #0 !dbg !1741 {
entry:
    #dbg_value(ptr %p_Vid, !1743, !DIExpression(), !1745)
  %annex_b1 = getelementptr inbounds i8, ptr %p_Vid, i64 856608, !dbg !1746
  %0 = load ptr, ptr %annex_b1, align 8, !dbg !1746
    #dbg_value(ptr %0, !1744, !DIExpression(), !1745)
  %1 = load i32, ptr %0, align 8, !dbg !1747
  %cmp.not = icmp eq i32 %1, -1, !dbg !1749
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1750

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %1) #15, !dbg !1751
  store i32 -1, ptr %0, align 8, !dbg !1753
  br label %if.end, !dbg !1754

if.end:                                           ; preds = %if.then, %entry
  %iobuffer = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1755
  %2 = load ptr, ptr %iobuffer, align 8, !dbg !1755
  tail call void @free(ptr noundef %2) #15, !dbg !1756
  store ptr null, ptr %iobuffer, align 8, !dbg !1757
  ret void, !dbg !1758
}

declare !dbg !1759 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ResetAnnexB(ptr nocapture noundef %annex_b) local_unnamed_addr #11 !dbg !1763 {
entry:
    #dbg_value(ptr %annex_b, !1765, !DIExpression(), !1766)
  %is_eof = getelementptr inbounds i8, ptr %annex_b, i64 28, !dbg !1767
  store i32 0, ptr %is_eof, align 4, !dbg !1768
  %bytesinbuffer = getelementptr inbounds i8, ptr %annex_b, i64 24, !dbg !1769
  store i32 0, ptr %bytesinbuffer, align 8, !dbg !1770
  %iobuffer = getelementptr inbounds i8, ptr %annex_b, i64 8, !dbg !1771
  %0 = load ptr, ptr %iobuffer, align 8, !dbg !1771
  %iobufferread = getelementptr inbounds i8, ptr %annex_b, i64 16, !dbg !1772
  store ptr %0, ptr %iobufferread, align 8, !dbg !1773
  ret void, !dbg !1774
}

; Function Attrs: nofree
declare !dbg !1775 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/annexb.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "834c1a68d2eeb9f9a2a6815fde4832d5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 42)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 19)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !3, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !90, globals: !112, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !35, !41, !50, !57, !65, !84}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 22, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!31 = !DIEnumerator(name: "YUV400", value: 0)
!32 = !DIEnumerator(name: "YUV420", value: 1)
!33 = !DIEnumerator(name: "YUV422", value: 2)
!34 = !DIEnumerator(name: "YUV444", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 15, baseType: !28, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!38 = !DIEnumerator(name: "CM_YUV", value: 0)
!39 = !DIEnumerator(name: "CM_RGB", value: 1)
!40 = !DIEnumerator(name: "CM_XYZ", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 25, baseType: !28, size: 32, elements: !43)
!42 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!45 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!46 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!47 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!48 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!49 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 135, baseType: !52, size: 32, elements: !53)
!51 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "FRAME", value: 0)
!55 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!56 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 22, baseType: !52, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIEnumerator(name: "PLANE_Y", value: 0)
!60 = !DIEnumerator(name: "PLANE_U", value: 1)
!61 = !DIEnumerator(name: "PLANE_V", value: 2)
!62 = !DIEnumerator(name: "PLANE_G", value: 0)
!63 = !DIEnumerator(name: "PLANE_B", value: 1)
!64 = !DIEnumerator(name: "PLANE_R", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 24, baseType: !52, size: 32, elements: !67)
!66 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!68 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!69 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!70 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!71 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!72 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!73 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!74 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!75 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!76 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!77 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!78 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!79 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!80 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!81 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!82 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!83 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 46, baseType: !52, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!87 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!88 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!89 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!90 = !{!91, !109, !98, !110, !111}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANNEXB_t", file: !93, line: 29, baseType: !94)
!93 = !DIFile(filename: "ldecod_src/inc/annexb.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a6a52094af5c5816464e8295d9d6ede7")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !93, line: 17, size: 448, elements: !95)
!95 = !{!96, !97, !102, !103, !104, !105, !106, !107, !108}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !94, file: !93, line: 19, baseType: !28, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "iobuffer", scope: !94, file: !93, line: 20, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !100, line: 21, baseType: !101)
!100 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "iobufferread", scope: !94, file: !93, line: 21, baseType: !98, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bytesinbuffer", scope: !94, file: !93, line: 22, baseType: !28, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "is_eof", scope: !94, file: !93, line: 23, baseType: !28, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "iIOBufferSize", scope: !94, file: !93, line: 24, baseType: !28, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "IsFirstByteStreamNALU", scope: !94, file: !93, line: 26, baseType: !28, size: 32, offset: 288)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nextstartcodebytes", scope: !94, file: !93, line: 27, baseType: !28, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Buf", scope: !94, file: !93, line: 28, baseType: !98, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !66, line: 51, baseType: !84)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !66, line: 43, baseType: !65)
!112 = !{!0, !7, !113, !118, !123, !128, !12, !17, !130, !22}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 37)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 70)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 888, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 111)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !3, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression(DW_OP_constu, 524288, DW_OP_stack_value))
!131 = distinct !DIGlobalVariable(name: "IOBUFFERSIZE", scope: !24, file: !2, line: 20, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!133 = !{i32 7, !"Dwarf Version", i32 5}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 8, !"PIC Level", i32 2}
!137 = !{i32 7, !"PIE Level", i32 2}
!138 = !{i32 7, !"uwtable", i32 2}
!139 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!140 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!141 = distinct !DISubprogram(name: "malloc_annex_b", scope: !2, file: !2, line: 22, type: !142, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1339)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !146, line: 836, baseType: !147)
!146 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !146, line: 566, size: 6855040, elements: !148)
!148 = !{!149, !234, !287, !391, !393, !395, !453, !455, !456, !457, !458, !459, !462, !482, !494, !495, !496, !497, !498, !499, !1070, !1071, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1081, !1084, !1085, !1087, !1088, !1089, !1090, !1091, !1093, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1219, !1221, !1222, !1225, !1228, !1229, !1230, !1234, !1236, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1248, !1251, !1252, !1253, !1254, !1257, !1262, !1266, !1270, !1274, !1275, !1279, !1280, !1284, !1285, !1289, !1310, !1311, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !147, file: !146, line: 568, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !146, line: 850, size: 32128, elements: !152)
!152 = !{!153, !157, !158, !159, !160, !161, !162, !163, !164, !165, !195, !196, !197, !198, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !151, file: !146, line: 852, baseType: !154, size: 2040)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 255)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !151, file: !146, line: 853, baseType: !154, size: 2040, offset: 2040)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !151, file: !146, line: 854, baseType: !154, size: 2040, offset: 4080)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !151, file: !146, line: 856, baseType: !28, size: 32, offset: 6144)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !151, file: !146, line: 857, baseType: !28, size: 32, offset: 6176)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !151, file: !146, line: 858, baseType: !28, size: 32, offset: 6208)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !151, file: !146, line: 859, baseType: !28, size: 32, offset: 6240)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !151, file: !146, line: 860, baseType: !28, size: 32, offset: 6272)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !151, file: !146, line: 861, baseType: !28, size: 32, offset: 6304)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !151, file: !146, line: 864, baseType: !166, size: 1088, offset: 6336)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !27, line: 52, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !27, line: 30, size: 1088, elements: !168)
!168 = !{!169, !171, !173, !175, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !167, file: !27, line: 32, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !27, line: 28, baseType: !26)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !167, file: !27, line: 33, baseType: !172, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !27, line: 20, baseType: !35)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !167, file: !27, line: 34, baseType: !174, size: 64, offset: 64)
!174 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !167, file: !27, line: 35, baseType: !176, size: 96, offset: 128)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 96, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 3)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !167, file: !27, line: 36, baseType: !176, size: 96, offset: 224)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !167, file: !27, line: 37, baseType: !28, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !167, file: !27, line: 38, baseType: !28, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !167, file: !27, line: 39, baseType: !28, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !167, file: !27, line: 40, baseType: !28, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !167, file: !27, line: 41, baseType: !28, size: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !167, file: !27, line: 42, baseType: !28, size: 32, offset: 480)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !167, file: !27, line: 43, baseType: !28, size: 32, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !167, file: !27, line: 44, baseType: !28, size: 32, offset: 544)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !167, file: !27, line: 45, baseType: !176, size: 96, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !27, line: 46, baseType: !28, size: 32, offset: 672)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !167, file: !27, line: 47, baseType: !176, size: 96, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !167, file: !27, line: 48, baseType: !176, size: 96, offset: 800)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !167, file: !27, line: 49, baseType: !176, size: 96, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !167, file: !27, line: 50, baseType: !28, size: 32, offset: 992)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !167, file: !27, line: 51, baseType: !28, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !151, file: !146, line: 865, baseType: !166, size: 1088, offset: 7424)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !151, file: !146, line: 867, baseType: !28, size: 32, offset: 8512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !151, file: !146, line: 868, baseType: !28, size: 32, offset: 8544)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !151, file: !146, line: 869, baseType: !199, size: 7744, offset: 8576)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !42, line: 60, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !42, line: 34, size: 7744, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !200, file: !42, line: 37, baseType: !154, size: 2040)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !200, file: !42, line: 38, baseType: !154, size: 2040, offset: 2040)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !200, file: !42, line: 39, baseType: !154, size: 2040, offset: 4080)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !200, file: !42, line: 40, baseType: !28, size: 32, offset: 6144)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !200, file: !42, line: 41, baseType: !207, size: 32, offset: 6176)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !42, line: 32, baseType: !41)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !200, file: !42, line: 42, baseType: !166, size: 1088, offset: 6208)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !200, file: !42, line: 43, baseType: !28, size: 32, offset: 7296)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !200, file: !42, line: 44, baseType: !28, size: 32, offset: 7328)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !200, file: !42, line: 45, baseType: !28, size: 32, offset: 7360)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !200, file: !42, line: 46, baseType: !28, size: 32, offset: 7392)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !200, file: !42, line: 47, baseType: !28, size: 32, offset: 7424)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !200, file: !42, line: 48, baseType: !28, size: 32, offset: 7456)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !200, file: !42, line: 49, baseType: !28, size: 32, offset: 7488)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !200, file: !42, line: 50, baseType: !28, size: 32, offset: 7520)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !200, file: !42, line: 51, baseType: !28, size: 32, offset: 7552)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !200, file: !42, line: 52, baseType: !28, size: 32, offset: 7584)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !200, file: !42, line: 53, baseType: !28, size: 32, offset: 7616)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !200, file: !42, line: 56, baseType: !221, size: 64, offset: 7680)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !151, file: !146, line: 870, baseType: !199, size: 7744, offset: 16320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !151, file: !146, line: 871, baseType: !199, size: 7744, offset: 24064)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !151, file: !146, line: 873, baseType: !28, size: 32, offset: 31808)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !151, file: !146, line: 884, baseType: !28, size: 32, offset: 31840)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !151, file: !146, line: 885, baseType: !28, size: 32, offset: 31872)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !151, file: !146, line: 886, baseType: !28, size: 32, offset: 31904)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !151, file: !146, line: 890, baseType: !28, size: 32, offset: 31936)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !151, file: !146, line: 893, baseType: !28, size: 32, offset: 31968)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !151, file: !146, line: 894, baseType: !28, size: 32, offset: 32000)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !151, file: !146, line: 895, baseType: !28, size: 32, offset: 32032)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !151, file: !146, line: 897, baseType: !28, size: 32, offset: 32064)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !151, file: !146, line: 899, baseType: !28, size: 32, offset: 32096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !147, file: !146, line: 569, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !237, line: 138, baseType: !238)
!237 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 94, size: 17728, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !250, !255, !259, !262, !263, !264, !265, !266, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !238, file: !237, line: 96, baseType: !28, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !238, file: !237, line: 97, baseType: !52, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !238, file: !237, line: 98, baseType: !52, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !238, file: !237, line: 99, baseType: !28, size: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !238, file: !237, line: 100, baseType: !28, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !238, file: !237, line: 102, baseType: !28, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !238, file: !237, line: 103, baseType: !247, size: 384, offset: 192)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 384, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 12)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !238, file: !237, line: 104, baseType: !251, size: 3072, offset: 576)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 3072, elements: !252)
!252 = !{!253, !254}
!253 = !DISubrange(count: 6)
!254 = !DISubrange(count: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !238, file: !237, line: 105, baseType: !256, size: 12288, offset: 3648)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 12288, elements: !257)
!257 = !{!253, !258}
!258 = !DISubrange(count: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !238, file: !237, line: 106, baseType: !260, size: 192, offset: 15936)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !261)
!261 = !{!253}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !238, file: !237, line: 107, baseType: !260, size: 192, offset: 16128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !238, file: !237, line: 110, baseType: !28, size: 32, offset: 16320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !238, file: !237, line: 111, baseType: !52, size: 32, offset: 16352)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !238, file: !237, line: 112, baseType: !52, size: 32, offset: 16384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !238, file: !237, line: 114, baseType: !267, size: 256, offset: 16416)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !238, file: !237, line: 116, baseType: !267, size: 256, offset: 16672)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !238, file: !237, line: 117, baseType: !267, size: 256, offset: 16928)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !238, file: !237, line: 119, baseType: !28, size: 32, offset: 17184)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !238, file: !237, line: 120, baseType: !52, size: 32, offset: 17216)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !238, file: !237, line: 122, baseType: !52, size: 32, offset: 17248)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !238, file: !237, line: 123, baseType: !98, size: 64, offset: 17280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !238, file: !237, line: 125, baseType: !28, size: 32, offset: 17344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !238, file: !237, line: 126, baseType: !28, size: 32, offset: 17376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !238, file: !237, line: 127, baseType: !28, size: 32, offset: 17408)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !238, file: !237, line: 128, baseType: !52, size: 32, offset: 17440)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !238, file: !237, line: 129, baseType: !28, size: 32, offset: 17472)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !238, file: !237, line: 130, baseType: !28, size: 32, offset: 17504)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !238, file: !237, line: 131, baseType: !28, size: 32, offset: 17536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !238, file: !237, line: 133, baseType: !28, size: 32, offset: 17568)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !238, file: !237, line: 135, baseType: !28, size: 32, offset: 17600)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !238, file: !237, line: 136, baseType: !28, size: 32, offset: 17632)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !238, file: !237, line: 137, baseType: !28, size: 32, offset: 17664)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !147, file: !146, line: 570, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !237, line: 197, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 142, size: 33024, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !389, !390}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !290, file: !237, line: 144, baseType: !28, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !290, file: !237, line: 146, baseType: !52, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !290, file: !237, line: 147, baseType: !28, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !290, file: !237, line: 148, baseType: !28, size: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !290, file: !237, line: 149, baseType: !28, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !290, file: !237, line: 150, baseType: !28, size: 32, offset: 160)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !290, file: !237, line: 152, baseType: !28, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !290, file: !237, line: 154, baseType: !52, size: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !290, file: !237, line: 155, baseType: !52, size: 32, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !290, file: !237, line: 156, baseType: !52, size: 32, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !290, file: !237, line: 158, baseType: !28, size: 32, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !290, file: !237, line: 159, baseType: !247, size: 384, offset: 352)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !290, file: !237, line: 160, baseType: !251, size: 3072, offset: 736)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !290, file: !237, line: 161, baseType: !256, size: 12288, offset: 3808)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !290, file: !237, line: 162, baseType: !260, size: 192, offset: 16096)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !290, file: !237, line: 163, baseType: !260, size: 192, offset: 16288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !290, file: !237, line: 165, baseType: !52, size: 32, offset: 16480)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !290, file: !237, line: 166, baseType: !52, size: 32, offset: 16512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !290, file: !237, line: 167, baseType: !52, size: 32, offset: 16544)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !290, file: !237, line: 168, baseType: !52, size: 32, offset: 16576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !290, file: !237, line: 170, baseType: !52, size: 32, offset: 16608)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !290, file: !237, line: 172, baseType: !28, size: 32, offset: 16640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !290, file: !237, line: 173, baseType: !28, size: 32, offset: 16672)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !290, file: !237, line: 174, baseType: !28, size: 32, offset: 16704)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !290, file: !237, line: 175, baseType: !52, size: 32, offset: 16736)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !290, file: !237, line: 177, baseType: !318, size: 8192, offset: 16768)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !290, file: !237, line: 178, baseType: !52, size: 32, offset: 24960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !290, file: !237, line: 179, baseType: !28, size: 32, offset: 24992)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !290, file: !237, line: 180, baseType: !52, size: 32, offset: 25024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !290, file: !237, line: 181, baseType: !52, size: 32, offset: 25056)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !290, file: !237, line: 182, baseType: !28, size: 32, offset: 25088)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !290, file: !237, line: 184, baseType: !28, size: 32, offset: 25120)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !290, file: !237, line: 185, baseType: !28, size: 32, offset: 25152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !290, file: !237, line: 186, baseType: !28, size: 32, offset: 25184)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !290, file: !237, line: 187, baseType: !52, size: 32, offset: 25216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !290, file: !237, line: 188, baseType: !52, size: 32, offset: 25248)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !290, file: !237, line: 189, baseType: !52, size: 32, offset: 25280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !290, file: !237, line: 190, baseType: !52, size: 32, offset: 25312)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !290, file: !237, line: 191, baseType: !28, size: 32, offset: 25344)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !290, file: !237, line: 192, baseType: !335, size: 7584, offset: 25376)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !237, line: 90, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 53, size: 7584, elements: !337)
!337 = !{!338, !339, !340, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !336, file: !237, line: 55, baseType: !28, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !336, file: !237, line: 56, baseType: !52, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !336, file: !237, line: 57, baseType: !341, size: 16, offset: 64)
!341 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !336, file: !237, line: 58, baseType: !341, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !336, file: !237, line: 59, baseType: !28, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !336, file: !237, line: 60, baseType: !28, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !336, file: !237, line: 61, baseType: !28, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !336, file: !237, line: 62, baseType: !52, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !336, file: !237, line: 63, baseType: !28, size: 32, offset: 224)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !336, file: !237, line: 64, baseType: !28, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !336, file: !237, line: 65, baseType: !52, size: 32, offset: 288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !336, file: !237, line: 66, baseType: !52, size: 32, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !336, file: !237, line: 67, baseType: !52, size: 32, offset: 352)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !336, file: !237, line: 68, baseType: !28, size: 32, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !336, file: !237, line: 69, baseType: !52, size: 32, offset: 416)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !336, file: !237, line: 70, baseType: !52, size: 32, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !336, file: !237, line: 71, baseType: !28, size: 32, offset: 480)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !336, file: !237, line: 72, baseType: !52, size: 32, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !336, file: !237, line: 73, baseType: !52, size: 32, offset: 544)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !336, file: !237, line: 74, baseType: !28, size: 32, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !336, file: !237, line: 75, baseType: !28, size: 32, offset: 608)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !336, file: !237, line: 76, baseType: !361, size: 3296, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !237, line: 50, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 38, size: 3296, elements: !363)
!363 = !{!364, !365, !366, !367, !371, !372, !373, !374, !375, !376}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !362, file: !237, line: 40, baseType: !52, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !362, file: !237, line: 41, baseType: !52, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !362, file: !237, line: 42, baseType: !52, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !362, file: !237, line: 43, baseType: !368, size: 1024, offset: 96)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1024, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !362, file: !237, line: 44, baseType: !368, size: 1024, offset: 1120)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !362, file: !237, line: 45, baseType: !368, size: 1024, offset: 2144)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !362, file: !237, line: 46, baseType: !52, size: 32, offset: 3168)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !362, file: !237, line: 47, baseType: !52, size: 32, offset: 3200)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !362, file: !237, line: 48, baseType: !52, size: 32, offset: 3232)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !362, file: !237, line: 49, baseType: !52, size: 32, offset: 3264)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !336, file: !237, line: 77, baseType: !28, size: 32, offset: 3936)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !336, file: !237, line: 78, baseType: !361, size: 3296, offset: 3968)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !336, file: !237, line: 80, baseType: !28, size: 32, offset: 7264)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !336, file: !237, line: 81, baseType: !28, size: 32, offset: 7296)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !336, file: !237, line: 82, baseType: !28, size: 32, offset: 7328)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !336, file: !237, line: 83, baseType: !28, size: 32, offset: 7360)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !336, file: !237, line: 84, baseType: !52, size: 32, offset: 7392)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !336, file: !237, line: 85, baseType: !52, size: 32, offset: 7424)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !336, file: !237, line: 86, baseType: !52, size: 32, offset: 7456)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !336, file: !237, line: 87, baseType: !52, size: 32, offset: 7488)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !336, file: !237, line: 88, baseType: !52, size: 32, offset: 7520)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !336, file: !237, line: 89, baseType: !52, size: 32, offset: 7552)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !290, file: !237, line: 193, baseType: !52, size: 32, offset: 32960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !290, file: !237, line: 195, baseType: !28, size: 32, offset: 32992)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !147, file: !146, line: 571, baseType: !392, size: 1056768, offset: 192)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 1056768, elements: !369)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !147, file: !146, line: 572, baseType: !394, size: 4538368, offset: 1056960)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 4538368, elements: !319)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !147, file: !146, line: 575, baseType: !396, size: 64, offset: 5595328)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !237, line: 256, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 228, size: 37312, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !420, !421, !422, !423}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !398, file: !237, line: 230, baseType: !289, size: 33024)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !398, file: !237, line: 232, baseType: !52, size: 32, offset: 33024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !398, file: !237, line: 233, baseType: !28, size: 32, offset: 33056)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !398, file: !237, line: 234, baseType: !221, size: 64, offset: 33088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !398, file: !237, line: 235, baseType: !221, size: 64, offset: 33152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !398, file: !237, line: 236, baseType: !406, size: 64, offset: 33216)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !398, file: !237, line: 237, baseType: !221, size: 64, offset: 33280)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !398, file: !237, line: 238, baseType: !406, size: 64, offset: 33344)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !398, file: !237, line: 240, baseType: !221, size: 64, offset: 33408)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !398, file: !237, line: 241, baseType: !406, size: 64, offset: 33472)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !398, file: !237, line: 242, baseType: !221, size: 64, offset: 33536)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !398, file: !237, line: 243, baseType: !406, size: 64, offset: 33600)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !398, file: !237, line: 245, baseType: !28, size: 32, offset: 33664)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !398, file: !237, line: 246, baseType: !221, size: 64, offset: 33728)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !398, file: !237, line: 247, baseType: !221, size: 64, offset: 33792)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !398, file: !237, line: 248, baseType: !406, size: 64, offset: 33856)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !398, file: !237, line: 249, baseType: !406, size: 64, offset: 33920)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !398, file: !237, line: 250, baseType: !419, size: 64, offset: 33984)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !398, file: !237, line: 251, baseType: !406, size: 64, offset: 34048)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !398, file: !237, line: 253, baseType: !52, size: 32, offset: 34112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !398, file: !237, line: 254, baseType: !28, size: 32, offset: 34144)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !398, file: !237, line: 255, baseType: !424, size: 3136, offset: 34176)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !237, line: 226, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !237, line: 200, size: 3136, elements: !426)
!426 = !{!427, !428, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !446, !447, !449, !450, !451, !452}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !425, file: !237, line: 202, baseType: !28, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !425, file: !237, line: 203, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !425, file: !237, line: 204, baseType: !221, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !425, file: !237, line: 205, baseType: !406, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !425, file: !237, line: 206, baseType: !429, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !425, file: !237, line: 207, baseType: !221, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !425, file: !237, line: 208, baseType: !221, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !425, file: !237, line: 209, baseType: !429, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !425, file: !237, line: 210, baseType: !429, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !425, file: !237, line: 211, baseType: !429, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !425, file: !237, line: 212, baseType: !429, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !425, file: !237, line: 213, baseType: !429, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !425, file: !237, line: 216, baseType: !430, size: 8, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !425, file: !237, line: 217, baseType: !430, size: 8, offset: 776)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !425, file: !237, line: 218, baseType: !430, size: 8, offset: 784)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !425, file: !237, line: 219, baseType: !445, size: 1024, offset: 800)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !369)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !425, file: !237, line: 220, baseType: !445, size: 1024, offset: 1824)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !425, file: !237, line: 221, baseType: !448, size: 256, offset: 2848)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 256, elements: !369)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !425, file: !237, line: 222, baseType: !430, size: 8, offset: 3104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !425, file: !237, line: 223, baseType: !430, size: 8, offset: 3112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !425, file: !237, line: 224, baseType: !430, size: 8, offset: 3120)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !425, file: !237, line: 225, baseType: !430, size: 8, offset: 3128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !147, file: !146, line: 577, baseType: !454, size: 1193984, offset: 5595392)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 1193984, elements: !369)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !147, file: !146, line: 578, baseType: !28, size: 32, offset: 6789376)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !147, file: !146, line: 579, baseType: !28, size: 32, offset: 6789408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !147, file: !146, line: 580, baseType: !28, size: 32, offset: 6789440)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !147, file: !146, line: 581, baseType: !28, size: 32, offset: 6789472)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !147, file: !146, line: 584, baseType: !460, size: 64, offset: 6789504)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !146, line: 584, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !147, file: !146, line: 586, baseType: !463, size: 64, offset: 6789568)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !146, line: 902, size: 416, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !475, !476, !477, !478, !479, !480, !481}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !464, file: !146, line: 904, baseType: !52, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !464, file: !146, line: 905, baseType: !52, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !464, file: !146, line: 906, baseType: !28, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !464, file: !146, line: 907, baseType: !52, size: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !464, file: !146, line: 908, baseType: !28, size: 32, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !464, file: !146, line: 909, baseType: !472, size: 64, offset: 160)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 2)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !464, file: !146, line: 910, baseType: !99, size: 8, offset: 224)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !464, file: !146, line: 911, baseType: !99, size: 8, offset: 232)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !464, file: !146, line: 912, baseType: !28, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !464, file: !146, line: 913, baseType: !28, size: 32, offset: 288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !464, file: !146, line: 915, baseType: !28, size: 32, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !464, file: !146, line: 916, baseType: !28, size: 32, offset: 352)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !464, file: !146, line: 917, baseType: !28, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !147, file: !146, line: 587, baseType: !483, size: 64, offset: 6789632)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !146, line: 839, size: 512, elements: !485)
!485 = !{!486, !487, !490, !491, !492, !493}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !484, file: !146, line: 841, baseType: !28, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !484, file: !146, line: 842, baseType: !488, size: 96, offset: 32)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 96, elements: !177)
!489 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !484, file: !146, line: 843, baseType: !488, size: 96, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !484, file: !146, line: 844, baseType: !488, size: 96, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !484, file: !146, line: 845, baseType: !488, size: 96, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !484, file: !146, line: 846, baseType: !488, size: 96, offset: 416)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !147, file: !146, line: 588, baseType: !28, size: 32, offset: 6789696)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !147, file: !146, line: 591, baseType: !52, size: 32, offset: 6789728)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !147, file: !146, line: 592, baseType: !28, size: 32, offset: 6789760)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !147, file: !146, line: 593, baseType: !28, size: 32, offset: 6789792)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !147, file: !146, line: 594, baseType: !28, size: 32, offset: 6789824)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !147, file: !146, line: 595, baseType: !500, size: 64, offset: 6789888)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !146, line: 542, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !146, line: 341, size: 109184, elements: !504)
!504 = !{!505, !507, !508, !509, !510, !511, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !733, !735, !898, !927, !954, !957, !958, !960, !961, !962, !963, !964, !965, !966, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !993, !994, !995, !996, !997, !998, !1001, !1002, !1005, !1006, !1008, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021, !1022, !1023, !1024, !1025, !1028, !1029, !1030, !1034, !1038, !1042, !1046, !1050, !1051, !1052, !1053, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1067, !1068}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !503, file: !146, line: 343, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !503, file: !146, line: 344, baseType: !150, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !503, file: !146, line: 345, baseType: !235, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !503, file: !146, line: 346, baseType: !288, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !503, file: !146, line: 347, baseType: !28, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !503, file: !146, line: 350, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !514, line: 186, size: 33408, elements: !515)
!514 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!515 = !{!516, !517, !520, !667, !668, !669, !670, !671, !672, !673, !674, !675, !679, !680, !681}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !513, file: !514, line: 188, baseType: !144, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !513, file: !514, line: 189, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !146, line: 900, baseType: !151)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !513, file: !514, line: 190, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !514, line: 182, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !514, line: 152, size: 768, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !662, !663, !664, !665, !666}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !524, file: !514, line: 154, baseType: !28, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !524, file: !514, line: 155, baseType: !28, size: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !524, file: !514, line: 156, baseType: !28, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !524, file: !514, line: 157, baseType: !28, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !524, file: !514, line: 159, baseType: !28, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !524, file: !514, line: 161, baseType: !52, size: 32, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !524, file: !514, line: 162, baseType: !52, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !524, file: !514, line: 164, baseType: !28, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !524, file: !514, line: 165, baseType: !28, size: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !524, file: !514, line: 166, baseType: !28, size: 32, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !524, file: !514, line: 167, baseType: !28, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !524, file: !514, line: 170, baseType: !28, size: 32, offset: 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !524, file: !514, line: 172, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !514, line: 138, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !514, line: 46, size: 3328, elements: !542)
!542 = !{!543, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !582, !584, !585, !602, !604, !608, !610, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !541, file: !514, line: 48, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !51, line: 140, baseType: !50)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !541, file: !514, line: 50, baseType: !28, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !541, file: !514, line: 51, baseType: !28, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !541, file: !514, line: 52, baseType: !28, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !541, file: !514, line: 53, baseType: !28, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !541, file: !514, line: 54, baseType: !52, size: 32, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !541, file: !514, line: 55, baseType: !52, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !541, file: !514, line: 57, baseType: !28, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !541, file: !514, line: 58, baseType: !28, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !541, file: !514, line: 59, baseType: !28, size: 32, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !541, file: !514, line: 61, baseType: !99, size: 8, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !541, file: !514, line: 62, baseType: !28, size: 32, offset: 352)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !541, file: !514, line: 63, baseType: !28, size: 32, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !541, file: !514, line: 64, baseType: !28, size: 32, offset: 416)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !541, file: !514, line: 65, baseType: !28, size: 32, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !541, file: !514, line: 67, baseType: !560, size: 16, offset: 480)
!560 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !541, file: !514, line: 69, baseType: !28, size: 32, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !541, file: !514, line: 69, baseType: !28, size: 32, offset: 544)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !541, file: !514, line: 69, baseType: !28, size: 32, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !541, file: !514, line: 69, baseType: !28, size: 32, offset: 608)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !541, file: !514, line: 70, baseType: !28, size: 32, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !541, file: !514, line: 70, baseType: !28, size: 32, offset: 672)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !541, file: !514, line: 70, baseType: !28, size: 32, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !541, file: !514, line: 70, baseType: !28, size: 32, offset: 736)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !541, file: !514, line: 71, baseType: !28, size: 32, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !541, file: !514, line: 72, baseType: !28, size: 32, offset: 800)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !541, file: !514, line: 73, baseType: !52, size: 32, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !541, file: !514, line: 74, baseType: !52, size: 32, offset: 864)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !541, file: !514, line: 75, baseType: !28, size: 32, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !541, file: !514, line: 75, baseType: !28, size: 32, offset: 928)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !541, file: !514, line: 76, baseType: !28, size: 32, offset: 960)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !541, file: !514, line: 76, baseType: !28, size: 32, offset: 992)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !541, file: !514, line: 79, baseType: !578, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !100, line: 41, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !100, line: 23, baseType: !341)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !541, file: !514, line: 80, baseType: !583, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !541, file: !514, line: 81, baseType: !583, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !541, file: !514, line: 84, baseType: !586, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !514, line: 36, size: 256, elements: !589)
!589 = !{!590, !593, !600}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !588, file: !514, line: 38, baseType: !591, size: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 128, elements: !473)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !588, file: !514, line: 39, baseType: !594, size: 64, offset: 128)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 64, elements: !473)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !146, line: 104, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 100, size: 32, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !596, file: !146, line: 102, baseType: !560, size: 16)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !596, file: !146, line: 103, baseType: !560, size: 16, offset: 16)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !588, file: !514, line: 40, baseType: !601, size: 16, offset: 192)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 16, elements: !473)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !541, file: !514, line: 85, baseType: !603, size: 192, offset: 1280)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 192, elements: !177)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !541, file: !514, line: 87, baseType: !605, size: 64, offset: 1472)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !514, line: 29, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !605, file: !514, line: 31, baseType: !98, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !541, file: !514, line: 88, baseType: !609, size: 192, offset: 1536)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !177)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !541, file: !514, line: 90, baseType: !611, size: 64, offset: 1728)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !541, file: !514, line: 92, baseType: !592, size: 64, offset: 1792)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !541, file: !514, line: 93, baseType: !592, size: 64, offset: 1856)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !541, file: !514, line: 94, baseType: !592, size: 64, offset: 1920)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !541, file: !514, line: 96, baseType: !28, size: 32, offset: 1984)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !541, file: !514, line: 97, baseType: !28, size: 32, offset: 2016)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !541, file: !514, line: 98, baseType: !28, size: 32, offset: 2048)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !541, file: !514, line: 99, baseType: !28, size: 32, offset: 2080)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !541, file: !514, line: 100, baseType: !28, size: 32, offset: 2112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !541, file: !514, line: 102, baseType: !28, size: 32, offset: 2144)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !541, file: !514, line: 103, baseType: !28, size: 32, offset: 2176)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !541, file: !514, line: 104, baseType: !28, size: 32, offset: 2208)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !541, file: !514, line: 105, baseType: !28, size: 32, offset: 2240)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !541, file: !514, line: 106, baseType: !28, size: 32, offset: 2272)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !541, file: !514, line: 107, baseType: !28, size: 32, offset: 2304)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !541, file: !514, line: 108, baseType: !28, size: 32, offset: 2336)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !541, file: !514, line: 109, baseType: !28, size: 32, offset: 2368)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !541, file: !514, line: 110, baseType: !472, size: 64, offset: 2400)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !541, file: !514, line: 111, baseType: !28, size: 32, offset: 2464)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !541, file: !514, line: 112, baseType: !632, size: 64, offset: 2496)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !146, line: 194, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !146, line: 186, size: 256, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !634, file: !146, line: 188, baseType: !28, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !634, file: !146, line: 189, baseType: !28, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !634, file: !146, line: 190, baseType: !28, size: 32, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !634, file: !146, line: 191, baseType: !28, size: 32, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !634, file: !146, line: 192, baseType: !28, size: 32, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !634, file: !146, line: 193, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !541, file: !514, line: 115, baseType: !28, size: 32, offset: 2560)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !541, file: !514, line: 118, baseType: !28, size: 32, offset: 2592)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !541, file: !514, line: 119, baseType: !28, size: 32, offset: 2624)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !541, file: !514, line: 120, baseType: !28, size: 32, offset: 2656)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !541, file: !514, line: 121, baseType: !579, size: 64, offset: 2688)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !541, file: !514, line: 124, baseType: !28, size: 32, offset: 2752)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !541, file: !514, line: 125, baseType: !28, size: 32, offset: 2784)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !541, file: !514, line: 126, baseType: !28, size: 32, offset: 2816)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !541, file: !514, line: 128, baseType: !28, size: 32, offset: 2848)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !541, file: !514, line: 129, baseType: !28, size: 32, offset: 2880)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !541, file: !514, line: 130, baseType: !28, size: 32, offset: 2912)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !541, file: !514, line: 131, baseType: !28, size: 32, offset: 2944)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !541, file: !514, line: 132, baseType: !578, size: 64, offset: 3008)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !541, file: !514, line: 133, baseType: !28, size: 32, offset: 3072)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !541, file: !514, line: 134, baseType: !28, size: 32, offset: 3104)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !541, file: !514, line: 136, baseType: !601, size: 16, offset: 3136)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !541, file: !514, line: 137, baseType: !660, size: 128, offset: 3200)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !473)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !524, file: !514, line: 173, baseType: !539, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !524, file: !514, line: 174, baseType: !539, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !524, file: !514, line: 177, baseType: !28, size: 32, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !524, file: !514, line: 178, baseType: !472, size: 64, offset: 608)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !524, file: !514, line: 179, baseType: !472, size: 64, offset: 672)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !513, file: !514, line: 191, baseType: !521, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !513, file: !514, line: 192, baseType: !521, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !513, file: !514, line: 193, baseType: !52, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !513, file: !514, line: 194, baseType: !52, size: 32, offset: 352)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !513, file: !514, line: 195, baseType: !52, size: 32, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !513, file: !514, line: 196, baseType: !52, size: 32, offset: 416)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !513, file: !514, line: 197, baseType: !28, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !513, file: !514, line: 199, baseType: !28, size: 32, offset: 480)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !513, file: !514, line: 200, baseType: !676, size: 32768, offset: 512)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32768, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !513, file: !514, line: 205, baseType: !28, size: 32, offset: 33280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !513, file: !514, line: 206, baseType: !28, size: 32, offset: 33312)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !513, file: !514, line: 208, baseType: !522, size: 64, offset: 33344)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !503, file: !146, line: 353, baseType: !28, size: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !503, file: !146, line: 354, baseType: !28, size: 32, offset: 416)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !503, file: !146, line: 355, baseType: !28, size: 32, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !503, file: !146, line: 356, baseType: !28, size: 32, offset: 480)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !503, file: !146, line: 357, baseType: !28, size: 32, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !503, file: !146, line: 359, baseType: !28, size: 32, offset: 544)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !503, file: !146, line: 360, baseType: !28, size: 32, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !503, file: !146, line: 361, baseType: !28, size: 32, offset: 608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !503, file: !146, line: 365, baseType: !52, size: 32, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !503, file: !146, line: 366, baseType: !28, size: 32, offset: 672)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !503, file: !146, line: 368, baseType: !472, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !503, file: !146, line: 372, baseType: !28, size: 32, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !503, file: !146, line: 378, baseType: !52, size: 32, offset: 800)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !503, file: !146, line: 379, baseType: !28, size: 32, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !503, file: !146, line: 387, baseType: !52, size: 32, offset: 864)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !503, file: !146, line: 388, baseType: !52, size: 32, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !503, file: !146, line: 389, baseType: !560, size: 16, offset: 928)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !503, file: !146, line: 396, baseType: !28, size: 32, offset: 960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !503, file: !146, line: 397, baseType: !28, size: 32, offset: 992)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !503, file: !146, line: 400, baseType: !28, size: 32, offset: 1024)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !503, file: !146, line: 401, baseType: !28, size: 32, offset: 1056)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !503, file: !146, line: 402, baseType: !472, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !503, file: !146, line: 406, baseType: !28, size: 32, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !503, file: !146, line: 407, baseType: !28, size: 32, offset: 1184)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !503, file: !146, line: 408, baseType: !28, size: 32, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !503, file: !146, line: 409, baseType: !28, size: 32, offset: 1248)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !503, file: !146, line: 410, baseType: !28, size: 32, offset: 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !503, file: !146, line: 411, baseType: !28, size: 32, offset: 1312)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !503, file: !146, line: 412, baseType: !28, size: 32, offset: 1344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !503, file: !146, line: 413, baseType: !52, size: 32, offset: 1376)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !503, file: !146, line: 414, baseType: !52, size: 32, offset: 1408)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !503, file: !146, line: 415, baseType: !99, size: 8, offset: 1440)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !503, file: !146, line: 416, baseType: !544, size: 32, offset: 1472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !503, file: !146, line: 417, baseType: !28, size: 32, offset: 1504)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !503, file: !146, line: 418, baseType: !28, size: 32, offset: 1536)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !503, file: !146, line: 419, baseType: !28, size: 32, offset: 1568)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !503, file: !146, line: 420, baseType: !28, size: 32, offset: 1600)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !503, file: !146, line: 421, baseType: !28, size: 32, offset: 1632)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !503, file: !146, line: 422, baseType: !28, size: 32, offset: 1664)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !503, file: !146, line: 423, baseType: !28, size: 32, offset: 1696)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !503, file: !146, line: 426, baseType: !28, size: 32, offset: 1728)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !503, file: !146, line: 427, baseType: !28, size: 32, offset: 1760)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !503, file: !146, line: 428, baseType: !28, size: 32, offset: 1792)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !503, file: !146, line: 429, baseType: !28, size: 32, offset: 1824)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !503, file: !146, line: 430, baseType: !28, size: 32, offset: 1856)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !503, file: !146, line: 431, baseType: !28, size: 32, offset: 1888)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !503, file: !146, line: 432, baseType: !28, size: 32, offset: 1920)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !503, file: !146, line: 433, baseType: !28, size: 32, offset: 1952)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !503, file: !146, line: 434, baseType: !632, size: 64, offset: 1984)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !503, file: !146, line: 436, baseType: !732, size: 48, offset: 2048)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 48, elements: !261)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !503, file: !146, line: 437, baseType: !734, size: 384, offset: 2112)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 384, elements: !261)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !503, file: !146, line: 440, baseType: !736, size: 64, offset: 2496)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !146, line: 324, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !146, line: 314, size: 384, elements: !739)
!739 = !{!740, !751, !760}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !738, file: !146, line: 317, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !146, line: 47, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !146, line: 300, size: 256, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !743, file: !146, line: 303, baseType: !28, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !743, file: !146, line: 304, baseType: !28, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !743, file: !146, line: 306, baseType: !28, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !743, file: !146, line: 307, baseType: !28, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !743, file: !146, line: 309, baseType: !98, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !743, file: !146, line: 310, baseType: !28, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !738, file: !146, line: 318, baseType: !752, size: 256, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !146, line: 95, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 88, size: 256, elements: !754)
!754 = !{!755, !756, !757, !758, !759}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !753, file: !146, line: 90, baseType: !52, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !753, file: !146, line: 91, baseType: !52, size: 32, offset: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !753, file: !146, line: 92, baseType: !28, size: 32, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !753, file: !146, line: 93, baseType: !98, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !753, file: !146, line: 94, baseType: !221, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !738, file: !146, line: 320, baseType: !761, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!28, !764, !896, !894}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !146, line: 273, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !146, line: 197, size: 3840, elements: !767)
!767 = !{!768, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !802, !803, !804, !805, !806, !810, !811, !820, !821, !822, !823, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !849, !850, !865, !871, !895}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !766, file: !146, line: 199, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !766, file: !146, line: 200, baseType: !506, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !766, file: !146, line: 201, baseType: !150, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !766, file: !146, line: 202, baseType: !28, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !766, file: !146, line: 203, baseType: !774, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !146, line: 112, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 108, size: 32, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !775, file: !146, line: 110, baseType: !560, size: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !775, file: !146, line: 111, baseType: !560, size: 16, offset: 16)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !766, file: !146, line: 204, baseType: !28, size: 32, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !766, file: !146, line: 205, baseType: !28, size: 32, offset: 288)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !766, file: !146, line: 206, baseType: !28, size: 32, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !766, file: !146, line: 207, baseType: !28, size: 32, offset: 352)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !766, file: !146, line: 208, baseType: !28, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !766, file: !146, line: 209, baseType: !28, size: 32, offset: 416)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !766, file: !146, line: 210, baseType: !28, size: 32, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !766, file: !146, line: 212, baseType: !28, size: 32, offset: 480)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !766, file: !146, line: 213, baseType: !28, size: 32, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !766, file: !146, line: 215, baseType: !28, size: 32, offset: 544)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !766, file: !146, line: 216, baseType: !472, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !766, file: !146, line: 217, baseType: !176, size: 96, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !766, file: !146, line: 218, baseType: !28, size: 32, offset: 736)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !766, file: !146, line: 219, baseType: !28, size: 32, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !766, file: !146, line: 220, baseType: !28, size: 32, offset: 800)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !766, file: !146, line: 221, baseType: !28, size: 32, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !766, file: !146, line: 223, baseType: !560, size: 16, offset: 864)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !766, file: !146, line: 224, baseType: !430, size: 8, offset: 880)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !766, file: !146, line: 225, baseType: !430, size: 8, offset: 888)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !766, file: !146, line: 226, baseType: !560, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !766, file: !146, line: 227, baseType: !560, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !766, file: !146, line: 229, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !766, file: !146, line: 230, baseType: !801, size: 64, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !766, file: !146, line: 232, baseType: !801, size: 64, offset: 1088)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !766, file: !146, line: 233, baseType: !801, size: 64, offset: 1152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !766, file: !146, line: 236, baseType: !560, size: 16, offset: 1216)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !766, file: !146, line: 237, baseType: !807, size: 1024, offset: 1232)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 1024, elements: !808)
!808 = !{!474, !809, !809, !474}
!809 = !DISubrange(count: 4)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !766, file: !146, line: 239, baseType: !28, size: 32, offset: 2272)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !766, file: !146, line: 240, baseType: !812, size: 192, offset: 2304)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 192, elements: !177)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !814, line: 103, baseType: !815)
!814 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !816, line: 27, baseType: !817)
!816 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !818, line: 44, baseType: !819)
!818 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!819 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !766, file: !146, line: 241, baseType: !812, size: 192, offset: 2496)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !766, file: !146, line: 242, baseType: !812, size: 192, offset: 2688)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !766, file: !146, line: 244, baseType: !28, size: 32, offset: 2880)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !766, file: !146, line: 245, baseType: !824, size: 32, offset: 2912)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 32, elements: !825)
!825 = !{!809}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !766, file: !146, line: 246, baseType: !824, size: 32, offset: 2944)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !766, file: !146, line: 247, baseType: !430, size: 8, offset: 2976)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !766, file: !146, line: 248, baseType: !430, size: 8, offset: 2984)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !766, file: !146, line: 249, baseType: !430, size: 8, offset: 2992)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !766, file: !146, line: 250, baseType: !560, size: 16, offset: 3008)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !766, file: !146, line: 251, baseType: !560, size: 16, offset: 3024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !766, file: !146, line: 252, baseType: !560, size: 16, offset: 3040)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !766, file: !146, line: 254, baseType: !28, size: 32, offset: 3072)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !766, file: !146, line: 256, baseType: !28, size: 32, offset: 3104)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !766, file: !146, line: 256, baseType: !28, size: 32, offset: 3136)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !766, file: !146, line: 256, baseType: !28, size: 32, offset: 3168)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !766, file: !146, line: 256, baseType: !28, size: 32, offset: 3200)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !766, file: !146, line: 257, baseType: !28, size: 32, offset: 3232)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !766, file: !146, line: 257, baseType: !28, size: 32, offset: 3264)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !766, file: !146, line: 257, baseType: !28, size: 32, offset: 3296)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !766, file: !146, line: 257, baseType: !28, size: 32, offset: 3328)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !766, file: !146, line: 259, baseType: !28, size: 32, offset: 3360)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !766, file: !146, line: 260, baseType: !28, size: 32, offset: 3392)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !766, file: !146, line: 262, baseType: !845, size: 64, offset: 3456)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !801, !848, !28, !28}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !51, line: 32, baseType: !57)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !766, file: !146, line: 263, baseType: !845, size: 64, offset: 3520)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !766, file: !146, line: 265, baseType: !851, size: 64, offset: 3584)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !801, !854, !864, !560, !586, !28, !28, !28, !28, !28}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !146, line: 85, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !146, line: 77, size: 128, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !856, file: !146, line: 79, baseType: !28, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !856, file: !146, line: 80, baseType: !28, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !856, file: !146, line: 81, baseType: !560, size: 16, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !856, file: !146, line: 82, baseType: !560, size: 16, offset: 80)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !856, file: !146, line: 83, baseType: !560, size: 16, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !856, file: !146, line: 84, baseType: !560, size: 16, offset: 112)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !766, file: !146, line: 268, baseType: !866, size: 64, offset: 3648)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!28, !801, !869, !28}
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !146, line: 97, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !766, file: !146, line: 269, baseType: !872, size: 64, offset: 3712)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!430, !801, !875, !894, !430, !28}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !146, line: 276, size: 384, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !890}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !146, line: 278, baseType: !28, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !876, file: !146, line: 279, baseType: !28, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !876, file: !146, line: 280, baseType: !28, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !876, file: !146, line: 281, baseType: !28, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !876, file: !146, line: 282, baseType: !28, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !876, file: !146, line: 283, baseType: !52, size: 32, offset: 160)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !876, file: !146, line: 284, baseType: !28, size: 32, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !876, file: !146, line: 285, baseType: !28, size: 32, offset: 224)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !876, file: !146, line: 293, baseType: !887, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !28, !28, !221, !221}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !876, file: !146, line: 295, baseType: !891, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !764, !875, !869}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !766, file: !146, line: 272, baseType: !99, size: 8, offset: 3776)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !146, line: 296, baseType: !876)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !503, file: !146, line: 441, baseType: !899, size: 64, offset: 2560)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !146, line: 153, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 145, size: 2912, elements: !902)
!902 = !{!903, !913, !917, !921, !924, !926}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !901, file: !146, line: 147, baseType: !904, size: 1056)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 1056, elements: !911)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !146, line: 122, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 117, size: 32, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !906, file: !146, line: 119, baseType: !581, size: 16)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !906, file: !146, line: 120, baseType: !101, size: 8, offset: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !906, file: !146, line: 121, baseType: !101, size: 8, offset: 24)
!911 = !{!178, !912}
!912 = !DISubrange(count: 11)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !901, file: !146, line: 148, baseType: !914, size: 576, offset: 1056)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 576, elements: !915)
!915 = !{!474, !916}
!916 = !DISubrange(count: 9)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !901, file: !146, line: 149, baseType: !918, size: 640, offset: 1632)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 640, elements: !919)
!919 = !{!474, !920}
!920 = !DISubrange(count: 10)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !901, file: !146, line: 150, baseType: !922, size: 384, offset: 2272)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 384, elements: !923)
!923 = !{!474, !253}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !901, file: !146, line: 151, baseType: !925, size: 128, offset: 2656)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 128, elements: !825)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !901, file: !146, line: 152, baseType: !925, size: 128, offset: 2784)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !503, file: !146, line: 442, baseType: !928, size: 64, offset: 2624)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !146, line: 175, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 164, size: 52768, elements: !931)
!931 = !{!932, !934, !936, !937, !940, !944, !948, !949, !953}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !930, file: !146, line: 166, baseType: !933, size: 96)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 96, elements: !177)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !930, file: !146, line: 167, baseType: !935, size: 64, offset: 96)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 64, elements: !473)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !930, file: !146, line: 168, baseType: !925, size: 128, offset: 160)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !930, file: !146, line: 169, baseType: !938, size: 384, offset: 288)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 384, elements: !939)
!939 = !{!178, !809}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !930, file: !146, line: 170, baseType: !941, size: 2816, offset: 672)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 2816, elements: !942)
!942 = !{!943, !809}
!943 = !DISubrange(count: 22)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !930, file: !146, line: 171, baseType: !945, size: 21120, offset: 3488)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 21120, elements: !946)
!946 = !{!474, !943, !947}
!947 = !DISubrange(count: 15)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !930, file: !146, line: 172, baseType: !945, size: 21120, offset: 24608)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !930, file: !146, line: 173, baseType: !950, size: 3520, offset: 45728)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 3520, elements: !951)
!951 = !{!943, !952}
!952 = !DISubrange(count: 5)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !930, file: !146, line: 174, baseType: !950, size: 3520, offset: 49248)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !503, file: !146, line: 444, baseType: !955, size: 6144, offset: 2688)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 6144, elements: !956)
!956 = !{!253, !370}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !503, file: !146, line: 446, baseType: !472, size: 64, offset: 8832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !503, file: !146, line: 447, baseType: !959, size: 128, offset: 8896)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !473)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !503, file: !146, line: 448, baseType: !959, size: 128, offset: 9024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !503, file: !146, line: 449, baseType: !959, size: 128, offset: 9152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !503, file: !146, line: 452, baseType: !959, size: 128, offset: 9280)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !503, file: !146, line: 454, baseType: !28, size: 32, offset: 9408)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !503, file: !146, line: 455, baseType: !28, size: 32, offset: 9440)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !503, file: !146, line: 456, baseType: !28, size: 32, offset: 9472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !503, file: !146, line: 458, baseType: !967, size: 256, offset: 9504)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !146, line: 337, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !146, line: 327, size: 256, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !968, file: !146, line: 329, baseType: !52, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !968, file: !146, line: 330, baseType: !52, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !968, file: !146, line: 331, baseType: !52, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !968, file: !146, line: 332, baseType: !52, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !968, file: !146, line: 333, baseType: !52, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !968, file: !146, line: 334, baseType: !52, size: 32, offset: 160)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !968, file: !146, line: 335, baseType: !52, size: 32, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !968, file: !146, line: 336, baseType: !52, size: 32, offset: 224)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !503, file: !146, line: 461, baseType: !560, size: 16, offset: 9760)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !503, file: !146, line: 462, baseType: !560, size: 16, offset: 9776)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !503, file: !146, line: 463, baseType: !560, size: 16, offset: 9792)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !503, file: !146, line: 465, baseType: !28, size: 32, offset: 9824)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !503, file: !146, line: 467, baseType: !28, size: 32, offset: 9856)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !503, file: !146, line: 468, baseType: !28, size: 32, offset: 9888)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !503, file: !146, line: 470, baseType: !28, size: 32, offset: 9920)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !503, file: !146, line: 471, baseType: !583, size: 64, offset: 9984)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !503, file: !146, line: 472, baseType: !583, size: 64, offset: 10048)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !503, file: !146, line: 473, baseType: !419, size: 64, offset: 10112)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !503, file: !146, line: 474, baseType: !419, size: 64, offset: 10176)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !503, file: !146, line: 475, baseType: !419, size: 64, offset: 10240)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !503, file: !146, line: 477, baseType: !991, size: 512, offset: 10304)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !992)
!992 = !{!254}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !503, file: !146, line: 479, baseType: !578, size: 64, offset: 10816)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !503, file: !146, line: 480, baseType: !578, size: 64, offset: 10880)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !503, file: !146, line: 481, baseType: !406, size: 64, offset: 10944)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !503, file: !146, line: 482, baseType: !578, size: 64, offset: 11008)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !503, file: !146, line: 483, baseType: !578, size: 64, offset: 11072)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !503, file: !146, line: 486, baseType: !999, size: 9216, offset: 11136)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 9216, elements: !1000)
!1000 = !{!178, !253, !809, !809}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !503, file: !146, line: 487, baseType: !999, size: 9216, offset: 20352)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !503, file: !146, line: 488, baseType: !1003, size: 36864, offset: 29568)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 36864, elements: !1004)
!1004 = !{!178, !253, !269, !269}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !503, file: !146, line: 489, baseType: !1003, size: 36864, offset: 66432)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !503, file: !146, line: 491, baseType: !1007, size: 768, offset: 103296)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 768, elements: !248)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !503, file: !146, line: 494, baseType: !1009, size: 2048, offset: 104064)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !1010)
!1010 = !{!258}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !503, file: !146, line: 495, baseType: !28, size: 32, offset: 106112)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !503, file: !146, line: 496, baseType: !28, size: 32, offset: 106144)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !503, file: !146, line: 500, baseType: !341, size: 16, offset: 106176)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !503, file: !146, line: 501, baseType: !341, size: 16, offset: 106192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !503, file: !146, line: 503, baseType: !341, size: 16, offset: 106208)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !503, file: !146, line: 504, baseType: !341, size: 16, offset: 106224)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !503, file: !146, line: 505, baseType: !419, size: 64, offset: 106240)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !503, file: !146, line: 506, baseType: !419, size: 64, offset: 106304)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !503, file: !146, line: 507, baseType: !1020, size: 64, offset: 106368)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !503, file: !146, line: 508, baseType: !560, size: 16, offset: 106432)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !503, file: !146, line: 509, baseType: !560, size: 16, offset: 106448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !503, file: !146, line: 512, baseType: !28, size: 32, offset: 106464)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !503, file: !146, line: 513, baseType: !28, size: 32, offset: 106496)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !503, file: !146, line: 514, baseType: !1026, size: 64, offset: 106560)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !503, file: !146, line: 515, baseType: !1026, size: 64, offset: 106624)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !503, file: !146, line: 520, baseType: !28, size: 32, offset: 106688)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !503, file: !146, line: 521, baseType: !1031, size: 544, offset: 106720)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 544, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 17)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !503, file: !146, line: 523, baseType: !1035, size: 64, offset: 107264)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !764}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !503, file: !146, line: 524, baseType: !1039, size: 64, offset: 107328)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!28, !764, !848, !578, !592}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !503, file: !146, line: 525, baseType: !1043, size: 64, offset: 107392)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!28, !506, !150}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !503, file: !146, line: 526, baseType: !1047, size: 64, offset: 107456)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!28, !769, !28}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !503, file: !146, line: 527, baseType: !1035, size: 64, offset: 107520)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !503, file: !146, line: 528, baseType: !1035, size: 64, offset: 107584)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !503, file: !146, line: 529, baseType: !1035, size: 64, offset: 107648)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !503, file: !146, line: 530, baseType: !1054, size: 64, offset: 107712)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !769}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !503, file: !146, line: 531, baseType: !1035, size: 64, offset: 107776)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !503, file: !146, line: 532, baseType: !887, size: 64, offset: 107840)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !503, file: !146, line: 533, baseType: !887, size: 64, offset: 107904)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !503, file: !146, line: 534, baseType: !1035, size: 64, offset: 107968)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !503, file: !146, line: 535, baseType: !28, size: 32, offset: 108032)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !503, file: !146, line: 536, baseType: !764, size: 64, offset: 108096)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !503, file: !146, line: 537, baseType: !592, size: 64, offset: 108160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !503, file: !146, line: 538, baseType: !406, size: 64, offset: 108224)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !503, file: !146, line: 539, baseType: !1066, size: 64, offset: 108288)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !503, file: !146, line: 540, baseType: !429, size: 64, offset: 108352)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !503, file: !146, line: 541, baseType: !1069, size: 768, offset: 108416)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 768, elements: !252)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !147, file: !146, line: 596, baseType: !429, size: 64, offset: 6789952)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !147, file: !146, line: 597, baseType: !1072, size: 192, offset: 6790016)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !177)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !146, line: 601, baseType: !28, size: 32, offset: 6790208)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !147, file: !146, line: 602, baseType: !28, size: 32, offset: 6790240)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !147, file: !146, line: 603, baseType: !28, size: 32, offset: 6790272)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !147, file: !146, line: 604, baseType: !28, size: 32, offset: 6790304)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !147, file: !146, line: 605, baseType: !28, size: 32, offset: 6790336)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !147, file: !146, line: 607, baseType: !1066, size: 64, offset: 6790400)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !147, file: !146, line: 608, baseType: !1080, size: 192, offset: 6790464)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 192, elements: !177)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !147, file: !146, line: 609, baseType: !1082, size: 64, offset: 6790656)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !147, file: !146, line: 610, baseType: !406, size: 64, offset: 6790720)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !147, file: !146, line: 611, baseType: !1086, size: 192, offset: 6790784)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 192, elements: !177)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !147, file: !146, line: 613, baseType: !28, size: 32, offset: 6790976)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !147, file: !146, line: 614, baseType: !28, size: 32, offset: 6791008)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !147, file: !146, line: 617, baseType: !501, size: 64, offset: 6791040)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !147, file: !146, line: 618, baseType: !764, size: 64, offset: 6791104)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !147, file: !146, line: 619, baseType: !1092, size: 192, offset: 6791168)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 192, elements: !177)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !147, file: !146, line: 621, baseType: !28, size: 32, offset: 6791360)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !147, file: !146, line: 626, baseType: !1095, size: 64, offset: 6791424)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !146, line: 626, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !147, file: !146, line: 627, baseType: !1095, size: 64, offset: 6791488)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !147, file: !146, line: 629, baseType: !52, size: 32, offset: 6791552)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !147, file: !146, line: 630, baseType: !28, size: 32, offset: 6791584)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !147, file: !146, line: 634, baseType: !28, size: 32, offset: 6791616)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !147, file: !146, line: 635, baseType: !52, size: 32, offset: 6791648)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !147, file: !146, line: 638, baseType: !28, size: 32, offset: 6791680)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !147, file: !146, line: 638, baseType: !28, size: 32, offset: 6791712)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !147, file: !146, line: 638, baseType: !28, size: 32, offset: 6791744)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !147, file: !146, line: 639, baseType: !52, size: 32, offset: 6791776)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !147, file: !146, line: 639, baseType: !52, size: 32, offset: 6791808)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !147, file: !146, line: 640, baseType: !28, size: 32, offset: 6791840)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !147, file: !146, line: 641, baseType: !28, size: 32, offset: 6791872)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !147, file: !146, line: 642, baseType: !28, size: 32, offset: 6791904)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !147, file: !146, line: 645, baseType: !28, size: 32, offset: 6791936)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !147, file: !146, line: 647, baseType: !52, size: 32, offset: 6791968)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !147, file: !146, line: 648, baseType: !52, size: 32, offset: 6792000)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !147, file: !146, line: 649, baseType: !52, size: 32, offset: 6792032)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !147, file: !146, line: 650, baseType: !52, size: 32, offset: 6792064)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !147, file: !146, line: 651, baseType: !52, size: 32, offset: 6792096)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !147, file: !146, line: 652, baseType: !52, size: 32, offset: 6792128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !147, file: !146, line: 653, baseType: !52, size: 32, offset: 6792160)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !147, file: !146, line: 655, baseType: !28, size: 32, offset: 6792192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !147, file: !146, line: 657, baseType: !28, size: 32, offset: 6792224)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !147, file: !146, line: 658, baseType: !28, size: 32, offset: 6792256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !147, file: !146, line: 661, baseType: !28, size: 32, offset: 6792288)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !147, file: !146, line: 662, baseType: !560, size: 16, offset: 6792320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !147, file: !146, line: 663, baseType: !560, size: 16, offset: 6792336)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !147, file: !146, line: 664, baseType: !472, size: 64, offset: 6792352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !147, file: !146, line: 665, baseType: !28, size: 32, offset: 6792416)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !147, file: !146, line: 666, baseType: !28, size: 32, offset: 6792448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !147, file: !146, line: 667, baseType: !1128, size: 96, offset: 6792480)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 96, elements: !177)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !147, file: !146, line: 668, baseType: !176, size: 96, offset: 6792576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !147, file: !146, line: 670, baseType: !28, size: 32, offset: 6792672)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !147, file: !146, line: 671, baseType: !28, size: 32, offset: 6792704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !147, file: !146, line: 672, baseType: !28, size: 32, offset: 6792736)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !147, file: !146, line: 673, baseType: !28, size: 32, offset: 6792768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !147, file: !146, line: 674, baseType: !28, size: 32, offset: 6792800)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !147, file: !146, line: 675, baseType: !28, size: 32, offset: 6792832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !147, file: !146, line: 676, baseType: !28, size: 32, offset: 6792864)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !147, file: !146, line: 677, baseType: !28, size: 32, offset: 6792896)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !147, file: !146, line: 678, baseType: !28, size: 32, offset: 6792928)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !147, file: !146, line: 679, baseType: !28, size: 32, offset: 6792960)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !147, file: !146, line: 680, baseType: !1141, size: 192, offset: 6792992)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !1142)
!1142 = !{!178, !474}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !147, file: !146, line: 681, baseType: !1141, size: 192, offset: 6793184)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !147, file: !146, line: 682, baseType: !1141, size: 192, offset: 6793376)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !147, file: !146, line: 683, baseType: !28, size: 32, offset: 6793568)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !147, file: !146, line: 684, baseType: !28, size: 32, offset: 6793600)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !147, file: !146, line: 685, baseType: !28, size: 32, offset: 6793632)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !147, file: !146, line: 686, baseType: !28, size: 32, offset: 6793664)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !147, file: !146, line: 687, baseType: !28, size: 32, offset: 6793696)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !147, file: !146, line: 689, baseType: !28, size: 32, offset: 6793728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !147, file: !146, line: 692, baseType: !28, size: 32, offset: 6793760)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !147, file: !146, line: 693, baseType: !28, size: 32, offset: 6793792)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !147, file: !146, line: 700, baseType: !28, size: 32, offset: 6793824)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !147, file: !146, line: 701, baseType: !28, size: 32, offset: 6793856)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !147, file: !146, line: 702, baseType: !28, size: 32, offset: 6793888)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !147, file: !146, line: 703, baseType: !28, size: 32, offset: 6793920)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !147, file: !146, line: 704, baseType: !28, size: 32, offset: 6793952)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !147, file: !146, line: 705, baseType: !52, size: 32, offset: 6793984)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !147, file: !146, line: 706, baseType: !28, size: 32, offset: 6794016)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !147, file: !146, line: 707, baseType: !28, size: 32, offset: 6794048)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !147, file: !146, line: 710, baseType: !28, size: 32, offset: 6794080)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !147, file: !146, line: 711, baseType: !28, size: 32, offset: 6794112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !147, file: !146, line: 712, baseType: !28, size: 32, offset: 6794144)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !147, file: !146, line: 713, baseType: !28, size: 32, offset: 6794176)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !147, file: !146, line: 714, baseType: !28, size: 32, offset: 6794208)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !147, file: !146, line: 716, baseType: !28, size: 32, offset: 6794240)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !147, file: !146, line: 717, baseType: !28, size: 32, offset: 6794272)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !147, file: !146, line: 719, baseType: !98, size: 64, offset: 6794304)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !147, file: !146, line: 720, baseType: !98, size: 64, offset: 6794368)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !147, file: !146, line: 722, baseType: !1171, size: 2560, offset: 6794432)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1172, line: 38, baseType: !1173)
!1172 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1172, line: 20, size: 2560, elements: !1174)
!1174 = !{!1175, !1176, !1178, !1179, !1180, !1184, !1185, !1186, !1187, !1188}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1173, file: !1172, line: 22, baseType: !166, size: 1088)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1173, file: !1172, line: 24, baseType: !1177, size: 192, offset: 1088)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 192, elements: !177)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1173, file: !1172, line: 25, baseType: !1177, size: 192, offset: 1280)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1173, file: !1172, line: 26, baseType: !1177, size: 192, offset: 1472)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1173, file: !1172, line: 31, baseType: !1181, size: 192, offset: 1664)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 192, elements: !177)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1173, file: !1172, line: 32, baseType: !1181, size: 192, offset: 1856)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1173, file: !1172, line: 33, baseType: !1181, size: 192, offset: 2048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1173, file: !1172, line: 35, baseType: !176, size: 96, offset: 2240)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1173, file: !1172, line: 36, baseType: !176, size: 96, offset: 2336)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1173, file: !1172, line: 37, baseType: !176, size: 96, offset: 2432)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !147, file: !146, line: 723, baseType: !1171, size: 2560, offset: 6796992)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !147, file: !146, line: 724, baseType: !1171, size: 2560, offset: 6799552)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !147, file: !146, line: 725, baseType: !1171, size: 2560, offset: 6802112)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !147, file: !146, line: 728, baseType: !1171, size: 2560, offset: 6804672)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !147, file: !146, line: 729, baseType: !1171, size: 2560, offset: 6807232)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !147, file: !146, line: 730, baseType: !1171, size: 2560, offset: 6809792)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !147, file: !146, line: 731, baseType: !1171, size: 2560, offset: 6812352)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !147, file: !146, line: 735, baseType: !52, size: 32, offset: 6814912)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !147, file: !146, line: 737, baseType: !28, size: 32, offset: 6814944)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !147, file: !146, line: 738, baseType: !28, size: 32, offset: 6814976)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !147, file: !146, line: 741, baseType: !813, size: 64, offset: 6815040)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !147, file: !146, line: 744, baseType: !28, size: 32, offset: 6815104)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !147, file: !146, line: 746, baseType: !676, size: 32768, offset: 6815136)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !147, file: !146, line: 748, baseType: !28, size: 32, offset: 6847904)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !147, file: !146, line: 751, baseType: !28, size: 32, offset: 6847936)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !147, file: !146, line: 752, baseType: !28, size: 32, offset: 6847968)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !147, file: !146, line: 755, baseType: !28, size: 32, offset: 6848000)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !147, file: !146, line: 756, baseType: !28, size: 32, offset: 6848032)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !147, file: !146, line: 758, baseType: !28, size: 32, offset: 6848064)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !147, file: !146, line: 759, baseType: !28, size: 32, offset: 6848096)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !147, file: !146, line: 762, baseType: !578, size: 64, offset: 6848128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !147, file: !146, line: 763, baseType: !583, size: 64, offset: 6848192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !147, file: !146, line: 765, baseType: !221, size: 64, offset: 6848256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !147, file: !146, line: 766, baseType: !221, size: 64, offset: 6848320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !147, file: !146, line: 768, baseType: !1027, size: 64, offset: 6848384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !147, file: !146, line: 769, baseType: !1215, size: 3200, offset: 6848448)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 3200, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 100)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !147, file: !146, line: 771, baseType: !592, size: 64, offset: 6851648)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !147, file: !146, line: 772, baseType: !1220, size: 192, offset: 6851712)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 192, elements: !177)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !147, file: !146, line: 773, baseType: !592, size: 64, offset: 6851904)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !147, file: !146, line: 776, baseType: !1223, size: 64, offset: 6851968)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !146, line: 776, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !147, file: !146, line: 777, baseType: !1226, size: 64, offset: 6852032)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !146, line: 777, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !147, file: !146, line: 779, baseType: !28, size: 32, offset: 6852096)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !147, file: !146, line: 780, baseType: !506, size: 64, offset: 6852160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !147, file: !146, line: 781, baseType: !1231, size: 640, offset: 6852224)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 20)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !147, file: !146, line: 783, baseType: !1235, size: 64, offset: 6852864)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !147, file: !146, line: 784, baseType: !1237, size: 64, offset: 6852928)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !146, line: 784, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !147, file: !146, line: 786, baseType: !1027, size: 64, offset: 6852992)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !147, file: !146, line: 788, baseType: !592, size: 64, offset: 6853056)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !147, file: !146, line: 789, baseType: !28, size: 32, offset: 6853120)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !147, file: !146, line: 790, baseType: !28, size: 32, offset: 6853152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !147, file: !146, line: 792, baseType: !28, size: 32, offset: 6853184)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !147, file: !146, line: 794, baseType: !512, size: 64, offset: 6853248)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !147, file: !146, line: 795, baseType: !512, size: 64, offset: 6853312)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !147, file: !146, line: 796, baseType: !1247, size: 128, offset: 6853376)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 128, elements: !473)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !147, file: !146, line: 800, baseType: !1249, size: 72, offset: 6853504)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1250)
!1250 = !{!916}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !147, file: !146, line: 802, baseType: !221, size: 64, offset: 6853632)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !147, file: !146, line: 803, baseType: !221, size: 64, offset: 6853696)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !147, file: !146, line: 804, baseType: !28, size: 32, offset: 6853760)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !147, file: !146, line: 807, baseType: !1255, size: 64, offset: 6853824)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !146, line: 807, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !147, file: !146, line: 810, baseType: !1258, size: 64, offset: 6853888)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !578, !1261, !28, !28, !28, !28, !28, !28}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !147, file: !146, line: 811, baseType: !1263, size: 64, offset: 6853952)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !764, !28, !28, !221, !854}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !147, file: !146, line: 812, baseType: !1267, size: 64, offset: 6854016)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !28, !612, !612}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !147, file: !146, line: 813, baseType: !1271, size: 64, offset: 6854080)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !98, !764, !28, !28, !592}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !147, file: !146, line: 814, baseType: !1271, size: 64, offset: 6854144)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !147, file: !146, line: 815, baseType: !1276, size: 64, offset: 6854208)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{null, !848, !578, !98, !764, !28, !592}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !147, file: !146, line: 816, baseType: !1276, size: 64, offset: 6854272)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !147, file: !146, line: 817, baseType: !1281, size: 64, offset: 6854336)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !578, !98, !764, !28, !28, !592}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !147, file: !146, line: 818, baseType: !1281, size: 64, offset: 6854400)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !147, file: !146, line: 819, baseType: !1286, size: 64, offset: 6854464)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !578, !1261, !28, !28, !28, !28, !28, !28, !28, !28}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !147, file: !146, line: 821, baseType: !1290, size: 64, offset: 6854528)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !146, line: 561, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !146, line: 544, size: 640, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1292, file: !146, line: 546, baseType: !28, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1292, file: !146, line: 547, baseType: !28, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1292, file: !146, line: 548, baseType: !28, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1292, file: !146, line: 549, baseType: !28, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1292, file: !146, line: 550, baseType: !28, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1292, file: !146, line: 551, baseType: !28, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1292, file: !146, line: 552, baseType: !98, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1292, file: !146, line: 553, baseType: !98, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1292, file: !146, line: 554, baseType: !98, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1292, file: !146, line: 555, baseType: !28, size: 32, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1292, file: !146, line: 556, baseType: !28, size: 32, offset: 416)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1292, file: !146, line: 557, baseType: !28, size: 32, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1292, file: !146, line: 558, baseType: !28, size: 32, offset: 480)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1292, file: !146, line: 559, baseType: !28, size: 32, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1292, file: !146, line: 560, baseType: !1309, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !147, file: !146, line: 822, baseType: !28, size: 32, offset: 6854592)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !147, file: !146, line: 823, baseType: !1312, size: 64, offset: 6854656)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !66, line: 54, size: 576, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !1313, file: !66, line: 56, baseType: !28, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1313, file: !66, line: 57, baseType: !52, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1313, file: !66, line: 58, baseType: !52, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !1313, file: !66, line: 59, baseType: !28, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !1313, file: !66, line: 60, baseType: !111, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !1313, file: !66, line: 61, baseType: !110, size: 32, offset: 160)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1313, file: !66, line: 62, baseType: !98, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !1313, file: !66, line: 63, baseType: !581, size: 16, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !1313, file: !66, line: 65, baseType: !28, size: 32, offset: 288)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1313, file: !66, line: 66, baseType: !28, size: 32, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1313, file: !66, line: 67, baseType: !28, size: 32, offset: 352)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1313, file: !66, line: 68, baseType: !28, size: 32, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1313, file: !66, line: 69, baseType: !28, size: 32, offset: 416)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1313, file: !66, line: 70, baseType: !28, size: 32, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1313, file: !66, line: 71, baseType: !28, size: 32, offset: 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1313, file: !66, line: 72, baseType: !28, size: 32, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !147, file: !146, line: 824, baseType: !28, size: 32, offset: 6854720)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !147, file: !146, line: 825, baseType: !28, size: 32, offset: 6854752)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !147, file: !146, line: 826, baseType: !28, size: 32, offset: 6854784)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !147, file: !146, line: 827, baseType: !28, size: 32, offset: 6854816)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !147, file: !146, line: 829, baseType: !28, size: 32, offset: 6854848)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !147, file: !146, line: 830, baseType: !28, size: 32, offset: 6854880)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !147, file: !146, line: 831, baseType: !28, size: 32, offset: 6854912)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !147, file: !146, line: 835, baseType: !235, size: 64, offset: 6854976)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !141, file: !2, line: 22, type: !144)
!1341 = !DILocation(line: 0, scope: !141)
!1342 = !DILocation(line: 24, column: 39, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !141, file: !2, line: 24, column: 8)
!1344 = !DILocation(line: 24, column: 16, scope: !1343)
!1345 = !DILocation(line: 24, column: 24, scope: !1343)
!1346 = !DILocation(line: 24, column: 68, scope: !1343)
!1347 = !DILocation(line: 24, column: 8, scope: !141)
!1348 = !DILocation(line: 26, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 25, column: 3)
!1350 = !DILocation(line: 27, column: 5, scope: !1349)
!1351 = !DILocation(line: 29, column: 15, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !141, file: !2, line: 29, column: 7)
!1353 = !DILocation(line: 28, column: 3, scope: !1349)
!1354 = !DILocation(line: 29, column: 52, scope: !1352)
!1355 = !DILocation(line: 29, column: 58, scope: !1352)
!1356 = !DILocation(line: 29, column: 45, scope: !1352)
!1357 = !DILocation(line: 29, column: 38, scope: !1352)
!1358 = !DILocation(line: 29, column: 24, scope: !1352)
!1359 = !DILocation(line: 29, column: 28, scope: !1352)
!1360 = !DILocation(line: 29, column: 69, scope: !1352)
!1361 = !DILocation(line: 29, column: 7, scope: !141)
!1362 = !DILocation(line: 31, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 30, column: 3)
!1364 = !DILocation(line: 32, column: 3, scope: !1363)
!1365 = !DILocation(line: 33, column: 1, scope: !141)
!1366 = !DISubprogram(name: "calloc", scope: !1367, file: !1367, line: 543, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!109, !1370, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1371, line: 18, baseType: !1372)
!1371 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1372 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1373 = !DISubprogram(name: "snprintf", scope: !1374, file: !1374, line: 378, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1374 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!28, !1377, !1370, !1379, null}
!1377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1382 = !DISubprogram(name: "error", scope: !146, file: !146, line: 940, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1378, !28}
!1385 = !DISubprogram(name: "malloc", scope: !1367, file: !1367, line: 540, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!109, !1370}
!1388 = distinct !DISubprogram(name: "init_annex_b", scope: !2, file: !2, line: 36, type: !1389, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !91}
!1391 = !{!1392}
!1392 = !DILocalVariable(name: "annex_b", arg: 1, scope: !1388, file: !2, line: 36, type: !91)
!1393 = !DILocation(line: 0, scope: !1388)
!1394 = !DILocation(line: 38, column: 26, scope: !1388)
!1395 = !DILocation(line: 39, column: 12, scope: !1388)
!1396 = !DILocation(line: 43, column: 12, scope: !1388)
!1397 = !DILocation(line: 40, column: 25, scope: !1388)
!1398 = !DILocation(line: 43, column: 34, scope: !1388)
!1399 = !DILocation(line: 44, column: 12, scope: !1388)
!1400 = !DILocation(line: 44, column: 31, scope: !1388)
!1401 = !DILocation(line: 45, column: 1, scope: !1388)
!1402 = distinct !DISubprogram(name: "free_annex_b", scope: !2, file: !2, line: 47, type: !142, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1403)
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1402, file: !2, line: 47, type: !144)
!1405 = !DILocation(line: 0, scope: !1402)
!1406 = !DILocation(line: 49, column: 15, scope: !1402)
!1407 = !DILocation(line: 49, column: 24, scope: !1402)
!1408 = !DILocation(line: 49, column: 3, scope: !1402)
!1409 = !DILocation(line: 50, column: 10, scope: !1402)
!1410 = !DILocation(line: 50, column: 19, scope: !1402)
!1411 = !DILocation(line: 50, column: 23, scope: !1402)
!1412 = !DILocation(line: 51, column: 15, scope: !1402)
!1413 = !DILocation(line: 51, column: 3, scope: !1402)
!1414 = !DILocation(line: 52, column: 18, scope: !1402)
!1415 = !DILocation(line: 53, column: 1, scope: !1402)
!1416 = !DISubprogram(name: "free", scope: !1367, file: !1367, line: 555, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !109}
!1419 = distinct !DISubprogram(name: "GetAnnexbNALU", scope: !2, file: !2, line: 146, type: !1420, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1424)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!28, !144, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !66, line: 74, baseType: !1313)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1425 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1419, file: !2, line: 146, type: !144)
!1426 = !DILocalVariable(name: "nalu", arg: 2, scope: !1419, file: !2, line: 146, type: !1422)
!1427 = !DILocalVariable(name: "annex_b", scope: !1419, file: !2, line: 148, type: !91)
!1428 = !DILocalVariable(name: "i", scope: !1419, file: !2, line: 149, type: !28)
!1429 = !DILocalVariable(name: "info2", scope: !1419, file: !2, line: 150, type: !28)
!1430 = !DILocalVariable(name: "info3", scope: !1419, file: !2, line: 150, type: !28)
!1431 = !DILocalVariable(name: "pos", scope: !1419, file: !2, line: 150, type: !28)
!1432 = !DILocalVariable(name: "StartCodeFound", scope: !1419, file: !2, line: 151, type: !28)
!1433 = !DILocalVariable(name: "LeadingZero8BitsCount", scope: !1419, file: !2, line: 152, type: !28)
!1434 = !DILocalVariable(name: "pBuf", scope: !1419, file: !2, line: 153, type: !98)
!1435 = !DILocation(line: 0, scope: !1419)
!1436 = !DILocation(line: 148, column: 30, scope: !1419)
!1437 = !DILocation(line: 153, column: 25, scope: !1419)
!1438 = !DILocation(line: 155, column: 16, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 155, column: 7)
!1440 = !DILocation(line: 155, column: 35, scope: !1439)
!1441 = !DILocation(line: 155, column: 7, scope: !1419)
!1442 = !DILocation(line: 157, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 157, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 157, column: 5)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 156, column: 3)
!1446 = !DILocation(line: 157, column: 5, scope: !1444)
!1447 = !DILocation(line: 167, column: 5, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 166, column: 3)
!1449 = !DILocation(line: 159, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 158, column: 5)
!1451 = !DILocation(line: 159, column: 17, scope: !1450)
!1452 = !DILocation(line: 160, column: 10, scope: !1450)
!1453 = !DILocation(line: 157, column: 26, scope: !1443)
!1454 = !DILocation(line: 157, column: 44, scope: !1443)
!1455 = distinct !{!1455, !1446, !1456}
!1456 = !DILocation(line: 161, column: 5, scope: !1444)
!1457 = !DILocation(line: 163, column: 8, scope: !1445)
!1458 = !DILocation(line: 162, column: 11, scope: !1445)
!1459 = !DILocation(line: 162, column: 15, scope: !1445)
!1460 = !DILocation(line: 164, column: 3, scope: !1445)
!1461 = !DILocation(line: 167, column: 21, scope: !1448)
!1462 = !DILocation(line: 167, column: 11, scope: !1448)
!1463 = !DILocation(line: 169, column: 10, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 168, column: 5)
!1465 = !DILocalVariable(name: "annex_b", arg: 1, scope: !1466, file: !2, line: 81, type: !91)
!1466 = distinct !DISubprogram(name: "getfbyte", scope: !2, file: !2, line: 81, type: !1467, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!99, !91}
!1469 = !{!1465}
!1470 = !DILocation(line: 0, scope: !1466, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 170, column: 23, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 170, column: 11)
!1473 = !DILocation(line: 83, column: 21, scope: !1474, inlinedAt: !1471)
!1474 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 83, column: 7)
!1475 = !DILocation(line: 83, column: 9, scope: !1474, inlinedAt: !1471)
!1476 = !DILocation(line: 83, column: 7, scope: !1466, inlinedAt: !1471)
!1477 = !DILocalVariable(name: "annex_b", arg: 1, scope: !1478, file: !2, line: 61, type: !91)
!1478 = distinct !DISubprogram(name: "getChunk", scope: !2, file: !2, line: 61, type: !1479, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!28, !91}
!1481 = !{!1477, !1482}
!1482 = !DILocalVariable(name: "readbytes", scope: !1478, file: !2, line: 63, type: !52)
!1483 = !DILocation(line: 0, scope: !1478, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 85, column: 14, scope: !1485, inlinedAt: !1471)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 85, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 84, column: 3)
!1487 = !DILocation(line: 63, column: 43, scope: !1478, inlinedAt: !1484)
!1488 = !DILocation(line: 63, column: 67, scope: !1478, inlinedAt: !1484)
!1489 = !DILocation(line: 63, column: 86, scope: !1478, inlinedAt: !1484)
!1490 = !DILocation(line: 63, column: 77, scope: !1478, inlinedAt: !1484)
!1491 = !DILocation(line: 63, column: 28, scope: !1478, inlinedAt: !1484)
!1492 = !DILocation(line: 64, column: 8, scope: !1493, inlinedAt: !1484)
!1493 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 64, column: 7)
!1494 = !DILocation(line: 64, column: 7, scope: !1478, inlinedAt: !1484)
!1495 = !DILocation(line: 66, column: 21, scope: !1496, inlinedAt: !1484)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 65, column: 3)
!1497 = !DILocation(line: 85, column: 9, scope: !1486, inlinedAt: !1471)
!1498 = !DILocation(line: 88, column: 25, scope: !1466, inlinedAt: !1471)
!1499 = !DILocation(line: 89, column: 33, scope: !1466, inlinedAt: !1471)
!1500 = !DILocation(line: 89, column: 11, scope: !1466, inlinedAt: !1471)
!1501 = !DILocation(line: 89, column: 3, scope: !1466, inlinedAt: !1471)
!1502 = !DILocation(line: 170, column: 18, scope: !1472)
!1503 = !DILocation(line: 170, column: 21, scope: !1472)
!1504 = !DILocation(line: 170, column: 41, scope: !1472)
!1505 = !DILocation(line: 170, column: 11, scope: !1464)
!1506 = distinct !{!1506, !1447, !1507}
!1507 = !DILocation(line: 172, column: 5, scope: !1448)
!1508 = !DILocation(line: 174, column: 15, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 174, column: 6)
!1510 = !DILocation(line: 174, column: 22, scope: !1509)
!1511 = !DILocation(line: 174, column: 6, scope: !1419)
!1512 = !DILocation(line: 176, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 176, column: 8)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 175, column: 3)
!1515 = !DILocation(line: 176, column: 8, scope: !1514)
!1516 = !DILocation(line: 182, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 181, column: 5)
!1518 = !DILocation(line: 183, column: 7, scope: !1517)
!1519 = !DILocation(line: 187, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 187, column: 6)
!1521 = !DILocation(line: 187, column: 6, scope: !1520)
!1522 = !DILocation(line: 187, column: 18, scope: !1520)
!1523 = !DILocation(line: 187, column: 23, scope: !1520)
!1524 = !DILocation(line: 189, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 188, column: 3)
!1526 = !DILocation(line: 190, column: 5, scope: !1525)
!1527 = !DILocation(line: 193, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 193, column: 7)
!1529 = !DILocation(line: 193, column: 7, scope: !1419)
!1530 = !DILocation(line: 0, scope: !1528)
!1531 = !DILocation(line: 206, column: 16, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 206, column: 6)
!1533 = !DILocation(line: 206, column: 7, scope: !1532)
!1534 = !DILocation(line: 206, column: 38, scope: !1532)
!1535 = !DILocation(line: 208, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 207, column: 3)
!1537 = !DILocation(line: 209, column: 5, scope: !1536)
!1538 = !DILocation(line: 213, column: 34, scope: !1419)
!1539 = !DILocation(line: 215, column: 3, scope: !1419)
!1540 = !DILocation(line: 217, column: 18, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 217, column: 9)
!1542 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 216, column: 3)
!1543 = !DILocation(line: 217, column: 25, scope: !1541)
!1544 = !DILocation(line: 217, column: 9, scope: !1542)
!1545 = !DILocation(line: 219, column: 12, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 218, column: 5)
!1547 = !DILocation(line: 220, column: 13, scope: !1546)
!1548 = !DILocation(line: 220, column: 22, scope: !1546)
!1549 = !DILocation(line: 220, column: 7, scope: !1546)
!1550 = !DILocation(line: 220, column: 19, scope: !1546)
!1551 = !DILocation(line: 221, column: 12, scope: !1546)
!1552 = distinct !{!1552, !1549, !1551}
!1553 = !DILocation(line: 223, column: 24, scope: !1546)
!1554 = !DILocation(line: 223, column: 29, scope: !1546)
!1555 = !DILocation(line: 223, column: 13, scope: !1546)
!1556 = !DILocation(line: 223, column: 17, scope: !1546)
!1557 = !DILocation(line: 224, column: 21, scope: !1546)
!1558 = !DILocation(line: 224, column: 35, scope: !1546)
!1559 = !DILocation(line: 224, column: 39, scope: !1546)
!1560 = !DILocation(line: 224, column: 64, scope: !1546)
!1561 = !DILocation(line: 224, column: 7, scope: !1546)
!1562 = !DILocation(line: 225, column: 42, scope: !1546)
!1563 = !DILocation(line: 225, column: 34, scope: !1546)
!1564 = !DILocation(line: 225, column: 47, scope: !1546)
!1565 = !DILocation(line: 225, column: 13, scope: !1546)
!1566 = !DILocation(line: 225, column: 31, scope: !1546)
!1567 = !DILocation(line: 226, column: 47, scope: !1546)
!1568 = !DILocation(line: 226, column: 60, scope: !1546)
!1569 = !DILocation(line: 226, column: 66, scope: !1546)
!1570 = !DILocation(line: 226, column: 13, scope: !1546)
!1571 = !DILocation(line: 226, column: 31, scope: !1546)
!1572 = !DILocation(line: 227, column: 46, scope: !1546)
!1573 = !DILocation(line: 227, column: 60, scope: !1546)
!1574 = !DILocation(line: 227, column: 13, scope: !1546)
!1575 = !DILocation(line: 227, column: 31, scope: !1546)
!1576 = !DILocation(line: 228, column: 35, scope: !1546)
!1577 = !DILocation(line: 238, column: 7, scope: !1546)
!1578 = !DILocation(line: 241, column: 8, scope: !1542)
!1579 = !DILocation(line: 0, scope: !1466, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 242, column: 19, scope: !1542)
!1581 = !DILocation(line: 83, column: 21, scope: !1474, inlinedAt: !1580)
!1582 = !DILocation(line: 83, column: 9, scope: !1474, inlinedAt: !1580)
!1583 = !DILocation(line: 83, column: 7, scope: !1466, inlinedAt: !1580)
!1584 = !DILocation(line: 0, scope: !1478, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 85, column: 14, scope: !1485, inlinedAt: !1580)
!1586 = !DILocation(line: 63, column: 43, scope: !1478, inlinedAt: !1585)
!1587 = !DILocation(line: 63, column: 67, scope: !1478, inlinedAt: !1585)
!1588 = !DILocation(line: 63, column: 86, scope: !1478, inlinedAt: !1585)
!1589 = !DILocation(line: 63, column: 77, scope: !1478, inlinedAt: !1585)
!1590 = !DILocation(line: 63, column: 28, scope: !1478, inlinedAt: !1585)
!1591 = !DILocation(line: 64, column: 8, scope: !1493, inlinedAt: !1585)
!1592 = !DILocation(line: 64, column: 7, scope: !1478, inlinedAt: !1585)
!1593 = !DILocation(line: 66, column: 21, scope: !1496, inlinedAt: !1585)
!1594 = !DILocation(line: 85, column: 9, scope: !1486, inlinedAt: !1580)
!1595 = !DILocation(line: 88, column: 25, scope: !1466, inlinedAt: !1580)
!1596 = !DILocation(line: 89, column: 33, scope: !1466, inlinedAt: !1580)
!1597 = !DILocation(line: 89, column: 11, scope: !1466, inlinedAt: !1580)
!1598 = !DILocation(line: 89, column: 3, scope: !1466, inlinedAt: !1580)
!1599 = !DILocation(line: 242, column: 12, scope: !1542)
!1600 = !DILocation(line: 242, column: 17, scope: !1542)
!1601 = !DILocation(line: 243, column: 32, scope: !1542)
!1602 = !DILocalVariable(name: "zeros_in_startcode", arg: 2, scope: !1603, file: !2, line: 108, type: !28)
!1603 = distinct !DISubprogram(name: "FindStartCode", scope: !2, file: !2, line: 108, type: !1604, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!28, !1261, !28}
!1606 = !{!1607, !1602, !1608}
!1607 = !DILocalVariable(name: "Buf", arg: 1, scope: !1603, file: !2, line: 108, type: !1261)
!1608 = !DILocalVariable(name: "i", scope: !1603, file: !2, line: 110, type: !28)
!1609 = !DILocation(line: 0, scope: !1603, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 243, column: 13, scope: !1542)
!1611 = !DILocation(line: 114, column: 8, scope: !1612, inlinedAt: !1610)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 114, column: 8)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 113, column: 3)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 112, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 112, column: 3)
!1616 = !DILocation(line: 114, column: 17, scope: !1612, inlinedAt: !1610)
!1617 = !DILocation(line: 114, column: 8, scope: !1612, inlinedAt: !1618)
!1618 = !DILocation(line: 0, scope: !1542)
!1619 = !DILocation(line: 114, column: 17, scope: !1612, inlinedAt: !1618)
!1620 = !DILocation(line: 114, column: 8, scope: !1613, inlinedAt: !1610)
!1621 = !DILocation(line: 114, column: 13, scope: !1612, inlinedAt: !1610)
!1622 = !DILocation(line: 0, scope: !1603, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 246, column: 15, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 245, column: 5)
!1625 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 244, column: 8)
!1626 = !DILocation(line: 114, column: 8, scope: !1613, inlinedAt: !1623)
!1627 = !DILocation(line: 114, column: 13, scope: !1612, inlinedAt: !1623)
!1628 = !DILocation(line: 114, column: 8, scope: !1612, inlinedAt: !1623)
!1629 = !DILocation(line: 114, column: 17, scope: !1612, inlinedAt: !1623)
!1630 = !DILocation(line: 120, column: 11, scope: !1631, inlinedAt: !1623)
!1631 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 120, column: 6)
!1632 = !DILocation(line: 215, column: 10, scope: !1419)
!1633 = distinct !{!1633, !1539, !1634}
!1634 = !DILocation(line: 251, column: 3, scope: !1419)
!1635 = !DILocation(line: 257, column: 10, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 256, column: 3)
!1637 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 255, column: 6)
!1638 = !DILocation(line: 258, column: 11, scope: !1636)
!1639 = !DILocation(line: 258, column: 21, scope: !1636)
!1640 = !DILocation(line: 258, column: 5, scope: !1636)
!1641 = !DILocation(line: 258, column: 17, scope: !1636)
!1642 = !DILocation(line: 259, column: 10, scope: !1636)
!1643 = distinct !{!1643, !1640, !1642}
!1644 = !DILocation(line: 0, scope: !1637)
!1645 = !DILocation(line: 270, column: 7, scope: !1419)
!1646 = !DILocation(line: 278, column: 19, scope: !1419)
!1647 = !DILocation(line: 278, column: 9, scope: !1419)
!1648 = !DILocation(line: 278, column: 13, scope: !1419)
!1649 = !DILocation(line: 279, column: 22, scope: !1419)
!1650 = !DILocation(line: 279, column: 36, scope: !1419)
!1651 = !DILocation(line: 279, column: 40, scope: !1419)
!1652 = !DILocalVariable(name: "dst", arg: 1, scope: !1653, file: !1654, line: 26, type: !109)
!1653 = distinct !DISubprogram(name: "fast_memcpy", scope: !1654, file: !1654, line: 26, type: !1655, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1657)
!1654 = !DIFile(filename: "ldecod_src/inc/fast_memory.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "49b3114f30776e7555e4b756c6802326")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !109, !109, !28}
!1657 = !{!1652, !1658, !1659}
!1658 = !DILocalVariable(name: "src", arg: 2, scope: !1653, file: !1654, line: 26, type: !109)
!1659 = !DILocalVariable(name: "width", arg: 3, scope: !1653, file: !1654, line: 26, type: !28)
!1660 = !DILocation(line: 0, scope: !1653, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 279, column: 3, scope: !1419)
!1662 = !DILocation(line: 28, column: 18, scope: !1653, inlinedAt: !1661)
!1663 = !DILocation(line: 28, column: 3, scope: !1653, inlinedAt: !1661)
!1664 = !DILocation(line: 280, column: 38, scope: !1419)
!1665 = !DILocation(line: 280, column: 30, scope: !1419)
!1666 = !DILocation(line: 280, column: 43, scope: !1419)
!1667 = !DILocation(line: 280, column: 9, scope: !1419)
!1668 = !DILocation(line: 280, column: 27, scope: !1419)
!1669 = !DILocation(line: 281, column: 43, scope: !1419)
!1670 = !DILocation(line: 281, column: 56, scope: !1419)
!1671 = !DILocation(line: 281, column: 62, scope: !1419)
!1672 = !DILocation(line: 281, column: 9, scope: !1419)
!1673 = !DILocation(line: 281, column: 27, scope: !1419)
!1674 = !DILocation(line: 282, column: 42, scope: !1419)
!1675 = !DILocation(line: 282, column: 56, scope: !1419)
!1676 = !DILocation(line: 282, column: 9, scope: !1419)
!1677 = !DILocation(line: 282, column: 27, scope: !1419)
!1678 = !DILocation(line: 283, column: 9, scope: !1419)
!1679 = !DILocation(line: 283, column: 22, scope: !1419)
!1680 = !DILocation(line: 293, column: 3, scope: !1419)
!1681 = !DILocation(line: 295, column: 1, scope: !1419)
!1682 = distinct !DISubprogram(name: "OpenAnnexBFile", scope: !2, file: !2, line: 307, type: !1683, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !144, !1378}
!1685 = !{!1686, !1687, !1688}
!1686 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1682, file: !2, line: 307, type: !144)
!1687 = !DILocalVariable(name: "fn", arg: 2, scope: !1682, file: !2, line: 307, type: !1378)
!1688 = !DILocalVariable(name: "annex_b", scope: !1682, file: !2, line: 309, type: !91)
!1689 = !DILocation(line: 0, scope: !1682)
!1690 = !DILocation(line: 309, column: 30, scope: !1682)
!1691 = !DILocation(line: 310, column: 24, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 310, column: 7)
!1693 = !DILocation(line: 310, column: 12, scope: !1692)
!1694 = !DILocation(line: 310, column: 7, scope: !1682)
!1695 = !DILocation(line: 312, column: 5, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 311, column: 3)
!1697 = !DILocation(line: 313, column: 3, scope: !1696)
!1698 = !DILocation(line: 314, column: 33, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 314, column: 7)
!1700 = !DILocation(line: 314, column: 31, scope: !1699)
!1701 = !DILocation(line: 314, column: 59, scope: !1699)
!1702 = !DILocation(line: 314, column: 7, scope: !1682)
!1703 = !DILocation(line: 316, column: 5, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 315, column: 3)
!1705 = !DILocation(line: 317, column: 5, scope: !1704)
!1706 = !DILocation(line: 318, column: 3, scope: !1704)
!1707 = !DILocation(line: 320, column: 12, scope: !1682)
!1708 = !DILocation(line: 320, column: 26, scope: !1682)
!1709 = !DILocation(line: 321, column: 23, scope: !1682)
!1710 = !DILocation(line: 321, column: 21, scope: !1682)
!1711 = !DILocation(line: 322, column: 12, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 322, column: 7)
!1713 = !DILocation(line: 322, column: 7, scope: !1682)
!1714 = !DILocation(line: 324, column: 5, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 323, column: 3)
!1716 = !DILocation(line: 63, column: 67, scope: !1478, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 327, column: 3, scope: !1682)
!1718 = !DILocation(line: 63, column: 86, scope: !1478, inlinedAt: !1717)
!1719 = !DILocation(line: 63, column: 77, scope: !1478, inlinedAt: !1717)
!1720 = !DILocation(line: 325, column: 3, scope: !1715)
!1721 = !DILocation(line: 326, column: 12, scope: !1682)
!1722 = !DILocation(line: 326, column: 19, scope: !1682)
!1723 = !DILocation(line: 0, scope: !1478, inlinedAt: !1717)
!1724 = !DILocation(line: 63, column: 43, scope: !1478, inlinedAt: !1717)
!1725 = !DILocation(line: 63, column: 28, scope: !1478, inlinedAt: !1717)
!1726 = !DILocation(line: 64, column: 8, scope: !1493, inlinedAt: !1717)
!1727 = !DILocation(line: 64, column: 7, scope: !1478, inlinedAt: !1717)
!1728 = !DILocation(line: 66, column: 21, scope: !1496, inlinedAt: !1717)
!1729 = !DILocation(line: 67, column: 5, scope: !1496, inlinedAt: !1717)
!1730 = !DILocation(line: 70, column: 12, scope: !1478, inlinedAt: !1717)
!1731 = !DILocation(line: 70, column: 26, scope: !1478, inlinedAt: !1717)
!1732 = !DILocation(line: 71, column: 36, scope: !1478, inlinedAt: !1717)
!1733 = !DILocation(line: 71, column: 12, scope: !1478, inlinedAt: !1717)
!1734 = !DILocation(line: 71, column: 25, scope: !1478, inlinedAt: !1717)
!1735 = !DILocation(line: 72, column: 3, scope: !1478, inlinedAt: !1717)
!1736 = !DILocation(line: 328, column: 1, scope: !1682)
!1737 = !DISubprogram(name: "open", scope: !1738, file: !1738, line: 181, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1738 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!28, !1380, !28, null}
!1741 = distinct !DISubprogram(name: "CloseAnnexBFile", scope: !2, file: !2, line: 337, type: !142, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1742)
!1742 = !{!1743, !1744}
!1743 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1741, file: !2, line: 337, type: !144)
!1744 = !DILocalVariable(name: "annex_b", scope: !1741, file: !2, line: 339, type: !91)
!1745 = !DILocation(line: 0, scope: !1741)
!1746 = !DILocation(line: 339, column: 30, scope: !1741)
!1747 = !DILocation(line: 340, column: 16, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 340, column: 7)
!1749 = !DILocation(line: 340, column: 30, scope: !1748)
!1750 = !DILocation(line: 340, column: 7, scope: !1741)
!1751 = !DILocation(line: 342, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 341, column: 3)
!1753 = !DILocation(line: 343, column: 28, scope: !1752)
!1754 = !DILocation(line: 344, column: 3, scope: !1752)
!1755 = !DILocation(line: 345, column: 18, scope: !1741)
!1756 = !DILocation(line: 345, column: 3, scope: !1741)
!1757 = !DILocation(line: 346, column: 21, scope: !1741)
!1758 = !DILocation(line: 347, column: 1, scope: !1741)
!1759 = !DISubprogram(name: "close", scope: !1760, file: !1760, line: 358, type: !1761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!28, !28}
!1763 = distinct !DISubprogram(name: "ResetAnnexB", scope: !2, file: !2, line: 350, type: !1389, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "annex_b", arg: 1, scope: !1763, file: !2, line: 350, type: !91)
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !DILocation(line: 352, column: 12, scope: !1763)
!1768 = !DILocation(line: 352, column: 19, scope: !1763)
!1769 = !DILocation(line: 353, column: 12, scope: !1763)
!1770 = !DILocation(line: 353, column: 26, scope: !1763)
!1771 = !DILocation(line: 354, column: 36, scope: !1763)
!1772 = !DILocation(line: 354, column: 12, scope: !1763)
!1773 = !DILocation(line: 354, column: 25, scope: !1763)
!1774 = !DILocation(line: 355, column: 1, scope: !1763)
!1775 = !DISubprogram(name: "read", scope: !1760, file: !1760, line: 371, type: !1776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1778, !28, !109, !1370}
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1760, line: 220, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !818, line: 194, baseType: !819)
