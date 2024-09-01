; ModuleID = 'ldecod_src/transform8x8.c'
source_filename = "ldecod_src/transform8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @itrans8x8(ptr nocapture noundef readonly %currMB, i32 noundef %pl, i32 noundef %ioff, i32 noundef %joff) local_unnamed_addr #0 !dbg !56 {
entry:
    #dbg_value(ptr %currMB, !1239, !DIExpression(), !1245)
    #dbg_value(i32 %pl, !1240, !DIExpression(), !1245)
    #dbg_value(i32 %ioff, !1241, !DIExpression(), !1245)
    #dbg_value(i32 %joff, !1242, !DIExpression(), !1245)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1246
    #dbg_value(ptr %0, !1243, !DIExpression(), !1245)
  %mb_rres = getelementptr inbounds i8, ptr %0, i64 1264, !dbg !1247
  %1 = load ptr, ptr %mb_rres, align 8, !dbg !1247
  %idxprom = zext i32 %pl to i64, !dbg !1248
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1248
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1248
    #dbg_value(ptr %2, !1244, !DIExpression(), !1245)
  %is_lossless = getelementptr inbounds i8, ptr %currMB, i64 92, !dbg !1249
  %3 = load i32, ptr %is_lossless, align 4, !dbg !1249
  %cmp = icmp eq i32 %3, 1, !dbg !1251
  br i1 %cmp, label %if.then, label %if.else, !dbg !1252

if.then:                                          ; preds = %entry
  %idxprom1 = sext i32 %joff to i64, !dbg !1253
  %arrayidx2 = getelementptr inbounds ptr, ptr %2, i64 %idxprom1, !dbg !1253
  %mb_rec = getelementptr inbounds i8, ptr %0, i64 1256, !dbg !1255
  %4 = load ptr, ptr %mb_rec, align 8, !dbg !1255
  %arrayidx4 = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !1256
  %5 = load ptr, ptr %arrayidx4, align 8, !dbg !1256
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 %idxprom1, !dbg !1256
  %mb_pred = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !1257
  %6 = load ptr, ptr %mb_pred, align 8, !dbg !1257
  %arrayidx8 = getelementptr inbounds ptr, ptr %6, i64 %idxprom, !dbg !1258
  %7 = load ptr, ptr %arrayidx8, align 8, !dbg !1258
  %arrayidx10 = getelementptr inbounds ptr, ptr %7, i64 %idxprom1, !dbg !1258
  %p_Vid = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1259
  %8 = load ptr, ptr %p_Vid, align 8, !dbg !1259
  %max_pel_value_comp = getelementptr inbounds i8, ptr %8, i64 849072, !dbg !1260
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom, !dbg !1261
  %9 = load i32, ptr %arrayidx12, align 4, !dbg !1261
    #dbg_value(ptr %arrayidx2, !1262, !DIExpression(), !1273)
    #dbg_value(ptr %arrayidx6, !1267, !DIExpression(), !1273)
    #dbg_value(ptr %arrayidx10, !1268, !DIExpression(), !1273)
    #dbg_value(i32 %9, !1269, !DIExpression(), !1273)
    #dbg_value(i32 %ioff, !1270, !DIExpression(), !1273)
    #dbg_value(i32 0, !1272, !DIExpression(), !1273)
    #dbg_value(i32 0, !1272, !DIExpression(), !1273)
    #dbg_value(ptr %arrayidx2, !1262, !DIExpression(), !1273)
    #dbg_value(ptr %arrayidx6, !1267, !DIExpression(), !1273)
    #dbg_value(ptr %arrayidx10, !1268, !DIExpression(), !1273)
  %10 = sext i32 %ioff to i64, !dbg !1275
  %indvars.iv.next.i = add nsw i64 %10, 1
  %indvars.iv.next.1.i = add nsw i64 %10, 2
  %indvars.iv.next.2.i = add nsw i64 %10, 3
  %indvars.iv.next.3.i = add nsw i64 %10, 4
  %indvars.iv.next.4.i = add nsw i64 %10, 5
  %indvars.iv.next.5.i = add nsw i64 %10, 6
  %indvars.iv.next.6.i = add nsw i64 %10, 7
  br label %for.end.i, !dbg !1275

for.end.i:                                        ; preds = %for.end.i, %if.then
  %j.030.i = phi i32 [ 0, %if.then ], [ %inc15.i, %for.end.i ]
  %m7.addr.029.i = phi ptr [ %arrayidx2, %if.then ], [ %incdec.ptr12.i, %for.end.i ]
  %mb_rec.addr.028.i = phi ptr [ %arrayidx6, %if.then ], [ %incdec.ptr.i, %for.end.i ]
  %mpr.addr.027.i = phi ptr [ %arrayidx10, %if.then ], [ %incdec.ptr13.i, %for.end.i ]
    #dbg_value(i32 %j.030.i, !1272, !DIExpression(), !1273)
    #dbg_value(ptr %m7.addr.029.i, !1262, !DIExpression(), !1273)
    #dbg_value(ptr %mb_rec.addr.028.i, !1267, !DIExpression(), !1273)
    #dbg_value(ptr %mpr.addr.027.i, !1268, !DIExpression(), !1273)
    #dbg_value(i64 %10, !1271, !DIExpression(), !1273)
  %11 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.i = getelementptr inbounds i32, ptr %11, i64 %10, !dbg !1282
  %12 = load i32, ptr %arrayidx.i, align 4, !dbg !1282
  %13 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.i = getelementptr inbounds i16, ptr %13, i64 %10, !dbg !1284
  %14 = load i16, ptr %arrayidx5.i, align 2, !dbg !1284
  %conv6.i = zext i16 %14 to i32, !dbg !1285
  %add7.i = add i32 %12, %conv6.i, !dbg !1286
    #dbg_value(i32 %9, !1287, !DIExpression(), !1294)
    #dbg_value(i32 %add7.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.i, !1296, !DIExpression(), !1300)
    #dbg_value(i32 0, !1299, !DIExpression(), !1300)
  %cond.i.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.i, !1303, !DIExpression(), !1307)
    #dbg_value(i32 %9, !1306, !DIExpression(), !1307)
  %cond.i4.i.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.i, !1293, !DIExpression(), !1294)
  %conv9.i = trunc i32 %cond.i4.i.i to i16, !dbg !1310
  %15 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.i = getelementptr inbounds i16, ptr %15, i64 %10, !dbg !1312
  store i16 %conv9.i, ptr %arrayidx11.i, align 2, !dbg !1313
    #dbg_value(i64 %10, !1271, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1273)
    #dbg_value(i64 %indvars.iv.next.i, !1271, !DIExpression(), !1273)
  %16 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.1.i = getelementptr inbounds i32, ptr %16, i64 %indvars.iv.next.i, !dbg !1282
  %17 = load i32, ptr %arrayidx.1.i, align 4, !dbg !1282
  %18 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.1.i = getelementptr inbounds i16, ptr %18, i64 %indvars.iv.next.i, !dbg !1284
  %19 = load i16, ptr %arrayidx5.1.i, align 2, !dbg !1284
  %conv6.1.i = zext i16 %19 to i32, !dbg !1285
  %add7.1.i = add i32 %17, %conv6.1.i, !dbg !1286
    #dbg_value(i32 %add7.1.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.1.i, !1296, !DIExpression(), !1300)
  %cond.i.i.1.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.1.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.1.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.1.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.1.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.1.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.1.i, !1293, !DIExpression(), !1294)
  %conv9.1.i = trunc i32 %cond.i4.i.1.i to i16, !dbg !1310
  %20 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.1.i = getelementptr inbounds i16, ptr %20, i64 %indvars.iv.next.i, !dbg !1312
  store i16 %conv9.1.i, ptr %arrayidx11.1.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.1.i, !1271, !DIExpression(), !1273)
  %21 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.2.i = getelementptr inbounds i32, ptr %21, i64 %indvars.iv.next.1.i, !dbg !1282
  %22 = load i32, ptr %arrayidx.2.i, align 4, !dbg !1282
  %23 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.2.i = getelementptr inbounds i16, ptr %23, i64 %indvars.iv.next.1.i, !dbg !1284
  %24 = load i16, ptr %arrayidx5.2.i, align 2, !dbg !1284
  %conv6.2.i = zext i16 %24 to i32, !dbg !1285
  %add7.2.i = add i32 %22, %conv6.2.i, !dbg !1286
    #dbg_value(i32 %add7.2.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.2.i, !1296, !DIExpression(), !1300)
  %cond.i.i.2.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.2.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.2.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.2.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.2.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.2.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.2.i, !1293, !DIExpression(), !1294)
  %conv9.2.i = trunc i32 %cond.i4.i.2.i to i16, !dbg !1310
  %25 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.2.i = getelementptr inbounds i16, ptr %25, i64 %indvars.iv.next.1.i, !dbg !1312
  store i16 %conv9.2.i, ptr %arrayidx11.2.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.2.i, !1271, !DIExpression(), !1273)
  %26 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.3.i = getelementptr inbounds i32, ptr %26, i64 %indvars.iv.next.2.i, !dbg !1282
  %27 = load i32, ptr %arrayidx.3.i, align 4, !dbg !1282
  %28 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.3.i = getelementptr inbounds i16, ptr %28, i64 %indvars.iv.next.2.i, !dbg !1284
  %29 = load i16, ptr %arrayidx5.3.i, align 2, !dbg !1284
  %conv6.3.i = zext i16 %29 to i32, !dbg !1285
  %add7.3.i = add i32 %27, %conv6.3.i, !dbg !1286
    #dbg_value(i32 %add7.3.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.3.i, !1296, !DIExpression(), !1300)
  %cond.i.i.3.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.3.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.3.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.3.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.3.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.3.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.3.i, !1293, !DIExpression(), !1294)
  %conv9.3.i = trunc i32 %cond.i4.i.3.i to i16, !dbg !1310
  %30 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.3.i = getelementptr inbounds i16, ptr %30, i64 %indvars.iv.next.2.i, !dbg !1312
  store i16 %conv9.3.i, ptr %arrayidx11.3.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.3.i, !1271, !DIExpression(), !1273)
  %31 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.4.i = getelementptr inbounds i32, ptr %31, i64 %indvars.iv.next.3.i, !dbg !1282
  %32 = load i32, ptr %arrayidx.4.i, align 4, !dbg !1282
  %33 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.4.i = getelementptr inbounds i16, ptr %33, i64 %indvars.iv.next.3.i, !dbg !1284
  %34 = load i16, ptr %arrayidx5.4.i, align 2, !dbg !1284
  %conv6.4.i = zext i16 %34 to i32, !dbg !1285
  %add7.4.i = add i32 %32, %conv6.4.i, !dbg !1286
    #dbg_value(i32 %add7.4.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.4.i, !1296, !DIExpression(), !1300)
  %cond.i.i.4.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.4.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.4.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.4.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.4.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.4.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.4.i, !1293, !DIExpression(), !1294)
  %conv9.4.i = trunc i32 %cond.i4.i.4.i to i16, !dbg !1310
  %35 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.4.i = getelementptr inbounds i16, ptr %35, i64 %indvars.iv.next.3.i, !dbg !1312
  store i16 %conv9.4.i, ptr %arrayidx11.4.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.4.i, !1271, !DIExpression(), !1273)
  %36 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.5.i = getelementptr inbounds i32, ptr %36, i64 %indvars.iv.next.4.i, !dbg !1282
  %37 = load i32, ptr %arrayidx.5.i, align 4, !dbg !1282
  %38 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.5.i = getelementptr inbounds i16, ptr %38, i64 %indvars.iv.next.4.i, !dbg !1284
  %39 = load i16, ptr %arrayidx5.5.i, align 2, !dbg !1284
  %conv6.5.i = zext i16 %39 to i32, !dbg !1285
  %add7.5.i = add i32 %37, %conv6.5.i, !dbg !1286
    #dbg_value(i32 %add7.5.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.5.i, !1296, !DIExpression(), !1300)
  %cond.i.i.5.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.5.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.5.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.5.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.5.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.5.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.5.i, !1293, !DIExpression(), !1294)
  %conv9.5.i = trunc i32 %cond.i4.i.5.i to i16, !dbg !1310
  %40 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.5.i = getelementptr inbounds i16, ptr %40, i64 %indvars.iv.next.4.i, !dbg !1312
  store i16 %conv9.5.i, ptr %arrayidx11.5.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.5.i, !1271, !DIExpression(), !1273)
  %41 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.6.i = getelementptr inbounds i32, ptr %41, i64 %indvars.iv.next.5.i, !dbg !1282
  %42 = load i32, ptr %arrayidx.6.i, align 4, !dbg !1282
  %43 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.6.i = getelementptr inbounds i16, ptr %43, i64 %indvars.iv.next.5.i, !dbg !1284
  %44 = load i16, ptr %arrayidx5.6.i, align 2, !dbg !1284
  %conv6.6.i = zext i16 %44 to i32, !dbg !1285
  %add7.6.i = add i32 %42, %conv6.6.i, !dbg !1286
    #dbg_value(i32 %add7.6.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.6.i, !1296, !DIExpression(), !1300)
  %cond.i.i.6.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.6.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.6.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.6.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.6.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.6.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.6.i, !1293, !DIExpression(), !1294)
  %conv9.6.i = trunc i32 %cond.i4.i.6.i to i16, !dbg !1310
  %45 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.6.i = getelementptr inbounds i16, ptr %45, i64 %indvars.iv.next.5.i, !dbg !1312
  store i16 %conv9.6.i, ptr %arrayidx11.6.i, align 2, !dbg !1313
    #dbg_value(i64 %indvars.iv.next.6.i, !1271, !DIExpression(), !1273)
  %46 = load ptr, ptr %m7.addr.029.i, align 8, !dbg !1277
  %arrayidx.7.i = getelementptr inbounds i32, ptr %46, i64 %indvars.iv.next.6.i, !dbg !1282
  %47 = load i32, ptr %arrayidx.7.i, align 4, !dbg !1282
  %48 = load ptr, ptr %mpr.addr.027.i, align 8, !dbg !1283
  %arrayidx5.7.i = getelementptr inbounds i16, ptr %48, i64 %indvars.iv.next.6.i, !dbg !1284
  %49 = load i16, ptr %arrayidx5.7.i, align 2, !dbg !1284
  %conv6.7.i = zext i16 %49 to i32, !dbg !1285
  %add7.7.i = add i32 %47, %conv6.7.i, !dbg !1286
    #dbg_value(i32 %add7.7.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %add7.7.i, !1296, !DIExpression(), !1300)
  %cond.i.i.7.i = tail call noundef i32 @llvm.smax.i32(i32 %add7.7.i, i32 0), !dbg !1302
    #dbg_value(i32 %cond.i.i.7.i, !1293, !DIExpression(), !1294)
    #dbg_value(i32 %cond.i.i.7.i, !1303, !DIExpression(), !1307)
  %cond.i4.i.7.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.7.i, i32 %9), !dbg !1309
    #dbg_value(i32 %cond.i4.i.7.i, !1293, !DIExpression(), !1294)
  %conv9.7.i = trunc i32 %cond.i4.i.7.i to i16, !dbg !1310
  %50 = load ptr, ptr %mb_rec.addr.028.i, align 8, !dbg !1311
  %arrayidx11.7.i = getelementptr inbounds i16, ptr %50, i64 %indvars.iv.next.6.i, !dbg !1312
  store i16 %conv9.7.i, ptr %arrayidx11.7.i, align 2, !dbg !1313
    #dbg_value(i64 %10, !1271, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1273)
  %incdec.ptr.i = getelementptr inbounds i8, ptr %mb_rec.addr.028.i, i64 8, !dbg !1314
    #dbg_value(ptr %incdec.ptr.i, !1267, !DIExpression(), !1273)
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %m7.addr.029.i, i64 8, !dbg !1315
    #dbg_value(ptr %incdec.ptr12.i, !1262, !DIExpression(), !1273)
  %incdec.ptr13.i = getelementptr inbounds i8, ptr %mpr.addr.027.i, i64 8, !dbg !1316
    #dbg_value(ptr %incdec.ptr13.i, !1268, !DIExpression(), !1273)
  %inc15.i = add nuw nsw i32 %j.030.i, 1, !dbg !1317
    #dbg_value(i32 %inc15.i, !1272, !DIExpression(), !1273)
  %exitcond.not.i = icmp eq i32 %inc15.i, 8, !dbg !1318
  br i1 %exitcond.not.i, label %if.end, label %for.end.i, !dbg !1275, !llvm.loop !1319

if.else:                                          ; preds = %entry
  tail call void @inverse8x8(ptr noundef %2, ptr noundef %2, i32 noundef %joff, i32 noundef %ioff) #3, !dbg !1321
  %idxprom13 = sext i32 %joff to i64, !dbg !1323
  %arrayidx14 = getelementptr inbounds ptr, ptr %2, i64 %idxprom13, !dbg !1323
  %mb_rec15 = getelementptr inbounds i8, ptr %0, i64 1256, !dbg !1324
  %51 = load ptr, ptr %mb_rec15, align 8, !dbg !1324
  %arrayidx17 = getelementptr inbounds ptr, ptr %51, i64 %idxprom, !dbg !1325
  %52 = load ptr, ptr %arrayidx17, align 8, !dbg !1325
  %arrayidx19 = getelementptr inbounds ptr, ptr %52, i64 %idxprom13, !dbg !1325
  %mb_pred20 = getelementptr inbounds i8, ptr %0, i64 1248, !dbg !1326
  %53 = load ptr, ptr %mb_pred20, align 8, !dbg !1326
  %arrayidx22 = getelementptr inbounds ptr, ptr %53, i64 %idxprom, !dbg !1327
  %54 = load ptr, ptr %arrayidx22, align 8, !dbg !1327
  %arrayidx24 = getelementptr inbounds ptr, ptr %54, i64 %idxprom13, !dbg !1327
  %p_Vid25 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1328
  %55 = load ptr, ptr %p_Vid25, align 8, !dbg !1328
  %max_pel_value_comp26 = getelementptr inbounds i8, ptr %55, i64 849072, !dbg !1329
  %arrayidx28 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp26, i64 0, i64 %idxprom, !dbg !1330
  %56 = load i32, ptr %arrayidx28, align 4, !dbg !1330
    #dbg_value(ptr %arrayidx14, !1331, !DIExpression(), !1342)
    #dbg_value(ptr %arrayidx19, !1334, !DIExpression(), !1342)
    #dbg_value(ptr %arrayidx24, !1335, !DIExpression(), !1342)
    #dbg_value(i32 %56, !1336, !DIExpression(), !1342)
    #dbg_value(i32 %ioff, !1337, !DIExpression(), !1342)
    #dbg_value(ptr null, !1339, !DIExpression(), !1342)
    #dbg_value(ptr null, !1340, !DIExpression(), !1342)
    #dbg_value(ptr null, !1341, !DIExpression(), !1342)
    #dbg_value(i32 0, !1338, !DIExpression(), !1342)
  %idx.ext.i = sext i32 %ioff to i64
  br label %for.body.i, !dbg !1344

for.body.i:                                       ; preds = %for.body.i, %if.else
  %j.0127.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.body.i ]
  %m7.addr.0126.i = phi ptr [ %arrayidx14, %if.else ], [ %incdec.ptr.i53, %for.body.i ]
  %mb_rec.addr.0125.i = phi ptr [ %arrayidx19, %if.else ], [ %incdec.ptr1.i, %for.body.i ]
  %mpr.addr.0124.i = phi ptr [ %arrayidx24, %if.else ], [ %incdec.ptr4.i, %for.body.i ]
    #dbg_value(i32 %j.0127.i, !1338, !DIExpression(), !1342)
    #dbg_value(ptr %m7.addr.0126.i, !1331, !DIExpression(), !1342)
    #dbg_value(ptr %mb_rec.addr.0125.i, !1334, !DIExpression(), !1342)
    #dbg_value(ptr %mpr.addr.0124.i, !1335, !DIExpression(), !1342)
  %incdec.ptr.i53 = getelementptr inbounds i8, ptr %m7.addr.0126.i, i64 8, !dbg !1346
    #dbg_value(ptr %incdec.ptr.i53, !1331, !DIExpression(), !1342)
  %57 = load ptr, ptr %m7.addr.0126.i, align 8, !dbg !1349
  %add.ptr.i = getelementptr inbounds i32, ptr %57, i64 %idx.ext.i, !dbg !1350
    #dbg_value(ptr %add.ptr.i, !1339, !DIExpression(), !1342)
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %mb_rec.addr.0125.i, i64 8, !dbg !1351
    #dbg_value(ptr %incdec.ptr1.i, !1334, !DIExpression(), !1342)
  %58 = load ptr, ptr %mb_rec.addr.0125.i, align 8, !dbg !1352
  %add.ptr3.i = getelementptr inbounds i16, ptr %58, i64 %idx.ext.i, !dbg !1353
    #dbg_value(ptr %add.ptr3.i, !1340, !DIExpression(), !1342)
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %mpr.addr.0124.i, i64 8, !dbg !1354
    #dbg_value(ptr %incdec.ptr4.i, !1335, !DIExpression(), !1342)
  %59 = load ptr, ptr %mpr.addr.0124.i, align 8, !dbg !1355
  %add.ptr6.i = getelementptr inbounds i16, ptr %59, i64 %idx.ext.i, !dbg !1356
    #dbg_value(ptr %add.ptr6.i, !1341, !DIExpression(), !1342)
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 2, !dbg !1357
    #dbg_value(ptr %incdec.ptr7.i, !1341, !DIExpression(), !1342)
  %60 = load i16, ptr %add.ptr6.i, align 2, !dbg !1358
  %conv.i = zext i16 %60 to i32, !dbg !1359
  %incdec.ptr8.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 4, !dbg !1360
    #dbg_value(ptr %incdec.ptr8.i, !1339, !DIExpression(), !1342)
  %61 = load i32, ptr %add.ptr.i, align 4, !dbg !1361
    #dbg_value(i32 %61, !1362, !DIExpression(), !1366)
    #dbg_value(i32 6, !1365, !DIExpression(), !1366)
  %add.i.i = add nsw i32 %61, 32, !dbg !1368
  %shr.i.i = ashr i32 %add.i.i, 6, !dbg !1369
  %add.i = add nsw i32 %shr.i.i, %conv.i, !dbg !1370
    #dbg_value(i32 %56, !1287, !DIExpression(), !1371)
    #dbg_value(i32 %add.i, !1293, !DIExpression(), !1371)
    #dbg_value(i32 %add.i, !1296, !DIExpression(), !1373)
    #dbg_value(i32 0, !1299, !DIExpression(), !1373)
  %cond.i.i.i54 = tail call noundef i32 @llvm.smax.i32(i32 %add.i, i32 0), !dbg !1375
    #dbg_value(i32 %cond.i.i.i54, !1293, !DIExpression(), !1371)
    #dbg_value(i32 %cond.i.i.i54, !1303, !DIExpression(), !1376)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1376)
  %cond.i4.i.i55 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i.i54, i32 %56), !dbg !1378
    #dbg_value(i32 %cond.i4.i.i55, !1293, !DIExpression(), !1371)
  %conv10.i = trunc i32 %cond.i4.i.i55 to i16, !dbg !1379
  %incdec.ptr11.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 2, !dbg !1380
    #dbg_value(ptr %incdec.ptr11.i, !1340, !DIExpression(), !1342)
  store i16 %conv10.i, ptr %add.ptr3.i, align 2, !dbg !1381
  %incdec.ptr12.i56 = getelementptr inbounds i8, ptr %add.ptr6.i, i64 4, !dbg !1382
    #dbg_value(ptr %incdec.ptr12.i56, !1341, !DIExpression(), !1342)
  %62 = load i16, ptr %incdec.ptr7.i, align 2, !dbg !1383
  %conv13.i = zext i16 %62 to i32, !dbg !1384
  %incdec.ptr14.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 8, !dbg !1385
    #dbg_value(ptr %incdec.ptr14.i, !1339, !DIExpression(), !1342)
  %63 = load i32, ptr %incdec.ptr8.i, align 4, !dbg !1386
    #dbg_value(i32 %63, !1362, !DIExpression(), !1387)
    #dbg_value(i32 6, !1365, !DIExpression(), !1387)
  %add.i96.i = add nsw i32 %63, 32, !dbg !1389
  %shr.i97.i = ashr i32 %add.i96.i, 6, !dbg !1390
  %add16.i = add nsw i32 %shr.i97.i, %conv13.i, !dbg !1391
    #dbg_value(i32 %56, !1287, !DIExpression(), !1392)
    #dbg_value(i32 %add16.i, !1293, !DIExpression(), !1392)
    #dbg_value(i32 %add16.i, !1296, !DIExpression(), !1394)
    #dbg_value(i32 0, !1299, !DIExpression(), !1394)
  %cond.i.i98.i = tail call noundef i32 @llvm.smax.i32(i32 %add16.i, i32 0), !dbg !1396
    #dbg_value(i32 %cond.i.i98.i, !1293, !DIExpression(), !1392)
    #dbg_value(i32 %cond.i.i98.i, !1303, !DIExpression(), !1397)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1397)
  %cond.i4.i99.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i98.i, i32 %56), !dbg !1399
    #dbg_value(i32 %cond.i4.i99.i, !1293, !DIExpression(), !1392)
  %conv18.i = trunc i32 %cond.i4.i99.i to i16, !dbg !1400
  %incdec.ptr19.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 4, !dbg !1401
    #dbg_value(ptr %incdec.ptr19.i, !1340, !DIExpression(), !1342)
  store i16 %conv18.i, ptr %incdec.ptr11.i, align 2, !dbg !1402
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 6, !dbg !1403
    #dbg_value(ptr %incdec.ptr20.i, !1341, !DIExpression(), !1342)
  %64 = load i16, ptr %incdec.ptr12.i56, align 2, !dbg !1404
  %conv21.i = zext i16 %64 to i32, !dbg !1405
  %incdec.ptr22.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 12, !dbg !1406
    #dbg_value(ptr %incdec.ptr22.i, !1339, !DIExpression(), !1342)
  %65 = load i32, ptr %incdec.ptr14.i, align 4, !dbg !1407
    #dbg_value(i32 %65, !1362, !DIExpression(), !1408)
    #dbg_value(i32 6, !1365, !DIExpression(), !1408)
  %add.i100.i = add nsw i32 %65, 32, !dbg !1410
  %shr.i101.i = ashr i32 %add.i100.i, 6, !dbg !1411
  %add24.i = add nsw i32 %shr.i101.i, %conv21.i, !dbg !1412
    #dbg_value(i32 %56, !1287, !DIExpression(), !1413)
    #dbg_value(i32 %add24.i, !1293, !DIExpression(), !1413)
    #dbg_value(i32 %add24.i, !1296, !DIExpression(), !1415)
    #dbg_value(i32 0, !1299, !DIExpression(), !1415)
  %cond.i.i102.i = tail call noundef i32 @llvm.smax.i32(i32 %add24.i, i32 0), !dbg !1417
    #dbg_value(i32 %cond.i.i102.i, !1293, !DIExpression(), !1413)
    #dbg_value(i32 %cond.i.i102.i, !1303, !DIExpression(), !1418)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1418)
  %cond.i4.i103.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i102.i, i32 %56), !dbg !1420
    #dbg_value(i32 %cond.i4.i103.i, !1293, !DIExpression(), !1413)
  %conv26.i = trunc i32 %cond.i4.i103.i to i16, !dbg !1421
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 6, !dbg !1422
    #dbg_value(ptr %incdec.ptr27.i, !1340, !DIExpression(), !1342)
  store i16 %conv26.i, ptr %incdec.ptr19.i, align 2, !dbg !1423
  %incdec.ptr28.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 8, !dbg !1424
    #dbg_value(ptr %incdec.ptr28.i, !1341, !DIExpression(), !1342)
  %66 = load i16, ptr %incdec.ptr20.i, align 2, !dbg !1425
  %conv29.i = zext i16 %66 to i32, !dbg !1426
  %incdec.ptr30.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 16, !dbg !1427
    #dbg_value(ptr %incdec.ptr30.i, !1339, !DIExpression(), !1342)
  %67 = load i32, ptr %incdec.ptr22.i, align 4, !dbg !1428
    #dbg_value(i32 %67, !1362, !DIExpression(), !1429)
    #dbg_value(i32 6, !1365, !DIExpression(), !1429)
  %add.i104.i = add nsw i32 %67, 32, !dbg !1431
  %shr.i105.i = ashr i32 %add.i104.i, 6, !dbg !1432
  %add32.i = add nsw i32 %shr.i105.i, %conv29.i, !dbg !1433
    #dbg_value(i32 %56, !1287, !DIExpression(), !1434)
    #dbg_value(i32 %add32.i, !1293, !DIExpression(), !1434)
    #dbg_value(i32 %add32.i, !1296, !DIExpression(), !1436)
    #dbg_value(i32 0, !1299, !DIExpression(), !1436)
  %cond.i.i106.i = tail call noundef i32 @llvm.smax.i32(i32 %add32.i, i32 0), !dbg !1438
    #dbg_value(i32 %cond.i.i106.i, !1293, !DIExpression(), !1434)
    #dbg_value(i32 %cond.i.i106.i, !1303, !DIExpression(), !1439)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1439)
  %cond.i4.i107.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i106.i, i32 %56), !dbg !1441
    #dbg_value(i32 %cond.i4.i107.i, !1293, !DIExpression(), !1434)
  %conv34.i = trunc i32 %cond.i4.i107.i to i16, !dbg !1442
  %incdec.ptr35.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 8, !dbg !1443
    #dbg_value(ptr %incdec.ptr35.i, !1340, !DIExpression(), !1342)
  store i16 %conv34.i, ptr %incdec.ptr27.i, align 2, !dbg !1444
  %incdec.ptr36.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 10, !dbg !1445
    #dbg_value(ptr %incdec.ptr36.i, !1341, !DIExpression(), !1342)
  %68 = load i16, ptr %incdec.ptr28.i, align 2, !dbg !1446
  %conv37.i = zext i16 %68 to i32, !dbg !1447
  %incdec.ptr38.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 20, !dbg !1448
    #dbg_value(ptr %incdec.ptr38.i, !1339, !DIExpression(), !1342)
  %69 = load i32, ptr %incdec.ptr30.i, align 4, !dbg !1449
    #dbg_value(i32 %69, !1362, !DIExpression(), !1450)
    #dbg_value(i32 6, !1365, !DIExpression(), !1450)
  %add.i108.i = add nsw i32 %69, 32, !dbg !1452
  %shr.i109.i = ashr i32 %add.i108.i, 6, !dbg !1453
  %add40.i = add nsw i32 %shr.i109.i, %conv37.i, !dbg !1454
    #dbg_value(i32 %56, !1287, !DIExpression(), !1455)
    #dbg_value(i32 %add40.i, !1293, !DIExpression(), !1455)
    #dbg_value(i32 %add40.i, !1296, !DIExpression(), !1457)
    #dbg_value(i32 0, !1299, !DIExpression(), !1457)
  %cond.i.i110.i = tail call noundef i32 @llvm.smax.i32(i32 %add40.i, i32 0), !dbg !1459
    #dbg_value(i32 %cond.i.i110.i, !1293, !DIExpression(), !1455)
    #dbg_value(i32 %cond.i.i110.i, !1303, !DIExpression(), !1460)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1460)
  %cond.i4.i111.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i110.i, i32 %56), !dbg !1462
    #dbg_value(i32 %cond.i4.i111.i, !1293, !DIExpression(), !1455)
  %conv42.i = trunc i32 %cond.i4.i111.i to i16, !dbg !1463
  %incdec.ptr43.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 10, !dbg !1464
    #dbg_value(ptr %incdec.ptr43.i, !1340, !DIExpression(), !1342)
  store i16 %conv42.i, ptr %incdec.ptr35.i, align 2, !dbg !1465
  %incdec.ptr44.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 12, !dbg !1466
    #dbg_value(ptr %incdec.ptr44.i, !1341, !DIExpression(), !1342)
  %70 = load i16, ptr %incdec.ptr36.i, align 2, !dbg !1467
  %conv45.i = zext i16 %70 to i32, !dbg !1468
  %incdec.ptr46.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 24, !dbg !1469
    #dbg_value(ptr %incdec.ptr46.i, !1339, !DIExpression(), !1342)
  %71 = load i32, ptr %incdec.ptr38.i, align 4, !dbg !1470
    #dbg_value(i32 %71, !1362, !DIExpression(), !1471)
    #dbg_value(i32 6, !1365, !DIExpression(), !1471)
  %add.i112.i = add nsw i32 %71, 32, !dbg !1473
  %shr.i113.i = ashr i32 %add.i112.i, 6, !dbg !1474
  %add48.i = add nsw i32 %shr.i113.i, %conv45.i, !dbg !1475
    #dbg_value(i32 %56, !1287, !DIExpression(), !1476)
    #dbg_value(i32 %add48.i, !1293, !DIExpression(), !1476)
    #dbg_value(i32 %add48.i, !1296, !DIExpression(), !1478)
    #dbg_value(i32 0, !1299, !DIExpression(), !1478)
  %cond.i.i114.i = tail call noundef i32 @llvm.smax.i32(i32 %add48.i, i32 0), !dbg !1480
    #dbg_value(i32 %cond.i.i114.i, !1293, !DIExpression(), !1476)
    #dbg_value(i32 %cond.i.i114.i, !1303, !DIExpression(), !1481)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1481)
  %cond.i4.i115.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i114.i, i32 %56), !dbg !1483
    #dbg_value(i32 %cond.i4.i115.i, !1293, !DIExpression(), !1476)
  %conv50.i = trunc i32 %cond.i4.i115.i to i16, !dbg !1484
  %incdec.ptr51.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 12, !dbg !1485
    #dbg_value(ptr %incdec.ptr51.i, !1340, !DIExpression(), !1342)
  store i16 %conv50.i, ptr %incdec.ptr43.i, align 2, !dbg !1486
  %incdec.ptr52.i = getelementptr inbounds i8, ptr %add.ptr6.i, i64 14, !dbg !1487
    #dbg_value(ptr %incdec.ptr52.i, !1341, !DIExpression(), !1342)
  %72 = load i16, ptr %incdec.ptr44.i, align 2, !dbg !1488
  %conv53.i = zext i16 %72 to i32, !dbg !1489
  %incdec.ptr54.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 28, !dbg !1490
    #dbg_value(ptr %incdec.ptr54.i, !1339, !DIExpression(), !1342)
  %73 = load i32, ptr %incdec.ptr46.i, align 4, !dbg !1491
    #dbg_value(i32 %73, !1362, !DIExpression(), !1492)
    #dbg_value(i32 6, !1365, !DIExpression(), !1492)
  %add.i116.i = add nsw i32 %73, 32, !dbg !1494
  %shr.i117.i = ashr i32 %add.i116.i, 6, !dbg !1495
  %add56.i = add nsw i32 %shr.i117.i, %conv53.i, !dbg !1496
    #dbg_value(i32 %56, !1287, !DIExpression(), !1497)
    #dbg_value(i32 %add56.i, !1293, !DIExpression(), !1497)
    #dbg_value(i32 %add56.i, !1296, !DIExpression(), !1499)
    #dbg_value(i32 0, !1299, !DIExpression(), !1499)
  %cond.i.i118.i = tail call noundef i32 @llvm.smax.i32(i32 %add56.i, i32 0), !dbg !1501
    #dbg_value(i32 %cond.i.i118.i, !1293, !DIExpression(), !1497)
    #dbg_value(i32 %cond.i.i118.i, !1303, !DIExpression(), !1502)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1502)
  %cond.i4.i119.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i118.i, i32 %56), !dbg !1504
    #dbg_value(i32 %cond.i4.i119.i, !1293, !DIExpression(), !1497)
  %conv58.i = trunc i32 %cond.i4.i119.i to i16, !dbg !1505
  %incdec.ptr59.i = getelementptr inbounds i8, ptr %add.ptr3.i, i64 14, !dbg !1506
    #dbg_value(ptr %incdec.ptr59.i, !1340, !DIExpression(), !1342)
  store i16 %conv58.i, ptr %incdec.ptr51.i, align 2, !dbg !1507
  %74 = load i16, ptr %incdec.ptr52.i, align 2, !dbg !1508
  %conv60.i = zext i16 %74 to i32, !dbg !1509
  %75 = load i32, ptr %incdec.ptr54.i, align 4, !dbg !1510
    #dbg_value(i32 %75, !1362, !DIExpression(), !1511)
    #dbg_value(i32 6, !1365, !DIExpression(), !1511)
  %add.i120.i = add nsw i32 %75, 32, !dbg !1513
  %shr.i121.i = ashr i32 %add.i120.i, 6, !dbg !1514
  %add62.i = add nsw i32 %shr.i121.i, %conv60.i, !dbg !1515
    #dbg_value(i32 %56, !1287, !DIExpression(), !1516)
    #dbg_value(i32 %add62.i, !1293, !DIExpression(), !1516)
    #dbg_value(i32 %add62.i, !1296, !DIExpression(), !1518)
    #dbg_value(i32 0, !1299, !DIExpression(), !1518)
  %cond.i.i122.i = tail call noundef i32 @llvm.smax.i32(i32 %add62.i, i32 0), !dbg !1520
    #dbg_value(i32 %cond.i.i122.i, !1293, !DIExpression(), !1516)
    #dbg_value(i32 %cond.i.i122.i, !1303, !DIExpression(), !1521)
    #dbg_value(i32 %56, !1306, !DIExpression(), !1521)
  %cond.i4.i123.i = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i122.i, i32 %56), !dbg !1523
    #dbg_value(i32 %cond.i4.i123.i, !1293, !DIExpression(), !1516)
  %conv64.i = trunc i32 %cond.i4.i123.i to i16, !dbg !1524
  store i16 %conv64.i, ptr %incdec.ptr59.i, align 2, !dbg !1525
  %inc.i = add nuw nsw i32 %j.0127.i, 1, !dbg !1526
    #dbg_value(i32 %inc.i, !1338, !DIExpression(), !1342)
  %exitcond.not.i57 = icmp eq i32 %inc.i, 8, !dbg !1527
  br i1 %exitcond.not.i57, label %if.end, label %for.body.i, !dbg !1344, !llvm.loop !1528

if.end:                                           ; preds = %for.body.i, %for.end.i
  ret void, !dbg !1530
}

declare !dbg !1531 void @inverse8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "ldecod_src/transform8x8.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e02b8179f6e374a3367d70f81e0edb9d")
!2 = !{!3, !12, !18, !27, !34}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 22, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "ldecod_src/inc/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "fd6ca9e1c707932f749220576db72b57")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "CF_UNKNOWN", value: -1)
!8 = !DIEnumerator(name: "YUV400", value: 0)
!9 = !DIEnumerator(name: "YUV420", value: 1)
!10 = !DIEnumerator(name: "YUV422", value: 2)
!11 = !DIEnumerator(name: "YUV444", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 15, baseType: !5, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "CM_UNKNOWN", value: -1)
!15 = !DIEnumerator(name: "CM_YUV", value: 0)
!16 = !DIEnumerator(name: "CM_RGB", value: 1)
!17 = !DIEnumerator(name: "CM_XYZ", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 25, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "ldecod_src/inc/io_video.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1141c07f1801ad27d87214c419749431")
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DIEnumerator(name: "VIDEO_UNKNOWN", value: -1)
!22 = !DIEnumerator(name: "VIDEO_YUV", value: 0)
!23 = !DIEnumerator(name: "VIDEO_RGB", value: 1)
!24 = !DIEnumerator(name: "VIDEO_XYZ", value: 2)
!25 = !DIEnumerator(name: "VIDEO_TIFF", value: 3)
!26 = !DIEnumerator(name: "VIDEO_AVI", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 135, baseType: !29, size: 32, elements: !30)
!28 = !DIFile(filename: "ldecod_src/inc/types.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "64f87bd13f2911471c7313b4ac17e90c")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "FRAME", value: 0)
!32 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!33 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 22, baseType: !29, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "PLANE_Y", value: 0)
!37 = !DIEnumerator(name: "PLANE_U", value: 1)
!38 = !DIEnumerator(name: "PLANE_V", value: 2)
!39 = !DIEnumerator(name: "PLANE_G", value: 0)
!40 = !DIEnumerator(name: "PLANE_B", value: 1)
!41 = !DIEnumerator(name: "PLANE_R", value: 2)
!42 = !{!43, !47}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !44, line: 41, baseType: !45)
!44 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !44, line: 23, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!55 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!56 = distinct !DISubprogram(name: "itrans8x8", scope: !1, file: !1, line: 71, type: !57, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1238)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !828, !5, !5}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !61, line: 273, baseType: !62)
!61 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !61, line: 197, size: 3840, elements: !63)
!63 = !{!64, !1154, !1155, !1156, !1157, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1189, !1190, !1193, !1194, !1196, !1197, !1198, !1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1223, !1224, !1229, !1233, !1237}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !62, file: !61, line: 199, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !61, line: 341, size: 109184, elements: !67)
!67 = !{!68, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !928, !930, !983, !1013, !1040, !1043, !1044, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1082, !1083, !1084, !1087, !1088, !1091, !1092, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1107, !1108, !1109, !1110, !1111, !1113, !1114, !1115, !1119, !1123, !1127, !1131, !1135, !1136, !1137, !1138, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !66, file: !61, line: 343, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !61, line: 566, size: 6855040, elements: !71)
!71 = !{!72, !158, !214, !317, !319, !321, !379, !381, !382, !383, !384, !385, !388, !408, !420, !421, !422, !423, !424, !425, !429, !430, !432, !433, !434, !435, !436, !437, !439, !441, !444, !445, !447, !448, !449, !450, !451, !453, !454, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484, !485, !486, !487, !488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !569, !570, !574, !575, !576, !577, !578, !579, !580, !581, !582, !584, !585, !586, !726, !730, !731, !733, !734, !737, !740, !741, !742, !746, !749, !752, !753, !754, !755, !756, !757, !783, !784, !786, !790, !791, !792, !793, !796, !801, !815, !819, !823, !824, !829, !830, !834, !835, !839, !860, !861, !864, !865, !866, !867, !868, !869, !870, !871}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !70, file: !61, line: 568, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !61, line: 850, size: 32128, elements: !75)
!75 = !{!76, !81, !82, !83, !84, !85, !86, !87, !88, !89, !119, !120, !121, !122, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !74, file: !61, line: 852, baseType: !77, size: 2040)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2040, elements: !79)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !{!80}
!80 = !DISubrange(count: 255)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !74, file: !61, line: 853, baseType: !77, size: 2040, offset: 2040)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !74, file: !61, line: 854, baseType: !77, size: 2040, offset: 4080)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !74, file: !61, line: 856, baseType: !5, size: 32, offset: 6144)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !74, file: !61, line: 857, baseType: !5, size: 32, offset: 6176)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !74, file: !61, line: 858, baseType: !5, size: 32, offset: 6208)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !74, file: !61, line: 859, baseType: !5, size: 32, offset: 6240)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !74, file: !61, line: 860, baseType: !5, size: 32, offset: 6272)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !74, file: !61, line: 861, baseType: !5, size: 32, offset: 6304)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !74, file: !61, line: 864, baseType: !90, size: 1088, offset: 6336)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !4, line: 52, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !4, line: 30, size: 1088, elements: !92)
!92 = !{!93, !95, !97, !99, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !91, file: !4, line: 32, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !4, line: 28, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !91, file: !4, line: 33, baseType: !96, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !4, line: 20, baseType: !12)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !91, file: !4, line: 34, baseType: !98, size: 64, offset: 64)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !91, file: !4, line: 35, baseType: !100, size: 96, offset: 128)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 3)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !91, file: !4, line: 36, baseType: !100, size: 96, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !91, file: !4, line: 37, baseType: !5, size: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !91, file: !4, line: 38, baseType: !5, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !91, file: !4, line: 39, baseType: !5, size: 32, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !91, file: !4, line: 40, baseType: !5, size: 32, offset: 416)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !91, file: !4, line: 41, baseType: !5, size: 32, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !91, file: !4, line: 42, baseType: !5, size: 32, offset: 480)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !91, file: !4, line: 43, baseType: !5, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !91, file: !4, line: 44, baseType: !5, size: 32, offset: 544)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !91, file: !4, line: 45, baseType: !100, size: 96, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !91, file: !4, line: 46, baseType: !5, size: 32, offset: 672)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !91, file: !4, line: 47, baseType: !100, size: 96, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !91, file: !4, line: 48, baseType: !100, size: 96, offset: 800)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !91, file: !4, line: 49, baseType: !100, size: 96, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !91, file: !4, line: 50, baseType: !5, size: 32, offset: 992)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !91, file: !4, line: 51, baseType: !5, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !74, file: !61, line: 865, baseType: !90, size: 1088, offset: 7424)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !74, file: !61, line: 867, baseType: !5, size: 32, offset: 8512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !74, file: !61, line: 868, baseType: !5, size: 32, offset: 8544)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !74, file: !61, line: 869, baseType: !123, size: 7744, offset: 8576)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !19, line: 60, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !19, line: 34, size: 7744, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !124, file: !19, line: 37, baseType: !77, size: 2040)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !124, file: !19, line: 38, baseType: !77, size: 2040, offset: 2040)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !124, file: !19, line: 39, baseType: !77, size: 2040, offset: 4080)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !124, file: !19, line: 40, baseType: !5, size: 32, offset: 6144)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !124, file: !19, line: 41, baseType: !131, size: 32, offset: 6176)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !19, line: 32, baseType: !18)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !124, file: !19, line: 42, baseType: !90, size: 1088, offset: 6208)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !124, file: !19, line: 43, baseType: !5, size: 32, offset: 7296)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !124, file: !19, line: 44, baseType: !5, size: 32, offset: 7328)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !124, file: !19, line: 45, baseType: !5, size: 32, offset: 7360)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !124, file: !19, line: 46, baseType: !5, size: 32, offset: 7392)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !124, file: !19, line: 47, baseType: !5, size: 32, offset: 7424)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !124, file: !19, line: 48, baseType: !5, size: 32, offset: 7456)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !124, file: !19, line: 49, baseType: !5, size: 32, offset: 7488)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !124, file: !19, line: 50, baseType: !5, size: 32, offset: 7520)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !124, file: !19, line: 51, baseType: !5, size: 32, offset: 7552)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !124, file: !19, line: 52, baseType: !5, size: 32, offset: 7584)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !124, file: !19, line: 53, baseType: !5, size: 32, offset: 7616)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !124, file: !19, line: 56, baseType: !145, size: 64, offset: 7680)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !74, file: !61, line: 870, baseType: !123, size: 7744, offset: 16320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !74, file: !61, line: 871, baseType: !123, size: 7744, offset: 24064)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !74, file: !61, line: 873, baseType: !5, size: 32, offset: 31808)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !74, file: !61, line: 884, baseType: !5, size: 32, offset: 31840)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !74, file: !61, line: 885, baseType: !5, size: 32, offset: 31872)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !74, file: !61, line: 886, baseType: !5, size: 32, offset: 31904)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !74, file: !61, line: 890, baseType: !5, size: 32, offset: 31936)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !74, file: !61, line: 893, baseType: !5, size: 32, offset: 31968)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !74, file: !61, line: 894, baseType: !5, size: 32, offset: 32000)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !74, file: !61, line: 895, baseType: !5, size: 32, offset: 32032)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !74, file: !61, line: 897, baseType: !5, size: 32, offset: 32064)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !74, file: !61, line: 899, baseType: !5, size: 32, offset: 32096)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !70, file: !61, line: 569, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !161, line: 138, baseType: !162)
!161 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 94, size: 17728, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !174, !179, !183, !186, !187, !188, !189, !190, !194, !195, !196, !197, !198, !199, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !162, file: !161, line: 96, baseType: !5, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !162, file: !161, line: 97, baseType: !29, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !162, file: !161, line: 98, baseType: !29, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !162, file: !161, line: 99, baseType: !5, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !162, file: !161, line: 100, baseType: !5, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !162, file: !161, line: 102, baseType: !5, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !162, file: !161, line: 103, baseType: !171, size: 384, offset: 192)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 12)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !162, file: !161, line: 104, baseType: !175, size: 3072, offset: 576)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3072, elements: !176)
!176 = !{!177, !178}
!177 = !DISubrange(count: 6)
!178 = !DISubrange(count: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !162, file: !161, line: 105, baseType: !180, size: 12288, offset: 3648)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 12288, elements: !181)
!181 = !{!177, !182}
!182 = !DISubrange(count: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !162, file: !161, line: 106, baseType: !184, size: 192, offset: 15936)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !185)
!185 = !{!177}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !162, file: !161, line: 107, baseType: !184, size: 192, offset: 16128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !162, file: !161, line: 110, baseType: !5, size: 32, offset: 16320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !162, file: !161, line: 111, baseType: !29, size: 32, offset: 16352)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !162, file: !161, line: 112, baseType: !29, size: 32, offset: 16384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !162, file: !161, line: 114, baseType: !191, size: 256, offset: 16416)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !162, file: !161, line: 116, baseType: !191, size: 256, offset: 16672)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !162, file: !161, line: 117, baseType: !191, size: 256, offset: 16928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !162, file: !161, line: 119, baseType: !5, size: 32, offset: 17184)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !162, file: !161, line: 120, baseType: !29, size: 32, offset: 17216)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !162, file: !161, line: 122, baseType: !29, size: 32, offset: 17248)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !162, file: !161, line: 123, baseType: !200, size: 64, offset: 17280)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !44, line: 21, baseType: !202)
!202 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !162, file: !161, line: 125, baseType: !5, size: 32, offset: 17344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !162, file: !161, line: 126, baseType: !5, size: 32, offset: 17376)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !162, file: !161, line: 127, baseType: !5, size: 32, offset: 17408)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !162, file: !161, line: 128, baseType: !29, size: 32, offset: 17440)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !162, file: !161, line: 129, baseType: !5, size: 32, offset: 17472)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !162, file: !161, line: 130, baseType: !5, size: 32, offset: 17504)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !162, file: !161, line: 131, baseType: !5, size: 32, offset: 17536)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !162, file: !161, line: 133, baseType: !5, size: 32, offset: 17568)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !162, file: !161, line: 135, baseType: !5, size: 32, offset: 17600)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !162, file: !161, line: 136, baseType: !5, size: 32, offset: 17632)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !162, file: !161, line: 137, baseType: !5, size: 32, offset: 17664)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !70, file: !61, line: 570, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !161, line: 197, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 142, size: 33024, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !315, !316}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !217, file: !161, line: 144, baseType: !5, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !217, file: !161, line: 146, baseType: !29, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !217, file: !161, line: 147, baseType: !5, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !217, file: !161, line: 148, baseType: !5, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !217, file: !161, line: 149, baseType: !5, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !217, file: !161, line: 150, baseType: !5, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !217, file: !161, line: 152, baseType: !5, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !217, file: !161, line: 154, baseType: !29, size: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !217, file: !161, line: 155, baseType: !29, size: 32, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !217, file: !161, line: 156, baseType: !29, size: 32, offset: 288)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !217, file: !161, line: 158, baseType: !5, size: 32, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !217, file: !161, line: 159, baseType: !171, size: 384, offset: 352)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !217, file: !161, line: 160, baseType: !175, size: 3072, offset: 736)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !217, file: !161, line: 161, baseType: !180, size: 12288, offset: 3808)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !217, file: !161, line: 162, baseType: !184, size: 192, offset: 16096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !217, file: !161, line: 163, baseType: !184, size: 192, offset: 16288)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !217, file: !161, line: 165, baseType: !29, size: 32, offset: 16480)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !217, file: !161, line: 166, baseType: !29, size: 32, offset: 16512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !217, file: !161, line: 167, baseType: !29, size: 32, offset: 16544)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !217, file: !161, line: 168, baseType: !29, size: 32, offset: 16576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !217, file: !161, line: 170, baseType: !29, size: 32, offset: 16608)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !217, file: !161, line: 172, baseType: !5, size: 32, offset: 16640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !217, file: !161, line: 173, baseType: !5, size: 32, offset: 16672)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !217, file: !161, line: 174, baseType: !5, size: 32, offset: 16704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !217, file: !161, line: 175, baseType: !29, size: 32, offset: 16736)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !217, file: !161, line: 177, baseType: !245, size: 8192, offset: 16768)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !217, file: !161, line: 178, baseType: !29, size: 32, offset: 24960)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !217, file: !161, line: 179, baseType: !5, size: 32, offset: 24992)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !217, file: !161, line: 180, baseType: !29, size: 32, offset: 25024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !217, file: !161, line: 181, baseType: !29, size: 32, offset: 25056)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !217, file: !161, line: 182, baseType: !5, size: 32, offset: 25088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !217, file: !161, line: 184, baseType: !5, size: 32, offset: 25120)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !217, file: !161, line: 185, baseType: !5, size: 32, offset: 25152)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !217, file: !161, line: 186, baseType: !5, size: 32, offset: 25184)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !217, file: !161, line: 187, baseType: !29, size: 32, offset: 25216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !217, file: !161, line: 188, baseType: !29, size: 32, offset: 25248)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !217, file: !161, line: 189, baseType: !29, size: 32, offset: 25280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !217, file: !161, line: 190, baseType: !29, size: 32, offset: 25312)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !217, file: !161, line: 191, baseType: !5, size: 32, offset: 25344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !217, file: !161, line: 192, baseType: !262, size: 7584, offset: 25376)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !161, line: 90, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 53, size: 7584, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !263, file: !161, line: 55, baseType: !5, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !263, file: !161, line: 56, baseType: !29, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !263, file: !161, line: 57, baseType: !46, size: 16, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !263, file: !161, line: 58, baseType: !46, size: 16, offset: 80)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !263, file: !161, line: 59, baseType: !5, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !263, file: !161, line: 60, baseType: !5, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !263, file: !161, line: 61, baseType: !5, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !263, file: !161, line: 62, baseType: !29, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !263, file: !161, line: 63, baseType: !5, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !263, file: !161, line: 64, baseType: !5, size: 32, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !263, file: !161, line: 65, baseType: !29, size: 32, offset: 288)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !263, file: !161, line: 66, baseType: !29, size: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !263, file: !161, line: 67, baseType: !29, size: 32, offset: 352)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !263, file: !161, line: 68, baseType: !5, size: 32, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !263, file: !161, line: 69, baseType: !29, size: 32, offset: 416)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !263, file: !161, line: 70, baseType: !29, size: 32, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !263, file: !161, line: 71, baseType: !5, size: 32, offset: 480)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !263, file: !161, line: 72, baseType: !29, size: 32, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !263, file: !161, line: 73, baseType: !29, size: 32, offset: 544)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !263, file: !161, line: 74, baseType: !5, size: 32, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !263, file: !161, line: 75, baseType: !5, size: 32, offset: 608)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !263, file: !161, line: 76, baseType: !287, size: 3296, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !161, line: 50, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 38, size: 3296, elements: !289)
!289 = !{!290, !291, !292, !293, !297, !298, !299, !300, !301, !302}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !288, file: !161, line: 40, baseType: !29, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !288, file: !161, line: 41, baseType: !29, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !288, file: !161, line: 42, baseType: !29, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !288, file: !161, line: 43, baseType: !294, size: 1024, offset: 96)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !288, file: !161, line: 44, baseType: !294, size: 1024, offset: 1120)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !288, file: !161, line: 45, baseType: !294, size: 1024, offset: 2144)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !288, file: !161, line: 46, baseType: !29, size: 32, offset: 3168)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !288, file: !161, line: 47, baseType: !29, size: 32, offset: 3200)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !288, file: !161, line: 48, baseType: !29, size: 32, offset: 3232)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !288, file: !161, line: 49, baseType: !29, size: 32, offset: 3264)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !263, file: !161, line: 77, baseType: !5, size: 32, offset: 3936)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !263, file: !161, line: 78, baseType: !287, size: 3296, offset: 3968)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !263, file: !161, line: 80, baseType: !5, size: 32, offset: 7264)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !263, file: !161, line: 81, baseType: !5, size: 32, offset: 7296)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !263, file: !161, line: 82, baseType: !5, size: 32, offset: 7328)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !263, file: !161, line: 83, baseType: !5, size: 32, offset: 7360)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !263, file: !161, line: 84, baseType: !29, size: 32, offset: 7392)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !263, file: !161, line: 85, baseType: !29, size: 32, offset: 7424)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !263, file: !161, line: 86, baseType: !29, size: 32, offset: 7456)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !263, file: !161, line: 87, baseType: !29, size: 32, offset: 7488)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !263, file: !161, line: 88, baseType: !29, size: 32, offset: 7520)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !263, file: !161, line: 89, baseType: !29, size: 32, offset: 7552)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !217, file: !161, line: 193, baseType: !29, size: 32, offset: 32960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !217, file: !161, line: 195, baseType: !5, size: 32, offset: 32992)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !70, file: !61, line: 571, baseType: !318, size: 1056768, offset: 192)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 1056768, elements: !295)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !70, file: !61, line: 572, baseType: !320, size: 4538368, offset: 1056960)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 4538368, elements: !246)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !70, file: !61, line: 575, baseType: !322, size: 64, offset: 5595328)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !161, line: 256, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 228, size: 37312, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !346, !347, !348, !349}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !324, file: !161, line: 230, baseType: !216, size: 33024)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !324, file: !161, line: 232, baseType: !29, size: 32, offset: 33024)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !324, file: !161, line: 233, baseType: !5, size: 32, offset: 33056)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !324, file: !161, line: 234, baseType: !145, size: 64, offset: 33088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !324, file: !161, line: 235, baseType: !145, size: 64, offset: 33152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !324, file: !161, line: 236, baseType: !332, size: 64, offset: 33216)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !324, file: !161, line: 237, baseType: !145, size: 64, offset: 33280)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !324, file: !161, line: 238, baseType: !332, size: 64, offset: 33344)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !324, file: !161, line: 240, baseType: !145, size: 64, offset: 33408)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !324, file: !161, line: 241, baseType: !332, size: 64, offset: 33472)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !324, file: !161, line: 242, baseType: !145, size: 64, offset: 33536)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !324, file: !161, line: 243, baseType: !332, size: 64, offset: 33600)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !324, file: !161, line: 245, baseType: !5, size: 32, offset: 33664)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !324, file: !161, line: 246, baseType: !145, size: 64, offset: 33728)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !324, file: !161, line: 247, baseType: !145, size: 64, offset: 33792)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !324, file: !161, line: 248, baseType: !332, size: 64, offset: 33856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !324, file: !161, line: 249, baseType: !332, size: 64, offset: 33920)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !324, file: !161, line: 250, baseType: !345, size: 64, offset: 33984)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !324, file: !161, line: 251, baseType: !332, size: 64, offset: 34048)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !324, file: !161, line: 253, baseType: !29, size: 32, offset: 34112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !324, file: !161, line: 254, baseType: !5, size: 32, offset: 34144)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !324, file: !161, line: 255, baseType: !350, size: 3136, offset: 34176)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !161, line: 226, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !161, line: 200, size: 3136, elements: !352)
!352 = !{!353, !354, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !372, !373, !375, !376, !377, !378}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !351, file: !161, line: 202, baseType: !5, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !351, file: !161, line: 203, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !351, file: !161, line: 204, baseType: !145, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !351, file: !161, line: 205, baseType: !332, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !351, file: !161, line: 206, baseType: !355, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !351, file: !161, line: 207, baseType: !145, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !351, file: !161, line: 208, baseType: !145, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !351, file: !161, line: 209, baseType: !355, size: 64, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !351, file: !161, line: 210, baseType: !355, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !351, file: !161, line: 211, baseType: !355, size: 64, offset: 576)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !351, file: !161, line: 212, baseType: !355, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !351, file: !161, line: 213, baseType: !355, size: 64, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !351, file: !161, line: 216, baseType: !356, size: 8, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !351, file: !161, line: 217, baseType: !356, size: 8, offset: 776)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !351, file: !161, line: 218, baseType: !356, size: 8, offset: 784)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !351, file: !161, line: 219, baseType: !371, size: 1024, offset: 800)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, elements: !295)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !351, file: !161, line: 220, baseType: !371, size: 1024, offset: 1824)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !351, file: !161, line: 221, baseType: !374, size: 256, offset: 2848)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 256, elements: !295)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !351, file: !161, line: 222, baseType: !356, size: 8, offset: 3104)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !351, file: !161, line: 223, baseType: !356, size: 8, offset: 3112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !351, file: !161, line: 224, baseType: !356, size: 8, offset: 3120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !351, file: !161, line: 225, baseType: !356, size: 8, offset: 3128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !70, file: !61, line: 577, baseType: !380, size: 1193984, offset: 5595392)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 1193984, elements: !295)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !70, file: !61, line: 578, baseType: !5, size: 32, offset: 6789376)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !70, file: !61, line: 579, baseType: !5, size: 32, offset: 6789408)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !70, file: !61, line: 580, baseType: !5, size: 32, offset: 6789440)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !70, file: !61, line: 581, baseType: !5, size: 32, offset: 6789472)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !70, file: !61, line: 584, baseType: !386, size: 64, offset: 6789504)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !61, line: 584, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !70, file: !61, line: 586, baseType: !389, size: 64, offset: 6789568)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !61, line: 902, size: 416, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !401, !402, !403, !404, !405, !406, !407}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !390, file: !61, line: 904, baseType: !29, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !390, file: !61, line: 905, baseType: !29, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !390, file: !61, line: 906, baseType: !5, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !390, file: !61, line: 907, baseType: !29, size: 32, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !390, file: !61, line: 908, baseType: !5, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !390, file: !61, line: 909, baseType: !398, size: 64, offset: 160)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 2)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !390, file: !61, line: 910, baseType: !201, size: 8, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !390, file: !61, line: 911, baseType: !201, size: 8, offset: 232)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !390, file: !61, line: 912, baseType: !5, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !390, file: !61, line: 913, baseType: !5, size: 32, offset: 288)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !390, file: !61, line: 915, baseType: !5, size: 32, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !390, file: !61, line: 916, baseType: !5, size: 32, offset: 352)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !390, file: !61, line: 917, baseType: !5, size: 32, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !70, file: !61, line: 587, baseType: !409, size: 64, offset: 6789632)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !61, line: 839, size: 512, elements: !411)
!411 = !{!412, !413, !416, !417, !418, !419}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !410, file: !61, line: 841, baseType: !5, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !410, file: !61, line: 842, baseType: !414, size: 96, offset: 32)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 96, elements: !101)
!415 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !410, file: !61, line: 843, baseType: !414, size: 96, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !410, file: !61, line: 844, baseType: !414, size: 96, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !410, file: !61, line: 845, baseType: !414, size: 96, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !410, file: !61, line: 846, baseType: !414, size: 96, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !70, file: !61, line: 588, baseType: !5, size: 32, offset: 6789696)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !70, file: !61, line: 591, baseType: !29, size: 32, offset: 6789728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !70, file: !61, line: 592, baseType: !5, size: 32, offset: 6789760)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !70, file: !61, line: 593, baseType: !5, size: 32, offset: 6789792)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !70, file: !61, line: 594, baseType: !5, size: 32, offset: 6789824)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !70, file: !61, line: 595, baseType: !426, size: 64, offset: 6789888)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !61, line: 542, baseType: !66)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !70, file: !61, line: 596, baseType: !355, size: 64, offset: 6789952)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !70, file: !61, line: 597, baseType: !431, size: 192, offset: 6790016)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !101)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !61, line: 601, baseType: !5, size: 32, offset: 6790208)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !70, file: !61, line: 602, baseType: !5, size: 32, offset: 6790240)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !70, file: !61, line: 603, baseType: !5, size: 32, offset: 6790272)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !70, file: !61, line: 604, baseType: !5, size: 32, offset: 6790304)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !70, file: !61, line: 605, baseType: !5, size: 32, offset: 6790336)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !70, file: !61, line: 607, baseType: !438, size: 64, offset: 6790400)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !70, file: !61, line: 608, baseType: !440, size: 192, offset: 6790464)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 192, elements: !101)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !70, file: !61, line: 609, baseType: !442, size: 64, offset: 6790656)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !70, file: !61, line: 610, baseType: !332, size: 64, offset: 6790720)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !70, file: !61, line: 611, baseType: !446, size: 192, offset: 6790784)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !101)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !70, file: !61, line: 613, baseType: !5, size: 32, offset: 6790976)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !70, file: !61, line: 614, baseType: !5, size: 32, offset: 6791008)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !70, file: !61, line: 617, baseType: !427, size: 64, offset: 6791040)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !70, file: !61, line: 618, baseType: !59, size: 64, offset: 6791104)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !70, file: !61, line: 619, baseType: !452, size: 192, offset: 6791168)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 192, elements: !101)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !70, file: !61, line: 621, baseType: !5, size: 32, offset: 6791360)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !70, file: !61, line: 626, baseType: !455, size: 64, offset: 6791424)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !61, line: 626, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !70, file: !61, line: 627, baseType: !455, size: 64, offset: 6791488)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !70, file: !61, line: 629, baseType: !29, size: 32, offset: 6791552)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !70, file: !61, line: 630, baseType: !5, size: 32, offset: 6791584)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !70, file: !61, line: 634, baseType: !5, size: 32, offset: 6791616)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !70, file: !61, line: 635, baseType: !29, size: 32, offset: 6791648)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !70, file: !61, line: 638, baseType: !5, size: 32, offset: 6791680)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !70, file: !61, line: 638, baseType: !5, size: 32, offset: 6791712)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !70, file: !61, line: 638, baseType: !5, size: 32, offset: 6791744)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !70, file: !61, line: 639, baseType: !29, size: 32, offset: 6791776)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !70, file: !61, line: 639, baseType: !29, size: 32, offset: 6791808)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !70, file: !61, line: 640, baseType: !5, size: 32, offset: 6791840)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !70, file: !61, line: 641, baseType: !5, size: 32, offset: 6791872)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !70, file: !61, line: 642, baseType: !5, size: 32, offset: 6791904)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !70, file: !61, line: 645, baseType: !5, size: 32, offset: 6791936)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !70, file: !61, line: 647, baseType: !29, size: 32, offset: 6791968)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !70, file: !61, line: 648, baseType: !29, size: 32, offset: 6792000)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !70, file: !61, line: 649, baseType: !29, size: 32, offset: 6792032)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !70, file: !61, line: 650, baseType: !29, size: 32, offset: 6792064)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !70, file: !61, line: 651, baseType: !29, size: 32, offset: 6792096)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !70, file: !61, line: 652, baseType: !29, size: 32, offset: 6792128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !70, file: !61, line: 653, baseType: !29, size: 32, offset: 6792160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !70, file: !61, line: 655, baseType: !5, size: 32, offset: 6792192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !70, file: !61, line: 657, baseType: !5, size: 32, offset: 6792224)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !70, file: !61, line: 658, baseType: !5, size: 32, offset: 6792256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !70, file: !61, line: 661, baseType: !5, size: 32, offset: 6792288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !70, file: !61, line: 662, baseType: !483, size: 16, offset: 6792320)
!483 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !70, file: !61, line: 663, baseType: !483, size: 16, offset: 6792336)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !70, file: !61, line: 664, baseType: !398, size: 64, offset: 6792352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !70, file: !61, line: 665, baseType: !5, size: 32, offset: 6792416)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !70, file: !61, line: 666, baseType: !5, size: 32, offset: 6792448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !70, file: !61, line: 667, baseType: !489, size: 96, offset: 6792480)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 96, elements: !101)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !70, file: !61, line: 668, baseType: !100, size: 96, offset: 6792576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !70, file: !61, line: 670, baseType: !5, size: 32, offset: 6792672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !70, file: !61, line: 671, baseType: !5, size: 32, offset: 6792704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !70, file: !61, line: 672, baseType: !5, size: 32, offset: 6792736)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !70, file: !61, line: 673, baseType: !5, size: 32, offset: 6792768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !70, file: !61, line: 674, baseType: !5, size: 32, offset: 6792800)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !70, file: !61, line: 675, baseType: !5, size: 32, offset: 6792832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !70, file: !61, line: 676, baseType: !5, size: 32, offset: 6792864)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !70, file: !61, line: 677, baseType: !5, size: 32, offset: 6792896)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !70, file: !61, line: 678, baseType: !5, size: 32, offset: 6792928)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !70, file: !61, line: 679, baseType: !5, size: 32, offset: 6792960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !70, file: !61, line: 680, baseType: !502, size: 192, offset: 6792992)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !503)
!503 = !{!102, !400}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !70, file: !61, line: 681, baseType: !502, size: 192, offset: 6793184)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !70, file: !61, line: 682, baseType: !502, size: 192, offset: 6793376)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !70, file: !61, line: 683, baseType: !5, size: 32, offset: 6793568)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !70, file: !61, line: 684, baseType: !5, size: 32, offset: 6793600)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !70, file: !61, line: 685, baseType: !5, size: 32, offset: 6793632)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !70, file: !61, line: 686, baseType: !5, size: 32, offset: 6793664)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !70, file: !61, line: 687, baseType: !5, size: 32, offset: 6793696)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !70, file: !61, line: 689, baseType: !5, size: 32, offset: 6793728)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !70, file: !61, line: 692, baseType: !5, size: 32, offset: 6793760)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !70, file: !61, line: 693, baseType: !5, size: 32, offset: 6793792)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !70, file: !61, line: 700, baseType: !5, size: 32, offset: 6793824)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !70, file: !61, line: 701, baseType: !5, size: 32, offset: 6793856)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !70, file: !61, line: 702, baseType: !5, size: 32, offset: 6793888)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !70, file: !61, line: 703, baseType: !5, size: 32, offset: 6793920)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !70, file: !61, line: 704, baseType: !5, size: 32, offset: 6793952)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !70, file: !61, line: 705, baseType: !29, size: 32, offset: 6793984)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !70, file: !61, line: 706, baseType: !5, size: 32, offset: 6794016)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !70, file: !61, line: 707, baseType: !5, size: 32, offset: 6794048)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !70, file: !61, line: 710, baseType: !5, size: 32, offset: 6794080)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !70, file: !61, line: 711, baseType: !5, size: 32, offset: 6794112)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !70, file: !61, line: 712, baseType: !5, size: 32, offset: 6794144)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !70, file: !61, line: 713, baseType: !5, size: 32, offset: 6794176)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !70, file: !61, line: 714, baseType: !5, size: 32, offset: 6794208)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !70, file: !61, line: 716, baseType: !5, size: 32, offset: 6794240)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !70, file: !61, line: 717, baseType: !5, size: 32, offset: 6794272)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !70, file: !61, line: 719, baseType: !200, size: 64, offset: 6794304)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !70, file: !61, line: 720, baseType: !200, size: 64, offset: 6794368)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !70, file: !61, line: 722, baseType: !532, size: 2560, offset: 6794432)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !533, line: 38, baseType: !534)
!533 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !533, line: 20, size: 2560, elements: !535)
!535 = !{!536, !537, !541, !542, !543, !547, !548, !549, !550, !551}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !534, file: !533, line: 22, baseType: !90, size: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !534, file: !533, line: 24, baseType: !538, size: 192, offset: 1088)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 192, elements: !101)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !534, file: !533, line: 25, baseType: !538, size: 192, offset: 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !534, file: !533, line: 26, baseType: !538, size: 192, offset: 1472)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !534, file: !533, line: 31, baseType: !544, size: 192, offset: 1664)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 192, elements: !101)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !534, file: !533, line: 32, baseType: !544, size: 192, offset: 1856)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !534, file: !533, line: 33, baseType: !544, size: 192, offset: 2048)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !534, file: !533, line: 35, baseType: !100, size: 96, offset: 2240)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !534, file: !533, line: 36, baseType: !100, size: 96, offset: 2336)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !534, file: !533, line: 37, baseType: !100, size: 96, offset: 2432)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !70, file: !61, line: 723, baseType: !532, size: 2560, offset: 6796992)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !70, file: !61, line: 724, baseType: !532, size: 2560, offset: 6799552)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !70, file: !61, line: 725, baseType: !532, size: 2560, offset: 6802112)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !70, file: !61, line: 728, baseType: !532, size: 2560, offset: 6804672)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !70, file: !61, line: 729, baseType: !532, size: 2560, offset: 6807232)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !70, file: !61, line: 730, baseType: !532, size: 2560, offset: 6809792)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !70, file: !61, line: 731, baseType: !532, size: 2560, offset: 6812352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !70, file: !61, line: 735, baseType: !29, size: 32, offset: 6814912)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !70, file: !61, line: 737, baseType: !5, size: 32, offset: 6814944)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !70, file: !61, line: 738, baseType: !5, size: 32, offset: 6814976)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !70, file: !61, line: 741, baseType: !563, size: 64, offset: 6815040)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !564, line: 103, baseType: !565)
!564 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !566, line: 27, baseType: !567)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !568, line: 44, baseType: !47)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !70, file: !61, line: 744, baseType: !5, size: 32, offset: 6815104)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !70, file: !61, line: 746, baseType: !571, size: 32768, offset: 6815136)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1024)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !70, file: !61, line: 748, baseType: !5, size: 32, offset: 6847904)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !70, file: !61, line: 751, baseType: !5, size: 32, offset: 6847936)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !70, file: !61, line: 752, baseType: !5, size: 32, offset: 6847968)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !70, file: !61, line: 755, baseType: !5, size: 32, offset: 6848000)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !70, file: !61, line: 756, baseType: !5, size: 32, offset: 6848032)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !70, file: !61, line: 758, baseType: !5, size: 32, offset: 6848064)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !70, file: !61, line: 759, baseType: !5, size: 32, offset: 6848096)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !70, file: !61, line: 762, baseType: !539, size: 64, offset: 6848128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !70, file: !61, line: 763, baseType: !583, size: 64, offset: 6848192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !70, file: !61, line: 765, baseType: !145, size: 64, offset: 6848256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !70, file: !61, line: 766, baseType: !145, size: 64, offset: 6848320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !70, file: !61, line: 768, baseType: !587, size: 64, offset: 6848384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !589, line: 152, size: 768, elements: !590)
!589 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !721, !722, !723, !724, !725}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !588, file: !589, line: 154, baseType: !5, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !588, file: !589, line: 155, baseType: !5, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !588, file: !589, line: 156, baseType: !5, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !588, file: !589, line: 157, baseType: !5, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !588, file: !589, line: 159, baseType: !5, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !588, file: !589, line: 161, baseType: !29, size: 32, offset: 160)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !588, file: !589, line: 162, baseType: !29, size: 32, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !588, file: !589, line: 164, baseType: !5, size: 32, offset: 224)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !588, file: !589, line: 165, baseType: !5, size: 32, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !588, file: !589, line: 166, baseType: !5, size: 32, offset: 288)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !588, file: !589, line: 167, baseType: !5, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !588, file: !589, line: 170, baseType: !5, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !588, file: !589, line: 172, baseType: !604, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !589, line: 138, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !589, line: 46, size: 3328, elements: !607)
!607 = !{!608, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !661, !663, !667, !669, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !606, file: !589, line: 48, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !28, line: 140, baseType: !27)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !606, file: !589, line: 50, baseType: !5, size: 32, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !606, file: !589, line: 51, baseType: !5, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !606, file: !589, line: 52, baseType: !5, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !606, file: !589, line: 53, baseType: !5, size: 32, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !606, file: !589, line: 54, baseType: !29, size: 32, offset: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !606, file: !589, line: 55, baseType: !29, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !606, file: !589, line: 57, baseType: !5, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !606, file: !589, line: 58, baseType: !5, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !606, file: !589, line: 59, baseType: !5, size: 32, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !606, file: !589, line: 61, baseType: !201, size: 8, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !606, file: !589, line: 62, baseType: !5, size: 32, offset: 352)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !606, file: !589, line: 63, baseType: !5, size: 32, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !606, file: !589, line: 64, baseType: !5, size: 32, offset: 416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !606, file: !589, line: 65, baseType: !5, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !606, file: !589, line: 67, baseType: !483, size: 16, offset: 480)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 544)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !606, file: !589, line: 69, baseType: !5, size: 32, offset: 608)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 672)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !606, file: !589, line: 70, baseType: !5, size: 32, offset: 736)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !606, file: !589, line: 71, baseType: !5, size: 32, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !606, file: !589, line: 72, baseType: !5, size: 32, offset: 800)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !606, file: !589, line: 73, baseType: !29, size: 32, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !606, file: !589, line: 74, baseType: !29, size: 32, offset: 864)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !606, file: !589, line: 75, baseType: !5, size: 32, offset: 896)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !606, file: !589, line: 75, baseType: !5, size: 32, offset: 928)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !606, file: !589, line: 76, baseType: !5, size: 32, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !606, file: !589, line: 76, baseType: !5, size: 32, offset: 992)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !606, file: !589, line: 79, baseType: !539, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !606, file: !589, line: 80, baseType: !583, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !606, file: !589, line: 81, baseType: !583, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !606, file: !589, line: 84, baseType: !645, size: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !589, line: 36, size: 256, elements: !648)
!648 = !{!649, !652, !659}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !647, file: !589, line: 38, baseType: !650, size: 128)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 128, elements: !399)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !647, file: !589, line: 39, baseType: !653, size: 64, offset: 128)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 64, elements: !399)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !61, line: 104, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 100, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !655, file: !61, line: 102, baseType: !483, size: 16)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !655, file: !61, line: 103, baseType: !483, size: 16, offset: 16)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !647, file: !589, line: 40, baseType: !660, size: 16, offset: 192)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 16, elements: !399)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !606, file: !589, line: 85, baseType: !662, size: 192, offset: 1280)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 192, elements: !101)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !606, file: !589, line: 87, baseType: !664, size: 64, offset: 1472)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !589, line: 29, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !664, file: !589, line: 31, baseType: !200, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !606, file: !589, line: 88, baseType: !668, size: 192, offset: 1536)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 192, elements: !101)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !606, file: !589, line: 90, baseType: !670, size: 64, offset: 1728)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !606, file: !589, line: 92, baseType: !651, size: 64, offset: 1792)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !606, file: !589, line: 93, baseType: !651, size: 64, offset: 1856)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !606, file: !589, line: 94, baseType: !651, size: 64, offset: 1920)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !606, file: !589, line: 96, baseType: !5, size: 32, offset: 1984)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !606, file: !589, line: 97, baseType: !5, size: 32, offset: 2016)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !606, file: !589, line: 98, baseType: !5, size: 32, offset: 2048)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !606, file: !589, line: 99, baseType: !5, size: 32, offset: 2080)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !606, file: !589, line: 100, baseType: !5, size: 32, offset: 2112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !606, file: !589, line: 102, baseType: !5, size: 32, offset: 2144)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !606, file: !589, line: 103, baseType: !5, size: 32, offset: 2176)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !606, file: !589, line: 104, baseType: !5, size: 32, offset: 2208)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !606, file: !589, line: 105, baseType: !5, size: 32, offset: 2240)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !606, file: !589, line: 106, baseType: !5, size: 32, offset: 2272)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !606, file: !589, line: 107, baseType: !5, size: 32, offset: 2304)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !606, file: !589, line: 108, baseType: !5, size: 32, offset: 2336)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !606, file: !589, line: 109, baseType: !5, size: 32, offset: 2368)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !606, file: !589, line: 110, baseType: !398, size: 64, offset: 2400)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !606, file: !589, line: 111, baseType: !5, size: 32, offset: 2464)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !606, file: !589, line: 112, baseType: !691, size: 64, offset: 2496)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !61, line: 194, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !61, line: 186, size: 256, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !693, file: !61, line: 188, baseType: !5, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !693, file: !61, line: 189, baseType: !5, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !693, file: !61, line: 190, baseType: !5, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !693, file: !61, line: 191, baseType: !5, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !693, file: !61, line: 192, baseType: !5, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !693, file: !61, line: 193, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !606, file: !589, line: 115, baseType: !5, size: 32, offset: 2560)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !606, file: !589, line: 118, baseType: !5, size: 32, offset: 2592)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !606, file: !589, line: 119, baseType: !5, size: 32, offset: 2624)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !606, file: !589, line: 120, baseType: !5, size: 32, offset: 2656)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !606, file: !589, line: 121, baseType: !540, size: 64, offset: 2688)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !606, file: !589, line: 124, baseType: !5, size: 32, offset: 2752)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !606, file: !589, line: 125, baseType: !5, size: 32, offset: 2784)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !606, file: !589, line: 126, baseType: !5, size: 32, offset: 2816)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !606, file: !589, line: 128, baseType: !5, size: 32, offset: 2848)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !606, file: !589, line: 129, baseType: !5, size: 32, offset: 2880)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !606, file: !589, line: 130, baseType: !5, size: 32, offset: 2912)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !606, file: !589, line: 131, baseType: !5, size: 32, offset: 2944)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !606, file: !589, line: 132, baseType: !539, size: 64, offset: 3008)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !606, file: !589, line: 133, baseType: !5, size: 32, offset: 3072)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !606, file: !589, line: 134, baseType: !5, size: 32, offset: 3104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !606, file: !589, line: 136, baseType: !660, size: 16, offset: 3136)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !606, file: !589, line: 137, baseType: !719, size: 128, offset: 3200)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !399)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !588, file: !589, line: 173, baseType: !604, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !588, file: !589, line: 174, baseType: !604, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !588, file: !589, line: 177, baseType: !5, size: 32, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !588, file: !589, line: 178, baseType: !398, size: 64, offset: 608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !588, file: !589, line: 179, baseType: !398, size: 64, offset: 672)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !70, file: !61, line: 769, baseType: !727, size: 3200, offset: 6848448)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3200, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 100)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !70, file: !61, line: 771, baseType: !651, size: 64, offset: 6851648)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !70, file: !61, line: 772, baseType: !732, size: 192, offset: 6851712)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !101)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !70, file: !61, line: 773, baseType: !651, size: 64, offset: 6851904)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !70, file: !61, line: 776, baseType: !735, size: 64, offset: 6851968)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !61, line: 776, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !70, file: !61, line: 777, baseType: !738, size: 64, offset: 6852032)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !61, line: 777, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !70, file: !61, line: 779, baseType: !5, size: 32, offset: 6852096)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !70, file: !61, line: 780, baseType: !69, size: 64, offset: 6852160)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !70, file: !61, line: 781, baseType: !743, size: 640, offset: 6852224)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 640, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 20)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !70, file: !61, line: 783, baseType: !747, size: 64, offset: 6852864)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !61, line: 783, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !70, file: !61, line: 784, baseType: !750, size: 64, offset: 6852928)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !61, line: 784, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !70, file: !61, line: 786, baseType: !587, size: 64, offset: 6852992)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !70, file: !61, line: 788, baseType: !651, size: 64, offset: 6853056)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !70, file: !61, line: 789, baseType: !5, size: 32, offset: 6853120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !70, file: !61, line: 790, baseType: !5, size: 32, offset: 6853152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !70, file: !61, line: 792, baseType: !5, size: 32, offset: 6853184)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !70, file: !61, line: 794, baseType: !758, size: 64, offset: 6853248)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !589, line: 186, size: 33408, elements: !760)
!760 = !{!761, !764, !767, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !759, file: !589, line: 188, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !61, line: 836, baseType: !70)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !759, file: !589, line: 189, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !61, line: 900, baseType: !74)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !759, file: !589, line: 190, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !589, line: 182, baseType: !588)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !759, file: !589, line: 191, baseType: !768, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !759, file: !589, line: 192, baseType: !768, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !759, file: !589, line: 193, baseType: !29, size: 32, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !759, file: !589, line: 194, baseType: !29, size: 32, offset: 352)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !759, file: !589, line: 195, baseType: !29, size: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !759, file: !589, line: 196, baseType: !29, size: 32, offset: 416)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !759, file: !589, line: 197, baseType: !5, size: 32, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !759, file: !589, line: 199, baseType: !5, size: 32, offset: 480)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !759, file: !589, line: 200, baseType: !571, size: 32768, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !759, file: !589, line: 205, baseType: !5, size: 32, offset: 33280)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !759, file: !589, line: 206, baseType: !5, size: 32, offset: 33312)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !759, file: !589, line: 208, baseType: !769, size: 64, offset: 33344)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !70, file: !61, line: 795, baseType: !758, size: 64, offset: 6853312)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !70, file: !61, line: 796, baseType: !785, size: 128, offset: 6853376)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !399)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !70, file: !61, line: 800, baseType: !787, size: 72, offset: 6853504)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 72, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 9)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !70, file: !61, line: 802, baseType: !145, size: 64, offset: 6853632)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !70, file: !61, line: 803, baseType: !145, size: 64, offset: 6853696)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !70, file: !61, line: 804, baseType: !5, size: 32, offset: 6853760)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !70, file: !61, line: 807, baseType: !794, size: 64, offset: 6853824)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !61, line: 807, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !70, file: !61, line: 810, baseType: !797, size: 64, offset: 6853888)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !539, !800, !5, !5, !5, !5, !5, !5}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !70, file: !61, line: 811, baseType: !802, size: 64, offset: 6853952)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !59, !5, !5, !145, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !61, line: 85, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !61, line: 77, size: 128, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !807, file: !61, line: 79, baseType: !5, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !807, file: !61, line: 80, baseType: !5, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !807, file: !61, line: 81, baseType: !483, size: 16, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !807, file: !61, line: 82, baseType: !483, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !807, file: !61, line: 83, baseType: !483, size: 16, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !807, file: !61, line: 84, baseType: !483, size: 16, offset: 112)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !70, file: !61, line: 812, baseType: !816, size: 64, offset: 6854016)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !5, !671, !671}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !70, file: !61, line: 813, baseType: !820, size: 64, offset: 6854080)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !200, !59, !5, !5, !651}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !70, file: !61, line: 814, baseType: !820, size: 64, offset: 6854144)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !70, file: !61, line: 815, baseType: !825, size: 64, offset: 6854208)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !828, !539, !200, !59, !5, !651}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !28, line: 32, baseType: !34)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !70, file: !61, line: 816, baseType: !825, size: 64, offset: 6854272)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !70, file: !61, line: 817, baseType: !831, size: 64, offset: 6854336)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !539, !200, !59, !5, !5, !651}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !70, file: !61, line: 818, baseType: !831, size: 64, offset: 6854400)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !70, file: !61, line: 819, baseType: !836, size: 64, offset: 6854464)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !539, !800, !5, !5, !5, !5, !5, !5, !5, !5}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !70, file: !61, line: 821, baseType: !840, size: 64, offset: 6854528)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !61, line: 561, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !61, line: 544, size: 640, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !842, file: !61, line: 546, baseType: !5, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !842, file: !61, line: 547, baseType: !5, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !842, file: !61, line: 548, baseType: !5, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !842, file: !61, line: 549, baseType: !5, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !842, file: !61, line: 550, baseType: !5, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !842, file: !61, line: 551, baseType: !5, size: 32, offset: 160)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !842, file: !61, line: 552, baseType: !200, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !842, file: !61, line: 553, baseType: !200, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !842, file: !61, line: 554, baseType: !200, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !842, file: !61, line: 555, baseType: !5, size: 32, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !842, file: !61, line: 556, baseType: !5, size: 32, offset: 416)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !842, file: !61, line: 557, baseType: !5, size: 32, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !842, file: !61, line: 558, baseType: !5, size: 32, offset: 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !842, file: !61, line: 559, baseType: !5, size: 32, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !842, file: !61, line: 560, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !70, file: !61, line: 822, baseType: !5, size: 32, offset: 6854592)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !70, file: !61, line: 823, baseType: !862, size: 64, offset: 6854656)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !61, line: 823, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !70, file: !61, line: 824, baseType: !5, size: 32, offset: 6854720)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !70, file: !61, line: 825, baseType: !5, size: 32, offset: 6854752)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !70, file: !61, line: 826, baseType: !5, size: 32, offset: 6854784)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !70, file: !61, line: 827, baseType: !5, size: 32, offset: 6854816)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !70, file: !61, line: 829, baseType: !5, size: 32, offset: 6854848)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !70, file: !61, line: 830, baseType: !5, size: 32, offset: 6854880)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !70, file: !61, line: 831, baseType: !5, size: 32, offset: 6854912)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !70, file: !61, line: 835, baseType: !159, size: 64, offset: 6854976)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !66, file: !61, line: 344, baseType: !73, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !66, file: !61, line: 345, baseType: !159, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !66, file: !61, line: 346, baseType: !215, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !66, file: !61, line: 347, baseType: !5, size: 32, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !66, file: !61, line: 350, baseType: !758, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !66, file: !61, line: 353, baseType: !5, size: 32, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !66, file: !61, line: 354, baseType: !5, size: 32, offset: 416)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !66, file: !61, line: 355, baseType: !5, size: 32, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !66, file: !61, line: 356, baseType: !5, size: 32, offset: 480)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !66, file: !61, line: 357, baseType: !5, size: 32, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !66, file: !61, line: 359, baseType: !5, size: 32, offset: 544)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !66, file: !61, line: 360, baseType: !5, size: 32, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !66, file: !61, line: 361, baseType: !5, size: 32, offset: 608)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !66, file: !61, line: 365, baseType: !29, size: 32, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !66, file: !61, line: 366, baseType: !5, size: 32, offset: 672)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !66, file: !61, line: 368, baseType: !398, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !66, file: !61, line: 372, baseType: !5, size: 32, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !66, file: !61, line: 378, baseType: !29, size: 32, offset: 800)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !66, file: !61, line: 379, baseType: !5, size: 32, offset: 832)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !66, file: !61, line: 387, baseType: !29, size: 32, offset: 864)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !66, file: !61, line: 388, baseType: !29, size: 32, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !66, file: !61, line: 389, baseType: !483, size: 16, offset: 928)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !66, file: !61, line: 396, baseType: !5, size: 32, offset: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !66, file: !61, line: 397, baseType: !5, size: 32, offset: 992)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !66, file: !61, line: 400, baseType: !5, size: 32, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !66, file: !61, line: 401, baseType: !5, size: 32, offset: 1056)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !66, file: !61, line: 402, baseType: !398, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !66, file: !61, line: 406, baseType: !5, size: 32, offset: 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !66, file: !61, line: 407, baseType: !5, size: 32, offset: 1184)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !66, file: !61, line: 408, baseType: !5, size: 32, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !66, file: !61, line: 409, baseType: !5, size: 32, offset: 1248)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !66, file: !61, line: 410, baseType: !5, size: 32, offset: 1280)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !66, file: !61, line: 411, baseType: !5, size: 32, offset: 1312)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !66, file: !61, line: 412, baseType: !5, size: 32, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !66, file: !61, line: 413, baseType: !29, size: 32, offset: 1376)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !66, file: !61, line: 414, baseType: !29, size: 32, offset: 1408)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !66, file: !61, line: 415, baseType: !201, size: 8, offset: 1440)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !66, file: !61, line: 416, baseType: !609, size: 32, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !66, file: !61, line: 417, baseType: !5, size: 32, offset: 1504)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !66, file: !61, line: 418, baseType: !5, size: 32, offset: 1536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !66, file: !61, line: 419, baseType: !5, size: 32, offset: 1568)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !66, file: !61, line: 420, baseType: !5, size: 32, offset: 1600)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !66, file: !61, line: 421, baseType: !5, size: 32, offset: 1632)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !66, file: !61, line: 422, baseType: !5, size: 32, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !66, file: !61, line: 423, baseType: !5, size: 32, offset: 1696)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !66, file: !61, line: 426, baseType: !5, size: 32, offset: 1728)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !66, file: !61, line: 427, baseType: !5, size: 32, offset: 1760)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !66, file: !61, line: 428, baseType: !5, size: 32, offset: 1792)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !66, file: !61, line: 429, baseType: !5, size: 32, offset: 1824)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !66, file: !61, line: 430, baseType: !5, size: 32, offset: 1856)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !66, file: !61, line: 431, baseType: !5, size: 32, offset: 1888)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !66, file: !61, line: 432, baseType: !5, size: 32, offset: 1920)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !66, file: !61, line: 433, baseType: !5, size: 32, offset: 1952)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !66, file: !61, line: 434, baseType: !691, size: 64, offset: 1984)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !66, file: !61, line: 436, baseType: !927, size: 48, offset: 2048)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 48, elements: !185)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !66, file: !61, line: 437, baseType: !929, size: 384, offset: 2112)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 384, elements: !185)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !66, file: !61, line: 440, baseType: !931, size: 64, offset: 2496)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !61, line: 324, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !61, line: 314, size: 384, elements: !934)
!934 = !{!935, !946, !955}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !933, file: !61, line: 317, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !61, line: 47, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !61, line: 300, size: 256, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !938, file: !61, line: 303, baseType: !5, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !938, file: !61, line: 304, baseType: !5, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !938, file: !61, line: 306, baseType: !5, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !938, file: !61, line: 307, baseType: !5, size: 32, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !938, file: !61, line: 309, baseType: !200, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !938, file: !61, line: 310, baseType: !5, size: 32, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !933, file: !61, line: 318, baseType: !947, size: 256, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !61, line: 95, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 88, size: 256, elements: !949)
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !948, file: !61, line: 90, baseType: !29, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !948, file: !61, line: 91, baseType: !29, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !948, file: !61, line: 92, baseType: !5, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !948, file: !61, line: 93, baseType: !200, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !948, file: !61, line: 94, baseType: !145, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !933, file: !61, line: 320, baseType: !956, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!5, !59, !959, !982}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !61, line: 296, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !61, line: 276, size: 384, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !971, !975}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !961, file: !61, line: 278, baseType: !5, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !961, file: !61, line: 279, baseType: !5, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !961, file: !61, line: 280, baseType: !5, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !961, file: !61, line: 281, baseType: !5, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !961, file: !61, line: 282, baseType: !5, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !961, file: !61, line: 283, baseType: !29, size: 32, offset: 160)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !61, line: 284, baseType: !5, size: 32, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !961, file: !61, line: 285, baseType: !5, size: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !961, file: !61, line: 293, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !5, !5, !145, !145}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !961, file: !61, line: 295, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !59, !979, !980}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !61, line: 97, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !66, file: !61, line: 441, baseType: !984, size: 64, offset: 2560)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !61, line: 153, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 145, size: 2912, elements: !987)
!987 = !{!988, !998, !1001, !1005, !1008, !1012}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !986, file: !61, line: 147, baseType: !989, size: 1056)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 1056, elements: !996)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !61, line: 122, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 117, size: 32, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !991, file: !61, line: 119, baseType: !45, size: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !991, file: !61, line: 120, baseType: !202, size: 8, offset: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !991, file: !61, line: 121, baseType: !202, size: 8, offset: 24)
!996 = !{!102, !997}
!997 = !DISubrange(count: 11)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !986, file: !61, line: 148, baseType: !999, size: 576, offset: 1056)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 576, elements: !1000)
!1000 = !{!400, !789}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !986, file: !61, line: 149, baseType: !1002, size: 640, offset: 1632)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 640, elements: !1003)
!1003 = !{!400, !1004}
!1004 = !DISubrange(count: 10)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !986, file: !61, line: 150, baseType: !1006, size: 384, offset: 2272)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 384, elements: !1007)
!1007 = !{!400, !177}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !986, file: !61, line: 151, baseType: !1009, size: 128, offset: 2656)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 128, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 4)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !986, file: !61, line: 152, baseType: !1009, size: 128, offset: 2784)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !66, file: !61, line: 442, baseType: !1014, size: 64, offset: 2624)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !61, line: 175, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 164, size: 52768, elements: !1017)
!1017 = !{!1018, !1020, !1022, !1023, !1026, !1030, !1034, !1035, !1039}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !1016, file: !61, line: 166, baseType: !1019, size: 96)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 96, elements: !101)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !1016, file: !61, line: 167, baseType: !1021, size: 64, offset: 96)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 64, elements: !399)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !1016, file: !61, line: 168, baseType: !1009, size: 128, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !1016, file: !61, line: 169, baseType: !1024, size: 384, offset: 288)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 384, elements: !1025)
!1025 = !{!102, !1011}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !1016, file: !61, line: 170, baseType: !1027, size: 2816, offset: 672)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 2816, elements: !1028)
!1028 = !{!1029, !1011}
!1029 = !DISubrange(count: 22)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !1016, file: !61, line: 171, baseType: !1031, size: 21120, offset: 3488)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 21120, elements: !1032)
!1032 = !{!400, !1029, !1033}
!1033 = !DISubrange(count: 15)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !1016, file: !61, line: 172, baseType: !1031, size: 21120, offset: 24608)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !1016, file: !61, line: 173, baseType: !1036, size: 3520, offset: 45728)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 3520, elements: !1037)
!1037 = !{!1029, !1038}
!1038 = !DISubrange(count: 5)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !1016, file: !61, line: 174, baseType: !1036, size: 3520, offset: 49248)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !66, file: !61, line: 444, baseType: !1041, size: 6144, offset: 2688)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 6144, elements: !1042)
!1042 = !{!177, !296}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !66, file: !61, line: 446, baseType: !398, size: 64, offset: 8832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !66, file: !61, line: 447, baseType: !1045, size: 128, offset: 8896)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !399)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !66, file: !61, line: 448, baseType: !1045, size: 128, offset: 9024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !66, file: !61, line: 449, baseType: !1045, size: 128, offset: 9152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !66, file: !61, line: 452, baseType: !1045, size: 128, offset: 9280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !66, file: !61, line: 454, baseType: !5, size: 32, offset: 9408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !66, file: !61, line: 455, baseType: !5, size: 32, offset: 9440)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !66, file: !61, line: 456, baseType: !5, size: 32, offset: 9472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !66, file: !61, line: 458, baseType: !1053, size: 256, offset: 9504)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !61, line: 337, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !61, line: 327, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1054, file: !61, line: 329, baseType: !29, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1054, file: !61, line: 330, baseType: !29, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1054, file: !61, line: 331, baseType: !29, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1054, file: !61, line: 332, baseType: !29, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1054, file: !61, line: 333, baseType: !29, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1054, file: !61, line: 334, baseType: !29, size: 32, offset: 160)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1054, file: !61, line: 335, baseType: !29, size: 32, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1054, file: !61, line: 336, baseType: !29, size: 32, offset: 224)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !66, file: !61, line: 461, baseType: !483, size: 16, offset: 9760)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !66, file: !61, line: 462, baseType: !483, size: 16, offset: 9776)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !66, file: !61, line: 463, baseType: !483, size: 16, offset: 9792)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !66, file: !61, line: 465, baseType: !5, size: 32, offset: 9824)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !66, file: !61, line: 467, baseType: !5, size: 32, offset: 9856)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !66, file: !61, line: 468, baseType: !5, size: 32, offset: 9888)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !66, file: !61, line: 470, baseType: !5, size: 32, offset: 9920)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !66, file: !61, line: 471, baseType: !583, size: 64, offset: 9984)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !66, file: !61, line: 472, baseType: !583, size: 64, offset: 10048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !66, file: !61, line: 473, baseType: !345, size: 64, offset: 10112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !66, file: !61, line: 474, baseType: !345, size: 64, offset: 10176)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !66, file: !61, line: 475, baseType: !345, size: 64, offset: 10240)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !66, file: !61, line: 477, baseType: !1077, size: 512, offset: 10304)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !1078)
!1078 = !{!178}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !66, file: !61, line: 479, baseType: !539, size: 64, offset: 10816)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !66, file: !61, line: 480, baseType: !539, size: 64, offset: 10880)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !66, file: !61, line: 481, baseType: !332, size: 64, offset: 10944)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !66, file: !61, line: 482, baseType: !539, size: 64, offset: 11008)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !66, file: !61, line: 483, baseType: !539, size: 64, offset: 11072)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !66, file: !61, line: 486, baseType: !1085, size: 9216, offset: 11136)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 9216, elements: !1086)
!1086 = !{!102, !177, !1011, !1011}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !66, file: !61, line: 487, baseType: !1085, size: 9216, offset: 20352)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !66, file: !61, line: 488, baseType: !1089, size: 36864, offset: 29568)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 36864, elements: !1090)
!1090 = !{!102, !177, !193, !193}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !66, file: !61, line: 489, baseType: !1089, size: 36864, offset: 66432)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !66, file: !61, line: 491, baseType: !1093, size: 768, offset: 103296)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 768, elements: !172)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !66, file: !61, line: 494, baseType: !1095, size: 2048, offset: 104064)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !1096)
!1096 = !{!182}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !66, file: !61, line: 495, baseType: !5, size: 32, offset: 106112)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !66, file: !61, line: 496, baseType: !5, size: 32, offset: 106144)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !66, file: !61, line: 500, baseType: !46, size: 16, offset: 106176)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !66, file: !61, line: 501, baseType: !46, size: 16, offset: 106192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !66, file: !61, line: 503, baseType: !46, size: 16, offset: 106208)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !66, file: !61, line: 504, baseType: !46, size: 16, offset: 106224)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !66, file: !61, line: 505, baseType: !345, size: 64, offset: 106240)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !66, file: !61, line: 506, baseType: !345, size: 64, offset: 106304)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !66, file: !61, line: 507, baseType: !1106, size: 64, offset: 106368)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !66, file: !61, line: 508, baseType: !483, size: 16, offset: 106432)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !66, file: !61, line: 509, baseType: !483, size: 16, offset: 106448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !66, file: !61, line: 512, baseType: !5, size: 32, offset: 106464)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !66, file: !61, line: 513, baseType: !5, size: 32, offset: 106496)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !66, file: !61, line: 514, baseType: !1112, size: 64, offset: 106560)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !66, file: !61, line: 515, baseType: !1112, size: 64, offset: 106624)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !66, file: !61, line: 520, baseType: !5, size: 32, offset: 106688)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !66, file: !61, line: 521, baseType: !1116, size: 544, offset: 106720)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 544, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 17)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !66, file: !61, line: 523, baseType: !1120, size: 64, offset: 107264)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !59}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !66, file: !61, line: 524, baseType: !1124, size: 64, offset: 107328)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!5, !59, !828, !539, !651}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !66, file: !61, line: 525, baseType: !1128, size: 64, offset: 107392)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!5, !69, !73}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !66, file: !61, line: 526, baseType: !1132, size: 64, offset: 107456)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!5, !65, !5}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !66, file: !61, line: 527, baseType: !1120, size: 64, offset: 107520)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !66, file: !61, line: 528, baseType: !1120, size: 64, offset: 107584)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !66, file: !61, line: 529, baseType: !1120, size: 64, offset: 107648)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !66, file: !61, line: 530, baseType: !1139, size: 64, offset: 107712)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !65}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !66, file: !61, line: 531, baseType: !1120, size: 64, offset: 107776)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !66, file: !61, line: 532, baseType: !972, size: 64, offset: 107840)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !66, file: !61, line: 533, baseType: !972, size: 64, offset: 107904)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !66, file: !61, line: 534, baseType: !1120, size: 64, offset: 107968)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !66, file: !61, line: 535, baseType: !5, size: 32, offset: 108032)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !66, file: !61, line: 536, baseType: !59, size: 64, offset: 108096)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !66, file: !61, line: 537, baseType: !651, size: 64, offset: 108160)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !66, file: !61, line: 538, baseType: !332, size: 64, offset: 108224)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !66, file: !61, line: 539, baseType: !438, size: 64, offset: 108288)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !66, file: !61, line: 540, baseType: !355, size: 64, offset: 108352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !66, file: !61, line: 541, baseType: !1153, size: 768, offset: 108416)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 768, elements: !176)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !62, file: !61, line: 200, baseType: !69, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !62, file: !61, line: 201, baseType: !73, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !62, file: !61, line: 202, baseType: !5, size: 32, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !62, file: !61, line: 203, baseType: !1158, size: 32, offset: 224)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !61, line: 112, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 108, size: 32, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1159, file: !61, line: 110, baseType: !483, size: 16)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1159, file: !61, line: 111, baseType: !483, size: 16, offset: 16)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !62, file: !61, line: 204, baseType: !5, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !62, file: !61, line: 205, baseType: !5, size: 32, offset: 288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !62, file: !61, line: 206, baseType: !5, size: 32, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !62, file: !61, line: 207, baseType: !5, size: 32, offset: 352)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !62, file: !61, line: 208, baseType: !5, size: 32, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !62, file: !61, line: 209, baseType: !5, size: 32, offset: 416)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !62, file: !61, line: 210, baseType: !5, size: 32, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !62, file: !61, line: 212, baseType: !5, size: 32, offset: 480)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !62, file: !61, line: 213, baseType: !5, size: 32, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !62, file: !61, line: 215, baseType: !5, size: 32, offset: 544)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !62, file: !61, line: 216, baseType: !398, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !62, file: !61, line: 217, baseType: !100, size: 96, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !62, file: !61, line: 218, baseType: !5, size: 32, offset: 736)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !62, file: !61, line: 219, baseType: !5, size: 32, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !62, file: !61, line: 220, baseType: !5, size: 32, offset: 800)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !62, file: !61, line: 221, baseType: !5, size: 32, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !62, file: !61, line: 223, baseType: !483, size: 16, offset: 864)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !62, file: !61, line: 224, baseType: !356, size: 8, offset: 880)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !62, file: !61, line: 225, baseType: !356, size: 8, offset: 888)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !62, file: !61, line: 226, baseType: !483, size: 16, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !62, file: !61, line: 227, baseType: !483, size: 16, offset: 912)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !62, file: !61, line: 229, baseType: !1185, size: 64, offset: 960)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !62, file: !61, line: 230, baseType: !1185, size: 64, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !62, file: !61, line: 232, baseType: !1185, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !62, file: !61, line: 233, baseType: !1185, size: 64, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !62, file: !61, line: 236, baseType: !483, size: 16, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !62, file: !61, line: 237, baseType: !1191, size: 1024, offset: 1232)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1024, elements: !1192)
!1192 = !{!400, !1011, !1011, !400}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !62, file: !61, line: 239, baseType: !5, size: 32, offset: 2272)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !62, file: !61, line: 240, baseType: !1195, size: 192, offset: 2304)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 192, elements: !101)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !62, file: !61, line: 241, baseType: !1195, size: 192, offset: 2496)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !62, file: !61, line: 242, baseType: !1195, size: 192, offset: 2688)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !62, file: !61, line: 244, baseType: !5, size: 32, offset: 2880)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !62, file: !61, line: 245, baseType: !1200, size: 32, offset: 2912)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 32, elements: !1010)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !62, file: !61, line: 246, baseType: !1200, size: 32, offset: 2944)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !62, file: !61, line: 247, baseType: !356, size: 8, offset: 2976)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !62, file: !61, line: 248, baseType: !356, size: 8, offset: 2984)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !62, file: !61, line: 249, baseType: !356, size: 8, offset: 2992)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !62, file: !61, line: 250, baseType: !483, size: 16, offset: 3008)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !62, file: !61, line: 251, baseType: !483, size: 16, offset: 3024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !62, file: !61, line: 252, baseType: !483, size: 16, offset: 3040)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !62, file: !61, line: 254, baseType: !5, size: 32, offset: 3072)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !62, file: !61, line: 256, baseType: !5, size: 32, offset: 3104)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !62, file: !61, line: 256, baseType: !5, size: 32, offset: 3136)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !62, file: !61, line: 256, baseType: !5, size: 32, offset: 3168)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !62, file: !61, line: 256, baseType: !5, size: 32, offset: 3200)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !62, file: !61, line: 257, baseType: !5, size: 32, offset: 3232)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !62, file: !61, line: 257, baseType: !5, size: 32, offset: 3264)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !62, file: !61, line: 257, baseType: !5, size: 32, offset: 3296)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !62, file: !61, line: 257, baseType: !5, size: 32, offset: 3328)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !62, file: !61, line: 259, baseType: !5, size: 32, offset: 3360)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !62, file: !61, line: 260, baseType: !5, size: 32, offset: 3392)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !62, file: !61, line: 262, baseType: !1220, size: 64, offset: 3456)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1185, !828, !5, !5}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !62, file: !61, line: 263, baseType: !1220, size: 64, offset: 3520)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !62, file: !61, line: 265, baseType: !1225, size: 64, offset: 3584)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !1185, !805, !1228, !483, !645, !5, !5, !5, !5, !5}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !62, file: !61, line: 268, baseType: !1230, size: 64, offset: 3648)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!5, !1185, !980, !5}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !62, file: !61, line: 269, baseType: !1234, size: 64, offset: 3712)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!356, !1185, !979, !982, !356, !5}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !62, file: !61, line: 272, baseType: !201, size: 8, offset: 3776)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244}
!1239 = !DILocalVariable(name: "currMB", arg: 1, scope: !56, file: !1, line: 71, type: !59)
!1240 = !DILocalVariable(name: "pl", arg: 2, scope: !56, file: !1, line: 72, type: !828)
!1241 = !DILocalVariable(name: "ioff", arg: 3, scope: !56, file: !1, line: 73, type: !5)
!1242 = !DILocalVariable(name: "joff", arg: 4, scope: !56, file: !1, line: 74, type: !5)
!1243 = !DILocalVariable(name: "currSlice", scope: !56, file: !1, line: 76, type: !427)
!1244 = !DILocalVariable(name: "m7", scope: !56, file: !1, line: 78, type: !332)
!1245 = !DILocation(line: 0, scope: !56)
!1246 = !DILocation(line: 76, column: 30, scope: !56)
!1247 = !DILocation(line: 78, column: 32, scope: !56)
!1248 = !DILocation(line: 78, column: 21, scope: !56)
!1249 = !DILocation(line: 80, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !56, file: !1, line: 80, column: 7)
!1251 = !DILocation(line: 80, column: 27, scope: !1250)
!1252 = !DILocation(line: 80, column: 7, scope: !56)
!1253 = !DILocation(line: 82, column: 24, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 81, column: 3)
!1255 = !DILocation(line: 82, column: 46, scope: !1254)
!1256 = !DILocation(line: 82, column: 35, scope: !1254)
!1257 = !DILocation(line: 82, column: 76, scope: !1254)
!1258 = !DILocation(line: 82, column: 65, scope: !1254)
!1259 = !DILocation(line: 82, column: 103, scope: !1254)
!1260 = !DILocation(line: 82, column: 110, scope: !1254)
!1261 = !DILocation(line: 82, column: 95, scope: !1254)
!1262 = !DILocalVariable(name: "m7", arg: 1, scope: !1263, file: !1, line: 52, type: !332)
!1263 = distinct !DISubprogram(name: "recon8x8_lossless", scope: !1, file: !1, line: 52, type: !1264, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !332, !539, !539, !5, !5}
!1266 = !{!1262, !1267, !1268, !1269, !1270, !1271, !1272}
!1267 = !DILocalVariable(name: "mb_rec", arg: 2, scope: !1263, file: !1, line: 52, type: !539)
!1268 = !DILocalVariable(name: "mpr", arg: 3, scope: !1263, file: !1, line: 52, type: !539)
!1269 = !DILocalVariable(name: "max_imgpel_value", arg: 4, scope: !1263, file: !1, line: 52, type: !5)
!1270 = !DILocalVariable(name: "ioff", arg: 5, scope: !1263, file: !1, line: 52, type: !5)
!1271 = !DILocalVariable(name: "i", scope: !1263, file: !1, line: 54, type: !5)
!1272 = !DILocalVariable(name: "j", scope: !1263, file: !1, line: 54, type: !5)
!1273 = !DILocation(line: 0, scope: !1263, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 82, column: 5, scope: !1254)
!1275 = !DILocation(line: 55, column: 3, scope: !1276, inlinedAt: !1274)
!1276 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 55, column: 3)
!1277 = !DILocation(line: 58, column: 58, scope: !1278, inlinedAt: !1274)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 57, column: 5)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 57, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 56, column: 3)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 55, column: 3)
!1282 = !DILocation(line: 58, column: 57, scope: !1278, inlinedAt: !1274)
!1283 = !DILocation(line: 58, column: 75, scope: !1278, inlinedAt: !1274)
!1284 = !DILocation(line: 58, column: 74, scope: !1278, inlinedAt: !1274)
!1285 = !DILocation(line: 58, column: 68, scope: !1278, inlinedAt: !1274)
!1286 = !DILocation(line: 58, column: 66, scope: !1278, inlinedAt: !1274)
!1287 = !DILocalVariable(name: "high", arg: 1, scope: !1288, file: !1289, line: 190, type: !5)
!1288 = distinct !DISubprogram(name: "iClip1", scope: !1289, file: !1289, line: 190, type: !1290, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1292)
!1289 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!5, !5, !5}
!1292 = !{!1287, !1293}
!1293 = !DILocalVariable(name: "x", arg: 2, scope: !1288, file: !1289, line: 190, type: !5)
!1294 = !DILocation(line: 0, scope: !1288, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 58, column: 31, scope: !1278, inlinedAt: !1274)
!1296 = !DILocalVariable(name: "a", arg: 1, scope: !1297, file: !1289, line: 47, type: !5)
!1297 = distinct !DISubprogram(name: "imax", scope: !1289, file: !1289, line: 47, type: !1290, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1298)
!1298 = !{!1296, !1299}
!1299 = !DILocalVariable(name: "b", arg: 2, scope: !1297, file: !1289, line: 47, type: !5)
!1300 = !DILocation(line: 0, scope: !1297, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1295)
!1302 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1301)
!1303 = !DILocalVariable(name: "a", arg: 1, scope: !1304, file: !1289, line: 42, type: !5)
!1304 = distinct !DISubprogram(name: "imin", scope: !1289, file: !1289, line: 42, type: !1290, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1305)
!1305 = !{!1303, !1306}
!1306 = !DILocalVariable(name: "b", arg: 2, scope: !1304, file: !1289, line: 42, type: !5)
!1307 = !DILocation(line: 0, scope: !1304, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1295)
!1309 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1308)
!1310 = !DILocation(line: 58, column: 22, scope: !1278, inlinedAt: !1274)
!1311 = !DILocation(line: 58, column: 8, scope: !1278, inlinedAt: !1274)
!1312 = !DILocation(line: 58, column: 7, scope: !1278, inlinedAt: !1274)
!1313 = !DILocation(line: 58, column: 20, scope: !1278, inlinedAt: !1274)
!1314 = !DILocation(line: 59, column: 11, scope: !1280, inlinedAt: !1274)
!1315 = !DILocation(line: 60, column: 7, scope: !1280, inlinedAt: !1274)
!1316 = !DILocation(line: 61, column: 8, scope: !1280, inlinedAt: !1274)
!1317 = !DILocation(line: 55, column: 23, scope: !1281, inlinedAt: !1274)
!1318 = !DILocation(line: 55, column: 17, scope: !1281, inlinedAt: !1274)
!1319 = distinct !{!1319, !1275, !1320}
!1320 = !DILocation(line: 62, column: 3, scope: !1276, inlinedAt: !1274)
!1321 = !DILocation(line: 86, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 85, column: 3)
!1323 = !DILocation(line: 87, column: 17, scope: !1322)
!1324 = !DILocation(line: 87, column: 39, scope: !1322)
!1325 = !DILocation(line: 87, column: 28, scope: !1322)
!1326 = !DILocation(line: 87, column: 69, scope: !1322)
!1327 = !DILocation(line: 87, column: 58, scope: !1322)
!1328 = !DILocation(line: 87, column: 96, scope: !1322)
!1329 = !DILocation(line: 87, column: 103, scope: !1322)
!1330 = !DILocation(line: 87, column: 88, scope: !1322)
!1331 = !DILocalVariable(name: "m7", arg: 1, scope: !1332, file: !1, line: 28, type: !332)
!1332 = distinct !DISubprogram(name: "recon8x8", scope: !1, file: !1, line: 28, type: !1264, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1333)
!1333 = !{!1331, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1334 = !DILocalVariable(name: "mb_rec", arg: 2, scope: !1332, file: !1, line: 28, type: !539)
!1335 = !DILocalVariable(name: "mpr", arg: 3, scope: !1332, file: !1, line: 28, type: !539)
!1336 = !DILocalVariable(name: "max_imgpel_value", arg: 4, scope: !1332, file: !1, line: 28, type: !5)
!1337 = !DILocalVariable(name: "ioff", arg: 5, scope: !1332, file: !1, line: 28, type: !5)
!1338 = !DILocalVariable(name: "j", scope: !1332, file: !1, line: 30, type: !5)
!1339 = !DILocalVariable(name: "m_tr", scope: !1332, file: !1, line: 31, type: !145)
!1340 = !DILocalVariable(name: "m_rec", scope: !1332, file: !1, line: 32, type: !540)
!1341 = !DILocalVariable(name: "m_prd", scope: !1332, file: !1, line: 33, type: !540)
!1342 = !DILocation(line: 0, scope: !1332, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 87, column: 5, scope: !1322)
!1344 = !DILocation(line: 35, column: 3, scope: !1345, inlinedAt: !1343)
!1345 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 35, column: 3)
!1346 = !DILocation(line: 37, column: 16, scope: !1347, inlinedAt: !1343)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 36, column: 3)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 35, column: 3)
!1349 = !DILocation(line: 37, column: 13, scope: !1347, inlinedAt: !1343)
!1350 = !DILocation(line: 37, column: 20, scope: !1347, inlinedAt: !1343)
!1351 = !DILocation(line: 38, column: 21, scope: !1347, inlinedAt: !1343)
!1352 = !DILocation(line: 38, column: 14, scope: !1347, inlinedAt: !1343)
!1353 = !DILocation(line: 38, column: 25, scope: !1347, inlinedAt: !1343)
!1354 = !DILocation(line: 39, column: 18, scope: !1347, inlinedAt: !1343)
!1355 = !DILocation(line: 39, column: 14, scope: !1347, inlinedAt: !1343)
!1356 = !DILocation(line: 39, column: 22, scope: !1347, inlinedAt: !1343)
!1357 = !DILocation(line: 41, column: 57, scope: !1347, inlinedAt: !1343)
!1358 = !DILocation(line: 41, column: 51, scope: !1347, inlinedAt: !1343)
!1359 = !DILocation(line: 41, column: 50, scope: !1347, inlinedAt: !1343)
!1360 = !DILocation(line: 41, column: 82, scope: !1347, inlinedAt: !1343)
!1361 = !DILocation(line: 41, column: 77, scope: !1347, inlinedAt: !1343)
!1362 = !DILocalVariable(name: "x", arg: 1, scope: !1363, file: !1289, line: 175, type: !5)
!1363 = distinct !DISubprogram(name: "rshift_rnd_sf", scope: !1289, file: !1289, line: 175, type: !1290, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1364)
!1364 = !{!1362, !1365}
!1365 = !DILocalVariable(name: "a", arg: 2, scope: !1363, file: !1289, line: 175, type: !5)
!1366 = !DILocation(line: 0, scope: !1363, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 41, column: 63, scope: !1347, inlinedAt: !1343)
!1368 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1367)
!1369 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1367)
!1370 = !DILocation(line: 41, column: 61, scope: !1347, inlinedAt: !1343)
!1371 = !DILocation(line: 0, scope: !1288, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 41, column: 25, scope: !1347, inlinedAt: !1343)
!1373 = !DILocation(line: 0, scope: !1297, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1372)
!1375 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1374)
!1376 = !DILocation(line: 0, scope: !1304, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1372)
!1378 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1377)
!1379 = !DILocation(line: 41, column: 16, scope: !1347, inlinedAt: !1343)
!1380 = !DILocation(line: 41, column: 11, scope: !1347, inlinedAt: !1343)
!1381 = !DILocation(line: 41, column: 14, scope: !1347, inlinedAt: !1343)
!1382 = !DILocation(line: 42, column: 57, scope: !1347, inlinedAt: !1343)
!1383 = !DILocation(line: 42, column: 51, scope: !1347, inlinedAt: !1343)
!1384 = !DILocation(line: 42, column: 50, scope: !1347, inlinedAt: !1343)
!1385 = !DILocation(line: 42, column: 82, scope: !1347, inlinedAt: !1343)
!1386 = !DILocation(line: 42, column: 77, scope: !1347, inlinedAt: !1343)
!1387 = !DILocation(line: 0, scope: !1363, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 42, column: 63, scope: !1347, inlinedAt: !1343)
!1389 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1388)
!1390 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1388)
!1391 = !DILocation(line: 42, column: 61, scope: !1347, inlinedAt: !1343)
!1392 = !DILocation(line: 0, scope: !1288, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 42, column: 25, scope: !1347, inlinedAt: !1343)
!1394 = !DILocation(line: 0, scope: !1297, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1393)
!1396 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1395)
!1397 = !DILocation(line: 0, scope: !1304, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1393)
!1399 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1398)
!1400 = !DILocation(line: 42, column: 16, scope: !1347, inlinedAt: !1343)
!1401 = !DILocation(line: 42, column: 11, scope: !1347, inlinedAt: !1343)
!1402 = !DILocation(line: 42, column: 14, scope: !1347, inlinedAt: !1343)
!1403 = !DILocation(line: 43, column: 57, scope: !1347, inlinedAt: !1343)
!1404 = !DILocation(line: 43, column: 51, scope: !1347, inlinedAt: !1343)
!1405 = !DILocation(line: 43, column: 50, scope: !1347, inlinedAt: !1343)
!1406 = !DILocation(line: 43, column: 82, scope: !1347, inlinedAt: !1343)
!1407 = !DILocation(line: 43, column: 77, scope: !1347, inlinedAt: !1343)
!1408 = !DILocation(line: 0, scope: !1363, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 43, column: 63, scope: !1347, inlinedAt: !1343)
!1410 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1409)
!1411 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1409)
!1412 = !DILocation(line: 43, column: 61, scope: !1347, inlinedAt: !1343)
!1413 = !DILocation(line: 0, scope: !1288, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 43, column: 25, scope: !1347, inlinedAt: !1343)
!1415 = !DILocation(line: 0, scope: !1297, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1414)
!1417 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1416)
!1418 = !DILocation(line: 0, scope: !1304, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1414)
!1420 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1419)
!1421 = !DILocation(line: 43, column: 16, scope: !1347, inlinedAt: !1343)
!1422 = !DILocation(line: 43, column: 11, scope: !1347, inlinedAt: !1343)
!1423 = !DILocation(line: 43, column: 14, scope: !1347, inlinedAt: !1343)
!1424 = !DILocation(line: 44, column: 57, scope: !1347, inlinedAt: !1343)
!1425 = !DILocation(line: 44, column: 51, scope: !1347, inlinedAt: !1343)
!1426 = !DILocation(line: 44, column: 50, scope: !1347, inlinedAt: !1343)
!1427 = !DILocation(line: 44, column: 82, scope: !1347, inlinedAt: !1343)
!1428 = !DILocation(line: 44, column: 77, scope: !1347, inlinedAt: !1343)
!1429 = !DILocation(line: 0, scope: !1363, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 44, column: 63, scope: !1347, inlinedAt: !1343)
!1431 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1430)
!1432 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1430)
!1433 = !DILocation(line: 44, column: 61, scope: !1347, inlinedAt: !1343)
!1434 = !DILocation(line: 0, scope: !1288, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 44, column: 25, scope: !1347, inlinedAt: !1343)
!1436 = !DILocation(line: 0, scope: !1297, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1435)
!1438 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1437)
!1439 = !DILocation(line: 0, scope: !1304, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1435)
!1441 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1440)
!1442 = !DILocation(line: 44, column: 16, scope: !1347, inlinedAt: !1343)
!1443 = !DILocation(line: 44, column: 11, scope: !1347, inlinedAt: !1343)
!1444 = !DILocation(line: 44, column: 14, scope: !1347, inlinedAt: !1343)
!1445 = !DILocation(line: 45, column: 57, scope: !1347, inlinedAt: !1343)
!1446 = !DILocation(line: 45, column: 51, scope: !1347, inlinedAt: !1343)
!1447 = !DILocation(line: 45, column: 50, scope: !1347, inlinedAt: !1343)
!1448 = !DILocation(line: 45, column: 82, scope: !1347, inlinedAt: !1343)
!1449 = !DILocation(line: 45, column: 77, scope: !1347, inlinedAt: !1343)
!1450 = !DILocation(line: 0, scope: !1363, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 45, column: 63, scope: !1347, inlinedAt: !1343)
!1452 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1451)
!1453 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1451)
!1454 = !DILocation(line: 45, column: 61, scope: !1347, inlinedAt: !1343)
!1455 = !DILocation(line: 0, scope: !1288, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 45, column: 25, scope: !1347, inlinedAt: !1343)
!1457 = !DILocation(line: 0, scope: !1297, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1456)
!1459 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1458)
!1460 = !DILocation(line: 0, scope: !1304, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1456)
!1462 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1461)
!1463 = !DILocation(line: 45, column: 16, scope: !1347, inlinedAt: !1343)
!1464 = !DILocation(line: 45, column: 11, scope: !1347, inlinedAt: !1343)
!1465 = !DILocation(line: 45, column: 14, scope: !1347, inlinedAt: !1343)
!1466 = !DILocation(line: 46, column: 57, scope: !1347, inlinedAt: !1343)
!1467 = !DILocation(line: 46, column: 51, scope: !1347, inlinedAt: !1343)
!1468 = !DILocation(line: 46, column: 50, scope: !1347, inlinedAt: !1343)
!1469 = !DILocation(line: 46, column: 82, scope: !1347, inlinedAt: !1343)
!1470 = !DILocation(line: 46, column: 77, scope: !1347, inlinedAt: !1343)
!1471 = !DILocation(line: 0, scope: !1363, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 46, column: 63, scope: !1347, inlinedAt: !1343)
!1473 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1472)
!1474 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1472)
!1475 = !DILocation(line: 46, column: 61, scope: !1347, inlinedAt: !1343)
!1476 = !DILocation(line: 0, scope: !1288, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 46, column: 25, scope: !1347, inlinedAt: !1343)
!1478 = !DILocation(line: 0, scope: !1297, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1477)
!1480 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1479)
!1481 = !DILocation(line: 0, scope: !1304, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1477)
!1483 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1482)
!1484 = !DILocation(line: 46, column: 16, scope: !1347, inlinedAt: !1343)
!1485 = !DILocation(line: 46, column: 11, scope: !1347, inlinedAt: !1343)
!1486 = !DILocation(line: 46, column: 14, scope: !1347, inlinedAt: !1343)
!1487 = !DILocation(line: 47, column: 57, scope: !1347, inlinedAt: !1343)
!1488 = !DILocation(line: 47, column: 51, scope: !1347, inlinedAt: !1343)
!1489 = !DILocation(line: 47, column: 50, scope: !1347, inlinedAt: !1343)
!1490 = !DILocation(line: 47, column: 82, scope: !1347, inlinedAt: !1343)
!1491 = !DILocation(line: 47, column: 77, scope: !1347, inlinedAt: !1343)
!1492 = !DILocation(line: 0, scope: !1363, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 47, column: 63, scope: !1347, inlinedAt: !1343)
!1494 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1493)
!1495 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1493)
!1496 = !DILocation(line: 47, column: 61, scope: !1347, inlinedAt: !1343)
!1497 = !DILocation(line: 0, scope: !1288, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 47, column: 25, scope: !1347, inlinedAt: !1343)
!1499 = !DILocation(line: 0, scope: !1297, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1498)
!1501 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1500)
!1502 = !DILocation(line: 0, scope: !1304, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1498)
!1504 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1503)
!1505 = !DILocation(line: 47, column: 16, scope: !1347, inlinedAt: !1343)
!1506 = !DILocation(line: 47, column: 11, scope: !1347, inlinedAt: !1343)
!1507 = !DILocation(line: 47, column: 14, scope: !1347, inlinedAt: !1343)
!1508 = !DILocation(line: 48, column: 51, scope: !1347, inlinedAt: !1343)
!1509 = !DILocation(line: 48, column: 50, scope: !1347, inlinedAt: !1343)
!1510 = !DILocation(line: 48, column: 77, scope: !1347, inlinedAt: !1343)
!1511 = !DILocation(line: 0, scope: !1363, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 48, column: 63, scope: !1347, inlinedAt: !1343)
!1513 = !DILocation(line: 177, column: 14, scope: !1363, inlinedAt: !1512)
!1514 = !DILocation(line: 177, column: 31, scope: !1363, inlinedAt: !1512)
!1515 = !DILocation(line: 48, column: 61, scope: !1347, inlinedAt: !1343)
!1516 = !DILocation(line: 0, scope: !1288, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 48, column: 25, scope: !1347, inlinedAt: !1343)
!1518 = !DILocation(line: 0, scope: !1297, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 192, column: 7, scope: !1288, inlinedAt: !1517)
!1520 = !DILocation(line: 49, column: 10, scope: !1297, inlinedAt: !1519)
!1521 = !DILocation(line: 0, scope: !1304, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 193, column: 7, scope: !1288, inlinedAt: !1517)
!1523 = !DILocation(line: 44, column: 10, scope: !1304, inlinedAt: !1522)
!1524 = !DILocation(line: 48, column: 16, scope: !1347, inlinedAt: !1343)
!1525 = !DILocation(line: 48, column: 14, scope: !1347, inlinedAt: !1343)
!1526 = !DILocation(line: 35, column: 23, scope: !1348, inlinedAt: !1343)
!1527 = !DILocation(line: 35, column: 17, scope: !1348, inlinedAt: !1343)
!1528 = distinct !{!1528, !1344, !1529}
!1529 = !DILocation(line: 49, column: 3, scope: !1345, inlinedAt: !1343)
!1530 = !DILocation(line: 89, column: 1, scope: !56)
!1531 = !DISubprogram(name: "inverse8x8", scope: !1532, file: !1532, line: 24, type: !1533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1532 = !DIFile(filename: "ldecod_src/inc/transform.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "46d18ead43a2997b55386ae437d91f9a")
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !332, !332, !5, !5}
