; ModuleID = 'ldecod_src/nalu.c'
source_filename = "ldecod_src/nalu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"initBitsFile : p_Vid->bitsfile\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [42 x i8] c"initBitsFile: Unknown bitstream file mode\00", align 1, !dbg !7
@errortext = external global [300 x i8], align 16
@.str.2 = private unnamed_addr constant [54 x i8] c"Error while getting the NALU in file format %s, exit\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"Annex B\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [4 x i8] c"RTP\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [46 x i8] c"Invalid startcode emulation prevention found.\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [46 x i8] c"Found NALU with forbidden_bit set, bit error?\00", align 1, !dbg !32
@.str.9 = private unnamed_addr constant [13 x i8] c"non_idr_flag\00", align 1, !dbg !34
@.str.10 = private unnamed_addr constant [12 x i8] c"priority_id\00", align 1, !dbg !39
@.str.11 = private unnamed_addr constant [8 x i8] c"view_id\00", align 1, !dbg !44
@.str.12 = private unnamed_addr constant [12 x i8] c"temporal_id\00", align 1, !dbg !46
@.str.13 = private unnamed_addr constant [16 x i8] c"anchor_pic_flag\00", align 1, !dbg !48
@.str.14 = private unnamed_addr constant [16 x i8] c"inter_view_flag\00", align 1, !dbg !53
@.str.15 = private unnamed_addr constant [17 x i8] c"reserved_one_bit\00", align 1, !dbg !55
@str = private unnamed_addr constant [31 x i8] c"Warning: zero_byte shall exist\00", align 1
@str.17 = private unnamed_addr constant [31 x i8] c"warning: zero_byte shall exist\00", align 1
@str.18 = private unnamed_addr constant [54 x i8] c"Nalu Header MVC Extension: reserved_one_bit is not 1!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @initBitsFile(ptr noundef %p_Vid, i32 noundef %filemode) local_unnamed_addr #0 !dbg !1373 {
entry:
    #dbg_value(ptr %p_Vid, !1377, !DIExpression(), !1379)
    #dbg_value(i32 %filemode, !1378, !DIExpression(), !1379)
  switch i32 %filemode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !1380

sw.bb:                                            ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7, !dbg !1381
  %bitsfile = getelementptr inbounds i8, ptr %p_Vid, i64 856616, !dbg !1384
  store ptr %call, ptr %bitsfile, align 8, !dbg !1385
  %cmp = icmp eq ptr %call, null, !dbg !1386
  br i1 %cmp, label %if.then, label %if.end, !dbg !1387

if.then:                                          ; preds = %sw.bb
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8, !dbg !1388
  %.pre24 = load ptr, ptr %bitsfile, align 8, !dbg !1389
  br label %if.end, !dbg !1388

if.end:                                           ; preds = %if.then, %sw.bb
  %0 = phi ptr [ %.pre24, %if.then ], [ %call, %sw.bb ], !dbg !1389
  store ptr @OpenAnnexBFile, ptr %0, align 8, !dbg !1390
  %1 = load ptr, ptr %bitsfile, align 8, !dbg !1391
  %CloseBitsFile = getelementptr inbounds i8, ptr %1, i64 8, !dbg !1392
  store ptr @CloseAnnexBFile, ptr %CloseBitsFile, align 8, !dbg !1393
  %2 = load ptr, ptr %bitsfile, align 8, !dbg !1394
  %GetNALU = getelementptr inbounds i8, ptr %2, i64 16, !dbg !1395
  store ptr @GetAnnexbNALU, ptr %GetNALU, align 8, !dbg !1396
  tail call void @malloc_annex_b(ptr noundef nonnull %p_Vid) #8, !dbg !1397
  br label %sw.epilog, !dbg !1398

sw.bb4:                                           ; preds = %entry
  %call5 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7, !dbg !1399
  %bitsfile6 = getelementptr inbounds i8, ptr %p_Vid, i64 856616, !dbg !1401
  store ptr %call5, ptr %bitsfile6, align 8, !dbg !1402
  %cmp7 = icmp eq ptr %call5, null, !dbg !1403
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1404

if.then8:                                         ; preds = %sw.bb4
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #8, !dbg !1405
  %.pre = load ptr, ptr %bitsfile6, align 8, !dbg !1406
  br label %if.end9, !dbg !1405

if.end9:                                          ; preds = %if.then8, %sw.bb4
  %3 = phi ptr [ %.pre, %if.then8 ], [ %call5, %sw.bb4 ], !dbg !1406
  store ptr @OpenRTPFile, ptr %3, align 8, !dbg !1407
  %4 = load ptr, ptr %bitsfile6, align 8, !dbg !1408
  %CloseBitsFile13 = getelementptr inbounds i8, ptr %4, i64 8, !dbg !1409
  store ptr @CloseRTPFile, ptr %CloseBitsFile13, align 8, !dbg !1410
  %5 = load ptr, ptr %bitsfile6, align 8, !dbg !1411
  %GetNALU15 = getelementptr inbounds i8, ptr %5, i64 16, !dbg !1412
  store ptr @GetRTPNALU, ptr %GetNALU15, align 8, !dbg !1413
  br label %sw.epilog, !dbg !1414

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 255) #8, !dbg !1415
  br label %sw.epilog, !dbg !1416

sw.epilog:                                        ; preds = %sw.default, %if.end9, %if.end
  ret void, !dbg !1417
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1418 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1425 void @no_mem_exit(ptr noundef) local_unnamed_addr #2

declare void @OpenAnnexBFile(ptr noundef, ptr noundef) #2

declare void @CloseAnnexBFile(ptr noundef) #2

declare i32 @GetAnnexbNALU(ptr noundef, ptr noundef) #2

declare !dbg !1429 void @malloc_annex_b(ptr noundef) local_unnamed_addr #2

declare void @OpenRTPFile(ptr noundef, ptr noundef) #2

declare void @CloseRTPFile(ptr noundef) #2

declare i32 @GetRTPNALU(ptr noundef, ptr noundef) #2

declare !dbg !1430 void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @read_next_nalu(ptr noundef %p_Vid, ptr noundef %nalu) local_unnamed_addr #0 !dbg !1433 {
entry:
    #dbg_value(ptr %p_Vid, !1435, !DIExpression(), !1439)
    #dbg_value(ptr %nalu, !1436, !DIExpression(), !1439)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1440
    #dbg_value(ptr %0, !1437, !DIExpression(), !1439)
  %bitsfile = getelementptr inbounds i8, ptr %p_Vid, i64 856616, !dbg !1441
  %1 = load ptr, ptr %bitsfile, align 8, !dbg !1441
  %GetNALU = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1442
  %2 = load ptr, ptr %GetNALU, align 8, !dbg !1442
  %call = tail call i32 %2(ptr noundef nonnull %p_Vid, ptr noundef %nalu) #8, !dbg !1443
    #dbg_value(i32 %call, !1438, !DIExpression(), !1439)
  %cmp = icmp slt i32 %call, 0, !dbg !1444
  br i1 %cmp, label %if.end.thread, label %if.end, !dbg !1446

if.end.thread:                                    ; preds = %entry
  %FileFormat = getelementptr inbounds i8, ptr %0, i64 768, !dbg !1447
  %3 = load i32, ptr %FileFormat, align 8, !dbg !1447
  %cmp2 = icmp eq i32 %3, 0, !dbg !1449
  %cond = select i1 %cmp2, ptr @.str.3, ptr @.str.4, !dbg !1450
  %call3 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #8, !dbg !1451
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 601) #8, !dbg !1452
  br label %if.end6, !dbg !1453

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %call, 0, !dbg !1454
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !1453

if.end6:                                          ; preds = %if.end.thread, %if.end
    #dbg_value(ptr %p_Vid, !1456, !DIExpression(), !1463)
    #dbg_value(ptr %nalu, !1461, !DIExpression(), !1463)
    #dbg_value(i32 0, !1462, !DIExpression(), !1463)
  %nal_unit_type.i = getelementptr inbounds i8, ptr %nalu, i64 16, !dbg !1465
  %4 = load i32, ptr %nal_unit_type.i, align 8, !dbg !1465
  %5 = add i32 %4, -1, !dbg !1467
  %or.cond.i = icmp ult i32 %5, 5, !dbg !1467
  br i1 %or.cond.i, label %CheckZeroByteNonVCL.exit, label %if.end.i, !dbg !1467

if.end.i:                                         ; preds = %if.end6
  %6 = add i32 %4, -9, !dbg !1468
  %switch.i = icmp ult i32 %6, -2, !dbg !1468
    #dbg_value(i1 %switch.i, !1462, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1463)
  switch i32 %4, label %if.end30.i [
    i32 18, label %if.then26.i
    i32 17, label %if.then26.i
    i32 16, label %if.then26.i
    i32 15, label %if.then26.i
    i32 14, label %if.then26.i
    i32 13, label %if.then26.i
    i32 9, label %if.then26.i
    i32 8, label %if.then26.i
    i32 7, label %if.then26.i
    i32 6, label %if.then26.i
  ], !dbg !1470

if.then26.i:                                      ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i
  %LastAccessUnitExists.i = getelementptr inbounds i8, ptr %p_Vid, i64 855992, !dbg !1472
  %7 = load i32, ptr %LastAccessUnitExists.i, align 8, !dbg !1472
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !1475
  br i1 %tobool.not.i, label %if.end30.i, label %if.then27.i, !dbg !1476

if.then27.i:                                      ; preds = %if.then26.i
  store i32 0, ptr %LastAccessUnitExists.i, align 8, !dbg !1477
  %NALUCount.i = getelementptr inbounds i8, ptr %p_Vid, i64 855996, !dbg !1479
  store i32 0, ptr %NALUCount.i, align 4, !dbg !1480
  br label %if.end30.i, !dbg !1481

if.end30.i:                                       ; preds = %if.then27.i, %if.then26.i, %if.end.i
  %NALUCount31.i = getelementptr inbounds i8, ptr %p_Vid, i64 855996, !dbg !1482
  %8 = load i32, ptr %NALUCount31.i, align 4, !dbg !1483
  %inc.i = add nsw i32 %8, 1, !dbg !1483
  store i32 %inc.i, ptr %NALUCount31.i, align 4, !dbg !1483
  %cmp33.i = icmp ne i32 %8, 0, !dbg !1484
  %narrow.not.i = and i1 %switch.i, %cmp33.i, !dbg !1486
    #dbg_value(i1 %narrow.not.i, !1462, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1463)
  br i1 %narrow.not.i, label %CheckZeroByteNonVCL.exit, label %land.lhs.true37.i, !dbg !1488

land.lhs.true37.i:                                ; preds = %if.end30.i
  %9 = load i32, ptr %nalu, align 8, !dbg !1489
  %cmp38.i = icmp eq i32 %9, 3, !dbg !1490
  br i1 %cmp38.i, label %if.then39.i, label %CheckZeroByteNonVCL.exit, !dbg !1491

if.then39.i:                                      ; preds = %land.lhs.true37.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !1492
  br label %CheckZeroByteNonVCL.exit, !dbg !1494

CheckZeroByteNonVCL.exit:                         ; preds = %if.end6, %if.end30.i, %land.lhs.true37.i, %if.then39.i
    #dbg_value(ptr %nalu, !1495, !DIExpression(), !1500)
  %buf.i = getelementptr inbounds i8, ptr %nalu, i64 24, !dbg !1502
  %10 = load ptr, ptr %buf.i, align 8, !dbg !1502
  %len.i = getelementptr inbounds i8, ptr %nalu, i64 4, !dbg !1503
  %11 = load i32, ptr %len.i, align 4, !dbg !1503
  %call.i = tail call i32 @EBSPtoRBSP(ptr noundef %10, i32 noundef %11, i32 noundef 1) #8, !dbg !1504
  store i32 %call.i, ptr %len.i, align 4, !dbg !1505
    #dbg_value(i32 %call.i, !1438, !DIExpression(), !1439)
  %cmp8 = icmp slt i32 %call.i, 0, !dbg !1506
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1508

if.then9:                                         ; preds = %CheckZeroByteNonVCL.exit
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 602) #8, !dbg !1509
  br label %if.end10, !dbg !1509

if.end10:                                         ; preds = %if.then9, %CheckZeroByteNonVCL.exit
  %forbidden_bit = getelementptr inbounds i8, ptr %nalu, i64 12, !dbg !1510
  %12 = load i32, ptr %forbidden_bit, align 4, !dbg !1510
  %tobool.not = icmp eq i32 %12, 0, !dbg !1512
  br i1 %tobool.not, label %if.end12, label %if.then11, !dbg !1513

if.then11:                                        ; preds = %if.end10
  tail call void @error(ptr noundef nonnull @.str.6, i32 noundef 603) #8, !dbg !1514
  br label %if.end12, !dbg !1516

if.end12:                                         ; preds = %if.then11, %if.end10
  %13 = load i32, ptr %len.i, align 4, !dbg !1517
  br label %cleanup, !dbg !1518

cleanup:                                          ; preds = %if.end, %if.end12
  %retval.0 = phi i32 [ %13, %if.end12 ], [ 0, %if.end ], !dbg !1439
  ret i32 %retval.0, !dbg !1519
}

; Function Attrs: nofree nounwind
declare !dbg !1520 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @CheckZeroByteNonVCL(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #4 !dbg !1457 {
entry:
    #dbg_value(ptr %p_Vid, !1456, !DIExpression(), !1528)
    #dbg_value(ptr %nalu, !1461, !DIExpression(), !1528)
    #dbg_value(i32 0, !1462, !DIExpression(), !1528)
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16, !dbg !1529
  %0 = load i32, ptr %nal_unit_type, align 8, !dbg !1529
  %1 = add i32 %0, -1, !dbg !1530
  %or.cond = icmp ult i32 %1, 5, !dbg !1530
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !1530

if.end:                                           ; preds = %entry
  %2 = add i32 %0, -9, !dbg !1531
  %switch = icmp ult i32 %2, -2, !dbg !1531
    #dbg_value(i1 %switch, !1462, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1528)
  switch i32 %0, label %if.end30 [
    i32 18, label %if.then26
    i32 17, label %if.then26
    i32 16, label %if.then26
    i32 15, label %if.then26
    i32 14, label %if.then26
    i32 13, label %if.then26
    i32 9, label %if.then26
    i32 8, label %if.then26
    i32 7, label %if.then26
    i32 6, label %if.then26
  ], !dbg !1532

if.then26:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %LastAccessUnitExists = getelementptr inbounds i8, ptr %p_Vid, i64 855992, !dbg !1533
  %3 = load i32, ptr %LastAccessUnitExists, align 8, !dbg !1533
  %tobool.not = icmp eq i32 %3, 0, !dbg !1534
  br i1 %tobool.not, label %if.end30, label %if.then27, !dbg !1535

if.then27:                                        ; preds = %if.then26
  store i32 0, ptr %LastAccessUnitExists, align 8, !dbg !1536
  %NALUCount = getelementptr inbounds i8, ptr %p_Vid, i64 855996, !dbg !1537
  store i32 0, ptr %NALUCount, align 4, !dbg !1538
  br label %if.end30, !dbg !1539

if.end30:                                         ; preds = %if.end, %if.then26, %if.then27
  %NALUCount31 = getelementptr inbounds i8, ptr %p_Vid, i64 855996, !dbg !1540
  %4 = load i32, ptr %NALUCount31, align 4, !dbg !1541
  %inc = add nsw i32 %4, 1, !dbg !1541
  store i32 %inc, ptr %NALUCount31, align 4, !dbg !1541
  %cmp33 = icmp ne i32 %4, 0, !dbg !1542
  %narrow.not = and i1 %switch, %cmp33, !dbg !1543
    #dbg_value(i1 %narrow.not, !1462, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1528)
  br i1 %narrow.not, label %cleanup, label %land.lhs.true37, !dbg !1544

land.lhs.true37:                                  ; preds = %if.end30
  %5 = load i32, ptr %nalu, align 8, !dbg !1545
  %cmp38 = icmp eq i32 %5, 3, !dbg !1546
  br i1 %cmp38, label %if.then39, label %cleanup, !dbg !1547

if.then39:                                        ; preds = %land.lhs.true37
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !1548
  br label %cleanup, !dbg !1549

cleanup:                                          ; preds = %if.end30, %land.lhs.true37, %if.then39, %entry
  ret void, !dbg !1550
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @CheckZeroByteVCL(ptr nocapture noundef %p_Vid, ptr nocapture noundef readonly %nalu) local_unnamed_addr #4 !dbg !1551 {
entry:
    #dbg_value(ptr %p_Vid, !1553, !DIExpression(), !1556)
    #dbg_value(ptr %nalu, !1554, !DIExpression(), !1556)
    #dbg_value(i32 0, !1555, !DIExpression(), !1556)
  %nal_unit_type = getelementptr inbounds i8, ptr %nalu, i64 16, !dbg !1557
  %0 = load i32, ptr %nal_unit_type, align 8, !dbg !1557
  %1 = add i32 %0, -1, !dbg !1559
  %or.cond = icmp ult i32 %1, 5, !dbg !1559
  br i1 %or.cond, label %if.end, label %cleanup, !dbg !1559

if.end:                                           ; preds = %entry
  %LastAccessUnitExists = getelementptr inbounds i8, ptr %p_Vid, i64 855992, !dbg !1560
  %2 = load i32, ptr %LastAccessUnitExists, align 8, !dbg !1560
  %tobool.not = icmp eq i32 %2, 0, !dbg !1562
  %NALUCount5.phi.trans.insert = getelementptr inbounds i8, ptr %p_Vid, i64 855996
  br i1 %tobool.not, label %if.end4, label %if.end4.thread, !dbg !1563

if.end4.thread:                                   ; preds = %if.end
  store i32 1, ptr %NALUCount5.phi.trans.insert, align 4, !dbg !1564
    #dbg_value(i32 poison, !1555, !DIExpression(), !1556)
  store i32 1, ptr %LastAccessUnitExists, align 8, !dbg !1565
  br label %land.lhs.true12, !dbg !1566

if.end4:                                          ; preds = %if.end
  %.pre = load i32, ptr %NALUCount5.phi.trans.insert, align 4, !dbg !1564
  %NALUCount5 = getelementptr inbounds i8, ptr %p_Vid, i64 855996, !dbg !1568
  %inc = add nsw i32 %.pre, 1, !dbg !1564
  store i32 %inc, ptr %NALUCount5, align 4, !dbg !1564
  %cmp7.not = icmp eq i32 %.pre, 0, !dbg !1569
    #dbg_value(i32 poison, !1555, !DIExpression(), !1556)
  store i32 1, ptr %LastAccessUnitExists, align 8, !dbg !1565
  br i1 %cmp7.not, label %land.lhs.true12, label %cleanup, !dbg !1566

land.lhs.true12:                                  ; preds = %if.end4.thread, %if.end4
  %3 = load i32, ptr %nalu, align 8, !dbg !1571
  %cmp13 = icmp eq i32 %3, 3, !dbg !1572
  br i1 %cmp13, label %if.then14, label %cleanup, !dbg !1573

if.then14:                                        ; preds = %land.lhs.true12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17), !dbg !1574
  br label %cleanup, !dbg !1576

cleanup:                                          ; preds = %if.end4, %land.lhs.true12, %if.then14, %entry
  ret void, !dbg !1577
}

; Function Attrs: nounwind uwtable
define dso_local void @nal_unit_header_mvc_extension(ptr nocapture noundef writeonly %NaluHeaderMVCExt, ptr noundef %s) local_unnamed_addr #0 !dbg !1578 {
entry:
    #dbg_value(ptr %NaluHeaderMVCExt, !1583, !DIExpression(), !1585)
    #dbg_value(ptr %s, !1584, !DIExpression(), !1585)
  %call = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %s) #8, !dbg !1586
  store i32 %call, ptr %NaluHeaderMVCExt, align 4, !dbg !1587
  %call1 = tail call i32 @u_v(i32 noundef 6, ptr noundef nonnull @.str.10, ptr noundef %s) #8, !dbg !1588
  %priority_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 4, !dbg !1589
  store i32 %call1, ptr %priority_id, align 4, !dbg !1590
  %call2 = tail call i32 @u_v(i32 noundef 10, ptr noundef nonnull @.str.11, ptr noundef %s) #8, !dbg !1591
  %view_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 8, !dbg !1592
  store i32 %call2, ptr %view_id, align 4, !dbg !1593
  %call3 = tail call i32 @u_v(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef %s) #8, !dbg !1594
  %temporal_id = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 12, !dbg !1595
  store i32 %call3, ptr %temporal_id, align 4, !dbg !1596
  %call4 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %s) #8, !dbg !1597
  %anchor_pic_flag = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 16, !dbg !1598
  store i32 %call4, ptr %anchor_pic_flag, align 4, !dbg !1599
  %call5 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %s) #8, !dbg !1600
  %inter_view_flag = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 20, !dbg !1601
  store i32 %call5, ptr %inter_view_flag, align 4, !dbg !1602
  %call6 = tail call i32 @u_v(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef %s) #8, !dbg !1603
  %reserved_one_bit = getelementptr inbounds i8, ptr %NaluHeaderMVCExt, i64 24, !dbg !1604
  store i32 %call6, ptr %reserved_one_bit, align 4, !dbg !1605
  %cmp.not = icmp eq i32 %call6, 1, !dbg !1606
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1608

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18), !dbg !1609
  br label %if.end, !dbg !1611

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1612
}

declare !dbg !1613 i32 @u_v(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @nal_unit_header_svc_extension() local_unnamed_addr #5 !dbg !1617 {
entry:
  ret void, !dbg !1620
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @prefix_nal_unit_svc() local_unnamed_addr #5 !dbg !1621 {
entry:
  ret void, !dbg !1622
}

declare !dbg !1623 i32 @EBSPtoRBSP(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!60}
!llvm.module.flags = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371}
!llvm.ident = !{!1372}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/nalu.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f266dd8087644eadbec7ed9e29fa7848")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 42)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 54)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 4)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 46)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 13)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 12)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !19, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !41, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 16)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !50, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 17)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !130, globals: !1354, splitDebugInlining: false, nameTableKind: None)
!61 = !{!62, !71, !77, !86, !93, !101, !120, !126}
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 22, baseType: !64, size: 32, elements: !65)
!63 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!67 = !DIEnumerator(name: "YUV400", value: 0)
!68 = !DIEnumerator(name: "YUV420", value: 1)
!69 = !DIEnumerator(name: "YUV422", value: 2)
!70 = !DIEnumerator(name: "YUV444", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 15, baseType: !64, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!74 = !DIEnumerator(name: "CM_YUV", value: 0)
!75 = !DIEnumerator(name: "CM_RGB", value: 1)
!76 = !DIEnumerator(name: "CM_XYZ", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 25, baseType: !64, size: 32, elements: !79)
!78 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!81 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!82 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!83 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!84 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!85 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 135, baseType: !88, size: 32, elements: !89)
!87 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "FRAME", value: 0)
!91 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!92 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 22, baseType: !88, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIEnumerator(name: "PLANE_Y", value: 0)
!96 = !DIEnumerator(name: "PLANE_U", value: 1)
!97 = !DIEnumerator(name: "PLANE_V", value: 2)
!98 = !DIEnumerator(name: "PLANE_G", value: 0)
!99 = !DIEnumerator(name: "PLANE_B", value: 1)
!100 = !DIEnumerator(name: "PLANE_R", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 24, baseType: !88, size: 32, elements: !103)
!102 = !DIFile(filename: "ldecod_src/inc/nalucommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f9e55677f5f79524218c8a7a94869788")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!104 = !DIEnumerator(name: "NALU_TYPE_SLICE", value: 1)
!105 = !DIEnumerator(name: "NALU_TYPE_DPA", value: 2)
!106 = !DIEnumerator(name: "NALU_TYPE_DPB", value: 3)
!107 = !DIEnumerator(name: "NALU_TYPE_DPC", value: 4)
!108 = !DIEnumerator(name: "NALU_TYPE_IDR", value: 5)
!109 = !DIEnumerator(name: "NALU_TYPE_SEI", value: 6)
!110 = !DIEnumerator(name: "NALU_TYPE_SPS", value: 7)
!111 = !DIEnumerator(name: "NALU_TYPE_PPS", value: 8)
!112 = !DIEnumerator(name: "NALU_TYPE_AUD", value: 9)
!113 = !DIEnumerator(name: "NALU_TYPE_EOSEQ", value: 10)
!114 = !DIEnumerator(name: "NALU_TYPE_EOSTREAM", value: 11)
!115 = !DIEnumerator(name: "NALU_TYPE_FILL", value: 12)
!116 = !DIEnumerator(name: "NALU_TYPE_PREFIX", value: 14)
!117 = !DIEnumerator(name: "NALU_TYPE_SUB_SPS", value: 15)
!118 = !DIEnumerator(name: "NALU_TYPE_SLC_EXT", value: 20)
!119 = !DIEnumerator(name: "NALU_TYPE_VDRD", value: 24)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 46, baseType: !88, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "NALU_PRIORITY_HIGHEST", value: 3)
!123 = !DIEnumerator(name: "NALU_PRIORITY_HIGH", value: 2)
!124 = !DIEnumerator(name: "NALU_PRIORITY_LOW", value: 1)
!125 = !DIEnumerator(name: "NALU_PRIORITY_DISPOSABLE", value: 0)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 70, baseType: !88, size: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "PAR_OF_ANNEXB", value: 0)
!129 = !DIEnumerator(name: "PAR_OF_RTP", value: 1)
!130 = !{!131, !1353}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "BitsFile", file: !133, line: 27, baseType: !134)
!133 = !DIFile(filename: "ldecod_src/inc/nalu.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b3549c8c215a89e3e10b3ba1698c39db")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !133, line: 22, size: 192, elements: !135)
!135 = !{!136, !1343, !1347}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "OpenBitsFile", scope: !134, file: !133, line: 24, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140, !1342}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !142, line: 836, baseType: !143)
!142 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !142, line: 566, size: 6855040, elements: !144)
!144 = !{!145, !230, !282, !386, !388, !390, !448, !450, !451, !452, !453, !454, !457, !477, !489, !490, !491, !492, !493, !494, !1060, !1061, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1071, !1074, !1075, !1077, !1078, !1079, !1080, !1081, !1083, !1084, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1209, !1211, !1212, !1215, !1218, !1219, !1220, !1224, !1238, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1249, !1252, !1253, !1254, !1255, !1258, !1263, !1267, !1271, !1275, !1276, !1280, !1281, !1285, !1286, !1290, !1311, !1312, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !143, file: !142, line: 568, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !142, line: 850, size: 32128, elements: !148)
!148 = !{!149, !153, !154, !155, !156, !157, !158, !159, !160, !161, !191, !192, !193, !194, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !147, file: !142, line: 852, baseType: !150, size: 2040)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 255)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !147, file: !142, line: 853, baseType: !150, size: 2040, offset: 2040)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !147, file: !142, line: 854, baseType: !150, size: 2040, offset: 4080)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !147, file: !142, line: 856, baseType: !64, size: 32, offset: 6144)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !147, file: !142, line: 857, baseType: !64, size: 32, offset: 6176)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !147, file: !142, line: 858, baseType: !64, size: 32, offset: 6208)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !147, file: !142, line: 859, baseType: !64, size: 32, offset: 6240)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !147, file: !142, line: 860, baseType: !64, size: 32, offset: 6272)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !147, file: !142, line: 861, baseType: !64, size: 32, offset: 6304)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !147, file: !142, line: 864, baseType: !162, size: 1088, offset: 6336)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !63, line: 52, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !63, line: 30, size: 1088, elements: !164)
!164 = !{!165, !167, !169, !171, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !163, file: !63, line: 32, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !63, line: 28, baseType: !62)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !163, file: !63, line: 33, baseType: !168, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !63, line: 20, baseType: !71)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !163, file: !63, line: 34, baseType: !170, size: 64, offset: 64)
!170 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !163, file: !63, line: 35, baseType: !172, size: 96, offset: 128)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 96, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 3)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !163, file: !63, line: 36, baseType: !172, size: 96, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !163, file: !63, line: 37, baseType: !64, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !163, file: !63, line: 38, baseType: !64, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !163, file: !63, line: 39, baseType: !64, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !163, file: !63, line: 40, baseType: !64, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !163, file: !63, line: 41, baseType: !64, size: 32, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !163, file: !63, line: 42, baseType: !64, size: 32, offset: 480)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !163, file: !63, line: 43, baseType: !64, size: 32, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !163, file: !63, line: 44, baseType: !64, size: 32, offset: 544)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !163, file: !63, line: 45, baseType: !172, size: 96, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !63, line: 46, baseType: !64, size: 32, offset: 672)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !163, file: !63, line: 47, baseType: !172, size: 96, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !163, file: !63, line: 48, baseType: !172, size: 96, offset: 800)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !163, file: !63, line: 49, baseType: !172, size: 96, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !163, file: !63, line: 50, baseType: !64, size: 32, offset: 992)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !163, file: !63, line: 51, baseType: !64, size: 32, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !147, file: !142, line: 865, baseType: !162, size: 1088, offset: 7424)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !147, file: !142, line: 867, baseType: !64, size: 32, offset: 8512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !147, file: !142, line: 868, baseType: !64, size: 32, offset: 8544)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !147, file: !142, line: 869, baseType: !195, size: 7744, offset: 8576)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !78, line: 60, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !78, line: 34, size: 7744, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !196, file: !78, line: 37, baseType: !150, size: 2040)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !196, file: !78, line: 38, baseType: !150, size: 2040, offset: 2040)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !196, file: !78, line: 39, baseType: !150, size: 2040, offset: 4080)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !196, file: !78, line: 40, baseType: !64, size: 32, offset: 6144)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !196, file: !78, line: 41, baseType: !203, size: 32, offset: 6176)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !78, line: 32, baseType: !77)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !196, file: !78, line: 42, baseType: !162, size: 1088, offset: 6208)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !196, file: !78, line: 43, baseType: !64, size: 32, offset: 7296)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !196, file: !78, line: 44, baseType: !64, size: 32, offset: 7328)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !196, file: !78, line: 45, baseType: !64, size: 32, offset: 7360)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !196, file: !78, line: 46, baseType: !64, size: 32, offset: 7392)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !196, file: !78, line: 47, baseType: !64, size: 32, offset: 7424)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !196, file: !78, line: 48, baseType: !64, size: 32, offset: 7456)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !196, file: !78, line: 49, baseType: !64, size: 32, offset: 7488)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !196, file: !78, line: 50, baseType: !64, size: 32, offset: 7520)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !196, file: !78, line: 51, baseType: !64, size: 32, offset: 7552)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !196, file: !78, line: 52, baseType: !64, size: 32, offset: 7584)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !196, file: !78, line: 53, baseType: !64, size: 32, offset: 7616)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !196, file: !78, line: 56, baseType: !217, size: 64, offset: 7680)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !147, file: !142, line: 870, baseType: !195, size: 7744, offset: 16320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !147, file: !142, line: 871, baseType: !195, size: 7744, offset: 24064)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !147, file: !142, line: 873, baseType: !64, size: 32, offset: 31808)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !147, file: !142, line: 884, baseType: !64, size: 32, offset: 31840)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !147, file: !142, line: 885, baseType: !64, size: 32, offset: 31872)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !147, file: !142, line: 886, baseType: !64, size: 32, offset: 31904)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !147, file: !142, line: 890, baseType: !64, size: 32, offset: 31936)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !147, file: !142, line: 893, baseType: !64, size: 32, offset: 31968)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !147, file: !142, line: 894, baseType: !64, size: 32, offset: 32000)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !147, file: !142, line: 895, baseType: !64, size: 32, offset: 32032)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !147, file: !142, line: 897, baseType: !64, size: 32, offset: 32064)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !147, file: !142, line: 899, baseType: !64, size: 32, offset: 32096)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !143, file: !142, line: 569, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !233, line: 138, baseType: !234)
!233 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 94, size: 17728, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !244, !248, !252, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !234, file: !233, line: 96, baseType: !64, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !234, file: !233, line: 97, baseType: !88, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !234, file: !233, line: 98, baseType: !88, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !234, file: !233, line: 99, baseType: !64, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !234, file: !233, line: 100, baseType: !64, size: 32, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !234, file: !233, line: 102, baseType: !64, size: 32, offset: 160)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !234, file: !233, line: 103, baseType: !243, size: 384, offset: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 384, elements: !42)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !234, file: !233, line: 104, baseType: !245, size: 3072, offset: 576)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 3072, elements: !246)
!246 = !{!247, !52}
!247 = !DISubrange(count: 6)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !234, file: !233, line: 105, baseType: !249, size: 12288, offset: 3648)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 12288, elements: !250)
!250 = !{!247, !251}
!251 = !DISubrange(count: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !234, file: !233, line: 106, baseType: !253, size: 192, offset: 15936)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !254)
!254 = !{!247}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !234, file: !233, line: 107, baseType: !253, size: 192, offset: 16128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !234, file: !233, line: 110, baseType: !64, size: 32, offset: 16320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !234, file: !233, line: 111, baseType: !88, size: 32, offset: 16352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !234, file: !233, line: 112, baseType: !88, size: 32, offset: 16384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !234, file: !233, line: 114, baseType: !260, size: 256, offset: 16416)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !20)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !234, file: !233, line: 116, baseType: !260, size: 256, offset: 16672)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !234, file: !233, line: 117, baseType: !260, size: 256, offset: 16928)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !234, file: !233, line: 119, baseType: !64, size: 32, offset: 17184)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !234, file: !233, line: 120, baseType: !88, size: 32, offset: 17216)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !234, file: !233, line: 122, baseType: !88, size: 32, offset: 17248)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !234, file: !233, line: 123, baseType: !267, size: 64, offset: 17280)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !269, line: 21, baseType: !270)
!269 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!270 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !234, file: !233, line: 125, baseType: !64, size: 32, offset: 17344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !234, file: !233, line: 126, baseType: !64, size: 32, offset: 17376)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !234, file: !233, line: 127, baseType: !64, size: 32, offset: 17408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !234, file: !233, line: 128, baseType: !88, size: 32, offset: 17440)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !234, file: !233, line: 129, baseType: !64, size: 32, offset: 17472)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !234, file: !233, line: 130, baseType: !64, size: 32, offset: 17504)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !234, file: !233, line: 131, baseType: !64, size: 32, offset: 17536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !234, file: !233, line: 133, baseType: !64, size: 32, offset: 17568)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !234, file: !233, line: 135, baseType: !64, size: 32, offset: 17600)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !234, file: !233, line: 136, baseType: !64, size: 32, offset: 17632)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !234, file: !233, line: 137, baseType: !64, size: 32, offset: 17664)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !143, file: !142, line: 570, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !233, line: 197, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 142, size: 33024, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !384, !385}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !285, file: !233, line: 144, baseType: !64, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !285, file: !233, line: 146, baseType: !88, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !285, file: !233, line: 147, baseType: !64, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !285, file: !233, line: 148, baseType: !64, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !285, file: !233, line: 149, baseType: !64, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !285, file: !233, line: 150, baseType: !64, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !285, file: !233, line: 152, baseType: !64, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !285, file: !233, line: 154, baseType: !88, size: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !285, file: !233, line: 155, baseType: !88, size: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !285, file: !233, line: 156, baseType: !88, size: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !285, file: !233, line: 158, baseType: !64, size: 32, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !285, file: !233, line: 159, baseType: !243, size: 384, offset: 352)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !285, file: !233, line: 160, baseType: !245, size: 3072, offset: 736)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !285, file: !233, line: 161, baseType: !249, size: 12288, offset: 3808)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !285, file: !233, line: 162, baseType: !253, size: 192, offset: 16096)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !285, file: !233, line: 163, baseType: !253, size: 192, offset: 16288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !285, file: !233, line: 165, baseType: !88, size: 32, offset: 16480)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !285, file: !233, line: 166, baseType: !88, size: 32, offset: 16512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !285, file: !233, line: 167, baseType: !88, size: 32, offset: 16544)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !285, file: !233, line: 168, baseType: !88, size: 32, offset: 16576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !285, file: !233, line: 170, baseType: !88, size: 32, offset: 16608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !285, file: !233, line: 172, baseType: !64, size: 32, offset: 16640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !285, file: !233, line: 173, baseType: !64, size: 32, offset: 16672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !285, file: !233, line: 174, baseType: !64, size: 32, offset: 16704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !285, file: !233, line: 175, baseType: !88, size: 32, offset: 16736)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !285, file: !233, line: 177, baseType: !313, size: 8192, offset: 16768)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8192, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !285, file: !233, line: 178, baseType: !88, size: 32, offset: 24960)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !285, file: !233, line: 179, baseType: !64, size: 32, offset: 24992)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !285, file: !233, line: 180, baseType: !88, size: 32, offset: 25024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !285, file: !233, line: 181, baseType: !88, size: 32, offset: 25056)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !285, file: !233, line: 182, baseType: !64, size: 32, offset: 25088)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !285, file: !233, line: 184, baseType: !64, size: 32, offset: 25120)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !285, file: !233, line: 185, baseType: !64, size: 32, offset: 25152)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !285, file: !233, line: 186, baseType: !64, size: 32, offset: 25184)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !285, file: !233, line: 187, baseType: !88, size: 32, offset: 25216)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !285, file: !233, line: 188, baseType: !88, size: 32, offset: 25248)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !285, file: !233, line: 189, baseType: !88, size: 32, offset: 25280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !285, file: !233, line: 190, baseType: !88, size: 32, offset: 25312)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !285, file: !233, line: 191, baseType: !64, size: 32, offset: 25344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !285, file: !233, line: 192, baseType: !330, size: 7584, offset: 25376)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !233, line: 90, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 53, size: 7584, elements: !332)
!332 = !{!333, !334, !335, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !331, file: !233, line: 55, baseType: !64, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !331, file: !233, line: 56, baseType: !88, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !331, file: !233, line: 57, baseType: !336, size: 16, offset: 64)
!336 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !331, file: !233, line: 58, baseType: !336, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !331, file: !233, line: 59, baseType: !64, size: 32, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !331, file: !233, line: 60, baseType: !64, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !331, file: !233, line: 61, baseType: !64, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !331, file: !233, line: 62, baseType: !88, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !331, file: !233, line: 63, baseType: !64, size: 32, offset: 224)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !331, file: !233, line: 64, baseType: !64, size: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !331, file: !233, line: 65, baseType: !88, size: 32, offset: 288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !331, file: !233, line: 66, baseType: !88, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !331, file: !233, line: 67, baseType: !88, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !331, file: !233, line: 68, baseType: !64, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !331, file: !233, line: 69, baseType: !88, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !331, file: !233, line: 70, baseType: !88, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !331, file: !233, line: 71, baseType: !64, size: 32, offset: 480)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !331, file: !233, line: 72, baseType: !88, size: 32, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !331, file: !233, line: 73, baseType: !88, size: 32, offset: 544)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !331, file: !233, line: 74, baseType: !64, size: 32, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !331, file: !233, line: 75, baseType: !64, size: 32, offset: 608)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !331, file: !233, line: 76, baseType: !356, size: 3296, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !233, line: 50, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 38, size: 3296, elements: !358)
!358 = !{!359, !360, !361, !362, !366, !367, !368, !369, !370, !371}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !357, file: !233, line: 40, baseType: !88, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !357, file: !233, line: 41, baseType: !88, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !357, file: !233, line: 42, baseType: !88, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !357, file: !233, line: 43, baseType: !363, size: 1024, offset: 96)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1024, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !357, file: !233, line: 44, baseType: !363, size: 1024, offset: 1120)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !357, file: !233, line: 45, baseType: !363, size: 1024, offset: 2144)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !357, file: !233, line: 46, baseType: !88, size: 32, offset: 3168)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !357, file: !233, line: 47, baseType: !88, size: 32, offset: 3200)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !357, file: !233, line: 48, baseType: !88, size: 32, offset: 3232)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !357, file: !233, line: 49, baseType: !88, size: 32, offset: 3264)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !331, file: !233, line: 77, baseType: !64, size: 32, offset: 3936)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !331, file: !233, line: 78, baseType: !356, size: 3296, offset: 3968)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !331, file: !233, line: 80, baseType: !64, size: 32, offset: 7264)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !331, file: !233, line: 81, baseType: !64, size: 32, offset: 7296)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !331, file: !233, line: 82, baseType: !64, size: 32, offset: 7328)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !331, file: !233, line: 83, baseType: !64, size: 32, offset: 7360)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !331, file: !233, line: 84, baseType: !88, size: 32, offset: 7392)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !331, file: !233, line: 85, baseType: !88, size: 32, offset: 7424)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !331, file: !233, line: 86, baseType: !88, size: 32, offset: 7456)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !331, file: !233, line: 87, baseType: !88, size: 32, offset: 7488)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !331, file: !233, line: 88, baseType: !88, size: 32, offset: 7520)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !331, file: !233, line: 89, baseType: !88, size: 32, offset: 7552)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !285, file: !233, line: 193, baseType: !88, size: 32, offset: 32960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !285, file: !233, line: 195, baseType: !64, size: 32, offset: 32992)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !143, file: !142, line: 571, baseType: !387, size: 1056768, offset: 192)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1056768, elements: !364)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !143, file: !142, line: 572, baseType: !389, size: 4538368, offset: 1056960)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 4538368, elements: !314)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !143, file: !142, line: 575, baseType: !391, size: 64, offset: 5595328)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !233, line: 256, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !233, line: 228, size: 37312, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !415, !416, !417, !418}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !393, file: !233, line: 230, baseType: !284, size: 33024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !393, file: !233, line: 232, baseType: !88, size: 32, offset: 33024)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !393, file: !233, line: 233, baseType: !64, size: 32, offset: 33056)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !393, file: !233, line: 234, baseType: !217, size: 64, offset: 33088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !393, file: !233, line: 235, baseType: !217, size: 64, offset: 33152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !393, file: !233, line: 236, baseType: !401, size: 64, offset: 33216)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !393, file: !233, line: 237, baseType: !217, size: 64, offset: 33280)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !393, file: !233, line: 238, baseType: !401, size: 64, offset: 33344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !393, file: !233, line: 240, baseType: !217, size: 64, offset: 33408)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !393, file: !233, line: 241, baseType: !401, size: 64, offset: 33472)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !393, file: !233, line: 242, baseType: !217, size: 64, offset: 33536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !393, file: !233, line: 243, baseType: !401, size: 64, offset: 33600)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !393, file: !233, line: 245, baseType: !64, size: 32, offset: 33664)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !393, file: !233, line: 246, baseType: !217, size: 64, offset: 33728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !393, file: !233, line: 247, baseType: !217, size: 64, offset: 33792)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !393, file: !233, line: 248, baseType: !401, size: 64, offset: 33856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !393, file: !233, line: 249, baseType: !401, size: 64, offset: 33920)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !393, file: !233, line: 250, baseType: !414, size: 64, offset: 33984)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !393, file: !233, line: 251, baseType: !401, size: 64, offset: 34048)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !393, file: !233, line: 253, baseType: !88, size: 32, offset: 34112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !393, file: !233, line: 254, baseType: !64, size: 32, offset: 34144)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !393, file: !233, line: 255, baseType: !419, size: 3136, offset: 34176)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !233, line: 226, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !233, line: 200, size: 3136, elements: !421)
!421 = !{!422, !423, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !441, !442, !444, !445, !446, !447}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !420, file: !233, line: 202, baseType: !64, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !420, file: !233, line: 203, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !420, file: !233, line: 204, baseType: !217, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !420, file: !233, line: 205, baseType: !401, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !420, file: !233, line: 206, baseType: !424, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !420, file: !233, line: 207, baseType: !217, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !420, file: !233, line: 208, baseType: !217, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !420, file: !233, line: 209, baseType: !424, size: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !420, file: !233, line: 210, baseType: !424, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !420, file: !233, line: 211, baseType: !424, size: 64, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !420, file: !233, line: 212, baseType: !424, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !420, file: !233, line: 213, baseType: !424, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !420, file: !233, line: 216, baseType: !425, size: 8, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !420, file: !233, line: 217, baseType: !425, size: 8, offset: 776)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !420, file: !233, line: 218, baseType: !425, size: 8, offset: 784)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !420, file: !233, line: 219, baseType: !440, size: 1024, offset: 800)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !364)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !420, file: !233, line: 220, baseType: !440, size: 1024, offset: 1824)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !420, file: !233, line: 221, baseType: !443, size: 256, offset: 2848)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !364)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !420, file: !233, line: 222, baseType: !425, size: 8, offset: 3104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !420, file: !233, line: 223, baseType: !425, size: 8, offset: 3112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !420, file: !233, line: 224, baseType: !425, size: 8, offset: 3120)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !420, file: !233, line: 225, baseType: !425, size: 8, offset: 3128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !143, file: !142, line: 577, baseType: !449, size: 1193984, offset: 5595392)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1193984, elements: !364)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !143, file: !142, line: 578, baseType: !64, size: 32, offset: 6789376)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !143, file: !142, line: 579, baseType: !64, size: 32, offset: 6789408)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !143, file: !142, line: 580, baseType: !64, size: 32, offset: 6789440)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !143, file: !142, line: 581, baseType: !64, size: 32, offset: 6789472)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !143, file: !142, line: 584, baseType: !455, size: 64, offset: 6789504)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !142, line: 584, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !143, file: !142, line: 586, baseType: !458, size: 64, offset: 6789568)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !142, line: 902, size: 416, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !470, !471, !472, !473, !474, !475, !476}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !459, file: !142, line: 904, baseType: !88, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !459, file: !142, line: 905, baseType: !88, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !459, file: !142, line: 906, baseType: !64, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !459, file: !142, line: 907, baseType: !88, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !459, file: !142, line: 908, baseType: !64, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !459, file: !142, line: 909, baseType: !467, size: 64, offset: 160)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 2)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !459, file: !142, line: 910, baseType: !268, size: 8, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !459, file: !142, line: 911, baseType: !268, size: 8, offset: 232)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !459, file: !142, line: 912, baseType: !64, size: 32, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !459, file: !142, line: 913, baseType: !64, size: 32, offset: 288)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !459, file: !142, line: 915, baseType: !64, size: 32, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !459, file: !142, line: 916, baseType: !64, size: 32, offset: 352)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !459, file: !142, line: 917, baseType: !64, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !143, file: !142, line: 587, baseType: !478, size: 64, offset: 6789632)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !142, line: 839, size: 512, elements: !480)
!480 = !{!481, !482, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !479, file: !142, line: 841, baseType: !64, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !479, file: !142, line: 842, baseType: !483, size: 96, offset: 32)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 96, elements: !173)
!484 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !479, file: !142, line: 843, baseType: !483, size: 96, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !479, file: !142, line: 844, baseType: !483, size: 96, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !479, file: !142, line: 845, baseType: !483, size: 96, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !479, file: !142, line: 846, baseType: !483, size: 96, offset: 416)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !143, file: !142, line: 588, baseType: !64, size: 32, offset: 6789696)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !143, file: !142, line: 591, baseType: !88, size: 32, offset: 6789728)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !143, file: !142, line: 592, baseType: !64, size: 32, offset: 6789760)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !143, file: !142, line: 593, baseType: !64, size: 32, offset: 6789792)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !143, file: !142, line: 594, baseType: !64, size: 32, offset: 6789824)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !143, file: !142, line: 595, baseType: !495, size: 64, offset: 6789888)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !142, line: 542, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !142, line: 341, size: 109184, elements: !499)
!499 = !{!500, !502, !503, !504, !505, !506, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !728, !730, !891, !920, !947, !950, !951, !953, !954, !955, !956, !957, !958, !959, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !985, !986, !987, !988, !989, !990, !993, !994, !997, !998, !1000, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1013, !1014, !1015, !1016, !1017, !1020, !1021, !1022, !1024, !1028, !1032, !1036, !1040, !1041, !1042, !1043, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1057, !1058}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !498, file: !142, line: 343, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !498, file: !142, line: 344, baseType: !146, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !498, file: !142, line: 345, baseType: !231, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !498, file: !142, line: 346, baseType: !283, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !498, file: !142, line: 347, baseType: !64, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !498, file: !142, line: 350, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !509, line: 186, size: 33408, elements: !510)
!509 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!510 = !{!511, !512, !515, !662, !663, !664, !665, !666, !667, !668, !669, !670, !674, !675, !676}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !508, file: !509, line: 188, baseType: !140, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !508, file: !509, line: 189, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !142, line: 900, baseType: !147)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !508, file: !509, line: 190, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !509, line: 182, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !509, line: 152, size: 768, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !657, !658, !659, !660, !661}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !519, file: !509, line: 154, baseType: !64, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !519, file: !509, line: 155, baseType: !64, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !519, file: !509, line: 156, baseType: !64, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !519, file: !509, line: 157, baseType: !64, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !519, file: !509, line: 159, baseType: !64, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !519, file: !509, line: 161, baseType: !88, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !519, file: !509, line: 162, baseType: !88, size: 32, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !519, file: !509, line: 164, baseType: !64, size: 32, offset: 224)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !519, file: !509, line: 165, baseType: !64, size: 32, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !519, file: !509, line: 166, baseType: !64, size: 32, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !519, file: !509, line: 167, baseType: !64, size: 32, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !519, file: !509, line: 170, baseType: !64, size: 32, offset: 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !519, file: !509, line: 172, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !509, line: 138, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !509, line: 46, size: 3328, elements: !537)
!537 = !{!538, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !577, !579, !580, !597, !599, !603, !605, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !536, file: !509, line: 48, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !87, line: 140, baseType: !86)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !536, file: !509, line: 50, baseType: !64, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !536, file: !509, line: 51, baseType: !64, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !536, file: !509, line: 52, baseType: !64, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !536, file: !509, line: 53, baseType: !64, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !536, file: !509, line: 54, baseType: !88, size: 32, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !536, file: !509, line: 55, baseType: !88, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !536, file: !509, line: 57, baseType: !64, size: 32, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !536, file: !509, line: 58, baseType: !64, size: 32, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !536, file: !509, line: 59, baseType: !64, size: 32, offset: 288)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !536, file: !509, line: 61, baseType: !268, size: 8, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !536, file: !509, line: 62, baseType: !64, size: 32, offset: 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !536, file: !509, line: 63, baseType: !64, size: 32, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !536, file: !509, line: 64, baseType: !64, size: 32, offset: 416)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !536, file: !509, line: 65, baseType: !64, size: 32, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !536, file: !509, line: 67, baseType: !555, size: 16, offset: 480)
!555 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !536, file: !509, line: 69, baseType: !64, size: 32, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !536, file: !509, line: 69, baseType: !64, size: 32, offset: 544)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !536, file: !509, line: 69, baseType: !64, size: 32, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !536, file: !509, line: 69, baseType: !64, size: 32, offset: 608)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !536, file: !509, line: 70, baseType: !64, size: 32, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !536, file: !509, line: 70, baseType: !64, size: 32, offset: 672)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !536, file: !509, line: 70, baseType: !64, size: 32, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !536, file: !509, line: 70, baseType: !64, size: 32, offset: 736)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !536, file: !509, line: 71, baseType: !64, size: 32, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !536, file: !509, line: 72, baseType: !64, size: 32, offset: 800)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !536, file: !509, line: 73, baseType: !88, size: 32, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !536, file: !509, line: 74, baseType: !88, size: 32, offset: 864)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !536, file: !509, line: 75, baseType: !64, size: 32, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !536, file: !509, line: 75, baseType: !64, size: 32, offset: 928)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !536, file: !509, line: 76, baseType: !64, size: 32, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !536, file: !509, line: 76, baseType: !64, size: 32, offset: 992)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !536, file: !509, line: 79, baseType: !573, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !269, line: 41, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !269, line: 23, baseType: !336)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !536, file: !509, line: 80, baseType: !578, size: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !536, file: !509, line: 81, baseType: !578, size: 64, offset: 1152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !536, file: !509, line: 84, baseType: !581, size: 64, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !509, line: 36, size: 256, elements: !584)
!584 = !{!585, !588, !595}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !583, file: !509, line: 38, baseType: !586, size: 128)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 128, elements: !468)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !583, file: !509, line: 39, baseType: !589, size: 64, offset: 128)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 64, elements: !468)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !142, line: 104, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 100, size: 32, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !591, file: !142, line: 102, baseType: !555, size: 16)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !591, file: !142, line: 103, baseType: !555, size: 16, offset: 16)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !583, file: !509, line: 40, baseType: !596, size: 16, offset: 192)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 16, elements: !468)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !536, file: !509, line: 85, baseType: !598, size: 192, offset: 1280)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 192, elements: !173)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !536, file: !509, line: 87, baseType: !600, size: 64, offset: 1472)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !509, line: 29, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !600, file: !509, line: 31, baseType: !267, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !536, file: !509, line: 88, baseType: !604, size: 192, offset: 1536)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 192, elements: !173)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !536, file: !509, line: 90, baseType: !606, size: 64, offset: 1728)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !536, file: !509, line: 92, baseType: !587, size: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !536, file: !509, line: 93, baseType: !587, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !536, file: !509, line: 94, baseType: !587, size: 64, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !536, file: !509, line: 96, baseType: !64, size: 32, offset: 1984)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !536, file: !509, line: 97, baseType: !64, size: 32, offset: 2016)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !536, file: !509, line: 98, baseType: !64, size: 32, offset: 2048)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !536, file: !509, line: 99, baseType: !64, size: 32, offset: 2080)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !536, file: !509, line: 100, baseType: !64, size: 32, offset: 2112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !536, file: !509, line: 102, baseType: !64, size: 32, offset: 2144)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !536, file: !509, line: 103, baseType: !64, size: 32, offset: 2176)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !536, file: !509, line: 104, baseType: !64, size: 32, offset: 2208)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !536, file: !509, line: 105, baseType: !64, size: 32, offset: 2240)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !536, file: !509, line: 106, baseType: !64, size: 32, offset: 2272)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !536, file: !509, line: 107, baseType: !64, size: 32, offset: 2304)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !536, file: !509, line: 108, baseType: !64, size: 32, offset: 2336)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !536, file: !509, line: 109, baseType: !64, size: 32, offset: 2368)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !536, file: !509, line: 110, baseType: !467, size: 64, offset: 2400)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !536, file: !509, line: 111, baseType: !64, size: 32, offset: 2464)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !536, file: !509, line: 112, baseType: !627, size: 64, offset: 2496)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !142, line: 194, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !142, line: 186, size: 256, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !629, file: !142, line: 188, baseType: !64, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !629, file: !142, line: 189, baseType: !64, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !629, file: !142, line: 190, baseType: !64, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !629, file: !142, line: 191, baseType: !64, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !629, file: !142, line: 192, baseType: !64, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !629, file: !142, line: 193, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !536, file: !509, line: 115, baseType: !64, size: 32, offset: 2560)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !536, file: !509, line: 118, baseType: !64, size: 32, offset: 2592)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !536, file: !509, line: 119, baseType: !64, size: 32, offset: 2624)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !536, file: !509, line: 120, baseType: !64, size: 32, offset: 2656)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !536, file: !509, line: 121, baseType: !574, size: 64, offset: 2688)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !536, file: !509, line: 124, baseType: !64, size: 32, offset: 2752)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !536, file: !509, line: 125, baseType: !64, size: 32, offset: 2784)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !536, file: !509, line: 126, baseType: !64, size: 32, offset: 2816)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !536, file: !509, line: 128, baseType: !64, size: 32, offset: 2848)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !536, file: !509, line: 129, baseType: !64, size: 32, offset: 2880)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !536, file: !509, line: 130, baseType: !64, size: 32, offset: 2912)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !536, file: !509, line: 131, baseType: !64, size: 32, offset: 2944)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !536, file: !509, line: 132, baseType: !573, size: 64, offset: 3008)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !536, file: !509, line: 133, baseType: !64, size: 32, offset: 3072)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !536, file: !509, line: 134, baseType: !64, size: 32, offset: 3104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !536, file: !509, line: 136, baseType: !596, size: 16, offset: 3136)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !536, file: !509, line: 137, baseType: !655, size: 128, offset: 3200)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 128, elements: !468)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !519, file: !509, line: 173, baseType: !534, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !519, file: !509, line: 174, baseType: !534, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !519, file: !509, line: 177, baseType: !64, size: 32, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !519, file: !509, line: 178, baseType: !467, size: 64, offset: 608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !519, file: !509, line: 179, baseType: !467, size: 64, offset: 672)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !508, file: !509, line: 191, baseType: !516, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !508, file: !509, line: 192, baseType: !516, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !508, file: !509, line: 193, baseType: !88, size: 32, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !508, file: !509, line: 194, baseType: !88, size: 32, offset: 352)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !508, file: !509, line: 195, baseType: !88, size: 32, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !508, file: !509, line: 196, baseType: !88, size: 32, offset: 416)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !508, file: !509, line: 197, baseType: !64, size: 32, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !508, file: !509, line: 199, baseType: !64, size: 32, offset: 480)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !508, file: !509, line: 200, baseType: !671, size: 32768, offset: 512)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32768, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 1024)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !508, file: !509, line: 205, baseType: !64, size: 32, offset: 33280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !508, file: !509, line: 206, baseType: !64, size: 32, offset: 33312)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !508, file: !509, line: 208, baseType: !517, size: 64, offset: 33344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !498, file: !142, line: 353, baseType: !64, size: 32, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !498, file: !142, line: 354, baseType: !64, size: 32, offset: 416)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !498, file: !142, line: 355, baseType: !64, size: 32, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !498, file: !142, line: 356, baseType: !64, size: 32, offset: 480)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !498, file: !142, line: 357, baseType: !64, size: 32, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !498, file: !142, line: 359, baseType: !64, size: 32, offset: 544)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !498, file: !142, line: 360, baseType: !64, size: 32, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !498, file: !142, line: 361, baseType: !64, size: 32, offset: 608)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !498, file: !142, line: 365, baseType: !88, size: 32, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !498, file: !142, line: 366, baseType: !64, size: 32, offset: 672)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !498, file: !142, line: 368, baseType: !467, size: 64, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !498, file: !142, line: 372, baseType: !64, size: 32, offset: 768)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !498, file: !142, line: 378, baseType: !88, size: 32, offset: 800)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !498, file: !142, line: 379, baseType: !64, size: 32, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !498, file: !142, line: 387, baseType: !88, size: 32, offset: 864)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !498, file: !142, line: 388, baseType: !88, size: 32, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !498, file: !142, line: 389, baseType: !555, size: 16, offset: 928)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !498, file: !142, line: 396, baseType: !64, size: 32, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !498, file: !142, line: 397, baseType: !64, size: 32, offset: 992)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !498, file: !142, line: 400, baseType: !64, size: 32, offset: 1024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !498, file: !142, line: 401, baseType: !64, size: 32, offset: 1056)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !498, file: !142, line: 402, baseType: !467, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !498, file: !142, line: 406, baseType: !64, size: 32, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !498, file: !142, line: 407, baseType: !64, size: 32, offset: 1184)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !498, file: !142, line: 408, baseType: !64, size: 32, offset: 1216)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !498, file: !142, line: 409, baseType: !64, size: 32, offset: 1248)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !498, file: !142, line: 410, baseType: !64, size: 32, offset: 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !498, file: !142, line: 411, baseType: !64, size: 32, offset: 1312)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !498, file: !142, line: 412, baseType: !64, size: 32, offset: 1344)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !498, file: !142, line: 413, baseType: !88, size: 32, offset: 1376)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !498, file: !142, line: 414, baseType: !88, size: 32, offset: 1408)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !498, file: !142, line: 415, baseType: !268, size: 8, offset: 1440)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !498, file: !142, line: 416, baseType: !539, size: 32, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !498, file: !142, line: 417, baseType: !64, size: 32, offset: 1504)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !498, file: !142, line: 418, baseType: !64, size: 32, offset: 1536)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !498, file: !142, line: 419, baseType: !64, size: 32, offset: 1568)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !498, file: !142, line: 420, baseType: !64, size: 32, offset: 1600)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !498, file: !142, line: 421, baseType: !64, size: 32, offset: 1632)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !498, file: !142, line: 422, baseType: !64, size: 32, offset: 1664)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !498, file: !142, line: 423, baseType: !64, size: 32, offset: 1696)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !498, file: !142, line: 426, baseType: !64, size: 32, offset: 1728)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !498, file: !142, line: 427, baseType: !64, size: 32, offset: 1760)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !498, file: !142, line: 428, baseType: !64, size: 32, offset: 1792)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !498, file: !142, line: 429, baseType: !64, size: 32, offset: 1824)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !498, file: !142, line: 430, baseType: !64, size: 32, offset: 1856)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !498, file: !142, line: 431, baseType: !64, size: 32, offset: 1888)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !498, file: !142, line: 432, baseType: !64, size: 32, offset: 1920)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !498, file: !142, line: 433, baseType: !64, size: 32, offset: 1952)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !498, file: !142, line: 434, baseType: !627, size: 64, offset: 1984)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !498, file: !142, line: 436, baseType: !727, size: 48, offset: 2048)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 48, elements: !254)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !498, file: !142, line: 437, baseType: !729, size: 384, offset: 2112)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 384, elements: !254)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !498, file: !142, line: 440, baseType: !731, size: 64, offset: 2496)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !142, line: 324, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !142, line: 314, size: 384, elements: !734)
!734 = !{!735, !746, !755}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !733, file: !142, line: 317, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !142, line: 47, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !142, line: 300, size: 256, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !738, file: !142, line: 303, baseType: !64, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !738, file: !142, line: 304, baseType: !64, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !738, file: !142, line: 306, baseType: !64, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !738, file: !142, line: 307, baseType: !64, size: 32, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !738, file: !142, line: 309, baseType: !267, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !738, file: !142, line: 310, baseType: !64, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !733, file: !142, line: 318, baseType: !747, size: 256, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !142, line: 95, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 88, size: 256, elements: !749)
!749 = !{!750, !751, !752, !753, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !748, file: !142, line: 90, baseType: !88, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !748, file: !142, line: 91, baseType: !88, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !748, file: !142, line: 92, baseType: !64, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !748, file: !142, line: 93, baseType: !267, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !748, file: !142, line: 94, baseType: !217, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !733, file: !142, line: 320, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!64, !759, !889, !887}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !142, line: 273, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !142, line: 197, size: 3840, elements: !762)
!762 = !{!763, !765, !766, !767, !768, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !797, !798, !799, !800, !801, !804, !805, !814, !815, !816, !817, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !842, !843, !858, !864, !888}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !761, file: !142, line: 199, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !761, file: !142, line: 200, baseType: !501, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !761, file: !142, line: 201, baseType: !146, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !761, file: !142, line: 202, baseType: !64, size: 32, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !761, file: !142, line: 203, baseType: !769, size: 32, offset: 224)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !142, line: 112, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 108, size: 32, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !770, file: !142, line: 110, baseType: !555, size: 16)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !770, file: !142, line: 111, baseType: !555, size: 16, offset: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !761, file: !142, line: 204, baseType: !64, size: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !761, file: !142, line: 205, baseType: !64, size: 32, offset: 288)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !761, file: !142, line: 206, baseType: !64, size: 32, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !761, file: !142, line: 207, baseType: !64, size: 32, offset: 352)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !761, file: !142, line: 208, baseType: !64, size: 32, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !761, file: !142, line: 209, baseType: !64, size: 32, offset: 416)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !761, file: !142, line: 210, baseType: !64, size: 32, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !761, file: !142, line: 212, baseType: !64, size: 32, offset: 480)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !761, file: !142, line: 213, baseType: !64, size: 32, offset: 512)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !761, file: !142, line: 215, baseType: !64, size: 32, offset: 544)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !761, file: !142, line: 216, baseType: !467, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !761, file: !142, line: 217, baseType: !172, size: 96, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !761, file: !142, line: 218, baseType: !64, size: 32, offset: 736)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !761, file: !142, line: 219, baseType: !64, size: 32, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !761, file: !142, line: 220, baseType: !64, size: 32, offset: 800)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !761, file: !142, line: 221, baseType: !64, size: 32, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !761, file: !142, line: 223, baseType: !555, size: 16, offset: 864)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !761, file: !142, line: 224, baseType: !425, size: 8, offset: 880)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !761, file: !142, line: 225, baseType: !425, size: 8, offset: 888)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !761, file: !142, line: 226, baseType: !555, size: 16, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !761, file: !142, line: 227, baseType: !555, size: 16, offset: 912)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !761, file: !142, line: 229, baseType: !796, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !761, file: !142, line: 230, baseType: !796, size: 64, offset: 1024)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !761, file: !142, line: 232, baseType: !796, size: 64, offset: 1088)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !761, file: !142, line: 233, baseType: !796, size: 64, offset: 1152)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !761, file: !142, line: 236, baseType: !555, size: 16, offset: 1216)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !761, file: !142, line: 237, baseType: !802, size: 1024, offset: 1232)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 1024, elements: !803)
!803 = !{!469, !26, !26, !469}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !761, file: !142, line: 239, baseType: !64, size: 32, offset: 2272)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !761, file: !142, line: 240, baseType: !806, size: 192, offset: 2304)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 192, elements: !173)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !808, line: 103, baseType: !809)
!808 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !810, line: 27, baseType: !811)
!810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !812, line: 44, baseType: !813)
!812 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!813 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !761, file: !142, line: 241, baseType: !806, size: 192, offset: 2496)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !761, file: !142, line: 242, baseType: !806, size: 192, offset: 2688)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !761, file: !142, line: 244, baseType: !64, size: 32, offset: 2880)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !761, file: !142, line: 245, baseType: !818, size: 32, offset: 2912)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 32, elements: !25)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !761, file: !142, line: 246, baseType: !818, size: 32, offset: 2944)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !761, file: !142, line: 247, baseType: !425, size: 8, offset: 2976)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !761, file: !142, line: 248, baseType: !425, size: 8, offset: 2984)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !761, file: !142, line: 249, baseType: !425, size: 8, offset: 2992)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !761, file: !142, line: 250, baseType: !555, size: 16, offset: 3008)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !761, file: !142, line: 251, baseType: !555, size: 16, offset: 3024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !761, file: !142, line: 252, baseType: !555, size: 16, offset: 3040)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !761, file: !142, line: 254, baseType: !64, size: 32, offset: 3072)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !761, file: !142, line: 256, baseType: !64, size: 32, offset: 3104)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !761, file: !142, line: 256, baseType: !64, size: 32, offset: 3136)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !761, file: !142, line: 256, baseType: !64, size: 32, offset: 3168)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !761, file: !142, line: 256, baseType: !64, size: 32, offset: 3200)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !761, file: !142, line: 257, baseType: !64, size: 32, offset: 3232)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !761, file: !142, line: 257, baseType: !64, size: 32, offset: 3264)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !761, file: !142, line: 257, baseType: !64, size: 32, offset: 3296)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !761, file: !142, line: 257, baseType: !64, size: 32, offset: 3328)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !761, file: !142, line: 259, baseType: !64, size: 32, offset: 3360)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !761, file: !142, line: 260, baseType: !64, size: 32, offset: 3392)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !761, file: !142, line: 262, baseType: !838, size: 64, offset: 3456)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !796, !841, !64, !64}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !87, line: 32, baseType: !93)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !761, file: !142, line: 263, baseType: !838, size: 64, offset: 3520)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !761, file: !142, line: 265, baseType: !844, size: 64, offset: 3584)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !796, !847, !857, !555, !581, !64, !64, !64, !64, !64}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !142, line: 85, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !142, line: 77, size: 128, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !849, file: !142, line: 79, baseType: !64, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !849, file: !142, line: 80, baseType: !64, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !849, file: !142, line: 81, baseType: !555, size: 16, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !849, file: !142, line: 82, baseType: !555, size: 16, offset: 80)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !849, file: !142, line: 83, baseType: !555, size: 16, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !849, file: !142, line: 84, baseType: !555, size: 16, offset: 112)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !761, file: !142, line: 268, baseType: !859, size: 64, offset: 3648)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!64, !796, !862, !64}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !142, line: 97, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !761, file: !142, line: 269, baseType: !865, size: 64, offset: 3712)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!425, !796, !868, !887, !425, !64}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !142, line: 276, size: 384, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !883}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !142, line: 278, baseType: !64, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !869, file: !142, line: 279, baseType: !64, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !869, file: !142, line: 280, baseType: !64, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !869, file: !142, line: 281, baseType: !64, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !869, file: !142, line: 282, baseType: !64, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !869, file: !142, line: 283, baseType: !88, size: 32, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !869, file: !142, line: 284, baseType: !64, size: 32, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !869, file: !142, line: 285, baseType: !64, size: 32, offset: 224)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !869, file: !142, line: 293, baseType: !880, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !64, !64, !217, !217}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !869, file: !142, line: 295, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !759, !868, !862}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !761, file: !142, line: 272, baseType: !268, size: 8, offset: 3776)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !142, line: 296, baseType: !869)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !498, file: !142, line: 441, baseType: !892, size: 64, offset: 2560)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !142, line: 153, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 145, size: 2912, elements: !895)
!895 = !{!896, !906, !910, !914, !917, !919}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !894, file: !142, line: 147, baseType: !897, size: 1056)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 1056, elements: !904)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !142, line: 122, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 117, size: 32, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !899, file: !142, line: 119, baseType: !576, size: 16)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !899, file: !142, line: 120, baseType: !270, size: 8, offset: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !899, file: !142, line: 121, baseType: !270, size: 8, offset: 24)
!904 = !{!174, !905}
!905 = !DISubrange(count: 11)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !894, file: !142, line: 148, baseType: !907, size: 576, offset: 1056)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 576, elements: !908)
!908 = !{!469, !909}
!909 = !DISubrange(count: 9)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !894, file: !142, line: 149, baseType: !911, size: 640, offset: 1632)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 640, elements: !912)
!912 = !{!469, !913}
!913 = !DISubrange(count: 10)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !894, file: !142, line: 150, baseType: !915, size: 384, offset: 2272)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 384, elements: !916)
!916 = !{!469, !247}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !894, file: !142, line: 151, baseType: !918, size: 128, offset: 2656)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 128, elements: !25)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !894, file: !142, line: 152, baseType: !918, size: 128, offset: 2784)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !498, file: !142, line: 442, baseType: !921, size: 64, offset: 2624)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !142, line: 175, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 164, size: 52768, elements: !924)
!924 = !{!925, !927, !929, !930, !933, !937, !941, !942, !946}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !923, file: !142, line: 166, baseType: !926, size: 96)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 96, elements: !173)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !923, file: !142, line: 167, baseType: !928, size: 64, offset: 96)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 64, elements: !468)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !923, file: !142, line: 168, baseType: !918, size: 128, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !923, file: !142, line: 169, baseType: !931, size: 384, offset: 288)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 384, elements: !932)
!932 = !{!174, !26}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !923, file: !142, line: 170, baseType: !934, size: 2816, offset: 672)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 2816, elements: !935)
!935 = !{!936, !26}
!936 = !DISubrange(count: 22)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !923, file: !142, line: 171, baseType: !938, size: 21120, offset: 3488)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 21120, elements: !939)
!939 = !{!469, !936, !940}
!940 = !DISubrange(count: 15)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !923, file: !142, line: 172, baseType: !938, size: 21120, offset: 24608)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !923, file: !142, line: 173, baseType: !943, size: 3520, offset: 45728)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 3520, elements: !944)
!944 = !{!936, !945}
!945 = !DISubrange(count: 5)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !923, file: !142, line: 174, baseType: !943, size: 3520, offset: 49248)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !498, file: !142, line: 444, baseType: !948, size: 6144, offset: 2688)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 6144, elements: !949)
!949 = !{!247, !365}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !498, file: !142, line: 446, baseType: !467, size: 64, offset: 8832)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !498, file: !142, line: 447, baseType: !952, size: 128, offset: 8896)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !468)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !498, file: !142, line: 448, baseType: !952, size: 128, offset: 9024)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !498, file: !142, line: 449, baseType: !952, size: 128, offset: 9152)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !498, file: !142, line: 452, baseType: !952, size: 128, offset: 9280)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !498, file: !142, line: 454, baseType: !64, size: 32, offset: 9408)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !498, file: !142, line: 455, baseType: !64, size: 32, offset: 9440)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !498, file: !142, line: 456, baseType: !64, size: 32, offset: 9472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !498, file: !142, line: 458, baseType: !960, size: 256, offset: 9504)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !142, line: 337, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !142, line: 327, size: 256, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !961, file: !142, line: 329, baseType: !88, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !961, file: !142, line: 330, baseType: !88, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !961, file: !142, line: 331, baseType: !88, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !961, file: !142, line: 332, baseType: !88, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !961, file: !142, line: 333, baseType: !88, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !961, file: !142, line: 334, baseType: !88, size: 32, offset: 160)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !961, file: !142, line: 335, baseType: !88, size: 32, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !961, file: !142, line: 336, baseType: !88, size: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !498, file: !142, line: 461, baseType: !555, size: 16, offset: 9760)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !498, file: !142, line: 462, baseType: !555, size: 16, offset: 9776)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !498, file: !142, line: 463, baseType: !555, size: 16, offset: 9792)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !498, file: !142, line: 465, baseType: !64, size: 32, offset: 9824)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !498, file: !142, line: 467, baseType: !64, size: 32, offset: 9856)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !498, file: !142, line: 468, baseType: !64, size: 32, offset: 9888)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !498, file: !142, line: 470, baseType: !64, size: 32, offset: 9920)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !498, file: !142, line: 471, baseType: !578, size: 64, offset: 9984)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !498, file: !142, line: 472, baseType: !578, size: 64, offset: 10048)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !498, file: !142, line: 473, baseType: !414, size: 64, offset: 10112)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !498, file: !142, line: 474, baseType: !414, size: 64, offset: 10176)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !498, file: !142, line: 475, baseType: !414, size: 64, offset: 10240)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !498, file: !142, line: 477, baseType: !984, size: 512, offset: 10304)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 512, elements: !51)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !498, file: !142, line: 479, baseType: !573, size: 64, offset: 10816)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !498, file: !142, line: 480, baseType: !573, size: 64, offset: 10880)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !498, file: !142, line: 481, baseType: !401, size: 64, offset: 10944)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !498, file: !142, line: 482, baseType: !573, size: 64, offset: 11008)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !498, file: !142, line: 483, baseType: !573, size: 64, offset: 11072)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !498, file: !142, line: 486, baseType: !991, size: 9216, offset: 11136)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 9216, elements: !992)
!992 = !{!174, !247, !26, !26}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !498, file: !142, line: 487, baseType: !991, size: 9216, offset: 20352)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !498, file: !142, line: 488, baseType: !995, size: 36864, offset: 29568)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 36864, elements: !996)
!996 = !{!174, !247, !21, !21}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !498, file: !142, line: 489, baseType: !995, size: 36864, offset: 66432)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !498, file: !142, line: 491, baseType: !999, size: 768, offset: 103296)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 768, elements: !42)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !498, file: !142, line: 494, baseType: !1001, size: 2048, offset: 104064)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !1002)
!1002 = !{!251}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !498, file: !142, line: 495, baseType: !64, size: 32, offset: 106112)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !498, file: !142, line: 496, baseType: !64, size: 32, offset: 106144)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !498, file: !142, line: 500, baseType: !336, size: 16, offset: 106176)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !498, file: !142, line: 501, baseType: !336, size: 16, offset: 106192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !498, file: !142, line: 503, baseType: !336, size: 16, offset: 106208)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !498, file: !142, line: 504, baseType: !336, size: 16, offset: 106224)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !498, file: !142, line: 505, baseType: !414, size: 64, offset: 106240)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !498, file: !142, line: 506, baseType: !414, size: 64, offset: 106304)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !498, file: !142, line: 507, baseType: !1012, size: 64, offset: 106368)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !498, file: !142, line: 508, baseType: !555, size: 16, offset: 106432)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !498, file: !142, line: 509, baseType: !555, size: 16, offset: 106448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !498, file: !142, line: 512, baseType: !64, size: 32, offset: 106464)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !498, file: !142, line: 513, baseType: !64, size: 32, offset: 106496)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !498, file: !142, line: 514, baseType: !1018, size: 64, offset: 106560)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !498, file: !142, line: 515, baseType: !1018, size: 64, offset: 106624)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !498, file: !142, line: 520, baseType: !64, size: 32, offset: 106688)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !498, file: !142, line: 521, baseType: !1023, size: 544, offset: 106720)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 544, elements: !58)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !498, file: !142, line: 523, baseType: !1025, size: 64, offset: 107264)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !759}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !498, file: !142, line: 524, baseType: !1029, size: 64, offset: 107328)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!64, !759, !841, !573, !587}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !498, file: !142, line: 525, baseType: !1033, size: 64, offset: 107392)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!64, !501, !146}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !498, file: !142, line: 526, baseType: !1037, size: 64, offset: 107456)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!64, !764, !64}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !498, file: !142, line: 527, baseType: !1025, size: 64, offset: 107520)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !498, file: !142, line: 528, baseType: !1025, size: 64, offset: 107584)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !498, file: !142, line: 529, baseType: !1025, size: 64, offset: 107648)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !498, file: !142, line: 530, baseType: !1044, size: 64, offset: 107712)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !764}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !498, file: !142, line: 531, baseType: !1025, size: 64, offset: 107776)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !498, file: !142, line: 532, baseType: !880, size: 64, offset: 107840)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !498, file: !142, line: 533, baseType: !880, size: 64, offset: 107904)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !498, file: !142, line: 534, baseType: !1025, size: 64, offset: 107968)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !498, file: !142, line: 535, baseType: !64, size: 32, offset: 108032)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !498, file: !142, line: 536, baseType: !759, size: 64, offset: 108096)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !498, file: !142, line: 537, baseType: !587, size: 64, offset: 108160)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !498, file: !142, line: 538, baseType: !401, size: 64, offset: 108224)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !498, file: !142, line: 539, baseType: !1056, size: 64, offset: 108288)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !498, file: !142, line: 540, baseType: !424, size: 64, offset: 108352)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !498, file: !142, line: 541, baseType: !1059, size: 768, offset: 108416)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 768, elements: !246)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !143, file: !142, line: 596, baseType: !424, size: 64, offset: 6789952)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !143, file: !142, line: 597, baseType: !1062, size: 192, offset: 6790016)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !173)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !142, line: 601, baseType: !64, size: 32, offset: 6790208)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !143, file: !142, line: 602, baseType: !64, size: 32, offset: 6790240)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !143, file: !142, line: 603, baseType: !64, size: 32, offset: 6790272)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !143, file: !142, line: 604, baseType: !64, size: 32, offset: 6790304)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !143, file: !142, line: 605, baseType: !64, size: 32, offset: 6790336)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !143, file: !142, line: 607, baseType: !1056, size: 64, offset: 6790400)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !143, file: !142, line: 608, baseType: !1070, size: 192, offset: 6790464)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 192, elements: !173)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !143, file: !142, line: 609, baseType: !1072, size: 64, offset: 6790656)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !143, file: !142, line: 610, baseType: !401, size: 64, offset: 6790720)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !143, file: !142, line: 611, baseType: !1076, size: 192, offset: 6790784)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, elements: !173)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !143, file: !142, line: 613, baseType: !64, size: 32, offset: 6790976)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !143, file: !142, line: 614, baseType: !64, size: 32, offset: 6791008)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !143, file: !142, line: 617, baseType: !496, size: 64, offset: 6791040)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !143, file: !142, line: 618, baseType: !759, size: 64, offset: 6791104)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !143, file: !142, line: 619, baseType: !1082, size: 192, offset: 6791168)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 192, elements: !173)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !143, file: !142, line: 621, baseType: !64, size: 32, offset: 6791360)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !143, file: !142, line: 626, baseType: !1085, size: 64, offset: 6791424)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !142, line: 626, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !143, file: !142, line: 627, baseType: !1085, size: 64, offset: 6791488)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !143, file: !142, line: 629, baseType: !88, size: 32, offset: 6791552)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !143, file: !142, line: 630, baseType: !64, size: 32, offset: 6791584)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !143, file: !142, line: 634, baseType: !64, size: 32, offset: 6791616)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !143, file: !142, line: 635, baseType: !88, size: 32, offset: 6791648)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !143, file: !142, line: 638, baseType: !64, size: 32, offset: 6791680)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !143, file: !142, line: 638, baseType: !64, size: 32, offset: 6791712)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !143, file: !142, line: 638, baseType: !64, size: 32, offset: 6791744)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !143, file: !142, line: 639, baseType: !88, size: 32, offset: 6791776)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !143, file: !142, line: 639, baseType: !88, size: 32, offset: 6791808)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !143, file: !142, line: 640, baseType: !64, size: 32, offset: 6791840)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !143, file: !142, line: 641, baseType: !64, size: 32, offset: 6791872)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !143, file: !142, line: 642, baseType: !64, size: 32, offset: 6791904)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !143, file: !142, line: 645, baseType: !64, size: 32, offset: 6791936)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !143, file: !142, line: 647, baseType: !88, size: 32, offset: 6791968)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !143, file: !142, line: 648, baseType: !88, size: 32, offset: 6792000)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !143, file: !142, line: 649, baseType: !88, size: 32, offset: 6792032)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !143, file: !142, line: 650, baseType: !88, size: 32, offset: 6792064)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !143, file: !142, line: 651, baseType: !88, size: 32, offset: 6792096)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !143, file: !142, line: 652, baseType: !88, size: 32, offset: 6792128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !143, file: !142, line: 653, baseType: !88, size: 32, offset: 6792160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !143, file: !142, line: 655, baseType: !64, size: 32, offset: 6792192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !143, file: !142, line: 657, baseType: !64, size: 32, offset: 6792224)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !143, file: !142, line: 658, baseType: !64, size: 32, offset: 6792256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !143, file: !142, line: 661, baseType: !64, size: 32, offset: 6792288)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !143, file: !142, line: 662, baseType: !555, size: 16, offset: 6792320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !143, file: !142, line: 663, baseType: !555, size: 16, offset: 6792336)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !143, file: !142, line: 664, baseType: !467, size: 64, offset: 6792352)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !143, file: !142, line: 665, baseType: !64, size: 32, offset: 6792416)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !143, file: !142, line: 666, baseType: !64, size: 32, offset: 6792448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !143, file: !142, line: 667, baseType: !1118, size: 96, offset: 6792480)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 96, elements: !173)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !143, file: !142, line: 668, baseType: !172, size: 96, offset: 6792576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !143, file: !142, line: 670, baseType: !64, size: 32, offset: 6792672)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !143, file: !142, line: 671, baseType: !64, size: 32, offset: 6792704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !143, file: !142, line: 672, baseType: !64, size: 32, offset: 6792736)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !143, file: !142, line: 673, baseType: !64, size: 32, offset: 6792768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !143, file: !142, line: 674, baseType: !64, size: 32, offset: 6792800)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !143, file: !142, line: 675, baseType: !64, size: 32, offset: 6792832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !143, file: !142, line: 676, baseType: !64, size: 32, offset: 6792864)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !143, file: !142, line: 677, baseType: !64, size: 32, offset: 6792896)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !143, file: !142, line: 678, baseType: !64, size: 32, offset: 6792928)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !143, file: !142, line: 679, baseType: !64, size: 32, offset: 6792960)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !143, file: !142, line: 680, baseType: !1131, size: 192, offset: 6792992)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, elements: !1132)
!1132 = !{!174, !469}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !143, file: !142, line: 681, baseType: !1131, size: 192, offset: 6793184)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !143, file: !142, line: 682, baseType: !1131, size: 192, offset: 6793376)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !143, file: !142, line: 683, baseType: !64, size: 32, offset: 6793568)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !143, file: !142, line: 684, baseType: !64, size: 32, offset: 6793600)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !143, file: !142, line: 685, baseType: !64, size: 32, offset: 6793632)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !143, file: !142, line: 686, baseType: !64, size: 32, offset: 6793664)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !143, file: !142, line: 687, baseType: !64, size: 32, offset: 6793696)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !143, file: !142, line: 689, baseType: !64, size: 32, offset: 6793728)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !143, file: !142, line: 692, baseType: !64, size: 32, offset: 6793760)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !143, file: !142, line: 693, baseType: !64, size: 32, offset: 6793792)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !143, file: !142, line: 700, baseType: !64, size: 32, offset: 6793824)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !143, file: !142, line: 701, baseType: !64, size: 32, offset: 6793856)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !143, file: !142, line: 702, baseType: !64, size: 32, offset: 6793888)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !143, file: !142, line: 703, baseType: !64, size: 32, offset: 6793920)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !143, file: !142, line: 704, baseType: !64, size: 32, offset: 6793952)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !143, file: !142, line: 705, baseType: !88, size: 32, offset: 6793984)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !143, file: !142, line: 706, baseType: !64, size: 32, offset: 6794016)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !143, file: !142, line: 707, baseType: !64, size: 32, offset: 6794048)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !143, file: !142, line: 710, baseType: !64, size: 32, offset: 6794080)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !143, file: !142, line: 711, baseType: !64, size: 32, offset: 6794112)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !143, file: !142, line: 712, baseType: !64, size: 32, offset: 6794144)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !143, file: !142, line: 713, baseType: !64, size: 32, offset: 6794176)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !143, file: !142, line: 714, baseType: !64, size: 32, offset: 6794208)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !143, file: !142, line: 716, baseType: !64, size: 32, offset: 6794240)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !143, file: !142, line: 717, baseType: !64, size: 32, offset: 6794272)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !143, file: !142, line: 719, baseType: !267, size: 64, offset: 6794304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !143, file: !142, line: 720, baseType: !267, size: 64, offset: 6794368)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !143, file: !142, line: 722, baseType: !1161, size: 2560, offset: 6794432)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1162, line: 38, baseType: !1163)
!1162 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1162, line: 20, size: 2560, elements: !1164)
!1164 = !{!1165, !1166, !1168, !1169, !1170, !1174, !1175, !1176, !1177, !1178}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1163, file: !1162, line: 22, baseType: !162, size: 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1163, file: !1162, line: 24, baseType: !1167, size: 192, offset: 1088)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 192, elements: !173)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1163, file: !1162, line: 25, baseType: !1167, size: 192, offset: 1280)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1163, file: !1162, line: 26, baseType: !1167, size: 192, offset: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1163, file: !1162, line: 31, baseType: !1171, size: 192, offset: 1664)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 192, elements: !173)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1163, file: !1162, line: 32, baseType: !1171, size: 192, offset: 1856)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1163, file: !1162, line: 33, baseType: !1171, size: 192, offset: 2048)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1163, file: !1162, line: 35, baseType: !172, size: 96, offset: 2240)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1163, file: !1162, line: 36, baseType: !172, size: 96, offset: 2336)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1163, file: !1162, line: 37, baseType: !172, size: 96, offset: 2432)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !143, file: !142, line: 723, baseType: !1161, size: 2560, offset: 6796992)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !143, file: !142, line: 724, baseType: !1161, size: 2560, offset: 6799552)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !143, file: !142, line: 725, baseType: !1161, size: 2560, offset: 6802112)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !143, file: !142, line: 728, baseType: !1161, size: 2560, offset: 6804672)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !143, file: !142, line: 729, baseType: !1161, size: 2560, offset: 6807232)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !143, file: !142, line: 730, baseType: !1161, size: 2560, offset: 6809792)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !143, file: !142, line: 731, baseType: !1161, size: 2560, offset: 6812352)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !143, file: !142, line: 735, baseType: !88, size: 32, offset: 6814912)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !143, file: !142, line: 737, baseType: !64, size: 32, offset: 6814944)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !143, file: !142, line: 738, baseType: !64, size: 32, offset: 6814976)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !143, file: !142, line: 741, baseType: !807, size: 64, offset: 6815040)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !143, file: !142, line: 744, baseType: !64, size: 32, offset: 6815104)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !143, file: !142, line: 746, baseType: !671, size: 32768, offset: 6815136)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !143, file: !142, line: 748, baseType: !64, size: 32, offset: 6847904)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !143, file: !142, line: 751, baseType: !64, size: 32, offset: 6847936)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !143, file: !142, line: 752, baseType: !64, size: 32, offset: 6847968)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !143, file: !142, line: 755, baseType: !64, size: 32, offset: 6848000)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !143, file: !142, line: 756, baseType: !64, size: 32, offset: 6848032)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !143, file: !142, line: 758, baseType: !64, size: 32, offset: 6848064)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !143, file: !142, line: 759, baseType: !64, size: 32, offset: 6848096)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !143, file: !142, line: 762, baseType: !573, size: 64, offset: 6848128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !143, file: !142, line: 763, baseType: !578, size: 64, offset: 6848192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !143, file: !142, line: 765, baseType: !217, size: 64, offset: 6848256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !143, file: !142, line: 766, baseType: !217, size: 64, offset: 6848320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !143, file: !142, line: 768, baseType: !1019, size: 64, offset: 6848384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !143, file: !142, line: 769, baseType: !1205, size: 3200, offset: 6848448)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 3200, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 100)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !143, file: !142, line: 771, baseType: !587, size: 64, offset: 6851648)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !143, file: !142, line: 772, baseType: !1210, size: 192, offset: 6851712)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 192, elements: !173)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !143, file: !142, line: 773, baseType: !587, size: 64, offset: 6851904)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !143, file: !142, line: 776, baseType: !1213, size: 64, offset: 6851968)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !142, line: 776, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !143, file: !142, line: 777, baseType: !1216, size: 64, offset: 6852032)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !142, line: 777, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !143, file: !142, line: 779, baseType: !64, size: 32, offset: 6852096)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !143, file: !142, line: 780, baseType: !501, size: 64, offset: 6852160)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !143, file: !142, line: 781, baseType: !1221, size: 640, offset: 6852224)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 640, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 20)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !143, file: !142, line: 783, baseType: !1225, size: 64, offset: 6852864)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !1227, line: 17, size: 448, elements: !1228)
!1227 = !DIFile(filename: "ldecod_src/inc/annexb.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a6a52094af5c5816464e8295d9d6ede7")
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !1226, file: !1227, line: 19, baseType: !64, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "iobuffer", scope: !1226, file: !1227, line: 20, baseType: !267, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "iobufferread", scope: !1226, file: !1227, line: 21, baseType: !267, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "bytesinbuffer", scope: !1226, file: !1227, line: 22, baseType: !64, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_eof", scope: !1226, file: !1227, line: 23, baseType: !64, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "iIOBufferSize", scope: !1226, file: !1227, line: 24, baseType: !64, size: 32, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "IsFirstByteStreamNALU", scope: !1226, file: !1227, line: 26, baseType: !64, size: 32, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nextstartcodebytes", scope: !1226, file: !1227, line: 27, baseType: !64, size: 32, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "Buf", scope: !1226, file: !1227, line: 28, baseType: !267, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !143, file: !142, line: 784, baseType: !1239, size: 64, offset: 6852928)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !143, file: !142, line: 786, baseType: !1019, size: 64, offset: 6852992)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !143, file: !142, line: 788, baseType: !587, size: 64, offset: 6853056)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !143, file: !142, line: 789, baseType: !64, size: 32, offset: 6853120)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !143, file: !142, line: 790, baseType: !64, size: 32, offset: 6853152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !143, file: !142, line: 792, baseType: !64, size: 32, offset: 6853184)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !143, file: !142, line: 794, baseType: !507, size: 64, offset: 6853248)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !143, file: !142, line: 795, baseType: !507, size: 64, offset: 6853312)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !143, file: !142, line: 796, baseType: !1248, size: 128, offset: 6853376)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 128, elements: !468)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !143, file: !142, line: 800, baseType: !1250, size: 72, offset: 6853504)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1251)
!1251 = !{!909}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !143, file: !142, line: 802, baseType: !217, size: 64, offset: 6853632)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !143, file: !142, line: 803, baseType: !217, size: 64, offset: 6853696)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !143, file: !142, line: 804, baseType: !64, size: 32, offset: 6853760)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !143, file: !142, line: 807, baseType: !1256, size: 64, offset: 6853824)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !142, line: 807, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !143, file: !142, line: 810, baseType: !1259, size: 64, offset: 6853888)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !573, !1262, !64, !64, !64, !64, !64, !64}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !143, file: !142, line: 811, baseType: !1264, size: 64, offset: 6853952)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !759, !64, !64, !217, !847}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !143, file: !142, line: 812, baseType: !1268, size: 64, offset: 6854016)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !64, !607, !607}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !143, file: !142, line: 813, baseType: !1272, size: 64, offset: 6854080)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !267, !759, !64, !64, !587}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !143, file: !142, line: 814, baseType: !1272, size: 64, offset: 6854144)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !143, file: !142, line: 815, baseType: !1277, size: 64, offset: 6854208)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !841, !573, !267, !759, !64, !587}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !143, file: !142, line: 816, baseType: !1277, size: 64, offset: 6854272)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !143, file: !142, line: 817, baseType: !1282, size: 64, offset: 6854336)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !573, !267, !759, !64, !64, !587}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !143, file: !142, line: 818, baseType: !1282, size: 64, offset: 6854400)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !143, file: !142, line: 819, baseType: !1287, size: 64, offset: 6854464)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !573, !1262, !64, !64, !64, !64, !64, !64, !64, !64}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !143, file: !142, line: 821, baseType: !1291, size: 64, offset: 6854528)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !142, line: 561, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !142, line: 544, size: 640, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1293, file: !142, line: 546, baseType: !64, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1293, file: !142, line: 547, baseType: !64, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1293, file: !142, line: 548, baseType: !64, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1293, file: !142, line: 549, baseType: !64, size: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1293, file: !142, line: 550, baseType: !64, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1293, file: !142, line: 551, baseType: !64, size: 32, offset: 160)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1293, file: !142, line: 552, baseType: !267, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1293, file: !142, line: 553, baseType: !267, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1293, file: !142, line: 554, baseType: !267, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1293, file: !142, line: 555, baseType: !64, size: 32, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1293, file: !142, line: 556, baseType: !64, size: 32, offset: 416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1293, file: !142, line: 557, baseType: !64, size: 32, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1293, file: !142, line: 558, baseType: !64, size: 32, offset: 480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1293, file: !142, line: 559, baseType: !64, size: 32, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1293, file: !142, line: 560, baseType: !1310, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !143, file: !142, line: 822, baseType: !64, size: 32, offset: 6854592)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !143, file: !142, line: 823, baseType: !1313, size: 64, offset: 6854656)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !102, line: 54, size: 576, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1322, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !1314, file: !102, line: 56, baseType: !64, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1314, file: !102, line: 57, baseType: !88, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !1314, file: !102, line: 58, baseType: !88, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !1314, file: !102, line: 59, baseType: !64, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !1314, file: !102, line: 60, baseType: !1321, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "NaluType", file: !102, line: 43, baseType: !101)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !1314, file: !102, line: 61, baseType: !1323, size: 32, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "NalRefIdc", file: !102, line: 51, baseType: !120)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1314, file: !102, line: 62, baseType: !267, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "lost_packets", scope: !1314, file: !102, line: 63, baseType: !576, size: 16, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !1314, file: !102, line: 65, baseType: !64, size: 32, offset: 288)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1314, file: !102, line: 66, baseType: !64, size: 32, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1314, file: !102, line: 67, baseType: !64, size: 32, offset: 352)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1314, file: !102, line: 68, baseType: !64, size: 32, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1314, file: !102, line: 69, baseType: !64, size: 32, offset: 416)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1314, file: !102, line: 70, baseType: !64, size: 32, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1314, file: !102, line: 71, baseType: !64, size: 32, offset: 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1314, file: !102, line: 72, baseType: !64, size: 32, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !143, file: !142, line: 824, baseType: !64, size: 32, offset: 6854720)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !143, file: !142, line: 825, baseType: !64, size: 32, offset: 6854752)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !143, file: !142, line: 826, baseType: !64, size: 32, offset: 6854784)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !143, file: !142, line: 827, baseType: !64, size: 32, offset: 6854816)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !143, file: !142, line: 829, baseType: !64, size: 32, offset: 6854848)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !143, file: !142, line: 830, baseType: !64, size: 32, offset: 6854880)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !143, file: !142, line: 831, baseType: !64, size: 32, offset: 6854912)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !143, file: !142, line: 835, baseType: !231, size: 64, offset: 6854976)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "CloseBitsFile", scope: !134, file: !133, line: 25, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !140}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "GetNALU", scope: !134, file: !133, line: 26, baseType: !1348, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!64, !140, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !102, line: 74, baseType: !1314)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1354 = !{!0, !7, !12, !17, !22, !27, !32, !1355, !1358, !34, !39, !44, !46, !48, !53, !55, !1360}
!1355 = !DIGlobalVariableExpression(var: !1356, expr: !DIExpression())
!1356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !1357, isLocal: true, isDefinition: true)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !364)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !1357, isLocal: true, isDefinition: true)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !1362, isLocal: true, isDefinition: true)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 55)
!1365 = !{i32 7, !"Dwarf Version", i32 5}
!1366 = !{i32 2, !"Debug Info Version", i32 3}
!1367 = !{i32 1, !"wchar_size", i32 4}
!1368 = !{i32 8, !"PIC Level", i32 2}
!1369 = !{i32 7, !"PIE Level", i32 2}
!1370 = !{i32 7, !"uwtable", i32 2}
!1371 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1372 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1373 = distinct !DISubprogram(name: "initBitsFile", scope: !2, file: !2, line: 38, type: !1374, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !140, !64}
!1376 = !{!1377, !1378}
!1377 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1373, file: !2, line: 38, type: !140)
!1378 = !DILocalVariable(name: "filemode", arg: 2, scope: !1373, file: !2, line: 38, type: !64)
!1379 = !DILocation(line: 0, scope: !1373)
!1380 = !DILocation(line: 41, column: 3, scope: !1373)
!1381 = !DILocation(line: 44, column: 43, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 44, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 42, column: 3)
!1384 = !DILocation(line: 44, column: 17, scope: !1382)
!1385 = !DILocation(line: 44, column: 27, scope: !1382)
!1386 = !DILocation(line: 44, column: 71, scope: !1382)
!1387 = !DILocation(line: 44, column: 9, scope: !1383)
!1388 = !DILocation(line: 45, column: 7, scope: !1382)
!1389 = !DILocation(line: 47, column: 12, scope: !1383)
!1390 = !DILocation(line: 47, column: 39, scope: !1383)
!1391 = !DILocation(line: 48, column: 12, scope: !1383)
!1392 = !DILocation(line: 48, column: 22, scope: !1383)
!1393 = !DILocation(line: 48, column: 39, scope: !1383)
!1394 = !DILocation(line: 49, column: 12, scope: !1383)
!1395 = !DILocation(line: 49, column: 22, scope: !1383)
!1396 = !DILocation(line: 49, column: 39, scope: !1383)
!1397 = !DILocation(line: 50, column: 5, scope: !1383)
!1398 = !DILocation(line: 51, column: 5, scope: !1383)
!1399 = !DILocation(line: 53, column: 43, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 53, column: 9)
!1401 = !DILocation(line: 53, column: 17, scope: !1400)
!1402 = !DILocation(line: 53, column: 27, scope: !1400)
!1403 = !DILocation(line: 53, column: 71, scope: !1400)
!1404 = !DILocation(line: 53, column: 9, scope: !1383)
!1405 = !DILocation(line: 54, column: 7, scope: !1400)
!1406 = !DILocation(line: 56, column: 12, scope: !1383)
!1407 = !DILocation(line: 56, column: 39, scope: !1383)
!1408 = !DILocation(line: 57, column: 12, scope: !1383)
!1409 = !DILocation(line: 57, column: 22, scope: !1383)
!1410 = !DILocation(line: 57, column: 39, scope: !1383)
!1411 = !DILocation(line: 58, column: 12, scope: !1383)
!1412 = !DILocation(line: 58, column: 22, scope: !1383)
!1413 = !DILocation(line: 58, column: 39, scope: !1383)
!1414 = !DILocation(line: 59, column: 5, scope: !1383)
!1415 = !DILocation(line: 61, column: 5, scope: !1383)
!1416 = !DILocation(line: 62, column: 5, scope: !1383)
!1417 = !DILocation(line: 64, column: 1, scope: !1373)
!1418 = !DISubprogram(name: "calloc", scope: !1419, file: !1419, line: 543, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1353, !1422, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1423, line: 18, baseType: !1424)
!1423 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1424 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1425 = !DISubprogram(name: "no_mem_exit", scope: !1426, file: !1426, line: 180, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1342}
!1429 = !DISubprogram(name: "malloc_annex_b", scope: !1227, file: !1227, line: 34, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DISubprogram(name: "error", scope: !142, file: !142, line: 940, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1342, !64}
!1433 = distinct !DISubprogram(name: "read_next_nalu", scope: !2, file: !2, line: 94, type: !1349, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437, !1438}
!1435 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1433, file: !2, line: 94, type: !140)
!1436 = !DILocalVariable(name: "nalu", arg: 2, scope: !1433, file: !2, line: 94, type: !1351)
!1437 = !DILocalVariable(name: "p_Inp", scope: !1433, file: !2, line: 96, type: !513)
!1438 = !DILocalVariable(name: "ret", scope: !1433, file: !2, line: 97, type: !64)
!1439 = !DILocation(line: 0, scope: !1433)
!1440 = !DILocation(line: 96, column: 35, scope: !1433)
!1441 = !DILocation(line: 99, column: 16, scope: !1433)
!1442 = !DILocation(line: 99, column: 26, scope: !1433)
!1443 = !DILocation(line: 99, column: 9, scope: !1433)
!1444 = !DILocation(line: 101, column: 11, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 101, column: 7)
!1446 = !DILocation(line: 101, column: 7, scope: !1433)
!1447 = !DILocation(line: 103, column: 100, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 102, column: 3)
!1449 = !DILocation(line: 103, column: 110, scope: !1448)
!1450 = !DILocation(line: 103, column: 93, scope: !1448)
!1451 = !DILocation(line: 103, column: 5, scope: !1448)
!1452 = !DILocation(line: 104, column: 5, scope: !1448)
!1453 = !DILocation(line: 106, column: 7, scope: !1433)
!1454 = !DILocation(line: 106, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 106, column: 7)
!1456 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1457, file: !2, line: 131, type: !140)
!1457 = distinct !DISubprogram(name: "CheckZeroByteNonVCL", scope: !2, file: !2, line: 131, type: !1458, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !140, !1351}
!1460 = !{!1456, !1461, !1462}
!1461 = !DILocalVariable(name: "nalu", arg: 2, scope: !1457, file: !2, line: 131, type: !1351)
!1462 = !DILocalVariable(name: "CheckZeroByte", scope: !1457, file: !2, line: 133, type: !64)
!1463 = !DILocation(line: 0, scope: !1457, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 114, column: 3, scope: !1433)
!1465 = !DILocation(line: 136, column: 12, scope: !1466, inlinedAt: !1464)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 136, column: 6)
!1467 = !DILocation(line: 136, column: 28, scope: !1466, inlinedAt: !1464)
!1468 = !DILocation(line: 140, column: 41, scope: !1469, inlinedAt: !1464)
!1469 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 140, column: 6)
!1470 = !DILocation(line: 143, column: 42, scope: !1471, inlinedAt: !1464)
!1471 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 143, column: 6)
!1472 = !DILocation(line: 147, column: 15, scope: !1473, inlinedAt: !1464)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 147, column: 8)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 146, column: 3)
!1475 = !DILocation(line: 147, column: 8, scope: !1473, inlinedAt: !1464)
!1476 = !DILocation(line: 147, column: 8, scope: !1474, inlinedAt: !1464)
!1477 = !DILocation(line: 149, column: 34, scope: !1478, inlinedAt: !1464)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 148, column: 5)
!1479 = !DILocation(line: 150, column: 14, scope: !1478, inlinedAt: !1464)
!1480 = !DILocation(line: 150, column: 23, scope: !1478, inlinedAt: !1464)
!1481 = !DILocation(line: 151, column: 5, scope: !1478, inlinedAt: !1464)
!1482 = !DILocation(line: 153, column: 10, scope: !1457, inlinedAt: !1464)
!1483 = !DILocation(line: 153, column: 19, scope: !1457, inlinedAt: !1464)
!1484 = !DILocation(line: 155, column: 22, scope: !1485, inlinedAt: !1464)
!1485 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 155, column: 6)
!1486 = !DILocation(line: 157, column: 6, scope: !1487, inlinedAt: !1464)
!1487 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 157, column: 6)
!1488 = !DILocation(line: 157, column: 20, scope: !1487, inlinedAt: !1464)
!1489 = !DILocation(line: 157, column: 29, scope: !1487, inlinedAt: !1464)
!1490 = !DILocation(line: 157, column: 48, scope: !1487, inlinedAt: !1464)
!1491 = !DILocation(line: 157, column: 6, scope: !1457, inlinedAt: !1464)
!1492 = !DILocation(line: 159, column: 5, scope: !1493, inlinedAt: !1464)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 158, column: 3)
!1494 = !DILocation(line: 161, column: 3, scope: !1493, inlinedAt: !1464)
!1495 = !DILocalVariable(name: "nalu", arg: 1, scope: !1496, file: !2, line: 79, type: !1351)
!1496 = distinct !DISubprogram(name: "NALUtoRBSP", scope: !2, file: !2, line: 79, type: !1497, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!64, !1351}
!1499 = !{!1495}
!1500 = !DILocation(line: 0, scope: !1496, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 116, column: 9, scope: !1433)
!1502 = !DILocation(line: 83, column: 33, scope: !1496, inlinedAt: !1501)
!1503 = !DILocation(line: 83, column: 44, scope: !1496, inlinedAt: !1501)
!1504 = !DILocation(line: 83, column: 15, scope: !1496, inlinedAt: !1501)
!1505 = !DILocation(line: 83, column: 13, scope: !1496, inlinedAt: !1501)
!1506 = !DILocation(line: 118, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 118, column: 7)
!1508 = !DILocation(line: 118, column: 7, scope: !1433)
!1509 = !DILocation(line: 119, column: 5, scope: !1507)
!1510 = !DILocation(line: 123, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 123, column: 7)
!1512 = !DILocation(line: 123, column: 7, scope: !1511)
!1513 = !DILocation(line: 123, column: 7, scope: !1433)
!1514 = !DILocation(line: 125, column: 5, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 124, column: 3)
!1516 = !DILocation(line: 126, column: 3, scope: !1515)
!1517 = !DILocation(line: 128, column: 16, scope: !1433)
!1518 = !DILocation(line: 128, column: 3, scope: !1433)
!1519 = !DILocation(line: 129, column: 1, scope: !1433)
!1520 = !DISubprogram(name: "snprintf", scope: !1521, file: !1521, line: 378, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!64, !1524, !1422, !1525, null}
!1524 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1342)
!1525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1528 = !DILocation(line: 0, scope: !1457)
!1529 = !DILocation(line: 136, column: 12, scope: !1466)
!1530 = !DILocation(line: 136, column: 28, scope: !1466)
!1531 = !DILocation(line: 140, column: 41, scope: !1469)
!1532 = !DILocation(line: 143, column: 42, scope: !1471)
!1533 = !DILocation(line: 147, column: 15, scope: !1473)
!1534 = !DILocation(line: 147, column: 8, scope: !1473)
!1535 = !DILocation(line: 147, column: 8, scope: !1474)
!1536 = !DILocation(line: 149, column: 34, scope: !1478)
!1537 = !DILocation(line: 150, column: 14, scope: !1478)
!1538 = !DILocation(line: 150, column: 23, scope: !1478)
!1539 = !DILocation(line: 151, column: 5, scope: !1478)
!1540 = !DILocation(line: 153, column: 10, scope: !1457)
!1541 = !DILocation(line: 153, column: 19, scope: !1457)
!1542 = !DILocation(line: 155, column: 22, scope: !1485)
!1543 = !DILocation(line: 157, column: 6, scope: !1487)
!1544 = !DILocation(line: 157, column: 20, scope: !1487)
!1545 = !DILocation(line: 157, column: 29, scope: !1487)
!1546 = !DILocation(line: 157, column: 48, scope: !1487)
!1547 = !DILocation(line: 157, column: 6, scope: !1457)
!1548 = !DILocation(line: 159, column: 5, scope: !1493)
!1549 = !DILocation(line: 161, column: 3, scope: !1493)
!1550 = !DILocation(line: 162, column: 1, scope: !1457)
!1551 = distinct !DISubprogram(name: "CheckZeroByteVCL", scope: !2, file: !2, line: 164, type: !1458, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1551, file: !2, line: 164, type: !140)
!1554 = !DILocalVariable(name: "nalu", arg: 2, scope: !1551, file: !2, line: 164, type: !1351)
!1555 = !DILocalVariable(name: "CheckZeroByte", scope: !1551, file: !2, line: 166, type: !64)
!1556 = !DILocation(line: 0, scope: !1551)
!1557 = !DILocation(line: 169, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 169, column: 6)
!1559 = !DILocation(line: 169, column: 45, scope: !1558)
!1560 = !DILocation(line: 172, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 172, column: 6)
!1562 = !DILocation(line: 172, column: 6, scope: !1561)
!1563 = !DILocation(line: 172, column: 6, scope: !1551)
!1564 = !DILocation(line: 176, column: 19, scope: !1551)
!1565 = !DILocation(line: 181, column: 31, scope: !1551)
!1566 = !DILocation(line: 182, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 182, column: 6)
!1568 = !DILocation(line: 176, column: 10, scope: !1551)
!1569 = !DILocation(line: 179, column: 23, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 179, column: 6)
!1571 = !DILocation(line: 182, column: 29, scope: !1567)
!1572 = !DILocation(line: 182, column: 48, scope: !1567)
!1573 = !DILocation(line: 182, column: 6, scope: !1551)
!1574 = !DILocation(line: 184, column: 5, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 183, column: 3)
!1576 = !DILocation(line: 186, column: 3, scope: !1575)
!1577 = !DILocation(line: 187, column: 1, scope: !1551)
!1578 = distinct !DISubprogram(name: "nal_unit_header_mvc_extension", scope: !2, file: !2, line: 190, type: !1579, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1582)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1581, !736}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "NaluHeaderMVCExt", arg: 1, scope: !1578, file: !2, line: 190, type: !1581)
!1584 = !DILocalVariable(name: "s", arg: 2, scope: !1578, file: !2, line: 190, type: !736)
!1585 = !DILocation(line: 0, scope: !1578)
!1586 = !DILocation(line: 193, column: 35, scope: !1578)
!1587 = !DILocation(line: 193, column: 33, scope: !1578)
!1588 = !DILocation(line: 194, column: 34, scope: !1578)
!1589 = !DILocation(line: 194, column: 20, scope: !1578)
!1590 = !DILocation(line: 194, column: 32, scope: !1578)
!1591 = !DILocation(line: 195, column: 30, scope: !1578)
!1592 = !DILocation(line: 195, column: 20, scope: !1578)
!1593 = !DILocation(line: 195, column: 28, scope: !1578)
!1594 = !DILocation(line: 196, column: 34, scope: !1578)
!1595 = !DILocation(line: 196, column: 20, scope: !1578)
!1596 = !DILocation(line: 196, column: 32, scope: !1578)
!1597 = !DILocation(line: 197, column: 38, scope: !1578)
!1598 = !DILocation(line: 197, column: 20, scope: !1578)
!1599 = !DILocation(line: 197, column: 36, scope: !1578)
!1600 = !DILocation(line: 198, column: 38, scope: !1578)
!1601 = !DILocation(line: 198, column: 20, scope: !1578)
!1602 = !DILocation(line: 198, column: 36, scope: !1578)
!1603 = !DILocation(line: 199, column: 39, scope: !1578)
!1604 = !DILocation(line: 199, column: 20, scope: !1578)
!1605 = !DILocation(line: 199, column: 37, scope: !1578)
!1606 = !DILocation(line: 200, column: 40, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 200, column: 5)
!1608 = !DILocation(line: 200, column: 5, scope: !1578)
!1609 = !DILocation(line: 202, column: 3, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 201, column: 2)
!1611 = !DILocation(line: 203, column: 2, scope: !1610)
!1612 = !DILocation(line: 204, column: 1, scope: !1578)
!1613 = !DISubprogram(name: "u_v", scope: !1614, file: !1614, line: 73, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1614 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!64, !64, !1342, !736}
!1617 = distinct !DISubprogram(name: "nal_unit_header_svc_extension", scope: !2, file: !2, line: 206, type: !1618, scopeLine: 207, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null}
!1620 = !DILocation(line: 209, column: 1, scope: !1617)
!1621 = distinct !DISubprogram(name: "prefix_nal_unit_svc", scope: !2, file: !2, line: 211, type: !1618, scopeLine: 212, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1622 = !DILocation(line: 214, column: 1, scope: !1621)
!1623 = !DISubprogram(name: "EBSPtoRBSP", scope: !142, file: !142, line: 947, type: !1624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!64, !267, !64, !64}
