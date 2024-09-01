; ModuleID = 'ldecod_src/output.c'
source_filename = "ldecod_src/output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_out_picture.SubWidthC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16, !dbg !0
@write_out_picture.SubHeightC = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16, !dbg !1249
@.str = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1, !dbg !1253
@.str.3 = private unnamed_addr constant [18 x i8] c"%s_ViewId%04d.yuv\00", align 1, !dbg !1264
@errortext = external global [300 x i8], align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"Error open file %s \00", align 1, !dbg !1269
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1272
@.str.6 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to RGB file\00", align 1, !dbg !1274
@.str.7 = private unnamed_addr constant [45 x i8] c"write_out_picture: error writing to YUV file\00", align 1, !dbg !1279
@.str.8 = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1, !dbg !1281

; Function Attrs: nounwind uwtable
define dso_local void @write_picture(ptr noundef %p_Vid, ptr noundef %p, i32 %p_out, i32 %real_structure) local_unnamed_addr #0 !dbg !1326 {
entry:
  %out_ViewFileName.i = alloca [255 x i8], align 16, !DIAssignID !1334
    #dbg_assign(i1 undef, !1292, !DIExpression(), !1334, ptr %out_ViewFileName.i, !DIExpression(), !1335)
  %chBuf.i = alloca [255 x i8], align 16, !DIAssignID !1337
    #dbg_value(ptr %p_Vid, !1330, !DIExpression(), !1338)
    #dbg_value(ptr %p, !1331, !DIExpression(), !1338)
    #dbg_value(i32 poison, !1332, !DIExpression(), !1338)
    #dbg_value(i32 poison, !1333, !DIExpression(), !1338)
    #dbg_assign(i1 undef, !1293, !DIExpression(), !1337, ptr %chBuf.i, !DIExpression(), !1335)
    #dbg_value(ptr %p_Vid, !1287, !DIExpression(), !1335)
    #dbg_value(ptr %p, !1288, !DIExpression(), !1335)
    #dbg_value(i32 poison, !1289, !DIExpression(), !1335)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1339
    #dbg_value(ptr %0, !1290, !DIExpression(), !1335)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %out_ViewFileName.i) #14, !dbg !1340
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %chBuf.i) #14, !dbg !1340
  %view_id.i = getelementptr inbounds i8, ptr %p, i64 344, !dbg !1341
  %1 = load i32, ptr %view_id.i, align 8, !dbg !1341
  %call.i = tail call i32 @GetVOIdx(ptr noundef nonnull %p_Vid, i32 noundef %1) #14, !dbg !1342
    #dbg_value(i32 %call.i, !1296, !DIExpression(), !1335)
  %pic_unit_bitsize_on_disk.i = getelementptr inbounds i8, ptr %p_Vid, i64 849036, !dbg !1343
    #dbg_value(i32 poison, !1301, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1335)
  %active_sps.i = getelementptr inbounds i8, ptr %p_Vid, i64 16, !dbg !1344
  %2 = load ptr, ptr %active_sps.i, align 8, !dbg !1344
  %matrix_coefficients.i = getelementptr inbounds i8, ptr %2, i64 3216, !dbg !1345
  %3 = load i32, ptr %matrix_coefficients.i, align 4, !dbg !1345
  %cmp.i = icmp eq i32 %3, 0, !dbg !1346
    #dbg_value(i1 %cmp.i, !1302, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1335)
  %non_existing.i = getelementptr inbounds i8, ptr %p, i64 52, !dbg !1347
  %4 = load i32, ptr %non_existing.i, align 4, !dbg !1347
  %tobool.not.i = icmp eq i32 %4, 0, !dbg !1349
  br i1 %tobool.not.i, label %if.end.i, label %write_out_picture.exit, !dbg !1350

if.end.i:                                         ; preds = %entry
  %5 = load i32, ptr %pic_unit_bitsize_on_disk.i, align 4, !dbg !1343
    #dbg_value(i32 %5, !1301, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1335)
  %add.i = add nsw i32 %5, 7, !dbg !1351
    #dbg_value(i32 %add.i, !1301, !DIExpression(DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !1335)
  %shr.i = ashr i32 %add.i, 3, !dbg !1352
    #dbg_value(i32 %shr.i, !1301, !DIExpression(), !1335)
  %seiHasTone_mapping.i = getelementptr inbounds i8, ptr %p, i64 324, !dbg !1353
  %6 = load i32, ptr %seiHasTone_mapping.i, align 4, !dbg !1353
  %tobool2.i = icmp ne i32 %6, 0, !dbg !1355
  %or.cond.i = select i1 %tobool2.i, i1 %cmp.i, i1 false, !dbg !1356
  br i1 %or.cond.i, label %if.then4.i, label %if.end13.i, !dbg !1356

if.then4.i:                                       ; preds = %if.end.i
  %tonemapped_bit_depth.i = getelementptr inbounds i8, ptr %p, i64 332, !dbg !1357
  %7 = load i32, ptr %tonemapped_bit_depth.i, align 4, !dbg !1357
  %cmp5.i = icmp sgt i32 %7, 8, !dbg !1359
  %cond.i = select i1 %cmp5.i, i32 2, i32 1, !dbg !1360
    #dbg_value(i32 %cond.i, !1301, !DIExpression(), !1335)
  %imgY.i = getelementptr inbounds i8, ptr %p, i64 128, !dbg !1361
  %8 = load ptr, ptr %imgY.i, align 8, !dbg !1361
  %tone_mapping_lut.i = getelementptr inbounds i8, ptr %p, i64 336, !dbg !1362
  %9 = load ptr, ptr %tone_mapping_lut.i, align 8, !dbg !1362
  %size_x.i = getelementptr inbounds i8, ptr %p, i64 64, !dbg !1363
  %10 = load i32, ptr %size_x.i, align 8, !dbg !1363
  %size_y.i = getelementptr inbounds i8, ptr %p, i64 68, !dbg !1364
  %11 = load i32, ptr %size_y.i, align 4, !dbg !1364
  tail call void @tone_map(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) #14, !dbg !1365
  %imgUV.i = getelementptr inbounds i8, ptr %p, i64 136, !dbg !1366
  %12 = load ptr, ptr %imgUV.i, align 8, !dbg !1366
  %13 = load ptr, ptr %12, align 8, !dbg !1367
  %14 = load ptr, ptr %tone_mapping_lut.i, align 8, !dbg !1368
  %size_x_cr.i = getelementptr inbounds i8, ptr %p, i64 72, !dbg !1369
  %15 = load i32, ptr %size_x_cr.i, align 8, !dbg !1369
  %size_y_cr.i = getelementptr inbounds i8, ptr %p, i64 76, !dbg !1370
  %16 = load i32, ptr %size_y_cr.i, align 4, !dbg !1370
  tail call void @tone_map(ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16) #14, !dbg !1371
  %17 = load ptr, ptr %imgUV.i, align 8, !dbg !1372
  %arrayidx9.i = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1373
  %18 = load ptr, ptr %arrayidx9.i, align 8, !dbg !1373
  %19 = load ptr, ptr %tone_mapping_lut.i, align 8, !dbg !1374
  %20 = load i32, ptr %size_x_cr.i, align 8, !dbg !1375
  %21 = load i32, ptr %size_y_cr.i, align 4, !dbg !1376
  tail call void @tone_map(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #14, !dbg !1377
  br label %if.end13.i, !dbg !1378

if.end13.i:                                       ; preds = %if.then4.i, %if.end.i
  %symbol_size_in_bytes.0.i = phi i32 [ %cond.i, %if.then4.i ], [ %shr.i, %if.end.i ], !dbg !1335
    #dbg_value(i32 %symbol_size_in_bytes.0.i, !1301, !DIExpression(), !1335)
  %frame_cropping_flag.i = getelementptr inbounds i8, ptr %p, i64 276, !dbg !1379
  %22 = load i32, ptr %frame_cropping_flag.i, align 4, !dbg !1379
  %tobool14.not.i = icmp eq i32 %22, 0, !dbg !1381
  br i1 %tobool14.not.i, label %if.end13.if.end33_crit_edge.i, label %if.then15.i, !dbg !1382

if.end13.if.end33_crit_edge.i:                    ; preds = %if.end13.i
  %frame_cropping_rect_left_offset35.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 280
  %.pre.i = load i32, ptr %frame_cropping_rect_left_offset35.phi.trans.insert.i, align 8, !dbg !1383
  %frame_cropping_rect_right_offset37.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 284
  %.pre900.i = load i32, ptr %frame_cropping_rect_right_offset37.phi.trans.insert.i, align 4, !dbg !1384
  %frame_mbs_only_flag40.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 272
  %.pre901.i = load i32, ptr %frame_mbs_only_flag40.phi.trans.insert.i, align 8, !dbg !1385
  %frame_cropping_rect_top_offset42.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 288
  %.pre902.i = load i32, ptr %frame_cropping_rect_top_offset42.phi.trans.insert.i, align 8, !dbg !1386
  %frame_cropping_rect_bottom_offset47.phi.trans.insert.i = getelementptr inbounds i8, ptr %p, i64 292
  %.pre903.i = load i32, ptr %frame_cropping_rect_bottom_offset47.phi.trans.insert.i, align 4, !dbg !1387
  br label %if.end33.i, !dbg !1382

if.then15.i:                                      ; preds = %if.end13.i
  %chroma_format_idc.i = getelementptr inbounds i8, ptr %p, i64 268, !dbg !1388
  %23 = load i32, ptr %chroma_format_idc.i, align 4, !dbg !1388
  %idxprom.i = sext i32 %23 to i64, !dbg !1390
  %arrayidx16.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %idxprom.i, !dbg !1390
  %24 = load i32, ptr %arrayidx16.i, align 4, !dbg !1390
  %frame_cropping_rect_left_offset.i = getelementptr inbounds i8, ptr %p, i64 280, !dbg !1391
  %25 = load i32, ptr %frame_cropping_rect_left_offset.i, align 8, !dbg !1391
  %mul.i = mul nsw i32 %25, %24, !dbg !1392
    #dbg_value(i32 %mul.i, !1297, !DIExpression(), !1335)
  %frame_cropping_rect_right_offset.i = getelementptr inbounds i8, ptr %p, i64 284, !dbg !1393
  %26 = load i32, ptr %frame_cropping_rect_right_offset.i, align 4, !dbg !1393
  %mul20.i = mul nsw i32 %26, %24, !dbg !1394
    #dbg_value(i32 %mul20.i, !1298, !DIExpression(), !1335)
  %arrayidx23.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %idxprom.i, !dbg !1395
  %27 = load i32, ptr %arrayidx23.i, align 4, !dbg !1395
  %frame_mbs_only_flag.i = getelementptr inbounds i8, ptr %p, i64 272, !dbg !1396
  %28 = load i32, ptr %frame_mbs_only_flag.i, align 8, !dbg !1396
  %sub.i = sub nsw i32 2, %28, !dbg !1397
  %mul24.i = mul nsw i32 %sub.i, %27, !dbg !1398
  %frame_cropping_rect_top_offset.i = getelementptr inbounds i8, ptr %p, i64 288, !dbg !1399
  %29 = load i32, ptr %frame_cropping_rect_top_offset.i, align 8, !dbg !1399
  %mul25.i = mul nsw i32 %mul24.i, %29, !dbg !1400
    #dbg_value(i32 %mul25.i, !1299, !DIExpression(), !1335)
  %frame_cropping_rect_bottom_offset.i = getelementptr inbounds i8, ptr %p, i64 292, !dbg !1401
  %30 = load i32, ptr %frame_cropping_rect_bottom_offset.i, align 4, !dbg !1401
  %mul32.i = mul nsw i32 %mul24.i, %30, !dbg !1402
    #dbg_value(i32 %mul32.i, !1300, !DIExpression(), !1335)
  br label %if.end33.i, !dbg !1403

if.end33.i:                                       ; preds = %if.then15.i, %if.end13.if.end33_crit_edge.i
  %31 = phi i32 [ %30, %if.then15.i ], [ %.pre903.i, %if.end13.if.end33_crit_edge.i ], !dbg !1387
  %32 = phi i32 [ %29, %if.then15.i ], [ %.pre902.i, %if.end13.if.end33_crit_edge.i ], !dbg !1386
  %33 = phi i32 [ %28, %if.then15.i ], [ %.pre901.i, %if.end13.if.end33_crit_edge.i ], !dbg !1385
  %34 = phi i32 [ %26, %if.then15.i ], [ %.pre900.i, %if.end13.if.end33_crit_edge.i ], !dbg !1384
  %35 = phi i32 [ %25, %if.then15.i ], [ %.pre.i, %if.end13.if.end33_crit_edge.i ], !dbg !1383
  %crop_bottom.0.i = phi i32 [ %mul32.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ], !dbg !1404
  %crop_top.0.i = phi i32 [ %mul25.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ], !dbg !1404
  %crop_right.0.i = phi i32 [ %mul20.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ], !dbg !1404
  %crop_left.0.i = phi i32 [ %mul.i, %if.then15.i ], [ 0, %if.end13.if.end33_crit_edge.i ], !dbg !1404
    #dbg_value(i32 %crop_left.0.i, !1297, !DIExpression(), !1335)
    #dbg_value(i32 %crop_right.0.i, !1298, !DIExpression(), !1335)
    #dbg_value(i32 %crop_top.0.i, !1299, !DIExpression(), !1335)
    #dbg_value(i32 %crop_bottom.0.i, !1300, !DIExpression(), !1335)
  %size_x_cr34.i = getelementptr inbounds i8, ptr %p, i64 72, !dbg !1405
  %36 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1405
  %frame_cropping_rect_left_offset35.i = getelementptr inbounds i8, ptr %p, i64 280, !dbg !1383
  %frame_cropping_rect_right_offset37.i = getelementptr inbounds i8, ptr %p, i64 284, !dbg !1384
  %37 = add i32 %35, %34, !dbg !1406
  %sub38.i = sub i32 %36, %37, !dbg !1406
    #dbg_value(i32 %sub38.i, !1308, !DIExpression(), !1335)
  %size_y_cr39.i = getelementptr inbounds i8, ptr %p, i64 76, !dbg !1407
  %38 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1407
  %frame_mbs_only_flag40.i = getelementptr inbounds i8, ptr %p, i64 272, !dbg !1385
  %frame_cropping_rect_top_offset42.i = getelementptr inbounds i8, ptr %p, i64 288, !dbg !1386
  %frame_cropping_rect_bottom_offset47.i = getelementptr inbounds i8, ptr %p, i64 292, !dbg !1387
    #dbg_value(!DIArgList(i32 %33, i32 %38, i32 %32, i32 %31), !1309, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1335)
  %size_x50.i = getelementptr inbounds i8, ptr %p, i64 64, !dbg !1408
  %39 = load i32, ptr %size_x50.i, align 8, !dbg !1408
  %40 = add i32 %crop_left.0.i, %crop_right.0.i, !dbg !1409
  %sub52.i = sub i32 %39, %40, !dbg !1409
    #dbg_value(i32 %sub52.i, !1306, !DIExpression(), !1335)
  %size_y53.i = getelementptr inbounds i8, ptr %p, i64 68, !dbg !1410
  %41 = load i32, ptr %size_y53.i, align 4, !dbg !1410
    #dbg_value(!DIArgList(i32 %41, i32 %crop_top.0.i, i32 %crop_bottom.0.i), !1307, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %41, i32 %crop_top.0.i, i32 %crop_bottom.0.i), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %33, i32 %38, i32 %32, i32 %31, i32 %41, i32 %crop_top.0.i, i32 %crop_bottom.0.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_plus, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(ptr %p_Vid, !1411, !DIExpression(), !1417)
    #dbg_value(i32 %symbol_size_in_bytes.0.i, !1416, !DIExpression(), !1417)
  %call.i.i = tail call i32 @testEndian() #14, !dbg !1419
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0, !dbg !1419
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @img2buf_normal, ptr @img2buf_endian, !dbg !1423
  %42 = getelementptr inbounds i8, ptr %p_Vid, i64 856808, !dbg !1424
  store ptr %spec.select.i.i, ptr %42, align 8, !dbg !1424
  %pDecOuputPic.i = getelementptr inbounds i8, ptr %p_Vid, i64 856816, !dbg !1425
  %43 = load ptr, ptr %pDecOuputPic.i, align 8, !dbg !1425
  %call63.i = tail call ptr @GetOneAvailDecPicFromList(ptr noundef %43, i32 noundef 0) #14, !dbg !1426
    #dbg_value(ptr %call63.i, !1291, !DIExpression(), !1335)
  %pY.i = getelementptr inbounds i8, ptr %call63.i, i64 24, !dbg !1427
  %44 = load ptr, ptr %pY.i, align 8, !dbg !1427
  %cmp64.i = icmp eq ptr %44, null, !dbg !1429
  br i1 %cmp64.i, label %if.then66.i, label %if.end80.i, !dbg !1430

if.then66.i:                                      ; preds = %if.end33.i
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %33, i32 %38, i32 %32, i32 %31, i32 %41, i32 0, i32 0, i32 %45), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_minus, DW_OP_minus, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %41, i32 0, i32 0, i32 %45), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_minus, DW_OP_minus, DW_OP_minus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %41, i32 0, i32 0, i32 %45), !1307, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_minus, DW_OP_minus, DW_OP_stack_value), !1335)
  %45 = add i32 %crop_top.0.i, %crop_bottom.0.i, !dbg !1431
  %sub55.i = sub i32 %41, %45, !dbg !1431
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %33, i32 %38, i32 %32, i32 %31, i32 %sub55.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %sub52.i, i32 %symbol_size_in_bytes.0.i, i32 %sub55.i), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(i32 %sub55.i, !1307, !DIExpression(), !1335)
  %mul56.i = mul nsw i32 %sub55.i, %sub52.i, !dbg !1432
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %33, i32 %38, i32 %32, i32 %31), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 2, DW_OP_minus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i), !1304, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %sub41.neg.i = add i32 %33, -2, !dbg !1433
    #dbg_value(!DIArgList(i32 %sub41.neg.i, i32 %38, i32 %32, i32 %31), !1309, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %sub41.neg.i, i32 %38, i32 %32, i32 %31), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_plus, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %mul48871.i = add i32 %32, %31, !dbg !1434
    #dbg_value(!DIArgList(i32 %sub41.neg.i, i32 %38, i32 %mul48871.i), !1309, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %sub41.neg.i, i32 %38, i32 %mul48871.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 5, DW_OP_mul, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %.neg.i = mul i32 %sub41.neg.i, %mul48871.i, !dbg !1434
    #dbg_value(!DIArgList(i32 %.neg.i, i32 %38), !1309, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %.neg.i, i32 %38), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %sub49.i = add i32 %38, %.neg.i, !dbg !1434
    #dbg_value(i32 %sub49.i, !1309, !DIExpression(), !1335)
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %sub38.i, i32 %sub49.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %mul59.i = shl i32 %sub38.i, 1, !dbg !1435
  %mul60.i = mul i32 %mul59.i, %sub49.i, !dbg !1436
    #dbg_value(!DIArgList(i32 %mul56.i, i32 %symbol_size_in_bytes.0.i, i32 %mul60.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %add61.i = add nsw i32 %mul56.i, %mul60.i, !dbg !1437
    #dbg_value(!DIArgList(i32 %add61.i, i32 %symbol_size_in_bytes.0.i), !1305, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !1335)
  %mul62.i = mul nsw i32 %add61.i, %symbol_size_in_bytes.0.i, !dbg !1438
    #dbg_value(i32 %mul62.i, !1305, !DIExpression(), !1335)
  %mul57.i = mul nsw i32 %mul56.i, %symbol_size_in_bytes.0.i, !dbg !1439
    #dbg_value(i32 %mul57.i, !1304, !DIExpression(), !1335)
  %conv67.i = sext i32 %mul62.i to i64, !dbg !1440
  %call68.i = tail call noalias ptr @malloc(i64 noundef %conv67.i) #15, !dbg !1442
  store ptr %call68.i, ptr %pY.i, align 8, !dbg !1443
  %idx.ext.i = sext i32 %mul57.i to i64, !dbg !1444
  %add.ptr.i = getelementptr inbounds i8, ptr %call68.i, i64 %idx.ext.i, !dbg !1444
  %pU.i = getelementptr inbounds i8, ptr %call63.i, i64 32, !dbg !1445
  store ptr %add.ptr.i, ptr %pU.i, align 8, !dbg !1446
  %sub72.i = mul i32 %mul60.i, %symbol_size_in_bytes.0.i, !dbg !1447
  %shr73.i = ashr exact i32 %sub72.i, 1, !dbg !1448
  %idx.ext74.i = sext i32 %shr73.i to i64, !dbg !1449
  %add.ptr75.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext74.i, !dbg !1449
  %pV.i = getelementptr inbounds i8, ptr %call63.i, i64 40, !dbg !1450
  store ptr %add.ptr75.i, ptr %pV.i, align 8, !dbg !1451
  %chroma_format_idc76.i = getelementptr inbounds i8, ptr %p, i64 268, !dbg !1452
  %46 = load i32, ptr %chroma_format_idc76.i, align 4, !dbg !1452
  %iYUVFormat.i = getelementptr inbounds i8, ptr %call63.i, i64 12, !dbg !1453
  store i32 %46, ptr %iYUVFormat.i, align 4, !dbg !1454
  %iYUVStorageFormat.i = getelementptr inbounds i8, ptr %call63.i, i64 16, !dbg !1455
  store i32 0, ptr %iYUVStorageFormat.i, align 8, !dbg !1456
  %47 = load i32, ptr %pic_unit_bitsize_on_disk.i, align 4, !dbg !1457
  %iBitDepth.i = getelementptr inbounds i8, ptr %call63.i, i64 20, !dbg !1458
  store i32 %47, ptr %iBitDepth.i, align 4, !dbg !1459
  %iWidth.i = getelementptr inbounds i8, ptr %call63.i, i64 48, !dbg !1460
  store i32 %sub52.i, ptr %iWidth.i, align 8, !dbg !1461
  %iHeight.i = getelementptr inbounds i8, ptr %call63.i, i64 52, !dbg !1462
  store i32 %sub55.i, ptr %iHeight.i, align 4, !dbg !1463
  %mul78.i = mul nsw i32 %sub52.i, %symbol_size_in_bytes.0.i, !dbg !1464
  %iYBufStride.i = getelementptr inbounds i8, ptr %call63.i, i64 56, !dbg !1465
  store i32 %mul78.i, ptr %iYBufStride.i, align 8, !dbg !1466
  %mul79.i = mul nsw i32 %sub38.i, %symbol_size_in_bytes.0.i, !dbg !1467
  %iUVBufStride.i = getelementptr inbounds i8, ptr %call63.i, i64 60, !dbg !1468
  store i32 %mul79.i, ptr %iUVBufStride.i, align 4, !dbg !1469
  br label %if.end80.i, !dbg !1470

if.end80.i:                                       ; preds = %if.then66.i, %if.end33.i
  %48 = phi ptr [ %call68.i, %if.then66.i ], [ %44, %if.end33.i ], !dbg !1471
  store i32 1, ptr %call63.i, align 8, !dbg !1473
  %49 = load i32, ptr %view_id.i, align 8, !dbg !1475
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %49, i32 -1), !dbg !1476
  %iViewId.i = getelementptr inbounds i8, ptr %call63.i, i64 4, !dbg !1477
  store i32 %spec.select.i, ptr %iViewId.i, align 4, !dbg !1478
  %frame_poc.i = getelementptr inbounds i8, ptr %p, i64 16, !dbg !1479
  %50 = load i32, ptr %frame_poc.i, align 8, !dbg !1479
  %iPOC.i = getelementptr inbounds i8, ptr %call63.i, i64 8, !dbg !1480
  store i32 %50, ptr %iPOC.i, align 8, !dbg !1481
  %cmp87.i = icmp eq ptr %48, null, !dbg !1482
  br i1 %cmp87.i, label %if.then89.i, label %if.end90.i, !dbg !1483

if.then89.i:                                      ; preds = %if.end80.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14, !dbg !1484
  br label %if.end90.i, !dbg !1486

if.end90.i:                                       ; preds = %if.then89.i, %if.end80.i
  %51 = load i32, ptr %view_id.i, align 8, !dbg !1487
  %cmp92.i = icmp sgt i32 %51, -1, !dbg !1489
  br i1 %cmp92.i, label %land.lhs.true94.i, label %if.else151.i, !dbg !1490

land.lhs.true94.i:                                ; preds = %if.end90.i
  %DecodeAllLayers.i = getelementptr inbounds i8, ptr %0, i64 3976, !dbg !1491
  %52 = load i32, ptr %DecodeAllLayers.i, align 8, !dbg !1491
  %cmp95.i = icmp eq i32 %52, 1, !dbg !1492
  br i1 %cmp95.i, label %if.then97.i, label %if.else151.i, !dbg !1493

if.then97.i:                                      ; preds = %land.lhs.true94.i
  %p_out_mvc.i = getelementptr inbounds i8, ptr %p_Vid, i64 851892, !dbg !1494
  %idxprom98.i = sext i32 %call.i to i64, !dbg !1497
  %arrayidx99.i = getelementptr inbounds [1024 x i32], ptr %p_out_mvc.i, i64 0, i64 %idxprom98.i, !dbg !1497
  %53 = load i32, ptr %arrayidx99.i, align 4, !dbg !1497
  %cmp100.i = icmp eq i32 %53, -1, !dbg !1498
  br i1 %cmp100.i, label %land.lhs.true102.i, label %if.end191.i, !dbg !1499

land.lhs.true102.i:                               ; preds = %if.then97.i
  %outfile.i = getelementptr inbounds i8, ptr %0, i64 255, !dbg !1500
  %54 = load i8, ptr %outfile.i, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -34
  %.not892.i = icmp eq i32 %56, 0
  br i1 %.not892.i, label %sub_1.i, label %land.lhs.true102.tail.i

sub_1.i:                                          ; preds = %land.lhs.true102.i
  %57 = getelementptr inbounds i8, ptr %0, i64 256
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -34
  %.not893.i = icmp eq i32 %60, 0
  br i1 %.not893.i, label %sub_2.i, label %land.lhs.true102.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %61 = getelementptr inbounds i8, ptr %0, i64 257
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  br label %land.lhs.true102.tail.i

land.lhs.true102.tail.i:                          ; preds = %sub_2.i, %sub_1.i, %land.lhs.true102.i
  %64 = phi i32 [ %56, %land.lhs.true102.i ], [ %60, %sub_1.i ], [ %63, %sub_2.i ]
  %cmp104.not.i = icmp eq i32 %64, 0, !dbg !1501
  %cmp110.not.i = icmp eq i8 %54, 0
  %or.cond920.i = or i1 %cmp110.not.i, %cmp104.not.i, !dbg !1502
  br i1 %or.cond920.i, label %if.end191.i, label %if.then112.i, !dbg !1502

if.then112.i:                                     ; preds = %land.lhs.true102.tail.i
  %call116.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %chBuf.i, ptr noundef nonnull dereferenceable(1) %outfile.i) #14, !dbg !1503
  %call118.i = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %chBuf.i, i32 noundef 46) #16, !dbg !1505
    #dbg_value(ptr %call118.i, !1294, !DIExpression(), !1335)
  %tobool119.not.i = icmp eq ptr %call118.i, null, !dbg !1506
  br i1 %tobool119.not.i, label %if.end121.i, label %if.then120.i, !dbg !1508

if.then120.i:                                     ; preds = %if.then112.i
  store i8 0, ptr %call118.i, align 1, !dbg !1509
  br label %if.end121.i, !dbg !1510

if.end121.i:                                      ; preds = %if.then120.i, %if.then112.i
  %rhsv.i = load i32, ptr %chBuf.i, align 16, !dbg !1511
  %.not.i = icmp eq i32 %rhsv.i, 7107950, !dbg !1511
  br i1 %.not.i, label %if.else142.i, label %if.then125.i, !dbg !1513

if.then125.i:                                     ; preds = %if.end121.i
  %65 = load i32, ptr %view_id.i, align 8, !dbg !1514
  %call129.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %out_ViewFileName.i, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %chBuf.i, i32 noundef %65) #14, !dbg !1516
  %call131.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %out_ViewFileName.i, i32 noundef 577, i32 noundef 384) #14, !dbg !1517
  store i32 %call131.i, ptr %arrayidx99.i, align 4, !dbg !1519
  %cmp135.i = icmp eq i32 %call131.i, -1, !dbg !1520
  br i1 %cmp135.i, label %if.then137.i, label %if.end191.i, !dbg !1521

if.then137.i:                                     ; preds = %if.then125.i
  %call139.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %out_ViewFileName.i) #14, !dbg !1522
  %66 = load ptr, ptr @stderr, align 8, !dbg !1524
  %call140.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17, !dbg !1525
  call void @exit(i32 noundef 500) #18, !dbg !1526
  unreachable, !dbg !1526

if.else142.i:                                     ; preds = %if.end121.i
  store i32 -1, ptr %arrayidx99.i, align 4, !dbg !1527
  br label %if.end191.i

if.else151.i:                                     ; preds = %land.lhs.true94.i, %if.end90.i
  %p_out_mvc152.i = getelementptr inbounds i8, ptr %p_Vid, i64 851892, !dbg !1529
  %67 = load i32, ptr %p_out_mvc152.i, align 4, !dbg !1532
  %cmp154.i = icmp eq i32 %67, -1, !dbg !1533
  br i1 %cmp154.i, label %land.lhs.true156.i, label %if.end191.i, !dbg !1534

land.lhs.true156.i:                               ; preds = %if.else151.i
  %outfile157.i = getelementptr inbounds i8, ptr %0, i64 255, !dbg !1535
  %68 = load i8, ptr %outfile157.i, align 1
  %.not890.i = icmp eq i8 %68, 34
  br i1 %.not890.i, label %sub_1875.i, label %land.lhs.true156.tail.i

sub_1875.i:                                       ; preds = %land.lhs.true156.i
  %69 = getelementptr inbounds i8, ptr %0, i64 256
  %70 = load i8, ptr %69, align 1
  %.not891.i = icmp eq i8 %70, 34
  br i1 %.not891.i, label %sub_2876.i, label %land.lhs.true156.tail.i

sub_2876.i:                                       ; preds = %sub_1875.i
  %71 = getelementptr inbounds i8, ptr %0, i64 257
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0, !dbg !1536
  br label %land.lhs.true156.tail.i

land.lhs.true156.tail.i:                          ; preds = %sub_2876.i, %sub_1875.i, %land.lhs.true156.i
  %cmp160.not.i = phi i1 [ false, %land.lhs.true156.i ], [ false, %sub_1875.i ], [ %73, %sub_2876.i ]
  %cmp166.not.i = icmp eq i8 %68, 0
  %or.cond921.i = or i1 %cmp166.not.i, %cmp160.not.i, !dbg !1537
  br i1 %or.cond921.i, label %if.end191.i, label %land.lhs.true174.i, !dbg !1537

land.lhs.true174.i:                               ; preds = %land.lhs.true156.tail.i
  %call177.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %outfile157.i, i32 noundef 577, i32 noundef 384) #14, !dbg !1538
  store i32 %call177.i, ptr %p_out_mvc152.i, align 4, !dbg !1541
  %cmp180.i = icmp eq i32 %call177.i, -1, !dbg !1542
  br i1 %cmp180.i, label %if.then182.i, label %if.end191.i, !dbg !1543

if.then182.i:                                     ; preds = %land.lhs.true174.i
  %call185.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.4, ptr noundef nonnull %outfile157.i) #14, !dbg !1544
  %74 = load ptr, ptr @stderr, align 8, !dbg !1546
  %call186.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.5, ptr noundef nonnull @errortext) #17, !dbg !1547
  tail call void @exit(i32 noundef 500) #18, !dbg !1548
  unreachable, !dbg !1548

if.end191.i:                                      ; preds = %land.lhs.true174.i, %land.lhs.true156.tail.i, %if.else151.i, %if.else142.i, %if.then125.i, %land.lhs.true102.tail.i, %if.then97.i
  %p_out.addr.0.i = phi i32 [ %67, %if.else151.i ], [ %call177.i, %land.lhs.true174.i ], [ %53, %if.then97.i ], [ %call131.i, %if.then125.i ], [ -1, %if.else142.i ], [ -1, %land.lhs.true102.tail.i ], [ -1, %land.lhs.true156.tail.i ], !dbg !1549
    #dbg_value(i32 %p_out.addr.0.i, !1289, !DIExpression(), !1335)
  br i1 %cmp.i, label %if.then193.i, label %if.end276.i, !dbg !1550

if.then193.i:                                     ; preds = %if.end191.i
  %75 = load i32, ptr %size_x50.i, align 8, !dbg !1551
  %76 = load i32, ptr %size_y53.i, align 4, !dbg !1554
  %mul196.i = mul i32 %75, %symbol_size_in_bytes.0.i, !dbg !1555
  %mul197.i = mul i32 %mul196.i, %76, !dbg !1556
  %conv198.i = sext i32 %mul197.i to i64, !dbg !1557
  %call199.i = call noalias ptr @malloc(i64 noundef %conv198.i) #15, !dbg !1558
    #dbg_value(ptr %call199.i, !1303, !DIExpression(), !1335)
  %77 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8, !dbg !1559
    #dbg_value(i32 %77, !1297, !DIExpression(), !1335)
  %78 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4, !dbg !1560
    #dbg_value(i32 %78, !1298, !DIExpression(), !1335)
  %79 = load i32, ptr %frame_mbs_only_flag40.i, align 8, !dbg !1561
  %sub203.i = sub nsw i32 2, %79, !dbg !1562
  %80 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8, !dbg !1563
  %mul205.i = mul nsw i32 %sub203.i, %80, !dbg !1564
    #dbg_value(i32 %mul205.i, !1299, !DIExpression(), !1335)
  %81 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4, !dbg !1565
  %mul209.i = mul nsw i32 %81, %sub203.i, !dbg !1566
    #dbg_value(i32 %mul209.i, !1300, !DIExpression(), !1335)
  %82 = load ptr, ptr %42, align 8, !dbg !1567
  %imgUV210.i = getelementptr inbounds i8, ptr %p, i64 136, !dbg !1568
  %83 = load ptr, ptr %imgUV210.i, align 8, !dbg !1568
  %arrayidx211.i = getelementptr inbounds i8, ptr %83, i64 8, !dbg !1569
  %84 = load ptr, ptr %arrayidx211.i, align 8, !dbg !1569
  %85 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1570
  %86 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1571
  %iYBufStride214.i = getelementptr inbounds i8, ptr %call63.i, i64 56, !dbg !1572
  %87 = load i32, ptr %iYBufStride214.i, align 8, !dbg !1572
  call void %82(ptr noundef %84, ptr noundef %call199.i, i32 noundef %85, i32 noundef %86, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %77, i32 noundef %78, i32 noundef %mul205.i, i32 noundef %mul209.i, i32 noundef %87) #14, !dbg !1573
  %cmp215.i = icmp sgt i32 %p_out.addr.0.i, -1, !dbg !1574
  br i1 %cmp215.i, label %if.then217.i, label %if.end241.i, !dbg !1576

if.then217.i:                                     ; preds = %if.then193.i
  %88 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1577
  %89 = add i32 %mul209.i, %mul205.i, !dbg !1579
  %sub220.i = sub i32 %88, %89, !dbg !1579
  %90 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1580
  %91 = add i32 %78, %77, !dbg !1581
  %sub223.i = sub i32 %90, %91, !dbg !1581
  %mul224.i = mul i32 %sub220.i, %symbol_size_in_bytes.0.i, !dbg !1582
  %mul225.i = mul i32 %mul224.i, %sub223.i, !dbg !1583
  %conv226.i = sext i32 %mul225.i to i64, !dbg !1584
  %call227.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call199.i, i64 noundef %conv226.i) #14, !dbg !1585
  %conv228.i = trunc i64 %call227.i to i32, !dbg !1585
    #dbg_value(i32 %conv228.i, !1310, !DIExpression(), !1335)
  %92 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1586
  %sub231.i = sub i32 %92, %89, !dbg !1588
  %93 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1589
  %sub234.i = sub i32 %93, %91, !dbg !1590
  %mul235.i = mul i32 %sub231.i, %symbol_size_in_bytes.0.i, !dbg !1591
  %mul236.i = mul i32 %mul235.i, %sub234.i, !dbg !1592
  %cmp237.not.i = icmp eq i32 %mul236.i, %conv228.i, !dbg !1593
  br i1 %cmp237.not.i, label %if.end241.i, label %if.then239.i, !dbg !1594

if.then239.i:                                     ; preds = %if.then217.i
  call void @error(ptr noundef nonnull @.str.6, i32 noundef 500) #14, !dbg !1595
  br label %if.end241.i, !dbg !1597

if.end241.i:                                      ; preds = %if.then239.i, %if.then217.i, %if.then193.i
  %94 = load i32, ptr %frame_cropping_flag.i, align 4, !dbg !1598
  %tobool243.not.i = icmp eq i32 %94, 0, !dbg !1600
  br i1 %tobool243.not.i, label %if.end272.i, label %if.then244.i, !dbg !1601

if.then244.i:                                     ; preds = %if.end241.i
  %chroma_format_idc245.i = getelementptr inbounds i8, ptr %p, i64 268, !dbg !1602
  %95 = load i32, ptr %chroma_format_idc245.i, align 4, !dbg !1602
  %idxprom246.i = sext i32 %95 to i64, !dbg !1604
  %arrayidx247.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubWidthC, i64 0, i64 %idxprom246.i, !dbg !1604
  %96 = load i32, ptr %arrayidx247.i, align 4, !dbg !1604
  %97 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8, !dbg !1605
  %mul249.i = mul nsw i32 %97, %96, !dbg !1606
    #dbg_value(i32 %mul249.i, !1297, !DIExpression(), !1335)
  %98 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4, !dbg !1607
  %mul254.i = mul nsw i32 %98, %96, !dbg !1608
    #dbg_value(i32 %mul254.i, !1298, !DIExpression(), !1335)
  %arrayidx257.i = getelementptr inbounds [4 x i32], ptr @write_out_picture.SubHeightC, i64 0, i64 %idxprom246.i, !dbg !1609
  %99 = load i32, ptr %arrayidx257.i, align 4, !dbg !1609
  %100 = load i32, ptr %frame_mbs_only_flag40.i, align 8, !dbg !1610
  %sub259.i = sub nsw i32 2, %100, !dbg !1611
  %mul260.i = mul nsw i32 %sub259.i, %99, !dbg !1612
  %101 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8, !dbg !1613
  %mul262.i = mul nsw i32 %mul260.i, %101, !dbg !1614
    #dbg_value(i32 %mul262.i, !1299, !DIExpression(), !1335)
  %102 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4, !dbg !1615
  %mul270.i = mul nsw i32 %mul260.i, %102, !dbg !1616
    #dbg_value(i32 %mul270.i, !1300, !DIExpression(), !1335)
  br label %if.end272.i, !dbg !1617

if.end272.i:                                      ; preds = %if.then244.i, %if.end241.i
  %crop_bottom.1.i = phi i32 [ %mul270.i, %if.then244.i ], [ 0, %if.end241.i ], !dbg !1618
  %crop_top.1.i = phi i32 [ %mul262.i, %if.then244.i ], [ 0, %if.end241.i ], !dbg !1618
  %crop_right.1.i = phi i32 [ %mul254.i, %if.then244.i ], [ 0, %if.end241.i ], !dbg !1618
  %crop_left.1.i = phi i32 [ %mul249.i, %if.then244.i ], [ 0, %if.end241.i ], !dbg !1618
    #dbg_value(i32 %crop_left.1.i, !1297, !DIExpression(), !1335)
    #dbg_value(i32 %crop_right.1.i, !1298, !DIExpression(), !1335)
    #dbg_value(i32 %crop_top.1.i, !1299, !DIExpression(), !1335)
    #dbg_value(i32 %crop_bottom.1.i, !1300, !DIExpression(), !1335)
  %tobool273.not.i = icmp eq ptr %call199.i, null, !dbg !1619
  br i1 %tobool273.not.i, label %if.end276.i, label %if.then274.i, !dbg !1621

if.then274.i:                                     ; preds = %if.end272.i
  call void @free(ptr noundef nonnull %call199.i) #14, !dbg !1622
  br label %if.end276.i, !dbg !1622

if.end276.i:                                      ; preds = %if.then274.i, %if.end272.i, %if.end191.i
  %crop_bottom.2.i = phi i32 [ %crop_bottom.1.i, %if.then274.i ], [ %crop_bottom.1.i, %if.end272.i ], [ %crop_bottom.0.i, %if.end191.i ], !dbg !1335
  %crop_top.2.i = phi i32 [ %crop_top.1.i, %if.then274.i ], [ %crop_top.1.i, %if.end272.i ], [ %crop_top.0.i, %if.end191.i ], !dbg !1335
  %crop_right.2.i = phi i32 [ %crop_right.1.i, %if.then274.i ], [ %crop_right.1.i, %if.end272.i ], [ %crop_right.0.i, %if.end191.i ], !dbg !1335
  %crop_left.2.i = phi i32 [ %crop_left.1.i, %if.then274.i ], [ %crop_left.1.i, %if.end272.i ], [ %crop_left.0.i, %if.end191.i ], !dbg !1335
    #dbg_value(i32 %crop_left.2.i, !1297, !DIExpression(), !1335)
    #dbg_value(i32 %crop_right.2.i, !1298, !DIExpression(), !1335)
    #dbg_value(i32 %crop_top.2.i, !1299, !DIExpression(), !1335)
    #dbg_value(i32 %crop_bottom.2.i, !1300, !DIExpression(), !1335)
  %103 = load i32, ptr %call63.i, align 8, !dbg !1623
  %cmp278.i = icmp eq i32 %103, 1, !dbg !1624
  %104 = load ptr, ptr %pY.i, align 8, !dbg !1625
  %mul284.i = mul nsw i32 %sub52.i, %symbol_size_in_bytes.0.i, !dbg !1626
  %narrow.i = select i1 %cmp278.i, i32 0, i32 %mul284.i, !dbg !1626
  %cond288.idx.i = sext i32 %narrow.i to i64, !dbg !1626
  %cond288.i = getelementptr inbounds i8, ptr %104, i64 %cond288.idx.i, !dbg !1626
    #dbg_value(ptr %cond288.i, !1303, !DIExpression(), !1335)
  %105 = load ptr, ptr %42, align 8, !dbg !1627
  %imgY290.i = getelementptr inbounds i8, ptr %p, i64 128, !dbg !1628
  %106 = load ptr, ptr %imgY290.i, align 8, !dbg !1628
  %107 = load i32, ptr %size_x50.i, align 8, !dbg !1629
  %108 = load i32, ptr %size_y53.i, align 4, !dbg !1630
  %iYBufStride293.i = getelementptr inbounds i8, ptr %call63.i, i64 56, !dbg !1631
  %109 = load i32, ptr %iYBufStride293.i, align 8, !dbg !1631
  call void %105(ptr noundef %106, ptr noundef %cond288.i, i32 noundef %107, i32 noundef %108, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %crop_left.2.i, i32 noundef %crop_right.2.i, i32 noundef %crop_top.2.i, i32 noundef %crop_bottom.2.i, i32 noundef %109) #14, !dbg !1632
  %cmp294.i = icmp sgt i32 %p_out.addr.0.i, -1, !dbg !1633
  br i1 %cmp294.i, label %if.then296.i, label %if.end320.i, !dbg !1635

if.then296.i:                                     ; preds = %if.end276.i
  %110 = load i32, ptr %size_y53.i, align 4, !dbg !1636
  %111 = add i32 %crop_top.2.i, %crop_bottom.2.i, !dbg !1638
  %sub299.i = sub i32 %110, %111, !dbg !1638
  %112 = load i32, ptr %size_x50.i, align 8, !dbg !1639
  %113 = add i32 %crop_left.2.i, %crop_right.2.i, !dbg !1640
  %sub302.i = sub i32 %112, %113, !dbg !1640
  %mul303.i = mul i32 %sub299.i, %symbol_size_in_bytes.0.i, !dbg !1641
  %mul304.i = mul i32 %mul303.i, %sub302.i, !dbg !1642
  %conv305.i = sext i32 %mul304.i to i64, !dbg !1643
  %call306.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond288.i, i64 noundef %conv305.i) #14, !dbg !1644
  %conv307.i = trunc i64 %call306.i to i32, !dbg !1644
    #dbg_value(i32 %conv307.i, !1310, !DIExpression(), !1335)
  %114 = load i32, ptr %size_y53.i, align 4, !dbg !1645
  %sub310.i = sub i32 %114, %111, !dbg !1647
  %115 = load i32, ptr %size_x50.i, align 8, !dbg !1648
  %sub313.i = sub i32 %115, %113, !dbg !1649
  %mul314.i = mul i32 %sub310.i, %symbol_size_in_bytes.0.i, !dbg !1650
  %mul315.i = mul i32 %mul314.i, %sub313.i, !dbg !1651
  %cmp316.not.i = icmp eq i32 %mul315.i, %conv307.i, !dbg !1652
  br i1 %cmp316.not.i, label %if.end320.i, label %if.then318.i, !dbg !1653

if.then318.i:                                     ; preds = %if.then296.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14, !dbg !1654
  br label %if.end320.i, !dbg !1656

if.end320.i:                                      ; preds = %if.then318.i, %if.then296.i, %if.end276.i
  %chroma_format_idc321.i = getelementptr inbounds i8, ptr %p, i64 268, !dbg !1657
  %116 = load i32, ptr %chroma_format_idc321.i, align 4, !dbg !1657
  %cmp322.not.i = icmp eq i32 %116, 0, !dbg !1658
  br i1 %cmp322.not.i, label %if.else428.i, label %if.then324.i, !dbg !1659

if.then324.i:                                     ; preds = %if.end320.i
  %117 = load i32, ptr %frame_cropping_rect_left_offset35.i, align 8, !dbg !1660
    #dbg_value(i32 %117, !1297, !DIExpression(), !1335)
  %118 = load i32, ptr %frame_cropping_rect_right_offset37.i, align 4, !dbg !1662
    #dbg_value(i32 %118, !1298, !DIExpression(), !1335)
  %119 = load i32, ptr %frame_mbs_only_flag40.i, align 8, !dbg !1663
  %sub328.i = sub nsw i32 2, %119, !dbg !1664
  %120 = load i32, ptr %frame_cropping_rect_top_offset42.i, align 8, !dbg !1665
  %mul330.i = mul nsw i32 %sub328.i, %120, !dbg !1666
    #dbg_value(i32 %mul330.i, !1299, !DIExpression(), !1335)
  %121 = load i32, ptr %frame_cropping_rect_bottom_offset47.i, align 4, !dbg !1667
  %mul334.i = mul nsw i32 %121, %sub328.i, !dbg !1668
    #dbg_value(i32 %mul334.i, !1300, !DIExpression(), !1335)
  %122 = load i32, ptr %call63.i, align 8, !dbg !1669
  %cmp336.i = icmp eq i32 %122, 1, !dbg !1670
  %pU339.i = getelementptr inbounds i8, ptr %call63.i, i64 32, !dbg !1671
  %123 = load ptr, ptr %pU339.i, align 8, !dbg !1671
  %mul342.i = mul nsw i32 %sub38.i, %symbol_size_in_bytes.0.i, !dbg !1672
  %narrow922.i = select i1 %cmp336.i, i32 0, i32 %mul342.i, !dbg !1672
  %cond346.idx.i = sext i32 %narrow922.i to i64, !dbg !1672
  %cond346.i = getelementptr inbounds i8, ptr %123, i64 %cond346.idx.i, !dbg !1672
    #dbg_value(ptr %cond346.i, !1303, !DIExpression(), !1335)
  %124 = load ptr, ptr %42, align 8, !dbg !1673
  %imgUV348.i = getelementptr inbounds i8, ptr %p, i64 136, !dbg !1674
  %125 = load ptr, ptr %imgUV348.i, align 8, !dbg !1674
  %126 = load ptr, ptr %125, align 8, !dbg !1675
  %127 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1676
  %128 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1677
  %iUVBufStride352.i = getelementptr inbounds i8, ptr %call63.i, i64 60, !dbg !1678
  %129 = load i32, ptr %iUVBufStride352.i, align 4, !dbg !1678
  call void %124(ptr noundef %126, ptr noundef %cond346.i, i32 noundef %127, i32 noundef %128, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %117, i32 noundef %118, i32 noundef %mul330.i, i32 noundef %mul334.i, i32 noundef %129) #14, !dbg !1679
  br i1 %cmp294.i, label %if.then355.i, label %if.end379.i, !dbg !1680

if.then355.i:                                     ; preds = %if.then324.i
  %130 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1681
  %131 = add i32 %mul334.i, %mul330.i, !dbg !1684
  %sub358.i = sub i32 %130, %131, !dbg !1684
  %132 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1685
  %133 = add i32 %118, %117, !dbg !1686
  %sub361.i = sub i32 %132, %133, !dbg !1686
  %mul362.i = mul i32 %sub358.i, %symbol_size_in_bytes.0.i, !dbg !1687
  %mul363.i = mul i32 %mul362.i, %sub361.i, !dbg !1688
  %conv364.i = sext i32 %mul363.i to i64, !dbg !1689
  %call365.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond346.i, i64 noundef %conv364.i) #14, !dbg !1690
  %conv366.i = trunc i64 %call365.i to i32, !dbg !1690
    #dbg_value(i32 %conv366.i, !1310, !DIExpression(), !1335)
  %134 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1691
  %sub369.i = sub i32 %134, %131, !dbg !1693
  %135 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1694
  %sub372.i = sub i32 %135, %133, !dbg !1695
  %mul373.i = mul i32 %sub369.i, %symbol_size_in_bytes.0.i, !dbg !1696
  %mul374.i = mul i32 %mul373.i, %sub372.i, !dbg !1697
  %cmp375.not.i = icmp eq i32 %mul374.i, %conv366.i, !dbg !1698
  br i1 %cmp375.not.i, label %if.end379.i, label %if.then377.i, !dbg !1699

if.then377.i:                                     ; preds = %if.then355.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14, !dbg !1700
  br label %if.end379.i, !dbg !1702

if.end379.i:                                      ; preds = %if.then377.i, %if.then355.i, %if.then324.i
  br i1 %cmp.i, label %write_out_picture.exit, label %if.then381.i, !dbg !1703

if.then381.i:                                     ; preds = %if.end379.i
  %136 = load i32, ptr %call63.i, align 8, !dbg !1704
  %cmp383.i = icmp eq i32 %136, 1, !dbg !1707
  %pV386.i = getelementptr inbounds i8, ptr %call63.i, i64 40, !dbg !1708
  %137 = load ptr, ptr %pV386.i, align 8, !dbg !1708
  %narrow923.i = select i1 %cmp383.i, i32 0, i32 %mul342.i, !dbg !1709
  %cond393.idx.i = sext i32 %narrow923.i to i64, !dbg !1709
  %cond393.i = getelementptr inbounds i8, ptr %137, i64 %cond393.idx.i, !dbg !1709
    #dbg_value(ptr %cond393.i, !1303, !DIExpression(), !1335)
  %138 = load ptr, ptr %42, align 8, !dbg !1710
  %139 = load ptr, ptr %imgUV348.i, align 8, !dbg !1711
  %arrayidx396.i = getelementptr inbounds i8, ptr %139, i64 8, !dbg !1712
  %140 = load ptr, ptr %arrayidx396.i, align 8, !dbg !1712
  %141 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1713
  %142 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1714
  %143 = load i32, ptr %iUVBufStride352.i, align 4, !dbg !1715
  call void %138(ptr noundef %140, ptr noundef %cond393.i, i32 noundef %141, i32 noundef %142, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %117, i32 noundef %118, i32 noundef %mul330.i, i32 noundef %mul334.i, i32 noundef %143) #14, !dbg !1716
  br i1 %cmp294.i, label %if.then402.i, label %write_out_picture.exit, !dbg !1717

if.then402.i:                                     ; preds = %if.then381.i
  %144 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1718
  %145 = add i32 %mul334.i, %mul330.i, !dbg !1721
  %sub405.i = sub i32 %144, %145, !dbg !1721
  %146 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1722
  %147 = add i32 %118, %117, !dbg !1723
  %sub408.i = sub i32 %146, %147, !dbg !1723
  %mul409.i = mul i32 %sub405.i, %symbol_size_in_bytes.0.i, !dbg !1724
  %mul410.i = mul i32 %mul409.i, %sub408.i, !dbg !1725
  %conv411.i = sext i32 %mul410.i to i64, !dbg !1726
  %call412.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %cond393.i, i64 noundef %conv411.i) #14, !dbg !1727
  %conv413.i = trunc i64 %call412.i to i32, !dbg !1727
    #dbg_value(i32 %conv413.i, !1310, !DIExpression(), !1335)
  %148 = load i32, ptr %size_y_cr39.i, align 4, !dbg !1728
  %sub416.i = sub i32 %148, %145, !dbg !1730
  %149 = load i32, ptr %size_x_cr34.i, align 8, !dbg !1731
  %sub419.i = sub i32 %149, %147, !dbg !1732
  %mul420.i = mul i32 %sub416.i, %symbol_size_in_bytes.0.i, !dbg !1733
  %mul421.i = mul i32 %mul420.i, %sub419.i, !dbg !1734
  %cmp422.not.i = icmp eq i32 %mul421.i, %conv413.i, !dbg !1735
  br i1 %cmp422.not.i, label %write_out_picture.exit, label %if.then424.i, !dbg !1736

if.then424.i:                                     ; preds = %if.then402.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14, !dbg !1737
  br label %write_out_picture.exit, !dbg !1739

if.else428.i:                                     ; preds = %if.end320.i
  %write_uv.i = getelementptr inbounds i8, ptr %0, i64 780, !dbg !1740
  %150 = load i32, ptr %write_uv.i, align 4, !dbg !1740
  %tobool429.not.i = icmp eq i32 %150, 0, !dbg !1741
  br i1 %tobool429.not.i, label %write_out_picture.exit, label %if.then430.i, !dbg !1742

if.then430.i:                                     ; preds = %if.else428.i
  %bitdepth_luma.i = getelementptr inbounds i8, ptr %p_Vid, i64 849040, !dbg !1743
  %151 = load i16, ptr %bitdepth_luma.i, align 8, !dbg !1743
  %conv431.i = sext i16 %151 to i32, !dbg !1744
  %sub432.i = add nsw i32 %conv431.i, -1, !dbg !1745
  %shl.i = shl nuw i32 1, %sub432.i, !dbg !1746
  %conv433.i = trunc i32 %shl.i to i16, !dbg !1747
    #dbg_value(i16 %conv433.i, !1317, !DIExpression(), !1748)
  %imgUV434.i = getelementptr inbounds i8, ptr %p, i64 136, !dbg !1749
  %152 = load i32, ptr %size_y53.i, align 4, !dbg !1750
  %div.i = sdiv i32 %152, 2, !dbg !1751
  %153 = load i32, ptr %size_x50.i, align 8, !dbg !1752
  %div437.i = sdiv i32 %153, 2, !dbg !1753
  %call438.i = call i32 @get_mem3Dpel(ptr noundef nonnull %imgUV434.i, i32 noundef 1, i32 noundef %div.i, i32 noundef %div437.i) #14, !dbg !1754
    #dbg_value(i32 0, !1316, !DIExpression(), !1748)
  %154 = load i32, ptr %size_y53.i, align 4, !dbg !1755
  %div440886.i = sdiv i32 %154, 2, !dbg !1758
  %cmp441887.i = icmp sgt i32 %154, 1, !dbg !1759
  %.pre907.i = load i32, ptr %size_x50.i, align 8, !dbg !1760
  br i1 %cmp441887.i, label %for.cond443.preheader.i, label %for.end457.i, !dbg !1761

for.cond443.preheader.i:                          ; preds = %if.then430.i, %for.inc455.i
  %155 = phi i32 [ %162, %for.inc455.i ], [ %154, %if.then430.i ]
  %156 = phi i32 [ %163, %for.inc455.i ], [ %.pre907.i, %if.then430.i ], !dbg !1762
  %indvars.iv897.i = phi i64 [ %indvars.iv.next898.i, %for.inc455.i ], [ 0, %if.then430.i ]
    #dbg_value(i64 %indvars.iv897.i, !1316, !DIExpression(), !1748)
    #dbg_value(i32 0, !1311, !DIExpression(), !1748)
  %cmp446884.i = icmp sgt i32 %156, 1, !dbg !1766
  br i1 %cmp446884.i, label %for.body448.i, label %for.inc455.i, !dbg !1767

for.body448.i:                                    ; preds = %for.cond443.preheader.i, %for.body448.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body448.i ], [ 0, %for.cond443.preheader.i ]
    #dbg_value(i64 %indvars.iv.i, !1311, !DIExpression(), !1748)
  %157 = load ptr, ptr %imgUV434.i, align 8, !dbg !1768
  %158 = load ptr, ptr %157, align 8, !dbg !1770
  %arrayidx452.i = getelementptr inbounds ptr, ptr %158, i64 %indvars.iv897.i, !dbg !1770
  %159 = load ptr, ptr %arrayidx452.i, align 8, !dbg !1770
  %arrayidx454.i = getelementptr inbounds i16, ptr %159, i64 %indvars.iv.i, !dbg !1770
  store i16 %conv433.i, ptr %arrayidx454.i, align 2, !dbg !1771
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1772
    #dbg_value(i64 %indvars.iv.next.i, !1311, !DIExpression(), !1748)
  %160 = load i32, ptr %size_x50.i, align 8, !dbg !1762
  %div445.i = sdiv i32 %160, 2, !dbg !1773
  %161 = sext i32 %div445.i to i64, !dbg !1766
  %cmp446.i = icmp slt i64 %indvars.iv.next.i, %161, !dbg !1766
  br i1 %cmp446.i, label %for.body448.i, label %for.inc455.loopexit.i, !dbg !1767, !llvm.loop !1774

for.inc455.loopexit.i:                            ; preds = %for.body448.i
  %.pre906.i = load i32, ptr %size_y53.i, align 4, !dbg !1755
  br label %for.inc455.i, !dbg !1776

for.inc455.i:                                     ; preds = %for.inc455.loopexit.i, %for.cond443.preheader.i
  %162 = phi i32 [ %.pre906.i, %for.inc455.loopexit.i ], [ %155, %for.cond443.preheader.i ], !dbg !1755
  %163 = phi i32 [ %160, %for.inc455.loopexit.i ], [ %156, %for.cond443.preheader.i ]
  %indvars.iv.next898.i = add nuw nsw i64 %indvars.iv897.i, 1, !dbg !1776
    #dbg_value(i64 %indvars.iv.next898.i, !1316, !DIExpression(), !1748)
  %div440.i = sdiv i32 %162, 2, !dbg !1758
  %164 = sext i32 %div440.i to i64, !dbg !1759
  %cmp441.i = icmp slt i64 %indvars.iv.next898.i, %164, !dbg !1759
  br i1 %cmp441.i, label %for.cond443.preheader.i, label %for.end457.i, !dbg !1761, !llvm.loop !1777

for.end457.i:                                     ; preds = %for.inc455.i, %if.then430.i
  %165 = phi i32 [ %.pre907.i, %if.then430.i ], [ %163, %for.inc455.i ], !dbg !1760
  %.lcssa.i = phi i32 [ %154, %if.then430.i ], [ %162, %for.inc455.i ], !dbg !1755
  %div440.lcssa.i = phi i32 [ %div440886.i, %if.then430.i ], [ %div440.i, %for.inc455.i ], !dbg !1758
  %mul460.i = mul i32 %165, %symbol_size_in_bytes.0.i, !dbg !1779
  %mul461.i = mul i32 %mul460.i, %.lcssa.i, !dbg !1780
  %conv462.i = sext i32 %mul461.i to i64, !dbg !1781
  %call463.i = call noalias ptr @malloc(i64 noundef %conv462.i) #15, !dbg !1782
    #dbg_value(ptr %call463.i, !1303, !DIExpression(), !1335)
  %166 = load ptr, ptr %42, align 8, !dbg !1783
  %167 = load ptr, ptr %imgUV434.i, align 8, !dbg !1784
  %168 = load ptr, ptr %167, align 8, !dbg !1785
  %div468.i = sdiv i32 %165, 2, !dbg !1786
  %div471.i = sdiv i32 %crop_left.2.i, 2, !dbg !1787
  %div472.i = sdiv i32 %crop_right.2.i, 2, !dbg !1788
  %div473.i = sdiv i32 %crop_top.2.i, 2, !dbg !1789
  %div474.i = sdiv i32 %crop_bottom.2.i, 2, !dbg !1790
  %169 = load i32, ptr %iYBufStride293.i, align 8, !dbg !1791
  %div476.i = sdiv i32 %169, 2, !dbg !1792
  call void %166(ptr noundef %168, ptr noundef %call463.i, i32 noundef %div468.i, i32 noundef %div440.lcssa.i, i32 noundef %symbol_size_in_bytes.0.i, i32 noundef %div471.i, i32 noundef %div472.i, i32 noundef %div473.i, i32 noundef %div474.i, i32 noundef %div476.i) #14, !dbg !1793
  %170 = load i32, ptr %size_y53.i, align 4, !dbg !1794
  %171 = add i32 %crop_top.2.i, %crop_bottom.2.i, !dbg !1795
  %sub479.i = sub i32 %170, %171, !dbg !1795
  %mul480.i = mul nsw i32 %sub479.i, %symbol_size_in_bytes.0.i, !dbg !1796
  %div481.i = sdiv i32 %mul480.i, 2, !dbg !1797
  %172 = load i32, ptr %size_x50.i, align 8, !dbg !1798
  %173 = add i32 %crop_left.2.i, %crop_right.2.i, !dbg !1799
  %sub484.i = sub i32 %172, %173, !dbg !1799
  %mul485.i = mul nsw i32 %div481.i, %sub484.i, !dbg !1800
  %div486.i = sdiv i32 %mul485.i, 2, !dbg !1801
  %conv487.i = sext i32 %div486.i to i64, !dbg !1802
  %call488.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call463.i, i64 noundef %conv487.i) #14, !dbg !1803
  %conv489.i = trunc i64 %call488.i to i32, !dbg !1803
    #dbg_value(i32 %conv489.i, !1310, !DIExpression(), !1335)
  %174 = load i32, ptr %size_y53.i, align 4, !dbg !1804
  %sub492.i = sub i32 %174, %171, !dbg !1806
  %mul493.i = mul nsw i32 %sub492.i, %symbol_size_in_bytes.0.i, !dbg !1807
  %div494.i = sdiv i32 %mul493.i, 2, !dbg !1808
  %175 = load i32, ptr %size_x50.i, align 8, !dbg !1809
  %sub497.i = sub i32 %175, %173, !dbg !1810
  %mul498.i = mul nsw i32 %div494.i, %sub497.i, !dbg !1811
  %div499.i = sdiv i32 %mul498.i, 2, !dbg !1812
  %cmp500.not.i = icmp eq i32 %div499.i, %conv489.i, !dbg !1813
  br i1 %cmp500.not.i, label %if.end503.i, label %if.then502.i, !dbg !1814

if.then502.i:                                     ; preds = %for.end457.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14, !dbg !1815
  %.pre908.i = load i32, ptr %size_y53.i, align 4, !dbg !1817
  %.pre909.i = load i32, ptr %size_x50.i, align 8, !dbg !1818
  %.pre910.i = sub i32 %.pre908.i, %171, !dbg !1819
  %.pre911.i = mul nsw i32 %.pre910.i, %symbol_size_in_bytes.0.i, !dbg !1820
  %.pre912.i = sdiv i32 %.pre911.i, 2, !dbg !1821
  %.pre913.i = sub i32 %.pre909.i, %173, !dbg !1822
  %.pre914.i = mul nsw i32 %.pre912.i, %.pre913.i, !dbg !1823
  %.pre915.i = sdiv i32 %.pre914.i, 2, !dbg !1824
  br label %if.end503.i, !dbg !1825

if.end503.i:                                      ; preds = %if.then502.i, %for.end457.i
  %div513.pre-phi.i = phi i32 [ %.pre915.i, %if.then502.i ], [ %conv489.i, %for.end457.i ], !dbg !1824
  %conv514.i = sext i32 %div513.pre-phi.i to i64, !dbg !1826
  %call515.i = call i64 @write(i32 noundef %p_out.addr.0.i, ptr noundef %call463.i, i64 noundef %conv514.i) #14, !dbg !1827
  %conv516.i = trunc i64 %call515.i to i32, !dbg !1827
    #dbg_value(i32 %conv516.i, !1310, !DIExpression(), !1335)
  %176 = load i32, ptr %size_y53.i, align 4, !dbg !1828
  %sub519.i = sub i32 %176, %171, !dbg !1830
  %mul520.i = mul nsw i32 %sub519.i, %symbol_size_in_bytes.0.i, !dbg !1831
  %div521.i = sdiv i32 %mul520.i, 2, !dbg !1832
  %177 = load i32, ptr %size_x50.i, align 8, !dbg !1833
  %sub524.i = sub i32 %177, %173, !dbg !1834
  %mul525.i = mul nsw i32 %div521.i, %sub524.i, !dbg !1835
  %div526.i = sdiv i32 %mul525.i, 2, !dbg !1836
  %cmp527.not.i = icmp eq i32 %div526.i, %conv516.i, !dbg !1837
  br i1 %cmp527.not.i, label %if.end530.i, label %if.then529.i, !dbg !1838

if.then529.i:                                     ; preds = %if.end503.i
  call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14, !dbg !1839
  br label %if.end530.i, !dbg !1841

if.end530.i:                                      ; preds = %if.then529.i, %if.end503.i
  call void @free(ptr noundef %call463.i) #14, !dbg !1842
  %178 = load ptr, ptr %imgUV434.i, align 8, !dbg !1843
  call void @free_mem3Dpel(ptr noundef %178) #14, !dbg !1844
  store ptr null, ptr %imgUV434.i, align 8, !dbg !1845
  br label %write_out_picture.exit, !dbg !1846

write_out_picture.exit:                           ; preds = %entry, %if.end379.i, %if.then381.i, %if.then402.i, %if.then424.i, %if.else428.i, %if.end530.i
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %chBuf.i) #14, !dbg !1847
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %out_ViewFileName.i) #14, !dbg !1847
  ret void, !dbg !1848
}

; Function Attrs: nounwind uwtable
define dso_local void @init_out_buffer(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 !dbg !1849 {
entry:
    #dbg_value(ptr %p_Vid, !1853, !DIExpression(), !1854)
  %call = tail call ptr @alloc_frame_store() #14, !dbg !1855
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !1856
  store ptr %call, ptr %out_buffer, align 8, !dbg !1857
  ret void, !dbg !1858
}

declare !dbg !1859 ptr @alloc_frame_store() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uninit_out_buffer(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 !dbg !1862 {
entry:
    #dbg_value(ptr %p_Vid, !1864, !DIExpression(), !1865)
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !1866
  %0 = load ptr, ptr %out_buffer, align 8, !dbg !1866
  tail call void @free_frame_store(ptr noundef %0) #14, !dbg !1867
  store ptr null, ptr %out_buffer, align 8, !dbg !1868
  ret void, !dbg !1869
}

declare !dbg !1870 void @free_frame_store(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_picture(ptr nocapture noundef readonly %p_Vid, ptr nocapture noundef readonly %p) local_unnamed_addr #2 !dbg !1873 {
entry:
    #dbg_value(ptr %p_Vid, !1877, !DIExpression(), !1881)
    #dbg_value(ptr %p, !1878, !DIExpression(), !1881)
    #dbg_value(i32 0, !1879, !DIExpression(), !1881)
  %size_y = getelementptr inbounds i8, ptr %p, i64 68
    #dbg_value(i32 0, !1879, !DIExpression(), !1881)
  %0 = load i32, ptr %size_y, align 4, !dbg !1882
  %cmp85 = icmp sgt i32 %0, 0, !dbg !1885
  br i1 %cmp85, label %for.cond1.preheader.lr.ph, label %for.cond10.preheader, !dbg !1886

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %size_x = getelementptr inbounds i8, ptr %p, i64 64
  %dc_pred_value_comp = getelementptr inbounds i8, ptr %p_Vid, i64 849060
  %imgY = getelementptr inbounds i8, ptr %p, i64 128
  %1 = load i32, ptr %size_x, align 8, !dbg !1887
  %2 = icmp sgt i32 %1, 0, !dbg !1891
  br i1 %2, label %for.cond1.preheader, label %for.cond10.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc7
  %3 = phi i32 [ %13, %for.inc7 ], [ %0, %for.cond1.preheader.lr.ph ]
  %4 = phi i32 [ %14, %for.inc7 ], [ %1, %for.cond1.preheader.lr.ph ], !dbg !1887
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc7 ], [ 0, %for.cond1.preheader.lr.ph ]
    #dbg_value(i64 %indvars.iv99, !1879, !DIExpression(), !1881)
    #dbg_value(i32 0, !1880, !DIExpression(), !1881)
  %cmp283 = icmp sgt i32 %4, 0, !dbg !1891
  br i1 %cmp283, label %for.body3, label %for.inc7, !dbg !1892

for.cond10.preheader:                             ; preds = %for.inc7, %for.cond1.preheader.lr.ph, %entry
  %size_y_cr = getelementptr inbounds i8, ptr %p, i64 76
    #dbg_value(i32 0, !1879, !DIExpression(), !1881)
  %5 = load i32, ptr %size_y_cr, align 4, !dbg !1893
  %cmp1189 = icmp sgt i32 %5, 0, !dbg !1896
  br i1 %cmp1189, label %for.cond14.preheader.lr.ph, label %for.end56, !dbg !1897

for.cond14.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %size_x_cr = getelementptr inbounds i8, ptr %p, i64 72
  %arrayidx19 = getelementptr inbounds i8, ptr %p_Vid, i64 849064
  %imgUV = getelementptr inbounds i8, ptr %p, i64 136
  %6 = load i32, ptr %size_x_cr, align 8, !dbg !1898
  %7 = icmp sgt i32 %6, 0, !dbg !1902
  br i1 %7, label %for.cond14.preheader, label %for.cond37.preheader.lr.ph

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
    #dbg_value(i64 %indvars.iv, !1880, !DIExpression(), !1881)
  %8 = load i32, ptr %dc_pred_value_comp, align 4, !dbg !1903
  %conv = trunc i32 %8 to i16, !dbg !1904
  %9 = load ptr, ptr %imgY, align 8, !dbg !1905
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %indvars.iv99, !dbg !1906
  %10 = load ptr, ptr %arrayidx4, align 8, !dbg !1906
  %arrayidx6 = getelementptr inbounds i16, ptr %10, i64 %indvars.iv, !dbg !1906
  store i16 %conv, ptr %arrayidx6, align 2, !dbg !1907
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1908
    #dbg_value(i64 %indvars.iv.next, !1880, !DIExpression(), !1881)
  %11 = load i32, ptr %size_x, align 8, !dbg !1887
  %12 = sext i32 %11 to i64, !dbg !1891
  %cmp2 = icmp slt i64 %indvars.iv.next, %12, !dbg !1891
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !dbg !1892, !llvm.loop !1909

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %size_y, align 4, !dbg !1882
  br label %for.inc7, !dbg !1911

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %13 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ], !dbg !1882
  %14 = phi i32 [ %11, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1, !dbg !1911
    #dbg_value(i64 %indvars.iv.next100, !1879, !DIExpression(), !1881)
  %15 = sext i32 %13 to i64, !dbg !1885
  %cmp = icmp slt i64 %indvars.iv.next100, %15, !dbg !1885
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !dbg !1886, !llvm.loop !1912

for.cond14.preheader:                             ; preds = %for.cond14.preheader.lr.ph, %for.inc29
  %16 = phi i32 [ %27, %for.inc29 ], [ %5, %for.cond14.preheader.lr.ph ]
  %17 = phi i32 [ %28, %for.inc29 ], [ %6, %for.cond14.preheader.lr.ph ], !dbg !1898
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc29 ], [ 0, %for.cond14.preheader.lr.ph ]
    #dbg_value(i64 %indvars.iv105, !1879, !DIExpression(), !1881)
    #dbg_value(i32 0, !1880, !DIExpression(), !1881)
  %cmp1587 = icmp sgt i32 %17, 0, !dbg !1902
  br i1 %cmp1587, label %for.body17, label %for.inc29, !dbg !1915

for.cond32.preheader:                             ; preds = %for.inc29
    #dbg_value(i32 0, !1879, !DIExpression(), !1881)
  %cmp3493 = icmp sgt i32 %27, 0, !dbg !1916
  br i1 %cmp3493, label %for.cond37.preheader.lr.ph, label %for.end56, !dbg !1919

for.cond37.preheader.lr.ph:                       ; preds = %for.cond14.preheader.lr.ph, %for.cond32.preheader
  %18 = phi i32 [ %27, %for.cond32.preheader ], [ %5, %for.cond14.preheader.lr.ph ]
  %size_x_cr38 = getelementptr inbounds i8, ptr %p, i64 72
  %arrayidx43 = getelementptr inbounds i8, ptr %p_Vid, i64 849068
  %imgUV45 = getelementptr inbounds i8, ptr %p, i64 136
  %19 = load i32, ptr %size_x_cr38, align 8, !dbg !1920
  %20 = icmp sgt i32 %19, 0, !dbg !1924
  br i1 %20, label %for.cond37.preheader, label %for.end56

for.body17:                                       ; preds = %for.cond14.preheader, %for.body17
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body17 ], [ 0, %for.cond14.preheader ]
    #dbg_value(i64 %indvars.iv102, !1880, !DIExpression(), !1881)
  %21 = load i32, ptr %arrayidx19, align 4, !dbg !1925
  %conv20 = trunc i32 %21 to i16, !dbg !1926
  %22 = load ptr, ptr %imgUV, align 8, !dbg !1927
  %23 = load ptr, ptr %22, align 8, !dbg !1928
  %arrayidx23 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv105, !dbg !1928
  %24 = load ptr, ptr %arrayidx23, align 8, !dbg !1928
  %arrayidx25 = getelementptr inbounds i16, ptr %24, i64 %indvars.iv102, !dbg !1928
  store i16 %conv20, ptr %arrayidx25, align 2, !dbg !1929
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1, !dbg !1930
    #dbg_value(i64 %indvars.iv.next103, !1880, !DIExpression(), !1881)
  %25 = load i32, ptr %size_x_cr, align 8, !dbg !1898
  %26 = sext i32 %25 to i64, !dbg !1902
  %cmp15 = icmp slt i64 %indvars.iv.next103, %26, !dbg !1902
  br i1 %cmp15, label %for.body17, label %for.inc29.loopexit, !dbg !1915, !llvm.loop !1931

for.inc29.loopexit:                               ; preds = %for.body17
  %.pre114 = load i32, ptr %size_y_cr, align 4, !dbg !1893
  br label %for.inc29, !dbg !1933

for.inc29:                                        ; preds = %for.inc29.loopexit, %for.cond14.preheader
  %27 = phi i32 [ %.pre114, %for.inc29.loopexit ], [ %16, %for.cond14.preheader ], !dbg !1893
  %28 = phi i32 [ %25, %for.inc29.loopexit ], [ %17, %for.cond14.preheader ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1, !dbg !1933
    #dbg_value(i64 %indvars.iv.next106, !1879, !DIExpression(), !1881)
  %29 = sext i32 %27 to i64, !dbg !1896
  %cmp11 = icmp slt i64 %indvars.iv.next106, %29, !dbg !1896
  br i1 %cmp11, label %for.cond14.preheader, label %for.cond32.preheader, !dbg !1897, !llvm.loop !1934

for.cond37.preheader:                             ; preds = %for.cond37.preheader.lr.ph, %for.inc54
  %30 = phi i32 [ %38, %for.inc54 ], [ %18, %for.cond37.preheader.lr.ph ]
  %31 = phi i32 [ %39, %for.inc54 ], [ %19, %for.cond37.preheader.lr.ph ], !dbg !1920
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc54 ], [ 0, %for.cond37.preheader.lr.ph ]
    #dbg_value(i64 %indvars.iv111, !1879, !DIExpression(), !1881)
    #dbg_value(i32 0, !1880, !DIExpression(), !1881)
  %cmp3991 = icmp sgt i32 %31, 0, !dbg !1924
  br i1 %cmp3991, label %for.body41, label %for.inc54, !dbg !1936

for.body41:                                       ; preds = %for.cond37.preheader, %for.body41
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body41 ], [ 0, %for.cond37.preheader ]
    #dbg_value(i64 %indvars.iv108, !1880, !DIExpression(), !1881)
  %32 = load i32, ptr %arrayidx43, align 4, !dbg !1937
  %conv44 = trunc i32 %32 to i16, !dbg !1938
  %33 = load ptr, ptr %imgUV45, align 8, !dbg !1939
  %arrayidx46 = getelementptr inbounds i8, ptr %33, i64 8, !dbg !1940
  %34 = load ptr, ptr %arrayidx46, align 8, !dbg !1940
  %arrayidx48 = getelementptr inbounds ptr, ptr %34, i64 %indvars.iv111, !dbg !1940
  %35 = load ptr, ptr %arrayidx48, align 8, !dbg !1940
  %arrayidx50 = getelementptr inbounds i16, ptr %35, i64 %indvars.iv108, !dbg !1940
  store i16 %conv44, ptr %arrayidx50, align 2, !dbg !1941
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1, !dbg !1942
    #dbg_value(i64 %indvars.iv.next109, !1880, !DIExpression(), !1881)
  %36 = load i32, ptr %size_x_cr38, align 8, !dbg !1920
  %37 = sext i32 %36 to i64, !dbg !1924
  %cmp39 = icmp slt i64 %indvars.iv.next109, %37, !dbg !1924
  br i1 %cmp39, label %for.body41, label %for.inc54.loopexit, !dbg !1936, !llvm.loop !1943

for.inc54.loopexit:                               ; preds = %for.body41
  %.pre115 = load i32, ptr %size_y_cr, align 4, !dbg !1945
  br label %for.inc54, !dbg !1946

for.inc54:                                        ; preds = %for.inc54.loopexit, %for.cond37.preheader
  %38 = phi i32 [ %.pre115, %for.inc54.loopexit ], [ %30, %for.cond37.preheader ], !dbg !1945
  %39 = phi i32 [ %36, %for.inc54.loopexit ], [ %31, %for.cond37.preheader ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1, !dbg !1946
    #dbg_value(i64 %indvars.iv.next112, !1879, !DIExpression(), !1881)
  %40 = sext i32 %38 to i64, !dbg !1916
  %cmp34 = icmp slt i64 %indvars.iv.next112, %40, !dbg !1916
  br i1 %cmp34, label %for.cond37.preheader, label %for.end56, !dbg !1919, !llvm.loop !1947

for.end56:                                        ; preds = %for.inc54, %for.cond10.preheader, %for.cond37.preheader.lr.ph, %for.cond32.preheader
  ret void, !dbg !1949
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %fs, i32 %p_out) local_unnamed_addr #0 !dbg !1950 {
entry:
    #dbg_value(ptr %p_Vid, !1954, !DIExpression(), !1958)
    #dbg_value(ptr %fs, !1955, !DIExpression(), !1958)
    #dbg_value(i32 poison, !1956, !DIExpression(), !1958)
  %0 = load i32, ptr %fs, align 8, !dbg !1959
  %and = and i32 %0, 1, !dbg !1961
  %tobool.not = icmp eq i32 %and, 0, !dbg !1961
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1962

if.then:                                          ; preds = %entry
  %top_field = getelementptr inbounds i8, ptr %fs, i64 56, !dbg !1963
  %1 = load ptr, ptr %top_field, align 8, !dbg !1963
    #dbg_value(ptr %1, !1957, !DIExpression(), !1958)
  %size_x = getelementptr inbounds i8, ptr %1, i64 64, !dbg !1965
  %2 = load i32, ptr %size_x, align 8, !dbg !1965
  %size_y = getelementptr inbounds i8, ptr %1, i64 68, !dbg !1966
  %3 = load i32, ptr %size_y, align 4, !dbg !1966
  %mul = shl nsw i32 %3, 1, !dbg !1967
  %size_x_cr = getelementptr inbounds i8, ptr %1, i64 72, !dbg !1968
  %4 = load i32, ptr %size_x_cr, align 8, !dbg !1968
  %size_y_cr = getelementptr inbounds i8, ptr %1, i64 76, !dbg !1969
  %5 = load i32, ptr %size_y_cr, align 4, !dbg !1969
  %mul1 = shl nsw i32 %5, 1, !dbg !1970
  %call = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 2, i32 noundef %2, i32 noundef %mul, i32 noundef %4, i32 noundef %mul1) #14, !dbg !1971
  %bottom_field = getelementptr inbounds i8, ptr %fs, i64 64, !dbg !1972
  store ptr %call, ptr %bottom_field, align 8, !dbg !1973
  %chroma_format_idc = getelementptr inbounds i8, ptr %1, i64 268, !dbg !1974
  %6 = load i32, ptr %chroma_format_idc, align 4, !dbg !1974
  %chroma_format_idc3 = getelementptr inbounds i8, ptr %call, i64 268, !dbg !1975
  store i32 %6, ptr %chroma_format_idc3, align 4, !dbg !1976
  %7 = load ptr, ptr %bottom_field, align 8, !dbg !1977
  tail call void @clear_picture(ptr noundef %p_Vid, ptr noundef %7), !dbg !1978
  tail call void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr noundef nonnull %fs) #14, !dbg !1979
  %view_id = getelementptr inbounds i8, ptr %fs, i64 72, !dbg !1980
  %8 = load i32, ptr %view_id, align 8, !dbg !1980
  %frame = getelementptr inbounds i8, ptr %fs, i64 48, !dbg !1981
  %9 = load ptr, ptr %frame, align 8, !dbg !1981
  %view_id5 = getelementptr inbounds i8, ptr %9, i64 344, !dbg !1982
  store i32 %8, ptr %view_id5, align 8, !dbg !1983
  %10 = load ptr, ptr %frame, align 8, !dbg !1984
  tail call void @write_picture(ptr noundef %p_Vid, ptr noundef %10, i32 poison, i32 poison), !dbg !1985
  %.pre = load i32, ptr %fs, align 8, !dbg !1986
  br label %if.end, !dbg !1988

if.end:                                           ; preds = %if.then, %entry
  %11 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !1986
  %and8 = and i32 %11, 2, !dbg !1989
  %tobool9.not = icmp eq i32 %and8, 0, !dbg !1989
  br i1 %tobool9.not, label %if.end48, label %if.then10, !dbg !1990

if.then10:                                        ; preds = %if.end
  %bottom_field11 = getelementptr inbounds i8, ptr %fs, i64 64, !dbg !1991
  %12 = load ptr, ptr %bottom_field11, align 8, !dbg !1991
    #dbg_value(ptr %12, !1957, !DIExpression(), !1958)
  %size_x12 = getelementptr inbounds i8, ptr %12, i64 64, !dbg !1993
  %13 = load i32, ptr %size_x12, align 8, !dbg !1993
  %size_y13 = getelementptr inbounds i8, ptr %12, i64 68, !dbg !1994
  %14 = load i32, ptr %size_y13, align 4, !dbg !1994
  %mul14 = shl nsw i32 %14, 1, !dbg !1995
  %size_x_cr15 = getelementptr inbounds i8, ptr %12, i64 72, !dbg !1996
  %15 = load i32, ptr %size_x_cr15, align 8, !dbg !1996
  %size_y_cr16 = getelementptr inbounds i8, ptr %12, i64 76, !dbg !1997
  %16 = load i32, ptr %size_y_cr16, align 4, !dbg !1997
  %mul17 = shl nsw i32 %16, 1, !dbg !1998
  %call18 = tail call ptr @alloc_storable_picture(ptr noundef %p_Vid, i32 noundef 1, i32 noundef %13, i32 noundef %mul14, i32 noundef %15, i32 noundef %mul17) #14, !dbg !1999
  %top_field19 = getelementptr inbounds i8, ptr %fs, i64 56, !dbg !2000
  store ptr %call18, ptr %top_field19, align 8, !dbg !2001
  %chroma_format_idc20 = getelementptr inbounds i8, ptr %12, i64 268, !dbg !2002
  %17 = load i32, ptr %chroma_format_idc20, align 4, !dbg !2002
  %chroma_format_idc22 = getelementptr inbounds i8, ptr %call18, i64 268, !dbg !2003
  store i32 %17, ptr %chroma_format_idc22, align 4, !dbg !2004
  %18 = load ptr, ptr %top_field19, align 8, !dbg !2005
  tail call void @clear_picture(ptr noundef %p_Vid, ptr noundef %18), !dbg !2006
  %19 = load ptr, ptr %bottom_field11, align 8, !dbg !2007
  %frame_cropping_flag = getelementptr inbounds i8, ptr %19, i64 276, !dbg !2008
  %20 = load i32, ptr %frame_cropping_flag, align 4, !dbg !2008
  %21 = load ptr, ptr %top_field19, align 8, !dbg !2009
  %frame_cropping_flag26 = getelementptr inbounds i8, ptr %21, i64 276, !dbg !2010
  store i32 %20, ptr %frame_cropping_flag26, align 4, !dbg !2011
  %22 = load ptr, ptr %top_field19, align 8, !dbg !2012
  %frame_cropping_flag28 = getelementptr inbounds i8, ptr %22, i64 276, !dbg !2014
  %23 = load i32, ptr %frame_cropping_flag28, align 4, !dbg !2014
  %tobool29.not = icmp eq i32 %23, 0, !dbg !2015
  br i1 %tobool29.not, label %if.end43, label %if.then30, !dbg !2016

if.then30:                                        ; preds = %if.then10
  %24 = load ptr, ptr %bottom_field11, align 8, !dbg !2017
  %frame_cropping_rect_top_offset = getelementptr inbounds i8, ptr %24, i64 288, !dbg !2019
  %25 = load i32, ptr %frame_cropping_rect_top_offset, align 8, !dbg !2019
  %frame_cropping_rect_top_offset33 = getelementptr inbounds i8, ptr %22, i64 288, !dbg !2020
  store i32 %25, ptr %frame_cropping_rect_top_offset33, align 8, !dbg !2021
  %26 = load ptr, ptr %bottom_field11, align 8, !dbg !2022
  %frame_cropping_rect_bottom_offset = getelementptr inbounds i8, ptr %26, i64 292, !dbg !2023
  %27 = load i32, ptr %frame_cropping_rect_bottom_offset, align 4, !dbg !2023
  %28 = load ptr, ptr %top_field19, align 8, !dbg !2024
  %frame_cropping_rect_bottom_offset36 = getelementptr inbounds i8, ptr %28, i64 292, !dbg !2025
  store i32 %27, ptr %frame_cropping_rect_bottom_offset36, align 4, !dbg !2026
  %29 = load ptr, ptr %bottom_field11, align 8, !dbg !2027
  %frame_cropping_rect_left_offset = getelementptr inbounds i8, ptr %29, i64 280, !dbg !2028
  %30 = load i32, ptr %frame_cropping_rect_left_offset, align 8, !dbg !2028
  %31 = load ptr, ptr %top_field19, align 8, !dbg !2029
  %frame_cropping_rect_left_offset39 = getelementptr inbounds i8, ptr %31, i64 280, !dbg !2030
  store i32 %30, ptr %frame_cropping_rect_left_offset39, align 8, !dbg !2031
  %32 = load ptr, ptr %bottom_field11, align 8, !dbg !2032
  %frame_cropping_rect_right_offset = getelementptr inbounds i8, ptr %32, i64 284, !dbg !2033
  %33 = load i32, ptr %frame_cropping_rect_right_offset, align 4, !dbg !2033
  %34 = load ptr, ptr %top_field19, align 8, !dbg !2034
  %frame_cropping_rect_right_offset42 = getelementptr inbounds i8, ptr %34, i64 284, !dbg !2035
  store i32 %33, ptr %frame_cropping_rect_right_offset42, align 4, !dbg !2036
  br label %if.end43, !dbg !2037

if.end43:                                         ; preds = %if.then30, %if.then10
  tail call void @dpb_combine_field_yuv(ptr noundef %p_Vid, ptr noundef nonnull %fs) #14, !dbg !2038
  %view_id44 = getelementptr inbounds i8, ptr %fs, i64 72, !dbg !2039
  %35 = load i32, ptr %view_id44, align 8, !dbg !2039
  %frame45 = getelementptr inbounds i8, ptr %fs, i64 48, !dbg !2040
  %36 = load ptr, ptr %frame45, align 8, !dbg !2040
  %view_id46 = getelementptr inbounds i8, ptr %36, i64 344, !dbg !2041
  store i32 %35, ptr %view_id46, align 8, !dbg !2042
  %37 = load ptr, ptr %frame45, align 8, !dbg !2043
  tail call void @write_picture(ptr noundef %p_Vid, ptr noundef %37, i32 poison, i32 poison), !dbg !2044
  br label %if.end48, !dbg !2045

if.end48:                                         ; preds = %if.end43, %if.end
  store i32 3, ptr %fs, align 8, !dbg !2046
  ret void, !dbg !2047
}

declare !dbg !2048 ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2051 void @dpb_combine_field_yuv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @flush_direct_output(ptr noundef %p_Vid, i32 noundef %p_out) local_unnamed_addr #0 !dbg !2054 {
entry:
    #dbg_value(ptr %p_Vid, !2056, !DIExpression(), !2058)
    #dbg_value(i32 %p_out, !2057, !DIExpression(), !2058)
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2059
  %0 = load ptr, ptr %out_buffer, align 8, !dbg !2059
  tail call void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %0, i32 poison), !dbg !2060
  %1 = load ptr, ptr %out_buffer, align 8, !dbg !2061
  %frame = getelementptr inbounds i8, ptr %1, i64 48, !dbg !2062
  %2 = load ptr, ptr %frame, align 8, !dbg !2062
  tail call void @free_storable_picture(ptr noundef %2) #14, !dbg !2063
  %3 = load ptr, ptr %out_buffer, align 8, !dbg !2064
  %frame3 = getelementptr inbounds i8, ptr %3, i64 48, !dbg !2065
  store ptr null, ptr %frame3, align 8, !dbg !2066
  %4 = load ptr, ptr %out_buffer, align 8, !dbg !2067
  %top_field = getelementptr inbounds i8, ptr %4, i64 56, !dbg !2068
  %5 = load ptr, ptr %top_field, align 8, !dbg !2068
  tail call void @free_storable_picture(ptr noundef %5) #14, !dbg !2069
  %6 = load ptr, ptr %out_buffer, align 8, !dbg !2070
  %top_field6 = getelementptr inbounds i8, ptr %6, i64 56, !dbg !2071
  store ptr null, ptr %top_field6, align 8, !dbg !2072
  %7 = load ptr, ptr %out_buffer, align 8, !dbg !2073
  %bottom_field = getelementptr inbounds i8, ptr %7, i64 64, !dbg !2074
  %8 = load ptr, ptr %bottom_field, align 8, !dbg !2074
  tail call void @free_storable_picture(ptr noundef %8) #14, !dbg !2075
  %9 = load ptr, ptr %out_buffer, align 8, !dbg !2076
  %bottom_field9 = getelementptr inbounds i8, ptr %9, i64 64, !dbg !2077
  store ptr null, ptr %bottom_field9, align 8, !dbg !2078
  %10 = load ptr, ptr %out_buffer, align 8, !dbg !2079
  store i32 0, ptr %10, align 8, !dbg !2080
  ret void, !dbg !2081
}

declare !dbg !2082 void @free_storable_picture(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @write_stored_frame(ptr noundef %p_Vid, ptr noundef %fs, i32 noundef %p_out) local_unnamed_addr #0 !dbg !2085 {
entry:
    #dbg_value(ptr %p_Vid, !2087, !DIExpression(), !2090)
    #dbg_value(ptr %fs, !2088, !DIExpression(), !2090)
    #dbg_value(i32 %p_out, !2089, !DIExpression(), !2090)
    #dbg_value(ptr %p_Vid, !2056, !DIExpression(), !2091)
    #dbg_value(i32 %p_out, !2057, !DIExpression(), !2091)
  %out_buffer.i = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2093
  %0 = load ptr, ptr %out_buffer.i, align 8, !dbg !2093
  tail call void @write_unpaired_field(ptr noundef %p_Vid, ptr noundef %0, i32 poison), !dbg !2094
  %1 = load ptr, ptr %out_buffer.i, align 8, !dbg !2095
  %frame.i = getelementptr inbounds i8, ptr %1, i64 48, !dbg !2096
  %2 = load ptr, ptr %frame.i, align 8, !dbg !2096
  tail call void @free_storable_picture(ptr noundef %2) #14, !dbg !2097
  %3 = load ptr, ptr %out_buffer.i, align 8, !dbg !2098
  %frame3.i = getelementptr inbounds i8, ptr %3, i64 48, !dbg !2099
  store ptr null, ptr %frame3.i, align 8, !dbg !2100
  %4 = load ptr, ptr %out_buffer.i, align 8, !dbg !2101
  %top_field.i = getelementptr inbounds i8, ptr %4, i64 56, !dbg !2102
  %5 = load ptr, ptr %top_field.i, align 8, !dbg !2102
  tail call void @free_storable_picture(ptr noundef %5) #14, !dbg !2103
  %6 = load ptr, ptr %out_buffer.i, align 8, !dbg !2104
  %top_field6.i = getelementptr inbounds i8, ptr %6, i64 56, !dbg !2105
  store ptr null, ptr %top_field6.i, align 8, !dbg !2106
  %7 = load ptr, ptr %out_buffer.i, align 8, !dbg !2107
  %bottom_field.i = getelementptr inbounds i8, ptr %7, i64 64, !dbg !2108
  %8 = load ptr, ptr %bottom_field.i, align 8, !dbg !2108
  tail call void @free_storable_picture(ptr noundef %8) #14, !dbg !2109
  %9 = load ptr, ptr %out_buffer.i, align 8, !dbg !2110
  %bottom_field9.i = getelementptr inbounds i8, ptr %9, i64 64, !dbg !2111
  store ptr null, ptr %bottom_field9.i, align 8, !dbg !2112
  %10 = load ptr, ptr %out_buffer.i, align 8, !dbg !2113
  store i32 0, ptr %10, align 8, !dbg !2114
  %11 = load i32, ptr %fs, align 8, !dbg !2115
  %cmp = icmp slt i32 %11, 3, !dbg !2117
  br i1 %cmp, label %if.then, label %if.else, !dbg !2118

if.then:                                          ; preds = %entry
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %fs, i32 poison), !dbg !2119
  br label %if.end7, !dbg !2121

if.else:                                          ; preds = %entry
  %recovery_frame = getelementptr inbounds i8, ptr %fs, i64 24, !dbg !2122
  %12 = load i32, ptr %recovery_frame, align 8, !dbg !2122
  %tobool.not = icmp eq i32 %12, 0, !dbg !2125
  br i1 %tobool.not, label %if.end, label %if.then1, !dbg !2126

if.then1:                                         ; preds = %if.else
  %recovery_flag = getelementptr inbounds i8, ptr %p_Vid, i64 856644, !dbg !2127
  store i32 1, ptr %recovery_flag, align 4, !dbg !2128
  br label %if.end, !dbg !2129

if.end:                                           ; preds = %if.then1, %if.else
  %non_conforming_stream = getelementptr inbounds i8, ptr %p_Vid, i64 848948, !dbg !2130
  %13 = load i32, ptr %non_conforming_stream, align 4, !dbg !2130
  %tobool2.not = icmp eq i32 %13, 0, !dbg !2132
  br i1 %tobool2.not, label %if.then5, label %lor.lhs.false, !dbg !2133

lor.lhs.false:                                    ; preds = %if.end
  %recovery_flag3 = getelementptr inbounds i8, ptr %p_Vid, i64 856644, !dbg !2134
  %14 = load i32, ptr %recovery_flag3, align 4, !dbg !2134
  %tobool4.not = icmp eq i32 %14, 0, !dbg !2135
  br i1 %tobool4.not, label %if.end7, label %if.then5, !dbg !2136

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %frame = getelementptr inbounds i8, ptr %fs, i64 48, !dbg !2137
  %15 = load ptr, ptr %frame, align 8, !dbg !2137
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef %15, i32 poison, i32 poison), !dbg !2138
  br label %if.end7, !dbg !2138

if.end7:                                          ; preds = %lor.lhs.false, %if.then5, %if.then
  %is_output = getelementptr inbounds i8, ptr %fs, i64 36, !dbg !2139
  store i32 1, ptr %is_output, align 4, !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: nounwind uwtable
define dso_local void @direct_output(ptr noundef %p_Vid, ptr noundef %p, i32 noundef %p_out) local_unnamed_addr #0 !dbg !2142 {
entry:
    #dbg_value(ptr %p_Vid, !2144, !DIExpression(), !2148)
    #dbg_value(ptr %p, !2145, !DIExpression(), !2148)
    #dbg_value(i32 %p_out, !2146, !DIExpression(), !2148)
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !2149
    #dbg_value(ptr %0, !2147, !DIExpression(), !2148)
  %1 = load i32, ptr %p, align 8, !dbg !2150
  switch i32 %1, label %if.end16 [
    i32 0, label %if.then
    i32 1, label %if.then8
  ], !dbg !2152

if.then:                                          ; preds = %entry
    #dbg_value(ptr %p_Vid, !2056, !DIExpression(), !2153)
    #dbg_value(i32 %p_out, !2057, !DIExpression(), !2153)
  %out_buffer.i = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2156
  %2 = load ptr, ptr %out_buffer.i, align 8, !dbg !2156
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef %2, i32 poison), !dbg !2157
  %3 = load ptr, ptr %out_buffer.i, align 8, !dbg !2158
  %frame.i = getelementptr inbounds i8, ptr %3, i64 48, !dbg !2159
  %4 = load ptr, ptr %frame.i, align 8, !dbg !2159
  tail call void @free_storable_picture(ptr noundef %4) #14, !dbg !2160
  %5 = load ptr, ptr %out_buffer.i, align 8, !dbg !2161
  %frame3.i = getelementptr inbounds i8, ptr %5, i64 48, !dbg !2162
  store ptr null, ptr %frame3.i, align 8, !dbg !2163
  %6 = load ptr, ptr %out_buffer.i, align 8, !dbg !2164
  %top_field.i = getelementptr inbounds i8, ptr %6, i64 56, !dbg !2165
  %7 = load ptr, ptr %top_field.i, align 8, !dbg !2165
  tail call void @free_storable_picture(ptr noundef %7) #14, !dbg !2166
  %8 = load ptr, ptr %out_buffer.i, align 8, !dbg !2167
  %top_field6.i = getelementptr inbounds i8, ptr %8, i64 56, !dbg !2168
  store ptr null, ptr %top_field6.i, align 8, !dbg !2169
  %9 = load ptr, ptr %out_buffer.i, align 8, !dbg !2170
  %bottom_field.i = getelementptr inbounds i8, ptr %9, i64 64, !dbg !2171
  %10 = load ptr, ptr %bottom_field.i, align 8, !dbg !2171
  tail call void @free_storable_picture(ptr noundef %10) #14, !dbg !2172
  %11 = load ptr, ptr %out_buffer.i, align 8, !dbg !2173
  %bottom_field9.i = getelementptr inbounds i8, ptr %11, i64 64, !dbg !2174
  store ptr null, ptr %bottom_field9.i, align 8, !dbg !2175
  %12 = load ptr, ptr %out_buffer.i, align 8, !dbg !2176
  store i32 0, ptr %12, align 8, !dbg !2177
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p, i32 poison, i32 poison), !dbg !2178
  tail call void @calculate_frame_no(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p) #14, !dbg !2179
  %p_ref = getelementptr inbounds i8, ptr %p_Vid, i64 855988, !dbg !2180
  %13 = load i32, ptr %p_ref, align 4, !dbg !2180
  %cmp2.not = icmp eq i32 %13, -1, !dbg !2182
  br i1 %cmp2.not, label %if.end, label %land.lhs.true, !dbg !2183

land.lhs.true:                                    ; preds = %if.then
  %silent = getelementptr inbounds i8, ptr %0, i64 784, !dbg !2184
  %14 = load i32, ptr %silent, align 8, !dbg !2184
  %tobool.not = icmp eq i32 %14, 0, !dbg !2185
  br i1 %tobool.not, label %if.then3, label %if.end, !dbg !2186

if.then3:                                         ; preds = %land.lhs.true
  tail call void @find_snr(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p, ptr noundef nonnull %p_ref) #14, !dbg !2187
  br label %if.end, !dbg !2187

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  tail call void @free_storable_picture(ptr noundef nonnull %p) #14, !dbg !2188
  br label %cleanup, !dbg !2189

if.then8:                                         ; preds = %entry
  %out_buffer = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2190
  %15 = load ptr, ptr %out_buffer, align 8, !dbg !2190
  %16 = load i32, ptr %15, align 8, !dbg !2194
  %and = and i32 %16, 1, !dbg !2195
  %tobool9.not = icmp eq i32 %and, 0, !dbg !2195
  br i1 %tobool9.not, label %if.end12, label %if.then10, !dbg !2196

if.then10:                                        ; preds = %if.then8
    #dbg_value(ptr %p_Vid, !2056, !DIExpression(), !2197)
    #dbg_value(i32 poison, !2057, !DIExpression(), !2197)
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %15, i32 poison), !dbg !2199
  %17 = load ptr, ptr %out_buffer, align 8, !dbg !2200
  %frame.i116 = getelementptr inbounds i8, ptr %17, i64 48, !dbg !2201
  %18 = load ptr, ptr %frame.i116, align 8, !dbg !2201
  tail call void @free_storable_picture(ptr noundef %18) #14, !dbg !2202
  %19 = load ptr, ptr %out_buffer, align 8, !dbg !2203
  %frame3.i117 = getelementptr inbounds i8, ptr %19, i64 48, !dbg !2204
  store ptr null, ptr %frame3.i117, align 8, !dbg !2205
  %20 = load ptr, ptr %out_buffer, align 8, !dbg !2206
  %top_field.i118 = getelementptr inbounds i8, ptr %20, i64 56, !dbg !2207
  %21 = load ptr, ptr %top_field.i118, align 8, !dbg !2207
  tail call void @free_storable_picture(ptr noundef %21) #14, !dbg !2208
  %22 = load ptr, ptr %out_buffer, align 8, !dbg !2209
  %top_field6.i119 = getelementptr inbounds i8, ptr %22, i64 56, !dbg !2210
  store ptr null, ptr %top_field6.i119, align 8, !dbg !2211
  %23 = load ptr, ptr %out_buffer, align 8, !dbg !2212
  %bottom_field.i120 = getelementptr inbounds i8, ptr %23, i64 64, !dbg !2213
  %24 = load ptr, ptr %bottom_field.i120, align 8, !dbg !2213
  tail call void @free_storable_picture(ptr noundef %24) #14, !dbg !2214
  %25 = load ptr, ptr %out_buffer, align 8, !dbg !2215
  %bottom_field9.i121 = getelementptr inbounds i8, ptr %25, i64 64, !dbg !2216
  store ptr null, ptr %bottom_field9.i121, align 8, !dbg !2217
  %26 = load ptr, ptr %out_buffer, align 8, !dbg !2218
  store i32 0, ptr %26, align 8, !dbg !2219
  %.pre = load ptr, ptr %out_buffer, align 8, !dbg !2220
  br label %if.end12, !dbg !2221

if.end12:                                         ; preds = %if.then10, %if.then8
  %27 = phi ptr [ %.pre, %if.then10 ], [ %15, %if.then8 ], !dbg !2220
  %top_field = getelementptr inbounds i8, ptr %27, i64 56, !dbg !2222
  store ptr %p, ptr %top_field, align 8, !dbg !2223
  %28 = load ptr, ptr %out_buffer, align 8, !dbg !2224
  %29 = load i32, ptr %28, align 8, !dbg !2225
  %or = or i32 %29, 1, !dbg !2225
  store i32 %or, ptr %28, align 8, !dbg !2225
  %.pr = load i32, ptr %p, align 8, !dbg !2226
  br label %if.end16, !dbg !2228

if.end16:                                         ; preds = %entry, %if.end12
  %30 = phi i32 [ %1, %entry ], [ %.pr, %if.end12 ], !dbg !2226
  %cmp18 = icmp eq i32 %30, 2, !dbg !2229
  br i1 %cmp18, label %if.then19, label %if.end31, !dbg !2230

if.then19:                                        ; preds = %if.end16
  %out_buffer20 = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2231
  %31 = load ptr, ptr %out_buffer20, align 8, !dbg !2231
  %32 = load i32, ptr %31, align 8, !dbg !2234
  %and22 = and i32 %32, 2, !dbg !2235
  %tobool23.not = icmp eq i32 %and22, 0, !dbg !2235
  br i1 %tobool23.not, label %if.end26, label %if.then24, !dbg !2236

if.then24:                                        ; preds = %if.then19
    #dbg_value(ptr %p_Vid, !2056, !DIExpression(), !2237)
    #dbg_value(i32 poison, !2057, !DIExpression(), !2237)
  tail call void @write_unpaired_field(ptr noundef nonnull %p_Vid, ptr noundef nonnull %31, i32 poison), !dbg !2239
  %33 = load ptr, ptr %out_buffer20, align 8, !dbg !2240
  %frame.i123 = getelementptr inbounds i8, ptr %33, i64 48, !dbg !2241
  %34 = load ptr, ptr %frame.i123, align 8, !dbg !2241
  tail call void @free_storable_picture(ptr noundef %34) #14, !dbg !2242
  %35 = load ptr, ptr %out_buffer20, align 8, !dbg !2243
  %frame3.i124 = getelementptr inbounds i8, ptr %35, i64 48, !dbg !2244
  store ptr null, ptr %frame3.i124, align 8, !dbg !2245
  %36 = load ptr, ptr %out_buffer20, align 8, !dbg !2246
  %top_field.i125 = getelementptr inbounds i8, ptr %36, i64 56, !dbg !2247
  %37 = load ptr, ptr %top_field.i125, align 8, !dbg !2247
  tail call void @free_storable_picture(ptr noundef %37) #14, !dbg !2248
  %38 = load ptr, ptr %out_buffer20, align 8, !dbg !2249
  %top_field6.i126 = getelementptr inbounds i8, ptr %38, i64 56, !dbg !2250
  store ptr null, ptr %top_field6.i126, align 8, !dbg !2251
  %39 = load ptr, ptr %out_buffer20, align 8, !dbg !2252
  %bottom_field.i127 = getelementptr inbounds i8, ptr %39, i64 64, !dbg !2253
  %40 = load ptr, ptr %bottom_field.i127, align 8, !dbg !2253
  tail call void @free_storable_picture(ptr noundef %40) #14, !dbg !2254
  %41 = load ptr, ptr %out_buffer20, align 8, !dbg !2255
  %bottom_field9.i128 = getelementptr inbounds i8, ptr %41, i64 64, !dbg !2256
  store ptr null, ptr %bottom_field9.i128, align 8, !dbg !2257
  %42 = load ptr, ptr %out_buffer20, align 8, !dbg !2258
  store i32 0, ptr %42, align 8, !dbg !2259
  %.pre129 = load ptr, ptr %out_buffer20, align 8, !dbg !2260
  br label %if.end26, !dbg !2261

if.end26:                                         ; preds = %if.then24, %if.then19
  %43 = phi ptr [ %.pre129, %if.then24 ], [ %31, %if.then19 ], !dbg !2260
  %bottom_field = getelementptr inbounds i8, ptr %43, i64 64, !dbg !2262
  store ptr %p, ptr %bottom_field, align 8, !dbg !2263
  %44 = load ptr, ptr %out_buffer20, align 8, !dbg !2264
  %45 = load i32, ptr %44, align 8, !dbg !2265
  %or30 = or i32 %45, 2, !dbg !2265
  store i32 %or30, ptr %44, align 8, !dbg !2265
  br label %if.end31, !dbg !2266

if.end31:                                         ; preds = %if.end26, %if.end16
  %out_buffer32 = getelementptr inbounds i8, ptr %p_Vid, i64 856624, !dbg !2267
  %46 = load ptr, ptr %out_buffer32, align 8, !dbg !2267
  %47 = load i32, ptr %46, align 8, !dbg !2269
  %cmp34 = icmp eq i32 %47, 3, !dbg !2270
  br i1 %cmp34, label %if.then35, label %cleanup, !dbg !2271

if.then35:                                        ; preds = %if.end31
  tail call void @dpb_combine_field_yuv(ptr noundef nonnull %p_Vid, ptr noundef nonnull %46) #14, !dbg !2272
  %48 = load ptr, ptr %out_buffer32, align 8, !dbg !2274
  %view_id = getelementptr inbounds i8, ptr %48, i64 72, !dbg !2275
  %49 = load i32, ptr %view_id, align 8, !dbg !2275
  %frame = getelementptr inbounds i8, ptr %48, i64 48, !dbg !2276
  %50 = load ptr, ptr %frame, align 8, !dbg !2276
  %view_id39 = getelementptr inbounds i8, ptr %50, i64 344, !dbg !2277
  store i32 %49, ptr %view_id39, align 8, !dbg !2278
  %51 = load ptr, ptr %out_buffer32, align 8, !dbg !2279
  %frame41 = getelementptr inbounds i8, ptr %51, i64 48, !dbg !2280
  %52 = load ptr, ptr %frame41, align 8, !dbg !2280
  tail call void @write_picture(ptr noundef nonnull %p_Vid, ptr noundef %52, i32 poison, i32 poison), !dbg !2281
  tail call void @calculate_frame_no(ptr noundef nonnull %p_Vid, ptr noundef nonnull %p) #14, !dbg !2282
  %p_ref43 = getelementptr inbounds i8, ptr %p_Vid, i64 855988, !dbg !2283
  %53 = load i32, ptr %p_ref43, align 4, !dbg !2283
  %cmp44.not = icmp eq i32 %53, -1, !dbg !2285
  br i1 %cmp44.not, label %if.end52, label %land.lhs.true45, !dbg !2286

land.lhs.true45:                                  ; preds = %if.then35
  %silent46 = getelementptr inbounds i8, ptr %0, i64 784, !dbg !2287
  %54 = load i32, ptr %silent46, align 8, !dbg !2287
  %tobool47.not = icmp eq i32 %54, 0, !dbg !2288
  br i1 %tobool47.not, label %if.then48, label %if.end52, !dbg !2289

if.then48:                                        ; preds = %land.lhs.true45
  %55 = load ptr, ptr %out_buffer32, align 8, !dbg !2290
  %frame50 = getelementptr inbounds i8, ptr %55, i64 48, !dbg !2291
  %56 = load ptr, ptr %frame50, align 8, !dbg !2291
  tail call void @find_snr(ptr noundef nonnull %p_Vid, ptr noundef %56, ptr noundef nonnull %p_ref43) #14, !dbg !2292
  br label %if.end52, !dbg !2292

if.end52:                                         ; preds = %if.then48, %land.lhs.true45, %if.then35
  %57 = load ptr, ptr %out_buffer32, align 8, !dbg !2293
  %frame54 = getelementptr inbounds i8, ptr %57, i64 48, !dbg !2294
  %58 = load ptr, ptr %frame54, align 8, !dbg !2294
  tail call void @free_storable_picture(ptr noundef %58) #14, !dbg !2295
  %59 = load ptr, ptr %out_buffer32, align 8, !dbg !2296
  %frame56 = getelementptr inbounds i8, ptr %59, i64 48, !dbg !2297
  store ptr null, ptr %frame56, align 8, !dbg !2298
  %60 = load ptr, ptr %out_buffer32, align 8, !dbg !2299
  %top_field58 = getelementptr inbounds i8, ptr %60, i64 56, !dbg !2300
  %61 = load ptr, ptr %top_field58, align 8, !dbg !2300
  tail call void @free_storable_picture(ptr noundef %61) #14, !dbg !2301
  %62 = load ptr, ptr %out_buffer32, align 8, !dbg !2302
  %top_field60 = getelementptr inbounds i8, ptr %62, i64 56, !dbg !2303
  store ptr null, ptr %top_field60, align 8, !dbg !2304
  %63 = load ptr, ptr %out_buffer32, align 8, !dbg !2305
  %bottom_field62 = getelementptr inbounds i8, ptr %63, i64 64, !dbg !2306
  %64 = load ptr, ptr %bottom_field62, align 8, !dbg !2306
  tail call void @free_storable_picture(ptr noundef %64) #14, !dbg !2307
  %65 = load ptr, ptr %out_buffer32, align 8, !dbg !2308
  %bottom_field64 = getelementptr inbounds i8, ptr %65, i64 64, !dbg !2309
  store ptr null, ptr %bottom_field64, align 8, !dbg !2310
  %66 = load ptr, ptr %out_buffer32, align 8, !dbg !2311
  store i32 0, ptr %66, align 8, !dbg !2312
  br label %cleanup, !dbg !2313

cleanup:                                          ; preds = %if.end31, %if.end52, %if.end
  ret void, !dbg !2314
}

declare !dbg !2315 void @calculate_frame_no(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2317 void @find_snr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2320 i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2323 void @tone_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2326 ptr @GetOneAvailDecPicFromList(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2329 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare !dbg !2335 void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !2339 ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2347 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !2350 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree
declare !dbg !2354 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !2358 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !2361 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !2414 void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !2417 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare !dbg !2425 void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2428 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

declare !dbg !2431 i32 @get_mem3Dpel(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2435 void @free_mem3Dpel(ptr noundef) local_unnamed_addr #1

declare !dbg !2438 i32 @testEndian() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @img2buf_endian(ptr nocapture noundef readonly %imgX, ptr nocapture noundef writeonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %crop_left, i32 noundef %crop_right, i32 noundef %crop_top, i32 noundef %crop_bottom, i32 noundef %iOutStride) #0 !dbg !2442 {
entry:
    #dbg_value(ptr %imgX, !2444, !DIExpression(), !2461)
    #dbg_value(ptr %buf, !2445, !DIExpression(), !2461)
    #dbg_value(i32 %size_x, !2446, !DIExpression(), !2461)
    #dbg_value(i32 %size_y, !2447, !DIExpression(), !2461)
    #dbg_value(i32 %symbol_size_in_bytes, !2448, !DIExpression(), !2461)
    #dbg_value(i32 %crop_left, !2449, !DIExpression(), !2461)
    #dbg_value(i32 %crop_right, !2450, !DIExpression(), !2461)
    #dbg_value(i32 %crop_top, !2451, !DIExpression(), !2461)
    #dbg_value(i32 %crop_bottom, !2452, !DIExpression(), !2461)
    #dbg_value(i32 %iOutStride, !2453, !DIExpression(), !2461)
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond15.preheader
    i32 4, label %for.cond44.preheader
  ], !dbg !2462

for.cond44.preheader:                             ; preds = %entry
  %sub45 = sub nsw i32 %size_y, %crop_bottom
    #dbg_value(i32 %crop_top, !2454, !DIExpression(), !2461)
  %cmp46138 = icmp sgt i32 %sub45, %crop_top, !dbg !2463
  br i1 %cmp46138, label %for.cond49.preheader.lr.ph, label %sw.epilog, !dbg !2468

for.cond49.preheader.lr.ph:                       ; preds = %for.cond44.preheader
  %sub50 = sub nsw i32 %size_x, %crop_right
  %cmp51136 = icmp sgt i32 %sub50, %crop_left
  br i1 %cmp51136, label %for.cond49.preheader.us.preheader, label %sw.epilog

for.cond49.preheader.us.preheader:                ; preds = %for.cond49.preheader.lr.ph
  %0 = sext i32 %crop_left to i64, !dbg !2468
  %1 = sext i32 %sub50 to i64, !dbg !2468
  %2 = sext i32 %crop_top to i64, !dbg !2468
  %3 = sext i32 %sub45 to i64, !dbg !2468
  br label %for.cond49.preheader.us, !dbg !2468

for.cond49.preheader.us:                          ; preds = %for.cond49.preheader.us.preheader, %for.cond49.for.inc80_crit_edge.us
  %indvars.iv154 = phi i64 [ %2, %for.cond49.preheader.us.preheader ], [ %indvars.iv.next155, %for.cond49.for.inc80_crit_edge.us ]
    #dbg_value(i64 %indvars.iv154, !2454, !DIExpression(), !2461)
    #dbg_value(i32 %crop_left, !2455, !DIExpression(), !2461)
  %arrayidx55.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv154
  %4 = trunc i64 %indvars.iv154 to i32
  %5 = sub i32 %4, %crop_top
  %6 = mul i32 %5, %iOutStride
  %sub70.us = sub i32 %6, %crop_left
  br label %for.body53.us, !dbg !2469

for.body53.us:                                    ; preds = %for.cond49.preheader.us, %for.body53.us
  %indvars.iv = phi i64 [ %0, %for.cond49.preheader.us ], [ %indvars.iv.next, %for.body53.us ]
    #dbg_value(i64 %indvars.iv, !2455, !DIExpression(), !2461)
  %7 = load ptr, ptr %arrayidx55.us, align 8, !dbg !2471
  %arrayidx57.us = getelementptr inbounds i16, ptr %7, i64 %indvars.iv, !dbg !2471
  %8 = load i16, ptr %arrayidx57.us, align 2, !dbg !2471
    #dbg_value(i16 %8, !2459, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2461)
  %trunc.us = zext i16 %8 to i32
  %rev.us = tail call i32 @llvm.bswap.i32(i32 %trunc.us)
    #dbg_value(i32 %rev.us, !2460, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !2461)
  %9 = trunc nsw i64 %indvars.iv to i32, !dbg !2474
  %add73.us = add i32 %sub70.us, %9, !dbg !2474
  %mul74.us = shl nsw i32 %add73.us, 2, !dbg !2475
  %idx.ext75.us = sext i32 %mul74.us to i64, !dbg !2476
  %add.ptr76.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext75.us, !dbg !2476
  store i32 %rev.us, ptr %add.ptr76.us, align 1, !dbg !2477
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !2478
    #dbg_value(i64 %indvars.iv.next, !2455, !DIExpression(), !2461)
  %cmp51.us = icmp slt i64 %indvars.iv.next, %1, !dbg !2479
  br i1 %cmp51.us, label %for.body53.us, label %for.cond49.for.inc80_crit_edge.us, !dbg !2469, !llvm.loop !2480

for.cond49.for.inc80_crit_edge.us:                ; preds = %for.body53.us
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1, !dbg !2482
    #dbg_value(i64 %indvars.iv.next155, !2454, !DIExpression(), !2461)
  %cmp46.us = icmp slt i64 %indvars.iv.next155, %3, !dbg !2463
  br i1 %cmp46.us, label %for.cond49.preheader.us, label %sw.epilog, !dbg !2468, !llvm.loop !2483

for.cond15.preheader:                             ; preds = %entry
  %sub16 = sub nsw i32 %size_y, %crop_bottom
    #dbg_value(i32 %crop_top, !2454, !DIExpression(), !2461)
  %cmp17142 = icmp sgt i32 %sub16, %crop_top, !dbg !2485
  br i1 %cmp17142, label %for.cond20.preheader.lr.ph, label %sw.epilog, !dbg !2489

for.cond20.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %sub21 = sub nsw i32 %size_x, %crop_right
  %cmp22140 = icmp sgt i32 %sub21, %crop_left
  br i1 %cmp22140, label %for.cond20.preheader.us.preheader, label %sw.epilog

for.cond20.preheader.us.preheader:                ; preds = %for.cond20.preheader.lr.ph
  %10 = sext i32 %crop_left to i64, !dbg !2489
  %11 = sext i32 %sub21 to i64, !dbg !2489
  %12 = sext i32 %crop_top to i64, !dbg !2489
  %13 = sext i32 %sub16 to i64, !dbg !2489
  br label %for.cond20.preheader.us, !dbg !2489

for.cond20.preheader.us:                          ; preds = %for.cond20.preheader.us.preheader, %for.cond20.for.inc40_crit_edge.us
  %indvars.iv162 = phi i64 [ %12, %for.cond20.preheader.us.preheader ], [ %indvars.iv.next163, %for.cond20.for.inc40_crit_edge.us ]
    #dbg_value(i64 %indvars.iv162, !2454, !DIExpression(), !2461)
    #dbg_value(i32 %crop_left, !2455, !DIExpression(), !2461)
  %arrayidx26.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv162
  %14 = trunc i64 %indvars.iv162 to i32
  %15 = sub i32 %14, %crop_top
  %16 = mul i32 %15, %iOutStride
  %sub32.us = sub i32 %16, %crop_left
  br label %for.body24.us, !dbg !2490

for.body24.us:                                    ; preds = %for.cond20.preheader.us, %for.body24.us
  %indvars.iv159 = phi i64 [ %10, %for.cond20.preheader.us ], [ %indvars.iv.next160, %for.body24.us ]
    #dbg_value(i64 %indvars.iv159, !2455, !DIExpression(), !2461)
  %17 = load ptr, ptr %arrayidx26.us, align 8, !dbg !2492
  %arrayidx28.us = getelementptr inbounds i16, ptr %17, i64 %indvars.iv159, !dbg !2492
  %18 = load i16, ptr %arrayidx28.us, align 2, !dbg !2492
    #dbg_value(i16 %18, !2457, !DIExpression(), !2461)
  %rev133.us = tail call i16 @llvm.bswap.i16(i16 %18)
    #dbg_value(i16 %rev133.us, !2458, !DIExpression(), !2461)
  %19 = trunc nsw i64 %indvars.iv159 to i32, !dbg !2495
  %add35.us = add i32 %sub32.us, %19, !dbg !2495
  %mul36.us = shl nsw i32 %add35.us, 1, !dbg !2496
  %idx.ext.us = sext i32 %mul36.us to i64, !dbg !2497
  %add.ptr.us = getelementptr inbounds i8, ptr %buf, i64 %idx.ext.us, !dbg !2497
  store i16 %rev133.us, ptr %add.ptr.us, align 1, !dbg !2498
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1, !dbg !2499
    #dbg_value(i64 %indvars.iv.next160, !2455, !DIExpression(), !2461)
  %cmp22.us = icmp slt i64 %indvars.iv.next160, %11, !dbg !2500
  br i1 %cmp22.us, label %for.body24.us, label %for.cond20.for.inc40_crit_edge.us, !dbg !2490, !llvm.loop !2501

for.cond20.for.inc40_crit_edge.us:                ; preds = %for.body24.us
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1, !dbg !2503
    #dbg_value(i64 %indvars.iv.next163, !2454, !DIExpression(), !2461)
  %cmp17.us = icmp slt i64 %indvars.iv.next163, %13, !dbg !2485
  br i1 %cmp17.us, label %for.cond20.preheader.us, label %sw.epilog, !dbg !2489, !llvm.loop !2504

for.cond.preheader:                               ; preds = %entry
  %sub = sub nsw i32 %size_y, %crop_bottom
    #dbg_value(i32 %crop_top, !2454, !DIExpression(), !2461)
  %cmp146 = icmp sgt i32 %sub, %crop_top, !dbg !2506
  br i1 %cmp146, label %for.cond1.preheader.lr.ph, label %sw.epilog, !dbg !2510

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sub2 = sub nsw i32 %size_x, %crop_right
  %cmp3144 = icmp sgt i32 %sub2, %crop_left
  br i1 %cmp3144, label %for.cond1.preheader.us.preheader, label %sw.epilog

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %20 = sext i32 %crop_left to i64, !dbg !2510
  %21 = sext i32 %sub2 to i64, !dbg !2510
  %22 = sext i32 %crop_top to i64, !dbg !2510
  %23 = sext i32 %sub to i64, !dbg !2510
  br label %for.cond1.preheader.us, !dbg !2510

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc11_crit_edge.us
  %indvars.iv170 = phi i64 [ %22, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next171, %for.cond1.for.inc11_crit_edge.us ]
    #dbg_value(i64 %indvars.iv170, !2454, !DIExpression(), !2461)
    #dbg_value(i32 %crop_left, !2455, !DIExpression(), !2461)
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv170
  %24 = trunc i64 %indvars.iv170 to i32
  %25 = sub i32 %24, %crop_top
  %26 = mul i32 %25, %iOutStride
  %sub7.us = sub i32 %26, %crop_left
  br label %for.body4.us, !dbg !2511

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.body4.us
  %indvars.iv167 = phi i64 [ %20, %for.cond1.preheader.us ], [ %indvars.iv.next168, %for.body4.us ]
    #dbg_value(i64 %indvars.iv167, !2455, !DIExpression(), !2461)
  %27 = load ptr, ptr %arrayidx.us, align 8, !dbg !2513
  %arrayidx6.us = getelementptr inbounds i16, ptr %27, i64 %indvars.iv167, !dbg !2513
  %28 = load i16, ptr %arrayidx6.us, align 2, !dbg !2513
  %conv.us = trunc i16 %28 to i8, !dbg !2516
    #dbg_value(i8 %conv.us, !2456, !DIExpression(), !2461)
  %29 = trunc nsw i64 %indvars.iv167 to i32, !dbg !2517
  %add.us = add i32 %sub7.us, %29, !dbg !2517
  %idxprom9.us = sext i32 %add.us to i64, !dbg !2518
  %arrayidx10.us = getelementptr inbounds i8, ptr %buf, i64 %idxprom9.us, !dbg !2518
  store i8 %conv.us, ptr %arrayidx10.us, align 1, !dbg !2519
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1, !dbg !2520
    #dbg_value(i64 %indvars.iv.next168, !2455, !DIExpression(), !2461)
  %cmp3.us = icmp slt i64 %indvars.iv.next168, %21, !dbg !2521
  br i1 %cmp3.us, label %for.body4.us, label %for.cond1.for.inc11_crit_edge.us, !dbg !2511, !llvm.loop !2522

for.cond1.for.inc11_crit_edge.us:                 ; preds = %for.body4.us
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1, !dbg !2524
    #dbg_value(i64 %indvars.iv.next171, !2454, !DIExpression(), !2461)
  %cmp.us = icmp slt i64 %indvars.iv.next171, %23, !dbg !2506
  br i1 %cmp.us, label %for.cond1.preheader.us, label %sw.epilog, !dbg !2510, !llvm.loop !2525

sw.default:                                       ; preds = %entry
  tail call void @error(ptr noundef nonnull @.str.8, i32 noundef 500) #14, !dbg !2527
  br label %sw.epilog, !dbg !2529

sw.epilog:                                        ; preds = %for.cond49.for.inc80_crit_edge.us, %for.cond20.for.inc40_crit_edge.us, %for.cond1.for.inc11_crit_edge.us, %for.cond1.preheader.lr.ph, %for.cond20.preheader.lr.ph, %for.cond49.preheader.lr.ph, %for.cond44.preheader, %for.cond15.preheader, %for.cond.preheader, %sw.default
  ret void, !dbg !2530
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @img2buf_normal(ptr nocapture noundef readonly %imgX, ptr nocapture noundef writeonly %buf, i32 noundef %size_x, i32 noundef %size_y, i32 noundef %symbol_size_in_bytes, i32 noundef %crop_left, i32 noundef %crop_right, i32 noundef %crop_top, i32 noundef %crop_bottom, i32 noundef %iOutStride) #2 !dbg !2531 {
entry:
    #dbg_value(ptr %imgX, !2533, !DIExpression(), !2558)
    #dbg_value(ptr %buf, !2534, !DIExpression(), !2558)
    #dbg_value(i32 %size_x, !2535, !DIExpression(), !2558)
    #dbg_value(i32 %size_y, !2536, !DIExpression(), !2558)
    #dbg_value(i32 %symbol_size_in_bytes, !2537, !DIExpression(), !2558)
    #dbg_value(i32 %crop_left, !2538, !DIExpression(), !2558)
    #dbg_value(i32 %crop_right, !2539, !DIExpression(), !2558)
    #dbg_value(i32 %crop_top, !2540, !DIExpression(), !2558)
    #dbg_value(i32 %crop_bottom, !2541, !DIExpression(), !2558)
    #dbg_value(i32 %iOutStride, !2542, !DIExpression(), !2558)
  %0 = add i32 %crop_left, %crop_right, !dbg !2559
  %sub1 = sub i32 %size_x, %0, !dbg !2559
    #dbg_value(i32 %sub1, !2545, !DIExpression(), !2558)
  %1 = add i32 %crop_top, %crop_bottom, !dbg !2560
  %sub3 = sub i32 %size_y, %1, !dbg !2560
    #dbg_value(i32 %sub3, !2546, !DIExpression(), !2558)
    #dbg_value(i32 0, !2547, !DIExpression(), !2558)
  %cmp = icmp sgt i32 %symbol_size_in_bytes, 2, !dbg !2561
  br i1 %cmp, label %for.cond.preheader, label %if.end, !dbg !2563

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i32 0, !2544, !DIExpression(), !2558)
  %cmp4106 = icmp sgt i32 %sub3, 0, !dbg !2564
  br i1 %cmp4106, label %for.body.lr.ph, label %for.cond15.preheader, !dbg !2568

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul5 = mul nsw i32 %sub1, %symbol_size_in_bytes
  %conv = sext i32 %mul5 to i64
  %2 = sext i32 %iOutStride to i64, !dbg !2568
  %wide.trip.count = zext nneg i32 %sub3 to i64, !dbg !2564
  %xtraiter164 = and i64 %wide.trip.count, 7, !dbg !2568
  %3 = icmp ult i32 %sub3, 8, !dbg !2568
  br i1 %3, label %for.cond15.preheader.loopexit.unr-lcssa, label %for.body.lr.ph.new, !dbg !2568

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640, !dbg !2568
  br label %for.body, !dbg !2568

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.7, %for.body ]
    #dbg_value(i64 %indvars.iv, !2544, !DIExpression(), !2558)
  %4 = mul nsw i64 %indvars.iv, %2, !dbg !2569
  %add.ptr = getelementptr inbounds i8, ptr %buf, i64 %4, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !2572
    #dbg_value(i64 %indvars.iv.next, !2544, !DIExpression(), !2558)
  %5 = mul nsw i64 %indvars.iv.next, %2, !dbg !2569
  %add.ptr.1 = getelementptr inbounds i8, ptr %buf, i64 %5, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.1, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.1, !2544, !DIExpression(), !2558)
  %6 = mul nsw i64 %indvars.iv.next.1, %2, !dbg !2569
  %add.ptr.2 = getelementptr inbounds i8, ptr %buf, i64 %6, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.2, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.2, !2544, !DIExpression(), !2558)
  %7 = mul nsw i64 %indvars.iv.next.2, %2, !dbg !2569
  %add.ptr.3 = getelementptr inbounds i8, ptr %buf, i64 %7, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.3, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.3, !2544, !DIExpression(), !2558)
  %8 = mul nsw i64 %indvars.iv.next.3, %2, !dbg !2569
  %add.ptr.4 = getelementptr inbounds i8, ptr %buf, i64 %8, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.4, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.4, !2544, !DIExpression(), !2558)
  %9 = mul nsw i64 %indvars.iv.next.4, %2, !dbg !2569
  %add.ptr.5 = getelementptr inbounds i8, ptr %buf, i64 %9, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.5, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.5, !2544, !DIExpression(), !2558)
  %10 = mul nsw i64 %indvars.iv.next.5, %2, !dbg !2569
  %add.ptr.6 = getelementptr inbounds i8, ptr %buf, i64 %10, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.6, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.6, !2544, !DIExpression(), !2558)
  %11 = mul nsw i64 %indvars.iv.next.6, %2, !dbg !2569
  %add.ptr.7 = getelementptr inbounds i8, ptr %buf, i64 %11, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.7, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.7, !2544, !DIExpression(), !2558)
  %niter.next.7 = add i64 %niter, 8, !dbg !2568
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter, !dbg !2568
  br i1 %niter.ncmp.7, label %for.cond15.preheader.loopexit.unr-lcssa, label %for.body, !dbg !2568, !llvm.loop !2573

if.end:                                           ; preds = %entry
    #dbg_value(i32 %symbol_size_in_bytes, !2547, !DIExpression(), !2558)
  %12 = or i32 %crop_right, %crop_left, !dbg !2575
  %13 = or i32 %12, %crop_top, !dbg !2575
  %14 = or i32 %13, %crop_bottom, !dbg !2575
  %or.cond64 = icmp ne i32 %14, 0, !dbg !2575
  %cmp12 = icmp ne i32 %symbol_size_in_bytes, 1
  %or.cond65 = or i1 %or.cond64, %cmp12, !dbg !2575
  br i1 %or.cond65, label %for.cond15.preheader, label %for.cond41.preheader, !dbg !2575

for.cond41.preheader:                             ; preds = %if.end
    #dbg_value(i32 0, !2544, !DIExpression(), !2558)
  %cmp42112 = icmp sgt i32 %size_y, 0, !dbg !2576
  %cmp51108 = icmp sgt i32 %size_x, 0
  %or.cond = and i1 %cmp42112, %cmp51108, !dbg !2579
  br i1 %or.cond, label %for.body44.us.preheader, label %if.end62, !dbg !2579

for.body44.us.preheader:                          ; preds = %for.cond41.preheader
  %15 = sext i32 %iOutStride to i64, !dbg !2579
  %wide.trip.count128 = zext nneg i32 %size_y to i64, !dbg !2576
  %16 = add nsw i64 %wide.trip.count128, -1, !dbg !2579
  %17 = mul nsw i64 %16, %15, !dbg !2579
  %18 = add nsw i32 %size_x, -1, !dbg !2579
  %19 = zext i32 %18 to i64, !dbg !2579
  %20 = getelementptr i8, ptr %buf, i64 %17, !dbg !2579
  %21 = getelementptr i8, ptr %20, i64 %19, !dbg !2579
  %scevgep = getelementptr i8, ptr %21, i64 1, !dbg !2579
  %22 = shl nuw nsw i64 %19, 1, !dbg !2579
  %23 = zext nneg i32 %size_x to i64, !dbg !2579
  %min.iters.check = icmp ult i32 %size_x, 32
  %stride.check = icmp slt i32 %iOutStride, 0
  %n.vec = and i64 %23, 2147483616
  %24 = shl nuw nsw i64 %n.vec, 1
  %ind.end151 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %23
  br label %for.body44.us, !dbg !2579

for.body44.us:                                    ; preds = %for.body44.us.preheader, %for.cond50.for.inc59_crit_edge.us
  %indvars.iv124 = phi i64 [ 0, %for.body44.us.preheader ], [ %indvars.iv.next125, %for.cond50.for.inc59_crit_edge.us ]
    #dbg_value(i64 %indvars.iv124, !2544, !DIExpression(), !2558)
  %arrayidx46.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv124, !dbg !2580
  %25 = load ptr, ptr %arrayidx46.us, align 8, !dbg !2580
    #dbg_value(ptr %25, !2554, !DIExpression(), !2582)
  %26 = mul nsw i64 %indvars.iv124, %15, !dbg !2583
  %add.ptr49.us = getelementptr inbounds i8, ptr %buf, i64 %26, !dbg !2584
    #dbg_value(ptr %add.ptr49.us, !2557, !DIExpression(), !2582)
    #dbg_value(i32 0, !2543, !DIExpression(), !2558)
  br i1 %min.iters.check, label %for.body53.us.preheader, label %vector.memcheck, !dbg !2585

vector.memcheck:                                  ; preds = %for.body44.us
  %27 = getelementptr i8, ptr %25, i64 %22, !dbg !2585
  %scevgep148 = getelementptr i8, ptr %27, i64 2, !dbg !2585
  %bound0 = icmp ugt ptr %scevgep148, %buf, !dbg !2585
  %bound1 = icmp ult ptr %25, %scevgep, !dbg !2585
  %found.conflict = and i1 %bound0, %bound1, !dbg !2585
  %28 = or i1 %found.conflict, %stride.check, !dbg !2585
  br i1 %28, label %for.body53.us.preheader, label %vector.ph, !dbg !2585

vector.ph:                                        ; preds = %vector.memcheck
  %ind.end = getelementptr i8, ptr %add.ptr49.us, i64 %n.vec, !dbg !2585
  %ind.end149 = getelementptr i8, ptr %25, i64 %24, !dbg !2585
  br label %vector.body, !dbg !2585

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %add.ptr49.us, i64 %index
  %offset.idx = shl i64 %index, 1
  %next.gep156 = getelementptr i8, ptr %25, i64 %offset.idx
  %29 = getelementptr i8, ptr %next.gep156, i64 16, !dbg !2587
  %30 = getelementptr i8, ptr %next.gep156, i64 32, !dbg !2587
  %31 = getelementptr i8, ptr %next.gep156, i64 48, !dbg !2587
  %wide.load = load <8 x i16>, ptr %next.gep156, align 2, !dbg !2587, !alias.scope !2589
  %wide.load160 = load <8 x i16>, ptr %29, align 2, !dbg !2587, !alias.scope !2589
  %wide.load161 = load <8 x i16>, ptr %30, align 2, !dbg !2587, !alias.scope !2589
  %wide.load162 = load <8 x i16>, ptr %31, align 2, !dbg !2587, !alias.scope !2589
  %32 = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !2592
  %33 = trunc <8 x i16> %wide.load160 to <8 x i8>, !dbg !2592
  %34 = trunc <8 x i16> %wide.load161 to <8 x i8>, !dbg !2592
  %35 = trunc <8 x i16> %wide.load162 to <8 x i8>, !dbg !2592
  %36 = getelementptr i8, ptr %next.gep, i64 8, !dbg !2593
  %37 = getelementptr i8, ptr %next.gep, i64 16, !dbg !2593
  %38 = getelementptr i8, ptr %next.gep, i64 24, !dbg !2593
  store <8 x i8> %32, ptr %next.gep, align 1, !dbg !2593, !alias.scope !2594, !noalias !2589
  store <8 x i8> %33, ptr %36, align 1, !dbg !2593, !alias.scope !2594, !noalias !2589
  store <8 x i8> %34, ptr %37, align 1, !dbg !2593, !alias.scope !2594, !noalias !2589
  store <8 x i8> %35, ptr %38, align 1, !dbg !2593, !alias.scope !2594, !noalias !2589
  %index.next = add nuw i64 %index, 32
  %39 = icmp eq i64 %index.next, %n.vec
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !2596

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us.preheader, !dbg !2585

for.body53.us.preheader:                          ; preds = %middle.block, %vector.memcheck, %for.body44.us
  %pDst.0111.us.ph = phi ptr [ %add.ptr49.us, %vector.memcheck ], [ %add.ptr49.us, %for.body44.us ], [ %ind.end, %middle.block ]
  %cur_pixel.0110.us.ph = phi ptr [ %25, %vector.memcheck ], [ %25, %for.body44.us ], [ %ind.end149, %middle.block ]
  %i.1109.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %for.body44.us ], [ %ind.end151, %middle.block ]
  %40 = sub i32 %size_x, %i.1109.us.ph, !dbg !2585
  %xtraiter = and i32 %40, 7, !dbg !2585
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2585
  br i1 %lcmp.mod.not, label %for.body53.us.prol.loopexit, label %for.body53.us.prol, !dbg !2585

for.body53.us.prol:                               ; preds = %for.body53.us.preheader, %for.body53.us.prol
  %pDst.0111.us.prol = phi ptr [ %incdec.ptr55.us.prol, %for.body53.us.prol ], [ %pDst.0111.us.ph, %for.body53.us.preheader ]
  %cur_pixel.0110.us.prol = phi ptr [ %incdec.ptr.us.prol, %for.body53.us.prol ], [ %cur_pixel.0110.us.ph, %for.body53.us.preheader ]
  %i.1109.us.prol = phi i32 [ %inc57.us.prol, %for.body53.us.prol ], [ %i.1109.us.ph, %for.body53.us.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body53.us.prol ], [ 0, %for.body53.us.preheader ]
    #dbg_value(ptr %pDst.0111.us.prol, !2557, !DIExpression(), !2582)
    #dbg_value(ptr %cur_pixel.0110.us.prol, !2554, !DIExpression(), !2582)
    #dbg_value(i32 %i.1109.us.prol, !2543, !DIExpression(), !2558)
  %incdec.ptr.us.prol = getelementptr inbounds i8, ptr %cur_pixel.0110.us.prol, i64 2, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.prol, !2554, !DIExpression(), !2582)
  %41 = load i16, ptr %cur_pixel.0110.us.prol, align 2, !dbg !2587
  %conv54.us.prol = trunc i16 %41 to i8, !dbg !2592
  %incdec.ptr55.us.prol = getelementptr inbounds i8, ptr %pDst.0111.us.prol, i64 1, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.prol, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.prol, ptr %pDst.0111.us.prol, align 1, !dbg !2593
  %inc57.us.prol = add nuw nsw i32 %i.1109.us.prol, 1, !dbg !2602
    #dbg_value(i32 %inc57.us.prol, !2543, !DIExpression(), !2558)
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !2585
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !2585
  br i1 %prol.iter.cmp.not, label %for.body53.us.prol.loopexit, label %for.body53.us.prol, !dbg !2585, !llvm.loop !2603

for.body53.us.prol.loopexit:                      ; preds = %for.body53.us.prol, %for.body53.us.preheader
  %pDst.0111.us.unr = phi ptr [ %pDst.0111.us.ph, %for.body53.us.preheader ], [ %incdec.ptr55.us.prol, %for.body53.us.prol ]
  %cur_pixel.0110.us.unr = phi ptr [ %cur_pixel.0110.us.ph, %for.body53.us.preheader ], [ %incdec.ptr.us.prol, %for.body53.us.prol ]
  %i.1109.us.unr = phi i32 [ %i.1109.us.ph, %for.body53.us.preheader ], [ %inc57.us.prol, %for.body53.us.prol ]
  %42 = sub i32 %i.1109.us.ph, %size_x, !dbg !2585
  %43 = icmp ugt i32 %42, -8, !dbg !2585
  br i1 %43, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us, !dbg !2585

for.body53.us:                                    ; preds = %for.body53.us.prol.loopexit, %for.body53.us
  %pDst.0111.us = phi ptr [ %incdec.ptr55.us.7, %for.body53.us ], [ %pDst.0111.us.unr, %for.body53.us.prol.loopexit ]
  %cur_pixel.0110.us = phi ptr [ %incdec.ptr.us.7, %for.body53.us ], [ %cur_pixel.0110.us.unr, %for.body53.us.prol.loopexit ]
  %i.1109.us = phi i32 [ %inc57.us.7, %for.body53.us ], [ %i.1109.us.unr, %for.body53.us.prol.loopexit ]
    #dbg_value(ptr %pDst.0111.us, !2557, !DIExpression(), !2582)
    #dbg_value(ptr %cur_pixel.0110.us, !2554, !DIExpression(), !2582)
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(), !2558)
  %incdec.ptr.us = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 2, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us, !2554, !DIExpression(), !2582)
  %44 = load i16, ptr %cur_pixel.0110.us, align 2, !dbg !2587
  %conv54.us = trunc i16 %44 to i8, !dbg !2592
  %incdec.ptr55.us = getelementptr inbounds i8, ptr %pDst.0111.us, i64 1, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us, !2557, !DIExpression(), !2582)
  store i8 %conv54.us, ptr %pDst.0111.us, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2558)
  %incdec.ptr.us.1 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 4, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.1, !2554, !DIExpression(), !2582)
  %45 = load i16, ptr %incdec.ptr.us, align 2, !dbg !2587
  %conv54.us.1 = trunc i16 %45 to i8, !dbg !2592
  %incdec.ptr55.us.1 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 2, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.1, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.1, ptr %incdec.ptr55.us, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2558)
  %incdec.ptr.us.2 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 6, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.2, !2554, !DIExpression(), !2582)
  %46 = load i16, ptr %incdec.ptr.us.1, align 2, !dbg !2587
  %conv54.us.2 = trunc i16 %46 to i8, !dbg !2592
  %incdec.ptr55.us.2 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 3, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.2, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.2, ptr %incdec.ptr55.us.1, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !2558)
  %incdec.ptr.us.3 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 8, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.3, !2554, !DIExpression(), !2582)
  %47 = load i16, ptr %incdec.ptr.us.2, align 2, !dbg !2587
  %conv54.us.3 = trunc i16 %47 to i8, !dbg !2592
  %incdec.ptr55.us.3 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 4, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.3, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.3, ptr %incdec.ptr55.us.2, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2558)
  %incdec.ptr.us.4 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 10, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.4, !2554, !DIExpression(), !2582)
  %48 = load i16, ptr %incdec.ptr.us.3, align 2, !dbg !2587
  %conv54.us.4 = trunc i16 %48 to i8, !dbg !2592
  %incdec.ptr55.us.4 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 5, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.4, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.4, ptr %incdec.ptr55.us.3, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2558)
  %incdec.ptr.us.5 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 12, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.5, !2554, !DIExpression(), !2582)
  %49 = load i16, ptr %incdec.ptr.us.4, align 2, !dbg !2587
  %conv54.us.5 = trunc i16 %49 to i8, !dbg !2592
  %incdec.ptr55.us.5 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 6, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.5, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.5, ptr %incdec.ptr55.us.4, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2558)
  %incdec.ptr.us.6 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 14, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.6, !2554, !DIExpression(), !2582)
  %50 = load i16, ptr %incdec.ptr.us.5, align 2, !dbg !2587
  %conv54.us.6 = trunc i16 %50 to i8, !dbg !2592
  %incdec.ptr55.us.6 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 7, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.6, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.6, ptr %incdec.ptr55.us.5, align 1, !dbg !2593
    #dbg_value(i32 %i.1109.us, !2543, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !2558)
  %incdec.ptr.us.7 = getelementptr inbounds i8, ptr %cur_pixel.0110.us, i64 16, !dbg !2600
    #dbg_value(ptr %incdec.ptr.us.7, !2554, !DIExpression(), !2582)
  %51 = load i16, ptr %incdec.ptr.us.6, align 2, !dbg !2587
  %conv54.us.7 = trunc i16 %51 to i8, !dbg !2592
  %incdec.ptr55.us.7 = getelementptr inbounds i8, ptr %pDst.0111.us, i64 8, !dbg !2601
    #dbg_value(ptr %incdec.ptr55.us.7, !2557, !DIExpression(), !2582)
  store i8 %conv54.us.7, ptr %incdec.ptr55.us.6, align 1, !dbg !2593
  %inc57.us.7 = add nuw nsw i32 %i.1109.us, 8, !dbg !2602
    #dbg_value(i32 %inc57.us.7, !2543, !DIExpression(), !2558)
  %exitcond123.not.7 = icmp eq i32 %inc57.us.7, %size_x, !dbg !2605
  br i1 %exitcond123.not.7, label %for.cond50.for.inc59_crit_edge.us, label %for.body53.us, !dbg !2585, !llvm.loop !2606

for.cond50.for.inc59_crit_edge.us:                ; preds = %for.body53.us.prol.loopexit, %for.body53.us, %middle.block
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1, !dbg !2607
    #dbg_value(i64 %indvars.iv.next125, !2544, !DIExpression(), !2558)
  %exitcond129.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count128, !dbg !2576
  br i1 %exitcond129.not, label %if.end62, label %for.body44.us, !dbg !2579, !llvm.loop !2608

for.cond15.preheader.loopexit.unr-lcssa:          ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0, !dbg !2568
  br i1 %lcmp.mod165.not, label %for.cond15.preheader, label %for.body.epil, !dbg !2568

for.body.epil:                                    ; preds = %for.cond15.preheader.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond15.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.cond15.preheader.loopexit.unr-lcssa ]
    #dbg_value(i64 %indvars.iv.epil, !2544, !DIExpression(), !2558)
  %52 = mul nsw i64 %indvars.iv.epil, %2, !dbg !2569
  %add.ptr.epil = getelementptr inbounds i8, ptr %buf, i64 %52, !dbg !2570
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.epil, i8 0, i64 %conv, i1 false), !dbg !2571
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !2572
    #dbg_value(i64 %indvars.iv.next.epil, !2544, !DIExpression(), !2558)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !2568
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter164, !dbg !2568
  br i1 %epil.iter.cmp.not, label %for.cond15.preheader, label %for.body.epil, !dbg !2568, !llvm.loop !2610

for.cond15.preheader:                             ; preds = %for.cond15.preheader.loopexit.unr-lcssa, %for.body.epil, %for.cond.preheader, %if.end
  %size.0145 = phi i32 [ %symbol_size_in_bytes, %if.end ], [ 2, %for.cond.preheader ], [ 2, %for.body.epil ], [ 2, %for.cond15.preheader.loopexit.unr-lcssa ]
  %sub16 = sub nsw i32 %size_y, %crop_bottom
    #dbg_value(i32 %crop_top, !2543, !DIExpression(), !2558)
  %cmp17116 = icmp sgt i32 %sub16, %crop_top, !dbg !2611
  br i1 %cmp17116, label %for.body19.lr.ph, label %if.end62, !dbg !2612

for.body19.lr.ph:                                 ; preds = %for.cond15.preheader
  %sub23 = sub nsw i32 %size_x, %crop_right
  %cmp24114 = icmp sgt i32 %sub23, %crop_left
  %conv33 = sext i32 %size.0145 to i64
  br i1 %cmp24114, label %for.body19.us.preheader, label %if.end62

for.body19.us.preheader:                          ; preds = %for.body19.lr.ph
  %53 = sext i32 %crop_left to i64, !dbg !2612
  %54 = sext i32 %symbol_size_in_bytes to i64, !dbg !2612
  %55 = sext i32 %sub23 to i64, !dbg !2612
  %56 = sext i32 %crop_top to i64, !dbg !2612
  %57 = sext i32 %iOutStride to i64, !dbg !2612
  %58 = sext i32 %sub16 to i64, !dbg !2612
  br label %for.body19.us, !dbg !2612

for.body19.us:                                    ; preds = %for.body19.us.preheader, %for.cond22.for.end36_crit_edge.us
  %indvars.iv136 = phi i64 [ %56, %for.body19.us.preheader ], [ %indvars.iv.next137, %for.cond22.for.end36_crit_edge.us ]
    #dbg_value(i64 %indvars.iv136, !2543, !DIExpression(), !2558)
  %59 = sub nsw i64 %indvars.iv136, %56, !dbg !2613
  %60 = mul nsw i64 %59, %57, !dbg !2614
    #dbg_value(i64 %60, !2548, !DIExpression(), !2615)
    #dbg_value(i32 %crop_left, !2544, !DIExpression(), !2558)
  %arrayidx.us = getelementptr inbounds ptr, ptr %imgX, i64 %indvars.iv136
  %invariant.gep = getelementptr i8, ptr %buf, i64 %60, !dbg !2616
  br label %for.body26.us, !dbg !2616

for.body26.us:                                    ; preds = %for.body19.us, %for.body26.us
  %indvars.iv130 = phi i64 [ %53, %for.body19.us ], [ %indvars.iv.next131, %for.body26.us ]
    #dbg_value(i64 %indvars.iv130, !2544, !DIExpression(), !2558)
  %61 = sub nsw i64 %indvars.iv130, %53, !dbg !2618
  %62 = mul nsw i64 %61, %54, !dbg !2621
  %gep = getelementptr i8, ptr %invariant.gep, i64 %62, !dbg !2622
  %63 = load ptr, ptr %arrayidx.us, align 8, !dbg !2623
  %arrayidx32.us = getelementptr inbounds i16, ptr %63, i64 %indvars.iv130, !dbg !2623
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 2 %arrayidx32.us, i64 %conv33, i1 false), !dbg !2624
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1, !dbg !2625
    #dbg_value(i64 %indvars.iv.next131, !2544, !DIExpression(), !2558)
  %cmp24.us = icmp slt i64 %indvars.iv.next131, %55, !dbg !2626
  br i1 %cmp24.us, label %for.body26.us, label %for.cond22.for.end36_crit_edge.us, !dbg !2616, !llvm.loop !2627

for.cond22.for.end36_crit_edge.us:                ; preds = %for.body26.us
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1, !dbg !2629
    #dbg_value(i64 %indvars.iv.next137, !2543, !DIExpression(), !2558)
  %cmp17.us = icmp slt i64 %indvars.iv.next137, %58, !dbg !2611
  br i1 %cmp17.us, label %for.body19.us, label %if.end62, !dbg !2612, !llvm.loop !2630

if.end62:                                         ; preds = %for.cond50.for.inc59_crit_edge.us, %for.cond22.for.end36_crit_edge.us, %for.body19.lr.ph, %for.cond41.preheader, %for.cond15.preheader
  ret void, !dbg !2632
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn nounwind }

!llvm.dbg.cu = !{!1243}
!llvm.module.flags = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324}
!llvm.ident = !{!1325}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SubWidthC", scope: !2, file: !3, line: 460, type: !1251, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "write_out_picture", scope: !3, file: !3, line: 455, type: !4, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1286)
!3 = !DIFile(filename: "ldecod_src/output.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2eec886a5c441a38ea889cb22edba750")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !431, !23}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !8, line: 836, baseType: !9)
!8 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !8, line: 566, size: 6855040, elements: !10)
!10 = !{!11, !121, !179, !283, !285, !287, !345, !347, !348, !349, !350, !351, !354, !374, !386, !387, !388, !389, !390, !391, !976, !977, !979, !980, !981, !982, !983, !984, !985, !987, !990, !991, !993, !994, !995, !996, !997, !999, !1000, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1124, !1125, !1127, !1128, !1131, !1134, !1135, !1136, !1140, !1143, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1155, !1158, !1159, !1160, !1161, !1178, !1183, !1187, !1191, !1195, !1196, !1200, !1201, !1205, !1206, !1210, !1231, !1232, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !9, file: !8, line: 568, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !8, line: 850, size: 32128, elements: !14)
!14 = !{!15, !20, !21, !22, !24, !25, !26, !27, !28, !29, !73, !74, !75, !76, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !13, file: !8, line: 852, baseType: !16, size: 2040)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2040, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 255)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !13, file: !8, line: 853, baseType: !16, size: 2040, offset: 2040)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !13, file: !8, line: 854, baseType: !16, size: 2040, offset: 4080)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !13, file: !8, line: 856, baseType: !23, size: 32, offset: 6144)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !13, file: !8, line: 857, baseType: !23, size: 32, offset: 6176)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !13, file: !8, line: 858, baseType: !23, size: 32, offset: 6208)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !13, file: !8, line: 859, baseType: !23, size: 32, offset: 6240)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !13, file: !8, line: 860, baseType: !23, size: 32, offset: 6272)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !13, file: !8, line: 861, baseType: !23, size: 32, offset: 6304)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !13, file: !8, line: 864, baseType: !30, size: 1088, offset: 6336)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !31, line: 52, baseType: !32)
!31 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !31, line: 30, size: 1088, elements: !33)
!33 = !{!34, !43, !51, !53, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !32, file: !31, line: 32, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !31, line: 28, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 22, baseType: !23, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!39 = !DIEnumerator(name: "YUV400", value: 0)
!40 = !DIEnumerator(name: "YUV420", value: 1)
!41 = !DIEnumerator(name: "YUV422", value: 2)
!42 = !DIEnumerator(name: "YUV444", value: 3)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !32, file: !31, line: 33, baseType: !44, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !31, line: 20, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 15, baseType: !23, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!48 = !DIEnumerator(name: "CM_YUV", value: 0)
!49 = !DIEnumerator(name: "CM_RGB", value: 1)
!50 = !DIEnumerator(name: "CM_XYZ", value: 2)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !32, file: !31, line: 34, baseType: !52, size: 64, offset: 64)
!52 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !32, file: !31, line: 35, baseType: !54, size: 96, offset: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !32, file: !31, line: 36, baseType: !54, size: 96, offset: 224)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !32, file: !31, line: 37, baseType: !23, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !32, file: !31, line: 38, baseType: !23, size: 32, offset: 352)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !32, file: !31, line: 39, baseType: !23, size: 32, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !32, file: !31, line: 40, baseType: !23, size: 32, offset: 416)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !32, file: !31, line: 41, baseType: !23, size: 32, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !32, file: !31, line: 42, baseType: !23, size: 32, offset: 480)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !32, file: !31, line: 43, baseType: !23, size: 32, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !32, file: !31, line: 44, baseType: !23, size: 32, offset: 544)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !32, file: !31, line: 45, baseType: !54, size: 96, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !32, file: !31, line: 46, baseType: !23, size: 32, offset: 672)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !32, file: !31, line: 47, baseType: !54, size: 96, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !32, file: !31, line: 48, baseType: !54, size: 96, offset: 800)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !32, file: !31, line: 49, baseType: !54, size: 96, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !32, file: !31, line: 50, baseType: !23, size: 32, offset: 992)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !32, file: !31, line: 51, baseType: !23, size: 32, offset: 1024)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !13, file: !8, line: 865, baseType: !30, size: 1088, offset: 7424)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !13, file: !8, line: 867, baseType: !23, size: 32, offset: 8512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !13, file: !8, line: 868, baseType: !23, size: 32, offset: 8544)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !13, file: !8, line: 869, baseType: !77, size: 7744, offset: 8576)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !78, line: 60, baseType: !79)
!78 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !78, line: 34, size: 7744, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !79, file: !78, line: 37, baseType: !16, size: 2040)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !79, file: !78, line: 38, baseType: !16, size: 2040, offset: 2040)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !79, file: !78, line: 39, baseType: !16, size: 2040, offset: 4080)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !79, file: !78, line: 40, baseType: !23, size: 32, offset: 6144)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !79, file: !78, line: 41, baseType: !86, size: 32, offset: 6176)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !78, line: 32, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 25, baseType: !23, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94}
!89 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!90 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!91 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!92 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!93 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!94 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !79, file: !78, line: 42, baseType: !30, size: 1088, offset: 6208)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !79, file: !78, line: 43, baseType: !23, size: 32, offset: 7296)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !79, file: !78, line: 44, baseType: !23, size: 32, offset: 7328)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !79, file: !78, line: 45, baseType: !23, size: 32, offset: 7360)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !79, file: !78, line: 46, baseType: !23, size: 32, offset: 7392)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !79, file: !78, line: 47, baseType: !23, size: 32, offset: 7424)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !79, file: !78, line: 48, baseType: !23, size: 32, offset: 7456)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !79, file: !78, line: 49, baseType: !23, size: 32, offset: 7488)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !79, file: !78, line: 50, baseType: !23, size: 32, offset: 7520)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !79, file: !78, line: 51, baseType: !23, size: 32, offset: 7552)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !79, file: !78, line: 52, baseType: !23, size: 32, offset: 7584)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !79, file: !78, line: 53, baseType: !23, size: 32, offset: 7616)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !79, file: !78, line: 56, baseType: !108, size: 64, offset: 7680)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !13, file: !8, line: 870, baseType: !77, size: 7744, offset: 16320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !13, file: !8, line: 871, baseType: !77, size: 7744, offset: 24064)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !13, file: !8, line: 873, baseType: !23, size: 32, offset: 31808)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !13, file: !8, line: 884, baseType: !23, size: 32, offset: 31840)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !13, file: !8, line: 885, baseType: !23, size: 32, offset: 31872)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !13, file: !8, line: 886, baseType: !23, size: 32, offset: 31904)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !13, file: !8, line: 890, baseType: !23, size: 32, offset: 31936)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !13, file: !8, line: 893, baseType: !23, size: 32, offset: 31968)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !13, file: !8, line: 894, baseType: !23, size: 32, offset: 32000)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !13, file: !8, line: 895, baseType: !23, size: 32, offset: 32032)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !13, file: !8, line: 897, baseType: !23, size: 32, offset: 32064)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !13, file: !8, line: 899, baseType: !23, size: 32, offset: 32096)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !9, file: !8, line: 569, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !124, line: 138, baseType: !125)
!124 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 94, size: 17728, elements: !126)
!126 = !{!127, !128, !130, !131, !132, !133, !134, !138, !143, !147, !150, !151, !152, !153, !154, !158, !159, !160, !161, !162, !163, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !125, file: !124, line: 96, baseType: !23, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !125, file: !124, line: 97, baseType: !129, size: 32, offset: 32)
!129 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !125, file: !124, line: 98, baseType: !129, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !125, file: !124, line: 99, baseType: !23, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !125, file: !124, line: 100, baseType: !23, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !125, file: !124, line: 102, baseType: !23, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !125, file: !124, line: 103, baseType: !135, size: 384, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 384, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 12)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !125, file: !124, line: 104, baseType: !139, size: 3072, offset: 576)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 3072, elements: !140)
!140 = !{!141, !142}
!141 = !DISubrange(count: 6)
!142 = !DISubrange(count: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !125, file: !124, line: 105, baseType: !144, size: 12288, offset: 3648)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 12288, elements: !145)
!145 = !{!141, !146}
!146 = !DISubrange(count: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !125, file: !124, line: 106, baseType: !148, size: 192, offset: 15936)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !149)
!149 = !{!141}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !125, file: !124, line: 107, baseType: !148, size: 192, offset: 16128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !125, file: !124, line: 110, baseType: !23, size: 32, offset: 16320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !125, file: !124, line: 111, baseType: !129, size: 32, offset: 16352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !125, file: !124, line: 112, baseType: !129, size: 32, offset: 16384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !125, file: !124, line: 114, baseType: !155, size: 256, offset: 16416)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !125, file: !124, line: 116, baseType: !155, size: 256, offset: 16672)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !125, file: !124, line: 117, baseType: !155, size: 256, offset: 16928)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !125, file: !124, line: 119, baseType: !23, size: 32, offset: 17184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !125, file: !124, line: 120, baseType: !129, size: 32, offset: 17216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !125, file: !124, line: 122, baseType: !129, size: 32, offset: 17248)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !125, file: !124, line: 123, baseType: !164, size: 64, offset: 17280)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !166, line: 21, baseType: !167)
!166 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !125, file: !124, line: 125, baseType: !23, size: 32, offset: 17344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !125, file: !124, line: 126, baseType: !23, size: 32, offset: 17376)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !125, file: !124, line: 127, baseType: !23, size: 32, offset: 17408)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !125, file: !124, line: 128, baseType: !129, size: 32, offset: 17440)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !125, file: !124, line: 129, baseType: !23, size: 32, offset: 17472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !125, file: !124, line: 130, baseType: !23, size: 32, offset: 17504)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !125, file: !124, line: 131, baseType: !23, size: 32, offset: 17536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !125, file: !124, line: 133, baseType: !23, size: 32, offset: 17568)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !125, file: !124, line: 135, baseType: !23, size: 32, offset: 17600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !125, file: !124, line: 136, baseType: !23, size: 32, offset: 17632)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !125, file: !124, line: 137, baseType: !23, size: 32, offset: 17664)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !9, file: !8, line: 570, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !124, line: 197, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 142, size: 33024, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !281, !282}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !182, file: !124, line: 144, baseType: !23, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !182, file: !124, line: 146, baseType: !129, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !182, file: !124, line: 147, baseType: !23, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !182, file: !124, line: 148, baseType: !23, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !182, file: !124, line: 149, baseType: !23, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !182, file: !124, line: 150, baseType: !23, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !182, file: !124, line: 152, baseType: !23, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !182, file: !124, line: 154, baseType: !129, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !182, file: !124, line: 155, baseType: !129, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !182, file: !124, line: 156, baseType: !129, size: 32, offset: 288)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !182, file: !124, line: 158, baseType: !23, size: 32, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !182, file: !124, line: 159, baseType: !135, size: 384, offset: 352)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !182, file: !124, line: 160, baseType: !139, size: 3072, offset: 736)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !182, file: !124, line: 161, baseType: !144, size: 12288, offset: 3808)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !182, file: !124, line: 162, baseType: !148, size: 192, offset: 16096)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !182, file: !124, line: 163, baseType: !148, size: 192, offset: 16288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !182, file: !124, line: 165, baseType: !129, size: 32, offset: 16480)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !182, file: !124, line: 166, baseType: !129, size: 32, offset: 16512)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !182, file: !124, line: 167, baseType: !129, size: 32, offset: 16544)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !182, file: !124, line: 168, baseType: !129, size: 32, offset: 16576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !182, file: !124, line: 170, baseType: !129, size: 32, offset: 16608)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !182, file: !124, line: 172, baseType: !23, size: 32, offset: 16640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !182, file: !124, line: 173, baseType: !23, size: 32, offset: 16672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !182, file: !124, line: 174, baseType: !23, size: 32, offset: 16704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !182, file: !124, line: 175, baseType: !129, size: 32, offset: 16736)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !182, file: !124, line: 177, baseType: !210, size: 8192, offset: 16768)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !182, file: !124, line: 178, baseType: !129, size: 32, offset: 24960)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !182, file: !124, line: 179, baseType: !23, size: 32, offset: 24992)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !182, file: !124, line: 180, baseType: !129, size: 32, offset: 25024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !182, file: !124, line: 181, baseType: !129, size: 32, offset: 25056)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !182, file: !124, line: 182, baseType: !23, size: 32, offset: 25088)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !182, file: !124, line: 184, baseType: !23, size: 32, offset: 25120)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !182, file: !124, line: 185, baseType: !23, size: 32, offset: 25152)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !182, file: !124, line: 186, baseType: !23, size: 32, offset: 25184)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !182, file: !124, line: 187, baseType: !129, size: 32, offset: 25216)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !182, file: !124, line: 188, baseType: !129, size: 32, offset: 25248)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !182, file: !124, line: 189, baseType: !129, size: 32, offset: 25280)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !182, file: !124, line: 190, baseType: !129, size: 32, offset: 25312)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !182, file: !124, line: 191, baseType: !23, size: 32, offset: 25344)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !182, file: !124, line: 192, baseType: !227, size: 7584, offset: 25376)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !124, line: 90, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 53, size: 7584, elements: !229)
!229 = !{!230, !231, !232, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !228, file: !124, line: 55, baseType: !23, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !228, file: !124, line: 56, baseType: !129, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !228, file: !124, line: 57, baseType: !233, size: 16, offset: 64)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !228, file: !124, line: 58, baseType: !233, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !228, file: !124, line: 59, baseType: !23, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !228, file: !124, line: 60, baseType: !23, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !228, file: !124, line: 61, baseType: !23, size: 32, offset: 160)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !228, file: !124, line: 62, baseType: !129, size: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !228, file: !124, line: 63, baseType: !23, size: 32, offset: 224)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !228, file: !124, line: 64, baseType: !23, size: 32, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !228, file: !124, line: 65, baseType: !129, size: 32, offset: 288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !228, file: !124, line: 66, baseType: !129, size: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !228, file: !124, line: 67, baseType: !129, size: 32, offset: 352)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !228, file: !124, line: 68, baseType: !23, size: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !228, file: !124, line: 69, baseType: !129, size: 32, offset: 416)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !228, file: !124, line: 70, baseType: !129, size: 32, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !228, file: !124, line: 71, baseType: !23, size: 32, offset: 480)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !228, file: !124, line: 72, baseType: !129, size: 32, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !228, file: !124, line: 73, baseType: !129, size: 32, offset: 544)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !228, file: !124, line: 74, baseType: !23, size: 32, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !228, file: !124, line: 75, baseType: !23, size: 32, offset: 608)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !228, file: !124, line: 76, baseType: !253, size: 3296, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !124, line: 50, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 38, size: 3296, elements: !255)
!255 = !{!256, !257, !258, !259, !263, !264, !265, !266, !267, !268}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !254, file: !124, line: 40, baseType: !129, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !254, file: !124, line: 41, baseType: !129, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !254, file: !124, line: 42, baseType: !129, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !254, file: !124, line: 43, baseType: !260, size: 1024, offset: 96)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1024, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !254, file: !124, line: 44, baseType: !260, size: 1024, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !254, file: !124, line: 45, baseType: !260, size: 1024, offset: 2144)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !254, file: !124, line: 46, baseType: !129, size: 32, offset: 3168)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !254, file: !124, line: 47, baseType: !129, size: 32, offset: 3200)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !254, file: !124, line: 48, baseType: !129, size: 32, offset: 3232)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !254, file: !124, line: 49, baseType: !129, size: 32, offset: 3264)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !228, file: !124, line: 77, baseType: !23, size: 32, offset: 3936)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !228, file: !124, line: 78, baseType: !253, size: 3296, offset: 3968)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !228, file: !124, line: 80, baseType: !23, size: 32, offset: 7264)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !228, file: !124, line: 81, baseType: !23, size: 32, offset: 7296)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !228, file: !124, line: 82, baseType: !23, size: 32, offset: 7328)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !228, file: !124, line: 83, baseType: !23, size: 32, offset: 7360)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !228, file: !124, line: 84, baseType: !129, size: 32, offset: 7392)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !228, file: !124, line: 85, baseType: !129, size: 32, offset: 7424)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !228, file: !124, line: 86, baseType: !129, size: 32, offset: 7456)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !228, file: !124, line: 87, baseType: !129, size: 32, offset: 7488)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !228, file: !124, line: 88, baseType: !129, size: 32, offset: 7520)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !228, file: !124, line: 89, baseType: !129, size: 32, offset: 7552)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !182, file: !124, line: 193, baseType: !129, size: 32, offset: 32960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !182, file: !124, line: 195, baseType: !23, size: 32, offset: 32992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !9, file: !8, line: 571, baseType: !284, size: 1056768, offset: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1056768, elements: !261)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !9, file: !8, line: 572, baseType: !286, size: 4538368, offset: 1056960)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 4538368, elements: !211)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !9, file: !8, line: 575, baseType: !288, size: 64, offset: 5595328)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !124, line: 256, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 228, size: 37312, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !312, !313, !314, !315}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !290, file: !124, line: 230, baseType: !181, size: 33024)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !290, file: !124, line: 232, baseType: !129, size: 32, offset: 33024)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !290, file: !124, line: 233, baseType: !23, size: 32, offset: 33056)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !290, file: !124, line: 234, baseType: !108, size: 64, offset: 33088)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !290, file: !124, line: 235, baseType: !108, size: 64, offset: 33152)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !290, file: !124, line: 236, baseType: !298, size: 64, offset: 33216)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !290, file: !124, line: 237, baseType: !108, size: 64, offset: 33280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !290, file: !124, line: 238, baseType: !298, size: 64, offset: 33344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !290, file: !124, line: 240, baseType: !108, size: 64, offset: 33408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !290, file: !124, line: 241, baseType: !298, size: 64, offset: 33472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !290, file: !124, line: 242, baseType: !108, size: 64, offset: 33536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !290, file: !124, line: 243, baseType: !298, size: 64, offset: 33600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !290, file: !124, line: 245, baseType: !23, size: 32, offset: 33664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !290, file: !124, line: 246, baseType: !108, size: 64, offset: 33728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !290, file: !124, line: 247, baseType: !108, size: 64, offset: 33792)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !290, file: !124, line: 248, baseType: !298, size: 64, offset: 33856)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !290, file: !124, line: 249, baseType: !298, size: 64, offset: 33920)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !290, file: !124, line: 250, baseType: !311, size: 64, offset: 33984)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !290, file: !124, line: 251, baseType: !298, size: 64, offset: 34048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !290, file: !124, line: 253, baseType: !129, size: 32, offset: 34112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !290, file: !124, line: 254, baseType: !23, size: 32, offset: 34144)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !290, file: !124, line: 255, baseType: !316, size: 3136, offset: 34176)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !124, line: 226, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !124, line: 200, size: 3136, elements: !318)
!318 = !{!319, !320, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !338, !339, !341, !342, !343, !344}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !317, file: !124, line: 202, baseType: !23, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !317, file: !124, line: 203, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !317, file: !124, line: 204, baseType: !108, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !317, file: !124, line: 205, baseType: !298, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !317, file: !124, line: 206, baseType: !321, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !317, file: !124, line: 207, baseType: !108, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !317, file: !124, line: 208, baseType: !108, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !317, file: !124, line: 209, baseType: !321, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !317, file: !124, line: 210, baseType: !321, size: 64, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !317, file: !124, line: 211, baseType: !321, size: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !317, file: !124, line: 212, baseType: !321, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !317, file: !124, line: 213, baseType: !321, size: 64, offset: 704)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !317, file: !124, line: 216, baseType: !322, size: 8, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !317, file: !124, line: 217, baseType: !322, size: 8, offset: 776)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !317, file: !124, line: 218, baseType: !322, size: 8, offset: 784)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !317, file: !124, line: 219, baseType: !337, size: 1024, offset: 800)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1024, elements: !261)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !317, file: !124, line: 220, baseType: !337, size: 1024, offset: 1824)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !317, file: !124, line: 221, baseType: !340, size: 256, offset: 2848)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !261)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !317, file: !124, line: 222, baseType: !322, size: 8, offset: 3104)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !317, file: !124, line: 223, baseType: !322, size: 8, offset: 3112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !317, file: !124, line: 224, baseType: !322, size: 8, offset: 3120)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !317, file: !124, line: 225, baseType: !322, size: 8, offset: 3128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !9, file: !8, line: 577, baseType: !346, size: 1193984, offset: 5595392)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 1193984, elements: !261)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !9, file: !8, line: 578, baseType: !23, size: 32, offset: 6789376)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !9, file: !8, line: 579, baseType: !23, size: 32, offset: 6789408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !9, file: !8, line: 580, baseType: !23, size: 32, offset: 6789440)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !9, file: !8, line: 581, baseType: !23, size: 32, offset: 6789472)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !9, file: !8, line: 584, baseType: !352, size: 64, offset: 6789504)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !8, line: 584, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !9, file: !8, line: 586, baseType: !355, size: 64, offset: 6789568)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !8, line: 902, size: 416, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !356, file: !8, line: 904, baseType: !129, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !356, file: !8, line: 905, baseType: !129, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !356, file: !8, line: 906, baseType: !23, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !356, file: !8, line: 907, baseType: !129, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !356, file: !8, line: 908, baseType: !23, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !356, file: !8, line: 909, baseType: !364, size: 64, offset: 160)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 2)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !356, file: !8, line: 910, baseType: !165, size: 8, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !356, file: !8, line: 911, baseType: !165, size: 8, offset: 232)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !356, file: !8, line: 912, baseType: !23, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !356, file: !8, line: 913, baseType: !23, size: 32, offset: 288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !356, file: !8, line: 915, baseType: !23, size: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !356, file: !8, line: 916, baseType: !23, size: 32, offset: 352)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !356, file: !8, line: 917, baseType: !23, size: 32, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !9, file: !8, line: 587, baseType: !375, size: 64, offset: 6789632)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !8, line: 839, size: 512, elements: !377)
!377 = !{!378, !379, !382, !383, !384, !385}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !376, file: !8, line: 841, baseType: !23, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !376, file: !8, line: 842, baseType: !380, size: 96, offset: 32)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 96, elements: !55)
!381 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !376, file: !8, line: 843, baseType: !380, size: 96, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !376, file: !8, line: 844, baseType: !380, size: 96, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !376, file: !8, line: 845, baseType: !380, size: 96, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !376, file: !8, line: 846, baseType: !380, size: 96, offset: 416)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !9, file: !8, line: 588, baseType: !23, size: 32, offset: 6789696)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !9, file: !8, line: 591, baseType: !129, size: 32, offset: 6789728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !9, file: !8, line: 592, baseType: !23, size: 32, offset: 6789760)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !9, file: !8, line: 593, baseType: !23, size: 32, offset: 6789792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !9, file: !8, line: 594, baseType: !23, size: 32, offset: 6789824)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !9, file: !8, line: 595, baseType: !392, size: 64, offset: 6789888)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !8, line: 542, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !8, line: 341, size: 109184, elements: !396)
!396 = !{!397, !399, !400, !401, !402, !403, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !631, !633, !804, !833, !860, !863, !864, !866, !867, !868, !869, !870, !871, !872, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !899, !900, !901, !902, !903, !904, !907, !908, !911, !912, !914, !917, !918, !919, !920, !921, !922, !923, !924, !925, !927, !928, !929, !930, !931, !934, !935, !936, !940, !944, !948, !952, !956, !957, !958, !959, !963, !964, !965, !966, !967, !968, !969, !970, !971, !973, !974}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !395, file: !8, line: 343, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !395, file: !8, line: 344, baseType: !12, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !395, file: !8, line: 345, baseType: !122, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !395, file: !8, line: 346, baseType: !180, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !395, file: !8, line: 347, baseType: !23, size: 32, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !395, file: !8, line: 350, baseType: !404, size: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !406, line: 186, size: 33408, elements: !407)
!406 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!407 = !{!408, !409, !412, !565, !566, !567, !568, !569, !570, !571, !572, !573, !577, !578, !579}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !405, file: !406, line: 188, baseType: !6, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !405, file: !406, line: 189, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !8, line: 900, baseType: !13)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !405, file: !406, line: 190, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !406, line: 182, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !406, line: 152, size: 768, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !560, !561, !562, !563, !564}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !416, file: !406, line: 154, baseType: !23, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !416, file: !406, line: 155, baseType: !23, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !416, file: !406, line: 156, baseType: !23, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !416, file: !406, line: 157, baseType: !23, size: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !416, file: !406, line: 159, baseType: !23, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !416, file: !406, line: 161, baseType: !129, size: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !416, file: !406, line: 162, baseType: !129, size: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !416, file: !406, line: 164, baseType: !23, size: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !416, file: !406, line: 165, baseType: !23, size: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !416, file: !406, line: 166, baseType: !23, size: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !416, file: !406, line: 167, baseType: !23, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !416, file: !406, line: 170, baseType: !23, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !416, file: !406, line: 172, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !406, line: 138, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !406, line: 46, size: 3328, elements: !434)
!434 = !{!435, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !480, !482, !483, !500, !502, !506, !508, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !433, file: !406, line: 48, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !437, line: 140, baseType: !438)
!437 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!438 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !437, line: 135, baseType: !129, size: 32, elements: !439)
!439 = !{!440, !441, !442}
!440 = !DIEnumerator(name: "FRAME", value: 0)
!441 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!442 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !433, file: !406, line: 50, baseType: !23, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !433, file: !406, line: 51, baseType: !23, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !433, file: !406, line: 52, baseType: !23, size: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !433, file: !406, line: 53, baseType: !23, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !433, file: !406, line: 54, baseType: !129, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !433, file: !406, line: 55, baseType: !129, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !433, file: !406, line: 57, baseType: !23, size: 32, offset: 224)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !433, file: !406, line: 58, baseType: !23, size: 32, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !433, file: !406, line: 59, baseType: !23, size: 32, offset: 288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !433, file: !406, line: 61, baseType: !165, size: 8, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !433, file: !406, line: 62, baseType: !23, size: 32, offset: 352)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !433, file: !406, line: 63, baseType: !23, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !433, file: !406, line: 64, baseType: !23, size: 32, offset: 416)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !433, file: !406, line: 65, baseType: !23, size: 32, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !433, file: !406, line: 67, baseType: !458, size: 16, offset: 480)
!458 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !433, file: !406, line: 69, baseType: !23, size: 32, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !433, file: !406, line: 69, baseType: !23, size: 32, offset: 544)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !433, file: !406, line: 69, baseType: !23, size: 32, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !433, file: !406, line: 69, baseType: !23, size: 32, offset: 608)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !433, file: !406, line: 70, baseType: !23, size: 32, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !433, file: !406, line: 70, baseType: !23, size: 32, offset: 672)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !433, file: !406, line: 70, baseType: !23, size: 32, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !433, file: !406, line: 70, baseType: !23, size: 32, offset: 736)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !433, file: !406, line: 71, baseType: !23, size: 32, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !433, file: !406, line: 72, baseType: !23, size: 32, offset: 800)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !433, file: !406, line: 73, baseType: !129, size: 32, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !433, file: !406, line: 74, baseType: !129, size: 32, offset: 864)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !433, file: !406, line: 75, baseType: !23, size: 32, offset: 896)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !433, file: !406, line: 75, baseType: !23, size: 32, offset: 928)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !433, file: !406, line: 76, baseType: !23, size: 32, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !433, file: !406, line: 76, baseType: !23, size: 32, offset: 992)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !433, file: !406, line: 79, baseType: !476, size: 64, offset: 1024)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !166, line: 41, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !166, line: 23, baseType: !233)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !433, file: !406, line: 80, baseType: !481, size: 64, offset: 1088)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !433, file: !406, line: 81, baseType: !481, size: 64, offset: 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !433, file: !406, line: 84, baseType: !484, size: 64, offset: 1216)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !406, line: 36, size: 256, elements: !487)
!487 = !{!488, !491, !498}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !486, file: !406, line: 38, baseType: !489, size: 128)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 128, elements: !365)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !486, file: !406, line: 39, baseType: !492, size: 64, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 64, elements: !365)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !8, line: 104, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 100, size: 32, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !494, file: !8, line: 102, baseType: !458, size: 16)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !494, file: !8, line: 103, baseType: !458, size: 16, offset: 16)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !486, file: !406, line: 40, baseType: !499, size: 16, offset: 192)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 16, elements: !365)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !433, file: !406, line: 85, baseType: !501, size: 192, offset: 1280)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 192, elements: !55)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !433, file: !406, line: 87, baseType: !503, size: 64, offset: 1472)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !406, line: 29, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !503, file: !406, line: 31, baseType: !164, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !433, file: !406, line: 88, baseType: !507, size: 192, offset: 1536)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !55)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !433, file: !406, line: 90, baseType: !509, size: 64, offset: 1728)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !433, file: !406, line: 92, baseType: !490, size: 64, offset: 1792)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !433, file: !406, line: 93, baseType: !490, size: 64, offset: 1856)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !433, file: !406, line: 94, baseType: !490, size: 64, offset: 1920)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !433, file: !406, line: 96, baseType: !23, size: 32, offset: 1984)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !433, file: !406, line: 97, baseType: !23, size: 32, offset: 2016)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !433, file: !406, line: 98, baseType: !23, size: 32, offset: 2048)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !433, file: !406, line: 99, baseType: !23, size: 32, offset: 2080)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !433, file: !406, line: 100, baseType: !23, size: 32, offset: 2112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !433, file: !406, line: 102, baseType: !23, size: 32, offset: 2144)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !433, file: !406, line: 103, baseType: !23, size: 32, offset: 2176)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !433, file: !406, line: 104, baseType: !23, size: 32, offset: 2208)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !433, file: !406, line: 105, baseType: !23, size: 32, offset: 2240)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !433, file: !406, line: 106, baseType: !23, size: 32, offset: 2272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !433, file: !406, line: 107, baseType: !23, size: 32, offset: 2304)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !433, file: !406, line: 108, baseType: !23, size: 32, offset: 2336)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !433, file: !406, line: 109, baseType: !23, size: 32, offset: 2368)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !433, file: !406, line: 110, baseType: !364, size: 64, offset: 2400)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !433, file: !406, line: 111, baseType: !23, size: 32, offset: 2464)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !433, file: !406, line: 112, baseType: !530, size: 64, offset: 2496)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !8, line: 194, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !8, line: 186, size: 256, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !532, file: !8, line: 188, baseType: !23, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !532, file: !8, line: 189, baseType: !23, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !532, file: !8, line: 190, baseType: !23, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !532, file: !8, line: 191, baseType: !23, size: 32, offset: 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !532, file: !8, line: 192, baseType: !23, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !532, file: !8, line: 193, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !433, file: !406, line: 115, baseType: !23, size: 32, offset: 2560)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !433, file: !406, line: 118, baseType: !23, size: 32, offset: 2592)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !433, file: !406, line: 119, baseType: !23, size: 32, offset: 2624)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !433, file: !406, line: 120, baseType: !23, size: 32, offset: 2656)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !433, file: !406, line: 121, baseType: !477, size: 64, offset: 2688)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !433, file: !406, line: 124, baseType: !23, size: 32, offset: 2752)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !433, file: !406, line: 125, baseType: !23, size: 32, offset: 2784)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !433, file: !406, line: 126, baseType: !23, size: 32, offset: 2816)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !433, file: !406, line: 128, baseType: !23, size: 32, offset: 2848)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !433, file: !406, line: 129, baseType: !23, size: 32, offset: 2880)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !433, file: !406, line: 130, baseType: !23, size: 32, offset: 2912)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !433, file: !406, line: 131, baseType: !23, size: 32, offset: 2944)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !433, file: !406, line: 132, baseType: !476, size: 64, offset: 3008)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !433, file: !406, line: 133, baseType: !23, size: 32, offset: 3072)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !433, file: !406, line: 134, baseType: !23, size: 32, offset: 3104)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !433, file: !406, line: 136, baseType: !499, size: 16, offset: 3136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !433, file: !406, line: 137, baseType: !558, size: 128, offset: 3200)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 128, elements: !365)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !416, file: !406, line: 173, baseType: !431, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !416, file: !406, line: 174, baseType: !431, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !416, file: !406, line: 177, baseType: !23, size: 32, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !416, file: !406, line: 178, baseType: !364, size: 64, offset: 608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !416, file: !406, line: 179, baseType: !364, size: 64, offset: 672)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !405, file: !406, line: 191, baseType: !413, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !405, file: !406, line: 192, baseType: !413, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !406, line: 193, baseType: !129, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !405, file: !406, line: 194, baseType: !129, size: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !405, file: !406, line: 195, baseType: !129, size: 32, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !405, file: !406, line: 196, baseType: !129, size: 32, offset: 416)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !405, file: !406, line: 197, baseType: !23, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !405, file: !406, line: 199, baseType: !23, size: 32, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !405, file: !406, line: 200, baseType: !574, size: 32768, offset: 512)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32768, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 1024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !405, file: !406, line: 205, baseType: !23, size: 32, offset: 33280)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !405, file: !406, line: 206, baseType: !23, size: 32, offset: 33312)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !405, file: !406, line: 208, baseType: !414, size: 64, offset: 33344)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !395, file: !8, line: 353, baseType: !23, size: 32, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !395, file: !8, line: 354, baseType: !23, size: 32, offset: 416)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !395, file: !8, line: 355, baseType: !23, size: 32, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !395, file: !8, line: 356, baseType: !23, size: 32, offset: 480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !395, file: !8, line: 357, baseType: !23, size: 32, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !395, file: !8, line: 359, baseType: !23, size: 32, offset: 544)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !395, file: !8, line: 360, baseType: !23, size: 32, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !395, file: !8, line: 361, baseType: !23, size: 32, offset: 608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !395, file: !8, line: 365, baseType: !129, size: 32, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !395, file: !8, line: 366, baseType: !23, size: 32, offset: 672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !395, file: !8, line: 368, baseType: !364, size: 64, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !395, file: !8, line: 372, baseType: !23, size: 32, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !395, file: !8, line: 378, baseType: !129, size: 32, offset: 800)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !395, file: !8, line: 379, baseType: !23, size: 32, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !395, file: !8, line: 387, baseType: !129, size: 32, offset: 864)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !395, file: !8, line: 388, baseType: !129, size: 32, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !395, file: !8, line: 389, baseType: !458, size: 16, offset: 928)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !395, file: !8, line: 396, baseType: !23, size: 32, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !395, file: !8, line: 397, baseType: !23, size: 32, offset: 992)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !395, file: !8, line: 400, baseType: !23, size: 32, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !395, file: !8, line: 401, baseType: !23, size: 32, offset: 1056)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !395, file: !8, line: 402, baseType: !364, size: 64, offset: 1088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !395, file: !8, line: 406, baseType: !23, size: 32, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !395, file: !8, line: 407, baseType: !23, size: 32, offset: 1184)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !395, file: !8, line: 408, baseType: !23, size: 32, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !395, file: !8, line: 409, baseType: !23, size: 32, offset: 1248)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !395, file: !8, line: 410, baseType: !23, size: 32, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !395, file: !8, line: 411, baseType: !23, size: 32, offset: 1312)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !395, file: !8, line: 412, baseType: !23, size: 32, offset: 1344)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !395, file: !8, line: 413, baseType: !129, size: 32, offset: 1376)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !395, file: !8, line: 414, baseType: !129, size: 32, offset: 1408)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !395, file: !8, line: 415, baseType: !165, size: 8, offset: 1440)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !395, file: !8, line: 416, baseType: !436, size: 32, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !395, file: !8, line: 417, baseType: !23, size: 32, offset: 1504)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !395, file: !8, line: 418, baseType: !23, size: 32, offset: 1536)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !395, file: !8, line: 419, baseType: !23, size: 32, offset: 1568)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !395, file: !8, line: 420, baseType: !23, size: 32, offset: 1600)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !395, file: !8, line: 421, baseType: !23, size: 32, offset: 1632)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !395, file: !8, line: 422, baseType: !23, size: 32, offset: 1664)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !395, file: !8, line: 423, baseType: !23, size: 32, offset: 1696)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !395, file: !8, line: 426, baseType: !23, size: 32, offset: 1728)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !395, file: !8, line: 427, baseType: !23, size: 32, offset: 1760)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !395, file: !8, line: 428, baseType: !23, size: 32, offset: 1792)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !395, file: !8, line: 429, baseType: !23, size: 32, offset: 1824)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !395, file: !8, line: 430, baseType: !23, size: 32, offset: 1856)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !395, file: !8, line: 431, baseType: !23, size: 32, offset: 1888)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !395, file: !8, line: 432, baseType: !23, size: 32, offset: 1920)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !395, file: !8, line: 433, baseType: !23, size: 32, offset: 1952)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !395, file: !8, line: 434, baseType: !530, size: 64, offset: 1984)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !395, file: !8, line: 436, baseType: !630, size: 48, offset: 2048)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 48, elements: !149)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !395, file: !8, line: 437, baseType: !632, size: 384, offset: 2112)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 384, elements: !149)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !395, file: !8, line: 440, baseType: !634, size: 64, offset: 2496)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !8, line: 324, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !8, line: 314, size: 384, elements: !637)
!637 = !{!638, !649, !658}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !636, file: !8, line: 317, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !8, line: 47, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !8, line: 300, size: 256, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !641, file: !8, line: 303, baseType: !23, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !641, file: !8, line: 304, baseType: !23, size: 32, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !641, file: !8, line: 306, baseType: !23, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !641, file: !8, line: 307, baseType: !23, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !641, file: !8, line: 309, baseType: !164, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !641, file: !8, line: 310, baseType: !23, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !636, file: !8, line: 318, baseType: !650, size: 256, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !8, line: 95, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 88, size: 256, elements: !652)
!652 = !{!653, !654, !655, !656, !657}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !651, file: !8, line: 90, baseType: !129, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !651, file: !8, line: 91, baseType: !129, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !651, file: !8, line: 92, baseType: !23, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !651, file: !8, line: 93, baseType: !164, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !651, file: !8, line: 94, baseType: !108, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !636, file: !8, line: 320, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!23, !662, !802, !800}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !8, line: 273, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !8, line: 197, size: 3840, elements: !665)
!665 = !{!666, !668, !669, !670, !671, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !700, !701, !702, !703, !704, !708, !709, !718, !719, !720, !721, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !755, !756, !771, !777, !801}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !664, file: !8, line: 199, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !664, file: !8, line: 200, baseType: !398, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !664, file: !8, line: 201, baseType: !12, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !664, file: !8, line: 202, baseType: !23, size: 32, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !664, file: !8, line: 203, baseType: !672, size: 32, offset: 224)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !8, line: 112, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 108, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !673, file: !8, line: 110, baseType: !458, size: 16)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !673, file: !8, line: 111, baseType: !458, size: 16, offset: 16)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !664, file: !8, line: 204, baseType: !23, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !664, file: !8, line: 205, baseType: !23, size: 32, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !664, file: !8, line: 206, baseType: !23, size: 32, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !664, file: !8, line: 207, baseType: !23, size: 32, offset: 352)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !664, file: !8, line: 208, baseType: !23, size: 32, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !664, file: !8, line: 209, baseType: !23, size: 32, offset: 416)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !664, file: !8, line: 210, baseType: !23, size: 32, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !664, file: !8, line: 212, baseType: !23, size: 32, offset: 480)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !664, file: !8, line: 213, baseType: !23, size: 32, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !664, file: !8, line: 215, baseType: !23, size: 32, offset: 544)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !664, file: !8, line: 216, baseType: !364, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !664, file: !8, line: 217, baseType: !54, size: 96, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !664, file: !8, line: 218, baseType: !23, size: 32, offset: 736)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !664, file: !8, line: 219, baseType: !23, size: 32, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !664, file: !8, line: 220, baseType: !23, size: 32, offset: 800)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !664, file: !8, line: 221, baseType: !23, size: 32, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !664, file: !8, line: 223, baseType: !458, size: 16, offset: 864)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !664, file: !8, line: 224, baseType: !322, size: 8, offset: 880)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !664, file: !8, line: 225, baseType: !322, size: 8, offset: 888)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !664, file: !8, line: 226, baseType: !458, size: 16, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !664, file: !8, line: 227, baseType: !458, size: 16, offset: 912)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !664, file: !8, line: 229, baseType: !699, size: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !664, file: !8, line: 230, baseType: !699, size: 64, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !664, file: !8, line: 232, baseType: !699, size: 64, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !664, file: !8, line: 233, baseType: !699, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !664, file: !8, line: 236, baseType: !458, size: 16, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !664, file: !8, line: 237, baseType: !705, size: 1024, offset: 1232)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1024, elements: !706)
!706 = !{!366, !707, !707, !366}
!707 = !DISubrange(count: 4)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !664, file: !8, line: 239, baseType: !23, size: 32, offset: 2272)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !664, file: !8, line: 240, baseType: !710, size: 192, offset: 2304)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 192, elements: !55)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !712, line: 103, baseType: !713)
!712 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !714, line: 27, baseType: !715)
!714 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !716, line: 44, baseType: !717)
!716 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!717 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !664, file: !8, line: 241, baseType: !710, size: 192, offset: 2496)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !664, file: !8, line: 242, baseType: !710, size: 192, offset: 2688)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !664, file: !8, line: 244, baseType: !23, size: 32, offset: 2880)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !664, file: !8, line: 245, baseType: !722, size: 32, offset: 2912)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 32, elements: !723)
!723 = !{!707}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !664, file: !8, line: 246, baseType: !722, size: 32, offset: 2944)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !664, file: !8, line: 247, baseType: !322, size: 8, offset: 2976)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !664, file: !8, line: 248, baseType: !322, size: 8, offset: 2984)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !664, file: !8, line: 249, baseType: !322, size: 8, offset: 2992)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !664, file: !8, line: 250, baseType: !458, size: 16, offset: 3008)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !664, file: !8, line: 251, baseType: !458, size: 16, offset: 3024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !664, file: !8, line: 252, baseType: !458, size: 16, offset: 3040)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !664, file: !8, line: 254, baseType: !23, size: 32, offset: 3072)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !664, file: !8, line: 256, baseType: !23, size: 32, offset: 3104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !664, file: !8, line: 256, baseType: !23, size: 32, offset: 3136)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !664, file: !8, line: 256, baseType: !23, size: 32, offset: 3168)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !664, file: !8, line: 256, baseType: !23, size: 32, offset: 3200)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !664, file: !8, line: 257, baseType: !23, size: 32, offset: 3232)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !664, file: !8, line: 257, baseType: !23, size: 32, offset: 3264)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !664, file: !8, line: 257, baseType: !23, size: 32, offset: 3296)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !664, file: !8, line: 257, baseType: !23, size: 32, offset: 3328)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !664, file: !8, line: 259, baseType: !23, size: 32, offset: 3360)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !664, file: !8, line: 260, baseType: !23, size: 32, offset: 3392)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !664, file: !8, line: 262, baseType: !743, size: 64, offset: 3456)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !699, !746, !23, !23}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !437, line: 32, baseType: !747)
!747 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !437, line: 22, baseType: !129, size: 32, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754}
!749 = !DIEnumerator(name: "PLANE_Y", value: 0)
!750 = !DIEnumerator(name: "PLANE_U", value: 1)
!751 = !DIEnumerator(name: "PLANE_V", value: 2)
!752 = !DIEnumerator(name: "PLANE_G", value: 0)
!753 = !DIEnumerator(name: "PLANE_B", value: 1)
!754 = !DIEnumerator(name: "PLANE_R", value: 2)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !664, file: !8, line: 263, baseType: !743, size: 64, offset: 3520)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !664, file: !8, line: 265, baseType: !757, size: 64, offset: 3584)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !699, !760, !770, !458, !484, !23, !23, !23, !23, !23}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !8, line: 85, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !8, line: 77, size: 128, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !762, file: !8, line: 79, baseType: !23, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !762, file: !8, line: 80, baseType: !23, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !762, file: !8, line: 81, baseType: !458, size: 16, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !762, file: !8, line: 82, baseType: !458, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !762, file: !8, line: 83, baseType: !458, size: 16, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !762, file: !8, line: 84, baseType: !458, size: 16, offset: 112)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !664, file: !8, line: 268, baseType: !772, size: 64, offset: 3648)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!23, !699, !775, !23}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !8, line: 97, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !664, file: !8, line: 269, baseType: !778, size: 64, offset: 3712)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!322, !699, !781, !800, !322, !23}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !8, line: 276, size: 384, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !796}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !8, line: 278, baseType: !23, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !782, file: !8, line: 279, baseType: !23, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !782, file: !8, line: 280, baseType: !23, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !782, file: !8, line: 281, baseType: !23, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !782, file: !8, line: 282, baseType: !23, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !782, file: !8, line: 283, baseType: !129, size: 32, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !782, file: !8, line: 284, baseType: !23, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !782, file: !8, line: 285, baseType: !23, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !782, file: !8, line: 293, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !23, !23, !108, !108}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !782, file: !8, line: 295, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !662, !781, !775}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !664, file: !8, line: 272, baseType: !165, size: 8, offset: 3776)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !8, line: 296, baseType: !782)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !395, file: !8, line: 441, baseType: !805, size: 64, offset: 2560)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !8, line: 153, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 145, size: 2912, elements: !808)
!808 = !{!809, !819, !823, !827, !830, !832}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !807, file: !8, line: 147, baseType: !810, size: 1056)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 1056, elements: !817)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !8, line: 122, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 117, size: 32, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !812, file: !8, line: 119, baseType: !479, size: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !812, file: !8, line: 120, baseType: !167, size: 8, offset: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !812, file: !8, line: 121, baseType: !167, size: 8, offset: 24)
!817 = !{!56, !818}
!818 = !DISubrange(count: 11)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !807, file: !8, line: 148, baseType: !820, size: 576, offset: 1056)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 576, elements: !821)
!821 = !{!366, !822}
!822 = !DISubrange(count: 9)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !807, file: !8, line: 149, baseType: !824, size: 640, offset: 1632)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 640, elements: !825)
!825 = !{!366, !826}
!826 = !DISubrange(count: 10)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !807, file: !8, line: 150, baseType: !828, size: 384, offset: 2272)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 384, elements: !829)
!829 = !{!366, !141}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !807, file: !8, line: 151, baseType: !831, size: 128, offset: 2656)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 128, elements: !723)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !807, file: !8, line: 152, baseType: !831, size: 128, offset: 2784)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !395, file: !8, line: 442, baseType: !834, size: 64, offset: 2624)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !8, line: 175, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 164, size: 52768, elements: !837)
!837 = !{!838, !840, !842, !843, !846, !850, !854, !855, !859}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !836, file: !8, line: 166, baseType: !839, size: 96)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 96, elements: !55)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !836, file: !8, line: 167, baseType: !841, size: 64, offset: 96)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 64, elements: !365)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !836, file: !8, line: 168, baseType: !831, size: 128, offset: 160)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !836, file: !8, line: 169, baseType: !844, size: 384, offset: 288)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 384, elements: !845)
!845 = !{!56, !707}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !836, file: !8, line: 170, baseType: !847, size: 2816, offset: 672)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 2816, elements: !848)
!848 = !{!849, !707}
!849 = !DISubrange(count: 22)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !836, file: !8, line: 171, baseType: !851, size: 21120, offset: 3488)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 21120, elements: !852)
!852 = !{!366, !849, !853}
!853 = !DISubrange(count: 15)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !836, file: !8, line: 172, baseType: !851, size: 21120, offset: 24608)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !836, file: !8, line: 173, baseType: !856, size: 3520, offset: 45728)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 3520, elements: !857)
!857 = !{!849, !858}
!858 = !DISubrange(count: 5)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !836, file: !8, line: 174, baseType: !856, size: 3520, offset: 49248)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !395, file: !8, line: 444, baseType: !861, size: 6144, offset: 2688)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 6144, elements: !862)
!862 = !{!141, !262}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !395, file: !8, line: 446, baseType: !364, size: 64, offset: 8832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !395, file: !8, line: 447, baseType: !865, size: 128, offset: 8896)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !365)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !395, file: !8, line: 448, baseType: !865, size: 128, offset: 9024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !395, file: !8, line: 449, baseType: !865, size: 128, offset: 9152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !395, file: !8, line: 452, baseType: !865, size: 128, offset: 9280)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !395, file: !8, line: 454, baseType: !23, size: 32, offset: 9408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !395, file: !8, line: 455, baseType: !23, size: 32, offset: 9440)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !395, file: !8, line: 456, baseType: !23, size: 32, offset: 9472)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !395, file: !8, line: 458, baseType: !873, size: 256, offset: 9504)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !8, line: 337, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !8, line: 327, size: 256, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !874, file: !8, line: 329, baseType: !129, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !874, file: !8, line: 330, baseType: !129, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !874, file: !8, line: 331, baseType: !129, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !874, file: !8, line: 332, baseType: !129, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !874, file: !8, line: 333, baseType: !129, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !874, file: !8, line: 334, baseType: !129, size: 32, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !874, file: !8, line: 335, baseType: !129, size: 32, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !874, file: !8, line: 336, baseType: !129, size: 32, offset: 224)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !395, file: !8, line: 461, baseType: !458, size: 16, offset: 9760)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !395, file: !8, line: 462, baseType: !458, size: 16, offset: 9776)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !395, file: !8, line: 463, baseType: !458, size: 16, offset: 9792)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !395, file: !8, line: 465, baseType: !23, size: 32, offset: 9824)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !395, file: !8, line: 467, baseType: !23, size: 32, offset: 9856)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !395, file: !8, line: 468, baseType: !23, size: 32, offset: 9888)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !395, file: !8, line: 470, baseType: !23, size: 32, offset: 9920)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !395, file: !8, line: 471, baseType: !481, size: 64, offset: 9984)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !395, file: !8, line: 472, baseType: !481, size: 64, offset: 10048)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !395, file: !8, line: 473, baseType: !311, size: 64, offset: 10112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !395, file: !8, line: 474, baseType: !311, size: 64, offset: 10176)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !395, file: !8, line: 475, baseType: !311, size: 64, offset: 10240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !395, file: !8, line: 477, baseType: !897, size: 512, offset: 10304)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !898)
!898 = !{!142}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !395, file: !8, line: 479, baseType: !476, size: 64, offset: 10816)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !395, file: !8, line: 480, baseType: !476, size: 64, offset: 10880)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !395, file: !8, line: 481, baseType: !298, size: 64, offset: 10944)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !395, file: !8, line: 482, baseType: !476, size: 64, offset: 11008)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !395, file: !8, line: 483, baseType: !476, size: 64, offset: 11072)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !395, file: !8, line: 486, baseType: !905, size: 9216, offset: 11136)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 9216, elements: !906)
!906 = !{!56, !141, !707, !707}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !395, file: !8, line: 487, baseType: !905, size: 9216, offset: 20352)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !395, file: !8, line: 488, baseType: !909, size: 36864, offset: 29568)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 36864, elements: !910)
!910 = !{!56, !141, !157, !157}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !395, file: !8, line: 489, baseType: !909, size: 36864, offset: 66432)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !395, file: !8, line: 491, baseType: !913, size: 768, offset: 103296)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 768, elements: !136)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !395, file: !8, line: 494, baseType: !915, size: 2048, offset: 104064)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !916)
!916 = !{!146}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !395, file: !8, line: 495, baseType: !23, size: 32, offset: 106112)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !395, file: !8, line: 496, baseType: !23, size: 32, offset: 106144)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !395, file: !8, line: 500, baseType: !233, size: 16, offset: 106176)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !395, file: !8, line: 501, baseType: !233, size: 16, offset: 106192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !395, file: !8, line: 503, baseType: !233, size: 16, offset: 106208)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !395, file: !8, line: 504, baseType: !233, size: 16, offset: 106224)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !395, file: !8, line: 505, baseType: !311, size: 64, offset: 106240)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !395, file: !8, line: 506, baseType: !311, size: 64, offset: 106304)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !395, file: !8, line: 507, baseType: !926, size: 64, offset: 106368)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !395, file: !8, line: 508, baseType: !458, size: 16, offset: 106432)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !395, file: !8, line: 509, baseType: !458, size: 16, offset: 106448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !395, file: !8, line: 512, baseType: !23, size: 32, offset: 106464)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !395, file: !8, line: 513, baseType: !23, size: 32, offset: 106496)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !395, file: !8, line: 514, baseType: !932, size: 64, offset: 106560)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !395, file: !8, line: 515, baseType: !932, size: 64, offset: 106624)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !395, file: !8, line: 520, baseType: !23, size: 32, offset: 106688)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !395, file: !8, line: 521, baseType: !937, size: 544, offset: 106720)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 544, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 17)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !395, file: !8, line: 523, baseType: !941, size: 64, offset: 107264)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !662}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !395, file: !8, line: 524, baseType: !945, size: 64, offset: 107328)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!23, !662, !746, !476, !490}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !395, file: !8, line: 525, baseType: !949, size: 64, offset: 107392)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!23, !398, !12}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !395, file: !8, line: 526, baseType: !953, size: 64, offset: 107456)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!23, !667, !23}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !395, file: !8, line: 527, baseType: !941, size: 64, offset: 107520)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !395, file: !8, line: 528, baseType: !941, size: 64, offset: 107584)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !395, file: !8, line: 529, baseType: !941, size: 64, offset: 107648)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !395, file: !8, line: 530, baseType: !960, size: 64, offset: 107712)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !667}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !395, file: !8, line: 531, baseType: !941, size: 64, offset: 107776)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !395, file: !8, line: 532, baseType: !793, size: 64, offset: 107840)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !395, file: !8, line: 533, baseType: !793, size: 64, offset: 107904)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !395, file: !8, line: 534, baseType: !941, size: 64, offset: 107968)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !395, file: !8, line: 535, baseType: !23, size: 32, offset: 108032)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !395, file: !8, line: 536, baseType: !662, size: 64, offset: 108096)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !395, file: !8, line: 537, baseType: !490, size: 64, offset: 108160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !395, file: !8, line: 538, baseType: !298, size: 64, offset: 108224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !395, file: !8, line: 539, baseType: !972, size: 64, offset: 108288)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !395, file: !8, line: 540, baseType: !321, size: 64, offset: 108352)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !395, file: !8, line: 541, baseType: !975, size: 768, offset: 108416)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 768, elements: !140)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !9, file: !8, line: 596, baseType: !321, size: 64, offset: 6789952)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !9, file: !8, line: 597, baseType: !978, size: 192, offset: 6790016)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 192, elements: !55)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !8, line: 601, baseType: !23, size: 32, offset: 6790208)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !9, file: !8, line: 602, baseType: !23, size: 32, offset: 6790240)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !9, file: !8, line: 603, baseType: !23, size: 32, offset: 6790272)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !9, file: !8, line: 604, baseType: !23, size: 32, offset: 6790304)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !9, file: !8, line: 605, baseType: !23, size: 32, offset: 6790336)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !9, file: !8, line: 607, baseType: !972, size: 64, offset: 6790400)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !9, file: !8, line: 608, baseType: !986, size: 192, offset: 6790464)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 192, elements: !55)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !9, file: !8, line: 609, baseType: !988, size: 64, offset: 6790656)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !9, file: !8, line: 610, baseType: !298, size: 64, offset: 6790720)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !9, file: !8, line: 611, baseType: !992, size: 192, offset: 6790784)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 192, elements: !55)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !9, file: !8, line: 613, baseType: !23, size: 32, offset: 6790976)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !9, file: !8, line: 614, baseType: !23, size: 32, offset: 6791008)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !9, file: !8, line: 617, baseType: !393, size: 64, offset: 6791040)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !9, file: !8, line: 618, baseType: !662, size: 64, offset: 6791104)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !9, file: !8, line: 619, baseType: !998, size: 192, offset: 6791168)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 192, elements: !55)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !9, file: !8, line: 621, baseType: !23, size: 32, offset: 6791360)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !9, file: !8, line: 626, baseType: !1001, size: 64, offset: 6791424)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !8, line: 626, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !9, file: !8, line: 627, baseType: !1001, size: 64, offset: 6791488)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !9, file: !8, line: 629, baseType: !129, size: 32, offset: 6791552)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !9, file: !8, line: 630, baseType: !23, size: 32, offset: 6791584)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !9, file: !8, line: 634, baseType: !23, size: 32, offset: 6791616)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !9, file: !8, line: 635, baseType: !129, size: 32, offset: 6791648)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !9, file: !8, line: 638, baseType: !23, size: 32, offset: 6791680)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !9, file: !8, line: 638, baseType: !23, size: 32, offset: 6791712)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !9, file: !8, line: 638, baseType: !23, size: 32, offset: 6791744)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !9, file: !8, line: 639, baseType: !129, size: 32, offset: 6791776)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !9, file: !8, line: 639, baseType: !129, size: 32, offset: 6791808)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !9, file: !8, line: 640, baseType: !23, size: 32, offset: 6791840)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !9, file: !8, line: 641, baseType: !23, size: 32, offset: 6791872)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !9, file: !8, line: 642, baseType: !23, size: 32, offset: 6791904)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !9, file: !8, line: 645, baseType: !23, size: 32, offset: 6791936)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !9, file: !8, line: 647, baseType: !129, size: 32, offset: 6791968)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !9, file: !8, line: 648, baseType: !129, size: 32, offset: 6792000)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !9, file: !8, line: 649, baseType: !129, size: 32, offset: 6792032)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !9, file: !8, line: 650, baseType: !129, size: 32, offset: 6792064)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !9, file: !8, line: 651, baseType: !129, size: 32, offset: 6792096)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !9, file: !8, line: 652, baseType: !129, size: 32, offset: 6792128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !9, file: !8, line: 653, baseType: !129, size: 32, offset: 6792160)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !9, file: !8, line: 655, baseType: !23, size: 32, offset: 6792192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !9, file: !8, line: 657, baseType: !23, size: 32, offset: 6792224)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !9, file: !8, line: 658, baseType: !23, size: 32, offset: 6792256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !9, file: !8, line: 661, baseType: !23, size: 32, offset: 6792288)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !9, file: !8, line: 662, baseType: !458, size: 16, offset: 6792320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !9, file: !8, line: 663, baseType: !458, size: 16, offset: 6792336)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !9, file: !8, line: 664, baseType: !364, size: 64, offset: 6792352)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !9, file: !8, line: 665, baseType: !23, size: 32, offset: 6792416)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !9, file: !8, line: 666, baseType: !23, size: 32, offset: 6792448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !9, file: !8, line: 667, baseType: !1034, size: 96, offset: 6792480)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 96, elements: !55)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !9, file: !8, line: 668, baseType: !54, size: 96, offset: 6792576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !9, file: !8, line: 670, baseType: !23, size: 32, offset: 6792672)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !9, file: !8, line: 671, baseType: !23, size: 32, offset: 6792704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !9, file: !8, line: 672, baseType: !23, size: 32, offset: 6792736)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !9, file: !8, line: 673, baseType: !23, size: 32, offset: 6792768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !9, file: !8, line: 674, baseType: !23, size: 32, offset: 6792800)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !9, file: !8, line: 675, baseType: !23, size: 32, offset: 6792832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !9, file: !8, line: 676, baseType: !23, size: 32, offset: 6792864)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !9, file: !8, line: 677, baseType: !23, size: 32, offset: 6792896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !9, file: !8, line: 678, baseType: !23, size: 32, offset: 6792928)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !9, file: !8, line: 679, baseType: !23, size: 32, offset: 6792960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !9, file: !8, line: 680, baseType: !1047, size: 192, offset: 6792992)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !1048)
!1048 = !{!56, !366}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !9, file: !8, line: 681, baseType: !1047, size: 192, offset: 6793184)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !9, file: !8, line: 682, baseType: !1047, size: 192, offset: 6793376)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !9, file: !8, line: 683, baseType: !23, size: 32, offset: 6793568)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !9, file: !8, line: 684, baseType: !23, size: 32, offset: 6793600)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !9, file: !8, line: 685, baseType: !23, size: 32, offset: 6793632)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !9, file: !8, line: 686, baseType: !23, size: 32, offset: 6793664)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !9, file: !8, line: 687, baseType: !23, size: 32, offset: 6793696)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !9, file: !8, line: 689, baseType: !23, size: 32, offset: 6793728)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !9, file: !8, line: 692, baseType: !23, size: 32, offset: 6793760)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !9, file: !8, line: 693, baseType: !23, size: 32, offset: 6793792)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !9, file: !8, line: 700, baseType: !23, size: 32, offset: 6793824)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !9, file: !8, line: 701, baseType: !23, size: 32, offset: 6793856)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !9, file: !8, line: 702, baseType: !23, size: 32, offset: 6793888)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !9, file: !8, line: 703, baseType: !23, size: 32, offset: 6793920)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !9, file: !8, line: 704, baseType: !23, size: 32, offset: 6793952)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !9, file: !8, line: 705, baseType: !129, size: 32, offset: 6793984)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !9, file: !8, line: 706, baseType: !23, size: 32, offset: 6794016)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !9, file: !8, line: 707, baseType: !23, size: 32, offset: 6794048)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !9, file: !8, line: 710, baseType: !23, size: 32, offset: 6794080)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !9, file: !8, line: 711, baseType: !23, size: 32, offset: 6794112)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !9, file: !8, line: 712, baseType: !23, size: 32, offset: 6794144)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !9, file: !8, line: 713, baseType: !23, size: 32, offset: 6794176)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !9, file: !8, line: 714, baseType: !23, size: 32, offset: 6794208)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !9, file: !8, line: 716, baseType: !23, size: 32, offset: 6794240)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !9, file: !8, line: 717, baseType: !23, size: 32, offset: 6794272)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !9, file: !8, line: 719, baseType: !164, size: 64, offset: 6794304)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !9, file: !8, line: 720, baseType: !164, size: 64, offset: 6794368)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !9, file: !8, line: 722, baseType: !1077, size: 2560, offset: 6794432)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1078, line: 38, baseType: !1079)
!1078 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1078, line: 20, size: 2560, elements: !1080)
!1080 = !{!1081, !1082, !1084, !1085, !1086, !1090, !1091, !1092, !1093, !1094}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1079, file: !1078, line: 22, baseType: !30, size: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1079, file: !1078, line: 24, baseType: !1083, size: 192, offset: 1088)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 192, elements: !55)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1079, file: !1078, line: 25, baseType: !1083, size: 192, offset: 1280)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1079, file: !1078, line: 26, baseType: !1083, size: 192, offset: 1472)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1079, file: !1078, line: 31, baseType: !1087, size: 192, offset: 1664)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 192, elements: !55)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1079, file: !1078, line: 32, baseType: !1087, size: 192, offset: 1856)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1079, file: !1078, line: 33, baseType: !1087, size: 192, offset: 2048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1079, file: !1078, line: 35, baseType: !54, size: 96, offset: 2240)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1079, file: !1078, line: 36, baseType: !54, size: 96, offset: 2336)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1079, file: !1078, line: 37, baseType: !54, size: 96, offset: 2432)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !9, file: !8, line: 723, baseType: !1077, size: 2560, offset: 6796992)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !9, file: !8, line: 724, baseType: !1077, size: 2560, offset: 6799552)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !9, file: !8, line: 725, baseType: !1077, size: 2560, offset: 6802112)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !9, file: !8, line: 728, baseType: !1077, size: 2560, offset: 6804672)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !9, file: !8, line: 729, baseType: !1077, size: 2560, offset: 6807232)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !9, file: !8, line: 730, baseType: !1077, size: 2560, offset: 6809792)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !9, file: !8, line: 731, baseType: !1077, size: 2560, offset: 6812352)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !9, file: !8, line: 735, baseType: !129, size: 32, offset: 6814912)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !9, file: !8, line: 737, baseType: !23, size: 32, offset: 6814944)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !9, file: !8, line: 738, baseType: !23, size: 32, offset: 6814976)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !9, file: !8, line: 741, baseType: !711, size: 64, offset: 6815040)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !9, file: !8, line: 744, baseType: !23, size: 32, offset: 6815104)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !9, file: !8, line: 746, baseType: !574, size: 32768, offset: 6815136)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !9, file: !8, line: 748, baseType: !23, size: 32, offset: 6847904)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !9, file: !8, line: 751, baseType: !23, size: 32, offset: 6847936)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !9, file: !8, line: 752, baseType: !23, size: 32, offset: 6847968)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !9, file: !8, line: 755, baseType: !23, size: 32, offset: 6848000)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !9, file: !8, line: 756, baseType: !23, size: 32, offset: 6848032)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !9, file: !8, line: 758, baseType: !23, size: 32, offset: 6848064)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !9, file: !8, line: 759, baseType: !23, size: 32, offset: 6848096)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !9, file: !8, line: 762, baseType: !476, size: 64, offset: 6848128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !9, file: !8, line: 763, baseType: !481, size: 64, offset: 6848192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !9, file: !8, line: 765, baseType: !108, size: 64, offset: 6848256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !9, file: !8, line: 766, baseType: !108, size: 64, offset: 6848320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !9, file: !8, line: 768, baseType: !933, size: 64, offset: 6848384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !9, file: !8, line: 769, baseType: !1121, size: 3200, offset: 6848448)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 3200, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 100)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !9, file: !8, line: 771, baseType: !490, size: 64, offset: 6851648)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !9, file: !8, line: 772, baseType: !1126, size: 192, offset: 6851712)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 192, elements: !55)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !9, file: !8, line: 773, baseType: !490, size: 64, offset: 6851904)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !9, file: !8, line: 776, baseType: !1129, size: 64, offset: 6851968)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !8, line: 776, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !9, file: !8, line: 777, baseType: !1132, size: 64, offset: 6852032)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !8, line: 777, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !9, file: !8, line: 779, baseType: !23, size: 32, offset: 6852096)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !9, file: !8, line: 780, baseType: !398, size: 64, offset: 6852160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !9, file: !8, line: 781, baseType: !1137, size: 640, offset: 6852224)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 640, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 20)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !9, file: !8, line: 783, baseType: !1141, size: 64, offset: 6852864)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !8, line: 783, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !9, file: !8, line: 784, baseType: !1144, size: 64, offset: 6852928)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !8, line: 784, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !9, file: !8, line: 786, baseType: !933, size: 64, offset: 6852992)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !9, file: !8, line: 788, baseType: !490, size: 64, offset: 6853056)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !9, file: !8, line: 789, baseType: !23, size: 32, offset: 6853120)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !9, file: !8, line: 790, baseType: !23, size: 32, offset: 6853152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !9, file: !8, line: 792, baseType: !23, size: 32, offset: 6853184)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !9, file: !8, line: 794, baseType: !404, size: 64, offset: 6853248)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !9, file: !8, line: 795, baseType: !404, size: 64, offset: 6853312)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !9, file: !8, line: 796, baseType: !1154, size: 128, offset: 6853376)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 128, elements: !365)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !9, file: !8, line: 800, baseType: !1156, size: 72, offset: 6853504)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, elements: !1157)
!1157 = !{!822}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !9, file: !8, line: 802, baseType: !108, size: 64, offset: 6853632)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !9, file: !8, line: 803, baseType: !108, size: 64, offset: 6853696)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !9, file: !8, line: 804, baseType: !23, size: 32, offset: 6853760)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !9, file: !8, line: 807, baseType: !1162, size: 64, offset: 6853824)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !1164, line: 72, size: 65856, elements: !1165)
!1164 = !DIFile(filename: "ldecod_src/inc/sei.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b096a43ea4af7b5f3dc386e3863042de")
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1176, !1177}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !1163, file: !1164, line: 74, baseType: !23, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tone_map_repetition_period", scope: !1163, file: !1164, line: 75, baseType: !129, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "coded_data_bit_depth", scope: !1163, file: !1164, line: 76, baseType: !167, size: 8, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sei_bit_depth", scope: !1163, file: !1164, line: 77, baseType: !167, size: 8, offset: 72)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "model_id", scope: !1163, file: !1164, line: 78, baseType: !129, size: 32, offset: 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1163, file: !1164, line: 79, baseType: !129, size: 32, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lut", scope: !1163, file: !1164, line: 81, baseType: !1173, size: 65536, offset: 160)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 65536, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 4096)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1163, file: !1164, line: 83, baseType: !639, size: 64, offset: 65728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "payloadSize", scope: !1163, file: !1164, line: 84, baseType: !23, size: 32, offset: 65792)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !9, file: !8, line: 810, baseType: !1179, size: 64, offset: 6853888)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !476, !1182, !23, !23, !23, !23, !23, !23}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !9, file: !8, line: 811, baseType: !1184, size: 64, offset: 6853952)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !662, !23, !23, !108, !760}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !9, file: !8, line: 812, baseType: !1188, size: 64, offset: 6854016)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !23, !510, !510}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !9, file: !8, line: 813, baseType: !1192, size: 64, offset: 6854080)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !164, !662, !23, !23, !490}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !9, file: !8, line: 814, baseType: !1192, size: 64, offset: 6854144)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !9, file: !8, line: 815, baseType: !1197, size: 64, offset: 6854208)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !746, !476, !164, !662, !23, !490}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !9, file: !8, line: 816, baseType: !1197, size: 64, offset: 6854272)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !9, file: !8, line: 817, baseType: !1202, size: 64, offset: 6854336)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !476, !164, !662, !23, !23, !490}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !9, file: !8, line: 818, baseType: !1202, size: 64, offset: 6854400)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !9, file: !8, line: 819, baseType: !1207, size: 64, offset: 6854464)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !476, !1182, !23, !23, !23, !23, !23, !23, !23, !23}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !9, file: !8, line: 821, baseType: !1211, size: 64, offset: 6854528)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !8, line: 561, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !8, line: 544, size: 640, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1213, file: !8, line: 546, baseType: !23, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1213, file: !8, line: 547, baseType: !23, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1213, file: !8, line: 548, baseType: !23, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1213, file: !8, line: 549, baseType: !23, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1213, file: !8, line: 550, baseType: !23, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1213, file: !8, line: 551, baseType: !23, size: 32, offset: 160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1213, file: !8, line: 552, baseType: !164, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1213, file: !8, line: 553, baseType: !164, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1213, file: !8, line: 554, baseType: !164, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1213, file: !8, line: 555, baseType: !23, size: 32, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1213, file: !8, line: 556, baseType: !23, size: 32, offset: 416)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1213, file: !8, line: 557, baseType: !23, size: 32, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1213, file: !8, line: 558, baseType: !23, size: 32, offset: 480)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1213, file: !8, line: 559, baseType: !23, size: 32, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1213, file: !8, line: 560, baseType: !1230, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !9, file: !8, line: 822, baseType: !23, size: 32, offset: 6854592)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !9, file: !8, line: 823, baseType: !1233, size: 64, offset: 6854656)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !8, line: 823, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !9, file: !8, line: 824, baseType: !23, size: 32, offset: 6854720)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !9, file: !8, line: 825, baseType: !23, size: 32, offset: 6854752)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !9, file: !8, line: 826, baseType: !23, size: 32, offset: 6854784)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !9, file: !8, line: 827, baseType: !23, size: 32, offset: 6854816)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !9, file: !8, line: 829, baseType: !23, size: 32, offset: 6854848)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !9, file: !8, line: 830, baseType: !23, size: 32, offset: 6854880)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !9, file: !8, line: 831, baseType: !23, size: 32, offset: 6854912)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !9, file: !8, line: 835, baseType: !122, size: 64, offset: 6854976)
!1243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1244, retainedTypes: !1245, globals: !1248, splitDebugInlining: false, nameTableKind: None)
!1244 = !{!36, !45, !87, !438, !747}
!1245 = !{!478, !23, !1246, !167, !479, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1247 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1248 = !{!0, !1249, !1253, !1258, !1261, !1264, !1269, !1272, !1274, !1279, !1281}
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(name: "SubHeightC", scope: !2, file: !3, line: 461, type: !1251, isLocal: true, isDefinition: true)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 128, elements: !723)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!1253 = !DIGlobalVariableExpression(var: !1254, expr: !DIExpression())
!1254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !1255, isLocal: true, isDefinition: true)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 184, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 23)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !1260, isLocal: true, isDefinition: true)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, elements: !55)
!1261 = !DIGlobalVariableExpression(var: !1262, expr: !DIExpression())
!1262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 559, type: !1263, isLocal: true, isDefinition: true)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !723)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !1266, isLocal: true, isDefinition: true)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 144, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 18)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !1271, isLocal: true, isDefinition: true)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !1138)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !1263, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !1276, isLocal: true, isDefinition: true)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 360, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 45)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 635, type: !1276, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !1283, isLocal: true, isDefinition: true)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 624, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 78)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1316, !1317}
!1287 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2, file: !3, line: 455, type: !6)
!1288 = !DILocalVariable(name: "p", arg: 2, scope: !2, file: !3, line: 455, type: !431)
!1289 = !DILocalVariable(name: "p_out", arg: 3, scope: !2, file: !3, line: 455, type: !23)
!1290 = !DILocalVariable(name: "p_Inp", scope: !2, file: !3, line: 457, type: !410)
!1291 = !DILocalVariable(name: "pDecPic", scope: !2, file: !3, line: 458, type: !1211)
!1292 = !DILocalVariable(name: "out_ViewFileName", scope: !2, file: !3, line: 464, type: !16)
!1293 = !DILocalVariable(name: "chBuf", scope: !2, file: !3, line: 464, type: !16)
!1294 = !DILocalVariable(name: "pch", scope: !2, file: !3, line: 464, type: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1296 = !DILocalVariable(name: "iViewIdx", scope: !2, file: !3, line: 465, type: !23)
!1297 = !DILocalVariable(name: "crop_left", scope: !2, file: !3, line: 468, type: !23)
!1298 = !DILocalVariable(name: "crop_right", scope: !2, file: !3, line: 468, type: !23)
!1299 = !DILocalVariable(name: "crop_top", scope: !2, file: !3, line: 468, type: !23)
!1300 = !DILocalVariable(name: "crop_bottom", scope: !2, file: !3, line: 468, type: !23)
!1301 = !DILocalVariable(name: "symbol_size_in_bytes", scope: !2, file: !3, line: 469, type: !23)
!1302 = !DILocalVariable(name: "rgb_output", scope: !2, file: !3, line: 470, type: !23)
!1303 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 471, type: !1182)
!1304 = !DILocalVariable(name: "iLumaSize", scope: !2, file: !3, line: 473, type: !23)
!1305 = !DILocalVariable(name: "iFrameSize", scope: !2, file: !3, line: 473, type: !23)
!1306 = !DILocalVariable(name: "iLumaSizeX", scope: !2, file: !3, line: 474, type: !23)
!1307 = !DILocalVariable(name: "iLumaSizeY", scope: !2, file: !3, line: 474, type: !23)
!1308 = !DILocalVariable(name: "iChromaSizeX", scope: !2, file: !3, line: 475, type: !23)
!1309 = !DILocalVariable(name: "iChromaSizeY", scope: !2, file: !3, line: 475, type: !23)
!1310 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 477, type: !23)
!1311 = !DILocalVariable(name: "i", scope: !1312, file: !3, line: 676, type: !23)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 675, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 674, column: 9)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 673, column: 3)
!1315 = distinct !DILexicalBlock(scope: !2, file: !3, line: 639, column: 7)
!1316 = !DILocalVariable(name: "j", scope: !1312, file: !3, line: 676, type: !23)
!1317 = !DILocalVariable(name: "cr_val", scope: !1312, file: !3, line: 677, type: !478)
!1318 = !{i32 7, !"Dwarf Version", i32 5}
!1319 = !{i32 2, !"Debug Info Version", i32 3}
!1320 = !{i32 1, !"wchar_size", i32 4}
!1321 = !{i32 8, !"PIC Level", i32 2}
!1322 = !{i32 7, !"PIE Level", i32 2}
!1323 = !{i32 7, !"uwtable", i32 2}
!1324 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1325 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!1326 = distinct !DISubprogram(name: "write_picture", scope: !3, file: !3, line: 433, type: !1327, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !6, !431, !23, !23}
!1329 = !{!1330, !1331, !1332, !1333}
!1330 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1326, file: !3, line: 433, type: !6)
!1331 = !DILocalVariable(name: "p", arg: 2, scope: !1326, file: !3, line: 433, type: !431)
!1332 = !DILocalVariable(name: "p_out", arg: 3, scope: !1326, file: !3, line: 433, type: !23)
!1333 = !DILocalVariable(name: "real_structure", arg: 4, scope: !1326, file: !3, line: 433, type: !23)
!1334 = distinct !DIAssignID()
!1335 = !DILocation(line: 0, scope: !2, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 435, column: 3, scope: !1326)
!1337 = distinct !DIAssignID()
!1338 = !DILocation(line: 0, scope: !1326)
!1339 = !DILocation(line: 457, column: 35, scope: !2, inlinedAt: !1336)
!1340 = !DILocation(line: 464, column: 3, scope: !2, inlinedAt: !1336)
!1341 = !DILocation(line: 465, column: 37, scope: !2, inlinedAt: !1336)
!1342 = !DILocation(line: 465, column: 18, scope: !2, inlinedAt: !1336)
!1343 = !DILocation(line: 469, column: 39, scope: !2, inlinedAt: !1336)
!1344 = !DILocation(line: 470, column: 42, scope: !2, inlinedAt: !1336)
!1345 = !DILocation(line: 470, column: 73, scope: !2, inlinedAt: !1336)
!1346 = !DILocation(line: 470, column: 92, scope: !2, inlinedAt: !1336)
!1347 = !DILocation(line: 479, column: 10, scope: !1348, inlinedAt: !1336)
!1348 = distinct !DILexicalBlock(scope: !2, file: !3, line: 479, column: 7)
!1349 = !DILocation(line: 479, column: 7, scope: !1348, inlinedAt: !1336)
!1350 = !DILocation(line: 479, column: 7, scope: !2, inlinedAt: !1336)
!1351 = !DILocation(line: 469, column: 63, scope: !2, inlinedAt: !1336)
!1352 = !DILocation(line: 469, column: 67, scope: !2, inlinedAt: !1336)
!1353 = !DILocation(line: 485, column: 10, scope: !1354, inlinedAt: !1336)
!1354 = distinct !DILexicalBlock(scope: !2, file: !3, line: 485, column: 7)
!1355 = !DILocation(line: 485, column: 7, scope: !1354, inlinedAt: !1336)
!1356 = !DILocation(line: 485, column: 29, scope: !1354, inlinedAt: !1336)
!1357 = !DILocation(line: 488, column: 32, scope: !1358, inlinedAt: !1336)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 486, column: 3)
!1359 = !DILocation(line: 488, column: 52, scope: !1358, inlinedAt: !1336)
!1360 = !DILocation(line: 488, column: 28, scope: !1358, inlinedAt: !1336)
!1361 = !DILocation(line: 489, column: 17, scope: !1358, inlinedAt: !1336)
!1362 = !DILocation(line: 489, column: 26, scope: !1358, inlinedAt: !1336)
!1363 = !DILocation(line: 489, column: 47, scope: !1358, inlinedAt: !1336)
!1364 = !DILocation(line: 489, column: 58, scope: !1358, inlinedAt: !1336)
!1365 = !DILocation(line: 489, column: 5, scope: !1358, inlinedAt: !1336)
!1366 = !DILocation(line: 490, column: 17, scope: !1358, inlinedAt: !1336)
!1367 = !DILocation(line: 490, column: 14, scope: !1358, inlinedAt: !1336)
!1368 = !DILocation(line: 490, column: 30, scope: !1358, inlinedAt: !1336)
!1369 = !DILocation(line: 490, column: 51, scope: !1358, inlinedAt: !1336)
!1370 = !DILocation(line: 490, column: 65, scope: !1358, inlinedAt: !1336)
!1371 = !DILocation(line: 490, column: 5, scope: !1358, inlinedAt: !1336)
!1372 = !DILocation(line: 491, column: 17, scope: !1358, inlinedAt: !1336)
!1373 = !DILocation(line: 491, column: 14, scope: !1358, inlinedAt: !1336)
!1374 = !DILocation(line: 491, column: 30, scope: !1358, inlinedAt: !1336)
!1375 = !DILocation(line: 491, column: 51, scope: !1358, inlinedAt: !1336)
!1376 = !DILocation(line: 491, column: 65, scope: !1358, inlinedAt: !1336)
!1377 = !DILocation(line: 491, column: 5, scope: !1358, inlinedAt: !1336)
!1378 = !DILocation(line: 492, column: 3, scope: !1358, inlinedAt: !1336)
!1379 = !DILocation(line: 495, column: 10, scope: !1380, inlinedAt: !1336)
!1380 = distinct !DILexicalBlock(scope: !2, file: !3, line: 495, column: 7)
!1381 = !DILocation(line: 495, column: 7, scope: !1380, inlinedAt: !1336)
!1382 = !DILocation(line: 495, column: 7, scope: !2, inlinedAt: !1336)
!1383 = !DILocation(line: 506, column: 36, scope: !2, inlinedAt: !1336)
!1384 = !DILocation(line: 506, column: 72, scope: !2, inlinedAt: !1336)
!1385 = !DILocation(line: 507, column: 42, scope: !2, inlinedAt: !1336)
!1386 = !DILocation(line: 507, column: 69, scope: !2, inlinedAt: !1336)
!1387 = !DILocation(line: 507, column: 137, scope: !2, inlinedAt: !1336)
!1388 = !DILocation(line: 497, column: 32, scope: !1389, inlinedAt: !1336)
!1389 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 496, column: 3)
!1390 = !DILocation(line: 497, column: 19, scope: !1389, inlinedAt: !1336)
!1391 = !DILocation(line: 497, column: 56, scope: !1389, inlinedAt: !1336)
!1392 = !DILocation(line: 497, column: 51, scope: !1389, inlinedAt: !1336)
!1393 = !DILocation(line: 498, column: 56, scope: !1389, inlinedAt: !1336)
!1394 = !DILocation(line: 498, column: 51, scope: !1389, inlinedAt: !1336)
!1395 = !DILocation(line: 499, column: 19, scope: !1389, inlinedAt: !1336)
!1396 = !DILocation(line: 499, column: 61, scope: !1389, inlinedAt: !1336)
!1397 = !DILocation(line: 499, column: 56, scope: !1389, inlinedAt: !1336)
!1398 = !DILocation(line: 499, column: 51, scope: !1389, inlinedAt: !1336)
!1399 = !DILocation(line: 499, column: 88, scope: !1389, inlinedAt: !1336)
!1400 = !DILocation(line: 499, column: 83, scope: !1389, inlinedAt: !1336)
!1401 = !DILocation(line: 500, column: 88, scope: !1389, inlinedAt: !1336)
!1402 = !DILocation(line: 500, column: 83, scope: !1389, inlinedAt: !1336)
!1403 = !DILocation(line: 501, column: 3, scope: !1389, inlinedAt: !1336)
!1404 = !DILocation(line: 0, scope: !1380, inlinedAt: !1336)
!1405 = !DILocation(line: 506, column: 22, scope: !2, inlinedAt: !1336)
!1406 = !DILocation(line: 506, column: 68, scope: !2, inlinedAt: !1336)
!1407 = !DILocation(line: 507, column: 21, scope: !2, inlinedAt: !1336)
!1408 = !DILocation(line: 508, column: 19, scope: !2, inlinedAt: !1336)
!1409 = !DILocation(line: 508, column: 35, scope: !2, inlinedAt: !1336)
!1410 = !DILocation(line: 509, column: 19, scope: !2, inlinedAt: !1336)
!1411 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1412, file: !3, line: 49, type: !6)
!1412 = distinct !DISubprogram(name: "initOutput", scope: !3, file: !3, line: 49, type: !1413, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !6, !23}
!1415 = !{!1411, !1416}
!1416 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 2, scope: !1412, file: !3, line: 49, type: !23)
!1417 = !DILocation(line: 0, scope: !1412, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 514, column: 3, scope: !2, inlinedAt: !1336)
!1419 = !DILocation(line: 60, column: 9, scope: !1420, inlinedAt: !1418)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 60, column: 9)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 59, column: 3)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 51, column: 7)
!1423 = !DILocation(line: 60, column: 9, scope: !1421, inlinedAt: !1418)
!1424 = !DILocation(line: 0, scope: !1420, inlinedAt: !1418)
!1425 = !DILocation(line: 517, column: 46, scope: !2, inlinedAt: !1336)
!1426 = !DILocation(line: 517, column: 13, scope: !2, inlinedAt: !1336)
!1427 = !DILocation(line: 519, column: 15, scope: !1428, inlinedAt: !1336)
!1428 = distinct !DILexicalBlock(scope: !2, file: !3, line: 519, column: 6)
!1429 = !DILocation(line: 519, column: 18, scope: !1428, inlinedAt: !1336)
!1430 = !DILocation(line: 519, column: 6, scope: !2, inlinedAt: !1336)
!1431 = !DILocation(line: 509, column: 34, scope: !2, inlinedAt: !1336)
!1432 = !DILocation(line: 510, column: 25, scope: !2, inlinedAt: !1336)
!1433 = !DILocation(line: 507, column: 37, scope: !2, inlinedAt: !1336)
!1434 = !DILocation(line: 507, column: 100, scope: !2, inlinedAt: !1336)
!1435 = !DILocation(line: 511, column: 56, scope: !2, inlinedAt: !1336)
!1436 = !DILocation(line: 511, column: 42, scope: !2, inlinedAt: !1336)
!1437 = !DILocation(line: 511, column: 39, scope: !2, inlinedAt: !1336)
!1438 = !DILocation(line: 511, column: 71, scope: !2, inlinedAt: !1336)
!1439 = !DILocation(line: 510, column: 36, scope: !2, inlinedAt: !1336)
!1440 = !DILocation(line: 521, column: 26, scope: !1441, inlinedAt: !1336)
!1441 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 520, column: 3)
!1442 = !DILocation(line: 521, column: 19, scope: !1441, inlinedAt: !1336)
!1443 = !DILocation(line: 521, column: 17, scope: !1441, inlinedAt: !1336)
!1444 = !DILocation(line: 522, column: 30, scope: !1441, inlinedAt: !1336)
!1445 = !DILocation(line: 522, column: 14, scope: !1441, inlinedAt: !1336)
!1446 = !DILocation(line: 522, column: 17, scope: !1441, inlinedAt: !1336)
!1447 = !DILocation(line: 523, column: 45, scope: !1441, inlinedAt: !1336)
!1448 = !DILocation(line: 523, column: 56, scope: !1441, inlinedAt: !1336)
!1449 = !DILocation(line: 523, column: 31, scope: !1441, inlinedAt: !1336)
!1450 = !DILocation(line: 523, column: 14, scope: !1441, inlinedAt: !1336)
!1451 = !DILocation(line: 523, column: 17, scope: !1441, inlinedAt: !1336)
!1452 = !DILocation(line: 525, column: 30, scope: !1441, inlinedAt: !1336)
!1453 = !DILocation(line: 525, column: 14, scope: !1441, inlinedAt: !1336)
!1454 = !DILocation(line: 525, column: 25, scope: !1441, inlinedAt: !1336)
!1455 = !DILocation(line: 526, column: 14, scope: !1441, inlinedAt: !1336)
!1456 = !DILocation(line: 526, column: 32, scope: !1441, inlinedAt: !1336)
!1457 = !DILocation(line: 527, column: 33, scope: !1441, inlinedAt: !1336)
!1458 = !DILocation(line: 527, column: 14, scope: !1441, inlinedAt: !1336)
!1459 = !DILocation(line: 527, column: 24, scope: !1441, inlinedAt: !1336)
!1460 = !DILocation(line: 528, column: 14, scope: !1441, inlinedAt: !1336)
!1461 = !DILocation(line: 528, column: 21, scope: !1441, inlinedAt: !1336)
!1462 = !DILocation(line: 529, column: 14, scope: !1441, inlinedAt: !1336)
!1463 = !DILocation(line: 529, column: 22, scope: !1441, inlinedAt: !1336)
!1464 = !DILocation(line: 530, column: 38, scope: !1441, inlinedAt: !1336)
!1465 = !DILocation(line: 530, column: 14, scope: !1441, inlinedAt: !1336)
!1466 = !DILocation(line: 530, column: 26, scope: !1441, inlinedAt: !1336)
!1467 = !DILocation(line: 531, column: 41, scope: !1441, inlinedAt: !1336)
!1468 = !DILocation(line: 531, column: 14, scope: !1441, inlinedAt: !1336)
!1469 = !DILocation(line: 531, column: 27, scope: !1441, inlinedAt: !1336)
!1470 = !DILocation(line: 532, column: 3, scope: !1441, inlinedAt: !1336)
!1471 = !DILocation(line: 545, column: 22, scope: !1472, inlinedAt: !1336)
!1472 = distinct !DILexicalBlock(scope: !2, file: !3, line: 545, column: 7)
!1473 = !DILocation(line: 536, column: 21, scope: !1474, inlinedAt: !1336)
!1474 = distinct !DILexicalBlock(scope: !2, file: !3, line: 535, column: 3)
!1475 = !DILocation(line: 537, column: 27, scope: !1474, inlinedAt: !1336)
!1476 = !DILocation(line: 537, column: 24, scope: !1474, inlinedAt: !1336)
!1477 = !DILocation(line: 537, column: 14, scope: !1474, inlinedAt: !1336)
!1478 = !DILocation(line: 537, column: 22, scope: !1474, inlinedAt: !1336)
!1479 = !DILocation(line: 543, column: 22, scope: !2, inlinedAt: !1336)
!1480 = !DILocation(line: 543, column: 12, scope: !2, inlinedAt: !1336)
!1481 = !DILocation(line: 543, column: 17, scope: !2, inlinedAt: !1336)
!1482 = !DILocation(line: 545, column: 11, scope: !1472, inlinedAt: !1336)
!1483 = !DILocation(line: 545, column: 7, scope: !2, inlinedAt: !1336)
!1484 = !DILocation(line: 547, column: 5, scope: !1485, inlinedAt: !1336)
!1485 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 546, column: 3)
!1486 = !DILocation(line: 548, column: 3, scope: !1485, inlinedAt: !1336)
!1487 = !DILocation(line: 551, column: 10, scope: !1488, inlinedAt: !1336)
!1488 = distinct !DILexicalBlock(scope: !2, file: !3, line: 551, column: 7)
!1489 = !DILocation(line: 551, column: 18, scope: !1488, inlinedAt: !1336)
!1490 = !DILocation(line: 551, column: 23, scope: !1488, inlinedAt: !1336)
!1491 = !DILocation(line: 551, column: 33, scope: !1488, inlinedAt: !1336)
!1492 = !DILocation(line: 551, column: 49, scope: !1488, inlinedAt: !1336)
!1493 = !DILocation(line: 551, column: 7, scope: !2, inlinedAt: !1336)
!1494 = !DILocation(line: 553, column: 16, scope: !1495, inlinedAt: !1336)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 553, column: 8)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 552, column: 3)
!1497 = !DILocation(line: 553, column: 9, scope: !1495, inlinedAt: !1336)
!1498 = !DILocation(line: 553, column: 36, scope: !1495, inlinedAt: !1336)
!1499 = !DILocation(line: 553, column: 43, scope: !1495, inlinedAt: !1336)
!1500 = !DILocation(line: 553, column: 61, scope: !1495, inlinedAt: !1336)
!1501 = !DILocation(line: 553, column: 77, scope: !1495, inlinedAt: !1336)
!1502 = !DILocation(line: 553, column: 82, scope: !1495, inlinedAt: !1336)
!1503 = !DILocation(line: 555, column: 7, scope: !1504, inlinedAt: !1336)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 554, column: 5)
!1505 = !DILocation(line: 556, column: 13, scope: !1504, inlinedAt: !1336)
!1506 = !DILocation(line: 557, column: 10, scope: !1507, inlinedAt: !1336)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 557, column: 10)
!1508 = !DILocation(line: 557, column: 10, scope: !1504, inlinedAt: !1336)
!1509 = !DILocation(line: 558, column: 14, scope: !1507, inlinedAt: !1336)
!1510 = !DILocation(line: 558, column: 9, scope: !1507, inlinedAt: !1336)
!1511 = !DILocation(line: 559, column: 11, scope: !1512, inlinedAt: !1336)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 559, column: 11)
!1513 = !DILocation(line: 559, column: 11, scope: !1504, inlinedAt: !1336)
!1514 = !DILocation(line: 561, column: 66, scope: !1515, inlinedAt: !1336)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 560, column: 7)
!1516 = !DILocation(line: 561, column: 9, scope: !1515, inlinedAt: !1336)
!1517 = !DILocation(line: 563, column: 41, scope: !1518, inlinedAt: !1336)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 563, column: 13)
!1519 = !DILocation(line: 563, column: 40, scope: !1518, inlinedAt: !1336)
!1520 = !DILocation(line: 563, column: 99, scope: !1518, inlinedAt: !1336)
!1521 = !DILocation(line: 563, column: 13, scope: !1515, inlinedAt: !1336)
!1522 = !DILocation(line: 565, column: 11, scope: !1523, inlinedAt: !1336)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 564, column: 9)
!1524 = !DILocation(line: 566, column: 19, scope: !1523, inlinedAt: !1336)
!1525 = !DILocation(line: 566, column: 11, scope: !1523, inlinedAt: !1336)
!1526 = !DILocation(line: 567, column: 11, scope: !1523, inlinedAt: !1336)
!1527 = !DILocation(line: 572, column: 36, scope: !1528, inlinedAt: !1336)
!1528 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 571, column: 7)
!1529 = !DILocation(line: 579, column: 16, scope: !1530, inlinedAt: !1336)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 579, column: 8)
!1531 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 578, column: 3)
!1532 = !DILocation(line: 579, column: 9, scope: !1530, inlinedAt: !1336)
!1533 = !DILocation(line: 579, column: 29, scope: !1530, inlinedAt: !1336)
!1534 = !DILocation(line: 579, column: 36, scope: !1530, inlinedAt: !1336)
!1535 = !DILocation(line: 579, column: 54, scope: !1530, inlinedAt: !1336)
!1536 = !DILocation(line: 579, column: 70, scope: !1530, inlinedAt: !1336)
!1537 = !DILocation(line: 579, column: 75, scope: !1530, inlinedAt: !1336)
!1538 = !DILocation(line: 581, column: 72, scope: !1539, inlinedAt: !1336)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 581, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 580, column: 5)
!1541 = !DILocation(line: 581, column: 71, scope: !1539, inlinedAt: !1336)
!1542 = !DILocation(line: 581, column: 128, scope: !1539, inlinedAt: !1336)
!1543 = !DILocation(line: 581, column: 11, scope: !1540, inlinedAt: !1336)
!1544 = !DILocation(line: 583, column: 9, scope: !1545, inlinedAt: !1336)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 582, column: 7)
!1546 = !DILocation(line: 585, column: 17, scope: !1545, inlinedAt: !1336)
!1547 = !DILocation(line: 585, column: 9, scope: !1545, inlinedAt: !1336)
!1548 = !DILocation(line: 586, column: 9, scope: !1545, inlinedAt: !1336)
!1549 = !DILocation(line: 0, scope: !1488, inlinedAt: !1336)
!1550 = !DILocation(line: 593, column: 6, scope: !2, inlinedAt: !1336)
!1551 = !DILocation(line: 595, column: 22, scope: !1552, inlinedAt: !1336)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 594, column: 3)
!1553 = distinct !DILexicalBlock(scope: !2, file: !3, line: 593, column: 6)
!1554 = !DILocation(line: 595, column: 32, scope: !1552, inlinedAt: !1336)
!1555 = !DILocation(line: 595, column: 28, scope: !1552, inlinedAt: !1336)
!1556 = !DILocation(line: 595, column: 38, scope: !1552, inlinedAt: !1336)
!1557 = !DILocation(line: 595, column: 19, scope: !1552, inlinedAt: !1336)
!1558 = !DILocation(line: 595, column: 11, scope: !1552, inlinedAt: !1336)
!1559 = !DILocation(line: 596, column: 22, scope: !1552, inlinedAt: !1336)
!1560 = !DILocation(line: 597, column: 22, scope: !1552, inlinedAt: !1336)
!1561 = !DILocation(line: 598, column: 28, scope: !1552, inlinedAt: !1336)
!1562 = !DILocation(line: 598, column: 23, scope: !1552, inlinedAt: !1336)
!1563 = !DILocation(line: 598, column: 55, scope: !1552, inlinedAt: !1336)
!1564 = !DILocation(line: 598, column: 50, scope: !1552, inlinedAt: !1336)
!1565 = !DILocation(line: 599, column: 55, scope: !1552, inlinedAt: !1336)
!1566 = !DILocation(line: 599, column: 50, scope: !1552, inlinedAt: !1336)
!1567 = !DILocation(line: 601, column: 12, scope: !1552, inlinedAt: !1336)
!1568 = !DILocation(line: 601, column: 24, scope: !1552, inlinedAt: !1336)
!1569 = !DILocation(line: 601, column: 21, scope: !1552, inlinedAt: !1336)
!1570 = !DILocation(line: 601, column: 42, scope: !1552, inlinedAt: !1336)
!1571 = !DILocation(line: 601, column: 56, scope: !1552, inlinedAt: !1336)
!1572 = !DILocation(line: 601, column: 144, scope: !1552, inlinedAt: !1336)
!1573 = !DILocation(line: 601, column: 5, scope: !1552, inlinedAt: !1336)
!1574 = !DILocation(line: 602, column: 15, scope: !1575, inlinedAt: !1336)
!1575 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 602, column: 9)
!1576 = !DILocation(line: 602, column: 9, scope: !1552, inlinedAt: !1336)
!1577 = !DILocation(line: 604, column: 35, scope: !1578, inlinedAt: !1336)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 603, column: 5)
!1579 = !DILocation(line: 604, column: 56, scope: !1578, inlinedAt: !1336)
!1580 = !DILocation(line: 604, column: 71, scope: !1578, inlinedAt: !1336)
!1581 = !DILocation(line: 604, column: 91, scope: !1578, inlinedAt: !1336)
!1582 = !DILocation(line: 604, column: 66, scope: !1578, inlinedAt: !1336)
!1583 = !DILocation(line: 604, column: 102, scope: !1578, inlinedAt: !1336)
!1584 = !DILocation(line: 604, column: 31, scope: !1578, inlinedAt: !1336)
!1585 = !DILocation(line: 604, column: 13, scope: !1578, inlinedAt: !1336)
!1586 = !DILocation(line: 605, column: 23, scope: !1587, inlinedAt: !1336)
!1587 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 605, column: 11)
!1588 = !DILocation(line: 605, column: 44, scope: !1587, inlinedAt: !1336)
!1589 = !DILocation(line: 605, column: 59, scope: !1587, inlinedAt: !1336)
!1590 = !DILocation(line: 605, column: 79, scope: !1587, inlinedAt: !1336)
!1591 = !DILocation(line: 605, column: 54, scope: !1587, inlinedAt: !1336)
!1592 = !DILocation(line: 605, column: 90, scope: !1587, inlinedAt: !1336)
!1593 = !DILocation(line: 605, column: 15, scope: !1587, inlinedAt: !1336)
!1594 = !DILocation(line: 605, column: 11, scope: !1578, inlinedAt: !1336)
!1595 = !DILocation(line: 607, column: 9, scope: !1596, inlinedAt: !1336)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 606, column: 7)
!1597 = !DILocation(line: 608, column: 7, scope: !1596, inlinedAt: !1336)
!1598 = !DILocation(line: 611, column: 12, scope: !1599, inlinedAt: !1336)
!1599 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 611, column: 9)
!1600 = !DILocation(line: 611, column: 9, scope: !1599, inlinedAt: !1336)
!1601 = !DILocation(line: 611, column: 9, scope: !1552, inlinedAt: !1336)
!1602 = !DILocation(line: 613, column: 34, scope: !1603, inlinedAt: !1336)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 612, column: 5)
!1604 = !DILocation(line: 613, column: 21, scope: !1603, inlinedAt: !1336)
!1605 = !DILocation(line: 613, column: 58, scope: !1603, inlinedAt: !1336)
!1606 = !DILocation(line: 613, column: 53, scope: !1603, inlinedAt: !1336)
!1607 = !DILocation(line: 614, column: 58, scope: !1603, inlinedAt: !1336)
!1608 = !DILocation(line: 614, column: 53, scope: !1603, inlinedAt: !1336)
!1609 = !DILocation(line: 615, column: 21, scope: !1603, inlinedAt: !1336)
!1610 = !DILocation(line: 615, column: 63, scope: !1603, inlinedAt: !1336)
!1611 = !DILocation(line: 615, column: 58, scope: !1603, inlinedAt: !1336)
!1612 = !DILocation(line: 615, column: 53, scope: !1603, inlinedAt: !1336)
!1613 = !DILocation(line: 615, column: 90, scope: !1603, inlinedAt: !1336)
!1614 = !DILocation(line: 615, column: 85, scope: !1603, inlinedAt: !1336)
!1615 = !DILocation(line: 616, column: 90, scope: !1603, inlinedAt: !1336)
!1616 = !DILocation(line: 616, column: 85, scope: !1603, inlinedAt: !1336)
!1617 = !DILocation(line: 617, column: 5, scope: !1603, inlinedAt: !1336)
!1618 = !DILocation(line: 0, scope: !1599, inlinedAt: !1336)
!1619 = !DILocation(line: 622, column: 8, scope: !1620, inlinedAt: !1336)
!1620 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 622, column: 8)
!1621 = !DILocation(line: 622, column: 8, scope: !1552, inlinedAt: !1336)
!1622 = !DILocation(line: 623, column: 7, scope: !1620, inlinedAt: !1336)
!1623 = !DILocation(line: 626, column: 19, scope: !2, inlinedAt: !1336)
!1624 = !DILocation(line: 626, column: 25, scope: !2, inlinedAt: !1336)
!1625 = !DILocation(line: 626, scope: !2, inlinedAt: !1336)
!1626 = !DILocation(line: 626, column: 9, scope: !2, inlinedAt: !1336)
!1627 = !DILocation(line: 628, column: 12, scope: !2, inlinedAt: !1336)
!1628 = !DILocation(line: 628, column: 24, scope: !2, inlinedAt: !1336)
!1629 = !DILocation(line: 628, column: 38, scope: !2, inlinedAt: !1336)
!1630 = !DILocation(line: 628, column: 49, scope: !2, inlinedAt: !1336)
!1631 = !DILocation(line: 628, column: 134, scope: !2, inlinedAt: !1336)
!1632 = !DILocation(line: 628, column: 5, scope: !2, inlinedAt: !1336)
!1633 = !DILocation(line: 630, column: 12, scope: !1634, inlinedAt: !1336)
!1634 = distinct !DILexicalBlock(scope: !2, file: !3, line: 630, column: 6)
!1635 = !DILocation(line: 630, column: 6, scope: !2, inlinedAt: !1336)
!1636 = !DILocation(line: 632, column: 33, scope: !1637, inlinedAt: !1336)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 631, column: 3)
!1638 = !DILocation(line: 632, column: 51, scope: !1637, inlinedAt: !1336)
!1639 = !DILocation(line: 632, column: 66, scope: !1637, inlinedAt: !1336)
!1640 = !DILocation(line: 632, column: 83, scope: !1637, inlinedAt: !1336)
!1641 = !DILocation(line: 632, column: 61, scope: !1637, inlinedAt: !1336)
!1642 = !DILocation(line: 632, column: 94, scope: !1637, inlinedAt: !1336)
!1643 = !DILocation(line: 632, column: 29, scope: !1637, inlinedAt: !1336)
!1644 = !DILocation(line: 632, column: 11, scope: !1637, inlinedAt: !1336)
!1645 = !DILocation(line: 633, column: 21, scope: !1646, inlinedAt: !1336)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 633, column: 9)
!1647 = !DILocation(line: 633, column: 39, scope: !1646, inlinedAt: !1336)
!1648 = !DILocation(line: 633, column: 54, scope: !1646, inlinedAt: !1336)
!1649 = !DILocation(line: 633, column: 71, scope: !1646, inlinedAt: !1336)
!1650 = !DILocation(line: 633, column: 49, scope: !1646, inlinedAt: !1336)
!1651 = !DILocation(line: 633, column: 82, scope: !1646, inlinedAt: !1336)
!1652 = !DILocation(line: 633, column: 13, scope: !1646, inlinedAt: !1336)
!1653 = !DILocation(line: 633, column: 9, scope: !1637, inlinedAt: !1336)
!1654 = !DILocation(line: 635, column: 7, scope: !1655, inlinedAt: !1336)
!1655 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 634, column: 5)
!1656 = !DILocation(line: 636, column: 5, scope: !1655, inlinedAt: !1336)
!1657 = !DILocation(line: 639, column: 10, scope: !1315, inlinedAt: !1336)
!1658 = !DILocation(line: 639, column: 27, scope: !1315, inlinedAt: !1336)
!1659 = !DILocation(line: 639, column: 7, scope: !2, inlinedAt: !1336)
!1660 = !DILocation(line: 641, column: 22, scope: !1661, inlinedAt: !1336)
!1661 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 640, column: 3)
!1662 = !DILocation(line: 642, column: 22, scope: !1661, inlinedAt: !1336)
!1663 = !DILocation(line: 643, column: 28, scope: !1661, inlinedAt: !1336)
!1664 = !DILocation(line: 643, column: 23, scope: !1661, inlinedAt: !1336)
!1665 = !DILocation(line: 643, column: 55, scope: !1661, inlinedAt: !1336)
!1666 = !DILocation(line: 643, column: 50, scope: !1661, inlinedAt: !1336)
!1667 = !DILocation(line: 644, column: 55, scope: !1661, inlinedAt: !1336)
!1668 = !DILocation(line: 644, column: 50, scope: !1661, inlinedAt: !1336)
!1669 = !DILocation(line: 645, column: 21, scope: !1661, inlinedAt: !1336)
!1670 = !DILocation(line: 645, column: 27, scope: !1661, inlinedAt: !1336)
!1671 = !DILocation(line: 645, scope: !1661, inlinedAt: !1336)
!1672 = !DILocation(line: 645, column: 11, scope: !1661, inlinedAt: !1336)
!1673 = !DILocation(line: 647, column: 14, scope: !1661, inlinedAt: !1336)
!1674 = !DILocation(line: 647, column: 26, scope: !1661, inlinedAt: !1336)
!1675 = !DILocation(line: 647, column: 23, scope: !1661, inlinedAt: !1336)
!1676 = !DILocation(line: 647, column: 44, scope: !1661, inlinedAt: !1336)
!1677 = !DILocation(line: 647, column: 58, scope: !1661, inlinedAt: !1336)
!1678 = !DILocation(line: 647, column: 146, scope: !1661, inlinedAt: !1336)
!1679 = !DILocation(line: 647, column: 7, scope: !1661, inlinedAt: !1336)
!1680 = !DILocation(line: 648, column: 8, scope: !1661, inlinedAt: !1336)
!1681 = !DILocation(line: 650, column: 35, scope: !1682, inlinedAt: !1336)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 649, column: 5)
!1683 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 648, column: 8)
!1684 = !DILocation(line: 650, column: 56, scope: !1682, inlinedAt: !1336)
!1685 = !DILocation(line: 650, column: 71, scope: !1682, inlinedAt: !1336)
!1686 = !DILocation(line: 650, column: 91, scope: !1682, inlinedAt: !1336)
!1687 = !DILocation(line: 650, column: 66, scope: !1682, inlinedAt: !1336)
!1688 = !DILocation(line: 650, column: 102, scope: !1682, inlinedAt: !1336)
!1689 = !DILocation(line: 650, column: 31, scope: !1682, inlinedAt: !1336)
!1690 = !DILocation(line: 650, column: 13, scope: !1682, inlinedAt: !1336)
!1691 = !DILocation(line: 651, column: 23, scope: !1692, inlinedAt: !1336)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 651, column: 11)
!1693 = !DILocation(line: 651, column: 44, scope: !1692, inlinedAt: !1336)
!1694 = !DILocation(line: 651, column: 59, scope: !1692, inlinedAt: !1336)
!1695 = !DILocation(line: 651, column: 79, scope: !1692, inlinedAt: !1336)
!1696 = !DILocation(line: 651, column: 54, scope: !1692, inlinedAt: !1336)
!1697 = !DILocation(line: 651, column: 90, scope: !1692, inlinedAt: !1336)
!1698 = !DILocation(line: 651, column: 15, scope: !1692, inlinedAt: !1336)
!1699 = !DILocation(line: 651, column: 11, scope: !1682, inlinedAt: !1336)
!1700 = !DILocation(line: 653, column: 9, scope: !1701, inlinedAt: !1336)
!1701 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 652, column: 7)
!1702 = !DILocation(line: 654, column: 7, scope: !1701, inlinedAt: !1336)
!1703 = !DILocation(line: 657, column: 9, scope: !1661, inlinedAt: !1336)
!1704 = !DILocation(line: 659, column: 23, scope: !1705, inlinedAt: !1336)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 658, column: 5)
!1706 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 657, column: 9)
!1707 = !DILocation(line: 659, column: 29, scope: !1705, inlinedAt: !1336)
!1708 = !DILocation(line: 659, scope: !1705, inlinedAt: !1336)
!1709 = !DILocation(line: 659, column: 13, scope: !1705, inlinedAt: !1336)
!1710 = !DILocation(line: 660, column: 14, scope: !1705, inlinedAt: !1336)
!1711 = !DILocation(line: 660, column: 26, scope: !1705, inlinedAt: !1336)
!1712 = !DILocation(line: 660, column: 23, scope: !1705, inlinedAt: !1336)
!1713 = !DILocation(line: 660, column: 44, scope: !1705, inlinedAt: !1336)
!1714 = !DILocation(line: 660, column: 58, scope: !1705, inlinedAt: !1336)
!1715 = !DILocation(line: 660, column: 146, scope: !1705, inlinedAt: !1336)
!1716 = !DILocation(line: 660, column: 7, scope: !1705, inlinedAt: !1336)
!1717 = !DILocation(line: 662, column: 10, scope: !1705, inlinedAt: !1336)
!1718 = !DILocation(line: 664, column: 37, scope: !1719, inlinedAt: !1336)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 663, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 662, column: 10)
!1721 = !DILocation(line: 664, column: 58, scope: !1719, inlinedAt: !1336)
!1722 = !DILocation(line: 664, column: 73, scope: !1719, inlinedAt: !1336)
!1723 = !DILocation(line: 664, column: 93, scope: !1719, inlinedAt: !1336)
!1724 = !DILocation(line: 664, column: 68, scope: !1719, inlinedAt: !1336)
!1725 = !DILocation(line: 664, column: 104, scope: !1719, inlinedAt: !1336)
!1726 = !DILocation(line: 664, column: 33, scope: !1719, inlinedAt: !1336)
!1727 = !DILocation(line: 664, column: 15, scope: !1719, inlinedAt: !1336)
!1728 = !DILocation(line: 665, column: 25, scope: !1729, inlinedAt: !1336)
!1729 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 665, column: 13)
!1730 = !DILocation(line: 665, column: 46, scope: !1729, inlinedAt: !1336)
!1731 = !DILocation(line: 665, column: 61, scope: !1729, inlinedAt: !1336)
!1732 = !DILocation(line: 665, column: 81, scope: !1729, inlinedAt: !1336)
!1733 = !DILocation(line: 665, column: 56, scope: !1729, inlinedAt: !1336)
!1734 = !DILocation(line: 665, column: 92, scope: !1729, inlinedAt: !1336)
!1735 = !DILocation(line: 665, column: 17, scope: !1729, inlinedAt: !1336)
!1736 = !DILocation(line: 665, column: 13, scope: !1719, inlinedAt: !1336)
!1737 = !DILocation(line: 667, column: 11, scope: !1738, inlinedAt: !1336)
!1738 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 666, column: 9)
!1739 = !DILocation(line: 668, column: 9, scope: !1738, inlinedAt: !1336)
!1740 = !DILocation(line: 674, column: 16, scope: !1313, inlinedAt: !1336)
!1741 = !DILocation(line: 674, column: 9, scope: !1313, inlinedAt: !1336)
!1742 = !DILocation(line: 674, column: 9, scope: !1314, inlinedAt: !1336)
!1743 = !DILocation(line: 677, column: 44, scope: !1312, inlinedAt: !1336)
!1744 = !DILocation(line: 677, column: 37, scope: !1312, inlinedAt: !1336)
!1745 = !DILocation(line: 677, column: 58, scope: !1312, inlinedAt: !1336)
!1746 = !DILocation(line: 677, column: 34, scope: !1312, inlinedAt: !1336)
!1747 = !DILocation(line: 677, column: 23, scope: !1312, inlinedAt: !1336)
!1748 = !DILocation(line: 0, scope: !1312, inlinedAt: !1336)
!1749 = !DILocation(line: 679, column: 26, scope: !1312, inlinedAt: !1336)
!1750 = !DILocation(line: 679, column: 40, scope: !1312, inlinedAt: !1336)
!1751 = !DILocation(line: 679, column: 46, scope: !1312, inlinedAt: !1336)
!1752 = !DILocation(line: 679, column: 53, scope: !1312, inlinedAt: !1336)
!1753 = !DILocation(line: 679, column: 59, scope: !1312, inlinedAt: !1336)
!1754 = !DILocation(line: 679, column: 7, scope: !1312, inlinedAt: !1336)
!1755 = !DILocation(line: 681, column: 22, scope: !1756, inlinedAt: !1336)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 681, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 681, column: 7)
!1758 = !DILocation(line: 681, column: 28, scope: !1756, inlinedAt: !1336)
!1759 = !DILocation(line: 681, column: 18, scope: !1756, inlinedAt: !1336)
!1760 = !DILocation(line: 690, column: 24, scope: !1312, inlinedAt: !1336)
!1761 = !DILocation(line: 681, column: 7, scope: !1757, inlinedAt: !1336)
!1762 = !DILocation(line: 683, column: 24, scope: !1763, inlinedAt: !1336)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 683, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 683, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 682, column: 7)
!1766 = !DILocation(line: 683, column: 20, scope: !1763, inlinedAt: !1336)
!1767 = !DILocation(line: 683, column: 9, scope: !1764, inlinedAt: !1336)
!1768 = !DILocation(line: 685, column: 14, scope: !1769, inlinedAt: !1336)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 684, column: 9)
!1770 = !DILocation(line: 685, column: 11, scope: !1769, inlinedAt: !1336)
!1771 = !DILocation(line: 685, column: 28, scope: !1769, inlinedAt: !1336)
!1772 = !DILocation(line: 683, column: 35, scope: !1763, inlinedAt: !1336)
!1773 = !DILocation(line: 683, column: 30, scope: !1763, inlinedAt: !1336)
!1774 = distinct !{!1774, !1767, !1775}
!1775 = !DILocation(line: 686, column: 9, scope: !1764, inlinedAt: !1336)
!1776 = !DILocation(line: 681, column: 33, scope: !1756, inlinedAt: !1336)
!1777 = distinct !{!1777, !1761, !1778}
!1778 = !DILocation(line: 687, column: 7, scope: !1757, inlinedAt: !1336)
!1779 = !DILocation(line: 690, column: 30, scope: !1312, inlinedAt: !1336)
!1780 = !DILocation(line: 690, column: 40, scope: !1312, inlinedAt: !1336)
!1781 = !DILocation(line: 690, column: 21, scope: !1312, inlinedAt: !1336)
!1782 = !DILocation(line: 690, column: 13, scope: !1312, inlinedAt: !1336)
!1783 = !DILocation(line: 691, column: 14, scope: !1312, inlinedAt: !1336)
!1784 = !DILocation(line: 691, column: 26, scope: !1312, inlinedAt: !1336)
!1785 = !DILocation(line: 691, column: 23, scope: !1312, inlinedAt: !1336)
!1786 = !DILocation(line: 691, column: 50, scope: !1312, inlinedAt: !1336)
!1787 = !DILocation(line: 691, column: 98, scope: !1312, inlinedAt: !1336)
!1788 = !DILocation(line: 691, column: 112, scope: !1312, inlinedAt: !1336)
!1789 = !DILocation(line: 691, column: 124, scope: !1312, inlinedAt: !1336)
!1790 = !DILocation(line: 691, column: 139, scope: !1312, inlinedAt: !1336)
!1791 = !DILocation(line: 691, column: 152, scope: !1312, inlinedAt: !1336)
!1792 = !DILocation(line: 691, column: 163, scope: !1312, inlinedAt: !1336)
!1793 = !DILocation(line: 691, column: 7, scope: !1312, inlinedAt: !1336)
!1794 = !DILocation(line: 693, column: 58, scope: !1312, inlinedAt: !1336)
!1795 = !DILocation(line: 693, column: 76, scope: !1312, inlinedAt: !1336)
!1796 = !DILocation(line: 693, column: 52, scope: !1312, inlinedAt: !1336)
!1797 = !DILocation(line: 693, column: 86, scope: !1312, inlinedAt: !1336)
!1798 = !DILocation(line: 693, column: 95, scope: !1312, inlinedAt: !1336)
!1799 = !DILocation(line: 693, column: 112, scope: !1312, inlinedAt: !1336)
!1800 = !DILocation(line: 693, column: 89, scope: !1312, inlinedAt: !1336)
!1801 = !DILocation(line: 693, column: 123, scope: !1312, inlinedAt: !1336)
!1802 = !DILocation(line: 693, column: 31, scope: !1312, inlinedAt: !1336)
!1803 = !DILocation(line: 693, column: 13, scope: !1312, inlinedAt: !1336)
!1804 = !DILocation(line: 694, column: 46, scope: !1805, inlinedAt: !1336)
!1805 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 694, column: 11)
!1806 = !DILocation(line: 694, column: 64, scope: !1805, inlinedAt: !1336)
!1807 = !DILocation(line: 694, column: 40, scope: !1805, inlinedAt: !1336)
!1808 = !DILocation(line: 694, column: 74, scope: !1805, inlinedAt: !1336)
!1809 = !DILocation(line: 694, column: 83, scope: !1805, inlinedAt: !1336)
!1810 = !DILocation(line: 694, column: 100, scope: !1805, inlinedAt: !1336)
!1811 = !DILocation(line: 694, column: 77, scope: !1805, inlinedAt: !1336)
!1812 = !DILocation(line: 694, column: 111, scope: !1805, inlinedAt: !1336)
!1813 = !DILocation(line: 694, column: 15, scope: !1805, inlinedAt: !1336)
!1814 = !DILocation(line: 694, column: 11, scope: !1312, inlinedAt: !1336)
!1815 = !DILocation(line: 696, column: 9, scope: !1816, inlinedAt: !1336)
!1816 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 695, column: 7)
!1817 = !DILocation(line: 698, column: 58, scope: !1312, inlinedAt: !1336)
!1818 = !DILocation(line: 698, column: 95, scope: !1312, inlinedAt: !1336)
!1819 = !DILocation(line: 698, column: 76, scope: !1312, inlinedAt: !1336)
!1820 = !DILocation(line: 698, column: 52, scope: !1312, inlinedAt: !1336)
!1821 = !DILocation(line: 698, column: 86, scope: !1312, inlinedAt: !1336)
!1822 = !DILocation(line: 698, column: 112, scope: !1312, inlinedAt: !1336)
!1823 = !DILocation(line: 698, column: 89, scope: !1312, inlinedAt: !1336)
!1824 = !DILocation(line: 698, column: 123, scope: !1312, inlinedAt: !1336)
!1825 = !DILocation(line: 697, column: 7, scope: !1816, inlinedAt: !1336)
!1826 = !DILocation(line: 698, column: 31, scope: !1312, inlinedAt: !1336)
!1827 = !DILocation(line: 698, column: 13, scope: !1312, inlinedAt: !1336)
!1828 = !DILocation(line: 699, column: 46, scope: !1829, inlinedAt: !1336)
!1829 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 699, column: 11)
!1830 = !DILocation(line: 699, column: 64, scope: !1829, inlinedAt: !1336)
!1831 = !DILocation(line: 699, column: 40, scope: !1829, inlinedAt: !1336)
!1832 = !DILocation(line: 699, column: 74, scope: !1829, inlinedAt: !1336)
!1833 = !DILocation(line: 699, column: 83, scope: !1829, inlinedAt: !1336)
!1834 = !DILocation(line: 699, column: 100, scope: !1829, inlinedAt: !1336)
!1835 = !DILocation(line: 699, column: 77, scope: !1829, inlinedAt: !1336)
!1836 = !DILocation(line: 699, column: 111, scope: !1829, inlinedAt: !1336)
!1837 = !DILocation(line: 699, column: 15, scope: !1829, inlinedAt: !1336)
!1838 = !DILocation(line: 699, column: 11, scope: !1312, inlinedAt: !1336)
!1839 = !DILocation(line: 701, column: 9, scope: !1840, inlinedAt: !1336)
!1840 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 700, column: 7)
!1841 = !DILocation(line: 702, column: 7, scope: !1840, inlinedAt: !1336)
!1842 = !DILocation(line: 703, column: 7, scope: !1312, inlinedAt: !1336)
!1843 = !DILocation(line: 704, column: 24, scope: !1312, inlinedAt: !1336)
!1844 = !DILocation(line: 704, column: 7, scope: !1312, inlinedAt: !1336)
!1845 = !DILocation(line: 705, column: 15, scope: !1312, inlinedAt: !1336)
!1846 = !DILocation(line: 706, column: 5, scope: !1312, inlinedAt: !1336)
!1847 = !DILocation(line: 712, column: 1, scope: !2, inlinedAt: !1336)
!1848 = !DILocation(line: 436, column: 1, scope: !1326)
!1849 = distinct !DISubprogram(name: "init_out_buffer", scope: !3, file: !3, line: 720, type: !1850, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1852)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !6}
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1849, file: !3, line: 720, type: !6)
!1854 = !DILocation(line: 0, scope: !1849)
!1855 = !DILocation(line: 722, column: 23, scope: !1849)
!1856 = !DILocation(line: 722, column: 10, scope: !1849)
!1857 = !DILocation(line: 722, column: 21, scope: !1849)
!1858 = !DILocation(line: 730, column: 1, scope: !1849)
!1859 = !DISubprogram(name: "alloc_frame_store", scope: !406, file: !406, line: 214, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!414}
!1862 = distinct !DISubprogram(name: "uninit_out_buffer", scope: !3, file: !3, line: 738, type: !1850, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1863)
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1862, file: !3, line: 738, type: !6)
!1865 = !DILocation(line: 0, scope: !1862)
!1866 = !DILocation(line: 740, column: 27, scope: !1862)
!1867 = !DILocation(line: 740, column: 3, scope: !1862)
!1868 = !DILocation(line: 741, column: 20, scope: !1862)
!1869 = !DILocation(line: 746, column: 1, scope: !1862)
!1870 = !DISubprogram(name: "free_frame_store", scope: !406, file: !406, line: 215, type: !1871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !414}
!1873 = distinct !DISubprogram(name: "clear_picture", scope: !3, file: !3, line: 754, type: !1874, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !6, !431}
!1876 = !{!1877, !1878, !1879, !1880}
!1877 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1873, file: !3, line: 754, type: !6)
!1878 = !DILocalVariable(name: "p", arg: 2, scope: !1873, file: !3, line: 754, type: !431)
!1879 = !DILocalVariable(name: "i", scope: !1873, file: !3, line: 756, type: !23)
!1880 = !DILocalVariable(name: "j", scope: !1873, file: !3, line: 756, type: !23)
!1881 = !DILocation(line: 0, scope: !1873)
!1882 = !DILocation(line: 758, column: 16, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 758, column: 3)
!1884 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 758, column: 3)
!1885 = !DILocation(line: 758, column: 12, scope: !1883)
!1886 = !DILocation(line: 758, column: 3, scope: !1884)
!1887 = !DILocation(line: 760, column: 20, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 760, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 760, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 759, column: 3)
!1891 = !DILocation(line: 760, column: 16, scope: !1888)
!1892 = !DILocation(line: 760, column: 5, scope: !1889)
!1893 = !DILocation(line: 763, column: 16, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 763, column: 3)
!1895 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 763, column: 3)
!1896 = !DILocation(line: 763, column: 12, scope: !1894)
!1897 = !DILocation(line: 763, column: 3, scope: !1895)
!1898 = !DILocation(line: 765, column: 20, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 765, column: 5)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 765, column: 5)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 764, column: 3)
!1902 = !DILocation(line: 765, column: 16, scope: !1899)
!1903 = !DILocation(line: 761, column: 32, scope: !1888)
!1904 = !DILocation(line: 761, column: 23, scope: !1888)
!1905 = !DILocation(line: 761, column: 10, scope: !1888)
!1906 = !DILocation(line: 761, column: 7, scope: !1888)
!1907 = !DILocation(line: 761, column: 21, scope: !1888)
!1908 = !DILocation(line: 760, column: 29, scope: !1888)
!1909 = distinct !{!1909, !1892, !1910}
!1910 = !DILocation(line: 761, column: 59, scope: !1889)
!1911 = !DILocation(line: 758, column: 24, scope: !1883)
!1912 = distinct !{!1912, !1886, !1913, !1914}
!1913 = !DILocation(line: 762, column: 3, scope: !1884)
!1914 = !{!"llvm.loop.unswitch.partial.disable"}
!1915 = !DILocation(line: 765, column: 5, scope: !1900)
!1916 = !DILocation(line: 768, column: 12, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 768, column: 3)
!1918 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 768, column: 3)
!1919 = !DILocation(line: 768, column: 3, scope: !1918)
!1920 = !DILocation(line: 770, column: 20, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 770, column: 5)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 770, column: 5)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 769, column: 3)
!1924 = !DILocation(line: 770, column: 16, scope: !1921)
!1925 = !DILocation(line: 766, column: 36, scope: !1899)
!1926 = !DILocation(line: 766, column: 27, scope: !1899)
!1927 = !DILocation(line: 766, column: 10, scope: !1899)
!1928 = !DILocation(line: 766, column: 7, scope: !1899)
!1929 = !DILocation(line: 766, column: 25, scope: !1899)
!1930 = !DILocation(line: 765, column: 32, scope: !1899)
!1931 = distinct !{!1931, !1915, !1932}
!1932 = !DILocation(line: 766, column: 63, scope: !1900)
!1933 = !DILocation(line: 763, column: 27, scope: !1894)
!1934 = distinct !{!1934, !1897, !1935, !1914}
!1935 = !DILocation(line: 767, column: 3, scope: !1895)
!1936 = !DILocation(line: 770, column: 5, scope: !1922)
!1937 = !DILocation(line: 771, column: 36, scope: !1921)
!1938 = !DILocation(line: 771, column: 27, scope: !1921)
!1939 = !DILocation(line: 771, column: 10, scope: !1921)
!1940 = !DILocation(line: 771, column: 7, scope: !1921)
!1941 = !DILocation(line: 771, column: 25, scope: !1921)
!1942 = !DILocation(line: 770, column: 32, scope: !1921)
!1943 = distinct !{!1943, !1936, !1944}
!1944 = !DILocation(line: 771, column: 63, scope: !1922)
!1945 = !DILocation(line: 768, column: 16, scope: !1917)
!1946 = !DILocation(line: 768, column: 27, scope: !1917)
!1947 = distinct !{!1947, !1919, !1948, !1914}
!1948 = !DILocation(line: 772, column: 3, scope: !1918)
!1949 = !DILocation(line: 773, column: 1, scope: !1873)
!1950 = distinct !DISubprogram(name: "write_unpaired_field", scope: !3, file: !3, line: 789, type: !1951, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !6, !414, !23}
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1950, file: !3, line: 789, type: !6)
!1955 = !DILocalVariable(name: "fs", arg: 2, scope: !1950, file: !3, line: 789, type: !414)
!1956 = !DILocalVariable(name: "p_out", arg: 3, scope: !1950, file: !3, line: 789, type: !23)
!1957 = !DILocalVariable(name: "p", scope: !1950, file: !3, line: 791, type: !431)
!1958 = !DILocation(line: 0, scope: !1950)
!1959 = !DILocation(line: 794, column: 10, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 794, column: 6)
!1961 = !DILocation(line: 794, column: 18, scope: !1960)
!1962 = !DILocation(line: 794, column: 6, scope: !1950)
!1963 = !DILocation(line: 798, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 795, column: 3)
!1965 = !DILocation(line: 799, column: 71, scope: !1964)
!1966 = !DILocation(line: 799, column: 84, scope: !1964)
!1967 = !DILocation(line: 799, column: 80, scope: !1964)
!1968 = !DILocation(line: 799, column: 95, scope: !1964)
!1969 = !DILocation(line: 799, column: 111, scope: !1964)
!1970 = !DILocation(line: 799, column: 107, scope: !1964)
!1971 = !DILocation(line: 799, column: 24, scope: !1964)
!1972 = !DILocation(line: 799, column: 9, scope: !1964)
!1973 = !DILocation(line: 799, column: 22, scope: !1964)
!1974 = !DILocation(line: 800, column: 46, scope: !1964)
!1975 = !DILocation(line: 800, column: 23, scope: !1964)
!1976 = !DILocation(line: 800, column: 41, scope: !1964)
!1977 = !DILocation(line: 801, column: 30, scope: !1964)
!1978 = !DILocation(line: 801, column: 5, scope: !1964)
!1979 = !DILocation(line: 802, column: 5, scope: !1964)
!1980 = !DILocation(line: 804, column: 30, scope: !1964)
!1981 = !DILocation(line: 804, column: 9, scope: !1964)
!1982 = !DILocation(line: 804, column: 16, scope: !1964)
!1983 = !DILocation(line: 804, column: 24, scope: !1964)
!1984 = !DILocation(line: 806, column: 31, scope: !1964)
!1985 = !DILocation(line: 806, column: 5, scope: !1964)
!1986 = !DILocation(line: 809, column: 10, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 809, column: 6)
!1988 = !DILocation(line: 807, column: 3, scope: !1964)
!1989 = !DILocation(line: 809, column: 18, scope: !1987)
!1990 = !DILocation(line: 809, column: 6, scope: !1950)
!1991 = !DILocation(line: 813, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 810, column: 3)
!1993 = !DILocation(line: 814, column: 65, scope: !1992)
!1994 = !DILocation(line: 814, column: 78, scope: !1992)
!1995 = !DILocation(line: 814, column: 74, scope: !1992)
!1996 = !DILocation(line: 814, column: 89, scope: !1992)
!1997 = !DILocation(line: 814, column: 105, scope: !1992)
!1998 = !DILocation(line: 814, column: 101, scope: !1992)
!1999 = !DILocation(line: 814, column: 21, scope: !1992)
!2000 = !DILocation(line: 814, column: 9, scope: !1992)
!2001 = !DILocation(line: 814, column: 19, scope: !1992)
!2002 = !DILocation(line: 815, column: 43, scope: !1992)
!2003 = !DILocation(line: 815, column: 20, scope: !1992)
!2004 = !DILocation(line: 815, column: 38, scope: !1992)
!2005 = !DILocation(line: 816, column: 30, scope: !1992)
!2006 = !DILocation(line: 816, column: 5, scope: !1992)
!2007 = !DILocation(line: 817, column: 47, scope: !1992)
!2008 = !DILocation(line: 817, column: 61, scope: !1992)
!2009 = !DILocation(line: 817, column: 10, scope: !1992)
!2010 = !DILocation(line: 817, column: 21, scope: !1992)
!2011 = !DILocation(line: 817, column: 41, scope: !1992)
!2012 = !DILocation(line: 818, column: 13, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 818, column: 8)
!2014 = !DILocation(line: 818, column: 24, scope: !2013)
!2015 = !DILocation(line: 818, column: 8, scope: !2013)
!2016 = !DILocation(line: 818, column: 8, scope: !1992)
!2017 = !DILocation(line: 820, column: 60, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 819, column: 5)
!2019 = !DILocation(line: 820, column: 74, scope: !2018)
!2020 = !DILocation(line: 820, column: 23, scope: !2018)
!2021 = !DILocation(line: 820, column: 54, scope: !2018)
!2022 = !DILocation(line: 821, column: 63, scope: !2018)
!2023 = !DILocation(line: 821, column: 77, scope: !2018)
!2024 = !DILocation(line: 821, column: 12, scope: !2018)
!2025 = !DILocation(line: 821, column: 23, scope: !2018)
!2026 = !DILocation(line: 821, column: 57, scope: !2018)
!2027 = !DILocation(line: 822, column: 61, scope: !2018)
!2028 = !DILocation(line: 822, column: 75, scope: !2018)
!2029 = !DILocation(line: 822, column: 12, scope: !2018)
!2030 = !DILocation(line: 822, column: 23, scope: !2018)
!2031 = !DILocation(line: 822, column: 55, scope: !2018)
!2032 = !DILocation(line: 823, column: 62, scope: !2018)
!2033 = !DILocation(line: 823, column: 76, scope: !2018)
!2034 = !DILocation(line: 823, column: 12, scope: !2018)
!2035 = !DILocation(line: 823, column: 23, scope: !2018)
!2036 = !DILocation(line: 823, column: 56, scope: !2018)
!2037 = !DILocation(line: 824, column: 5, scope: !2018)
!2038 = !DILocation(line: 825, column: 5, scope: !1992)
!2039 = !DILocation(line: 827, column: 30, scope: !1992)
!2040 = !DILocation(line: 827, column: 9, scope: !1992)
!2041 = !DILocation(line: 827, column: 16, scope: !1992)
!2042 = !DILocation(line: 827, column: 24, scope: !1992)
!2043 = !DILocation(line: 829, column: 31, scope: !1992)
!2044 = !DILocation(line: 829, column: 5, scope: !1992)
!2045 = !DILocation(line: 830, column: 3, scope: !1992)
!2046 = !DILocation(line: 832, column: 15, scope: !1950)
!2047 = !DILocation(line: 833, column: 1, scope: !1950)
!2048 = !DISubprogram(name: "alloc_storable_picture", scope: !406, file: !406, line: 216, type: !2049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!431, !6, !436, !23, !23, !23, !23}
!2051 = !DISubprogram(name: "dpb_combine_field_yuv", scope: !406, file: !406, line: 246, type: !2052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !6, !414}
!2054 = distinct !DISubprogram(name: "flush_direct_output", scope: !3, file: !3, line: 846, type: !1413, scopeLine: 847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !2055)
!2055 = !{!2056, !2057}
!2056 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2054, file: !3, line: 846, type: !6)
!2057 = !DILocalVariable(name: "p_out", arg: 2, scope: !2054, file: !3, line: 846, type: !23)
!2058 = !DILocation(line: 0, scope: !2054)
!2059 = !DILocation(line: 848, column: 38, scope: !2054)
!2060 = !DILocation(line: 848, column: 3, scope: !2054)
!2061 = !DILocation(line: 850, column: 32, scope: !2054)
!2062 = !DILocation(line: 850, column: 44, scope: !2054)
!2063 = !DILocation(line: 850, column: 3, scope: !2054)
!2064 = !DILocation(line: 851, column: 10, scope: !2054)
!2065 = !DILocation(line: 851, column: 22, scope: !2054)
!2066 = !DILocation(line: 851, column: 28, scope: !2054)
!2067 = !DILocation(line: 852, column: 32, scope: !2054)
!2068 = !DILocation(line: 852, column: 44, scope: !2054)
!2069 = !DILocation(line: 852, column: 3, scope: !2054)
!2070 = !DILocation(line: 853, column: 10, scope: !2054)
!2071 = !DILocation(line: 853, column: 22, scope: !2054)
!2072 = !DILocation(line: 853, column: 32, scope: !2054)
!2073 = !DILocation(line: 854, column: 32, scope: !2054)
!2074 = !DILocation(line: 854, column: 44, scope: !2054)
!2075 = !DILocation(line: 854, column: 3, scope: !2054)
!2076 = !DILocation(line: 855, column: 10, scope: !2054)
!2077 = !DILocation(line: 855, column: 22, scope: !2054)
!2078 = !DILocation(line: 855, column: 35, scope: !2054)
!2079 = !DILocation(line: 856, column: 10, scope: !2054)
!2080 = !DILocation(line: 856, column: 30, scope: !2054)
!2081 = !DILocation(line: 857, column: 1, scope: !2054)
!2082 = !DISubprogram(name: "free_storable_picture", scope: !406, file: !406, line: 217, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !431}
!2085 = distinct !DISubprogram(name: "write_stored_frame", scope: !3, file: !3, line: 873, type: !1951, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2085, file: !3, line: 873, type: !6)
!2088 = !DILocalVariable(name: "fs", arg: 2, scope: !2085, file: !3, line: 873, type: !414)
!2089 = !DILocalVariable(name: "p_out", arg: 3, scope: !2085, file: !3, line: 873, type: !23)
!2090 = !DILocation(line: 0, scope: !2085)
!2091 = !DILocation(line: 0, scope: !2054, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 876, column: 3, scope: !2085)
!2093 = !DILocation(line: 848, column: 38, scope: !2054, inlinedAt: !2092)
!2094 = !DILocation(line: 848, column: 3, scope: !2054, inlinedAt: !2092)
!2095 = !DILocation(line: 850, column: 32, scope: !2054, inlinedAt: !2092)
!2096 = !DILocation(line: 850, column: 44, scope: !2054, inlinedAt: !2092)
!2097 = !DILocation(line: 850, column: 3, scope: !2054, inlinedAt: !2092)
!2098 = !DILocation(line: 851, column: 10, scope: !2054, inlinedAt: !2092)
!2099 = !DILocation(line: 851, column: 22, scope: !2054, inlinedAt: !2092)
!2100 = !DILocation(line: 851, column: 28, scope: !2054, inlinedAt: !2092)
!2101 = !DILocation(line: 852, column: 32, scope: !2054, inlinedAt: !2092)
!2102 = !DILocation(line: 852, column: 44, scope: !2054, inlinedAt: !2092)
!2103 = !DILocation(line: 852, column: 3, scope: !2054, inlinedAt: !2092)
!2104 = !DILocation(line: 853, column: 10, scope: !2054, inlinedAt: !2092)
!2105 = !DILocation(line: 853, column: 22, scope: !2054, inlinedAt: !2092)
!2106 = !DILocation(line: 853, column: 32, scope: !2054, inlinedAt: !2092)
!2107 = !DILocation(line: 854, column: 32, scope: !2054, inlinedAt: !2092)
!2108 = !DILocation(line: 854, column: 44, scope: !2054, inlinedAt: !2092)
!2109 = !DILocation(line: 854, column: 3, scope: !2054, inlinedAt: !2092)
!2110 = !DILocation(line: 855, column: 10, scope: !2054, inlinedAt: !2092)
!2111 = !DILocation(line: 855, column: 22, scope: !2054, inlinedAt: !2092)
!2112 = !DILocation(line: 855, column: 35, scope: !2054, inlinedAt: !2092)
!2113 = !DILocation(line: 856, column: 10, scope: !2054, inlinedAt: !2092)
!2114 = !DILocation(line: 856, column: 30, scope: !2054, inlinedAt: !2092)
!2115 = !DILocation(line: 878, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 878, column: 7)
!2117 = !DILocation(line: 878, column: 18, scope: !2116)
!2118 = !DILocation(line: 878, column: 7, scope: !2085)
!2119 = !DILocation(line: 880, column: 5, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 879, column: 3)
!2121 = !DILocation(line: 881, column: 3, scope: !2120)
!2122 = !DILocation(line: 884, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 884, column: 9)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 883, column: 3)
!2125 = !DILocation(line: 884, column: 9, scope: !2123)
!2126 = !DILocation(line: 884, column: 9, scope: !2124)
!2127 = !DILocation(line: 885, column: 14, scope: !2123)
!2128 = !DILocation(line: 885, column: 28, scope: !2123)
!2129 = !DILocation(line: 885, column: 7, scope: !2123)
!2130 = !DILocation(line: 886, column: 18, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 886, column: 9)
!2132 = !DILocation(line: 886, column: 11, scope: !2131)
!2133 = !DILocation(line: 886, column: 41, scope: !2131)
!2134 = !DILocation(line: 886, column: 51, scope: !2131)
!2135 = !DILocation(line: 886, column: 44, scope: !2131)
!2136 = !DILocation(line: 886, column: 9, scope: !2124)
!2137 = !DILocation(line: 887, column: 32, scope: !2131)
!2138 = !DILocation(line: 887, column: 7, scope: !2131)
!2139 = !DILocation(line: 890, column: 7, scope: !2085)
!2140 = !DILocation(line: 890, column: 17, scope: !2085)
!2141 = !DILocation(line: 891, column: 1, scope: !2085)
!2142 = distinct !DISubprogram(name: "direct_output", scope: !3, file: !3, line: 907, type: !4, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !2143)
!2143 = !{!2144, !2145, !2146, !2147}
!2144 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !2142, file: !3, line: 907, type: !6)
!2145 = !DILocalVariable(name: "p", arg: 2, scope: !2142, file: !3, line: 907, type: !431)
!2146 = !DILocalVariable(name: "p_out", arg: 3, scope: !2142, file: !3, line: 907, type: !23)
!2147 = !DILocalVariable(name: "p_Inp", scope: !2142, file: !3, line: 909, type: !410)
!2148 = !DILocation(line: 0, scope: !2142)
!2149 = !DILocation(line: 909, column: 35, scope: !2142)
!2150 = !DILocation(line: 910, column: 10, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 910, column: 7)
!2152 = !DILocation(line: 910, column: 7, scope: !2142)
!2153 = !DILocation(line: 0, scope: !2054, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 914, column: 5, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 911, column: 3)
!2156 = !DILocation(line: 848, column: 38, scope: !2054, inlinedAt: !2154)
!2157 = !DILocation(line: 848, column: 3, scope: !2054, inlinedAt: !2154)
!2158 = !DILocation(line: 850, column: 32, scope: !2054, inlinedAt: !2154)
!2159 = !DILocation(line: 850, column: 44, scope: !2054, inlinedAt: !2154)
!2160 = !DILocation(line: 850, column: 3, scope: !2054, inlinedAt: !2154)
!2161 = !DILocation(line: 851, column: 10, scope: !2054, inlinedAt: !2154)
!2162 = !DILocation(line: 851, column: 22, scope: !2054, inlinedAt: !2154)
!2163 = !DILocation(line: 851, column: 28, scope: !2054, inlinedAt: !2154)
!2164 = !DILocation(line: 852, column: 32, scope: !2054, inlinedAt: !2154)
!2165 = !DILocation(line: 852, column: 44, scope: !2054, inlinedAt: !2154)
!2166 = !DILocation(line: 852, column: 3, scope: !2054, inlinedAt: !2154)
!2167 = !DILocation(line: 853, column: 10, scope: !2054, inlinedAt: !2154)
!2168 = !DILocation(line: 853, column: 22, scope: !2054, inlinedAt: !2154)
!2169 = !DILocation(line: 853, column: 32, scope: !2054, inlinedAt: !2154)
!2170 = !DILocation(line: 854, column: 32, scope: !2054, inlinedAt: !2154)
!2171 = !DILocation(line: 854, column: 44, scope: !2054, inlinedAt: !2154)
!2172 = !DILocation(line: 854, column: 3, scope: !2054, inlinedAt: !2154)
!2173 = !DILocation(line: 855, column: 10, scope: !2054, inlinedAt: !2154)
!2174 = !DILocation(line: 855, column: 22, scope: !2054, inlinedAt: !2154)
!2175 = !DILocation(line: 855, column: 35, scope: !2054, inlinedAt: !2154)
!2176 = !DILocation(line: 856, column: 10, scope: !2054, inlinedAt: !2154)
!2177 = !DILocation(line: 856, column: 30, scope: !2054, inlinedAt: !2154)
!2178 = !DILocation(line: 915, column: 5, scope: !2155)
!2179 = !DILocation(line: 916, column: 5, scope: !2155)
!2180 = !DILocation(line: 917, column: 22, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 917, column: 9)
!2182 = !DILocation(line: 917, column: 12, scope: !2181)
!2183 = !DILocation(line: 917, column: 28, scope: !2181)
!2184 = !DILocation(line: 917, column: 39, scope: !2181)
!2185 = !DILocation(line: 917, column: 32, scope: !2181)
!2186 = !DILocation(line: 917, column: 9, scope: !2155)
!2187 = !DILocation(line: 918, column: 7, scope: !2181)
!2188 = !DILocation(line: 919, column: 5, scope: !2155)
!2189 = !DILocation(line: 920, column: 5, scope: !2155)
!2190 = !DILocation(line: 925, column: 16, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 925, column: 9)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 924, column: 3)
!2193 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 923, column: 7)
!2194 = !DILocation(line: 925, column: 28, scope: !2191)
!2195 = !DILocation(line: 925, column: 36, scope: !2191)
!2196 = !DILocation(line: 925, column: 9, scope: !2192)
!2197 = !DILocation(line: 0, scope: !2054, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 926, column: 7, scope: !2191)
!2199 = !DILocation(line: 848, column: 3, scope: !2054, inlinedAt: !2198)
!2200 = !DILocation(line: 850, column: 32, scope: !2054, inlinedAt: !2198)
!2201 = !DILocation(line: 850, column: 44, scope: !2054, inlinedAt: !2198)
!2202 = !DILocation(line: 850, column: 3, scope: !2054, inlinedAt: !2198)
!2203 = !DILocation(line: 851, column: 10, scope: !2054, inlinedAt: !2198)
!2204 = !DILocation(line: 851, column: 22, scope: !2054, inlinedAt: !2198)
!2205 = !DILocation(line: 851, column: 28, scope: !2054, inlinedAt: !2198)
!2206 = !DILocation(line: 852, column: 32, scope: !2054, inlinedAt: !2198)
!2207 = !DILocation(line: 852, column: 44, scope: !2054, inlinedAt: !2198)
!2208 = !DILocation(line: 852, column: 3, scope: !2054, inlinedAt: !2198)
!2209 = !DILocation(line: 853, column: 10, scope: !2054, inlinedAt: !2198)
!2210 = !DILocation(line: 853, column: 22, scope: !2054, inlinedAt: !2198)
!2211 = !DILocation(line: 853, column: 32, scope: !2054, inlinedAt: !2198)
!2212 = !DILocation(line: 854, column: 32, scope: !2054, inlinedAt: !2198)
!2213 = !DILocation(line: 854, column: 44, scope: !2054, inlinedAt: !2198)
!2214 = !DILocation(line: 854, column: 3, scope: !2054, inlinedAt: !2198)
!2215 = !DILocation(line: 855, column: 10, scope: !2054, inlinedAt: !2198)
!2216 = !DILocation(line: 855, column: 22, scope: !2054, inlinedAt: !2198)
!2217 = !DILocation(line: 855, column: 35, scope: !2054, inlinedAt: !2198)
!2218 = !DILocation(line: 856, column: 10, scope: !2054, inlinedAt: !2198)
!2219 = !DILocation(line: 856, column: 30, scope: !2054, inlinedAt: !2198)
!2220 = !DILocation(line: 927, column: 12, scope: !2192)
!2221 = !DILocation(line: 926, column: 7, scope: !2191)
!2222 = !DILocation(line: 927, column: 24, scope: !2192)
!2223 = !DILocation(line: 927, column: 34, scope: !2192)
!2224 = !DILocation(line: 928, column: 12, scope: !2192)
!2225 = !DILocation(line: 928, column: 32, scope: !2192)
!2226 = !DILocation(line: 931, column: 10, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 931, column: 7)
!2228 = !DILocation(line: 929, column: 3, scope: !2192)
!2229 = !DILocation(line: 931, column: 20, scope: !2227)
!2230 = !DILocation(line: 931, column: 7, scope: !2142)
!2231 = !DILocation(line: 933, column: 16, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 933, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 932, column: 3)
!2234 = !DILocation(line: 933, column: 28, scope: !2232)
!2235 = !DILocation(line: 933, column: 36, scope: !2232)
!2236 = !DILocation(line: 933, column: 9, scope: !2233)
!2237 = !DILocation(line: 0, scope: !2054, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 934, column: 7, scope: !2232)
!2239 = !DILocation(line: 848, column: 3, scope: !2054, inlinedAt: !2238)
!2240 = !DILocation(line: 850, column: 32, scope: !2054, inlinedAt: !2238)
!2241 = !DILocation(line: 850, column: 44, scope: !2054, inlinedAt: !2238)
!2242 = !DILocation(line: 850, column: 3, scope: !2054, inlinedAt: !2238)
!2243 = !DILocation(line: 851, column: 10, scope: !2054, inlinedAt: !2238)
!2244 = !DILocation(line: 851, column: 22, scope: !2054, inlinedAt: !2238)
!2245 = !DILocation(line: 851, column: 28, scope: !2054, inlinedAt: !2238)
!2246 = !DILocation(line: 852, column: 32, scope: !2054, inlinedAt: !2238)
!2247 = !DILocation(line: 852, column: 44, scope: !2054, inlinedAt: !2238)
!2248 = !DILocation(line: 852, column: 3, scope: !2054, inlinedAt: !2238)
!2249 = !DILocation(line: 853, column: 10, scope: !2054, inlinedAt: !2238)
!2250 = !DILocation(line: 853, column: 22, scope: !2054, inlinedAt: !2238)
!2251 = !DILocation(line: 853, column: 32, scope: !2054, inlinedAt: !2238)
!2252 = !DILocation(line: 854, column: 32, scope: !2054, inlinedAt: !2238)
!2253 = !DILocation(line: 854, column: 44, scope: !2054, inlinedAt: !2238)
!2254 = !DILocation(line: 854, column: 3, scope: !2054, inlinedAt: !2238)
!2255 = !DILocation(line: 855, column: 10, scope: !2054, inlinedAt: !2238)
!2256 = !DILocation(line: 855, column: 22, scope: !2054, inlinedAt: !2238)
!2257 = !DILocation(line: 855, column: 35, scope: !2054, inlinedAt: !2238)
!2258 = !DILocation(line: 856, column: 10, scope: !2054, inlinedAt: !2238)
!2259 = !DILocation(line: 856, column: 30, scope: !2054, inlinedAt: !2238)
!2260 = !DILocation(line: 935, column: 12, scope: !2233)
!2261 = !DILocation(line: 934, column: 7, scope: !2232)
!2262 = !DILocation(line: 935, column: 24, scope: !2233)
!2263 = !DILocation(line: 935, column: 37, scope: !2233)
!2264 = !DILocation(line: 936, column: 12, scope: !2233)
!2265 = !DILocation(line: 936, column: 32, scope: !2233)
!2266 = !DILocation(line: 937, column: 3, scope: !2233)
!2267 = !DILocation(line: 939, column: 14, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 939, column: 7)
!2269 = !DILocation(line: 939, column: 26, scope: !2268)
!2270 = !DILocation(line: 939, column: 34, scope: !2268)
!2271 = !DILocation(line: 939, column: 7, scope: !2142)
!2272 = !DILocation(line: 942, column: 5, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 940, column: 3)
!2274 = !DILocation(line: 944, column: 48, scope: !2273)
!2275 = !DILocation(line: 944, column: 60, scope: !2273)
!2276 = !DILocation(line: 944, column: 24, scope: !2273)
!2277 = !DILocation(line: 944, column: 31, scope: !2273)
!2278 = !DILocation(line: 944, column: 39, scope: !2273)
!2279 = !DILocation(line: 946, column: 34, scope: !2273)
!2280 = !DILocation(line: 946, column: 46, scope: !2273)
!2281 = !DILocation(line: 946, column: 5, scope: !2273)
!2282 = !DILocation(line: 948, column: 5, scope: !2273)
!2283 = !DILocation(line: 949, column: 22, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 949, column: 9)
!2285 = !DILocation(line: 949, column: 12, scope: !2284)
!2286 = !DILocation(line: 949, column: 28, scope: !2284)
!2287 = !DILocation(line: 949, column: 39, scope: !2284)
!2288 = !DILocation(line: 949, column: 32, scope: !2284)
!2289 = !DILocation(line: 949, column: 9, scope: !2273)
!2290 = !DILocation(line: 950, column: 30, scope: !2284)
!2291 = !DILocation(line: 950, column: 42, scope: !2284)
!2292 = !DILocation(line: 950, column: 7, scope: !2284)
!2293 = !DILocation(line: 951, column: 34, scope: !2273)
!2294 = !DILocation(line: 951, column: 46, scope: !2273)
!2295 = !DILocation(line: 951, column: 5, scope: !2273)
!2296 = !DILocation(line: 952, column: 12, scope: !2273)
!2297 = !DILocation(line: 952, column: 24, scope: !2273)
!2298 = !DILocation(line: 952, column: 30, scope: !2273)
!2299 = !DILocation(line: 953, column: 34, scope: !2273)
!2300 = !DILocation(line: 953, column: 46, scope: !2273)
!2301 = !DILocation(line: 953, column: 5, scope: !2273)
!2302 = !DILocation(line: 954, column: 12, scope: !2273)
!2303 = !DILocation(line: 954, column: 24, scope: !2273)
!2304 = !DILocation(line: 954, column: 34, scope: !2273)
!2305 = !DILocation(line: 955, column: 34, scope: !2273)
!2306 = !DILocation(line: 955, column: 46, scope: !2273)
!2307 = !DILocation(line: 955, column: 5, scope: !2273)
!2308 = !DILocation(line: 956, column: 12, scope: !2273)
!2309 = !DILocation(line: 956, column: 24, scope: !2273)
!2310 = !DILocation(line: 956, column: 37, scope: !2273)
!2311 = !DILocation(line: 957, column: 12, scope: !2273)
!2312 = !DILocation(line: 957, column: 32, scope: !2273)
!2313 = !DILocation(line: 958, column: 3, scope: !2273)
!2314 = !DILocation(line: 959, column: 1, scope: !2142)
!2315 = !DISubprogram(name: "calculate_frame_no", scope: !2316, file: !2316, line: 17, type: !1874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2316 = !DIFile(filename: "ldecod_src/inc/image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e4b0e470a939c3c4ca7dabe5f653bfe4")
!2317 = !DISubprogram(name: "find_snr", scope: !2316, file: !2316, line: 18, type: !2318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !6, !431, !108}
!2320 = !DISubprogram(name: "GetVOIdx", scope: !2316, file: !2316, line: 35, type: !2321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!23, !6, !23}
!2323 = !DISubprogram(name: "tone_map", scope: !1164, file: !1164, line: 140, type: !2324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !476, !477, !23, !23}
!2326 = !DISubprogram(name: "GetOneAvailDecPicFromList", scope: !8, file: !8, line: 968, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!1211, !1211, !23}
!2329 = !DISubprogram(name: "malloc", scope: !2330, file: !2330, line: 540, type: !2331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2330 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!1246, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2334, line: 18, baseType: !1247)
!2334 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!2335 = !DISubprogram(name: "no_mem_exit", scope: !2336, file: !2336, line: 180, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2336 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !1295}
!2339 = !DISubprogram(name: "strcpy", scope: !2340, file: !2340, line: 141, type: !2341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2340 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!1295, !2343, !2344}
!2343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1295)
!2344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2347 = !DISubprogram(name: "strrchr", scope: !2340, file: !2340, line: 273, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!1295, !2345, !23}
!2350 = !DISubprogram(name: "sprintf", scope: !2351, file: !2351, line: 358, type: !2352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2351 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!23, !2343, !2344, null}
!2354 = !DISubprogram(name: "open", scope: !2355, file: !2355, line: 181, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2355 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!23, !2345, !23, null}
!2358 = !DISubprogram(name: "snprintf", scope: !2351, file: !2351, line: 378, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!23, !2343, !2333, !2344, null}
!2361 = !DISubprogram(name: "fprintf", scope: !2351, file: !2351, line: 350, type: !2362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!23, !2364, !2344, null}
!2364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2365)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2367, line: 7, baseType: !2368)
!2367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2369, line: 49, size: 1728, elements: !2370)
!2369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2386, !2388, !2389, !2390, !2392, !2393, !2394, !2398, !2401, !2403, !2406, !2409, !2410, !2411, !2412, !2413}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2368, file: !2369, line: 51, baseType: !23, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2368, file: !2369, line: 54, baseType: !1295, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2368, file: !2369, line: 55, baseType: !1295, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2368, file: !2369, line: 56, baseType: !1295, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2368, file: !2369, line: 57, baseType: !1295, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2368, file: !2369, line: 58, baseType: !1295, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2368, file: !2369, line: 59, baseType: !1295, size: 64, offset: 384)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2368, file: !2369, line: 60, baseType: !1295, size: 64, offset: 448)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2368, file: !2369, line: 61, baseType: !1295, size: 64, offset: 512)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2368, file: !2369, line: 64, baseType: !1295, size: 64, offset: 576)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2368, file: !2369, line: 65, baseType: !1295, size: 64, offset: 640)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2368, file: !2369, line: 66, baseType: !1295, size: 64, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2368, file: !2369, line: 68, baseType: !2384, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2369, line: 36, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2368, file: !2369, line: 70, baseType: !2387, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2368, file: !2369, line: 72, baseType: !23, size: 32, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2368, file: !2369, line: 73, baseType: !23, size: 32, offset: 928)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2368, file: !2369, line: 74, baseType: !2391, size: 64, offset: 960)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !716, line: 152, baseType: !717)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2368, file: !2369, line: 77, baseType: !233, size: 16, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2368, file: !2369, line: 78, baseType: !322, size: 8, offset: 1040)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2368, file: !2369, line: 79, baseType: !2395, size: 8, offset: 1048)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 1)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2368, file: !2369, line: 81, baseType: !2399, size: 64, offset: 1088)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2369, line: 43, baseType: null)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2368, file: !2369, line: 89, baseType: !2402, size: 64, offset: 1152)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !716, line: 153, baseType: !717)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2368, file: !2369, line: 91, baseType: !2404, size: 64, offset: 1216)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2369, line: 37, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2368, file: !2369, line: 92, baseType: !2407, size: 64, offset: 1280)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2369, line: 38, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2368, file: !2369, line: 93, baseType: !2387, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2368, file: !2369, line: 94, baseType: !1246, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2368, file: !2369, line: 95, baseType: !2333, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2368, file: !2369, line: 96, baseType: !23, size: 32, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2368, file: !2369, line: 98, baseType: !1271, size: 160, offset: 1568)
!2414 = !DISubprogram(name: "exit", scope: !2330, file: !2330, line: 624, type: !2415, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !23}
!2417 = !DISubprogram(name: "write", scope: !2418, file: !2418, line: 378, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2421, !23, !2423, !2333}
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2418, line: 220, baseType: !2422)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !716, line: 194, baseType: !717)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2425 = !DISubprogram(name: "error", scope: !8, file: !8, line: 940, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !1295, !23}
!2428 = !DISubprogram(name: "free", scope: !2330, file: !2330, line: 555, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !1246}
!2431 = !DISubprogram(name: "get_mem3Dpel", scope: !2336, file: !2336, line: 80, type: !2432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!23, !2434, !23, !23, !23}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2435 = !DISubprogram(name: "free_mem3Dpel", scope: !2336, file: !2336, line: 159, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !481}
!2438 = !DISubprogram(name: "testEndian", scope: !2439, file: !2439, line: 16, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2439 = !DIFile(filename: "ldecod_src/inc/input.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "2c00b3bfea4c1023c6399c1ce4a24f08")
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!23}
!2442 = distinct !DISubprogram(name: "img2buf_endian", scope: !3, file: !3, line: 213, type: !1208, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2444 = !DILocalVariable(name: "imgX", arg: 1, scope: !2442, file: !3, line: 213, type: !476)
!2445 = !DILocalVariable(name: "buf", arg: 2, scope: !2442, file: !3, line: 213, type: !1182)
!2446 = !DILocalVariable(name: "size_x", arg: 3, scope: !2442, file: !3, line: 213, type: !23)
!2447 = !DILocalVariable(name: "size_y", arg: 4, scope: !2442, file: !3, line: 213, type: !23)
!2448 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 5, scope: !2442, file: !3, line: 213, type: !23)
!2449 = !DILocalVariable(name: "crop_left", arg: 6, scope: !2442, file: !3, line: 213, type: !23)
!2450 = !DILocalVariable(name: "crop_right", arg: 7, scope: !2442, file: !3, line: 213, type: !23)
!2451 = !DILocalVariable(name: "crop_top", arg: 8, scope: !2442, file: !3, line: 213, type: !23)
!2452 = !DILocalVariable(name: "crop_bottom", arg: 9, scope: !2442, file: !3, line: 213, type: !23)
!2453 = !DILocalVariable(name: "iOutStride", arg: 10, scope: !2442, file: !3, line: 213, type: !23)
!2454 = !DILocalVariable(name: "i", scope: !2442, file: !3, line: 215, type: !23)
!2455 = !DILocalVariable(name: "j", scope: !2442, file: !3, line: 215, type: !23)
!2456 = !DILocalVariable(name: "ui8", scope: !2442, file: !3, line: 216, type: !167)
!2457 = !DILocalVariable(name: "tmp16", scope: !2442, file: !3, line: 217, type: !479)
!2458 = !DILocalVariable(name: "ui16", scope: !2442, file: !3, line: 217, type: !479)
!2459 = !DILocalVariable(name: "tmp32", scope: !2442, file: !3, line: 218, type: !1247)
!2460 = !DILocalVariable(name: "ui32", scope: !2442, file: !3, line: 218, type: !1247)
!2461 = !DILocation(line: 0, scope: !2442)
!2462 = !DILocation(line: 223, column: 3, scope: !2442)
!2463 = !DILocation(line: 248, column: 23, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 248, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 248, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 247, column: 5)
!2467 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 224, column: 3)
!2468 = !DILocation(line: 248, column: 7, scope: !2465)
!2469 = !DILocation(line: 249, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 249, column: 9)
!2471 = !DILocation(line: 251, column: 36, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 250, column: 9)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 249, column: 9)
!2474 = !DILocation(line: 253, column: 35, scope: !2472)
!2475 = !DILocation(line: 253, column: 62, scope: !2472)
!2476 = !DILocation(line: 253, column: 21, scope: !2472)
!2477 = !DILocation(line: 253, column: 11, scope: !2472)
!2478 = !DILocation(line: 249, column: 46, scope: !2473)
!2479 = !DILocation(line: 249, column: 26, scope: !2473)
!2480 = distinct !{!2480, !2469, !2481}
!2481 = !DILocation(line: 254, column: 9, scope: !2470)
!2482 = !DILocation(line: 248, column: 44, scope: !2464)
!2483 = distinct !{!2483, !2468, !2484}
!2484 = !DILocation(line: 254, column: 9, scope: !2465)
!2485 = !DILocation(line: 237, column: 23, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 237, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 237, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 236, column: 5)
!2489 = !DILocation(line: 237, column: 7, scope: !2487)
!2490 = !DILocation(line: 238, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 238, column: 9)
!2492 = !DILocation(line: 240, column: 29, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 239, column: 9)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 238, column: 9)
!2495 = !DILocation(line: 242, column: 35, scope: !2493)
!2496 = !DILocation(line: 242, column: 62, scope: !2493)
!2497 = !DILocation(line: 242, column: 21, scope: !2493)
!2498 = !DILocation(line: 242, column: 11, scope: !2493)
!2499 = !DILocation(line: 238, column: 46, scope: !2494)
!2500 = !DILocation(line: 238, column: 26, scope: !2494)
!2501 = distinct !{!2501, !2490, !2502}
!2502 = !DILocation(line: 243, column: 9, scope: !2491)
!2503 = !DILocation(line: 237, column: 44, scope: !2486)
!2504 = distinct !{!2504, !2489, !2505}
!2505 = !DILocation(line: 243, column: 9, scope: !2487)
!2506 = !DILocation(line: 227, column: 23, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 227, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 227, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 226, column: 5)
!2510 = !DILocation(line: 227, column: 7, scope: !2508)
!2511 = !DILocation(line: 228, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 228, column: 9)
!2513 = !DILocation(line: 230, column: 34, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 229, column: 9)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 228, column: 9)
!2516 = !DILocation(line: 230, column: 17, scope: !2514)
!2517 = !DILocation(line: 231, column: 27, scope: !2514)
!2518 = !DILocation(line: 231, column: 11, scope: !2514)
!2519 = !DILocation(line: 231, column: 56, scope: !2514)
!2520 = !DILocation(line: 228, column: 46, scope: !2515)
!2521 = !DILocation(line: 228, column: 26, scope: !2515)
!2522 = distinct !{!2522, !2511, !2523}
!2523 = !DILocation(line: 232, column: 9, scope: !2512)
!2524 = !DILocation(line: 227, column: 44, scope: !2507)
!2525 = distinct !{!2525, !2510, !2526}
!2526 = !DILocation(line: 232, column: 9, scope: !2508)
!2527 = !DILocation(line: 259, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 258, column: 5)
!2529 = !DILocation(line: 260, column: 7, scope: !2528)
!2530 = !DILocation(line: 263, column: 1, scope: !2442)
!2531 = distinct !DISubprogram(name: "img2buf_normal", scope: !3, file: !3, line: 91, type: !1208, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1243, retainedNodes: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2554, !2557}
!2533 = !DILocalVariable(name: "imgX", arg: 1, scope: !2531, file: !3, line: 91, type: !476)
!2534 = !DILocalVariable(name: "buf", arg: 2, scope: !2531, file: !3, line: 91, type: !1182)
!2535 = !DILocalVariable(name: "size_x", arg: 3, scope: !2531, file: !3, line: 91, type: !23)
!2536 = !DILocalVariable(name: "size_y", arg: 4, scope: !2531, file: !3, line: 91, type: !23)
!2537 = !DILocalVariable(name: "symbol_size_in_bytes", arg: 5, scope: !2531, file: !3, line: 91, type: !23)
!2538 = !DILocalVariable(name: "crop_left", arg: 6, scope: !2531, file: !3, line: 91, type: !23)
!2539 = !DILocalVariable(name: "crop_right", arg: 7, scope: !2531, file: !3, line: 91, type: !23)
!2540 = !DILocalVariable(name: "crop_top", arg: 8, scope: !2531, file: !3, line: 91, type: !23)
!2541 = !DILocalVariable(name: "crop_bottom", arg: 9, scope: !2531, file: !3, line: 91, type: !23)
!2542 = !DILocalVariable(name: "iOutStride", arg: 10, scope: !2531, file: !3, line: 91, type: !23)
!2543 = !DILocalVariable(name: "i", scope: !2531, file: !3, line: 93, type: !23)
!2544 = !DILocalVariable(name: "j", scope: !2531, file: !3, line: 93, type: !23)
!2545 = !DILocalVariable(name: "twidth", scope: !2531, file: !3, line: 95, type: !23)
!2546 = !DILocalVariable(name: "theight", scope: !2531, file: !3, line: 96, type: !23)
!2547 = !DILocalVariable(name: "size", scope: !2531, file: !3, line: 98, type: !23)
!2548 = !DILocalVariable(name: "ipos", scope: !2549, file: !3, line: 119, type: !23)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 118, column: 5)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 117, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 117, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 116, column: 3)
!2553 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 115, column: 7)
!2554 = !DILocalVariable(name: "cur_pixel", scope: !2555, file: !3, line: 138, type: !477)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 137, column: 5)
!2556 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 127, column: 3)
!2557 = !DILocalVariable(name: "pDst", scope: !2555, file: !3, line: 139, type: !1182)
!2558 = !DILocation(line: 0, scope: !2531)
!2559 = !DILocation(line: 95, column: 36, scope: !2531)
!2560 = !DILocation(line: 96, column: 35, scope: !2531)
!2561 = !DILocation(line: 102, column: 29, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 102, column: 7)
!2563 = !DILocation(line: 102, column: 7, scope: !2531)
!2564 = !DILocation(line: 107, column: 15, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 107, column: 5)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 107, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 103, column: 3)
!2568 = !DILocation(line: 107, column: 5, scope: !2566)
!2569 = !DILocation(line: 108, column: 20, scope: !2565)
!2570 = !DILocation(line: 108, column: 18, scope: !2565)
!2571 = !DILocation(line: 108, column: 7, scope: !2565)
!2572 = !DILocation(line: 107, column: 26, scope: !2565)
!2573 = distinct !{!2573, !2568, !2574}
!2574 = !DILocation(line: 108, column: 67, scope: !2566)
!2575 = !DILocation(line: 115, column: 17, scope: !2553)
!2576 = !DILocation(line: 140, column: 20, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 140, column: 7)
!2578 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 140, column: 7)
!2579 = !DILocation(line: 140, column: 7, scope: !2578)
!2580 = !DILocation(line: 142, column: 21, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 141, column: 7)
!2582 = !DILocation(line: 0, scope: !2555)
!2583 = !DILocation(line: 143, column: 22, scope: !2581)
!2584 = !DILocation(line: 143, column: 20, scope: !2581)
!2585 = !DILocation(line: 144, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 144, column: 9)
!2587 = !DILocation(line: 145, column: 36, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 144, column: 9)
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591}
!2591 = distinct !{!2591, !"LVerDomain"}
!2592 = !DILocation(line: 145, column: 21, scope: !2588)
!2593 = !DILocation(line: 145, column: 20, scope: !2588)
!2594 = !{!2595}
!2595 = distinct !{!2595, !2591}
!2596 = distinct !{!2596, !2585, !2597, !2598, !2599}
!2597 = !DILocation(line: 145, column: 49, scope: !2586)
!2598 = !{!"llvm.loop.isvectorized", i32 1}
!2599 = !{!"llvm.loop.unroll.runtime.disable"}
!2600 = !DILocation(line: 145, column: 47, scope: !2588)
!2601 = !DILocation(line: 145, column: 17, scope: !2588)
!2602 = !DILocation(line: 144, column: 31, scope: !2588)
!2603 = distinct !{!2603, !2604}
!2604 = !{!"llvm.loop.unroll.disable"}
!2605 = !DILocation(line: 144, column: 20, scope: !2588)
!2606 = distinct !{!2606, !2585, !2597, !2598}
!2607 = !DILocation(line: 140, column: 31, scope: !2577)
!2608 = distinct !{!2608, !2579, !2609}
!2609 = !DILocation(line: 146, column: 7, scope: !2578)
!2610 = distinct !{!2610, !2604}
!2611 = !DILocation(line: 117, column: 22, scope: !2550)
!2612 = !DILocation(line: 117, column: 5, scope: !2551)
!2613 = !DILocation(line: 119, column: 21, scope: !2549)
!2614 = !DILocation(line: 119, column: 33, scope: !2549)
!2615 = !DILocation(line: 0, scope: !2549)
!2616 = !DILocation(line: 120, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 120, column: 7)
!2618 = !DILocation(line: 122, column: 28, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 121, column: 7)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 120, column: 7)
!2621 = !DILocation(line: 122, column: 39, scope: !2619)
!2622 = !DILocation(line: 122, column: 19, scope: !2619)
!2623 = !DILocation(line: 122, column: 64, scope: !2619)
!2624 = !DILocation(line: 122, column: 9, scope: !2619)
!2625 = !DILocation(line: 120, column: 46, scope: !2620)
!2626 = !DILocation(line: 120, column: 25, scope: !2620)
!2627 = distinct !{!2627, !2616, !2628}
!2628 = !DILocation(line: 123, column: 7, scope: !2617)
!2629 = !DILocation(line: 117, column: 44, scope: !2550)
!2630 = distinct !{!2630, !2612, !2631}
!2631 = !DILocation(line: 124, column: 5, scope: !2551)
!2632 = !DILocation(line: 150, column: 1, scope: !2531)
