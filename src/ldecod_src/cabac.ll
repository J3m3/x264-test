; ModuleID = 'ldecod_src/cabac.c'
source_filename = "ldecod_src/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.BiContextType = type { i16, i8, i8 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: deco_ctx\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: deco_ctx\00", align 1, !dbg !7
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16, !dbg !12
@pos2ctx_map_int = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x8i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4], align 16, !dbg !218
@pos2ctx_map = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4], align 16, !dbg !244
@type2ctx_last = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21], align 16, !dbg !252, !dbg !250
@maxpos = internal unnamed_addr constant [22 x i16] [i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 3, i16 14, i16 7, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15], align 16, !dbg !254
@pos2ctx_last.rel = internal unnamed_addr constant [22 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last2x4c to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4c to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32)], align 4
@pos2ctx_map4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0E", align 16, !dbg !223
@pos2ctx_map8x8i = internal constant [64 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E\0E", align 16, !dbg !228
@pos2ctx_map8x4i = internal constant [32 x i8] c"\00\01\02\03\04\05\06\03\04\05\06\03\04\07\06\08\09\07\06\08\09\0A\0B\0C\0C\0A\0B\0D\0D\0E\0E\0E", align 16, !dbg !233
@pos2ctx_map4x8i = internal constant [32 x i8] c"\00\01\01\01\02\03\03\04\04\04\05\06\02\07\07\08\08\08\05\06\09\0A\0A\0B\0B\0B\0C\0D\0D\0E\0E\0E", align 16, !dbg !238
@pos2ctx_map2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16, !dbg !240
@pos2ctx_map4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16, !dbg !242
@pos2ctx_map8x8 = internal constant [64 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C\0E", align 16, !dbg !246
@pos2ctx_map8x4 = internal constant [32 x i8] c"\00\01\02\03\04\05\07\08\09\0A\0B\09\08\06\07\08\09\0A\0B\09\08\06\0C\08\09\0A\0B\09\0D\0D\0E\0E", align 16, !dbg !248
@pos2ctx_last4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16, !dbg !260
@pos2ctx_last8x8 = internal constant [64 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08\08", align 16, !dbg !262
@pos2ctx_last8x4 = internal constant [32 x i8] c"\00\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\04\04\04\04\05\05\06\06\07\07\08\08", align 16, !dbg !264
@pos2ctx_last2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16, !dbg !266
@pos2ctx_last4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16, !dbg !268
@type2ctx_abs = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 3, i16 4, i16 5, i16 6, i16 5, i16 5, i16 10, i16 11, i16 12, i16 13, i16 13, i16 14, i16 16, i16 17, i16 18, i16 19, i16 19, i16 20], align 16, !dbg !272, !dbg !212, !dbg !270
@max_c2 = internal unnamed_addr constant [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 3, i16 4, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16, !dbg !274

; Function Attrs: nounwind uwtable
define dso_local void @CheckAvailabilityOfNeighborsCABAC(ptr noundef %currMB) local_unnamed_addr #0 !dbg !297 {
entry:
  %up = alloca %struct.pix_pos, align 4, !DIAssignID !1393
    #dbg_assign(i1 undef, !1390, !DIExpression(), !1393, ptr %up, !DIExpression(), !1394)
  %left = alloca %struct.pix_pos, align 4, !DIAssignID !1395
    #dbg_assign(i1 undef, !1391, !DIExpression(), !1395, ptr %left, !DIExpression(), !1394)
    #dbg_value(ptr %currMB, !1388, !DIExpression(), !1394)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !1396
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !1396
    #dbg_value(ptr %0, !1389, !DIExpression(), !1394)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up) #12, !dbg !1397
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left) #12, !dbg !1397
  %mb_size2 = getelementptr inbounds i8, ptr %0, i64 849124, !dbg !1398
    #dbg_value(ptr %mb_size2, !1392, !DIExpression(), !1394)
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744, !dbg !1399
  %1 = load ptr, ptr %getNeighbour, align 8, !dbg !1399
  call void %1(ptr noundef %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2, ptr noundef nonnull %left) #12, !dbg !1400
  %2 = load ptr, ptr %getNeighbour, align 8, !dbg !1401
  call void %2(ptr noundef %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2, ptr noundef nonnull %up) #12, !dbg !1402
  %3 = load i32, ptr %up, align 4, !dbg !1403
  %tobool.not = icmp eq i32 %3, 0, !dbg !1405
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1406

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %currMB, align 8, !dbg !1407
  %mb_data = getelementptr inbounds i8, ptr %4, i64 13512, !dbg !1408
  %5 = load ptr, ptr %mb_data, align 8, !dbg !1408
  %mb_addr = getelementptr inbounds i8, ptr %up, i64 4, !dbg !1409
  %6 = load i32, ptr %mb_addr, align 4, !dbg !1409
  %idxprom = sext i32 %6 to i64, !dbg !1410
  %arrayidx4 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom, !dbg !1410
  br label %if.end, !dbg !1411

if.end:                                           ; preds = %entry, %if.then
  %arrayidx4.sink = phi ptr [ %arrayidx4, %if.then ], [ null, %entry ], !dbg !1412
  %7 = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !1412
  store ptr %arrayidx4.sink, ptr %7, align 8, !dbg !1412
  %8 = load i32, ptr %left, align 4, !dbg !1413
  %tobool7.not = icmp eq i32 %8, 0, !dbg !1415
  br i1 %tobool7.not, label %if.end16, label %if.then8, !dbg !1416

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %currMB, align 8, !dbg !1417
  %mb_data10 = getelementptr inbounds i8, ptr %9, i64 13512, !dbg !1418
  %10 = load ptr, ptr %mb_data10, align 8, !dbg !1418
  %mb_addr11 = getelementptr inbounds i8, ptr %left, i64 4, !dbg !1419
  %11 = load i32, ptr %mb_addr11, align 4, !dbg !1419
  %idxprom12 = sext i32 %11 to i64, !dbg !1420
  %arrayidx13 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom12, !dbg !1420
  br label %if.end16, !dbg !1421

if.end16:                                         ; preds = %if.end, %if.then8
  %arrayidx13.sink = phi ptr [ %arrayidx13, %if.then8 ], [ null, %if.end ], !dbg !1422
  %12 = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !1422
  store ptr %arrayidx13.sink, ptr %12, align 8, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left) #12, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up) #12, !dbg !1423
  ret void, !dbg !1423
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cabac_new_slice(ptr nocapture noundef writeonly %currSlice) local_unnamed_addr #2 !dbg !1424 {
entry:
    #dbg_value(ptr %currSlice, !1428, !DIExpression(), !1429)
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212, !dbg !1430
  store i32 0, ptr %last_dquant, align 4, !dbg !1431
  ret void, !dbg !1432
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_MotionInfo() local_unnamed_addr #0 !dbg !1433 {
entry:
  %call = tail call noalias dereferenceable_or_null(364) ptr @calloc(i64 noundef 1, i64 noundef 364) #13, !dbg !1438
    #dbg_value(ptr %call, !1437, !DIExpression(), !1439)
  %cmp = icmp eq ptr %call, null, !dbg !1440
  br i1 %cmp, label %if.then, label %if.end, !dbg !1442

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #12, !dbg !1443
  br label %if.end, !dbg !1443

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !1444
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !1445 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1451 void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_TextureInfo() local_unnamed_addr #0 !dbg !1456 {
entry:
  %call = tail call noalias dereferenceable_or_null(6596) ptr @calloc(i64 noundef 1, i64 noundef 6596) #13, !dbg !1461
    #dbg_value(ptr %call, !1460, !DIExpression(), !1462)
  %cmp = icmp eq ptr %call, null, !dbg !1463
  br i1 %cmp, label %if.then, label %if.end, !dbg !1465

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12, !dbg !1466
  br label %if.end, !dbg !1466

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call, !dbg !1467
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_MotionInfo(ptr noundef %deco_ctx) local_unnamed_addr #5 !dbg !1468 {
entry:
    #dbg_value(ptr %deco_ctx, !1472, !DIExpression(), !1473)
  %cmp = icmp eq ptr %deco_ctx, null, !dbg !1474
  br i1 %cmp, label %return, label %if.end, !dbg !1476

if.end:                                           ; preds = %entry
  tail call void @free(ptr noundef nonnull %deco_ctx) #12, !dbg !1477
  br label %return, !dbg !1478

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1478
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1479 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_TextureInfo(ptr noundef %deco_ctx) local_unnamed_addr #5 !dbg !1482 {
entry:
    #dbg_value(ptr %deco_ctx, !1486, !DIExpression(), !1487)
  %cmp = icmp eq ptr %deco_ctx, null, !dbg !1488
  br i1 %cmp, label %return, label %if.end, !dbg !1490

if.end:                                           ; preds = %entry
  tail call void @free(ptr noundef nonnull %deco_ctx) #12, !dbg !1491
  br label %return, !dbg !1492

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1492
}

; Function Attrs: nounwind uwtable
define dso_local void @readFieldModeInfo_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !1493 {
entry:
    #dbg_value(ptr %currMB, !1497, !DIExpression(), !1505)
    #dbg_value(ptr %se, !1498, !DIExpression(), !1505)
    #dbg_value(ptr %dep_dp, !1499, !DIExpression(), !1505)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1506
    #dbg_value(ptr %0, !1500, !DIExpression(), !1505)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !1507
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !1507
    #dbg_value(ptr %1, !1501, !DIExpression(), !1505)
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404, !dbg !1508
  %2 = load i32, ptr %mbAvailA, align 4, !dbg !1508
  %tobool.not = icmp eq i32 %2, 0, !dbg !1509
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !1509

cond.true:                                        ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1510
  %3 = load ptr, ptr %mb_data, align 8, !dbg !1510
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388, !dbg !1511
  %4 = load i32, ptr %mbAddrA, align 4, !dbg !1511
  %idxprom = sext i32 %4 to i64, !dbg !1512
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, i32 45, !dbg !1513
  %5 = load i32, ptr %mb_field, align 8, !dbg !1513
  br label %cond.end, !dbg !1509

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry ], !dbg !1509
    #dbg_value(i32 %cond, !1502, !DIExpression(), !1505)
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408, !dbg !1514
  %6 = load i32, ptr %mbAvailB, align 8, !dbg !1514
  %tobool1.not = icmp eq i32 %6, 0, !dbg !1515
  br i1 %tobool1.not, label %cond.end8, label %cond.true2, !dbg !1515

cond.true2:                                       ; preds = %cond.end
  %mb_data3 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !1516
  %7 = load ptr, ptr %mb_data3, align 8, !dbg !1516
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392, !dbg !1517
  %8 = load i32, ptr %mbAddrB, align 8, !dbg !1517
  %idxprom4 = sext i32 %8 to i64, !dbg !1518
  %mb_field6 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom4, i32 45, !dbg !1519
  %9 = load i32, ptr %mb_field6, align 8, !dbg !1519
  br label %cond.end8, !dbg !1515

cond.end8:                                        ; preds = %cond.end, %cond.true2
  %cond9 = phi i32 [ %9, %cond.true2 ], [ 0, %cond.end ], !dbg !1515
    #dbg_value(i32 %cond9, !1503, !DIExpression(), !1505)
  %add = add nsw i32 %cond9, %cond, !dbg !1520
    #dbg_value(i32 %add, !1504, !DIExpression(), !1505)
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348, !dbg !1521
  %idxprom10 = sext i32 %add to i64, !dbg !1522
  %arrayidx11 = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts, i64 0, i64 %idxprom10, !dbg !1522
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx11) #12, !dbg !1523
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !1524
  store i32 %call, ptr %value1, align 4, !dbg !1525
  ret void, !dbg !1526
}

declare !dbg !1527 i32 @biari_decode_symbol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef %currSlice, ptr nocapture noundef %se, ptr noundef %act_dp) local_unnamed_addr #0 !dbg !1531 {
entry:
  %up.i137 = alloca %struct.pix_pos, align 4, !DIAssignID !1550
    #dbg_assign(i1 undef, !1390, !DIExpression(), !1550, ptr %up.i137, !DIExpression(), !1551)
  %left.i138 = alloca %struct.pix_pos, align 4, !DIAssignID !1553
  %up.i = alloca %struct.pix_pos, align 4, !DIAssignID !1554
    #dbg_assign(i1 undef, !1390, !DIExpression(), !1554, ptr %up.i, !DIExpression(), !1555)
  %left.i = alloca %struct.pix_pos, align 4, !DIAssignID !1557
    #dbg_value(ptr %currSlice, !1535, !DIExpression(), !1558)
    #dbg_value(ptr %se, !1536, !DIExpression(), !1558)
    #dbg_value(ptr %act_dp, !1537, !DIExpression(), !1558)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !1559
    #dbg_value(ptr %0, !1538, !DIExpression(), !1558)
  %mot_ctx2 = getelementptr inbounds i8, ptr %currSlice, i64 320, !dbg !1560
  %1 = load ptr, ptr %mot_ctx2, align 8, !dbg !1560
    #dbg_value(ptr %1, !1543, !DIExpression(), !1558)
  %de_cabac = getelementptr inbounds i8, ptr %act_dp, i64 8, !dbg !1561
    #dbg_value(ptr %de_cabac, !1545, !DIExpression(), !1558)
    #dbg_value(i32 0, !1546, !DIExpression(), !1558)
    #dbg_value(i32 0, !1547, !DIExpression(), !1558)
  %current_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 108, !dbg !1562
  %2 = load i32, ptr %current_mb_nr, align 4, !dbg !1563
  %inc = add i32 %2, 1, !dbg !1563
  store i32 %inc, ptr %current_mb_nr, align 4, !dbg !1563
  %mb_data = getelementptr inbounds i8, ptr %currSlice, i64 13512, !dbg !1564
  %3 = load ptr, ptr %mb_data, align 8, !dbg !1564
  %idxprom = zext i32 %inc to i64, !dbg !1565
  %arrayidx = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, !dbg !1565
    #dbg_value(ptr %arrayidx, !1549, !DIExpression(), !1558)
  %p_Vid4 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1566
  store ptr %0, ptr %p_Vid4, align 8, !dbg !1567
  store ptr %currSlice, ptr %arrayidx, align 8, !dbg !1568
  %current_slice_nr = getelementptr inbounds i8, ptr %currSlice, i64 116, !dbg !1569
  %4 = load i16, ptr %current_slice_nr, align 4, !dbg !1569
  %slice_nr = getelementptr inbounds i8, ptr %arrayidx, i64 108, !dbg !1570
  store i16 %4, ptr %slice_nr, align 4, !dbg !1571
  %5 = load ptr, ptr %mb_data, align 8, !dbg !1572
  %6 = load i32, ptr %current_mb_nr, align 4, !dbg !1573
  %sub = add i32 %6, -1, !dbg !1574
  %idxprom7 = zext i32 %sub to i64, !dbg !1575
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom7, i32 45, !dbg !1576
  %7 = load i32, ptr %mb_field, align 8, !dbg !1576
  %mb_field9 = getelementptr inbounds i8, ptr %arrayidx, i64 384, !dbg !1577
  store i32 %7, ptr %mb_field9, align 8, !dbg !1578
  %8 = load i32, ptr %current_mb_nr, align 4, !dbg !1579
  %mbAddrX = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1580
  store i32 %8, ptr %mbAddrX, align 8, !dbg !1581
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128, !dbg !1582
  %9 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !1582
  %tobool.not = icmp eq i32 %9, 0, !dbg !1583
  %tobool12.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not, !dbg !1584
  %and = and i32 %8, 1, !dbg !1584
  %tobool14.not = icmp eq i32 %and, 0, !dbg !1584
  %10 = select i1 %tobool14.not, i16 2, i16 4, !dbg !1584
  %cond15 = select i1 %or.cond, i16 0, i16 %10, !dbg !1584
  %list_offset = getelementptr inbounds i8, ptr %arrayidx, i64 114, !dbg !1585
  store i16 %cond15, ptr %list_offset, align 2, !dbg !1586
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %arrayidx) #12, !dbg !1587
    #dbg_assign(i1 undef, !1391, !DIExpression(), !1557, ptr %left.i, !DIExpression(), !1555)
    #dbg_value(ptr %arrayidx, !1388, !DIExpression(), !1555)
  %11 = load ptr, ptr %p_Vid4, align 8, !dbg !1588
    #dbg_value(ptr %11, !1389, !DIExpression(), !1555)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i) #12, !dbg !1589
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #12, !dbg !1589
  %mb_size2.i = getelementptr inbounds i8, ptr %11, i64 849124, !dbg !1590
    #dbg_value(ptr %mb_size2.i, !1392, !DIExpression(), !1555)
  %getNeighbour.i = getelementptr inbounds i8, ptr %11, i64 856744, !dbg !1591
  %12 = load ptr, ptr %getNeighbour.i, align 8, !dbg !1591
  call void %12(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %left.i) #12, !dbg !1592
  %13 = load ptr, ptr %getNeighbour.i, align 8, !dbg !1593
  call void %13(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %up.i) #12, !dbg !1594
  %14 = load i32, ptr %up.i, align 4, !dbg !1595
  %tobool.not.i = icmp eq i32 %14, 0, !dbg !1596
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !1597

if.then.i:                                        ; preds = %entry
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1598
  %mb_data.i = getelementptr inbounds i8, ptr %15, i64 13512, !dbg !1599
  %16 = load ptr, ptr %mb_data.i, align 8, !dbg !1599
  %mb_addr.i = getelementptr inbounds i8, ptr %up.i, i64 4, !dbg !1600
  %17 = load i32, ptr %mb_addr.i, align 4, !dbg !1600
  %idxprom.i = sext i32 %17 to i64, !dbg !1601
  %arrayidx4.i = getelementptr inbounds %struct.macroblock, ptr %16, i64 %idxprom.i, !dbg !1601
  br label %if.end.i, !dbg !1602

if.end.i:                                         ; preds = %if.then.i, %entry
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.then.i ], [ null, %entry ], !dbg !1603
  %18 = getelementptr inbounds i8, ptr %arrayidx, i64 120, !dbg !1603
  store ptr %arrayidx4.sink.i, ptr %18, align 8, !dbg !1603
  %19 = load i32, ptr %left.i, align 4, !dbg !1604
  %tobool7.not.i = icmp eq i32 %19, 0, !dbg !1605
  br i1 %tobool7.not.i, label %CheckAvailabilityOfNeighborsCABAC.exit, label %if.then8.i, !dbg !1606

if.then8.i:                                       ; preds = %if.end.i
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !1607
  %mb_data10.i = getelementptr inbounds i8, ptr %20, i64 13512, !dbg !1608
  %21 = load ptr, ptr %mb_data10.i, align 8, !dbg !1608
  %mb_addr11.i = getelementptr inbounds i8, ptr %left.i, i64 4, !dbg !1609
  %22 = load i32, ptr %mb_addr11.i, align 4, !dbg !1609
  %idxprom12.i = sext i32 %22 to i64, !dbg !1610
  %arrayidx13.i = getelementptr inbounds %struct.macroblock, ptr %21, i64 %idxprom12.i, !dbg !1610
  br label %CheckAvailabilityOfNeighborsCABAC.exit, !dbg !1611

CheckAvailabilityOfNeighborsCABAC.exit:           ; preds = %if.end.i, %if.then8.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then8.i ], [ null, %if.end.i ], !dbg !1612
  %23 = getelementptr inbounds i8, ptr %arrayidx, i64 128, !dbg !1612
  store ptr %arrayidx13.sink.i, ptr %23, align 8, !dbg !1612
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #12, !dbg !1613
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i) #12, !dbg !1613
  %call = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13, !dbg !1614
    #dbg_value(ptr %call, !1542, !DIExpression(), !1558)
    #dbg_value(i32 0, !1548, !DIExpression(), !1558)
    #dbg_value(i64 0, !1548, !DIExpression(), !1558)
  %call17 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1615
    #dbg_value(ptr %call17, !1539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1558)
    #dbg_value(i64 1, !1548, !DIExpression(), !1558)
  %call17.1 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1615
    #dbg_value(ptr %call17.1, !1539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1558)
    #dbg_value(i64 2, !1548, !DIExpression(), !1558)
  %call17.2 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1615
    #dbg_value(ptr %call17.2, !1539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1558)
    #dbg_value(i64 3, !1548, !DIExpression(), !1558)
  %call21 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13, !dbg !1618
    #dbg_value(ptr %call21, !1541, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call, ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, i64 32, i1 false), !dbg !1619
  %Dcodestrm_len = getelementptr inbounds i8, ptr %act_dp, i64 32, !dbg !1620
  %24 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !1620
  %25 = load i32, ptr %24, align 4, !dbg !1621
  %Dcodestrm_len22 = getelementptr inbounds i8, ptr %call, i64 24, !dbg !1622
  %26 = load ptr, ptr %Dcodestrm_len22, align 8, !dbg !1622
  store i32 %25, ptr %26, align 4, !dbg !1623
    #dbg_value(i32 %25, !1544, !DIExpression(), !1558)
    #dbg_value(i32 0, !1548, !DIExpression(), !1558)
    #dbg_value(i64 0, !1548, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17, ptr noundef nonnull align 2 dereferenceable(44) %1, i64 44, i1 false), !dbg !1624
    #dbg_value(i64 1, !1548, !DIExpression(), !1558)
  %arrayidx30.1 = getelementptr inbounds i8, ptr %1, i64 44, !dbg !1627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.1, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, i64 44, i1 false), !dbg !1624
    #dbg_value(i64 2, !1548, !DIExpression(), !1558)
  %arrayidx30.2 = getelementptr inbounds i8, ptr %1, i64 88, !dbg !1627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.2, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, i64 44, i1 false), !dbg !1624
    #dbg_value(i64 3, !1548, !DIExpression(), !1558)
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348, !dbg !1628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %call21, ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, i64 16, i1 false), !dbg !1629
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212, !dbg !1630
  store i32 0, ptr %last_dquant, align 4, !dbg !1631
    #dbg_value(ptr %arrayidx, !1632, !DIExpression(), !1642)
    #dbg_value(ptr %se, !1635, !DIExpression(), !1642)
    #dbg_value(ptr %de_cabac, !1636, !DIExpression(), !1642)
  %27 = load ptr, ptr %arrayidx, align 8, !dbg !1644
    #dbg_value(ptr %27, !1637, !DIExpression(), !1642)
  %mot_ctx.i = getelementptr inbounds i8, ptr %27, i64 320, !dbg !1645
  %28 = load ptr, ptr %mot_ctx.i, align 8, !dbg !1645
    #dbg_value(ptr %28, !1638, !DIExpression(), !1642)
  %29 = load ptr, ptr %23, align 8, !dbg !1646
  %cmp.not.i = icmp eq ptr %29, null, !dbg !1647
  br i1 %cmp.not.i, label %cond.end.i, label %cond.true.i, !dbg !1648

cond.true.i:                                      ; preds = %CheckAvailabilityOfNeighborsCABAC.exit
  %skip_flag.i = getelementptr inbounds i8, ptr %29, i64 374, !dbg !1649
  %30 = load i8, ptr %skip_flag.i, align 2, !dbg !1649
  %cmp2.i = icmp eq i8 %30, 0, !dbg !1650
  %conv3.i = zext i1 %cmp2.i to i64, !dbg !1650
  br label %cond.end.i, !dbg !1648

cond.end.i:                                       ; preds = %cond.true.i, %CheckAvailabilityOfNeighborsCABAC.exit
  %cond.i = phi i64 [ %conv3.i, %cond.true.i ], [ 0, %CheckAvailabilityOfNeighborsCABAC.exit ], !dbg !1648
    #dbg_value(i32 poison, !1639, !DIExpression(), !1642)
  %31 = load ptr, ptr %18, align 8, !dbg !1651
  %cmp4.not.i = icmp eq ptr %31, null, !dbg !1652
  br i1 %cmp4.not.i, label %cond.end13.i, label %cond.true6.i, !dbg !1653

cond.true6.i:                                     ; preds = %cond.end.i
  %skip_flag8.i = getelementptr inbounds i8, ptr %31, i64 374, !dbg !1654
  %32 = load i8, ptr %skip_flag8.i, align 2, !dbg !1654
  %cmp10.i = icmp eq i8 %32, 0, !dbg !1655
  %conv11.i = zext i1 %cmp10.i to i64, !dbg !1655
  br label %cond.end13.i, !dbg !1653

cond.end13.i:                                     ; preds = %cond.true6.i, %cond.end.i
  %cond14.i = phi i64 [ %conv11.i, %cond.true6.i ], [ 0, %cond.end.i ], !dbg !1653
    #dbg_value(i32 poison, !1640, !DIExpression(), !1642)
  %add.i = add nuw nsw i64 %cond14.i, %cond.i, !dbg !1656
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1641, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1642)
  %arrayidx.i = getelementptr inbounds i8, ptr %28, i64 44, !dbg !1657
  %arrayidx15.i = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx.i, i64 0, i64 %add.i, !dbg !1657
  %call.i = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx15.i) #12, !dbg !1659
  %cmp16.i = icmp eq i32 %call.i, 1, !dbg !1660
  %33 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !1661
  br i1 %cmp16.i, label %read_skip_flag_CABAC_p_slice.exit, label %read_skip_flag_CABAC_p_slice.exit.thread, !dbg !1662

read_skip_flag_CABAC_p_slice.exit.thread:         ; preds = %cond.end13.i
  store i32 1, ptr %33, align 4, !dbg !1661
    #dbg_value(i1 false, !1546, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1558)
  br label %if.then, !dbg !1663

read_skip_flag_CABAC_p_slice.exit:                ; preds = %cond.end13.i
  store i32 0, ptr %33, align 4, !dbg !1661
  %last_dquant.i = getelementptr inbounds i8, ptr %27, i64 212, !dbg !1664
  store i32 0, ptr %last_dquant.i, align 4, !dbg !1667
  %.pr = load i32, ptr %33, align 4, !dbg !1668
  %cmp35 = icmp eq i32 %.pr, 0, !dbg !1669
    #dbg_value(i1 %cmp35, !1546, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1558)
  br i1 %cmp35, label %if.end, label %if.then, !dbg !1663

if.then:                                          ; preds = %read_skip_flag_CABAC_p_slice.exit.thread, %read_skip_flag_CABAC_p_slice.exit
    #dbg_value(ptr %arrayidx, !1497, !DIExpression(), !1670)
    #dbg_value(ptr %se, !1498, !DIExpression(), !1670)
    #dbg_value(ptr %de_cabac, !1499, !DIExpression(), !1670)
  %34 = load ptr, ptr %arrayidx, align 8, !dbg !1674
    #dbg_value(ptr %34, !1500, !DIExpression(), !1670)
  %mot_ctx.i128 = getelementptr inbounds i8, ptr %34, i64 320, !dbg !1675
  %35 = load ptr, ptr %mot_ctx.i128, align 8, !dbg !1675
    #dbg_value(ptr %35, !1501, !DIExpression(), !1670)
  %mbAvailA.i = getelementptr inbounds i8, ptr %arrayidx, i64 404, !dbg !1676
  %36 = load i32, ptr %mbAvailA.i, align 4, !dbg !1676
  %tobool.not.i129 = icmp eq i32 %36, 0, !dbg !1677
  br i1 %tobool.not.i129, label %cond.end.i133, label %cond.true.i130, !dbg !1677

cond.true.i130:                                   ; preds = %if.then
  %mb_data.i131 = getelementptr inbounds i8, ptr %34, i64 13512, !dbg !1678
  %37 = load ptr, ptr %mb_data.i131, align 8, !dbg !1678
  %mbAddrA.i = getelementptr inbounds i8, ptr %arrayidx, i64 388, !dbg !1679
  %38 = load i32, ptr %mbAddrA.i, align 4, !dbg !1679
  %idxprom.i132 = sext i32 %38 to i64, !dbg !1680
  %mb_field.i = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom.i132, i32 45, !dbg !1681
  %39 = load i32, ptr %mb_field.i, align 8, !dbg !1681
  br label %cond.end.i133, !dbg !1677

cond.end.i133:                                    ; preds = %cond.true.i130, %if.then
  %cond.i134 = phi i32 [ %39, %cond.true.i130 ], [ 0, %if.then ], !dbg !1677
    #dbg_value(i32 %cond.i134, !1502, !DIExpression(), !1670)
  %mbAvailB.i = getelementptr inbounds i8, ptr %arrayidx, i64 408, !dbg !1682
  %40 = load i32, ptr %mbAvailB.i, align 8, !dbg !1682
  %tobool1.not.i = icmp eq i32 %40, 0, !dbg !1683
  br i1 %tobool1.not.i, label %readFieldModeInfo_CABAC.exit, label %cond.true2.i, !dbg !1683

cond.true2.i:                                     ; preds = %cond.end.i133
  %mb_data3.i = getelementptr inbounds i8, ptr %34, i64 13512, !dbg !1684
  %41 = load ptr, ptr %mb_data3.i, align 8, !dbg !1684
  %mbAddrB.i = getelementptr inbounds i8, ptr %arrayidx, i64 392, !dbg !1685
  %42 = load i32, ptr %mbAddrB.i, align 8, !dbg !1685
  %idxprom4.i = sext i32 %42 to i64, !dbg !1686
  %mb_field6.i = getelementptr inbounds %struct.macroblock, ptr %41, i64 %idxprom4.i, i32 45, !dbg !1687
  %43 = load i32, ptr %mb_field6.i, align 8, !dbg !1687
  br label %readFieldModeInfo_CABAC.exit, !dbg !1683

readFieldModeInfo_CABAC.exit:                     ; preds = %cond.end.i133, %cond.true2.i
  %cond9.i = phi i32 [ %43, %cond.true2.i ], [ 0, %cond.end.i133 ], !dbg !1683
    #dbg_value(i32 %cond9.i, !1503, !DIExpression(), !1670)
  %add.i135 = add nsw i32 %cond9.i, %cond.i134, !dbg !1688
    #dbg_value(i32 %add.i135, !1504, !DIExpression(), !1670)
  %mb_aff_contexts.i = getelementptr inbounds i8, ptr %35, i64 348, !dbg !1689
  %idxprom10.i = sext i32 %add.i135 to i64, !dbg !1690
  %arrayidx11.i = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts.i, i64 0, i64 %idxprom10.i, !dbg !1690
  %call.i136 = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx11.i) #12, !dbg !1691
  store i32 %call.i136, ptr %33, align 4, !dbg !1692
    #dbg_value(i32 %call.i136, !1547, !DIExpression(), !1558)
  %44 = load ptr, ptr %mb_data, align 8, !dbg !1693
  %45 = load i32, ptr %current_mb_nr, align 4, !dbg !1694
  %sub41 = add i32 %45, -1, !dbg !1695
  %idxprom42 = zext i32 %sub41 to i64, !dbg !1696
  %mb_field44 = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom42, i32 45, !dbg !1697
  store i32 %call.i136, ptr %mb_field44, align 8, !dbg !1698
  br label %if.end, !dbg !1699

if.end:                                           ; preds = %readFieldModeInfo_CABAC.exit, %read_skip_flag_CABAC_p_slice.exit
  %cmp35160 = phi i32 [ 0, %readFieldModeInfo_CABAC.exit ], [ 1, %read_skip_flag_CABAC_p_slice.exit ]
  %46 = load i32, ptr %current_mb_nr, align 4, !dbg !1700
  %dec = add i32 %46, -1, !dbg !1700
  store i32 %dec, ptr %current_mb_nr, align 4, !dbg !1700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, ptr noundef nonnull align 8 dereferenceable(32) %call, i64 32, i1 false), !dbg !1701
  %47 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !1702
  store i32 %25, ptr %47, align 4, !dbg !1703
    #dbg_value(i32 0, !1548, !DIExpression(), !1558)
    #dbg_value(i64 0, !1548, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %1, ptr noundef nonnull align 2 dereferenceable(44) %call17, i64 44, i1 false), !dbg !1704
    #dbg_value(i64 1, !1548, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, ptr noundef nonnull align 2 dereferenceable(44) %call17.1, i64 44, i1 false), !dbg !1704
    #dbg_value(i64 2, !1548, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, ptr noundef nonnull align 2 dereferenceable(44) %call17.2, i64 44, i1 false), !dbg !1704
    #dbg_value(i64 3, !1548, !DIExpression(), !1558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, ptr noundef nonnull align 2 dereferenceable(16) %call21, i64 16, i1 false), !dbg !1707
    #dbg_assign(i1 undef, !1391, !DIExpression(), !1553, ptr %left.i138, !DIExpression(), !1551)
    #dbg_value(ptr %arrayidx, !1388, !DIExpression(), !1551)
  %48 = load ptr, ptr %p_Vid4, align 8, !dbg !1708
    #dbg_value(ptr %48, !1389, !DIExpression(), !1551)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i137) #12, !dbg !1709
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i138) #12, !dbg !1709
  %mb_size2.i140 = getelementptr inbounds i8, ptr %48, i64 849124, !dbg !1710
    #dbg_value(ptr %mb_size2.i140, !1392, !DIExpression(), !1551)
  %getNeighbour.i141 = getelementptr inbounds i8, ptr %48, i64 856744, !dbg !1711
  %49 = load ptr, ptr %getNeighbour.i141, align 8, !dbg !1711
  call void %49(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i140, ptr noundef nonnull %left.i138) #12, !dbg !1712
  %50 = load ptr, ptr %getNeighbour.i141, align 8, !dbg !1713
  call void %50(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i140, ptr noundef nonnull %up.i137) #12, !dbg !1714
  %51 = load i32, ptr %up.i137, align 4, !dbg !1715
  %tobool.not.i142 = icmp eq i32 %51, 0, !dbg !1716
  br i1 %tobool.not.i142, label %if.end.i148, label %if.then.i143, !dbg !1717

if.then.i143:                                     ; preds = %if.end
  %52 = load ptr, ptr %arrayidx, align 8, !dbg !1718
  %mb_data.i144 = getelementptr inbounds i8, ptr %52, i64 13512, !dbg !1719
  %53 = load ptr, ptr %mb_data.i144, align 8, !dbg !1719
  %mb_addr.i145 = getelementptr inbounds i8, ptr %up.i137, i64 4, !dbg !1720
  %54 = load i32, ptr %mb_addr.i145, align 4, !dbg !1720
  %idxprom.i146 = sext i32 %54 to i64, !dbg !1721
  %arrayidx4.i147 = getelementptr inbounds %struct.macroblock, ptr %53, i64 %idxprom.i146, !dbg !1721
  br label %if.end.i148, !dbg !1722

if.end.i148:                                      ; preds = %if.then.i143, %if.end
  %arrayidx4.sink.i149 = phi ptr [ %arrayidx4.i147, %if.then.i143 ], [ null, %if.end ], !dbg !1723
  store ptr %arrayidx4.sink.i149, ptr %18, align 8, !dbg !1723
  %55 = load i32, ptr %left.i138, align 4, !dbg !1724
  %tobool7.not.i150 = icmp eq i32 %55, 0, !dbg !1725
  br i1 %tobool7.not.i150, label %CheckAvailabilityOfNeighborsCABAC.exit157, label %if.then8.i151, !dbg !1726

if.then8.i151:                                    ; preds = %if.end.i148
  %56 = load ptr, ptr %arrayidx, align 8, !dbg !1727
  %mb_data10.i152 = getelementptr inbounds i8, ptr %56, i64 13512, !dbg !1728
  %57 = load ptr, ptr %mb_data10.i152, align 8, !dbg !1728
  %mb_addr11.i153 = getelementptr inbounds i8, ptr %left.i138, i64 4, !dbg !1729
  %58 = load i32, ptr %mb_addr11.i153, align 4, !dbg !1729
  %idxprom12.i154 = sext i32 %58 to i64, !dbg !1730
  %arrayidx13.i155 = getelementptr inbounds %struct.macroblock, ptr %57, i64 %idxprom12.i154, !dbg !1730
  br label %CheckAvailabilityOfNeighborsCABAC.exit157, !dbg !1731

CheckAvailabilityOfNeighborsCABAC.exit157:        ; preds = %if.end.i148, %if.then8.i151
  %arrayidx13.sink.i156 = phi ptr [ %arrayidx13.i155, %if.then8.i151 ], [ null, %if.end.i148 ], !dbg !1732
  store ptr %arrayidx13.sink.i156, ptr %23, align 8, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i138) #12, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i137) #12, !dbg !1733
  call void @free(ptr noundef nonnull %call) #12, !dbg !1734
    #dbg_value(i32 0, !1548, !DIExpression(), !1558)
    #dbg_value(i64 0, !1548, !DIExpression(), !1558)
  call void @free(ptr noundef nonnull %call17) #12, !dbg !1735
    #dbg_value(i64 1, !1548, !DIExpression(), !1558)
  call void @free(ptr noundef nonnull %call17.1) #12, !dbg !1735
    #dbg_value(i64 2, !1548, !DIExpression(), !1558)
  call void @free(ptr noundef nonnull %call17.2) #12, !dbg !1735
    #dbg_value(i64 3, !1548, !DIExpression(), !1558)
    #dbg_value(i32 %cmp35160, !1546, !DIExpression(), !1558)
  call void @free(ptr noundef nonnull %call21) #12, !dbg !1738
  ret i32 %cmp35160, !dbg !1739
}

declare !dbg !1740 void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !1633 {
entry:
    #dbg_value(ptr %currMB, !1632, !DIExpression(), !1742)
    #dbg_value(ptr %se, !1635, !DIExpression(), !1742)
    #dbg_value(ptr %dep_dp, !1636, !DIExpression(), !1742)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1743
    #dbg_value(ptr %0, !1637, !DIExpression(), !1742)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !1744
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !1744
    #dbg_value(ptr %1, !1638, !DIExpression(), !1742)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !1745
  %2 = load ptr, ptr %mb_left, align 8, !dbg !1745
  %cmp.not = icmp eq ptr %2, null, !dbg !1746
  br i1 %cmp.not, label %cond.end, label %cond.true, !dbg !1747

cond.true:                                        ; preds = %entry
  %skip_flag = getelementptr inbounds i8, ptr %2, i64 374, !dbg !1748
  %3 = load i8, ptr %skip_flag, align 2, !dbg !1748
  %cmp2 = icmp eq i8 %3, 0, !dbg !1749
  %conv3 = zext i1 %cmp2 to i64, !dbg !1749
  br label %cond.end, !dbg !1747

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ 0, %entry ], !dbg !1747
    #dbg_value(i32 poison, !1639, !DIExpression(), !1742)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !1750
  %4 = load ptr, ptr %mb_up, align 8, !dbg !1750
  %cmp4.not = icmp eq ptr %4, null, !dbg !1751
  br i1 %cmp4.not, label %cond.end13, label %cond.true6, !dbg !1752

cond.true6:                                       ; preds = %cond.end
  %skip_flag8 = getelementptr inbounds i8, ptr %4, i64 374, !dbg !1753
  %5 = load i8, ptr %skip_flag8, align 2, !dbg !1753
  %cmp10 = icmp eq i8 %5, 0, !dbg !1754
  %conv11 = zext i1 %cmp10 to i64, !dbg !1754
  br label %cond.end13, !dbg !1752

cond.end13:                                       ; preds = %cond.end, %cond.true6
  %cond14 = phi i64 [ %conv11, %cond.true6 ], [ 0, %cond.end ], !dbg !1752
    #dbg_value(i32 poison, !1640, !DIExpression(), !1742)
  %add = add nuw nsw i64 %cond14, %cond, !dbg !1755
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1641, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1742)
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 44, !dbg !1756
  %arrayidx15 = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx, i64 0, i64 %add, !dbg !1756
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx15) #12, !dbg !1757
  %cmp16 = icmp eq i32 %call, 1, !dbg !1758
  %6 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !1759
  br i1 %cmp16, label %if.then20, label %if.end, !dbg !1760

if.end:                                           ; preds = %cond.end13
  store i32 1, ptr %6, align 4, !dbg !1759
  br label %if.end21, !dbg !1761

if.then20:                                        ; preds = %cond.end13
  store i32 0, ptr %6, align 4, !dbg !1759
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212, !dbg !1762
  store i32 0, ptr %last_dquant, align 4, !dbg !1763
  br label %if.end21, !dbg !1764

if.end21:                                         ; preds = %if.end, %if.then20
  ret void, !dbg !1765
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef %currSlice, ptr nocapture noundef %se, ptr noundef %act_dp) local_unnamed_addr #0 !dbg !1766 {
entry:
  %up.i139 = alloca %struct.pix_pos, align 4, !DIAssignID !1782
    #dbg_assign(i1 undef, !1390, !DIExpression(), !1782, ptr %up.i139, !DIExpression(), !1783)
  %left.i140 = alloca %struct.pix_pos, align 4, !DIAssignID !1785
  %up.i = alloca %struct.pix_pos, align 4, !DIAssignID !1786
    #dbg_assign(i1 undef, !1390, !DIExpression(), !1786, ptr %up.i, !DIExpression(), !1787)
  %left.i = alloca %struct.pix_pos, align 4, !DIAssignID !1789
    #dbg_value(ptr %currSlice, !1768, !DIExpression(), !1790)
    #dbg_value(ptr %se, !1769, !DIExpression(), !1790)
    #dbg_value(ptr %act_dp, !1770, !DIExpression(), !1790)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !1791
    #dbg_value(ptr %0, !1771, !DIExpression(), !1790)
  %de_cabac = getelementptr inbounds i8, ptr %act_dp, i64 8, !dbg !1792
    #dbg_value(ptr %de_cabac, !1776, !DIExpression(), !1790)
  %mot_ctx2 = getelementptr inbounds i8, ptr %currSlice, i64 320, !dbg !1793
  %1 = load ptr, ptr %mot_ctx2, align 8, !dbg !1793
    #dbg_value(ptr %1, !1777, !DIExpression(), !1790)
    #dbg_value(i32 0, !1778, !DIExpression(), !1790)
    #dbg_value(i32 0, !1779, !DIExpression(), !1790)
  %current_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 108, !dbg !1794
  %2 = load i32, ptr %current_mb_nr, align 4, !dbg !1795
  %inc = add i32 %2, 1, !dbg !1795
  store i32 %inc, ptr %current_mb_nr, align 4, !dbg !1795
  %mb_data = getelementptr inbounds i8, ptr %currSlice, i64 13512, !dbg !1796
  %3 = load ptr, ptr %mb_data, align 8, !dbg !1796
  %idxprom = zext i32 %inc to i64, !dbg !1797
  %arrayidx = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, !dbg !1797
    #dbg_value(ptr %arrayidx, !1781, !DIExpression(), !1790)
  %p_Vid4 = getelementptr inbounds i8, ptr %arrayidx, i64 8, !dbg !1798
  store ptr %0, ptr %p_Vid4, align 8, !dbg !1799
  store ptr %currSlice, ptr %arrayidx, align 8, !dbg !1800
  %current_slice_nr = getelementptr inbounds i8, ptr %currSlice, i64 116, !dbg !1801
  %4 = load i16, ptr %current_slice_nr, align 4, !dbg !1801
  %slice_nr = getelementptr inbounds i8, ptr %arrayidx, i64 108, !dbg !1802
  store i16 %4, ptr %slice_nr, align 4, !dbg !1803
  %5 = load ptr, ptr %mb_data, align 8, !dbg !1804
  %6 = load i32, ptr %current_mb_nr, align 4, !dbg !1805
  %sub = add i32 %6, -1, !dbg !1806
  %idxprom7 = zext i32 %sub to i64, !dbg !1807
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom7, i32 45, !dbg !1808
  %7 = load i32, ptr %mb_field, align 8, !dbg !1808
  %mb_field9 = getelementptr inbounds i8, ptr %arrayidx, i64 384, !dbg !1809
  store i32 %7, ptr %mb_field9, align 8, !dbg !1810
  %8 = load i32, ptr %current_mb_nr, align 4, !dbg !1811
  %mbAddrX = getelementptr inbounds i8, ptr %arrayidx, i64 24, !dbg !1812
  store i32 %8, ptr %mbAddrX, align 8, !dbg !1813
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128, !dbg !1814
  %9 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !1814
  %tobool.not = icmp eq i32 %9, 0, !dbg !1815
  %tobool12.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not, !dbg !1816
  %and = and i32 %8, 1, !dbg !1816
  %tobool14.not = icmp eq i32 %and, 0, !dbg !1816
  %10 = select i1 %tobool14.not, i16 2, i16 4, !dbg !1816
  %cond15 = select i1 %or.cond, i16 0, i16 %10, !dbg !1816
  %list_offset = getelementptr inbounds i8, ptr %arrayidx, i64 114, !dbg !1817
  store i16 %cond15, ptr %list_offset, align 2, !dbg !1818
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %arrayidx) #12, !dbg !1819
    #dbg_assign(i1 undef, !1391, !DIExpression(), !1789, ptr %left.i, !DIExpression(), !1787)
    #dbg_value(ptr %arrayidx, !1388, !DIExpression(), !1787)
  %11 = load ptr, ptr %p_Vid4, align 8, !dbg !1820
    #dbg_value(ptr %11, !1389, !DIExpression(), !1787)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i) #12, !dbg !1821
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #12, !dbg !1821
  %mb_size2.i = getelementptr inbounds i8, ptr %11, i64 849124, !dbg !1822
    #dbg_value(ptr %mb_size2.i, !1392, !DIExpression(), !1787)
  %getNeighbour.i = getelementptr inbounds i8, ptr %11, i64 856744, !dbg !1823
  %12 = load ptr, ptr %getNeighbour.i, align 8, !dbg !1823
  call void %12(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %left.i) #12, !dbg !1824
  %13 = load ptr, ptr %getNeighbour.i, align 8, !dbg !1825
  call void %13(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %up.i) #12, !dbg !1826
  %14 = load i32, ptr %up.i, align 4, !dbg !1827
  %tobool.not.i = icmp eq i32 %14, 0, !dbg !1828
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !1829

if.then.i:                                        ; preds = %entry
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !1830
  %mb_data.i = getelementptr inbounds i8, ptr %15, i64 13512, !dbg !1831
  %16 = load ptr, ptr %mb_data.i, align 8, !dbg !1831
  %mb_addr.i = getelementptr inbounds i8, ptr %up.i, i64 4, !dbg !1832
  %17 = load i32, ptr %mb_addr.i, align 4, !dbg !1832
  %idxprom.i = sext i32 %17 to i64, !dbg !1833
  %arrayidx4.i = getelementptr inbounds %struct.macroblock, ptr %16, i64 %idxprom.i, !dbg !1833
  br label %if.end.i, !dbg !1834

if.end.i:                                         ; preds = %if.then.i, %entry
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.then.i ], [ null, %entry ], !dbg !1835
  %18 = getelementptr inbounds i8, ptr %arrayidx, i64 120, !dbg !1835
  store ptr %arrayidx4.sink.i, ptr %18, align 8, !dbg !1835
  %19 = load i32, ptr %left.i, align 4, !dbg !1836
  %tobool7.not.i = icmp eq i32 %19, 0, !dbg !1837
  br i1 %tobool7.not.i, label %CheckAvailabilityOfNeighborsCABAC.exit, label %if.then8.i, !dbg !1838

if.then8.i:                                       ; preds = %if.end.i
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !1839
  %mb_data10.i = getelementptr inbounds i8, ptr %20, i64 13512, !dbg !1840
  %21 = load ptr, ptr %mb_data10.i, align 8, !dbg !1840
  %mb_addr11.i = getelementptr inbounds i8, ptr %left.i, i64 4, !dbg !1841
  %22 = load i32, ptr %mb_addr11.i, align 4, !dbg !1841
  %idxprom12.i = sext i32 %22 to i64, !dbg !1842
  %arrayidx13.i = getelementptr inbounds %struct.macroblock, ptr %21, i64 %idxprom12.i, !dbg !1842
  br label %CheckAvailabilityOfNeighborsCABAC.exit, !dbg !1843

CheckAvailabilityOfNeighborsCABAC.exit:           ; preds = %if.end.i, %if.then8.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then8.i ], [ null, %if.end.i ], !dbg !1844
  %23 = getelementptr inbounds i8, ptr %arrayidx, i64 128, !dbg !1844
  store ptr %arrayidx13.sink.i, ptr %23, align 8, !dbg !1844
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #12, !dbg !1845
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i) #12, !dbg !1845
  %call = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13, !dbg !1846
    #dbg_value(ptr %call, !1774, !DIExpression(), !1790)
    #dbg_value(i32 0, !1780, !DIExpression(), !1790)
    #dbg_value(i64 0, !1780, !DIExpression(), !1790)
  %call17 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1847
    #dbg_value(ptr %call17, !1772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1790)
    #dbg_value(i64 1, !1780, !DIExpression(), !1790)
  %call17.1 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1847
    #dbg_value(ptr %call17.1, !1772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1790)
    #dbg_value(i64 2, !1780, !DIExpression(), !1790)
  %call17.2 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13, !dbg !1847
    #dbg_value(ptr %call17.2, !1772, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1790)
    #dbg_value(i64 3, !1780, !DIExpression(), !1790)
  %call21 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13, !dbg !1850
    #dbg_value(ptr %call21, !1773, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call, ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, i64 32, i1 false), !dbg !1851
  %Dcodestrm_len = getelementptr inbounds i8, ptr %act_dp, i64 32, !dbg !1852
  %24 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !1852
  %25 = load i32, ptr %24, align 4, !dbg !1853
  %Dcodestrm_len22 = getelementptr inbounds i8, ptr %call, i64 24, !dbg !1854
  %26 = load ptr, ptr %Dcodestrm_len22, align 8, !dbg !1854
  store i32 %25, ptr %26, align 4, !dbg !1855
    #dbg_value(i32 %25, !1775, !DIExpression(), !1790)
    #dbg_value(i32 0, !1780, !DIExpression(), !1790)
    #dbg_value(i64 0, !1780, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17, ptr noundef nonnull align 2 dereferenceable(44) %1, i64 44, i1 false), !dbg !1856
    #dbg_value(i64 1, !1780, !DIExpression(), !1790)
  %arrayidx30.1 = getelementptr inbounds i8, ptr %1, i64 44, !dbg !1859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.1, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, i64 44, i1 false), !dbg !1856
    #dbg_value(i64 2, !1780, !DIExpression(), !1790)
  %arrayidx30.2 = getelementptr inbounds i8, ptr %1, i64 88, !dbg !1859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.2, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, i64 44, i1 false), !dbg !1856
    #dbg_value(i64 3, !1780, !DIExpression(), !1790)
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348, !dbg !1860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %call21, ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, i64 16, i1 false), !dbg !1861
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212, !dbg !1862
  store i32 0, ptr %last_dquant, align 4, !dbg !1863
    #dbg_value(ptr %arrayidx, !1864, !DIExpression(), !1874)
    #dbg_value(ptr %se, !1867, !DIExpression(), !1874)
    #dbg_value(ptr %de_cabac, !1868, !DIExpression(), !1874)
  %27 = load ptr, ptr %arrayidx, align 8, !dbg !1876
    #dbg_value(ptr %27, !1869, !DIExpression(), !1874)
  %mot_ctx.i = getelementptr inbounds i8, ptr %27, i64 320, !dbg !1877
  %28 = load ptr, ptr %mot_ctx.i, align 8, !dbg !1877
    #dbg_value(ptr %28, !1870, !DIExpression(), !1874)
  %29 = load ptr, ptr %23, align 8, !dbg !1878
  %cmp.not.i = icmp eq ptr %29, null, !dbg !1879
  br i1 %cmp.not.i, label %cond.end.i, label %cond.true.i, !dbg !1880

cond.true.i:                                      ; preds = %CheckAvailabilityOfNeighborsCABAC.exit
  %skip_flag.i = getelementptr inbounds i8, ptr %29, i64 374, !dbg !1881
  %30 = load i8, ptr %skip_flag.i, align 2, !dbg !1881
  %cmp2.i = icmp eq i8 %30, 0, !dbg !1882
  %31 = select i1 %cmp2.i, i64 8, i64 7, !dbg !1883
  br label %cond.end.i, !dbg !1880

cond.end.i:                                       ; preds = %cond.true.i, %CheckAvailabilityOfNeighborsCABAC.exit
  %cond.i = phi i64 [ %31, %cond.true.i ], [ 7, %CheckAvailabilityOfNeighborsCABAC.exit ], !dbg !1880
    #dbg_value(i32 poison, !1871, !DIExpression(), !1874)
  %32 = load ptr, ptr %18, align 8, !dbg !1884
  %cmp4.not.i = icmp eq ptr %32, null, !dbg !1885
  br i1 %cmp4.not.i, label %cond.end13.i, label %cond.true6.i, !dbg !1886

cond.true6.i:                                     ; preds = %cond.end.i
  %skip_flag8.i = getelementptr inbounds i8, ptr %32, i64 374, !dbg !1887
  %33 = load i8, ptr %skip_flag8.i, align 2, !dbg !1887
  %cmp10.i = icmp eq i8 %33, 0, !dbg !1888
  %conv11.i = zext i1 %cmp10.i to i64, !dbg !1888
  br label %cond.end13.i, !dbg !1886

cond.end13.i:                                     ; preds = %cond.true6.i, %cond.end.i
  %cond14.i = phi i64 [ %conv11.i, %cond.true6.i ], [ 0, %cond.end.i ], !dbg !1886
    #dbg_value(i32 poison, !1872, !DIExpression(), !1874)
  %add15.i = add nuw nsw i64 %cond14.i, %cond.i, !dbg !1889
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1874)
  %arrayidx.i = getelementptr inbounds i8, ptr %28, i64 88, !dbg !1890
  %arrayidx16.i = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx.i, i64 0, i64 %add15.i, !dbg !1890
  %call.i = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx16.i) #12, !dbg !1892
  %cmp17.i = icmp eq i32 %call.i, 1, !dbg !1893
  %34 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !1894
  %35 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !1894
  br i1 %cmp17.i, label %read_skip_flag_CABAC_b_slice.exit, label %read_skip_flag_CABAC_b_slice.exit.thread, !dbg !1895

read_skip_flag_CABAC_b_slice.exit.thread:         ; preds = %cond.end13.i
  store i32 1, ptr %34, align 8, !dbg !1894
  store i32 1, ptr %35, align 4, !dbg !1894
  br label %if.then, !dbg !1896

read_skip_flag_CABAC_b_slice.exit:                ; preds = %cond.end13.i
  store i32 0, ptr %34, align 8, !dbg !1894
  store i32 0, ptr %35, align 4, !dbg !1894
  %last_dquant.i = getelementptr inbounds i8, ptr %27, i64 212, !dbg !1897
  store i32 0, ptr %last_dquant.i, align 4, !dbg !1900
  %.pr = load i32, ptr %35, align 4, !dbg !1901
  %cmp35 = icmp eq i32 %.pr, 0, !dbg !1902
  br i1 %cmp35, label %land.end, label %if.then, !dbg !1896

land.end:                                         ; preds = %read_skip_flag_CABAC_b_slice.exit
  %36 = load i32, ptr %34, align 8, !dbg !1903
  %cmp37 = icmp eq i32 %36, 0, !dbg !1904
    #dbg_value(i1 %cmp37, !1778, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1790)
  br i1 %cmp37, label %if.end, label %if.then, !dbg !1905

if.then:                                          ; preds = %read_skip_flag_CABAC_b_slice.exit.thread, %read_skip_flag_CABAC_b_slice.exit, %land.end
    #dbg_value(ptr %arrayidx, !1497, !DIExpression(), !1906)
    #dbg_value(ptr %se, !1498, !DIExpression(), !1906)
    #dbg_value(ptr %de_cabac, !1499, !DIExpression(), !1906)
  %37 = load ptr, ptr %arrayidx, align 8, !dbg !1910
    #dbg_value(ptr %37, !1500, !DIExpression(), !1906)
  %mot_ctx.i131 = getelementptr inbounds i8, ptr %37, i64 320, !dbg !1911
  %38 = load ptr, ptr %mot_ctx.i131, align 8, !dbg !1911
    #dbg_value(ptr %38, !1501, !DIExpression(), !1906)
  %mbAvailA.i = getelementptr inbounds i8, ptr %arrayidx, i64 404, !dbg !1912
  %39 = load i32, ptr %mbAvailA.i, align 4, !dbg !1912
  %tobool.not.i132 = icmp eq i32 %39, 0, !dbg !1913
  br i1 %tobool.not.i132, label %cond.end.i136, label %cond.true.i133, !dbg !1913

cond.true.i133:                                   ; preds = %if.then
  %mb_data.i134 = getelementptr inbounds i8, ptr %37, i64 13512, !dbg !1914
  %40 = load ptr, ptr %mb_data.i134, align 8, !dbg !1914
  %mbAddrA.i = getelementptr inbounds i8, ptr %arrayidx, i64 388, !dbg !1915
  %41 = load i32, ptr %mbAddrA.i, align 4, !dbg !1915
  %idxprom.i135 = sext i32 %41 to i64, !dbg !1916
  %mb_field.i = getelementptr inbounds %struct.macroblock, ptr %40, i64 %idxprom.i135, i32 45, !dbg !1917
  %42 = load i32, ptr %mb_field.i, align 8, !dbg !1917
  br label %cond.end.i136, !dbg !1913

cond.end.i136:                                    ; preds = %cond.true.i133, %if.then
  %cond.i137 = phi i32 [ %42, %cond.true.i133 ], [ 0, %if.then ], !dbg !1913
    #dbg_value(i32 %cond.i137, !1502, !DIExpression(), !1906)
  %mbAvailB.i = getelementptr inbounds i8, ptr %arrayidx, i64 408, !dbg !1918
  %43 = load i32, ptr %mbAvailB.i, align 8, !dbg !1918
  %tobool1.not.i = icmp eq i32 %43, 0, !dbg !1919
  br i1 %tobool1.not.i, label %readFieldModeInfo_CABAC.exit, label %cond.true2.i, !dbg !1919

cond.true2.i:                                     ; preds = %cond.end.i136
  %mb_data3.i = getelementptr inbounds i8, ptr %37, i64 13512, !dbg !1920
  %44 = load ptr, ptr %mb_data3.i, align 8, !dbg !1920
  %mbAddrB.i = getelementptr inbounds i8, ptr %arrayidx, i64 392, !dbg !1921
  %45 = load i32, ptr %mbAddrB.i, align 8, !dbg !1921
  %idxprom4.i = sext i32 %45 to i64, !dbg !1922
  %mb_field6.i = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom4.i, i32 45, !dbg !1923
  %46 = load i32, ptr %mb_field6.i, align 8, !dbg !1923
  br label %readFieldModeInfo_CABAC.exit, !dbg !1919

readFieldModeInfo_CABAC.exit:                     ; preds = %cond.end.i136, %cond.true2.i
  %cond9.i = phi i32 [ %46, %cond.true2.i ], [ 0, %cond.end.i136 ], !dbg !1919
    #dbg_value(i32 %cond9.i, !1503, !DIExpression(), !1906)
  %add.i = add nsw i32 %cond9.i, %cond.i137, !dbg !1924
    #dbg_value(i32 %add.i, !1504, !DIExpression(), !1906)
  %mb_aff_contexts.i = getelementptr inbounds i8, ptr %38, i64 348, !dbg !1925
  %idxprom10.i = sext i32 %add.i to i64, !dbg !1926
  %arrayidx11.i = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts.i, i64 0, i64 %idxprom10.i, !dbg !1926
  %call.i138 = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx11.i) #12, !dbg !1927
  store i32 %call.i138, ptr %35, align 4, !dbg !1928
    #dbg_value(i32 %call.i138, !1779, !DIExpression(), !1790)
  %47 = load ptr, ptr %mb_data, align 8, !dbg !1929
  %48 = load i32, ptr %current_mb_nr, align 4, !dbg !1930
  %sub43 = add i32 %48, -1, !dbg !1931
  %idxprom44 = zext i32 %sub43 to i64, !dbg !1932
  %mb_field46 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %idxprom44, i32 45, !dbg !1933
  store i32 %call.i138, ptr %mb_field46, align 8, !dbg !1934
  br label %if.end, !dbg !1935

if.end:                                           ; preds = %readFieldModeInfo_CABAC.exit, %land.end
  %land.ext = phi i32 [ 0, %readFieldModeInfo_CABAC.exit ], [ 1, %land.end ]
  %49 = load i32, ptr %current_mb_nr, align 4, !dbg !1936
  %dec = add i32 %49, -1, !dbg !1936
  store i32 %dec, ptr %current_mb_nr, align 4, !dbg !1936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, ptr noundef nonnull align 8 dereferenceable(32) %call, i64 32, i1 false), !dbg !1937
  %50 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !1938
  store i32 %25, ptr %50, align 4, !dbg !1939
    #dbg_value(i32 0, !1780, !DIExpression(), !1790)
    #dbg_value(i64 0, !1780, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %1, ptr noundef nonnull align 2 dereferenceable(44) %call17, i64 44, i1 false), !dbg !1940
    #dbg_value(i64 1, !1780, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, ptr noundef nonnull align 2 dereferenceable(44) %call17.1, i64 44, i1 false), !dbg !1940
    #dbg_value(i64 2, !1780, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, ptr noundef nonnull align 2 dereferenceable(44) %call17.2, i64 44, i1 false), !dbg !1940
    #dbg_value(i64 3, !1780, !DIExpression(), !1790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, ptr noundef nonnull align 2 dereferenceable(16) %call21, i64 16, i1 false), !dbg !1943
    #dbg_assign(i1 undef, !1391, !DIExpression(), !1785, ptr %left.i140, !DIExpression(), !1783)
    #dbg_value(ptr %arrayidx, !1388, !DIExpression(), !1783)
  %51 = load ptr, ptr %p_Vid4, align 8, !dbg !1944
    #dbg_value(ptr %51, !1389, !DIExpression(), !1783)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i139) #12, !dbg !1945
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i140) #12, !dbg !1945
  %mb_size2.i142 = getelementptr inbounds i8, ptr %51, i64 849124, !dbg !1946
    #dbg_value(ptr %mb_size2.i142, !1392, !DIExpression(), !1783)
  %getNeighbour.i143 = getelementptr inbounds i8, ptr %51, i64 856744, !dbg !1947
  %52 = load ptr, ptr %getNeighbour.i143, align 8, !dbg !1947
  call void %52(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i142, ptr noundef nonnull %left.i140) #12, !dbg !1948
  %53 = load ptr, ptr %getNeighbour.i143, align 8, !dbg !1949
  call void %53(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i142, ptr noundef nonnull %up.i139) #12, !dbg !1950
  %54 = load i32, ptr %up.i139, align 4, !dbg !1951
  %tobool.not.i144 = icmp eq i32 %54, 0, !dbg !1952
  br i1 %tobool.not.i144, label %if.end.i150, label %if.then.i145, !dbg !1953

if.then.i145:                                     ; preds = %if.end
  %55 = load ptr, ptr %arrayidx, align 8, !dbg !1954
  %mb_data.i146 = getelementptr inbounds i8, ptr %55, i64 13512, !dbg !1955
  %56 = load ptr, ptr %mb_data.i146, align 8, !dbg !1955
  %mb_addr.i147 = getelementptr inbounds i8, ptr %up.i139, i64 4, !dbg !1956
  %57 = load i32, ptr %mb_addr.i147, align 4, !dbg !1956
  %idxprom.i148 = sext i32 %57 to i64, !dbg !1957
  %arrayidx4.i149 = getelementptr inbounds %struct.macroblock, ptr %56, i64 %idxprom.i148, !dbg !1957
  br label %if.end.i150, !dbg !1958

if.end.i150:                                      ; preds = %if.then.i145, %if.end
  %arrayidx4.sink.i151 = phi ptr [ %arrayidx4.i149, %if.then.i145 ], [ null, %if.end ], !dbg !1959
  store ptr %arrayidx4.sink.i151, ptr %18, align 8, !dbg !1959
  %58 = load i32, ptr %left.i140, align 4, !dbg !1960
  %tobool7.not.i152 = icmp eq i32 %58, 0, !dbg !1961
  br i1 %tobool7.not.i152, label %CheckAvailabilityOfNeighborsCABAC.exit159, label %if.then8.i153, !dbg !1962

if.then8.i153:                                    ; preds = %if.end.i150
  %59 = load ptr, ptr %arrayidx, align 8, !dbg !1963
  %mb_data10.i154 = getelementptr inbounds i8, ptr %59, i64 13512, !dbg !1964
  %60 = load ptr, ptr %mb_data10.i154, align 8, !dbg !1964
  %mb_addr11.i155 = getelementptr inbounds i8, ptr %left.i140, i64 4, !dbg !1965
  %61 = load i32, ptr %mb_addr11.i155, align 4, !dbg !1965
  %idxprom12.i156 = sext i32 %61 to i64, !dbg !1966
  %arrayidx13.i157 = getelementptr inbounds %struct.macroblock, ptr %60, i64 %idxprom12.i156, !dbg !1966
  br label %CheckAvailabilityOfNeighborsCABAC.exit159, !dbg !1967

CheckAvailabilityOfNeighborsCABAC.exit159:        ; preds = %if.end.i150, %if.then8.i153
  %arrayidx13.sink.i158 = phi ptr [ %arrayidx13.i157, %if.then8.i153 ], [ null, %if.end.i150 ], !dbg !1968
  store ptr %arrayidx13.sink.i158, ptr %23, align 8, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i140) #12, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i139) #12, !dbg !1969
  call void @free(ptr noundef nonnull %call) #12, !dbg !1970
    #dbg_value(i32 0, !1780, !DIExpression(), !1790)
    #dbg_value(i64 0, !1780, !DIExpression(), !1790)
  call void @free(ptr noundef nonnull %call17) #12, !dbg !1971
    #dbg_value(i64 1, !1780, !DIExpression(), !1790)
  call void @free(ptr noundef nonnull %call17.1) #12, !dbg !1971
    #dbg_value(i64 2, !1780, !DIExpression(), !1790)
  call void @free(ptr noundef nonnull %call17.2) #12, !dbg !1971
    #dbg_value(i64 3, !1780, !DIExpression(), !1790)
    #dbg_value(i32 %land.ext, !1778, !DIExpression(), !1790)
  call void @free(ptr noundef nonnull %call21) #12, !dbg !1974
  ret i32 %land.ext, !dbg !1975
}

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !1865 {
entry:
    #dbg_value(ptr %currMB, !1864, !DIExpression(), !1976)
    #dbg_value(ptr %se, !1867, !DIExpression(), !1976)
    #dbg_value(ptr %dep_dp, !1868, !DIExpression(), !1976)
  %0 = load ptr, ptr %currMB, align 8, !dbg !1977
    #dbg_value(ptr %0, !1869, !DIExpression(), !1976)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !1978
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !1978
    #dbg_value(ptr %1, !1870, !DIExpression(), !1976)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !1979
  %2 = load ptr, ptr %mb_left, align 8, !dbg !1979
  %cmp.not = icmp eq ptr %2, null, !dbg !1980
  br i1 %cmp.not, label %cond.end, label %cond.true, !dbg !1981

cond.true:                                        ; preds = %entry
  %skip_flag = getelementptr inbounds i8, ptr %2, i64 374, !dbg !1982
  %3 = load i8, ptr %skip_flag, align 2, !dbg !1982
  %cmp2 = icmp eq i8 %3, 0, !dbg !1983
  %4 = select i1 %cmp2, i64 8, i64 7, !dbg !1984
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 7, %entry ], !dbg !1981
    #dbg_value(i32 poison, !1871, !DIExpression(), !1976)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !1985
  %5 = load ptr, ptr %mb_up, align 8, !dbg !1985
  %cmp4.not = icmp eq ptr %5, null, !dbg !1986
  br i1 %cmp4.not, label %cond.end13, label %cond.true6, !dbg !1987

cond.true6:                                       ; preds = %cond.end
  %skip_flag8 = getelementptr inbounds i8, ptr %5, i64 374, !dbg !1988
  %6 = load i8, ptr %skip_flag8, align 2, !dbg !1988
  %cmp10 = icmp eq i8 %6, 0, !dbg !1989
  %conv11 = zext i1 %cmp10 to i64, !dbg !1989
  br label %cond.end13, !dbg !1987

cond.end13:                                       ; preds = %cond.end, %cond.true6
  %cond14 = phi i64 [ %conv11, %cond.true6 ], [ 0, %cond.end ], !dbg !1987
    #dbg_value(i32 poison, !1872, !DIExpression(), !1976)
  %add15 = add nuw nsw i64 %cond14, %cond, !dbg !1990
    #dbg_value(!DIArgList(i32 poison, i32 poison), !1873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1976)
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 88, !dbg !1991
  %arrayidx16 = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx, i64 0, i64 %add15, !dbg !1991
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx16) #12, !dbg !1992
  %cmp17 = icmp eq i32 %call, 1, !dbg !1993
  %7 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !1994
  %8 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !1994
  br i1 %cmp17, label %if.then22, label %if.end, !dbg !1995

if.end:                                           ; preds = %cond.end13
  store i32 1, ptr %7, align 8, !dbg !1994
  store i32 1, ptr %8, align 4, !dbg !1994
  br label %if.end23, !dbg !1996

if.then22:                                        ; preds = %cond.end13
  store i32 0, ptr %7, align 8, !dbg !1994
  store i32 0, ptr %8, align 4, !dbg !1994
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212, !dbg !1997
  store i32 0, ptr %last_dquant, align 4, !dbg !1998
  br label %if.end23, !dbg !1999

if.end23:                                         ; preds = %if.end, %if.then22
  ret void, !dbg !2000
}

; Function Attrs: nounwind uwtable
define dso_local void @read_MVD_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2001 {
entry:
  %block_a = alloca %struct.pix_pos, align 4, !DIAssignID !2019
    #dbg_assign(i1 undef, !2017, !DIExpression(), !2019, ptr %block_a, !DIExpression(), !2020)
  %block_b = alloca %struct.pix_pos, align 4, !DIAssignID !2021
    #dbg_assign(i1 undef, !2018, !DIExpression(), !2021, ptr %block_b, !DIExpression(), !2020)
    #dbg_value(ptr %currMB, !2003, !DIExpression(), !2020)
    #dbg_value(ptr %se, !2004, !DIExpression(), !2020)
    #dbg_value(ptr %dep_dp, !2005, !DIExpression(), !2020)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2022
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !2022
    #dbg_value(ptr %0, !2006, !DIExpression(), !2020)
  %1 = load ptr, ptr %currMB, align 8, !dbg !2023
    #dbg_value(ptr %1, !2007, !DIExpression(), !2020)
  %mot_ctx = getelementptr inbounds i8, ptr %1, i64 320, !dbg !2024
  %2 = load ptr, ptr %mot_ctx, align 8, !dbg !2024
    #dbg_value(ptr %2, !2008, !DIExpression(), !2020)
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !2025
  %3 = load i32, ptr %subblock_x, align 4, !dbg !2025
    #dbg_value(i32 %3, !2009, !DIExpression(), !2020)
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !2026
  %4 = load i32, ptr %subblock_y, align 8, !dbg !2026
    #dbg_value(i32 %4, !2010, !DIExpression(), !2020)
    #dbg_value(i32 0, !2011, !DIExpression(), !2020)
    #dbg_value(i32 0, !2012, !DIExpression(), !2020)
  %value2 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !2027
  %5 = load i32, ptr %value2, align 8, !dbg !2027
  %and = and i32 %5, 1, !dbg !2028
    #dbg_value(i32 %and, !2015, !DIExpression(), !2020)
  %shr = ashr i32 %5, 1, !dbg !2029
    #dbg_value(i32 %shr, !2016, !DIExpression(), !2020)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12, !dbg !2030
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12, !dbg !2030
  %sub = add nsw i32 %3, -1, !dbg !2031
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124, !dbg !2032
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %4, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !2033
  %6 = load i32, ptr %block_a, align 4, !dbg !2034
  %tobool.not = icmp eq i32 %6, 0, !dbg !2036
  br i1 %tobool.not, label %if.end40, label %if.then, !dbg !2037

if.then:                                          ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %1, i64 13512, !dbg !2038
  %7 = load ptr, ptr %mb_data, align 8, !dbg !2038
  %mb_addr = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !2040
  %8 = load i32, ptr %mb_addr, align 4, !dbg !2040
  %idxprom = sext i32 %8 to i64, !dbg !2041
  %idxprom4 = zext nneg i32 %and to i64, !dbg !2041
  %y = getelementptr inbounds i8, ptr %block_a, i64 10, !dbg !2042
  %9 = load i16, ptr %y, align 2, !dbg !2042
  %idxprom6 = sext i16 %9 to i64, !dbg !2041
  %x = getelementptr inbounds i8, ptr %block_a, i64 8, !dbg !2043
  %10 = load i16, ptr %x, align 4, !dbg !2043
  %idxprom8 = sext i16 %10 to i64, !dbg !2041
  %idxprom10 = sext i32 %shr to i64, !dbg !2041
  %arrayidx11 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 31, i64 %idxprom4, i64 %idxprom6, i64 %idxprom8, i64 %idxprom10, !dbg !2041
  %11 = load i16, ptr %arrayidx11, align 2, !dbg !2041
    #dbg_value(i16 %11, !209, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2044)
    #dbg_value(i16 %11, !210, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2044)
  %12 = call i16 @llvm.abs.i16(i16 %11, i1 false), !dbg !2046
  %sub.i = zext i16 %12 to i32, !dbg !2046
    #dbg_value(i32 %sub.i, !2011, !DIExpression(), !2020)
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %1, i64 128, !dbg !2047
  %13 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !2047
  %tobool12 = icmp ne i32 %13, 0, !dbg !2049
  %cmp = icmp eq i32 %shr, 1
  %or.cond = select i1 %tobool12, i1 %cmp, i1 false, !dbg !2050
  br i1 %or.cond, label %if.then14, label %if.end40, !dbg !2050

if.then14:                                        ; preds = %if.then
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !2051
  %14 = load i32, ptr %mb_field, align 8, !dbg !2051
  switch i32 %14, label %if.end40 [
    i32 0, label %land.lhs.true17
    i32 1, label %land.lhs.true29
  ], !dbg !2054

land.lhs.true17:                                  ; preds = %if.then14
  %mb_field22 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 45, !dbg !2055
  %15 = load i32, ptr %mb_field22, align 8, !dbg !2055
  %cmp23 = icmp eq i32 %15, 1, !dbg !2056
  %mul = zext i1 %cmp23 to i32, !dbg !2057
  %spec.select188 = shl nuw nsw i32 %sub.i, %mul, !dbg !2057
  br label %if.end40, !dbg !2057

land.lhs.true29:                                  ; preds = %if.then14
  %mb_field34 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 45, !dbg !2058
  %16 = load i32, ptr %mb_field34, align 8, !dbg !2058
  %cmp35 = icmp eq i32 %16, 0, !dbg !2060
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !2061

if.then37:                                        ; preds = %land.lhs.true29
  %div186187190 = lshr i16 %12, 1, !dbg !2062
  %div186.zext = zext nneg i16 %div186187190 to i32, !dbg !2062
    #dbg_value(i32 %div186.zext, !2011, !DIExpression(), !2020)
  br label %if.end40, !dbg !2063

if.end40:                                         ; preds = %land.lhs.true17, %if.then14, %if.then, %land.lhs.true29, %if.then37, %entry
  %a.0 = phi i32 [ %div186.zext, %if.then37 ], [ %sub.i, %land.lhs.true29 ], [ %sub.i, %if.then ], [ 0, %entry ], [ %spec.select188, %land.lhs.true17 ], [ %sub.i, %if.then14 ], !dbg !2020
    #dbg_value(i32 %a.0, !2011, !DIExpression(), !2020)
  %sub41 = add nsw i32 %4, -1, !dbg !2064
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %3, i32 noundef %sub41, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12, !dbg !2065
  %17 = load i32, ptr %block_b, align 4, !dbg !2066
  %tobool46.not = icmp eq i32 %17, 0, !dbg !2068
  br i1 %tobool46.not, label %if.end101, label %if.then47, !dbg !2069

if.then47:                                        ; preds = %if.end40
  %mb_data48 = getelementptr inbounds i8, ptr %1, i64 13512, !dbg !2070
  %18 = load ptr, ptr %mb_data48, align 8, !dbg !2070
  %mb_addr49 = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !2072
  %19 = load i32, ptr %mb_addr49, align 4, !dbg !2072
  %idxprom50 = sext i32 %19 to i64, !dbg !2073
  %idxprom53 = zext nneg i32 %and to i64, !dbg !2073
  %y55 = getelementptr inbounds i8, ptr %block_b, i64 10, !dbg !2074
  %20 = load i16, ptr %y55, align 2, !dbg !2074
  %idxprom56 = sext i16 %20 to i64, !dbg !2073
  %x58 = getelementptr inbounds i8, ptr %block_b, i64 8, !dbg !2075
  %21 = load i16, ptr %x58, align 4, !dbg !2075
  %idxprom59 = sext i16 %21 to i64, !dbg !2073
  %idxprom61 = sext i32 %shr to i64, !dbg !2073
  %arrayidx62 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 31, i64 %idxprom53, i64 %idxprom56, i64 %idxprom59, i64 %idxprom61, !dbg !2073
  %22 = load i16, ptr %arrayidx62, align 2, !dbg !2073
    #dbg_value(i16 %22, !209, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2076)
    #dbg_value(i16 %22, !210, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2076)
  %23 = call i16 @llvm.abs.i16(i16 %22, i1 false), !dbg !2078
  %sub.i181 = zext i16 %23 to i32, !dbg !2078
    #dbg_value(i32 %sub.i181, !2012, !DIExpression(), !2020)
  %mb_aff_frame_flag65 = getelementptr inbounds i8, ptr %1, i64 128, !dbg !2079
  %24 = load i32, ptr %mb_aff_frame_flag65, align 8, !dbg !2079
  %tobool66 = icmp ne i32 %24, 0, !dbg !2081
  %cmp68 = icmp eq i32 %shr, 1
  %or.cond136 = select i1 %tobool66, i1 %cmp68, i1 false, !dbg !2082
  br i1 %or.cond136, label %if.then70, label %if.end101, !dbg !2082

if.then70:                                        ; preds = %if.then47
  %mb_field71 = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !2083
  %25 = load i32, ptr %mb_field71, align 8, !dbg !2083
  switch i32 %25, label %if.end101 [
    i32 0, label %land.lhs.true74
    i32 1, label %land.lhs.true88
  ], !dbg !2086

land.lhs.true74:                                  ; preds = %if.then70
  %mb_field79 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 45, !dbg !2087
  %26 = load i32, ptr %mb_field79, align 8, !dbg !2087
  %cmp80 = icmp eq i32 %26, 1, !dbg !2088
  %mul83 = zext i1 %cmp80 to i32, !dbg !2089
  %spec.select189 = shl nuw nsw i32 %sub.i181, %mul83, !dbg !2089
  br label %if.end101, !dbg !2089

land.lhs.true88:                                  ; preds = %if.then70
  %mb_field93 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 45, !dbg !2090
  %27 = load i32, ptr %mb_field93, align 8, !dbg !2090
  %cmp94 = icmp eq i32 %27, 0, !dbg !2092
  br i1 %cmp94, label %if.then96, label %if.end101, !dbg !2093

if.then96:                                        ; preds = %land.lhs.true88
  %div97184185191 = lshr i16 %23, 1, !dbg !2094
  %div97184.zext = zext nneg i16 %div97184185191 to i32, !dbg !2094
    #dbg_value(i32 %div97184.zext, !2012, !DIExpression(), !2020)
  br label %if.end101, !dbg !2095

if.end101:                                        ; preds = %land.lhs.true74, %if.then70, %if.then47, %land.lhs.true88, %if.then96, %if.end40
  %b.0 = phi i32 [ %div97184.zext, %if.then96 ], [ %sub.i181, %land.lhs.true88 ], [ %sub.i181, %if.then47 ], [ 0, %if.end40 ], [ %spec.select189, %land.lhs.true74 ], [ %sub.i181, %if.then70 ], !dbg !2020
    #dbg_value(i32 %b.0, !2012, !DIExpression(), !2020)
  %add = add nuw nsw i32 %b.0, %a.0, !dbg !2096
    #dbg_value(i32 %add, !2011, !DIExpression(), !2020)
  %cmp102 = icmp ult i32 %add, 3, !dbg !2097
  br i1 %cmp102, label %if.then104, label %if.else106, !dbg !2099

if.then104:                                       ; preds = %if.end101
  %mul105 = mul nsw i32 %shr, 5, !dbg !2100
    #dbg_value(i32 %mul105, !2013, !DIExpression(), !2020)
  br label %if.end116, !dbg !2101

if.else106:                                       ; preds = %if.end101
  %cmp107 = icmp ugt i32 %add, 32, !dbg !2102
  %mul110 = mul nsw i32 %shr, 5, !dbg !2104
  br i1 %cmp107, label %if.then109, label %if.else112, !dbg !2105

if.then109:                                       ; preds = %if.else106
  %add111 = add nsw i32 %mul110, 3, !dbg !2106
    #dbg_value(i32 %add111, !2013, !DIExpression(), !2020)
  br label %if.end116, !dbg !2107

if.else112:                                       ; preds = %if.else106
  %add114 = add nsw i32 %mul110, 2, !dbg !2108
    #dbg_value(i32 %add114, !2013, !DIExpression(), !2020)
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %if.else112, %if.then104
  %act_ctx.0 = phi i32 [ %mul105, %if.then104 ], [ %add111, %if.then109 ], [ %add114, %if.else112 ], !dbg !2109
    #dbg_value(i32 %act_ctx.0, !2013, !DIExpression(), !2020)
  %context = getelementptr inbounds i8, ptr %se, i64 24, !dbg !2110
  store i32 %act_ctx.0, ptr %context, align 8, !dbg !2111
  %mv_res_contexts = getelementptr inbounds i8, ptr %2, i64 204, !dbg !2112
  %idxprom118 = sext i32 %act_ctx.0 to i64, !dbg !2113
  %arrayidx119 = getelementptr inbounds [10 x %struct.BiContextType], ptr %mv_res_contexts, i64 0, i64 %idxprom118, !dbg !2113
  %call120 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx119) #12, !dbg !2114
    #dbg_value(i32 %call120, !2014, !DIExpression(), !2020)
  %cmp121.not = icmp eq i32 %call120, 0, !dbg !2115
  br i1 %cmp121.not, label %if.end135, label %if.then123, !dbg !2117

if.then123:                                       ; preds = %if.end116
  %mul124 = mul nsw i32 %shr, 5, !dbg !2118
    #dbg_value(i32 %mul124, !2013, !DIExpression(), !2020)
  %arrayidx126 = getelementptr inbounds i8, ptr %2, i64 244, !dbg !2120
  %idx.ext = sext i32 %mul124 to i64, !dbg !2121
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %arrayidx126, i64 %idx.ext, !dbg !2121
    #dbg_value(ptr %dep_dp, !2122, !DIExpression(), !2136)
    #dbg_value(ptr %add.ptr, !2127, !DIExpression(), !2136)
    #dbg_value(i32 3, !2128, !DIExpression(), !2136)
  %call.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2138
    #dbg_value(i32 %call.i, !2129, !DIExpression(), !2136)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !2139
  br i1 %cmp.i, label %unary_exp_golomb_mv_decode.exit, label %if.else.i, !dbg !2140

if.else.i:                                        ; preds = %if.then123
    #dbg_value(i32 8, !2130, !DIExpression(), !2141)
    #dbg_value(i32 1, !2134, !DIExpression(), !2141)
    #dbg_value(i32 1, !2135, !DIExpression(), !2141)
    #dbg_value(i32 0, !2129, !DIExpression(), !2136)
  %incdec.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !2142
    #dbg_value(ptr %incdec.ptr.i, !2127, !DIExpression(), !2136)
  %call1.peel.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr.i) #12, !dbg !2143
    #dbg_value(i32 %call1.peel.i, !2133, !DIExpression(), !2141)
    #dbg_value(i32 2, !2135, !DIExpression(), !2141)
    #dbg_value(ptr %incdec.ptr.i, !2127, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2136)
    #dbg_value(i32 1, !2129, !DIExpression(), !2136)
    #dbg_value(i32 2, !2134, !DIExpression(), !2141)
  %cmp11.peel.not.i = icmp eq i32 %call1.peel.i, 0, !dbg !2145
  br i1 %cmp11.peel.not.i, label %unary_exp_golomb_mv_decode.exit, label %do.body.peel.next.i, !dbg !2146

do.body.peel.next.i:                              ; preds = %if.else.i
  %spec.select.peel.i = getelementptr inbounds i8, ptr %add.ptr, i64 8, !dbg !2147
    #dbg_value(i32 2, !2135, !DIExpression(), !2141)
    #dbg_value(i32 2, !2134, !DIExpression(), !2141)
    #dbg_value(ptr %spec.select.peel.i, !2127, !DIExpression(), !2136)
    #dbg_value(i32 1, !2129, !DIExpression(), !2136)
  %call1.peel32.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %spec.select.peel.i) #12, !dbg !2143
    #dbg_value(i32 %call1.peel32.i, !2133, !DIExpression(), !2141)
    #dbg_value(i32 3, !2135, !DIExpression(), !2141)
  %ctx.addr.2.peel39.i = getelementptr inbounds i8, ptr %add.ptr, i64 12, !dbg !2148
    #dbg_value(ptr %ctx.addr.2.peel39.i, !2127, !DIExpression(), !2136)
    #dbg_value(i32 2, !2129, !DIExpression(), !2136)
    #dbg_value(i32 3, !2134, !DIExpression(), !2141)
  %cmp11.peel41.not.i = icmp eq i32 %call1.peel32.i, 0, !dbg !2145
  br i1 %cmp11.peel41.not.i, label %unary_exp_golomb_mv_decode.exit, label %do.body.i, !dbg !2146

do.body.i:                                        ; preds = %do.body.peel.next.i, %do.body.i
  %symbol.0.i = phi i32 [ %inc9.i, %do.body.i ], [ 2, %do.body.peel.next.i ], !dbg !2141
  %k.0.i = phi i32 [ %inc10.i, %do.body.i ], [ 3, %do.body.peel.next.i ], !dbg !2141
    #dbg_value(i32 %k.0.i, !2135, !DIExpression(), !2141)
    #dbg_value(i32 %k.0.i, !2134, !DIExpression(), !2141)
    #dbg_value(ptr %ctx.addr.2.peel39.i, !2127, !DIExpression(), !2136)
    #dbg_value(i32 %symbol.0.i, !2129, !DIExpression(), !2136)
  %call1.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %ctx.addr.2.peel39.i) #12, !dbg !2143
    #dbg_value(i32 %call1.i, !2133, !DIExpression(), !2141)
  %inc10.i = add nuw nsw i32 %k.0.i, 1, !dbg !2149
    #dbg_value(i32 %inc10.i, !2135, !DIExpression(), !2141)
  %inc9.i = add nuw nsw i32 %symbol.0.i, 1, !dbg !2150
    #dbg_value(i32 %inc9.i, !2129, !DIExpression(), !2136)
    #dbg_value(i32 %inc10.i, !2134, !DIExpression(), !2141)
  %cmp11.i = icmp ne i32 %call1.i, 0, !dbg !2145
  %cmp12.i = icmp ne i32 %inc10.i, 8, !dbg !2151
  %28 = select i1 %cmp11.i, i1 %cmp12.i, i1 false, !dbg !2151
  br i1 %28, label %do.body.i, label %do.end.i, !dbg !2146, !llvm.loop !2152

do.end.i:                                         ; preds = %do.body.i
  %29 = add nuw i32 %symbol.0.i, 2, !dbg !2156
  br i1 %cmp11.i, label %do.body.i.i, label %unary_exp_golomb_mv_decode.exit, !dbg !2168

do.body.i.i:                                      ; preds = %do.end.i, %do.body.i.i
  %k.addr.0.i.i = phi i32 [ %k.addr.1.i.i, %do.body.i.i ], [ 3, %do.end.i ]
  %symbol.0.i.i = phi i32 [ %symbol.1.i.i, %do.body.i.i ], [ 0, %do.end.i ], !dbg !2169
    #dbg_value(i32 %symbol.0.i.i, !2164, !DIExpression(), !2169)
    #dbg_value(i32 %k.addr.0.i.i, !2162, !DIExpression(), !2169)
  %call.i.i = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !2170
    #dbg_value(i32 %call.i.i, !2163, !DIExpression(), !2169)
  %cmp.i.i = icmp eq i32 %call.i.i, 1, !dbg !2172
  %shl.i.i = shl nuw i32 1, %k.addr.0.i.i, !dbg !2174
  %inc.i.i = zext i1 %cmp.i.i to i32, !dbg !2174
  %k.addr.1.i.i = add nuw nsw i32 %k.addr.0.i.i, %inc.i.i, !dbg !2174
  %add.i.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 0, !dbg !2174
  %symbol.1.i.i = add nsw i32 %add.i.i, %symbol.0.i.i, !dbg !2174
    #dbg_value(i32 %symbol.1.i.i, !2164, !DIExpression(), !2169)
    #dbg_value(i32 %k.addr.1.i.i, !2162, !DIExpression(), !2169)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, 0, !dbg !2175
  br i1 %cmp1.not.i.i, label %while.body.i.i, label %do.body.i.i, !dbg !2176, !llvm.loop !2177

while.body.i.i:                                   ; preds = %do.body.i.i, %while.body.i.i
  %binary_symbol.017.i.i = phi i32 [ %binary_symbol.1.i.i, %while.body.i.i ], [ 0, %do.body.i.i ]
  %k.addr.216.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %k.addr.1.i.i, %do.body.i.i ]
    #dbg_value(i32 %binary_symbol.017.i.i, !2165, !DIExpression(), !2169)
    #dbg_value(i32 %k.addr.216.i.i, !2162, !DIExpression(), !2169)
  %dec.i.i = add nsw i32 %k.addr.216.i.i, -1, !dbg !2180
    #dbg_value(i32 %dec.i.i, !2162, !DIExpression(), !2169)
  %call2.i.i = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !2181
  %cmp3.i.i = icmp eq i32 %call2.i.i, 1, !dbg !2183
  %shl5.i.i = shl nuw i32 1, %dec.i.i, !dbg !2184
  %or.i.i = select i1 %cmp3.i.i, i32 %shl5.i.i, i32 0, !dbg !2184
  %binary_symbol.1.i.i = or i32 %or.i.i, %binary_symbol.017.i.i, !dbg !2184
    #dbg_value(i32 %binary_symbol.1.i.i, !2165, !DIExpression(), !2169)
    #dbg_value(i32 %dec.i.i, !2162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !2169)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0, !dbg !2185
  br i1 %tobool.not.i.i, label %exp_golomb_decode_eq_prob.exit.i, label %while.body.i.i, !dbg !2185, !llvm.loop !2186

exp_golomb_decode_eq_prob.exit.i:                 ; preds = %while.body.i.i
  %add.i = add i32 %29, %symbol.1.i.i, !dbg !2188
  %add16.i = add i32 %add.i, %binary_symbol.1.i.i, !dbg !2189
    #dbg_value(i32 %add16.i, !2129, !DIExpression(), !2136)
  br label %unary_exp_golomb_mv_decode.exit, !dbg !2190

unary_exp_golomb_mv_decode.exit:                  ; preds = %if.then123, %if.else.i, %do.body.peel.next.i, %do.end.i, %exp_golomb_decode_eq_prob.exit.i
  %retval.0.i = phi i32 [ 0, %if.then123 ], [ %add16.i, %exp_golomb_decode_eq_prob.exit.i ], [ %inc9.i, %do.end.i ], [ 2, %do.body.peel.next.i ], [ 1, %if.else.i ], !dbg !2191
  %add129 = add i32 %retval.0.i, 1, !dbg !2192
    #dbg_value(i32 %add129, !2014, !DIExpression(), !2020)
  %call130 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !2193
  %tobool131.not = icmp eq i32 %call130, 0, !dbg !2193
  %sub133 = xor i32 %retval.0.i, -1
  %spec.select = select i1 %tobool131.not, i32 %add129, i32 %sub133, !dbg !2195
  br label %if.end135, !dbg !2195

if.end135:                                        ; preds = %unary_exp_golomb_mv_decode.exit, %if.end116
  %act_sym.0 = phi i32 [ 0, %if.end116 ], [ %spec.select, %unary_exp_golomb_mv_decode.exit ], !dbg !2020
    #dbg_value(i32 %act_sym.0, !2014, !DIExpression(), !2020)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2196
  store i32 %act_sym.0, ptr %value1, align 4, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12, !dbg !2198
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12, !dbg !2198
  ret void, !dbg !2198
}

declare !dbg !2199 void @get4x4NeighbourBase(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2200 i32 @biari_decode_symbol_eq_prob(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2203 {
entry:
    #dbg_value(ptr %currMB, !2205, !DIExpression(), !2212)
    #dbg_value(ptr %se, !2206, !DIExpression(), !2212)
    #dbg_value(ptr %dep_dp, !2207, !DIExpression(), !2212)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2213
    #dbg_value(ptr %0, !2208, !DIExpression(), !2212)
    #dbg_value(i32 0, !2209, !DIExpression(), !2212)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2214
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2214
    #dbg_value(ptr %1, !2210, !DIExpression(), !2212)
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 136, !dbg !2215
    #dbg_value(ptr %arrayidx2, !2211, !DIExpression(), !2212)
    #dbg_value(ptr %arrayidx2, !2211, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2212)
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx2) #12, !dbg !2216
  %tobool.not = icmp eq i32 %call, 0, !dbg !2216
  br i1 %tobool.not, label %if.else, label %if.end14, !dbg !2218

if.else:                                          ; preds = %entry
    #dbg_value(ptr %1, !2211, !DIExpression(DW_OP_plus_uconst, 140, DW_OP_stack_value), !2212)
  %incdec.ptr3 = getelementptr inbounds i8, ptr %1, i64 144, !dbg !2219
    #dbg_value(ptr %incdec.ptr3, !2211, !DIExpression(), !2212)
  %call4 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr3) #12, !dbg !2222
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !2222
  br i1 %tobool5.not, label %if.end14, label %if.then6, !dbg !2223

if.then6:                                         ; preds = %if.else
  %incdec.ptr7 = getelementptr inbounds i8, ptr %1, i64 148, !dbg !2224
    #dbg_value(ptr %incdec.ptr7, !2211, !DIExpression(), !2212)
  %call8 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr7) #12, !dbg !2227
  %tobool9.not = icmp eq i32 %call8, 0, !dbg !2227
  %. = select i1 %tobool9.not, i32 3, i32 2
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6, %entry
  %act_sym.0 = phi i32 [ 0, %entry ], [ %., %if.then6 ], [ 1, %if.else ], !dbg !2228
    #dbg_value(i32 %act_sym.0, !2209, !DIExpression(), !2212)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2229
  store i32 %act_sym.0, ptr %value1, align 4, !dbg !2230
  ret void, !dbg !2231
}

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2232 {
entry:
    #dbg_value(ptr %currMB, !2234, !DIExpression(), !2241)
    #dbg_value(ptr %se, !2235, !DIExpression(), !2241)
    #dbg_value(ptr %dep_dp, !2236, !DIExpression(), !2241)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2242
    #dbg_value(ptr %0, !2237, !DIExpression(), !2241)
    #dbg_value(i32 0, !2238, !DIExpression(), !2241)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2243
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2243
    #dbg_value(ptr %1, !2239, !DIExpression(), !2241)
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 168, !dbg !2244
    #dbg_value(ptr %arrayidx, !2240, !DIExpression(), !2241)
    #dbg_value(ptr %arrayidx, !2240, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2241)
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx) #12, !dbg !2245
  %tobool.not = icmp eq i32 %call, 0, !dbg !2245
  br i1 %tobool.not, label %if.end48, label %if.then, !dbg !2247

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 172, !dbg !2248
    #dbg_value(ptr %incdec.ptr, !2240, !DIExpression(), !2241)
    #dbg_value(ptr %1, !2240, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !2241)
  %call3 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr) #12, !dbg !2249
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !2249
  br i1 %tobool4.not, label %if.else38, label %if.then5, !dbg !2252

if.then5:                                         ; preds = %if.then
  %incdec.ptr2 = getelementptr inbounds i8, ptr %1, i64 176, !dbg !2253
    #dbg_value(ptr %incdec.ptr2, !2240, !DIExpression(), !2241)
  %incdec.ptr6 = getelementptr inbounds i8, ptr %1, i64 180, !dbg !2254
    #dbg_value(ptr %incdec.ptr6, !2240, !DIExpression(), !2241)
  %call7 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr2) #12, !dbg !2257
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !2257
  %call27 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12, !dbg !2258
  %tobool28.not = icmp eq i32 %call27, 0, !dbg !2258
  br i1 %tobool8.not, label %if.else26, label %if.then9, !dbg !2259

if.then9:                                         ; preds = %if.then5
  %call16 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12, !dbg !2260
  %tobool17.not = icmp eq i32 %call16, 0, !dbg !2260
  br i1 %tobool28.not, label %if.else, label %if.then12, !dbg !2263

if.then12:                                        ; preds = %if.then9
    #dbg_value(i32 10, !2238, !DIExpression(), !2241)
  %spec.select = select i1 %tobool17.not, i32 10, i32 11, !dbg !2264
  br label %if.end45, !dbg !2264

if.else:                                          ; preds = %if.then9
    #dbg_value(i32 6, !2238, !DIExpression(), !2241)
  %spec.select73 = select i1 %tobool17.not, i32 6, i32 8, !dbg !2266
    #dbg_value(i32 %spec.select73, !2238, !DIExpression(), !2241)
  %call20 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12, !dbg !2268
  %tobool21.not = icmp ne i32 %call20, 0, !dbg !2268
  %inc23 = zext i1 %tobool21.not to i32, !dbg !2270
  %spec.select75 = or disjoint i32 %spec.select73, %inc23, !dbg !2270
  br label %if.end45, !dbg !2270

if.else26:                                        ; preds = %if.then5
    #dbg_value(i32 2, !2238, !DIExpression(), !2241)
  %spec.select74 = select i1 %tobool28.not, i32 2, i32 4, !dbg !2271
    #dbg_value(i32 %spec.select74, !2238, !DIExpression(), !2241)
  %call32 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12, !dbg !2273
  %tobool33.not = icmp ne i32 %call32, 0, !dbg !2273
  %add35 = zext i1 %tobool33.not to i32, !dbg !2275
  %spec.select76 = or disjoint i32 %spec.select74, %add35, !dbg !2275
  br label %if.end45, !dbg !2275

if.else38:                                        ; preds = %if.then
  %incdec.ptr39 = getelementptr inbounds i8, ptr %1, i64 180, !dbg !2276
    #dbg_value(ptr %incdec.ptr39, !2240, !DIExpression(), !2241)
  %call40 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr39) #12, !dbg !2279
  %tobool41.not = icmp ne i32 %call40, 0, !dbg !2279
  %. = zext i1 %tobool41.not to i32
  br label %if.end45

if.end45:                                         ; preds = %if.else26, %if.else, %if.then12, %if.else38
  %act_sym.2 = phi i32 [ %spec.select, %if.then12 ], [ %., %if.else38 ], [ %spec.select75, %if.else ], [ %spec.select76, %if.else26 ], !dbg !2280
    #dbg_value(i32 %act_sym.2, !2238, !DIExpression(), !2241)
  %inc46 = add nuw nsw i32 %act_sym.2, 1, !dbg !2281
    #dbg_value(i32 %inc46, !2238, !DIExpression(), !2241)
  br label %if.end48, !dbg !2282

if.end48:                                         ; preds = %entry, %if.end45
  %act_sym.3 = phi i32 [ %inc46, %if.end45 ], [ 0, %entry ], !dbg !2283
    #dbg_value(i32 %act_sym.3, !2238, !DIExpression(), !2241)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2284
  store i32 %act_sym.3, ptr %value1, align 4, !dbg !2285
  ret void, !dbg !2286
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_transform_size_flag_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2287 {
entry:
    #dbg_value(ptr %currMB, !2289, !DIExpression(), !2298)
    #dbg_value(ptr %se, !2290, !DIExpression(), !2298)
    #dbg_value(ptr %dep_dp, !2291, !DIExpression(), !2298)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2299
    #dbg_value(ptr %0, !2292, !DIExpression(), !2298)
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328, !dbg !2300
  %1 = load ptr, ptr %tex_ctx, align 8, !dbg !2300
    #dbg_value(ptr %1, !2293, !DIExpression(), !2298)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !2301
  %2 = load ptr, ptr %mb_up, align 8, !dbg !2301
  %cmp = icmp eq ptr %2, null, !dbg !2302
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !2303

cond.false:                                       ; preds = %entry
  %luma_transform_size_8x8_flag = getelementptr inbounds i8, ptr %2, i64 420, !dbg !2304
  %3 = load i32, ptr %luma_transform_size_8x8_flag, align 4, !dbg !2304
  br label %cond.end, !dbg !2303

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry ], !dbg !2303
    #dbg_value(i32 %cond, !2294, !DIExpression(), !2298)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !2305
  %4 = load ptr, ptr %mb_left, align 8, !dbg !2305
  %cmp2 = icmp eq ptr %4, null, !dbg !2306
  br i1 %cmp2, label %cond.end7, label %cond.false4, !dbg !2307

cond.false4:                                      ; preds = %cond.end
  %luma_transform_size_8x8_flag6 = getelementptr inbounds i8, ptr %4, i64 420, !dbg !2308
  %5 = load i32, ptr %luma_transform_size_8x8_flag6, align 4, !dbg !2308
  br label %cond.end7, !dbg !2307

cond.end7:                                        ; preds = %cond.end, %cond.false4
  %cond8 = phi i32 [ %5, %cond.false4 ], [ 0, %cond.end ], !dbg !2307
    #dbg_value(i32 %cond8, !2295, !DIExpression(), !2298)
  %add = add nsw i32 %cond8, %cond, !dbg !2309
    #dbg_value(i32 %add, !2296, !DIExpression(), !2298)
  %idx.ext = sext i32 %add to i64, !dbg !2310
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext, !dbg !2310
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr) #12, !dbg !2311
    #dbg_value(i32 %call, !2297, !DIExpression(), !2298)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2312
  store i32 %call, ptr %value1, align 4, !dbg !2313
  ret void, !dbg !2314
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_i_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2315 {
entry:
    #dbg_value(ptr %currMB, !2317, !DIExpression(), !2328)
    #dbg_value(ptr %se, !2318, !DIExpression(), !2328)
    #dbg_value(ptr %dep_dp, !2319, !DIExpression(), !2328)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2329
    #dbg_value(ptr %0, !2320, !DIExpression(), !2328)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2330
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2330
    #dbg_value(ptr %1, !2321, !DIExpression(), !2328)
    #dbg_value(i32 0, !2322, !DIExpression(), !2328)
    #dbg_value(i32 0, !2323, !DIExpression(), !2328)
    #dbg_value(i32 0, !2327, !DIExpression(), !2328)
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164, !dbg !2331
  %2 = load i32, ptr %slice_type, align 4, !dbg !2331
  switch i32 %2, label %if.end209 [
    i32 2, label %if.then
    i32 4, label %if.then86
  ], !dbg !2333

if.then:                                          ; preds = %entry
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !2334
  %3 = load ptr, ptr %mb_up, align 8, !dbg !2334
  %cmp1.not = icmp eq ptr %3, null, !dbg !2337
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !2338

if.then2:                                         ; preds = %if.then
  %mb_type = getelementptr inbounds i8, ptr %3, i64 152, !dbg !2339
  %4 = load i16, ptr %mb_type, align 8, !dbg !2339
  %5 = and i16 %4, -5, !dbg !2340
  %narrow = icmp ne i16 %5, 9, !dbg !2340
  %cond = zext i1 %narrow to i32, !dbg !2340
    #dbg_value(i32 %cond, !2323, !DIExpression(), !2328)
  br label %if.end, !dbg !2341

if.end:                                           ; preds = %if.then2, %if.then
  %b.0 = phi i32 [ %cond, %if.then2 ], [ 0, %if.then ], !dbg !2328
    #dbg_value(i32 %b.0, !2323, !DIExpression(), !2328)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !2342
  %6 = load ptr, ptr %mb_left, align 8, !dbg !2342
  %cmp11.not = icmp eq ptr %6, null, !dbg !2344
  br i1 %cmp11.not, label %if.end27, label %if.then13, !dbg !2345

if.then13:                                        ; preds = %if.end
  %mb_type15 = getelementptr inbounds i8, ptr %6, i64 152, !dbg !2346
  %7 = load i16, ptr %mb_type15, align 8, !dbg !2346
  %8 = and i16 %7, -5, !dbg !2347
  %narrow307 = icmp ne i16 %8, 9, !dbg !2347
  %cond26 = zext i1 %narrow307 to i32, !dbg !2347
    #dbg_value(i32 %cond26, !2322, !DIExpression(), !2328)
  br label %if.end27, !dbg !2348

if.end27:                                         ; preds = %if.then13, %if.end
  %a.0 = phi i32 [ %cond26, %if.then13 ], [ 0, %if.end ], !dbg !2328
    #dbg_value(i32 %a.0, !2322, !DIExpression(), !2328)
  %add = add nuw nsw i32 %a.0, %b.0, !dbg !2349
    #dbg_value(i32 %add, !2324, !DIExpression(), !2328)
  %idx.ext = zext nneg i32 %add to i64, !dbg !2350
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext, !dbg !2350
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr) #12, !dbg !2351
    #dbg_value(i32 %call, !2325, !DIExpression(), !2328)
  %context = getelementptr inbounds i8, ptr %se, i64 24, !dbg !2352
  store i32 %add, ptr %context, align 8, !dbg !2353
  %cmp28 = icmp eq i32 %call, 0, !dbg !2354
  br i1 %cmp28, label %if.end209, label %if.else, !dbg !2356

if.else:                                          ; preds = %if.end27
  %call31 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12, !dbg !2357
    #dbg_value(i32 %call31, !2326, !DIExpression(), !2328)
  %cmp32 = icmp eq i32 %call31, 1, !dbg !2359
  br i1 %cmp32, label %if.end209, label %if.else35, !dbg !2361

if.else35:                                        ; preds = %if.else
    #dbg_value(i32 1, !2325, !DIExpression(), !2328)
    #dbg_value(i32 4, !2324, !DIExpression(), !2328)
  %add.ptr40 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !2362
  %call41 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr40) #12, !dbg !2364
    #dbg_value(i32 %call41, !2326, !DIExpression(), !2328)
  %mul = mul nsw i32 %call41, 12, !dbg !2365
  %add42 = or disjoint i32 %mul, 1, !dbg !2366
    #dbg_value(i32 %add42, !2325, !DIExpression(), !2328)
    #dbg_value(i32 5, !2324, !DIExpression(), !2328)
  %add.ptr47 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2367
  %call48 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr47) #12, !dbg !2368
    #dbg_value(i32 %call48, !2326, !DIExpression(), !2328)
  %cmp49.not = icmp eq i32 %call48, 0, !dbg !2369
  br i1 %cmp49.not, label %if.end209.sink.split, label %if.then51, !dbg !2371

if.then51:                                        ; preds = %if.else35
    #dbg_value(i32 6, !2324, !DIExpression(), !2328)
  %add.ptr56 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !2372
  %call57 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr56) #12, !dbg !2374
    #dbg_value(i32 %call57, !2326, !DIExpression(), !2328)
    #dbg_value(i32 %mul, !2325, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !2328)
  %cmp59.not = icmp eq i32 %call57, 0, !dbg !2375
  %spec.select.v = select i1 %cmp59.not, i32 5, i32 9, !dbg !2377
  %spec.select = add nsw i32 %spec.select.v, %mul, !dbg !2377
  br label %if.end209.sink.split, !dbg !2377

if.then86:                                        ; preds = %entry
  %mb_up87 = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !2378
  %9 = load ptr, ptr %mb_up87, align 8, !dbg !2378
  %cmp88.not = icmp eq ptr %9, null, !dbg !2382
  br i1 %cmp88.not, label %if.end97, label %if.then90, !dbg !2383

if.then90:                                        ; preds = %if.then86
  %mb_type92 = getelementptr inbounds i8, ptr %9, i64 152, !dbg !2384
  %10 = load i16, ptr %mb_type92, align 8, !dbg !2384
  %cmp94.not = icmp ne i16 %10, 12, !dbg !2385
  %cond96 = zext i1 %cmp94.not to i32, !dbg !2386
    #dbg_value(i32 %cond96, !2323, !DIExpression(), !2328)
  br label %if.end97, !dbg !2387

if.end97:                                         ; preds = %if.then90, %if.then86
  %b.1 = phi i32 [ %cond96, %if.then90 ], [ 0, %if.then86 ], !dbg !2328
    #dbg_value(i32 %b.1, !2323, !DIExpression(), !2328)
  %mb_left98 = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !2388
  %11 = load ptr, ptr %mb_left98, align 8, !dbg !2388
  %cmp99.not = icmp eq ptr %11, null, !dbg !2390
  br i1 %cmp99.not, label %if.end108, label %if.then101, !dbg !2391

if.then101:                                       ; preds = %if.end97
  %mb_type103 = getelementptr inbounds i8, ptr %11, i64 152, !dbg !2392
  %12 = load i16, ptr %mb_type103, align 8, !dbg !2392
  %cmp105.not = icmp ne i16 %12, 12, !dbg !2393
  %cond107 = zext i1 %cmp105.not to i32, !dbg !2394
    #dbg_value(i32 %cond107, !2322, !DIExpression(), !2328)
  br label %if.end108, !dbg !2395

if.end108:                                        ; preds = %if.then101, %if.end97
  %a.1 = phi i32 [ %cond107, %if.then101 ], [ 0, %if.end97 ], !dbg !2328
    #dbg_value(i32 %a.1, !2322, !DIExpression(), !2328)
  %add109 = add nuw nsw i32 %a.1, %b.1, !dbg !2396
    #dbg_value(i32 %add109, !2324, !DIExpression(), !2328)
  %arrayidx111 = getelementptr inbounds i8, ptr %1, i64 44, !dbg !2397
  %idx.ext113 = zext nneg i32 %add109 to i64, !dbg !2398
  %add.ptr114 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx111, i64 %idx.ext113, !dbg !2398
  %call115 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr114) #12, !dbg !2399
    #dbg_value(i32 %call115, !2325, !DIExpression(), !2328)
  %context116 = getelementptr inbounds i8, ptr %se, i64 24, !dbg !2400
  store i32 %add109, ptr %context116, align 8, !dbg !2401
  %cmp117 = icmp eq i32 %call115, 0, !dbg !2402
  br i1 %cmp117, label %if.end209, label %if.else120, !dbg !2404

if.else120:                                       ; preds = %if.end108
  %13 = load ptr, ptr %mb_up87, align 8, !dbg !2405
  %cmp122.not = icmp eq ptr %13, null, !dbg !2408
  br i1 %cmp122.not, label %if.end131, label %if.then124, !dbg !2409

if.then124:                                       ; preds = %if.else120
  %mb_type126 = getelementptr inbounds i8, ptr %13, i64 152, !dbg !2410
  %14 = load i16, ptr %mb_type126, align 8, !dbg !2410
  %cmp128.not = icmp ne i16 %14, 9, !dbg !2411
  %cond130 = zext i1 %cmp128.not to i32, !dbg !2412
    #dbg_value(i32 %cond130, !2323, !DIExpression(), !2328)
  br label %if.end131, !dbg !2413

if.end131:                                        ; preds = %if.then124, %if.else120
  %b.2 = phi i32 [ %cond130, %if.then124 ], [ %b.1, %if.else120 ], !dbg !2414
    #dbg_value(i32 %b.2, !2323, !DIExpression(), !2328)
  %15 = load ptr, ptr %mb_left98, align 8, !dbg !2415
  %cmp133.not = icmp eq ptr %15, null, !dbg !2417
  br i1 %cmp133.not, label %if.end142, label %if.then135, !dbg !2418

if.then135:                                       ; preds = %if.end131
  %mb_type137 = getelementptr inbounds i8, ptr %15, i64 152, !dbg !2419
  %16 = load i16, ptr %mb_type137, align 8, !dbg !2419
  %cmp139.not = icmp ne i16 %16, 9, !dbg !2420
  %cond141 = zext i1 %cmp139.not to i32, !dbg !2421
    #dbg_value(i32 %cond141, !2322, !DIExpression(), !2328)
  br label %if.end142, !dbg !2422

if.end142:                                        ; preds = %if.then135, %if.end131
  %a.2 = phi i32 [ %cond141, %if.then135 ], [ %a.1, %if.end131 ], !dbg !2414
    #dbg_value(i32 %a.2, !2322, !DIExpression(), !2328)
  %add143 = add nuw nsw i32 %a.2, %b.2, !dbg !2423
    #dbg_value(i32 %add143, !2324, !DIExpression(), !2328)
  %idx.ext147 = zext nneg i32 %add143 to i64, !dbg !2424
  %add.ptr148 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext147, !dbg !2424
  %call149 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr148) #12, !dbg !2425
    #dbg_value(i32 %call149, !2325, !DIExpression(), !2328)
  store i32 %add143, ptr %context116, align 8, !dbg !2426
  %cmp151 = icmp eq i32 %call149, 0, !dbg !2427
  br i1 %cmp151, label %if.end209, label %if.else154, !dbg !2429

if.else154:                                       ; preds = %if.end142
  %call155 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12, !dbg !2430
    #dbg_value(i32 %call155, !2326, !DIExpression(), !2328)
  %cmp156 = icmp eq i32 %call155, 1, !dbg !2432
  br i1 %cmp156, label %if.end209, label %if.else159, !dbg !2434

if.else159:                                       ; preds = %if.else154
    #dbg_value(i32 2, !2325, !DIExpression(), !2328)
    #dbg_value(i32 4, !2324, !DIExpression(), !2328)
  %add.ptr164 = getelementptr inbounds i8, ptr %1, i64 16, !dbg !2435
  %call165 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr164) #12, !dbg !2437
    #dbg_value(i32 %call165, !2326, !DIExpression(), !2328)
  %mul166 = mul nsw i32 %call165, 12, !dbg !2438
  %add167 = or disjoint i32 %mul166, 2, !dbg !2439
    #dbg_value(i32 %add167, !2325, !DIExpression(), !2328)
    #dbg_value(i32 5, !2324, !DIExpression(), !2328)
  %add.ptr172 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2440
  %call173 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr172) #12, !dbg !2441
    #dbg_value(i32 %call173, !2326, !DIExpression(), !2328)
  %cmp174.not = icmp eq i32 %call173, 0, !dbg !2442
  br i1 %cmp174.not, label %if.end209.sink.split, label %if.then176, !dbg !2444

if.then176:                                       ; preds = %if.else159
    #dbg_value(i32 6, !2324, !DIExpression(), !2328)
  %add.ptr181 = getelementptr inbounds i8, ptr %1, i64 24, !dbg !2445
  %call182 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr181) #12, !dbg !2447
    #dbg_value(i32 %call182, !2326, !DIExpression(), !2328)
    #dbg_value(i32 %mul166, !2325, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !2328)
  %cmp184.not = icmp eq i32 %call182, 0, !dbg !2448
  %spec.select306.v = select i1 %cmp184.not, i32 6, i32 10, !dbg !2450
  %spec.select306 = add nsw i32 %spec.select306.v, %mul166, !dbg !2450
  br label %if.end209.sink.split, !dbg !2450

if.end209.sink.split:                             ; preds = %if.else159, %if.then176, %if.else35, %if.then51
  %act_sym.1.sink = phi i32 [ %add42, %if.else35 ], [ %spec.select, %if.then51 ], [ %add167, %if.else159 ], [ %spec.select306, %if.then176 ]
  %add.ptr194 = getelementptr inbounds i8, ptr %1, i64 28, !dbg !2451
  %call195 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr194) #12, !dbg !2451
  %mul196 = shl nsw i32 %call195, 1, !dbg !2451
  %add197 = add nsw i32 %mul196, %act_sym.1.sink, !dbg !2451
  %add.ptr202 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !2451
  %call203 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr202) #12, !dbg !2451
  %add204 = add nsw i32 %add197, %call203, !dbg !2451
  br label %if.end209, !dbg !2452

if.end209:                                        ; preds = %if.end209.sink.split, %if.else154, %if.end142, %if.end108, %entry, %if.else, %if.end27
  %curr_mb_type.0 = phi i32 [ 0, %if.end27 ], [ 25, %if.else ], [ 0, %entry ], [ 0, %if.end108 ], [ 1, %if.end142 ], [ 26, %if.else154 ], [ %add204, %if.end209.sink.split ], !dbg !2328
    #dbg_value(i32 %curr_mb_type.0, !2327, !DIExpression(), !2328)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2452
  store i32 %curr_mb_type.0, ptr %value1, align 4, !dbg !2453
  ret void, !dbg !2454
}

declare !dbg !2455 i32 @biari_decode_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2456 {
entry:
    #dbg_value(ptr %currMB, !2458, !DIExpression(), !2468)
    #dbg_value(ptr %se, !2459, !DIExpression(), !2468)
    #dbg_value(ptr %dep_dp, !2460, !DIExpression(), !2468)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2469
    #dbg_value(ptr %0, !2461, !DIExpression(), !2468)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2470
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2470
    #dbg_value(ptr %1, !2462, !DIExpression(), !2468)
    #dbg_value(ptr %1, !2467, !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value), !2468)
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 60, !dbg !2471
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx2) #12, !dbg !2473
  %tobool.not = icmp eq i32 %call, 0, !dbg !2473
  br i1 %tobool.not, label %if.else7, label %if.end26, !dbg !2474

if.else7:                                         ; preds = %entry
  %arrayidx8 = getelementptr inbounds i8, ptr %1, i64 64, !dbg !2475
  %call9 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx8) #12, !dbg !2478
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !2478
  br i1 %tobool10.not, label %if.else18, label %if.then11, !dbg !2479

if.then11:                                        ; preds = %if.else7
  %arrayidx12 = getelementptr inbounds i8, ptr %1, i64 72, !dbg !2480
  %call13 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx12) #12, !dbg !2483
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !2483
  %.95 = select i1 %tobool14.not, i32 3, i32 2
  br label %if.end58

if.else18:                                        ; preds = %if.else7
  %arrayidx19 = getelementptr inbounds i8, ptr %1, i64 68, !dbg !2484
  %call20 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx19) #12, !dbg !2487
  %tobool21.not = icmp eq i32 %call20, 0, !dbg !2487
  %.96 = select i1 %tobool21.not, i32 1, i32 4
  br label %if.end58

if.end26:                                         ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 72, !dbg !2488
  %call4 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx3) #12, !dbg !2491
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !2491
    #dbg_value(i32 poison, !2464, !DIExpression(), !2468)
  br i1 %tobool5.not, label %if.end58, label %if.else28, !dbg !2492

if.else28:                                        ; preds = %if.end26
  %call29 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12, !dbg !2493
    #dbg_value(i32 %call29, !2465, !DIExpression(), !2468)
  %cmp30 = icmp eq i32 %call29, 1, !dbg !2496
  br i1 %cmp30, label %if.end58, label %if.else32, !dbg !2498

if.else32:                                        ; preds = %if.else28
    #dbg_value(i32 8, !2463, !DIExpression(), !2468)
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 76, !dbg !2499
  %call33 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2501
    #dbg_value(i32 %call33, !2465, !DIExpression(), !2468)
  %mul = mul nsw i32 %call33, 12, !dbg !2502
  %add = add nsw i32 %mul, 7, !dbg !2503
    #dbg_value(i32 %add, !2464, !DIExpression(), !2468)
    #dbg_value(i32 9, !2463, !DIExpression(), !2468)
  %add.ptr35 = getelementptr inbounds i8, ptr %1, i64 80, !dbg !2504
  %call36 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr35) #12, !dbg !2505
    #dbg_value(i32 %call36, !2465, !DIExpression(), !2468)
  %cmp37.not = icmp eq i32 %call36, 0, !dbg !2506
  br i1 %cmp37.not, label %if.end47, label %if.then38, !dbg !2508

if.then38:                                        ; preds = %if.else32
    #dbg_value(i32 %mul, !2464, !DIExpression(DW_OP_plus_uconst, 11, DW_OP_stack_value), !2468)
  %call42 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr35) #12, !dbg !2509
    #dbg_value(i32 %call42, !2465, !DIExpression(), !2468)
  %cmp43.not = icmp eq i32 %call42, 0, !dbg !2511
  %spec.select.v = select i1 %cmp43.not, i32 11, i32 15, !dbg !2513
  %spec.select = add nsw i32 %spec.select.v, %mul, !dbg !2513
  br label %if.end47, !dbg !2513

if.end47:                                         ; preds = %if.then38, %if.else32
  %act_sym.1 = phi i32 [ %add, %if.else32 ], [ %spec.select, %if.then38 ], !dbg !2514
    #dbg_value(i32 %act_sym.1, !2464, !DIExpression(), !2468)
    #dbg_value(i32 10, !2463, !DIExpression(), !2468)
  %add.ptr49 = getelementptr inbounds i8, ptr %1, i64 84, !dbg !2515
  %call50 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr49) #12, !dbg !2516
    #dbg_value(i32 %call50, !2465, !DIExpression(), !2468)
  %mul51 = shl nsw i32 %call50, 1, !dbg !2517
  %add52 = add nsw i32 %mul51, %act_sym.1, !dbg !2518
    #dbg_value(i32 %add52, !2464, !DIExpression(), !2468)
  %call55 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr49) #12, !dbg !2519
    #dbg_value(i32 %call55, !2465, !DIExpression(), !2468)
  %add56 = add nsw i32 %add52, %call55, !dbg !2520
    #dbg_value(i32 %add56, !2464, !DIExpression(), !2468)
    #dbg_value(i32 %add56, !2466, !DIExpression(), !2468)
  br label %if.end58

if.end58:                                         ; preds = %if.else18, %if.then11, %if.else28, %if.end26, %if.end47
  %curr_mb_type.0 = phi i32 [ %add56, %if.end47 ], [ 6, %if.end26 ], [ 31, %if.else28 ], [ %.96, %if.else18 ], [ %.95, %if.then11 ], !dbg !2521
    #dbg_value(i32 %curr_mb_type.0, !2466, !DIExpression(), !2468)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2522
  store i32 %curr_mb_type.0, ptr %value1, align 4, !dbg !2523
  ret void, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2525 {
entry:
    #dbg_value(ptr %currMB, !2527, !DIExpression(), !2539)
    #dbg_value(ptr %se, !2528, !DIExpression(), !2539)
    #dbg_value(ptr %dep_dp, !2529, !DIExpression(), !2539)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2540
    #dbg_value(ptr %0, !2530, !DIExpression(), !2539)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2541
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2541
    #dbg_value(ptr %1, !2531, !DIExpression(), !2539)
    #dbg_value(i32 0, !2532, !DIExpression(), !2539)
    #dbg_value(i32 0, !2533, !DIExpression(), !2539)
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 88, !dbg !2542
    #dbg_value(ptr %arrayidx, !2538, !DIExpression(), !2539)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !2543
  %2 = load ptr, ptr %mb_up, align 8, !dbg !2543
  %cmp.not = icmp eq ptr %2, null, !dbg !2545
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2546

if.then:                                          ; preds = %entry
  %mb_type = getelementptr inbounds i8, ptr %2, i64 152, !dbg !2547
  %3 = load i16, ptr %mb_type, align 8, !dbg !2547
  %cmp3.not = icmp ne i16 %3, 0, !dbg !2548
  %cond = zext i1 %cmp3.not to i64, !dbg !2549
    #dbg_value(i1 %cmp3.not, !2533, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2539)
  br label %if.end, !dbg !2550

if.end:                                           ; preds = %if.then, %entry
  %b.0 = phi i64 [ %cond, %if.then ], [ 0, %entry ], !dbg !2539
    #dbg_value(i32 poison, !2533, !DIExpression(), !2539)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !2551
  %4 = load ptr, ptr %mb_left, align 8, !dbg !2551
  %cmp5.not = icmp eq ptr %4, null, !dbg !2553
  br i1 %cmp5.not, label %if.end14, label %if.then7, !dbg !2554

if.then7:                                         ; preds = %if.end
  %mb_type9 = getelementptr inbounds i8, ptr %4, i64 152, !dbg !2555
  %5 = load i16, ptr %mb_type9, align 8, !dbg !2555
  %cmp11.not = icmp ne i16 %5, 0, !dbg !2556
  %cond13 = zext i1 %cmp11.not to i64, !dbg !2557
    #dbg_value(i1 %cmp11.not, !2532, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2539)
  br label %if.end14, !dbg !2558

if.end14:                                         ; preds = %if.then7, %if.end
  %a.0 = phi i64 [ %cond13, %if.then7 ], [ 0, %if.end ], !dbg !2539
    #dbg_value(i32 poison, !2532, !DIExpression(), !2539)
    #dbg_value(!DIArgList(i64 %a.0, i64 %b.0), !2534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2539)
  %6 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx, i64 %a.0, !dbg !2559
  %arrayidx15 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %b.0, !dbg !2559
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx15) #12, !dbg !2561
  %tobool.not = icmp eq i32 %call, 0, !dbg !2561
  br i1 %tobool.not, label %if.end132, label %if.then16, !dbg !2562

if.then16:                                        ; preds = %if.end14
  %arrayidx17 = getelementptr inbounds i8, ptr %1, i64 104, !dbg !2563
  %call18 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx17) #12, !dbg !2566
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !2566
  br i1 %tobool19.not, label %if.else82, label %if.then20, !dbg !2567

if.then20:                                        ; preds = %if.then16
  %arrayidx21 = getelementptr inbounds i8, ptr %1, i64 108, !dbg !2568
  %call22 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx21) #12, !dbg !2571
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !2571
  %arrayidx63 = getelementptr inbounds i8, ptr %1, i64 112, !dbg !2572
  %call64 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12, !dbg !2572
  %tobool65.not = icmp eq i32 %call64, 0, !dbg !2572
  %call70 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12, !dbg !2572
  %tobool71.not = icmp eq i32 %call70, 0, !dbg !2572
  %call76 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12, !dbg !2572
  br i1 %tobool23.not, label %if.else62, label %if.then24, !dbg !2573

if.then24:                                        ; preds = %if.then20
    #dbg_value(i32 12, !2535, !DIExpression(), !2539)
  %spec.select = select i1 %tobool65.not, i32 12, i32 20, !dbg !2574
    #dbg_value(i32 %spec.select, !2535, !DIExpression(), !2539)
  %add35 = add nuw nsw i32 %spec.select, 4, !dbg !2576
  %act_sym.1 = select i1 %tobool71.not, i32 %spec.select, i32 %add35, !dbg !2576
    #dbg_value(i32 %act_sym.1, !2535, !DIExpression(), !2539)
  %tobool39.not = icmp eq i32 %call76, 0, !dbg !2577
  %add41 = or disjoint i32 %act_sym.1, 2, !dbg !2579
  %act_sym.2 = select i1 %tobool39.not, i32 %act_sym.1, i32 %add41, !dbg !2579
    #dbg_value(i32 %act_sym.2, !2535, !DIExpression(), !2539)
  switch i32 %act_sym.2, label %if.end91 [
    i32 24, label %if.end132
    i32 26, label %if.then48
  ], !dbg !2580

if.then48:                                        ; preds = %if.then24
    #dbg_value(i32 22, !2535, !DIExpression(), !2539)
  br label %if.end132, !dbg !2581

if.else62:                                        ; preds = %if.then20
    #dbg_value(i32 3, !2535, !DIExpression(), !2539)
  %spec.select198 = select i1 %tobool65.not, i32 3, i32 7, !dbg !2584
    #dbg_value(i32 %spec.select198, !2535, !DIExpression(), !2539)
  %add73 = add nuw nsw i32 %spec.select198, 2, !dbg !2586
  %act_sym.4 = select i1 %tobool71.not, i32 %spec.select198, i32 %add73, !dbg !2586
    #dbg_value(i32 %act_sym.4, !2535, !DIExpression(), !2539)
  %tobool77.not = icmp ne i32 %call76, 0, !dbg !2587
  %add79 = zext i1 %tobool77.not to i32, !dbg !2589
  %spec.select200 = add nuw nsw i32 %act_sym.4, %add79, !dbg !2589
  br label %if.end132, !dbg !2589

if.else82:                                        ; preds = %if.then16
  %arrayidx83 = getelementptr inbounds i8, ptr %1, i64 112, !dbg !2590
  %call84 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx83) #12, !dbg !2593
  %tobool85.not = icmp eq i32 %call84, 0, !dbg !2593
  %. = select i1 %tobool85.not, i32 1, i32 2
  br label %if.end132

if.end91:                                         ; preds = %if.then24
  %cmp50 = icmp eq i32 %act_sym.2, 22, !dbg !2594
  %spec.store.select = select i1 %cmp50, i32 23, i32 %act_sym.2, !dbg !2597
    #dbg_value(i32 %spec.store.select, !2535, !DIExpression(), !2539)
  %call55 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12, !dbg !2598
  %tobool56.not = icmp ne i32 %call55, 0, !dbg !2598
  %add58 = zext i1 %tobool56.not to i32, !dbg !2600
  %spec.select197 = add nuw nsw i32 %spec.store.select, %add58, !dbg !2600
    #dbg_value(i32 %spec.select197, !2535, !DIExpression(), !2539)
  %cmp92 = icmp ult i32 %spec.select197, 24, !dbg !2601
  br i1 %cmp92, label %if.end132, label %if.else95, !dbg !2603

if.else95:                                        ; preds = %if.end91
  %call96 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12, !dbg !2604
    #dbg_value(i32 %call96, !2536, !DIExpression(), !2539)
  %cmp97 = icmp eq i32 %call96, 1, !dbg !2606
  br i1 %cmp97, label %if.end132, label %if.else100, !dbg !2608

if.else100:                                       ; preds = %if.else95
    #dbg_value(ptr %1, !2538, !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value), !2539)
    #dbg_value(i32 8, !2534, !DIExpression(), !2539)
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 76, !dbg !2609
  %call104 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2611
    #dbg_value(i32 %call104, !2536, !DIExpression(), !2539)
  %mul = mul nsw i32 %call104, 12, !dbg !2612
  %add105 = add nsw i32 %mul, %spec.select197, !dbg !2613
    #dbg_value(i32 %add105, !2535, !DIExpression(), !2539)
    #dbg_value(i32 9, !2534, !DIExpression(), !2539)
  %add.ptr107 = getelementptr inbounds i8, ptr %1, i64 80, !dbg !2614
  %call108 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr107) #12, !dbg !2615
    #dbg_value(i32 %call108, !2536, !DIExpression(), !2539)
  %cmp109.not = icmp eq i32 %call108, 0, !dbg !2616
  br i1 %cmp109.not, label %if.end121, label %if.then111, !dbg !2618

if.then111:                                       ; preds = %if.else100
    #dbg_value(i32 %add105, !2535, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !2539)
  %call115 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr107) #12, !dbg !2619
    #dbg_value(i32 %call115, !2536, !DIExpression(), !2539)
  %cmp116.not = icmp eq i32 %call115, 0, !dbg !2621
  %spec.select199.v = select i1 %cmp116.not, i32 4, i32 8, !dbg !2623
  %spec.select199 = add nsw i32 %spec.select199.v, %add105, !dbg !2623
  br label %if.end121, !dbg !2623

if.end121:                                        ; preds = %if.then111, %if.else100
  %act_sym.6 = phi i32 [ %add105, %if.else100 ], [ %spec.select199, %if.then111 ], !dbg !2624
    #dbg_value(i32 %act_sym.6, !2535, !DIExpression(), !2539)
    #dbg_value(i32 10, !2534, !DIExpression(), !2539)
  %add.ptr123 = getelementptr inbounds i8, ptr %1, i64 84, !dbg !2625
  %call124 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr123) #12, !dbg !2626
    #dbg_value(i32 %call124, !2536, !DIExpression(), !2539)
  %mul125 = shl nsw i32 %call124, 1, !dbg !2627
  %add126 = add nsw i32 %mul125, %act_sym.6, !dbg !2628
    #dbg_value(i32 %add126, !2535, !DIExpression(), !2539)
  %call129 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr123) #12, !dbg !2629
    #dbg_value(i32 %call129, !2536, !DIExpression(), !2539)
  %add130 = add nsw i32 %add126, %call129, !dbg !2630
    #dbg_value(i32 %add130, !2535, !DIExpression(), !2539)
    #dbg_value(i32 %add130, !2537, !DIExpression(), !2539)
  br label %if.end132

if.end132:                                        ; preds = %if.else62, %if.end14, %if.else82, %if.then24, %if.then48, %if.else95, %if.end91, %if.end121
  %curr_mb_type.0 = phi i32 [ %add130, %if.end121 ], [ %spec.select197, %if.end91 ], [ 48, %if.else95 ], [ %spec.select200, %if.else62 ], [ 0, %if.end14 ], [ %., %if.else82 ], [ 11, %if.then24 ], [ 22, %if.then48 ], !dbg !2631
    #dbg_value(i32 %curr_mb_type.0, !2537, !DIExpression(), !2539)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2632
  store i32 %curr_mb_type.0, ptr %value1, align 4, !dbg !2633
  ret void, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local void @readIntraPredMode_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2635 {
entry:
    #dbg_value(ptr %currMB, !2637, !DIExpression(), !2643)
    #dbg_value(ptr %se, !2638, !DIExpression(), !2643)
    #dbg_value(ptr %dep_dp, !2639, !DIExpression(), !2643)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2644
    #dbg_value(ptr %0, !2640, !DIExpression(), !2643)
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328, !dbg !2645
  %1 = load ptr, ptr %tex_ctx, align 8, !dbg !2645
    #dbg_value(ptr %1, !2641, !DIExpression(), !2643)
  %ipr_contexts = getelementptr inbounds i8, ptr %1, i64 12, !dbg !2646
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %ipr_contexts) #12, !dbg !2647
    #dbg_value(i32 %call, !2642, !DIExpression(), !2643)
  %cmp = icmp eq i32 %call, 1, !dbg !2648
  br i1 %cmp, label %if.then, label %if.else, !dbg !2650

if.then:                                          ; preds = %entry
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2651
  store i32 -1, ptr %value1, align 4, !dbg !2652
  br label %if.end, !dbg !2653

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 16, !dbg !2654
  %call3 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2656
  %value14 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2657
  store i32 %call3, ptr %value14, align 4, !dbg !2658
  %call8 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2659
  %shl = shl i32 %call8, 1, !dbg !2660
  %2 = load i32, ptr %value14, align 4, !dbg !2661
  %or = or i32 %2, %shl, !dbg !2661
  store i32 %or, ptr %value14, align 4, !dbg !2661
  %call13 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2662
  %shl14 = shl i32 %call13, 2, !dbg !2663
  %3 = load i32, ptr %value14, align 4, !dbg !2664
  %or16 = or i32 %3, %shl14, !dbg !2664
  store i32 %or16, ptr %value14, align 4, !dbg !2664
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local void @readRefFrame_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2666 {
entry:
  %block_a = alloca %struct.pix_pos, align 4, !DIAssignID !2690
    #dbg_assign(i1 undef, !2682, !DIExpression(), !2690, ptr %block_a, !DIExpression(), !2691)
  %block_b = alloca %struct.pix_pos, align 4, !DIAssignID !2692
    #dbg_assign(i1 undef, !2683, !DIExpression(), !2692, ptr %block_b, !DIExpression(), !2691)
    #dbg_value(ptr %currMB, !2668, !DIExpression(), !2691)
    #dbg_value(ptr %se, !2669, !DIExpression(), !2691)
    #dbg_value(ptr %dep_dp, !2670, !DIExpression(), !2691)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2693
    #dbg_value(ptr %0, !2671, !DIExpression(), !2691)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2694
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !2694
    #dbg_value(ptr %1, !2672, !DIExpression(), !2691)
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520, !dbg !2695
  %2 = load ptr, ptr %dec_picture2, align 8, !dbg !2695
    #dbg_value(ptr %2, !2673, !DIExpression(), !2691)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2696
  %3 = load ptr, ptr %mot_ctx, align 8, !dbg !2696
    #dbg_value(ptr %3, !2674, !DIExpression(), !2691)
    #dbg_value(ptr null, !2675, !DIExpression(), !2691)
    #dbg_value(i32 0, !2676, !DIExpression(), !2691)
    #dbg_value(i32 0, !2677, !DIExpression(), !2691)
    #dbg_value(i32 0, !2678, !DIExpression(), !2691)
  %value2 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !2697
  %4 = load i32, ptr %value2, align 8, !dbg !2697
    #dbg_value(i32 %4, !2681, !DIExpression(), !2691)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12, !dbg !2698
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12, !dbg !2698
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !2699
  %5 = load i32, ptr %subblock_x, align 4, !dbg !2699
  %sub = add nsw i32 %5, -1, !dbg !2700
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !2701
  %6 = load i32, ptr %subblock_y, align 8, !dbg !2701
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !2702
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %6, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !2703
  %7 = load i32, ptr %subblock_x, align 4, !dbg !2704
  %8 = load i32, ptr %subblock_y, align 8, !dbg !2705
  %sub5 = add nsw i32 %8, -1, !dbg !2706
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %7, i32 noundef %sub5, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12, !dbg !2707
  %9 = load i32, ptr %block_b, align 4, !dbg !2708
  %tobool.not = icmp eq i32 %9, 0, !dbg !2709
  br i1 %tobool.not, label %if.end66, label %if.then, !dbg !2710

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %block_b, i64 8, !dbg !2711
  %10 = load i16, ptr %x, align 4, !dbg !2711
  %11 = lshr i16 %10, 1, !dbg !2712
  %12 = and i16 %11, 1, !dbg !2713
  %y = getelementptr inbounds i8, ptr %block_b, i64 10, !dbg !2714
  %13 = load i16, ptr %y, align 2, !dbg !2714
  %14 = and i16 %13, 2, !dbg !2715
  %add211 = or disjoint i16 %12, %14, !dbg !2716
    #dbg_value(i16 %add211, !2684, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2717)
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !2718
  %15 = load ptr, ptr %mb_data, align 8, !dbg !2718
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !2719
  %16 = load i32, ptr %mb_addr, align 4, !dbg !2719
  %idxprom = sext i32 %16 to i64, !dbg !2720
  %arrayidx11 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %idxprom, !dbg !2720
    #dbg_value(ptr %arrayidx11, !2675, !DIExpression(), !2691)
  %mb_type = getelementptr inbounds i8, ptr %arrayidx11, i64 152, !dbg !2721
  %17 = load i16, ptr %mb_type, align 8, !dbg !2721
  switch i16 %17, label %lor.lhs.false20 [
    i16 14, label %if.end66
    i16 0, label %land.lhs.true
  ], !dbg !2723

land.lhs.true:                                    ; preds = %if.then
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164, !dbg !2724
  %18 = load i32, ptr %slice_type, align 4, !dbg !2724
  %cmp18 = icmp eq i32 %18, 1, !dbg !2724
  br i1 %cmp18, label %if.end66, label %lor.lhs.false20, !dbg !2725

lor.lhs.false20:                                  ; preds = %if.then, %land.lhs.true
  %b8mode = getelementptr inbounds i8, ptr %arrayidx11, i64 364, !dbg !2726
  %idxprom21 = zext nneg i16 %add211 to i64, !dbg !2727
  %arrayidx22 = getelementptr inbounds [4 x i8], ptr %b8mode, i64 0, i64 %idxprom21, !dbg !2727
  %19 = load i8, ptr %arrayidx22, align 1, !dbg !2727
  %cmp24 = icmp eq i8 %19, 0, !dbg !2728
  br i1 %cmp24, label %land.lhs.true26, label %if.then32, !dbg !2729

land.lhs.true26:                                  ; preds = %lor.lhs.false20
  %b8pdir = getelementptr inbounds i8, ptr %arrayidx11, i64 368, !dbg !2730
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %idxprom21, !dbg !2731
  %20 = load i8, ptr %arrayidx28, align 1, !dbg !2731
  %cmp30 = icmp eq i8 %20, 2, !dbg !2732
  br i1 %cmp30, label %if.end66, label %if.then32, !dbg !2733

if.then32:                                        ; preds = %land.lhs.true26, %lor.lhs.false20
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128, !dbg !2734
  %21 = load i32, ptr %mb_aff_frame_flag, align 8, !dbg !2734
  %tobool33.not = icmp eq i32 %21, 0, !dbg !2737
  br i1 %tobool33.not, label %if.else, label %land.lhs.true34, !dbg !2738

land.lhs.true34:                                  ; preds = %if.then32
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !2739
  %22 = load i32, ptr %mb_field, align 8, !dbg !2739
  %cmp35 = icmp eq i32 %22, 0, !dbg !2740
  br i1 %cmp35, label %land.lhs.true37, label %if.else, !dbg !2741

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %mb_field38 = getelementptr inbounds i8, ptr %arrayidx11, i64 384, !dbg !2742
  %23 = load i32, ptr %mb_field38, align 8, !dbg !2742
  %cmp39 = icmp eq i32 %23, 1, !dbg !2743
  br i1 %cmp39, label %if.end66.sink.split, label %if.else, !dbg !2744

if.else:                                          ; preds = %land.lhs.true37, %land.lhs.true34, %if.then32
    #dbg_value(i32 %cond64, !2678, !DIExpression(), !2691)
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %land.lhs.true37, %if.else
  %.sink213 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true37 ]
  %mv_info51 = getelementptr inbounds i8, ptr %2, i64 152, !dbg !2745
  %24 = load ptr, ptr %mv_info51, align 8, !dbg !2745
  %pos_y52 = getelementptr inbounds i8, ptr %block_b, i64 14, !dbg !2745
  %25 = load i16, ptr %pos_y52, align 2, !dbg !2745
  %idxprom53 = sext i16 %25 to i64, !dbg !2745
  %arrayidx54 = getelementptr inbounds ptr, ptr %24, i64 %idxprom53, !dbg !2745
  %26 = load ptr, ptr %arrayidx54, align 8, !dbg !2745
  %pos_x55 = getelementptr inbounds i8, ptr %block_b, i64 12, !dbg !2745
  %27 = load i16, ptr %pos_x55, align 4, !dbg !2745
  %idxprom56 = sext i16 %27 to i64, !dbg !2745
  %idxprom59 = sext i32 %4 to i64, !dbg !2745
  %arrayidx60 = getelementptr inbounds %struct.pic_motion_params, ptr %26, i64 %idxprom56, i32 2, i64 %idxprom59, !dbg !2745
  %28 = load i8, ptr %arrayidx60, align 1, !dbg !2745
  %cmp62 = icmp sgt i8 %28, %.sink213, !dbg !2745
  %cond64 = select i1 %cmp62, i32 2, i32 0, !dbg !2745
  br label %if.end66, !dbg !2746

if.end66:                                         ; preds = %if.end66.sink.split, %land.lhs.true, %land.lhs.true26, %if.then, %entry
  %b.1 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true26 ], [ %cond64, %if.end66.sink.split ], !dbg !2747
    #dbg_value(i32 %b.1, !2678, !DIExpression(), !2691)
  %29 = load i32, ptr %block_a, align 4, !dbg !2746
  %tobool68.not = icmp eq i32 %29, 0, !dbg !2748
  br i1 %tobool68.not, label %if.end152, label %if.then69, !dbg !2749

if.then69:                                        ; preds = %if.end66
  %x70 = getelementptr inbounds i8, ptr %block_a, i64 8, !dbg !2750
  %30 = load i16, ptr %x70, align 4, !dbg !2750
  %31 = lshr i16 %30, 1, !dbg !2751
  %32 = and i16 %31, 1, !dbg !2752
  %y74 = getelementptr inbounds i8, ptr %block_a, i64 10, !dbg !2753
  %33 = load i16, ptr %y74, align 2, !dbg !2753
  %34 = and i16 %33, 2, !dbg !2754
  %add77212 = or disjoint i16 %32, %34, !dbg !2755
    #dbg_value(i16 %add77212, !2687, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2756)
  %mb_data78 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !2757
  %35 = load ptr, ptr %mb_data78, align 8, !dbg !2757
  %mb_addr79 = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !2758
  %36 = load i32, ptr %mb_addr79, align 4, !dbg !2758
  %idxprom80 = sext i32 %36 to i64, !dbg !2759
  %arrayidx81 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %idxprom80, !dbg !2759
    #dbg_value(ptr %arrayidx81, !2675, !DIExpression(), !2691)
  %mb_type82 = getelementptr inbounds i8, ptr %arrayidx81, i64 152, !dbg !2760
  %37 = load i16, ptr %mb_type82, align 8, !dbg !2760
  switch i16 %37, label %lor.lhs.false95 [
    i16 14, label %if.end152
    i16 0, label %land.lhs.true91
  ], !dbg !2762

land.lhs.true91:                                  ; preds = %if.then69
  %slice_type92 = getelementptr inbounds i8, ptr %0, i64 164, !dbg !2763
  %38 = load i32, ptr %slice_type92, align 4, !dbg !2763
  %cmp93 = icmp eq i32 %38, 1, !dbg !2763
  br i1 %cmp93, label %if.end152, label %lor.lhs.false95, !dbg !2764

lor.lhs.false95:                                  ; preds = %if.then69, %land.lhs.true91
  %b8mode96 = getelementptr inbounds i8, ptr %arrayidx81, i64 364, !dbg !2765
  %idxprom97 = zext nneg i16 %add77212 to i64, !dbg !2766
  %arrayidx98 = getelementptr inbounds [4 x i8], ptr %b8mode96, i64 0, i64 %idxprom97, !dbg !2766
  %39 = load i8, ptr %arrayidx98, align 1, !dbg !2766
  %cmp100 = icmp eq i8 %39, 0, !dbg !2767
  br i1 %cmp100, label %land.lhs.true102, label %if.then109, !dbg !2768

land.lhs.true102:                                 ; preds = %lor.lhs.false95
  %b8pdir103 = getelementptr inbounds i8, ptr %arrayidx81, i64 368, !dbg !2769
  %arrayidx105 = getelementptr inbounds [4 x i8], ptr %b8pdir103, i64 0, i64 %idxprom97, !dbg !2770
  %40 = load i8, ptr %arrayidx105, align 1, !dbg !2770
  %cmp107 = icmp eq i8 %40, 2, !dbg !2771
  br i1 %cmp107, label %if.end152, label %if.then109, !dbg !2772

if.then109:                                       ; preds = %land.lhs.true102, %lor.lhs.false95
  %mb_aff_frame_flag110 = getelementptr inbounds i8, ptr %0, i64 128, !dbg !2773
  %41 = load i32, ptr %mb_aff_frame_flag110, align 8, !dbg !2773
  %tobool111.not = icmp eq i32 %41, 0, !dbg !2776
  br i1 %tobool111.not, label %if.else135, label %land.lhs.true112, !dbg !2777

land.lhs.true112:                                 ; preds = %if.then109
  %mb_field113 = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !2778
  %42 = load i32, ptr %mb_field113, align 8, !dbg !2778
  %cmp114 = icmp eq i32 %42, 0, !dbg !2779
  br i1 %cmp114, label %land.lhs.true116, label %if.else135, !dbg !2780

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %mb_field117 = getelementptr inbounds i8, ptr %arrayidx81, i64 384, !dbg !2781
  %43 = load i32, ptr %mb_field117, align 8, !dbg !2781
  %cmp118 = icmp eq i32 %43, 1, !dbg !2782
  br i1 %cmp118, label %if.end151.sink.split, label %if.else135, !dbg !2783

if.else135:                                       ; preds = %land.lhs.true116, %land.lhs.true112, %if.then109
    #dbg_value(i1 %cmp132, !2677, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2691)
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %land.lhs.true116, %if.else135
  %.sink216 = phi i8 [ 0, %if.else135 ], [ 1, %land.lhs.true116 ]
  %mv_info121 = getelementptr inbounds i8, ptr %2, i64 152, !dbg !2784
  %44 = load ptr, ptr %mv_info121, align 8, !dbg !2784
  %pos_y122 = getelementptr inbounds i8, ptr %block_a, i64 14, !dbg !2784
  %45 = load i16, ptr %pos_y122, align 2, !dbg !2784
  %idxprom123 = sext i16 %45 to i64, !dbg !2784
  %arrayidx124 = getelementptr inbounds ptr, ptr %44, i64 %idxprom123, !dbg !2784
  %46 = load ptr, ptr %arrayidx124, align 8, !dbg !2784
  %pos_x125 = getelementptr inbounds i8, ptr %block_a, i64 12, !dbg !2784
  %47 = load i16, ptr %pos_x125, align 4, !dbg !2784
  %idxprom126 = sext i16 %47 to i64, !dbg !2784
  %idxprom129 = sext i32 %4 to i64, !dbg !2784
  %arrayidx130 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom126, i32 2, i64 %idxprom129, !dbg !2784
  %48 = load i8, ptr %arrayidx130, align 1, !dbg !2784
  %cmp132 = icmp sgt i8 %48, %.sink216, !dbg !2784
  %49 = zext i1 %cmp132 to i32, !dbg !2691
  br label %if.end152, !dbg !2691

if.end152:                                        ; preds = %land.lhs.true91, %land.lhs.true102, %if.then69, %if.end151.sink.split, %if.end66
  %a.1 = phi i32 [ 0, %if.end66 ], [ 0, %if.then69 ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true102 ], [ %49, %if.end151.sink.split ], !dbg !2785
    #dbg_value(i32 %a.1, !2677, !DIExpression(), !2691)
  %add153 = or disjoint i32 %a.1, %b.1, !dbg !2786
    #dbg_value(i32 %add153, !2679, !DIExpression(), !2691)
  %context = getelementptr inbounds i8, ptr %se, i64 24, !dbg !2787
  store i32 %add153, ptr %context, align 8, !dbg !2788
  %ref_no_contexts = getelementptr inbounds i8, ptr %3, i64 284, !dbg !2789
  %idx.ext = zext nneg i32 %add153 to i64, !dbg !2790
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %ref_no_contexts, i64 %idx.ext, !dbg !2790
  %call = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2791
    #dbg_value(i32 %call, !2680, !DIExpression(), !2691)
  %cmp157.not = icmp eq i32 %call, 0, !dbg !2792
  br i1 %cmp157.not, label %if.end167, label %if.then159, !dbg !2794

if.then159:                                       ; preds = %if.end152
    #dbg_value(i32 4, !2679, !DIExpression(), !2691)
  %add.ptr165 = getelementptr inbounds i8, ptr %3, i64 300, !dbg !2795
    #dbg_value(ptr %dep_dp, !2797, !DIExpression(), !2808)
    #dbg_value(ptr %add.ptr165, !2802, !DIExpression(), !2808)
    #dbg_value(i32 1, !2803, !DIExpression(), !2808)
  %call.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr165) #12, !dbg !2810
    #dbg_value(i32 %call.i, !2804, !DIExpression(), !2808)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !2811
  br i1 %cmp.i, label %if.end167, label %if.else.i, !dbg !2812

if.else.i:                                        ; preds = %if.then159
  %add.ptr.i = getelementptr inbounds i8, ptr %3, i64 304, !dbg !2813
    #dbg_value(ptr %add.ptr.i, !2802, !DIExpression(), !2808)
    #dbg_value(i32 0, !2804, !DIExpression(), !2808)
  br label %do.body.i, !dbg !2814

do.body.i:                                        ; preds = %do.body.i, %if.else.i
  %symbol.0.i = phi i32 [ 0, %if.else.i ], [ %inc.i, %do.body.i ], !dbg !2815
    #dbg_value(i32 %symbol.0.i, !2804, !DIExpression(), !2808)
  %call1.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12, !dbg !2816
    #dbg_value(i32 %call1.i, !2805, !DIExpression(), !2815)
  %inc.i = add i32 %symbol.0.i, 1, !dbg !2818
    #dbg_value(i32 %inc.i, !2804, !DIExpression(), !2808)
  %cmp2.not.i = icmp eq i32 %call1.i, 0, !dbg !2819
  br i1 %cmp2.not.i, label %unary_bin_decode.exit.loopexit, label %do.body.i, !dbg !2820, !llvm.loop !2821

unary_bin_decode.exit.loopexit:                   ; preds = %do.body.i
  %50 = add i32 %symbol.0.i, 2, !dbg !2823
  br label %if.end167, !dbg !2823

if.end167:                                        ; preds = %if.then159, %unary_bin_decode.exit.loopexit, %if.end152
  %act_sym.0 = phi i32 [ 0, %if.end152 ], [ 1, %if.then159 ], [ %50, %unary_bin_decode.exit.loopexit ], !dbg !2691
    #dbg_value(i32 %act_sym.0, !2680, !DIExpression(), !2691)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2824
  store i32 %act_sym.0, ptr %value1, align 4, !dbg !2825
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12, !dbg !2826
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12, !dbg !2826
  ret void, !dbg !2826
}

declare !dbg !2827 void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @read_dQuant_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2828 {
entry:
    #dbg_value(ptr %currMB, !2830, !DIExpression(), !2838)
    #dbg_value(ptr %se, !2831, !DIExpression(), !2838)
    #dbg_value(ptr %dep_dp, !2832, !DIExpression(), !2838)
  %0 = load ptr, ptr %currMB, align 8, !dbg !2839
    #dbg_value(ptr %0, !2833, !DIExpression(), !2838)
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320, !dbg !2840
  %1 = load ptr, ptr %mot_ctx, align 8, !dbg !2840
    #dbg_value(ptr %1, !2834, !DIExpression(), !2838)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !2841
    #dbg_value(ptr %value1, !2835, !DIExpression(), !2838)
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212, !dbg !2842
  %2 = load i32, ptr %last_dquant, align 4, !dbg !2842
  %cmp.not = icmp ne i32 %2, 0, !dbg !2843
    #dbg_value(i1 %cmp.not, !2836, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2838)
  %delta_qp_contexts = getelementptr inbounds i8, ptr %1, i64 332, !dbg !2844
  %idx.ext = zext i1 %cmp.not to i64, !dbg !2845
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %delta_qp_contexts, i64 %idx.ext, !dbg !2845
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2846
    #dbg_value(i32 %call, !2837, !DIExpression(), !2838)
  %cmp1.not = icmp eq i32 %call, 0, !dbg !2847
  br i1 %cmp1.not, label %if.end9.sink.split, label %if.then, !dbg !2849

if.then:                                          ; preds = %entry
    #dbg_value(i32 2, !2836, !DIExpression(), !2838)
  %add.ptr5 = getelementptr inbounds i8, ptr %1, i64 340, !dbg !2850
    #dbg_value(ptr %dep_dp, !2797, !DIExpression(), !2852)
    #dbg_value(ptr %add.ptr5, !2802, !DIExpression(), !2852)
    #dbg_value(i32 1, !2803, !DIExpression(), !2852)
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr5) #12, !dbg !2854
    #dbg_value(i32 %call.i, !2804, !DIExpression(), !2852)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !2855
  br i1 %cmp.i, label %if.end9.sink.split, label %if.else.i, !dbg !2856

if.else.i:                                        ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 344, !dbg !2857
    #dbg_value(ptr %add.ptr.i, !2802, !DIExpression(), !2852)
    #dbg_value(i32 0, !2804, !DIExpression(), !2852)
  br label %do.body.i, !dbg !2858

do.body.i:                                        ; preds = %do.body.i, %if.else.i
  %symbol.0.i = phi i32 [ 0, %if.else.i ], [ %inc.i, %do.body.i ], !dbg !2859
    #dbg_value(i32 %symbol.0.i, !2804, !DIExpression(), !2852)
  %call1.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12, !dbg !2860
    #dbg_value(i32 %call1.i, !2805, !DIExpression(), !2859)
  %inc.i = add i32 %symbol.0.i, 1, !dbg !2861
    #dbg_value(i32 %inc.i, !2804, !DIExpression(), !2852)
  %cmp2.not.i = icmp eq i32 %call1.i, 0, !dbg !2862
  br i1 %cmp2.not.i, label %unary_bin_decode.exit, label %do.body.i, !dbg !2863, !llvm.loop !2864

unary_bin_decode.exit:                            ; preds = %do.body.i
    #dbg_value(i32 %inc.i, !2837, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2838)
  %add = add i32 %symbol.0.i, 3, !dbg !2866
  %shr = ashr i32 %add, 1, !dbg !2867
  store i32 %shr, ptr %value1, align 4, !dbg !2868
  %3 = and i32 %symbol.0.i, 1, !dbg !2869
  %cmp7.not.not = icmp eq i32 %3, 0, !dbg !2869
  br i1 %cmp7.not.not, label %if.then8, label %if.end9, !dbg !2871

if.then8:                                         ; preds = %unary_bin_decode.exit
  %sub = sub nsw i32 0, %shr, !dbg !2872
  br label %if.end9.sink.split, !dbg !2873

if.end9.sink.split:                               ; preds = %entry, %if.then, %if.then8
  %.sink = phi i32 [ %sub, %if.then8 ], [ 1, %if.then ], [ 0, %entry ]
  store i32 %.sink, ptr %value1, align 4, !dbg !2874
  br label %if.end9, !dbg !2875

if.end9:                                          ; preds = %if.end9.sink.split, %unary_bin_decode.exit
  %4 = phi i32 [ %shr, %unary_bin_decode.exit ], [ %.sink, %if.end9.sink.split ], !dbg !2876
  store i32 %4, ptr %last_dquant, align 4, !dbg !2875
  ret void, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local void @read_CBP_CABAC(ptr noundef %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !2878 {
entry:
  %block_a = alloca %struct.pix_pos, align 4, !DIAssignID !2897
    #dbg_assign(i1 undef, !2896, !DIExpression(), !2897, ptr %block_a, !DIExpression(), !2898)
    #dbg_value(ptr %currMB, !2880, !DIExpression(), !2898)
    #dbg_value(ptr %se, !2881, !DIExpression(), !2898)
    #dbg_value(ptr %dep_dp, !2882, !DIExpression(), !2898)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !2899
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !2899
    #dbg_value(ptr %0, !2883, !DIExpression(), !2898)
  %1 = load ptr, ptr %currMB, align 8, !dbg !2900
  %dec_picture2 = getelementptr inbounds i8, ptr %1, i64 13520, !dbg !2901
  %2 = load ptr, ptr %dec_picture2, align 8, !dbg !2901
    #dbg_value(ptr %2, !2884, !DIExpression(), !2898)
    #dbg_value(ptr %1, !2885, !DIExpression(), !2898)
  %tex_ctx = getelementptr inbounds i8, ptr %1, i64 328, !dbg !2902
  %3 = load ptr, ptr %tex_ctx, align 8, !dbg !2902
    #dbg_value(ptr %3, !2886, !DIExpression(), !2898)
    #dbg_value(ptr null, !2887, !DIExpression(), !2898)
    #dbg_value(i32 0, !2890, !DIExpression(), !2898)
    #dbg_value(i32 0, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2893, !DIExpression(), !2898)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12, !dbg !2903
    #dbg_value(i32 0, !2889, !DIExpression(), !2898)
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  %mb_data = getelementptr inbounds i8, ptr %1, i64 13512
  %mb_addr = getelementptr inbounds i8, ptr %block_a, i64 4
  %y = getelementptr inbounds i8, ptr %block_a, i64 10
  %cbp_contexts = getelementptr inbounds i8, ptr %3, i64 36
    #dbg_value(ptr null, !2887, !DIExpression(), !2898)
    #dbg_value(i32 0, !2893, !DIExpression(), !2898)
    #dbg_value(i32 0, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2889, !DIExpression(), !2898)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
    #dbg_value(ptr poison, !2887, !DIExpression(), !2898)
    #dbg_value(i32 0, !2893, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2889, !DIExpression(), !2898)
    #dbg_value(i32 0, !2893, !DIExpression(), !2898)
  %4 = load ptr, ptr %mb_up, align 8, !dbg !2904
    #dbg_value(ptr %4, !2887, !DIExpression(), !2898)
    #dbg_value(i32 0, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2888, !DIExpression(), !2898)
    #dbg_value(i32 0, !2893, !DIExpression(), !2898)
  %cmp10.not237 = icmp eq ptr %4, null
  %mb_type238 = getelementptr inbounds i8, ptr %4, i64 152
  %cbp15239 = getelementptr inbounds i8, ptr %4, i64 284
  br i1 %cmp10.not237, label %if.then28.us, label %if.then11.us, !dbg !2910

if.then11.us:                                     ; preds = %entry
  %5 = load i16, ptr %mb_type238, align 8, !dbg !2916
  %cmp12.not.us = icmp eq i16 %5, 14, !dbg !2920
  br i1 %cmp12.not.us, label %if.then28.us, label %if.then14.us, !dbg !2921

if.then14.us:                                     ; preds = %if.then11.us
  %6 = load i32, ptr %cbp15239, align 4, !dbg !2922
  %and.us = lshr i32 %6, 1, !dbg !2923
  %7 = and i32 %and.us, 2, !dbg !2923
  %cond.us = xor i32 %7, 2, !dbg !2923
    #dbg_value(i32 %cond.us, !2891, !DIExpression(), !2898)
  br label %if.then28.us, !dbg !2924

if.then28.us:                                     ; preds = %entry, %if.then11.us, %if.then14.us
  %b.3.us = phi i32 [ %cond.us, %if.then14.us ], [ 0, %if.then11.us ], [ 0, %entry ], !dbg !2925
    #dbg_value(i32 %b.3.us, !2891, !DIExpression(), !2898)
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !2926
  %8 = load i32, ptr %block_a, align 4, !dbg !2929
  %tobool.not.us = icmp eq i32 %8, 0, !dbg !2931
  br i1 %tobool.not.us, label %if.end61.us, label %if.then31.us, !dbg !2932

if.then31.us:                                     ; preds = %if.then28.us
  %9 = load ptr, ptr %mb_data, align 8, !dbg !2933
  %10 = load i32, ptr %mb_addr, align 4, !dbg !2936
  %idxprom.us = sext i32 %10 to i64, !dbg !2937
  %arrayidx32.us = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom.us, !dbg !2937
  %mb_type33.us = getelementptr inbounds i8, ptr %arrayidx32.us, i64 152, !dbg !2938
  %11 = load i16, ptr %mb_type33.us, align 8, !dbg !2938
  %cmp35.us = icmp eq i16 %11, 14, !dbg !2939
  br i1 %cmp35.us, label %if.end61.us, label %if.else38.us, !dbg !2940

if.else38.us:                                     ; preds = %if.then31.us
  %cbp43.us = getelementptr inbounds i8, ptr %arrayidx32.us, i64 284, !dbg !2941
  %12 = load i32, ptr %cbp43.us, align 4, !dbg !2941
  %13 = load i16, ptr %y, align 2, !dbg !2942
  %14 = sdiv i16 %13, 2, !dbg !2943
  %div45.us = sext i16 %14 to i32, !dbg !2943
  %mul.us = shl nsw i32 %div45.us, 1, !dbg !2944
  %shl47.us = shl nuw i32 2, %mul.us, !dbg !2945
  %and48.us = and i32 %shl47.us, %12, !dbg !2946
  %cmp49.us = icmp eq i32 %and48.us, 0, !dbg !2947
  %cond51.us = zext i1 %cmp49.us to i32, !dbg !2948
    #dbg_value(i32 %cond51.us, !2890, !DIExpression(), !2898)
  br label %if.end61.us

if.end61.us:                                      ; preds = %if.else38.us, %if.then31.us, %if.then28.us
  %a.0.us = phi i32 [ %cond51.us, %if.else38.us ], [ 0, %if.then31.us ], [ 0, %if.then28.us ], !dbg !2949
    #dbg_value(i32 %a.0.us, !2890, !DIExpression(), !2898)
  %add62.us = add nuw nsw i32 %a.0.us, %b.3.us, !dbg !2950
    #dbg_value(i32 %add62.us, !2892, !DIExpression(), !2898)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_shr, DW_OP_or, DW_OP_shl, DW_OP_stack_value), !2898)
  %idx.ext.us = zext nneg i32 %add62.us to i64, !dbg !2951
  %add.ptr.us = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.us, !dbg !2951
  %call.us = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.us) #12, !dbg !2952
    #dbg_value(i32 %call.us, !2894, !DIExpression(), !2898)
  %tobool68.not.us = icmp ne i32 %call.us, 0, !dbg !2953
  %add70.us = zext i1 %tobool68.not.us to i32, !dbg !2955
    #dbg_value(i32 %add70.us, !2893, !DIExpression(), !2898)
    #dbg_value(i32 %b.3.us, !2891, !DIExpression(), !2898)
    #dbg_value(i32 2, !2888, !DIExpression(), !2898)
  br i1 %cmp10.not237, label %for.inc73, label %if.then11.us.1, !dbg !2910

if.then11.us.1:                                   ; preds = %if.end61.us
  %15 = load i16, ptr %mb_type238, align 8, !dbg !2916
  %cmp12.not.us.1 = icmp eq i16 %15, 14, !dbg !2920
  br i1 %cmp12.not.us.1, label %for.inc73, label %if.then14.us.1, !dbg !2921

if.then14.us.1:                                   ; preds = %if.then11.us.1
  %16 = load i32, ptr %cbp15239, align 4, !dbg !2922
  %and.us.1 = lshr i32 %16, 2, !dbg !2923
  %17 = and i32 %and.us.1, 2, !dbg !2923
  %cond.us.1 = xor i32 %17, 2, !dbg !2923
    #dbg_value(i32 %cond.us.1, !2891, !DIExpression(), !2898)
  br label %for.inc73, !dbg !2924

if.then31:                                        ; preds = %for.inc73
  %18 = load ptr, ptr %mb_data, align 8, !dbg !2933
  %19 = load i32, ptr %mb_addr, align 4, !dbg !2936
  %idxprom = sext i32 %19 to i64, !dbg !2937
  %arrayidx32 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom, !dbg !2937
  %mb_type33 = getelementptr inbounds i8, ptr %arrayidx32, i64 152, !dbg !2938
  %20 = load i16, ptr %mb_type33, align 8, !dbg !2938
  %cmp35 = icmp eq i16 %20, 14, !dbg !2939
  br i1 %cmp35, label %for.end75, label %if.else38, !dbg !2940

if.else38:                                        ; preds = %if.then31
  %cbp43 = getelementptr inbounds i8, ptr %arrayidx32, i64 284, !dbg !2941
  %21 = load i32, ptr %cbp43, align 4, !dbg !2941
  %22 = load i16, ptr %y, align 2, !dbg !2942
  %23 = sdiv i16 %22, 2, !dbg !2943
  %div45 = sext i16 %23 to i32, !dbg !2943
  %mul = shl nsw i32 %div45, 1, !dbg !2944
  %shl47 = shl nuw i32 2, %mul, !dbg !2945
  %and48 = and i32 %shl47, %21, !dbg !2946
  %cmp49 = icmp eq i32 %and48, 0, !dbg !2947
  %cond51 = zext i1 %cmp49 to i64, !dbg !2948
    #dbg_value(i1 %cmp49, !2890, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2898)
  br label %for.end75

for.inc73:                                        ; preds = %if.end61.us, %if.then11.us.1, %if.then14.us.1
  %b.3.us.1 = phi i32 [ %cond.us.1, %if.then14.us.1 ], [ %b.3.us, %if.then11.us.1 ], [ %b.3.us, %if.end61.us ], !dbg !2925
    #dbg_value(i32 %b.3.us.1, !2891, !DIExpression(), !2898)
    #dbg_value(i32 %add70.us, !2890, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_constu, 1, DW_OP_xor, DW_OP_stack_value), !2898)
    #dbg_value(i32 %add70.us, !2890, !DIExpression(DW_OP_constu, 1, DW_OP_xor, DW_OP_stack_value), !2898)
  %cond60.us.1 = xor i32 %add70.us, 1, !dbg !2956
    #dbg_value(i32 %cond60.us.1, !2890, !DIExpression(), !2898)
  %add62.us.1 = add nuw nsw i32 %cond60.us.1, %b.3.us.1, !dbg !2950
    #dbg_value(i32 %add62.us.1, !2892, !DIExpression(), !2898)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_shr, DW_OP_or, DW_OP_shl, DW_OP_stack_value), !2898)
  %idx.ext.us.1 = zext nneg i32 %add62.us.1 to i64, !dbg !2951
  %add.ptr.us.1 = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.us.1, !dbg !2951
  %call.us.1 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.us.1) #12, !dbg !2952
    #dbg_value(i32 %call.us.1, !2894, !DIExpression(), !2898)
  %tobool68.not.us.1 = icmp eq i32 %call.us.1, 0, !dbg !2953
  %add70.us.1 = select i1 %tobool68.not.us.1, i32 0, i32 2, !dbg !2955
    #dbg_value(i32 4, !2888, !DIExpression(), !2898)
    #dbg_value(ptr poison, !2887, !DIExpression(), !2898)
    #dbg_value(!DIArgList(i32 %add70.us.1, i32 %add70.us), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2889, !DIExpression(), !2898)
    #dbg_value(ptr poison, !2887, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2888, !DIExpression(), !2898)
    #dbg_value(!DIArgList(i32 %add70.us.1, i32 %add70.us), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
  %and21 = select i1 %tobool68.not.us, i64 2, i64 0, !dbg !2957
    #dbg_value(i32 poison, !2891, !DIExpression(DW_OP_constu, 2, DW_OP_xor, DW_OP_stack_value), !2898)
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 8, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !2926
  %24 = load i32, ptr %block_a, align 4, !dbg !2929
  %tobool.not = icmp eq i32 %24, 0, !dbg !2931
  br i1 %tobool.not, label %for.end75, label %if.then31, !dbg !2932

for.end75:                                        ; preds = %if.else38, %if.then31, %for.inc73
  %a.0 = phi i64 [ %cond51, %if.else38 ], [ 0, %if.then31 ], [ 0, %for.inc73 ], !dbg !2949
    #dbg_value(i32 poison, !2890, !DIExpression(), !2898)
  %25 = or disjoint i64 %and21, %a.0, !dbg !2950
  %add62 = xor i64 %25, 2, !dbg !2950
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_shr, DW_OP_or, DW_OP_shl, DW_OP_stack_value), !2898)
    #dbg_value(i64 %add62, !2892, !DIExpression(), !2898)
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %add62, !dbg !2951
  %call = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !2952
    #dbg_value(i32 %call, !2894, !DIExpression(), !2898)
  %tobool68.not = icmp eq i32 %call, 0, !dbg !2953
  %add70 = select i1 %tobool68.not, i32 0, i32 4, !dbg !2955
    #dbg_value(!DIArgList(i32 %add70.us.1, i32 %add70.us, i32 %add70), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2898)
    #dbg_value(i32 2, !2888, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 %add70.us.1, !2891, !DIExpression(DW_OP_constu, 2, DW_OP_xor, DW_OP_stack_value), !2898)
    #dbg_value(!DIArgList(i32 %add70.us.1, i32 2, i32 %add70.us, i32 %add70), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2898)
  %26 = xor i32 %add70, -1, !dbg !2956
    #dbg_value(!DIArgList(i32 %add70.us.1, i32 2, i32 %add70), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2898)
  %27 = lshr i32 %26, 2, !dbg !2956
    #dbg_value(i32 %27, !2890, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !2898)
  %cond60.1 = and i32 %27, 1, !dbg !2956
    #dbg_value(i32 %cond60.1, !2890, !DIExpression(), !2898)
  %28 = or disjoint i32 %add70.us.1, %cond60.1, !dbg !2950
  %add62.1 = xor i32 %28, 2, !dbg !2950
    #dbg_value(i32 %add62.1, !2892, !DIExpression(), !2898)
  %idx.ext.1 = zext nneg i32 %add62.1 to i64, !dbg !2951
  %add.ptr.1 = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.1, !dbg !2951
  %call.1 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.1) #12, !dbg !2952
    #dbg_value(i32 %call.1, !2894, !DIExpression(), !2898)
  %tobool68.not.1 = icmp eq i32 %call.1, 0, !dbg !2953
  %add70.1 = select i1 %tobool68.not.1, i32 0, i32 8, !dbg !2955
  %29 = or disjoint i32 %add70, %add70.1, !dbg !2955
  %30 = or disjoint i32 %29, %add70.us.1, !dbg !2955
  %cbp.2.1 = or disjoint i32 %30, %add70.us, !dbg !2955
    #dbg_value(i32 4, !2888, !DIExpression(), !2898)
    #dbg_value(ptr poison, !2887, !DIExpression(), !2898)
    #dbg_value(i32 %cbp.2.1, !2893, !DIExpression(), !2898)
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 2, !2889, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !2898)
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268, !dbg !2958
  %31 = load i32, ptr %chroma_format_idc, align 4, !dbg !2958
  switch i32 %31, label %if.then81 [
    i32 0, label %if.end163
    i32 3, label %if.end163
  ], !dbg !2960

if.then81:                                        ; preds = %for.end75
    #dbg_value(i32 0, !2891, !DIExpression(), !2898)
  %32 = load ptr, ptr %mb_up, align 8, !dbg !2961
    #dbg_value(ptr %32, !2887, !DIExpression(), !2898)
  %cmp83.not = icmp eq ptr %32, null, !dbg !2963
  br i1 %cmp83.not, label %if.end95, label %if.then85, !dbg !2965

if.then85:                                        ; preds = %if.then81
  %mb_type86 = getelementptr inbounds i8, ptr %32, i64 152, !dbg !2966
  %33 = load i16, ptr %mb_type86, align 8, !dbg !2966
  %cmp88 = icmp eq i16 %33, 14, !dbg !2969
  br i1 %cmp88, label %if.then93, label %lor.lhs.false, !dbg !2970

lor.lhs.false:                                    ; preds = %if.then85
  %cbp90 = getelementptr inbounds i8, ptr %32, i64 284, !dbg !2971
  %34 = load i32, ptr %cbp90, align 4, !dbg !2971
  %cmp91 = icmp sgt i32 %34, 15, !dbg !2972
  br i1 %cmp91, label %if.then93, label %if.end95, !dbg !2973

if.then93:                                        ; preds = %lor.lhs.false, %if.then85
    #dbg_value(i32 2, !2891, !DIExpression(), !2898)
  br label %if.end95, !dbg !2974

if.end95:                                         ; preds = %lor.lhs.false, %if.then93, %if.then81
  %b.4 = phi i64 [ 2, %if.then93 ], [ 0, %lor.lhs.false ], [ 0, %if.then81 ], !dbg !2975
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2890, !DIExpression(), !2898)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !2976
  %35 = load ptr, ptr %mb_left, align 8, !dbg !2976
    #dbg_value(ptr %35, !2887, !DIExpression(), !2898)
  %cmp96.not = icmp eq ptr %35, null, !dbg !2977
  br i1 %cmp96.not, label %if.end109, label %if.then98, !dbg !2979

if.then98:                                        ; preds = %if.end95
  %mb_type99 = getelementptr inbounds i8, ptr %35, i64 152, !dbg !2980
  %36 = load i16, ptr %mb_type99, align 8, !dbg !2980
  %cmp101 = icmp eq i16 %36, 14, !dbg !2983
  br i1 %cmp101, label %if.then107, label %lor.lhs.false103, !dbg !2984

lor.lhs.false103:                                 ; preds = %if.then98
  %cbp104 = getelementptr inbounds i8, ptr %35, i64 284, !dbg !2985
  %37 = load i32, ptr %cbp104, align 4, !dbg !2985
  %cmp105 = icmp sgt i32 %37, 15, !dbg !2986
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !2987

if.then107:                                       ; preds = %lor.lhs.false103, %if.then98
    #dbg_value(i32 1, !2890, !DIExpression(), !2898)
  br label %if.end109, !dbg !2988

if.end109:                                        ; preds = %lor.lhs.false103, %if.then107, %if.end95
  %a.1 = phi i64 [ 1, %if.then107 ], [ 0, %lor.lhs.false103 ], [ 0, %if.end95 ], !dbg !2975
    #dbg_value(i32 poison, !2890, !DIExpression(), !2898)
  %add110 = or disjoint i64 %a.1, %b.4, !dbg !2989
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2898)
  %arrayidx112 = getelementptr inbounds i8, ptr %3, i64 52, !dbg !2990
  %add.ptr115 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx112, i64 %add110, !dbg !2991
  %call116 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr115) #12, !dbg !2992
    #dbg_value(i32 %call116, !2894, !DIExpression(), !2898)
  %tobool117.not = icmp eq i32 %call116, 0, !dbg !2993
  br i1 %tobool117.not, label %if.end163, label %if.then118, !dbg !2995

if.then118:                                       ; preds = %if.end109
    #dbg_value(i32 0, !2891, !DIExpression(), !2898)
  %38 = load ptr, ptr %mb_up, align 8, !dbg !2996
    #dbg_value(ptr %38, !2887, !DIExpression(), !2898)
  %cmp120.not = icmp eq ptr %38, null, !dbg !2998
  br i1 %cmp120.not, label %if.end134, label %if.then122, !dbg !3000

if.then122:                                       ; preds = %if.then118
  %mb_type123 = getelementptr inbounds i8, ptr %38, i64 152, !dbg !3001
  %39 = load i16, ptr %mb_type123, align 8, !dbg !3001
  %cmp125 = icmp eq i16 %39, 14, !dbg !3004
  br i1 %cmp125, label %if.then132, label %lor.lhs.false127, !dbg !3005

lor.lhs.false127:                                 ; preds = %if.then122
  %cbp128 = getelementptr inbounds i8, ptr %38, i64 284, !dbg !3006
  %40 = load i32, ptr %cbp128, align 4, !dbg !3006
  %shr129.mask = and i32 %40, -16, !dbg !3007
  %cmp130 = icmp eq i32 %shr129.mask, 32, !dbg !3007
  br i1 %cmp130, label %if.then132, label %if.end134, !dbg !3008

if.then132:                                       ; preds = %lor.lhs.false127, %if.then122
    #dbg_value(i32 2, !2891, !DIExpression(), !2898)
  br label %if.end134, !dbg !3009

if.end134:                                        ; preds = %lor.lhs.false127, %if.then132, %if.then118
  %b.5 = phi i64 [ 2, %if.then132 ], [ 0, %lor.lhs.false127 ], [ 0, %if.then118 ], !dbg !3010
    #dbg_value(i32 poison, !2891, !DIExpression(), !2898)
    #dbg_value(i32 0, !2890, !DIExpression(), !2898)
  %41 = load ptr, ptr %mb_left, align 8, !dbg !3011
    #dbg_value(ptr %41, !2887, !DIExpression(), !2898)
  %cmp136.not = icmp eq ptr %41, null, !dbg !3012
  br i1 %cmp136.not, label %if.end150, label %if.then138, !dbg !3014

if.then138:                                       ; preds = %if.end134
  %mb_type139 = getelementptr inbounds i8, ptr %41, i64 152, !dbg !3015
  %42 = load i16, ptr %mb_type139, align 8, !dbg !3015
  %cmp141 = icmp eq i16 %42, 14, !dbg !3018
  br i1 %cmp141, label %if.then148, label %lor.lhs.false143, !dbg !3019

lor.lhs.false143:                                 ; preds = %if.then138
  %cbp144 = getelementptr inbounds i8, ptr %41, i64 284, !dbg !3020
  %43 = load i32, ptr %cbp144, align 4, !dbg !3020
  %shr145.mask = and i32 %43, -16, !dbg !3021
  %cmp146 = icmp eq i32 %shr145.mask, 32, !dbg !3021
  br i1 %cmp146, label %if.then148, label %if.end150, !dbg !3022

if.then148:                                       ; preds = %lor.lhs.false143, %if.then138
    #dbg_value(i32 1, !2890, !DIExpression(), !2898)
  br label %if.end150, !dbg !3023

if.end150:                                        ; preds = %lor.lhs.false143, %if.then148, %if.end134
  %a.2 = phi i64 [ 1, %if.then148 ], [ 0, %lor.lhs.false143 ], [ 0, %if.end134 ], !dbg !3010
    #dbg_value(i32 poison, !2890, !DIExpression(), !2898)
  %add151 = or disjoint i64 %a.2, %b.5, !dbg !3024
    #dbg_value(!DIArgList(i32 poison, i32 poison), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !2898)
  %arrayidx153 = getelementptr inbounds i8, ptr %3, i64 68, !dbg !3025
  %add.ptr156 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx153, i64 %add151, !dbg !3026
  %call157 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr156) #12, !dbg !3027
    #dbg_value(i32 %call157, !2894, !DIExpression(), !2898)
  %cmp158 = icmp eq i32 %call157, 1, !dbg !3028
  %cond160 = select i1 %cmp158, i32 32, i32 16, !dbg !3029
  %add161 = or disjoint i32 %cond160, %cbp.2.1, !dbg !3030
    #dbg_value(i32 %add161, !2893, !DIExpression(), !2898)
  br label %if.end163, !dbg !3031

if.end163:                                        ; preds = %for.end75, %for.end75, %if.end109, %if.end150
  %cbp.3 = phi i32 [ %add161, %if.end150 ], [ %cbp.2.1, %if.end109 ], [ %cbp.2.1, %for.end75 ], [ %cbp.2.1, %for.end75 ], !dbg !2898
    #dbg_value(i32 %cbp.3, !2893, !DIExpression(), !2898)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !3032
  store i32 %cbp.3, ptr %value1, align 4, !dbg !3033
  %tobool164.not = icmp eq i32 %cbp.3, 0, !dbg !3034
  br i1 %tobool164.not, label %if.then165, label %if.end166, !dbg !3036

if.then165:                                       ; preds = %if.end163
  %last_dquant = getelementptr inbounds i8, ptr %1, i64 212, !dbg !3037
  store i32 0, ptr %last_dquant, align 4, !dbg !3039
  br label %if.end166, !dbg !3040

if.end166:                                        ; preds = %if.then165, %if.end163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12, !dbg !3041
  ret void, !dbg !3041
}

; Function Attrs: nounwind uwtable
define dso_local void @readCIPredMode_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !3042 {
entry:
    #dbg_value(ptr %currMB, !3044, !DIExpression(), !3055)
    #dbg_value(ptr %se, !3045, !DIExpression(), !3055)
    #dbg_value(ptr %dep_dp, !3046, !DIExpression(), !3055)
  %0 = load ptr, ptr %currMB, align 8, !dbg !3056
    #dbg_value(ptr %0, !3047, !DIExpression(), !3055)
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328, !dbg !3057
  %1 = load ptr, ptr %tex_ctx, align 8, !dbg !3057
    #dbg_value(ptr %1, !3048, !DIExpression(), !3055)
  %value1 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !3058
    #dbg_value(ptr %value1, !3049, !DIExpression(), !3055)
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120, !dbg !3059
  %2 = load ptr, ptr %mb_up, align 8, !dbg !3059
    #dbg_value(ptr %2, !3050, !DIExpression(), !3055)
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128, !dbg !3060
  %3 = load ptr, ptr %mb_left, align 8, !dbg !3060
    #dbg_value(ptr %3, !3051, !DIExpression(), !3055)
  %cmp.not = icmp eq ptr %2, null, !dbg !3061
  br i1 %cmp.not, label %cond.end, label %cond.true, !dbg !3062

cond.true:                                        ; preds = %entry
  %c_ipred_mode = getelementptr inbounds i8, ptr %2, i64 373, !dbg !3063
  %4 = load i8, ptr %c_ipred_mode, align 1, !dbg !3063
  %cmp1.not = icmp eq i8 %4, 0, !dbg !3064
  br i1 %cmp1.not, label %cond.end, label %land.rhs, !dbg !3065

land.rhs:                                         ; preds = %cond.true
  %mb_type = getelementptr inbounds i8, ptr %2, i64 152, !dbg !3066
  %5 = load i16, ptr %mb_type, align 8, !dbg !3066
  %cmp4 = icmp ne i16 %5, 14, !dbg !3067
  %6 = zext i1 %cmp4 to i64, !dbg !3068
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %entry
  %cond6 = phi i64 [ 0, %entry ], [ 0, %cond.true ], [ %6, %land.rhs ], !dbg !3062
    #dbg_value(i32 poison, !3052, !DIExpression(), !3055)
  %cmp7.not = icmp eq ptr %3, null, !dbg !3069
  br i1 %cmp7.not, label %cond.end22, label %cond.true9, !dbg !3070

cond.true9:                                       ; preds = %cond.end
  %c_ipred_mode10 = getelementptr inbounds i8, ptr %3, i64 373, !dbg !3071
  %7 = load i8, ptr %c_ipred_mode10, align 1, !dbg !3071
  %cmp12.not = icmp eq i8 %7, 0, !dbg !3072
  br i1 %cmp12.not, label %cond.end22, label %land.rhs14, !dbg !3073

land.rhs14:                                       ; preds = %cond.true9
  %mb_type15 = getelementptr inbounds i8, ptr %3, i64 152, !dbg !3074
  %8 = load i16, ptr %mb_type15, align 8, !dbg !3074
  %cmp17 = icmp ne i16 %8, 14, !dbg !3075
  %9 = zext i1 %cmp17 to i64, !dbg !3076
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true9, %land.rhs14, %cond.end
  %cond23 = phi i64 [ 0, %cond.end ], [ 0, %cond.true9 ], [ %9, %land.rhs14 ], !dbg !3070
    #dbg_value(i32 poison, !3053, !DIExpression(), !3055)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3055)
  %cipr_contexts = getelementptr inbounds i8, ptr %1, i64 20, !dbg !3077
  %10 = getelementptr inbounds %struct.BiContextType, ptr %cipr_contexts, i64 %cond23, !dbg !3078
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %10, i64 %cond6, !dbg !3078
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !3079
  store i32 %call, ptr %value1, align 4, !dbg !3080
  %cmp24.not = icmp eq i32 %call, 0, !dbg !3081
  br i1 %cmp24.not, label %if.end, label %if.then, !dbg !3083

if.then:                                          ; preds = %cond.end22
  %add.ptr28 = getelementptr inbounds i8, ptr %1, i64 32, !dbg !3084
    #dbg_value(ptr %dep_dp, !3085, !DIExpression(), !3097)
    #dbg_value(ptr %add.ptr28, !3090, !DIExpression(), !3097)
    #dbg_value(i32 0, !3091, !DIExpression(), !3097)
    #dbg_value(i32 1, !3092, !DIExpression(), !3097)
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28) #12, !dbg !3099
    #dbg_value(i32 %call.i, !3093, !DIExpression(), !3097)
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !3100
  br i1 %cmp.i, label %unary_bin_max_decode.exit, label %do.body.i, !dbg !3101

do.body.i:                                        ; preds = %if.then
    #dbg_value(ptr %add.ptr28, !3090, !DIExpression(), !3097)
    #dbg_value(i32 0, !3093, !DIExpression(), !3097)
    #dbg_value(ptr %add.ptr28, !3090, !DIExpression(), !3097)
    #dbg_value(i32 0, !3093, !DIExpression(), !3097)
  %call2.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28) #12, !dbg !3102
    #dbg_value(i32 %call2.i, !3094, !DIExpression(), !3104)
    #dbg_value(i32 1, !3093, !DIExpression(), !3097)
  %cmp3.not.i = icmp eq i32 %call2.i, 0, !dbg !3105
    #dbg_value(i32 poison, !3093, !DIExpression(), !3097)
  %11 = select i1 %cmp3.not.i, i32 2, i32 3, !dbg !3106
  br label %unary_bin_max_decode.exit

unary_bin_max_decode.exit:                        ; preds = %if.then, %do.body.i
  %retval.0.i = phi i32 [ %11, %do.body.i ], [ 1, %if.then ], !dbg !3107
  store i32 %retval.0.i, ptr %value1, align 4, !dbg !3108
  br label %if.end, !dbg !3109

if.end:                                           ; preds = %unary_bin_max_decode.exit, %cond.end22
  ret void, !dbg !3110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_read_and_store_CBP(ptr nocapture noundef readonly %currMB, i32 noundef %chroma_format_idc) local_unnamed_addr #8 !dbg !3111 {
entry:
    #dbg_value(ptr %currMB, !3116, !DIExpression(), !3118)
    #dbg_value(i32 %chroma_format_idc, !3117, !DIExpression(), !3118)
  %cmp = icmp eq i32 %chroma_format_idc, 3, !dbg !3119
  %0 = load ptr, ptr %currMB, align 8, !dbg !3121
  %read_and_store_CBP_block_bit = getelementptr inbounds i8, ptr %0, i64 456, !dbg !3121
  %read_and_store_CBP_block_bit_444.read_and_store_CBP_block_bit_normal = select i1 %cmp, ptr @read_and_store_CBP_block_bit_444, ptr @read_and_store_CBP_block_bit_normal
  store ptr %read_and_store_CBP_block_bit_444.read_and_store_CBP_block_bit_normal, ptr %read_and_store_CBP_block_bit, align 8, !dbg !3121
  ret void, !dbg !3122
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_444(ptr noundef %currMB, ptr noundef %dep_dp, i32 noundef %type) #0 !dbg !3123 {
entry:
  %block_a = alloca %struct.pix_pos, align 4, !DIAssignID !3154
    #dbg_assign(i1 undef, !3152, !DIExpression(), !3154, ptr %block_a, !DIExpression(), !3155)
  %block_b = alloca %struct.pix_pos, align 4, !DIAssignID !3156
    #dbg_assign(i1 undef, !3153, !DIExpression(), !3156, ptr %block_b, !DIExpression(), !3155)
    #dbg_value(ptr %currMB, !3127, !DIExpression(), !3155)
    #dbg_value(ptr %dep_dp, !3128, !DIExpression(), !3155)
    #dbg_value(i32 %type, !3129, !DIExpression(), !3155)
  %0 = load ptr, ptr %currMB, align 8, !dbg !3157
    #dbg_value(ptr %0, !3130, !DIExpression(), !3155)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !3158
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !3158
    #dbg_value(ptr %1, !3131, !DIExpression(), !3155)
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520, !dbg !3159
  %2 = load ptr, ptr %dec_picture2, align 8, !dbg !3159
    #dbg_value(ptr %2, !3132, !DIExpression(), !3155)
  %tex_ctx3 = getelementptr inbounds i8, ptr %0, i64 328, !dbg !3160
  %3 = load ptr, ptr %tex_ctx3, align 8, !dbg !3160
    #dbg_value(ptr %3, !3133, !DIExpression(), !3155)
  %mb_data4 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !3161
  %4 = load ptr, ptr %mb_data4, align 8, !dbg !3161
    #dbg_value(ptr %4, !3134, !DIExpression(), !3155)
  %cmp5 = icmp eq i32 %type, 2
  %cmp15 = icmp eq i32 %type, 12
  %5 = icmp ult i32 %type, 22, !dbg !3162
  %switch.cast = trunc i32 %type to i22, !dbg !3162
  %switch.downshift = lshr i22 -67522, %switch.cast, !dbg !3162
  %switch.masked = trunc i22 %switch.downshift to i1, !dbg !3162
  %6 = select i1 %5, i1 %switch.masked, i1 false, !dbg !3162
    #dbg_value(i1 %6, !3135, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  %7 = icmp ult i32 %type, 17, !dbg !3163
  %switch.cast1031 = trunc i32 %type to i17, !dbg !3163
  %switch.downshift1033 = lshr i17 -64511, %switch.cast1031, !dbg !3163
  %switch.masked1034 = trunc i17 %switch.downshift1033 to i1, !dbg !3163
  %8 = select i1 %7, i1 %switch.masked1034, i1 false, !dbg !3163
    #dbg_value(i1 %8, !3136, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  switch i32 %type, label %land.end63 [
    i32 7, label %land.end43.thread
    i32 8, label %land.rhs60
    i32 6, label %land.rhs60
    i32 9, label %land.rhs60
  ], !dbg !3164

land.end43.thread:                                ; preds = %entry
  %is_v_block = getelementptr inbounds i8, ptr %currMB, i64 100, !dbg !3165
  %9 = load i32, ptr %is_v_block, align 4, !dbg !3165
  %tobool.not = icmp eq i32 %9, 0, !dbg !3166
    #dbg_value(i1 %tobool.not, !3137, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  %tobool42 = icmp ne i32 %9, 0, !dbg !3167
    #dbg_value(i1 %tobool42, !3138, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  br label %land.end63, !dbg !3168

land.rhs60:                                       ; preds = %entry, %entry, %entry
    #dbg_value(i1 true, !3139, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  %is_v_block54 = getelementptr inbounds i8, ptr %currMB, i64 100, !dbg !3169
  %10 = load i32, ptr %is_v_block54, align 4, !dbg !3169
  %tobool55.not = icmp eq i32 %10, 0, !dbg !3170
    #dbg_value(i1 %tobool55.not, !3140, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  %tobool62 = icmp ne i32 %10, 0, !dbg !3171
  br label %land.end63

land.end63:                                       ; preds = %entry, %land.end43.thread, %land.rhs60
  %11 = phi i1 [ %tobool55.not, %land.rhs60 ], [ false, %land.end43.thread ], [ false, %entry ]
  %12 = phi i1 [ false, %land.rhs60 ], [ %tobool42, %land.end43.thread ], [ false, %entry ]
  %13 = phi i1 [ false, %land.rhs60 ], [ %tobool.not, %land.end43.thread ], [ false, %entry ]
  %14 = phi i1 [ %tobool62, %land.rhs60 ], [ false, %land.end43.thread ], [ false, %entry ], !dbg !3155
    #dbg_value(i1 %14, !3141, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3155)
  %or.cond703 = select i1 %6, i1 true, i1 %13, !dbg !3172
  %or.cond704 = select i1 %or.cond703, i1 true, i1 %12, !dbg !3172
  br i1 %or.cond704, label %cond.true75, label %cond.end77, !dbg !3172

cond.true75:                                      ; preds = %land.end63
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3173
  %15 = load i32, ptr %subblock_y, align 8, !dbg !3173
    #dbg_value(i32 %15, !3142, !DIExpression(), !3155)
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3174
  %16 = load i32, ptr %subblock_x, align 4, !dbg !3174
  br label %cond.end77, !dbg !3175

cond.end77:                                       ; preds = %land.end63, %cond.true75
  %cond1014 = phi i32 [ %15, %cond.true75 ], [ 0, %land.end63 ]
  %cond78 = phi i32 [ %16, %cond.true75 ], [ 0, %land.end63 ], !dbg !3175
    #dbg_value(i32 %cond78, !3143, !DIExpression(), !3155)
  %brmerge = or i1 %6, %8, !dbg !3176
  %not. = xor i1 %8, true, !dbg !3176
  %.mux = zext i1 %not. to i32, !dbg !3176
  %cond92 = select i1 %13, i32 19, i32 35, !dbg !3176
  %spec.select = select i1 %14, i32 18, i32 %cond92, !dbg !3176
  %.mux.mux = select i1 %11, i32 17, i32 %spec.select, !dbg !3176
  %cond100 = select i1 %brmerge, i32 %.mux, i32 %.mux.mux, !dbg !3176
    #dbg_value(i32 %cond100, !3144, !DIExpression(), !3155)
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3177
  %17 = load i32, ptr %is_intra_block, align 8, !dbg !3177
  %tobool101.not = icmp ne i32 %17, 0, !dbg !3178
  %cond102 = zext i1 %tobool101.not to i32, !dbg !3178
    #dbg_value(i32 %cond102, !3145, !DIExpression(), !3155)
    #dbg_value(i32 %cond102, !3146, !DIExpression(), !3155)
    #dbg_value(i32 %cond102, !3147, !DIExpression(), !3155)
    #dbg_value(i32 1, !3148, !DIExpression(), !3155)
    #dbg_value(i32 0, !3150, !DIExpression(), !3155)
    #dbg_value(i32 0, !3151, !DIExpression(), !3155)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12, !dbg !3179
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12, !dbg !3179
  br i1 %6, label %if.then, label %if.else, !dbg !3180

if.then:                                          ; preds = %cond.end77
  %sub = add nsw i32 %cond78, -1, !dbg !3181
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3184
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %cond1014, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !3185
  %sub104 = add nsw i32 %cond1014, -1, !dbg !3186
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub104, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12, !dbg !3187
  %18 = load i32, ptr %block_a, align 4, !dbg !3188
  %tobool108.not = icmp eq i32 %18, 0, !dbg !3190
  %y = getelementptr inbounds i8, ptr %block_a, i64 10, !dbg !3191
  %19 = load i16, ptr %y, align 2, !dbg !3191
  %conv = sext i16 %19 to i32, !dbg !3191
  %mul = shl nsw i32 %conv, 2, !dbg !3191
  %x = getelementptr inbounds i8, ptr %block_a, i64 8, !dbg !3191
  %20 = load i16, ptr %x, align 4, !dbg !3191
  %conv110 = sext i16 %20 to i32, !dbg !3191
  %add = add nsw i32 %mul, %conv110, !dbg !3191
  %bit_pos_a.0 = select i1 %tobool108.not, i32 0, i32 %add, !dbg !3191
    #dbg_value(i32 %bit_pos_a.0, !3150, !DIExpression(), !3155)
  %21 = load i32, ptr %block_b, align 4, !dbg !3192
  %tobool112.not = icmp eq i32 %21, 0, !dbg !3194
  br i1 %tobool112.not, label %if.end175, label %if.then113, !dbg !3195

if.then113:                                       ; preds = %if.then
  %y114 = getelementptr inbounds i8, ptr %block_b, i64 10, !dbg !3196
  %22 = load i16, ptr %y114, align 2, !dbg !3196
  %conv115 = sext i16 %22 to i32, !dbg !3197
  %mul116 = shl nsw i32 %conv115, 2, !dbg !3198
  %x117 = getelementptr inbounds i8, ptr %block_b, i64 8, !dbg !3199
  %23 = load i16, ptr %x117, align 4, !dbg !3199
  %conv118 = sext i16 %23 to i32, !dbg !3200
  %add119 = add nsw i32 %mul116, %conv118, !dbg !3201
    #dbg_value(i32 %add119, !3151, !DIExpression(), !3155)
  br label %if.end175, !dbg !3202

if.else:                                          ; preds = %cond.end77
  br i1 %8, label %if.then122, label %if.else131, !dbg !3203

if.then122:                                       ; preds = %if.else
  %sub123 = add nsw i32 %cond78, -1, !dbg !3204
  %mb_size124 = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3207
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub123, i32 noundef %cond1014, ptr noundef nonnull %mb_size124, ptr noundef nonnull %block_a) #12, !dbg !3208
  %sub127 = add nsw i32 %cond1014, -1, !dbg !3209
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub127, ptr noundef nonnull %mb_size124, ptr noundef nonnull %block_b) #12, !dbg !3210
  br label %if.end175, !dbg !3211

if.else131:                                       ; preds = %if.else
  %or.cond707 = select i1 %13, i1 true, i1 %12, !dbg !3212
  %sub136 = add nsw i32 %cond78, -1, !dbg !3214
  %arrayidx138 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !3214
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub136, i32 noundef %cond1014, ptr noundef nonnull %arrayidx138, ptr noundef nonnull %block_a) #12, !dbg !3214
  %sub140 = add nsw i32 %cond1014, -1, !dbg !3214
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub140, ptr noundef nonnull %arrayidx138, ptr noundef nonnull %block_b) #12, !dbg !3214
  br i1 %or.cond707, label %if.then135, label %if.end175, !dbg !3212

if.then135:                                       ; preds = %if.else131
  %24 = load i32, ptr %block_a, align 4, !dbg !3215
  %tobool145.not = icmp eq i32 %24, 0, !dbg !3218
  %y147 = getelementptr inbounds i8, ptr %block_a, i64 10, !dbg !3219
  %25 = load i16, ptr %y147, align 2, !dbg !3219
  %conv148 = sext i16 %25 to i32, !dbg !3219
  %mul149 = shl nsw i32 %conv148, 2, !dbg !3219
  %x150 = getelementptr inbounds i8, ptr %block_a, i64 8, !dbg !3219
  %26 = load i16, ptr %x150, align 4, !dbg !3219
  %conv151 = sext i16 %26 to i32, !dbg !3219
  %add152 = add nsw i32 %mul149, %conv151, !dbg !3219
  %bit_pos_a.1 = select i1 %tobool145.not, i32 0, i32 %add152, !dbg !3219
    #dbg_value(i32 %bit_pos_a.1, !3150, !DIExpression(), !3155)
  %27 = load i32, ptr %block_b, align 4, !dbg !3220
  %tobool155.not = icmp eq i32 %27, 0, !dbg !3222
  br i1 %tobool155.not, label %if.end175, label %if.then156, !dbg !3223

if.then156:                                       ; preds = %if.then135
  %y157 = getelementptr inbounds i8, ptr %block_b, i64 10, !dbg !3224
  %28 = load i16, ptr %y157, align 2, !dbg !3224
  %conv158 = sext i16 %28 to i32, !dbg !3225
  %mul159 = shl nsw i32 %conv158, 2, !dbg !3226
  %x160 = getelementptr inbounds i8, ptr %block_b, i64 8, !dbg !3227
  %29 = load i16, ptr %x160, align 4, !dbg !3227
  %conv161 = sext i16 %29 to i32, !dbg !3228
  %add162 = add nsw i32 %mul159, %conv161, !dbg !3229
    #dbg_value(i32 %add162, !3151, !DIExpression(), !3155)
  br label %if.end175, !dbg !3230

if.end175:                                        ; preds = %if.else131, %if.then122, %if.then135, %if.then156, %if.then, %if.then113
  %bit_pos_a.2 = phi i32 [ %bit_pos_a.0, %if.then113 ], [ %bit_pos_a.0, %if.then ], [ 0, %if.then122 ], [ %bit_pos_a.1, %if.then156 ], [ %bit_pos_a.1, %if.then135 ], [ 0, %if.else131 ], !dbg !3155
  %bit_pos_b.0 = phi i32 [ %add119, %if.then113 ], [ 0, %if.then ], [ 0, %if.then122 ], [ %add162, %if.then156 ], [ 0, %if.then135 ], [ 0, %if.else131 ], !dbg !3155
    #dbg_value(i32 %bit_pos_b.0, !3151, !DIExpression(), !3155)
    #dbg_value(i32 %bit_pos_a.2, !3150, !DIExpression(), !3155)
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268, !dbg !3231
  %30 = load i32, ptr %chroma_format_idc, align 4, !dbg !3231
  %cmp176.not = icmp eq i32 %30, 3, !dbg !3233
  br i1 %cmp176.not, label %if.else228, label %if.then178, !dbg !3234

if.then178:                                       ; preds = %if.end175
  br i1 %cmp5, label %if.end511, label %if.then181, !dbg !3235

if.then181:                                       ; preds = %if.then178
  %31 = load i32, ptr %block_b, align 4, !dbg !3237
  %tobool183.not = icmp eq i32 %31, 0, !dbg !3241
  br i1 %tobool183.not, label %if.end197, label %if.then184, !dbg !3242

if.then184:                                       ; preds = %if.then181
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !3243
  %32 = load i32, ptr %mb_addr, align 4, !dbg !3243
  %idxprom = sext i32 %32 to i64, !dbg !3246
  %arrayidx185 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom, !dbg !3246
  %mb_type = getelementptr inbounds i8, ptr %arrayidx185, i64 152, !dbg !3247
  %33 = load i16, ptr %mb_type, align 8, !dbg !3247
  %cmp187 = icmp eq i16 %33, 14, !dbg !3248
  br i1 %cmp187, label %if.end197, label %if.else190, !dbg !3249

if.else190:                                       ; preds = %if.then184
  %cbp_bits = getelementptr inbounds i8, ptr %arrayidx185, i64 312, !dbg !3250
  %34 = load i64, ptr %cbp_bits, align 8, !dbg !3251
  %add195 = add nsw i32 %bit_pos_b.0, %cond100, !dbg !3252
    #dbg_value(i64 %34, !3253, !DIExpression(), !3259)
    #dbg_value(i32 %add195, !3258, !DIExpression(), !3259)
  %sh_prom.i = zext nneg i32 %add195 to i64, !dbg !3261
  %shr1.i = lshr i64 %34, %sh_prom.i, !dbg !3261
  %35 = trunc i64 %shr1.i to i32, !dbg !3262
  %conv.i = and i32 %35, 1, !dbg !3262
    #dbg_value(i32 %conv.i, !3146, !DIExpression(), !3155)
  br label %if.end197

if.end197:                                        ; preds = %if.then184, %if.else190, %if.then181
  %upper_bit.0 = phi i32 [ %conv.i, %if.else190 ], [ %cond102, %if.then181 ], [ 1, %if.then184 ], !dbg !3155
    #dbg_value(i32 %upper_bit.0, !3146, !DIExpression(), !3155)
  %36 = load i32, ptr %block_a, align 4, !dbg !3263
  %tobool199.not = icmp eq i32 %36, 0, !dbg !3265
  br i1 %tobool199.not, label %if.end511.sink.split, label %if.then200, !dbg !3266

if.then200:                                       ; preds = %if.end197
  %mb_addr201 = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !3267
  %37 = load i32, ptr %mb_addr201, align 4, !dbg !3267
  %idxprom202 = sext i32 %37 to i64, !dbg !3270
  %arrayidx203 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom202, !dbg !3270
  %mb_type204 = getelementptr inbounds i8, ptr %arrayidx203, i64 152, !dbg !3271
  %38 = load i16, ptr %mb_type204, align 8, !dbg !3271
  %cmp206 = icmp eq i16 %38, 14, !dbg !3272
  br i1 %cmp206, label %if.end511.sink.split, label %if.else209, !dbg !3273

if.else209:                                       ; preds = %if.then200
  %cbp_bits213 = getelementptr inbounds i8, ptr %arrayidx203, i64 312, !dbg !3274
    #dbg_value(i64 %56, !3253, !DIExpression(), !3275)
    #dbg_value(i32 %add425, !3258, !DIExpression(), !3275)
    #dbg_value(i32 %conv.i987, !3147, !DIExpression(), !3155)
  br label %if.end511.sink.split.sink.split

if.else228:                                       ; preds = %if.end175
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %1, i64 849280, !dbg !3277
  %39 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !3277
  %cmp229.not = icmp eq i32 %39, 0, !dbg !3279
  br i1 %cmp229.not, label %if.else289, label %if.then231, !dbg !3280

if.then231:                                       ; preds = %if.else228
  br i1 %cmp5, label %if.end511, label %if.then234, !dbg !3281

if.then234:                                       ; preds = %if.then231
  %40 = load i32, ptr %block_b, align 4, !dbg !3283
  %tobool236.not = icmp eq i32 %40, 0, !dbg !3287
  br i1 %tobool236.not, label %if.end255, label %if.then237, !dbg !3288

if.then237:                                       ; preds = %if.then234
  %mb_addr238 = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !3289
  %41 = load i32, ptr %mb_addr238, align 4, !dbg !3289
  %idxprom239 = sext i32 %41 to i64, !dbg !3292
  %arrayidx240 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom239, !dbg !3292
  %mb_type241 = getelementptr inbounds i8, ptr %arrayidx240, i64 152, !dbg !3293
  %42 = load i16, ptr %mb_type241, align 8, !dbg !3293
  %cmp243 = icmp eq i16 %42, 14, !dbg !3294
  br i1 %cmp243, label %if.end255, label %if.else246, !dbg !3295

if.else246:                                       ; preds = %if.then237
  %cbp_bits250 = getelementptr inbounds i8, ptr %arrayidx240, i64 312, !dbg !3296
  %43 = load i64, ptr %cbp_bits250, align 8, !dbg !3297
  %add252 = add nsw i32 %bit_pos_b.0, %cond100, !dbg !3298
    #dbg_value(i64 %43, !3253, !DIExpression(), !3299)
    #dbg_value(i32 %add252, !3258, !DIExpression(), !3299)
  %sh_prom.i958 = zext nneg i32 %add252 to i64, !dbg !3301
  %shr1.i959 = lshr i64 %43, %sh_prom.i958, !dbg !3301
  %44 = trunc i64 %shr1.i959 to i32, !dbg !3302
  %conv.i960 = and i32 %44, 1, !dbg !3302
    #dbg_value(i32 %conv.i960, !3146, !DIExpression(), !3155)
  br label %if.end255

if.end255:                                        ; preds = %if.then237, %if.else246, %if.then234
  %upper_bit.1 = phi i32 [ %conv.i960, %if.else246 ], [ %cond102, %if.then234 ], [ 1, %if.then237 ], !dbg !3155
    #dbg_value(i32 %upper_bit.1, !3146, !DIExpression(), !3155)
  %45 = load i32, ptr %block_a, align 4, !dbg !3303
  %tobool257.not = icmp eq i32 %45, 0, !dbg !3305
  br i1 %tobool257.not, label %if.end511.sink.split, label %if.then258, !dbg !3306

if.then258:                                       ; preds = %if.end255
  %mb_addr259 = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !3307
  %46 = load i32, ptr %mb_addr259, align 4, !dbg !3307
  %idxprom260 = sext i32 %46 to i64, !dbg !3310
  %arrayidx261 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom260, !dbg !3310
  %mb_type262 = getelementptr inbounds i8, ptr %arrayidx261, i64 152, !dbg !3311
  %47 = load i16, ptr %mb_type262, align 8, !dbg !3311
  %cmp264 = icmp eq i16 %47, 14, !dbg !3312
  br i1 %cmp264, label %if.end511.sink.split, label %if.else267, !dbg !3313

if.else267:                                       ; preds = %if.then258
  %cbp_bits271 = getelementptr inbounds i8, ptr %arrayidx261, i64 312, !dbg !3314
    #dbg_value(i64 %56, !3253, !DIExpression(), !3315)
    #dbg_value(i32 %add425, !3258, !DIExpression(), !3315)
    #dbg_value(i32 %conv.i987, !3147, !DIExpression(), !3155)
  br label %if.end511.sink.split.sink.split

if.else289:                                       ; preds = %if.else228
  %48 = load i32, ptr %block_b, align 4, !dbg !3317
  %tobool291.not = icmp eq i32 %48, 0, !dbg !3320
  br i1 %tobool291.not, label %if.end393, label %if.then292, !dbg !3321

if.then292:                                       ; preds = %if.else289
  %mb_addr293 = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !3322
  %49 = load i32, ptr %mb_addr293, align 4, !dbg !3322
  %idxprom294 = sext i32 %49 to i64, !dbg !3325
  %arrayidx295 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom294, !dbg !3325
  %mb_type296 = getelementptr inbounds i8, ptr %arrayidx295, i64 152, !dbg !3326
  %50 = load i16, ptr %mb_type296, align 8, !dbg !3326
  %cmp298 = icmp eq i16 %50, 14, !dbg !3327
  br i1 %cmp298, label %if.end393, label %if.else301, !dbg !3328

if.else301:                                       ; preds = %if.then292
  %.mux1026 = select i1 %cmp15, i64 344, i64 352, !dbg !3329
  %.mux1026.mux = select i1 %cmp5, i64 336, i64 %.mux1026, !dbg !3329
  switch i32 %type, label %if.else379 [
    i32 18, label %if.end393.sink.split
    i32 12, label %if.end393.sink.split
    i32 2, label %if.end393.sink.split
    i32 15, label %if.end393.sink.split.fold.split
    i32 14, label %if.end393.sink.split.fold.split
    i32 13, label %if.end393.sink.split.fold.split
    i32 11, label %if.end393.sink.split.fold.split
    i32 10, label %if.end393.sink.split.fold.split
    i32 21, label %if.then371
    i32 20, label %if.then371
    i32 19, label %if.then371
    i32 17, label %if.then371
    i32 16, label %if.then371
  ], !dbg !3329

if.then371:                                       ; preds = %if.else301, %if.else301, %if.else301, %if.else301, %if.else301
    #dbg_value(i64 %51, !3253, !DIExpression(), !3331)
    #dbg_value(i32 %add320, !3258, !DIExpression(), !3331)
    #dbg_value(i32 %conv.i969, !3146, !DIExpression(), !3155)
  br label %if.end393.sink.split, !dbg !3338

if.else379:                                       ; preds = %if.else301
    #dbg_value(i64 %51, !3253, !DIExpression(), !3339)
    #dbg_value(i32 %add320, !3258, !DIExpression(), !3339)
    #dbg_value(i32 %conv.i969, !3146, !DIExpression(), !3155)
  br label %if.end393.sink.split

if.end393.sink.split.fold.split:                  ; preds = %if.else301, %if.else301, %if.else301, %if.else301, %if.else301
  br label %if.end393.sink.split, !dbg !3341

if.end393.sink.split:                             ; preds = %if.else301, %if.else301, %if.else301, %if.end393.sink.split.fold.split, %if.then371, %if.else379
  %.sink = phi i64 [ 312, %if.else379 ], [ 328, %if.then371 ], [ %.mux1026.mux, %if.else301 ], [ %.mux1026.mux, %if.else301 ], [ %.mux1026.mux, %if.else301 ], [ 320, %if.end393.sink.split.fold.split ]
  %arrayidx319 = getelementptr inbounds i8, ptr %arrayidx295, i64 %.sink, !dbg !3341
  %51 = load i64, ptr %arrayidx319, align 8, !dbg !3341
  %add320 = add nsw i32 %bit_pos_b.0, %cond100, !dbg !3341
  %sh_prom.i967 = zext nneg i32 %add320 to i64, !dbg !3342
  %shr1.i968 = lshr i64 %51, %sh_prom.i967, !dbg !3342
  %52 = trunc i64 %shr1.i968 to i32, !dbg !3343
  %conv.i969 = and i32 %52, 1, !dbg !3343
  br label %if.end393, !dbg !3344

if.end393:                                        ; preds = %if.end393.sink.split, %if.then292, %if.else289
  %upper_bit.2 = phi i32 [ %cond102, %if.else289 ], [ 1, %if.then292 ], [ %conv.i969, %if.end393.sink.split ], !dbg !3155
    #dbg_value(i32 %upper_bit.2, !3146, !DIExpression(), !3155)
  %53 = load i32, ptr %block_a, align 4, !dbg !3344
  %tobool395.not = icmp eq i32 %53, 0, !dbg !3346
  br i1 %tobool395.not, label %if.end511.sink.split, label %if.then396, !dbg !3347

if.then396:                                       ; preds = %if.end393
  %mb_addr397 = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !3348
  %54 = load i32, ptr %mb_addr397, align 4, !dbg !3348
  %idxprom398 = sext i32 %54 to i64, !dbg !3351
  %arrayidx399 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom398, !dbg !3351
  %mb_type400 = getelementptr inbounds i8, ptr %arrayidx399, i64 152, !dbg !3352
  %55 = load i16, ptr %mb_type400, align 8, !dbg !3352
  %cmp402 = icmp eq i16 %55, 14, !dbg !3353
  br i1 %cmp402, label %if.end511.sink.split, label %if.else405, !dbg !3354

if.else405:                                       ; preds = %if.then396
  %.mux1029 = select i1 %cmp15, i64 344, i64 352, !dbg !3355
  %.mux1029.mux = select i1 %cmp5, i64 336, i64 %.mux1029, !dbg !3355
  switch i32 %type, label %if.else484 [
    i32 18, label %if.end498.sink.split
    i32 12, label %if.end498.sink.split
    i32 2, label %if.end498.sink.split
    i32 15, label %if.end498.sink.split.fold.split
    i32 14, label %if.end498.sink.split.fold.split
    i32 13, label %if.end498.sink.split.fold.split
    i32 11, label %if.end498.sink.split.fold.split
    i32 10, label %if.end498.sink.split.fold.split
    i32 21, label %if.then476
    i32 20, label %if.then476
    i32 19, label %if.then476
    i32 17, label %if.then476
    i32 16, label %if.then476
  ], !dbg !3355

if.then476:                                       ; preds = %if.else405, %if.else405, %if.else405, %if.else405, %if.else405
    #dbg_value(i64 %56, !3253, !DIExpression(), !3357)
    #dbg_value(i32 %add425, !3258, !DIExpression(), !3357)
    #dbg_value(i32 %conv.i987, !3147, !DIExpression(), !3155)
  br label %if.end498.sink.split, !dbg !3364

if.else484:                                       ; preds = %if.else405
    #dbg_value(i64 %56, !3253, !DIExpression(), !3365)
    #dbg_value(i32 %add425, !3258, !DIExpression(), !3365)
    #dbg_value(i32 %conv.i987, !3147, !DIExpression(), !3155)
  br label %if.end498.sink.split

if.end498.sink.split.fold.split:                  ; preds = %if.else405, %if.else405, %if.else405, %if.else405, %if.else405
  br label %if.end498.sink.split, !dbg !3367

if.end498.sink.split:                             ; preds = %if.else405, %if.else405, %if.else405, %if.end498.sink.split.fold.split, %if.then476, %if.else484
  %.sink1018 = phi i64 [ 312, %if.else484 ], [ 328, %if.then476 ], [ %.mux1029.mux, %if.else405 ], [ %.mux1029.mux, %if.else405 ], [ %.mux1029.mux, %if.else405 ], [ 320, %if.end498.sink.split.fold.split ]
  %arrayidx424 = getelementptr inbounds i8, ptr %arrayidx399, i64 %.sink1018, !dbg !3367
  br label %if.end511.sink.split.sink.split, !dbg !3368

if.end511.sink.split.sink.split:                  ; preds = %if.else209, %if.else267, %if.end498.sink.split
  %arrayidx424.sink = phi ptr [ %arrayidx424, %if.end498.sink.split ], [ %cbp_bits271, %if.else267 ], [ %cbp_bits213, %if.else209 ]
  %upper_bit.2.sink.ph = phi i32 [ %upper_bit.2, %if.end498.sink.split ], [ %upper_bit.1, %if.else267 ], [ %upper_bit.0, %if.else209 ]
  %56 = load i64, ptr %arrayidx424.sink, align 8, !dbg !3369
  %add425 = add nsw i32 %bit_pos_a.2, %cond100, !dbg !3369
  %sh_prom.i985 = zext nneg i32 %add425 to i64, !dbg !3370
  %shr1.i986 = lshr i64 %56, %sh_prom.i985, !dbg !3370
  %57 = trunc i64 %shr1.i986 to i32, !dbg !3371
  %conv.i987 = and i32 %57, 1, !dbg !3371
  br label %if.end511.sink.split, !dbg !3369

if.end511.sink.split:                             ; preds = %if.end511.sink.split.sink.split, %if.end393, %if.then396, %if.end255, %if.then258, %if.end197, %if.then200
  %upper_bit.2.sink = phi i32 [ %upper_bit.0, %if.then200 ], [ %upper_bit.0, %if.end197 ], [ %upper_bit.1, %if.then258 ], [ %upper_bit.1, %if.end255 ], [ %upper_bit.2, %if.then396 ], [ %upper_bit.2, %if.end393 ], [ %upper_bit.2.sink.ph, %if.end511.sink.split.sink.split ]
  %left_bit.2.sink = phi i32 [ 1, %if.then200 ], [ %cond102, %if.end197 ], [ 1, %if.then258 ], [ %cond102, %if.end255 ], [ 1, %if.then396 ], [ %cond102, %if.end393 ], [ %conv.i987, %if.end511.sink.split.sink.split ]
  %mul499 = shl nuw nsw i32 %upper_bit.2.sink, 1, !dbg !3369
  %add500 = or disjoint i32 %left_bit.2.sink, %mul499, !dbg !3369
  %bcbp_contexts501 = getelementptr inbounds i8, ptr %3, i64 84, !dbg !3369
  %idxprom502 = sext i32 %type to i64, !dbg !3369
  %arrayidx503 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom502, !dbg !3369
  %58 = load i16, ptr %arrayidx503, align 2, !dbg !3369
  %idxprom504 = sext i16 %58 to i64, !dbg !3369
  %arrayidx505 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts501, i64 0, i64 %idxprom504, !dbg !3369
  %idx.ext507 = zext nneg i32 %add500 to i64, !dbg !3369
  %add.ptr508 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx505, i64 %idx.ext507, !dbg !3369
  %call509 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr508) #12, !dbg !3369
  br label %if.end511, !dbg !3372

if.end511:                                        ; preds = %if.end511.sink.split, %if.then231, %if.then178
  %cbp_bit.0 = phi i32 [ 1, %if.then178 ], [ 1, %if.then231 ], [ %call509, %if.end511.sink.split ], !dbg !3155
    #dbg_value(i32 %cbp_bit.0, !3148, !DIExpression(), !3155)
  br i1 %8, label %cond.end543, label %cond.false514, !dbg !3372

cond.false514:                                    ; preds = %if.end511
  br i1 %6, label %cond.true516, label %cond.false519, !dbg !3373

cond.true516:                                     ; preds = %cond.false514
  %add517 = add nsw i32 %cond1014, 1, !dbg !3374
  %shr = ashr i32 %cond78, 2, !dbg !3375
  %add518 = add nsw i32 %add517, %shr, !dbg !3376
  br label %cond.end543, !dbg !3373

cond.false519:                                    ; preds = %cond.false514
  %brmerge953 = select i1 %11, i1 true, i1 %14, !dbg !3377
  %.mux954 = select i1 %11, i32 17, i32 18, !dbg !3377
  br i1 %brmerge953, label %cond.end543, label %cond.false525, !dbg !3377

cond.false525:                                    ; preds = %cond.false519
  %shr529 = ashr i32 %cond78, 2, !dbg !3378
  br i1 %13, label %cond.true527, label %cond.false531, !dbg !3379

cond.true527:                                     ; preds = %cond.false525
  %add528 = add nsw i32 %cond1014, 19, !dbg !3380
  %add530 = add nsw i32 %add528, %shr529, !dbg !3381
  br label %cond.end543, !dbg !3379

cond.false531:                                    ; preds = %cond.false525
  %add532 = add nsw i32 %cond1014, 35, !dbg !3382
  %add534 = add nsw i32 %add532, %shr529, !dbg !3383
  br label %cond.end543, !dbg !3379

cond.end543:                                      ; preds = %cond.false519, %cond.true516, %cond.false531, %cond.true527, %if.end511
  %cond544 = phi i32 [ 0, %if.end511 ], [ %add518, %cond.true516 ], [ %.mux954, %cond.false519 ], [ %add530, %cond.true527 ], [ %add534, %cond.false531 ], !dbg !3372
    #dbg_value(i32 %cond544, !3144, !DIExpression(), !3155)
  %tobool545.not = icmp eq i32 %cbp_bit.0, 0, !dbg !3384
  br i1 %tobool545.not, label %if.end688, label %if.then546, !dbg !3386

if.then546:                                       ; preds = %cond.end543
  br i1 %cmp5, label %if.then549, label %if.else562, !dbg !3387

if.then549:                                       ; preds = %if.then546
  %sh_prom = zext nneg i32 %cond544 to i64, !dbg !3389
  %shl = shl i64 51, %sh_prom, !dbg !3389
  %cbp_bits550 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3392
  %59 = load i64, ptr %cbp_bits550, align 8, !dbg !3393
  %or = or i64 %59, %shl, !dbg !3393
  store i64 %or, ptr %cbp_bits550, align 8, !dbg !3393
  %60 = load i32, ptr %chroma_format_idc, align 4, !dbg !3394
  %cmp553 = icmp eq i32 %60, 3, !dbg !3396
  br i1 %cmp553, label %if.end688.sink.split, label %if.end688, !dbg !3397

if.else562:                                       ; preds = %if.then546
  br i1 %cmp15, label %if.then565, label %if.else576, !dbg !3398

if.then565:                                       ; preds = %if.else562
  %sh_prom566 = zext nneg i32 %cond544 to i64, !dbg !3399
  %shl567 = shl i64 51, %sh_prom566, !dbg !3399
  %arrayidx569 = getelementptr inbounds i8, ptr %currMB, i64 344, !dbg !3402
  %61 = load i64, ptr %arrayidx569, align 8, !dbg !3403
  %or570 = or i64 %61, %shl567, !dbg !3403
  store i64 %or570, ptr %arrayidx569, align 8, !dbg !3403
  br label %if.end688.sink.split, !dbg !3404

if.else576:                                       ; preds = %if.else562
  switch i32 %type, label %if.else672 [
    i32 18, label %if.then579
    i32 3, label %if.then593
    i32 13, label %if.then602
    i32 19, label %if.then611
    i32 4, label %if.then620
    i32 14, label %if.then629
    i32 20, label %if.then638
    i32 15, label %if.then653
    i32 11, label %if.then653
    i32 10, label %if.then653
    i32 21, label %if.then667
    i32 17, label %if.then667
    i32 16, label %if.then667
  ], !dbg !3405

if.then579:                                       ; preds = %if.else576
  %sh_prom580 = zext nneg i32 %cond544 to i64, !dbg !3406
  %shl581 = shl i64 51, %sh_prom580, !dbg !3406
  %arrayidx583 = getelementptr inbounds i8, ptr %currMB, i64 352, !dbg !3409
  %62 = load i64, ptr %arrayidx583, align 8, !dbg !3410
  %or584 = or i64 %62, %shl581, !dbg !3410
  store i64 %or584, ptr %arrayidx583, align 8, !dbg !3410
  br label %if.end688.sink.split, !dbg !3411

if.then593:                                       ; preds = %if.else576
  %sh_prom594 = zext nneg i32 %cond544 to i64, !dbg !3412
  %shl595 = shl i64 3, %sh_prom594, !dbg !3412
  br label %if.end688.sink.split, !dbg !3415

if.then602:                                       ; preds = %if.else576
  %sh_prom603 = zext nneg i32 %cond544 to i64, !dbg !3416
  %shl604 = shl i64 3, %sh_prom603, !dbg !3416
  br label %if.end688.sink.split, !dbg !3419

if.then611:                                       ; preds = %if.else576
  %sh_prom612 = zext nneg i32 %cond544 to i64, !dbg !3420
  %shl613 = shl i64 3, %sh_prom612, !dbg !3420
  br label %if.end688.sink.split, !dbg !3423

if.then620:                                       ; preds = %if.else576
  %sh_prom621 = zext nneg i32 %cond544 to i64, !dbg !3424
  %shl622 = shl i64 17, %sh_prom621, !dbg !3424
  br label %if.end688.sink.split, !dbg !3427

if.then629:                                       ; preds = %if.else576
  %sh_prom630 = zext nneg i32 %cond544 to i64, !dbg !3428
  %shl631 = shl i64 17, %sh_prom630, !dbg !3428
  br label %if.end688.sink.split, !dbg !3431

if.then638:                                       ; preds = %if.else576
  %sh_prom639 = zext nneg i32 %cond544 to i64, !dbg !3432
  %shl640 = shl i64 17, %sh_prom639, !dbg !3432
  br label %if.end688.sink.split, !dbg !3435

if.then653:                                       ; preds = %if.else576, %if.else576, %if.else576
    #dbg_value(i32 %cond544, !3436, !DIExpression(), !3441)
  %cmp.i = icmp sgt i32 %cond544, 63, !dbg !3445
  br i1 %cmp.i, label %if.end688.sink.split, label %cond.false.i, !dbg !3446

cond.false.i:                                     ; preds = %if.then653
  %idxprom.i = sext i32 %cond544 to i64, !dbg !3447
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i, !dbg !3447
  %63 = load i64, ptr %arrayidx.i, align 8, !dbg !3447
  br label %if.end688.sink.split, !dbg !3446

if.then667:                                       ; preds = %if.else576, %if.else576, %if.else576
    #dbg_value(i32 %cond544, !3436, !DIExpression(), !3448)
  %cmp.i1000 = icmp sgt i32 %cond544, 63, !dbg !3452
  br i1 %cmp.i1000, label %if.end688.sink.split, label %cond.false.i1001, !dbg !3453

cond.false.i1001:                                 ; preds = %if.then667
  %idxprom.i1002 = sext i32 %cond544 to i64, !dbg !3454
  %arrayidx.i1003 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i1002, !dbg !3454
  %64 = load i64, ptr %arrayidx.i1003, align 8, !dbg !3454
  br label %if.end688.sink.split, !dbg !3453

if.else672:                                       ; preds = %if.else576
    #dbg_value(i32 %cond544, !3436, !DIExpression(), !3455)
  %cmp.i1006 = icmp sgt i32 %cond544, 63, !dbg !3458
  br i1 %cmp.i1006, label %if.end688.sink.split, label %cond.false.i1007, !dbg !3459

cond.false.i1007:                                 ; preds = %if.else672
  %idxprom.i1008 = sext i32 %cond544 to i64, !dbg !3460
  %arrayidx.i1009 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i1008, !dbg !3460
  %65 = load i64, ptr %arrayidx.i1009, align 8, !dbg !3460
  br label %if.end688.sink.split, !dbg !3459

if.end688.sink.split:                             ; preds = %cond.false.i1007, %if.else672, %cond.false.i1001, %if.then667, %cond.false.i, %if.then653, %if.then549, %if.then565, %if.then593, %if.then611, %if.then629, %if.then638, %if.then620, %if.then602, %if.then579
  %.sink1022 = phi i64 [ 328, %if.then579 ], [ 320, %if.then602 ], [ 312, %if.then620 ], [ 328, %if.then638 ], [ 320, %if.then629 ], [ 328, %if.then611 ], [ 312, %if.then593 ], [ 320, %if.then565 ], [ 336, %if.then549 ], [ 320, %if.then653 ], [ 320, %cond.false.i ], [ 328, %if.then667 ], [ 328, %cond.false.i1001 ], [ 312, %if.else672 ], [ 312, %cond.false.i1007 ]
  %shl.sink = phi i64 [ %shl581, %if.then579 ], [ %shl604, %if.then602 ], [ %shl622, %if.then620 ], [ %shl640, %if.then638 ], [ %shl631, %if.then629 ], [ %shl613, %if.then611 ], [ %shl595, %if.then593 ], [ %shl567, %if.then565 ], [ %shl, %if.then549 ], [ 0, %if.then653 ], [ %63, %cond.false.i ], [ 0, %if.then667 ], [ %64, %cond.false.i1001 ], [ 0, %if.else672 ], [ %65, %cond.false.i1007 ]
  %cbp_bits_8x8558 = getelementptr inbounds i8, ptr %currMB, i64 %.sink1022, !dbg !3461
  %66 = load i64, ptr %cbp_bits_8x8558, align 8, !dbg !3461
  %or560 = or i64 %66, %shl.sink, !dbg !3461
  store i64 %or560, ptr %cbp_bits_8x8558, align 8, !dbg !3461
  br label %if.end688, !dbg !3462

if.end688:                                        ; preds = %if.end688.sink.split, %if.then549, %cond.end543
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12, !dbg !3462
  ret i32 %cbp_bit.0, !dbg !3463
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_normal(ptr noundef %currMB, ptr noundef %dep_dp, i32 noundef %type) #0 !dbg !3464 {
entry:
  %block_a = alloca %struct.pix_pos, align 4, !DIAssignID !3563
    #dbg_assign(i1 undef, !3479, !DIExpression(), !3563, ptr %block_a, !DIExpression(), !3564)
  %block_b = alloca %struct.pix_pos, align 4, !DIAssignID !3565
    #dbg_assign(i1 undef, !3480, !DIExpression(), !3565, ptr %block_b, !DIExpression(), !3564)
  %block_a33 = alloca %struct.pix_pos, align 4, !DIAssignID !3566
    #dbg_assign(i1 undef, !3490, !DIExpression(), !3566, ptr %block_a33, !DIExpression(), !3567)
  %block_b34 = alloca %struct.pix_pos, align 4, !DIAssignID !3568
    #dbg_assign(i1 undef, !3491, !DIExpression(), !3568, ptr %block_b34, !DIExpression(), !3567)
  %block_a93 = alloca %struct.pix_pos, align 4, !DIAssignID !3569
    #dbg_assign(i1 undef, !3501, !DIExpression(), !3569, ptr %block_a93, !DIExpression(), !3570)
  %block_b94 = alloca %struct.pix_pos, align 4, !DIAssignID !3571
    #dbg_assign(i1 undef, !3502, !DIExpression(), !3571, ptr %block_b94, !DIExpression(), !3570)
  %block_a154 = alloca %struct.pix_pos, align 4, !DIAssignID !3572
    #dbg_assign(i1 undef, !3512, !DIExpression(), !3572, ptr %block_a154, !DIExpression(), !3573)
  %block_b155 = alloca %struct.pix_pos, align 4, !DIAssignID !3574
    #dbg_assign(i1 undef, !3513, !DIExpression(), !3574, ptr %block_b155, !DIExpression(), !3573)
  %block_a217 = alloca %struct.pix_pos, align 4, !DIAssignID !3575
    #dbg_assign(i1 undef, !3523, !DIExpression(), !3575, ptr %block_a217, !DIExpression(), !3576)
  %block_b218 = alloca %struct.pix_pos, align 4, !DIAssignID !3577
    #dbg_assign(i1 undef, !3524, !DIExpression(), !3577, ptr %block_b218, !DIExpression(), !3576)
  %block_a299 = alloca %struct.pix_pos, align 4, !DIAssignID !3578
    #dbg_assign(i1 undef, !3540, !DIExpression(), !3578, ptr %block_a299, !DIExpression(), !3579)
  %block_b300 = alloca %struct.pix_pos, align 4, !DIAssignID !3580
    #dbg_assign(i1 undef, !3541, !DIExpression(), !3580, ptr %block_b300, !DIExpression(), !3579)
  %block_a386 = alloca %struct.pix_pos, align 4, !DIAssignID !3581
    #dbg_assign(i1 undef, !3551, !DIExpression(), !3581, ptr %block_a386, !DIExpression(), !3582)
  %block_b387 = alloca %struct.pix_pos, align 4, !DIAssignID !3583
    #dbg_assign(i1 undef, !3552, !DIExpression(), !3583, ptr %block_b387, !DIExpression(), !3582)
    #dbg_value(ptr %currMB, !3466, !DIExpression(), !3584)
    #dbg_value(ptr %dep_dp, !3467, !DIExpression(), !3584)
    #dbg_value(i32 %type, !3468, !DIExpression(), !3584)
  %0 = load ptr, ptr %currMB, align 8, !dbg !3585
    #dbg_value(ptr %0, !3469, !DIExpression(), !3584)
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8, !dbg !3586
  %1 = load ptr, ptr %p_Vid1, align 8, !dbg !3586
    #dbg_value(ptr %1, !3470, !DIExpression(), !3584)
  %tex_ctx2 = getelementptr inbounds i8, ptr %0, i64 328, !dbg !3587
  %2 = load ptr, ptr %tex_ctx2, align 8, !dbg !3587
    #dbg_value(ptr %2, !3471, !DIExpression(), !3584)
    #dbg_value(i32 1, !3472, !DIExpression(), !3584)
  %mb_data3 = getelementptr inbounds i8, ptr %0, i64 13512, !dbg !3588
  %3 = load ptr, ptr %mb_data3, align 8, !dbg !3588
    #dbg_value(ptr %3, !3473, !DIExpression(), !3584)
  switch i32 %type, label %if.else367 [
    i32 0, label %if.then
    i32 1, label %if.then28
    i32 3, label %if.then80
    i32 4, label %if.then141
    i32 5, label %if.then204
    i32 2, label %if.then266
    i32 9, label %if.then285
    i32 8, label %if.then285
    i32 6, label %if.then285
  ], !dbg !3589

if.then:                                          ; preds = %entry
    #dbg_value(i32 1, !3474, !DIExpression(), !3564)
    #dbg_value(i32 1, !3477, !DIExpression(), !3564)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12, !dbg !3590
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12, !dbg !3590
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3591
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12, !dbg !3592
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12, !dbg !3593
  %4 = load i32, ptr %block_b, align 4, !dbg !3594
  %tobool.not = icmp eq i32 %4, 0, !dbg !3596
  br i1 %tobool.not, label %if.end, label %if.then7, !dbg !3597

if.then7:                                         ; preds = %if.then
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4, !dbg !3598
  %5 = load i32, ptr %mb_addr, align 4, !dbg !3598
  %idxprom = sext i32 %5 to i64, !dbg !3600
  %arrayidx8 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, !dbg !3600
    #dbg_value(ptr %arrayidx8, !3601, !DIExpression(), !3606)
  %mb_type.i = getelementptr inbounds i8, ptr %arrayidx8, i64 152, !dbg !3608
  %6 = load i16, ptr %mb_type.i, align 8, !dbg !3608
  %cmp.i = icmp eq i16 %6, 14, !dbg !3610
  br i1 %cmp.i, label %if.end, label %if.else.i, !dbg !3611

if.else.i:                                        ; preds = %if.then7
  %cbp_bits.i = getelementptr inbounds i8, ptr %arrayidx8, i64 312, !dbg !3612
  %7 = load i64, ptr %cbp_bits.i, align 8, !dbg !3613
  %conv2.i = shl i64 %7, 1, !dbg !3614
  %8 = and i64 %conv2.i, 2, !dbg !3614
  br label %if.end, !dbg !3615

if.end:                                           ; preds = %if.else.i, %if.then7, %if.then
  %upper_bit.0 = phi i64 [ 2, %if.then ], [ %8, %if.else.i ], [ 2, %if.then7 ], !dbg !3564
    #dbg_value(i32 poison, !3474, !DIExpression(), !3564)
  %9 = load i32, ptr %block_a, align 4, !dbg !3616
  %tobool10.not = icmp eq i32 %9, 0, !dbg !3618
  br i1 %tobool10.not, label %if.end16, label %if.then11, !dbg !3619

if.then11:                                        ; preds = %if.end
  %mb_addr12 = getelementptr inbounds i8, ptr %block_a, i64 4, !dbg !3620
  %10 = load i32, ptr %mb_addr12, align 4, !dbg !3620
  %idxprom13 = sext i32 %10 to i64, !dbg !3622
  %arrayidx14 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom13, !dbg !3622
    #dbg_value(ptr %arrayidx14, !3601, !DIExpression(), !3623)
  %mb_type.i634 = getelementptr inbounds i8, ptr %arrayidx14, i64 152, !dbg !3625
  %11 = load i16, ptr %mb_type.i634, align 8, !dbg !3625
  %cmp.i635 = icmp eq i16 %11, 14, !dbg !3626
  br i1 %cmp.i635, label %if.end16, label %if.else.i636, !dbg !3627

if.else.i636:                                     ; preds = %if.then11
  %cbp_bits.i637 = getelementptr inbounds i8, ptr %arrayidx14, i64 312, !dbg !3628
  %12 = load i64, ptr %cbp_bits.i637, align 8, !dbg !3629
  %conv2.i638 = and i64 %12, 1, !dbg !3630
  br label %if.end16, !dbg !3631

if.end16:                                         ; preds = %if.else.i636, %if.then11, %if.end
  %left_bit.0 = phi i64 [ 1, %if.end ], [ %conv2.i638, %if.else.i636 ], [ 1, %if.then11 ], !dbg !3564
    #dbg_value(i32 poison, !3477, !DIExpression(), !3564)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !3478, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3564)
  %bcbp_contexts = getelementptr inbounds i8, ptr %2, i64 84, !dbg !3632
  %idx.ext = or disjoint i64 %left_bit.0, %upper_bit.0, !dbg !3633
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %bcbp_contexts, i64 %idx.ext, !dbg !3633
  %call22 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12, !dbg !3634
    #dbg_value(i32 %call22, !3472, !DIExpression(), !3584)
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !3635
  br i1 %tobool23.not, label %if.end26, label %if.then24, !dbg !3637

if.then24:                                        ; preds = %if.end16
  %cbp_bits = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3638
  %13 = load i64, ptr %cbp_bits, align 8, !dbg !3640
  %or = or i64 %13, 1, !dbg !3640
  store i64 %or, ptr %cbp_bits, align 8, !dbg !3640
  br label %if.end26, !dbg !3641

if.end26:                                         ; preds = %if.then24, %if.end16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12, !dbg !3642
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12, !dbg !3642
  br label %if.end480, !dbg !3643

if.then28:                                        ; preds = %entry
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3644
  %14 = load i32, ptr %subblock_y, align 8, !dbg !3644
    #dbg_value(i32 %14, !3481, !DIExpression(), !3567)
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3645
  %15 = load i32, ptr %subblock_x, align 4, !dbg !3645
    #dbg_value(i32 %15, !3484, !DIExpression(), !3567)
    #dbg_value(i32 1, !3485, !DIExpression(), !3567)
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3646
  %16 = load i32, ptr %is_intra_block, align 8, !dbg !3646
  %tobool29.not = icmp ne i32 %16, 0, !dbg !3647
  %cond = zext i1 %tobool29.not to i32, !dbg !3647
    #dbg_value(i32 %cond, !3486, !DIExpression(), !3567)
    #dbg_value(i32 %cond, !3487, !DIExpression(), !3567)
    #dbg_value(i32 %cond, !3488, !DIExpression(), !3567)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a33) #12, !dbg !3648
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b34) #12, !dbg !3648
  %sub = add nsw i32 %15, -1, !dbg !3649
  %mb_size35 = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3650
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %14, ptr noundef nonnull %mb_size35, ptr noundef nonnull %block_a33) #12, !dbg !3651
  %sub38 = add nsw i32 %14, -1, !dbg !3652
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %15, i32 noundef %sub38, ptr noundef nonnull %mb_size35, ptr noundef nonnull %block_b34) #12, !dbg !3653
  %17 = load i32, ptr %block_b34, align 4, !dbg !3654
  %tobool43.not = icmp eq i32 %17, 0, !dbg !3656
  br i1 %tobool43.not, label %if.end49, label %if.then44, !dbg !3657

if.then44:                                        ; preds = %if.then28
  %mb_addr45 = getelementptr inbounds i8, ptr %block_b34, i64 4, !dbg !3658
  %18 = load i32, ptr %mb_addr45, align 4, !dbg !3658
  %idxprom46 = sext i32 %18 to i64, !dbg !3660
  %arrayidx47 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom46, !dbg !3660
    #dbg_value(ptr %arrayidx47, !3661, !DIExpression(), !3670)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3670)
  %mb_type.i641 = getelementptr inbounds i8, ptr %arrayidx47, i64 152, !dbg !3672
  %19 = load i16, ptr %mb_type.i641, align 8, !dbg !3672
  %cmp.i642 = icmp eq i16 %19, 14, !dbg !3673
  br i1 %cmp.i642, label %if.end49, label %if.else.i643, !dbg !3674

if.else.i643:                                     ; preds = %if.then44
  %20 = getelementptr inbounds i8, ptr %block_b34, i64 10, !dbg !3675
  %block_b34.val633 = load i16, ptr %20, align 2, !dbg !3675
  %21 = getelementptr inbounds i8, ptr %block_b34, i64 8, !dbg !3675
  %block_b34.val = load i16, ptr %21, align 4, !dbg !3675
  %conv2.i644 = sext i16 %block_b34.val633 to i64, !dbg !3676
  %shl.i = shl nsw i64 %conv2.i644, 2, !dbg !3677
  %conv3.i = sext i16 %block_b34.val to i64, !dbg !3678
  %add.i = add nsw i64 %conv3.i, 1, !dbg !3679
  %add4.i = add nsw i64 %add.i, %shl.i, !dbg !3680
    #dbg_value(!DIArgList(i16 %block_b34.val633, i16 %block_b34.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3681)
  %cbp_bits.i645 = getelementptr inbounds i8, ptr %arrayidx47, i64 312, !dbg !3682
  %22 = load i64, ptr %cbp_bits.i645, align 8, !dbg !3683
    #dbg_value(i64 %22, !3253, !DIExpression(), !3684)
    #dbg_value(!DIArgList(i16 %block_b34.val633, i16 %block_b34.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3684)
  %sh_prom.i.i = and i64 %add4.i, 4294967295, !dbg !3686
  %shr1.i.i = lshr i64 %22, %sh_prom.i.i, !dbg !3686
  %23 = trunc i64 %shr1.i.i to i32, !dbg !3687
  %conv.i.i = and i32 %23, 1, !dbg !3687
  br label %if.end49

if.end49:                                         ; preds = %if.else.i643, %if.then44, %if.then28
  %upper_bit30.0 = phi i32 [ %cond, %if.then28 ], [ %conv.i.i, %if.else.i643 ], [ 1, %if.then44 ], !dbg !3567
    #dbg_value(i32 %upper_bit30.0, !3487, !DIExpression(), !3567)
  %24 = load i32, ptr %block_a33, align 4, !dbg !3688
  %tobool51.not = icmp eq i32 %24, 0, !dbg !3690
  br i1 %tobool51.not, label %if.end57, label %if.then52, !dbg !3691

if.then52:                                        ; preds = %if.end49
  %mb_addr53 = getelementptr inbounds i8, ptr %block_a33, i64 4, !dbg !3692
  %25 = load i32, ptr %mb_addr53, align 4, !dbg !3692
  %idxprom54 = sext i32 %25 to i64, !dbg !3694
  %arrayidx55 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom54, !dbg !3694
    #dbg_value(ptr %arrayidx55, !3661, !DIExpression(), !3695)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3695)
  %mb_type.i647 = getelementptr inbounds i8, ptr %arrayidx55, i64 152, !dbg !3697
  %26 = load i16, ptr %mb_type.i647, align 8, !dbg !3697
  %cmp.i648 = icmp eq i16 %26, 14, !dbg !3698
  br i1 %cmp.i648, label %if.end57, label %if.else.i649, !dbg !3699

if.else.i649:                                     ; preds = %if.then52
  %27 = getelementptr inbounds i8, ptr %block_a33, i64 10, !dbg !3700
  %block_a33.val632 = load i16, ptr %27, align 2, !dbg !3700
  %28 = getelementptr inbounds i8, ptr %block_a33, i64 8, !dbg !3700
  %block_a33.val = load i16, ptr %28, align 4, !dbg !3700
  %conv2.i650 = sext i16 %block_a33.val632 to i64, !dbg !3701
  %shl.i651 = shl nsw i64 %conv2.i650, 2, !dbg !3702
  %conv3.i652 = sext i16 %block_a33.val to i64, !dbg !3703
  %add.i653 = add nsw i64 %conv3.i652, 1, !dbg !3704
  %add4.i654 = add nsw i64 %add.i653, %shl.i651, !dbg !3705
    #dbg_value(!DIArgList(i16 %block_a33.val632, i16 %block_a33.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3706)
  %cbp_bits.i655 = getelementptr inbounds i8, ptr %arrayidx55, i64 312, !dbg !3707
  %29 = load i64, ptr %cbp_bits.i655, align 8, !dbg !3708
    #dbg_value(i64 %29, !3253, !DIExpression(), !3709)
    #dbg_value(!DIArgList(i16 %block_a33.val632, i16 %block_a33.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3709)
  %sh_prom.i.i656 = and i64 %add4.i654, 4294967295, !dbg !3711
  %shr1.i.i657 = lshr i64 %29, %sh_prom.i.i656, !dbg !3711
  %30 = trunc i64 %shr1.i.i657 to i32, !dbg !3712
  %conv.i.i658 = and i32 %30, 1, !dbg !3712
  br label %if.end57

if.end57:                                         ; preds = %if.else.i649, %if.then52, %if.end49
  %left_bit31.0 = phi i32 [ %cond, %if.end49 ], [ %conv.i.i658, %if.else.i649 ], [ 1, %if.then52 ], !dbg !3567
    #dbg_value(i32 %left_bit31.0, !3488, !DIExpression(), !3567)
  %mul58 = shl nuw nsw i32 %upper_bit30.0, 1, !dbg !3713
  %add59 = or disjoint i32 %left_bit31.0, %mul58, !dbg !3714
    #dbg_value(i32 %add59, !3489, !DIExpression(), !3567)
  %arrayidx64 = getelementptr inbounds i8, ptr %2, i64 100, !dbg !3715
  %idx.ext66 = zext nneg i32 %add59 to i64, !dbg !3716
  %add.ptr67 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx64, i64 %idx.ext66, !dbg !3716
  %call68 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr67) #12, !dbg !3717
    #dbg_value(i32 %call68, !3472, !DIExpression(), !3584)
  %tobool69.not = icmp eq i32 %call68, 0, !dbg !3718
  br i1 %tobool69.not, label %if.end77, label %if.then70, !dbg !3720

if.then70:                                        ; preds = %if.end57
  %add71 = add nsw i32 %14, 1, !dbg !3721
  %shr = ashr i32 %15, 2, !dbg !3723
  %add72 = add nsw i32 %add71, %shr, !dbg !3724
    #dbg_value(i32 %add72, !3485, !DIExpression(), !3567)
    #dbg_value(i32 %add72, !3436, !DIExpression(), !3725)
  %cmp.i661 = icmp sgt i32 %add72, 63, !dbg !3727
  br i1 %cmp.i661, label %i64_power2.exit, label %cond.false.i, !dbg !3728

cond.false.i:                                     ; preds = %if.then70
  %idxprom.i = sext i32 %add72 to i64, !dbg !3729
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i, !dbg !3729
  %31 = load i64, ptr %arrayidx.i, align 8, !dbg !3729
  br label %i64_power2.exit, !dbg !3728

i64_power2.exit:                                  ; preds = %if.then70, %cond.false.i
  %cond.i = phi i64 [ %31, %cond.false.i ], [ 0, %if.then70 ], !dbg !3728
  %cbp_bits74 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3730
  %32 = load i64, ptr %cbp_bits74, align 8, !dbg !3731
  %or76 = or i64 %32, %cond.i, !dbg !3731
  store i64 %or76, ptr %cbp_bits74, align 8, !dbg !3731
  br label %if.end77, !dbg !3732

if.end77:                                         ; preds = %i64_power2.exit, %if.end57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b34) #12, !dbg !3733
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a33) #12, !dbg !3733
  br label %if.end480, !dbg !3734

if.then80:                                        ; preds = %entry
  %subblock_y82 = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3735
  %33 = load i32, ptr %subblock_y82, align 8, !dbg !3735
    #dbg_value(i32 %33, !3492, !DIExpression(), !3570)
  %subblock_x84 = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3736
  %34 = load i32, ptr %subblock_x84, align 4, !dbg !3736
    #dbg_value(i32 %34, !3495, !DIExpression(), !3570)
    #dbg_value(i32 1, !3496, !DIExpression(), !3570)
  %is_intra_block87 = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3737
  %35 = load i32, ptr %is_intra_block87, align 8, !dbg !3737
  %tobool88.not = icmp ne i32 %35, 0, !dbg !3738
  %cond89 = zext i1 %tobool88.not to i32, !dbg !3738
    #dbg_value(i32 %cond89, !3497, !DIExpression(), !3570)
    #dbg_value(i32 %cond89, !3498, !DIExpression(), !3570)
    #dbg_value(i32 %cond89, !3499, !DIExpression(), !3570)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a93) #12, !dbg !3739
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b94) #12, !dbg !3739
  %sub95 = add nsw i32 %34, -1, !dbg !3740
  %mb_size96 = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3741
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub95, i32 noundef %33, ptr noundef nonnull %mb_size96, ptr noundef nonnull %block_a93) #12, !dbg !3742
  %sub99 = add nsw i32 %33, -1, !dbg !3743
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %34, i32 noundef %sub99, ptr noundef nonnull %mb_size96, ptr noundef nonnull %block_b94) #12, !dbg !3744
  %36 = load i32, ptr %block_b94, align 4, !dbg !3745
  %tobool104.not = icmp eq i32 %36, 0, !dbg !3747
  br i1 %tobool104.not, label %if.end110, label %if.then105, !dbg !3748

if.then105:                                       ; preds = %if.then80
  %mb_addr106 = getelementptr inbounds i8, ptr %block_b94, i64 4, !dbg !3749
  %37 = load i32, ptr %mb_addr106, align 4, !dbg !3749
  %idxprom107 = sext i32 %37 to i64, !dbg !3751
  %arrayidx108 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom107, !dbg !3751
    #dbg_value(ptr %arrayidx108, !3661, !DIExpression(), !3752)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3752)
  %mb_type.i662 = getelementptr inbounds i8, ptr %arrayidx108, i64 152, !dbg !3754
  %38 = load i16, ptr %mb_type.i662, align 8, !dbg !3754
  %cmp.i663 = icmp eq i16 %38, 14, !dbg !3755
  br i1 %cmp.i663, label %if.end110, label %if.else.i664, !dbg !3756

if.else.i664:                                     ; preds = %if.then105
  %39 = getelementptr inbounds i8, ptr %block_b94, i64 10, !dbg !3757
  %block_b94.val631 = load i16, ptr %39, align 2, !dbg !3757
  %40 = getelementptr inbounds i8, ptr %block_b94, i64 8, !dbg !3757
  %block_b94.val = load i16, ptr %40, align 4, !dbg !3757
  %conv2.i665 = sext i16 %block_b94.val631 to i64, !dbg !3758
  %shl.i666 = shl nsw i64 %conv2.i665, 2, !dbg !3759
  %conv3.i667 = sext i16 %block_b94.val to i64, !dbg !3760
  %add.i668 = add nsw i64 %conv3.i667, 1, !dbg !3761
  %add4.i669 = add nsw i64 %add.i668, %shl.i666, !dbg !3762
    #dbg_value(!DIArgList(i16 %block_b94.val631, i16 %block_b94.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3763)
  %cbp_bits.i670 = getelementptr inbounds i8, ptr %arrayidx108, i64 312, !dbg !3764
  %41 = load i64, ptr %cbp_bits.i670, align 8, !dbg !3765
    #dbg_value(i64 %41, !3253, !DIExpression(), !3766)
    #dbg_value(!DIArgList(i16 %block_b94.val631, i16 %block_b94.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3766)
  %sh_prom.i.i671 = and i64 %add4.i669, 4294967295, !dbg !3768
  %shr1.i.i672 = lshr i64 %41, %sh_prom.i.i671, !dbg !3768
  %42 = trunc i64 %shr1.i.i672 to i32, !dbg !3769
  %conv.i.i673 = and i32 %42, 1, !dbg !3769
  br label %if.end110

if.end110:                                        ; preds = %if.else.i664, %if.then105, %if.then80
  %upper_bit90.0 = phi i32 [ %cond89, %if.then80 ], [ %conv.i.i673, %if.else.i664 ], [ 1, %if.then105 ], !dbg !3570
    #dbg_value(i32 %upper_bit90.0, !3498, !DIExpression(), !3570)
  %43 = load i32, ptr %block_a93, align 4, !dbg !3770
  %tobool112.not = icmp eq i32 %43, 0, !dbg !3772
  br i1 %tobool112.not, label %if.end118, label %if.then113, !dbg !3773

if.then113:                                       ; preds = %if.end110
  %mb_addr114 = getelementptr inbounds i8, ptr %block_a93, i64 4, !dbg !3774
  %44 = load i32, ptr %mb_addr114, align 4, !dbg !3774
  %idxprom115 = sext i32 %44 to i64, !dbg !3776
  %arrayidx116 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom115, !dbg !3776
    #dbg_value(ptr %arrayidx116, !3661, !DIExpression(), !3777)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3777)
  %mb_type.i676 = getelementptr inbounds i8, ptr %arrayidx116, i64 152, !dbg !3779
  %45 = load i16, ptr %mb_type.i676, align 8, !dbg !3779
  %cmp.i677 = icmp eq i16 %45, 14, !dbg !3780
  br i1 %cmp.i677, label %if.end118, label %if.else.i678, !dbg !3781

if.else.i678:                                     ; preds = %if.then113
  %46 = getelementptr inbounds i8, ptr %block_a93, i64 10, !dbg !3782
  %block_a93.val630 = load i16, ptr %46, align 2, !dbg !3782
  %47 = getelementptr inbounds i8, ptr %block_a93, i64 8, !dbg !3782
  %block_a93.val = load i16, ptr %47, align 4, !dbg !3782
  %conv2.i679 = sext i16 %block_a93.val630 to i64, !dbg !3783
  %shl.i680 = shl nsw i64 %conv2.i679, 2, !dbg !3784
  %conv3.i681 = sext i16 %block_a93.val to i64, !dbg !3785
  %add.i682 = add nsw i64 %conv3.i681, 1, !dbg !3786
  %add4.i683 = add nsw i64 %add.i682, %shl.i680, !dbg !3787
    #dbg_value(!DIArgList(i16 %block_a93.val630, i16 %block_a93.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3788)
  %cbp_bits.i684 = getelementptr inbounds i8, ptr %arrayidx116, i64 312, !dbg !3789
  %48 = load i64, ptr %cbp_bits.i684, align 8, !dbg !3790
    #dbg_value(i64 %48, !3253, !DIExpression(), !3791)
    #dbg_value(!DIArgList(i16 %block_a93.val630, i16 %block_a93.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3791)
  %sh_prom.i.i685 = and i64 %add4.i683, 4294967295, !dbg !3793
  %shr1.i.i686 = lshr i64 %48, %sh_prom.i.i685, !dbg !3793
  %49 = trunc i64 %shr1.i.i686 to i32, !dbg !3794
  %conv.i.i687 = and i32 %49, 1, !dbg !3794
  br label %if.end118

if.end118:                                        ; preds = %if.else.i678, %if.then113, %if.end110
  %left_bit91.0 = phi i32 [ %cond89, %if.end110 ], [ %conv.i.i687, %if.else.i678 ], [ 1, %if.then113 ], !dbg !3570
    #dbg_value(i32 %left_bit91.0, !3499, !DIExpression(), !3570)
  %mul119 = shl nuw nsw i32 %upper_bit90.0, 1, !dbg !3795
  %add120 = or disjoint i32 %left_bit91.0, %mul119, !dbg !3796
    #dbg_value(i32 %add120, !3500, !DIExpression(), !3570)
  %arrayidx125 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !3797
  %idx.ext127 = zext nneg i32 %add120 to i64, !dbg !3798
  %add.ptr128 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx125, i64 %idx.ext127, !dbg !3798
  %call129 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr128) #12, !dbg !3799
    #dbg_value(i32 %call129, !3472, !DIExpression(), !3584)
  %tobool130.not = icmp eq i32 %call129, 0, !dbg !3800
  br i1 %tobool130.not, label %if.end138, label %if.then131, !dbg !3802

if.then131:                                       ; preds = %if.end118
  %add132 = add nsw i32 %33, 1, !dbg !3803
  %shr133 = ashr i32 %34, 2, !dbg !3805
  %add134 = add nsw i32 %add132, %shr133, !dbg !3806
    #dbg_value(i32 %add134, !3496, !DIExpression(), !3570)
  %sh_prom = zext nneg i32 %add134 to i64, !dbg !3807
  %shl = shl i64 3, %sh_prom, !dbg !3807
  %cbp_bits135 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3808
  %50 = load i64, ptr %cbp_bits135, align 8, !dbg !3809
  %or137 = or i64 %50, %shl, !dbg !3809
  store i64 %or137, ptr %cbp_bits135, align 8, !dbg !3809
  br label %if.end138, !dbg !3810

if.end138:                                        ; preds = %if.then131, %if.end118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b94) #12, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a93) #12, !dbg !3811
  br label %if.end480, !dbg !3812

if.then141:                                       ; preds = %entry
  %subblock_y143 = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3813
  %51 = load i32, ptr %subblock_y143, align 8, !dbg !3813
    #dbg_value(i32 %51, !3503, !DIExpression(), !3573)
  %subblock_x145 = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3814
  %52 = load i32, ptr %subblock_x145, align 4, !dbg !3814
    #dbg_value(i32 %52, !3506, !DIExpression(), !3573)
    #dbg_value(i32 1, !3507, !DIExpression(), !3573)
  %is_intra_block148 = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3815
  %53 = load i32, ptr %is_intra_block148, align 8, !dbg !3815
  %tobool149.not = icmp ne i32 %53, 0, !dbg !3816
  %cond150 = zext i1 %tobool149.not to i32, !dbg !3816
    #dbg_value(i32 %cond150, !3508, !DIExpression(), !3573)
    #dbg_value(i32 %cond150, !3509, !DIExpression(), !3573)
    #dbg_value(i32 %cond150, !3510, !DIExpression(), !3573)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a154) #12, !dbg !3817
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b155) #12, !dbg !3817
  %sub156 = add nsw i32 %52, -1, !dbg !3818
  %mb_size157 = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3819
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub156, i32 noundef %51, ptr noundef nonnull %mb_size157, ptr noundef nonnull %block_a154) #12, !dbg !3820
  %sub160 = add nsw i32 %51, -1, !dbg !3821
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %52, i32 noundef %sub160, ptr noundef nonnull %mb_size157, ptr noundef nonnull %block_b155) #12, !dbg !3822
  %54 = load i32, ptr %block_b155, align 4, !dbg !3823
  %tobool165.not = icmp eq i32 %54, 0, !dbg !3825
  br i1 %tobool165.not, label %if.end171, label %if.then166, !dbg !3826

if.then166:                                       ; preds = %if.then141
  %mb_addr167 = getelementptr inbounds i8, ptr %block_b155, i64 4, !dbg !3827
  %55 = load i32, ptr %mb_addr167, align 4, !dbg !3827
  %idxprom168 = sext i32 %55 to i64, !dbg !3829
  %arrayidx169 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom168, !dbg !3829
    #dbg_value(ptr %arrayidx169, !3661, !DIExpression(), !3830)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3830)
  %mb_type.i690 = getelementptr inbounds i8, ptr %arrayidx169, i64 152, !dbg !3832
  %56 = load i16, ptr %mb_type.i690, align 8, !dbg !3832
  %cmp.i691 = icmp eq i16 %56, 14, !dbg !3833
  br i1 %cmp.i691, label %if.end171, label %if.else.i692, !dbg !3834

if.else.i692:                                     ; preds = %if.then166
  %57 = getelementptr inbounds i8, ptr %block_b155, i64 10, !dbg !3835
  %block_b155.val629 = load i16, ptr %57, align 2, !dbg !3835
  %58 = getelementptr inbounds i8, ptr %block_b155, i64 8, !dbg !3835
  %block_b155.val = load i16, ptr %58, align 4, !dbg !3835
  %conv2.i693 = sext i16 %block_b155.val629 to i64, !dbg !3836
  %shl.i694 = shl nsw i64 %conv2.i693, 2, !dbg !3837
  %conv3.i695 = sext i16 %block_b155.val to i64, !dbg !3838
  %add.i696 = add nsw i64 %conv3.i695, 1, !dbg !3839
  %add4.i697 = add nsw i64 %add.i696, %shl.i694, !dbg !3840
    #dbg_value(!DIArgList(i16 %block_b155.val629, i16 %block_b155.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3841)
  %cbp_bits.i698 = getelementptr inbounds i8, ptr %arrayidx169, i64 312, !dbg !3842
  %59 = load i64, ptr %cbp_bits.i698, align 8, !dbg !3843
    #dbg_value(i64 %59, !3253, !DIExpression(), !3844)
    #dbg_value(!DIArgList(i16 %block_b155.val629, i16 %block_b155.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3844)
  %sh_prom.i.i699 = and i64 %add4.i697, 4294967295, !dbg !3846
  %shr1.i.i700 = lshr i64 %59, %sh_prom.i.i699, !dbg !3846
  %60 = trunc i64 %shr1.i.i700 to i32, !dbg !3847
  %conv.i.i701 = and i32 %60, 1, !dbg !3847
  br label %if.end171

if.end171:                                        ; preds = %if.else.i692, %if.then166, %if.then141
  %upper_bit151.0 = phi i32 [ %cond150, %if.then141 ], [ %conv.i.i701, %if.else.i692 ], [ 1, %if.then166 ], !dbg !3573
    #dbg_value(i32 %upper_bit151.0, !3509, !DIExpression(), !3573)
  %61 = load i32, ptr %block_a154, align 4, !dbg !3848
  %tobool173.not = icmp eq i32 %61, 0, !dbg !3850
  br i1 %tobool173.not, label %if.end179, label %if.then174, !dbg !3851

if.then174:                                       ; preds = %if.end171
  %mb_addr175 = getelementptr inbounds i8, ptr %block_a154, i64 4, !dbg !3852
  %62 = load i32, ptr %mb_addr175, align 4, !dbg !3852
  %idxprom176 = sext i32 %62 to i64, !dbg !3854
  %arrayidx177 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom176, !dbg !3854
    #dbg_value(ptr %arrayidx177, !3661, !DIExpression(), !3855)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3855)
  %mb_type.i704 = getelementptr inbounds i8, ptr %arrayidx177, i64 152, !dbg !3857
  %63 = load i16, ptr %mb_type.i704, align 8, !dbg !3857
  %cmp.i705 = icmp eq i16 %63, 14, !dbg !3858
  br i1 %cmp.i705, label %if.end179, label %if.else.i706, !dbg !3859

if.else.i706:                                     ; preds = %if.then174
  %64 = getelementptr inbounds i8, ptr %block_a154, i64 10, !dbg !3860
  %block_a154.val628 = load i16, ptr %64, align 2, !dbg !3860
  %65 = getelementptr inbounds i8, ptr %block_a154, i64 8, !dbg !3860
  %block_a154.val = load i16, ptr %65, align 4, !dbg !3860
  %conv2.i707 = sext i16 %block_a154.val628 to i64, !dbg !3861
  %shl.i708 = shl nsw i64 %conv2.i707, 2, !dbg !3862
  %conv3.i709 = sext i16 %block_a154.val to i64, !dbg !3863
  %add.i710 = add nsw i64 %conv3.i709, 1, !dbg !3864
  %add4.i711 = add nsw i64 %add.i710, %shl.i708, !dbg !3865
    #dbg_value(!DIArgList(i16 %block_a154.val628, i16 %block_a154.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3866)
  %cbp_bits.i712 = getelementptr inbounds i8, ptr %arrayidx177, i64 312, !dbg !3867
  %66 = load i64, ptr %cbp_bits.i712, align 8, !dbg !3868
    #dbg_value(i64 %66, !3253, !DIExpression(), !3869)
    #dbg_value(!DIArgList(i16 %block_a154.val628, i16 %block_a154.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3869)
  %sh_prom.i.i713 = and i64 %add4.i711, 4294967295, !dbg !3871
  %shr1.i.i714 = lshr i64 %66, %sh_prom.i.i713, !dbg !3871
  %67 = trunc i64 %shr1.i.i714 to i32, !dbg !3872
  %conv.i.i715 = and i32 %67, 1, !dbg !3872
  br label %if.end179

if.end179:                                        ; preds = %if.else.i706, %if.then174, %if.end171
  %left_bit152.0 = phi i32 [ %cond150, %if.end171 ], [ %conv.i.i715, %if.else.i706 ], [ 1, %if.then174 ], !dbg !3573
    #dbg_value(i32 %left_bit152.0, !3510, !DIExpression(), !3573)
  %mul180 = shl nuw nsw i32 %upper_bit151.0, 1, !dbg !3873
  %add181 = or disjoint i32 %left_bit152.0, %mul180, !dbg !3874
    #dbg_value(i32 %add181, !3511, !DIExpression(), !3573)
  %arrayidx186 = getelementptr inbounds i8, ptr %2, i64 132, !dbg !3875
  %idx.ext188 = zext nneg i32 %add181 to i64, !dbg !3876
  %add.ptr189 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx186, i64 %idx.ext188, !dbg !3876
  %call190 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr189) #12, !dbg !3877
    #dbg_value(i32 %call190, !3472, !DIExpression(), !3584)
  %tobool191.not = icmp eq i32 %call190, 0, !dbg !3878
  br i1 %tobool191.not, label %if.end201, label %if.then192, !dbg !3880

if.then192:                                       ; preds = %if.end179
  %add193 = add nsw i32 %51, 1, !dbg !3881
  %shr194 = ashr i32 %52, 2, !dbg !3883
  %add195 = add nsw i32 %add193, %shr194, !dbg !3884
    #dbg_value(i32 %add195, !3507, !DIExpression(), !3573)
  %sh_prom196 = zext nneg i32 %add195 to i64, !dbg !3885
  %shl197 = shl i64 17, %sh_prom196, !dbg !3885
  %cbp_bits198 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3886
  %68 = load i64, ptr %cbp_bits198, align 8, !dbg !3887
  %or200 = or i64 %68, %shl197, !dbg !3887
  store i64 %or200, ptr %cbp_bits198, align 8, !dbg !3887
  br label %if.end201, !dbg !3888

if.end201:                                        ; preds = %if.then192, %if.end179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b155) #12, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a154) #12, !dbg !3889
  br label %if.end480, !dbg !3890

if.then204:                                       ; preds = %entry
  %subblock_y206 = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3891
  %69 = load i32, ptr %subblock_y206, align 8, !dbg !3891
    #dbg_value(i32 %69, !3514, !DIExpression(), !3576)
  %subblock_x208 = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3892
  %70 = load i32, ptr %subblock_x208, align 4, !dbg !3892
    #dbg_value(i32 %70, !3517, !DIExpression(), !3576)
    #dbg_value(i32 1, !3518, !DIExpression(), !3576)
  %is_intra_block211 = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3893
  %71 = load i32, ptr %is_intra_block211, align 8, !dbg !3893
  %tobool212.not = icmp ne i32 %71, 0, !dbg !3894
  %cond213 = zext i1 %tobool212.not to i32, !dbg !3894
    #dbg_value(i32 %cond213, !3519, !DIExpression(), !3576)
    #dbg_value(i32 %cond213, !3520, !DIExpression(), !3576)
    #dbg_value(i32 %cond213, !3521, !DIExpression(), !3576)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a217) #12, !dbg !3895
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b218) #12, !dbg !3895
  %sub219 = add nsw i32 %70, -1, !dbg !3896
  %mb_size220 = getelementptr inbounds i8, ptr %1, i64 849124, !dbg !3897
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub219, i32 noundef %69, ptr noundef nonnull %mb_size220, ptr noundef nonnull %block_a217) #12, !dbg !3898
  %sub223 = add nsw i32 %69, -1, !dbg !3899
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %70, i32 noundef %sub223, ptr noundef nonnull %mb_size220, ptr noundef nonnull %block_b218) #12, !dbg !3900
  %72 = load i32, ptr %block_b218, align 4, !dbg !3901
  %tobool228.not = icmp eq i32 %72, 0, !dbg !3903
  br i1 %tobool228.not, label %if.end234, label %if.then229, !dbg !3904

if.then229:                                       ; preds = %if.then204
  %mb_addr230 = getelementptr inbounds i8, ptr %block_b218, i64 4, !dbg !3905
  %73 = load i32, ptr %mb_addr230, align 4, !dbg !3905
  %idxprom231 = sext i32 %73 to i64, !dbg !3907
  %arrayidx232 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom231, !dbg !3907
    #dbg_value(ptr %arrayidx232, !3661, !DIExpression(), !3908)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3908)
  %mb_type.i718 = getelementptr inbounds i8, ptr %arrayidx232, i64 152, !dbg !3910
  %74 = load i16, ptr %mb_type.i718, align 8, !dbg !3910
  %cmp.i719 = icmp eq i16 %74, 14, !dbg !3911
  br i1 %cmp.i719, label %if.end234, label %if.else.i720, !dbg !3912

if.else.i720:                                     ; preds = %if.then229
  %75 = getelementptr inbounds i8, ptr %block_b218, i64 10, !dbg !3913
  %block_b218.val627 = load i16, ptr %75, align 2, !dbg !3913
  %76 = getelementptr inbounds i8, ptr %block_b218, i64 8, !dbg !3913
  %block_b218.val = load i16, ptr %76, align 4, !dbg !3913
  %conv2.i721 = sext i16 %block_b218.val627 to i64, !dbg !3914
  %shl.i722 = shl nsw i64 %conv2.i721, 2, !dbg !3915
  %conv3.i723 = sext i16 %block_b218.val to i64, !dbg !3916
  %add.i724 = add nsw i64 %conv3.i723, 1, !dbg !3917
  %add4.i725 = add nsw i64 %add.i724, %shl.i722, !dbg !3918
    #dbg_value(!DIArgList(i16 %block_b218.val627, i16 %block_b218.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3919)
  %cbp_bits.i726 = getelementptr inbounds i8, ptr %arrayidx232, i64 312, !dbg !3920
  %77 = load i64, ptr %cbp_bits.i726, align 8, !dbg !3921
    #dbg_value(i64 %77, !3253, !DIExpression(), !3922)
    #dbg_value(!DIArgList(i16 %block_b218.val627, i16 %block_b218.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3922)
  %sh_prom.i.i727 = and i64 %add4.i725, 4294967295, !dbg !3924
  %shr1.i.i728 = lshr i64 %77, %sh_prom.i.i727, !dbg !3924
  %78 = trunc i64 %shr1.i.i728 to i32, !dbg !3925
  %conv.i.i729 = and i32 %78, 1, !dbg !3925
  br label %if.end234

if.end234:                                        ; preds = %if.else.i720, %if.then229, %if.then204
  %upper_bit214.0 = phi i32 [ %cond213, %if.then204 ], [ %conv.i.i729, %if.else.i720 ], [ 1, %if.then229 ], !dbg !3576
    #dbg_value(i32 %upper_bit214.0, !3520, !DIExpression(), !3576)
  %79 = load i32, ptr %block_a217, align 4, !dbg !3926
  %tobool236.not = icmp eq i32 %79, 0, !dbg !3928
  br i1 %tobool236.not, label %if.end242, label %if.then237, !dbg !3929

if.then237:                                       ; preds = %if.end234
  %mb_addr238 = getelementptr inbounds i8, ptr %block_a217, i64 4, !dbg !3930
  %80 = load i32, ptr %mb_addr238, align 4, !dbg !3930
  %idxprom239 = sext i32 %80 to i64, !dbg !3932
  %arrayidx240 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom239, !dbg !3932
    #dbg_value(ptr %arrayidx240, !3661, !DIExpression(), !3933)
    #dbg_value(ptr undef, !3666, !DIExpression(), !3933)
  %mb_type.i732 = getelementptr inbounds i8, ptr %arrayidx240, i64 152, !dbg !3935
  %81 = load i16, ptr %mb_type.i732, align 8, !dbg !3935
  %cmp.i733 = icmp eq i16 %81, 14, !dbg !3936
  br i1 %cmp.i733, label %if.end242, label %if.else.i734, !dbg !3937

if.else.i734:                                     ; preds = %if.then237
  %82 = getelementptr inbounds i8, ptr %block_a217, i64 10, !dbg !3938
  %block_a217.val626 = load i16, ptr %82, align 2, !dbg !3938
  %83 = getelementptr inbounds i8, ptr %block_a217, i64 8, !dbg !3938
  %block_a217.val = load i16, ptr %83, align 4, !dbg !3938
  %conv2.i735 = sext i16 %block_a217.val626 to i64, !dbg !3939
  %shl.i736 = shl nsw i64 %conv2.i735, 2, !dbg !3940
  %conv3.i737 = sext i16 %block_a217.val to i64, !dbg !3941
  %add.i738 = add nsw i64 %conv3.i737, 1, !dbg !3942
  %add4.i739 = add nsw i64 %add.i738, %shl.i736, !dbg !3943
    #dbg_value(!DIArgList(i16 %block_a217.val626, i16 %block_a217.val), !3667, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3944)
  %cbp_bits.i740 = getelementptr inbounds i8, ptr %arrayidx240, i64 312, !dbg !3945
  %84 = load i64, ptr %cbp_bits.i740, align 8, !dbg !3946
    #dbg_value(i64 %84, !3253, !DIExpression(), !3947)
    #dbg_value(!DIArgList(i16 %block_a217.val626, i16 %block_a217.val), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shl, DW_OP_constu, 1, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value), !3947)
  %sh_prom.i.i741 = and i64 %add4.i739, 4294967295, !dbg !3949
  %shr1.i.i742 = lshr i64 %84, %sh_prom.i.i741, !dbg !3949
  %85 = trunc i64 %shr1.i.i742 to i32, !dbg !3950
  %conv.i.i743 = and i32 %85, 1, !dbg !3950
  br label %if.end242

if.end242:                                        ; preds = %if.else.i734, %if.then237, %if.end234
  %left_bit215.0 = phi i32 [ %cond213, %if.end234 ], [ %conv.i.i743, %if.else.i734 ], [ 1, %if.then237 ], !dbg !3576
    #dbg_value(i32 %left_bit215.0, !3521, !DIExpression(), !3576)
  %mul243 = shl nuw nsw i32 %upper_bit214.0, 1, !dbg !3951
  %add244 = or disjoint i32 %left_bit215.0, %mul243, !dbg !3952
    #dbg_value(i32 %add244, !3522, !DIExpression(), !3576)
  %arrayidx249 = getelementptr inbounds i8, ptr %2, i64 148, !dbg !3953
  %idx.ext251 = zext nneg i32 %add244 to i64, !dbg !3954
  %add.ptr252 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx249, i64 %idx.ext251, !dbg !3954
  %call253 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr252) #12, !dbg !3955
    #dbg_value(i32 %call253, !3472, !DIExpression(), !3584)
  %tobool254.not = icmp eq i32 %call253, 0, !dbg !3956
  br i1 %tobool254.not, label %if.end263, label %if.then255, !dbg !3958

if.then255:                                       ; preds = %if.end242
  %add256 = add nsw i32 %69, 1, !dbg !3959
  %shr257 = ashr i32 %70, 2, !dbg !3961
  %add258 = add nsw i32 %add256, %shr257, !dbg !3962
    #dbg_value(i32 %add258, !3518, !DIExpression(), !3576)
    #dbg_value(i32 %add258, !3436, !DIExpression(), !3963)
  %cmp.i746 = icmp sgt i32 %add258, 63, !dbg !3965
  br i1 %cmp.i746, label %i64_power2.exit751, label %cond.false.i747, !dbg !3966

cond.false.i747:                                  ; preds = %if.then255
  %idxprom.i748 = sext i32 %add258 to i64, !dbg !3967
  %arrayidx.i749 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i748, !dbg !3967
  %86 = load i64, ptr %arrayidx.i749, align 8, !dbg !3967
  br label %i64_power2.exit751, !dbg !3966

i64_power2.exit751:                               ; preds = %if.then255, %cond.false.i747
  %cond.i750 = phi i64 [ %86, %cond.false.i747 ], [ 0, %if.then255 ], !dbg !3966
  %cbp_bits260 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3968
  %87 = load i64, ptr %cbp_bits260, align 8, !dbg !3969
  %or262 = or i64 %87, %cond.i750, !dbg !3969
  store i64 %or262, ptr %cbp_bits260, align 8, !dbg !3969
  br label %if.end263, !dbg !3970

if.end263:                                        ; preds = %i64_power2.exit751, %if.end242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b218) #12, !dbg !3971
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a217) #12, !dbg !3971
  br label %if.end480, !dbg !3972

if.then266:                                       ; preds = %entry
  %subblock_y268 = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !3973
  %88 = load i32, ptr %subblock_y268, align 8, !dbg !3973
    #dbg_value(i32 %88, !3525, !DIExpression(), !3974)
  %subblock_x270 = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !3975
  %89 = load i32, ptr %subblock_x270, align 4, !dbg !3975
    #dbg_value(i32 %89, !3528, !DIExpression(), !3974)
  %add272 = add nsw i32 %88, 1, !dbg !3976
  %shr273 = ashr i32 %89, 2, !dbg !3977
  %add274 = add nsw i32 %add272, %shr273, !dbg !3978
    #dbg_value(i32 %add274, !3529, !DIExpression(), !3974)
  %sh_prom275 = zext nneg i32 %add274 to i64, !dbg !3979
  %shl276 = shl i64 51, %sh_prom275, !dbg !3979
  %cbp_bits277 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !3980
  %90 = load i64, ptr %cbp_bits277, align 8, !dbg !3981
  %or279 = or i64 %shl276, %90, !dbg !3981
  store i64 %or279, ptr %cbp_bits277, align 8, !dbg !3981
  br label %if.end480, !dbg !3982

if.then285:                                       ; preds = %entry, %entry, %entry
  %is_v_block = getelementptr inbounds i8, ptr %currMB, i64 100, !dbg !3983
  %91 = load i32, ptr %is_v_block, align 4, !dbg !3983
  %tobool286.not = icmp eq i32 %91, 0, !dbg !3984
    #dbg_value(i1 %tobool286.not, !3530, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3579)
    #dbg_value(i32 0, !3533, !DIExpression(), !3579)
    #dbg_value(i32 0, !3534, !DIExpression(), !3579)
  %cond291 = select i1 %tobool286.not, i32 17, i32 18, !dbg !3985
    #dbg_value(i32 %cond291, !3535, !DIExpression(), !3579)
  %is_intra_block293 = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !3986
  %92 = load i32, ptr %is_intra_block293, align 8, !dbg !3986
  %tobool294.not = icmp ne i32 %92, 0, !dbg !3987
  %cond295 = zext i1 %tobool294.not to i32, !dbg !3987
    #dbg_value(i32 %cond295, !3536, !DIExpression(), !3579)
    #dbg_value(i32 %cond295, !3537, !DIExpression(), !3579)
    #dbg_value(i32 %cond295, !3538, !DIExpression(), !3579)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a299) #12, !dbg !3988
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b300) #12, !dbg !3988
  %arrayidx303 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !3989
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %arrayidx303, ptr noundef nonnull %block_a299) #12, !dbg !3990
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx303, ptr noundef nonnull %block_b300) #12, !dbg !3991
  %93 = load i32, ptr %block_b300, align 4, !dbg !3992
  %tobool310.not = icmp eq i32 %93, 0, !dbg !3994
  br i1 %tobool310.not, label %if.end326, label %if.then311, !dbg !3995

if.then311:                                       ; preds = %if.then285
  %mb_addr312 = getelementptr inbounds i8, ptr %block_b300, i64 4, !dbg !3996
  %94 = load i32, ptr %mb_addr312, align 4, !dbg !3996
  %idxprom313 = sext i32 %94 to i64, !dbg !3999
  %arrayidx314 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom313, !dbg !3999
  %mb_type = getelementptr inbounds i8, ptr %arrayidx314, i64 152, !dbg !4000
  %95 = load i16, ptr %mb_type, align 8, !dbg !4000
  %cmp315 = icmp eq i16 %95, 14, !dbg !4001
  br i1 %cmp315, label %if.end326, label %if.else318, !dbg !4002

if.else318:                                       ; preds = %if.then311
  %cbp_bits322 = getelementptr inbounds i8, ptr %arrayidx314, i64 312, !dbg !4003
  %96 = load i64, ptr %cbp_bits322, align 8, !dbg !4004
    #dbg_value(i64 %96, !3253, !DIExpression(), !4005)
    #dbg_value(i32 %cond291, !3258, !DIExpression(), !4005)
  %sh_prom.i = zext nneg i32 %cond291 to i64, !dbg !4007
  %shr1.i = lshr i64 %96, %sh_prom.i, !dbg !4007
  %97 = trunc i64 %shr1.i to i32, !dbg !4008
  %conv.i = and i32 %97, 1, !dbg !4008
    #dbg_value(i32 %conv.i, !3537, !DIExpression(), !3579)
  br label %if.end326

if.end326:                                        ; preds = %if.then311, %if.else318, %if.then285
  %upper_bit296.0 = phi i32 [ %conv.i, %if.else318 ], [ %cond295, %if.then285 ], [ 1, %if.then311 ], !dbg !3579
    #dbg_value(i32 %upper_bit296.0, !3537, !DIExpression(), !3579)
  %98 = load i32, ptr %block_a299, align 4, !dbg !4009
  %tobool328.not = icmp eq i32 %98, 0, !dbg !4011
  br i1 %tobool328.not, label %if.end346, label %if.then329, !dbg !4012

if.then329:                                       ; preds = %if.end326
  %mb_addr330 = getelementptr inbounds i8, ptr %block_a299, i64 4, !dbg !4013
  %99 = load i32, ptr %mb_addr330, align 4, !dbg !4013
  %idxprom331 = sext i32 %99 to i64, !dbg !4016
  %arrayidx332 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom331, !dbg !4016
  %mb_type333 = getelementptr inbounds i8, ptr %arrayidx332, i64 152, !dbg !4017
  %100 = load i16, ptr %mb_type333, align 8, !dbg !4017
  %cmp335 = icmp eq i16 %100, 14, !dbg !4018
  br i1 %cmp335, label %if.end346, label %if.else338, !dbg !4019

if.else338:                                       ; preds = %if.then329
  %cbp_bits342 = getelementptr inbounds i8, ptr %arrayidx332, i64 312, !dbg !4020
  %101 = load i64, ptr %cbp_bits342, align 8, !dbg !4021
    #dbg_value(i64 %101, !3253, !DIExpression(), !4022)
    #dbg_value(i32 %cond291, !3258, !DIExpression(), !4022)
  %sh_prom.i752 = zext nneg i32 %cond291 to i64, !dbg !4024
  %shr1.i753 = lshr i64 %101, %sh_prom.i752, !dbg !4024
  %102 = trunc i64 %shr1.i753 to i32, !dbg !4025
  %conv.i754 = and i32 %102, 1, !dbg !4025
    #dbg_value(i32 %conv.i754, !3538, !DIExpression(), !3579)
  br label %if.end346

if.end346:                                        ; preds = %if.then329, %if.else338, %if.end326
  %left_bit297.0 = phi i32 [ %conv.i754, %if.else338 ], [ %cond295, %if.end326 ], [ 1, %if.then329 ], !dbg !3579
    #dbg_value(i32 %left_bit297.0, !3538, !DIExpression(), !3579)
  %mul347 = shl nuw nsw i32 %upper_bit296.0, 1, !dbg !4026
  %add348 = or disjoint i32 %left_bit297.0, %mul347, !dbg !4027
    #dbg_value(i32 %add348, !3539, !DIExpression(), !3579)
  %bcbp_contexts349 = getelementptr inbounds i8, ptr %2, i64 84, !dbg !4028
  %idxprom350 = zext nneg i32 %type to i64, !dbg !4029
  %arrayidx351 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom350, !dbg !4029
  %103 = load i16, ptr %arrayidx351, align 2, !dbg !4029
  %idxprom352 = sext i16 %103 to i64, !dbg !4030
  %arrayidx353 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts349, i64 0, i64 %idxprom352, !dbg !4030
  %idx.ext355 = zext nneg i32 %add348 to i64, !dbg !4031
  %add.ptr356 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx353, i64 %idx.ext355, !dbg !4031
  %call357 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr356) #12, !dbg !4032
    #dbg_value(i32 %call357, !3472, !DIExpression(), !3584)
  %tobool358.not = icmp eq i32 %call357, 0, !dbg !4033
  br i1 %tobool358.not, label %if.end366, label %if.then359, !dbg !4035

if.then359:                                       ; preds = %if.end346
    #dbg_value(i32 %cond291, !3535, !DIExpression(), !3579)
    #dbg_value(i32 %cond291, !3436, !DIExpression(), !4036)
  %idxprom.i757 = zext nneg i32 %cond291 to i64, !dbg !4039
  %arrayidx.i758 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i757, !dbg !4039
  %104 = load i64, ptr %arrayidx.i758, align 8, !dbg !4039
  %cbp_bits363 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !4040
  %105 = load i64, ptr %cbp_bits363, align 8, !dbg !4041
  %or365 = or i64 %105, %104, !dbg !4041
  store i64 %or365, ptr %cbp_bits363, align 8, !dbg !4041
  br label %if.end366, !dbg !4042

if.end366:                                        ; preds = %if.then359, %if.end346
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b300) #12, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a299) #12, !dbg !4043
  br label %if.end480, !dbg !4044

if.else367:                                       ; preds = %entry
  %is_v_block368 = getelementptr inbounds i8, ptr %currMB, i64 100, !dbg !4045
  %106 = load i32, ptr %is_v_block368, align 4, !dbg !4045
  %tobool369.not = icmp eq i32 %106, 0, !dbg !4046
    #dbg_value(i1 %tobool369.not, !3542, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3582)
  %subblock_y373 = getelementptr inbounds i8, ptr %currMB, i64 64, !dbg !4047
  %107 = load i32, ptr %subblock_y373, align 8, !dbg !4047
    #dbg_value(i32 %107, !3544, !DIExpression(), !3582)
  %subblock_x375 = getelementptr inbounds i8, ptr %currMB, i64 60, !dbg !4048
  %108 = load i32, ptr %subblock_x375, align 4, !dbg !4048
    #dbg_value(i32 %108, !3545, !DIExpression(), !3582)
  %cond378 = select i1 %tobool369.not, i32 19, i32 35, !dbg !4049
    #dbg_value(i32 %cond378, !3546, !DIExpression(), !3582)
  %is_intra_block380 = getelementptr inbounds i8, ptr %currMB, i64 96, !dbg !4050
  %109 = load i32, ptr %is_intra_block380, align 8, !dbg !4050
  %tobool381.not = icmp ne i32 %109, 0, !dbg !4051
  %cond382 = zext i1 %tobool381.not to i32, !dbg !4051
    #dbg_value(i32 %cond382, !3547, !DIExpression(), !3582)
    #dbg_value(i32 %cond382, !3548, !DIExpression(), !3582)
    #dbg_value(i32 %cond382, !3549, !DIExpression(), !3582)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a386) #12, !dbg !4052
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b387) #12, !dbg !4052
  %sub388 = add nsw i32 %108, -1, !dbg !4053
  %arrayidx390 = getelementptr inbounds i8, ptr %1, i64 849132, !dbg !4054
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub388, i32 noundef %107, ptr noundef nonnull %arrayidx390, ptr noundef nonnull %block_a386) #12, !dbg !4055
  %sub392 = add nsw i32 %107, -1, !dbg !4056
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %108, i32 noundef %sub392, ptr noundef nonnull %arrayidx390, ptr noundef nonnull %block_b387) #12, !dbg !4057
  %110 = load i32, ptr %block_b387, align 4, !dbg !4058
  %tobool397.not = icmp eq i32 %110, 0, !dbg !4059
  br i1 %tobool397.not, label %if.end420, label %if.then398, !dbg !4060

if.then398:                                       ; preds = %if.else367
  %mb_addr399 = getelementptr inbounds i8, ptr %block_b387, i64 4, !dbg !4061
  %111 = load i32, ptr %mb_addr399, align 4, !dbg !4061
  %idxprom400 = sext i32 %111 to i64, !dbg !4062
  %arrayidx401 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom400, !dbg !4062
  %mb_type402 = getelementptr inbounds i8, ptr %arrayidx401, i64 152, !dbg !4063
  %112 = load i16, ptr %mb_type402, align 8, !dbg !4063
  %cmp404 = icmp eq i16 %112, 14, !dbg !4064
  br i1 %cmp404, label %if.end420, label %if.else407, !dbg !4065

if.else407:                                       ; preds = %if.then398
  %y = getelementptr inbounds i8, ptr %block_b387, i64 10, !dbg !4066
  %113 = load i16, ptr %y, align 2, !dbg !4066
  %conv408 = sext i16 %113 to i32, !dbg !4067
  %mul409 = shl nsw i32 %conv408, 2, !dbg !4068
  %x = getelementptr inbounds i8, ptr %block_b387, i64 8, !dbg !4069
  %114 = load i16, ptr %x, align 4, !dbg !4069
  %conv410 = sext i16 %114 to i32, !dbg !4070
    #dbg_value(i32 poison, !3553, !DIExpression(), !4071)
  %cbp_bits415 = getelementptr inbounds i8, ptr %arrayidx401, i64 312, !dbg !4072
  %115 = load i64, ptr %cbp_bits415, align 8, !dbg !4073
  %add411 = add nsw i32 %cond378, %conv410, !dbg !4074
  %add417 = add nsw i32 %add411, %mul409, !dbg !4075
    #dbg_value(i64 %115, !3253, !DIExpression(), !4076)
    #dbg_value(i32 %add417, !3258, !DIExpression(), !4076)
  %sh_prom.i760 = zext nneg i32 %add417 to i64, !dbg !4078
  %shr1.i761 = lshr i64 %115, %sh_prom.i760, !dbg !4078
  %116 = trunc i64 %shr1.i761 to i32, !dbg !4079
  %conv.i762 = and i32 %116, 1, !dbg !4079
    #dbg_value(i32 %conv.i762, !3548, !DIExpression(), !3582)
  br label %if.end420

if.end420:                                        ; preds = %if.then398, %if.else407, %if.else367
  %upper_bit383.0 = phi i32 [ %conv.i762, %if.else407 ], [ %cond382, %if.else367 ], [ 1, %if.then398 ], !dbg !3582
    #dbg_value(i32 %upper_bit383.0, !3548, !DIExpression(), !3582)
  %117 = load i32, ptr %block_a386, align 4, !dbg !4080
  %tobool422.not = icmp eq i32 %117, 0, !dbg !4081
  br i1 %tobool422.not, label %if.end447, label %if.then423, !dbg !4082

if.then423:                                       ; preds = %if.end420
  %mb_addr424 = getelementptr inbounds i8, ptr %block_a386, i64 4, !dbg !4083
  %118 = load i32, ptr %mb_addr424, align 4, !dbg !4083
  %idxprom425 = sext i32 %118 to i64, !dbg !4084
  %arrayidx426 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom425, !dbg !4084
  %mb_type427 = getelementptr inbounds i8, ptr %arrayidx426, i64 152, !dbg !4085
  %119 = load i16, ptr %mb_type427, align 8, !dbg !4085
  %cmp429 = icmp eq i16 %119, 14, !dbg !4086
  br i1 %cmp429, label %if.end447, label %if.else432, !dbg !4087

if.else432:                                       ; preds = %if.then423
  %y433 = getelementptr inbounds i8, ptr %block_a386, i64 10, !dbg !4088
  %120 = load i16, ptr %y433, align 2, !dbg !4088
  %conv434 = sext i16 %120 to i32, !dbg !4089
  %mul435 = shl nsw i32 %conv434, 2, !dbg !4090
  %x436 = getelementptr inbounds i8, ptr %block_a386, i64 8, !dbg !4091
  %121 = load i16, ptr %x436, align 4, !dbg !4091
  %conv437 = sext i16 %121 to i32, !dbg !4092
    #dbg_value(i32 poison, !3558, !DIExpression(), !4093)
  %cbp_bits442 = getelementptr inbounds i8, ptr %arrayidx426, i64 312, !dbg !4094
  %122 = load i64, ptr %cbp_bits442, align 8, !dbg !4095
  %add438 = add nsw i32 %cond378, %conv437, !dbg !4096
  %add444 = add nsw i32 %add438, %mul435, !dbg !4097
    #dbg_value(i64 %122, !3253, !DIExpression(), !4098)
    #dbg_value(i32 %add444, !3258, !DIExpression(), !4098)
  %sh_prom.i763 = zext nneg i32 %add444 to i64, !dbg !4100
  %shr1.i764 = lshr i64 %122, %sh_prom.i763, !dbg !4100
  %123 = trunc i64 %shr1.i764 to i32, !dbg !4101
  %conv.i765 = and i32 %123, 1, !dbg !4101
    #dbg_value(i32 %conv.i765, !3549, !DIExpression(), !3582)
  br label %if.end447

if.end447:                                        ; preds = %if.then423, %if.else432, %if.end420
  %left_bit384.0 = phi i32 [ %conv.i765, %if.else432 ], [ %cond382, %if.end420 ], [ 1, %if.then423 ], !dbg !3582
    #dbg_value(i32 %left_bit384.0, !3549, !DIExpression(), !3582)
  %mul448 = shl nuw nsw i32 %upper_bit383.0, 1, !dbg !4102
  %add449 = or disjoint i32 %left_bit384.0, %mul448, !dbg !4103
    #dbg_value(i32 %add449, !3550, !DIExpression(), !3582)
  %bcbp_contexts450 = getelementptr inbounds i8, ptr %2, i64 84, !dbg !4104
  %idxprom451 = sext i32 %type to i64, !dbg !4105
  %arrayidx452 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom451, !dbg !4105
  %124 = load i16, ptr %arrayidx452, align 2, !dbg !4105
  %idxprom453 = sext i16 %124 to i64, !dbg !4106
  %arrayidx454 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts450, i64 0, i64 %idxprom453, !dbg !4106
  %idx.ext456 = zext nneg i32 %add449 to i64, !dbg !4107
  %add.ptr457 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx454, i64 %idx.ext456, !dbg !4107
  %call458 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr457) #12, !dbg !4108
    #dbg_value(i32 %call458, !3472, !DIExpression(), !3584)
  %tobool459.not = icmp eq i32 %call458, 0, !dbg !4109
  br i1 %tobool459.not, label %if.end473, label %if.then460, !dbg !4111

if.then460:                                       ; preds = %if.end447
  %shr463 = ashr i32 %108, 2, !dbg !4112
  %. = select i1 %tobool369.not, i32 19, i32 35, !dbg !4114
  %add465 = add nsw i32 %107, %., !dbg !4112
  %add467 = add nsw i32 %add465, %shr463, !dbg !4112
    #dbg_value(i32 %add467, !3546, !DIExpression(), !3582)
    #dbg_value(i32 %add467, !3436, !DIExpression(), !4115)
  %cmp.i766 = icmp sgt i32 %add467, 63, !dbg !4117
  br i1 %cmp.i766, label %i64_power2.exit771, label %cond.false.i767, !dbg !4118

cond.false.i767:                                  ; preds = %if.then460
  %idxprom.i768 = sext i32 %add467 to i64, !dbg !4119
  %arrayidx.i769 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i768, !dbg !4119
  %125 = load i64, ptr %arrayidx.i769, align 8, !dbg !4119
  br label %i64_power2.exit771, !dbg !4118

i64_power2.exit771:                               ; preds = %if.then460, %cond.false.i767
  %cond.i770 = phi i64 [ %125, %cond.false.i767 ], [ 0, %if.then460 ], !dbg !4118
  %cbp_bits470 = getelementptr inbounds i8, ptr %currMB, i64 312, !dbg !4120
  %126 = load i64, ptr %cbp_bits470, align 8, !dbg !4121
  %or472 = or i64 %126, %cond.i770, !dbg !4121
  store i64 %or472, ptr %cbp_bits470, align 8, !dbg !4121
  br label %if.end473, !dbg !4122

if.end473:                                        ; preds = %i64_power2.exit771, %if.end447
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b387) #12, !dbg !4123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a386) #12, !dbg !4123
  br label %if.end480

if.end480:                                        ; preds = %if.end77, %if.end201, %if.then266, %if.end473, %if.end366, %if.end263, %if.end138, %if.end26
  %cbp_bit.0 = phi i32 [ %call22, %if.end26 ], [ %call68, %if.end77 ], [ %call129, %if.end138 ], [ %call190, %if.end201 ], [ %call253, %if.end263 ], [ 1, %if.then266 ], [ %call357, %if.end366 ], [ %call458, %if.end473 ], !dbg !3584
    #dbg_value(i32 %cbp_bit.0, !3472, !DIExpression(), !3584)
  ret i32 %cbp_bit.0, !dbg !4124
}

; Function Attrs: nounwind uwtable
define dso_local void @readRunLevel_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 !dbg !4125 {
entry:
    #dbg_value(ptr %currMB, !4127, !DIExpression(), !4132)
    #dbg_value(ptr %se, !4128, !DIExpression(), !4132)
    #dbg_value(ptr %dep_dp, !4129, !DIExpression(), !4132)
  %0 = load ptr, ptr %currMB, align 8, !dbg !4133
    #dbg_value(ptr %0, !4130, !DIExpression(), !4132)
  %coeff_ctr1 = getelementptr inbounds i8, ptr %0, i64 13264, !dbg !4134
    #dbg_value(ptr %coeff_ctr1, !4131, !DIExpression(), !4132)
  %1 = load i32, ptr %coeff_ctr1, align 4, !dbg !4135
  %cmp = icmp slt i32 %1, 0, !dbg !4137
  br i1 %cmp, label %if.then, label %if.end9, !dbg !4138

if.then:                                          ; preds = %entry
  %read_and_store_CBP_block_bit = getelementptr inbounds i8, ptr %currMB, i64 456, !dbg !4139
  %2 = load ptr, ptr %read_and_store_CBP_block_bit, align 8, !dbg !4139
  %context = getelementptr inbounds i8, ptr %se, i64 24, !dbg !4142
  %3 = load i32, ptr %context, align 8, !dbg !4142
  %call = tail call i32 %2(ptr noundef nonnull %currMB, ptr noundef %dep_dp, i32 noundef %3) #12, !dbg !4143
  store i32 %call, ptr %coeff_ctr1, align 4, !dbg !4144
  %cmp2.not = icmp eq i32 %call, 0, !dbg !4145
  br i1 %cmp2.not, label %if.else, label %if.then3, !dbg !4146

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %context, align 8, !dbg !4147
  %coeff = getelementptr inbounds i8, ptr %0, i64 13008, !dbg !4149
    #dbg_value(ptr %currMB, !4150, !DIExpression(), !4168)
    #dbg_value(ptr %dep_dp, !4155, !DIExpression(), !4168)
    #dbg_value(i32 %4, !4156, !DIExpression(), !4168)
    #dbg_value(ptr %coeff, !4157, !DIExpression(), !4168)
  %5 = load ptr, ptr %currMB, align 8, !dbg !4170
    #dbg_value(ptr %5, !4158, !DIExpression(), !4168)
  %structure.i = getelementptr inbounds i8, ptr %5, i64 184, !dbg !4171
  %6 = load i32, ptr %structure.i, align 8, !dbg !4171
  %cmp.not.i = icmp eq i32 %6, 0, !dbg !4172
  br i1 %cmp.not.i, label %lor.end.i, label %for.body.lr.ph.i, !dbg !4173

lor.end.i:                                        ; preds = %if.then3
  %mb_field.i = getelementptr inbounds i8, ptr %currMB, i64 384, !dbg !4174
  %7 = load i32, ptr %mb_field.i, align 8, !dbg !4174
  %.fr.i = freeze i32 %7, !dbg !4173
  %tobool.i = icmp ne i32 %.fr.i, 0, !dbg !4173
    #dbg_value(i1 %tobool.i, !4159, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4168)
  %spec.select78.i = select i1 %tobool.i, ptr @pos2ctx_map_int, ptr @pos2ctx_map, !dbg !4175
  %8 = zext i1 %tobool.i to i64, !dbg !4176
  br label %for.body.lr.ph.i, !dbg !4175

for.body.lr.ph.i:                                 ; preds = %lor.end.i, %if.then3
  %idxprom.i = phi i64 [ 1, %if.then3 ], [ %8, %lor.end.i ]
  %9 = phi ptr [ @pos2ctx_map_int, %if.then3 ], [ %spec.select78.i, %lor.end.i ], !dbg !4175
    #dbg_value(ptr %9, !4160, !DIExpression(), !4168)
  %tex_ctx.i = getelementptr inbounds i8, ptr %5, i64 328, !dbg !4177
  %10 = load ptr, ptr %tex_ctx.i, align 8, !dbg !4177
  %map_contexts.i = getelementptr inbounds i8, ptr %10, i64 436, !dbg !4178
  %idxprom2.i = sext i32 %4 to i64, !dbg !4179
  %arrayidx3.i = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %idxprom2.i, !dbg !4179
  %11 = load i16, ptr %arrayidx3.i, align 2, !dbg !4179
  %idxprom4.i = sext i16 %11 to i64, !dbg !4176
  %arrayidx5.i = getelementptr inbounds [2 x [22 x [15 x %struct.BiContextType]]], ptr %map_contexts.i, i64 0, i64 %idxprom.i, i64 %idxprom4.i, !dbg !4176
    #dbg_value(ptr %arrayidx5.i, !4162, !DIExpression(), !4168)
  %last_contexts.i = getelementptr inbounds i8, ptr %10, i64 3076, !dbg !4180
  %arrayidx10.i = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %idxprom2.i, !dbg !4181
  %12 = load i16, ptr %arrayidx10.i, align 2, !dbg !4181
  %idxprom11.i = sext i16 %12 to i64, !dbg !4182
  %arrayidx12.i = getelementptr inbounds [2 x [22 x [15 x %struct.BiContextType]]], ptr %last_contexts.i, i64 0, i64 %idxprom.i, i64 %idxprom11.i, !dbg !4182
    #dbg_value(ptr %arrayidx12.i, !4163, !DIExpression(), !4168)
    #dbg_value(i32 0, !4165, !DIExpression(), !4168)
    #dbg_value(i32 0, !4166, !DIExpression(), !4168)
  %arrayidx15.i = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %idxprom2.i, !dbg !4183
  %13 = load i16, ptr %arrayidx15.i, align 2, !dbg !4183
  %conv.i = sext i16 %13 to i32, !dbg !4183
    #dbg_value(i32 %conv.i, !4167, !DIExpression(), !4168)
  %14 = lshr i64 133250, %idxprom2.i, !dbg !4184
  %15 = trunc nuw nsw i64 %14 to i32, !dbg !4186
  %spec.select.i = and i32 %15, 1, !dbg !4186
  %spec.select76.i = add nsw i32 %spec.select.i, %conv.i, !dbg !4186
    #dbg_value(i32 %spec.select76.i, !4167, !DIExpression(), !4168)
    #dbg_value(i32 %spec.select.i, !4166, !DIExpression(), !4168)
    #dbg_value(i32 %spec.select.i, !4164, !DIExpression(), !4168)
    #dbg_value(ptr %coeff, !4157, !DIExpression(), !4168)
  %arrayidx23.i = getelementptr inbounds ptr, ptr %9, i64 %idxprom2.i
  %16 = load ptr, ptr %arrayidx23.i, align 8
  %reltable.shift = shl i64 %idxprom2.i, 2
  br label %for.body.i, !dbg !4187

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %coeff_ctr.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %coeff_ctr.1.i, %for.inc.i ]
  %i.081.i = phi i32 [ %spec.select.i, %for.body.lr.ph.i ], [ %inc44.i, %for.inc.i ]
  %coeff.addr.080.i = phi ptr [ %coeff, %for.body.lr.ph.i ], [ %incdec.ptr42.i, %for.inc.i ]
    #dbg_value(i32 %coeff_ctr.082.i, !4165, !DIExpression(), !4168)
    #dbg_value(i32 %i.081.i, !4164, !DIExpression(), !4168)
    #dbg_value(ptr %coeff.addr.080.i, !4157, !DIExpression(), !4168)
  %idxprom24.i = sext i32 %i.081.i to i64, !dbg !4189
  %arrayidx25.i = getelementptr inbounds i8, ptr %16, i64 %idxprom24.i, !dbg !4189
  %17 = load i8, ptr %arrayidx25.i, align 1, !dbg !4189
  %idx.ext.i = zext i8 %17 to i64, !dbg !4193
  %add.ptr.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx5.i, i64 %idx.ext.i, !dbg !4193
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12, !dbg !4194
  %tobool27.not.i = icmp eq i32 %call.i, 0, !dbg !4194
  %incdec.ptr42.i = getelementptr inbounds i8, ptr %coeff.addr.080.i, i64 4, !dbg !4195
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i, !dbg !4196

if.then28.i:                                      ; preds = %for.body.i
    #dbg_value(ptr %incdec.ptr42.i, !4157, !DIExpression(), !4168)
  store i32 1, ptr %coeff.addr.080.i, align 4, !dbg !4197
  %inc29.i = add nsw i32 %coeff_ctr.082.i, 1, !dbg !4199
    #dbg_value(i32 %inc29.i, !4165, !DIExpression(), !4168)
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @pos2ctx_last.rel, i64 %reltable.shift), !dbg !4200
  %arrayidx33.i = getelementptr inbounds i8, ptr %reltable.intrinsic, i64 %idxprom24.i, !dbg !4200
  %18 = load i8, ptr %arrayidx33.i, align 1, !dbg !4200
  %idx.ext35.i = zext i8 %18 to i64, !dbg !4202
  %add.ptr36.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx12.i, i64 %idx.ext35.i, !dbg !4202
  %call37.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr36.i) #12, !dbg !4203
  %tobool38.not.i = icmp eq i32 %call37.i, 0, !dbg !4203
  br i1 %tobool38.not.i, label %for.inc.i, label %if.then39.i, !dbg !4204

if.then39.i:                                      ; preds = %if.then28.i
  %sub.i = sub nsw i32 %spec.select76.i, %i.081.i, !dbg !4205
  %conv40.i = sext i32 %sub.i to i64, !dbg !4207
  %mul.i = shl nsw i64 %conv40.i, 2, !dbg !4208
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %incdec.ptr42.i, i8 0, i64 %mul.i, i1 false), !dbg !4209
    #dbg_value(i32 %spec.select76.i, !4164, !DIExpression(), !4168)
  br label %for.inc.i, !dbg !4210

if.else.i:                                        ; preds = %for.body.i
    #dbg_value(ptr %incdec.ptr42.i, !4157, !DIExpression(), !4168)
  store i32 0, ptr %coeff.addr.080.i, align 4, !dbg !4211
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then39.i, %if.then28.i
  %i.1.i = phi i32 [ %spec.select76.i, %if.then39.i ], [ %i.081.i, %if.then28.i ], [ %i.081.i, %if.else.i ], !dbg !4213
  %coeff_ctr.1.i = phi i32 [ %inc29.i, %if.then39.i ], [ %inc29.i, %if.then28.i ], [ %coeff_ctr.082.i, %if.else.i ], !dbg !4168
    #dbg_value(i32 %coeff_ctr.1.i, !4165, !DIExpression(), !4168)
    #dbg_value(i32 %i.1.i, !4164, !DIExpression(), !4168)
    #dbg_value(ptr %incdec.ptr42.i, !4157, !DIExpression(), !4168)
  %inc44.i = add nsw i32 %i.1.i, 1, !dbg !4214
    #dbg_value(i32 %inc44.i, !4164, !DIExpression(), !4168)
  %cmp20.i = icmp slt i32 %inc44.i, %spec.select76.i, !dbg !4215
  br i1 %cmp20.i, label %for.body.i, label %for.end.i, !dbg !4187, !llvm.loop !4216

for.end.i:                                        ; preds = %for.inc.i
  %cmp45.not.not.i = icmp slt i32 %i.1.i, %spec.select76.i, !dbg !4218
  br i1 %cmp45.not.not.i, label %if.then47.i, label %read_significance_map.exit, !dbg !4220

if.then47.i:                                      ; preds = %for.end.i
  store i32 1, ptr %incdec.ptr42.i, align 4, !dbg !4221
  %inc48.i = add nsw i32 %coeff_ctr.1.i, 1, !dbg !4223
    #dbg_value(i32 %inc48.i, !4165, !DIExpression(), !4168)
  br label %read_significance_map.exit, !dbg !4224

read_significance_map.exit:                       ; preds = %for.end.i, %if.then47.i
  %coeff_ctr.2.i = phi i32 [ %inc48.i, %if.then47.i ], [ %coeff_ctr.1.i, %for.end.i ], !dbg !4168
    #dbg_value(i32 %coeff_ctr.2.i, !4165, !DIExpression(), !4168)
  store i32 %coeff_ctr.2.i, ptr %coeff_ctr1, align 4, !dbg !4225
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328, !dbg !4226
  %19 = load ptr, ptr %tex_ctx, align 8, !dbg !4226
  %20 = load i32, ptr %context, align 8, !dbg !4227
    #dbg_value(ptr %dep_dp, !4228, !DIExpression(), !4244)
    #dbg_value(ptr %19, !4233, !DIExpression(), !4244)
    #dbg_value(i32 %20, !4234, !DIExpression(), !4244)
    #dbg_value(ptr %coeff, !4235, !DIExpression(), !4244)
    #dbg_value(i32 1, !4238, !DIExpression(), !4244)
    #dbg_value(i32 0, !4239, !DIExpression(), !4244)
  %one_contexts1.i = getelementptr inbounds i8, ptr %19, i64 5716, !dbg !4246
  %idxprom.i53 = sext i32 %20 to i64, !dbg !4247
  %arrayidx.i = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom.i53, !dbg !4247
  %21 = load i16, ptr %arrayidx.i, align 2, !dbg !4247
  %idxprom2.i54 = sext i16 %21 to i64, !dbg !4248
  %arrayidx3.i55 = getelementptr inbounds [22 x [5 x %struct.BiContextType]], ptr %one_contexts1.i, i64 0, i64 %idxprom2.i54, !dbg !4248
    #dbg_value(ptr %arrayidx3.i55, !4240, !DIExpression(), !4244)
  %abs_contexts4.i = getelementptr inbounds i8, ptr %19, i64 6156, !dbg !4249
  %arrayidx6.i = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom.i53, !dbg !4250
  %22 = load i16, ptr %arrayidx6.i, align 2, !dbg !4250
  %idxprom7.i = sext i16 %22 to i64, !dbg !4251
  %arrayidx8.i = getelementptr inbounds [22 x [5 x %struct.BiContextType]], ptr %abs_contexts4.i, i64 0, i64 %idxprom7.i, !dbg !4251
    #dbg_value(ptr %arrayidx8.i, !4241, !DIExpression(), !4244)
  %arrayidx11.i = getelementptr inbounds [22 x i16], ptr @max_c2, i64 0, i64 %idxprom.i53, !dbg !4252
  %23 = load i16, ptr %arrayidx11.i, align 2, !dbg !4252
  %conv.i56 = sext i16 %23 to i32, !dbg !4252
    #dbg_value(i32 %conv.i56, !4242, !DIExpression(), !4244)
    #dbg_value(i16 poison, !4236, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !4244)
    #dbg_value(!DIArgList(ptr poison, i16 poison), !4243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4244)
  %arrayidx13.i = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %idxprom.i53, !dbg !4253
  %24 = load i16, ptr %arrayidx13.i, align 2, !dbg !4253
    #dbg_value(!DIArgList(ptr %coeff, i16 %24), !4243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4244)
    #dbg_value(i16 %24, !4236, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !4244)
  %conv18.i = sext i16 %24 to i32, !dbg !4254
    #dbg_value(i32 %conv18.i, !4236, !DIExpression(), !4244)
  %idxprom14.i = sext i16 %24 to i64, !dbg !4256
    #dbg_value(!DIArgList(ptr %coeff, i64 %idxprom14.i), !4243, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4244)
  %arrayidx15.i57 = getelementptr inbounds i32, ptr %coeff, i64 %idxprom14.i, !dbg !4256
    #dbg_value(ptr %arrayidx15.i57, !4243, !DIExpression(), !4244)
  br label %for.body.i58, !dbg !4257

for.body.i58:                                     ; preds = %if.end38.i, %read_significance_map.exit
  %cof.060.i = phi ptr [ %incdec.ptr.i, %if.end38.i ], [ %arrayidx15.i57, %read_significance_map.exit ]
  %i.059.i = phi i32 [ %dec.i, %if.end38.i ], [ %conv18.i, %read_significance_map.exit ]
  %c1.058.i = phi i32 [ %c1.2.i, %if.end38.i ], [ 1, %read_significance_map.exit ]
  %c2.057.i = phi i32 [ %c2.2.i, %if.end38.i ], [ 0, %read_significance_map.exit ]
    #dbg_value(ptr %cof.060.i, !4243, !DIExpression(), !4244)
    #dbg_value(i32 %i.059.i, !4236, !DIExpression(), !4244)
    #dbg_value(i32 %c1.058.i, !4238, !DIExpression(), !4244)
    #dbg_value(i32 %c2.057.i, !4239, !DIExpression(), !4244)
  %25 = load i32, ptr %cof.060.i, align 4, !dbg !4258
  %cmp20.not.i = icmp eq i32 %25, 0, !dbg !4262
  br i1 %cmp20.not.i, label %if.end38.i, label %if.then.i, !dbg !4263

if.then.i:                                        ; preds = %for.body.i58
    #dbg_value(i32 %c1.058.i, !4264, !DIExpression(), !4270)
    #dbg_value(i32 4, !4269, !DIExpression(), !4270)
  %cond.i.i = tail call noundef i32 @llvm.smin.i32(i32 %c1.058.i, i32 4), !dbg !4273
    #dbg_value(i32 %cond.i.i, !4237, !DIExpression(), !4244)
  %idx.ext.i59 = sext i32 %cond.i.i to i64, !dbg !4274
  %add.ptr.i60 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx3.i55, i64 %idx.ext.i59, !dbg !4274
  %call22.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i60) #12, !dbg !4275
  %26 = load i32, ptr %cof.060.i, align 4, !dbg !4276
  %add.i = add i32 %26, %call22.i, !dbg !4276
  store i32 %add.i, ptr %cof.060.i, align 4, !dbg !4276
  %cmp23.i = icmp eq i32 %add.i, 2, !dbg !4277
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i61, !dbg !4279

if.then25.i:                                      ; preds = %if.then.i
  %inc.i = add nsw i32 %c2.057.i, 1, !dbg !4280
    #dbg_value(i32 %inc.i, !4239, !DIExpression(), !4244)
    #dbg_value(i32 %c2.057.i, !4264, !DIExpression(), !4282)
    #dbg_value(i32 %conv.i56, !4269, !DIExpression(), !4282)
  %cond.i55.i = tail call noundef i32 @llvm.smin.i32(i32 %c2.057.i, i32 %conv.i56), !dbg !4284
    #dbg_value(i32 %cond.i55.i, !4237, !DIExpression(), !4244)
  %idx.ext27.i = sext i32 %cond.i55.i to i64, !dbg !4285
  %add.ptr28.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx8.i, i64 %idx.ext27.i, !dbg !4285
    #dbg_value(ptr %dep_dp, !4286, !DIExpression(), !4296)
    #dbg_value(ptr %add.ptr28.i, !4289, !DIExpression(), !4296)
  %call.i.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28.i) #12, !dbg !4298
    #dbg_value(i32 %call.i.i, !4290, !DIExpression(), !4296)
  %cmp.i.i = icmp eq i32 %call.i.i, 0, !dbg !4299
  br i1 %cmp.i.i, label %unary_exp_golomb_level_decode.exit.i, label %do.body.i.i, !dbg !4300

do.body.i.i:                                      ; preds = %if.then25.i, %do.body.i.i
  %symbol.0.i.i = phi i32 [ %inc.i.i, %do.body.i.i ], [ 0, %if.then25.i ], !dbg !4301
  %k.0.i.i = phi i32 [ %inc2.i.i, %do.body.i.i ], [ 1, %if.then25.i ], !dbg !4301
    #dbg_value(i32 %k.0.i.i, !4294, !DIExpression(), !4301)
    #dbg_value(i32 %symbol.0.i.i, !4290, !DIExpression(), !4296)
  %call1.i.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28.i) #12, !dbg !4302
    #dbg_value(i32 %call1.i.i, !4291, !DIExpression(), !4301)
  %inc.i.i = add nuw nsw i32 %symbol.0.i.i, 1, !dbg !4304
    #dbg_value(i32 %inc.i.i, !4290, !DIExpression(), !4296)
  %inc2.i.i = add nuw nsw i32 %k.0.i.i, 1, !dbg !4305
    #dbg_value(i32 %inc2.i.i, !4294, !DIExpression(), !4301)
  %cmp3.i.i = icmp ne i32 %call1.i.i, 0, !dbg !4306
  %cmp4.i.i = icmp ne i32 %inc2.i.i, 13, !dbg !4307
  %27 = select i1 %cmp3.i.i, i1 %cmp4.i.i, i1 false, !dbg !4307
  br i1 %27, label %do.body.i.i, label %do.end.i.i, !dbg !4308, !llvm.loop !4309

do.end.i.i:                                       ; preds = %do.body.i.i
  br i1 %cmp3.i.i, label %do.body.i.i.i, label %unary_exp_golomb_level_decode.exit.i, !dbg !4312

do.body.i.i.i:                                    ; preds = %do.end.i.i, %do.body.i.i.i
  %k.addr.0.i.i.i = phi i32 [ %k.addr.1.i.i.i, %do.body.i.i.i ], [ 0, %do.end.i.i ]
  %symbol.0.i.i.i = phi i32 [ %symbol.1.i.i.i, %do.body.i.i.i ], [ 0, %do.end.i.i ], !dbg !4313
    #dbg_value(i32 %symbol.0.i.i.i, !2164, !DIExpression(), !4313)
    #dbg_value(i32 %k.addr.0.i.i.i, !2162, !DIExpression(), !4313)
  %call.i.i.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !4316
    #dbg_value(i32 %call.i.i.i, !2163, !DIExpression(), !4313)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 1, !dbg !4317
  %shl.i.i.i = shl nuw i32 1, %k.addr.0.i.i.i, !dbg !4318
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !4318
  %k.addr.1.i.i.i = add nuw nsw i32 %k.addr.0.i.i.i, %inc.i.i.i, !dbg !4318
  %add.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 0, !dbg !4318
  %symbol.1.i.i.i = add nsw i32 %add.i.i.i, %symbol.0.i.i.i, !dbg !4318
    #dbg_value(i32 %symbol.1.i.i.i, !2164, !DIExpression(), !4313)
    #dbg_value(i32 %k.addr.1.i.i.i, !2162, !DIExpression(), !4313)
  %cmp1.not.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !4319
  br i1 %cmp1.not.i.i.i, label %while.cond.preheader.i.i.i, label %do.body.i.i.i, !dbg !4320, !llvm.loop !4321

while.cond.preheader.i.i.i:                       ; preds = %do.body.i.i.i
    #dbg_value(i32 0, !2165, !DIExpression(), !4313)
    #dbg_value(i32 %k.addr.1.i.i.i, !2162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4313)
  %tobool.not15.i.i.i = icmp eq i32 %k.addr.1.i.i.i, 0, !dbg !4324
  br i1 %tobool.not15.i.i.i, label %exp_golomb_decode_eq_prob.exit.i.i, label %while.body.i.i.i, !dbg !4324

while.body.i.i.i:                                 ; preds = %while.cond.preheader.i.i.i, %while.body.i.i.i
  %binary_symbol.017.i.i.i = phi i32 [ %binary_symbol.1.i.i.i, %while.body.i.i.i ], [ 0, %while.cond.preheader.i.i.i ]
  %k.addr.216.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i ], [ %k.addr.1.i.i.i, %while.cond.preheader.i.i.i ]
    #dbg_value(i32 %binary_symbol.017.i.i.i, !2165, !DIExpression(), !4313)
    #dbg_value(i32 %k.addr.216.i.i.i, !2162, !DIExpression(), !4313)
  %dec.i.i.i = add nsw i32 %k.addr.216.i.i.i, -1, !dbg !4325
    #dbg_value(i32 %dec.i.i.i, !2162, !DIExpression(), !4313)
  %call2.i.i.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !4326
  %cmp3.i.i.i = icmp eq i32 %call2.i.i.i, 1, !dbg !4327
  %shl5.i.i.i = shl nuw i32 1, %dec.i.i.i, !dbg !4328
  %or.i.i.i = select i1 %cmp3.i.i.i, i32 %shl5.i.i.i, i32 0, !dbg !4328
  %binary_symbol.1.i.i.i = or i32 %or.i.i.i, %binary_symbol.017.i.i.i, !dbg !4328
    #dbg_value(i32 %binary_symbol.1.i.i.i, !2165, !DIExpression(), !4313)
    #dbg_value(i32 %dec.i.i.i, !2162, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4313)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0, !dbg !4324
  br i1 %tobool.not.i.i.i, label %exp_golomb_decode_eq_prob.exit.i.i, label %while.body.i.i.i, !dbg !4324, !llvm.loop !4329

exp_golomb_decode_eq_prob.exit.i.i:               ; preds = %while.body.i.i.i, %while.cond.preheader.i.i.i
  %binary_symbol.0.lcssa.i.i.i = phi i32 [ 0, %while.cond.preheader.i.i.i ], [ %binary_symbol.1.i.i.i, %while.body.i.i.i ], !dbg !4313
  %add7.i.i.i = add nuw i32 %symbol.0.i.i, 2, !dbg !4331
  %add.i.i = add i32 %add7.i.i.i, %symbol.1.i.i.i, !dbg !4332
  %add8.i.i = add i32 %add.i.i, %binary_symbol.0.lcssa.i.i.i, !dbg !4333
    #dbg_value(i32 %add8.i.i, !4290, !DIExpression(), !4296)
  br label %unary_exp_golomb_level_decode.exit.i, !dbg !4334

unary_exp_golomb_level_decode.exit.i:             ; preds = %exp_golomb_decode_eq_prob.exit.i.i, %do.end.i.i, %if.then25.i
  %retval.0.i.i = phi i32 [ 0, %if.then25.i ], [ %add8.i.i, %exp_golomb_decode_eq_prob.exit.i.i ], [ %inc.i.i, %do.end.i.i ], !dbg !4335
  %28 = load i32, ptr %cof.060.i, align 4, !dbg !4336
  %add30.i = add i32 %28, %retval.0.i.i, !dbg !4336
  store i32 %add30.i, ptr %cof.060.i, align 4, !dbg !4336
    #dbg_value(i32 0, !4238, !DIExpression(), !4244)
  br label %if.end33.i, !dbg !4337

if.else.i61:                                      ; preds = %if.then.i
  %tobool.not.i = icmp eq i32 %c1.058.i, 0, !dbg !4338
  %inc32.i = add nsw i32 %c1.058.i, 1
  %spec.select.i62 = select i1 %tobool.not.i, i32 0, i32 %inc32.i, !dbg !4340
  br label %if.end33.i, !dbg !4340

if.end33.i:                                       ; preds = %if.else.i61, %unary_exp_golomb_level_decode.exit.i
  %c2.1.i = phi i32 [ %inc.i, %unary_exp_golomb_level_decode.exit.i ], [ %c2.057.i, %if.else.i61 ], !dbg !4244
  %c1.1.i = phi i32 [ 0, %unary_exp_golomb_level_decode.exit.i ], [ %spec.select.i62, %if.else.i61 ], !dbg !4244
    #dbg_value(i32 %c1.1.i, !4238, !DIExpression(), !4244)
    #dbg_value(i32 %c2.1.i, !4239, !DIExpression(), !4244)
  %call34.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12, !dbg !4341
  %tobool35.not.i = icmp eq i32 %call34.i, 0, !dbg !4341
  br i1 %tobool35.not.i, label %if.end38.i, label %if.then36.i, !dbg !4343

if.then36.i:                                      ; preds = %if.end33.i
  %29 = load i32, ptr %cof.060.i, align 4, !dbg !4344
  %mul.i63 = sub nsw i32 0, %29, !dbg !4344
  store i32 %mul.i63, ptr %cof.060.i, align 4, !dbg !4344
  br label %if.end38.i, !dbg !4346

if.end38.i:                                       ; preds = %if.then36.i, %if.end33.i, %for.body.i58
  %c2.2.i = phi i32 [ %c2.1.i, %if.then36.i ], [ %c2.1.i, %if.end33.i ], [ %c2.057.i, %for.body.i58 ], !dbg !4244
  %c1.2.i = phi i32 [ %c1.1.i, %if.then36.i ], [ %c1.1.i, %if.end33.i ], [ %c1.058.i, %for.body.i58 ], !dbg !4244
    #dbg_value(i32 %c1.2.i, !4238, !DIExpression(), !4244)
    #dbg_value(i32 %c2.2.i, !4239, !DIExpression(), !4244)
  %incdec.ptr.i = getelementptr inbounds i8, ptr %cof.060.i, i64 -4, !dbg !4347
    #dbg_value(ptr %incdec.ptr.i, !4243, !DIExpression(), !4244)
  %dec.i = add nsw i32 %i.059.i, -1, !dbg !4348
    #dbg_value(i32 %dec.i, !4236, !DIExpression(), !4244)
  %cmp.i = icmp sgt i32 %i.059.i, 0, !dbg !4349
  br i1 %cmp.i, label %for.body.i58, label %if.end9thread-pre-split, !dbg !4257, !llvm.loop !4350

if.end9thread-pre-split:                          ; preds = %if.end38.i
  %.pr = load i32, ptr %coeff_ctr1, align 4, !dbg !4352
  br label %if.end9, !dbg !4352

if.end9:                                          ; preds = %if.end9thread-pre-split, %entry
  %30 = phi i32 [ %.pr, %if.end9thread-pre-split ], [ %1, %entry ], !dbg !4352
  %tobool.not = icmp eq i32 %30, 0, !dbg !4352
  br i1 %tobool.not, label %if.else, label %if.then10, !dbg !4354

if.then10:                                        ; preds = %if.end9
  %value2 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !4355
  %coeff11 = getelementptr inbounds i8, ptr %0, i64 13008
  %pos = getelementptr inbounds i8, ptr %0, i64 13268
  store i32 0, ptr %value2, align 8, !dbg !4358
  %31 = load i32, ptr %pos, align 4, !dbg !4359
  %idxprom66 = sext i32 %31 to i64, !dbg !4361
  %arrayidx67 = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom66, !dbg !4361
  %32 = load i32, ptr %arrayidx67, align 4, !dbg !4361
  %cmp1268 = icmp eq i32 %32, 0, !dbg !4362
  br i1 %cmp1268, label %for.inc, label %for.end, !dbg !4363

for.inc:                                          ; preds = %if.then10, %for.inc
  %33 = phi i32 [ %35, %for.inc ], [ %31, %if.then10 ]
  %inc = add nsw i32 %33, 1, !dbg !4364
  store i32 %inc, ptr %pos, align 4, !dbg !4364
  %34 = load i32, ptr %value2, align 8, !dbg !4365
  %inc15 = add nsw i32 %34, 1, !dbg !4365
  store i32 %inc15, ptr %value2, align 8, !dbg !4358
  %35 = load i32, ptr %pos, align 4, !dbg !4359
  %idxprom = sext i32 %35 to i64, !dbg !4361
  %arrayidx = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom, !dbg !4361
  %36 = load i32, ptr %arrayidx, align 4, !dbg !4361
  %cmp12 = icmp eq i32 %36, 0, !dbg !4362
  br i1 %cmp12, label %for.inc, label %for.end, !dbg !4363, !llvm.loop !4366

for.end:                                          ; preds = %for.inc, %if.then10
  %idxprom.lcssa = phi i64 [ %idxprom66, %if.then10 ], [ %idxprom, %for.inc ]
  %.lcssa = phi i32 [ %31, %if.then10 ], [ %35, %for.inc ], !dbg !4359
  %arrayidx.le = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom.lcssa
  %inc18 = add nsw i32 %.lcssa, 1, !dbg !4368
  store i32 %inc18, ptr %pos, align 4, !dbg !4368
  %37 = load i32, ptr %arrayidx.le, align 4, !dbg !4369
  br label %if.end23, !dbg !4370

if.else:                                          ; preds = %if.then, %if.end9
  %value221 = getelementptr inbounds i8, ptr %se, i64 8, !dbg !4371
  store i32 0, ptr %value221, align 8, !dbg !4373
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.end
  %.sink = phi i32 [ 0, %if.else ], [ %37, %for.end ]
  %value122 = getelementptr inbounds i8, ptr %se, i64 4, !dbg !4374
  store i32 %.sink, ptr %value122, align 4, !dbg !4374
  %38 = load i32, ptr %coeff_ctr1, align 4, !dbg !4375
  %dec = add nsw i32 %38, -1, !dbg !4375
  store i32 %dec, ptr %coeff_ctr1, align 4, !dbg !4375
  %cmp24 = icmp eq i32 %38, 0, !dbg !4377
  br i1 %cmp24, label %if.then25, label %if.end27, !dbg !4378

if.then25:                                        ; preds = %if.end23
  %pos26 = getelementptr inbounds i8, ptr %0, i64 13268, !dbg !4379
  store i32 0, ptr %pos26, align 4, !dbg !4380
  br label %if.end27, !dbg !4381

if.end27:                                         ; preds = %if.then25, %if.end23
  ret void, !dbg !4382
}

; Function Attrs: nounwind uwtable
define dso_local i32 @readSyntaxElement_CABAC(ptr noundef %currMB, ptr noundef %se, ptr noundef %this_dataPart) local_unnamed_addr #0 !dbg !4383 {
entry:
    #dbg_value(ptr %currMB, !4387, !DIExpression(), !4392)
    #dbg_value(ptr %se, !4388, !DIExpression(), !4392)
    #dbg_value(ptr %this_dataPart, !4389, !DIExpression(), !4392)
  %de_cabac = getelementptr inbounds i8, ptr %this_dataPart, i64 8, !dbg !4393
    #dbg_value(ptr %de_cabac, !4390, !DIExpression(), !4392)
  %call = tail call i32 @arideco_bits_read(ptr noundef nonnull %de_cabac) #12, !dbg !4394
    #dbg_value(i32 %call, !4391, !DIExpression(), !4392)
  %reading = getelementptr inbounds i8, ptr %se, i64 40, !dbg !4395
  %0 = load ptr, ptr %reading, align 8, !dbg !4395
  tail call void %0(ptr noundef %currMB, ptr noundef %se, ptr noundef nonnull %de_cabac) #12, !dbg !4396
  %call1 = tail call i32 @arideco_bits_read(ptr noundef nonnull %de_cabac) #12, !dbg !4397
  %sub = sub nsw i32 %call1, %call, !dbg !4398
  %len = getelementptr inbounds i8, ptr %se, i64 12, !dbg !4399
  store i32 %sub, ptr %len, align 4, !dbg !4400
  ret i32 %sub, !dbg !4401
}

declare !dbg !4402 i32 @arideco_bits_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cabac_startcode_follows(ptr nocapture noundef readonly %currSlice, i32 noundef %eos_bit) local_unnamed_addr #0 !dbg !4405 {
entry:
    #dbg_value(ptr %currSlice, !4409, !DIExpression(), !4417)
    #dbg_value(i32 %eos_bit, !4410, !DIExpression(), !4417)
  %tobool.not = icmp eq i32 %eos_bit, 0, !dbg !4418
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !4419

if.then:                                          ; preds = %entry
    #dbg_value(!DIArgList(ptr poison, i32 poison), !4412, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 20, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4420)
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312, !dbg !4421
  %0 = load ptr, ptr %partArr, align 8, !dbg !4421
    #dbg_value(!DIArgList(ptr %0, i64 0), !4415, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !4420)
  %de_cabac = getelementptr inbounds i8, ptr %0, i64 8, !dbg !4422
    #dbg_value(ptr %de_cabac, !4416, !DIExpression(), !4420)
  %call = tail call i32 @biari_decode_final(ptr noundef nonnull %de_cabac) #12, !dbg !4423
    #dbg_value(i32 %call, !4411, !DIExpression(), !4417)
  %1 = icmp eq i32 %call, 1, !dbg !4424
  %2 = zext i1 %1 to i32, !dbg !4425
  br label %if.end, !dbg !4426

if.end:                                           ; preds = %entry, %if.then
  %bit.0 = phi i32 [ %2, %if.then ], [ 0, %entry ], !dbg !4427
    #dbg_value(i32 %bit.0, !4411, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4417)
  ret i32 %bit.0, !dbg !4428
}

; Function Attrs: nounwind uwtable
define dso_local void @readIPCM_CABAC(ptr nocapture noundef readonly %currSlice, ptr nocapture noundef %dP) local_unnamed_addr #0 !dbg !4429 {
entry:
  %val = alloca i32, align 4, !DIAssignID !4448
    #dbg_assign(i1 undef, !4441, !DIExpression(), !4448, ptr %val, !DIExpression(), !4449)
    #dbg_value(ptr %currSlice, !4433, !DIExpression(), !4449)
    #dbg_value(ptr %dP, !4434, !DIExpression(), !4449)
  %0 = load ptr, ptr %currSlice, align 8, !dbg !4450
    #dbg_value(ptr %0, !4435, !DIExpression(), !4449)
  %dec_picture2 = getelementptr inbounds i8, ptr %currSlice, i64 13520, !dbg !4451
  %1 = load ptr, ptr %dec_picture2, align 8, !dbg !4451
    #dbg_value(ptr %1, !4436, !DIExpression(), !4449)
  %2 = load ptr, ptr %dP, align 8, !dbg !4452
    #dbg_value(ptr %2, !4437, !DIExpression(), !4449)
    #dbg_value(ptr %dP, !4438, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4449)
  %streamBuffer = getelementptr inbounds i8, ptr %2, i64 16, !dbg !4453
  %3 = load ptr, ptr %streamBuffer, align 8, !dbg !4453
    #dbg_value(ptr %3, !4439, !DIExpression(), !4449)
  %bitstream_length = getelementptr inbounds i8, ptr %2, i64 12, !dbg !4454
  %4 = load i32, ptr %bitstream_length, align 4, !dbg !4454
  %shl = shl i32 %4, 3, !dbg !4455
  %add = or disjoint i32 %shl, 7, !dbg !4456
    #dbg_value(i32 %add, !4440, !DIExpression(), !4449)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12, !dbg !4457
  store i32 0, ptr %val, align 4, !dbg !4458, !DIAssignID !4459
    #dbg_assign(i32 0, !4441, !DIExpression(), !4459, ptr %val, !DIExpression(), !4449)
    #dbg_value(i32 0, !4442, !DIExpression(), !4449)
  %DbitsLeft = getelementptr inbounds i8, ptr %dP, i64 16
  %5 = load i32, ptr %DbitsLeft, align 8, !dbg !4460
  %cmp102 = icmp sgt i32 %5, 7, !dbg !4461
  br i1 %cmp102, label %while.body.lr.ph, label %while.end, !dbg !4462

while.body.lr.ph:                                 ; preds = %entry
  %Dvalue = getelementptr inbounds i8, ptr %dP, i64 12
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dP, i64 32
  br label %while.body, !dbg !4462

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %10, %while.body ]
  %7 = load i32, ptr %Dvalue, align 4, !dbg !4463
  %shr = lshr i32 %7, 8, !dbg !4463
  store i32 %shr, ptr %Dvalue, align 4, !dbg !4463
  %sub = add nsw i32 %6, -8, !dbg !4465
  store i32 %sub, ptr %DbitsLeft, align 8, !dbg !4465
  %8 = load ptr, ptr %Dcodestrm_len, align 8, !dbg !4466
  %9 = load i32, ptr %8, align 4, !dbg !4467
  %dec = add nsw i32 %9, -1, !dbg !4467
  store i32 %dec, ptr %8, align 4, !dbg !4467
  %10 = load i32, ptr %DbitsLeft, align 8, !dbg !4460
  %cmp = icmp sgt i32 %10, 7, !dbg !4461
  br i1 %cmp, label %while.body, label %while.end, !dbg !4462, !llvm.loop !4468

while.end:                                        ; preds = %while.body, %entry
  %Dcodestrm_len5 = getelementptr inbounds i8, ptr %dP, i64 32, !dbg !4470
  %11 = load ptr, ptr %Dcodestrm_len5, align 8, !dbg !4470
  %12 = load i32, ptr %11, align 4, !dbg !4471
  %shl6 = shl i32 %12, 3, !dbg !4472
    #dbg_value(i32 %shl6, !4443, !DIExpression(), !4449)
  %bitdepth_luma = getelementptr inbounds i8, ptr %0, i64 849040, !dbg !4473
  %13 = load i16, ptr %bitdepth_luma, align 8, !dbg !4473
  %conv = sext i16 %13 to i32, !dbg !4474
    #dbg_value(i32 %conv, !4444, !DIExpression(), !4449)
    #dbg_value(i32 0, !4446, !DIExpression(), !4449)
  %cof = getelementptr inbounds i8, ptr %currSlice, i64 1272
    #dbg_value(i32 0, !4442, !DIExpression(), !4449)
  br label %for.cond9.preheader, !dbg !4475

for.cond9.preheader:                              ; preds = %while.end, %for.cond9.preheader
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %for.cond9.preheader ]
  %bitoffset.0107 = phi i32 [ %shl6, %while.end ], [ %add17.15, %for.cond9.preheader ]
  %bits_read.0106 = phi i32 [ 0, %while.end ], [ %add13.15, %for.cond9.preheader ]
    #dbg_value(i64 %indvars.iv, !4446, !DIExpression(), !4449)
    #dbg_value(i64 0, !4447, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.0107, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.0106, !4442, !DIExpression(), !4449)
  %call = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.0107, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13 = add nsw i32 %call, %bits_read.0106, !dbg !4483
    #dbg_value(i32 %add13, !4442, !DIExpression(), !4449)
  %14 = load i32, ptr %val, align 4, !dbg !4484
  %15 = load ptr, ptr %cof, align 8, !dbg !4485
  %16 = load ptr, ptr %15, align 8, !dbg !4486
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv, !dbg !4486
  %17 = load ptr, ptr %arrayidx14, align 8, !dbg !4486
  store i32 %14, ptr %17, align 4, !dbg !4487
  %add17 = add nsw i32 %bitoffset.0107, %conv, !dbg !4488
    #dbg_value(i32 %add17, !4443, !DIExpression(), !4449)
    #dbg_value(i64 1, !4447, !DIExpression(), !4449)
  %call.1 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.1 = add nsw i32 %call.1, %add13, !dbg !4483
    #dbg_value(i32 %add13.1, !4442, !DIExpression(), !4449)
  %18 = load i32, ptr %val, align 4, !dbg !4484
  %19 = load ptr, ptr %cof, align 8, !dbg !4485
  %20 = load ptr, ptr %19, align 8, !dbg !4486
  %arrayidx14.1 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv, !dbg !4486
  %21 = load ptr, ptr %arrayidx14.1, align 8, !dbg !4486
  %arrayidx16.1 = getelementptr inbounds i8, ptr %21, i64 4, !dbg !4486
  store i32 %18, ptr %arrayidx16.1, align 4, !dbg !4487
  %add17.1 = add nsw i32 %add17, %conv, !dbg !4488
    #dbg_value(i32 %add17.1, !4443, !DIExpression(), !4449)
    #dbg_value(i64 2, !4447, !DIExpression(), !4449)
  %call.2 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.1, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.2 = add nsw i32 %call.2, %add13.1, !dbg !4483
    #dbg_value(i32 %add13.2, !4442, !DIExpression(), !4449)
  %22 = load i32, ptr %val, align 4, !dbg !4484
  %23 = load ptr, ptr %cof, align 8, !dbg !4485
  %24 = load ptr, ptr %23, align 8, !dbg !4486
  %arrayidx14.2 = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv, !dbg !4486
  %25 = load ptr, ptr %arrayidx14.2, align 8, !dbg !4486
  %arrayidx16.2 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !4486
  store i32 %22, ptr %arrayidx16.2, align 4, !dbg !4487
  %add17.2 = add nsw i32 %add17.1, %conv, !dbg !4488
    #dbg_value(i32 %add17.2, !4443, !DIExpression(), !4449)
    #dbg_value(i64 3, !4447, !DIExpression(), !4449)
  %call.3 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.2, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.3 = add nsw i32 %call.3, %add13.2, !dbg !4483
    #dbg_value(i32 %add13.3, !4442, !DIExpression(), !4449)
  %26 = load i32, ptr %val, align 4, !dbg !4484
  %27 = load ptr, ptr %cof, align 8, !dbg !4485
  %28 = load ptr, ptr %27, align 8, !dbg !4486
  %arrayidx14.3 = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv, !dbg !4486
  %29 = load ptr, ptr %arrayidx14.3, align 8, !dbg !4486
  %arrayidx16.3 = getelementptr inbounds i8, ptr %29, i64 12, !dbg !4486
  store i32 %26, ptr %arrayidx16.3, align 4, !dbg !4487
  %add17.3 = add nsw i32 %add17.2, %conv, !dbg !4488
    #dbg_value(i32 %add17.3, !4443, !DIExpression(), !4449)
    #dbg_value(i64 4, !4447, !DIExpression(), !4449)
  %call.4 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.3, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.4 = add nsw i32 %call.4, %add13.3, !dbg !4483
    #dbg_value(i32 %add13.4, !4442, !DIExpression(), !4449)
  %30 = load i32, ptr %val, align 4, !dbg !4484
  %31 = load ptr, ptr %cof, align 8, !dbg !4485
  %32 = load ptr, ptr %31, align 8, !dbg !4486
  %arrayidx14.4 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv, !dbg !4486
  %33 = load ptr, ptr %arrayidx14.4, align 8, !dbg !4486
  %arrayidx16.4 = getelementptr inbounds i8, ptr %33, i64 16, !dbg !4486
  store i32 %30, ptr %arrayidx16.4, align 4, !dbg !4487
  %add17.4 = add nsw i32 %add17.3, %conv, !dbg !4488
    #dbg_value(i32 %add17.4, !4443, !DIExpression(), !4449)
    #dbg_value(i64 5, !4447, !DIExpression(), !4449)
  %call.5 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.4, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.5 = add nsw i32 %call.5, %add13.4, !dbg !4483
    #dbg_value(i32 %add13.5, !4442, !DIExpression(), !4449)
  %34 = load i32, ptr %val, align 4, !dbg !4484
  %35 = load ptr, ptr %cof, align 8, !dbg !4485
  %36 = load ptr, ptr %35, align 8, !dbg !4486
  %arrayidx14.5 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv, !dbg !4486
  %37 = load ptr, ptr %arrayidx14.5, align 8, !dbg !4486
  %arrayidx16.5 = getelementptr inbounds i8, ptr %37, i64 20, !dbg !4486
  store i32 %34, ptr %arrayidx16.5, align 4, !dbg !4487
  %add17.5 = add nsw i32 %add17.4, %conv, !dbg !4488
    #dbg_value(i32 %add17.5, !4443, !DIExpression(), !4449)
    #dbg_value(i64 6, !4447, !DIExpression(), !4449)
  %call.6 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.5, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.6 = add nsw i32 %call.6, %add13.5, !dbg !4483
    #dbg_value(i32 %add13.6, !4442, !DIExpression(), !4449)
  %38 = load i32, ptr %val, align 4, !dbg !4484
  %39 = load ptr, ptr %cof, align 8, !dbg !4485
  %40 = load ptr, ptr %39, align 8, !dbg !4486
  %arrayidx14.6 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv, !dbg !4486
  %41 = load ptr, ptr %arrayidx14.6, align 8, !dbg !4486
  %arrayidx16.6 = getelementptr inbounds i8, ptr %41, i64 24, !dbg !4486
  store i32 %38, ptr %arrayidx16.6, align 4, !dbg !4487
  %add17.6 = add nsw i32 %add17.5, %conv, !dbg !4488
    #dbg_value(i32 %add17.6, !4443, !DIExpression(), !4449)
    #dbg_value(i64 7, !4447, !DIExpression(), !4449)
  %call.7 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.6, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.7 = add nsw i32 %call.7, %add13.6, !dbg !4483
    #dbg_value(i32 %add13.7, !4442, !DIExpression(), !4449)
  %42 = load i32, ptr %val, align 4, !dbg !4484
  %43 = load ptr, ptr %cof, align 8, !dbg !4485
  %44 = load ptr, ptr %43, align 8, !dbg !4486
  %arrayidx14.7 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv, !dbg !4486
  %45 = load ptr, ptr %arrayidx14.7, align 8, !dbg !4486
  %arrayidx16.7 = getelementptr inbounds i8, ptr %45, i64 28, !dbg !4486
  store i32 %42, ptr %arrayidx16.7, align 4, !dbg !4487
  %add17.7 = add nsw i32 %add17.6, %conv, !dbg !4488
    #dbg_value(i32 %add17.7, !4443, !DIExpression(), !4449)
    #dbg_value(i64 8, !4447, !DIExpression(), !4449)
  %call.8 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.7, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.8 = add nsw i32 %call.8, %add13.7, !dbg !4483
    #dbg_value(i32 %add13.8, !4442, !DIExpression(), !4449)
  %46 = load i32, ptr %val, align 4, !dbg !4484
  %47 = load ptr, ptr %cof, align 8, !dbg !4485
  %48 = load ptr, ptr %47, align 8, !dbg !4486
  %arrayidx14.8 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv, !dbg !4486
  %49 = load ptr, ptr %arrayidx14.8, align 8, !dbg !4486
  %arrayidx16.8 = getelementptr inbounds i8, ptr %49, i64 32, !dbg !4486
  store i32 %46, ptr %arrayidx16.8, align 4, !dbg !4487
  %add17.8 = add nsw i32 %add17.7, %conv, !dbg !4488
    #dbg_value(i32 %add17.8, !4443, !DIExpression(), !4449)
    #dbg_value(i64 9, !4447, !DIExpression(), !4449)
  %call.9 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.8, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.9 = add nsw i32 %call.9, %add13.8, !dbg !4483
    #dbg_value(i32 %add13.9, !4442, !DIExpression(), !4449)
  %50 = load i32, ptr %val, align 4, !dbg !4484
  %51 = load ptr, ptr %cof, align 8, !dbg !4485
  %52 = load ptr, ptr %51, align 8, !dbg !4486
  %arrayidx14.9 = getelementptr inbounds ptr, ptr %52, i64 %indvars.iv, !dbg !4486
  %53 = load ptr, ptr %arrayidx14.9, align 8, !dbg !4486
  %arrayidx16.9 = getelementptr inbounds i8, ptr %53, i64 36, !dbg !4486
  store i32 %50, ptr %arrayidx16.9, align 4, !dbg !4487
  %add17.9 = add nsw i32 %add17.8, %conv, !dbg !4488
    #dbg_value(i32 %add17.9, !4443, !DIExpression(), !4449)
    #dbg_value(i64 10, !4447, !DIExpression(), !4449)
  %call.10 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.9, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.10 = add nsw i32 %call.10, %add13.9, !dbg !4483
    #dbg_value(i32 %add13.10, !4442, !DIExpression(), !4449)
  %54 = load i32, ptr %val, align 4, !dbg !4484
  %55 = load ptr, ptr %cof, align 8, !dbg !4485
  %56 = load ptr, ptr %55, align 8, !dbg !4486
  %arrayidx14.10 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv, !dbg !4486
  %57 = load ptr, ptr %arrayidx14.10, align 8, !dbg !4486
  %arrayidx16.10 = getelementptr inbounds i8, ptr %57, i64 40, !dbg !4486
  store i32 %54, ptr %arrayidx16.10, align 4, !dbg !4487
  %add17.10 = add nsw i32 %add17.9, %conv, !dbg !4488
    #dbg_value(i32 %add17.10, !4443, !DIExpression(), !4449)
    #dbg_value(i64 11, !4447, !DIExpression(), !4449)
  %call.11 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.10, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.11 = add nsw i32 %call.11, %add13.10, !dbg !4483
    #dbg_value(i32 %add13.11, !4442, !DIExpression(), !4449)
  %58 = load i32, ptr %val, align 4, !dbg !4484
  %59 = load ptr, ptr %cof, align 8, !dbg !4485
  %60 = load ptr, ptr %59, align 8, !dbg !4486
  %arrayidx14.11 = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv, !dbg !4486
  %61 = load ptr, ptr %arrayidx14.11, align 8, !dbg !4486
  %arrayidx16.11 = getelementptr inbounds i8, ptr %61, i64 44, !dbg !4486
  store i32 %58, ptr %arrayidx16.11, align 4, !dbg !4487
  %add17.11 = add nsw i32 %add17.10, %conv, !dbg !4488
    #dbg_value(i32 %add17.11, !4443, !DIExpression(), !4449)
    #dbg_value(i64 12, !4447, !DIExpression(), !4449)
  %call.12 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.11, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.12 = add nsw i32 %call.12, %add13.11, !dbg !4483
    #dbg_value(i32 %add13.12, !4442, !DIExpression(), !4449)
  %62 = load i32, ptr %val, align 4, !dbg !4484
  %63 = load ptr, ptr %cof, align 8, !dbg !4485
  %64 = load ptr, ptr %63, align 8, !dbg !4486
  %arrayidx14.12 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv, !dbg !4486
  %65 = load ptr, ptr %arrayidx14.12, align 8, !dbg !4486
  %arrayidx16.12 = getelementptr inbounds i8, ptr %65, i64 48, !dbg !4486
  store i32 %62, ptr %arrayidx16.12, align 4, !dbg !4487
  %add17.12 = add nsw i32 %add17.11, %conv, !dbg !4488
    #dbg_value(i32 %add17.12, !4443, !DIExpression(), !4449)
    #dbg_value(i64 13, !4447, !DIExpression(), !4449)
  %call.13 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.12, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.13 = add nsw i32 %call.13, %add13.12, !dbg !4483
    #dbg_value(i32 %add13.13, !4442, !DIExpression(), !4449)
  %66 = load i32, ptr %val, align 4, !dbg !4484
  %67 = load ptr, ptr %cof, align 8, !dbg !4485
  %68 = load ptr, ptr %67, align 8, !dbg !4486
  %arrayidx14.13 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv, !dbg !4486
  %69 = load ptr, ptr %arrayidx14.13, align 8, !dbg !4486
  %arrayidx16.13 = getelementptr inbounds i8, ptr %69, i64 52, !dbg !4486
  store i32 %66, ptr %arrayidx16.13, align 4, !dbg !4487
  %add17.13 = add nsw i32 %add17.12, %conv, !dbg !4488
    #dbg_value(i32 %add17.13, !4443, !DIExpression(), !4449)
    #dbg_value(i64 14, !4447, !DIExpression(), !4449)
  %call.14 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.13, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.14 = add nsw i32 %call.14, %add13.13, !dbg !4483
    #dbg_value(i32 %add13.14, !4442, !DIExpression(), !4449)
  %70 = load i32, ptr %val, align 4, !dbg !4484
  %71 = load ptr, ptr %cof, align 8, !dbg !4485
  %72 = load ptr, ptr %71, align 8, !dbg !4486
  %arrayidx14.14 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv, !dbg !4486
  %73 = load ptr, ptr %arrayidx14.14, align 8, !dbg !4486
  %arrayidx16.14 = getelementptr inbounds i8, ptr %73, i64 56, !dbg !4486
  store i32 %70, ptr %arrayidx16.14, align 4, !dbg !4487
  %add17.14 = add nsw i32 %add17.13, %conv, !dbg !4488
    #dbg_value(i32 %add17.14, !4443, !DIExpression(), !4449)
    #dbg_value(i64 15, !4447, !DIExpression(), !4449)
  %call.15 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.14, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12, !dbg !4477
  %add13.15 = add nsw i32 %call.15, %add13.14, !dbg !4483
    #dbg_value(i32 %add13.15, !4442, !DIExpression(), !4449)
  %74 = load i32, ptr %val, align 4, !dbg !4484
  %75 = load ptr, ptr %cof, align 8, !dbg !4485
  %76 = load ptr, ptr %75, align 8, !dbg !4486
  %arrayidx14.15 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv, !dbg !4486
  %77 = load ptr, ptr %arrayidx14.15, align 8, !dbg !4486
  %arrayidx16.15 = getelementptr inbounds i8, ptr %77, i64 60, !dbg !4486
  store i32 %74, ptr %arrayidx16.15, align 4, !dbg !4487
  %add17.15 = add nsw i32 %add17.14, %conv, !dbg !4488
    #dbg_value(i32 %add17.15, !4443, !DIExpression(), !4449)
    #dbg_value(i64 16, !4447, !DIExpression(), !4449)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4489
    #dbg_value(i64 %indvars.iv.next, !4446, !DIExpression(), !4449)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !4490
  br i1 %exitcond.not, label %for.end20, label %for.cond9.preheader, !dbg !4475, !llvm.loop !4491

for.end20:                                        ; preds = %for.cond9.preheader
  %bitdepth_chroma = getelementptr inbounds i8, ptr %0, i64 849042, !dbg !4493
  %78 = load i16, ptr %bitdepth_chroma, align 2, !dbg !4493
  %conv21 = sext i16 %78 to i32, !dbg !4494
    #dbg_value(i32 %conv21, !4444, !DIExpression(), !4449)
  %chroma_format_idc = getelementptr inbounds i8, ptr %1, i64 268, !dbg !4495
  %79 = load i32, ptr %chroma_format_idc, align 4, !dbg !4495
  %cmp22.not = icmp eq i32 %79, 0, !dbg !4497
  br i1 %cmp22.not, label %if.end, label %land.lhs.true, !dbg !4498

land.lhs.true:                                    ; preds = %for.end20
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280, !dbg !4499
  %80 = load i32, ptr %separate_colour_plane_flag, align 8, !dbg !4499
  %cmp24 = icmp eq i32 %80, 0, !dbg !4500
  br i1 %cmp24, label %for.cond26.preheader, label %if.end, !dbg !4501

for.cond26.preheader:                             ; preds = %land.lhs.true
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
    #dbg_value(i32 1, !4445, !DIExpression(), !4449)
    #dbg_value(i32 %add17.15, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %add13.15, !4442, !DIExpression(), !4449)
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %81 = load i32, ptr %mb_cr_size_y, align 8, !dbg !4502
  %82 = icmp sgt i32 %81, 0, !dbg !4509
  br i1 %82, label %for.cond34.preheader.lr.ph, label %if.end

for.cond34.preheader.lr.ph:                       ; preds = %for.cond26.preheader
    #dbg_value(i64 1, !4445, !DIExpression(), !4449)
    #dbg_value(i32 0, !4446, !DIExpression(), !4449)
    #dbg_value(i32 %add17.15, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %add13.15, !4442, !DIExpression(), !4449)
  %83 = load i32, ptr %mb_cr_size_x, align 4, !dbg !4510
  %84 = icmp sgt i32 %83, 0, !dbg !4514
  br i1 %84, label %for.cond34.preheader, label %if.end

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.inc51
  %85 = phi i32 [ %93, %for.inc51 ], [ %81, %for.cond34.preheader.lr.ph ]
  %86 = phi i32 [ %94, %for.inc51 ], [ %83, %for.cond34.preheader.lr.ph ], !dbg !4510
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.inc51 ], [ 0, %for.cond34.preheader.lr.ph ]
  %bitoffset.3116 = phi i32 [ %bitoffset.4.lcssa, %for.inc51 ], [ %add17.15, %for.cond34.preheader.lr.ph ]
  %bits_read.3115 = phi i32 [ %bits_read.4.lcssa, %for.inc51 ], [ %add13.15, %for.cond34.preheader.lr.ph ]
    #dbg_value(i64 %indvars.iv132, !4446, !DIExpression(), !4449)
    #dbg_value(i32 0, !4447, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.3116, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.3115, !4442, !DIExpression(), !4449)
  %cmp35109 = icmp sgt i32 %86, 0, !dbg !4514
  br i1 %cmp35109, label %for.body37, label %for.inc51, !dbg !4515

for.body37:                                       ; preds = %for.cond34.preheader, %for.body37
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body37 ], [ 0, %for.cond34.preheader ]
  %bitoffset.4111 = phi i32 [ %add47, %for.body37 ], [ %bitoffset.3116, %for.cond34.preheader ]
  %bits_read.4110 = phi i32 [ %add39, %for.body37 ], [ %bits_read.3115, %for.cond34.preheader ]
    #dbg_value(i64 %indvars.iv129, !4447, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.4111, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.4110, !4442, !DIExpression(), !4449)
  %call38 = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.4111, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv21) #12, !dbg !4516
  %add39 = add nsw i32 %call38, %bits_read.4110, !dbg !4518
    #dbg_value(i32 %add39, !4442, !DIExpression(), !4449)
  %87 = load i32, ptr %val, align 4, !dbg !4519
  %88 = load ptr, ptr %cof, align 8, !dbg !4520
  %arrayidx42 = getelementptr inbounds i8, ptr %88, i64 8, !dbg !4521
  %89 = load ptr, ptr %arrayidx42, align 8, !dbg !4521
  %arrayidx44 = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv132, !dbg !4521
  %90 = load ptr, ptr %arrayidx44, align 8, !dbg !4521
  %arrayidx46 = getelementptr inbounds i32, ptr %90, i64 %indvars.iv129, !dbg !4521
  store i32 %87, ptr %arrayidx46, align 4, !dbg !4522
  %add47 = add nsw i32 %bitoffset.4111, %conv21, !dbg !4523
    #dbg_value(i32 %add47, !4443, !DIExpression(), !4449)
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1, !dbg !4524
    #dbg_value(i64 %indvars.iv.next130, !4447, !DIExpression(), !4449)
  %91 = load i32, ptr %mb_cr_size_x, align 4, !dbg !4510
  %92 = sext i32 %91 to i64, !dbg !4514
  %cmp35 = icmp slt i64 %indvars.iv.next130, %92, !dbg !4514
  br i1 %cmp35, label %for.body37, label %for.inc51.loopexit, !dbg !4515, !llvm.loop !4525

for.inc51.loopexit:                               ; preds = %for.body37
  %.pre = load i32, ptr %mb_cr_size_y, align 8, !dbg !4502
  br label %for.inc51, !dbg !4527

for.inc51:                                        ; preds = %for.inc51.loopexit, %for.cond34.preheader
  %93 = phi i32 [ %85, %for.cond34.preheader ], [ %.pre, %for.inc51.loopexit ], !dbg !4502
  %94 = phi i32 [ %86, %for.cond34.preheader ], [ %91, %for.inc51.loopexit ]
  %bits_read.4.lcssa = phi i32 [ %bits_read.3115, %for.cond34.preheader ], [ %add39, %for.inc51.loopexit ], !dbg !4449
  %bitoffset.4.lcssa = phi i32 [ %bitoffset.3116, %for.cond34.preheader ], [ %add47, %for.inc51.loopexit ], !dbg !4449
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1, !dbg !4527
    #dbg_value(i64 %indvars.iv.next133, !4446, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.4.lcssa, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.4.lcssa, !4442, !DIExpression(), !4449)
  %95 = sext i32 %93 to i64, !dbg !4509
  %cmp31 = icmp slt i64 %indvars.iv.next133, %95, !dbg !4509
  br i1 %cmp31, label %for.cond34.preheader, label %for.inc54, !dbg !4528, !llvm.loop !4529

for.inc54:                                        ; preds = %for.inc51
    #dbg_value(i64 2, !4445, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.4.lcssa, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.4.lcssa, !4442, !DIExpression(), !4449)
    #dbg_value(i32 0, !4446, !DIExpression(), !4449)
  %cmp31114.1 = icmp sgt i32 %93, 0, !dbg !4509
  br i1 %cmp31114.1, label %for.cond34.preheader.lr.ph.1, label %if.end, !dbg !4528

for.cond34.preheader.lr.ph.1:                     ; preds = %for.inc54
  %.pr = load i32, ptr %mb_cr_size_x, align 4, !dbg !4510
  %96 = icmp sgt i32 %.pr, 0, !dbg !4514
  br i1 %96, label %for.cond34.preheader.1, label %if.end

for.cond34.preheader.1:                           ; preds = %for.cond34.preheader.lr.ph.1, %for.inc51.1
  %97 = phi i32 [ %105, %for.inc51.1 ], [ %93, %for.cond34.preheader.lr.ph.1 ]
  %98 = phi i32 [ %106, %for.inc51.1 ], [ %.pr, %for.cond34.preheader.lr.ph.1 ], !dbg !4510
  %indvars.iv132.1 = phi i64 [ %indvars.iv.next133.1, %for.inc51.1 ], [ 0, %for.cond34.preheader.lr.ph.1 ]
  %bitoffset.3116.1 = phi i32 [ %bitoffset.4.lcssa.1, %for.inc51.1 ], [ %bitoffset.4.lcssa, %for.cond34.preheader.lr.ph.1 ]
  %bits_read.3115.1 = phi i32 [ %bits_read.4.lcssa.1, %for.inc51.1 ], [ %bits_read.4.lcssa, %for.cond34.preheader.lr.ph.1 ]
    #dbg_value(i64 %indvars.iv132.1, !4446, !DIExpression(), !4449)
    #dbg_value(i32 0, !4447, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.3116.1, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.3115.1, !4442, !DIExpression(), !4449)
  %cmp35109.1 = icmp sgt i32 %98, 0, !dbg !4514
  br i1 %cmp35109.1, label %for.body37.1, label %for.inc51.1, !dbg !4515

for.body37.1:                                     ; preds = %for.cond34.preheader.1, %for.body37.1
  %indvars.iv129.1 = phi i64 [ %indvars.iv.next130.1, %for.body37.1 ], [ 0, %for.cond34.preheader.1 ]
  %bitoffset.4111.1 = phi i32 [ %add47.1, %for.body37.1 ], [ %bitoffset.3116.1, %for.cond34.preheader.1 ]
  %bits_read.4110.1 = phi i32 [ %add39.1, %for.body37.1 ], [ %bits_read.3115.1, %for.cond34.preheader.1 ]
    #dbg_value(i64 %indvars.iv129.1, !4447, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.4111.1, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.4110.1, !4442, !DIExpression(), !4449)
  %call38.1 = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.4111.1, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv21) #12, !dbg !4516
  %add39.1 = add nsw i32 %call38.1, %bits_read.4110.1, !dbg !4518
    #dbg_value(i32 %add39.1, !4442, !DIExpression(), !4449)
  %99 = load i32, ptr %val, align 4, !dbg !4519
  %100 = load ptr, ptr %cof, align 8, !dbg !4520
  %arrayidx42.1 = getelementptr inbounds i8, ptr %100, i64 16, !dbg !4521
  %101 = load ptr, ptr %arrayidx42.1, align 8, !dbg !4521
  %arrayidx44.1 = getelementptr inbounds ptr, ptr %101, i64 %indvars.iv132.1, !dbg !4521
  %102 = load ptr, ptr %arrayidx44.1, align 8, !dbg !4521
  %arrayidx46.1 = getelementptr inbounds i32, ptr %102, i64 %indvars.iv129.1, !dbg !4521
  store i32 %99, ptr %arrayidx46.1, align 4, !dbg !4522
  %add47.1 = add nsw i32 %bitoffset.4111.1, %conv21, !dbg !4523
    #dbg_value(i32 %add47.1, !4443, !DIExpression(), !4449)
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129.1, 1, !dbg !4524
    #dbg_value(i64 %indvars.iv.next130.1, !4447, !DIExpression(), !4449)
  %103 = load i32, ptr %mb_cr_size_x, align 4, !dbg !4510
  %104 = sext i32 %103 to i64, !dbg !4514
  %cmp35.1 = icmp slt i64 %indvars.iv.next130.1, %104, !dbg !4514
  br i1 %cmp35.1, label %for.body37.1, label %for.inc51.loopexit.1, !dbg !4515, !llvm.loop !4525

for.inc51.loopexit.1:                             ; preds = %for.body37.1
  %.pre139 = load i32, ptr %mb_cr_size_y, align 8, !dbg !4502
  br label %for.inc51.1, !dbg !4527

for.inc51.1:                                      ; preds = %for.inc51.loopexit.1, %for.cond34.preheader.1
  %105 = phi i32 [ %97, %for.cond34.preheader.1 ], [ %.pre139, %for.inc51.loopexit.1 ], !dbg !4502
  %106 = phi i32 [ %98, %for.cond34.preheader.1 ], [ %103, %for.inc51.loopexit.1 ]
  %bits_read.4.lcssa.1 = phi i32 [ %bits_read.3115.1, %for.cond34.preheader.1 ], [ %add39.1, %for.inc51.loopexit.1 ], !dbg !4449
  %bitoffset.4.lcssa.1 = phi i32 [ %bitoffset.3116.1, %for.cond34.preheader.1 ], [ %add47.1, %for.inc51.loopexit.1 ], !dbg !4449
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132.1, 1, !dbg !4527
    #dbg_value(i64 %indvars.iv.next133.1, !4446, !DIExpression(), !4449)
    #dbg_value(i32 %bitoffset.4.lcssa.1, !4443, !DIExpression(), !4449)
    #dbg_value(i32 %bits_read.4.lcssa.1, !4442, !DIExpression(), !4449)
  %107 = sext i32 %105 to i64, !dbg !4509
  %cmp31.1 = icmp slt i64 %indvars.iv.next133.1, %107, !dbg !4509
  br i1 %cmp31.1, label %for.cond34.preheader.1, label %if.end, !dbg !4528, !llvm.loop !4529

if.end:                                           ; preds = %for.inc51.1, %for.cond34.preheader.lr.ph, %for.inc54, %for.cond34.preheader.lr.ph.1, %for.cond26.preheader, %land.lhs.true, %for.end20
  %bits_read.5 = phi i32 [ %add13.15, %land.lhs.true ], [ %add13.15, %for.end20 ], [ %add13.15, %for.cond26.preheader ], [ %bits_read.4.lcssa, %for.inc54 ], [ %bits_read.4.lcssa, %for.cond34.preheader.lr.ph.1 ], [ %add13.15, %for.cond34.preheader.lr.ph ], [ %bits_read.4.lcssa.1, %for.inc51.1 ], !dbg !4532
    #dbg_value(i32 %bits_read.5, !4442, !DIExpression(), !4449)
  %shr57 = ashr i32 %bits_read.5, 3, !dbg !4533
  %108 = load ptr, ptr %Dcodestrm_len5, align 8, !dbg !4534
  %109 = load i32, ptr %108, align 4, !dbg !4535
  %add59 = add nsw i32 %109, %shr57, !dbg !4535
  store i32 %add59, ptr %108, align 4, !dbg !4535
  %and = and i32 %bits_read.5, 7, !dbg !4536
  %tobool.not = icmp eq i32 %and, 0, !dbg !4536
  br i1 %tobool.not, label %if.end63, label %if.then60, !dbg !4538

if.then60:                                        ; preds = %if.end
  %110 = load ptr, ptr %Dcodestrm_len5, align 8, !dbg !4539
  %111 = load i32, ptr %110, align 4, !dbg !4541
  %inc62 = add nsw i32 %111, 1, !dbg !4541
  store i32 %inc62, ptr %110, align 4, !dbg !4541
  br label %if.end63, !dbg !4542

if.end63:                                         ; preds = %if.then60, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12, !dbg !4543
  ret void, !dbg !4543
}

declare !dbg !4544 i32 @GetBits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295}
!llvm.ident = !{!296}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ldecod_src/cabac.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "bcdb76144d38108015c4726e3be63d5f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 38)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "po2", scope: !14, file: !205, line: 247, type: !282, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !111, globals: !201, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !25, !31, !40, !47, !55, !59, !67, !87}
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
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 166, baseType: !42, size: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "IS_LUMA", value: 0)
!58 = !DIEnumerator(name: "IS_CHROMA", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 142, baseType: !42, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66}
!61 = !DIEnumerator(name: "P_SLICE", value: 0)
!62 = !DIEnumerator(name: "B_SLICE", value: 1)
!63 = !DIEnumerator(name: "I_SLICE", value: 2)
!64 = !DIEnumerator(name: "SP_SLICE", value: 3)
!65 = !DIEnumerator(name: "SI_SLICE", value: 4)
!66 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 117, baseType: !42, size: 32, elements: !69)
!68 = !DIFile(filename: "ldecod_src/inc/defines.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "f06de374c735b286d10ba4ea0c8c0a5d")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!70 = !DIEnumerator(name: "PSKIP", value: 0)
!71 = !DIEnumerator(name: "BSKIP_DIRECT", value: 0)
!72 = !DIEnumerator(name: "P16x16", value: 1)
!73 = !DIEnumerator(name: "P16x8", value: 2)
!74 = !DIEnumerator(name: "P8x16", value: 3)
!75 = !DIEnumerator(name: "SMB8x8", value: 4)
!76 = !DIEnumerator(name: "SMB8x4", value: 5)
!77 = !DIEnumerator(name: "SMB4x8", value: 6)
!78 = !DIEnumerator(name: "SMB4x4", value: 7)
!79 = !DIEnumerator(name: "P8x8", value: 8)
!80 = !DIEnumerator(name: "I4MB", value: 9)
!81 = !DIEnumerator(name: "I16MB", value: 10)
!82 = !DIEnumerator(name: "IBLOCK", value: 11)
!83 = !DIEnumerator(name: "SI4MB", value: 12)
!84 = !DIEnumerator(name: "I8MB", value: 13)
!85 = !DIEnumerator(name: "IPCM", value: 14)
!86 = !DIEnumerator(name: "MAXMODE", value: 15)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 160, baseType: !42, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!89 = !DIEnumerator(name: "LUMA_16DC", value: 0)
!90 = !DIEnumerator(name: "LUMA_16AC", value: 1)
!91 = !DIEnumerator(name: "LUMA_8x8", value: 2)
!92 = !DIEnumerator(name: "LUMA_8x4", value: 3)
!93 = !DIEnumerator(name: "LUMA_4x8", value: 4)
!94 = !DIEnumerator(name: "LUMA_4x4", value: 5)
!95 = !DIEnumerator(name: "CHROMA_DC", value: 6)
!96 = !DIEnumerator(name: "CHROMA_AC", value: 7)
!97 = !DIEnumerator(name: "CHROMA_DC_2x4", value: 8)
!98 = !DIEnumerator(name: "CHROMA_DC_4x4", value: 9)
!99 = !DIEnumerator(name: "CB_16DC", value: 10)
!100 = !DIEnumerator(name: "CB_16AC", value: 11)
!101 = !DIEnumerator(name: "CB_8x8", value: 12)
!102 = !DIEnumerator(name: "CB_8x4", value: 13)
!103 = !DIEnumerator(name: "CB_4x8", value: 14)
!104 = !DIEnumerator(name: "CB_4x4", value: 15)
!105 = !DIEnumerator(name: "CR_16DC", value: 16)
!106 = !DIEnumerator(name: "CR_16AC", value: 17)
!107 = !DIEnumerator(name: "CR_8x8", value: 18)
!108 = !DIEnumerator(name: "CR_8x4", value: 19)
!109 = !DIEnumerator(name: "CR_4x8", value: 20)
!110 = !DIEnumerator(name: "CR_4x4", value: 21)
!111 = !{!112, !150, !151, !179, !192, !194, !18, !42}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !114, line: 153, baseType: !115)
!114 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 145, size: 2912, elements: !116)
!116 = !{!117, !132, !137, !141, !145, !149}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !115, file: !114, line: 147, baseType: !118, size: 1056)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 1056, elements: !129)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !114, line: 122, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 117, size: 32, elements: !121)
!121 = !{!122, !126, !128}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !120, file: !114, line: 119, baseType: !123, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !124, line: 23, baseType: !125)
!124 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !120, file: !114, line: 120, baseType: !127, size: 8, offset: 16)
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !120, file: !114, line: 121, baseType: !127, size: 8, offset: 24)
!129 = !{!130, !131}
!130 = !DISubrange(count: 3)
!131 = !DISubrange(count: 11)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !115, file: !114, line: 148, baseType: !133, size: 576, offset: 1056)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 576, elements: !134)
!134 = !{!135, !136}
!135 = !DISubrange(count: 2)
!136 = !DISubrange(count: 9)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !115, file: !114, line: 149, baseType: !138, size: 640, offset: 1632)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 640, elements: !139)
!139 = !{!135, !140}
!140 = !DISubrange(count: 10)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !115, file: !114, line: 150, baseType: !142, size: 384, offset: 2272)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 384, elements: !143)
!143 = !{!135, !144}
!144 = !DISubrange(count: 6)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !115, file: !114, line: 151, baseType: !146, size: 128, offset: 2656)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 4)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !115, file: !114, line: 152, baseType: !146, size: 128, offset: 2784)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !114, line: 175, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 164, size: 52768, elements: !154)
!154 = !{!155, !158, !161, !162, !165, !169, !173, !174, !178}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !153, file: !114, line: 166, baseType: !156, size: 96)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 96, elements: !157)
!157 = !{!130}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !153, file: !114, line: 167, baseType: !159, size: 64, offset: 96)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !160)
!160 = !{!135}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !153, file: !114, line: 168, baseType: !146, size: 128, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !153, file: !114, line: 169, baseType: !163, size: 384, offset: 288)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 384, elements: !164)
!164 = !{!130, !148}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !153, file: !114, line: 170, baseType: !166, size: 2816, offset: 672)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2816, elements: !167)
!167 = !{!168, !148}
!168 = !DISubrange(count: 22)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !153, file: !114, line: 171, baseType: !170, size: 21120, offset: 3488)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 21120, elements: !171)
!171 = !{!135, !168, !172}
!172 = !DISubrange(count: 15)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !153, file: !114, line: 172, baseType: !170, size: 21120, offset: 24608)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !153, file: !114, line: 173, baseType: !175, size: 3520, offset: 45728)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3520, elements: !176)
!176 = !{!168, !177}
!177 = !DISubrange(count: 5)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !153, file: !114, line: 174, baseType: !175, size: 3520, offset: 49248)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !114, line: 97, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !114, line: 95, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 88, size: 256, elements: !183)
!183 = !{!184, !185, !186, !187, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !182, file: !114, line: 90, baseType: !42, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !182, file: !114, line: 91, baseType: !42, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !182, file: !114, line: 92, baseType: !18, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !182, file: !114, line: 93, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !124, line: 21, baseType: !127)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !182, file: !114, line: 94, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextTypePtr", file: !114, line: 124, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !195, line: 103, baseType: !196)
!195 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !197, line: 27, baseType: !198)
!197 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !199, line: 44, baseType: !200)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!200 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!201 = !{!0, !7, !202, !212, !12, !218, !223, !228, !233, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "INT_BITS", scope: !204, file: !205, line: 118, type: !211, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "iabs", scope: !205, file: !205, line: 116, type: !206, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !208)
!205 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!206 = !DISubroutineType(types: !207)
!207 = !{!18, !18}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "x", arg: 1, scope: !204, file: !205, line: 116, type: !18)
!210 = !DILocalVariable(name: "y", scope: !204, file: !205, line: 119, type: !18)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "type2ctx_bcbp", scope: !14, file: !2, line: 29, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 352, elements: !217)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!217 = !{!168}
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "pos2ctx_map_int", scope: !14, file: !2, line: 1897, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1408, elements: !217)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "pos2ctx_map4x4", scope: !14, file: !2, line: 1877, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 16)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "pos2ctx_map8x8i", scope: !14, file: !2, line: 1889, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 512, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 64)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "pos2ctx_map8x4i", scope: !14, file: !2, line: 1893, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 32)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "pos2ctx_map4x8i", scope: !14, file: !2, line: 1895, type: !235, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "pos2ctx_map2x4c", scope: !14, file: !2, line: 1878, type: !225, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "pos2ctx_map4x4c", scope: !14, file: !2, line: 1879, type: !225, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "pos2ctx_map", scope: !14, file: !2, line: 1880, type: !220, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "pos2ctx_map8x8", scope: !14, file: !2, line: 1871, type: !230, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "pos2ctx_map8x4", scope: !14, file: !2, line: 1875, type: !235, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "type2ctx_map", scope: !14, file: !2, line: 30, type: !214, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "type2ctx_last", scope: !14, file: !2, line: 31, type: !214, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "maxpos", scope: !14, file: !2, line: 27, type: !214, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "c1isdc", scope: !14, file: !2, line: 28, type: !214, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "pos2ctx_last", scope: !14, file: !2, line: 1916, type: !220, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "pos2ctx_last4x4", scope: !14, file: !2, line: 1913, type: !225, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "pos2ctx_last8x8", scope: !14, file: !2, line: 1906, type: !230, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "pos2ctx_last8x4", scope: !14, file: !2, line: 1910, type: !235, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "pos2ctx_last2x4c", scope: !14, file: !2, line: 1914, type: !225, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "pos2ctx_last4x4c", scope: !14, file: !2, line: 1915, type: !225, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "type2ctx_one", scope: !14, file: !2, line: 32, type: !214, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "type2ctx_abs", scope: !14, file: !2, line: 33, type: !214, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "max_c2", scope: !14, file: !2, line: 34, type: !214, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "assignSE2partition", scope: !14, file: !278, line: 103, type: !279, isLocal: true, isDefinition: true)
!278 = !DIFile(filename: "ldecod_src/inc/elements.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "655df3b60bdcd53a79db33d4ea16f27b")
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 320, elements: !280)
!280 = !{!135, !281}
!281 = !DISubrange(count: 20)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 4096, elements: !231)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !195, line: 104, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !286, line: 27, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !199, line: 45, baseType: !288)
!288 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!289 = !{i32 7, !"Dwarf Version", i32 5}
!290 = !{i32 2, !"Debug Info Version", i32 3}
!291 = !{i32 1, !"wchar_size", i32 4}
!292 = !{i32 8, !"PIC Level", i32 2}
!293 = !{i32 7, !"PIE Level", i32 2}
!294 = !{i32 7, !"uwtable", i32 2}
!295 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!296 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!297 = distinct !DISubprogram(name: "CheckAvailabilityOfNeighborsCABAC", scope: !2, file: !2, line: 45, type: !298, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1387)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !114, line: 273, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !114, line: 197, size: 3840, elements: !303)
!303 = !{!304, !1303, !1304, !1305, !1306, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1335, !1336, !1337, !1338, !1339, !1342, !1343, !1345, !1346, !1347, !1348, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1372, !1373, !1378, !1382, !1386}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !302, file: !114, line: 199, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !114, line: 341, size: 109184, elements: !307)
!307 = !{!308, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1146, !1148, !1191, !1192, !1193, !1196, !1197, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1231, !1232, !1233, !1234, !1235, !1236, !1239, !1240, !1243, !1244, !1246, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1258, !1259, !1260, !1261, !1262, !1264, !1265, !1266, !1270, !1272, !1276, !1280, !1284, !1285, !1286, !1287, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !306, file: !114, line: 343, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !114, line: 566, size: 6855040, elements: !311)
!311 = !{!312, !394, !444, !545, !547, !549, !607, !609, !610, !611, !612, !613, !616, !634, !646, !647, !648, !649, !650, !651, !655, !656, !658, !659, !660, !661, !662, !663, !665, !667, !670, !671, !673, !674, !675, !676, !677, !679, !680, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !794, !795, !796, !797, !798, !799, !800, !801, !802, !804, !805, !806, !946, !950, !951, !953, !954, !957, !960, !961, !962, !965, !968, !971, !972, !973, !974, !975, !976, !1002, !1003, !1005, !1008, !1009, !1010, !1011, !1014, !1019, !1033, !1037, !1041, !1042, !1047, !1048, !1052, !1053, !1057, !1078, !1079, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !310, file: !114, line: 568, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !114, line: 850, size: 32128, elements: !315)
!315 = !{!316, !320, !321, !322, !323, !324, !325, !326, !327, !328, !356, !357, !358, !359, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !314, file: !114, line: 852, baseType: !317, size: 2040)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2040, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 255)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !314, file: !114, line: 853, baseType: !317, size: 2040, offset: 2040)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !314, file: !114, line: 854, baseType: !317, size: 2040, offset: 4080)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !314, file: !114, line: 856, baseType: !18, size: 32, offset: 6144)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !314, file: !114, line: 857, baseType: !18, size: 32, offset: 6176)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !314, file: !114, line: 858, baseType: !18, size: 32, offset: 6208)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !314, file: !114, line: 859, baseType: !18, size: 32, offset: 6240)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !314, file: !114, line: 860, baseType: !18, size: 32, offset: 6272)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !314, file: !114, line: 861, baseType: !18, size: 32, offset: 6304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !314, file: !114, line: 864, baseType: !329, size: 1088, offset: 6336)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !17, line: 52, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !17, line: 30, size: 1088, elements: !331)
!331 = !{!332, !334, !336, !338, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !330, file: !17, line: 32, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !17, line: 28, baseType: !16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !330, file: !17, line: 33, baseType: !335, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !17, line: 20, baseType: !25)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !330, file: !17, line: 34, baseType: !337, size: 64, offset: 64)
!337 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !330, file: !17, line: 35, baseType: !339, size: 96, offset: 128)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !157)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !330, file: !17, line: 36, baseType: !339, size: 96, offset: 224)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !330, file: !17, line: 37, baseType: !18, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !330, file: !17, line: 38, baseType: !18, size: 32, offset: 352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !330, file: !17, line: 39, baseType: !18, size: 32, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !330, file: !17, line: 40, baseType: !18, size: 32, offset: 416)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !330, file: !17, line: 41, baseType: !18, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !330, file: !17, line: 42, baseType: !18, size: 32, offset: 480)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !330, file: !17, line: 43, baseType: !18, size: 32, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !330, file: !17, line: 44, baseType: !18, size: 32, offset: 544)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !330, file: !17, line: 45, baseType: !339, size: 96, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !330, file: !17, line: 46, baseType: !18, size: 32, offset: 672)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !330, file: !17, line: 47, baseType: !339, size: 96, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !330, file: !17, line: 48, baseType: !339, size: 96, offset: 800)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !330, file: !17, line: 49, baseType: !339, size: 96, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !330, file: !17, line: 50, baseType: !18, size: 32, offset: 992)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !330, file: !17, line: 51, baseType: !18, size: 32, offset: 1024)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !314, file: !114, line: 865, baseType: !329, size: 1088, offset: 7424)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !314, file: !114, line: 867, baseType: !18, size: 32, offset: 8512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !314, file: !114, line: 868, baseType: !18, size: 32, offset: 8544)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !314, file: !114, line: 869, baseType: !360, size: 7744, offset: 8576)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !32, line: 60, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !32, line: 34, size: 7744, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !361, file: !32, line: 37, baseType: !317, size: 2040)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !361, file: !32, line: 38, baseType: !317, size: 2040, offset: 2040)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !361, file: !32, line: 39, baseType: !317, size: 2040, offset: 4080)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !361, file: !32, line: 40, baseType: !18, size: 32, offset: 6144)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !361, file: !32, line: 41, baseType: !368, size: 32, offset: 6176)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !32, line: 32, baseType: !31)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !361, file: !32, line: 42, baseType: !329, size: 1088, offset: 6208)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !361, file: !32, line: 43, baseType: !18, size: 32, offset: 7296)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !361, file: !32, line: 44, baseType: !18, size: 32, offset: 7328)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !361, file: !32, line: 45, baseType: !18, size: 32, offset: 7360)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !361, file: !32, line: 46, baseType: !18, size: 32, offset: 7392)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !361, file: !32, line: 47, baseType: !18, size: 32, offset: 7424)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !361, file: !32, line: 48, baseType: !18, size: 32, offset: 7456)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !361, file: !32, line: 49, baseType: !18, size: 32, offset: 7488)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !361, file: !32, line: 50, baseType: !18, size: 32, offset: 7520)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !361, file: !32, line: 51, baseType: !18, size: 32, offset: 7552)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !361, file: !32, line: 52, baseType: !18, size: 32, offset: 7584)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !361, file: !32, line: 53, baseType: !18, size: 32, offset: 7616)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !361, file: !32, line: 56, baseType: !191, size: 64, offset: 7680)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !314, file: !114, line: 870, baseType: !360, size: 7744, offset: 16320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !314, file: !114, line: 871, baseType: !360, size: 7744, offset: 24064)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !314, file: !114, line: 873, baseType: !18, size: 32, offset: 31808)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !314, file: !114, line: 884, baseType: !18, size: 32, offset: 31840)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !314, file: !114, line: 885, baseType: !18, size: 32, offset: 31872)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !314, file: !114, line: 886, baseType: !18, size: 32, offset: 31904)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !314, file: !114, line: 890, baseType: !18, size: 32, offset: 31936)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !314, file: !114, line: 893, baseType: !18, size: 32, offset: 31968)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !314, file: !114, line: 894, baseType: !18, size: 32, offset: 32000)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !314, file: !114, line: 895, baseType: !18, size: 32, offset: 32032)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !314, file: !114, line: 897, baseType: !18, size: 32, offset: 32064)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !314, file: !114, line: 899, baseType: !18, size: 32, offset: 32096)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !310, file: !114, line: 569, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !397, line: 138, baseType: !398)
!397 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 94, size: 17728, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !410, !413, !416, !419, !420, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !398, file: !397, line: 96, baseType: !18, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !398, file: !397, line: 97, baseType: !42, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !398, file: !397, line: 98, baseType: !42, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !398, file: !397, line: 99, baseType: !18, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !398, file: !397, line: 100, baseType: !18, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !398, file: !397, line: 102, baseType: !18, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !398, file: !397, line: 103, baseType: !407, size: 384, offset: 192)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 12)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !398, file: !397, line: 104, baseType: !411, size: 3072, offset: 576)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3072, elements: !412)
!412 = !{!144, !227}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !398, file: !397, line: 105, baseType: !414, size: 12288, offset: 3648)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 12288, elements: !415)
!415 = !{!144, !232}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !398, file: !397, line: 106, baseType: !417, size: 192, offset: 15936)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !418)
!418 = !{!144}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !398, file: !397, line: 107, baseType: !417, size: 192, offset: 16128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !398, file: !397, line: 110, baseType: !18, size: 32, offset: 16320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !398, file: !397, line: 111, baseType: !42, size: 32, offset: 16352)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !398, file: !397, line: 112, baseType: !42, size: 32, offset: 16384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !398, file: !397, line: 114, baseType: !424, size: 256, offset: 16416)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !398, file: !397, line: 116, baseType: !424, size: 256, offset: 16672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !398, file: !397, line: 117, baseType: !424, size: 256, offset: 16928)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !398, file: !397, line: 119, baseType: !18, size: 32, offset: 17184)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !398, file: !397, line: 120, baseType: !42, size: 32, offset: 17216)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !398, file: !397, line: 122, baseType: !42, size: 32, offset: 17248)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !398, file: !397, line: 123, baseType: !188, size: 64, offset: 17280)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !398, file: !397, line: 125, baseType: !18, size: 32, offset: 17344)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !398, file: !397, line: 126, baseType: !18, size: 32, offset: 17376)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !398, file: !397, line: 127, baseType: !18, size: 32, offset: 17408)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !398, file: !397, line: 128, baseType: !42, size: 32, offset: 17440)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !398, file: !397, line: 129, baseType: !18, size: 32, offset: 17472)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !398, file: !397, line: 130, baseType: !18, size: 32, offset: 17504)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !398, file: !397, line: 131, baseType: !18, size: 32, offset: 17536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !398, file: !397, line: 133, baseType: !18, size: 32, offset: 17568)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !398, file: !397, line: 135, baseType: !18, size: 32, offset: 17600)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !398, file: !397, line: 136, baseType: !18, size: 32, offset: 17632)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !398, file: !397, line: 137, baseType: !18, size: 32, offset: 17664)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !310, file: !114, line: 570, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !397, line: 197, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 142, size: 33024, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !543, !544}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !447, file: !397, line: 144, baseType: !18, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !447, file: !397, line: 146, baseType: !42, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !447, file: !397, line: 147, baseType: !18, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !447, file: !397, line: 148, baseType: !18, size: 32, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !447, file: !397, line: 149, baseType: !18, size: 32, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !447, file: !397, line: 150, baseType: !18, size: 32, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !447, file: !397, line: 152, baseType: !18, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !447, file: !397, line: 154, baseType: !42, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !447, file: !397, line: 155, baseType: !42, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !447, file: !397, line: 156, baseType: !42, size: 32, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !447, file: !397, line: 158, baseType: !18, size: 32, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !447, file: !397, line: 159, baseType: !407, size: 384, offset: 352)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !447, file: !397, line: 160, baseType: !411, size: 3072, offset: 736)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !447, file: !397, line: 161, baseType: !414, size: 12288, offset: 3808)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !447, file: !397, line: 162, baseType: !417, size: 192, offset: 16096)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !447, file: !397, line: 163, baseType: !417, size: 192, offset: 16288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !447, file: !397, line: 165, baseType: !42, size: 32, offset: 16480)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !447, file: !397, line: 166, baseType: !42, size: 32, offset: 16512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !447, file: !397, line: 167, baseType: !42, size: 32, offset: 16544)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !447, file: !397, line: 168, baseType: !42, size: 32, offset: 16576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !447, file: !397, line: 170, baseType: !42, size: 32, offset: 16608)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !447, file: !397, line: 172, baseType: !18, size: 32, offset: 16640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !447, file: !397, line: 173, baseType: !18, size: 32, offset: 16672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !447, file: !397, line: 174, baseType: !18, size: 32, offset: 16704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !447, file: !397, line: 175, baseType: !42, size: 32, offset: 16736)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !447, file: !397, line: 177, baseType: !475, size: 8192, offset: 16768)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !447, file: !397, line: 178, baseType: !42, size: 32, offset: 24960)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !447, file: !397, line: 179, baseType: !18, size: 32, offset: 24992)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !447, file: !397, line: 180, baseType: !42, size: 32, offset: 25024)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !447, file: !397, line: 181, baseType: !42, size: 32, offset: 25056)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !447, file: !397, line: 182, baseType: !18, size: 32, offset: 25088)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !447, file: !397, line: 184, baseType: !18, size: 32, offset: 25120)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !447, file: !397, line: 185, baseType: !18, size: 32, offset: 25152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !447, file: !397, line: 186, baseType: !18, size: 32, offset: 25184)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !447, file: !397, line: 187, baseType: !42, size: 32, offset: 25216)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !447, file: !397, line: 188, baseType: !42, size: 32, offset: 25248)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !447, file: !397, line: 189, baseType: !42, size: 32, offset: 25280)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !447, file: !397, line: 190, baseType: !42, size: 32, offset: 25312)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !447, file: !397, line: 191, baseType: !18, size: 32, offset: 25344)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !447, file: !397, line: 192, baseType: !492, size: 7584, offset: 25376)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !397, line: 90, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 53, size: 7584, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !493, file: !397, line: 55, baseType: !18, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !493, file: !397, line: 56, baseType: !42, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !493, file: !397, line: 57, baseType: !125, size: 16, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !493, file: !397, line: 58, baseType: !125, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !493, file: !397, line: 59, baseType: !18, size: 32, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !493, file: !397, line: 60, baseType: !18, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !493, file: !397, line: 61, baseType: !18, size: 32, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !493, file: !397, line: 62, baseType: !42, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !493, file: !397, line: 63, baseType: !18, size: 32, offset: 224)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !493, file: !397, line: 64, baseType: !18, size: 32, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !493, file: !397, line: 65, baseType: !42, size: 32, offset: 288)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !493, file: !397, line: 66, baseType: !42, size: 32, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !493, file: !397, line: 67, baseType: !42, size: 32, offset: 352)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !493, file: !397, line: 68, baseType: !18, size: 32, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !493, file: !397, line: 69, baseType: !42, size: 32, offset: 416)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !493, file: !397, line: 70, baseType: !42, size: 32, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !493, file: !397, line: 71, baseType: !18, size: 32, offset: 480)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !493, file: !397, line: 72, baseType: !42, size: 32, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !493, file: !397, line: 73, baseType: !42, size: 32, offset: 544)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !493, file: !397, line: 74, baseType: !18, size: 32, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !493, file: !397, line: 75, baseType: !18, size: 32, offset: 608)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !493, file: !397, line: 76, baseType: !517, size: 3296, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !397, line: 50, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 38, size: 3296, elements: !519)
!519 = !{!520, !521, !522, !523, !525, !526, !527, !528, !529, !530}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !518, file: !397, line: 40, baseType: !42, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !518, file: !397, line: 41, baseType: !42, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !518, file: !397, line: 42, baseType: !42, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !518, file: !397, line: 43, baseType: !524, size: 1024, offset: 96)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1024, elements: !236)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !518, file: !397, line: 44, baseType: !524, size: 1024, offset: 1120)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !518, file: !397, line: 45, baseType: !524, size: 1024, offset: 2144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !518, file: !397, line: 46, baseType: !42, size: 32, offset: 3168)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !518, file: !397, line: 47, baseType: !42, size: 32, offset: 3200)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !518, file: !397, line: 48, baseType: !42, size: 32, offset: 3232)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !518, file: !397, line: 49, baseType: !42, size: 32, offset: 3264)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !493, file: !397, line: 77, baseType: !18, size: 32, offset: 3936)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !493, file: !397, line: 78, baseType: !517, size: 3296, offset: 3968)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !493, file: !397, line: 80, baseType: !18, size: 32, offset: 7264)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !493, file: !397, line: 81, baseType: !18, size: 32, offset: 7296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !493, file: !397, line: 82, baseType: !18, size: 32, offset: 7328)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !493, file: !397, line: 83, baseType: !18, size: 32, offset: 7360)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !493, file: !397, line: 84, baseType: !42, size: 32, offset: 7392)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !493, file: !397, line: 85, baseType: !42, size: 32, offset: 7424)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !493, file: !397, line: 86, baseType: !42, size: 32, offset: 7456)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !493, file: !397, line: 87, baseType: !42, size: 32, offset: 7488)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !493, file: !397, line: 88, baseType: !42, size: 32, offset: 7520)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !493, file: !397, line: 89, baseType: !42, size: 32, offset: 7552)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !447, file: !397, line: 193, baseType: !42, size: 32, offset: 32960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !447, file: !397, line: 195, baseType: !18, size: 32, offset: 32992)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !310, file: !114, line: 571, baseType: !546, size: 1056768, offset: 192)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 1056768, elements: !236)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !310, file: !114, line: 572, baseType: !548, size: 4538368, offset: 1056960)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 4538368, elements: !476)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !310, file: !114, line: 575, baseType: !550, size: 64, offset: 5595328)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !397, line: 256, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 228, size: 37312, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !574, !575, !576, !577}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !552, file: !397, line: 230, baseType: !446, size: 33024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !552, file: !397, line: 232, baseType: !42, size: 32, offset: 33024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !552, file: !397, line: 233, baseType: !18, size: 32, offset: 33056)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !552, file: !397, line: 234, baseType: !191, size: 64, offset: 33088)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !552, file: !397, line: 235, baseType: !191, size: 64, offset: 33152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !552, file: !397, line: 236, baseType: !560, size: 64, offset: 33216)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !552, file: !397, line: 237, baseType: !191, size: 64, offset: 33280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !552, file: !397, line: 238, baseType: !560, size: 64, offset: 33344)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !552, file: !397, line: 240, baseType: !191, size: 64, offset: 33408)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !552, file: !397, line: 241, baseType: !560, size: 64, offset: 33472)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !552, file: !397, line: 242, baseType: !191, size: 64, offset: 33536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !552, file: !397, line: 243, baseType: !560, size: 64, offset: 33600)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !552, file: !397, line: 245, baseType: !18, size: 32, offset: 33664)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !552, file: !397, line: 246, baseType: !191, size: 64, offset: 33728)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !552, file: !397, line: 247, baseType: !191, size: 64, offset: 33792)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !552, file: !397, line: 248, baseType: !560, size: 64, offset: 33856)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !552, file: !397, line: 249, baseType: !560, size: 64, offset: 33920)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !552, file: !397, line: 250, baseType: !573, size: 64, offset: 33984)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !552, file: !397, line: 251, baseType: !560, size: 64, offset: 34048)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !552, file: !397, line: 253, baseType: !42, size: 32, offset: 34112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !552, file: !397, line: 254, baseType: !18, size: 32, offset: 34144)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !552, file: !397, line: 255, baseType: !578, size: 3136, offset: 34176)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !397, line: 226, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !397, line: 200, size: 3136, elements: !580)
!580 = !{!581, !582, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !600, !601, !603, !604, !605, !606}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !579, file: !397, line: 202, baseType: !18, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !579, file: !397, line: 203, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !579, file: !397, line: 204, baseType: !191, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !579, file: !397, line: 205, baseType: !560, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !579, file: !397, line: 206, baseType: !583, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !579, file: !397, line: 207, baseType: !191, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !579, file: !397, line: 208, baseType: !191, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !579, file: !397, line: 209, baseType: !583, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !579, file: !397, line: 210, baseType: !583, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !579, file: !397, line: 211, baseType: !583, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !579, file: !397, line: 212, baseType: !583, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !579, file: !397, line: 213, baseType: !583, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !579, file: !397, line: 216, baseType: !584, size: 8, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !579, file: !397, line: 217, baseType: !584, size: 8, offset: 776)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !579, file: !397, line: 218, baseType: !584, size: 8, offset: 784)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !579, file: !397, line: 219, baseType: !599, size: 1024, offset: 800)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !236)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !579, file: !397, line: 220, baseType: !599, size: 1024, offset: 1824)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !579, file: !397, line: 221, baseType: !602, size: 256, offset: 2848)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 256, elements: !236)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !579, file: !397, line: 222, baseType: !584, size: 8, offset: 3104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !579, file: !397, line: 223, baseType: !584, size: 8, offset: 3112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !579, file: !397, line: 224, baseType: !584, size: 8, offset: 3120)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !579, file: !397, line: 225, baseType: !584, size: 8, offset: 3128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !310, file: !114, line: 577, baseType: !608, size: 1193984, offset: 5595392)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 1193984, elements: !236)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !310, file: !114, line: 578, baseType: !18, size: 32, offset: 6789376)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !310, file: !114, line: 579, baseType: !18, size: 32, offset: 6789408)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !310, file: !114, line: 580, baseType: !18, size: 32, offset: 6789440)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !310, file: !114, line: 581, baseType: !18, size: 32, offset: 6789472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !310, file: !114, line: 584, baseType: !614, size: 64, offset: 6789504)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !114, line: 584, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !310, file: !114, line: 586, baseType: !617, size: 64, offset: 6789568)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !114, line: 902, size: 416, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !627, !628, !629, !630, !631, !632, !633}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !618, file: !114, line: 904, baseType: !42, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !618, file: !114, line: 905, baseType: !42, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !618, file: !114, line: 906, baseType: !18, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !618, file: !114, line: 907, baseType: !42, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !618, file: !114, line: 908, baseType: !18, size: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !618, file: !114, line: 909, baseType: !626, size: 64, offset: 160)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !618, file: !114, line: 910, baseType: !189, size: 8, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !618, file: !114, line: 911, baseType: !189, size: 8, offset: 232)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !618, file: !114, line: 912, baseType: !18, size: 32, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !618, file: !114, line: 913, baseType: !18, size: 32, offset: 288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !618, file: !114, line: 915, baseType: !18, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !618, file: !114, line: 916, baseType: !18, size: 32, offset: 352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !618, file: !114, line: 917, baseType: !18, size: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !310, file: !114, line: 587, baseType: !635, size: 64, offset: 6789632)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !114, line: 839, size: 512, elements: !637)
!637 = !{!638, !639, !642, !643, !644, !645}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !636, file: !114, line: 841, baseType: !18, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !636, file: !114, line: 842, baseType: !640, size: 96, offset: 32)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 96, elements: !157)
!641 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !636, file: !114, line: 843, baseType: !640, size: 96, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !636, file: !114, line: 844, baseType: !640, size: 96, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !636, file: !114, line: 845, baseType: !640, size: 96, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !636, file: !114, line: 846, baseType: !640, size: 96, offset: 416)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !310, file: !114, line: 588, baseType: !18, size: 32, offset: 6789696)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !310, file: !114, line: 591, baseType: !42, size: 32, offset: 6789728)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !310, file: !114, line: 592, baseType: !18, size: 32, offset: 6789760)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !310, file: !114, line: 593, baseType: !18, size: 32, offset: 6789792)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !310, file: !114, line: 594, baseType: !18, size: 32, offset: 6789824)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !310, file: !114, line: 595, baseType: !652, size: 64, offset: 6789888)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !114, line: 542, baseType: !306)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !310, file: !114, line: 596, baseType: !583, size: 64, offset: 6789952)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !310, file: !114, line: 597, baseType: !657, size: 192, offset: 6790016)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 192, elements: !157)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !310, file: !114, line: 601, baseType: !18, size: 32, offset: 6790208)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !310, file: !114, line: 602, baseType: !18, size: 32, offset: 6790240)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !310, file: !114, line: 603, baseType: !18, size: 32, offset: 6790272)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !310, file: !114, line: 604, baseType: !18, size: 32, offset: 6790304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !310, file: !114, line: 605, baseType: !18, size: 32, offset: 6790336)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !310, file: !114, line: 607, baseType: !664, size: 64, offset: 6790400)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !310, file: !114, line: 608, baseType: !666, size: 192, offset: 6790464)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 192, elements: !157)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !310, file: !114, line: 609, baseType: !668, size: 64, offset: 6790656)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !310, file: !114, line: 610, baseType: !560, size: 64, offset: 6790720)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !310, file: !114, line: 611, baseType: !672, size: 192, offset: 6790784)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 192, elements: !157)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !310, file: !114, line: 613, baseType: !18, size: 32, offset: 6790976)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !310, file: !114, line: 614, baseType: !18, size: 32, offset: 6791008)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !310, file: !114, line: 617, baseType: !653, size: 64, offset: 6791040)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !310, file: !114, line: 618, baseType: !300, size: 64, offset: 6791104)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !310, file: !114, line: 619, baseType: !678, size: 192, offset: 6791168)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !157)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !310, file: !114, line: 621, baseType: !18, size: 32, offset: 6791360)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !310, file: !114, line: 626, baseType: !681, size: 64, offset: 6791424)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !114, line: 626, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !310, file: !114, line: 627, baseType: !681, size: 64, offset: 6791488)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !310, file: !114, line: 629, baseType: !42, size: 32, offset: 6791552)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !310, file: !114, line: 630, baseType: !18, size: 32, offset: 6791584)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !310, file: !114, line: 634, baseType: !18, size: 32, offset: 6791616)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !310, file: !114, line: 635, baseType: !42, size: 32, offset: 6791648)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !310, file: !114, line: 638, baseType: !18, size: 32, offset: 6791680)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !310, file: !114, line: 638, baseType: !18, size: 32, offset: 6791712)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !310, file: !114, line: 638, baseType: !18, size: 32, offset: 6791744)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !310, file: !114, line: 639, baseType: !42, size: 32, offset: 6791776)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !310, file: !114, line: 639, baseType: !42, size: 32, offset: 6791808)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !310, file: !114, line: 640, baseType: !18, size: 32, offset: 6791840)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !310, file: !114, line: 641, baseType: !18, size: 32, offset: 6791872)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !310, file: !114, line: 642, baseType: !18, size: 32, offset: 6791904)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !310, file: !114, line: 645, baseType: !18, size: 32, offset: 6791936)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !310, file: !114, line: 647, baseType: !42, size: 32, offset: 6791968)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !310, file: !114, line: 648, baseType: !42, size: 32, offset: 6792000)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !310, file: !114, line: 649, baseType: !42, size: 32, offset: 6792032)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !310, file: !114, line: 650, baseType: !42, size: 32, offset: 6792064)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !310, file: !114, line: 651, baseType: !42, size: 32, offset: 6792096)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !310, file: !114, line: 652, baseType: !42, size: 32, offset: 6792128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !310, file: !114, line: 653, baseType: !42, size: 32, offset: 6792160)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !310, file: !114, line: 655, baseType: !18, size: 32, offset: 6792192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !310, file: !114, line: 657, baseType: !18, size: 32, offset: 6792224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !310, file: !114, line: 658, baseType: !18, size: 32, offset: 6792256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !310, file: !114, line: 661, baseType: !18, size: 32, offset: 6792288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !310, file: !114, line: 662, baseType: !216, size: 16, offset: 6792320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !310, file: !114, line: 663, baseType: !216, size: 16, offset: 6792336)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !310, file: !114, line: 664, baseType: !626, size: 64, offset: 6792352)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !310, file: !114, line: 665, baseType: !18, size: 32, offset: 6792416)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !310, file: !114, line: 666, baseType: !18, size: 32, offset: 6792448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !310, file: !114, line: 667, baseType: !714, size: 96, offset: 6792480)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 96, elements: !157)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !310, file: !114, line: 668, baseType: !339, size: 96, offset: 6792576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !310, file: !114, line: 670, baseType: !18, size: 32, offset: 6792672)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !310, file: !114, line: 671, baseType: !18, size: 32, offset: 6792704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !310, file: !114, line: 672, baseType: !18, size: 32, offset: 6792736)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !310, file: !114, line: 673, baseType: !18, size: 32, offset: 6792768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !310, file: !114, line: 674, baseType: !18, size: 32, offset: 6792800)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !310, file: !114, line: 675, baseType: !18, size: 32, offset: 6792832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !310, file: !114, line: 676, baseType: !18, size: 32, offset: 6792864)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !310, file: !114, line: 677, baseType: !18, size: 32, offset: 6792896)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !310, file: !114, line: 678, baseType: !18, size: 32, offset: 6792928)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !310, file: !114, line: 679, baseType: !18, size: 32, offset: 6792960)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !310, file: !114, line: 680, baseType: !727, size: 192, offset: 6792992)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !728)
!728 = !{!130, !135}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !310, file: !114, line: 681, baseType: !727, size: 192, offset: 6793184)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !310, file: !114, line: 682, baseType: !727, size: 192, offset: 6793376)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !310, file: !114, line: 683, baseType: !18, size: 32, offset: 6793568)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !310, file: !114, line: 684, baseType: !18, size: 32, offset: 6793600)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !310, file: !114, line: 685, baseType: !18, size: 32, offset: 6793632)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !310, file: !114, line: 686, baseType: !18, size: 32, offset: 6793664)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !310, file: !114, line: 687, baseType: !18, size: 32, offset: 6793696)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !310, file: !114, line: 689, baseType: !18, size: 32, offset: 6793728)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !310, file: !114, line: 692, baseType: !18, size: 32, offset: 6793760)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !310, file: !114, line: 693, baseType: !18, size: 32, offset: 6793792)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !310, file: !114, line: 700, baseType: !18, size: 32, offset: 6793824)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !310, file: !114, line: 701, baseType: !18, size: 32, offset: 6793856)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !310, file: !114, line: 702, baseType: !18, size: 32, offset: 6793888)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !310, file: !114, line: 703, baseType: !18, size: 32, offset: 6793920)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !310, file: !114, line: 704, baseType: !18, size: 32, offset: 6793952)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !310, file: !114, line: 705, baseType: !42, size: 32, offset: 6793984)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !310, file: !114, line: 706, baseType: !18, size: 32, offset: 6794016)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !310, file: !114, line: 707, baseType: !18, size: 32, offset: 6794048)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !310, file: !114, line: 710, baseType: !18, size: 32, offset: 6794080)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !310, file: !114, line: 711, baseType: !18, size: 32, offset: 6794112)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !310, file: !114, line: 712, baseType: !18, size: 32, offset: 6794144)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !310, file: !114, line: 713, baseType: !18, size: 32, offset: 6794176)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !310, file: !114, line: 714, baseType: !18, size: 32, offset: 6794208)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !310, file: !114, line: 716, baseType: !18, size: 32, offset: 6794240)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !310, file: !114, line: 717, baseType: !18, size: 32, offset: 6794272)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !310, file: !114, line: 719, baseType: !188, size: 64, offset: 6794304)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !310, file: !114, line: 720, baseType: !188, size: 64, offset: 6794368)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !310, file: !114, line: 722, baseType: !757, size: 2560, offset: 6794432)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !758, line: 38, baseType: !759)
!758 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !758, line: 20, size: 2560, elements: !760)
!760 = !{!761, !762, !767, !768, !769, !773, !774, !775, !776, !777}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !759, file: !758, line: 22, baseType: !329, size: 1088)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !759, file: !758, line: 24, baseType: !763, size: 192, offset: 1088)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 192, elements: !157)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !124, line: 41, baseType: !123)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !759, file: !758, line: 25, baseType: !763, size: 192, offset: 1280)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !759, file: !758, line: 26, baseType: !763, size: 192, offset: 1472)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !759, file: !758, line: 31, baseType: !770, size: 192, offset: 1664)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !157)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !759, file: !758, line: 32, baseType: !770, size: 192, offset: 1856)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !759, file: !758, line: 33, baseType: !770, size: 192, offset: 2048)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !759, file: !758, line: 35, baseType: !339, size: 96, offset: 2240)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !759, file: !758, line: 36, baseType: !339, size: 96, offset: 2336)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !759, file: !758, line: 37, baseType: !339, size: 96, offset: 2432)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !310, file: !114, line: 723, baseType: !757, size: 2560, offset: 6796992)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !310, file: !114, line: 724, baseType: !757, size: 2560, offset: 6799552)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !310, file: !114, line: 725, baseType: !757, size: 2560, offset: 6802112)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !310, file: !114, line: 728, baseType: !757, size: 2560, offset: 6804672)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !310, file: !114, line: 729, baseType: !757, size: 2560, offset: 6807232)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !310, file: !114, line: 730, baseType: !757, size: 2560, offset: 6809792)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !310, file: !114, line: 731, baseType: !757, size: 2560, offset: 6812352)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !310, file: !114, line: 735, baseType: !42, size: 32, offset: 6814912)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !310, file: !114, line: 737, baseType: !18, size: 32, offset: 6814944)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !310, file: !114, line: 738, baseType: !18, size: 32, offset: 6814976)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !310, file: !114, line: 741, baseType: !194, size: 64, offset: 6815040)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !310, file: !114, line: 744, baseType: !18, size: 32, offset: 6815104)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !310, file: !114, line: 746, baseType: !791, size: 32768, offset: 6815136)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 1024)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !310, file: !114, line: 748, baseType: !18, size: 32, offset: 6847904)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !310, file: !114, line: 751, baseType: !18, size: 32, offset: 6847936)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !310, file: !114, line: 752, baseType: !18, size: 32, offset: 6847968)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !310, file: !114, line: 755, baseType: !18, size: 32, offset: 6848000)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !310, file: !114, line: 756, baseType: !18, size: 32, offset: 6848032)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !310, file: !114, line: 758, baseType: !18, size: 32, offset: 6848064)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !310, file: !114, line: 759, baseType: !18, size: 32, offset: 6848096)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !310, file: !114, line: 762, baseType: !764, size: 64, offset: 6848128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !310, file: !114, line: 763, baseType: !803, size: 64, offset: 6848192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !310, file: !114, line: 765, baseType: !191, size: 64, offset: 6848256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !310, file: !114, line: 766, baseType: !191, size: 64, offset: 6848320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !310, file: !114, line: 768, baseType: !807, size: 64, offset: 6848384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !809, line: 152, size: 768, elements: !810)
!809 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !941, !942, !943, !944, !945}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !808, file: !809, line: 154, baseType: !18, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !808, file: !809, line: 155, baseType: !18, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !808, file: !809, line: 156, baseType: !18, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !808, file: !809, line: 157, baseType: !18, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !808, file: !809, line: 159, baseType: !18, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !808, file: !809, line: 161, baseType: !42, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !808, file: !809, line: 162, baseType: !42, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !808, file: !809, line: 164, baseType: !18, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !808, file: !809, line: 165, baseType: !18, size: 32, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !808, file: !809, line: 166, baseType: !18, size: 32, offset: 288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !808, file: !809, line: 167, baseType: !18, size: 32, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !808, file: !809, line: 170, baseType: !18, size: 32, offset: 352)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !808, file: !809, line: 172, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !809, line: 138, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !809, line: 46, size: 3328, elements: !827)
!827 = !{!828, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !881, !883, !887, !889, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !826, file: !809, line: 48, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !41, line: 140, baseType: !40)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !826, file: !809, line: 50, baseType: !18, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !826, file: !809, line: 51, baseType: !18, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !826, file: !809, line: 52, baseType: !18, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !826, file: !809, line: 53, baseType: !18, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !826, file: !809, line: 54, baseType: !42, size: 32, offset: 160)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !826, file: !809, line: 55, baseType: !42, size: 32, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !826, file: !809, line: 57, baseType: !18, size: 32, offset: 224)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !826, file: !809, line: 58, baseType: !18, size: 32, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !826, file: !809, line: 59, baseType: !18, size: 32, offset: 288)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !826, file: !809, line: 61, baseType: !189, size: 8, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !826, file: !809, line: 62, baseType: !18, size: 32, offset: 352)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !826, file: !809, line: 63, baseType: !18, size: 32, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !826, file: !809, line: 64, baseType: !18, size: 32, offset: 416)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !826, file: !809, line: 65, baseType: !18, size: 32, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !826, file: !809, line: 67, baseType: !216, size: 16, offset: 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !826, file: !809, line: 69, baseType: !18, size: 32, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !826, file: !809, line: 69, baseType: !18, size: 32, offset: 544)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !826, file: !809, line: 69, baseType: !18, size: 32, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !826, file: !809, line: 69, baseType: !18, size: 32, offset: 608)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !826, file: !809, line: 70, baseType: !18, size: 32, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !826, file: !809, line: 70, baseType: !18, size: 32, offset: 672)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !826, file: !809, line: 70, baseType: !18, size: 32, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !826, file: !809, line: 70, baseType: !18, size: 32, offset: 736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !826, file: !809, line: 71, baseType: !18, size: 32, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !826, file: !809, line: 72, baseType: !18, size: 32, offset: 800)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !826, file: !809, line: 73, baseType: !42, size: 32, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !826, file: !809, line: 74, baseType: !42, size: 32, offset: 864)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !826, file: !809, line: 75, baseType: !18, size: 32, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !826, file: !809, line: 75, baseType: !18, size: 32, offset: 928)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !826, file: !809, line: 76, baseType: !18, size: 32, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !826, file: !809, line: 76, baseType: !18, size: 32, offset: 992)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !826, file: !809, line: 79, baseType: !764, size: 64, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !826, file: !809, line: 80, baseType: !803, size: 64, offset: 1088)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !826, file: !809, line: 81, baseType: !803, size: 64, offset: 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !826, file: !809, line: 84, baseType: !865, size: 64, offset: 1216)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !809, line: 36, size: 256, elements: !868)
!868 = !{!869, !872, !879}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !867, file: !809, line: 38, baseType: !870, size: 128)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 128, elements: !160)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !867, file: !809, line: 39, baseType: !873, size: 64, offset: 128)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 64, elements: !160)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !114, line: 104, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 100, size: 32, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !875, file: !114, line: 102, baseType: !216, size: 16)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !875, file: !114, line: 103, baseType: !216, size: 16, offset: 16)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !867, file: !809, line: 40, baseType: !880, size: 16, offset: 192)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 16, elements: !160)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !826, file: !809, line: 85, baseType: !882, size: 192, offset: 1280)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 192, elements: !157)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !826, file: !809, line: 87, baseType: !884, size: 64, offset: 1472)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !809, line: 29, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !884, file: !809, line: 31, baseType: !188, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !826, file: !809, line: 88, baseType: !888, size: 192, offset: 1536)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 192, elements: !157)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !826, file: !809, line: 90, baseType: !890, size: 64, offset: 1728)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !826, file: !809, line: 92, baseType: !871, size: 64, offset: 1792)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !826, file: !809, line: 93, baseType: !871, size: 64, offset: 1856)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !826, file: !809, line: 94, baseType: !871, size: 64, offset: 1920)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !826, file: !809, line: 96, baseType: !18, size: 32, offset: 1984)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !826, file: !809, line: 97, baseType: !18, size: 32, offset: 2016)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !826, file: !809, line: 98, baseType: !18, size: 32, offset: 2048)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !826, file: !809, line: 99, baseType: !18, size: 32, offset: 2080)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !826, file: !809, line: 100, baseType: !18, size: 32, offset: 2112)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !826, file: !809, line: 102, baseType: !18, size: 32, offset: 2144)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !826, file: !809, line: 103, baseType: !18, size: 32, offset: 2176)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !826, file: !809, line: 104, baseType: !18, size: 32, offset: 2208)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !826, file: !809, line: 105, baseType: !18, size: 32, offset: 2240)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !826, file: !809, line: 106, baseType: !18, size: 32, offset: 2272)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !826, file: !809, line: 107, baseType: !18, size: 32, offset: 2304)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !826, file: !809, line: 108, baseType: !18, size: 32, offset: 2336)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !826, file: !809, line: 109, baseType: !18, size: 32, offset: 2368)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !826, file: !809, line: 110, baseType: !626, size: 64, offset: 2400)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !826, file: !809, line: 111, baseType: !18, size: 32, offset: 2464)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !826, file: !809, line: 112, baseType: !911, size: 64, offset: 2496)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !114, line: 194, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !114, line: 186, size: 256, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !913, file: !114, line: 188, baseType: !18, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !913, file: !114, line: 189, baseType: !18, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !913, file: !114, line: 190, baseType: !18, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !913, file: !114, line: 191, baseType: !18, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !913, file: !114, line: 192, baseType: !18, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !913, file: !114, line: 193, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !826, file: !809, line: 115, baseType: !18, size: 32, offset: 2560)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !826, file: !809, line: 118, baseType: !18, size: 32, offset: 2592)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !826, file: !809, line: 119, baseType: !18, size: 32, offset: 2624)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !826, file: !809, line: 120, baseType: !18, size: 32, offset: 2656)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !826, file: !809, line: 121, baseType: !765, size: 64, offset: 2688)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !826, file: !809, line: 124, baseType: !18, size: 32, offset: 2752)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !826, file: !809, line: 125, baseType: !18, size: 32, offset: 2784)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !826, file: !809, line: 126, baseType: !18, size: 32, offset: 2816)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !826, file: !809, line: 128, baseType: !18, size: 32, offset: 2848)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !826, file: !809, line: 129, baseType: !18, size: 32, offset: 2880)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !826, file: !809, line: 130, baseType: !18, size: 32, offset: 2912)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !826, file: !809, line: 131, baseType: !18, size: 32, offset: 2944)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !826, file: !809, line: 132, baseType: !764, size: 64, offset: 3008)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !826, file: !809, line: 133, baseType: !18, size: 32, offset: 3072)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !826, file: !809, line: 134, baseType: !18, size: 32, offset: 3104)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !826, file: !809, line: 136, baseType: !880, size: 16, offset: 3136)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !826, file: !809, line: 137, baseType: !939, size: 128, offset: 3200)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 128, elements: !160)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !808, file: !809, line: 173, baseType: !824, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !808, file: !809, line: 174, baseType: !824, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !808, file: !809, line: 177, baseType: !18, size: 32, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !808, file: !809, line: 178, baseType: !626, size: 64, offset: 608)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !808, file: !809, line: 179, baseType: !626, size: 64, offset: 672)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !310, file: !114, line: 769, baseType: !947, size: 3200, offset: 6848448)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3200, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 100)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !310, file: !114, line: 771, baseType: !871, size: 64, offset: 6851648)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !310, file: !114, line: 772, baseType: !952, size: 192, offset: 6851712)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 192, elements: !157)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !310, file: !114, line: 773, baseType: !871, size: 64, offset: 6851904)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !310, file: !114, line: 776, baseType: !955, size: 64, offset: 6851968)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !114, line: 776, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !310, file: !114, line: 777, baseType: !958, size: 64, offset: 6852032)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !114, line: 777, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !310, file: !114, line: 779, baseType: !18, size: 32, offset: 6852096)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !310, file: !114, line: 780, baseType: !309, size: 64, offset: 6852160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !310, file: !114, line: 781, baseType: !963, size: 640, offset: 6852224)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 640, elements: !964)
!964 = !{!281}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !310, file: !114, line: 783, baseType: !966, size: 64, offset: 6852864)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !114, line: 783, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !310, file: !114, line: 784, baseType: !969, size: 64, offset: 6852928)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !114, line: 784, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !310, file: !114, line: 786, baseType: !807, size: 64, offset: 6852992)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !310, file: !114, line: 788, baseType: !871, size: 64, offset: 6853056)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !310, file: !114, line: 789, baseType: !18, size: 32, offset: 6853120)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !310, file: !114, line: 790, baseType: !18, size: 32, offset: 6853152)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !310, file: !114, line: 792, baseType: !18, size: 32, offset: 6853184)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !310, file: !114, line: 794, baseType: !977, size: 64, offset: 6853248)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !809, line: 186, size: 33408, elements: !979)
!979 = !{!980, !983, !986, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !978, file: !809, line: 188, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !114, line: 836, baseType: !310)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !978, file: !809, line: 189, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !114, line: 900, baseType: !314)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !978, file: !809, line: 190, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !809, line: 182, baseType: !808)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !978, file: !809, line: 191, baseType: !987, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !978, file: !809, line: 192, baseType: !987, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !978, file: !809, line: 193, baseType: !42, size: 32, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !978, file: !809, line: 194, baseType: !42, size: 32, offset: 352)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !978, file: !809, line: 195, baseType: !42, size: 32, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !978, file: !809, line: 196, baseType: !42, size: 32, offset: 416)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !978, file: !809, line: 197, baseType: !18, size: 32, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !978, file: !809, line: 199, baseType: !18, size: 32, offset: 480)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !978, file: !809, line: 200, baseType: !791, size: 32768, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !978, file: !809, line: 205, baseType: !18, size: 32, offset: 33280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !978, file: !809, line: 206, baseType: !18, size: 32, offset: 33312)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !978, file: !809, line: 208, baseType: !988, size: 64, offset: 33344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !310, file: !114, line: 795, baseType: !977, size: 64, offset: 6853312)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !310, file: !114, line: 796, baseType: !1004, size: 128, offset: 6853376)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 128, elements: !160)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !310, file: !114, line: 800, baseType: !1006, size: 72, offset: 6853504)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !1007)
!1007 = !{!136}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !310, file: !114, line: 802, baseType: !191, size: 64, offset: 6853632)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !310, file: !114, line: 803, baseType: !191, size: 64, offset: 6853696)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !310, file: !114, line: 804, baseType: !18, size: 32, offset: 6853760)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !310, file: !114, line: 807, baseType: !1012, size: 64, offset: 6853824)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !114, line: 807, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !310, file: !114, line: 810, baseType: !1015, size: 64, offset: 6853888)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !764, !1018, !18, !18, !18, !18, !18, !18}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !310, file: !114, line: 811, baseType: !1020, size: 64, offset: 6853952)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !300, !18, !18, !191, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !114, line: 85, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !114, line: 77, size: 128, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !1025, file: !114, line: 79, baseType: !18, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !1025, file: !114, line: 80, baseType: !18, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1025, file: !114, line: 81, baseType: !216, size: 16, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1025, file: !114, line: 82, baseType: !216, size: 16, offset: 80)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !1025, file: !114, line: 83, baseType: !216, size: 16, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !1025, file: !114, line: 84, baseType: !216, size: 16, offset: 112)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !310, file: !114, line: 812, baseType: !1034, size: 64, offset: 6854016)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !18, !891, !891}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !310, file: !114, line: 813, baseType: !1038, size: 64, offset: 6854080)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !188, !300, !18, !18, !871}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !310, file: !114, line: 814, baseType: !1038, size: 64, offset: 6854144)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !310, file: !114, line: 815, baseType: !1043, size: 64, offset: 6854208)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1046, !764, !188, !300, !18, !871}
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !41, line: 32, baseType: !47)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !310, file: !114, line: 816, baseType: !1043, size: 64, offset: 6854272)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !310, file: !114, line: 817, baseType: !1049, size: 64, offset: 6854336)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !764, !188, !300, !18, !18, !871}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !310, file: !114, line: 818, baseType: !1049, size: 64, offset: 6854400)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !310, file: !114, line: 819, baseType: !1054, size: 64, offset: 6854464)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !764, !1018, !18, !18, !18, !18, !18, !18, !18, !18}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !310, file: !114, line: 821, baseType: !1058, size: 64, offset: 6854528)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !114, line: 561, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !114, line: 544, size: 640, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1060, file: !114, line: 546, baseType: !18, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1060, file: !114, line: 547, baseType: !18, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1060, file: !114, line: 548, baseType: !18, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1060, file: !114, line: 549, baseType: !18, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1060, file: !114, line: 550, baseType: !18, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1060, file: !114, line: 551, baseType: !18, size: 32, offset: 160)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1060, file: !114, line: 552, baseType: !188, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1060, file: !114, line: 553, baseType: !188, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1060, file: !114, line: 554, baseType: !188, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1060, file: !114, line: 555, baseType: !18, size: 32, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1060, file: !114, line: 556, baseType: !18, size: 32, offset: 416)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1060, file: !114, line: 557, baseType: !18, size: 32, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1060, file: !114, line: 558, baseType: !18, size: 32, offset: 480)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1060, file: !114, line: 559, baseType: !18, size: 32, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1060, file: !114, line: 560, baseType: !1077, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !310, file: !114, line: 822, baseType: !18, size: 32, offset: 6854592)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !310, file: !114, line: 823, baseType: !1080, size: 64, offset: 6854656)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !114, line: 823, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !310, file: !114, line: 824, baseType: !18, size: 32, offset: 6854720)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !310, file: !114, line: 825, baseType: !18, size: 32, offset: 6854752)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !310, file: !114, line: 826, baseType: !18, size: 32, offset: 6854784)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !310, file: !114, line: 827, baseType: !18, size: 32, offset: 6854816)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !310, file: !114, line: 829, baseType: !18, size: 32, offset: 6854848)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !310, file: !114, line: 830, baseType: !18, size: 32, offset: 6854880)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !310, file: !114, line: 831, baseType: !18, size: 32, offset: 6854912)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !310, file: !114, line: 835, baseType: !395, size: 64, offset: 6854976)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !306, file: !114, line: 344, baseType: !313, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !306, file: !114, line: 345, baseType: !395, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !306, file: !114, line: 346, baseType: !445, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !306, file: !114, line: 347, baseType: !18, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !306, file: !114, line: 350, baseType: !977, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !306, file: !114, line: 353, baseType: !18, size: 32, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !306, file: !114, line: 354, baseType: !18, size: 32, offset: 416)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !306, file: !114, line: 355, baseType: !18, size: 32, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !306, file: !114, line: 356, baseType: !18, size: 32, offset: 480)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !306, file: !114, line: 357, baseType: !18, size: 32, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !306, file: !114, line: 359, baseType: !18, size: 32, offset: 544)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !306, file: !114, line: 360, baseType: !18, size: 32, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !306, file: !114, line: 361, baseType: !18, size: 32, offset: 608)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !306, file: !114, line: 365, baseType: !42, size: 32, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !306, file: !114, line: 366, baseType: !18, size: 32, offset: 672)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !306, file: !114, line: 368, baseType: !626, size: 64, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !306, file: !114, line: 372, baseType: !18, size: 32, offset: 768)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !306, file: !114, line: 378, baseType: !42, size: 32, offset: 800)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !306, file: !114, line: 379, baseType: !18, size: 32, offset: 832)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !306, file: !114, line: 387, baseType: !42, size: 32, offset: 864)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !306, file: !114, line: 388, baseType: !42, size: 32, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !306, file: !114, line: 389, baseType: !216, size: 16, offset: 928)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !306, file: !114, line: 396, baseType: !18, size: 32, offset: 960)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !306, file: !114, line: 397, baseType: !18, size: 32, offset: 992)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !306, file: !114, line: 400, baseType: !18, size: 32, offset: 1024)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !306, file: !114, line: 401, baseType: !18, size: 32, offset: 1056)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !306, file: !114, line: 402, baseType: !626, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !306, file: !114, line: 406, baseType: !18, size: 32, offset: 1152)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !306, file: !114, line: 407, baseType: !18, size: 32, offset: 1184)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !306, file: !114, line: 408, baseType: !18, size: 32, offset: 1216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !306, file: !114, line: 409, baseType: !18, size: 32, offset: 1248)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !306, file: !114, line: 410, baseType: !18, size: 32, offset: 1280)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !306, file: !114, line: 411, baseType: !18, size: 32, offset: 1312)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !306, file: !114, line: 412, baseType: !18, size: 32, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !306, file: !114, line: 413, baseType: !42, size: 32, offset: 1376)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !306, file: !114, line: 414, baseType: !42, size: 32, offset: 1408)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !306, file: !114, line: 415, baseType: !189, size: 8, offset: 1440)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !306, file: !114, line: 416, baseType: !829, size: 32, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !306, file: !114, line: 417, baseType: !18, size: 32, offset: 1504)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !306, file: !114, line: 418, baseType: !18, size: 32, offset: 1536)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !306, file: !114, line: 419, baseType: !18, size: 32, offset: 1568)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !306, file: !114, line: 420, baseType: !18, size: 32, offset: 1600)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !306, file: !114, line: 421, baseType: !18, size: 32, offset: 1632)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !306, file: !114, line: 422, baseType: !18, size: 32, offset: 1664)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !306, file: !114, line: 423, baseType: !18, size: 32, offset: 1696)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !306, file: !114, line: 426, baseType: !18, size: 32, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !306, file: !114, line: 427, baseType: !18, size: 32, offset: 1760)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !306, file: !114, line: 428, baseType: !18, size: 32, offset: 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !306, file: !114, line: 429, baseType: !18, size: 32, offset: 1824)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !306, file: !114, line: 430, baseType: !18, size: 32, offset: 1856)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !306, file: !114, line: 431, baseType: !18, size: 32, offset: 1888)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !306, file: !114, line: 432, baseType: !18, size: 32, offset: 1920)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !306, file: !114, line: 433, baseType: !18, size: 32, offset: 1952)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !306, file: !114, line: 434, baseType: !911, size: 64, offset: 1984)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !306, file: !114, line: 436, baseType: !1145, size: 48, offset: 2048)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 48, elements: !418)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !306, file: !114, line: 437, baseType: !1147, size: 384, offset: 2112)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 384, elements: !418)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !306, file: !114, line: 440, baseType: !1149, size: 64, offset: 2496)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !114, line: 324, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !114, line: 314, size: 384, elements: !1152)
!1152 = !{!1153, !1164, !1165}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !1151, file: !114, line: 317, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !114, line: 47, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !114, line: 300, size: 256, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !1156, file: !114, line: 303, baseType: !18, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !1156, file: !114, line: 304, baseType: !18, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !1156, file: !114, line: 306, baseType: !18, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !1156, file: !114, line: 307, baseType: !18, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !1156, file: !114, line: 309, baseType: !188, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !1156, file: !114, line: 310, baseType: !18, size: 32, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !1151, file: !114, line: 318, baseType: !181, size: 256, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !1151, file: !114, line: 320, baseType: !1166, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!18, !300, !1169, !1190}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !114, line: 296, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !114, line: 276, size: 384, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1185}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1171, file: !114, line: 278, baseType: !18, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !1171, file: !114, line: 279, baseType: !18, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !1171, file: !114, line: 280, baseType: !18, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1171, file: !114, line: 281, baseType: !18, size: 32, offset: 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !1171, file: !114, line: 282, baseType: !18, size: 32, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !1171, file: !114, line: 283, baseType: !42, size: 32, offset: 160)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1171, file: !114, line: 284, baseType: !18, size: 32, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1171, file: !114, line: 285, baseType: !18, size: 32, offset: 224)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1171, file: !114, line: 293, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !18, !18, !191, !191}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !1171, file: !114, line: 295, baseType: !1186, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !300, !1189, !179}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !306, file: !114, line: 441, baseType: !112, size: 64, offset: 2560)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !306, file: !114, line: 442, baseType: !151, size: 64, offset: 2624)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !306, file: !114, line: 444, baseType: !1194, size: 6144, offset: 2688)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 6144, elements: !1195)
!1195 = !{!144, !237}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !306, file: !114, line: 446, baseType: !626, size: 64, offset: 8832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !306, file: !114, line: 447, baseType: !1198, size: 128, offset: 8896)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !306, file: !114, line: 448, baseType: !1198, size: 128, offset: 9024)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !306, file: !114, line: 449, baseType: !1198, size: 128, offset: 9152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !306, file: !114, line: 452, baseType: !1198, size: 128, offset: 9280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !306, file: !114, line: 454, baseType: !18, size: 32, offset: 9408)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !306, file: !114, line: 455, baseType: !18, size: 32, offset: 9440)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !306, file: !114, line: 456, baseType: !18, size: 32, offset: 9472)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !306, file: !114, line: 458, baseType: !1206, size: 256, offset: 9504)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !114, line: 337, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !114, line: 327, size: 256, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !1207, file: !114, line: 329, baseType: !42, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !1207, file: !114, line: 330, baseType: !42, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !1207, file: !114, line: 331, baseType: !42, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !1207, file: !114, line: 332, baseType: !42, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !1207, file: !114, line: 333, baseType: !42, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !1207, file: !114, line: 334, baseType: !42, size: 32, offset: 160)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !1207, file: !114, line: 335, baseType: !42, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !1207, file: !114, line: 336, baseType: !42, size: 32, offset: 224)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !306, file: !114, line: 461, baseType: !216, size: 16, offset: 9760)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !306, file: !114, line: 462, baseType: !216, size: 16, offset: 9776)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !306, file: !114, line: 463, baseType: !216, size: 16, offset: 9792)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !306, file: !114, line: 465, baseType: !18, size: 32, offset: 9824)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !306, file: !114, line: 467, baseType: !18, size: 32, offset: 9856)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !306, file: !114, line: 468, baseType: !18, size: 32, offset: 9888)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !306, file: !114, line: 470, baseType: !18, size: 32, offset: 9920)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !306, file: !114, line: 471, baseType: !803, size: 64, offset: 9984)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !306, file: !114, line: 472, baseType: !803, size: 64, offset: 10048)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !306, file: !114, line: 473, baseType: !573, size: 64, offset: 10112)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !306, file: !114, line: 474, baseType: !573, size: 64, offset: 10176)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !306, file: !114, line: 475, baseType: !573, size: 64, offset: 10240)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !306, file: !114, line: 477, baseType: !1230, size: 512, offset: 10304)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !226)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !306, file: !114, line: 479, baseType: !764, size: 64, offset: 10816)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !306, file: !114, line: 480, baseType: !764, size: 64, offset: 10880)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !306, file: !114, line: 481, baseType: !560, size: 64, offset: 10944)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !306, file: !114, line: 482, baseType: !764, size: 64, offset: 11008)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !306, file: !114, line: 483, baseType: !764, size: 64, offset: 11072)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !306, file: !114, line: 486, baseType: !1237, size: 9216, offset: 11136)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 9216, elements: !1238)
!1238 = !{!130, !144, !148, !148}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !306, file: !114, line: 487, baseType: !1237, size: 9216, offset: 20352)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !306, file: !114, line: 488, baseType: !1241, size: 36864, offset: 29568)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 36864, elements: !1242)
!1242 = !{!130, !144, !426, !426}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !306, file: !114, line: 489, baseType: !1241, size: 36864, offset: 66432)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !306, file: !114, line: 491, baseType: !1245, size: 768, offset: 103296)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 768, elements: !408)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !306, file: !114, line: 494, baseType: !1247, size: 2048, offset: 104064)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !231)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !306, file: !114, line: 495, baseType: !18, size: 32, offset: 106112)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !306, file: !114, line: 496, baseType: !18, size: 32, offset: 106144)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !306, file: !114, line: 500, baseType: !125, size: 16, offset: 106176)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !306, file: !114, line: 501, baseType: !125, size: 16, offset: 106192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !306, file: !114, line: 503, baseType: !125, size: 16, offset: 106208)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !306, file: !114, line: 504, baseType: !125, size: 16, offset: 106224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !306, file: !114, line: 505, baseType: !573, size: 64, offset: 106240)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !306, file: !114, line: 506, baseType: !573, size: 64, offset: 106304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !306, file: !114, line: 507, baseType: !1257, size: 64, offset: 106368)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !306, file: !114, line: 508, baseType: !216, size: 16, offset: 106432)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !306, file: !114, line: 509, baseType: !216, size: 16, offset: 106448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !306, file: !114, line: 512, baseType: !18, size: 32, offset: 106464)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !306, file: !114, line: 513, baseType: !18, size: 32, offset: 106496)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !306, file: !114, line: 514, baseType: !1263, size: 64, offset: 106560)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !306, file: !114, line: 515, baseType: !1263, size: 64, offset: 106624)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !306, file: !114, line: 520, baseType: !18, size: 32, offset: 106688)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !306, file: !114, line: 521, baseType: !1267, size: 544, offset: 106720)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 544, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 17)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !306, file: !114, line: 523, baseType: !1271, size: 64, offset: 107264)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !306, file: !114, line: 524, baseType: !1273, size: 64, offset: 107328)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!18, !300, !1046, !764, !871}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !306, file: !114, line: 525, baseType: !1277, size: 64, offset: 107392)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!18, !309, !313}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !306, file: !114, line: 526, baseType: !1281, size: 64, offset: 107456)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!18, !305, !18}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !306, file: !114, line: 527, baseType: !1271, size: 64, offset: 107520)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !306, file: !114, line: 528, baseType: !1271, size: 64, offset: 107584)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !306, file: !114, line: 529, baseType: !1271, size: 64, offset: 107648)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !306, file: !114, line: 530, baseType: !1288, size: 64, offset: 107712)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !305}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !306, file: !114, line: 531, baseType: !1271, size: 64, offset: 107776)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !306, file: !114, line: 532, baseType: !1182, size: 64, offset: 107840)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !306, file: !114, line: 533, baseType: !1182, size: 64, offset: 107904)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !306, file: !114, line: 534, baseType: !1271, size: 64, offset: 107968)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !306, file: !114, line: 535, baseType: !18, size: 32, offset: 108032)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !306, file: !114, line: 536, baseType: !300, size: 64, offset: 108096)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !306, file: !114, line: 537, baseType: !871, size: 64, offset: 108160)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !306, file: !114, line: 538, baseType: !560, size: 64, offset: 108224)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !306, file: !114, line: 539, baseType: !664, size: 64, offset: 108288)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !306, file: !114, line: 540, baseType: !583, size: 64, offset: 108352)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !306, file: !114, line: 541, baseType: !1302, size: 768, offset: 108416)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 768, elements: !412)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !302, file: !114, line: 200, baseType: !309, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !302, file: !114, line: 201, baseType: !313, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !302, file: !114, line: 202, baseType: !18, size: 32, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !302, file: !114, line: 203, baseType: !1307, size: 32, offset: 224)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !114, line: 112, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 108, size: 32, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1308, file: !114, line: 110, baseType: !216, size: 16)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1308, file: !114, line: 111, baseType: !216, size: 16, offset: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !302, file: !114, line: 204, baseType: !18, size: 32, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !302, file: !114, line: 205, baseType: !18, size: 32, offset: 288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !302, file: !114, line: 206, baseType: !18, size: 32, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !302, file: !114, line: 207, baseType: !18, size: 32, offset: 352)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !302, file: !114, line: 208, baseType: !18, size: 32, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !302, file: !114, line: 209, baseType: !18, size: 32, offset: 416)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !302, file: !114, line: 210, baseType: !18, size: 32, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !302, file: !114, line: 212, baseType: !18, size: 32, offset: 480)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !302, file: !114, line: 213, baseType: !18, size: 32, offset: 512)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !302, file: !114, line: 215, baseType: !18, size: 32, offset: 544)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !302, file: !114, line: 216, baseType: !626, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !302, file: !114, line: 217, baseType: !339, size: 96, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !302, file: !114, line: 218, baseType: !18, size: 32, offset: 736)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !302, file: !114, line: 219, baseType: !18, size: 32, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !302, file: !114, line: 220, baseType: !18, size: 32, offset: 800)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !302, file: !114, line: 221, baseType: !18, size: 32, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !302, file: !114, line: 223, baseType: !216, size: 16, offset: 864)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !302, file: !114, line: 224, baseType: !584, size: 8, offset: 880)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !302, file: !114, line: 225, baseType: !584, size: 8, offset: 888)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !302, file: !114, line: 226, baseType: !216, size: 16, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !302, file: !114, line: 227, baseType: !216, size: 16, offset: 912)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !302, file: !114, line: 229, baseType: !1334, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !302, file: !114, line: 230, baseType: !1334, size: 64, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !302, file: !114, line: 232, baseType: !1334, size: 64, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !302, file: !114, line: 233, baseType: !1334, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !302, file: !114, line: 236, baseType: !216, size: 16, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !302, file: !114, line: 237, baseType: !1340, size: 1024, offset: 1232)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 1024, elements: !1341)
!1341 = !{!135, !148, !148, !135}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !302, file: !114, line: 239, baseType: !18, size: 32, offset: 2272)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !302, file: !114, line: 240, baseType: !1344, size: 192, offset: 2304)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 192, elements: !157)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !302, file: !114, line: 241, baseType: !1344, size: 192, offset: 2496)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !302, file: !114, line: 242, baseType: !1344, size: 192, offset: 2688)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !302, file: !114, line: 244, baseType: !18, size: 32, offset: 2880)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !302, file: !114, line: 245, baseType: !1349, size: 32, offset: 2912)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 32, elements: !147)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !302, file: !114, line: 246, baseType: !1349, size: 32, offset: 2944)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !302, file: !114, line: 247, baseType: !584, size: 8, offset: 2976)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !302, file: !114, line: 248, baseType: !584, size: 8, offset: 2984)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !302, file: !114, line: 249, baseType: !584, size: 8, offset: 2992)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !302, file: !114, line: 250, baseType: !216, size: 16, offset: 3008)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !302, file: !114, line: 251, baseType: !216, size: 16, offset: 3024)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !302, file: !114, line: 252, baseType: !216, size: 16, offset: 3040)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !302, file: !114, line: 254, baseType: !18, size: 32, offset: 3072)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !302, file: !114, line: 256, baseType: !18, size: 32, offset: 3104)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !302, file: !114, line: 256, baseType: !18, size: 32, offset: 3136)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !302, file: !114, line: 256, baseType: !18, size: 32, offset: 3168)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !302, file: !114, line: 256, baseType: !18, size: 32, offset: 3200)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !302, file: !114, line: 257, baseType: !18, size: 32, offset: 3232)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !302, file: !114, line: 257, baseType: !18, size: 32, offset: 3264)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !302, file: !114, line: 257, baseType: !18, size: 32, offset: 3296)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !302, file: !114, line: 257, baseType: !18, size: 32, offset: 3328)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !302, file: !114, line: 259, baseType: !18, size: 32, offset: 3360)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !302, file: !114, line: 260, baseType: !18, size: 32, offset: 3392)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !302, file: !114, line: 262, baseType: !1369, size: 64, offset: 3456)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1334, !1046, !18, !18}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !302, file: !114, line: 263, baseType: !1369, size: 64, offset: 3520)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !302, file: !114, line: 265, baseType: !1374, size: 64, offset: 3584)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1334, !1023, !1377, !216, !865, !18, !18, !18, !18, !18}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !302, file: !114, line: 268, baseType: !1379, size: 64, offset: 3648)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!18, !1334, !179, !18}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !302, file: !114, line: 269, baseType: !1383, size: 64, offset: 3712)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!584, !1334, !1189, !1190, !584, !18}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !302, file: !114, line: 272, baseType: !189, size: 8, offset: 3776)
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DILocalVariable(name: "currMB", arg: 1, scope: !297, file: !2, line: 45, type: !300)
!1389 = !DILocalVariable(name: "p_Vid", scope: !297, file: !2, line: 47, type: !981)
!1390 = !DILocalVariable(name: "up", scope: !297, file: !2, line: 48, type: !1024)
!1391 = !DILocalVariable(name: "left", scope: !297, file: !2, line: 48, type: !1024)
!1392 = !DILocalVariable(name: "mb_size", scope: !297, file: !2, line: 49, type: !191)
!1393 = distinct !DIAssignID()
!1394 = !DILocation(line: 0, scope: !297)
!1395 = distinct !DIAssignID()
!1396 = !DILocation(line: 47, column: 36, scope: !297)
!1397 = !DILocation(line: 48, column: 3, scope: !297)
!1398 = !DILocation(line: 49, column: 25, scope: !297)
!1399 = !DILocation(line: 51, column: 10, scope: !297)
!1400 = !DILocation(line: 51, column: 3, scope: !297)
!1401 = !DILocation(line: 52, column: 10, scope: !297)
!1402 = !DILocation(line: 52, column: 3, scope: !297)
!1403 = !DILocation(line: 54, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !297, file: !2, line: 54, column: 7)
!1405 = !DILocation(line: 54, column: 7, scope: !1404)
!1406 = !DILocation(line: 54, column: 7, scope: !297)
!1407 = !DILocation(line: 55, column: 30, scope: !1404)
!1408 = !DILocation(line: 55, column: 39, scope: !1404)
!1409 = !DILocation(line: 55, column: 50, scope: !1404)
!1410 = !DILocation(line: 55, column: 22, scope: !1404)
!1411 = !DILocation(line: 55, column: 5, scope: !1404)
!1412 = !DILocation(line: 0, scope: !1404)
!1413 = !DILocation(line: 59, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !297, file: !2, line: 59, column: 7)
!1415 = !DILocation(line: 59, column: 7, scope: !1414)
!1416 = !DILocation(line: 59, column: 7, scope: !297)
!1417 = !DILocation(line: 60, column: 32, scope: !1414)
!1418 = !DILocation(line: 60, column: 41, scope: !1414)
!1419 = !DILocation(line: 60, column: 54, scope: !1414)
!1420 = !DILocation(line: 60, column: 24, scope: !1414)
!1421 = !DILocation(line: 60, column: 5, scope: !1414)
!1422 = !DILocation(line: 0, scope: !1414)
!1423 = !DILocation(line: 63, column: 1, scope: !297)
!1424 = distinct !DISubprogram(name: "cabac_new_slice", scope: !2, file: !2, line: 65, type: !1425, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !653}
!1427 = !{!1428}
!1428 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1424, file: !2, line: 65, type: !653)
!1429 = !DILocation(line: 0, scope: !1424)
!1430 = !DILocation(line: 67, column: 14, scope: !1424)
!1431 = !DILocation(line: 67, column: 26, scope: !1424)
!1432 = !DILocation(line: 68, column: 1, scope: !1424)
!1433 = distinct !DISubprogram(name: "create_contexts_MotionInfo", scope: !2, file: !2, line: 78, type: !1434, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!112}
!1436 = !{!1437}
!1437 = !DILocalVariable(name: "deco_ctx", scope: !1433, file: !2, line: 80, type: !112)
!1438 = !DILocation(line: 82, column: 36, scope: !1433)
!1439 = !DILocation(line: 0, scope: !1433)
!1440 = !DILocation(line: 83, column: 16, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 83, column: 7)
!1442 = !DILocation(line: 83, column: 7, scope: !1433)
!1443 = !DILocation(line: 84, column: 5, scope: !1441)
!1444 = !DILocation(line: 86, column: 3, scope: !1433)
!1445 = !DISubprogram(name: "calloc", scope: !1446, file: !1446, line: 543, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!150, !1449, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1450, line: 18, baseType: !288)
!1450 = !DIFile(filename: "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h", directory: "/home/yjs/workspace", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!1451 = !DISubprogram(name: "no_mem_exit", scope: !1452, file: !1452, line: 180, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DIFile(filename: "ldecod_src/inc/memalloc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "88776e97a131c37d03036121c7c9e0ac")
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1456 = distinct !DISubprogram(name: "create_contexts_TextureInfo", scope: !2, file: !2, line: 97, type: !1457, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!151}
!1459 = !{!1460}
!1460 = !DILocalVariable(name: "deco_ctx", scope: !1456, file: !2, line: 99, type: !151)
!1461 = !DILocation(line: 101, column: 37, scope: !1456)
!1462 = !DILocation(line: 0, scope: !1456)
!1463 = !DILocation(line: 102, column: 16, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 102, column: 7)
!1465 = !DILocation(line: 102, column: 7, scope: !1456)
!1466 = !DILocation(line: 103, column: 5, scope: !1464)
!1467 = !DILocation(line: 105, column: 3, scope: !1456)
!1468 = distinct !DISubprogram(name: "delete_contexts_MotionInfo", scope: !2, file: !2, line: 116, type: !1469, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !112}
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "deco_ctx", arg: 1, scope: !1468, file: !2, line: 116, type: !112)
!1473 = !DILocation(line: 0, scope: !1468)
!1474 = !DILocation(line: 118, column: 16, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 118, column: 7)
!1476 = !DILocation(line: 118, column: 7, scope: !1468)
!1477 = !DILocation(line: 121, column: 3, scope: !1468)
!1478 = !DILocation(line: 122, column: 1, scope: !1468)
!1479 = !DISubprogram(name: "free", scope: !1446, file: !1446, line: 555, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !150}
!1482 = distinct !DISubprogram(name: "delete_contexts_TextureInfo", scope: !2, file: !2, line: 132, type: !1483, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !151}
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "deco_ctx", arg: 1, scope: !1482, file: !2, line: 132, type: !151)
!1487 = !DILocation(line: 0, scope: !1482)
!1488 = !DILocation(line: 134, column: 16, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 134, column: 7)
!1490 = !DILocation(line: 134, column: 7, scope: !1482)
!1491 = !DILocation(line: 137, column: 3, scope: !1482)
!1492 = !DILocation(line: 138, column: 1, scope: !1482)
!1493 = distinct !DISubprogram(name: "readFieldModeInfo_CABAC", scope: !2, file: !2, line: 140, type: !1494, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !300, !1169, !179}
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1497 = !DILocalVariable(name: "currMB", arg: 1, scope: !1493, file: !2, line: 140, type: !300)
!1498 = !DILocalVariable(name: "se", arg: 2, scope: !1493, file: !2, line: 141, type: !1169)
!1499 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !1493, file: !2, line: 142, type: !179)
!1500 = !DILocalVariable(name: "currSlice", scope: !1493, file: !2, line: 144, type: !653)
!1501 = !DILocalVariable(name: "ctx", scope: !1493, file: !2, line: 146, type: !112)
!1502 = !DILocalVariable(name: "a", scope: !1493, file: !2, line: 147, type: !18)
!1503 = !DILocalVariable(name: "b", scope: !1493, file: !2, line: 148, type: !18)
!1504 = !DILocalVariable(name: "act_ctx", scope: !1493, file: !2, line: 149, type: !18)
!1505 = !DILocation(line: 0, scope: !1493)
!1506 = !DILocation(line: 144, column: 30, scope: !1493)
!1507 = !DILocation(line: 146, column: 41, scope: !1493)
!1508 = !DILocation(line: 147, column: 19, scope: !1493)
!1509 = !DILocation(line: 147, column: 11, scope: !1493)
!1510 = !DILocation(line: 147, column: 41, scope: !1493)
!1511 = !DILocation(line: 147, column: 57, scope: !1493)
!1512 = !DILocation(line: 147, column: 30, scope: !1493)
!1513 = !DILocation(line: 147, column: 66, scope: !1493)
!1514 = !DILocation(line: 148, column: 19, scope: !1493)
!1515 = !DILocation(line: 148, column: 11, scope: !1493)
!1516 = !DILocation(line: 148, column: 41, scope: !1493)
!1517 = !DILocation(line: 148, column: 57, scope: !1493)
!1518 = !DILocation(line: 148, column: 30, scope: !1493)
!1519 = !DILocation(line: 148, column: 66, scope: !1493)
!1520 = !DILocation(line: 149, column: 19, scope: !1493)
!1521 = !DILocation(line: 151, column: 51, scope: !1493)
!1522 = !DILocation(line: 151, column: 46, scope: !1493)
!1523 = !DILocation(line: 151, column: 16, scope: !1493)
!1524 = !DILocation(line: 151, column: 7, scope: !1493)
!1525 = !DILocation(line: 151, column: 14, scope: !1493)
!1526 = !DILocation(line: 157, column: 1, scope: !1493)
!1527 = !DISubprogram(name: "biari_decode_symbol", scope: !1528, file: !1528, line: 129, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1528 = !DIFile(filename: "ldecod_src/inc/biaridecod.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "9395105ff7eca866196162279db3ac14")
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!42, !179, !192}
!1531 = distinct !DISubprogram(name: "check_next_mb_and_get_field_mode_CABAC_p_slice", scope: !2, file: !2, line: 160, type: !1532, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!18, !653, !1169, !1149}
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1535 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1531, file: !2, line: 160, type: !653)
!1536 = !DILocalVariable(name: "se", arg: 2, scope: !1531, file: !2, line: 161, type: !1169)
!1537 = !DILocalVariable(name: "act_dp", arg: 3, scope: !1531, file: !2, line: 162, type: !1149)
!1538 = !DILocalVariable(name: "p_Vid", scope: !1531, file: !2, line: 164, type: !981)
!1539 = !DILocalVariable(name: "mb_type_ctx_copy", scope: !1531, file: !2, line: 165, type: !1540)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !157)
!1541 = !DILocalVariable(name: "mb_aff_ctx_copy", scope: !1531, file: !2, line: 166, type: !192)
!1542 = !DILocalVariable(name: "dep_dp_copy", scope: !1531, file: !2, line: 167, type: !179)
!1543 = !DILocalVariable(name: "mot_ctx", scope: !1531, file: !2, line: 168, type: !112)
!1544 = !DILocalVariable(name: "length", scope: !1531, file: !2, line: 170, type: !18)
!1545 = !DILocalVariable(name: "dep_dp", scope: !1531, file: !2, line: 171, type: !179)
!1546 = !DILocalVariable(name: "skip", scope: !1531, file: !2, line: 173, type: !18)
!1547 = !DILocalVariable(name: "field", scope: !1531, file: !2, line: 174, type: !18)
!1548 = !DILocalVariable(name: "i", scope: !1531, file: !2, line: 175, type: !18)
!1549 = !DILocalVariable(name: "currMB", scope: !1531, file: !2, line: 177, type: !300)
!1550 = distinct !DIAssignID()
!1551 = !DILocation(line: 0, scope: !297, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 234, column: 3, scope: !1531)
!1553 = distinct !DIAssignID()
!1554 = distinct !DIAssignID()
!1555 = !DILocation(line: 0, scope: !297, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 191, column: 3, scope: !1531)
!1557 = distinct !DIAssignID()
!1558 = !DILocation(line: 0, scope: !1531)
!1559 = !DILocation(line: 164, column: 39, scope: !1531)
!1560 = !DILocation(line: 168, column: 45, scope: !1531)
!1561 = !DILocation(line: 171, column: 48, scope: !1531)
!1562 = !DILocation(line: 180, column: 16, scope: !1531)
!1563 = !DILocation(line: 180, column: 3, scope: !1531)
!1564 = !DILocation(line: 182, column: 24, scope: !1531)
!1565 = !DILocation(line: 182, column: 13, scope: !1531)
!1566 = !DILocation(line: 183, column: 11, scope: !1531)
!1567 = !DILocation(line: 183, column: 20, scope: !1531)
!1568 = !DILocation(line: 184, column: 20, scope: !1531)
!1569 = !DILocation(line: 185, column: 33, scope: !1531)
!1570 = !DILocation(line: 185, column: 11, scope: !1531)
!1571 = !DILocation(line: 185, column: 20, scope: !1531)
!1572 = !DILocation(line: 186, column: 33, scope: !1531)
!1573 = !DILocation(line: 186, column: 52, scope: !1531)
!1574 = !DILocation(line: 186, column: 65, scope: !1531)
!1575 = !DILocation(line: 186, column: 22, scope: !1531)
!1576 = !DILocation(line: 186, column: 69, scope: !1531)
!1577 = !DILocation(line: 186, column: 11, scope: !1531)
!1578 = !DILocation(line: 186, column: 20, scope: !1531)
!1579 = !DILocation(line: 187, column: 33, scope: !1531)
!1580 = !DILocation(line: 187, column: 11, scope: !1531)
!1581 = !DILocation(line: 187, column: 20, scope: !1531)
!1582 = !DILocation(line: 188, column: 38, scope: !1531)
!1583 = !DILocation(line: 188, column: 26, scope: !1531)
!1584 = !DILocation(line: 188, column: 56, scope: !1531)
!1585 = !DILocation(line: 188, column: 11, scope: !1531)
!1586 = !DILocation(line: 188, column: 23, scope: !1531)
!1587 = !DILocation(line: 190, column: 3, scope: !1531)
!1588 = !DILocation(line: 47, column: 36, scope: !297, inlinedAt: !1556)
!1589 = !DILocation(line: 48, column: 3, scope: !297, inlinedAt: !1556)
!1590 = !DILocation(line: 49, column: 25, scope: !297, inlinedAt: !1556)
!1591 = !DILocation(line: 51, column: 10, scope: !297, inlinedAt: !1556)
!1592 = !DILocation(line: 51, column: 3, scope: !297, inlinedAt: !1556)
!1593 = !DILocation(line: 52, column: 10, scope: !297, inlinedAt: !1556)
!1594 = !DILocation(line: 52, column: 3, scope: !297, inlinedAt: !1556)
!1595 = !DILocation(line: 54, column: 10, scope: !1404, inlinedAt: !1556)
!1596 = !DILocation(line: 54, column: 7, scope: !1404, inlinedAt: !1556)
!1597 = !DILocation(line: 54, column: 7, scope: !297, inlinedAt: !1556)
!1598 = !DILocation(line: 55, column: 30, scope: !1404, inlinedAt: !1556)
!1599 = !DILocation(line: 55, column: 39, scope: !1404, inlinedAt: !1556)
!1600 = !DILocation(line: 55, column: 50, scope: !1404, inlinedAt: !1556)
!1601 = !DILocation(line: 55, column: 22, scope: !1404, inlinedAt: !1556)
!1602 = !DILocation(line: 55, column: 5, scope: !1404, inlinedAt: !1556)
!1603 = !DILocation(line: 0, scope: !1404, inlinedAt: !1556)
!1604 = !DILocation(line: 59, column: 12, scope: !1414, inlinedAt: !1556)
!1605 = !DILocation(line: 59, column: 7, scope: !1414, inlinedAt: !1556)
!1606 = !DILocation(line: 59, column: 7, scope: !297, inlinedAt: !1556)
!1607 = !DILocation(line: 60, column: 32, scope: !1414, inlinedAt: !1556)
!1608 = !DILocation(line: 60, column: 41, scope: !1414, inlinedAt: !1556)
!1609 = !DILocation(line: 60, column: 54, scope: !1414, inlinedAt: !1556)
!1610 = !DILocation(line: 60, column: 24, scope: !1414, inlinedAt: !1556)
!1611 = !DILocation(line: 60, column: 5, scope: !1414, inlinedAt: !1556)
!1612 = !DILocation(line: 0, scope: !1414, inlinedAt: !1556)
!1613 = !DILocation(line: 63, column: 1, scope: !297, inlinedAt: !1556)
!1614 = !DILocation(line: 194, column: 42, scope: !1531)
!1615 = !DILocation(line: 196, column: 46, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 195, column: 3)
!1617 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 195, column: 3)
!1618 = !DILocation(line: 197, column: 40, scope: !1531)
!1619 = !DILocation(line: 200, column: 3, scope: !1531)
!1620 = !DILocation(line: 201, column: 54, scope: !1531)
!1621 = !DILocation(line: 201, column: 44, scope: !1531)
!1622 = !DILocation(line: 201, column: 27, scope: !1531)
!1623 = !DILocation(line: 201, column: 42, scope: !1531)
!1624 = !DILocation(line: 203, column: 5, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 202, column: 3)
!1626 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 202, column: 3)
!1627 = !DILocation(line: 203, column: 33, scope: !1625)
!1628 = !DILocation(line: 204, column: 36, scope: !1531)
!1629 = !DILocation(line: 204, column: 3, scope: !1531)
!1630 = !DILocation(line: 210, column: 14, scope: !1531)
!1631 = !DILocation(line: 210, column: 26, scope: !1531)
!1632 = !DILocalVariable(name: "currMB", arg: 1, scope: !1633, file: !2, line: 532, type: !300)
!1633 = distinct !DISubprogram(name: "read_skip_flag_CABAC_p_slice", scope: !2, file: !2, line: 532, type: !1494, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1634)
!1634 = !{!1632, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1635 = !DILocalVariable(name: "se", arg: 2, scope: !1633, file: !2, line: 533, type: !1169)
!1636 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !1633, file: !2, line: 534, type: !179)
!1637 = !DILocalVariable(name: "currSlice", scope: !1633, file: !2, line: 536, type: !653)
!1638 = !DILocalVariable(name: "ctx", scope: !1633, file: !2, line: 537, type: !112)
!1639 = !DILocalVariable(name: "a", scope: !1633, file: !2, line: 538, type: !18)
!1640 = !DILocalVariable(name: "b", scope: !1633, file: !2, line: 539, type: !18)
!1641 = !DILocalVariable(name: "act_ctx", scope: !1633, file: !2, line: 540, type: !18)
!1642 = !DILocation(line: 0, scope: !1633, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 211, column: 3, scope: !1531)
!1644 = !DILocation(line: 536, column: 30, scope: !1633, inlinedAt: !1643)
!1645 = !DILocation(line: 537, column: 40, scope: !1633, inlinedAt: !1643)
!1646 = !DILocation(line: 538, column: 20, scope: !1633, inlinedAt: !1643)
!1647 = !DILocation(line: 538, column: 28, scope: !1633, inlinedAt: !1643)
!1648 = !DILocation(line: 538, column: 11, scope: !1633, inlinedAt: !1643)
!1649 = !DILocation(line: 538, column: 57, scope: !1633, inlinedAt: !1643)
!1650 = !DILocation(line: 538, column: 67, scope: !1633, inlinedAt: !1643)
!1651 = !DILocation(line: 539, column: 20, scope: !1633, inlinedAt: !1643)
!1652 = !DILocation(line: 539, column: 28, scope: !1633, inlinedAt: !1643)
!1653 = !DILocation(line: 539, column: 11, scope: !1633, inlinedAt: !1643)
!1654 = !DILocation(line: 539, column: 57, scope: !1633, inlinedAt: !1643)
!1655 = !DILocation(line: 539, column: 67, scope: !1633, inlinedAt: !1643)
!1656 = !DILocation(line: 540, column: 19, scope: !1633, inlinedAt: !1643)
!1657 = !DILocation(line: 542, column: 36, scope: !1658, inlinedAt: !1643)
!1658 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 542, column: 7)
!1659 = !DILocation(line: 542, column: 7, scope: !1658, inlinedAt: !1643)
!1660 = !DILocation(line: 542, column: 71, scope: !1658, inlinedAt: !1643)
!1661 = !DILocation(line: 0, scope: !1658, inlinedAt: !1643)
!1662 = !DILocation(line: 542, column: 7, scope: !1633, inlinedAt: !1643)
!1663 = !DILocation(line: 215, column: 7, scope: !1531)
!1664 = !DILocation(line: 553, column: 16, scope: !1665, inlinedAt: !1643)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 552, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 551, column: 7)
!1667 = !DILocation(line: 553, column: 28, scope: !1665, inlinedAt: !1643)
!1668 = !DILocation(line: 213, column: 15, scope: !1531)
!1669 = !DILocation(line: 213, column: 21, scope: !1531)
!1670 = !DILocation(line: 0, scope: !1493, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 220, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 216, column: 3)
!1673 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 215, column: 7)
!1674 = !DILocation(line: 144, column: 30, scope: !1493, inlinedAt: !1671)
!1675 = !DILocation(line: 146, column: 41, scope: !1493, inlinedAt: !1671)
!1676 = !DILocation(line: 147, column: 19, scope: !1493, inlinedAt: !1671)
!1677 = !DILocation(line: 147, column: 11, scope: !1493, inlinedAt: !1671)
!1678 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !1671)
!1679 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !1671)
!1680 = !DILocation(line: 147, column: 30, scope: !1493, inlinedAt: !1671)
!1681 = !DILocation(line: 147, column: 66, scope: !1493, inlinedAt: !1671)
!1682 = !DILocation(line: 148, column: 19, scope: !1493, inlinedAt: !1671)
!1683 = !DILocation(line: 148, column: 11, scope: !1493, inlinedAt: !1671)
!1684 = !DILocation(line: 148, column: 41, scope: !1493, inlinedAt: !1671)
!1685 = !DILocation(line: 148, column: 57, scope: !1493, inlinedAt: !1671)
!1686 = !DILocation(line: 148, column: 30, scope: !1493, inlinedAt: !1671)
!1687 = !DILocation(line: 148, column: 66, scope: !1493, inlinedAt: !1671)
!1688 = !DILocation(line: 149, column: 19, scope: !1493, inlinedAt: !1671)
!1689 = !DILocation(line: 151, column: 51, scope: !1493, inlinedAt: !1671)
!1690 = !DILocation(line: 151, column: 46, scope: !1493, inlinedAt: !1671)
!1691 = !DILocation(line: 151, column: 16, scope: !1493, inlinedAt: !1671)
!1692 = !DILocation(line: 151, column: 14, scope: !1493, inlinedAt: !1671)
!1693 = !DILocation(line: 222, column: 16, scope: !1672)
!1694 = !DILocation(line: 222, column: 35, scope: !1672)
!1695 = !DILocation(line: 222, column: 48, scope: !1672)
!1696 = !DILocation(line: 222, column: 5, scope: !1672)
!1697 = !DILocation(line: 222, column: 52, scope: !1672)
!1698 = !DILocation(line: 222, column: 61, scope: !1672)
!1699 = !DILocation(line: 223, column: 3, scope: !1672)
!1700 = !DILocation(line: 226, column: 27, scope: !1531)
!1701 = !DILocation(line: 228, column: 3, scope: !1531)
!1702 = !DILocation(line: 229, column: 13, scope: !1531)
!1703 = !DILocation(line: 229, column: 28, scope: !1531)
!1704 = !DILocation(line: 231, column: 5, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 230, column: 3)
!1706 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 230, column: 3)
!1707 = !DILocation(line: 232, column: 3, scope: !1531)
!1708 = !DILocation(line: 47, column: 36, scope: !297, inlinedAt: !1552)
!1709 = !DILocation(line: 48, column: 3, scope: !297, inlinedAt: !1552)
!1710 = !DILocation(line: 49, column: 25, scope: !297, inlinedAt: !1552)
!1711 = !DILocation(line: 51, column: 10, scope: !297, inlinedAt: !1552)
!1712 = !DILocation(line: 51, column: 3, scope: !297, inlinedAt: !1552)
!1713 = !DILocation(line: 52, column: 10, scope: !297, inlinedAt: !1552)
!1714 = !DILocation(line: 52, column: 3, scope: !297, inlinedAt: !1552)
!1715 = !DILocation(line: 54, column: 10, scope: !1404, inlinedAt: !1552)
!1716 = !DILocation(line: 54, column: 7, scope: !1404, inlinedAt: !1552)
!1717 = !DILocation(line: 54, column: 7, scope: !297, inlinedAt: !1552)
!1718 = !DILocation(line: 55, column: 30, scope: !1404, inlinedAt: !1552)
!1719 = !DILocation(line: 55, column: 39, scope: !1404, inlinedAt: !1552)
!1720 = !DILocation(line: 55, column: 50, scope: !1404, inlinedAt: !1552)
!1721 = !DILocation(line: 55, column: 22, scope: !1404, inlinedAt: !1552)
!1722 = !DILocation(line: 55, column: 5, scope: !1404, inlinedAt: !1552)
!1723 = !DILocation(line: 0, scope: !1404, inlinedAt: !1552)
!1724 = !DILocation(line: 59, column: 12, scope: !1414, inlinedAt: !1552)
!1725 = !DILocation(line: 59, column: 7, scope: !1414, inlinedAt: !1552)
!1726 = !DILocation(line: 59, column: 7, scope: !297, inlinedAt: !1552)
!1727 = !DILocation(line: 60, column: 32, scope: !1414, inlinedAt: !1552)
!1728 = !DILocation(line: 60, column: 41, scope: !1414, inlinedAt: !1552)
!1729 = !DILocation(line: 60, column: 54, scope: !1414, inlinedAt: !1552)
!1730 = !DILocation(line: 60, column: 24, scope: !1414, inlinedAt: !1552)
!1731 = !DILocation(line: 60, column: 5, scope: !1414, inlinedAt: !1552)
!1732 = !DILocation(line: 0, scope: !1414, inlinedAt: !1552)
!1733 = !DILocation(line: 63, column: 1, scope: !297, inlinedAt: !1552)
!1734 = !DILocation(line: 237, column: 3, scope: !1531)
!1735 = !DILocation(line: 239, column: 5, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 238, column: 3)
!1737 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 238, column: 3)
!1738 = !DILocation(line: 240, column: 3, scope: !1531)
!1739 = !DILocation(line: 242, column: 3, scope: !1531)
!1740 = !DISubprogram(name: "CheckAvailabilityOfNeighbors", scope: !1741, file: !1741, line: 19, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1741 = !DIFile(filename: "ldecod_src/inc/mb_access.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "eb590c3fb983e8661ba693913fa8cfd2")
!1742 = !DILocation(line: 0, scope: !1633)
!1743 = !DILocation(line: 536, column: 30, scope: !1633)
!1744 = !DILocation(line: 537, column: 40, scope: !1633)
!1745 = !DILocation(line: 538, column: 20, scope: !1633)
!1746 = !DILocation(line: 538, column: 28, scope: !1633)
!1747 = !DILocation(line: 538, column: 11, scope: !1633)
!1748 = !DILocation(line: 538, column: 57, scope: !1633)
!1749 = !DILocation(line: 538, column: 67, scope: !1633)
!1750 = !DILocation(line: 539, column: 20, scope: !1633)
!1751 = !DILocation(line: 539, column: 28, scope: !1633)
!1752 = !DILocation(line: 539, column: 11, scope: !1633)
!1753 = !DILocation(line: 539, column: 57, scope: !1633)
!1754 = !DILocation(line: 539, column: 67, scope: !1633)
!1755 = !DILocation(line: 540, column: 19, scope: !1633)
!1756 = !DILocation(line: 542, column: 36, scope: !1658)
!1757 = !DILocation(line: 542, column: 7, scope: !1658)
!1758 = !DILocation(line: 542, column: 71, scope: !1658)
!1759 = !DILocation(line: 0, scope: !1658)
!1760 = !DILocation(line: 542, column: 7, scope: !1633)
!1761 = !DILocation(line: 551, column: 7, scope: !1633)
!1762 = !DILocation(line: 553, column: 16, scope: !1665)
!1763 = !DILocation(line: 553, column: 28, scope: !1665)
!1764 = !DILocation(line: 554, column: 3, scope: !1665)
!1765 = !DILocation(line: 555, column: 1, scope: !1633)
!1766 = distinct !DISubprogram(name: "check_next_mb_and_get_field_mode_CABAC_b_slice", scope: !2, file: !2, line: 245, type: !1532, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1768 = !DILocalVariable(name: "currSlice", arg: 1, scope: !1766, file: !2, line: 245, type: !653)
!1769 = !DILocalVariable(name: "se", arg: 2, scope: !1766, file: !2, line: 246, type: !1169)
!1770 = !DILocalVariable(name: "act_dp", arg: 3, scope: !1766, file: !2, line: 247, type: !1149)
!1771 = !DILocalVariable(name: "p_Vid", scope: !1766, file: !2, line: 249, type: !981)
!1772 = !DILocalVariable(name: "mb_type_ctx_copy", scope: !1766, file: !2, line: 250, type: !1540)
!1773 = !DILocalVariable(name: "mb_aff_ctx_copy", scope: !1766, file: !2, line: 251, type: !192)
!1774 = !DILocalVariable(name: "dep_dp_copy", scope: !1766, file: !2, line: 252, type: !179)
!1775 = !DILocalVariable(name: "length", scope: !1766, file: !2, line: 254, type: !18)
!1776 = !DILocalVariable(name: "dep_dp", scope: !1766, file: !2, line: 255, type: !179)
!1777 = !DILocalVariable(name: "mot_ctx", scope: !1766, file: !2, line: 256, type: !112)
!1778 = !DILocalVariable(name: "skip", scope: !1766, file: !2, line: 258, type: !18)
!1779 = !DILocalVariable(name: "field", scope: !1766, file: !2, line: 259, type: !18)
!1780 = !DILocalVariable(name: "i", scope: !1766, file: !2, line: 260, type: !18)
!1781 = !DILocalVariable(name: "currMB", scope: !1766, file: !2, line: 262, type: !300)
!1782 = distinct !DIAssignID()
!1783 = !DILocation(line: 0, scope: !297, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 322, column: 3, scope: !1766)
!1785 = distinct !DIAssignID()
!1786 = distinct !DIAssignID()
!1787 = !DILocation(line: 0, scope: !297, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 276, column: 3, scope: !1766)
!1789 = distinct !DIAssignID()
!1790 = !DILocation(line: 0, scope: !1766)
!1791 = !DILocation(line: 249, column: 39, scope: !1766)
!1792 = !DILocation(line: 255, column: 48, scope: !1766)
!1793 = !DILocation(line: 256, column: 45, scope: !1766)
!1794 = !DILocation(line: 265, column: 16, scope: !1766)
!1795 = !DILocation(line: 265, column: 3, scope: !1766)
!1796 = !DILocation(line: 267, column: 24, scope: !1766)
!1797 = !DILocation(line: 267, column: 13, scope: !1766)
!1798 = !DILocation(line: 268, column: 11, scope: !1766)
!1799 = !DILocation(line: 268, column: 20, scope: !1766)
!1800 = !DILocation(line: 269, column: 20, scope: !1766)
!1801 = !DILocation(line: 270, column: 33, scope: !1766)
!1802 = !DILocation(line: 270, column: 11, scope: !1766)
!1803 = !DILocation(line: 270, column: 20, scope: !1766)
!1804 = !DILocation(line: 271, column: 33, scope: !1766)
!1805 = !DILocation(line: 271, column: 52, scope: !1766)
!1806 = !DILocation(line: 271, column: 65, scope: !1766)
!1807 = !DILocation(line: 271, column: 22, scope: !1766)
!1808 = !DILocation(line: 271, column: 69, scope: !1766)
!1809 = !DILocation(line: 271, column: 11, scope: !1766)
!1810 = !DILocation(line: 271, column: 20, scope: !1766)
!1811 = !DILocation(line: 272, column: 33, scope: !1766)
!1812 = !DILocation(line: 272, column: 11, scope: !1766)
!1813 = !DILocation(line: 272, column: 20, scope: !1766)
!1814 = !DILocation(line: 273, column: 38, scope: !1766)
!1815 = !DILocation(line: 273, column: 26, scope: !1766)
!1816 = !DILocation(line: 273, column: 56, scope: !1766)
!1817 = !DILocation(line: 273, column: 11, scope: !1766)
!1818 = !DILocation(line: 273, column: 23, scope: !1766)
!1819 = !DILocation(line: 275, column: 3, scope: !1766)
!1820 = !DILocation(line: 47, column: 36, scope: !297, inlinedAt: !1788)
!1821 = !DILocation(line: 48, column: 3, scope: !297, inlinedAt: !1788)
!1822 = !DILocation(line: 49, column: 25, scope: !297, inlinedAt: !1788)
!1823 = !DILocation(line: 51, column: 10, scope: !297, inlinedAt: !1788)
!1824 = !DILocation(line: 51, column: 3, scope: !297, inlinedAt: !1788)
!1825 = !DILocation(line: 52, column: 10, scope: !297, inlinedAt: !1788)
!1826 = !DILocation(line: 52, column: 3, scope: !297, inlinedAt: !1788)
!1827 = !DILocation(line: 54, column: 10, scope: !1404, inlinedAt: !1788)
!1828 = !DILocation(line: 54, column: 7, scope: !1404, inlinedAt: !1788)
!1829 = !DILocation(line: 54, column: 7, scope: !297, inlinedAt: !1788)
!1830 = !DILocation(line: 55, column: 30, scope: !1404, inlinedAt: !1788)
!1831 = !DILocation(line: 55, column: 39, scope: !1404, inlinedAt: !1788)
!1832 = !DILocation(line: 55, column: 50, scope: !1404, inlinedAt: !1788)
!1833 = !DILocation(line: 55, column: 22, scope: !1404, inlinedAt: !1788)
!1834 = !DILocation(line: 55, column: 5, scope: !1404, inlinedAt: !1788)
!1835 = !DILocation(line: 0, scope: !1404, inlinedAt: !1788)
!1836 = !DILocation(line: 59, column: 12, scope: !1414, inlinedAt: !1788)
!1837 = !DILocation(line: 59, column: 7, scope: !1414, inlinedAt: !1788)
!1838 = !DILocation(line: 59, column: 7, scope: !297, inlinedAt: !1788)
!1839 = !DILocation(line: 60, column: 32, scope: !1414, inlinedAt: !1788)
!1840 = !DILocation(line: 60, column: 41, scope: !1414, inlinedAt: !1788)
!1841 = !DILocation(line: 60, column: 54, scope: !1414, inlinedAt: !1788)
!1842 = !DILocation(line: 60, column: 24, scope: !1414, inlinedAt: !1788)
!1843 = !DILocation(line: 60, column: 5, scope: !1414, inlinedAt: !1788)
!1844 = !DILocation(line: 0, scope: !1414, inlinedAt: !1788)
!1845 = !DILocation(line: 63, column: 1, scope: !297, inlinedAt: !1788)
!1846 = !DILocation(line: 279, column: 42, scope: !1766)
!1847 = !DILocation(line: 281, column: 46, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 280, column: 3)
!1849 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 280, column: 3)
!1850 = !DILocation(line: 282, column: 40, scope: !1766)
!1851 = !DILocation(line: 285, column: 3, scope: !1766)
!1852 = !DILocation(line: 286, column: 54, scope: !1766)
!1853 = !DILocation(line: 286, column: 44, scope: !1766)
!1854 = !DILocation(line: 286, column: 27, scope: !1766)
!1855 = !DILocation(line: 286, column: 42, scope: !1766)
!1856 = !DILocation(line: 289, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 288, column: 3)
!1858 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 288, column: 3)
!1859 = !DILocation(line: 289, column: 33, scope: !1857)
!1860 = !DILocation(line: 291, column: 36, scope: !1766)
!1861 = !DILocation(line: 291, column: 3, scope: !1766)
!1862 = !DILocation(line: 297, column: 14, scope: !1766)
!1863 = !DILocation(line: 297, column: 26, scope: !1766)
!1864 = !DILocalVariable(name: "currMB", arg: 1, scope: !1865, file: !2, line: 564, type: !300)
!1865 = distinct !DISubprogram(name: "read_skip_flag_CABAC_b_slice", scope: !2, file: !2, line: 564, type: !1494, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1866)
!1866 = !{!1864, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1867 = !DILocalVariable(name: "se", arg: 2, scope: !1865, file: !2, line: 565, type: !1169)
!1868 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !1865, file: !2, line: 566, type: !179)
!1869 = !DILocalVariable(name: "currSlice", scope: !1865, file: !2, line: 568, type: !653)
!1870 = !DILocalVariable(name: "ctx", scope: !1865, file: !2, line: 569, type: !112)
!1871 = !DILocalVariable(name: "a", scope: !1865, file: !2, line: 570, type: !18)
!1872 = !DILocalVariable(name: "b", scope: !1865, file: !2, line: 571, type: !18)
!1873 = !DILocalVariable(name: "act_ctx", scope: !1865, file: !2, line: 572, type: !18)
!1874 = !DILocation(line: 0, scope: !1865, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 298, column: 3, scope: !1766)
!1876 = !DILocation(line: 568, column: 30, scope: !1865, inlinedAt: !1875)
!1877 = !DILocation(line: 569, column: 40, scope: !1865, inlinedAt: !1875)
!1878 = !DILocation(line: 570, column: 20, scope: !1865, inlinedAt: !1875)
!1879 = !DILocation(line: 570, column: 28, scope: !1865, inlinedAt: !1875)
!1880 = !DILocation(line: 570, column: 11, scope: !1865, inlinedAt: !1875)
!1881 = !DILocation(line: 570, column: 57, scope: !1865, inlinedAt: !1875)
!1882 = !DILocation(line: 570, column: 67, scope: !1865, inlinedAt: !1875)
!1883 = !DILocation(line: 572, column: 19, scope: !1865, inlinedAt: !1875)
!1884 = !DILocation(line: 571, column: 20, scope: !1865, inlinedAt: !1875)
!1885 = !DILocation(line: 571, column: 28, scope: !1865, inlinedAt: !1875)
!1886 = !DILocation(line: 571, column: 11, scope: !1865, inlinedAt: !1875)
!1887 = !DILocation(line: 571, column: 57, scope: !1865, inlinedAt: !1875)
!1888 = !DILocation(line: 571, column: 67, scope: !1865, inlinedAt: !1875)
!1889 = !DILocation(line: 572, column: 23, scope: !1865, inlinedAt: !1875)
!1890 = !DILocation(line: 574, column: 37, scope: !1891, inlinedAt: !1875)
!1891 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 574, column: 7)
!1892 = !DILocation(line: 574, column: 7, scope: !1891, inlinedAt: !1875)
!1893 = !DILocation(line: 574, column: 72, scope: !1891, inlinedAt: !1875)
!1894 = !DILocation(line: 0, scope: !1891, inlinedAt: !1875)
!1895 = !DILocation(line: 574, column: 7, scope: !1865, inlinedAt: !1875)
!1896 = !DILocation(line: 300, column: 25, scope: !1766)
!1897 = !DILocation(line: 585, column: 16, scope: !1898, inlinedAt: !1875)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 584, column: 3)
!1899 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 583, column: 7)
!1900 = !DILocation(line: 585, column: 28, scope: !1898, inlinedAt: !1875)
!1901 = !DILocation(line: 300, column: 15, scope: !1766)
!1902 = !DILocation(line: 300, column: 21, scope: !1766)
!1903 = !DILocation(line: 300, column: 32, scope: !1766)
!1904 = !DILocation(line: 300, column: 38, scope: !1766)
!1905 = !DILocation(line: 301, column: 7, scope: !1766)
!1906 = !DILocation(line: 0, scope: !1493, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 306, column: 5, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 302, column: 3)
!1909 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 301, column: 7)
!1910 = !DILocation(line: 144, column: 30, scope: !1493, inlinedAt: !1907)
!1911 = !DILocation(line: 146, column: 41, scope: !1493, inlinedAt: !1907)
!1912 = !DILocation(line: 147, column: 19, scope: !1493, inlinedAt: !1907)
!1913 = !DILocation(line: 147, column: 11, scope: !1493, inlinedAt: !1907)
!1914 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !1907)
!1915 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !1907)
!1916 = !DILocation(line: 147, column: 30, scope: !1493, inlinedAt: !1907)
!1917 = !DILocation(line: 147, column: 66, scope: !1493, inlinedAt: !1907)
!1918 = !DILocation(line: 148, column: 19, scope: !1493, inlinedAt: !1907)
!1919 = !DILocation(line: 148, column: 11, scope: !1493, inlinedAt: !1907)
!1920 = !DILocation(line: 148, column: 41, scope: !1493, inlinedAt: !1907)
!1921 = !DILocation(line: 148, column: 57, scope: !1493, inlinedAt: !1907)
!1922 = !DILocation(line: 148, column: 30, scope: !1493, inlinedAt: !1907)
!1923 = !DILocation(line: 148, column: 66, scope: !1493, inlinedAt: !1907)
!1924 = !DILocation(line: 149, column: 19, scope: !1493, inlinedAt: !1907)
!1925 = !DILocation(line: 151, column: 51, scope: !1493, inlinedAt: !1907)
!1926 = !DILocation(line: 151, column: 46, scope: !1493, inlinedAt: !1907)
!1927 = !DILocation(line: 151, column: 16, scope: !1493, inlinedAt: !1907)
!1928 = !DILocation(line: 151, column: 14, scope: !1493, inlinedAt: !1907)
!1929 = !DILocation(line: 308, column: 16, scope: !1908)
!1930 = !DILocation(line: 308, column: 35, scope: !1908)
!1931 = !DILocation(line: 308, column: 48, scope: !1908)
!1932 = !DILocation(line: 308, column: 5, scope: !1908)
!1933 = !DILocation(line: 308, column: 52, scope: !1908)
!1934 = !DILocation(line: 308, column: 61, scope: !1908)
!1935 = !DILocation(line: 309, column: 3, scope: !1908)
!1936 = !DILocation(line: 312, column: 27, scope: !1766)
!1937 = !DILocation(line: 314, column: 3, scope: !1766)
!1938 = !DILocation(line: 315, column: 13, scope: !1766)
!1939 = !DILocation(line: 315, column: 28, scope: !1766)
!1940 = !DILocation(line: 318, column: 5, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 317, column: 3)
!1942 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 317, column: 3)
!1943 = !DILocation(line: 320, column: 3, scope: !1766)
!1944 = !DILocation(line: 47, column: 36, scope: !297, inlinedAt: !1784)
!1945 = !DILocation(line: 48, column: 3, scope: !297, inlinedAt: !1784)
!1946 = !DILocation(line: 49, column: 25, scope: !297, inlinedAt: !1784)
!1947 = !DILocation(line: 51, column: 10, scope: !297, inlinedAt: !1784)
!1948 = !DILocation(line: 51, column: 3, scope: !297, inlinedAt: !1784)
!1949 = !DILocation(line: 52, column: 10, scope: !297, inlinedAt: !1784)
!1950 = !DILocation(line: 52, column: 3, scope: !297, inlinedAt: !1784)
!1951 = !DILocation(line: 54, column: 10, scope: !1404, inlinedAt: !1784)
!1952 = !DILocation(line: 54, column: 7, scope: !1404, inlinedAt: !1784)
!1953 = !DILocation(line: 54, column: 7, scope: !297, inlinedAt: !1784)
!1954 = !DILocation(line: 55, column: 30, scope: !1404, inlinedAt: !1784)
!1955 = !DILocation(line: 55, column: 39, scope: !1404, inlinedAt: !1784)
!1956 = !DILocation(line: 55, column: 50, scope: !1404, inlinedAt: !1784)
!1957 = !DILocation(line: 55, column: 22, scope: !1404, inlinedAt: !1784)
!1958 = !DILocation(line: 55, column: 5, scope: !1404, inlinedAt: !1784)
!1959 = !DILocation(line: 0, scope: !1404, inlinedAt: !1784)
!1960 = !DILocation(line: 59, column: 12, scope: !1414, inlinedAt: !1784)
!1961 = !DILocation(line: 59, column: 7, scope: !1414, inlinedAt: !1784)
!1962 = !DILocation(line: 59, column: 7, scope: !297, inlinedAt: !1784)
!1963 = !DILocation(line: 60, column: 32, scope: !1414, inlinedAt: !1784)
!1964 = !DILocation(line: 60, column: 41, scope: !1414, inlinedAt: !1784)
!1965 = !DILocation(line: 60, column: 54, scope: !1414, inlinedAt: !1784)
!1966 = !DILocation(line: 60, column: 24, scope: !1414, inlinedAt: !1784)
!1967 = !DILocation(line: 60, column: 5, scope: !1414, inlinedAt: !1784)
!1968 = !DILocation(line: 0, scope: !1414, inlinedAt: !1784)
!1969 = !DILocation(line: 63, column: 1, scope: !297, inlinedAt: !1784)
!1970 = !DILocation(line: 325, column: 3, scope: !1766)
!1971 = !DILocation(line: 327, column: 5, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 326, column: 3)
!1973 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 326, column: 3)
!1974 = !DILocation(line: 328, column: 3, scope: !1766)
!1975 = !DILocation(line: 330, column: 3, scope: !1766)
!1976 = !DILocation(line: 0, scope: !1865)
!1977 = !DILocation(line: 568, column: 30, scope: !1865)
!1978 = !DILocation(line: 569, column: 40, scope: !1865)
!1979 = !DILocation(line: 570, column: 20, scope: !1865)
!1980 = !DILocation(line: 570, column: 28, scope: !1865)
!1981 = !DILocation(line: 570, column: 11, scope: !1865)
!1982 = !DILocation(line: 570, column: 57, scope: !1865)
!1983 = !DILocation(line: 570, column: 67, scope: !1865)
!1984 = !DILocation(line: 572, column: 19, scope: !1865)
!1985 = !DILocation(line: 571, column: 20, scope: !1865)
!1986 = !DILocation(line: 571, column: 28, scope: !1865)
!1987 = !DILocation(line: 571, column: 11, scope: !1865)
!1988 = !DILocation(line: 571, column: 57, scope: !1865)
!1989 = !DILocation(line: 571, column: 67, scope: !1865)
!1990 = !DILocation(line: 572, column: 23, scope: !1865)
!1991 = !DILocation(line: 574, column: 37, scope: !1891)
!1992 = !DILocation(line: 574, column: 7, scope: !1891)
!1993 = !DILocation(line: 574, column: 72, scope: !1891)
!1994 = !DILocation(line: 0, scope: !1891)
!1995 = !DILocation(line: 574, column: 7, scope: !1865)
!1996 = !DILocation(line: 583, column: 7, scope: !1865)
!1997 = !DILocation(line: 585, column: 16, scope: !1898)
!1998 = !DILocation(line: 585, column: 28, scope: !1898)
!1999 = !DILocation(line: 586, column: 3, scope: !1898)
!2000 = !DILocation(line: 587, column: 1, scope: !1865)
!2001 = distinct !DISubprogram(name: "read_MVD_CABAC", scope: !2, file: !2, line: 343, type: !1494, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!2003 = !DILocalVariable(name: "currMB", arg: 1, scope: !2001, file: !2, line: 343, type: !300)
!2004 = !DILocalVariable(name: "se", arg: 2, scope: !2001, file: !2, line: 344, type: !1169)
!2005 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2001, file: !2, line: 345, type: !179)
!2006 = !DILocalVariable(name: "p_Vid", scope: !2001, file: !2, line: 347, type: !981)
!2007 = !DILocalVariable(name: "currSlice", scope: !2001, file: !2, line: 348, type: !653)
!2008 = !DILocalVariable(name: "ctx", scope: !2001, file: !2, line: 349, type: !112)
!2009 = !DILocalVariable(name: "i", scope: !2001, file: !2, line: 350, type: !18)
!2010 = !DILocalVariable(name: "j", scope: !2001, file: !2, line: 351, type: !18)
!2011 = !DILocalVariable(name: "a", scope: !2001, file: !2, line: 352, type: !18)
!2012 = !DILocalVariable(name: "b", scope: !2001, file: !2, line: 352, type: !18)
!2013 = !DILocalVariable(name: "act_ctx", scope: !2001, file: !2, line: 353, type: !18)
!2014 = !DILocalVariable(name: "act_sym", scope: !2001, file: !2, line: 354, type: !18)
!2015 = !DILocalVariable(name: "list_idx", scope: !2001, file: !2, line: 355, type: !18)
!2016 = !DILocalVariable(name: "k", scope: !2001, file: !2, line: 356, type: !18)
!2017 = !DILocalVariable(name: "block_a", scope: !2001, file: !2, line: 358, type: !1024)
!2018 = !DILocalVariable(name: "block_b", scope: !2001, file: !2, line: 358, type: !1024)
!2019 = distinct !DIAssignID()
!2020 = !DILocation(line: 0, scope: !2001)
!2021 = distinct !DIAssignID()
!2022 = !DILocation(line: 347, column: 36, scope: !2001)
!2023 = !DILocation(line: 348, column: 30, scope: !2001)
!2024 = !DILocation(line: 349, column: 40, scope: !2001)
!2025 = !DILocation(line: 350, column: 19, scope: !2001)
!2026 = !DILocation(line: 351, column: 19, scope: !2001)
!2027 = !DILocation(line: 355, column: 22, scope: !2001)
!2028 = !DILocation(line: 355, column: 29, scope: !2001)
!2029 = !DILocation(line: 356, column: 23, scope: !2001)
!2030 = !DILocation(line: 358, column: 3, scope: !2001)
!2031 = !DILocation(line: 360, column: 33, scope: !2001)
!2032 = !DILocation(line: 360, column: 52, scope: !2001)
!2033 = !DILocation(line: 360, column: 3, scope: !2001)
!2034 = !DILocation(line: 361, column: 15, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 361, column: 7)
!2036 = !DILocation(line: 361, column: 7, scope: !2035)
!2037 = !DILocation(line: 361, column: 7, scope: !2001)
!2038 = !DILocation(line: 363, column: 25, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 362, column: 3)
!2040 = !DILocation(line: 363, column: 41, scope: !2039)
!2041 = !DILocation(line: 363, column: 14, scope: !2039)
!2042 = !DILocation(line: 363, column: 72, scope: !2039)
!2043 = !DILocation(line: 363, column: 83, scope: !2039)
!2044 = !DILocation(line: 0, scope: !204, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 363, column: 9, scope: !2039)
!2046 = !DILocation(line: 120, column: 18, scope: !204, inlinedAt: !2045)
!2047 = !DILocation(line: 364, column: 20, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 364, column: 9)
!2049 = !DILocation(line: 364, column: 9, scope: !2048)
!2050 = !DILocation(line: 364, column: 38, scope: !2048)
!2051 = !DILocation(line: 366, column: 20, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 366, column: 11)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 365, column: 5)
!2054 = !DILocation(line: 366, column: 33, scope: !2052)
!2055 = !DILocation(line: 366, column: 73, scope: !2052)
!2056 = !DILocation(line: 366, column: 81, scope: !2052)
!2057 = !DILocation(line: 366, column: 11, scope: !2053)
!2058 = !DILocation(line: 368, column: 78, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 368, column: 16)
!2060 = !DILocation(line: 368, column: 86, scope: !2059)
!2061 = !DILocation(line: 368, column: 16, scope: !2052)
!2062 = !DILocation(line: 369, column: 11, scope: !2059)
!2063 = !DILocation(line: 369, column: 9, scope: !2059)
!2064 = !DILocation(line: 373, column: 40, scope: !2001)
!2065 = !DILocation(line: 373, column: 3, scope: !2001)
!2066 = !DILocation(line: 374, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 374, column: 7)
!2068 = !DILocation(line: 374, column: 7, scope: !2067)
!2069 = !DILocation(line: 374, column: 7, scope: !2001)
!2070 = !DILocation(line: 376, column: 25, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 375, column: 3)
!2072 = !DILocation(line: 376, column: 41, scope: !2071)
!2073 = !DILocation(line: 376, column: 14, scope: !2071)
!2074 = !DILocation(line: 376, column: 72, scope: !2071)
!2075 = !DILocation(line: 376, column: 83, scope: !2071)
!2076 = !DILocation(line: 0, scope: !204, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 376, column: 9, scope: !2071)
!2078 = !DILocation(line: 120, column: 18, scope: !204, inlinedAt: !2077)
!2079 = !DILocation(line: 377, column: 20, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 377, column: 9)
!2081 = !DILocation(line: 377, column: 9, scope: !2080)
!2082 = !DILocation(line: 377, column: 38, scope: !2080)
!2083 = !DILocation(line: 379, column: 20, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 379, column: 11)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 378, column: 5)
!2086 = !DILocation(line: 379, column: 33, scope: !2084)
!2087 = !DILocation(line: 379, column: 73, scope: !2084)
!2088 = !DILocation(line: 379, column: 81, scope: !2084)
!2089 = !DILocation(line: 379, column: 11, scope: !2085)
!2090 = !DILocation(line: 381, column: 78, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 381, column: 16)
!2092 = !DILocation(line: 381, column: 86, scope: !2091)
!2093 = !DILocation(line: 381, column: 16, scope: !2084)
!2094 = !DILocation(line: 382, column: 11, scope: !2091)
!2095 = !DILocation(line: 382, column: 9, scope: !2091)
!2096 = !DILocation(line: 385, column: 5, scope: !2001)
!2097 = !DILocation(line: 387, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 387, column: 7)
!2099 = !DILocation(line: 387, column: 7, scope: !2001)
!2100 = !DILocation(line: 388, column: 17, scope: !2098)
!2101 = !DILocation(line: 388, column: 5, scope: !2098)
!2102 = !DILocation(line: 389, column: 14, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 389, column: 12)
!2104 = !DILocation(line: 0, scope: !2103)
!2105 = !DILocation(line: 389, column: 12, scope: !2098)
!2106 = !DILocation(line: 390, column: 21, scope: !2103)
!2107 = !DILocation(line: 390, column: 5, scope: !2103)
!2108 = !DILocation(line: 392, column: 21, scope: !2103)
!2109 = !DILocation(line: 0, scope: !2098)
!2110 = !DILocation(line: 394, column: 7, scope: !2001)
!2111 = !DILocation(line: 394, column: 15, scope: !2001)
!2112 = !DILocation(line: 396, column: 46, scope: !2001)
!2113 = !DILocation(line: 396, column: 41, scope: !2001)
!2114 = !DILocation(line: 396, column: 13, scope: !2001)
!2115 = !DILocation(line: 398, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 398, column: 7)
!2117 = !DILocation(line: 398, column: 7, scope: !2001)
!2118 = !DILocation(line: 400, column: 17, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 399, column: 3)
!2120 = !DILocation(line: 401, column: 50, scope: !2119)
!2121 = !DILocation(line: 401, column: 74, scope: !2119)
!2122 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !2123, file: !2, line: 2285, type: !179)
!2123 = distinct !DISubprogram(name: "unary_exp_golomb_mv_decode", scope: !2, file: !2, line: 2285, type: !2124, scopeLine: 2288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!42, !179, !192, !42}
!2126 = !{!2122, !2127, !2128, !2129, !2130, !2133, !2134, !2135}
!2127 = !DILocalVariable(name: "ctx", arg: 2, scope: !2123, file: !2, line: 2286, type: !192)
!2128 = !DILocalVariable(name: "max_bin", arg: 3, scope: !2123, file: !2, line: 2287, type: !42)
!2129 = !DILocalVariable(name: "symbol", scope: !2123, file: !2, line: 2289, type: !42)
!2130 = !DILocalVariable(name: "exp_start", scope: !2131, file: !2, line: 2295, type: !42)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 2294, column: 3)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 2291, column: 7)
!2133 = !DILocalVariable(name: "l", scope: !2131, file: !2, line: 2296, type: !42)
!2134 = !DILocalVariable(name: "k", scope: !2131, file: !2, line: 2296, type: !42)
!2135 = !DILocalVariable(name: "bin", scope: !2131, file: !2, line: 2297, type: !42)
!2136 = !DILocation(line: 0, scope: !2123, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 401, column: 15, scope: !2119)
!2138 = !DILocation(line: 2289, column: 25, scope: !2123, inlinedAt: !2137)
!2139 = !DILocation(line: 2291, column: 14, scope: !2132, inlinedAt: !2137)
!2140 = !DILocation(line: 2291, column: 7, scope: !2123, inlinedAt: !2137)
!2141 = !DILocation(line: 0, scope: !2131, inlinedAt: !2137)
!2142 = !DILocation(line: 2301, column: 5, scope: !2131, inlinedAt: !2137)
!2143 = !DILocation(line: 2304, column: 9, scope: !2144, inlinedAt: !2137)
!2144 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 2303, column: 5)
!2145 = !DILocation(line: 2311, column: 13, scope: !2131, inlinedAt: !2137)
!2146 = !DILocation(line: 2310, column: 5, scope: !2144, inlinedAt: !2137)
!2147 = !DILocation(line: 2305, column: 11, scope: !2144, inlinedAt: !2137)
!2148 = !DILocation(line: 2306, column: 11, scope: !2144, inlinedAt: !2137)
!2149 = !DILocation(line: 2309, column: 7, scope: !2144, inlinedAt: !2137)
!2150 = !DILocation(line: 2308, column: 7, scope: !2144, inlinedAt: !2137)
!2151 = !DILocation(line: 2311, column: 18, scope: !2131, inlinedAt: !2137)
!2152 = distinct !{!2152, !2153, !2154, !2155}
!2153 = !DILocation(line: 2302, column: 5, scope: !2131, inlinedAt: !2137)
!2154 = !DILocation(line: 2311, column: 35, scope: !2131, inlinedAt: !2137)
!2155 = !{!"llvm.loop.peeled.count", i32 2}
!2156 = !DILocation(line: 2239, column: 33, scope: !2157, inlinedAt: !2166)
!2157 = distinct !DISubprogram(name: "exp_golomb_decode_eq_prob", scope: !2, file: !2, line: 2217, type: !2158, scopeLine: 2219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!42, !179, !18}
!2160 = !{!2161, !2162, !2163, !2164, !2165}
!2161 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !2157, file: !2, line: 2217, type: !179)
!2162 = !DILocalVariable(name: "k", arg: 2, scope: !2157, file: !2, line: 2218, type: !18)
!2163 = !DILocalVariable(name: "l", scope: !2157, file: !2, line: 2220, type: !42)
!2164 = !DILocalVariable(name: "symbol", scope: !2157, file: !2, line: 2221, type: !18)
!2165 = !DILocalVariable(name: "binary_symbol", scope: !2157, file: !2, line: 2222, type: !18)
!2166 = distinct !DILocation(line: 2313, column: 17, scope: !2167, inlinedAt: !2137)
!2167 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 2312, column: 9)
!2168 = !DILocation(line: 2312, column: 9, scope: !2131, inlinedAt: !2137)
!2169 = !DILocation(line: 0, scope: !2157, inlinedAt: !2166)
!2170 = !DILocation(line: 2226, column: 9, scope: !2171, inlinedAt: !2166)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 2225, column: 3)
!2172 = !DILocation(line: 2227, column: 11, scope: !2173, inlinedAt: !2166)
!2173 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 2227, column: 9)
!2174 = !DILocation(line: 2227, column: 9, scope: !2171, inlinedAt: !2166)
!2175 = !DILocation(line: 2233, column: 11, scope: !2157, inlinedAt: !2166)
!2176 = !DILocation(line: 2232, column: 3, scope: !2171, inlinedAt: !2166)
!2177 = distinct !{!2177, !2178, !2179}
!2178 = !DILocation(line: 2224, column: 3, scope: !2157, inlinedAt: !2166)
!2179 = !DILocation(line: 2233, column: 14, scope: !2157, inlinedAt: !2166)
!2180 = !DILocation(line: 2235, column: 11, scope: !2157, inlinedAt: !2166)
!2181 = !DILocation(line: 2236, column: 9, scope: !2182, inlinedAt: !2166)
!2182 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 2236, column: 9)
!2183 = !DILocation(line: 2236, column: 44, scope: !2182, inlinedAt: !2166)
!2184 = !DILocation(line: 2236, column: 9, scope: !2157, inlinedAt: !2166)
!2185 = !DILocation(line: 2235, column: 3, scope: !2157, inlinedAt: !2166)
!2186 = distinct !{!2186, !2185, !2187}
!2187 = !DILocation(line: 2237, column: 29, scope: !2157, inlinedAt: !2166)
!2188 = !DILocation(line: 2313, column: 53, scope: !2167, inlinedAt: !2137)
!2189 = !DILocation(line: 2313, column: 14, scope: !2167, inlinedAt: !2137)
!2190 = !DILocation(line: 2313, column: 7, scope: !2167, inlinedAt: !2137)
!2191 = !DILocation(line: 0, scope: !2132, inlinedAt: !2137)
!2192 = !DILocation(line: 401, column: 88, scope: !2119)
!2193 = !DILocation(line: 403, column: 8, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 403, column: 8)
!2195 = !DILocation(line: 403, column: 8, scope: !2119)
!2196 = !DILocation(line: 406, column: 7, scope: !2001)
!2197 = !DILocation(line: 406, column: 14, scope: !2001)
!2198 = !DILocation(line: 412, column: 1, scope: !2001)
!2199 = !DISubprogram(name: "get4x4NeighbourBase", scope: !1741, file: !1741, line: 24, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DISubprogram(name: "biari_decode_symbol_eq_prob", scope: !1528, file: !1528, line: 130, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!42, !179}
!2203 = distinct !DISubprogram(name: "readB8_typeInfo_CABAC_p_slice", scope: !2, file: !2, line: 421, type: !1494, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2205 = !DILocalVariable(name: "currMB", arg: 1, scope: !2203, file: !2, line: 421, type: !300)
!2206 = !DILocalVariable(name: "se", arg: 2, scope: !2203, file: !2, line: 422, type: !1169)
!2207 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2203, file: !2, line: 423, type: !179)
!2208 = !DILocalVariable(name: "currSlice", scope: !2203, file: !2, line: 425, type: !653)
!2209 = !DILocalVariable(name: "act_sym", scope: !2203, file: !2, line: 426, type: !18)
!2210 = !DILocalVariable(name: "ctx", scope: !2203, file: !2, line: 428, type: !112)
!2211 = !DILocalVariable(name: "b8_type_contexts", scope: !2203, file: !2, line: 429, type: !193)
!2212 = !DILocation(line: 0, scope: !2203)
!2213 = !DILocation(line: 425, column: 30, scope: !2203)
!2214 = !DILocation(line: 428, column: 40, scope: !2203)
!2215 = !DILocation(line: 429, column: 38, scope: !2203)
!2216 = !DILocation(line: 431, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 431, column: 7)
!2218 = !DILocation(line: 431, column: 7, scope: !2203)
!2219 = !DILocation(line: 435, column: 38, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 435, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 434, column: 3)
!2222 = !DILocation(line: 435, column: 9, scope: !2220)
!2223 = !DILocation(line: 435, column: 9, scope: !2221)
!2224 = !DILocation(line: 437, column: 40, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 437, column: 11)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 436, column: 5)
!2227 = !DILocation(line: 437, column: 11, scope: !2225)
!2228 = !DILocation(line: 0, scope: !2217)
!2229 = !DILocation(line: 448, column: 7, scope: !2203)
!2230 = !DILocation(line: 448, column: 14, scope: !2203)
!2231 = !DILocation(line: 454, column: 1, scope: !2203)
!2232 = distinct !DISubprogram(name: "readB8_typeInfo_CABAC_b_slice", scope: !2, file: !2, line: 463, type: !1494, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2234 = !DILocalVariable(name: "currMB", arg: 1, scope: !2232, file: !2, line: 463, type: !300)
!2235 = !DILocalVariable(name: "se", arg: 2, scope: !2232, file: !2, line: 464, type: !1169)
!2236 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2232, file: !2, line: 465, type: !179)
!2237 = !DILocalVariable(name: "currSlice", scope: !2232, file: !2, line: 467, type: !653)
!2238 = !DILocalVariable(name: "act_sym", scope: !2232, file: !2, line: 468, type: !18)
!2239 = !DILocalVariable(name: "ctx", scope: !2232, file: !2, line: 470, type: !112)
!2240 = !DILocalVariable(name: "b8_type_contexts", scope: !2232, file: !2, line: 471, type: !193)
!2241 = !DILocation(line: 0, scope: !2232)
!2242 = !DILocation(line: 467, column: 30, scope: !2232)
!2243 = !DILocation(line: 470, column: 40, scope: !2232)
!2244 = !DILocation(line: 471, column: 37, scope: !2232)
!2245 = !DILocation(line: 473, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 473, column: 7)
!2247 = !DILocation(line: 473, column: 7, scope: !2232)
!2248 = !DILocation(line: 473, column: 52, scope: !2246)
!2249 = !DILocation(line: 475, column: 9, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 475, column: 9)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 474, column: 3)
!2252 = !DILocation(line: 475, column: 9, scope: !2251)
!2253 = !DILocation(line: 475, column: 54, scope: !2250)
!2254 = !DILocation(line: 477, column: 56, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 477, column: 11)
!2256 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 476, column: 5)
!2257 = !DILocation(line: 477, column: 11, scope: !2255)
!2258 = !DILocation(line: 0, scope: !2255)
!2259 = !DILocation(line: 477, column: 11, scope: !2256)
!2260 = !DILocation(line: 0, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 479, column: 13)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 478, column: 7)
!2263 = !DILocation(line: 479, column: 13, scope: !2262)
!2264 = !DILocation(line: 482, column: 15, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 480, column: 9)
!2266 = !DILocation(line: 488, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 486, column: 9)
!2268 = !DILocation(line: 490, column: 15, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 490, column: 15)
!2270 = !DILocation(line: 490, column: 15, scope: !2267)
!2271 = !DILocation(line: 497, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 495, column: 7)
!2273 = !DILocation(line: 499, column: 13, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2272, file: !2, line: 499, column: 13)
!2275 = !DILocation(line: 499, column: 13, scope: !2272)
!2276 = !DILocation(line: 505, column: 40, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 505, column: 11)
!2278 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 504, column: 5)
!2279 = !DILocation(line: 505, column: 11, scope: !2277)
!2280 = !DILocation(line: 0, scope: !2250)
!2281 = !DILocation(line: 510, column: 5, scope: !2251)
!2282 = !DILocation(line: 511, column: 3, scope: !2251)
!2283 = !DILocation(line: 0, scope: !2246)
!2284 = !DILocation(line: 517, column: 7, scope: !2232)
!2285 = !DILocation(line: 517, column: 14, scope: !2232)
!2286 = !DILocation(line: 523, column: 1, scope: !2232)
!2287 = distinct !DISubprogram(name: "readMB_transform_size_flag_CABAC", scope: !2, file: !2, line: 597, type: !1494, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2289 = !DILocalVariable(name: "currMB", arg: 1, scope: !2287, file: !2, line: 597, type: !300)
!2290 = !DILocalVariable(name: "se", arg: 2, scope: !2287, file: !2, line: 598, type: !1169)
!2291 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2287, file: !2, line: 599, type: !179)
!2292 = !DILocalVariable(name: "currSlice", scope: !2287, file: !2, line: 601, type: !653)
!2293 = !DILocalVariable(name: "ctx", scope: !2287, file: !2, line: 602, type: !151)
!2294 = !DILocalVariable(name: "b", scope: !2287, file: !2, line: 604, type: !18)
!2295 = !DILocalVariable(name: "a", scope: !2287, file: !2, line: 605, type: !18)
!2296 = !DILocalVariable(name: "act_ctx", scope: !2287, file: !2, line: 607, type: !18)
!2297 = !DILocalVariable(name: "act_sym", scope: !2287, file: !2, line: 608, type: !18)
!2298 = !DILocation(line: 0, scope: !2287)
!2299 = !DILocation(line: 601, column: 30, scope: !2287)
!2300 = !DILocation(line: 602, column: 40, scope: !2287)
!2301 = !DILocation(line: 604, column: 20, scope: !2287)
!2302 = !DILocation(line: 604, column: 28, scope: !2287)
!2303 = !DILocation(line: 604, column: 11, scope: !2287)
!2304 = !DILocation(line: 604, column: 58, scope: !2287)
!2305 = !DILocation(line: 605, column: 20, scope: !2287)
!2306 = !DILocation(line: 605, column: 28, scope: !2287)
!2307 = !DILocation(line: 605, column: 11, scope: !2287)
!2308 = !DILocation(line: 605, column: 60, scope: !2287)
!2309 = !DILocation(line: 607, column: 19, scope: !2287)
!2310 = !DILocation(line: 608, column: 74, scope: !2287)
!2311 = !DILocation(line: 608, column: 17, scope: !2287)
!2312 = !DILocation(line: 610, column: 7, scope: !2287)
!2313 = !DILocation(line: 610, column: 14, scope: !2287)
!2314 = !DILocation(line: 617, column: 1, scope: !2287)
!2315 = distinct !DISubprogram(name: "readMB_typeInfo_CABAC_i_slice", scope: !2, file: !2, line: 626, type: !1494, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2317 = !DILocalVariable(name: "currMB", arg: 1, scope: !2315, file: !2, line: 626, type: !300)
!2318 = !DILocalVariable(name: "se", arg: 2, scope: !2315, file: !2, line: 627, type: !1169)
!2319 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2315, file: !2, line: 628, type: !179)
!2320 = !DILocalVariable(name: "currSlice", scope: !2315, file: !2, line: 630, type: !653)
!2321 = !DILocalVariable(name: "ctx", scope: !2315, file: !2, line: 631, type: !112)
!2322 = !DILocalVariable(name: "a", scope: !2315, file: !2, line: 633, type: !18)
!2323 = !DILocalVariable(name: "b", scope: !2315, file: !2, line: 633, type: !18)
!2324 = !DILocalVariable(name: "act_ctx", scope: !2315, file: !2, line: 634, type: !18)
!2325 = !DILocalVariable(name: "act_sym", scope: !2315, file: !2, line: 635, type: !18)
!2326 = !DILocalVariable(name: "mode_sym", scope: !2315, file: !2, line: 636, type: !18)
!2327 = !DILocalVariable(name: "curr_mb_type", scope: !2315, file: !2, line: 637, type: !18)
!2328 = !DILocation(line: 0, scope: !2315)
!2329 = !DILocation(line: 630, column: 30, scope: !2315)
!2330 = !DILocation(line: 631, column: 40, scope: !2315)
!2331 = !DILocation(line: 639, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 639, column: 6)
!2333 = !DILocation(line: 639, column: 6, scope: !2315)
!2334 = !DILocation(line: 641, column: 17, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 641, column: 9)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 640, column: 3)
!2337 = !DILocation(line: 641, column: 23, scope: !2335)
!2338 = !DILocation(line: 641, column: 9, scope: !2336)
!2339 = !DILocation(line: 642, column: 30, scope: !2335)
!2340 = !DILocation(line: 642, column: 46, scope: !2335)
!2341 = !DILocation(line: 642, column: 7, scope: !2335)
!2342 = !DILocation(line: 644, column: 17, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 644, column: 9)
!2344 = !DILocation(line: 644, column: 25, scope: !2343)
!2345 = !DILocation(line: 644, column: 9, scope: !2336)
!2346 = !DILocation(line: 645, column: 32, scope: !2343)
!2347 = !DILocation(line: 645, column: 48, scope: !2343)
!2348 = !DILocation(line: 645, column: 7, scope: !2343)
!2349 = !DILocation(line: 647, column: 17, scope: !2336)
!2350 = !DILocation(line: 648, column: 68, scope: !2336)
!2351 = !DILocation(line: 648, column: 15, scope: !2336)
!2352 = !DILocation(line: 649, column: 9, scope: !2336)
!2353 = !DILocation(line: 649, column: 17, scope: !2336)
!2354 = !DILocation(line: 651, column: 16, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 651, column: 9)
!2356 = !DILocation(line: 651, column: 9, scope: !2336)
!2357 = !DILocation(line: 657, column: 18, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 656, column: 5)
!2359 = !DILocation(line: 658, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 658, column: 10)
!2361 = !DILocation(line: 658, column: 10, scope: !2358)
!2362 = !DILocation(line: 666, column: 74, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 663, column: 7)
!2364 = !DILocation(line: 666, column: 21, scope: !2363)
!2365 = !DILocation(line: 667, column: 28, scope: !2363)
!2366 = !DILocation(line: 667, column: 17, scope: !2363)
!2367 = !DILocation(line: 670, column: 74, scope: !2363)
!2368 = !DILocation(line: 670, column: 21, scope: !2363)
!2369 = !DILocation(line: 671, column: 21, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 671, column: 13)
!2371 = !DILocation(line: 671, column: 13, scope: !2363)
!2372 = !DILocation(line: 674, column: 75, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !2, line: 672, column: 9)
!2374 = !DILocation(line: 674, column: 22, scope: !2373)
!2375 = !DILocation(line: 676, column: 23, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 676, column: 15)
!2377 = !DILocation(line: 676, column: 15, scope: !2373)
!2378 = !DILocation(line: 693, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !2, line: 693, column: 9)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 691, column: 3)
!2381 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 690, column: 11)
!2382 = !DILocation(line: 693, column: 23, scope: !2379)
!2383 = !DILocation(line: 693, column: 9, scope: !2380)
!2384 = !DILocation(line: 694, column: 31, scope: !2379)
!2385 = !DILocation(line: 694, column: 39, scope: !2379)
!2386 = !DILocation(line: 694, column: 12, scope: !2379)
!2387 = !DILocation(line: 694, column: 7, scope: !2379)
!2388 = !DILocation(line: 696, column: 17, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2380, file: !2, line: 696, column: 9)
!2390 = !DILocation(line: 696, column: 25, scope: !2389)
!2391 = !DILocation(line: 696, column: 9, scope: !2380)
!2392 = !DILocation(line: 697, column: 33, scope: !2389)
!2393 = !DILocation(line: 697, column: 41, scope: !2389)
!2394 = !DILocation(line: 697, column: 12, scope: !2389)
!2395 = !DILocation(line: 697, column: 7, scope: !2389)
!2396 = !DILocation(line: 699, column: 17, scope: !2380)
!2397 = !DILocation(line: 700, column: 43, scope: !2380)
!2398 = !DILocation(line: 700, column: 68, scope: !2380)
!2399 = !DILocation(line: 700, column: 15, scope: !2380)
!2400 = !DILocation(line: 701, column: 9, scope: !2380)
!2401 = !DILocation(line: 701, column: 17, scope: !2380)
!2402 = !DILocation(line: 703, column: 16, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2380, file: !2, line: 703, column: 9)
!2404 = !DILocation(line: 703, column: 9, scope: !2380)
!2405 = !DILocation(line: 709, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 709, column: 11)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !2, line: 708, column: 5)
!2408 = !DILocation(line: 709, column: 25, scope: !2406)
!2409 = !DILocation(line: 709, column: 11, scope: !2407)
!2410 = !DILocation(line: 710, column: 33, scope: !2406)
!2411 = !DILocation(line: 710, column: 41, scope: !2406)
!2412 = !DILocation(line: 710, column: 14, scope: !2406)
!2413 = !DILocation(line: 710, column: 9, scope: !2406)
!2414 = !DILocation(line: 0, scope: !2380)
!2415 = !DILocation(line: 712, column: 19, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 712, column: 11)
!2417 = !DILocation(line: 712, column: 27, scope: !2416)
!2418 = !DILocation(line: 712, column: 11, scope: !2407)
!2419 = !DILocation(line: 713, column: 35, scope: !2416)
!2420 = !DILocation(line: 713, column: 43, scope: !2416)
!2421 = !DILocation(line: 713, column: 14, scope: !2416)
!2422 = !DILocation(line: 713, column: 9, scope: !2416)
!2423 = !DILocation(line: 715, column: 19, scope: !2407)
!2424 = !DILocation(line: 716, column: 70, scope: !2407)
!2425 = !DILocation(line: 716, column: 17, scope: !2407)
!2426 = !DILocation(line: 717, column: 19, scope: !2407)
!2427 = !DILocation(line: 719, column: 18, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 719, column: 11)
!2429 = !DILocation(line: 719, column: 11, scope: !2407)
!2430 = !DILocation(line: 725, column: 20, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 724, column: 7)
!2432 = !DILocation(line: 726, column: 21, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2431, file: !2, line: 726, column: 13)
!2434 = !DILocation(line: 726, column: 13, scope: !2431)
!2435 = !DILocation(line: 734, column: 76, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 731, column: 9)
!2437 = !DILocation(line: 734, column: 23, scope: !2436)
!2438 = !DILocation(line: 735, column: 30, scope: !2436)
!2439 = !DILocation(line: 735, column: 19, scope: !2436)
!2440 = !DILocation(line: 738, column: 76, scope: !2436)
!2441 = !DILocation(line: 738, column: 23, scope: !2436)
!2442 = !DILocation(line: 739, column: 23, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 739, column: 15)
!2444 = !DILocation(line: 739, column: 15, scope: !2436)
!2445 = !DILocation(line: 742, column: 77, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 740, column: 11)
!2447 = !DILocation(line: 742, column: 24, scope: !2446)
!2448 = !DILocation(line: 744, column: 25, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 744, column: 17)
!2450 = !DILocation(line: 744, column: 17, scope: !2446)
!2451 = !DILocation(line: 0, scope: !2332)
!2452 = !DILocation(line: 760, column: 7, scope: !2315)
!2453 = !DILocation(line: 760, column: 14, scope: !2315)
!2454 = !DILocation(line: 766, column: 1, scope: !2315)
!2455 = !DISubprogram(name: "biari_decode_final", scope: !1528, file: !1528, line: 131, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2456 = distinct !DISubprogram(name: "readMB_typeInfo_CABAC_p_slice", scope: !2, file: !2, line: 776, type: !1494, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2458 = !DILocalVariable(name: "currMB", arg: 1, scope: !2456, file: !2, line: 776, type: !300)
!2459 = !DILocalVariable(name: "se", arg: 2, scope: !2456, file: !2, line: 777, type: !1169)
!2460 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2456, file: !2, line: 778, type: !179)
!2461 = !DILocalVariable(name: "currSlice", scope: !2456, file: !2, line: 780, type: !653)
!2462 = !DILocalVariable(name: "ctx", scope: !2456, file: !2, line: 781, type: !112)
!2463 = !DILocalVariable(name: "act_ctx", scope: !2456, file: !2, line: 783, type: !18)
!2464 = !DILocalVariable(name: "act_sym", scope: !2456, file: !2, line: 784, type: !18)
!2465 = !DILocalVariable(name: "mode_sym", scope: !2456, file: !2, line: 785, type: !18)
!2466 = !DILocalVariable(name: "curr_mb_type", scope: !2456, file: !2, line: 786, type: !18)
!2467 = !DILocalVariable(name: "mb_type_contexts", scope: !2456, file: !2, line: 787, type: !193)
!2468 = !DILocation(line: 0, scope: !2456)
!2469 = !DILocation(line: 780, column: 30, scope: !2456)
!2470 = !DILocation(line: 781, column: 40, scope: !2456)
!2471 = !DILocation(line: 789, column: 36, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 789, column: 7)
!2473 = !DILocation(line: 789, column: 7, scope: !2472)
!2474 = !DILocation(line: 789, column: 7, scope: !2456)
!2475 = !DILocation(line: 798, column: 38, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 798, column: 9)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 797, column: 3)
!2478 = !DILocation(line: 798, column: 9, scope: !2476)
!2479 = !DILocation(line: 798, column: 9, scope: !2477)
!2480 = !DILocation(line: 800, column: 40, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 800, column: 11)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 799, column: 5)
!2483 = !DILocation(line: 800, column: 11, scope: !2481)
!2484 = !DILocation(line: 807, column: 40, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !2, line: 807, column: 11)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 806, column: 5)
!2487 = !DILocation(line: 807, column: 11, scope: !2485)
!2488 = !DILocation(line: 791, column: 38, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 791, column: 9)
!2490 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 790, column: 3)
!2491 = !DILocation(line: 791, column: 9, scope: !2489)
!2492 = !DILocation(line: 814, column: 7, scope: !2456)
!2493 = !DILocation(line: 820, column: 16, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 819, column: 3)
!2495 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 814, column: 7)
!2496 = !DILocation(line: 821, column: 17, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 821, column: 9)
!2498 = !DILocation(line: 821, column: 9, scope: !2494)
!2499 = !DILocation(line: 828, column: 64, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 826, column: 5)
!2501 = !DILocation(line: 828, column: 19, scope: !2500)
!2502 = !DILocation(line: 829, column: 26, scope: !2500)
!2503 = !DILocation(line: 829, column: 15, scope: !2500)
!2504 = !DILocation(line: 833, column: 63, scope: !2500)
!2505 = !DILocation(line: 833, column: 18, scope: !2500)
!2506 = !DILocation(line: 834, column: 20, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 834, column: 11)
!2508 = !DILocation(line: 834, column: 11, scope: !2500)
!2509 = !DILocation(line: 837, column: 20, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 835, column: 7)
!2511 = !DILocation(line: 838, column: 22, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 838, column: 13)
!2513 = !DILocation(line: 838, column: 13, scope: !2510)
!2514 = !DILocation(line: 0, scope: !2500)
!2515 = !DILocation(line: 844, column: 63, scope: !2500)
!2516 = !DILocation(line: 844, column: 18, scope: !2500)
!2517 = !DILocation(line: 845, column: 26, scope: !2500)
!2518 = !DILocation(line: 845, column: 15, scope: !2500)
!2519 = !DILocation(line: 846, column: 18, scope: !2500)
!2520 = !DILocation(line: 847, column: 15, scope: !2500)
!2521 = !DILocation(line: 0, scope: !2495)
!2522 = !DILocation(line: 852, column: 7, scope: !2456)
!2523 = !DILocation(line: 852, column: 14, scope: !2456)
!2524 = !DILocation(line: 858, column: 1, scope: !2456)
!2525 = distinct !DISubprogram(name: "readMB_typeInfo_CABAC_b_slice", scope: !2, file: !2, line: 868, type: !1494, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2527 = !DILocalVariable(name: "currMB", arg: 1, scope: !2525, file: !2, line: 868, type: !300)
!2528 = !DILocalVariable(name: "se", arg: 2, scope: !2525, file: !2, line: 869, type: !1169)
!2529 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2525, file: !2, line: 870, type: !179)
!2530 = !DILocalVariable(name: "currSlice", scope: !2525, file: !2, line: 872, type: !653)
!2531 = !DILocalVariable(name: "ctx", scope: !2525, file: !2, line: 873, type: !112)
!2532 = !DILocalVariable(name: "a", scope: !2525, file: !2, line: 875, type: !18)
!2533 = !DILocalVariable(name: "b", scope: !2525, file: !2, line: 875, type: !18)
!2534 = !DILocalVariable(name: "act_ctx", scope: !2525, file: !2, line: 876, type: !18)
!2535 = !DILocalVariable(name: "act_sym", scope: !2525, file: !2, line: 877, type: !18)
!2536 = !DILocalVariable(name: "mode_sym", scope: !2525, file: !2, line: 878, type: !18)
!2537 = !DILocalVariable(name: "curr_mb_type", scope: !2525, file: !2, line: 879, type: !18)
!2538 = !DILocalVariable(name: "mb_type_contexts", scope: !2525, file: !2, line: 880, type: !193)
!2539 = !DILocation(line: 0, scope: !2525)
!2540 = !DILocation(line: 872, column: 30, scope: !2525)
!2541 = !DILocation(line: 873, column: 40, scope: !2525)
!2542 = !DILocation(line: 880, column: 37, scope: !2525)
!2543 = !DILocation(line: 882, column: 15, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 882, column: 7)
!2545 = !DILocation(line: 882, column: 21, scope: !2544)
!2546 = !DILocation(line: 882, column: 7, scope: !2525)
!2547 = !DILocation(line: 883, column: 29, scope: !2544)
!2548 = !DILocation(line: 883, column: 37, scope: !2544)
!2549 = !DILocation(line: 883, column: 10, scope: !2544)
!2550 = !DILocation(line: 883, column: 5, scope: !2544)
!2551 = !DILocation(line: 885, column: 15, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 885, column: 7)
!2553 = !DILocation(line: 885, column: 23, scope: !2552)
!2554 = !DILocation(line: 885, column: 7, scope: !2525)
!2555 = !DILocation(line: 886, column: 31, scope: !2552)
!2556 = !DILocation(line: 886, column: 39, scope: !2552)
!2557 = !DILocation(line: 886, column: 10, scope: !2552)
!2558 = !DILocation(line: 886, column: 5, scope: !2552)
!2559 = !DILocation(line: 890, column: 37, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 890, column: 7)
!2561 = !DILocation(line: 890, column: 7, scope: !2560)
!2562 = !DILocation(line: 890, column: 7, scope: !2525)
!2563 = !DILocation(line: 892, column: 39, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 892, column: 9)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !2, line: 891, column: 3)
!2566 = !DILocation(line: 892, column: 9, scope: !2564)
!2567 = !DILocation(line: 892, column: 9, scope: !2565)
!2568 = !DILocation(line: 894, column: 41, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 894, column: 11)
!2570 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 893, column: 5)
!2571 = !DILocation(line: 894, column: 11, scope: !2569)
!2572 = !DILocation(line: 0, scope: !2569)
!2573 = !DILocation(line: 894, column: 11, scope: !2570)
!2574 = !DILocation(line: 897, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 895, column: 7)
!2576 = !DILocation(line: 899, column: 13, scope: !2575)
!2577 = !DILocation(line: 901, column: 13, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 901, column: 13)
!2579 = !DILocation(line: 901, column: 13, scope: !2575)
!2580 = !DILocation(line: 904, column: 18, scope: !2575)
!2581 = !DILocation(line: 907, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 906, column: 18)
!2583 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 904, column: 18)
!2584 = !DILocation(line: 919, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 917, column: 7)
!2586 = !DILocation(line: 921, column: 13, scope: !2585)
!2587 = !DILocation(line: 923, column: 13, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 923, column: 13)
!2589 = !DILocation(line: 923, column: 13, scope: !2585)
!2590 = !DILocation(line: 929, column: 41, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 929, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 928, column: 5)
!2593 = !DILocation(line: 929, column: 11, scope: !2591)
!2594 = !DILocation(line: 910, column: 23, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 910, column: 15)
!2596 = distinct !DILexicalBlock(scope: !2582, file: !2, line: 909, column: 9)
!2597 = !DILocation(line: 910, column: 15, scope: !2596)
!2598 = !DILocation(line: 912, column: 15, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 912, column: 15)
!2600 = !DILocation(line: 912, column: 15, scope: !2596)
!2601 = !DILocation(line: 941, column: 15, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 941, column: 7)
!2603 = !DILocation(line: 941, column: 7, scope: !2525)
!2604 = !DILocation(line: 947, column: 16, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 946, column: 3)
!2606 = !DILocation(line: 948, column: 18, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !2, line: 948, column: 9)
!2608 = !DILocation(line: 948, column: 9, scope: !2605)
!2609 = !DILocation(line: 956, column: 64, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 953, column: 5)
!2611 = !DILocation(line: 956, column: 19, scope: !2610)
!2612 = !DILocation(line: 957, column: 26, scope: !2610)
!2613 = !DILocation(line: 957, column: 15, scope: !2610)
!2614 = !DILocation(line: 961, column: 63, scope: !2610)
!2615 = !DILocation(line: 961, column: 18, scope: !2610)
!2616 = !DILocation(line: 962, column: 20, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2610, file: !2, line: 962, column: 11)
!2618 = !DILocation(line: 962, column: 11, scope: !2610)
!2619 = !DILocation(line: 965, column: 20, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 963, column: 7)
!2621 = !DILocation(line: 966, column: 22, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 966, column: 13)
!2623 = !DILocation(line: 966, column: 13, scope: !2620)
!2624 = !DILocation(line: 0, scope: !2610)
!2625 = !DILocation(line: 972, column: 63, scope: !2610)
!2626 = !DILocation(line: 972, column: 18, scope: !2610)
!2627 = !DILocation(line: 973, column: 26, scope: !2610)
!2628 = !DILocation(line: 973, column: 15, scope: !2610)
!2629 = !DILocation(line: 974, column: 18, scope: !2610)
!2630 = !DILocation(line: 975, column: 15, scope: !2610)
!2631 = !DILocation(line: 0, scope: !2602)
!2632 = !DILocation(line: 980, column: 7, scope: !2525)
!2633 = !DILocation(line: 980, column: 14, scope: !2525)
!2634 = !DILocation(line: 986, column: 1, scope: !2525)
!2635 = distinct !DISubprogram(name: "readIntraPredMode_CABAC", scope: !2, file: !2, line: 995, type: !1494, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642}
!2637 = !DILocalVariable(name: "currMB", arg: 1, scope: !2635, file: !2, line: 995, type: !300)
!2638 = !DILocalVariable(name: "se", arg: 2, scope: !2635, file: !2, line: 996, type: !1169)
!2639 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2635, file: !2, line: 997, type: !179)
!2640 = !DILocalVariable(name: "currSlice", scope: !2635, file: !2, line: 999, type: !653)
!2641 = !DILocalVariable(name: "ctx", scope: !2635, file: !2, line: 1000, type: !151)
!2642 = !DILocalVariable(name: "act_sym", scope: !2635, file: !2, line: 1002, type: !18)
!2643 = !DILocation(line: 0, scope: !2635)
!2644 = !DILocation(line: 999, column: 30, scope: !2635)
!2645 = !DILocation(line: 1000, column: 45, scope: !2635)
!2646 = !DILocation(line: 1002, column: 50, scope: !2635)
!2647 = !DILocation(line: 1002, column: 17, scope: !2635)
!2648 = !DILocation(line: 1005, column: 15, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 1005, column: 7)
!2650 = !DILocation(line: 1005, column: 7, scope: !2635)
!2651 = !DILocation(line: 1006, column: 9, scope: !2649)
!2652 = !DILocation(line: 1006, column: 16, scope: !2649)
!2653 = !DILocation(line: 1006, column: 5, scope: !2649)
!2654 = !DILocation(line: 1009, column: 66, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 1008, column: 3)
!2656 = !DILocation(line: 1009, column: 20, scope: !2655)
!2657 = !DILocation(line: 1009, column: 9, scope: !2655)
!2658 = !DILocation(line: 1009, column: 17, scope: !2655)
!2659 = !DILocation(line: 1010, column: 20, scope: !2655)
!2660 = !DILocation(line: 1010, column: 71, scope: !2655)
!2661 = !DILocation(line: 1010, column: 16, scope: !2655)
!2662 = !DILocation(line: 1011, column: 20, scope: !2655)
!2663 = !DILocation(line: 1011, column: 71, scope: !2655)
!2664 = !DILocation(line: 1011, column: 16, scope: !2655)
!2665 = !DILocation(line: 1018, column: 1, scope: !2635)
!2666 = distinct !DISubprogram(name: "readRefFrame_CABAC", scope: !2, file: !2, line: 1026, type: !1494, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2687}
!2668 = !DILocalVariable(name: "currMB", arg: 1, scope: !2666, file: !2, line: 1026, type: !300)
!2669 = !DILocalVariable(name: "se", arg: 2, scope: !2666, file: !2, line: 1027, type: !1169)
!2670 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2666, file: !2, line: 1028, type: !179)
!2671 = !DILocalVariable(name: "currSlice", scope: !2666, file: !2, line: 1030, type: !653)
!2672 = !DILocalVariable(name: "p_Vid", scope: !2666, file: !2, line: 1031, type: !981)
!2673 = !DILocalVariable(name: "dec_picture", scope: !2666, file: !2, line: 1032, type: !824)
!2674 = !DILocalVariable(name: "ctx", scope: !2666, file: !2, line: 1033, type: !112)
!2675 = !DILocalVariable(name: "neighborMB", scope: !2666, file: !2, line: 1034, type: !300)
!2676 = !DILocalVariable(name: "addctx", scope: !2666, file: !2, line: 1036, type: !18)
!2677 = !DILocalVariable(name: "a", scope: !2666, file: !2, line: 1037, type: !18)
!2678 = !DILocalVariable(name: "b", scope: !2666, file: !2, line: 1037, type: !18)
!2679 = !DILocalVariable(name: "act_ctx", scope: !2666, file: !2, line: 1038, type: !18)
!2680 = !DILocalVariable(name: "act_sym", scope: !2666, file: !2, line: 1039, type: !18)
!2681 = !DILocalVariable(name: "list", scope: !2666, file: !2, line: 1040, type: !18)
!2682 = !DILocalVariable(name: "block_a", scope: !2666, file: !2, line: 1042, type: !1024)
!2683 = !DILocalVariable(name: "block_b", scope: !2666, file: !2, line: 1042, type: !1024)
!2684 = !DILocalVariable(name: "b8b", scope: !2685, file: !2, line: 1049, type: !18)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2, line: 1048, column: 3)
!2686 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1047, column: 7)
!2687 = !DILocalVariable(name: "b8a", scope: !2688, file: !2, line: 1062, type: !18)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 1061, column: 3)
!2689 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1060, column: 7)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 0, scope: !2666)
!2692 = distinct !DIAssignID()
!2693 = !DILocation(line: 1030, column: 30, scope: !2666)
!2694 = !DILocation(line: 1031, column: 36, scope: !2666)
!2695 = !DILocation(line: 1032, column: 45, scope: !2666)
!2696 = !DILocation(line: 1033, column: 40, scope: !2666)
!2697 = !DILocation(line: 1040, column: 20, scope: !2666)
!2698 = !DILocation(line: 1042, column: 3, scope: !2666)
!2699 = !DILocation(line: 1044, column: 35, scope: !2666)
!2700 = !DILocation(line: 1044, column: 46, scope: !2666)
!2701 = !DILocation(line: 1044, column: 59, scope: !2666)
!2702 = !DILocation(line: 1044, column: 82, scope: !2666)
!2703 = !DILocation(line: 1044, column: 3, scope: !2666)
!2704 = !DILocation(line: 1045, column: 35, scope: !2666)
!2705 = !DILocation(line: 1045, column: 59, scope: !2666)
!2706 = !DILocation(line: 1045, column: 70, scope: !2666)
!2707 = !DILocation(line: 1045, column: 3, scope: !2666)
!2708 = !DILocation(line: 1047, column: 15, scope: !2686)
!2709 = !DILocation(line: 1047, column: 7, scope: !2686)
!2710 = !DILocation(line: 1047, column: 7, scope: !2666)
!2711 = !DILocation(line: 1049, column: 23, scope: !2685)
!2712 = !DILocation(line: 1049, column: 25, scope: !2685)
!2713 = !DILocation(line: 1049, column: 31, scope: !2685)
!2714 = !DILocation(line: 1049, column: 48, scope: !2685)
!2715 = !DILocation(line: 1049, column: 50, scope: !2685)
!2716 = !DILocation(line: 1049, column: 38, scope: !2685)
!2717 = !DILocation(line: 0, scope: !2685)
!2718 = !DILocation(line: 1050, column: 30, scope: !2685)
!2719 = !DILocation(line: 1050, column: 46, scope: !2685)
!2720 = !DILocation(line: 1050, column: 19, scope: !2685)
!2721 = !DILocation(line: 1051, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2685, file: !2, line: 1051, column: 9)
!2723 = !DILocation(line: 1051, column: 40, scope: !2722)
!2724 = !DILocation(line: 1051, column: 43, scope: !2722)
!2725 = !DILocation(line: 1051, column: 65, scope: !2722)
!2726 = !DILocation(line: 1051, column: 81, scope: !2722)
!2727 = !DILocation(line: 1051, column: 69, scope: !2722)
!2728 = !DILocation(line: 1051, column: 92, scope: !2722)
!2729 = !DILocation(line: 1051, column: 96, scope: !2722)
!2730 = !DILocation(line: 1051, column: 111, scope: !2722)
!2731 = !DILocation(line: 1051, column: 99, scope: !2722)
!2732 = !DILocation(line: 1051, column: 122, scope: !2722)
!2733 = !DILocation(line: 1051, column: 9, scope: !2685)
!2734 = !DILocation(line: 1053, column: 22, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 1053, column: 11)
!2736 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1052, column: 5)
!2737 = !DILocation(line: 1053, column: 11, scope: !2735)
!2738 = !DILocation(line: 1053, column: 40, scope: !2735)
!2739 = !DILocation(line: 1053, column: 52, scope: !2735)
!2740 = !DILocation(line: 1053, column: 61, scope: !2735)
!2741 = !DILocation(line: 1053, column: 71, scope: !2735)
!2742 = !DILocation(line: 1053, column: 87, scope: !2735)
!2743 = !DILocation(line: 1053, column: 96, scope: !2735)
!2744 = !DILocation(line: 1053, column: 11, scope: !2736)
!2745 = !DILocation(line: 0, scope: !2735)
!2746 = !DILocation(line: 1060, column: 15, scope: !2689)
!2747 = !DILocation(line: 1037, column: 16, scope: !2666)
!2748 = !DILocation(line: 1060, column: 7, scope: !2689)
!2749 = !DILocation(line: 1060, column: 7, scope: !2666)
!2750 = !DILocation(line: 1062, column: 23, scope: !2688)
!2751 = !DILocation(line: 1062, column: 25, scope: !2688)
!2752 = !DILocation(line: 1062, column: 31, scope: !2688)
!2753 = !DILocation(line: 1062, column: 48, scope: !2688)
!2754 = !DILocation(line: 1062, column: 50, scope: !2688)
!2755 = !DILocation(line: 1062, column: 38, scope: !2688)
!2756 = !DILocation(line: 0, scope: !2688)
!2757 = !DILocation(line: 1063, column: 30, scope: !2688)
!2758 = !DILocation(line: 1063, column: 46, scope: !2688)
!2759 = !DILocation(line: 1063, column: 19, scope: !2688)
!2760 = !DILocation(line: 1064, column: 24, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2688, file: !2, line: 1064, column: 9)
!2762 = !DILocation(line: 1064, column: 39, scope: !2761)
!2763 = !DILocation(line: 1064, column: 42, scope: !2761)
!2764 = !DILocation(line: 1064, column: 64, scope: !2761)
!2765 = !DILocation(line: 1064, column: 80, scope: !2761)
!2766 = !DILocation(line: 1064, column: 68, scope: !2761)
!2767 = !DILocation(line: 1064, column: 91, scope: !2761)
!2768 = !DILocation(line: 1064, column: 95, scope: !2761)
!2769 = !DILocation(line: 1064, column: 110, scope: !2761)
!2770 = !DILocation(line: 1064, column: 98, scope: !2761)
!2771 = !DILocation(line: 1064, column: 121, scope: !2761)
!2772 = !DILocation(line: 1064, column: 9, scope: !2688)
!2773 = !DILocation(line: 1066, column: 22, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1066, column: 11)
!2775 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 1065, column: 5)
!2776 = !DILocation(line: 1066, column: 11, scope: !2774)
!2777 = !DILocation(line: 1066, column: 40, scope: !2774)
!2778 = !DILocation(line: 1066, column: 52, scope: !2774)
!2779 = !DILocation(line: 1066, column: 61, scope: !2774)
!2780 = !DILocation(line: 1066, column: 71, scope: !2774)
!2781 = !DILocation(line: 1066, column: 87, scope: !2774)
!2782 = !DILocation(line: 1066, column: 96, scope: !2774)
!2783 = !DILocation(line: 1066, column: 11, scope: !2775)
!2784 = !DILocation(line: 0, scope: !2774)
!2785 = !DILocation(line: 1037, column: 9, scope: !2666)
!2786 = !DILocation(line: 1073, column: 15, scope: !2666)
!2787 = !DILocation(line: 1074, column: 7, scope: !2666)
!2788 = !DILocation(line: 1074, column: 15, scope: !2666)
!2789 = !DILocation(line: 1076, column: 45, scope: !2666)
!2790 = !DILocation(line: 1076, column: 69, scope: !2666)
!2791 = !DILocation(line: 1076, column: 13, scope: !2666)
!2792 = !DILocation(line: 1078, column: 15, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2666, file: !2, line: 1078, column: 7)
!2794 = !DILocation(line: 1078, column: 7, scope: !2666)
!2795 = !DILocation(line: 1081, column: 68, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1079, column: 3)
!2797 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !2798, file: !2, line: 2150, type: !179)
!2798 = distinct !DISubprogram(name: "unary_bin_decode", scope: !2, file: !2, line: 2150, type: !2799, scopeLine: 2153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!42, !179, !192, !18}
!2801 = !{!2797, !2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "ctx", arg: 2, scope: !2798, file: !2, line: 2151, type: !192)
!2803 = !DILocalVariable(name: "ctx_offset", arg: 3, scope: !2798, file: !2, line: 2152, type: !18)
!2804 = !DILocalVariable(name: "symbol", scope: !2798, file: !2, line: 2154, type: !42)
!2805 = !DILocalVariable(name: "l", scope: !2806, file: !2, line: 2160, type: !42)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 2159, column: 3)
!2807 = distinct !DILexicalBlock(scope: !2798, file: !2, line: 2156, column: 7)
!2808 = !DILocation(line: 0, scope: !2798, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1081, column: 15, scope: !2796)
!2810 = !DILocation(line: 2154, column: 25, scope: !2798, inlinedAt: !2809)
!2811 = !DILocation(line: 2156, column: 14, scope: !2807, inlinedAt: !2809)
!2812 = !DILocation(line: 2156, column: 7, scope: !2798, inlinedAt: !2809)
!2813 = !DILocation(line: 2161, column: 9, scope: !2806, inlinedAt: !2809)
!2814 = !DILocation(line: 2163, column: 5, scope: !2806, inlinedAt: !2809)
!2815 = !DILocation(line: 0, scope: !2806, inlinedAt: !2809)
!2816 = !DILocation(line: 2165, column: 11, scope: !2817, inlinedAt: !2809)
!2817 = distinct !DILexicalBlock(scope: !2806, file: !2, line: 2164, column: 5)
!2818 = !DILocation(line: 2166, column: 7, scope: !2817, inlinedAt: !2809)
!2819 = !DILocation(line: 2168, column: 14, scope: !2806, inlinedAt: !2809)
!2820 = !DILocation(line: 2167, column: 5, scope: !2817, inlinedAt: !2809)
!2821 = distinct !{!2821, !2814, !2822}
!2822 = !DILocation(line: 2168, column: 19, scope: !2806, inlinedAt: !2809)
!2823 = !DILocation(line: 1082, column: 5, scope: !2796)
!2824 = !DILocation(line: 1084, column: 7, scope: !2666)
!2825 = !DILocation(line: 1084, column: 14, scope: !2666)
!2826 = !DILocation(line: 1091, column: 1, scope: !2666)
!2827 = !DISubprogram(name: "get4x4Neighbour", scope: !1741, file: !1741, line: 23, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2828 = distinct !DISubprogram(name: "read_dQuant_CABAC", scope: !2, file: !2, line: 1101, type: !1494, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2830 = !DILocalVariable(name: "currMB", arg: 1, scope: !2828, file: !2, line: 1101, type: !300)
!2831 = !DILocalVariable(name: "se", arg: 2, scope: !2828, file: !2, line: 1102, type: !1169)
!2832 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2828, file: !2, line: 1103, type: !179)
!2833 = !DILocalVariable(name: "currSlice", scope: !2828, file: !2, line: 1105, type: !653)
!2834 = !DILocalVariable(name: "ctx", scope: !2828, file: !2, line: 1106, type: !112)
!2835 = !DILocalVariable(name: "dquant", scope: !2828, file: !2, line: 1107, type: !191)
!2836 = !DILocalVariable(name: "act_ctx", scope: !2828, file: !2, line: 1108, type: !18)
!2837 = !DILocalVariable(name: "act_sym", scope: !2828, file: !2, line: 1109, type: !18)
!2838 = !DILocation(line: 0, scope: !2828)
!2839 = !DILocation(line: 1105, column: 30, scope: !2828)
!2840 = !DILocation(line: 1106, column: 40, scope: !2828)
!2841 = !DILocation(line: 1107, column: 22, scope: !2828)
!2842 = !DILocation(line: 1108, column: 30, scope: !2828)
!2843 = !DILocation(line: 1108, column: 42, scope: !2828)
!2844 = !DILocation(line: 1109, column: 49, scope: !2828)
!2845 = !DILocation(line: 1109, column: 67, scope: !2828)
!2846 = !DILocation(line: 1109, column: 17, scope: !2828)
!2847 = !DILocation(line: 1111, column: 15, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 1111, column: 7)
!2849 = !DILocation(line: 1111, column: 7, scope: !2828)
!2850 = !DILocation(line: 1114, column: 62, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !2, line: 1112, column: 3)
!2852 = !DILocation(line: 0, scope: !2798, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1114, column: 15, scope: !2851)
!2854 = !DILocation(line: 2154, column: 25, scope: !2798, inlinedAt: !2853)
!2855 = !DILocation(line: 2156, column: 14, scope: !2807, inlinedAt: !2853)
!2856 = !DILocation(line: 2156, column: 7, scope: !2798, inlinedAt: !2853)
!2857 = !DILocation(line: 2161, column: 9, scope: !2806, inlinedAt: !2853)
!2858 = !DILocation(line: 2163, column: 5, scope: !2806, inlinedAt: !2853)
!2859 = !DILocation(line: 0, scope: !2806, inlinedAt: !2853)
!2860 = !DILocation(line: 2165, column: 11, scope: !2817, inlinedAt: !2853)
!2861 = !DILocation(line: 2166, column: 7, scope: !2817, inlinedAt: !2853)
!2862 = !DILocation(line: 2168, column: 14, scope: !2806, inlinedAt: !2853)
!2863 = !DILocation(line: 2167, column: 5, scope: !2817, inlinedAt: !2853)
!2864 = distinct !{!2864, !2858, !2865}
!2865 = !DILocation(line: 2168, column: 19, scope: !2806, inlinedAt: !2853)
!2866 = !DILocation(line: 1116, column: 24, scope: !2851)
!2867 = !DILocation(line: 1116, column: 29, scope: !2851)
!2868 = !DILocation(line: 1116, column: 13, scope: !2851)
!2869 = !DILocation(line: 1117, column: 24, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 1117, column: 8)
!2871 = !DILocation(line: 1117, column: 8, scope: !2851)
!2872 = !DILocation(line: 1118, column: 17, scope: !2870)
!2873 = !DILocation(line: 1118, column: 7, scope: !2870)
!2874 = !DILocation(line: 0, scope: !2848)
!2875 = !DILocation(line: 1123, column: 26, scope: !2828)
!2876 = !DILocation(line: 1123, column: 28, scope: !2828)
!2877 = !DILocation(line: 1129, column: 1, scope: !2828)
!2878 = distinct !DISubprogram(name: "read_CBP_CABAC", scope: !2, file: !2, line: 1137, type: !1494, scopeLine: 1140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2880 = !DILocalVariable(name: "currMB", arg: 1, scope: !2878, file: !2, line: 1137, type: !300)
!2881 = !DILocalVariable(name: "se", arg: 2, scope: !2878, file: !2, line: 1138, type: !1169)
!2882 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !2878, file: !2, line: 1139, type: !179)
!2883 = !DILocalVariable(name: "p_Vid", scope: !2878, file: !2, line: 1141, type: !981)
!2884 = !DILocalVariable(name: "dec_picture", scope: !2878, file: !2, line: 1142, type: !824)
!2885 = !DILocalVariable(name: "currSlice", scope: !2878, file: !2, line: 1143, type: !653)
!2886 = !DILocalVariable(name: "ctx", scope: !2878, file: !2, line: 1144, type: !151)
!2887 = !DILocalVariable(name: "neighborMB", scope: !2878, file: !2, line: 1145, type: !300)
!2888 = !DILocalVariable(name: "mb_x", scope: !2878, file: !2, line: 1147, type: !18)
!2889 = !DILocalVariable(name: "mb_y", scope: !2878, file: !2, line: 1147, type: !18)
!2890 = !DILocalVariable(name: "a", scope: !2878, file: !2, line: 1148, type: !18)
!2891 = !DILocalVariable(name: "b", scope: !2878, file: !2, line: 1148, type: !18)
!2892 = !DILocalVariable(name: "curr_cbp_ctx", scope: !2878, file: !2, line: 1149, type: !18)
!2893 = !DILocalVariable(name: "cbp", scope: !2878, file: !2, line: 1150, type: !18)
!2894 = !DILocalVariable(name: "cbp_bit", scope: !2878, file: !2, line: 1151, type: !18)
!2895 = !DILocalVariable(name: "mask", scope: !2878, file: !2, line: 1152, type: !18)
!2896 = !DILocalVariable(name: "block_a", scope: !2878, file: !2, line: 1153, type: !1024)
!2897 = distinct !DIAssignID()
!2898 = !DILocation(line: 0, scope: !2878)
!2899 = !DILocation(line: 1141, column: 36, scope: !2878)
!2900 = !DILocation(line: 1142, column: 42, scope: !2878)
!2901 = !DILocation(line: 1142, column: 51, scope: !2878)
!2902 = !DILocation(line: 1144, column: 41, scope: !2878)
!2903 = !DILocation(line: 1153, column: 3, scope: !2878)
!2904 = !DILocation(line: 1160, column: 28, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !2, line: 1159, column: 5)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 1158, column: 9)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !2, line: 1157, column: 3)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !2, line: 1156, column: 3)
!2909 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1156, column: 3)
!2910 = !DILocation(line: 1168, column: 13, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !2, line: 1167, column: 7)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1166, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2, line: 1165, column: 5)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !2, line: 1164, column: 5)
!2915 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 1164, column: 5)
!2916 = !DILocation(line: 1170, column: 26, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !2, line: 1170, column: 14)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2, line: 1169, column: 9)
!2919 = distinct !DILexicalBlock(scope: !2911, file: !2, line: 1168, column: 13)
!2920 = !DILocation(line: 1170, column: 33, scope: !2917)
!2921 = !DILocation(line: 1170, column: 14, scope: !2918)
!2922 = !DILocation(line: 1171, column: 33, scope: !2917)
!2923 = !DILocation(line: 1171, column: 18, scope: !2917)
!2924 = !DILocation(line: 1171, column: 13, scope: !2917)
!2925 = !DILocation(line: 0, scope: !2907)
!2926 = !DILocation(line: 1179, column: 9, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !2, line: 1178, column: 7)
!2928 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1177, column: 11)
!2929 = !DILocation(line: 1180, column: 21, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !2, line: 1180, column: 13)
!2931 = !DILocation(line: 1180, column: 13, scope: !2930)
!2932 = !DILocation(line: 1180, column: 13, scope: !2927)
!2933 = !DILocation(line: 1182, column: 25, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2, line: 1182, column: 14)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !2, line: 1181, column: 9)
!2936 = !DILocation(line: 1182, column: 41, scope: !2934)
!2937 = !DILocation(line: 1182, column: 14, scope: !2934)
!2938 = !DILocation(line: 1182, column: 50, scope: !2934)
!2939 = !DILocation(line: 1182, column: 57, scope: !2934)
!2940 = !DILocation(line: 1182, column: 14, scope: !2935)
!2941 = !DILocation(line: 1185, column: 57, scope: !2934)
!2942 = !DILocation(line: 1185, column: 79, scope: !2934)
!2943 = !DILocation(line: 1185, column: 80, scope: !2934)
!2944 = !DILocation(line: 1185, column: 69, scope: !2934)
!2945 = !DILocation(line: 1185, column: 65, scope: !2934)
!2946 = !DILocation(line: 1185, column: 61, scope: !2934)
!2947 = !DILocation(line: 1185, column: 89, scope: !2934)
!2948 = !DILocation(line: 1185, column: 18, scope: !2934)
!2949 = !DILocation(line: 0, scope: !2928)
!2950 = !DILocation(line: 1193, column: 24, scope: !2913)
!2951 = !DILocation(line: 1195, column: 66, scope: !2913)
!2952 = !DILocation(line: 1195, column: 17, scope: !2913)
!2953 = !DILocation(line: 1196, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1196, column: 11)
!2955 = !DILocation(line: 1196, column: 11, scope: !2913)
!2956 = !DILocation(line: 1191, column: 15, scope: !2928)
!2957 = !DILocation(line: 1175, column: 15, scope: !2912)
!2958 = !DILocation(line: 1201, column: 21, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1201, column: 7)
!2960 = !DILocation(line: 1201, column: 50, scope: !2959)
!2961 = !DILocation(line: 1206, column: 26, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 1202, column: 3)
!2963 = !DILocation(line: 1207, column: 20, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 1207, column: 9)
!2965 = !DILocation(line: 1207, column: 9, scope: !2962)
!2966 = !DILocation(line: 1209, column: 23, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !2, line: 1209, column: 11)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 1208, column: 5)
!2969 = !DILocation(line: 1209, column: 30, scope: !2967)
!2970 = !DILocation(line: 1209, column: 37, scope: !2967)
!2971 = !DILocation(line: 1209, column: 53, scope: !2967)
!2972 = !DILocation(line: 1209, column: 57, scope: !2967)
!2973 = !DILocation(line: 1209, column: 11, scope: !2968)
!2974 = !DILocation(line: 1210, column: 9, scope: !2967)
!2975 = !DILocation(line: 0, scope: !2962)
!2976 = !DILocation(line: 1214, column: 26, scope: !2962)
!2977 = !DILocation(line: 1215, column: 20, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 1215, column: 9)
!2979 = !DILocation(line: 1215, column: 9, scope: !2962)
!2980 = !DILocation(line: 1217, column: 23, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !2, line: 1217, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1216, column: 5)
!2983 = !DILocation(line: 1217, column: 30, scope: !2981)
!2984 = !DILocation(line: 1217, column: 37, scope: !2981)
!2985 = !DILocation(line: 1217, column: 53, scope: !2981)
!2986 = !DILocation(line: 1217, column: 57, scope: !2981)
!2987 = !DILocation(line: 1217, column: 11, scope: !2982)
!2988 = !DILocation(line: 1218, column: 9, scope: !2981)
!2989 = !DILocation(line: 1221, column: 22, scope: !2962)
!2990 = !DILocation(line: 1222, column: 43, scope: !2962)
!2991 = !DILocation(line: 1222, column: 64, scope: !2962)
!2992 = !DILocation(line: 1222, column: 15, scope: !2962)
!2993 = !DILocation(line: 1225, column: 9, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 1225, column: 9)
!2995 = !DILocation(line: 1225, column: 9, scope: !2962)
!2996 = !DILocation(line: 1228, column: 28, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2994, file: !2, line: 1226, column: 5)
!2998 = !DILocation(line: 1229, column: 22, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 1229, column: 11)
!3000 = !DILocation(line: 1229, column: 11, scope: !2997)
!3001 = !DILocation(line: 1232, column: 26, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !2, line: 1232, column: 13)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !2, line: 1230, column: 7)
!3004 = !DILocation(line: 1232, column: 34, scope: !3002)
!3005 = !DILocation(line: 1232, column: 43, scope: !3002)
!3006 = !DILocation(line: 1232, column: 60, scope: !3002)
!3007 = !DILocation(line: 1232, column: 70, scope: !3002)
!3008 = !DILocation(line: 1232, column: 13, scope: !3003)
!3009 = !DILocation(line: 1233, column: 11, scope: !3002)
!3010 = !DILocation(line: 0, scope: !2997)
!3011 = !DILocation(line: 1238, column: 28, scope: !2997)
!3012 = !DILocation(line: 1239, column: 22, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !2, line: 1239, column: 11)
!3014 = !DILocation(line: 1239, column: 11, scope: !2997)
!3015 = !DILocation(line: 1241, column: 26, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !2, line: 1241, column: 13)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !2, line: 1240, column: 7)
!3018 = !DILocation(line: 1241, column: 34, scope: !3016)
!3019 = !DILocation(line: 1241, column: 43, scope: !3016)
!3020 = !DILocation(line: 1241, column: 60, scope: !3016)
!3021 = !DILocation(line: 1241, column: 70, scope: !3016)
!3022 = !DILocation(line: 1241, column: 13, scope: !3017)
!3023 = !DILocation(line: 1242, column: 11, scope: !3016)
!3024 = !DILocation(line: 1245, column: 24, scope: !2997)
!3025 = !DILocation(line: 1246, column: 45, scope: !2997)
!3026 = !DILocation(line: 1246, column: 66, scope: !2997)
!3027 = !DILocation(line: 1246, column: 17, scope: !2997)
!3028 = !DILocation(line: 1247, column: 23, scope: !2997)
!3029 = !DILocation(line: 1247, column: 14, scope: !2997)
!3030 = !DILocation(line: 1247, column: 11, scope: !2997)
!3031 = !DILocation(line: 1248, column: 5, scope: !2997)
!3032 = !DILocation(line: 1251, column: 7, scope: !2878)
!3033 = !DILocation(line: 1251, column: 14, scope: !2878)
!3034 = !DILocation(line: 1253, column: 8, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1253, column: 7)
!3036 = !DILocation(line: 1253, column: 7, scope: !2878)
!3037 = !DILocation(line: 1255, column: 16, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !2, line: 1254, column: 3)
!3039 = !DILocation(line: 1255, column: 28, scope: !3038)
!3040 = !DILocation(line: 1256, column: 3, scope: !3038)
!3041 = !DILocation(line: 1262, column: 1, scope: !2878)
!3042 = distinct !DISubprogram(name: "readCIPredMode_CABAC", scope: !2, file: !2, line: 1271, type: !1494, scopeLine: 1274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054}
!3044 = !DILocalVariable(name: "currMB", arg: 1, scope: !3042, file: !2, line: 1271, type: !300)
!3045 = !DILocalVariable(name: "se", arg: 2, scope: !3042, file: !2, line: 1272, type: !1169)
!3046 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !3042, file: !2, line: 1273, type: !179)
!3047 = !DILocalVariable(name: "currSlice", scope: !3042, file: !2, line: 1275, type: !653)
!3048 = !DILocalVariable(name: "ctx", scope: !3042, file: !2, line: 1276, type: !151)
!3049 = !DILocalVariable(name: "act_sym", scope: !3042, file: !2, line: 1277, type: !191)
!3050 = !DILocalVariable(name: "MbUp", scope: !3042, file: !2, line: 1279, type: !300)
!3051 = !DILocalVariable(name: "MbLeft", scope: !3042, file: !2, line: 1280, type: !300)
!3052 = !DILocalVariable(name: "b", scope: !3042, file: !2, line: 1282, type: !18)
!3053 = !DILocalVariable(name: "a", scope: !3042, file: !2, line: 1283, type: !18)
!3054 = !DILocalVariable(name: "act_ctx", scope: !3042, file: !2, line: 1284, type: !18)
!3055 = !DILocation(line: 0, scope: !3042)
!3056 = !DILocation(line: 1275, column: 30, scope: !3042)
!3057 = !DILocation(line: 1276, column: 41, scope: !3042)
!3058 = !DILocation(line: 1277, column: 40, scope: !3042)
!3059 = !DILocation(line: 1279, column: 41, scope: !3042)
!3060 = !DILocation(line: 1280, column: 41, scope: !3042)
!3061 = !DILocation(line: 1282, column: 17, scope: !3042)
!3062 = !DILocation(line: 1282, column: 11, scope: !3042)
!3063 = !DILocation(line: 1282, column: 39, scope: !3042)
!3064 = !DILocation(line: 1282, column: 54, scope: !3042)
!3065 = !DILocation(line: 1282, column: 60, scope: !3042)
!3066 = !DILocation(line: 1282, column: 70, scope: !3042)
!3067 = !DILocation(line: 1282, column: 78, scope: !3042)
!3068 = !DILocation(line: 1282, column: 31, scope: !3042)
!3069 = !DILocation(line: 1283, column: 19, scope: !3042)
!3070 = !DILocation(line: 1283, column: 11, scope: !3042)
!3071 = !DILocation(line: 1283, column: 41, scope: !3042)
!3072 = !DILocation(line: 1283, column: 54, scope: !3042)
!3073 = !DILocation(line: 1283, column: 60, scope: !3042)
!3074 = !DILocation(line: 1283, column: 72, scope: !3042)
!3075 = !DILocation(line: 1283, column: 80, scope: !3042)
!3076 = !DILocation(line: 1283, column: 31, scope: !3042)
!3077 = !DILocation(line: 1286, column: 47, scope: !3042)
!3078 = !DILocation(line: 1286, column: 61, scope: !3042)
!3079 = !DILocation(line: 1286, column: 14, scope: !3042)
!3080 = !DILocation(line: 1286, column: 12, scope: !3042)
!3081 = !DILocation(line: 1288, column: 16, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3042, file: !2, line: 1288, column: 7)
!3083 = !DILocation(line: 1288, column: 7, scope: !3042)
!3084 = !DILocation(line: 1289, column: 64, scope: !3082)
!3085 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !3086, file: !2, line: 2115, type: !179)
!3086 = distinct !DISubprogram(name: "unary_bin_max_decode", scope: !2, file: !2, line: 2115, type: !3087, scopeLine: 2119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!42, !179, !192, !18, !42}
!3089 = !{!3085, !3090, !3091, !3092, !3093, !3094}
!3090 = !DILocalVariable(name: "ctx", arg: 2, scope: !3086, file: !2, line: 2116, type: !192)
!3091 = !DILocalVariable(name: "ctx_offset", arg: 3, scope: !3086, file: !2, line: 2117, type: !18)
!3092 = !DILocalVariable(name: "max_symbol", arg: 4, scope: !3086, file: !2, line: 2118, type: !42)
!3093 = !DILocalVariable(name: "symbol", scope: !3086, file: !2, line: 2120, type: !42)
!3094 = !DILocalVariable(name: "l", scope: !3095, file: !2, line: 2126, type: !42)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 2125, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !2, line: 2122, column: 7)
!3097 = !DILocation(line: 0, scope: !3086, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1289, column: 16, scope: !3082)
!3099 = !DILocation(line: 2120, column: 26, scope: !3086, inlinedAt: !3098)
!3100 = !DILocation(line: 2122, column: 14, scope: !3096, inlinedAt: !3098)
!3101 = !DILocation(line: 2122, column: 19, scope: !3096, inlinedAt: !3098)
!3102 = !DILocation(line: 2131, column: 11, scope: !3103, inlinedAt: !3098)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 2130, column: 5)
!3104 = !DILocation(line: 0, scope: !3095, inlinedAt: !3098)
!3105 = !DILocation(line: 2134, column: 15, scope: !3095, inlinedAt: !3098)
!3106 = !DILocation(line: 1289, column: 75, scope: !3082)
!3107 = !DILocation(line: 0, scope: !3096, inlinedAt: !3098)
!3108 = !DILocation(line: 1289, column: 14, scope: !3082)
!3109 = !DILocation(line: 1289, column: 5, scope: !3082)
!3110 = !DILocation(line: 1296, column: 1, scope: !3042)
!3111 = distinct !DISubprogram(name: "set_read_and_store_CBP", scope: !2, file: !2, line: 1858, type: !3112, scopeLine: 1859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3115)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3114, !18}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "currMB", arg: 1, scope: !3111, file: !2, line: 1858, type: !3114)
!3117 = !DILocalVariable(name: "chroma_format_idc", arg: 2, scope: !3111, file: !2, line: 1858, type: !18)
!3118 = !DILocation(line: 0, scope: !3111)
!3119 = !DILocation(line: 1860, column: 25, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3111, file: !2, line: 1860, column: 7)
!3121 = !DILocation(line: 0, scope: !3120)
!3122 = !DILocation(line: 1864, column: 1, scope: !3111)
!3123 = distinct !DISubprogram(name: "read_and_store_CBP_block_bit_444", scope: !2, file: !2, line: 1305, type: !3124, scopeLine: 1308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!18, !300, !179, !18}
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153}
!3127 = !DILocalVariable(name: "currMB", arg: 1, scope: !3123, file: !2, line: 1305, type: !300)
!3128 = !DILocalVariable(name: "dep_dp", arg: 2, scope: !3123, file: !2, line: 1306, type: !179)
!3129 = !DILocalVariable(name: "type", arg: 3, scope: !3123, file: !2, line: 1307, type: !18)
!3130 = !DILocalVariable(name: "currSlice", scope: !3123, file: !2, line: 1309, type: !653)
!3131 = !DILocalVariable(name: "p_Vid", scope: !3123, file: !2, line: 1310, type: !981)
!3132 = !DILocalVariable(name: "dec_picture", scope: !3123, file: !2, line: 1311, type: !824)
!3133 = !DILocalVariable(name: "tex_ctx", scope: !3123, file: !2, line: 1312, type: !151)
!3134 = !DILocalVariable(name: "mb_data", scope: !3123, file: !2, line: 1313, type: !300)
!3135 = !DILocalVariable(name: "y_ac", scope: !3123, file: !2, line: 1314, type: !18)
!3136 = !DILocalVariable(name: "y_dc", scope: !3123, file: !2, line: 1317, type: !18)
!3137 = !DILocalVariable(name: "u_ac", scope: !3123, file: !2, line: 1318, type: !18)
!3138 = !DILocalVariable(name: "v_ac", scope: !3123, file: !2, line: 1319, type: !18)
!3139 = !DILocalVariable(name: "chroma_dc", scope: !3123, file: !2, line: 1320, type: !18)
!3140 = !DILocalVariable(name: "u_dc", scope: !3123, file: !2, line: 1321, type: !18)
!3141 = !DILocalVariable(name: "v_dc", scope: !3123, file: !2, line: 1322, type: !18)
!3142 = !DILocalVariable(name: "j", scope: !3123, file: !2, line: 1323, type: !18)
!3143 = !DILocalVariable(name: "i", scope: !3123, file: !2, line: 1324, type: !18)
!3144 = !DILocalVariable(name: "bit", scope: !3123, file: !2, line: 1325, type: !18)
!3145 = !DILocalVariable(name: "default_bit", scope: !3123, file: !2, line: 1326, type: !18)
!3146 = !DILocalVariable(name: "upper_bit", scope: !3123, file: !2, line: 1327, type: !18)
!3147 = !DILocalVariable(name: "left_bit", scope: !3123, file: !2, line: 1328, type: !18)
!3148 = !DILocalVariable(name: "cbp_bit", scope: !3123, file: !2, line: 1329, type: !18)
!3149 = !DILocalVariable(name: "ctx", scope: !3123, file: !2, line: 1330, type: !18)
!3150 = !DILocalVariable(name: "bit_pos_a", scope: !3123, file: !2, line: 1331, type: !18)
!3151 = !DILocalVariable(name: "bit_pos_b", scope: !3123, file: !2, line: 1332, type: !18)
!3152 = !DILocalVariable(name: "block_a", scope: !3123, file: !2, line: 1334, type: !1024)
!3153 = !DILocalVariable(name: "block_b", scope: !3123, file: !2, line: 1334, type: !1024)
!3154 = distinct !DIAssignID()
!3155 = !DILocation(line: 0, scope: !3123)
!3156 = distinct !DIAssignID()
!3157 = !DILocation(line: 1309, column: 30, scope: !3123)
!3158 = !DILocation(line: 1310, column: 36, scope: !3123)
!3159 = !DILocation(line: 1311, column: 45, scope: !3123)
!3160 = !DILocation(line: 1312, column: 45, scope: !3123)
!3161 = !DILocation(line: 1313, column: 36, scope: !3123)
!3162 = !DILocation(line: 1314, column: 38, scope: !3123)
!3163 = !DILocation(line: 1317, column: 38, scope: !3123)
!3164 = !DILocation(line: 1318, column: 38, scope: !3123)
!3165 = !DILocation(line: 1318, column: 50, scope: !3123)
!3166 = !DILocation(line: 1318, column: 41, scope: !3123)
!3167 = !DILocation(line: 1319, column: 38, scope: !3123)
!3168 = !DILocation(line: 1320, column: 38, scope: !3123)
!3169 = !DILocation(line: 1321, column: 44, scope: !3123)
!3170 = !DILocation(line: 1321, column: 35, scope: !3123)
!3171 = !DILocation(line: 1322, column: 32, scope: !3123)
!3172 = !DILocation(line: 1323, column: 27, scope: !3123)
!3173 = !DILocation(line: 1323, column: 53, scope: !3123)
!3174 = !DILocation(line: 1324, column: 53, scope: !3123)
!3175 = !DILocation(line: 1324, column: 22, scope: !3123)
!3176 = !DILocation(line: 1325, column: 22, scope: !3123)
!3177 = !DILocation(line: 1326, column: 30, scope: !3123)
!3178 = !DILocation(line: 1326, column: 22, scope: !3123)
!3179 = !DILocation(line: 1334, column: 3, scope: !3123)
!3180 = !DILocation(line: 1335, column: 7, scope: !3123)
!3181 = !DILocation(line: 1337, column: 31, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !2, line: 1336, column: 3)
!3183 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 1335, column: 7)
!3184 = !DILocation(line: 1337, column: 50, scope: !3182)
!3185 = !DILocation(line: 1337, column: 5, scope: !3182)
!3186 = !DILocation(line: 1338, column: 38, scope: !3182)
!3187 = !DILocation(line: 1338, column: 5, scope: !3182)
!3188 = !DILocation(line: 1339, column: 17, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 1339, column: 9)
!3190 = !DILocation(line: 1339, column: 9, scope: !3189)
!3191 = !DILocation(line: 1339, column: 9, scope: !3182)
!3192 = !DILocation(line: 1341, column: 19, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 1341, column: 11)
!3194 = !DILocation(line: 1341, column: 11, scope: !3193)
!3195 = !DILocation(line: 1341, column: 11, scope: !3182)
!3196 = !DILocation(line: 1342, column: 31, scope: !3193)
!3197 = !DILocation(line: 1342, column: 23, scope: !3193)
!3198 = !DILocation(line: 1342, column: 22, scope: !3193)
!3199 = !DILocation(line: 1342, column: 43, scope: !3193)
!3200 = !DILocation(line: 1342, column: 35, scope: !3193)
!3201 = !DILocation(line: 1342, column: 33, scope: !3193)
!3202 = !DILocation(line: 1342, column: 9, scope: !3193)
!3203 = !DILocation(line: 1344, column: 12, scope: !3183)
!3204 = !DILocation(line: 1346, column: 31, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 1345, column: 3)
!3206 = distinct !DILexicalBlock(scope: !3183, file: !2, line: 1344, column: 12)
!3207 = !DILocation(line: 1346, column: 50, scope: !3205)
!3208 = !DILocation(line: 1346, column: 5, scope: !3205)
!3209 = !DILocation(line: 1347, column: 38, scope: !3205)
!3210 = !DILocation(line: 1347, column: 5, scope: !3205)
!3211 = !DILocation(line: 1348, column: 3, scope: !3205)
!3212 = !DILocation(line: 1349, column: 16, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 1349, column: 12)
!3214 = !DILocation(line: 0, scope: !3213)
!3215 = !DILocation(line: 1353, column: 17, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 1353, column: 9)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !2, line: 1350, column: 3)
!3218 = !DILocation(line: 1353, column: 9, scope: !3216)
!3219 = !DILocation(line: 1353, column: 9, scope: !3217)
!3220 = !DILocation(line: 1355, column: 17, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 1355, column: 9)
!3222 = !DILocation(line: 1355, column: 9, scope: !3221)
!3223 = !DILocation(line: 1355, column: 9, scope: !3217)
!3224 = !DILocation(line: 1356, column: 29, scope: !3221)
!3225 = !DILocation(line: 1356, column: 21, scope: !3221)
!3226 = !DILocation(line: 1356, column: 20, scope: !3221)
!3227 = !DILocation(line: 1356, column: 41, scope: !3221)
!3228 = !DILocation(line: 1356, column: 33, scope: !3221)
!3229 = !DILocation(line: 1356, column: 31, scope: !3221)
!3230 = !DILocation(line: 1356, column: 7, scope: !3221)
!3231 = !DILocation(line: 1364, column: 20, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 1364, column: 7)
!3233 = !DILocation(line: 1364, column: 37, scope: !3232)
!3234 = !DILocation(line: 1364, column: 7, scope: !3123)
!3235 = !DILocation(line: 1366, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !2, line: 1365, column: 3)
!3237 = !DILocation(line: 1369, column: 19, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !2, line: 1369, column: 11)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !2, line: 1367, column: 5)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !2, line: 1366, column: 9)
!3241 = !DILocation(line: 1369, column: 11, scope: !3238)
!3242 = !DILocation(line: 1369, column: 11, scope: !3239)
!3243 = !DILocation(line: 1371, column: 28, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !2, line: 1371, column: 12)
!3245 = distinct !DILexicalBlock(scope: !3238, file: !2, line: 1370, column: 7)
!3246 = !DILocation(line: 1371, column: 12, scope: !3244)
!3247 = !DILocation(line: 1371, column: 37, scope: !3244)
!3248 = !DILocation(line: 1371, column: 44, scope: !3244)
!3249 = !DILocation(line: 1371, column: 12, scope: !3245)
!3250 = !DILocation(line: 1374, column: 56, scope: !3244)
!3251 = !DILocation(line: 1374, column: 31, scope: !3244)
!3252 = !DILocation(line: 1374, column: 73, scope: !3244)
!3253 = !DILocalVariable(name: "x", arg: 1, scope: !3254, file: !205, line: 267, type: !194)
!3254 = distinct !DISubprogram(name: "get_bit", scope: !205, file: !205, line: 267, type: !3255, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!18, !194, !18}
!3257 = !{!3253, !3258}
!3258 = !DILocalVariable(name: "n", arg: 2, scope: !3254, file: !205, line: 267, type: !18)
!3259 = !DILocation(line: 0, scope: !3254, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1374, column: 23, scope: !3244)
!3261 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3260)
!3262 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3260)
!3263 = !DILocation(line: 1377, column: 19, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3239, file: !2, line: 1377, column: 11)
!3265 = !DILocation(line: 1377, column: 11, scope: !3264)
!3266 = !DILocation(line: 1377, column: 11, scope: !3239)
!3267 = !DILocation(line: 1379, column: 28, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 1379, column: 12)
!3269 = distinct !DILexicalBlock(scope: !3264, file: !2, line: 1378, column: 7)
!3270 = !DILocation(line: 1379, column: 12, scope: !3268)
!3271 = !DILocation(line: 1379, column: 37, scope: !3268)
!3272 = !DILocation(line: 1379, column: 44, scope: !3268)
!3273 = !DILocation(line: 1379, column: 12, scope: !3269)
!3274 = !DILocation(line: 1382, column: 55, scope: !3268)
!3275 = !DILocation(line: 0, scope: !3254, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1382, column: 22, scope: !3268)
!3277 = !DILocation(line: 1391, column: 20, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3232, file: !2, line: 1391, column: 12)
!3279 = !DILocation(line: 1391, column: 47, scope: !3278)
!3280 = !DILocation(line: 1391, column: 12, scope: !3232)
!3281 = !DILocation(line: 1393, column: 9, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !2, line: 1392, column: 3)
!3283 = !DILocation(line: 1396, column: 19, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 1396, column: 11)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 1394, column: 5)
!3286 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 1393, column: 9)
!3287 = !DILocation(line: 1396, column: 11, scope: !3284)
!3288 = !DILocation(line: 1396, column: 11, scope: !3285)
!3289 = !DILocation(line: 1398, column: 28, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 1398, column: 12)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !2, line: 1397, column: 7)
!3292 = !DILocation(line: 1398, column: 12, scope: !3290)
!3293 = !DILocation(line: 1398, column: 37, scope: !3290)
!3294 = !DILocation(line: 1398, column: 44, scope: !3290)
!3295 = !DILocation(line: 1398, column: 12, scope: !3291)
!3296 = !DILocation(line: 1401, column: 56, scope: !3290)
!3297 = !DILocation(line: 1401, column: 31, scope: !3290)
!3298 = !DILocation(line: 1401, column: 71, scope: !3290)
!3299 = !DILocation(line: 0, scope: !3254, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 1401, column: 23, scope: !3290)
!3301 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3300)
!3302 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3300)
!3303 = !DILocation(line: 1405, column: 19, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 1405, column: 11)
!3305 = !DILocation(line: 1405, column: 11, scope: !3304)
!3306 = !DILocation(line: 1405, column: 11, scope: !3285)
!3307 = !DILocation(line: 1407, column: 28, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !2, line: 1407, column: 12)
!3309 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 1406, column: 7)
!3310 = !DILocation(line: 1407, column: 12, scope: !3308)
!3311 = !DILocation(line: 1407, column: 37, scope: !3308)
!3312 = !DILocation(line: 1407, column: 44, scope: !3308)
!3313 = !DILocation(line: 1407, column: 12, scope: !3309)
!3314 = !DILocation(line: 1410, column: 55, scope: !3308)
!3315 = !DILocation(line: 0, scope: !3254, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1410, column: 22, scope: !3308)
!3317 = !DILocation(line: 1420, column: 17, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !2, line: 1420, column: 9)
!3319 = distinct !DILexicalBlock(scope: !3278, file: !2, line: 1419, column: 8)
!3320 = !DILocation(line: 1420, column: 9, scope: !3318)
!3321 = !DILocation(line: 1420, column: 9, scope: !3319)
!3322 = !DILocation(line: 1422, column: 26, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !2, line: 1422, column: 10)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !2, line: 1421, column: 5)
!3325 = !DILocation(line: 1422, column: 10, scope: !3323)
!3326 = !DILocation(line: 1422, column: 35, scope: !3323)
!3327 = !DILocation(line: 1422, column: 42, scope: !3323)
!3328 = !DILocation(line: 1422, column: 10, scope: !3324)
!3329 = !DILocation(line: 1426, column: 12, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3323, file: !2, line: 1425, column: 7)
!3331 = !DILocation(line: 0, scope: !3254, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 1435, column: 23, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !2, line: 1434, column: 18)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !2, line: 1432, column: 18)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !2, line: 1430, column: 18)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !2, line: 1428, column: 18)
!3337 = distinct !DILexicalBlock(scope: !3330, file: !2, line: 1426, column: 12)
!3338 = !DILocation(line: 1435, column: 11, scope: !3333)
!3339 = !DILocation(line: 0, scope: !3254, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 1437, column: 23, scope: !3333)
!3341 = !DILocation(line: 0, scope: !3337)
!3342 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3341)
!3343 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3341)
!3344 = !DILocation(line: 1442, column: 17, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3319, file: !2, line: 1442, column: 9)
!3346 = !DILocation(line: 1442, column: 9, scope: !3345)
!3347 = !DILocation(line: 1442, column: 9, scope: !3319)
!3348 = !DILocation(line: 1444, column: 26, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !2, line: 1444, column: 10)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !2, line: 1443, column: 5)
!3351 = !DILocation(line: 1444, column: 10, scope: !3349)
!3352 = !DILocation(line: 1444, column: 35, scope: !3349)
!3353 = !DILocation(line: 1444, column: 42, scope: !3349)
!3354 = !DILocation(line: 1444, column: 10, scope: !3350)
!3355 = !DILocation(line: 1448, column: 12, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3349, file: !2, line: 1447, column: 7)
!3357 = !DILocation(line: 0, scope: !3254, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 1457, column: 22, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !2, line: 1456, column: 18)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !2, line: 1454, column: 18)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1452, column: 18)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !2, line: 1450, column: 18)
!3363 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1448, column: 12)
!3364 = !DILocation(line: 1457, column: 11, scope: !3359)
!3365 = !DILocation(line: 0, scope: !3254, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1459, column: 22, scope: !3359)
!3367 = !DILocation(line: 0, scope: !3363)
!3368 = !DILocation(line: 1463, column: 13, scope: !3319)
!3369 = !DILocation(line: 0, scope: !3232)
!3370 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3369)
!3371 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3369)
!3372 = !DILocation(line: 1469, column: 10, scope: !3123)
!3373 = !DILocation(line: 1469, column: 21, scope: !3123)
!3374 = !DILocation(line: 1469, column: 30, scope: !3123)
!3375 = !DILocation(line: 1469, column: 39, scope: !3123)
!3376 = !DILocation(line: 1469, column: 34, scope: !3123)
!3377 = !DILocation(line: 1469, column: 47, scope: !3123)
!3378 = !DILocation(line: 1469, scope: !3123)
!3379 = !DILocation(line: 1469, column: 71, scope: !3123)
!3380 = !DILocation(line: 1469, column: 81, scope: !3123)
!3381 = !DILocation(line: 1469, column: 85, scope: !3123)
!3382 = !DILocation(line: 1469, column: 101, scope: !3123)
!3383 = !DILocation(line: 1469, column: 105, scope: !3123)
!3384 = !DILocation(line: 1471, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 1471, column: 7)
!3386 = !DILocation(line: 1471, column: 7, scope: !3123)
!3387 = !DILocation(line: 1473, column: 9, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3385, file: !2, line: 1472, column: 3)
!3389 = !DILocation(line: 1475, column: 44, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 1474, column: 5)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 1473, column: 9)
!3392 = !DILocation(line: 1475, column: 15, scope: !3390)
!3393 = !DILocation(line: 1475, column: 27, scope: !3390)
!3394 = !DILocation(line: 1477, column: 24, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !2, line: 1477, column: 11)
!3396 = !DILocation(line: 1477, column: 41, scope: !3395)
!3397 = !DILocation(line: 1477, column: 11, scope: !3390)
!3398 = !DILocation(line: 1482, column: 14, scope: !3391)
!3399 = !DILocation(line: 1484, column: 50, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 1483, column: 5)
!3401 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 1482, column: 14)
!3402 = !DILocation(line: 1484, column: 7, scope: !3400)
!3403 = !DILocation(line: 1484, column: 33, scope: !3400)
!3404 = !DILocation(line: 1486, column: 5, scope: !3400)
!3405 = !DILocation(line: 1487, column: 14, scope: !3401)
!3406 = !DILocation(line: 1489, column: 50, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !2, line: 1488, column: 5)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 1487, column: 14)
!3409 = !DILocation(line: 1489, column: 7, scope: !3407)
!3410 = !DILocation(line: 1489, column: 33, scope: !3407)
!3411 = !DILocation(line: 1491, column: 5, scope: !3407)
!3412 = !DILocation(line: 1494, column: 46, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 1493, column: 5)
!3414 = distinct !DILexicalBlock(scope: !3408, file: !2, line: 1492, column: 14)
!3415 = !DILocation(line: 1495, column: 5, scope: !3413)
!3416 = !DILocation(line: 1498, column: 46, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !2, line: 1497, column: 5)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !2, line: 1496, column: 14)
!3419 = !DILocation(line: 1499, column: 5, scope: !3417)
!3420 = !DILocation(line: 1502, column: 46, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !2, line: 1501, column: 5)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !2, line: 1500, column: 14)
!3423 = !DILocation(line: 1503, column: 5, scope: !3421)
!3424 = !DILocation(line: 1506, column: 45, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 1505, column: 5)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !2, line: 1504, column: 14)
!3427 = !DILocation(line: 1507, column: 5, scope: !3425)
!3428 = !DILocation(line: 1510, column: 44, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 1509, column: 5)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 1508, column: 14)
!3431 = !DILocation(line: 1511, column: 5, scope: !3429)
!3432 = !DILocation(line: 1514, column: 44, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !2, line: 1513, column: 5)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !2, line: 1512, column: 14)
!3435 = !DILocation(line: 1515, column: 5, scope: !3433)
!3436 = !DILocalVariable(name: "x", arg: 1, scope: !3437, file: !205, line: 257, type: !18)
!3437 = distinct !DISubprogram(name: "i64_power2", scope: !205, file: !205, line: 257, type: !3438, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!194, !18}
!3440 = !{!3436}
!3441 = !DILocation(line: 0, scope: !3437, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1518, column: 32, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 1517, column: 5)
!3444 = distinct !DILexicalBlock(scope: !3434, file: !2, line: 1516, column: 14)
!3445 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !3442)
!3446 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !3442)
!3447 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !3442)
!3448 = !DILocation(line: 0, scope: !3437, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 1522, column: 32, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !2, line: 1521, column: 5)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 1520, column: 14)
!3452 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !3449)
!3453 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !3449)
!3454 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !3449)
!3455 = !DILocation(line: 0, scope: !3437, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 1526, column: 32, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !2, line: 1525, column: 5)
!3458 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !3456)
!3459 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !3456)
!3460 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !3456)
!3461 = !DILocation(line: 0, scope: !3391)
!3462 = !DILocation(line: 1530, column: 1, scope: !3123)
!3463 = !DILocation(line: 1529, column: 3, scope: !3123)
!3464 = distinct !DISubprogram(name: "read_and_store_CBP_block_bit_normal", scope: !2, file: !2, line: 1558, type: !3124, scopeLine: 1561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3477, !3478, !3479, !3480, !3481, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3528, !3529, !3530, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3558}
!3466 = !DILocalVariable(name: "currMB", arg: 1, scope: !3464, file: !2, line: 1558, type: !300)
!3467 = !DILocalVariable(name: "dep_dp", arg: 2, scope: !3464, file: !2, line: 1559, type: !179)
!3468 = !DILocalVariable(name: "type", arg: 3, scope: !3464, file: !2, line: 1560, type: !18)
!3469 = !DILocalVariable(name: "currSlice", scope: !3464, file: !2, line: 1562, type: !653)
!3470 = !DILocalVariable(name: "p_Vid", scope: !3464, file: !2, line: 1563, type: !981)
!3471 = !DILocalVariable(name: "tex_ctx", scope: !3464, file: !2, line: 1564, type: !151)
!3472 = !DILocalVariable(name: "cbp_bit", scope: !3464, file: !2, line: 1565, type: !18)
!3473 = !DILocalVariable(name: "mb_data", scope: !3464, file: !2, line: 1566, type: !300)
!3474 = !DILocalVariable(name: "upper_bit", scope: !3475, file: !2, line: 1570, type: !18)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !2, line: 1569, column: 3)
!3476 = distinct !DILexicalBlock(scope: !3464, file: !2, line: 1568, column: 7)
!3477 = !DILocalVariable(name: "left_bit", scope: !3475, file: !2, line: 1571, type: !18)
!3478 = !DILocalVariable(name: "ctx", scope: !3475, file: !2, line: 1572, type: !18)
!3479 = !DILocalVariable(name: "block_a", scope: !3475, file: !2, line: 1574, type: !1024)
!3480 = !DILocalVariable(name: "block_b", scope: !3475, file: !2, line: 1574, type: !1024)
!3481 = !DILocalVariable(name: "j", scope: !3482, file: !2, line: 1603, type: !18)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 1602, column: 3)
!3483 = distinct !DILexicalBlock(scope: !3476, file: !2, line: 1601, column: 12)
!3484 = !DILocalVariable(name: "i", scope: !3482, file: !2, line: 1604, type: !18)
!3485 = !DILocalVariable(name: "bit", scope: !3482, file: !2, line: 1605, type: !18)
!3486 = !DILocalVariable(name: "default_bit", scope: !3482, file: !2, line: 1606, type: !18)
!3487 = !DILocalVariable(name: "upper_bit", scope: !3482, file: !2, line: 1607, type: !18)
!3488 = !DILocalVariable(name: "left_bit", scope: !3482, file: !2, line: 1608, type: !18)
!3489 = !DILocalVariable(name: "ctx", scope: !3482, file: !2, line: 1609, type: !18)
!3490 = !DILocalVariable(name: "block_a", scope: !3482, file: !2, line: 1611, type: !1024)
!3491 = !DILocalVariable(name: "block_b", scope: !3482, file: !2, line: 1611, type: !1024)
!3492 = !DILocalVariable(name: "j", scope: !3493, file: !2, line: 1640, type: !18)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !2, line: 1639, column: 3)
!3494 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 1638, column: 12)
!3495 = !DILocalVariable(name: "i", scope: !3493, file: !2, line: 1641, type: !18)
!3496 = !DILocalVariable(name: "bit", scope: !3493, file: !2, line: 1642, type: !18)
!3497 = !DILocalVariable(name: "default_bit", scope: !3493, file: !2, line: 1643, type: !18)
!3498 = !DILocalVariable(name: "upper_bit", scope: !3493, file: !2, line: 1644, type: !18)
!3499 = !DILocalVariable(name: "left_bit", scope: !3493, file: !2, line: 1645, type: !18)
!3500 = !DILocalVariable(name: "ctx", scope: !3493, file: !2, line: 1646, type: !18)
!3501 = !DILocalVariable(name: "block_a", scope: !3493, file: !2, line: 1648, type: !1024)
!3502 = !DILocalVariable(name: "block_b", scope: !3493, file: !2, line: 1648, type: !1024)
!3503 = !DILocalVariable(name: "j", scope: !3504, file: !2, line: 1677, type: !18)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !2, line: 1676, column: 3)
!3505 = distinct !DILexicalBlock(scope: !3494, file: !2, line: 1675, column: 12)
!3506 = !DILocalVariable(name: "i", scope: !3504, file: !2, line: 1678, type: !18)
!3507 = !DILocalVariable(name: "bit", scope: !3504, file: !2, line: 1679, type: !18)
!3508 = !DILocalVariable(name: "default_bit", scope: !3504, file: !2, line: 1680, type: !18)
!3509 = !DILocalVariable(name: "upper_bit", scope: !3504, file: !2, line: 1681, type: !18)
!3510 = !DILocalVariable(name: "left_bit", scope: !3504, file: !2, line: 1682, type: !18)
!3511 = !DILocalVariable(name: "ctx", scope: !3504, file: !2, line: 1683, type: !18)
!3512 = !DILocalVariable(name: "block_a", scope: !3504, file: !2, line: 1685, type: !1024)
!3513 = !DILocalVariable(name: "block_b", scope: !3504, file: !2, line: 1685, type: !1024)
!3514 = !DILocalVariable(name: "j", scope: !3515, file: !2, line: 1715, type: !18)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !2, line: 1714, column: 3)
!3516 = distinct !DILexicalBlock(scope: !3505, file: !2, line: 1713, column: 12)
!3517 = !DILocalVariable(name: "i", scope: !3515, file: !2, line: 1716, type: !18)
!3518 = !DILocalVariable(name: "bit", scope: !3515, file: !2, line: 1717, type: !18)
!3519 = !DILocalVariable(name: "default_bit", scope: !3515, file: !2, line: 1718, type: !18)
!3520 = !DILocalVariable(name: "upper_bit", scope: !3515, file: !2, line: 1719, type: !18)
!3521 = !DILocalVariable(name: "left_bit", scope: !3515, file: !2, line: 1720, type: !18)
!3522 = !DILocalVariable(name: "ctx", scope: !3515, file: !2, line: 1721, type: !18)
!3523 = !DILocalVariable(name: "block_a", scope: !3515, file: !2, line: 1723, type: !1024)
!3524 = !DILocalVariable(name: "block_b", scope: !3515, file: !2, line: 1723, type: !1024)
!3525 = !DILocalVariable(name: "j", scope: !3526, file: !2, line: 1753, type: !18)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !2, line: 1752, column: 3)
!3527 = distinct !DILexicalBlock(scope: !3516, file: !2, line: 1751, column: 12)
!3528 = !DILocalVariable(name: "i", scope: !3526, file: !2, line: 1754, type: !18)
!3529 = !DILocalVariable(name: "bit", scope: !3526, file: !2, line: 1756, type: !18)
!3530 = !DILocalVariable(name: "u_dc", scope: !3531, file: !2, line: 1762, type: !18)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !2, line: 1761, column: 3)
!3532 = distinct !DILexicalBlock(scope: !3527, file: !2, line: 1760, column: 12)
!3533 = !DILocalVariable(name: "j", scope: !3531, file: !2, line: 1763, type: !18)
!3534 = !DILocalVariable(name: "i", scope: !3531, file: !2, line: 1764, type: !18)
!3535 = !DILocalVariable(name: "bit", scope: !3531, file: !2, line: 1765, type: !18)
!3536 = !DILocalVariable(name: "default_bit", scope: !3531, file: !2, line: 1766, type: !18)
!3537 = !DILocalVariable(name: "upper_bit", scope: !3531, file: !2, line: 1767, type: !18)
!3538 = !DILocalVariable(name: "left_bit", scope: !3531, file: !2, line: 1768, type: !18)
!3539 = !DILocalVariable(name: "ctx", scope: !3531, file: !2, line: 1769, type: !18)
!3540 = !DILocalVariable(name: "block_a", scope: !3531, file: !2, line: 1771, type: !1024)
!3541 = !DILocalVariable(name: "block_b", scope: !3531, file: !2, line: 1771, type: !1024)
!3542 = !DILocalVariable(name: "u_ac", scope: !3543, file: !2, line: 1806, type: !18)
!3543 = distinct !DILexicalBlock(scope: !3532, file: !2, line: 1805, column: 3)
!3544 = !DILocalVariable(name: "j", scope: !3543, file: !2, line: 1807, type: !18)
!3545 = !DILocalVariable(name: "i", scope: !3543, file: !2, line: 1808, type: !18)
!3546 = !DILocalVariable(name: "bit", scope: !3543, file: !2, line: 1809, type: !18)
!3547 = !DILocalVariable(name: "default_bit", scope: !3543, file: !2, line: 1810, type: !18)
!3548 = !DILocalVariable(name: "upper_bit", scope: !3543, file: !2, line: 1811, type: !18)
!3549 = !DILocalVariable(name: "left_bit", scope: !3543, file: !2, line: 1812, type: !18)
!3550 = !DILocalVariable(name: "ctx", scope: !3543, file: !2, line: 1813, type: !18)
!3551 = !DILocalVariable(name: "block_a", scope: !3543, file: !2, line: 1815, type: !1024)
!3552 = !DILocalVariable(name: "block_b", scope: !3543, file: !2, line: 1815, type: !1024)
!3553 = !DILocalVariable(name: "bit_pos_b", scope: !3554, file: !2, line: 1827, type: !18)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !2, line: 1826, column: 7)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !2, line: 1823, column: 10)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !2, line: 1822, column: 5)
!3557 = distinct !DILexicalBlock(scope: !3543, file: !2, line: 1821, column: 9)
!3558 = !DILocalVariable(name: "bit_pos_a", scope: !3559, file: !2, line: 1838, type: !18)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !2, line: 1837, column: 7)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !2, line: 1834, column: 10)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 1833, column: 5)
!3562 = distinct !DILexicalBlock(scope: !3543, file: !2, line: 1832, column: 9)
!3563 = distinct !DIAssignID()
!3564 = !DILocation(line: 0, scope: !3475)
!3565 = distinct !DIAssignID()
!3566 = distinct !DIAssignID()
!3567 = !DILocation(line: 0, scope: !3482)
!3568 = distinct !DIAssignID()
!3569 = distinct !DIAssignID()
!3570 = !DILocation(line: 0, scope: !3493)
!3571 = distinct !DIAssignID()
!3572 = distinct !DIAssignID()
!3573 = !DILocation(line: 0, scope: !3504)
!3574 = distinct !DIAssignID()
!3575 = distinct !DIAssignID()
!3576 = !DILocation(line: 0, scope: !3515)
!3577 = distinct !DIAssignID()
!3578 = distinct !DIAssignID()
!3579 = !DILocation(line: 0, scope: !3531)
!3580 = distinct !DIAssignID()
!3581 = distinct !DIAssignID()
!3582 = !DILocation(line: 0, scope: !3543)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 0, scope: !3464)
!3585 = !DILocation(line: 1562, column: 30, scope: !3464)
!3586 = !DILocation(line: 1563, column: 36, scope: !3464)
!3587 = !DILocation(line: 1564, column: 45, scope: !3464)
!3588 = !DILocation(line: 1566, column: 36, scope: !3464)
!3589 = !DILocation(line: 1568, column: 7, scope: !3464)
!3590 = !DILocation(line: 1574, column: 5, scope: !3475)
!3591 = !DILocation(line: 1576, column: 48, scope: !3475)
!3592 = !DILocation(line: 1576, column: 5, scope: !3475)
!3593 = !DILocation(line: 1577, column: 5, scope: !3475)
!3594 = !DILocation(line: 1580, column: 17, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 1580, column: 9)
!3596 = !DILocation(line: 1580, column: 9, scope: !3595)
!3597 = !DILocation(line: 1580, column: 9, scope: !3475)
!3598 = !DILocation(line: 1582, column: 48, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !2, line: 1581, column: 5)
!3600 = !DILocation(line: 1582, column: 32, scope: !3599)
!3601 = !DILocalVariable(name: "neighbor_mb", arg: 1, scope: !3602, file: !2, line: 1533, type: !300)
!3602 = distinct !DISubprogram(name: "set_cbp_bit", scope: !2, file: !2, line: 1533, type: !3603, scopeLine: 1534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!18, !300}
!3605 = !{!3601}
!3606 = !DILocation(line: 0, scope: !3602, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 1582, column: 19, scope: !3599)
!3608 = !DILocation(line: 1535, column: 19, scope: !3609, inlinedAt: !3607)
!3609 = distinct !DILexicalBlock(scope: !3602, file: !2, line: 1535, column: 6)
!3610 = !DILocation(line: 1535, column: 27, scope: !3609, inlinedAt: !3607)
!3611 = !DILocation(line: 1535, column: 6, scope: !3602, inlinedAt: !3607)
!3612 = !DILocation(line: 1538, column: 32, scope: !3609, inlinedAt: !3607)
!3613 = !DILocation(line: 1538, column: 19, scope: !3609, inlinedAt: !3607)
!3614 = !DILocation(line: 1590, column: 13, scope: !3475)
!3615 = !DILocation(line: 1538, column: 5, scope: !3609, inlinedAt: !3607)
!3616 = !DILocation(line: 1585, column: 17, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 1585, column: 9)
!3618 = !DILocation(line: 1585, column: 9, scope: !3617)
!3619 = !DILocation(line: 1585, column: 9, scope: !3475)
!3620 = !DILocation(line: 1587, column: 47, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !2, line: 1586, column: 5)
!3622 = !DILocation(line: 1587, column: 31, scope: !3621)
!3623 = !DILocation(line: 0, scope: !3602, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1587, column: 18, scope: !3621)
!3625 = !DILocation(line: 1535, column: 19, scope: !3609, inlinedAt: !3624)
!3626 = !DILocation(line: 1535, column: 27, scope: !3609, inlinedAt: !3624)
!3627 = !DILocation(line: 1535, column: 6, scope: !3602, inlinedAt: !3624)
!3628 = !DILocation(line: 1538, column: 32, scope: !3609, inlinedAt: !3624)
!3629 = !DILocation(line: 1538, column: 19, scope: !3609, inlinedAt: !3624)
!3630 = !DILocation(line: 1538, column: 12, scope: !3609, inlinedAt: !3624)
!3631 = !DILocation(line: 1538, column: 5, scope: !3609, inlinedAt: !3624)
!3632 = !DILocation(line: 1592, column: 53, scope: !3475)
!3633 = !DILocation(line: 1592, column: 88, scope: !3475)
!3634 = !DILocation(line: 1592, column: 15, scope: !3475)
!3635 = !DILocation(line: 1596, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 1596, column: 9)
!3637 = !DILocation(line: 1596, column: 9, scope: !3475)
!3638 = !DILocation(line: 1598, column: 15, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 1597, column: 5)
!3640 = !DILocation(line: 1598, column: 27, scope: !3639)
!3641 = !DILocation(line: 1599, column: 5, scope: !3639)
!3642 = !DILocation(line: 1600, column: 3, scope: !3476)
!3643 = !DILocation(line: 1600, column: 3, scope: !3475)
!3644 = !DILocation(line: 1603, column: 31, scope: !3482)
!3645 = !DILocation(line: 1604, column: 31, scope: !3482)
!3646 = !DILocation(line: 1606, column: 32, scope: !3482)
!3647 = !DILocation(line: 1606, column: 24, scope: !3482)
!3648 = !DILocation(line: 1611, column: 5, scope: !3482)
!3649 = !DILocation(line: 1613, column: 35, scope: !3482)
!3650 = !DILocation(line: 1613, column: 54, scope: !3482)
!3651 = !DILocation(line: 1613, column: 5, scope: !3482)
!3652 = !DILocation(line: 1614, column: 42, scope: !3482)
!3653 = !DILocation(line: 1614, column: 5, scope: !3482)
!3654 = !DILocation(line: 1617, column: 17, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 1617, column: 9)
!3656 = !DILocation(line: 1617, column: 9, scope: !3655)
!3657 = !DILocation(line: 1617, column: 9, scope: !3482)
!3658 = !DILocation(line: 1619, column: 51, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !2, line: 1618, column: 5)
!3660 = !DILocation(line: 1619, column: 35, scope: !3659)
!3661 = !DILocalVariable(name: "neighbor_mb", arg: 1, scope: !3662, file: !2, line: 1541, type: !300)
!3662 = distinct !DISubprogram(name: "set_cbp_bit_ac", scope: !2, file: !2, line: 1541, type: !3663, scopeLine: 1542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!18, !300, !1023}
!3665 = !{!3661, !3666, !3667}
!3666 = !DILocalVariable(name: "block", arg: 2, scope: !3662, file: !2, line: 1541, type: !1023)
!3667 = !DILocalVariable(name: "bit_pos", scope: !3668, file: !2, line: 1547, type: !18)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !2, line: 1546, column: 3)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !2, line: 1543, column: 7)
!3670 = !DILocation(line: 0, scope: !3662, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1619, column: 19, scope: !3659)
!3672 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3671)
!3673 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3671)
!3674 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3671)
!3675 = !DILocation(line: 1619, column: 19, scope: !3659)
!3676 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3671)
!3677 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3671)
!3678 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3671)
!3679 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3671)
!3680 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3671)
!3681 = !DILocation(line: 0, scope: !3668, inlinedAt: !3671)
!3682 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3671)
!3683 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3671)
!3684 = !DILocation(line: 0, scope: !3254, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3671)
!3686 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3685)
!3687 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3685)
!3688 = !DILocation(line: 1622, column: 17, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 1622, column: 9)
!3690 = !DILocation(line: 1622, column: 9, scope: !3689)
!3691 = !DILocation(line: 1622, column: 9, scope: !3482)
!3692 = !DILocation(line: 1624, column: 50, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !2, line: 1623, column: 5)
!3694 = !DILocation(line: 1624, column: 34, scope: !3693)
!3695 = !DILocation(line: 0, scope: !3662, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 1624, column: 18, scope: !3693)
!3697 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3696)
!3698 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3696)
!3699 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3696)
!3700 = !DILocation(line: 1624, column: 18, scope: !3693)
!3701 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3696)
!3702 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3696)
!3703 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3696)
!3704 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3696)
!3705 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3696)
!3706 = !DILocation(line: 0, scope: !3668, inlinedAt: !3696)
!3707 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3696)
!3708 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3696)
!3709 = !DILocation(line: 0, scope: !3254, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3696)
!3711 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3710)
!3712 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3710)
!3713 = !DILocation(line: 1627, column: 13, scope: !3482)
!3714 = !DILocation(line: 1627, column: 25, scope: !3482)
!3715 = !DILocation(line: 1629, column: 44, scope: !3482)
!3716 = !DILocation(line: 1629, column: 88, scope: !3482)
!3717 = !DILocation(line: 1629, column: 15, scope: !3482)
!3718 = !DILocation(line: 1631, column: 9, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 1631, column: 9)
!3720 = !DILocation(line: 1631, column: 9, scope: !3482)
!3721 = !DILocation(line: 1634, column: 15, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !2, line: 1632, column: 5)
!3723 = !DILocation(line: 1634, column: 24, scope: !3722)
!3724 = !DILocation(line: 1634, column: 19, scope: !3722)
!3725 = !DILocation(line: 0, scope: !3437, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1635, column: 32, scope: !3722)
!3727 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !3726)
!3728 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !3726)
!3729 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !3726)
!3730 = !DILocation(line: 1635, column: 15, scope: !3722)
!3731 = !DILocation(line: 1635, column: 29, scope: !3722)
!3732 = !DILocation(line: 1636, column: 5, scope: !3722)
!3733 = !DILocation(line: 1637, column: 3, scope: !3483)
!3734 = !DILocation(line: 1637, column: 3, scope: !3482)
!3735 = !DILocation(line: 1640, column: 31, scope: !3493)
!3736 = !DILocation(line: 1641, column: 31, scope: !3493)
!3737 = !DILocation(line: 1643, column: 32, scope: !3493)
!3738 = !DILocation(line: 1643, column: 24, scope: !3493)
!3739 = !DILocation(line: 1648, column: 5, scope: !3493)
!3740 = !DILocation(line: 1650, column: 35, scope: !3493)
!3741 = !DILocation(line: 1650, column: 54, scope: !3493)
!3742 = !DILocation(line: 1650, column: 5, scope: !3493)
!3743 = !DILocation(line: 1651, column: 42, scope: !3493)
!3744 = !DILocation(line: 1651, column: 5, scope: !3493)
!3745 = !DILocation(line: 1654, column: 17, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 1654, column: 9)
!3747 = !DILocation(line: 1654, column: 9, scope: !3746)
!3748 = !DILocation(line: 1654, column: 9, scope: !3493)
!3749 = !DILocation(line: 1656, column: 51, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !2, line: 1655, column: 5)
!3751 = !DILocation(line: 1656, column: 35, scope: !3750)
!3752 = !DILocation(line: 0, scope: !3662, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 1656, column: 19, scope: !3750)
!3754 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3753)
!3755 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3753)
!3756 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3753)
!3757 = !DILocation(line: 1656, column: 19, scope: !3750)
!3758 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3753)
!3759 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3753)
!3760 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3753)
!3761 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3753)
!3762 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3753)
!3763 = !DILocation(line: 0, scope: !3668, inlinedAt: !3753)
!3764 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3753)
!3765 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3753)
!3766 = !DILocation(line: 0, scope: !3254, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3753)
!3768 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3767)
!3769 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3767)
!3770 = !DILocation(line: 1659, column: 17, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 1659, column: 9)
!3772 = !DILocation(line: 1659, column: 9, scope: !3771)
!3773 = !DILocation(line: 1659, column: 9, scope: !3493)
!3774 = !DILocation(line: 1661, column: 50, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3771, file: !2, line: 1660, column: 5)
!3776 = !DILocation(line: 1661, column: 34, scope: !3775)
!3777 = !DILocation(line: 0, scope: !3662, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1661, column: 18, scope: !3775)
!3779 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3778)
!3780 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3778)
!3781 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3778)
!3782 = !DILocation(line: 1661, column: 18, scope: !3775)
!3783 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3778)
!3784 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3778)
!3785 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3778)
!3786 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3778)
!3787 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3778)
!3788 = !DILocation(line: 0, scope: !3668, inlinedAt: !3778)
!3789 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3778)
!3790 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3778)
!3791 = !DILocation(line: 0, scope: !3254, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3778)
!3793 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3792)
!3794 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3792)
!3795 = !DILocation(line: 1664, column: 13, scope: !3493)
!3796 = !DILocation(line: 1664, column: 25, scope: !3493)
!3797 = !DILocation(line: 1666, column: 44, scope: !3493)
!3798 = !DILocation(line: 1666, column: 88, scope: !3493)
!3799 = !DILocation(line: 1666, column: 15, scope: !3493)
!3800 = !DILocation(line: 1668, column: 9, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 1668, column: 9)
!3802 = !DILocation(line: 1668, column: 9, scope: !3493)
!3803 = !DILocation(line: 1671, column: 15, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1669, column: 5)
!3805 = !DILocation(line: 1671, column: 24, scope: !3804)
!3806 = !DILocation(line: 1671, column: 19, scope: !3804)
!3807 = !DILocation(line: 1672, column: 46, scope: !3804)
!3808 = !DILocation(line: 1672, column: 15, scope: !3804)
!3809 = !DILocation(line: 1672, column: 29, scope: !3804)
!3810 = !DILocation(line: 1673, column: 5, scope: !3804)
!3811 = !DILocation(line: 1674, column: 3, scope: !3494)
!3812 = !DILocation(line: 1674, column: 3, scope: !3493)
!3813 = !DILocation(line: 1677, column: 31, scope: !3504)
!3814 = !DILocation(line: 1678, column: 31, scope: !3504)
!3815 = !DILocation(line: 1680, column: 32, scope: !3504)
!3816 = !DILocation(line: 1680, column: 24, scope: !3504)
!3817 = !DILocation(line: 1685, column: 5, scope: !3504)
!3818 = !DILocation(line: 1687, column: 35, scope: !3504)
!3819 = !DILocation(line: 1687, column: 54, scope: !3504)
!3820 = !DILocation(line: 1687, column: 5, scope: !3504)
!3821 = !DILocation(line: 1688, column: 42, scope: !3504)
!3822 = !DILocation(line: 1688, column: 5, scope: !3504)
!3823 = !DILocation(line: 1691, column: 17, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3504, file: !2, line: 1691, column: 9)
!3825 = !DILocation(line: 1691, column: 9, scope: !3824)
!3826 = !DILocation(line: 1691, column: 9, scope: !3504)
!3827 = !DILocation(line: 1693, column: 51, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !2, line: 1692, column: 5)
!3829 = !DILocation(line: 1693, column: 35, scope: !3828)
!3830 = !DILocation(line: 0, scope: !3662, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 1693, column: 19, scope: !3828)
!3832 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3831)
!3833 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3831)
!3834 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3831)
!3835 = !DILocation(line: 1693, column: 19, scope: !3828)
!3836 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3831)
!3837 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3831)
!3838 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3831)
!3839 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3831)
!3840 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3831)
!3841 = !DILocation(line: 0, scope: !3668, inlinedAt: !3831)
!3842 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3831)
!3843 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3831)
!3844 = !DILocation(line: 0, scope: !3254, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3831)
!3846 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3845)
!3847 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3845)
!3848 = !DILocation(line: 1696, column: 17, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3504, file: !2, line: 1696, column: 9)
!3850 = !DILocation(line: 1696, column: 9, scope: !3849)
!3851 = !DILocation(line: 1696, column: 9, scope: !3504)
!3852 = !DILocation(line: 1698, column: 50, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !2, line: 1697, column: 5)
!3854 = !DILocation(line: 1698, column: 34, scope: !3853)
!3855 = !DILocation(line: 0, scope: !3662, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1698, column: 18, scope: !3853)
!3857 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3856)
!3858 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3856)
!3859 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3856)
!3860 = !DILocation(line: 1698, column: 18, scope: !3853)
!3861 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3856)
!3862 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3856)
!3863 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3856)
!3864 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3856)
!3865 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3856)
!3866 = !DILocation(line: 0, scope: !3668, inlinedAt: !3856)
!3867 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3856)
!3868 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3856)
!3869 = !DILocation(line: 0, scope: !3254, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3856)
!3871 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3870)
!3872 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3870)
!3873 = !DILocation(line: 1701, column: 13, scope: !3504)
!3874 = !DILocation(line: 1701, column: 25, scope: !3504)
!3875 = !DILocation(line: 1703, column: 44, scope: !3504)
!3876 = !DILocation(line: 1703, column: 88, scope: !3504)
!3877 = !DILocation(line: 1703, column: 15, scope: !3504)
!3878 = !DILocation(line: 1705, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3504, file: !2, line: 1705, column: 9)
!3880 = !DILocation(line: 1705, column: 9, scope: !3504)
!3881 = !DILocation(line: 1708, column: 15, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3879, file: !2, line: 1706, column: 5)
!3883 = !DILocation(line: 1708, column: 24, scope: !3882)
!3884 = !DILocation(line: 1708, column: 19, scope: !3882)
!3885 = !DILocation(line: 1710, column: 46, scope: !3882)
!3886 = !DILocation(line: 1710, column: 15, scope: !3882)
!3887 = !DILocation(line: 1710, column: 29, scope: !3882)
!3888 = !DILocation(line: 1711, column: 5, scope: !3882)
!3889 = !DILocation(line: 1712, column: 3, scope: !3505)
!3890 = !DILocation(line: 1712, column: 3, scope: !3504)
!3891 = !DILocation(line: 1715, column: 31, scope: !3515)
!3892 = !DILocation(line: 1716, column: 31, scope: !3515)
!3893 = !DILocation(line: 1718, column: 32, scope: !3515)
!3894 = !DILocation(line: 1718, column: 24, scope: !3515)
!3895 = !DILocation(line: 1723, column: 5, scope: !3515)
!3896 = !DILocation(line: 1725, column: 35, scope: !3515)
!3897 = !DILocation(line: 1725, column: 54, scope: !3515)
!3898 = !DILocation(line: 1725, column: 5, scope: !3515)
!3899 = !DILocation(line: 1726, column: 42, scope: !3515)
!3900 = !DILocation(line: 1726, column: 5, scope: !3515)
!3901 = !DILocation(line: 1729, column: 17, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3515, file: !2, line: 1729, column: 9)
!3903 = !DILocation(line: 1729, column: 9, scope: !3902)
!3904 = !DILocation(line: 1729, column: 9, scope: !3515)
!3905 = !DILocation(line: 1731, column: 51, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !2, line: 1730, column: 5)
!3907 = !DILocation(line: 1731, column: 35, scope: !3906)
!3908 = !DILocation(line: 0, scope: !3662, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 1731, column: 19, scope: !3906)
!3910 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3909)
!3911 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3909)
!3912 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3909)
!3913 = !DILocation(line: 1731, column: 19, scope: !3906)
!3914 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3909)
!3915 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3909)
!3916 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3909)
!3917 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3909)
!3918 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3909)
!3919 = !DILocation(line: 0, scope: !3668, inlinedAt: !3909)
!3920 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3909)
!3921 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3909)
!3922 = !DILocation(line: 0, scope: !3254, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3909)
!3924 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3923)
!3925 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3923)
!3926 = !DILocation(line: 1734, column: 17, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3515, file: !2, line: 1734, column: 9)
!3928 = !DILocation(line: 1734, column: 9, scope: !3927)
!3929 = !DILocation(line: 1734, column: 9, scope: !3515)
!3930 = !DILocation(line: 1736, column: 50, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1735, column: 5)
!3932 = !DILocation(line: 1736, column: 34, scope: !3931)
!3933 = !DILocation(line: 0, scope: !3662, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 1736, column: 18, scope: !3931)
!3935 = !DILocation(line: 1543, column: 20, scope: !3669, inlinedAt: !3934)
!3936 = !DILocation(line: 1543, column: 28, scope: !3669, inlinedAt: !3934)
!3937 = !DILocation(line: 1543, column: 7, scope: !3662, inlinedAt: !3934)
!3938 = !DILocation(line: 1736, column: 18, scope: !3931)
!3939 = !DILocation(line: 1547, column: 24, scope: !3668, inlinedAt: !3934)
!3940 = !DILocation(line: 1547, column: 33, scope: !3668, inlinedAt: !3934)
!3941 = !DILocation(line: 1547, column: 41, scope: !3668, inlinedAt: !3934)
!3942 = !DILocation(line: 1547, column: 21, scope: !3668, inlinedAt: !3934)
!3943 = !DILocation(line: 1547, column: 39, scope: !3668, inlinedAt: !3934)
!3944 = !DILocation(line: 0, scope: !3668, inlinedAt: !3934)
!3945 = !DILocation(line: 1548, column: 33, scope: !3668, inlinedAt: !3934)
!3946 = !DILocation(line: 1548, column: 20, scope: !3668, inlinedAt: !3934)
!3947 = !DILocation(line: 0, scope: !3254, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 1548, column: 12, scope: !3668, inlinedAt: !3934)
!3949 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !3948)
!3950 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !3948)
!3951 = !DILocation(line: 1739, column: 13, scope: !3515)
!3952 = !DILocation(line: 1739, column: 25, scope: !3515)
!3953 = !DILocation(line: 1741, column: 44, scope: !3515)
!3954 = !DILocation(line: 1741, column: 88, scope: !3515)
!3955 = !DILocation(line: 1741, column: 15, scope: !3515)
!3956 = !DILocation(line: 1743, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3515, file: !2, line: 1743, column: 9)
!3958 = !DILocation(line: 1743, column: 9, scope: !3515)
!3959 = !DILocation(line: 1746, column: 15, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 1744, column: 5)
!3961 = !DILocation(line: 1746, column: 24, scope: !3960)
!3962 = !DILocation(line: 1746, column: 19, scope: !3960)
!3963 = !DILocation(line: 0, scope: !3437, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 1748, column: 32, scope: !3960)
!3965 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !3964)
!3966 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !3964)
!3967 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !3964)
!3968 = !DILocation(line: 1748, column: 15, scope: !3960)
!3969 = !DILocation(line: 1748, column: 29, scope: !3960)
!3970 = !DILocation(line: 1749, column: 5, scope: !3960)
!3971 = !DILocation(line: 1750, column: 3, scope: !3516)
!3972 = !DILocation(line: 1750, column: 3, scope: !3515)
!3973 = !DILocation(line: 1753, column: 31, scope: !3526)
!3974 = !DILocation(line: 0, scope: !3526)
!3975 = !DILocation(line: 1754, column: 31, scope: !3526)
!3976 = !DILocation(line: 1756, column: 25, scope: !3526)
!3977 = !DILocation(line: 1756, column: 34, scope: !3526)
!3978 = !DILocation(line: 1756, column: 29, scope: !3526)
!3979 = !DILocation(line: 1758, column: 42, scope: !3526)
!3980 = !DILocation(line: 1758, column: 13, scope: !3526)
!3981 = !DILocation(line: 1758, column: 25, scope: !3526)
!3982 = !DILocation(line: 1759, column: 3, scope: !3526)
!3983 = !DILocation(line: 1762, column: 33, scope: !3531)
!3984 = !DILocation(line: 1762, column: 24, scope: !3531)
!3985 = !DILocation(line: 1765, column: 24, scope: !3531)
!3986 = !DILocation(line: 1766, column: 32, scope: !3531)
!3987 = !DILocation(line: 1766, column: 24, scope: !3531)
!3988 = !DILocation(line: 1771, column: 5, scope: !3531)
!3989 = !DILocation(line: 1773, column: 47, scope: !3531)
!3990 = !DILocation(line: 1773, column: 5, scope: !3531)
!3991 = !DILocation(line: 1774, column: 5, scope: !3531)
!3992 = !DILocation(line: 1777, column: 17, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1777, column: 9)
!3994 = !DILocation(line: 1777, column: 9, scope: !3993)
!3995 = !DILocation(line: 1777, column: 9, scope: !3531)
!3996 = !DILocation(line: 1779, column: 26, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !2, line: 1779, column: 10)
!3998 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 1778, column: 5)
!3999 = !DILocation(line: 1779, column: 10, scope: !3997)
!4000 = !DILocation(line: 1779, column: 35, scope: !3997)
!4001 = !DILocation(line: 1779, column: 42, scope: !3997)
!4002 = !DILocation(line: 1779, column: 10, scope: !3998)
!4003 = !DILocation(line: 1782, column: 54, scope: !3997)
!4004 = !DILocation(line: 1782, column: 29, scope: !3997)
!4005 = !DILocation(line: 0, scope: !3254, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 1782, column: 21, scope: !3997)
!4007 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !4006)
!4008 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !4006)
!4009 = !DILocation(line: 1785, column: 17, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1785, column: 9)
!4011 = !DILocation(line: 1785, column: 9, scope: !4010)
!4012 = !DILocation(line: 1785, column: 9, scope: !3531)
!4013 = !DILocation(line: 1787, column: 26, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !2, line: 1787, column: 10)
!4015 = distinct !DILexicalBlock(scope: !4010, file: !2, line: 1786, column: 5)
!4016 = !DILocation(line: 1787, column: 10, scope: !4014)
!4017 = !DILocation(line: 1787, column: 35, scope: !4014)
!4018 = !DILocation(line: 1787, column: 42, scope: !4014)
!4019 = !DILocation(line: 1787, column: 10, scope: !4015)
!4020 = !DILocation(line: 1790, column: 53, scope: !4014)
!4021 = !DILocation(line: 1790, column: 28, scope: !4014)
!4022 = !DILocation(line: 0, scope: !3254, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1790, column: 20, scope: !4014)
!4024 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !4023)
!4025 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !4023)
!4026 = !DILocation(line: 1793, column: 13, scope: !3531)
!4027 = !DILocation(line: 1793, column: 25, scope: !3531)
!4028 = !DILocation(line: 1795, column: 53, scope: !3531)
!4029 = !DILocation(line: 1795, column: 67, scope: !3531)
!4030 = !DILocation(line: 1795, column: 44, scope: !3531)
!4031 = !DILocation(line: 1795, column: 88, scope: !3531)
!4032 = !DILocation(line: 1795, column: 15, scope: !3531)
!4033 = !DILocation(line: 1797, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3531, file: !2, line: 1797, column: 9)
!4035 = !DILocation(line: 1797, column: 9, scope: !3531)
!4036 = !DILocation(line: 0, scope: !3437, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 1801, column: 32, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !2, line: 1798, column: 5)
!4039 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !4037)
!4040 = !DILocation(line: 1801, column: 15, scope: !4038)
!4041 = !DILocation(line: 1801, column: 29, scope: !4038)
!4042 = !DILocation(line: 1802, column: 5, scope: !4038)
!4043 = !DILocation(line: 1803, column: 3, scope: !3532)
!4044 = !DILocation(line: 1803, column: 3, scope: !3531)
!4045 = !DILocation(line: 1806, column: 33, scope: !3543)
!4046 = !DILocation(line: 1806, column: 24, scope: !3543)
!4047 = !DILocation(line: 1807, column: 31, scope: !3543)
!4048 = !DILocation(line: 1808, column: 31, scope: !3543)
!4049 = !DILocation(line: 1809, column: 24, scope: !3543)
!4050 = !DILocation(line: 1810, column: 32, scope: !3543)
!4051 = !DILocation(line: 1810, column: 24, scope: !3543)
!4052 = !DILocation(line: 1815, column: 5, scope: !3543)
!4053 = !DILocation(line: 1817, column: 35, scope: !3543)
!4054 = !DILocation(line: 1817, column: 47, scope: !3543)
!4055 = !DILocation(line: 1817, column: 5, scope: !3543)
!4056 = !DILocation(line: 1818, column: 42, scope: !3543)
!4057 = !DILocation(line: 1818, column: 5, scope: !3543)
!4058 = !DILocation(line: 1821, column: 17, scope: !3557)
!4059 = !DILocation(line: 1821, column: 9, scope: !3557)
!4060 = !DILocation(line: 1821, column: 9, scope: !3543)
!4061 = !DILocation(line: 1823, column: 26, scope: !3555)
!4062 = !DILocation(line: 1823, column: 10, scope: !3555)
!4063 = !DILocation(line: 1823, column: 35, scope: !3555)
!4064 = !DILocation(line: 1823, column: 42, scope: !3555)
!4065 = !DILocation(line: 1823, column: 10, scope: !3556)
!4066 = !DILocation(line: 1827, column: 35, scope: !3554)
!4067 = !DILocation(line: 1827, column: 27, scope: !3554)
!4068 = !DILocation(line: 1827, column: 26, scope: !3554)
!4069 = !DILocation(line: 1827, column: 47, scope: !3554)
!4070 = !DILocation(line: 1827, column: 39, scope: !3554)
!4071 = !DILocation(line: 0, scope: !3554)
!4072 = !DILocation(line: 1828, column: 54, scope: !3554)
!4073 = !DILocation(line: 1828, column: 29, scope: !3554)
!4074 = !DILocation(line: 1827, column: 37, scope: !3554)
!4075 = !DILocation(line: 1828, column: 71, scope: !3554)
!4076 = !DILocation(line: 0, scope: !3254, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 1828, column: 21, scope: !3554)
!4078 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !4077)
!4079 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !4077)
!4080 = !DILocation(line: 1832, column: 17, scope: !3562)
!4081 = !DILocation(line: 1832, column: 9, scope: !3562)
!4082 = !DILocation(line: 1832, column: 9, scope: !3543)
!4083 = !DILocation(line: 1834, column: 26, scope: !3560)
!4084 = !DILocation(line: 1834, column: 10, scope: !3560)
!4085 = !DILocation(line: 1834, column: 35, scope: !3560)
!4086 = !DILocation(line: 1834, column: 42, scope: !3560)
!4087 = !DILocation(line: 1834, column: 10, scope: !3561)
!4088 = !DILocation(line: 1838, column: 35, scope: !3559)
!4089 = !DILocation(line: 1838, column: 27, scope: !3559)
!4090 = !DILocation(line: 1838, column: 26, scope: !3559)
!4091 = !DILocation(line: 1838, column: 47, scope: !3559)
!4092 = !DILocation(line: 1838, column: 39, scope: !3559)
!4093 = !DILocation(line: 0, scope: !3559)
!4094 = !DILocation(line: 1839, column: 53, scope: !3559)
!4095 = !DILocation(line: 1839, column: 28, scope: !3559)
!4096 = !DILocation(line: 1838, column: 37, scope: !3559)
!4097 = !DILocation(line: 1839, column: 69, scope: !3559)
!4098 = !DILocation(line: 0, scope: !3254, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 1839, column: 20, scope: !3559)
!4100 = !DILocation(line: 269, column: 20, scope: !3254, inlinedAt: !4099)
!4101 = !DILocation(line: 269, column: 10, scope: !3254, inlinedAt: !4099)
!4102 = !DILocation(line: 1843, column: 13, scope: !3543)
!4103 = !DILocation(line: 1843, column: 25, scope: !3543)
!4104 = !DILocation(line: 1845, column: 53, scope: !3543)
!4105 = !DILocation(line: 1845, column: 67, scope: !3543)
!4106 = !DILocation(line: 1845, column: 44, scope: !3543)
!4107 = !DILocation(line: 1845, column: 88, scope: !3543)
!4108 = !DILocation(line: 1845, column: 15, scope: !3543)
!4109 = !DILocation(line: 1847, column: 9, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !3543, file: !2, line: 1847, column: 9)
!4111 = !DILocation(line: 1847, column: 9, scope: !3543)
!4112 = !DILocation(line: 1850, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !2, line: 1848, column: 5)
!4114 = !DILocation(line: 1850, column: 14, scope: !4113)
!4115 = !DILocation(line: 0, scope: !3437, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 1851, column: 32, scope: !4113)
!4117 = !DILocation(line: 259, column: 13, scope: !3437, inlinedAt: !4116)
!4118 = !DILocation(line: 259, column: 10, scope: !3437, inlinedAt: !4116)
!4119 = !DILocation(line: 259, column: 25, scope: !3437, inlinedAt: !4116)
!4120 = !DILocation(line: 1851, column: 15, scope: !4113)
!4121 = !DILocation(line: 1851, column: 29, scope: !4113)
!4122 = !DILocation(line: 1852, column: 5, scope: !4113)
!4123 = !DILocation(line: 1853, column: 3, scope: !3532)
!4124 = !DILocation(line: 1854, column: 3, scope: !3464)
!4125 = distinct !DISubprogram(name: "readRunLevel_CABAC", scope: !2, file: !2, line: 2039, type: !1494, scopeLine: 2042, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4126)
!4126 = !{!4127, !4128, !4129, !4130, !4131}
!4127 = !DILocalVariable(name: "currMB", arg: 1, scope: !4125, file: !2, line: 2039, type: !300)
!4128 = !DILocalVariable(name: "se", arg: 2, scope: !4125, file: !2, line: 2040, type: !1169)
!4129 = !DILocalVariable(name: "dep_dp", arg: 3, scope: !4125, file: !2, line: 2041, type: !179)
!4130 = !DILocalVariable(name: "currSlice", scope: !4125, file: !2, line: 2043, type: !653)
!4131 = !DILocalVariable(name: "coeff_ctr", scope: !4125, file: !2, line: 2044, type: !191)
!4132 = !DILocation(line: 0, scope: !4125)
!4133 = !DILocation(line: 2043, column: 30, scope: !4125)
!4134 = !DILocation(line: 2044, column: 33, scope: !4125)
!4135 = !DILocation(line: 2047, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 2047, column: 7)
!4137 = !DILocation(line: 2047, column: 18, scope: !4136)
!4138 = !DILocation(line: 2047, column: 7, scope: !4125)
!4139 = !DILocation(line: 2050, column: 31, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !2, line: 2050, column: 9)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !2, line: 2048, column: 3)
!4142 = !DILocation(line: 2050, column: 81, scope: !4140)
!4143 = !DILocation(line: 2050, column: 23, scope: !4140)
!4144 = !DILocation(line: 2050, column: 21, scope: !4140)
!4145 = !DILocation(line: 2050, column: 92, scope: !4140)
!4146 = !DILocation(line: 2050, column: 9, scope: !4141)
!4147 = !DILocation(line: 2053, column: 63, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4140, file: !2, line: 2051, column: 5)
!4149 = !DILocation(line: 2053, column: 83, scope: !4148)
!4150 = !DILocalVariable(name: "currMB", arg: 1, scope: !4151, file: !2, line: 1932, type: !300)
!4151 = distinct !DISubprogram(name: "read_significance_map", scope: !2, file: !2, line: 1932, type: !4152, scopeLine: 1936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!18, !300, !179, !18, !191}
!4154 = !{!4150, !4155, !4156, !4157, !4158, !4159, !4160, !4162, !4163, !4164, !4165, !4166, !4167}
!4155 = !DILocalVariable(name: "dep_dp", arg: 2, scope: !4151, file: !2, line: 1933, type: !179)
!4156 = !DILocalVariable(name: "type", arg: 3, scope: !4151, file: !2, line: 1934, type: !18)
!4157 = !DILocalVariable(name: "coeff", arg: 4, scope: !4151, file: !2, line: 1935, type: !191)
!4158 = !DILocalVariable(name: "currSlice", scope: !4151, file: !2, line: 1937, type: !653)
!4159 = !DILocalVariable(name: "fld", scope: !4151, file: !2, line: 1938, type: !18)
!4160 = !DILocalVariable(name: "pos2ctx_Map", scope: !4151, file: !2, line: 1939, type: !4161)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!4162 = !DILocalVariable(name: "map_ctx", scope: !4151, file: !2, line: 1941, type: !192)
!4163 = !DILocalVariable(name: "last_ctx", scope: !4151, file: !2, line: 1942, type: !192)
!4164 = !DILocalVariable(name: "i", scope: !4151, file: !2, line: 1944, type: !18)
!4165 = !DILocalVariable(name: "coeff_ctr", scope: !4151, file: !2, line: 1945, type: !18)
!4166 = !DILocalVariable(name: "i0", scope: !4151, file: !2, line: 1946, type: !18)
!4167 = !DILocalVariable(name: "i1", scope: !4151, file: !2, line: 1947, type: !18)
!4168 = !DILocation(line: 0, scope: !4151, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 2053, column: 20, scope: !4148)
!4170 = !DILocation(line: 1937, column: 30, scope: !4151, inlinedAt: !4169)
!4171 = !DILocation(line: 1938, column: 43, scope: !4151, inlinedAt: !4169)
!4172 = !DILocation(line: 1938, column: 52, scope: !4151, inlinedAt: !4169)
!4173 = !DILocation(line: 1938, column: 60, scope: !4151, inlinedAt: !4169)
!4174 = !DILocation(line: 1938, column: 71, scope: !4151, inlinedAt: !4169)
!4175 = !DILocation(line: 1939, column: 30, scope: !4151, inlinedAt: !4169)
!4176 = !DILocation(line: 1941, column: 32, scope: !4151, inlinedAt: !4169)
!4177 = !DILocation(line: 1941, column: 43, scope: !4151, inlinedAt: !4169)
!4178 = !DILocation(line: 1941, column: 52, scope: !4151, inlinedAt: !4169)
!4179 = !DILocation(line: 1941, column: 71, scope: !4151, inlinedAt: !4169)
!4180 = !DILocation(line: 1942, column: 52, scope: !4151, inlinedAt: !4169)
!4181 = !DILocation(line: 1942, column: 71, scope: !4151, inlinedAt: !4169)
!4182 = !DILocation(line: 1942, column: 32, scope: !4151, inlinedAt: !4169)
!4183 = !DILocation(line: 1947, column: 21, scope: !4151, inlinedAt: !4169)
!4184 = !DILocation(line: 1949, column: 8, scope: !4185, inlinedAt: !4169)
!4185 = distinct !DILexicalBlock(scope: !4151, file: !2, line: 1949, column: 7)
!4186 = !DILocation(line: 1949, column: 7, scope: !4151, inlinedAt: !4169)
!4187 = !DILocation(line: 1955, column: 3, scope: !4188, inlinedAt: !4169)
!4188 = distinct !DILexicalBlock(scope: !4151, file: !2, line: 1955, column: 3)
!4189 = !DILocation(line: 1958, column: 50, scope: !4190, inlinedAt: !4169)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !2, line: 1958, column: 9)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 1956, column: 3)
!4192 = distinct !DILexicalBlock(scope: !4188, file: !2, line: 1955, column: 3)
!4193 = !DILocation(line: 1958, column: 48, scope: !4190, inlinedAt: !4169)
!4194 = !DILocation(line: 1958, column: 9, scope: !4190, inlinedAt: !4169)
!4195 = !DILocation(line: 0, scope: !4190, inlinedAt: !4169)
!4196 = !DILocation(line: 1958, column: 9, scope: !4191, inlinedAt: !4169)
!4197 = !DILocation(line: 1960, column: 18, scope: !4198, inlinedAt: !4169)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !2, line: 1959, column: 5)
!4199 = !DILocation(line: 1961, column: 7, scope: !4198, inlinedAt: !4169)
!4200 = !DILocation(line: 1963, column: 51, scope: !4201, inlinedAt: !4169)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !2, line: 1963, column: 11)
!4202 = !DILocation(line: 1963, column: 49, scope: !4201, inlinedAt: !4169)
!4203 = !DILocation(line: 1963, column: 11, scope: !4201, inlinedAt: !4169)
!4204 = !DILocation(line: 1963, column: 11, scope: !4198, inlinedAt: !4169)
!4205 = !DILocation(line: 1965, column: 30, scope: !4206, inlinedAt: !4169)
!4206 = distinct !DILexicalBlock(scope: !4201, file: !2, line: 1964, column: 7)
!4207 = !DILocation(line: 1965, column: 26, scope: !4206, inlinedAt: !4169)
!4208 = !DILocation(line: 1965, column: 35, scope: !4206, inlinedAt: !4169)
!4209 = !DILocation(line: 1965, column: 9, scope: !4206, inlinedAt: !4169)
!4210 = !DILocation(line: 1967, column: 7, scope: !4206, inlinedAt: !4169)
!4211 = !DILocation(line: 1971, column: 18, scope: !4212, inlinedAt: !4169)
!4212 = distinct !DILexicalBlock(scope: !4190, file: !2, line: 1970, column: 5)
!4213 = !DILocation(line: 0, scope: !4188, inlinedAt: !4169)
!4214 = !DILocation(line: 1955, column: 22, scope: !4192, inlinedAt: !4169)
!4215 = !DILocation(line: 1955, column: 16, scope: !4192, inlinedAt: !4169)
!4216 = distinct !{!4216, !4187, !4217}
!4217 = !DILocation(line: 1973, column: 3, scope: !4188, inlinedAt: !4169)
!4218 = !DILocation(line: 1975, column: 9, scope: !4219, inlinedAt: !4169)
!4219 = distinct !DILexicalBlock(scope: !4151, file: !2, line: 1975, column: 7)
!4220 = !DILocation(line: 1975, column: 7, scope: !4151, inlinedAt: !4169)
!4221 = !DILocation(line: 1977, column: 12, scope: !4222, inlinedAt: !4169)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !2, line: 1976, column: 3)
!4223 = !DILocation(line: 1978, column: 5, scope: !4222, inlinedAt: !4169)
!4224 = !DILocation(line: 1979, column: 3, scope: !4222, inlinedAt: !4169)
!4225 = !DILocation(line: 2053, column: 18, scope: !4148)
!4226 = !DILocation(line: 2056, column: 60, scope: !4148)
!4227 = !DILocation(line: 2056, column: 73, scope: !4148)
!4228 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !4229, file: !2, line: 1992, type: !179)
!4229 = distinct !DISubprogram(name: "read_significant_coefficients", scope: !2, file: !2, line: 1992, type: !4230, scopeLine: 1996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !179, !151, !18, !191}
!4232 = !{!4228, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4233 = !DILocalVariable(name: "tex_ctx", arg: 2, scope: !4229, file: !2, line: 1993, type: !151)
!4234 = !DILocalVariable(name: "type", arg: 3, scope: !4229, file: !2, line: 1994, type: !18)
!4235 = !DILocalVariable(name: "coeff", arg: 4, scope: !4229, file: !2, line: 1995, type: !191)
!4236 = !DILocalVariable(name: "i", scope: !4229, file: !2, line: 1997, type: !18)
!4237 = !DILocalVariable(name: "ctx", scope: !4229, file: !2, line: 1997, type: !18)
!4238 = !DILocalVariable(name: "c1", scope: !4229, file: !2, line: 1998, type: !18)
!4239 = !DILocalVariable(name: "c2", scope: !4229, file: !2, line: 1999, type: !18)
!4240 = !DILocalVariable(name: "one_contexts", scope: !4229, file: !2, line: 2000, type: !193)
!4241 = !DILocalVariable(name: "abs_contexts", scope: !4229, file: !2, line: 2001, type: !193)
!4242 = !DILocalVariable(name: "max_type", scope: !4229, file: !2, line: 2002, type: !18)
!4243 = !DILocalVariable(name: "cof", scope: !4229, file: !2, line: 2003, type: !191)
!4244 = !DILocation(line: 0, scope: !4229, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 2056, column: 7, scope: !4148)
!4246 = !DILocation(line: 2000, column: 42, scope: !4229, inlinedAt: !4245)
!4247 = !DILocation(line: 2000, column: 55, scope: !4229, inlinedAt: !4245)
!4248 = !DILocation(line: 2000, column: 33, scope: !4229, inlinedAt: !4245)
!4249 = !DILocation(line: 2001, column: 42, scope: !4229, inlinedAt: !4245)
!4250 = !DILocation(line: 2001, column: 55, scope: !4229, inlinedAt: !4245)
!4251 = !DILocation(line: 2001, column: 33, scope: !4229, inlinedAt: !4245)
!4252 = !DILocation(line: 2002, column: 18, scope: !4229, inlinedAt: !4245)
!4253 = !DILocation(line: 2003, column: 21, scope: !4229, inlinedAt: !4245)
!4254 = !DILocation(line: 2005, column: 10, scope: !4255, inlinedAt: !4245)
!4255 = distinct !DILexicalBlock(scope: !4229, file: !2, line: 2005, column: 3)
!4256 = !DILocation(line: 2003, column: 15, scope: !4229, inlinedAt: !4245)
!4257 = !DILocation(line: 2005, column: 3, scope: !4255, inlinedAt: !4245)
!4258 = !DILocation(line: 2007, column: 9, scope: !4259, inlinedAt: !4245)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !2, line: 2007, column: 9)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !2, line: 2006, column: 3)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !2, line: 2005, column: 3)
!4262 = !DILocation(line: 2007, column: 14, scope: !4259, inlinedAt: !4245)
!4263 = !DILocation(line: 2007, column: 9, scope: !4260, inlinedAt: !4245)
!4264 = !DILocalVariable(name: "a", arg: 1, scope: !4265, file: !205, line: 42, type: !18)
!4265 = distinct !DISubprogram(name: "imin", scope: !205, file: !205, line: 42, type: !4266, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!18, !18, !18}
!4268 = !{!4264, !4269}
!4269 = !DILocalVariable(name: "b", arg: 2, scope: !4265, file: !205, line: 42, type: !18)
!4270 = !DILocation(line: 0, scope: !4265, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 2009, column: 13, scope: !4272, inlinedAt: !4245)
!4272 = distinct !DILexicalBlock(scope: !4259, file: !2, line: 2008, column: 5)
!4273 = !DILocation(line: 44, column: 10, scope: !4265, inlinedAt: !4271)
!4274 = !DILocation(line: 2010, column: 57, scope: !4272, inlinedAt: !4245)
!4275 = !DILocation(line: 2010, column: 15, scope: !4272, inlinedAt: !4245)
!4276 = !DILocation(line: 2010, column: 12, scope: !4272, inlinedAt: !4245)
!4277 = !DILocation(line: 2012, column: 16, scope: !4278, inlinedAt: !4245)
!4278 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 2012, column: 11)
!4279 = !DILocation(line: 2012, column: 11, scope: !4272, inlinedAt: !4245)
!4280 = !DILocation(line: 2014, column: 23, scope: !4281, inlinedAt: !4245)
!4281 = distinct !DILexicalBlock(scope: !4278, file: !2, line: 2013, column: 7)
!4282 = !DILocation(line: 0, scope: !4265, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 2014, column: 15, scope: !4281, inlinedAt: !4245)
!4284 = !DILocation(line: 44, column: 10, scope: !4265, inlinedAt: !4283)
!4285 = !DILocation(line: 2015, column: 69, scope: !4281, inlinedAt: !4245)
!4286 = !DILocalVariable(name: "dep_dp", arg: 1, scope: !4287, file: !2, line: 2249, type: !179)
!4287 = distinct !DISubprogram(name: "unary_exp_golomb_level_decode", scope: !2, file: !2, line: 2249, type: !1529, scopeLine: 2251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4288)
!4288 = !{!4286, !4289, !4290, !4291, !4294, !4295}
!4289 = !DILocalVariable(name: "ctx", arg: 2, scope: !4287, file: !2, line: 2250, type: !192)
!4290 = !DILocalVariable(name: "symbol", scope: !4287, file: !2, line: 2252, type: !42)
!4291 = !DILocalVariable(name: "l", scope: !4292, file: !2, line: 2258, type: !42)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !2, line: 2257, column: 3)
!4293 = distinct !DILexicalBlock(scope: !4287, file: !2, line: 2254, column: 7)
!4294 = !DILocalVariable(name: "k", scope: !4292, file: !2, line: 2258, type: !42)
!4295 = !DILocalVariable(name: "exp_start", scope: !4292, file: !2, line: 2259, type: !42)
!4296 = !DILocation(line: 0, scope: !4287, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 2015, column: 17, scope: !4281, inlinedAt: !4245)
!4298 = !DILocation(line: 2252, column: 25, scope: !4287, inlinedAt: !4297)
!4299 = !DILocation(line: 2254, column: 13, scope: !4293, inlinedAt: !4297)
!4300 = !DILocation(line: 2254, column: 7, scope: !4287, inlinedAt: !4297)
!4301 = !DILocation(line: 0, scope: !4292, inlinedAt: !4297)
!4302 = !DILocation(line: 2265, column: 9, scope: !4303, inlinedAt: !4297)
!4303 = distinct !DILexicalBlock(scope: !4292, file: !2, line: 2264, column: 5)
!4304 = !DILocation(line: 2266, column: 7, scope: !4303, inlinedAt: !4297)
!4305 = !DILocation(line: 2267, column: 7, scope: !4303, inlinedAt: !4297)
!4306 = !DILocation(line: 2269, column: 14, scope: !4292, inlinedAt: !4297)
!4307 = !DILocation(line: 2269, column: 20, scope: !4292, inlinedAt: !4297)
!4308 = !DILocation(line: 2268, column: 5, scope: !4303, inlinedAt: !4297)
!4309 = distinct !{!4309, !4310, !4311}
!4310 = !DILocation(line: 2263, column: 5, scope: !4292, inlinedAt: !4297)
!4311 = !DILocation(line: 2269, column: 39, scope: !4292, inlinedAt: !4297)
!4312 = !DILocation(line: 2270, column: 9, scope: !4292, inlinedAt: !4297)
!4313 = !DILocation(line: 0, scope: !2157, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 2271, column: 17, scope: !4315, inlinedAt: !4297)
!4315 = distinct !DILexicalBlock(scope: !4292, file: !2, line: 2270, column: 9)
!4316 = !DILocation(line: 2226, column: 9, scope: !2171, inlinedAt: !4314)
!4317 = !DILocation(line: 2227, column: 11, scope: !2173, inlinedAt: !4314)
!4318 = !DILocation(line: 2227, column: 9, scope: !2171, inlinedAt: !4314)
!4319 = !DILocation(line: 2233, column: 11, scope: !2157, inlinedAt: !4314)
!4320 = !DILocation(line: 2232, column: 3, scope: !2171, inlinedAt: !4314)
!4321 = distinct !{!4321, !4322, !4323}
!4322 = !DILocation(line: 2224, column: 3, scope: !2157, inlinedAt: !4314)
!4323 = !DILocation(line: 2233, column: 14, scope: !2157, inlinedAt: !4314)
!4324 = !DILocation(line: 2235, column: 3, scope: !2157, inlinedAt: !4314)
!4325 = !DILocation(line: 2235, column: 11, scope: !2157, inlinedAt: !4314)
!4326 = !DILocation(line: 2236, column: 9, scope: !2182, inlinedAt: !4314)
!4327 = !DILocation(line: 2236, column: 44, scope: !2182, inlinedAt: !4314)
!4328 = !DILocation(line: 2236, column: 9, scope: !2157, inlinedAt: !4314)
!4329 = distinct !{!4329, !4324, !4330}
!4330 = !DILocation(line: 2237, column: 29, scope: !2157, inlinedAt: !4314)
!4331 = !DILocation(line: 2239, column: 33, scope: !2157, inlinedAt: !4314)
!4332 = !DILocation(line: 2271, column: 52, scope: !4315, inlinedAt: !4297)
!4333 = !DILocation(line: 2271, column: 14, scope: !4315, inlinedAt: !4297)
!4334 = !DILocation(line: 2271, column: 7, scope: !4315, inlinedAt: !4297)
!4335 = !DILocation(line: 0, scope: !4293, inlinedAt: !4297)
!4336 = !DILocation(line: 2015, column: 14, scope: !4281, inlinedAt: !4245)
!4337 = !DILocation(line: 2017, column: 7, scope: !4281, inlinedAt: !4245)
!4338 = !DILocation(line: 2018, column: 16, scope: !4339, inlinedAt: !4245)
!4339 = distinct !DILexicalBlock(scope: !4278, file: !2, line: 2018, column: 16)
!4340 = !DILocation(line: 2018, column: 16, scope: !4278, inlinedAt: !4245)
!4341 = !DILocation(line: 2023, column: 11, scope: !4342, inlinedAt: !4245)
!4342 = distinct !DILexicalBlock(scope: !4272, file: !2, line: 2023, column: 11)
!4343 = !DILocation(line: 2023, column: 11, scope: !4272, inlinedAt: !4245)
!4344 = !DILocation(line: 2025, column: 14, scope: !4345, inlinedAt: !4245)
!4345 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 2024, column: 7)
!4346 = !DILocation(line: 2026, column: 7, scope: !4345, inlinedAt: !4245)
!4347 = !DILocation(line: 2028, column: 8, scope: !4260, inlinedAt: !4245)
!4348 = !DILocation(line: 2005, column: 31, scope: !4261, inlinedAt: !4245)
!4349 = !DILocation(line: 2005, column: 25, scope: !4261, inlinedAt: !4245)
!4350 = distinct !{!4350, !4257, !4351}
!4351 = !DILocation(line: 2029, column: 3, scope: !4255, inlinedAt: !4245)
!4352 = !DILocation(line: 2061, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 2061, column: 7)
!4354 = !DILocation(line: 2061, column: 7, scope: !4125)
!4355 = !DILocation(line: 2064, column: 14, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !2, line: 2064, column: 5)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !2, line: 2062, column: 3)
!4358 = !DILocation(line: 2064, scope: !4356)
!4359 = !DILocation(line: 2064, column: 54, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 2064, column: 5)
!4361 = !DILocation(line: 2064, column: 26, scope: !4360)
!4362 = !DILocation(line: 2064, column: 59, scope: !4360)
!4363 = !DILocation(line: 2064, column: 5, scope: !4356)
!4364 = !DILocation(line: 2064, column: 65, scope: !4360)
!4365 = !DILocation(line: 2064, column: 83, scope: !4360)
!4366 = distinct !{!4366, !4363, !4367}
!4367 = !DILocation(line: 2064, column: 96, scope: !4356)
!4368 = !DILocation(line: 2065, column: 49, scope: !4357)
!4369 = !DILocation(line: 2065, column: 18, scope: !4357)
!4370 = !DILocation(line: 2066, column: 3, scope: !4357)
!4371 = !DILocation(line: 2070, column: 22, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4353, file: !2, line: 2068, column: 3)
!4373 = !DILocation(line: 2070, column: 29, scope: !4372)
!4374 = !DILocation(line: 0, scope: !4353)
!4375 = !DILocation(line: 2073, column: 19, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 2073, column: 7)
!4377 = !DILocation(line: 2073, column: 22, scope: !4376)
!4378 = !DILocation(line: 2073, column: 7, scope: !4125)
!4379 = !DILocation(line: 2074, column: 16, scope: !4376)
!4380 = !DILocation(line: 2074, column: 20, scope: !4376)
!4381 = !DILocation(line: 2074, column: 5, scope: !4376)
!4382 = !DILocation(line: 2080, column: 1, scope: !4125)
!4383 = distinct !DISubprogram(name: "readSyntaxElement_CABAC", scope: !2, file: !2, line: 2088, type: !4384, scopeLine: 2089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!18, !300, !1169, !1149}
!4386 = !{!4387, !4388, !4389, !4390, !4391}
!4387 = !DILocalVariable(name: "currMB", arg: 1, scope: !4383, file: !2, line: 2088, type: !300)
!4388 = !DILocalVariable(name: "se", arg: 2, scope: !4383, file: !2, line: 2088, type: !1169)
!4389 = !DILocalVariable(name: "this_dataPart", arg: 3, scope: !4383, file: !2, line: 2088, type: !1149)
!4390 = !DILocalVariable(name: "dep_dp", scope: !4383, file: !2, line: 2090, type: !179)
!4391 = !DILocalVariable(name: "curr_len", scope: !4383, file: !2, line: 2091, type: !18)
!4392 = !DILocation(line: 0, scope: !4383)
!4393 = !DILocation(line: 2090, column: 52, scope: !4383)
!4394 = !DILocation(line: 2091, column: 18, scope: !4383)
!4395 = !DILocation(line: 2094, column: 7, scope: !4383)
!4396 = !DILocation(line: 2094, column: 3, scope: !4383)
!4397 = !DILocation(line: 2096, column: 14, scope: !4383)
!4398 = !DILocation(line: 2096, column: 40, scope: !4383)
!4399 = !DILocation(line: 2096, column: 7, scope: !4383)
!4400 = !DILocation(line: 2096, column: 11, scope: !4383)
!4401 = !DILocation(line: 2103, column: 3, scope: !4383)
!4402 = !DISubprogram(name: "arideco_bits_read", scope: !1528, file: !1528, line: 126, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!18, !179}
!4405 = distinct !DISubprogram(name: "cabac_startcode_follows", scope: !2, file: !2, line: 2185, type: !4406, scopeLine: 2186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!18, !653, !18}
!4408 = !{!4409, !4410, !4411, !4412, !4415, !4416}
!4409 = !DILocalVariable(name: "currSlice", arg: 1, scope: !4405, file: !2, line: 2185, type: !653)
!4410 = !DILocalVariable(name: "eos_bit", arg: 2, scope: !4405, file: !2, line: 2185, type: !18)
!4411 = !DILocalVariable(name: "bit", scope: !4405, file: !2, line: 2187, type: !42)
!4412 = !DILocalVariable(name: "partMap", scope: !4413, file: !2, line: 2191, type: !221)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !2, line: 2190, column: 3)
!4414 = distinct !DILexicalBlock(scope: !4405, file: !2, line: 2189, column: 7)
!4415 = !DILocalVariable(name: "dP", scope: !4413, file: !2, line: 2192, type: !1149)
!4416 = !DILocalVariable(name: "dep_dp", scope: !4413, file: !2, line: 2193, type: !179)
!4417 = !DILocation(line: 0, scope: !4405)
!4418 = !DILocation(line: 2189, column: 7, scope: !4414)
!4419 = !DILocation(line: 2189, column: 7, scope: !4405)
!4420 = !DILocation(line: 0, scope: !4413)
!4421 = !DILocation(line: 2192, column: 38, scope: !4413)
!4422 = !DILocation(line: 2193, column: 43, scope: !4413)
!4423 = !DILocation(line: 2195, column: 11, scope: !4413)
!4424 = !DILocation(line: 2207, column: 15, scope: !4405)
!4425 = !DILocation(line: 2207, column: 11, scope: !4405)
!4426 = !DILocation(line: 2201, column: 3, scope: !4413)
!4427 = !DILocation(line: 0, scope: !4414)
!4428 = !DILocation(line: 2207, column: 3, scope: !4405)
!4429 = distinct !DISubprogram(name: "readIPCM_CABAC", scope: !2, file: !2, line: 2325, type: !4430, scopeLine: 2326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !653, !1190}
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447}
!4433 = !DILocalVariable(name: "currSlice", arg: 1, scope: !4429, file: !2, line: 2325, type: !653)
!4434 = !DILocalVariable(name: "dP", arg: 2, scope: !4429, file: !2, line: 2325, type: !1190)
!4435 = !DILocalVariable(name: "p_Vid", scope: !4429, file: !2, line: 2327, type: !981)
!4436 = !DILocalVariable(name: "dec_picture", scope: !4429, file: !2, line: 2328, type: !824)
!4437 = !DILocalVariable(name: "currStream", scope: !4429, file: !2, line: 2329, type: !1154)
!4438 = !DILocalVariable(name: "dep", scope: !4429, file: !2, line: 2330, type: !179)
!4439 = !DILocalVariable(name: "buf", scope: !4429, file: !2, line: 2331, type: !188)
!4440 = !DILocalVariable(name: "BitstreamLengthInBits", scope: !4429, file: !2, line: 2332, type: !18)
!4441 = !DILocalVariable(name: "val", scope: !4429, file: !2, line: 2334, type: !18)
!4442 = !DILocalVariable(name: "bits_read", scope: !4429, file: !2, line: 2336, type: !18)
!4443 = !DILocalVariable(name: "bitoffset", scope: !4429, file: !2, line: 2337, type: !18)
!4444 = !DILocalVariable(name: "bitdepth", scope: !4429, file: !2, line: 2337, type: !18)
!4445 = !DILocalVariable(name: "uv", scope: !4429, file: !2, line: 2338, type: !18)
!4446 = !DILocalVariable(name: "i", scope: !4429, file: !2, line: 2338, type: !18)
!4447 = !DILocalVariable(name: "j", scope: !4429, file: !2, line: 2338, type: !18)
!4448 = distinct !DIAssignID()
!4449 = !DILocation(line: 0, scope: !4429)
!4450 = !DILocation(line: 2327, column: 39, scope: !4429)
!4451 = !DILocation(line: 2328, column: 45, scope: !4429)
!4452 = !DILocation(line: 2329, column: 31, scope: !4429)
!4453 = !DILocation(line: 2331, column: 27, scope: !4429)
!4454 = !DILocation(line: 2332, column: 47, scope: !4429)
!4455 = !DILocation(line: 2332, column: 64, scope: !4429)
!4456 = !DILocation(line: 2332, column: 70, scope: !4429)
!4457 = !DILocation(line: 2334, column: 3, scope: !4429)
!4458 = !DILocation(line: 2334, column: 7, scope: !4429)
!4459 = distinct !DIAssignID()
!4460 = !DILocation(line: 2340, column: 15, scope: !4429)
!4461 = !DILocation(line: 2340, column: 25, scope: !4429)
!4462 = !DILocation(line: 2340, column: 3, scope: !4429)
!4463 = !DILocation(line: 2342, column: 19, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4429, file: !2, line: 2341, column: 3)
!4465 = !DILocation(line: 2343, column: 20, scope: !4464)
!4466 = !DILocation(line: 2344, column: 12, scope: !4464)
!4467 = !DILocation(line: 2344, column: 26, scope: !4464)
!4468 = distinct !{!4468, !4462, !4469}
!4469 = !DILocation(line: 2345, column: 3, scope: !4429)
!4470 = !DILocation(line: 2347, column: 22, scope: !4429)
!4471 = !DILocation(line: 2347, column: 16, scope: !4429)
!4472 = !DILocation(line: 2347, column: 37, scope: !4429)
!4473 = !DILocation(line: 2350, column: 21, scope: !4429)
!4474 = !DILocation(line: 2350, column: 14, scope: !4429)
!4475 = !DILocation(line: 2351, column: 3, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4429, file: !2, line: 2351, column: 3)
!4477 = !DILocation(line: 2355, column: 20, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 2354, column: 5)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !2, line: 2353, column: 5)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !2, line: 2353, column: 5)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !2, line: 2352, column: 3)
!4482 = distinct !DILexicalBlock(scope: !4476, file: !2, line: 2351, column: 3)
!4483 = !DILocation(line: 2355, column: 17, scope: !4478)
!4484 = !DILocation(line: 2359, column: 33, scope: !4478)
!4485 = !DILocation(line: 2359, column: 18, scope: !4478)
!4486 = !DILocation(line: 2359, column: 7, scope: !4478)
!4487 = !DILocation(line: 2359, column: 31, scope: !4478)
!4488 = !DILocation(line: 2361, column: 17, scope: !4478)
!4489 = !DILocation(line: 2351, column: 27, scope: !4482)
!4490 = !DILocation(line: 2351, column: 12, scope: !4482)
!4491 = distinct !{!4491, !4475, !4492}
!4492 = !DILocation(line: 2363, column: 3, scope: !4476)
!4493 = !DILocation(line: 2366, column: 21, scope: !4429)
!4494 = !DILocation(line: 2366, column: 14, scope: !4429)
!4495 = !DILocation(line: 2367, column: 21, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4429, file: !2, line: 2367, column: 7)
!4497 = !DILocation(line: 2367, column: 39, scope: !4496)
!4498 = !DILocation(line: 2367, column: 50, scope: !4496)
!4499 = !DILocation(line: 2367, column: 61, scope: !4496)
!4500 = !DILocation(line: 2367, column: 88, scope: !4496)
!4501 = !DILocation(line: 2367, column: 7, scope: !4429)
!4502 = !DILocation(line: 2371, column: 29, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 2371, column: 7)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !2, line: 2371, column: 7)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 2370, column: 5)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !2, line: 2369, column: 5)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !2, line: 2369, column: 5)
!4508 = distinct !DILexicalBlock(scope: !4496, file: !2, line: 2368, column: 3)
!4509 = !DILocation(line: 2371, column: 20, scope: !4503)
!4510 = !DILocation(line: 2373, column: 31, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !2, line: 2373, column: 9)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !2, line: 2373, column: 9)
!4513 = distinct !DILexicalBlock(scope: !4503, file: !2, line: 2372, column: 7)
!4514 = !DILocation(line: 2373, column: 22, scope: !4511)
!4515 = !DILocation(line: 2373, column: 9, scope: !4512)
!4516 = !DILocation(line: 2375, column: 24, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4511, file: !2, line: 2374, column: 9)
!4518 = !DILocation(line: 2375, column: 21, scope: !4517)
!4519 = !DILocation(line: 2379, column: 38, scope: !4517)
!4520 = !DILocation(line: 2379, column: 22, scope: !4517)
!4521 = !DILocation(line: 2379, column: 11, scope: !4517)
!4522 = !DILocation(line: 2379, column: 36, scope: !4517)
!4523 = !DILocation(line: 2381, column: 21, scope: !4517)
!4524 = !DILocation(line: 2373, column: 45, scope: !4511)
!4525 = distinct !{!4525, !4515, !4526}
!4526 = !DILocation(line: 2382, column: 9, scope: !4512)
!4527 = !DILocation(line: 2371, column: 43, scope: !4503)
!4528 = !DILocation(line: 2371, column: 7, scope: !4504)
!4529 = distinct !{!4529, !4528, !4530, !4531}
!4530 = !DILocation(line: 2383, column: 7, scope: !4504)
!4531 = !{!"llvm.loop.unswitch.partial.disable"}
!4532 = !DILocation(line: 2336, column: 7, scope: !4429)
!4533 = !DILocation(line: 2387, column: 40, scope: !4429)
!4534 = !DILocation(line: 2387, column: 10, scope: !4429)
!4535 = !DILocation(line: 2387, column: 25, scope: !4429)
!4536 = !DILocation(line: 2388, column: 17, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4429, file: !2, line: 2388, column: 7)
!4538 = !DILocation(line: 2388, column: 7, scope: !4429)
!4539 = !DILocation(line: 2390, column: 14, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !2, line: 2389, column: 3)
!4541 = !DILocation(line: 2390, column: 5, scope: !4540)
!4542 = !DILocation(line: 2391, column: 3, scope: !4540)
!4543 = !DILocation(line: 2392, column: 1, scope: !4429)
!4544 = !DISubprogram(name: "GetBits", scope: !4545, file: !4545, line: 105, type: !4546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4545 = !DIFile(filename: "ldecod_src/inc/vlc.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "a07c7f22ff77ec9e539cc870eb854795")
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!18, !188, !18, !191, !18, !18}
