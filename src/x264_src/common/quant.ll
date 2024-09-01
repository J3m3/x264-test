; ModuleID = 'x264_src/common/quant.c'
source_filename = "x264_src/common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16, !dbg !0
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16, !dbg !57

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readnone %h, i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 !dbg !74 {
entry:
    #dbg_value(ptr %h, !1367, !DIExpression(), !1370)
    #dbg_value(i32 %cpu, !1368, !DIExpression(), !1370)
    #dbg_value(ptr %pf, !1369, !DIExpression(), !1370)
  store ptr @quant_8x8, ptr %pf, align 8, !dbg !1371
  %quant_4x4 = getelementptr inbounds i8, ptr %pf, i64 8, !dbg !1372
  store ptr @quant_4x4, ptr %quant_4x4, align 8, !dbg !1373
  %quant_4x4_dc = getelementptr inbounds i8, ptr %pf, i64 16, !dbg !1374
  store ptr @quant_4x4_dc, ptr %quant_4x4_dc, align 8, !dbg !1375
  %quant_2x2_dc = getelementptr inbounds i8, ptr %pf, i64 24, !dbg !1376
  store ptr @quant_2x2_dc, ptr %quant_2x2_dc, align 8, !dbg !1377
  %dequant_4x4 = getelementptr inbounds i8, ptr %pf, i64 40, !dbg !1378
  store ptr @dequant_4x4, ptr %dequant_4x4, align 8, !dbg !1379
  %dequant_4x4_dc = getelementptr inbounds i8, ptr %pf, i64 48, !dbg !1380
  store ptr @dequant_4x4_dc, ptr %dequant_4x4_dc, align 8, !dbg !1381
  %dequant_8x8 = getelementptr inbounds i8, ptr %pf, i64 32, !dbg !1382
  store ptr @dequant_8x8, ptr %dequant_8x8, align 8, !dbg !1383
  %denoise_dct = getelementptr inbounds i8, ptr %pf, i64 56, !dbg !1384
  store ptr @x264_denoise_dct, ptr %denoise_dct, align 8, !dbg !1385
  %decimate_score15 = getelementptr inbounds i8, ptr %pf, i64 64, !dbg !1386
  store ptr @x264_decimate_score15, ptr %decimate_score15, align 8, !dbg !1387
  %decimate_score16 = getelementptr inbounds i8, ptr %pf, i64 72, !dbg !1388
  store ptr @x264_decimate_score16, ptr %decimate_score16, align 8, !dbg !1389
  %decimate_score64 = getelementptr inbounds i8, ptr %pf, i64 80, !dbg !1390
  store ptr @x264_decimate_score64, ptr %decimate_score64, align 8, !dbg !1391
  %coeff_last = getelementptr inbounds i8, ptr %pf, i64 88, !dbg !1392
  %arrayidx = getelementptr inbounds i8, ptr %pf, i64 112, !dbg !1393
  store ptr @x264_coeff_last4, ptr %arrayidx, align 8, !dbg !1394
  %arrayidx2 = getelementptr inbounds i8, ptr %pf, i64 96, !dbg !1395
  store ptr @x264_coeff_last15, ptr %arrayidx2, align 8, !dbg !1396
  %arrayidx4 = getelementptr inbounds i8, ptr %pf, i64 104, !dbg !1397
  store ptr @x264_coeff_last16, ptr %arrayidx4, align 8, !dbg !1398
  %arrayidx6 = getelementptr inbounds i8, ptr %pf, i64 128, !dbg !1399
  store ptr @x264_coeff_last64, ptr %arrayidx6, align 8, !dbg !1400
  %coeff_level_run = getelementptr inbounds i8, ptr %pf, i64 136, !dbg !1401
  %arrayidx7 = getelementptr inbounds i8, ptr %pf, i64 160, !dbg !1402
  store ptr @x264_coeff_level_run4, ptr %arrayidx7, align 8, !dbg !1403
  %arrayidx9 = getelementptr inbounds i8, ptr %pf, i64 144, !dbg !1404
  store ptr @x264_coeff_level_run15, ptr %arrayidx9, align 8, !dbg !1405
  %arrayidx11 = getelementptr inbounds i8, ptr %pf, i64 152, !dbg !1406
  store ptr @x264_coeff_level_run16, ptr %arrayidx11, align 8, !dbg !1407
  store ptr @x264_coeff_last16, ptr %coeff_last, align 8, !dbg !1408
  %arrayidx19 = getelementptr inbounds i8, ptr %pf, i64 120, !dbg !1409
  store ptr @x264_coeff_last15, ptr %arrayidx19, align 8, !dbg !1410
  store ptr @x264_coeff_level_run16, ptr %coeff_level_run, align 8, !dbg !1411
  %arrayidx27 = getelementptr inbounds i8, ptr %pf, i64 168, !dbg !1412
  store ptr @x264_coeff_level_run15, ptr %arrayidx27, align 8, !dbg !1413
  ret void, !dbg !1414
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 !dbg !1415 {
entry:
    #dbg_value(ptr %dct, !1417, !DIExpression(), !1423)
    #dbg_value(ptr %mf, !1418, !DIExpression(), !1423)
    #dbg_value(ptr %bias, !1419, !DIExpression(), !1423)
    #dbg_value(i32 0, !1420, !DIExpression(), !1423)
    #dbg_value(i32 0, !1421, !DIExpression(), !1424)
  %scevgep = getelementptr i8, ptr %dct, i64 128, !dbg !1425
  %scevgep56 = getelementptr i8, ptr %bias, i64 128, !dbg !1425
  %scevgep57 = getelementptr i8, ptr %mf, i64 128, !dbg !1425
  %bound0 = icmp ugt ptr %scevgep56, %dct, !dbg !1425
  %bound1 = icmp ugt ptr %scevgep, %bias, !dbg !1425
  %found.conflict = and i1 %bound0, %bound1, !dbg !1425
  %bound058 = icmp ugt ptr %scevgep57, %dct, !dbg !1425
  %bound159 = icmp ugt ptr %scevgep, %mf, !dbg !1425
  %found.conflict60 = and i1 %bound058, %bound159, !dbg !1425
  %conflict.rdx = or i1 %found.conflict, %found.conflict60, !dbg !1425
  br i1 %conflict.rdx, label %for.body, label %vector.body, !dbg !1425

vector.body:                                      ; preds = %entry, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %entry ], !dbg !1426
  %vec.phi = phi <4 x i32> [ %68, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi61 = phi <4 x i32> [ %69, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi62 = phi <4 x i32> [ %70, %vector.body ], [ zeroinitializer, %entry ]
  %vec.phi63 = phi <4 x i32> [ %71, %vector.body ], [ zeroinitializer, %entry ]
  %0 = getelementptr inbounds i16, ptr %dct, i64 %index, !dbg !1428
  %1 = getelementptr inbounds i8, ptr %0, i64 8, !dbg !1428
  %2 = getelementptr inbounds i8, ptr %0, i64 16, !dbg !1428
  %3 = getelementptr inbounds i8, ptr %0, i64 24, !dbg !1428
  %wide.load = load <4 x i16>, ptr %0, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  %wide.load64 = load <4 x i16>, ptr %1, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  %wide.load65 = load <4 x i16>, ptr %2, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  %wide.load66 = load <4 x i16>, ptr %3, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  %4 = sext <4 x i16> %wide.load to <4 x i32>, !dbg !1428
  %5 = sext <4 x i16> %wide.load64 to <4 x i32>, !dbg !1428
  %6 = sext <4 x i16> %wide.load65 to <4 x i32>, !dbg !1428
  %7 = sext <4 x i16> %wide.load66 to <4 x i32>, !dbg !1428
  %8 = icmp sgt <4 x i16> %wide.load, zeroinitializer, !dbg !1428
  %9 = icmp sgt <4 x i16> %wide.load64, zeroinitializer, !dbg !1428
  %10 = icmp sgt <4 x i16> %wide.load65, zeroinitializer, !dbg !1428
  %11 = icmp sgt <4 x i16> %wide.load66, zeroinitializer, !dbg !1428
  %12 = getelementptr inbounds i16, ptr %bias, i64 %index, !dbg !1428
  %13 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !1428
  %14 = getelementptr inbounds i8, ptr %12, i64 16, !dbg !1428
  %15 = getelementptr inbounds i8, ptr %12, i64 24, !dbg !1428
  %wide.load67 = load <4 x i16>, ptr %12, align 2, !dbg !1428, !alias.scope !1437
  %wide.load68 = load <4 x i16>, ptr %13, align 2, !dbg !1428, !alias.scope !1437
  %wide.load69 = load <4 x i16>, ptr %14, align 2, !dbg !1428, !alias.scope !1437
  %wide.load70 = load <4 x i16>, ptr %15, align 2, !dbg !1428, !alias.scope !1437
  %16 = zext <4 x i16> %wide.load67 to <4 x i32>, !dbg !1428
  %17 = zext <4 x i16> %wide.load68 to <4 x i32>, !dbg !1428
  %18 = zext <4 x i16> %wide.load69 to <4 x i32>, !dbg !1428
  %19 = zext <4 x i16> %wide.load70 to <4 x i32>, !dbg !1428
  %20 = getelementptr inbounds i16, ptr %mf, i64 %index, !dbg !1428
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !1428
  %22 = getelementptr inbounds i8, ptr %20, i64 16, !dbg !1428
  %23 = getelementptr inbounds i8, ptr %20, i64 24, !dbg !1428
  %wide.load71 = load <4 x i16>, ptr %20, align 2, !dbg !1428, !alias.scope !1438
  %wide.load72 = load <4 x i16>, ptr %21, align 2, !dbg !1428, !alias.scope !1438
  %wide.load73 = load <4 x i16>, ptr %22, align 2, !dbg !1428, !alias.scope !1438
  %wide.load74 = load <4 x i16>, ptr %23, align 2, !dbg !1428, !alias.scope !1438
  %24 = zext <4 x i16> %wide.load71 to <4 x i32>, !dbg !1428
  %25 = zext <4 x i16> %wide.load72 to <4 x i32>, !dbg !1428
  %26 = zext <4 x i16> %wide.load73 to <4 x i32>, !dbg !1428
  %27 = zext <4 x i16> %wide.load74 to <4 x i32>, !dbg !1428
  %28 = sub nsw <4 x i32> %16, %4, !dbg !1428
  %29 = sub nsw <4 x i32> %17, %5, !dbg !1428
  %30 = sub nsw <4 x i32> %18, %6, !dbg !1428
  %31 = sub nsw <4 x i32> %19, %7, !dbg !1428
  %32 = mul nsw <4 x i32> %28, %24, !dbg !1428
  %33 = mul nsw <4 x i32> %29, %25, !dbg !1428
  %34 = mul nsw <4 x i32> %30, %26, !dbg !1428
  %35 = mul nsw <4 x i32> %31, %27, !dbg !1428
  %36 = lshr <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %37 = lshr <4 x i32> %33, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %38 = lshr <4 x i32> %34, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %39 = lshr <4 x i32> %35, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %40 = trunc nuw <4 x i32> %36 to <4 x i16>, !dbg !1428
  %41 = trunc nuw <4 x i32> %37 to <4 x i16>, !dbg !1428
  %42 = trunc nuw <4 x i32> %38 to <4 x i16>, !dbg !1428
  %43 = trunc nuw <4 x i32> %39 to <4 x i16>, !dbg !1428
  %44 = sub <4 x i16> zeroinitializer, %40, !dbg !1428
  %45 = sub <4 x i16> zeroinitializer, %41, !dbg !1428
  %46 = sub <4 x i16> zeroinitializer, %42, !dbg !1428
  %47 = sub <4 x i16> zeroinitializer, %43, !dbg !1428
  %48 = add nuw nsw <4 x i32> %16, %4, !dbg !1428
  %49 = add nuw nsw <4 x i32> %17, %5, !dbg !1428
  %50 = add nuw nsw <4 x i32> %18, %6, !dbg !1428
  %51 = add nuw nsw <4 x i32> %19, %7, !dbg !1428
  %52 = mul nuw nsw <4 x i32> %48, %24, !dbg !1428
  %53 = mul nuw nsw <4 x i32> %49, %25, !dbg !1428
  %54 = mul nuw nsw <4 x i32> %50, %26, !dbg !1428
  %55 = mul nuw nsw <4 x i32> %51, %27, !dbg !1428
  %56 = lshr <4 x i32> %52, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %57 = lshr <4 x i32> %53, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %58 = lshr <4 x i32> %54, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %59 = lshr <4 x i32> %55, <i32 16, i32 16, i32 16, i32 16>, !dbg !1428
  %60 = trunc nuw <4 x i32> %56 to <4 x i16>, !dbg !1428
  %61 = trunc nuw <4 x i32> %57 to <4 x i16>, !dbg !1428
  %62 = trunc nuw <4 x i32> %58 to <4 x i16>, !dbg !1428
  %63 = trunc nuw <4 x i32> %59 to <4 x i16>, !dbg !1428
  %predphi = select <4 x i1> %8, <4 x i16> %60, <4 x i16> %44, !dbg !1428
  %predphi75 = select <4 x i1> %9, <4 x i16> %61, <4 x i16> %45, !dbg !1428
  %predphi76 = select <4 x i1> %10, <4 x i16> %62, <4 x i16> %46, !dbg !1428
  %predphi77 = select <4 x i1> %11, <4 x i16> %63, <4 x i16> %47, !dbg !1428
  store <4 x i16> %predphi, ptr %0, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  store <4 x i16> %predphi75, ptr %1, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  store <4 x i16> %predphi76, ptr %2, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  store <4 x i16> %predphi77, ptr %3, align 2, !dbg !1428, !alias.scope !1431, !noalias !1434
  %64 = sext <4 x i16> %predphi to <4 x i32>, !dbg !1439
  %65 = sext <4 x i16> %predphi75 to <4 x i32>, !dbg !1439
  %66 = sext <4 x i16> %predphi76 to <4 x i32>, !dbg !1439
  %67 = sext <4 x i16> %predphi77 to <4 x i32>, !dbg !1439
  %68 = or <4 x i32> %vec.phi, %64, !dbg !1439
  %69 = or <4 x i32> %vec.phi61, %65, !dbg !1439
  %70 = or <4 x i32> %vec.phi62, %66, !dbg !1439
  %71 = or <4 x i32> %vec.phi63, %67, !dbg !1439
  %index.next = add nuw i64 %index, 16, !dbg !1426
  %72 = icmp eq i64 %index.next, 64, !dbg !1426
  br i1 %72, label %middle.block, label %vector.body, !dbg !1426, !llvm.loop !1440

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %69, %68, !dbg !1425
  %bin.rdx78 = or <4 x i32> %70, %bin.rdx, !dbg !1425
  %bin.rdx79 = or <4 x i32> %71, %bin.rdx78, !dbg !1425
  %73 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx79), !dbg !1425
  br label %for.cond.cleanup, !dbg !1425

for.cond.cleanup:                                 ; preds = %if.end, %middle.block
  %or.lcssa = phi i32 [ %73, %middle.block ], [ %or, %if.end ], !dbg !1439
  %tobool = icmp ne i32 %or.lcssa, 0, !dbg !1444
  %lnot.ext = zext i1 %tobool to i32, !dbg !1445
  ret i32 %lnot.ext, !dbg !1446

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %nz.053 = phi i32 [ %or, %if.end ], [ 0, %entry ]
    #dbg_value(i64 %indvars.iv, !1421, !DIExpression(), !1424)
    #dbg_value(i32 %nz.053, !1420, !DIExpression(), !1423)
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1428
  %74 = load i16, ptr %arrayidx, align 2, !dbg !1428
  %conv = sext i16 %74 to i32, !dbg !1428
  %cmp1 = icmp sgt i16 %74, 0, !dbg !1428
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv, !dbg !1428
  %75 = load i16, ptr %arrayidx4, align 2, !dbg !1428
  %conv5 = zext i16 %75 to i32, !dbg !1428
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1428
  %76 = load i16, ptr %arrayidx10, align 2, !dbg !1428
  %conv11 = zext i16 %76 to i32, !dbg !1428
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1439

if.then:                                          ; preds = %for.body
  %add = add nuw nsw i32 %conv5, %conv, !dbg !1428
  %mul = mul nuw nsw i32 %add, %conv11, !dbg !1428
  %shr = lshr i32 %mul, 16, !dbg !1428
  %conv12 = trunc nuw i32 %shr to i16, !dbg !1428
  br label %if.end, !dbg !1428

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv, !dbg !1428
  %mul24 = mul nsw i32 %sub, %conv11, !dbg !1428
  %shr25 = lshr i32 %mul24, 16, !dbg !1428
  %77 = trunc nuw i32 %shr25 to i16, !dbg !1428
  %conv27 = sub i16 0, %77, !dbg !1428
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ], !dbg !1428
  store i16 %storemerge, ptr %arrayidx, align 2, !dbg !1428
  %conv32 = sext i16 %storemerge to i32, !dbg !1439
  %or = or i32 %nz.053, %conv32, !dbg !1439
    #dbg_value(i32 %or, !1420, !DIExpression(), !1423)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1426
    #dbg_value(i64 %indvars.iv.next, !1421, !DIExpression(), !1424)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1447
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1425, !llvm.loop !1448
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 !dbg !1449 {
entry:
    #dbg_value(ptr %dct, !1451, !DIExpression(), !1457)
    #dbg_value(ptr %mf, !1452, !DIExpression(), !1457)
    #dbg_value(ptr %bias, !1453, !DIExpression(), !1457)
    #dbg_value(i32 0, !1454, !DIExpression(), !1457)
    #dbg_value(i32 0, !1455, !DIExpression(), !1458)
  %scevgep = getelementptr i8, ptr %dct, i64 32, !dbg !1459
  %scevgep56 = getelementptr i8, ptr %bias, i64 32, !dbg !1459
  %scevgep57 = getelementptr i8, ptr %mf, i64 32, !dbg !1459
  %bound0 = icmp ugt ptr %scevgep56, %dct, !dbg !1459
  %bound1 = icmp ugt ptr %scevgep, %bias, !dbg !1459
  %found.conflict = and i1 %bound0, %bound1, !dbg !1459
  %bound058 = icmp ugt ptr %scevgep57, %dct, !dbg !1459
  %bound159 = icmp ugt ptr %scevgep, %mf, !dbg !1459
  %found.conflict60 = and i1 %bound058, %bound159, !dbg !1459
  %conflict.rdx = or i1 %found.conflict, %found.conflict60, !dbg !1459
  br i1 %conflict.rdx, label %for.body, label %vector.body, !dbg !1459

vector.body:                                      ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1460
  %1 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1460
  %2 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1460
  %wide.load = load <4 x i16>, ptr %dct, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  %wide.load64 = load <4 x i16>, ptr %0, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  %wide.load65 = load <4 x i16>, ptr %1, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  %wide.load66 = load <4 x i16>, ptr %2, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  %3 = sext <4 x i16> %wide.load to <4 x i32>, !dbg !1460
  %4 = sext <4 x i16> %wide.load64 to <4 x i32>, !dbg !1460
  %5 = sext <4 x i16> %wide.load65 to <4 x i32>, !dbg !1460
  %6 = sext <4 x i16> %wide.load66 to <4 x i32>, !dbg !1460
  %7 = icmp sgt <4 x i16> %wide.load, zeroinitializer, !dbg !1460
  %8 = icmp sgt <4 x i16> %wide.load64, zeroinitializer, !dbg !1460
  %9 = icmp sgt <4 x i16> %wide.load65, zeroinitializer, !dbg !1460
  %10 = icmp sgt <4 x i16> %wide.load66, zeroinitializer, !dbg !1460
  %11 = getelementptr inbounds i8, ptr %bias, i64 8, !dbg !1460
  %12 = getelementptr inbounds i8, ptr %bias, i64 16, !dbg !1460
  %13 = getelementptr inbounds i8, ptr %bias, i64 24, !dbg !1460
  %wide.load67 = load <4 x i16>, ptr %bias, align 2, !dbg !1460, !alias.scope !1470
  %wide.load68 = load <4 x i16>, ptr %11, align 2, !dbg !1460, !alias.scope !1470
  %wide.load69 = load <4 x i16>, ptr %12, align 2, !dbg !1460, !alias.scope !1470
  %wide.load70 = load <4 x i16>, ptr %13, align 2, !dbg !1460, !alias.scope !1470
  %14 = zext <4 x i16> %wide.load67 to <4 x i32>, !dbg !1460
  %15 = zext <4 x i16> %wide.load68 to <4 x i32>, !dbg !1460
  %16 = zext <4 x i16> %wide.load69 to <4 x i32>, !dbg !1460
  %17 = zext <4 x i16> %wide.load70 to <4 x i32>, !dbg !1460
  %18 = getelementptr inbounds i8, ptr %mf, i64 8, !dbg !1460
  %19 = getelementptr inbounds i8, ptr %mf, i64 16, !dbg !1460
  %20 = getelementptr inbounds i8, ptr %mf, i64 24, !dbg !1460
  %wide.load71 = load <4 x i16>, ptr %mf, align 2, !dbg !1460, !alias.scope !1471
  %wide.load72 = load <4 x i16>, ptr %18, align 2, !dbg !1460, !alias.scope !1471
  %wide.load73 = load <4 x i16>, ptr %19, align 2, !dbg !1460, !alias.scope !1471
  %wide.load74 = load <4 x i16>, ptr %20, align 2, !dbg !1460, !alias.scope !1471
  %21 = zext <4 x i16> %wide.load71 to <4 x i32>, !dbg !1460
  %22 = zext <4 x i16> %wide.load72 to <4 x i32>, !dbg !1460
  %23 = zext <4 x i16> %wide.load73 to <4 x i32>, !dbg !1460
  %24 = zext <4 x i16> %wide.load74 to <4 x i32>, !dbg !1460
  %25 = sub nsw <4 x i32> %14, %3, !dbg !1460
  %26 = sub nsw <4 x i32> %15, %4, !dbg !1460
  %27 = sub nsw <4 x i32> %16, %5, !dbg !1460
  %28 = sub nsw <4 x i32> %17, %6, !dbg !1460
  %29 = mul nsw <4 x i32> %25, %21, !dbg !1460
  %30 = mul nsw <4 x i32> %26, %22, !dbg !1460
  %31 = mul nsw <4 x i32> %27, %23, !dbg !1460
  %32 = mul nsw <4 x i32> %28, %24, !dbg !1460
  %33 = lshr <4 x i32> %29, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %34 = lshr <4 x i32> %30, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %35 = lshr <4 x i32> %31, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %36 = lshr <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %37 = trunc nuw <4 x i32> %33 to <4 x i16>, !dbg !1460
  %38 = trunc nuw <4 x i32> %34 to <4 x i16>, !dbg !1460
  %39 = trunc nuw <4 x i32> %35 to <4 x i16>, !dbg !1460
  %40 = trunc nuw <4 x i32> %36 to <4 x i16>, !dbg !1460
  %41 = sub <4 x i16> zeroinitializer, %37, !dbg !1460
  %42 = sub <4 x i16> zeroinitializer, %38, !dbg !1460
  %43 = sub <4 x i16> zeroinitializer, %39, !dbg !1460
  %44 = sub <4 x i16> zeroinitializer, %40, !dbg !1460
  %45 = add nuw nsw <4 x i32> %14, %3, !dbg !1460
  %46 = add nuw nsw <4 x i32> %15, %4, !dbg !1460
  %47 = add nuw nsw <4 x i32> %16, %5, !dbg !1460
  %48 = add nuw nsw <4 x i32> %17, %6, !dbg !1460
  %49 = mul nuw nsw <4 x i32> %45, %21, !dbg !1460
  %50 = mul nuw nsw <4 x i32> %46, %22, !dbg !1460
  %51 = mul nuw nsw <4 x i32> %47, %23, !dbg !1460
  %52 = mul nuw nsw <4 x i32> %48, %24, !dbg !1460
  %53 = lshr <4 x i32> %49, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %54 = lshr <4 x i32> %50, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %55 = lshr <4 x i32> %51, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %56 = lshr <4 x i32> %52, <i32 16, i32 16, i32 16, i32 16>, !dbg !1460
  %57 = trunc nuw <4 x i32> %53 to <4 x i16>, !dbg !1460
  %58 = trunc nuw <4 x i32> %54 to <4 x i16>, !dbg !1460
  %59 = trunc nuw <4 x i32> %55 to <4 x i16>, !dbg !1460
  %60 = trunc nuw <4 x i32> %56 to <4 x i16>, !dbg !1460
  %predphi = select <4 x i1> %7, <4 x i16> %57, <4 x i16> %41, !dbg !1460
  %predphi75 = select <4 x i1> %8, <4 x i16> %58, <4 x i16> %42, !dbg !1460
  %predphi76 = select <4 x i1> %9, <4 x i16> %59, <4 x i16> %43, !dbg !1460
  %predphi77 = select <4 x i1> %10, <4 x i16> %60, <4 x i16> %44, !dbg !1460
  store <4 x i16> %predphi, ptr %dct, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  store <4 x i16> %predphi75, ptr %0, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  store <4 x i16> %predphi76, ptr %1, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  store <4 x i16> %predphi77, ptr %2, align 2, !dbg !1460, !alias.scope !1464, !noalias !1467
  %bin.rdx80 = or <4 x i16> %predphi75, %predphi, !dbg !1459
  %bin.rdx7881 = or <4 x i16> %predphi76, %bin.rdx80, !dbg !1459
  %bin.rdx7982 = or <4 x i16> %predphi77, %bin.rdx7881, !dbg !1459
  %61 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %bin.rdx7982), !dbg !1459
  %62 = sext i16 %61 to i32, !dbg !1459
  br label %for.cond.cleanup, !dbg !1459

for.cond.cleanup:                                 ; preds = %if.end, %vector.body
  %or.lcssa = phi i32 [ %62, %vector.body ], [ %or, %if.end ], !dbg !1472
  %tobool = icmp ne i32 %or.lcssa, 0, !dbg !1473
  %lnot.ext = zext i1 %tobool to i32, !dbg !1474
  ret i32 %lnot.ext, !dbg !1475

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %nz.053 = phi i32 [ %or, %if.end ], [ 0, %entry ]
    #dbg_value(i64 %indvars.iv, !1455, !DIExpression(), !1458)
    #dbg_value(i32 %nz.053, !1454, !DIExpression(), !1457)
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1460
  %63 = load i16, ptr %arrayidx, align 2, !dbg !1460
  %conv = sext i16 %63 to i32, !dbg !1460
  %cmp1 = icmp sgt i16 %63, 0, !dbg !1460
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv, !dbg !1460
  %64 = load i16, ptr %arrayidx4, align 2, !dbg !1460
  %conv5 = zext i16 %64 to i32, !dbg !1460
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1460
  %65 = load i16, ptr %arrayidx10, align 2, !dbg !1460
  %conv11 = zext i16 %65 to i32, !dbg !1460
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1472

if.then:                                          ; preds = %for.body
  %add = add nuw nsw i32 %conv5, %conv, !dbg !1460
  %mul = mul nuw nsw i32 %add, %conv11, !dbg !1460
  %shr = lshr i32 %mul, 16, !dbg !1460
  %conv12 = trunc nuw i32 %shr to i16, !dbg !1460
  br label %if.end, !dbg !1460

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv, !dbg !1460
  %mul24 = mul nsw i32 %sub, %conv11, !dbg !1460
  %shr25 = lshr i32 %mul24, 16, !dbg !1460
  %66 = trunc nuw i32 %shr25 to i16, !dbg !1460
  %conv27 = sub i16 0, %66, !dbg !1460
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ], !dbg !1460
  store i16 %storemerge, ptr %arrayidx, align 2, !dbg !1460
  %conv32 = sext i16 %storemerge to i32, !dbg !1472
  %or = or i32 %nz.053, %conv32, !dbg !1472
    #dbg_value(i32 %or, !1454, !DIExpression(), !1457)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1476
    #dbg_value(i64 %indvars.iv.next, !1455, !DIExpression(), !1458)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1477
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1459, !llvm.loop !1478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_4x4_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #2 !dbg !1480 {
entry:
    #dbg_value(ptr %dct, !1482, !DIExpression(), !1488)
    #dbg_value(i32 %mf, !1483, !DIExpression(), !1488)
    #dbg_value(i32 %bias, !1484, !DIExpression(), !1488)
    #dbg_value(i32 0, !1485, !DIExpression(), !1488)
    #dbg_value(i32 0, !1486, !DIExpression(), !1489)
    #dbg_value(i64 0, !1486, !DIExpression(), !1489)
    #dbg_value(i32 0, !1485, !DIExpression(), !1488)
  %0 = load i16, ptr %dct, align 2, !dbg !1490
  %conv = sext i16 %0 to i32, !dbg !1490
  %cmp1 = icmp sgt i16 %0, 0, !dbg !1490
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1494

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias, !dbg !1490
  %mul = mul nsw i32 %add, %mf, !dbg !1490
  %shr = lshr i32 %mul, 16, !dbg !1490
  %conv6 = trunc nuw i32 %shr to i16, !dbg !1490
  br label %if.end, !dbg !1490

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv, !dbg !1490
  %mul12 = mul nsw i32 %sub, %mf, !dbg !1490
  %shr13 = lshr i32 %mul12, 16, !dbg !1490
  %1 = trunc nuw i32 %shr13 to i16, !dbg !1490
  %conv15 = sub i16 0, %1, !dbg !1490
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv15, %if.else ], [ %conv6, %if.then ], !dbg !1490
  store i16 %storemerge, ptr %dct, align 2, !dbg !1490
    #dbg_value(i16 %storemerge, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 1, !1486, !DIExpression(), !1489)
  %arrayidx.1 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1490
  %2 = load i16, ptr %arrayidx.1, align 2, !dbg !1490
  %conv.1 = sext i16 %2 to i32, !dbg !1490
  %cmp1.1 = icmp sgt i16 %2, 0, !dbg !1490
  br i1 %cmp1.1, label %if.then.1, label %if.else.1, !dbg !1494

if.else.1:                                        ; preds = %if.end
  %sub.1 = sub nsw i32 %bias, %conv.1, !dbg !1490
  %mul12.1 = mul nsw i32 %sub.1, %mf, !dbg !1490
  %shr13.1 = lshr i32 %mul12.1, 16, !dbg !1490
  %3 = trunc nuw i32 %shr13.1 to i16, !dbg !1490
  %conv15.1 = sub i16 0, %3, !dbg !1490
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  %add.1 = add nsw i32 %conv.1, %bias, !dbg !1490
  %mul.1 = mul nsw i32 %add.1, %mf, !dbg !1490
  %shr.1 = lshr i32 %mul.1, 16, !dbg !1490
  %conv6.1 = trunc nuw i32 %shr.1 to i16, !dbg !1490
  br label %if.end.1, !dbg !1490

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %storemerge.1 = phi i16 [ %conv15.1, %if.else.1 ], [ %conv6.1, %if.then.1 ], !dbg !1490
  store i16 %storemerge.1, ptr %arrayidx.1, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 2, !1486, !DIExpression(), !1489)
  %arrayidx.2 = getelementptr inbounds i8, ptr %dct, i64 4, !dbg !1490
  %4 = load i16, ptr %arrayidx.2, align 2, !dbg !1490
  %conv.2 = sext i16 %4 to i32, !dbg !1490
  %cmp1.2 = icmp sgt i16 %4, 0, !dbg !1490
  br i1 %cmp1.2, label %if.then.2, label %if.else.2, !dbg !1494

if.else.2:                                        ; preds = %if.end.1
  %sub.2 = sub nsw i32 %bias, %conv.2, !dbg !1490
  %mul12.2 = mul nsw i32 %sub.2, %mf, !dbg !1490
  %shr13.2 = lshr i32 %mul12.2, 16, !dbg !1490
  %5 = trunc nuw i32 %shr13.2 to i16, !dbg !1490
  %conv15.2 = sub i16 0, %5, !dbg !1490
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  %add.2 = add nsw i32 %conv.2, %bias, !dbg !1490
  %mul.2 = mul nsw i32 %add.2, %mf, !dbg !1490
  %shr.2 = lshr i32 %mul.2, 16, !dbg !1490
  %conv6.2 = trunc nuw i32 %shr.2 to i16, !dbg !1490
  br label %if.end.2, !dbg !1490

if.end.2:                                         ; preds = %if.then.2, %if.else.2
  %storemerge.2 = phi i16 [ %conv15.2, %if.else.2 ], [ %conv6.2, %if.then.2 ], !dbg !1490
  store i16 %storemerge.2, ptr %arrayidx.2, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 3, !1486, !DIExpression(), !1489)
  %arrayidx.3 = getelementptr inbounds i8, ptr %dct, i64 6, !dbg !1490
  %6 = load i16, ptr %arrayidx.3, align 2, !dbg !1490
  %conv.3 = sext i16 %6 to i32, !dbg !1490
  %cmp1.3 = icmp sgt i16 %6, 0, !dbg !1490
  br i1 %cmp1.3, label %if.then.3, label %if.else.3, !dbg !1494

if.else.3:                                        ; preds = %if.end.2
  %sub.3 = sub nsw i32 %bias, %conv.3, !dbg !1490
  %mul12.3 = mul nsw i32 %sub.3, %mf, !dbg !1490
  %shr13.3 = lshr i32 %mul12.3, 16, !dbg !1490
  %7 = trunc nuw i32 %shr13.3 to i16, !dbg !1490
  %conv15.3 = sub i16 0, %7, !dbg !1490
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  %add.3 = add nsw i32 %conv.3, %bias, !dbg !1490
  %mul.3 = mul nsw i32 %add.3, %mf, !dbg !1490
  %shr.3 = lshr i32 %mul.3, 16, !dbg !1490
  %conv6.3 = trunc nuw i32 %shr.3 to i16, !dbg !1490
  br label %if.end.3, !dbg !1490

if.end.3:                                         ; preds = %if.then.3, %if.else.3
  %storemerge.3 = phi i16 [ %conv15.3, %if.else.3 ], [ %conv6.3, %if.then.3 ], !dbg !1490
  store i16 %storemerge.3, ptr %arrayidx.3, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 4, !1486, !DIExpression(), !1489)
  %arrayidx.4 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1490
  %8 = load i16, ptr %arrayidx.4, align 2, !dbg !1490
  %conv.4 = sext i16 %8 to i32, !dbg !1490
  %cmp1.4 = icmp sgt i16 %8, 0, !dbg !1490
  br i1 %cmp1.4, label %if.then.4, label %if.else.4, !dbg !1494

if.else.4:                                        ; preds = %if.end.3
  %sub.4 = sub nsw i32 %bias, %conv.4, !dbg !1490
  %mul12.4 = mul nsw i32 %sub.4, %mf, !dbg !1490
  %shr13.4 = lshr i32 %mul12.4, 16, !dbg !1490
  %9 = trunc nuw i32 %shr13.4 to i16, !dbg !1490
  %conv15.4 = sub i16 0, %9, !dbg !1490
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  %add.4 = add nsw i32 %conv.4, %bias, !dbg !1490
  %mul.4 = mul nsw i32 %add.4, %mf, !dbg !1490
  %shr.4 = lshr i32 %mul.4, 16, !dbg !1490
  %conv6.4 = trunc nuw i32 %shr.4 to i16, !dbg !1490
  br label %if.end.4, !dbg !1490

if.end.4:                                         ; preds = %if.then.4, %if.else.4
  %storemerge.4 = phi i16 [ %conv15.4, %if.else.4 ], [ %conv6.4, %if.then.4 ], !dbg !1490
  store i16 %storemerge.4, ptr %arrayidx.4, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 5, !1486, !DIExpression(), !1489)
  %arrayidx.5 = getelementptr inbounds i8, ptr %dct, i64 10, !dbg !1490
  %10 = load i16, ptr %arrayidx.5, align 2, !dbg !1490
  %conv.5 = sext i16 %10 to i32, !dbg !1490
  %cmp1.5 = icmp sgt i16 %10, 0, !dbg !1490
  br i1 %cmp1.5, label %if.then.5, label %if.else.5, !dbg !1494

if.else.5:                                        ; preds = %if.end.4
  %sub.5 = sub nsw i32 %bias, %conv.5, !dbg !1490
  %mul12.5 = mul nsw i32 %sub.5, %mf, !dbg !1490
  %shr13.5 = lshr i32 %mul12.5, 16, !dbg !1490
  %11 = trunc nuw i32 %shr13.5 to i16, !dbg !1490
  %conv15.5 = sub i16 0, %11, !dbg !1490
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  %add.5 = add nsw i32 %conv.5, %bias, !dbg !1490
  %mul.5 = mul nsw i32 %add.5, %mf, !dbg !1490
  %shr.5 = lshr i32 %mul.5, 16, !dbg !1490
  %conv6.5 = trunc nuw i32 %shr.5 to i16, !dbg !1490
  br label %if.end.5, !dbg !1490

if.end.5:                                         ; preds = %if.then.5, %if.else.5
  %storemerge.5 = phi i16 [ %conv15.5, %if.else.5 ], [ %conv6.5, %if.then.5 ], !dbg !1490
  store i16 %storemerge.5, ptr %arrayidx.5, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 6, !1486, !DIExpression(), !1489)
  %arrayidx.6 = getelementptr inbounds i8, ptr %dct, i64 12, !dbg !1490
  %12 = load i16, ptr %arrayidx.6, align 2, !dbg !1490
  %conv.6 = sext i16 %12 to i32, !dbg !1490
  %cmp1.6 = icmp sgt i16 %12, 0, !dbg !1490
  br i1 %cmp1.6, label %if.then.6, label %if.else.6, !dbg !1494

if.else.6:                                        ; preds = %if.end.5
  %sub.6 = sub nsw i32 %bias, %conv.6, !dbg !1490
  %mul12.6 = mul nsw i32 %sub.6, %mf, !dbg !1490
  %shr13.6 = lshr i32 %mul12.6, 16, !dbg !1490
  %13 = trunc nuw i32 %shr13.6 to i16, !dbg !1490
  %conv15.6 = sub i16 0, %13, !dbg !1490
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  %add.6 = add nsw i32 %conv.6, %bias, !dbg !1490
  %mul.6 = mul nsw i32 %add.6, %mf, !dbg !1490
  %shr.6 = lshr i32 %mul.6, 16, !dbg !1490
  %conv6.6 = trunc nuw i32 %shr.6 to i16, !dbg !1490
  br label %if.end.6, !dbg !1490

if.end.6:                                         ; preds = %if.then.6, %if.else.6
  %storemerge.6 = phi i16 [ %conv15.6, %if.else.6 ], [ %conv6.6, %if.then.6 ], !dbg !1490
  store i16 %storemerge.6, ptr %arrayidx.6, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 7, !1486, !DIExpression(), !1489)
  %arrayidx.7 = getelementptr inbounds i8, ptr %dct, i64 14, !dbg !1490
  %14 = load i16, ptr %arrayidx.7, align 2, !dbg !1490
  %conv.7 = sext i16 %14 to i32, !dbg !1490
  %cmp1.7 = icmp sgt i16 %14, 0, !dbg !1490
  br i1 %cmp1.7, label %if.then.7, label %if.else.7, !dbg !1494

if.else.7:                                        ; preds = %if.end.6
  %sub.7 = sub nsw i32 %bias, %conv.7, !dbg !1490
  %mul12.7 = mul nsw i32 %sub.7, %mf, !dbg !1490
  %shr13.7 = lshr i32 %mul12.7, 16, !dbg !1490
  %15 = trunc nuw i32 %shr13.7 to i16, !dbg !1490
  %conv15.7 = sub i16 0, %15, !dbg !1490
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  %add.7 = add nsw i32 %conv.7, %bias, !dbg !1490
  %mul.7 = mul nsw i32 %add.7, %mf, !dbg !1490
  %shr.7 = lshr i32 %mul.7, 16, !dbg !1490
  %conv6.7 = trunc nuw i32 %shr.7 to i16, !dbg !1490
  br label %if.end.7, !dbg !1490

if.end.7:                                         ; preds = %if.then.7, %if.else.7
  %storemerge.7 = phi i16 [ %conv15.7, %if.else.7 ], [ %conv6.7, %if.then.7 ], !dbg !1490
  store i16 %storemerge.7, ptr %arrayidx.7, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 8, !1486, !DIExpression(), !1489)
  %arrayidx.8 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1490
  %16 = load i16, ptr %arrayidx.8, align 2, !dbg !1490
  %conv.8 = sext i16 %16 to i32, !dbg !1490
  %cmp1.8 = icmp sgt i16 %16, 0, !dbg !1490
  br i1 %cmp1.8, label %if.then.8, label %if.else.8, !dbg !1494

if.else.8:                                        ; preds = %if.end.7
  %sub.8 = sub nsw i32 %bias, %conv.8, !dbg !1490
  %mul12.8 = mul nsw i32 %sub.8, %mf, !dbg !1490
  %shr13.8 = lshr i32 %mul12.8, 16, !dbg !1490
  %17 = trunc nuw i32 %shr13.8 to i16, !dbg !1490
  %conv15.8 = sub i16 0, %17, !dbg !1490
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  %add.8 = add nsw i32 %conv.8, %bias, !dbg !1490
  %mul.8 = mul nsw i32 %add.8, %mf, !dbg !1490
  %shr.8 = lshr i32 %mul.8, 16, !dbg !1490
  %conv6.8 = trunc nuw i32 %shr.8 to i16, !dbg !1490
  br label %if.end.8, !dbg !1490

if.end.8:                                         ; preds = %if.then.8, %if.else.8
  %storemerge.8 = phi i16 [ %conv15.8, %if.else.8 ], [ %conv6.8, %if.then.8 ], !dbg !1490
  store i16 %storemerge.8, ptr %arrayidx.8, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 9, !1486, !DIExpression(), !1489)
  %arrayidx.9 = getelementptr inbounds i8, ptr %dct, i64 18, !dbg !1490
  %18 = load i16, ptr %arrayidx.9, align 2, !dbg !1490
  %conv.9 = sext i16 %18 to i32, !dbg !1490
  %cmp1.9 = icmp sgt i16 %18, 0, !dbg !1490
  br i1 %cmp1.9, label %if.then.9, label %if.else.9, !dbg !1494

if.else.9:                                        ; preds = %if.end.8
  %sub.9 = sub nsw i32 %bias, %conv.9, !dbg !1490
  %mul12.9 = mul nsw i32 %sub.9, %mf, !dbg !1490
  %shr13.9 = lshr i32 %mul12.9, 16, !dbg !1490
  %19 = trunc nuw i32 %shr13.9 to i16, !dbg !1490
  %conv15.9 = sub i16 0, %19, !dbg !1490
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8
  %add.9 = add nsw i32 %conv.9, %bias, !dbg !1490
  %mul.9 = mul nsw i32 %add.9, %mf, !dbg !1490
  %shr.9 = lshr i32 %mul.9, 16, !dbg !1490
  %conv6.9 = trunc nuw i32 %shr.9 to i16, !dbg !1490
  br label %if.end.9, !dbg !1490

if.end.9:                                         ; preds = %if.then.9, %if.else.9
  %storemerge.9 = phi i16 [ %conv15.9, %if.else.9 ], [ %conv6.9, %if.then.9 ], !dbg !1490
  store i16 %storemerge.9, ptr %arrayidx.9, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 10, !1486, !DIExpression(), !1489)
  %arrayidx.10 = getelementptr inbounds i8, ptr %dct, i64 20, !dbg !1490
  %20 = load i16, ptr %arrayidx.10, align 2, !dbg !1490
  %conv.10 = sext i16 %20 to i32, !dbg !1490
  %cmp1.10 = icmp sgt i16 %20, 0, !dbg !1490
  br i1 %cmp1.10, label %if.then.10, label %if.else.10, !dbg !1494

if.else.10:                                       ; preds = %if.end.9
  %sub.10 = sub nsw i32 %bias, %conv.10, !dbg !1490
  %mul12.10 = mul nsw i32 %sub.10, %mf, !dbg !1490
  %shr13.10 = lshr i32 %mul12.10, 16, !dbg !1490
  %21 = trunc nuw i32 %shr13.10 to i16, !dbg !1490
  %conv15.10 = sub i16 0, %21, !dbg !1490
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9
  %add.10 = add nsw i32 %conv.10, %bias, !dbg !1490
  %mul.10 = mul nsw i32 %add.10, %mf, !dbg !1490
  %shr.10 = lshr i32 %mul.10, 16, !dbg !1490
  %conv6.10 = trunc nuw i32 %shr.10 to i16, !dbg !1490
  br label %if.end.10, !dbg !1490

if.end.10:                                        ; preds = %if.then.10, %if.else.10
  %storemerge.10 = phi i16 [ %conv15.10, %if.else.10 ], [ %conv6.10, %if.then.10 ], !dbg !1490
  store i16 %storemerge.10, ptr %arrayidx.10, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.10, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 11, !1486, !DIExpression(), !1489)
  %arrayidx.11 = getelementptr inbounds i8, ptr %dct, i64 22, !dbg !1490
  %22 = load i16, ptr %arrayidx.11, align 2, !dbg !1490
  %conv.11 = sext i16 %22 to i32, !dbg !1490
  %cmp1.11 = icmp sgt i16 %22, 0, !dbg !1490
  br i1 %cmp1.11, label %if.then.11, label %if.else.11, !dbg !1494

if.else.11:                                       ; preds = %if.end.10
  %sub.11 = sub nsw i32 %bias, %conv.11, !dbg !1490
  %mul12.11 = mul nsw i32 %sub.11, %mf, !dbg !1490
  %shr13.11 = lshr i32 %mul12.11, 16, !dbg !1490
  %23 = trunc nuw i32 %shr13.11 to i16, !dbg !1490
  %conv15.11 = sub i16 0, %23, !dbg !1490
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10
  %add.11 = add nsw i32 %conv.11, %bias, !dbg !1490
  %mul.11 = mul nsw i32 %add.11, %mf, !dbg !1490
  %shr.11 = lshr i32 %mul.11, 16, !dbg !1490
  %conv6.11 = trunc nuw i32 %shr.11 to i16, !dbg !1490
  br label %if.end.11, !dbg !1490

if.end.11:                                        ; preds = %if.then.11, %if.else.11
  %storemerge.11 = phi i16 [ %conv15.11, %if.else.11 ], [ %conv6.11, %if.then.11 ], !dbg !1490
  store i16 %storemerge.11, ptr %arrayidx.11, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.11, i16 %storemerge.10, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_or, DW_OP_LLVM_arg, 10, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 12, !1486, !DIExpression(), !1489)
  %arrayidx.12 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1490
  %24 = load i16, ptr %arrayidx.12, align 2, !dbg !1490
  %conv.12 = sext i16 %24 to i32, !dbg !1490
  %cmp1.12 = icmp sgt i16 %24, 0, !dbg !1490
  br i1 %cmp1.12, label %if.then.12, label %if.else.12, !dbg !1494

if.else.12:                                       ; preds = %if.end.11
  %sub.12 = sub nsw i32 %bias, %conv.12, !dbg !1490
  %mul12.12 = mul nsw i32 %sub.12, %mf, !dbg !1490
  %shr13.12 = lshr i32 %mul12.12, 16, !dbg !1490
  %25 = trunc nuw i32 %shr13.12 to i16, !dbg !1490
  %conv15.12 = sub i16 0, %25, !dbg !1490
  br label %if.end.12

if.then.12:                                       ; preds = %if.end.11
  %add.12 = add nsw i32 %conv.12, %bias, !dbg !1490
  %mul.12 = mul nsw i32 %add.12, %mf, !dbg !1490
  %shr.12 = lshr i32 %mul.12, 16, !dbg !1490
  %conv6.12 = trunc nuw i32 %shr.12 to i16, !dbg !1490
  br label %if.end.12, !dbg !1490

if.end.12:                                        ; preds = %if.then.12, %if.else.12
  %storemerge.12 = phi i16 [ %conv15.12, %if.else.12 ], [ %conv6.12, %if.then.12 ], !dbg !1490
  store i16 %storemerge.12, ptr %arrayidx.12, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.12, i16 %storemerge.11, i16 %storemerge.10, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 12, DW_OP_or, DW_OP_LLVM_arg, 11, DW_OP_or, DW_OP_LLVM_arg, 10, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 13, !1486, !DIExpression(), !1489)
  %arrayidx.13 = getelementptr inbounds i8, ptr %dct, i64 26, !dbg !1490
  %26 = load i16, ptr %arrayidx.13, align 2, !dbg !1490
  %conv.13 = sext i16 %26 to i32, !dbg !1490
  %cmp1.13 = icmp sgt i16 %26, 0, !dbg !1490
  br i1 %cmp1.13, label %if.then.13, label %if.else.13, !dbg !1494

if.else.13:                                       ; preds = %if.end.12
  %sub.13 = sub nsw i32 %bias, %conv.13, !dbg !1490
  %mul12.13 = mul nsw i32 %sub.13, %mf, !dbg !1490
  %shr13.13 = lshr i32 %mul12.13, 16, !dbg !1490
  %27 = trunc nuw i32 %shr13.13 to i16, !dbg !1490
  %conv15.13 = sub i16 0, %27, !dbg !1490
  br label %if.end.13

if.then.13:                                       ; preds = %if.end.12
  %add.13 = add nsw i32 %conv.13, %bias, !dbg !1490
  %mul.13 = mul nsw i32 %add.13, %mf, !dbg !1490
  %shr.13 = lshr i32 %mul.13, 16, !dbg !1490
  %conv6.13 = trunc nuw i32 %shr.13 to i16, !dbg !1490
  br label %if.end.13, !dbg !1490

if.end.13:                                        ; preds = %if.then.13, %if.else.13
  %storemerge.13 = phi i16 [ %conv15.13, %if.else.13 ], [ %conv6.13, %if.then.13 ], !dbg !1490
  store i16 %storemerge.13, ptr %arrayidx.13, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.13, i16 %storemerge.12, i16 %storemerge.11, i16 %storemerge.10, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_or, DW_OP_LLVM_arg, 12, DW_OP_or, DW_OP_LLVM_arg, 11, DW_OP_or, DW_OP_LLVM_arg, 10, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 14, !1486, !DIExpression(), !1489)
  %arrayidx.14 = getelementptr inbounds i8, ptr %dct, i64 28, !dbg !1490
  %28 = load i16, ptr %arrayidx.14, align 2, !dbg !1490
  %conv.14 = sext i16 %28 to i32, !dbg !1490
  %cmp1.14 = icmp sgt i16 %28, 0, !dbg !1490
  br i1 %cmp1.14, label %if.then.14, label %if.else.14, !dbg !1494

if.else.14:                                       ; preds = %if.end.13
  %sub.14 = sub nsw i32 %bias, %conv.14, !dbg !1490
  %mul12.14 = mul nsw i32 %sub.14, %mf, !dbg !1490
  %shr13.14 = lshr i32 %mul12.14, 16, !dbg !1490
  %29 = trunc nuw i32 %shr13.14 to i16, !dbg !1490
  %conv15.14 = sub i16 0, %29, !dbg !1490
  br label %if.end.14

if.then.14:                                       ; preds = %if.end.13
  %add.14 = add nsw i32 %conv.14, %bias, !dbg !1490
  %mul.14 = mul nsw i32 %add.14, %mf, !dbg !1490
  %shr.14 = lshr i32 %mul.14, 16, !dbg !1490
  %conv6.14 = trunc nuw i32 %shr.14 to i16, !dbg !1490
  br label %if.end.14, !dbg !1490

if.end.14:                                        ; preds = %if.then.14, %if.else.14
  %storemerge.14 = phi i16 [ %conv15.14, %if.else.14 ], [ %conv6.14, %if.then.14 ], !dbg !1490
  store i16 %storemerge.14, ptr %arrayidx.14, align 2, !dbg !1490
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge.14, i16 %storemerge.13, i16 %storemerge.12, i16 %storemerge.11, i16 %storemerge.10, i16 %storemerge.9, i16 %storemerge.8, i16 %storemerge.7, i16 %storemerge.6, i16 %storemerge.5, i16 %storemerge.4, i16 %storemerge.3, i16 %storemerge.2, i16 %storemerge.1), !1485, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 14, DW_OP_or, DW_OP_LLVM_arg, 13, DW_OP_or, DW_OP_LLVM_arg, 12, DW_OP_or, DW_OP_LLVM_arg, 11, DW_OP_or, DW_OP_LLVM_arg, 10, DW_OP_or, DW_OP_LLVM_arg, 9, DW_OP_or, DW_OP_LLVM_arg, 8, DW_OP_or, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_or, DW_OP_stack_value), !1488)
    #dbg_value(i64 15, !1486, !DIExpression(), !1489)
  %arrayidx.15 = getelementptr inbounds i8, ptr %dct, i64 30, !dbg !1490
  %30 = load i16, ptr %arrayidx.15, align 2, !dbg !1490
  %conv.15 = sext i16 %30 to i32, !dbg !1490
  %cmp1.15 = icmp sgt i16 %30, 0, !dbg !1490
  br i1 %cmp1.15, label %if.then.15, label %if.else.15, !dbg !1494

if.else.15:                                       ; preds = %if.end.14
  %sub.15 = sub nsw i32 %bias, %conv.15, !dbg !1490
  %mul12.15 = mul nsw i32 %sub.15, %mf, !dbg !1490
  %shr13.15 = lshr i32 %mul12.15, 16, !dbg !1490
  %31 = trunc nuw i32 %shr13.15 to i16, !dbg !1490
  %conv15.15 = sub i16 0, %31, !dbg !1490
  br label %if.end.15

if.then.15:                                       ; preds = %if.end.14
  %add.15 = add nsw i32 %conv.15, %bias, !dbg !1490
  %mul.15 = mul nsw i32 %add.15, %mf, !dbg !1490
  %shr.15 = lshr i32 %mul.15, 16, !dbg !1490
  %conv6.15 = trunc nuw i32 %shr.15 to i16, !dbg !1490
  br label %if.end.15, !dbg !1490

if.end.15:                                        ; preds = %if.then.15, %if.else.15
  %storemerge.15 = phi i16 [ %conv15.15, %if.else.15 ], [ %conv6.15, %if.then.15 ], !dbg !1490
  %or.140 = or i16 %storemerge, %storemerge.1, !dbg !1494
    #dbg_value(i16 %or.140, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.241 = or i16 %or.140, %storemerge.2, !dbg !1494
    #dbg_value(i16 %or.241, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.342 = or i16 %or.241, %storemerge.3, !dbg !1494
    #dbg_value(i16 %or.342, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.443 = or i16 %or.342, %storemerge.4, !dbg !1494
    #dbg_value(i16 %or.443, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.544 = or i16 %or.443, %storemerge.5, !dbg !1494
    #dbg_value(i16 %or.544, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.645 = or i16 %or.544, %storemerge.6, !dbg !1494
    #dbg_value(i16 %or.645, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.746 = or i16 %or.645, %storemerge.7, !dbg !1494
    #dbg_value(i16 %or.746, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.847 = or i16 %or.746, %storemerge.8, !dbg !1494
    #dbg_value(i16 %or.847, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.948 = or i16 %or.847, %storemerge.9, !dbg !1494
    #dbg_value(i16 %or.948, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.1049 = or i16 %or.948, %storemerge.10, !dbg !1494
    #dbg_value(i16 %or.1049, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.1150 = or i16 %or.1049, %storemerge.11, !dbg !1494
    #dbg_value(i16 %or.1150, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.1251 = or i16 %or.1150, %storemerge.12, !dbg !1494
    #dbg_value(i16 %or.1251, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.1352 = or i16 %or.1251, %storemerge.13, !dbg !1494
    #dbg_value(i16 %or.1352, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  %or.1453 = or i16 %or.1352, %storemerge.14, !dbg !1494
    #dbg_value(i16 %or.1453, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
  store i16 %storemerge.15, ptr %arrayidx.15, align 2, !dbg !1490
  %or.1554 = or i16 %or.1453, %storemerge.15, !dbg !1494
    #dbg_value(i16 %or.1554, !1485, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1488)
    #dbg_value(i64 16, !1486, !DIExpression(), !1489)
  %tobool = icmp ne i16 %or.1554, 0, !dbg !1495
  %lnot.ext = zext i1 %tobool to i32, !dbg !1496
  ret i32 %lnot.ext, !dbg !1497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @quant_2x2_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #2 !dbg !1498 {
entry:
    #dbg_value(ptr %dct, !1500, !DIExpression(), !1504)
    #dbg_value(i32 %mf, !1501, !DIExpression(), !1504)
    #dbg_value(i32 %bias, !1502, !DIExpression(), !1504)
    #dbg_value(i32 0, !1503, !DIExpression(), !1504)
  %0 = load i16, ptr %dct, align 2, !dbg !1505
  %conv = sext i16 %0 to i32, !dbg !1505
  %cmp = icmp sgt i16 %0, 0, !dbg !1505
  br i1 %cmp, label %if.then, label %if.else, !dbg !1508

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias, !dbg !1505
  %mul = mul nsw i32 %add, %mf, !dbg !1505
  %shr = lshr i32 %mul, 16, !dbg !1505
  %conv4 = trunc nuw i32 %shr to i16, !dbg !1505
  br label %if.end, !dbg !1505

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv, !dbg !1505
  %mul8 = mul nsw i32 %sub, %mf, !dbg !1505
  %shr9 = lshr i32 %mul8, 16, !dbg !1505
  %1 = trunc nuw i32 %shr9 to i16, !dbg !1505
  %conv11 = sub i16 0, %1, !dbg !1505
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv11, %if.else ], [ %conv4, %if.then ], !dbg !1505
  store i16 %storemerge, ptr %dct, align 2, !dbg !1505
    #dbg_value(i16 %storemerge, !1503, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1504)
  %arrayidx15 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1509
  %2 = load i16, ptr %arrayidx15, align 2, !dbg !1509
  %conv16 = sext i16 %2 to i32, !dbg !1509
  %cmp17 = icmp sgt i16 %2, 0, !dbg !1509
  br i1 %cmp17, label %if.then19, label %if.else27, !dbg !1512

if.then19:                                        ; preds = %if.end
  %add22 = add nsw i32 %conv16, %bias, !dbg !1509
  %mul23 = mul nsw i32 %add22, %mf, !dbg !1509
  %shr24 = lshr i32 %mul23, 16, !dbg !1509
  %conv25 = trunc nuw i32 %shr24 to i16, !dbg !1509
  br label %if.end36, !dbg !1509

if.else27:                                        ; preds = %if.end
  %sub30 = sub nsw i32 %bias, %conv16, !dbg !1509
  %mul31 = mul nsw i32 %sub30, %mf, !dbg !1509
  %shr32 = lshr i32 %mul31, 16, !dbg !1509
  %3 = trunc nuw i32 %shr32 to i16, !dbg !1509
  %conv34 = sub i16 0, %3, !dbg !1509
  br label %if.end36

if.end36:                                         ; preds = %if.else27, %if.then19
  %storemerge132 = phi i16 [ %conv34, %if.else27 ], [ %conv25, %if.then19 ], !dbg !1509
  store i16 %storemerge132, ptr %arrayidx15, align 2, !dbg !1509
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge132), !1503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1504)
  %arrayidx40 = getelementptr inbounds i8, ptr %dct, i64 4, !dbg !1513
  %4 = load i16, ptr %arrayidx40, align 2, !dbg !1513
  %conv41 = sext i16 %4 to i32, !dbg !1513
  %cmp42 = icmp sgt i16 %4, 0, !dbg !1513
  br i1 %cmp42, label %if.then44, label %if.else52, !dbg !1516

if.then44:                                        ; preds = %if.end36
  %add47 = add nsw i32 %conv41, %bias, !dbg !1513
  %mul48 = mul nsw i32 %add47, %mf, !dbg !1513
  %shr49 = lshr i32 %mul48, 16, !dbg !1513
  %conv50 = trunc nuw i32 %shr49 to i16, !dbg !1513
  br label %if.end61, !dbg !1513

if.else52:                                        ; preds = %if.end36
  %sub55 = sub nsw i32 %bias, %conv41, !dbg !1513
  %mul56 = mul nsw i32 %sub55, %mf, !dbg !1513
  %shr57 = lshr i32 %mul56, 16, !dbg !1513
  %5 = trunc nuw i32 %shr57 to i16, !dbg !1513
  %conv59 = sub i16 0, %5, !dbg !1513
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then44
  %storemerge134 = phi i16 [ %conv59, %if.else52 ], [ %conv50, %if.then44 ], !dbg !1513
  store i16 %storemerge134, ptr %arrayidx40, align 2, !dbg !1513
    #dbg_value(!DIArgList(i16 %storemerge, i16 %storemerge134, i16 %storemerge132), !1503, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_or, DW_OP_stack_value), !1504)
  %arrayidx65 = getelementptr inbounds i8, ptr %dct, i64 6, !dbg !1517
  %6 = load i16, ptr %arrayidx65, align 2, !dbg !1517
  %conv66 = sext i16 %6 to i32, !dbg !1517
  %cmp67 = icmp sgt i16 %6, 0, !dbg !1517
  br i1 %cmp67, label %if.then69, label %if.else77, !dbg !1520

if.then69:                                        ; preds = %if.end61
  %add72 = add nsw i32 %conv66, %bias, !dbg !1517
  %mul73 = mul nsw i32 %add72, %mf, !dbg !1517
  %shr74 = lshr i32 %mul73, 16, !dbg !1517
  %conv75 = trunc nuw i32 %shr74 to i16, !dbg !1517
  br label %if.end86, !dbg !1517

if.else77:                                        ; preds = %if.end61
  %sub80 = sub nsw i32 %bias, %conv66, !dbg !1517
  %mul81 = mul nsw i32 %sub80, %mf, !dbg !1517
  %shr82 = lshr i32 %mul81, 16, !dbg !1517
  %7 = trunc nuw i32 %shr82 to i16, !dbg !1517
  %conv84 = sub i16 0, %7, !dbg !1517
  br label %if.end86

if.end86:                                         ; preds = %if.else77, %if.then69
  %storemerge136 = phi i16 [ %conv84, %if.else77 ], [ %conv75, %if.then69 ], !dbg !1517
  store i16 %storemerge136, ptr %arrayidx65, align 2, !dbg !1517
  %or39133 = or i16 %storemerge132, %storemerge, !dbg !1512
    #dbg_value(i16 %or39133, !1503, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1504)
  %or64135 = or i16 %or39133, %storemerge134, !dbg !1516
    #dbg_value(i16 %or64135, !1503, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1504)
  %or89137 = or i16 %or64135, %storemerge136, !dbg !1520
    #dbg_value(i16 %or89137, !1503, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1504)
  %tobool = icmp ne i16 %or89137, 0, !dbg !1521
  %lnot.ext = zext i1 %tobool to i32, !dbg !1522
  ret i32 %lnot.ext, !dbg !1523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @dequant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #3 !dbg !1524 {
entry:
    #dbg_value(ptr %dct, !1526, !DIExpression(), !1540)
    #dbg_value(ptr %dequant_mf, !1527, !DIExpression(), !1540)
    #dbg_value(i32 %i_qp, !1528, !DIExpression(), !1540)
  %rem = srem i32 %i_qp, 6, !dbg !1541
    #dbg_value(i32 %rem, !1529, !DIExpression(), !1540)
  %div = sdiv i32 %i_qp, 6, !dbg !1542
    #dbg_value(i32 %div, !1531, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !1540)
  %cmp = icmp sgt i32 %i_qp, 23, !dbg !1543
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !1544

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %div, -4, !dbg !1545
    #dbg_value(i32 %sub, !1531, !DIExpression(), !1540)
  %idxprom2 = zext nneg i32 %rem to i64
    #dbg_value(i32 0, !1532, !DIExpression(), !1546)
    #dbg_value(i64 0, !1532, !DIExpression(), !1546)
  %0 = load i16, ptr %dct, align 2, !dbg !1547
  %conv = zext i16 %0 to i32, !dbg !1547
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 0, !dbg !1547
  %1 = load i32, ptr %arrayidx5, align 4, !dbg !1547
  %mul = mul i32 %1, %conv, !dbg !1547
  %shl = shl i32 %mul, %sub, !dbg !1547
  %conv6 = trunc i32 %shl to i16, !dbg !1547
  store i16 %conv6, ptr %dct, align 2, !dbg !1547
    #dbg_value(i64 1, !1532, !DIExpression(), !1546)
  %arrayidx.1 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1547
  %2 = load i16, ptr %arrayidx.1, align 2, !dbg !1547
  %conv.1 = zext i16 %2 to i32, !dbg !1547
  %arrayidx5.1 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 1, !dbg !1547
  %3 = load i32, ptr %arrayidx5.1, align 4, !dbg !1547
  %mul.1 = mul i32 %3, %conv.1, !dbg !1547
  %shl.1 = shl i32 %mul.1, %sub, !dbg !1547
  %conv6.1 = trunc i32 %shl.1 to i16, !dbg !1547
  store i16 %conv6.1, ptr %arrayidx.1, align 2, !dbg !1547
    #dbg_value(i64 2, !1532, !DIExpression(), !1546)
  %arrayidx.2 = getelementptr inbounds i8, ptr %dct, i64 4, !dbg !1547
  %4 = load i16, ptr %arrayidx.2, align 2, !dbg !1547
  %conv.2 = zext i16 %4 to i32, !dbg !1547
  %arrayidx5.2 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 2, !dbg !1547
  %5 = load i32, ptr %arrayidx5.2, align 4, !dbg !1547
  %mul.2 = mul i32 %5, %conv.2, !dbg !1547
  %shl.2 = shl i32 %mul.2, %sub, !dbg !1547
  %conv6.2 = trunc i32 %shl.2 to i16, !dbg !1547
  store i16 %conv6.2, ptr %arrayidx.2, align 2, !dbg !1547
    #dbg_value(i64 3, !1532, !DIExpression(), !1546)
  %arrayidx.3 = getelementptr inbounds i8, ptr %dct, i64 6, !dbg !1547
  %6 = load i16, ptr %arrayidx.3, align 2, !dbg !1547
  %conv.3 = zext i16 %6 to i32, !dbg !1547
  %arrayidx5.3 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 3, !dbg !1547
  %7 = load i32, ptr %arrayidx5.3, align 4, !dbg !1547
  %mul.3 = mul i32 %7, %conv.3, !dbg !1547
  %shl.3 = shl i32 %mul.3, %sub, !dbg !1547
  %conv6.3 = trunc i32 %shl.3 to i16, !dbg !1547
  store i16 %conv6.3, ptr %arrayidx.3, align 2, !dbg !1547
    #dbg_value(i64 4, !1532, !DIExpression(), !1546)
  %arrayidx.4 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1547
  %8 = load i16, ptr %arrayidx.4, align 2, !dbg !1547
  %conv.4 = zext i16 %8 to i32, !dbg !1547
  %arrayidx5.4 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 4, !dbg !1547
  %9 = load i32, ptr %arrayidx5.4, align 4, !dbg !1547
  %mul.4 = mul i32 %9, %conv.4, !dbg !1547
  %shl.4 = shl i32 %mul.4, %sub, !dbg !1547
  %conv6.4 = trunc i32 %shl.4 to i16, !dbg !1547
  store i16 %conv6.4, ptr %arrayidx.4, align 2, !dbg !1547
    #dbg_value(i64 5, !1532, !DIExpression(), !1546)
  %arrayidx.5 = getelementptr inbounds i8, ptr %dct, i64 10, !dbg !1547
  %10 = load i16, ptr %arrayidx.5, align 2, !dbg !1547
  %conv.5 = zext i16 %10 to i32, !dbg !1547
  %arrayidx5.5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 5, !dbg !1547
  %11 = load i32, ptr %arrayidx5.5, align 4, !dbg !1547
  %mul.5 = mul i32 %11, %conv.5, !dbg !1547
  %shl.5 = shl i32 %mul.5, %sub, !dbg !1547
  %conv6.5 = trunc i32 %shl.5 to i16, !dbg !1547
  store i16 %conv6.5, ptr %arrayidx.5, align 2, !dbg !1547
    #dbg_value(i64 6, !1532, !DIExpression(), !1546)
  %arrayidx.6 = getelementptr inbounds i8, ptr %dct, i64 12, !dbg !1547
  %12 = load i16, ptr %arrayidx.6, align 2, !dbg !1547
  %conv.6 = zext i16 %12 to i32, !dbg !1547
  %arrayidx5.6 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 6, !dbg !1547
  %13 = load i32, ptr %arrayidx5.6, align 4, !dbg !1547
  %mul.6 = mul i32 %13, %conv.6, !dbg !1547
  %shl.6 = shl i32 %mul.6, %sub, !dbg !1547
  %conv6.6 = trunc i32 %shl.6 to i16, !dbg !1547
  store i16 %conv6.6, ptr %arrayidx.6, align 2, !dbg !1547
    #dbg_value(i64 7, !1532, !DIExpression(), !1546)
  %arrayidx.7 = getelementptr inbounds i8, ptr %dct, i64 14, !dbg !1547
  %14 = load i16, ptr %arrayidx.7, align 2, !dbg !1547
  %conv.7 = zext i16 %14 to i32, !dbg !1547
  %arrayidx5.7 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 7, !dbg !1547
  %15 = load i32, ptr %arrayidx5.7, align 4, !dbg !1547
  %mul.7 = mul i32 %15, %conv.7, !dbg !1547
  %shl.7 = shl i32 %mul.7, %sub, !dbg !1547
  %conv6.7 = trunc i32 %shl.7 to i16, !dbg !1547
  store i16 %conv6.7, ptr %arrayidx.7, align 2, !dbg !1547
    #dbg_value(i64 8, !1532, !DIExpression(), !1546)
  %arrayidx.8 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1547
  %16 = load i16, ptr %arrayidx.8, align 2, !dbg !1547
  %conv.8 = zext i16 %16 to i32, !dbg !1547
  %arrayidx5.8 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 8, !dbg !1547
  %17 = load i32, ptr %arrayidx5.8, align 4, !dbg !1547
  %mul.8 = mul i32 %17, %conv.8, !dbg !1547
  %shl.8 = shl i32 %mul.8, %sub, !dbg !1547
  %conv6.8 = trunc i32 %shl.8 to i16, !dbg !1547
  store i16 %conv6.8, ptr %arrayidx.8, align 2, !dbg !1547
    #dbg_value(i64 9, !1532, !DIExpression(), !1546)
  %arrayidx.9 = getelementptr inbounds i8, ptr %dct, i64 18, !dbg !1547
  %18 = load i16, ptr %arrayidx.9, align 2, !dbg !1547
  %conv.9 = zext i16 %18 to i32, !dbg !1547
  %arrayidx5.9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 9, !dbg !1547
  %19 = load i32, ptr %arrayidx5.9, align 4, !dbg !1547
  %mul.9 = mul i32 %19, %conv.9, !dbg !1547
  %shl.9 = shl i32 %mul.9, %sub, !dbg !1547
  %conv6.9 = trunc i32 %shl.9 to i16, !dbg !1547
  store i16 %conv6.9, ptr %arrayidx.9, align 2, !dbg !1547
    #dbg_value(i64 10, !1532, !DIExpression(), !1546)
  %arrayidx.10 = getelementptr inbounds i8, ptr %dct, i64 20, !dbg !1547
  %20 = load i16, ptr %arrayidx.10, align 2, !dbg !1547
  %conv.10 = zext i16 %20 to i32, !dbg !1547
  %arrayidx5.10 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 10, !dbg !1547
  %21 = load i32, ptr %arrayidx5.10, align 4, !dbg !1547
  %mul.10 = mul i32 %21, %conv.10, !dbg !1547
  %shl.10 = shl i32 %mul.10, %sub, !dbg !1547
  %conv6.10 = trunc i32 %shl.10 to i16, !dbg !1547
  store i16 %conv6.10, ptr %arrayidx.10, align 2, !dbg !1547
    #dbg_value(i64 11, !1532, !DIExpression(), !1546)
  %arrayidx.11 = getelementptr inbounds i8, ptr %dct, i64 22, !dbg !1547
  %22 = load i16, ptr %arrayidx.11, align 2, !dbg !1547
  %conv.11 = zext i16 %22 to i32, !dbg !1547
  %arrayidx5.11 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 11, !dbg !1547
  %23 = load i32, ptr %arrayidx5.11, align 4, !dbg !1547
  %mul.11 = mul i32 %23, %conv.11, !dbg !1547
  %shl.11 = shl i32 %mul.11, %sub, !dbg !1547
  %conv6.11 = trunc i32 %shl.11 to i16, !dbg !1547
  store i16 %conv6.11, ptr %arrayidx.11, align 2, !dbg !1547
    #dbg_value(i64 12, !1532, !DIExpression(), !1546)
  %arrayidx.12 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1547
  %24 = load i16, ptr %arrayidx.12, align 2, !dbg !1547
  %conv.12 = zext i16 %24 to i32, !dbg !1547
  %arrayidx5.12 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 12, !dbg !1547
  %25 = load i32, ptr %arrayidx5.12, align 4, !dbg !1547
  %mul.12 = mul i32 %25, %conv.12, !dbg !1547
  %shl.12 = shl i32 %mul.12, %sub, !dbg !1547
  %conv6.12 = trunc i32 %shl.12 to i16, !dbg !1547
  store i16 %conv6.12, ptr %arrayidx.12, align 2, !dbg !1547
    #dbg_value(i64 13, !1532, !DIExpression(), !1546)
  %arrayidx.13 = getelementptr inbounds i8, ptr %dct, i64 26, !dbg !1547
  %26 = load i16, ptr %arrayidx.13, align 2, !dbg !1547
  %conv.13 = zext i16 %26 to i32, !dbg !1547
  %arrayidx5.13 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 13, !dbg !1547
  %27 = load i32, ptr %arrayidx5.13, align 4, !dbg !1547
  %mul.13 = mul i32 %27, %conv.13, !dbg !1547
  %shl.13 = shl i32 %mul.13, %sub, !dbg !1547
  %conv6.13 = trunc i32 %shl.13 to i16, !dbg !1547
  store i16 %conv6.13, ptr %arrayidx.13, align 2, !dbg !1547
    #dbg_value(i64 14, !1532, !DIExpression(), !1546)
  %arrayidx.14 = getelementptr inbounds i8, ptr %dct, i64 28, !dbg !1547
  %28 = load i16, ptr %arrayidx.14, align 2, !dbg !1547
  %conv.14 = zext i16 %28 to i32, !dbg !1547
  %arrayidx5.14 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 14, !dbg !1547
  %29 = load i32, ptr %arrayidx5.14, align 4, !dbg !1547
  %mul.14 = mul i32 %29, %conv.14, !dbg !1547
  %shl.14 = shl i32 %mul.14, %sub, !dbg !1547
  %conv6.14 = trunc i32 %shl.14 to i16, !dbg !1547
  store i16 %conv6.14, ptr %arrayidx.14, align 2, !dbg !1547
    #dbg_value(i64 15, !1532, !DIExpression(), !1546)
  %arrayidx.15 = getelementptr inbounds i8, ptr %dct, i64 30, !dbg !1547
  %30 = load i16, ptr %arrayidx.15, align 2, !dbg !1547
  %conv.15 = zext i16 %30 to i32, !dbg !1547
  %arrayidx5.15 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 15, !dbg !1547
  %31 = load i32, ptr %arrayidx5.15, align 4, !dbg !1547
  %mul.15 = mul i32 %31, %conv.15, !dbg !1547
  %shl.15 = shl i32 %mul.15, %sub, !dbg !1547
    #dbg_value(i64 16, !1532, !DIExpression(), !1546)
  br label %if.end, !dbg !1549

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 4, %div, !dbg !1550
  %sub10 = sub nsw i32 3, %div, !dbg !1551
  %shl11 = shl nuw i32 1, %sub10, !dbg !1552
    #dbg_value(i32 %shl11, !1536, !DIExpression(), !1553)
    #dbg_value(i32 0, !1538, !DIExpression(), !1554)
  %idxprom21 = sext i32 %rem to i64
    #dbg_value(i32 0, !1538, !DIExpression(), !1554)
    #dbg_value(i64 0, !1538, !DIExpression(), !1554)
  %32 = load i16, ptr %dct, align 2, !dbg !1555
  %conv20 = sext i16 %32 to i32, !dbg !1555
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 0, !dbg !1555
  %33 = load i32, ptr %arrayidx24, align 4, !dbg !1555
  %mul25 = mul nsw i32 %33, %conv20, !dbg !1555
  %add = add nsw i32 %mul25, %shl11, !dbg !1555
  %shr = ashr i32 %add, %sub9, !dbg !1555
  %conv27 = trunc i32 %shr to i16, !dbg !1555
  store i16 %conv27, ptr %dct, align 2, !dbg !1555
    #dbg_value(i64 1, !1538, !DIExpression(), !1554)
  %arrayidx19.1 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1555
  %34 = load i16, ptr %arrayidx19.1, align 2, !dbg !1555
  %conv20.1 = sext i16 %34 to i32, !dbg !1555
  %arrayidx24.1 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 1, !dbg !1555
  %35 = load i32, ptr %arrayidx24.1, align 4, !dbg !1555
  %mul25.1 = mul nsw i32 %35, %conv20.1, !dbg !1555
  %add.1 = add nsw i32 %mul25.1, %shl11, !dbg !1555
  %shr.1 = ashr i32 %add.1, %sub9, !dbg !1555
  %conv27.1 = trunc i32 %shr.1 to i16, !dbg !1555
  store i16 %conv27.1, ptr %arrayidx19.1, align 2, !dbg !1555
    #dbg_value(i64 2, !1538, !DIExpression(), !1554)
  %arrayidx19.2 = getelementptr inbounds i8, ptr %dct, i64 4, !dbg !1555
  %36 = load i16, ptr %arrayidx19.2, align 2, !dbg !1555
  %conv20.2 = sext i16 %36 to i32, !dbg !1555
  %arrayidx24.2 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 2, !dbg !1555
  %37 = load i32, ptr %arrayidx24.2, align 4, !dbg !1555
  %mul25.2 = mul nsw i32 %37, %conv20.2, !dbg !1555
  %add.2 = add nsw i32 %mul25.2, %shl11, !dbg !1555
  %shr.2 = ashr i32 %add.2, %sub9, !dbg !1555
  %conv27.2 = trunc i32 %shr.2 to i16, !dbg !1555
  store i16 %conv27.2, ptr %arrayidx19.2, align 2, !dbg !1555
    #dbg_value(i64 3, !1538, !DIExpression(), !1554)
  %arrayidx19.3 = getelementptr inbounds i8, ptr %dct, i64 6, !dbg !1555
  %38 = load i16, ptr %arrayidx19.3, align 2, !dbg !1555
  %conv20.3 = sext i16 %38 to i32, !dbg !1555
  %arrayidx24.3 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 3, !dbg !1555
  %39 = load i32, ptr %arrayidx24.3, align 4, !dbg !1555
  %mul25.3 = mul nsw i32 %39, %conv20.3, !dbg !1555
  %add.3 = add nsw i32 %mul25.3, %shl11, !dbg !1555
  %shr.3 = ashr i32 %add.3, %sub9, !dbg !1555
  %conv27.3 = trunc i32 %shr.3 to i16, !dbg !1555
  store i16 %conv27.3, ptr %arrayidx19.3, align 2, !dbg !1555
    #dbg_value(i64 4, !1538, !DIExpression(), !1554)
  %arrayidx19.4 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1555
  %40 = load i16, ptr %arrayidx19.4, align 2, !dbg !1555
  %conv20.4 = sext i16 %40 to i32, !dbg !1555
  %arrayidx24.4 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 4, !dbg !1555
  %41 = load i32, ptr %arrayidx24.4, align 4, !dbg !1555
  %mul25.4 = mul nsw i32 %41, %conv20.4, !dbg !1555
  %add.4 = add nsw i32 %mul25.4, %shl11, !dbg !1555
  %shr.4 = ashr i32 %add.4, %sub9, !dbg !1555
  %conv27.4 = trunc i32 %shr.4 to i16, !dbg !1555
  store i16 %conv27.4, ptr %arrayidx19.4, align 2, !dbg !1555
    #dbg_value(i64 5, !1538, !DIExpression(), !1554)
  %arrayidx19.5 = getelementptr inbounds i8, ptr %dct, i64 10, !dbg !1555
  %42 = load i16, ptr %arrayidx19.5, align 2, !dbg !1555
  %conv20.5 = sext i16 %42 to i32, !dbg !1555
  %arrayidx24.5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 5, !dbg !1555
  %43 = load i32, ptr %arrayidx24.5, align 4, !dbg !1555
  %mul25.5 = mul nsw i32 %43, %conv20.5, !dbg !1555
  %add.5 = add nsw i32 %mul25.5, %shl11, !dbg !1555
  %shr.5 = ashr i32 %add.5, %sub9, !dbg !1555
  %conv27.5 = trunc i32 %shr.5 to i16, !dbg !1555
  store i16 %conv27.5, ptr %arrayidx19.5, align 2, !dbg !1555
    #dbg_value(i64 6, !1538, !DIExpression(), !1554)
  %arrayidx19.6 = getelementptr inbounds i8, ptr %dct, i64 12, !dbg !1555
  %44 = load i16, ptr %arrayidx19.6, align 2, !dbg !1555
  %conv20.6 = sext i16 %44 to i32, !dbg !1555
  %arrayidx24.6 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 6, !dbg !1555
  %45 = load i32, ptr %arrayidx24.6, align 4, !dbg !1555
  %mul25.6 = mul nsw i32 %45, %conv20.6, !dbg !1555
  %add.6 = add nsw i32 %mul25.6, %shl11, !dbg !1555
  %shr.6 = ashr i32 %add.6, %sub9, !dbg !1555
  %conv27.6 = trunc i32 %shr.6 to i16, !dbg !1555
  store i16 %conv27.6, ptr %arrayidx19.6, align 2, !dbg !1555
    #dbg_value(i64 7, !1538, !DIExpression(), !1554)
  %arrayidx19.7 = getelementptr inbounds i8, ptr %dct, i64 14, !dbg !1555
  %46 = load i16, ptr %arrayidx19.7, align 2, !dbg !1555
  %conv20.7 = sext i16 %46 to i32, !dbg !1555
  %arrayidx24.7 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 7, !dbg !1555
  %47 = load i32, ptr %arrayidx24.7, align 4, !dbg !1555
  %mul25.7 = mul nsw i32 %47, %conv20.7, !dbg !1555
  %add.7 = add nsw i32 %mul25.7, %shl11, !dbg !1555
  %shr.7 = ashr i32 %add.7, %sub9, !dbg !1555
  %conv27.7 = trunc i32 %shr.7 to i16, !dbg !1555
  store i16 %conv27.7, ptr %arrayidx19.7, align 2, !dbg !1555
    #dbg_value(i64 8, !1538, !DIExpression(), !1554)
  %arrayidx19.8 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1555
  %48 = load i16, ptr %arrayidx19.8, align 2, !dbg !1555
  %conv20.8 = sext i16 %48 to i32, !dbg !1555
  %arrayidx24.8 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 8, !dbg !1555
  %49 = load i32, ptr %arrayidx24.8, align 4, !dbg !1555
  %mul25.8 = mul nsw i32 %49, %conv20.8, !dbg !1555
  %add.8 = add nsw i32 %mul25.8, %shl11, !dbg !1555
  %shr.8 = ashr i32 %add.8, %sub9, !dbg !1555
  %conv27.8 = trunc i32 %shr.8 to i16, !dbg !1555
  store i16 %conv27.8, ptr %arrayidx19.8, align 2, !dbg !1555
    #dbg_value(i64 9, !1538, !DIExpression(), !1554)
  %arrayidx19.9 = getelementptr inbounds i8, ptr %dct, i64 18, !dbg !1555
  %50 = load i16, ptr %arrayidx19.9, align 2, !dbg !1555
  %conv20.9 = sext i16 %50 to i32, !dbg !1555
  %arrayidx24.9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 9, !dbg !1555
  %51 = load i32, ptr %arrayidx24.9, align 4, !dbg !1555
  %mul25.9 = mul nsw i32 %51, %conv20.9, !dbg !1555
  %add.9 = add nsw i32 %mul25.9, %shl11, !dbg !1555
  %shr.9 = ashr i32 %add.9, %sub9, !dbg !1555
  %conv27.9 = trunc i32 %shr.9 to i16, !dbg !1555
  store i16 %conv27.9, ptr %arrayidx19.9, align 2, !dbg !1555
    #dbg_value(i64 10, !1538, !DIExpression(), !1554)
  %arrayidx19.10 = getelementptr inbounds i8, ptr %dct, i64 20, !dbg !1555
  %52 = load i16, ptr %arrayidx19.10, align 2, !dbg !1555
  %conv20.10 = sext i16 %52 to i32, !dbg !1555
  %arrayidx24.10 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 10, !dbg !1555
  %53 = load i32, ptr %arrayidx24.10, align 4, !dbg !1555
  %mul25.10 = mul nsw i32 %53, %conv20.10, !dbg !1555
  %add.10 = add nsw i32 %mul25.10, %shl11, !dbg !1555
  %shr.10 = ashr i32 %add.10, %sub9, !dbg !1555
  %conv27.10 = trunc i32 %shr.10 to i16, !dbg !1555
  store i16 %conv27.10, ptr %arrayidx19.10, align 2, !dbg !1555
    #dbg_value(i64 11, !1538, !DIExpression(), !1554)
  %arrayidx19.11 = getelementptr inbounds i8, ptr %dct, i64 22, !dbg !1555
  %54 = load i16, ptr %arrayidx19.11, align 2, !dbg !1555
  %conv20.11 = sext i16 %54 to i32, !dbg !1555
  %arrayidx24.11 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 11, !dbg !1555
  %55 = load i32, ptr %arrayidx24.11, align 4, !dbg !1555
  %mul25.11 = mul nsw i32 %55, %conv20.11, !dbg !1555
  %add.11 = add nsw i32 %mul25.11, %shl11, !dbg !1555
  %shr.11 = ashr i32 %add.11, %sub9, !dbg !1555
  %conv27.11 = trunc i32 %shr.11 to i16, !dbg !1555
  store i16 %conv27.11, ptr %arrayidx19.11, align 2, !dbg !1555
    #dbg_value(i64 12, !1538, !DIExpression(), !1554)
  %arrayidx19.12 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1555
  %56 = load i16, ptr %arrayidx19.12, align 2, !dbg !1555
  %conv20.12 = sext i16 %56 to i32, !dbg !1555
  %arrayidx24.12 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 12, !dbg !1555
  %57 = load i32, ptr %arrayidx24.12, align 4, !dbg !1555
  %mul25.12 = mul nsw i32 %57, %conv20.12, !dbg !1555
  %add.12 = add nsw i32 %mul25.12, %shl11, !dbg !1555
  %shr.12 = ashr i32 %add.12, %sub9, !dbg !1555
  %conv27.12 = trunc i32 %shr.12 to i16, !dbg !1555
  store i16 %conv27.12, ptr %arrayidx19.12, align 2, !dbg !1555
    #dbg_value(i64 13, !1538, !DIExpression(), !1554)
  %arrayidx19.13 = getelementptr inbounds i8, ptr %dct, i64 26, !dbg !1555
  %58 = load i16, ptr %arrayidx19.13, align 2, !dbg !1555
  %conv20.13 = sext i16 %58 to i32, !dbg !1555
  %arrayidx24.13 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 13, !dbg !1555
  %59 = load i32, ptr %arrayidx24.13, align 4, !dbg !1555
  %mul25.13 = mul nsw i32 %59, %conv20.13, !dbg !1555
  %add.13 = add nsw i32 %mul25.13, %shl11, !dbg !1555
  %shr.13 = ashr i32 %add.13, %sub9, !dbg !1555
  %conv27.13 = trunc i32 %shr.13 to i16, !dbg !1555
  store i16 %conv27.13, ptr %arrayidx19.13, align 2, !dbg !1555
    #dbg_value(i64 14, !1538, !DIExpression(), !1554)
  %arrayidx19.14 = getelementptr inbounds i8, ptr %dct, i64 28, !dbg !1555
  %60 = load i16, ptr %arrayidx19.14, align 2, !dbg !1555
  %conv20.14 = sext i16 %60 to i32, !dbg !1555
  %arrayidx24.14 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 14, !dbg !1555
  %61 = load i32, ptr %arrayidx24.14, align 4, !dbg !1555
  %mul25.14 = mul nsw i32 %61, %conv20.14, !dbg !1555
  %add.14 = add nsw i32 %mul25.14, %shl11, !dbg !1555
  %shr.14 = ashr i32 %add.14, %sub9, !dbg !1555
  %conv27.14 = trunc i32 %shr.14 to i16, !dbg !1555
  store i16 %conv27.14, ptr %arrayidx19.14, align 2, !dbg !1555
    #dbg_value(i64 15, !1538, !DIExpression(), !1554)
  %arrayidx19.15 = getelementptr inbounds i8, ptr %dct, i64 30, !dbg !1555
  %62 = load i16, ptr %arrayidx19.15, align 2, !dbg !1555
  %conv20.15 = sext i16 %62 to i32, !dbg !1555
  %arrayidx24.15 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 15, !dbg !1555
  %63 = load i32, ptr %arrayidx24.15, align 4, !dbg !1555
  %mul25.15 = mul nsw i32 %63, %conv20.15, !dbg !1555
  %add.15 = add nsw i32 %mul25.15, %shl11, !dbg !1555
  %shr.15 = ashr i32 %add.15, %sub9, !dbg !1555
    #dbg_value(i64 16, !1538, !DIExpression(), !1554)
  br label %if.end, !dbg !1549

if.end:                                           ; preds = %if.else, %for.cond.preheader
  %shr.15.sink = phi i32 [ %shr.15, %if.else ], [ %shl.15, %for.cond.preheader ]
  %arrayidx19.15.sink = phi ptr [ %arrayidx19.15, %if.else ], [ %arrayidx.15, %for.cond.preheader ]
  %conv27.15 = trunc i32 %shr.15.sink to i16, !dbg !1557
  store i16 %conv27.15, ptr %arrayidx19.15.sink, align 2, !dbg !1557
  ret void, !dbg !1549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #2 !dbg !1558 {
entry:
    #dbg_value(ptr %dct, !1560, !DIExpression(), !1574)
    #dbg_value(ptr %dequant_mf, !1561, !DIExpression(), !1574)
    #dbg_value(i32 %i_qp, !1562, !DIExpression(), !1574)
  %div = sdiv i32 %i_qp, 6, !dbg !1575
  %rem7 = srem i32 %i_qp, 6, !dbg !1576
    #dbg_value(i32 %div, !1563, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value), !1574)
  %cmp = icmp sgt i32 %i_qp, 35, !dbg !1577
  %0 = load i16, ptr %dct, align 2, !dbg !1578
  br i1 %cmp, label %if.then, label %if.else, !dbg !1579

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %div, -6, !dbg !1580
    #dbg_value(i32 %sub, !1563, !DIExpression(), !1574)
  %rem = urem i32 %i_qp, 6, !dbg !1581
  %idxprom = zext nneg i32 %rem to i64, !dbg !1582
  %arrayidx = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom, !dbg !1582
  %1 = load i32, ptr %arrayidx, align 4, !dbg !1582
  %shl = shl i32 %1, %sub, !dbg !1583
    #dbg_value(i32 %shl, !1564, !DIExpression(), !1584)
    #dbg_value(i32 0, !1567, !DIExpression(), !1585)
  %2 = trunc i32 %shl to i16
    #dbg_value(i32 0, !1567, !DIExpression(), !1585)
    #dbg_value(i64 0, !1567, !DIExpression(), !1585)
    #dbg_value(i64 1, !1567, !DIExpression(), !1585)
  %arrayidx4.1 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1586
  %3 = load i16, ptr %arrayidx4.1, align 2, !dbg !1588
    #dbg_value(i64 2, !1567, !DIExpression(), !1585)
  %arrayidx4.2 = getelementptr inbounds i8, ptr %dct, i64 4, !dbg !1586
  %4 = load i16, ptr %arrayidx4.2, align 2, !dbg !1588
    #dbg_value(i64 3, !1567, !DIExpression(), !1585)
  %arrayidx4.3 = getelementptr inbounds i8, ptr %dct, i64 6, !dbg !1586
  %5 = load i16, ptr %arrayidx4.3, align 2, !dbg !1588
    #dbg_value(i64 4, !1567, !DIExpression(), !1585)
  %arrayidx4.4 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1586
  %6 = load i16, ptr %arrayidx4.4, align 2, !dbg !1588
    #dbg_value(i64 5, !1567, !DIExpression(), !1585)
  %arrayidx4.5 = getelementptr inbounds i8, ptr %dct, i64 10, !dbg !1586
  %7 = load i16, ptr %arrayidx4.5, align 2, !dbg !1588
    #dbg_value(i64 6, !1567, !DIExpression(), !1585)
  %arrayidx4.6 = getelementptr inbounds i8, ptr %dct, i64 12, !dbg !1586
  %8 = load i16, ptr %arrayidx4.6, align 2, !dbg !1588
    #dbg_value(i64 7, !1567, !DIExpression(), !1585)
  %arrayidx4.7 = getelementptr inbounds i8, ptr %dct, i64 14, !dbg !1586
  %9 = load i16, ptr %arrayidx4.7, align 2, !dbg !1588
  %10 = insertelement <8 x i16> poison, i16 %0, i64 0, !dbg !1588
  %11 = insertelement <8 x i16> %10, i16 %3, i64 1, !dbg !1588
  %12 = insertelement <8 x i16> %11, i16 %4, i64 2, !dbg !1588
  %13 = insertelement <8 x i16> %12, i16 %5, i64 3, !dbg !1588
  %14 = insertelement <8 x i16> %13, i16 %6, i64 4, !dbg !1588
  %15 = insertelement <8 x i16> %14, i16 %7, i64 5, !dbg !1588
  %16 = insertelement <8 x i16> %15, i16 %8, i64 6, !dbg !1588
  %17 = insertelement <8 x i16> %16, i16 %9, i64 7, !dbg !1588
  %18 = insertelement <8 x i16> poison, i16 %2, i64 0, !dbg !1588
  %19 = shufflevector <8 x i16> %18, <8 x i16> poison, <8 x i32> zeroinitializer, !dbg !1588
  %20 = mul <8 x i16> %17, %19, !dbg !1588
  store <8 x i16> %20, ptr %dct, align 2, !dbg !1588
    #dbg_value(i64 8, !1567, !DIExpression(), !1585)
  %arrayidx4.8 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1586
    #dbg_value(i64 9, !1567, !DIExpression(), !1585)
    #dbg_value(i64 10, !1567, !DIExpression(), !1585)
    #dbg_value(i64 11, !1567, !DIExpression(), !1585)
    #dbg_value(i64 12, !1567, !DIExpression(), !1585)
    #dbg_value(i64 13, !1567, !DIExpression(), !1585)
    #dbg_value(i64 14, !1567, !DIExpression(), !1585)
    #dbg_value(i64 15, !1567, !DIExpression(), !1585)
  %21 = load <8 x i16>, ptr %arrayidx4.8, align 2, !dbg !1588
  %22 = mul <8 x i16> %21, %19, !dbg !1588
  store <8 x i16> %22, ptr %arrayidx4.8, align 2, !dbg !1588
    #dbg_value(i64 16, !1567, !DIExpression(), !1585)
  br label %if.end, !dbg !1589

if.else:                                          ; preds = %entry
  %idxprom8 = sext i32 %rem7 to i64, !dbg !1590
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom8, !dbg !1590
  %23 = load i32, ptr %arrayidx9, align 4, !dbg !1590
    #dbg_value(i32 %23, !1569, !DIExpression(), !1591)
  %sub11 = sub nsw i32 6, %div, !dbg !1592
  %sub12 = sub nsw i32 5, %div, !dbg !1593
  %shl13 = shl nuw i32 1, %sub12, !dbg !1594
    #dbg_value(i32 %shl13, !1571, !DIExpression(), !1591)
    #dbg_value(i32 0, !1572, !DIExpression(), !1595)
    #dbg_value(i64 0, !1572, !DIExpression(), !1595)
  %conv22 = sext i16 %0 to i32, !dbg !1596
  %mul23 = mul nsw i32 %23, %conv22, !dbg !1598
  %add = add nsw i32 %mul23, %shl13, !dbg !1599
  %shr = ashr i32 %add, %sub11, !dbg !1600
  %conv25 = trunc i32 %shr to i16, !dbg !1601
  store i16 %conv25, ptr %dct, align 2, !dbg !1602
    #dbg_value(i64 1, !1572, !DIExpression(), !1595)
  %arrayidx21.1 = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1596
    #dbg_value(i64 2, !1572, !DIExpression(), !1595)
    #dbg_value(i64 3, !1572, !DIExpression(), !1595)
    #dbg_value(i64 4, !1572, !DIExpression(), !1595)
    #dbg_value(i64 5, !1572, !DIExpression(), !1595)
    #dbg_value(i64 6, !1572, !DIExpression(), !1595)
    #dbg_value(i64 7, !1572, !DIExpression(), !1595)
    #dbg_value(i64 8, !1572, !DIExpression(), !1595)
  %24 = load <8 x i16>, ptr %arrayidx21.1, align 2, !dbg !1596
  %25 = sext <8 x i16> %24 to <8 x i32>, !dbg !1596
  %26 = insertelement <8 x i32> poison, i32 %23, i64 0, !dbg !1598
  %27 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1598
  %28 = mul nsw <8 x i32> %27, %25, !dbg !1598
  %29 = insertelement <8 x i32> poison, i32 %shl13, i64 0, !dbg !1599
  %30 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1599
  %31 = add nsw <8 x i32> %28, %30, !dbg !1599
  %32 = insertelement <8 x i32> poison, i32 %sub11, i64 0, !dbg !1600
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> zeroinitializer, !dbg !1600
  %34 = ashr <8 x i32> %31, %33, !dbg !1600
  %35 = trunc <8 x i32> %34 to <8 x i16>, !dbg !1601
  store <8 x i16> %35, ptr %arrayidx21.1, align 2, !dbg !1602
    #dbg_value(i64 9, !1572, !DIExpression(), !1595)
  %arrayidx21.9 = getelementptr inbounds i8, ptr %dct, i64 18, !dbg !1596
  %36 = load i16, ptr %arrayidx21.9, align 2, !dbg !1596
  %conv22.9 = sext i16 %36 to i32, !dbg !1596
  %mul23.9 = mul nsw i32 %23, %conv22.9, !dbg !1598
  %add.9 = add nsw i32 %mul23.9, %shl13, !dbg !1599
  %shr.9 = ashr i32 %add.9, %sub11, !dbg !1600
  %conv25.9 = trunc i32 %shr.9 to i16, !dbg !1601
  store i16 %conv25.9, ptr %arrayidx21.9, align 2, !dbg !1602
    #dbg_value(i64 10, !1572, !DIExpression(), !1595)
  %arrayidx21.10 = getelementptr inbounds i8, ptr %dct, i64 20, !dbg !1596
  %37 = load i16, ptr %arrayidx21.10, align 2, !dbg !1596
  %conv22.10 = sext i16 %37 to i32, !dbg !1596
  %mul23.10 = mul nsw i32 %23, %conv22.10, !dbg !1598
  %add.10 = add nsw i32 %mul23.10, %shl13, !dbg !1599
  %shr.10 = ashr i32 %add.10, %sub11, !dbg !1600
  %conv25.10 = trunc i32 %shr.10 to i16, !dbg !1601
  store i16 %conv25.10, ptr %arrayidx21.10, align 2, !dbg !1602
    #dbg_value(i64 11, !1572, !DIExpression(), !1595)
  %arrayidx21.11 = getelementptr inbounds i8, ptr %dct, i64 22, !dbg !1596
  %38 = load i16, ptr %arrayidx21.11, align 2, !dbg !1596
  %conv22.11 = sext i16 %38 to i32, !dbg !1596
  %mul23.11 = mul nsw i32 %23, %conv22.11, !dbg !1598
  %add.11 = add nsw i32 %mul23.11, %shl13, !dbg !1599
  %shr.11 = ashr i32 %add.11, %sub11, !dbg !1600
  %conv25.11 = trunc i32 %shr.11 to i16, !dbg !1601
  store i16 %conv25.11, ptr %arrayidx21.11, align 2, !dbg !1602
    #dbg_value(i64 12, !1572, !DIExpression(), !1595)
  %arrayidx21.12 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1596
  %39 = load i16, ptr %arrayidx21.12, align 2, !dbg !1596
  %conv22.12 = sext i16 %39 to i32, !dbg !1596
  %mul23.12 = mul nsw i32 %23, %conv22.12, !dbg !1598
  %add.12 = add nsw i32 %mul23.12, %shl13, !dbg !1599
  %shr.12 = ashr i32 %add.12, %sub11, !dbg !1600
  %conv25.12 = trunc i32 %shr.12 to i16, !dbg !1601
  store i16 %conv25.12, ptr %arrayidx21.12, align 2, !dbg !1602
    #dbg_value(i64 13, !1572, !DIExpression(), !1595)
  %arrayidx21.13 = getelementptr inbounds i8, ptr %dct, i64 26, !dbg !1596
  %40 = load i16, ptr %arrayidx21.13, align 2, !dbg !1596
  %conv22.13 = sext i16 %40 to i32, !dbg !1596
  %mul23.13 = mul nsw i32 %23, %conv22.13, !dbg !1598
  %add.13 = add nsw i32 %mul23.13, %shl13, !dbg !1599
  %shr.13 = ashr i32 %add.13, %sub11, !dbg !1600
  %conv25.13 = trunc i32 %shr.13 to i16, !dbg !1601
  store i16 %conv25.13, ptr %arrayidx21.13, align 2, !dbg !1602
    #dbg_value(i64 14, !1572, !DIExpression(), !1595)
  %arrayidx21.14 = getelementptr inbounds i8, ptr %dct, i64 28, !dbg !1596
  %41 = load i16, ptr %arrayidx21.14, align 2, !dbg !1596
  %conv22.14 = sext i16 %41 to i32, !dbg !1596
  %mul23.14 = mul nsw i32 %23, %conv22.14, !dbg !1598
  %add.14 = add nsw i32 %mul23.14, %shl13, !dbg !1599
  %shr.14 = ashr i32 %add.14, %sub11, !dbg !1600
  %conv25.14 = trunc i32 %shr.14 to i16, !dbg !1601
  store i16 %conv25.14, ptr %arrayidx21.14, align 2, !dbg !1602
    #dbg_value(i64 15, !1572, !DIExpression(), !1595)
  %arrayidx21.15 = getelementptr inbounds i8, ptr %dct, i64 30, !dbg !1596
  %42 = load i16, ptr %arrayidx21.15, align 2, !dbg !1596
  %conv22.15 = sext i16 %42 to i32, !dbg !1596
  %mul23.15 = mul nsw i32 %23, %conv22.15, !dbg !1598
  %add.15 = add nsw i32 %mul23.15, %shl13, !dbg !1599
  %shr.15 = ashr i32 %add.15, %sub11, !dbg !1600
  %conv25.15 = trunc i32 %shr.15 to i16, !dbg !1601
  store i16 %conv25.15, ptr %arrayidx21.15, align 2, !dbg !1602
    #dbg_value(i64 16, !1572, !DIExpression(), !1595)
  br label %if.end, !dbg !1589

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1589
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #1 !dbg !1603 {
entry:
    #dbg_value(ptr %dct, !1605, !DIExpression(), !1618)
    #dbg_value(ptr %dequant_mf, !1606, !DIExpression(), !1618)
    #dbg_value(i32 %i_qp, !1607, !DIExpression(), !1618)
  %rem = srem i32 %i_qp, 6, !dbg !1619
    #dbg_value(i32 %rem, !1608, !DIExpression(), !1618)
  %div = sdiv i32 %i_qp, 6, !dbg !1620
  %sub = add nsw i32 %div, -6, !dbg !1621
    #dbg_value(i32 %sub, !1609, !DIExpression(), !1618)
  %cmp = icmp sgt i32 %i_qp, 35, !dbg !1622
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !1623

for.cond.preheader:                               ; preds = %entry
  %idxprom2 = zext nneg i32 %rem to i64
    #dbg_value(i32 0, !1610, !DIExpression(), !1624)
  %scevgep73 = getelementptr i8, ptr %dct, i64 128, !dbg !1625
  %0 = shl nuw nsw i64 %idxprom2, 8, !dbg !1625
  %scevgep74 = getelementptr i8, ptr %dequant_mf, i64 %0, !dbg !1625
  %1 = getelementptr i8, ptr %dequant_mf, i64 %0, !dbg !1625
  %scevgep75 = getelementptr i8, ptr %1, i64 256, !dbg !1625
  %bound076 = icmp ugt ptr %scevgep75, %dct, !dbg !1625
  %bound177 = icmp ult ptr %scevgep74, %scevgep73, !dbg !1625
  %found.conflict78 = and i1 %bound076, %bound177, !dbg !1625
  br i1 %found.conflict78, label %for.body, label %vector.body83, !dbg !1625

vector.body83:                                    ; preds = %for.cond.preheader
  %broadcast.splatinsert93 = insertelement <4 x i32> poison, i32 %sub, i64 0, !dbg !1625
  %broadcast.splat94 = shufflevector <4 x i32> %broadcast.splatinsert93, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1625
  %2 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1626
  %3 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1626
  %4 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1626
  %wide.load85 = load <4 x i16>, ptr %dct, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load86 = load <4 x i16>, ptr %2, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load87 = load <4 x i16>, ptr %3, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load88 = load <4 x i16>, ptr %4, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %5 = zext <4 x i16> %wide.load85 to <4 x i32>, !dbg !1626
  %6 = zext <4 x i16> %wide.load86 to <4 x i32>, !dbg !1626
  %7 = zext <4 x i16> %wide.load87 to <4 x i32>, !dbg !1626
  %8 = zext <4 x i16> %wide.load88 to <4 x i32>, !dbg !1626
  %9 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 0, !dbg !1626
  %10 = getelementptr inbounds i8, ptr %9, i64 16, !dbg !1626
  %11 = getelementptr inbounds i8, ptr %9, i64 32, !dbg !1626
  %12 = getelementptr inbounds i8, ptr %9, i64 48, !dbg !1626
  %wide.load89 = load <4 x i32>, ptr %9, align 4, !dbg !1626, !alias.scope !1631
  %wide.load90 = load <4 x i32>, ptr %10, align 4, !dbg !1626, !alias.scope !1631
  %wide.load91 = load <4 x i32>, ptr %11, align 4, !dbg !1626, !alias.scope !1631
  %wide.load92 = load <4 x i32>, ptr %12, align 4, !dbg !1626, !alias.scope !1631
  %13 = mul <4 x i32> %wide.load89, %5, !dbg !1626
  %14 = mul <4 x i32> %wide.load90, %6, !dbg !1626
  %15 = mul <4 x i32> %wide.load91, %7, !dbg !1626
  %16 = mul <4 x i32> %wide.load92, %8, !dbg !1626
  %17 = shl <4 x i32> %13, %broadcast.splat94, !dbg !1626
  %18 = shl <4 x i32> %14, %broadcast.splat94, !dbg !1626
  %19 = shl <4 x i32> %15, %broadcast.splat94, !dbg !1626
  %20 = shl <4 x i32> %16, %broadcast.splat94, !dbg !1626
  %21 = trunc <4 x i32> %17 to <4 x i16>, !dbg !1626
  %22 = trunc <4 x i32> %18 to <4 x i16>, !dbg !1626
  %23 = trunc <4 x i32> %19 to <4 x i16>, !dbg !1626
  %24 = trunc <4 x i32> %20 to <4 x i16>, !dbg !1626
  store <4 x i16> %21, ptr %dct, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %22, ptr %2, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %23, ptr %3, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %24, ptr %4, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %25 = getelementptr inbounds i8, ptr %dct, i64 32, !dbg !1626
  %26 = getelementptr inbounds i8, ptr %dct, i64 40, !dbg !1626
  %27 = getelementptr inbounds i8, ptr %dct, i64 48, !dbg !1626
  %28 = getelementptr inbounds i8, ptr %dct, i64 56, !dbg !1626
  %wide.load85.1 = load <4 x i16>, ptr %25, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load86.1 = load <4 x i16>, ptr %26, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load87.1 = load <4 x i16>, ptr %27, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load88.1 = load <4 x i16>, ptr %28, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %29 = zext <4 x i16> %wide.load85.1 to <4 x i32>, !dbg !1626
  %30 = zext <4 x i16> %wide.load86.1 to <4 x i32>, !dbg !1626
  %31 = zext <4 x i16> %wide.load87.1 to <4 x i32>, !dbg !1626
  %32 = zext <4 x i16> %wide.load88.1 to <4 x i32>, !dbg !1626
  %33 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 16, !dbg !1626
  %34 = getelementptr inbounds i8, ptr %33, i64 16, !dbg !1626
  %35 = getelementptr inbounds i8, ptr %33, i64 32, !dbg !1626
  %36 = getelementptr inbounds i8, ptr %33, i64 48, !dbg !1626
  %wide.load89.1 = load <4 x i32>, ptr %33, align 4, !dbg !1626, !alias.scope !1631
  %wide.load90.1 = load <4 x i32>, ptr %34, align 4, !dbg !1626, !alias.scope !1631
  %wide.load91.1 = load <4 x i32>, ptr %35, align 4, !dbg !1626, !alias.scope !1631
  %wide.load92.1 = load <4 x i32>, ptr %36, align 4, !dbg !1626, !alias.scope !1631
  %37 = mul <4 x i32> %wide.load89.1, %29, !dbg !1626
  %38 = mul <4 x i32> %wide.load90.1, %30, !dbg !1626
  %39 = mul <4 x i32> %wide.load91.1, %31, !dbg !1626
  %40 = mul <4 x i32> %wide.load92.1, %32, !dbg !1626
  %41 = shl <4 x i32> %37, %broadcast.splat94, !dbg !1626
  %42 = shl <4 x i32> %38, %broadcast.splat94, !dbg !1626
  %43 = shl <4 x i32> %39, %broadcast.splat94, !dbg !1626
  %44 = shl <4 x i32> %40, %broadcast.splat94, !dbg !1626
  %45 = trunc <4 x i32> %41 to <4 x i16>, !dbg !1626
  %46 = trunc <4 x i32> %42 to <4 x i16>, !dbg !1626
  %47 = trunc <4 x i32> %43 to <4 x i16>, !dbg !1626
  %48 = trunc <4 x i32> %44 to <4 x i16>, !dbg !1626
  store <4 x i16> %45, ptr %25, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %46, ptr %26, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %47, ptr %27, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %48, ptr %28, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %49 = getelementptr inbounds i8, ptr %dct, i64 64, !dbg !1626
  %50 = getelementptr inbounds i8, ptr %dct, i64 72, !dbg !1626
  %51 = getelementptr inbounds i8, ptr %dct, i64 80, !dbg !1626
  %52 = getelementptr inbounds i8, ptr %dct, i64 88, !dbg !1626
  %wide.load85.2 = load <4 x i16>, ptr %49, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load86.2 = load <4 x i16>, ptr %50, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load87.2 = load <4 x i16>, ptr %51, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load88.2 = load <4 x i16>, ptr %52, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %53 = zext <4 x i16> %wide.load85.2 to <4 x i32>, !dbg !1626
  %54 = zext <4 x i16> %wide.load86.2 to <4 x i32>, !dbg !1626
  %55 = zext <4 x i16> %wide.load87.2 to <4 x i32>, !dbg !1626
  %56 = zext <4 x i16> %wide.load88.2 to <4 x i32>, !dbg !1626
  %57 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 32, !dbg !1626
  %58 = getelementptr inbounds i8, ptr %57, i64 16, !dbg !1626
  %59 = getelementptr inbounds i8, ptr %57, i64 32, !dbg !1626
  %60 = getelementptr inbounds i8, ptr %57, i64 48, !dbg !1626
  %wide.load89.2 = load <4 x i32>, ptr %57, align 4, !dbg !1626, !alias.scope !1631
  %wide.load90.2 = load <4 x i32>, ptr %58, align 4, !dbg !1626, !alias.scope !1631
  %wide.load91.2 = load <4 x i32>, ptr %59, align 4, !dbg !1626, !alias.scope !1631
  %wide.load92.2 = load <4 x i32>, ptr %60, align 4, !dbg !1626, !alias.scope !1631
  %61 = mul <4 x i32> %wide.load89.2, %53, !dbg !1626
  %62 = mul <4 x i32> %wide.load90.2, %54, !dbg !1626
  %63 = mul <4 x i32> %wide.load91.2, %55, !dbg !1626
  %64 = mul <4 x i32> %wide.load92.2, %56, !dbg !1626
  %65 = shl <4 x i32> %61, %broadcast.splat94, !dbg !1626
  %66 = shl <4 x i32> %62, %broadcast.splat94, !dbg !1626
  %67 = shl <4 x i32> %63, %broadcast.splat94, !dbg !1626
  %68 = shl <4 x i32> %64, %broadcast.splat94, !dbg !1626
  %69 = trunc <4 x i32> %65 to <4 x i16>, !dbg !1626
  %70 = trunc <4 x i32> %66 to <4 x i16>, !dbg !1626
  %71 = trunc <4 x i32> %67 to <4 x i16>, !dbg !1626
  %72 = trunc <4 x i32> %68 to <4 x i16>, !dbg !1626
  store <4 x i16> %69, ptr %49, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %70, ptr %50, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %71, ptr %51, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %72, ptr %52, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %73 = getelementptr inbounds i8, ptr %dct, i64 96, !dbg !1626
  %74 = getelementptr inbounds i8, ptr %dct, i64 104, !dbg !1626
  %75 = getelementptr inbounds i8, ptr %dct, i64 112, !dbg !1626
  %76 = getelementptr inbounds i8, ptr %dct, i64 120, !dbg !1626
  %wide.load85.3 = load <4 x i16>, ptr %73, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load86.3 = load <4 x i16>, ptr %74, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load87.3 = load <4 x i16>, ptr %75, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %wide.load88.3 = load <4 x i16>, ptr %76, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  %77 = zext <4 x i16> %wide.load85.3 to <4 x i32>, !dbg !1626
  %78 = zext <4 x i16> %wide.load86.3 to <4 x i32>, !dbg !1626
  %79 = zext <4 x i16> %wide.load87.3 to <4 x i32>, !dbg !1626
  %80 = zext <4 x i16> %wide.load88.3 to <4 x i32>, !dbg !1626
  %81 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 48, !dbg !1626
  %82 = getelementptr inbounds i8, ptr %81, i64 16, !dbg !1626
  %83 = getelementptr inbounds i8, ptr %81, i64 32, !dbg !1626
  %84 = getelementptr inbounds i8, ptr %81, i64 48, !dbg !1626
  %wide.load89.3 = load <4 x i32>, ptr %81, align 4, !dbg !1626, !alias.scope !1631
  %wide.load90.3 = load <4 x i32>, ptr %82, align 4, !dbg !1626, !alias.scope !1631
  %wide.load91.3 = load <4 x i32>, ptr %83, align 4, !dbg !1626, !alias.scope !1631
  %wide.load92.3 = load <4 x i32>, ptr %84, align 4, !dbg !1626, !alias.scope !1631
  %85 = mul <4 x i32> %wide.load89.3, %77, !dbg !1626
  %86 = mul <4 x i32> %wide.load90.3, %78, !dbg !1626
  %87 = mul <4 x i32> %wide.load91.3, %79, !dbg !1626
  %88 = mul <4 x i32> %wide.load92.3, %80, !dbg !1626
  %89 = shl <4 x i32> %85, %broadcast.splat94, !dbg !1626
  %90 = shl <4 x i32> %86, %broadcast.splat94, !dbg !1626
  %91 = shl <4 x i32> %87, %broadcast.splat94, !dbg !1626
  %92 = shl <4 x i32> %88, %broadcast.splat94, !dbg !1626
  %93 = trunc <4 x i32> %89 to <4 x i16>, !dbg !1626
  %94 = trunc <4 x i32> %90 to <4 x i16>, !dbg !1626
  %95 = trunc <4 x i32> %91 to <4 x i16>, !dbg !1626
  %96 = trunc <4 x i32> %92 to <4 x i16>, !dbg !1626
  store <4 x i16> %93, ptr %73, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %94, ptr %74, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %95, ptr %75, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  store <4 x i16> %96, ptr %76, align 2, !dbg !1626, !alias.scope !1628, !noalias !1631
  br label %if.end, !dbg !1633

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.1, %for.body ], [ 0, %for.cond.preheader ]
    #dbg_value(i64 %indvars.iv55, !1610, !DIExpression(), !1624)
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv55, !dbg !1626
  %97 = load i16, ptr %arrayidx, align 2, !dbg !1626
  %conv = zext i16 %97 to i32, !dbg !1626
  %arrayidx5 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv55, !dbg !1626
  %98 = load i32, ptr %arrayidx5, align 4, !dbg !1626
  %mul = mul i32 %98, %conv, !dbg !1626
  %shl = shl i32 %mul, %sub, !dbg !1626
  %conv6 = trunc i32 %shl to i16, !dbg !1626
  store i16 %conv6, ptr %arrayidx, align 2, !dbg !1626
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1, !dbg !1634
    #dbg_value(i64 %indvars.iv.next56, !1610, !DIExpression(), !1624)
  %arrayidx.1 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.next56, !dbg !1626
  %99 = load i16, ptr %arrayidx.1, align 2, !dbg !1626
  %conv.1 = zext i16 %99 to i32, !dbg !1626
  %arrayidx5.1 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv.next56, !dbg !1626
  %100 = load i32, ptr %arrayidx5.1, align 4, !dbg !1626
  %mul.1 = mul i32 %100, %conv.1, !dbg !1626
  %shl.1 = shl i32 %mul.1, %sub, !dbg !1626
  %conv6.1 = trunc i32 %shl.1 to i16, !dbg !1626
  store i16 %conv6.1, ptr %arrayidx.1, align 2, !dbg !1626
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2, !dbg !1634
    #dbg_value(i64 %indvars.iv.next56.1, !1610, !DIExpression(), !1624)
  %exitcond58.not.1 = icmp eq i64 %indvars.iv.next56.1, 64, !dbg !1635
  br i1 %exitcond58.not.1, label %if.end, label %for.body, !dbg !1625, !llvm.loop !1636

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 6, %div, !dbg !1638
  %sub10 = sub nsw i32 5, %div, !dbg !1639
  %shl11 = shl nuw i32 1, %sub10, !dbg !1640
    #dbg_value(i32 %shl11, !1614, !DIExpression(), !1641)
    #dbg_value(i32 0, !1616, !DIExpression(), !1642)
  %idxprom21 = sext i32 %rem to i64
  %scevgep = getelementptr i8, ptr %dct, i64 128, !dbg !1643
  %101 = shl nsw i64 %idxprom21, 8, !dbg !1643
  %scevgep61 = getelementptr i8, ptr %dequant_mf, i64 %101, !dbg !1643
  %102 = getelementptr i8, ptr %dequant_mf, i64 %101, !dbg !1643
  %scevgep62 = getelementptr i8, ptr %102, i64 256, !dbg !1643
  %bound0 = icmp ugt ptr %scevgep62, %dct, !dbg !1643
  %bound1 = icmp ult ptr %scevgep61, %scevgep, !dbg !1643
  %found.conflict = and i1 %bound0, %bound1, !dbg !1643
  br i1 %found.conflict, label %for.body17, label %vector.body, !dbg !1643

vector.body:                                      ; preds = %if.else
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %sub9, i64 0, !dbg !1643
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1643
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %shl11, i64 0, !dbg !1643
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !1643
  %103 = getelementptr inbounds i8, ptr %dct, i64 8, !dbg !1644
  %104 = getelementptr inbounds i8, ptr %dct, i64 16, !dbg !1644
  %105 = getelementptr inbounds i8, ptr %dct, i64 24, !dbg !1644
  %wide.load = load <4 x i16>, ptr %dct, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load63 = load <4 x i16>, ptr %103, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load64 = load <4 x i16>, ptr %104, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load65 = load <4 x i16>, ptr %105, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %106 = sext <4 x i16> %wide.load to <4 x i32>, !dbg !1644
  %107 = sext <4 x i16> %wide.load63 to <4 x i32>, !dbg !1644
  %108 = sext <4 x i16> %wide.load64 to <4 x i32>, !dbg !1644
  %109 = sext <4 x i16> %wide.load65 to <4 x i32>, !dbg !1644
  %110 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 0, !dbg !1644
  %111 = getelementptr inbounds i8, ptr %110, i64 16, !dbg !1644
  %112 = getelementptr inbounds i8, ptr %110, i64 32, !dbg !1644
  %113 = getelementptr inbounds i8, ptr %110, i64 48, !dbg !1644
  %wide.load66 = load <4 x i32>, ptr %110, align 4, !dbg !1644, !alias.scope !1649
  %wide.load67 = load <4 x i32>, ptr %111, align 4, !dbg !1644, !alias.scope !1649
  %wide.load68 = load <4 x i32>, ptr %112, align 4, !dbg !1644, !alias.scope !1649
  %wide.load69 = load <4 x i32>, ptr %113, align 4, !dbg !1644, !alias.scope !1649
  %114 = mul nsw <4 x i32> %wide.load66, %106, !dbg !1644
  %115 = mul nsw <4 x i32> %wide.load67, %107, !dbg !1644
  %116 = mul nsw <4 x i32> %wide.load68, %108, !dbg !1644
  %117 = mul nsw <4 x i32> %wide.load69, %109, !dbg !1644
  %118 = add nsw <4 x i32> %114, %broadcast.splat, !dbg !1644
  %119 = add nsw <4 x i32> %115, %broadcast.splat, !dbg !1644
  %120 = add nsw <4 x i32> %116, %broadcast.splat, !dbg !1644
  %121 = add nsw <4 x i32> %117, %broadcast.splat, !dbg !1644
  %122 = ashr <4 x i32> %118, %broadcast.splat71, !dbg !1644
  %123 = ashr <4 x i32> %119, %broadcast.splat71, !dbg !1644
  %124 = ashr <4 x i32> %120, %broadcast.splat71, !dbg !1644
  %125 = ashr <4 x i32> %121, %broadcast.splat71, !dbg !1644
  %126 = trunc <4 x i32> %122 to <4 x i16>, !dbg !1644
  %127 = trunc <4 x i32> %123 to <4 x i16>, !dbg !1644
  %128 = trunc <4 x i32> %124 to <4 x i16>, !dbg !1644
  %129 = trunc <4 x i32> %125 to <4 x i16>, !dbg !1644
  store <4 x i16> %126, ptr %dct, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %127, ptr %103, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %128, ptr %104, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %129, ptr %105, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %130 = getelementptr inbounds i8, ptr %dct, i64 32, !dbg !1644
  %131 = getelementptr inbounds i8, ptr %dct, i64 40, !dbg !1644
  %132 = getelementptr inbounds i8, ptr %dct, i64 48, !dbg !1644
  %133 = getelementptr inbounds i8, ptr %dct, i64 56, !dbg !1644
  %wide.load.1 = load <4 x i16>, ptr %130, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load63.1 = load <4 x i16>, ptr %131, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load64.1 = load <4 x i16>, ptr %132, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load65.1 = load <4 x i16>, ptr %133, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %134 = sext <4 x i16> %wide.load.1 to <4 x i32>, !dbg !1644
  %135 = sext <4 x i16> %wide.load63.1 to <4 x i32>, !dbg !1644
  %136 = sext <4 x i16> %wide.load64.1 to <4 x i32>, !dbg !1644
  %137 = sext <4 x i16> %wide.load65.1 to <4 x i32>, !dbg !1644
  %138 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 16, !dbg !1644
  %139 = getelementptr inbounds i8, ptr %138, i64 16, !dbg !1644
  %140 = getelementptr inbounds i8, ptr %138, i64 32, !dbg !1644
  %141 = getelementptr inbounds i8, ptr %138, i64 48, !dbg !1644
  %wide.load66.1 = load <4 x i32>, ptr %138, align 4, !dbg !1644, !alias.scope !1649
  %wide.load67.1 = load <4 x i32>, ptr %139, align 4, !dbg !1644, !alias.scope !1649
  %wide.load68.1 = load <4 x i32>, ptr %140, align 4, !dbg !1644, !alias.scope !1649
  %wide.load69.1 = load <4 x i32>, ptr %141, align 4, !dbg !1644, !alias.scope !1649
  %142 = mul nsw <4 x i32> %wide.load66.1, %134, !dbg !1644
  %143 = mul nsw <4 x i32> %wide.load67.1, %135, !dbg !1644
  %144 = mul nsw <4 x i32> %wide.load68.1, %136, !dbg !1644
  %145 = mul nsw <4 x i32> %wide.load69.1, %137, !dbg !1644
  %146 = add nsw <4 x i32> %142, %broadcast.splat, !dbg !1644
  %147 = add nsw <4 x i32> %143, %broadcast.splat, !dbg !1644
  %148 = add nsw <4 x i32> %144, %broadcast.splat, !dbg !1644
  %149 = add nsw <4 x i32> %145, %broadcast.splat, !dbg !1644
  %150 = ashr <4 x i32> %146, %broadcast.splat71, !dbg !1644
  %151 = ashr <4 x i32> %147, %broadcast.splat71, !dbg !1644
  %152 = ashr <4 x i32> %148, %broadcast.splat71, !dbg !1644
  %153 = ashr <4 x i32> %149, %broadcast.splat71, !dbg !1644
  %154 = trunc <4 x i32> %150 to <4 x i16>, !dbg !1644
  %155 = trunc <4 x i32> %151 to <4 x i16>, !dbg !1644
  %156 = trunc <4 x i32> %152 to <4 x i16>, !dbg !1644
  %157 = trunc <4 x i32> %153 to <4 x i16>, !dbg !1644
  store <4 x i16> %154, ptr %130, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %155, ptr %131, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %156, ptr %132, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %157, ptr %133, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %158 = getelementptr inbounds i8, ptr %dct, i64 64, !dbg !1644
  %159 = getelementptr inbounds i8, ptr %dct, i64 72, !dbg !1644
  %160 = getelementptr inbounds i8, ptr %dct, i64 80, !dbg !1644
  %161 = getelementptr inbounds i8, ptr %dct, i64 88, !dbg !1644
  %wide.load.2 = load <4 x i16>, ptr %158, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load63.2 = load <4 x i16>, ptr %159, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load64.2 = load <4 x i16>, ptr %160, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load65.2 = load <4 x i16>, ptr %161, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %162 = sext <4 x i16> %wide.load.2 to <4 x i32>, !dbg !1644
  %163 = sext <4 x i16> %wide.load63.2 to <4 x i32>, !dbg !1644
  %164 = sext <4 x i16> %wide.load64.2 to <4 x i32>, !dbg !1644
  %165 = sext <4 x i16> %wide.load65.2 to <4 x i32>, !dbg !1644
  %166 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 32, !dbg !1644
  %167 = getelementptr inbounds i8, ptr %166, i64 16, !dbg !1644
  %168 = getelementptr inbounds i8, ptr %166, i64 32, !dbg !1644
  %169 = getelementptr inbounds i8, ptr %166, i64 48, !dbg !1644
  %wide.load66.2 = load <4 x i32>, ptr %166, align 4, !dbg !1644, !alias.scope !1649
  %wide.load67.2 = load <4 x i32>, ptr %167, align 4, !dbg !1644, !alias.scope !1649
  %wide.load68.2 = load <4 x i32>, ptr %168, align 4, !dbg !1644, !alias.scope !1649
  %wide.load69.2 = load <4 x i32>, ptr %169, align 4, !dbg !1644, !alias.scope !1649
  %170 = mul nsw <4 x i32> %wide.load66.2, %162, !dbg !1644
  %171 = mul nsw <4 x i32> %wide.load67.2, %163, !dbg !1644
  %172 = mul nsw <4 x i32> %wide.load68.2, %164, !dbg !1644
  %173 = mul nsw <4 x i32> %wide.load69.2, %165, !dbg !1644
  %174 = add nsw <4 x i32> %170, %broadcast.splat, !dbg !1644
  %175 = add nsw <4 x i32> %171, %broadcast.splat, !dbg !1644
  %176 = add nsw <4 x i32> %172, %broadcast.splat, !dbg !1644
  %177 = add nsw <4 x i32> %173, %broadcast.splat, !dbg !1644
  %178 = ashr <4 x i32> %174, %broadcast.splat71, !dbg !1644
  %179 = ashr <4 x i32> %175, %broadcast.splat71, !dbg !1644
  %180 = ashr <4 x i32> %176, %broadcast.splat71, !dbg !1644
  %181 = ashr <4 x i32> %177, %broadcast.splat71, !dbg !1644
  %182 = trunc <4 x i32> %178 to <4 x i16>, !dbg !1644
  %183 = trunc <4 x i32> %179 to <4 x i16>, !dbg !1644
  %184 = trunc <4 x i32> %180 to <4 x i16>, !dbg !1644
  %185 = trunc <4 x i32> %181 to <4 x i16>, !dbg !1644
  store <4 x i16> %182, ptr %158, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %183, ptr %159, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %184, ptr %160, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %185, ptr %161, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %186 = getelementptr inbounds i8, ptr %dct, i64 96, !dbg !1644
  %187 = getelementptr inbounds i8, ptr %dct, i64 104, !dbg !1644
  %188 = getelementptr inbounds i8, ptr %dct, i64 112, !dbg !1644
  %189 = getelementptr inbounds i8, ptr %dct, i64 120, !dbg !1644
  %wide.load.3 = load <4 x i16>, ptr %186, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load63.3 = load <4 x i16>, ptr %187, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load64.3 = load <4 x i16>, ptr %188, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %wide.load65.3 = load <4 x i16>, ptr %189, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  %190 = sext <4 x i16> %wide.load.3 to <4 x i32>, !dbg !1644
  %191 = sext <4 x i16> %wide.load63.3 to <4 x i32>, !dbg !1644
  %192 = sext <4 x i16> %wide.load64.3 to <4 x i32>, !dbg !1644
  %193 = sext <4 x i16> %wide.load65.3 to <4 x i32>, !dbg !1644
  %194 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 48, !dbg !1644
  %195 = getelementptr inbounds i8, ptr %194, i64 16, !dbg !1644
  %196 = getelementptr inbounds i8, ptr %194, i64 32, !dbg !1644
  %197 = getelementptr inbounds i8, ptr %194, i64 48, !dbg !1644
  %wide.load66.3 = load <4 x i32>, ptr %194, align 4, !dbg !1644, !alias.scope !1649
  %wide.load67.3 = load <4 x i32>, ptr %195, align 4, !dbg !1644, !alias.scope !1649
  %wide.load68.3 = load <4 x i32>, ptr %196, align 4, !dbg !1644, !alias.scope !1649
  %wide.load69.3 = load <4 x i32>, ptr %197, align 4, !dbg !1644, !alias.scope !1649
  %198 = mul nsw <4 x i32> %wide.load66.3, %190, !dbg !1644
  %199 = mul nsw <4 x i32> %wide.load67.3, %191, !dbg !1644
  %200 = mul nsw <4 x i32> %wide.load68.3, %192, !dbg !1644
  %201 = mul nsw <4 x i32> %wide.load69.3, %193, !dbg !1644
  %202 = add nsw <4 x i32> %198, %broadcast.splat, !dbg !1644
  %203 = add nsw <4 x i32> %199, %broadcast.splat, !dbg !1644
  %204 = add nsw <4 x i32> %200, %broadcast.splat, !dbg !1644
  %205 = add nsw <4 x i32> %201, %broadcast.splat, !dbg !1644
  %206 = ashr <4 x i32> %202, %broadcast.splat71, !dbg !1644
  %207 = ashr <4 x i32> %203, %broadcast.splat71, !dbg !1644
  %208 = ashr <4 x i32> %204, %broadcast.splat71, !dbg !1644
  %209 = ashr <4 x i32> %205, %broadcast.splat71, !dbg !1644
  %210 = trunc <4 x i32> %206 to <4 x i16>, !dbg !1644
  %211 = trunc <4 x i32> %207 to <4 x i16>, !dbg !1644
  %212 = trunc <4 x i32> %208 to <4 x i16>, !dbg !1644
  %213 = trunc <4 x i32> %209 to <4 x i16>, !dbg !1644
  store <4 x i16> %210, ptr %186, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %211, ptr %187, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %212, ptr %188, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  store <4 x i16> %213, ptr %189, align 2, !dbg !1644, !alias.scope !1646, !noalias !1649
  br label %if.end, !dbg !1633

for.body17:                                       ; preds = %if.else, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body17 ], [ 0, %if.else ]
    #dbg_value(i64 %indvars.iv, !1616, !DIExpression(), !1642)
  %arrayidx19 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1644
  %214 = load i16, ptr %arrayidx19, align 2, !dbg !1644
  %conv20 = sext i16 %214 to i32, !dbg !1644
  %arrayidx24 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv, !dbg !1644
  %215 = load i32, ptr %arrayidx24, align 4, !dbg !1644
  %mul25 = mul nsw i32 %215, %conv20, !dbg !1644
  %add = add nsw i32 %mul25, %shl11, !dbg !1644
  %shr = ashr i32 %add, %sub9, !dbg !1644
  %conv27 = trunc i32 %shr to i16, !dbg !1644
  store i16 %conv27, ptr %arrayidx19, align 2, !dbg !1644
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1, !dbg !1651
    #dbg_value(i64 %indvars.iv.next, !1616, !DIExpression(), !1642)
  %arrayidx19.1 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.next, !dbg !1644
  %216 = load i16, ptr %arrayidx19.1, align 2, !dbg !1644
  %conv20.1 = sext i16 %216 to i32, !dbg !1644
  %arrayidx24.1 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv.next, !dbg !1644
  %217 = load i32, ptr %arrayidx24.1, align 4, !dbg !1644
  %mul25.1 = mul nsw i32 %217, %conv20.1, !dbg !1644
  %add.1 = add nsw i32 %mul25.1, %shl11, !dbg !1644
  %shr.1 = ashr i32 %add.1, %sub9, !dbg !1644
  %conv27.1 = trunc i32 %shr.1 to i16, !dbg !1644
  store i16 %conv27.1, ptr %arrayidx19.1, align 2, !dbg !1644
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !1651
    #dbg_value(i64 %indvars.iv.next.1, !1616, !DIExpression(), !1642)
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64, !dbg !1652
  br i1 %exitcond.not.1, label %if.end, label %for.body17, !dbg !1643, !llvm.loop !1653

if.end:                                           ; preds = %for.body17, %for.body, %vector.body, %vector.body83
  ret void, !dbg !1633
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @x264_denoise_dct(ptr nocapture noundef %dct, ptr nocapture noundef %sum, ptr nocapture noundef readonly %offset, i32 noundef %size) #1 !dbg !1655 {
entry:
    #dbg_value(ptr %dct, !1657, !DIExpression(), !1667)
    #dbg_value(ptr %sum, !1658, !DIExpression(), !1667)
    #dbg_value(ptr %offset, !1659, !DIExpression(), !1667)
    #dbg_value(i32 %size, !1660, !DIExpression(), !1667)
    #dbg_value(i32 1, !1661, !DIExpression(), !1668)
  %cmp28 = icmp sgt i32 %size, 1, !dbg !1669
  br i1 %cmp28, label %for.body.preheader, label %for.cond.cleanup, !dbg !1670

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %size to i64, !dbg !1669
  %0 = add nsw i64 %wide.trip.count, -1, !dbg !1670
  %min.iters.check = icmp ult i32 %size, 17, !dbg !1670
  br i1 %min.iters.check, label %for.body.preheader54, label %vector.memcheck, !dbg !1670

for.body.preheader54:                             ; preds = %middle.block, %vector.memcheck, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body, !dbg !1670

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, ptr %sum, i64 4, !dbg !1670
  %1 = shl nuw nsw i64 %wide.trip.count, 2, !dbg !1670
  %scevgep31 = getelementptr i8, ptr %sum, i64 %1, !dbg !1670
  %scevgep32 = getelementptr i8, ptr %dct, i64 2, !dbg !1670
  %2 = shl nuw nsw i64 %wide.trip.count, 1, !dbg !1670
  %scevgep33 = getelementptr i8, ptr %dct, i64 %2, !dbg !1670
  %scevgep34 = getelementptr i8, ptr %offset, i64 2, !dbg !1670
  %scevgep35 = getelementptr i8, ptr %offset, i64 %2, !dbg !1670
  %bound0 = icmp ult ptr %scevgep, %scevgep33, !dbg !1670
  %bound1 = icmp ult ptr %scevgep32, %scevgep31, !dbg !1670
  %found.conflict = and i1 %bound0, %bound1, !dbg !1670
  %bound036 = icmp ult ptr %scevgep, %scevgep35, !dbg !1670
  %bound137 = icmp ult ptr %scevgep34, %scevgep31, !dbg !1670
  %found.conflict38 = and i1 %bound036, %bound137, !dbg !1670
  %conflict.rdx = or i1 %found.conflict, %found.conflict38, !dbg !1670
  %bound039 = icmp ult ptr %scevgep32, %scevgep35, !dbg !1670
  %bound140 = icmp ult ptr %scevgep34, %scevgep33, !dbg !1670
  %found.conflict41 = and i1 %bound039, %bound140, !dbg !1670
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41, !dbg !1670
  br i1 %conflict.rdx42, label %for.body.preheader54, label %vector.ph, !dbg !1670

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %0, -16, !dbg !1670
  %ind.end = or disjoint i64 %n.vec, 1, !dbg !1670
  br label %vector.body, !dbg !1670

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1, !dbg !1670
  %3 = getelementptr inbounds i16, ptr %dct, i64 %offset.idx, !dbg !1671
  %4 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !1671
  %5 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !1671
  %6 = getelementptr inbounds i8, ptr %3, i64 24, !dbg !1671
  %wide.load = load <4 x i16>, ptr %3, align 2, !dbg !1671, !alias.scope !1672, !noalias !1675
  %wide.load43 = load <4 x i16>, ptr %4, align 2, !dbg !1671, !alias.scope !1672, !noalias !1675
  %wide.load44 = load <4 x i16>, ptr %5, align 2, !dbg !1671, !alias.scope !1672, !noalias !1675
  %wide.load45 = load <4 x i16>, ptr %6, align 2, !dbg !1671, !alias.scope !1672, !noalias !1675
  %7 = sext <4 x i16> %wide.load to <4 x i32>, !dbg !1671
  %8 = sext <4 x i16> %wide.load43 to <4 x i32>, !dbg !1671
  %9 = sext <4 x i16> %wide.load44 to <4 x i32>, !dbg !1671
  %10 = sext <4 x i16> %wide.load45 to <4 x i32>, !dbg !1671
  %11 = ashr <4 x i32> %7, <i32 15, i32 15, i32 15, i32 15>, !dbg !1677
  %12 = ashr <4 x i32> %8, <i32 15, i32 15, i32 15, i32 15>, !dbg !1677
  %13 = ashr <4 x i32> %9, <i32 15, i32 15, i32 15, i32 15>, !dbg !1677
  %14 = ashr <4 x i32> %10, <i32 15, i32 15, i32 15, i32 15>, !dbg !1677
  %15 = add nsw <4 x i32> %11, %7, !dbg !1678
  %16 = add nsw <4 x i32> %12, %8, !dbg !1678
  %17 = add nsw <4 x i32> %13, %9, !dbg !1678
  %18 = add nsw <4 x i32> %14, %10, !dbg !1678
  %19 = xor <4 x i32> %15, %11, !dbg !1679
  %20 = xor <4 x i32> %16, %12, !dbg !1679
  %21 = xor <4 x i32> %17, %13, !dbg !1679
  %22 = xor <4 x i32> %18, %14, !dbg !1679
  %23 = getelementptr inbounds i32, ptr %sum, i64 %offset.idx, !dbg !1680
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !1681
  %25 = getelementptr inbounds i8, ptr %23, i64 32, !dbg !1681
  %26 = getelementptr inbounds i8, ptr %23, i64 48, !dbg !1681
  %wide.load46 = load <4 x i32>, ptr %23, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  %wide.load47 = load <4 x i32>, ptr %24, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  %wide.load48 = load <4 x i32>, ptr %25, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  %wide.load49 = load <4 x i32>, ptr %26, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  %27 = add <4 x i32> %19, %wide.load46, !dbg !1681
  %28 = add <4 x i32> %20, %wide.load47, !dbg !1681
  %29 = add <4 x i32> %21, %wide.load48, !dbg !1681
  %30 = add <4 x i32> %22, %wide.load49, !dbg !1681
  store <4 x i32> %27, ptr %23, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  store <4 x i32> %28, ptr %24, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  store <4 x i32> %29, ptr %25, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  store <4 x i32> %30, ptr %26, align 4, !dbg !1681, !alias.scope !1682, !noalias !1684
  %31 = getelementptr inbounds i16, ptr %offset, i64 %offset.idx, !dbg !1685
  %32 = getelementptr inbounds i8, ptr %31, i64 8, !dbg !1685
  %33 = getelementptr inbounds i8, ptr %31, i64 16, !dbg !1685
  %34 = getelementptr inbounds i8, ptr %31, i64 24, !dbg !1685
  %wide.load50 = load <4 x i16>, ptr %31, align 2, !dbg !1685, !alias.scope !1675
  %wide.load51 = load <4 x i16>, ptr %32, align 2, !dbg !1685, !alias.scope !1675
  %wide.load52 = load <4 x i16>, ptr %33, align 2, !dbg !1685, !alias.scope !1675
  %wide.load53 = load <4 x i16>, ptr %34, align 2, !dbg !1685, !alias.scope !1675
  %35 = zext <4 x i16> %wide.load50 to <4 x i32>, !dbg !1685
  %36 = zext <4 x i16> %wide.load51 to <4 x i32>, !dbg !1685
  %37 = zext <4 x i16> %wide.load52 to <4 x i32>, !dbg !1685
  %38 = zext <4 x i16> %wide.load53 to <4 x i32>, !dbg !1685
  %39 = sub nsw <4 x i32> %19, %35, !dbg !1686
  %40 = sub nsw <4 x i32> %20, %36, !dbg !1686
  %41 = sub nsw <4 x i32> %21, %37, !dbg !1686
  %42 = sub nsw <4 x i32> %22, %38, !dbg !1686
  %43 = icmp slt <4 x i32> %39, zeroinitializer, !dbg !1687
  %44 = icmp slt <4 x i32> %40, zeroinitializer, !dbg !1687
  %45 = icmp slt <4 x i32> %41, zeroinitializer, !dbg !1687
  %46 = icmp slt <4 x i32> %42, zeroinitializer, !dbg !1687
  %47 = xor <4 x i32> %39, %11, !dbg !1688
  %48 = xor <4 x i32> %40, %12, !dbg !1688
  %49 = xor <4 x i32> %41, %13, !dbg !1688
  %50 = xor <4 x i32> %42, %14, !dbg !1688
  %51 = sub nsw <4 x i32> %47, %11, !dbg !1688
  %52 = sub nsw <4 x i32> %48, %12, !dbg !1688
  %53 = sub nsw <4 x i32> %49, %13, !dbg !1688
  %54 = sub nsw <4 x i32> %50, %14, !dbg !1688
  %55 = trunc <4 x i32> %51 to <4 x i16>, !dbg !1688
  %56 = trunc <4 x i32> %52 to <4 x i16>, !dbg !1688
  %57 = trunc <4 x i32> %53 to <4 x i16>, !dbg !1688
  %58 = trunc <4 x i32> %54 to <4 x i16>, !dbg !1688
  %59 = select <4 x i1> %43, <4 x i16> zeroinitializer, <4 x i16> %55, !dbg !1688
  %60 = select <4 x i1> %44, <4 x i16> zeroinitializer, <4 x i16> %56, !dbg !1688
  %61 = select <4 x i1> %45, <4 x i16> zeroinitializer, <4 x i16> %57, !dbg !1688
  %62 = select <4 x i1> %46, <4 x i16> zeroinitializer, <4 x i16> %58, !dbg !1688
  store <4 x i16> %59, ptr %3, align 2, !dbg !1689, !alias.scope !1672, !noalias !1675
  store <4 x i16> %60, ptr %4, align 2, !dbg !1689, !alias.scope !1672, !noalias !1675
  store <4 x i16> %61, ptr %5, align 2, !dbg !1689, !alias.scope !1672, !noalias !1675
  store <4 x i16> %62, ptr %6, align 2, !dbg !1689, !alias.scope !1672, !noalias !1675
  %index.next = add nuw i64 %index, 16
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !1690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec, !dbg !1670
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader54, !dbg !1670

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  ret void, !dbg !1692

for.body:                                         ; preds = %for.body.preheader54, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader54 ]
    #dbg_value(i64 %indvars.iv, !1661, !DIExpression(), !1668)
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1671
  %64 = load i16, ptr %arrayidx, align 2, !dbg !1671
  %conv = sext i16 %64 to i32, !dbg !1671
    #dbg_value(i32 %conv, !1663, !DIExpression(), !1693)
  %shr = ashr i32 %conv, 15, !dbg !1677
    #dbg_value(i32 %shr, !1666, !DIExpression(), !1693)
  %add = add nsw i32 %shr, %conv, !dbg !1678
  %xor = xor i32 %add, %shr, !dbg !1679
    #dbg_value(i32 %xor, !1663, !DIExpression(), !1693)
  %arrayidx2 = getelementptr inbounds i32, ptr %sum, i64 %indvars.iv, !dbg !1680
  %65 = load i32, ptr %arrayidx2, align 4, !dbg !1681
  %add3 = add i32 %xor, %65, !dbg !1681
  store i32 %add3, ptr %arrayidx2, align 4, !dbg !1681
  %arrayidx5 = getelementptr inbounds i16, ptr %offset, i64 %indvars.iv, !dbg !1685
  %66 = load i16, ptr %arrayidx5, align 2, !dbg !1685
  %conv6 = zext i16 %66 to i32, !dbg !1685
  %sub = sub nsw i32 %xor, %conv6, !dbg !1686
    #dbg_value(i32 %sub, !1663, !DIExpression(), !1693)
  %cmp7 = icmp slt i32 %sub, 0, !dbg !1687
  %xor9 = xor i32 %sub, %shr, !dbg !1688
  %sub10 = sub nsw i32 %xor9, %shr, !dbg !1688
  %67 = trunc i32 %sub10 to i16, !dbg !1688
  %conv11 = select i1 %cmp7, i16 0, i16 %67, !dbg !1688
  store i16 %conv11, ptr %arrayidx, align 2, !dbg !1689
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1694
    #dbg_value(i64 %indvars.iv.next, !1661, !DIExpression(), !1668)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1669
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1670, !llvm.loop !1695
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %dct) #4 !dbg !1696 {
entry:
    #dbg_value(ptr %dct, !1698, !DIExpression(), !1699)
  %add.ptr = getelementptr inbounds i8, ptr %dct, i64 2, !dbg !1700
    #dbg_value(ptr %add.ptr, !1701, !DIExpression(), !1712)
    #dbg_value(i32 15, !1706, !DIExpression(), !1712)
    #dbg_value(ptr @x264_decimate_table4, !1707, !DIExpression(), !1712)
    #dbg_value(i32 0, !1708, !DIExpression(), !1712)
    #dbg_value(i32 14, !1709, !DIExpression(), !1712)
    #dbg_value(i32 14, !1709, !DIExpression(), !1712)
  %gep.i = getelementptr i8, ptr %dct, i64 28, !dbg !1714
  %0 = load i32, ptr %gep.i, align 4, !dbg !1714
  %cmp3.i = icmp eq i32 %0, 0, !dbg !1715
  br i1 %cmp3.i, label %while.body.i, label %if.end.i, !dbg !1716

while.body.i:                                     ; preds = %entry
    #dbg_value(i32 12, !1709, !DIExpression(), !1712)
  %gep.i.1 = getelementptr i8, ptr %dct, i64 24, !dbg !1714
  %1 = load i32, ptr %gep.i.1, align 4, !dbg !1714
  %cmp3.i.1 = icmp eq i32 %1, 0, !dbg !1715
  br i1 %cmp3.i.1, label %while.body.i.1, label %if.end.i, !dbg !1716

while.body.i.1:                                   ; preds = %while.body.i
    #dbg_value(i32 10, !1709, !DIExpression(), !1712)
  %gep.i.2 = getelementptr i8, ptr %dct, i64 20, !dbg !1714
  %2 = load i32, ptr %gep.i.2, align 4, !dbg !1714
  %cmp3.i.2 = icmp eq i32 %2, 0, !dbg !1715
  br i1 %cmp3.i.2, label %while.body.i.2, label %if.end.i, !dbg !1716

while.body.i.2:                                   ; preds = %while.body.i.1
    #dbg_value(i32 8, !1709, !DIExpression(), !1712)
  %gep.i.3 = getelementptr i8, ptr %dct, i64 16, !dbg !1714
  %3 = load i32, ptr %gep.i.3, align 4, !dbg !1714
  %cmp3.i.3 = icmp eq i32 %3, 0, !dbg !1715
  br i1 %cmp3.i.3, label %while.body.i.3, label %if.end.i, !dbg !1716

while.body.i.3:                                   ; preds = %while.body.i.2
    #dbg_value(i32 6, !1709, !DIExpression(), !1712)
  %gep.i.4 = getelementptr i8, ptr %dct, i64 12, !dbg !1714
  %4 = load i32, ptr %gep.i.4, align 4, !dbg !1714
  %cmp3.i.4 = icmp eq i32 %4, 0, !dbg !1715
  br i1 %cmp3.i.4, label %while.body.i.4, label %if.end.i, !dbg !1716

while.body.i.4:                                   ; preds = %while.body.i.3
    #dbg_value(i32 4, !1709, !DIExpression(), !1712)
  %gep.i.5 = getelementptr i8, ptr %dct, i64 8, !dbg !1714
  %5 = load i32, ptr %gep.i.5, align 4, !dbg !1714
  %cmp3.i.5 = icmp eq i32 %5, 0, !dbg !1715
  br i1 %cmp3.i.5, label %while.body.i.5, label %if.end.i, !dbg !1716

while.body.i.5:                                   ; preds = %while.body.i.4
    #dbg_value(i32 2, !1709, !DIExpression(), !1712)
  %gep.i.6 = getelementptr i8, ptr %dct, i64 4, !dbg !1714
  %6 = load i32, ptr %gep.i.6, align 4, !dbg !1714
  %cmp3.i.6 = icmp eq i32 %6, 0, !dbg !1715
  br i1 %cmp3.i.6, label %while.body.i.6, label %if.end.i, !dbg !1716

while.body.i.6:                                   ; preds = %while.body.i.5
    #dbg_value(i32 0, !1709, !DIExpression(), !1712)
  %7 = load i32, ptr %dct, align 4, !dbg !1714
  %cmp3.i.7 = icmp eq i32 %7, 0, !dbg !1715
  br i1 %cmp3.i.7, label %x264_decimate_score_internal.exit, label %if.end.i, !dbg !1716

if.end.i:                                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6
  %idx.064.i.lcssa = phi i32 [ 14, %entry ], [ 12, %while.body.i ], [ 10, %while.body.i.1 ], [ 8, %while.body.i.2 ], [ 6, %while.body.i.3 ], [ 4, %while.body.i.4 ], [ 2, %while.body.i.5 ], [ 0, %while.body.i.6 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ], !dbg !1714
  %cmp8.i = icmp ult i32 %.lcssa, 65536, !dbg !1717
  %dec.i = sext i1 %cmp8.i to i32, !dbg !1719
  %spec.select.i = add nsw i32 %idx.064.i.lcssa, %dec.i, !dbg !1719
    #dbg_value(i32 %spec.select.i, !1709, !DIExpression(), !1712)
    #dbg_value(i32 0, !1708, !DIExpression(), !1712)
  %cmp11.i3 = icmp sgt i32 %spec.select.i, -1, !dbg !1720
  br i1 %cmp11.i3, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1721

while.body13.i:                                   ; preds = %if.end.i, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %if.end.i ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %if.end.i ]
    #dbg_value(i32 %i_score.0.i4, !1708, !DIExpression(), !1712)
    #dbg_value(i32 %idx.2.i5, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1712)
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64, !dbg !1722
  %arrayidx16.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom15.i, !dbg !1722
  %8 = load i16, ptr %arrayidx16.i, align 2, !dbg !1722
  %conv17.i = sext i16 %8 to i32, !dbg !1722
  %9 = add nsw i32 %conv17.i, 1, !dbg !1724
  %cmp18.i = icmp ult i32 %9, 3, !dbg !1724
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit, !dbg !1725

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0, !dbg !1726
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1727

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1, !dbg !1728
    #dbg_value(i32 %i_run.067.i, !1710, !DIExpression(), !1728)
  %idxprom26.i = zext nneg i32 %idx.368.i to i64, !dbg !1729
  %arrayidx27.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom26.i, !dbg !1729
  %10 = load i16, ptr %arrayidx27.i, align 2, !dbg !1729
  %cmp29.i = icmp eq i16 %10, 0, !dbg !1730
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1731

while.body32.i:                                   ; preds = %land.rhs25.i
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1712)
  %inc.i = add nuw i32 %i_run.067.i, 1, !dbg !1732
    #dbg_value(i32 %inc.i, !1710, !DIExpression(), !1728)
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5, !dbg !1726
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1727, !llvm.loop !1734

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i13 = zext nneg i32 %idx.2.i5 to i64, !dbg !1736
  %arrayidx36.i14 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i13, !dbg !1736
  %11 = load i8, ptr %arrayidx36.i14, align 1, !dbg !1736
  %conv37.i15 = zext i8 %11 to i32, !dbg !1736
  %add38.i16 = add nuw nsw i32 %i_score.0.i4, %conv37.i15, !dbg !1737
    #dbg_value(i32 -1, !1709, !DIExpression(), !1712)
    #dbg_value(i32 %add38.i16, !1708, !DIExpression(), !1712)
  br label %x264_decimate_score_internal.exit, !dbg !1721

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64, !dbg !1736
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i, !dbg !1736
  %12 = load i8, ptr %arrayidx36.i, align 1, !dbg !1736
  %conv37.i = zext i8 %12 to i32, !dbg !1736
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i, !dbg !1737
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(), !1712)
    #dbg_value(i32 %add38.i, !1708, !DIExpression(), !1712)
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0, !dbg !1720
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1721

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %while.body.i.6, %cleanup.i.thread, %if.end.i
  %retval.2.ph.i = phi i32 [ 0, %if.end.i ], [ %add38.i16, %cleanup.i.thread ], [ 0, %while.body.i.6 ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i, !dbg !1738
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %dct) #4 !dbg !1739 {
entry:
    #dbg_value(ptr %dct, !1741, !DIExpression(), !1742)
    #dbg_value(ptr %dct, !1701, !DIExpression(), !1743)
    #dbg_value(i32 16, !1706, !DIExpression(), !1743)
    #dbg_value(ptr @x264_decimate_table4, !1707, !DIExpression(), !1743)
    #dbg_value(i32 0, !1708, !DIExpression(), !1743)
    #dbg_value(i32 15, !1709, !DIExpression(), !1743)
    #dbg_value(i64 15, !1709, !DIExpression(), !1743)
  %gep.i = getelementptr i8, ptr %dct, i64 28, !dbg !1745
  %0 = load i32, ptr %gep.i, align 4, !dbg !1745
  %cmp3.i = icmp eq i32 %0, 0, !dbg !1746
  br i1 %cmp3.i, label %while.body.i, label %while.body13.i.preheader, !dbg !1747

while.body.i:                                     ; preds = %entry
    #dbg_value(i64 13, !1709, !DIExpression(), !1743)
  %gep.i.1 = getelementptr i8, ptr %dct, i64 24, !dbg !1745
  %1 = load i32, ptr %gep.i.1, align 4, !dbg !1745
  %cmp3.i.1 = icmp eq i32 %1, 0, !dbg !1746
  br i1 %cmp3.i.1, label %while.body.i.1, label %while.body13.i.preheader, !dbg !1747

while.body.i.1:                                   ; preds = %while.body.i
    #dbg_value(i64 11, !1709, !DIExpression(), !1743)
  %gep.i.2 = getelementptr i8, ptr %dct, i64 20, !dbg !1745
  %2 = load i32, ptr %gep.i.2, align 4, !dbg !1745
  %cmp3.i.2 = icmp eq i32 %2, 0, !dbg !1746
  br i1 %cmp3.i.2, label %while.body.i.2, label %while.body13.i.preheader, !dbg !1747

while.body.i.2:                                   ; preds = %while.body.i.1
    #dbg_value(i64 9, !1709, !DIExpression(), !1743)
  %gep.i.3 = getelementptr i8, ptr %dct, i64 16, !dbg !1745
  %3 = load i32, ptr %gep.i.3, align 4, !dbg !1745
  %cmp3.i.3 = icmp eq i32 %3, 0, !dbg !1746
  br i1 %cmp3.i.3, label %while.body.i.3, label %while.body13.i.preheader, !dbg !1747

while.body.i.3:                                   ; preds = %while.body.i.2
    #dbg_value(i64 7, !1709, !DIExpression(), !1743)
  %gep.i.4 = getelementptr i8, ptr %dct, i64 12, !dbg !1745
  %4 = load i32, ptr %gep.i.4, align 4, !dbg !1745
  %cmp3.i.4 = icmp eq i32 %4, 0, !dbg !1746
  br i1 %cmp3.i.4, label %while.body.i.4, label %while.body13.i.preheader, !dbg !1747

while.body.i.4:                                   ; preds = %while.body.i.3
    #dbg_value(i64 5, !1709, !DIExpression(), !1743)
  %gep.i.5 = getelementptr i8, ptr %dct, i64 8, !dbg !1745
  %5 = load i32, ptr %gep.i.5, align 4, !dbg !1745
  %cmp3.i.5 = icmp eq i32 %5, 0, !dbg !1746
  br i1 %cmp3.i.5, label %while.body.i.5, label %while.body13.i.preheader, !dbg !1747

while.body.i.5:                                   ; preds = %while.body.i.4
    #dbg_value(i64 3, !1709, !DIExpression(), !1743)
  %gep.i.6 = getelementptr i8, ptr %dct, i64 4, !dbg !1745
  %6 = load i32, ptr %gep.i.6, align 4, !dbg !1745
  %cmp3.i.6 = icmp eq i32 %6, 0, !dbg !1746
  br i1 %cmp3.i.6, label %while.body.i.6, label %while.body13.i.preheader, !dbg !1747

while.body.i.6:                                   ; preds = %while.body.i.5
    #dbg_value(i64 1, !1709, !DIExpression(), !1743)
  %7 = load i32, ptr %dct, align 4, !dbg !1745
  %cmp3.i.7 = icmp eq i32 %7, 0, !dbg !1746
  br i1 %cmp3.i.7, label %x264_decimate_score_internal.exit, label %while.body13.i.preheader, !dbg !1747

while.body13.i.preheader:                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6
  %idx.064.i.lcssa.wide = phi i32 [ 15, %entry ], [ 13, %while.body.i ], [ 11, %while.body.i.1 ], [ 9, %while.body.i.2 ], [ 7, %while.body.i.3 ], [ 5, %while.body.i.4 ], [ 3, %while.body.i.5 ], [ 1, %while.body.i.6 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ], !dbg !1745
  %cmp8.i = icmp ult i32 %.lcssa, 65536, !dbg !1748
  %dec.i = sext i1 %cmp8.i to i32, !dbg !1749
  %spec.select.i = add nsw i32 %idx.064.i.lcssa.wide, %dec.i, !dbg !1749
    #dbg_value(i32 %spec.select.i, !1709, !DIExpression(), !1743)
    #dbg_value(i32 0, !1708, !DIExpression(), !1743)
  br label %while.body13.i, !dbg !1750

while.body13.i:                                   ; preds = %while.body13.i.preheader, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %while.body13.i.preheader ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %while.body13.i.preheader ]
    #dbg_value(i32 %i_score.0.i4, !1708, !DIExpression(), !1743)
    #dbg_value(i32 %idx.2.i5, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1743)
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64, !dbg !1751
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom15.i, !dbg !1751
  %8 = load i16, ptr %arrayidx16.i, align 2, !dbg !1751
  %conv17.i = sext i16 %8 to i32, !dbg !1751
  %9 = add nsw i32 %conv17.i, 1, !dbg !1752
  %cmp18.i = icmp ult i32 %9, 3, !dbg !1752
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit, !dbg !1750

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0, !dbg !1753
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1754

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1, !dbg !1755
    #dbg_value(i32 %i_run.067.i, !1710, !DIExpression(), !1755)
  %idxprom26.i = zext nneg i32 %idx.368.i to i64, !dbg !1756
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom26.i, !dbg !1756
  %10 = load i16, ptr %arrayidx27.i, align 2, !dbg !1756
  %cmp29.i = icmp eq i16 %10, 0, !dbg !1757
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1758

while.body32.i:                                   ; preds = %land.rhs25.i
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1743)
  %inc.i = add nuw i32 %i_run.067.i, 1, !dbg !1759
    #dbg_value(i32 %inc.i, !1710, !DIExpression(), !1755)
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5, !dbg !1753
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1754, !llvm.loop !1760

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i15 = zext nneg i32 %idx.2.i5 to i64, !dbg !1762
  %arrayidx36.i16 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i15, !dbg !1762
  %11 = load i8, ptr %arrayidx36.i16, align 1, !dbg !1762
  %conv37.i17 = zext i8 %11 to i32, !dbg !1762
  %add38.i18 = add nuw nsw i32 %i_score.0.i4, %conv37.i17, !dbg !1763
    #dbg_value(i32 -1, !1709, !DIExpression(), !1743)
    #dbg_value(i32 %add38.i18, !1708, !DIExpression(), !1743)
  br label %x264_decimate_score_internal.exit, !dbg !1764

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64, !dbg !1762
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i, !dbg !1762
  %12 = load i8, ptr %arrayidx36.i, align 1, !dbg !1762
  %conv37.i = zext i8 %12 to i32, !dbg !1762
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i, !dbg !1763
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(), !1743)
    #dbg_value(i32 %add38.i, !1708, !DIExpression(), !1743)
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0, !dbg !1765
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1764

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %cleanup.i.thread, %while.body.i.6
  %retval.2.ph.i = phi i32 [ 0, %while.body.i.6 ], [ %add38.i18, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i, !dbg !1766
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %dct) #4 !dbg !1767 {
entry:
    #dbg_value(ptr %dct, !1769, !DIExpression(), !1770)
    #dbg_value(ptr %dct, !1701, !DIExpression(), !1771)
    #dbg_value(i32 64, !1706, !DIExpression(), !1771)
    #dbg_value(ptr @x264_decimate_table8, !1707, !DIExpression(), !1771)
    #dbg_value(i32 0, !1708, !DIExpression(), !1771)
    #dbg_value(i32 63, !1709, !DIExpression(), !1771)
    #dbg_value(i64 63, !1709, !DIExpression(), !1771)
  %gep.i = getelementptr i8, ptr %dct, i64 124, !dbg !1773
  %0 = load i32, ptr %gep.i, align 4, !dbg !1773
  %cmp3.i = icmp eq i32 %0, 0, !dbg !1774
  br i1 %cmp3.i, label %while.body.i, label %while.body13.i.preheader, !dbg !1775

while.body.i:                                     ; preds = %entry
    #dbg_value(i64 61, !1709, !DIExpression(), !1771)
  %gep.i.1 = getelementptr i8, ptr %dct, i64 120, !dbg !1773
  %1 = load i32, ptr %gep.i.1, align 4, !dbg !1773
  %cmp3.i.1 = icmp eq i32 %1, 0, !dbg !1774
  br i1 %cmp3.i.1, label %while.body.i.1, label %while.body13.i.preheader, !dbg !1775

while.body.i.1:                                   ; preds = %while.body.i
    #dbg_value(i64 59, !1709, !DIExpression(), !1771)
  %gep.i.2 = getelementptr i8, ptr %dct, i64 116, !dbg !1773
  %2 = load i32, ptr %gep.i.2, align 4, !dbg !1773
  %cmp3.i.2 = icmp eq i32 %2, 0, !dbg !1774
  br i1 %cmp3.i.2, label %while.body.i.2, label %while.body13.i.preheader, !dbg !1775

while.body.i.2:                                   ; preds = %while.body.i.1
    #dbg_value(i64 57, !1709, !DIExpression(), !1771)
  %gep.i.3 = getelementptr i8, ptr %dct, i64 112, !dbg !1773
  %3 = load i32, ptr %gep.i.3, align 4, !dbg !1773
  %cmp3.i.3 = icmp eq i32 %3, 0, !dbg !1774
  br i1 %cmp3.i.3, label %while.body.i.3, label %while.body13.i.preheader, !dbg !1775

while.body.i.3:                                   ; preds = %while.body.i.2
    #dbg_value(i64 55, !1709, !DIExpression(), !1771)
  %gep.i.4 = getelementptr i8, ptr %dct, i64 108, !dbg !1773
  %4 = load i32, ptr %gep.i.4, align 4, !dbg !1773
  %cmp3.i.4 = icmp eq i32 %4, 0, !dbg !1774
  br i1 %cmp3.i.4, label %while.body.i.4, label %while.body13.i.preheader, !dbg !1775

while.body.i.4:                                   ; preds = %while.body.i.3
    #dbg_value(i64 53, !1709, !DIExpression(), !1771)
  %gep.i.5 = getelementptr i8, ptr %dct, i64 104, !dbg !1773
  %5 = load i32, ptr %gep.i.5, align 4, !dbg !1773
  %cmp3.i.5 = icmp eq i32 %5, 0, !dbg !1774
  br i1 %cmp3.i.5, label %while.body.i.5, label %while.body13.i.preheader, !dbg !1775

while.body.i.5:                                   ; preds = %while.body.i.4
    #dbg_value(i64 51, !1709, !DIExpression(), !1771)
  %gep.i.6 = getelementptr i8, ptr %dct, i64 100, !dbg !1773
  %6 = load i32, ptr %gep.i.6, align 4, !dbg !1773
  %cmp3.i.6 = icmp eq i32 %6, 0, !dbg !1774
  br i1 %cmp3.i.6, label %while.body.i.6, label %while.body13.i.preheader, !dbg !1775

while.body.i.6:                                   ; preds = %while.body.i.5
    #dbg_value(i64 49, !1709, !DIExpression(), !1771)
  %gep.i.7 = getelementptr i8, ptr %dct, i64 96, !dbg !1773
  %7 = load i32, ptr %gep.i.7, align 4, !dbg !1773
  %cmp3.i.7 = icmp eq i32 %7, 0, !dbg !1774
  br i1 %cmp3.i.7, label %while.body.i.7, label %while.body13.i.preheader, !dbg !1775

while.body.i.7:                                   ; preds = %while.body.i.6
    #dbg_value(i64 47, !1709, !DIExpression(), !1771)
  %gep.i.8 = getelementptr i8, ptr %dct, i64 92, !dbg !1773
  %8 = load i32, ptr %gep.i.8, align 4, !dbg !1773
  %cmp3.i.8 = icmp eq i32 %8, 0, !dbg !1774
  br i1 %cmp3.i.8, label %while.body.i.8, label %while.body13.i.preheader, !dbg !1775

while.body.i.8:                                   ; preds = %while.body.i.7
    #dbg_value(i64 45, !1709, !DIExpression(), !1771)
  %gep.i.9 = getelementptr i8, ptr %dct, i64 88, !dbg !1773
  %9 = load i32, ptr %gep.i.9, align 4, !dbg !1773
  %cmp3.i.9 = icmp eq i32 %9, 0, !dbg !1774
  br i1 %cmp3.i.9, label %while.body.i.9, label %while.body13.i.preheader, !dbg !1775

while.body.i.9:                                   ; preds = %while.body.i.8
    #dbg_value(i64 43, !1709, !DIExpression(), !1771)
  %gep.i.10 = getelementptr i8, ptr %dct, i64 84, !dbg !1773
  %10 = load i32, ptr %gep.i.10, align 4, !dbg !1773
  %cmp3.i.10 = icmp eq i32 %10, 0, !dbg !1774
  br i1 %cmp3.i.10, label %while.body.i.10, label %while.body13.i.preheader, !dbg !1775

while.body.i.10:                                  ; preds = %while.body.i.9
    #dbg_value(i64 41, !1709, !DIExpression(), !1771)
  %gep.i.11 = getelementptr i8, ptr %dct, i64 80, !dbg !1773
  %11 = load i32, ptr %gep.i.11, align 4, !dbg !1773
  %cmp3.i.11 = icmp eq i32 %11, 0, !dbg !1774
  br i1 %cmp3.i.11, label %while.body.i.11, label %while.body13.i.preheader, !dbg !1775

while.body.i.11:                                  ; preds = %while.body.i.10
    #dbg_value(i64 39, !1709, !DIExpression(), !1771)
  %gep.i.12 = getelementptr i8, ptr %dct, i64 76, !dbg !1773
  %12 = load i32, ptr %gep.i.12, align 4, !dbg !1773
  %cmp3.i.12 = icmp eq i32 %12, 0, !dbg !1774
  br i1 %cmp3.i.12, label %while.body.i.12, label %while.body13.i.preheader, !dbg !1775

while.body.i.12:                                  ; preds = %while.body.i.11
    #dbg_value(i64 37, !1709, !DIExpression(), !1771)
  %gep.i.13 = getelementptr i8, ptr %dct, i64 72, !dbg !1773
  %13 = load i32, ptr %gep.i.13, align 4, !dbg !1773
  %cmp3.i.13 = icmp eq i32 %13, 0, !dbg !1774
  br i1 %cmp3.i.13, label %while.body.i.13, label %while.body13.i.preheader, !dbg !1775

while.body.i.13:                                  ; preds = %while.body.i.12
    #dbg_value(i64 35, !1709, !DIExpression(), !1771)
  %gep.i.14 = getelementptr i8, ptr %dct, i64 68, !dbg !1773
  %14 = load i32, ptr %gep.i.14, align 4, !dbg !1773
  %cmp3.i.14 = icmp eq i32 %14, 0, !dbg !1774
  br i1 %cmp3.i.14, label %while.body.i.14, label %while.body13.i.preheader, !dbg !1775

while.body.i.14:                                  ; preds = %while.body.i.13
    #dbg_value(i64 33, !1709, !DIExpression(), !1771)
  %gep.i.15 = getelementptr i8, ptr %dct, i64 64, !dbg !1773
  %15 = load i32, ptr %gep.i.15, align 4, !dbg !1773
  %cmp3.i.15 = icmp eq i32 %15, 0, !dbg !1774
  br i1 %cmp3.i.15, label %while.body.i.15, label %while.body13.i.preheader, !dbg !1775

while.body.i.15:                                  ; preds = %while.body.i.14
    #dbg_value(i64 31, !1709, !DIExpression(), !1771)
  %gep.i.16 = getelementptr i8, ptr %dct, i64 60, !dbg !1773
  %16 = load i32, ptr %gep.i.16, align 4, !dbg !1773
  %cmp3.i.16 = icmp eq i32 %16, 0, !dbg !1774
  br i1 %cmp3.i.16, label %while.body.i.16, label %while.body13.i.preheader, !dbg !1775

while.body.i.16:                                  ; preds = %while.body.i.15
    #dbg_value(i64 29, !1709, !DIExpression(), !1771)
  %gep.i.17 = getelementptr i8, ptr %dct, i64 56, !dbg !1773
  %17 = load i32, ptr %gep.i.17, align 4, !dbg !1773
  %cmp3.i.17 = icmp eq i32 %17, 0, !dbg !1774
  br i1 %cmp3.i.17, label %while.body.i.17, label %while.body13.i.preheader, !dbg !1775

while.body.i.17:                                  ; preds = %while.body.i.16
    #dbg_value(i64 27, !1709, !DIExpression(), !1771)
  %gep.i.18 = getelementptr i8, ptr %dct, i64 52, !dbg !1773
  %18 = load i32, ptr %gep.i.18, align 4, !dbg !1773
  %cmp3.i.18 = icmp eq i32 %18, 0, !dbg !1774
  br i1 %cmp3.i.18, label %while.body.i.18, label %while.body13.i.preheader, !dbg !1775

while.body.i.18:                                  ; preds = %while.body.i.17
    #dbg_value(i64 25, !1709, !DIExpression(), !1771)
  %gep.i.19 = getelementptr i8, ptr %dct, i64 48, !dbg !1773
  %19 = load i32, ptr %gep.i.19, align 4, !dbg !1773
  %cmp3.i.19 = icmp eq i32 %19, 0, !dbg !1774
  br i1 %cmp3.i.19, label %while.body.i.19, label %while.body13.i.preheader, !dbg !1775

while.body.i.19:                                  ; preds = %while.body.i.18
    #dbg_value(i64 23, !1709, !DIExpression(), !1771)
  %gep.i.20 = getelementptr i8, ptr %dct, i64 44, !dbg !1773
  %20 = load i32, ptr %gep.i.20, align 4, !dbg !1773
  %cmp3.i.20 = icmp eq i32 %20, 0, !dbg !1774
  br i1 %cmp3.i.20, label %while.body.i.20, label %while.body13.i.preheader, !dbg !1775

while.body.i.20:                                  ; preds = %while.body.i.19
    #dbg_value(i64 21, !1709, !DIExpression(), !1771)
  %gep.i.21 = getelementptr i8, ptr %dct, i64 40, !dbg !1773
  %21 = load i32, ptr %gep.i.21, align 4, !dbg !1773
  %cmp3.i.21 = icmp eq i32 %21, 0, !dbg !1774
  br i1 %cmp3.i.21, label %while.body.i.21, label %while.body13.i.preheader, !dbg !1775

while.body.i.21:                                  ; preds = %while.body.i.20
    #dbg_value(i64 19, !1709, !DIExpression(), !1771)
  %gep.i.22 = getelementptr i8, ptr %dct, i64 36, !dbg !1773
  %22 = load i32, ptr %gep.i.22, align 4, !dbg !1773
  %cmp3.i.22 = icmp eq i32 %22, 0, !dbg !1774
  br i1 %cmp3.i.22, label %while.body.i.22, label %while.body13.i.preheader, !dbg !1775

while.body.i.22:                                  ; preds = %while.body.i.21
    #dbg_value(i64 17, !1709, !DIExpression(), !1771)
  %gep.i.23 = getelementptr i8, ptr %dct, i64 32, !dbg !1773
  %23 = load i32, ptr %gep.i.23, align 4, !dbg !1773
  %cmp3.i.23 = icmp eq i32 %23, 0, !dbg !1774
  br i1 %cmp3.i.23, label %while.body.i.23, label %while.body13.i.preheader, !dbg !1775

while.body.i.23:                                  ; preds = %while.body.i.22
    #dbg_value(i64 15, !1709, !DIExpression(), !1771)
  %gep.i.24 = getelementptr i8, ptr %dct, i64 28, !dbg !1773
  %24 = load i32, ptr %gep.i.24, align 4, !dbg !1773
  %cmp3.i.24 = icmp eq i32 %24, 0, !dbg !1774
  br i1 %cmp3.i.24, label %while.body.i.24, label %while.body13.i.preheader, !dbg !1775

while.body.i.24:                                  ; preds = %while.body.i.23
    #dbg_value(i64 13, !1709, !DIExpression(), !1771)
  %gep.i.25 = getelementptr i8, ptr %dct, i64 24, !dbg !1773
  %25 = load i32, ptr %gep.i.25, align 4, !dbg !1773
  %cmp3.i.25 = icmp eq i32 %25, 0, !dbg !1774
  br i1 %cmp3.i.25, label %while.body.i.25, label %while.body13.i.preheader, !dbg !1775

while.body.i.25:                                  ; preds = %while.body.i.24
    #dbg_value(i64 11, !1709, !DIExpression(), !1771)
  %gep.i.26 = getelementptr i8, ptr %dct, i64 20, !dbg !1773
  %26 = load i32, ptr %gep.i.26, align 4, !dbg !1773
  %cmp3.i.26 = icmp eq i32 %26, 0, !dbg !1774
  br i1 %cmp3.i.26, label %while.body.i.26, label %while.body13.i.preheader, !dbg !1775

while.body.i.26:                                  ; preds = %while.body.i.25
    #dbg_value(i64 9, !1709, !DIExpression(), !1771)
  %gep.i.27 = getelementptr i8, ptr %dct, i64 16, !dbg !1773
  %27 = load i32, ptr %gep.i.27, align 4, !dbg !1773
  %cmp3.i.27 = icmp eq i32 %27, 0, !dbg !1774
  br i1 %cmp3.i.27, label %while.body.i.27, label %while.body13.i.preheader, !dbg !1775

while.body.i.27:                                  ; preds = %while.body.i.26
    #dbg_value(i64 7, !1709, !DIExpression(), !1771)
  %gep.i.28 = getelementptr i8, ptr %dct, i64 12, !dbg !1773
  %28 = load i32, ptr %gep.i.28, align 4, !dbg !1773
  %cmp3.i.28 = icmp eq i32 %28, 0, !dbg !1774
  br i1 %cmp3.i.28, label %while.body.i.28, label %while.body13.i.preheader, !dbg !1775

while.body.i.28:                                  ; preds = %while.body.i.27
    #dbg_value(i64 5, !1709, !DIExpression(), !1771)
  %gep.i.29 = getelementptr i8, ptr %dct, i64 8, !dbg !1773
  %29 = load i32, ptr %gep.i.29, align 4, !dbg !1773
  %cmp3.i.29 = icmp eq i32 %29, 0, !dbg !1774
  br i1 %cmp3.i.29, label %while.body.i.29, label %while.body13.i.preheader, !dbg !1775

while.body.i.29:                                  ; preds = %while.body.i.28
    #dbg_value(i64 3, !1709, !DIExpression(), !1771)
  %gep.i.30 = getelementptr i8, ptr %dct, i64 4, !dbg !1773
  %30 = load i32, ptr %gep.i.30, align 4, !dbg !1773
  %cmp3.i.30 = icmp eq i32 %30, 0, !dbg !1774
  br i1 %cmp3.i.30, label %while.body.i.30, label %while.body13.i.preheader, !dbg !1775

while.body.i.30:                                  ; preds = %while.body.i.29
    #dbg_value(i64 1, !1709, !DIExpression(), !1771)
  %31 = load i32, ptr %dct, align 4, !dbg !1773
  %cmp3.i.31 = icmp eq i32 %31, 0, !dbg !1774
  br i1 %cmp3.i.31, label %x264_decimate_score_internal.exit, label %while.body13.i.preheader, !dbg !1775

while.body13.i.preheader:                         ; preds = %entry, %while.body.i, %while.body.i.1, %while.body.i.2, %while.body.i.3, %while.body.i.4, %while.body.i.5, %while.body.i.6, %while.body.i.7, %while.body.i.8, %while.body.i.9, %while.body.i.10, %while.body.i.11, %while.body.i.12, %while.body.i.13, %while.body.i.14, %while.body.i.15, %while.body.i.16, %while.body.i.17, %while.body.i.18, %while.body.i.19, %while.body.i.20, %while.body.i.21, %while.body.i.22, %while.body.i.23, %while.body.i.24, %while.body.i.25, %while.body.i.26, %while.body.i.27, %while.body.i.28, %while.body.i.29, %while.body.i.30
  %idx.064.i.lcssa.wide = phi i32 [ 63, %entry ], [ 61, %while.body.i ], [ 59, %while.body.i.1 ], [ 57, %while.body.i.2 ], [ 55, %while.body.i.3 ], [ 53, %while.body.i.4 ], [ 51, %while.body.i.5 ], [ 49, %while.body.i.6 ], [ 47, %while.body.i.7 ], [ 45, %while.body.i.8 ], [ 43, %while.body.i.9 ], [ 41, %while.body.i.10 ], [ 39, %while.body.i.11 ], [ 37, %while.body.i.12 ], [ 35, %while.body.i.13 ], [ 33, %while.body.i.14 ], [ 31, %while.body.i.15 ], [ 29, %while.body.i.16 ], [ 27, %while.body.i.17 ], [ 25, %while.body.i.18 ], [ 23, %while.body.i.19 ], [ 21, %while.body.i.20 ], [ 19, %while.body.i.21 ], [ 17, %while.body.i.22 ], [ 15, %while.body.i.23 ], [ 13, %while.body.i.24 ], [ 11, %while.body.i.25 ], [ 9, %while.body.i.26 ], [ 7, %while.body.i.27 ], [ 5, %while.body.i.28 ], [ 3, %while.body.i.29 ], [ 1, %while.body.i.30 ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body.i ], [ %2, %while.body.i.1 ], [ %3, %while.body.i.2 ], [ %4, %while.body.i.3 ], [ %5, %while.body.i.4 ], [ %6, %while.body.i.5 ], [ %7, %while.body.i.6 ], [ %8, %while.body.i.7 ], [ %9, %while.body.i.8 ], [ %10, %while.body.i.9 ], [ %11, %while.body.i.10 ], [ %12, %while.body.i.11 ], [ %13, %while.body.i.12 ], [ %14, %while.body.i.13 ], [ %15, %while.body.i.14 ], [ %16, %while.body.i.15 ], [ %17, %while.body.i.16 ], [ %18, %while.body.i.17 ], [ %19, %while.body.i.18 ], [ %20, %while.body.i.19 ], [ %21, %while.body.i.20 ], [ %22, %while.body.i.21 ], [ %23, %while.body.i.22 ], [ %24, %while.body.i.23 ], [ %25, %while.body.i.24 ], [ %26, %while.body.i.25 ], [ %27, %while.body.i.26 ], [ %28, %while.body.i.27 ], [ %29, %while.body.i.28 ], [ %30, %while.body.i.29 ], [ %31, %while.body.i.30 ], !dbg !1773
  %cmp8.i = icmp ult i32 %.lcssa, 65536, !dbg !1776
  %dec.i = sext i1 %cmp8.i to i32, !dbg !1777
  %spec.select.i = add nsw i32 %idx.064.i.lcssa.wide, %dec.i, !dbg !1777
    #dbg_value(i32 %spec.select.i, !1709, !DIExpression(), !1771)
    #dbg_value(i32 0, !1708, !DIExpression(), !1771)
  br label %while.body13.i, !dbg !1778

while.body13.i:                                   ; preds = %while.body13.i.preheader, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.368.i, %cleanup.i ], [ %spec.select.i, %while.body13.i.preheader ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %while.body13.i.preheader ]
    #dbg_value(i32 %i_score.0.i4, !1708, !DIExpression(), !1771)
    #dbg_value(i32 %idx.2.i5, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1771)
  %idxprom15.i = zext nneg i32 %idx.2.i5 to i64, !dbg !1779
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom15.i, !dbg !1779
  %32 = load i16, ptr %arrayidx16.i, align 2, !dbg !1779
  %conv17.i = sext i16 %32 to i32, !dbg !1779
  %33 = add nsw i32 %conv17.i, 1, !dbg !1780
  %cmp18.i = icmp ult i32 %33, 3, !dbg !1780
  br i1 %cmp18.i, label %while.cond22.preheader.i, label %x264_decimate_score_internal.exit, !dbg !1778

while.cond22.preheader.i:                         ; preds = %while.body13.i
  %cmp2366.not.i = icmp eq i32 %idx.2.i5, 0, !dbg !1781
  br i1 %cmp2366.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1782

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.368.in.i = phi i32 [ %idx.368.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.067.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.368.i = add nsw i32 %idx.368.in.i, -1, !dbg !1783
    #dbg_value(i32 %i_run.067.i, !1710, !DIExpression(), !1783)
  %idxprom26.i = zext nneg i32 %idx.368.i to i64, !dbg !1784
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom26.i, !dbg !1784
  %34 = load i16, ptr %arrayidx27.i, align 2, !dbg !1784
  %cmp29.i = icmp eq i16 %34, 0, !dbg !1785
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1786

while.body32.i:                                   ; preds = %land.rhs25.i
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1771)
  %inc.i = add nuw i32 %i_run.067.i, 1, !dbg !1787
    #dbg_value(i32 %inc.i, !1710, !DIExpression(), !1783)
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5, !dbg !1781
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1782, !llvm.loop !1788

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i15 = zext nneg i32 %idx.2.i5 to i64, !dbg !1790
  %arrayidx36.i16 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i15, !dbg !1790
  %35 = load i8, ptr %arrayidx36.i16, align 1, !dbg !1790
  %conv37.i17 = zext i8 %35 to i32, !dbg !1790
  %add38.i18 = add nuw nsw i32 %i_score.0.i4, %conv37.i17, !dbg !1791
    #dbg_value(i32 -1, !1709, !DIExpression(), !1771)
    #dbg_value(i32 %add38.i18, !1708, !DIExpression(), !1771)
  br label %x264_decimate_score_internal.exit, !dbg !1792

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext nneg i32 %i_run.067.i to i64, !dbg !1790
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i, !dbg !1790
  %36 = load i8, ptr %arrayidx36.i, align 1, !dbg !1790
  %conv37.i = zext i8 %36 to i32, !dbg !1790
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i, !dbg !1791
    #dbg_value(i32 %idx.368.i, !1709, !DIExpression(), !1771)
    #dbg_value(i32 %add38.i, !1708, !DIExpression(), !1771)
  %cmp11.i = icmp sgt i32 %idx.368.in.i, 0, !dbg !1793
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1792

x264_decimate_score_internal.exit:                ; preds = %while.body13.i, %cleanup.i, %cleanup.i.thread, %while.body.i.30
  %retval.2.ph.i = phi i32 [ 0, %while.body.i.30 ], [ %add38.i18, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ]
  ret i32 %retval.2.ph.i, !dbg !1794
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last4(ptr nocapture noundef readonly %l) #4 !dbg !1795 {
entry:
    #dbg_value(ptr %l, !1797, !DIExpression(), !1798)
    #dbg_value(ptr %l, !1799, !DIExpression(), !1804)
    #dbg_value(i32 4, !1802, !DIExpression(), !1804)
    #dbg_value(i32 3, !1803, !DIExpression(), !1804)
    #dbg_value(i32 3, !1803, !DIExpression(), !1804)
    #dbg_value(i64 3, !1803, !DIExpression(), !1804)
  %0 = load i64, ptr %l, align 8, !dbg !1806
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1806
  br i1 %tobool.not.i, label %x264_coeff_last_internal.exit, label %land.rhs.i, !dbg !1810

land.rhs.i:                                       ; preds = %entry
    #dbg_value(i32 3, !1803, !DIExpression(), !1804)
  %arrayidx.i = getelementptr inbounds i8, ptr %l, i64 6, !dbg !1811
  %1 = load i16, ptr %arrayidx.i, align 2, !dbg !1811
  %cmp4.i = icmp eq i16 %1, 0, !dbg !1812
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1813

while.body.i:                                     ; preds = %land.rhs.i
    #dbg_value(i32 2, !1803, !DIExpression(), !1804)
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %l, i64 4, !dbg !1811
  %2 = load i16, ptr %arrayidx.i.1, align 2, !dbg !1811
  %cmp4.i.1 = icmp eq i16 %2, 0, !dbg !1812
  br i1 %cmp4.i.1, label %while.body.i.1, label %x264_coeff_last_internal.exit, !dbg !1813

while.body.i.1:                                   ; preds = %while.body.i
    #dbg_value(i32 1, !1803, !DIExpression(), !1804)
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %l, i64 2, !dbg !1811
  %3 = load i16, ptr %arrayidx.i.2, align 2, !dbg !1811
  %cmp4.i.2 = icmp eq i16 %3, 0, !dbg !1812
  br i1 %cmp4.i.2, label %while.body.i.2, label %x264_coeff_last_internal.exit, !dbg !1813

while.body.i.2:                                   ; preds = %while.body.i.1
    #dbg_value(i32 0, !1803, !DIExpression(), !1804)
  %4 = load i16, ptr %l, align 2, !dbg !1811
  %cmp4.i.3 = icmp eq i16 %4, 0, !dbg !1812
  %spec.select = select i1 %cmp4.i.3, i32 -1, i32 0, !dbg !1813
  br label %x264_coeff_last_internal.exit, !dbg !1813

x264_coeff_last_internal.exit:                    ; preds = %while.body.i.2, %land.rhs.i, %while.body.i, %while.body.i.1, %entry
  %i_last.1.lcssa.i = phi i32 [ -1, %entry ], [ 3, %land.rhs.i ], [ 2, %while.body.i ], [ 1, %while.body.i.1 ], [ %spec.select, %while.body.i.2 ], !dbg !1804
  ret i32 %i_last.1.lcssa.i, !dbg !1814
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last15(ptr nocapture noundef readonly %l) #4 !dbg !1815 {
entry:
    #dbg_value(ptr %l, !1817, !DIExpression(), !1818)
    #dbg_value(ptr %l, !1799, !DIExpression(), !1819)
    #dbg_value(i32 15, !1802, !DIExpression(), !1819)
    #dbg_value(i32 14, !1803, !DIExpression(), !1819)
    #dbg_value(i32 14, !1803, !DIExpression(), !1819)
    #dbg_value(i64 14, !1803, !DIExpression(), !1819)
  %gep.i = getelementptr i8, ptr %l, i64 22, !dbg !1821
  %0 = load i64, ptr %gep.i, align 8, !dbg !1821
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1821
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader, !dbg !1822

for.inc.i:                                        ; preds = %entry
    #dbg_value(i64 10, !1803, !DIExpression(), !1819)
  %gep.i.1 = getelementptr i8, ptr %l, i64 14, !dbg !1821
  %1 = load i64, ptr %gep.i.1, align 8, !dbg !1821
  %tobool.not.i.1 = icmp eq i64 %1, 0, !dbg !1821
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader, !dbg !1822

for.inc.i.1:                                      ; preds = %for.inc.i
    #dbg_value(i64 6, !1803, !DIExpression(), !1819)
  %gep.i.2 = getelementptr i8, ptr %l, i64 6, !dbg !1821
  %2 = load i64, ptr %gep.i.2, align 8, !dbg !1821
  %tobool.not.i.2 = icmp eq i64 %2, 0, !dbg !1821
  %spec.select = select i1 %tobool.not.i.2, i32 2, i32 6, !dbg !1822
  br label %land.rhs.i.preheader, !dbg !1822

land.rhs.i.preheader:                             ; preds = %for.inc.i.1, %entry, %for.inc.i
  %i_last.117.i.ph = phi i32 [ %spec.select, %for.inc.i.1 ], [ 10, %for.inc.i ], [ 14, %entry ]
  br label %land.rhs.i, !dbg !1823

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
    #dbg_value(i32 %i_last.117.i, !1803, !DIExpression(), !1819)
  %idxprom.i = zext nneg i32 %i_last.117.i to i64, !dbg !1824
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i, !dbg !1824
  %3 = load i16, ptr %arrayidx.i, align 2, !dbg !1824
  %cmp4.i = icmp eq i16 %3, 0, !dbg !1825
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1823

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1, !dbg !1826
    #dbg_value(i32 %dec.i, !1803, !DIExpression(), !1819)
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0, !dbg !1827
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1828, !llvm.loop !1829

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i
  %i_last.1.lcssa.i.ph = phi i32 [ -1, %while.body.i ], [ %i_last.117.i, %land.rhs.i ]
  ret i32 %i_last.1.lcssa.i.ph, !dbg !1830
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last16(ptr nocapture noundef readonly %l) #4 !dbg !1831 {
entry:
    #dbg_value(ptr %l, !1833, !DIExpression(), !1834)
    #dbg_value(ptr %l, !1799, !DIExpression(), !1835)
    #dbg_value(i32 16, !1802, !DIExpression(), !1835)
    #dbg_value(i32 15, !1803, !DIExpression(), !1835)
    #dbg_value(i32 15, !1803, !DIExpression(), !1835)
    #dbg_value(i64 15, !1803, !DIExpression(), !1835)
  %gep.i = getelementptr i8, ptr %l, i64 24, !dbg !1837
  %0 = load i64, ptr %gep.i, align 8, !dbg !1837
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1837
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader, !dbg !1838

for.inc.i:                                        ; preds = %entry
    #dbg_value(i64 11, !1803, !DIExpression(), !1835)
  %gep.i.1 = getelementptr i8, ptr %l, i64 16, !dbg !1837
  %1 = load i64, ptr %gep.i.1, align 8, !dbg !1837
  %tobool.not.i.1 = icmp eq i64 %1, 0, !dbg !1837
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader, !dbg !1838

for.inc.i.1:                                      ; preds = %for.inc.i
    #dbg_value(i64 7, !1803, !DIExpression(), !1835)
  %gep.i.2 = getelementptr i8, ptr %l, i64 8, !dbg !1837
  %2 = load i64, ptr %gep.i.2, align 8, !dbg !1837
  %tobool.not.i.2 = icmp eq i64 %2, 0, !dbg !1837
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %land.rhs.i.preheader, !dbg !1838

for.inc.i.2:                                      ; preds = %for.inc.i.1
    #dbg_value(i64 3, !1803, !DIExpression(), !1835)
  %3 = load i64, ptr %l, align 8, !dbg !1837
  %tobool.not.i.3 = icmp eq i64 %3, 0, !dbg !1837
  br i1 %tobool.not.i.3, label %x264_coeff_last_internal.exit, label %land.rhs.i.preheader, !dbg !1838

land.rhs.i.preheader:                             ; preds = %entry, %for.inc.i, %for.inc.i.1, %for.inc.i.2
  %i_last.117.i.ph = phi i32 [ 3, %for.inc.i.2 ], [ 7, %for.inc.i.1 ], [ 11, %for.inc.i ], [ 15, %entry ]
  br label %land.rhs.i, !dbg !1839

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
    #dbg_value(i32 %i_last.117.i, !1803, !DIExpression(), !1835)
  %idxprom.i = zext nneg i32 %i_last.117.i to i64, !dbg !1840
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i, !dbg !1840
  %4 = load i16, ptr %arrayidx.i, align 2, !dbg !1840
  %cmp4.i = icmp eq i16 %4, 0, !dbg !1841
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1839

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1, !dbg !1842
    #dbg_value(i32 %dec.i, !1803, !DIExpression(), !1835)
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0, !dbg !1843
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1844, !llvm.loop !1845

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i, %for.inc.i.2
  %i_last.1.lcssa.i = phi i32 [ -1, %for.inc.i.2 ], [ %i_last.117.i, %land.rhs.i ], [ -1, %while.body.i ], !dbg !1835
  ret i32 %i_last.1.lcssa.i, !dbg !1846
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 64) i32 @x264_coeff_last64(ptr nocapture noundef readonly %l) #4 !dbg !1847 {
entry:
    #dbg_value(ptr %l, !1849, !DIExpression(), !1850)
    #dbg_value(ptr %l, !1799, !DIExpression(), !1851)
    #dbg_value(i32 64, !1802, !DIExpression(), !1851)
    #dbg_value(i32 63, !1803, !DIExpression(), !1851)
    #dbg_value(i32 63, !1803, !DIExpression(), !1851)
    #dbg_value(i64 63, !1803, !DIExpression(), !1851)
  %gep.i = getelementptr i8, ptr %l, i64 120, !dbg !1853
  %0 = load i64, ptr %gep.i, align 8, !dbg !1853
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1853
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i.preheader, !dbg !1854

for.inc.i:                                        ; preds = %entry
    #dbg_value(i64 59, !1803, !DIExpression(), !1851)
  %gep.i.1 = getelementptr i8, ptr %l, i64 112, !dbg !1853
  %1 = load i64, ptr %gep.i.1, align 8, !dbg !1853
  %tobool.not.i.1 = icmp eq i64 %1, 0, !dbg !1853
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.1:                                      ; preds = %for.inc.i
    #dbg_value(i64 55, !1803, !DIExpression(), !1851)
  %gep.i.2 = getelementptr i8, ptr %l, i64 104, !dbg !1853
  %2 = load i64, ptr %gep.i.2, align 8, !dbg !1853
  %tobool.not.i.2 = icmp eq i64 %2, 0, !dbg !1853
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.2:                                      ; preds = %for.inc.i.1
    #dbg_value(i64 51, !1803, !DIExpression(), !1851)
  %gep.i.3 = getelementptr i8, ptr %l, i64 96, !dbg !1853
  %3 = load i64, ptr %gep.i.3, align 8, !dbg !1853
  %tobool.not.i.3 = icmp eq i64 %3, 0, !dbg !1853
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.3:                                      ; preds = %for.inc.i.2
    #dbg_value(i64 47, !1803, !DIExpression(), !1851)
  %gep.i.4 = getelementptr i8, ptr %l, i64 88, !dbg !1853
  %4 = load i64, ptr %gep.i.4, align 8, !dbg !1853
  %tobool.not.i.4 = icmp eq i64 %4, 0, !dbg !1853
  br i1 %tobool.not.i.4, label %for.inc.i.4, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.4:                                      ; preds = %for.inc.i.3
    #dbg_value(i64 43, !1803, !DIExpression(), !1851)
  %gep.i.5 = getelementptr i8, ptr %l, i64 80, !dbg !1853
  %5 = load i64, ptr %gep.i.5, align 8, !dbg !1853
  %tobool.not.i.5 = icmp eq i64 %5, 0, !dbg !1853
  br i1 %tobool.not.i.5, label %for.inc.i.5, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.5:                                      ; preds = %for.inc.i.4
    #dbg_value(i64 39, !1803, !DIExpression(), !1851)
  %gep.i.6 = getelementptr i8, ptr %l, i64 72, !dbg !1853
  %6 = load i64, ptr %gep.i.6, align 8, !dbg !1853
  %tobool.not.i.6 = icmp eq i64 %6, 0, !dbg !1853
  br i1 %tobool.not.i.6, label %for.inc.i.6, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.6:                                      ; preds = %for.inc.i.5
    #dbg_value(i64 35, !1803, !DIExpression(), !1851)
  %gep.i.7 = getelementptr i8, ptr %l, i64 64, !dbg !1853
  %7 = load i64, ptr %gep.i.7, align 8, !dbg !1853
  %tobool.not.i.7 = icmp eq i64 %7, 0, !dbg !1853
  br i1 %tobool.not.i.7, label %for.inc.i.7, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.7:                                      ; preds = %for.inc.i.6
    #dbg_value(i64 31, !1803, !DIExpression(), !1851)
  %gep.i.8 = getelementptr i8, ptr %l, i64 56, !dbg !1853
  %8 = load i64, ptr %gep.i.8, align 8, !dbg !1853
  %tobool.not.i.8 = icmp eq i64 %8, 0, !dbg !1853
  br i1 %tobool.not.i.8, label %for.inc.i.8, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.8:                                      ; preds = %for.inc.i.7
    #dbg_value(i64 27, !1803, !DIExpression(), !1851)
  %gep.i.9 = getelementptr i8, ptr %l, i64 48, !dbg !1853
  %9 = load i64, ptr %gep.i.9, align 8, !dbg !1853
  %tobool.not.i.9 = icmp eq i64 %9, 0, !dbg !1853
  br i1 %tobool.not.i.9, label %for.inc.i.9, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.9:                                      ; preds = %for.inc.i.8
    #dbg_value(i64 23, !1803, !DIExpression(), !1851)
  %gep.i.10 = getelementptr i8, ptr %l, i64 40, !dbg !1853
  %10 = load i64, ptr %gep.i.10, align 8, !dbg !1853
  %tobool.not.i.10 = icmp eq i64 %10, 0, !dbg !1853
  br i1 %tobool.not.i.10, label %for.inc.i.10, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.10:                                     ; preds = %for.inc.i.9
    #dbg_value(i64 19, !1803, !DIExpression(), !1851)
  %gep.i.11 = getelementptr i8, ptr %l, i64 32, !dbg !1853
  %11 = load i64, ptr %gep.i.11, align 8, !dbg !1853
  %tobool.not.i.11 = icmp eq i64 %11, 0, !dbg !1853
  br i1 %tobool.not.i.11, label %for.inc.i.11, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.11:                                     ; preds = %for.inc.i.10
    #dbg_value(i64 15, !1803, !DIExpression(), !1851)
  %gep.i.12 = getelementptr i8, ptr %l, i64 24, !dbg !1853
  %12 = load i64, ptr %gep.i.12, align 8, !dbg !1853
  %tobool.not.i.12 = icmp eq i64 %12, 0, !dbg !1853
  br i1 %tobool.not.i.12, label %for.inc.i.12, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.12:                                     ; preds = %for.inc.i.11
    #dbg_value(i64 11, !1803, !DIExpression(), !1851)
  %gep.i.13 = getelementptr i8, ptr %l, i64 16, !dbg !1853
  %13 = load i64, ptr %gep.i.13, align 8, !dbg !1853
  %tobool.not.i.13 = icmp eq i64 %13, 0, !dbg !1853
  br i1 %tobool.not.i.13, label %for.inc.i.13, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.13:                                     ; preds = %for.inc.i.12
    #dbg_value(i64 7, !1803, !DIExpression(), !1851)
  %gep.i.14 = getelementptr i8, ptr %l, i64 8, !dbg !1853
  %14 = load i64, ptr %gep.i.14, align 8, !dbg !1853
  %tobool.not.i.14 = icmp eq i64 %14, 0, !dbg !1853
  br i1 %tobool.not.i.14, label %for.inc.i.14, label %land.rhs.i.preheader, !dbg !1854

for.inc.i.14:                                     ; preds = %for.inc.i.13
    #dbg_value(i64 3, !1803, !DIExpression(), !1851)
  %15 = load i64, ptr %l, align 8, !dbg !1853
  %tobool.not.i.15 = icmp eq i64 %15, 0, !dbg !1853
  br i1 %tobool.not.i.15, label %x264_coeff_last_internal.exit, label %land.rhs.i.preheader, !dbg !1854

land.rhs.i.preheader:                             ; preds = %entry, %for.inc.i, %for.inc.i.1, %for.inc.i.2, %for.inc.i.3, %for.inc.i.4, %for.inc.i.5, %for.inc.i.6, %for.inc.i.7, %for.inc.i.8, %for.inc.i.9, %for.inc.i.10, %for.inc.i.11, %for.inc.i.12, %for.inc.i.13, %for.inc.i.14
  %i_last.117.i.ph = phi i32 [ 3, %for.inc.i.14 ], [ 7, %for.inc.i.13 ], [ 11, %for.inc.i.12 ], [ 15, %for.inc.i.11 ], [ 19, %for.inc.i.10 ], [ 23, %for.inc.i.9 ], [ 27, %for.inc.i.8 ], [ 31, %for.inc.i.7 ], [ 35, %for.inc.i.6 ], [ 39, %for.inc.i.5 ], [ 43, %for.inc.i.4 ], [ 47, %for.inc.i.3 ], [ 51, %for.inc.i.2 ], [ 55, %for.inc.i.1 ], [ 59, %for.inc.i ], [ 63, %entry ]
  br label %land.rhs.i, !dbg !1855

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.117.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.117.i.ph, %land.rhs.i.preheader ]
    #dbg_value(i32 %i_last.117.i, !1803, !DIExpression(), !1851)
  %idxprom.i = zext nneg i32 %i_last.117.i to i64, !dbg !1856
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom.i, !dbg !1856
  %16 = load i16, ptr %arrayidx.i, align 2, !dbg !1856
  %cmp4.i = icmp eq i16 %16, 0, !dbg !1857
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1855

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.117.i, -1, !dbg !1858
    #dbg_value(i32 %dec.i, !1803, !DIExpression(), !1851)
  %cmp3.i = icmp sgt i32 %i_last.117.i, 0, !dbg !1859
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1860, !llvm.loop !1861

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i, %for.inc.i.14
  %i_last.1.lcssa.i = phi i32 [ -1, %for.inc.i.14 ], [ %i_last.117.i, %land.rhs.i ], [ -1, %while.body.i ], !dbg !1851
  ret i32 %i_last.1.lcssa.i, !dbg !1862
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run4(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1863 {
entry:
    #dbg_value(ptr %dct, !1865, !DIExpression(), !1871)
    #dbg_value(ptr %runlevel, !1866, !DIExpression(), !1871)
    #dbg_value(ptr %dct, !1797, !DIExpression(), !1872)
    #dbg_value(ptr %dct, !1799, !DIExpression(), !1874)
    #dbg_value(i32 4, !1802, !DIExpression(), !1874)
    #dbg_value(i32 3, !1803, !DIExpression(), !1874)
    #dbg_value(i32 3, !1803, !DIExpression(), !1874)
    #dbg_value(i64 3, !1803, !DIExpression(), !1874)
  %0 = load i64, ptr %dct, align 8, !dbg !1876
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1876
  br i1 %tobool.not.i.i, label %x264_coeff_last4.exit, label %land.rhs.i.i.preheader, !dbg !1877

land.rhs.i.i.preheader:                           ; preds = %entry
    #dbg_value(i32 3, !1803, !DIExpression(), !1874)
  %cmp4.i.i = icmp ult i64 %0, 281474976710656, !dbg !1878
  br i1 %cmp4.i.i, label %while.body.i.i, label %land.rhs.lr.ph.lr.ph, !dbg !1879

while.body.i.i:                                   ; preds = %land.rhs.i.i.preheader
    #dbg_value(i32 2, !1803, !DIExpression(), !1874)
  %cmp4.i.i.1 = icmp ult i64 %0, 4294967296, !dbg !1878
  br i1 %cmp4.i.i.1, label %while.body.i.i.1, label %land.rhs.lr.ph.lr.ph, !dbg !1879

while.body.i.i.1:                                 ; preds = %while.body.i.i
    #dbg_value(i32 1, !1803, !DIExpression(), !1874)
  %cmp4.i.i.2 = icmp ult i64 %0, 65536, !dbg !1878
  br i1 %cmp4.i.i.2, label %x264_coeff_last4.exit, label %land.rhs.lr.ph.lr.ph, !dbg !1879

x264_coeff_last4.exit:                            ; preds = %while.body.i.i.1, %entry
  %i_last.1.lcssa.i.i = phi i32 [ -1, %entry ], [ 0, %while.body.i.i.1 ], !dbg !1874
  store i32 %i_last.1.lcssa.i.i, ptr %runlevel, align 4, !dbg !1880
    #dbg_value(i32 %i_last.1.lcssa.i.i, !1867, !DIExpression(), !1871)
    #dbg_value(i32 0, !1868, !DIExpression(), !1871)
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1869, !DIExpression(), !1881)
  %idxprom39 = sext i32 %i_last.1.lcssa.i.i to i64, !dbg !1882
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39, !dbg !1882
  %1 = load i16, ptr %arrayidx40, align 2, !dbg !1882
  store i16 %1, ptr %level, align 2, !dbg !1882
  br label %do.end, !dbg !1882

land.rhs.lr.ph.lr.ph:                             ; preds = %land.rhs.i.i.preheader, %while.body.i.i, %while.body.i.i.1
  %i_last.1.lcssa.i.i.ph = phi i32 [ 1, %while.body.i.i.1 ], [ 2, %while.body.i.i ], [ 3, %land.rhs.i.i.preheader ]
  store i32 %i_last.1.lcssa.i.i.ph, ptr %runlevel, align 4, !dbg !1880
    #dbg_value(i32 %i_last.1.lcssa.i.i.ph, !1867, !DIExpression(), !1871)
    #dbg_value(i32 0, !1868, !DIExpression(), !1871)
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1869, !DIExpression(), !1881)
  %idxprom3963 = zext nneg i32 %i_last.1.lcssa.i.i.ph to i64, !dbg !1882
  %arrayidx4064 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3963, !dbg !1882
  %2 = load i16, ptr %arrayidx4064, align 2, !dbg !1882
  store i16 %2, ptr %level62, align 2, !dbg !1882
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph, !dbg !1882

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.1.lcssa.i.i.ph, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
    #dbg_value(i64 %indvars.iv57, !1868, !DIExpression(), !1871)
  %3 = zext i32 %dec3045.in to i64, !dbg !1882
  %4 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1), !dbg !1882
  br label %land.rhs, !dbg !1882

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1882
    #dbg_value(i32 %r.032, !1869, !DIExpression(), !1881)
  %idxprom3 = and i64 %indvars.iv.next, 4294967295, !dbg !1882
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3, !dbg !1882
  %5 = load i16, ptr %arrayidx4, align 2, !dbg !1882
  %cmp5 = icmp eq i16 %5, 0, !dbg !1882
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1882

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1, !dbg !1882
    #dbg_value(i32 %inc, !1869, !DIExpression(), !1881)
    #dbg_value(i32 %indvars, !1867, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1871)
  %exitcond.not = icmp eq i32 %inc, %4, !dbg !1882
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs, !dbg !1882, !llvm.loop !1883

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1882
  %6 = trunc nuw i64 %indvars.iv to i32, !dbg !1882
  %conv7 = trunc i32 %r.032 to i8, !dbg !1882
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !1882
    #dbg_value(i64 %indvars.iv.next58, !1868, !DIExpression(), !1871)
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57, !dbg !1882
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !1882
    #dbg_value(i32 %indvars, !1867, !DIExpression(), !1871)
    #dbg_value(i32 0, !1869, !DIExpression(), !1881)
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1882
  %7 = ashr exact i64 %sext, 31, !dbg !1882
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %7, !dbg !1882
  %8 = load i16, ptr %arrayidx, align 2, !dbg !1882
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level62, i64 0, i64 %indvars.iv.next58, !dbg !1882
  store i16 %8, ptr %arrayidx2, align 2, !dbg !1882
  %cmp31 = icmp sgt i32 %6, 1, !dbg !1882
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49, !dbg !1882, !llvm.loop !1884

do.end.loopexit:                                  ; preds = %while.body
  %9 = trunc nuw nsw i64 %indvars.iv57 to i32, !dbg !1882
  %10 = trunc i32 %4 to i8, !dbg !1882
  br label %do.end, !dbg !1882

do.end.loopexit49:                                ; preds = %while.end
  %11 = trunc nuw i64 %indvars.iv.next58 to i32, !dbg !1882
  br label %do.end, !dbg !1882

do.end:                                           ; preds = %x264_coeff_last4.exit, %do.end.loopexit49, %do.end.loopexit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last4.exit ], [ %9, %do.end.loopexit ], [ %11, %do.end.loopexit49 ], !dbg !1880
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last4.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ], !dbg !1882
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last4.exit ], [ %10, %do.end.loopexit ], [ 0, %do.end.loopexit49 ], !dbg !1882
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36, !dbg !1882
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !1882
    #dbg_value(i32 %inc825, !1868, !DIExpression(), !1871)
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa, !dbg !1882
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1, !dbg !1882
  ret i32 %inc825, !dbg !1880
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run15(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1885 {
entry:
    #dbg_value(ptr %dct, !1887, !DIExpression(), !1893)
    #dbg_value(ptr %runlevel, !1888, !DIExpression(), !1893)
    #dbg_value(ptr %dct, !1817, !DIExpression(), !1894)
    #dbg_value(ptr %dct, !1799, !DIExpression(), !1896)
    #dbg_value(i32 15, !1802, !DIExpression(), !1896)
    #dbg_value(i32 14, !1803, !DIExpression(), !1896)
    #dbg_value(i32 14, !1803, !DIExpression(), !1896)
    #dbg_value(i64 14, !1803, !DIExpression(), !1896)
  %gep.i.i = getelementptr i8, ptr %dct, i64 22, !dbg !1898
  %0 = load i64, ptr %gep.i.i, align 8, !dbg !1898
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1898
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.i.i.preheader, !dbg !1899

for.inc.i.i:                                      ; preds = %entry
    #dbg_value(i64 10, !1803, !DIExpression(), !1896)
  %gep.i.1.i = getelementptr i8, ptr %dct, i64 14, !dbg !1898
  %1 = load i64, ptr %gep.i.1.i, align 8, !dbg !1898
  %tobool.not.i.1.i = icmp eq i64 %1, 0, !dbg !1898
  br i1 %tobool.not.i.1.i, label %for.inc.i.1.i, label %land.rhs.i.i.preheader, !dbg !1899

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
    #dbg_value(i64 6, !1803, !DIExpression(), !1896)
  %gep.i.2.i = getelementptr i8, ptr %dct, i64 6, !dbg !1898
  %2 = load i64, ptr %gep.i.2.i, align 8, !dbg !1898
  %tobool.not.i.2.i = icmp eq i64 %2, 0, !dbg !1898
  %spec.select.i = select i1 %tobool.not.i.2.i, i32 2, i32 6, !dbg !1899
  br label %land.rhs.i.i.preheader, !dbg !1899

land.rhs.i.i.preheader:                           ; preds = %for.inc.i.1.i, %for.inc.i.i, %entry
  %i_last.117.i.i.ph = phi i32 [ %spec.select.i, %for.inc.i.1.i ], [ 10, %for.inc.i.i ], [ 14, %entry ]
  br label %land.rhs.i.i, !dbg !1900

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.preheader, %while.body.i.i
  %i_last.117.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %i_last.117.i.i.ph, %land.rhs.i.i.preheader ]
    #dbg_value(i32 %i_last.117.i.i, !1803, !DIExpression(), !1896)
  %idxprom.i.i = zext nneg i32 %i_last.117.i.i to i64, !dbg !1901
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom.i.i, !dbg !1901
  %3 = load i16, ptr %arrayidx.i.i, align 2, !dbg !1901
  %cmp4.i.i = icmp eq i16 %3, 0, !dbg !1902
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last15.exit, !dbg !1900

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.117.i.i, -1, !dbg !1903
    #dbg_value(i32 %dec.i.i, !1803, !DIExpression(), !1896)
  %cmp3.i.i = icmp sgt i32 %i_last.117.i.i, 0, !dbg !1904
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last15.exit.thread, !dbg !1905, !llvm.loop !1906

x264_coeff_last15.exit.thread:                    ; preds = %while.body.i.i
  store i32 -1, ptr %runlevel, align 4, !dbg !1907
    #dbg_value(i32 -1, !1889, !DIExpression(), !1893)
    #dbg_value(i32 0, !1890, !DIExpression(), !1893)
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1890, !DIExpression(), !1893)
    #dbg_value(i32 -1, !1889, !DIExpression(), !1893)
    #dbg_value(i32 0, !1891, !DIExpression(), !1908)
  %arrayidx4064 = getelementptr inbounds i8, ptr %dct, i64 -2, !dbg !1909
  %4 = load i16, ptr %arrayidx4064, align 2, !dbg !1909
  store i16 %4, ptr %level62, align 2, !dbg !1909
  br label %do.end, !dbg !1909

x264_coeff_last15.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.117.i.i, ptr %runlevel, align 4, !dbg !1907
    #dbg_value(i32 %i_last.117.i.i, !1889, !DIExpression(), !1893)
    #dbg_value(i32 0, !1890, !DIExpression(), !1893)
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1891, !DIExpression(), !1908)
  %idxprom39 = zext nneg i32 %i_last.117.i.i to i64, !dbg !1909
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39, !dbg !1909
  %5 = load i16, ptr %arrayidx40, align 2, !dbg !1909
  store i16 %5, ptr %level, align 2, !dbg !1909
  %cmp3142.not = icmp eq i32 %i_last.117.i.i, 0, !dbg !1909
  br i1 %cmp3142.not, label %do.end, label %land.rhs.lr.ph.lr.ph, !dbg !1909

land.rhs.lr.ph.lr.ph:                             ; preds = %x264_coeff_last15.exit
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph, !dbg !1909

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.117.i.i, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
    #dbg_value(i64 %indvars.iv57, !1890, !DIExpression(), !1893)
  %6 = zext i32 %dec3045.in to i64, !dbg !1909
  %7 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1), !dbg !1909
  br label %land.rhs, !dbg !1909

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %6, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1909
    #dbg_value(i32 %r.032, !1891, !DIExpression(), !1908)
  %idxprom3 = and i64 %indvars.iv.next, 4294967295, !dbg !1909
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3, !dbg !1909
  %8 = load i16, ptr %arrayidx4, align 2, !dbg !1909
  %cmp5 = icmp eq i16 %8, 0, !dbg !1909
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1909

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1, !dbg !1909
    #dbg_value(i32 %inc, !1891, !DIExpression(), !1908)
    #dbg_value(i32 %indvars, !1889, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1893)
  %exitcond.not = icmp eq i32 %inc, %7, !dbg !1909
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs, !dbg !1909, !llvm.loop !1910

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1909
  %9 = trunc nuw i64 %indvars.iv to i32, !dbg !1909
  %conv7 = trunc i32 %r.032 to i8, !dbg !1909
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !1909
    #dbg_value(i64 %indvars.iv.next58, !1890, !DIExpression(), !1893)
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57, !dbg !1909
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !1909
    #dbg_value(i32 %indvars, !1889, !DIExpression(), !1893)
    #dbg_value(i32 0, !1891, !DIExpression(), !1908)
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1909
  %10 = ashr exact i64 %sext, 31, !dbg !1909
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %10, !dbg !1909
  %11 = load i16, ptr %arrayidx, align 2, !dbg !1909
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv.next58, !dbg !1909
  store i16 %11, ptr %arrayidx2, align 2, !dbg !1909
  %cmp31 = icmp sgt i32 %9, 1, !dbg !1909
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49, !dbg !1909, !llvm.loop !1911

do.end.loopexit:                                  ; preds = %while.body
  %12 = trunc nuw nsw i64 %indvars.iv57 to i32, !dbg !1909
  %13 = trunc i32 %7 to i8, !dbg !1909
  br label %do.end, !dbg !1909

do.end.loopexit49:                                ; preds = %while.end
  %14 = trunc nuw i64 %indvars.iv.next58 to i32, !dbg !1909
  br label %do.end, !dbg !1909

do.end:                                           ; preds = %x264_coeff_last15.exit.thread, %do.end.loopexit49, %do.end.loopexit, %x264_coeff_last15.exit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last15.exit ], [ %12, %do.end.loopexit ], [ %14, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ], !dbg !1907
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last15.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ], !dbg !1909
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last15.exit ], [ %13, %do.end.loopexit ], [ 0, %do.end.loopexit49 ], [ 0, %x264_coeff_last15.exit.thread ], !dbg !1909
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36, !dbg !1909
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !1909
    #dbg_value(i32 %inc825, !1890, !DIExpression(), !1893)
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa, !dbg !1909
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1, !dbg !1909
  ret i32 %inc825, !dbg !1907
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @x264_coeff_level_run16(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1912 {
entry:
    #dbg_value(ptr %dct, !1914, !DIExpression(), !1920)
    #dbg_value(ptr %runlevel, !1915, !DIExpression(), !1920)
    #dbg_value(ptr %dct, !1833, !DIExpression(), !1921)
    #dbg_value(ptr %dct, !1799, !DIExpression(), !1923)
    #dbg_value(i32 16, !1802, !DIExpression(), !1923)
    #dbg_value(i32 15, !1803, !DIExpression(), !1923)
    #dbg_value(i32 15, !1803, !DIExpression(), !1923)
    #dbg_value(i64 15, !1803, !DIExpression(), !1923)
  %gep.i.i = getelementptr i8, ptr %dct, i64 24, !dbg !1925
  %0 = load i64, ptr %gep.i.i, align 8, !dbg !1925
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1925
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.i.i.preheader, !dbg !1926

for.inc.i.i:                                      ; preds = %entry
    #dbg_value(i64 11, !1803, !DIExpression(), !1923)
  %gep.i.1.i = getelementptr i8, ptr %dct, i64 16, !dbg !1925
  %1 = load i64, ptr %gep.i.1.i, align 8, !dbg !1925
  %tobool.not.i.1.i = icmp eq i64 %1, 0, !dbg !1925
  br i1 %tobool.not.i.1.i, label %for.inc.i.1.i, label %land.rhs.i.i.preheader, !dbg !1926

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
    #dbg_value(i64 7, !1803, !DIExpression(), !1923)
  %gep.i.2.i = getelementptr i8, ptr %dct, i64 8, !dbg !1925
  %2 = load i64, ptr %gep.i.2.i, align 8, !dbg !1925
  %tobool.not.i.2.i = icmp eq i64 %2, 0, !dbg !1925
  br i1 %tobool.not.i.2.i, label %for.inc.i.2.i, label %land.rhs.i.i.preheader, !dbg !1926

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
    #dbg_value(i64 3, !1803, !DIExpression(), !1923)
  %3 = load i64, ptr %dct, align 8, !dbg !1925
  %tobool.not.i.3.i = icmp eq i64 %3, 0, !dbg !1925
  br i1 %tobool.not.i.3.i, label %x264_coeff_last16.exit.thread, label %land.rhs.i.i.preheader, !dbg !1926

land.rhs.i.i.preheader:                           ; preds = %for.inc.i.2.i, %for.inc.i.1.i, %for.inc.i.i, %entry
  %i_last.117.i.i.ph = phi i32 [ 3, %for.inc.i.2.i ], [ 7, %for.inc.i.1.i ], [ 11, %for.inc.i.i ], [ 15, %entry ]
  br label %land.rhs.i.i, !dbg !1927

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.preheader, %while.body.i.i
  %i_last.117.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %i_last.117.i.i.ph, %land.rhs.i.i.preheader ]
    #dbg_value(i32 %i_last.117.i.i, !1803, !DIExpression(), !1923)
  %idxprom.i.i = zext nneg i32 %i_last.117.i.i to i64, !dbg !1928
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom.i.i, !dbg !1928
  %4 = load i16, ptr %arrayidx.i.i, align 2, !dbg !1928
  %cmp4.i.i = icmp eq i16 %4, 0, !dbg !1929
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last16.exit, !dbg !1927

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.117.i.i, -1, !dbg !1930
    #dbg_value(i32 %dec.i.i, !1803, !DIExpression(), !1923)
  %cmp3.i.i = icmp sgt i32 %i_last.117.i.i, 0, !dbg !1931
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last16.exit.thread, !dbg !1932, !llvm.loop !1933

x264_coeff_last16.exit.thread:                    ; preds = %while.body.i.i, %for.inc.i.2.i
  store i32 -1, ptr %runlevel, align 4, !dbg !1934
    #dbg_value(i32 -1, !1916, !DIExpression(), !1920)
    #dbg_value(i32 0, !1917, !DIExpression(), !1920)
  %level62 = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1918, !DIExpression(), !1935)
  %arrayidx4064 = getelementptr inbounds i8, ptr %dct, i64 -2, !dbg !1936
  %5 = load i16, ptr %arrayidx4064, align 2, !dbg !1936
  store i16 %5, ptr %level62, align 2, !dbg !1936
  br label %do.end, !dbg !1936

x264_coeff_last16.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.117.i.i, ptr %runlevel, align 4, !dbg !1934
    #dbg_value(i32 %i_last.117.i.i, !1916, !DIExpression(), !1920)
    #dbg_value(i32 0, !1917, !DIExpression(), !1920)
  %level = getelementptr inbounds i8, ptr %runlevel, i64 4
    #dbg_value(i32 0, !1918, !DIExpression(), !1935)
  %idxprom39 = zext nneg i32 %i_last.117.i.i to i64, !dbg !1936
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 %idxprom39, !dbg !1936
  %6 = load i16, ptr %arrayidx40, align 2, !dbg !1936
  store i16 %6, ptr %level, align 2, !dbg !1936
  %cmp3142.not = icmp eq i32 %i_last.117.i.i, 0, !dbg !1936
  br i1 %cmp3142.not, label %do.end, label %land.rhs.lr.ph.lr.ph, !dbg !1936

land.rhs.lr.ph.lr.ph:                             ; preds = %x264_coeff_last16.exit
  %run = getelementptr inbounds i8, ptr %runlevel, i64 36
  br label %land.rhs.lr.ph, !dbg !1936

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %while.end
  %indvars.iv57 = phi i64 [ 0, %land.rhs.lr.ph.lr.ph ], [ %indvars.iv.next58, %while.end ]
  %dec3045.in = phi i32 [ %i_last.117.i.i, %land.rhs.lr.ph.lr.ph ], [ %indvars, %while.end ]
    #dbg_value(i64 %indvars.iv57, !1917, !DIExpression(), !1920)
  %7 = zext i32 %dec3045.in to i64, !dbg !1936
  %8 = tail call i32 @llvm.smax.i32(i32 %dec3045.in, i32 1), !dbg !1936
  br label %land.rhs, !dbg !1936

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %7, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1936
    #dbg_value(i32 %r.032, !1918, !DIExpression(), !1935)
  %idxprom3 = and i64 %indvars.iv.next, 4294967295, !dbg !1936
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom3, !dbg !1936
  %9 = load i16, ptr %arrayidx4, align 2, !dbg !1936
  %cmp5 = icmp eq i16 %9, 0, !dbg !1936
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1936

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1, !dbg !1936
    #dbg_value(i32 %inc, !1918, !DIExpression(), !1935)
    #dbg_value(i32 %indvars, !1916, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !1920)
  %exitcond.not = icmp eq i32 %inc, %8, !dbg !1936
  br i1 %exitcond.not, label %do.end.loopexit, label %land.rhs, !dbg !1936, !llvm.loop !1937

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1936
  %10 = trunc nuw i64 %indvars.iv to i32, !dbg !1936
  %conv7 = trunc i32 %r.032 to i8, !dbg !1936
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !1936
    #dbg_value(i64 %indvars.iv.next58, !1917, !DIExpression(), !1920)
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %run, i64 0, i64 %indvars.iv57, !dbg !1936
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !1936
    #dbg_value(i32 %indvars, !1916, !DIExpression(), !1920)
    #dbg_value(i32 0, !1918, !DIExpression(), !1935)
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1936
  %11 = ashr exact i64 %sext, 31, !dbg !1936
  %arrayidx = getelementptr inbounds i8, ptr %dct, i64 %11, !dbg !1936
  %12 = load i16, ptr %arrayidx, align 2, !dbg !1936
  %arrayidx2 = getelementptr inbounds [16 x i16], ptr %level, i64 0, i64 %indvars.iv.next58, !dbg !1936
  store i16 %12, ptr %arrayidx2, align 2, !dbg !1936
  %cmp31 = icmp sgt i32 %10, 1, !dbg !1936
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.end.loopexit49, !dbg !1936, !llvm.loop !1938

do.end.loopexit:                                  ; preds = %while.body
  %13 = trunc nuw nsw i64 %indvars.iv57 to i32, !dbg !1936
  %14 = trunc i32 %8 to i8, !dbg !1936
  br label %do.end, !dbg !1936

do.end.loopexit49:                                ; preds = %while.end
  %15 = trunc nuw i64 %indvars.iv.next58 to i32, !dbg !1936
  br label %do.end, !dbg !1936

do.end:                                           ; preds = %x264_coeff_last16.exit.thread, %do.end.loopexit49, %do.end.loopexit, %x264_coeff_last16.exit
  %i_total.0.lcssa = phi i32 [ 0, %x264_coeff_last16.exit ], [ %13, %do.end.loopexit ], [ %15, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ], !dbg !1934
  %idxprom1.lcssa = phi i64 [ 0, %x264_coeff_last16.exit ], [ %indvars.iv57, %do.end.loopexit ], [ %indvars.iv.next58, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ], !dbg !1936
  %r.0.lcssa = phi i8 [ 0, %x264_coeff_last16.exit ], [ %14, %do.end.loopexit ], [ 0, %do.end.loopexit49 ], [ 0, %x264_coeff_last16.exit.thread ], !dbg !1936
  %run24 = getelementptr inbounds i8, ptr %runlevel, i64 36, !dbg !1936
  %inc825 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !1936
    #dbg_value(i32 %inc825, !1917, !DIExpression(), !1920)
  %arrayidx1026 = getelementptr inbounds [16 x i8], ptr %run24, i64 0, i64 %idxprom1.lcssa, !dbg !1936
  store i8 %r.0.lcssa, ptr %arrayidx1026, align 1, !dbg !1936
  ret i32 %inc825, !dbg !1934
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_decimate_table4", scope: !2, file: !3, line: 162, type: !63, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !56, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264_src/common/quant.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "b18eb31ba13b78284f51bf7313166417")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 258, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "x264_src/common/macroblock.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!10 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!11 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!12 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!13 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!14 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!15 = !{!16, !7, !40}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !18, line: 89, baseType: !19)
!18 = !DIFile(filename: "x264_src/common/common.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 89, size: 32, elements: !20)
!20 = !{!21, !26, !33}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !19, file: !18, line: 89, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 26, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !7)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!26 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !19, file: !18, line: 89, baseType: !27, size: 32)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !31)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !23, line: 25, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !25, line: 40, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !19, file: !18, line: 89, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !38)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 24, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !18, line: 90, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 90, size: 64, elements: !43)
!43 = !{!44, !48, !50, !52}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !42, file: !18, line: 90, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 27, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !25, line: 45, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !42, file: !18, line: 90, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !31)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !18, line: 90, baseType: !51, size: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !38)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !42, file: !18, line: 90, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 8)
!56 = !{!0, !57}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "x264_decimate_table8", scope: !2, file: !3, line: 166, type: !59, isLocal: false, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !61)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!61 = !{!62}
!62 = !DISubrange(count: 64)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 16)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!74 = distinct !DISubprogram(name: "x264_quant_init", scope: !3, file: !3, line: 266, type: !75, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !88, !1365}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "x264_src/x264.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !18, line: 381, size: 266752, elements: !81)
!81 = !{!82, !247, !251, !252, !253, !254, !255, !256, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !392, !394, !421, !423, !424, !425, !429, !433, !434, !435, !439, !443, !444, !445, !450, !453, !454, !531, !548, !709, !710, !711, !712, !716, !717, !718, !719, !720, !721, !722, !737, !930, !934, !995, !998, !1000, !1001, !1002, !1005, !1010, !1019, !1020, !1028, !1030, !1035, !1111, !1197, !1241, !1263, !1312, !1341}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !80, file: !18, line: 384, baseType: !83, size: 5632)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !79, line: 376, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !79, line: 176, size: 5632, elements: !85)
!85 = !{!86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !132, !133, !134, !135, !137, !138, !152, !153, !154, !155, !156, !185, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !84, file: !79, line: 179, baseType: !7, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !84, file: !79, line: 180, baseType: !88, size: 32, offset: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !84, file: !79, line: 181, baseType: !88, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !84, file: !79, line: 182, baseType: !88, size: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !84, file: !79, line: 183, baseType: !88, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !84, file: !79, line: 186, baseType: !88, size: 32, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !84, file: !79, line: 187, baseType: !88, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !84, file: !79, line: 188, baseType: !88, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !84, file: !79, line: 189, baseType: !88, size: 32, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !84, file: !79, line: 190, baseType: !88, size: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !84, file: !79, line: 198, baseType: !88, size: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !84, file: !79, line: 215, baseType: !99, size: 288, offset: 352)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 200, size: 288, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !99, file: !79, line: 203, baseType: !88, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !99, file: !79, line: 204, baseType: !88, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !99, file: !79, line: 206, baseType: !88, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !99, file: !79, line: 209, baseType: !88, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !99, file: !79, line: 210, baseType: !88, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !99, file: !79, line: 211, baseType: !88, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !99, file: !79, line: 212, baseType: !88, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !99, file: !79, line: 213, baseType: !88, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !99, file: !79, line: 214, baseType: !88, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !84, file: !79, line: 218, baseType: !88, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !84, file: !79, line: 219, baseType: !88, size: 32, offset: 672)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !84, file: !79, line: 220, baseType: !88, size: 32, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !84, file: !79, line: 221, baseType: !88, size: 32, offset: 736)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !84, file: !79, line: 222, baseType: !88, size: 32, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !84, file: !79, line: 224, baseType: !88, size: 32, offset: 800)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !84, file: !79, line: 225, baseType: !88, size: 32, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !84, file: !79, line: 226, baseType: !88, size: 32, offset: 864)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !84, file: !79, line: 227, baseType: !88, size: 32, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !84, file: !79, line: 229, baseType: !88, size: 32, offset: 928)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !84, file: !79, line: 230, baseType: !88, size: 32, offset: 960)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !84, file: !79, line: 231, baseType: !88, size: 32, offset: 992)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !84, file: !79, line: 233, baseType: !88, size: 32, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !84, file: !79, line: 234, baseType: !88, size: 32, offset: 1056)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !84, file: !79, line: 236, baseType: !88, size: 32, offset: 1088)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !84, file: !79, line: 237, baseType: !88, size: 32, offset: 1120)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !84, file: !79, line: 239, baseType: !88, size: 32, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !84, file: !79, line: 240, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !84, file: !79, line: 241, baseType: !131, size: 128, offset: 1280)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !84, file: !79, line: 242, baseType: !131, size: 128, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !84, file: !79, line: 243, baseType: !131, size: 128, offset: 1536)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !84, file: !79, line: 244, baseType: !131, size: 128, offset: 1664)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !84, file: !79, line: 245, baseType: !136, size: 512, offset: 1792)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !61)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !84, file: !79, line: 246, baseType: !136, size: 512, offset: 2304)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !84, file: !79, line: 249, baseType: !139, size: 64, offset: 2816)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142, !88, !143, !145}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !3, line: 166, baseType: !7, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !3, line: 166, baseType: !7, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !3, line: 166, baseType: !142, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !3, line: 166, baseType: !142, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !84, file: !79, line: 250, baseType: !142, size: 64, offset: 2880)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !84, file: !79, line: 251, baseType: !88, size: 32, offset: 2944)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !84, file: !79, line: 252, baseType: !88, size: 32, offset: 2976)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !84, file: !79, line: 253, baseType: !128, size: 64, offset: 3008)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !84, file: !79, line: 287, baseType: !157, size: 800, offset: 3072)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 256, size: 800, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !183, !184}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !157, file: !79, line: 258, baseType: !7, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !157, file: !79, line: 259, baseType: !7, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !157, file: !79, line: 261, baseType: !88, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !157, file: !79, line: 262, baseType: !88, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !157, file: !79, line: 263, baseType: !88, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !157, file: !79, line: 264, baseType: !88, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !157, file: !79, line: 265, baseType: !88, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !157, file: !79, line: 267, baseType: !88, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !157, file: !79, line: 268, baseType: !88, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !157, file: !79, line: 269, baseType: !88, size: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !157, file: !79, line: 270, baseType: !88, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !157, file: !79, line: 271, baseType: !88, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !157, file: !79, line: 272, baseType: !88, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !157, file: !79, line: 273, baseType: !88, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !157, file: !79, line: 274, baseType: !88, size: 32, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !157, file: !79, line: 275, baseType: !88, size: 32, offset: 480)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !157, file: !79, line: 276, baseType: !88, size: 32, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !157, file: !79, line: 277, baseType: !88, size: 32, offset: 544)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !157, file: !79, line: 278, baseType: !178, size: 32, offset: 576)
!178 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !157, file: !79, line: 279, baseType: !178, size: 32, offset: 608)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !157, file: !79, line: 280, baseType: !88, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !157, file: !79, line: 283, baseType: !182, size: 64, offset: 672)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !31)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !157, file: !79, line: 285, baseType: !88, size: 32, offset: 736)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !157, file: !79, line: 286, baseType: !88, size: 32, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !84, file: !79, line: 327, baseType: !186, size: 1152, offset: 3904)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 290, size: 1152, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !225, !226}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !186, file: !79, line: 292, baseType: !88, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !186, file: !79, line: 294, baseType: !88, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !186, file: !79, line: 295, baseType: !88, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !186, file: !79, line: 296, baseType: !88, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !186, file: !79, line: 297, baseType: !88, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !186, file: !79, line: 299, baseType: !88, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !186, file: !79, line: 300, baseType: !178, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !186, file: !79, line: 301, baseType: !178, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !186, file: !79, line: 302, baseType: !178, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !186, file: !79, line: 303, baseType: !88, size: 32, offset: 288)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !186, file: !79, line: 304, baseType: !88, size: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !186, file: !79, line: 305, baseType: !178, size: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !186, file: !79, line: 306, baseType: !178, size: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !186, file: !79, line: 307, baseType: !178, size: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !186, file: !79, line: 309, baseType: !88, size: 32, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !186, file: !79, line: 310, baseType: !178, size: 32, offset: 480)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !186, file: !79, line: 311, baseType: !88, size: 32, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !186, file: !79, line: 312, baseType: !88, size: 32, offset: 544)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !186, file: !79, line: 315, baseType: !88, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !186, file: !79, line: 316, baseType: !128, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !186, file: !79, line: 317, baseType: !88, size: 32, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !186, file: !79, line: 318, baseType: !128, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !186, file: !79, line: 321, baseType: !178, size: 32, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !186, file: !79, line: 322, baseType: !178, size: 32, offset: 864)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !186, file: !79, line: 323, baseType: !178, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !186, file: !79, line: 324, baseType: !214, size: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !79, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 167, size: 256, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !216, file: !79, line: 169, baseType: !88, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !216, file: !79, line: 169, baseType: !88, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !216, file: !79, line: 170, baseType: !88, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !216, file: !79, line: 171, baseType: !88, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !216, file: !79, line: 172, baseType: !178, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !216, file: !79, line: 173, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !186, file: !79, line: 325, baseType: !88, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !186, file: !79, line: 326, baseType: !128, size: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !84, file: !79, line: 330, baseType: !88, size: 32, offset: 5056)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !84, file: !79, line: 331, baseType: !88, size: 32, offset: 5088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !84, file: !79, line: 332, baseType: !88, size: 32, offset: 5120)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !84, file: !79, line: 334, baseType: !88, size: 32, offset: 5152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !84, file: !79, line: 335, baseType: !88, size: 32, offset: 5184)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !84, file: !79, line: 336, baseType: !22, size: 32, offset: 5216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !84, file: !79, line: 337, baseType: !22, size: 32, offset: 5248)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !84, file: !79, line: 338, baseType: !22, size: 32, offset: 5280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !84, file: !79, line: 339, baseType: !22, size: 32, offset: 5312)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !84, file: !79, line: 340, baseType: !88, size: 32, offset: 5344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !84, file: !79, line: 344, baseType: !88, size: 32, offset: 5376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !84, file: !79, line: 356, baseType: !88, size: 32, offset: 5408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !84, file: !79, line: 364, baseType: !88, size: 32, offset: 5440)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !84, file: !79, line: 367, baseType: !88, size: 32, offset: 5472)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !84, file: !79, line: 368, baseType: !88, size: 32, offset: 5504)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !84, file: !79, line: 369, baseType: !88, size: 32, offset: 5536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !84, file: !79, line: 375, baseType: !244, size: 64, offset: 5568)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !142}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !80, file: !18, line: 386, baseType: !248, size: 8256, offset: 5632)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8256, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 129)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !80, file: !18, line: 387, baseType: !88, size: 32, offset: 13888)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !80, file: !18, line: 388, baseType: !88, size: 32, offset: 13920)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !80, file: !18, line: 389, baseType: !88, size: 32, offset: 13952)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !80, file: !18, line: 390, baseType: !88, size: 32, offset: 13984)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !80, file: !18, line: 391, baseType: !88, size: 32, offset: 14016)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !80, file: !18, line: 402, baseType: !257, size: 576, offset: 14080)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 394, size: 576, elements: !258)
!258 = !{!259, !260, !261, !271, !272, !273}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !257, file: !18, line: 396, baseType: !88, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !257, file: !18, line: 397, baseType: !88, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !257, file: !18, line: 398, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !79, line: 604, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 593, size: 192, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !264, file: !79, line: 595, baseType: !88, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !264, file: !79, line: 596, baseType: !88, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !264, file: !79, line: 599, baseType: !88, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !264, file: !79, line: 603, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !257, file: !18, line: 399, baseType: !88, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !257, file: !18, line: 400, baseType: !270, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !257, file: !18, line: 401, baseType: !274, size: 320, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !275, line: 56, baseType: !276)
!275 = !DIFile(filename: "x264_src/common/bs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !275, line: 47, size: 320, elements: !277)
!277 = !{!278, !279, !280, !281, !285, !286}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !276, file: !275, line: 49, baseType: !270, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !276, file: !275, line: 50, baseType: !270, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !276, file: !275, line: 51, baseType: !270, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !276, file: !275, line: 53, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !283, line: 87, baseType: !284)
!283 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!284 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !276, file: !275, line: 54, baseType: !88, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !276, file: !275, line: 55, baseType: !88, size: 32, offset: 288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !80, file: !18, line: 404, baseType: !270, size: 64, offset: 14656)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !80, file: !18, line: 405, baseType: !88, size: 32, offset: 14720)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !80, file: !18, line: 410, baseType: !88, size: 32, offset: 14752)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !80, file: !18, line: 411, baseType: !88, size: 32, offset: 14784)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !80, file: !18, line: 413, baseType: !88, size: 32, offset: 14816)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !80, file: !18, line: 415, baseType: !88, size: 32, offset: 14848)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !80, file: !18, line: 416, baseType: !88, size: 32, offset: 14880)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !80, file: !18, line: 418, baseType: !88, size: 32, offset: 14912)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !80, file: !18, line: 419, baseType: !88, size: 32, offset: 14944)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !80, file: !18, line: 420, baseType: !88, size: 32, offset: 14976)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !80, file: !18, line: 421, baseType: !88, size: 32, offset: 15008)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !80, file: !18, line: 422, baseType: !88, size: 32, offset: 15040)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !80, file: !18, line: 424, baseType: !88, size: 32, offset: 15072)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !80, file: !18, line: 425, baseType: !88, size: 32, offset: 15104)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !80, file: !18, line: 427, baseType: !88, size: 32, offset: 15136)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !80, file: !18, line: 430, baseType: !303, size: 10400, offset: 15168)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 10400, elements: !390)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !305, line: 154, baseType: !306)
!305 = !DIFile(filename: "x264_src/common/set.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 52, size: 10400, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !325, !326, !327, !328, !329, !330, !331, !332, !333, !340, !341, !389}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !306, file: !305, line: 54, baseType: !88, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !306, file: !305, line: 56, baseType: !88, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !306, file: !305, line: 57, baseType: !88, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !306, file: !305, line: 59, baseType: !88, size: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !306, file: !305, line: 60, baseType: !88, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !306, file: !305, line: 61, baseType: !88, size: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !306, file: !305, line: 63, baseType: !88, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !306, file: !305, line: 65, baseType: !88, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !306, file: !305, line: 67, baseType: !88, size: 32, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !306, file: !305, line: 69, baseType: !88, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !306, file: !305, line: 70, baseType: !88, size: 32, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !306, file: !305, line: 71, baseType: !88, size: 32, offset: 352)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !306, file: !305, line: 72, baseType: !88, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !306, file: !305, line: 73, baseType: !322, size: 8192, offset: 416)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8192, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !306, file: !305, line: 75, baseType: !88, size: 32, offset: 8608)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !306, file: !305, line: 76, baseType: !88, size: 32, offset: 8640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !306, file: !305, line: 77, baseType: !88, size: 32, offset: 8672)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !306, file: !305, line: 78, baseType: !88, size: 32, offset: 8704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !306, file: !305, line: 79, baseType: !88, size: 32, offset: 8736)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !306, file: !305, line: 80, baseType: !88, size: 32, offset: 8768)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !306, file: !305, line: 81, baseType: !88, size: 32, offset: 8800)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !306, file: !305, line: 83, baseType: !88, size: 32, offset: 8832)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !306, file: !305, line: 90, baseType: !334, size: 128, offset: 8864)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !305, line: 84, size: 128, elements: !335)
!335 = !{!336, !337, !338, !339}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !334, file: !305, line: 86, baseType: !88, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !334, file: !305, line: 87, baseType: !88, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !334, file: !305, line: 88, baseType: !88, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !334, file: !305, line: 89, baseType: !88, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !306, file: !305, line: 92, baseType: !88, size: 32, offset: 8992)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !306, file: !305, line: 150, baseType: !342, size: 1344, offset: 9024)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !305, line: 93, size: 1344, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !342, file: !305, line: 95, baseType: !88, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !342, file: !305, line: 96, baseType: !88, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !342, file: !305, line: 97, baseType: !88, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !342, file: !305, line: 99, baseType: !88, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !342, file: !305, line: 100, baseType: !88, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !342, file: !305, line: 102, baseType: !88, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !342, file: !305, line: 103, baseType: !88, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !342, file: !305, line: 104, baseType: !88, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !342, file: !305, line: 105, baseType: !88, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !342, file: !305, line: 106, baseType: !88, size: 32, offset: 288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !342, file: !305, line: 107, baseType: !88, size: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !342, file: !305, line: 108, baseType: !88, size: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !342, file: !305, line: 110, baseType: !88, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !342, file: !305, line: 111, baseType: !88, size: 32, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !342, file: !305, line: 112, baseType: !88, size: 32, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !342, file: !305, line: 114, baseType: !88, size: 32, offset: 480)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !342, file: !305, line: 115, baseType: !22, size: 32, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !342, file: !305, line: 116, baseType: !22, size: 32, offset: 544)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !342, file: !305, line: 117, baseType: !88, size: 32, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !342, file: !305, line: 119, baseType: !88, size: 32, offset: 608)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !342, file: !305, line: 120, baseType: !88, size: 32, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !342, file: !305, line: 137, baseType: !366, size: 384, offset: 672)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !305, line: 122, size: 384, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !366, file: !305, line: 124, baseType: !88, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !366, file: !305, line: 125, baseType: !88, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !366, file: !305, line: 126, baseType: !88, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !366, file: !305, line: 127, baseType: !88, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !366, file: !305, line: 128, baseType: !88, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !366, file: !305, line: 129, baseType: !88, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !366, file: !305, line: 130, baseType: !88, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !366, file: !305, line: 131, baseType: !88, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !366, file: !305, line: 133, baseType: !88, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !366, file: !305, line: 134, baseType: !88, size: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !366, file: !305, line: 135, baseType: !88, size: 32, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !366, file: !305, line: 136, baseType: !88, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !342, file: !305, line: 139, baseType: !88, size: 32, offset: 1056)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !342, file: !305, line: 140, baseType: !88, size: 32, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !342, file: !305, line: 141, baseType: !88, size: 32, offset: 1120)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !342, file: !305, line: 142, baseType: !88, size: 32, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !342, file: !305, line: 143, baseType: !88, size: 32, offset: 1184)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !342, file: !305, line: 144, baseType: !88, size: 32, offset: 1216)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !342, file: !305, line: 145, baseType: !88, size: 32, offset: 1248)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !342, file: !305, line: 146, baseType: !88, size: 32, offset: 1280)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !342, file: !305, line: 147, baseType: !88, size: 32, offset: 1312)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !306, file: !305, line: 152, baseType: !88, size: 32, offset: 10368)
!390 = !{!391}
!391 = !DISubrange(count: 1)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !80, file: !18, line: 431, baseType: !393, size: 64, offset: 25600)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !80, file: !18, line: 432, baseType: !395, size: 960, offset: 25664)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 960, elements: !390)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !305, line: 186, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 156, size: 960, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !397, file: !305, line: 158, baseType: !88, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !397, file: !305, line: 159, baseType: !88, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !397, file: !305, line: 161, baseType: !88, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !397, file: !305, line: 163, baseType: !88, size: 32, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !397, file: !305, line: 164, baseType: !88, size: 32, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !397, file: !305, line: 166, baseType: !88, size: 32, offset: 160)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !397, file: !305, line: 167, baseType: !88, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !397, file: !305, line: 169, baseType: !88, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !397, file: !305, line: 170, baseType: !88, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !397, file: !305, line: 172, baseType: !88, size: 32, offset: 288)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !397, file: !305, line: 173, baseType: !88, size: 32, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !397, file: !305, line: 175, baseType: !88, size: 32, offset: 352)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !397, file: !305, line: 177, baseType: !88, size: 32, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !397, file: !305, line: 178, baseType: !88, size: 32, offset: 416)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !397, file: !305, line: 179, baseType: !88, size: 32, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !397, file: !305, line: 181, baseType: !88, size: 32, offset: 480)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !397, file: !305, line: 183, baseType: !88, size: 32, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !397, file: !305, line: 184, baseType: !417, size: 384, offset: 576)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !419)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!419 = !{!420}
!420 = !DISubrange(count: 6)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !80, file: !18, line: 433, baseType: !422, size: 64, offset: 26624)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !80, file: !18, line: 434, baseType: !88, size: 32, offset: 26688)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !80, file: !18, line: 437, baseType: !88, size: 32, offset: 26720)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !80, file: !18, line: 440, baseType: !426, size: 256, offset: 26752)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 256, elements: !38)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 512, elements: !64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !80, file: !18, line: 441, baseType: !430, size: 128, offset: 27008)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !31)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !61)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !80, file: !18, line: 443, baseType: !426, size: 256, offset: 27136)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !80, file: !18, line: 444, baseType: !430, size: 128, offset: 27392)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !80, file: !18, line: 446, baseType: !436, size: 256, offset: 27520)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !38)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !80, file: !18, line: 447, baseType: !440, size: 128, offset: 27776)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !31)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !61)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !80, file: !18, line: 448, baseType: !436, size: 256, offset: 27904)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !80, file: !18, line: 449, baseType: !440, size: 128, offset: 28160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !80, file: !18, line: 454, baseType: !446, size: 5888, offset: 28288)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 5888, elements: !448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!448 = !{!449}
!449 = !DISubrange(count: 92)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !80, file: !18, line: 455, baseType: !451, size: 23552, offset: 34176)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 23552, elements: !452)
!452 = !{!449, !39}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !80, file: !18, line: 457, baseType: !418, size: 64, offset: 57728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !80, file: !18, line: 460, baseType: !455, size: 53376, offset: 57856)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !18, line: 364, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 302, size: 53376, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !486, !515, !516, !517, !523, !524, !525, !526, !527, !528, !529, !530}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !456, file: !18, line: 304, baseType: !393, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !456, file: !18, line: 305, baseType: !422, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !456, file: !18, line: 307, baseType: !88, size: 32, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !456, file: !18, line: 308, baseType: !88, size: 32, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !456, file: !18, line: 309, baseType: !88, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !456, file: !18, line: 311, baseType: !88, size: 32, offset: 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !456, file: !18, line: 313, baseType: !88, size: 32, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !456, file: !18, line: 315, baseType: !88, size: 32, offset: 288)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !456, file: !18, line: 316, baseType: !88, size: 32, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !456, file: !18, line: 317, baseType: !88, size: 32, offset: 352)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !456, file: !18, line: 319, baseType: !88, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !456, file: !18, line: 321, baseType: !88, size: 32, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !456, file: !18, line: 322, baseType: !88, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !456, file: !18, line: 324, baseType: !182, size: 64, offset: 480)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !456, file: !18, line: 325, baseType: !88, size: 32, offset: 544)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !456, file: !18, line: 327, baseType: !88, size: 32, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !456, file: !18, line: 329, baseType: !88, size: 32, offset: 608)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !456, file: !18, line: 330, baseType: !88, size: 32, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !456, file: !18, line: 331, baseType: !88, size: 32, offset: 672)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !456, file: !18, line: 333, baseType: !88, size: 32, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !456, file: !18, line: 334, baseType: !88, size: 32, offset: 736)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !456, file: !18, line: 339, baseType: !480, size: 2048, offset: 768)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 2048, elements: !485)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !18, line: 335, size: 64, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !481, file: !18, line: 337, baseType: !88, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !481, file: !18, line: 338, baseType: !88, size: 32, offset: 32)
!485 = !{!32, !65}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !456, file: !18, line: 342, baseType: !487, size: 49152, align: 128, offset: 2816)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 49152, align: 128, elements: !512)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !489, line: 36, baseType: !490, align: 128)
!489 = !DIFile(filename: "x264_src/common/mc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !489, line: 26, size: 512, elements: !491)
!491 = !{!492, !498, !499, !502, !503, !504}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !490, file: !489, line: 30, baseType: !493, size: 128, align: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !54)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !495, line: 25, baseType: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !25, line: 39, baseType: !497)
!497 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !490, file: !489, line: 31, baseType: !493, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !490, file: !489, line: 32, baseType: !500, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !495, line: 26, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 41, baseType: !88)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !490, file: !489, line: 33, baseType: !500, size: 32, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !490, file: !489, line: 34, baseType: !500, size: 32, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !490, file: !489, line: 35, baseType: !505, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !489, line: 25, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !270, !88, !270, !88, !510, !88}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!512 = !{!513, !514}
!513 = !DISubrange(count: 32)
!514 = !DISubrange(count: 3)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !456, file: !18, line: 344, baseType: !88, size: 32, offset: 51968)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !456, file: !18, line: 345, baseType: !88, size: 32, offset: 52000)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !456, file: !18, line: 350, baseType: !518, size: 1024, offset: 52032)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 1024, elements: !64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !18, line: 346, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !519, file: !18, line: 348, baseType: !88, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !519, file: !18, line: 349, baseType: !88, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !456, file: !18, line: 352, baseType: !88, size: 32, offset: 53056)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !456, file: !18, line: 354, baseType: !88, size: 32, offset: 53088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !456, file: !18, line: 355, baseType: !88, size: 32, offset: 53120)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !456, file: !18, line: 356, baseType: !88, size: 32, offset: 53152)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !456, file: !18, line: 357, baseType: !88, size: 32, offset: 53184)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !456, file: !18, line: 360, baseType: !88, size: 32, offset: 53216)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !456, file: !18, line: 361, baseType: !88, size: 32, offset: 53248)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !456, file: !18, line: 362, baseType: !88, size: 32, offset: 53280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !80, file: !18, line: 463, baseType: !532, size: 4096, offset: 111232)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !533, line: 46, baseType: !534)
!533 = !DIFile(filename: "x264_src/common/cabac.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !533, line: 27, size: 4096, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !534, file: !533, line: 30, baseType: !88, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !534, file: !533, line: 31, baseType: !88, size: 32, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !534, file: !533, line: 34, baseType: !88, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !534, file: !533, line: 35, baseType: !88, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !534, file: !533, line: 37, baseType: !270, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !534, file: !533, line: 38, baseType: !270, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !534, file: !533, line: 39, baseType: !270, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !534, file: !533, line: 42, baseType: !88, size: 32, align: 128, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !534, file: !533, line: 45, baseType: !545, size: 3680, offset: 416)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3680, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 460)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !80, file: !18, line: 494, baseType: !549, size: 2112, offset: 115328)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 465, size: 2112, elements: !550)
!550 = !{!551, !689, !691, !692, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !705, !706, !707, !708}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !549, file: !18, line: 468, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !555, line: 146, baseType: !556)
!555 = !DIFile(filename: "x264_src/common/frame.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !555, line: 31, size: 125056, elements: !557)
!557 = !{!558, !559, !560, !561, !564, !565, !566, !567, !568, !569, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !588, !589, !590, !591, !592, !593, !595, !597, !598, !599, !600, !601, !604, !606, !607, !609, !614, !615, !619, !620, !624, !628, !631, !633, !634, !636, !637, !639, !640, !641, !644, !646, !647, !648, !650, !651, !652, !653, !654, !655, !656, !657, !659, !660, !661, !670, !674, !676, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !556, file: !555, line: 34, baseType: !88, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !556, file: !555, line: 35, baseType: !88, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !556, file: !555, line: 36, baseType: !88, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !556, file: !555, line: 37, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !495, line: 27, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !25, line: 44, baseType: !284)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !556, file: !555, line: 38, baseType: !562, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !556, file: !555, line: 39, baseType: !88, size: 32, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !556, file: !555, line: 40, baseType: !88, size: 32, offset: 288)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !556, file: !555, line: 41, baseType: !88, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !556, file: !555, line: 42, baseType: !88, size: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !556, file: !555, line: 43, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !556, file: !555, line: 45, baseType: !88, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !556, file: !555, line: 46, baseType: !88, size: 32, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !556, file: !555, line: 47, baseType: !88, size: 32, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !556, file: !555, line: 48, baseType: !88, size: 32, offset: 544)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !556, file: !555, line: 49, baseType: !88, size: 32, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !556, file: !555, line: 50, baseType: !88, size: 32, offset: 608)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !556, file: !555, line: 51, baseType: !88, size: 32, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !556, file: !555, line: 52, baseType: !35, size: 8, offset: 672)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !556, file: !555, line: 53, baseType: !35, size: 8, offset: 680)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !556, file: !555, line: 54, baseType: !35, size: 8, offset: 688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !556, file: !555, line: 55, baseType: !178, size: 32, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !556, file: !555, line: 56, baseType: !178, size: 32, offset: 736)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !556, file: !555, line: 57, baseType: !88, size: 32, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !556, file: !555, line: 60, baseType: !88, size: 32, offset: 800)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !556, file: !555, line: 61, baseType: !586, size: 96, offset: 832)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 96, elements: !587)
!587 = !{!514}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !556, file: !555, line: 62, baseType: !586, size: 96, offset: 928)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !556, file: !555, line: 63, baseType: !586, size: 96, offset: 1024)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !556, file: !555, line: 64, baseType: !88, size: 32, offset: 1120)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !556, file: !555, line: 65, baseType: !88, size: 32, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !556, file: !555, line: 66, baseType: !88, size: 32, offset: 1184)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !556, file: !555, line: 67, baseType: !594, size: 192, offset: 1216)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !587)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !556, file: !555, line: 68, baseType: !596, size: 256, offset: 1408)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !38)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !556, file: !555, line: 69, baseType: !596, size: 256, offset: 1664)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !556, file: !555, line: 70, baseType: !447, size: 64, offset: 1920)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !556, file: !555, line: 74, baseType: !596, size: 256, offset: 1984)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !556, file: !555, line: 75, baseType: !596, size: 256, offset: 2240)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !556, file: !555, line: 77, baseType: !602, size: 24576, align: 128, offset: 2560)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 24576, align: 128, elements: !603)
!603 = !{!65, !514}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !556, file: !555, line: 78, baseType: !605, size: 1024, offset: 27136)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 1024, elements: !64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !556, file: !555, line: 79, baseType: !88, size: 32, offset: 28160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !556, file: !555, line: 80, baseType: !608, size: 64, offset: 28224)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !556, file: !555, line: 83, baseType: !610, size: 64, offset: 28288)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !495, line: 24, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !25, line: 37, baseType: !613)
!613 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !556, file: !555, line: 84, baseType: !270, size: 64, offset: 28352)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !556, file: !555, line: 85, baseType: !616, size: 128, offset: 28416)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 128, elements: !31)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 32, elements: !31)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !556, file: !555, line: 86, baseType: !617, size: 64, offset: 28544)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !556, file: !555, line: 87, baseType: !621, size: 2176, offset: 28608)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 2176, elements: !622)
!622 = !{!32, !623}
!623 = !DISubrange(count: 17)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !556, file: !555, line: 92, baseType: !625, size: 20736, offset: 30784)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 20736, elements: !626)
!626 = !{!627, !627}
!627 = !DISubrange(count: 18)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !556, file: !555, line: 96, baseType: !629, size: 2176, offset: 51520)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 2176, elements: !622)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !556, file: !555, line: 97, baseType: !632, size: 128, offset: 53696)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !31)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !556, file: !555, line: 98, baseType: !182, size: 64, offset: 53824)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !556, file: !555, line: 99, baseType: !635, size: 1024, offset: 53888)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1024, elements: !485)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !556, file: !555, line: 100, baseType: !618, size: 32, offset: 54912)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !556, file: !555, line: 105, baseType: !638, size: 10368, offset: 54944)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 10368, elements: !626)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !556, file: !555, line: 106, baseType: !638, size: 10368, offset: 65312)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !556, file: !555, line: 107, baseType: !88, size: 32, offset: 75680)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !556, file: !555, line: 108, baseType: !642, size: 576, offset: 75712)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 576, elements: !643)
!643 = !{!627}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !556, file: !555, line: 109, baseType: !645, size: 20736, offset: 76288)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 20736, elements: !626)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !556, file: !555, line: 110, baseType: !630, size: 64, offset: 97024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !556, file: !555, line: 111, baseType: !630, size: 64, offset: 97088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !556, file: !555, line: 112, baseType: !649, size: 64, offset: 97152)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !556, file: !555, line: 113, baseType: !649, size: 64, offset: 97216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !556, file: !555, line: 114, baseType: !649, size: 64, offset: 97280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !556, file: !555, line: 115, baseType: !88, size: 32, offset: 97344)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !556, file: !555, line: 116, baseType: !447, size: 64, offset: 97408)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !556, file: !555, line: 117, baseType: !447, size: 64, offset: 97472)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !556, file: !555, line: 118, baseType: !447, size: 64, offset: 97536)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !556, file: !555, line: 119, baseType: !88, size: 32, offset: 97600)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !556, file: !555, line: 120, baseType: !658, size: 576, offset: 97632)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 576, elements: !643)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !556, file: !555, line: 121, baseType: !22, size: 32, offset: 98208)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !556, file: !555, line: 122, baseType: !45, size: 64, offset: 98240)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !556, file: !555, line: 125, baseType: !662, size: 256, offset: 98304)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !79, line: 503, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 496, size: 256, elements: !664)
!664 = !{!665, !667, !668, !669}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !663, file: !79, line: 498, baseType: !666, size: 64)
!666 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !663, file: !79, line: 499, baseType: !666, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !663, file: !79, line: 500, baseType: !666, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !663, file: !79, line: 502, baseType: !666, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !556, file: !555, line: 128, baseType: !671, size: 2008, offset: 98560)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2008, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 251)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !556, file: !555, line: 129, baseType: !675, size: 8032, offset: 100576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8032, elements: !672)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !556, file: !555, line: 130, baseType: !677, size: 16064, offset: 108608)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 16064, elements: !672)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !556, file: !555, line: 131, baseType: !88, size: 32, offset: 124672)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !556, file: !555, line: 132, baseType: !88, size: 32, offset: 124704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !556, file: !555, line: 135, baseType: !88, size: 32, offset: 124736)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !556, file: !555, line: 136, baseType: !88, size: 32, offset: 124768)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !556, file: !555, line: 137, baseType: !88, size: 32, offset: 124800)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !556, file: !555, line: 138, baseType: !88, size: 32, offset: 124832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !556, file: !555, line: 139, baseType: !88, size: 32, offset: 124864)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !556, file: !555, line: 142, baseType: !178, size: 32, offset: 124896)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !556, file: !555, line: 143, baseType: !88, size: 32, offset: 124928)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !556, file: !555, line: 144, baseType: !88, size: 32, offset: 124960)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !556, file: !555, line: 145, baseType: !88, size: 32, offset: 124992)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !549, file: !18, line: 470, baseType: !690, size: 128, offset: 64)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 128, elements: !31)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !549, file: !18, line: 473, baseType: !552, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !549, file: !18, line: 476, baseType: !693, size: 1152, offset: 256)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 1152, elements: !643)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !549, file: !18, line: 478, baseType: !88, size: 32, offset: 1408)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !549, file: !18, line: 480, baseType: !88, size: 32, offset: 1440)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !549, file: !18, line: 482, baseType: !88, size: 32, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !549, file: !18, line: 483, baseType: !88, size: 32, offset: 1504)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !549, file: !18, line: 484, baseType: !88, size: 32, offset: 1536)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !549, file: !18, line: 485, baseType: !88, size: 32, offset: 1568)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !549, file: !18, line: 486, baseType: !88, size: 32, offset: 1600)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !549, file: !18, line: 487, baseType: !562, size: 64, offset: 1664)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !549, file: !18, line: 488, baseType: !562, size: 64, offset: 1728)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !549, file: !18, line: 489, baseType: !704, size: 128, offset: 1792)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 128, elements: !31)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !549, file: !18, line: 490, baseType: !562, size: 64, offset: 1920)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !549, file: !18, line: 491, baseType: !562, size: 64, offset: 1984)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !549, file: !18, line: 492, baseType: !88, size: 32, offset: 2048)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !549, file: !18, line: 493, baseType: !88, size: 32, offset: 2080)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !80, file: !18, line: 497, baseType: !553, size: 64, offset: 117440)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !80, file: !18, line: 500, baseType: !553, size: 64, offset: 117504)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !80, file: !18, line: 503, baseType: !88, size: 32, offset: 117568)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !80, file: !18, line: 504, baseType: !713, size: 1216, offset: 117632)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 1216, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 19)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !80, file: !18, line: 505, baseType: !88, size: 32, offset: 118848)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !80, file: !18, line: 506, baseType: !713, size: 1216, offset: 118912)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !80, file: !18, line: 507, baseType: !182, size: 64, offset: 120128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !80, file: !18, line: 510, baseType: !88, size: 32, offset: 120192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !80, file: !18, line: 511, baseType: !88, size: 32, offset: 120224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !80, file: !18, line: 512, baseType: !562, size: 64, offset: 120256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !80, file: !18, line: 522, baseType: !723, size: 10624, offset: 120320)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 515, size: 10624, elements: !724)
!724 = !{!725, !727, !730, !733}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !723, file: !18, line: 517, baseType: !726, size: 256, align: 128)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 256, elements: !64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !723, file: !18, line: 518, baseType: !728, size: 128, align: 128, offset: 256)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 128, elements: !729)
!729 = !{!32, !39}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !723, file: !18, line: 520, baseType: !731, size: 4096, align: 128, offset: 384)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 4096, elements: !732)
!732 = !{!39, !62}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !723, file: !18, line: 521, baseType: !734, size: 6144, align: 128, offset: 4480)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 6144, elements: !735)
!735 = !{!736, !65}
!736 = !DISubrange(count: 24)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !80, file: !18, line: 732, baseType: !738, size: 82688, offset: 130944)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 525, size: 82688, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !767, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !785, !788, !792, !793, !794, !799, !800, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !868, !899, !900, !901, !902, !903, !904, !905, !906, !907, !910, !911, !912, !915, !918, !920, !923, !925, !926}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !738, file: !18, line: 527, baseType: !88, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !738, file: !18, line: 530, baseType: !88, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !738, file: !18, line: 531, baseType: !88, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !738, file: !18, line: 532, baseType: !88, size: 32, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !738, file: !18, line: 535, baseType: !88, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !738, file: !18, line: 536, baseType: !88, size: 32, offset: 160)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !738, file: !18, line: 537, baseType: !88, size: 32, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !738, file: !18, line: 538, baseType: !88, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !738, file: !18, line: 539, baseType: !88, size: 32, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !738, file: !18, line: 542, baseType: !88, size: 32, offset: 288)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !738, file: !18, line: 543, baseType: !88, size: 32, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !738, file: !18, line: 544, baseType: !88, size: 32, offset: 352)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !738, file: !18, line: 545, baseType: !88, size: 32, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !738, file: !18, line: 546, baseType: !88, size: 32, offset: 416)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !738, file: !18, line: 547, baseType: !88, size: 32, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !738, file: !18, line: 548, baseType: !88, size: 32, offset: 480)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !738, file: !18, line: 549, baseType: !88, size: 32, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !738, file: !18, line: 551, baseType: !88, size: 32, offset: 544)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !738, file: !18, line: 554, baseType: !182, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !738, file: !18, line: 555, baseType: !182, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !738, file: !18, line: 558, baseType: !182, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !738, file: !18, line: 559, baseType: !182, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !738, file: !18, line: 561, baseType: !182, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !738, file: !18, line: 562, baseType: !182, size: 64, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !738, file: !18, line: 565, baseType: !7, size: 32, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !738, file: !18, line: 566, baseType: !766, size: 128, offset: 992)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !38)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !738, file: !18, line: 567, baseType: !768, size: 512, offset: 1120)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !738, file: !18, line: 568, baseType: !7, size: 32, offset: 1632)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !738, file: !18, line: 569, baseType: !7, size: 32, offset: 1664)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !738, file: !18, line: 570, baseType: !88, size: 32, offset: 1696)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !738, file: !18, line: 571, baseType: !88, size: 32, offset: 1728)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !738, file: !18, line: 572, baseType: !88, size: 32, offset: 1760)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !738, file: !18, line: 573, baseType: !88, size: 32, offset: 1792)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !738, file: !18, line: 574, baseType: !88, size: 32, offset: 1824)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !738, file: !18, line: 575, baseType: !88, size: 32, offset: 1856)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !738, file: !18, line: 576, baseType: !88, size: 32, offset: 1888)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !738, file: !18, line: 577, baseType: !88, size: 32, offset: 1920)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !738, file: !18, line: 578, baseType: !88, size: 32, offset: 1952)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !18, line: 585, baseType: !610, size: 64, offset: 1984)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !738, file: !18, line: 586, baseType: !270, size: 64, offset: 2048)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !738, file: !18, line: 587, baseType: !610, size: 64, offset: 2112)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !738, file: !18, line: 588, baseType: !784, size: 64, offset: 2176)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !738, file: !18, line: 589, baseType: !786, size: 64, offset: 2240)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 64, elements: !54)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !738, file: !18, line: 591, baseType: !789, size: 64, offset: 2304)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !791)
!791 = !{!736}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !738, file: !18, line: 592, baseType: !610, size: 64, offset: 2368)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !738, file: !18, line: 593, baseType: !616, size: 128, offset: 2432)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !738, file: !18, line: 594, baseType: !795, size: 128, offset: 2560)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 128, elements: !31)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !798)
!798 = !{!55, !32}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !738, file: !18, line: 595, baseType: !632, size: 128, offset: 2688)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !738, file: !18, line: 596, baseType: !801, size: 4096, offset: 2816)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 4096, elements: !802)
!802 = !{!32, !513}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !738, file: !18, line: 597, baseType: !610, size: 64, offset: 6912)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !738, file: !18, line: 598, baseType: !610, size: 64, offset: 6976)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !738, file: !18, line: 599, baseType: !447, size: 64, offset: 7040)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !738, file: !18, line: 603, baseType: !605, size: 1024, offset: 7104)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !738, file: !18, line: 606, baseType: !88, size: 32, offset: 8128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !738, file: !18, line: 607, baseType: !88, size: 32, offset: 8160)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !738, file: !18, line: 608, baseType: !34, size: 32, align: 32, offset: 8192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !738, file: !18, line: 609, baseType: !88, size: 32, offset: 8224)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !738, file: !18, line: 611, baseType: !88, size: 32, offset: 8256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !738, file: !18, line: 612, baseType: !88, size: 32, offset: 8288)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !738, file: !18, line: 614, baseType: !88, size: 32, offset: 8320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !738, file: !18, line: 615, baseType: !88, size: 32, offset: 8352)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !738, file: !18, line: 621, baseType: !88, size: 32, offset: 8384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !738, file: !18, line: 624, baseType: !88, size: 32, offset: 8416)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !738, file: !18, line: 626, baseType: !88, size: 32, offset: 8448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !738, file: !18, line: 627, baseType: !88, size: 32, offset: 8480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !738, file: !18, line: 671, baseType: !820, size: 60672, offset: 8576)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !738, file: !18, line: 629, size: 60672, elements: !821)
!821 = !{!822, !826, !830, !832, !833, !836, !840, !842, !843, !844, !845, !846, !849, !853, !856, !857, !858, !859, !860, !863, !865, !867}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !820, file: !18, line: 634, baseType: !823, size: 3072, align: 128)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3072, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !820, file: !18, line: 635, baseType: !827, size: 6912, align: 128, offset: 3072)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6912, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 864)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !820, file: !18, line: 638, baseType: !831, size: 2048, align: 128, offset: 9984)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !323)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !820, file: !18, line: 639, baseType: !831, size: 2048, align: 128, offset: 12032)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !820, file: !18, line: 640, baseType: !834, size: 3072, align: 128, offset: 14080)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 3072, elements: !835)
!835 = !{!514, !62}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !820, file: !18, line: 641, baseType: !837, size: 3840, align: 128, offset: 17152)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 3840, elements: !838)
!838 = !{!839, !65}
!839 = !DISubrange(count: 15)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !820, file: !18, line: 642, baseType: !841, size: 128, offset: 20992)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !38)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !820, file: !18, line: 643, baseType: !841, size: 128, offset: 21120)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !820, file: !18, line: 644, baseType: !88, size: 32, offset: 21248)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !820, file: !18, line: 645, baseType: !88, size: 32, offset: 21280)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !820, file: !18, line: 648, baseType: !731, size: 4096, align: 128, offset: 21376)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !820, file: !18, line: 649, baseType: !847, size: 4096, align: 128, offset: 25472)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 4096, elements: !848)
!848 = !{!65, !65}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !820, file: !18, line: 652, baseType: !850, size: 576, align: 128, offset: 29568)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 9)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !820, file: !18, line: 653, baseType: !854, size: 1024, align: 128, offset: 30208)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !855)
!855 = !{!513}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !820, file: !18, line: 656, baseType: !594, size: 192, offset: 31232)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !820, file: !18, line: 658, baseType: !594, size: 192, offset: 31424)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !820, file: !18, line: 661, baseType: !594, size: 192, offset: 31616)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !820, file: !18, line: 664, baseType: !182, size: 64, offset: 31808)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !820, file: !18, line: 665, baseType: !861, size: 24576, offset: 31872)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 24576, elements: !862)
!862 = !{!32, !513, !420}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !820, file: !18, line: 666, baseType: !864, size: 2048, offset: 56448)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 2048, elements: !855)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !820, file: !18, line: 667, baseType: !866, size: 2048, offset: 58496)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 2048, elements: !485)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !820, file: !18, line: 670, baseType: !586, size: 96, offset: 60544)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !738, file: !18, line: 704, baseType: !869, size: 6144, offset: 69248)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !738, file: !18, line: 674, size: 6144, elements: !870)
!870 = !{!871, !875, !879, !882, !885, !887, !888, !891, !893, !894, !895, !896, !897, !898}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !869, file: !18, line: 677, baseType: !872, size: 320, align: 64)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 320, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 40)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !869, file: !18, line: 680, baseType: !876, size: 384, align: 128, offset: 384)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 384, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 48)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !869, file: !18, line: 683, baseType: !880, size: 640, align: 32, offset: 768)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 640, elements: !881)
!881 = !{!32, !874}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !869, file: !18, line: 686, baseType: !883, size: 2560, align: 128, offset: 1408)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 2560, elements: !884)
!884 = !{!32, !874, !32}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !869, file: !18, line: 687, baseType: !886, size: 1280, align: 64, offset: 3968)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1280, elements: !884)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !869, file: !18, line: 690, baseType: !872, size: 320, align: 32, offset: 5248)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !869, file: !18, line: 692, baseType: !889, size: 256, align: 32, offset: 5568)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 256, elements: !890)
!890 = !{!32, !39, !32}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !869, file: !18, line: 693, baseType: !892, size: 64, align: 32, offset: 5824)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 64, elements: !729)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !869, file: !18, line: 694, baseType: !88, size: 32, offset: 5888)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !869, file: !18, line: 695, baseType: !618, size: 32, align: 32, offset: 5920)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !869, file: !18, line: 698, baseType: !88, size: 32, offset: 5952)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !869, file: !18, line: 699, baseType: !88, size: 32, offset: 5984)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !869, file: !18, line: 702, baseType: !88, size: 32, offset: 6016)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !869, file: !18, line: 703, baseType: !88, size: 32, offset: 6048)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !738, file: !18, line: 707, baseType: !88, size: 32, offset: 75392)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !738, file: !18, line: 708, baseType: !88, size: 32, offset: 75424)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !738, file: !18, line: 709, baseType: !88, size: 32, offset: 75456)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !738, file: !18, line: 710, baseType: !88, size: 32, offset: 75488)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !738, file: !18, line: 711, baseType: !88, size: 32, offset: 75520)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !738, file: !18, line: 712, baseType: !88, size: 32, offset: 75552)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !738, file: !18, line: 713, baseType: !88, size: 32, offset: 75584)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !738, file: !18, line: 714, baseType: !88, size: 32, offset: 75616)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !738, file: !18, line: 717, baseType: !908, size: 128, offset: 75648)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !909)
!909 = !{!32, !32}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !738, file: !18, line: 718, baseType: !88, size: 32, offset: 75776)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !738, file: !18, line: 719, baseType: !88, size: 32, offset: 75808)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !738, file: !18, line: 722, baseType: !913, size: 4096, offset: 75840)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 4096, elements: !914)
!914 = !{!32, !513, !39}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !738, file: !18, line: 723, baseType: !916, size: 64, offset: 79936)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 64, elements: !38)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !738, file: !18, line: 724, baseType: !919, size: 2048, offset: 80000)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 2048, elements: !914)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !738, file: !18, line: 725, baseType: !921, size: 64, offset: 82048)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 32, elements: !38)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !738, file: !18, line: 728, baseType: !924, size: 144, offset: 82112)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 144, elements: !643)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !738, file: !18, line: 729, baseType: !88, size: 32, offset: 82272)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !738, file: !18, line: 730, baseType: !927, size: 272, offset: 82304)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 272, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 34)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !80, file: !18, line: 735, baseType: !931, size: 64, offset: 213632)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !18, line: 379, baseType: !933)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !18, line: 379, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !80, file: !18, line: 793, baseType: !935, size: 29504, offset: 213696)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 738, size: 29504, elements: !936)
!936 = !{!937, !964, !968, !970, !972, !973, !974, !975, !976, !977, !978, !979, !982, !984, !985, !988, !990, !992, !993, !994}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !935, file: !18, line: 764, baseType: !938, size: 5632)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !18, line: 741, size: 5632, elements: !939)
!939 = !{!940, !941, !942, !943, !945, !946, !947, !948, !949, !951, !954, !956, !960, !961, !963}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !938, file: !18, line: 744, baseType: !88, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !938, file: !18, line: 746, baseType: !88, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !938, file: !18, line: 748, baseType: !88, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !938, file: !18, line: 750, baseType: !944, size: 608, offset: 96)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 608, elements: !714)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !938, file: !18, line: 751, baseType: !88, size: 32, offset: 704)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !938, file: !18, line: 752, baseType: !88, size: 32, offset: 736)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !938, file: !18, line: 753, baseType: !88, size: 32, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !938, file: !18, line: 754, baseType: !182, size: 64, offset: 800)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !938, file: !18, line: 755, baseType: !950, size: 2048, offset: 864)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !802)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !938, file: !18, line: 756, baseType: !952, size: 544, offset: 2912)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 544, elements: !953)
!953 = !{!623}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !938, file: !18, line: 757, baseType: !955, size: 192, offset: 3456)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 192, elements: !419)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !938, file: !18, line: 758, baseType: !957, size: 1664, offset: 3648)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1664, elements: !958)
!958 = !{!39, !959}
!959 = !DISubrange(count: 13)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !938, file: !18, line: 760, baseType: !182, size: 64, offset: 5312)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !938, file: !18, line: 762, baseType: !962, size: 192, offset: 5376)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !587)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !938, file: !18, line: 763, baseType: !666, size: 64, offset: 5568)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !935, file: !18, line: 769, baseType: !965, size: 160, offset: 5632)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 5)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !935, file: !18, line: 770, baseType: !969, size: 320, offset: 5824)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 320, elements: !966)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !935, file: !18, line: 771, baseType: !971, size: 320, offset: 6144)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 320, elements: !966)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !935, file: !18, line: 772, baseType: !952, size: 544, offset: 6464)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !935, file: !18, line: 774, baseType: !969, size: 320, offset: 7040)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !935, file: !18, line: 775, baseType: !971, size: 320, offset: 7360)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !935, file: !18, line: 776, baseType: !971, size: 320, offset: 7680)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !935, file: !18, line: 777, baseType: !971, size: 320, offset: 8000)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !935, file: !18, line: 778, baseType: !971, size: 320, offset: 8320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !935, file: !18, line: 779, baseType: !971, size: 320, offset: 8640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !935, file: !18, line: 781, baseType: !980, size: 6080, offset: 8960)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 6080, elements: !981)
!981 = !{!967, !715}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !935, file: !18, line: 782, baseType: !983, size: 2176, offset: 15040)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 2176, elements: !622)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !935, file: !18, line: 783, baseType: !704, size: 128, offset: 17216)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !935, file: !18, line: 784, baseType: !986, size: 8192, offset: 17344)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 8192, elements: !987)
!987 = !{!32, !32, !513}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !935, file: !18, line: 785, baseType: !989, size: 384, offset: 25536)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 384, elements: !419)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !935, file: !18, line: 786, baseType: !991, size: 3328, offset: 25920)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 3328, elements: !958)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !935, file: !18, line: 788, baseType: !182, size: 64, offset: 29248)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !935, file: !18, line: 789, baseType: !182, size: 64, offset: 29312)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !935, file: !18, line: 791, baseType: !586, size: 96, offset: 29376)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !80, file: !18, line: 795, baseType: !996, size: 4096, align: 128, offset: 243200)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4096, elements: !997)
!997 = !{!32, !62}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !80, file: !18, line: 796, baseType: !999, size: 2048, align: 128, offset: 247296)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !997)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !80, file: !18, line: 797, baseType: !49, size: 64, offset: 249344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !80, file: !18, line: 800, baseType: !142, size: 64, offset: 249408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !80, file: !18, line: 801, baseType: !1003, size: 384, offset: 249472)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 384, elements: !1004)
!1004 = !{!32, !514}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !80, file: !18, line: 802, baseType: !1006, size: 128, offset: 249856)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 128, elements: !31)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !1009)
!1009 = !{!32, !39, !39}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !80, file: !18, line: 805, baseType: !1011, size: 448, offset: 249984)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 448, elements: !1017)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1013, line: 27, baseType: !1014)
!1013 = !DIFile(filename: "x264_src/common/predict.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !270}
!1017 = !{!1018}
!1018 = !DISubrange(count: 7)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !80, file: !18, line: 806, baseType: !1011, size: 448, offset: 250432)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !80, file: !18, line: 807, baseType: !1021, size: 768, offset: 250880)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 768, elements: !1026)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1013, line: 28, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !270, !270}
!1026 = !{!1027}
!1027 = !DISubrange(count: 12)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !80, file: !18, line: 808, baseType: !1029, size: 768, offset: 251648)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 768, elements: !1026)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !80, file: !18, line: 809, baseType: !1031, size: 64, offset: 252416)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1013, line: 29, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !270, !270, !88, !88}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !80, file: !18, line: 811, baseType: !1036, size: 8448, offset: 252480)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1037, line: 110, baseType: !1038)
!1037 = !DIFile(filename: "x264_src/common/pixel.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1037, line: 63, size: 8448, elements: !1039)
!1039 = !{!1040, !1046, !1047, !1048, !1049, !1051, !1052, !1053, !1054, !1060, !1066, !1067, !1071, !1076, !1077, !1083, !1087, !1088, !1089, !1090, !1091, !1096, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1038, file: !1037, line: 65, baseType: !1041, size: 448)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 448, elements: !1017)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1037, line: 26, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!88, !270, !88, !270, !88}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1038, file: !1037, line: 66, baseType: !1041, size: 448, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1038, file: !1037, line: 67, baseType: !1041, size: 448, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1038, file: !1037, line: 68, baseType: !1041, size: 448, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1038, file: !1037, line: 69, baseType: !1050, size: 256, offset: 1792)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 256, elements: !38)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1038, file: !1037, line: 70, baseType: !1041, size: 448, offset: 2048)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1038, file: !1037, line: 71, baseType: !1041, size: 448, offset: 2496)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1038, file: !1037, line: 72, baseType: !1041, size: 448, offset: 2944)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1038, file: !1037, line: 73, baseType: !1055, size: 448, offset: 3392)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 448, elements: !1017)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1037, line: 27, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !270, !270, !270, !270, !88, !630}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1038, file: !1037, line: 74, baseType: !1061, size: 448, offset: 3840)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1062, size: 448, elements: !1017)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1037, line: 28, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !270, !270, !270, !270, !270, !88, !630}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1038, file: !1037, line: 75, baseType: !1041, size: 448, offset: 4288)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1038, file: !1037, line: 76, baseType: !1068, size: 64, offset: 4736)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!88, !270, !88, !270, !88, !630}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1038, file: !1037, line: 78, baseType: !1072, size: 256, offset: 4800)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 256, elements: !38)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!45, !270, !88}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1038, file: !1037, line: 79, baseType: !1072, size: 256, offset: 5056)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1038, file: !1037, line: 81, baseType: !1078, size: 64, offset: 5312)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !418, !88, !418, !88, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !38)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1038, file: !1037, line: 83, baseType: !1084, size: 64, offset: 5376)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!178, !1081, !1081, !88}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1038, file: !1037, line: 86, baseType: !1055, size: 448, offset: 5440)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1038, file: !1037, line: 87, baseType: !1061, size: 448, offset: 5888)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1038, file: !1037, line: 88, baseType: !1055, size: 448, offset: 6336)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1038, file: !1037, line: 89, baseType: !1061, size: 448, offset: 6784)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1038, file: !1037, line: 93, baseType: !1092, size: 448, offset: 7232)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 448, elements: !1017)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!88, !630, !447, !88, !447, !784, !88, !88}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1038, file: !1037, line: 98, baseType: !1097, size: 64, offset: 7680)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !270, !270, !630}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1038, file: !1037, line: 99, baseType: !1097, size: 64, offset: 7744)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1038, file: !1037, line: 100, baseType: !1097, size: 64, offset: 7808)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1038, file: !1037, line: 101, baseType: !1097, size: 64, offset: 7872)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1038, file: !1037, line: 102, baseType: !1097, size: 64, offset: 7936)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1038, file: !1037, line: 103, baseType: !1097, size: 64, offset: 8000)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1038, file: !1037, line: 104, baseType: !1097, size: 64, offset: 8064)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1038, file: !1037, line: 105, baseType: !1097, size: 64, offset: 8128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1038, file: !1037, line: 106, baseType: !1097, size: 64, offset: 8192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1038, file: !1037, line: 107, baseType: !1097, size: 64, offset: 8256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1038, file: !1037, line: 108, baseType: !1097, size: 64, offset: 8320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1038, file: !1037, line: 109, baseType: !1097, size: 64, offset: 8384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !80, file: !18, line: 812, baseType: !1112, size: 2368, offset: 260928)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !489, line: 111, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 58, size: 2368, elements: !1114)
!1114 = !{!1115, !1122, !1126, !1130, !1137, !1142, !1143, !1147, !1151, !1152, !1156, !1164, !1168, !1172, !1173, !1177, !1181, !1185, !1186, !1187, !1188, !1193}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1113, file: !489, line: 60, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !270, !88, !1119, !88, !88, !88, !88, !88, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1113, file: !489, line: 65, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!270, !270, !630, !1119, !88, !88, !88, !88, !88, !1120}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1113, file: !489, line: 71, baseType: !1127, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !270, !88, !270, !88, !88, !88, !88, !88}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1113, file: !489, line: 75, baseType: !1131, size: 640, offset: 192)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 640, elements: !1135)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !270, !88, !270, !88, !270, !88, !88}
!1135 = !{!1136}
!1136 = !DISubrange(count: 10)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1113, file: !489, line: 78, baseType: !1138, size: 448, offset: 832)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 448, elements: !1017)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !270, !88, !270, !88, !88}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1113, file: !489, line: 79, baseType: !1139, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1113, file: !489, line: 81, baseType: !1144, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !270, !88, !270, !88, !88, !88}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1113, file: !489, line: 84, baseType: !1148, size: 64, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !270, !270, !270, !270, !88, !88, !88, !784}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1113, file: !489, line: 88, baseType: !1139, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1113, file: !489, line: 91, baseType: !1153, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !270, !88, !88}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1113, file: !489, line: 93, baseType: !1157, size: 64, offset: 1600)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!142, !142, !1160, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1163, line: 18, baseType: !47)
!1163 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1113, file: !489, line: 94, baseType: !1165, size: 64, offset: 1664)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !142, !88}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1113, file: !489, line: 97, baseType: !1169, size: 64, offset: 1728)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !447, !270, !88}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1113, file: !489, line: 98, baseType: !1169, size: 64, offset: 1792)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1113, file: !489, line: 99, baseType: !1174, size: 64, offset: 1856)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !447, !447, !88}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1113, file: !489, line: 100, baseType: !1178, size: 64, offset: 1920)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !447, !88}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1113, file: !489, line: 102, baseType: !1182, size: 64, offset: 1984)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !270, !270, !270, !270, !270, !88, !88, !88, !88}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1113, file: !489, line: 104, baseType: !505, size: 64, offset: 2048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1113, file: !489, line: 105, baseType: !505, size: 64, offset: 2112)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1113, file: !489, line: 106, baseType: !505, size: 64, offset: 2176)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1113, file: !489, line: 107, baseType: !1189, size: 64, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !77, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1113, file: !489, line: 109, baseType: !1194, size: 64, offset: 2304)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !630, !447, !447, !447, !447, !88}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !80, file: !18, line: 813, baseType: !1198, size: 960, offset: 263296)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1199, line: 115, baseType: !1200)
!1199 = !DIFile(filename: "x264_src/common/dct.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 89, size: 960, elements: !1201)
!1201 = !{!1202, !1206, !1210, !1215, !1216, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1232, !1236, !1240}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1200, file: !1199, line: 94, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !784, !270, !270}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1200, file: !1199, line: 95, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !270, !784}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1200, file: !1199, line: 97, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !1214, !270, !270}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1200, file: !1199, line: 98, baseType: !1203, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1200, file: !1199, line: 99, baseType: !1217, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !270, !1214}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1200, file: !1199, line: 100, baseType: !1207, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1200, file: !1199, line: 102, baseType: !1211, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1200, file: !1199, line: 103, baseType: !1217, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1200, file: !1199, line: 104, baseType: !1207, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1200, file: !1199, line: 106, baseType: !1203, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1200, file: !1199, line: 107, baseType: !1207, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1200, file: !1199, line: 109, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1230, !270, !270}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 1024, elements: !61)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1200, file: !1199, line: 110, baseType: !1233, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !270, !1230}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1200, file: !1199, line: 112, baseType: !1237, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !784}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1200, file: !1199, line: 113, baseType: !1237, size: 64, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !80, file: !18, line: 814, baseType: !1242, size: 384, offset: 264256)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1199, line: 126, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1199, line: 117, size: 384, elements: !1244)
!1244 = !{!1245, !1249, !1250, !1254, !1255, !1259}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1243, file: !1199, line: 119, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !784, !784}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1243, file: !1199, line: 120, baseType: !1246, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1243, file: !1199, line: 121, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!88, !784, !418, !270}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1243, file: !1199, line: 122, baseType: !1251, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1243, file: !1199, line: 123, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!88, !784, !418, !270, !784}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1243, file: !1199, line: 124, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !784, !784, !270}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !80, file: !18, line: 815, baseType: !1264, size: 1408, offset: 264640)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1265, line: 44, baseType: !1266)
!1265 = !DIFile(filename: "x264_src/common/quant.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1265, line: 26, size: 1408, elements: !1267)
!1267 = !{!1268, !1272, !1273, !1277, !1278, !1282, !1286, !1287, !1292, !1296, !1297, !1298, !1300}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1266, file: !1265, line: 28, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!88, !784, !447, !447}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1266, file: !1265, line: 29, baseType: !1269, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1266, file: !1265, line: 30, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!88, !784, !88, !88}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1266, file: !1265, line: 31, baseType: !1274, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1266, file: !1265, line: 33, baseType: !1279, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !784, !431, !88}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1266, file: !1265, line: 34, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !784, !427, !88}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1266, file: !1265, line: 35, baseType: !1283, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1266, file: !1265, line: 37, baseType: !1288, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !784, !1291, !447, !88}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1266, file: !1265, line: 39, baseType: !1293, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!88, !784}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1266, file: !1265, line: 40, baseType: !1293, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1266, file: !1265, line: 41, baseType: !1293, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1266, file: !1265, line: 42, baseType: !1299, size: 384, offset: 704)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 384, elements: !419)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1266, file: !1265, line: 43, baseType: !1301, size: 320, offset: 1088)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 320, elements: !966)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!88, !784, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !275, line: 63, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 58, size: 416, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1307, file: !275, line: 60, baseType: !88, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1307, file: !275, line: 61, baseType: !726, size: 256, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1307, file: !275, line: 62, baseType: !131, size: 128, offset: 288)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !80, file: !18, line: 816, baseType: !1313, size: 576, offset: 266048)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !555, line: 170, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 161, size: 576, elements: !1315)
!1315 = !{!1316, !1322, !1323, !1329, !1330}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1314, file: !555, line: 163, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 128, elements: !31)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !555, line: 159, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !270, !88, !88, !88, !610}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1314, file: !555, line: 164, baseType: !1317, size: 128, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1314, file: !555, line: 165, baseType: !1324, size: 128, offset: 256)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 128, elements: !31)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !555, line: 160, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !270, !88, !88, !88}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1314, file: !555, line: 166, baseType: !1324, size: 128, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1314, file: !555, line: 167, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !270, !1334, !1335, !1338, !88, !88}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 1280, elements: !1337)
!1337 = !{!874, !32}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !1340)
!1340 = !{!39, !39}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !80, file: !18, line: 821, baseType: !1342, size: 64, offset: 266624)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !18, line: 377, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !18, line: 366, size: 960, elements: !1345)
!1345 = !{!1346, !1348, !1349, !1350, !1351, !1352, !1353, !1363, !1364}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1344, file: !18, line: 368, baseType: !1347, size: 8)
!1347 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1344, file: !18, line: 369, baseType: !35, size: 8, offset: 8)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1344, file: !18, line: 370, baseType: !35, size: 8, offset: 16)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1344, file: !18, line: 371, baseType: !88, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1344, file: !18, line: 372, baseType: !88, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1344, file: !18, line: 373, baseType: !553, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1344, file: !18, line: 374, baseType: !1354, size: 256, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !555, line: 157, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 149, size: 256, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1355, file: !555, line: 151, baseType: !552, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1355, file: !555, line: 152, baseType: !88, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1355, file: !555, line: 153, baseType: !88, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1355, file: !555, line: 154, baseType: !88, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1355, file: !555, line: 155, baseType: !88, size: 32, offset: 160)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1355, file: !555, line: 156, baseType: !88, size: 32, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1344, file: !18, line: 375, baseType: !1354, size: 256, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1344, file: !18, line: 376, baseType: !1354, size: 256, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1366 = !{!1367, !1368, !1369}
!1367 = !DILocalVariable(name: "h", arg: 1, scope: !74, file: !3, line: 266, type: !77)
!1368 = !DILocalVariable(name: "cpu", arg: 2, scope: !74, file: !3, line: 266, type: !88)
!1369 = !DILocalVariable(name: "pf", arg: 3, scope: !74, file: !3, line: 266, type: !1365)
!1370 = !DILocation(line: 0, scope: !74)
!1371 = !DILocation(line: 268, column: 19, scope: !74)
!1372 = !DILocation(line: 269, column: 9, scope: !74)
!1373 = !DILocation(line: 269, column: 19, scope: !74)
!1374 = !DILocation(line: 270, column: 9, scope: !74)
!1375 = !DILocation(line: 270, column: 22, scope: !74)
!1376 = !DILocation(line: 271, column: 9, scope: !74)
!1377 = !DILocation(line: 271, column: 22, scope: !74)
!1378 = !DILocation(line: 273, column: 9, scope: !74)
!1379 = !DILocation(line: 273, column: 21, scope: !74)
!1380 = !DILocation(line: 274, column: 9, scope: !74)
!1381 = !DILocation(line: 274, column: 24, scope: !74)
!1382 = !DILocation(line: 275, column: 9, scope: !74)
!1383 = !DILocation(line: 275, column: 21, scope: !74)
!1384 = !DILocation(line: 277, column: 9, scope: !74)
!1385 = !DILocation(line: 277, column: 21, scope: !74)
!1386 = !DILocation(line: 278, column: 9, scope: !74)
!1387 = !DILocation(line: 278, column: 26, scope: !74)
!1388 = !DILocation(line: 279, column: 9, scope: !74)
!1389 = !DILocation(line: 279, column: 26, scope: !74)
!1390 = !DILocation(line: 280, column: 9, scope: !74)
!1391 = !DILocation(line: 280, column: 26, scope: !74)
!1392 = !DILocation(line: 282, column: 9, scope: !74)
!1393 = !DILocation(line: 282, column: 5, scope: !74)
!1394 = !DILocation(line: 282, column: 35, scope: !74)
!1395 = !DILocation(line: 283, column: 5, scope: !74)
!1396 = !DILocation(line: 283, column: 35, scope: !74)
!1397 = !DILocation(line: 284, column: 5, scope: !74)
!1398 = !DILocation(line: 284, column: 35, scope: !74)
!1399 = !DILocation(line: 285, column: 5, scope: !74)
!1400 = !DILocation(line: 285, column: 35, scope: !74)
!1401 = !DILocation(line: 286, column: 9, scope: !74)
!1402 = !DILocation(line: 286, column: 5, scope: !74)
!1403 = !DILocation(line: 286, column: 40, scope: !74)
!1404 = !DILocation(line: 287, column: 5, scope: !74)
!1405 = !DILocation(line: 287, column: 40, scope: !74)
!1406 = !DILocation(line: 288, column: 5, scope: !74)
!1407 = !DILocation(line: 288, column: 40, scope: !74)
!1408 = !DILocation(line: 428, column: 35, scope: !74)
!1409 = !DILocation(line: 429, column: 5, scope: !74)
!1410 = !DILocation(line: 429, column: 35, scope: !74)
!1411 = !DILocation(line: 430, column: 40, scope: !74)
!1412 = !DILocation(line: 431, column: 5, scope: !74)
!1413 = !DILocation(line: 431, column: 40, scope: !74)
!1414 = !DILocation(line: 432, column: 1, scope: !74)
!1415 = distinct !DISubprogram(name: "quant_8x8", scope: !3, file: !3, line: 45, type: !1270, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421}
!1417 = !DILocalVariable(name: "dct", arg: 1, scope: !1415, file: !3, line: 45, type: !784)
!1418 = !DILocalVariable(name: "mf", arg: 2, scope: !1415, file: !3, line: 45, type: !447)
!1419 = !DILocalVariable(name: "bias", arg: 3, scope: !1415, file: !3, line: 45, type: !447)
!1420 = !DILocalVariable(name: "nz", scope: !1415, file: !3, line: 47, type: !88)
!1421 = !DILocalVariable(name: "i", scope: !1422, file: !3, line: 48, type: !88)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 48, column: 5)
!1423 = !DILocation(line: 0, scope: !1415)
!1424 = !DILocation(line: 0, scope: !1422)
!1425 = !DILocation(line: 48, column: 5, scope: !1422)
!1426 = !DILocation(line: 48, column: 30, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 48, column: 5)
!1428 = !DILocation(line: 49, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 49, column: 9)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 49, column: 9)
!1431 = !{!1432}
!1432 = distinct !{!1432, !1433}
!1433 = distinct !{!1433, !"LVerDomain"}
!1434 = !{!1435, !1436}
!1435 = distinct !{!1435, !1433}
!1436 = distinct !{!1436, !1433}
!1437 = !{!1435}
!1438 = !{!1436}
!1439 = !DILocation(line: 49, column: 9, scope: !1430)
!1440 = distinct !{!1440, !1425, !1441, !1442, !1443}
!1441 = !DILocation(line: 49, column: 9, scope: !1422)
!1442 = !{!"llvm.loop.isvectorized", i32 1}
!1443 = !{!"llvm.loop.unroll.runtime.disable"}
!1444 = !DILocation(line: 50, column: 13, scope: !1415)
!1445 = !DILocation(line: 50, column: 12, scope: !1415)
!1446 = !DILocation(line: 50, column: 5, scope: !1415)
!1447 = !DILocation(line: 48, column: 23, scope: !1427)
!1448 = distinct !{!1448, !1425, !1441, !1442}
!1449 = distinct !DISubprogram(name: "quant_4x4", scope: !3, file: !3, line: 53, type: !1270, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455}
!1451 = !DILocalVariable(name: "dct", arg: 1, scope: !1449, file: !3, line: 53, type: !784)
!1452 = !DILocalVariable(name: "mf", arg: 2, scope: !1449, file: !3, line: 53, type: !447)
!1453 = !DILocalVariable(name: "bias", arg: 3, scope: !1449, file: !3, line: 53, type: !447)
!1454 = !DILocalVariable(name: "nz", scope: !1449, file: !3, line: 55, type: !88)
!1455 = !DILocalVariable(name: "i", scope: !1456, file: !3, line: 56, type: !88)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 56, column: 5)
!1457 = !DILocation(line: 0, scope: !1449)
!1458 = !DILocation(line: 0, scope: !1456)
!1459 = !DILocation(line: 56, column: 5, scope: !1456)
!1460 = !DILocation(line: 57, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 57, column: 9)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 57, column: 9)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 56, column: 5)
!1464 = !{!1465}
!1465 = distinct !{!1465, !1466}
!1466 = distinct !{!1466, !"LVerDomain"}
!1467 = !{!1468, !1469}
!1468 = distinct !{!1468, !1466}
!1469 = distinct !{!1469, !1466}
!1470 = !{!1468}
!1471 = !{!1469}
!1472 = !DILocation(line: 57, column: 9, scope: !1462)
!1473 = !DILocation(line: 58, column: 13, scope: !1449)
!1474 = !DILocation(line: 58, column: 12, scope: !1449)
!1475 = !DILocation(line: 58, column: 5, scope: !1449)
!1476 = !DILocation(line: 56, column: 30, scope: !1463)
!1477 = !DILocation(line: 56, column: 23, scope: !1463)
!1478 = distinct !{!1478, !1459, !1479, !1442}
!1479 = !DILocation(line: 57, column: 9, scope: !1456)
!1480 = distinct !DISubprogram(name: "quant_4x4_dc", scope: !3, file: !3, line: 61, type: !1275, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486}
!1482 = !DILocalVariable(name: "dct", arg: 1, scope: !1480, file: !3, line: 61, type: !784)
!1483 = !DILocalVariable(name: "mf", arg: 2, scope: !1480, file: !3, line: 61, type: !88)
!1484 = !DILocalVariable(name: "bias", arg: 3, scope: !1480, file: !3, line: 61, type: !88)
!1485 = !DILocalVariable(name: "nz", scope: !1480, file: !3, line: 63, type: !88)
!1486 = !DILocalVariable(name: "i", scope: !1487, file: !3, line: 64, type: !88)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 64, column: 5)
!1488 = !DILocation(line: 0, scope: !1480)
!1489 = !DILocation(line: 0, scope: !1487)
!1490 = !DILocation(line: 65, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 65, column: 9)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 65, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 64, column: 5)
!1494 = !DILocation(line: 65, column: 9, scope: !1492)
!1495 = !DILocation(line: 66, column: 13, scope: !1480)
!1496 = !DILocation(line: 66, column: 12, scope: !1480)
!1497 = !DILocation(line: 66, column: 5, scope: !1480)
!1498 = distinct !DISubprogram(name: "quant_2x2_dc", scope: !3, file: !3, line: 69, type: !1275, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DILocalVariable(name: "dct", arg: 1, scope: !1498, file: !3, line: 69, type: !784)
!1501 = !DILocalVariable(name: "mf", arg: 2, scope: !1498, file: !3, line: 69, type: !88)
!1502 = !DILocalVariable(name: "bias", arg: 3, scope: !1498, file: !3, line: 69, type: !88)
!1503 = !DILocalVariable(name: "nz", scope: !1498, file: !3, line: 71, type: !88)
!1504 = !DILocation(line: 0, scope: !1498)
!1505 = !DILocation(line: 72, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 72, column: 5)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 72, column: 5)
!1508 = !DILocation(line: 72, column: 5, scope: !1507)
!1509 = !DILocation(line: 73, column: 5, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 73, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 73, column: 5)
!1512 = !DILocation(line: 73, column: 5, scope: !1511)
!1513 = !DILocation(line: 74, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 74, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 74, column: 5)
!1516 = !DILocation(line: 74, column: 5, scope: !1515)
!1517 = !DILocation(line: 75, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 75, column: 5)
!1519 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 75, column: 5)
!1520 = !DILocation(line: 75, column: 5, scope: !1519)
!1521 = !DILocation(line: 76, column: 13, scope: !1498)
!1522 = !DILocation(line: 76, column: 12, scope: !1498)
!1523 = !DILocation(line: 76, column: 5, scope: !1498)
!1524 = distinct !DISubprogram(name: "dequant_4x4", scope: !3, file: !3, line: 85, type: !1284, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1531, !1532, !1536, !1538}
!1526 = !DILocalVariable(name: "dct", arg: 1, scope: !1524, file: !3, line: 85, type: !784)
!1527 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1524, file: !3, line: 85, type: !427)
!1528 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1524, file: !3, line: 85, type: !88)
!1529 = !DILocalVariable(name: "i_mf", scope: !1524, file: !3, line: 87, type: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1531 = !DILocalVariable(name: "i_qbits", scope: !1524, file: !3, line: 88, type: !1530)
!1532 = !DILocalVariable(name: "i", scope: !1533, file: !3, line: 92, type: !88)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 92, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 91, column: 5)
!1535 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 90, column: 9)
!1536 = !DILocalVariable(name: "f", scope: !1537, file: !3, line: 97, type: !1530)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 96, column: 5)
!1538 = !DILocalVariable(name: "i", scope: !1539, file: !3, line: 98, type: !88)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 98, column: 9)
!1540 = !DILocation(line: 0, scope: !1524)
!1541 = !DILocation(line: 87, column: 26, scope: !1524)
!1542 = !DILocation(line: 88, column: 29, scope: !1524)
!1543 = !DILocation(line: 90, column: 17, scope: !1535)
!1544 = !DILocation(line: 90, column: 9, scope: !1524)
!1545 = !DILocation(line: 88, column: 32, scope: !1524)
!1546 = !DILocation(line: 0, scope: !1533)
!1547 = !DILocation(line: 93, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 92, column: 9)
!1549 = !DILocation(line: 101, column: 1, scope: !1524)
!1550 = !DILocation(line: 97, column: 29, scope: !1537)
!1551 = !DILocation(line: 97, column: 37, scope: !1537)
!1552 = !DILocation(line: 97, column: 25, scope: !1537)
!1553 = !DILocation(line: 0, scope: !1537)
!1554 = !DILocation(line: 0, scope: !1539)
!1555 = !DILocation(line: 99, column: 13, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 98, column: 9)
!1557 = !DILocation(line: 0, scope: !1535)
!1558 = distinct !DISubprogram(name: "dequant_4x4_dc", scope: !3, file: !3, line: 121, type: !1284, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1567, !1569, !1571, !1572}
!1560 = !DILocalVariable(name: "dct", arg: 1, scope: !1558, file: !3, line: 121, type: !784)
!1561 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1558, file: !3, line: 121, type: !427)
!1562 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1558, file: !3, line: 121, type: !88)
!1563 = !DILocalVariable(name: "i_qbits", scope: !1558, file: !3, line: 123, type: !1530)
!1564 = !DILocalVariable(name: "i_dmf", scope: !1565, file: !3, line: 127, type: !1530)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 126, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 125, column: 9)
!1567 = !DILocalVariable(name: "i", scope: !1568, file: !3, line: 128, type: !88)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 128, column: 9)
!1569 = !DILocalVariable(name: "i_dmf", scope: !1570, file: !3, line: 133, type: !1530)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 132, column: 5)
!1571 = !DILocalVariable(name: "f", scope: !1570, file: !3, line: 134, type: !1530)
!1572 = !DILocalVariable(name: "i", scope: !1573, file: !3, line: 135, type: !88)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 135, column: 9)
!1574 = !DILocation(line: 0, scope: !1558)
!1575 = !DILocation(line: 123, column: 29, scope: !1558)
!1576 = !DILocation(line: 133, column: 42, scope: !1570)
!1577 = !DILocation(line: 125, column: 17, scope: !1566)
!1578 = !DILocation(line: 0, scope: !1566)
!1579 = !DILocation(line: 125, column: 9, scope: !1558)
!1580 = !DILocation(line: 123, column: 32, scope: !1558)
!1581 = !DILocation(line: 127, column: 42, scope: !1565)
!1582 = !DILocation(line: 127, column: 27, scope: !1565)
!1583 = !DILocation(line: 127, column: 49, scope: !1565)
!1584 = !DILocation(line: 0, scope: !1565)
!1585 = !DILocation(line: 0, scope: !1568)
!1586 = !DILocation(line: 129, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 128, column: 9)
!1588 = !DILocation(line: 129, column: 20, scope: !1587)
!1589 = !DILocation(line: 138, column: 1, scope: !1558)
!1590 = !DILocation(line: 133, column: 27, scope: !1570)
!1591 = !DILocation(line: 0, scope: !1570)
!1592 = !DILocation(line: 134, column: 29, scope: !1570)
!1593 = !DILocation(line: 134, column: 37, scope: !1570)
!1594 = !DILocation(line: 134, column: 25, scope: !1570)
!1595 = !DILocation(line: 0, scope: !1573)
!1596 = !DILocation(line: 136, column: 24, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 135, column: 9)
!1598 = !DILocation(line: 136, column: 31, scope: !1597)
!1599 = !DILocation(line: 136, column: 39, scope: !1597)
!1600 = !DILocation(line: 136, column: 45, scope: !1597)
!1601 = !DILocation(line: 136, column: 22, scope: !1597)
!1602 = !DILocation(line: 136, column: 20, scope: !1597)
!1603 = distinct !DISubprogram(name: "dequant_8x8", scope: !3, file: !3, line: 103, type: !1280, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1614, !1616}
!1605 = !DILocalVariable(name: "dct", arg: 1, scope: !1603, file: !3, line: 103, type: !784)
!1606 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1603, file: !3, line: 103, type: !431)
!1607 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1603, file: !3, line: 103, type: !88)
!1608 = !DILocalVariable(name: "i_mf", scope: !1603, file: !3, line: 105, type: !1530)
!1609 = !DILocalVariable(name: "i_qbits", scope: !1603, file: !3, line: 106, type: !1530)
!1610 = !DILocalVariable(name: "i", scope: !1611, file: !3, line: 110, type: !88)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 110, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 109, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 108, column: 9)
!1614 = !DILocalVariable(name: "f", scope: !1615, file: !3, line: 115, type: !1530)
!1615 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 114, column: 5)
!1616 = !DILocalVariable(name: "i", scope: !1617, file: !3, line: 116, type: !88)
!1617 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 116, column: 9)
!1618 = !DILocation(line: 0, scope: !1603)
!1619 = !DILocation(line: 105, column: 26, scope: !1603)
!1620 = !DILocation(line: 106, column: 29, scope: !1603)
!1621 = !DILocation(line: 106, column: 32, scope: !1603)
!1622 = !DILocation(line: 108, column: 17, scope: !1613)
!1623 = !DILocation(line: 108, column: 9, scope: !1603)
!1624 = !DILocation(line: 0, scope: !1611)
!1625 = !DILocation(line: 110, column: 9, scope: !1611)
!1626 = !DILocation(line: 111, column: 13, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 110, column: 9)
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630}
!1630 = distinct !{!1630, !"LVerDomain"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1630}
!1633 = !DILocation(line: 119, column: 1, scope: !1603)
!1634 = !DILocation(line: 110, column: 34, scope: !1627)
!1635 = !DILocation(line: 110, column: 27, scope: !1627)
!1636 = distinct !{!1636, !1625, !1637, !1442}
!1637 = !DILocation(line: 111, column: 13, scope: !1611)
!1638 = !DILocation(line: 115, column: 29, scope: !1615)
!1639 = !DILocation(line: 115, column: 37, scope: !1615)
!1640 = !DILocation(line: 115, column: 25, scope: !1615)
!1641 = !DILocation(line: 0, scope: !1615)
!1642 = !DILocation(line: 0, scope: !1617)
!1643 = !DILocation(line: 116, column: 9, scope: !1617)
!1644 = !DILocation(line: 117, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 116, column: 9)
!1646 = !{!1647}
!1647 = distinct !{!1647, !1648}
!1648 = distinct !{!1648, !"LVerDomain"}
!1649 = !{!1650}
!1650 = distinct !{!1650, !1648}
!1651 = !DILocation(line: 116, column: 34, scope: !1645)
!1652 = !DILocation(line: 116, column: 27, scope: !1645)
!1653 = distinct !{!1653, !1643, !1654, !1442}
!1654 = !DILocation(line: 117, column: 13, scope: !1617)
!1655 = distinct !DISubprogram(name: "x264_denoise_dct", scope: !3, file: !3, line: 140, type: !1289, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1663, !1666}
!1657 = !DILocalVariable(name: "dct", arg: 1, scope: !1655, file: !3, line: 140, type: !784)
!1658 = !DILocalVariable(name: "sum", arg: 2, scope: !1655, file: !3, line: 140, type: !1291)
!1659 = !DILocalVariable(name: "offset", arg: 3, scope: !1655, file: !3, line: 140, type: !447)
!1660 = !DILocalVariable(name: "size", arg: 4, scope: !1655, file: !3, line: 140, type: !88)
!1661 = !DILocalVariable(name: "i", scope: !1662, file: !3, line: 142, type: !88)
!1662 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 142, column: 5)
!1663 = !DILocalVariable(name: "level", scope: !1664, file: !3, line: 144, type: !88)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 143, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 142, column: 5)
!1666 = !DILocalVariable(name: "sign", scope: !1664, file: !3, line: 145, type: !88)
!1667 = !DILocation(line: 0, scope: !1655)
!1668 = !DILocation(line: 0, scope: !1662)
!1669 = !DILocation(line: 142, column: 23, scope: !1665)
!1670 = !DILocation(line: 142, column: 5, scope: !1662)
!1671 = !DILocation(line: 144, column: 21, scope: !1664)
!1672 = !{!1673}
!1673 = distinct !{!1673, !1674}
!1674 = distinct !{!1674, !"LVerDomain"}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1674}
!1677 = !DILocation(line: 145, column: 25, scope: !1664)
!1678 = !DILocation(line: 146, column: 23, scope: !1664)
!1679 = !DILocation(line: 146, column: 29, scope: !1664)
!1680 = !DILocation(line: 147, column: 9, scope: !1664)
!1681 = !DILocation(line: 147, column: 16, scope: !1664)
!1682 = !{!1683}
!1683 = distinct !{!1683, !1674}
!1684 = !{!1673, !1676}
!1685 = !DILocation(line: 148, column: 18, scope: !1664)
!1686 = !DILocation(line: 148, column: 15, scope: !1664)
!1687 = !DILocation(line: 149, column: 23, scope: !1664)
!1688 = !DILocation(line: 149, column: 18, scope: !1664)
!1689 = !DILocation(line: 149, column: 16, scope: !1664)
!1690 = distinct !{!1690, !1670, !1691, !1442, !1443}
!1691 = !DILocation(line: 150, column: 5, scope: !1662)
!1692 = !DILocation(line: 151, column: 1, scope: !1655)
!1693 = !DILocation(line: 0, scope: !1664)
!1694 = !DILocation(line: 142, column: 32, scope: !1665)
!1695 = distinct !{!1695, !1670, !1691, !1442}
!1696 = distinct !DISubprogram(name: "x264_decimate_score15", scope: !3, file: !3, line: 204, type: !1294, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "dct", arg: 1, scope: !1696, file: !3, line: 204, type: !784)
!1699 = !DILocation(line: 0, scope: !1696)
!1700 = !DILocation(line: 206, column: 45, scope: !1696)
!1701 = !DILocalVariable(name: "dct", arg: 1, scope: !1702, file: !3, line: 174, type: !784)
!1702 = distinct !DISubprogram(name: "x264_decimate_score_internal", scope: !3, file: !3, line: 174, type: !1703, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!88, !784, !88}
!1705 = !{!1701, !1706, !1707, !1708, !1709, !1710}
!1706 = !DILocalVariable(name: "i_max", arg: 2, scope: !1702, file: !3, line: 174, type: !88)
!1707 = !DILocalVariable(name: "ds_table", scope: !1702, file: !3, line: 176, type: !418)
!1708 = !DILocalVariable(name: "i_score", scope: !1702, file: !3, line: 177, type: !88)
!1709 = !DILocalVariable(name: "idx", scope: !1702, file: !3, line: 178, type: !88)
!1710 = !DILocalVariable(name: "i_run", scope: !1711, file: !3, line: 187, type: !88)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 186, column: 5)
!1712 = !DILocation(line: 0, scope: !1702, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 206, column: 12, scope: !1696)
!1714 = !DILocation(line: 181, column: 24, scope: !1702, inlinedAt: !1713)
!1715 = !DILocation(line: 181, column: 43, scope: !1702, inlinedAt: !1713)
!1716 = !DILocation(line: 181, column: 5, scope: !1702, inlinedAt: !1713)
!1717 = !DILocation(line: 183, column: 30, scope: !1718, inlinedAt: !1713)
!1718 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 183, column: 9)
!1719 = !DILocation(line: 183, column: 9, scope: !1702, inlinedAt: !1713)
!1720 = !DILocation(line: 185, column: 16, scope: !1702, inlinedAt: !1713)
!1721 = !DILocation(line: 185, column: 5, scope: !1702, inlinedAt: !1713)
!1722 = !DILocation(line: 189, column: 24, scope: !1723, inlinedAt: !1713)
!1723 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 189, column: 13)
!1724 = !DILocation(line: 189, column: 40, scope: !1723, inlinedAt: !1713)
!1725 = !DILocation(line: 189, column: 13, scope: !1711, inlinedAt: !1713)
!1726 = !DILocation(line: 193, column: 20, scope: !1711, inlinedAt: !1713)
!1727 = !DILocation(line: 193, column: 25, scope: !1711, inlinedAt: !1713)
!1728 = !DILocation(line: 0, scope: !1711, inlinedAt: !1713)
!1729 = !DILocation(line: 193, column: 28, scope: !1711, inlinedAt: !1713)
!1730 = !DILocation(line: 193, column: 37, scope: !1711, inlinedAt: !1713)
!1731 = !DILocation(line: 193, column: 9, scope: !1711, inlinedAt: !1713)
!1732 = !DILocation(line: 196, column: 18, scope: !1733, inlinedAt: !1713)
!1733 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 194, column: 9)
!1734 = distinct !{!1734, !1731, !1735}
!1735 = !DILocation(line: 197, column: 9, scope: !1711, inlinedAt: !1713)
!1736 = !DILocation(line: 198, column: 20, scope: !1711, inlinedAt: !1713)
!1737 = !DILocation(line: 198, column: 17, scope: !1711, inlinedAt: !1713)
!1738 = !DILocation(line: 206, column: 5, scope: !1696)
!1739 = distinct !DISubprogram(name: "x264_decimate_score16", scope: !3, file: !3, line: 208, type: !1294, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1740 = !{!1741}
!1741 = !DILocalVariable(name: "dct", arg: 1, scope: !1739, file: !3, line: 208, type: !784)
!1742 = !DILocation(line: 0, scope: !1739)
!1743 = !DILocation(line: 0, scope: !1702, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 210, column: 12, scope: !1739)
!1745 = !DILocation(line: 181, column: 24, scope: !1702, inlinedAt: !1744)
!1746 = !DILocation(line: 181, column: 43, scope: !1702, inlinedAt: !1744)
!1747 = !DILocation(line: 181, column: 5, scope: !1702, inlinedAt: !1744)
!1748 = !DILocation(line: 183, column: 30, scope: !1718, inlinedAt: !1744)
!1749 = !DILocation(line: 183, column: 9, scope: !1702, inlinedAt: !1744)
!1750 = !DILocation(line: 189, column: 13, scope: !1711, inlinedAt: !1744)
!1751 = !DILocation(line: 189, column: 24, scope: !1723, inlinedAt: !1744)
!1752 = !DILocation(line: 189, column: 40, scope: !1723, inlinedAt: !1744)
!1753 = !DILocation(line: 193, column: 20, scope: !1711, inlinedAt: !1744)
!1754 = !DILocation(line: 193, column: 25, scope: !1711, inlinedAt: !1744)
!1755 = !DILocation(line: 0, scope: !1711, inlinedAt: !1744)
!1756 = !DILocation(line: 193, column: 28, scope: !1711, inlinedAt: !1744)
!1757 = !DILocation(line: 193, column: 37, scope: !1711, inlinedAt: !1744)
!1758 = !DILocation(line: 193, column: 9, scope: !1711, inlinedAt: !1744)
!1759 = !DILocation(line: 196, column: 18, scope: !1733, inlinedAt: !1744)
!1760 = distinct !{!1760, !1758, !1761}
!1761 = !DILocation(line: 197, column: 9, scope: !1711, inlinedAt: !1744)
!1762 = !DILocation(line: 198, column: 20, scope: !1711, inlinedAt: !1744)
!1763 = !DILocation(line: 198, column: 17, scope: !1711, inlinedAt: !1744)
!1764 = !DILocation(line: 185, column: 5, scope: !1702, inlinedAt: !1744)
!1765 = !DILocation(line: 185, column: 16, scope: !1702, inlinedAt: !1744)
!1766 = !DILocation(line: 210, column: 5, scope: !1739)
!1767 = distinct !DISubprogram(name: "x264_decimate_score64", scope: !3, file: !3, line: 212, type: !1294, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1768 = !{!1769}
!1769 = !DILocalVariable(name: "dct", arg: 1, scope: !1767, file: !3, line: 212, type: !784)
!1770 = !DILocation(line: 0, scope: !1767)
!1771 = !DILocation(line: 0, scope: !1702, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 214, column: 12, scope: !1767)
!1773 = !DILocation(line: 181, column: 24, scope: !1702, inlinedAt: !1772)
!1774 = !DILocation(line: 181, column: 43, scope: !1702, inlinedAt: !1772)
!1775 = !DILocation(line: 181, column: 5, scope: !1702, inlinedAt: !1772)
!1776 = !DILocation(line: 183, column: 30, scope: !1718, inlinedAt: !1772)
!1777 = !DILocation(line: 183, column: 9, scope: !1702, inlinedAt: !1772)
!1778 = !DILocation(line: 189, column: 13, scope: !1711, inlinedAt: !1772)
!1779 = !DILocation(line: 189, column: 24, scope: !1723, inlinedAt: !1772)
!1780 = !DILocation(line: 189, column: 40, scope: !1723, inlinedAt: !1772)
!1781 = !DILocation(line: 193, column: 20, scope: !1711, inlinedAt: !1772)
!1782 = !DILocation(line: 193, column: 25, scope: !1711, inlinedAt: !1772)
!1783 = !DILocation(line: 0, scope: !1711, inlinedAt: !1772)
!1784 = !DILocation(line: 193, column: 28, scope: !1711, inlinedAt: !1772)
!1785 = !DILocation(line: 193, column: 37, scope: !1711, inlinedAt: !1772)
!1786 = !DILocation(line: 193, column: 9, scope: !1711, inlinedAt: !1772)
!1787 = !DILocation(line: 196, column: 18, scope: !1733, inlinedAt: !1772)
!1788 = distinct !{!1788, !1786, !1789}
!1789 = !DILocation(line: 197, column: 9, scope: !1711, inlinedAt: !1772)
!1790 = !DILocation(line: 198, column: 20, scope: !1711, inlinedAt: !1772)
!1791 = !DILocation(line: 198, column: 17, scope: !1711, inlinedAt: !1772)
!1792 = !DILocation(line: 185, column: 5, scope: !1702, inlinedAt: !1772)
!1793 = !DILocation(line: 185, column: 16, scope: !1702, inlinedAt: !1772)
!1794 = !DILocation(line: 214, column: 5, scope: !1767)
!1795 = distinct !DISubprogram(name: "x264_coeff_last4", scope: !3, file: !3, line: 228, type: !1294, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1796)
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "l", arg: 1, scope: !1795, file: !3, line: 228, type: !784)
!1798 = !DILocation(line: 0, scope: !1795)
!1799 = !DILocalVariable(name: "l", arg: 1, scope: !1800, file: !3, line: 217, type: !784)
!1800 = distinct !DISubprogram(name: "x264_coeff_last_internal", scope: !3, file: !3, line: 217, type: !1703, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1801)
!1801 = !{!1799, !1802, !1803}
!1802 = !DILocalVariable(name: "i_count", arg: 2, scope: !1800, file: !3, line: 217, type: !88)
!1803 = !DILocalVariable(name: "i_last", scope: !1800, file: !3, line: 219, type: !88)
!1804 = !DILocation(line: 0, scope: !1800, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 230, column: 12, scope: !1795)
!1806 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1805)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 221, column: 13)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 220, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 220, column: 5)
!1810 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1805)
!1811 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1805)
!1812 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1805)
!1813 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1805)
!1814 = !DILocation(line: 230, column: 5, scope: !1795)
!1815 = distinct !DISubprogram(name: "x264_coeff_last15", scope: !3, file: !3, line: 232, type: !1294, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "l", arg: 1, scope: !1815, file: !3, line: 232, type: !784)
!1818 = !DILocation(line: 0, scope: !1815)
!1819 = !DILocation(line: 0, scope: !1800, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 234, column: 12, scope: !1815)
!1821 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1820)
!1822 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1820)
!1823 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1820)
!1824 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1820)
!1825 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1820)
!1826 = !DILocation(line: 224, column: 15, scope: !1800, inlinedAt: !1820)
!1827 = !DILocation(line: 223, column: 19, scope: !1800, inlinedAt: !1820)
!1828 = !DILocation(line: 223, column: 24, scope: !1800, inlinedAt: !1820)
!1829 = distinct !{!1829, !1823, !1826}
!1830 = !DILocation(line: 234, column: 5, scope: !1815)
!1831 = distinct !DISubprogram(name: "x264_coeff_last16", scope: !3, file: !3, line: 236, type: !1294, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "l", arg: 1, scope: !1831, file: !3, line: 236, type: !784)
!1834 = !DILocation(line: 0, scope: !1831)
!1835 = !DILocation(line: 0, scope: !1800, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 238, column: 12, scope: !1831)
!1837 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1836)
!1838 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1836)
!1839 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1836)
!1840 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1836)
!1841 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1836)
!1842 = !DILocation(line: 224, column: 15, scope: !1800, inlinedAt: !1836)
!1843 = !DILocation(line: 223, column: 19, scope: !1800, inlinedAt: !1836)
!1844 = !DILocation(line: 223, column: 24, scope: !1800, inlinedAt: !1836)
!1845 = distinct !{!1845, !1839, !1842}
!1846 = !DILocation(line: 238, column: 5, scope: !1831)
!1847 = distinct !DISubprogram(name: "x264_coeff_last64", scope: !3, file: !3, line: 240, type: !1294, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "l", arg: 1, scope: !1847, file: !3, line: 240, type: !784)
!1850 = !DILocation(line: 0, scope: !1847)
!1851 = !DILocation(line: 0, scope: !1800, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 242, column: 12, scope: !1847)
!1853 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1852)
!1854 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1852)
!1855 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1852)
!1856 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1852)
!1857 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1852)
!1858 = !DILocation(line: 224, column: 15, scope: !1800, inlinedAt: !1852)
!1859 = !DILocation(line: 223, column: 19, scope: !1800, inlinedAt: !1852)
!1860 = !DILocation(line: 223, column: 24, scope: !1800, inlinedAt: !1852)
!1861 = distinct !{!1861, !1855, !1858}
!1862 = !DILocation(line: 242, column: 5, scope: !1847)
!1863 = distinct !DISubprogram(name: "x264_coeff_level_run4", scope: !3, file: !3, line: 261, type: !1303, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869}
!1865 = !DILocalVariable(name: "dct", arg: 1, scope: !1863, file: !3, line: 261, type: !784)
!1866 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1863, file: !3, line: 261, type: !1305)
!1867 = !DILocalVariable(name: "i_last", scope: !1863, file: !3, line: 261, type: !88)
!1868 = !DILocalVariable(name: "i_total", scope: !1863, file: !3, line: 261, type: !88)
!1869 = !DILocalVariable(name: "r", scope: !1870, file: !3, line: 261, type: !88)
!1870 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 261, column: 1)
!1871 = !DILocation(line: 0, scope: !1863)
!1872 = !DILocation(line: 0, scope: !1795, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 261, column: 1, scope: !1863)
!1874 = !DILocation(line: 0, scope: !1800, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 230, column: 12, scope: !1795, inlinedAt: !1873)
!1876 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1875)
!1877 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1875)
!1878 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1875)
!1879 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1875)
!1880 = !DILocation(line: 261, column: 1, scope: !1863)
!1881 = !DILocation(line: 0, scope: !1870)
!1882 = !DILocation(line: 261, column: 1, scope: !1870)
!1883 = distinct !{!1883, !1882, !1882}
!1884 = distinct !{!1884, !1880, !1880}
!1885 = distinct !DISubprogram(name: "x264_coeff_level_run15", scope: !3, file: !3, line: 262, type: !1303, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891}
!1887 = !DILocalVariable(name: "dct", arg: 1, scope: !1885, file: !3, line: 262, type: !784)
!1888 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1885, file: !3, line: 262, type: !1305)
!1889 = !DILocalVariable(name: "i_last", scope: !1885, file: !3, line: 262, type: !88)
!1890 = !DILocalVariable(name: "i_total", scope: !1885, file: !3, line: 262, type: !88)
!1891 = !DILocalVariable(name: "r", scope: !1892, file: !3, line: 262, type: !88)
!1892 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 262, column: 1)
!1893 = !DILocation(line: 0, scope: !1885)
!1894 = !DILocation(line: 0, scope: !1815, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 262, column: 1, scope: !1885)
!1896 = !DILocation(line: 0, scope: !1800, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 234, column: 12, scope: !1815, inlinedAt: !1895)
!1898 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1897)
!1899 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1897)
!1900 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1897)
!1901 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1897)
!1902 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1897)
!1903 = !DILocation(line: 224, column: 15, scope: !1800, inlinedAt: !1897)
!1904 = !DILocation(line: 223, column: 19, scope: !1800, inlinedAt: !1897)
!1905 = !DILocation(line: 223, column: 24, scope: !1800, inlinedAt: !1897)
!1906 = distinct !{!1906, !1900, !1903}
!1907 = !DILocation(line: 262, column: 1, scope: !1885)
!1908 = !DILocation(line: 0, scope: !1892)
!1909 = !DILocation(line: 262, column: 1, scope: !1892)
!1910 = distinct !{!1910, !1909, !1909}
!1911 = distinct !{!1911, !1907, !1907}
!1912 = distinct !DISubprogram(name: "x264_coeff_level_run16", scope: !3, file: !3, line: 263, type: !1303, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DILocalVariable(name: "dct", arg: 1, scope: !1912, file: !3, line: 263, type: !784)
!1915 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1912, file: !3, line: 263, type: !1305)
!1916 = !DILocalVariable(name: "i_last", scope: !1912, file: !3, line: 263, type: !88)
!1917 = !DILocalVariable(name: "i_total", scope: !1912, file: !3, line: 263, type: !88)
!1918 = !DILocalVariable(name: "r", scope: !1919, file: !3, line: 263, type: !88)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 263, column: 1)
!1920 = !DILocation(line: 0, scope: !1912)
!1921 = !DILocation(line: 0, scope: !1831, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 263, column: 1, scope: !1912)
!1923 = !DILocation(line: 0, scope: !1800, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 238, column: 12, scope: !1831, inlinedAt: !1922)
!1925 = !DILocation(line: 221, column: 13, scope: !1807, inlinedAt: !1924)
!1926 = !DILocation(line: 221, column: 13, scope: !1808, inlinedAt: !1924)
!1927 = !DILocation(line: 223, column: 5, scope: !1800, inlinedAt: !1924)
!1928 = !DILocation(line: 223, column: 27, scope: !1800, inlinedAt: !1924)
!1929 = !DILocation(line: 223, column: 37, scope: !1800, inlinedAt: !1924)
!1930 = !DILocation(line: 224, column: 15, scope: !1800, inlinedAt: !1924)
!1931 = !DILocation(line: 223, column: 19, scope: !1800, inlinedAt: !1924)
!1932 = !DILocation(line: 223, column: 24, scope: !1800, inlinedAt: !1924)
!1933 = distinct !{!1933, !1927, !1930}
!1934 = !DILocation(line: 263, column: 1, scope: !1912)
!1935 = !DILocation(line: 0, scope: !1919)
!1936 = !DILocation(line: 263, column: 1, scope: !1919)
!1937 = distinct !{!1937, !1936, !1936}
!1938 = distinct !{!1938, !1934, !1934}
