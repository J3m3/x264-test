; ModuleID = 'ldecod_src/mb_prediction.c'
source_filename = "ldecod_src/mb_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@decode_block_scan = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16, !dbg !0
@.str = private unnamed_addr constant [67 x i8] c"temporal direct error: colocated block has ref that is unavailable\00", align 1, !dbg !98

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra4x4(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 !dbg !138 {
entry:
    #dbg_value(ptr %currMB, !1309, !DIExpression(), !1325)
    #dbg_value(i32 %curr_plane, !1310, !DIExpression(), !1325)
    #dbg_value(ptr %currImg, !1311, !DIExpression(), !1325)
    #dbg_value(ptr %dec_picture, !1312, !DIExpression(), !1325)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1326
    #dbg_value(ptr %0, !1313, !DIExpression(), !1325)
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !1327
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !1327
  %sub = add nsw i32 %1, -1, !dbg !1328
    #dbg_value(i32 %sub, !1314, !DIExpression(), !1325)
    #dbg_value(i32 0, !1315, !DIExpression(), !1325)
    #dbg_value(i32 0, !1316, !DIExpression(), !1325)
    #dbg_value(i32 0, !1318, !DIExpression(), !1325)
    #dbg_value(i32 0, !1319, !DIExpression(), !1325)
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92, !dbg !1329
  %2 = load i32, ptr %is_lossless, align 4, !dbg !1329
  %cmp = icmp eq i32 %2, 0, !dbg !1330
  %cond = select i1 %cmp, ptr @itrans4x4, ptr @Inv_Residual_trans_4x4, !dbg !1331
  %itrans_4x4 = getelementptr inbounds i8, ptr %currMB, i64 432, !dbg !1332
  store ptr %cond, ptr %itrans_4x4, align 8, !dbg !1333
    #dbg_value(i32 0, !1324, !DIExpression(), !1325)
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %idxprom20 = zext i32 %curr_plane to i64
    #dbg_value(i32 0, !1324, !DIExpression(), !1325)
  br label %for.body, !dbg !1334

for.body:                                         ; preds = %entry, %if.end.3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end.3 ]
  %block8x8.079 = phi i32 [ 0, %entry ], [ %inc25, %if.end.3 ]
    #dbg_value(i32 %block8x8.079, !1324, !DIExpression(), !1325)
    #dbg_value(i32 %block8x8.079, !1317, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !1325)
    #dbg_value(i32 %block8x8.079, !1317, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !1325)
    #dbg_value(i64 %indvars.iv, !1317, !DIExpression(), !1325)
  %arrayidx = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv, !dbg !1336
  %3 = load i8, ptr %arrayidx, align 4, !dbg !1336
  %conv = zext i8 %3 to i32, !dbg !1336
  %and = and i32 %conv, 3, !dbg !1342
    #dbg_value(i32 %and, !1315, !DIExpression(), !1325)
  %shr = lshr i32 %conv, 2, !dbg !1343
  %and9 = and i32 %shr, 3, !dbg !1344
    #dbg_value(i32 %and9, !1316, !DIExpression(), !1325)
  %shl = shl nuw nsw i32 %and, 2, !dbg !1345
    #dbg_value(i32 %shl, !1322, !DIExpression(), !1325)
  %shl10 = shl nuw nsw i32 %and9, 2, !dbg !1346
    #dbg_value(i32 %shl10, !1323, !DIExpression(), !1325)
  %4 = load i32, ptr %block_x, align 8, !dbg !1347
  %add11 = add nsw i32 %and, %4, !dbg !1348
    #dbg_value(i32 %add11, !1319, !DIExpression(), !1325)
  %5 = load i32, ptr %block_y, align 4, !dbg !1349
  %add12 = add nsw i32 %and9, %5, !dbg !1350
    #dbg_value(i32 %add12, !1318, !DIExpression(), !1325)
    #dbg_value(i32 %add12, !1320, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
    #dbg_value(i32 %add11, !1321, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
  %call = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl, i32 noundef %shl10, i32 noundef %add11, i32 noundef %add12) #7, !dbg !1351
  %cmp15 = icmp eq i32 %call, 1, !dbg !1353
  br i1 %cmp15, label %cleanup, label %if.end, !dbg !1354

if.end:                                           ; preds = %for.body
  %mul14 = shl nsw i32 %add11, 2, !dbg !1355
    #dbg_value(i32 %mul14, !1321, !DIExpression(), !1325)
  %mul13 = shl nsw i32 %add12, 2, !dbg !1356
    #dbg_value(i32 %mul13, !1320, !DIExpression(), !1325)
  %6 = load ptr, ptr %itrans_4x4, align 8, !dbg !1357
  tail call void %6(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl, i32 noundef %shl10) #7, !dbg !1358
  %idxprom18 = sext i32 %mul13 to i64, !dbg !1359
  %arrayidx19 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18, !dbg !1359
  %7 = load ptr, ptr %mb_rec, align 8, !dbg !1360
  %arrayidx21 = getelementptr inbounds ptr, ptr %7, i64 %idxprom20, !dbg !1361
  %8 = load ptr, ptr %arrayidx21, align 8, !dbg !1361
  %idxprom22 = zext nneg i32 %shl10 to i64, !dbg !1361
  %arrayidx23 = getelementptr inbounds ptr, ptr %8, i64 %idxprom22, !dbg !1361
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19, ptr noundef %arrayidx23, i32 noundef %mul14, i32 noundef %shl) #7, !dbg !1362
  %indvars.iv.next81 = or disjoint i64 %indvars.iv, 1, !dbg !1363
    #dbg_value(i64 %indvars.iv.next81, !1317, !DIExpression(), !1325)
  %arrayidx.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81, !dbg !1336
  %9 = load i8, ptr %arrayidx.1, align 1, !dbg !1336
  %conv.1 = zext i8 %9 to i32, !dbg !1336
  %and.1 = and i32 %conv.1, 3, !dbg !1342
    #dbg_value(i32 %and.1, !1315, !DIExpression(), !1325)
  %shr.1 = lshr i32 %conv.1, 2, !dbg !1343
  %and9.1 = and i32 %shr.1, 3, !dbg !1344
    #dbg_value(i32 %and9.1, !1316, !DIExpression(), !1325)
  %shl.1 = shl nuw nsw i32 %and.1, 2, !dbg !1345
    #dbg_value(i32 %shl.1, !1322, !DIExpression(), !1325)
  %shl10.1 = shl nuw nsw i32 %and9.1, 2, !dbg !1346
    #dbg_value(i32 %shl10.1, !1323, !DIExpression(), !1325)
  %10 = load i32, ptr %block_x, align 8, !dbg !1347
  %add11.1 = add nsw i32 %and.1, %10, !dbg !1348
    #dbg_value(i32 %add11.1, !1319, !DIExpression(), !1325)
  %11 = load i32, ptr %block_y, align 4, !dbg !1349
  %add12.1 = add nsw i32 %and9.1, %11, !dbg !1350
    #dbg_value(i32 %add12.1, !1318, !DIExpression(), !1325)
    #dbg_value(i32 %add12.1, !1320, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
    #dbg_value(i32 %add11.1, !1321, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
  %call.1 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.1, i32 noundef %shl10.1, i32 noundef %add11.1, i32 noundef %add12.1) #7, !dbg !1351
  %cmp15.1 = icmp eq i32 %call.1, 1, !dbg !1353
  br i1 %cmp15.1, label %cleanup, label %if.end.1, !dbg !1354

if.end.1:                                         ; preds = %if.end
  %mul14.1 = shl nsw i32 %add11.1, 2, !dbg !1355
    #dbg_value(i32 %mul14.1, !1321, !DIExpression(), !1325)
  %mul13.1 = shl nsw i32 %add12.1, 2, !dbg !1356
    #dbg_value(i32 %mul13.1, !1320, !DIExpression(), !1325)
  %12 = load ptr, ptr %itrans_4x4, align 8, !dbg !1357
  tail call void %12(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.1, i32 noundef %shl10.1) #7, !dbg !1358
  %idxprom18.1 = sext i32 %mul13.1 to i64, !dbg !1359
  %arrayidx19.1 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.1, !dbg !1359
  %13 = load ptr, ptr %mb_rec, align 8, !dbg !1360
  %arrayidx21.1 = getelementptr inbounds ptr, ptr %13, i64 %idxprom20, !dbg !1361
  %14 = load ptr, ptr %arrayidx21.1, align 8, !dbg !1361
  %idxprom22.1 = zext nneg i32 %shl10.1 to i64, !dbg !1361
  %arrayidx23.1 = getelementptr inbounds ptr, ptr %14, i64 %idxprom22.1, !dbg !1361
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.1, ptr noundef %arrayidx23.1, i32 noundef %mul14.1, i32 noundef %shl.1) #7, !dbg !1362
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv, 2, !dbg !1363
    #dbg_value(i64 %indvars.iv.next81.1, !1317, !DIExpression(), !1325)
  %arrayidx.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81.1, !dbg !1336
  %15 = load i8, ptr %arrayidx.2, align 2, !dbg !1336
  %conv.2 = zext i8 %15 to i32, !dbg !1336
  %and.2 = and i32 %conv.2, 3, !dbg !1342
    #dbg_value(i32 %and.2, !1315, !DIExpression(), !1325)
  %shr.2 = lshr i32 %conv.2, 2, !dbg !1343
  %and9.2 = and i32 %shr.2, 3, !dbg !1344
    #dbg_value(i32 %and9.2, !1316, !DIExpression(), !1325)
  %shl.2 = shl nuw nsw i32 %and.2, 2, !dbg !1345
    #dbg_value(i32 %shl.2, !1322, !DIExpression(), !1325)
  %shl10.2 = shl nuw nsw i32 %and9.2, 2, !dbg !1346
    #dbg_value(i32 %shl10.2, !1323, !DIExpression(), !1325)
  %16 = load i32, ptr %block_x, align 8, !dbg !1347
  %add11.2 = add nsw i32 %and.2, %16, !dbg !1348
    #dbg_value(i32 %add11.2, !1319, !DIExpression(), !1325)
  %17 = load i32, ptr %block_y, align 4, !dbg !1349
  %add12.2 = add nsw i32 %and9.2, %17, !dbg !1350
    #dbg_value(i32 %add12.2, !1318, !DIExpression(), !1325)
    #dbg_value(i32 %add12.2, !1320, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
    #dbg_value(i32 %add11.2, !1321, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
  %call.2 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.2, i32 noundef %shl10.2, i32 noundef %add11.2, i32 noundef %add12.2) #7, !dbg !1351
  %cmp15.2 = icmp eq i32 %call.2, 1, !dbg !1353
  br i1 %cmp15.2, label %cleanup, label %if.end.2, !dbg !1354

if.end.2:                                         ; preds = %if.end.1
  %mul14.2 = shl nsw i32 %add11.2, 2, !dbg !1355
    #dbg_value(i32 %mul14.2, !1321, !DIExpression(), !1325)
  %mul13.2 = shl nsw i32 %add12.2, 2, !dbg !1356
    #dbg_value(i32 %mul13.2, !1320, !DIExpression(), !1325)
  %18 = load ptr, ptr %itrans_4x4, align 8, !dbg !1357
  tail call void %18(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.2, i32 noundef %shl10.2) #7, !dbg !1358
  %idxprom18.2 = sext i32 %mul13.2 to i64, !dbg !1359
  %arrayidx19.2 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.2, !dbg !1359
  %19 = load ptr, ptr %mb_rec, align 8, !dbg !1360
  %arrayidx21.2 = getelementptr inbounds ptr, ptr %19, i64 %idxprom20, !dbg !1361
  %20 = load ptr, ptr %arrayidx21.2, align 8, !dbg !1361
  %idxprom22.2 = zext nneg i32 %shl10.2 to i64, !dbg !1361
  %arrayidx23.2 = getelementptr inbounds ptr, ptr %20, i64 %idxprom22.2, !dbg !1361
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.2, ptr noundef %arrayidx23.2, i32 noundef %mul14.2, i32 noundef %shl.2) #7, !dbg !1362
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv, 3, !dbg !1363
    #dbg_value(i64 %indvars.iv.next81.2, !1317, !DIExpression(), !1325)
  %arrayidx.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next81.2, !dbg !1336
  %21 = load i8, ptr %arrayidx.3, align 1, !dbg !1336
  %conv.3 = zext i8 %21 to i32, !dbg !1336
  %and.3 = and i32 %conv.3, 3, !dbg !1342
    #dbg_value(i32 %and.3, !1315, !DIExpression(), !1325)
  %shr.3 = lshr i32 %conv.3, 2, !dbg !1343
  %and9.3 = and i32 %shr.3, 3, !dbg !1344
    #dbg_value(i32 %and9.3, !1316, !DIExpression(), !1325)
  %shl.3 = shl nuw nsw i32 %and.3, 2, !dbg !1345
    #dbg_value(i32 %shl.3, !1322, !DIExpression(), !1325)
  %shl10.3 = shl nuw nsw i32 %and9.3, 2, !dbg !1346
    #dbg_value(i32 %shl10.3, !1323, !DIExpression(), !1325)
  %22 = load i32, ptr %block_x, align 8, !dbg !1347
  %add11.3 = add nsw i32 %and.3, %22, !dbg !1348
    #dbg_value(i32 %add11.3, !1319, !DIExpression(), !1325)
  %23 = load i32, ptr %block_y, align 4, !dbg !1349
  %add12.3 = add nsw i32 %and9.3, %23, !dbg !1350
    #dbg_value(i32 %add12.3, !1318, !DIExpression(), !1325)
    #dbg_value(i32 %add12.3, !1320, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
    #dbg_value(i32 %add11.3, !1321, !DIExpression(DW_OP_constu, 4, DW_OP_mul, DW_OP_stack_value), !1325)
  %call.3 = tail call i32 @intrapred(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.3, i32 noundef %shl10.3, i32 noundef %add11.3, i32 noundef %add12.3) #7, !dbg !1351
  %cmp15.3 = icmp eq i32 %call.3, 1, !dbg !1353
  br i1 %cmp15.3, label %cleanup, label %if.end.3, !dbg !1354

if.end.3:                                         ; preds = %if.end.2
  %mul14.3 = shl nsw i32 %add11.3, 2, !dbg !1355
    #dbg_value(i32 %mul14.3, !1321, !DIExpression(), !1325)
  %mul13.3 = shl nsw i32 %add12.3, 2, !dbg !1356
    #dbg_value(i32 %mul13.3, !1320, !DIExpression(), !1325)
  %24 = load ptr, ptr %itrans_4x4, align 8, !dbg !1357
  tail call void %24(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %shl.3, i32 noundef %shl10.3) #7, !dbg !1358
  %idxprom18.3 = sext i32 %mul13.3 to i64, !dbg !1359
  %arrayidx19.3 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom18.3, !dbg !1359
  %25 = load ptr, ptr %mb_rec, align 8, !dbg !1360
  %arrayidx21.3 = getelementptr inbounds ptr, ptr %25, i64 %idxprom20, !dbg !1361
  %26 = load ptr, ptr %arrayidx21.3, align 8, !dbg !1361
  %idxprom22.3 = zext nneg i32 %shl10.3 to i64, !dbg !1361
  %arrayidx23.3 = getelementptr inbounds ptr, ptr %26, i64 %idxprom22.3, !dbg !1361
  tail call void @copy_image_data_4x4(ptr noundef %arrayidx19.3, ptr noundef %arrayidx23.3, i32 noundef %mul14.3, i32 noundef %shl.3) #7, !dbg !1362
    #dbg_value(i64 %indvars.iv, !1317, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1325)
  %inc25 = add nuw nsw i32 %block8x8.079, 1, !dbg !1364
    #dbg_value(i32 %inc25, !1324, !DIExpression(), !1325)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4, !dbg !1334
  %exitcond.not = icmp eq i32 %inc25, 4, !dbg !1365
  br i1 %exitcond.not, label %for.end26, label %for.body, !dbg !1334, !llvm.loop !1366

for.end26:                                        ; preds = %if.end.3
  %27 = load i32, ptr %chroma_format_idc, align 4, !dbg !1368
  switch i32 %27, label %if.then33 [
    i32 0, label %if.end34
    i32 3, label %if.end34
  ], !dbg !1370

if.then33:                                        ; preds = %for.end26
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7, !dbg !1371
  br label %if.end34, !dbg !1373

if.end34:                                         ; preds = %for.end26, %for.end26, %if.then33
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1374
  %28 = load i32, ptr %cbp, align 4, !dbg !1374
  %cmp35.not = icmp eq i32 %28, 0, !dbg !1376
  br i1 %cmp35.not, label %cleanup, label %if.then37, !dbg !1377

if.then37:                                        ; preds = %if.end34
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !1378
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1379
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %for.body, %if.end, %if.end.1, %if.end.2, %if.end34, %if.then37
  ret i32 1, !dbg !1381
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !1382 i32 @intrapred(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1386 void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1389 void @intra_cr_decoding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra16x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 !dbg !1393 {
entry:
    #dbg_value(ptr %currMB, !1397, !DIExpression(), !1401)
    #dbg_value(i32 %curr_plane, !1398, !DIExpression(), !1401)
    #dbg_value(ptr %dec_picture, !1399, !DIExpression(), !1401)
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !1402
  %0 = load i32, ptr %chroma_format_idc, align 4, !dbg !1402
    #dbg_value(i32 %0, !1400, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1401)
  %i16mode = getelementptr inbounds i8, ptr %currMB, i64 360, !dbg !1403
  %1 = load i32, ptr %i16mode, align 8, !dbg !1403
  %call = tail call i32 @intrapred16x16(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef %1) #7, !dbg !1404
  %2 = load i32, ptr %i16mode, align 8, !dbg !1405
  %conv = trunc i32 %2 to i8, !dbg !1406
  %ipmode_DPCM = getelementptr inbounds i8, ptr %currMB, i64 372, !dbg !1407
  store i8 %conv, ptr %ipmode_DPCM, align 4, !dbg !1408
  tail call void @iMBtrans4x4(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !1409
  %3 = load i32, ptr %chroma_format_idc, align 4, !dbg !1410
  switch i32 %3, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ], !dbg !1412

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %0, -1, !dbg !1413
    #dbg_value(i32 %sub, !1400, !DIExpression(), !1401)
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7, !dbg !1414
  br label %if.end, !dbg !1416

if.end:                                           ; preds = %entry, %entry, %if.then
  %4 = load ptr, ptr %currMB, align 8, !dbg !1417
  %is_reset_coeff = getelementptr inbounds i8, ptr %4, i64 1240, !dbg !1418
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1419
  ret i32 1, !dbg !1420
}

declare !dbg !1421 i32 @intrapred16x16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1425 void @iMBtrans4x4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr nocapture noundef readonly %dec_picture) local_unnamed_addr #0 !dbg !1428 {
entry:
    #dbg_value(ptr %currMB, !1430, !DIExpression(), !1442)
    #dbg_value(i32 %curr_plane, !1431, !DIExpression(), !1442)
    #dbg_value(ptr %currImg, !1432, !DIExpression(), !1442)
    #dbg_value(ptr %dec_picture, !1433, !DIExpression(), !1442)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1443
    #dbg_value(ptr %0, !1434, !DIExpression(), !1442)
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !1444
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !1444
    #dbg_value(i32 %1, !1435, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1442)
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92, !dbg !1445
  %2 = load i32, ptr %is_lossless, align 4, !dbg !1445
  %cmp = icmp eq i32 %2, 0, !dbg !1446
  %cond = select i1 %cmp, ptr @itrans8x8, ptr @Inv_Residual_trans_8x8, !dbg !1447
  %itrans_8x8 = getelementptr inbounds i8, ptr %currMB, i64 440, !dbg !1448
  store ptr %cond, ptr %itrans_8x8, align 8, !dbg !1449
    #dbg_value(i32 0, !1436, !DIExpression(), !1442)
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256
  %idxprom4 = zext i32 %curr_plane to i64
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
    #dbg_value(i32 0, !1436, !DIExpression(), !1442)
    #dbg_value(i32 0, !1437, !DIExpression(), !1450)
    #dbg_value(i32 0, !1441, !DIExpression(), !1450)
  %call = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 0) #7, !dbg !1451
  %3 = load ptr, ptr %itrans_8x8, align 8, !dbg !1452
  tail call void %3(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 0) #7, !dbg !1453
  %4 = load i32, ptr %pix_y, align 8, !dbg !1454
  %idxprom = sext i32 %4 to i64, !dbg !1455
  %arrayidx = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom, !dbg !1455
  %5 = load ptr, ptr %mb_rec, align 8, !dbg !1456
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 %idxprom4, !dbg !1457
  %6 = load ptr, ptr %arrayidx5, align 8, !dbg !1457
  %7 = load i32, ptr %pix_x, align 4, !dbg !1458
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx, ptr noundef %6, i32 noundef %7, i32 noundef 0) #7, !dbg !1459
    #dbg_value(i32 1, !1436, !DIExpression(), !1442)
    #dbg_value(i32 8, !1437, !DIExpression(), !1450)
    #dbg_value(i32 0, !1441, !DIExpression(), !1450)
  %call.1 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 0) #7, !dbg !1451
  %8 = load ptr, ptr %itrans_8x8, align 8, !dbg !1452
  tail call void %8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 0) #7, !dbg !1453
  %9 = load i32, ptr %pix_y, align 8, !dbg !1454
  %idxprom.1 = sext i32 %9 to i64, !dbg !1455
  %arrayidx.1 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom.1, !dbg !1455
  %10 = load ptr, ptr %mb_rec, align 8, !dbg !1456
  %arrayidx5.1 = getelementptr inbounds ptr, ptr %10, i64 %idxprom4, !dbg !1457
  %11 = load ptr, ptr %arrayidx5.1, align 8, !dbg !1457
  %12 = load i32, ptr %pix_x, align 4, !dbg !1458
  %add8.1 = add nsw i32 %12, 8, !dbg !1460
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.1, ptr noundef %11, i32 noundef %add8.1, i32 noundef 8) #7, !dbg !1459
    #dbg_value(i32 2, !1436, !DIExpression(), !1442)
    #dbg_value(i32 0, !1437, !DIExpression(), !1450)
    #dbg_value(i32 8, !1441, !DIExpression(), !1450)
  %call.2 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 8) #7, !dbg !1451
  %13 = load ptr, ptr %itrans_8x8, align 8, !dbg !1452
  tail call void %13(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0, i32 noundef 8) #7, !dbg !1453
  %14 = load i32, ptr %pix_y, align 8, !dbg !1454
  %15 = sext i32 %14 to i64, !dbg !1455
  %16 = getelementptr ptr, ptr %currImg, i64 %15, !dbg !1455
  %arrayidx.2 = getelementptr i8, ptr %16, i64 64, !dbg !1455
  %17 = load ptr, ptr %mb_rec, align 8, !dbg !1456
  %arrayidx5.2 = getelementptr inbounds ptr, ptr %17, i64 %idxprom4, !dbg !1457
  %18 = load ptr, ptr %arrayidx5.2, align 8, !dbg !1457
  %arrayidx7.2 = getelementptr inbounds i8, ptr %18, i64 64, !dbg !1457
  %19 = load i32, ptr %pix_x, align 4, !dbg !1458
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.2, ptr noundef nonnull %arrayidx7.2, i32 noundef %19, i32 noundef 0) #7, !dbg !1459
    #dbg_value(i32 3, !1436, !DIExpression(), !1442)
    #dbg_value(i32 8, !1437, !DIExpression(), !1450)
    #dbg_value(i32 8, !1441, !DIExpression(), !1450)
  %call.3 = tail call i32 @intrapred8x8(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 8) #7, !dbg !1451
  %20 = load ptr, ptr %itrans_8x8, align 8, !dbg !1452
  tail call void %20(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 8, i32 noundef 8) #7, !dbg !1453
  %21 = load i32, ptr %pix_y, align 8, !dbg !1454
  %22 = sext i32 %21 to i64, !dbg !1455
  %23 = getelementptr ptr, ptr %currImg, i64 %22, !dbg !1455
  %arrayidx.3 = getelementptr i8, ptr %23, i64 64, !dbg !1455
  %24 = load ptr, ptr %mb_rec, align 8, !dbg !1456
  %arrayidx5.3 = getelementptr inbounds ptr, ptr %24, i64 %idxprom4, !dbg !1457
  %25 = load ptr, ptr %arrayidx5.3, align 8, !dbg !1457
  %arrayidx7.3 = getelementptr inbounds i8, ptr %25, i64 64, !dbg !1457
  %26 = load i32, ptr %pix_x, align 4, !dbg !1458
  %add8.3 = add nsw i32 %26, 8, !dbg !1460
  tail call void @copy_image_data_8x8(ptr noundef %arrayidx.3, ptr noundef nonnull %arrayidx7.3, i32 noundef %add8.3, i32 noundef 8) #7, !dbg !1459
    #dbg_value(i32 4, !1436, !DIExpression(), !1442)
  %27 = load i32, ptr %chroma_format_idc, align 4, !dbg !1461
  switch i32 %27, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ], !dbg !1463

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %1, -1, !dbg !1464
    #dbg_value(i32 %sub, !1435, !DIExpression(), !1442)
  tail call void @intra_cr_decoding(ptr noundef nonnull %currMB, i32 noundef %sub) #7, !dbg !1465
  br label %if.end, !dbg !1467

if.end:                                           ; preds = %entry, %entry, %if.then
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1468
  %28 = load i32, ptr %cbp, align 4, !dbg !1468
  %cmp13.not = icmp eq i32 %28, 0, !dbg !1470
  br i1 %cmp13.not, label %if.end15, label %if.then14, !dbg !1471

if.then14:                                        ; preds = %if.end
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !1472
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1473
  br label %if.end15, !dbg !1474

if.end15:                                         ; preds = %if.then14, %if.end
  ret i32 1, !dbg !1475
}

declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !1476 i32 @intrapred8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1480 void @copy_image_data_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_skip(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1481 {
entry:
    #dbg_value(ptr %currMB, !1483, !DIExpression(), !1489)
    #dbg_value(i32 %curr_plane, !1484, !DIExpression(), !1489)
    #dbg_value(ptr %currImg, !1485, !DIExpression(), !1489)
    #dbg_value(ptr %dec_picture, !1486, !DIExpression(), !1489)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1490
    #dbg_value(ptr %0, !1487, !DIExpression(), !1489)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1491
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !1491
    #dbg_value(ptr %1, !1488, !DIExpression(), !1489)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1492
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7, !dbg !1493
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48, !dbg !1494
  %2 = load i32, ptr %pix_y, align 8, !dbg !1494
  %idxprom = sext i32 %2 to i64, !dbg !1495
  %arrayidx = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom, !dbg !1495
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !1496
  %3 = load ptr, ptr %mb_pred, align 8, !dbg !1496
  %idxprom2 = zext i32 %curr_plane to i64, !dbg !1497
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1497
  %4 = load ptr, ptr %arrayidx3, align 8, !dbg !1497
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44, !dbg !1498
  %5 = load i32, ptr %pix_x, align 4, !dbg !1498
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx, ptr noundef %4, i32 noundef %5, i32 noundef 0) #7, !dbg !1499
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !1500
  %6 = load i32, ptr %chroma_format_idc, align 4, !dbg !1500
  switch i32 %6, label %if.then [
    i32 0, label %if.end
    i32 3, label %if.end
  ], !dbg !1502

if.then:                                          ; preds = %entry
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136, !dbg !1503
  %7 = load ptr, ptr %imgUV, align 8, !dbg !1503
  %8 = load ptr, ptr %7, align 8, !dbg !1505
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56, !dbg !1506
  %9 = load i32, ptr %pix_c_y, align 8, !dbg !1506
  %idxprom7 = sext i32 %9 to i64, !dbg !1505
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 %idxprom7, !dbg !1505
  %10 = load ptr, ptr %mb_pred, align 8, !dbg !1507
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !1508
  %11 = load ptr, ptr %arrayidx10, align 8, !dbg !1508
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52, !dbg !1509
  %12 = load i32, ptr %pix_c_x, align 4, !dbg !1509
  %arrayidx11 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !1510
  %13 = load i32, ptr %arrayidx11, align 4, !dbg !1510
  %arrayidx15 = getelementptr inbounds i8, ptr %1, i64 849136, !dbg !1511
  %14 = load i32, ptr %arrayidx15, align 4, !dbg !1511
  tail call void @copy_image_data(ptr noundef %arrayidx8, ptr noundef %11, i32 noundef %12, i32 noundef 0, i32 noundef %13, i32 noundef %14) #7, !dbg !1512
  %15 = load ptr, ptr %imgUV, align 8, !dbg !1513
  %arrayidx17 = getelementptr inbounds i8, ptr %15, i64 8, !dbg !1514
  %16 = load ptr, ptr %arrayidx17, align 8, !dbg !1514
  %17 = load i32, ptr %pix_c_y, align 8, !dbg !1515
  %idxprom19 = sext i32 %17 to i64, !dbg !1514
  %arrayidx20 = getelementptr inbounds ptr, ptr %16, i64 %idxprom19, !dbg !1514
  %18 = load ptr, ptr %mb_pred, align 8, !dbg !1516
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 16, !dbg !1517
  %19 = load ptr, ptr %arrayidx22, align 8, !dbg !1517
  %20 = load i32, ptr %pix_c_x, align 4, !dbg !1518
  %21 = load i32, ptr %arrayidx11, align 4, !dbg !1519
  %22 = load i32, ptr %arrayidx15, align 4, !dbg !1520
  tail call void @copy_image_data(ptr noundef %arrayidx20, ptr noundef %19, i32 noundef %20, i32 noundef 0, i32 noundef %21, i32 noundef %22) #7, !dbg !1521
  br label %if.end, !dbg !1522

if.end:                                           ; preds = %entry, %entry, %if.then
  ret i32 1, !dbg !1523
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_chroma_vector(ptr nocapture noundef readonly %currMB) unnamed_addr #3 !dbg !1524 {
entry:
    #dbg_value(ptr %currMB, !1526, !DIExpression(), !1549)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1550
    #dbg_value(ptr %0, !1527, !DIExpression(), !1549)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1551
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !1551
    #dbg_value(ptr %1, !1528, !DIExpression(), !1549)
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128, !dbg !1552
  %2 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !1552
  %tobool.not = icmp eq i32 %2, 0, !dbg !1553
  br i1 %tobool.not, label %if.then, label %if.else104, !dbg !1554

if.then:                                          ; preds = %entry
  %structure = getelementptr inbounds i8, ptr %0, i64 184, !dbg !1555
  %3 = load i32, ptr %structure, align 8, !dbg !1555
  %listXsize84 = getelementptr inbounds i8, ptr %0, i64 256
  switch i32 %3, label %for.cond79.preheader [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond36.preheader
  ], !dbg !1556

for.cond36.preheader:                             ; preds = %if.then
    #dbg_value(i32 0, !1538, !DIExpression(), !1557)
  %structure48 = getelementptr inbounds i8, ptr %1, i64 848876
  %chroma_vector_adjustment58 = getelementptr inbounds i8, ptr %0, i64 13552
    #dbg_value(i64 0, !1538, !DIExpression(), !1557)
    #dbg_value(i32 0, !1535, !DIExpression(), !1557)
  %4 = load i8, ptr %listXsize84, align 1, !dbg !1558
  %cmp45293 = icmp sgt i8 %4, 0, !dbg !1564
  br i1 %cmp45293, label %for.body47.lr.ph, label %for.inc73, !dbg !1565

for.cond.preheader:                               ; preds = %if.then
    #dbg_value(i32 0, !1534, !DIExpression(), !1566)
  %structure8 = getelementptr inbounds i8, ptr %1, i64 848876
  %chroma_vector_adjustment = getelementptr inbounds i8, ptr %0, i64 13552
    #dbg_value(i64 0, !1534, !DIExpression(), !1566)
    #dbg_value(i32 0, !1529, !DIExpression(), !1566)
  %5 = load i8, ptr %listXsize84, align 1, !dbg !1567
  %cmp5297 = icmp sgt i8 %5, 0, !dbg !1573
  br i1 %cmp5297, label %for.body7.lr.ph, label %for.inc26, !dbg !1574

for.cond79.preheader:                             ; preds = %if.then
    #dbg_value(i32 0, !1541, !DIExpression(), !1575)
  %chroma_vector_adjustment91 = getelementptr inbounds i8, ptr %0, i64 13552
    #dbg_value(i64 0, !1541, !DIExpression(), !1575)
    #dbg_value(i32 0, !1539, !DIExpression(), !1575)
  %6 = load i8, ptr %listXsize84, align 1, !dbg !1576
  %cmp88301 = icmp sgt i8 %6, 0, !dbg !1582
  br i1 %cmp88301, label %iter.check406, label %for.inc99, !dbg !1583

for.body7.lr.ph:                                  ; preds = %for.cond.preheader
  %listX = getelementptr inbounds i8, ptr %0, i64 264
  %.pre344 = load ptr, ptr %listX, align 8, !dbg !1584
  %7 = zext nneg i8 %5 to i64
  %xtraiter473 = and i64 %7, 1, !dbg !1574
  %8 = icmp eq i8 %5, 1, !dbg !1574
  br i1 %8, label %for.inc26.loopexit.unr-lcssa, label %for.body7.lr.ph.new, !dbg !1574

for.body7.lr.ph.new:                              ; preds = %for.body7.lr.ph
  %unroll_iter475 = and i64 %7, 126, !dbg !1574
  br label %for.body7, !dbg !1574

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph.new
  %indvars.iv331 = phi i64 [ 0, %for.body7.lr.ph.new ], [ %indvars.iv.next332.1481, %for.body7 ]
  %niter476 = phi i64 [ 0, %for.body7.lr.ph.new ], [ %niter476.next.1, %for.body7 ]
    #dbg_value(i64 %indvars.iv331, !1529, !DIExpression(), !1566)
  %9 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12 = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv331, !dbg !1584
  %10 = load ptr, ptr %arrayidx12, align 8, !dbg !1584
  %11 = load i32, ptr %10, align 8, !dbg !1588
  %cmp14.not = icmp eq i32 %9, %11, !dbg !1589
  %arrayidx25 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv331, !dbg !1590
  %. = select i1 %cmp14.not, i8 0, i8 -2
  store i8 %., ptr %arrayidx25, align 1, !dbg !1590
  %indvars.iv.next332 = or disjoint i64 %indvars.iv331, 1, !dbg !1591
    #dbg_value(i64 %indvars.iv.next332, !1529, !DIExpression(), !1566)
  %12 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12.1478 = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv.next332, !dbg !1584
  %13 = load ptr, ptr %arrayidx12.1478, align 8, !dbg !1584
  %14 = load i32, ptr %13, align 8, !dbg !1588
  %cmp14.not.1479 = icmp eq i32 %12, %14, !dbg !1589
  %arrayidx25.1480 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv.next332, !dbg !1590
  %..1 = select i1 %cmp14.not.1479, i8 0, i8 -2
  store i8 %..1, ptr %arrayidx25.1480, align 1, !dbg !1590
  %indvars.iv.next332.1481 = add nuw nsw i64 %indvars.iv331, 2, !dbg !1591
    #dbg_value(i64 %indvars.iv.next332.1481, !1529, !DIExpression(), !1566)
  %niter476.next.1 = add i64 %niter476, 2, !dbg !1574
  %niter476.ncmp.1.not = icmp eq i64 %niter476.next.1, %unroll_iter475, !dbg !1574
  br i1 %niter476.ncmp.1.not, label %for.inc26.loopexit.unr-lcssa, label %for.body7, !dbg !1574, !llvm.loop !1592

for.inc26.loopexit.unr-lcssa:                     ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv331.unr = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next332.1481, %for.body7 ]
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0, !dbg !1574
  br i1 %lcmp.mod474.not, label %for.inc26, label %for.body7.epil, !dbg !1574

for.body7.epil:                                   ; preds = %for.inc26.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv331.unr, !1529, !DIExpression(), !1566)
  %15 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12.epil = getelementptr inbounds ptr, ptr %.pre344, i64 %indvars.iv331.unr, !dbg !1584
  %16 = load ptr, ptr %arrayidx12.epil, align 8, !dbg !1584
  %17 = load i32, ptr %16, align 8, !dbg !1588
  %cmp14.not.epil = icmp eq i32 %15, %17, !dbg !1589
  %arrayidx25.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 0, i64 %indvars.iv331.unr, !dbg !1590
  %..epil = select i1 %cmp14.not.epil, i8 0, i8 -2
  store i8 %..epil, ptr %arrayidx25.epil, align 1, !dbg !1590
    #dbg_value(i64 %indvars.iv331.unr, !1529, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1566)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body7.epil, %for.inc26.loopexit.unr-lcssa, %for.cond.preheader
    #dbg_value(i64 1, !1534, !DIExpression(), !1566)
  %arrayidx.1 = getelementptr inbounds i8, ptr %0, i64 257
    #dbg_value(i32 0, !1529, !DIExpression(), !1566)
  %18 = load i8, ptr %arrayidx.1, align 1, !dbg !1567
  %cmp5297.1 = icmp sgt i8 %18, 0, !dbg !1573
  br i1 %cmp5297.1, label %for.body7.lr.ph.1, label %if.end197, !dbg !1574

for.body7.lr.ph.1:                                ; preds = %for.inc26
  %arrayidx10.1 = getelementptr inbounds i8, ptr %0, i64 272
  %.pre345 = load ptr, ptr %arrayidx10.1, align 8, !dbg !1584
  %19 = zext nneg i8 %18 to i64
  %xtraiter484 = and i64 %19, 1, !dbg !1574
  %20 = icmp eq i8 %18, 1, !dbg !1574
  br i1 %20, label %if.end197.loopexit457.unr-lcssa, label %for.body7.lr.ph.1.new, !dbg !1574

for.body7.lr.ph.1.new:                            ; preds = %for.body7.lr.ph.1
  %unroll_iter486 = and i64 %19, 126, !dbg !1574
  br label %for.body7.1, !dbg !1574

for.body7.1:                                      ; preds = %for.body7.1, %for.body7.lr.ph.1.new
  %indvars.iv331.1 = phi i64 [ 0, %for.body7.lr.ph.1.new ], [ %indvars.iv.next332.1.1, %for.body7.1 ]
  %niter487 = phi i64 [ 0, %for.body7.lr.ph.1.new ], [ %niter487.next.1, %for.body7.1 ]
    #dbg_value(i64 %indvars.iv331.1, !1529, !DIExpression(), !1566)
  %21 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12.1 = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv331.1, !dbg !1584
  %22 = load ptr, ptr %arrayidx12.1, align 8, !dbg !1584
  %23 = load i32, ptr %22, align 8, !dbg !1588
  %cmp14.not.1 = icmp eq i32 %21, %23, !dbg !1589
  %arrayidx25.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv331.1, !dbg !1590
  %.358 = select i1 %cmp14.not.1, i8 0, i8 -2
  store i8 %.358, ptr %arrayidx25.1, align 1, !dbg !1590
  %indvars.iv.next332.1 = or disjoint i64 %indvars.iv331.1, 1, !dbg !1591
    #dbg_value(i64 %indvars.iv.next332.1, !1529, !DIExpression(), !1566)
  %24 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12.1.1 = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv.next332.1, !dbg !1584
  %25 = load ptr, ptr %arrayidx12.1.1, align 8, !dbg !1584
  %26 = load i32, ptr %25, align 8, !dbg !1588
  %cmp14.not.1.1 = icmp eq i32 %24, %26, !dbg !1589
  %arrayidx25.1.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv.next332.1, !dbg !1590
  %.358.1 = select i1 %cmp14.not.1.1, i8 0, i8 -2
  store i8 %.358.1, ptr %arrayidx25.1.1, align 1, !dbg !1590
  %indvars.iv.next332.1.1 = add nuw nsw i64 %indvars.iv331.1, 2, !dbg !1591
    #dbg_value(i64 %indvars.iv.next332.1.1, !1529, !DIExpression(), !1566)
  %niter487.next.1 = add i64 %niter487, 2, !dbg !1574
  %niter487.ncmp.1.not = icmp eq i64 %niter487.next.1, %unroll_iter486, !dbg !1574
  br i1 %niter487.ncmp.1.not, label %if.end197.loopexit457.unr-lcssa, label %for.body7.1, !dbg !1574, !llvm.loop !1592

for.body47.lr.ph:                                 ; preds = %for.cond36.preheader
  %listX49 = getelementptr inbounds i8, ptr %0, i64 264
  %.pre = load ptr, ptr %listX49, align 8, !dbg !1594
  %27 = zext nneg i8 %4 to i64
  %xtraiter = and i64 %27, 1, !dbg !1565
  %28 = icmp eq i8 %4, 1, !dbg !1565
  br i1 %28, label %for.inc73.loopexit.unr-lcssa, label %for.body47.lr.ph.new, !dbg !1565

for.body47.lr.ph.new:                             ; preds = %for.body47.lr.ph
  %unroll_iter = and i64 %27, 126, !dbg !1565
  br label %for.body47, !dbg !1565

for.body47:                                       ; preds = %for.body47, %for.body47.lr.ph.new
  %indvars.iv325 = phi i64 [ 0, %for.body47.lr.ph.new ], [ %indvars.iv.next326.1466, %for.body47 ]
  %niter = phi i64 [ 0, %for.body47.lr.ph.new ], [ %niter.next.1, %for.body47 ]
    #dbg_value(i64 %indvars.iv325, !1535, !DIExpression(), !1557)
  %29 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv325, !dbg !1594
  %30 = load ptr, ptr %arrayidx53, align 8, !dbg !1594
  %31 = load i32, ptr %30, align 8, !dbg !1598
  %cmp55.not = icmp eq i32 %29, %31, !dbg !1599
  %arrayidx68 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv325, !dbg !1600
  %.359 = select i1 %cmp55.not, i8 0, i8 2
  store i8 %.359, ptr %arrayidx68, align 1, !dbg !1600
  %indvars.iv.next326 = or disjoint i64 %indvars.iv325, 1, !dbg !1601
    #dbg_value(i64 %indvars.iv.next326, !1535, !DIExpression(), !1557)
  %32 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53.1463 = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv.next326, !dbg !1594
  %33 = load ptr, ptr %arrayidx53.1463, align 8, !dbg !1594
  %34 = load i32, ptr %33, align 8, !dbg !1598
  %cmp55.not.1464 = icmp eq i32 %32, %34, !dbg !1599
  %arrayidx68.1465 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv.next326, !dbg !1600
  %.359.1 = select i1 %cmp55.not.1464, i8 0, i8 2
  store i8 %.359.1, ptr %arrayidx68.1465, align 1, !dbg !1600
  %indvars.iv.next326.1466 = add nuw nsw i64 %indvars.iv325, 2, !dbg !1601
    #dbg_value(i64 %indvars.iv.next326.1466, !1535, !DIExpression(), !1557)
  %niter.next.1 = add i64 %niter, 2, !dbg !1565
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1565
  br i1 %niter.ncmp.1.not, label %for.inc73.loopexit.unr-lcssa, label %for.body47, !dbg !1565, !llvm.loop !1602

for.inc73.loopexit.unr-lcssa:                     ; preds = %for.body47, %for.body47.lr.ph
  %indvars.iv325.unr = phi i64 [ 0, %for.body47.lr.ph ], [ %indvars.iv.next326.1466, %for.body47 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1565
  br i1 %lcmp.mod.not, label %for.inc73, label %for.body47.epil, !dbg !1565

for.body47.epil:                                  ; preds = %for.inc73.loopexit.unr-lcssa
    #dbg_value(i64 %indvars.iv325.unr, !1535, !DIExpression(), !1557)
  %35 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53.epil = getelementptr inbounds ptr, ptr %.pre, i64 %indvars.iv325.unr, !dbg !1594
  %36 = load ptr, ptr %arrayidx53.epil, align 8, !dbg !1594
  %37 = load i32, ptr %36, align 8, !dbg !1598
  %cmp55.not.epil = icmp eq i32 %35, %37, !dbg !1599
  %arrayidx68.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 0, i64 %indvars.iv325.unr, !dbg !1600
  %.359.epil = select i1 %cmp55.not.epil, i8 0, i8 2
  store i8 %.359.epil, ptr %arrayidx68.epil, align 1, !dbg !1600
    #dbg_value(i64 %indvars.iv325.unr, !1535, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1557)
  br label %for.inc73

for.inc73:                                        ; preds = %for.body47.epil, %for.inc73.loopexit.unr-lcssa, %for.cond36.preheader
    #dbg_value(i64 1, !1538, !DIExpression(), !1557)
  %arrayidx43.1 = getelementptr inbounds i8, ptr %0, i64 257
    #dbg_value(i32 0, !1535, !DIExpression(), !1557)
  %38 = load i8, ptr %arrayidx43.1, align 1, !dbg !1558
  %cmp45293.1 = icmp sgt i8 %38, 0, !dbg !1564
  br i1 %cmp45293.1, label %for.body47.lr.ph.1, label %if.end197, !dbg !1565

for.body47.lr.ph.1:                               ; preds = %for.inc73
  %arrayidx51.1 = getelementptr inbounds i8, ptr %0, i64 272
  %.pre343 = load ptr, ptr %arrayidx51.1, align 8, !dbg !1594
  %39 = zext nneg i8 %38 to i64
  %xtraiter469 = and i64 %39, 1, !dbg !1565
  %40 = icmp eq i8 %38, 1, !dbg !1565
  br i1 %40, label %if.end197.loopexit458.unr-lcssa, label %for.body47.lr.ph.1.new, !dbg !1565

for.body47.lr.ph.1.new:                           ; preds = %for.body47.lr.ph.1
  %unroll_iter471 = and i64 %39, 126, !dbg !1565
  br label %for.body47.1, !dbg !1565

for.body47.1:                                     ; preds = %for.body47.1, %for.body47.lr.ph.1.new
  %indvars.iv325.1 = phi i64 [ 0, %for.body47.lr.ph.1.new ], [ %indvars.iv.next326.1.1, %for.body47.1 ]
  %niter472 = phi i64 [ 0, %for.body47.lr.ph.1.new ], [ %niter472.next.1, %for.body47.1 ]
    #dbg_value(i64 %indvars.iv325.1, !1535, !DIExpression(), !1557)
  %41 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53.1 = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv325.1, !dbg !1594
  %42 = load ptr, ptr %arrayidx53.1, align 8, !dbg !1594
  %43 = load i32, ptr %42, align 8, !dbg !1598
  %cmp55.not.1 = icmp eq i32 %41, %43, !dbg !1599
  %arrayidx68.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv325.1, !dbg !1600
  %.360 = select i1 %cmp55.not.1, i8 0, i8 2
  store i8 %.360, ptr %arrayidx68.1, align 1, !dbg !1600
  %indvars.iv.next326.1 = or disjoint i64 %indvars.iv325.1, 1, !dbg !1601
    #dbg_value(i64 %indvars.iv.next326.1, !1535, !DIExpression(), !1557)
  %44 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53.1.1 = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv.next326.1, !dbg !1594
  %45 = load ptr, ptr %arrayidx53.1.1, align 8, !dbg !1594
  %46 = load i32, ptr %45, align 8, !dbg !1598
  %cmp55.not.1.1 = icmp eq i32 %44, %46, !dbg !1599
  %arrayidx68.1.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv.next326.1, !dbg !1600
  %.360.1 = select i1 %cmp55.not.1.1, i8 0, i8 2
  store i8 %.360.1, ptr %arrayidx68.1.1, align 1, !dbg !1600
  %indvars.iv.next326.1.1 = add nuw nsw i64 %indvars.iv325.1, 2, !dbg !1601
    #dbg_value(i64 %indvars.iv.next326.1.1, !1535, !DIExpression(), !1557)
  %niter472.next.1 = add i64 %niter472, 2, !dbg !1565
  %niter472.ncmp.1.not = icmp eq i64 %niter472.next.1, %unroll_iter471, !dbg !1565
  br i1 %niter472.ncmp.1.not, label %if.end197.loopexit458.unr-lcssa, label %for.body47.1, !dbg !1565, !llvm.loop !1602

iter.check406:                                    ; preds = %for.cond79.preheader
  %47 = zext nneg i8 %6 to i64
  %min.iters.check404 = icmp ult i8 %6, 8, !dbg !1583
  br i1 %min.iters.check404, label %for.body90.preheader, label %vector.main.loop.iter.check408, !dbg !1583

vector.main.loop.iter.check408:                   ; preds = %iter.check406
  %min.iters.check407 = icmp ult i8 %6, 64, !dbg !1583
  br i1 %min.iters.check407, label %vec.epilog.ph418, label %vector.ph409, !dbg !1583

vector.ph409:                                     ; preds = %vector.main.loop.iter.check408
  %n.vec411 = and i64 %47, 64, !dbg !1583
  %48 = getelementptr inbounds i8, ptr %0, i64 13568, !dbg !1604
  %49 = getelementptr inbounds i8, ptr %0, i64 13584, !dbg !1604
  %50 = getelementptr inbounds i8, ptr %0, i64 13600, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %chroma_vector_adjustment91, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %48, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %49, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %50, align 1, !dbg !1604
  %cmp.n415 = icmp eq i64 %n.vec411, %47, !dbg !1583
  br i1 %cmp.n415, label %for.inc99, label %vec.epilog.iter.check419, !dbg !1583

vec.epilog.iter.check419:                         ; preds = %vector.ph409
  %n.vec.remaining420 = and i64 %47, 56, !dbg !1583
  %min.epilog.iters.check421 = icmp eq i64 %n.vec.remaining420, 0, !dbg !1583
  br i1 %min.epilog.iters.check421, label %for.body90.preheader, label %vec.epilog.ph418, !dbg !1583

vec.epilog.ph418:                                 ; preds = %vector.main.loop.iter.check408, %vec.epilog.iter.check419
  %vec.epilog.resume.val422 = phi i64 [ %n.vec411, %vec.epilog.iter.check419 ], [ 0, %vector.main.loop.iter.check408 ]
  %n.vec424 = and i64 %47, 120, !dbg !1583
  br label %vec.epilog.vector.body426, !dbg !1583

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph418
  %index427 = phi i64 [ %vec.epilog.resume.val422, %vec.epilog.ph418 ], [ %index.next428, %vec.epilog.vector.body426 ], !dbg !1606
  %51 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 0, i64 %index427, !dbg !1607
  store <8 x i8> zeroinitializer, ptr %51, align 1, !dbg !1604
  %index.next428 = add nuw i64 %index427, 8, !dbg !1606
  %52 = icmp eq i64 %index.next428, %n.vec424, !dbg !1606
  br i1 %52, label %vec.epilog.middle.block416, label %vec.epilog.vector.body426, !dbg !1606, !llvm.loop !1608

vec.epilog.middle.block416:                       ; preds = %vec.epilog.vector.body426
  %cmp.n429 = icmp eq i64 %n.vec424, %47, !dbg !1583
  br i1 %cmp.n429, label %for.inc99, label %for.body90.preheader, !dbg !1583

for.body90.preheader:                             ; preds = %vec.epilog.middle.block416, %iter.check406, %vec.epilog.iter.check419
  %indvars.iv337.ph = phi i64 [ 0, %iter.check406 ], [ %n.vec411, %vec.epilog.iter.check419 ], [ %n.vec424, %vec.epilog.middle.block416 ]
  br label %for.body90, !dbg !1583

for.body90:                                       ; preds = %for.body90.preheader, %for.body90
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %for.body90 ], [ %indvars.iv337.ph, %for.body90.preheader ]
    #dbg_value(i64 %indvars.iv337, !1539, !DIExpression(), !1575)
  %arrayidx95 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 0, i64 %indvars.iv337, !dbg !1607
  store i8 0, ptr %arrayidx95, align 1, !dbg !1604
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1, !dbg !1606
    #dbg_value(i64 %indvars.iv.next338, !1539, !DIExpression(), !1575)
  %cmp88 = icmp ult i64 %indvars.iv.next338, %47, !dbg !1582
  br i1 %cmp88, label %for.body90, label %for.inc99, !dbg !1583, !llvm.loop !1612

for.inc99:                                        ; preds = %for.body90, %vector.ph409, %vec.epilog.middle.block416, %for.cond79.preheader
    #dbg_value(i64 1, !1541, !DIExpression(), !1575)
  %arrayidx86.1 = getelementptr inbounds i8, ptr %0, i64 257
    #dbg_value(i32 0, !1539, !DIExpression(), !1575)
  %53 = load i8, ptr %arrayidx86.1, align 1, !dbg !1576
  %cmp88301.1 = icmp sgt i8 %53, 0, !dbg !1582
  br i1 %cmp88301.1, label %iter.check433, label %if.end197, !dbg !1583

iter.check433:                                    ; preds = %for.inc99
  %54 = zext nneg i8 %53 to i64
  %min.iters.check431 = icmp ult i8 %53, 8, !dbg !1583
  br i1 %min.iters.check431, label %for.body90.1.preheader, label %vector.main.loop.iter.check435, !dbg !1583

vector.main.loop.iter.check435:                   ; preds = %iter.check433
  %min.iters.check434 = icmp ult i8 %53, 64, !dbg !1583
  br i1 %min.iters.check434, label %vec.epilog.ph445, label %vector.ph436, !dbg !1583

vector.ph436:                                     ; preds = %vector.main.loop.iter.check435
  %n.vec438 = and i64 %54, 64, !dbg !1583
  %55 = getelementptr inbounds i8, ptr %0, i64 13568, !dbg !1607
  %56 = getelementptr inbounds i8, ptr %0, i64 13584, !dbg !1604
  %57 = getelementptr inbounds i8, ptr %0, i64 13600, !dbg !1604
  %58 = getelementptr inbounds i8, ptr %0, i64 13616, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %55, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %56, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %57, align 1, !dbg !1604
  store <16 x i8> zeroinitializer, ptr %58, align 1, !dbg !1604
  %cmp.n442 = icmp eq i64 %n.vec438, %54, !dbg !1583
  br i1 %cmp.n442, label %if.end197, label %vec.epilog.iter.check446, !dbg !1583

vec.epilog.iter.check446:                         ; preds = %vector.ph436
  %n.vec.remaining447 = and i64 %54, 56, !dbg !1583
  %min.epilog.iters.check448 = icmp eq i64 %n.vec.remaining447, 0, !dbg !1583
  br i1 %min.epilog.iters.check448, label %for.body90.1.preheader, label %vec.epilog.ph445, !dbg !1583

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check435, %vec.epilog.iter.check446
  %vec.epilog.resume.val449 = phi i64 [ %n.vec438, %vec.epilog.iter.check446 ], [ 0, %vector.main.loop.iter.check435 ]
  %n.vec451 = and i64 %54, 120, !dbg !1583
  br label %vec.epilog.vector.body453, !dbg !1583

vec.epilog.vector.body453:                        ; preds = %vec.epilog.vector.body453, %vec.epilog.ph445
  %index454 = phi i64 [ %vec.epilog.resume.val449, %vec.epilog.ph445 ], [ %index.next455, %vec.epilog.vector.body453 ], !dbg !1606
  %59 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 1, i64 %index454, !dbg !1607
  store <8 x i8> zeroinitializer, ptr %59, align 1, !dbg !1604
  %index.next455 = add nuw i64 %index454, 8, !dbg !1606
  %60 = icmp eq i64 %index.next455, %n.vec451, !dbg !1606
  br i1 %60, label %vec.epilog.middle.block443, label %vec.epilog.vector.body453, !dbg !1606, !llvm.loop !1613

vec.epilog.middle.block443:                       ; preds = %vec.epilog.vector.body453
  %cmp.n456 = icmp eq i64 %n.vec451, %54, !dbg !1583
  br i1 %cmp.n456, label %if.end197, label %for.body90.1.preheader, !dbg !1583

for.body90.1.preheader:                           ; preds = %vec.epilog.middle.block443, %iter.check433, %vec.epilog.iter.check446
  %indvars.iv337.1.ph = phi i64 [ 0, %iter.check433 ], [ %n.vec438, %vec.epilog.iter.check446 ], [ %n.vec451, %vec.epilog.middle.block443 ]
  br label %for.body90.1, !dbg !1583

for.body90.1:                                     ; preds = %for.body90.1.preheader, %for.body90.1
  %indvars.iv337.1 = phi i64 [ %indvars.iv.next338.1, %for.body90.1 ], [ %indvars.iv337.1.ph, %for.body90.1.preheader ]
    #dbg_value(i64 %indvars.iv337.1, !1539, !DIExpression(), !1575)
  %arrayidx95.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment91, i64 0, i64 1, i64 %indvars.iv337.1, !dbg !1607
  store i8 0, ptr %arrayidx95.1, align 1, !dbg !1604
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337.1, 1, !dbg !1606
    #dbg_value(i64 %indvars.iv.next338.1, !1539, !DIExpression(), !1575)
  %cmp88.1 = icmp ult i64 %indvars.iv.next338.1, %54, !dbg !1582
  br i1 %cmp88.1, label %for.body90.1, label %if.end197, !dbg !1583, !llvm.loop !1614

if.else104:                                       ; preds = %entry
    #dbg_value(i32 poison, !1542, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1615)
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1616
  %61 = load i32, ptr %mb_field, align 8, !dbg !1616
  %tobool107.not = icmp eq i32 %61, 0, !dbg !1617
  br i1 %tobool107.not, label %for.cond173.preheader, label %if.then108, !dbg !1618

for.cond173.preheader:                            ; preds = %if.else104
  %listXsize178 = getelementptr inbounds i8, ptr %0, i64 256
    #dbg_value(i32 0, !1545, !DIExpression(), !1615)
  %chroma_vector_adjustment185 = getelementptr inbounds i8, ptr %0, i64 13552
    #dbg_value(i64 0, !1545, !DIExpression(), !1615)
    #dbg_value(i32 0, !1544, !DIExpression(), !1615)
  %62 = load i8, ptr %listXsize178, align 1, !dbg !1619
  %cmp182289 = icmp sgt i8 %62, 0, !dbg !1626
  br i1 %cmp182289, label %iter.check, label %for.inc193, !dbg !1627

if.then108:                                       ; preds = %if.else104
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !1628
  %63 = load i32, ptr %mbAddrX, align 8, !dbg !1628
    #dbg_value(i32 %63, !1542, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !1615)
  %.fr = freeze i32 %63, !dbg !1629
  %and = and i32 %.fr, 1, !dbg !1629
    #dbg_value(i32 %and, !1542, !DIExpression(), !1615)
  %list_offset109 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !1630
  %64 = load i16, ptr %list_offset109, align 2, !dbg !1630
    #dbg_value(i16 %64, !1546, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1631)
    #dbg_value(i16 %64, !1545, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1615)
  %listXsize117 = getelementptr inbounds i8, ptr %0, i64 256
  %cond279 = icmp eq i32 %and, 0
  %listX144 = getelementptr inbounds i8, ptr %0, i64 264
  %chroma_vector_adjustment153 = getelementptr inbounds i8, ptr %0, i64 13552
  %65 = sext i16 %64 to i64, !dbg !1632
    #dbg_value(i64 %65, !1545, !DIExpression(), !1615)
  %arrayidx119.us = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %65
    #dbg_value(i32 0, !1544, !DIExpression(), !1615)
  %66 = load i8, ptr %arrayidx119.us, align 1, !dbg !1634
  %cmp121285.us = icmp sgt i8 %66, 0, !dbg !1639
  br i1 %cond279, label %for.cond116.preheader.us.preheader, label %for.cond116.preheader.preheader

for.cond116.preheader.preheader:                  ; preds = %if.then108
  br i1 %cmp121285.us, label %for.body123.lr.ph, label %for.inc169, !dbg !1640

for.cond116.preheader.us.preheader:               ; preds = %if.then108
  br i1 %cmp121285.us, label %for.body123.lr.ph.us, label %for.inc169.us, !dbg !1640

for.inc169.us:                                    ; preds = %for.body123.us.us, %for.cond116.preheader.us.preheader
  %indvars.iv.next317 = add nsw i64 %65, 1, !dbg !1641
    #dbg_value(i64 %indvars.iv.next317, !1545, !DIExpression(), !1615)
  %arrayidx119.us.1 = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %indvars.iv.next317
    #dbg_value(i32 0, !1544, !DIExpression(), !1615)
  %67 = load i8, ptr %arrayidx119.us.1, align 1, !dbg !1634
  %cmp121285.us.1 = icmp sgt i8 %67, 0, !dbg !1639
  br i1 %cmp121285.us.1, label %for.body123.lr.ph.us.1, label %if.end197, !dbg !1640

for.body123.lr.ph.us.1:                           ; preds = %for.inc169.us
  %arrayidx128.us.1 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %indvars.iv.next317
  br label %for.body123.us.us.1, !dbg !1640

for.body123.us.us.1:                              ; preds = %for.body123.us.us.1, %for.body123.lr.ph.us.1
  %indvars.iv313.1 = phi i64 [ %indvars.iv.next314.1, %for.body123.us.us.1 ], [ 0, %for.body123.lr.ph.us.1 ]
    #dbg_value(i64 %indvars.iv313.1, !1544, !DIExpression(), !1615)
  %68 = load ptr, ptr %arrayidx128.us.1, align 8, !dbg !1642
  %arrayidx130.us.us.1 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv313.1, !dbg !1642
  %69 = load ptr, ptr %arrayidx130.us.us.1, align 8, !dbg !1642
  %70 = load i32, ptr %69, align 8, !dbg !1645
  %cmp132.us.us.1 = icmp eq i32 %70, 2, !dbg !1646
  %arrayidx139.us.us.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %indvars.iv.next317, i64 %indvars.iv313.1, !dbg !1647
  %.361 = select i1 %cmp132.us.us.1, i8 -2, i8 0
  store i8 %.361, ptr %arrayidx139.us.us.1, align 1, !dbg !1647
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313.1, 1, !dbg !1648
    #dbg_value(i64 %indvars.iv.next314.1, !1544, !DIExpression(), !1615)
  %71 = load i8, ptr %arrayidx119.us.1, align 1, !dbg !1634
  %72 = sext i8 %71 to i64, !dbg !1639
  %cmp121.us.us.1 = icmp slt i64 %indvars.iv.next314.1, %72, !dbg !1639
  br i1 %cmp121.us.us.1, label %for.body123.us.us.1, label %if.end197, !dbg !1640, !llvm.loop !1649

for.body123.lr.ph.us:                             ; preds = %for.cond116.preheader.us.preheader
  %arrayidx128.us = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %65
  br label %for.body123.us.us, !dbg !1640

for.body123.us.us:                                ; preds = %for.body123.us.us, %for.body123.lr.ph.us
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %for.body123.us.us ], [ 0, %for.body123.lr.ph.us ]
    #dbg_value(i64 %indvars.iv313, !1544, !DIExpression(), !1615)
  %73 = load ptr, ptr %arrayidx128.us, align 8, !dbg !1642
  %arrayidx130.us.us = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv313, !dbg !1642
  %74 = load ptr, ptr %arrayidx130.us.us, align 8, !dbg !1642
  %75 = load i32, ptr %74, align 8, !dbg !1645
  %cmp132.us.us = icmp eq i32 %75, 2, !dbg !1646
  %arrayidx139.us.us = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %65, i64 %indvars.iv313, !dbg !1647
  %.362 = select i1 %cmp132.us.us, i8 -2, i8 0
  store i8 %.362, ptr %arrayidx139.us.us, align 1, !dbg !1647
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1, !dbg !1648
    #dbg_value(i64 %indvars.iv.next314, !1544, !DIExpression(), !1615)
  %76 = load i8, ptr %arrayidx119.us, align 1, !dbg !1634
  %77 = sext i8 %76 to i64, !dbg !1639
  %cmp121.us.us = icmp slt i64 %indvars.iv.next314, %77, !dbg !1639
  br i1 %cmp121.us.us, label %for.body123.us.us, label %for.inc169.us, !dbg !1640, !llvm.loop !1649

for.body123.lr.ph:                                ; preds = %for.cond116.preheader.preheader
  %arrayidx146 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %65
  br label %for.body123, !dbg !1640

for.body123:                                      ; preds = %for.body123.lr.ph, %for.body123
  %indvars.iv = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next, %for.body123 ]
    #dbg_value(i64 %indvars.iv, !1544, !DIExpression(), !1615)
  %78 = load ptr, ptr %arrayidx146, align 8, !dbg !1651
  %arrayidx148 = getelementptr inbounds ptr, ptr %78, i64 %indvars.iv, !dbg !1651
  %79 = load ptr, ptr %arrayidx148, align 8, !dbg !1651
  %80 = load i32, ptr %79, align 8, !dbg !1653
  %cmp150 = icmp eq i32 %80, 1, !dbg !1654
  %arrayidx157 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %65, i64 %indvars.iv, !dbg !1655
  %.363 = select i1 %cmp150, i8 2, i8 0
  store i8 %.363, ptr %arrayidx157, align 1, !dbg !1655
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1648
    #dbg_value(i64 %indvars.iv.next, !1544, !DIExpression(), !1615)
  %81 = load i8, ptr %arrayidx119.us, align 1, !dbg !1634
  %82 = sext i8 %81 to i64, !dbg !1639
  %cmp121 = icmp slt i64 %indvars.iv.next, %82, !dbg !1639
  br i1 %cmp121, label %for.body123, label %for.inc169, !dbg !1640, !llvm.loop !1649

for.inc169:                                       ; preds = %for.body123, %for.cond116.preheader.preheader
  %indvars.iv.next311 = add nsw i64 %65, 1, !dbg !1641
    #dbg_value(i64 %indvars.iv.next311, !1545, !DIExpression(), !1615)
  %arrayidx119.1 = getelementptr inbounds [6 x i8], ptr %listXsize117, i64 0, i64 %indvars.iv.next311
    #dbg_value(i32 0, !1544, !DIExpression(), !1615)
  %83 = load i8, ptr %arrayidx119.1, align 1, !dbg !1634
  %cmp121285.1 = icmp sgt i8 %83, 0, !dbg !1639
  br i1 %cmp121285.1, label %for.body123.lr.ph.1, label %if.end197, !dbg !1640

for.body123.lr.ph.1:                              ; preds = %for.inc169
  %arrayidx146.1 = getelementptr inbounds [6 x ptr], ptr %listX144, i64 0, i64 %indvars.iv.next311
  br label %for.body123.1, !dbg !1640

for.body123.1:                                    ; preds = %for.body123.1, %for.body123.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %for.body123.lr.ph.1 ], [ %indvars.iv.next.1, %for.body123.1 ]
    #dbg_value(i64 %indvars.iv.1, !1544, !DIExpression(), !1615)
  %84 = load ptr, ptr %arrayidx146.1, align 8, !dbg !1651
  %arrayidx148.1 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv.1, !dbg !1651
  %85 = load ptr, ptr %arrayidx148.1, align 8, !dbg !1651
  %86 = load i32, ptr %85, align 8, !dbg !1653
  %cmp150.1 = icmp eq i32 %86, 1, !dbg !1654
  %arrayidx157.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment153, i64 0, i64 %indvars.iv.next311, i64 %indvars.iv.1, !dbg !1655
  %.364 = select i1 %cmp150.1, i8 2, i8 0
  store i8 %.364, ptr %arrayidx157.1, align 1, !dbg !1655
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1, !dbg !1648
    #dbg_value(i64 %indvars.iv.next.1, !1544, !DIExpression(), !1615)
  %87 = load i8, ptr %arrayidx119.1, align 1, !dbg !1634
  %88 = sext i8 %87 to i64, !dbg !1639
  %cmp121.1 = icmp slt i64 %indvars.iv.next.1, %88, !dbg !1639
  br i1 %cmp121.1, label %for.body123.1, label %if.end197, !dbg !1640, !llvm.loop !1649

iter.check:                                       ; preds = %for.cond173.preheader
  %89 = zext nneg i8 %62 to i64
  %min.iters.check = icmp ult i8 %62, 8, !dbg !1627
  br i1 %min.iters.check, label %for.body184.preheader, label %vector.main.loop.iter.check, !dbg !1627

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check370 = icmp ult i8 %62, 64, !dbg !1627
  br i1 %min.iters.check370, label %vec.epilog.ph, label %vector.ph, !dbg !1627

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %89, 64, !dbg !1627
  %90 = getelementptr inbounds i8, ptr %0, i64 13568, !dbg !1656
  %91 = getelementptr inbounds i8, ptr %0, i64 13584, !dbg !1656
  %92 = getelementptr inbounds i8, ptr %0, i64 13600, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %chroma_vector_adjustment185, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %90, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %91, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %92, align 1, !dbg !1656
  %cmp.n = icmp eq i64 %n.vec, %89, !dbg !1627
  br i1 %cmp.n, label %for.inc193, label %vec.epilog.iter.check, !dbg !1627

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.vec.remaining = and i64 %89, 56, !dbg !1627
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0, !dbg !1627
  br i1 %min.epilog.iters.check, label %for.body184.preheader, label %vec.epilog.ph, !dbg !1627

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec372 = and i64 %89, 120, !dbg !1627
  br label %vec.epilog.vector.body, !dbg !1627

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index373 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next374, %vec.epilog.vector.body ], !dbg !1658
  %93 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 0, i64 %index373, !dbg !1659
  store <8 x i8> zeroinitializer, ptr %93, align 1, !dbg !1656
  %index.next374 = add nuw i64 %index373, 8, !dbg !1658
  %94 = icmp eq i64 %index.next374, %n.vec372, !dbg !1658
  br i1 %94, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !1658, !llvm.loop !1660

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n375 = icmp eq i64 %n.vec372, %89, !dbg !1627
  br i1 %cmp.n375, label %for.inc193, label %for.body184.preheader, !dbg !1627

for.body184.preheader:                            ; preds = %vec.epilog.middle.block, %iter.check, %vec.epilog.iter.check
  %indvars.iv319.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec372, %vec.epilog.middle.block ]
  br label %for.body184, !dbg !1627

for.body184:                                      ; preds = %for.body184.preheader, %for.body184
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.body184 ], [ %indvars.iv319.ph, %for.body184.preheader ]
    #dbg_value(i64 %indvars.iv319, !1544, !DIExpression(), !1615)
  %arrayidx189 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 0, i64 %indvars.iv319, !dbg !1659
  store i8 0, ptr %arrayidx189, align 1, !dbg !1656
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1, !dbg !1658
    #dbg_value(i64 %indvars.iv.next320, !1544, !DIExpression(), !1615)
  %cmp182 = icmp ult i64 %indvars.iv.next320, %89, !dbg !1626
  br i1 %cmp182, label %for.body184, label %for.inc193, !dbg !1627, !llvm.loop !1662

for.inc193:                                       ; preds = %for.body184, %vector.ph, %vec.epilog.middle.block, %for.cond173.preheader
    #dbg_value(i64 1, !1545, !DIExpression(), !1615)
  %arrayidx180.1 = getelementptr inbounds i8, ptr %0, i64 257
    #dbg_value(i32 0, !1544, !DIExpression(), !1615)
  %95 = load i8, ptr %arrayidx180.1, align 1, !dbg !1619
  %cmp182289.1 = icmp sgt i8 %95, 0, !dbg !1626
  br i1 %cmp182289.1, label %iter.check379, label %if.end197, !dbg !1627

iter.check379:                                    ; preds = %for.inc193
  %96 = zext nneg i8 %95 to i64
  %min.iters.check377 = icmp ult i8 %95, 8, !dbg !1627
  br i1 %min.iters.check377, label %for.body184.1.preheader, label %vector.main.loop.iter.check381, !dbg !1627

vector.main.loop.iter.check381:                   ; preds = %iter.check379
  %min.iters.check380 = icmp ult i8 %95, 64, !dbg !1627
  br i1 %min.iters.check380, label %vec.epilog.ph391, label %vector.ph382, !dbg !1627

vector.ph382:                                     ; preds = %vector.main.loop.iter.check381
  %n.vec384 = and i64 %96, 64, !dbg !1627
  %97 = getelementptr inbounds i8, ptr %0, i64 13568, !dbg !1659
  %98 = getelementptr inbounds i8, ptr %0, i64 13584, !dbg !1656
  %99 = getelementptr inbounds i8, ptr %0, i64 13600, !dbg !1656
  %100 = getelementptr inbounds i8, ptr %0, i64 13616, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %97, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %98, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %99, align 1, !dbg !1656
  store <16 x i8> zeroinitializer, ptr %100, align 1, !dbg !1656
  %cmp.n388 = icmp eq i64 %n.vec384, %96, !dbg !1627
  br i1 %cmp.n388, label %if.end197, label %vec.epilog.iter.check392, !dbg !1627

vec.epilog.iter.check392:                         ; preds = %vector.ph382
  %n.vec.remaining393 = and i64 %96, 56, !dbg !1627
  %min.epilog.iters.check394 = icmp eq i64 %n.vec.remaining393, 0, !dbg !1627
  br i1 %min.epilog.iters.check394, label %for.body184.1.preheader, label %vec.epilog.ph391, !dbg !1627

vec.epilog.ph391:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check392
  %vec.epilog.resume.val395 = phi i64 [ %n.vec384, %vec.epilog.iter.check392 ], [ 0, %vector.main.loop.iter.check381 ]
  %n.vec397 = and i64 %96, 120, !dbg !1627
  br label %vec.epilog.vector.body399, !dbg !1627

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph391
  %index400 = phi i64 [ %vec.epilog.resume.val395, %vec.epilog.ph391 ], [ %index.next401, %vec.epilog.vector.body399 ], !dbg !1658
  %101 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 1, i64 %index400, !dbg !1659
  store <8 x i8> zeroinitializer, ptr %101, align 1, !dbg !1656
  %index.next401 = add nuw i64 %index400, 8, !dbg !1658
  %102 = icmp eq i64 %index.next401, %n.vec397, !dbg !1658
  br i1 %102, label %vec.epilog.middle.block389, label %vec.epilog.vector.body399, !dbg !1658, !llvm.loop !1663

vec.epilog.middle.block389:                       ; preds = %vec.epilog.vector.body399
  %cmp.n402 = icmp eq i64 %n.vec397, %96, !dbg !1627
  br i1 %cmp.n402, label %if.end197, label %for.body184.1.preheader, !dbg !1627

for.body184.1.preheader:                          ; preds = %vec.epilog.middle.block389, %iter.check379, %vec.epilog.iter.check392
  %indvars.iv319.1.ph = phi i64 [ 0, %iter.check379 ], [ %n.vec384, %vec.epilog.iter.check392 ], [ %n.vec397, %vec.epilog.middle.block389 ]
  br label %for.body184.1, !dbg !1627

for.body184.1:                                    ; preds = %for.body184.1.preheader, %for.body184.1
  %indvars.iv319.1 = phi i64 [ %indvars.iv.next320.1, %for.body184.1 ], [ %indvars.iv319.1.ph, %for.body184.1.preheader ]
    #dbg_value(i64 %indvars.iv319.1, !1544, !DIExpression(), !1615)
  %arrayidx189.1 = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment185, i64 0, i64 1, i64 %indvars.iv319.1, !dbg !1659
  store i8 0, ptr %arrayidx189.1, align 1, !dbg !1656
  %indvars.iv.next320.1 = add nuw nsw i64 %indvars.iv319.1, 1, !dbg !1658
    #dbg_value(i64 %indvars.iv.next320.1, !1544, !DIExpression(), !1615)
  %cmp182.1 = icmp ult i64 %indvars.iv.next320.1, %96, !dbg !1626
  br i1 %cmp182.1, label %for.body184.1, label %if.end197, !dbg !1627, !llvm.loop !1664

if.end197.loopexit457.unr-lcssa:                  ; preds = %for.body7.1, %for.body7.lr.ph.1
  %indvars.iv331.1.unr = phi i64 [ 0, %for.body7.lr.ph.1 ], [ %indvars.iv.next332.1.1, %for.body7.1 ]
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0, !dbg !1574
  br i1 %lcmp.mod485.not, label %if.end197, label %for.body7.1.epil, !dbg !1574

for.body7.1.epil:                                 ; preds = %if.end197.loopexit457.unr-lcssa
    #dbg_value(i64 %indvars.iv331.1.unr, !1529, !DIExpression(), !1566)
  %103 = load i32, ptr %structure8, align 4, !dbg !1587
  %arrayidx12.1.epil = getelementptr inbounds ptr, ptr %.pre345, i64 %indvars.iv331.1.unr, !dbg !1584
  %104 = load ptr, ptr %arrayidx12.1.epil, align 8, !dbg !1584
  %105 = load i32, ptr %104, align 8, !dbg !1588
  %cmp14.not.1.epil = icmp eq i32 %103, %105, !dbg !1589
  %arrayidx25.1.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment, i64 0, i64 1, i64 %indvars.iv331.1.unr, !dbg !1590
  %.358.epil = select i1 %cmp14.not.1.epil, i8 0, i8 -2
  store i8 %.358.epil, ptr %arrayidx25.1.epil, align 1, !dbg !1590
    #dbg_value(i64 %indvars.iv331.1.unr, !1529, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1566)
  br label %if.end197, !dbg !1665

if.end197.loopexit458.unr-lcssa:                  ; preds = %for.body47.1, %for.body47.lr.ph.1
  %indvars.iv325.1.unr = phi i64 [ 0, %for.body47.lr.ph.1 ], [ %indvars.iv.next326.1.1, %for.body47.1 ]
  %lcmp.mod470.not = icmp eq i64 %xtraiter469, 0, !dbg !1565
  br i1 %lcmp.mod470.not, label %if.end197, label %for.body47.1.epil, !dbg !1565

for.body47.1.epil:                                ; preds = %if.end197.loopexit458.unr-lcssa
    #dbg_value(i64 %indvars.iv325.1.unr, !1535, !DIExpression(), !1557)
  %106 = load i32, ptr %structure48, align 4, !dbg !1597
  %arrayidx53.1.epil = getelementptr inbounds ptr, ptr %.pre343, i64 %indvars.iv325.1.unr, !dbg !1594
  %107 = load ptr, ptr %arrayidx53.1.epil, align 8, !dbg !1594
  %108 = load i32, ptr %107, align 8, !dbg !1598
  %cmp55.not.1.epil = icmp eq i32 %106, %108, !dbg !1599
  %arrayidx68.1.epil = getelementptr inbounds [6 x [16 x i8]], ptr %chroma_vector_adjustment58, i64 0, i64 1, i64 %indvars.iv325.1.unr, !dbg !1600
  %.360.epil = select i1 %cmp55.not.1.epil, i8 0, i8 2
  store i8 %.360.epil, ptr %arrayidx68.1.epil, align 1, !dbg !1600
    #dbg_value(i64 %indvars.iv325.1.unr, !1535, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1557)
  br label %if.end197, !dbg !1665

if.end197:                                        ; preds = %for.body123.1, %for.body123.us.us.1, %for.body184.1, %for.body47.1.epil, %if.end197.loopexit458.unr-lcssa, %for.body7.1.epil, %if.end197.loopexit457.unr-lcssa, %for.body90.1, %vector.ph382, %vec.epilog.middle.block389, %vector.ph436, %vec.epilog.middle.block443, %for.inc193, %for.inc169, %for.inc169.us, %for.inc99, %for.inc73, %for.inc26
  %structure198 = getelementptr inbounds i8, ptr %0, i64 184, !dbg !1665
  %109 = load i32, ptr %structure198, align 8, !dbg !1665
  %cmp199.not = icmp eq i32 %109, 0, !dbg !1666
  br i1 %cmp199.not, label %lor.lhs.false, label %cond.true, !dbg !1667

lor.lhs.false:                                    ; preds = %if.end197
  %mb_field201 = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !1668
  %110 = load i32, ptr %mb_field201, align 8, !dbg !1668
  %tobool202.not = icmp eq i32 %110, 0, !dbg !1669
  br i1 %tobool202.not, label %cond.false, label %cond.true, !dbg !1670

cond.true:                                        ; preds = %lor.lhs.false, %if.end197
  %max_vmv_r = getelementptr inbounds i8, ptr %1, i64 849216, !dbg !1671
  %111 = load i32, ptr %max_vmv_r, align 8, !dbg !1671
  %shr = ashr i32 %111, 1, !dbg !1672
  br label %cond.end, !dbg !1670

cond.false:                                       ; preds = %lor.lhs.false
  %max_vmv_r203 = getelementptr inbounds i8, ptr %1, i64 849216, !dbg !1673
  %112 = load i32, ptr %max_vmv_r203, align 8, !dbg !1673
  br label %cond.end, !dbg !1670

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %112, %cond.false ], !dbg !1670
  %max_mb_vmv_r = getelementptr inbounds i8, ptr %0, i64 13336, !dbg !1674
  store i32 %cond, ptr %max_mb_vmv_r, align 8, !dbg !1675
  ret void, !dbg !1676
}

declare !dbg !1677 void @perform_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1680 void @copy_image_data_16x16(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1681 void @copy_image_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_sp_skip(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1684 {
entry:
    #dbg_value(ptr %currMB, !1686, !DIExpression(), !1689)
    #dbg_value(i32 %curr_plane, !1687, !DIExpression(), !1689)
    #dbg_value(ptr %dec_picture, !1688, !DIExpression(), !1689)
  tail call fastcc void @set_chroma_vector(ptr noundef %currMB), !dbg !1690
  tail call void @perform_mc(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7, !dbg !1691
  tail call void @iTransform(ptr noundef %currMB, i32 noundef %curr_plane, i32 noundef 1) #7, !dbg !1692
  ret i32 1, !dbg !1693
}

declare !dbg !1694 void @iTransform(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1695 {
entry:
    #dbg_value(ptr %currMB, !1697, !DIExpression(), !1717)
    #dbg_value(i32 %curr_plane, !1698, !DIExpression(), !1717)
    #dbg_value(ptr %dec_picture, !1699, !DIExpression(), !1717)
    #dbg_value(i32 0, !1701, !DIExpression(), !1717)
    #dbg_value(i32 0, !1702, !DIExpression(), !1717)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1718
    #dbg_value(ptr %0, !1704, !DIExpression(), !1717)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1719
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !1719
    #dbg_value(ptr %1, !1705, !DIExpression(), !1717)
  %type = getelementptr inbounds i8, ptr %1, i64 848776, !dbg !1720
  %2 = load i32, ptr %type, align 8, !dbg !1720
  %cmp = icmp eq i32 %2, 3, !dbg !1721
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1722

land.rhs:                                         ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !1723
  %3 = load i32, ptr %is_intra_block, align 8, !dbg !1723
  %cmp2 = icmp eq i32 %3, 0, !dbg !1724
  %4 = zext i1 %cmp2 to i32, !dbg !1722
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %4, %land.rhs ], !dbg !1717
    #dbg_value(i32 %land.ext, !1706, !DIExpression(), !1717)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1725
    #dbg_value(i32 0, !1700, !DIExpression(), !1717)
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
    #dbg_value(i32 0, !1700, !DIExpression(), !1717)
    #dbg_value(i64 0, !1700, !DIExpression(), !1717)
  %5 = load i8, ptr %b8mode, align 1, !dbg !1726
    #dbg_value(i8 %5, !1707, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1727)
  %6 = load i8, ptr %b8pdir, align 1, !dbg !1728
  %conv6 = sext i8 %6 to i32, !dbg !1728
    #dbg_value(i32 %conv6, !1711, !DIExpression(), !1727)
    #dbg_value(i64 0, !1712, !DIExpression(), !1727)
  %cmp7 = icmp eq i8 %5, 5, !dbg !1729
  %cond = select i1 %cmp7, i32 2, i32 1, !dbg !1730
    #dbg_value(i32 %cond, !1713, !DIExpression(), !1727)
  %cmp9 = icmp eq i8 %5, 4, !dbg !1731
  %cmp11 = icmp eq i8 %5, 7, !dbg !1732
  %add17 = add nuw nsw i32 %cond, 1, !dbg !1732
  %spec.select = select i1 %cmp11, i32 4, i32 %add17, !dbg !1732
  %cond20 = select i1 %cmp9, i32 1, i32 %spec.select, !dbg !1732
    #dbg_value(i32 %cond20, !1714, !DIExpression(), !1727)
  %7 = and i8 %5, -2, !dbg !1733
  %8 = icmp eq i8 %7, 4, !dbg !1733
  %cond25 = select i1 %8, i32 8, i32 4, !dbg !1734
    #dbg_value(i32 %cond25, !1715, !DIExpression(), !1727)
  %cmp26 = icmp eq i8 %5, 6, !dbg !1735
  %9 = or i1 %cmp26, %cmp9, !dbg !1736
  %cond32 = select i1 %9, i32 8, i32 4, !dbg !1737
    #dbg_value(i32 %cond32, !1716, !DIExpression(), !1727)
    #dbg_value(i64 0, !1703, !DIExpression(), !1717)
  %10 = zext nneg i32 %cond to i64, !dbg !1738
  br label %for.body36, !dbg !1738

for.body36:                                       ; preds = %land.end, %for.body36
  %indvars.iv78 = phi i64 [ 0, %land.end ], [ %indvars.iv.next79, %for.body36 ]
    #dbg_value(i64 %indvars.iv78, !1703, !DIExpression(), !1717)
  %arrayidx38 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78, !dbg !1740
  %11 = load i8, ptr %arrayidx38, align 1, !dbg !1740
  %conv39 = zext i8 %11 to i32, !dbg !1740
  %and = and i32 %conv39, 3, !dbg !1743
    #dbg_value(i32 %and, !1701, !DIExpression(), !1717)
  %shr = lshr i32 %conv39, 2, !dbg !1744
  %and43 = and i32 %shr, 3, !dbg !1745
    #dbg_value(i32 %and43, !1702, !DIExpression(), !1717)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6, i32 noundef %and, i32 noundef %and43, i32 noundef %cond25, i32 noundef %cond32) #7, !dbg !1746
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, %10, !dbg !1747
    #dbg_value(i64 %indvars.iv.next79, !1703, !DIExpression(), !1717)
  %12 = trunc nuw i64 %indvars.iv.next79 to i32, !dbg !1748
  %cmp34 = icmp sgt i32 %cond20, %12, !dbg !1748
  br i1 %cmp34, label %for.body36, label %for.end, !dbg !1738, !llvm.loop !1749

for.end:                                          ; preds = %for.body36
    #dbg_value(i64 1, !1700, !DIExpression(), !1717)
  %arrayidx.1 = getelementptr inbounds i8, ptr %currMB, i64 365, !dbg !1726
  %13 = load i8, ptr %arrayidx.1, align 1, !dbg !1726
    #dbg_value(i8 %13, !1707, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1727)
  %arrayidx5.1 = getelementptr inbounds i8, ptr %currMB, i64 369, !dbg !1728
  %14 = load i8, ptr %arrayidx5.1, align 1, !dbg !1728
  %conv6.1 = sext i8 %14 to i32, !dbg !1728
    #dbg_value(i32 %conv6.1, !1711, !DIExpression(), !1727)
    #dbg_value(i64 4, !1712, !DIExpression(), !1727)
  %cmp7.1 = icmp eq i8 %13, 5, !dbg !1729
  %cond.1 = select i1 %cmp7.1, i32 2, i32 1, !dbg !1730
    #dbg_value(i32 %cond.1, !1713, !DIExpression(), !1727)
  %cmp9.1 = icmp eq i8 %13, 4, !dbg !1731
  %cmp11.1 = icmp eq i8 %13, 7, !dbg !1732
  %add17.1 = add nuw nsw i32 %cond.1, 5, !dbg !1732
  %spec.select88 = select i1 %cmp11.1, i32 8, i32 %add17.1, !dbg !1732
  %cond20.1 = select i1 %cmp9.1, i32 5, i32 %spec.select88, !dbg !1732
    #dbg_value(i32 %cond20.1, !1714, !DIExpression(), !1727)
  %15 = and i8 %13, -2, !dbg !1733
  %16 = icmp eq i8 %15, 4, !dbg !1733
  %cond25.1 = select i1 %16, i32 8, i32 4, !dbg !1734
    #dbg_value(i32 %cond25.1, !1715, !DIExpression(), !1727)
  %cmp26.1 = icmp eq i8 %13, 6, !dbg !1735
  %17 = or i1 %cmp26.1, %cmp9.1, !dbg !1736
  %cond32.1 = select i1 %17, i32 8, i32 4, !dbg !1737
    #dbg_value(i32 %cond32.1, !1716, !DIExpression(), !1727)
    #dbg_value(i64 4, !1703, !DIExpression(), !1717)
  %18 = zext nneg i32 %cond.1 to i64, !dbg !1738
  br label %for.body36.1, !dbg !1738

for.body36.1:                                     ; preds = %for.body36.1, %for.end
  %indvars.iv78.1 = phi i64 [ 4, %for.end ], [ %indvars.iv.next79.1, %for.body36.1 ]
    #dbg_value(i64 %indvars.iv78.1, !1703, !DIExpression(), !1717)
  %arrayidx38.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.1, !dbg !1740
  %19 = load i8, ptr %arrayidx38.1, align 1, !dbg !1740
  %conv39.1 = zext i8 %19 to i32, !dbg !1740
  %and.1 = and i32 %conv39.1, 3, !dbg !1743
    #dbg_value(i32 %and.1, !1701, !DIExpression(), !1717)
  %shr.1 = lshr i32 %conv39.1, 2, !dbg !1744
  %and43.1 = and i32 %shr.1, 3, !dbg !1745
    #dbg_value(i32 %and43.1, !1702, !DIExpression(), !1717)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.1, i32 noundef %and.1, i32 noundef %and43.1, i32 noundef %cond25.1, i32 noundef %cond32.1) #7, !dbg !1746
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78.1, %18, !dbg !1747
    #dbg_value(i64 %indvars.iv.next79.1, !1703, !DIExpression(), !1717)
  %20 = trunc nuw i64 %indvars.iv.next79.1 to i32, !dbg !1748
  %cmp34.1 = icmp sgt i32 %cond20.1, %20, !dbg !1748
  br i1 %cmp34.1, label %for.body36.1, label %for.end.1, !dbg !1738, !llvm.loop !1749

for.end.1:                                        ; preds = %for.body36.1
    #dbg_value(i64 2, !1700, !DIExpression(), !1717)
  %arrayidx.2 = getelementptr inbounds i8, ptr %currMB, i64 366, !dbg !1726
  %21 = load i8, ptr %arrayidx.2, align 1, !dbg !1726
    #dbg_value(i8 %21, !1707, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1727)
  %arrayidx5.2 = getelementptr inbounds i8, ptr %currMB, i64 370, !dbg !1728
  %22 = load i8, ptr %arrayidx5.2, align 1, !dbg !1728
  %conv6.2 = sext i8 %22 to i32, !dbg !1728
    #dbg_value(i32 %conv6.2, !1711, !DIExpression(), !1727)
    #dbg_value(i64 8, !1712, !DIExpression(), !1727)
  %cmp7.2 = icmp eq i8 %21, 5, !dbg !1729
  %cond.2 = select i1 %cmp7.2, i32 2, i32 1, !dbg !1730
    #dbg_value(i32 %cond.2, !1713, !DIExpression(), !1727)
  %cmp9.2 = icmp eq i8 %21, 4, !dbg !1731
  %cmp11.2 = icmp eq i8 %21, 7, !dbg !1732
  %add17.2 = add nuw nsw i32 %cond.2, 9, !dbg !1732
  %spec.select89 = select i1 %cmp11.2, i32 12, i32 %add17.2, !dbg !1732
  %cond20.2 = select i1 %cmp9.2, i32 9, i32 %spec.select89, !dbg !1732
    #dbg_value(i32 %cond20.2, !1714, !DIExpression(), !1727)
  %23 = and i8 %21, -2, !dbg !1733
  %24 = icmp eq i8 %23, 4, !dbg !1733
  %cond25.2 = select i1 %24, i32 8, i32 4, !dbg !1734
    #dbg_value(i32 %cond25.2, !1715, !DIExpression(), !1727)
  %cmp26.2 = icmp eq i8 %21, 6, !dbg !1735
  %25 = or i1 %cmp26.2, %cmp9.2, !dbg !1736
  %cond32.2 = select i1 %25, i32 8, i32 4, !dbg !1737
    #dbg_value(i32 %cond32.2, !1716, !DIExpression(), !1727)
    #dbg_value(i64 8, !1703, !DIExpression(), !1717)
  %26 = zext nneg i32 %cond.2 to i64, !dbg !1738
  br label %for.body36.2, !dbg !1738

for.body36.2:                                     ; preds = %for.body36.2, %for.end.1
  %indvars.iv78.2 = phi i64 [ 8, %for.end.1 ], [ %indvars.iv.next79.2, %for.body36.2 ]
    #dbg_value(i64 %indvars.iv78.2, !1703, !DIExpression(), !1717)
  %arrayidx38.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.2, !dbg !1740
  %27 = load i8, ptr %arrayidx38.2, align 1, !dbg !1740
  %conv39.2 = zext i8 %27 to i32, !dbg !1740
  %and.2 = and i32 %conv39.2, 3, !dbg !1743
    #dbg_value(i32 %and.2, !1701, !DIExpression(), !1717)
  %shr.2 = lshr i32 %conv39.2, 2, !dbg !1744
  %and43.2 = and i32 %shr.2, 3, !dbg !1745
    #dbg_value(i32 %and43.2, !1702, !DIExpression(), !1717)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.2, i32 noundef %and.2, i32 noundef %and43.2, i32 noundef %cond25.2, i32 noundef %cond32.2) #7, !dbg !1746
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78.2, %26, !dbg !1747
    #dbg_value(i64 %indvars.iv.next79.2, !1703, !DIExpression(), !1717)
  %28 = trunc nuw i64 %indvars.iv.next79.2 to i32, !dbg !1748
  %cmp34.2 = icmp sgt i32 %cond20.2, %28, !dbg !1748
  br i1 %cmp34.2, label %for.body36.2, label %for.end.2, !dbg !1738, !llvm.loop !1749

for.end.2:                                        ; preds = %for.body36.2
    #dbg_value(i64 3, !1700, !DIExpression(), !1717)
  %arrayidx.3 = getelementptr inbounds i8, ptr %currMB, i64 367, !dbg !1726
  %29 = load i8, ptr %arrayidx.3, align 1, !dbg !1726
    #dbg_value(i8 %29, !1707, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1727)
  %arrayidx5.3 = getelementptr inbounds i8, ptr %currMB, i64 371, !dbg !1728
  %30 = load i8, ptr %arrayidx5.3, align 1, !dbg !1728
  %conv6.3 = sext i8 %30 to i32, !dbg !1728
    #dbg_value(i32 %conv6.3, !1711, !DIExpression(), !1727)
    #dbg_value(i64 12, !1712, !DIExpression(), !1727)
  %cmp7.3 = icmp eq i8 %29, 5, !dbg !1729
  %cond.3 = select i1 %cmp7.3, i32 2, i32 1, !dbg !1730
    #dbg_value(i32 %cond.3, !1713, !DIExpression(), !1727)
  %cmp9.3 = icmp eq i8 %29, 4, !dbg !1731
  %cmp11.3 = icmp eq i8 %29, 7, !dbg !1732
  %add17.3 = add nuw nsw i32 %cond.3, 13, !dbg !1732
  %spec.select90 = select i1 %cmp11.3, i32 16, i32 %add17.3, !dbg !1732
  %cond20.3 = select i1 %cmp9.3, i32 13, i32 %spec.select90, !dbg !1732
    #dbg_value(i32 %cond20.3, !1714, !DIExpression(), !1727)
  %31 = and i8 %29, -2, !dbg !1733
  %32 = icmp eq i8 %31, 4, !dbg !1733
  %cond25.3 = select i1 %32, i32 8, i32 4, !dbg !1734
    #dbg_value(i32 %cond25.3, !1715, !DIExpression(), !1727)
  %cmp26.3 = icmp eq i8 %29, 6, !dbg !1735
  %33 = or i1 %cmp26.3, %cmp9.3, !dbg !1736
  %cond32.3 = select i1 %33, i32 8, i32 4, !dbg !1737
    #dbg_value(i32 %cond32.3, !1716, !DIExpression(), !1727)
    #dbg_value(i64 12, !1703, !DIExpression(), !1717)
  %34 = zext nneg i32 %cond.3 to i64, !dbg !1738
  br label %for.body36.3, !dbg !1738

for.body36.3:                                     ; preds = %for.body36.3, %for.end.2
  %indvars.iv78.3 = phi i64 [ 12, %for.end.2 ], [ %indvars.iv.next79.3, %for.body36.3 ]
    #dbg_value(i64 %indvars.iv78.3, !1703, !DIExpression(), !1717)
  %arrayidx38.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv78.3, !dbg !1740
  %35 = load i8, ptr %arrayidx38.3, align 1, !dbg !1740
  %conv39.3 = zext i8 %35 to i32, !dbg !1740
  %and.3 = and i32 %conv39.3, 3, !dbg !1743
    #dbg_value(i32 %and.3, !1701, !DIExpression(), !1717)
  %shr.3 = lshr i32 %conv39.3, 2, !dbg !1744
  %and43.3 = and i32 %shr.3, 3, !dbg !1745
    #dbg_value(i32 %and43.3, !1702, !DIExpression(), !1717)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv6.3, i32 noundef %and.3, i32 noundef %and43.3, i32 noundef %cond25.3, i32 noundef %cond32.3) #7, !dbg !1746
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78.3, %34, !dbg !1747
    #dbg_value(i64 %indvars.iv.next79.3, !1703, !DIExpression(), !1717)
  %36 = trunc nuw i64 %indvars.iv.next79.3 to i32, !dbg !1748
  %cmp34.3 = icmp sgt i32 %cond20.3, %36, !dbg !1748
  br i1 %cmp34.3, label %for.body36.3, label %for.end.3, !dbg !1738, !llvm.loop !1749

for.end.3:                                        ; preds = %for.body36.3
    #dbg_value(i64 4, !1700, !DIExpression(), !1717)
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %land.ext) #7, !dbg !1751
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1752
  %37 = load i32, ptr %cbp, align 4, !dbg !1752
  %cmp47.not = icmp eq i32 %37, 0, !dbg !1754
  br i1 %cmp47.not, label %if.end, label %if.then, !dbg !1755

if.then:                                          ; preds = %for.end.3
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !1756
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1757
  br label %if.end, !dbg !1758

if.end:                                           ; preds = %if.then, %for.end.3
  ret i32 1, !dbg !1759
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1760 {
entry:
    #dbg_value(ptr %currMB, !1762, !DIExpression(), !1767)
    #dbg_value(i32 %curr_plane, !1763, !DIExpression(), !1767)
    #dbg_value(ptr %dec_picture, !1764, !DIExpression(), !1767)
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1768
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1768
  %type = getelementptr inbounds i8, ptr %0, i64 848776, !dbg !1769
  %1 = load i32, ptr %type, align 8, !dbg !1769
  %cmp = icmp eq i32 %1, 3, !dbg !1770
  %conv = zext i1 %cmp to i32, !dbg !1770
    #dbg_value(i32 %conv, !1765, !DIExpression(), !1767)
  %2 = load ptr, ptr %currMB, align 8, !dbg !1771
    #dbg_value(ptr %2, !1766, !DIExpression(), !1767)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1772
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368, !dbg !1773
  %3 = load i8, ptr %b8pdir, align 8, !dbg !1774
  %conv1 = sext i8 %3 to i32, !dbg !1774
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7, !dbg !1775
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7, !dbg !1776
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1777
  %4 = load i32, ptr %cbp, align 4, !dbg !1777
  %cmp2.not = icmp eq i32 %4, 0, !dbg !1779
  br i1 %cmp2.not, label %if.end, label %if.then, !dbg !1780

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240, !dbg !1781
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1782
  br label %if.end, !dbg !1783

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1784
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1785 {
entry:
    #dbg_value(ptr %currMB, !1787, !DIExpression(), !1792)
    #dbg_value(i32 %curr_plane, !1788, !DIExpression(), !1792)
    #dbg_value(ptr %dec_picture, !1789, !DIExpression(), !1792)
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1793
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1793
  %type = getelementptr inbounds i8, ptr %0, i64 848776, !dbg !1794
  %1 = load i32, ptr %type, align 8, !dbg !1794
  %cmp = icmp eq i32 %1, 3, !dbg !1795
  %conv = zext i1 %cmp to i32, !dbg !1795
    #dbg_value(i32 %conv, !1790, !DIExpression(), !1792)
  %2 = load ptr, ptr %currMB, align 8, !dbg !1796
    #dbg_value(ptr %2, !1791, !DIExpression(), !1792)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1797
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368, !dbg !1798
  %3 = load i8, ptr %b8pdir, align 8, !dbg !1799
  %conv1 = sext i8 %3 to i32, !dbg !1799
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 8) #7, !dbg !1800
  %arrayidx3 = getelementptr inbounds i8, ptr %currMB, i64 370, !dbg !1801
  %4 = load i8, ptr %arrayidx3, align 2, !dbg !1801
  %conv4 = sext i8 %4 to i32, !dbg !1801
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv4, i32 noundef 0, i32 noundef 2, i32 noundef 16, i32 noundef 8) #7, !dbg !1802
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7, !dbg !1803
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1804
  %5 = load i32, ptr %cbp, align 4, !dbg !1804
  %cmp5.not = icmp eq i32 %5, 0, !dbg !1806
  br i1 %cmp5.not, label %if.end, label %if.then, !dbg !1807

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240, !dbg !1808
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1809
  br label %if.end, !dbg !1810

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1811
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x16(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1812 {
entry:
    #dbg_value(ptr %currMB, !1814, !DIExpression(), !1819)
    #dbg_value(i32 %curr_plane, !1815, !DIExpression(), !1819)
    #dbg_value(ptr %dec_picture, !1816, !DIExpression(), !1819)
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1820
  %0 = load ptr, ptr %p_Vid, align 8, !dbg !1820
  %type = getelementptr inbounds i8, ptr %0, i64 848776, !dbg !1821
  %1 = load i32, ptr %type, align 8, !dbg !1821
  %cmp = icmp eq i32 %1, 3, !dbg !1822
  %conv = zext i1 %cmp to i32, !dbg !1822
    #dbg_value(i32 %conv, !1817, !DIExpression(), !1819)
  %2 = load ptr, ptr %currMB, align 8, !dbg !1823
    #dbg_value(ptr %2, !1818, !DIExpression(), !1819)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1824
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368, !dbg !1825
  %3 = load i8, ptr %b8pdir, align 8, !dbg !1826
  %conv1 = sext i8 %3 to i32, !dbg !1826
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7, !dbg !1827
  %arrayidx3 = getelementptr inbounds i8, ptr %currMB, i64 369, !dbg !1828
  %4 = load i8, ptr %arrayidx3, align 1, !dbg !1828
  %conv4 = sext i8 %4 to i32, !dbg !1828
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv4, i32 noundef 2, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7, !dbg !1829
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef %conv) #7, !dbg !1830
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !1831
  %5 = load i32, ptr %cbp, align 4, !dbg !1831
  %cmp5.not = icmp eq i32 %5, 0, !dbg !1833
  br i1 %cmp5.not, label %if.end, label %if.then, !dbg !1834

if.then:                                          ; preds = %entry
  %is_reset_coeff = getelementptr inbounds i8, ptr %2, i64 1240, !dbg !1835
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !1836
  br label %if.end, !dbg !1837

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1838
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8temporal(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !1839 {
entry:
    #dbg_value(ptr %currMB, !1841, !DIExpression(), !1886)
    #dbg_value(i32 %curr_plane, !1842, !DIExpression(), !1886)
    #dbg_value(ptr %currImg, !1843, !DIExpression(), !1886)
    #dbg_value(ptr %dec_picture, !1844, !DIExpression(), !1886)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1887
    #dbg_value(ptr %0, !1854, !DIExpression(), !1886)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1888
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !1888
    #dbg_value(ptr %1, !1855, !DIExpression(), !1886)
    #dbg_value(ptr null, !1856, !DIExpression(), !1886)
    #dbg_value(ptr null, !1859, !DIExpression(), !1886)
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !1889
  %2 = load i16, ptr %list_offset2, align 2, !dbg !1889
  %conv = sext i16 %2 to i64, !dbg !1890
    #dbg_value(i16 %2, !1860, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1886)
  %listX = getelementptr inbounds i8, ptr %0, i64 264, !dbg !1891
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv, !dbg !1892
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1892
    #dbg_value(ptr %3, !1861, !DIExpression(), !1886)
  %add4 = add nsw i64 %conv, 1, !dbg !1893
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4, !dbg !1894
  %4 = load ptr, ptr %arrayidx6, align 8, !dbg !1894
    #dbg_value(ptr %4, !1863, !DIExpression(), !1886)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !1895
    #dbg_value(i32 0, !1853, !DIExpression(), !1886)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mv_info27 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %arrayidx41 = getelementptr inbounds i8, ptr %0, i64 272
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24
  %poc = getelementptr inbounds i8, ptr %dec_picture, i64 4
  %arrayidx62 = getelementptr inbounds i8, ptr %0, i64 304
  %arrayidx68 = getelementptr inbounds i8, ptr %0, i64 288
  %active_sps97 = getelementptr inbounds i8, ptr %1, i64 16
  %field_pic_flag = getelementptr inbounds i8, ptr %0, i64 176
  %structure = getelementptr inbounds i8, ptr %0, i64 184
  %num_ref_idx_active = getelementptr inbounds i8, ptr %0, i64 136
  %listXsize = getelementptr inbounds i8, ptr %0, i64 256
  %arrayidx350 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %conv
  %mvscale = getelementptr inbounds i8, ptr %0, i64 336
    #dbg_value(i32 0, !1853, !DIExpression(), !1886)
  br label %for.body, !dbg !1896

for.body:                                         ; preds = %entry, %for.body598.preheader
  %indvars.iv976 = phi i64 [ 0, %entry ], [ %indvars.iv.next977, %for.body598.preheader ]
  %indvars.iv974 = phi i64 [ 4, %entry ], [ %indvars.iv.next975, %for.body598.preheader ]
  %indvars.iv962 = phi i64 [ 0, %entry ], [ %indvars.iv.next963, %for.body598.preheader ]
    #dbg_value(i64 %indvars.iv976, !1853, !DIExpression(), !1886)
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv976, !dbg !1897
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !1897
  %conv10 = sext i8 %5 to i32, !dbg !1897
    #dbg_value(i32 %conv10, !1864, !DIExpression(), !1898)
    #dbg_value(i64 %indvars.iv976, !1868, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !1898)
    #dbg_value(i64 %indvars.iv976, !1869, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !1898)
    #dbg_value(i64 %indvars.iv976, !1847, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !1886)
    #dbg_value(i64 %indvars.iv976, !1847, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !1886)
  br label %for.body16, !dbg !1899

for.body16:                                       ; preds = %for.body, %if.end577
  %indvars.iv964 = phi i64 [ %indvars.iv962, %for.body ], [ %indvars.iv.next965, %if.end577 ]
    #dbg_value(i64 %indvars.iv964, !1847, !DIExpression(), !1886)
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv964, !dbg !1900
  %6 = load i8, ptr %arrayidx18, align 1, !dbg !1900
  %conv19 = zext i8 %6 to i32, !dbg !1900
  %and = and i32 %conv19, 3, !dbg !1901
    #dbg_value(i32 %and, !1848, !DIExpression(), !1886)
  %shr = lshr i32 %conv19, 2, !dbg !1902
  %and23 = and i32 %shr, 3, !dbg !1903
    #dbg_value(i32 %and23, !1849, !DIExpression(), !1886)
  %7 = load i32, ptr %block_x, align 8, !dbg !1904
  %add24 = add nsw i32 %and, %7, !dbg !1905
    #dbg_value(i32 %add24, !1850, !DIExpression(), !1886)
  %8 = load i32, ptr %block_y, align 4, !dbg !1906
  %add25 = add nsw i32 %and23, %8, !dbg !1907
    #dbg_value(i32 %add25, !1851, !DIExpression(), !1886)
  %9 = load i32, ptr %block_y_aff, align 8, !dbg !1908
  %add26 = add nsw i32 %9, %and23, !dbg !1909
    #dbg_value(i32 %add26, !1852, !DIExpression(), !1886)
  %10 = load ptr, ptr %mv_info27, align 8, !dbg !1910
  %idxprom28 = sext i32 %add25 to i64, !dbg !1911
  %arrayidx29 = getelementptr inbounds ptr, ptr %10, i64 %idxprom28, !dbg !1911
  %11 = load ptr, ptr %arrayidx29, align 8, !dbg !1911
  %idxprom30 = sext i32 %add24 to i64, !dbg !1911
  %arrayidx31 = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom30, !dbg !1911
    #dbg_value(ptr %arrayidx31, !1856, !DIExpression(), !1886)
  %12 = load ptr, ptr %4, align 8, !dbg !1912
  %mv_info33 = getelementptr inbounds i8, ptr %12, i64 152, !dbg !1913
  %13 = load ptr, ptr %mv_info33, align 8, !dbg !1913
    #dbg_value(i32 %add26, !1914, !DIExpression(), !1917)
  %and1.i = and i32 %add26, -2, !dbg !1919
  %and.i = lshr i32 %add26, 1, !dbg !1919
  %and.lobit.i = and i32 %and.i, 1, !dbg !1919
  %cond.i = or disjoint i32 %and.lobit.i, %and1.i, !dbg !1919
  %idxprom34 = sext i32 %cond.i to i64, !dbg !1912
  %arrayidx35 = getelementptr inbounds ptr, ptr %13, i64 %idxprom34, !dbg !1912
  %14 = load ptr, ptr %arrayidx35, align 8, !dbg !1912
    #dbg_value(i32 %add24, !1914, !DIExpression(), !1920)
  %and1.i875 = and i32 %add24, -2, !dbg !1922
  %and.i876 = lshr i32 %add24, 1, !dbg !1922
  %and.lobit.i877 = and i32 %and.i876, 1, !dbg !1922
  %cond.i878 = or disjoint i32 %and.lobit.i877, %and1.i875, !dbg !1922
  %idxprom37 = sext i32 %cond.i878 to i64, !dbg !1912
  %arrayidx38 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom37, !dbg !1912
    #dbg_value(ptr %arrayidx38, !1859, !DIExpression(), !1886)
  %15 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !1923
  %tobool.not = icmp eq i32 %15, 0, !dbg !1925
  br i1 %tobool.not, label %if.else125, label %if.then, !dbg !1926

if.then:                                          ; preds = %for.body16
  %16 = load i32, ptr %mb_field, align 8, !dbg !1927
  %tobool39.not = icmp eq i32 %16, 0, !dbg !1930
  br i1 %tobool39.not, label %land.lhs.true, label %if.end276, !dbg !1931

land.lhs.true:                                    ; preds = %if.then
  %17 = load ptr, ptr %arrayidx41, align 8, !dbg !1932
  %18 = load ptr, ptr %17, align 8, !dbg !1932
  %iCodingType = getelementptr inbounds i8, ptr %18, i64 388, !dbg !1933
  %19 = load i32, ptr %iCodingType, align 4, !dbg !1933
  switch i32 %19, label %if.end276 [
    i32 3, label %land.lhs.true45
    i32 1, label %if.then60
  ], !dbg !1934

land.lhs.true45:                                  ; preds = %land.lhs.true
  %motion = getelementptr inbounds i8, ptr %18, i64 184, !dbg !1935
  %20 = load ptr, ptr %motion, align 8, !dbg !1936
  %21 = load i32, ptr %mbAddrX, align 8, !dbg !1937
  %idxprom50 = sext i32 %21 to i64, !dbg !1938
  %arrayidx51 = getelementptr inbounds i8, ptr %20, i64 %idxprom50, !dbg !1938
  %22 = load i8, ptr %arrayidx51, align 1, !dbg !1938
  %tobool53.not = icmp eq i8 %22, 0, !dbg !1938
  br i1 %tobool53.not, label %if.end276, label %if.then60, !dbg !1939

if.then60:                                        ; preds = %land.lhs.true, %land.lhs.true45
  %23 = load i32, ptr %poc, align 4, !dbg !1940
  %24 = load ptr, ptr %arrayidx62, align 8, !dbg !1943
  %25 = load ptr, ptr %24, align 8, !dbg !1943
  %poc64 = getelementptr inbounds i8, ptr %25, i64 4, !dbg !1944
  %26 = load i32, ptr %poc64, align 4, !dbg !1944
  %sub = sub nsw i32 %23, %26, !dbg !1945
    #dbg_value(i32 %sub, !111, !DIExpression(), !1946)
    #dbg_value(i32 %sub, !112, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1946)
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !1948
  %27 = load ptr, ptr %arrayidx68, align 8, !dbg !1949
  %28 = load ptr, ptr %27, align 8, !dbg !1949
  %poc70 = getelementptr inbounds i8, ptr %28, i64 4, !dbg !1950
  %29 = load i32, ptr %poc70, align 4, !dbg !1950
  %sub71 = sub nsw i32 %23, %29, !dbg !1951
    #dbg_value(i32 %sub71, !111, !DIExpression(), !1952)
    #dbg_value(i32 %sub71, !112, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1952)
  %sub.i879 = tail call i32 @llvm.abs.i32(i32 %sub71, i1 true), !dbg !1954
  %cmp73 = icmp ugt i32 %sub.i, %sub.i879, !dbg !1955
  %30 = load ptr, ptr %active_sps97, align 8, !dbg !1956
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %30, i64 3144, !dbg !1956
  %31 = load i32, ptr %direct_8x8_inference_flag, align 4, !dbg !1956
  %tobool76.not = icmp eq i32 %31, 0, !dbg !1956
  %shr92 = ashr i32 %add26, 1, !dbg !1956
  %idxprom93 = sext i32 %shr92 to i64, !dbg !1956
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !1957

if.then75:                                        ; preds = %if.then60
  %mv_info91 = getelementptr inbounds i8, ptr %28, i64 152, !dbg !1958
  %32 = load ptr, ptr %mv_info91, align 8, !dbg !1958
  %arrayidx94 = getelementptr inbounds ptr, ptr %32, i64 %idxprom93, !dbg !1958
  %33 = load ptr, ptr %arrayidx94, align 8, !dbg !1958
  br i1 %tobool76.not, label %cond.false, label %cond.true, !dbg !1960

cond.true:                                        ; preds = %if.then75
    #dbg_value(i32 %add26, !1914, !DIExpression(), !1961)
    #dbg_value(i32 %add24, !1914, !DIExpression(), !1963)
  %arrayidx87 = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom37, !dbg !1965
  br label %if.end276, !dbg !1960

cond.false:                                       ; preds = %if.then75
  %arrayidx96 = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom30, !dbg !1966
  br label %if.end276, !dbg !1960

if.else:                                          ; preds = %if.then60
  %mv_info116 = getelementptr inbounds i8, ptr %25, i64 152, !dbg !1967
  %34 = load ptr, ptr %mv_info116, align 8, !dbg !1967
  %arrayidx119 = getelementptr inbounds ptr, ptr %34, i64 %idxprom93, !dbg !1967
  %35 = load ptr, ptr %arrayidx119, align 8, !dbg !1967
  br i1 %tobool76.not, label %cond.false112, label %cond.true100, !dbg !1969

cond.true100:                                     ; preds = %if.else
    #dbg_value(i32 %add26, !1914, !DIExpression(), !1970)
    #dbg_value(i32 %add24, !1914, !DIExpression(), !1972)
  %arrayidx111 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom37, !dbg !1974
  br label %if.end276, !dbg !1969

cond.false112:                                    ; preds = %if.else
  %arrayidx121 = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom30, !dbg !1975
  br label %if.end276, !dbg !1969

if.else125:                                       ; preds = %for.body16
  %36 = load ptr, ptr %active_sps97, align 8, !dbg !1976
  %frame_mbs_only_flag = getelementptr inbounds i8, ptr %36, i64 3136, !dbg !1978
  %37 = load i32, ptr %frame_mbs_only_flag, align 4, !dbg !1978
  %tobool127.not = icmp eq i32 %37, 0, !dbg !1979
  br i1 %tobool127.not, label %land.lhs.true128, label %if.end276, !dbg !1980

land.lhs.true128:                                 ; preds = %if.else125
  %38 = load i32, ptr %field_pic_flag, align 8, !dbg !1981
  %tobool129.not = icmp eq i32 %38, 0, !dbg !1982
  br i1 %tobool129.not, label %land.lhs.true130, label %land.lhs.true210, !dbg !1983

land.lhs.true130:                                 ; preds = %land.lhs.true128
  %39 = load ptr, ptr %arrayidx41, align 8, !dbg !1984
  %40 = load ptr, ptr %39, align 8, !dbg !1984
  %iCodingType134 = getelementptr inbounds i8, ptr %40, i64 388, !dbg !1985
  %41 = load i32, ptr %iCodingType134, align 4, !dbg !1985
  %cmp135.not = icmp eq i32 %41, 0, !dbg !1986
  br i1 %cmp135.not, label %if.end276, label %if.then137, !dbg !1987

if.then137:                                       ; preds = %land.lhs.true130
  %42 = load i32, ptr %poc, align 4, !dbg !1988
  %bottom_field = getelementptr inbounds i8, ptr %12, i64 232, !dbg !1991
  %43 = load ptr, ptr %bottom_field, align 8, !dbg !1991
  %poc140 = getelementptr inbounds i8, ptr %43, i64 4, !dbg !1992
  %44 = load i32, ptr %poc140, align 4, !dbg !1992
  %sub141 = sub nsw i32 %42, %44, !dbg !1993
    #dbg_value(i32 %sub141, !111, !DIExpression(), !1994)
    #dbg_value(i32 %sub141, !112, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1994)
  %sub.i896 = tail call i32 @llvm.abs.i32(i32 %sub141, i1 true), !dbg !1996
  %top_field = getelementptr inbounds i8, ptr %12, i64 224, !dbg !1997
  %45 = load ptr, ptr %top_field, align 8, !dbg !1997
  %poc145 = getelementptr inbounds i8, ptr %45, i64 4, !dbg !1998
  %46 = load i32, ptr %poc145, align 4, !dbg !1998
  %sub146 = sub nsw i32 %42, %46, !dbg !1999
    #dbg_value(i32 %sub146, !111, !DIExpression(), !2000)
    #dbg_value(i32 %sub146, !112, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2000)
  %sub.i897 = tail call i32 @llvm.abs.i32(i32 %sub146, i1 true), !dbg !2002
  %cmp148 = icmp ugt i32 %sub.i896, %sub.i897, !dbg !2003
  %direct_8x8_inference_flag152 = getelementptr inbounds i8, ptr %36, i64 3144, !dbg !2004
  %47 = load i32, ptr %direct_8x8_inference_flag152, align 4, !dbg !2004
  %tobool153.not = icmp eq i32 %47, 0, !dbg !2004
  %shr169 = ashr i32 %add26, 1, !dbg !2004
  %idxprom170 = sext i32 %shr169 to i64, !dbg !2004
  br i1 %cmp148, label %if.then150, label %if.else176, !dbg !2005

if.then150:                                       ; preds = %if.then137
  %mv_info168 = getelementptr inbounds i8, ptr %45, i64 152, !dbg !2006
  %48 = load ptr, ptr %mv_info168, align 8, !dbg !2006
  %arrayidx171 = getelementptr inbounds ptr, ptr %48, i64 %idxprom170, !dbg !2006
  %49 = load ptr, ptr %arrayidx171, align 8, !dbg !2006
  br i1 %tobool153.not, label %cond.false165, label %cond.true154, !dbg !2008

cond.true154:                                     ; preds = %if.then150
    #dbg_value(i32 %add26, !1914, !DIExpression(), !2009)
    #dbg_value(i32 %add24, !1914, !DIExpression(), !2011)
  %arrayidx164 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom37, !dbg !2013
  br label %if.end276, !dbg !2008

cond.false165:                                    ; preds = %if.then150
  %arrayidx173 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom30, !dbg !2014
  br label %if.end276, !dbg !2008

if.else176:                                       ; preds = %if.then137
  %mv_info194 = getelementptr inbounds i8, ptr %43, i64 152, !dbg !2015
  %50 = load ptr, ptr %mv_info194, align 8, !dbg !2015
  %arrayidx197 = getelementptr inbounds ptr, ptr %50, i64 %idxprom170, !dbg !2015
  %51 = load ptr, ptr %arrayidx197, align 8, !dbg !2015
  br i1 %tobool153.not, label %cond.false191, label %cond.true180, !dbg !2017

cond.true180:                                     ; preds = %if.else176
    #dbg_value(i32 %add26, !1914, !DIExpression(), !2018)
    #dbg_value(i32 %add24, !1914, !DIExpression(), !2020)
  %arrayidx190 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom37, !dbg !2022
  br label %if.end276, !dbg !2017

cond.false191:                                    ; preds = %if.else176
  %arrayidx199 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %idxprom30, !dbg !2023
  br label %if.end276, !dbg !2017

land.lhs.true210:                                 ; preds = %land.lhs.true128
  %52 = load i32, ptr %structure, align 8, !dbg !2024
  %53 = load i32, ptr %12, align 8, !dbg !2026
  %cmp213.not = icmp eq i32 %52, %53, !dbg !2027
  br i1 %cmp213.not, label %if.end276, label %land.lhs.true215, !dbg !2028

land.lhs.true215:                                 ; preds = %land.lhs.true210
  %coded_frame = getelementptr inbounds i8, ptr %12, i64 96, !dbg !2029
  %54 = load i32, ptr %coded_frame, align 8, !dbg !2029
  %tobool217.not = icmp eq i32 %54, 0, !dbg !2030
  br i1 %tobool217.not, label %if.end276, label %if.then218, !dbg !2031

if.then218:                                       ; preds = %land.lhs.true215
  %cmp220 = icmp eq i32 %52, 1, !dbg !2032
  %direct_8x8_inference_flag224 = getelementptr inbounds i8, ptr %36, i64 3144, !dbg !2035
  %55 = load i32, ptr %direct_8x8_inference_flag224, align 4, !dbg !2035
  %tobool225.not = icmp eq i32 %55, 0, !dbg !2035
  %frame238 = getelementptr inbounds i8, ptr %12, i64 240, !dbg !2035
  %56 = load ptr, ptr %frame238, align 8, !dbg !2035
  br i1 %cmp220, label %if.then222, label %if.else247, !dbg !2036

if.then222:                                       ; preds = %if.then218
  %top_field239 = getelementptr inbounds i8, ptr %56, i64 224, !dbg !2037
  %57 = load ptr, ptr %top_field239, align 8, !dbg !2037
  %mv_info240 = getelementptr inbounds i8, ptr %57, i64 152, !dbg !2037
  %58 = load ptr, ptr %mv_info240, align 8, !dbg !2037
  br i1 %tobool225.not, label %cond.false236, label %cond.true226, !dbg !2039

cond.true226:                                     ; preds = %if.then222
    #dbg_value(i32 %add26, !1914, !DIExpression(), !2040)
  %arrayidx232 = getelementptr inbounds ptr, ptr %58, i64 %idxprom34, !dbg !2042
  %59 = load ptr, ptr %arrayidx232, align 8, !dbg !2042
    #dbg_value(i32 %add24, !1914, !DIExpression(), !2043)
  %arrayidx235 = getelementptr inbounds %struct.pic_motion_params, ptr %59, i64 %idxprom37, !dbg !2042
  br label %if.end276, !dbg !2039

cond.false236:                                    ; preds = %if.then222
  %idxprom241 = sext i32 %add26 to i64, !dbg !2045
  %arrayidx242 = getelementptr inbounds ptr, ptr %58, i64 %idxprom241, !dbg !2045
  %60 = load ptr, ptr %arrayidx242, align 8, !dbg !2045
  %arrayidx244 = getelementptr inbounds %struct.pic_motion_params, ptr %60, i64 %idxprom30, !dbg !2045
  br label %if.end276, !dbg !2039

if.else247:                                       ; preds = %if.then218
  %bottom_field265 = getelementptr inbounds i8, ptr %56, i64 232, !dbg !2046
  %61 = load ptr, ptr %bottom_field265, align 8, !dbg !2046
  %mv_info266 = getelementptr inbounds i8, ptr %61, i64 152, !dbg !2046
  %62 = load ptr, ptr %mv_info266, align 8, !dbg !2046
  br i1 %tobool225.not, label %cond.false262, label %cond.true251, !dbg !2048

cond.true251:                                     ; preds = %if.else247
    #dbg_value(i32 %add26, !1914, !DIExpression(), !2049)
  %arrayidx258 = getelementptr inbounds ptr, ptr %62, i64 %idxprom34, !dbg !2051
  %63 = load ptr, ptr %arrayidx258, align 8, !dbg !2051
    #dbg_value(i32 %add24, !1914, !DIExpression(), !2052)
  %arrayidx261 = getelementptr inbounds %struct.pic_motion_params, ptr %63, i64 %idxprom37, !dbg !2051
  br label %if.end276, !dbg !2048

cond.false262:                                    ; preds = %if.else247
  %idxprom267 = sext i32 %add26 to i64, !dbg !2054
  %arrayidx268 = getelementptr inbounds ptr, ptr %62, i64 %idxprom267, !dbg !2054
  %64 = load ptr, ptr %arrayidx268, align 8, !dbg !2054
  %arrayidx270 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %idxprom30, !dbg !2054
  br label %if.end276, !dbg !2048

if.end276:                                        ; preds = %land.lhs.true130, %land.lhs.true, %land.lhs.true45, %if.else125, %cond.true251, %cond.false262, %cond.true226, %cond.false236, %cond.true180, %cond.false191, %cond.true154, %cond.false165, %cond.true100, %cond.false112, %cond.true, %cond.false, %land.lhs.true215, %land.lhs.true210, %if.then
  %colocated.0 = phi ptr [ %arrayidx38, %if.then ], [ %arrayidx38, %land.lhs.true215 ], [ %arrayidx38, %land.lhs.true210 ], [ %arrayidx87, %cond.true ], [ %arrayidx96, %cond.false ], [ %arrayidx111, %cond.true100 ], [ %arrayidx121, %cond.false112 ], [ %arrayidx164, %cond.true154 ], [ %arrayidx173, %cond.false165 ], [ %arrayidx190, %cond.true180 ], [ %arrayidx199, %cond.false191 ], [ %arrayidx235, %cond.true226 ], [ %arrayidx244, %cond.false236 ], [ %arrayidx261, %cond.true251 ], [ %arrayidx270, %cond.false262 ], [ %arrayidx38, %if.else125 ], [ %arrayidx38, %land.lhs.true45 ], [ %arrayidx38, %land.lhs.true ], [ %arrayidx38, %land.lhs.true130 ], !dbg !2055
    #dbg_value(ptr %colocated.0, !1859, !DIExpression(), !1886)
  %ref_idx277 = getelementptr inbounds i8, ptr %colocated.0, i64 24, !dbg !2056
  %65 = load i8, ptr %ref_idx277, align 8, !dbg !2057
  %cmp280 = icmp eq i8 %65, -1, !dbg !2058
  %idxprom284 = zext i1 %cmp280 to i64, !dbg !2059
    #dbg_value(i64 %idxprom284, !1846, !DIExpression(), !1886)
  %arrayidx285 = getelementptr inbounds [2 x i8], ptr %ref_idx277, i64 0, i64 %idxprom284, !dbg !2059
  %66 = load i8, ptr %arrayidx285, align 1, !dbg !2059
    #dbg_value(i8 %66, !1845, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1886)
  %cmp288 = icmp eq i8 %66, -1, !dbg !2060
  br i1 %cmp288, label %if.then290, label %if.else298, !dbg !2061

if.then290:                                       ; preds = %if.end276
  %mv = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2062
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv, i8 0, i64 10, i1 false), !dbg !2064
  br label %if.end577, !dbg !2065

if.else298:                                       ; preds = %if.end276
    #dbg_value(i32 0, !1870, !DIExpression(), !2066)
  br i1 %tobool.not, label %land.lhs.true323, label %land.lhs.true301, !dbg !2067

land.lhs.true301:                                 ; preds = %if.else298
  %67 = load i32, ptr %mb_field, align 8, !dbg !2069
  %tobool303.not = icmp eq i32 %67, 0, !dbg !2070
  %arrayidx316 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2071
  %68 = load ptr, ptr %arrayidx316, align 8, !dbg !2071
  %69 = load i32, ptr %68, align 8, !dbg !2071
  %cmp318.not = icmp eq i32 %69, 0, !dbg !2071
  br i1 %tobool303.not, label %land.lhs.true313, label %land.lhs.true304, !dbg !2072

land.lhs.true304:                                 ; preds = %land.lhs.true301
  br i1 %cmp318.not, label %if.then345, label %if.else397, !dbg !2073

land.lhs.true313:                                 ; preds = %land.lhs.true301
  br i1 %cmp318.not, label %if.else397, label %if.then345, !dbg !2074

land.lhs.true323:                                 ; preds = %if.else298
  %70 = load i32, ptr %field_pic_flag, align 8, !dbg !2075
  switch i32 %70, label %if.else397 [
    i32 0, label %land.lhs.true327
    i32 1, label %land.lhs.true338
  ], !dbg !2076

land.lhs.true327:                                 ; preds = %land.lhs.true323
  %arrayidx330 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2077
  %71 = load ptr, ptr %arrayidx330, align 8, !dbg !2077
  %72 = load i32, ptr %71, align 8, !dbg !2078
  %cmp332.not = icmp eq i32 %72, 0, !dbg !2079
  br i1 %cmp332.not, label %if.else397, label %if.then345, !dbg !2080

land.lhs.true338:                                 ; preds = %land.lhs.true323
  %arrayidx341 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2081
  %73 = load ptr, ptr %arrayidx341, align 8, !dbg !2081
  %74 = load i32, ptr %73, align 8, !dbg !2082
  %cmp343 = icmp eq i32 %74, 0, !dbg !2083
  br i1 %cmp343, label %if.then345, label %if.else397, !dbg !2084

if.then345:                                       ; preds = %land.lhs.true338, %land.lhs.true327, %land.lhs.true313, %land.lhs.true304
  %75 = phi ptr [ %73, %land.lhs.true338 ], [ %71, %land.lhs.true327 ], [ %68, %land.lhs.true313 ], [ %68, %land.lhs.true304 ]
    #dbg_value(i32 0, !1876, !DIExpression(), !2066)
  %76 = load i32, ptr %num_ref_idx_active, align 8
  %77 = load i8, ptr %arrayidx350, align 1
  %conv351 = sext i8 %77 to i32
  %cond.i930 = tail call noundef i32 @llvm.smin.i32(i32 %76, i32 %conv351)
    #dbg_value(i32 0, !1870, !DIExpression(), !2066)
  %cmp353944 = icmp sgt i32 %cond.i930, 0, !dbg !2085
  br i1 %cmp353944, label %for.body355.lr.ph, label %if.then430, !dbg !2089

for.body355.lr.ph:                                ; preds = %if.then345
  %78 = load ptr, ptr %arrayidx, align 8
  %wide.trip.count = zext nneg i32 %cond.i930 to i64, !dbg !2085
  br label %for.body355, !dbg !2089

for.body355:                                      ; preds = %for.body355.lr.ph, %if.else395
  %indvars.iv = phi i64 [ 0, %for.body355.lr.ph ], [ %indvars.iv.next, %if.else395 ]
    #dbg_value(i64 %indvars.iv, !1876, !DIExpression(), !2066)
  %arrayidx361 = getelementptr inbounds ptr, ptr %78, i64 %indvars.iv, !dbg !2090
  %79 = load ptr, ptr %arrayidx361, align 8, !dbg !2090
  %top_field362 = getelementptr inbounds i8, ptr %79, i64 224, !dbg !2093
  %80 = load ptr, ptr %top_field362, align 8, !dbg !2093
  %cmp366 = icmp eq ptr %80, %75, !dbg !2094
  br i1 %cmp366, label %if.then430.loopexit986, label %lor.lhs.false368, !dbg !2095

lor.lhs.false368:                                 ; preds = %for.body355
  %bottom_field375 = getelementptr inbounds i8, ptr %79, i64 232, !dbg !2096
  %81 = load ptr, ptr %bottom_field375, align 8, !dbg !2096
  %cmp379 = icmp eq ptr %81, %75, !dbg !2097
  br i1 %cmp379, label %if.then430.loopexit986, label %lor.lhs.false381, !dbg !2098

lor.lhs.false381:                                 ; preds = %lor.lhs.false368
  %frame388 = getelementptr inbounds i8, ptr %79, i64 240, !dbg !2099
  %82 = load ptr, ptr %frame388, align 8, !dbg !2099
  %cmp392 = icmp eq ptr %82, %75, !dbg !2100
  br i1 %cmp392, label %if.then430.loopexit986, label %if.else395, !dbg !2101

if.else395:                                       ; preds = %lor.lhs.false381
    #dbg_value(i32 -135792468, !1870, !DIExpression(), !2066)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2102
    #dbg_value(i64 %indvars.iv.next, !1876, !DIExpression(), !2066)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2085
  br i1 %exitcond.not, label %if.then574, label %for.body355, !dbg !2089, !llvm.loop !2103

if.else397:                                       ; preds = %land.lhs.true323, %land.lhs.true327, %land.lhs.true313, %land.lhs.true304, %land.lhs.true338
    #dbg_value(i32 0, !1876, !DIExpression(), !2066)
  %83 = load i32, ptr %num_ref_idx_active, align 8
  %84 = load i8, ptr %arrayidx350, align 1
  %conv405 = sext i8 %84 to i32
  %cond.i931 = tail call noundef i32 @llvm.smin.i32(i32 %83, i32 %conv405)
    #dbg_value(i32 0, !1870, !DIExpression(), !2066)
  %cmp407946 = icmp sgt i32 %cond.i931, 0, !dbg !2105
  br i1 %cmp407946, label %for.body409.lr.ph, label %if.then430, !dbg !2109

for.body409.lr.ph:                                ; preds = %if.else397
  %85 = load ptr, ptr %arrayidx, align 8
  %arrayidx418 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284
  %86 = load ptr, ptr %arrayidx418, align 8
  %wide.trip.count960 = zext nneg i32 %cond.i931 to i64, !dbg !2105
  br label %for.body409, !dbg !2109

for.body409:                                      ; preds = %for.body409.lr.ph, %if.else422
  %indvars.iv957 = phi i64 [ 0, %for.body409.lr.ph ], [ %indvars.iv.next958, %if.else422 ]
    #dbg_value(i64 %indvars.iv957, !1876, !DIExpression(), !2066)
  %arrayidx415 = getelementptr inbounds ptr, ptr %85, i64 %indvars.iv957, !dbg !2110
  %87 = load ptr, ptr %arrayidx415, align 8, !dbg !2110
  %cmp419 = icmp eq ptr %87, %86, !dbg !2113
  br i1 %cmp419, label %if.then430.loopexit, label %if.else422, !dbg !2114

if.else422:                                       ; preds = %for.body409
    #dbg_value(i32 -135792468, !1870, !DIExpression(), !2066)
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1, !dbg !2115
    #dbg_value(i64 %indvars.iv.next958, !1876, !DIExpression(), !2066)
  %exitcond961.not = icmp eq i64 %indvars.iv.next958, %wide.trip.count960, !dbg !2105
  br i1 %exitcond961.not, label %if.then574, label %for.body409, !dbg !2109, !llvm.loop !2116

if.then430.loopexit:                              ; preds = %for.body409
  %88 = trunc nuw nsw i64 %indvars.iv957 to i32, !dbg !2118
  br label %if.then430, !dbg !2118

if.then430.loopexit986:                           ; preds = %lor.lhs.false381, %lor.lhs.false368, %for.body355
  %89 = trunc nuw nsw i64 %indvars.iv to i32
  br label %if.then430, !dbg !2118

if.then430:                                       ; preds = %if.then430.loopexit986, %if.else397, %if.then345, %if.then430.loopexit
  %mapped_idx.2936 = phi i32 [ %88, %if.then430.loopexit ], [ 0, %if.else397 ], [ 0, %if.then345 ], [ %89, %if.then430.loopexit986 ]
  %idxprom434 = sext i32 %mapped_idx.2936 to i64, !dbg !2118
  %arrayidx435 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %conv, i64 %idxprom434, !dbg !2118
  %90 = load i32, ptr %arrayidx435, align 4, !dbg !2118
    #dbg_value(i32 %90, !1877, !DIExpression(), !2119)
  %mv436 = getelementptr inbounds i8, ptr %colocated.0, i64 16, !dbg !2120
  %arrayidx438 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv436, i64 0, i64 %idxprom284, !dbg !2121
  %mv_y439 = getelementptr inbounds i8, ptr %arrayidx438, i64 2, !dbg !2122
  %91 = load i16, ptr %mv_y439, align 2, !dbg !2122
  %conv440 = sext i16 %91 to i32, !dbg !2121
    #dbg_value(i32 %conv440, !1880, !DIExpression(), !2119)
  br i1 %tobool.not, label %land.lhs.true456, label %land.lhs.true443, !dbg !2123

land.lhs.true443:                                 ; preds = %if.then430
  %92 = load i32, ptr %mb_field, align 8, !dbg !2125
  %tobool445.not = icmp eq i32 %92, 0, !dbg !2126
  %arrayidx449 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2127
  %93 = load ptr, ptr %arrayidx449, align 8, !dbg !2127
  %94 = load i32, ptr %93, align 8, !dbg !2127
  %cmp451.not = icmp eq i32 %94, 0, !dbg !2127
  br i1 %tobool445.not, label %land.lhs.true446, label %land.lhs.true474, !dbg !2128

land.lhs.true446:                                 ; preds = %land.lhs.true443
  br i1 %cmp451.not, label %if.end497, label %if.then467, !dbg !2129

land.lhs.true456:                                 ; preds = %if.then430
  %95 = load i32, ptr %field_pic_flag, align 8, !dbg !2130
  switch i32 %95, label %if.end497 [
    i32 0, label %land.lhs.true460
    i32 1, label %land.lhs.true488
  ], !dbg !2131

land.lhs.true460:                                 ; preds = %land.lhs.true456
  %arrayidx463 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2132
  %96 = load ptr, ptr %arrayidx463, align 8, !dbg !2132
  %97 = load i32, ptr %96, align 8, !dbg !2133
  %cmp465.not = icmp eq i32 %97, 0, !dbg !2134
  br i1 %cmp465.not, label %if.end497, label %if.then467, !dbg !2135

if.then467:                                       ; preds = %land.lhs.true460, %land.lhs.true446
  %mul = shl nsw i32 %conv440, 1, !dbg !2136
    #dbg_value(i32 %mul, !1880, !DIExpression(), !2119)
  br label %if.end497, !dbg !2137

land.lhs.true474:                                 ; preds = %land.lhs.true443
  br i1 %cmp451.not, label %if.then495, label %if.end497, !dbg !2138

land.lhs.true488:                                 ; preds = %land.lhs.true456
  %arrayidx491 = getelementptr inbounds [2 x ptr], ptr %colocated.0, i64 0, i64 %idxprom284, !dbg !2140
  %98 = load ptr, ptr %arrayidx491, align 8, !dbg !2140
  %99 = load i32, ptr %98, align 8, !dbg !2141
  %cmp493 = icmp eq i32 %99, 0, !dbg !2142
  br i1 %cmp493, label %if.then495, label %if.end497, !dbg !2143

if.then495:                                       ; preds = %land.lhs.true488, %land.lhs.true474
  %div937 = sdiv i16 %91, 2, !dbg !2144
  %div.sext = sext i16 %div937 to i32, !dbg !2144
    #dbg_value(i32 %div.sext, !1880, !DIExpression(), !2119)
  br label %if.end497, !dbg !2145

if.end497:                                        ; preds = %land.lhs.true456, %land.lhs.true460, %land.lhs.true446, %land.lhs.true474, %land.lhs.true488, %if.then495, %if.then467
  %mv_y.0 = phi i32 [ %div.sext, %if.then495 ], [ %conv440, %land.lhs.true488 ], [ %mul, %if.then467 ], [ %conv440, %land.lhs.true474 ], [ %conv440, %land.lhs.true446 ], [ %conv440, %land.lhs.true460 ], [ %conv440, %land.lhs.true456 ], !dbg !2119
    #dbg_value(i32 %mv_y.0, !1880, !DIExpression(), !2119)
  %cmp498 = icmp eq i32 %90, 9999, !dbg !2146
  br i1 %cmp498, label %if.then509, label %lor.lhs.false500, !dbg !2148

lor.lhs.false500:                                 ; preds = %if.end497
  %100 = load ptr, ptr %arrayidx, align 8, !dbg !2149
  %arrayidx506 = getelementptr inbounds ptr, ptr %100, i64 %idxprom434, !dbg !2149
  %101 = load ptr, ptr %arrayidx506, align 8, !dbg !2149
  %is_long_term = getelementptr inbounds i8, ptr %101, i64 40, !dbg !2150
  %102 = load i8, ptr %is_long_term, align 8, !dbg !2150
  %tobool508.not = icmp eq i8 %102, 0, !dbg !2149
  br i1 %tobool508.not, label %if.else522, label %if.then509, !dbg !2151

if.then509:                                       ; preds = %lor.lhs.false500, %if.end497
  %103 = load i16, ptr %arrayidx438, align 4, !dbg !2152
  %mv513 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2154
  store i16 %103, ptr %mv513, align 8, !dbg !2155
  %conv516 = trunc i32 %mv_y.0 to i16, !dbg !2156
  %mv_y519 = getelementptr inbounds i8, ptr %arrayidx31, i64 18, !dbg !2157
  store i16 %conv516, ptr %mv_y519, align 2, !dbg !2158
  %arrayidx521 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2159
  store i32 0, ptr %arrayidx521, align 4, !dbg !2160
  br label %if.end565, !dbg !2161

if.else522:                                       ; preds = %lor.lhs.false500
  %104 = load i16, ptr %arrayidx438, align 4, !dbg !2162
  %conv527 = sext i16 %104 to i32, !dbg !2164
  %mul528 = mul nsw i32 %90, %conv527, !dbg !2165
  %add529 = add nsw i32 %mul528, 128, !dbg !2166
  %shr530 = lshr i32 %add529, 8, !dbg !2167
  %conv531 = trunc i32 %shr530 to i16, !dbg !2168
  %mv532 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2169
  store i16 %conv531, ptr %mv532, align 8, !dbg !2170
  %mul535 = mul nsw i32 %mv_y.0, %90, !dbg !2171
  %add536 = add nsw i32 %mul535, 128, !dbg !2172
  %shr537 = lshr i32 %add536, 8, !dbg !2173
  %conv538 = trunc i32 %shr537 to i16, !dbg !2174
  %mv_y541 = getelementptr inbounds i8, ptr %arrayidx31, i64 18, !dbg !2175
  store i16 %conv538, ptr %mv_y541, align 2, !dbg !2176
  %105 = load i16, ptr %arrayidx438, align 4, !dbg !2177
  %sub551 = sub i16 %conv531, %105, !dbg !2178
  %arrayidx554 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2179
  store i16 %sub551, ptr %arrayidx554, align 4, !dbg !2180
  %sub560 = sub i32 %shr537, %mv_y.0, !dbg !2181
  %conv561 = trunc i32 %sub560 to i16, !dbg !2182
  %mv_y564 = getelementptr inbounds i8, ptr %arrayidx31, i64 22, !dbg !2183
  store i16 %conv561, ptr %mv_y564, align 2, !dbg !2184
  br label %if.end565

if.end565:                                        ; preds = %if.else522, %if.then509
  %conv566 = trunc i32 %mapped_idx.2936 to i8, !dbg !2185
  %ref_idx567 = getelementptr inbounds i8, ptr %arrayidx31, i64 24, !dbg !2186
  store i8 %conv566, ptr %ref_idx567, align 8, !dbg !2187
  %arrayidx570 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2188
  store i8 0, ptr %arrayidx570, align 1, !dbg !2189
  br label %if.end577, !dbg !2190

if.then574:                                       ; preds = %if.else395, %if.else422
    #dbg_value(i32 poison, !1870, !DIExpression(), !2066)
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7, !dbg !2191
  %ref_idx578.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx31, i64 24
  %.pre = load i8, ptr %ref_idx578.phi.trans.insert, align 8, !dbg !2194
  %arrayidx586.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx31, i64 25
  %.pre982 = load i8, ptr %arrayidx586.phi.trans.insert, align 1, !dbg !2195
  br label %if.end577, !dbg !2196

if.end577:                                        ; preds = %if.end565, %if.then574, %if.then290
  %106 = phi i8 [ 0, %if.end565 ], [ %.pre982, %if.then574 ], [ 0, %if.then290 ], !dbg !2195
  %107 = phi i8 [ %conv566, %if.end565 ], [ %.pre, %if.then574 ], [ 0, %if.then290 ], !dbg !2194
  %idxprom581 = sext i8 %107 to i64, !dbg !2197
  %arrayidx582 = getelementptr inbounds ptr, ptr %3, i64 %idxprom581, !dbg !2197
  %108 = load ptr, ptr %arrayidx582, align 8, !dbg !2197
  store ptr %108, ptr %arrayidx31, align 8, !dbg !2198
  %idxprom588 = sext i8 %106 to i64, !dbg !2199
  %arrayidx589 = getelementptr inbounds ptr, ptr %4, i64 %idxprom588, !dbg !2199
  %109 = load ptr, ptr %arrayidx589, align 8, !dbg !2199
  %arrayidx591 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2200
  store ptr %109, ptr %arrayidx591, align 8, !dbg !2201
  %indvars.iv.next965 = add nuw nsw i64 %indvars.iv964, 1, !dbg !2202
    #dbg_value(i64 %indvars.iv.next965, !1847, !DIExpression(), !1886)
  %exitcond970.not = icmp eq i64 %indvars.iv.next965, %indvars.iv974, !dbg !2203
  br i1 %exitcond970.not, label %for.body598.preheader, label %for.body16, !dbg !1899, !llvm.loop !2204

for.body598.preheader:                            ; preds = %if.end577
    #dbg_value(i64 %indvars.iv962, !1847, !DIExpression(), !1886)
  %arrayidx601 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv962, !dbg !2206
  %110 = load i8, ptr %arrayidx601, align 4, !dbg !2206
  %conv602 = zext i8 %110 to i32, !dbg !2206
  %and603 = and i32 %conv602, 3, !dbg !2207
    #dbg_value(i32 %and603, !1881, !DIExpression(), !2208)
  %shr608 = lshr i32 %conv602, 2, !dbg !2209
  %and609 = and i32 %shr608, 3, !dbg !2210
    #dbg_value(i32 %and609, !1885, !DIExpression(), !2208)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and603, i32 noundef %and609, i32 noundef 8, i32 noundef 8) #7, !dbg !2211
    #dbg_value(i64 %indvars.iv962, !1847, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1886)
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1, !dbg !2212
    #dbg_value(i64 %indvars.iv.next977, !1853, !DIExpression(), !1886)
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 4, !dbg !1896
  %indvars.iv.next975 = add nuw nsw i64 %indvars.iv974, 4, !dbg !1896
  %exitcond981.not = icmp eq i64 %indvars.iv.next977, 4, !dbg !2213
  br i1 %exitcond981.not, label %for.end615, label %for.body, !dbg !1896, !llvm.loop !2214

for.end615:                                       ; preds = %for.body598.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !2216
  %111 = load i32, ptr %cbp, align 4, !dbg !2216
  %cmp616 = icmp eq i32 %111, 0, !dbg !2218
  br i1 %cmp616, label %if.then618, label %if.else655, !dbg !2219

if.then618:                                       ; preds = %for.end615
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48, !dbg !2220
  %112 = load i32, ptr %pix_y, align 8, !dbg !2220
  %idxprom619 = sext i32 %112 to i64, !dbg !2222
  %arrayidx620 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom619, !dbg !2222
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !2223
  %113 = load ptr, ptr %mb_pred, align 8, !dbg !2223
  %idxprom621 = zext i32 %curr_plane to i64, !dbg !2224
  %arrayidx622 = getelementptr inbounds ptr, ptr %113, i64 %idxprom621, !dbg !2224
  %114 = load ptr, ptr %arrayidx622, align 8, !dbg !2224
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44, !dbg !2225
  %115 = load i32, ptr %pix_x, align 4, !dbg !2225
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx620, ptr noundef %114, i32 noundef %115, i32 noundef 0) #7, !dbg !2226
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !2227
  %116 = load i32, ptr %chroma_format_idc, align 4, !dbg !2227
  switch i32 %116, label %if.then629 [
    i32 0, label %if.end656
    i32 3, label %if.end656
  ], !dbg !2229

if.then629:                                       ; preds = %if.then618
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136, !dbg !2230
  %117 = load ptr, ptr %imgUV, align 8, !dbg !2230
  %118 = load ptr, ptr %117, align 8, !dbg !2232
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56, !dbg !2233
  %119 = load i32, ptr %pix_c_y, align 8, !dbg !2233
  %idxprom631 = sext i32 %119 to i64, !dbg !2232
  %arrayidx632 = getelementptr inbounds ptr, ptr %118, i64 %idxprom631, !dbg !2232
  %120 = load ptr, ptr %mb_pred, align 8, !dbg !2234
  %arrayidx634 = getelementptr inbounds i8, ptr %120, i64 8, !dbg !2235
  %121 = load ptr, ptr %arrayidx634, align 8, !dbg !2235
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52, !dbg !2236
  %122 = load i32, ptr %pix_c_x, align 4, !dbg !2236
  %arrayidx635 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !2237
  %123 = load i32, ptr %arrayidx635, align 4, !dbg !2237
  %arrayidx639 = getelementptr inbounds i8, ptr %1, i64 849136, !dbg !2238
  %124 = load i32, ptr %arrayidx639, align 4, !dbg !2238
  tail call void @copy_image_data(ptr noundef %arrayidx632, ptr noundef %121, i32 noundef %122, i32 noundef 0, i32 noundef %123, i32 noundef %124) #7, !dbg !2239
  %125 = load ptr, ptr %imgUV, align 8, !dbg !2240
  %arrayidx641 = getelementptr inbounds i8, ptr %125, i64 8, !dbg !2241
  %126 = load ptr, ptr %arrayidx641, align 8, !dbg !2241
  %127 = load i32, ptr %pix_c_y, align 8, !dbg !2242
  %idxprom643 = sext i32 %127 to i64, !dbg !2241
  %arrayidx644 = getelementptr inbounds ptr, ptr %126, i64 %idxprom643, !dbg !2241
  %128 = load ptr, ptr %mb_pred, align 8, !dbg !2243
  %arrayidx646 = getelementptr inbounds i8, ptr %128, i64 16, !dbg !2244
  %129 = load ptr, ptr %arrayidx646, align 8, !dbg !2244
  %130 = load i32, ptr %pix_c_x, align 4, !dbg !2245
  %131 = load i32, ptr %arrayidx635, align 4, !dbg !2246
  %132 = load i32, ptr %arrayidx639, align 4, !dbg !2247
  tail call void @copy_image_data(ptr noundef %arrayidx644, ptr noundef %129, i32 noundef %130, i32 noundef 0, i32 noundef %131, i32 noundef %132) #7, !dbg !2248
  br label %if.end656, !dbg !2249

if.else655:                                       ; preds = %for.end615
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !2250
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !2252
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !2253
  br label %if.end656

if.end656:                                        ; preds = %if.then618, %if.then618, %if.then629, %if.else655
  ret i32 1, !dbg !2254
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !2255 void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4temporal(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !2259 {
entry:
    #dbg_value(ptr %currMB, !2261, !DIExpression(), !2302)
    #dbg_value(i32 %curr_plane, !2262, !DIExpression(), !2302)
    #dbg_value(ptr %currImg, !2263, !DIExpression(), !2302)
    #dbg_value(ptr %dec_picture, !2264, !DIExpression(), !2302)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2303
    #dbg_value(ptr %0, !2269, !DIExpression(), !2302)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2304
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !2304
    #dbg_value(ptr %1, !2270, !DIExpression(), !2302)
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !2305
  %2 = load i16, ptr %list_offset2, align 2, !dbg !2305
  %conv = sext i16 %2 to i64, !dbg !2306
    #dbg_value(i16 %2, !2271, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2302)
  %listX = getelementptr inbounds i8, ptr %0, i64 264, !dbg !2307
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv, !dbg !2308
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2308
    #dbg_value(ptr %3, !2272, !DIExpression(), !2302)
  %add4 = add nsw i64 %conv, 1, !dbg !2309
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4, !dbg !2310
  %4 = load ptr, ptr %arrayidx6, align 8, !dbg !2310
    #dbg_value(ptr %4, !2273, !DIExpression(), !2302)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !2311
    #dbg_value(i32 0, !2268, !DIExpression(), !2302)
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
  %mv_info26 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %num_ref_idx_active = getelementptr inbounds i8, ptr %0, i64 136
  %listXsize = getelementptr inbounds i8, ptr %0, i64 256
  %arrayidx60 = getelementptr inbounds [6 x i8], ptr %listXsize, i64 0, i64 %conv
  %mvscale = getelementptr inbounds i8, ptr %0, i64 336
    #dbg_value(i32 0, !2268, !DIExpression(), !2302)
  br label %for.body, !dbg !2312

for.body:                                         ; preds = %entry, %for.body180.preheader
  %indvars.iv364 = phi i64 [ 0, %entry ], [ %indvars.iv.next365, %for.body180.preheader ]
  %indvars.iv362 = phi i64 [ 4, %entry ], [ %indvars.iv.next363, %for.body180.preheader ]
  %indvars.iv348 = phi i64 [ 0, %entry ], [ %indvars.iv.next349, %for.body180.preheader ]
    #dbg_value(i64 %indvars.iv364, !2268, !DIExpression(), !2302)
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv364, !dbg !2313
  %5 = load i8, ptr %arrayidx9, align 1, !dbg !2313
    #dbg_value(i32 %conv10, !2274, !DIExpression(), !2314)
    #dbg_value(i64 %indvars.iv364, !2278, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2314)
    #dbg_value(i64 %indvars.iv364, !2279, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_plus_uconst, 4, DW_OP_stack_value), !2314)
    #dbg_value(i64 %indvars.iv364, !2267, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2302)
    #dbg_value(i64 %indvars.iv364, !2267, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2302)
  br label %for.body15, !dbg !2315

for.body15:                                       ; preds = %for.body, %if.end159
  %indvars.iv350 = phi i64 [ %indvars.iv348, %for.body ], [ %indvars.iv.next351, %if.end159 ]
    #dbg_value(i64 %indvars.iv350, !2267, !DIExpression(), !2302)
  %arrayidx17 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv350, !dbg !2316
  %6 = load i8, ptr %arrayidx17, align 1, !dbg !2316
  %conv18 = zext i8 %6 to i32, !dbg !2316
  %and = and i32 %conv18, 3, !dbg !2317
    #dbg_value(i32 %and, !2280, !DIExpression(), !2318)
  %shr = lshr i32 %conv18, 2, !dbg !2319
  %and22 = and i32 %shr, 3, !dbg !2320
    #dbg_value(i32 %and22, !2284, !DIExpression(), !2318)
  %7 = load i32, ptr %block_x, align 8, !dbg !2321
  %add23 = add nsw i32 %and, %7, !dbg !2322
    #dbg_value(i32 %add23, !2285, !DIExpression(), !2318)
  %8 = load i32, ptr %block_y, align 4, !dbg !2323
  %add24 = add nsw i32 %and22, %8, !dbg !2324
    #dbg_value(i32 %add24, !2286, !DIExpression(), !2318)
  %9 = load i32, ptr %block_y_aff, align 8, !dbg !2325
  %add25 = add nsw i32 %9, %and22, !dbg !2326
    #dbg_value(i32 %add25, !2287, !DIExpression(), !2318)
  %10 = load ptr, ptr %mv_info26, align 8, !dbg !2327
  %idxprom27 = sext i32 %add24 to i64, !dbg !2328
  %arrayidx28 = getelementptr inbounds ptr, ptr %10, i64 %idxprom27, !dbg !2328
  %11 = load ptr, ptr %arrayidx28, align 8, !dbg !2328
  %idxprom29 = sext i32 %add23 to i64, !dbg !2328
  %arrayidx30 = getelementptr inbounds %struct.pic_motion_params, ptr %11, i64 %idxprom29, !dbg !2328
    #dbg_value(ptr %arrayidx30, !2288, !DIExpression(), !2318)
  %12 = load ptr, ptr %4, align 8, !dbg !2329
  %mv_info32 = getelementptr inbounds i8, ptr %12, i64 152, !dbg !2330
  %13 = load ptr, ptr %mv_info32, align 8, !dbg !2330
  %idxprom33 = sext i32 %add25 to i64, !dbg !2329
  %arrayidx34 = getelementptr inbounds ptr, ptr %13, i64 %idxprom33, !dbg !2329
  %14 = load ptr, ptr %arrayidx34, align 8, !dbg !2329
  %arrayidx36 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom29, !dbg !2329
    #dbg_value(ptr %arrayidx36, !2289, !DIExpression(), !2318)
  %ref_idx37 = getelementptr inbounds i8, ptr %arrayidx36, i64 24, !dbg !2331
  %15 = load i8, ptr %ref_idx37, align 8, !dbg !2332
  %cmp40 = icmp eq i8 %15, -1, !dbg !2333
  %idxprom43 = zext i1 %cmp40 to i64, !dbg !2334
    #dbg_value(i64 %idxprom43, !2266, !DIExpression(), !2302)
  %arrayidx44 = getelementptr inbounds [2 x i8], ptr %ref_idx37, i64 0, i64 %idxprom43, !dbg !2334
  %16 = load i8, ptr %arrayidx44, align 1, !dbg !2334
    #dbg_value(i8 %16, !2265, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2302)
  %cmp47 = icmp eq i8 %16, -1, !dbg !2335
  br i1 %cmp47, label %if.then, label %for.cond56.preheader, !dbg !2336

for.cond56.preheader:                             ; preds = %for.body15
  %17 = load i32, ptr %num_ref_idx_active, align 8
  %18 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %18 to i32
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %17, i32 %conv61)
    #dbg_value(i32 0, !2290, !DIExpression(), !2337)
    #dbg_value(i32 0, !2293, !DIExpression(), !2337)
  %cmp62340 = icmp sgt i32 %cond.i, 0, !dbg !2338
  br i1 %cmp62340, label %for.body64.lr.ph, label %if.else80, !dbg !2341

for.body64.lr.ph:                                 ; preds = %for.cond56.preheader
  %19 = load ptr, ptr %arrayidx, align 8
  %arrayidx72 = getelementptr inbounds [2 x ptr], ptr %arrayidx36, i64 0, i64 %idxprom43
  %20 = load ptr, ptr %arrayidx72, align 8
  %wide.trip.count = zext nneg i32 %cond.i to i64, !dbg !2338
  br label %for.body64, !dbg !2341

if.then:                                          ; preds = %for.body15
  %mv = getelementptr inbounds i8, ptr %arrayidx30, i64 16, !dbg !2342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv, i8 0, i64 10, i1 false), !dbg !2344
  br label %if.end159, !dbg !2345

for.body64:                                       ; preds = %for.body64.lr.ph, %if.else76
  %indvars.iv = phi i64 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next, %if.else76 ]
    #dbg_value(i64 %indvars.iv, !2293, !DIExpression(), !2337)
  %arrayidx70 = getelementptr inbounds ptr, ptr %19, i64 %indvars.iv, !dbg !2346
  %21 = load ptr, ptr %arrayidx70, align 8, !dbg !2346
  %cmp73 = icmp eq ptr %21, %20, !dbg !2349
  br i1 %cmp73, label %if.else80.loopexit, label %if.else76, !dbg !2350

if.else76:                                        ; preds = %for.body64
    #dbg_value(i32 -135792468, !2290, !DIExpression(), !2337)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2351
    #dbg_value(i64 %indvars.iv.next, !2293, !DIExpression(), !2337)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2338
  br i1 %exitcond.not, label %for.end, label %for.body64, !dbg !2341, !llvm.loop !2352

for.end:                                          ; preds = %if.else76
    #dbg_value(i32 -135792468, !2290, !DIExpression(), !2337)
  br i1 %cmp62340, label %if.then79, label %if.else80, !dbg !2354

if.then79:                                        ; preds = %for.end
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7, !dbg !2355
  %ref_idx160.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx30, i64 24
  %.pre = load i8, ptr %ref_idx160.phi.trans.insert, align 8, !dbg !2357
  %arrayidx168.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx30, i64 25
  %.pre370 = load i8, ptr %arrayidx168.phi.trans.insert, align 1, !dbg !2358
  br label %if.end159, !dbg !2359

if.else80.loopexit:                               ; preds = %for.body64
  %22 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2360
  br label %if.else80, !dbg !2360

if.else80:                                        ; preds = %for.cond56.preheader, %if.else80.loopexit, %for.end
  %mapped_idx.1336 = phi i32 [ -135792468, %for.end ], [ %22, %if.else80.loopexit ], [ 0, %for.cond56.preheader ]
  %idxprom84 = sext i32 %mapped_idx.1336 to i64, !dbg !2360
  %arrayidx85 = getelementptr inbounds [6 x [32 x i32]], ptr %mvscale, i64 0, i64 %conv, i64 %idxprom84, !dbg !2360
  %23 = load i32, ptr %arrayidx85, align 4, !dbg !2360
    #dbg_value(i32 %23, !2294, !DIExpression(), !2361)
  %cmp86 = icmp eq i32 %23, 9999, !dbg !2362
  br i1 %cmp86, label %if.then95, label %lor.lhs.false, !dbg !2364

lor.lhs.false:                                    ; preds = %if.else80
  %24 = load ptr, ptr %arrayidx, align 8, !dbg !2365
  %arrayidx93 = getelementptr inbounds ptr, ptr %24, i64 %idxprom84, !dbg !2365
  %25 = load ptr, ptr %arrayidx93, align 8, !dbg !2365
  %is_long_term = getelementptr inbounds i8, ptr %25, i64 40, !dbg !2366
  %26 = load i8, ptr %is_long_term, align 8, !dbg !2366
  %tobool.not = icmp eq i8 %26, 0, !dbg !2365
  br i1 %tobool.not, label %if.else103, label %if.then95, !dbg !2367

if.then95:                                        ; preds = %lor.lhs.false, %if.else80
  %mv96 = getelementptr inbounds i8, ptr %arrayidx30, i64 16, !dbg !2368
  %mv98 = getelementptr inbounds i8, ptr %arrayidx36, i64 16, !dbg !2370
  %arrayidx100 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv98, i64 0, i64 %idxprom43, !dbg !2371
  %27 = load i32, ptr %arrayidx100, align 4, !dbg !2371
  store i32 %27, ptr %mv96, align 8, !dbg !2371
  %arrayidx102 = getelementptr inbounds i8, ptr %arrayidx30, i64 20, !dbg !2372
  store i32 0, ptr %arrayidx102, align 4, !dbg !2373
  br label %if.end152, !dbg !2374

if.else103:                                       ; preds = %lor.lhs.false
  %mv104 = getelementptr inbounds i8, ptr %arrayidx36, i64 16, !dbg !2375
  %arrayidx106 = getelementptr inbounds [2 x %struct.MotionVector], ptr %mv104, i64 0, i64 %idxprom43, !dbg !2377
  %28 = load i16, ptr %arrayidx106, align 4, !dbg !2378
  %conv107 = sext i16 %28 to i32, !dbg !2377
  %mul = mul nsw i32 %23, %conv107, !dbg !2379
  %add108 = add nsw i32 %mul, 128, !dbg !2380
  %shr109 = lshr i32 %add108, 8, !dbg !2381
  %conv110 = trunc i32 %shr109 to i16, !dbg !2382
  %mv111 = getelementptr inbounds i8, ptr %arrayidx30, i64 16, !dbg !2383
  store i16 %conv110, ptr %mv111, align 8, !dbg !2384
  %mv_y = getelementptr inbounds i8, ptr %arrayidx106, i64 2, !dbg !2385
  %29 = load i16, ptr %mv_y, align 2, !dbg !2385
  %conv117 = sext i16 %29 to i32, !dbg !2386
  %mul118 = mul nsw i32 %23, %conv117, !dbg !2387
  %add119 = add nsw i32 %mul118, 128, !dbg !2388
  %shr120 = lshr i32 %add119, 8, !dbg !2389
  %conv121 = trunc i32 %shr120 to i16, !dbg !2390
  %mv_y124 = getelementptr inbounds i8, ptr %arrayidx30, i64 18, !dbg !2391
  store i16 %conv121, ptr %mv_y124, align 2, !dbg !2392
  %30 = load i16, ptr %arrayidx106, align 4, !dbg !2393
  %sub = sub i16 %conv110, %30, !dbg !2394
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx30, i64 20, !dbg !2395
  store i16 %sub, ptr %arrayidx136, align 4, !dbg !2396
  %31 = load i16, ptr %mv_y, align 2, !dbg !2397
  %conv148 = sub i16 %conv121, %31, !dbg !2398
  %mv_y151 = getelementptr inbounds i8, ptr %arrayidx30, i64 22, !dbg !2399
  store i16 %conv148, ptr %mv_y151, align 2, !dbg !2400
  br label %if.end152

if.end152:                                        ; preds = %if.else103, %if.then95
  %conv153 = trunc i32 %mapped_idx.1336 to i8, !dbg !2401
  %ref_idx154 = getelementptr inbounds i8, ptr %arrayidx30, i64 24, !dbg !2402
  store i8 %conv153, ptr %ref_idx154, align 8, !dbg !2403
  %arrayidx157 = getelementptr inbounds i8, ptr %arrayidx30, i64 25, !dbg !2404
  store i8 0, ptr %arrayidx157, align 1, !dbg !2405
  br label %if.end159

if.end159:                                        ; preds = %if.then79, %if.end152, %if.then
  %32 = phi i8 [ %.pre370, %if.then79 ], [ 0, %if.end152 ], [ 0, %if.then ], !dbg !2358
  %33 = phi i8 [ %.pre, %if.then79 ], [ %conv153, %if.end152 ], [ 0, %if.then ], !dbg !2357
  %idxprom163 = sext i8 %33 to i64, !dbg !2406
  %arrayidx164 = getelementptr inbounds ptr, ptr %3, i64 %idxprom163, !dbg !2406
  %34 = load ptr, ptr %arrayidx164, align 8, !dbg !2406
  store ptr %34, ptr %arrayidx30, align 8, !dbg !2407
  %idxprom170 = sext i8 %32 to i64, !dbg !2408
  %arrayidx171 = getelementptr inbounds ptr, ptr %4, i64 %idxprom170, !dbg !2408
  %35 = load ptr, ptr %arrayidx171, align 8, !dbg !2408
  %arrayidx173 = getelementptr inbounds i8, ptr %arrayidx30, i64 8, !dbg !2409
  store ptr %35, ptr %arrayidx173, align 8, !dbg !2410
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1, !dbg !2411
    #dbg_value(i64 %indvars.iv.next351, !2267, !DIExpression(), !2302)
  %exitcond356.not = icmp eq i64 %indvars.iv.next351, %indvars.iv362, !dbg !2412
  br i1 %exitcond356.not, label %for.body180.preheader, label %for.body15, !dbg !2315, !llvm.loop !2413

for.body180.preheader:                            ; preds = %if.end159
  %conv10 = sext i8 %5 to i32, !dbg !2313
    #dbg_value(i64 %indvars.iv348, !2267, !DIExpression(), !2302)
  %arrayidx183 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv348, !dbg !2415
  %36 = load i8, ptr %arrayidx183, align 4, !dbg !2415
  %conv184 = zext i8 %36 to i32, !dbg !2415
  %and185 = and i32 %conv184, 3, !dbg !2416
    #dbg_value(i32 %and185, !2297, !DIExpression(), !2417)
  %shr190 = lshr i32 %conv184, 2, !dbg !2418
  %and191 = and i32 %shr190, 3, !dbg !2419
    #dbg_value(i32 %and191, !2301, !DIExpression(), !2417)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185, i32 noundef %and191, i32 noundef 4, i32 noundef 4) #7, !dbg !2420
  %indvars.iv.next358 = or disjoint i64 %indvars.iv348, 1, !dbg !2421
    #dbg_value(i64 %indvars.iv.next358, !2267, !DIExpression(), !2302)
  %arrayidx183.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358, !dbg !2415
  %37 = load i8, ptr %arrayidx183.1, align 1, !dbg !2415
  %conv184.1 = zext i8 %37 to i32, !dbg !2415
  %and185.1 = and i32 %conv184.1, 3, !dbg !2416
    #dbg_value(i32 %and185.1, !2297, !DIExpression(), !2417)
  %shr190.1 = lshr i32 %conv184.1, 2, !dbg !2418
  %and191.1 = and i32 %shr190.1, 3, !dbg !2419
    #dbg_value(i32 %and191.1, !2301, !DIExpression(), !2417)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.1, i32 noundef %and191.1, i32 noundef 4, i32 noundef 4) #7, !dbg !2420
  %indvars.iv.next358.1 = or disjoint i64 %indvars.iv348, 2, !dbg !2421
    #dbg_value(i64 %indvars.iv.next358.1, !2267, !DIExpression(), !2302)
  %arrayidx183.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358.1, !dbg !2415
  %38 = load i8, ptr %arrayidx183.2, align 2, !dbg !2415
  %conv184.2 = zext i8 %38 to i32, !dbg !2415
  %and185.2 = and i32 %conv184.2, 3, !dbg !2416
    #dbg_value(i32 %and185.2, !2297, !DIExpression(), !2417)
  %shr190.2 = lshr i32 %conv184.2, 2, !dbg !2418
  %and191.2 = and i32 %shr190.2, 3, !dbg !2419
    #dbg_value(i32 %and191.2, !2301, !DIExpression(), !2417)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.2, i32 noundef %and191.2, i32 noundef 4, i32 noundef 4) #7, !dbg !2420
  %indvars.iv.next358.2 = or disjoint i64 %indvars.iv348, 3, !dbg !2421
    #dbg_value(i64 %indvars.iv.next358.2, !2267, !DIExpression(), !2302)
  %arrayidx183.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next358.2, !dbg !2415
  %39 = load i8, ptr %arrayidx183.3, align 1, !dbg !2415
  %conv184.3 = zext i8 %39 to i32, !dbg !2415
  %and185.3 = and i32 %conv184.3, 3, !dbg !2416
    #dbg_value(i32 %and185.3, !2297, !DIExpression(), !2417)
  %shr190.3 = lshr i32 %conv184.3, 2, !dbg !2418
  %and191.3 = and i32 %shr190.3, 3, !dbg !2419
    #dbg_value(i32 %and191.3, !2301, !DIExpression(), !2417)
  tail call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv10, i32 noundef %and185.3, i32 noundef %and191.3, i32 noundef 4, i32 noundef 4) #7, !dbg !2420
    #dbg_value(i64 %indvars.iv348, !2267, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2302)
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1, !dbg !2422
    #dbg_value(i64 %indvars.iv.next365, !2268, !DIExpression(), !2302)
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 4, !dbg !2312
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 4, !dbg !2312
  %exitcond369.not = icmp eq i64 %indvars.iv.next365, 4, !dbg !2423
  br i1 %exitcond369.not, label %for.end197, label %for.body, !dbg !2312, !llvm.loop !2424

for.end197:                                       ; preds = %for.body180.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !2426
  %40 = load i32, ptr %cbp, align 4, !dbg !2426
  %cmp198 = icmp eq i32 %40, 0, !dbg !2428
  br i1 %cmp198, label %if.then200, label %if.else236, !dbg !2429

if.then200:                                       ; preds = %for.end197
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48, !dbg !2430
  %41 = load i32, ptr %pix_y, align 8, !dbg !2430
  %idxprom201 = sext i32 %41 to i64, !dbg !2432
  %arrayidx202 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom201, !dbg !2432
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !2433
  %42 = load ptr, ptr %mb_pred, align 8, !dbg !2433
  %idxprom203 = zext i32 %curr_plane to i64, !dbg !2434
  %arrayidx204 = getelementptr inbounds ptr, ptr %42, i64 %idxprom203, !dbg !2434
  %43 = load ptr, ptr %arrayidx204, align 8, !dbg !2434
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44, !dbg !2435
  %44 = load i32, ptr %pix_x, align 4, !dbg !2435
  tail call void @copy_image_data_16x16(ptr noundef %arrayidx202, ptr noundef %43, i32 noundef %44, i32 noundef 0) #7, !dbg !2436
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !2437
  %45 = load i32, ptr %chroma_format_idc, align 4, !dbg !2437
  switch i32 %45, label %if.then210 [
    i32 0, label %if.end237
    i32 3, label %if.end237
  ], !dbg !2439

if.then210:                                       ; preds = %if.then200
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136, !dbg !2440
  %46 = load ptr, ptr %imgUV, align 8, !dbg !2440
  %47 = load ptr, ptr %46, align 8, !dbg !2442
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56, !dbg !2443
  %48 = load i32, ptr %pix_c_y, align 8, !dbg !2443
  %idxprom212 = sext i32 %48 to i64, !dbg !2442
  %arrayidx213 = getelementptr inbounds ptr, ptr %47, i64 %idxprom212, !dbg !2442
  %49 = load ptr, ptr %mb_pred, align 8, !dbg !2444
  %arrayidx215 = getelementptr inbounds i8, ptr %49, i64 8, !dbg !2445
  %50 = load ptr, ptr %arrayidx215, align 8, !dbg !2445
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52, !dbg !2446
  %51 = load i32, ptr %pix_c_x, align 4, !dbg !2446
  %arrayidx216 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !2447
  %52 = load i32, ptr %arrayidx216, align 4, !dbg !2447
  %arrayidx220 = getelementptr inbounds i8, ptr %1, i64 849136, !dbg !2448
  %53 = load i32, ptr %arrayidx220, align 4, !dbg !2448
  tail call void @copy_image_data(ptr noundef %arrayidx213, ptr noundef %50, i32 noundef %51, i32 noundef 0, i32 noundef %52, i32 noundef %53) #7, !dbg !2449
  %54 = load ptr, ptr %imgUV, align 8, !dbg !2450
  %arrayidx222 = getelementptr inbounds i8, ptr %54, i64 8, !dbg !2451
  %55 = load ptr, ptr %arrayidx222, align 8, !dbg !2451
  %56 = load i32, ptr %pix_c_y, align 8, !dbg !2452
  %idxprom224 = sext i32 %56 to i64, !dbg !2451
  %arrayidx225 = getelementptr inbounds ptr, ptr %55, i64 %idxprom224, !dbg !2451
  %57 = load ptr, ptr %mb_pred, align 8, !dbg !2453
  %arrayidx227 = getelementptr inbounds i8, ptr %57, i64 16, !dbg !2454
  %58 = load ptr, ptr %arrayidx227, align 8, !dbg !2454
  %59 = load i32, ptr %pix_c_x, align 4, !dbg !2455
  %60 = load i32, ptr %arrayidx216, align 4, !dbg !2456
  %61 = load i32, ptr %arrayidx220, align 4, !dbg !2457
  tail call void @copy_image_data(ptr noundef %arrayidx225, ptr noundef %58, i32 noundef %59, i32 noundef 0, i32 noundef %60, i32 noundef %61) #7, !dbg !2458
  br label %if.end237, !dbg !2459

if.else236:                                       ; preds = %for.end197
  tail call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !2460
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !2462
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !2463
  br label %if.end237

if.end237:                                        ; preds = %if.then200, %if.then200, %if.then210, %if.else236
  ret i32 1, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8spatial(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !2465 {
entry:
  %l0_rFrame = alloca i8, align 1, !DIAssignID !2494
    #dbg_assign(i1 undef, !2471, !DIExpression(), !2494, ptr %l0_rFrame, !DIExpression(), !2495)
  %l1_rFrame = alloca i8, align 1, !DIAssignID !2496
    #dbg_assign(i1 undef, !2472, !DIExpression(), !2496, ptr %l1_rFrame, !DIExpression(), !2495)
  %pmvl0 = alloca %struct.MotionVector, align 4, !DIAssignID !2497
    #dbg_assign(i1 undef, !2473, !DIExpression(), !2497, ptr %pmvl0, !DIExpression(), !2495)
  %pmvl1 = alloca %struct.MotionVector, align 4, !DIAssignID !2498
    #dbg_assign(i1 undef, !2474, !DIExpression(), !2498, ptr %pmvl1, !DIExpression(), !2495)
    #dbg_value(ptr %currMB, !2467, !DIExpression(), !2495)
    #dbg_value(i32 %curr_plane, !2468, !DIExpression(), !2495)
    #dbg_value(ptr %currImg, !2469, !DIExpression(), !2495)
    #dbg_value(ptr %dec_picture, !2470, !DIExpression(), !2495)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !2499
  store i8 -1, ptr %l0_rFrame, align 1, !dbg !2500, !DIAssignID !2501
    #dbg_assign(i8 -1, !2471, !DIExpression(), !2501, ptr %l0_rFrame, !DIExpression(), !2495)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !2499
  store i8 -1, ptr %l1_rFrame, align 1, !dbg !2502, !DIAssignID !2503
    #dbg_assign(i8 -1, !2472, !DIExpression(), !2503, ptr %l1_rFrame, !DIExpression(), !2495)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !2504
  store i32 0, ptr %pmvl0, align 4, !dbg !2505, !DIAssignID !2506
    #dbg_assign(i32 0, !2473, !DIExpression(), !2506, ptr %pmvl0, !DIExpression(), !2495)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !2504
  store i32 0, ptr %pmvl1, align 4, !dbg !2507, !DIAssignID !2508
    #dbg_assign(i32 0, !2474, !DIExpression(), !2508, ptr %pmvl1, !DIExpression(), !2495)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2509
    #dbg_value(ptr %0, !2478, !DIExpression(), !2495)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2510
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !2510
    #dbg_value(ptr %1, !2479, !DIExpression(), !2495)
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !2511
  %2 = load i16, ptr %list_offset2, align 2, !dbg !2511
  %conv = sext i16 %2 to i64, !dbg !2512
    #dbg_value(i16 %2, !2481, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2495)
  %listX = getelementptr inbounds i8, ptr %0, i64 264, !dbg !2513
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv, !dbg !2514
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2514
    #dbg_value(ptr %3, !2482, !DIExpression(), !2495)
  %add4 = add nsw i64 %conv, 1, !dbg !2515
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4, !dbg !2516
  %4 = load ptr, ptr %arrayidx6, align 8, !dbg !2516
    #dbg_value(ptr %4, !2483, !DIExpression(), !2495)
    #dbg_value(i32 0, !2484, !DIExpression(), !2495)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !2517
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7, !dbg !2518
  %5 = load i8, ptr %l0_rFrame, align 1, !dbg !2519
  %cmp = icmp eq i8 %5, 0, !dbg !2520
  %6 = load i8, ptr %l1_rFrame, align 1
  %cmp10 = icmp eq i8 %6, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10, !dbg !2521
  br i1 %or.cond, label %for.cond.preheader, label %if.else148, !dbg !2521

for.cond.preheader:                               ; preds = %entry
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
    #dbg_value(i32 0, !2477, !DIExpression(), !2495)
  %mv_info27 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  br label %for.body, !dbg !2522

for.body:                                         ; preds = %for.cond.preheader, %if.end144
  %indvars.iv657 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next658, %if.end144 ]
    #dbg_value(i64 %indvars.iv657, !2477, !DIExpression(), !2495)
  %7 = shl nuw nsw i64 %indvars.iv657, 2, !dbg !2523
    #dbg_value(i64 %7, !2488, !DIExpression(), !2524)
  %arrayidx15 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %7, !dbg !2525
  %8 = load i8, ptr %arrayidx15, align 4, !dbg !2525
  %conv16 = zext i8 %8 to i32, !dbg !2525
  %and = and i32 %conv16, 3, !dbg !2526
    #dbg_value(i32 %and, !2492, !DIExpression(), !2524)
  %shr = lshr i32 %conv16, 2, !dbg !2527
  %and20 = and i32 %shr, 3, !dbg !2528
    #dbg_value(i32 %and20, !2493, !DIExpression(), !2524)
  %9 = load i32, ptr %block_x, align 8, !dbg !2529
  %add21 = add nsw i32 %and, %9, !dbg !2530
    #dbg_value(i32 %add21, !2475, !DIExpression(), !2495)
  %10 = load i32, ptr %block_y, align 4, !dbg !2531
  %add22 = add nsw i32 %and20, %10, !dbg !2532
    #dbg_value(i32 %add22, !2476, !DIExpression(), !2495)
  %11 = load ptr, ptr %4, align 8, !dbg !2533
  %12 = load i32, ptr %block_y_aff, align 8, !dbg !2534
  %add24 = add nsw i32 %12, %and20, !dbg !2535
  %call = call i32 @get_colocated_info_8x8(ptr noundef nonnull %currMB, ptr noundef %11, i32 noundef %add21, i32 noundef %add24) #7, !dbg !2536
  %cmp25 = icmp eq i32 %call, 0, !dbg !2537
    #dbg_value(i1 %cmp25, !2485, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2538)
  %13 = load ptr, ptr %mv_info27, align 8, !dbg !2539
  %idxprom28 = sext i32 %add22 to i64, !dbg !2540
  %arrayidx29 = getelementptr inbounds ptr, ptr %13, i64 %idxprom28, !dbg !2540
  %14 = load ptr, ptr %arrayidx29, align 8, !dbg !2540
  %idxprom30 = sext i32 %add21 to i64, !dbg !2540
  %arrayidx31 = getelementptr inbounds %struct.pic_motion_params, ptr %14, i64 %idxprom30, !dbg !2540
    #dbg_value(ptr %arrayidx31, !2480, !DIExpression(), !2495)
  %15 = load i8, ptr %l1_rFrame, align 1, !dbg !2541
  %cmp33 = icmp eq i8 %15, -1, !dbg !2543
  br i1 %cmp33, label %if.then35, label %if.else62, !dbg !2544

if.then35:                                        ; preds = %for.body
  br i1 %cmp25, label %if.then36, label %if.else, !dbg !2545

if.then36:                                        ; preds = %if.then35
  %16 = load ptr, ptr %3, align 8, !dbg !2547
  store ptr %16, ptr %arrayidx31, align 8, !dbg !2550
  %arrayidx40 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2551
  %arrayidx46 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %arrayidx40, i8 0, i64 17, i1 false), !dbg !2553
  store i8 -1, ptr %arrayidx46, align 1, !dbg !2554
  br label %if.end144, !dbg !2555

if.else:                                          ; preds = %if.then35
  %17 = load i8, ptr %l0_rFrame, align 1, !dbg !2556
  %idxprom48 = sext i8 %17 to i64, !dbg !2558
  %arrayidx49 = getelementptr inbounds ptr, ptr %3, i64 %idxprom48, !dbg !2558
  %18 = load ptr, ptr %arrayidx49, align 8, !dbg !2558
  store ptr %18, ptr %arrayidx31, align 8, !dbg !2559
  %arrayidx53 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2560
  store ptr null, ptr %arrayidx53, align 8, !dbg !2561
  %mv54 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2562
  %19 = load i32, ptr %pmvl0, align 4, !dbg !2563
  store i32 %19, ptr %mv54, align 8, !dbg !2563
  %arrayidx57 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2564
  store i32 0, ptr %arrayidx57, align 4, !dbg !2565
  %ref_idx58 = getelementptr inbounds i8, ptr %arrayidx31, i64 24, !dbg !2566
  store i8 %17, ptr %ref_idx58, align 8, !dbg !2567
  %arrayidx61 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2568
  store i8 -1, ptr %arrayidx61, align 1, !dbg !2569
  br label %if.end144

if.else62:                                        ; preds = %for.body
  %20 = load i8, ptr %l0_rFrame, align 1, !dbg !2570
  %cmp64 = icmp eq i8 %20, -1, !dbg !2572
  br i1 %cmp64, label %if.then66, label %if.else95, !dbg !2573

if.then66:                                        ; preds = %if.else62
  br i1 %cmp25, label %if.then68, label %if.else80, !dbg !2574

if.then68:                                        ; preds = %if.then66
  %21 = load ptr, ptr %4, align 8, !dbg !2576
  %arrayidx71 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2579
  store ptr %21, ptr %arrayidx71, align 8, !dbg !2580
  %mv72 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2581
  store i32 0, ptr %mv72, align 8, !dbg !2582
  %arrayidx75 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2583
  store i32 0, ptr %arrayidx75, align 4, !dbg !2584
  %ref_idx76 = getelementptr inbounds i8, ptr %arrayidx31, i64 24, !dbg !2585
  store i8 -1, ptr %ref_idx76, align 8, !dbg !2586
  %arrayidx79 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2587
  store i8 0, ptr %arrayidx79, align 1, !dbg !2588
  br label %if.end144, !dbg !2589

if.else80:                                        ; preds = %if.then66
  %idxprom82 = sext i8 %15 to i64, !dbg !2590
  %arrayidx83 = getelementptr inbounds ptr, ptr %4, i64 %idxprom82, !dbg !2590
  %22 = load ptr, ptr %arrayidx83, align 8, !dbg !2590
  %arrayidx85 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2592
  store ptr %22, ptr %arrayidx85, align 8, !dbg !2593
  %mv86 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2594
  store i32 0, ptr %mv86, align 8, !dbg !2595
  %arrayidx89 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2596
  %23 = load i32, ptr %pmvl1, align 4, !dbg !2597
  store i32 %23, ptr %arrayidx89, align 4, !dbg !2597
  %ref_idx90 = getelementptr inbounds i8, ptr %arrayidx31, i64 24, !dbg !2598
  store i8 -1, ptr %ref_idx90, align 8, !dbg !2599
  %24 = load i8, ptr %l1_rFrame, align 1, !dbg !2600
  %arrayidx93 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2601
  store i8 %24, ptr %arrayidx93, align 1, !dbg !2602
  br label %if.end144

if.else95:                                        ; preds = %if.else62
  %cmp97 = icmp eq i8 %20, 0, !dbg !2603
  %or.cond387 = select i1 %cmp97, i1 %cmp25, i1 false, !dbg !2606
  %idxprom110 = sext i8 %20 to i64, !dbg !2606
  %25 = load i32, ptr %pmvl0, align 4, !dbg !2606
  %.sink662.in.idx = select i1 %or.cond387, i64 0, i64 %idxprom110, !dbg !2606
  %.sink662.in = getelementptr inbounds ptr, ptr %3, i64 %.sink662.in.idx, !dbg !2606
  %.sink661 = select i1 %or.cond387, i32 0, i32 %25, !dbg !2606
  %.sink662 = load ptr, ptr %.sink662.in, align 8, !dbg !2607
  store ptr %.sink662, ptr %arrayidx31, align 8, !dbg !2607
  %26 = getelementptr inbounds i8, ptr %arrayidx31, i64 16, !dbg !2607
  store i32 %.sink661, ptr %26, align 8, !dbg !2607
  %27 = getelementptr inbounds i8, ptr %arrayidx31, i64 24, !dbg !2607
  store i8 %20, ptr %27, align 8, !dbg !2607
  %28 = load i8, ptr %l1_rFrame, align 1, !dbg !2608
  %cmp120 = icmp eq i8 %28, 0, !dbg !2610
  %or.cond388 = select i1 %cmp120, i1 %cmp25, i1 false, !dbg !2611
  br i1 %or.cond388, label %if.then124, label %if.else132, !dbg !2611

if.then124:                                       ; preds = %if.else95
  %29 = load ptr, ptr %4, align 8, !dbg !2612
  %arrayidx127 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2614
  store ptr %29, ptr %arrayidx127, align 8, !dbg !2615
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2616
  store i32 0, ptr %arrayidx129, align 4, !dbg !2617
  %arrayidx131 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2618
  store i8 0, ptr %arrayidx131, align 1, !dbg !2619
  br label %if.end144, !dbg !2620

if.else132:                                       ; preds = %if.else95
  %idxprom134 = sext i8 %28 to i64, !dbg !2621
  %arrayidx135 = getelementptr inbounds ptr, ptr %4, i64 %idxprom134, !dbg !2621
  %30 = load ptr, ptr %arrayidx135, align 8, !dbg !2621
  %arrayidx137 = getelementptr inbounds i8, ptr %arrayidx31, i64 8, !dbg !2623
  store ptr %30, ptr %arrayidx137, align 8, !dbg !2624
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx31, i64 20, !dbg !2625
  %31 = load i32, ptr %pmvl1, align 4, !dbg !2626
  store i32 %31, ptr %arrayidx139, align 4, !dbg !2626
  %arrayidx141 = getelementptr inbounds i8, ptr %arrayidx31, i64 25, !dbg !2627
  store i8 %28, ptr %arrayidx141, align 1, !dbg !2628
  br label %if.end144

if.end144:                                        ; preds = %if.then124, %if.else132, %if.then68, %if.else80, %if.then36, %if.else
  %pred_dir.0 = phi i32 [ 0, %if.else ], [ 0, %if.then36 ], [ 1, %if.else80 ], [ 1, %if.then68 ], [ 2, %if.else132 ], [ 2, %if.then124 ], !dbg !2629
    #dbg_value(i32 %pred_dir.0, !2484, !DIExpression(), !2495)
  %32 = load ptr, ptr %mv_info27, align 8, !dbg !2630
  %arrayidx147 = getelementptr inbounds ptr, ptr %32, i64 %idxprom28, !dbg !2631
    #dbg_value(ptr %arrayidx147, !2632, !DIExpression(), !2642)
    #dbg_value(ptr %arrayidx31, !2640, !DIExpression(), !2642)
    #dbg_value(i32 %add21, !2641, !DIExpression(), !2642)
  %incdec.ptr.i = getelementptr inbounds i8, ptr %arrayidx147, i64 8, !dbg !2644
    #dbg_value(ptr %incdec.ptr.i, !2632, !DIExpression(), !2642)
  %33 = load ptr, ptr %arrayidx147, align 8, !dbg !2645
  %add.i = add nsw i32 %add21, 1, !dbg !2646
  %idxprom.i = sext i32 %add.i to i64, !dbg !2647
  %arrayidx.i = getelementptr inbounds %struct.pic_motion_params, ptr %33, i64 %idxprom.i, !dbg !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false), !dbg !2648
  %34 = load ptr, ptr %incdec.ptr.i, align 8, !dbg !2649
  %arrayidx2.i = getelementptr inbounds %struct.pic_motion_params, ptr %34, i64 %idxprom30, !dbg !2650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false), !dbg !2651
  %35 = load ptr, ptr %incdec.ptr.i, align 8, !dbg !2652
  %arrayidx5.i = getelementptr inbounds %struct.pic_motion_params, ptr %35, i64 %idxprom.i, !dbg !2653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx31, i64 32, i1 false), !dbg !2654
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.0, i32 noundef %and, i32 noundef %and20, i32 noundef 8, i32 noundef 8) #7, !dbg !2655
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1, !dbg !2656
    #dbg_value(i64 %indvars.iv.next658, !2477, !DIExpression(), !2495)
  %exitcond.not = icmp eq i64 %indvars.iv.next658, 4, !dbg !2657
  br i1 %exitcond.not, label %if.end345, label %for.body, !dbg !2522, !llvm.loop !2658

if.else148:                                       ; preds = %entry
  %cmp150 = icmp slt i8 %5, 0, !dbg !2660
  %cmp154 = icmp slt i8 %6, 0
  %or.cond389 = select i1 %cmp150, i1 %cmp154, i1 false, !dbg !2663
  br i1 %or.cond389, label %for.body163.lr.ph, label %if.else199, !dbg !2663

for.body163.lr.ph:                                ; preds = %if.else148
    #dbg_value(i32 2, !2484, !DIExpression(), !2495)
  %block_y157 = getelementptr inbounds i8, ptr %currMB, i64 36, !dbg !2664
    #dbg_value(i32 poison, !2476, !DIExpression(), !2495)
  %36 = load i32, ptr %block_y157, align 4, !dbg !2664
    #dbg_value(i32 %36, !2476, !DIExpression(), !2495)
  %block_x164 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info171 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %37 = sext i32 %36 to i64, !dbg !2667
  br label %for.body170.lr.ph, !dbg !2667

for.body170.lr.ph:                                ; preds = %for.inc196, %for.body163.lr.ph
  %indvars.iv654 = phi i64 [ %37, %for.body163.lr.ph ], [ %indvars.iv.next655, %for.inc196 ]
    #dbg_value(i64 %indvars.iv654, !2476, !DIExpression(), !2495)
    #dbg_value(i32 poison, !2475, !DIExpression(), !2495)
  %38 = load i32, ptr %block_x164, align 8, !dbg !2668
    #dbg_value(i32 %38, !2475, !DIExpression(), !2495)
  %39 = sext i32 %38 to i64, !dbg !2672
  br label %for.body170, !dbg !2672

for.body170:                                      ; preds = %for.body170.lr.ph, %for.body170
  %indvars.iv650 = phi i64 [ %39, %for.body170.lr.ph ], [ %indvars.iv.next651, %for.body170 ]
    #dbg_value(i64 %indvars.iv650, !2475, !DIExpression(), !2495)
  %40 = load ptr, ptr %mv_info171, align 8, !dbg !2673
  %arrayidx173 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv654, !dbg !2676
  %41 = load ptr, ptr %arrayidx173, align 8, !dbg !2676
  %arrayidx175 = getelementptr inbounds %struct.pic_motion_params, ptr %41, i64 %indvars.iv650, !dbg !2676
    #dbg_value(ptr %arrayidx175, !2480, !DIExpression(), !2495)
  %42 = load ptr, ptr %3, align 8, !dbg !2677
  store ptr %42, ptr %arrayidx175, align 8, !dbg !2678
  %43 = load ptr, ptr %4, align 8, !dbg !2679
  %arrayidx181 = getelementptr inbounds i8, ptr %arrayidx175, i64 8, !dbg !2680
  store ptr %43, ptr %arrayidx181, align 8, !dbg !2681
  %mv182 = getelementptr inbounds i8, ptr %arrayidx175, i64 16, !dbg !2682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv182, i8 0, i64 10, i1 false), !dbg !2683
  %44 = load ptr, ptr %mv_info171, align 8, !dbg !2684
  %arrayidx192 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv654, !dbg !2685
    #dbg_value(ptr %arrayidx192, !2632, !DIExpression(), !2686)
    #dbg_value(ptr %arrayidx175, !2640, !DIExpression(), !2686)
    #dbg_value(i64 %indvars.iv650, !2641, !DIExpression(), !2686)
  %incdec.ptr.i572 = getelementptr inbounds i8, ptr %arrayidx192, i64 8, !dbg !2688
    #dbg_value(ptr %incdec.ptr.i572, !2632, !DIExpression(), !2686)
  %45 = load ptr, ptr %arrayidx192, align 8, !dbg !2689
  %46 = add nsw i64 %indvars.iv650, 1, !dbg !2690
  %arrayidx.i575 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, !dbg !2691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i575, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false), !dbg !2692
  %47 = load ptr, ptr %incdec.ptr.i572, align 8, !dbg !2693
  %arrayidx2.i577 = getelementptr inbounds %struct.pic_motion_params, ptr %47, i64 %indvars.iv650, !dbg !2694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i577, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false), !dbg !2695
  %48 = load ptr, ptr %incdec.ptr.i572, align 8, !dbg !2696
  %arrayidx5.i578 = getelementptr inbounds %struct.pic_motion_params, ptr %48, i64 %46, !dbg !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i578, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx175, i64 32, i1 false), !dbg !2698
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, 2, !dbg !2699
    #dbg_value(i64 %indvars.iv.next651, !2475, !DIExpression(), !2495)
  %49 = load i32, ptr %block_x164, align 8, !dbg !2700
  %50 = add nsw i32 %49, 2, !dbg !2701
  %51 = sext i32 %50 to i64, !dbg !2701
  %cmp168 = icmp slt i64 %indvars.iv650, %51, !dbg !2701
  br i1 %cmp168, label %for.body170, label %for.inc196, !dbg !2672, !llvm.loop !2702

for.inc196:                                       ; preds = %for.body170
  %.pre665 = load i32, ptr %block_y157, align 4, !dbg !2704
  %indvars.iv.next655 = add nsw i64 %indvars.iv654, 2, !dbg !2705
    #dbg_value(i64 %indvars.iv.next655, !2476, !DIExpression(), !2495)
  %52 = add nsw i32 %.pre665, 2, !dbg !2706
  %53 = sext i32 %52 to i64, !dbg !2706
  %cmp161 = icmp slt i64 %indvars.iv654, %53, !dbg !2706
  br i1 %cmp161, label %for.body170.lr.ph, label %if.end344, !dbg !2667, !llvm.loop !2707

if.else199:                                       ; preds = %if.else148
  %cmp201 = icmp eq i8 %6, -1, !dbg !2709
  br i1 %cmp201, label %for.body210.lr.ph, label %if.else247, !dbg !2711

for.body210.lr.ph:                                ; preds = %if.else199
    #dbg_value(i32 0, !2484, !DIExpression(), !2495)
  %block_y204 = getelementptr inbounds i8, ptr %currMB, i64 36, !dbg !2712
    #dbg_value(i32 poison, !2476, !DIExpression(), !2495)
  %54 = load i32, ptr %block_y204, align 4, !dbg !2712
    #dbg_value(i32 %54, !2476, !DIExpression(), !2495)
  %block_x211 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info218 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %55 = sext i32 %54 to i64, !dbg !2715
  br label %for.body217.lr.ph, !dbg !2715

for.body217.lr.ph:                                ; preds = %for.inc244, %for.body210.lr.ph
  %indvars.iv647 = phi i64 [ %55, %for.body210.lr.ph ], [ %indvars.iv.next648, %for.inc244 ]
    #dbg_value(i64 %indvars.iv647, !2476, !DIExpression(), !2495)
    #dbg_value(i32 poison, !2475, !DIExpression(), !2495)
  %56 = load i32, ptr %block_x211, align 8, !dbg !2716
    #dbg_value(i32 %56, !2475, !DIExpression(), !2495)
  %57 = sext i32 %56 to i64, !dbg !2720
  br label %for.body217, !dbg !2720

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv643 = phi i64 [ %57, %for.body217.lr.ph ], [ %indvars.iv.next644, %for.body217 ]
    #dbg_value(i64 %indvars.iv643, !2475, !DIExpression(), !2495)
  %58 = load ptr, ptr %mv_info218, align 8, !dbg !2721
  %arrayidx220 = getelementptr inbounds ptr, ptr %58, i64 %indvars.iv647, !dbg !2724
  %59 = load ptr, ptr %arrayidx220, align 8, !dbg !2724
  %arrayidx222 = getelementptr inbounds %struct.pic_motion_params, ptr %59, i64 %indvars.iv643, !dbg !2724
    #dbg_value(ptr %arrayidx222, !2480, !DIExpression(), !2495)
  %60 = load i8, ptr %l0_rFrame, align 1, !dbg !2725
  %idxprom224 = sext i8 %60 to i64, !dbg !2726
  %arrayidx225 = getelementptr inbounds ptr, ptr %3, i64 %idxprom224, !dbg !2726
  %61 = load ptr, ptr %arrayidx225, align 8, !dbg !2726
  store ptr %61, ptr %arrayidx222, align 8, !dbg !2727
  %arrayidx229 = getelementptr inbounds i8, ptr %arrayidx222, i64 8, !dbg !2728
  store ptr null, ptr %arrayidx229, align 8, !dbg !2729
  %mv230 = getelementptr inbounds i8, ptr %arrayidx222, i64 16, !dbg !2730
  %62 = load i32, ptr %pmvl0, align 4, !dbg !2731
  store i32 %62, ptr %mv230, align 8, !dbg !2731
  %arrayidx233 = getelementptr inbounds i8, ptr %arrayidx222, i64 20, !dbg !2732
  store i32 0, ptr %arrayidx233, align 4, !dbg !2733
  %ref_idx234 = getelementptr inbounds i8, ptr %arrayidx222, i64 24, !dbg !2734
  store i8 %60, ptr %ref_idx234, align 8, !dbg !2735
  %arrayidx237 = getelementptr inbounds i8, ptr %arrayidx222, i64 25, !dbg !2736
  store i8 -1, ptr %arrayidx237, align 1, !dbg !2737
  %63 = load ptr, ptr %mv_info218, align 8, !dbg !2738
  %arrayidx240 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv647, !dbg !2739
    #dbg_value(ptr %arrayidx240, !2632, !DIExpression(), !2740)
    #dbg_value(ptr %arrayidx222, !2640, !DIExpression(), !2740)
    #dbg_value(i64 %indvars.iv643, !2641, !DIExpression(), !2740)
  %incdec.ptr.i579 = getelementptr inbounds i8, ptr %arrayidx240, i64 8, !dbg !2742
    #dbg_value(ptr %incdec.ptr.i579, !2632, !DIExpression(), !2740)
  %64 = load ptr, ptr %arrayidx240, align 8, !dbg !2743
  %65 = add nsw i64 %indvars.iv643, 1, !dbg !2744
  %arrayidx.i582 = getelementptr inbounds %struct.pic_motion_params, ptr %64, i64 %65, !dbg !2745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i582, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false), !dbg !2746
  %66 = load ptr, ptr %incdec.ptr.i579, align 8, !dbg !2747
  %arrayidx2.i584 = getelementptr inbounds %struct.pic_motion_params, ptr %66, i64 %indvars.iv643, !dbg !2748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i584, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false), !dbg !2749
  %67 = load ptr, ptr %incdec.ptr.i579, align 8, !dbg !2750
  %arrayidx5.i585 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %65, !dbg !2751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i585, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx222, i64 32, i1 false), !dbg !2752
  %indvars.iv.next644 = add nsw i64 %indvars.iv643, 2, !dbg !2753
    #dbg_value(i64 %indvars.iv.next644, !2475, !DIExpression(), !2495)
  %68 = load i32, ptr %block_x211, align 8, !dbg !2754
  %69 = add nsw i32 %68, 2, !dbg !2755
  %70 = sext i32 %69 to i64, !dbg !2755
  %cmp215 = icmp slt i64 %indvars.iv643, %70, !dbg !2755
  br i1 %cmp215, label %for.body217, label %for.inc244, !dbg !2720, !llvm.loop !2756

for.inc244:                                       ; preds = %for.body217
  %.pre664 = load i32, ptr %block_y204, align 4, !dbg !2758
  %indvars.iv.next648 = add nsw i64 %indvars.iv647, 2, !dbg !2759
    #dbg_value(i64 %indvars.iv.next648, !2476, !DIExpression(), !2495)
  %71 = add nsw i32 %.pre664, 2, !dbg !2760
  %72 = sext i32 %71 to i64, !dbg !2760
  %cmp208 = icmp slt i64 %indvars.iv647, %72, !dbg !2760
  br i1 %cmp208, label %for.body217.lr.ph, label %if.end344, !dbg !2715, !llvm.loop !2761

if.else247:                                       ; preds = %if.else199
  %cmp249 = icmp eq i8 %5, -1, !dbg !2763
  %block_y252 = getelementptr inbounds i8, ptr %currMB, i64 36, !dbg !2765
    #dbg_value(i32 poison, !2476, !DIExpression(), !2495)
    #dbg_value(i32 poison, !2476, !DIExpression(), !2495)
  %73 = load i32, ptr %block_y252, align 4, !dbg !2765
    #dbg_value(i32 %73, !2476, !DIExpression(), !2495)
    #dbg_value(i32 %73, !2476, !DIExpression(), !2495)
  %block_x259 = getelementptr inbounds i8, ptr %currMB, i64 32
  %mv_info266 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %74 = sext i32 %73 to i64, !dbg !2765
  br i1 %cmp249, label %for.body265.lr.ph, label %for.body309.lr.ph, !dbg !2766

for.body265.lr.ph:                                ; preds = %if.else247, %for.inc292
  %75 = phi i8 [ %83, %for.inc292 ], [ %6, %if.else247 ]
  %indvars.iv640 = phi i64 [ %indvars.iv.next641, %for.inc292 ], [ %74, %if.else247 ]
    #dbg_value(i64 %indvars.iv640, !2476, !DIExpression(), !2495)
    #dbg_value(i32 poison, !2475, !DIExpression(), !2495)
  %76 = load i32, ptr %block_x259, align 8, !dbg !2767
    #dbg_value(i32 %76, !2475, !DIExpression(), !2495)
  %77 = sext i32 %76 to i64, !dbg !2773
  br label %for.body265, !dbg !2773

for.body265:                                      ; preds = %for.body265.lr.ph, %for.body265
  %78 = phi i8 [ %75, %for.body265.lr.ph ], [ %83, %for.body265 ], !dbg !2774
  %indvars.iv636 = phi i64 [ %77, %for.body265.lr.ph ], [ %indvars.iv.next637, %for.body265 ]
    #dbg_value(i64 %indvars.iv636, !2475, !DIExpression(), !2495)
  %79 = load ptr, ptr %mv_info266, align 8, !dbg !2777
  %arrayidx268 = getelementptr inbounds ptr, ptr %79, i64 %indvars.iv640, !dbg !2778
  %80 = load ptr, ptr %arrayidx268, align 8, !dbg !2778
  %arrayidx270 = getelementptr inbounds %struct.pic_motion_params, ptr %80, i64 %indvars.iv636, !dbg !2778
    #dbg_value(ptr %arrayidx270, !2480, !DIExpression(), !2495)
  store ptr null, ptr %arrayidx270, align 8, !dbg !2779
  %idxprom274 = sext i8 %78 to i64, !dbg !2780
  %arrayidx275 = getelementptr inbounds ptr, ptr %4, i64 %idxprom274, !dbg !2780
  %81 = load ptr, ptr %arrayidx275, align 8, !dbg !2780
  %arrayidx277 = getelementptr inbounds i8, ptr %arrayidx270, i64 8, !dbg !2781
  store ptr %81, ptr %arrayidx277, align 8, !dbg !2782
  %mv278 = getelementptr inbounds i8, ptr %arrayidx270, i64 16, !dbg !2783
  store i32 0, ptr %mv278, align 8, !dbg !2784
  %arrayidx281 = getelementptr inbounds i8, ptr %arrayidx270, i64 20, !dbg !2785
  %82 = load i32, ptr %pmvl1, align 4, !dbg !2786
  store i32 %82, ptr %arrayidx281, align 4, !dbg !2786
  %ref_idx282 = getelementptr inbounds i8, ptr %arrayidx270, i64 24, !dbg !2787
  store i8 -1, ptr %ref_idx282, align 8, !dbg !2788
  %83 = load i8, ptr %l1_rFrame, align 1, !dbg !2789
  %arrayidx285 = getelementptr inbounds i8, ptr %arrayidx270, i64 25, !dbg !2790
  store i8 %83, ptr %arrayidx285, align 1, !dbg !2791
  %84 = load ptr, ptr %mv_info266, align 8, !dbg !2792
  %arrayidx288 = getelementptr inbounds ptr, ptr %84, i64 %indvars.iv640, !dbg !2793
    #dbg_value(ptr %arrayidx288, !2632, !DIExpression(), !2794)
    #dbg_value(ptr %arrayidx270, !2640, !DIExpression(), !2794)
    #dbg_value(i64 %indvars.iv636, !2641, !DIExpression(), !2794)
  %incdec.ptr.i586 = getelementptr inbounds i8, ptr %arrayidx288, i64 8, !dbg !2796
    #dbg_value(ptr %incdec.ptr.i586, !2632, !DIExpression(), !2794)
  %85 = load ptr, ptr %arrayidx288, align 8, !dbg !2797
  %86 = add nsw i64 %indvars.iv636, 1, !dbg !2798
  %arrayidx.i589 = getelementptr inbounds %struct.pic_motion_params, ptr %85, i64 %86, !dbg !2799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i589, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false), !dbg !2800
  %87 = load ptr, ptr %incdec.ptr.i586, align 8, !dbg !2801
  %arrayidx2.i591 = getelementptr inbounds %struct.pic_motion_params, ptr %87, i64 %indvars.iv636, !dbg !2802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i591, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false), !dbg !2803
  %88 = load ptr, ptr %incdec.ptr.i586, align 8, !dbg !2804
  %arrayidx5.i592 = getelementptr inbounds %struct.pic_motion_params, ptr %88, i64 %86, !dbg !2805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i592, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx270, i64 32, i1 false), !dbg !2806
  %indvars.iv.next637 = add nsw i64 %indvars.iv636, 2, !dbg !2807
    #dbg_value(i64 %indvars.iv.next637, !2475, !DIExpression(), !2495)
  %89 = load i32, ptr %block_x259, align 8, !dbg !2808
  %90 = add nsw i32 %89, 2, !dbg !2809
  %91 = sext i32 %90 to i64, !dbg !2809
  %cmp263 = icmp slt i64 %indvars.iv636, %91, !dbg !2809
  br i1 %cmp263, label %for.body265, label %for.inc292, !dbg !2773, !llvm.loop !2810

for.inc292:                                       ; preds = %for.body265
  %.pre663 = load i32, ptr %block_y252, align 4, !dbg !2812
  %indvars.iv.next641 = add nsw i64 %indvars.iv640, 2, !dbg !2813
    #dbg_value(i64 %indvars.iv.next641, !2476, !DIExpression(), !2495)
  %92 = add nsw i32 %.pre663, 2, !dbg !2814
  %93 = sext i32 %92 to i64, !dbg !2814
  %cmp256 = icmp slt i64 %indvars.iv640, %93, !dbg !2814
  br i1 %cmp256, label %for.body265.lr.ph, label %if.end344, !dbg !2815, !llvm.loop !2816

for.body309.lr.ph:                                ; preds = %if.else247, %for.inc339
  %94 = phi i8 [ %105, %for.inc339 ], [ %6, %if.else247 ]
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %for.inc339 ], [ %74, %if.else247 ]
    #dbg_value(i64 %indvars.iv633, !2476, !DIExpression(), !2495)
    #dbg_value(i32 poison, !2475, !DIExpression(), !2495)
  %95 = load i32, ptr %block_x259, align 8, !dbg !2818
    #dbg_value(i32 %95, !2475, !DIExpression(), !2495)
  %96 = sext i32 %95 to i64, !dbg !2824
  br label %for.body309, !dbg !2824

for.body309:                                      ; preds = %for.body309.lr.ph, %for.body309
  %97 = phi i8 [ %94, %for.body309.lr.ph ], [ %105, %for.body309 ], !dbg !2825
  %indvars.iv = phi i64 [ %96, %for.body309.lr.ph ], [ %indvars.iv.next, %for.body309 ]
    #dbg_value(i64 %indvars.iv, !2475, !DIExpression(), !2495)
  %98 = load ptr, ptr %mv_info266, align 8, !dbg !2828
  %arrayidx312 = getelementptr inbounds ptr, ptr %98, i64 %indvars.iv633, !dbg !2829
  %99 = load ptr, ptr %arrayidx312, align 8, !dbg !2829
  %arrayidx314 = getelementptr inbounds %struct.pic_motion_params, ptr %99, i64 %indvars.iv, !dbg !2829
    #dbg_value(ptr %arrayidx314, !2480, !DIExpression(), !2495)
  %100 = load i8, ptr %l0_rFrame, align 1, !dbg !2830
  %idxprom316 = sext i8 %100 to i64, !dbg !2831
  %arrayidx317 = getelementptr inbounds ptr, ptr %3, i64 %idxprom316, !dbg !2831
  %101 = load ptr, ptr %arrayidx317, align 8, !dbg !2831
  store ptr %101, ptr %arrayidx314, align 8, !dbg !2832
  %idxprom321 = sext i8 %97 to i64, !dbg !2833
  %arrayidx322 = getelementptr inbounds ptr, ptr %4, i64 %idxprom321, !dbg !2833
  %102 = load ptr, ptr %arrayidx322, align 8, !dbg !2833
  %arrayidx324 = getelementptr inbounds i8, ptr %arrayidx314, i64 8, !dbg !2834
  store ptr %102, ptr %arrayidx324, align 8, !dbg !2835
  %mv325 = getelementptr inbounds i8, ptr %arrayidx314, i64 16, !dbg !2836
  %103 = load i32, ptr %pmvl0, align 4, !dbg !2837
  store i32 %103, ptr %mv325, align 8, !dbg !2837
  %arrayidx328 = getelementptr inbounds i8, ptr %arrayidx314, i64 20, !dbg !2838
  %104 = load i32, ptr %pmvl1, align 4, !dbg !2839
  store i32 %104, ptr %arrayidx328, align 4, !dbg !2839
  %ref_idx329 = getelementptr inbounds i8, ptr %arrayidx314, i64 24, !dbg !2840
  store i8 %100, ptr %ref_idx329, align 8, !dbg !2841
  %105 = load i8, ptr %l1_rFrame, align 1, !dbg !2842
  %arrayidx332 = getelementptr inbounds i8, ptr %arrayidx314, i64 25, !dbg !2843
  store i8 %105, ptr %arrayidx332, align 1, !dbg !2844
  %106 = load ptr, ptr %mv_info266, align 8, !dbg !2845
  %arrayidx335 = getelementptr inbounds ptr, ptr %106, i64 %indvars.iv633, !dbg !2846
    #dbg_value(ptr %arrayidx335, !2632, !DIExpression(), !2847)
    #dbg_value(ptr %arrayidx314, !2640, !DIExpression(), !2847)
    #dbg_value(i64 %indvars.iv, !2641, !DIExpression(), !2847)
  %incdec.ptr.i593 = getelementptr inbounds i8, ptr %arrayidx335, i64 8, !dbg !2849
    #dbg_value(ptr %incdec.ptr.i593, !2632, !DIExpression(), !2847)
  %107 = load ptr, ptr %arrayidx335, align 8, !dbg !2850
  %108 = add nsw i64 %indvars.iv, 1, !dbg !2851
  %arrayidx.i596 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %108, !dbg !2852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx.i596, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false), !dbg !2853
  %109 = load ptr, ptr %incdec.ptr.i593, align 8, !dbg !2854
  %arrayidx2.i598 = getelementptr inbounds %struct.pic_motion_params, ptr %109, i64 %indvars.iv, !dbg !2855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx2.i598, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false), !dbg !2856
  %110 = load ptr, ptr %incdec.ptr.i593, align 8, !dbg !2857
  %arrayidx5.i599 = getelementptr inbounds %struct.pic_motion_params, ptr %110, i64 %108, !dbg !2858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %arrayidx5.i599, ptr noundef nonnull readonly align 8 dereferenceable(32) %arrayidx314, i64 32, i1 false), !dbg !2859
  %indvars.iv.next = add nsw i64 %indvars.iv, 2, !dbg !2860
    #dbg_value(i64 %indvars.iv.next, !2475, !DIExpression(), !2495)
  %111 = load i32, ptr %block_x259, align 8, !dbg !2861
  %112 = add nsw i32 %111, 2, !dbg !2862
  %113 = sext i32 %112 to i64, !dbg !2862
  %cmp307 = icmp slt i64 %indvars.iv, %113, !dbg !2862
  br i1 %cmp307, label %for.body309, label %for.inc339, !dbg !2824, !llvm.loop !2863

for.inc339:                                       ; preds = %for.body309
  %.pre = load i32, ptr %block_y252, align 4, !dbg !2865
  %indvars.iv.next634 = add nsw i64 %indvars.iv633, 2, !dbg !2866
    #dbg_value(i64 %indvars.iv.next634, !2476, !DIExpression(), !2495)
  %114 = add nsw i32 %.pre, 2, !dbg !2867
  %115 = sext i32 %114 to i64, !dbg !2867
  %cmp300 = icmp slt i64 %indvars.iv633, %115, !dbg !2867
  br i1 %cmp300, label %for.body309.lr.ph, label %if.end344, !dbg !2868, !llvm.loop !2869

if.end344:                                        ; preds = %for.inc339, %for.inc292, %for.inc244, %for.inc196
  %pred_dir.1 = phi i32 [ 2, %for.inc196 ], [ 0, %for.inc244 ], [ 1, %for.inc292 ], [ 2, %for.inc339 ], !dbg !2871
    #dbg_value(i32 %pred_dir.1, !2484, !DIExpression(), !2495)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7, !dbg !2872
  br label %if.end345

if.end345:                                        ; preds = %if.end144, %if.end344
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !2873
  %116 = load i32, ptr %cbp, align 4, !dbg !2873
  %cmp346 = icmp eq i32 %116, 0, !dbg !2875
  br i1 %cmp346, label %if.then348, label %if.else385, !dbg !2876

if.then348:                                       ; preds = %if.end345
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48, !dbg !2877
  %117 = load i32, ptr %pix_y, align 8, !dbg !2877
  %idxprom349 = sext i32 %117 to i64, !dbg !2879
  %arrayidx350 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom349, !dbg !2879
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !2880
  %118 = load ptr, ptr %mb_pred, align 8, !dbg !2880
  %idxprom351 = zext i32 %curr_plane to i64, !dbg !2881
  %arrayidx352 = getelementptr inbounds ptr, ptr %118, i64 %idxprom351, !dbg !2881
  %119 = load ptr, ptr %arrayidx352, align 8, !dbg !2881
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44, !dbg !2882
  %120 = load i32, ptr %pix_x, align 4, !dbg !2882
  call void @copy_image_data_16x16(ptr noundef %arrayidx350, ptr noundef %119, i32 noundef %120, i32 noundef 0) #7, !dbg !2883
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !2884
  %121 = load i32, ptr %chroma_format_idc, align 4, !dbg !2884
  switch i32 %121, label %if.then359 [
    i32 0, label %if.end386
    i32 3, label %if.end386
  ], !dbg !2886

if.then359:                                       ; preds = %if.then348
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136, !dbg !2887
  %122 = load ptr, ptr %imgUV, align 8, !dbg !2887
  %123 = load ptr, ptr %122, align 8, !dbg !2889
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56, !dbg !2890
  %124 = load i32, ptr %pix_c_y, align 8, !dbg !2890
  %idxprom361 = sext i32 %124 to i64, !dbg !2889
  %arrayidx362 = getelementptr inbounds ptr, ptr %123, i64 %idxprom361, !dbg !2889
  %125 = load ptr, ptr %mb_pred, align 8, !dbg !2891
  %arrayidx364 = getelementptr inbounds i8, ptr %125, i64 8, !dbg !2892
  %126 = load ptr, ptr %arrayidx364, align 8, !dbg !2892
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52, !dbg !2893
  %127 = load i32, ptr %pix_c_x, align 4, !dbg !2893
  %arrayidx365 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !2894
  %128 = load i32, ptr %arrayidx365, align 4, !dbg !2894
  %arrayidx369 = getelementptr inbounds i8, ptr %1, i64 849136, !dbg !2895
  %129 = load i32, ptr %arrayidx369, align 4, !dbg !2895
  call void @copy_image_data(ptr noundef %arrayidx362, ptr noundef %126, i32 noundef %127, i32 noundef 0, i32 noundef %128, i32 noundef %129) #7, !dbg !2896
  %130 = load ptr, ptr %imgUV, align 8, !dbg !2897
  %arrayidx371 = getelementptr inbounds i8, ptr %130, i64 8, !dbg !2898
  %131 = load ptr, ptr %arrayidx371, align 8, !dbg !2898
  %132 = load i32, ptr %pix_c_y, align 8, !dbg !2899
  %idxprom373 = sext i32 %132 to i64, !dbg !2898
  %arrayidx374 = getelementptr inbounds ptr, ptr %131, i64 %idxprom373, !dbg !2898
  %133 = load ptr, ptr %mb_pred, align 8, !dbg !2900
  %arrayidx376 = getelementptr inbounds i8, ptr %133, i64 16, !dbg !2901
  %134 = load ptr, ptr %arrayidx376, align 8, !dbg !2901
  %135 = load i32, ptr %pix_c_x, align 4, !dbg !2902
  %136 = load i32, ptr %arrayidx365, align 4, !dbg !2903
  %137 = load i32, ptr %arrayidx369, align 4, !dbg !2904
  call void @copy_image_data(ptr noundef %arrayidx374, ptr noundef %134, i32 noundef %135, i32 noundef 0, i32 noundef %136, i32 noundef %137) #7, !dbg !2905
  br label %if.end386, !dbg !2906

if.else385:                                       ; preds = %if.end345
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !2907
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !2909
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !2910
  br label %if.end386

if.end386:                                        ; preds = %if.then348, %if.then348, %if.then359, %if.else385
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !2911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !2911
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !2911
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !2911
  ret i32 1, !dbg !2912
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2913 void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2916 i32 @get_colocated_info_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4spatial(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %currImg, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !2919 {
entry:
  %l0_rFrame = alloca i8, align 1, !DIAssignID !2958
    #dbg_assign(i1 undef, !2925, !DIExpression(), !2958, ptr %l0_rFrame, !DIExpression(), !2959)
  %l1_rFrame = alloca i8, align 1, !DIAssignID !2960
    #dbg_assign(i1 undef, !2926, !DIExpression(), !2960, ptr %l1_rFrame, !DIExpression(), !2959)
  %pmvl0 = alloca %struct.MotionVector, align 4, !DIAssignID !2961
    #dbg_assign(i1 undef, !2927, !DIExpression(), !2961, ptr %pmvl0, !DIExpression(), !2959)
  %pmvl1 = alloca %struct.MotionVector, align 4, !DIAssignID !2962
    #dbg_assign(i1 undef, !2928, !DIExpression(), !2962, ptr %pmvl1, !DIExpression(), !2959)
    #dbg_value(ptr %currMB, !2921, !DIExpression(), !2959)
    #dbg_value(i32 %curr_plane, !2922, !DIExpression(), !2959)
    #dbg_value(ptr %currImg, !2923, !DIExpression(), !2959)
    #dbg_value(ptr %dec_picture, !2924, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !2963
  store i8 -1, ptr %l0_rFrame, align 1, !dbg !2964, !DIAssignID !2965
    #dbg_assign(i8 -1, !2925, !DIExpression(), !2965, ptr %l0_rFrame, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !2963
  store i8 -1, ptr %l1_rFrame, align 1, !dbg !2966, !DIAssignID !2967
    #dbg_assign(i8 -1, !2926, !DIExpression(), !2967, ptr %l1_rFrame, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !2968
  store i32 0, ptr %pmvl0, align 4, !dbg !2969, !DIAssignID !2970
    #dbg_assign(i32 0, !2927, !DIExpression(), !2970, ptr %pmvl0, !DIExpression(), !2959)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !2968
  store i32 0, ptr %pmvl1, align 4, !dbg !2971, !DIAssignID !2972
    #dbg_assign(i32 0, !2928, !DIExpression(), !2972, ptr %pmvl1, !DIExpression(), !2959)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2973
    #dbg_value(ptr %0, !2931, !DIExpression(), !2959)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2974
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !2974
    #dbg_value(ptr %1, !2932, !DIExpression(), !2959)
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !2975
  %2 = load i16, ptr %list_offset2, align 2, !dbg !2975
  %conv = sext i16 %2 to i64, !dbg !2976
    #dbg_value(i16 %2, !2934, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2959)
  %listX = getelementptr inbounds i8, ptr %0, i64 264, !dbg !2977
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv, !dbg !2978
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2978
    #dbg_value(ptr %3, !2935, !DIExpression(), !2959)
  %add4 = add nsw i64 %conv, 1, !dbg !2979
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4, !dbg !2980
  %4 = load ptr, ptr %arrayidx6, align 8, !dbg !2980
    #dbg_value(ptr %4, !2936, !DIExpression(), !2959)
    #dbg_value(i32 0, !2937, !DIExpression(), !2959)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !2981
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7, !dbg !2982
    #dbg_value(i32 0, !2930, !DIExpression(), !2959)
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mv_info22 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  %block_y_aff = getelementptr inbounds i8, ptr %currMB, i64 40
    #dbg_value(i32 0, !2930, !DIExpression(), !2959)
    #dbg_value(i32 poison, !2937, !DIExpression(), !2959)
  br label %for.body, !dbg !2983

for.body:                                         ; preds = %entry, %for.cond241.preheader
  %indvars.iv443 = phi i64 [ 4, %entry ], [ %indvars.iv.next444, %for.cond241.preheader ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond241.preheader ]
  %block8x8.0432 = phi i32 [ 0, %entry ], [ %inc260, %for.cond241.preheader ]
    #dbg_value(i32 %block8x8.0432, !2930, !DIExpression(), !2959)
    #dbg_value(i32 %block8x8.0432, !2938, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2984)
    #dbg_value(i32 %block8x8.0432, !2942, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_plus_uconst, 4, DW_OP_stack_value), !2984)
    #dbg_value(i32 %block8x8.0432, !2929, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2959)
    #dbg_value(i32 %block8x8.0432, !2929, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2959)
    #dbg_value(i32 poison, !2937, !DIExpression(), !2959)
  br label %for.body12, !dbg !2985

for.cond241.preheader:                            ; preds = %if.end240
    #dbg_value(i32 %block8x8.0432, !2929, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !2959)
    #dbg_value(i64 %indvars.iv, !2929, !DIExpression(), !2959)
  %arrayidx247 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv, !dbg !2986
  %5 = load i8, ptr %arrayidx247, align 4, !dbg !2986
  %conv248 = zext i8 %5 to i32, !dbg !2986
  %and249 = and i32 %conv248, 3, !dbg !2987
    #dbg_value(i32 %and249, !2953, !DIExpression(), !2988)
  %shr254 = lshr i32 %conv248, 2, !dbg !2989
  %and255 = and i32 %shr254, 3, !dbg !2990
    #dbg_value(i32 %and255, !2957, !DIExpression(), !2988)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249, i32 noundef %and255, i32 noundef 4, i32 noundef 4) #7, !dbg !2991
  %indvars.iv.next439 = or disjoint i64 %indvars.iv, 1, !dbg !2992
    #dbg_value(i64 %indvars.iv.next439, !2929, !DIExpression(), !2959)
  %arrayidx247.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439, !dbg !2986
  %6 = load i8, ptr %arrayidx247.1, align 1, !dbg !2986
  %conv248.1 = zext i8 %6 to i32, !dbg !2986
  %and249.1 = and i32 %conv248.1, 3, !dbg !2987
    #dbg_value(i32 %and249.1, !2953, !DIExpression(), !2988)
  %shr254.1 = lshr i32 %conv248.1, 2, !dbg !2989
  %and255.1 = and i32 %shr254.1, 3, !dbg !2990
    #dbg_value(i32 %and255.1, !2957, !DIExpression(), !2988)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.1, i32 noundef %and255.1, i32 noundef 4, i32 noundef 4) #7, !dbg !2991
  %indvars.iv.next439.1 = or disjoint i64 %indvars.iv, 2, !dbg !2992
    #dbg_value(i64 %indvars.iv.next439.1, !2929, !DIExpression(), !2959)
  %arrayidx247.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439.1, !dbg !2986
  %7 = load i8, ptr %arrayidx247.2, align 2, !dbg !2986
  %conv248.2 = zext i8 %7 to i32, !dbg !2986
  %and249.2 = and i32 %conv248.2, 3, !dbg !2987
    #dbg_value(i32 %and249.2, !2953, !DIExpression(), !2988)
  %shr254.2 = lshr i32 %conv248.2, 2, !dbg !2989
  %and255.2 = and i32 %shr254.2, 3, !dbg !2990
    #dbg_value(i32 %and255.2, !2957, !DIExpression(), !2988)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.2, i32 noundef %and255.2, i32 noundef 4, i32 noundef 4) #7, !dbg !2991
  %indvars.iv.next439.2 = or disjoint i64 %indvars.iv, 3, !dbg !2992
    #dbg_value(i64 %indvars.iv.next439.2, !2929, !DIExpression(), !2959)
  %arrayidx247.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next439.2, !dbg !2986
  %8 = load i8, ptr %arrayidx247.3, align 1, !dbg !2986
  %conv248.3 = zext i8 %8 to i32, !dbg !2986
  %and249.3 = and i32 %conv248.3, 3, !dbg !2987
    #dbg_value(i32 %and249.3, !2953, !DIExpression(), !2988)
  %shr254.3 = lshr i32 %conv248.3, 2, !dbg !2989
  %and255.3 = and i32 %shr254.3, 3, !dbg !2990
    #dbg_value(i32 %and255.3, !2957, !DIExpression(), !2988)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef nonnull %dec_picture, i32 noundef %pred_dir.3, i32 noundef %and249.3, i32 noundef %and255.3, i32 noundef 4, i32 noundef 4) #7, !dbg !2991
    #dbg_value(i64 %indvars.iv, !2929, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2959)
  %inc260 = add nuw nsw i32 %block8x8.0432, 1, !dbg !2993
    #dbg_value(i32 %inc260, !2930, !DIExpression(), !2959)
    #dbg_value(i32 poison, !2937, !DIExpression(), !2959)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4, !dbg !2983
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 4, !dbg !2983
  %exitcond446.not = icmp eq i32 %inc260, 4, !dbg !2994
  br i1 %exitcond446.not, label %for.end261, label %for.body, !dbg !2983, !llvm.loop !2995

for.body12:                                       ; preds = %for.body, %if.end240
  %indvars.iv433 = phi i64 [ %indvars.iv, %for.body ], [ %indvars.iv.next434, %if.end240 ]
    #dbg_value(i64 %indvars.iv433, !2929, !DIExpression(), !2959)
  %arrayidx14 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv433, !dbg !2997
  %9 = load i8, ptr %arrayidx14, align 1, !dbg !2997
  %conv15 = zext i8 %9 to i32, !dbg !2997
  %and = and i32 %conv15, 3, !dbg !2998
    #dbg_value(i32 %and, !2943, !DIExpression(), !2999)
  %shr = lshr i32 %conv15, 2, !dbg !3000
  %and19 = and i32 %shr, 3, !dbg !3001
    #dbg_value(i32 %and19, !2947, !DIExpression(), !2999)
  %10 = load i32, ptr %block_x, align 8, !dbg !3002
  %add20 = add nsw i32 %and, %10, !dbg !3003
    #dbg_value(i32 %add20, !2948, !DIExpression(), !2999)
  %11 = load i32, ptr %block_y, align 4, !dbg !3004
  %add21 = add nsw i32 %and19, %11, !dbg !3005
    #dbg_value(i32 %add21, !2949, !DIExpression(), !2999)
  %12 = load ptr, ptr %mv_info22, align 8, !dbg !3006
  %idxprom23 = sext i32 %add21 to i64, !dbg !3007
  %arrayidx24 = getelementptr inbounds ptr, ptr %12, i64 %idxprom23, !dbg !3007
  %13 = load ptr, ptr %arrayidx24, align 8, !dbg !3007
  %idxprom25 = sext i32 %add20 to i64, !dbg !3007
  %arrayidx26 = getelementptr inbounds %struct.pic_motion_params, ptr %13, i64 %idxprom25, !dbg !3007
    #dbg_value(ptr %arrayidx26, !2933, !DIExpression(), !2959)
  %14 = load i8, ptr %l0_rFrame, align 1, !dbg !3008
  %cmp28 = icmp eq i8 %14, 0, !dbg !3009
  %15 = load i8, ptr %l1_rFrame, align 1
  %cmp31 = icmp eq i8 %15, 0
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp31, !dbg !3010
  br i1 %or.cond, label %if.then, label %if.else150, !dbg !3010

if.then:                                          ; preds = %for.body12
  %16 = load ptr, ptr %4, align 8, !dbg !3011
  %17 = load i32, ptr %block_y_aff, align 8, !dbg !3012
  %add34 = add nsw i32 %17, %and19, !dbg !3013
  %call = call i32 @get_colocated_info_4x4(ptr noundef nonnull %currMB, ptr noundef %16, i32 noundef %add20, i32 noundef %add34) #7, !dbg !3014
  %cmp35 = icmp eq i32 %call, 0, !dbg !3015
    #dbg_value(i1 %cmp35, !2950, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3016)
  %18 = load i8, ptr %l1_rFrame, align 1, !dbg !3017
  %cmp38 = icmp eq i8 %18, -1, !dbg !3019
  br i1 %cmp38, label %if.then40, label %if.else67, !dbg !3020

if.then40:                                        ; preds = %if.then
  br i1 %cmp35, label %if.then41, label %if.else, !dbg !3021

if.then41:                                        ; preds = %if.then40
  %19 = load ptr, ptr %3, align 8, !dbg !3023
  store ptr %19, ptr %arrayidx26, align 8, !dbg !3026
  %arrayidx45 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3027
  %arrayidx51 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3028
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %arrayidx45, i8 0, i64 17, i1 false), !dbg !3029
  store i8 -1, ptr %arrayidx51, align 1, !dbg !3030
  br label %if.end240, !dbg !3031

if.else:                                          ; preds = %if.then40
  %20 = load i8, ptr %l0_rFrame, align 1, !dbg !3032
  %idxprom53 = sext i8 %20 to i64, !dbg !3034
  %arrayidx54 = getelementptr inbounds ptr, ptr %3, i64 %idxprom53, !dbg !3034
  %21 = load ptr, ptr %arrayidx54, align 8, !dbg !3034
  store ptr %21, ptr %arrayidx26, align 8, !dbg !3035
  %arrayidx58 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3036
  store ptr null, ptr %arrayidx58, align 8, !dbg !3037
  %mv59 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3038
  %22 = load i32, ptr %pmvl0, align 4, !dbg !3039
  store i32 %22, ptr %mv59, align 8, !dbg !3039
  %arrayidx62 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3040
  store i32 0, ptr %arrayidx62, align 4, !dbg !3041
  %ref_idx63 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3042
  store i8 %20, ptr %ref_idx63, align 8, !dbg !3043
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3044
  store i8 -1, ptr %arrayidx66, align 1, !dbg !3045
  br label %if.end240

if.else67:                                        ; preds = %if.then
  %23 = load i8, ptr %l0_rFrame, align 1, !dbg !3046
  %cmp69 = icmp eq i8 %23, -1, !dbg !3048
  br i1 %cmp69, label %if.then71, label %if.else100, !dbg !3049

if.then71:                                        ; preds = %if.else67
  br i1 %cmp35, label %if.then73, label %if.else85, !dbg !3050

if.then73:                                        ; preds = %if.then71
  %24 = load ptr, ptr %4, align 8, !dbg !3052
  %arrayidx76 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3055
  store ptr %24, ptr %arrayidx76, align 8, !dbg !3056
  %mv77 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3057
  store i32 0, ptr %mv77, align 8, !dbg !3058
  %arrayidx80 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3059
  store i32 0, ptr %arrayidx80, align 4, !dbg !3060
  %ref_idx81 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3061
  store i8 -1, ptr %ref_idx81, align 8, !dbg !3062
  %arrayidx84 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3063
  store i8 0, ptr %arrayidx84, align 1, !dbg !3064
  br label %if.end240, !dbg !3065

if.else85:                                        ; preds = %if.then71
  %idxprom87 = sext i8 %18 to i64, !dbg !3066
  %arrayidx88 = getelementptr inbounds ptr, ptr %4, i64 %idxprom87, !dbg !3066
  %25 = load ptr, ptr %arrayidx88, align 8, !dbg !3066
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3068
  store ptr %25, ptr %arrayidx90, align 8, !dbg !3069
  %mv91 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3070
  store i32 0, ptr %mv91, align 8, !dbg !3071
  %arrayidx94 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3072
  %26 = load i32, ptr %pmvl1, align 4, !dbg !3073
  store i32 %26, ptr %arrayidx94, align 4, !dbg !3073
  %ref_idx95 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3074
  store i8 -1, ptr %ref_idx95, align 8, !dbg !3075
  %27 = load i8, ptr %l1_rFrame, align 1, !dbg !3076
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3077
  store i8 %27, ptr %arrayidx98, align 1, !dbg !3078
  br label %if.end240

if.else100:                                       ; preds = %if.else67
  %cmp102 = icmp eq i8 %23, 0, !dbg !3079
  %or.cond303 = select i1 %cmp102, i1 %cmp35, i1 false, !dbg !3082
  %idxprom115 = sext i8 %23 to i64, !dbg !3082
  %28 = load i32, ptr %pmvl0, align 4, !dbg !3082
  %.sink448.in.idx = select i1 %or.cond303, i64 0, i64 %idxprom115, !dbg !3082
  %.sink448.in = getelementptr inbounds ptr, ptr %3, i64 %.sink448.in.idx, !dbg !3082
  %.sink447 = select i1 %or.cond303, i32 0, i32 %28, !dbg !3082
  %.sink448 = load ptr, ptr %.sink448.in, align 8, !dbg !3083
  store ptr %.sink448, ptr %arrayidx26, align 8, !dbg !3083
  %29 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3083
  store i32 %.sink447, ptr %29, align 8, !dbg !3083
  %30 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3083
  store i8 %23, ptr %30, align 8, !dbg !3083
  %31 = load i8, ptr %l1_rFrame, align 1, !dbg !3084
  %cmp125 = icmp eq i8 %31, 0, !dbg !3086
  %or.cond304 = select i1 %cmp125, i1 %cmp35, i1 false, !dbg !3087
  br i1 %or.cond304, label %if.then129, label %if.else137, !dbg !3087

if.then129:                                       ; preds = %if.else100
  %32 = load ptr, ptr %4, align 8, !dbg !3088
  %arrayidx132 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3090
  store ptr %32, ptr %arrayidx132, align 8, !dbg !3091
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3092
  store i32 0, ptr %arrayidx134, align 4, !dbg !3093
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3094
  store i8 0, ptr %arrayidx136, align 1, !dbg !3095
  br label %if.end240, !dbg !3096

if.else137:                                       ; preds = %if.else100
  %idxprom139 = sext i8 %31 to i64, !dbg !3097
  %arrayidx140 = getelementptr inbounds ptr, ptr %4, i64 %idxprom139, !dbg !3097
  %33 = load ptr, ptr %arrayidx140, align 8, !dbg !3097
  %arrayidx142 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3099
  store ptr %33, ptr %arrayidx142, align 8, !dbg !3100
  %arrayidx144 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3101
  %34 = load i32, ptr %pmvl1, align 4, !dbg !3102
  store i32 %34, ptr %arrayidx144, align 4, !dbg !3102
  %arrayidx146 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3103
  store i8 %31, ptr %arrayidx146, align 1, !dbg !3104
  br label %if.end240

if.else150:                                       ; preds = %for.body12
    #dbg_value(ptr %arrayidx26, !2933, !DIExpression(), !2959)
  %cmp157 = icmp slt i8 %14, 0, !dbg !3105
  %cmp161 = icmp slt i8 %15, 0
  %or.cond305 = select i1 %cmp157, i1 %cmp161, i1 false, !dbg !3108
  br i1 %or.cond305, label %if.then163, label %if.else178, !dbg !3108

if.then163:                                       ; preds = %if.else150
    #dbg_value(i32 2, !2937, !DIExpression(), !2959)
  %35 = load ptr, ptr %3, align 8, !dbg !3109
  store ptr %35, ptr %arrayidx26, align 8, !dbg !3111
  %36 = load ptr, ptr %4, align 8, !dbg !3112
  %arrayidx169 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3113
  store ptr %36, ptr %arrayidx169, align 8, !dbg !3114
  %mv170 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %mv170, i8 0, i64 10, i1 false), !dbg !3116
  br label %if.end240, !dbg !3117

if.else178:                                       ; preds = %if.else150
  %cmp180 = icmp eq i8 %15, -1, !dbg !3118
  br i1 %cmp180, label %if.then182, label %if.else198, !dbg !3120

if.then182:                                       ; preds = %if.else178
    #dbg_value(i32 0, !2937, !DIExpression(), !2959)
  %idxprom184 = sext i8 %14 to i64, !dbg !3121
  %arrayidx185 = getelementptr inbounds ptr, ptr %3, i64 %idxprom184, !dbg !3121
  %37 = load ptr, ptr %arrayidx185, align 8, !dbg !3121
  store ptr %37, ptr %arrayidx26, align 8, !dbg !3123
  %arrayidx189 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3124
  store ptr null, ptr %arrayidx189, align 8, !dbg !3125
  %mv190 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3126
  %38 = load i32, ptr %pmvl0, align 4, !dbg !3127
  store i32 %38, ptr %mv190, align 8, !dbg !3127
  %arrayidx193 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3128
  store i32 0, ptr %arrayidx193, align 4, !dbg !3129
  %ref_idx194 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3130
  store i8 %14, ptr %ref_idx194, align 8, !dbg !3131
  %arrayidx197 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3132
  store i8 -1, ptr %arrayidx197, align 1, !dbg !3133
  br label %if.end240, !dbg !3134

if.else198:                                       ; preds = %if.else178
  %cmp200 = icmp eq i8 %14, -1, !dbg !3135
  br i1 %cmp200, label %if.then202, label %if.else218, !dbg !3137

if.then202:                                       ; preds = %if.else198
    #dbg_value(i32 1, !2937, !DIExpression(), !2959)
  store ptr null, ptr %arrayidx26, align 8, !dbg !3138
  %idxprom206 = sext i8 %15 to i64, !dbg !3140
  %arrayidx207 = getelementptr inbounds ptr, ptr %4, i64 %idxprom206, !dbg !3140
  %39 = load ptr, ptr %arrayidx207, align 8, !dbg !3140
  %arrayidx209 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3141
  store ptr %39, ptr %arrayidx209, align 8, !dbg !3142
  %mv210 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3143
  store i32 0, ptr %mv210, align 8, !dbg !3144
  %arrayidx213 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3145
  %40 = load i32, ptr %pmvl1, align 4, !dbg !3146
  store i32 %40, ptr %arrayidx213, align 4, !dbg !3146
  %ref_idx214 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3147
  store i8 -1, ptr %ref_idx214, align 8, !dbg !3148
  %41 = load i8, ptr %l1_rFrame, align 1, !dbg !3149
  %arrayidx217 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3150
  store i8 %41, ptr %arrayidx217, align 1, !dbg !3151
  br label %if.end240, !dbg !3152

if.else218:                                       ; preds = %if.else198
    #dbg_value(i32 2, !2937, !DIExpression(), !2959)
  %idxprom220 = sext i8 %14 to i64, !dbg !3153
  %arrayidx221 = getelementptr inbounds ptr, ptr %3, i64 %idxprom220, !dbg !3153
  %42 = load ptr, ptr %arrayidx221, align 8, !dbg !3153
  store ptr %42, ptr %arrayidx26, align 8, !dbg !3155
  %idxprom225 = sext i8 %15 to i64, !dbg !3156
  %arrayidx226 = getelementptr inbounds ptr, ptr %4, i64 %idxprom225, !dbg !3156
  %43 = load ptr, ptr %arrayidx226, align 8, !dbg !3156
  %arrayidx228 = getelementptr inbounds i8, ptr %arrayidx26, i64 8, !dbg !3157
  store ptr %43, ptr %arrayidx228, align 8, !dbg !3158
  %mv229 = getelementptr inbounds i8, ptr %arrayidx26, i64 16, !dbg !3159
  %44 = load i32, ptr %pmvl0, align 4, !dbg !3160
  store i32 %44, ptr %mv229, align 8, !dbg !3160
  %arrayidx232 = getelementptr inbounds i8, ptr %arrayidx26, i64 20, !dbg !3161
  %45 = load i32, ptr %pmvl1, align 4, !dbg !3162
  store i32 %45, ptr %arrayidx232, align 4, !dbg !3162
  %ref_idx233 = getelementptr inbounds i8, ptr %arrayidx26, i64 24, !dbg !3163
  store i8 %14, ptr %ref_idx233, align 8, !dbg !3164
  %46 = load i8, ptr %l1_rFrame, align 1, !dbg !3165
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx26, i64 25, !dbg !3166
  store i8 %46, ptr %arrayidx236, align 1, !dbg !3167
  br label %if.end240

if.end240:                                        ; preds = %if.else, %if.then41, %if.else85, %if.then73, %if.else137, %if.then129, %if.then163, %if.then202, %if.else218, %if.then182
  %pred_dir.3 = phi i32 [ 2, %if.then163 ], [ 0, %if.then182 ], [ 1, %if.then202 ], [ 2, %if.else218 ], [ 0, %if.else ], [ 0, %if.then41 ], [ 1, %if.else85 ], [ 1, %if.then73 ], [ 2, %if.else137 ], [ 2, %if.then129 ], !dbg !3168
    #dbg_value(i32 %pred_dir.3, !2937, !DIExpression(), !2959)
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1, !dbg !3169
    #dbg_value(i64 %indvars.iv.next434, !2929, !DIExpression(), !2959)
  %exitcond.not = icmp eq i64 %indvars.iv.next434, %indvars.iv443, !dbg !3170
  br i1 %exitcond.not, label %for.cond241.preheader, label %for.body12, !dbg !2985, !llvm.loop !3171

for.end261:                                       ; preds = %for.cond241.preheader
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !3173
  %47 = load i32, ptr %cbp, align 4, !dbg !3173
  %cmp262 = icmp eq i32 %47, 0, !dbg !3175
  br i1 %cmp262, label %if.then264, label %if.else301, !dbg !3176

if.then264:                                       ; preds = %for.end261
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48, !dbg !3177
  %48 = load i32, ptr %pix_y, align 8, !dbg !3177
  %idxprom265 = sext i32 %48 to i64, !dbg !3179
  %arrayidx266 = getelementptr inbounds ptr, ptr %currImg, i64 %idxprom265, !dbg !3179
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !3180
  %49 = load ptr, ptr %mb_pred, align 8, !dbg !3180
  %idxprom267 = zext i32 %curr_plane to i64, !dbg !3181
  %arrayidx268 = getelementptr inbounds ptr, ptr %49, i64 %idxprom267, !dbg !3181
  %50 = load ptr, ptr %arrayidx268, align 8, !dbg !3181
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44, !dbg !3182
  %51 = load i32, ptr %pix_x, align 4, !dbg !3182
  call void @copy_image_data_16x16(ptr noundef %arrayidx266, ptr noundef %50, i32 noundef %51, i32 noundef 0) #7, !dbg !3183
  %chroma_format_idc = getelementptr inbounds i8, ptr %dec_picture, i64 268, !dbg !3184
  %52 = load i32, ptr %chroma_format_idc, align 4, !dbg !3184
  switch i32 %52, label %if.then275 [
    i32 0, label %if.end302
    i32 3, label %if.end302
  ], !dbg !3186

if.then275:                                       ; preds = %if.then264
  %imgUV = getelementptr inbounds i8, ptr %dec_picture, i64 136, !dbg !3187
  %53 = load ptr, ptr %imgUV, align 8, !dbg !3187
  %54 = load ptr, ptr %53, align 8, !dbg !3189
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56, !dbg !3190
  %55 = load i32, ptr %pix_c_y, align 8, !dbg !3190
  %idxprom277 = sext i32 %55 to i64, !dbg !3189
  %arrayidx278 = getelementptr inbounds ptr, ptr %54, i64 %idxprom277, !dbg !3189
  %56 = load ptr, ptr %mb_pred, align 8, !dbg !3191
  %arrayidx280 = getelementptr inbounds i8, ptr %56, i64 8, !dbg !3192
  %57 = load ptr, ptr %arrayidx280, align 8, !dbg !3192
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52, !dbg !3193
  %58 = load i32, ptr %pix_c_x, align 4, !dbg !3193
  %arrayidx281 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !3194
  %59 = load i32, ptr %arrayidx281, align 4, !dbg !3194
  %arrayidx285 = getelementptr inbounds i8, ptr %1, i64 849136, !dbg !3195
  %60 = load i32, ptr %arrayidx285, align 4, !dbg !3195
  call void @copy_image_data(ptr noundef %arrayidx278, ptr noundef %57, i32 noundef %58, i32 noundef 0, i32 noundef %59, i32 noundef %60) #7, !dbg !3196
  %61 = load ptr, ptr %imgUV, align 8, !dbg !3197
  %arrayidx287 = getelementptr inbounds i8, ptr %61, i64 8, !dbg !3198
  %62 = load ptr, ptr %arrayidx287, align 8, !dbg !3198
  %63 = load i32, ptr %pix_c_y, align 8, !dbg !3199
  %idxprom289 = sext i32 %63 to i64, !dbg !3198
  %arrayidx290 = getelementptr inbounds ptr, ptr %62, i64 %idxprom289, !dbg !3198
  %64 = load ptr, ptr %mb_pred, align 8, !dbg !3200
  %arrayidx292 = getelementptr inbounds i8, ptr %64, i64 16, !dbg !3201
  %65 = load ptr, ptr %arrayidx292, align 8, !dbg !3201
  %66 = load i32, ptr %pix_c_x, align 4, !dbg !3202
  %67 = load i32, ptr %arrayidx281, align 4, !dbg !3203
  %68 = load i32, ptr %arrayidx285, align 4, !dbg !3204
  call void @copy_image_data(ptr noundef %arrayidx290, ptr noundef %65, i32 noundef %66, i32 noundef 0, i32 noundef %67, i32 noundef %68) #7, !dbg !3205
  br label %if.end302, !dbg !3206

if.else301:                                       ; preds = %for.end261
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !3207
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !3209
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !3210
  br label %if.end302

if.end302:                                        ; preds = %if.then264, %if.then264, %if.then275, %if.else301
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !3211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !3211
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !3211
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !3211
  ret i32 1, !dbg !3212
}

declare !dbg !3213 i32 @get_colocated_info_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_inter8x8(ptr noundef %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture) local_unnamed_addr #0 !dbg !3214 {
entry:
  %l0_rFrame = alloca i8, align 1, !DIAssignID !3274
    #dbg_assign(i1 undef, !3219, !DIExpression(), !3274, ptr %l0_rFrame, !DIExpression(), !3275)
  %l1_rFrame = alloca i8, align 1, !DIAssignID !3276
    #dbg_assign(i1 undef, !3220, !DIExpression(), !3276, ptr %l1_rFrame, !DIExpression(), !3275)
  %pmvl0 = alloca %struct.MotionVector, align 4, !DIAssignID !3277
    #dbg_assign(i1 undef, !3221, !DIExpression(), !3277, ptr %pmvl0, !DIExpression(), !3275)
  %pmvl1 = alloca %struct.MotionVector, align 4, !DIAssignID !3278
    #dbg_assign(i1 undef, !3222, !DIExpression(), !3278, ptr %pmvl1, !DIExpression(), !3275)
    #dbg_value(ptr %currMB, !3216, !DIExpression(), !3275)
    #dbg_value(i32 %curr_plane, !3217, !DIExpression(), !3275)
    #dbg_value(ptr %dec_picture, !3218, !DIExpression(), !3275)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !3279
  store i8 -1, ptr %l0_rFrame, align 1, !dbg !3280, !DIAssignID !3281
    #dbg_assign(i8 -1, !3219, !DIExpression(), !3281, ptr %l0_rFrame, !DIExpression(), !3275)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !3279
  store i8 -1, ptr %l1_rFrame, align 1, !dbg !3282, !DIAssignID !3283
    #dbg_assign(i8 -1, !3220, !DIExpression(), !3283, ptr %l1_rFrame, !DIExpression(), !3275)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !3284
  store i32 0, ptr %pmvl0, align 4, !dbg !3285, !DIAssignID !3286
    #dbg_assign(i32 0, !3221, !DIExpression(), !3286, ptr %pmvl0, !DIExpression(), !3275)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !3284
  store i32 0, ptr %pmvl1, align 4, !dbg !3287, !DIAssignID !3288
    #dbg_assign(i32 0, !3222, !DIExpression(), !3288, ptr %pmvl1, !DIExpression(), !3275)
  %0 = load ptr, ptr %currMB, align 8, !dbg !3289
    #dbg_value(ptr %0, !3227, !DIExpression(), !3275)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !3290
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !3290
    #dbg_value(ptr %1, !3228, !DIExpression(), !3275)
  %list_offset2 = getelementptr inbounds i8, ptr %currMB, i64 114, !dbg !3291
  %2 = load i16, ptr %list_offset2, align 2, !dbg !3291
  %conv = sext i16 %2 to i64, !dbg !3292
    #dbg_value(i16 %2, !3229, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3275)
  %listX = getelementptr inbounds i8, ptr %0, i64 264, !dbg !3293
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %conv, !dbg !3294
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !3294
    #dbg_value(ptr %3, !3230, !DIExpression(), !3275)
  %add4 = add nsw i64 %conv, 1, !dbg !3295
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %listX, i64 0, i64 %add4, !dbg !3296
  %4 = load ptr, ptr %arrayidx6, align 8, !dbg !3296
    #dbg_value(ptr %4, !3231, !DIExpression(), !3275)
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %currMB), !dbg !3297
  %direct_spatial_mv_pred_flag = getelementptr inbounds i8, ptr %0, i64 132, !dbg !3298
  %5 = load i32, ptr %direct_spatial_mv_pred_flag, align 4, !dbg !3298
  %tobool.not = icmp eq i32 %5, 0, !dbg !3300
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !3301

land.lhs.true:                                    ; preds = %entry
  %b8mode = getelementptr inbounds i8, ptr %currMB, i64 364, !dbg !3302
  %6 = load i8, ptr %b8mode, align 4, !dbg !3303
  %tobool9.not = icmp eq i8 %6, 0, !dbg !3303
  br i1 %tobool9.not, label %if.then, label %land.lhs.true10, !dbg !3304

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8, ptr %currMB, i64 365, !dbg !3305
  %7 = load i8, ptr %arrayidx12, align 1, !dbg !3305
  %tobool14.not = icmp eq i8 %7, 0, !dbg !3305
  br i1 %tobool14.not, label %if.then, label %land.lhs.true15, !dbg !3306

land.lhs.true15:                                  ; preds = %land.lhs.true10
  %arrayidx17 = getelementptr inbounds i8, ptr %currMB, i64 366, !dbg !3307
  %8 = load i8, ptr %arrayidx17, align 2, !dbg !3307
  %tobool19.not = icmp eq i8 %8, 0, !dbg !3307
  br i1 %tobool19.not, label %if.then, label %land.lhs.true20, !dbg !3308

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %arrayidx22 = getelementptr inbounds i8, ptr %currMB, i64 367, !dbg !3309
  %9 = load i8, ptr %arrayidx22, align 1, !dbg !3309
  %tobool24.not = icmp eq i8 %9, 0, !dbg !3309
  br i1 %tobool24.not, label %if.then, label %if.end, !dbg !3310

if.then:                                          ; preds = %land.lhs.true20, %land.lhs.true15, %land.lhs.true10, %land.lhs.true
  call void @prepare_direct_params(ptr noundef nonnull %currMB, ptr noundef %dec_picture, ptr noundef nonnull %pmvl0, ptr noundef nonnull %pmvl1, ptr noundef nonnull %l0_rFrame, ptr noundef nonnull %l1_rFrame) #7, !dbg !3311
  br label %if.end, !dbg !3311

if.end:                                           ; preds = %if.then, %land.lhs.true20, %entry
    #dbg_value(i32 0, !3226, !DIExpression(), !3275)
  %b8mode26 = getelementptr inbounds i8, ptr %currMB, i64 364
  %b8pdir = getelementptr inbounds i8, ptr %currMB, i64 368
    #dbg_value(i32 0, !3226, !DIExpression(), !3275)
  %active_sps = getelementptr inbounds i8, ptr %1, i64 16
  %block_x = getelementptr inbounds i8, ptr %currMB, i64 32
  %block_y = getelementptr inbounds i8, ptr %currMB, i64 36
  %mv_info104 = getelementptr inbounds i8, ptr %dec_picture, i64 152
  br label %for.body, !dbg !3312

for.body:                                         ; preds = %if.end, %if.end191
  %indvars.iv298 = phi i64 [ 0, %if.end ], [ %indvars.iv.next299, %if.end191 ]
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %if.end191 ]
  %indvars307 = trunc i64 %indvars.iv298 to i32
    #dbg_value(i64 %indvars.iv298, !3226, !DIExpression(), !3275)
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %b8mode26, i64 0, i64 %indvars.iv298, !dbg !3313
  %10 = load i8, ptr %arrayidx28, align 1, !dbg !3313
    #dbg_value(i8 %10, !3232, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !3314)
  %arrayidx31 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %indvars.iv298, !dbg !3315
  %11 = load i8, ptr %arrayidx31, align 1, !dbg !3315
  %conv32 = sext i8 %11 to i32, !dbg !3315
    #dbg_value(i32 %conv32, !3236, !DIExpression(), !3314)
  %cmp33.not = icmp eq i8 %10, 0, !dbg !3316
  %12 = shl nuw nsw i64 %indvars.iv298, 2, !dbg !3317
  br i1 %cmp33.not, label %if.else, label %if.then35, !dbg !3318

if.then35:                                        ; preds = %for.body
    #dbg_value(i64 %12, !3237, !DIExpression(), !3319)
  %cmp36 = icmp eq i8 %10, 5, !dbg !3320
  %cond = select i1 %cmp36, i32 2, i32 1, !dbg !3321
    #dbg_value(i32 %cond, !3240, !DIExpression(), !3319)
  %cmp38 = icmp eq i8 %10, 4, !dbg !3322
  br i1 %cmp38, label %cond.true, label %cond.false, !dbg !3323

cond.true:                                        ; preds = %if.then35
  %shl = shl nuw nsw i32 %indvars307, 2, !dbg !3324
  %add40 = or disjoint i32 %shl, 1, !dbg !3325
  br label %cond.end49, !dbg !3323

cond.false:                                       ; preds = %if.then35
  %cmp41 = icmp eq i8 %10, 7, !dbg !3326
  %13 = trunc i64 %12 to i32, !dbg !3327
  br i1 %cmp41, label %cond.true43, label %cond.false45, !dbg !3328

cond.true43:                                      ; preds = %cond.false
  %14 = add i32 %13, 4, !dbg !3328
  br label %cond.end49, !dbg !3328

cond.false45:                                     ; preds = %cond.false
  %15 = or disjoint i32 %13, 1, !dbg !3329
  %add47 = add nuw nsw i32 %15, %cond, !dbg !3329
  br label %cond.end49, !dbg !3328

cond.end49:                                       ; preds = %cond.true43, %cond.false45, %cond.true
  %cond50 = phi i32 [ %add40, %cond.true ], [ %14, %cond.true43 ], [ %add47, %cond.false45 ], !dbg !3323
    #dbg_value(i32 %cond50, !3241, !DIExpression(), !3319)
  %16 = and i8 %10, -2, !dbg !3330
  %17 = icmp eq i8 %16, 4, !dbg !3330
  %cond55 = select i1 %17, i32 8, i32 4, !dbg !3331
    #dbg_value(i32 %cond55, !3223, !DIExpression(), !3275)
  %cmp56 = icmp eq i8 %10, 6, !dbg !3332
  %18 = or i1 %cmp56, %cmp38, !dbg !3333
  %cond62 = select i1 %18, i32 8, i32 4, !dbg !3334
    #dbg_value(i32 %cond62, !3224, !DIExpression(), !3275)
    #dbg_value(i64 %12, !3225, !DIExpression(), !3275)
  %19 = zext i32 %cond50 to i64, !dbg !3335
  %cmp64275 = icmp ult i64 %12, %19, !dbg !3335
  br i1 %cmp64275, label %for.body66.preheader, label %if.end191, !dbg !3336

for.body66.preheader:                             ; preds = %cond.end49
  %20 = zext nneg i32 %cond to i64, !dbg !3336
  br label %for.body66, !dbg !3336

for.body66:                                       ; preds = %for.body66.preheader, %for.body66
  %indvars.iv284 = phi i64 [ %indvars.iv, %for.body66.preheader ], [ %indvars.iv.next285, %for.body66 ]
    #dbg_value(i64 %indvars.iv284, !3225, !DIExpression(), !3275)
  %arrayidx68 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv284, !dbg !3337
  %21 = load i8, ptr %arrayidx68, align 1, !dbg !3337
  %conv69 = zext i8 %21 to i32, !dbg !3337
  %and = and i32 %conv69, 3, !dbg !3338
    #dbg_value(i32 %and, !3242, !DIExpression(), !3339)
  %shr = lshr i32 %conv69, 2, !dbg !3340
  %and73 = and i32 %shr, 3, !dbg !3341
    #dbg_value(i32 %and73, !3246, !DIExpression(), !3339)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %conv32, i32 noundef %and, i32 noundef %and73, i32 noundef %cond55, i32 noundef %cond62) #7, !dbg !3342
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, %20, !dbg !3343
    #dbg_value(i64 %indvars.iv.next285, !3225, !DIExpression(), !3275)
  %22 = trunc nuw i64 %indvars.iv.next285 to i32, !dbg !3335
  %cmp64 = icmp sgt i32 %cond50, %22, !dbg !3335
  br i1 %cmp64, label %for.body66, label %if.end191, !dbg !3336, !llvm.loop !3344

if.else:                                          ; preds = %for.body
  %shl76 = shl i64 %indvars.iv298, 2, !dbg !3346
    #dbg_value(i64 %12, !3247, !DIExpression(), !3347)
    #dbg_value(i64 %12, !3249, !DIExpression(), !3347)
  %23 = load ptr, ptr %active_sps, align 8, !dbg !3348
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %23, i64 3144, !dbg !3350
  %24 = load i32, ptr %direct_8x8_inference_flag, align 4, !dbg !3350
  %tobool78.not = icmp eq i32 %24, 0, !dbg !3351
  %inc = or disjoint i64 %shl76, 1, !dbg !3352
  %25 = add nuw i64 %12, 4, !dbg !3352
  %k_end77.0 = select i1 %tobool78.not, i64 %25, i64 %inc, !dbg !3352
  %block_size_x.0 = select i1 %tobool78.not, i32 4, i32 8, !dbg !3352
    #dbg_value(i32 %block_size_x.0, !3223, !DIExpression(), !3275)
    #dbg_value(i32 %block_size_x.0, !3224, !DIExpression(), !3275)
    #dbg_value(i32 poison, !3249, !DIExpression(), !3347)
  %26 = load i32, ptr %direct_spatial_mv_pred_flag, align 4, !dbg !3353
  %tobool84.not = icmp eq i32 %26, 0, !dbg !3354
  br i1 %tobool84.not, label %for.body132.preheader, label %for.cond86.preheader, !dbg !3355

for.body132.preheader:                            ; preds = %if.else
    #dbg_value(i64 %indvars.iv, !3225, !DIExpression(), !3275)
  %arrayidx135 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv, !dbg !3356
  %27 = load i8, ptr %arrayidx135, align 4, !dbg !3356
  %conv136 = zext i8 %27 to i32, !dbg !3356
  %and137 = and i32 %conv136, 3, !dbg !3357
    #dbg_value(i32 %and137, !3260, !DIExpression(), !3358)
  %shr142 = lshr i32 %conv136, 2, !dbg !3359
  %and143 = and i32 %shr142, 3, !dbg !3360
    #dbg_value(i32 %and143, !3265, !DIExpression(), !3358)
  %28 = load i32, ptr %block_x, align 8, !dbg !3361
  %add146 = add nsw i32 %and137, %28, !dbg !3362
    #dbg_value(i32 %add146, !3266, !DIExpression(), !3358)
  %29 = load i32, ptr %block_y, align 4, !dbg !3363
  %add149 = add nsw i32 %and143, %29, !dbg !3364
    #dbg_value(i32 %add149, !3267, !DIExpression(), !3358)
  %30 = load ptr, ptr %mv_info104, align 8, !dbg !3365
  %idxprom152 = sext i32 %add149 to i64, !dbg !3366
  %arrayidx153 = getelementptr inbounds ptr, ptr %30, i64 %idxprom152, !dbg !3366
  %31 = load ptr, ptr %arrayidx153, align 8, !dbg !3366
  %idxprom154 = sext i32 %add146 to i64, !dbg !3366
  %arrayidx155 = getelementptr inbounds %struct.pic_motion_params, ptr %31, i64 %idxprom154, !dbg !3366
    #dbg_value(ptr %arrayidx155, !3268, !DIExpression(), !3358)
  %ref_idx156 = getelementptr inbounds i8, ptr %arrayidx155, i64 24, !dbg !3367
  %32 = load i8, ptr %ref_idx156, align 8, !dbg !3368
  %idxprom159 = sext i8 %32 to i64, !dbg !3369
  %arrayidx160 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159, !dbg !3369
  %33 = load ptr, ptr %arrayidx160, align 8, !dbg !3369
  store ptr %33, ptr %arrayidx155, align 8, !dbg !3370
  %arrayidx163 = getelementptr inbounds i8, ptr %arrayidx155, i64 25, !dbg !3371
  %34 = load i8, ptr %arrayidx163, align 1, !dbg !3371
  %idxprom165 = sext i8 %34 to i64, !dbg !3372
  %arrayidx166 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165, !dbg !3372
  %35 = load ptr, ptr %arrayidx166, align 8, !dbg !3372
  %arrayidx168 = getelementptr inbounds i8, ptr %arrayidx155, i64 8, !dbg !3373
  store ptr %35, ptr %arrayidx168, align 8, !dbg !3374
  %indvars.iv.next293 = or disjoint i64 %indvars.iv, 1, !dbg !3375
    #dbg_value(i64 %indvars.iv.next293, !3225, !DIExpression(), !3275)
  %arrayidx135.1 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293, !dbg !3356
  %36 = load i8, ptr %arrayidx135.1, align 1, !dbg !3356
  %conv136.1 = zext i8 %36 to i32, !dbg !3356
  %and137.1 = and i32 %conv136.1, 3, !dbg !3357
    #dbg_value(i32 %and137.1, !3260, !DIExpression(), !3358)
  %shr142.1 = lshr i32 %conv136.1, 2, !dbg !3359
  %and143.1 = and i32 %shr142.1, 3, !dbg !3360
    #dbg_value(i32 %and143.1, !3265, !DIExpression(), !3358)
  %37 = load i32, ptr %block_x, align 8, !dbg !3361
  %add146.1 = add nsw i32 %and137.1, %37, !dbg !3362
    #dbg_value(i32 %add146.1, !3266, !DIExpression(), !3358)
  %38 = load i32, ptr %block_y, align 4, !dbg !3363
  %add149.1 = add nsw i32 %and143.1, %38, !dbg !3364
    #dbg_value(i32 %add149.1, !3267, !DIExpression(), !3358)
  %39 = load ptr, ptr %mv_info104, align 8, !dbg !3365
  %idxprom152.1 = sext i32 %add149.1 to i64, !dbg !3366
  %arrayidx153.1 = getelementptr inbounds ptr, ptr %39, i64 %idxprom152.1, !dbg !3366
  %40 = load ptr, ptr %arrayidx153.1, align 8, !dbg !3366
  %idxprom154.1 = sext i32 %add146.1 to i64, !dbg !3366
  %arrayidx155.1 = getelementptr inbounds %struct.pic_motion_params, ptr %40, i64 %idxprom154.1, !dbg !3366
    #dbg_value(ptr %arrayidx155.1, !3268, !DIExpression(), !3358)
  %ref_idx156.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 24, !dbg !3367
  %41 = load i8, ptr %ref_idx156.1, align 8, !dbg !3368
  %idxprom159.1 = sext i8 %41 to i64, !dbg !3369
  %arrayidx160.1 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.1, !dbg !3369
  %42 = load ptr, ptr %arrayidx160.1, align 8, !dbg !3369
  store ptr %42, ptr %arrayidx155.1, align 8, !dbg !3370
  %arrayidx163.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 25, !dbg !3371
  %43 = load i8, ptr %arrayidx163.1, align 1, !dbg !3371
  %idxprom165.1 = sext i8 %43 to i64, !dbg !3372
  %arrayidx166.1 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.1, !dbg !3372
  %44 = load ptr, ptr %arrayidx166.1, align 8, !dbg !3372
  %arrayidx168.1 = getelementptr inbounds i8, ptr %arrayidx155.1, i64 8, !dbg !3373
  store ptr %44, ptr %arrayidx168.1, align 8, !dbg !3374
  %indvars.iv.next293.1 = or disjoint i64 %indvars.iv, 2, !dbg !3375
    #dbg_value(i64 %indvars.iv.next293.1, !3225, !DIExpression(), !3275)
  %arrayidx135.2 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293.1, !dbg !3356
  %45 = load i8, ptr %arrayidx135.2, align 2, !dbg !3356
  %conv136.2 = zext i8 %45 to i32, !dbg !3356
  %and137.2 = and i32 %conv136.2, 3, !dbg !3357
    #dbg_value(i32 %and137.2, !3260, !DIExpression(), !3358)
  %shr142.2 = lshr i32 %conv136.2, 2, !dbg !3359
  %and143.2 = and i32 %shr142.2, 3, !dbg !3360
    #dbg_value(i32 %and143.2, !3265, !DIExpression(), !3358)
  %46 = load i32, ptr %block_x, align 8, !dbg !3361
  %add146.2 = add nsw i32 %and137.2, %46, !dbg !3362
    #dbg_value(i32 %add146.2, !3266, !DIExpression(), !3358)
  %47 = load i32, ptr %block_y, align 4, !dbg !3363
  %add149.2 = add nsw i32 %and143.2, %47, !dbg !3364
    #dbg_value(i32 %add149.2, !3267, !DIExpression(), !3358)
  %48 = load ptr, ptr %mv_info104, align 8, !dbg !3365
  %idxprom152.2 = sext i32 %add149.2 to i64, !dbg !3366
  %arrayidx153.2 = getelementptr inbounds ptr, ptr %48, i64 %idxprom152.2, !dbg !3366
  %49 = load ptr, ptr %arrayidx153.2, align 8, !dbg !3366
  %idxprom154.2 = sext i32 %add146.2 to i64, !dbg !3366
  %arrayidx155.2 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom154.2, !dbg !3366
    #dbg_value(ptr %arrayidx155.2, !3268, !DIExpression(), !3358)
  %ref_idx156.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 24, !dbg !3367
  %50 = load i8, ptr %ref_idx156.2, align 8, !dbg !3368
  %idxprom159.2 = sext i8 %50 to i64, !dbg !3369
  %arrayidx160.2 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.2, !dbg !3369
  %51 = load ptr, ptr %arrayidx160.2, align 8, !dbg !3369
  store ptr %51, ptr %arrayidx155.2, align 8, !dbg !3370
  %arrayidx163.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 25, !dbg !3371
  %52 = load i8, ptr %arrayidx163.2, align 1, !dbg !3371
  %idxprom165.2 = sext i8 %52 to i64, !dbg !3372
  %arrayidx166.2 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.2, !dbg !3372
  %53 = load ptr, ptr %arrayidx166.2, align 8, !dbg !3372
  %arrayidx168.2 = getelementptr inbounds i8, ptr %arrayidx155.2, i64 8, !dbg !3373
  store ptr %53, ptr %arrayidx168.2, align 8, !dbg !3374
  %indvars.iv.next293.2 = or disjoint i64 %indvars.iv, 3, !dbg !3375
    #dbg_value(i64 %indvars.iv.next293.2, !3225, !DIExpression(), !3275)
  %arrayidx135.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next293.2, !dbg !3356
  %54 = load i8, ptr %arrayidx135.3, align 1, !dbg !3356
  %conv136.3 = zext i8 %54 to i32, !dbg !3356
  %and137.3 = and i32 %conv136.3, 3, !dbg !3357
    #dbg_value(i32 %and137.3, !3260, !DIExpression(), !3358)
  %shr142.3 = lshr i32 %conv136.3, 2, !dbg !3359
  %and143.3 = and i32 %shr142.3, 3, !dbg !3360
    #dbg_value(i32 %and143.3, !3265, !DIExpression(), !3358)
  %55 = load i32, ptr %block_x, align 8, !dbg !3361
  %add146.3 = add nsw i32 %and137.3, %55, !dbg !3362
    #dbg_value(i32 %add146.3, !3266, !DIExpression(), !3358)
  %56 = load i32, ptr %block_y, align 4, !dbg !3363
  %add149.3 = add nsw i32 %and143.3, %56, !dbg !3364
    #dbg_value(i32 %add149.3, !3267, !DIExpression(), !3358)
  %57 = load ptr, ptr %mv_info104, align 8, !dbg !3365
  %idxprom152.3 = sext i32 %add149.3 to i64, !dbg !3366
  %arrayidx153.3 = getelementptr inbounds ptr, ptr %57, i64 %idxprom152.3, !dbg !3366
  %58 = load ptr, ptr %arrayidx153.3, align 8, !dbg !3366
  %idxprom154.3 = sext i32 %add146.3 to i64, !dbg !3366
  %arrayidx155.3 = getelementptr inbounds %struct.pic_motion_params, ptr %58, i64 %idxprom154.3, !dbg !3366
    #dbg_value(ptr %arrayidx155.3, !3268, !DIExpression(), !3358)
  %ref_idx156.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 24, !dbg !3367
  %59 = load i8, ptr %ref_idx156.3, align 8, !dbg !3368
  %idxprom159.3 = sext i8 %59 to i64, !dbg !3369
  %arrayidx160.3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom159.3, !dbg !3369
  %60 = load ptr, ptr %arrayidx160.3, align 8, !dbg !3369
  store ptr %60, ptr %arrayidx155.3, align 8, !dbg !3370
  %arrayidx163.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 25, !dbg !3371
  %61 = load i8, ptr %arrayidx163.3, align 1, !dbg !3371
  %idxprom165.3 = sext i8 %61 to i64, !dbg !3372
  %arrayidx166.3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom165.3, !dbg !3372
  %62 = load ptr, ptr %arrayidx166.3, align 8, !dbg !3372
  %arrayidx168.3 = getelementptr inbounds i8, ptr %arrayidx155.3, i64 8, !dbg !3373
  store ptr %62, ptr %arrayidx168.3, align 8, !dbg !3374
    #dbg_value(i64 %indvars.iv, !3225, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !3275)
  br label %if.end172, !dbg !3376

for.cond86.preheader:                             ; preds = %if.else
  %63 = load i32, ptr %block_x, align 8
  %64 = load i32, ptr %block_y, align 4
  %65 = load ptr, ptr %mv_info104, align 8
    #dbg_value(i64 %12, !3225, !DIExpression(), !3275)
    #dbg_value(i32 %conv32, !3236, !DIExpression(), !3314)
    #dbg_value(i64 %indvars.iv, !3225, !DIExpression(), !3275)
    #dbg_value(i8 poison, !3250, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(i8 poison, !3256, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(i32 poison, !3236, !DIExpression(), !3314)
    #dbg_value(i64 %indvars.iv, !3225, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3275)
    #dbg_value(i8 poison, !3250, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(i8 poison, !3256, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(i32 poison, !3236, !DIExpression(), !3314)
    #dbg_value(i64 %indvars.iv, !3225, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !3275)
    #dbg_value(i8 poison, !3250, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(i8 poison, !3256, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(i8 poison, i32 poison), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 3, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3377)
    #dbg_value(i32 poison, !3236, !DIExpression(), !3314)
  %indvars.iv.next288.2 = or disjoint i64 %indvars.iv, 3, !dbg !3378
    #dbg_value(i64 %indvars.iv.next288.2, !3225, !DIExpression(), !3275)
  %arrayidx93.3 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv.next288.2, !dbg !3379
  %66 = load i8, ptr %arrayidx93.3, align 1, !dbg !3379
  %conv94.3 = zext i8 %66 to i32, !dbg !3379
  %and95.3 = and i32 %conv94.3, 3, !dbg !3380
    #dbg_value(i32 %and95.3, !3250, !DIExpression(), !3377)
  %shr100.3 = lshr i32 %conv94.3, 2, !dbg !3381
  %and101.3 = and i32 %shr100.3, 3, !dbg !3382
    #dbg_value(i32 %and101.3, !3256, !DIExpression(), !3377)
  %add102.3 = add nsw i32 %and95.3, %63, !dbg !3383
    #dbg_value(i32 %add102.3, !3257, !DIExpression(), !3377)
  %add103.3 = add nsw i32 %and101.3, %64, !dbg !3384
    #dbg_value(i32 %add103.3, !3258, !DIExpression(), !3377)
  %idxprom105.3 = sext i32 %add103.3 to i64, !dbg !3385
  %arrayidx106.3 = getelementptr inbounds ptr, ptr %65, i64 %idxprom105.3, !dbg !3385
  %67 = load ptr, ptr %arrayidx106.3, align 8, !dbg !3385
  %idxprom107.3 = sext i32 %add102.3 to i64, !dbg !3385
    #dbg_value(!DIArgList(ptr %67, i64 %idxprom107.3), !3259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3377)
  %ref_idx.3 = getelementptr inbounds %struct.pic_motion_params, ptr %67, i64 %idxprom107.3, i32 2, !dbg !3386
  %arrayidx109.3 = getelementptr inbounds i8, ptr %ref_idx.3, i64 1, !dbg !3388
  %68 = load i8, ptr %arrayidx109.3, align 1, !dbg !3388
  %cmp111.3 = icmp eq i8 %68, -1, !dbg !3389
  br i1 %cmp111.3, label %if.end172, label %if.else114.3, !dbg !3390

if.else114.3:                                     ; preds = %for.cond86.preheader
  %69 = load i8, ptr %ref_idx.3, align 8, !dbg !3391
  %cmp118.3 = icmp eq i8 %69, -1, !dbg !3393
  %..3 = select i1 %cmp118.3, i32 1, i32 2
  br label %if.end172

if.end172:                                        ; preds = %for.cond86.preheader, %if.else114.3, %for.body132.preheader
  %pred_dir.2 = phi i32 [ %conv32, %for.body132.preheader ], [ 0, %for.cond86.preheader ], [ %..3, %if.else114.3 ], !dbg !3394
    #dbg_value(i32 %pred_dir.2, !3236, !DIExpression(), !3314)
    #dbg_value(i64 %12, !3225, !DIExpression(), !3275)
  %70 = and i64 %k_end77.0, 4294967293, !dbg !3376
  %cmp174279 = icmp ult i64 %12, %70, !dbg !3376
  br i1 %cmp174279, label %for.body176, label %if.end191, !dbg !3395

for.body176:                                      ; preds = %if.end172, %for.body176
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %for.body176 ], [ %indvars.iv, %if.end172 ]
    #dbg_value(i64 %indvars.iv295, !3225, !DIExpression(), !3275)
  %arrayidx179 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %indvars.iv295, !dbg !3396
  %71 = load i8, ptr %arrayidx179, align 1, !dbg !3396
  %conv180 = zext i8 %71 to i32, !dbg !3396
  %and181 = and i32 %conv180, 3, !dbg !3397
    #dbg_value(i32 %and181, !3269, !DIExpression(), !3398)
  %shr186 = lshr i32 %conv180, 2, !dbg !3399
  %and187 = and i32 %shr186, 3, !dbg !3400
    #dbg_value(i32 %and187, !3273, !DIExpression(), !3398)
  call void @perform_mc(ptr noundef nonnull %currMB, i32 noundef %curr_plane, ptr noundef %dec_picture, i32 noundef %pred_dir.2, i32 noundef %and181, i32 noundef %and187, i32 noundef %block_size_x.0, i32 noundef %block_size_x.0) #7, !dbg !3401
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1, !dbg !3402
    #dbg_value(i64 %indvars.iv.next296, !3225, !DIExpression(), !3275)
  %exitcond.not = icmp eq i64 %indvars.iv.next296, %70, !dbg !3376
  br i1 %exitcond.not, label %if.end191, label %for.body176, !dbg !3395, !llvm.loop !3403

if.end191:                                        ; preds = %for.body66, %for.body176, %cond.end49, %if.end172
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1, !dbg !3405
    #dbg_value(i64 %indvars.iv.next299, !3226, !DIExpression(), !3275)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4, !dbg !3312
  %exitcond308.not = icmp eq i64 %indvars.iv.next299, 4, !dbg !3406
  br i1 %exitcond308.not, label %for.end194, label %for.body, !dbg !3312, !llvm.loop !3407

for.end194:                                       ; preds = %if.end191
  call void @iTransform(ptr noundef nonnull %currMB, i32 noundef %curr_plane, i32 noundef 0) #7, !dbg !3409
  %cbp = getelementptr inbounds i8, ptr %currMB, i64 284, !dbg !3410
  %72 = load i32, ptr %cbp, align 4, !dbg !3410
  %cmp195.not = icmp eq i32 %72, 0, !dbg !3412
  br i1 %cmp195.not, label %if.end198, label %if.then197, !dbg !3413

if.then197:                                       ; preds = %for.end194
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !3414
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !3415
  br label %if.end198, !dbg !3416

if.end198:                                        ; preds = %if.then197, %for.end194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl1) #7, !dbg !3417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmvl0) #7, !dbg !3417
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_rFrame) #7, !dbg !3417
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l0_rFrame) #7, !dbg !3417
  ret i32 1, !dbg !3418
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_ipcm(ptr noundef %currMB) local_unnamed_addr #0 !dbg !3419 {
entry:
    #dbg_value(ptr %currMB, !3423, !DIExpression(), !3430)
  %0 = load ptr, ptr %currMB, align 8, !dbg !3431
    #dbg_value(ptr %0, !3427, !DIExpression(), !3430)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !3432
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !3432
    #dbg_value(ptr %1, !3428, !DIExpression(), !3430)
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520, !dbg !3433
  %2 = load ptr, ptr %dec_picture2, align 8, !dbg !3433
    #dbg_value(ptr %2, !3429, !DIExpression(), !3430)
    #dbg_value(i32 0, !3424, !DIExpression(), !3430)
  %cof = getelementptr inbounds i8, ptr %0, i64 1272
  %imgY = getelementptr inbounds i8, ptr %2, i64 128
  %pix_y = getelementptr inbounds i8, ptr %currMB, i64 48
  %pix_x = getelementptr inbounds i8, ptr %currMB, i64 44
    #dbg_value(i32 0, !3424, !DIExpression(), !3430)
  br label %for.cond3.preheader, !dbg !3434

for.cond3.preheader:                              ; preds = %entry, %for.cond3.preheader
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond3.preheader ]
    #dbg_value(i64 %indvars.iv, !3424, !DIExpression(), !3430)
    #dbg_value(i32 0, !3425, !DIExpression(), !3430)
    #dbg_value(i64 0, !3425, !DIExpression(), !3430)
  %3 = load ptr, ptr %cof, align 8, !dbg !3436
  %4 = load ptr, ptr %3, align 8, !dbg !3442
  %arrayidx6 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !3442
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !3442
  %6 = load i32, ptr %5, align 4, !dbg !3442
  %conv = trunc i32 %6 to i16, !dbg !3443
  %7 = load ptr, ptr %imgY, align 8, !dbg !3444
  %8 = load i32, ptr %pix_y, align 8, !dbg !3445
  %9 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !3446
  %add = add nsw i32 %8, %9, !dbg !3446
  %idxprom9 = sext i32 %add to i64, !dbg !3447
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom9, !dbg !3447
  %10 = load ptr, ptr %arrayidx10, align 8, !dbg !3447
  %11 = load i32, ptr %pix_x, align 4, !dbg !3448
  %idxprom12 = sext i32 %11 to i64, !dbg !3447
  %arrayidx13 = getelementptr inbounds i16, ptr %10, i64 %idxprom12, !dbg !3447
  store i16 %conv, ptr %arrayidx13, align 2, !dbg !3449
    #dbg_value(i64 1, !3425, !DIExpression(), !3430)
  %12 = load ptr, ptr %cof, align 8, !dbg !3436
  %13 = load ptr, ptr %12, align 8, !dbg !3442
  %arrayidx6.1 = getelementptr inbounds ptr, ptr %13, i64 %indvars.iv, !dbg !3442
  %14 = load ptr, ptr %arrayidx6.1, align 8, !dbg !3442
  %arrayidx8.1 = getelementptr inbounds i8, ptr %14, i64 4, !dbg !3442
  %15 = load i32, ptr %arrayidx8.1, align 4, !dbg !3442
  %conv.1 = trunc i32 %15 to i16, !dbg !3443
  %16 = load ptr, ptr %imgY, align 8, !dbg !3444
  %17 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.1 = add nsw i32 %17, %9, !dbg !3446
  %idxprom9.1 = sext i32 %add.1 to i64, !dbg !3447
  %arrayidx10.1 = getelementptr inbounds ptr, ptr %16, i64 %idxprom9.1, !dbg !3447
  %18 = load ptr, ptr %arrayidx10.1, align 8, !dbg !3447
  %19 = load i32, ptr %pix_x, align 4, !dbg !3448
  %20 = sext i32 %19 to i64, !dbg !3447
  %21 = getelementptr i16, ptr %18, i64 %20, !dbg !3447
  %arrayidx13.1 = getelementptr i8, ptr %21, i64 2, !dbg !3447
  store i16 %conv.1, ptr %arrayidx13.1, align 2, !dbg !3449
    #dbg_value(i64 2, !3425, !DIExpression(), !3430)
  %22 = load ptr, ptr %cof, align 8, !dbg !3436
  %23 = load ptr, ptr %22, align 8, !dbg !3442
  %arrayidx6.2 = getelementptr inbounds ptr, ptr %23, i64 %indvars.iv, !dbg !3442
  %24 = load ptr, ptr %arrayidx6.2, align 8, !dbg !3442
  %arrayidx8.2 = getelementptr inbounds i8, ptr %24, i64 8, !dbg !3442
  %25 = load i32, ptr %arrayidx8.2, align 4, !dbg !3442
  %conv.2 = trunc i32 %25 to i16, !dbg !3443
  %26 = load ptr, ptr %imgY, align 8, !dbg !3444
  %27 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.2 = add nsw i32 %27, %9, !dbg !3446
  %idxprom9.2 = sext i32 %add.2 to i64, !dbg !3447
  %arrayidx10.2 = getelementptr inbounds ptr, ptr %26, i64 %idxprom9.2, !dbg !3447
  %28 = load ptr, ptr %arrayidx10.2, align 8, !dbg !3447
  %29 = load i32, ptr %pix_x, align 4, !dbg !3448
  %30 = sext i32 %29 to i64, !dbg !3447
  %31 = getelementptr i16, ptr %28, i64 %30, !dbg !3447
  %arrayidx13.2 = getelementptr i8, ptr %31, i64 4, !dbg !3447
  store i16 %conv.2, ptr %arrayidx13.2, align 2, !dbg !3449
    #dbg_value(i64 3, !3425, !DIExpression(), !3430)
  %32 = load ptr, ptr %cof, align 8, !dbg !3436
  %33 = load ptr, ptr %32, align 8, !dbg !3442
  %arrayidx6.3 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv, !dbg !3442
  %34 = load ptr, ptr %arrayidx6.3, align 8, !dbg !3442
  %arrayidx8.3 = getelementptr inbounds i8, ptr %34, i64 12, !dbg !3442
  %35 = load i32, ptr %arrayidx8.3, align 4, !dbg !3442
  %conv.3 = trunc i32 %35 to i16, !dbg !3443
  %36 = load ptr, ptr %imgY, align 8, !dbg !3444
  %37 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.3 = add nsw i32 %37, %9, !dbg !3446
  %idxprom9.3 = sext i32 %add.3 to i64, !dbg !3447
  %arrayidx10.3 = getelementptr inbounds ptr, ptr %36, i64 %idxprom9.3, !dbg !3447
  %38 = load ptr, ptr %arrayidx10.3, align 8, !dbg !3447
  %39 = load i32, ptr %pix_x, align 4, !dbg !3448
  %40 = sext i32 %39 to i64, !dbg !3447
  %41 = getelementptr i16, ptr %38, i64 %40, !dbg !3447
  %arrayidx13.3 = getelementptr i8, ptr %41, i64 6, !dbg !3447
  store i16 %conv.3, ptr %arrayidx13.3, align 2, !dbg !3449
    #dbg_value(i64 4, !3425, !DIExpression(), !3430)
  %42 = load ptr, ptr %cof, align 8, !dbg !3436
  %43 = load ptr, ptr %42, align 8, !dbg !3442
  %arrayidx6.4 = getelementptr inbounds ptr, ptr %43, i64 %indvars.iv, !dbg !3442
  %44 = load ptr, ptr %arrayidx6.4, align 8, !dbg !3442
  %arrayidx8.4 = getelementptr inbounds i8, ptr %44, i64 16, !dbg !3442
  %45 = load i32, ptr %arrayidx8.4, align 4, !dbg !3442
  %conv.4 = trunc i32 %45 to i16, !dbg !3443
  %46 = load ptr, ptr %imgY, align 8, !dbg !3444
  %47 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.4 = add nsw i32 %47, %9, !dbg !3446
  %idxprom9.4 = sext i32 %add.4 to i64, !dbg !3447
  %arrayidx10.4 = getelementptr inbounds ptr, ptr %46, i64 %idxprom9.4, !dbg !3447
  %48 = load ptr, ptr %arrayidx10.4, align 8, !dbg !3447
  %49 = load i32, ptr %pix_x, align 4, !dbg !3448
  %50 = sext i32 %49 to i64, !dbg !3447
  %51 = getelementptr i16, ptr %48, i64 %50, !dbg !3447
  %arrayidx13.4 = getelementptr i8, ptr %51, i64 8, !dbg !3447
  store i16 %conv.4, ptr %arrayidx13.4, align 2, !dbg !3449
    #dbg_value(i64 5, !3425, !DIExpression(), !3430)
  %52 = load ptr, ptr %cof, align 8, !dbg !3436
  %53 = load ptr, ptr %52, align 8, !dbg !3442
  %arrayidx6.5 = getelementptr inbounds ptr, ptr %53, i64 %indvars.iv, !dbg !3442
  %54 = load ptr, ptr %arrayidx6.5, align 8, !dbg !3442
  %arrayidx8.5 = getelementptr inbounds i8, ptr %54, i64 20, !dbg !3442
  %55 = load i32, ptr %arrayidx8.5, align 4, !dbg !3442
  %conv.5 = trunc i32 %55 to i16, !dbg !3443
  %56 = load ptr, ptr %imgY, align 8, !dbg !3444
  %57 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.5 = add nsw i32 %57, %9, !dbg !3446
  %idxprom9.5 = sext i32 %add.5 to i64, !dbg !3447
  %arrayidx10.5 = getelementptr inbounds ptr, ptr %56, i64 %idxprom9.5, !dbg !3447
  %58 = load ptr, ptr %arrayidx10.5, align 8, !dbg !3447
  %59 = load i32, ptr %pix_x, align 4, !dbg !3448
  %60 = sext i32 %59 to i64, !dbg !3447
  %61 = getelementptr i16, ptr %58, i64 %60, !dbg !3447
  %arrayidx13.5 = getelementptr i8, ptr %61, i64 10, !dbg !3447
  store i16 %conv.5, ptr %arrayidx13.5, align 2, !dbg !3449
    #dbg_value(i64 6, !3425, !DIExpression(), !3430)
  %62 = load ptr, ptr %cof, align 8, !dbg !3436
  %63 = load ptr, ptr %62, align 8, !dbg !3442
  %arrayidx6.6 = getelementptr inbounds ptr, ptr %63, i64 %indvars.iv, !dbg !3442
  %64 = load ptr, ptr %arrayidx6.6, align 8, !dbg !3442
  %arrayidx8.6 = getelementptr inbounds i8, ptr %64, i64 24, !dbg !3442
  %65 = load i32, ptr %arrayidx8.6, align 4, !dbg !3442
  %conv.6 = trunc i32 %65 to i16, !dbg !3443
  %66 = load ptr, ptr %imgY, align 8, !dbg !3444
  %67 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.6 = add nsw i32 %67, %9, !dbg !3446
  %idxprom9.6 = sext i32 %add.6 to i64, !dbg !3447
  %arrayidx10.6 = getelementptr inbounds ptr, ptr %66, i64 %idxprom9.6, !dbg !3447
  %68 = load ptr, ptr %arrayidx10.6, align 8, !dbg !3447
  %69 = load i32, ptr %pix_x, align 4, !dbg !3448
  %70 = sext i32 %69 to i64, !dbg !3447
  %71 = getelementptr i16, ptr %68, i64 %70, !dbg !3447
  %arrayidx13.6 = getelementptr i8, ptr %71, i64 12, !dbg !3447
  store i16 %conv.6, ptr %arrayidx13.6, align 2, !dbg !3449
    #dbg_value(i64 7, !3425, !DIExpression(), !3430)
  %72 = load ptr, ptr %cof, align 8, !dbg !3436
  %73 = load ptr, ptr %72, align 8, !dbg !3442
  %arrayidx6.7 = getelementptr inbounds ptr, ptr %73, i64 %indvars.iv, !dbg !3442
  %74 = load ptr, ptr %arrayidx6.7, align 8, !dbg !3442
  %arrayidx8.7 = getelementptr inbounds i8, ptr %74, i64 28, !dbg !3442
  %75 = load i32, ptr %arrayidx8.7, align 4, !dbg !3442
  %conv.7 = trunc i32 %75 to i16, !dbg !3443
  %76 = load ptr, ptr %imgY, align 8, !dbg !3444
  %77 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.7 = add nsw i32 %77, %9, !dbg !3446
  %idxprom9.7 = sext i32 %add.7 to i64, !dbg !3447
  %arrayidx10.7 = getelementptr inbounds ptr, ptr %76, i64 %idxprom9.7, !dbg !3447
  %78 = load ptr, ptr %arrayidx10.7, align 8, !dbg !3447
  %79 = load i32, ptr %pix_x, align 4, !dbg !3448
  %80 = sext i32 %79 to i64, !dbg !3447
  %81 = getelementptr i16, ptr %78, i64 %80, !dbg !3447
  %arrayidx13.7 = getelementptr i8, ptr %81, i64 14, !dbg !3447
  store i16 %conv.7, ptr %arrayidx13.7, align 2, !dbg !3449
    #dbg_value(i64 8, !3425, !DIExpression(), !3430)
  %82 = load ptr, ptr %cof, align 8, !dbg !3436
  %83 = load ptr, ptr %82, align 8, !dbg !3442
  %arrayidx6.8 = getelementptr inbounds ptr, ptr %83, i64 %indvars.iv, !dbg !3442
  %84 = load ptr, ptr %arrayidx6.8, align 8, !dbg !3442
  %arrayidx8.8 = getelementptr inbounds i8, ptr %84, i64 32, !dbg !3442
  %85 = load i32, ptr %arrayidx8.8, align 4, !dbg !3442
  %conv.8 = trunc i32 %85 to i16, !dbg !3443
  %86 = load ptr, ptr %imgY, align 8, !dbg !3444
  %87 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.8 = add nsw i32 %87, %9, !dbg !3446
  %idxprom9.8 = sext i32 %add.8 to i64, !dbg !3447
  %arrayidx10.8 = getelementptr inbounds ptr, ptr %86, i64 %idxprom9.8, !dbg !3447
  %88 = load ptr, ptr %arrayidx10.8, align 8, !dbg !3447
  %89 = load i32, ptr %pix_x, align 4, !dbg !3448
  %90 = sext i32 %89 to i64, !dbg !3447
  %91 = getelementptr i16, ptr %88, i64 %90, !dbg !3447
  %arrayidx13.8 = getelementptr i8, ptr %91, i64 16, !dbg !3447
  store i16 %conv.8, ptr %arrayidx13.8, align 2, !dbg !3449
    #dbg_value(i64 9, !3425, !DIExpression(), !3430)
  %92 = load ptr, ptr %cof, align 8, !dbg !3436
  %93 = load ptr, ptr %92, align 8, !dbg !3442
  %arrayidx6.9 = getelementptr inbounds ptr, ptr %93, i64 %indvars.iv, !dbg !3442
  %94 = load ptr, ptr %arrayidx6.9, align 8, !dbg !3442
  %arrayidx8.9 = getelementptr inbounds i8, ptr %94, i64 36, !dbg !3442
  %95 = load i32, ptr %arrayidx8.9, align 4, !dbg !3442
  %conv.9 = trunc i32 %95 to i16, !dbg !3443
  %96 = load ptr, ptr %imgY, align 8, !dbg !3444
  %97 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.9 = add nsw i32 %97, %9, !dbg !3446
  %idxprom9.9 = sext i32 %add.9 to i64, !dbg !3447
  %arrayidx10.9 = getelementptr inbounds ptr, ptr %96, i64 %idxprom9.9, !dbg !3447
  %98 = load ptr, ptr %arrayidx10.9, align 8, !dbg !3447
  %99 = load i32, ptr %pix_x, align 4, !dbg !3448
  %100 = sext i32 %99 to i64, !dbg !3447
  %101 = getelementptr i16, ptr %98, i64 %100, !dbg !3447
  %arrayidx13.9 = getelementptr i8, ptr %101, i64 18, !dbg !3447
  store i16 %conv.9, ptr %arrayidx13.9, align 2, !dbg !3449
    #dbg_value(i64 10, !3425, !DIExpression(), !3430)
  %102 = load ptr, ptr %cof, align 8, !dbg !3436
  %103 = load ptr, ptr %102, align 8, !dbg !3442
  %arrayidx6.10 = getelementptr inbounds ptr, ptr %103, i64 %indvars.iv, !dbg !3442
  %104 = load ptr, ptr %arrayidx6.10, align 8, !dbg !3442
  %arrayidx8.10 = getelementptr inbounds i8, ptr %104, i64 40, !dbg !3442
  %105 = load i32, ptr %arrayidx8.10, align 4, !dbg !3442
  %conv.10 = trunc i32 %105 to i16, !dbg !3443
  %106 = load ptr, ptr %imgY, align 8, !dbg !3444
  %107 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.10 = add nsw i32 %107, %9, !dbg !3446
  %idxprom9.10 = sext i32 %add.10 to i64, !dbg !3447
  %arrayidx10.10 = getelementptr inbounds ptr, ptr %106, i64 %idxprom9.10, !dbg !3447
  %108 = load ptr, ptr %arrayidx10.10, align 8, !dbg !3447
  %109 = load i32, ptr %pix_x, align 4, !dbg !3448
  %110 = sext i32 %109 to i64, !dbg !3447
  %111 = getelementptr i16, ptr %108, i64 %110, !dbg !3447
  %arrayidx13.10 = getelementptr i8, ptr %111, i64 20, !dbg !3447
  store i16 %conv.10, ptr %arrayidx13.10, align 2, !dbg !3449
    #dbg_value(i64 11, !3425, !DIExpression(), !3430)
  %112 = load ptr, ptr %cof, align 8, !dbg !3436
  %113 = load ptr, ptr %112, align 8, !dbg !3442
  %arrayidx6.11 = getelementptr inbounds ptr, ptr %113, i64 %indvars.iv, !dbg !3442
  %114 = load ptr, ptr %arrayidx6.11, align 8, !dbg !3442
  %arrayidx8.11 = getelementptr inbounds i8, ptr %114, i64 44, !dbg !3442
  %115 = load i32, ptr %arrayidx8.11, align 4, !dbg !3442
  %conv.11 = trunc i32 %115 to i16, !dbg !3443
  %116 = load ptr, ptr %imgY, align 8, !dbg !3444
  %117 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.11 = add nsw i32 %117, %9, !dbg !3446
  %idxprom9.11 = sext i32 %add.11 to i64, !dbg !3447
  %arrayidx10.11 = getelementptr inbounds ptr, ptr %116, i64 %idxprom9.11, !dbg !3447
  %118 = load ptr, ptr %arrayidx10.11, align 8, !dbg !3447
  %119 = load i32, ptr %pix_x, align 4, !dbg !3448
  %120 = sext i32 %119 to i64, !dbg !3447
  %121 = getelementptr i16, ptr %118, i64 %120, !dbg !3447
  %arrayidx13.11 = getelementptr i8, ptr %121, i64 22, !dbg !3447
  store i16 %conv.11, ptr %arrayidx13.11, align 2, !dbg !3449
    #dbg_value(i64 12, !3425, !DIExpression(), !3430)
  %122 = load ptr, ptr %cof, align 8, !dbg !3436
  %123 = load ptr, ptr %122, align 8, !dbg !3442
  %arrayidx6.12 = getelementptr inbounds ptr, ptr %123, i64 %indvars.iv, !dbg !3442
  %124 = load ptr, ptr %arrayidx6.12, align 8, !dbg !3442
  %arrayidx8.12 = getelementptr inbounds i8, ptr %124, i64 48, !dbg !3442
  %125 = load i32, ptr %arrayidx8.12, align 4, !dbg !3442
  %conv.12 = trunc i32 %125 to i16, !dbg !3443
  %126 = load ptr, ptr %imgY, align 8, !dbg !3444
  %127 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.12 = add nsw i32 %127, %9, !dbg !3446
  %idxprom9.12 = sext i32 %add.12 to i64, !dbg !3447
  %arrayidx10.12 = getelementptr inbounds ptr, ptr %126, i64 %idxprom9.12, !dbg !3447
  %128 = load ptr, ptr %arrayidx10.12, align 8, !dbg !3447
  %129 = load i32, ptr %pix_x, align 4, !dbg !3448
  %130 = sext i32 %129 to i64, !dbg !3447
  %131 = getelementptr i16, ptr %128, i64 %130, !dbg !3447
  %arrayidx13.12 = getelementptr i8, ptr %131, i64 24, !dbg !3447
  store i16 %conv.12, ptr %arrayidx13.12, align 2, !dbg !3449
    #dbg_value(i64 13, !3425, !DIExpression(), !3430)
  %132 = load ptr, ptr %cof, align 8, !dbg !3436
  %133 = load ptr, ptr %132, align 8, !dbg !3442
  %arrayidx6.13 = getelementptr inbounds ptr, ptr %133, i64 %indvars.iv, !dbg !3442
  %134 = load ptr, ptr %arrayidx6.13, align 8, !dbg !3442
  %arrayidx8.13 = getelementptr inbounds i8, ptr %134, i64 52, !dbg !3442
  %135 = load i32, ptr %arrayidx8.13, align 4, !dbg !3442
  %conv.13 = trunc i32 %135 to i16, !dbg !3443
  %136 = load ptr, ptr %imgY, align 8, !dbg !3444
  %137 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.13 = add nsw i32 %137, %9, !dbg !3446
  %idxprom9.13 = sext i32 %add.13 to i64, !dbg !3447
  %arrayidx10.13 = getelementptr inbounds ptr, ptr %136, i64 %idxprom9.13, !dbg !3447
  %138 = load ptr, ptr %arrayidx10.13, align 8, !dbg !3447
  %139 = load i32, ptr %pix_x, align 4, !dbg !3448
  %140 = sext i32 %139 to i64, !dbg !3447
  %141 = getelementptr i16, ptr %138, i64 %140, !dbg !3447
  %arrayidx13.13 = getelementptr i8, ptr %141, i64 26, !dbg !3447
  store i16 %conv.13, ptr %arrayidx13.13, align 2, !dbg !3449
    #dbg_value(i64 14, !3425, !DIExpression(), !3430)
  %142 = load ptr, ptr %cof, align 8, !dbg !3436
  %143 = load ptr, ptr %142, align 8, !dbg !3442
  %arrayidx6.14 = getelementptr inbounds ptr, ptr %143, i64 %indvars.iv, !dbg !3442
  %144 = load ptr, ptr %arrayidx6.14, align 8, !dbg !3442
  %arrayidx8.14 = getelementptr inbounds i8, ptr %144, i64 56, !dbg !3442
  %145 = load i32, ptr %arrayidx8.14, align 4, !dbg !3442
  %conv.14 = trunc i32 %145 to i16, !dbg !3443
  %146 = load ptr, ptr %imgY, align 8, !dbg !3444
  %147 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.14 = add nsw i32 %147, %9, !dbg !3446
  %idxprom9.14 = sext i32 %add.14 to i64, !dbg !3447
  %arrayidx10.14 = getelementptr inbounds ptr, ptr %146, i64 %idxprom9.14, !dbg !3447
  %148 = load ptr, ptr %arrayidx10.14, align 8, !dbg !3447
  %149 = load i32, ptr %pix_x, align 4, !dbg !3448
  %150 = sext i32 %149 to i64, !dbg !3447
  %151 = getelementptr i16, ptr %148, i64 %150, !dbg !3447
  %arrayidx13.14 = getelementptr i8, ptr %151, i64 28, !dbg !3447
  store i16 %conv.14, ptr %arrayidx13.14, align 2, !dbg !3449
    #dbg_value(i64 15, !3425, !DIExpression(), !3430)
  %152 = load ptr, ptr %cof, align 8, !dbg !3436
  %153 = load ptr, ptr %152, align 8, !dbg !3442
  %arrayidx6.15 = getelementptr inbounds ptr, ptr %153, i64 %indvars.iv, !dbg !3442
  %154 = load ptr, ptr %arrayidx6.15, align 8, !dbg !3442
  %arrayidx8.15 = getelementptr inbounds i8, ptr %154, i64 60, !dbg !3442
  %155 = load i32, ptr %arrayidx8.15, align 4, !dbg !3442
  %conv.15 = trunc i32 %155 to i16, !dbg !3443
  %156 = load ptr, ptr %imgY, align 8, !dbg !3444
  %157 = load i32, ptr %pix_y, align 8, !dbg !3445
  %add.15 = add nsw i32 %157, %9, !dbg !3446
  %idxprom9.15 = sext i32 %add.15 to i64, !dbg !3447
  %arrayidx10.15 = getelementptr inbounds ptr, ptr %156, i64 %idxprom9.15, !dbg !3447
  %158 = load ptr, ptr %arrayidx10.15, align 8, !dbg !3447
  %159 = load i32, ptr %pix_x, align 4, !dbg !3448
  %160 = sext i32 %159 to i64, !dbg !3447
  %161 = getelementptr i16, ptr %158, i64 %160, !dbg !3447
  %arrayidx13.15 = getelementptr i8, ptr %161, i64 30, !dbg !3447
  store i16 %conv.15, ptr %arrayidx13.15, align 2, !dbg !3449
    #dbg_value(i64 16, !3425, !DIExpression(), !3430)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3450
    #dbg_value(i64 %indvars.iv.next, !3424, !DIExpression(), !3430)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !3451
  br i1 %exitcond.not, label %for.end16, label %for.cond3.preheader, !dbg !3434, !llvm.loop !3452

for.end16:                                        ; preds = %for.cond3.preheader
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268, !dbg !3454
  %162 = load i32, ptr %chroma_format_idc, align 4, !dbg !3454
  %cmp17.not = icmp eq i32 %162, 0, !dbg !3456
  br i1 %cmp17.not, label %if.end, label %land.lhs.true, !dbg !3457

land.lhs.true:                                    ; preds = %for.end16
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %1, i64 849280, !dbg !3458
  %163 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !3458
  %cmp19 = icmp eq i32 %163, 0, !dbg !3459
  br i1 %cmp19, label %for.cond21.preheader, label %if.end, !dbg !3460

for.cond21.preheader:                             ; preds = %land.lhs.true
  %mb_cr_size_y = getelementptr inbounds i8, ptr %1, i64 849112
    #dbg_value(i32 0, !3426, !DIExpression(), !3430)
  %mb_cr_size_x = getelementptr inbounds i8, ptr %1, i64 849108
  %imgUV = getelementptr inbounds i8, ptr %2, i64 136
  %pix_c_y = getelementptr inbounds i8, ptr %currMB, i64 56
  %pix_c_x = getelementptr inbounds i8, ptr %currMB, i64 52
  %164 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3461
  %165 = icmp sgt i32 %164, 0, !dbg !3468
  br i1 %165, label %for.cond29.preheader.lr.ph, label %if.end

for.cond29.preheader.lr.ph:                       ; preds = %for.cond21.preheader
    #dbg_value(i64 0, !3426, !DIExpression(), !3430)
    #dbg_value(i32 0, !3424, !DIExpression(), !3430)
  %166 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3469
  %167 = icmp sgt i32 %166, 0, !dbg !3473
  br i1 %167, label %for.cond29.preheader, label %if.end

for.cond29.preheader:                             ; preds = %for.cond29.preheader.lr.ph, %for.inc53
  %168 = phi i32 [ %183, %for.inc53 ], [ %164, %for.cond29.preheader.lr.ph ]
  %169 = phi i32 [ %184, %for.inc53 ], [ %166, %for.cond29.preheader.lr.ph ], !dbg !3469
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc53 ], [ 0, %for.cond29.preheader.lr.ph ]
    #dbg_value(i64 %indvars.iv113, !3424, !DIExpression(), !3430)
    #dbg_value(i32 0, !3425, !DIExpression(), !3430)
  %cmp30101 = icmp sgt i32 %169, 0, !dbg !3473
  br i1 %cmp30101, label %for.body32.lr.ph, label %for.inc53, !dbg !3474

for.body32.lr.ph:                                 ; preds = %for.cond29.preheader
  %170 = trunc nuw nsw i64 %indvars.iv113 to i32
  br label %for.body32, !dbg !3474

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv110 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next111, %for.body32 ]
    #dbg_value(i64 %indvars.iv110, !3425, !DIExpression(), !3430)
  %171 = load ptr, ptr %cof, align 8, !dbg !3475
  %arrayidx36 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3477
  %172 = load ptr, ptr %arrayidx36, align 8, !dbg !3477
  %arrayidx38 = getelementptr inbounds ptr, ptr %172, i64 %indvars.iv113, !dbg !3477
  %173 = load ptr, ptr %arrayidx38, align 8, !dbg !3477
  %arrayidx40 = getelementptr inbounds i32, ptr %173, i64 %indvars.iv110, !dbg !3477
  %174 = load i32, ptr %arrayidx40, align 4, !dbg !3477
  %conv41 = trunc i32 %174 to i16, !dbg !3478
  %175 = load ptr, ptr %imgUV, align 8, !dbg !3479
  %176 = load ptr, ptr %175, align 8, !dbg !3480
  %177 = load i32, ptr %pix_c_y, align 8, !dbg !3481
  %add44 = add nsw i32 %177, %170, !dbg !3482
  %idxprom45 = sext i32 %add44 to i64, !dbg !3480
  %arrayidx46 = getelementptr inbounds ptr, ptr %176, i64 %idxprom45, !dbg !3480
  %178 = load ptr, ptr %arrayidx46, align 8, !dbg !3480
  %179 = load i32, ptr %pix_c_x, align 4, !dbg !3483
  %180 = trunc nuw nsw i64 %indvars.iv110 to i32, !dbg !3484
  %add47 = add nsw i32 %179, %180, !dbg !3484
  %idxprom48 = sext i32 %add47 to i64, !dbg !3480
  %arrayidx49 = getelementptr inbounds i16, ptr %178, i64 %idxprom48, !dbg !3480
  store i16 %conv41, ptr %arrayidx49, align 2, !dbg !3485
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1, !dbg !3486
    #dbg_value(i64 %indvars.iv.next111, !3425, !DIExpression(), !3430)
  %181 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3469
  %182 = sext i32 %181 to i64, !dbg !3473
  %cmp30 = icmp slt i64 %indvars.iv.next111, %182, !dbg !3473
  br i1 %cmp30, label %for.body32, label %for.inc53.loopexit, !dbg !3474, !llvm.loop !3487

for.inc53.loopexit:                               ; preds = %for.body32
  %.pre = load i32, ptr %mb_cr_size_y, align 8, !dbg !3461
  br label %for.inc53, !dbg !3489

for.inc53:                                        ; preds = %for.inc53.loopexit, %for.cond29.preheader
  %183 = phi i32 [ %.pre, %for.inc53.loopexit ], [ %168, %for.cond29.preheader ], !dbg !3461
  %184 = phi i32 [ %181, %for.inc53.loopexit ], [ %169, %for.cond29.preheader ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1, !dbg !3489
    #dbg_value(i64 %indvars.iv.next114, !3424, !DIExpression(), !3430)
  %185 = sext i32 %183 to i64, !dbg !3468
  %cmp26 = icmp slt i64 %indvars.iv.next114, %185, !dbg !3468
  br i1 %cmp26, label %for.cond29.preheader, label %for.inc56, !dbg !3490, !llvm.loop !3491

for.inc56:                                        ; preds = %for.inc53
    #dbg_value(i64 1, !3426, !DIExpression(), !3430)
    #dbg_value(i32 0, !3424, !DIExpression(), !3430)
  %cmp26103.1 = icmp sgt i32 %183, 0, !dbg !3468
  br i1 %cmp26103.1, label %for.cond29.preheader.lr.ph.1, label %if.end, !dbg !3490

for.cond29.preheader.lr.ph.1:                     ; preds = %for.inc56
  %.pr = load i32, ptr %mb_cr_size_x, align 4, !dbg !3469
  %186 = icmp sgt i32 %.pr, 0, !dbg !3473
  br i1 %186, label %for.cond29.preheader.1, label %if.end

for.cond29.preheader.1:                           ; preds = %for.cond29.preheader.lr.ph.1, %for.inc53.1
  %187 = phi i32 [ %202, %for.inc53.1 ], [ %183, %for.cond29.preheader.lr.ph.1 ]
  %188 = phi i32 [ %203, %for.inc53.1 ], [ %.pr, %for.cond29.preheader.lr.ph.1 ], !dbg !3469
  %indvars.iv113.1 = phi i64 [ %indvars.iv.next114.1, %for.inc53.1 ], [ 0, %for.cond29.preheader.lr.ph.1 ]
    #dbg_value(i64 %indvars.iv113.1, !3424, !DIExpression(), !3430)
    #dbg_value(i32 0, !3425, !DIExpression(), !3430)
  %cmp30101.1 = icmp sgt i32 %188, 0, !dbg !3473
  br i1 %cmp30101.1, label %for.body32.lr.ph.1, label %for.inc53.1, !dbg !3474

for.body32.lr.ph.1:                               ; preds = %for.cond29.preheader.1
  %189 = trunc nuw nsw i64 %indvars.iv113.1 to i32
  br label %for.body32.1, !dbg !3474

for.body32.1:                                     ; preds = %for.body32.1, %for.body32.lr.ph.1
  %indvars.iv110.1 = phi i64 [ 0, %for.body32.lr.ph.1 ], [ %indvars.iv.next111.1, %for.body32.1 ]
    #dbg_value(i64 %indvars.iv110.1, !3425, !DIExpression(), !3430)
  %190 = load ptr, ptr %cof, align 8, !dbg !3475
  %arrayidx36.1 = getelementptr inbounds i8, ptr %190, i64 16, !dbg !3477
  %191 = load ptr, ptr %arrayidx36.1, align 8, !dbg !3477
  %arrayidx38.1 = getelementptr inbounds ptr, ptr %191, i64 %indvars.iv113.1, !dbg !3477
  %192 = load ptr, ptr %arrayidx38.1, align 8, !dbg !3477
  %arrayidx40.1 = getelementptr inbounds i32, ptr %192, i64 %indvars.iv110.1, !dbg !3477
  %193 = load i32, ptr %arrayidx40.1, align 4, !dbg !3477
  %conv41.1 = trunc i32 %193 to i16, !dbg !3478
  %194 = load ptr, ptr %imgUV, align 8, !dbg !3479
  %arrayidx43.1 = getelementptr inbounds i8, ptr %194, i64 8, !dbg !3480
  %195 = load ptr, ptr %arrayidx43.1, align 8, !dbg !3480
  %196 = load i32, ptr %pix_c_y, align 8, !dbg !3481
  %add44.1 = add nsw i32 %196, %189, !dbg !3482
  %idxprom45.1 = sext i32 %add44.1 to i64, !dbg !3480
  %arrayidx46.1 = getelementptr inbounds ptr, ptr %195, i64 %idxprom45.1, !dbg !3480
  %197 = load ptr, ptr %arrayidx46.1, align 8, !dbg !3480
  %198 = load i32, ptr %pix_c_x, align 4, !dbg !3483
  %199 = trunc nuw nsw i64 %indvars.iv110.1 to i32, !dbg !3484
  %add47.1 = add nsw i32 %198, %199, !dbg !3484
  %idxprom48.1 = sext i32 %add47.1 to i64, !dbg !3480
  %arrayidx49.1 = getelementptr inbounds i16, ptr %197, i64 %idxprom48.1, !dbg !3480
  store i16 %conv41.1, ptr %arrayidx49.1, align 2, !dbg !3485
  %indvars.iv.next111.1 = add nuw nsw i64 %indvars.iv110.1, 1, !dbg !3486
    #dbg_value(i64 %indvars.iv.next111.1, !3425, !DIExpression(), !3430)
  %200 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3469
  %201 = sext i32 %200 to i64, !dbg !3473
  %cmp30.1 = icmp slt i64 %indvars.iv.next111.1, %201, !dbg !3473
  br i1 %cmp30.1, label %for.body32.1, label %for.inc53.loopexit.1, !dbg !3474, !llvm.loop !3487

for.inc53.loopexit.1:                             ; preds = %for.body32.1
  %.pre119 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3461
  br label %for.inc53.1, !dbg !3489

for.inc53.1:                                      ; preds = %for.inc53.loopexit.1, %for.cond29.preheader.1
  %202 = phi i32 [ %.pre119, %for.inc53.loopexit.1 ], [ %187, %for.cond29.preheader.1 ], !dbg !3461
  %203 = phi i32 [ %200, %for.inc53.loopexit.1 ], [ %188, %for.cond29.preheader.1 ]
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113.1, 1, !dbg !3489
    #dbg_value(i64 %indvars.iv.next114.1, !3424, !DIExpression(), !3430)
  %204 = sext i32 %202 to i64, !dbg !3468
  %cmp26.1 = icmp slt i64 %indvars.iv.next114.1, %204, !dbg !3468
  br i1 %cmp26.1, label %for.cond29.preheader.1, label %if.end, !dbg !3490, !llvm.loop !3491

if.end:                                           ; preds = %for.inc53.1, %for.cond29.preheader.lr.ph, %for.inc56, %for.cond29.preheader.lr.ph.1, %for.cond21.preheader, %land.lhs.true, %for.end16
  tail call void @update_qp(ptr noundef nonnull %currMB, i32 noundef 0) #7, !dbg !3494
  %nz_coeff = getelementptr inbounds i8, ptr %1, i64 848832, !dbg !3495
  %205 = load ptr, ptr %nz_coeff, align 8, !dbg !3495
  %mbAddrX = getelementptr inbounds i8, ptr %currMB, i64 24, !dbg !3496
  %206 = load i32, ptr %mbAddrX, align 8, !dbg !3496
  %idxprom59 = sext i32 %206 to i64, !dbg !3497
  %arrayidx60 = getelementptr inbounds ptr, ptr %205, i64 %idxprom59, !dbg !3497
  %207 = load ptr, ptr %arrayidx60, align 8, !dbg !3497
  %208 = load ptr, ptr %207, align 8, !dbg !3497
  %209 = load ptr, ptr %208, align 8, !dbg !3497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %209, i8 16, i64 48, i1 false), !dbg !3498
  %skip_flag = getelementptr inbounds i8, ptr %currMB, i64 374, !dbg !3499
  store i8 0, ptr %skip_flag, align 2, !dbg !3500
  %cbp_blk = getelementptr inbounds i8, ptr %currMB, i64 288, !dbg !3501
  store i64 65535, ptr %cbp_blk, align 8, !dbg !3502
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212, !dbg !3503
  store i32 0, ptr %last_dquant, align 4, !dbg !3504
  %is_reset_coeff = getelementptr inbounds i8, ptr %0, i64 1240, !dbg !3505
  store i32 0, ptr %is_reset_coeff, align 8, !dbg !3506
  ret i32 1, !dbg !3507
}

declare !dbg !3508 void @update_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "decode_block_scan", scope: !2, file: !123, line: 103, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !90, globals: !97, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/mb_prediction.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5255a9d6dde64f187a6e170711e38a4e")
!4 = !{!5, !14, !20, !29, !36, !44, !50, !57, !65, !84}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!10 = !DIEnumerator(name: "YUV400", value: 0)
!11 = !DIEnumerator(name: "YUV420", value: 1)
!12 = !DIEnumerator(name: "YUV422", value: 2)
!13 = !DIEnumerator(name: "YUV444", value: 3)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 15, baseType: !7, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!17 = !DIEnumerator(name: "CM_YUV", value: 0)
!18 = !DIEnumerator(name: "CM_RGB", value: 1)
!19 = !DIEnumerator(name: "CM_XYZ", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 25, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!24 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!25 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!26 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!27 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!28 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 135, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "FRAME", value: 0)
!34 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!35 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 22, baseType: !31, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "PLANE_Y", value: 0)
!39 = !DIEnumerator(name: "PLANE_U", value: 1)
!40 = !DIEnumerator(name: "PLANE_V", value: 2)
!41 = !DIEnumerator(name: "PLANE_G", value: 0)
!42 = !DIEnumerator(name: "PLANE_B", value: 1)
!43 = !DIEnumerator(name: "PLANE_R", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 246, baseType: !31, size: 32, elements: !46)
!45 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "DECODING_OK", value: 0)
!48 = !DIEnumerator(name: "SEARCH_SYNC", value: 1)
!49 = !DIEnumerator(name: "PICTURE_DECODED", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 34, baseType: !31, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "LIST_0", value: 0)
!53 = !DIEnumerator(name: "LIST_1", value: 1)
!54 = !DIEnumerator(name: "BI_PRED", value: 2)
!55 = !DIEnumerator(name: "BI_PRED_L0", value: 3)
!56 = !DIEnumerator(name: "BI_PRED_L1", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 142, baseType: !31, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIEnumerator(name: "P_SLICE", value: 0)
!60 = !DIEnumerator(name: "B_SLICE", value: 1)
!61 = !DIEnumerator(name: "I_SLICE", value: 2)
!62 = !DIEnumerator(name: "SP_SLICE", value: 3)
!63 = !DIEnumerator(name: "SI_SLICE", value: 4)
!64 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 117, baseType: !31, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!67 = !DIEnumerator(name: "PSKIP", value: 0)
!68 = !DIEnumerator(name: "BSKIP_DIRECT", value: 0)
!69 = !DIEnumerator(name: "P16x16", value: 1)
!70 = !DIEnumerator(name: "P16x8", value: 2)
!71 = !DIEnumerator(name: "P8x16", value: 3)
!72 = !DIEnumerator(name: "SMB8x8", value: 4)
!73 = !DIEnumerator(name: "SMB8x4", value: 5)
!74 = !DIEnumerator(name: "SMB4x8", value: 6)
!75 = !DIEnumerator(name: "SMB4x4", value: 7)
!76 = !DIEnumerator(name: "P8x8", value: 8)
!77 = !DIEnumerator(name: "I4MB", value: 9)
!78 = !DIEnumerator(name: "I16MB", value: 10)
!79 = !DIEnumerator(name: "IBLOCK", value: 11)
!80 = !DIEnumerator(name: "SI4MB", value: 12)
!81 = !DIEnumerator(name: "I8MB", value: 13)
!82 = !DIEnumerator(name: "IPCM", value: 14)
!83 = !DIEnumerator(name: "MAXMODE", value: 15)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 77, baseType: !31, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "FRAME_CODING", value: 0)
!87 = !DIEnumerator(name: "FIELD_CODING", value: 1)
!88 = !DIEnumerator(name: "ADAPTIVE_CODING", value: 2)
!89 = !DIEnumerator(name: "FRAME_MB_PAIR_CODING", value: 3)
!90 = !{!91, !92, !93, !7}
!91 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !94, line: 23, baseType: !96)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !{!98, !0, !104, !114}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 536, elements: !102)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!102 = !{!103}
!103 = !DISubrange(count: 67)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "INT_BITS", scope: !106, file: !107, line: 118, type: !113, isLocal: true, isDefinition: true)
!106 = distinct !DISubprogram(name: "iabs", scope: !107, file: !107, line: 116, type: !108, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!107 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!108 = !DISubroutineType(types: !109)
!109 = !{!7, !7}
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "x", arg: 1, scope: !106, file: !107, line: 116, type: !7)
!112 = !DILocalVariable(name: "y", scope: !106, file: !107, line: 119, type: !7)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "zero_mv", scope: !2, file: !116, line: 106, type: !117, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !116, line: 104, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 100, size: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !119, file: !116, line: 102, baseType: !92, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !119, file: !116, line: 103, baseType: !92, size: 16, offset: 16)
!123 = !DIFile(filename: "ldecod_src/inc/block.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e90b7727b4f0f4492b5dc2d8d9d6a429")
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !128)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !94, line: 21, baseType: !127)
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !{!129}
!129 = !DISubrange(count: 16)
!130 = !{i32 7, !"Dwarf Version", i32 5}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{i32 8, !"PIC Level", i32 2}
!134 = !{i32 7, !"PIE Level", i32 2}
!135 = !{i32 7, !"uwtable", i32 2}
!136 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!137 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!138 = distinct !DISubprogram(name: "mb_pred_intra4x4", scope: !3, file: !3, line: 42, type: !139, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!139 = !DISubroutineType(types: !140)
!140 = !{!7, !141, !899, !614, !680}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !116, line: 273, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !116, line: 197, size: 3840, elements: !144)
!144 = !{!145, !1224, !1225, !1226, !1227, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1256, !1257, !1258, !1259, !1260, !1263, !1264, !1266, !1267, !1268, !1269, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1293, !1294, !1299, !1303, !1307}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !143, file: !116, line: 199, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !116, line: 341, size: 109184, elements: !148)
!148 = !{!149, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !999, !1001, !1054, !1084, !1111, !1114, !1115, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1149, !1150, !1151, !1152, !1153, !1154, !1157, !1158, !1161, !1162, !1164, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1177, !1178, !1179, !1180, !1181, !1183, !1184, !1185, !1189, !1193, !1197, !1201, !1205, !1206, !1207, !1208, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !147, file: !116, line: 343, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !116, line: 566, size: 6855040, elements: !152)
!152 = !{!153, !238, !291, !394, !396, !398, !455, !457, !458, !459, !460, !461, !464, !484, !496, !497, !498, !499, !500, !501, !505, !506, !508, !509, !510, !511, !512, !513, !515, !517, !520, !521, !523, !524, !525, !526, !527, !529, !530, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !645, !646, !650, !651, !652, !653, !654, !655, !656, !657, !658, !660, !661, !662, !797, !801, !802, !804, !805, !808, !811, !812, !813, !817, !820, !823, !824, !825, !826, !827, !828, !854, !855, !857, !861, !862, !863, !864, !867, !872, !886, !890, !894, !895, !900, !901, !905, !906, !910, !931, !932, !935, !936, !937, !938, !939, !940, !941, !942}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !151, file: !116, line: 568, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !116, line: 850, size: 32128, elements: !156)
!156 = !{!157, !161, !162, !163, !164, !165, !166, !167, !168, !169, !199, !200, !201, !202, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !155, file: !116, line: 852, baseType: !158, size: 2040)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 2040, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 255)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !155, file: !116, line: 853, baseType: !158, size: 2040, offset: 2040)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !155, file: !116, line: 854, baseType: !158, size: 2040, offset: 4080)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !155, file: !116, line: 856, baseType: !7, size: 32, offset: 6144)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !155, file: !116, line: 857, baseType: !7, size: 32, offset: 6176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !155, file: !116, line: 858, baseType: !7, size: 32, offset: 6208)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !155, file: !116, line: 859, baseType: !7, size: 32, offset: 6240)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !155, file: !116, line: 860, baseType: !7, size: 32, offset: 6272)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !155, file: !116, line: 861, baseType: !7, size: 32, offset: 6304)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !155, file: !116, line: 864, baseType: !170, size: 1088, offset: 6336)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !6, line: 52, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !6, line: 30, size: 1088, elements: !172)
!172 = !{!173, !175, !177, !179, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !171, file: !6, line: 32, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !6, line: 28, baseType: !5)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !171, file: !6, line: 33, baseType: !176, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !6, line: 20, baseType: !14)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !171, file: !6, line: 34, baseType: !178, size: 64, offset: 64)
!178 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !171, file: !6, line: 35, baseType: !180, size: 96, offset: 128)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 3)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !171, file: !6, line: 36, baseType: !180, size: 96, offset: 224)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !171, file: !6, line: 37, baseType: !7, size: 32, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !171, file: !6, line: 38, baseType: !7, size: 32, offset: 352)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !171, file: !6, line: 39, baseType: !7, size: 32, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !171, file: !6, line: 40, baseType: !7, size: 32, offset: 416)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !171, file: !6, line: 41, baseType: !7, size: 32, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !171, file: !6, line: 42, baseType: !7, size: 32, offset: 480)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !171, file: !6, line: 43, baseType: !7, size: 32, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !171, file: !6, line: 44, baseType: !7, size: 32, offset: 544)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !171, file: !6, line: 45, baseType: !180, size: 96, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !171, file: !6, line: 46, baseType: !7, size: 32, offset: 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !171, file: !6, line: 47, baseType: !180, size: 96, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !171, file: !6, line: 48, baseType: !180, size: 96, offset: 800)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !171, file: !6, line: 49, baseType: !180, size: 96, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !171, file: !6, line: 50, baseType: !7, size: 32, offset: 992)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !171, file: !6, line: 51, baseType: !7, size: 32, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !155, file: !116, line: 865, baseType: !170, size: 1088, offset: 7424)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !155, file: !116, line: 867, baseType: !7, size: 32, offset: 8512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !155, file: !116, line: 868, baseType: !7, size: 32, offset: 8544)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !155, file: !116, line: 869, baseType: !203, size: 7744, offset: 8576)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !21, line: 60, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !21, line: 34, size: 7744, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !204, file: !21, line: 37, baseType: !158, size: 2040)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !204, file: !21, line: 38, baseType: !158, size: 2040, offset: 2040)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !204, file: !21, line: 39, baseType: !158, size: 2040, offset: 4080)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !204, file: !21, line: 40, baseType: !7, size: 32, offset: 6144)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !204, file: !21, line: 41, baseType: !211, size: 32, offset: 6176)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !21, line: 32, baseType: !20)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !204, file: !21, line: 42, baseType: !170, size: 1088, offset: 6208)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !204, file: !21, line: 43, baseType: !7, size: 32, offset: 7296)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !204, file: !21, line: 44, baseType: !7, size: 32, offset: 7328)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !204, file: !21, line: 45, baseType: !7, size: 32, offset: 7360)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !204, file: !21, line: 46, baseType: !7, size: 32, offset: 7392)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !204, file: !21, line: 47, baseType: !7, size: 32, offset: 7424)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !204, file: !21, line: 48, baseType: !7, size: 32, offset: 7456)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !204, file: !21, line: 49, baseType: !7, size: 32, offset: 7488)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !204, file: !21, line: 50, baseType: !7, size: 32, offset: 7520)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !204, file: !21, line: 51, baseType: !7, size: 32, offset: 7552)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !204, file: !21, line: 52, baseType: !7, size: 32, offset: 7584)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !204, file: !21, line: 53, baseType: !7, size: 32, offset: 7616)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !204, file: !21, line: 56, baseType: !225, size: 64, offset: 7680)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !155, file: !116, line: 870, baseType: !203, size: 7744, offset: 16320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !155, file: !116, line: 871, baseType: !203, size: 7744, offset: 24064)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !155, file: !116, line: 873, baseType: !7, size: 32, offset: 31808)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !155, file: !116, line: 884, baseType: !7, size: 32, offset: 31840)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !155, file: !116, line: 885, baseType: !7, size: 32, offset: 31872)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !155, file: !116, line: 886, baseType: !7, size: 32, offset: 31904)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !155, file: !116, line: 890, baseType: !7, size: 32, offset: 31936)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !155, file: !116, line: 893, baseType: !7, size: 32, offset: 31968)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !155, file: !116, line: 894, baseType: !7, size: 32, offset: 32000)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !155, file: !116, line: 895, baseType: !7, size: 32, offset: 32032)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !155, file: !116, line: 897, baseType: !7, size: 32, offset: 32064)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !155, file: !116, line: 899, baseType: !7, size: 32, offset: 32096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !151, file: !116, line: 569, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !241, line: 138, baseType: !242)
!241 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 94, size: 17728, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !254, !258, !262, !265, !266, !267, !268, !269, !273, !274, !275, !276, !277, !278, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !242, file: !241, line: 96, baseType: !7, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !242, file: !241, line: 97, baseType: !31, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !242, file: !241, line: 98, baseType: !31, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !242, file: !241, line: 99, baseType: !7, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !242, file: !241, line: 100, baseType: !7, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !242, file: !241, line: 102, baseType: !7, size: 32, offset: 160)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !242, file: !241, line: 103, baseType: !251, size: 384, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 12)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !242, file: !241, line: 104, baseType: !255, size: 3072, offset: 576)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !256)
!256 = !{!257, !129}
!257 = !DISubrange(count: 6)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !242, file: !241, line: 105, baseType: !259, size: 12288, offset: 3648)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !260)
!260 = !{!257, !261}
!261 = !DISubrange(count: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !242, file: !241, line: 106, baseType: !263, size: 192, offset: 15936)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !264)
!264 = !{!257}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !242, file: !241, line: 107, baseType: !263, size: 192, offset: 16128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !242, file: !241, line: 110, baseType: !7, size: 32, offset: 16320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !242, file: !241, line: 111, baseType: !31, size: 32, offset: 16352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !242, file: !241, line: 112, baseType: !31, size: 32, offset: 16384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !242, file: !241, line: 114, baseType: !270, size: 256, offset: 16416)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !242, file: !241, line: 116, baseType: !270, size: 256, offset: 16672)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !242, file: !241, line: 117, baseType: !270, size: 256, offset: 16928)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !242, file: !241, line: 119, baseType: !7, size: 32, offset: 17184)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !242, file: !241, line: 120, baseType: !31, size: 32, offset: 17216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !242, file: !241, line: 122, baseType: !31, size: 32, offset: 17248)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !242, file: !241, line: 123, baseType: !279, size: 64, offset: 17280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !242, file: !241, line: 125, baseType: !7, size: 32, offset: 17344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !242, file: !241, line: 126, baseType: !7, size: 32, offset: 17376)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !242, file: !241, line: 127, baseType: !7, size: 32, offset: 17408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !242, file: !241, line: 128, baseType: !31, size: 32, offset: 17440)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !242, file: !241, line: 129, baseType: !7, size: 32, offset: 17472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !242, file: !241, line: 130, baseType: !7, size: 32, offset: 17504)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !242, file: !241, line: 131, baseType: !7, size: 32, offset: 17536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !242, file: !241, line: 133, baseType: !7, size: 32, offset: 17568)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !242, file: !241, line: 135, baseType: !7, size: 32, offset: 17600)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !242, file: !241, line: 136, baseType: !7, size: 32, offset: 17632)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !242, file: !241, line: 137, baseType: !7, size: 32, offset: 17664)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !151, file: !116, line: 570, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !241, line: 197, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 142, size: 33024, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !392, !393}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !294, file: !241, line: 144, baseType: !7, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !294, file: !241, line: 146, baseType: !31, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !294, file: !241, line: 147, baseType: !7, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !294, file: !241, line: 148, baseType: !7, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !294, file: !241, line: 149, baseType: !7, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !294, file: !241, line: 150, baseType: !7, size: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !294, file: !241, line: 152, baseType: !7, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !294, file: !241, line: 154, baseType: !31, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !294, file: !241, line: 155, baseType: !31, size: 32, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !294, file: !241, line: 156, baseType: !31, size: 32, offset: 288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !294, file: !241, line: 158, baseType: !7, size: 32, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !294, file: !241, line: 159, baseType: !251, size: 384, offset: 352)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !294, file: !241, line: 160, baseType: !255, size: 3072, offset: 736)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !294, file: !241, line: 161, baseType: !259, size: 12288, offset: 3808)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !294, file: !241, line: 162, baseType: !263, size: 192, offset: 16096)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !294, file: !241, line: 163, baseType: !263, size: 192, offset: 16288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !294, file: !241, line: 165, baseType: !31, size: 32, offset: 16480)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !294, file: !241, line: 166, baseType: !31, size: 32, offset: 16512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !294, file: !241, line: 167, baseType: !31, size: 32, offset: 16544)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !294, file: !241, line: 168, baseType: !31, size: 32, offset: 16576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !294, file: !241, line: 170, baseType: !31, size: 32, offset: 16608)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !294, file: !241, line: 172, baseType: !7, size: 32, offset: 16640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !294, file: !241, line: 173, baseType: !7, size: 32, offset: 16672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !294, file: !241, line: 174, baseType: !7, size: 32, offset: 16704)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !294, file: !241, line: 175, baseType: !31, size: 32, offset: 16736)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !294, file: !241, line: 177, baseType: !322, size: 8192, offset: 16768)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !294, file: !241, line: 178, baseType: !31, size: 32, offset: 24960)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !294, file: !241, line: 179, baseType: !7, size: 32, offset: 24992)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !294, file: !241, line: 180, baseType: !31, size: 32, offset: 25024)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !294, file: !241, line: 181, baseType: !31, size: 32, offset: 25056)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !294, file: !241, line: 182, baseType: !7, size: 32, offset: 25088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !294, file: !241, line: 184, baseType: !7, size: 32, offset: 25120)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !294, file: !241, line: 185, baseType: !7, size: 32, offset: 25152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !294, file: !241, line: 186, baseType: !7, size: 32, offset: 25184)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !294, file: !241, line: 187, baseType: !31, size: 32, offset: 25216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !294, file: !241, line: 188, baseType: !31, size: 32, offset: 25248)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !294, file: !241, line: 189, baseType: !31, size: 32, offset: 25280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !294, file: !241, line: 190, baseType: !31, size: 32, offset: 25312)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !294, file: !241, line: 191, baseType: !7, size: 32, offset: 25344)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !294, file: !241, line: 192, baseType: !339, size: 7584, offset: 25376)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !241, line: 90, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 53, size: 7584, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !340, file: !241, line: 55, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !340, file: !241, line: 56, baseType: !31, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !340, file: !241, line: 57, baseType: !96, size: 16, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !340, file: !241, line: 58, baseType: !96, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !340, file: !241, line: 59, baseType: !7, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !340, file: !241, line: 60, baseType: !7, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !340, file: !241, line: 61, baseType: !7, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !340, file: !241, line: 62, baseType: !31, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !340, file: !241, line: 63, baseType: !7, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !340, file: !241, line: 64, baseType: !7, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !340, file: !241, line: 65, baseType: !31, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !340, file: !241, line: 66, baseType: !31, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !340, file: !241, line: 67, baseType: !31, size: 32, offset: 352)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !340, file: !241, line: 68, baseType: !7, size: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !340, file: !241, line: 69, baseType: !31, size: 32, offset: 416)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !340, file: !241, line: 70, baseType: !31, size: 32, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !340, file: !241, line: 71, baseType: !7, size: 32, offset: 480)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !340, file: !241, line: 72, baseType: !31, size: 32, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !340, file: !241, line: 73, baseType: !31, size: 32, offset: 544)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !340, file: !241, line: 74, baseType: !7, size: 32, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !340, file: !241, line: 75, baseType: !7, size: 32, offset: 608)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !340, file: !241, line: 76, baseType: !364, size: 3296, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !241, line: 50, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 38, size: 3296, elements: !366)
!366 = !{!367, !368, !369, !370, !374, !375, !376, !377, !378, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !365, file: !241, line: 40, baseType: !31, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !365, file: !241, line: 41, baseType: !31, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !365, file: !241, line: 42, baseType: !31, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !365, file: !241, line: 43, baseType: !371, size: 1024, offset: 96)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !365, file: !241, line: 44, baseType: !371, size: 1024, offset: 1120)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !365, file: !241, line: 45, baseType: !371, size: 1024, offset: 2144)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !365, file: !241, line: 46, baseType: !31, size: 32, offset: 3168)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !365, file: !241, line: 47, baseType: !31, size: 32, offset: 3200)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !365, file: !241, line: 48, baseType: !31, size: 32, offset: 3232)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !365, file: !241, line: 49, baseType: !31, size: 32, offset: 3264)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !340, file: !241, line: 77, baseType: !7, size: 32, offset: 3936)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !340, file: !241, line: 78, baseType: !364, size: 3296, offset: 3968)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !340, file: !241, line: 80, baseType: !7, size: 32, offset: 7264)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !340, file: !241, line: 81, baseType: !7, size: 32, offset: 7296)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !340, file: !241, line: 82, baseType: !7, size: 32, offset: 7328)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !340, file: !241, line: 83, baseType: !7, size: 32, offset: 7360)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !340, file: !241, line: 84, baseType: !31, size: 32, offset: 7392)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !340, file: !241, line: 85, baseType: !31, size: 32, offset: 7424)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !340, file: !241, line: 86, baseType: !31, size: 32, offset: 7456)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !340, file: !241, line: 87, baseType: !31, size: 32, offset: 7488)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !340, file: !241, line: 88, baseType: !31, size: 32, offset: 7520)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !340, file: !241, line: 89, baseType: !31, size: 32, offset: 7552)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !294, file: !241, line: 193, baseType: !31, size: 32, offset: 32960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !294, file: !241, line: 195, baseType: !7, size: 32, offset: 32992)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !151, file: !116, line: 571, baseType: !395, size: 1056768, offset: 192)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 1056768, elements: !372)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !151, file: !116, line: 572, baseType: !397, size: 4538368, offset: 1056960)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 4538368, elements: !323)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !151, file: !116, line: 575, baseType: !399, size: 64, offset: 5595328)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !241, line: 256, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 228, size: 37312, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !423, !424, !425, !426}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !401, file: !241, line: 230, baseType: !293, size: 33024)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !401, file: !241, line: 232, baseType: !31, size: 32, offset: 33024)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !401, file: !241, line: 233, baseType: !7, size: 32, offset: 33056)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !401, file: !241, line: 234, baseType: !225, size: 64, offset: 33088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !401, file: !241, line: 235, baseType: !225, size: 64, offset: 33152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !401, file: !241, line: 236, baseType: !409, size: 64, offset: 33216)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !401, file: !241, line: 237, baseType: !225, size: 64, offset: 33280)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !401, file: !241, line: 238, baseType: !409, size: 64, offset: 33344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !401, file: !241, line: 240, baseType: !225, size: 64, offset: 33408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !401, file: !241, line: 241, baseType: !409, size: 64, offset: 33472)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !401, file: !241, line: 242, baseType: !225, size: 64, offset: 33536)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !401, file: !241, line: 243, baseType: !409, size: 64, offset: 33600)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !401, file: !241, line: 245, baseType: !7, size: 32, offset: 33664)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !401, file: !241, line: 246, baseType: !225, size: 64, offset: 33728)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !401, file: !241, line: 247, baseType: !225, size: 64, offset: 33792)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !401, file: !241, line: 248, baseType: !409, size: 64, offset: 33856)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !401, file: !241, line: 249, baseType: !409, size: 64, offset: 33920)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !401, file: !241, line: 250, baseType: !422, size: 64, offset: 33984)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !401, file: !241, line: 251, baseType: !409, size: 64, offset: 34048)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !401, file: !241, line: 253, baseType: !31, size: 32, offset: 34112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !401, file: !241, line: 254, baseType: !7, size: 32, offset: 34144)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !401, file: !241, line: 255, baseType: !427, size: 3136, offset: 34176)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !241, line: 226, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !241, line: 200, size: 3136, elements: !429)
!429 = !{!430, !431, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !451, !452, !453, !454}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !428, file: !241, line: 202, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !428, file: !241, line: 203, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !428, file: !241, line: 204, baseType: !225, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !428, file: !241, line: 205, baseType: !409, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !428, file: !241, line: 206, baseType: !432, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !428, file: !241, line: 207, baseType: !225, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !428, file: !241, line: 208, baseType: !225, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !428, file: !241, line: 209, baseType: !432, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !428, file: !241, line: 210, baseType: !432, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !428, file: !241, line: 211, baseType: !432, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !428, file: !241, line: 212, baseType: !432, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !428, file: !241, line: 213, baseType: !432, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !428, file: !241, line: 216, baseType: !91, size: 8, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !428, file: !241, line: 217, baseType: !91, size: 8, offset: 776)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !428, file: !241, line: 218, baseType: !91, size: 8, offset: 784)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !428, file: !241, line: 219, baseType: !447, size: 1024, offset: 800)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !372)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !428, file: !241, line: 220, baseType: !447, size: 1024, offset: 1824)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !428, file: !241, line: 221, baseType: !450, size: 256, offset: 2848)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !372)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !428, file: !241, line: 222, baseType: !91, size: 8, offset: 3104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !428, file: !241, line: 223, baseType: !91, size: 8, offset: 3112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !428, file: !241, line: 224, baseType: !91, size: 8, offset: 3120)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !428, file: !241, line: 225, baseType: !91, size: 8, offset: 3128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !151, file: !116, line: 577, baseType: !456, size: 1193984, offset: 5595392)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 1193984, elements: !372)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !151, file: !116, line: 578, baseType: !7, size: 32, offset: 6789376)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !151, file: !116, line: 579, baseType: !7, size: 32, offset: 6789408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !151, file: !116, line: 580, baseType: !7, size: 32, offset: 6789440)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !151, file: !116, line: 581, baseType: !7, size: 32, offset: 6789472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !151, file: !116, line: 584, baseType: !462, size: 64, offset: 6789504)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !116, line: 584, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !151, file: !116, line: 586, baseType: !465, size: 64, offset: 6789568)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !116, line: 902, size: 416, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477, !478, !479, !480, !481, !482, !483}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !466, file: !116, line: 904, baseType: !31, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !466, file: !116, line: 905, baseType: !31, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !466, file: !116, line: 906, baseType: !7, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !466, file: !116, line: 907, baseType: !31, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !466, file: !116, line: 908, baseType: !7, size: 32, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !466, file: !116, line: 909, baseType: !474, size: 64, offset: 160)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !466, file: !116, line: 910, baseType: !126, size: 8, offset: 224)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !466, file: !116, line: 911, baseType: !126, size: 8, offset: 232)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !466, file: !116, line: 912, baseType: !7, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !466, file: !116, line: 913, baseType: !7, size: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !466, file: !116, line: 915, baseType: !7, size: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !466, file: !116, line: 916, baseType: !7, size: 32, offset: 352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !466, file: !116, line: 917, baseType: !7, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !151, file: !116, line: 587, baseType: !485, size: 64, offset: 6789632)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !116, line: 839, size: 512, elements: !487)
!487 = !{!488, !489, !492, !493, !494, !495}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !486, file: !116, line: 841, baseType: !7, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !486, file: !116, line: 842, baseType: !490, size: 96, offset: 32)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 96, elements: !181)
!491 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !486, file: !116, line: 843, baseType: !490, size: 96, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !486, file: !116, line: 844, baseType: !490, size: 96, offset: 224)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !486, file: !116, line: 845, baseType: !490, size: 96, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !486, file: !116, line: 846, baseType: !490, size: 96, offset: 416)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !151, file: !116, line: 588, baseType: !7, size: 32, offset: 6789696)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !151, file: !116, line: 591, baseType: !31, size: 32, offset: 6789728)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !151, file: !116, line: 592, baseType: !7, size: 32, offset: 6789760)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !151, file: !116, line: 593, baseType: !7, size: 32, offset: 6789792)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !151, file: !116, line: 594, baseType: !7, size: 32, offset: 6789824)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !151, file: !116, line: 595, baseType: !502, size: 64, offset: 6789888)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !116, line: 542, baseType: !147)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !151, file: !116, line: 596, baseType: !432, size: 64, offset: 6789952)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !151, file: !116, line: 597, baseType: !507, size: 192, offset: 6790016)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 192, elements: !181)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !116, line: 601, baseType: !7, size: 32, offset: 6790208)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !151, file: !116, line: 602, baseType: !7, size: 32, offset: 6790240)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !151, file: !116, line: 603, baseType: !7, size: 32, offset: 6790272)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !151, file: !116, line: 604, baseType: !7, size: 32, offset: 6790304)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !151, file: !116, line: 605, baseType: !7, size: 32, offset: 6790336)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !151, file: !116, line: 607, baseType: !514, size: 64, offset: 6790400)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !151, file: !116, line: 608, baseType: !516, size: 192, offset: 6790464)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !181)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !151, file: !116, line: 609, baseType: !518, size: 64, offset: 6790656)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !151, file: !116, line: 610, baseType: !409, size: 64, offset: 6790720)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !151, file: !116, line: 611, baseType: !522, size: 192, offset: 6790784)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 192, elements: !181)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !151, file: !116, line: 613, baseType: !7, size: 32, offset: 6790976)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !151, file: !116, line: 614, baseType: !7, size: 32, offset: 6791008)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !151, file: !116, line: 617, baseType: !503, size: 64, offset: 6791040)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !151, file: !116, line: 618, baseType: !141, size: 64, offset: 6791104)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !151, file: !116, line: 619, baseType: !528, size: 192, offset: 6791168)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 192, elements: !181)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !151, file: !116, line: 621, baseType: !7, size: 32, offset: 6791360)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !151, file: !116, line: 626, baseType: !531, size: 64, offset: 6791424)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !116, line: 626, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !151, file: !116, line: 627, baseType: !531, size: 64, offset: 6791488)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !151, file: !116, line: 629, baseType: !31, size: 32, offset: 6791552)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !151, file: !116, line: 630, baseType: !7, size: 32, offset: 6791584)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !151, file: !116, line: 634, baseType: !7, size: 32, offset: 6791616)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !151, file: !116, line: 635, baseType: !31, size: 32, offset: 6791648)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !151, file: !116, line: 638, baseType: !7, size: 32, offset: 6791680)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !151, file: !116, line: 638, baseType: !7, size: 32, offset: 6791712)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !151, file: !116, line: 638, baseType: !7, size: 32, offset: 6791744)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !151, file: !116, line: 639, baseType: !31, size: 32, offset: 6791776)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !151, file: !116, line: 639, baseType: !31, size: 32, offset: 6791808)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !151, file: !116, line: 640, baseType: !7, size: 32, offset: 6791840)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !151, file: !116, line: 641, baseType: !7, size: 32, offset: 6791872)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !151, file: !116, line: 642, baseType: !7, size: 32, offset: 6791904)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !151, file: !116, line: 645, baseType: !7, size: 32, offset: 6791936)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !151, file: !116, line: 647, baseType: !31, size: 32, offset: 6791968)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !151, file: !116, line: 648, baseType: !31, size: 32, offset: 6792000)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !151, file: !116, line: 649, baseType: !31, size: 32, offset: 6792032)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !151, file: !116, line: 650, baseType: !31, size: 32, offset: 6792064)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !151, file: !116, line: 651, baseType: !31, size: 32, offset: 6792096)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !151, file: !116, line: 652, baseType: !31, size: 32, offset: 6792128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !151, file: !116, line: 653, baseType: !31, size: 32, offset: 6792160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !151, file: !116, line: 655, baseType: !7, size: 32, offset: 6792192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !151, file: !116, line: 657, baseType: !7, size: 32, offset: 6792224)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !151, file: !116, line: 658, baseType: !7, size: 32, offset: 6792256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !151, file: !116, line: 661, baseType: !7, size: 32, offset: 6792288)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !151, file: !116, line: 662, baseType: !92, size: 16, offset: 6792320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !151, file: !116, line: 663, baseType: !92, size: 16, offset: 6792336)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !151, file: !116, line: 664, baseType: !474, size: 64, offset: 6792352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !151, file: !116, line: 665, baseType: !7, size: 32, offset: 6792416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !151, file: !116, line: 666, baseType: !7, size: 32, offset: 6792448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !151, file: !116, line: 667, baseType: !564, size: 96, offset: 6792480)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !181)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !151, file: !116, line: 668, baseType: !180, size: 96, offset: 6792576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !151, file: !116, line: 670, baseType: !7, size: 32, offset: 6792672)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !151, file: !116, line: 671, baseType: !7, size: 32, offset: 6792704)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !151, file: !116, line: 672, baseType: !7, size: 32, offset: 6792736)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !151, file: !116, line: 673, baseType: !7, size: 32, offset: 6792768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !151, file: !116, line: 674, baseType: !7, size: 32, offset: 6792800)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !151, file: !116, line: 675, baseType: !7, size: 32, offset: 6792832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !151, file: !116, line: 676, baseType: !7, size: 32, offset: 6792864)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !151, file: !116, line: 677, baseType: !7, size: 32, offset: 6792896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !151, file: !116, line: 678, baseType: !7, size: 32, offset: 6792928)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !151, file: !116, line: 679, baseType: !7, size: 32, offset: 6792960)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !151, file: !116, line: 680, baseType: !577, size: 192, offset: 6792992)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !578)
!578 = !{!182, !476}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !151, file: !116, line: 681, baseType: !577, size: 192, offset: 6793184)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !151, file: !116, line: 682, baseType: !577, size: 192, offset: 6793376)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !151, file: !116, line: 683, baseType: !7, size: 32, offset: 6793568)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !151, file: !116, line: 684, baseType: !7, size: 32, offset: 6793600)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !151, file: !116, line: 685, baseType: !7, size: 32, offset: 6793632)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !151, file: !116, line: 686, baseType: !7, size: 32, offset: 6793664)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !151, file: !116, line: 687, baseType: !7, size: 32, offset: 6793696)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !151, file: !116, line: 689, baseType: !7, size: 32, offset: 6793728)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !151, file: !116, line: 692, baseType: !7, size: 32, offset: 6793760)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !151, file: !116, line: 693, baseType: !7, size: 32, offset: 6793792)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !151, file: !116, line: 700, baseType: !7, size: 32, offset: 6793824)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !151, file: !116, line: 701, baseType: !7, size: 32, offset: 6793856)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !151, file: !116, line: 702, baseType: !7, size: 32, offset: 6793888)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !151, file: !116, line: 703, baseType: !7, size: 32, offset: 6793920)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !151, file: !116, line: 704, baseType: !7, size: 32, offset: 6793952)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !151, file: !116, line: 705, baseType: !31, size: 32, offset: 6793984)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !151, file: !116, line: 706, baseType: !7, size: 32, offset: 6794016)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !151, file: !116, line: 707, baseType: !7, size: 32, offset: 6794048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !151, file: !116, line: 710, baseType: !7, size: 32, offset: 6794080)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !151, file: !116, line: 711, baseType: !7, size: 32, offset: 6794112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !151, file: !116, line: 712, baseType: !7, size: 32, offset: 6794144)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !151, file: !116, line: 713, baseType: !7, size: 32, offset: 6794176)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !151, file: !116, line: 714, baseType: !7, size: 32, offset: 6794208)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !151, file: !116, line: 716, baseType: !7, size: 32, offset: 6794240)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !151, file: !116, line: 717, baseType: !7, size: 32, offset: 6794272)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !151, file: !116, line: 719, baseType: !279, size: 64, offset: 6794304)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !151, file: !116, line: 720, baseType: !279, size: 64, offset: 6794368)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !151, file: !116, line: 722, baseType: !607, size: 2560, offset: 6794432)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !608, line: 38, baseType: !609)
!608 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !608, line: 20, size: 2560, elements: !610)
!610 = !{!611, !612, !616, !617, !618, !622, !623, !624, !625, !626}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !609, file: !608, line: 22, baseType: !170, size: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !609, file: !608, line: 24, baseType: !613, size: 192, offset: 1088)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 192, elements: !181)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !609, file: !608, line: 25, baseType: !613, size: 192, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !609, file: !608, line: 26, baseType: !613, size: 192, offset: 1472)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !609, file: !608, line: 31, baseType: !619, size: 192, offset: 1664)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 192, elements: !181)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !609, file: !608, line: 32, baseType: !619, size: 192, offset: 1856)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !609, file: !608, line: 33, baseType: !619, size: 192, offset: 2048)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !609, file: !608, line: 35, baseType: !180, size: 96, offset: 2240)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !609, file: !608, line: 36, baseType: !180, size: 96, offset: 2336)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !609, file: !608, line: 37, baseType: !180, size: 96, offset: 2432)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !151, file: !116, line: 723, baseType: !607, size: 2560, offset: 6796992)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !151, file: !116, line: 724, baseType: !607, size: 2560, offset: 6799552)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !151, file: !116, line: 725, baseType: !607, size: 2560, offset: 6802112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !151, file: !116, line: 728, baseType: !607, size: 2560, offset: 6804672)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !151, file: !116, line: 729, baseType: !607, size: 2560, offset: 6807232)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !151, file: !116, line: 730, baseType: !607, size: 2560, offset: 6809792)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !151, file: !116, line: 731, baseType: !607, size: 2560, offset: 6812352)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !151, file: !116, line: 735, baseType: !31, size: 32, offset: 6814912)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !151, file: !116, line: 737, baseType: !7, size: 32, offset: 6814944)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !151, file: !116, line: 738, baseType: !7, size: 32, offset: 6814976)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !151, file: !116, line: 741, baseType: !638, size: 64, offset: 6815040)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !639, line: 103, baseType: !640)
!639 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !641, line: 27, baseType: !642)
!641 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !643, line: 44, baseType: !644)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!644 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !151, file: !116, line: 744, baseType: !7, size: 32, offset: 6815104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !151, file: !116, line: 746, baseType: !647, size: 32768, offset: 6815136)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 1024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !151, file: !116, line: 748, baseType: !7, size: 32, offset: 6847904)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !151, file: !116, line: 751, baseType: !7, size: 32, offset: 6847936)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !151, file: !116, line: 752, baseType: !7, size: 32, offset: 6847968)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !151, file: !116, line: 755, baseType: !7, size: 32, offset: 6848000)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !151, file: !116, line: 756, baseType: !7, size: 32, offset: 6848032)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !151, file: !116, line: 758, baseType: !7, size: 32, offset: 6848064)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !151, file: !116, line: 759, baseType: !7, size: 32, offset: 6848096)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !151, file: !116, line: 762, baseType: !614, size: 64, offset: 6848128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !151, file: !116, line: 763, baseType: !659, size: 64, offset: 6848192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !151, file: !116, line: 765, baseType: !225, size: 64, offset: 6848256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !151, file: !116, line: 766, baseType: !225, size: 64, offset: 6848320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !151, file: !116, line: 768, baseType: !663, size: 64, offset: 6848384)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !665, line: 152, size: 768, elements: !666)
!665 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !792, !793, !794, !795, !796}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !664, file: !665, line: 154, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !664, file: !665, line: 155, baseType: !7, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !664, file: !665, line: 156, baseType: !7, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !664, file: !665, line: 157, baseType: !7, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !664, file: !665, line: 159, baseType: !7, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !664, file: !665, line: 161, baseType: !31, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !664, file: !665, line: 162, baseType: !31, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !664, file: !665, line: 164, baseType: !7, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !664, file: !665, line: 165, baseType: !7, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !664, file: !665, line: 166, baseType: !7, size: 32, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !664, file: !665, line: 167, baseType: !7, size: 32, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !664, file: !665, line: 170, baseType: !7, size: 32, offset: 352)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !664, file: !665, line: 172, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !665, line: 138, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !665, line: 46, size: 3328, elements: !683)
!683 = !{!684, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !732, !734, !738, !740, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !682, file: !665, line: 48, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !29)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !682, file: !665, line: 50, baseType: !7, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !682, file: !665, line: 51, baseType: !7, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !682, file: !665, line: 52, baseType: !7, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !682, file: !665, line: 53, baseType: !7, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !682, file: !665, line: 54, baseType: !31, size: 32, offset: 160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !682, file: !665, line: 55, baseType: !31, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !682, file: !665, line: 57, baseType: !7, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !682, file: !665, line: 58, baseType: !7, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !682, file: !665, line: 59, baseType: !7, size: 32, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !682, file: !665, line: 61, baseType: !126, size: 8, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !682, file: !665, line: 62, baseType: !7, size: 32, offset: 352)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !682, file: !665, line: 63, baseType: !7, size: 32, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !682, file: !665, line: 64, baseType: !7, size: 32, offset: 416)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !682, file: !665, line: 65, baseType: !7, size: 32, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !682, file: !665, line: 67, baseType: !92, size: 16, offset: 480)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !682, file: !665, line: 69, baseType: !7, size: 32, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !682, file: !665, line: 69, baseType: !7, size: 32, offset: 544)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !682, file: !665, line: 69, baseType: !7, size: 32, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !682, file: !665, line: 69, baseType: !7, size: 32, offset: 608)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !682, file: !665, line: 70, baseType: !7, size: 32, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !682, file: !665, line: 70, baseType: !7, size: 32, offset: 672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !682, file: !665, line: 70, baseType: !7, size: 32, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !682, file: !665, line: 70, baseType: !7, size: 32, offset: 736)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !682, file: !665, line: 71, baseType: !7, size: 32, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !682, file: !665, line: 72, baseType: !7, size: 32, offset: 800)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !682, file: !665, line: 73, baseType: !31, size: 32, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !682, file: !665, line: 74, baseType: !31, size: 32, offset: 864)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !682, file: !665, line: 75, baseType: !7, size: 32, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !682, file: !665, line: 75, baseType: !7, size: 32, offset: 928)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !682, file: !665, line: 76, baseType: !7, size: 32, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !682, file: !665, line: 76, baseType: !7, size: 32, offset: 992)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !682, file: !665, line: 79, baseType: !614, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !682, file: !665, line: 80, baseType: !659, size: 64, offset: 1088)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !682, file: !665, line: 81, baseType: !659, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !682, file: !665, line: 84, baseType: !721, size: 64, offset: 1216)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !665, line: 36, size: 256, elements: !724)
!724 = !{!725, !728, !730}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !723, file: !665, line: 38, baseType: !726, size: 128)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 128, elements: !475)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !723, file: !665, line: 39, baseType: !729, size: 64, offset: 128)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !475)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !723, file: !665, line: 40, baseType: !731, size: 16, offset: 192)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 16, elements: !475)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !682, file: !665, line: 85, baseType: !733, size: 192, offset: 1280)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 192, elements: !181)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !682, file: !665, line: 87, baseType: !735, size: 64, offset: 1472)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !665, line: 29, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !735, file: !665, line: 31, baseType: !279, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !682, file: !665, line: 88, baseType: !739, size: 192, offset: 1536)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 192, elements: !181)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !682, file: !665, line: 90, baseType: !741, size: 64, offset: 1728)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !682, file: !665, line: 92, baseType: !727, size: 64, offset: 1792)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !682, file: !665, line: 93, baseType: !727, size: 64, offset: 1856)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !682, file: !665, line: 94, baseType: !727, size: 64, offset: 1920)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !682, file: !665, line: 96, baseType: !7, size: 32, offset: 1984)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !682, file: !665, line: 97, baseType: !7, size: 32, offset: 2016)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !682, file: !665, line: 98, baseType: !7, size: 32, offset: 2048)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !682, file: !665, line: 99, baseType: !7, size: 32, offset: 2080)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !682, file: !665, line: 100, baseType: !7, size: 32, offset: 2112)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !682, file: !665, line: 102, baseType: !7, size: 32, offset: 2144)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !682, file: !665, line: 103, baseType: !7, size: 32, offset: 2176)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !682, file: !665, line: 104, baseType: !7, size: 32, offset: 2208)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !682, file: !665, line: 105, baseType: !7, size: 32, offset: 2240)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !682, file: !665, line: 106, baseType: !7, size: 32, offset: 2272)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !682, file: !665, line: 107, baseType: !7, size: 32, offset: 2304)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !682, file: !665, line: 108, baseType: !7, size: 32, offset: 2336)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !682, file: !665, line: 109, baseType: !7, size: 32, offset: 2368)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !682, file: !665, line: 110, baseType: !474, size: 64, offset: 2400)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !682, file: !665, line: 111, baseType: !7, size: 32, offset: 2464)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !682, file: !665, line: 112, baseType: !762, size: 64, offset: 2496)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !116, line: 194, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !116, line: 186, size: 256, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !764, file: !116, line: 188, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !764, file: !116, line: 189, baseType: !7, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !764, file: !116, line: 190, baseType: !7, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !764, file: !116, line: 191, baseType: !7, size: 32, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !764, file: !116, line: 192, baseType: !7, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !764, file: !116, line: 193, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !682, file: !665, line: 115, baseType: !7, size: 32, offset: 2560)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !682, file: !665, line: 118, baseType: !7, size: 32, offset: 2592)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !682, file: !665, line: 119, baseType: !7, size: 32, offset: 2624)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !682, file: !665, line: 120, baseType: !7, size: 32, offset: 2656)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !682, file: !665, line: 121, baseType: !615, size: 64, offset: 2688)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !682, file: !665, line: 124, baseType: !7, size: 32, offset: 2752)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !682, file: !665, line: 125, baseType: !7, size: 32, offset: 2784)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !682, file: !665, line: 126, baseType: !7, size: 32, offset: 2816)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !682, file: !665, line: 128, baseType: !7, size: 32, offset: 2848)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !682, file: !665, line: 129, baseType: !7, size: 32, offset: 2880)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !682, file: !665, line: 130, baseType: !7, size: 32, offset: 2912)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !682, file: !665, line: 131, baseType: !7, size: 32, offset: 2944)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !682, file: !665, line: 132, baseType: !614, size: 64, offset: 3008)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !682, file: !665, line: 133, baseType: !7, size: 32, offset: 3072)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !682, file: !665, line: 134, baseType: !7, size: 32, offset: 3104)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !682, file: !665, line: 136, baseType: !731, size: 16, offset: 3136)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !682, file: !665, line: 137, baseType: !790, size: 128, offset: 3200)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 128, elements: !475)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !664, file: !665, line: 173, baseType: !680, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !664, file: !665, line: 174, baseType: !680, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !664, file: !665, line: 177, baseType: !7, size: 32, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !664, file: !665, line: 178, baseType: !474, size: 64, offset: 608)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !664, file: !665, line: 179, baseType: !474, size: 64, offset: 672)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !151, file: !116, line: 769, baseType: !798, size: 3200, offset: 6848448)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 100)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !151, file: !116, line: 771, baseType: !727, size: 64, offset: 6851648)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !151, file: !116, line: 772, baseType: !803, size: 192, offset: 6851712)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 192, elements: !181)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !151, file: !116, line: 773, baseType: !727, size: 64, offset: 6851904)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !151, file: !116, line: 776, baseType: !806, size: 64, offset: 6851968)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !116, line: 776, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !151, file: !116, line: 777, baseType: !809, size: 64, offset: 6852032)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !116, line: 777, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !151, file: !116, line: 779, baseType: !7, size: 32, offset: 6852096)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !151, file: !116, line: 780, baseType: !150, size: 64, offset: 6852160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !151, file: !116, line: 781, baseType: !814, size: 640, offset: 6852224)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 20)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !151, file: !116, line: 783, baseType: !818, size: 64, offset: 6852864)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !116, line: 783, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !151, file: !116, line: 784, baseType: !821, size: 64, offset: 6852928)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !116, line: 784, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !151, file: !116, line: 786, baseType: !663, size: 64, offset: 6852992)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !151, file: !116, line: 788, baseType: !727, size: 64, offset: 6853056)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !151, file: !116, line: 789, baseType: !7, size: 32, offset: 6853120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !151, file: !116, line: 790, baseType: !7, size: 32, offset: 6853152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !151, file: !116, line: 792, baseType: !7, size: 32, offset: 6853184)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !151, file: !116, line: 794, baseType: !829, size: 64, offset: 6853248)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !665, line: 186, size: 33408, elements: !831)
!831 = !{!832, !835, !838, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !830, file: !665, line: 188, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !116, line: 836, baseType: !151)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !830, file: !665, line: 189, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !116, line: 900, baseType: !155)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !830, file: !665, line: 190, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !665, line: 182, baseType: !664)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !830, file: !665, line: 191, baseType: !839, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !830, file: !665, line: 192, baseType: !839, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !830, file: !665, line: 193, baseType: !31, size: 32, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !830, file: !665, line: 194, baseType: !31, size: 32, offset: 352)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !830, file: !665, line: 195, baseType: !31, size: 32, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !830, file: !665, line: 196, baseType: !31, size: 32, offset: 416)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !830, file: !665, line: 197, baseType: !7, size: 32, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !830, file: !665, line: 199, baseType: !7, size: 32, offset: 480)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !830, file: !665, line: 200, baseType: !647, size: 32768, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !830, file: !665, line: 205, baseType: !7, size: 32, offset: 33280)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !830, file: !665, line: 206, baseType: !7, size: 32, offset: 33312)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !830, file: !665, line: 208, baseType: !840, size: 64, offset: 33344)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !151, file: !116, line: 795, baseType: !829, size: 64, offset: 6853312)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !151, file: !116, line: 796, baseType: !856, size: 128, offset: 6853376)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 128, elements: !475)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !151, file: !116, line: 800, baseType: !858, size: 72, offset: 6853504)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 72, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 9)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !151, file: !116, line: 802, baseType: !225, size: 64, offset: 6853632)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !151, file: !116, line: 803, baseType: !225, size: 64, offset: 6853696)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !151, file: !116, line: 804, baseType: !7, size: 32, offset: 6853760)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !151, file: !116, line: 807, baseType: !865, size: 64, offset: 6853824)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !116, line: 807, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !151, file: !116, line: 810, baseType: !868, size: 64, offset: 6853888)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !614, !871, !7, !7, !7, !7, !7, !7}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !151, file: !116, line: 811, baseType: !873, size: 64, offset: 6853952)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !141, !7, !7, !225, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !116, line: 85, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !116, line: 77, size: 128, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !878, file: !116, line: 79, baseType: !7, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !878, file: !116, line: 80, baseType: !7, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !878, file: !116, line: 81, baseType: !92, size: 16, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !878, file: !116, line: 82, baseType: !92, size: 16, offset: 80)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !878, file: !116, line: 83, baseType: !92, size: 16, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !878, file: !116, line: 84, baseType: !92, size: 16, offset: 112)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !151, file: !116, line: 812, baseType: !887, size: 64, offset: 6854016)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !7, !742, !742}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !151, file: !116, line: 813, baseType: !891, size: 64, offset: 6854080)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !279, !141, !7, !7, !727}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !151, file: !116, line: 814, baseType: !891, size: 64, offset: 6854144)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !151, file: !116, line: 815, baseType: !896, size: 64, offset: 6854208)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !899, !614, !279, !141, !7, !727}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !36)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !151, file: !116, line: 816, baseType: !896, size: 64, offset: 6854272)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !151, file: !116, line: 817, baseType: !902, size: 64, offset: 6854336)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !614, !279, !141, !7, !7, !727}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !151, file: !116, line: 818, baseType: !902, size: 64, offset: 6854400)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !151, file: !116, line: 819, baseType: !907, size: 64, offset: 6854464)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !614, !871, !7, !7, !7, !7, !7, !7, !7, !7}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !151, file: !116, line: 821, baseType: !911, size: 64, offset: 6854528)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !116, line: 561, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !116, line: 544, size: 640, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !913, file: !116, line: 546, baseType: !7, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !913, file: !116, line: 547, baseType: !7, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !913, file: !116, line: 548, baseType: !7, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !913, file: !116, line: 549, baseType: !7, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !913, file: !116, line: 550, baseType: !7, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !913, file: !116, line: 551, baseType: !7, size: 32, offset: 160)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !913, file: !116, line: 552, baseType: !279, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !913, file: !116, line: 553, baseType: !279, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !913, file: !116, line: 554, baseType: !279, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !913, file: !116, line: 555, baseType: !7, size: 32, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !913, file: !116, line: 556, baseType: !7, size: 32, offset: 416)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !913, file: !116, line: 557, baseType: !7, size: 32, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !913, file: !116, line: 558, baseType: !7, size: 32, offset: 480)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !913, file: !116, line: 559, baseType: !7, size: 32, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !913, file: !116, line: 560, baseType: !930, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !151, file: !116, line: 822, baseType: !7, size: 32, offset: 6854592)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !151, file: !116, line: 823, baseType: !933, size: 64, offset: 6854656)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !116, line: 823, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !151, file: !116, line: 824, baseType: !7, size: 32, offset: 6854720)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !151, file: !116, line: 825, baseType: !7, size: 32, offset: 6854752)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !151, file: !116, line: 826, baseType: !7, size: 32, offset: 6854784)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !151, file: !116, line: 827, baseType: !7, size: 32, offset: 6854816)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !151, file: !116, line: 829, baseType: !7, size: 32, offset: 6854848)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !151, file: !116, line: 830, baseType: !7, size: 32, offset: 6854880)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !151, file: !116, line: 831, baseType: !7, size: 32, offset: 6854912)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !151, file: !116, line: 835, baseType: !239, size: 64, offset: 6854976)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !147, file: !116, line: 344, baseType: !154, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !147, file: !116, line: 345, baseType: !239, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !147, file: !116, line: 346, baseType: !292, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !147, file: !116, line: 347, baseType: !7, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !147, file: !116, line: 350, baseType: !829, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !147, file: !116, line: 353, baseType: !7, size: 32, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !147, file: !116, line: 354, baseType: !7, size: 32, offset: 416)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !147, file: !116, line: 355, baseType: !7, size: 32, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !147, file: !116, line: 356, baseType: !7, size: 32, offset: 480)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !147, file: !116, line: 357, baseType: !7, size: 32, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !147, file: !116, line: 359, baseType: !7, size: 32, offset: 544)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !147, file: !116, line: 360, baseType: !7, size: 32, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !147, file: !116, line: 361, baseType: !7, size: 32, offset: 608)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !147, file: !116, line: 365, baseType: !31, size: 32, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !147, file: !116, line: 366, baseType: !7, size: 32, offset: 672)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !147, file: !116, line: 368, baseType: !474, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !147, file: !116, line: 372, baseType: !7, size: 32, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !147, file: !116, line: 378, baseType: !31, size: 32, offset: 800)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !147, file: !116, line: 379, baseType: !7, size: 32, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !147, file: !116, line: 387, baseType: !31, size: 32, offset: 864)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !147, file: !116, line: 388, baseType: !31, size: 32, offset: 896)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !147, file: !116, line: 389, baseType: !92, size: 16, offset: 928)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !147, file: !116, line: 396, baseType: !7, size: 32, offset: 960)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !147, file: !116, line: 397, baseType: !7, size: 32, offset: 992)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !147, file: !116, line: 400, baseType: !7, size: 32, offset: 1024)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !147, file: !116, line: 401, baseType: !7, size: 32, offset: 1056)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !147, file: !116, line: 402, baseType: !474, size: 64, offset: 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !147, file: !116, line: 406, baseType: !7, size: 32, offset: 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !147, file: !116, line: 407, baseType: !7, size: 32, offset: 1184)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !147, file: !116, line: 408, baseType: !7, size: 32, offset: 1216)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !147, file: !116, line: 409, baseType: !7, size: 32, offset: 1248)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !147, file: !116, line: 410, baseType: !7, size: 32, offset: 1280)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !147, file: !116, line: 411, baseType: !7, size: 32, offset: 1312)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !147, file: !116, line: 412, baseType: !7, size: 32, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !147, file: !116, line: 413, baseType: !31, size: 32, offset: 1376)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !147, file: !116, line: 414, baseType: !31, size: 32, offset: 1408)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !147, file: !116, line: 415, baseType: !126, size: 8, offset: 1440)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !147, file: !116, line: 416, baseType: !685, size: 32, offset: 1472)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !147, file: !116, line: 417, baseType: !7, size: 32, offset: 1504)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !147, file: !116, line: 418, baseType: !7, size: 32, offset: 1536)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !147, file: !116, line: 419, baseType: !7, size: 32, offset: 1568)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !147, file: !116, line: 420, baseType: !7, size: 32, offset: 1600)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !147, file: !116, line: 421, baseType: !7, size: 32, offset: 1632)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !147, file: !116, line: 422, baseType: !7, size: 32, offset: 1664)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !147, file: !116, line: 423, baseType: !7, size: 32, offset: 1696)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !147, file: !116, line: 426, baseType: !7, size: 32, offset: 1728)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !147, file: !116, line: 427, baseType: !7, size: 32, offset: 1760)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !147, file: !116, line: 428, baseType: !7, size: 32, offset: 1792)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !147, file: !116, line: 429, baseType: !7, size: 32, offset: 1824)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !147, file: !116, line: 430, baseType: !7, size: 32, offset: 1856)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !147, file: !116, line: 431, baseType: !7, size: 32, offset: 1888)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !147, file: !116, line: 432, baseType: !7, size: 32, offset: 1920)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !147, file: !116, line: 433, baseType: !7, size: 32, offset: 1952)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !147, file: !116, line: 434, baseType: !762, size: 64, offset: 1984)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !147, file: !116, line: 436, baseType: !998, size: 48, offset: 2048)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !264)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !147, file: !116, line: 437, baseType: !1000, size: 384, offset: 2112)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 384, elements: !264)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !147, file: !116, line: 440, baseType: !1002, size: 64, offset: 2496)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !116, line: 324, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !116, line: 314, size: 384, elements: !1005)
!1005 = !{!1006, !1017, !1026}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !1004, file: !116, line: 317, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !116, line: 47, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !116, line: 300, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !1009, file: !116, line: 303, baseType: !7, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !1009, file: !116, line: 304, baseType: !7, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !1009, file: !116, line: 306, baseType: !7, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !1009, file: !116, line: 307, baseType: !7, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !1009, file: !116, line: 309, baseType: !279, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1009, file: !116, line: 310, baseType: !7, size: 32, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !1004, file: !116, line: 318, baseType: !1018, size: 256, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !116, line: 95, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 88, size: 256, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !1019, file: !116, line: 90, baseType: !31, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !1019, file: !116, line: 91, baseType: !31, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !1019, file: !116, line: 92, baseType: !7, size: 32, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !1019, file: !116, line: 93, baseType: !279, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !1019, file: !116, line: 94, baseType: !225, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !1004, file: !116, line: 320, baseType: !1027, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!7, !141, !1030, !1053}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !116, line: 296, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !116, line: 276, size: 384, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1046}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1032, file: !116, line: 278, baseType: !7, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !1032, file: !116, line: 279, baseType: !7, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !1032, file: !116, line: 280, baseType: !7, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1032, file: !116, line: 281, baseType: !7, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !1032, file: !116, line: 282, baseType: !7, size: 32, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !1032, file: !116, line: 283, baseType: !31, size: 32, offset: 160)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1032, file: !116, line: 284, baseType: !7, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1032, file: !116, line: 285, baseType: !7, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1032, file: !116, line: 293, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !7, !7, !225, !225}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !1032, file: !116, line: 295, baseType: !1047, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !141, !1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !116, line: 97, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !147, file: !116, line: 441, baseType: !1055, size: 64, offset: 2560)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !116, line: 153, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 145, size: 2912, elements: !1058)
!1058 = !{!1059, !1069, !1072, !1076, !1079, !1083}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !1057, file: !116, line: 147, baseType: !1060, size: 1056)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 1056, elements: !1067)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !116, line: 122, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 117, size: 32, elements: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1062, file: !116, line: 119, baseType: !95, size: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !1062, file: !116, line: 120, baseType: !127, size: 8, offset: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1062, file: !116, line: 121, baseType: !127, size: 8, offset: 24)
!1067 = !{!182, !1068}
!1068 = !DISubrange(count: 11)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !1057, file: !116, line: 148, baseType: !1070, size: 576, offset: 1056)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 576, elements: !1071)
!1071 = !{!476, !860}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !1057, file: !116, line: 149, baseType: !1073, size: 640, offset: 1632)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 640, elements: !1074)
!1074 = !{!476, !1075}
!1075 = !DISubrange(count: 10)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !1057, file: !116, line: 150, baseType: !1077, size: 384, offset: 2272)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 384, elements: !1078)
!1078 = !{!476, !257}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !1057, file: !116, line: 151, baseType: !1080, size: 128, offset: 2656)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 128, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 4)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !1057, file: !116, line: 152, baseType: !1080, size: 128, offset: 2784)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !147, file: !116, line: 442, baseType: !1085, size: 64, offset: 2624)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !116, line: 175, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 164, size: 52768, elements: !1088)
!1088 = !{!1089, !1091, !1093, !1094, !1097, !1101, !1105, !1106, !1110}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1087, file: !116, line: 166, baseType: !1090, size: 96)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 96, elements: !181)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1087, file: !116, line: 167, baseType: !1092, size: 64, offset: 96)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 64, elements: !475)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1087, file: !116, line: 168, baseType: !1080, size: 128, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1087, file: !116, line: 169, baseType: !1095, size: 384, offset: 288)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 384, elements: !1096)
!1096 = !{!182, !1082}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1087, file: !116, line: 170, baseType: !1098, size: 2816, offset: 672)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 2816, elements: !1099)
!1099 = !{!1100, !1082}
!1100 = !DISubrange(count: 22)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1087, file: !116, line: 171, baseType: !1102, size: 21120, offset: 3488)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 21120, elements: !1103)
!1103 = !{!476, !1100, !1104}
!1104 = !DISubrange(count: 15)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1087, file: !116, line: 172, baseType: !1102, size: 21120, offset: 24608)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1087, file: !116, line: 173, baseType: !1107, size: 3520, offset: 45728)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 3520, elements: !1108)
!1108 = !{!1100, !1109}
!1109 = !DISubrange(count: 5)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1087, file: !116, line: 174, baseType: !1107, size: 3520, offset: 49248)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !147, file: !116, line: 444, baseType: !1112, size: 6144, offset: 2688)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !1113)
!1113 = !{!257, !373}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !147, file: !116, line: 446, baseType: !474, size: 64, offset: 8832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !147, file: !116, line: 447, baseType: !1116, size: 128, offset: 8896)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !475)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !147, file: !116, line: 448, baseType: !1116, size: 128, offset: 9024)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !147, file: !116, line: 449, baseType: !1116, size: 128, offset: 9152)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !147, file: !116, line: 452, baseType: !1116, size: 128, offset: 9280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !147, file: !116, line: 454, baseType: !7, size: 32, offset: 9408)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !147, file: !116, line: 455, baseType: !7, size: 32, offset: 9440)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !147, file: !116, line: 456, baseType: !7, size: 32, offset: 9472)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !147, file: !116, line: 458, baseType: !1124, size: 256, offset: 9504)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !116, line: 337, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !116, line: 327, size: 256, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1125, file: !116, line: 329, baseType: !31, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1125, file: !116, line: 330, baseType: !31, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1125, file: !116, line: 331, baseType: !31, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1125, file: !116, line: 332, baseType: !31, size: 32, offset: 96)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1125, file: !116, line: 333, baseType: !31, size: 32, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1125, file: !116, line: 334, baseType: !31, size: 32, offset: 160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1125, file: !116, line: 335, baseType: !31, size: 32, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1125, file: !116, line: 336, baseType: !31, size: 32, offset: 224)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !147, file: !116, line: 461, baseType: !92, size: 16, offset: 9760)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !147, file: !116, line: 462, baseType: !92, size: 16, offset: 9776)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !147, file: !116, line: 463, baseType: !92, size: 16, offset: 9792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !147, file: !116, line: 465, baseType: !7, size: 32, offset: 9824)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !147, file: !116, line: 467, baseType: !7, size: 32, offset: 9856)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !147, file: !116, line: 468, baseType: !7, size: 32, offset: 9888)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !147, file: !116, line: 470, baseType: !7, size: 32, offset: 9920)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !147, file: !116, line: 471, baseType: !659, size: 64, offset: 9984)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !147, file: !116, line: 472, baseType: !659, size: 64, offset: 10048)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !147, file: !116, line: 473, baseType: !422, size: 64, offset: 10112)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !147, file: !116, line: 474, baseType: !422, size: 64, offset: 10176)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !147, file: !116, line: 475, baseType: !422, size: 64, offset: 10240)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !147, file: !116, line: 477, baseType: !1148, size: 512, offset: 10304)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !147, file: !116, line: 479, baseType: !614, size: 64, offset: 10816)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !147, file: !116, line: 480, baseType: !614, size: 64, offset: 10880)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !147, file: !116, line: 481, baseType: !409, size: 64, offset: 10944)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !147, file: !116, line: 482, baseType: !614, size: 64, offset: 11008)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !147, file: !116, line: 483, baseType: !614, size: 64, offset: 11072)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !147, file: !116, line: 486, baseType: !1155, size: 9216, offset: 11136)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !1156)
!1156 = !{!182, !257, !1082, !1082}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !147, file: !116, line: 487, baseType: !1155, size: 9216, offset: 20352)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !147, file: !116, line: 488, baseType: !1159, size: 36864, offset: 29568)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !1160)
!1160 = !{!182, !257, !272, !272}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !147, file: !116, line: 489, baseType: !1159, size: 36864, offset: 66432)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !147, file: !116, line: 491, baseType: !1163, size: 768, offset: 103296)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 768, elements: !252)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !147, file: !116, line: 494, baseType: !1165, size: 2048, offset: 104064)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !1166)
!1166 = !{!261}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !147, file: !116, line: 495, baseType: !7, size: 32, offset: 106112)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !147, file: !116, line: 496, baseType: !7, size: 32, offset: 106144)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !147, file: !116, line: 500, baseType: !96, size: 16, offset: 106176)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !147, file: !116, line: 501, baseType: !96, size: 16, offset: 106192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !147, file: !116, line: 503, baseType: !96, size: 16, offset: 106208)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !147, file: !116, line: 504, baseType: !96, size: 16, offset: 106224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !147, file: !116, line: 505, baseType: !422, size: 64, offset: 106240)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !147, file: !116, line: 506, baseType: !422, size: 64, offset: 106304)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !147, file: !116, line: 507, baseType: !1176, size: 64, offset: 106368)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !147, file: !116, line: 508, baseType: !92, size: 16, offset: 106432)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !147, file: !116, line: 509, baseType: !92, size: 16, offset: 106448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !147, file: !116, line: 512, baseType: !7, size: 32, offset: 106464)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !147, file: !116, line: 513, baseType: !7, size: 32, offset: 106496)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !147, file: !116, line: 514, baseType: !1182, size: 64, offset: 106560)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !147, file: !116, line: 515, baseType: !1182, size: 64, offset: 106624)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !147, file: !116, line: 520, baseType: !7, size: 32, offset: 106688)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !147, file: !116, line: 521, baseType: !1186, size: 544, offset: 106720)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 17)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !147, file: !116, line: 523, baseType: !1190, size: 64, offset: 107264)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !141}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !147, file: !116, line: 524, baseType: !1194, size: 64, offset: 107328)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!7, !141, !899, !614, !727}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !147, file: !116, line: 525, baseType: !1198, size: 64, offset: 107392)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!7, !150, !154}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !147, file: !116, line: 526, baseType: !1202, size: 64, offset: 107456)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!7, !146, !7}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !147, file: !116, line: 527, baseType: !1190, size: 64, offset: 107520)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !147, file: !116, line: 528, baseType: !1190, size: 64, offset: 107584)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !147, file: !116, line: 529, baseType: !1190, size: 64, offset: 107648)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !147, file: !116, line: 530, baseType: !1209, size: 64, offset: 107712)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !146}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !147, file: !116, line: 531, baseType: !1190, size: 64, offset: 107776)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !147, file: !116, line: 532, baseType: !1043, size: 64, offset: 107840)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !147, file: !116, line: 533, baseType: !1043, size: 64, offset: 107904)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !147, file: !116, line: 534, baseType: !1190, size: 64, offset: 107968)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !147, file: !116, line: 535, baseType: !7, size: 32, offset: 108032)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !147, file: !116, line: 536, baseType: !141, size: 64, offset: 108096)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !147, file: !116, line: 537, baseType: !727, size: 64, offset: 108160)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !147, file: !116, line: 538, baseType: !409, size: 64, offset: 108224)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !147, file: !116, line: 539, baseType: !514, size: 64, offset: 108288)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !147, file: !116, line: 540, baseType: !432, size: 64, offset: 108352)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !147, file: !116, line: 541, baseType: !1223, size: 768, offset: 108416)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 768, elements: !256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !143, file: !116, line: 200, baseType: !150, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !143, file: !116, line: 201, baseType: !154, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !143, file: !116, line: 202, baseType: !7, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !143, file: !116, line: 203, baseType: !1228, size: 32, offset: 224)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !116, line: 112, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 108, size: 32, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1229, file: !116, line: 110, baseType: !92, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1229, file: !116, line: 111, baseType: !92, size: 16, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !143, file: !116, line: 204, baseType: !7, size: 32, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !143, file: !116, line: 205, baseType: !7, size: 32, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !143, file: !116, line: 206, baseType: !7, size: 32, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !143, file: !116, line: 207, baseType: !7, size: 32, offset: 352)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !143, file: !116, line: 208, baseType: !7, size: 32, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !143, file: !116, line: 209, baseType: !7, size: 32, offset: 416)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !143, file: !116, line: 210, baseType: !7, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !143, file: !116, line: 212, baseType: !7, size: 32, offset: 480)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !143, file: !116, line: 213, baseType: !7, size: 32, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !143, file: !116, line: 215, baseType: !7, size: 32, offset: 544)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !143, file: !116, line: 216, baseType: !474, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !143, file: !116, line: 217, baseType: !180, size: 96, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !143, file: !116, line: 218, baseType: !7, size: 32, offset: 736)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !143, file: !116, line: 219, baseType: !7, size: 32, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !143, file: !116, line: 220, baseType: !7, size: 32, offset: 800)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !143, file: !116, line: 221, baseType: !7, size: 32, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !143, file: !116, line: 223, baseType: !92, size: 16, offset: 864)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !143, file: !116, line: 224, baseType: !91, size: 8, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !143, file: !116, line: 225, baseType: !91, size: 8, offset: 888)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !143, file: !116, line: 226, baseType: !92, size: 16, offset: 896)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !143, file: !116, line: 227, baseType: !92, size: 16, offset: 912)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !143, file: !116, line: 229, baseType: !1255, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !143, file: !116, line: 230, baseType: !1255, size: 64, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !143, file: !116, line: 232, baseType: !1255, size: 64, offset: 1088)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !143, file: !116, line: 233, baseType: !1255, size: 64, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !143, file: !116, line: 236, baseType: !92, size: 16, offset: 1216)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !143, file: !116, line: 237, baseType: !1261, size: 1024, offset: 1232)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1024, elements: !1262)
!1262 = !{!476, !1082, !1082, !476}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !143, file: !116, line: 239, baseType: !7, size: 32, offset: 2272)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !143, file: !116, line: 240, baseType: !1265, size: 192, offset: 2304)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 192, elements: !181)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !143, file: !116, line: 241, baseType: !1265, size: 192, offset: 2496)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !143, file: !116, line: 242, baseType: !1265, size: 192, offset: 2688)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !143, file: !116, line: 244, baseType: !7, size: 32, offset: 2880)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !143, file: !116, line: 245, baseType: !1270, size: 32, offset: 2912)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !1081)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !143, file: !116, line: 246, baseType: !1270, size: 32, offset: 2944)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !143, file: !116, line: 247, baseType: !91, size: 8, offset: 2976)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !143, file: !116, line: 248, baseType: !91, size: 8, offset: 2984)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !143, file: !116, line: 249, baseType: !91, size: 8, offset: 2992)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !143, file: !116, line: 250, baseType: !92, size: 16, offset: 3008)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !143, file: !116, line: 251, baseType: !92, size: 16, offset: 3024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !143, file: !116, line: 252, baseType: !92, size: 16, offset: 3040)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !143, file: !116, line: 254, baseType: !7, size: 32, offset: 3072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !143, file: !116, line: 256, baseType: !7, size: 32, offset: 3104)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !143, file: !116, line: 256, baseType: !7, size: 32, offset: 3136)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !143, file: !116, line: 256, baseType: !7, size: 32, offset: 3168)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !143, file: !116, line: 256, baseType: !7, size: 32, offset: 3200)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !143, file: !116, line: 257, baseType: !7, size: 32, offset: 3232)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !143, file: !116, line: 257, baseType: !7, size: 32, offset: 3264)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !143, file: !116, line: 257, baseType: !7, size: 32, offset: 3296)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !143, file: !116, line: 257, baseType: !7, size: 32, offset: 3328)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !143, file: !116, line: 259, baseType: !7, size: 32, offset: 3360)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !143, file: !116, line: 260, baseType: !7, size: 32, offset: 3392)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !143, file: !116, line: 262, baseType: !1290, size: 64, offset: 3456)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1255, !899, !7, !7}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !143, file: !116, line: 263, baseType: !1290, size: 64, offset: 3520)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !143, file: !116, line: 265, baseType: !1295, size: 64, offset: 3584)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1255, !876, !1298, !92, !721, !7, !7, !7, !7, !7}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !143, file: !116, line: 268, baseType: !1300, size: 64, offset: 3648)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!7, !1255, !1051, !7}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !143, file: !116, line: 269, baseType: !1304, size: 64, offset: 3712)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!91, !1255, !1050, !1053, !91, !7}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !143, file: !116, line: 272, baseType: !126, size: 8, offset: 3776)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1309 = !DILocalVariable(name: "currMB", arg: 1, scope: !138, file: !3, line: 42, type: !141)
!1310 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !138, file: !3, line: 42, type: !899)
!1311 = !DILocalVariable(name: "currImg", arg: 3, scope: !138, file: !3, line: 42, type: !614)
!1312 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !138, file: !3, line: 42, type: !680)
!1313 = !DILocalVariable(name: "currSlice", scope: !138, file: !3, line: 44, type: !503)
!1314 = !DILocalVariable(name: "yuv", scope: !138, file: !3, line: 45, type: !7)
!1315 = !DILocalVariable(name: "i", scope: !138, file: !3, line: 46, type: !7)
!1316 = !DILocalVariable(name: "j", scope: !138, file: !3, line: 46, type: !7)
!1317 = !DILocalVariable(name: "k", scope: !138, file: !3, line: 46, type: !7)
!1318 = !DILocalVariable(name: "j4", scope: !138, file: !3, line: 46, type: !7)
!1319 = !DILocalVariable(name: "i4", scope: !138, file: !3, line: 46, type: !7)
!1320 = !DILocalVariable(name: "j_pos", scope: !138, file: !3, line: 47, type: !7)
!1321 = !DILocalVariable(name: "i_pos", scope: !138, file: !3, line: 47, type: !7)
!1322 = !DILocalVariable(name: "ioff", scope: !138, file: !3, line: 48, type: !7)
!1323 = !DILocalVariable(name: "joff", scope: !138, file: !3, line: 48, type: !7)
!1324 = !DILocalVariable(name: "block8x8", scope: !138, file: !3, line: 49, type: !7)
!1325 = !DILocation(line: 0, scope: !138)
!1326 = !DILocation(line: 44, column: 30, scope: !138)
!1327 = !DILocation(line: 45, column: 26, scope: !138)
!1328 = !DILocation(line: 45, column: 44, scope: !138)
!1329 = !DILocation(line: 50, column: 33, scope: !138)
!1330 = !DILocation(line: 50, column: 45, scope: !138)
!1331 = !DILocation(line: 50, column: 24, scope: !138)
!1332 = !DILocation(line: 50, column: 11, scope: !138)
!1333 = !DILocation(line: 50, column: 22, scope: !138)
!1334 = !DILocation(line: 52, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !138, file: !3, line: 52, column: 3)
!1336 = !DILocation(line: 56, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 55, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 54, column: 5)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 54, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 53, column: 3)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 52, column: 3)
!1342 = !DILocation(line: 56, column: 34, scope: !1337)
!1343 = !DILocation(line: 57, column: 34, scope: !1337)
!1344 = !DILocation(line: 57, column: 40, scope: !1337)
!1345 = !DILocation(line: 59, column: 17, scope: !1337)
!1346 = !DILocation(line: 60, column: 17, scope: !1337)
!1347 = !DILocation(line: 61, column: 22, scope: !1337)
!1348 = !DILocation(line: 61, column: 30, scope: !1337)
!1349 = !DILocation(line: 62, column: 22, scope: !1337)
!1350 = !DILocation(line: 62, column: 30, scope: !1337)
!1351 = !DILocation(line: 68, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 68, column: 11)
!1353 = !DILocation(line: 68, column: 58, scope: !1352)
!1354 = !DILocation(line: 68, column: 11, scope: !1337)
!1355 = !DILocation(line: 64, column: 18, scope: !1337)
!1356 = !DILocation(line: 63, column: 18, scope: !1337)
!1357 = !DILocation(line: 72, column: 15, scope: !1337)
!1358 = !DILocation(line: 72, column: 7, scope: !1337)
!1359 = !DILocation(line: 74, column: 28, scope: !1337)
!1360 = !DILocation(line: 74, column: 56, scope: !1337)
!1361 = !DILocation(line: 74, column: 45, scope: !1337)
!1362 = !DILocation(line: 74, column: 7, scope: !1337)
!1363 = !DILocation(line: 54, column: 52, scope: !1338)
!1364 = !DILocation(line: 52, column: 44, scope: !1341)
!1365 = !DILocation(line: 52, column: 31, scope: !1341)
!1366 = distinct !{!1366, !1334, !1367}
!1367 = !DILocation(line: 76, column: 3, scope: !1335)
!1368 = !DILocation(line: 79, column: 21, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !138, file: !3, line: 79, column: 7)
!1370 = !DILocation(line: 79, column: 50, scope: !1369)
!1371 = !DILocation(line: 81, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 80, column: 3)
!1373 = !DILocation(line: 82, column: 3, scope: !1372)
!1374 = !DILocation(line: 84, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !138, file: !3, line: 84, column: 7)
!1376 = !DILocation(line: 84, column: 19, scope: !1375)
!1377 = !DILocation(line: 84, column: 7, scope: !138)
!1378 = !DILocation(line: 85, column: 16, scope: !1375)
!1379 = !DILocation(line: 85, column: 31, scope: !1375)
!1380 = !DILocation(line: 85, column: 5, scope: !1375)
!1381 = !DILocation(line: 87, column: 1, scope: !138)
!1382 = !DISubprogram(name: "intrapred", scope: !1383, file: !1383, line: 22, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DIFile(filename: "ldecod_src/inc/intra4x4_pred.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e8e3ee4eeb2494c32873b5ed486f8eb9")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!7, !141, !899, !7, !7, !7, !7}
!1386 = !DISubprogram(name: "copy_image_data_4x4", scope: !123, file: !123, line: 128, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !614, !614, !7, !7}
!1389 = !DISubprogram(name: "intra_cr_decoding", scope: !1390, file: !1390, line: 29, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DIFile(filename: "ldecod_src/inc/mc_prediction.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b29b7430ebaae75df281117d292611ae")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !141, !7}
!1393 = distinct !DISubprogram(name: "mb_pred_intra16x16", scope: !3, file: !3, line: 90, type: !1394, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!7, !141, !899, !680}
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DILocalVariable(name: "currMB", arg: 1, scope: !1393, file: !3, line: 90, type: !141)
!1398 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1393, file: !3, line: 90, type: !899)
!1399 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1393, file: !3, line: 90, type: !680)
!1400 = !DILocalVariable(name: "yuv", scope: !1393, file: !3, line: 92, type: !7)
!1401 = !DILocation(line: 0, scope: !1393)
!1402 = !DILocation(line: 92, column: 26, scope: !1393)
!1403 = !DILocation(line: 94, column: 46, scope: !1393)
!1404 = !DILocation(line: 94, column: 3, scope: !1393)
!1405 = !DILocation(line: 95, column: 47, scope: !1393)
!1406 = !DILocation(line: 95, column: 25, scope: !1393)
!1407 = !DILocation(line: 95, column: 11, scope: !1393)
!1408 = !DILocation(line: 95, column: 23, scope: !1393)
!1409 = !DILocation(line: 98, column: 3, scope: !1393)
!1410 = !DILocation(line: 101, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 101, column: 7)
!1412 = !DILocation(line: 101, column: 50, scope: !1411)
!1413 = !DILocation(line: 92, column: 44, scope: !1393)
!1414 = !DILocation(line: 103, column: 5, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 102, column: 3)
!1416 = !DILocation(line: 104, column: 3, scope: !1415)
!1417 = !DILocation(line: 106, column: 11, scope: !1393)
!1418 = !DILocation(line: 106, column: 20, scope: !1393)
!1419 = !DILocation(line: 106, column: 35, scope: !1393)
!1420 = !DILocation(line: 107, column: 3, scope: !1393)
!1421 = !DISubprogram(name: "intrapred16x16", scope: !1422, file: !1422, line: 22, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DIFile(filename: "ldecod_src/inc/intra16x16_pred.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "499bf2d3ddf9cf2931bc962ce568e2d6")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!7, !141, !899, !7}
!1425 = !DISubprogram(name: "iMBtrans4x4", scope: !123, file: !123, line: 105, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !141, !899, !7}
!1428 = distinct !DISubprogram(name: "mb_pred_intra8x8", scope: !3, file: !3, line: 110, type: !139, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1441}
!1430 = !DILocalVariable(name: "currMB", arg: 1, scope: !1428, file: !3, line: 110, type: !141)
!1431 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1428, file: !3, line: 110, type: !899)
!1432 = !DILocalVariable(name: "currImg", arg: 3, scope: !1428, file: !3, line: 110, type: !614)
!1433 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !1428, file: !3, line: 110, type: !680)
!1434 = !DILocalVariable(name: "currSlice", scope: !1428, file: !3, line: 112, type: !503)
!1435 = !DILocalVariable(name: "yuv", scope: !1428, file: !3, line: 113, type: !7)
!1436 = !DILocalVariable(name: "block8x8", scope: !1428, file: !3, line: 115, type: !7)
!1437 = !DILocalVariable(name: "ioff", scope: !1438, file: !3, line: 121, type: !7)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 119, column: 3)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 118, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 118, column: 3)
!1441 = !DILocalVariable(name: "joff", scope: !1438, file: !3, line: 122, type: !7)
!1442 = !DILocation(line: 0, scope: !1428)
!1443 = !DILocation(line: 112, column: 30, scope: !1428)
!1444 = !DILocation(line: 113, column: 26, scope: !1428)
!1445 = !DILocation(line: 116, column: 33, scope: !1428)
!1446 = !DILocation(line: 116, column: 45, scope: !1428)
!1447 = !DILocation(line: 116, column: 24, scope: !1428)
!1448 = !DILocation(line: 116, column: 11, scope: !1428)
!1449 = !DILocation(line: 116, column: 22, scope: !1428)
!1450 = !DILocation(line: 0, scope: !1438)
!1451 = !DILocation(line: 125, column: 5, scope: !1438)
!1452 = !DILocation(line: 126, column: 13, scope: !1438)
!1453 = !DILocation(line: 126, column: 5, scope: !1438)
!1454 = !DILocation(line: 128, column: 42, scope: !1438)
!1455 = !DILocation(line: 128, column: 26, scope: !1438)
!1456 = !DILocation(line: 128, column: 69, scope: !1438)
!1457 = !DILocation(line: 128, column: 58, scope: !1438)
!1458 = !DILocation(line: 128, column: 103, scope: !1438)
!1459 = !DILocation(line: 128, column: 5, scope: !1438)
!1460 = !DILocation(line: 128, column: 109, scope: !1438)
!1461 = !DILocation(line: 131, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 131, column: 7)
!1463 = !DILocation(line: 131, column: 50, scope: !1462)
!1464 = !DILocation(line: 113, column: 44, scope: !1428)
!1465 = !DILocation(line: 133, column: 5, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 132, column: 3)
!1467 = !DILocation(line: 134, column: 3, scope: !1466)
!1468 = !DILocation(line: 136, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 136, column: 7)
!1470 = !DILocation(line: 136, column: 19, scope: !1469)
!1471 = !DILocation(line: 136, column: 7, scope: !1428)
!1472 = !DILocation(line: 137, column: 14, scope: !1469)
!1473 = !DILocation(line: 137, column: 29, scope: !1469)
!1474 = !DILocation(line: 137, column: 3, scope: !1469)
!1475 = !DILocation(line: 138, column: 3, scope: !1428)
!1476 = !DISubprogram(name: "intrapred8x8", scope: !1477, file: !1477, line: 22, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1477 = !DIFile(filename: "ldecod_src/inc/intra8x8_pred.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d97164f549fffd40a83d048016fbceef")
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!7, !141, !899, !7, !7}
!1480 = !DISubprogram(name: "copy_image_data_8x8", scope: !123, file: !123, line: 127, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1481 = distinct !DISubprogram(name: "mb_pred_skip", scope: !3, file: !3, line: 228, type: !139, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488}
!1483 = !DILocalVariable(name: "currMB", arg: 1, scope: !1481, file: !3, line: 228, type: !141)
!1484 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1481, file: !3, line: 228, type: !899)
!1485 = !DILocalVariable(name: "currImg", arg: 3, scope: !1481, file: !3, line: 228, type: !614)
!1486 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !1481, file: !3, line: 228, type: !680)
!1487 = !DILocalVariable(name: "currSlice", scope: !1481, file: !3, line: 230, type: !503)
!1488 = !DILocalVariable(name: "p_Vid", scope: !1481, file: !3, line: 231, type: !833)
!1489 = !DILocation(line: 0, scope: !1481)
!1490 = !DILocation(line: 230, column: 30, scope: !1481)
!1491 = !DILocation(line: 231, column: 36, scope: !1481)
!1492 = !DILocation(line: 233, column: 3, scope: !1481)
!1493 = !DILocation(line: 235, column: 3, scope: !1481)
!1494 = !DILocation(line: 237, column: 42, scope: !1481)
!1495 = !DILocation(line: 237, column: 26, scope: !1481)
!1496 = !DILocation(line: 237, column: 61, scope: !1481)
!1497 = !DILocation(line: 237, column: 50, scope: !1481)
!1498 = !DILocation(line: 237, column: 90, scope: !1481)
!1499 = !DILocation(line: 237, column: 3, scope: !1481)
!1500 = !DILocation(line: 239, column: 21, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 239, column: 7)
!1502 = !DILocation(line: 239, column: 50, scope: !1501)
!1503 = !DILocation(line: 242, column: 35, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 240, column: 3)
!1505 = !DILocation(line: 242, column: 22, scope: !1504)
!1506 = !DILocation(line: 242, column: 52, scope: !1504)
!1507 = !DILocation(line: 242, column: 73, scope: !1504)
!1508 = !DILocation(line: 242, column: 62, scope: !1504)
!1509 = !DILocation(line: 242, column: 93, scope: !1504)
!1510 = !DILocation(line: 242, column: 105, scope: !1504)
!1511 = !DILocation(line: 242, column: 127, scope: !1504)
!1512 = !DILocation(line: 242, column: 5, scope: !1504)
!1513 = !DILocation(line: 243, column: 35, scope: !1504)
!1514 = !DILocation(line: 243, column: 22, scope: !1504)
!1515 = !DILocation(line: 243, column: 52, scope: !1504)
!1516 = !DILocation(line: 243, column: 73, scope: !1504)
!1517 = !DILocation(line: 243, column: 62, scope: !1504)
!1518 = !DILocation(line: 243, column: 93, scope: !1504)
!1519 = !DILocation(line: 243, column: 105, scope: !1504)
!1520 = !DILocation(line: 243, column: 127, scope: !1504)
!1521 = !DILocation(line: 243, column: 5, scope: !1504)
!1522 = !DILocation(line: 244, column: 3, scope: !1504)
!1523 = !DILocation(line: 245, column: 3, scope: !1481)
!1524 = distinct !DISubprogram(name: "set_chroma_vector", scope: !3, file: !3, line: 142, type: !1191, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1534, !1535, !1538, !1539, !1541, !1542, !1544, !1545, !1546}
!1526 = !DILocalVariable(name: "currMB", arg: 1, scope: !1524, file: !3, line: 142, type: !141)
!1527 = !DILocalVariable(name: "currSlice", scope: !1524, file: !3, line: 144, type: !503)
!1528 = !DILocalVariable(name: "p_Vid", scope: !1524, file: !3, line: 145, type: !833)
!1529 = !DILocalVariable(name: "k", scope: !1530, file: !3, line: 151, type: !7)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 150, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 149, column: 8)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 148, column: 3)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 147, column: 7)
!1534 = !DILocalVariable(name: "l", scope: !1530, file: !3, line: 151, type: !7)
!1535 = !DILocalVariable(name: "k", scope: !1536, file: !3, line: 165, type: !7)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 164, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 163, column: 13)
!1538 = !DILocalVariable(name: "l", scope: !1536, file: !3, line: 165, type: !7)
!1539 = !DILocalVariable(name: "k", scope: !1540, file: !3, line: 179, type: !7)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 178, column: 5)
!1541 = !DILocalVariable(name: "l", scope: !1540, file: !3, line: 179, type: !7)
!1542 = !DILocalVariable(name: "mb_nr", scope: !1543, file: !3, line: 191, type: !7)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 190, column: 3)
!1544 = !DILocalVariable(name: "k", scope: !1543, file: !3, line: 192, type: !7)
!1545 = !DILocalVariable(name: "l", scope: !1543, file: !3, line: 192, type: !7)
!1546 = !DILocalVariable(name: "list_offset", scope: !1547, file: !3, line: 198, type: !7)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 197, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 196, column: 9)
!1549 = !DILocation(line: 0, scope: !1524)
!1550 = !DILocation(line: 144, column: 30, scope: !1524)
!1551 = !DILocation(line: 145, column: 36, scope: !1524)
!1552 = !DILocation(line: 147, column: 19, scope: !1533)
!1553 = !DILocation(line: 147, column: 8, scope: !1533)
!1554 = !DILocation(line: 147, column: 7, scope: !1524)
!1555 = !DILocation(line: 149, column: 19, scope: !1531)
!1556 = !DILocation(line: 149, column: 8, scope: !1532)
!1557 = !DILocation(line: 0, scope: !1536)
!1558 = !DILocation(line: 168, column: 24, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 168, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 168, column: 9)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 167, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 166, column: 7)
!1563 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 166, column: 7)
!1564 = !DILocation(line: 168, column: 22, scope: !1559)
!1565 = !DILocation(line: 168, column: 9, scope: !1560)
!1566 = !DILocation(line: 0, scope: !1530)
!1567 = !DILocation(line: 154, column: 24, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 154, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 154, column: 9)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 153, column: 7)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 152, column: 7)
!1572 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 152, column: 7)
!1573 = !DILocation(line: 154, column: 22, scope: !1568)
!1574 = !DILocation(line: 154, column: 9, scope: !1569)
!1575 = !DILocation(line: 0, scope: !1540)
!1576 = !DILocation(line: 182, column: 24, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 182, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 182, column: 9)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 181, column: 7)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 180, column: 7)
!1581 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 180, column: 7)
!1582 = !DILocation(line: 182, column: 22, scope: !1577)
!1583 = !DILocation(line: 182, column: 9, scope: !1578)
!1584 = !DILocation(line: 156, column: 40, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 156, column: 14)
!1586 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 155, column: 9)
!1587 = !DILocation(line: 156, column: 21, scope: !1585)
!1588 = !DILocation(line: 156, column: 64, scope: !1585)
!1589 = !DILocation(line: 156, column: 31, scope: !1585)
!1590 = !DILocation(line: 0, scope: !1585)
!1591 = !DILocation(line: 154, column: 50, scope: !1568)
!1592 = distinct !{!1592, !1574, !1593}
!1593 = !DILocation(line: 160, column: 9, scope: !1569)
!1594 = !DILocation(line: 170, column: 41, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 170, column: 15)
!1596 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 169, column: 9)
!1597 = !DILocation(line: 170, column: 22, scope: !1595)
!1598 = !DILocation(line: 170, column: 65, scope: !1595)
!1599 = !DILocation(line: 170, column: 32, scope: !1595)
!1600 = !DILocation(line: 0, scope: !1595)
!1601 = !DILocation(line: 168, column: 50, scope: !1559)
!1602 = distinct !{!1602, !1565, !1603}
!1603 = !DILocation(line: 174, column: 9, scope: !1560)
!1604 = !DILocation(line: 184, column: 53, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 183, column: 9)
!1606 = !DILocation(line: 182, column: 50, scope: !1577)
!1607 = !DILocation(line: 184, column: 11, scope: !1605)
!1608 = distinct !{!1608, !1583, !1609, !1610, !1611}
!1609 = !DILocation(line: 185, column: 9, scope: !1578)
!1610 = !{!"llvm.loop.isvectorized", i32 1}
!1611 = !{!"llvm.loop.unroll.runtime.disable"}
!1612 = distinct !{!1612, !1583, !1609, !1611, !1610}
!1613 = distinct !{!1613, !1583, !1609, !1610, !1611}
!1614 = distinct !{!1614, !1583, !1609, !1611, !1610}
!1615 = !DILocation(line: 0, scope: !1543)
!1616 = !DILocation(line: 196, column: 17, scope: !1548)
!1617 = !DILocation(line: 196, column: 9, scope: !1548)
!1618 = !DILocation(line: 196, column: 9, scope: !1543)
!1619 = !DILocation(line: 217, column: 24, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 217, column: 9)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 217, column: 9)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 216, column: 7)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 215, column: 7)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 215, column: 7)
!1625 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 214, column: 5)
!1626 = !DILocation(line: 217, column: 22, scope: !1620)
!1627 = !DILocation(line: 217, column: 9, scope: !1621)
!1628 = !DILocation(line: 191, column: 26, scope: !1543)
!1629 = !DILocation(line: 191, column: 34, scope: !1543)
!1630 = !DILocation(line: 198, column: 33, scope: !1547)
!1631 = !DILocation(line: 0, scope: !1547)
!1632 = !DILocation(line: 200, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 200, column: 7)
!1634 = !DILocation(line: 202, column: 24, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 202, column: 9)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 202, column: 9)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 201, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 200, column: 7)
!1639 = !DILocation(line: 202, column: 22, scope: !1635)
!1640 = !DILocation(line: 202, column: 9, scope: !1636)
!1641 = !DILocation(line: 200, column: 68, scope: !1638)
!1642 = !DILocation(line: 204, column: 28, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 204, column: 14)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 203, column: 9)
!1645 = !DILocation(line: 204, column: 52, scope: !1643)
!1646 = !DILocation(line: 204, column: 62, scope: !1643)
!1647 = !DILocation(line: 0, scope: !1643)
!1648 = !DILocation(line: 202, column: 50, scope: !1635)
!1649 = distinct !{!1649, !1640, !1650}
!1650 = !DILocation(line: 210, column: 9, scope: !1636)
!1651 = !DILocation(line: 206, column: 33, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 206, column: 19)
!1653 = !DILocation(line: 206, column: 57, scope: !1652)
!1654 = !DILocation(line: 206, column: 67, scope: !1652)
!1655 = !DILocation(line: 0, scope: !1652)
!1656 = !DILocation(line: 219, column: 53, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 218, column: 9)
!1658 = !DILocation(line: 217, column: 50, scope: !1620)
!1659 = !DILocation(line: 219, column: 11, scope: !1657)
!1660 = distinct !{!1660, !1627, !1661, !1610, !1611}
!1661 = !DILocation(line: 220, column: 9, scope: !1621)
!1662 = distinct !{!1662, !1627, !1661, !1611, !1610}
!1663 = distinct !{!1663, !1627, !1661, !1610, !1611}
!1664 = distinct !{!1664, !1627, !1661, !1611, !1610}
!1665 = !DILocation(line: 225, column: 41, scope: !1524)
!1666 = !DILocation(line: 225, column: 51, scope: !1524)
!1667 = !DILocation(line: 225, column: 60, scope: !1524)
!1668 = !DILocation(line: 225, column: 73, scope: !1524)
!1669 = !DILocation(line: 225, column: 63, scope: !1524)
!1670 = !DILocation(line: 225, column: 29, scope: !1524)
!1671 = !DILocation(line: 225, column: 94, scope: !1524)
!1672 = !DILocation(line: 225, column: 104, scope: !1524)
!1673 = !DILocation(line: 225, column: 118, scope: !1524)
!1674 = !DILocation(line: 225, column: 14, scope: !1524)
!1675 = !DILocation(line: 225, column: 27, scope: !1524)
!1676 = !DILocation(line: 226, column: 1, scope: !1524)
!1677 = !DISubprogram(name: "perform_mc", scope: !1390, file: !1390, line: 31, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !141, !899, !680, !7, !7, !7, !7, !7}
!1680 = !DISubprogram(name: "copy_image_data_16x16", scope: !123, file: !123, line: 126, type: !1387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubprogram(name: "copy_image_data", scope: !123, file: !123, line: 125, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !614, !614, !7, !7, !7, !7}
!1684 = distinct !DISubprogram(name: "mb_pred_sp_skip", scope: !3, file: !3, line: 248, type: !1394, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DILocalVariable(name: "currMB", arg: 1, scope: !1684, file: !3, line: 248, type: !141)
!1687 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1684, file: !3, line: 248, type: !899)
!1688 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1684, file: !3, line: 248, type: !680)
!1689 = !DILocation(line: 0, scope: !1684)
!1690 = !DILocation(line: 250, column: 3, scope: !1684)
!1691 = !DILocation(line: 252, column: 3, scope: !1684)
!1692 = !DILocation(line: 253, column: 3, scope: !1684)
!1693 = !DILocation(line: 254, column: 3, scope: !1684)
!1694 = !DISubprogram(name: "iTransform", scope: !123, file: !123, line: 123, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1695 = distinct !DISubprogram(name: "mb_pred_p_inter8x8", scope: !3, file: !3, line: 257, type: !1394, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1711, !1712, !1713, !1714, !1715, !1716}
!1697 = !DILocalVariable(name: "currMB", arg: 1, scope: !1695, file: !3, line: 257, type: !141)
!1698 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1695, file: !3, line: 257, type: !899)
!1699 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1695, file: !3, line: 257, type: !680)
!1700 = !DILocalVariable(name: "block8x8", scope: !1695, file: !3, line: 259, type: !7)
!1701 = !DILocalVariable(name: "i", scope: !1695, file: !3, line: 260, type: !7)
!1702 = !DILocalVariable(name: "j", scope: !1695, file: !3, line: 260, type: !7)
!1703 = !DILocalVariable(name: "k", scope: !1695, file: !3, line: 260, type: !7)
!1704 = !DILocalVariable(name: "currSlice", scope: !1695, file: !3, line: 262, type: !503)
!1705 = !DILocalVariable(name: "p_Vid", scope: !1695, file: !3, line: 263, type: !833)
!1706 = !DILocalVariable(name: "smb", scope: !1695, file: !3, line: 264, type: !7)
!1707 = !DILocalVariable(name: "mv_mode", scope: !1708, file: !3, line: 270, type: !7)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 269, column: 3)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 268, column: 3)
!1710 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 268, column: 3)
!1711 = !DILocalVariable(name: "pred_dir", scope: !1708, file: !3, line: 271, type: !7)
!1712 = !DILocalVariable(name: "k_start", scope: !1708, file: !3, line: 273, type: !7)
!1713 = !DILocalVariable(name: "k_inc", scope: !1708, file: !3, line: 274, type: !7)
!1714 = !DILocalVariable(name: "k_end", scope: !1708, file: !3, line: 275, type: !7)
!1715 = !DILocalVariable(name: "block_size_x", scope: !1708, file: !3, line: 277, type: !7)
!1716 = !DILocalVariable(name: "block_size_y", scope: !1708, file: !3, line: 278, type: !7)
!1717 = !DILocation(line: 0, scope: !1695)
!1718 = !DILocation(line: 262, column: 30, scope: !1695)
!1719 = !DILocation(line: 263, column: 36, scope: !1695)
!1720 = !DILocation(line: 264, column: 20, scope: !1695)
!1721 = !DILocation(line: 264, column: 25, scope: !1695)
!1722 = !DILocation(line: 264, column: 37, scope: !1695)
!1723 = !DILocation(line: 264, column: 49, scope: !1695)
!1724 = !DILocation(line: 264, column: 64, scope: !1695)
!1725 = !DILocation(line: 266, column: 3, scope: !1695)
!1726 = !DILocation(line: 270, column: 20, scope: !1708)
!1727 = !DILocation(line: 0, scope: !1708)
!1728 = !DILocation(line: 271, column: 20, scope: !1708)
!1729 = !DILocation(line: 274, column: 26, scope: !1708)
!1730 = !DILocation(line: 274, column: 17, scope: !1708)
!1731 = !DILocation(line: 275, column: 26, scope: !1708)
!1732 = !DILocation(line: 275, column: 17, scope: !1708)
!1733 = !DILocation(line: 277, column: 44, scope: !1708)
!1734 = !DILocation(line: 277, column: 24, scope: !1708)
!1735 = !DILocation(line: 278, column: 34, scope: !1708)
!1736 = !DILocation(line: 278, column: 44, scope: !1708)
!1737 = !DILocation(line: 278, column: 24, scope: !1708)
!1738 = !DILocation(line: 280, column: 5, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 280, column: 5)
!1740 = !DILocation(line: 282, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 281, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 280, column: 5)
!1743 = !DILocation(line: 282, column: 34, scope: !1741)
!1744 = !DILocation(line: 283, column: 34, scope: !1741)
!1745 = !DILocation(line: 283, column: 40, scope: !1741)
!1746 = !DILocation(line: 284, column: 7, scope: !1741)
!1747 = !DILocation(line: 280, column: 36, scope: !1742)
!1748 = !DILocation(line: 280, column: 25, scope: !1742)
!1749 = distinct !{!1749, !1738, !1750}
!1750 = !DILocation(line: 285, column: 5, scope: !1739)
!1751 = !DILocation(line: 288, column: 3, scope: !1695)
!1752 = !DILocation(line: 290, column: 15, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 290, column: 7)
!1754 = !DILocation(line: 290, column: 19, scope: !1753)
!1755 = !DILocation(line: 290, column: 7, scope: !1695)
!1756 = !DILocation(line: 291, column: 16, scope: !1753)
!1757 = !DILocation(line: 291, column: 31, scope: !1753)
!1758 = !DILocation(line: 291, column: 5, scope: !1753)
!1759 = !DILocation(line: 292, column: 3, scope: !1695)
!1760 = distinct !DISubprogram(name: "mb_pred_p_inter16x16", scope: !3, file: !3, line: 295, type: !1394, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766}
!1762 = !DILocalVariable(name: "currMB", arg: 1, scope: !1760, file: !3, line: 295, type: !141)
!1763 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1760, file: !3, line: 295, type: !899)
!1764 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1760, file: !3, line: 295, type: !680)
!1765 = !DILocalVariable(name: "smb", scope: !1760, file: !3, line: 297, type: !7)
!1766 = !DILocalVariable(name: "currSlice", scope: !1760, file: !3, line: 298, type: !503)
!1767 = !DILocation(line: 0, scope: !1760)
!1768 = !DILocation(line: 297, column: 22, scope: !1760)
!1769 = !DILocation(line: 297, column: 29, scope: !1760)
!1770 = !DILocation(line: 297, column: 34, scope: !1760)
!1771 = !DILocation(line: 298, column: 30, scope: !1760)
!1772 = !DILocation(line: 300, column: 3, scope: !1760)
!1773 = !DILocation(line: 301, column: 55, scope: !1760)
!1774 = !DILocation(line: 301, column: 47, scope: !1760)
!1775 = !DILocation(line: 301, column: 3, scope: !1760)
!1776 = !DILocation(line: 302, column: 3, scope: !1760)
!1777 = !DILocation(line: 304, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 304, column: 7)
!1779 = !DILocation(line: 304, column: 19, scope: !1778)
!1780 = !DILocation(line: 304, column: 7, scope: !1760)
!1781 = !DILocation(line: 305, column: 16, scope: !1778)
!1782 = !DILocation(line: 305, column: 31, scope: !1778)
!1783 = !DILocation(line: 305, column: 5, scope: !1778)
!1784 = !DILocation(line: 306, column: 3, scope: !1760)
!1785 = distinct !DISubprogram(name: "mb_pred_p_inter16x8", scope: !3, file: !3, line: 309, type: !1394, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791}
!1787 = !DILocalVariable(name: "currMB", arg: 1, scope: !1785, file: !3, line: 309, type: !141)
!1788 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1785, file: !3, line: 309, type: !899)
!1789 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1785, file: !3, line: 309, type: !680)
!1790 = !DILocalVariable(name: "smb", scope: !1785, file: !3, line: 311, type: !7)
!1791 = !DILocalVariable(name: "currSlice", scope: !1785, file: !3, line: 312, type: !503)
!1792 = !DILocation(line: 0, scope: !1785)
!1793 = !DILocation(line: 311, column: 22, scope: !1785)
!1794 = !DILocation(line: 311, column: 29, scope: !1785)
!1795 = !DILocation(line: 311, column: 34, scope: !1785)
!1796 = !DILocation(line: 312, column: 30, scope: !1785)
!1797 = !DILocation(line: 314, column: 3, scope: !1785)
!1798 = !DILocation(line: 316, column: 55, scope: !1785)
!1799 = !DILocation(line: 316, column: 47, scope: !1785)
!1800 = !DILocation(line: 316, column: 3, scope: !1785)
!1801 = !DILocation(line: 317, column: 47, scope: !1785)
!1802 = !DILocation(line: 317, column: 3, scope: !1785)
!1803 = !DILocation(line: 318, column: 3, scope: !1785)
!1804 = !DILocation(line: 320, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 320, column: 7)
!1806 = !DILocation(line: 320, column: 19, scope: !1805)
!1807 = !DILocation(line: 320, column: 7, scope: !1785)
!1808 = !DILocation(line: 321, column: 16, scope: !1805)
!1809 = !DILocation(line: 321, column: 31, scope: !1805)
!1810 = !DILocation(line: 321, column: 5, scope: !1805)
!1811 = !DILocation(line: 322, column: 3, scope: !1785)
!1812 = distinct !DISubprogram(name: "mb_pred_p_inter8x16", scope: !3, file: !3, line: 325, type: !1394, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818}
!1814 = !DILocalVariable(name: "currMB", arg: 1, scope: !1812, file: !3, line: 325, type: !141)
!1815 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1812, file: !3, line: 325, type: !899)
!1816 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !1812, file: !3, line: 325, type: !680)
!1817 = !DILocalVariable(name: "smb", scope: !1812, file: !3, line: 327, type: !7)
!1818 = !DILocalVariable(name: "currSlice", scope: !1812, file: !3, line: 328, type: !503)
!1819 = !DILocation(line: 0, scope: !1812)
!1820 = !DILocation(line: 327, column: 22, scope: !1812)
!1821 = !DILocation(line: 327, column: 29, scope: !1812)
!1822 = !DILocation(line: 327, column: 34, scope: !1812)
!1823 = !DILocation(line: 328, column: 30, scope: !1812)
!1824 = !DILocation(line: 330, column: 3, scope: !1812)
!1825 = !DILocation(line: 332, column: 55, scope: !1812)
!1826 = !DILocation(line: 332, column: 47, scope: !1812)
!1827 = !DILocation(line: 332, column: 3, scope: !1812)
!1828 = !DILocation(line: 333, column: 47, scope: !1812)
!1829 = !DILocation(line: 333, column: 3, scope: !1812)
!1830 = !DILocation(line: 334, column: 3, scope: !1812)
!1831 = !DILocation(line: 336, column: 15, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 336, column: 7)
!1833 = !DILocation(line: 336, column: 19, scope: !1832)
!1834 = !DILocation(line: 336, column: 7, scope: !1812)
!1835 = !DILocation(line: 337, column: 16, scope: !1832)
!1836 = !DILocation(line: 337, column: 31, scope: !1832)
!1837 = !DILocation(line: 337, column: 5, scope: !1832)
!1838 = !DILocation(line: 338, column: 3, scope: !1812)
!1839 = distinct !DISubprogram(name: "mb_pred_b_d8x8temporal", scope: !3, file: !3, line: 348, type: !139, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1859, !1860, !1861, !1863, !1864, !1868, !1869, !1870, !1876, !1877, !1880, !1881, !1885}
!1841 = !DILocalVariable(name: "currMB", arg: 1, scope: !1839, file: !3, line: 348, type: !141)
!1842 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !1839, file: !3, line: 348, type: !899)
!1843 = !DILocalVariable(name: "currImg", arg: 3, scope: !1839, file: !3, line: 348, type: !614)
!1844 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !1839, file: !3, line: 348, type: !680)
!1845 = !DILocalVariable(name: "ref_idx", scope: !1839, file: !3, line: 350, type: !92)
!1846 = !DILocalVariable(name: "refList", scope: !1839, file: !3, line: 351, type: !7)
!1847 = !DILocalVariable(name: "k", scope: !1839, file: !3, line: 353, type: !7)
!1848 = !DILocalVariable(name: "i", scope: !1839, file: !3, line: 353, type: !7)
!1849 = !DILocalVariable(name: "j", scope: !1839, file: !3, line: 353, type: !7)
!1850 = !DILocalVariable(name: "i4", scope: !1839, file: !3, line: 353, type: !7)
!1851 = !DILocalVariable(name: "j4", scope: !1839, file: !3, line: 353, type: !7)
!1852 = !DILocalVariable(name: "j6", scope: !1839, file: !3, line: 353, type: !7)
!1853 = !DILocalVariable(name: "block8x8", scope: !1839, file: !3, line: 354, type: !7)
!1854 = !DILocalVariable(name: "currSlice", scope: !1839, file: !3, line: 355, type: !503)
!1855 = !DILocalVariable(name: "p_Vid", scope: !1839, file: !3, line: 356, type: !833)
!1856 = !DILocalVariable(name: "mv_info", scope: !1839, file: !3, line: 357, type: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "PicMotionParams", file: !665, line: 43, baseType: !723)
!1859 = !DILocalVariable(name: "colocated", scope: !1839, file: !3, line: 357, type: !1857)
!1860 = !DILocalVariable(name: "list_offset", scope: !1839, file: !3, line: 359, type: !7)
!1861 = !DILocalVariable(name: "list0", scope: !1839, file: !3, line: 360, type: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!1863 = !DILocalVariable(name: "list1", scope: !1839, file: !3, line: 361, type: !1862)
!1864 = !DILocalVariable(name: "pred_dir", scope: !1865, file: !3, line: 368, type: !7)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 367, column: 3)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 366, column: 3)
!1867 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 366, column: 3)
!1868 = !DILocalVariable(name: "k_start", scope: !1865, file: !3, line: 370, type: !7)
!1869 = !DILocalVariable(name: "k_end", scope: !1865, file: !3, line: 371, type: !7)
!1870 = !DILocalVariable(name: "mapped_idx", scope: !1871, file: !3, line: 445, type: !7)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 444, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 435, column: 10)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 374, column: 5)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 373, column: 5)
!1875 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 373, column: 5)
!1876 = !DILocalVariable(name: "iref", scope: !1871, file: !3, line: 446, type: !7)
!1877 = !DILocalVariable(name: "mv_scale", scope: !1878, file: !3, line: 485, type: !7)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 484, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 483, column: 12)
!1880 = !DILocalVariable(name: "mv_y", scope: !1878, file: !3, line: 486, type: !7)
!1881 = !DILocalVariable(name: "i", scope: !1882, file: !3, line: 526, type: !7)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 525, column: 5)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 524, column: 5)
!1884 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 524, column: 5)
!1885 = !DILocalVariable(name: "j", scope: !1882, file: !3, line: 527, type: !7)
!1886 = !DILocation(line: 0, scope: !1839)
!1887 = !DILocation(line: 355, column: 30, scope: !1839)
!1888 = !DILocation(line: 356, column: 36, scope: !1839)
!1889 = !DILocation(line: 359, column: 29, scope: !1839)
!1890 = !DILocation(line: 359, column: 21, scope: !1839)
!1891 = !DILocation(line: 360, column: 40, scope: !1839)
!1892 = !DILocation(line: 360, column: 29, scope: !1839)
!1893 = !DILocation(line: 361, column: 53, scope: !1839)
!1894 = !DILocation(line: 361, column: 29, scope: !1839)
!1895 = !DILocation(line: 363, column: 3, scope: !1839)
!1896 = !DILocation(line: 366, column: 3, scope: !1867)
!1897 = !DILocation(line: 368, column: 20, scope: !1865)
!1898 = !DILocation(line: 0, scope: !1865)
!1899 = !DILocation(line: 373, column: 5, scope: !1875)
!1900 = !DILocation(line: 376, column: 13, scope: !1873)
!1901 = !DILocation(line: 376, column: 34, scope: !1873)
!1902 = !DILocation(line: 377, column: 34, scope: !1873)
!1903 = !DILocation(line: 377, column: 40, scope: !1873)
!1904 = !DILocation(line: 378, column: 22, scope: !1873)
!1905 = !DILocation(line: 378, column: 30, scope: !1873)
!1906 = !DILocation(line: 379, column: 22, scope: !1873)
!1907 = !DILocation(line: 379, column: 30, scope: !1873)
!1908 = !DILocation(line: 380, column: 22, scope: !1873)
!1909 = !DILocation(line: 380, column: 34, scope: !1873)
!1910 = !DILocation(line: 381, column: 31, scope: !1873)
!1911 = !DILocation(line: 381, column: 18, scope: !1873)
!1912 = !DILocation(line: 382, column: 20, scope: !1873)
!1913 = !DILocation(line: 382, column: 30, scope: !1873)
!1914 = !DILocalVariable(name: "x", arg: 1, scope: !1915, file: !107, line: 236, type: !7)
!1915 = distinct !DISubprogram(name: "RSD", scope: !107, file: !107, line: 236, type: !108, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1916 = !{!1914}
!1917 = !DILocation(line: 0, scope: !1915, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 382, column: 38, scope: !1873)
!1919 = !DILocation(line: 238, column: 10, scope: !1915, inlinedAt: !1918)
!1920 = !DILocation(line: 0, scope: !1915, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 382, column: 47, scope: !1873)
!1922 = !DILocation(line: 238, column: 10, scope: !1915, inlinedAt: !1921)
!1923 = !DILocation(line: 383, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 383, column: 10)
!1925 = !DILocation(line: 383, column: 10, scope: !1924)
!1926 = !DILocation(line: 383, column: 10, scope: !1873)
!1927 = !DILocation(line: 386, column: 21, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 386, column: 12)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 384, column: 7)
!1930 = !DILocation(line: 386, column: 13, scope: !1928)
!1931 = !DILocation(line: 386, column: 30, scope: !1928)
!1932 = !DILocation(line: 386, column: 35, scope: !1928)
!1933 = !DILocation(line: 386, column: 64, scope: !1928)
!1934 = !DILocation(line: 386, column: 98, scope: !1928)
!1935 = !DILocation(line: 386, column: 130, scope: !1928)
!1936 = !DILocation(line: 386, column: 137, scope: !1928)
!1937 = !DILocation(line: 386, column: 154, scope: !1928)
!1938 = !DILocation(line: 386, column: 101, scope: !1928)
!1939 = !DILocation(line: 386, column: 164, scope: !1928)
!1940 = !DILocation(line: 389, column: 33, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 389, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 388, column: 9)
!1943 = !DILocation(line: 389, column: 39, scope: !1941)
!1944 = !DILocation(line: 389, column: 70, scope: !1941)
!1945 = !DILocation(line: 389, column: 37, scope: !1941)
!1946 = !DILocation(line: 0, scope: !106, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 389, column: 15, scope: !1941)
!1948 = !DILocation(line: 120, column: 18, scope: !106, inlinedAt: !1947)
!1949 = !DILocation(line: 389, column: 99, scope: !1941)
!1950 = !DILocation(line: 389, column: 130, scope: !1941)
!1951 = !DILocation(line: 389, column: 98, scope: !1941)
!1952 = !DILocation(line: 0, scope: !106, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 389, column: 76, scope: !1941)
!1954 = !DILocation(line: 120, column: 18, scope: !106, inlinedAt: !1953)
!1955 = !DILocation(line: 389, column: 74, scope: !1941)
!1956 = !DILocation(line: 0, scope: !1941)
!1957 = !DILocation(line: 389, column: 15, scope: !1942)
!1958 = !DILocation(line: 392, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 390, column: 11)
!1960 = !DILocation(line: 391, column: 26, scope: !1959)
!1961 = !DILocation(line: 0, scope: !1915, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 392, column: 55, scope: !1959)
!1963 = !DILocation(line: 0, scope: !1915, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 392, column: 67, scope: !1959)
!1965 = !DILocation(line: 392, column: 16, scope: !1959)
!1966 = !DILocation(line: 392, column: 79, scope: !1959)
!1967 = !DILocation(line: 397, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 395, column: 11)
!1969 = !DILocation(line: 396, column: 26, scope: !1968)
!1970 = !DILocation(line: 0, scope: !1915, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 397, column: 55, scope: !1968)
!1972 = !DILocation(line: 0, scope: !1915, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 397, column: 67, scope: !1968)
!1974 = !DILocation(line: 397, column: 16, scope: !1968)
!1975 = !DILocation(line: 397, column: 79, scope: !1968)
!1976 = !DILocation(line: 401, column: 60, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 401, column: 52)
!1978 = !DILocation(line: 401, column: 72, scope: !1977)
!1979 = !DILocation(line: 401, column: 53, scope: !1977)
!1980 = !DILocation(line: 401, column: 92, scope: !1977)
!1981 = !DILocation(line: 402, column: 28, scope: !1977)
!1982 = !DILocation(line: 402, column: 17, scope: !1977)
!1983 = !DILocation(line: 402, column: 43, scope: !1977)
!1984 = !DILocation(line: 402, column: 46, scope: !1977)
!1985 = !DILocation(line: 402, column: 75, scope: !1977)
!1986 = !DILocation(line: 402, column: 86, scope: !1977)
!1987 = !DILocation(line: 401, column: 52, scope: !1924)
!1988 = !DILocation(line: 404, column: 33, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 404, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 403, column: 7)
!1991 = !DILocation(line: 404, column: 49, scope: !1989)
!1992 = !DILocation(line: 404, column: 63, scope: !1989)
!1993 = !DILocation(line: 404, column: 37, scope: !1989)
!1994 = !DILocation(line: 0, scope: !106, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 404, column: 15, scope: !1989)
!1996 = !DILocation(line: 120, column: 18, scope: !106, inlinedAt: !1995)
!1997 = !DILocation(line: 404, column: 102, scope: !1989)
!1998 = !DILocation(line: 404, column: 113, scope: !1989)
!1999 = !DILocation(line: 404, column: 91, scope: !1989)
!2000 = !DILocation(line: 0, scope: !106, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 404, column: 69, scope: !1989)
!2002 = !DILocation(line: 120, column: 18, scope: !106, inlinedAt: !2001)
!2003 = !DILocation(line: 404, column: 67, scope: !1989)
!2004 = !DILocation(line: 0, scope: !1989)
!2005 = !DILocation(line: 404, column: 15, scope: !1990)
!2006 = !DILocation(line: 407, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 405, column: 11)
!2008 = !DILocation(line: 406, column: 26, scope: !2007)
!2009 = !DILocation(line: 0, scope: !1915, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 407, column: 56, scope: !2007)
!2011 = !DILocation(line: 0, scope: !1915, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 407, column: 68, scope: !2007)
!2013 = !DILocation(line: 407, column: 27, scope: !2007)
!2014 = !DILocation(line: 407, column: 80, scope: !2007)
!2015 = !DILocation(line: 412, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 410, column: 11)
!2017 = !DILocation(line: 411, column: 26, scope: !2016)
!2018 = !DILocation(line: 0, scope: !1915, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 412, column: 59, scope: !2016)
!2020 = !DILocation(line: 0, scope: !1915, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 412, column: 71, scope: !2016)
!2022 = !DILocation(line: 412, column: 27, scope: !2016)
!2023 = !DILocation(line: 412, column: 83, scope: !2016)
!2024 = !DILocation(line: 415, column: 98, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 415, column: 15)
!2026 = !DILocation(line: 415, column: 119, scope: !2025)
!2027 = !DILocation(line: 415, column: 107, scope: !2025)
!2028 = !DILocation(line: 415, column: 129, scope: !2025)
!2029 = !DILocation(line: 415, column: 142, scope: !2025)
!2030 = !DILocation(line: 415, column: 132, scope: !2025)
!2031 = !DILocation(line: 415, column: 15, scope: !1977)
!2032 = !DILocation(line: 417, column: 36, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 417, column: 15)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 416, column: 7)
!2035 = !DILocation(line: 0, scope: !2033)
!2036 = !DILocation(line: 417, column: 15, scope: !2034)
!2037 = !DILocation(line: 420, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 418, column: 11)
!2039 = !DILocation(line: 419, column: 26, scope: !2038)
!2040 = !DILocation(line: 0, scope: !1915, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 420, column: 63, scope: !2038)
!2042 = !DILocation(line: 420, column: 27, scope: !2038)
!2043 = !DILocation(line: 0, scope: !1915, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 420, column: 72, scope: !2038)
!2045 = !DILocation(line: 420, column: 84, scope: !2038)
!2046 = !DILocation(line: 425, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 423, column: 11)
!2048 = !DILocation(line: 424, column: 26, scope: !2047)
!2049 = !DILocation(line: 0, scope: !1915, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 425, column: 66, scope: !2047)
!2051 = !DILocation(line: 425, column: 27, scope: !2047)
!2052 = !DILocation(line: 0, scope: !1915, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 425, column: 75, scope: !2047)
!2054 = !DILocation(line: 425, column: 87, scope: !2047)
!2055 = !DILocation(line: 0, scope: !1873)
!2056 = !DILocation(line: 432, column: 29, scope: !1873)
!2057 = !DILocation(line: 432, column: 18, scope: !1873)
!2058 = !DILocation(line: 432, column: 44, scope: !1873)
!2059 = !DILocation(line: 433, column: 18, scope: !1873)
!2060 = !DILocation(line: 435, column: 17, scope: !1872)
!2061 = !DILocation(line: 435, column: 10, scope: !1873)
!2062 = !DILocation(line: 437, column: 18, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 436, column: 7)
!2064 = !DILocation(line: 438, column: 31, scope: !2063)
!2065 = !DILocation(line: 442, column: 7, scope: !2063)
!2066 = !DILocation(line: 0, scope: !1871)
!2067 = !DILocation(line: 447, column: 43, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 447, column: 13)
!2069 = !DILocation(line: 447, column: 57, scope: !2068)
!2070 = !DILocation(line: 447, column: 49, scope: !2068)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 447, column: 66, scope: !2068)
!2073 = !DILocation(line: 447, column: 116, scope: !2068)
!2074 = !DILocation(line: 448, column: 119, scope: !2068)
!2075 = !DILocation(line: 449, column: 60, scope: !2068)
!2076 = !DILocation(line: 449, column: 78, scope: !2068)
!2077 = !DILocation(line: 449, column: 81, scope: !2068)
!2078 = !DILocation(line: 449, column: 110, scope: !2068)
!2079 = !DILocation(line: 449, column: 119, scope: !2068)
!2080 = !DILocation(line: 450, column: 14, scope: !2068)
!2081 = !DILocation(line: 450, column: 49, scope: !2068)
!2082 = !DILocation(line: 450, column: 78, scope: !2068)
!2083 = !DILocation(line: 450, column: 87, scope: !2068)
!2084 = !DILocation(line: 447, column: 13, scope: !1871)
!2085 = !DILocation(line: 452, column: 31, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 452, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 452, column: 11)
!2088 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 451, column: 9)
!2089 = !DILocation(line: 452, column: 11, scope: !2087)
!2090 = !DILocation(line: 454, column: 16, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 454, column: 16)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 453, column: 11)
!2093 = !DILocation(line: 454, column: 62, scope: !2091)
!2094 = !DILocation(line: 454, column: 72, scope: !2091)
!2095 = !DILocation(line: 454, column: 103, scope: !2091)
!2096 = !DILocation(line: 455, column: 62, scope: !2091)
!2097 = !DILocation(line: 455, column: 75, scope: !2091)
!2098 = !DILocation(line: 455, column: 106, scope: !2091)
!2099 = !DILocation(line: 456, column: 62, scope: !2091)
!2100 = !DILocation(line: 456, column: 68, scope: !2091)
!2101 = !DILocation(line: 454, column: 16, scope: !2092)
!2102 = !DILocation(line: 452, column: 125, scope: !2086)
!2103 = distinct !{!2103, !2089, !2104}
!2104 = !DILocation(line: 465, column: 11, scope: !2087)
!2105 = !DILocation(line: 469, column: 31, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 469, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 469, column: 11)
!2108 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 468, column: 9)
!2109 = !DILocation(line: 469, column: 11, scope: !2107)
!2110 = !DILocation(line: 471, column: 16, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 471, column: 16)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 470, column: 11)
!2113 = !DILocation(line: 471, column: 61, scope: !2111)
!2114 = !DILocation(line: 471, column: 16, scope: !2112)
!2115 = !DILocation(line: 469, column: 125, scope: !2106)
!2116 = distinct !{!2116, !2109, !2117}
!2117 = !DILocation(line: 480, column: 11, scope: !2107)
!2118 = !DILocation(line: 485, column: 26, scope: !1878)
!2119 = !DILocation(line: 0, scope: !1878)
!2120 = !DILocation(line: 486, column: 33, scope: !1878)
!2121 = !DILocation(line: 486, column: 22, scope: !1878)
!2122 = !DILocation(line: 486, column: 45, scope: !1878)
!2123 = !DILocation(line: 487, column: 44, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 487, column: 14)
!2125 = !DILocation(line: 487, column: 56, scope: !2124)
!2126 = !DILocation(line: 487, column: 48, scope: !2124)
!2127 = !DILocation(line: 0, scope: !2124)
!2128 = !DILocation(line: 487, column: 65, scope: !2124)
!2129 = !DILocation(line: 487, column: 115, scope: !2124)
!2130 = !DILocation(line: 488, column: 59, scope: !2124)
!2131 = !DILocation(line: 488, column: 77, scope: !2124)
!2132 = !DILocation(line: 488, column: 80, scope: !2124)
!2133 = !DILocation(line: 488, column: 109, scope: !2124)
!2134 = !DILocation(line: 488, column: 118, scope: !2124)
!2135 = !DILocation(line: 487, column: 14, scope: !1878)
!2136 = !DILocation(line: 489, column: 18, scope: !2124)
!2137 = !DILocation(line: 489, column: 13, scope: !2124)
!2138 = !DILocation(line: 490, column: 119, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 490, column: 19)
!2140 = !DILocation(line: 491, column: 85, scope: !2139)
!2141 = !DILocation(line: 491, column: 114, scope: !2139)
!2142 = !DILocation(line: 491, column: 123, scope: !2139)
!2143 = !DILocation(line: 490, column: 19, scope: !2124)
!2144 = !DILocation(line: 492, column: 18, scope: !2139)
!2145 = !DILocation(line: 492, column: 13, scope: !2139)
!2146 = !DILocation(line: 495, column: 24, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 495, column: 15)
!2148 = !DILocation(line: 495, column: 32, scope: !2147)
!2149 = !DILocation(line: 495, column: 35, scope: !2147)
!2150 = !DILocation(line: 495, column: 87, scope: !2147)
!2151 = !DILocation(line: 495, column: 15, scope: !1878)
!2152 = !DILocation(line: 497, column: 63, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 496, column: 11)
!2154 = !DILocation(line: 497, column: 22, scope: !2153)
!2155 = !DILocation(line: 497, column: 38, scope: !2153)
!2156 = !DILocation(line: 498, column: 40, scope: !2153)
!2157 = !DILocation(line: 498, column: 33, scope: !2153)
!2158 = !DILocation(line: 498, column: 38, scope: !2153)
!2159 = !DILocation(line: 499, column: 13, scope: !2153)
!2160 = !DILocation(line: 499, column: 35, scope: !2153)
!2161 = !DILocation(line: 500, column: 11, scope: !2153)
!2162 = !DILocation(line: 503, column: 84, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 502, column: 11)
!2164 = !DILocation(line: 503, column: 61, scope: !2163)
!2165 = !DILocation(line: 503, column: 59, scope: !2163)
!2166 = !DILocation(line: 503, column: 89, scope: !2163)
!2167 = !DILocation(line: 503, column: 97, scope: !2163)
!2168 = !DILocation(line: 503, column: 40, scope: !2163)
!2169 = !DILocation(line: 503, column: 22, scope: !2163)
!2170 = !DILocation(line: 503, column: 38, scope: !2163)
!2171 = !DILocation(line: 504, column: 59, scope: !2163)
!2172 = !DILocation(line: 504, column: 97, scope: !2163)
!2173 = !DILocation(line: 504, column: 105, scope: !2163)
!2174 = !DILocation(line: 504, column: 40, scope: !2163)
!2175 = !DILocation(line: 504, column: 33, scope: !2163)
!2176 = !DILocation(line: 504, column: 38, scope: !2163)
!2177 = !DILocation(line: 506, column: 99, scope: !2163)
!2178 = !DILocation(line: 506, column: 74, scope: !2163)
!2179 = !DILocation(line: 506, column: 13, scope: !2163)
!2180 = !DILocation(line: 506, column: 38, scope: !2163)
!2181 = !DILocation(line: 507, column: 74, scope: !2163)
!2182 = !DILocation(line: 507, column: 40, scope: !2163)
!2183 = !DILocation(line: 507, column: 33, scope: !2163)
!2184 = !DILocation(line: 507, column: 38, scope: !2163)
!2185 = !DILocation(line: 510, column: 38, scope: !1878)
!2186 = !DILocation(line: 510, column: 20, scope: !1878)
!2187 = !DILocation(line: 510, column: 36, scope: !1878)
!2188 = !DILocation(line: 511, column: 11, scope: !1878)
!2189 = !DILocation(line: 511, column: 36, scope: !1878)
!2190 = !DILocation(line: 512, column: 9, scope: !1878)
!2191 = !DILocation(line: 515, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 514, column: 9)
!2193 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 513, column: 18)
!2194 = !DILocation(line: 520, column: 47, scope: !1873)
!2195 = !DILocation(line: 521, column: 47, scope: !1873)
!2196 = !DILocation(line: 516, column: 9, scope: !2192)
!2197 = !DILocation(line: 520, column: 34, scope: !1873)
!2198 = !DILocation(line: 520, column: 32, scope: !1873)
!2199 = !DILocation(line: 521, column: 34, scope: !1873)
!2200 = !DILocation(line: 521, column: 7, scope: !1873)
!2201 = !DILocation(line: 521, column: 32, scope: !1873)
!2202 = !DILocation(line: 373, column: 55, scope: !1874)
!2203 = !DILocation(line: 373, column: 25, scope: !1874)
!2204 = distinct !{!2204, !1899, !2205}
!2205 = !DILocation(line: 522, column: 5, scope: !1875)
!2206 = !DILocation(line: 526, column: 17, scope: !1882)
!2207 = !DILocation(line: 526, column: 38, scope: !1882)
!2208 = !DILocation(line: 0, scope: !1882)
!2209 = !DILocation(line: 527, column: 38, scope: !1882)
!2210 = !DILocation(line: 527, column: 44, scope: !1882)
!2211 = !DILocation(line: 528, column: 7, scope: !1882)
!2212 = !DILocation(line: 366, column: 40, scope: !1866)
!2213 = !DILocation(line: 366, column: 28, scope: !1866)
!2214 = distinct !{!2214, !1896, !2215}
!2215 = !DILocation(line: 530, column: 3, scope: !1867)
!2216 = !DILocation(line: 532, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 532, column: 7)
!2218 = !DILocation(line: 532, column: 19, scope: !2217)
!2219 = !DILocation(line: 532, column: 7, scope: !1839)
!2220 = !DILocation(line: 534, column: 44, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 533, column: 3)
!2222 = !DILocation(line: 534, column: 28, scope: !2221)
!2223 = !DILocation(line: 534, column: 63, scope: !2221)
!2224 = !DILocation(line: 534, column: 52, scope: !2221)
!2225 = !DILocation(line: 534, column: 92, scope: !2221)
!2226 = !DILocation(line: 534, column: 5, scope: !2221)
!2227 = !DILocation(line: 536, column: 23, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 536, column: 9)
!2229 = !DILocation(line: 536, column: 52, scope: !2228)
!2230 = !DILocation(line: 538, column: 37, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 537, column: 5)
!2232 = !DILocation(line: 538, column: 24, scope: !2231)
!2233 = !DILocation(line: 538, column: 54, scope: !2231)
!2234 = !DILocation(line: 538, column: 75, scope: !2231)
!2235 = !DILocation(line: 538, column: 64, scope: !2231)
!2236 = !DILocation(line: 538, column: 95, scope: !2231)
!2237 = !DILocation(line: 538, column: 107, scope: !2231)
!2238 = !DILocation(line: 538, column: 129, scope: !2231)
!2239 = !DILocation(line: 538, column: 7, scope: !2231)
!2240 = !DILocation(line: 539, column: 37, scope: !2231)
!2241 = !DILocation(line: 539, column: 24, scope: !2231)
!2242 = !DILocation(line: 539, column: 54, scope: !2231)
!2243 = !DILocation(line: 539, column: 75, scope: !2231)
!2244 = !DILocation(line: 539, column: 64, scope: !2231)
!2245 = !DILocation(line: 539, column: 95, scope: !2231)
!2246 = !DILocation(line: 539, column: 107, scope: !2231)
!2247 = !DILocation(line: 539, column: 129, scope: !2231)
!2248 = !DILocation(line: 539, column: 7, scope: !2231)
!2249 = !DILocation(line: 540, column: 5, scope: !2231)
!2250 = !DILocation(line: 544, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 543, column: 3)
!2252 = !DILocation(line: 545, column: 16, scope: !2251)
!2253 = !DILocation(line: 545, column: 31, scope: !2251)
!2254 = !DILocation(line: 547, column: 3, scope: !1839)
!2255 = !DISubprogram(name: "error", scope: !116, file: !116, line: 940, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2258, !7}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2259 = distinct !DISubprogram(name: "mb_pred_b_d4x4temporal", scope: !3, file: !3, line: 550, type: !139, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2278, !2279, !2280, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2293, !2294, !2297, !2301}
!2261 = !DILocalVariable(name: "currMB", arg: 1, scope: !2259, file: !3, line: 550, type: !141)
!2262 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !2259, file: !3, line: 550, type: !899)
!2263 = !DILocalVariable(name: "currImg", arg: 3, scope: !2259, file: !3, line: 550, type: !614)
!2264 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !2259, file: !3, line: 550, type: !680)
!2265 = !DILocalVariable(name: "ref_idx", scope: !2259, file: !3, line: 552, type: !92)
!2266 = !DILocalVariable(name: "refList", scope: !2259, file: !3, line: 553, type: !7)
!2267 = !DILocalVariable(name: "k", scope: !2259, file: !3, line: 555, type: !7)
!2268 = !DILocalVariable(name: "block8x8", scope: !2259, file: !3, line: 556, type: !7)
!2269 = !DILocalVariable(name: "currSlice", scope: !2259, file: !3, line: 557, type: !503)
!2270 = !DILocalVariable(name: "p_Vid", scope: !2259, file: !3, line: 558, type: !833)
!2271 = !DILocalVariable(name: "list_offset", scope: !2259, file: !3, line: 560, type: !7)
!2272 = !DILocalVariable(name: "list0", scope: !2259, file: !3, line: 561, type: !1862)
!2273 = !DILocalVariable(name: "list1", scope: !2259, file: !3, line: 562, type: !1862)
!2274 = !DILocalVariable(name: "pred_dir", scope: !2275, file: !3, line: 568, type: !7)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 567, column: 3)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 566, column: 3)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 566, column: 3)
!2278 = !DILocalVariable(name: "k_start", scope: !2275, file: !3, line: 570, type: !7)
!2279 = !DILocalVariable(name: "k_end", scope: !2275, file: !3, line: 571, type: !7)
!2280 = !DILocalVariable(name: "i", scope: !2281, file: !3, line: 576, type: !7)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 574, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 573, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 573, column: 5)
!2284 = !DILocalVariable(name: "j", scope: !2281, file: !3, line: 577, type: !7)
!2285 = !DILocalVariable(name: "i4", scope: !2281, file: !3, line: 578, type: !7)
!2286 = !DILocalVariable(name: "j4", scope: !2281, file: !3, line: 579, type: !7)
!2287 = !DILocalVariable(name: "j6", scope: !2281, file: !3, line: 580, type: !7)
!2288 = !DILocalVariable(name: "mv_info", scope: !2281, file: !3, line: 581, type: !1857)
!2289 = !DILocalVariable(name: "colocated", scope: !2281, file: !3, line: 582, type: !1857)
!2290 = !DILocalVariable(name: "mapped_idx", scope: !2291, file: !3, line: 599, type: !7)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 598, column: 7)
!2292 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 589, column: 10)
!2293 = !DILocalVariable(name: "iref", scope: !2291, file: !3, line: 600, type: !7)
!2294 = !DILocalVariable(name: "mv_scale", scope: !2295, file: !3, line: 620, type: !7)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 619, column: 9)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 614, column: 13)
!2297 = !DILocalVariable(name: "i", scope: !2298, file: !3, line: 648, type: !7)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 647, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 646, column: 5)
!2300 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 646, column: 5)
!2301 = !DILocalVariable(name: "j", scope: !2298, file: !3, line: 649, type: !7)
!2302 = !DILocation(line: 0, scope: !2259)
!2303 = !DILocation(line: 557, column: 30, scope: !2259)
!2304 = !DILocation(line: 558, column: 36, scope: !2259)
!2305 = !DILocation(line: 560, column: 29, scope: !2259)
!2306 = !DILocation(line: 560, column: 21, scope: !2259)
!2307 = !DILocation(line: 561, column: 40, scope: !2259)
!2308 = !DILocation(line: 561, column: 29, scope: !2259)
!2309 = !DILocation(line: 562, column: 53, scope: !2259)
!2310 = !DILocation(line: 562, column: 29, scope: !2259)
!2311 = !DILocation(line: 564, column: 3, scope: !2259)
!2312 = !DILocation(line: 566, column: 3, scope: !2277)
!2313 = !DILocation(line: 568, column: 20, scope: !2275)
!2314 = !DILocation(line: 0, scope: !2275)
!2315 = !DILocation(line: 573, column: 5, scope: !2283)
!2316 = !DILocation(line: 576, column: 17, scope: !2281)
!2317 = !DILocation(line: 576, column: 38, scope: !2281)
!2318 = !DILocation(line: 0, scope: !2281)
!2319 = !DILocation(line: 577, column: 38, scope: !2281)
!2320 = !DILocation(line: 577, column: 44, scope: !2281)
!2321 = !DILocation(line: 578, column: 26, scope: !2281)
!2322 = !DILocation(line: 578, column: 34, scope: !2281)
!2323 = !DILocation(line: 579, column: 26, scope: !2281)
!2324 = !DILocation(line: 579, column: 34, scope: !2281)
!2325 = !DILocation(line: 580, column: 26, scope: !2281)
!2326 = !DILocation(line: 580, column: 38, scope: !2281)
!2327 = !DILocation(line: 581, column: 48, scope: !2281)
!2328 = !DILocation(line: 581, column: 35, scope: !2281)
!2329 = !DILocation(line: 582, column: 37, scope: !2281)
!2330 = !DILocation(line: 582, column: 47, scope: !2281)
!2331 = !DILocation(line: 586, column: 29, scope: !2281)
!2332 = !DILocation(line: 586, column: 18, scope: !2281)
!2333 = !DILocation(line: 586, column: 44, scope: !2281)
!2334 = !DILocation(line: 587, column: 18, scope: !2281)
!2335 = !DILocation(line: 589, column: 17, scope: !2292)
!2336 = !DILocation(line: 589, column: 10, scope: !2281)
!2337 = !DILocation(line: 0, scope: !2291)
!2338 = !DILocation(line: 602, column: 25, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 602, column: 9)
!2340 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 602, column: 9)
!2341 = !DILocation(line: 602, column: 9, scope: !2340)
!2342 = !DILocation(line: 591, column: 18, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 590, column: 7)
!2344 = !DILocation(line: 592, column: 31, scope: !2343)
!2345 = !DILocation(line: 596, column: 7, scope: !2343)
!2346 = !DILocation(line: 604, column: 14, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 604, column: 14)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 603, column: 9)
!2349 = !DILocation(line: 604, column: 59, scope: !2347)
!2350 = !DILocation(line: 604, column: 14, scope: !2348)
!2351 = !DILocation(line: 602, column: 118, scope: !2339)
!2352 = distinct !{!2352, !2341, !2353}
!2353 = !DILocation(line: 613, column: 9, scope: !2340)
!2354 = !DILocation(line: 614, column: 13, scope: !2291)
!2355 = !DILocation(line: 616, column: 11, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 615, column: 9)
!2357 = !DILocation(line: 642, column: 47, scope: !2281)
!2358 = !DILocation(line: 643, column: 47, scope: !2281)
!2359 = !DILocation(line: 617, column: 9, scope: !2356)
!2360 = !DILocation(line: 620, column: 26, scope: !2295)
!2361 = !DILocation(line: 0, scope: !2295)
!2362 = !DILocation(line: 623, column: 24, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 623, column: 15)
!2364 = !DILocation(line: 623, column: 32, scope: !2363)
!2365 = !DILocation(line: 623, column: 35, scope: !2363)
!2366 = !DILocation(line: 623, column: 85, scope: !2363)
!2367 = !DILocation(line: 623, column: 15, scope: !2295)
!2368 = !DILocation(line: 625, column: 22, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 624, column: 11)
!2370 = !DILocation(line: 625, column: 46, scope: !2369)
!2371 = !DILocation(line: 625, column: 35, scope: !2369)
!2372 = !DILocation(line: 626, column: 13, scope: !2369)
!2373 = !DILocation(line: 626, column: 35, scope: !2369)
!2374 = !DILocation(line: 627, column: 11, scope: !2369)
!2375 = !DILocation(line: 630, column: 72, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 629, column: 11)
!2377 = !DILocation(line: 630, column: 61, scope: !2376)
!2378 = !DILocation(line: 630, column: 84, scope: !2376)
!2379 = !DILocation(line: 630, column: 59, scope: !2376)
!2380 = !DILocation(line: 630, column: 89, scope: !2376)
!2381 = !DILocation(line: 630, column: 97, scope: !2376)
!2382 = !DILocation(line: 630, column: 40, scope: !2376)
!2383 = !DILocation(line: 630, column: 22, scope: !2376)
!2384 = !DILocation(line: 630, column: 38, scope: !2376)
!2385 = !DILocation(line: 631, column: 84, scope: !2376)
!2386 = !DILocation(line: 631, column: 61, scope: !2376)
!2387 = !DILocation(line: 631, column: 59, scope: !2376)
!2388 = !DILocation(line: 631, column: 89, scope: !2376)
!2389 = !DILocation(line: 631, column: 97, scope: !2376)
!2390 = !DILocation(line: 631, column: 40, scope: !2376)
!2391 = !DILocation(line: 631, column: 33, scope: !2376)
!2392 = !DILocation(line: 631, column: 38, scope: !2376)
!2393 = !DILocation(line: 633, column: 99, scope: !2376)
!2394 = !DILocation(line: 633, column: 74, scope: !2376)
!2395 = !DILocation(line: 633, column: 13, scope: !2376)
!2396 = !DILocation(line: 633, column: 38, scope: !2376)
!2397 = !DILocation(line: 634, column: 99, scope: !2376)
!2398 = !DILocation(line: 634, column: 40, scope: !2376)
!2399 = !DILocation(line: 634, column: 33, scope: !2376)
!2400 = !DILocation(line: 634, column: 38, scope: !2376)
!2401 = !DILocation(line: 637, column: 38, scope: !2295)
!2402 = !DILocation(line: 637, column: 20, scope: !2295)
!2403 = !DILocation(line: 637, column: 36, scope: !2295)
!2404 = !DILocation(line: 638, column: 11, scope: !2295)
!2405 = !DILocation(line: 638, column: 36, scope: !2295)
!2406 = !DILocation(line: 642, column: 34, scope: !2281)
!2407 = !DILocation(line: 642, column: 32, scope: !2281)
!2408 = !DILocation(line: 643, column: 34, scope: !2281)
!2409 = !DILocation(line: 643, column: 7, scope: !2281)
!2410 = !DILocation(line: 643, column: 32, scope: !2281)
!2411 = !DILocation(line: 573, column: 36, scope: !2282)
!2412 = !DILocation(line: 573, column: 25, scope: !2282)
!2413 = distinct !{!2413, !2315, !2414}
!2414 = !DILocation(line: 644, column: 5, scope: !2283)
!2415 = !DILocation(line: 648, column: 17, scope: !2298)
!2416 = !DILocation(line: 648, column: 38, scope: !2298)
!2417 = !DILocation(line: 0, scope: !2298)
!2418 = !DILocation(line: 649, column: 38, scope: !2298)
!2419 = !DILocation(line: 649, column: 44, scope: !2298)
!2420 = !DILocation(line: 650, column: 7, scope: !2298)
!2421 = !DILocation(line: 646, column: 36, scope: !2299)
!2422 = !DILocation(line: 566, column: 40, scope: !2276)
!2423 = !DILocation(line: 566, column: 28, scope: !2276)
!2424 = distinct !{!2424, !2312, !2425}
!2425 = !DILocation(line: 653, column: 3, scope: !2277)
!2426 = !DILocation(line: 655, column: 15, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 655, column: 7)
!2428 = !DILocation(line: 655, column: 19, scope: !2427)
!2429 = !DILocation(line: 655, column: 7, scope: !2259)
!2430 = !DILocation(line: 657, column: 44, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 656, column: 3)
!2432 = !DILocation(line: 657, column: 28, scope: !2431)
!2433 = !DILocation(line: 657, column: 63, scope: !2431)
!2434 = !DILocation(line: 657, column: 52, scope: !2431)
!2435 = !DILocation(line: 657, column: 92, scope: !2431)
!2436 = !DILocation(line: 657, column: 5, scope: !2431)
!2437 = !DILocation(line: 659, column: 23, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 659, column: 9)
!2439 = !DILocation(line: 659, column: 52, scope: !2438)
!2440 = !DILocation(line: 661, column: 37, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 660, column: 5)
!2442 = !DILocation(line: 661, column: 24, scope: !2441)
!2443 = !DILocation(line: 661, column: 54, scope: !2441)
!2444 = !DILocation(line: 661, column: 75, scope: !2441)
!2445 = !DILocation(line: 661, column: 64, scope: !2441)
!2446 = !DILocation(line: 661, column: 95, scope: !2441)
!2447 = !DILocation(line: 661, column: 107, scope: !2441)
!2448 = !DILocation(line: 661, column: 129, scope: !2441)
!2449 = !DILocation(line: 661, column: 7, scope: !2441)
!2450 = !DILocation(line: 662, column: 37, scope: !2441)
!2451 = !DILocation(line: 662, column: 24, scope: !2441)
!2452 = !DILocation(line: 662, column: 54, scope: !2441)
!2453 = !DILocation(line: 662, column: 75, scope: !2441)
!2454 = !DILocation(line: 662, column: 64, scope: !2441)
!2455 = !DILocation(line: 662, column: 95, scope: !2441)
!2456 = !DILocation(line: 662, column: 107, scope: !2441)
!2457 = !DILocation(line: 662, column: 129, scope: !2441)
!2458 = !DILocation(line: 662, column: 7, scope: !2441)
!2459 = !DILocation(line: 663, column: 5, scope: !2441)
!2460 = !DILocation(line: 667, column: 5, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 666, column: 3)
!2462 = !DILocation(line: 668, column: 16, scope: !2461)
!2463 = !DILocation(line: 668, column: 31, scope: !2461)
!2464 = !DILocation(line: 671, column: 3, scope: !2259)
!2465 = distinct !DISubprogram(name: "mb_pred_b_d8x8spatial", scope: !3, file: !3, line: 675, type: !139, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2488, !2492, !2493}
!2467 = !DILocalVariable(name: "currMB", arg: 1, scope: !2465, file: !3, line: 675, type: !141)
!2468 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !2465, file: !3, line: 675, type: !899)
!2469 = !DILocalVariable(name: "currImg", arg: 3, scope: !2465, file: !3, line: 675, type: !614)
!2470 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !2465, file: !3, line: 675, type: !680)
!2471 = !DILocalVariable(name: "l0_rFrame", scope: !2465, file: !3, line: 677, type: !91)
!2472 = !DILocalVariable(name: "l1_rFrame", scope: !2465, file: !3, line: 677, type: !91)
!2473 = !DILocalVariable(name: "pmvl0", scope: !2465, file: !3, line: 678, type: !118)
!2474 = !DILocalVariable(name: "pmvl1", scope: !2465, file: !3, line: 678, type: !118)
!2475 = !DILocalVariable(name: "i4", scope: !2465, file: !3, line: 679, type: !7)
!2476 = !DILocalVariable(name: "j4", scope: !2465, file: !3, line: 679, type: !7)
!2477 = !DILocalVariable(name: "block8x8", scope: !2465, file: !3, line: 680, type: !7)
!2478 = !DILocalVariable(name: "currSlice", scope: !2465, file: !3, line: 681, type: !503)
!2479 = !DILocalVariable(name: "p_Vid", scope: !2465, file: !3, line: 682, type: !833)
!2480 = !DILocalVariable(name: "mv_info", scope: !2465, file: !3, line: 684, type: !1857)
!2481 = !DILocalVariable(name: "list_offset", scope: !2465, file: !3, line: 685, type: !7)
!2482 = !DILocalVariable(name: "list0", scope: !2465, file: !3, line: 686, type: !1862)
!2483 = !DILocalVariable(name: "list1", scope: !2465, file: !3, line: 687, type: !1862)
!2484 = !DILocalVariable(name: "pred_dir", scope: !2465, file: !3, line: 689, type: !7)
!2485 = !DILocalVariable(name: "is_not_moving", scope: !2486, file: !3, line: 697, type: !7)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 696, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 695, column: 7)
!2488 = !DILocalVariable(name: "k_start", scope: !2489, file: !3, line: 701, type: !7)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 700, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 699, column: 5)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 699, column: 5)
!2492 = !DILocalVariable(name: "i", scope: !2489, file: !3, line: 703, type: !7)
!2493 = !DILocalVariable(name: "j", scope: !2489, file: !3, line: 704, type: !7)
!2494 = distinct !DIAssignID()
!2495 = !DILocation(line: 0, scope: !2465)
!2496 = distinct !DIAssignID()
!2497 = distinct !DIAssignID()
!2498 = distinct !DIAssignID()
!2499 = !DILocation(line: 677, column: 3, scope: !2465)
!2500 = !DILocation(line: 677, column: 15, scope: !2465)
!2501 = distinct !DIAssignID()
!2502 = !DILocation(line: 677, column: 31, scope: !2465)
!2503 = distinct !DIAssignID()
!2504 = !DILocation(line: 678, column: 3, scope: !2465)
!2505 = !DILocation(line: 678, column: 16, scope: !2465)
!2506 = distinct !DIAssignID()
!2507 = !DILocation(line: 678, column: 33, scope: !2465)
!2508 = distinct !DIAssignID()
!2509 = !DILocation(line: 681, column: 30, scope: !2465)
!2510 = !DILocation(line: 682, column: 36, scope: !2465)
!2511 = !DILocation(line: 685, column: 29, scope: !2465)
!2512 = !DILocation(line: 685, column: 21, scope: !2465)
!2513 = !DILocation(line: 686, column: 40, scope: !2465)
!2514 = !DILocation(line: 686, column: 29, scope: !2465)
!2515 = !DILocation(line: 687, column: 53, scope: !2465)
!2516 = !DILocation(line: 687, column: 29, scope: !2465)
!2517 = !DILocation(line: 691, column: 3, scope: !2465)
!2518 = !DILocation(line: 693, column: 3, scope: !2465)
!2519 = !DILocation(line: 695, column: 7, scope: !2487)
!2520 = !DILocation(line: 695, column: 17, scope: !2487)
!2521 = !DILocation(line: 695, column: 22, scope: !2487)
!2522 = !DILocation(line: 699, column: 5, scope: !2491)
!2523 = !DILocation(line: 701, column: 31, scope: !2489)
!2524 = !DILocation(line: 0, scope: !2489)
!2525 = !DILocation(line: 703, column: 18, scope: !2489)
!2526 = !DILocation(line: 703, column: 45, scope: !2489)
!2527 = !DILocation(line: 704, column: 45, scope: !2489)
!2528 = !DILocation(line: 704, column: 51, scope: !2489)
!2529 = !DILocation(line: 705, column: 21, scope: !2489)
!2530 = !DILocation(line: 705, column: 29, scope: !2489)
!2531 = !DILocation(line: 706, column: 21, scope: !2489)
!2532 = !DILocation(line: 706, column: 29, scope: !2489)
!2533 = !DILocation(line: 708, column: 55, scope: !2489)
!2534 = !DILocation(line: 708, column: 77, scope: !2489)
!2535 = !DILocation(line: 708, column: 89, scope: !2489)
!2536 = !DILocation(line: 708, column: 24, scope: !2489)
!2537 = !DILocation(line: 708, column: 94, scope: !2489)
!2538 = !DILocation(line: 0, scope: !2486)
!2539 = !DILocation(line: 710, column: 31, scope: !2489)
!2540 = !DILocation(line: 710, column: 18, scope: !2489)
!2541 = !DILocation(line: 713, column: 11, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 713, column: 11)
!2543 = !DILocation(line: 713, column: 21, scope: !2542)
!2544 = !DILocation(line: 713, column: 11, scope: !2489)
!2545 = !DILocation(line: 715, column: 13, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 714, column: 7)
!2547 = !DILocation(line: 717, column: 38, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 716, column: 9)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 715, column: 13)
!2550 = !DILocation(line: 717, column: 36, scope: !2548)
!2551 = !DILocation(line: 718, column: 11, scope: !2548)
!2552 = !DILocation(line: 722, column: 11, scope: !2548)
!2553 = !DILocation(line: 719, column: 33, scope: !2548)
!2554 = !DILocation(line: 722, column: 36, scope: !2548)
!2555 = !DILocation(line: 723, column: 9, scope: !2548)
!2556 = !DILocation(line: 726, column: 52, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 725, column: 9)
!2558 = !DILocation(line: 726, column: 38, scope: !2557)
!2559 = !DILocation(line: 726, column: 36, scope: !2557)
!2560 = !DILocation(line: 727, column: 11, scope: !2557)
!2561 = !DILocation(line: 727, column: 36, scope: !2557)
!2562 = !DILocation(line: 728, column: 20, scope: !2557)
!2563 = !DILocation(line: 728, column: 33, scope: !2557)
!2564 = !DILocation(line: 729, column: 11, scope: !2557)
!2565 = !DILocation(line: 729, column: 33, scope: !2557)
!2566 = !DILocation(line: 730, column: 20, scope: !2557)
!2567 = !DILocation(line: 730, column: 36, scope: !2557)
!2568 = !DILocation(line: 731, column: 11, scope: !2557)
!2569 = !DILocation(line: 731, column: 36, scope: !2557)
!2570 = !DILocation(line: 735, column: 16, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 735, column: 16)
!2572 = !DILocation(line: 735, column: 26, scope: !2571)
!2573 = !DILocation(line: 735, column: 16, scope: !2542)
!2574 = !DILocation(line: 737, column: 14, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 736, column: 7)
!2576 = !DILocation(line: 739, column: 38, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 738, column: 9)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 737, column: 14)
!2579 = !DILocation(line: 739, column: 11, scope: !2577)
!2580 = !DILocation(line: 739, column: 36, scope: !2577)
!2581 = !DILocation(line: 740, column: 20, scope: !2577)
!2582 = !DILocation(line: 740, column: 33, scope: !2577)
!2583 = !DILocation(line: 741, column: 11, scope: !2577)
!2584 = !DILocation(line: 741, column: 33, scope: !2577)
!2585 = !DILocation(line: 742, column: 20, scope: !2577)
!2586 = !DILocation(line: 742, column: 36, scope: !2577)
!2587 = !DILocation(line: 743, column: 11, scope: !2577)
!2588 = !DILocation(line: 743, column: 36, scope: !2577)
!2589 = !DILocation(line: 744, column: 9, scope: !2577)
!2590 = !DILocation(line: 747, column: 38, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 746, column: 9)
!2592 = !DILocation(line: 747, column: 11, scope: !2591)
!2593 = !DILocation(line: 747, column: 36, scope: !2591)
!2594 = !DILocation(line: 748, column: 20, scope: !2591)
!2595 = !DILocation(line: 748, column: 33, scope: !2591)
!2596 = !DILocation(line: 749, column: 11, scope: !2591)
!2597 = !DILocation(line: 749, column: 33, scope: !2591)
!2598 = !DILocation(line: 750, column: 20, scope: !2591)
!2599 = !DILocation(line: 750, column: 36, scope: !2591)
!2600 = !DILocation(line: 751, column: 38, scope: !2591)
!2601 = !DILocation(line: 751, column: 11, scope: !2591)
!2602 = !DILocation(line: 751, column: 36, scope: !2591)
!2603 = !DILocation(line: 757, column: 23, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 757, column: 13)
!2605 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 756, column: 7)
!2606 = !DILocation(line: 757, column: 28, scope: !2604)
!2607 = !DILocation(line: 0, scope: !2604)
!2608 = !DILocation(line: 770, column: 14, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 770, column: 14)
!2610 = !DILocation(line: 770, column: 24, scope: !2609)
!2611 = !DILocation(line: 770, column: 29, scope: !2609)
!2612 = !DILocation(line: 772, column: 38, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 771, column: 9)
!2614 = !DILocation(line: 772, column: 11, scope: !2613)
!2615 = !DILocation(line: 772, column: 36, scope: !2613)
!2616 = !DILocation(line: 773, column: 11, scope: !2613)
!2617 = !DILocation(line: 773, column: 33, scope: !2613)
!2618 = !DILocation(line: 774, column: 11, scope: !2613)
!2619 = !DILocation(line: 774, column: 39, scope: !2613)
!2620 = !DILocation(line: 775, column: 9, scope: !2613)
!2621 = !DILocation(line: 778, column: 38, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 777, column: 9)
!2623 = !DILocation(line: 778, column: 11, scope: !2622)
!2624 = !DILocation(line: 778, column: 36, scope: !2622)
!2625 = !DILocation(line: 779, column: 11, scope: !2622)
!2626 = !DILocation(line: 779, column: 33, scope: !2622)
!2627 = !DILocation(line: 780, column: 11, scope: !2622)
!2628 = !DILocation(line: 780, column: 36, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2542)
!2630 = !DILocation(line: 785, column: 41, scope: !2489)
!2631 = !DILocation(line: 785, column: 28, scope: !2489)
!2632 = !DILocalVariable(name: "motion", arg: 1, scope: !2633, file: !3, line: 341, type: !2636)
!2633 = distinct !DISubprogram(name: "update_neighbor_mvs", scope: !3, file: !3, line: 341, type: !2634, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !2636, !2637, !7}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!2639 = !{!2632, !2640, !2641}
!2640 = !DILocalVariable(name: "mv_info", arg: 2, scope: !2633, file: !3, line: 341, type: !2637)
!2641 = !DILocalVariable(name: "i4", arg: 3, scope: !2633, file: !3, line: 341, type: !7)
!2642 = !DILocation(line: 0, scope: !2633, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 785, column: 7, scope: !2489)
!2644 = !DILocation(line: 343, column: 11, scope: !2633, inlinedAt: !2643)
!2645 = !DILocation(line: 343, column: 4, scope: !2633, inlinedAt: !2643)
!2646 = !DILocation(line: 343, column: 18, scope: !2633, inlinedAt: !2643)
!2647 = !DILocation(line: 343, column: 3, scope: !2633, inlinedAt: !2643)
!2648 = !DILocation(line: 343, column: 25, scope: !2633, inlinedAt: !2643)
!2649 = !DILocation(line: 344, column: 4, scope: !2633, inlinedAt: !2643)
!2650 = !DILocation(line: 344, column: 3, scope: !2633, inlinedAt: !2643)
!2651 = !DILocation(line: 344, column: 25, scope: !2633, inlinedAt: !2643)
!2652 = !DILocation(line: 345, column: 4, scope: !2633, inlinedAt: !2643)
!2653 = !DILocation(line: 345, column: 3, scope: !2633, inlinedAt: !2643)
!2654 = !DILocation(line: 345, column: 25, scope: !2633, inlinedAt: !2643)
!2655 = !DILocation(line: 786, column: 7, scope: !2489)
!2656 = !DILocation(line: 699, column: 46, scope: !2490)
!2657 = !DILocation(line: 699, column: 33, scope: !2490)
!2658 = distinct !{!2658, !2522, !2659}
!2659 = !DILocation(line: 787, column: 5, scope: !2491)
!2660 = !DILocation(line: 792, column: 19, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 792, column: 9)
!2662 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 790, column: 3)
!2663 = !DILocation(line: 792, column: 23, scope: !2661)
!2664 = !DILocation(line: 795, column: 25, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 795, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 793, column: 5)
!2667 = !DILocation(line: 795, column: 7, scope: !2665)
!2668 = !DILocation(line: 797, column: 27, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 797, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 796, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 795, column: 7)
!2672 = !DILocation(line: 797, column: 9, scope: !2669)
!2673 = !DILocation(line: 799, column: 35, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 798, column: 9)
!2675 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 797, column: 9)
!2676 = !DILocation(line: 799, column: 22, scope: !2674)
!2677 = !DILocation(line: 801, column: 38, scope: !2674)
!2678 = !DILocation(line: 801, column: 36, scope: !2674)
!2679 = !DILocation(line: 802, column: 38, scope: !2674)
!2680 = !DILocation(line: 802, column: 11, scope: !2674)
!2681 = !DILocation(line: 802, column: 36, scope: !2674)
!2682 = !DILocation(line: 803, column: 20, scope: !2674)
!2683 = !DILocation(line: 804, column: 33, scope: !2674)
!2684 = !DILocation(line: 808, column: 45, scope: !2674)
!2685 = !DILocation(line: 808, column: 32, scope: !2674)
!2686 = !DILocation(line: 0, scope: !2633, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 808, column: 11, scope: !2674)
!2688 = !DILocation(line: 343, column: 11, scope: !2633, inlinedAt: !2687)
!2689 = !DILocation(line: 343, column: 4, scope: !2633, inlinedAt: !2687)
!2690 = !DILocation(line: 343, column: 18, scope: !2633, inlinedAt: !2687)
!2691 = !DILocation(line: 343, column: 3, scope: !2633, inlinedAt: !2687)
!2692 = !DILocation(line: 343, column: 25, scope: !2633, inlinedAt: !2687)
!2693 = !DILocation(line: 344, column: 4, scope: !2633, inlinedAt: !2687)
!2694 = !DILocation(line: 344, column: 3, scope: !2633, inlinedAt: !2687)
!2695 = !DILocation(line: 344, column: 25, scope: !2633, inlinedAt: !2687)
!2696 = !DILocation(line: 345, column: 4, scope: !2633, inlinedAt: !2687)
!2697 = !DILocation(line: 345, column: 3, scope: !2633, inlinedAt: !2687)
!2698 = !DILocation(line: 345, column: 25, scope: !2633, inlinedAt: !2687)
!2699 = !DILocation(line: 797, column: 78, scope: !2675)
!2700 = !DILocation(line: 797, column: 49, scope: !2675)
!2701 = !DILocation(line: 797, column: 39, scope: !2675)
!2702 = distinct !{!2702, !2672, !2703}
!2703 = !DILocation(line: 809, column: 9, scope: !2669)
!2704 = !DILocation(line: 795, column: 47, scope: !2671)
!2705 = !DILocation(line: 795, column: 76, scope: !2671)
!2706 = !DILocation(line: 795, column: 37, scope: !2671)
!2707 = distinct !{!2707, !2667, !2708}
!2708 = !DILocation(line: 810, column: 7, scope: !2665)
!2709 = !DILocation(line: 812, column: 24, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 812, column: 14)
!2711 = !DILocation(line: 812, column: 14, scope: !2661)
!2712 = !DILocation(line: 816, column: 25, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 816, column: 7)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 813, column: 5)
!2715 = !DILocation(line: 816, column: 7, scope: !2713)
!2716 = !DILocation(line: 818, column: 27, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 818, column: 9)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 817, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 816, column: 7)
!2720 = !DILocation(line: 818, column: 9, scope: !2717)
!2721 = !DILocation(line: 820, column: 35, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 819, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 818, column: 9)
!2724 = !DILocation(line: 820, column: 22, scope: !2722)
!2725 = !DILocation(line: 822, column: 52, scope: !2722)
!2726 = !DILocation(line: 822, column: 38, scope: !2722)
!2727 = !DILocation(line: 822, column: 36, scope: !2722)
!2728 = !DILocation(line: 823, column: 11, scope: !2722)
!2729 = !DILocation(line: 823, column: 36, scope: !2722)
!2730 = !DILocation(line: 824, column: 20, scope: !2722)
!2731 = !DILocation(line: 824, column: 33, scope: !2722)
!2732 = !DILocation(line: 825, column: 11, scope: !2722)
!2733 = !DILocation(line: 825, column: 33, scope: !2722)
!2734 = !DILocation(line: 826, column: 20, scope: !2722)
!2735 = !DILocation(line: 826, column: 36, scope: !2722)
!2736 = !DILocation(line: 827, column: 11, scope: !2722)
!2737 = !DILocation(line: 827, column: 36, scope: !2722)
!2738 = !DILocation(line: 829, column: 45, scope: !2722)
!2739 = !DILocation(line: 829, column: 32, scope: !2722)
!2740 = !DILocation(line: 0, scope: !2633, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 829, column: 11, scope: !2722)
!2742 = !DILocation(line: 343, column: 11, scope: !2633, inlinedAt: !2741)
!2743 = !DILocation(line: 343, column: 4, scope: !2633, inlinedAt: !2741)
!2744 = !DILocation(line: 343, column: 18, scope: !2633, inlinedAt: !2741)
!2745 = !DILocation(line: 343, column: 3, scope: !2633, inlinedAt: !2741)
!2746 = !DILocation(line: 343, column: 25, scope: !2633, inlinedAt: !2741)
!2747 = !DILocation(line: 344, column: 4, scope: !2633, inlinedAt: !2741)
!2748 = !DILocation(line: 344, column: 3, scope: !2633, inlinedAt: !2741)
!2749 = !DILocation(line: 344, column: 25, scope: !2633, inlinedAt: !2741)
!2750 = !DILocation(line: 345, column: 4, scope: !2633, inlinedAt: !2741)
!2751 = !DILocation(line: 345, column: 3, scope: !2633, inlinedAt: !2741)
!2752 = !DILocation(line: 345, column: 25, scope: !2633, inlinedAt: !2741)
!2753 = !DILocation(line: 818, column: 78, scope: !2723)
!2754 = !DILocation(line: 818, column: 49, scope: !2723)
!2755 = !DILocation(line: 818, column: 39, scope: !2723)
!2756 = distinct !{!2756, !2720, !2757}
!2757 = !DILocation(line: 830, column: 9, scope: !2717)
!2758 = !DILocation(line: 816, column: 47, scope: !2719)
!2759 = !DILocation(line: 816, column: 76, scope: !2719)
!2760 = !DILocation(line: 816, column: 37, scope: !2719)
!2761 = distinct !{!2761, !2715, !2762}
!2762 = !DILocation(line: 831, column: 7, scope: !2713)
!2763 = !DILocation(line: 833, column: 24, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 833, column: 14)
!2765 = !DILocation(line: 0, scope: !2764)
!2766 = !DILocation(line: 833, column: 14, scope: !2710)
!2767 = !DILocation(line: 838, column: 27, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 838, column: 9)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 837, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 836, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 836, column: 7)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 834, column: 5)
!2773 = !DILocation(line: 838, column: 9, scope: !2768)
!2774 = !DILocation(line: 843, column: 52, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 839, column: 9)
!2776 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 838, column: 9)
!2777 = !DILocation(line: 840, column: 35, scope: !2775)
!2778 = !DILocation(line: 840, column: 22, scope: !2775)
!2779 = !DILocation(line: 842, column: 36, scope: !2775)
!2780 = !DILocation(line: 843, column: 38, scope: !2775)
!2781 = !DILocation(line: 843, column: 11, scope: !2775)
!2782 = !DILocation(line: 843, column: 36, scope: !2775)
!2783 = !DILocation(line: 844, column: 20, scope: !2775)
!2784 = !DILocation(line: 844, column: 33, scope: !2775)
!2785 = !DILocation(line: 845, column: 11, scope: !2775)
!2786 = !DILocation(line: 845, column: 33, scope: !2775)
!2787 = !DILocation(line: 846, column: 20, scope: !2775)
!2788 = !DILocation(line: 846, column: 36, scope: !2775)
!2789 = !DILocation(line: 847, column: 38, scope: !2775)
!2790 = !DILocation(line: 847, column: 11, scope: !2775)
!2791 = !DILocation(line: 847, column: 36, scope: !2775)
!2792 = !DILocation(line: 849, column: 45, scope: !2775)
!2793 = !DILocation(line: 849, column: 32, scope: !2775)
!2794 = !DILocation(line: 0, scope: !2633, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 849, column: 11, scope: !2775)
!2796 = !DILocation(line: 343, column: 11, scope: !2633, inlinedAt: !2795)
!2797 = !DILocation(line: 343, column: 4, scope: !2633, inlinedAt: !2795)
!2798 = !DILocation(line: 343, column: 18, scope: !2633, inlinedAt: !2795)
!2799 = !DILocation(line: 343, column: 3, scope: !2633, inlinedAt: !2795)
!2800 = !DILocation(line: 343, column: 25, scope: !2633, inlinedAt: !2795)
!2801 = !DILocation(line: 344, column: 4, scope: !2633, inlinedAt: !2795)
!2802 = !DILocation(line: 344, column: 3, scope: !2633, inlinedAt: !2795)
!2803 = !DILocation(line: 344, column: 25, scope: !2633, inlinedAt: !2795)
!2804 = !DILocation(line: 345, column: 4, scope: !2633, inlinedAt: !2795)
!2805 = !DILocation(line: 345, column: 3, scope: !2633, inlinedAt: !2795)
!2806 = !DILocation(line: 345, column: 25, scope: !2633, inlinedAt: !2795)
!2807 = !DILocation(line: 838, column: 78, scope: !2776)
!2808 = !DILocation(line: 838, column: 49, scope: !2776)
!2809 = !DILocation(line: 838, column: 39, scope: !2776)
!2810 = distinct !{!2810, !2773, !2811}
!2811 = !DILocation(line: 850, column: 9, scope: !2768)
!2812 = !DILocation(line: 836, column: 47, scope: !2770)
!2813 = !DILocation(line: 836, column: 76, scope: !2770)
!2814 = !DILocation(line: 836, column: 37, scope: !2770)
!2815 = !DILocation(line: 836, column: 7, scope: !2771)
!2816 = distinct !{!2816, !2815, !2817}
!2817 = !DILocation(line: 851, column: 7, scope: !2771)
!2818 = !DILocation(line: 859, column: 27, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 859, column: 9)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 858, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 857, column: 7)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 857, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 854, column: 5)
!2824 = !DILocation(line: 859, column: 9, scope: !2819)
!2825 = !DILocation(line: 864, column: 52, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 860, column: 9)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 859, column: 9)
!2828 = !DILocation(line: 861, column: 35, scope: !2826)
!2829 = !DILocation(line: 861, column: 22, scope: !2826)
!2830 = !DILocation(line: 863, column: 52, scope: !2826)
!2831 = !DILocation(line: 863, column: 38, scope: !2826)
!2832 = !DILocation(line: 863, column: 36, scope: !2826)
!2833 = !DILocation(line: 864, column: 38, scope: !2826)
!2834 = !DILocation(line: 864, column: 11, scope: !2826)
!2835 = !DILocation(line: 864, column: 36, scope: !2826)
!2836 = !DILocation(line: 865, column: 20, scope: !2826)
!2837 = !DILocation(line: 865, column: 33, scope: !2826)
!2838 = !DILocation(line: 866, column: 11, scope: !2826)
!2839 = !DILocation(line: 866, column: 33, scope: !2826)
!2840 = !DILocation(line: 867, column: 20, scope: !2826)
!2841 = !DILocation(line: 867, column: 36, scope: !2826)
!2842 = !DILocation(line: 868, column: 38, scope: !2826)
!2843 = !DILocation(line: 868, column: 11, scope: !2826)
!2844 = !DILocation(line: 868, column: 36, scope: !2826)
!2845 = !DILocation(line: 870, column: 45, scope: !2826)
!2846 = !DILocation(line: 870, column: 32, scope: !2826)
!2847 = !DILocation(line: 0, scope: !2633, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 870, column: 11, scope: !2826)
!2849 = !DILocation(line: 343, column: 11, scope: !2633, inlinedAt: !2848)
!2850 = !DILocation(line: 343, column: 4, scope: !2633, inlinedAt: !2848)
!2851 = !DILocation(line: 343, column: 18, scope: !2633, inlinedAt: !2848)
!2852 = !DILocation(line: 343, column: 3, scope: !2633, inlinedAt: !2848)
!2853 = !DILocation(line: 343, column: 25, scope: !2633, inlinedAt: !2848)
!2854 = !DILocation(line: 344, column: 4, scope: !2633, inlinedAt: !2848)
!2855 = !DILocation(line: 344, column: 3, scope: !2633, inlinedAt: !2848)
!2856 = !DILocation(line: 344, column: 25, scope: !2633, inlinedAt: !2848)
!2857 = !DILocation(line: 345, column: 4, scope: !2633, inlinedAt: !2848)
!2858 = !DILocation(line: 345, column: 3, scope: !2633, inlinedAt: !2848)
!2859 = !DILocation(line: 345, column: 25, scope: !2633, inlinedAt: !2848)
!2860 = !DILocation(line: 859, column: 78, scope: !2827)
!2861 = !DILocation(line: 859, column: 49, scope: !2827)
!2862 = !DILocation(line: 859, column: 39, scope: !2827)
!2863 = distinct !{!2863, !2824, !2864}
!2864 = !DILocation(line: 871, column: 9, scope: !2819)
!2865 = !DILocation(line: 857, column: 47, scope: !2821)
!2866 = !DILocation(line: 857, column: 76, scope: !2821)
!2867 = !DILocation(line: 857, column: 37, scope: !2821)
!2868 = !DILocation(line: 857, column: 7, scope: !2822)
!2869 = distinct !{!2869, !2868, !2870}
!2870 = !DILocation(line: 872, column: 7, scope: !2822)
!2871 = !DILocation(line: 0, scope: !2661)
!2872 = !DILocation(line: 875, column: 5, scope: !2662)
!2873 = !DILocation(line: 878, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 878, column: 7)
!2875 = !DILocation(line: 878, column: 19, scope: !2874)
!2876 = !DILocation(line: 878, column: 7, scope: !2465)
!2877 = !DILocation(line: 880, column: 44, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 879, column: 3)
!2879 = !DILocation(line: 880, column: 28, scope: !2878)
!2880 = !DILocation(line: 880, column: 63, scope: !2878)
!2881 = !DILocation(line: 880, column: 52, scope: !2878)
!2882 = !DILocation(line: 880, column: 92, scope: !2878)
!2883 = !DILocation(line: 880, column: 5, scope: !2878)
!2884 = !DILocation(line: 882, column: 23, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 882, column: 9)
!2886 = !DILocation(line: 882, column: 52, scope: !2885)
!2887 = !DILocation(line: 884, column: 37, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 883, column: 6)
!2889 = !DILocation(line: 884, column: 24, scope: !2888)
!2890 = !DILocation(line: 884, column: 54, scope: !2888)
!2891 = !DILocation(line: 884, column: 75, scope: !2888)
!2892 = !DILocation(line: 884, column: 64, scope: !2888)
!2893 = !DILocation(line: 884, column: 95, scope: !2888)
!2894 = !DILocation(line: 884, column: 107, scope: !2888)
!2895 = !DILocation(line: 884, column: 129, scope: !2888)
!2896 = !DILocation(line: 884, column: 7, scope: !2888)
!2897 = !DILocation(line: 885, column: 37, scope: !2888)
!2898 = !DILocation(line: 885, column: 24, scope: !2888)
!2899 = !DILocation(line: 885, column: 54, scope: !2888)
!2900 = !DILocation(line: 885, column: 75, scope: !2888)
!2901 = !DILocation(line: 885, column: 64, scope: !2888)
!2902 = !DILocation(line: 885, column: 95, scope: !2888)
!2903 = !DILocation(line: 885, column: 107, scope: !2888)
!2904 = !DILocation(line: 885, column: 129, scope: !2888)
!2905 = !DILocation(line: 885, column: 7, scope: !2888)
!2906 = !DILocation(line: 886, column: 5, scope: !2888)
!2907 = !DILocation(line: 890, column: 5, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 889, column: 3)
!2909 = !DILocation(line: 891, column: 16, scope: !2908)
!2910 = !DILocation(line: 891, column: 31, scope: !2908)
!2911 = !DILocation(line: 895, column: 1, scope: !2465)
!2912 = !DILocation(line: 894, column: 3, scope: !2465)
!2913 = !DISubprogram(name: "prepare_direct_params", scope: !1390, file: !1390, line: 30, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !141, !680, !1298, !1298, !432, !432}
!2916 = !DISubprogram(name: "get_colocated_info_8x8", scope: !3, file: !3, line: 38, type: !2917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!7, !141, !680, !7, !7}
!2919 = distinct !DISubprogram(name: "mb_pred_b_d4x4spatial", scope: !3, file: !3, line: 898, type: !139, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2942, !2943, !2947, !2948, !2949, !2950, !2953, !2957}
!2921 = !DILocalVariable(name: "currMB", arg: 1, scope: !2919, file: !3, line: 898, type: !141)
!2922 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !2919, file: !3, line: 898, type: !899)
!2923 = !DILocalVariable(name: "currImg", arg: 3, scope: !2919, file: !3, line: 898, type: !614)
!2924 = !DILocalVariable(name: "dec_picture", arg: 4, scope: !2919, file: !3, line: 898, type: !680)
!2925 = !DILocalVariable(name: "l0_rFrame", scope: !2919, file: !3, line: 900, type: !91)
!2926 = !DILocalVariable(name: "l1_rFrame", scope: !2919, file: !3, line: 900, type: !91)
!2927 = !DILocalVariable(name: "pmvl0", scope: !2919, file: !3, line: 901, type: !118)
!2928 = !DILocalVariable(name: "pmvl1", scope: !2919, file: !3, line: 901, type: !118)
!2929 = !DILocalVariable(name: "k", scope: !2919, file: !3, line: 902, type: !7)
!2930 = !DILocalVariable(name: "block8x8", scope: !2919, file: !3, line: 903, type: !7)
!2931 = !DILocalVariable(name: "currSlice", scope: !2919, file: !3, line: 904, type: !503)
!2932 = !DILocalVariable(name: "p_Vid", scope: !2919, file: !3, line: 905, type: !833)
!2933 = !DILocalVariable(name: "mv_info", scope: !2919, file: !3, line: 907, type: !1857)
!2934 = !DILocalVariable(name: "list_offset", scope: !2919, file: !3, line: 908, type: !7)
!2935 = !DILocalVariable(name: "list0", scope: !2919, file: !3, line: 909, type: !1862)
!2936 = !DILocalVariable(name: "list1", scope: !2919, file: !3, line: 910, type: !1862)
!2937 = !DILocalVariable(name: "pred_dir", scope: !2919, file: !3, line: 912, type: !7)
!2938 = !DILocalVariable(name: "k_start", scope: !2939, file: !3, line: 920, type: !7)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 919, column: 3)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 918, column: 3)
!2941 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 918, column: 3)
!2942 = !DILocalVariable(name: "k_end", scope: !2939, file: !3, line: 921, type: !7)
!2943 = !DILocalVariable(name: "i", scope: !2944, file: !3, line: 925, type: !7)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 924, column: 5)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 923, column: 5)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 923, column: 5)
!2947 = !DILocalVariable(name: "j", scope: !2944, file: !3, line: 926, type: !7)
!2948 = !DILocalVariable(name: "i4", scope: !2944, file: !3, line: 927, type: !7)
!2949 = !DILocalVariable(name: "j4", scope: !2944, file: !3, line: 928, type: !7)
!2950 = !DILocalVariable(name: "is_not_moving", scope: !2951, file: !3, line: 934, type: !7)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 933, column: 7)
!2952 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 932, column: 11)
!2953 = !DILocalVariable(name: "i", scope: !2954, file: !3, line: 1057, type: !7)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1056, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1055, column: 5)
!2956 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1055, column: 5)
!2957 = !DILocalVariable(name: "j", scope: !2954, file: !3, line: 1058, type: !7)
!2958 = distinct !DIAssignID()
!2959 = !DILocation(line: 0, scope: !2919)
!2960 = distinct !DIAssignID()
!2961 = distinct !DIAssignID()
!2962 = distinct !DIAssignID()
!2963 = !DILocation(line: 900, column: 3, scope: !2919)
!2964 = !DILocation(line: 900, column: 15, scope: !2919)
!2965 = distinct !DIAssignID()
!2966 = !DILocation(line: 900, column: 31, scope: !2919)
!2967 = distinct !DIAssignID()
!2968 = !DILocation(line: 901, column: 3, scope: !2919)
!2969 = !DILocation(line: 901, column: 16, scope: !2919)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 901, column: 33, scope: !2919)
!2972 = distinct !DIAssignID()
!2973 = !DILocation(line: 904, column: 30, scope: !2919)
!2974 = !DILocation(line: 905, column: 36, scope: !2919)
!2975 = !DILocation(line: 908, column: 29, scope: !2919)
!2976 = !DILocation(line: 908, column: 21, scope: !2919)
!2977 = !DILocation(line: 909, column: 40, scope: !2919)
!2978 = !DILocation(line: 909, column: 29, scope: !2919)
!2979 = !DILocation(line: 910, column: 53, scope: !2919)
!2980 = !DILocation(line: 910, column: 29, scope: !2919)
!2981 = !DILocation(line: 914, column: 3, scope: !2919)
!2982 = !DILocation(line: 916, column: 3, scope: !2919)
!2983 = !DILocation(line: 918, column: 3, scope: !2941)
!2984 = !DILocation(line: 0, scope: !2939)
!2985 = !DILocation(line: 923, column: 5, scope: !2946)
!2986 = !DILocation(line: 1057, column: 17, scope: !2954)
!2987 = !DILocation(line: 1057, column: 38, scope: !2954)
!2988 = !DILocation(line: 0, scope: !2954)
!2989 = !DILocation(line: 1058, column: 38, scope: !2954)
!2990 = !DILocation(line: 1058, column: 44, scope: !2954)
!2991 = !DILocation(line: 1060, column: 7, scope: !2954)
!2992 = !DILocation(line: 1055, column: 36, scope: !2955)
!2993 = !DILocation(line: 918, column: 44, scope: !2940)
!2994 = !DILocation(line: 918, column: 31, scope: !2940)
!2995 = distinct !{!2995, !2983, !2996}
!2996 = !DILocation(line: 1062, column: 3, scope: !2941)
!2997 = !DILocation(line: 925, column: 18, scope: !2944)
!2998 = !DILocation(line: 925, column: 39, scope: !2944)
!2999 = !DILocation(line: 0, scope: !2944)
!3000 = !DILocation(line: 926, column: 39, scope: !2944)
!3001 = !DILocation(line: 926, column: 45, scope: !2944)
!3002 = !DILocation(line: 927, column: 25, scope: !2944)
!3003 = !DILocation(line: 927, column: 33, scope: !2944)
!3004 = !DILocation(line: 928, column: 25, scope: !2944)
!3005 = !DILocation(line: 928, column: 33, scope: !2944)
!3006 = !DILocation(line: 930, column: 31, scope: !2944)
!3007 = !DILocation(line: 930, column: 18, scope: !2944)
!3008 = !DILocation(line: 932, column: 11, scope: !2952)
!3009 = !DILocation(line: 932, column: 21, scope: !2952)
!3010 = !DILocation(line: 932, column: 26, scope: !2952)
!3011 = !DILocation(line: 934, column: 61, scope: !2951)
!3012 = !DILocation(line: 934, column: 83, scope: !2951)
!3013 = !DILocation(line: 934, column: 95, scope: !2951)
!3014 = !DILocation(line: 934, column: 30, scope: !2951)
!3015 = !DILocation(line: 934, column: 100, scope: !2951)
!3016 = !DILocation(line: 0, scope: !2951)
!3017 = !DILocation(line: 936, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 936, column: 13)
!3019 = !DILocation(line: 936, column: 23, scope: !3018)
!3020 = !DILocation(line: 936, column: 13, scope: !2951)
!3021 = !DILocation(line: 938, column: 15, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 937, column: 9)
!3023 = !DILocation(line: 940, column: 40, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 939, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 938, column: 15)
!3026 = !DILocation(line: 940, column: 38, scope: !3024)
!3027 = !DILocation(line: 941, column: 13, scope: !3024)
!3028 = !DILocation(line: 945, column: 13, scope: !3024)
!3029 = !DILocation(line: 942, column: 35, scope: !3024)
!3030 = !DILocation(line: 945, column: 38, scope: !3024)
!3031 = !DILocation(line: 946, column: 11, scope: !3024)
!3032 = !DILocation(line: 949, column: 54, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 948, column: 11)
!3034 = !DILocation(line: 949, column: 40, scope: !3033)
!3035 = !DILocation(line: 949, column: 38, scope: !3033)
!3036 = !DILocation(line: 950, column: 13, scope: !3033)
!3037 = !DILocation(line: 950, column: 38, scope: !3033)
!3038 = !DILocation(line: 951, column: 22, scope: !3033)
!3039 = !DILocation(line: 951, column: 35, scope: !3033)
!3040 = !DILocation(line: 952, column: 13, scope: !3033)
!3041 = !DILocation(line: 952, column: 35, scope: !3033)
!3042 = !DILocation(line: 953, column: 22, scope: !3033)
!3043 = !DILocation(line: 953, column: 38, scope: !3033)
!3044 = !DILocation(line: 954, column: 13, scope: !3033)
!3045 = !DILocation(line: 954, column: 38, scope: !3033)
!3046 = !DILocation(line: 958, column: 18, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 958, column: 18)
!3048 = !DILocation(line: 958, column: 28, scope: !3047)
!3049 = !DILocation(line: 958, column: 18, scope: !3018)
!3050 = !DILocation(line: 960, column: 16, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 959, column: 9)
!3052 = !DILocation(line: 962, column: 40, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 961, column: 11)
!3054 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 960, column: 16)
!3055 = !DILocation(line: 962, column: 13, scope: !3053)
!3056 = !DILocation(line: 962, column: 38, scope: !3053)
!3057 = !DILocation(line: 963, column: 22, scope: !3053)
!3058 = !DILocation(line: 963, column: 35, scope: !3053)
!3059 = !DILocation(line: 964, column: 13, scope: !3053)
!3060 = !DILocation(line: 964, column: 35, scope: !3053)
!3061 = !DILocation(line: 965, column: 22, scope: !3053)
!3062 = !DILocation(line: 965, column: 38, scope: !3053)
!3063 = !DILocation(line: 966, column: 13, scope: !3053)
!3064 = !DILocation(line: 966, column: 38, scope: !3053)
!3065 = !DILocation(line: 967, column: 11, scope: !3053)
!3066 = !DILocation(line: 970, column: 40, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 969, column: 11)
!3068 = !DILocation(line: 970, column: 13, scope: !3067)
!3069 = !DILocation(line: 970, column: 38, scope: !3067)
!3070 = !DILocation(line: 971, column: 22, scope: !3067)
!3071 = !DILocation(line: 971, column: 35, scope: !3067)
!3072 = !DILocation(line: 972, column: 13, scope: !3067)
!3073 = !DILocation(line: 972, column: 35, scope: !3067)
!3074 = !DILocation(line: 973, column: 22, scope: !3067)
!3075 = !DILocation(line: 973, column: 38, scope: !3067)
!3076 = !DILocation(line: 974, column: 40, scope: !3067)
!3077 = !DILocation(line: 974, column: 13, scope: !3067)
!3078 = !DILocation(line: 974, column: 38, scope: !3067)
!3079 = !DILocation(line: 980, column: 25, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 980, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 979, column: 9)
!3082 = !DILocation(line: 980, column: 30, scope: !3080)
!3083 = !DILocation(line: 0, scope: !3080)
!3084 = !DILocation(line: 993, column: 16, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 993, column: 16)
!3086 = !DILocation(line: 993, column: 26, scope: !3085)
!3087 = !DILocation(line: 993, column: 31, scope: !3085)
!3088 = !DILocation(line: 995, column: 40, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 994, column: 11)
!3090 = !DILocation(line: 995, column: 13, scope: !3089)
!3091 = !DILocation(line: 995, column: 38, scope: !3089)
!3092 = !DILocation(line: 996, column: 13, scope: !3089)
!3093 = !DILocation(line: 996, column: 35, scope: !3089)
!3094 = !DILocation(line: 997, column: 13, scope: !3089)
!3095 = !DILocation(line: 997, column: 41, scope: !3089)
!3096 = !DILocation(line: 998, column: 11, scope: !3089)
!3097 = !DILocation(line: 1001, column: 40, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1000, column: 11)
!3099 = !DILocation(line: 1001, column: 13, scope: !3098)
!3100 = !DILocation(line: 1001, column: 38, scope: !3098)
!3101 = !DILocation(line: 1002, column: 13, scope: !3098)
!3102 = !DILocation(line: 1002, column: 35, scope: !3098)
!3103 = !DILocation(line: 1003, column: 13, scope: !3098)
!3104 = !DILocation(line: 1003, column: 38, scope: !3098)
!3105 = !DILocation(line: 1012, column: 23, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1012, column: 13)
!3107 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1009, column: 7)
!3108 = !DILocation(line: 1012, column: 27, scope: !3106)
!3109 = !DILocation(line: 1015, column: 38, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1013, column: 9)
!3111 = !DILocation(line: 1015, column: 36, scope: !3110)
!3112 = !DILocation(line: 1016, column: 38, scope: !3110)
!3113 = !DILocation(line: 1016, column: 11, scope: !3110)
!3114 = !DILocation(line: 1016, column: 36, scope: !3110)
!3115 = !DILocation(line: 1017, column: 20, scope: !3110)
!3116 = !DILocation(line: 1018, column: 33, scope: !3110)
!3117 = !DILocation(line: 1021, column: 9, scope: !3110)
!3118 = !DILocation(line: 1022, column: 28, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1022, column: 18)
!3120 = !DILocation(line: 1022, column: 18, scope: !3106)
!3121 = !DILocation(line: 1025, column: 38, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1023, column: 9)
!3123 = !DILocation(line: 1025, column: 36, scope: !3122)
!3124 = !DILocation(line: 1026, column: 11, scope: !3122)
!3125 = !DILocation(line: 1026, column: 36, scope: !3122)
!3126 = !DILocation(line: 1027, column: 20, scope: !3122)
!3127 = !DILocation(line: 1027, column: 33, scope: !3122)
!3128 = !DILocation(line: 1028, column: 11, scope: !3122)
!3129 = !DILocation(line: 1028, column: 33, scope: !3122)
!3130 = !DILocation(line: 1029, column: 20, scope: !3122)
!3131 = !DILocation(line: 1029, column: 36, scope: !3122)
!3132 = !DILocation(line: 1030, column: 11, scope: !3122)
!3133 = !DILocation(line: 1030, column: 36, scope: !3122)
!3134 = !DILocation(line: 1031, column: 9, scope: !3122)
!3135 = !DILocation(line: 1032, column: 28, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1032, column: 18)
!3137 = !DILocation(line: 1032, column: 18, scope: !3119)
!3138 = !DILocation(line: 1035, column: 36, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1033, column: 9)
!3140 = !DILocation(line: 1036, column: 38, scope: !3139)
!3141 = !DILocation(line: 1036, column: 11, scope: !3139)
!3142 = !DILocation(line: 1036, column: 36, scope: !3139)
!3143 = !DILocation(line: 1037, column: 20, scope: !3139)
!3144 = !DILocation(line: 1037, column: 33, scope: !3139)
!3145 = !DILocation(line: 1038, column: 11, scope: !3139)
!3146 = !DILocation(line: 1038, column: 33, scope: !3139)
!3147 = !DILocation(line: 1039, column: 20, scope: !3139)
!3148 = !DILocation(line: 1039, column: 36, scope: !3139)
!3149 = !DILocation(line: 1040, column: 38, scope: !3139)
!3150 = !DILocation(line: 1040, column: 11, scope: !3139)
!3151 = !DILocation(line: 1040, column: 36, scope: !3139)
!3152 = !DILocation(line: 1041, column: 9, scope: !3139)
!3153 = !DILocation(line: 1045, column: 38, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1043, column: 9)
!3155 = !DILocation(line: 1045, column: 36, scope: !3154)
!3156 = !DILocation(line: 1046, column: 38, scope: !3154)
!3157 = !DILocation(line: 1046, column: 11, scope: !3154)
!3158 = !DILocation(line: 1046, column: 36, scope: !3154)
!3159 = !DILocation(line: 1047, column: 20, scope: !3154)
!3160 = !DILocation(line: 1047, column: 33, scope: !3154)
!3161 = !DILocation(line: 1048, column: 11, scope: !3154)
!3162 = !DILocation(line: 1048, column: 33, scope: !3154)
!3163 = !DILocation(line: 1049, column: 20, scope: !3154)
!3164 = !DILocation(line: 1049, column: 36, scope: !3154)
!3165 = !DILocation(line: 1050, column: 38, scope: !3154)
!3166 = !DILocation(line: 1050, column: 11, scope: !3154)
!3167 = !DILocation(line: 1050, column: 36, scope: !3154)
!3168 = !DILocation(line: 0, scope: !2952)
!3169 = !DILocation(line: 923, column: 36, scope: !2945)
!3170 = !DILocation(line: 923, column: 25, scope: !2945)
!3171 = distinct !{!3171, !2985, !3172}
!3172 = !DILocation(line: 1053, column: 5, scope: !2946)
!3173 = !DILocation(line: 1064, column: 15, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 1064, column: 7)
!3175 = !DILocation(line: 1064, column: 19, scope: !3174)
!3176 = !DILocation(line: 1064, column: 7, scope: !2919)
!3177 = !DILocation(line: 1066, column: 44, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1065, column: 3)
!3179 = !DILocation(line: 1066, column: 28, scope: !3178)
!3180 = !DILocation(line: 1066, column: 63, scope: !3178)
!3181 = !DILocation(line: 1066, column: 52, scope: !3178)
!3182 = !DILocation(line: 1066, column: 92, scope: !3178)
!3183 = !DILocation(line: 1066, column: 5, scope: !3178)
!3184 = !DILocation(line: 1068, column: 23, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1068, column: 9)
!3186 = !DILocation(line: 1068, column: 52, scope: !3185)
!3187 = !DILocation(line: 1070, column: 37, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1069, column: 5)
!3189 = !DILocation(line: 1070, column: 24, scope: !3188)
!3190 = !DILocation(line: 1070, column: 54, scope: !3188)
!3191 = !DILocation(line: 1070, column: 75, scope: !3188)
!3192 = !DILocation(line: 1070, column: 64, scope: !3188)
!3193 = !DILocation(line: 1070, column: 95, scope: !3188)
!3194 = !DILocation(line: 1070, column: 107, scope: !3188)
!3195 = !DILocation(line: 1070, column: 129, scope: !3188)
!3196 = !DILocation(line: 1070, column: 7, scope: !3188)
!3197 = !DILocation(line: 1071, column: 37, scope: !3188)
!3198 = !DILocation(line: 1071, column: 24, scope: !3188)
!3199 = !DILocation(line: 1071, column: 54, scope: !3188)
!3200 = !DILocation(line: 1071, column: 75, scope: !3188)
!3201 = !DILocation(line: 1071, column: 64, scope: !3188)
!3202 = !DILocation(line: 1071, column: 95, scope: !3188)
!3203 = !DILocation(line: 1071, column: 107, scope: !3188)
!3204 = !DILocation(line: 1071, column: 129, scope: !3188)
!3205 = !DILocation(line: 1071, column: 7, scope: !3188)
!3206 = !DILocation(line: 1072, column: 5, scope: !3188)
!3207 = !DILocation(line: 1076, column: 5, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1075, column: 3)
!3209 = !DILocation(line: 1077, column: 16, scope: !3208)
!3210 = !DILocation(line: 1077, column: 31, scope: !3208)
!3211 = !DILocation(line: 1081, column: 1, scope: !2919)
!3212 = !DILocation(line: 1080, column: 3, scope: !2919)
!3213 = !DISubprogram(name: "get_colocated_info_4x4", scope: !3, file: !3, line: 39, type: !2917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3214 = distinct !DISubprogram(name: "mb_pred_b_inter8x8", scope: !3, file: !3, line: 1083, type: !1394, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3236, !3237, !3240, !3241, !3242, !3246, !3247, !3249, !3250, !3256, !3257, !3258, !3259, !3260, !3265, !3266, !3267, !3268, !3269, !3273}
!3216 = !DILocalVariable(name: "currMB", arg: 1, scope: !3214, file: !3, line: 1083, type: !141)
!3217 = !DILocalVariable(name: "curr_plane", arg: 2, scope: !3214, file: !3, line: 1083, type: !899)
!3218 = !DILocalVariable(name: "dec_picture", arg: 3, scope: !3214, file: !3, line: 1083, type: !680)
!3219 = !DILocalVariable(name: "l0_rFrame", scope: !3214, file: !3, line: 1085, type: !91)
!3220 = !DILocalVariable(name: "l1_rFrame", scope: !3214, file: !3, line: 1085, type: !91)
!3221 = !DILocalVariable(name: "pmvl0", scope: !3214, file: !3, line: 1086, type: !118)
!3222 = !DILocalVariable(name: "pmvl1", scope: !3214, file: !3, line: 1086, type: !118)
!3223 = !DILocalVariable(name: "block_size_x", scope: !3214, file: !3, line: 1087, type: !7)
!3224 = !DILocalVariable(name: "block_size_y", scope: !3214, file: !3, line: 1087, type: !7)
!3225 = !DILocalVariable(name: "k", scope: !3214, file: !3, line: 1088, type: !7)
!3226 = !DILocalVariable(name: "block8x8", scope: !3214, file: !3, line: 1089, type: !7)
!3227 = !DILocalVariable(name: "currSlice", scope: !3214, file: !3, line: 1090, type: !503)
!3228 = !DILocalVariable(name: "p_Vid", scope: !3214, file: !3, line: 1091, type: !833)
!3229 = !DILocalVariable(name: "list_offset", scope: !3214, file: !3, line: 1093, type: !7)
!3230 = !DILocalVariable(name: "list0", scope: !3214, file: !3, line: 1094, type: !1862)
!3231 = !DILocalVariable(name: "list1", scope: !3214, file: !3, line: 1095, type: !1862)
!3232 = !DILocalVariable(name: "mv_mode", scope: !3233, file: !3, line: 1105, type: !7)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 1104, column: 3)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1103, column: 3)
!3235 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1103, column: 3)
!3236 = !DILocalVariable(name: "pred_dir", scope: !3233, file: !3, line: 1106, type: !7)
!3237 = !DILocalVariable(name: "k_start", scope: !3238, file: !3, line: 1110, type: !7)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1109, column: 5)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1108, column: 10)
!3240 = !DILocalVariable(name: "k_inc", scope: !3238, file: !3, line: 1111, type: !7)
!3241 = !DILocalVariable(name: "k_end", scope: !3238, file: !3, line: 1112, type: !7)
!3242 = !DILocalVariable(name: "i", scope: !3243, file: !3, line: 1119, type: !7)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1118, column: 7)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1117, column: 7)
!3245 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 1117, column: 7)
!3246 = !DILocalVariable(name: "j", scope: !3243, file: !3, line: 1120, type: !7)
!3247 = !DILocalVariable(name: "k_start", scope: !3248, file: !3, line: 1126, type: !7)
!3248 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 1125, column: 5)
!3249 = !DILocalVariable(name: "k_end", scope: !3248, file: !3, line: 1127, type: !7)
!3250 = !DILocalVariable(name: "i", scope: !3251, file: !3, line: 1147, type: !7)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1146, column: 9)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1145, column: 9)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1145, column: 9)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1144, column: 7)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1143, column: 11)
!3256 = !DILocalVariable(name: "j", scope: !3251, file: !3, line: 1148, type: !7)
!3257 = !DILocalVariable(name: "i4", scope: !3251, file: !3, line: 1149, type: !7)
!3258 = !DILocalVariable(name: "j4", scope: !3251, file: !3, line: 1150, type: !7)
!3259 = !DILocalVariable(name: "mv_info", scope: !3251, file: !3, line: 1151, type: !1857)
!3260 = !DILocalVariable(name: "i", scope: !3261, file: !3, line: 1182, type: !7)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1180, column: 9)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1179, column: 9)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 1179, column: 9)
!3264 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1178, column: 7)
!3265 = !DILocalVariable(name: "j", scope: !3261, file: !3, line: 1183, type: !7)
!3266 = !DILocalVariable(name: "i4", scope: !3261, file: !3, line: 1184, type: !7)
!3267 = !DILocalVariable(name: "j4", scope: !3261, file: !3, line: 1185, type: !7)
!3268 = !DILocalVariable(name: "mv_info", scope: !3261, file: !3, line: 1186, type: !1857)
!3269 = !DILocalVariable(name: "i", scope: !3270, file: !3, line: 1198, type: !7)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 1197, column: 7)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1196, column: 7)
!3272 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1196, column: 7)
!3273 = !DILocalVariable(name: "j", scope: !3270, file: !3, line: 1199, type: !7)
!3274 = distinct !DIAssignID()
!3275 = !DILocation(line: 0, scope: !3214)
!3276 = distinct !DIAssignID()
!3277 = distinct !DIAssignID()
!3278 = distinct !DIAssignID()
!3279 = !DILocation(line: 1085, column: 3, scope: !3214)
!3280 = !DILocation(line: 1085, column: 15, scope: !3214)
!3281 = distinct !DIAssignID()
!3282 = !DILocation(line: 1085, column: 31, scope: !3214)
!3283 = distinct !DIAssignID()
!3284 = !DILocation(line: 1086, column: 3, scope: !3214)
!3285 = !DILocation(line: 1086, column: 16, scope: !3214)
!3286 = distinct !DIAssignID()
!3287 = !DILocation(line: 1086, column: 33, scope: !3214)
!3288 = distinct !DIAssignID()
!3289 = !DILocation(line: 1090, column: 30, scope: !3214)
!3290 = !DILocation(line: 1091, column: 36, scope: !3214)
!3291 = !DILocation(line: 1093, column: 29, scope: !3214)
!3292 = !DILocation(line: 1093, column: 21, scope: !3214)
!3293 = !DILocation(line: 1094, column: 40, scope: !3214)
!3294 = !DILocation(line: 1094, column: 29, scope: !3214)
!3295 = !DILocation(line: 1095, column: 53, scope: !3214)
!3296 = !DILocation(line: 1095, column: 29, scope: !3214)
!3297 = !DILocation(line: 1097, column: 3, scope: !3214)
!3298 = !DILocation(line: 1100, column: 18, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1100, column: 7)
!3300 = !DILocation(line: 1100, column: 7, scope: !3299)
!3301 = !DILocation(line: 1100, column: 46, scope: !3299)
!3302 = !DILocation(line: 1100, column: 60, scope: !3299)
!3303 = !DILocation(line: 1100, column: 52, scope: !3299)
!3304 = !DILocation(line: 1100, column: 70, scope: !3299)
!3305 = !DILocation(line: 1100, column: 73, scope: !3299)
!3306 = !DILocation(line: 1100, column: 91, scope: !3299)
!3307 = !DILocation(line: 1100, column: 94, scope: !3299)
!3308 = !DILocation(line: 1100, column: 112, scope: !3299)
!3309 = !DILocation(line: 1100, column: 115, scope: !3299)
!3310 = !DILocation(line: 1100, column: 7, scope: !3214)
!3311 = !DILocation(line: 1101, column: 5, scope: !3299)
!3312 = !DILocation(line: 1103, column: 3, scope: !3235)
!3313 = !DILocation(line: 1105, column: 20, scope: !3233)
!3314 = !DILocation(line: 0, scope: !3233)
!3315 = !DILocation(line: 1106, column: 20, scope: !3233)
!3316 = !DILocation(line: 1108, column: 18, scope: !3239)
!3317 = !DILocation(line: 0, scope: !3239)
!3318 = !DILocation(line: 1108, column: 10, scope: !3233)
!3319 = !DILocation(line: 0, scope: !3238)
!3320 = !DILocation(line: 1111, column: 28, scope: !3238)
!3321 = !DILocation(line: 1111, column: 19, scope: !3238)
!3322 = !DILocation(line: 1112, column: 28, scope: !3238)
!3323 = !DILocation(line: 1112, column: 19, scope: !3238)
!3324 = !DILocation(line: 1110, column: 31, scope: !3238)
!3325 = !DILocation(line: 1112, column: 49, scope: !3238)
!3326 = !DILocation(line: 1112, column: 65, scope: !3238)
!3327 = !DILocation(line: 1112, scope: !3238)
!3328 = !DILocation(line: 1112, column: 56, scope: !3238)
!3329 = !DILocation(line: 1112, column: 108, scope: !3238)
!3330 = !DILocation(line: 1114, column: 42, scope: !3238)
!3331 = !DILocation(line: 1114, column: 22, scope: !3238)
!3332 = !DILocation(line: 1115, column: 32, scope: !3238)
!3333 = !DILocation(line: 1115, column: 42, scope: !3238)
!3334 = !DILocation(line: 1115, column: 22, scope: !3238)
!3335 = !DILocation(line: 1117, column: 27, scope: !3244)
!3336 = !DILocation(line: 1117, column: 7, scope: !3245)
!3337 = !DILocation(line: 1119, column: 19, scope: !3243)
!3338 = !DILocation(line: 1119, column: 40, scope: !3243)
!3339 = !DILocation(line: 0, scope: !3243)
!3340 = !DILocation(line: 1120, column: 40, scope: !3243)
!3341 = !DILocation(line: 1120, column: 46, scope: !3243)
!3342 = !DILocation(line: 1121, column: 9, scope: !3243)
!3343 = !DILocation(line: 1117, column: 38, scope: !3244)
!3344 = distinct !{!3344, !3336, !3345}
!3345 = !DILocation(line: 1122, column: 7, scope: !3245)
!3346 = !DILocation(line: 1126, column: 31, scope: !3248)
!3347 = !DILocation(line: 0, scope: !3248)
!3348 = !DILocation(line: 1129, column: 18, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 1129, column: 11)
!3350 = !DILocation(line: 1129, column: 30, scope: !3349)
!3351 = !DILocation(line: 1129, column: 11, scope: !3349)
!3352 = !DILocation(line: 1129, column: 11, scope: !3248)
!3353 = !DILocation(line: 1143, column: 22, scope: !3255)
!3354 = !DILocation(line: 1143, column: 11, scope: !3255)
!3355 = !DILocation(line: 1143, column: 11, scope: !3248)
!3356 = !DILocation(line: 1182, column: 21, scope: !3261)
!3357 = !DILocation(line: 1182, column: 42, scope: !3261)
!3358 = !DILocation(line: 0, scope: !3261)
!3359 = !DILocation(line: 1183, column: 42, scope: !3261)
!3360 = !DILocation(line: 1183, column: 48, scope: !3261)
!3361 = !DILocation(line: 1184, column: 30, scope: !3261)
!3362 = !DILocation(line: 1184, column: 38, scope: !3261)
!3363 = !DILocation(line: 1185, column: 30, scope: !3261)
!3364 = !DILocation(line: 1185, column: 38, scope: !3261)
!3365 = !DILocation(line: 1186, column: 52, scope: !3261)
!3366 = !DILocation(line: 1186, column: 39, scope: !3261)
!3367 = !DILocation(line: 1191, column: 60, scope: !3261)
!3368 = !DILocation(line: 1191, column: 51, scope: !3261)
!3369 = !DILocation(line: 1191, column: 38, scope: !3261)
!3370 = !DILocation(line: 1191, column: 36, scope: !3261)
!3371 = !DILocation(line: 1192, column: 51, scope: !3261)
!3372 = !DILocation(line: 1192, column: 38, scope: !3261)
!3373 = !DILocation(line: 1192, column: 11, scope: !3261)
!3374 = !DILocation(line: 1192, column: 36, scope: !3261)
!3375 = !DILocation(line: 1179, column: 59, scope: !3262)
!3376 = !DILocation(line: 1196, column: 27, scope: !3271)
!3377 = !DILocation(line: 0, scope: !3251)
!3378 = !DILocation(line: 1145, column: 59, scope: !3252)
!3379 = !DILocation(line: 1147, column: 22, scope: !3251)
!3380 = !DILocation(line: 1147, column: 43, scope: !3251)
!3381 = !DILocation(line: 1148, column: 43, scope: !3251)
!3382 = !DILocation(line: 1148, column: 49, scope: !3251)
!3383 = !DILocation(line: 1149, column: 37, scope: !3251)
!3384 = !DILocation(line: 1150, column: 37, scope: !3251)
!3385 = !DILocation(line: 1151, column: 39, scope: !3251)
!3386 = !DILocation(line: 1157, column: 24, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 1157, column: 15)
!3388 = !DILocation(line: 1157, column: 15, scope: !3387)
!3389 = !DILocation(line: 1157, column: 40, scope: !3387)
!3390 = !DILocation(line: 1157, column: 15, scope: !3251)
!3391 = !DILocation(line: 1161, column: 20, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1161, column: 20)
!3393 = !DILocation(line: 1161, column: 45, scope: !3392)
!3394 = !DILocation(line: 1106, column: 9, scope: !3233)
!3395 = !DILocation(line: 1196, column: 7, scope: !3272)
!3396 = !DILocation(line: 1198, column: 19, scope: !3270)
!3397 = !DILocation(line: 1198, column: 40, scope: !3270)
!3398 = !DILocation(line: 0, scope: !3270)
!3399 = !DILocation(line: 1199, column: 40, scope: !3270)
!3400 = !DILocation(line: 1199, column: 46, scope: !3270)
!3401 = !DILocation(line: 1200, column: 9, scope: !3270)
!3402 = !DILocation(line: 1196, column: 38, scope: !3271)
!3403 = distinct !{!3403, !3395, !3404}
!3404 = !DILocation(line: 1201, column: 7, scope: !3272)
!3405 = !DILocation(line: 1103, column: 40, scope: !3234)
!3406 = !DILocation(line: 1103, column: 28, scope: !3234)
!3407 = distinct !{!3407, !3312, !3408}
!3408 = !DILocation(line: 1203, column: 3, scope: !3235)
!3409 = !DILocation(line: 1205, column: 3, scope: !3214)
!3410 = !DILocation(line: 1206, column: 15, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1206, column: 7)
!3412 = !DILocation(line: 1206, column: 19, scope: !3411)
!3413 = !DILocation(line: 1206, column: 7, scope: !3214)
!3414 = !DILocation(line: 1207, column: 16, scope: !3411)
!3415 = !DILocation(line: 1207, column: 31, scope: !3411)
!3416 = !DILocation(line: 1207, column: 5, scope: !3411)
!3417 = !DILocation(line: 1209, column: 1, scope: !3214)
!3418 = !DILocation(line: 1208, column: 3, scope: !3214)
!3419 = distinct !DISubprogram(name: "mb_pred_ipcm", scope: !3, file: !3, line: 1222, type: !3420, scopeLine: 1223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!7, !141}
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3423 = !DILocalVariable(name: "currMB", arg: 1, scope: !3419, file: !3, line: 1222, type: !141)
!3424 = !DILocalVariable(name: "i", scope: !3419, file: !3, line: 1224, type: !7)
!3425 = !DILocalVariable(name: "j", scope: !3419, file: !3, line: 1224, type: !7)
!3426 = !DILocalVariable(name: "k", scope: !3419, file: !3, line: 1224, type: !7)
!3427 = !DILocalVariable(name: "currSlice", scope: !3419, file: !3, line: 1225, type: !503)
!3428 = !DILocalVariable(name: "p_Vid", scope: !3419, file: !3, line: 1226, type: !833)
!3429 = !DILocalVariable(name: "dec_picture", scope: !3419, file: !3, line: 1227, type: !680)
!3430 = !DILocation(line: 0, scope: !3419)
!3431 = !DILocation(line: 1225, column: 30, scope: !3419)
!3432 = !DILocation(line: 1226, column: 36, scope: !3419)
!3433 = !DILocation(line: 1227, column: 45, scope: !3419)
!3434 = !DILocation(line: 1232, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1232, column: 3)
!3436 = !DILocation(line: 1236, column: 85, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1235, column: 5)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1234, column: 5)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 1234, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1233, column: 3)
!3441 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 1232, column: 3)
!3442 = !DILocation(line: 1236, column: 74, scope: !3437)
!3443 = !DILocation(line: 1236, column: 65, scope: !3437)
!3444 = !DILocation(line: 1236, column: 20, scope: !3437)
!3445 = !DILocation(line: 1236, column: 33, scope: !3437)
!3446 = !DILocation(line: 1236, column: 39, scope: !3437)
!3447 = !DILocation(line: 1236, column: 7, scope: !3437)
!3448 = !DILocation(line: 1236, column: 52, scope: !3437)
!3449 = !DILocation(line: 1236, column: 63, scope: !3437)
!3450 = !DILocation(line: 1232, column: 33, scope: !3441)
!3451 = !DILocation(line: 1232, column: 16, scope: !3441)
!3452 = distinct !{!3452, !3434, !3453}
!3453 = !DILocation(line: 1238, column: 3, scope: !3435)
!3454 = !DILocation(line: 1240, column: 21, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1240, column: 7)
!3456 = !DILocation(line: 1240, column: 39, scope: !3455)
!3457 = !DILocation(line: 1240, column: 50, scope: !3455)
!3458 = !DILocation(line: 1240, column: 61, scope: !3455)
!3459 = !DILocation(line: 1240, column: 88, scope: !3455)
!3460 = !DILocation(line: 1240, column: 7, scope: !3419)
!3461 = !DILocation(line: 1244, column: 29, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 1244, column: 7)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1244, column: 7)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 1243, column: 5)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1242, column: 5)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1242, column: 5)
!3467 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 1241, column: 3)
!3468 = !DILocation(line: 1244, column: 20, scope: !3462)
!3469 = !DILocation(line: 1246, column: 30, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1246, column: 9)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1246, column: 9)
!3472 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1245, column: 7)
!3473 = !DILocation(line: 1246, column: 21, scope: !3470)
!3474 = !DILocation(line: 1246, column: 9, scope: !3471)
!3475 = !DILocation(line: 1248, column: 95, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 1247, column: 9)
!3477 = !DILocation(line: 1248, column: 84, scope: !3476)
!3478 = !DILocation(line: 1248, column: 75, scope: !3476)
!3479 = !DILocation(line: 1248, column: 24, scope: !3476)
!3480 = !DILocation(line: 1248, column: 11, scope: !3476)
!3481 = !DILocation(line: 1248, column: 41, scope: !3476)
!3482 = !DILocation(line: 1248, column: 48, scope: !3476)
!3483 = !DILocation(line: 1248, column: 60, scope: !3476)
!3484 = !DILocation(line: 1248, column: 68, scope: !3476)
!3485 = !DILocation(line: 1248, column: 73, scope: !3476)
!3486 = !DILocation(line: 1246, column: 44, scope: !3470)
!3487 = distinct !{!3487, !3474, !3488}
!3488 = !DILocation(line: 1249, column: 9, scope: !3471)
!3489 = !DILocation(line: 1244, column: 43, scope: !3462)
!3490 = !DILocation(line: 1244, column: 7, scope: !3463)
!3491 = distinct !{!3491, !3490, !3492, !3493}
!3492 = !DILocation(line: 1250, column: 7, scope: !3463)
!3493 = !{!"llvm.loop.unswitch.partial.disable"}
!3494 = !DILocation(line: 1255, column: 3, scope: !3419)
!3495 = !DILocation(line: 1259, column: 17, scope: !3419)
!3496 = !DILocation(line: 1259, column: 34, scope: !3419)
!3497 = !DILocation(line: 1259, column: 10, scope: !3419)
!3498 = !DILocation(line: 1259, column: 3, scope: !3419)
!3499 = !DILocation(line: 1262, column: 11, scope: !3419)
!3500 = !DILocation(line: 1262, column: 21, scope: !3419)
!3501 = !DILocation(line: 1265, column: 11, scope: !3419)
!3502 = !DILocation(line: 1265, column: 22, scope: !3419)
!3503 = !DILocation(line: 1268, column: 14, scope: !3419)
!3504 = !DILocation(line: 1268, column: 26, scope: !3419)
!3505 = !DILocation(line: 1269, column: 14, scope: !3419)
!3506 = !DILocation(line: 1269, column: 29, scope: !3419)
!3507 = !DILocation(line: 1270, column: 3, scope: !3419)
!3508 = !DISubprogram(name: "update_qp", scope: !3509, file: !3509, line: 148, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3509 = !DIFile(filename: "ldecod_src/inc/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "17b4b8d6c8aaa60d7374ecd392230b5d")
