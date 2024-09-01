; ModuleID = 'ldecod_src/quant.c'
source_filename = "ldecod_src/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quant_intra_default = dso_local global [16 x i32] [i32 6, i32 13, i32 20, i32 28, i32 13, i32 20, i32 28, i32 32, i32 20, i32 28, i32 32, i32 37, i32 28, i32 32, i32 37, i32 42], align 16, !dbg !0
@quant_inter_default = dso_local global [16 x i32] [i32 10, i32 14, i32 20, i32 24, i32 14, i32 20, i32 24, i32 27, i32 20, i32 24, i32 27, i32 30, i32 24, i32 27, i32 30, i32 34], align 16, !dbg !48
@quant8_intra_default = dso_local global [64 x i32] [i32 6, i32 10, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 10, i32 11, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 42], align 16, !dbg !53
@quant8_inter_default = dso_local global [64 x i32] [i32 9, i32 13, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 13, i32 13, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 35], align 16, !dbg !58
@quant_org = dso_local global [16 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16, !dbg !60
@quant8_org = dso_local global [64 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16, !dbg !62
@.str = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_per_matrix\00", align 1, !dbg !64
@.str.1 = private unnamed_addr constant [38 x i8] c"init_qp_process: p_Vid->qp_rem_matrix\00", align 1, !dbg !70
@dequant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16, !dbg !72
@dequant_coef8 = internal constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16, !dbg !80
@switch.table.assign_quant_params.2 = private unnamed_addr constant [5 x ptr] [ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default, ptr @quant8_inter_default, ptr @quant8_intra_default], align 8

; Function Attrs: nounwind uwtable
define dso_local void @init_qp_process(ptr nocapture noundef %p_Vid) local_unnamed_addr #0 !dbg !93 {
entry:
    #dbg_value(ptr %p_Vid, !1270, !DIExpression(), !1273)
  %bitdepth_luma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849052, !dbg !1274
  %0 = load i32, ptr %bitdepth_luma_qp_scale, align 4, !dbg !1274
  %bitdepth_chroma_qp_scale = getelementptr inbounds i8, ptr %p_Vid, i64 849056, !dbg !1275
  %1 = load i32, ptr %bitdepth_chroma_qp_scale, align 8, !dbg !1275
    #dbg_value(i32 %0, !1276, !DIExpression(), !1283)
    #dbg_value(i32 %1, !1282, !DIExpression(), !1283)
  %cond.i = tail call noundef i32 @llvm.smax.i32(i32 %0, i32 %1), !dbg !1285
    #dbg_value(i32 %cond.i, !1271, !DIExpression(), !1273)
  %qp_per_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856032, !dbg !1286
  %2 = load ptr, ptr %qp_per_matrix, align 8, !dbg !1286
  %cmp = icmp eq ptr %2, null, !dbg !1288
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1289

if.then:                                          ; preds = %entry
  %add = add nsw i32 %cond.i, 52, !dbg !1290
  %conv = sext i32 %add to i64, !dbg !1292
  %mul = shl nsw i64 %conv, 2, !dbg !1293
  %call1 = tail call noalias ptr @malloc(i64 noundef %mul) #9, !dbg !1294
  store ptr %call1, ptr %qp_per_matrix, align 8, !dbg !1295
  %cmp3 = icmp eq ptr %call1, null, !dbg !1296
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1297

if.then5:                                         ; preds = %if.then
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10, !dbg !1298
  br label %if.end6, !dbg !1298

if.end6:                                          ; preds = %if.then, %if.then5, %entry
  %qp_rem_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856040, !dbg !1299
  %3 = load ptr, ptr %qp_rem_matrix, align 8, !dbg !1299
  %cmp7 = icmp eq ptr %3, null, !dbg !1301
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !1302

if.then9:                                         ; preds = %if.end6
  %add10 = add nsw i32 %cond.i, 52, !dbg !1303
  %conv11 = sext i32 %add10 to i64, !dbg !1305
  %mul12 = shl nsw i64 %conv11, 2, !dbg !1306
  %call13 = tail call noalias ptr @malloc(i64 noundef %mul12) #9, !dbg !1307
  store ptr %call13, ptr %qp_rem_matrix, align 8, !dbg !1308
  %cmp15 = icmp eq ptr %call13, null, !dbg !1309
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !1310

if.then17:                                        ; preds = %if.then9
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10, !dbg !1311
  br label %if.end19, !dbg !1311

if.end19:                                         ; preds = %if.then9, %if.then17, %if.end6
    #dbg_value(i32 0, !1272, !DIExpression(), !1273)
    #dbg_value(i32 0, !1272, !DIExpression(), !1273)
  %cmp2242 = icmp sgt i32 %cond.i, -52, !dbg !1312
  br i1 %cmp2242, label %for.body.preheader, label %for.end, !dbg !1315

for.body.preheader:                               ; preds = %if.end19
  %4 = add i32 %cond.i, 51, !dbg !1315
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 0), !dbg !1315
  %5 = add nuw i32 %smax, 1, !dbg !1315
  %wide.trip.count = zext i32 %5 to i64, !dbg !1312
  br label %for.body, !dbg !1315

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
    #dbg_value(i64 %indvars.iv, !1272, !DIExpression(), !1273)
  %6 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1316
  %div = udiv i32 %6, 6, !dbg !1316
  %7 = load ptr, ptr %qp_per_matrix, align 8, !dbg !1318
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %indvars.iv, !dbg !1319
  store i32 %div, ptr %arrayidx, align 4, !dbg !1320
  %rem = urem i32 %6, 6, !dbg !1321
  %8 = load ptr, ptr %qp_rem_matrix, align 8, !dbg !1322
  %arrayidx27 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !1323
  store i32 %rem, ptr %arrayidx27, align 4, !dbg !1324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1325
    #dbg_value(i64 %indvars.iv.next, !1272, !DIExpression(), !1273)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1312
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1315, !llvm.loop !1326

for.end:                                          ; preds = %for.body, %if.end19
  ret void, !dbg !1328
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1329 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

declare !dbg !1336 void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @free_qp_matrices(ptr nocapture noundef %p_Vid) local_unnamed_addr #3 !dbg !1341 {
entry:
    #dbg_value(ptr %p_Vid, !1343, !DIExpression(), !1344)
  %qp_per_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856032, !dbg !1345
  %0 = load ptr, ptr %qp_per_matrix, align 8, !dbg !1345
  %cmp.not = icmp eq ptr %0, null, !dbg !1347
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1348

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #10, !dbg !1349
  store ptr null, ptr %qp_per_matrix, align 8, !dbg !1351
  br label %if.end, !dbg !1352

if.end:                                           ; preds = %if.then, %entry
  %qp_rem_matrix = getelementptr inbounds i8, ptr %p_Vid, i64 856040, !dbg !1353
  %1 = load ptr, ptr %qp_rem_matrix, align 8, !dbg !1353
  %cmp3.not = icmp eq ptr %1, null, !dbg !1355
  br i1 %cmp3.not, label %if.end7, label %if.then4, !dbg !1356

if.then4:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #10, !dbg !1357
  store ptr null, ptr %qp_rem_matrix, align 8, !dbg !1359
  br label %if.end7, !dbg !1360

if.end7:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !1361
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1362 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @assign_quant_params(ptr noundef %currSlice) local_unnamed_addr #5 !dbg !1365 {
entry:
    #dbg_value(ptr %currSlice, !1369, !DIExpression(), !1374)
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24, !dbg !1375
  %0 = load ptr, ptr %active_sps, align 8, !dbg !1375
    #dbg_value(ptr %0, !1370, !DIExpression(), !1374)
  %active_pps = getelementptr inbounds i8, ptr %currSlice, i64 16, !dbg !1376
  %1 = load ptr, ptr %active_pps, align 8, !dbg !1376
    #dbg_value(ptr %1, !1371, !DIExpression(), !1374)
  %pic_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %1, i64 20, !dbg !1377
  %2 = load i32, ptr %pic_scaling_matrix_present_flag, align 4, !dbg !1377
  %tobool.not = icmp eq i32 %2, 0, !dbg !1379
  %seq_scaling_matrix_present_flag = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i32, ptr %seq_scaling_matrix_present_flag, align 4, !dbg !1380
  br i1 %tobool.not, label %land.lhs.true, label %if.else, !dbg !1381

land.lhs.true:                                    ; preds = %entry
  %tobool1.not = icmp eq i32 %3, 0, !dbg !1382
  br i1 %tobool1.not, label %for.cond.preheader, label %if.else.thread, !dbg !1383

if.else.thread:                                   ; preds = %land.lhs.true
  %chroma_format_idc583 = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1384
  %4 = load i32, ptr %chroma_format_idc583, align 4, !dbg !1384
  %cmp3.not584 = icmp eq i32 %4, 3, !dbg !1386
  %cond4585 = select i1 %cmp3.not584, i32 12, i32 8, !dbg !1387
    #dbg_value(i32 %cond4585, !1373, !DIExpression(), !1374)
  %seq_scaling_matrix_present_flag5586 = getelementptr inbounds i8, ptr %0, i64 40, !dbg !1388
  br label %if.then12.peel, !dbg !1390

for.cond.preheader:                               ; preds = %land.lhs.true
  %qmatrix = getelementptr inbounds i8, ptr %currSlice, i64 12912
    #dbg_value(i32 0, !1372, !DIExpression(), !1374)
    #dbg_value(i64 0, !1372, !DIExpression(), !1374)
  store ptr @quant_org, ptr %qmatrix, align 8, !dbg !1391
    #dbg_value(i64 1, !1372, !DIExpression(), !1374)
  %arrayidx.1 = getelementptr inbounds i8, ptr %currSlice, i64 12920, !dbg !1395
  store ptr @quant_org, ptr %arrayidx.1, align 8, !dbg !1391
    #dbg_value(i64 2, !1372, !DIExpression(), !1374)
  %arrayidx.2 = getelementptr inbounds i8, ptr %currSlice, i64 12928, !dbg !1395
  store ptr @quant_org, ptr %arrayidx.2, align 8, !dbg !1391
    #dbg_value(i64 3, !1372, !DIExpression(), !1374)
  %arrayidx.3 = getelementptr inbounds i8, ptr %currSlice, i64 12936, !dbg !1395
  store ptr @quant_org, ptr %arrayidx.3, align 8, !dbg !1391
    #dbg_value(i64 4, !1372, !DIExpression(), !1374)
  %arrayidx.4 = getelementptr inbounds i8, ptr %currSlice, i64 12944, !dbg !1395
  store ptr @quant_org, ptr %arrayidx.4, align 8, !dbg !1391
    #dbg_value(i64 5, !1372, !DIExpression(), !1374)
  %arrayidx.5 = getelementptr inbounds i8, ptr %currSlice, i64 12952, !dbg !1395
  store ptr @quant_org, ptr %arrayidx.5, align 8, !dbg !1391
    #dbg_value(i64 6, !1372, !DIExpression(), !1374)
  %arrayidx.6 = getelementptr inbounds i8, ptr %currSlice, i64 12960, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.6, align 8, !dbg !1391
    #dbg_value(i64 7, !1372, !DIExpression(), !1374)
  %arrayidx.7 = getelementptr inbounds i8, ptr %currSlice, i64 12968, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.7, align 8, !dbg !1391
    #dbg_value(i64 8, !1372, !DIExpression(), !1374)
  %arrayidx.8 = getelementptr inbounds i8, ptr %currSlice, i64 12976, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.8, align 8, !dbg !1391
    #dbg_value(i64 9, !1372, !DIExpression(), !1374)
  %arrayidx.9 = getelementptr inbounds i8, ptr %currSlice, i64 12984, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.9, align 8, !dbg !1391
    #dbg_value(i64 10, !1372, !DIExpression(), !1374)
  %arrayidx.10 = getelementptr inbounds i8, ptr %currSlice, i64 12992, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.10, align 8, !dbg !1391
    #dbg_value(i64 11, !1372, !DIExpression(), !1374)
  %arrayidx.11 = getelementptr inbounds i8, ptr %currSlice, i64 13000, !dbg !1395
  store ptr @quant8_org, ptr %arrayidx.11, align 8, !dbg !1391
    #dbg_value(i64 12, !1372, !DIExpression(), !1374)
  br label %if.end239, !dbg !1396

if.else:                                          ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1384
  %5 = load i32, ptr %chroma_format_idc, align 4, !dbg !1384
  %cmp3.not = icmp eq i32 %5, 3, !dbg !1386
  %cond4 = select i1 %cmp3.not, i32 12, i32 8, !dbg !1387
    #dbg_value(i32 %cond4, !1373, !DIExpression(), !1374)
  %seq_scaling_matrix_present_flag5 = getelementptr inbounds i8, ptr %0, i64 40, !dbg !1388
  %tobool6.not = icmp eq i32 %3, 0, !dbg !1397
  br i1 %tobool6.not, label %if.then116.peel, label %if.then12.peel, !dbg !1390

if.then12.peel:                                   ; preds = %if.else, %if.else.thread
  %seq_scaling_matrix_present_flag5590 = phi ptr [ %seq_scaling_matrix_present_flag5586, %if.else.thread ], [ %seq_scaling_matrix_present_flag5, %if.else ]
  %cond4588 = phi i32 [ %cond4585, %if.else.thread ], [ %cond4, %if.else ]
    #dbg_value(i32 0, !1372, !DIExpression(), !1374)
  %seq_scaling_list_present_flag55 = getelementptr inbounds i8, ptr %0, i64 44
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds i8, ptr %0, i64 2036
  %qmatrix91 = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %ScalingList8x8 = getelementptr inbounds i8, ptr %0, i64 476
  %wide.trip.count = zext nneg i32 %cond4588 to i64, !dbg !1398
    #dbg_value(i64 0, !1372, !DIExpression(), !1374)
  %6 = load i32, ptr %seq_scaling_list_present_flag55, align 4, !dbg !1402
  %tobool15.not.peel = icmp eq i32 %6, 0, !dbg !1402
  br i1 %tobool15.not.peel, label %if.then12.peel387, label %if.else36.peel, !dbg !1407

if.else36.peel:                                   ; preds = %if.then12.peel
  %ScalingList4x4 = getelementptr inbounds i8, ptr %0, i64 92
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds i8, ptr %0, i64 2012
  %7 = load i32, ptr %UseDefaultScalingMatrix4x4Flag, align 4, !dbg !1408
  %tobool39.not.peel = icmp eq i32 %7, 0, !dbg !1408
  %ScalingList4x4.quant_intra_default = select i1 %tobool39.not.peel, ptr %ScalingList4x4, ptr @quant_intra_default
  br label %if.then12.peel387

if.then12.peel387:                                ; preds = %if.then12.peel, %if.else36.peel
  %quant_intra_default.sink = phi ptr [ %ScalingList4x4.quant_intra_default, %if.else36.peel ], [ @quant_intra_default, %if.then12.peel ]
  store ptr %quant_intra_default.sink, ptr %qmatrix91, align 8, !dbg !1411
    #dbg_value(i64 1, !1372, !DIExpression(), !1374)
  %arrayidx14.peel388 = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1402
  %8 = load i32, ptr %arrayidx14.peel388, align 4, !dbg !1402
  %tobool15.not.peel389 = icmp eq i32 %8, 0, !dbg !1402
  br i1 %tobool15.not.peel389, label %if.then12.peel434, label %if.else36.peel390, !dbg !1407

if.else36.peel390:                                ; preds = %if.then12.peel387
  %arrayidx38.peel391 = getelementptr inbounds i8, ptr %0, i64 2016, !dbg !1408
  %9 = load i32, ptr %arrayidx38.peel391, align 4, !dbg !1408
  %tobool39.not.peel392 = icmp eq i32 %9, 0, !dbg !1408
  %arrayidx48.peel398 = getelementptr inbounds i8, ptr %0, i64 156
  %spec.select = select i1 %tobool39.not.peel392, ptr %arrayidx48.peel398, ptr @quant_intra_default, !dbg !1412
  br label %if.then12.peel434, !dbg !1412

if.then12.peel434:                                ; preds = %if.else36.peel390, %if.then12.peel387
  %.sink = phi ptr [ %quant_intra_default.sink, %if.then12.peel387 ], [ %spec.select, %if.else36.peel390 ]
  %arrayidx34.peel407 = getelementptr inbounds i8, ptr %currSlice, i64 12920, !dbg !1411
  store ptr %.sink, ptr %arrayidx34.peel407, align 8, !dbg !1411
    #dbg_value(i64 2, !1372, !DIExpression(), !1374)
  %arrayidx14.peel435 = getelementptr inbounds i8, ptr %0, i64 52, !dbg !1402
  %10 = load i32, ptr %arrayidx14.peel435, align 4, !dbg !1402
  %tobool15.not.peel436 = icmp eq i32 %10, 0, !dbg !1402
  br i1 %tobool15.not.peel436, label %for.body10.peel.next411, label %if.else36.peel437, !dbg !1407

if.else36.peel437:                                ; preds = %if.then12.peel434
  %arrayidx38.peel438 = getelementptr inbounds i8, ptr %0, i64 2020, !dbg !1408
  %11 = load i32, ptr %arrayidx38.peel438, align 4, !dbg !1408
  %tobool39.not.peel439 = icmp eq i32 %11, 0, !dbg !1408
  %arrayidx48.peel445 = getelementptr inbounds i8, ptr %0, i64 220
  %spec.select602 = select i1 %tobool39.not.peel439, ptr %arrayidx48.peel445, ptr @quant_intra_default, !dbg !1412
  br label %for.body10.peel.next411, !dbg !1412

for.body10.peel.next411:                          ; preds = %if.else36.peel437, %if.then12.peel434
  %quant_intra_default.sink597 = phi ptr [ %.sink, %if.then12.peel434 ], [ %spec.select602, %if.else36.peel437 ]
  %arrayidx45.peel443 = getelementptr inbounds i8, ptr %currSlice, i64 12928, !dbg !1411
  store ptr %quant_intra_default.sink597, ptr %arrayidx45.peel443, align 8, !dbg !1411
    #dbg_value(i64 3, !1372, !DIExpression(), !1374)
    #dbg_value(i64 3, !1372, !DIExpression(), !1374)
  %arrayidx14.peel = getelementptr inbounds i8, ptr %0, i64 56, !dbg !1413
  %12 = load i32, ptr %arrayidx14.peel, align 4, !dbg !1413
  %tobool15.not.peel611 = icmp eq i32 %12, 0, !dbg !1413
  br i1 %tobool15.not.peel611, label %for.inc105.peel, label %if.else36.peel613, !dbg !1407

if.else36.peel613:                                ; preds = %for.body10.peel.next411
  %arrayidx38.peel = getelementptr inbounds i8, ptr %0, i64 2024, !dbg !1408
  %13 = load i32, ptr %arrayidx38.peel, align 4, !dbg !1408
  %tobool39.not.peel614 = icmp eq i32 %13, 0, !dbg !1408
  %arrayidx48.peel = getelementptr inbounds i8, ptr %0, i64 284
  %spec.select603.peel = select i1 %tobool39.not.peel614, ptr %arrayidx48.peel, ptr @quant_inter_default, !dbg !1412
  br label %for.inc105.peel, !dbg !1412

for.inc105.peel:                                  ; preds = %for.body10.peel.next411, %if.else36.peel613
  %quant_inter_default.sink.peel = phi ptr [ %spec.select603.peel, %if.else36.peel613 ], [ @quant_inter_default, %for.body10.peel.next411 ]
  %arrayidx45.peel = getelementptr inbounds i8, ptr %currSlice, i64 12936, !dbg !1413
  store ptr %quant_inter_default.sink.peel, ptr %arrayidx45.peel, align 8, !dbg !1413
    #dbg_value(i64 4, !1372, !DIExpression(), !1374)
    #dbg_value(i64 4, !1372, !DIExpression(), !1374)
  %arrayidx14.peel618 = getelementptr inbounds i8, ptr %0, i64 60, !dbg !1413
  %14 = load i32, ptr %arrayidx14.peel618, align 4, !dbg !1413
  %tobool15.not.peel619 = icmp eq i32 %14, 0, !dbg !1413
  br i1 %tobool15.not.peel619, label %if.else28.peel643, label %if.else36.peel636, !dbg !1407

if.else36.peel636:                                ; preds = %for.inc105.peel
  %arrayidx38.peel637 = getelementptr inbounds i8, ptr %0, i64 2028, !dbg !1408
  %15 = load i32, ptr %arrayidx38.peel637, align 4, !dbg !1408
  %tobool39.not.peel638 = icmp eq i32 %15, 0, !dbg !1408
  %arrayidx48.peel639 = getelementptr inbounds i8, ptr %0, i64 348
  %spec.select603.peel640 = select i1 %tobool39.not.peel638, ptr %arrayidx48.peel639, ptr @quant_inter_default, !dbg !1412
  br label %for.inc105.peel645, !dbg !1412

if.else28.peel643:                                ; preds = %for.inc105.peel
  %arrayidx31.peel644 = getelementptr inbounds i8, ptr %currSlice, i64 12936, !dbg !1414
  %16 = load ptr, ptr %arrayidx31.peel644, align 8, !dbg !1414
  br label %for.inc105.peel645

for.inc105.peel645:                               ; preds = %if.else28.peel643, %if.else36.peel636
  %quant_inter_default.sink.peel646 = phi ptr [ %16, %if.else28.peel643 ], [ %spec.select603.peel640, %if.else36.peel636 ]
  %arrayidx45.peel647 = getelementptr inbounds i8, ptr %currSlice, i64 12944, !dbg !1413
  store ptr %quant_inter_default.sink.peel646, ptr %arrayidx45.peel647, align 8, !dbg !1413
    #dbg_value(i64 5, !1372, !DIExpression(), !1374)
    #dbg_value(i64 5, !1372, !DIExpression(), !1374)
  %arrayidx14.peel653 = getelementptr inbounds i8, ptr %0, i64 64, !dbg !1413
  %17 = load i32, ptr %arrayidx14.peel653, align 4, !dbg !1413
  %tobool15.not.peel654 = icmp eq i32 %17, 0, !dbg !1413
  br i1 %tobool15.not.peel654, label %if.else28.peel678, label %if.else36.peel671, !dbg !1407

if.else36.peel671:                                ; preds = %for.inc105.peel645
  %arrayidx38.peel672 = getelementptr inbounds i8, ptr %0, i64 2032, !dbg !1408
  %18 = load i32, ptr %arrayidx38.peel672, align 4, !dbg !1408
  %tobool39.not.peel673 = icmp eq i32 %18, 0, !dbg !1408
  %arrayidx48.peel674 = getelementptr inbounds i8, ptr %0, i64 412
  %spec.select603.peel675 = select i1 %tobool39.not.peel673, ptr %arrayidx48.peel674, ptr @quant_inter_default, !dbg !1412
  br label %for.inc105.peel680, !dbg !1412

if.else28.peel678:                                ; preds = %for.inc105.peel645
  %arrayidx31.peel679 = getelementptr inbounds i8, ptr %currSlice, i64 12944, !dbg !1414
  %19 = load ptr, ptr %arrayidx31.peel679, align 8, !dbg !1414
  br label %for.inc105.peel680

for.inc105.peel680:                               ; preds = %if.else28.peel678, %if.else36.peel671
  %quant_inter_default.sink.peel681 = phi ptr [ %19, %if.else28.peel678 ], [ %spec.select603.peel675, %if.else36.peel671 ]
  %arrayidx45.peel682 = getelementptr inbounds i8, ptr %currSlice, i64 12952, !dbg !1413
  store ptr %quant_inter_default.sink.peel681, ptr %arrayidx45.peel682, align 8, !dbg !1413
    #dbg_value(i64 6, !1372, !DIExpression(), !1374)
  br label %for.body10, !dbg !1418

for.body10:                                       ; preds = %for.inc105.peel680, %for.inc105
  %indvars.iv = phi i64 [ 6, %for.inc105.peel680 ], [ %indvars.iv.next, %for.inc105 ]
    #dbg_value(i64 %indvars.iv, !1372, !DIExpression(), !1374)
  %arrayidx14 = getelementptr inbounds [12 x i32], ptr %seq_scaling_list_present_flag55, i64 0, i64 %indvars.iv, !dbg !1413
  %20 = load i32, ptr %arrayidx14, align 4, !dbg !1413
  %tobool15.not = icmp eq i32 %20, 0, !dbg !1413
  br i1 %tobool15.not, label %if.then59, label %if.else81, !dbg !1419

if.then59:                                        ; preds = %for.body10
  %21 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1421
  switch i32 %21, label %if.else71 [
    i32 6, label %for.inc105
    i32 7, label %if.then67
  ], !dbg !1421

if.then67:                                        ; preds = %if.then59
  br label %for.inc105, !dbg !1424

if.else71:                                        ; preds = %if.then59
  %22 = add nsw i64 %indvars.iv, -2, !dbg !1427
  %arrayidx75 = getelementptr inbounds [12 x ptr], ptr %qmatrix91, i64 0, i64 %22, !dbg !1428
  %23 = load ptr, ptr %arrayidx75, align 8, !dbg !1428
  br label %for.inc105

if.else81:                                        ; preds = %for.body10
  %24 = add nsw i64 %indvars.iv, -6, !dbg !1429
  %arrayidx84 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag, i64 0, i64 %24, !dbg !1432
  %25 = load i32, ptr %arrayidx84, align 4, !dbg !1432
  %tobool85.not = icmp eq i32 %25, 0, !dbg !1432
  br i1 %tobool85.not, label %if.else94, label %if.then86, !dbg !1433

if.then86:                                        ; preds = %if.else81
  %26 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1434
  %switch.tableidx = add nsw i32 %26, -6, !dbg !1434
  %27 = icmp ult i32 %switch.tableidx, 5, !dbg !1434
  br i1 %27, label %switch.lookup, label %for.inc105, !dbg !1434

if.else94:                                        ; preds = %if.else81
  %arrayidx97 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8, i64 0, i64 %24, !dbg !1435
  br label %for.inc105

switch.lookup:                                    ; preds = %if.then86
  %28 = zext nneg i32 %switch.tableidx to i64, !dbg !1434
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %28, !dbg !1434
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !1434
  br label %for.inc105, !dbg !1434

for.inc105:                                       ; preds = %switch.lookup, %if.then86, %if.then59, %if.else94, %if.else71, %if.then67
  %quant_inter_default.sink = phi ptr [ %arrayidx97, %if.else94 ], [ %23, %if.else71 ], [ @quant8_inter_default, %if.then67 ], [ @quant8_intra_default, %if.then59 ], [ @quant8_inter_default, %if.then86 ], [ %switch.load, %switch.lookup ]
  %arrayidx45 = getelementptr inbounds [12 x ptr], ptr %qmatrix91, i64 0, i64 %indvars.iv, !dbg !1413
  store ptr %quant_inter_default.sink, ptr %arrayidx45, align 8, !dbg !1413
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1436
    #dbg_value(i64 %indvars.iv.next, !1372, !DIExpression(), !1374)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1398
  br i1 %exitcond.not, label %if.end108, label %for.body10, !dbg !1418, !llvm.loop !1437

if.end108:                                        ; preds = %for.inc105
  %.pre582 = load i32, ptr %pic_scaling_matrix_present_flag, align 4, !dbg !1440
  %tobool110.not = icmp eq i32 %.pre582, 0, !dbg !1442
  br i1 %tobool110.not, label %if.end239, label %if.then116.peel, !dbg !1443

if.then116.peel:                                  ; preds = %if.else, %if.end108
  %cond4589596 = phi i32 [ %cond4588, %if.end108 ], [ %cond4, %if.else ]
  %seq_scaling_matrix_present_flag5591595 = phi ptr [ %seq_scaling_matrix_present_flag5590, %if.end108 ], [ %seq_scaling_matrix_present_flag5, %if.else ]
    #dbg_value(i32 0, !1372, !DIExpression(), !1374)
  %pic_scaling_list_present_flag172 = getelementptr inbounds i8, ptr %1, i64 24
  %UseDefaultScalingMatrix8x8Flag207 = getelementptr inbounds i8, ptr %1, i64 2016
  %qmatrix220 = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %ScalingList8x8224 = getelementptr inbounds i8, ptr %1, i64 456
  %wide.trip.count465 = zext nneg i32 %cond4589596 to i64, !dbg !1444
    #dbg_value(i64 0, !1372, !DIExpression(), !1374)
  %29 = load i32, ptr %pic_scaling_list_present_flag172, align 4, !dbg !1448
  %tobool119.not.peel = icmp eq i32 %29, 0, !dbg !1448
  br i1 %tobool119.not.peel, label %if.then122.peel, label %if.else150.peel, !dbg !1453

if.else150.peel:                                  ; preds = %if.then116.peel
  %ScalingList4x4162 = getelementptr inbounds i8, ptr %1, i64 72
  %UseDefaultScalingMatrix4x4Flag151 = getelementptr inbounds i8, ptr %1, i64 1992
  %30 = load i32, ptr %UseDefaultScalingMatrix4x4Flag151, align 4, !dbg !1454
  %tobool154.not.peel = icmp eq i32 %30, 0, !dbg !1454
  %ScalingList4x4162.quant_intra_default = select i1 %tobool154.not.peel, ptr %ScalingList4x4162, ptr @quant_intra_default
  br label %if.then116.peel494.sink.split

if.then122.peel:                                  ; preds = %if.then116.peel
  %31 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4, !dbg !1457
  %tobool124.not.peel = icmp eq i32 %31, 0, !dbg !1462
  br i1 %tobool124.not.peel, label %if.then116.peel494.sink.split, label %if.then116.peel494, !dbg !1463

if.then116.peel494.sink.split:                    ; preds = %if.then122.peel, %if.else150.peel
  %quant_intra_default.sink598 = phi ptr [ %ScalingList4x4162.quant_intra_default, %if.else150.peel ], [ @quant_intra_default, %if.then122.peel ]
  store ptr %quant_intra_default.sink598, ptr %qmatrix220, align 8, !dbg !1464
  br label %if.then116.peel494, !dbg !1448

if.then116.peel494:                               ; preds = %if.then116.peel494.sink.split, %if.then122.peel
    #dbg_value(i64 1, !1372, !DIExpression(), !1374)
  %arrayidx118.peel495 = getelementptr inbounds i8, ptr %1, i64 28, !dbg !1448
  %32 = load i32, ptr %arrayidx118.peel495, align 4, !dbg !1448
  %tobool119.not.peel496 = icmp eq i32 %32, 0, !dbg !1448
  br i1 %tobool119.not.peel496, label %if.else140.peel516, label %if.else150.peel497, !dbg !1453

if.else150.peel497:                               ; preds = %if.then116.peel494
  %arrayidx153.peel498 = getelementptr inbounds i8, ptr %1, i64 1996, !dbg !1454
  %33 = load i32, ptr %arrayidx153.peel498, align 4, !dbg !1454
  %tobool154.not.peel499 = icmp eq i32 %33, 0, !dbg !1454
  %arrayidx164.peel505 = getelementptr inbounds i8, ptr %1, i64 136
  %spec.select604 = select i1 %tobool154.not.peel499, ptr %arrayidx164.peel505, ptr @quant_intra_default, !dbg !1465
  br label %if.then116.peel549, !dbg !1465

if.else140.peel516:                               ; preds = %if.then116.peel494
  %34 = load ptr, ptr %qmatrix220, align 8, !dbg !1466
  br label %if.then116.peel549

if.then116.peel549:                               ; preds = %if.else150.peel497, %if.else140.peel516
  %.sink599 = phi ptr [ %34, %if.else140.peel516 ], [ %spec.select604, %if.else150.peel497 ]
  %arrayidx147.peel518 = getelementptr inbounds i8, ptr %currSlice, i64 12920, !dbg !1464
  store ptr %.sink599, ptr %arrayidx147.peel518, align 8, !dbg !1464
    #dbg_value(i64 2, !1372, !DIExpression(), !1374)
  %arrayidx118.peel550 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !1448
  %35 = load i32, ptr %arrayidx118.peel550, align 4, !dbg !1448
  %tobool119.not.peel551 = icmp eq i32 %35, 0, !dbg !1448
  br i1 %tobool119.not.peel551, label %if.else140.peel571, label %if.else150.peel552, !dbg !1453

if.else150.peel552:                               ; preds = %if.then116.peel549
  %arrayidx153.peel553 = getelementptr inbounds i8, ptr %1, i64 2000, !dbg !1454
  %36 = load i32, ptr %arrayidx153.peel553, align 4, !dbg !1454
  %tobool154.not.peel554 = icmp eq i32 %36, 0, !dbg !1454
  %arrayidx164.peel560 = getelementptr inbounds i8, ptr %1, i64 200
  %spec.select605 = select i1 %tobool154.not.peel554, ptr %arrayidx164.peel560, ptr @quant_intra_default, !dbg !1465
  br label %for.body114.peel.next522, !dbg !1465

if.else140.peel571:                               ; preds = %if.then116.peel549
  %arrayidx144.peel572 = getelementptr inbounds i8, ptr %currSlice, i64 12920, !dbg !1466
  %37 = load ptr, ptr %arrayidx144.peel572, align 8, !dbg !1466
  br label %for.body114.peel.next522

for.body114.peel.next522:                         ; preds = %if.else150.peel552, %if.else140.peel571
  %quant_intra_default.sink600 = phi ptr [ %37, %if.else140.peel571 ], [ %spec.select605, %if.else150.peel552 ]
  %arrayidx160.peel558 = getelementptr inbounds i8, ptr %currSlice, i64 12928, !dbg !1464
  store ptr %quant_intra_default.sink600, ptr %arrayidx160.peel558, align 8, !dbg !1464
    #dbg_value(i64 3, !1372, !DIExpression(), !1374)
    #dbg_value(i64 3, !1372, !DIExpression(), !1374)
  %arrayidx118.peel = getelementptr inbounds i8, ptr %1, i64 36, !dbg !1468
  %38 = load i32, ptr %arrayidx118.peel, align 4, !dbg !1468
  %tobool119.not.peel686 = icmp eq i32 %38, 0, !dbg !1468
  br i1 %tobool119.not.peel686, label %if.then132.peel, label %if.else150.peel688, !dbg !1453

if.else150.peel688:                               ; preds = %for.body114.peel.next522
  %arrayidx153.peel = getelementptr inbounds i8, ptr %1, i64 2004, !dbg !1454
  %39 = load i32, ptr %arrayidx153.peel, align 4, !dbg !1454
  %tobool154.not.peel689 = icmp eq i32 %39, 0, !dbg !1454
  %arrayidx164.peel = getelementptr inbounds i8, ptr %1, i64 264
  %spec.select606.peel = select i1 %tobool154.not.peel689, ptr %arrayidx164.peel, ptr @quant_inter_default, !dbg !1465
  br label %for.inc235.sink.split.peel, !dbg !1465

if.then132.peel:                                  ; preds = %for.body114.peel.next522
  %40 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4, !dbg !1469
  %tobool134.not.peel = icmp eq i32 %40, 0, !dbg !1472
  br i1 %tobool134.not.peel, label %for.inc235.sink.split.peel, label %if.then116.peel715, !dbg !1473

for.inc235.sink.split.peel:                       ; preds = %if.then132.peel, %if.else150.peel688
  %quant_inter_default.sink601.peel = phi ptr [ @quant_inter_default, %if.then132.peel ], [ %spec.select606.peel, %if.else150.peel688 ]
  %arrayidx160.peel = getelementptr inbounds i8, ptr %currSlice, i64 12936, !dbg !1468
  store ptr %quant_inter_default.sink601.peel, ptr %arrayidx160.peel, align 8, !dbg !1468
  br label %if.then116.peel715, !dbg !1474

if.then116.peel715:                               ; preds = %if.then132.peel, %for.inc235.sink.split.peel
    #dbg_value(i64 4, !1372, !DIExpression(), !1374)
    #dbg_value(i64 4, !1372, !DIExpression(), !1374)
  %arrayidx118.peel695 = getelementptr inbounds i8, ptr %1, i64 40, !dbg !1468
  %41 = load i32, ptr %arrayidx118.peel695, align 4, !dbg !1468
  %tobool119.not.peel696 = icmp eq i32 %41, 0, !dbg !1468
  br i1 %tobool119.not.peel696, label %if.else140.peel726, label %if.else150.peel716, !dbg !1453

if.else150.peel716:                               ; preds = %if.then116.peel715
  %arrayidx153.peel717 = getelementptr inbounds i8, ptr %1, i64 2008, !dbg !1454
  %42 = load i32, ptr %arrayidx153.peel717, align 4, !dbg !1454
  %tobool154.not.peel718 = icmp eq i32 %42, 0, !dbg !1454
  %arrayidx164.peel719 = getelementptr inbounds i8, ptr %1, i64 328
  %spec.select606.peel720 = select i1 %tobool154.not.peel718, ptr %arrayidx164.peel719, ptr @quant_inter_default, !dbg !1465
  br label %for.inc235.sink.split.peel728, !dbg !1465

if.else140.peel726:                               ; preds = %if.then116.peel715
  %arrayidx144.peel727 = getelementptr inbounds i8, ptr %currSlice, i64 12936, !dbg !1466
  %43 = load ptr, ptr %arrayidx144.peel727, align 8, !dbg !1466
  br label %for.inc235.sink.split.peel728

for.inc235.sink.split.peel728:                    ; preds = %if.else140.peel726, %if.else150.peel716
  %quant_inter_default.sink601.peel729 = phi ptr [ %43, %if.else140.peel726 ], [ %spec.select606.peel720, %if.else150.peel716 ]
  %arrayidx160.peel730 = getelementptr inbounds i8, ptr %currSlice, i64 12944, !dbg !1468
  store ptr %quant_inter_default.sink601.peel729, ptr %arrayidx160.peel730, align 8, !dbg !1468
    #dbg_value(i64 5, !1372, !DIExpression(), !1374)
    #dbg_value(i64 5, !1372, !DIExpression(), !1374)
  %arrayidx118.peel737 = getelementptr inbounds i8, ptr %1, i64 44, !dbg !1468
  %44 = load i32, ptr %arrayidx118.peel737, align 4, !dbg !1468
  %tobool119.not.peel738 = icmp eq i32 %44, 0, !dbg !1468
  br i1 %tobool119.not.peel738, label %if.else140.peel768, label %if.else150.peel758, !dbg !1453

if.else150.peel758:                               ; preds = %for.inc235.sink.split.peel728
  %arrayidx153.peel759 = getelementptr inbounds i8, ptr %1, i64 2012, !dbg !1454
  %45 = load i32, ptr %arrayidx153.peel759, align 4, !dbg !1454
  %tobool154.not.peel760 = icmp eq i32 %45, 0, !dbg !1454
  %arrayidx164.peel761 = getelementptr inbounds i8, ptr %1, i64 392
  %spec.select606.peel762 = select i1 %tobool154.not.peel760, ptr %arrayidx164.peel761, ptr @quant_inter_default, !dbg !1465
  br label %for.inc235.sink.split.peel770, !dbg !1465

if.else140.peel768:                               ; preds = %for.inc235.sink.split.peel728
  %arrayidx144.peel769 = getelementptr inbounds i8, ptr %currSlice, i64 12944, !dbg !1466
  %46 = load ptr, ptr %arrayidx144.peel769, align 8, !dbg !1466
  br label %for.inc235.sink.split.peel770

for.inc235.sink.split.peel770:                    ; preds = %if.else140.peel768, %if.else150.peel758
  %quant_inter_default.sink601.peel771 = phi ptr [ %46, %if.else140.peel768 ], [ %spec.select606.peel762, %if.else150.peel758 ]
  %arrayidx160.peel772 = getelementptr inbounds i8, ptr %currSlice, i64 12952, !dbg !1468
  store ptr %quant_inter_default.sink601.peel771, ptr %arrayidx160.peel772, align 8, !dbg !1468
    #dbg_value(i64 6, !1372, !DIExpression(), !1374)
  br label %for.body114, !dbg !1475

for.body114:                                      ; preds = %for.inc235.sink.split.peel770, %for.inc235
  %indvars.iv459 = phi i64 [ 6, %for.inc235.sink.split.peel770 ], [ %indvars.iv.next460, %for.inc235 ]
    #dbg_value(i64 %indvars.iv459, !1372, !DIExpression(), !1374)
  %arrayidx118 = getelementptr inbounds [12 x i32], ptr %pic_scaling_list_present_flag172, i64 0, i64 %indvars.iv459, !dbg !1468
  %47 = load i32, ptr %arrayidx118, align 4, !dbg !1468
  %tobool119.not = icmp eq i32 %47, 0, !dbg !1468
  br i1 %tobool119.not, label %if.then176, label %if.else206, !dbg !1476

if.then176:                                       ; preds = %for.body114
  %48 = trunc nuw nsw i64 %indvars.iv459 to i32, !dbg !1478
  switch i32 %48, label %if.else196 [
    i32 6, label %if.then178
    i32 7, label %if.then188
  ], !dbg !1478

if.then178:                                       ; preds = %if.then176
  %49 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4, !dbg !1481
  %tobool180.not = icmp eq i32 %49, 0, !dbg !1485
  br i1 %tobool180.not, label %for.inc235.sink.split, label %for.inc235, !dbg !1486

if.then188:                                       ; preds = %if.then176
  %50 = load i32, ptr %seq_scaling_matrix_present_flag5591595, align 4, !dbg !1487
  %tobool190.not = icmp eq i32 %50, 0, !dbg !1491
  br i1 %tobool190.not, label %for.inc235.sink.split, label %for.inc235, !dbg !1492

if.else196:                                       ; preds = %if.then176
  %51 = add nsw i64 %indvars.iv459, -2, !dbg !1493
  %arrayidx200 = getelementptr inbounds [12 x ptr], ptr %qmatrix220, i64 0, i64 %51, !dbg !1494
  %52 = load ptr, ptr %arrayidx200, align 8, !dbg !1494
  br label %for.inc235.sink.split

if.else206:                                       ; preds = %for.body114
  %53 = add nsw i64 %indvars.iv459, -6, !dbg !1495
  %arrayidx210 = getelementptr inbounds [6 x i32], ptr %UseDefaultScalingMatrix8x8Flag207, i64 0, i64 %53, !dbg !1498
  %54 = load i32, ptr %arrayidx210, align 4, !dbg !1498
  %tobool211.not = icmp eq i32 %54, 0, !dbg !1498
  br i1 %tobool211.not, label %if.else223, label %if.then212, !dbg !1499

if.then212:                                       ; preds = %if.else206
  %55 = trunc nuw nsw i64 %indvars.iv459 to i32, !dbg !1500
  %switch.tableidx608 = add nsw i32 %55, -6, !dbg !1500
  %56 = icmp ult i32 %switch.tableidx608, 5, !dbg !1500
  br i1 %56, label %switch.lookup607, label %for.inc235.sink.split, !dbg !1500

if.else223:                                       ; preds = %if.else206
  %arrayidx227 = getelementptr inbounds [6 x [64 x i32]], ptr %ScalingList8x8224, i64 0, i64 %53, !dbg !1501
  br label %for.inc235.sink.split

switch.lookup607:                                 ; preds = %if.then212
  %57 = zext nneg i32 %switch.tableidx608 to i64, !dbg !1500
  %switch.gep609 = getelementptr inbounds [5 x ptr], ptr @switch.table.assign_quant_params.2, i64 0, i64 %57, !dbg !1500
  %switch.load610 = load ptr, ptr %switch.gep609, align 8, !dbg !1500
  br label %for.inc235.sink.split, !dbg !1500

for.inc235.sink.split:                            ; preds = %switch.lookup607, %if.then212, %if.then188, %if.then178, %if.else196, %if.else223
  %quant_inter_default.sink601 = phi ptr [ %arrayidx227, %if.else223 ], [ %52, %if.else196 ], [ @quant8_intra_default, %if.then178 ], [ @quant8_inter_default, %if.then188 ], [ @quant8_inter_default, %if.then212 ], [ %switch.load610, %switch.lookup607 ]
  %arrayidx160 = getelementptr inbounds [12 x ptr], ptr %qmatrix220, i64 0, i64 %indvars.iv459, !dbg !1468
  store ptr %quant_inter_default.sink601, ptr %arrayidx160, align 8, !dbg !1468
  br label %for.inc235, !dbg !1474

for.inc235:                                       ; preds = %for.inc235.sink.split, %if.then178, %if.then188
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1, !dbg !1474
    #dbg_value(i64 %indvars.iv.next460, !1372, !DIExpression(), !1374)
  %exitcond466.not = icmp eq i64 %indvars.iv.next460, %wide.trip.count465, !dbg !1444
  br i1 %exitcond466.not, label %if.end239, label %for.body114, !dbg !1475, !llvm.loop !1502

if.end239:                                        ; preds = %for.inc235, %for.cond.preheader, %if.end108
  tail call void @CalculateQuant4x4Param(ptr noundef %currSlice), !dbg !1396
  %transform_8x8_mode_flag = getelementptr inbounds i8, ptr %1, i64 16, !dbg !1504
  %58 = load i32, ptr %transform_8x8_mode_flag, align 8, !dbg !1504
  %tobool240.not = icmp eq i32 %58, 0, !dbg !1506
  br i1 %tobool240.not, label %if.end242, label %if.then241, !dbg !1507

if.then241:                                       ; preds = %if.end239
  tail call void @CalculateQuant8x8Param(ptr noundef %currSlice), !dbg !1508
  br label %if.end242, !dbg !1508

if.end242:                                        ; preds = %if.then241, %if.end239
  ret void, !dbg !1509
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant4x4Param(ptr noundef %currSlice) local_unnamed_addr #5 !dbg !1510 {
entry:
    #dbg_value(ptr %currSlice, !1512, !DIExpression(), !1526)
    #dbg_value(ptr @dequant_coef, !1514, !DIExpression(), !1526)
  %InvLevelScale4x4_Intra = getelementptr inbounds i8, ptr %currSlice, i64 1392, !dbg !1527
    #dbg_value(ptr %InvLevelScale4x4_Intra, !1518, !DIExpression(), !1526)
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 1776, !dbg !1528
    #dbg_value(ptr %arrayidx2, !1521, !DIExpression(), !1526)
  %arrayidx5 = getelementptr inbounds i8, ptr %currSlice, i64 2160, !dbg !1529
    #dbg_value(ptr %arrayidx5, !1522, !DIExpression(), !1526)
  %InvLevelScale4x4_Inter = getelementptr inbounds i8, ptr %currSlice, i64 2544, !dbg !1530
    #dbg_value(ptr %InvLevelScale4x4_Inter, !1523, !DIExpression(), !1526)
  %arrayidx10 = getelementptr inbounds i8, ptr %currSlice, i64 2928, !dbg !1531
    #dbg_value(ptr %arrayidx10, !1524, !DIExpression(), !1526)
  %arrayidx13 = getelementptr inbounds i8, ptr %currSlice, i64 3312, !dbg !1532
    #dbg_value(ptr %arrayidx13, !1525, !DIExpression(), !1526)
    #dbg_value(i32 0, !1513, !DIExpression(), !1526)
  %qmatrix = getelementptr inbounds i8, ptr %currSlice, i64 12912
  %arrayidx22 = getelementptr inbounds i8, ptr %currSlice, i64 12920
  %arrayidx27 = getelementptr inbounds i8, ptr %currSlice, i64 12928
  %arrayidx32 = getelementptr inbounds i8, ptr %currSlice, i64 12936
  %arrayidx37 = getelementptr inbounds i8, ptr %currSlice, i64 12944
  %arrayidx43 = getelementptr inbounds i8, ptr %currSlice, i64 12952
    #dbg_value(ptr %arrayidx13, !1525, !DIExpression(), !1526)
    #dbg_value(ptr %arrayidx10, !1524, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Inter, !1523, !DIExpression(), !1526)
    #dbg_value(ptr %arrayidx5, !1522, !DIExpression(), !1526)
    #dbg_value(ptr %arrayidx2, !1521, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Intra, !1518, !DIExpression(), !1526)
    #dbg_value(ptr @dequant_coef, !1514, !DIExpression(), !1526)
    #dbg_value(i32 0, !1513, !DIExpression(), !1526)
  br label %for.body, !dbg !1533

for.body:                                         ; preds = %entry, %for.body
  %InvLevelScale4x4_Inter_2.0373 = phi ptr [ %arrayidx13, %entry ], [ %incdec.ptr38, %for.body ]
  %InvLevelScale4x4_Inter_1.0372 = phi ptr [ %arrayidx10, %entry ], [ %incdec.ptr33, %for.body ]
  %InvLevelScale4x4_Inter_0.0371 = phi ptr [ %InvLevelScale4x4_Inter, %entry ], [ %incdec.ptr28, %for.body ]
  %InvLevelScale4x4_Intra_2.0370 = phi ptr [ %arrayidx5, %entry ], [ %incdec.ptr23, %for.body ]
  %InvLevelScale4x4_Intra_1.0369 = phi ptr [ %arrayidx2, %entry ], [ %incdec.ptr18, %for.body ]
  %InvLevelScale4x4_Intra_0.0368 = phi ptr [ %InvLevelScale4x4_Intra, %entry ], [ %incdec.ptr, %for.body ]
  %p_dequant_coef.0367 = phi ptr [ @dequant_coef, %entry ], [ %incdec.ptr40, %for.body ]
  %k.0366 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
    #dbg_value(ptr %InvLevelScale4x4_Inter_2.0373, !1525, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Inter_1.0372, !1524, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Inter_0.0371, !1523, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Intra_2.0370, !1522, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Intra_1.0369, !1521, !DIExpression(), !1526)
    #dbg_value(ptr %InvLevelScale4x4_Intra_0.0368, !1518, !DIExpression(), !1526)
    #dbg_value(ptr %p_dequant_coef.0367, !1514, !DIExpression(), !1526)
    #dbg_value(i32 %k.0366, !1513, !DIExpression(), !1526)
  %incdec.ptr = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 64, !dbg !1535
    #dbg_value(ptr %incdec.ptr, !1518, !DIExpression(), !1526)
  %0 = load ptr, ptr %qmatrix, align 8, !dbg !1538
    #dbg_value(i32 0, !1539, !DIExpression(), !1551)
    #dbg_value(ptr %0, !1550, !DIExpression(), !1551)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1551)
    #dbg_value(ptr %InvLevelScale4x4_Intra_0.0368, !1548, !DIExpression(), !1551)
  %1 = load i32, ptr %p_dequant_coef.0367, align 4, !dbg !1553
  %incdec.ptr.i = getelementptr inbounds i8, ptr %0, i64 4, !dbg !1557
    #dbg_value(ptr %incdec.ptr.i, !1550, !DIExpression(), !1551)
  %2 = load i32, ptr %0, align 4, !dbg !1558
  %mul.i = mul nsw i32 %2, %1, !dbg !1559
  store i32 %mul.i, ptr %InvLevelScale4x4_Intra_0.0368, align 4, !dbg !1560
  %add.ptr.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 4, !dbg !1561
  %3 = load i32, ptr %add.ptr.i, align 4, !dbg !1562
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1563
    #dbg_value(ptr %incdec.ptr3.i, !1550, !DIExpression(), !1551)
  %4 = load i32, ptr %incdec.ptr.i, align 4, !dbg !1564
  %mul4.i = mul nsw i32 %4, %3, !dbg !1565
  %add.ptr6.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 4, !dbg !1566
  store i32 %mul4.i, ptr %add.ptr6.i, align 4, !dbg !1567
  %add.ptr8.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 8, !dbg !1568
  %5 = load i32, ptr %add.ptr8.i, align 4, !dbg !1569
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %0, i64 12, !dbg !1570
    #dbg_value(ptr %incdec.ptr9.i, !1550, !DIExpression(), !1551)
  %6 = load i32, ptr %incdec.ptr3.i, align 4, !dbg !1571
  %mul10.i = mul nsw i32 %6, %5, !dbg !1572
  %add.ptr12.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 8, !dbg !1573
  store i32 %mul10.i, ptr %add.ptr12.i, align 4, !dbg !1574
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 16, !dbg !1575
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1551)
  %add.ptr15.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 12, !dbg !1576
  %7 = load i32, ptr %add.ptr15.i, align 4, !dbg !1577
  %incdec.ptr16.i = getelementptr inbounds i8, ptr %0, i64 16, !dbg !1578
    #dbg_value(ptr %incdec.ptr16.i, !1550, !DIExpression(), !1551)
  %8 = load i32, ptr %incdec.ptr9.i, align 4, !dbg !1579
  %mul17.i = mul nsw i32 %8, %7, !dbg !1580
  %incdec.ptr18.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 16, !dbg !1581
    #dbg_value(ptr %incdec.ptr18.i, !1548, !DIExpression(), !1551)
  %add.ptr20.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 12, !dbg !1582
  store i32 %mul17.i, ptr %add.ptr20.i, align 4, !dbg !1583
    #dbg_value(i32 1, !1539, !DIExpression(), !1551)
  %9 = load i32, ptr %incdec.ptr13.i, align 4, !dbg !1553
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %0, i64 20, !dbg !1557
    #dbg_value(ptr %incdec.ptr.1.i, !1550, !DIExpression(), !1551)
  %10 = load i32, ptr %incdec.ptr16.i, align 4, !dbg !1558
  %mul.1.i = mul nsw i32 %10, %9, !dbg !1559
  store i32 %mul.1.i, ptr %incdec.ptr18.i, align 4, !dbg !1560
  %add.ptr.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 20, !dbg !1561
  %11 = load i32, ptr %add.ptr.1.i, align 4, !dbg !1562
  %incdec.ptr3.1.i = getelementptr inbounds i8, ptr %0, i64 24, !dbg !1563
    #dbg_value(ptr %incdec.ptr3.1.i, !1550, !DIExpression(), !1551)
  %12 = load i32, ptr %incdec.ptr.1.i, align 4, !dbg !1564
  %mul4.1.i = mul nsw i32 %12, %11, !dbg !1565
  %add.ptr6.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 20, !dbg !1566
  store i32 %mul4.1.i, ptr %add.ptr6.1.i, align 4, !dbg !1567
  %add.ptr8.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 24, !dbg !1568
  %13 = load i32, ptr %add.ptr8.1.i, align 4, !dbg !1569
  %incdec.ptr9.1.i = getelementptr inbounds i8, ptr %0, i64 28, !dbg !1570
    #dbg_value(ptr %incdec.ptr9.1.i, !1550, !DIExpression(), !1551)
  %14 = load i32, ptr %incdec.ptr3.1.i, align 4, !dbg !1571
  %mul10.1.i = mul nsw i32 %14, %13, !dbg !1572
  %add.ptr12.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 24, !dbg !1573
  store i32 %mul10.1.i, ptr %add.ptr12.1.i, align 4, !dbg !1574
  %incdec.ptr13.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 32, !dbg !1575
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1551)
  %add.ptr15.1.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 28, !dbg !1576
  %15 = load i32, ptr %add.ptr15.1.i, align 4, !dbg !1577
  %incdec.ptr16.1.i = getelementptr inbounds i8, ptr %0, i64 32, !dbg !1578
    #dbg_value(ptr %incdec.ptr16.1.i, !1550, !DIExpression(), !1551)
  %16 = load i32, ptr %incdec.ptr9.1.i, align 4, !dbg !1579
  %mul17.1.i = mul nsw i32 %16, %15, !dbg !1580
  %incdec.ptr18.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 32, !dbg !1581
    #dbg_value(ptr %incdec.ptr18.1.i, !1548, !DIExpression(), !1551)
  %add.ptr20.1.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 28, !dbg !1582
  store i32 %mul17.1.i, ptr %add.ptr20.1.i, align 4, !dbg !1583
    #dbg_value(i32 2, !1539, !DIExpression(), !1551)
  %17 = load i32, ptr %incdec.ptr13.1.i, align 4, !dbg !1553
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %0, i64 36, !dbg !1557
    #dbg_value(ptr %incdec.ptr.2.i, !1550, !DIExpression(), !1551)
  %18 = load i32, ptr %incdec.ptr16.1.i, align 4, !dbg !1558
  %mul.2.i = mul nsw i32 %18, %17, !dbg !1559
  store i32 %mul.2.i, ptr %incdec.ptr18.1.i, align 4, !dbg !1560
  %add.ptr.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 36, !dbg !1561
  %19 = load i32, ptr %add.ptr.2.i, align 4, !dbg !1562
  %incdec.ptr3.2.i = getelementptr inbounds i8, ptr %0, i64 40, !dbg !1563
    #dbg_value(ptr %incdec.ptr3.2.i, !1550, !DIExpression(), !1551)
  %20 = load i32, ptr %incdec.ptr.2.i, align 4, !dbg !1564
  %mul4.2.i = mul nsw i32 %20, %19, !dbg !1565
  %add.ptr6.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 36, !dbg !1566
  store i32 %mul4.2.i, ptr %add.ptr6.2.i, align 4, !dbg !1567
  %add.ptr8.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 40, !dbg !1568
  %21 = load i32, ptr %add.ptr8.2.i, align 4, !dbg !1569
  %incdec.ptr9.2.i = getelementptr inbounds i8, ptr %0, i64 44, !dbg !1570
    #dbg_value(ptr %incdec.ptr9.2.i, !1550, !DIExpression(), !1551)
  %22 = load i32, ptr %incdec.ptr3.2.i, align 4, !dbg !1571
  %mul10.2.i = mul nsw i32 %22, %21, !dbg !1572
  %add.ptr12.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 40, !dbg !1573
  store i32 %mul10.2.i, ptr %add.ptr12.2.i, align 4, !dbg !1574
  %incdec.ptr13.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 48, !dbg !1575
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1551)
  %add.ptr15.2.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 44, !dbg !1576
  %23 = load i32, ptr %add.ptr15.2.i, align 4, !dbg !1577
  %incdec.ptr16.2.i = getelementptr inbounds i8, ptr %0, i64 48, !dbg !1578
    #dbg_value(ptr %incdec.ptr16.2.i, !1550, !DIExpression(), !1551)
  %24 = load i32, ptr %incdec.ptr9.2.i, align 4, !dbg !1579
  %mul17.2.i = mul nsw i32 %24, %23, !dbg !1580
  %incdec.ptr18.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 48, !dbg !1581
    #dbg_value(ptr %incdec.ptr18.2.i, !1548, !DIExpression(), !1551)
  %add.ptr20.2.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 44, !dbg !1582
  store i32 %mul17.2.i, ptr %add.ptr20.2.i, align 4, !dbg !1583
    #dbg_value(i32 3, !1539, !DIExpression(), !1551)
  %25 = load i32, ptr %incdec.ptr13.2.i, align 4, !dbg !1553
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %0, i64 52, !dbg !1557
    #dbg_value(ptr %incdec.ptr.3.i, !1550, !DIExpression(), !1551)
  %26 = load i32, ptr %incdec.ptr16.2.i, align 4, !dbg !1558
  %mul.3.i = mul nsw i32 %26, %25, !dbg !1559
  store i32 %mul.3.i, ptr %incdec.ptr18.2.i, align 4, !dbg !1560
  %add.ptr.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 52, !dbg !1561
  %27 = load i32, ptr %add.ptr.3.i, align 4, !dbg !1562
  %incdec.ptr3.3.i = getelementptr inbounds i8, ptr %0, i64 56, !dbg !1563
    #dbg_value(ptr %incdec.ptr3.3.i, !1550, !DIExpression(), !1551)
  %28 = load i32, ptr %incdec.ptr.3.i, align 4, !dbg !1564
  %mul4.3.i = mul nsw i32 %28, %27, !dbg !1565
  %add.ptr6.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 52, !dbg !1566
  store i32 %mul4.3.i, ptr %add.ptr6.3.i, align 4, !dbg !1567
  %add.ptr8.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 56, !dbg !1568
  %29 = load i32, ptr %add.ptr8.3.i, align 4, !dbg !1569
  %incdec.ptr9.3.i = getelementptr inbounds i8, ptr %0, i64 60, !dbg !1570
    #dbg_value(ptr %incdec.ptr9.3.i, !1550, !DIExpression(), !1551)
  %30 = load i32, ptr %incdec.ptr3.3.i, align 4, !dbg !1571
  %mul10.3.i = mul nsw i32 %30, %29, !dbg !1572
  %add.ptr12.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 56, !dbg !1573
  store i32 %mul10.3.i, ptr %add.ptr12.3.i, align 4, !dbg !1574
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1551)
  %add.ptr15.3.i = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 60, !dbg !1576
  %31 = load i32, ptr %add.ptr15.3.i, align 4, !dbg !1577
    #dbg_value(ptr %incdec.ptr16.2.i, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1551)
  %32 = load i32, ptr %incdec.ptr9.3.i, align 4, !dbg !1579
  %mul17.3.i = mul nsw i32 %32, %31, !dbg !1580
    #dbg_value(ptr %incdec.ptr18.2.i, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1551)
  %add.ptr20.3.i = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_0.0368, i64 60, !dbg !1582
  store i32 %mul17.3.i, ptr %add.ptr20.3.i, align 4, !dbg !1583
    #dbg_value(i32 4, !1539, !DIExpression(), !1551)
  %incdec.ptr18 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 64, !dbg !1584
    #dbg_value(ptr %incdec.ptr18, !1521, !DIExpression(), !1526)
  %33 = load ptr, ptr %arrayidx22, align 8, !dbg !1585
    #dbg_value(i32 0, !1539, !DIExpression(), !1586)
    #dbg_value(ptr %33, !1550, !DIExpression(), !1586)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1586)
    #dbg_value(ptr %InvLevelScale4x4_Intra_1.0369, !1548, !DIExpression(), !1586)
  %incdec.ptr.i61 = getelementptr inbounds i8, ptr %33, i64 4, !dbg !1588
    #dbg_value(ptr %incdec.ptr.i61, !1550, !DIExpression(), !1586)
  %34 = load i32, ptr %33, align 4, !dbg !1589
  %mul.i62 = mul nsw i32 %34, %1, !dbg !1590
  store i32 %mul.i62, ptr %InvLevelScale4x4_Intra_1.0369, align 4, !dbg !1591
  %incdec.ptr3.i64 = getelementptr inbounds i8, ptr %33, i64 8, !dbg !1592
    #dbg_value(ptr %incdec.ptr3.i64, !1550, !DIExpression(), !1586)
  %35 = load i32, ptr %incdec.ptr.i61, align 4, !dbg !1593
  %mul4.i65 = mul nsw i32 %35, %3, !dbg !1594
  %add.ptr6.i66 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 4, !dbg !1595
  store i32 %mul4.i65, ptr %add.ptr6.i66, align 4, !dbg !1596
  %incdec.ptr9.i68 = getelementptr inbounds i8, ptr %33, i64 12, !dbg !1597
    #dbg_value(ptr %incdec.ptr9.i68, !1550, !DIExpression(), !1586)
  %36 = load i32, ptr %incdec.ptr3.i64, align 4, !dbg !1598
  %mul10.i69 = mul nsw i32 %36, %5, !dbg !1599
  %add.ptr12.i70 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 8, !dbg !1600
  store i32 %mul10.i69, ptr %add.ptr12.i70, align 4, !dbg !1601
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1586)
  %incdec.ptr16.i73 = getelementptr inbounds i8, ptr %33, i64 16, !dbg !1602
    #dbg_value(ptr %incdec.ptr16.i73, !1550, !DIExpression(), !1586)
  %37 = load i32, ptr %incdec.ptr9.i68, align 4, !dbg !1603
  %mul17.i74 = mul nsw i32 %37, %7, !dbg !1604
  %incdec.ptr18.i75 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 16, !dbg !1605
    #dbg_value(ptr %incdec.ptr18.i75, !1548, !DIExpression(), !1586)
  %add.ptr20.i76 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 12, !dbg !1606
  store i32 %mul17.i74, ptr %add.ptr20.i76, align 4, !dbg !1607
    #dbg_value(i32 1, !1539, !DIExpression(), !1586)
  %incdec.ptr.1.i77 = getelementptr inbounds i8, ptr %33, i64 20, !dbg !1588
    #dbg_value(ptr %incdec.ptr.1.i77, !1550, !DIExpression(), !1586)
  %38 = load i32, ptr %incdec.ptr16.i73, align 4, !dbg !1589
  %mul.1.i78 = mul nsw i32 %38, %9, !dbg !1590
  store i32 %mul.1.i78, ptr %incdec.ptr18.i75, align 4, !dbg !1591
  %incdec.ptr3.1.i80 = getelementptr inbounds i8, ptr %33, i64 24, !dbg !1592
    #dbg_value(ptr %incdec.ptr3.1.i80, !1550, !DIExpression(), !1586)
  %39 = load i32, ptr %incdec.ptr.1.i77, align 4, !dbg !1593
  %mul4.1.i81 = mul nsw i32 %39, %11, !dbg !1594
  %add.ptr6.1.i82 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 20, !dbg !1595
  store i32 %mul4.1.i81, ptr %add.ptr6.1.i82, align 4, !dbg !1596
  %incdec.ptr9.1.i84 = getelementptr inbounds i8, ptr %33, i64 28, !dbg !1597
    #dbg_value(ptr %incdec.ptr9.1.i84, !1550, !DIExpression(), !1586)
  %40 = load i32, ptr %incdec.ptr3.1.i80, align 4, !dbg !1598
  %mul10.1.i85 = mul nsw i32 %40, %13, !dbg !1599
  %add.ptr12.1.i86 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 24, !dbg !1600
  store i32 %mul10.1.i85, ptr %add.ptr12.1.i86, align 4, !dbg !1601
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1586)
  %incdec.ptr16.1.i89 = getelementptr inbounds i8, ptr %33, i64 32, !dbg !1602
    #dbg_value(ptr %incdec.ptr16.1.i89, !1550, !DIExpression(), !1586)
  %41 = load i32, ptr %incdec.ptr9.1.i84, align 4, !dbg !1603
  %mul17.1.i90 = mul nsw i32 %41, %15, !dbg !1604
  %incdec.ptr18.1.i91 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 32, !dbg !1605
    #dbg_value(ptr %incdec.ptr18.1.i91, !1548, !DIExpression(), !1586)
  %add.ptr20.1.i92 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 28, !dbg !1606
  store i32 %mul17.1.i90, ptr %add.ptr20.1.i92, align 4, !dbg !1607
    #dbg_value(i32 2, !1539, !DIExpression(), !1586)
  %incdec.ptr.2.i93 = getelementptr inbounds i8, ptr %33, i64 36, !dbg !1588
    #dbg_value(ptr %incdec.ptr.2.i93, !1550, !DIExpression(), !1586)
  %42 = load i32, ptr %incdec.ptr16.1.i89, align 4, !dbg !1589
  %mul.2.i94 = mul nsw i32 %42, %17, !dbg !1590
  store i32 %mul.2.i94, ptr %incdec.ptr18.1.i91, align 4, !dbg !1591
  %incdec.ptr3.2.i96 = getelementptr inbounds i8, ptr %33, i64 40, !dbg !1592
    #dbg_value(ptr %incdec.ptr3.2.i96, !1550, !DIExpression(), !1586)
  %43 = load i32, ptr %incdec.ptr.2.i93, align 4, !dbg !1593
  %mul4.2.i97 = mul nsw i32 %43, %19, !dbg !1594
  %add.ptr6.2.i98 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 36, !dbg !1595
  store i32 %mul4.2.i97, ptr %add.ptr6.2.i98, align 4, !dbg !1596
  %incdec.ptr9.2.i100 = getelementptr inbounds i8, ptr %33, i64 44, !dbg !1597
    #dbg_value(ptr %incdec.ptr9.2.i100, !1550, !DIExpression(), !1586)
  %44 = load i32, ptr %incdec.ptr3.2.i96, align 4, !dbg !1598
  %mul10.2.i101 = mul nsw i32 %44, %21, !dbg !1599
  %add.ptr12.2.i102 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 40, !dbg !1600
  store i32 %mul10.2.i101, ptr %add.ptr12.2.i102, align 4, !dbg !1601
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1586)
  %incdec.ptr16.2.i105 = getelementptr inbounds i8, ptr %33, i64 48, !dbg !1602
    #dbg_value(ptr %incdec.ptr16.2.i105, !1550, !DIExpression(), !1586)
  %45 = load i32, ptr %incdec.ptr9.2.i100, align 4, !dbg !1603
  %mul17.2.i106 = mul nsw i32 %45, %23, !dbg !1604
  %incdec.ptr18.2.i107 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 48, !dbg !1605
    #dbg_value(ptr %incdec.ptr18.2.i107, !1548, !DIExpression(), !1586)
  %add.ptr20.2.i108 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 44, !dbg !1606
  store i32 %mul17.2.i106, ptr %add.ptr20.2.i108, align 4, !dbg !1607
    #dbg_value(i32 3, !1539, !DIExpression(), !1586)
  %incdec.ptr.3.i109 = getelementptr inbounds i8, ptr %33, i64 52, !dbg !1588
    #dbg_value(ptr %incdec.ptr.3.i109, !1550, !DIExpression(), !1586)
  %46 = load i32, ptr %incdec.ptr16.2.i105, align 4, !dbg !1589
  %mul.3.i110 = mul nsw i32 %46, %25, !dbg !1590
  store i32 %mul.3.i110, ptr %incdec.ptr18.2.i107, align 4, !dbg !1591
  %incdec.ptr3.3.i112 = getelementptr inbounds i8, ptr %33, i64 56, !dbg !1592
    #dbg_value(ptr %incdec.ptr3.3.i112, !1550, !DIExpression(), !1586)
  %47 = load i32, ptr %incdec.ptr.3.i109, align 4, !dbg !1593
  %mul4.3.i113 = mul nsw i32 %47, %27, !dbg !1594
  %add.ptr6.3.i114 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 52, !dbg !1595
  store i32 %mul4.3.i113, ptr %add.ptr6.3.i114, align 4, !dbg !1596
  %incdec.ptr9.3.i116 = getelementptr inbounds i8, ptr %33, i64 60, !dbg !1597
    #dbg_value(ptr %incdec.ptr9.3.i116, !1550, !DIExpression(), !1586)
  %48 = load i32, ptr %incdec.ptr3.3.i112, align 4, !dbg !1598
  %mul10.3.i117 = mul nsw i32 %48, %29, !dbg !1599
  %add.ptr12.3.i118 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 56, !dbg !1600
  store i32 %mul10.3.i117, ptr %add.ptr12.3.i118, align 4, !dbg !1601
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1586)
    #dbg_value(ptr %incdec.ptr16.2.i105, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1586)
  %49 = load i32, ptr %incdec.ptr9.3.i116, align 4, !dbg !1603
  %mul17.3.i120 = mul nsw i32 %49, %31, !dbg !1604
    #dbg_value(ptr %incdec.ptr18.2.i107, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1586)
  %add.ptr20.3.i121 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_1.0369, i64 60, !dbg !1606
  store i32 %mul17.3.i120, ptr %add.ptr20.3.i121, align 4, !dbg !1607
    #dbg_value(i32 4, !1539, !DIExpression(), !1586)
  %incdec.ptr23 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 64, !dbg !1608
    #dbg_value(ptr %incdec.ptr23, !1522, !DIExpression(), !1526)
  %50 = load ptr, ptr %arrayidx27, align 8, !dbg !1609
    #dbg_value(i32 0, !1539, !DIExpression(), !1610)
    #dbg_value(ptr %50, !1550, !DIExpression(), !1610)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1610)
    #dbg_value(ptr %InvLevelScale4x4_Intra_2.0370, !1548, !DIExpression(), !1610)
  %incdec.ptr.i122 = getelementptr inbounds i8, ptr %50, i64 4, !dbg !1612
    #dbg_value(ptr %incdec.ptr.i122, !1550, !DIExpression(), !1610)
  %51 = load i32, ptr %50, align 4, !dbg !1613
  %mul.i123 = mul nsw i32 %51, %1, !dbg !1614
  store i32 %mul.i123, ptr %InvLevelScale4x4_Intra_2.0370, align 4, !dbg !1615
  %incdec.ptr3.i125 = getelementptr inbounds i8, ptr %50, i64 8, !dbg !1616
    #dbg_value(ptr %incdec.ptr3.i125, !1550, !DIExpression(), !1610)
  %52 = load i32, ptr %incdec.ptr.i122, align 4, !dbg !1617
  %mul4.i126 = mul nsw i32 %52, %3, !dbg !1618
  %add.ptr6.i127 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 4, !dbg !1619
  store i32 %mul4.i126, ptr %add.ptr6.i127, align 4, !dbg !1620
  %incdec.ptr9.i129 = getelementptr inbounds i8, ptr %50, i64 12, !dbg !1621
    #dbg_value(ptr %incdec.ptr9.i129, !1550, !DIExpression(), !1610)
  %53 = load i32, ptr %incdec.ptr3.i125, align 4, !dbg !1622
  %mul10.i130 = mul nsw i32 %53, %5, !dbg !1623
  %add.ptr12.i131 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 8, !dbg !1624
  store i32 %mul10.i130, ptr %add.ptr12.i131, align 4, !dbg !1625
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1610)
  %incdec.ptr16.i134 = getelementptr inbounds i8, ptr %50, i64 16, !dbg !1626
    #dbg_value(ptr %incdec.ptr16.i134, !1550, !DIExpression(), !1610)
  %54 = load i32, ptr %incdec.ptr9.i129, align 4, !dbg !1627
  %mul17.i135 = mul nsw i32 %54, %7, !dbg !1628
  %incdec.ptr18.i136 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 16, !dbg !1629
    #dbg_value(ptr %incdec.ptr18.i136, !1548, !DIExpression(), !1610)
  %add.ptr20.i137 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 12, !dbg !1630
  store i32 %mul17.i135, ptr %add.ptr20.i137, align 4, !dbg !1631
    #dbg_value(i32 1, !1539, !DIExpression(), !1610)
  %incdec.ptr.1.i138 = getelementptr inbounds i8, ptr %50, i64 20, !dbg !1612
    #dbg_value(ptr %incdec.ptr.1.i138, !1550, !DIExpression(), !1610)
  %55 = load i32, ptr %incdec.ptr16.i134, align 4, !dbg !1613
  %mul.1.i139 = mul nsw i32 %55, %9, !dbg !1614
  store i32 %mul.1.i139, ptr %incdec.ptr18.i136, align 4, !dbg !1615
  %incdec.ptr3.1.i141 = getelementptr inbounds i8, ptr %50, i64 24, !dbg !1616
    #dbg_value(ptr %incdec.ptr3.1.i141, !1550, !DIExpression(), !1610)
  %56 = load i32, ptr %incdec.ptr.1.i138, align 4, !dbg !1617
  %mul4.1.i142 = mul nsw i32 %56, %11, !dbg !1618
  %add.ptr6.1.i143 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 20, !dbg !1619
  store i32 %mul4.1.i142, ptr %add.ptr6.1.i143, align 4, !dbg !1620
  %incdec.ptr9.1.i145 = getelementptr inbounds i8, ptr %50, i64 28, !dbg !1621
    #dbg_value(ptr %incdec.ptr9.1.i145, !1550, !DIExpression(), !1610)
  %57 = load i32, ptr %incdec.ptr3.1.i141, align 4, !dbg !1622
  %mul10.1.i146 = mul nsw i32 %57, %13, !dbg !1623
  %add.ptr12.1.i147 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 24, !dbg !1624
  store i32 %mul10.1.i146, ptr %add.ptr12.1.i147, align 4, !dbg !1625
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1610)
  %incdec.ptr16.1.i150 = getelementptr inbounds i8, ptr %50, i64 32, !dbg !1626
    #dbg_value(ptr %incdec.ptr16.1.i150, !1550, !DIExpression(), !1610)
  %58 = load i32, ptr %incdec.ptr9.1.i145, align 4, !dbg !1627
  %mul17.1.i151 = mul nsw i32 %58, %15, !dbg !1628
  %incdec.ptr18.1.i152 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 32, !dbg !1629
    #dbg_value(ptr %incdec.ptr18.1.i152, !1548, !DIExpression(), !1610)
  %add.ptr20.1.i153 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 28, !dbg !1630
  store i32 %mul17.1.i151, ptr %add.ptr20.1.i153, align 4, !dbg !1631
    #dbg_value(i32 2, !1539, !DIExpression(), !1610)
  %incdec.ptr.2.i154 = getelementptr inbounds i8, ptr %50, i64 36, !dbg !1612
    #dbg_value(ptr %incdec.ptr.2.i154, !1550, !DIExpression(), !1610)
  %59 = load i32, ptr %incdec.ptr16.1.i150, align 4, !dbg !1613
  %mul.2.i155 = mul nsw i32 %59, %17, !dbg !1614
  store i32 %mul.2.i155, ptr %incdec.ptr18.1.i152, align 4, !dbg !1615
  %incdec.ptr3.2.i157 = getelementptr inbounds i8, ptr %50, i64 40, !dbg !1616
    #dbg_value(ptr %incdec.ptr3.2.i157, !1550, !DIExpression(), !1610)
  %60 = load i32, ptr %incdec.ptr.2.i154, align 4, !dbg !1617
  %mul4.2.i158 = mul nsw i32 %60, %19, !dbg !1618
  %add.ptr6.2.i159 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 36, !dbg !1619
  store i32 %mul4.2.i158, ptr %add.ptr6.2.i159, align 4, !dbg !1620
  %incdec.ptr9.2.i161 = getelementptr inbounds i8, ptr %50, i64 44, !dbg !1621
    #dbg_value(ptr %incdec.ptr9.2.i161, !1550, !DIExpression(), !1610)
  %61 = load i32, ptr %incdec.ptr3.2.i157, align 4, !dbg !1622
  %mul10.2.i162 = mul nsw i32 %61, %21, !dbg !1623
  %add.ptr12.2.i163 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 40, !dbg !1624
  store i32 %mul10.2.i162, ptr %add.ptr12.2.i163, align 4, !dbg !1625
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1610)
  %incdec.ptr16.2.i166 = getelementptr inbounds i8, ptr %50, i64 48, !dbg !1626
    #dbg_value(ptr %incdec.ptr16.2.i166, !1550, !DIExpression(), !1610)
  %62 = load i32, ptr %incdec.ptr9.2.i161, align 4, !dbg !1627
  %mul17.2.i167 = mul nsw i32 %62, %23, !dbg !1628
  %incdec.ptr18.2.i168 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 48, !dbg !1629
    #dbg_value(ptr %incdec.ptr18.2.i168, !1548, !DIExpression(), !1610)
  %add.ptr20.2.i169 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 44, !dbg !1630
  store i32 %mul17.2.i167, ptr %add.ptr20.2.i169, align 4, !dbg !1631
    #dbg_value(i32 3, !1539, !DIExpression(), !1610)
  %incdec.ptr.3.i170 = getelementptr inbounds i8, ptr %50, i64 52, !dbg !1612
    #dbg_value(ptr %incdec.ptr.3.i170, !1550, !DIExpression(), !1610)
  %63 = load i32, ptr %incdec.ptr16.2.i166, align 4, !dbg !1613
  %mul.3.i171 = mul nsw i32 %63, %25, !dbg !1614
  store i32 %mul.3.i171, ptr %incdec.ptr18.2.i168, align 4, !dbg !1615
  %incdec.ptr3.3.i173 = getelementptr inbounds i8, ptr %50, i64 56, !dbg !1616
    #dbg_value(ptr %incdec.ptr3.3.i173, !1550, !DIExpression(), !1610)
  %64 = load i32, ptr %incdec.ptr.3.i170, align 4, !dbg !1617
  %mul4.3.i174 = mul nsw i32 %64, %27, !dbg !1618
  %add.ptr6.3.i175 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 52, !dbg !1619
  store i32 %mul4.3.i174, ptr %add.ptr6.3.i175, align 4, !dbg !1620
  %incdec.ptr9.3.i177 = getelementptr inbounds i8, ptr %50, i64 60, !dbg !1621
    #dbg_value(ptr %incdec.ptr9.3.i177, !1550, !DIExpression(), !1610)
  %65 = load i32, ptr %incdec.ptr3.3.i173, align 4, !dbg !1622
  %mul10.3.i178 = mul nsw i32 %65, %29, !dbg !1623
  %add.ptr12.3.i179 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 56, !dbg !1624
  store i32 %mul10.3.i178, ptr %add.ptr12.3.i179, align 4, !dbg !1625
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1610)
    #dbg_value(ptr %incdec.ptr16.2.i166, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1610)
  %66 = load i32, ptr %incdec.ptr9.3.i177, align 4, !dbg !1627
  %mul17.3.i181 = mul nsw i32 %66, %31, !dbg !1628
    #dbg_value(ptr %incdec.ptr18.2.i168, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1610)
  %add.ptr20.3.i182 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Intra_2.0370, i64 60, !dbg !1630
  store i32 %mul17.3.i181, ptr %add.ptr20.3.i182, align 4, !dbg !1631
    #dbg_value(i32 4, !1539, !DIExpression(), !1610)
  %incdec.ptr28 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 64, !dbg !1632
    #dbg_value(ptr %incdec.ptr28, !1523, !DIExpression(), !1526)
  %67 = load ptr, ptr %arrayidx32, align 8, !dbg !1633
    #dbg_value(i32 0, !1539, !DIExpression(), !1634)
    #dbg_value(ptr %67, !1550, !DIExpression(), !1634)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1634)
    #dbg_value(ptr %InvLevelScale4x4_Inter_0.0371, !1548, !DIExpression(), !1634)
  %incdec.ptr.i183 = getelementptr inbounds i8, ptr %67, i64 4, !dbg !1636
    #dbg_value(ptr %incdec.ptr.i183, !1550, !DIExpression(), !1634)
  %68 = load i32, ptr %67, align 4, !dbg !1637
  %mul.i184 = mul nsw i32 %68, %1, !dbg !1638
  store i32 %mul.i184, ptr %InvLevelScale4x4_Inter_0.0371, align 4, !dbg !1639
  %incdec.ptr3.i186 = getelementptr inbounds i8, ptr %67, i64 8, !dbg !1640
    #dbg_value(ptr %incdec.ptr3.i186, !1550, !DIExpression(), !1634)
  %69 = load i32, ptr %incdec.ptr.i183, align 4, !dbg !1641
  %mul4.i187 = mul nsw i32 %69, %3, !dbg !1642
  %add.ptr6.i188 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 4, !dbg !1643
  store i32 %mul4.i187, ptr %add.ptr6.i188, align 4, !dbg !1644
  %incdec.ptr9.i190 = getelementptr inbounds i8, ptr %67, i64 12, !dbg !1645
    #dbg_value(ptr %incdec.ptr9.i190, !1550, !DIExpression(), !1634)
  %70 = load i32, ptr %incdec.ptr3.i186, align 4, !dbg !1646
  %mul10.i191 = mul nsw i32 %70, %5, !dbg !1647
  %add.ptr12.i192 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 8, !dbg !1648
  store i32 %mul10.i191, ptr %add.ptr12.i192, align 4, !dbg !1649
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1634)
  %incdec.ptr16.i195 = getelementptr inbounds i8, ptr %67, i64 16, !dbg !1650
    #dbg_value(ptr %incdec.ptr16.i195, !1550, !DIExpression(), !1634)
  %71 = load i32, ptr %incdec.ptr9.i190, align 4, !dbg !1651
  %mul17.i196 = mul nsw i32 %71, %7, !dbg !1652
  %incdec.ptr18.i197 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 16, !dbg !1653
    #dbg_value(ptr %incdec.ptr18.i197, !1548, !DIExpression(), !1634)
  %add.ptr20.i198 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 12, !dbg !1654
  store i32 %mul17.i196, ptr %add.ptr20.i198, align 4, !dbg !1655
    #dbg_value(i32 1, !1539, !DIExpression(), !1634)
  %incdec.ptr.1.i199 = getelementptr inbounds i8, ptr %67, i64 20, !dbg !1636
    #dbg_value(ptr %incdec.ptr.1.i199, !1550, !DIExpression(), !1634)
  %72 = load i32, ptr %incdec.ptr16.i195, align 4, !dbg !1637
  %mul.1.i200 = mul nsw i32 %72, %9, !dbg !1638
  store i32 %mul.1.i200, ptr %incdec.ptr18.i197, align 4, !dbg !1639
  %incdec.ptr3.1.i202 = getelementptr inbounds i8, ptr %67, i64 24, !dbg !1640
    #dbg_value(ptr %incdec.ptr3.1.i202, !1550, !DIExpression(), !1634)
  %73 = load i32, ptr %incdec.ptr.1.i199, align 4, !dbg !1641
  %mul4.1.i203 = mul nsw i32 %73, %11, !dbg !1642
  %add.ptr6.1.i204 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 20, !dbg !1643
  store i32 %mul4.1.i203, ptr %add.ptr6.1.i204, align 4, !dbg !1644
  %incdec.ptr9.1.i206 = getelementptr inbounds i8, ptr %67, i64 28, !dbg !1645
    #dbg_value(ptr %incdec.ptr9.1.i206, !1550, !DIExpression(), !1634)
  %74 = load i32, ptr %incdec.ptr3.1.i202, align 4, !dbg !1646
  %mul10.1.i207 = mul nsw i32 %74, %13, !dbg !1647
  %add.ptr12.1.i208 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 24, !dbg !1648
  store i32 %mul10.1.i207, ptr %add.ptr12.1.i208, align 4, !dbg !1649
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1634)
  %incdec.ptr16.1.i211 = getelementptr inbounds i8, ptr %67, i64 32, !dbg !1650
    #dbg_value(ptr %incdec.ptr16.1.i211, !1550, !DIExpression(), !1634)
  %75 = load i32, ptr %incdec.ptr9.1.i206, align 4, !dbg !1651
  %mul17.1.i212 = mul nsw i32 %75, %15, !dbg !1652
  %incdec.ptr18.1.i213 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 32, !dbg !1653
    #dbg_value(ptr %incdec.ptr18.1.i213, !1548, !DIExpression(), !1634)
  %add.ptr20.1.i214 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 28, !dbg !1654
  store i32 %mul17.1.i212, ptr %add.ptr20.1.i214, align 4, !dbg !1655
    #dbg_value(i32 2, !1539, !DIExpression(), !1634)
  %incdec.ptr.2.i215 = getelementptr inbounds i8, ptr %67, i64 36, !dbg !1636
    #dbg_value(ptr %incdec.ptr.2.i215, !1550, !DIExpression(), !1634)
  %76 = load i32, ptr %incdec.ptr16.1.i211, align 4, !dbg !1637
  %mul.2.i216 = mul nsw i32 %76, %17, !dbg !1638
  store i32 %mul.2.i216, ptr %incdec.ptr18.1.i213, align 4, !dbg !1639
  %incdec.ptr3.2.i218 = getelementptr inbounds i8, ptr %67, i64 40, !dbg !1640
    #dbg_value(ptr %incdec.ptr3.2.i218, !1550, !DIExpression(), !1634)
  %77 = load i32, ptr %incdec.ptr.2.i215, align 4, !dbg !1641
  %mul4.2.i219 = mul nsw i32 %77, %19, !dbg !1642
  %add.ptr6.2.i220 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 36, !dbg !1643
  store i32 %mul4.2.i219, ptr %add.ptr6.2.i220, align 4, !dbg !1644
  %incdec.ptr9.2.i222 = getelementptr inbounds i8, ptr %67, i64 44, !dbg !1645
    #dbg_value(ptr %incdec.ptr9.2.i222, !1550, !DIExpression(), !1634)
  %78 = load i32, ptr %incdec.ptr3.2.i218, align 4, !dbg !1646
  %mul10.2.i223 = mul nsw i32 %78, %21, !dbg !1647
  %add.ptr12.2.i224 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 40, !dbg !1648
  store i32 %mul10.2.i223, ptr %add.ptr12.2.i224, align 4, !dbg !1649
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1634)
  %incdec.ptr16.2.i227 = getelementptr inbounds i8, ptr %67, i64 48, !dbg !1650
    #dbg_value(ptr %incdec.ptr16.2.i227, !1550, !DIExpression(), !1634)
  %79 = load i32, ptr %incdec.ptr9.2.i222, align 4, !dbg !1651
  %mul17.2.i228 = mul nsw i32 %79, %23, !dbg !1652
  %incdec.ptr18.2.i229 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 48, !dbg !1653
    #dbg_value(ptr %incdec.ptr18.2.i229, !1548, !DIExpression(), !1634)
  %add.ptr20.2.i230 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 44, !dbg !1654
  store i32 %mul17.2.i228, ptr %add.ptr20.2.i230, align 4, !dbg !1655
    #dbg_value(i32 3, !1539, !DIExpression(), !1634)
  %incdec.ptr.3.i231 = getelementptr inbounds i8, ptr %67, i64 52, !dbg !1636
    #dbg_value(ptr %incdec.ptr.3.i231, !1550, !DIExpression(), !1634)
  %80 = load i32, ptr %incdec.ptr16.2.i227, align 4, !dbg !1637
  %mul.3.i232 = mul nsw i32 %80, %25, !dbg !1638
  store i32 %mul.3.i232, ptr %incdec.ptr18.2.i229, align 4, !dbg !1639
  %incdec.ptr3.3.i234 = getelementptr inbounds i8, ptr %67, i64 56, !dbg !1640
    #dbg_value(ptr %incdec.ptr3.3.i234, !1550, !DIExpression(), !1634)
  %81 = load i32, ptr %incdec.ptr.3.i231, align 4, !dbg !1641
  %mul4.3.i235 = mul nsw i32 %81, %27, !dbg !1642
  %add.ptr6.3.i236 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 52, !dbg !1643
  store i32 %mul4.3.i235, ptr %add.ptr6.3.i236, align 4, !dbg !1644
  %incdec.ptr9.3.i238 = getelementptr inbounds i8, ptr %67, i64 60, !dbg !1645
    #dbg_value(ptr %incdec.ptr9.3.i238, !1550, !DIExpression(), !1634)
  %82 = load i32, ptr %incdec.ptr3.3.i234, align 4, !dbg !1646
  %mul10.3.i239 = mul nsw i32 %82, %29, !dbg !1647
  %add.ptr12.3.i240 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 56, !dbg !1648
  store i32 %mul10.3.i239, ptr %add.ptr12.3.i240, align 4, !dbg !1649
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1634)
    #dbg_value(ptr %incdec.ptr16.2.i227, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1634)
  %83 = load i32, ptr %incdec.ptr9.3.i238, align 4, !dbg !1651
  %mul17.3.i242 = mul nsw i32 %83, %31, !dbg !1652
    #dbg_value(ptr %incdec.ptr18.2.i229, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1634)
  %add.ptr20.3.i243 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_0.0371, i64 60, !dbg !1654
  store i32 %mul17.3.i242, ptr %add.ptr20.3.i243, align 4, !dbg !1655
    #dbg_value(i32 4, !1539, !DIExpression(), !1634)
  %incdec.ptr33 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 64, !dbg !1656
    #dbg_value(ptr %incdec.ptr33, !1524, !DIExpression(), !1526)
  %84 = load ptr, ptr %arrayidx37, align 8, !dbg !1657
    #dbg_value(i32 0, !1539, !DIExpression(), !1658)
    #dbg_value(ptr %84, !1550, !DIExpression(), !1658)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1658)
    #dbg_value(ptr %InvLevelScale4x4_Inter_1.0372, !1548, !DIExpression(), !1658)
  %incdec.ptr.i244 = getelementptr inbounds i8, ptr %84, i64 4, !dbg !1660
    #dbg_value(ptr %incdec.ptr.i244, !1550, !DIExpression(), !1658)
  %85 = load i32, ptr %84, align 4, !dbg !1661
  %mul.i245 = mul nsw i32 %85, %1, !dbg !1662
  store i32 %mul.i245, ptr %InvLevelScale4x4_Inter_1.0372, align 4, !dbg !1663
  %incdec.ptr3.i247 = getelementptr inbounds i8, ptr %84, i64 8, !dbg !1664
    #dbg_value(ptr %incdec.ptr3.i247, !1550, !DIExpression(), !1658)
  %86 = load i32, ptr %incdec.ptr.i244, align 4, !dbg !1665
  %mul4.i248 = mul nsw i32 %86, %3, !dbg !1666
  %add.ptr6.i249 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 4, !dbg !1667
  store i32 %mul4.i248, ptr %add.ptr6.i249, align 4, !dbg !1668
  %incdec.ptr9.i251 = getelementptr inbounds i8, ptr %84, i64 12, !dbg !1669
    #dbg_value(ptr %incdec.ptr9.i251, !1550, !DIExpression(), !1658)
  %87 = load i32, ptr %incdec.ptr3.i247, align 4, !dbg !1670
  %mul10.i252 = mul nsw i32 %87, %5, !dbg !1671
  %add.ptr12.i253 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 8, !dbg !1672
  store i32 %mul10.i252, ptr %add.ptr12.i253, align 4, !dbg !1673
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1658)
  %incdec.ptr16.i256 = getelementptr inbounds i8, ptr %84, i64 16, !dbg !1674
    #dbg_value(ptr %incdec.ptr16.i256, !1550, !DIExpression(), !1658)
  %88 = load i32, ptr %incdec.ptr9.i251, align 4, !dbg !1675
  %mul17.i257 = mul nsw i32 %88, %7, !dbg !1676
  %incdec.ptr18.i258 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 16, !dbg !1677
    #dbg_value(ptr %incdec.ptr18.i258, !1548, !DIExpression(), !1658)
  %add.ptr20.i259 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 12, !dbg !1678
  store i32 %mul17.i257, ptr %add.ptr20.i259, align 4, !dbg !1679
    #dbg_value(i32 1, !1539, !DIExpression(), !1658)
  %incdec.ptr.1.i260 = getelementptr inbounds i8, ptr %84, i64 20, !dbg !1660
    #dbg_value(ptr %incdec.ptr.1.i260, !1550, !DIExpression(), !1658)
  %89 = load i32, ptr %incdec.ptr16.i256, align 4, !dbg !1661
  %mul.1.i261 = mul nsw i32 %89, %9, !dbg !1662
  store i32 %mul.1.i261, ptr %incdec.ptr18.i258, align 4, !dbg !1663
  %incdec.ptr3.1.i263 = getelementptr inbounds i8, ptr %84, i64 24, !dbg !1664
    #dbg_value(ptr %incdec.ptr3.1.i263, !1550, !DIExpression(), !1658)
  %90 = load i32, ptr %incdec.ptr.1.i260, align 4, !dbg !1665
  %mul4.1.i264 = mul nsw i32 %90, %11, !dbg !1666
  %add.ptr6.1.i265 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 20, !dbg !1667
  store i32 %mul4.1.i264, ptr %add.ptr6.1.i265, align 4, !dbg !1668
  %incdec.ptr9.1.i267 = getelementptr inbounds i8, ptr %84, i64 28, !dbg !1669
    #dbg_value(ptr %incdec.ptr9.1.i267, !1550, !DIExpression(), !1658)
  %91 = load i32, ptr %incdec.ptr3.1.i263, align 4, !dbg !1670
  %mul10.1.i268 = mul nsw i32 %91, %13, !dbg !1671
  %add.ptr12.1.i269 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 24, !dbg !1672
  store i32 %mul10.1.i268, ptr %add.ptr12.1.i269, align 4, !dbg !1673
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1658)
  %incdec.ptr16.1.i272 = getelementptr inbounds i8, ptr %84, i64 32, !dbg !1674
    #dbg_value(ptr %incdec.ptr16.1.i272, !1550, !DIExpression(), !1658)
  %92 = load i32, ptr %incdec.ptr9.1.i267, align 4, !dbg !1675
  %mul17.1.i273 = mul nsw i32 %92, %15, !dbg !1676
  %incdec.ptr18.1.i274 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 32, !dbg !1677
    #dbg_value(ptr %incdec.ptr18.1.i274, !1548, !DIExpression(), !1658)
  %add.ptr20.1.i275 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 28, !dbg !1678
  store i32 %mul17.1.i273, ptr %add.ptr20.1.i275, align 4, !dbg !1679
    #dbg_value(i32 2, !1539, !DIExpression(), !1658)
  %incdec.ptr.2.i276 = getelementptr inbounds i8, ptr %84, i64 36, !dbg !1660
    #dbg_value(ptr %incdec.ptr.2.i276, !1550, !DIExpression(), !1658)
  %93 = load i32, ptr %incdec.ptr16.1.i272, align 4, !dbg !1661
  %mul.2.i277 = mul nsw i32 %93, %17, !dbg !1662
  store i32 %mul.2.i277, ptr %incdec.ptr18.1.i274, align 4, !dbg !1663
  %incdec.ptr3.2.i279 = getelementptr inbounds i8, ptr %84, i64 40, !dbg !1664
    #dbg_value(ptr %incdec.ptr3.2.i279, !1550, !DIExpression(), !1658)
  %94 = load i32, ptr %incdec.ptr.2.i276, align 4, !dbg !1665
  %mul4.2.i280 = mul nsw i32 %94, %19, !dbg !1666
  %add.ptr6.2.i281 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 36, !dbg !1667
  store i32 %mul4.2.i280, ptr %add.ptr6.2.i281, align 4, !dbg !1668
  %incdec.ptr9.2.i283 = getelementptr inbounds i8, ptr %84, i64 44, !dbg !1669
    #dbg_value(ptr %incdec.ptr9.2.i283, !1550, !DIExpression(), !1658)
  %95 = load i32, ptr %incdec.ptr3.2.i279, align 4, !dbg !1670
  %mul10.2.i284 = mul nsw i32 %95, %21, !dbg !1671
  %add.ptr12.2.i285 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 40, !dbg !1672
  store i32 %mul10.2.i284, ptr %add.ptr12.2.i285, align 4, !dbg !1673
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1658)
  %incdec.ptr16.2.i288 = getelementptr inbounds i8, ptr %84, i64 48, !dbg !1674
    #dbg_value(ptr %incdec.ptr16.2.i288, !1550, !DIExpression(), !1658)
  %96 = load i32, ptr %incdec.ptr9.2.i283, align 4, !dbg !1675
  %mul17.2.i289 = mul nsw i32 %96, %23, !dbg !1676
  %incdec.ptr18.2.i290 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 48, !dbg !1677
    #dbg_value(ptr %incdec.ptr18.2.i290, !1548, !DIExpression(), !1658)
  %add.ptr20.2.i291 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 44, !dbg !1678
  store i32 %mul17.2.i289, ptr %add.ptr20.2.i291, align 4, !dbg !1679
    #dbg_value(i32 3, !1539, !DIExpression(), !1658)
  %incdec.ptr.3.i292 = getelementptr inbounds i8, ptr %84, i64 52, !dbg !1660
    #dbg_value(ptr %incdec.ptr.3.i292, !1550, !DIExpression(), !1658)
  %97 = load i32, ptr %incdec.ptr16.2.i288, align 4, !dbg !1661
  %mul.3.i293 = mul nsw i32 %97, %25, !dbg !1662
  store i32 %mul.3.i293, ptr %incdec.ptr18.2.i290, align 4, !dbg !1663
  %incdec.ptr3.3.i295 = getelementptr inbounds i8, ptr %84, i64 56, !dbg !1664
    #dbg_value(ptr %incdec.ptr3.3.i295, !1550, !DIExpression(), !1658)
  %98 = load i32, ptr %incdec.ptr.3.i292, align 4, !dbg !1665
  %mul4.3.i296 = mul nsw i32 %98, %27, !dbg !1666
  %add.ptr6.3.i297 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 52, !dbg !1667
  store i32 %mul4.3.i296, ptr %add.ptr6.3.i297, align 4, !dbg !1668
  %incdec.ptr9.3.i299 = getelementptr inbounds i8, ptr %84, i64 60, !dbg !1669
    #dbg_value(ptr %incdec.ptr9.3.i299, !1550, !DIExpression(), !1658)
  %99 = load i32, ptr %incdec.ptr3.3.i295, align 4, !dbg !1670
  %mul10.3.i300 = mul nsw i32 %99, %29, !dbg !1671
  %add.ptr12.3.i301 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 56, !dbg !1672
  store i32 %mul10.3.i300, ptr %add.ptr12.3.i301, align 4, !dbg !1673
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1658)
    #dbg_value(ptr %incdec.ptr16.2.i288, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1658)
  %100 = load i32, ptr %incdec.ptr9.3.i299, align 4, !dbg !1675
  %mul17.3.i303 = mul nsw i32 %100, %31, !dbg !1676
    #dbg_value(ptr %incdec.ptr18.2.i290, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1658)
  %add.ptr20.3.i304 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_1.0372, i64 60, !dbg !1678
  store i32 %mul17.3.i303, ptr %add.ptr20.3.i304, align 4, !dbg !1679
    #dbg_value(i32 4, !1539, !DIExpression(), !1658)
  %incdec.ptr38 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 64, !dbg !1680
    #dbg_value(ptr %incdec.ptr38, !1525, !DIExpression(), !1526)
  %incdec.ptr40 = getelementptr inbounds i8, ptr %p_dequant_coef.0367, i64 64, !dbg !1681
    #dbg_value(ptr %incdec.ptr40, !1514, !DIExpression(), !1526)
  %101 = load ptr, ptr %arrayidx43, align 8, !dbg !1682
    #dbg_value(i32 0, !1539, !DIExpression(), !1683)
    #dbg_value(ptr %101, !1550, !DIExpression(), !1683)
    #dbg_value(ptr %p_dequant_coef.0367, !1549, !DIExpression(), !1683)
    #dbg_value(ptr %InvLevelScale4x4_Inter_2.0373, !1548, !DIExpression(), !1683)
  %incdec.ptr.i305 = getelementptr inbounds i8, ptr %101, i64 4, !dbg !1685
    #dbg_value(ptr %incdec.ptr.i305, !1550, !DIExpression(), !1683)
  %102 = load i32, ptr %101, align 4, !dbg !1686
  %mul.i306 = mul nsw i32 %102, %1, !dbg !1687
  store i32 %mul.i306, ptr %InvLevelScale4x4_Inter_2.0373, align 4, !dbg !1688
  %incdec.ptr3.i308 = getelementptr inbounds i8, ptr %101, i64 8, !dbg !1689
    #dbg_value(ptr %incdec.ptr3.i308, !1550, !DIExpression(), !1683)
  %103 = load i32, ptr %incdec.ptr.i305, align 4, !dbg !1690
  %mul4.i309 = mul nsw i32 %103, %3, !dbg !1691
  %add.ptr6.i310 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 4, !dbg !1692
  store i32 %mul4.i309, ptr %add.ptr6.i310, align 4, !dbg !1693
  %incdec.ptr9.i312 = getelementptr inbounds i8, ptr %101, i64 12, !dbg !1694
    #dbg_value(ptr %incdec.ptr9.i312, !1550, !DIExpression(), !1683)
  %104 = load i32, ptr %incdec.ptr3.i308, align 4, !dbg !1695
  %mul10.i313 = mul nsw i32 %104, %5, !dbg !1696
  %add.ptr12.i314 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 8, !dbg !1697
  store i32 %mul10.i313, ptr %add.ptr12.i314, align 4, !dbg !1698
    #dbg_value(ptr %incdec.ptr13.i, !1549, !DIExpression(), !1683)
  %incdec.ptr16.i317 = getelementptr inbounds i8, ptr %101, i64 16, !dbg !1699
    #dbg_value(ptr %incdec.ptr16.i317, !1550, !DIExpression(), !1683)
  %105 = load i32, ptr %incdec.ptr9.i312, align 4, !dbg !1700
  %mul17.i318 = mul nsw i32 %105, %7, !dbg !1701
  %incdec.ptr18.i319 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 16, !dbg !1702
    #dbg_value(ptr %incdec.ptr18.i319, !1548, !DIExpression(), !1683)
  %add.ptr20.i320 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 12, !dbg !1703
  store i32 %mul17.i318, ptr %add.ptr20.i320, align 4, !dbg !1704
    #dbg_value(i32 1, !1539, !DIExpression(), !1683)
  %incdec.ptr.1.i321 = getelementptr inbounds i8, ptr %101, i64 20, !dbg !1685
    #dbg_value(ptr %incdec.ptr.1.i321, !1550, !DIExpression(), !1683)
  %106 = load i32, ptr %incdec.ptr16.i317, align 4, !dbg !1686
  %mul.1.i322 = mul nsw i32 %106, %9, !dbg !1687
  store i32 %mul.1.i322, ptr %incdec.ptr18.i319, align 4, !dbg !1688
  %incdec.ptr3.1.i324 = getelementptr inbounds i8, ptr %101, i64 24, !dbg !1689
    #dbg_value(ptr %incdec.ptr3.1.i324, !1550, !DIExpression(), !1683)
  %107 = load i32, ptr %incdec.ptr.1.i321, align 4, !dbg !1690
  %mul4.1.i325 = mul nsw i32 %107, %11, !dbg !1691
  %add.ptr6.1.i326 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 20, !dbg !1692
  store i32 %mul4.1.i325, ptr %add.ptr6.1.i326, align 4, !dbg !1693
  %incdec.ptr9.1.i328 = getelementptr inbounds i8, ptr %101, i64 28, !dbg !1694
    #dbg_value(ptr %incdec.ptr9.1.i328, !1550, !DIExpression(), !1683)
  %108 = load i32, ptr %incdec.ptr3.1.i324, align 4, !dbg !1695
  %mul10.1.i329 = mul nsw i32 %108, %13, !dbg !1696
  %add.ptr12.1.i330 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 24, !dbg !1697
  store i32 %mul10.1.i329, ptr %add.ptr12.1.i330, align 4, !dbg !1698
    #dbg_value(ptr %incdec.ptr13.1.i, !1549, !DIExpression(), !1683)
  %incdec.ptr16.1.i333 = getelementptr inbounds i8, ptr %101, i64 32, !dbg !1699
    #dbg_value(ptr %incdec.ptr16.1.i333, !1550, !DIExpression(), !1683)
  %109 = load i32, ptr %incdec.ptr9.1.i328, align 4, !dbg !1700
  %mul17.1.i334 = mul nsw i32 %109, %15, !dbg !1701
  %incdec.ptr18.1.i335 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 32, !dbg !1702
    #dbg_value(ptr %incdec.ptr18.1.i335, !1548, !DIExpression(), !1683)
  %add.ptr20.1.i336 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 28, !dbg !1703
  store i32 %mul17.1.i334, ptr %add.ptr20.1.i336, align 4, !dbg !1704
    #dbg_value(i32 2, !1539, !DIExpression(), !1683)
  %incdec.ptr.2.i337 = getelementptr inbounds i8, ptr %101, i64 36, !dbg !1685
    #dbg_value(ptr %incdec.ptr.2.i337, !1550, !DIExpression(), !1683)
  %110 = load i32, ptr %incdec.ptr16.1.i333, align 4, !dbg !1686
  %mul.2.i338 = mul nsw i32 %110, %17, !dbg !1687
  store i32 %mul.2.i338, ptr %incdec.ptr18.1.i335, align 4, !dbg !1688
  %incdec.ptr3.2.i340 = getelementptr inbounds i8, ptr %101, i64 40, !dbg !1689
    #dbg_value(ptr %incdec.ptr3.2.i340, !1550, !DIExpression(), !1683)
  %111 = load i32, ptr %incdec.ptr.2.i337, align 4, !dbg !1690
  %mul4.2.i341 = mul nsw i32 %111, %19, !dbg !1691
  %add.ptr6.2.i342 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 36, !dbg !1692
  store i32 %mul4.2.i341, ptr %add.ptr6.2.i342, align 4, !dbg !1693
  %incdec.ptr9.2.i344 = getelementptr inbounds i8, ptr %101, i64 44, !dbg !1694
    #dbg_value(ptr %incdec.ptr9.2.i344, !1550, !DIExpression(), !1683)
  %112 = load i32, ptr %incdec.ptr3.2.i340, align 4, !dbg !1695
  %mul10.2.i345 = mul nsw i32 %112, %21, !dbg !1696
  %add.ptr12.2.i346 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 40, !dbg !1697
  store i32 %mul10.2.i345, ptr %add.ptr12.2.i346, align 4, !dbg !1698
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(), !1683)
  %incdec.ptr16.2.i349 = getelementptr inbounds i8, ptr %101, i64 48, !dbg !1699
    #dbg_value(ptr %incdec.ptr16.2.i349, !1550, !DIExpression(), !1683)
  %113 = load i32, ptr %incdec.ptr9.2.i344, align 4, !dbg !1700
  %mul17.2.i350 = mul nsw i32 %113, %23, !dbg !1701
  %incdec.ptr18.2.i351 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 48, !dbg !1702
    #dbg_value(ptr %incdec.ptr18.2.i351, !1548, !DIExpression(), !1683)
  %add.ptr20.2.i352 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 44, !dbg !1703
  store i32 %mul17.2.i350, ptr %add.ptr20.2.i352, align 4, !dbg !1704
    #dbg_value(i32 3, !1539, !DIExpression(), !1683)
  %incdec.ptr.3.i353 = getelementptr inbounds i8, ptr %101, i64 52, !dbg !1685
    #dbg_value(ptr %incdec.ptr.3.i353, !1550, !DIExpression(), !1683)
  %114 = load i32, ptr %incdec.ptr16.2.i349, align 4, !dbg !1686
  %mul.3.i354 = mul nsw i32 %114, %25, !dbg !1687
  store i32 %mul.3.i354, ptr %incdec.ptr18.2.i351, align 4, !dbg !1688
  %incdec.ptr3.3.i356 = getelementptr inbounds i8, ptr %101, i64 56, !dbg !1689
    #dbg_value(ptr %incdec.ptr3.3.i356, !1550, !DIExpression(), !1683)
  %115 = load i32, ptr %incdec.ptr.3.i353, align 4, !dbg !1690
  %mul4.3.i357 = mul nsw i32 %115, %27, !dbg !1691
  %add.ptr6.3.i358 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 52, !dbg !1692
  store i32 %mul4.3.i357, ptr %add.ptr6.3.i358, align 4, !dbg !1693
  %incdec.ptr9.3.i360 = getelementptr inbounds i8, ptr %101, i64 60, !dbg !1694
    #dbg_value(ptr %incdec.ptr9.3.i360, !1550, !DIExpression(), !1683)
  %116 = load i32, ptr %incdec.ptr3.3.i356, align 4, !dbg !1695
  %mul10.3.i361 = mul nsw i32 %116, %29, !dbg !1696
  %add.ptr12.3.i362 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 56, !dbg !1697
  store i32 %mul10.3.i361, ptr %add.ptr12.3.i362, align 4, !dbg !1698
    #dbg_value(ptr %incdec.ptr13.2.i, !1549, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1683)
    #dbg_value(ptr %incdec.ptr16.2.i349, !1550, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1683)
  %117 = load i32, ptr %incdec.ptr9.3.i360, align 4, !dbg !1700
  %mul17.3.i364 = mul nsw i32 %117, %31, !dbg !1701
    #dbg_value(ptr %incdec.ptr18.2.i351, !1548, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !1683)
  %add.ptr20.3.i365 = getelementptr inbounds i8, ptr %InvLevelScale4x4_Inter_2.0373, i64 60, !dbg !1703
  store i32 %mul17.3.i364, ptr %add.ptr20.3.i365, align 4, !dbg !1704
    #dbg_value(i32 4, !1539, !DIExpression(), !1683)
  %inc = add nuw nsw i32 %k.0366, 1, !dbg !1705
    #dbg_value(i32 %inc, !1513, !DIExpression(), !1526)
  %exitcond.not = icmp eq i32 %inc, 6, !dbg !1706
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1533, !llvm.loop !1707

for.end:                                          ; preds = %for.body
  ret void, !dbg !1709
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CalculateQuant8x8Param(ptr nocapture noundef %currSlice) local_unnamed_addr #6 !dbg !1710 {
entry:
    #dbg_value(ptr %currSlice, !1712, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
  %InvLevelScale8x8_Intra = getelementptr inbounds i8, ptr %currSlice, i64 3696, !dbg !1727
    #dbg_value(ptr %InvLevelScale8x8_Intra, !1718, !DIExpression(), !1726)
    #dbg_value(ptr %currSlice, !1721, !DIExpression(DW_OP_plus_uconst, 5232, DW_OP_stack_value), !1726)
    #dbg_value(ptr %currSlice, !1722, !DIExpression(DW_OP_plus_uconst, 6768, DW_OP_stack_value), !1726)
  %InvLevelScale8x8_Inter = getelementptr inbounds i8, ptr %currSlice, i64 8304, !dbg !1728
    #dbg_value(ptr %InvLevelScale8x8_Inter, !1723, !DIExpression(), !1726)
    #dbg_value(ptr %currSlice, !1724, !DIExpression(DW_OP_plus_uconst, 9840, DW_OP_stack_value), !1726)
    #dbg_value(ptr %currSlice, !1725, !DIExpression(DW_OP_plus_uconst, 11376, DW_OP_stack_value), !1726)
    #dbg_value(i32 0, !1713, !DIExpression(), !1726)
  %arrayidx17 = getelementptr inbounds i8, ptr %currSlice, i64 12960
  %arrayidx23 = getelementptr inbounds i8, ptr %currSlice, i64 12968
    #dbg_value(ptr %InvLevelScale8x8_Inter, !1723, !DIExpression(), !1726)
    #dbg_value(ptr %InvLevelScale8x8_Intra, !1718, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
    #dbg_value(i32 0, !1713, !DIExpression(), !1726)
    #dbg_value(ptr %InvLevelScale8x8_Inter, !1723, !DIExpression(), !1726)
    #dbg_value(ptr %InvLevelScale8x8_Intra, !1718, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
    #dbg_value(i32 0, !1713, !DIExpression(), !1726)
  %incdec.ptr = getelementptr inbounds i8, ptr %currSlice, i64 3952, !dbg !1729
    #dbg_value(ptr %incdec.ptr, !1718, !DIExpression(), !1726)
  %0 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %InvLevelScale8x8_Intra, ptr noundef nonnull @dequant_coef8, ptr noundef %0), !dbg !1734
  %incdec.ptr18 = getelementptr inbounds i8, ptr %currSlice, i64 8560, !dbg !1735
    #dbg_value(ptr %incdec.ptr18, !1723, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), !1714, !DIExpression(), !1726)
  %1 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %InvLevelScale8x8_Inter, ptr noundef nonnull @dequant_coef8, ptr noundef %1), !dbg !1737
    #dbg_value(i32 1, !1713, !DIExpression(), !1726)
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %currSlice, i64 4208, !dbg !1729
    #dbg_value(ptr %incdec.ptr.1, !1718, !DIExpression(), !1726)
  %2 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %2), !dbg !1734
  %incdec.ptr18.1 = getelementptr inbounds i8, ptr %currSlice, i64 8816, !dbg !1735
    #dbg_value(ptr %incdec.ptr18.1, !1723, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), !1714, !DIExpression(), !1726)
  %3 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %3), !dbg !1737
    #dbg_value(i32 2, !1713, !DIExpression(), !1726)
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %currSlice, i64 4464, !dbg !1729
    #dbg_value(ptr %incdec.ptr.2, !1718, !DIExpression(), !1726)
  %4 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %4), !dbg !1734
  %incdec.ptr18.2 = getelementptr inbounds i8, ptr %currSlice, i64 9072, !dbg !1735
    #dbg_value(ptr %incdec.ptr18.2, !1723, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), !1714, !DIExpression(), !1726)
  %5 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %5), !dbg !1737
    #dbg_value(i32 3, !1713, !DIExpression(), !1726)
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %currSlice, i64 4720, !dbg !1729
    #dbg_value(ptr %incdec.ptr.3, !1718, !DIExpression(), !1726)
  %6 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %6), !dbg !1734
  %incdec.ptr18.3 = getelementptr inbounds i8, ptr %currSlice, i64 9328, !dbg !1735
    #dbg_value(ptr %incdec.ptr18.3, !1723, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), !1714, !DIExpression(), !1726)
  %7 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %7), !dbg !1737
    #dbg_value(i32 4, !1713, !DIExpression(), !1726)
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %currSlice, i64 4976, !dbg !1729
    #dbg_value(ptr %incdec.ptr.4, !1718, !DIExpression(), !1726)
  %8 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %8), !dbg !1734
  %incdec.ptr18.4 = getelementptr inbounds i8, ptr %currSlice, i64 9584, !dbg !1735
    #dbg_value(ptr %incdec.ptr18.4, !1723, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), !1714, !DIExpression(), !1726)
  %9 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %9), !dbg !1737
    #dbg_value(i32 5, !1713, !DIExpression(), !1726)
    #dbg_value(ptr %incdec.ptr.4, !1718, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
  %10 = load ptr, ptr %arrayidx17, align 8, !dbg !1733
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %10), !dbg !1734
    #dbg_value(ptr %incdec.ptr18.4, !1723, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
    #dbg_value(ptr poison, !1714, !DIExpression(), !1726)
  %11 = load ptr, ptr %arrayidx23, align 8, !dbg !1736
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr18.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %11), !dbg !1737
    #dbg_value(i32 6, !1713, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
  %active_sps = getelementptr inbounds i8, ptr %currSlice, i64 24, !dbg !1738
  %12 = load ptr, ptr %active_sps, align 8, !dbg !1738
  %chroma_format_idc = getelementptr inbounds i8, ptr %12, i64 36, !dbg !1740
  %13 = load i32, ptr %chroma_format_idc, align 4, !dbg !1740
  %cmp24 = icmp eq i32 %13, 3, !dbg !1741
  br i1 %cmp24, label %for.cond25.preheader, label %if.end, !dbg !1742

for.cond25.preheader:                             ; preds = %entry
  %arrayidx13 = getelementptr inbounds i8, ptr %currSlice, i64 11376, !dbg !1743
    #dbg_value(ptr %arrayidx13, !1725, !DIExpression(), !1726)
  %arrayidx5 = getelementptr inbounds i8, ptr %currSlice, i64 6768, !dbg !1744
    #dbg_value(ptr %arrayidx5, !1722, !DIExpression(), !1726)
  %arrayidx10 = getelementptr inbounds i8, ptr %currSlice, i64 9840, !dbg !1745
    #dbg_value(ptr %arrayidx10, !1724, !DIExpression(), !1726)
  %arrayidx2 = getelementptr inbounds i8, ptr %currSlice, i64 5232, !dbg !1746
    #dbg_value(ptr %arrayidx2, !1721, !DIExpression(), !1726)
  %arrayidx32 = getelementptr inbounds i8, ptr %currSlice, i64 12976
  %arrayidx37 = getelementptr inbounds i8, ptr %currSlice, i64 12984
  %arrayidx42 = getelementptr inbounds i8, ptr %currSlice, i64 12992
  %arrayidx48 = getelementptr inbounds i8, ptr %currSlice, i64 13000
    #dbg_value(ptr %arrayidx13, !1725, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx10, !1724, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx5, !1722, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx2, !1721, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
    #dbg_value(i32 0, !1713, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx13, !1725, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx10, !1724, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx5, !1722, !DIExpression(), !1726)
    #dbg_value(ptr %arrayidx2, !1721, !DIExpression(), !1726)
    #dbg_value(ptr @dequant_coef8, !1714, !DIExpression(), !1726)
    #dbg_value(i32 0, !1713, !DIExpression(), !1726)
  %incdec.ptr28 = getelementptr inbounds i8, ptr %currSlice, i64 5488, !dbg !1747
    #dbg_value(ptr %incdec.ptr28, !1721, !DIExpression(), !1726)
  %14 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx2, ptr noundef nonnull @dequant_coef8, ptr noundef %14), !dbg !1753
  %incdec.ptr33 = getelementptr inbounds i8, ptr %currSlice, i64 10096, !dbg !1754
    #dbg_value(ptr %incdec.ptr33, !1724, !DIExpression(), !1726)
  %15 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx10, ptr noundef nonnull @dequant_coef8, ptr noundef %15), !dbg !1756
  %incdec.ptr38 = getelementptr inbounds i8, ptr %currSlice, i64 7024, !dbg !1757
    #dbg_value(ptr %incdec.ptr38, !1722, !DIExpression(), !1726)
  %16 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx5, ptr noundef nonnull @dequant_coef8, ptr noundef %16), !dbg !1759
  %incdec.ptr43 = getelementptr inbounds i8, ptr %currSlice, i64 11632, !dbg !1760
    #dbg_value(ptr %incdec.ptr43, !1725, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), !1714, !DIExpression(), !1726)
  %17 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %arrayidx13, ptr noundef nonnull @dequant_coef8, ptr noundef %17), !dbg !1762
    #dbg_value(i32 1, !1713, !DIExpression(), !1726)
  %incdec.ptr28.1 = getelementptr inbounds i8, ptr %currSlice, i64 5744, !dbg !1747
    #dbg_value(ptr %incdec.ptr28.1, !1721, !DIExpression(), !1726)
  %18 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %18), !dbg !1753
  %incdec.ptr33.1 = getelementptr inbounds i8, ptr %currSlice, i64 10352, !dbg !1754
    #dbg_value(ptr %incdec.ptr33.1, !1724, !DIExpression(), !1726)
  %19 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %19), !dbg !1756
  %incdec.ptr38.1 = getelementptr inbounds i8, ptr %currSlice, i64 7280, !dbg !1757
    #dbg_value(ptr %incdec.ptr38.1, !1722, !DIExpression(), !1726)
  %20 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %20), !dbg !1759
  %incdec.ptr43.1 = getelementptr inbounds i8, ptr %currSlice, i64 11888, !dbg !1760
    #dbg_value(ptr %incdec.ptr43.1, !1725, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), !1714, !DIExpression(), !1726)
  %21 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 256), ptr noundef %21), !dbg !1762
    #dbg_value(i32 2, !1713, !DIExpression(), !1726)
  %incdec.ptr28.2 = getelementptr inbounds i8, ptr %currSlice, i64 6000, !dbg !1747
    #dbg_value(ptr %incdec.ptr28.2, !1721, !DIExpression(), !1726)
  %22 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %22), !dbg !1753
  %incdec.ptr33.2 = getelementptr inbounds i8, ptr %currSlice, i64 10608, !dbg !1754
    #dbg_value(ptr %incdec.ptr33.2, !1724, !DIExpression(), !1726)
  %23 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %23), !dbg !1756
  %incdec.ptr38.2 = getelementptr inbounds i8, ptr %currSlice, i64 7536, !dbg !1757
    #dbg_value(ptr %incdec.ptr38.2, !1722, !DIExpression(), !1726)
  %24 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %24), !dbg !1759
  %incdec.ptr43.2 = getelementptr inbounds i8, ptr %currSlice, i64 12144, !dbg !1760
    #dbg_value(ptr %incdec.ptr43.2, !1725, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), !1714, !DIExpression(), !1726)
  %25 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.1, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 512), ptr noundef %25), !dbg !1762
    #dbg_value(i32 3, !1713, !DIExpression(), !1726)
  %incdec.ptr28.3 = getelementptr inbounds i8, ptr %currSlice, i64 6256, !dbg !1747
    #dbg_value(ptr %incdec.ptr28.3, !1721, !DIExpression(), !1726)
  %26 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %26), !dbg !1753
  %incdec.ptr33.3 = getelementptr inbounds i8, ptr %currSlice, i64 10864, !dbg !1754
    #dbg_value(ptr %incdec.ptr33.3, !1724, !DIExpression(), !1726)
  %27 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %27), !dbg !1756
  %incdec.ptr38.3 = getelementptr inbounds i8, ptr %currSlice, i64 7792, !dbg !1757
    #dbg_value(ptr %incdec.ptr38.3, !1722, !DIExpression(), !1726)
  %28 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %28), !dbg !1759
  %incdec.ptr43.3 = getelementptr inbounds i8, ptr %currSlice, i64 12400, !dbg !1760
    #dbg_value(ptr %incdec.ptr43.3, !1725, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), !1714, !DIExpression(), !1726)
  %29 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.2, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 768), ptr noundef %29), !dbg !1762
    #dbg_value(i32 4, !1713, !DIExpression(), !1726)
  %incdec.ptr28.4 = getelementptr inbounds i8, ptr %currSlice, i64 6512, !dbg !1747
    #dbg_value(ptr %incdec.ptr28.4, !1721, !DIExpression(), !1726)
  %30 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %30), !dbg !1753
  %incdec.ptr33.4 = getelementptr inbounds i8, ptr %currSlice, i64 11120, !dbg !1754
    #dbg_value(ptr %incdec.ptr33.4, !1724, !DIExpression(), !1726)
  %31 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %31), !dbg !1756
  %incdec.ptr38.4 = getelementptr inbounds i8, ptr %currSlice, i64 8048, !dbg !1757
    #dbg_value(ptr %incdec.ptr38.4, !1722, !DIExpression(), !1726)
  %32 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %32), !dbg !1759
  %incdec.ptr43.4 = getelementptr inbounds i8, ptr %currSlice, i64 12656, !dbg !1760
    #dbg_value(ptr %incdec.ptr43.4, !1725, !DIExpression(), !1726)
    #dbg_value(ptr getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), !1714, !DIExpression(), !1726)
  %33 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.3, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1024), ptr noundef %33), !dbg !1762
    #dbg_value(i32 5, !1713, !DIExpression(), !1726)
    #dbg_value(ptr %incdec.ptr28.4, !1721, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
  %34 = load ptr, ptr %arrayidx32, align 8, !dbg !1752
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr28.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %34), !dbg !1753
    #dbg_value(ptr %incdec.ptr33.4, !1724, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
  %35 = load ptr, ptr %arrayidx37, align 8, !dbg !1755
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr33.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %35), !dbg !1756
    #dbg_value(ptr %incdec.ptr38.4, !1722, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
  %36 = load ptr, ptr %arrayidx42, align 8, !dbg !1758
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr38.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %36), !dbg !1759
    #dbg_value(ptr %incdec.ptr43.4, !1725, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !1726)
    #dbg_value(ptr poison, !1714, !DIExpression(), !1726)
  %37 = load ptr, ptr %arrayidx48, align 8, !dbg !1761
  tail call fastcc void @set_dequant8x8(ptr noundef nonnull %incdec.ptr43.4, ptr noundef nonnull getelementptr inbounds (i8, ptr @dequant_coef8, i64 1280), ptr noundef %37), !dbg !1762
    #dbg_value(i32 6, !1713, !DIExpression(), !1726)
  br label %if.end, !dbg !1763

if.end:                                           ; preds = %for.cond25.preheader, %entry
  ret void, !dbg !1763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_dequant8x8(ptr nocapture noundef writeonly %InvLevelScale8x8, ptr nocapture noundef readonly %dequant, ptr nocapture noundef readonly %qmatrix) unnamed_addr #7 !dbg !1764 {
entry:
    #dbg_value(ptr %InvLevelScale8x8, !1772, !DIExpression(), !1776)
    #dbg_value(ptr %dequant, !1773, !DIExpression(), !1776)
    #dbg_value(ptr %qmatrix, !1774, !DIExpression(), !1776)
    #dbg_value(i32 0, !1775, !DIExpression(), !1776)
    #dbg_value(i32 0, !1775, !DIExpression(), !1776)
    #dbg_value(ptr %qmatrix, !1774, !DIExpression(), !1776)
    #dbg_value(ptr %dequant, !1773, !DIExpression(), !1776)
    #dbg_value(ptr %InvLevelScale8x8, !1772, !DIExpression(), !1776)
  %0 = load i32, ptr %dequant, align 4, !dbg !1777
  %incdec.ptr = getelementptr inbounds i8, ptr %qmatrix, i64 4, !dbg !1781
    #dbg_value(ptr %incdec.ptr, !1774, !DIExpression(), !1776)
  %1 = load i32, ptr %qmatrix, align 4, !dbg !1782
  %mul = mul nsw i32 %1, %0, !dbg !1783
  store i32 %mul, ptr %InvLevelScale8x8, align 4, !dbg !1784
  %add.ptr = getelementptr inbounds i8, ptr %dequant, i64 4, !dbg !1785
  %2 = load i32, ptr %add.ptr, align 4, !dbg !1786
  %incdec.ptr3 = getelementptr inbounds i8, ptr %qmatrix, i64 8, !dbg !1787
    #dbg_value(ptr %incdec.ptr3, !1774, !DIExpression(), !1776)
  %3 = load i32, ptr %incdec.ptr, align 4, !dbg !1788
  %mul4 = mul nsw i32 %3, %2, !dbg !1789
  %add.ptr6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 4, !dbg !1790
  store i32 %mul4, ptr %add.ptr6, align 4, !dbg !1791
  %add.ptr8 = getelementptr inbounds i8, ptr %dequant, i64 8, !dbg !1792
  %4 = load i32, ptr %add.ptr8, align 4, !dbg !1793
  %incdec.ptr9 = getelementptr inbounds i8, ptr %qmatrix, i64 12, !dbg !1794
    #dbg_value(ptr %incdec.ptr9, !1774, !DIExpression(), !1776)
  %5 = load i32, ptr %incdec.ptr3, align 4, !dbg !1795
  %mul10 = mul nsw i32 %5, %4, !dbg !1796
  %add.ptr12 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 8, !dbg !1797
  store i32 %mul10, ptr %add.ptr12, align 4, !dbg !1798
  %add.ptr14 = getelementptr inbounds i8, ptr %dequant, i64 12, !dbg !1799
  %6 = load i32, ptr %add.ptr14, align 4, !dbg !1800
  %incdec.ptr15 = getelementptr inbounds i8, ptr %qmatrix, i64 16, !dbg !1801
    #dbg_value(ptr %incdec.ptr15, !1774, !DIExpression(), !1776)
  %7 = load i32, ptr %incdec.ptr9, align 4, !dbg !1802
  %mul16 = mul nsw i32 %7, %6, !dbg !1803
  %add.ptr18 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 12, !dbg !1804
  store i32 %mul16, ptr %add.ptr18, align 4, !dbg !1805
  %add.ptr20 = getelementptr inbounds i8, ptr %dequant, i64 16, !dbg !1806
  %8 = load i32, ptr %add.ptr20, align 4, !dbg !1807
  %incdec.ptr21 = getelementptr inbounds i8, ptr %qmatrix, i64 20, !dbg !1808
    #dbg_value(ptr %incdec.ptr21, !1774, !DIExpression(), !1776)
  %9 = load i32, ptr %incdec.ptr15, align 4, !dbg !1809
  %mul22 = mul nsw i32 %9, %8, !dbg !1810
  %add.ptr24 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 16, !dbg !1811
  store i32 %mul22, ptr %add.ptr24, align 4, !dbg !1812
  %add.ptr26 = getelementptr inbounds i8, ptr %dequant, i64 20, !dbg !1813
  %10 = load i32, ptr %add.ptr26, align 4, !dbg !1814
  %incdec.ptr27 = getelementptr inbounds i8, ptr %qmatrix, i64 24, !dbg !1815
    #dbg_value(ptr %incdec.ptr27, !1774, !DIExpression(), !1776)
  %11 = load i32, ptr %incdec.ptr21, align 4, !dbg !1816
  %mul28 = mul nsw i32 %11, %10, !dbg !1817
  %add.ptr30 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 20, !dbg !1818
  store i32 %mul28, ptr %add.ptr30, align 4, !dbg !1819
  %add.ptr32 = getelementptr inbounds i8, ptr %dequant, i64 24, !dbg !1820
  %12 = load i32, ptr %add.ptr32, align 4, !dbg !1821
  %incdec.ptr33 = getelementptr inbounds i8, ptr %qmatrix, i64 28, !dbg !1822
    #dbg_value(ptr %incdec.ptr33, !1774, !DIExpression(), !1776)
  %13 = load i32, ptr %incdec.ptr27, align 4, !dbg !1823
  %mul34 = mul nsw i32 %13, %12, !dbg !1824
  %add.ptr36 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 24, !dbg !1825
  store i32 %mul34, ptr %add.ptr36, align 4, !dbg !1826
  %incdec.ptr37 = getelementptr inbounds i8, ptr %dequant, i64 32, !dbg !1827
    #dbg_value(ptr %incdec.ptr37, !1773, !DIExpression(), !1776)
  %add.ptr39 = getelementptr inbounds i8, ptr %dequant, i64 28, !dbg !1828
  %14 = load i32, ptr %add.ptr39, align 4, !dbg !1829
  %incdec.ptr40 = getelementptr inbounds i8, ptr %qmatrix, i64 32, !dbg !1830
    #dbg_value(ptr %incdec.ptr40, !1774, !DIExpression(), !1776)
  %15 = load i32, ptr %incdec.ptr33, align 4, !dbg !1831
  %mul41 = mul nsw i32 %15, %14, !dbg !1832
  %incdec.ptr42 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 32, !dbg !1833
    #dbg_value(ptr %incdec.ptr42, !1772, !DIExpression(), !1776)
  %add.ptr44 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 28, !dbg !1834
  store i32 %mul41, ptr %add.ptr44, align 4, !dbg !1835
    #dbg_value(i32 1, !1775, !DIExpression(), !1776)
  %16 = load i32, ptr %incdec.ptr37, align 4, !dbg !1777
  %incdec.ptr.1 = getelementptr inbounds i8, ptr %qmatrix, i64 36, !dbg !1781
    #dbg_value(ptr %incdec.ptr.1, !1774, !DIExpression(), !1776)
  %17 = load i32, ptr %incdec.ptr40, align 4, !dbg !1782
  %mul.1 = mul nsw i32 %17, %16, !dbg !1783
  store i32 %mul.1, ptr %incdec.ptr42, align 4, !dbg !1784
  %add.ptr.1 = getelementptr inbounds i8, ptr %dequant, i64 36, !dbg !1785
  %18 = load i32, ptr %add.ptr.1, align 4, !dbg !1786
  %incdec.ptr3.1 = getelementptr inbounds i8, ptr %qmatrix, i64 40, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.1, !1774, !DIExpression(), !1776)
  %19 = load i32, ptr %incdec.ptr.1, align 4, !dbg !1788
  %mul4.1 = mul nsw i32 %19, %18, !dbg !1789
  %add.ptr6.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 36, !dbg !1790
  store i32 %mul4.1, ptr %add.ptr6.1, align 4, !dbg !1791
  %add.ptr8.1 = getelementptr inbounds i8, ptr %dequant, i64 40, !dbg !1792
  %20 = load i32, ptr %add.ptr8.1, align 4, !dbg !1793
  %incdec.ptr9.1 = getelementptr inbounds i8, ptr %qmatrix, i64 44, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.1, !1774, !DIExpression(), !1776)
  %21 = load i32, ptr %incdec.ptr3.1, align 4, !dbg !1795
  %mul10.1 = mul nsw i32 %21, %20, !dbg !1796
  %add.ptr12.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 40, !dbg !1797
  store i32 %mul10.1, ptr %add.ptr12.1, align 4, !dbg !1798
  %add.ptr14.1 = getelementptr inbounds i8, ptr %dequant, i64 44, !dbg !1799
  %22 = load i32, ptr %add.ptr14.1, align 4, !dbg !1800
  %incdec.ptr15.1 = getelementptr inbounds i8, ptr %qmatrix, i64 48, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.1, !1774, !DIExpression(), !1776)
  %23 = load i32, ptr %incdec.ptr9.1, align 4, !dbg !1802
  %mul16.1 = mul nsw i32 %23, %22, !dbg !1803
  %add.ptr18.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 44, !dbg !1804
  store i32 %mul16.1, ptr %add.ptr18.1, align 4, !dbg !1805
  %add.ptr20.1 = getelementptr inbounds i8, ptr %dequant, i64 48, !dbg !1806
  %24 = load i32, ptr %add.ptr20.1, align 4, !dbg !1807
  %incdec.ptr21.1 = getelementptr inbounds i8, ptr %qmatrix, i64 52, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.1, !1774, !DIExpression(), !1776)
  %25 = load i32, ptr %incdec.ptr15.1, align 4, !dbg !1809
  %mul22.1 = mul nsw i32 %25, %24, !dbg !1810
  %add.ptr24.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 48, !dbg !1811
  store i32 %mul22.1, ptr %add.ptr24.1, align 4, !dbg !1812
  %add.ptr26.1 = getelementptr inbounds i8, ptr %dequant, i64 52, !dbg !1813
  %26 = load i32, ptr %add.ptr26.1, align 4, !dbg !1814
  %incdec.ptr27.1 = getelementptr inbounds i8, ptr %qmatrix, i64 56, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.1, !1774, !DIExpression(), !1776)
  %27 = load i32, ptr %incdec.ptr21.1, align 4, !dbg !1816
  %mul28.1 = mul nsw i32 %27, %26, !dbg !1817
  %add.ptr30.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 52, !dbg !1818
  store i32 %mul28.1, ptr %add.ptr30.1, align 4, !dbg !1819
  %add.ptr32.1 = getelementptr inbounds i8, ptr %dequant, i64 56, !dbg !1820
  %28 = load i32, ptr %add.ptr32.1, align 4, !dbg !1821
  %incdec.ptr33.1 = getelementptr inbounds i8, ptr %qmatrix, i64 60, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.1, !1774, !DIExpression(), !1776)
  %29 = load i32, ptr %incdec.ptr27.1, align 4, !dbg !1823
  %mul34.1 = mul nsw i32 %29, %28, !dbg !1824
  %add.ptr36.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 56, !dbg !1825
  store i32 %mul34.1, ptr %add.ptr36.1, align 4, !dbg !1826
  %incdec.ptr37.1 = getelementptr inbounds i8, ptr %dequant, i64 64, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.1, !1773, !DIExpression(), !1776)
  %add.ptr39.1 = getelementptr inbounds i8, ptr %dequant, i64 60, !dbg !1828
  %30 = load i32, ptr %add.ptr39.1, align 4, !dbg !1829
  %incdec.ptr40.1 = getelementptr inbounds i8, ptr %qmatrix, i64 64, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.1, !1774, !DIExpression(), !1776)
  %31 = load i32, ptr %incdec.ptr33.1, align 4, !dbg !1831
  %mul41.1 = mul nsw i32 %31, %30, !dbg !1832
  %incdec.ptr42.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 64, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.1, !1772, !DIExpression(), !1776)
  %add.ptr44.1 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 60, !dbg !1834
  store i32 %mul41.1, ptr %add.ptr44.1, align 4, !dbg !1835
    #dbg_value(i32 2, !1775, !DIExpression(), !1776)
  %32 = load i32, ptr %incdec.ptr37.1, align 4, !dbg !1777
  %incdec.ptr.2 = getelementptr inbounds i8, ptr %qmatrix, i64 68, !dbg !1781
    #dbg_value(ptr %incdec.ptr.2, !1774, !DIExpression(), !1776)
  %33 = load i32, ptr %incdec.ptr40.1, align 4, !dbg !1782
  %mul.2 = mul nsw i32 %33, %32, !dbg !1783
  store i32 %mul.2, ptr %incdec.ptr42.1, align 4, !dbg !1784
  %add.ptr.2 = getelementptr inbounds i8, ptr %dequant, i64 68, !dbg !1785
  %34 = load i32, ptr %add.ptr.2, align 4, !dbg !1786
  %incdec.ptr3.2 = getelementptr inbounds i8, ptr %qmatrix, i64 72, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.2, !1774, !DIExpression(), !1776)
  %35 = load i32, ptr %incdec.ptr.2, align 4, !dbg !1788
  %mul4.2 = mul nsw i32 %35, %34, !dbg !1789
  %add.ptr6.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 68, !dbg !1790
  store i32 %mul4.2, ptr %add.ptr6.2, align 4, !dbg !1791
  %add.ptr8.2 = getelementptr inbounds i8, ptr %dequant, i64 72, !dbg !1792
  %36 = load i32, ptr %add.ptr8.2, align 4, !dbg !1793
  %incdec.ptr9.2 = getelementptr inbounds i8, ptr %qmatrix, i64 76, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.2, !1774, !DIExpression(), !1776)
  %37 = load i32, ptr %incdec.ptr3.2, align 4, !dbg !1795
  %mul10.2 = mul nsw i32 %37, %36, !dbg !1796
  %add.ptr12.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 72, !dbg !1797
  store i32 %mul10.2, ptr %add.ptr12.2, align 4, !dbg !1798
  %add.ptr14.2 = getelementptr inbounds i8, ptr %dequant, i64 76, !dbg !1799
  %38 = load i32, ptr %add.ptr14.2, align 4, !dbg !1800
  %incdec.ptr15.2 = getelementptr inbounds i8, ptr %qmatrix, i64 80, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.2, !1774, !DIExpression(), !1776)
  %39 = load i32, ptr %incdec.ptr9.2, align 4, !dbg !1802
  %mul16.2 = mul nsw i32 %39, %38, !dbg !1803
  %add.ptr18.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 76, !dbg !1804
  store i32 %mul16.2, ptr %add.ptr18.2, align 4, !dbg !1805
  %add.ptr20.2 = getelementptr inbounds i8, ptr %dequant, i64 80, !dbg !1806
  %40 = load i32, ptr %add.ptr20.2, align 4, !dbg !1807
  %incdec.ptr21.2 = getelementptr inbounds i8, ptr %qmatrix, i64 84, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.2, !1774, !DIExpression(), !1776)
  %41 = load i32, ptr %incdec.ptr15.2, align 4, !dbg !1809
  %mul22.2 = mul nsw i32 %41, %40, !dbg !1810
  %add.ptr24.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 80, !dbg !1811
  store i32 %mul22.2, ptr %add.ptr24.2, align 4, !dbg !1812
  %add.ptr26.2 = getelementptr inbounds i8, ptr %dequant, i64 84, !dbg !1813
  %42 = load i32, ptr %add.ptr26.2, align 4, !dbg !1814
  %incdec.ptr27.2 = getelementptr inbounds i8, ptr %qmatrix, i64 88, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.2, !1774, !DIExpression(), !1776)
  %43 = load i32, ptr %incdec.ptr21.2, align 4, !dbg !1816
  %mul28.2 = mul nsw i32 %43, %42, !dbg !1817
  %add.ptr30.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 84, !dbg !1818
  store i32 %mul28.2, ptr %add.ptr30.2, align 4, !dbg !1819
  %add.ptr32.2 = getelementptr inbounds i8, ptr %dequant, i64 88, !dbg !1820
  %44 = load i32, ptr %add.ptr32.2, align 4, !dbg !1821
  %incdec.ptr33.2 = getelementptr inbounds i8, ptr %qmatrix, i64 92, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.2, !1774, !DIExpression(), !1776)
  %45 = load i32, ptr %incdec.ptr27.2, align 4, !dbg !1823
  %mul34.2 = mul nsw i32 %45, %44, !dbg !1824
  %add.ptr36.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 88, !dbg !1825
  store i32 %mul34.2, ptr %add.ptr36.2, align 4, !dbg !1826
  %incdec.ptr37.2 = getelementptr inbounds i8, ptr %dequant, i64 96, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.2, !1773, !DIExpression(), !1776)
  %add.ptr39.2 = getelementptr inbounds i8, ptr %dequant, i64 92, !dbg !1828
  %46 = load i32, ptr %add.ptr39.2, align 4, !dbg !1829
  %incdec.ptr40.2 = getelementptr inbounds i8, ptr %qmatrix, i64 96, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.2, !1774, !DIExpression(), !1776)
  %47 = load i32, ptr %incdec.ptr33.2, align 4, !dbg !1831
  %mul41.2 = mul nsw i32 %47, %46, !dbg !1832
  %incdec.ptr42.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 96, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.2, !1772, !DIExpression(), !1776)
  %add.ptr44.2 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 92, !dbg !1834
  store i32 %mul41.2, ptr %add.ptr44.2, align 4, !dbg !1835
    #dbg_value(i32 3, !1775, !DIExpression(), !1776)
  %48 = load i32, ptr %incdec.ptr37.2, align 4, !dbg !1777
  %incdec.ptr.3 = getelementptr inbounds i8, ptr %qmatrix, i64 100, !dbg !1781
    #dbg_value(ptr %incdec.ptr.3, !1774, !DIExpression(), !1776)
  %49 = load i32, ptr %incdec.ptr40.2, align 4, !dbg !1782
  %mul.3 = mul nsw i32 %49, %48, !dbg !1783
  store i32 %mul.3, ptr %incdec.ptr42.2, align 4, !dbg !1784
  %add.ptr.3 = getelementptr inbounds i8, ptr %dequant, i64 100, !dbg !1785
  %50 = load i32, ptr %add.ptr.3, align 4, !dbg !1786
  %incdec.ptr3.3 = getelementptr inbounds i8, ptr %qmatrix, i64 104, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.3, !1774, !DIExpression(), !1776)
  %51 = load i32, ptr %incdec.ptr.3, align 4, !dbg !1788
  %mul4.3 = mul nsw i32 %51, %50, !dbg !1789
  %add.ptr6.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 100, !dbg !1790
  store i32 %mul4.3, ptr %add.ptr6.3, align 4, !dbg !1791
  %add.ptr8.3 = getelementptr inbounds i8, ptr %dequant, i64 104, !dbg !1792
  %52 = load i32, ptr %add.ptr8.3, align 4, !dbg !1793
  %incdec.ptr9.3 = getelementptr inbounds i8, ptr %qmatrix, i64 108, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.3, !1774, !DIExpression(), !1776)
  %53 = load i32, ptr %incdec.ptr3.3, align 4, !dbg !1795
  %mul10.3 = mul nsw i32 %53, %52, !dbg !1796
  %add.ptr12.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 104, !dbg !1797
  store i32 %mul10.3, ptr %add.ptr12.3, align 4, !dbg !1798
  %add.ptr14.3 = getelementptr inbounds i8, ptr %dequant, i64 108, !dbg !1799
  %54 = load i32, ptr %add.ptr14.3, align 4, !dbg !1800
  %incdec.ptr15.3 = getelementptr inbounds i8, ptr %qmatrix, i64 112, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.3, !1774, !DIExpression(), !1776)
  %55 = load i32, ptr %incdec.ptr9.3, align 4, !dbg !1802
  %mul16.3 = mul nsw i32 %55, %54, !dbg !1803
  %add.ptr18.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 108, !dbg !1804
  store i32 %mul16.3, ptr %add.ptr18.3, align 4, !dbg !1805
  %add.ptr20.3 = getelementptr inbounds i8, ptr %dequant, i64 112, !dbg !1806
  %56 = load i32, ptr %add.ptr20.3, align 4, !dbg !1807
  %incdec.ptr21.3 = getelementptr inbounds i8, ptr %qmatrix, i64 116, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.3, !1774, !DIExpression(), !1776)
  %57 = load i32, ptr %incdec.ptr15.3, align 4, !dbg !1809
  %mul22.3 = mul nsw i32 %57, %56, !dbg !1810
  %add.ptr24.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 112, !dbg !1811
  store i32 %mul22.3, ptr %add.ptr24.3, align 4, !dbg !1812
  %add.ptr26.3 = getelementptr inbounds i8, ptr %dequant, i64 116, !dbg !1813
  %58 = load i32, ptr %add.ptr26.3, align 4, !dbg !1814
  %incdec.ptr27.3 = getelementptr inbounds i8, ptr %qmatrix, i64 120, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.3, !1774, !DIExpression(), !1776)
  %59 = load i32, ptr %incdec.ptr21.3, align 4, !dbg !1816
  %mul28.3 = mul nsw i32 %59, %58, !dbg !1817
  %add.ptr30.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 116, !dbg !1818
  store i32 %mul28.3, ptr %add.ptr30.3, align 4, !dbg !1819
  %add.ptr32.3 = getelementptr inbounds i8, ptr %dequant, i64 120, !dbg !1820
  %60 = load i32, ptr %add.ptr32.3, align 4, !dbg !1821
  %incdec.ptr33.3 = getelementptr inbounds i8, ptr %qmatrix, i64 124, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.3, !1774, !DIExpression(), !1776)
  %61 = load i32, ptr %incdec.ptr27.3, align 4, !dbg !1823
  %mul34.3 = mul nsw i32 %61, %60, !dbg !1824
  %add.ptr36.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 120, !dbg !1825
  store i32 %mul34.3, ptr %add.ptr36.3, align 4, !dbg !1826
  %incdec.ptr37.3 = getelementptr inbounds i8, ptr %dequant, i64 128, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.3, !1773, !DIExpression(), !1776)
  %add.ptr39.3 = getelementptr inbounds i8, ptr %dequant, i64 124, !dbg !1828
  %62 = load i32, ptr %add.ptr39.3, align 4, !dbg !1829
  %incdec.ptr40.3 = getelementptr inbounds i8, ptr %qmatrix, i64 128, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.3, !1774, !DIExpression(), !1776)
  %63 = load i32, ptr %incdec.ptr33.3, align 4, !dbg !1831
  %mul41.3 = mul nsw i32 %63, %62, !dbg !1832
  %incdec.ptr42.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 128, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.3, !1772, !DIExpression(), !1776)
  %add.ptr44.3 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 124, !dbg !1834
  store i32 %mul41.3, ptr %add.ptr44.3, align 4, !dbg !1835
    #dbg_value(i32 4, !1775, !DIExpression(), !1776)
  %64 = load i32, ptr %incdec.ptr37.3, align 4, !dbg !1777
  %incdec.ptr.4 = getelementptr inbounds i8, ptr %qmatrix, i64 132, !dbg !1781
    #dbg_value(ptr %incdec.ptr.4, !1774, !DIExpression(), !1776)
  %65 = load i32, ptr %incdec.ptr40.3, align 4, !dbg !1782
  %mul.4 = mul nsw i32 %65, %64, !dbg !1783
  store i32 %mul.4, ptr %incdec.ptr42.3, align 4, !dbg !1784
  %add.ptr.4 = getelementptr inbounds i8, ptr %dequant, i64 132, !dbg !1785
  %66 = load i32, ptr %add.ptr.4, align 4, !dbg !1786
  %incdec.ptr3.4 = getelementptr inbounds i8, ptr %qmatrix, i64 136, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.4, !1774, !DIExpression(), !1776)
  %67 = load i32, ptr %incdec.ptr.4, align 4, !dbg !1788
  %mul4.4 = mul nsw i32 %67, %66, !dbg !1789
  %add.ptr6.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 132, !dbg !1790
  store i32 %mul4.4, ptr %add.ptr6.4, align 4, !dbg !1791
  %add.ptr8.4 = getelementptr inbounds i8, ptr %dequant, i64 136, !dbg !1792
  %68 = load i32, ptr %add.ptr8.4, align 4, !dbg !1793
  %incdec.ptr9.4 = getelementptr inbounds i8, ptr %qmatrix, i64 140, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.4, !1774, !DIExpression(), !1776)
  %69 = load i32, ptr %incdec.ptr3.4, align 4, !dbg !1795
  %mul10.4 = mul nsw i32 %69, %68, !dbg !1796
  %add.ptr12.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 136, !dbg !1797
  store i32 %mul10.4, ptr %add.ptr12.4, align 4, !dbg !1798
  %add.ptr14.4 = getelementptr inbounds i8, ptr %dequant, i64 140, !dbg !1799
  %70 = load i32, ptr %add.ptr14.4, align 4, !dbg !1800
  %incdec.ptr15.4 = getelementptr inbounds i8, ptr %qmatrix, i64 144, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.4, !1774, !DIExpression(), !1776)
  %71 = load i32, ptr %incdec.ptr9.4, align 4, !dbg !1802
  %mul16.4 = mul nsw i32 %71, %70, !dbg !1803
  %add.ptr18.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 140, !dbg !1804
  store i32 %mul16.4, ptr %add.ptr18.4, align 4, !dbg !1805
  %add.ptr20.4 = getelementptr inbounds i8, ptr %dequant, i64 144, !dbg !1806
  %72 = load i32, ptr %add.ptr20.4, align 4, !dbg !1807
  %incdec.ptr21.4 = getelementptr inbounds i8, ptr %qmatrix, i64 148, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.4, !1774, !DIExpression(), !1776)
  %73 = load i32, ptr %incdec.ptr15.4, align 4, !dbg !1809
  %mul22.4 = mul nsw i32 %73, %72, !dbg !1810
  %add.ptr24.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 144, !dbg !1811
  store i32 %mul22.4, ptr %add.ptr24.4, align 4, !dbg !1812
  %add.ptr26.4 = getelementptr inbounds i8, ptr %dequant, i64 148, !dbg !1813
  %74 = load i32, ptr %add.ptr26.4, align 4, !dbg !1814
  %incdec.ptr27.4 = getelementptr inbounds i8, ptr %qmatrix, i64 152, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.4, !1774, !DIExpression(), !1776)
  %75 = load i32, ptr %incdec.ptr21.4, align 4, !dbg !1816
  %mul28.4 = mul nsw i32 %75, %74, !dbg !1817
  %add.ptr30.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 148, !dbg !1818
  store i32 %mul28.4, ptr %add.ptr30.4, align 4, !dbg !1819
  %add.ptr32.4 = getelementptr inbounds i8, ptr %dequant, i64 152, !dbg !1820
  %76 = load i32, ptr %add.ptr32.4, align 4, !dbg !1821
  %incdec.ptr33.4 = getelementptr inbounds i8, ptr %qmatrix, i64 156, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.4, !1774, !DIExpression(), !1776)
  %77 = load i32, ptr %incdec.ptr27.4, align 4, !dbg !1823
  %mul34.4 = mul nsw i32 %77, %76, !dbg !1824
  %add.ptr36.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 152, !dbg !1825
  store i32 %mul34.4, ptr %add.ptr36.4, align 4, !dbg !1826
  %incdec.ptr37.4 = getelementptr inbounds i8, ptr %dequant, i64 160, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.4, !1773, !DIExpression(), !1776)
  %add.ptr39.4 = getelementptr inbounds i8, ptr %dequant, i64 156, !dbg !1828
  %78 = load i32, ptr %add.ptr39.4, align 4, !dbg !1829
  %incdec.ptr40.4 = getelementptr inbounds i8, ptr %qmatrix, i64 160, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.4, !1774, !DIExpression(), !1776)
  %79 = load i32, ptr %incdec.ptr33.4, align 4, !dbg !1831
  %mul41.4 = mul nsw i32 %79, %78, !dbg !1832
  %incdec.ptr42.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 160, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.4, !1772, !DIExpression(), !1776)
  %add.ptr44.4 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 156, !dbg !1834
  store i32 %mul41.4, ptr %add.ptr44.4, align 4, !dbg !1835
    #dbg_value(i32 5, !1775, !DIExpression(), !1776)
  %80 = load i32, ptr %incdec.ptr37.4, align 4, !dbg !1777
  %incdec.ptr.5 = getelementptr inbounds i8, ptr %qmatrix, i64 164, !dbg !1781
    #dbg_value(ptr %incdec.ptr.5, !1774, !DIExpression(), !1776)
  %81 = load i32, ptr %incdec.ptr40.4, align 4, !dbg !1782
  %mul.5 = mul nsw i32 %81, %80, !dbg !1783
  store i32 %mul.5, ptr %incdec.ptr42.4, align 4, !dbg !1784
  %add.ptr.5 = getelementptr inbounds i8, ptr %dequant, i64 164, !dbg !1785
  %82 = load i32, ptr %add.ptr.5, align 4, !dbg !1786
  %incdec.ptr3.5 = getelementptr inbounds i8, ptr %qmatrix, i64 168, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.5, !1774, !DIExpression(), !1776)
  %83 = load i32, ptr %incdec.ptr.5, align 4, !dbg !1788
  %mul4.5 = mul nsw i32 %83, %82, !dbg !1789
  %add.ptr6.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 164, !dbg !1790
  store i32 %mul4.5, ptr %add.ptr6.5, align 4, !dbg !1791
  %add.ptr8.5 = getelementptr inbounds i8, ptr %dequant, i64 168, !dbg !1792
  %84 = load i32, ptr %add.ptr8.5, align 4, !dbg !1793
  %incdec.ptr9.5 = getelementptr inbounds i8, ptr %qmatrix, i64 172, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.5, !1774, !DIExpression(), !1776)
  %85 = load i32, ptr %incdec.ptr3.5, align 4, !dbg !1795
  %mul10.5 = mul nsw i32 %85, %84, !dbg !1796
  %add.ptr12.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 168, !dbg !1797
  store i32 %mul10.5, ptr %add.ptr12.5, align 4, !dbg !1798
  %add.ptr14.5 = getelementptr inbounds i8, ptr %dequant, i64 172, !dbg !1799
  %86 = load i32, ptr %add.ptr14.5, align 4, !dbg !1800
  %incdec.ptr15.5 = getelementptr inbounds i8, ptr %qmatrix, i64 176, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.5, !1774, !DIExpression(), !1776)
  %87 = load i32, ptr %incdec.ptr9.5, align 4, !dbg !1802
  %mul16.5 = mul nsw i32 %87, %86, !dbg !1803
  %add.ptr18.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 172, !dbg !1804
  store i32 %mul16.5, ptr %add.ptr18.5, align 4, !dbg !1805
  %add.ptr20.5 = getelementptr inbounds i8, ptr %dequant, i64 176, !dbg !1806
  %88 = load i32, ptr %add.ptr20.5, align 4, !dbg !1807
  %incdec.ptr21.5 = getelementptr inbounds i8, ptr %qmatrix, i64 180, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.5, !1774, !DIExpression(), !1776)
  %89 = load i32, ptr %incdec.ptr15.5, align 4, !dbg !1809
  %mul22.5 = mul nsw i32 %89, %88, !dbg !1810
  %add.ptr24.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 176, !dbg !1811
  store i32 %mul22.5, ptr %add.ptr24.5, align 4, !dbg !1812
  %add.ptr26.5 = getelementptr inbounds i8, ptr %dequant, i64 180, !dbg !1813
  %90 = load i32, ptr %add.ptr26.5, align 4, !dbg !1814
  %incdec.ptr27.5 = getelementptr inbounds i8, ptr %qmatrix, i64 184, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.5, !1774, !DIExpression(), !1776)
  %91 = load i32, ptr %incdec.ptr21.5, align 4, !dbg !1816
  %mul28.5 = mul nsw i32 %91, %90, !dbg !1817
  %add.ptr30.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 180, !dbg !1818
  store i32 %mul28.5, ptr %add.ptr30.5, align 4, !dbg !1819
  %add.ptr32.5 = getelementptr inbounds i8, ptr %dequant, i64 184, !dbg !1820
  %92 = load i32, ptr %add.ptr32.5, align 4, !dbg !1821
  %incdec.ptr33.5 = getelementptr inbounds i8, ptr %qmatrix, i64 188, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.5, !1774, !DIExpression(), !1776)
  %93 = load i32, ptr %incdec.ptr27.5, align 4, !dbg !1823
  %mul34.5 = mul nsw i32 %93, %92, !dbg !1824
  %add.ptr36.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 184, !dbg !1825
  store i32 %mul34.5, ptr %add.ptr36.5, align 4, !dbg !1826
  %incdec.ptr37.5 = getelementptr inbounds i8, ptr %dequant, i64 192, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.5, !1773, !DIExpression(), !1776)
  %add.ptr39.5 = getelementptr inbounds i8, ptr %dequant, i64 188, !dbg !1828
  %94 = load i32, ptr %add.ptr39.5, align 4, !dbg !1829
  %incdec.ptr40.5 = getelementptr inbounds i8, ptr %qmatrix, i64 192, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.5, !1774, !DIExpression(), !1776)
  %95 = load i32, ptr %incdec.ptr33.5, align 4, !dbg !1831
  %mul41.5 = mul nsw i32 %95, %94, !dbg !1832
  %incdec.ptr42.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 192, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.5, !1772, !DIExpression(), !1776)
  %add.ptr44.5 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 188, !dbg !1834
  store i32 %mul41.5, ptr %add.ptr44.5, align 4, !dbg !1835
    #dbg_value(i32 6, !1775, !DIExpression(), !1776)
  %96 = load i32, ptr %incdec.ptr37.5, align 4, !dbg !1777
  %incdec.ptr.6 = getelementptr inbounds i8, ptr %qmatrix, i64 196, !dbg !1781
    #dbg_value(ptr %incdec.ptr.6, !1774, !DIExpression(), !1776)
  %97 = load i32, ptr %incdec.ptr40.5, align 4, !dbg !1782
  %mul.6 = mul nsw i32 %97, %96, !dbg !1783
  store i32 %mul.6, ptr %incdec.ptr42.5, align 4, !dbg !1784
  %add.ptr.6 = getelementptr inbounds i8, ptr %dequant, i64 196, !dbg !1785
  %98 = load i32, ptr %add.ptr.6, align 4, !dbg !1786
  %incdec.ptr3.6 = getelementptr inbounds i8, ptr %qmatrix, i64 200, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.6, !1774, !DIExpression(), !1776)
  %99 = load i32, ptr %incdec.ptr.6, align 4, !dbg !1788
  %mul4.6 = mul nsw i32 %99, %98, !dbg !1789
  %add.ptr6.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 196, !dbg !1790
  store i32 %mul4.6, ptr %add.ptr6.6, align 4, !dbg !1791
  %add.ptr8.6 = getelementptr inbounds i8, ptr %dequant, i64 200, !dbg !1792
  %100 = load i32, ptr %add.ptr8.6, align 4, !dbg !1793
  %incdec.ptr9.6 = getelementptr inbounds i8, ptr %qmatrix, i64 204, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.6, !1774, !DIExpression(), !1776)
  %101 = load i32, ptr %incdec.ptr3.6, align 4, !dbg !1795
  %mul10.6 = mul nsw i32 %101, %100, !dbg !1796
  %add.ptr12.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 200, !dbg !1797
  store i32 %mul10.6, ptr %add.ptr12.6, align 4, !dbg !1798
  %add.ptr14.6 = getelementptr inbounds i8, ptr %dequant, i64 204, !dbg !1799
  %102 = load i32, ptr %add.ptr14.6, align 4, !dbg !1800
  %incdec.ptr15.6 = getelementptr inbounds i8, ptr %qmatrix, i64 208, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.6, !1774, !DIExpression(), !1776)
  %103 = load i32, ptr %incdec.ptr9.6, align 4, !dbg !1802
  %mul16.6 = mul nsw i32 %103, %102, !dbg !1803
  %add.ptr18.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 204, !dbg !1804
  store i32 %mul16.6, ptr %add.ptr18.6, align 4, !dbg !1805
  %add.ptr20.6 = getelementptr inbounds i8, ptr %dequant, i64 208, !dbg !1806
  %104 = load i32, ptr %add.ptr20.6, align 4, !dbg !1807
  %incdec.ptr21.6 = getelementptr inbounds i8, ptr %qmatrix, i64 212, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.6, !1774, !DIExpression(), !1776)
  %105 = load i32, ptr %incdec.ptr15.6, align 4, !dbg !1809
  %mul22.6 = mul nsw i32 %105, %104, !dbg !1810
  %add.ptr24.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 208, !dbg !1811
  store i32 %mul22.6, ptr %add.ptr24.6, align 4, !dbg !1812
  %add.ptr26.6 = getelementptr inbounds i8, ptr %dequant, i64 212, !dbg !1813
  %106 = load i32, ptr %add.ptr26.6, align 4, !dbg !1814
  %incdec.ptr27.6 = getelementptr inbounds i8, ptr %qmatrix, i64 216, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.6, !1774, !DIExpression(), !1776)
  %107 = load i32, ptr %incdec.ptr21.6, align 4, !dbg !1816
  %mul28.6 = mul nsw i32 %107, %106, !dbg !1817
  %add.ptr30.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 212, !dbg !1818
  store i32 %mul28.6, ptr %add.ptr30.6, align 4, !dbg !1819
  %add.ptr32.6 = getelementptr inbounds i8, ptr %dequant, i64 216, !dbg !1820
  %108 = load i32, ptr %add.ptr32.6, align 4, !dbg !1821
  %incdec.ptr33.6 = getelementptr inbounds i8, ptr %qmatrix, i64 220, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.6, !1774, !DIExpression(), !1776)
  %109 = load i32, ptr %incdec.ptr27.6, align 4, !dbg !1823
  %mul34.6 = mul nsw i32 %109, %108, !dbg !1824
  %add.ptr36.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 216, !dbg !1825
  store i32 %mul34.6, ptr %add.ptr36.6, align 4, !dbg !1826
  %incdec.ptr37.6 = getelementptr inbounds i8, ptr %dequant, i64 224, !dbg !1827
    #dbg_value(ptr %incdec.ptr37.6, !1773, !DIExpression(), !1776)
  %add.ptr39.6 = getelementptr inbounds i8, ptr %dequant, i64 220, !dbg !1828
  %110 = load i32, ptr %add.ptr39.6, align 4, !dbg !1829
  %incdec.ptr40.6 = getelementptr inbounds i8, ptr %qmatrix, i64 224, !dbg !1830
    #dbg_value(ptr %incdec.ptr40.6, !1774, !DIExpression(), !1776)
  %111 = load i32, ptr %incdec.ptr33.6, align 4, !dbg !1831
  %mul41.6 = mul nsw i32 %111, %110, !dbg !1832
  %incdec.ptr42.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 224, !dbg !1833
    #dbg_value(ptr %incdec.ptr42.6, !1772, !DIExpression(), !1776)
  %add.ptr44.6 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 220, !dbg !1834
  store i32 %mul41.6, ptr %add.ptr44.6, align 4, !dbg !1835
    #dbg_value(i32 7, !1775, !DIExpression(), !1776)
  %112 = load i32, ptr %incdec.ptr37.6, align 4, !dbg !1777
  %incdec.ptr.7 = getelementptr inbounds i8, ptr %qmatrix, i64 228, !dbg !1781
    #dbg_value(ptr %incdec.ptr.7, !1774, !DIExpression(), !1776)
  %113 = load i32, ptr %incdec.ptr40.6, align 4, !dbg !1782
  %mul.7 = mul nsw i32 %113, %112, !dbg !1783
  store i32 %mul.7, ptr %incdec.ptr42.6, align 4, !dbg !1784
  %add.ptr.7 = getelementptr inbounds i8, ptr %dequant, i64 228, !dbg !1785
  %114 = load i32, ptr %add.ptr.7, align 4, !dbg !1786
  %incdec.ptr3.7 = getelementptr inbounds i8, ptr %qmatrix, i64 232, !dbg !1787
    #dbg_value(ptr %incdec.ptr3.7, !1774, !DIExpression(), !1776)
  %115 = load i32, ptr %incdec.ptr.7, align 4, !dbg !1788
  %mul4.7 = mul nsw i32 %115, %114, !dbg !1789
  %add.ptr6.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 228, !dbg !1790
  store i32 %mul4.7, ptr %add.ptr6.7, align 4, !dbg !1791
  %add.ptr8.7 = getelementptr inbounds i8, ptr %dequant, i64 232, !dbg !1792
  %116 = load i32, ptr %add.ptr8.7, align 4, !dbg !1793
  %incdec.ptr9.7 = getelementptr inbounds i8, ptr %qmatrix, i64 236, !dbg !1794
    #dbg_value(ptr %incdec.ptr9.7, !1774, !DIExpression(), !1776)
  %117 = load i32, ptr %incdec.ptr3.7, align 4, !dbg !1795
  %mul10.7 = mul nsw i32 %117, %116, !dbg !1796
  %add.ptr12.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 232, !dbg !1797
  store i32 %mul10.7, ptr %add.ptr12.7, align 4, !dbg !1798
  %add.ptr14.7 = getelementptr inbounds i8, ptr %dequant, i64 236, !dbg !1799
  %118 = load i32, ptr %add.ptr14.7, align 4, !dbg !1800
  %incdec.ptr15.7 = getelementptr inbounds i8, ptr %qmatrix, i64 240, !dbg !1801
    #dbg_value(ptr %incdec.ptr15.7, !1774, !DIExpression(), !1776)
  %119 = load i32, ptr %incdec.ptr9.7, align 4, !dbg !1802
  %mul16.7 = mul nsw i32 %119, %118, !dbg !1803
  %add.ptr18.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 236, !dbg !1804
  store i32 %mul16.7, ptr %add.ptr18.7, align 4, !dbg !1805
  %add.ptr20.7 = getelementptr inbounds i8, ptr %dequant, i64 240, !dbg !1806
  %120 = load i32, ptr %add.ptr20.7, align 4, !dbg !1807
  %incdec.ptr21.7 = getelementptr inbounds i8, ptr %qmatrix, i64 244, !dbg !1808
    #dbg_value(ptr %incdec.ptr21.7, !1774, !DIExpression(), !1776)
  %121 = load i32, ptr %incdec.ptr15.7, align 4, !dbg !1809
  %mul22.7 = mul nsw i32 %121, %120, !dbg !1810
  %add.ptr24.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 240, !dbg !1811
  store i32 %mul22.7, ptr %add.ptr24.7, align 4, !dbg !1812
  %add.ptr26.7 = getelementptr inbounds i8, ptr %dequant, i64 244, !dbg !1813
  %122 = load i32, ptr %add.ptr26.7, align 4, !dbg !1814
  %incdec.ptr27.7 = getelementptr inbounds i8, ptr %qmatrix, i64 248, !dbg !1815
    #dbg_value(ptr %incdec.ptr27.7, !1774, !DIExpression(), !1776)
  %123 = load i32, ptr %incdec.ptr21.7, align 4, !dbg !1816
  %mul28.7 = mul nsw i32 %123, %122, !dbg !1817
  %add.ptr30.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 244, !dbg !1818
  store i32 %mul28.7, ptr %add.ptr30.7, align 4, !dbg !1819
  %add.ptr32.7 = getelementptr inbounds i8, ptr %dequant, i64 248, !dbg !1820
  %124 = load i32, ptr %add.ptr32.7, align 4, !dbg !1821
  %incdec.ptr33.7 = getelementptr inbounds i8, ptr %qmatrix, i64 252, !dbg !1822
    #dbg_value(ptr %incdec.ptr33.7, !1774, !DIExpression(), !1776)
  %125 = load i32, ptr %incdec.ptr27.7, align 4, !dbg !1823
  %mul34.7 = mul nsw i32 %125, %124, !dbg !1824
  %add.ptr36.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 248, !dbg !1825
  store i32 %mul34.7, ptr %add.ptr36.7, align 4, !dbg !1826
    #dbg_value(ptr %incdec.ptr37.6, !1773, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1776)
  %add.ptr39.7 = getelementptr inbounds i8, ptr %dequant, i64 252, !dbg !1828
  %126 = load i32, ptr %add.ptr39.7, align 4, !dbg !1829
    #dbg_value(ptr %incdec.ptr40.6, !1774, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1776)
  %127 = load i32, ptr %incdec.ptr33.7, align 4, !dbg !1831
  %mul41.7 = mul nsw i32 %127, %126, !dbg !1832
    #dbg_value(ptr %incdec.ptr42.6, !1772, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !1776)
  %add.ptr44.7 = getelementptr inbounds i8, ptr %InvLevelScale8x8, i64 252, !dbg !1834
  store i32 %mul41.7, ptr %add.ptr44.7, align 4, !dbg !1835
    #dbg_value(i32 8, !1775, !DIExpression(), !1776)
  ret void, !dbg !1836
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "quant_intra_default", scope: !2, file: !3, line: 26, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/quant.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "13d611e6de06fa6befc3fe4bd7d9ed51")
!4 = !{!5, !14, !20, !29, !36}
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
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!47 = !{!0, !48, !53, !58, !60, !62, !64, !70, !72, !80}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "quant_inter_default", scope: !2, file: !3, line: 33, type: !50, isLocal: false, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 16)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "quant8_intra_default", scope: !2, file: !3, line: 40, type: !55, isLocal: false, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 64)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "quant8_inter_default", scope: !2, file: !3, line: 51, type: !55, isLocal: false, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "quant_org", scope: !2, file: !3, line: 62, type: !50, isLocal: false, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "quant8_org", scope: !2, file: !3, line: 69, type: !55, isLocal: false, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 304, elements: !68)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69}
!69 = !DISubrange(count: 38)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !66, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "dequant_coef", scope: !2, file: !74, line: 84, type: !75, isLocal: true, isDefinition: true)
!74 = !DIFile(filename: "ldecod_src/inc/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1cab853af0b7d1def614506434d35908")
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3072, elements: !77)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!77 = !{!78, !79, !79}
!78 = !DISubrange(count: 6)
!79 = !DISubrange(count: 4)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "dequant_coef8", scope: !2, file: !74, line: 18, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 12288, elements: !83)
!83 = !{!78, !84, !84}
!84 = !DISubrange(count: 8)
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{i32 8, !"PIC Level", i32 2}
!89 = !{i32 7, !"PIE Level", i32 2}
!90 = !{i32 7, !"uwtable", i32 2}
!91 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!92 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!93 = distinct !DISubprogram(name: "init_qp_process", scope: !3, file: !3, line: 86, type: !94, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !98, line: 836, baseType: !99)
!98 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !98, line: 566, size: 6855040, elements: !100)
!100 = !{!101, !185, !238, !342, !344, !346, !404, !406, !407, !408, !409, !410, !413, !433, !445, !446, !447, !448, !449, !450, !1016, !1017, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1027, !1030, !1031, !1033, !1034, !1035, !1036, !1037, !1039, !1040, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1165, !1167, !1168, !1171, !1174, !1175, !1176, !1180, !1183, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1195, !1198, !1199, !1200, !1201, !1204, !1209, !1213, !1217, !1221, !1222, !1226, !1227, !1231, !1232, !1236, !1257, !1258, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !99, file: !98, line: 568, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !98, line: 850, size: 32128, elements: !104)
!104 = !{!105, !109, !110, !111, !112, !113, !114, !115, !116, !117, !147, !148, !149, !150, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !103, file: !98, line: 852, baseType: !106, size: 2040)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2040, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 255)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !103, file: !98, line: 853, baseType: !106, size: 2040, offset: 2040)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !103, file: !98, line: 854, baseType: !106, size: 2040, offset: 4080)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !103, file: !98, line: 856, baseType: !7, size: 32, offset: 6144)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !103, file: !98, line: 857, baseType: !7, size: 32, offset: 6176)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !103, file: !98, line: 858, baseType: !7, size: 32, offset: 6208)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !103, file: !98, line: 859, baseType: !7, size: 32, offset: 6240)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !103, file: !98, line: 860, baseType: !7, size: 32, offset: 6272)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !103, file: !98, line: 861, baseType: !7, size: 32, offset: 6304)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !103, file: !98, line: 864, baseType: !118, size: 1088, offset: 6336)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !6, line: 52, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !6, line: 30, size: 1088, elements: !120)
!120 = !{!121, !123, !125, !127, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !119, file: !6, line: 32, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !6, line: 28, baseType: !5)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !119, file: !6, line: 33, baseType: !124, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !6, line: 20, baseType: !14)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !119, file: !6, line: 34, baseType: !126, size: 64, offset: 64)
!126 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !119, file: !6, line: 35, baseType: !128, size: 96, offset: 128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 3)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !119, file: !6, line: 36, baseType: !128, size: 96, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !119, file: !6, line: 37, baseType: !7, size: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !119, file: !6, line: 38, baseType: !7, size: 32, offset: 352)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !119, file: !6, line: 39, baseType: !7, size: 32, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !119, file: !6, line: 40, baseType: !7, size: 32, offset: 416)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !119, file: !6, line: 41, baseType: !7, size: 32, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !119, file: !6, line: 42, baseType: !7, size: 32, offset: 480)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !119, file: !6, line: 43, baseType: !7, size: 32, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !119, file: !6, line: 44, baseType: !7, size: 32, offset: 544)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !119, file: !6, line: 45, baseType: !128, size: 96, offset: 576)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !119, file: !6, line: 46, baseType: !7, size: 32, offset: 672)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !119, file: !6, line: 47, baseType: !128, size: 96, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !119, file: !6, line: 48, baseType: !128, size: 96, offset: 800)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !119, file: !6, line: 49, baseType: !128, size: 96, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !119, file: !6, line: 50, baseType: !7, size: 32, offset: 992)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !119, file: !6, line: 51, baseType: !7, size: 32, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !103, file: !98, line: 865, baseType: !118, size: 1088, offset: 7424)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !103, file: !98, line: 867, baseType: !7, size: 32, offset: 8512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !103, file: !98, line: 868, baseType: !7, size: 32, offset: 8544)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !103, file: !98, line: 869, baseType: !151, size: 7744, offset: 8576)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !21, line: 60, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !21, line: 34, size: 7744, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !152, file: !21, line: 37, baseType: !106, size: 2040)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !152, file: !21, line: 38, baseType: !106, size: 2040, offset: 2040)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !152, file: !21, line: 39, baseType: !106, size: 2040, offset: 4080)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !152, file: !21, line: 40, baseType: !7, size: 32, offset: 6144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !152, file: !21, line: 41, baseType: !159, size: 32, offset: 6176)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !21, line: 32, baseType: !20)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !152, file: !21, line: 42, baseType: !118, size: 1088, offset: 6208)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !152, file: !21, line: 43, baseType: !7, size: 32, offset: 7296)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !152, file: !21, line: 44, baseType: !7, size: 32, offset: 7328)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !152, file: !21, line: 45, baseType: !7, size: 32, offset: 7360)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !152, file: !21, line: 46, baseType: !7, size: 32, offset: 7392)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !152, file: !21, line: 47, baseType: !7, size: 32, offset: 7424)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !152, file: !21, line: 48, baseType: !7, size: 32, offset: 7456)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !152, file: !21, line: 49, baseType: !7, size: 32, offset: 7488)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !152, file: !21, line: 50, baseType: !7, size: 32, offset: 7520)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !152, file: !21, line: 51, baseType: !7, size: 32, offset: 7552)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !152, file: !21, line: 52, baseType: !7, size: 32, offset: 7584)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !152, file: !21, line: 53, baseType: !7, size: 32, offset: 7616)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !152, file: !21, line: 56, baseType: !46, size: 64, offset: 7680)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !103, file: !98, line: 870, baseType: !151, size: 7744, offset: 16320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !103, file: !98, line: 871, baseType: !151, size: 7744, offset: 24064)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !103, file: !98, line: 873, baseType: !7, size: 32, offset: 31808)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !103, file: !98, line: 884, baseType: !7, size: 32, offset: 31840)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !103, file: !98, line: 885, baseType: !7, size: 32, offset: 31872)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !103, file: !98, line: 886, baseType: !7, size: 32, offset: 31904)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !103, file: !98, line: 890, baseType: !7, size: 32, offset: 31936)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !103, file: !98, line: 893, baseType: !7, size: 32, offset: 31968)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !103, file: !98, line: 894, baseType: !7, size: 32, offset: 32000)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !103, file: !98, line: 895, baseType: !7, size: 32, offset: 32032)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !103, file: !98, line: 897, baseType: !7, size: 32, offset: 32064)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !103, file: !98, line: 899, baseType: !7, size: 32, offset: 32096)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !99, file: !98, line: 569, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !188, line: 138, baseType: !189)
!188 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 94, size: 17728, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !201, !204, !207, !210, !211, !212, !213, !214, !217, !218, !219, !220, !221, !222, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !189, file: !188, line: 96, baseType: !7, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !189, file: !188, line: 97, baseType: !31, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !189, file: !188, line: 98, baseType: !31, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !189, file: !188, line: 99, baseType: !7, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !189, file: !188, line: 100, baseType: !7, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !189, file: !188, line: 102, baseType: !7, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !189, file: !188, line: 103, baseType: !198, size: 384, offset: 192)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 12)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !189, file: !188, line: 104, baseType: !202, size: 3072, offset: 576)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !203)
!203 = !{!78, !52}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !189, file: !188, line: 105, baseType: !205, size: 12288, offset: 3648)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !206)
!206 = !{!78, !57}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !189, file: !188, line: 106, baseType: !208, size: 192, offset: 15936)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !209)
!209 = !{!78}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !189, file: !188, line: 107, baseType: !208, size: 192, offset: 16128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !189, file: !188, line: 110, baseType: !7, size: 32, offset: 16320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !189, file: !188, line: 111, baseType: !31, size: 32, offset: 16352)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !189, file: !188, line: 112, baseType: !31, size: 32, offset: 16384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !189, file: !188, line: 114, baseType: !215, size: 256, offset: 16416)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !216)
!216 = !{!84}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !189, file: !188, line: 116, baseType: !215, size: 256, offset: 16672)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !189, file: !188, line: 117, baseType: !215, size: 256, offset: 16928)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !189, file: !188, line: 119, baseType: !7, size: 32, offset: 17184)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !189, file: !188, line: 120, baseType: !31, size: 32, offset: 17216)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !189, file: !188, line: 122, baseType: !31, size: 32, offset: 17248)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !189, file: !188, line: 123, baseType: !223, size: 64, offset: 17280)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !225, line: 21, baseType: !226)
!225 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!226 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !189, file: !188, line: 125, baseType: !7, size: 32, offset: 17344)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !189, file: !188, line: 126, baseType: !7, size: 32, offset: 17376)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !189, file: !188, line: 127, baseType: !7, size: 32, offset: 17408)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !189, file: !188, line: 128, baseType: !31, size: 32, offset: 17440)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !189, file: !188, line: 129, baseType: !7, size: 32, offset: 17472)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !189, file: !188, line: 130, baseType: !7, size: 32, offset: 17504)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !189, file: !188, line: 131, baseType: !7, size: 32, offset: 17536)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !189, file: !188, line: 133, baseType: !7, size: 32, offset: 17568)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !189, file: !188, line: 135, baseType: !7, size: 32, offset: 17600)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !189, file: !188, line: 136, baseType: !7, size: 32, offset: 17632)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !189, file: !188, line: 137, baseType: !7, size: 32, offset: 17664)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !99, file: !98, line: 570, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !188, line: 197, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 142, size: 33024, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !340, !341}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !241, file: !188, line: 144, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !241, file: !188, line: 146, baseType: !31, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !241, file: !188, line: 147, baseType: !7, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !241, file: !188, line: 148, baseType: !7, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !241, file: !188, line: 149, baseType: !7, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !241, file: !188, line: 150, baseType: !7, size: 32, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !241, file: !188, line: 152, baseType: !7, size: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !241, file: !188, line: 154, baseType: !31, size: 32, offset: 224)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !241, file: !188, line: 155, baseType: !31, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !241, file: !188, line: 156, baseType: !31, size: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !241, file: !188, line: 158, baseType: !7, size: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !241, file: !188, line: 159, baseType: !198, size: 384, offset: 352)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !241, file: !188, line: 160, baseType: !202, size: 3072, offset: 736)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !241, file: !188, line: 161, baseType: !205, size: 12288, offset: 3808)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !241, file: !188, line: 162, baseType: !208, size: 192, offset: 16096)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !241, file: !188, line: 163, baseType: !208, size: 192, offset: 16288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !241, file: !188, line: 165, baseType: !31, size: 32, offset: 16480)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !241, file: !188, line: 166, baseType: !31, size: 32, offset: 16512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !241, file: !188, line: 167, baseType: !31, size: 32, offset: 16544)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !241, file: !188, line: 168, baseType: !31, size: 32, offset: 16576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !241, file: !188, line: 170, baseType: !31, size: 32, offset: 16608)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !241, file: !188, line: 172, baseType: !7, size: 32, offset: 16640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !241, file: !188, line: 173, baseType: !7, size: 32, offset: 16672)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !241, file: !188, line: 174, baseType: !7, size: 32, offset: 16704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !241, file: !188, line: 175, baseType: !31, size: 32, offset: 16736)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !241, file: !188, line: 177, baseType: !269, size: 8192, offset: 16768)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !241, file: !188, line: 178, baseType: !31, size: 32, offset: 24960)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !241, file: !188, line: 179, baseType: !7, size: 32, offset: 24992)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !241, file: !188, line: 180, baseType: !31, size: 32, offset: 25024)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !241, file: !188, line: 181, baseType: !31, size: 32, offset: 25056)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !241, file: !188, line: 182, baseType: !7, size: 32, offset: 25088)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !241, file: !188, line: 184, baseType: !7, size: 32, offset: 25120)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !241, file: !188, line: 185, baseType: !7, size: 32, offset: 25152)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !241, file: !188, line: 186, baseType: !7, size: 32, offset: 25184)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !241, file: !188, line: 187, baseType: !31, size: 32, offset: 25216)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !241, file: !188, line: 188, baseType: !31, size: 32, offset: 25248)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !241, file: !188, line: 189, baseType: !31, size: 32, offset: 25280)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !241, file: !188, line: 190, baseType: !31, size: 32, offset: 25312)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !241, file: !188, line: 191, baseType: !7, size: 32, offset: 25344)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !241, file: !188, line: 192, baseType: !286, size: 7584, offset: 25376)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !188, line: 90, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 53, size: 7584, elements: !288)
!288 = !{!289, !290, !291, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !287, file: !188, line: 55, baseType: !7, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !287, file: !188, line: 56, baseType: !31, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !287, file: !188, line: 57, baseType: !292, size: 16, offset: 64)
!292 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !287, file: !188, line: 58, baseType: !292, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !287, file: !188, line: 59, baseType: !7, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !287, file: !188, line: 60, baseType: !7, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !287, file: !188, line: 61, baseType: !7, size: 32, offset: 160)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !287, file: !188, line: 62, baseType: !31, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !287, file: !188, line: 63, baseType: !7, size: 32, offset: 224)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !287, file: !188, line: 64, baseType: !7, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !287, file: !188, line: 65, baseType: !31, size: 32, offset: 288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !287, file: !188, line: 66, baseType: !31, size: 32, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !287, file: !188, line: 67, baseType: !31, size: 32, offset: 352)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !287, file: !188, line: 68, baseType: !7, size: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !287, file: !188, line: 69, baseType: !31, size: 32, offset: 416)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !287, file: !188, line: 70, baseType: !31, size: 32, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !287, file: !188, line: 71, baseType: !7, size: 32, offset: 480)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !287, file: !188, line: 72, baseType: !31, size: 32, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !287, file: !188, line: 73, baseType: !31, size: 32, offset: 544)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !287, file: !188, line: 74, baseType: !7, size: 32, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !287, file: !188, line: 75, baseType: !7, size: 32, offset: 608)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !287, file: !188, line: 76, baseType: !312, size: 3296, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !188, line: 50, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 38, size: 3296, elements: !314)
!314 = !{!315, !316, !317, !318, !322, !323, !324, !325, !326, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !313, file: !188, line: 40, baseType: !31, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !313, file: !188, line: 41, baseType: !31, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !313, file: !188, line: 42, baseType: !31, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !313, file: !188, line: 43, baseType: !319, size: 1024, offset: 96)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !313, file: !188, line: 44, baseType: !319, size: 1024, offset: 1120)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !313, file: !188, line: 45, baseType: !319, size: 1024, offset: 2144)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !313, file: !188, line: 46, baseType: !31, size: 32, offset: 3168)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !313, file: !188, line: 47, baseType: !31, size: 32, offset: 3200)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !313, file: !188, line: 48, baseType: !31, size: 32, offset: 3232)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !313, file: !188, line: 49, baseType: !31, size: 32, offset: 3264)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !287, file: !188, line: 77, baseType: !7, size: 32, offset: 3936)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !287, file: !188, line: 78, baseType: !312, size: 3296, offset: 3968)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !287, file: !188, line: 80, baseType: !7, size: 32, offset: 7264)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !287, file: !188, line: 81, baseType: !7, size: 32, offset: 7296)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !287, file: !188, line: 82, baseType: !7, size: 32, offset: 7328)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !287, file: !188, line: 83, baseType: !7, size: 32, offset: 7360)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !287, file: !188, line: 84, baseType: !31, size: 32, offset: 7392)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !287, file: !188, line: 85, baseType: !31, size: 32, offset: 7424)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !287, file: !188, line: 86, baseType: !31, size: 32, offset: 7456)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !287, file: !188, line: 87, baseType: !31, size: 32, offset: 7488)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !287, file: !188, line: 88, baseType: !31, size: 32, offset: 7520)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !287, file: !188, line: 89, baseType: !31, size: 32, offset: 7552)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !241, file: !188, line: 193, baseType: !31, size: 32, offset: 32960)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !241, file: !188, line: 195, baseType: !7, size: 32, offset: 32992)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !99, file: !98, line: 571, baseType: !343, size: 1056768, offset: 192)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 1056768, elements: !320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !99, file: !98, line: 572, baseType: !345, size: 4538368, offset: 1056960)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 4538368, elements: !270)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !99, file: !98, line: 575, baseType: !347, size: 64, offset: 5595328)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !188, line: 256, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !188, line: 228, size: 37312, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373, !374}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !349, file: !188, line: 230, baseType: !240, size: 33024)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !349, file: !188, line: 232, baseType: !31, size: 32, offset: 33024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !349, file: !188, line: 233, baseType: !7, size: 32, offset: 33056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !349, file: !188, line: 234, baseType: !46, size: 64, offset: 33088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !349, file: !188, line: 235, baseType: !46, size: 64, offset: 33152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !349, file: !188, line: 236, baseType: !357, size: 64, offset: 33216)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !349, file: !188, line: 237, baseType: !46, size: 64, offset: 33280)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !349, file: !188, line: 238, baseType: !357, size: 64, offset: 33344)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !349, file: !188, line: 240, baseType: !46, size: 64, offset: 33408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !349, file: !188, line: 241, baseType: !357, size: 64, offset: 33472)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !349, file: !188, line: 242, baseType: !46, size: 64, offset: 33536)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !349, file: !188, line: 243, baseType: !357, size: 64, offset: 33600)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !349, file: !188, line: 245, baseType: !7, size: 32, offset: 33664)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !349, file: !188, line: 246, baseType: !46, size: 64, offset: 33728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !349, file: !188, line: 247, baseType: !46, size: 64, offset: 33792)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !349, file: !188, line: 248, baseType: !357, size: 64, offset: 33856)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !349, file: !188, line: 249, baseType: !357, size: 64, offset: 33920)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !349, file: !188, line: 250, baseType: !370, size: 64, offset: 33984)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !349, file: !188, line: 251, baseType: !357, size: 64, offset: 34048)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !349, file: !188, line: 253, baseType: !31, size: 32, offset: 34112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !349, file: !188, line: 254, baseType: !7, size: 32, offset: 34144)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !349, file: !188, line: 255, baseType: !375, size: 3136, offset: 34176)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !188, line: 226, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !188, line: 200, size: 3136, elements: !377)
!377 = !{!378, !379, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !397, !398, !400, !401, !402, !403}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !376, file: !188, line: 202, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !376, file: !188, line: 203, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !376, file: !188, line: 204, baseType: !46, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !376, file: !188, line: 205, baseType: !357, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !376, file: !188, line: 206, baseType: !380, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !376, file: !188, line: 207, baseType: !46, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !376, file: !188, line: 208, baseType: !46, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !376, file: !188, line: 209, baseType: !380, size: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !376, file: !188, line: 210, baseType: !380, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !376, file: !188, line: 211, baseType: !380, size: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !376, file: !188, line: 212, baseType: !380, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !376, file: !188, line: 213, baseType: !380, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !376, file: !188, line: 216, baseType: !381, size: 8, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !376, file: !188, line: 217, baseType: !381, size: 8, offset: 776)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !376, file: !188, line: 218, baseType: !381, size: 8, offset: 784)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !376, file: !188, line: 219, baseType: !396, size: 1024, offset: 800)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !376, file: !188, line: 220, baseType: !396, size: 1024, offset: 1824)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !376, file: !188, line: 221, baseType: !399, size: 256, offset: 2848)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 256, elements: !320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !376, file: !188, line: 222, baseType: !381, size: 8, offset: 3104)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !376, file: !188, line: 223, baseType: !381, size: 8, offset: 3112)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !376, file: !188, line: 224, baseType: !381, size: 8, offset: 3120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !376, file: !188, line: 225, baseType: !381, size: 8, offset: 3128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !99, file: !98, line: 577, baseType: !405, size: 1193984, offset: 5595392)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 1193984, elements: !320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !99, file: !98, line: 578, baseType: !7, size: 32, offset: 6789376)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !99, file: !98, line: 579, baseType: !7, size: 32, offset: 6789408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !99, file: !98, line: 580, baseType: !7, size: 32, offset: 6789440)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !99, file: !98, line: 581, baseType: !7, size: 32, offset: 6789472)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !99, file: !98, line: 584, baseType: !411, size: 64, offset: 6789504)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !98, line: 584, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !99, file: !98, line: 586, baseType: !414, size: 64, offset: 6789568)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !98, line: 902, size: 416, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !426, !427, !428, !429, !430, !431, !432}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !415, file: !98, line: 904, baseType: !31, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !415, file: !98, line: 905, baseType: !31, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !415, file: !98, line: 906, baseType: !7, size: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !415, file: !98, line: 907, baseType: !31, size: 32, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !415, file: !98, line: 908, baseType: !7, size: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !415, file: !98, line: 909, baseType: !423, size: 64, offset: 160)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 2)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !415, file: !98, line: 910, baseType: !224, size: 8, offset: 224)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !415, file: !98, line: 911, baseType: !224, size: 8, offset: 232)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !415, file: !98, line: 912, baseType: !7, size: 32, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !415, file: !98, line: 913, baseType: !7, size: 32, offset: 288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !415, file: !98, line: 915, baseType: !7, size: 32, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !415, file: !98, line: 916, baseType: !7, size: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !415, file: !98, line: 917, baseType: !7, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !99, file: !98, line: 587, baseType: !434, size: 64, offset: 6789632)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !98, line: 839, size: 512, elements: !436)
!436 = !{!437, !438, !441, !442, !443, !444}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !435, file: !98, line: 841, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !435, file: !98, line: 842, baseType: !439, size: 96, offset: 32)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 96, elements: !129)
!440 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !435, file: !98, line: 843, baseType: !439, size: 96, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !435, file: !98, line: 844, baseType: !439, size: 96, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !435, file: !98, line: 845, baseType: !439, size: 96, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !435, file: !98, line: 846, baseType: !439, size: 96, offset: 416)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !99, file: !98, line: 588, baseType: !7, size: 32, offset: 6789696)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !99, file: !98, line: 591, baseType: !31, size: 32, offset: 6789728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !99, file: !98, line: 592, baseType: !7, size: 32, offset: 6789760)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !99, file: !98, line: 593, baseType: !7, size: 32, offset: 6789792)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !99, file: !98, line: 594, baseType: !7, size: 32, offset: 6789824)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !99, file: !98, line: 595, baseType: !451, size: 64, offset: 6789888)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !98, line: 542, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !98, line: 341, size: 109184, elements: !455)
!455 = !{!456, !458, !459, !460, !461, !462, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !684, !686, !848, !877, !904, !907, !908, !910, !911, !912, !913, !914, !915, !916, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !949, !950, !953, !954, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !967, !968, !969, !970, !971, !974, !975, !976, !980, !984, !988, !992, !996, !997, !998, !999, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1013, !1014}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !454, file: !98, line: 343, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !454, file: !98, line: 344, baseType: !102, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !454, file: !98, line: 345, baseType: !186, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !454, file: !98, line: 346, baseType: !239, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !454, file: !98, line: 347, baseType: !7, size: 32, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !454, file: !98, line: 350, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !465, line: 186, size: 33408, elements: !466)
!465 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!466 = !{!467, !468, !471, !618, !619, !620, !621, !622, !623, !624, !625, !626, !630, !631, !632}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !464, file: !465, line: 188, baseType: !96, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !464, file: !465, line: 189, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !98, line: 900, baseType: !103)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !464, file: !465, line: 190, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !465, line: 182, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !465, line: 152, size: 768, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !613, !614, !615, !616, !617}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !475, file: !465, line: 154, baseType: !7, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !475, file: !465, line: 155, baseType: !7, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !475, file: !465, line: 156, baseType: !7, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !475, file: !465, line: 157, baseType: !7, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !475, file: !465, line: 159, baseType: !7, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !475, file: !465, line: 161, baseType: !31, size: 32, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !475, file: !465, line: 162, baseType: !31, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !475, file: !465, line: 164, baseType: !7, size: 32, offset: 224)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !475, file: !465, line: 165, baseType: !7, size: 32, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !475, file: !465, line: 166, baseType: !7, size: 32, offset: 288)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !475, file: !465, line: 167, baseType: !7, size: 32, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !475, file: !465, line: 170, baseType: !7, size: 32, offset: 352)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !475, file: !465, line: 172, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !465, line: 138, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !465, line: 46, size: 3328, elements: !493)
!493 = !{!494, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !533, !535, !536, !553, !555, !559, !561, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !492, file: !465, line: 48, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !29)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !492, file: !465, line: 50, baseType: !7, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !492, file: !465, line: 51, baseType: !7, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !492, file: !465, line: 52, baseType: !7, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !492, file: !465, line: 53, baseType: !7, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !492, file: !465, line: 54, baseType: !31, size: 32, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !492, file: !465, line: 55, baseType: !31, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !492, file: !465, line: 57, baseType: !7, size: 32, offset: 224)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !492, file: !465, line: 58, baseType: !7, size: 32, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !492, file: !465, line: 59, baseType: !7, size: 32, offset: 288)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !492, file: !465, line: 61, baseType: !224, size: 8, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !492, file: !465, line: 62, baseType: !7, size: 32, offset: 352)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !492, file: !465, line: 63, baseType: !7, size: 32, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !492, file: !465, line: 64, baseType: !7, size: 32, offset: 416)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !492, file: !465, line: 65, baseType: !7, size: 32, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !492, file: !465, line: 67, baseType: !511, size: 16, offset: 480)
!511 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !492, file: !465, line: 69, baseType: !7, size: 32, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !492, file: !465, line: 69, baseType: !7, size: 32, offset: 544)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !492, file: !465, line: 69, baseType: !7, size: 32, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !492, file: !465, line: 69, baseType: !7, size: 32, offset: 608)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !492, file: !465, line: 70, baseType: !7, size: 32, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !492, file: !465, line: 70, baseType: !7, size: 32, offset: 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !492, file: !465, line: 70, baseType: !7, size: 32, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !492, file: !465, line: 70, baseType: !7, size: 32, offset: 736)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !492, file: !465, line: 71, baseType: !7, size: 32, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !492, file: !465, line: 72, baseType: !7, size: 32, offset: 800)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !492, file: !465, line: 73, baseType: !31, size: 32, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !492, file: !465, line: 74, baseType: !31, size: 32, offset: 864)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !492, file: !465, line: 75, baseType: !7, size: 32, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !492, file: !465, line: 75, baseType: !7, size: 32, offset: 928)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !492, file: !465, line: 76, baseType: !7, size: 32, offset: 960)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !492, file: !465, line: 76, baseType: !7, size: 32, offset: 992)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !492, file: !465, line: 79, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !225, line: 41, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !225, line: 23, baseType: !292)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !492, file: !465, line: 80, baseType: !534, size: 64, offset: 1088)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !492, file: !465, line: 81, baseType: !534, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !492, file: !465, line: 84, baseType: !537, size: 64, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !465, line: 36, size: 256, elements: !540)
!540 = !{!541, !544, !551}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !539, file: !465, line: 38, baseType: !542, size: 128)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 128, elements: !424)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !539, file: !465, line: 39, baseType: !545, size: 64, offset: 128)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 64, elements: !424)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !98, line: 104, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 100, size: 32, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !547, file: !98, line: 102, baseType: !511, size: 16)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !547, file: !98, line: 103, baseType: !511, size: 16, offset: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !539, file: !465, line: 40, baseType: !552, size: 16, offset: 192)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 16, elements: !424)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !492, file: !465, line: 85, baseType: !554, size: 192, offset: 1280)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 192, elements: !129)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !492, file: !465, line: 87, baseType: !556, size: 64, offset: 1472)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !465, line: 29, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !556, file: !465, line: 31, baseType: !223, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !492, file: !465, line: 88, baseType: !560, size: 192, offset: 1536)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, elements: !129)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !492, file: !465, line: 90, baseType: !562, size: 64, offset: 1728)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !492, file: !465, line: 92, baseType: !543, size: 64, offset: 1792)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !492, file: !465, line: 93, baseType: !543, size: 64, offset: 1856)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !492, file: !465, line: 94, baseType: !543, size: 64, offset: 1920)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !492, file: !465, line: 96, baseType: !7, size: 32, offset: 1984)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !492, file: !465, line: 97, baseType: !7, size: 32, offset: 2016)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !492, file: !465, line: 98, baseType: !7, size: 32, offset: 2048)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !492, file: !465, line: 99, baseType: !7, size: 32, offset: 2080)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !492, file: !465, line: 100, baseType: !7, size: 32, offset: 2112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !492, file: !465, line: 102, baseType: !7, size: 32, offset: 2144)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !492, file: !465, line: 103, baseType: !7, size: 32, offset: 2176)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !492, file: !465, line: 104, baseType: !7, size: 32, offset: 2208)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !492, file: !465, line: 105, baseType: !7, size: 32, offset: 2240)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !492, file: !465, line: 106, baseType: !7, size: 32, offset: 2272)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !492, file: !465, line: 107, baseType: !7, size: 32, offset: 2304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !492, file: !465, line: 108, baseType: !7, size: 32, offset: 2336)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !492, file: !465, line: 109, baseType: !7, size: 32, offset: 2368)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !492, file: !465, line: 110, baseType: !423, size: 64, offset: 2400)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !492, file: !465, line: 111, baseType: !7, size: 32, offset: 2464)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !492, file: !465, line: 112, baseType: !583, size: 64, offset: 2496)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !98, line: 194, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !98, line: 186, size: 256, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !585, file: !98, line: 188, baseType: !7, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !585, file: !98, line: 189, baseType: !7, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !585, file: !98, line: 190, baseType: !7, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !585, file: !98, line: 191, baseType: !7, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !585, file: !98, line: 192, baseType: !7, size: 32, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !585, file: !98, line: 193, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !492, file: !465, line: 115, baseType: !7, size: 32, offset: 2560)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !492, file: !465, line: 118, baseType: !7, size: 32, offset: 2592)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !492, file: !465, line: 119, baseType: !7, size: 32, offset: 2624)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !492, file: !465, line: 120, baseType: !7, size: 32, offset: 2656)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !492, file: !465, line: 121, baseType: !530, size: 64, offset: 2688)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !492, file: !465, line: 124, baseType: !7, size: 32, offset: 2752)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !492, file: !465, line: 125, baseType: !7, size: 32, offset: 2784)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !492, file: !465, line: 126, baseType: !7, size: 32, offset: 2816)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !492, file: !465, line: 128, baseType: !7, size: 32, offset: 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !492, file: !465, line: 129, baseType: !7, size: 32, offset: 2880)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !492, file: !465, line: 130, baseType: !7, size: 32, offset: 2912)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !492, file: !465, line: 131, baseType: !7, size: 32, offset: 2944)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !492, file: !465, line: 132, baseType: !529, size: 64, offset: 3008)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !492, file: !465, line: 133, baseType: !7, size: 32, offset: 3072)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !492, file: !465, line: 134, baseType: !7, size: 32, offset: 3104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !492, file: !465, line: 136, baseType: !552, size: 16, offset: 3136)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !492, file: !465, line: 137, baseType: !611, size: 128, offset: 3200)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 128, elements: !424)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !475, file: !465, line: 173, baseType: !490, size: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !475, file: !465, line: 174, baseType: !490, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !475, file: !465, line: 177, baseType: !7, size: 32, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !475, file: !465, line: 178, baseType: !423, size: 64, offset: 608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !475, file: !465, line: 179, baseType: !423, size: 64, offset: 672)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !464, file: !465, line: 191, baseType: !472, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !464, file: !465, line: 192, baseType: !472, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !464, file: !465, line: 193, baseType: !31, size: 32, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !464, file: !465, line: 194, baseType: !31, size: 32, offset: 352)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !464, file: !465, line: 195, baseType: !31, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !464, file: !465, line: 196, baseType: !31, size: 32, offset: 416)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !464, file: !465, line: 197, baseType: !7, size: 32, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !464, file: !465, line: 199, baseType: !7, size: 32, offset: 480)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !464, file: !465, line: 200, baseType: !627, size: 32768, offset: 512)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 1024)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !464, file: !465, line: 205, baseType: !7, size: 32, offset: 33280)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !464, file: !465, line: 206, baseType: !7, size: 32, offset: 33312)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !464, file: !465, line: 208, baseType: !473, size: 64, offset: 33344)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !454, file: !98, line: 353, baseType: !7, size: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !454, file: !98, line: 354, baseType: !7, size: 32, offset: 416)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !454, file: !98, line: 355, baseType: !7, size: 32, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !454, file: !98, line: 356, baseType: !7, size: 32, offset: 480)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !454, file: !98, line: 357, baseType: !7, size: 32, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !454, file: !98, line: 359, baseType: !7, size: 32, offset: 544)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !454, file: !98, line: 360, baseType: !7, size: 32, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !454, file: !98, line: 361, baseType: !7, size: 32, offset: 608)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !454, file: !98, line: 365, baseType: !31, size: 32, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !454, file: !98, line: 366, baseType: !7, size: 32, offset: 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !454, file: !98, line: 368, baseType: !423, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !454, file: !98, line: 372, baseType: !7, size: 32, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !454, file: !98, line: 378, baseType: !31, size: 32, offset: 800)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !454, file: !98, line: 379, baseType: !7, size: 32, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !454, file: !98, line: 387, baseType: !31, size: 32, offset: 864)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !454, file: !98, line: 388, baseType: !31, size: 32, offset: 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !454, file: !98, line: 389, baseType: !511, size: 16, offset: 928)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !454, file: !98, line: 396, baseType: !7, size: 32, offset: 960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !454, file: !98, line: 397, baseType: !7, size: 32, offset: 992)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !454, file: !98, line: 400, baseType: !7, size: 32, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !454, file: !98, line: 401, baseType: !7, size: 32, offset: 1056)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !454, file: !98, line: 402, baseType: !423, size: 64, offset: 1088)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !454, file: !98, line: 406, baseType: !7, size: 32, offset: 1152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !454, file: !98, line: 407, baseType: !7, size: 32, offset: 1184)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !454, file: !98, line: 408, baseType: !7, size: 32, offset: 1216)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !454, file: !98, line: 409, baseType: !7, size: 32, offset: 1248)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !454, file: !98, line: 410, baseType: !7, size: 32, offset: 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !454, file: !98, line: 411, baseType: !7, size: 32, offset: 1312)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !454, file: !98, line: 412, baseType: !7, size: 32, offset: 1344)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !454, file: !98, line: 413, baseType: !31, size: 32, offset: 1376)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !454, file: !98, line: 414, baseType: !31, size: 32, offset: 1408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !454, file: !98, line: 415, baseType: !224, size: 8, offset: 1440)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !454, file: !98, line: 416, baseType: !495, size: 32, offset: 1472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !454, file: !98, line: 417, baseType: !7, size: 32, offset: 1504)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !454, file: !98, line: 418, baseType: !7, size: 32, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !454, file: !98, line: 419, baseType: !7, size: 32, offset: 1568)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !454, file: !98, line: 420, baseType: !7, size: 32, offset: 1600)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !454, file: !98, line: 421, baseType: !7, size: 32, offset: 1632)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !454, file: !98, line: 422, baseType: !7, size: 32, offset: 1664)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !454, file: !98, line: 423, baseType: !7, size: 32, offset: 1696)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !454, file: !98, line: 426, baseType: !7, size: 32, offset: 1728)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !454, file: !98, line: 427, baseType: !7, size: 32, offset: 1760)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !454, file: !98, line: 428, baseType: !7, size: 32, offset: 1792)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !454, file: !98, line: 429, baseType: !7, size: 32, offset: 1824)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !454, file: !98, line: 430, baseType: !7, size: 32, offset: 1856)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !454, file: !98, line: 431, baseType: !7, size: 32, offset: 1888)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !454, file: !98, line: 432, baseType: !7, size: 32, offset: 1920)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !454, file: !98, line: 433, baseType: !7, size: 32, offset: 1952)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !454, file: !98, line: 434, baseType: !583, size: 64, offset: 1984)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !454, file: !98, line: 436, baseType: !683, size: 48, offset: 2048)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 48, elements: !209)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !454, file: !98, line: 437, baseType: !685, size: 384, offset: 2112)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 384, elements: !209)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !454, file: !98, line: 440, baseType: !687, size: 64, offset: 2496)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !98, line: 324, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !98, line: 314, size: 384, elements: !690)
!690 = !{!691, !702, !711}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !689, file: !98, line: 317, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !98, line: 47, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !98, line: 300, size: 256, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !694, file: !98, line: 303, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !694, file: !98, line: 304, baseType: !7, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !694, file: !98, line: 306, baseType: !7, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !694, file: !98, line: 307, baseType: !7, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !694, file: !98, line: 309, baseType: !223, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !694, file: !98, line: 310, baseType: !7, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !689, file: !98, line: 318, baseType: !703, size: 256, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !98, line: 95, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 88, size: 256, elements: !705)
!705 = !{!706, !707, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !704, file: !98, line: 90, baseType: !31, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !704, file: !98, line: 91, baseType: !31, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !704, file: !98, line: 92, baseType: !7, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !704, file: !98, line: 93, baseType: !223, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !704, file: !98, line: 94, baseType: !46, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !689, file: !98, line: 320, baseType: !712, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!7, !715, !846, !844}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !98, line: 273, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !98, line: 197, size: 3840, elements: !718)
!718 = !{!719, !721, !722, !723, !724, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !753, !754, !755, !756, !757, !760, !761, !770, !771, !772, !773, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !799, !800, !815, !821, !845}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !717, file: !98, line: 199, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !717, file: !98, line: 200, baseType: !457, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !717, file: !98, line: 201, baseType: !102, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !717, file: !98, line: 202, baseType: !7, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !717, file: !98, line: 203, baseType: !725, size: 32, offset: 224)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !98, line: 112, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 108, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !726, file: !98, line: 110, baseType: !511, size: 16)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !726, file: !98, line: 111, baseType: !511, size: 16, offset: 16)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !717, file: !98, line: 204, baseType: !7, size: 32, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !717, file: !98, line: 205, baseType: !7, size: 32, offset: 288)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !717, file: !98, line: 206, baseType: !7, size: 32, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !717, file: !98, line: 207, baseType: !7, size: 32, offset: 352)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !717, file: !98, line: 208, baseType: !7, size: 32, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !717, file: !98, line: 209, baseType: !7, size: 32, offset: 416)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !717, file: !98, line: 210, baseType: !7, size: 32, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !717, file: !98, line: 212, baseType: !7, size: 32, offset: 480)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !717, file: !98, line: 213, baseType: !7, size: 32, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !717, file: !98, line: 215, baseType: !7, size: 32, offset: 544)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !717, file: !98, line: 216, baseType: !423, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !717, file: !98, line: 217, baseType: !128, size: 96, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !717, file: !98, line: 218, baseType: !7, size: 32, offset: 736)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !717, file: !98, line: 219, baseType: !7, size: 32, offset: 768)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !717, file: !98, line: 220, baseType: !7, size: 32, offset: 800)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !717, file: !98, line: 221, baseType: !7, size: 32, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !717, file: !98, line: 223, baseType: !511, size: 16, offset: 864)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !717, file: !98, line: 224, baseType: !381, size: 8, offset: 880)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !717, file: !98, line: 225, baseType: !381, size: 8, offset: 888)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !717, file: !98, line: 226, baseType: !511, size: 16, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !717, file: !98, line: 227, baseType: !511, size: 16, offset: 912)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !717, file: !98, line: 229, baseType: !752, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !717, file: !98, line: 230, baseType: !752, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !717, file: !98, line: 232, baseType: !752, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !717, file: !98, line: 233, baseType: !752, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !717, file: !98, line: 236, baseType: !511, size: 16, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !717, file: !98, line: 237, baseType: !758, size: 1024, offset: 1232)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 1024, elements: !759)
!759 = !{!425, !79, !79, !425}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !717, file: !98, line: 239, baseType: !7, size: 32, offset: 2272)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !717, file: !98, line: 240, baseType: !762, size: 192, offset: 2304)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 192, elements: !129)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !764, line: 103, baseType: !765)
!764 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !766, line: 27, baseType: !767)
!766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !768, line: 44, baseType: !769)
!768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!769 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !717, file: !98, line: 241, baseType: !762, size: 192, offset: 2496)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !717, file: !98, line: 242, baseType: !762, size: 192, offset: 2688)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !717, file: !98, line: 244, baseType: !7, size: 32, offset: 2880)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !717, file: !98, line: 245, baseType: !774, size: 32, offset: 2912)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 32, elements: !775)
!775 = !{!79}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !717, file: !98, line: 246, baseType: !774, size: 32, offset: 2944)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !717, file: !98, line: 247, baseType: !381, size: 8, offset: 2976)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !717, file: !98, line: 248, baseType: !381, size: 8, offset: 2984)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !717, file: !98, line: 249, baseType: !381, size: 8, offset: 2992)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !717, file: !98, line: 250, baseType: !511, size: 16, offset: 3008)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !717, file: !98, line: 251, baseType: !511, size: 16, offset: 3024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !717, file: !98, line: 252, baseType: !511, size: 16, offset: 3040)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !717, file: !98, line: 254, baseType: !7, size: 32, offset: 3072)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !717, file: !98, line: 256, baseType: !7, size: 32, offset: 3104)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !717, file: !98, line: 256, baseType: !7, size: 32, offset: 3136)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !717, file: !98, line: 256, baseType: !7, size: 32, offset: 3168)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !717, file: !98, line: 256, baseType: !7, size: 32, offset: 3200)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !717, file: !98, line: 257, baseType: !7, size: 32, offset: 3232)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !717, file: !98, line: 257, baseType: !7, size: 32, offset: 3264)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !717, file: !98, line: 257, baseType: !7, size: 32, offset: 3296)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !717, file: !98, line: 257, baseType: !7, size: 32, offset: 3328)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !717, file: !98, line: 259, baseType: !7, size: 32, offset: 3360)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !717, file: !98, line: 260, baseType: !7, size: 32, offset: 3392)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !717, file: !98, line: 262, baseType: !795, size: 64, offset: 3456)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !752, !798, !7, !7}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !36)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !717, file: !98, line: 263, baseType: !795, size: 64, offset: 3520)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !717, file: !98, line: 265, baseType: !801, size: 64, offset: 3584)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !752, !804, !814, !511, !537, !7, !7, !7, !7, !7}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !98, line: 85, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !98, line: 77, size: 128, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !806, file: !98, line: 79, baseType: !7, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !806, file: !98, line: 80, baseType: !7, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !806, file: !98, line: 81, baseType: !511, size: 16, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !806, file: !98, line: 82, baseType: !511, size: 16, offset: 80)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !806, file: !98, line: 83, baseType: !511, size: 16, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !806, file: !98, line: 84, baseType: !511, size: 16, offset: 112)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !717, file: !98, line: 268, baseType: !816, size: 64, offset: 3648)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!7, !752, !819, !7}
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !98, line: 97, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !717, file: !98, line: 269, baseType: !822, size: 64, offset: 3712)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!381, !752, !825, !844, !381, !7}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !98, line: 276, size: 384, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !840}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !98, line: 278, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !826, file: !98, line: 279, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !826, file: !98, line: 280, baseType: !7, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !826, file: !98, line: 281, baseType: !7, size: 32, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !826, file: !98, line: 282, baseType: !7, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !826, file: !98, line: 283, baseType: !31, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !826, file: !98, line: 284, baseType: !7, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !826, file: !98, line: 285, baseType: !7, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !826, file: !98, line: 293, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !7, !7, !46, !46}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !826, file: !98, line: 295, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !715, !825, !819}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !717, file: !98, line: 272, baseType: !224, size: 8, offset: 3776)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !98, line: 296, baseType: !826)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !454, file: !98, line: 441, baseType: !849, size: 64, offset: 2560)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !98, line: 153, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 145, size: 2912, elements: !852)
!852 = !{!853, !863, !867, !871, !874, !876}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !851, file: !98, line: 147, baseType: !854, size: 1056)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 1056, elements: !861)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !98, line: 122, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 117, size: 32, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !856, file: !98, line: 119, baseType: !532, size: 16)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !856, file: !98, line: 120, baseType: !226, size: 8, offset: 16)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !856, file: !98, line: 121, baseType: !226, size: 8, offset: 24)
!861 = !{!130, !862}
!862 = !DISubrange(count: 11)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !851, file: !98, line: 148, baseType: !864, size: 576, offset: 1056)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 576, elements: !865)
!865 = !{!425, !866}
!866 = !DISubrange(count: 9)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !851, file: !98, line: 149, baseType: !868, size: 640, offset: 1632)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 640, elements: !869)
!869 = !{!425, !870}
!870 = !DISubrange(count: 10)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !851, file: !98, line: 150, baseType: !872, size: 384, offset: 2272)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 384, elements: !873)
!873 = !{!425, !78}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !851, file: !98, line: 151, baseType: !875, size: 128, offset: 2656)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 128, elements: !775)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !851, file: !98, line: 152, baseType: !875, size: 128, offset: 2784)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !454, file: !98, line: 442, baseType: !878, size: 64, offset: 2624)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !98, line: 175, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 164, size: 52768, elements: !881)
!881 = !{!882, !884, !886, !887, !890, !894, !898, !899, !903}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !880, file: !98, line: 166, baseType: !883, size: 96)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 96, elements: !129)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !880, file: !98, line: 167, baseType: !885, size: 64, offset: 96)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 64, elements: !424)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !880, file: !98, line: 168, baseType: !875, size: 128, offset: 160)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !880, file: !98, line: 169, baseType: !888, size: 384, offset: 288)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 384, elements: !889)
!889 = !{!130, !79}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !880, file: !98, line: 170, baseType: !891, size: 2816, offset: 672)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 2816, elements: !892)
!892 = !{!893, !79}
!893 = !DISubrange(count: 22)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !880, file: !98, line: 171, baseType: !895, size: 21120, offset: 3488)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 21120, elements: !896)
!896 = !{!425, !893, !897}
!897 = !DISubrange(count: 15)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !880, file: !98, line: 172, baseType: !895, size: 21120, offset: 24608)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !880, file: !98, line: 173, baseType: !900, size: 3520, offset: 45728)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 3520, elements: !901)
!901 = !{!893, !902}
!902 = !DISubrange(count: 5)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !880, file: !98, line: 174, baseType: !900, size: 3520, offset: 49248)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !454, file: !98, line: 444, baseType: !905, size: 6144, offset: 2688)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !906)
!906 = !{!78, !321}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !454, file: !98, line: 446, baseType: !423, size: 64, offset: 8832)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !454, file: !98, line: 447, baseType: !909, size: 128, offset: 8896)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !424)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !454, file: !98, line: 448, baseType: !909, size: 128, offset: 9024)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !454, file: !98, line: 449, baseType: !909, size: 128, offset: 9152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !454, file: !98, line: 452, baseType: !909, size: 128, offset: 9280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !454, file: !98, line: 454, baseType: !7, size: 32, offset: 9408)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !454, file: !98, line: 455, baseType: !7, size: 32, offset: 9440)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !454, file: !98, line: 456, baseType: !7, size: 32, offset: 9472)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !454, file: !98, line: 458, baseType: !917, size: 256, offset: 9504)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !98, line: 337, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !98, line: 327, size: 256, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !918, file: !98, line: 329, baseType: !31, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !918, file: !98, line: 330, baseType: !31, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !918, file: !98, line: 331, baseType: !31, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !918, file: !98, line: 332, baseType: !31, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !918, file: !98, line: 333, baseType: !31, size: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !918, file: !98, line: 334, baseType: !31, size: 32, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !918, file: !98, line: 335, baseType: !31, size: 32, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !918, file: !98, line: 336, baseType: !31, size: 32, offset: 224)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !454, file: !98, line: 461, baseType: !511, size: 16, offset: 9760)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !454, file: !98, line: 462, baseType: !511, size: 16, offset: 9776)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !454, file: !98, line: 463, baseType: !511, size: 16, offset: 9792)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !454, file: !98, line: 465, baseType: !7, size: 32, offset: 9824)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !454, file: !98, line: 467, baseType: !7, size: 32, offset: 9856)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !454, file: !98, line: 468, baseType: !7, size: 32, offset: 9888)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !454, file: !98, line: 470, baseType: !7, size: 32, offset: 9920)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !454, file: !98, line: 471, baseType: !534, size: 64, offset: 9984)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !454, file: !98, line: 472, baseType: !534, size: 64, offset: 10048)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !454, file: !98, line: 473, baseType: !370, size: 64, offset: 10112)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !454, file: !98, line: 474, baseType: !370, size: 64, offset: 10176)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !454, file: !98, line: 475, baseType: !370, size: 64, offset: 10240)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !454, file: !98, line: 477, baseType: !50, size: 512, offset: 10304)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !454, file: !98, line: 479, baseType: !529, size: 64, offset: 10816)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !454, file: !98, line: 480, baseType: !529, size: 64, offset: 10880)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !454, file: !98, line: 481, baseType: !357, size: 64, offset: 10944)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !454, file: !98, line: 482, baseType: !529, size: 64, offset: 11008)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !454, file: !98, line: 483, baseType: !529, size: 64, offset: 11072)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !454, file: !98, line: 486, baseType: !947, size: 9216, offset: 11136)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !948)
!948 = !{!130, !78, !79, !79}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !454, file: !98, line: 487, baseType: !947, size: 9216, offset: 20352)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !454, file: !98, line: 488, baseType: !951, size: 36864, offset: 29568)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !952)
!952 = !{!130, !78, !84, !84}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !454, file: !98, line: 489, baseType: !951, size: 36864, offset: 66432)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !454, file: !98, line: 491, baseType: !955, size: 768, offset: 103296)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 768, elements: !199)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !454, file: !98, line: 494, baseType: !55, size: 2048, offset: 104064)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !454, file: !98, line: 495, baseType: !7, size: 32, offset: 106112)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !454, file: !98, line: 496, baseType: !7, size: 32, offset: 106144)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !454, file: !98, line: 500, baseType: !292, size: 16, offset: 106176)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !454, file: !98, line: 501, baseType: !292, size: 16, offset: 106192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !454, file: !98, line: 503, baseType: !292, size: 16, offset: 106208)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !454, file: !98, line: 504, baseType: !292, size: 16, offset: 106224)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !454, file: !98, line: 505, baseType: !370, size: 64, offset: 106240)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !454, file: !98, line: 506, baseType: !370, size: 64, offset: 106304)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !454, file: !98, line: 507, baseType: !966, size: 64, offset: 106368)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !454, file: !98, line: 508, baseType: !511, size: 16, offset: 106432)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !454, file: !98, line: 509, baseType: !511, size: 16, offset: 106448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !454, file: !98, line: 512, baseType: !7, size: 32, offset: 106464)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !454, file: !98, line: 513, baseType: !7, size: 32, offset: 106496)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !454, file: !98, line: 514, baseType: !972, size: 64, offset: 106560)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !454, file: !98, line: 515, baseType: !972, size: 64, offset: 106624)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !454, file: !98, line: 520, baseType: !7, size: 32, offset: 106688)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !454, file: !98, line: 521, baseType: !977, size: 544, offset: 106720)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 17)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !454, file: !98, line: 523, baseType: !981, size: 64, offset: 107264)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !715}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !454, file: !98, line: 524, baseType: !985, size: 64, offset: 107328)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!7, !715, !798, !529, !543}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !454, file: !98, line: 525, baseType: !989, size: 64, offset: 107392)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!7, !457, !102}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !454, file: !98, line: 526, baseType: !993, size: 64, offset: 107456)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!7, !720, !7}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !454, file: !98, line: 527, baseType: !981, size: 64, offset: 107520)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !454, file: !98, line: 528, baseType: !981, size: 64, offset: 107584)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !454, file: !98, line: 529, baseType: !981, size: 64, offset: 107648)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !454, file: !98, line: 530, baseType: !1000, size: 64, offset: 107712)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !720}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !454, file: !98, line: 531, baseType: !981, size: 64, offset: 107776)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !454, file: !98, line: 532, baseType: !837, size: 64, offset: 107840)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !454, file: !98, line: 533, baseType: !837, size: 64, offset: 107904)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !454, file: !98, line: 534, baseType: !981, size: 64, offset: 107968)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !454, file: !98, line: 535, baseType: !7, size: 32, offset: 108032)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !454, file: !98, line: 536, baseType: !715, size: 64, offset: 108096)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !454, file: !98, line: 537, baseType: !543, size: 64, offset: 108160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !454, file: !98, line: 538, baseType: !357, size: 64, offset: 108224)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !454, file: !98, line: 539, baseType: !1012, size: 64, offset: 108288)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !454, file: !98, line: 540, baseType: !380, size: 64, offset: 108352)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !454, file: !98, line: 541, baseType: !1015, size: 768, offset: 108416)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 768, elements: !203)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !99, file: !98, line: 596, baseType: !380, size: 64, offset: 6789952)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !99, file: !98, line: 597, baseType: !1018, size: 192, offset: 6790016)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 192, elements: !129)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !98, line: 601, baseType: !7, size: 32, offset: 6790208)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !99, file: !98, line: 602, baseType: !7, size: 32, offset: 6790240)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !99, file: !98, line: 603, baseType: !7, size: 32, offset: 6790272)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !99, file: !98, line: 604, baseType: !7, size: 32, offset: 6790304)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !99, file: !98, line: 605, baseType: !7, size: 32, offset: 6790336)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !99, file: !98, line: 607, baseType: !1012, size: 64, offset: 6790400)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !99, file: !98, line: 608, baseType: !1026, size: 192, offset: 6790464)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 192, elements: !129)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !99, file: !98, line: 609, baseType: !1028, size: 64, offset: 6790656)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !99, file: !98, line: 610, baseType: !357, size: 64, offset: 6790720)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !99, file: !98, line: 611, baseType: !1032, size: 192, offset: 6790784)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, elements: !129)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !99, file: !98, line: 613, baseType: !7, size: 32, offset: 6790976)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !99, file: !98, line: 614, baseType: !7, size: 32, offset: 6791008)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !99, file: !98, line: 617, baseType: !452, size: 64, offset: 6791040)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !99, file: !98, line: 618, baseType: !715, size: 64, offset: 6791104)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !99, file: !98, line: 619, baseType: !1038, size: 192, offset: 6791168)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 192, elements: !129)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !99, file: !98, line: 621, baseType: !7, size: 32, offset: 6791360)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !99, file: !98, line: 626, baseType: !1041, size: 64, offset: 6791424)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !98, line: 626, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !99, file: !98, line: 627, baseType: !1041, size: 64, offset: 6791488)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !99, file: !98, line: 629, baseType: !31, size: 32, offset: 6791552)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !99, file: !98, line: 630, baseType: !7, size: 32, offset: 6791584)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !99, file: !98, line: 634, baseType: !7, size: 32, offset: 6791616)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !99, file: !98, line: 635, baseType: !31, size: 32, offset: 6791648)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !99, file: !98, line: 638, baseType: !7, size: 32, offset: 6791680)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !99, file: !98, line: 638, baseType: !7, size: 32, offset: 6791712)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !99, file: !98, line: 638, baseType: !7, size: 32, offset: 6791744)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !99, file: !98, line: 639, baseType: !31, size: 32, offset: 6791776)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !99, file: !98, line: 639, baseType: !31, size: 32, offset: 6791808)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !99, file: !98, line: 640, baseType: !7, size: 32, offset: 6791840)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !99, file: !98, line: 641, baseType: !7, size: 32, offset: 6791872)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !99, file: !98, line: 642, baseType: !7, size: 32, offset: 6791904)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !99, file: !98, line: 645, baseType: !7, size: 32, offset: 6791936)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !99, file: !98, line: 647, baseType: !31, size: 32, offset: 6791968)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !99, file: !98, line: 648, baseType: !31, size: 32, offset: 6792000)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !99, file: !98, line: 649, baseType: !31, size: 32, offset: 6792032)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !99, file: !98, line: 650, baseType: !31, size: 32, offset: 6792064)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !99, file: !98, line: 651, baseType: !31, size: 32, offset: 6792096)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !99, file: !98, line: 652, baseType: !31, size: 32, offset: 6792128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !99, file: !98, line: 653, baseType: !31, size: 32, offset: 6792160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !99, file: !98, line: 655, baseType: !7, size: 32, offset: 6792192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !99, file: !98, line: 657, baseType: !7, size: 32, offset: 6792224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !99, file: !98, line: 658, baseType: !7, size: 32, offset: 6792256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !99, file: !98, line: 661, baseType: !7, size: 32, offset: 6792288)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !99, file: !98, line: 662, baseType: !511, size: 16, offset: 6792320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !99, file: !98, line: 663, baseType: !511, size: 16, offset: 6792336)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !99, file: !98, line: 664, baseType: !423, size: 64, offset: 6792352)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !99, file: !98, line: 665, baseType: !7, size: 32, offset: 6792416)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !99, file: !98, line: 666, baseType: !7, size: 32, offset: 6792448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !99, file: !98, line: 667, baseType: !1074, size: 96, offset: 6792480)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !129)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !99, file: !98, line: 668, baseType: !128, size: 96, offset: 6792576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !99, file: !98, line: 670, baseType: !7, size: 32, offset: 6792672)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !99, file: !98, line: 671, baseType: !7, size: 32, offset: 6792704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !99, file: !98, line: 672, baseType: !7, size: 32, offset: 6792736)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !99, file: !98, line: 673, baseType: !7, size: 32, offset: 6792768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !99, file: !98, line: 674, baseType: !7, size: 32, offset: 6792800)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !99, file: !98, line: 675, baseType: !7, size: 32, offset: 6792832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !99, file: !98, line: 676, baseType: !7, size: 32, offset: 6792864)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !99, file: !98, line: 677, baseType: !7, size: 32, offset: 6792896)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !99, file: !98, line: 678, baseType: !7, size: 32, offset: 6792928)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !99, file: !98, line: 679, baseType: !7, size: 32, offset: 6792960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !99, file: !98, line: 680, baseType: !1087, size: 192, offset: 6792992)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !1088)
!1088 = !{!130, !425}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !99, file: !98, line: 681, baseType: !1087, size: 192, offset: 6793184)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !99, file: !98, line: 682, baseType: !1087, size: 192, offset: 6793376)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !99, file: !98, line: 683, baseType: !7, size: 32, offset: 6793568)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !99, file: !98, line: 684, baseType: !7, size: 32, offset: 6793600)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !99, file: !98, line: 685, baseType: !7, size: 32, offset: 6793632)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !99, file: !98, line: 686, baseType: !7, size: 32, offset: 6793664)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !99, file: !98, line: 687, baseType: !7, size: 32, offset: 6793696)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !99, file: !98, line: 689, baseType: !7, size: 32, offset: 6793728)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !99, file: !98, line: 692, baseType: !7, size: 32, offset: 6793760)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !99, file: !98, line: 693, baseType: !7, size: 32, offset: 6793792)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !99, file: !98, line: 700, baseType: !7, size: 32, offset: 6793824)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !99, file: !98, line: 701, baseType: !7, size: 32, offset: 6793856)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !99, file: !98, line: 702, baseType: !7, size: 32, offset: 6793888)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !99, file: !98, line: 703, baseType: !7, size: 32, offset: 6793920)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !99, file: !98, line: 704, baseType: !7, size: 32, offset: 6793952)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !99, file: !98, line: 705, baseType: !31, size: 32, offset: 6793984)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !99, file: !98, line: 706, baseType: !7, size: 32, offset: 6794016)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !99, file: !98, line: 707, baseType: !7, size: 32, offset: 6794048)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !99, file: !98, line: 710, baseType: !7, size: 32, offset: 6794080)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !99, file: !98, line: 711, baseType: !7, size: 32, offset: 6794112)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !99, file: !98, line: 712, baseType: !7, size: 32, offset: 6794144)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !99, file: !98, line: 713, baseType: !7, size: 32, offset: 6794176)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !99, file: !98, line: 714, baseType: !7, size: 32, offset: 6794208)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !99, file: !98, line: 716, baseType: !7, size: 32, offset: 6794240)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !99, file: !98, line: 717, baseType: !7, size: 32, offset: 6794272)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !99, file: !98, line: 719, baseType: !223, size: 64, offset: 6794304)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !99, file: !98, line: 720, baseType: !223, size: 64, offset: 6794368)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !99, file: !98, line: 722, baseType: !1117, size: 2560, offset: 6794432)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1118, line: 38, baseType: !1119)
!1118 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1118, line: 20, size: 2560, elements: !1120)
!1120 = !{!1121, !1122, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1119, file: !1118, line: 22, baseType: !118, size: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1119, file: !1118, line: 24, baseType: !1123, size: 192, offset: 1088)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, elements: !129)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1119, file: !1118, line: 25, baseType: !1123, size: 192, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1119, file: !1118, line: 26, baseType: !1123, size: 192, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1119, file: !1118, line: 31, baseType: !1127, size: 192, offset: 1664)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 192, elements: !129)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1119, file: !1118, line: 32, baseType: !1127, size: 192, offset: 1856)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1119, file: !1118, line: 33, baseType: !1127, size: 192, offset: 2048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1119, file: !1118, line: 35, baseType: !128, size: 96, offset: 2240)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1119, file: !1118, line: 36, baseType: !128, size: 96, offset: 2336)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1119, file: !1118, line: 37, baseType: !128, size: 96, offset: 2432)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !99, file: !98, line: 723, baseType: !1117, size: 2560, offset: 6796992)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !99, file: !98, line: 724, baseType: !1117, size: 2560, offset: 6799552)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !99, file: !98, line: 725, baseType: !1117, size: 2560, offset: 6802112)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !99, file: !98, line: 728, baseType: !1117, size: 2560, offset: 6804672)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !99, file: !98, line: 729, baseType: !1117, size: 2560, offset: 6807232)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !99, file: !98, line: 730, baseType: !1117, size: 2560, offset: 6809792)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !99, file: !98, line: 731, baseType: !1117, size: 2560, offset: 6812352)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !99, file: !98, line: 735, baseType: !31, size: 32, offset: 6814912)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !99, file: !98, line: 737, baseType: !7, size: 32, offset: 6814944)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !99, file: !98, line: 738, baseType: !7, size: 32, offset: 6814976)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !99, file: !98, line: 741, baseType: !763, size: 64, offset: 6815040)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !99, file: !98, line: 744, baseType: !7, size: 32, offset: 6815104)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !99, file: !98, line: 746, baseType: !627, size: 32768, offset: 6815136)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !99, file: !98, line: 748, baseType: !7, size: 32, offset: 6847904)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !99, file: !98, line: 751, baseType: !7, size: 32, offset: 6847936)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !99, file: !98, line: 752, baseType: !7, size: 32, offset: 6847968)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !99, file: !98, line: 755, baseType: !7, size: 32, offset: 6848000)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !99, file: !98, line: 756, baseType: !7, size: 32, offset: 6848032)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !99, file: !98, line: 758, baseType: !7, size: 32, offset: 6848064)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !99, file: !98, line: 759, baseType: !7, size: 32, offset: 6848096)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !99, file: !98, line: 762, baseType: !529, size: 64, offset: 6848128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !99, file: !98, line: 763, baseType: !534, size: 64, offset: 6848192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !99, file: !98, line: 765, baseType: !46, size: 64, offset: 6848256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !99, file: !98, line: 766, baseType: !46, size: 64, offset: 6848320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !99, file: !98, line: 768, baseType: !973, size: 64, offset: 6848384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !99, file: !98, line: 769, baseType: !1161, size: 3200, offset: 6848448)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1162)
!1162 = !{!1163}
!1163 = !DISubrange(count: 100)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !99, file: !98, line: 771, baseType: !543, size: 64, offset: 6851648)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !99, file: !98, line: 772, baseType: !1166, size: 192, offset: 6851712)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 192, elements: !129)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !99, file: !98, line: 773, baseType: !543, size: 64, offset: 6851904)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !99, file: !98, line: 776, baseType: !1169, size: 64, offset: 6851968)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !98, line: 776, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !99, file: !98, line: 777, baseType: !1172, size: 64, offset: 6852032)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !98, line: 777, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !99, file: !98, line: 779, baseType: !7, size: 32, offset: 6852096)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !99, file: !98, line: 780, baseType: !457, size: 64, offset: 6852160)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !99, file: !98, line: 781, baseType: !1177, size: 640, offset: 6852224)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 20)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !99, file: !98, line: 783, baseType: !1181, size: 64, offset: 6852864)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !98, line: 783, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !99, file: !98, line: 784, baseType: !1184, size: 64, offset: 6852928)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !98, line: 784, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !99, file: !98, line: 786, baseType: !973, size: 64, offset: 6852992)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !99, file: !98, line: 788, baseType: !543, size: 64, offset: 6853056)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !99, file: !98, line: 789, baseType: !7, size: 32, offset: 6853120)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !99, file: !98, line: 790, baseType: !7, size: 32, offset: 6853152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !99, file: !98, line: 792, baseType: !7, size: 32, offset: 6853184)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !99, file: !98, line: 794, baseType: !463, size: 64, offset: 6853248)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !99, file: !98, line: 795, baseType: !463, size: 64, offset: 6853312)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !99, file: !98, line: 796, baseType: !1194, size: 128, offset: 6853376)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 128, elements: !424)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !99, file: !98, line: 800, baseType: !1196, size: 72, offset: 6853504)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 72, elements: !1197)
!1197 = !{!866}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !99, file: !98, line: 802, baseType: !46, size: 64, offset: 6853632)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !99, file: !98, line: 803, baseType: !46, size: 64, offset: 6853696)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !99, file: !98, line: 804, baseType: !7, size: 32, offset: 6853760)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !99, file: !98, line: 807, baseType: !1202, size: 64, offset: 6853824)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !98, line: 807, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !99, file: !98, line: 810, baseType: !1205, size: 64, offset: 6853888)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !529, !1208, !7, !7, !7, !7, !7, !7}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !99, file: !98, line: 811, baseType: !1210, size: 64, offset: 6853952)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !715, !7, !7, !46, !804}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !99, file: !98, line: 812, baseType: !1214, size: 64, offset: 6854016)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !7, !563, !563}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !99, file: !98, line: 813, baseType: !1218, size: 64, offset: 6854080)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !223, !715, !7, !7, !543}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !99, file: !98, line: 814, baseType: !1218, size: 64, offset: 6854144)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !99, file: !98, line: 815, baseType: !1223, size: 64, offset: 6854208)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !798, !529, !223, !715, !7, !543}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !99, file: !98, line: 816, baseType: !1223, size: 64, offset: 6854272)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !99, file: !98, line: 817, baseType: !1228, size: 64, offset: 6854336)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !529, !223, !715, !7, !7, !543}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !99, file: !98, line: 818, baseType: !1228, size: 64, offset: 6854400)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !99, file: !98, line: 819, baseType: !1233, size: 64, offset: 6854464)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !529, !1208, !7, !7, !7, !7, !7, !7, !7, !7}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !99, file: !98, line: 821, baseType: !1237, size: 64, offset: 6854528)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !98, line: 561, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !98, line: 544, size: 640, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1239, file: !98, line: 546, baseType: !7, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1239, file: !98, line: 547, baseType: !7, size: 32, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1239, file: !98, line: 548, baseType: !7, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1239, file: !98, line: 549, baseType: !7, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1239, file: !98, line: 550, baseType: !7, size: 32, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1239, file: !98, line: 551, baseType: !7, size: 32, offset: 160)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1239, file: !98, line: 552, baseType: !223, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1239, file: !98, line: 553, baseType: !223, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1239, file: !98, line: 554, baseType: !223, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1239, file: !98, line: 555, baseType: !7, size: 32, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1239, file: !98, line: 556, baseType: !7, size: 32, offset: 416)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1239, file: !98, line: 557, baseType: !7, size: 32, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1239, file: !98, line: 558, baseType: !7, size: 32, offset: 480)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1239, file: !98, line: 559, baseType: !7, size: 32, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1239, file: !98, line: 560, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !99, file: !98, line: 822, baseType: !7, size: 32, offset: 6854592)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !99, file: !98, line: 823, baseType: !1259, size: 64, offset: 6854656)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !98, line: 823, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !99, file: !98, line: 824, baseType: !7, size: 32, offset: 6854720)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !99, file: !98, line: 825, baseType: !7, size: 32, offset: 6854752)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !99, file: !98, line: 826, baseType: !7, size: 32, offset: 6854784)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !99, file: !98, line: 827, baseType: !7, size: 32, offset: 6854816)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !99, file: !98, line: 829, baseType: !7, size: 32, offset: 6854848)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !99, file: !98, line: 830, baseType: !7, size: 32, offset: 6854880)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !99, file: !98, line: 831, baseType: !7, size: 32, offset: 6854912)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !99, file: !98, line: 835, baseType: !186, size: 64, offset: 6854976)
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !93, file: !3, line: 86, type: !96)
!1271 = !DILocalVariable(name: "bitdepth_qp_scale", scope: !93, file: !3, line: 88, type: !7)
!1272 = !DILocalVariable(name: "i", scope: !93, file: !3, line: 89, type: !7)
!1273 = !DILocation(line: 0, scope: !93)
!1274 = !DILocation(line: 88, column: 39, scope: !93)
!1275 = !DILocation(line: 88, column: 69, scope: !93)
!1276 = !DILocalVariable(name: "a", arg: 1, scope: !1277, file: !1278, line: 47, type: !7)
!1277 = distinct !DISubprogram(name: "imax", scope: !1278, file: !1278, line: 47, type: !1279, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1278 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!7, !7, !7}
!1281 = !{!1276, !1282}
!1282 = !DILocalVariable(name: "b", arg: 2, scope: !1277, file: !1278, line: 47, type: !7)
!1283 = !DILocation(line: 0, scope: !1277, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 88, column: 27, scope: !93)
!1285 = !DILocation(line: 49, column: 10, scope: !1277, inlinedAt: !1284)
!1286 = !DILocation(line: 93, column: 14, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !93, file: !3, line: 93, column: 7)
!1288 = !DILocation(line: 93, column: 28, scope: !1287)
!1289 = !DILocation(line: 93, column: 7, scope: !93)
!1290 = !DILocation(line: 94, column: 58, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 94, column: 9)
!1292 = !DILocation(line: 94, column: 46, scope: !1291)
!1293 = !DILocation(line: 94, column: 79, scope: !1291)
!1294 = !DILocation(line: 94, column: 39, scope: !1291)
!1295 = !DILocation(line: 94, column: 31, scope: !1291)
!1296 = !DILocation(line: 94, column: 94, scope: !1291)
!1297 = !DILocation(line: 94, column: 9, scope: !1287)
!1298 = !DILocation(line: 95, column: 7, scope: !1291)
!1299 = !DILocation(line: 97, column: 14, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !93, file: !3, line: 97, column: 7)
!1301 = !DILocation(line: 97, column: 28, scope: !1300)
!1302 = !DILocation(line: 97, column: 7, scope: !93)
!1303 = !DILocation(line: 98, column: 58, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 98, column: 9)
!1305 = !DILocation(line: 98, column: 46, scope: !1304)
!1306 = !DILocation(line: 98, column: 79, scope: !1304)
!1307 = !DILocation(line: 98, column: 39, scope: !1304)
!1308 = !DILocation(line: 98, column: 31, scope: !1304)
!1309 = !DILocation(line: 98, column: 94, scope: !1304)
!1310 = !DILocation(line: 98, column: 9, scope: !1300)
!1311 = !DILocation(line: 99, column: 7, scope: !1304)
!1312 = !DILocation(line: 101, column: 17, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 101, column: 3)
!1314 = distinct !DILexicalBlock(scope: !93, file: !3, line: 101, column: 3)
!1315 = !DILocation(line: 101, column: 3, scope: !1314)
!1316 = !DILocation(line: 103, column: 33, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 102, column: 3)
!1318 = !DILocation(line: 103, column: 12, scope: !1317)
!1319 = !DILocation(line: 103, column: 5, scope: !1317)
!1320 = !DILocation(line: 103, column: 29, scope: !1317)
!1321 = !DILocation(line: 104, column: 33, scope: !1317)
!1322 = !DILocation(line: 104, column: 12, scope: !1317)
!1323 = !DILocation(line: 104, column: 5, scope: !1317)
!1324 = !DILocation(line: 104, column: 29, scope: !1317)
!1325 = !DILocation(line: 101, column: 52, scope: !1313)
!1326 = distinct !{!1326, !1315, !1327}
!1327 = !DILocation(line: 105, column: 3, scope: !1314)
!1328 = !DILocation(line: 106, column: 1, scope: !93)
!1329 = !DISubprogram(name: "malloc", scope: !1330, file: !1330, line: 540, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!45, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1334, line: 18, baseType: !1335)
!1334 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1335 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1336 = !DISubprogram(name: "no_mem_exit", scope: !1337, file: !1337, line: 180, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1341 = distinct !DISubprogram(name: "free_qp_matrices", scope: !3, file: !3, line: 108, type: !94, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1342)
!1342 = !{!1343}
!1343 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !1341, file: !3, line: 108, type: !96)
!1344 = !DILocation(line: 0, scope: !1341)
!1345 = !DILocation(line: 110, column: 14, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 110, column: 7)
!1347 = !DILocation(line: 110, column: 28, scope: !1346)
!1348 = !DILocation(line: 110, column: 7, scope: !1341)
!1349 = !DILocation(line: 112, column: 5, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 111, column: 3)
!1351 = !DILocation(line: 113, column: 26, scope: !1350)
!1352 = !DILocation(line: 114, column: 3, scope: !1350)
!1353 = !DILocation(line: 116, column: 14, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 116, column: 7)
!1355 = !DILocation(line: 116, column: 28, scope: !1354)
!1356 = !DILocation(line: 116, column: 7, scope: !1341)
!1357 = !DILocation(line: 118, column: 5, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 117, column: 3)
!1359 = !DILocation(line: 119, column: 26, scope: !1358)
!1360 = !DILocation(line: 120, column: 3, scope: !1358)
!1361 = !DILocation(line: 121, column: 1, scope: !1341)
!1362 = !DISubprogram(name: "free", scope: !1330, file: !1330, line: 555, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !45}
!1365 = distinct !DISubprogram(name: "assign_quant_params", scope: !3, file: !3, line: 137, type: !1366, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !452}
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1365, file: !3, line: 137, type: !452)
!1370 = !DILocalVariable(name: "sps", scope: !1365, file: !3, line: 139, type: !239)
!1371 = !DILocalVariable(name: "pps", scope: !1365, file: !3, line: 140, type: !186)
!1372 = !DILocalVariable(name: "i", scope: !1365, file: !3, line: 141, type: !7)
!1373 = !DILocalVariable(name: "n_ScalingList", scope: !1365, file: !3, line: 142, type: !7)
!1374 = !DILocation(line: 0, scope: !1365)
!1375 = !DILocation(line: 139, column: 46, scope: !1365)
!1376 = !DILocation(line: 140, column: 46, scope: !1365)
!1377 = !DILocation(line: 144, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 144, column: 6)
!1379 = !DILocation(line: 144, column: 7, scope: !1378)
!1380 = !DILocation(line: 0, scope: !1378)
!1381 = !DILocation(line: 144, column: 44, scope: !1378)
!1382 = !DILocation(line: 144, column: 48, scope: !1378)
!1383 = !DILocation(line: 144, column: 6, scope: !1365)
!1384 = !DILocation(line: 151, column: 27, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 150, column: 3)
!1386 = !DILocation(line: 151, column: 45, scope: !1385)
!1387 = !DILocation(line: 151, column: 21, scope: !1385)
!1388 = !DILocation(line: 152, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 152, column: 8)
!1390 = !DILocation(line: 152, column: 8, scope: !1385)
!1391 = !DILocation(line: 147, column: 29, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 146, column: 5)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 146, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 145, column: 3)
!1395 = !DILocation(line: 147, column: 7, scope: !1392)
!1396 = !DILocation(line: 255, column: 3, scope: !1365)
!1397 = !DILocation(line: 152, column: 8, scope: !1389)
!1398 = !DILocation(line: 154, column: 17, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 154, column: 7)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 154, column: 7)
!1401 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 153, column: 5)
!1402 = !DILocation(line: 158, column: 15, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 158, column: 14)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 157, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 156, column: 12)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 155, column: 7)
!1407 = !DILocation(line: 158, column: 14, scope: !1404)
!1408 = !DILocation(line: 169, column: 16, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 169, column: 16)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 168, column: 11)
!1411 = !DILocation(line: 0, scope: !1403)
!1412 = !DILocation(line: 169, column: 16, scope: !1410)
!1413 = !DILocation(line: 0, scope: !1405)
!1414 = !DILocation(line: 165, column: 39, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 162, column: 21)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 160, column: 16)
!1417 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 159, column: 11)
!1418 = !DILocation(line: 154, column: 7, scope: !1400)
!1419 = !DILocation(line: 177, column: 14, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 176, column: 9)
!1421 = !DILocation(line: 179, column: 16, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 178, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 177, column: 14)
!1424 = !DILocation(line: 182, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 181, column: 21)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 179, column: 16)
!1427 = !DILocation(line: 184, column: 59, scope: !1425)
!1428 = !DILocation(line: 184, column: 39, scope: !1425)
!1429 = !DILocation(line: 188, column: 53, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 188, column: 16)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 187, column: 11)
!1432 = !DILocation(line: 188, column: 16, scope: !1430)
!1433 = !DILocation(line: 188, column: 16, scope: !1431)
!1434 = !DILocation(line: 189, column: 45, scope: !1430)
!1435 = !DILocation(line: 191, column: 39, scope: !1430)
!1436 = !DILocation(line: 154, column: 34, scope: !1399)
!1437 = distinct !{!1437, !1418, !1438, !1439}
!1438 = !DILocation(line: 194, column: 7, scope: !1400)
!1439 = !{!"llvm.loop.peeled.count", i32 6}
!1440 = !DILocation(line: 197, column: 13, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 197, column: 8)
!1442 = !DILocation(line: 197, column: 8, scope: !1441)
!1443 = !DILocation(line: 197, column: 8, scope: !1385)
!1444 = !DILocation(line: 199, column: 17, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 199, column: 7)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 199, column: 7)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 198, column: 5)
!1448 = !DILocation(line: 203, column: 15, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 203, column: 14)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 202, column: 9)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 201, column: 12)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 200, column: 7)
!1453 = !DILocation(line: 203, column: 14, scope: !1450)
!1454 = !DILocation(line: 220, column: 16, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 220, column: 16)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 219, column: 11)
!1457 = !DILocation(line: 207, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 207, column: 18)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 206, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 205, column: 17)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 204, column: 11)
!1462 = !DILocation(line: 207, column: 19, scope: !1458)
!1463 = !DILocation(line: 207, column: 18, scope: !1459)
!1464 = !DILocation(line: 0, scope: !1449)
!1465 = !DILocation(line: 220, column: 16, scope: !1456)
!1466 = !DILocation(line: 216, column: 39, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 210, column: 22)
!1468 = !DILocation(line: 0, scope: !1451)
!1469 = !DILocation(line: 212, column: 24, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 212, column: 18)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 211, column: 13)
!1472 = !DILocation(line: 212, column: 19, scope: !1470)
!1473 = !DILocation(line: 212, column: 18, scope: !1471)
!1474 = !DILocation(line: 199, column: 34, scope: !1445)
!1475 = !DILocation(line: 199, column: 7, scope: !1446)
!1476 = !DILocation(line: 228, column: 14, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 227, column: 9)
!1478 = !DILocation(line: 230, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 229, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 228, column: 14)
!1481 = !DILocation(line: 232, column: 24, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 232, column: 18)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 231, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 230, column: 17)
!1485 = !DILocation(line: 232, column: 19, scope: !1482)
!1486 = !DILocation(line: 232, column: 18, scope: !1483)
!1487 = !DILocation(line: 237, column: 24, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 237, column: 18)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 236, column: 13)
!1490 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 235, column: 21)
!1491 = !DILocation(line: 237, column: 19, scope: !1488)
!1492 = !DILocation(line: 237, column: 18, scope: !1489)
!1493 = !DILocation(line: 241, column: 59, scope: !1490)
!1494 = !DILocation(line: 241, column: 39, scope: !1490)
!1495 = !DILocation(line: 245, column: 53, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 245, column: 16)
!1497 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 244, column: 11)
!1498 = !DILocation(line: 245, column: 16, scope: !1496)
!1499 = !DILocation(line: 245, column: 16, scope: !1497)
!1500 = !DILocation(line: 246, column: 45, scope: !1496)
!1501 = !DILocation(line: 248, column: 39, scope: !1496)
!1502 = distinct !{!1502, !1475, !1503, !1439}
!1503 = !DILocation(line: 251, column: 7, scope: !1446)
!1504 = !DILocation(line: 256, column: 11, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 256, column: 6)
!1506 = !DILocation(line: 256, column: 6, scope: !1505)
!1507 = !DILocation(line: 256, column: 6, scope: !1365)
!1508 = !DILocation(line: 257, column: 5, scope: !1505)
!1509 = !DILocation(line: 258, column: 1, scope: !1365)
!1510 = distinct !DISubprogram(name: "CalculateQuant4x4Param", scope: !3, file: !3, line: 295, type: !1366, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1511 = !{!1512, !1513, !1514, !1518, !1521, !1522, !1523, !1524, !1525}
!1512 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1510, file: !3, line: 295, type: !452)
!1513 = !DILocalVariable(name: "k", scope: !1510, file: !3, line: 297, type: !7)
!1514 = !DILocalVariable(name: "p_dequant_coef", scope: !1510, file: !3, line: 298, type: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, elements: !1517)
!1517 = !{!79, !79}
!1518 = !DILocalVariable(name: "InvLevelScale4x4_Intra_0", scope: !1510, file: !3, line: 299, type: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !1517)
!1521 = !DILocalVariable(name: "InvLevelScale4x4_Intra_1", scope: !1510, file: !3, line: 300, type: !1519)
!1522 = !DILocalVariable(name: "InvLevelScale4x4_Intra_2", scope: !1510, file: !3, line: 301, type: !1519)
!1523 = !DILocalVariable(name: "InvLevelScale4x4_Inter_0", scope: !1510, file: !3, line: 302, type: !1519)
!1524 = !DILocalVariable(name: "InvLevelScale4x4_Inter_1", scope: !1510, file: !3, line: 303, type: !1519)
!1525 = !DILocalVariable(name: "InvLevelScale4x4_Inter_2", scope: !1510, file: !3, line: 304, type: !1519)
!1526 = !DILocation(line: 0, scope: !1510)
!1527 = !DILocation(line: 299, column: 55, scope: !1510)
!1528 = !DILocation(line: 300, column: 44, scope: !1510)
!1529 = !DILocation(line: 301, column: 44, scope: !1510)
!1530 = !DILocation(line: 302, column: 55, scope: !1510)
!1531 = !DILocation(line: 303, column: 44, scope: !1510)
!1532 = !DILocation(line: 304, column: 44, scope: !1510)
!1533 = !DILocation(line: 307, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 307, column: 3)
!1535 = !DILocation(line: 309, column: 45, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 308, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 307, column: 3)
!1538 = !DILocation(line: 309, column: 68, scope: !1536)
!1539 = !DILocalVariable(name: "j", scope: !1540, file: !3, line: 262, type: !7)
!1540 = distinct !DISubprogram(name: "set_dequant4x4", scope: !3, file: !3, line: 260, type: !1541, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1547)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1543, !1545, !46}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !775)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !775)
!1547 = !{!1548, !1549, !1550, !1539}
!1548 = !DILocalVariable(name: "InvLevelScale4x4", arg: 1, scope: !1540, file: !3, line: 260, type: !1543)
!1549 = !DILocalVariable(name: "dequant", arg: 2, scope: !1540, file: !3, line: 260, type: !1545)
!1550 = !DILocalVariable(name: "qmatrix", arg: 3, scope: !1540, file: !3, line: 260, type: !46)
!1551 = !DILocation(line: 0, scope: !1540, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 309, column: 5, scope: !1536)
!1553 = !DILocation(line: 265, column: 34, scope: !1554, inlinedAt: !1552)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 264, column: 3)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 263, column: 3)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 263, column: 3)
!1557 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1552)
!1558 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1552)
!1559 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1552)
!1560 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1552)
!1561 = !DILocation(line: 266, column: 47, scope: !1554, inlinedAt: !1552)
!1562 = !DILocation(line: 266, column: 34, scope: !1554, inlinedAt: !1552)
!1563 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1552)
!1564 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1552)
!1565 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1552)
!1566 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1552)
!1567 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1552)
!1568 = !DILocation(line: 267, column: 47, scope: !1554, inlinedAt: !1552)
!1569 = !DILocation(line: 267, column: 34, scope: !1554, inlinedAt: !1552)
!1570 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1552)
!1571 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1552)
!1572 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1552)
!1573 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1552)
!1574 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1552)
!1575 = !DILocation(line: 268, column: 44, scope: !1554, inlinedAt: !1552)
!1576 = !DILocation(line: 268, column: 47, scope: !1554, inlinedAt: !1552)
!1577 = !DILocation(line: 268, column: 34, scope: !1554, inlinedAt: !1552)
!1578 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1552)
!1579 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1552)
!1580 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1552)
!1581 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1552)
!1582 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1552)
!1583 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1552)
!1584 = !DILocation(line: 310, column: 45, scope: !1536)
!1585 = !DILocation(line: 310, column: 68, scope: !1536)
!1586 = !DILocation(line: 0, scope: !1540, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 310, column: 5, scope: !1536)
!1588 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1587)
!1589 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1587)
!1590 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1587)
!1591 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1587)
!1592 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1587)
!1593 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1587)
!1594 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1587)
!1595 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1587)
!1596 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1587)
!1597 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1587)
!1598 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1587)
!1599 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1587)
!1600 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1587)
!1601 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1587)
!1602 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1587)
!1603 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1587)
!1604 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1587)
!1605 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1587)
!1606 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1587)
!1607 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1587)
!1608 = !DILocation(line: 311, column: 45, scope: !1536)
!1609 = !DILocation(line: 311, column: 68, scope: !1536)
!1610 = !DILocation(line: 0, scope: !1540, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 311, column: 5, scope: !1536)
!1612 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1611)
!1613 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1611)
!1614 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1611)
!1615 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1611)
!1616 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1611)
!1617 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1611)
!1618 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1611)
!1619 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1611)
!1620 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1611)
!1621 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1611)
!1622 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1611)
!1623 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1611)
!1624 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1611)
!1625 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1611)
!1626 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1611)
!1627 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1611)
!1628 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1611)
!1629 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1611)
!1630 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1611)
!1631 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1611)
!1632 = !DILocation(line: 312, column: 45, scope: !1536)
!1633 = !DILocation(line: 312, column: 68, scope: !1536)
!1634 = !DILocation(line: 0, scope: !1540, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 312, column: 5, scope: !1536)
!1636 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1635)
!1637 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1635)
!1638 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1635)
!1639 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1635)
!1640 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1635)
!1641 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1635)
!1642 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1635)
!1643 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1635)
!1644 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1635)
!1645 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1635)
!1646 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1635)
!1647 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1635)
!1648 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1635)
!1649 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1635)
!1650 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1635)
!1651 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1635)
!1652 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1635)
!1653 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1635)
!1654 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1635)
!1655 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1635)
!1656 = !DILocation(line: 313, column: 45, scope: !1536)
!1657 = !DILocation(line: 313, column: 68, scope: !1536)
!1658 = !DILocation(line: 0, scope: !1540, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 313, column: 5, scope: !1536)
!1660 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1659)
!1661 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1659)
!1662 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1659)
!1663 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1659)
!1664 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1659)
!1665 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1659)
!1666 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1659)
!1667 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1659)
!1668 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1659)
!1669 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1659)
!1670 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1659)
!1671 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1659)
!1672 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1659)
!1673 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1659)
!1674 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1659)
!1675 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1659)
!1676 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1659)
!1677 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1659)
!1678 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1659)
!1679 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1659)
!1680 = !DILocation(line: 314, column: 45, scope: !1536)
!1681 = !DILocation(line: 314, column: 64, scope: !1536)
!1682 = !DILocation(line: 314, column: 68, scope: !1536)
!1683 = !DILocation(line: 0, scope: !1540, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 314, column: 5, scope: !1536)
!1685 = !DILocation(line: 265, column: 62, scope: !1554, inlinedAt: !1684)
!1686 = !DILocation(line: 265, column: 54, scope: !1554, inlinedAt: !1684)
!1687 = !DILocation(line: 265, column: 52, scope: !1554, inlinedAt: !1684)
!1688 = !DILocation(line: 265, column: 32, scope: !1554, inlinedAt: !1684)
!1689 = !DILocation(line: 266, column: 62, scope: !1554, inlinedAt: !1684)
!1690 = !DILocation(line: 266, column: 54, scope: !1554, inlinedAt: !1684)
!1691 = !DILocation(line: 266, column: 52, scope: !1554, inlinedAt: !1684)
!1692 = !DILocation(line: 266, column: 27, scope: !1554, inlinedAt: !1684)
!1693 = !DILocation(line: 266, column: 32, scope: !1554, inlinedAt: !1684)
!1694 = !DILocation(line: 267, column: 62, scope: !1554, inlinedAt: !1684)
!1695 = !DILocation(line: 267, column: 54, scope: !1554, inlinedAt: !1684)
!1696 = !DILocation(line: 267, column: 52, scope: !1554, inlinedAt: !1684)
!1697 = !DILocation(line: 267, column: 27, scope: !1554, inlinedAt: !1684)
!1698 = !DILocation(line: 267, column: 32, scope: !1554, inlinedAt: !1684)
!1699 = !DILocation(line: 268, column: 62, scope: !1554, inlinedAt: !1684)
!1700 = !DILocation(line: 268, column: 54, scope: !1554, inlinedAt: !1684)
!1701 = !DILocation(line: 268, column: 52, scope: !1554, inlinedAt: !1684)
!1702 = !DILocation(line: 268, column: 24, scope: !1554, inlinedAt: !1684)
!1703 = !DILocation(line: 268, column: 27, scope: !1554, inlinedAt: !1684)
!1704 = !DILocation(line: 268, column: 32, scope: !1554, inlinedAt: !1684)
!1705 = !DILocation(line: 307, column: 18, scope: !1537)
!1706 = !DILocation(line: 307, column: 13, scope: !1537)
!1707 = distinct !{!1707, !1533, !1708}
!1708 = !DILocation(line: 315, column: 3, scope: !1534)
!1709 = !DILocation(line: 316, column: 1, scope: !1510)
!1710 = distinct !DISubprogram(name: "CalculateQuant8x8Param", scope: !3, file: !3, line: 325, type: !1366, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1711)
!1711 = !{!1712, !1713, !1714, !1718, !1721, !1722, !1723, !1724, !1725}
!1712 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1710, file: !3, line: 325, type: !452)
!1713 = !DILocalVariable(name: "k", scope: !1710, file: !3, line: 327, type: !7)
!1714 = !DILocalVariable(name: "p_dequant_coef", scope: !1710, file: !3, line: 328, type: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 2048, elements: !1717)
!1717 = !{!84, !84}
!1718 = !DILocalVariable(name: "InvLevelScale8x8_Intra_0", scope: !1710, file: !3, line: 329, type: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !1717)
!1721 = !DILocalVariable(name: "InvLevelScale8x8_Intra_1", scope: !1710, file: !3, line: 330, type: !1719)
!1722 = !DILocalVariable(name: "InvLevelScale8x8_Intra_2", scope: !1710, file: !3, line: 331, type: !1719)
!1723 = !DILocalVariable(name: "InvLevelScale8x8_Inter_0", scope: !1710, file: !3, line: 332, type: !1719)
!1724 = !DILocalVariable(name: "InvLevelScale8x8_Inter_1", scope: !1710, file: !3, line: 333, type: !1719)
!1725 = !DILocalVariable(name: "InvLevelScale8x8_Inter_2", scope: !1710, file: !3, line: 334, type: !1719)
!1726 = !DILocation(line: 0, scope: !1710)
!1727 = !DILocation(line: 329, column: 55, scope: !1710)
!1728 = !DILocation(line: 332, column: 55, scope: !1710)
!1729 = !DILocation(line: 338, column: 45, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 337, column: 3)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 336, column: 3)
!1732 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 336, column: 3)
!1733 = !DILocation(line: 338, column: 68, scope: !1730)
!1734 = !DILocation(line: 338, column: 5, scope: !1730)
!1735 = !DILocation(line: 339, column: 45, scope: !1730)
!1736 = !DILocation(line: 339, column: 68, scope: !1730)
!1737 = !DILocation(line: 339, column: 5, scope: !1730)
!1738 = !DILocation(line: 343, column: 18, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 343, column: 7)
!1740 = !DILocation(line: 343, column: 30, scope: !1739)
!1741 = !DILocation(line: 343, column: 48, scope: !1739)
!1742 = !DILocation(line: 343, column: 7, scope: !1710)
!1743 = !DILocation(line: 334, column: 44, scope: !1710)
!1744 = !DILocation(line: 331, column: 44, scope: !1710)
!1745 = !DILocation(line: 333, column: 44, scope: !1710)
!1746 = !DILocation(line: 330, column: 44, scope: !1710)
!1747 = !DILocation(line: 347, column: 47, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 346, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 345, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 345, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 344, column: 3)
!1752 = !DILocation(line: 347, column: 70, scope: !1748)
!1753 = !DILocation(line: 347, column: 7, scope: !1748)
!1754 = !DILocation(line: 348, column: 47, scope: !1748)
!1755 = !DILocation(line: 348, column: 70, scope: !1748)
!1756 = !DILocation(line: 348, column: 7, scope: !1748)
!1757 = !DILocation(line: 349, column: 47, scope: !1748)
!1758 = !DILocation(line: 349, column: 70, scope: !1748)
!1759 = !DILocation(line: 349, column: 7, scope: !1748)
!1760 = !DILocation(line: 350, column: 47, scope: !1748)
!1761 = !DILocation(line: 350, column: 70, scope: !1748)
!1762 = !DILocation(line: 350, column: 7, scope: !1748)
!1763 = !DILocation(line: 353, column: 1, scope: !1710)
!1764 = distinct !DISubprogram(name: "set_dequant8x8", scope: !3, file: !3, line: 272, type: !1765, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1771)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !1767, !1769, !46}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !216)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !216)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DILocalVariable(name: "InvLevelScale8x8", arg: 1, scope: !1764, file: !3, line: 272, type: !1767)
!1773 = !DILocalVariable(name: "dequant", arg: 2, scope: !1764, file: !3, line: 272, type: !1769)
!1774 = !DILocalVariable(name: "qmatrix", arg: 3, scope: !1764, file: !3, line: 272, type: !46)
!1775 = !DILocalVariable(name: "j", scope: !1764, file: !3, line: 274, type: !7)
!1776 = !DILocation(line: 0, scope: !1764)
!1777 = !DILocation(line: 277, column: 34, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 276, column: 3)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 275, column: 3)
!1780 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 275, column: 3)
!1781 = !DILocation(line: 277, column: 62, scope: !1778)
!1782 = !DILocation(line: 277, column: 54, scope: !1778)
!1783 = !DILocation(line: 277, column: 52, scope: !1778)
!1784 = !DILocation(line: 277, column: 32, scope: !1778)
!1785 = !DILocation(line: 278, column: 47, scope: !1778)
!1786 = !DILocation(line: 278, column: 34, scope: !1778)
!1787 = !DILocation(line: 278, column: 62, scope: !1778)
!1788 = !DILocation(line: 278, column: 54, scope: !1778)
!1789 = !DILocation(line: 278, column: 52, scope: !1778)
!1790 = !DILocation(line: 278, column: 27, scope: !1778)
!1791 = !DILocation(line: 278, column: 32, scope: !1778)
!1792 = !DILocation(line: 279, column: 47, scope: !1778)
!1793 = !DILocation(line: 279, column: 34, scope: !1778)
!1794 = !DILocation(line: 279, column: 62, scope: !1778)
!1795 = !DILocation(line: 279, column: 54, scope: !1778)
!1796 = !DILocation(line: 279, column: 52, scope: !1778)
!1797 = !DILocation(line: 279, column: 27, scope: !1778)
!1798 = !DILocation(line: 279, column: 32, scope: !1778)
!1799 = !DILocation(line: 280, column: 47, scope: !1778)
!1800 = !DILocation(line: 280, column: 34, scope: !1778)
!1801 = !DILocation(line: 280, column: 62, scope: !1778)
!1802 = !DILocation(line: 280, column: 54, scope: !1778)
!1803 = !DILocation(line: 280, column: 52, scope: !1778)
!1804 = !DILocation(line: 280, column: 27, scope: !1778)
!1805 = !DILocation(line: 280, column: 32, scope: !1778)
!1806 = !DILocation(line: 281, column: 47, scope: !1778)
!1807 = !DILocation(line: 281, column: 34, scope: !1778)
!1808 = !DILocation(line: 281, column: 62, scope: !1778)
!1809 = !DILocation(line: 281, column: 54, scope: !1778)
!1810 = !DILocation(line: 281, column: 52, scope: !1778)
!1811 = !DILocation(line: 281, column: 27, scope: !1778)
!1812 = !DILocation(line: 281, column: 32, scope: !1778)
!1813 = !DILocation(line: 282, column: 47, scope: !1778)
!1814 = !DILocation(line: 282, column: 34, scope: !1778)
!1815 = !DILocation(line: 282, column: 62, scope: !1778)
!1816 = !DILocation(line: 282, column: 54, scope: !1778)
!1817 = !DILocation(line: 282, column: 52, scope: !1778)
!1818 = !DILocation(line: 282, column: 27, scope: !1778)
!1819 = !DILocation(line: 282, column: 32, scope: !1778)
!1820 = !DILocation(line: 283, column: 47, scope: !1778)
!1821 = !DILocation(line: 283, column: 34, scope: !1778)
!1822 = !DILocation(line: 283, column: 62, scope: !1778)
!1823 = !DILocation(line: 283, column: 54, scope: !1778)
!1824 = !DILocation(line: 283, column: 52, scope: !1778)
!1825 = !DILocation(line: 283, column: 27, scope: !1778)
!1826 = !DILocation(line: 283, column: 32, scope: !1778)
!1827 = !DILocation(line: 284, column: 44, scope: !1778)
!1828 = !DILocation(line: 284, column: 47, scope: !1778)
!1829 = !DILocation(line: 284, column: 34, scope: !1778)
!1830 = !DILocation(line: 284, column: 62, scope: !1778)
!1831 = !DILocation(line: 284, column: 54, scope: !1778)
!1832 = !DILocation(line: 284, column: 52, scope: !1778)
!1833 = !DILocation(line: 284, column: 24, scope: !1778)
!1834 = !DILocation(line: 284, column: 27, scope: !1778)
!1835 = !DILocation(line: 284, column: 32, scope: !1778)
!1836 = !DILocation(line: 286, column: 1, scope: !1764)
