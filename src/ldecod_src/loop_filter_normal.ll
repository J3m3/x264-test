; ModuleID = 'ldecod_src/loop_filter_normal.c'
source_filename = "ldecod_src/loop_filter_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16, !dbg !0
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16, !dbg !83
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16, !dbg !90
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16, !dbg !92
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16, !dbg !97

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_normal(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 !dbg !122 {
entry:
    #dbg_value(ptr %p_Vid, !1295, !DIExpression(), !1296)
  %GetStrengthVer = getelementptr inbounds i8, ptr %p_Vid, i64 856760, !dbg !1297
  store ptr @GetStrengthVer, ptr %GetStrengthVer, align 8, !dbg !1298
  %GetStrengthHor = getelementptr inbounds i8, ptr %p_Vid, i64 856768, !dbg !1299
  store ptr @GetStrengthHor, ptr %GetStrengthHor, align 8, !dbg !1300
  %EdgeLoopLumaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856776, !dbg !1301
  store ptr @EdgeLoopLumaVer, ptr %EdgeLoopLumaVer, align 8, !dbg !1302
  %EdgeLoopLumaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856784, !dbg !1303
  store ptr @EdgeLoopLumaHor, ptr %EdgeLoopLumaHor, align 8, !dbg !1304
  %EdgeLoopChromaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856792, !dbg !1305
  store ptr @EdgeLoopChromaVer, ptr %EdgeLoopChromaVer, align 8, !dbg !1306
  %EdgeLoopChromaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856800, !dbg !1307
  store ptr @EdgeLoopChromaHor, ptr %EdgeLoopChromaHor, align 8, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthVer(ptr nocapture noundef writeonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 !dbg !1310 {
entry:
    #dbg_value(ptr %Strength, !1314, !DIExpression(), !1353)
    #dbg_value(ptr %MbQ, !1315, !DIExpression(), !1353)
    #dbg_value(i32 %edge, !1316, !DIExpression(), !1353)
    #dbg_value(i32 %mvlimit, !1317, !DIExpression(), !1353)
    #dbg_value(ptr %p, !1318, !DIExpression(), !1353)
  %0 = load ptr, ptr %MbQ, align 8, !dbg !1354
    #dbg_value(ptr %0, !1319, !DIExpression(), !1353)
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1355
  %1 = load i32, ptr %slice_type, align 4, !dbg !1355
  %.off = add i32 %1, -3, !dbg !1356
  %switch = icmp ult i32 %.off, 2, !dbg !1356
  br i1 %switch, label %if.then, label %if.else, !dbg !1356

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %edge, 0, !dbg !1357
  %cond = select i1 %cmp3, i8 4, i8 3, !dbg !1359
    #dbg_value(i8 %cond, !1320, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1353)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond, i64 16, i1 false), !dbg !1360
  br label %if.end196, !dbg !1361

if.else:                                          ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96, !dbg !1362
  %2 = load i32, ptr %is_intra_block, align 8, !dbg !1362
  %cmp8 = icmp eq i32 %2, 0, !dbg !1363
  br i1 %cmp8, label %if.then10, label %if.else178, !dbg !1364

if.then10:                                        ; preds = %if.else
  %sub = add i32 %edge, 15, !dbg !1365
    #dbg_value(i32 %edge, !1326, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !1366)
    #dbg_value(ptr %MbQ, !1367, !DIExpression(), !1374)
    #dbg_value(i32 %edge, !1372, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !1374)
    #dbg_value(i32 0, !1373, !DIExpression(), !1374)
  %cmp.i = icmp slt i32 %edge, 1, !dbg !1376
  br i1 %cmp.i, label %get_non_aff_neighbor_luma.exit, label %if.then17, !dbg !1378

get_non_aff_neighbor_luma.exit:                   ; preds = %if.then10
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 144, !dbg !1379
  %3 = load ptr, ptr %mbup.i, align 8, !dbg !1379
    #dbg_value(ptr %3, !1327, !DIExpression(), !1366)
  %tobool.not = icmp eq i32 %edge, 0, !dbg !1380
    #dbg_value(ptr undef, !1321, !DIExpression(), !1366)
  br i1 %tobool.not, label %lor.lhs.false13, label %if.then17, !dbg !1381

lor.lhs.false13:                                  ; preds = %get_non_aff_neighbor_luma.exit
  %is_intra_block14 = getelementptr inbounds i8, ptr %3, i64 96, !dbg !1382
  %4 = load i32, ptr %is_intra_block14, align 8, !dbg !1382
  %cmp15 = icmp eq i32 %4, 0, !dbg !1383
  br i1 %cmp15, label %if.then17, label %land.rhs163, !dbg !1384

if.then17:                                        ; preds = %if.then10, %lor.lhs.false13, %get_non_aff_neighbor_luma.exit
  %cond11393 = phi ptr [ %3, %lor.lhs.false13 ], [ %MbQ, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %if.then10 ]
  %tobool.not392 = phi i1 [ true, %lor.lhs.false13 ], [ false, %get_non_aff_neighbor_luma.exit ], [ false, %if.then10 ]
  %retval.0.i391 = phi ptr [ %3, %lor.lhs.false13 ], [ %3, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %if.then10 ]
  %5 = load ptr, ptr @PicPos, align 8, !dbg !1385
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24, !dbg !1386
  %6 = load i32, ptr %mbAddrX, align 8, !dbg !1386
  %idxprom = sext i32 %6 to i64, !dbg !1385
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %5, i64 %idxprom, !dbg !1385
  %mb.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2, !dbg !1385
  %mb.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1385
  %mb.sroa.6.0.copyload = load i16, ptr %mb.sroa.6.0.arrayidx.sroa_idx, align 2, !dbg !1385
    #dbg_value(i16 %mb.sroa.0.0.copyload, !1333, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1387)
    #dbg_value(i16 %mb.sroa.6.0.copyload, !1333, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1387)
  %shl = shl i16 %mb.sroa.0.0.copyload, 2, !dbg !1388
    #dbg_value(i16 %shl, !1333, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1387)
  %shl21 = shl i16 %mb.sroa.6.0.copyload, 2, !dbg !1389
    #dbg_value(i16 %shl21, !1333, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1387)
    #dbg_value(i32 0, !1332, !DIExpression(), !1387)
  %shr = ashr i32 %edge, 2
  %and26 = and i32 %sub, 15
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
    #dbg_value(i32 0, !1332, !DIExpression(), !1387)
  %shr27 = lshr i32 %and26, 2
  %cbp_blk35 = getelementptr inbounds i8, ptr %cond11393, i64 288
  %mb_type = getelementptr inbounds i8, ptr %MbQ, i64 152
  %conv55 = sext i16 %shl21 to i32
  %conv59 = sext i16 %shl to i32
  %and60 = and i32 %shr, 3
  %add61 = or disjoint i32 %and60, %conv59
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i391, i64 48
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i391, i64 44
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  %idxprom74 = sext i32 %add61 to i64
  %7 = zext nneg i32 %shr27 to i64, !dbg !1390
  %8 = sext i32 %shr to i64, !dbg !1390
    #dbg_value(i64 0, !1332, !DIExpression(), !1387)
    #dbg_value(!DIArgList(i64 0, i32 %shr), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
    #dbg_value(!DIArgList(i64 0, i32 %and26), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus, DW_OP_stack_value), !1387)
  %9 = load i64, ptr %cbp_blk, align 8, !dbg !1391
    #dbg_value(i64 %8, !1392, !DIExpression(), !1397)
  %cmp.i296 = icmp sgt i32 %shr, 63, !dbg !1399
  br i1 %cmp.i296, label %i64_power2.exit, label %cond.false.i, !dbg !1400

cond.false.i:                                     ; preds = %if.then17
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %8, !dbg !1401
  %10 = load i64, ptr %arrayidx.i, align 8, !dbg !1401
  br label %i64_power2.exit, !dbg !1400

i64_power2.exit:                                  ; preds = %if.then17, %cond.false.i
  %cond.i = phi i64 [ %10, %cond.false.i ], [ 0, %if.then17 ], !dbg !1400
  %and31 = and i64 %cond.i, %9, !dbg !1402
  %cmp32.not = icmp eq i64 %and31, 0, !dbg !1403
  br i1 %cmp32.not, label %lor.lhs.false34, label %if.end158, !dbg !1404

lor.lhs.false34:                                  ; preds = %i64_power2.exit
    #dbg_value(!DIArgList(i64 0, i32 %shr27), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
    #dbg_value(i64 %7, !1328, !DIExpression(), !1387)
  %11 = load i64, ptr %cbp_blk35, align 8, !dbg !1405
    #dbg_value(i64 %7, !1392, !DIExpression(), !1406)
  %arrayidx.i300 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %7, !dbg !1408
  %12 = load i64, ptr %arrayidx.i300, align 8, !dbg !1408
  %and38 = and i64 %12, %11, !dbg !1409
  %cmp39.not = icmp eq i64 %and38, 0, !dbg !1410
  br i1 %cmp39.not, label %if.else42, label %if.end158, !dbg !1411

if.else42:                                        ; preds = %lor.lhs.false34
  br i1 %tobool.not392, label %if.else53, label %land.lhs.true, !dbg !1412

land.lhs.true:                                    ; preds = %if.else42
  %13 = load i16, ptr %mb_type, align 8, !dbg !1413
  %.off274 = add i16 %13, -1, !dbg !1414
  %switch275 = icmp ult i16 %.off274, 2, !dbg !1414
  br i1 %switch275, label %if.end158, label %if.else53, !dbg !1414

if.else53:                                        ; preds = %land.lhs.true, %if.else42
  %shr56 = ashr i32 %edge, 4, !dbg !1415
  %add57 = add nsw i32 %shr56, %conv55, !dbg !1416
    #dbg_value(i32 %add57, !1334, !DIExpression(), !1417)
    #dbg_value(i32 %add61, !1341, !DIExpression(), !1417)
  %14 = load i32, ptr %pix_y, align 8, !dbg !1418
  %sext = shl i32 %14, 16, !dbg !1419
  %shr66 = ashr i32 %sext, 18, !dbg !1420
    #dbg_value(i32 %shr66, !1342, !DIExpression(), !1417)
  %15 = load i32, ptr %pix_x, align 4, !dbg !1421
  %add68 = add nsw i32 %15, %and26, !dbg !1421
  %sext272 = shl i32 %add68, 16, !dbg !1422
  %shr71 = ashr i32 %sext272, 18, !dbg !1423
    #dbg_value(i32 %shr71, !1343, !DIExpression(), !1417)
  %16 = load ptr, ptr %mv_info, align 8, !dbg !1424
  %idxprom72 = sext i32 %add57 to i64, !dbg !1425
  %arrayidx73 = getelementptr inbounds ptr, ptr %16, i64 %idxprom72, !dbg !1425
  %17 = load ptr, ptr %arrayidx73, align 8, !dbg !1425
  %arrayidx75 = getelementptr inbounds %struct.pic_motion_params, ptr %17, i64 %idxprom74, !dbg !1425
    #dbg_value(ptr %arrayidx75, !1344, !DIExpression(), !1417)
  %18 = load ptr, ptr %arrayidx75, align 8, !dbg !1426
    #dbg_value(ptr %18, !1347, !DIExpression(), !1417)
  %arrayidx78 = getelementptr inbounds i8, ptr %arrayidx75, i64 8, !dbg !1427
  %19 = load ptr, ptr %arrayidx78, align 8, !dbg !1427
    #dbg_value(ptr %19, !1349, !DIExpression(), !1417)
  %idxprom80 = sext i32 %shr66 to i64, !dbg !1428
  %arrayidx81 = getelementptr inbounds ptr, ptr %16, i64 %idxprom80, !dbg !1428
  %20 = load ptr, ptr %arrayidx81, align 8, !dbg !1428
  %idxprom82 = sext i32 %shr71 to i64, !dbg !1428
  %arrayidx83 = getelementptr inbounds %struct.pic_motion_params, ptr %20, i64 %idxprom82, !dbg !1428
    #dbg_value(ptr %arrayidx83, !1350, !DIExpression(), !1417)
  %21 = load ptr, ptr %arrayidx83, align 8, !dbg !1429
    #dbg_value(ptr %21, !1351, !DIExpression(), !1417)
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx83, i64 8, !dbg !1430
  %22 = load ptr, ptr %arrayidx87, align 8, !dbg !1430
    #dbg_value(ptr %22, !1352, !DIExpression(), !1417)
  %cmp88 = icmp eq ptr %18, %21, !dbg !1431
  %cmp91 = icmp eq ptr %19, %22
  %or.cond = select i1 %cmp88, i1 %cmp91, i1 false, !dbg !1433
  br i1 %or.cond, label %if.then99, label %lor.lhs.false93, !dbg !1433

lor.lhs.false93:                                  ; preds = %if.else53
  %cmp94 = icmp eq ptr %18, %22, !dbg !1434
  %cmp97 = icmp eq ptr %19, %21
  %or.cond273 = select i1 %cmp94, i1 %cmp97, i1 false, !dbg !1435
  br i1 %or.cond273, label %if.then99, label %if.end158, !dbg !1435

if.then99:                                        ; preds = %lor.lhs.false93, %if.else53
  %cmp100.not = icmp eq ptr %18, %19, !dbg !1436
  %mv128 = getelementptr inbounds i8, ptr %arrayidx75, i64 16, !dbg !1439
  %mv130 = getelementptr inbounds i8, ptr %arrayidx83, i64 16, !dbg !1439
  br i1 %cmp100.not, label %if.else127, label %if.then102, !dbg !1440

if.then102:                                       ; preds = %if.then99
  %23 = getelementptr i8, ptr %arrayidx75, i64 22, !dbg !1441
  %arrayidx111.val292 = load i16, ptr %23, align 2, !dbg !1441
  br i1 %cmp88, label %if.then105, label %if.else115, !dbg !1444

if.then105:                                       ; preds = %if.then102
  %mv.val = load i16, ptr %mv128, align 2, !dbg !1445
  %24 = getelementptr i8, ptr %arrayidx75, i64 18, !dbg !1445
  %mv.val294 = load i16, ptr %24, align 2, !dbg !1445
  %mv107.val = load i16, ptr %mv130, align 2, !dbg !1445
  %25 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1445
  %mv107.val295 = load i16, ptr %25, align 2, !dbg !1445
    #dbg_value(ptr undef, !1447, !DIExpression(), !1456)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1456)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1456)
  %conv.i = sext i16 %mv.val to i32, !dbg !1458
  %conv2.i = sext i16 %mv107.val to i32, !dbg !1459
  %sub.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1460
    #dbg_value(i32 %sub.i, !80, !DIExpression(), !1461)
    #dbg_value(i32 %sub.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1461)
  %sub.i.i = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true), !dbg !1463
  %cmp.i303 = icmp ugt i32 %sub.i.i, 3, !dbg !1464
  %conv4.i = sext i16 %mv.val294 to i32, !dbg !1465
  %conv6.i = sext i16 %mv107.val295 to i32, !dbg !1466
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i, !dbg !1467
    #dbg_value(i32 %sub7.i, !80, !DIExpression(), !1468)
    #dbg_value(i32 %sub7.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1468)
  %sub.i14.i = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 true), !dbg !1470
  %cmp9.i = icmp sge i32 %sub.i14.i, %mvlimit, !dbg !1471
  %or13.i = or i1 %cmp.i303, %cmp9.i, !dbg !1472
  %arrayidx111 = getelementptr inbounds i8, ptr %arrayidx75, i64 20, !dbg !1473
  %arrayidx113 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1474
  %arrayidx111.val = load i16, ptr %arrayidx111, align 2, !dbg !1475
  %arrayidx113.val = load i16, ptr %arrayidx113, align 2, !dbg !1475
  %26 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1475
  %arrayidx113.val293 = load i16, ptr %26, align 2, !dbg !1475
    #dbg_value(ptr undef, !1447, !DIExpression(), !1476)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1476)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1476)
  %conv.i304 = sext i16 %arrayidx111.val to i32, !dbg !1478
  %conv2.i305 = sext i16 %arrayidx113.val to i32, !dbg !1479
  %sub.i306 = sub nsw i32 %conv.i304, %conv2.i305, !dbg !1480
    #dbg_value(i32 %sub.i306, !80, !DIExpression(), !1481)
    #dbg_value(i32 %sub.i306, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1481)
  %sub.i.i307 = tail call i32 @llvm.abs.i32(i32 %sub.i306, i1 true), !dbg !1483
  %cmp.i308 = icmp ugt i32 %sub.i.i307, 3, !dbg !1484
  %conv4.i309 = sext i16 %arrayidx111.val292 to i32, !dbg !1485
  %conv6.i310 = sext i16 %arrayidx113.val293 to i32, !dbg !1486
  %sub7.i311 = sub nsw i32 %conv4.i309, %conv6.i310, !dbg !1487
    #dbg_value(i32 %sub7.i311, !80, !DIExpression(), !1488)
    #dbg_value(i32 %sub7.i311, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1488)
  %sub.i14.i312 = tail call i32 @llvm.abs.i32(i32 %sub7.i311, i1 true), !dbg !1490
  %cmp9.i313 = icmp sge i32 %sub.i14.i312, %mvlimit, !dbg !1491
  %or13.i314 = or i1 %cmp.i308, %cmp9.i313, !dbg !1492
  %or395 = or i1 %or13.i, %or13.i314, !dbg !1493
  %or = zext i1 %or395 to i32, !dbg !1493
    #dbg_value(i32 %or, !1320, !DIExpression(), !1353)
  br label %if.end158, !dbg !1494

if.else115:                                       ; preds = %if.then102
  %arrayidx119 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1495
  %mv116.val = load i16, ptr %mv128, align 2, !dbg !1497
  %27 = getelementptr i8, ptr %arrayidx75, i64 18, !dbg !1497
  %mv116.val290 = load i16, ptr %27, align 2, !dbg !1497
  %arrayidx119.val = load i16, ptr %arrayidx119, align 2, !dbg !1497
  %28 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1497
  %arrayidx119.val291 = load i16, ptr %28, align 2, !dbg !1497
    #dbg_value(ptr undef, !1447, !DIExpression(), !1498)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1498)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1498)
  %conv.i316 = sext i16 %mv116.val to i32, !dbg !1500
  %conv2.i317 = sext i16 %arrayidx119.val to i32, !dbg !1501
  %sub.i318 = sub nsw i32 %conv.i316, %conv2.i317, !dbg !1502
    #dbg_value(i32 %sub.i318, !80, !DIExpression(), !1503)
    #dbg_value(i32 %sub.i318, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1503)
  %sub.i.i319 = tail call i32 @llvm.abs.i32(i32 %sub.i318, i1 true), !dbg !1505
  %cmp.i320 = icmp ugt i32 %sub.i.i319, 3, !dbg !1506
  %conv4.i321 = sext i16 %mv116.val290 to i32, !dbg !1507
  %conv6.i322 = sext i16 %arrayidx119.val291 to i32, !dbg !1508
  %sub7.i323 = sub nsw i32 %conv4.i321, %conv6.i322, !dbg !1509
    #dbg_value(i32 %sub7.i323, !80, !DIExpression(), !1510)
    #dbg_value(i32 %sub7.i323, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1510)
  %sub.i14.i324 = tail call i32 @llvm.abs.i32(i32 %sub7.i323, i1 true), !dbg !1512
  %cmp9.i325 = icmp sge i32 %sub.i14.i324, %mvlimit, !dbg !1513
  %or13.i326 = or i1 %cmp.i320, %cmp9.i325, !dbg !1514
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx75, i64 20, !dbg !1515
  %arrayidx122.val = load i16, ptr %arrayidx122, align 2, !dbg !1516
  %mv118.val = load i16, ptr %mv130, align 2, !dbg !1516
  %29 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1516
  %mv118.val289 = load i16, ptr %29, align 2, !dbg !1516
    #dbg_value(ptr undef, !1447, !DIExpression(), !1517)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1517)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1517)
  %conv.i328 = sext i16 %arrayidx122.val to i32, !dbg !1519
  %conv2.i329 = sext i16 %mv118.val to i32, !dbg !1520
  %sub.i330 = sub nsw i32 %conv.i328, %conv2.i329, !dbg !1521
    #dbg_value(i32 %sub.i330, !80, !DIExpression(), !1522)
    #dbg_value(i32 %sub.i330, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1522)
  %sub.i.i331 = tail call i32 @llvm.abs.i32(i32 %sub.i330, i1 true), !dbg !1524
  %cmp.i332 = icmp ugt i32 %sub.i.i331, 3, !dbg !1525
  %conv4.i333 = sext i16 %arrayidx111.val292 to i32, !dbg !1526
  %conv6.i334 = sext i16 %mv118.val289 to i32, !dbg !1527
  %sub7.i335 = sub nsw i32 %conv4.i333, %conv6.i334, !dbg !1528
    #dbg_value(i32 %sub7.i335, !80, !DIExpression(), !1529)
    #dbg_value(i32 %sub7.i335, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1529)
  %sub.i14.i336 = tail call i32 @llvm.abs.i32(i32 %sub7.i335, i1 true), !dbg !1531
  %cmp9.i337 = icmp sge i32 %sub.i14.i336, %mvlimit, !dbg !1532
  %or13.i338 = or i1 %cmp.i332, %cmp9.i337, !dbg !1533
  %or126394 = or i1 %or13.i326, %or13.i338, !dbg !1534
  %or126 = zext i1 %or126394 to i32, !dbg !1534
    #dbg_value(i32 %or126, !1320, !DIExpression(), !1353)
  br label %if.end158

if.else127:                                       ; preds = %if.then99
  %mv128.val284 = load i16, ptr %mv128, align 2, !dbg !1535
  %30 = getelementptr i8, ptr %arrayidx75, i64 18, !dbg !1535
  %mv128.val285 = load i16, ptr %30, align 2, !dbg !1535
  %mv130.val286 = load i16, ptr %mv130, align 2, !dbg !1535
  %31 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1535
  %mv130.val287 = load i16, ptr %31, align 2, !dbg !1535
    #dbg_value(ptr undef, !1447, !DIExpression(), !1537)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1537)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1537)
  %conv.i340 = sext i16 %mv128.val284 to i32, !dbg !1539
  %conv2.i341 = sext i16 %mv130.val286 to i32, !dbg !1540
  %sub.i342 = sub nsw i32 %conv.i340, %conv2.i341, !dbg !1541
    #dbg_value(i32 %sub.i342, !80, !DIExpression(), !1542)
    #dbg_value(i32 %sub.i342, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1542)
  %sub.i.i343 = tail call i32 @llvm.abs.i32(i32 %sub.i342, i1 true), !dbg !1544
  %cmp.i344 = icmp ult i32 %sub.i.i343, 4, !dbg !1545
  %conv4.i345 = sext i16 %mv128.val285 to i32, !dbg !1546
  %conv6.i346 = sext i16 %mv130.val287 to i32, !dbg !1547
  %sub7.i347 = sub nsw i32 %conv4.i345, %conv6.i346, !dbg !1548
    #dbg_value(i32 %sub7.i347, !80, !DIExpression(), !1549)
    #dbg_value(i32 %sub7.i347, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1549)
  %sub.i14.i348 = tail call i32 @llvm.abs.i32(i32 %sub7.i347, i1 true), !dbg !1551
  %cmp9.i349 = icmp slt i32 %sub.i14.i348, %mvlimit, !dbg !1552
  %or13.i350.not397 = and i1 %cmp.i344, %cmp9.i349, !dbg !1553
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx75, i64 20, !dbg !1553
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1554
  %arrayidx134.val280 = load i16, ptr %arrayidx134, align 2, !dbg !1555
  %32 = getelementptr i8, ptr %arrayidx75, i64 22, !dbg !1555
  %arrayidx134.val281 = load i16, ptr %32, align 2, !dbg !1555
  %arrayidx136.val282 = load i16, ptr %arrayidx136, align 2, !dbg !1555
  %33 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1555
  %arrayidx136.val283 = load i16, ptr %33, align 2, !dbg !1555
    #dbg_value(ptr undef, !1447, !DIExpression(), !1556)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1556)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1556)
  %conv.i352 = sext i16 %arrayidx134.val280 to i32, !dbg !1558
  %conv2.i353 = sext i16 %arrayidx136.val282 to i32, !dbg !1559
  %sub.i354 = sub nsw i32 %conv.i352, %conv2.i353, !dbg !1560
    #dbg_value(i32 %sub.i354, !80, !DIExpression(), !1561)
    #dbg_value(i32 %sub.i354, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1561)
  %sub.i.i355 = tail call i32 @llvm.abs.i32(i32 %sub.i354, i1 true), !dbg !1563
  %cmp.i356 = icmp ult i32 %sub.i.i355, 4, !dbg !1564
  %conv4.i357 = sext i16 %arrayidx134.val281 to i32, !dbg !1565
  %conv6.i358 = sext i16 %arrayidx136.val283 to i32, !dbg !1566
  %sub7.i359 = sub nsw i32 %conv4.i357, %conv6.i358, !dbg !1567
    #dbg_value(i32 %sub7.i359, !80, !DIExpression(), !1568)
    #dbg_value(i32 %sub7.i359, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1568)
  %sub.i14.i360 = tail call i32 @llvm.abs.i32(i32 %sub7.i359, i1 true), !dbg !1570
  %cmp9.i361 = icmp slt i32 %sub.i14.i360, %mvlimit, !dbg !1571
  %or13.i362.not398 = and i1 %cmp.i356, %cmp9.i361, !dbg !1572
  %or138396.not = and i1 %or13.i350.not397, %or13.i362.not398, !dbg !1572
  br i1 %or138396.not, label %land.end153, label %land.rhs140, !dbg !1573

land.rhs140:                                      ; preds = %if.else127
    #dbg_value(ptr undef, !1447, !DIExpression(), !1574)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1574)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1574)
  %sub.i366 = sub nsw i32 %conv.i340, %conv2.i353, !dbg !1576
    #dbg_value(i32 %sub.i366, !80, !DIExpression(), !1577)
    #dbg_value(i32 %sub.i366, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1577)
  %sub.i.i367 = tail call i32 @llvm.abs.i32(i32 %sub.i366, i1 true), !dbg !1579
  %cmp.i368 = icmp ugt i32 %sub.i.i367, 3, !dbg !1580
  %sub7.i371 = sub nsw i32 %conv4.i345, %conv6.i358, !dbg !1581
    #dbg_value(i32 %sub7.i371, !80, !DIExpression(), !1582)
    #dbg_value(i32 %sub7.i371, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1582)
  %sub.i14.i372 = tail call i32 @llvm.abs.i32(i32 %sub7.i371, i1 true), !dbg !1584
  %cmp9.i373 = icmp sge i32 %sub.i14.i372, %mvlimit, !dbg !1585
  %or13.i374 = or i1 %cmp.i368, %cmp9.i373, !dbg !1586
    #dbg_value(ptr undef, !1447, !DIExpression(), !1587)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1587)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1587)
  %sub.i378 = sub nsw i32 %conv.i352, %conv2.i341, !dbg !1589
    #dbg_value(i32 %sub.i378, !80, !DIExpression(), !1590)
    #dbg_value(i32 %sub.i378, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1590)
  %sub.i.i379 = tail call i32 @llvm.abs.i32(i32 %sub.i378, i1 true), !dbg !1592
  %cmp.i380 = icmp ugt i32 %sub.i.i379, 3, !dbg !1593
  %sub7.i383 = sub nsw i32 %conv4.i357, %conv6.i346, !dbg !1594
    #dbg_value(i32 %sub7.i383, !80, !DIExpression(), !1595)
    #dbg_value(i32 %sub7.i383, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1595)
  %sub.i14.i384 = tail call i32 @llvm.abs.i32(i32 %sub7.i383, i1 true), !dbg !1597
  %cmp9.i385 = icmp sge i32 %sub.i14.i384, %mvlimit, !dbg !1598
  %or13.i386 = or i1 %cmp.i380, %cmp9.i385, !dbg !1599
  %or151399 = or i1 %or13.i386, %or13.i374, !dbg !1600
  br label %land.end153

land.end153:                                      ; preds = %land.rhs140, %if.else127
  %34 = phi i1 [ false, %if.else127 ], [ %or151399, %land.rhs140 ], !dbg !1601
  %land.ext = zext i1 %34 to i32, !dbg !1573
    #dbg_value(i32 %land.ext, !1320, !DIExpression(), !1353)
  br label %if.end158

if.end158:                                        ; preds = %land.lhs.true, %if.then105, %if.else115, %land.end153, %lor.lhs.false93, %i64_power2.exit, %lor.lhs.false34
  %StrValue.1 = phi i32 [ 2, %lor.lhs.false34 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true ], [ %or, %if.then105 ], [ %or126, %if.else115 ], [ %land.ext, %land.end153 ], [ 1, %lor.lhs.false93 ], !dbg !1602
    #dbg_value(i32 %StrValue.1, !1320, !DIExpression(), !1353)
  %mul = mul nuw nsw i32 %StrValue.1, 16843009, !dbg !1603
  store i32 %mul, ptr %Strength, align 4, !dbg !1604
    #dbg_value(i64 4, !1332, !DIExpression(), !1387)
  %35 = add nsw i64 %8, 4, !dbg !1605
    #dbg_value(!DIArgList(i64 4, i32 %shr), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
    #dbg_value(!DIArgList(i64 4, i32 %and26), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus, DW_OP_stack_value), !1387)
  %36 = load i64, ptr %cbp_blk, align 8, !dbg !1391
    #dbg_value(i64 %35, !1392, !DIExpression(), !1397)
  %cmp.i296.1 = icmp sgt i32 %shr, 59, !dbg !1399
  br i1 %cmp.i296.1, label %i64_power2.exit.1, label %cond.false.i.1, !dbg !1400

cond.false.i.1:                                   ; preds = %if.end158
  %arrayidx.i.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %35, !dbg !1401
  %37 = load i64, ptr %arrayidx.i.1, align 8, !dbg !1401
  br label %i64_power2.exit.1, !dbg !1400

i64_power2.exit.1:                                ; preds = %cond.false.i.1, %if.end158
  %cond.i.1 = phi i64 [ %37, %cond.false.i.1 ], [ 0, %if.end158 ], !dbg !1400
  %and31.1 = and i64 %cond.i.1, %36, !dbg !1402
  %cmp32.not.1 = icmp eq i64 %and31.1, 0, !dbg !1403
  br i1 %cmp32.not.1, label %lor.lhs.false34.1, label %if.end158.1, !dbg !1404

lor.lhs.false34.1:                                ; preds = %i64_power2.exit.1
    #dbg_value(!DIArgList(i64 4, i32 %shr27), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
  %38 = or disjoint i64 %7, 4, !dbg !1606
    #dbg_value(i64 %38, !1328, !DIExpression(), !1387)
  %39 = load i64, ptr %cbp_blk35, align 8, !dbg !1405
    #dbg_value(i64 %38, !1392, !DIExpression(), !1406)
  %arrayidx.i300.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %38, !dbg !1408
  %40 = load i64, ptr %arrayidx.i300.1, align 8, !dbg !1408
  %and38.1 = and i64 %40, %39, !dbg !1409
  %cmp39.not.1 = icmp eq i64 %and38.1, 0, !dbg !1410
  br i1 %cmp39.not.1, label %if.else42.1, label %if.end158.1, !dbg !1411

if.else42.1:                                      ; preds = %lor.lhs.false34.1
  br i1 %tobool.not392, label %if.else53.1, label %land.lhs.true.1, !dbg !1412

land.lhs.true.1:                                  ; preds = %if.else42.1
  %41 = load i16, ptr %mb_type, align 8, !dbg !1413
  %.off274.1 = add i16 %41, -1, !dbg !1414
  %switch275.1 = icmp ult i16 %.off274.1, 2, !dbg !1414
  br i1 %switch275.1, label %if.end158.1, label %if.else53.1, !dbg !1414

if.else53.1:                                      ; preds = %land.lhs.true.1, %if.else42.1
  %42 = trunc nsw i64 %35 to i32, !dbg !1415
  %shr56.1 = ashr i32 %42, 2, !dbg !1415
  %add57.1 = add nsw i32 %shr56.1, %conv55, !dbg !1416
    #dbg_value(i32 %add57.1, !1334, !DIExpression(), !1417)
    #dbg_value(i32 %add61, !1341, !DIExpression(), !1417)
  %43 = load i32, ptr %pix_y, align 8, !dbg !1418
  %add63.1 = shl i32 %43, 16, !dbg !1419
  %sext.1 = add i32 %add63.1, 262144, !dbg !1419
  %shr66.1 = ashr i32 %sext.1, 18, !dbg !1420
    #dbg_value(i32 %shr66.1, !1342, !DIExpression(), !1417)
  %44 = load i32, ptr %pix_x, align 4, !dbg !1421
  %add68.1 = add nsw i32 %44, %and26, !dbg !1421
  %sext272.1 = shl i32 %add68.1, 16, !dbg !1422
  %shr71.1 = ashr i32 %sext272.1, 18, !dbg !1423
    #dbg_value(i32 %shr71.1, !1343, !DIExpression(), !1417)
  %45 = load ptr, ptr %mv_info, align 8, !dbg !1424
  %idxprom72.1 = sext i32 %add57.1 to i64, !dbg !1425
  %arrayidx73.1 = getelementptr inbounds ptr, ptr %45, i64 %idxprom72.1, !dbg !1425
  %46 = load ptr, ptr %arrayidx73.1, align 8, !dbg !1425
  %arrayidx75.1 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom74, !dbg !1425
    #dbg_value(ptr %arrayidx75.1, !1344, !DIExpression(), !1417)
  %47 = load ptr, ptr %arrayidx75.1, align 8, !dbg !1426
    #dbg_value(ptr %47, !1347, !DIExpression(), !1417)
  %arrayidx78.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 8, !dbg !1427
  %48 = load ptr, ptr %arrayidx78.1, align 8, !dbg !1427
    #dbg_value(ptr %48, !1349, !DIExpression(), !1417)
  %idxprom80.1 = sext i32 %shr66.1 to i64, !dbg !1428
  %arrayidx81.1 = getelementptr inbounds ptr, ptr %45, i64 %idxprom80.1, !dbg !1428
  %49 = load ptr, ptr %arrayidx81.1, align 8, !dbg !1428
  %idxprom82.1 = sext i32 %shr71.1 to i64, !dbg !1428
  %arrayidx83.1 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom82.1, !dbg !1428
    #dbg_value(ptr %arrayidx83.1, !1350, !DIExpression(), !1417)
  %50 = load ptr, ptr %arrayidx83.1, align 8, !dbg !1429
    #dbg_value(ptr %50, !1351, !DIExpression(), !1417)
  %arrayidx87.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 8, !dbg !1430
  %51 = load ptr, ptr %arrayidx87.1, align 8, !dbg !1430
    #dbg_value(ptr %51, !1352, !DIExpression(), !1417)
  %cmp88.1 = icmp eq ptr %47, %50, !dbg !1431
  %cmp91.1 = icmp eq ptr %48, %51
  %or.cond.1 = select i1 %cmp88.1, i1 %cmp91.1, i1 false, !dbg !1433
  br i1 %or.cond.1, label %if.then99.1, label %lor.lhs.false93.1, !dbg !1433

lor.lhs.false93.1:                                ; preds = %if.else53.1
  %cmp94.1 = icmp eq ptr %47, %51, !dbg !1434
  %cmp97.1 = icmp eq ptr %48, %50
  %or.cond273.1 = select i1 %cmp94.1, i1 %cmp97.1, i1 false, !dbg !1435
  br i1 %or.cond273.1, label %if.then99.1, label %if.end158.1, !dbg !1435

if.then99.1:                                      ; preds = %lor.lhs.false93.1, %if.else53.1
  %cmp100.not.1 = icmp eq ptr %47, %48, !dbg !1436
  %mv128.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 16, !dbg !1439
  %mv130.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 16, !dbg !1439
  br i1 %cmp100.not.1, label %if.else127.1, label %if.then102.1, !dbg !1440

if.then102.1:                                     ; preds = %if.then99.1
  %52 = getelementptr i8, ptr %arrayidx75.1, i64 22, !dbg !1441
  %arrayidx111.val292.1 = load i16, ptr %52, align 2, !dbg !1441
  br i1 %cmp88.1, label %if.then105.1, label %if.else115.1, !dbg !1444

if.else115.1:                                     ; preds = %if.then102.1
  %arrayidx119.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1495
  %mv116.val.1 = load i16, ptr %mv128.1, align 2, !dbg !1497
  %53 = getelementptr i8, ptr %arrayidx75.1, i64 18, !dbg !1497
  %mv116.val290.1 = load i16, ptr %53, align 2, !dbg !1497
  %arrayidx119.val.1 = load i16, ptr %arrayidx119.1, align 2, !dbg !1497
  %54 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1497
  %arrayidx119.val291.1 = load i16, ptr %54, align 2, !dbg !1497
    #dbg_value(ptr undef, !1447, !DIExpression(), !1498)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1498)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1498)
  %conv.i316.1 = sext i16 %mv116.val.1 to i32, !dbg !1500
  %conv2.i317.1 = sext i16 %arrayidx119.val.1 to i32, !dbg !1501
  %sub.i318.1 = sub nsw i32 %conv.i316.1, %conv2.i317.1, !dbg !1502
    #dbg_value(i32 %sub.i318.1, !80, !DIExpression(), !1503)
    #dbg_value(i32 %sub.i318.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1503)
  %sub.i.i319.1 = tail call i32 @llvm.abs.i32(i32 %sub.i318.1, i1 true), !dbg !1505
  %cmp.i320.1 = icmp ugt i32 %sub.i.i319.1, 3, !dbg !1506
  %conv4.i321.1 = sext i16 %mv116.val290.1 to i32, !dbg !1507
  %conv6.i322.1 = sext i16 %arrayidx119.val291.1 to i32, !dbg !1508
  %sub7.i323.1 = sub nsw i32 %conv4.i321.1, %conv6.i322.1, !dbg !1509
    #dbg_value(i32 %sub7.i323.1, !80, !DIExpression(), !1510)
    #dbg_value(i32 %sub7.i323.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1510)
  %sub.i14.i324.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.1, i1 true), !dbg !1512
  %cmp9.i325.1 = icmp sge i32 %sub.i14.i324.1, %mvlimit, !dbg !1513
  %or13.i326.1 = or i1 %cmp.i320.1, %cmp9.i325.1, !dbg !1514
  %arrayidx122.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20, !dbg !1515
  %arrayidx122.val.1 = load i16, ptr %arrayidx122.1, align 2, !dbg !1516
  %mv118.val.1 = load i16, ptr %mv130.1, align 2, !dbg !1516
  %55 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1516
  %mv118.val289.1 = load i16, ptr %55, align 2, !dbg !1516
    #dbg_value(ptr undef, !1447, !DIExpression(), !1517)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1517)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1517)
  %conv.i328.1 = sext i16 %arrayidx122.val.1 to i32, !dbg !1519
  %conv2.i329.1 = sext i16 %mv118.val.1 to i32, !dbg !1520
  %sub.i330.1 = sub nsw i32 %conv.i328.1, %conv2.i329.1, !dbg !1521
    #dbg_value(i32 %sub.i330.1, !80, !DIExpression(), !1522)
    #dbg_value(i32 %sub.i330.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1522)
  %sub.i.i331.1 = tail call i32 @llvm.abs.i32(i32 %sub.i330.1, i1 true), !dbg !1524
  %cmp.i332.1 = icmp ugt i32 %sub.i.i331.1, 3, !dbg !1525
  %conv4.i333.1 = sext i16 %arrayidx111.val292.1 to i32, !dbg !1526
  %conv6.i334.1 = sext i16 %mv118.val289.1 to i32, !dbg !1527
  %sub7.i335.1 = sub nsw i32 %conv4.i333.1, %conv6.i334.1, !dbg !1528
    #dbg_value(i32 %sub7.i335.1, !80, !DIExpression(), !1529)
    #dbg_value(i32 %sub7.i335.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1529)
  %sub.i14.i336.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.1, i1 true), !dbg !1531
  %cmp9.i337.1 = icmp sge i32 %sub.i14.i336.1, %mvlimit, !dbg !1532
  %or13.i338.1 = or i1 %cmp.i332.1, %cmp9.i337.1, !dbg !1533
  %or126394.1 = or i1 %or13.i326.1, %or13.i338.1, !dbg !1534
  %or126.1 = zext i1 %or126394.1 to i32, !dbg !1534
    #dbg_value(i32 %or126.1, !1320, !DIExpression(), !1353)
  br label %if.end158.1

if.then105.1:                                     ; preds = %if.then102.1
  %mv.val.1 = load i16, ptr %mv128.1, align 2, !dbg !1445
  %56 = getelementptr i8, ptr %arrayidx75.1, i64 18, !dbg !1445
  %mv.val294.1 = load i16, ptr %56, align 2, !dbg !1445
  %mv107.val.1 = load i16, ptr %mv130.1, align 2, !dbg !1445
  %57 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1445
  %mv107.val295.1 = load i16, ptr %57, align 2, !dbg !1445
    #dbg_value(ptr undef, !1447, !DIExpression(), !1456)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1456)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1456)
  %conv.i.1 = sext i16 %mv.val.1 to i32, !dbg !1458
  %conv2.i.1 = sext i16 %mv107.val.1 to i32, !dbg !1459
  %sub.i.1 = sub nsw i32 %conv.i.1, %conv2.i.1, !dbg !1460
    #dbg_value(i32 %sub.i.1, !80, !DIExpression(), !1461)
    #dbg_value(i32 %sub.i.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1461)
  %sub.i.i.1 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 true), !dbg !1463
  %cmp.i303.1 = icmp ugt i32 %sub.i.i.1, 3, !dbg !1464
  %conv4.i.1 = sext i16 %mv.val294.1 to i32, !dbg !1465
  %conv6.i.1 = sext i16 %mv107.val295.1 to i32, !dbg !1466
  %sub7.i.1 = sub nsw i32 %conv4.i.1, %conv6.i.1, !dbg !1467
    #dbg_value(i32 %sub7.i.1, !80, !DIExpression(), !1468)
    #dbg_value(i32 %sub7.i.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1468)
  %sub.i14.i.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i.1, i1 true), !dbg !1470
  %cmp9.i.1 = icmp sge i32 %sub.i14.i.1, %mvlimit, !dbg !1471
  %or13.i.1 = or i1 %cmp.i303.1, %cmp9.i.1, !dbg !1472
  %arrayidx111.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20, !dbg !1473
  %arrayidx113.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1474
  %arrayidx111.val.1 = load i16, ptr %arrayidx111.1, align 2, !dbg !1475
  %arrayidx113.val.1 = load i16, ptr %arrayidx113.1, align 2, !dbg !1475
  %58 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1475
  %arrayidx113.val293.1 = load i16, ptr %58, align 2, !dbg !1475
    #dbg_value(ptr undef, !1447, !DIExpression(), !1476)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1476)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1476)
  %conv.i304.1 = sext i16 %arrayidx111.val.1 to i32, !dbg !1478
  %conv2.i305.1 = sext i16 %arrayidx113.val.1 to i32, !dbg !1479
  %sub.i306.1 = sub nsw i32 %conv.i304.1, %conv2.i305.1, !dbg !1480
    #dbg_value(i32 %sub.i306.1, !80, !DIExpression(), !1481)
    #dbg_value(i32 %sub.i306.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1481)
  %sub.i.i307.1 = tail call i32 @llvm.abs.i32(i32 %sub.i306.1, i1 true), !dbg !1483
  %cmp.i308.1 = icmp ugt i32 %sub.i.i307.1, 3, !dbg !1484
  %conv4.i309.1 = sext i16 %arrayidx111.val292.1 to i32, !dbg !1485
  %conv6.i310.1 = sext i16 %arrayidx113.val293.1 to i32, !dbg !1486
  %sub7.i311.1 = sub nsw i32 %conv4.i309.1, %conv6.i310.1, !dbg !1487
    #dbg_value(i32 %sub7.i311.1, !80, !DIExpression(), !1488)
    #dbg_value(i32 %sub7.i311.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1488)
  %sub.i14.i312.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.1, i1 true), !dbg !1490
  %cmp9.i313.1 = icmp sge i32 %sub.i14.i312.1, %mvlimit, !dbg !1491
  %or13.i314.1 = or i1 %cmp.i308.1, %cmp9.i313.1, !dbg !1492
  %or395.1 = or i1 %or13.i.1, %or13.i314.1, !dbg !1493
  %or.1 = zext i1 %or395.1 to i32, !dbg !1493
    #dbg_value(i32 %or.1, !1320, !DIExpression(), !1353)
  br label %if.end158.1, !dbg !1494

if.else127.1:                                     ; preds = %if.then99.1
  %mv128.val284.1 = load i16, ptr %mv128.1, align 2, !dbg !1535
  %59 = getelementptr i8, ptr %arrayidx75.1, i64 18, !dbg !1535
  %mv128.val285.1 = load i16, ptr %59, align 2, !dbg !1535
  %mv130.val286.1 = load i16, ptr %mv130.1, align 2, !dbg !1535
  %60 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1535
  %mv130.val287.1 = load i16, ptr %60, align 2, !dbg !1535
    #dbg_value(ptr undef, !1447, !DIExpression(), !1537)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1537)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1537)
  %conv.i340.1 = sext i16 %mv128.val284.1 to i32, !dbg !1539
  %conv2.i341.1 = sext i16 %mv130.val286.1 to i32, !dbg !1540
  %sub.i342.1 = sub nsw i32 %conv.i340.1, %conv2.i341.1, !dbg !1541
    #dbg_value(i32 %sub.i342.1, !80, !DIExpression(), !1542)
    #dbg_value(i32 %sub.i342.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1542)
  %sub.i.i343.1 = tail call i32 @llvm.abs.i32(i32 %sub.i342.1, i1 true), !dbg !1544
  %cmp.i344.1 = icmp ult i32 %sub.i.i343.1, 4, !dbg !1545
  %conv4.i345.1 = sext i16 %mv128.val285.1 to i32, !dbg !1546
  %conv6.i346.1 = sext i16 %mv130.val287.1 to i32, !dbg !1547
  %sub7.i347.1 = sub nsw i32 %conv4.i345.1, %conv6.i346.1, !dbg !1548
    #dbg_value(i32 %sub7.i347.1, !80, !DIExpression(), !1549)
    #dbg_value(i32 %sub7.i347.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1549)
  %sub.i14.i348.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.1, i1 true), !dbg !1551
  %cmp9.i349.1 = icmp slt i32 %sub.i14.i348.1, %mvlimit, !dbg !1552
  %or13.i350.not397.1 = and i1 %cmp.i344.1, %cmp9.i349.1, !dbg !1553
  %arrayidx134.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20, !dbg !1553
  %arrayidx136.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1554
  %arrayidx134.val280.1 = load i16, ptr %arrayidx134.1, align 2, !dbg !1555
  %61 = getelementptr i8, ptr %arrayidx75.1, i64 22, !dbg !1555
  %arrayidx134.val281.1 = load i16, ptr %61, align 2, !dbg !1555
  %arrayidx136.val282.1 = load i16, ptr %arrayidx136.1, align 2, !dbg !1555
  %62 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1555
  %arrayidx136.val283.1 = load i16, ptr %62, align 2, !dbg !1555
    #dbg_value(ptr undef, !1447, !DIExpression(), !1556)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1556)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1556)
  %conv.i352.1 = sext i16 %arrayidx134.val280.1 to i32, !dbg !1558
  %conv2.i353.1 = sext i16 %arrayidx136.val282.1 to i32, !dbg !1559
  %sub.i354.1 = sub nsw i32 %conv.i352.1, %conv2.i353.1, !dbg !1560
    #dbg_value(i32 %sub.i354.1, !80, !DIExpression(), !1561)
    #dbg_value(i32 %sub.i354.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1561)
  %sub.i.i355.1 = tail call i32 @llvm.abs.i32(i32 %sub.i354.1, i1 true), !dbg !1563
  %cmp.i356.1 = icmp ult i32 %sub.i.i355.1, 4, !dbg !1564
  %conv4.i357.1 = sext i16 %arrayidx134.val281.1 to i32, !dbg !1565
  %conv6.i358.1 = sext i16 %arrayidx136.val283.1 to i32, !dbg !1566
  %sub7.i359.1 = sub nsw i32 %conv4.i357.1, %conv6.i358.1, !dbg !1567
    #dbg_value(i32 %sub7.i359.1, !80, !DIExpression(), !1568)
    #dbg_value(i32 %sub7.i359.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1568)
  %sub.i14.i360.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.1, i1 true), !dbg !1570
  %cmp9.i361.1 = icmp slt i32 %sub.i14.i360.1, %mvlimit, !dbg !1571
  %or13.i362.not398.1 = and i1 %cmp.i356.1, %cmp9.i361.1, !dbg !1572
  %or138396.not.1 = and i1 %or13.i350.not397.1, %or13.i362.not398.1, !dbg !1572
  br i1 %or138396.not.1, label %if.end158.1, label %land.rhs140.1, !dbg !1573

land.rhs140.1:                                    ; preds = %if.else127.1
    #dbg_value(ptr undef, !1447, !DIExpression(), !1574)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1574)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1574)
  %sub.i366.1 = sub nsw i32 %conv.i340.1, %conv2.i353.1, !dbg !1576
    #dbg_value(i32 %sub.i366.1, !80, !DIExpression(), !1577)
    #dbg_value(i32 %sub.i366.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1577)
  %sub.i.i367.1 = tail call i32 @llvm.abs.i32(i32 %sub.i366.1, i1 true), !dbg !1579
  %cmp.i368.1 = icmp ugt i32 %sub.i.i367.1, 3, !dbg !1580
  %sub7.i371.1 = sub nsw i32 %conv4.i345.1, %conv6.i358.1, !dbg !1581
    #dbg_value(i32 %sub7.i371.1, !80, !DIExpression(), !1582)
    #dbg_value(i32 %sub7.i371.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1582)
  %sub.i14.i372.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.1, i1 true), !dbg !1584
  %cmp9.i373.1 = icmp sge i32 %sub.i14.i372.1, %mvlimit, !dbg !1585
  %or13.i374.1 = or i1 %cmp.i368.1, %cmp9.i373.1, !dbg !1586
    #dbg_value(ptr undef, !1447, !DIExpression(), !1587)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1587)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1587)
  %sub.i378.1 = sub nsw i32 %conv.i352.1, %conv2.i341.1, !dbg !1589
    #dbg_value(i32 %sub.i378.1, !80, !DIExpression(), !1590)
    #dbg_value(i32 %sub.i378.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1590)
  %sub.i.i379.1 = tail call i32 @llvm.abs.i32(i32 %sub.i378.1, i1 true), !dbg !1592
  %cmp.i380.1 = icmp ugt i32 %sub.i.i379.1, 3, !dbg !1593
  %sub7.i383.1 = sub nsw i32 %conv4.i357.1, %conv6.i346.1, !dbg !1594
    #dbg_value(i32 %sub7.i383.1, !80, !DIExpression(), !1595)
    #dbg_value(i32 %sub7.i383.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1595)
  %sub.i14.i384.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.1, i1 true), !dbg !1597
  %cmp9.i385.1 = icmp sge i32 %sub.i14.i384.1, %mvlimit, !dbg !1598
  %or13.i386.1 = or i1 %cmp.i380.1, %cmp9.i385.1, !dbg !1599
  %or151399.1 = or i1 %or13.i386.1, %or13.i374.1, !dbg !1600
  %63 = zext i1 %or151399.1 to i32, !dbg !1573
  br label %if.end158.1

if.end158.1:                                      ; preds = %if.else127.1, %land.rhs140.1, %if.then105.1, %if.else115.1, %lor.lhs.false93.1, %land.lhs.true.1, %lor.lhs.false34.1, %i64_power2.exit.1
  %StrValue.1.1 = phi i32 [ 2, %lor.lhs.false34.1 ], [ 2, %i64_power2.exit.1 ], [ 0, %land.lhs.true.1 ], [ %or.1, %if.then105.1 ], [ %or126.1, %if.else115.1 ], [ 1, %lor.lhs.false93.1 ], [ 0, %if.else127.1 ], [ %63, %land.rhs140.1 ], !dbg !1602
    #dbg_value(i32 %StrValue.1.1, !1320, !DIExpression(), !1353)
  %mul.1 = mul nuw nsw i32 %StrValue.1.1, 16843009, !dbg !1603
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4, !dbg !1607
  store i32 %mul.1, ptr %add.ptr.1, align 4, !dbg !1604
    #dbg_value(i64 8, !1332, !DIExpression(), !1387)
  %64 = add nsw i64 %8, 8, !dbg !1605
    #dbg_value(!DIArgList(i64 8, i32 %shr), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
    #dbg_value(!DIArgList(i64 8, i32 %and26), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus, DW_OP_stack_value), !1387)
  %65 = load i64, ptr %cbp_blk, align 8, !dbg !1391
    #dbg_value(i64 %64, !1392, !DIExpression(), !1397)
  %cmp.i296.2 = icmp sgt i32 %shr, 55, !dbg !1399
  br i1 %cmp.i296.2, label %i64_power2.exit.2, label %cond.false.i.2, !dbg !1400

cond.false.i.2:                                   ; preds = %if.end158.1
  %arrayidx.i.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %64, !dbg !1401
  %66 = load i64, ptr %arrayidx.i.2, align 8, !dbg !1401
  br label %i64_power2.exit.2, !dbg !1400

i64_power2.exit.2:                                ; preds = %cond.false.i.2, %if.end158.1
  %cond.i.2 = phi i64 [ %66, %cond.false.i.2 ], [ 0, %if.end158.1 ], !dbg !1400
  %and31.2 = and i64 %cond.i.2, %65, !dbg !1402
  %cmp32.not.2 = icmp eq i64 %and31.2, 0, !dbg !1403
  br i1 %cmp32.not.2, label %lor.lhs.false34.2, label %if.end158.2, !dbg !1404

lor.lhs.false34.2:                                ; preds = %i64_power2.exit.2
    #dbg_value(!DIArgList(i64 8, i32 %shr27), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
  %67 = or disjoint i64 %7, 8, !dbg !1606
    #dbg_value(i64 %67, !1328, !DIExpression(), !1387)
  %68 = load i64, ptr %cbp_blk35, align 8, !dbg !1405
    #dbg_value(i64 %67, !1392, !DIExpression(), !1406)
  %arrayidx.i300.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %67, !dbg !1408
  %69 = load i64, ptr %arrayidx.i300.2, align 8, !dbg !1408
  %and38.2 = and i64 %69, %68, !dbg !1409
  %cmp39.not.2 = icmp eq i64 %and38.2, 0, !dbg !1410
  br i1 %cmp39.not.2, label %if.else42.2, label %if.end158.2, !dbg !1411

if.else42.2:                                      ; preds = %lor.lhs.false34.2
  br i1 %tobool.not392, label %if.else53.2, label %land.lhs.true.2, !dbg !1412

land.lhs.true.2:                                  ; preds = %if.else42.2
  %70 = load i16, ptr %mb_type, align 8, !dbg !1413
  %.off274.2 = add i16 %70, -1, !dbg !1414
  %switch275.2 = icmp ult i16 %.off274.2, 2, !dbg !1414
  br i1 %switch275.2, label %if.end158.2, label %if.else53.2, !dbg !1414

if.else53.2:                                      ; preds = %land.lhs.true.2, %if.else42.2
  %71 = trunc nsw i64 %64 to i32, !dbg !1415
  %shr56.2 = ashr i32 %71, 2, !dbg !1415
  %add57.2 = add nsw i32 %shr56.2, %conv55, !dbg !1416
    #dbg_value(i32 %add57.2, !1334, !DIExpression(), !1417)
    #dbg_value(i32 %add61, !1341, !DIExpression(), !1417)
  %72 = load i32, ptr %pix_y, align 8, !dbg !1418
  %add63.2 = shl i32 %72, 16, !dbg !1419
  %sext.2 = add i32 %add63.2, 524288, !dbg !1419
  %shr66.2 = ashr i32 %sext.2, 18, !dbg !1420
    #dbg_value(i32 %shr66.2, !1342, !DIExpression(), !1417)
  %73 = load i32, ptr %pix_x, align 4, !dbg !1421
  %add68.2 = add nsw i32 %73, %and26, !dbg !1421
  %sext272.2 = shl i32 %add68.2, 16, !dbg !1422
  %shr71.2 = ashr i32 %sext272.2, 18, !dbg !1423
    #dbg_value(i32 %shr71.2, !1343, !DIExpression(), !1417)
  %74 = load ptr, ptr %mv_info, align 8, !dbg !1424
  %idxprom72.2 = sext i32 %add57.2 to i64, !dbg !1425
  %arrayidx73.2 = getelementptr inbounds ptr, ptr %74, i64 %idxprom72.2, !dbg !1425
  %75 = load ptr, ptr %arrayidx73.2, align 8, !dbg !1425
  %arrayidx75.2 = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %idxprom74, !dbg !1425
    #dbg_value(ptr %arrayidx75.2, !1344, !DIExpression(), !1417)
  %76 = load ptr, ptr %arrayidx75.2, align 8, !dbg !1426
    #dbg_value(ptr %76, !1347, !DIExpression(), !1417)
  %arrayidx78.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 8, !dbg !1427
  %77 = load ptr, ptr %arrayidx78.2, align 8, !dbg !1427
    #dbg_value(ptr %77, !1349, !DIExpression(), !1417)
  %idxprom80.2 = sext i32 %shr66.2 to i64, !dbg !1428
  %arrayidx81.2 = getelementptr inbounds ptr, ptr %74, i64 %idxprom80.2, !dbg !1428
  %78 = load ptr, ptr %arrayidx81.2, align 8, !dbg !1428
  %idxprom82.2 = sext i32 %shr71.2 to i64, !dbg !1428
  %arrayidx83.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %idxprom82.2, !dbg !1428
    #dbg_value(ptr %arrayidx83.2, !1350, !DIExpression(), !1417)
  %79 = load ptr, ptr %arrayidx83.2, align 8, !dbg !1429
    #dbg_value(ptr %79, !1351, !DIExpression(), !1417)
  %arrayidx87.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 8, !dbg !1430
  %80 = load ptr, ptr %arrayidx87.2, align 8, !dbg !1430
    #dbg_value(ptr %80, !1352, !DIExpression(), !1417)
  %cmp88.2 = icmp eq ptr %76, %79, !dbg !1431
  %cmp91.2 = icmp eq ptr %77, %80
  %or.cond.2 = select i1 %cmp88.2, i1 %cmp91.2, i1 false, !dbg !1433
  br i1 %or.cond.2, label %if.then99.2, label %lor.lhs.false93.2, !dbg !1433

lor.lhs.false93.2:                                ; preds = %if.else53.2
  %cmp94.2 = icmp eq ptr %76, %80, !dbg !1434
  %cmp97.2 = icmp eq ptr %77, %79
  %or.cond273.2 = select i1 %cmp94.2, i1 %cmp97.2, i1 false, !dbg !1435
  br i1 %or.cond273.2, label %if.then99.2, label %if.end158.2, !dbg !1435

if.then99.2:                                      ; preds = %lor.lhs.false93.2, %if.else53.2
  %cmp100.not.2 = icmp eq ptr %76, %77, !dbg !1436
  %mv128.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 16, !dbg !1439
  %mv130.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 16, !dbg !1439
  br i1 %cmp100.not.2, label %if.else127.2, label %if.then102.2, !dbg !1440

if.then102.2:                                     ; preds = %if.then99.2
  %81 = getelementptr i8, ptr %arrayidx75.2, i64 22, !dbg !1441
  %arrayidx111.val292.2 = load i16, ptr %81, align 2, !dbg !1441
  br i1 %cmp88.2, label %if.then105.2, label %if.else115.2, !dbg !1444

if.else115.2:                                     ; preds = %if.then102.2
  %arrayidx119.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1495
  %mv116.val.2 = load i16, ptr %mv128.2, align 2, !dbg !1497
  %82 = getelementptr i8, ptr %arrayidx75.2, i64 18, !dbg !1497
  %mv116.val290.2 = load i16, ptr %82, align 2, !dbg !1497
  %arrayidx119.val.2 = load i16, ptr %arrayidx119.2, align 2, !dbg !1497
  %83 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1497
  %arrayidx119.val291.2 = load i16, ptr %83, align 2, !dbg !1497
    #dbg_value(ptr undef, !1447, !DIExpression(), !1498)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1498)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1498)
  %conv.i316.2 = sext i16 %mv116.val.2 to i32, !dbg !1500
  %conv2.i317.2 = sext i16 %arrayidx119.val.2 to i32, !dbg !1501
  %sub.i318.2 = sub nsw i32 %conv.i316.2, %conv2.i317.2, !dbg !1502
    #dbg_value(i32 %sub.i318.2, !80, !DIExpression(), !1503)
    #dbg_value(i32 %sub.i318.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1503)
  %sub.i.i319.2 = tail call i32 @llvm.abs.i32(i32 %sub.i318.2, i1 true), !dbg !1505
  %cmp.i320.2 = icmp ugt i32 %sub.i.i319.2, 3, !dbg !1506
  %conv4.i321.2 = sext i16 %mv116.val290.2 to i32, !dbg !1507
  %conv6.i322.2 = sext i16 %arrayidx119.val291.2 to i32, !dbg !1508
  %sub7.i323.2 = sub nsw i32 %conv4.i321.2, %conv6.i322.2, !dbg !1509
    #dbg_value(i32 %sub7.i323.2, !80, !DIExpression(), !1510)
    #dbg_value(i32 %sub7.i323.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1510)
  %sub.i14.i324.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.2, i1 true), !dbg !1512
  %cmp9.i325.2 = icmp sge i32 %sub.i14.i324.2, %mvlimit, !dbg !1513
  %or13.i326.2 = or i1 %cmp.i320.2, %cmp9.i325.2, !dbg !1514
  %arrayidx122.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20, !dbg !1515
  %arrayidx122.val.2 = load i16, ptr %arrayidx122.2, align 2, !dbg !1516
  %mv118.val.2 = load i16, ptr %mv130.2, align 2, !dbg !1516
  %84 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1516
  %mv118.val289.2 = load i16, ptr %84, align 2, !dbg !1516
    #dbg_value(ptr undef, !1447, !DIExpression(), !1517)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1517)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1517)
  %conv.i328.2 = sext i16 %arrayidx122.val.2 to i32, !dbg !1519
  %conv2.i329.2 = sext i16 %mv118.val.2 to i32, !dbg !1520
  %sub.i330.2 = sub nsw i32 %conv.i328.2, %conv2.i329.2, !dbg !1521
    #dbg_value(i32 %sub.i330.2, !80, !DIExpression(), !1522)
    #dbg_value(i32 %sub.i330.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1522)
  %sub.i.i331.2 = tail call i32 @llvm.abs.i32(i32 %sub.i330.2, i1 true), !dbg !1524
  %cmp.i332.2 = icmp ugt i32 %sub.i.i331.2, 3, !dbg !1525
  %conv4.i333.2 = sext i16 %arrayidx111.val292.2 to i32, !dbg !1526
  %conv6.i334.2 = sext i16 %mv118.val289.2 to i32, !dbg !1527
  %sub7.i335.2 = sub nsw i32 %conv4.i333.2, %conv6.i334.2, !dbg !1528
    #dbg_value(i32 %sub7.i335.2, !80, !DIExpression(), !1529)
    #dbg_value(i32 %sub7.i335.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1529)
  %sub.i14.i336.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.2, i1 true), !dbg !1531
  %cmp9.i337.2 = icmp sge i32 %sub.i14.i336.2, %mvlimit, !dbg !1532
  %or13.i338.2 = or i1 %cmp.i332.2, %cmp9.i337.2, !dbg !1533
  %or126394.2 = or i1 %or13.i326.2, %or13.i338.2, !dbg !1534
  %or126.2 = zext i1 %or126394.2 to i32, !dbg !1534
    #dbg_value(i32 %or126.2, !1320, !DIExpression(), !1353)
  br label %if.end158.2

if.then105.2:                                     ; preds = %if.then102.2
  %mv.val.2 = load i16, ptr %mv128.2, align 2, !dbg !1445
  %85 = getelementptr i8, ptr %arrayidx75.2, i64 18, !dbg !1445
  %mv.val294.2 = load i16, ptr %85, align 2, !dbg !1445
  %mv107.val.2 = load i16, ptr %mv130.2, align 2, !dbg !1445
  %86 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1445
  %mv107.val295.2 = load i16, ptr %86, align 2, !dbg !1445
    #dbg_value(ptr undef, !1447, !DIExpression(), !1456)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1456)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1456)
  %conv.i.2 = sext i16 %mv.val.2 to i32, !dbg !1458
  %conv2.i.2 = sext i16 %mv107.val.2 to i32, !dbg !1459
  %sub.i.2 = sub nsw i32 %conv.i.2, %conv2.i.2, !dbg !1460
    #dbg_value(i32 %sub.i.2, !80, !DIExpression(), !1461)
    #dbg_value(i32 %sub.i.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1461)
  %sub.i.i.2 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 true), !dbg !1463
  %cmp.i303.2 = icmp ugt i32 %sub.i.i.2, 3, !dbg !1464
  %conv4.i.2 = sext i16 %mv.val294.2 to i32, !dbg !1465
  %conv6.i.2 = sext i16 %mv107.val295.2 to i32, !dbg !1466
  %sub7.i.2 = sub nsw i32 %conv4.i.2, %conv6.i.2, !dbg !1467
    #dbg_value(i32 %sub7.i.2, !80, !DIExpression(), !1468)
    #dbg_value(i32 %sub7.i.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1468)
  %sub.i14.i.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i.2, i1 true), !dbg !1470
  %cmp9.i.2 = icmp sge i32 %sub.i14.i.2, %mvlimit, !dbg !1471
  %or13.i.2 = or i1 %cmp.i303.2, %cmp9.i.2, !dbg !1472
  %arrayidx111.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20, !dbg !1473
  %arrayidx113.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1474
  %arrayidx111.val.2 = load i16, ptr %arrayidx111.2, align 2, !dbg !1475
  %arrayidx113.val.2 = load i16, ptr %arrayidx113.2, align 2, !dbg !1475
  %87 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1475
  %arrayidx113.val293.2 = load i16, ptr %87, align 2, !dbg !1475
    #dbg_value(ptr undef, !1447, !DIExpression(), !1476)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1476)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1476)
  %conv.i304.2 = sext i16 %arrayidx111.val.2 to i32, !dbg !1478
  %conv2.i305.2 = sext i16 %arrayidx113.val.2 to i32, !dbg !1479
  %sub.i306.2 = sub nsw i32 %conv.i304.2, %conv2.i305.2, !dbg !1480
    #dbg_value(i32 %sub.i306.2, !80, !DIExpression(), !1481)
    #dbg_value(i32 %sub.i306.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1481)
  %sub.i.i307.2 = tail call i32 @llvm.abs.i32(i32 %sub.i306.2, i1 true), !dbg !1483
  %cmp.i308.2 = icmp ugt i32 %sub.i.i307.2, 3, !dbg !1484
  %conv4.i309.2 = sext i16 %arrayidx111.val292.2 to i32, !dbg !1485
  %conv6.i310.2 = sext i16 %arrayidx113.val293.2 to i32, !dbg !1486
  %sub7.i311.2 = sub nsw i32 %conv4.i309.2, %conv6.i310.2, !dbg !1487
    #dbg_value(i32 %sub7.i311.2, !80, !DIExpression(), !1488)
    #dbg_value(i32 %sub7.i311.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1488)
  %sub.i14.i312.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.2, i1 true), !dbg !1490
  %cmp9.i313.2 = icmp sge i32 %sub.i14.i312.2, %mvlimit, !dbg !1491
  %or13.i314.2 = or i1 %cmp.i308.2, %cmp9.i313.2, !dbg !1492
  %or395.2 = or i1 %or13.i.2, %or13.i314.2, !dbg !1493
  %or.2 = zext i1 %or395.2 to i32, !dbg !1493
    #dbg_value(i32 %or.2, !1320, !DIExpression(), !1353)
  br label %if.end158.2, !dbg !1494

if.else127.2:                                     ; preds = %if.then99.2
  %mv128.val284.2 = load i16, ptr %mv128.2, align 2, !dbg !1535
  %88 = getelementptr i8, ptr %arrayidx75.2, i64 18, !dbg !1535
  %mv128.val285.2 = load i16, ptr %88, align 2, !dbg !1535
  %mv130.val286.2 = load i16, ptr %mv130.2, align 2, !dbg !1535
  %89 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1535
  %mv130.val287.2 = load i16, ptr %89, align 2, !dbg !1535
    #dbg_value(ptr undef, !1447, !DIExpression(), !1537)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1537)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1537)
  %conv.i340.2 = sext i16 %mv128.val284.2 to i32, !dbg !1539
  %conv2.i341.2 = sext i16 %mv130.val286.2 to i32, !dbg !1540
  %sub.i342.2 = sub nsw i32 %conv.i340.2, %conv2.i341.2, !dbg !1541
    #dbg_value(i32 %sub.i342.2, !80, !DIExpression(), !1542)
    #dbg_value(i32 %sub.i342.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1542)
  %sub.i.i343.2 = tail call i32 @llvm.abs.i32(i32 %sub.i342.2, i1 true), !dbg !1544
  %cmp.i344.2 = icmp ult i32 %sub.i.i343.2, 4, !dbg !1545
  %conv4.i345.2 = sext i16 %mv128.val285.2 to i32, !dbg !1546
  %conv6.i346.2 = sext i16 %mv130.val287.2 to i32, !dbg !1547
  %sub7.i347.2 = sub nsw i32 %conv4.i345.2, %conv6.i346.2, !dbg !1548
    #dbg_value(i32 %sub7.i347.2, !80, !DIExpression(), !1549)
    #dbg_value(i32 %sub7.i347.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1549)
  %sub.i14.i348.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.2, i1 true), !dbg !1551
  %cmp9.i349.2 = icmp slt i32 %sub.i14.i348.2, %mvlimit, !dbg !1552
  %or13.i350.not397.2 = and i1 %cmp.i344.2, %cmp9.i349.2, !dbg !1553
  %arrayidx134.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20, !dbg !1553
  %arrayidx136.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1554
  %arrayidx134.val280.2 = load i16, ptr %arrayidx134.2, align 2, !dbg !1555
  %90 = getelementptr i8, ptr %arrayidx75.2, i64 22, !dbg !1555
  %arrayidx134.val281.2 = load i16, ptr %90, align 2, !dbg !1555
  %arrayidx136.val282.2 = load i16, ptr %arrayidx136.2, align 2, !dbg !1555
  %91 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1555
  %arrayidx136.val283.2 = load i16, ptr %91, align 2, !dbg !1555
    #dbg_value(ptr undef, !1447, !DIExpression(), !1556)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1556)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1556)
  %conv.i352.2 = sext i16 %arrayidx134.val280.2 to i32, !dbg !1558
  %conv2.i353.2 = sext i16 %arrayidx136.val282.2 to i32, !dbg !1559
  %sub.i354.2 = sub nsw i32 %conv.i352.2, %conv2.i353.2, !dbg !1560
    #dbg_value(i32 %sub.i354.2, !80, !DIExpression(), !1561)
    #dbg_value(i32 %sub.i354.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1561)
  %sub.i.i355.2 = tail call i32 @llvm.abs.i32(i32 %sub.i354.2, i1 true), !dbg !1563
  %cmp.i356.2 = icmp ult i32 %sub.i.i355.2, 4, !dbg !1564
  %conv4.i357.2 = sext i16 %arrayidx134.val281.2 to i32, !dbg !1565
  %conv6.i358.2 = sext i16 %arrayidx136.val283.2 to i32, !dbg !1566
  %sub7.i359.2 = sub nsw i32 %conv4.i357.2, %conv6.i358.2, !dbg !1567
    #dbg_value(i32 %sub7.i359.2, !80, !DIExpression(), !1568)
    #dbg_value(i32 %sub7.i359.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1568)
  %sub.i14.i360.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.2, i1 true), !dbg !1570
  %cmp9.i361.2 = icmp slt i32 %sub.i14.i360.2, %mvlimit, !dbg !1571
  %or13.i362.not398.2 = and i1 %cmp.i356.2, %cmp9.i361.2, !dbg !1572
  %or138396.not.2 = and i1 %or13.i350.not397.2, %or13.i362.not398.2, !dbg !1572
  br i1 %or138396.not.2, label %if.end158.2, label %land.rhs140.2, !dbg !1573

land.rhs140.2:                                    ; preds = %if.else127.2
    #dbg_value(ptr undef, !1447, !DIExpression(), !1574)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1574)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1574)
  %sub.i366.2 = sub nsw i32 %conv.i340.2, %conv2.i353.2, !dbg !1576
    #dbg_value(i32 %sub.i366.2, !80, !DIExpression(), !1577)
    #dbg_value(i32 %sub.i366.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1577)
  %sub.i.i367.2 = tail call i32 @llvm.abs.i32(i32 %sub.i366.2, i1 true), !dbg !1579
  %cmp.i368.2 = icmp ugt i32 %sub.i.i367.2, 3, !dbg !1580
  %sub7.i371.2 = sub nsw i32 %conv4.i345.2, %conv6.i358.2, !dbg !1581
    #dbg_value(i32 %sub7.i371.2, !80, !DIExpression(), !1582)
    #dbg_value(i32 %sub7.i371.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1582)
  %sub.i14.i372.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.2, i1 true), !dbg !1584
  %cmp9.i373.2 = icmp sge i32 %sub.i14.i372.2, %mvlimit, !dbg !1585
  %or13.i374.2 = or i1 %cmp.i368.2, %cmp9.i373.2, !dbg !1586
    #dbg_value(ptr undef, !1447, !DIExpression(), !1587)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1587)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1587)
  %sub.i378.2 = sub nsw i32 %conv.i352.2, %conv2.i341.2, !dbg !1589
    #dbg_value(i32 %sub.i378.2, !80, !DIExpression(), !1590)
    #dbg_value(i32 %sub.i378.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1590)
  %sub.i.i379.2 = tail call i32 @llvm.abs.i32(i32 %sub.i378.2, i1 true), !dbg !1592
  %cmp.i380.2 = icmp ugt i32 %sub.i.i379.2, 3, !dbg !1593
  %sub7.i383.2 = sub nsw i32 %conv4.i357.2, %conv6.i346.2, !dbg !1594
    #dbg_value(i32 %sub7.i383.2, !80, !DIExpression(), !1595)
    #dbg_value(i32 %sub7.i383.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1595)
  %sub.i14.i384.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.2, i1 true), !dbg !1597
  %cmp9.i385.2 = icmp sge i32 %sub.i14.i384.2, %mvlimit, !dbg !1598
  %or13.i386.2 = or i1 %cmp.i380.2, %cmp9.i385.2, !dbg !1599
  %or151399.2 = or i1 %or13.i386.2, %or13.i374.2, !dbg !1600
  %92 = zext i1 %or151399.2 to i32, !dbg !1573
  br label %if.end158.2

if.end158.2:                                      ; preds = %if.else127.2, %land.rhs140.2, %if.then105.2, %if.else115.2, %lor.lhs.false93.2, %land.lhs.true.2, %lor.lhs.false34.2, %i64_power2.exit.2
  %StrValue.1.2 = phi i32 [ 2, %lor.lhs.false34.2 ], [ 2, %i64_power2.exit.2 ], [ 0, %land.lhs.true.2 ], [ %or.2, %if.then105.2 ], [ %or126.2, %if.else115.2 ], [ 1, %lor.lhs.false93.2 ], [ 0, %if.else127.2 ], [ %92, %land.rhs140.2 ], !dbg !1602
    #dbg_value(i32 %StrValue.1.2, !1320, !DIExpression(), !1353)
  %mul.2 = mul nuw nsw i32 %StrValue.1.2, 16843009, !dbg !1603
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8, !dbg !1607
  store i32 %mul.2, ptr %add.ptr.2, align 4, !dbg !1604
    #dbg_value(i64 12, !1332, !DIExpression(), !1387)
  %93 = add nsw i64 %8, 12, !dbg !1605
    #dbg_value(!DIArgList(i64 12, i32 %shr), !1331, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
    #dbg_value(!DIArgList(i64 12, i32 %and26), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shr, DW_OP_plus, DW_OP_stack_value), !1387)
  %94 = load i64, ptr %cbp_blk, align 8, !dbg !1391
    #dbg_value(i64 %93, !1392, !DIExpression(), !1397)
  %cmp.i296.3 = icmp sgt i32 %shr, 51, !dbg !1399
  br i1 %cmp.i296.3, label %i64_power2.exit.3, label %cond.false.i.3, !dbg !1400

cond.false.i.3:                                   ; preds = %if.end158.2
  %arrayidx.i.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %93, !dbg !1401
  %95 = load i64, ptr %arrayidx.i.3, align 8, !dbg !1401
  br label %i64_power2.exit.3, !dbg !1400

i64_power2.exit.3:                                ; preds = %cond.false.i.3, %if.end158.2
  %cond.i.3 = phi i64 [ %95, %cond.false.i.3 ], [ 0, %if.end158.2 ], !dbg !1400
  %and31.3 = and i64 %cond.i.3, %94, !dbg !1402
  %cmp32.not.3 = icmp eq i64 %and31.3, 0, !dbg !1403
  br i1 %cmp32.not.3, label %lor.lhs.false34.3, label %if.end158.3, !dbg !1404

lor.lhs.false34.3:                                ; preds = %i64_power2.exit.3
    #dbg_value(!DIArgList(i64 12, i32 %shr27), !1328, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1387)
  %96 = or disjoint i64 %7, 12, !dbg !1606
    #dbg_value(i64 %96, !1328, !DIExpression(), !1387)
  %97 = load i64, ptr %cbp_blk35, align 8, !dbg !1405
    #dbg_value(i64 %96, !1392, !DIExpression(), !1406)
  %arrayidx.i300.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %96, !dbg !1408
  %98 = load i64, ptr %arrayidx.i300.3, align 8, !dbg !1408
  %and38.3 = and i64 %98, %97, !dbg !1409
  %cmp39.not.3 = icmp eq i64 %and38.3, 0, !dbg !1410
  br i1 %cmp39.not.3, label %if.else42.3, label %if.end158.3, !dbg !1411

if.else42.3:                                      ; preds = %lor.lhs.false34.3
  br i1 %tobool.not392, label %if.else53.3, label %land.lhs.true.3, !dbg !1412

land.lhs.true.3:                                  ; preds = %if.else42.3
  %99 = load i16, ptr %mb_type, align 8, !dbg !1413
  %.off274.3 = add i16 %99, -1, !dbg !1414
  %switch275.3 = icmp ult i16 %.off274.3, 2, !dbg !1414
  br i1 %switch275.3, label %if.end158.3, label %if.else53.3, !dbg !1414

if.else53.3:                                      ; preds = %land.lhs.true.3, %if.else42.3
  %100 = trunc nsw i64 %93 to i32, !dbg !1415
  %shr56.3 = ashr i32 %100, 2, !dbg !1415
  %add57.3 = add nsw i32 %shr56.3, %conv55, !dbg !1416
    #dbg_value(i32 %add57.3, !1334, !DIExpression(), !1417)
    #dbg_value(i32 %add61, !1341, !DIExpression(), !1417)
  %101 = load i32, ptr %pix_y, align 8, !dbg !1418
  %add63.3 = shl i32 %101, 16, !dbg !1419
  %sext.3 = add i32 %add63.3, 786432, !dbg !1419
  %shr66.3 = ashr i32 %sext.3, 18, !dbg !1420
    #dbg_value(i32 %shr66.3, !1342, !DIExpression(), !1417)
  %102 = load i32, ptr %pix_x, align 4, !dbg !1421
  %add68.3 = add nsw i32 %102, %and26, !dbg !1421
  %sext272.3 = shl i32 %add68.3, 16, !dbg !1422
  %shr71.3 = ashr i32 %sext272.3, 18, !dbg !1423
    #dbg_value(i32 %shr71.3, !1343, !DIExpression(), !1417)
  %103 = load ptr, ptr %mv_info, align 8, !dbg !1424
  %idxprom72.3 = sext i32 %add57.3 to i64, !dbg !1425
  %arrayidx73.3 = getelementptr inbounds ptr, ptr %103, i64 %idxprom72.3, !dbg !1425
  %104 = load ptr, ptr %arrayidx73.3, align 8, !dbg !1425
  %arrayidx75.3 = getelementptr inbounds %struct.pic_motion_params, ptr %104, i64 %idxprom74, !dbg !1425
    #dbg_value(ptr %arrayidx75.3, !1344, !DIExpression(), !1417)
  %105 = load ptr, ptr %arrayidx75.3, align 8, !dbg !1426
    #dbg_value(ptr %105, !1347, !DIExpression(), !1417)
  %arrayidx78.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 8, !dbg !1427
  %106 = load ptr, ptr %arrayidx78.3, align 8, !dbg !1427
    #dbg_value(ptr %106, !1349, !DIExpression(), !1417)
  %idxprom80.3 = sext i32 %shr66.3 to i64, !dbg !1428
  %arrayidx81.3 = getelementptr inbounds ptr, ptr %103, i64 %idxprom80.3, !dbg !1428
  %107 = load ptr, ptr %arrayidx81.3, align 8, !dbg !1428
  %idxprom82.3 = sext i32 %shr71.3 to i64, !dbg !1428
  %arrayidx83.3 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %idxprom82.3, !dbg !1428
    #dbg_value(ptr %arrayidx83.3, !1350, !DIExpression(), !1417)
  %108 = load ptr, ptr %arrayidx83.3, align 8, !dbg !1429
    #dbg_value(ptr %108, !1351, !DIExpression(), !1417)
  %arrayidx87.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 8, !dbg !1430
  %109 = load ptr, ptr %arrayidx87.3, align 8, !dbg !1430
    #dbg_value(ptr %109, !1352, !DIExpression(), !1417)
  %cmp88.3 = icmp eq ptr %105, %108, !dbg !1431
  %cmp91.3 = icmp eq ptr %106, %109
  %or.cond.3 = select i1 %cmp88.3, i1 %cmp91.3, i1 false, !dbg !1433
  br i1 %or.cond.3, label %if.then99.3, label %lor.lhs.false93.3, !dbg !1433

lor.lhs.false93.3:                                ; preds = %if.else53.3
  %cmp94.3 = icmp eq ptr %105, %109, !dbg !1434
  %cmp97.3 = icmp eq ptr %106, %108
  %or.cond273.3 = select i1 %cmp94.3, i1 %cmp97.3, i1 false, !dbg !1435
  br i1 %or.cond273.3, label %if.then99.3, label %if.end158.3, !dbg !1435

if.then99.3:                                      ; preds = %lor.lhs.false93.3, %if.else53.3
  %cmp100.not.3 = icmp eq ptr %105, %106, !dbg !1436
  %mv128.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 16, !dbg !1439
  %mv130.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 16, !dbg !1439
  br i1 %cmp100.not.3, label %if.else127.3, label %if.then102.3, !dbg !1440

if.then102.3:                                     ; preds = %if.then99.3
  %110 = getelementptr i8, ptr %arrayidx75.3, i64 22, !dbg !1441
  %arrayidx111.val292.3 = load i16, ptr %110, align 2, !dbg !1441
  br i1 %cmp88.3, label %if.then105.3, label %if.else115.3, !dbg !1444

if.else115.3:                                     ; preds = %if.then102.3
  %arrayidx119.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1495
  %mv116.val.3 = load i16, ptr %mv128.3, align 2, !dbg !1497
  %111 = getelementptr i8, ptr %arrayidx75.3, i64 18, !dbg !1497
  %mv116.val290.3 = load i16, ptr %111, align 2, !dbg !1497
  %arrayidx119.val.3 = load i16, ptr %arrayidx119.3, align 2, !dbg !1497
  %112 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1497
  %arrayidx119.val291.3 = load i16, ptr %112, align 2, !dbg !1497
    #dbg_value(ptr undef, !1447, !DIExpression(), !1498)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1498)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1498)
  %conv.i316.3 = sext i16 %mv116.val.3 to i32, !dbg !1500
  %conv2.i317.3 = sext i16 %arrayidx119.val.3 to i32, !dbg !1501
  %sub.i318.3 = sub nsw i32 %conv.i316.3, %conv2.i317.3, !dbg !1502
    #dbg_value(i32 %sub.i318.3, !80, !DIExpression(), !1503)
    #dbg_value(i32 %sub.i318.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1503)
  %sub.i.i319.3 = tail call i32 @llvm.abs.i32(i32 %sub.i318.3, i1 true), !dbg !1505
  %cmp.i320.3 = icmp ugt i32 %sub.i.i319.3, 3, !dbg !1506
  %conv4.i321.3 = sext i16 %mv116.val290.3 to i32, !dbg !1507
  %conv6.i322.3 = sext i16 %arrayidx119.val291.3 to i32, !dbg !1508
  %sub7.i323.3 = sub nsw i32 %conv4.i321.3, %conv6.i322.3, !dbg !1509
    #dbg_value(i32 %sub7.i323.3, !80, !DIExpression(), !1510)
    #dbg_value(i32 %sub7.i323.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1510)
  %sub.i14.i324.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.3, i1 true), !dbg !1512
  %cmp9.i325.3 = icmp sge i32 %sub.i14.i324.3, %mvlimit, !dbg !1513
  %or13.i326.3 = or i1 %cmp.i320.3, %cmp9.i325.3, !dbg !1514
  %arrayidx122.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20, !dbg !1515
  %arrayidx122.val.3 = load i16, ptr %arrayidx122.3, align 2, !dbg !1516
  %mv118.val.3 = load i16, ptr %mv130.3, align 2, !dbg !1516
  %113 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1516
  %mv118.val289.3 = load i16, ptr %113, align 2, !dbg !1516
    #dbg_value(ptr undef, !1447, !DIExpression(), !1517)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1517)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1517)
  %conv.i328.3 = sext i16 %arrayidx122.val.3 to i32, !dbg !1519
  %conv2.i329.3 = sext i16 %mv118.val.3 to i32, !dbg !1520
  %sub.i330.3 = sub nsw i32 %conv.i328.3, %conv2.i329.3, !dbg !1521
    #dbg_value(i32 %sub.i330.3, !80, !DIExpression(), !1522)
    #dbg_value(i32 %sub.i330.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1522)
  %sub.i.i331.3 = tail call i32 @llvm.abs.i32(i32 %sub.i330.3, i1 true), !dbg !1524
  %cmp.i332.3 = icmp ugt i32 %sub.i.i331.3, 3, !dbg !1525
  %conv4.i333.3 = sext i16 %arrayidx111.val292.3 to i32, !dbg !1526
  %conv6.i334.3 = sext i16 %mv118.val289.3 to i32, !dbg !1527
  %sub7.i335.3 = sub nsw i32 %conv4.i333.3, %conv6.i334.3, !dbg !1528
    #dbg_value(i32 %sub7.i335.3, !80, !DIExpression(), !1529)
    #dbg_value(i32 %sub7.i335.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1529)
  %sub.i14.i336.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.3, i1 true), !dbg !1531
  %cmp9.i337.3 = icmp sge i32 %sub.i14.i336.3, %mvlimit, !dbg !1532
  %or13.i338.3 = or i1 %cmp.i332.3, %cmp9.i337.3, !dbg !1533
  %or126394.3 = or i1 %or13.i326.3, %or13.i338.3, !dbg !1534
  %or126.3 = zext i1 %or126394.3 to i32, !dbg !1534
    #dbg_value(i32 %or126.3, !1320, !DIExpression(), !1353)
  br label %if.end158.3

if.then105.3:                                     ; preds = %if.then102.3
  %mv.val.3 = load i16, ptr %mv128.3, align 2, !dbg !1445
  %114 = getelementptr i8, ptr %arrayidx75.3, i64 18, !dbg !1445
  %mv.val294.3 = load i16, ptr %114, align 2, !dbg !1445
  %mv107.val.3 = load i16, ptr %mv130.3, align 2, !dbg !1445
  %115 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1445
  %mv107.val295.3 = load i16, ptr %115, align 2, !dbg !1445
    #dbg_value(ptr undef, !1447, !DIExpression(), !1456)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1456)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1456)
  %conv.i.3 = sext i16 %mv.val.3 to i32, !dbg !1458
  %conv2.i.3 = sext i16 %mv107.val.3 to i32, !dbg !1459
  %sub.i.3 = sub nsw i32 %conv.i.3, %conv2.i.3, !dbg !1460
    #dbg_value(i32 %sub.i.3, !80, !DIExpression(), !1461)
    #dbg_value(i32 %sub.i.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1461)
  %sub.i.i.3 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 true), !dbg !1463
  %cmp.i303.3 = icmp ugt i32 %sub.i.i.3, 3, !dbg !1464
  %conv4.i.3 = sext i16 %mv.val294.3 to i32, !dbg !1465
  %conv6.i.3 = sext i16 %mv107.val295.3 to i32, !dbg !1466
  %sub7.i.3 = sub nsw i32 %conv4.i.3, %conv6.i.3, !dbg !1467
    #dbg_value(i32 %sub7.i.3, !80, !DIExpression(), !1468)
    #dbg_value(i32 %sub7.i.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1468)
  %sub.i14.i.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i.3, i1 true), !dbg !1470
  %cmp9.i.3 = icmp sge i32 %sub.i14.i.3, %mvlimit, !dbg !1471
  %or13.i.3 = or i1 %cmp.i303.3, %cmp9.i.3, !dbg !1472
  %arrayidx111.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20, !dbg !1473
  %arrayidx113.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1474
  %arrayidx111.val.3 = load i16, ptr %arrayidx111.3, align 2, !dbg !1475
  %arrayidx113.val.3 = load i16, ptr %arrayidx113.3, align 2, !dbg !1475
  %116 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1475
  %arrayidx113.val293.3 = load i16, ptr %116, align 2, !dbg !1475
    #dbg_value(ptr undef, !1447, !DIExpression(), !1476)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1476)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1476)
  %conv.i304.3 = sext i16 %arrayidx111.val.3 to i32, !dbg !1478
  %conv2.i305.3 = sext i16 %arrayidx113.val.3 to i32, !dbg !1479
  %sub.i306.3 = sub nsw i32 %conv.i304.3, %conv2.i305.3, !dbg !1480
    #dbg_value(i32 %sub.i306.3, !80, !DIExpression(), !1481)
    #dbg_value(i32 %sub.i306.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1481)
  %sub.i.i307.3 = tail call i32 @llvm.abs.i32(i32 %sub.i306.3, i1 true), !dbg !1483
  %cmp.i308.3 = icmp ugt i32 %sub.i.i307.3, 3, !dbg !1484
  %conv4.i309.3 = sext i16 %arrayidx111.val292.3 to i32, !dbg !1485
  %conv6.i310.3 = sext i16 %arrayidx113.val293.3 to i32, !dbg !1486
  %sub7.i311.3 = sub nsw i32 %conv4.i309.3, %conv6.i310.3, !dbg !1487
    #dbg_value(i32 %sub7.i311.3, !80, !DIExpression(), !1488)
    #dbg_value(i32 %sub7.i311.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1488)
  %sub.i14.i312.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.3, i1 true), !dbg !1490
  %cmp9.i313.3 = icmp sge i32 %sub.i14.i312.3, %mvlimit, !dbg !1491
  %or13.i314.3 = or i1 %cmp.i308.3, %cmp9.i313.3, !dbg !1492
  %or395.3 = or i1 %or13.i.3, %or13.i314.3, !dbg !1493
  %or.3 = zext i1 %or395.3 to i32, !dbg !1493
    #dbg_value(i32 %or.3, !1320, !DIExpression(), !1353)
  br label %if.end158.3, !dbg !1494

if.else127.3:                                     ; preds = %if.then99.3
  %mv128.val284.3 = load i16, ptr %mv128.3, align 2, !dbg !1535
  %117 = getelementptr i8, ptr %arrayidx75.3, i64 18, !dbg !1535
  %mv128.val285.3 = load i16, ptr %117, align 2, !dbg !1535
  %mv130.val286.3 = load i16, ptr %mv130.3, align 2, !dbg !1535
  %118 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1535
  %mv130.val287.3 = load i16, ptr %118, align 2, !dbg !1535
    #dbg_value(ptr undef, !1447, !DIExpression(), !1537)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1537)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1537)
  %conv.i340.3 = sext i16 %mv128.val284.3 to i32, !dbg !1539
  %conv2.i341.3 = sext i16 %mv130.val286.3 to i32, !dbg !1540
  %sub.i342.3 = sub nsw i32 %conv.i340.3, %conv2.i341.3, !dbg !1541
    #dbg_value(i32 %sub.i342.3, !80, !DIExpression(), !1542)
    #dbg_value(i32 %sub.i342.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1542)
  %sub.i.i343.3 = tail call i32 @llvm.abs.i32(i32 %sub.i342.3, i1 true), !dbg !1544
  %cmp.i344.3 = icmp ult i32 %sub.i.i343.3, 4, !dbg !1545
  %conv4.i345.3 = sext i16 %mv128.val285.3 to i32, !dbg !1546
  %conv6.i346.3 = sext i16 %mv130.val287.3 to i32, !dbg !1547
  %sub7.i347.3 = sub nsw i32 %conv4.i345.3, %conv6.i346.3, !dbg !1548
    #dbg_value(i32 %sub7.i347.3, !80, !DIExpression(), !1549)
    #dbg_value(i32 %sub7.i347.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1549)
  %sub.i14.i348.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.3, i1 true), !dbg !1551
  %cmp9.i349.3 = icmp slt i32 %sub.i14.i348.3, %mvlimit, !dbg !1552
  %or13.i350.not397.3 = and i1 %cmp.i344.3, %cmp9.i349.3, !dbg !1553
  %arrayidx134.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20, !dbg !1553
  %arrayidx136.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1554
  %arrayidx134.val280.3 = load i16, ptr %arrayidx134.3, align 2, !dbg !1555
  %119 = getelementptr i8, ptr %arrayidx75.3, i64 22, !dbg !1555
  %arrayidx134.val281.3 = load i16, ptr %119, align 2, !dbg !1555
  %arrayidx136.val282.3 = load i16, ptr %arrayidx136.3, align 2, !dbg !1555
  %120 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1555
  %arrayidx136.val283.3 = load i16, ptr %120, align 2, !dbg !1555
    #dbg_value(ptr undef, !1447, !DIExpression(), !1556)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1556)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1556)
  %conv.i352.3 = sext i16 %arrayidx134.val280.3 to i32, !dbg !1558
  %conv2.i353.3 = sext i16 %arrayidx136.val282.3 to i32, !dbg !1559
  %sub.i354.3 = sub nsw i32 %conv.i352.3, %conv2.i353.3, !dbg !1560
    #dbg_value(i32 %sub.i354.3, !80, !DIExpression(), !1561)
    #dbg_value(i32 %sub.i354.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1561)
  %sub.i.i355.3 = tail call i32 @llvm.abs.i32(i32 %sub.i354.3, i1 true), !dbg !1563
  %cmp.i356.3 = icmp ult i32 %sub.i.i355.3, 4, !dbg !1564
  %conv4.i357.3 = sext i16 %arrayidx134.val281.3 to i32, !dbg !1565
  %conv6.i358.3 = sext i16 %arrayidx136.val283.3 to i32, !dbg !1566
  %sub7.i359.3 = sub nsw i32 %conv4.i357.3, %conv6.i358.3, !dbg !1567
    #dbg_value(i32 %sub7.i359.3, !80, !DIExpression(), !1568)
    #dbg_value(i32 %sub7.i359.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1568)
  %sub.i14.i360.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.3, i1 true), !dbg !1570
  %cmp9.i361.3 = icmp slt i32 %sub.i14.i360.3, %mvlimit, !dbg !1571
  %or13.i362.not398.3 = and i1 %cmp.i356.3, %cmp9.i361.3, !dbg !1572
  %or138396.not.3 = and i1 %or13.i350.not397.3, %or13.i362.not398.3, !dbg !1572
  br i1 %or138396.not.3, label %if.end158.3, label %land.rhs140.3, !dbg !1573

land.rhs140.3:                                    ; preds = %if.else127.3
    #dbg_value(ptr undef, !1447, !DIExpression(), !1574)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1574)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1574)
  %sub.i366.3 = sub nsw i32 %conv.i340.3, %conv2.i353.3, !dbg !1576
    #dbg_value(i32 %sub.i366.3, !80, !DIExpression(), !1577)
    #dbg_value(i32 %sub.i366.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1577)
  %sub.i.i367.3 = tail call i32 @llvm.abs.i32(i32 %sub.i366.3, i1 true), !dbg !1579
  %cmp.i368.3 = icmp ugt i32 %sub.i.i367.3, 3, !dbg !1580
  %sub7.i371.3 = sub nsw i32 %conv4.i345.3, %conv6.i358.3, !dbg !1581
    #dbg_value(i32 %sub7.i371.3, !80, !DIExpression(), !1582)
    #dbg_value(i32 %sub7.i371.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1582)
  %sub.i14.i372.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.3, i1 true), !dbg !1584
  %cmp9.i373.3 = icmp sge i32 %sub.i14.i372.3, %mvlimit, !dbg !1585
  %or13.i374.3 = or i1 %cmp.i368.3, %cmp9.i373.3, !dbg !1586
    #dbg_value(ptr undef, !1447, !DIExpression(), !1587)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1587)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1587)
  %sub.i378.3 = sub nsw i32 %conv.i352.3, %conv2.i341.3, !dbg !1589
    #dbg_value(i32 %sub.i378.3, !80, !DIExpression(), !1590)
    #dbg_value(i32 %sub.i378.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1590)
  %sub.i.i379.3 = tail call i32 @llvm.abs.i32(i32 %sub.i378.3, i1 true), !dbg !1592
  %cmp.i380.3 = icmp ugt i32 %sub.i.i379.3, 3, !dbg !1593
  %sub7.i383.3 = sub nsw i32 %conv4.i357.3, %conv6.i346.3, !dbg !1594
    #dbg_value(i32 %sub7.i383.3, !80, !DIExpression(), !1595)
    #dbg_value(i32 %sub7.i383.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1595)
  %sub.i14.i384.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.3, i1 true), !dbg !1597
  %cmp9.i385.3 = icmp sge i32 %sub.i14.i384.3, %mvlimit, !dbg !1598
  %or13.i386.3 = or i1 %cmp.i380.3, %cmp9.i385.3, !dbg !1599
  %or151399.3 = or i1 %or13.i386.3, %or13.i374.3, !dbg !1600
  %121 = zext i1 %or151399.3 to i32, !dbg !1573
  br label %if.end158.3

if.end158.3:                                      ; preds = %if.else127.3, %land.rhs140.3, %if.then105.3, %if.else115.3, %lor.lhs.false93.3, %land.lhs.true.3, %lor.lhs.false34.3, %i64_power2.exit.3
  %StrValue.1.3 = phi i32 [ 2, %lor.lhs.false34.3 ], [ 2, %i64_power2.exit.3 ], [ 0, %land.lhs.true.3 ], [ %or.3, %if.then105.3 ], [ %or126.3, %if.else115.3 ], [ 1, %lor.lhs.false93.3 ], [ 0, %if.else127.3 ], [ %121, %land.rhs140.3 ], !dbg !1602
    #dbg_value(i32 %StrValue.1.3, !1320, !DIExpression(), !1353)
  %mul.3 = mul nuw nsw i32 %StrValue.1.3, 16843009, !dbg !1603
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12, !dbg !1607
  store i32 %mul.3, ptr %add.ptr.3, align 4, !dbg !1604
    #dbg_value(i64 16, !1332, !DIExpression(), !1387)
  br label %if.end196, !dbg !1608

land.rhs163:                                      ; preds = %lor.lhs.false13
    #dbg_value(i32 4, !1320, !DIExpression(), !1353)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 4, i64 16, i1 false), !dbg !1609
  br label %if.end196

if.else178:                                       ; preds = %if.else
  %cmp179 = icmp eq i32 %edge, 0, !dbg !1611
  %cond192 = select i1 %cmp179, i8 4, i8 3, !dbg !1613
    #dbg_value(i8 %cond192, !1320, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1353)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond192, i64 16, i1 false), !dbg !1614
  br label %if.end196

if.end196:                                        ; preds = %if.end158.3, %land.rhs163, %if.else178, %if.then
  ret void, !dbg !1608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthHor(ptr nocapture noundef writeonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 !dbg !1615 {
entry:
    #dbg_value(ptr %Strength, !1617, !DIExpression(), !1653)
    #dbg_value(ptr %MbQ, !1618, !DIExpression(), !1653)
    #dbg_value(i32 %edge, !1619, !DIExpression(), !1653)
    #dbg_value(i32 %mvlimit, !1620, !DIExpression(), !1653)
    #dbg_value(ptr %p, !1621, !DIExpression(), !1653)
  %0 = load ptr, ptr %MbQ, align 8, !dbg !1654
    #dbg_value(ptr %0, !1623, !DIExpression(), !1653)
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164, !dbg !1655
  %1 = load i32, ptr %slice_type, align 4, !dbg !1655
  %.off = add i32 %1, -3, !dbg !1656
  %switch = icmp ult i32 %.off, 2, !dbg !1656
  br i1 %switch, label %if.then, label %if.else, !dbg !1656

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %edge, 0, !dbg !1657
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !1659

land.rhs:                                         ; preds = %if.then
  %2 = load i32, ptr %p, align 8, !dbg !1660
  %cmp4 = icmp eq i32 %2, 0, !dbg !1661
  %3 = select i1 %cmp4, i8 4, i8 3, !dbg !1662
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %cond = phi i8 [ 3, %if.then ], [ %3, %land.rhs ], !dbg !1663
    #dbg_value(i8 %cond, !1622, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1653)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond, i64 16, i1 false), !dbg !1664
  br label %if.end189, !dbg !1665

if.else:                                          ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96, !dbg !1666
  %4 = load i32, ptr %is_intra_block, align 8, !dbg !1666
  %cmp6 = icmp eq i32 %4, 0, !dbg !1667
  br i1 %cmp6, label %if.then8, label %if.else176, !dbg !1668

if.then8:                                         ; preds = %if.else
  %cmp9 = icmp slt i32 %edge, 16, !dbg !1669
  %sub = add nsw i32 %edge, -1, !dbg !1670
  %cond11 = select i1 %cmp9, i32 %sub, i32 0, !dbg !1670
    #dbg_value(i32 %cond11, !1629, !DIExpression(), !1671)
    #dbg_value(ptr %MbQ, !1367, !DIExpression(), !1672)
    #dbg_value(i32 0, !1372, !DIExpression(), !1672)
    #dbg_value(i32 %cond11, !1373, !DIExpression(), !1672)
  %cmp1.i = icmp slt i32 %cond11, 0, !dbg !1674
  br i1 %cmp1.i, label %return.sink.split.i, label %get_non_aff_neighbor_luma.exit, !dbg !1676

return.sink.split.i:                              ; preds = %if.then8
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136, !dbg !1677
  %5 = load ptr, ptr %mbup.i, align 8, !dbg !1677
  br label %get_non_aff_neighbor_luma.exit, !dbg !1678

get_non_aff_neighbor_luma.exit:                   ; preds = %if.then8, %return.sink.split.i
  %retval.0.i = phi ptr [ %MbQ, %if.then8 ], [ %5, %return.sink.split.i ], !dbg !1677
    #dbg_value(ptr %retval.0.i, !1630, !DIExpression(), !1671)
  %tobool.not = icmp eq i32 %edge, 0, !dbg !1679
  %cond15 = select i1 %tobool.not, ptr %retval.0.i, ptr %MbQ, !dbg !1679
    #dbg_value(ptr %cond15, !1624, !DIExpression(), !1671)
  br i1 %tobool.not, label %lor.lhs.false17, label %if.then21, !dbg !1680

lor.lhs.false17:                                  ; preds = %get_non_aff_neighbor_luma.exit
  %is_intra_block18 = getelementptr inbounds i8, ptr %retval.0.i, i64 96, !dbg !1681
  %6 = load i32, ptr %is_intra_block18, align 8, !dbg !1681
  %cmp19 = icmp eq i32 %6, 0, !dbg !1682
  br i1 %cmp19, label %if.then21, label %land.end170, !dbg !1683

if.then21:                                        ; preds = %lor.lhs.false17, %get_non_aff_neighbor_luma.exit
  %7 = load ptr, ptr @PicPos, align 8, !dbg !1684
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24, !dbg !1685
  %8 = load i32, ptr %mbAddrX, align 8, !dbg !1685
  %idxprom = sext i32 %8 to i64, !dbg !1684
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %7, i64 %idxprom, !dbg !1684
  %mb.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2, !dbg !1684
  %mb.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i64 2, !dbg !1684
  %mb.sroa.6.0.copyload = load i16, ptr %mb.sroa.6.0.arrayidx.sroa_idx, align 2, !dbg !1684
    #dbg_value(i16 %mb.sroa.0.0.copyload, !1636, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1686)
    #dbg_value(i16 %mb.sroa.6.0.copyload, !1636, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1686)
  %shl = shl i16 %mb.sroa.0.0.copyload, 2, !dbg !1687
    #dbg_value(i16 %shl, !1636, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !1686)
  %shl25 = shl i16 %mb.sroa.6.0.copyload, 2, !dbg !1688
    #dbg_value(i16 %shl25, !1636, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !1686)
    #dbg_value(i32 0, !1635, !DIExpression(), !1686)
  %add = add nsw i32 %cond11, 1
  %and = and i32 %add, 65532
  %and30 = and i32 %cond11, 15
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
    #dbg_value(i32 0, !1635, !DIExpression(), !1686)
  %and31 = and i32 %cond11, 12
  %cbp_blk40 = getelementptr inbounds i8, ptr %cond15, i64 288
  %mb_type = getelementptr inbounds i8, ptr %MbQ, i64 152
  %conv60 = sext i16 %shl25 to i32
  %shr61 = lshr exact i32 %and, 2
  %add62 = add nsw i32 %shr61, %conv60
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i, i64 48
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i, i64 44
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  %idxprom75 = sext i32 %add62 to i64
  %9 = zext nneg i32 %and to i64, !dbg !1689
  %10 = zext nneg i32 %and31 to i64, !dbg !1689
  %11 = sext i16 %shl to i64, !dbg !1689
    #dbg_value(i64 0, !1635, !DIExpression(), !1686)
    #dbg_value(!DIArgList(i32 %and, i64 0), !1634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1686)
    #dbg_value(!DIArgList(i32 %cond11, i64 0), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 12, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %12 = load i64, ptr %cbp_blk, align 8, !dbg !1690
    #dbg_value(i64 %9, !1392, !DIExpression(), !1691)
  %cmp.i = icmp ugt i32 %and, 63, !dbg !1693
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i, !dbg !1694

cond.false.i:                                     ; preds = %if.then21
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %9, !dbg !1695
  %13 = load i64, ptr %arrayidx.i, align 16, !dbg !1695
  br label %i64_power2.exit, !dbg !1694

i64_power2.exit:                                  ; preds = %if.then21, %cond.false.i
  %cond.i = phi i64 [ %13, %cond.false.i ], [ 0, %if.then21 ], !dbg !1694
  %and36 = and i64 %cond.i, %12, !dbg !1696
  %cmp37.not = icmp eq i64 %and36, 0, !dbg !1697
  br i1 %cmp37.not, label %lor.lhs.false39, label %if.end161, !dbg !1698

lor.lhs.false39:                                  ; preds = %i64_power2.exit
    #dbg_value(!DIArgList(i32 %and31, i64 0), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
    #dbg_value(i64 %10, !1631, !DIExpression(), !1686)
  %14 = load i64, ptr %cbp_blk40, align 8, !dbg !1699
    #dbg_value(i64 %10, !1392, !DIExpression(), !1700)
  %arrayidx.i287 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %10, !dbg !1702
  %15 = load i64, ptr %arrayidx.i287, align 16, !dbg !1702
  %and43 = and i64 %15, %14, !dbg !1703
  %cmp44.not = icmp eq i64 %and43, 0, !dbg !1704
  br i1 %cmp44.not, label %if.else47, label %if.end161, !dbg !1705

if.else47:                                        ; preds = %lor.lhs.false39
  br i1 %tobool.not, label %if.else58, label %land.lhs.true, !dbg !1706

land.lhs.true:                                    ; preds = %if.else47
  %16 = load i16, ptr %mb_type, align 8, !dbg !1707
  switch i16 %16, label %if.else58 [
    i16 1, label %if.end161
    i16 3, label %if.end161
  ], !dbg !1708

if.else58:                                        ; preds = %land.lhs.true, %if.else47
    #dbg_value(i32 %add62, !1637, !DIExpression(), !1709)
    #dbg_value(i64 %11, !1644, !DIExpression(), !1709)
  %17 = load i32, ptr %pix_y, align 8, !dbg !1710
  %add68 = add nsw i32 %17, %and30, !dbg !1710
  %shr69 = ashr i32 %add68, 2, !dbg !1711
    #dbg_value(i32 %shr69, !1645, !DIExpression(), !1709)
  %18 = load i32, ptr %pix_x, align 4, !dbg !1712
  %sext = shl i32 %18, 16, !dbg !1713
  %shr74 = ashr i32 %sext, 18, !dbg !1714
    #dbg_value(i32 %shr74, !1646, !DIExpression(), !1709)
  %19 = load ptr, ptr %mv_info, align 8, !dbg !1715
  %arrayidx76 = getelementptr inbounds ptr, ptr %19, i64 %idxprom75, !dbg !1716
  %20 = load ptr, ptr %arrayidx76, align 8, !dbg !1716
  %arrayidx78 = getelementptr inbounds %struct.pic_motion_params, ptr %20, i64 %11, !dbg !1716
    #dbg_value(ptr %arrayidx78, !1647, !DIExpression(), !1709)
  %idxprom80 = sext i32 %shr69 to i64, !dbg !1717
  %arrayidx81 = getelementptr inbounds ptr, ptr %19, i64 %idxprom80, !dbg !1717
  %21 = load ptr, ptr %arrayidx81, align 8, !dbg !1717
  %idxprom82 = sext i32 %shr74 to i64, !dbg !1717
  %arrayidx83 = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %idxprom82, !dbg !1717
    #dbg_value(ptr %arrayidx83, !1648, !DIExpression(), !1709)
  %22 = load ptr, ptr %arrayidx78, align 8, !dbg !1718
    #dbg_value(ptr %22, !1649, !DIExpression(), !1709)
  %23 = load ptr, ptr %arrayidx83, align 8, !dbg !1719
    #dbg_value(ptr %23, !1650, !DIExpression(), !1709)
  %arrayidx88 = getelementptr inbounds i8, ptr %arrayidx78, i64 8, !dbg !1720
  %24 = load ptr, ptr %arrayidx88, align 8, !dbg !1720
    #dbg_value(ptr %24, !1651, !DIExpression(), !1709)
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx83, i64 8, !dbg !1721
  %25 = load ptr, ptr %arrayidx90, align 8, !dbg !1721
    #dbg_value(ptr %25, !1652, !DIExpression(), !1709)
  %cmp91 = icmp eq ptr %22, %23, !dbg !1722
  %cmp94 = icmp eq ptr %24, %25
  %or.cond = select i1 %cmp91, i1 %cmp94, i1 false, !dbg !1724
  br i1 %or.cond, label %if.then102, label %lor.lhs.false96, !dbg !1724

lor.lhs.false96:                                  ; preds = %if.else58
  %cmp97 = icmp eq ptr %22, %25, !dbg !1725
  %cmp100 = icmp eq ptr %24, %23
  %or.cond263 = select i1 %cmp97, i1 %cmp100, i1 false, !dbg !1726
  br i1 %or.cond263, label %if.then102, label %if.end161, !dbg !1726

if.then102:                                       ; preds = %lor.lhs.false96, %if.else58
  %cmp103.not = icmp eq ptr %22, %24, !dbg !1727
  %mv131 = getelementptr inbounds i8, ptr %arrayidx78, i64 16, !dbg !1730
  %mv133 = getelementptr inbounds i8, ptr %arrayidx83, i64 16, !dbg !1730
  br i1 %cmp103.not, label %if.else130, label %if.then105, !dbg !1731

if.then105:                                       ; preds = %if.then102
  %26 = getelementptr i8, ptr %arrayidx78, i64 22, !dbg !1732
  %arrayidx114.val280 = load i16, ptr %26, align 2, !dbg !1732
  br i1 %cmp91, label %if.then108, label %if.else118, !dbg !1735

if.then108:                                       ; preds = %if.then105
  %mv.val = load i16, ptr %mv131, align 2, !dbg !1736
  %27 = getelementptr i8, ptr %arrayidx78, i64 18, !dbg !1736
  %mv.val282 = load i16, ptr %27, align 2, !dbg !1736
  %mv110.val = load i16, ptr %mv133, align 2, !dbg !1736
  %28 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1736
  %mv110.val283 = load i16, ptr %28, align 2, !dbg !1736
    #dbg_value(ptr undef, !1447, !DIExpression(), !1738)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1738)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1738)
  %conv.i = sext i16 %mv.val to i32, !dbg !1740
  %conv2.i = sext i16 %mv110.val to i32, !dbg !1741
  %sub.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1742
    #dbg_value(i32 %sub.i, !80, !DIExpression(), !1743)
    #dbg_value(i32 %sub.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1743)
  %sub.i.i = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true), !dbg !1745
  %cmp.i290 = icmp ugt i32 %sub.i.i, 3, !dbg !1746
  %conv4.i = sext i16 %mv.val282 to i32, !dbg !1747
  %conv6.i = sext i16 %mv110.val283 to i32, !dbg !1748
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i, !dbg !1749
    #dbg_value(i32 %sub7.i, !80, !DIExpression(), !1750)
    #dbg_value(i32 %sub7.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1750)
  %sub.i14.i = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 true), !dbg !1752
  %cmp9.i = icmp sge i32 %sub.i14.i, %mvlimit, !dbg !1753
  %or13.i = or i1 %cmp.i290, %cmp9.i, !dbg !1754
  %arrayidx114 = getelementptr inbounds i8, ptr %arrayidx78, i64 20, !dbg !1755
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1756
  %arrayidx114.val = load i16, ptr %arrayidx114, align 2, !dbg !1757
  %arrayidx116.val = load i16, ptr %arrayidx116, align 2, !dbg !1757
  %29 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1757
  %arrayidx116.val281 = load i16, ptr %29, align 2, !dbg !1757
    #dbg_value(ptr undef, !1447, !DIExpression(), !1758)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1758)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1758)
  %conv.i291 = sext i16 %arrayidx114.val to i32, !dbg !1760
  %conv2.i292 = sext i16 %arrayidx116.val to i32, !dbg !1761
  %sub.i293 = sub nsw i32 %conv.i291, %conv2.i292, !dbg !1762
    #dbg_value(i32 %sub.i293, !80, !DIExpression(), !1763)
    #dbg_value(i32 %sub.i293, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1763)
  %sub.i.i294 = tail call i32 @llvm.abs.i32(i32 %sub.i293, i1 true), !dbg !1765
  %cmp.i295 = icmp ugt i32 %sub.i.i294, 3, !dbg !1766
  %conv4.i296 = sext i16 %arrayidx114.val280 to i32, !dbg !1767
  %conv6.i297 = sext i16 %arrayidx116.val281 to i32, !dbg !1768
  %sub7.i298 = sub nsw i32 %conv4.i296, %conv6.i297, !dbg !1769
    #dbg_value(i32 %sub7.i298, !80, !DIExpression(), !1770)
    #dbg_value(i32 %sub7.i298, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1770)
  %sub.i14.i299 = tail call i32 @llvm.abs.i32(i32 %sub7.i298, i1 true), !dbg !1772
  %cmp9.i300 = icmp sge i32 %sub.i14.i299, %mvlimit, !dbg !1773
  %or13.i301 = or i1 %cmp.i295, %cmp9.i300, !dbg !1774
  %or376 = or i1 %or13.i, %or13.i301, !dbg !1775
  %or = zext i1 %or376 to i32, !dbg !1775
    #dbg_value(i32 %or, !1622, !DIExpression(), !1653)
  br label %if.end161, !dbg !1776

if.else118:                                       ; preds = %if.then105
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1777
  %mv119.val = load i16, ptr %mv131, align 2, !dbg !1779
  %30 = getelementptr i8, ptr %arrayidx78, i64 18, !dbg !1779
  %mv119.val278 = load i16, ptr %30, align 2, !dbg !1779
  %arrayidx122.val = load i16, ptr %arrayidx122, align 2, !dbg !1779
  %31 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1779
  %arrayidx122.val279 = load i16, ptr %31, align 2, !dbg !1779
    #dbg_value(ptr undef, !1447, !DIExpression(), !1780)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1780)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1780)
  %conv.i303 = sext i16 %mv119.val to i32, !dbg !1782
  %conv2.i304 = sext i16 %arrayidx122.val to i32, !dbg !1783
  %sub.i305 = sub nsw i32 %conv.i303, %conv2.i304, !dbg !1784
    #dbg_value(i32 %sub.i305, !80, !DIExpression(), !1785)
    #dbg_value(i32 %sub.i305, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1785)
  %sub.i.i306 = tail call i32 @llvm.abs.i32(i32 %sub.i305, i1 true), !dbg !1787
  %cmp.i307 = icmp ugt i32 %sub.i.i306, 3, !dbg !1788
  %conv4.i308 = sext i16 %mv119.val278 to i32, !dbg !1789
  %conv6.i309 = sext i16 %arrayidx122.val279 to i32, !dbg !1790
  %sub7.i310 = sub nsw i32 %conv4.i308, %conv6.i309, !dbg !1791
    #dbg_value(i32 %sub7.i310, !80, !DIExpression(), !1792)
    #dbg_value(i32 %sub7.i310, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1792)
  %sub.i14.i311 = tail call i32 @llvm.abs.i32(i32 %sub7.i310, i1 true), !dbg !1794
  %cmp9.i312 = icmp sge i32 %sub.i14.i311, %mvlimit, !dbg !1795
  %or13.i313 = or i1 %cmp.i307, %cmp9.i312, !dbg !1796
  %arrayidx125 = getelementptr inbounds i8, ptr %arrayidx78, i64 20, !dbg !1797
  %arrayidx125.val = load i16, ptr %arrayidx125, align 2, !dbg !1798
  %mv121.val = load i16, ptr %mv133, align 2, !dbg !1798
  %32 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1798
  %mv121.val277 = load i16, ptr %32, align 2, !dbg !1798
    #dbg_value(ptr undef, !1447, !DIExpression(), !1799)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1799)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1799)
  %conv.i315 = sext i16 %arrayidx125.val to i32, !dbg !1801
  %conv2.i316 = sext i16 %mv121.val to i32, !dbg !1802
  %sub.i317 = sub nsw i32 %conv.i315, %conv2.i316, !dbg !1803
    #dbg_value(i32 %sub.i317, !80, !DIExpression(), !1804)
    #dbg_value(i32 %sub.i317, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1804)
  %sub.i.i318 = tail call i32 @llvm.abs.i32(i32 %sub.i317, i1 true), !dbg !1806
  %cmp.i319 = icmp ugt i32 %sub.i.i318, 3, !dbg !1807
  %conv4.i320 = sext i16 %arrayidx114.val280 to i32, !dbg !1808
  %conv6.i321 = sext i16 %mv121.val277 to i32, !dbg !1809
  %sub7.i322 = sub nsw i32 %conv4.i320, %conv6.i321, !dbg !1810
    #dbg_value(i32 %sub7.i322, !80, !DIExpression(), !1811)
    #dbg_value(i32 %sub7.i322, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1811)
  %sub.i14.i323 = tail call i32 @llvm.abs.i32(i32 %sub7.i322, i1 true), !dbg !1813
  %cmp9.i324 = icmp sge i32 %sub.i14.i323, %mvlimit, !dbg !1814
  %or13.i325 = or i1 %cmp.i319, %cmp9.i324, !dbg !1815
  %or129375 = or i1 %or13.i313, %or13.i325, !dbg !1816
  %or129 = zext i1 %or129375 to i32, !dbg !1816
    #dbg_value(i32 %or129, !1622, !DIExpression(), !1653)
  br label %if.end161

if.else130:                                       ; preds = %if.then102
  %mv131.val272 = load i16, ptr %mv131, align 2, !dbg !1817
  %33 = getelementptr i8, ptr %arrayidx78, i64 18, !dbg !1817
  %mv131.val273 = load i16, ptr %33, align 2, !dbg !1817
  %mv133.val274 = load i16, ptr %mv133, align 2, !dbg !1817
  %34 = getelementptr i8, ptr %arrayidx83, i64 18, !dbg !1817
  %mv133.val275 = load i16, ptr %34, align 2, !dbg !1817
    #dbg_value(ptr undef, !1447, !DIExpression(), !1819)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1819)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1819)
  %conv.i327 = sext i16 %mv131.val272 to i32, !dbg !1821
  %conv2.i328 = sext i16 %mv133.val274 to i32, !dbg !1822
  %sub.i329 = sub nsw i32 %conv.i327, %conv2.i328, !dbg !1823
    #dbg_value(i32 %sub.i329, !80, !DIExpression(), !1824)
    #dbg_value(i32 %sub.i329, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1824)
  %sub.i.i330 = tail call i32 @llvm.abs.i32(i32 %sub.i329, i1 true), !dbg !1826
  %cmp.i331 = icmp ult i32 %sub.i.i330, 4, !dbg !1827
  %conv4.i332 = sext i16 %mv131.val273 to i32, !dbg !1828
  %conv6.i333 = sext i16 %mv133.val275 to i32, !dbg !1829
  %sub7.i334 = sub nsw i32 %conv4.i332, %conv6.i333, !dbg !1830
    #dbg_value(i32 %sub7.i334, !80, !DIExpression(), !1831)
    #dbg_value(i32 %sub7.i334, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1831)
  %sub.i14.i335 = tail call i32 @llvm.abs.i32(i32 %sub7.i334, i1 true), !dbg !1833
  %cmp9.i336 = icmp slt i32 %sub.i14.i335, %mvlimit, !dbg !1834
  %or13.i337.not378 = and i1 %cmp.i331, %cmp9.i336, !dbg !1835
  %arrayidx137 = getelementptr inbounds i8, ptr %arrayidx78, i64 20, !dbg !1835
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx83, i64 20, !dbg !1836
  %arrayidx137.val268 = load i16, ptr %arrayidx137, align 2, !dbg !1837
  %35 = getelementptr i8, ptr %arrayidx78, i64 22, !dbg !1837
  %arrayidx137.val269 = load i16, ptr %35, align 2, !dbg !1837
  %arrayidx139.val270 = load i16, ptr %arrayidx139, align 2, !dbg !1837
  %36 = getelementptr i8, ptr %arrayidx83, i64 22, !dbg !1837
  %arrayidx139.val271 = load i16, ptr %36, align 2, !dbg !1837
    #dbg_value(ptr undef, !1447, !DIExpression(), !1838)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1838)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1838)
  %conv.i339 = sext i16 %arrayidx137.val268 to i32, !dbg !1840
  %conv2.i340 = sext i16 %arrayidx139.val270 to i32, !dbg !1841
  %sub.i341 = sub nsw i32 %conv.i339, %conv2.i340, !dbg !1842
    #dbg_value(i32 %sub.i341, !80, !DIExpression(), !1843)
    #dbg_value(i32 %sub.i341, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1843)
  %sub.i.i342 = tail call i32 @llvm.abs.i32(i32 %sub.i341, i1 true), !dbg !1845
  %cmp.i343 = icmp ult i32 %sub.i.i342, 4, !dbg !1846
  %conv4.i344 = sext i16 %arrayidx137.val269 to i32, !dbg !1847
  %conv6.i345 = sext i16 %arrayidx139.val271 to i32, !dbg !1848
  %sub7.i346 = sub nsw i32 %conv4.i344, %conv6.i345, !dbg !1849
    #dbg_value(i32 %sub7.i346, !80, !DIExpression(), !1850)
    #dbg_value(i32 %sub7.i346, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1850)
  %sub.i14.i347 = tail call i32 @llvm.abs.i32(i32 %sub7.i346, i1 true), !dbg !1852
  %cmp9.i348 = icmp slt i32 %sub.i14.i347, %mvlimit, !dbg !1853
  %or13.i349.not379 = and i1 %cmp.i343, %cmp9.i348, !dbg !1854
  %or141377.not = and i1 %or13.i337.not378, %or13.i349.not379, !dbg !1854
  br i1 %or141377.not, label %land.end156, label %land.rhs143, !dbg !1855

land.rhs143:                                      ; preds = %if.else130
    #dbg_value(ptr undef, !1447, !DIExpression(), !1856)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1856)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1856)
  %sub.i353 = sub nsw i32 %conv.i327, %conv2.i340, !dbg !1858
    #dbg_value(i32 %sub.i353, !80, !DIExpression(), !1859)
    #dbg_value(i32 %sub.i353, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1859)
  %sub.i.i354 = tail call i32 @llvm.abs.i32(i32 %sub.i353, i1 true), !dbg !1861
  %cmp.i355 = icmp ugt i32 %sub.i.i354, 3, !dbg !1862
  %sub7.i358 = sub nsw i32 %conv4.i332, %conv6.i345, !dbg !1863
    #dbg_value(i32 %sub7.i358, !80, !DIExpression(), !1864)
    #dbg_value(i32 %sub7.i358, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1864)
  %sub.i14.i359 = tail call i32 @llvm.abs.i32(i32 %sub7.i358, i1 true), !dbg !1866
  %cmp9.i360 = icmp sge i32 %sub.i14.i359, %mvlimit, !dbg !1867
  %or13.i361 = or i1 %cmp.i355, %cmp9.i360, !dbg !1868
    #dbg_value(ptr undef, !1447, !DIExpression(), !1869)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1869)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1869)
  %sub.i365 = sub nsw i32 %conv.i339, %conv2.i328, !dbg !1871
    #dbg_value(i32 %sub.i365, !80, !DIExpression(), !1872)
    #dbg_value(i32 %sub.i365, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1872)
  %sub.i.i366 = tail call i32 @llvm.abs.i32(i32 %sub.i365, i1 true), !dbg !1874
  %cmp.i367 = icmp ugt i32 %sub.i.i366, 3, !dbg !1875
  %sub7.i370 = sub nsw i32 %conv4.i344, %conv6.i333, !dbg !1876
    #dbg_value(i32 %sub7.i370, !80, !DIExpression(), !1877)
    #dbg_value(i32 %sub7.i370, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1877)
  %sub.i14.i371 = tail call i32 @llvm.abs.i32(i32 %sub7.i370, i1 true), !dbg !1879
  %cmp9.i372 = icmp sge i32 %sub.i14.i371, %mvlimit, !dbg !1880
  %or13.i373 = or i1 %cmp.i367, %cmp9.i372, !dbg !1881
  %or154380 = or i1 %or13.i373, %or13.i361, !dbg !1882
  br label %land.end156

land.end156:                                      ; preds = %land.rhs143, %if.else130
  %37 = phi i1 [ false, %if.else130 ], [ %or154380, %land.rhs143 ], !dbg !1883
  %land.ext = zext i1 %37 to i32, !dbg !1855
    #dbg_value(i32 %land.ext, !1622, !DIExpression(), !1653)
  br label %if.end161

if.end161:                                        ; preds = %if.then108, %if.else118, %land.end156, %lor.lhs.false96, %land.lhs.true, %land.lhs.true, %i64_power2.exit, %lor.lhs.false39
  %StrValue.1 = phi i32 [ 2, %lor.lhs.false39 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true ], [ %or, %if.then108 ], [ %or129, %if.else118 ], [ %land.ext, %land.end156 ], [ 1, %lor.lhs.false96 ], !dbg !1884
    #dbg_value(i32 %StrValue.1, !1622, !DIExpression(), !1653)
  %mul = mul nuw nsw i32 %StrValue.1, 16843009, !dbg !1885
  store i32 %mul, ptr %Strength, align 4, !dbg !1886
    #dbg_value(i64 4, !1635, !DIExpression(), !1686)
    #dbg_value(!DIArgList(i32 %and, i64 1), !1634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1686)
    #dbg_value(!DIArgList(i32 %cond11, i64 1), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 12, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %38 = load i64, ptr %cbp_blk, align 8, !dbg !1690
    #dbg_value(i64 %9, !1392, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !1691)
  %cmp.i.1 = icmp ugt i32 %and, 63, !dbg !1693
  br i1 %cmp.i.1, label %i64_power2.exit.1, label %cond.false.i.1, !dbg !1694

cond.false.i.1:                                   ; preds = %if.end161
  %39 = or disjoint i64 %9, 1, !dbg !1887
  %arrayidx.i.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %39, !dbg !1695
  %40 = load i64, ptr %arrayidx.i.1, align 8, !dbg !1695
  br label %i64_power2.exit.1, !dbg !1694

i64_power2.exit.1:                                ; preds = %cond.false.i.1, %if.end161
  %cond.i.1 = phi i64 [ %40, %cond.false.i.1 ], [ 0, %if.end161 ], !dbg !1694
  %and36.1 = and i64 %cond.i.1, %38, !dbg !1696
  %cmp37.not.1 = icmp eq i64 %and36.1, 0, !dbg !1697
  br i1 %cmp37.not.1, label %lor.lhs.false39.1, label %if.end161.1, !dbg !1698

lor.lhs.false39.1:                                ; preds = %i64_power2.exit.1
    #dbg_value(!DIArgList(i32 %and31, i64 1), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %41 = or disjoint i64 %10, 1, !dbg !1888
    #dbg_value(i64 %41, !1631, !DIExpression(), !1686)
  %42 = load i64, ptr %cbp_blk40, align 8, !dbg !1699
    #dbg_value(i64 %41, !1392, !DIExpression(), !1700)
  %arrayidx.i287.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %41, !dbg !1702
  %43 = load i64, ptr %arrayidx.i287.1, align 8, !dbg !1702
  %and43.1 = and i64 %43, %42, !dbg !1703
  %cmp44.not.1 = icmp eq i64 %and43.1, 0, !dbg !1704
  br i1 %cmp44.not.1, label %if.else47.1, label %if.end161.1, !dbg !1705

if.else47.1:                                      ; preds = %lor.lhs.false39.1
  br i1 %tobool.not, label %if.else58.1, label %land.lhs.true.1, !dbg !1706

land.lhs.true.1:                                  ; preds = %if.else47.1
  %44 = load i16, ptr %mb_type, align 8, !dbg !1707
  switch i16 %44, label %if.else58.1 [
    i16 1, label %if.end161.1
    i16 3, label %if.end161.1
  ], !dbg !1708

if.else58.1:                                      ; preds = %land.lhs.true.1, %if.else47.1
    #dbg_value(i32 %add62, !1637, !DIExpression(), !1709)
  %45 = or disjoint i64 %11, 1, !dbg !1889
    #dbg_value(i64 %45, !1644, !DIExpression(), !1709)
  %46 = load i32, ptr %pix_y, align 8, !dbg !1710
  %add68.1 = add nsw i32 %46, %and30, !dbg !1710
  %shr69.1 = ashr i32 %add68.1, 2, !dbg !1711
    #dbg_value(i32 %shr69.1, !1645, !DIExpression(), !1709)
  %47 = load i32, ptr %pix_x, align 4, !dbg !1712
  %add71.1 = shl i32 %47, 16, !dbg !1713
  %sext.1 = add i32 %add71.1, 262144, !dbg !1713
  %shr74.1 = ashr i32 %sext.1, 18, !dbg !1714
    #dbg_value(i32 %shr74.1, !1646, !DIExpression(), !1709)
  %48 = load ptr, ptr %mv_info, align 8, !dbg !1715
  %arrayidx76.1 = getelementptr inbounds ptr, ptr %48, i64 %idxprom75, !dbg !1716
  %49 = load ptr, ptr %arrayidx76.1, align 8, !dbg !1716
  %arrayidx78.1 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %45, !dbg !1716
    #dbg_value(ptr %arrayidx78.1, !1647, !DIExpression(), !1709)
  %idxprom80.1 = sext i32 %shr69.1 to i64, !dbg !1717
  %arrayidx81.1 = getelementptr inbounds ptr, ptr %48, i64 %idxprom80.1, !dbg !1717
  %50 = load ptr, ptr %arrayidx81.1, align 8, !dbg !1717
  %idxprom82.1 = sext i32 %shr74.1 to i64, !dbg !1717
  %arrayidx83.1 = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %idxprom82.1, !dbg !1717
    #dbg_value(ptr %arrayidx83.1, !1648, !DIExpression(), !1709)
  %51 = load ptr, ptr %arrayidx78.1, align 8, !dbg !1718
    #dbg_value(ptr %51, !1649, !DIExpression(), !1709)
  %52 = load ptr, ptr %arrayidx83.1, align 8, !dbg !1719
    #dbg_value(ptr %52, !1650, !DIExpression(), !1709)
  %arrayidx88.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 8, !dbg !1720
  %53 = load ptr, ptr %arrayidx88.1, align 8, !dbg !1720
    #dbg_value(ptr %53, !1651, !DIExpression(), !1709)
  %arrayidx90.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 8, !dbg !1721
  %54 = load ptr, ptr %arrayidx90.1, align 8, !dbg !1721
    #dbg_value(ptr %54, !1652, !DIExpression(), !1709)
  %cmp91.1 = icmp eq ptr %51, %52, !dbg !1722
  %cmp94.1 = icmp eq ptr %53, %54
  %or.cond.1 = select i1 %cmp91.1, i1 %cmp94.1, i1 false, !dbg !1724
  br i1 %or.cond.1, label %if.then102.1, label %lor.lhs.false96.1, !dbg !1724

lor.lhs.false96.1:                                ; preds = %if.else58.1
  %cmp97.1 = icmp eq ptr %51, %54, !dbg !1725
  %cmp100.1 = icmp eq ptr %53, %52
  %or.cond263.1 = select i1 %cmp97.1, i1 %cmp100.1, i1 false, !dbg !1726
  br i1 %or.cond263.1, label %if.then102.1, label %if.end161.1, !dbg !1726

if.then102.1:                                     ; preds = %lor.lhs.false96.1, %if.else58.1
  %cmp103.not.1 = icmp eq ptr %51, %53, !dbg !1727
  %mv131.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 16, !dbg !1730
  %mv133.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 16, !dbg !1730
  br i1 %cmp103.not.1, label %if.else130.1, label %if.then105.1, !dbg !1731

if.then105.1:                                     ; preds = %if.then102.1
  %55 = getelementptr i8, ptr %arrayidx78.1, i64 22, !dbg !1732
  %arrayidx114.val280.1 = load i16, ptr %55, align 2, !dbg !1732
  br i1 %cmp91.1, label %if.then108.1, label %if.else118.1, !dbg !1735

if.else118.1:                                     ; preds = %if.then105.1
  %arrayidx122.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1777
  %mv119.val.1 = load i16, ptr %mv131.1, align 2, !dbg !1779
  %56 = getelementptr i8, ptr %arrayidx78.1, i64 18, !dbg !1779
  %mv119.val278.1 = load i16, ptr %56, align 2, !dbg !1779
  %arrayidx122.val.1 = load i16, ptr %arrayidx122.1, align 2, !dbg !1779
  %57 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1779
  %arrayidx122.val279.1 = load i16, ptr %57, align 2, !dbg !1779
    #dbg_value(ptr undef, !1447, !DIExpression(), !1780)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1780)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1780)
  %conv.i303.1 = sext i16 %mv119.val.1 to i32, !dbg !1782
  %conv2.i304.1 = sext i16 %arrayidx122.val.1 to i32, !dbg !1783
  %sub.i305.1 = sub nsw i32 %conv.i303.1, %conv2.i304.1, !dbg !1784
    #dbg_value(i32 %sub.i305.1, !80, !DIExpression(), !1785)
    #dbg_value(i32 %sub.i305.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1785)
  %sub.i.i306.1 = tail call i32 @llvm.abs.i32(i32 %sub.i305.1, i1 true), !dbg !1787
  %cmp.i307.1 = icmp ugt i32 %sub.i.i306.1, 3, !dbg !1788
  %conv4.i308.1 = sext i16 %mv119.val278.1 to i32, !dbg !1789
  %conv6.i309.1 = sext i16 %arrayidx122.val279.1 to i32, !dbg !1790
  %sub7.i310.1 = sub nsw i32 %conv4.i308.1, %conv6.i309.1, !dbg !1791
    #dbg_value(i32 %sub7.i310.1, !80, !DIExpression(), !1792)
    #dbg_value(i32 %sub7.i310.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1792)
  %sub.i14.i311.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.1, i1 true), !dbg !1794
  %cmp9.i312.1 = icmp sge i32 %sub.i14.i311.1, %mvlimit, !dbg !1795
  %or13.i313.1 = or i1 %cmp.i307.1, %cmp9.i312.1, !dbg !1796
  %arrayidx125.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20, !dbg !1797
  %arrayidx125.val.1 = load i16, ptr %arrayidx125.1, align 2, !dbg !1798
  %mv121.val.1 = load i16, ptr %mv133.1, align 2, !dbg !1798
  %58 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1798
  %mv121.val277.1 = load i16, ptr %58, align 2, !dbg !1798
    #dbg_value(ptr undef, !1447, !DIExpression(), !1799)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1799)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1799)
  %conv.i315.1 = sext i16 %arrayidx125.val.1 to i32, !dbg !1801
  %conv2.i316.1 = sext i16 %mv121.val.1 to i32, !dbg !1802
  %sub.i317.1 = sub nsw i32 %conv.i315.1, %conv2.i316.1, !dbg !1803
    #dbg_value(i32 %sub.i317.1, !80, !DIExpression(), !1804)
    #dbg_value(i32 %sub.i317.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1804)
  %sub.i.i318.1 = tail call i32 @llvm.abs.i32(i32 %sub.i317.1, i1 true), !dbg !1806
  %cmp.i319.1 = icmp ugt i32 %sub.i.i318.1, 3, !dbg !1807
  %conv4.i320.1 = sext i16 %arrayidx114.val280.1 to i32, !dbg !1808
  %conv6.i321.1 = sext i16 %mv121.val277.1 to i32, !dbg !1809
  %sub7.i322.1 = sub nsw i32 %conv4.i320.1, %conv6.i321.1, !dbg !1810
    #dbg_value(i32 %sub7.i322.1, !80, !DIExpression(), !1811)
    #dbg_value(i32 %sub7.i322.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1811)
  %sub.i14.i323.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.1, i1 true), !dbg !1813
  %cmp9.i324.1 = icmp sge i32 %sub.i14.i323.1, %mvlimit, !dbg !1814
  %or13.i325.1 = or i1 %cmp.i319.1, %cmp9.i324.1, !dbg !1815
  %or129375.1 = or i1 %or13.i313.1, %or13.i325.1, !dbg !1816
  %or129.1 = zext i1 %or129375.1 to i32, !dbg !1816
    #dbg_value(i32 %or129.1, !1622, !DIExpression(), !1653)
  br label %if.end161.1

if.then108.1:                                     ; preds = %if.then105.1
  %mv.val.1 = load i16, ptr %mv131.1, align 2, !dbg !1736
  %59 = getelementptr i8, ptr %arrayidx78.1, i64 18, !dbg !1736
  %mv.val282.1 = load i16, ptr %59, align 2, !dbg !1736
  %mv110.val.1 = load i16, ptr %mv133.1, align 2, !dbg !1736
  %60 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1736
  %mv110.val283.1 = load i16, ptr %60, align 2, !dbg !1736
    #dbg_value(ptr undef, !1447, !DIExpression(), !1738)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1738)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1738)
  %conv.i.1 = sext i16 %mv.val.1 to i32, !dbg !1740
  %conv2.i.1 = sext i16 %mv110.val.1 to i32, !dbg !1741
  %sub.i.1 = sub nsw i32 %conv.i.1, %conv2.i.1, !dbg !1742
    #dbg_value(i32 %sub.i.1, !80, !DIExpression(), !1743)
    #dbg_value(i32 %sub.i.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1743)
  %sub.i.i.1 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 true), !dbg !1745
  %cmp.i290.1 = icmp ugt i32 %sub.i.i.1, 3, !dbg !1746
  %conv4.i.1 = sext i16 %mv.val282.1 to i32, !dbg !1747
  %conv6.i.1 = sext i16 %mv110.val283.1 to i32, !dbg !1748
  %sub7.i.1 = sub nsw i32 %conv4.i.1, %conv6.i.1, !dbg !1749
    #dbg_value(i32 %sub7.i.1, !80, !DIExpression(), !1750)
    #dbg_value(i32 %sub7.i.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1750)
  %sub.i14.i.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i.1, i1 true), !dbg !1752
  %cmp9.i.1 = icmp sge i32 %sub.i14.i.1, %mvlimit, !dbg !1753
  %or13.i.1 = or i1 %cmp.i290.1, %cmp9.i.1, !dbg !1754
  %arrayidx114.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20, !dbg !1755
  %arrayidx116.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1756
  %arrayidx114.val.1 = load i16, ptr %arrayidx114.1, align 2, !dbg !1757
  %arrayidx116.val.1 = load i16, ptr %arrayidx116.1, align 2, !dbg !1757
  %61 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1757
  %arrayidx116.val281.1 = load i16, ptr %61, align 2, !dbg !1757
    #dbg_value(ptr undef, !1447, !DIExpression(), !1758)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1758)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1758)
  %conv.i291.1 = sext i16 %arrayidx114.val.1 to i32, !dbg !1760
  %conv2.i292.1 = sext i16 %arrayidx116.val.1 to i32, !dbg !1761
  %sub.i293.1 = sub nsw i32 %conv.i291.1, %conv2.i292.1, !dbg !1762
    #dbg_value(i32 %sub.i293.1, !80, !DIExpression(), !1763)
    #dbg_value(i32 %sub.i293.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1763)
  %sub.i.i294.1 = tail call i32 @llvm.abs.i32(i32 %sub.i293.1, i1 true), !dbg !1765
  %cmp.i295.1 = icmp ugt i32 %sub.i.i294.1, 3, !dbg !1766
  %conv4.i296.1 = sext i16 %arrayidx114.val280.1 to i32, !dbg !1767
  %conv6.i297.1 = sext i16 %arrayidx116.val281.1 to i32, !dbg !1768
  %sub7.i298.1 = sub nsw i32 %conv4.i296.1, %conv6.i297.1, !dbg !1769
    #dbg_value(i32 %sub7.i298.1, !80, !DIExpression(), !1770)
    #dbg_value(i32 %sub7.i298.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1770)
  %sub.i14.i299.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.1, i1 true), !dbg !1772
  %cmp9.i300.1 = icmp sge i32 %sub.i14.i299.1, %mvlimit, !dbg !1773
  %or13.i301.1 = or i1 %cmp.i295.1, %cmp9.i300.1, !dbg !1774
  %or376.1 = or i1 %or13.i.1, %or13.i301.1, !dbg !1775
  %or.1 = zext i1 %or376.1 to i32, !dbg !1775
    #dbg_value(i32 %or.1, !1622, !DIExpression(), !1653)
  br label %if.end161.1, !dbg !1776

if.else130.1:                                     ; preds = %if.then102.1
  %mv131.val272.1 = load i16, ptr %mv131.1, align 2, !dbg !1817
  %62 = getelementptr i8, ptr %arrayidx78.1, i64 18, !dbg !1817
  %mv131.val273.1 = load i16, ptr %62, align 2, !dbg !1817
  %mv133.val274.1 = load i16, ptr %mv133.1, align 2, !dbg !1817
  %63 = getelementptr i8, ptr %arrayidx83.1, i64 18, !dbg !1817
  %mv133.val275.1 = load i16, ptr %63, align 2, !dbg !1817
    #dbg_value(ptr undef, !1447, !DIExpression(), !1819)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1819)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1819)
  %conv.i327.1 = sext i16 %mv131.val272.1 to i32, !dbg !1821
  %conv2.i328.1 = sext i16 %mv133.val274.1 to i32, !dbg !1822
  %sub.i329.1 = sub nsw i32 %conv.i327.1, %conv2.i328.1, !dbg !1823
    #dbg_value(i32 %sub.i329.1, !80, !DIExpression(), !1824)
    #dbg_value(i32 %sub.i329.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1824)
  %sub.i.i330.1 = tail call i32 @llvm.abs.i32(i32 %sub.i329.1, i1 true), !dbg !1826
  %cmp.i331.1 = icmp ult i32 %sub.i.i330.1, 4, !dbg !1827
  %conv4.i332.1 = sext i16 %mv131.val273.1 to i32, !dbg !1828
  %conv6.i333.1 = sext i16 %mv133.val275.1 to i32, !dbg !1829
  %sub7.i334.1 = sub nsw i32 %conv4.i332.1, %conv6.i333.1, !dbg !1830
    #dbg_value(i32 %sub7.i334.1, !80, !DIExpression(), !1831)
    #dbg_value(i32 %sub7.i334.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1831)
  %sub.i14.i335.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.1, i1 true), !dbg !1833
  %cmp9.i336.1 = icmp slt i32 %sub.i14.i335.1, %mvlimit, !dbg !1834
  %or13.i337.not378.1 = and i1 %cmp.i331.1, %cmp9.i336.1, !dbg !1835
  %arrayidx137.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20, !dbg !1835
  %arrayidx139.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20, !dbg !1836
  %arrayidx137.val268.1 = load i16, ptr %arrayidx137.1, align 2, !dbg !1837
  %64 = getelementptr i8, ptr %arrayidx78.1, i64 22, !dbg !1837
  %arrayidx137.val269.1 = load i16, ptr %64, align 2, !dbg !1837
  %arrayidx139.val270.1 = load i16, ptr %arrayidx139.1, align 2, !dbg !1837
  %65 = getelementptr i8, ptr %arrayidx83.1, i64 22, !dbg !1837
  %arrayidx139.val271.1 = load i16, ptr %65, align 2, !dbg !1837
    #dbg_value(ptr undef, !1447, !DIExpression(), !1838)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1838)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1838)
  %conv.i339.1 = sext i16 %arrayidx137.val268.1 to i32, !dbg !1840
  %conv2.i340.1 = sext i16 %arrayidx139.val270.1 to i32, !dbg !1841
  %sub.i341.1 = sub nsw i32 %conv.i339.1, %conv2.i340.1, !dbg !1842
    #dbg_value(i32 %sub.i341.1, !80, !DIExpression(), !1843)
    #dbg_value(i32 %sub.i341.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1843)
  %sub.i.i342.1 = tail call i32 @llvm.abs.i32(i32 %sub.i341.1, i1 true), !dbg !1845
  %cmp.i343.1 = icmp ult i32 %sub.i.i342.1, 4, !dbg !1846
  %conv4.i344.1 = sext i16 %arrayidx137.val269.1 to i32, !dbg !1847
  %conv6.i345.1 = sext i16 %arrayidx139.val271.1 to i32, !dbg !1848
  %sub7.i346.1 = sub nsw i32 %conv4.i344.1, %conv6.i345.1, !dbg !1849
    #dbg_value(i32 %sub7.i346.1, !80, !DIExpression(), !1850)
    #dbg_value(i32 %sub7.i346.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1850)
  %sub.i14.i347.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.1, i1 true), !dbg !1852
  %cmp9.i348.1 = icmp slt i32 %sub.i14.i347.1, %mvlimit, !dbg !1853
  %or13.i349.not379.1 = and i1 %cmp.i343.1, %cmp9.i348.1, !dbg !1854
  %or141377.not.1 = and i1 %or13.i337.not378.1, %or13.i349.not379.1, !dbg !1854
  br i1 %or141377.not.1, label %if.end161.1, label %land.rhs143.1, !dbg !1855

land.rhs143.1:                                    ; preds = %if.else130.1
    #dbg_value(ptr undef, !1447, !DIExpression(), !1856)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1856)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1856)
  %sub.i353.1 = sub nsw i32 %conv.i327.1, %conv2.i340.1, !dbg !1858
    #dbg_value(i32 %sub.i353.1, !80, !DIExpression(), !1859)
    #dbg_value(i32 %sub.i353.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1859)
  %sub.i.i354.1 = tail call i32 @llvm.abs.i32(i32 %sub.i353.1, i1 true), !dbg !1861
  %cmp.i355.1 = icmp ugt i32 %sub.i.i354.1, 3, !dbg !1862
  %sub7.i358.1 = sub nsw i32 %conv4.i332.1, %conv6.i345.1, !dbg !1863
    #dbg_value(i32 %sub7.i358.1, !80, !DIExpression(), !1864)
    #dbg_value(i32 %sub7.i358.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1864)
  %sub.i14.i359.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.1, i1 true), !dbg !1866
  %cmp9.i360.1 = icmp sge i32 %sub.i14.i359.1, %mvlimit, !dbg !1867
  %or13.i361.1 = or i1 %cmp.i355.1, %cmp9.i360.1, !dbg !1868
    #dbg_value(ptr undef, !1447, !DIExpression(), !1869)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1869)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1869)
  %sub.i365.1 = sub nsw i32 %conv.i339.1, %conv2.i328.1, !dbg !1871
    #dbg_value(i32 %sub.i365.1, !80, !DIExpression(), !1872)
    #dbg_value(i32 %sub.i365.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1872)
  %sub.i.i366.1 = tail call i32 @llvm.abs.i32(i32 %sub.i365.1, i1 true), !dbg !1874
  %cmp.i367.1 = icmp ugt i32 %sub.i.i366.1, 3, !dbg !1875
  %sub7.i370.1 = sub nsw i32 %conv4.i344.1, %conv6.i333.1, !dbg !1876
    #dbg_value(i32 %sub7.i370.1, !80, !DIExpression(), !1877)
    #dbg_value(i32 %sub7.i370.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1877)
  %sub.i14.i371.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.1, i1 true), !dbg !1879
  %cmp9.i372.1 = icmp sge i32 %sub.i14.i371.1, %mvlimit, !dbg !1880
  %or13.i373.1 = or i1 %cmp.i367.1, %cmp9.i372.1, !dbg !1881
  %or154380.1 = or i1 %or13.i373.1, %or13.i361.1, !dbg !1882
  %66 = zext i1 %or154380.1 to i32, !dbg !1855
  br label %if.end161.1

if.end161.1:                                      ; preds = %if.else130.1, %land.rhs143.1, %if.then108.1, %if.else118.1, %lor.lhs.false96.1, %land.lhs.true.1, %land.lhs.true.1, %lor.lhs.false39.1, %i64_power2.exit.1
  %StrValue.1.1 = phi i32 [ 2, %lor.lhs.false39.1 ], [ 2, %i64_power2.exit.1 ], [ 0, %land.lhs.true.1 ], [ 0, %land.lhs.true.1 ], [ %or.1, %if.then108.1 ], [ %or129.1, %if.else118.1 ], [ 1, %lor.lhs.false96.1 ], [ 0, %if.else130.1 ], [ %66, %land.rhs143.1 ], !dbg !1884
    #dbg_value(i32 %StrValue.1.1, !1622, !DIExpression(), !1653)
  %mul.1 = mul nuw nsw i32 %StrValue.1.1, 16843009, !dbg !1885
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4, !dbg !1890
  store i32 %mul.1, ptr %add.ptr.1, align 4, !dbg !1886
    #dbg_value(i64 8, !1635, !DIExpression(), !1686)
    #dbg_value(!DIArgList(i32 %and, i64 2), !1634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1686)
    #dbg_value(!DIArgList(i32 %cond11, i64 2), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 12, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %67 = load i64, ptr %cbp_blk, align 8, !dbg !1690
    #dbg_value(i64 %9, !1392, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !1691)
  %cmp.i.2 = icmp ugt i32 %and, 63, !dbg !1693
  br i1 %cmp.i.2, label %i64_power2.exit.2, label %cond.false.i.2, !dbg !1694

cond.false.i.2:                                   ; preds = %if.end161.1
  %68 = or disjoint i64 %9, 2, !dbg !1887
  %arrayidx.i.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %68, !dbg !1695
  %69 = load i64, ptr %arrayidx.i.2, align 16, !dbg !1695
  br label %i64_power2.exit.2, !dbg !1694

i64_power2.exit.2:                                ; preds = %cond.false.i.2, %if.end161.1
  %cond.i.2 = phi i64 [ %69, %cond.false.i.2 ], [ 0, %if.end161.1 ], !dbg !1694
  %and36.2 = and i64 %cond.i.2, %67, !dbg !1696
  %cmp37.not.2 = icmp eq i64 %and36.2, 0, !dbg !1697
  br i1 %cmp37.not.2, label %lor.lhs.false39.2, label %if.end161.2, !dbg !1698

lor.lhs.false39.2:                                ; preds = %i64_power2.exit.2
    #dbg_value(!DIArgList(i32 %and31, i64 2), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %70 = or disjoint i64 %10, 2, !dbg !1888
    #dbg_value(i64 %70, !1631, !DIExpression(), !1686)
  %71 = load i64, ptr %cbp_blk40, align 8, !dbg !1699
    #dbg_value(i64 %70, !1392, !DIExpression(), !1700)
  %arrayidx.i287.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %70, !dbg !1702
  %72 = load i64, ptr %arrayidx.i287.2, align 16, !dbg !1702
  %and43.2 = and i64 %72, %71, !dbg !1703
  %cmp44.not.2 = icmp eq i64 %and43.2, 0, !dbg !1704
  br i1 %cmp44.not.2, label %if.else47.2, label %if.end161.2, !dbg !1705

if.else47.2:                                      ; preds = %lor.lhs.false39.2
  br i1 %tobool.not, label %if.else58.2, label %land.lhs.true.2, !dbg !1706

land.lhs.true.2:                                  ; preds = %if.else47.2
  %73 = load i16, ptr %mb_type, align 8, !dbg !1707
  switch i16 %73, label %if.else58.2 [
    i16 1, label %if.end161.2
    i16 3, label %if.end161.2
  ], !dbg !1708

if.else58.2:                                      ; preds = %land.lhs.true.2, %if.else47.2
    #dbg_value(i32 %add62, !1637, !DIExpression(), !1709)
  %74 = or disjoint i64 %11, 2, !dbg !1889
    #dbg_value(i64 %74, !1644, !DIExpression(), !1709)
  %75 = load i32, ptr %pix_y, align 8, !dbg !1710
  %add68.2 = add nsw i32 %75, %and30, !dbg !1710
  %shr69.2 = ashr i32 %add68.2, 2, !dbg !1711
    #dbg_value(i32 %shr69.2, !1645, !DIExpression(), !1709)
  %76 = load i32, ptr %pix_x, align 4, !dbg !1712
  %add71.2 = shl i32 %76, 16, !dbg !1713
  %sext.2 = add i32 %add71.2, 524288, !dbg !1713
  %shr74.2 = ashr i32 %sext.2, 18, !dbg !1714
    #dbg_value(i32 %shr74.2, !1646, !DIExpression(), !1709)
  %77 = load ptr, ptr %mv_info, align 8, !dbg !1715
  %arrayidx76.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom75, !dbg !1716
  %78 = load ptr, ptr %arrayidx76.2, align 8, !dbg !1716
  %arrayidx78.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %74, !dbg !1716
    #dbg_value(ptr %arrayidx78.2, !1647, !DIExpression(), !1709)
  %idxprom80.2 = sext i32 %shr69.2 to i64, !dbg !1717
  %arrayidx81.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom80.2, !dbg !1717
  %79 = load ptr, ptr %arrayidx81.2, align 8, !dbg !1717
  %idxprom82.2 = sext i32 %shr74.2 to i64, !dbg !1717
  %arrayidx83.2 = getelementptr inbounds %struct.pic_motion_params, ptr %79, i64 %idxprom82.2, !dbg !1717
    #dbg_value(ptr %arrayidx83.2, !1648, !DIExpression(), !1709)
  %80 = load ptr, ptr %arrayidx78.2, align 8, !dbg !1718
    #dbg_value(ptr %80, !1649, !DIExpression(), !1709)
  %81 = load ptr, ptr %arrayidx83.2, align 8, !dbg !1719
    #dbg_value(ptr %81, !1650, !DIExpression(), !1709)
  %arrayidx88.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 8, !dbg !1720
  %82 = load ptr, ptr %arrayidx88.2, align 8, !dbg !1720
    #dbg_value(ptr %82, !1651, !DIExpression(), !1709)
  %arrayidx90.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 8, !dbg !1721
  %83 = load ptr, ptr %arrayidx90.2, align 8, !dbg !1721
    #dbg_value(ptr %83, !1652, !DIExpression(), !1709)
  %cmp91.2 = icmp eq ptr %80, %81, !dbg !1722
  %cmp94.2 = icmp eq ptr %82, %83
  %or.cond.2 = select i1 %cmp91.2, i1 %cmp94.2, i1 false, !dbg !1724
  br i1 %or.cond.2, label %if.then102.2, label %lor.lhs.false96.2, !dbg !1724

lor.lhs.false96.2:                                ; preds = %if.else58.2
  %cmp97.2 = icmp eq ptr %80, %83, !dbg !1725
  %cmp100.2 = icmp eq ptr %82, %81
  %or.cond263.2 = select i1 %cmp97.2, i1 %cmp100.2, i1 false, !dbg !1726
  br i1 %or.cond263.2, label %if.then102.2, label %if.end161.2, !dbg !1726

if.then102.2:                                     ; preds = %lor.lhs.false96.2, %if.else58.2
  %cmp103.not.2 = icmp eq ptr %80, %82, !dbg !1727
  %mv131.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 16, !dbg !1730
  %mv133.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 16, !dbg !1730
  br i1 %cmp103.not.2, label %if.else130.2, label %if.then105.2, !dbg !1731

if.then105.2:                                     ; preds = %if.then102.2
  %84 = getelementptr i8, ptr %arrayidx78.2, i64 22, !dbg !1732
  %arrayidx114.val280.2 = load i16, ptr %84, align 2, !dbg !1732
  br i1 %cmp91.2, label %if.then108.2, label %if.else118.2, !dbg !1735

if.else118.2:                                     ; preds = %if.then105.2
  %arrayidx122.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1777
  %mv119.val.2 = load i16, ptr %mv131.2, align 2, !dbg !1779
  %85 = getelementptr i8, ptr %arrayidx78.2, i64 18, !dbg !1779
  %mv119.val278.2 = load i16, ptr %85, align 2, !dbg !1779
  %arrayidx122.val.2 = load i16, ptr %arrayidx122.2, align 2, !dbg !1779
  %86 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1779
  %arrayidx122.val279.2 = load i16, ptr %86, align 2, !dbg !1779
    #dbg_value(ptr undef, !1447, !DIExpression(), !1780)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1780)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1780)
  %conv.i303.2 = sext i16 %mv119.val.2 to i32, !dbg !1782
  %conv2.i304.2 = sext i16 %arrayidx122.val.2 to i32, !dbg !1783
  %sub.i305.2 = sub nsw i32 %conv.i303.2, %conv2.i304.2, !dbg !1784
    #dbg_value(i32 %sub.i305.2, !80, !DIExpression(), !1785)
    #dbg_value(i32 %sub.i305.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1785)
  %sub.i.i306.2 = tail call i32 @llvm.abs.i32(i32 %sub.i305.2, i1 true), !dbg !1787
  %cmp.i307.2 = icmp ugt i32 %sub.i.i306.2, 3, !dbg !1788
  %conv4.i308.2 = sext i16 %mv119.val278.2 to i32, !dbg !1789
  %conv6.i309.2 = sext i16 %arrayidx122.val279.2 to i32, !dbg !1790
  %sub7.i310.2 = sub nsw i32 %conv4.i308.2, %conv6.i309.2, !dbg !1791
    #dbg_value(i32 %sub7.i310.2, !80, !DIExpression(), !1792)
    #dbg_value(i32 %sub7.i310.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1792)
  %sub.i14.i311.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.2, i1 true), !dbg !1794
  %cmp9.i312.2 = icmp sge i32 %sub.i14.i311.2, %mvlimit, !dbg !1795
  %or13.i313.2 = or i1 %cmp.i307.2, %cmp9.i312.2, !dbg !1796
  %arrayidx125.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20, !dbg !1797
  %arrayidx125.val.2 = load i16, ptr %arrayidx125.2, align 2, !dbg !1798
  %mv121.val.2 = load i16, ptr %mv133.2, align 2, !dbg !1798
  %87 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1798
  %mv121.val277.2 = load i16, ptr %87, align 2, !dbg !1798
    #dbg_value(ptr undef, !1447, !DIExpression(), !1799)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1799)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1799)
  %conv.i315.2 = sext i16 %arrayidx125.val.2 to i32, !dbg !1801
  %conv2.i316.2 = sext i16 %mv121.val.2 to i32, !dbg !1802
  %sub.i317.2 = sub nsw i32 %conv.i315.2, %conv2.i316.2, !dbg !1803
    #dbg_value(i32 %sub.i317.2, !80, !DIExpression(), !1804)
    #dbg_value(i32 %sub.i317.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1804)
  %sub.i.i318.2 = tail call i32 @llvm.abs.i32(i32 %sub.i317.2, i1 true), !dbg !1806
  %cmp.i319.2 = icmp ugt i32 %sub.i.i318.2, 3, !dbg !1807
  %conv4.i320.2 = sext i16 %arrayidx114.val280.2 to i32, !dbg !1808
  %conv6.i321.2 = sext i16 %mv121.val277.2 to i32, !dbg !1809
  %sub7.i322.2 = sub nsw i32 %conv4.i320.2, %conv6.i321.2, !dbg !1810
    #dbg_value(i32 %sub7.i322.2, !80, !DIExpression(), !1811)
    #dbg_value(i32 %sub7.i322.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1811)
  %sub.i14.i323.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.2, i1 true), !dbg !1813
  %cmp9.i324.2 = icmp sge i32 %sub.i14.i323.2, %mvlimit, !dbg !1814
  %or13.i325.2 = or i1 %cmp.i319.2, %cmp9.i324.2, !dbg !1815
  %or129375.2 = or i1 %or13.i313.2, %or13.i325.2, !dbg !1816
  %or129.2 = zext i1 %or129375.2 to i32, !dbg !1816
    #dbg_value(i32 %or129.2, !1622, !DIExpression(), !1653)
  br label %if.end161.2

if.then108.2:                                     ; preds = %if.then105.2
  %mv.val.2 = load i16, ptr %mv131.2, align 2, !dbg !1736
  %88 = getelementptr i8, ptr %arrayidx78.2, i64 18, !dbg !1736
  %mv.val282.2 = load i16, ptr %88, align 2, !dbg !1736
  %mv110.val.2 = load i16, ptr %mv133.2, align 2, !dbg !1736
  %89 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1736
  %mv110.val283.2 = load i16, ptr %89, align 2, !dbg !1736
    #dbg_value(ptr undef, !1447, !DIExpression(), !1738)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1738)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1738)
  %conv.i.2 = sext i16 %mv.val.2 to i32, !dbg !1740
  %conv2.i.2 = sext i16 %mv110.val.2 to i32, !dbg !1741
  %sub.i.2 = sub nsw i32 %conv.i.2, %conv2.i.2, !dbg !1742
    #dbg_value(i32 %sub.i.2, !80, !DIExpression(), !1743)
    #dbg_value(i32 %sub.i.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1743)
  %sub.i.i.2 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 true), !dbg !1745
  %cmp.i290.2 = icmp ugt i32 %sub.i.i.2, 3, !dbg !1746
  %conv4.i.2 = sext i16 %mv.val282.2 to i32, !dbg !1747
  %conv6.i.2 = sext i16 %mv110.val283.2 to i32, !dbg !1748
  %sub7.i.2 = sub nsw i32 %conv4.i.2, %conv6.i.2, !dbg !1749
    #dbg_value(i32 %sub7.i.2, !80, !DIExpression(), !1750)
    #dbg_value(i32 %sub7.i.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1750)
  %sub.i14.i.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i.2, i1 true), !dbg !1752
  %cmp9.i.2 = icmp sge i32 %sub.i14.i.2, %mvlimit, !dbg !1753
  %or13.i.2 = or i1 %cmp.i290.2, %cmp9.i.2, !dbg !1754
  %arrayidx114.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20, !dbg !1755
  %arrayidx116.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1756
  %arrayidx114.val.2 = load i16, ptr %arrayidx114.2, align 2, !dbg !1757
  %arrayidx116.val.2 = load i16, ptr %arrayidx116.2, align 2, !dbg !1757
  %90 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1757
  %arrayidx116.val281.2 = load i16, ptr %90, align 2, !dbg !1757
    #dbg_value(ptr undef, !1447, !DIExpression(), !1758)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1758)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1758)
  %conv.i291.2 = sext i16 %arrayidx114.val.2 to i32, !dbg !1760
  %conv2.i292.2 = sext i16 %arrayidx116.val.2 to i32, !dbg !1761
  %sub.i293.2 = sub nsw i32 %conv.i291.2, %conv2.i292.2, !dbg !1762
    #dbg_value(i32 %sub.i293.2, !80, !DIExpression(), !1763)
    #dbg_value(i32 %sub.i293.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1763)
  %sub.i.i294.2 = tail call i32 @llvm.abs.i32(i32 %sub.i293.2, i1 true), !dbg !1765
  %cmp.i295.2 = icmp ugt i32 %sub.i.i294.2, 3, !dbg !1766
  %conv4.i296.2 = sext i16 %arrayidx114.val280.2 to i32, !dbg !1767
  %conv6.i297.2 = sext i16 %arrayidx116.val281.2 to i32, !dbg !1768
  %sub7.i298.2 = sub nsw i32 %conv4.i296.2, %conv6.i297.2, !dbg !1769
    #dbg_value(i32 %sub7.i298.2, !80, !DIExpression(), !1770)
    #dbg_value(i32 %sub7.i298.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1770)
  %sub.i14.i299.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.2, i1 true), !dbg !1772
  %cmp9.i300.2 = icmp sge i32 %sub.i14.i299.2, %mvlimit, !dbg !1773
  %or13.i301.2 = or i1 %cmp.i295.2, %cmp9.i300.2, !dbg !1774
  %or376.2 = or i1 %or13.i.2, %or13.i301.2, !dbg !1775
  %or.2 = zext i1 %or376.2 to i32, !dbg !1775
    #dbg_value(i32 %or.2, !1622, !DIExpression(), !1653)
  br label %if.end161.2, !dbg !1776

if.else130.2:                                     ; preds = %if.then102.2
  %mv131.val272.2 = load i16, ptr %mv131.2, align 2, !dbg !1817
  %91 = getelementptr i8, ptr %arrayidx78.2, i64 18, !dbg !1817
  %mv131.val273.2 = load i16, ptr %91, align 2, !dbg !1817
  %mv133.val274.2 = load i16, ptr %mv133.2, align 2, !dbg !1817
  %92 = getelementptr i8, ptr %arrayidx83.2, i64 18, !dbg !1817
  %mv133.val275.2 = load i16, ptr %92, align 2, !dbg !1817
    #dbg_value(ptr undef, !1447, !DIExpression(), !1819)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1819)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1819)
  %conv.i327.2 = sext i16 %mv131.val272.2 to i32, !dbg !1821
  %conv2.i328.2 = sext i16 %mv133.val274.2 to i32, !dbg !1822
  %sub.i329.2 = sub nsw i32 %conv.i327.2, %conv2.i328.2, !dbg !1823
    #dbg_value(i32 %sub.i329.2, !80, !DIExpression(), !1824)
    #dbg_value(i32 %sub.i329.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1824)
  %sub.i.i330.2 = tail call i32 @llvm.abs.i32(i32 %sub.i329.2, i1 true), !dbg !1826
  %cmp.i331.2 = icmp ult i32 %sub.i.i330.2, 4, !dbg !1827
  %conv4.i332.2 = sext i16 %mv131.val273.2 to i32, !dbg !1828
  %conv6.i333.2 = sext i16 %mv133.val275.2 to i32, !dbg !1829
  %sub7.i334.2 = sub nsw i32 %conv4.i332.2, %conv6.i333.2, !dbg !1830
    #dbg_value(i32 %sub7.i334.2, !80, !DIExpression(), !1831)
    #dbg_value(i32 %sub7.i334.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1831)
  %sub.i14.i335.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.2, i1 true), !dbg !1833
  %cmp9.i336.2 = icmp slt i32 %sub.i14.i335.2, %mvlimit, !dbg !1834
  %or13.i337.not378.2 = and i1 %cmp.i331.2, %cmp9.i336.2, !dbg !1835
  %arrayidx137.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20, !dbg !1835
  %arrayidx139.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20, !dbg !1836
  %arrayidx137.val268.2 = load i16, ptr %arrayidx137.2, align 2, !dbg !1837
  %93 = getelementptr i8, ptr %arrayidx78.2, i64 22, !dbg !1837
  %arrayidx137.val269.2 = load i16, ptr %93, align 2, !dbg !1837
  %arrayidx139.val270.2 = load i16, ptr %arrayidx139.2, align 2, !dbg !1837
  %94 = getelementptr i8, ptr %arrayidx83.2, i64 22, !dbg !1837
  %arrayidx139.val271.2 = load i16, ptr %94, align 2, !dbg !1837
    #dbg_value(ptr undef, !1447, !DIExpression(), !1838)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1838)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1838)
  %conv.i339.2 = sext i16 %arrayidx137.val268.2 to i32, !dbg !1840
  %conv2.i340.2 = sext i16 %arrayidx139.val270.2 to i32, !dbg !1841
  %sub.i341.2 = sub nsw i32 %conv.i339.2, %conv2.i340.2, !dbg !1842
    #dbg_value(i32 %sub.i341.2, !80, !DIExpression(), !1843)
    #dbg_value(i32 %sub.i341.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1843)
  %sub.i.i342.2 = tail call i32 @llvm.abs.i32(i32 %sub.i341.2, i1 true), !dbg !1845
  %cmp.i343.2 = icmp ult i32 %sub.i.i342.2, 4, !dbg !1846
  %conv4.i344.2 = sext i16 %arrayidx137.val269.2 to i32, !dbg !1847
  %conv6.i345.2 = sext i16 %arrayidx139.val271.2 to i32, !dbg !1848
  %sub7.i346.2 = sub nsw i32 %conv4.i344.2, %conv6.i345.2, !dbg !1849
    #dbg_value(i32 %sub7.i346.2, !80, !DIExpression(), !1850)
    #dbg_value(i32 %sub7.i346.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1850)
  %sub.i14.i347.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.2, i1 true), !dbg !1852
  %cmp9.i348.2 = icmp slt i32 %sub.i14.i347.2, %mvlimit, !dbg !1853
  %or13.i349.not379.2 = and i1 %cmp.i343.2, %cmp9.i348.2, !dbg !1854
  %or141377.not.2 = and i1 %or13.i337.not378.2, %or13.i349.not379.2, !dbg !1854
  br i1 %or141377.not.2, label %if.end161.2, label %land.rhs143.2, !dbg !1855

land.rhs143.2:                                    ; preds = %if.else130.2
    #dbg_value(ptr undef, !1447, !DIExpression(), !1856)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1856)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1856)
  %sub.i353.2 = sub nsw i32 %conv.i327.2, %conv2.i340.2, !dbg !1858
    #dbg_value(i32 %sub.i353.2, !80, !DIExpression(), !1859)
    #dbg_value(i32 %sub.i353.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1859)
  %sub.i.i354.2 = tail call i32 @llvm.abs.i32(i32 %sub.i353.2, i1 true), !dbg !1861
  %cmp.i355.2 = icmp ugt i32 %sub.i.i354.2, 3, !dbg !1862
  %sub7.i358.2 = sub nsw i32 %conv4.i332.2, %conv6.i345.2, !dbg !1863
    #dbg_value(i32 %sub7.i358.2, !80, !DIExpression(), !1864)
    #dbg_value(i32 %sub7.i358.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1864)
  %sub.i14.i359.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.2, i1 true), !dbg !1866
  %cmp9.i360.2 = icmp sge i32 %sub.i14.i359.2, %mvlimit, !dbg !1867
  %or13.i361.2 = or i1 %cmp.i355.2, %cmp9.i360.2, !dbg !1868
    #dbg_value(ptr undef, !1447, !DIExpression(), !1869)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1869)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1869)
  %sub.i365.2 = sub nsw i32 %conv.i339.2, %conv2.i328.2, !dbg !1871
    #dbg_value(i32 %sub.i365.2, !80, !DIExpression(), !1872)
    #dbg_value(i32 %sub.i365.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1872)
  %sub.i.i366.2 = tail call i32 @llvm.abs.i32(i32 %sub.i365.2, i1 true), !dbg !1874
  %cmp.i367.2 = icmp ugt i32 %sub.i.i366.2, 3, !dbg !1875
  %sub7.i370.2 = sub nsw i32 %conv4.i344.2, %conv6.i333.2, !dbg !1876
    #dbg_value(i32 %sub7.i370.2, !80, !DIExpression(), !1877)
    #dbg_value(i32 %sub7.i370.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1877)
  %sub.i14.i371.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.2, i1 true), !dbg !1879
  %cmp9.i372.2 = icmp sge i32 %sub.i14.i371.2, %mvlimit, !dbg !1880
  %or13.i373.2 = or i1 %cmp.i367.2, %cmp9.i372.2, !dbg !1881
  %or154380.2 = or i1 %or13.i373.2, %or13.i361.2, !dbg !1882
  %95 = zext i1 %or154380.2 to i32, !dbg !1855
  br label %if.end161.2

if.end161.2:                                      ; preds = %if.else130.2, %land.rhs143.2, %if.then108.2, %if.else118.2, %lor.lhs.false96.2, %land.lhs.true.2, %land.lhs.true.2, %lor.lhs.false39.2, %i64_power2.exit.2
  %StrValue.1.2 = phi i32 [ 2, %lor.lhs.false39.2 ], [ 2, %i64_power2.exit.2 ], [ 0, %land.lhs.true.2 ], [ 0, %land.lhs.true.2 ], [ %or.2, %if.then108.2 ], [ %or129.2, %if.else118.2 ], [ 1, %lor.lhs.false96.2 ], [ 0, %if.else130.2 ], [ %95, %land.rhs143.2 ], !dbg !1884
    #dbg_value(i32 %StrValue.1.2, !1622, !DIExpression(), !1653)
  %mul.2 = mul nuw nsw i32 %StrValue.1.2, 16843009, !dbg !1885
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8, !dbg !1890
  store i32 %mul.2, ptr %add.ptr.2, align 4, !dbg !1886
    #dbg_value(i64 12, !1635, !DIExpression(), !1686)
    #dbg_value(!DIArgList(i32 %and, i64 3), !1634, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1686)
    #dbg_value(!DIArgList(i32 %cond11, i64 3), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 12, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %96 = load i64, ptr %cbp_blk, align 8, !dbg !1690
    #dbg_value(i64 %9, !1392, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !1691)
  %cmp.i.3 = icmp ugt i32 %and, 63, !dbg !1693
  br i1 %cmp.i.3, label %i64_power2.exit.3, label %cond.false.i.3, !dbg !1694

cond.false.i.3:                                   ; preds = %if.end161.2
  %97 = or disjoint i64 %9, 3, !dbg !1887
  %arrayidx.i.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %97, !dbg !1695
  %98 = load i64, ptr %arrayidx.i.3, align 8, !dbg !1695
  br label %i64_power2.exit.3, !dbg !1694

i64_power2.exit.3:                                ; preds = %cond.false.i.3, %if.end161.2
  %cond.i.3 = phi i64 [ %98, %cond.false.i.3 ], [ 0, %if.end161.2 ], !dbg !1694
  %and36.3 = and i64 %cond.i.3, %96, !dbg !1696
  %cmp37.not.3 = icmp eq i64 %and36.3, 0, !dbg !1697
  br i1 %cmp37.not.3, label %lor.lhs.false39.3, label %if.end161.3, !dbg !1698

lor.lhs.false39.3:                                ; preds = %i64_power2.exit.3
    #dbg_value(!DIArgList(i32 %and31, i64 3), !1631, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1686)
  %99 = or disjoint i64 %10, 3, !dbg !1888
    #dbg_value(i64 %99, !1631, !DIExpression(), !1686)
  %100 = load i64, ptr %cbp_blk40, align 8, !dbg !1699
    #dbg_value(i64 %99, !1392, !DIExpression(), !1700)
  %arrayidx.i287.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %99, !dbg !1702
  %101 = load i64, ptr %arrayidx.i287.3, align 8, !dbg !1702
  %and43.3 = and i64 %101, %100, !dbg !1703
  %cmp44.not.3 = icmp eq i64 %and43.3, 0, !dbg !1704
  br i1 %cmp44.not.3, label %if.else47.3, label %if.end161.3, !dbg !1705

if.else47.3:                                      ; preds = %lor.lhs.false39.3
  br i1 %tobool.not, label %if.else58.3, label %land.lhs.true.3, !dbg !1706

land.lhs.true.3:                                  ; preds = %if.else47.3
  %102 = load i16, ptr %mb_type, align 8, !dbg !1707
  switch i16 %102, label %if.else58.3 [
    i16 1, label %if.end161.3
    i16 3, label %if.end161.3
  ], !dbg !1708

if.else58.3:                                      ; preds = %land.lhs.true.3, %if.else47.3
    #dbg_value(i32 %add62, !1637, !DIExpression(), !1709)
  %103 = or disjoint i64 %11, 3, !dbg !1889
    #dbg_value(i64 %103, !1644, !DIExpression(), !1709)
  %104 = load i32, ptr %pix_y, align 8, !dbg !1710
  %add68.3 = add nsw i32 %104, %and30, !dbg !1710
  %shr69.3 = ashr i32 %add68.3, 2, !dbg !1711
    #dbg_value(i32 %shr69.3, !1645, !DIExpression(), !1709)
  %105 = load i32, ptr %pix_x, align 4, !dbg !1712
  %add71.3 = shl i32 %105, 16, !dbg !1713
  %sext.3 = add i32 %add71.3, 786432, !dbg !1713
  %shr74.3 = ashr i32 %sext.3, 18, !dbg !1714
    #dbg_value(i32 %shr74.3, !1646, !DIExpression(), !1709)
  %106 = load ptr, ptr %mv_info, align 8, !dbg !1715
  %arrayidx76.3 = getelementptr inbounds ptr, ptr %106, i64 %idxprom75, !dbg !1716
  %107 = load ptr, ptr %arrayidx76.3, align 8, !dbg !1716
  %arrayidx78.3 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %103, !dbg !1716
    #dbg_value(ptr %arrayidx78.3, !1647, !DIExpression(), !1709)
  %idxprom80.3 = sext i32 %shr69.3 to i64, !dbg !1717
  %arrayidx81.3 = getelementptr inbounds ptr, ptr %106, i64 %idxprom80.3, !dbg !1717
  %108 = load ptr, ptr %arrayidx81.3, align 8, !dbg !1717
  %idxprom82.3 = sext i32 %shr74.3 to i64, !dbg !1717
  %arrayidx83.3 = getelementptr inbounds %struct.pic_motion_params, ptr %108, i64 %idxprom82.3, !dbg !1717
    #dbg_value(ptr %arrayidx83.3, !1648, !DIExpression(), !1709)
  %109 = load ptr, ptr %arrayidx78.3, align 8, !dbg !1718
    #dbg_value(ptr %109, !1649, !DIExpression(), !1709)
  %110 = load ptr, ptr %arrayidx83.3, align 8, !dbg !1719
    #dbg_value(ptr %110, !1650, !DIExpression(), !1709)
  %arrayidx88.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 8, !dbg !1720
  %111 = load ptr, ptr %arrayidx88.3, align 8, !dbg !1720
    #dbg_value(ptr %111, !1651, !DIExpression(), !1709)
  %arrayidx90.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 8, !dbg !1721
  %112 = load ptr, ptr %arrayidx90.3, align 8, !dbg !1721
    #dbg_value(ptr %112, !1652, !DIExpression(), !1709)
  %cmp91.3 = icmp eq ptr %109, %110, !dbg !1722
  %cmp94.3 = icmp eq ptr %111, %112
  %or.cond.3 = select i1 %cmp91.3, i1 %cmp94.3, i1 false, !dbg !1724
  br i1 %or.cond.3, label %if.then102.3, label %lor.lhs.false96.3, !dbg !1724

lor.lhs.false96.3:                                ; preds = %if.else58.3
  %cmp97.3 = icmp eq ptr %109, %112, !dbg !1725
  %cmp100.3 = icmp eq ptr %111, %110
  %or.cond263.3 = select i1 %cmp97.3, i1 %cmp100.3, i1 false, !dbg !1726
  br i1 %or.cond263.3, label %if.then102.3, label %if.end161.3, !dbg !1726

if.then102.3:                                     ; preds = %lor.lhs.false96.3, %if.else58.3
  %cmp103.not.3 = icmp eq ptr %109, %111, !dbg !1727
  %mv131.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 16, !dbg !1730
  %mv133.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 16, !dbg !1730
  br i1 %cmp103.not.3, label %if.else130.3, label %if.then105.3, !dbg !1731

if.then105.3:                                     ; preds = %if.then102.3
  %113 = getelementptr i8, ptr %arrayidx78.3, i64 22, !dbg !1732
  %arrayidx114.val280.3 = load i16, ptr %113, align 2, !dbg !1732
  br i1 %cmp91.3, label %if.then108.3, label %if.else118.3, !dbg !1735

if.else118.3:                                     ; preds = %if.then105.3
  %arrayidx122.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1777
  %mv119.val.3 = load i16, ptr %mv131.3, align 2, !dbg !1779
  %114 = getelementptr i8, ptr %arrayidx78.3, i64 18, !dbg !1779
  %mv119.val278.3 = load i16, ptr %114, align 2, !dbg !1779
  %arrayidx122.val.3 = load i16, ptr %arrayidx122.3, align 2, !dbg !1779
  %115 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1779
  %arrayidx122.val279.3 = load i16, ptr %115, align 2, !dbg !1779
    #dbg_value(ptr undef, !1447, !DIExpression(), !1780)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1780)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1780)
  %conv.i303.3 = sext i16 %mv119.val.3 to i32, !dbg !1782
  %conv2.i304.3 = sext i16 %arrayidx122.val.3 to i32, !dbg !1783
  %sub.i305.3 = sub nsw i32 %conv.i303.3, %conv2.i304.3, !dbg !1784
    #dbg_value(i32 %sub.i305.3, !80, !DIExpression(), !1785)
    #dbg_value(i32 %sub.i305.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1785)
  %sub.i.i306.3 = tail call i32 @llvm.abs.i32(i32 %sub.i305.3, i1 true), !dbg !1787
  %cmp.i307.3 = icmp ugt i32 %sub.i.i306.3, 3, !dbg !1788
  %conv4.i308.3 = sext i16 %mv119.val278.3 to i32, !dbg !1789
  %conv6.i309.3 = sext i16 %arrayidx122.val279.3 to i32, !dbg !1790
  %sub7.i310.3 = sub nsw i32 %conv4.i308.3, %conv6.i309.3, !dbg !1791
    #dbg_value(i32 %sub7.i310.3, !80, !DIExpression(), !1792)
    #dbg_value(i32 %sub7.i310.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1792)
  %sub.i14.i311.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.3, i1 true), !dbg !1794
  %cmp9.i312.3 = icmp sge i32 %sub.i14.i311.3, %mvlimit, !dbg !1795
  %or13.i313.3 = or i1 %cmp.i307.3, %cmp9.i312.3, !dbg !1796
  %arrayidx125.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20, !dbg !1797
  %arrayidx125.val.3 = load i16, ptr %arrayidx125.3, align 2, !dbg !1798
  %mv121.val.3 = load i16, ptr %mv133.3, align 2, !dbg !1798
  %116 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1798
  %mv121.val277.3 = load i16, ptr %116, align 2, !dbg !1798
    #dbg_value(ptr undef, !1447, !DIExpression(), !1799)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1799)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1799)
  %conv.i315.3 = sext i16 %arrayidx125.val.3 to i32, !dbg !1801
  %conv2.i316.3 = sext i16 %mv121.val.3 to i32, !dbg !1802
  %sub.i317.3 = sub nsw i32 %conv.i315.3, %conv2.i316.3, !dbg !1803
    #dbg_value(i32 %sub.i317.3, !80, !DIExpression(), !1804)
    #dbg_value(i32 %sub.i317.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1804)
  %sub.i.i318.3 = tail call i32 @llvm.abs.i32(i32 %sub.i317.3, i1 true), !dbg !1806
  %cmp.i319.3 = icmp ugt i32 %sub.i.i318.3, 3, !dbg !1807
  %conv4.i320.3 = sext i16 %arrayidx114.val280.3 to i32, !dbg !1808
  %conv6.i321.3 = sext i16 %mv121.val277.3 to i32, !dbg !1809
  %sub7.i322.3 = sub nsw i32 %conv4.i320.3, %conv6.i321.3, !dbg !1810
    #dbg_value(i32 %sub7.i322.3, !80, !DIExpression(), !1811)
    #dbg_value(i32 %sub7.i322.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1811)
  %sub.i14.i323.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.3, i1 true), !dbg !1813
  %cmp9.i324.3 = icmp sge i32 %sub.i14.i323.3, %mvlimit, !dbg !1814
  %or13.i325.3 = or i1 %cmp.i319.3, %cmp9.i324.3, !dbg !1815
  %or129375.3 = or i1 %or13.i313.3, %or13.i325.3, !dbg !1816
  %or129.3 = zext i1 %or129375.3 to i32, !dbg !1816
    #dbg_value(i32 %or129.3, !1622, !DIExpression(), !1653)
  br label %if.end161.3

if.then108.3:                                     ; preds = %if.then105.3
  %mv.val.3 = load i16, ptr %mv131.3, align 2, !dbg !1736
  %117 = getelementptr i8, ptr %arrayidx78.3, i64 18, !dbg !1736
  %mv.val282.3 = load i16, ptr %117, align 2, !dbg !1736
  %mv110.val.3 = load i16, ptr %mv133.3, align 2, !dbg !1736
  %118 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1736
  %mv110.val283.3 = load i16, ptr %118, align 2, !dbg !1736
    #dbg_value(ptr undef, !1447, !DIExpression(), !1738)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1738)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1738)
  %conv.i.3 = sext i16 %mv.val.3 to i32, !dbg !1740
  %conv2.i.3 = sext i16 %mv110.val.3 to i32, !dbg !1741
  %sub.i.3 = sub nsw i32 %conv.i.3, %conv2.i.3, !dbg !1742
    #dbg_value(i32 %sub.i.3, !80, !DIExpression(), !1743)
    #dbg_value(i32 %sub.i.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1743)
  %sub.i.i.3 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 true), !dbg !1745
  %cmp.i290.3 = icmp ugt i32 %sub.i.i.3, 3, !dbg !1746
  %conv4.i.3 = sext i16 %mv.val282.3 to i32, !dbg !1747
  %conv6.i.3 = sext i16 %mv110.val283.3 to i32, !dbg !1748
  %sub7.i.3 = sub nsw i32 %conv4.i.3, %conv6.i.3, !dbg !1749
    #dbg_value(i32 %sub7.i.3, !80, !DIExpression(), !1750)
    #dbg_value(i32 %sub7.i.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1750)
  %sub.i14.i.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i.3, i1 true), !dbg !1752
  %cmp9.i.3 = icmp sge i32 %sub.i14.i.3, %mvlimit, !dbg !1753
  %or13.i.3 = or i1 %cmp.i290.3, %cmp9.i.3, !dbg !1754
  %arrayidx114.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20, !dbg !1755
  %arrayidx116.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1756
  %arrayidx114.val.3 = load i16, ptr %arrayidx114.3, align 2, !dbg !1757
  %arrayidx116.val.3 = load i16, ptr %arrayidx116.3, align 2, !dbg !1757
  %119 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1757
  %arrayidx116.val281.3 = load i16, ptr %119, align 2, !dbg !1757
    #dbg_value(ptr undef, !1447, !DIExpression(), !1758)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1758)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1758)
  %conv.i291.3 = sext i16 %arrayidx114.val.3 to i32, !dbg !1760
  %conv2.i292.3 = sext i16 %arrayidx116.val.3 to i32, !dbg !1761
  %sub.i293.3 = sub nsw i32 %conv.i291.3, %conv2.i292.3, !dbg !1762
    #dbg_value(i32 %sub.i293.3, !80, !DIExpression(), !1763)
    #dbg_value(i32 %sub.i293.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1763)
  %sub.i.i294.3 = tail call i32 @llvm.abs.i32(i32 %sub.i293.3, i1 true), !dbg !1765
  %cmp.i295.3 = icmp ugt i32 %sub.i.i294.3, 3, !dbg !1766
  %conv4.i296.3 = sext i16 %arrayidx114.val280.3 to i32, !dbg !1767
  %conv6.i297.3 = sext i16 %arrayidx116.val281.3 to i32, !dbg !1768
  %sub7.i298.3 = sub nsw i32 %conv4.i296.3, %conv6.i297.3, !dbg !1769
    #dbg_value(i32 %sub7.i298.3, !80, !DIExpression(), !1770)
    #dbg_value(i32 %sub7.i298.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1770)
  %sub.i14.i299.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.3, i1 true), !dbg !1772
  %cmp9.i300.3 = icmp sge i32 %sub.i14.i299.3, %mvlimit, !dbg !1773
  %or13.i301.3 = or i1 %cmp.i295.3, %cmp9.i300.3, !dbg !1774
  %or376.3 = or i1 %or13.i.3, %or13.i301.3, !dbg !1775
  %or.3 = zext i1 %or376.3 to i32, !dbg !1775
    #dbg_value(i32 %or.3, !1622, !DIExpression(), !1653)
  br label %if.end161.3, !dbg !1776

if.else130.3:                                     ; preds = %if.then102.3
  %mv131.val272.3 = load i16, ptr %mv131.3, align 2, !dbg !1817
  %120 = getelementptr i8, ptr %arrayidx78.3, i64 18, !dbg !1817
  %mv131.val273.3 = load i16, ptr %120, align 2, !dbg !1817
  %mv133.val274.3 = load i16, ptr %mv133.3, align 2, !dbg !1817
  %121 = getelementptr i8, ptr %arrayidx83.3, i64 18, !dbg !1817
  %mv133.val275.3 = load i16, ptr %121, align 2, !dbg !1817
    #dbg_value(ptr undef, !1447, !DIExpression(), !1819)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1819)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1819)
  %conv.i327.3 = sext i16 %mv131.val272.3 to i32, !dbg !1821
  %conv2.i328.3 = sext i16 %mv133.val274.3 to i32, !dbg !1822
  %sub.i329.3 = sub nsw i32 %conv.i327.3, %conv2.i328.3, !dbg !1823
    #dbg_value(i32 %sub.i329.3, !80, !DIExpression(), !1824)
    #dbg_value(i32 %sub.i329.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1824)
  %sub.i.i330.3 = tail call i32 @llvm.abs.i32(i32 %sub.i329.3, i1 true), !dbg !1826
  %cmp.i331.3 = icmp ult i32 %sub.i.i330.3, 4, !dbg !1827
  %conv4.i332.3 = sext i16 %mv131.val273.3 to i32, !dbg !1828
  %conv6.i333.3 = sext i16 %mv133.val275.3 to i32, !dbg !1829
  %sub7.i334.3 = sub nsw i32 %conv4.i332.3, %conv6.i333.3, !dbg !1830
    #dbg_value(i32 %sub7.i334.3, !80, !DIExpression(), !1831)
    #dbg_value(i32 %sub7.i334.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1831)
  %sub.i14.i335.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.3, i1 true), !dbg !1833
  %cmp9.i336.3 = icmp slt i32 %sub.i14.i335.3, %mvlimit, !dbg !1834
  %or13.i337.not378.3 = and i1 %cmp.i331.3, %cmp9.i336.3, !dbg !1835
  %arrayidx137.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20, !dbg !1835
  %arrayidx139.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20, !dbg !1836
  %arrayidx137.val268.3 = load i16, ptr %arrayidx137.3, align 2, !dbg !1837
  %122 = getelementptr i8, ptr %arrayidx78.3, i64 22, !dbg !1837
  %arrayidx137.val269.3 = load i16, ptr %122, align 2, !dbg !1837
  %arrayidx139.val270.3 = load i16, ptr %arrayidx139.3, align 2, !dbg !1837
  %123 = getelementptr i8, ptr %arrayidx83.3, i64 22, !dbg !1837
  %arrayidx139.val271.3 = load i16, ptr %123, align 2, !dbg !1837
    #dbg_value(ptr undef, !1447, !DIExpression(), !1838)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1838)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1838)
  %conv.i339.3 = sext i16 %arrayidx137.val268.3 to i32, !dbg !1840
  %conv2.i340.3 = sext i16 %arrayidx139.val270.3 to i32, !dbg !1841
  %sub.i341.3 = sub nsw i32 %conv.i339.3, %conv2.i340.3, !dbg !1842
    #dbg_value(i32 %sub.i341.3, !80, !DIExpression(), !1843)
    #dbg_value(i32 %sub.i341.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1843)
  %sub.i.i342.3 = tail call i32 @llvm.abs.i32(i32 %sub.i341.3, i1 true), !dbg !1845
  %cmp.i343.3 = icmp ult i32 %sub.i.i342.3, 4, !dbg !1846
  %conv4.i344.3 = sext i16 %arrayidx137.val269.3 to i32, !dbg !1847
  %conv6.i345.3 = sext i16 %arrayidx139.val271.3 to i32, !dbg !1848
  %sub7.i346.3 = sub nsw i32 %conv4.i344.3, %conv6.i345.3, !dbg !1849
    #dbg_value(i32 %sub7.i346.3, !80, !DIExpression(), !1850)
    #dbg_value(i32 %sub7.i346.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1850)
  %sub.i14.i347.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.3, i1 true), !dbg !1852
  %cmp9.i348.3 = icmp slt i32 %sub.i14.i347.3, %mvlimit, !dbg !1853
  %or13.i349.not379.3 = and i1 %cmp.i343.3, %cmp9.i348.3, !dbg !1854
  %or141377.not.3 = and i1 %or13.i337.not378.3, %or13.i349.not379.3, !dbg !1854
  br i1 %or141377.not.3, label %if.end161.3, label %land.rhs143.3, !dbg !1855

land.rhs143.3:                                    ; preds = %if.else130.3
    #dbg_value(ptr undef, !1447, !DIExpression(), !1856)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1856)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1856)
  %sub.i353.3 = sub nsw i32 %conv.i327.3, %conv2.i340.3, !dbg !1858
    #dbg_value(i32 %sub.i353.3, !80, !DIExpression(), !1859)
    #dbg_value(i32 %sub.i353.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1859)
  %sub.i.i354.3 = tail call i32 @llvm.abs.i32(i32 %sub.i353.3, i1 true), !dbg !1861
  %cmp.i355.3 = icmp ugt i32 %sub.i.i354.3, 3, !dbg !1862
  %sub7.i358.3 = sub nsw i32 %conv4.i332.3, %conv6.i345.3, !dbg !1863
    #dbg_value(i32 %sub7.i358.3, !80, !DIExpression(), !1864)
    #dbg_value(i32 %sub7.i358.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1864)
  %sub.i14.i359.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.3, i1 true), !dbg !1866
  %cmp9.i360.3 = icmp sge i32 %sub.i14.i359.3, %mvlimit, !dbg !1867
  %or13.i361.3 = or i1 %cmp.i355.3, %cmp9.i360.3, !dbg !1868
    #dbg_value(ptr undef, !1447, !DIExpression(), !1869)
    #dbg_value(ptr undef, !1454, !DIExpression(), !1869)
    #dbg_value(i32 %mvlimit, !1455, !DIExpression(), !1869)
  %sub.i365.3 = sub nsw i32 %conv.i339.3, %conv2.i328.3, !dbg !1871
    #dbg_value(i32 %sub.i365.3, !80, !DIExpression(), !1872)
    #dbg_value(i32 %sub.i365.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1872)
  %sub.i.i366.3 = tail call i32 @llvm.abs.i32(i32 %sub.i365.3, i1 true), !dbg !1874
  %cmp.i367.3 = icmp ugt i32 %sub.i.i366.3, 3, !dbg !1875
  %sub7.i370.3 = sub nsw i32 %conv4.i344.3, %conv6.i333.3, !dbg !1876
    #dbg_value(i32 %sub7.i370.3, !80, !DIExpression(), !1877)
    #dbg_value(i32 %sub7.i370.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1877)
  %sub.i14.i371.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.3, i1 true), !dbg !1879
  %cmp9.i372.3 = icmp sge i32 %sub.i14.i371.3, %mvlimit, !dbg !1880
  %or13.i373.3 = or i1 %cmp.i367.3, %cmp9.i372.3, !dbg !1881
  %or154380.3 = or i1 %or13.i373.3, %or13.i361.3, !dbg !1882
  %124 = zext i1 %or154380.3 to i32, !dbg !1855
  br label %if.end161.3

if.end161.3:                                      ; preds = %if.else130.3, %land.rhs143.3, %if.then108.3, %if.else118.3, %lor.lhs.false96.3, %land.lhs.true.3, %land.lhs.true.3, %lor.lhs.false39.3, %i64_power2.exit.3
  %StrValue.1.3 = phi i32 [ 2, %lor.lhs.false39.3 ], [ 2, %i64_power2.exit.3 ], [ 0, %land.lhs.true.3 ], [ 0, %land.lhs.true.3 ], [ %or.3, %if.then108.3 ], [ %or129.3, %if.else118.3 ], [ 1, %lor.lhs.false96.3 ], [ 0, %if.else130.3 ], [ %124, %land.rhs143.3 ], !dbg !1884
    #dbg_value(i32 %StrValue.1.3, !1622, !DIExpression(), !1653)
  %mul.3 = mul nuw nsw i32 %StrValue.1.3, 16843009, !dbg !1885
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12, !dbg !1890
  store i32 %mul.3, ptr %add.ptr.3, align 4, !dbg !1886
    #dbg_value(i64 16, !1635, !DIExpression(), !1686)
  br label %if.end189, !dbg !1891

land.end170:                                      ; preds = %lor.lhs.false17
  %125 = load i32, ptr %p, align 8, !dbg !1892
  %cmp168 = icmp eq i32 %125, 0, !dbg !1894
  %conv173 = select i1 %cmp168, i8 4, i8 3, !dbg !1895
    #dbg_value(i8 %conv173, !1622, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1653)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %conv173, i64 16, i1 false), !dbg !1896
  br label %if.end189

if.else176:                                       ; preds = %if.else
  %cmp177 = icmp eq i32 %edge, 0, !dbg !1897
  br i1 %cmp177, label %land.rhs179, label %land.end183, !dbg !1899

land.rhs179:                                      ; preds = %if.else176
  %126 = load i32, ptr %p, align 8, !dbg !1900
  %cmp181 = icmp eq i32 %126, 0, !dbg !1901
  %127 = select i1 %cmp181, i8 4, i8 3, !dbg !1902
  br label %land.end183

land.end183:                                      ; preds = %land.rhs179, %if.else176
  %cond185 = phi i8 [ 3, %if.else176 ], [ %127, %land.rhs179 ], !dbg !1903
    #dbg_value(i8 %cond185, !1622, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1653)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond185, i64 16, i1 false), !dbg !1904
  br label %if.end189

if.end189:                                        ; preds = %if.end161.3, %land.end170, %land.end183, %land.end
  ret void, !dbg !1891
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaVer(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, ptr nocapture readnone %p) #2 !dbg !1905 {
entry:
    #dbg_value(i32 %pl, !1909, !DIExpression(), !2004)
    #dbg_value(ptr %Img, !1910, !DIExpression(), !2004)
    #dbg_value(ptr %Strength, !1911, !DIExpression(), !2004)
    #dbg_value(ptr %MbQ, !1912, !DIExpression(), !2004)
    #dbg_value(i32 %edge, !1913, !DIExpression(), !2004)
    #dbg_value(ptr poison, !1914, !DIExpression(), !2004)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !2005
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !2005
    #dbg_value(ptr %0, !1915, !DIExpression(), !2004)
  %sub = add i32 %edge, 15, !dbg !2006
    #dbg_value(ptr %MbQ, !1367, !DIExpression(), !2007)
    #dbg_value(i32 %edge, !1372, !DIExpression(DW_OP_plus_uconst, 15, DW_OP_stack_value), !2007)
    #dbg_value(i32 0, !1373, !DIExpression(), !2007)
  %cmp.i = icmp slt i32 %edge, 1, !dbg !2009
  br i1 %cmp.i, label %get_non_aff_neighbor_luma.exit, label %if.then, !dbg !2010

get_non_aff_neighbor_luma.exit:                   ; preds = %entry
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 144, !dbg !2011
  %1 = load ptr, ptr %mbup.i, align 8, !dbg !2011
    #dbg_value(ptr %1, !1916, !DIExpression(), !2004)
  %tobool.not = icmp eq ptr %1, null, !dbg !2012
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !dbg !2013

lor.lhs.false:                                    ; preds = %get_non_aff_neighbor_luma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !2014
  %2 = load i16, ptr %DFDisableIdc, align 8, !dbg !2014
  %cmp = icmp eq i16 %2, 0, !dbg !2015
  br i1 %cmp, label %if.then, label %if.end432, !dbg !2016

if.then:                                          ; preds = %entry, %lor.lhs.false, %get_non_aff_neighbor_luma.exit
  %retval.0.i637 = phi ptr [ null, %lor.lhs.false ], [ %1, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %entry ]
  %tobool3.not = icmp eq i32 %pl, 0, !dbg !2017
  %cond.in.v = select i1 %tobool3.not, i64 849044, i64 849048, !dbg !2017
  %cond.in = getelementptr inbounds i8, ptr %0, i64 %cond.in.v, !dbg !2017
  %cond = load i32, ptr %cond.in, align 4, !dbg !2017
    #dbg_value(i32 %cond, !1917, !DIExpression(), !2018)
  %qp = getelementptr inbounds i8, ptr %retval.0.i637, i64 68, !dbg !2019
  %qp17 = getelementptr inbounds i8, ptr %MbQ, i64 68, !dbg !2019
  %qpc = getelementptr inbounds i8, ptr %retval.0.i637, i64 72, !dbg !2019
  %sub9 = add i32 %pl, -1, !dbg !2019
  %idxprom = zext i32 %sub9 to i64, !dbg !2019
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom, !dbg !2019
  %qpc11 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !2019
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %qpc11, i64 0, i64 %idxprom, !dbg !2019
  %qp17.sink = select i1 %tobool3.not, ptr %qp17, ptr %arrayidx14, !dbg !2019
  %.sink656.in = select i1 %tobool3.not, ptr %qp, ptr %arrayidx10, !dbg !2019
  %.sink656 = load i32, ptr %.sink656.in, align 4, !dbg !2020
  %3 = load i32, ptr %qp17.sink, align 4, !dbg !2020
  %add18 = add nsw i32 %3, %.sink656, !dbg !2020
  %cond22.in = add nsw i32 %add18, 1, !dbg !2020
  %cond22 = ashr i32 %cond22.in, 1, !dbg !2019
    #dbg_value(i32 %cond22, !1920, !DIExpression(), !2018)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !2021
  %4 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !2021
  %conv23 = sext i16 %4 to i32, !dbg !2022
  %add24 = add nsw i32 %cond22, %conv23, !dbg !2023
    #dbg_value(i32 0, !2024, !DIExpression(), !2031)
    #dbg_value(i32 51, !2029, !DIExpression(), !2031)
    #dbg_value(i32 %add24, !2030, !DIExpression(), !2031)
    #dbg_value(i32 %add24, !2033, !DIExpression(), !2039)
    #dbg_value(i32 0, !2038, !DIExpression(), !2039)
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add24, i32 0), !dbg !2041
    #dbg_value(i32 %cond.i.i, !2030, !DIExpression(), !2031)
    #dbg_value(i32 %cond.i.i, !2042, !DIExpression(), !2046)
    #dbg_value(i32 51, !2045, !DIExpression(), !2046)
  %5 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !2048
    #dbg_value(i32 %5, !2030, !DIExpression(), !2031)
    #dbg_value(i32 %5, !1921, !DIExpression(), !2018)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !2049
  %6 = load i16, ptr %DFBetaOffset, align 4, !dbg !2049
  %conv26 = sext i16 %6 to i32, !dbg !2050
  %add27 = add nsw i32 %cond22, %conv26, !dbg !2051
    #dbg_value(i32 0, !2024, !DIExpression(), !2052)
    #dbg_value(i32 51, !2029, !DIExpression(), !2052)
    #dbg_value(i32 %add27, !2030, !DIExpression(), !2052)
    #dbg_value(i32 %add27, !2033, !DIExpression(), !2054)
    #dbg_value(i32 0, !2038, !DIExpression(), !2054)
  %cond.i.i602 = tail call noundef i32 @llvm.smax.i32(i32 %add27, i32 0), !dbg !2056
    #dbg_value(i32 %cond.i.i602, !2030, !DIExpression(), !2052)
    #dbg_value(i32 %cond.i.i602, !2042, !DIExpression(), !2057)
    #dbg_value(i32 51, !2045, !DIExpression(), !2057)
  %7 = tail call i32 @llvm.umin.i32(i32 %cond.i.i602, i32 51), !dbg !2059
    #dbg_value(i32 %7, !2030, !DIExpression(), !2052)
    #dbg_value(i32 %7, !1922, !DIExpression(), !2018)
  %idxprom29 = zext nneg i32 %5 to i64, !dbg !2060
  %arrayidx30 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom29, !dbg !2060
  %8 = load i8, ptr %arrayidx30, align 1, !dbg !2060
  %conv31 = zext i8 %8 to i32, !dbg !2060
  %mul = mul nsw i32 %cond, %conv31, !dbg !2061
    #dbg_value(i32 %mul, !1923, !DIExpression(), !2018)
  %idxprom32 = zext nneg i32 %7 to i64, !dbg !2062
  %arrayidx33 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom32, !dbg !2062
  %9 = load i8, ptr %arrayidx33, align 1, !dbg !2062
  %conv34 = zext i8 %9 to i32, !dbg !2062
  %mul35 = mul nsw i32 %cond, %conv34, !dbg !2063
    #dbg_value(i32 %mul35, !1924, !DIExpression(), !2018)
  %or = or i32 %mul35, %mul, !dbg !2064
  %cmp36.not = icmp eq i32 %or, 0, !dbg !2065
  br i1 %cmp36.not, label %if.end432, label %if.then38, !dbg !2066

if.then38:                                        ; preds = %if.then
  %arrayidx40 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom29, !dbg !2067
    #dbg_value(ptr %arrayidx40, !1925, !DIExpression(), !2068)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !2069
  %idxprom41 = zext i32 %pl to i64, !dbg !2070
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom41, !dbg !2070
  %10 = load i32, ptr %arrayidx42, align 4, !dbg !2070
    #dbg_value(i32 %10, !1929, !DIExpression(), !2068)
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i637, i64 44, !dbg !2071
  %11 = load i32, ptr %pix_x, align 4, !dbg !2071
  %and = and i32 %sub, 15, !dbg !2071
  %add44 = add nsw i32 %11, %and, !dbg !2071
    #dbg_value(i32 %add44, !1930, !DIExpression(), !2068)
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i637, i64 48, !dbg !2072
  %12 = load i32, ptr %pix_y, align 8, !dbg !2072
  %idxprom46 = sext i32 %12 to i64, !dbg !2073
  %arrayidx47 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom46, !dbg !2073
    #dbg_value(ptr %arrayidx47, !1931, !DIExpression(), !2068)
    #dbg_value(i32 0, !1932, !DIExpression(), !2068)
    #dbg_value(ptr %Strength, !1911, !DIExpression(), !2004)
  %idx.ext = sext i32 %add44 to i64
  %shr85 = lshr i32 %mul, 2
  %add86 = add nuw nsw i32 %shr85, 2
  br label %for.body, !dbg !2074

for.body:                                         ; preds = %if.then38, %if.end426
  %Strength.addr.0648 = phi ptr [ %Strength, %if.then38 ], [ %add.ptr427, %if.end426 ]
  %cur_img.0647 = phi ptr [ %arrayidx47, %if.then38 ], [ %cur_img.5, %if.end426 ]
  %pel.0646 = phi i32 [ 0, %if.then38 ], [ %add429, %if.end426 ]
    #dbg_value(ptr %Strength.addr.0648, !1911, !DIExpression(), !2004)
    #dbg_value(ptr %cur_img.0647, !1931, !DIExpression(), !2068)
    #dbg_value(i32 %pel.0646, !1932, !DIExpression(), !2068)
  %13 = load i8, ptr %Strength.addr.0648, align 1, !dbg !2075
  switch i8 %13, label %if.then221 [
    i8 4, label %for.body57
    i8 0, label %if.else423
  ], !dbg !2076

for.body57:                                       ; preds = %for.body, %if.end216
  %cur_img.1641 = phi ptr [ %incdec.ptr, %if.end216 ], [ %cur_img.0647, %for.body ]
  %i.0640 = phi i32 [ %inc, %if.end216 ], [ 0, %for.body ]
    #dbg_value(ptr %cur_img.1641, !1931, !DIExpression(), !2068)
    #dbg_value(i32 %i.0640, !1933, !DIExpression(), !2077)
  %incdec.ptr = getelementptr inbounds i8, ptr %cur_img.1641, i64 8, !dbg !2078
    #dbg_value(ptr %incdec.ptr, !1931, !DIExpression(), !2068)
  %14 = load ptr, ptr %cur_img.1641, align 8, !dbg !2079
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 %idx.ext, !dbg !2080
    #dbg_value(ptr %add.ptr, !1939, !DIExpression(), !2081)
  %add.ptr58 = getelementptr inbounds i8, ptr %add.ptr, i64 2, !dbg !2082
    #dbg_value(ptr %add.ptr58, !1943, !DIExpression(), !2081)
  %15 = load i16, ptr %add.ptr, align 2, !dbg !2083
    #dbg_value(i16 %15, !1944, !DIExpression(), !2081)
  %16 = load i16, ptr %add.ptr58, align 2, !dbg !2084
    #dbg_value(i16 %16, !1945, !DIExpression(), !2081)
  %conv59 = zext i16 %16 to i32, !dbg !2085
  %conv60 = zext i16 %15 to i32, !dbg !2086
  %sub61 = sub nsw i32 %conv59, %conv60, !dbg !2087
    #dbg_value(i32 %sub61, !80, !DIExpression(), !2088)
    #dbg_value(i32 %sub61, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2088)
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub61, i1 true), !dbg !2090
  %cmp63 = icmp slt i32 %sub.i, %mul, !dbg !2091
  br i1 %cmp63, label %if.then65, label %if.end216, !dbg !2092

if.then65:                                        ; preds = %for.body57
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !2093
  %17 = load i16, ptr %add.ptr66, align 2, !dbg !2094
    #dbg_value(i16 %17, !1946, !DIExpression(), !2095)
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 -2, !dbg !2096
    #dbg_value(i16 poison, !1949, !DIExpression(), !2095)
  %conv69 = zext i16 %17 to i32, !dbg !2097
  %sub70 = sub nsw i32 %conv59, %conv69, !dbg !2098
    #dbg_value(i32 %sub70, !80, !DIExpression(), !2099)
    #dbg_value(i32 %sub70, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2099)
  %sub.i604 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true), !dbg !2101
  %cmp72 = icmp slt i32 %sub.i604, %mul35, !dbg !2102
  br i1 %cmp72, label %land.lhs.true, label %if.end216, !dbg !2103

land.lhs.true:                                    ; preds = %if.then65
  %18 = load i16, ptr %add.ptr67, align 2, !dbg !2104
    #dbg_value(i16 %18, !1949, !DIExpression(), !2095)
  %conv75 = zext i16 %18 to i32, !dbg !2105
  %sub76 = sub nsw i32 %conv60, %conv75, !dbg !2106
    #dbg_value(i32 %sub76, !80, !DIExpression(), !2107)
    #dbg_value(i32 %sub76, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2107)
  %sub.i605 = tail call i32 @llvm.abs.i32(i32 %sub76, i1 true), !dbg !2109
  %cmp78 = icmp ult i32 %sub.i605, %mul35, !dbg !2110
  br i1 %cmp78, label %if.then80, label %if.end216, !dbg !2111

if.then80:                                        ; preds = %land.lhs.true
    #dbg_value(i32 %sub61, !80, !DIExpression(), !2112)
    #dbg_value(i32 %sub61, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2112)
  %cmp87 = icmp ult i32 %sub.i, %add86, !dbg !2114
  br i1 %cmp87, label %if.then89, label %if.else195, !dbg !2115

if.then89:                                        ; preds = %if.then80
  %add.ptr90 = getelementptr inbounds i8, ptr %add.ptr, i64 6, !dbg !2116
  %19 = load i16, ptr %add.ptr90, align 2, !dbg !2117
    #dbg_value(i16 %19, !1950, !DIExpression(), !2118)
  %add.ptr91 = getelementptr inbounds i8, ptr %add.ptr, i64 -4, !dbg !2119
  %20 = load i16, ptr %add.ptr91, align 2, !dbg !2120
    #dbg_value(i16 %20, !1955, !DIExpression(), !2118)
  %add94 = add nuw nsw i32 %conv59, %conv60, !dbg !2121
    #dbg_value(i32 %add94, !1956, !DIExpression(), !2118)
  %conv96 = zext i16 %20 to i32, !dbg !2122
  %sub97 = sub nsw i32 %conv60, %conv96, !dbg !2123
    #dbg_value(i32 %sub97, !80, !DIExpression(), !2124)
    #dbg_value(i32 %sub97, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2124)
  %sub.i607 = tail call i32 @llvm.abs.i32(i32 %sub97, i1 true), !dbg !2126
  %cmp99 = icmp ult i32 %sub.i607, %mul35, !dbg !2127
  br i1 %cmp99, label %if.then101, label %if.else, !dbg !2128

if.then101:                                       ; preds = %if.then89
  %add.ptr102 = getelementptr inbounds i8, ptr %add.ptr, i64 -6, !dbg !2129
  %21 = load i16, ptr %add.ptr102, align 2, !dbg !2130
    #dbg_value(i16 %21, !1957, !DIExpression(), !2131)
  %add105 = add nuw nsw i32 %add94, %conv75, !dbg !2132
  %shl = shl nuw nsw i32 %add105, 1, !dbg !2133
  %add106 = add nuw nsw i32 %conv69, 4, !dbg !2134
  %add108 = add nuw nsw i32 %add106, %shl, !dbg !2135
  %add109 = add nuw nsw i32 %add108, %conv96, !dbg !2136
  %shr110 = lshr i32 %add109, 3, !dbg !2137
    #dbg_value(ptr %add.ptr67, !1939, !DIExpression(), !2081)
  %add115 = add nuw nsw i32 %add94, 2, !dbg !2138
  %add116 = add nuw nsw i32 %add115, %conv75, !dbg !2139
  %add117 = add nuw nsw i32 %add116, %conv96, !dbg !2140
  %shr118 = lshr i32 %add117, 2, !dbg !2141
  %conv119 = trunc nuw i32 %shr118 to i16, !dbg !2142
    #dbg_value(ptr %add.ptr91, !1939, !DIExpression(), !2081)
  store i16 %conv119, ptr %add.ptr67, align 2, !dbg !2143
  %conv121 = zext i16 %21 to i32, !dbg !2144
  %add123 = add nuw nsw i32 %conv121, %conv96, !dbg !2145
  %shl124 = shl nuw nsw i32 %add123, 1, !dbg !2146
  %add126 = add nuw nsw i32 %add94, 4, !dbg !2147
  %add128 = add nuw nsw i32 %add126, %conv75, !dbg !2148
  %add129 = add nuw nsw i32 %add128, %conv96, !dbg !2149
  %add130 = add nuw nsw i32 %add129, %shl124, !dbg !2150
  %shr131 = lshr i32 %add130, 3, !dbg !2151
  %conv132 = trunc nuw i32 %shr131 to i16, !dbg !2152
  store i16 %conv132, ptr %add.ptr91, align 2, !dbg !2153
  br label %if.end, !dbg !2154

if.else:                                          ; preds = %if.then89
  %shl134 = shl nuw nsw i32 %conv75, 1, !dbg !2155
  %add136 = add nuw nsw i32 %conv60, 2, !dbg !2157
  %add138 = add nuw nsw i32 %add136, %conv69, !dbg !2158
  %add139 = add nuw nsw i32 %add138, %shl134, !dbg !2159
  %shr140 = lshr i32 %add139, 2, !dbg !2160
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then101
  %conv141.sink.in = phi i32 [ %shr110, %if.then101 ], [ %shr140, %if.else ]
  %conv141.sink = trunc i32 %conv141.sink.in to i16, !dbg !2161
  store i16 %conv141.sink, ptr %add.ptr, align 2, !dbg !2161
  %conv143 = zext i16 %19 to i32, !dbg !2162
  %sub144 = sub nsw i32 %conv59, %conv143, !dbg !2163
    #dbg_value(i32 %sub144, !80, !DIExpression(), !2164)
    #dbg_value(i32 %sub144, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2164)
  %sub.i608 = tail call i32 @llvm.abs.i32(i32 %sub144, i1 true), !dbg !2166
  %cmp146 = icmp ult i32 %sub.i608, %mul35, !dbg !2167
  br i1 %cmp146, label %if.then148, label %if.else184, !dbg !2168

if.then148:                                       ; preds = %if.end
  %add.ptr149 = getelementptr inbounds i8, ptr %add.ptr, i64 8, !dbg !2169
  %22 = load i16, ptr %add.ptr149, align 2, !dbg !2170
    #dbg_value(i16 %22, !1960, !DIExpression(), !2171)
  %add152 = add nuw nsw i32 %add94, %conv69, !dbg !2172
  %shl153 = shl nuw nsw i32 %add152, 1, !dbg !2173
  %add154 = add nuw nsw i32 %shl153, 4, !dbg !2174
  %add156 = add nuw nsw i32 %add154, %conv75, !dbg !2175
  %add157 = add nuw nsw i32 %add156, %conv143, !dbg !2176
  %shr158 = lshr i32 %add157, 3, !dbg !2177
  %conv159 = trunc nuw i32 %shr158 to i16, !dbg !2178
    #dbg_value(ptr %add.ptr66, !1943, !DIExpression(), !2081)
  store i16 %conv159, ptr %add.ptr58, align 2, !dbg !2179
  %add163 = add nuw nsw i32 %conv60, 2, !dbg !2180
  %add165 = add nuw nsw i32 %add163, %conv59, !dbg !2181
  %add167 = add nuw nsw i32 %add165, %conv69, !dbg !2182
  %add168 = add nuw nsw i32 %add167, %conv143, !dbg !2183
  %shr169 = lshr i32 %add168, 2, !dbg !2184
  %conv170 = trunc nuw i32 %shr169 to i16, !dbg !2185
    #dbg_value(ptr %add.ptr90, !1943, !DIExpression(), !2081)
  store i16 %conv170, ptr %add.ptr66, align 2, !dbg !2186
  %conv172 = zext i16 %22 to i32, !dbg !2187
  %add174 = add nuw nsw i32 %conv172, %conv143, !dbg !2188
  %shl175 = shl nuw nsw i32 %add174, 1, !dbg !2189
  %add177 = add nuw nsw i32 %add94, 4, !dbg !2190
  %add179 = add nuw nsw i32 %add177, %conv69, !dbg !2191
  %add180 = add nuw nsw i32 %add179, %conv143, !dbg !2192
  %add181 = add nuw nsw i32 %add180, %shl175, !dbg !2193
  %shr182 = lshr i32 %add181, 3, !dbg !2194
  br label %if.end216.sink.split, !dbg !2195

if.else184:                                       ; preds = %if.end
  %shl186 = shl nuw nsw i32 %conv69, 1, !dbg !2196
  %add188 = add nuw nsw i32 %conv59, 2, !dbg !2198
  %add190 = add nuw nsw i32 %add188, %shl186, !dbg !2199
  %add191 = add nuw nsw i32 %add190, %conv75, !dbg !2200
  %shr192 = lshr i32 %add191, 2, !dbg !2201
  br label %if.end216.sink.split

if.else195:                                       ; preds = %if.then80
  %shl197 = shl nuw nsw i32 %conv75, 1, !dbg !2202
  %add199 = add nuw nsw i32 %conv60, 2, !dbg !2204
  %add201 = add nuw nsw i32 %add199, %conv69, !dbg !2205
  %add202 = add nuw nsw i32 %add201, %shl197, !dbg !2206
  %shr203 = lshr i32 %add202, 2, !dbg !2207
  %conv204 = trunc nuw i32 %shr203 to i16, !dbg !2208
  store i16 %conv204, ptr %add.ptr, align 2, !dbg !2209
  %shl206 = shl nuw nsw i32 %conv69, 1, !dbg !2210
  %add208 = add nuw nsw i32 %conv59, 2, !dbg !2211
  %add210 = add nuw nsw i32 %add208, %shl206, !dbg !2212
  %add211 = add nuw nsw i32 %add210, %conv75, !dbg !2213
  %shr212 = lshr i32 %add211, 2, !dbg !2214
  br label %if.end216.sink.split

if.end216.sink.split:                             ; preds = %if.then148, %if.else184, %if.else195
  %shr212.sink = phi i32 [ %shr212, %if.else195 ], [ %shr192, %if.else184 ], [ %shr182, %if.then148 ]
  %add.ptr58.sink = phi ptr [ %add.ptr58, %if.else195 ], [ %add.ptr58, %if.else184 ], [ %add.ptr90, %if.then148 ]
  %conv213 = trunc nuw i32 %shr212.sink to i16, !dbg !2215
  store i16 %conv213, ptr %add.ptr58.sink, align 2, !dbg !2215
  br label %if.end216, !dbg !2216

if.end216:                                        ; preds = %if.end216.sink.split, %if.then65, %land.lhs.true, %for.body57
  %inc = add nuw nsw i32 %i.0640, 1, !dbg !2216
    #dbg_value(ptr %incdec.ptr, !1931, !DIExpression(), !2068)
    #dbg_value(i32 %inc, !1933, !DIExpression(), !2077)
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !2217
  br i1 %exitcond.not, label %if.end426, label %for.body57, !dbg !2218, !llvm.loop !2219

if.then221:                                       ; preds = %for.body
  %idxprom222 = zext i8 %13 to i64, !dbg !2221
  %arrayidx223 = getelementptr inbounds i8, ptr %arrayidx40, i64 %idxprom222, !dbg !2221
  %23 = load i8, ptr %arrayidx223, align 1, !dbg !2221
  %conv224 = zext i8 %23 to i32, !dbg !2221
  %mul225 = mul nsw i32 %cond, %conv224, !dbg !2222
    #dbg_value(i32 %mul225, !1963, !DIExpression(), !2223)
  %cmp229 = icmp eq i32 %mul225, 0, !dbg !2224
    #dbg_value(i32 0, !1966, !DIExpression(), !2223)
  br i1 %cmp229, label %for.body235.preheader, label %for.cond307.preheader, !dbg !2225

for.body235.preheader:                            ; preds = %if.then221
    #dbg_value(ptr %cur_img.0647, !1931, !DIExpression(), !2068)
    #dbg_value(i32 0, !1966, !DIExpression(), !2223)
  %incdec.ptr236 = getelementptr inbounds i8, ptr %cur_img.0647, i64 8, !dbg !2226
    #dbg_value(ptr %incdec.ptr236, !1931, !DIExpression(), !2068)
  %24 = load ptr, ptr %cur_img.0647, align 8, !dbg !2227
  %add.ptr238 = getelementptr inbounds i16, ptr %24, i64 %idx.ext, !dbg !2228
    #dbg_value(ptr %add.ptr238, !1967, !DIExpression(), !2223)
  %add.ptr239 = getelementptr inbounds i8, ptr %add.ptr238, i64 2, !dbg !2229
    #dbg_value(ptr %add.ptr239, !1968, !DIExpression(), !2223)
  %25 = load i16, ptr %add.ptr239, align 2, !dbg !2230
  %conv240 = zext i16 %25 to i32, !dbg !2230
  %26 = load i16, ptr %add.ptr238, align 2, !dbg !2231
  %conv241 = zext i16 %26 to i32, !dbg !2231
  %sub242 = sub nsw i32 %conv240, %conv241, !dbg !2232
    #dbg_value(i32 %sub242, !1969, !DIExpression(), !2223)
    #dbg_value(i32 %sub242, !80, !DIExpression(), !2233)
    #dbg_value(i32 %sub242, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2233)
  %sub.i609 = tail call i32 @llvm.abs.i32(i32 %sub242, i1 true), !dbg !2235
  %cmp244 = icmp slt i32 %sub.i609, %mul, !dbg !2236
  br i1 %cmp244, label %if.then246, label %for.inc303, !dbg !2237

for.cond307.preheader:                            ; preds = %if.then221
    #dbg_value(ptr %cur_img.0647, !1931, !DIExpression(), !2068)
    #dbg_value(i32 0, !1966, !DIExpression(), !2223)
  %sub379 = sub nsw i32 0, %mul225
  br label %for.body310, !dbg !2238

if.then246:                                       ; preds = %for.body235.preheader
  %add.ptr247 = getelementptr inbounds i8, ptr %add.ptr238, i64 4, !dbg !2239
    #dbg_value(ptr %add.ptr247, !1970, !DIExpression(), !2240)
    #dbg_value(ptr %add.ptr238, !1978, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2240)
  %27 = load i16, ptr %add.ptr247, align 2, !dbg !2241
  %conv250 = zext i16 %27 to i32, !dbg !2241
  %sub251 = sub nsw i32 %conv240, %conv250, !dbg !2242
    #dbg_value(i32 %sub251, !80, !DIExpression(), !2243)
    #dbg_value(i32 %sub251, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2243)
  %sub.i610 = tail call i32 @llvm.abs.i32(i32 %sub251, i1 true), !dbg !2245
  %cmp253 = icmp slt i32 %sub.i610, %mul35, !dbg !2246
  br i1 %cmp253, label %land.lhs.true255, label %for.inc303, !dbg !2247

land.lhs.true255:                                 ; preds = %if.then246
  %add.ptr248 = getelementptr inbounds i8, ptr %add.ptr238, i64 -2, !dbg !2248
    #dbg_value(ptr %add.ptr248, !1978, !DIExpression(), !2240)
  %28 = load i16, ptr %add.ptr248, align 2, !dbg !2249
  %conv257 = zext i16 %28 to i32, !dbg !2249
  %sub258 = sub nsw i32 %conv241, %conv257, !dbg !2250
    #dbg_value(i32 %sub258, !80, !DIExpression(), !2251)
    #dbg_value(i32 %sub258, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2251)
  %sub.i611 = tail call i32 @llvm.abs.i32(i32 %sub258, i1 true), !dbg !2253
  %cmp260 = icmp ult i32 %sub.i611, %mul35, !dbg !2254
  br i1 %cmp260, label %if.then262, label %for.inc303, !dbg !2255

if.then262:                                       ; preds = %land.lhs.true255
  %add.ptr264 = getelementptr inbounds i8, ptr %add.ptr238, i64 6, !dbg !2256
  %29 = load i16, ptr %add.ptr264, align 2, !dbg !2257
    #dbg_value(i16 %29, !1979, !DIExpression(), !2258)
  %add.ptr266 = getelementptr inbounds i8, ptr %add.ptr238, i64 -4, !dbg !2259
  %30 = load i16, ptr %add.ptr266, align 2, !dbg !2260
    #dbg_value(i16 %30, !1982, !DIExpression(), !2258)
  %conv268 = zext i16 %29 to i32, !dbg !2261
  %sub269 = sub nsw i32 %conv240, %conv268, !dbg !2262
    #dbg_value(i32 %sub269, !80, !DIExpression(), !2263)
    #dbg_value(i32 %sub269, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2263)
  %sub.i612 = tail call i32 @llvm.abs.i32(i32 %sub269, i1 true), !dbg !2265
  %cmp271 = icmp ult i32 %sub.i612, %mul35, !dbg !2266
  %conv272 = zext i1 %cmp271 to i32, !dbg !2266
    #dbg_value(i32 %conv272, !1983, !DIExpression(), !2258)
  %conv274 = zext i16 %30 to i32, !dbg !2267
  %sub275 = sub nsw i32 %conv241, %conv274, !dbg !2268
    #dbg_value(i32 %sub275, !80, !DIExpression(), !2269)
    #dbg_value(i32 %sub275, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2269)
  %sub.i613 = tail call i32 @llvm.abs.i32(i32 %sub275, i1 true), !dbg !2271
  %cmp277 = icmp ult i32 %sub.i613, %mul35, !dbg !2272
  %conv278 = zext i1 %cmp277 to i32, !dbg !2272
    #dbg_value(i32 %conv278, !1984, !DIExpression(), !2258)
  %add279 = add nuw nsw i32 %conv278, %conv272, !dbg !2273
    #dbg_value(i32 %add279, !1985, !DIExpression(), !2258)
  %sub280 = sub nsw i32 0, %add279, !dbg !2274
  %shl281 = shl nsw i32 %sub242, 2, !dbg !2275
  %sub284 = add nsw i32 %shl281, 4, !dbg !2276
  %add285 = sub nsw i32 %sub284, %conv250, !dbg !2277
  %add286 = add nsw i32 %add285, %conv257, !dbg !2278
  %shr287 = ashr i32 %add286, 3, !dbg !2279
    #dbg_value(i32 %sub280, !2024, !DIExpression(), !2280)
    #dbg_value(i32 %add279, !2029, !DIExpression(), !2280)
    #dbg_value(i32 %shr287, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %shr287, !2033, !DIExpression(), !2282)
    #dbg_value(i32 %sub280, !2038, !DIExpression(), !2282)
  %cond.i.i614 = tail call noundef i32 @llvm.smax.i32(i32 %shr287, i32 %sub280), !dbg !2284
    #dbg_value(i32 %cond.i.i614, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i.i614, !2042, !DIExpression(), !2285)
    #dbg_value(i32 %add279, !2045, !DIExpression(), !2285)
  %cond.i4.i615 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614, i32 %add279), !dbg !2287
    #dbg_value(i32 %cond.i4.i615, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i4.i615, !1986, !DIExpression(), !2258)
  %cmp289.not = icmp eq i32 %cond.i4.i615, 0, !dbg !2288
  br i1 %cmp289.not, label %for.inc303, label %if.then291, !dbg !2290

if.then291:                                       ; preds = %if.then262
  %add293 = add nsw i32 %cond.i4.i615, %conv241, !dbg !2291
    #dbg_value(i32 %10, !2293, !DIExpression(), !2297)
    #dbg_value(i32 %add293, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %add293, !2033, !DIExpression(), !2299)
    #dbg_value(i32 0, !2038, !DIExpression(), !2299)
  %cond.i.i616 = tail call noundef i32 @llvm.smax.i32(i32 %add293, i32 0), !dbg !2301
    #dbg_value(i32 %cond.i.i616, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %cond.i.i616, !2042, !DIExpression(), !2302)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2302)
  %cond.i4.i617 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616, i32 %10), !dbg !2304
    #dbg_value(i32 %cond.i4.i617, !2296, !DIExpression(), !2297)
  %conv295 = trunc i32 %cond.i4.i617 to i16, !dbg !2305
  store i16 %conv295, ptr %add.ptr238, align 2, !dbg !2306
  %sub297 = sub nsw i32 %conv240, %cond.i4.i615, !dbg !2307
    #dbg_value(i32 %10, !2293, !DIExpression(), !2308)
    #dbg_value(i32 %sub297, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %sub297, !2033, !DIExpression(), !2310)
    #dbg_value(i32 0, !2038, !DIExpression(), !2310)
  %cond.i.i618 = tail call noundef i32 @llvm.smax.i32(i32 %sub297, i32 0), !dbg !2312
    #dbg_value(i32 %cond.i.i618, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %cond.i.i618, !2042, !DIExpression(), !2313)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2313)
  %cond.i4.i619 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618, i32 %10), !dbg !2315
    #dbg_value(i32 %cond.i4.i619, !2296, !DIExpression(), !2308)
  %conv299 = trunc i32 %cond.i4.i619 to i16, !dbg !2316
  store i16 %conv299, ptr %add.ptr239, align 2, !dbg !2317
  br label %for.inc303, !dbg !2318

for.inc303:                                       ; preds = %if.then246, %land.lhs.true255, %if.then291, %if.then262, %for.body235.preheader
    #dbg_value(ptr %incdec.ptr236, !1931, !DIExpression(), !2068)
    #dbg_value(i32 1, !1966, !DIExpression(), !2223)
  %incdec.ptr236.1 = getelementptr inbounds i8, ptr %cur_img.0647, i64 16, !dbg !2226
    #dbg_value(ptr %incdec.ptr236.1, !1931, !DIExpression(), !2068)
  %31 = load ptr, ptr %incdec.ptr236, align 8, !dbg !2227
  %add.ptr238.1 = getelementptr inbounds i16, ptr %31, i64 %idx.ext, !dbg !2228
    #dbg_value(ptr %add.ptr238.1, !1967, !DIExpression(), !2223)
  %add.ptr239.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 2, !dbg !2229
    #dbg_value(ptr %add.ptr239.1, !1968, !DIExpression(), !2223)
  %32 = load i16, ptr %add.ptr239.1, align 2, !dbg !2230
  %conv240.1 = zext i16 %32 to i32, !dbg !2230
  %33 = load i16, ptr %add.ptr238.1, align 2, !dbg !2231
  %conv241.1 = zext i16 %33 to i32, !dbg !2231
  %sub242.1 = sub nsw i32 %conv240.1, %conv241.1, !dbg !2232
    #dbg_value(i32 %sub242.1, !1969, !DIExpression(), !2223)
    #dbg_value(i32 %sub242.1, !80, !DIExpression(), !2233)
    #dbg_value(i32 %sub242.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2233)
  %sub.i609.1 = tail call i32 @llvm.abs.i32(i32 %sub242.1, i1 true), !dbg !2235
  %cmp244.1 = icmp slt i32 %sub.i609.1, %mul, !dbg !2236
  br i1 %cmp244.1, label %if.then246.1, label %for.inc303.1, !dbg !2237

if.then246.1:                                     ; preds = %for.inc303
  %add.ptr247.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 4, !dbg !2239
    #dbg_value(ptr %add.ptr247.1, !1970, !DIExpression(), !2240)
    #dbg_value(ptr %add.ptr238.1, !1978, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2240)
  %34 = load i16, ptr %add.ptr247.1, align 2, !dbg !2241
  %conv250.1 = zext i16 %34 to i32, !dbg !2241
  %sub251.1 = sub nsw i32 %conv240.1, %conv250.1, !dbg !2242
    #dbg_value(i32 %sub251.1, !80, !DIExpression(), !2243)
    #dbg_value(i32 %sub251.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2243)
  %sub.i610.1 = tail call i32 @llvm.abs.i32(i32 %sub251.1, i1 true), !dbg !2245
  %cmp253.1 = icmp slt i32 %sub.i610.1, %mul35, !dbg !2246
  br i1 %cmp253.1, label %land.lhs.true255.1, label %for.inc303.1, !dbg !2247

land.lhs.true255.1:                               ; preds = %if.then246.1
  %add.ptr248.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 -2, !dbg !2248
    #dbg_value(ptr %add.ptr248.1, !1978, !DIExpression(), !2240)
  %35 = load i16, ptr %add.ptr248.1, align 2, !dbg !2249
  %conv257.1 = zext i16 %35 to i32, !dbg !2249
  %sub258.1 = sub nsw i32 %conv241.1, %conv257.1, !dbg !2250
    #dbg_value(i32 %sub258.1, !80, !DIExpression(), !2251)
    #dbg_value(i32 %sub258.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2251)
  %sub.i611.1 = tail call i32 @llvm.abs.i32(i32 %sub258.1, i1 true), !dbg !2253
  %cmp260.1 = icmp ult i32 %sub.i611.1, %mul35, !dbg !2254
  br i1 %cmp260.1, label %if.then262.1, label %for.inc303.1, !dbg !2255

if.then262.1:                                     ; preds = %land.lhs.true255.1
  %add.ptr264.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 6, !dbg !2256
  %36 = load i16, ptr %add.ptr264.1, align 2, !dbg !2257
    #dbg_value(i16 %36, !1979, !DIExpression(), !2258)
  %add.ptr266.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 -4, !dbg !2259
  %37 = load i16, ptr %add.ptr266.1, align 2, !dbg !2260
    #dbg_value(i16 %37, !1982, !DIExpression(), !2258)
  %conv268.1 = zext i16 %36 to i32, !dbg !2261
  %sub269.1 = sub nsw i32 %conv240.1, %conv268.1, !dbg !2262
    #dbg_value(i32 %sub269.1, !80, !DIExpression(), !2263)
    #dbg_value(i32 %sub269.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2263)
  %sub.i612.1 = tail call i32 @llvm.abs.i32(i32 %sub269.1, i1 true), !dbg !2265
  %cmp271.1 = icmp ult i32 %sub.i612.1, %mul35, !dbg !2266
  %conv272.1 = zext i1 %cmp271.1 to i32, !dbg !2266
    #dbg_value(i32 %conv272.1, !1983, !DIExpression(), !2258)
  %conv274.1 = zext i16 %37 to i32, !dbg !2267
  %sub275.1 = sub nsw i32 %conv241.1, %conv274.1, !dbg !2268
    #dbg_value(i32 %sub275.1, !80, !DIExpression(), !2269)
    #dbg_value(i32 %sub275.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2269)
  %sub.i613.1 = tail call i32 @llvm.abs.i32(i32 %sub275.1, i1 true), !dbg !2271
  %cmp277.1 = icmp ult i32 %sub.i613.1, %mul35, !dbg !2272
  %conv278.1 = zext i1 %cmp277.1 to i32, !dbg !2272
    #dbg_value(i32 %conv278.1, !1984, !DIExpression(), !2258)
  %add279.1 = add nuw nsw i32 %conv278.1, %conv272.1, !dbg !2273
    #dbg_value(i32 %add279.1, !1985, !DIExpression(), !2258)
  %sub280.1 = sub nsw i32 0, %add279.1, !dbg !2274
  %shl281.1 = shl nsw i32 %sub242.1, 2, !dbg !2275
  %sub284.1 = add nsw i32 %shl281.1, 4, !dbg !2276
  %add285.1 = sub nsw i32 %sub284.1, %conv250.1, !dbg !2277
  %add286.1 = add nsw i32 %add285.1, %conv257.1, !dbg !2278
  %shr287.1 = ashr i32 %add286.1, 3, !dbg !2279
    #dbg_value(i32 %sub280.1, !2024, !DIExpression(), !2280)
    #dbg_value(i32 %add279.1, !2029, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.1, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.1, !2033, !DIExpression(), !2282)
    #dbg_value(i32 %sub280.1, !2038, !DIExpression(), !2282)
  %cond.i.i614.1 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.1, i32 %sub280.1), !dbg !2284
    #dbg_value(i32 %cond.i.i614.1, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i.i614.1, !2042, !DIExpression(), !2285)
    #dbg_value(i32 %add279.1, !2045, !DIExpression(), !2285)
  %cond.i4.i615.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.1, i32 %add279.1), !dbg !2287
    #dbg_value(i32 %cond.i4.i615.1, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i4.i615.1, !1986, !DIExpression(), !2258)
  %cmp289.not.1 = icmp eq i32 %cond.i4.i615.1, 0, !dbg !2288
  br i1 %cmp289.not.1, label %for.inc303.1, label %if.then291.1, !dbg !2290

if.then291.1:                                     ; preds = %if.then262.1
  %add293.1 = add nsw i32 %cond.i4.i615.1, %conv241.1, !dbg !2291
    #dbg_value(i32 %10, !2293, !DIExpression(), !2297)
    #dbg_value(i32 %add293.1, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %add293.1, !2033, !DIExpression(), !2299)
    #dbg_value(i32 0, !2038, !DIExpression(), !2299)
  %cond.i.i616.1 = tail call noundef i32 @llvm.smax.i32(i32 %add293.1, i32 0), !dbg !2301
    #dbg_value(i32 %cond.i.i616.1, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %cond.i.i616.1, !2042, !DIExpression(), !2302)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2302)
  %cond.i4.i617.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.1, i32 %10), !dbg !2304
    #dbg_value(i32 %cond.i4.i617.1, !2296, !DIExpression(), !2297)
  %conv295.1 = trunc i32 %cond.i4.i617.1 to i16, !dbg !2305
  store i16 %conv295.1, ptr %add.ptr238.1, align 2, !dbg !2306
  %sub297.1 = sub nsw i32 %conv240.1, %cond.i4.i615.1, !dbg !2307
    #dbg_value(i32 %10, !2293, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.1, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.1, !2033, !DIExpression(), !2310)
    #dbg_value(i32 0, !2038, !DIExpression(), !2310)
  %cond.i.i618.1 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.1, i32 0), !dbg !2312
    #dbg_value(i32 %cond.i.i618.1, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %cond.i.i618.1, !2042, !DIExpression(), !2313)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2313)
  %cond.i4.i619.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.1, i32 %10), !dbg !2315
    #dbg_value(i32 %cond.i4.i619.1, !2296, !DIExpression(), !2308)
  %conv299.1 = trunc i32 %cond.i4.i619.1 to i16, !dbg !2316
  store i16 %conv299.1, ptr %add.ptr239.1, align 2, !dbg !2317
  br label %for.inc303.1, !dbg !2318

for.inc303.1:                                     ; preds = %if.then291.1, %if.then262.1, %land.lhs.true255.1, %if.then246.1, %for.inc303
    #dbg_value(ptr %incdec.ptr236.1, !1931, !DIExpression(), !2068)
    #dbg_value(i32 2, !1966, !DIExpression(), !2223)
  %incdec.ptr236.2 = getelementptr inbounds i8, ptr %cur_img.0647, i64 24, !dbg !2226
    #dbg_value(ptr %incdec.ptr236.2, !1931, !DIExpression(), !2068)
  %38 = load ptr, ptr %incdec.ptr236.1, align 8, !dbg !2227
  %add.ptr238.2 = getelementptr inbounds i16, ptr %38, i64 %idx.ext, !dbg !2228
    #dbg_value(ptr %add.ptr238.2, !1967, !DIExpression(), !2223)
  %add.ptr239.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 2, !dbg !2229
    #dbg_value(ptr %add.ptr239.2, !1968, !DIExpression(), !2223)
  %39 = load i16, ptr %add.ptr239.2, align 2, !dbg !2230
  %conv240.2 = zext i16 %39 to i32, !dbg !2230
  %40 = load i16, ptr %add.ptr238.2, align 2, !dbg !2231
  %conv241.2 = zext i16 %40 to i32, !dbg !2231
  %sub242.2 = sub nsw i32 %conv240.2, %conv241.2, !dbg !2232
    #dbg_value(i32 %sub242.2, !1969, !DIExpression(), !2223)
    #dbg_value(i32 %sub242.2, !80, !DIExpression(), !2233)
    #dbg_value(i32 %sub242.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2233)
  %sub.i609.2 = tail call i32 @llvm.abs.i32(i32 %sub242.2, i1 true), !dbg !2235
  %cmp244.2 = icmp slt i32 %sub.i609.2, %mul, !dbg !2236
  br i1 %cmp244.2, label %if.then246.2, label %for.inc303.2, !dbg !2237

if.then246.2:                                     ; preds = %for.inc303.1
  %add.ptr247.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 4, !dbg !2239
    #dbg_value(ptr %add.ptr247.2, !1970, !DIExpression(), !2240)
    #dbg_value(ptr %add.ptr238.2, !1978, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2240)
  %41 = load i16, ptr %add.ptr247.2, align 2, !dbg !2241
  %conv250.2 = zext i16 %41 to i32, !dbg !2241
  %sub251.2 = sub nsw i32 %conv240.2, %conv250.2, !dbg !2242
    #dbg_value(i32 %sub251.2, !80, !DIExpression(), !2243)
    #dbg_value(i32 %sub251.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2243)
  %sub.i610.2 = tail call i32 @llvm.abs.i32(i32 %sub251.2, i1 true), !dbg !2245
  %cmp253.2 = icmp slt i32 %sub.i610.2, %mul35, !dbg !2246
  br i1 %cmp253.2, label %land.lhs.true255.2, label %for.inc303.2, !dbg !2247

land.lhs.true255.2:                               ; preds = %if.then246.2
  %add.ptr248.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 -2, !dbg !2248
    #dbg_value(ptr %add.ptr248.2, !1978, !DIExpression(), !2240)
  %42 = load i16, ptr %add.ptr248.2, align 2, !dbg !2249
  %conv257.2 = zext i16 %42 to i32, !dbg !2249
  %sub258.2 = sub nsw i32 %conv241.2, %conv257.2, !dbg !2250
    #dbg_value(i32 %sub258.2, !80, !DIExpression(), !2251)
    #dbg_value(i32 %sub258.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2251)
  %sub.i611.2 = tail call i32 @llvm.abs.i32(i32 %sub258.2, i1 true), !dbg !2253
  %cmp260.2 = icmp ult i32 %sub.i611.2, %mul35, !dbg !2254
  br i1 %cmp260.2, label %if.then262.2, label %for.inc303.2, !dbg !2255

if.then262.2:                                     ; preds = %land.lhs.true255.2
  %add.ptr264.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 6, !dbg !2256
  %43 = load i16, ptr %add.ptr264.2, align 2, !dbg !2257
    #dbg_value(i16 %43, !1979, !DIExpression(), !2258)
  %add.ptr266.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 -4, !dbg !2259
  %44 = load i16, ptr %add.ptr266.2, align 2, !dbg !2260
    #dbg_value(i16 %44, !1982, !DIExpression(), !2258)
  %conv268.2 = zext i16 %43 to i32, !dbg !2261
  %sub269.2 = sub nsw i32 %conv240.2, %conv268.2, !dbg !2262
    #dbg_value(i32 %sub269.2, !80, !DIExpression(), !2263)
    #dbg_value(i32 %sub269.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2263)
  %sub.i612.2 = tail call i32 @llvm.abs.i32(i32 %sub269.2, i1 true), !dbg !2265
  %cmp271.2 = icmp ult i32 %sub.i612.2, %mul35, !dbg !2266
  %conv272.2 = zext i1 %cmp271.2 to i32, !dbg !2266
    #dbg_value(i32 %conv272.2, !1983, !DIExpression(), !2258)
  %conv274.2 = zext i16 %44 to i32, !dbg !2267
  %sub275.2 = sub nsw i32 %conv241.2, %conv274.2, !dbg !2268
    #dbg_value(i32 %sub275.2, !80, !DIExpression(), !2269)
    #dbg_value(i32 %sub275.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2269)
  %sub.i613.2 = tail call i32 @llvm.abs.i32(i32 %sub275.2, i1 true), !dbg !2271
  %cmp277.2 = icmp ult i32 %sub.i613.2, %mul35, !dbg !2272
  %conv278.2 = zext i1 %cmp277.2 to i32, !dbg !2272
    #dbg_value(i32 %conv278.2, !1984, !DIExpression(), !2258)
  %add279.2 = add nuw nsw i32 %conv278.2, %conv272.2, !dbg !2273
    #dbg_value(i32 %add279.2, !1985, !DIExpression(), !2258)
  %sub280.2 = sub nsw i32 0, %add279.2, !dbg !2274
  %shl281.2 = shl nsw i32 %sub242.2, 2, !dbg !2275
  %sub284.2 = add nsw i32 %shl281.2, 4, !dbg !2276
  %add285.2 = sub nsw i32 %sub284.2, %conv250.2, !dbg !2277
  %add286.2 = add nsw i32 %add285.2, %conv257.2, !dbg !2278
  %shr287.2 = ashr i32 %add286.2, 3, !dbg !2279
    #dbg_value(i32 %sub280.2, !2024, !DIExpression(), !2280)
    #dbg_value(i32 %add279.2, !2029, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.2, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.2, !2033, !DIExpression(), !2282)
    #dbg_value(i32 %sub280.2, !2038, !DIExpression(), !2282)
  %cond.i.i614.2 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.2, i32 %sub280.2), !dbg !2284
    #dbg_value(i32 %cond.i.i614.2, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i.i614.2, !2042, !DIExpression(), !2285)
    #dbg_value(i32 %add279.2, !2045, !DIExpression(), !2285)
  %cond.i4.i615.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.2, i32 %add279.2), !dbg !2287
    #dbg_value(i32 %cond.i4.i615.2, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i4.i615.2, !1986, !DIExpression(), !2258)
  %cmp289.not.2 = icmp eq i32 %cond.i4.i615.2, 0, !dbg !2288
  br i1 %cmp289.not.2, label %for.inc303.2, label %if.then291.2, !dbg !2290

if.then291.2:                                     ; preds = %if.then262.2
  %add293.2 = add nsw i32 %cond.i4.i615.2, %conv241.2, !dbg !2291
    #dbg_value(i32 %10, !2293, !DIExpression(), !2297)
    #dbg_value(i32 %add293.2, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %add293.2, !2033, !DIExpression(), !2299)
    #dbg_value(i32 0, !2038, !DIExpression(), !2299)
  %cond.i.i616.2 = tail call noundef i32 @llvm.smax.i32(i32 %add293.2, i32 0), !dbg !2301
    #dbg_value(i32 %cond.i.i616.2, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %cond.i.i616.2, !2042, !DIExpression(), !2302)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2302)
  %cond.i4.i617.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.2, i32 %10), !dbg !2304
    #dbg_value(i32 %cond.i4.i617.2, !2296, !DIExpression(), !2297)
  %conv295.2 = trunc i32 %cond.i4.i617.2 to i16, !dbg !2305
  store i16 %conv295.2, ptr %add.ptr238.2, align 2, !dbg !2306
  %sub297.2 = sub nsw i32 %conv240.2, %cond.i4.i615.2, !dbg !2307
    #dbg_value(i32 %10, !2293, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.2, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.2, !2033, !DIExpression(), !2310)
    #dbg_value(i32 0, !2038, !DIExpression(), !2310)
  %cond.i.i618.2 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.2, i32 0), !dbg !2312
    #dbg_value(i32 %cond.i.i618.2, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %cond.i.i618.2, !2042, !DIExpression(), !2313)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2313)
  %cond.i4.i619.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.2, i32 %10), !dbg !2315
    #dbg_value(i32 %cond.i4.i619.2, !2296, !DIExpression(), !2308)
  %conv299.2 = trunc i32 %cond.i4.i619.2 to i16, !dbg !2316
  store i16 %conv299.2, ptr %add.ptr239.2, align 2, !dbg !2317
  br label %for.inc303.2, !dbg !2318

for.inc303.2:                                     ; preds = %if.then291.2, %if.then262.2, %land.lhs.true255.2, %if.then246.2, %for.inc303.1
    #dbg_value(ptr %incdec.ptr236.2, !1931, !DIExpression(), !2068)
    #dbg_value(i32 3, !1966, !DIExpression(), !2223)
  %incdec.ptr236.3 = getelementptr inbounds i8, ptr %cur_img.0647, i64 32, !dbg !2226
    #dbg_value(ptr %incdec.ptr236.3, !1931, !DIExpression(), !2068)
  %45 = load ptr, ptr %incdec.ptr236.2, align 8, !dbg !2227
  %add.ptr238.3 = getelementptr inbounds i16, ptr %45, i64 %idx.ext, !dbg !2228
    #dbg_value(ptr %add.ptr238.3, !1967, !DIExpression(), !2223)
  %add.ptr239.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 2, !dbg !2229
    #dbg_value(ptr %add.ptr239.3, !1968, !DIExpression(), !2223)
  %46 = load i16, ptr %add.ptr239.3, align 2, !dbg !2230
  %conv240.3 = zext i16 %46 to i32, !dbg !2230
  %47 = load i16, ptr %add.ptr238.3, align 2, !dbg !2231
  %conv241.3 = zext i16 %47 to i32, !dbg !2231
  %sub242.3 = sub nsw i32 %conv240.3, %conv241.3, !dbg !2232
    #dbg_value(i32 %sub242.3, !1969, !DIExpression(), !2223)
    #dbg_value(i32 %sub242.3, !80, !DIExpression(), !2233)
    #dbg_value(i32 %sub242.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2233)
  %sub.i609.3 = tail call i32 @llvm.abs.i32(i32 %sub242.3, i1 true), !dbg !2235
  %cmp244.3 = icmp slt i32 %sub.i609.3, %mul, !dbg !2236
  br i1 %cmp244.3, label %if.then246.3, label %if.end426, !dbg !2237

if.then246.3:                                     ; preds = %for.inc303.2
  %add.ptr247.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 4, !dbg !2239
    #dbg_value(ptr %add.ptr247.3, !1970, !DIExpression(), !2240)
    #dbg_value(ptr %add.ptr238.3, !1978, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value), !2240)
  %48 = load i16, ptr %add.ptr247.3, align 2, !dbg !2241
  %conv250.3 = zext i16 %48 to i32, !dbg !2241
  %sub251.3 = sub nsw i32 %conv240.3, %conv250.3, !dbg !2242
    #dbg_value(i32 %sub251.3, !80, !DIExpression(), !2243)
    #dbg_value(i32 %sub251.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2243)
  %sub.i610.3 = tail call i32 @llvm.abs.i32(i32 %sub251.3, i1 true), !dbg !2245
  %cmp253.3 = icmp slt i32 %sub.i610.3, %mul35, !dbg !2246
  br i1 %cmp253.3, label %land.lhs.true255.3, label %if.end426, !dbg !2247

land.lhs.true255.3:                               ; preds = %if.then246.3
  %add.ptr248.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 -2, !dbg !2248
    #dbg_value(ptr %add.ptr248.3, !1978, !DIExpression(), !2240)
  %49 = load i16, ptr %add.ptr248.3, align 2, !dbg !2249
  %conv257.3 = zext i16 %49 to i32, !dbg !2249
  %sub258.3 = sub nsw i32 %conv241.3, %conv257.3, !dbg !2250
    #dbg_value(i32 %sub258.3, !80, !DIExpression(), !2251)
    #dbg_value(i32 %sub258.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2251)
  %sub.i611.3 = tail call i32 @llvm.abs.i32(i32 %sub258.3, i1 true), !dbg !2253
  %cmp260.3 = icmp ult i32 %sub.i611.3, %mul35, !dbg !2254
  br i1 %cmp260.3, label %if.then262.3, label %if.end426, !dbg !2255

if.then262.3:                                     ; preds = %land.lhs.true255.3
  %add.ptr264.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 6, !dbg !2256
  %50 = load i16, ptr %add.ptr264.3, align 2, !dbg !2257
    #dbg_value(i16 %50, !1979, !DIExpression(), !2258)
  %add.ptr266.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 -4, !dbg !2259
  %51 = load i16, ptr %add.ptr266.3, align 2, !dbg !2260
    #dbg_value(i16 %51, !1982, !DIExpression(), !2258)
  %conv268.3 = zext i16 %50 to i32, !dbg !2261
  %sub269.3 = sub nsw i32 %conv240.3, %conv268.3, !dbg !2262
    #dbg_value(i32 %sub269.3, !80, !DIExpression(), !2263)
    #dbg_value(i32 %sub269.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2263)
  %sub.i612.3 = tail call i32 @llvm.abs.i32(i32 %sub269.3, i1 true), !dbg !2265
  %cmp271.3 = icmp ult i32 %sub.i612.3, %mul35, !dbg !2266
  %conv272.3 = zext i1 %cmp271.3 to i32, !dbg !2266
    #dbg_value(i32 %conv272.3, !1983, !DIExpression(), !2258)
  %conv274.3 = zext i16 %51 to i32, !dbg !2267
  %sub275.3 = sub nsw i32 %conv241.3, %conv274.3, !dbg !2268
    #dbg_value(i32 %sub275.3, !80, !DIExpression(), !2269)
    #dbg_value(i32 %sub275.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2269)
  %sub.i613.3 = tail call i32 @llvm.abs.i32(i32 %sub275.3, i1 true), !dbg !2271
  %cmp277.3 = icmp ult i32 %sub.i613.3, %mul35, !dbg !2272
  %conv278.3 = zext i1 %cmp277.3 to i32, !dbg !2272
    #dbg_value(i32 %conv278.3, !1984, !DIExpression(), !2258)
  %add279.3 = add nuw nsw i32 %conv278.3, %conv272.3, !dbg !2273
    #dbg_value(i32 %add279.3, !1985, !DIExpression(), !2258)
  %sub280.3 = sub nsw i32 0, %add279.3, !dbg !2274
  %shl281.3 = shl nsw i32 %sub242.3, 2, !dbg !2275
  %sub284.3 = add nsw i32 %shl281.3, 4, !dbg !2276
  %add285.3 = sub nsw i32 %sub284.3, %conv250.3, !dbg !2277
  %add286.3 = add nsw i32 %add285.3, %conv257.3, !dbg !2278
  %shr287.3 = ashr i32 %add286.3, 3, !dbg !2279
    #dbg_value(i32 %sub280.3, !2024, !DIExpression(), !2280)
    #dbg_value(i32 %add279.3, !2029, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.3, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %shr287.3, !2033, !DIExpression(), !2282)
    #dbg_value(i32 %sub280.3, !2038, !DIExpression(), !2282)
  %cond.i.i614.3 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.3, i32 %sub280.3), !dbg !2284
    #dbg_value(i32 %cond.i.i614.3, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i.i614.3, !2042, !DIExpression(), !2285)
    #dbg_value(i32 %add279.3, !2045, !DIExpression(), !2285)
  %cond.i4.i615.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.3, i32 %add279.3), !dbg !2287
    #dbg_value(i32 %cond.i4.i615.3, !2030, !DIExpression(), !2280)
    #dbg_value(i32 %cond.i4.i615.3, !1986, !DIExpression(), !2258)
  %cmp289.not.3 = icmp eq i32 %cond.i4.i615.3, 0, !dbg !2288
  br i1 %cmp289.not.3, label %if.end426, label %if.then291.3, !dbg !2290

if.then291.3:                                     ; preds = %if.then262.3
  %add293.3 = add nsw i32 %cond.i4.i615.3, %conv241.3, !dbg !2291
    #dbg_value(i32 %10, !2293, !DIExpression(), !2297)
    #dbg_value(i32 %add293.3, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %add293.3, !2033, !DIExpression(), !2299)
    #dbg_value(i32 0, !2038, !DIExpression(), !2299)
  %cond.i.i616.3 = tail call noundef i32 @llvm.smax.i32(i32 %add293.3, i32 0), !dbg !2301
    #dbg_value(i32 %cond.i.i616.3, !2296, !DIExpression(), !2297)
    #dbg_value(i32 %cond.i.i616.3, !2042, !DIExpression(), !2302)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2302)
  %cond.i4.i617.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.3, i32 %10), !dbg !2304
    #dbg_value(i32 %cond.i4.i617.3, !2296, !DIExpression(), !2297)
  %conv295.3 = trunc i32 %cond.i4.i617.3 to i16, !dbg !2305
  store i16 %conv295.3, ptr %add.ptr238.3, align 2, !dbg !2306
  %sub297.3 = sub nsw i32 %conv240.3, %cond.i4.i615.3, !dbg !2307
    #dbg_value(i32 %10, !2293, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.3, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %sub297.3, !2033, !DIExpression(), !2310)
    #dbg_value(i32 0, !2038, !DIExpression(), !2310)
  %cond.i.i618.3 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.3, i32 0), !dbg !2312
    #dbg_value(i32 %cond.i.i618.3, !2296, !DIExpression(), !2308)
    #dbg_value(i32 %cond.i.i618.3, !2042, !DIExpression(), !2313)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2313)
  %cond.i4.i619.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.3, i32 %10), !dbg !2315
    #dbg_value(i32 %cond.i4.i619.3, !2296, !DIExpression(), !2308)
  %conv299.3 = trunc i32 %cond.i4.i619.3 to i16, !dbg !2316
  store i16 %conv299.3, ptr %add.ptr239.3, align 2, !dbg !2317
  br label %if.end426, !dbg !2318

for.body310:                                      ; preds = %for.cond307.preheader, %for.inc419
  %cur_img.3643 = phi ptr [ %cur_img.0647, %for.cond307.preheader ], [ %incdec.ptr311, %for.inc419 ]
  %i226.1642 = phi i32 [ 0, %for.cond307.preheader ], [ %inc420, %for.inc419 ]
    #dbg_value(ptr %cur_img.3643, !1931, !DIExpression(), !2068)
    #dbg_value(i32 %i226.1642, !1966, !DIExpression(), !2223)
  %incdec.ptr311 = getelementptr inbounds i8, ptr %cur_img.3643, i64 8, !dbg !2319
    #dbg_value(ptr %incdec.ptr311, !1931, !DIExpression(), !2068)
  %52 = load ptr, ptr %cur_img.3643, align 8, !dbg !2320
  %add.ptr313 = getelementptr inbounds i16, ptr %52, i64 %idx.ext, !dbg !2321
    #dbg_value(ptr %add.ptr313, !1967, !DIExpression(), !2223)
  %add.ptr314 = getelementptr inbounds i8, ptr %add.ptr313, i64 2, !dbg !2322
    #dbg_value(ptr %add.ptr314, !1968, !DIExpression(), !2223)
  %53 = load i16, ptr %add.ptr314, align 2, !dbg !2323
  %conv315 = zext i16 %53 to i32, !dbg !2323
  %54 = load i16, ptr %add.ptr313, align 2, !dbg !2324
  %conv316 = zext i16 %54 to i32, !dbg !2324
  %sub317 = sub nsw i32 %conv315, %conv316, !dbg !2325
    #dbg_value(i32 %sub317, !1969, !DIExpression(), !2223)
    #dbg_value(i32 %sub317, !80, !DIExpression(), !2326)
    #dbg_value(i32 %sub317, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2326)
  %sub.i620 = tail call i32 @llvm.abs.i32(i32 %sub317, i1 true), !dbg !2328
  %cmp319 = icmp slt i32 %sub.i620, %mul, !dbg !2329
  br i1 %cmp319, label %if.then321, label %for.inc419, !dbg !2330

if.then321:                                       ; preds = %for.body310
  %add.ptr323 = getelementptr inbounds i8, ptr %add.ptr313, i64 4, !dbg !2331
    #dbg_value(ptr %add.ptr323, !1987, !DIExpression(), !2332)
  %add.ptr325 = getelementptr inbounds i8, ptr %add.ptr313, i64 -2, !dbg !2333
    #dbg_value(ptr %add.ptr325, !1994, !DIExpression(), !2332)
  %55 = load i16, ptr %add.ptr323, align 2, !dbg !2334
  %conv327 = zext i16 %55 to i32, !dbg !2334
  %sub328 = sub nsw i32 %conv315, %conv327, !dbg !2335
    #dbg_value(i32 %sub328, !80, !DIExpression(), !2336)
    #dbg_value(i32 %sub328, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2336)
  %sub.i621 = tail call i32 @llvm.abs.i32(i32 %sub328, i1 true), !dbg !2338
  %cmp330 = icmp slt i32 %sub.i621, %mul35, !dbg !2339
  br i1 %cmp330, label %land.lhs.true332, label %for.inc419, !dbg !2340

land.lhs.true332:                                 ; preds = %if.then321
  %56 = load i16, ptr %add.ptr325, align 2, !dbg !2341
  %conv334 = zext i16 %56 to i32, !dbg !2341
  %sub335 = sub nsw i32 %conv316, %conv334, !dbg !2342
    #dbg_value(i32 %sub335, !80, !DIExpression(), !2343)
    #dbg_value(i32 %sub335, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2343)
  %sub.i622 = tail call i32 @llvm.abs.i32(i32 %sub335, i1 true), !dbg !2345
  %cmp337 = icmp ult i32 %sub.i622, %mul35, !dbg !2346
  br i1 %cmp337, label %if.then339, label %for.inc419, !dbg !2347

if.then339:                                       ; preds = %land.lhs.true332
  %add343 = add nuw nsw i32 %conv315, 1, !dbg !2348
  %add344 = add nuw nsw i32 %add343, %conv316, !dbg !2349
  %shr345 = lshr i32 %add344, 1, !dbg !2350
    #dbg_value(i32 %shr345, !1995, !DIExpression(), !2351)
  %add.ptr347 = getelementptr inbounds i8, ptr %add.ptr313, i64 6, !dbg !2352
  %57 = load i16, ptr %add.ptr347, align 2, !dbg !2353
    #dbg_value(i16 %57, !1998, !DIExpression(), !2351)
  %add.ptr349 = getelementptr inbounds i8, ptr %add.ptr313, i64 -4, !dbg !2354
  %58 = load i16, ptr %add.ptr349, align 2, !dbg !2355
    #dbg_value(i16 %58, !1999, !DIExpression(), !2351)
  %conv352 = zext i16 %57 to i32, !dbg !2356
  %sub353 = sub nsw i32 %conv315, %conv352, !dbg !2357
    #dbg_value(i32 %sub353, !80, !DIExpression(), !2358)
    #dbg_value(i32 %sub353, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2358)
  %sub.i623 = tail call i32 @llvm.abs.i32(i32 %sub353, i1 true), !dbg !2360
  %cmp355 = icmp ult i32 %sub.i623, %mul35, !dbg !2361
  %conv356 = zext i1 %cmp355 to i32, !dbg !2361
    #dbg_value(i32 %conv356, !2000, !DIExpression(), !2351)
  %conv359 = zext i16 %58 to i32, !dbg !2362
  %sub360 = sub nsw i32 %conv316, %conv359, !dbg !2363
    #dbg_value(i32 %sub360, !80, !DIExpression(), !2364)
    #dbg_value(i32 %sub360, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2364)
  %sub.i624 = tail call i32 @llvm.abs.i32(i32 %sub360, i1 true), !dbg !2366
  %cmp362 = icmp ult i32 %sub.i624, %mul35, !dbg !2367
  %conv363 = zext i1 %cmp362 to i32, !dbg !2367
    #dbg_value(i32 %conv363, !2001, !DIExpression(), !2351)
  %add365 = add i32 %mul225, %conv356, !dbg !2368
  %add366 = add i32 %add365, %conv363, !dbg !2369
    #dbg_value(i32 %add366, !2002, !DIExpression(), !2351)
  %sub368 = sub nsw i32 0, %add366, !dbg !2370
  %shl369 = shl nsw i32 %sub317, 2, !dbg !2371
  %sub372 = add nsw i32 %shl369, 4, !dbg !2372
  %add373 = sub nsw i32 %sub372, %conv327, !dbg !2373
  %add374 = add nsw i32 %add373, %conv334, !dbg !2374
  %shr375 = ashr i32 %add374, 3, !dbg !2375
    #dbg_value(i32 %sub368, !2024, !DIExpression(), !2376)
    #dbg_value(i32 %add366, !2029, !DIExpression(), !2376)
    #dbg_value(i32 %shr375, !2030, !DIExpression(), !2376)
    #dbg_value(i32 %shr375, !2033, !DIExpression(), !2378)
    #dbg_value(i32 %sub368, !2038, !DIExpression(), !2378)
  %cond.i.i625 = tail call noundef i32 @llvm.smax.i32(i32 %shr375, i32 %sub368), !dbg !2380
    #dbg_value(i32 %cond.i.i625, !2030, !DIExpression(), !2376)
    #dbg_value(i32 %cond.i.i625, !2042, !DIExpression(), !2381)
    #dbg_value(i32 %add366, !2045, !DIExpression(), !2381)
  %cond.i4.i626 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i625, i32 %add366), !dbg !2383
    #dbg_value(i32 %cond.i4.i626, !2030, !DIExpression(), !2376)
    #dbg_value(i32 %cond.i4.i626, !2003, !DIExpression(), !2351)
  br i1 %cmp362, label %if.then378, label %if.end390, !dbg !2384

if.then378:                                       ; preds = %if.then339
  %59 = shl nuw nsw i32 %conv334, 1, !dbg !2385
  %add381 = sub nsw i32 %shr345, %59, !dbg !2385
  %sub384 = add nsw i32 %add381, %conv359, !dbg !2387
  %shr385 = ashr i32 %sub384, 1, !dbg !2388
    #dbg_value(i32 %sub379, !2024, !DIExpression(), !2389)
    #dbg_value(i32 %mul225, !2029, !DIExpression(), !2389)
    #dbg_value(i32 %shr385, !2030, !DIExpression(), !2389)
    #dbg_value(i32 %shr385, !2033, !DIExpression(), !2391)
    #dbg_value(i32 %sub379, !2038, !DIExpression(), !2391)
  %cond.i.i627 = tail call noundef i32 @llvm.smax.i32(i32 %shr385, i32 %sub379), !dbg !2393
    #dbg_value(i32 %cond.i.i627, !2030, !DIExpression(), !2389)
    #dbg_value(i32 %cond.i.i627, !2042, !DIExpression(), !2394)
    #dbg_value(i32 %mul225, !2045, !DIExpression(), !2394)
  %cond.i4.i628 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i627, i32 %mul225), !dbg !2396
    #dbg_value(i32 %cond.i4.i628, !2030, !DIExpression(), !2389)
  %60 = trunc i32 %cond.i4.i628 to i16, !dbg !2397
  %conv389 = add i16 %56, %60, !dbg !2397
  store i16 %conv389, ptr %add.ptr325, align 2, !dbg !2397
  br label %if.end390, !dbg !2398

if.end390:                                        ; preds = %if.then378, %if.then339
  %cmp391.not = icmp eq i32 %cond.i4.i626, 0, !dbg !2399
  br i1 %cmp391.not, label %if.end402, label %if.then393, !dbg !2401

if.then393:                                       ; preds = %if.end390
  %add395 = add nsw i32 %cond.i4.i626, %conv316, !dbg !2402
    #dbg_value(i32 %10, !2293, !DIExpression(), !2404)
    #dbg_value(i32 %add395, !2296, !DIExpression(), !2404)
    #dbg_value(i32 %add395, !2033, !DIExpression(), !2406)
    #dbg_value(i32 0, !2038, !DIExpression(), !2406)
  %cond.i.i629 = tail call noundef i32 @llvm.smax.i32(i32 %add395, i32 0), !dbg !2408
    #dbg_value(i32 %cond.i.i629, !2296, !DIExpression(), !2404)
    #dbg_value(i32 %cond.i.i629, !2042, !DIExpression(), !2409)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2409)
  %cond.i4.i630 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i629, i32 %10), !dbg !2411
    #dbg_value(i32 %cond.i4.i630, !2296, !DIExpression(), !2404)
  %conv397 = trunc i32 %cond.i4.i630 to i16, !dbg !2412
  store i16 %conv397, ptr %add.ptr313, align 2, !dbg !2413
  %sub399 = sub nsw i32 %conv315, %cond.i4.i626, !dbg !2414
    #dbg_value(i32 %10, !2293, !DIExpression(), !2415)
    #dbg_value(i32 %sub399, !2296, !DIExpression(), !2415)
    #dbg_value(i32 %sub399, !2033, !DIExpression(), !2417)
    #dbg_value(i32 0, !2038, !DIExpression(), !2417)
  %cond.i.i631 = tail call noundef i32 @llvm.smax.i32(i32 %sub399, i32 0), !dbg !2419
    #dbg_value(i32 %cond.i.i631, !2296, !DIExpression(), !2415)
    #dbg_value(i32 %cond.i.i631, !2042, !DIExpression(), !2420)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2420)
  %cond.i4.i632 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i631, i32 %10), !dbg !2422
    #dbg_value(i32 %cond.i4.i632, !2296, !DIExpression(), !2415)
  %conv401 = trunc i32 %cond.i4.i632 to i16, !dbg !2423
  store i16 %conv401, ptr %add.ptr314, align 2, !dbg !2424
  br label %if.end402, !dbg !2425

if.end402:                                        ; preds = %if.then393, %if.end390
  br i1 %cmp355, label %if.then404, label %for.inc419, !dbg !2426

if.then404:                                       ; preds = %if.end402
  %add407 = add nuw nsw i32 %shr345, %conv352, !dbg !2427
  %61 = shl nuw nsw i32 %conv327, 1, !dbg !2429
  %sub410 = sub nsw i32 %add407, %61, !dbg !2429
  %shr411 = ashr i32 %sub410, 1, !dbg !2430
    #dbg_value(i32 %sub379, !2024, !DIExpression(), !2431)
    #dbg_value(i32 %mul225, !2029, !DIExpression(), !2431)
    #dbg_value(i32 %shr411, !2030, !DIExpression(), !2431)
    #dbg_value(i32 %shr411, !2033, !DIExpression(), !2433)
    #dbg_value(i32 %sub379, !2038, !DIExpression(), !2433)
  %cond.i.i633 = tail call noundef i32 @llvm.smax.i32(i32 %shr411, i32 %sub379), !dbg !2435
    #dbg_value(i32 %cond.i.i633, !2030, !DIExpression(), !2431)
    #dbg_value(i32 %cond.i.i633, !2042, !DIExpression(), !2436)
    #dbg_value(i32 %mul225, !2045, !DIExpression(), !2436)
  %cond.i4.i634 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i633, i32 %mul225), !dbg !2438
    #dbg_value(i32 %cond.i4.i634, !2030, !DIExpression(), !2431)
  %62 = trunc i32 %cond.i4.i634 to i16, !dbg !2439
  %conv415 = add i16 %55, %62, !dbg !2439
  store i16 %conv415, ptr %add.ptr323, align 2, !dbg !2439
  br label %for.inc419, !dbg !2440

for.inc419:                                       ; preds = %if.then321, %land.lhs.true332, %if.then404, %if.end402, %for.body310
  %inc420 = add nuw nsw i32 %i226.1642, 1, !dbg !2441
    #dbg_value(ptr %incdec.ptr311, !1931, !DIExpression(), !2068)
    #dbg_value(i32 %inc420, !1966, !DIExpression(), !2223)
  %exitcond653.not = icmp eq i32 %inc420, 4, !dbg !2442
  br i1 %exitcond653.not, label %if.end426, label %for.body310, !dbg !2238, !llvm.loop !2443

if.else423:                                       ; preds = %for.body
  %add.ptr424 = getelementptr inbounds i8, ptr %cur_img.0647, i64 32, !dbg !2445
    #dbg_value(ptr %add.ptr424, !1931, !DIExpression(), !2068)
  br label %if.end426

if.end426:                                        ; preds = %if.end216, %for.inc419, %for.inc303.2, %if.then246.3, %land.lhs.true255.3, %if.then262.3, %if.then291.3, %if.else423
  %cur_img.5 = phi ptr [ %add.ptr424, %if.else423 ], [ %incdec.ptr236.3, %if.then291.3 ], [ %incdec.ptr236.3, %if.then262.3 ], [ %incdec.ptr236.3, %land.lhs.true255.3 ], [ %incdec.ptr236.3, %if.then246.3 ], [ %incdec.ptr236.3, %for.inc303.2 ], [ %incdec.ptr311, %for.inc419 ], [ %incdec.ptr, %if.end216 ], !dbg !2068
    #dbg_value(ptr %cur_img.5, !1931, !DIExpression(), !2068)
  %add.ptr427 = getelementptr inbounds i8, ptr %Strength.addr.0648, i64 4, !dbg !2447
    #dbg_value(ptr %add.ptr427, !1911, !DIExpression(), !2004)
  %add429 = add nuw nsw i32 %pel.0646, 4, !dbg !2448
    #dbg_value(i32 %add429, !1932, !DIExpression(), !2068)
  %cmp48 = icmp ult i32 %pel.0646, 12, !dbg !2449
  br i1 %cmp48, label %for.body, label %if.end432, !dbg !2074, !llvm.loop !2450

if.end432:                                        ; preds = %if.end426, %if.then, %lor.lhs.false
  ret void, !dbg !2452
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaHor(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #2 !dbg !2453 {
entry:
    #dbg_value(i32 %pl, !2455, !DIExpression(), !2553)
    #dbg_value(ptr %Img, !2456, !DIExpression(), !2553)
    #dbg_value(ptr %Strength, !2457, !DIExpression(), !2553)
    #dbg_value(ptr %MbQ, !2458, !DIExpression(), !2553)
    #dbg_value(i32 %edge, !2459, !DIExpression(), !2553)
    #dbg_value(ptr %p, !2460, !DIExpression(), !2553)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !2554
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !2554
    #dbg_value(ptr %0, !2461, !DIExpression(), !2553)
  %cmp = icmp slt i32 %edge, 16, !dbg !2555
  %sub = add nsw i32 %edge, -1, !dbg !2556
  %cond = select i1 %cmp, i32 %sub, i32 0, !dbg !2556
    #dbg_value(i32 %cond, !2462, !DIExpression(), !2553)
    #dbg_value(ptr %MbQ, !1367, !DIExpression(), !2557)
    #dbg_value(i32 0, !1372, !DIExpression(), !2557)
    #dbg_value(i32 %cond, !1373, !DIExpression(), !2557)
  %cmp1.i = icmp slt i32 %cond, 0, !dbg !2559
  br i1 %cmp1.i, label %get_non_aff_neighbor_luma.exit, label %if.then, !dbg !2560

get_non_aff_neighbor_luma.exit:                   ; preds = %entry
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136, !dbg !2561
  %1 = load ptr, ptr %mbup.i, align 8, !dbg !2561
    #dbg_value(ptr %1, !2463, !DIExpression(), !2553)
  %tobool.not = icmp eq ptr %1, null, !dbg !2562
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !dbg !2563

lor.lhs.false:                                    ; preds = %get_non_aff_neighbor_luma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !2564
  %2 = load i16, ptr %DFDisableIdc, align 8, !dbg !2564
  %cmp2 = icmp eq i16 %2, 0, !dbg !2565
  br i1 %cmp2, label %if.then, label %if.end462, !dbg !2566

if.then:                                          ; preds = %entry, %lor.lhs.false, %get_non_aff_neighbor_luma.exit
  %retval.0.i685 = phi ptr [ null, %lor.lhs.false ], [ %1, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %entry ]
  %tobool4.not = icmp eq i32 %pl, 0, !dbg !2567
  %cond11.in.v = select i1 %tobool4.not, i64 849044, i64 849048, !dbg !2567
  %cond11.in = getelementptr inbounds i8, ptr %0, i64 %cond11.in.v, !dbg !2567
  %cond11 = load i32, ptr %cond11.in, align 4, !dbg !2567
    #dbg_value(i32 %cond11, !2464, !DIExpression(), !2568)
  %qp = getelementptr inbounds i8, ptr %retval.0.i685, i64 68, !dbg !2569
  %qp22 = getelementptr inbounds i8, ptr %MbQ, i64 68, !dbg !2569
  %qpc = getelementptr inbounds i8, ptr %retval.0.i685, i64 72, !dbg !2569
  %sub14 = add i32 %pl, -1, !dbg !2569
  %idxprom = zext i32 %sub14 to i64, !dbg !2569
  %arrayidx15 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom, !dbg !2569
  %qpc16 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !2569
  %arrayidx19 = getelementptr inbounds [2 x i32], ptr %qpc16, i64 0, i64 %idxprom, !dbg !2569
  %qp22.sink = select i1 %tobool4.not, ptr %qp22, ptr %arrayidx19, !dbg !2569
  %.sink708.in = select i1 %tobool4.not, ptr %qp, ptr %arrayidx15, !dbg !2569
  %.sink708 = load i32, ptr %.sink708.in, align 4, !dbg !2570
  %3 = load i32, ptr %qp22.sink, align 4, !dbg !2570
  %add23 = add nsw i32 %3, %.sink708, !dbg !2570
  %cond27.in = add nsw i32 %add23, 1, !dbg !2570
  %cond27 = ashr i32 %cond27.in, 1, !dbg !2569
    #dbg_value(i32 %cond27, !2467, !DIExpression(), !2568)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !2571
  %4 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !2571
  %conv28 = sext i16 %4 to i32, !dbg !2572
  %add29 = add nsw i32 %cond27, %conv28, !dbg !2573
    #dbg_value(i32 0, !2024, !DIExpression(), !2574)
    #dbg_value(i32 51, !2029, !DIExpression(), !2574)
    #dbg_value(i32 %add29, !2030, !DIExpression(), !2574)
    #dbg_value(i32 %add29, !2033, !DIExpression(), !2576)
    #dbg_value(i32 0, !2038, !DIExpression(), !2576)
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add29, i32 0), !dbg !2578
    #dbg_value(i32 %cond.i.i, !2030, !DIExpression(), !2574)
    #dbg_value(i32 %cond.i.i, !2042, !DIExpression(), !2579)
    #dbg_value(i32 51, !2045, !DIExpression(), !2579)
  %5 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !2581
    #dbg_value(i32 %5, !2030, !DIExpression(), !2574)
    #dbg_value(i32 %5, !2468, !DIExpression(), !2568)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !2582
  %6 = load i16, ptr %DFBetaOffset, align 4, !dbg !2582
  %conv31 = sext i16 %6 to i32, !dbg !2583
  %add32 = add nsw i32 %cond27, %conv31, !dbg !2584
    #dbg_value(i32 0, !2024, !DIExpression(), !2585)
    #dbg_value(i32 51, !2029, !DIExpression(), !2585)
    #dbg_value(i32 %add32, !2030, !DIExpression(), !2585)
    #dbg_value(i32 %add32, !2033, !DIExpression(), !2587)
    #dbg_value(i32 0, !2038, !DIExpression(), !2587)
  %cond.i.i650 = tail call noundef i32 @llvm.smax.i32(i32 %add32, i32 0), !dbg !2589
    #dbg_value(i32 %cond.i.i650, !2030, !DIExpression(), !2585)
    #dbg_value(i32 %cond.i.i650, !2042, !DIExpression(), !2590)
    #dbg_value(i32 51, !2045, !DIExpression(), !2590)
  %7 = tail call i32 @llvm.umin.i32(i32 %cond.i.i650, i32 51), !dbg !2592
    #dbg_value(i32 %7, !2030, !DIExpression(), !2585)
    #dbg_value(i32 %7, !2469, !DIExpression(), !2568)
  %idxprom34 = zext nneg i32 %5 to i64, !dbg !2593
  %arrayidx35 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom34, !dbg !2593
  %8 = load i8, ptr %arrayidx35, align 1, !dbg !2593
  %conv36 = zext i8 %8 to i32, !dbg !2593
  %mul = mul nsw i32 %cond11, %conv36, !dbg !2594
    #dbg_value(i32 %mul, !2470, !DIExpression(), !2568)
  %idxprom37 = zext nneg i32 %7 to i64, !dbg !2595
  %arrayidx38 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom37, !dbg !2595
  %9 = load i8, ptr %arrayidx38, align 1, !dbg !2595
  %conv39 = zext i8 %9 to i32, !dbg !2595
  %mul40 = mul nsw i32 %cond11, %conv39, !dbg !2596
    #dbg_value(i32 %mul40, !2471, !DIExpression(), !2568)
  %or = or i32 %mul40, %mul, !dbg !2597
  %cmp41.not = icmp eq i32 %or, 0, !dbg !2598
  br i1 %cmp41.not, label %if.end462, label %if.then43, !dbg !2599

if.then43:                                        ; preds = %if.then
  %arrayidx45 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom34, !dbg !2600
    #dbg_value(ptr %arrayidx45, !2472, !DIExpression(), !2601)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !2602
  %idxprom46 = zext i32 %pl to i64, !dbg !2603
  %arrayidx47 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom46, !dbg !2603
  %10 = load i32, ptr %arrayidx47, align 4, !dbg !2603
    #dbg_value(i32 %10, !2475, !DIExpression(), !2601)
  %iLumaStride = getelementptr inbounds i8, ptr %p, i64 356, !dbg !2604
  %11 = load i32, ptr %iLumaStride, align 4, !dbg !2604
    #dbg_value(i32 %11, !2476, !DIExpression(), !2601)
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i685, i64 48, !dbg !2605
  %12 = load i32, ptr %pix_y, align 8, !dbg !2605
  %and = and i32 %cond, 15, !dbg !2605
  %add48 = add nsw i32 %12, %and, !dbg !2605
  %idxprom49 = sext i32 %add48 to i64, !dbg !2606
  %arrayidx50 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom49, !dbg !2606
  %13 = load ptr, ptr %arrayidx50, align 8, !dbg !2606
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i685, i64 44, !dbg !2607
  %14 = load i32, ptr %pix_x, align 4, !dbg !2607
  %idxprom52 = sext i32 %14 to i64, !dbg !2606
  %arrayidx53 = getelementptr inbounds i16, ptr %13, i64 %idxprom52, !dbg !2606
    #dbg_value(ptr %arrayidx53, !2477, !DIExpression(), !2601)
  %idx.ext = sext i32 %11 to i64, !dbg !2608
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx53, i64 %idx.ext, !dbg !2608
    #dbg_value(ptr %add.ptr, !2478, !DIExpression(), !2601)
    #dbg_value(i32 0, !2479, !DIExpression(), !2601)
    #dbg_value(ptr %Strength, !2457, !DIExpression(), !2553)
    #dbg_value(ptr %arrayidx53, !2477, !DIExpression(), !2601)
  %mul60 = shl nsw i32 %11, 1
  %mul61 = mul nsw i32 %11, 3
  %idx.neg = sub nsw i64 0, %idx.ext
  %shr95 = lshr i32 %mul, 2
  %add96 = add nuw nsw i32 %shr95, 2
  %idx.ext100 = sext i32 %mul60 to i64
  %idx.neg101 = sub nsw i64 0, %idx.ext100
  %idx.ext115 = sext i32 %mul61 to i64
  %idx.neg116 = sub nsw i64 0, %idx.ext115
  br label %for.body, !dbg !2609

for.body:                                         ; preds = %if.then43, %if.end456
  %Strength.addr.0700 = phi ptr [ %Strength, %if.then43 ], [ %add.ptr457, %if.end456 ]
  %imgP.0699 = phi ptr [ %arrayidx53, %if.then43 ], [ %imgP.5, %if.end456 ]
  %imgQ.0698 = phi ptr [ %add.ptr, %if.then43 ], [ %imgQ.5, %if.end456 ]
  %pel.0697 = phi i32 [ 0, %if.then43 ], [ %add459, %if.end456 ]
    #dbg_value(ptr %Strength.addr.0700, !2457, !DIExpression(), !2553)
    #dbg_value(ptr %imgP.0699, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.0698, !2478, !DIExpression(), !2601)
    #dbg_value(i32 %pel.0697, !2479, !DIExpression(), !2601)
  %15 = load i8, ptr %Strength.addr.0700, align 1, !dbg !2610
  switch i8 %15, label %if.then243 [
    i8 4, label %for.body65
    i8 0, label %if.else452
  ], !dbg !2611

for.body65:                                       ; preds = %for.body, %if.end238
  %imgP.1690 = phi ptr [ %incdec.ptr, %if.end238 ], [ %imgP.0699, %for.body ]
  %imgQ.1689 = phi ptr [ %incdec.ptr66, %if.end238 ], [ %imgQ.0698, %for.body ]
  %pixel.0688 = phi i32 [ %inc, %if.end238 ], [ 0, %for.body ]
    #dbg_value(ptr %imgP.1690, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.1689, !2478, !DIExpression(), !2601)
    #dbg_value(i32 %pixel.0688, !2480, !DIExpression(), !2612)
  %incdec.ptr = getelementptr inbounds i8, ptr %imgP.1690, i64 2, !dbg !2613
    #dbg_value(ptr %incdec.ptr, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgP.1690, !2488, !DIExpression(), !2614)
  %incdec.ptr66 = getelementptr inbounds i8, ptr %imgQ.1689, i64 2, !dbg !2615
    #dbg_value(ptr %incdec.ptr66, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.1689, !2492, !DIExpression(), !2614)
  %16 = load i16, ptr %imgP.1690, align 2, !dbg !2616
    #dbg_value(i16 %16, !2493, !DIExpression(), !2614)
  %17 = load i16, ptr %imgQ.1689, align 2, !dbg !2617
    #dbg_value(i16 %17, !2494, !DIExpression(), !2614)
  %conv67 = zext i16 %17 to i32, !dbg !2618
  %conv68 = zext i16 %16 to i32, !dbg !2619
  %sub69 = sub nsw i32 %conv67, %conv68, !dbg !2620
    #dbg_value(i32 %sub69, !80, !DIExpression(), !2621)
    #dbg_value(i32 %sub69, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2621)
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub69, i1 true), !dbg !2623
  %cmp71 = icmp slt i32 %sub.i, %mul, !dbg !2624
  br i1 %cmp71, label %if.then73, label %if.end238, !dbg !2625

if.then73:                                        ; preds = %for.body65
  %add.ptr75 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg, !dbg !2626
    #dbg_value(i16 poison, !2495, !DIExpression(), !2627)
  %add.ptr77 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext, !dbg !2628
  %18 = load i16, ptr %add.ptr77, align 2, !dbg !2629
    #dbg_value(i16 %18, !2498, !DIExpression(), !2627)
  %conv79 = zext i16 %18 to i32, !dbg !2630
  %sub80 = sub nsw i32 %conv67, %conv79, !dbg !2631
    #dbg_value(i32 %sub80, !80, !DIExpression(), !2632)
    #dbg_value(i32 %sub80, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2632)
  %sub.i652 = tail call i32 @llvm.abs.i32(i32 %sub80, i1 true), !dbg !2634
  %cmp82 = icmp slt i32 %sub.i652, %mul40, !dbg !2635
  br i1 %cmp82, label %land.lhs.true, label %if.end238, !dbg !2636

land.lhs.true:                                    ; preds = %if.then73
  %19 = load i16, ptr %add.ptr75, align 2, !dbg !2637
    #dbg_value(i16 %19, !2495, !DIExpression(), !2627)
  %conv85 = zext i16 %19 to i32, !dbg !2638
  %sub86 = sub nsw i32 %conv68, %conv85, !dbg !2639
    #dbg_value(i32 %sub86, !80, !DIExpression(), !2640)
    #dbg_value(i32 %sub86, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2640)
  %sub.i653 = tail call i32 @llvm.abs.i32(i32 %sub86, i1 true), !dbg !2642
  %cmp88 = icmp ult i32 %sub.i653, %mul40, !dbg !2643
  br i1 %cmp88, label %if.then90, label %if.end238, !dbg !2644

if.then90:                                        ; preds = %land.lhs.true
    #dbg_value(i32 %sub69, !80, !DIExpression(), !2645)
    #dbg_value(i32 %sub69, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2645)
  %cmp97 = icmp ult i32 %sub.i, %add96, !dbg !2647
  br i1 %cmp97, label %if.then99, label %if.else217, !dbg !2648

if.then99:                                        ; preds = %if.then90
  %add.ptr102 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg101, !dbg !2649
  %20 = load i16, ptr %add.ptr102, align 2, !dbg !2650
    #dbg_value(i16 %20, !2499, !DIExpression(), !2651)
  %add.ptr104 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext100, !dbg !2652
  %21 = load i16, ptr %add.ptr104, align 2, !dbg !2653
    #dbg_value(i16 %21, !2504, !DIExpression(), !2651)
  %add107 = add nuw nsw i32 %conv67, %conv68, !dbg !2654
    #dbg_value(i32 %add107, !2505, !DIExpression(), !2651)
  %conv109 = zext i16 %20 to i32, !dbg !2655
  %sub110 = sub nsw i32 %conv68, %conv109, !dbg !2656
    #dbg_value(i32 %sub110, !80, !DIExpression(), !2657)
    #dbg_value(i32 %sub110, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2657)
  %sub.i655 = tail call i32 @llvm.abs.i32(i32 %sub110, i1 true), !dbg !2659
  %cmp112 = icmp ult i32 %sub.i655, %mul40, !dbg !2660
  br i1 %cmp112, label %if.then114, label %if.else, !dbg !2661

if.then114:                                       ; preds = %if.then99
  %add.ptr117 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg116, !dbg !2662
  %22 = load i16, ptr %add.ptr117, align 2, !dbg !2663
    #dbg_value(i16 %22, !2506, !DIExpression(), !2664)
  %add120 = add nuw nsw i32 %add107, %conv85, !dbg !2665
  %shl = shl nuw nsw i32 %add120, 1, !dbg !2666
  %add121 = add nuw nsw i32 %conv79, 4, !dbg !2667
  %add123 = add nuw nsw i32 %add121, %shl, !dbg !2668
  %add124 = add nuw nsw i32 %add123, %conv109, !dbg !2669
  %shr125 = lshr i32 %add124, 3, !dbg !2670
  %conv126 = trunc nuw i32 %shr125 to i16, !dbg !2671
  store i16 %conv126, ptr %imgP.1690, align 2, !dbg !2672
  %add129 = add nuw nsw i32 %add107, 2, !dbg !2673
  %add130 = add nuw nsw i32 %add129, %conv85, !dbg !2674
  %add131 = add nuw nsw i32 %add130, %conv109, !dbg !2675
  %shr132 = lshr i32 %add131, 2, !dbg !2676
  %conv133 = trunc nuw i32 %shr132 to i16, !dbg !2677
    #dbg_value(ptr %add.ptr75, !2488, !DIExpression(), !2614)
  store i16 %conv133, ptr %add.ptr75, align 2, !dbg !2678
  %conv137 = zext i16 %22 to i32, !dbg !2679
  %add139 = add nuw nsw i32 %conv137, %conv109, !dbg !2680
  %shl140 = shl nuw nsw i32 %add139, 1, !dbg !2681
  %add142 = add nuw nsw i32 %add107, 4, !dbg !2682
  %add144 = add nuw nsw i32 %add142, %conv85, !dbg !2683
  %add145 = add nuw nsw i32 %add144, %conv109, !dbg !2684
  %add146 = add nuw nsw i32 %add145, %shl140, !dbg !2685
  %shr147 = lshr i32 %add146, 3, !dbg !2686
  %conv148 = trunc nuw i32 %shr147 to i16, !dbg !2687
  %add.ptr151 = getelementptr inbounds i16, ptr %add.ptr75, i64 %idx.neg, !dbg !2688
  store i16 %conv148, ptr %add.ptr151, align 2, !dbg !2689
  br label %if.end, !dbg !2690

if.else:                                          ; preds = %if.then99
  %shl153 = shl nuw nsw i32 %conv85, 1, !dbg !2691
  %add155 = add nuw nsw i32 %conv68, 2, !dbg !2693
  %add157 = add nuw nsw i32 %add155, %conv79, !dbg !2694
  %add158 = add nuw nsw i32 %add157, %shl153, !dbg !2695
  %shr159 = lshr i32 %add158, 2, !dbg !2696
  %conv160 = trunc nuw i32 %shr159 to i16, !dbg !2697
  store i16 %conv160, ptr %imgP.1690, align 2, !dbg !2698
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then114
  %conv162 = zext i16 %21 to i32, !dbg !2699
  %sub163 = sub nsw i32 %conv67, %conv162, !dbg !2700
    #dbg_value(i32 %sub163, !80, !DIExpression(), !2701)
    #dbg_value(i32 %sub163, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2701)
  %sub.i656 = tail call i32 @llvm.abs.i32(i32 %sub163, i1 true), !dbg !2703
  %cmp165 = icmp ult i32 %sub.i656, %mul40, !dbg !2704
  br i1 %cmp165, label %if.then167, label %if.else206, !dbg !2705

if.then167:                                       ; preds = %if.end
  %add.ptr169 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext115, !dbg !2706
  %23 = load i16, ptr %add.ptr169, align 2, !dbg !2707
    #dbg_value(i16 %23, !2509, !DIExpression(), !2708)
  %add172 = add nuw nsw i32 %add107, %conv79, !dbg !2709
  %shl173 = shl nuw nsw i32 %add172, 1, !dbg !2710
  %add174 = add nuw nsw i32 %shl173, 4, !dbg !2711
  %add176 = add nuw nsw i32 %add174, %conv85, !dbg !2712
  %add177 = add nuw nsw i32 %add176, %conv162, !dbg !2713
  %shr178 = lshr i32 %add177, 3, !dbg !2714
  %conv179 = trunc nuw i32 %shr178 to i16, !dbg !2715
  store i16 %conv179, ptr %imgQ.1689, align 2, !dbg !2716
  %add182 = add nuw nsw i32 %conv68, 2, !dbg !2717
  %add184 = add nuw nsw i32 %add182, %conv67, !dbg !2718
  %add186 = add nuw nsw i32 %add184, %conv79, !dbg !2719
  %add187 = add nuw nsw i32 %add186, %conv162, !dbg !2720
  %shr188 = lshr i32 %add187, 2, !dbg !2721
  %conv189 = trunc nuw i32 %shr188 to i16, !dbg !2722
    #dbg_value(ptr %add.ptr77, !2492, !DIExpression(), !2614)
  store i16 %conv189, ptr %add.ptr77, align 2, !dbg !2723
  %conv192 = zext i16 %23 to i32, !dbg !2724
  %add194 = add nuw nsw i32 %conv192, %conv162, !dbg !2725
  %shl195 = shl nuw nsw i32 %add194, 1, !dbg !2726
  %add197 = add nuw nsw i32 %add107, 4, !dbg !2727
  %add199 = add nuw nsw i32 %add197, %conv79, !dbg !2728
  %add200 = add nuw nsw i32 %add199, %conv162, !dbg !2729
  %add201 = add nuw nsw i32 %add200, %shl195, !dbg !2730
  %shr202 = lshr i32 %add201, 3, !dbg !2731
  %conv203 = trunc nuw i32 %shr202 to i16, !dbg !2732
  %add.ptr205 = getelementptr inbounds i16, ptr %add.ptr77, i64 %idx.ext, !dbg !2733
  store i16 %conv203, ptr %add.ptr205, align 2, !dbg !2734
  br label %if.end238, !dbg !2735

if.else206:                                       ; preds = %if.end
  %shl208 = shl nuw nsw i32 %conv79, 1, !dbg !2736
  %add210 = add nuw nsw i32 %conv67, 2, !dbg !2738
  %add212 = add nuw nsw i32 %add210, %shl208, !dbg !2739
  %add213 = add nuw nsw i32 %add212, %conv85, !dbg !2740
  %shr214 = lshr i32 %add213, 2, !dbg !2741
  %conv215 = trunc nuw i32 %shr214 to i16, !dbg !2742
  store i16 %conv215, ptr %imgQ.1689, align 2, !dbg !2743
  br label %if.end238

if.else217:                                       ; preds = %if.then90
  %shl219 = shl nuw nsw i32 %conv85, 1, !dbg !2744
  %add221 = add nuw nsw i32 %conv68, 2, !dbg !2746
  %add223 = add nuw nsw i32 %add221, %conv79, !dbg !2747
  %add224 = add nuw nsw i32 %add223, %shl219, !dbg !2748
  %shr225 = lshr i32 %add224, 2, !dbg !2749
  %conv226 = trunc nuw i32 %shr225 to i16, !dbg !2750
  store i16 %conv226, ptr %imgP.1690, align 2, !dbg !2751
  %shl228 = shl nuw nsw i32 %conv79, 1, !dbg !2752
  %add230 = add nuw nsw i32 %conv67, 2, !dbg !2753
  %add232 = add nuw nsw i32 %add230, %shl228, !dbg !2754
  %add233 = add nuw nsw i32 %add232, %conv85, !dbg !2755
  %shr234 = lshr i32 %add233, 2, !dbg !2756
  %conv235 = trunc nuw i32 %shr234 to i16, !dbg !2757
  store i16 %conv235, ptr %imgQ.1689, align 2, !dbg !2758
  br label %if.end238

if.end238:                                        ; preds = %if.then73, %land.lhs.true, %if.else217, %if.else206, %if.then167, %for.body65
  %inc = add nuw nsw i32 %pixel.0688, 1, !dbg !2759
    #dbg_value(ptr %incdec.ptr, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr66, !2478, !DIExpression(), !2601)
    #dbg_value(i32 %inc, !2480, !DIExpression(), !2612)
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !2760
  br i1 %exitcond.not, label %if.end456, label %for.body65, !dbg !2761, !llvm.loop !2762

if.then243:                                       ; preds = %for.body
  %idxprom244 = zext i8 %15 to i64, !dbg !2764
  %arrayidx245 = getelementptr inbounds i8, ptr %arrayidx45, i64 %idxprom244, !dbg !2764
  %24 = load i8, ptr %arrayidx245, align 1, !dbg !2764
  %conv246 = zext i8 %24 to i32, !dbg !2764
  %mul247 = mul nsw i32 %cond11, %conv246, !dbg !2765
    #dbg_value(i32 %mul247, !2512, !DIExpression(), !2766)
  %cmp250 = icmp eq i32 %mul247, 0, !dbg !2767
    #dbg_value(i32 0, !2515, !DIExpression(), !2766)
  br i1 %cmp250, label %for.body256.preheader, label %for.cond332.preheader, !dbg !2768

for.body256.preheader:                            ; preds = %if.then243
    #dbg_value(ptr %imgP.0699, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.0698, !2478, !DIExpression(), !2601)
    #dbg_value(i32 0, !2515, !DIExpression(), !2766)
  %incdec.ptr257 = getelementptr inbounds i8, ptr %imgP.0699, i64 2, !dbg !2769
    #dbg_value(ptr %incdec.ptr257, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgP.0699, !2516, !DIExpression(), !2766)
  %incdec.ptr258 = getelementptr inbounds i8, ptr %imgQ.0698, i64 2, !dbg !2770
    #dbg_value(ptr %incdec.ptr258, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.0698, !2517, !DIExpression(), !2766)
  %25 = load i16, ptr %imgQ.0698, align 2, !dbg !2771
  %conv259 = zext i16 %25 to i32, !dbg !2771
  %26 = load i16, ptr %imgP.0699, align 2, !dbg !2772
  %conv260 = zext i16 %26 to i32, !dbg !2772
  %sub261 = sub nsw i32 %conv259, %conv260, !dbg !2773
    #dbg_value(i32 %sub261, !2518, !DIExpression(), !2766)
    #dbg_value(i32 %sub261, !80, !DIExpression(), !2774)
    #dbg_value(i32 %sub261, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2774)
  %sub.i657 = tail call i32 @llvm.abs.i32(i32 %sub261, i1 true), !dbg !2776
  %cmp263 = icmp slt i32 %sub.i657, %mul, !dbg !2777
  br i1 %cmp263, label %if.then265, label %for.inc328, !dbg !2778

for.cond332.preheader:                            ; preds = %if.then243
    #dbg_value(ptr %imgP.0699, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.0698, !2478, !DIExpression(), !2601)
    #dbg_value(i32 0, !2515, !DIExpression(), !2766)
  %sub408 = sub nsw i32 0, %mul247
  br label %for.body335, !dbg !2779

if.then265:                                       ; preds = %for.body256.preheader
  %add.ptr267 = getelementptr inbounds i16, ptr %imgQ.0698, i64 %idx.ext, !dbg !2780
    #dbg_value(ptr %add.ptr267, !2519, !DIExpression(), !2781)
  %add.ptr270 = getelementptr inbounds i16, ptr %imgP.0699, i64 %idx.neg, !dbg !2782
    #dbg_value(ptr %add.ptr270, !2527, !DIExpression(), !2781)
  %27 = load i16, ptr %add.ptr267, align 2, !dbg !2783
  %conv272 = zext i16 %27 to i32, !dbg !2783
  %sub273 = sub nsw i32 %conv259, %conv272, !dbg !2784
    #dbg_value(i32 %sub273, !80, !DIExpression(), !2785)
    #dbg_value(i32 %sub273, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2785)
  %sub.i658 = tail call i32 @llvm.abs.i32(i32 %sub273, i1 true), !dbg !2787
  %cmp275 = icmp slt i32 %sub.i658, %mul40, !dbg !2788
  br i1 %cmp275, label %land.lhs.true277, label %for.inc328, !dbg !2789

land.lhs.true277:                                 ; preds = %if.then265
  %28 = load i16, ptr %add.ptr270, align 2, !dbg !2790
  %conv279 = zext i16 %28 to i32, !dbg !2790
  %sub280 = sub nsw i32 %conv260, %conv279, !dbg !2791
    #dbg_value(i32 %sub280, !80, !DIExpression(), !2792)
    #dbg_value(i32 %sub280, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2792)
  %sub.i659 = tail call i32 @llvm.abs.i32(i32 %sub280, i1 true), !dbg !2794
  %cmp282 = icmp ult i32 %sub.i659, %mul40, !dbg !2795
  br i1 %cmp282, label %if.then284, label %for.inc328, !dbg !2796

if.then284:                                       ; preds = %land.lhs.true277
  %add.ptr287 = getelementptr inbounds i16, ptr %add.ptr267, i64 %idx.ext, !dbg !2797
  %29 = load i16, ptr %add.ptr287, align 2, !dbg !2798
    #dbg_value(i16 %29, !2528, !DIExpression(), !2799)
  %add.ptr291 = getelementptr inbounds i16, ptr %add.ptr270, i64 %idx.neg, !dbg !2800
  %30 = load i16, ptr %add.ptr291, align 2, !dbg !2801
    #dbg_value(i16 %30, !2531, !DIExpression(), !2799)
  %conv293 = zext i16 %29 to i32, !dbg !2802
  %sub294 = sub nsw i32 %conv259, %conv293, !dbg !2803
    #dbg_value(i32 %sub294, !80, !DIExpression(), !2804)
    #dbg_value(i32 %sub294, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2804)
  %sub.i660 = tail call i32 @llvm.abs.i32(i32 %sub294, i1 true), !dbg !2806
  %cmp296 = icmp ult i32 %sub.i660, %mul40, !dbg !2807
  %conv297 = zext i1 %cmp296 to i32, !dbg !2807
    #dbg_value(i32 %conv297, !2532, !DIExpression(), !2799)
  %conv299 = zext i16 %30 to i32, !dbg !2808
  %sub300 = sub nsw i32 %conv260, %conv299, !dbg !2809
    #dbg_value(i32 %sub300, !80, !DIExpression(), !2810)
    #dbg_value(i32 %sub300, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2810)
  %sub.i661 = tail call i32 @llvm.abs.i32(i32 %sub300, i1 true), !dbg !2812
  %cmp302 = icmp ult i32 %sub.i661, %mul40, !dbg !2813
  %conv303 = zext i1 %cmp302 to i32, !dbg !2813
    #dbg_value(i32 %conv303, !2533, !DIExpression(), !2799)
  %add304 = add nuw nsw i32 %conv303, %conv297, !dbg !2814
    #dbg_value(i32 %add304, !2534, !DIExpression(), !2799)
  %sub305 = sub nsw i32 0, %add304, !dbg !2815
  %shl306 = shl nsw i32 %sub261, 2, !dbg !2816
  %sub309 = add nsw i32 %shl306, 4, !dbg !2817
  %add310 = sub nsw i32 %sub309, %conv272, !dbg !2818
  %add311 = add nsw i32 %add310, %conv279, !dbg !2819
  %shr312 = ashr i32 %add311, 3, !dbg !2820
    #dbg_value(i32 %sub305, !2024, !DIExpression(), !2821)
    #dbg_value(i32 %add304, !2029, !DIExpression(), !2821)
    #dbg_value(i32 %shr312, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %shr312, !2033, !DIExpression(), !2823)
    #dbg_value(i32 %sub305, !2038, !DIExpression(), !2823)
  %cond.i.i662 = tail call noundef i32 @llvm.smax.i32(i32 %shr312, i32 %sub305), !dbg !2825
    #dbg_value(i32 %cond.i.i662, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i.i662, !2042, !DIExpression(), !2826)
    #dbg_value(i32 %add304, !2045, !DIExpression(), !2826)
  %cond.i4.i663 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662, i32 %add304), !dbg !2828
    #dbg_value(i32 %cond.i4.i663, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i4.i663, !2535, !DIExpression(), !2799)
  %cmp314.not = icmp eq i32 %cond.i4.i663, 0, !dbg !2829
  br i1 %cmp314.not, label %for.inc328, label %if.then316, !dbg !2831

if.then316:                                       ; preds = %if.then284
  %add318 = add nsw i32 %cond.i4.i663, %conv260, !dbg !2832
    #dbg_value(i32 %10, !2293, !DIExpression(), !2834)
    #dbg_value(i32 %add318, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %add318, !2033, !DIExpression(), !2836)
    #dbg_value(i32 0, !2038, !DIExpression(), !2836)
  %cond.i.i664 = tail call noundef i32 @llvm.smax.i32(i32 %add318, i32 0), !dbg !2838
    #dbg_value(i32 %cond.i.i664, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %cond.i.i664, !2042, !DIExpression(), !2839)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2839)
  %cond.i4.i665 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664, i32 %10), !dbg !2841
    #dbg_value(i32 %cond.i4.i665, !2296, !DIExpression(), !2834)
  %conv320 = trunc i32 %cond.i4.i665 to i16, !dbg !2842
  store i16 %conv320, ptr %imgP.0699, align 2, !dbg !2843
  %31 = load i16, ptr %imgQ.0698, align 2, !dbg !2844
  %conv321 = zext i16 %31 to i32, !dbg !2844
  %sub322 = sub nsw i32 %conv321, %cond.i4.i663, !dbg !2845
    #dbg_value(i32 %10, !2293, !DIExpression(), !2846)
    #dbg_value(i32 %sub322, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %sub322, !2033, !DIExpression(), !2848)
    #dbg_value(i32 0, !2038, !DIExpression(), !2848)
  %cond.i.i666 = tail call noundef i32 @llvm.smax.i32(i32 %sub322, i32 0), !dbg !2850
    #dbg_value(i32 %cond.i.i666, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %cond.i.i666, !2042, !DIExpression(), !2851)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2851)
  %cond.i4.i667 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666, i32 %10), !dbg !2853
    #dbg_value(i32 %cond.i4.i667, !2296, !DIExpression(), !2846)
  %conv324 = trunc i32 %cond.i4.i667 to i16, !dbg !2854
  store i16 %conv324, ptr %imgQ.0698, align 2, !dbg !2855
  br label %for.inc328, !dbg !2856

for.inc328:                                       ; preds = %if.then265, %land.lhs.true277, %if.then316, %if.then284, %for.body256.preheader
    #dbg_value(ptr %incdec.ptr257, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258, !2478, !DIExpression(), !2601)
    #dbg_value(i32 1, !2515, !DIExpression(), !2766)
  %incdec.ptr257.1 = getelementptr inbounds i8, ptr %imgP.0699, i64 4, !dbg !2769
    #dbg_value(ptr %incdec.ptr257.1, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr257, !2516, !DIExpression(), !2766)
  %incdec.ptr258.1 = getelementptr inbounds i8, ptr %imgQ.0698, i64 4, !dbg !2770
    #dbg_value(ptr %incdec.ptr258.1, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258, !2517, !DIExpression(), !2766)
  %32 = load i16, ptr %incdec.ptr258, align 2, !dbg !2771
  %conv259.1 = zext i16 %32 to i32, !dbg !2771
  %33 = load i16, ptr %incdec.ptr257, align 2, !dbg !2772
  %conv260.1 = zext i16 %33 to i32, !dbg !2772
  %sub261.1 = sub nsw i32 %conv259.1, %conv260.1, !dbg !2773
    #dbg_value(i32 %sub261.1, !2518, !DIExpression(), !2766)
    #dbg_value(i32 %sub261.1, !80, !DIExpression(), !2774)
    #dbg_value(i32 %sub261.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2774)
  %sub.i657.1 = tail call i32 @llvm.abs.i32(i32 %sub261.1, i1 true), !dbg !2776
  %cmp263.1 = icmp slt i32 %sub.i657.1, %mul, !dbg !2777
  br i1 %cmp263.1, label %if.then265.1, label %for.inc328.1, !dbg !2778

if.then265.1:                                     ; preds = %for.inc328
  %add.ptr267.1 = getelementptr inbounds i16, ptr %incdec.ptr258, i64 %idx.ext, !dbg !2780
    #dbg_value(ptr %add.ptr267.1, !2519, !DIExpression(), !2781)
  %add.ptr270.1 = getelementptr inbounds i16, ptr %incdec.ptr257, i64 %idx.neg, !dbg !2782
    #dbg_value(ptr %add.ptr270.1, !2527, !DIExpression(), !2781)
  %34 = load i16, ptr %add.ptr267.1, align 2, !dbg !2783
  %conv272.1 = zext i16 %34 to i32, !dbg !2783
  %sub273.1 = sub nsw i32 %conv259.1, %conv272.1, !dbg !2784
    #dbg_value(i32 %sub273.1, !80, !DIExpression(), !2785)
    #dbg_value(i32 %sub273.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2785)
  %sub.i658.1 = tail call i32 @llvm.abs.i32(i32 %sub273.1, i1 true), !dbg !2787
  %cmp275.1 = icmp slt i32 %sub.i658.1, %mul40, !dbg !2788
  br i1 %cmp275.1, label %land.lhs.true277.1, label %for.inc328.1, !dbg !2789

land.lhs.true277.1:                               ; preds = %if.then265.1
  %35 = load i16, ptr %add.ptr270.1, align 2, !dbg !2790
  %conv279.1 = zext i16 %35 to i32, !dbg !2790
  %sub280.1 = sub nsw i32 %conv260.1, %conv279.1, !dbg !2791
    #dbg_value(i32 %sub280.1, !80, !DIExpression(), !2792)
    #dbg_value(i32 %sub280.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2792)
  %sub.i659.1 = tail call i32 @llvm.abs.i32(i32 %sub280.1, i1 true), !dbg !2794
  %cmp282.1 = icmp ult i32 %sub.i659.1, %mul40, !dbg !2795
  br i1 %cmp282.1, label %if.then284.1, label %for.inc328.1, !dbg !2796

if.then284.1:                                     ; preds = %land.lhs.true277.1
  %add.ptr287.1 = getelementptr inbounds i16, ptr %add.ptr267.1, i64 %idx.ext, !dbg !2797
  %36 = load i16, ptr %add.ptr287.1, align 2, !dbg !2798
    #dbg_value(i16 %36, !2528, !DIExpression(), !2799)
  %add.ptr291.1 = getelementptr inbounds i16, ptr %add.ptr270.1, i64 %idx.neg, !dbg !2800
  %37 = load i16, ptr %add.ptr291.1, align 2, !dbg !2801
    #dbg_value(i16 %37, !2531, !DIExpression(), !2799)
  %conv293.1 = zext i16 %36 to i32, !dbg !2802
  %sub294.1 = sub nsw i32 %conv259.1, %conv293.1, !dbg !2803
    #dbg_value(i32 %sub294.1, !80, !DIExpression(), !2804)
    #dbg_value(i32 %sub294.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2804)
  %sub.i660.1 = tail call i32 @llvm.abs.i32(i32 %sub294.1, i1 true), !dbg !2806
  %cmp296.1 = icmp ult i32 %sub.i660.1, %mul40, !dbg !2807
  %conv297.1 = zext i1 %cmp296.1 to i32, !dbg !2807
    #dbg_value(i32 %conv297.1, !2532, !DIExpression(), !2799)
  %conv299.1 = zext i16 %37 to i32, !dbg !2808
  %sub300.1 = sub nsw i32 %conv260.1, %conv299.1, !dbg !2809
    #dbg_value(i32 %sub300.1, !80, !DIExpression(), !2810)
    #dbg_value(i32 %sub300.1, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2810)
  %sub.i661.1 = tail call i32 @llvm.abs.i32(i32 %sub300.1, i1 true), !dbg !2812
  %cmp302.1 = icmp ult i32 %sub.i661.1, %mul40, !dbg !2813
  %conv303.1 = zext i1 %cmp302.1 to i32, !dbg !2813
    #dbg_value(i32 %conv303.1, !2533, !DIExpression(), !2799)
  %add304.1 = add nuw nsw i32 %conv303.1, %conv297.1, !dbg !2814
    #dbg_value(i32 %add304.1, !2534, !DIExpression(), !2799)
  %sub305.1 = sub nsw i32 0, %add304.1, !dbg !2815
  %shl306.1 = shl nsw i32 %sub261.1, 2, !dbg !2816
  %sub309.1 = add nsw i32 %shl306.1, 4, !dbg !2817
  %add310.1 = sub nsw i32 %sub309.1, %conv272.1, !dbg !2818
  %add311.1 = add nsw i32 %add310.1, %conv279.1, !dbg !2819
  %shr312.1 = ashr i32 %add311.1, 3, !dbg !2820
    #dbg_value(i32 %sub305.1, !2024, !DIExpression(), !2821)
    #dbg_value(i32 %add304.1, !2029, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.1, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.1, !2033, !DIExpression(), !2823)
    #dbg_value(i32 %sub305.1, !2038, !DIExpression(), !2823)
  %cond.i.i662.1 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.1, i32 %sub305.1), !dbg !2825
    #dbg_value(i32 %cond.i.i662.1, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i.i662.1, !2042, !DIExpression(), !2826)
    #dbg_value(i32 %add304.1, !2045, !DIExpression(), !2826)
  %cond.i4.i663.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.1, i32 %add304.1), !dbg !2828
    #dbg_value(i32 %cond.i4.i663.1, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i4.i663.1, !2535, !DIExpression(), !2799)
  %cmp314.not.1 = icmp eq i32 %cond.i4.i663.1, 0, !dbg !2829
  br i1 %cmp314.not.1, label %for.inc328.1, label %if.then316.1, !dbg !2831

if.then316.1:                                     ; preds = %if.then284.1
  %add318.1 = add nsw i32 %cond.i4.i663.1, %conv260.1, !dbg !2832
    #dbg_value(i32 %10, !2293, !DIExpression(), !2834)
    #dbg_value(i32 %add318.1, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %add318.1, !2033, !DIExpression(), !2836)
    #dbg_value(i32 0, !2038, !DIExpression(), !2836)
  %cond.i.i664.1 = tail call noundef i32 @llvm.smax.i32(i32 %add318.1, i32 0), !dbg !2838
    #dbg_value(i32 %cond.i.i664.1, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %cond.i.i664.1, !2042, !DIExpression(), !2839)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2839)
  %cond.i4.i665.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.1, i32 %10), !dbg !2841
    #dbg_value(i32 %cond.i4.i665.1, !2296, !DIExpression(), !2834)
  %conv320.1 = trunc i32 %cond.i4.i665.1 to i16, !dbg !2842
  store i16 %conv320.1, ptr %incdec.ptr257, align 2, !dbg !2843
  %38 = load i16, ptr %incdec.ptr258, align 2, !dbg !2844
  %conv321.1 = zext i16 %38 to i32, !dbg !2844
  %sub322.1 = sub nsw i32 %conv321.1, %cond.i4.i663.1, !dbg !2845
    #dbg_value(i32 %10, !2293, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.1, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.1, !2033, !DIExpression(), !2848)
    #dbg_value(i32 0, !2038, !DIExpression(), !2848)
  %cond.i.i666.1 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.1, i32 0), !dbg !2850
    #dbg_value(i32 %cond.i.i666.1, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %cond.i.i666.1, !2042, !DIExpression(), !2851)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2851)
  %cond.i4.i667.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.1, i32 %10), !dbg !2853
    #dbg_value(i32 %cond.i4.i667.1, !2296, !DIExpression(), !2846)
  %conv324.1 = trunc i32 %cond.i4.i667.1 to i16, !dbg !2854
  store i16 %conv324.1, ptr %incdec.ptr258, align 2, !dbg !2855
  br label %for.inc328.1, !dbg !2856

for.inc328.1:                                     ; preds = %if.then316.1, %if.then284.1, %land.lhs.true277.1, %if.then265.1, %for.inc328
    #dbg_value(ptr %incdec.ptr257.1, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258.1, !2478, !DIExpression(), !2601)
    #dbg_value(i32 2, !2515, !DIExpression(), !2766)
  %incdec.ptr257.2 = getelementptr inbounds i8, ptr %imgP.0699, i64 6, !dbg !2769
    #dbg_value(ptr %incdec.ptr257.2, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr257.1, !2516, !DIExpression(), !2766)
  %incdec.ptr258.2 = getelementptr inbounds i8, ptr %imgQ.0698, i64 6, !dbg !2770
    #dbg_value(ptr %incdec.ptr258.2, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258.1, !2517, !DIExpression(), !2766)
  %39 = load i16, ptr %incdec.ptr258.1, align 2, !dbg !2771
  %conv259.2 = zext i16 %39 to i32, !dbg !2771
  %40 = load i16, ptr %incdec.ptr257.1, align 2, !dbg !2772
  %conv260.2 = zext i16 %40 to i32, !dbg !2772
  %sub261.2 = sub nsw i32 %conv259.2, %conv260.2, !dbg !2773
    #dbg_value(i32 %sub261.2, !2518, !DIExpression(), !2766)
    #dbg_value(i32 %sub261.2, !80, !DIExpression(), !2774)
    #dbg_value(i32 %sub261.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2774)
  %sub.i657.2 = tail call i32 @llvm.abs.i32(i32 %sub261.2, i1 true), !dbg !2776
  %cmp263.2 = icmp slt i32 %sub.i657.2, %mul, !dbg !2777
  br i1 %cmp263.2, label %if.then265.2, label %for.inc328.2, !dbg !2778

if.then265.2:                                     ; preds = %for.inc328.1
  %add.ptr267.2 = getelementptr inbounds i16, ptr %incdec.ptr258.1, i64 %idx.ext, !dbg !2780
    #dbg_value(ptr %add.ptr267.2, !2519, !DIExpression(), !2781)
  %add.ptr270.2 = getelementptr inbounds i16, ptr %incdec.ptr257.1, i64 %idx.neg, !dbg !2782
    #dbg_value(ptr %add.ptr270.2, !2527, !DIExpression(), !2781)
  %41 = load i16, ptr %add.ptr267.2, align 2, !dbg !2783
  %conv272.2 = zext i16 %41 to i32, !dbg !2783
  %sub273.2 = sub nsw i32 %conv259.2, %conv272.2, !dbg !2784
    #dbg_value(i32 %sub273.2, !80, !DIExpression(), !2785)
    #dbg_value(i32 %sub273.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2785)
  %sub.i658.2 = tail call i32 @llvm.abs.i32(i32 %sub273.2, i1 true), !dbg !2787
  %cmp275.2 = icmp slt i32 %sub.i658.2, %mul40, !dbg !2788
  br i1 %cmp275.2, label %land.lhs.true277.2, label %for.inc328.2, !dbg !2789

land.lhs.true277.2:                               ; preds = %if.then265.2
  %42 = load i16, ptr %add.ptr270.2, align 2, !dbg !2790
  %conv279.2 = zext i16 %42 to i32, !dbg !2790
  %sub280.2 = sub nsw i32 %conv260.2, %conv279.2, !dbg !2791
    #dbg_value(i32 %sub280.2, !80, !DIExpression(), !2792)
    #dbg_value(i32 %sub280.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2792)
  %sub.i659.2 = tail call i32 @llvm.abs.i32(i32 %sub280.2, i1 true), !dbg !2794
  %cmp282.2 = icmp ult i32 %sub.i659.2, %mul40, !dbg !2795
  br i1 %cmp282.2, label %if.then284.2, label %for.inc328.2, !dbg !2796

if.then284.2:                                     ; preds = %land.lhs.true277.2
  %add.ptr287.2 = getelementptr inbounds i16, ptr %add.ptr267.2, i64 %idx.ext, !dbg !2797
  %43 = load i16, ptr %add.ptr287.2, align 2, !dbg !2798
    #dbg_value(i16 %43, !2528, !DIExpression(), !2799)
  %add.ptr291.2 = getelementptr inbounds i16, ptr %add.ptr270.2, i64 %idx.neg, !dbg !2800
  %44 = load i16, ptr %add.ptr291.2, align 2, !dbg !2801
    #dbg_value(i16 %44, !2531, !DIExpression(), !2799)
  %conv293.2 = zext i16 %43 to i32, !dbg !2802
  %sub294.2 = sub nsw i32 %conv259.2, %conv293.2, !dbg !2803
    #dbg_value(i32 %sub294.2, !80, !DIExpression(), !2804)
    #dbg_value(i32 %sub294.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2804)
  %sub.i660.2 = tail call i32 @llvm.abs.i32(i32 %sub294.2, i1 true), !dbg !2806
  %cmp296.2 = icmp ult i32 %sub.i660.2, %mul40, !dbg !2807
  %conv297.2 = zext i1 %cmp296.2 to i32, !dbg !2807
    #dbg_value(i32 %conv297.2, !2532, !DIExpression(), !2799)
  %conv299.2 = zext i16 %44 to i32, !dbg !2808
  %sub300.2 = sub nsw i32 %conv260.2, %conv299.2, !dbg !2809
    #dbg_value(i32 %sub300.2, !80, !DIExpression(), !2810)
    #dbg_value(i32 %sub300.2, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2810)
  %sub.i661.2 = tail call i32 @llvm.abs.i32(i32 %sub300.2, i1 true), !dbg !2812
  %cmp302.2 = icmp ult i32 %sub.i661.2, %mul40, !dbg !2813
  %conv303.2 = zext i1 %cmp302.2 to i32, !dbg !2813
    #dbg_value(i32 %conv303.2, !2533, !DIExpression(), !2799)
  %add304.2 = add nuw nsw i32 %conv303.2, %conv297.2, !dbg !2814
    #dbg_value(i32 %add304.2, !2534, !DIExpression(), !2799)
  %sub305.2 = sub nsw i32 0, %add304.2, !dbg !2815
  %shl306.2 = shl nsw i32 %sub261.2, 2, !dbg !2816
  %sub309.2 = add nsw i32 %shl306.2, 4, !dbg !2817
  %add310.2 = sub nsw i32 %sub309.2, %conv272.2, !dbg !2818
  %add311.2 = add nsw i32 %add310.2, %conv279.2, !dbg !2819
  %shr312.2 = ashr i32 %add311.2, 3, !dbg !2820
    #dbg_value(i32 %sub305.2, !2024, !DIExpression(), !2821)
    #dbg_value(i32 %add304.2, !2029, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.2, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.2, !2033, !DIExpression(), !2823)
    #dbg_value(i32 %sub305.2, !2038, !DIExpression(), !2823)
  %cond.i.i662.2 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.2, i32 %sub305.2), !dbg !2825
    #dbg_value(i32 %cond.i.i662.2, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i.i662.2, !2042, !DIExpression(), !2826)
    #dbg_value(i32 %add304.2, !2045, !DIExpression(), !2826)
  %cond.i4.i663.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.2, i32 %add304.2), !dbg !2828
    #dbg_value(i32 %cond.i4.i663.2, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i4.i663.2, !2535, !DIExpression(), !2799)
  %cmp314.not.2 = icmp eq i32 %cond.i4.i663.2, 0, !dbg !2829
  br i1 %cmp314.not.2, label %for.inc328.2, label %if.then316.2, !dbg !2831

if.then316.2:                                     ; preds = %if.then284.2
  %add318.2 = add nsw i32 %cond.i4.i663.2, %conv260.2, !dbg !2832
    #dbg_value(i32 %10, !2293, !DIExpression(), !2834)
    #dbg_value(i32 %add318.2, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %add318.2, !2033, !DIExpression(), !2836)
    #dbg_value(i32 0, !2038, !DIExpression(), !2836)
  %cond.i.i664.2 = tail call noundef i32 @llvm.smax.i32(i32 %add318.2, i32 0), !dbg !2838
    #dbg_value(i32 %cond.i.i664.2, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %cond.i.i664.2, !2042, !DIExpression(), !2839)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2839)
  %cond.i4.i665.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.2, i32 %10), !dbg !2841
    #dbg_value(i32 %cond.i4.i665.2, !2296, !DIExpression(), !2834)
  %conv320.2 = trunc i32 %cond.i4.i665.2 to i16, !dbg !2842
  store i16 %conv320.2, ptr %incdec.ptr257.1, align 2, !dbg !2843
  %45 = load i16, ptr %incdec.ptr258.1, align 2, !dbg !2844
  %conv321.2 = zext i16 %45 to i32, !dbg !2844
  %sub322.2 = sub nsw i32 %conv321.2, %cond.i4.i663.2, !dbg !2845
    #dbg_value(i32 %10, !2293, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.2, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.2, !2033, !DIExpression(), !2848)
    #dbg_value(i32 0, !2038, !DIExpression(), !2848)
  %cond.i.i666.2 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.2, i32 0), !dbg !2850
    #dbg_value(i32 %cond.i.i666.2, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %cond.i.i666.2, !2042, !DIExpression(), !2851)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2851)
  %cond.i4.i667.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.2, i32 %10), !dbg !2853
    #dbg_value(i32 %cond.i4.i667.2, !2296, !DIExpression(), !2846)
  %conv324.2 = trunc i32 %cond.i4.i667.2 to i16, !dbg !2854
  store i16 %conv324.2, ptr %incdec.ptr258.1, align 2, !dbg !2855
  br label %for.inc328.2, !dbg !2856

for.inc328.2:                                     ; preds = %if.then316.2, %if.then284.2, %land.lhs.true277.2, %if.then265.2, %for.inc328.1
    #dbg_value(ptr %incdec.ptr257.2, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258.2, !2478, !DIExpression(), !2601)
    #dbg_value(i32 3, !2515, !DIExpression(), !2766)
  %incdec.ptr257.3 = getelementptr inbounds i8, ptr %imgP.0699, i64 8, !dbg !2769
    #dbg_value(ptr %incdec.ptr257.3, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr257.2, !2516, !DIExpression(), !2766)
  %incdec.ptr258.3 = getelementptr inbounds i8, ptr %imgQ.0698, i64 8, !dbg !2770
    #dbg_value(ptr %incdec.ptr258.3, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr258.2, !2517, !DIExpression(), !2766)
  %46 = load i16, ptr %incdec.ptr258.2, align 2, !dbg !2771
  %conv259.3 = zext i16 %46 to i32, !dbg !2771
  %47 = load i16, ptr %incdec.ptr257.2, align 2, !dbg !2772
  %conv260.3 = zext i16 %47 to i32, !dbg !2772
  %sub261.3 = sub nsw i32 %conv259.3, %conv260.3, !dbg !2773
    #dbg_value(i32 %sub261.3, !2518, !DIExpression(), !2766)
    #dbg_value(i32 %sub261.3, !80, !DIExpression(), !2774)
    #dbg_value(i32 %sub261.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2774)
  %sub.i657.3 = tail call i32 @llvm.abs.i32(i32 %sub261.3, i1 true), !dbg !2776
  %cmp263.3 = icmp slt i32 %sub.i657.3, %mul, !dbg !2777
  br i1 %cmp263.3, label %if.then265.3, label %if.end456, !dbg !2778

if.then265.3:                                     ; preds = %for.inc328.2
  %add.ptr267.3 = getelementptr inbounds i16, ptr %incdec.ptr258.2, i64 %idx.ext, !dbg !2780
    #dbg_value(ptr %add.ptr267.3, !2519, !DIExpression(), !2781)
  %add.ptr270.3 = getelementptr inbounds i16, ptr %incdec.ptr257.2, i64 %idx.neg, !dbg !2782
    #dbg_value(ptr %add.ptr270.3, !2527, !DIExpression(), !2781)
  %48 = load i16, ptr %add.ptr267.3, align 2, !dbg !2783
  %conv272.3 = zext i16 %48 to i32, !dbg !2783
  %sub273.3 = sub nsw i32 %conv259.3, %conv272.3, !dbg !2784
    #dbg_value(i32 %sub273.3, !80, !DIExpression(), !2785)
    #dbg_value(i32 %sub273.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2785)
  %sub.i658.3 = tail call i32 @llvm.abs.i32(i32 %sub273.3, i1 true), !dbg !2787
  %cmp275.3 = icmp slt i32 %sub.i658.3, %mul40, !dbg !2788
  br i1 %cmp275.3, label %land.lhs.true277.3, label %if.end456, !dbg !2789

land.lhs.true277.3:                               ; preds = %if.then265.3
  %49 = load i16, ptr %add.ptr270.3, align 2, !dbg !2790
  %conv279.3 = zext i16 %49 to i32, !dbg !2790
  %sub280.3 = sub nsw i32 %conv260.3, %conv279.3, !dbg !2791
    #dbg_value(i32 %sub280.3, !80, !DIExpression(), !2792)
    #dbg_value(i32 %sub280.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2792)
  %sub.i659.3 = tail call i32 @llvm.abs.i32(i32 %sub280.3, i1 true), !dbg !2794
  %cmp282.3 = icmp ult i32 %sub.i659.3, %mul40, !dbg !2795
  br i1 %cmp282.3, label %if.then284.3, label %if.end456, !dbg !2796

if.then284.3:                                     ; preds = %land.lhs.true277.3
  %add.ptr287.3 = getelementptr inbounds i16, ptr %add.ptr267.3, i64 %idx.ext, !dbg !2797
  %50 = load i16, ptr %add.ptr287.3, align 2, !dbg !2798
    #dbg_value(i16 %50, !2528, !DIExpression(), !2799)
  %add.ptr291.3 = getelementptr inbounds i16, ptr %add.ptr270.3, i64 %idx.neg, !dbg !2800
  %51 = load i16, ptr %add.ptr291.3, align 2, !dbg !2801
    #dbg_value(i16 %51, !2531, !DIExpression(), !2799)
  %conv293.3 = zext i16 %50 to i32, !dbg !2802
  %sub294.3 = sub nsw i32 %conv259.3, %conv293.3, !dbg !2803
    #dbg_value(i32 %sub294.3, !80, !DIExpression(), !2804)
    #dbg_value(i32 %sub294.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2804)
  %sub.i660.3 = tail call i32 @llvm.abs.i32(i32 %sub294.3, i1 true), !dbg !2806
  %cmp296.3 = icmp ult i32 %sub.i660.3, %mul40, !dbg !2807
  %conv297.3 = zext i1 %cmp296.3 to i32, !dbg !2807
    #dbg_value(i32 %conv297.3, !2532, !DIExpression(), !2799)
  %conv299.3 = zext i16 %51 to i32, !dbg !2808
  %sub300.3 = sub nsw i32 %conv260.3, %conv299.3, !dbg !2809
    #dbg_value(i32 %sub300.3, !80, !DIExpression(), !2810)
    #dbg_value(i32 %sub300.3, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2810)
  %sub.i661.3 = tail call i32 @llvm.abs.i32(i32 %sub300.3, i1 true), !dbg !2812
  %cmp302.3 = icmp ult i32 %sub.i661.3, %mul40, !dbg !2813
  %conv303.3 = zext i1 %cmp302.3 to i32, !dbg !2813
    #dbg_value(i32 %conv303.3, !2533, !DIExpression(), !2799)
  %add304.3 = add nuw nsw i32 %conv303.3, %conv297.3, !dbg !2814
    #dbg_value(i32 %add304.3, !2534, !DIExpression(), !2799)
  %sub305.3 = sub nsw i32 0, %add304.3, !dbg !2815
  %shl306.3 = shl nsw i32 %sub261.3, 2, !dbg !2816
  %sub309.3 = add nsw i32 %shl306.3, 4, !dbg !2817
  %add310.3 = sub nsw i32 %sub309.3, %conv272.3, !dbg !2818
  %add311.3 = add nsw i32 %add310.3, %conv279.3, !dbg !2819
  %shr312.3 = ashr i32 %add311.3, 3, !dbg !2820
    #dbg_value(i32 %sub305.3, !2024, !DIExpression(), !2821)
    #dbg_value(i32 %add304.3, !2029, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.3, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %shr312.3, !2033, !DIExpression(), !2823)
    #dbg_value(i32 %sub305.3, !2038, !DIExpression(), !2823)
  %cond.i.i662.3 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.3, i32 %sub305.3), !dbg !2825
    #dbg_value(i32 %cond.i.i662.3, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i.i662.3, !2042, !DIExpression(), !2826)
    #dbg_value(i32 %add304.3, !2045, !DIExpression(), !2826)
  %cond.i4.i663.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.3, i32 %add304.3), !dbg !2828
    #dbg_value(i32 %cond.i4.i663.3, !2030, !DIExpression(), !2821)
    #dbg_value(i32 %cond.i4.i663.3, !2535, !DIExpression(), !2799)
  %cmp314.not.3 = icmp eq i32 %cond.i4.i663.3, 0, !dbg !2829
  br i1 %cmp314.not.3, label %if.end456, label %if.then316.3, !dbg !2831

if.then316.3:                                     ; preds = %if.then284.3
  %add318.3 = add nsw i32 %cond.i4.i663.3, %conv260.3, !dbg !2832
    #dbg_value(i32 %10, !2293, !DIExpression(), !2834)
    #dbg_value(i32 %add318.3, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %add318.3, !2033, !DIExpression(), !2836)
    #dbg_value(i32 0, !2038, !DIExpression(), !2836)
  %cond.i.i664.3 = tail call noundef i32 @llvm.smax.i32(i32 %add318.3, i32 0), !dbg !2838
    #dbg_value(i32 %cond.i.i664.3, !2296, !DIExpression(), !2834)
    #dbg_value(i32 %cond.i.i664.3, !2042, !DIExpression(), !2839)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2839)
  %cond.i4.i665.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.3, i32 %10), !dbg !2841
    #dbg_value(i32 %cond.i4.i665.3, !2296, !DIExpression(), !2834)
  %conv320.3 = trunc i32 %cond.i4.i665.3 to i16, !dbg !2842
  store i16 %conv320.3, ptr %incdec.ptr257.2, align 2, !dbg !2843
  %52 = load i16, ptr %incdec.ptr258.2, align 2, !dbg !2844
  %conv321.3 = zext i16 %52 to i32, !dbg !2844
  %sub322.3 = sub nsw i32 %conv321.3, %cond.i4.i663.3, !dbg !2845
    #dbg_value(i32 %10, !2293, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.3, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %sub322.3, !2033, !DIExpression(), !2848)
    #dbg_value(i32 0, !2038, !DIExpression(), !2848)
  %cond.i.i666.3 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.3, i32 0), !dbg !2850
    #dbg_value(i32 %cond.i.i666.3, !2296, !DIExpression(), !2846)
    #dbg_value(i32 %cond.i.i666.3, !2042, !DIExpression(), !2851)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2851)
  %cond.i4.i667.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.3, i32 %10), !dbg !2853
    #dbg_value(i32 %cond.i4.i667.3, !2296, !DIExpression(), !2846)
  %conv324.3 = trunc i32 %cond.i4.i667.3 to i16, !dbg !2854
  store i16 %conv324.3, ptr %incdec.ptr258.2, align 2, !dbg !2855
  br label %if.end456, !dbg !2856

for.body335:                                      ; preds = %for.cond332.preheader, %for.inc448
  %imgP.3693 = phi ptr [ %imgP.0699, %for.cond332.preheader ], [ %incdec.ptr336, %for.inc448 ]
  %imgQ.3692 = phi ptr [ %imgQ.0698, %for.cond332.preheader ], [ %incdec.ptr337, %for.inc448 ]
  %i.1691 = phi i32 [ 0, %for.cond332.preheader ], [ %inc449, %for.inc448 ]
    #dbg_value(ptr %imgP.3693, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.3692, !2478, !DIExpression(), !2601)
    #dbg_value(i32 %i.1691, !2515, !DIExpression(), !2766)
  %incdec.ptr336 = getelementptr inbounds i8, ptr %imgP.3693, i64 2, !dbg !2857
    #dbg_value(ptr %incdec.ptr336, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgP.3693, !2516, !DIExpression(), !2766)
  %incdec.ptr337 = getelementptr inbounds i8, ptr %imgQ.3692, i64 2, !dbg !2858
    #dbg_value(ptr %incdec.ptr337, !2478, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.3692, !2517, !DIExpression(), !2766)
  %53 = load i16, ptr %imgQ.3692, align 2, !dbg !2859
  %conv338 = zext i16 %53 to i32, !dbg !2859
  %54 = load i16, ptr %imgP.3693, align 2, !dbg !2860
  %conv339 = zext i16 %54 to i32, !dbg !2860
  %sub340 = sub nsw i32 %conv338, %conv339, !dbg !2861
    #dbg_value(i32 %sub340, !2518, !DIExpression(), !2766)
    #dbg_value(i32 %sub340, !80, !DIExpression(), !2862)
    #dbg_value(i32 %sub340, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2862)
  %sub.i668 = tail call i32 @llvm.abs.i32(i32 %sub340, i1 true), !dbg !2864
  %cmp342 = icmp slt i32 %sub.i668, %mul, !dbg !2865
  br i1 %cmp342, label %if.then344, label %for.inc448, !dbg !2866

if.then344:                                       ; preds = %for.body335
  %add.ptr347 = getelementptr inbounds i16, ptr %imgQ.3692, i64 %idx.ext, !dbg !2867
    #dbg_value(ptr %add.ptr347, !2536, !DIExpression(), !2868)
  %add.ptr351 = getelementptr inbounds i16, ptr %imgP.3693, i64 %idx.neg, !dbg !2869
    #dbg_value(ptr %add.ptr351, !2543, !DIExpression(), !2868)
  %55 = load i16, ptr %add.ptr347, align 2, !dbg !2870
  %conv353 = zext i16 %55 to i32, !dbg !2870
  %sub354 = sub nsw i32 %conv338, %conv353, !dbg !2871
    #dbg_value(i32 %sub354, !80, !DIExpression(), !2872)
    #dbg_value(i32 %sub354, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2872)
  %sub.i669 = tail call i32 @llvm.abs.i32(i32 %sub354, i1 true), !dbg !2874
  %cmp356 = icmp slt i32 %sub.i669, %mul40, !dbg !2875
  br i1 %cmp356, label %land.lhs.true358, label %for.inc448, !dbg !2876

land.lhs.true358:                                 ; preds = %if.then344
  %56 = load i16, ptr %add.ptr351, align 2, !dbg !2877
  %conv360 = zext i16 %56 to i32, !dbg !2877
  %sub361 = sub nsw i32 %conv339, %conv360, !dbg !2878
    #dbg_value(i32 %sub361, !80, !DIExpression(), !2879)
    #dbg_value(i32 %sub361, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2879)
  %sub.i670 = tail call i32 @llvm.abs.i32(i32 %sub361, i1 true), !dbg !2881
  %cmp363 = icmp ult i32 %sub.i670, %mul40, !dbg !2882
  br i1 %cmp363, label %if.then365, label %for.inc448, !dbg !2883

if.then365:                                       ; preds = %land.lhs.true358
  %add369 = add nuw nsw i32 %conv338, 1, !dbg !2884
  %add370 = add nuw nsw i32 %add369, %conv339, !dbg !2885
  %shr371 = lshr i32 %add370, 1, !dbg !2886
    #dbg_value(i32 %shr371, !2544, !DIExpression(), !2887)
  %add.ptr374 = getelementptr inbounds i16, ptr %add.ptr347, i64 %idx.ext, !dbg !2888
  %57 = load i16, ptr %add.ptr374, align 2, !dbg !2889
    #dbg_value(i16 %57, !2547, !DIExpression(), !2887)
  %add.ptr378 = getelementptr inbounds i16, ptr %add.ptr351, i64 %idx.neg, !dbg !2890
  %58 = load i16, ptr %add.ptr378, align 2, !dbg !2891
    #dbg_value(i16 %58, !2548, !DIExpression(), !2887)
  %conv381 = zext i16 %57 to i32, !dbg !2892
  %sub382 = sub nsw i32 %conv338, %conv381, !dbg !2893
    #dbg_value(i32 %sub382, !80, !DIExpression(), !2894)
    #dbg_value(i32 %sub382, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2894)
  %sub.i671 = tail call i32 @llvm.abs.i32(i32 %sub382, i1 true), !dbg !2896
  %cmp384 = icmp ult i32 %sub.i671, %mul40, !dbg !2897
  %conv385 = zext i1 %cmp384 to i32, !dbg !2897
    #dbg_value(i32 %conv385, !2549, !DIExpression(), !2887)
  %conv388 = zext i16 %58 to i32, !dbg !2898
  %sub389 = sub nsw i32 %conv339, %conv388, !dbg !2899
    #dbg_value(i32 %sub389, !80, !DIExpression(), !2900)
    #dbg_value(i32 %sub389, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2900)
  %sub.i672 = tail call i32 @llvm.abs.i32(i32 %sub389, i1 true), !dbg !2902
  %cmp391 = icmp ult i32 %sub.i672, %mul40, !dbg !2903
  %conv392 = zext i1 %cmp391 to i32, !dbg !2903
    #dbg_value(i32 %conv392, !2550, !DIExpression(), !2887)
  %add394 = add i32 %mul247, %conv385, !dbg !2904
  %add395 = add i32 %add394, %conv392, !dbg !2905
    #dbg_value(i32 %add395, !2551, !DIExpression(), !2887)
  %sub397 = sub nsw i32 0, %add395, !dbg !2906
  %shl398 = shl nsw i32 %sub340, 2, !dbg !2907
  %sub401 = add nsw i32 %shl398, 4, !dbg !2908
  %add402 = sub nsw i32 %sub401, %conv353, !dbg !2909
  %add403 = add nsw i32 %add402, %conv360, !dbg !2910
  %shr404 = ashr i32 %add403, 3, !dbg !2911
    #dbg_value(i32 %sub397, !2024, !DIExpression(), !2912)
    #dbg_value(i32 %add395, !2029, !DIExpression(), !2912)
    #dbg_value(i32 %shr404, !2030, !DIExpression(), !2912)
    #dbg_value(i32 %shr404, !2033, !DIExpression(), !2914)
    #dbg_value(i32 %sub397, !2038, !DIExpression(), !2914)
  %cond.i.i673 = tail call noundef i32 @llvm.smax.i32(i32 %shr404, i32 %sub397), !dbg !2916
    #dbg_value(i32 %cond.i.i673, !2030, !DIExpression(), !2912)
    #dbg_value(i32 %cond.i.i673, !2042, !DIExpression(), !2917)
    #dbg_value(i32 %add395, !2045, !DIExpression(), !2917)
  %cond.i4.i674 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i673, i32 %add395), !dbg !2919
    #dbg_value(i32 %cond.i4.i674, !2030, !DIExpression(), !2912)
    #dbg_value(i32 %cond.i4.i674, !2552, !DIExpression(), !2887)
  br i1 %cmp391, label %if.then407, label %if.end419, !dbg !2920

if.then407:                                       ; preds = %if.then365
  %59 = shl nuw nsw i32 %conv360, 1, !dbg !2921
  %add410 = sub nsw i32 %shr371, %59, !dbg !2921
  %sub413 = add nsw i32 %add410, %conv388, !dbg !2923
  %shr414 = ashr i32 %sub413, 1, !dbg !2924
    #dbg_value(i32 %sub408, !2024, !DIExpression(), !2925)
    #dbg_value(i32 %mul247, !2029, !DIExpression(), !2925)
    #dbg_value(i32 %shr414, !2030, !DIExpression(), !2925)
    #dbg_value(i32 %shr414, !2033, !DIExpression(), !2927)
    #dbg_value(i32 %sub408, !2038, !DIExpression(), !2927)
  %cond.i.i675 = tail call noundef i32 @llvm.smax.i32(i32 %shr414, i32 %sub408), !dbg !2929
    #dbg_value(i32 %cond.i.i675, !2030, !DIExpression(), !2925)
    #dbg_value(i32 %cond.i.i675, !2042, !DIExpression(), !2930)
    #dbg_value(i32 %mul247, !2045, !DIExpression(), !2930)
  %cond.i4.i676 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i675, i32 %mul247), !dbg !2932
    #dbg_value(i32 %cond.i4.i676, !2030, !DIExpression(), !2925)
  %60 = trunc i32 %cond.i4.i676 to i16, !dbg !2933
  %conv418 = add i16 %56, %60, !dbg !2933
  store i16 %conv418, ptr %add.ptr351, align 2, !dbg !2933
  br label %if.end419, !dbg !2934

if.end419:                                        ; preds = %if.then407, %if.then365
  %cmp420.not = icmp eq i32 %cond.i4.i674, 0, !dbg !2935
  br i1 %cmp420.not, label %if.end431, label %if.then422, !dbg !2937

if.then422:                                       ; preds = %if.end419
  %61 = load i16, ptr %imgP.3693, align 2, !dbg !2938
  %conv423 = zext i16 %61 to i32, !dbg !2938
  %add424 = add nsw i32 %cond.i4.i674, %conv423, !dbg !2940
    #dbg_value(i32 %10, !2293, !DIExpression(), !2941)
    #dbg_value(i32 %add424, !2296, !DIExpression(), !2941)
    #dbg_value(i32 %add424, !2033, !DIExpression(), !2943)
    #dbg_value(i32 0, !2038, !DIExpression(), !2943)
  %cond.i.i677 = tail call noundef i32 @llvm.smax.i32(i32 %add424, i32 0), !dbg !2945
    #dbg_value(i32 %cond.i.i677, !2296, !DIExpression(), !2941)
    #dbg_value(i32 %cond.i.i677, !2042, !DIExpression(), !2946)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2946)
  %cond.i4.i678 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i677, i32 %10), !dbg !2948
    #dbg_value(i32 %cond.i4.i678, !2296, !DIExpression(), !2941)
  %conv426 = trunc i32 %cond.i4.i678 to i16, !dbg !2949
  store i16 %conv426, ptr %imgP.3693, align 2, !dbg !2950
  %62 = load i16, ptr %imgQ.3692, align 2, !dbg !2951
  %conv427 = zext i16 %62 to i32, !dbg !2951
  %sub428 = sub nsw i32 %conv427, %cond.i4.i674, !dbg !2952
    #dbg_value(i32 %10, !2293, !DIExpression(), !2953)
    #dbg_value(i32 %sub428, !2296, !DIExpression(), !2953)
    #dbg_value(i32 %sub428, !2033, !DIExpression(), !2955)
    #dbg_value(i32 0, !2038, !DIExpression(), !2955)
  %cond.i.i679 = tail call noundef i32 @llvm.smax.i32(i32 %sub428, i32 0), !dbg !2957
    #dbg_value(i32 %cond.i.i679, !2296, !DIExpression(), !2953)
    #dbg_value(i32 %cond.i.i679, !2042, !DIExpression(), !2958)
    #dbg_value(i32 %10, !2045, !DIExpression(), !2958)
  %cond.i4.i680 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i679, i32 %10), !dbg !2960
    #dbg_value(i32 %cond.i4.i680, !2296, !DIExpression(), !2953)
  %conv430 = trunc i32 %cond.i4.i680 to i16, !dbg !2961
  store i16 %conv430, ptr %imgQ.3692, align 2, !dbg !2962
  br label %if.end431, !dbg !2963

if.end431:                                        ; preds = %if.then422, %if.end419
  br i1 %cmp384, label %if.then433, label %for.inc448, !dbg !2964

if.then433:                                       ; preds = %if.end431
  %add436 = add nuw nsw i32 %shr371, %conv381, !dbg !2965
  %63 = load i16, ptr %add.ptr347, align 2, !dbg !2967
  %conv437 = zext i16 %63 to i32, !dbg !2967
  %64 = shl nuw nsw i32 %conv437, 1, !dbg !2968
  %sub439 = sub nsw i32 %add436, %64, !dbg !2968
  %shr440 = ashr i32 %sub439, 1, !dbg !2969
    #dbg_value(i32 %sub408, !2024, !DIExpression(), !2970)
    #dbg_value(i32 %mul247, !2029, !DIExpression(), !2970)
    #dbg_value(i32 %shr440, !2030, !DIExpression(), !2970)
    #dbg_value(i32 %shr440, !2033, !DIExpression(), !2972)
    #dbg_value(i32 %sub408, !2038, !DIExpression(), !2972)
  %cond.i.i681 = tail call noundef i32 @llvm.smax.i32(i32 %shr440, i32 %sub408), !dbg !2974
    #dbg_value(i32 %cond.i.i681, !2030, !DIExpression(), !2970)
    #dbg_value(i32 %cond.i.i681, !2042, !DIExpression(), !2975)
    #dbg_value(i32 %mul247, !2045, !DIExpression(), !2975)
  %cond.i4.i682 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i681, i32 %mul247), !dbg !2977
    #dbg_value(i32 %cond.i4.i682, !2030, !DIExpression(), !2970)
  %65 = trunc i32 %cond.i4.i682 to i16, !dbg !2978
  %conv444 = add i16 %63, %65, !dbg !2978
  store i16 %conv444, ptr %add.ptr347, align 2, !dbg !2978
  br label %for.inc448, !dbg !2979

for.inc448:                                       ; preds = %if.then344, %land.lhs.true358, %if.then433, %if.end431, %for.body335
  %inc449 = add nuw nsw i32 %i.1691, 1, !dbg !2980
    #dbg_value(ptr %incdec.ptr336, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %incdec.ptr337, !2478, !DIExpression(), !2601)
    #dbg_value(i32 %inc449, !2515, !DIExpression(), !2766)
  %exitcond705.not = icmp eq i32 %inc449, 4, !dbg !2981
  br i1 %exitcond705.not, label %if.end456, label %for.body335, !dbg !2779, !llvm.loop !2982

if.else452:                                       ; preds = %for.body
  %add.ptr453 = getelementptr inbounds i8, ptr %imgP.0699, i64 8, !dbg !2984
    #dbg_value(ptr %add.ptr453, !2477, !DIExpression(), !2601)
  %add.ptr454 = getelementptr inbounds i8, ptr %imgQ.0698, i64 8, !dbg !2986
    #dbg_value(ptr %add.ptr454, !2478, !DIExpression(), !2601)
  br label %if.end456

if.end456:                                        ; preds = %if.end238, %for.inc448, %for.inc328.2, %if.then265.3, %land.lhs.true277.3, %if.then284.3, %if.then316.3, %if.else452
  %imgQ.5 = phi ptr [ %add.ptr454, %if.else452 ], [ %incdec.ptr258.3, %if.then316.3 ], [ %incdec.ptr258.3, %if.then284.3 ], [ %incdec.ptr258.3, %land.lhs.true277.3 ], [ %incdec.ptr258.3, %if.then265.3 ], [ %incdec.ptr258.3, %for.inc328.2 ], [ %incdec.ptr337, %for.inc448 ], [ %incdec.ptr66, %if.end238 ], !dbg !2601
  %imgP.5 = phi ptr [ %add.ptr453, %if.else452 ], [ %incdec.ptr257.3, %if.then316.3 ], [ %incdec.ptr257.3, %if.then284.3 ], [ %incdec.ptr257.3, %land.lhs.true277.3 ], [ %incdec.ptr257.3, %if.then265.3 ], [ %incdec.ptr257.3, %for.inc328.2 ], [ %incdec.ptr336, %for.inc448 ], [ %incdec.ptr, %if.end238 ], !dbg !2601
    #dbg_value(ptr %imgP.5, !2477, !DIExpression(), !2601)
    #dbg_value(ptr %imgQ.5, !2478, !DIExpression(), !2601)
  %add.ptr457 = getelementptr inbounds i8, ptr %Strength.addr.0700, i64 4, !dbg !2987
    #dbg_value(ptr %add.ptr457, !2457, !DIExpression(), !2553)
  %add459 = add nuw nsw i32 %pel.0697, 4, !dbg !2988
    #dbg_value(i32 %add459, !2479, !DIExpression(), !2601)
  %cmp54 = icmp ult i32 %pel.0697, 12, !dbg !2989
  br i1 %cmp54, label %for.body, label %if.end462, !dbg !2609, !llvm.loop !2990

if.end462:                                        ; preds = %if.end456, %if.then, %lor.lhs.false
  ret void, !dbg !2992
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @EdgeLoopChromaVer(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #3 !dbg !2993 {
entry:
    #dbg_value(ptr %Img, !2997, !DIExpression(), !3048)
    #dbg_value(ptr %Strength, !2998, !DIExpression(), !3048)
    #dbg_value(ptr %MbQ, !2999, !DIExpression(), !3048)
    #dbg_value(i32 %edge, !3000, !DIExpression(), !3048)
    #dbg_value(i32 %uv, !3001, !DIExpression(), !3048)
    #dbg_value(ptr %p, !3002, !DIExpression(), !3048)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !3049
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !3049
    #dbg_value(ptr %0, !3003, !DIExpression(), !3048)
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108, !dbg !3050
  %1 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3050
    #dbg_value(i32 %1, !3004, !DIExpression(), !3048)
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112, !dbg !3051
  %2 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3051
    #dbg_value(i32 %2, !3005, !DIExpression(), !3048)
  %sub = add nsw i32 %edge, -1, !dbg !3052
    #dbg_value(i32 %sub, !3006, !DIExpression(), !3048)
    #dbg_value(i32 0, !3007, !DIExpression(), !3048)
    #dbg_value(ptr %MbQ, !3053, !DIExpression(), !3062)
    #dbg_value(i32 %sub, !3058, !DIExpression(), !3062)
    #dbg_value(i32 0, !3059, !DIExpression(), !3062)
    #dbg_value(i32 %1, !3060, !DIExpression(), !3062)
    #dbg_value(i32 %2, !3061, !DIExpression(), !3062)
  %cmp.i = icmp slt i32 %edge, 1, !dbg !3064
  br i1 %cmp.i, label %if.then.i, label %if.else3.i, !dbg !3066

if.then.i:                                        ; preds = %entry
  %cmp1.i = icmp sgt i32 %2, 0, !dbg !3067
  br i1 %cmp1.i, label %get_non_aff_neighbor_chroma.exit, label %lor.lhs.false, !dbg !3070

if.else3.i:                                       ; preds = %entry
  %cmp4.i = icmp sge i32 %1, %edge, !dbg !3071
  %cmp9.i = icmp sgt i32 %2, 0
  %or.cond = select i1 %cmp4.i, i1 %cmp9.i, i1 false, !dbg !3073
  br i1 %or.cond, label %if.then, label %lor.lhs.false, !dbg !3073

get_non_aff_neighbor_chroma.exit:                 ; preds = %if.then.i
  %mbleft.i = getelementptr inbounds i8, ptr %MbQ, i64 144, !dbg !3074
  %3 = load ptr, ptr %mbleft.i, align 8, !dbg !3074
    #dbg_value(ptr %3, !3008, !DIExpression(), !3048)
  %tobool.not = icmp eq ptr %3, null, !dbg !3075
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !dbg !3076

lor.lhs.false:                                    ; preds = %if.else3.i, %if.then.i, %get_non_aff_neighbor_chroma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !3077
  %4 = load i16, ptr %DFDisableIdc, align 8, !dbg !3077
  %cmp = icmp ne i16 %4, 0, !dbg !3078
  tail call void @llvm.assume(i1 %cmp), !dbg !3079
  br label %if.end128, !dbg !3079

if.then:                                          ; preds = %if.else3.i, %get_non_aff_neighbor_chroma.exit
  %retval.0.i197 = phi ptr [ %3, %get_non_aff_neighbor_chroma.exit ], [ %MbQ, %if.else3.i ]
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 849048, !dbg !3080
  %5 = load i32, ptr %arrayidx, align 4, !dbg !3080
    #dbg_value(i32 %5, !3009, !DIExpression(), !3081)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !3082
  %add = add nsw i32 %uv, 1, !dbg !3083
  %idxprom = sext i32 %add to i64, !dbg !3084
  %arrayidx4 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom, !dbg !3084
  %6 = load i32, ptr %arrayidx4, align 4, !dbg !3084
    #dbg_value(i32 %6, !3012, !DIExpression(), !3081)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !3085
  %7 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !3085
  %conv5 = sext i16 %7 to i32, !dbg !3086
    #dbg_value(i32 %conv5, !3013, !DIExpression(), !3081)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !3087
  %8 = load i16, ptr %DFBetaOffset, align 4, !dbg !3087
  %conv6 = sext i16 %8 to i32, !dbg !3088
    #dbg_value(i32 %conv6, !3014, !DIExpression(), !3081)
  %qpc = getelementptr inbounds i8, ptr %retval.0.i197, i64 72, !dbg !3089
  %idxprom7 = sext i32 %uv to i64, !dbg !3090
  %arrayidx8 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom7, !dbg !3090
  %9 = load i32, ptr %arrayidx8, align 4, !dbg !3090
  %qpc9 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !3091
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %qpc9, i64 0, i64 %idxprom7, !dbg !3092
  %10 = load i32, ptr %arrayidx11, align 4, !dbg !3092
  %add12 = add i32 %9, 1, !dbg !3093
  %add13 = add i32 %add12, %10, !dbg !3094
  %shr = ashr i32 %add13, 1, !dbg !3095
    #dbg_value(i32 %shr, !3015, !DIExpression(), !3081)
  %add14 = add nsw i32 %shr, %conv5, !dbg !3096
    #dbg_value(i32 0, !2024, !DIExpression(), !3097)
    #dbg_value(i32 51, !2029, !DIExpression(), !3097)
    #dbg_value(i32 %add14, !2030, !DIExpression(), !3097)
    #dbg_value(i32 %add14, !2033, !DIExpression(), !3099)
    #dbg_value(i32 0, !2038, !DIExpression(), !3099)
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add14, i32 0), !dbg !3101
    #dbg_value(i32 %cond.i.i, !2030, !DIExpression(), !3097)
    #dbg_value(i32 %cond.i.i, !2042, !DIExpression(), !3102)
    #dbg_value(i32 51, !2045, !DIExpression(), !3102)
  %11 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !3104
    #dbg_value(i32 %11, !2030, !DIExpression(), !3097)
    #dbg_value(i32 %11, !3016, !DIExpression(), !3081)
  %add16 = add nsw i32 %shr, %conv6, !dbg !3105
    #dbg_value(i32 0, !2024, !DIExpression(), !3106)
    #dbg_value(i32 51, !2029, !DIExpression(), !3106)
    #dbg_value(i32 %add16, !2030, !DIExpression(), !3106)
    #dbg_value(i32 %add16, !2033, !DIExpression(), !3108)
    #dbg_value(i32 0, !2038, !DIExpression(), !3108)
  %cond.i.i185 = tail call noundef i32 @llvm.smax.i32(i32 %add16, i32 0), !dbg !3110
    #dbg_value(i32 %cond.i.i185, !2030, !DIExpression(), !3106)
    #dbg_value(i32 %cond.i.i185, !2042, !DIExpression(), !3111)
    #dbg_value(i32 51, !2045, !DIExpression(), !3111)
  %12 = tail call i32 @llvm.umin.i32(i32 %cond.i.i185, i32 51), !dbg !3113
    #dbg_value(i32 %12, !2030, !DIExpression(), !3106)
    #dbg_value(i32 %12, !3017, !DIExpression(), !3081)
  %idxprom18 = zext nneg i32 %11 to i64, !dbg !3114
  %arrayidx19 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom18, !dbg !3114
  %13 = load i8, ptr %arrayidx19, align 1, !dbg !3114
  %conv20 = zext i8 %13 to i32, !dbg !3114
  %mul = mul nsw i32 %5, %conv20, !dbg !3115
    #dbg_value(i32 %mul, !3018, !DIExpression(), !3081)
  %idxprom21 = zext nneg i32 %12 to i64, !dbg !3116
  %arrayidx22 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom21, !dbg !3116
  %14 = load i8, ptr %arrayidx22, align 1, !dbg !3116
  %conv23 = zext i8 %14 to i32, !dbg !3116
  %mul24 = mul nsw i32 %5, %conv23, !dbg !3117
    #dbg_value(i32 %mul24, !3019, !DIExpression(), !3081)
  %or = or i32 %mul24, %mul, !dbg !3118
  %cmp25.not = icmp eq i32 %or, 0, !dbg !3119
  br i1 %cmp25.not, label %if.end128, label %if.then27, !dbg !3120

if.then27:                                        ; preds = %if.then
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !3121
  %15 = load i32, ptr %chroma_format_idc, align 4, !dbg !3121
  %idxprom28 = sext i32 %15 to i64, !dbg !3122
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom28, !dbg !3122
  %16 = load i32, ptr %arrayidx29, align 4, !dbg !3122
    #dbg_value(i32 %16, !3020, !DIExpression(), !3123)
  %arrayidx31 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom18, !dbg !3124
    #dbg_value(ptr %arrayidx31, !3023, !DIExpression(), !3123)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i32 poison), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_plus, DW_OP_stack_value), !3123)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3123)
    #dbg_value(i32 0, !3024, !DIExpression(), !3123)
  %cmp39202 = icmp sgt i32 %16, 0, !dbg !3125
  br i1 %cmp39202, label %for.body.lr.ph, label %if.end128, !dbg !3126

for.body.lr.ph:                                   ; preds = %if.then27
  %pix_c_y = getelementptr inbounds i8, ptr %retval.0.i197, i64 56, !dbg !3127
  %17 = load i32, ptr %pix_c_y, align 8, !dbg !3127
    #dbg_value(!DIArgList(ptr %Img, i32 %17), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3123)
  %idxprom37 = sext i32 %17 to i64, !dbg !3128
    #dbg_value(!DIArgList(ptr %Img, i64 %idxprom37), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3123)
  %arrayidx38 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom37, !dbg !3128
    #dbg_value(ptr %arrayidx38, !3026, !DIExpression(), !3123)
  %pix_c_x = getelementptr inbounds i8, ptr %retval.0.i197, i64 52, !dbg !3129
  %18 = load i32, ptr %pix_c_x, align 4, !dbg !3129
    #dbg_value(!DIArgList(i32 %18, i32 %1, i32 %sub), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_plus, DW_OP_stack_value), !3123)
  %sub32 = add nsw i32 %1, -1, !dbg !3129
    #dbg_value(!DIArgList(i32 %18, i32 %sub32, i32 %sub), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_plus, DW_OP_stack_value), !3123)
  %and = and i32 %sub32, %sub, !dbg !3129
    #dbg_value(!DIArgList(i32 %18, i32 %and), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3123)
  %add33 = add nsw i32 %18, %and, !dbg !3129
    #dbg_value(i32 %add33, !3025, !DIExpression(), !3123)
  %cmp41 = icmp eq i32 %16, 8
  %idx.ext = sext i32 %add33 to i64
  br label %for.body, !dbg !3126

for.body:                                         ; preds = %for.body.lr.ph, %if.end126
  %pel.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end126 ]
  %cur_img.0203 = phi ptr [ %arrayidx38, %for.body.lr.ph ], [ %incdec.ptr, %if.end126 ]
    #dbg_value(i32 %pel.0204, !3024, !DIExpression(), !3123)
    #dbg_value(ptr %cur_img.0203, !3026, !DIExpression(), !3123)
  %19 = shl nuw i32 %pel.0204, 1, !dbg !3130
  %shl = and i32 %19, -4, !dbg !3130
  %and44 = and i32 %pel.0204, 1, !dbg !3130
  %add45 = or disjoint i32 %shl, %and44, !dbg !3130
  %cond = select i1 %cmp41, i32 %add45, i32 %pel.0204, !dbg !3130
  %idxprom46 = sext i32 %cond to i64, !dbg !3131
  %arrayidx47 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom46, !dbg !3131
  %20 = load i8, ptr %arrayidx47, align 1, !dbg !3131
    #dbg_value(i8 %20, !3027, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3132)
  %cmp49.not = icmp eq i8 %20, 0, !dbg !3133
  br i1 %cmp49.not, label %if.end126, label %if.then51, !dbg !3134

if.then51:                                        ; preds = %for.body
  %21 = load ptr, ptr %cur_img.0203, align 8, !dbg !3135
  %add.ptr = getelementptr inbounds i16, ptr %21, i64 %idx.ext, !dbg !3136
    #dbg_value(ptr %add.ptr, !3031, !DIExpression(), !3137)
  %add.ptr52 = getelementptr inbounds i8, ptr %add.ptr, i64 2, !dbg !3138
    #dbg_value(ptr %add.ptr52, !3034, !DIExpression(), !3137)
  %22 = load i16, ptr %add.ptr52, align 2, !dbg !3139
  %conv53 = zext i16 %22 to i32, !dbg !3139
  %23 = load i16, ptr %add.ptr, align 2, !dbg !3140
  %conv54 = zext i16 %23 to i32, !dbg !3140
  %sub55 = sub nsw i32 %conv53, %conv54, !dbg !3141
    #dbg_value(i32 %sub55, !3035, !DIExpression(), !3137)
    #dbg_value(i32 %sub55, !80, !DIExpression(), !3142)
    #dbg_value(i32 %sub55, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3142)
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub55, i1 true), !dbg !3144
  %cmp57 = icmp slt i32 %sub.i, %mul, !dbg !3145
  br i1 %cmp57, label %if.then59, label %if.end126, !dbg !3146

if.then59:                                        ; preds = %if.then51
  %add.ptr60 = getelementptr inbounds i8, ptr %add.ptr, i64 4, !dbg !3147
  %24 = load i16, ptr %add.ptr60, align 2, !dbg !3148
    #dbg_value(i16 %24, !3036, !DIExpression(), !3149)
  %conv62 = zext i16 %24 to i32, !dbg !3150
  %sub63 = sub nsw i32 %conv53, %conv62, !dbg !3151
    #dbg_value(i32 %sub63, !80, !DIExpression(), !3152)
    #dbg_value(i32 %sub63, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3152)
  %sub.i187 = tail call i32 @llvm.abs.i32(i32 %sub63, i1 true), !dbg !3154
  %cmp65 = icmp slt i32 %sub.i187, %mul24, !dbg !3155
  br i1 %cmp65, label %if.then67, label %if.end126, !dbg !3156

if.then67:                                        ; preds = %if.then59
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr, i64 -2, !dbg !3157
  %25 = load i16, ptr %add.ptr68, align 2, !dbg !3158
    #dbg_value(i16 %25, !3039, !DIExpression(), !3159)
  %conv70 = zext i16 %25 to i32, !dbg !3160
  %sub71 = sub nsw i32 %conv54, %conv70, !dbg !3161
    #dbg_value(i32 %sub71, !80, !DIExpression(), !3162)
    #dbg_value(i32 %sub71, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3162)
  %sub.i188 = tail call i32 @llvm.abs.i32(i32 %sub71, i1 true), !dbg !3164
  %cmp73 = icmp ult i32 %sub.i188, %mul24, !dbg !3165
  br i1 %cmp73, label %if.then75, label %if.end126, !dbg !3166

if.then75:                                        ; preds = %if.then67
  %cmp76 = icmp eq i8 %20, 4, !dbg !3167
  br i1 %cmp76, label %if.then78, label %if.else, !dbg !3168

if.then78:                                        ; preds = %if.then75
  %shl80 = shl nuw nsw i32 %conv70, 1, !dbg !3169
  %add82 = add nuw nsw i32 %conv54, 2, !dbg !3171
  %add84 = add nuw nsw i32 %add82, %conv62, !dbg !3172
  %add85 = add nuw nsw i32 %add84, %shl80, !dbg !3173
  %shr86 = lshr i32 %add85, 2, !dbg !3174
  %conv87 = trunc nuw i32 %shr86 to i16, !dbg !3175
  store i16 %conv87, ptr %add.ptr, align 2, !dbg !3176
  %shl89 = shl nuw nsw i32 %conv62, 1, !dbg !3177
  %add91 = add nuw nsw i32 %conv53, 2, !dbg !3178
  %add93 = add nuw nsw i32 %add91, %shl89, !dbg !3179
  %add94 = add nuw nsw i32 %add93, %conv70, !dbg !3180
  %shr95 = lshr i32 %add94, 2, !dbg !3181
  br label %if.end126.sink.split, !dbg !3182

if.else:                                          ; preds = %if.then75
  %idxprom97 = zext i8 %20 to i64, !dbg !3183
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx31, i64 %idxprom97, !dbg !3183
  %26 = load i8, ptr %arrayidx98, align 1, !dbg !3183
  %conv99 = zext i8 %26 to i32, !dbg !3183
  %mul100 = mul nsw i32 %5, %conv99, !dbg !3184
    #dbg_value(i32 %mul100, !3042, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3185)
    #dbg_value(i32 %mul100, !2024, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3186)
    #dbg_value(i32 %mul100, !2029, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3186)
    #dbg_value(i32 poison, !2030, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3186)
    #dbg_value(i32 poison, !2033, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3188)
    #dbg_value(i32 %mul100, !2038, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3188)
  %27 = shl nsw i32 %sub55, 2, !dbg !3190
  %28 = add nsw i32 %conv62, -5, !dbg !3191
  %29 = add nsw i32 %27, %conv70, !dbg !3191
  %30 = sub nsw i32 %28, %29, !dbg !3191
  %31 = ashr i32 %30, 3, !dbg !3191
  %32 = tail call i32 @llvm.smin.i32(i32 %mul100, i32 %31), !dbg !3191
    #dbg_value(i32 %32, !2030, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3186)
    #dbg_value(i32 %32, !2042, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3192)
    #dbg_value(i32 %mul100, !2045, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3192)
  %33 = sub i32 -2, %mul100, !dbg !3194
  %34 = tail call i32 @llvm.smax.i32(i32 %32, i32 %33), !dbg !3194
    #dbg_value(i32 %34, !2030, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3186)
    #dbg_value(i32 %34, !3047, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3185)
  %cmp111.not = icmp eq i32 %34, -1, !dbg !3195
  br i1 %cmp111.not, label %if.end126, label %if.then113, !dbg !3197

if.then113:                                       ; preds = %if.else
  %cond.i4.i190 = xor i32 %34, -1, !dbg !3194
    #dbg_value(i32 %cond.i4.i190, !2030, !DIExpression(), !3186)
    #dbg_value(i32 %cond.i4.i190, !3047, !DIExpression(), !3185)
  %add115 = add nsw i32 %cond.i4.i190, %conv54, !dbg !3198
    #dbg_value(i32 %6, !2293, !DIExpression(), !3200)
    #dbg_value(i32 %add115, !2296, !DIExpression(), !3200)
    #dbg_value(i32 %add115, !2033, !DIExpression(), !3202)
    #dbg_value(i32 0, !2038, !DIExpression(), !3202)
  %cond.i.i191 = tail call noundef i32 @llvm.smax.i32(i32 %add115, i32 0), !dbg !3204
    #dbg_value(i32 %cond.i.i191, !2296, !DIExpression(), !3200)
    #dbg_value(i32 %cond.i.i191, !2042, !DIExpression(), !3205)
    #dbg_value(i32 %6, !2045, !DIExpression(), !3205)
  %cond.i4.i192 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i191, i32 %6), !dbg !3207
    #dbg_value(i32 %cond.i4.i192, !2296, !DIExpression(), !3200)
  %conv117 = trunc i32 %cond.i4.i192 to i16, !dbg !3208
  store i16 %conv117, ptr %add.ptr, align 2, !dbg !3209
  %sub119 = sub nsw i32 %conv53, %cond.i4.i190, !dbg !3210
    #dbg_value(i32 %6, !2293, !DIExpression(), !3211)
    #dbg_value(i32 %sub119, !2296, !DIExpression(), !3211)
    #dbg_value(i32 %sub119, !2033, !DIExpression(), !3213)
    #dbg_value(i32 0, !2038, !DIExpression(), !3213)
  %cond.i.i193 = tail call noundef i32 @llvm.smax.i32(i32 %sub119, i32 0), !dbg !3215
    #dbg_value(i32 %cond.i.i193, !2296, !DIExpression(), !3211)
    #dbg_value(i32 %cond.i.i193, !2042, !DIExpression(), !3216)
    #dbg_value(i32 %6, !2045, !DIExpression(), !3216)
  %cond.i4.i194 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i193, i32 %6), !dbg !3218
    #dbg_value(i32 %cond.i4.i194, !2296, !DIExpression(), !3211)
  br label %if.end126.sink.split, !dbg !3219

if.end126.sink.split:                             ; preds = %if.then113, %if.then78
  %shr95.sink = phi i32 [ %shr95, %if.then78 ], [ %cond.i4.i194, %if.then113 ]
  %conv96 = trunc i32 %shr95.sink to i16, !dbg !3220
  store i16 %conv96, ptr %add.ptr52, align 2, !dbg !3220
  br label %if.end126, !dbg !3221

if.end126:                                        ; preds = %if.end126.sink.split, %if.then51, %if.then67, %if.else, %if.then59, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %cur_img.0203, i64 8, !dbg !3221
    #dbg_value(ptr %incdec.ptr, !3026, !DIExpression(), !3123)
  %inc = add nuw nsw i32 %pel.0204, 1, !dbg !3222
    #dbg_value(i32 %inc, !3024, !DIExpression(), !3123)
  %exitcond.not = icmp eq i32 %inc, %16, !dbg !3125
  br i1 %exitcond.not, label %if.end128, label %for.body, !dbg !3126, !llvm.loop !3223

if.end128:                                        ; preds = %if.end126, %if.then27, %lor.lhs.false, %if.then
  ret void, !dbg !3225
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @EdgeLoopChromaHor(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #3 !dbg !3226 {
entry:
    #dbg_value(ptr %Img, !3228, !DIExpression(), !3280)
    #dbg_value(ptr %Strength, !3229, !DIExpression(), !3280)
    #dbg_value(ptr %MbQ, !3230, !DIExpression(), !3280)
    #dbg_value(i32 %edge, !3231, !DIExpression(), !3280)
    #dbg_value(i32 %uv, !3232, !DIExpression(), !3280)
    #dbg_value(ptr %p, !3233, !DIExpression(), !3280)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !3281
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !3281
    #dbg_value(ptr %0, !3234, !DIExpression(), !3280)
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108, !dbg !3282
  %1 = load i32, ptr %mb_cr_size_x, align 4, !dbg !3282
    #dbg_value(i32 %1, !3235, !DIExpression(), !3280)
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112, !dbg !3283
  %2 = load i32, ptr %mb_cr_size_y, align 8, !dbg !3283
    #dbg_value(i32 %2, !3236, !DIExpression(), !3280)
    #dbg_value(i32 0, !3237, !DIExpression(), !3280)
  %cmp = icmp slt i32 %edge, 16, !dbg !3284
  %sub = add nsw i32 %edge, -1, !dbg !3285
  %cond = select i1 %cmp, i32 %sub, i32 0, !dbg !3285
    #dbg_value(i32 %cond, !3238, !DIExpression(), !3280)
    #dbg_value(ptr %MbQ, !3053, !DIExpression(), !3286)
    #dbg_value(i32 0, !3058, !DIExpression(), !3286)
    #dbg_value(i32 %cond, !3059, !DIExpression(), !3286)
    #dbg_value(i32 %1, !3060, !DIExpression(), !3286)
    #dbg_value(i32 %2, !3061, !DIExpression(), !3286)
  %cmp4.i = icmp sgt i32 %1, 0, !dbg !3288
  br i1 %cmp4.i, label %if.then5.i, label %lor.lhs.false, !dbg !3289

if.then5.i:                                       ; preds = %entry
  %cmp6.i = icmp slt i32 %cond, 0, !dbg !3290
  br i1 %cmp6.i, label %get_non_aff_neighbor_chroma.exit, label %if.else8.i, !dbg !3293

if.else8.i:                                       ; preds = %if.then5.i
  %cmp9.i = icmp slt i32 %cond, %2, !dbg !3294
  br i1 %cmp9.i, label %if.then, label %lor.lhs.false, !dbg !3296

get_non_aff_neighbor_chroma.exit:                 ; preds = %if.then5.i
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136, !dbg !3297
  %3 = load ptr, ptr %mbup.i, align 8, !dbg !3297
    #dbg_value(ptr %3, !3239, !DIExpression(), !3280)
  %tobool.not = icmp eq ptr %3, null, !dbg !3298
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !dbg !3299

lor.lhs.false:                                    ; preds = %entry, %if.else8.i, %get_non_aff_neighbor_chroma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !3300
  %4 = load i16, ptr %DFDisableIdc, align 8, !dbg !3300
  %cmp2 = icmp ne i16 %4, 0, !dbg !3301
  tail call void @llvm.assume(i1 %cmp2), !dbg !3302
  br label %if.end137, !dbg !3302

if.then:                                          ; preds = %if.else8.i, %get_non_aff_neighbor_chroma.exit
  %retval.0.i211 = phi ptr [ %3, %get_non_aff_neighbor_chroma.exit ], [ %MbQ, %if.else8.i ]
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 849048, !dbg !3303
  %5 = load i32, ptr %arrayidx, align 4, !dbg !3303
    #dbg_value(i32 %5, !3240, !DIExpression(), !3304)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !3305
  %add = add nsw i32 %uv, 1, !dbg !3306
  %idxprom = sext i32 %add to i64, !dbg !3307
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom, !dbg !3307
  %6 = load i32, ptr %arrayidx5, align 4, !dbg !3307
    #dbg_value(i32 %6, !3243, !DIExpression(), !3304)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !3308
  %7 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !3308
  %conv6 = sext i16 %7 to i32, !dbg !3309
    #dbg_value(i32 %conv6, !3244, !DIExpression(), !3304)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !3310
  %8 = load i16, ptr %DFBetaOffset, align 4, !dbg !3310
  %conv7 = sext i16 %8 to i32, !dbg !3311
    #dbg_value(i32 %conv7, !3245, !DIExpression(), !3304)
    #dbg_value(i32 poison, !3246, !DIExpression(), !3304)
  %qpc = getelementptr inbounds i8, ptr %retval.0.i211, i64 72, !dbg !3312
  %idxprom8 = sext i32 %uv to i64, !dbg !3313
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom8, !dbg !3313
  %9 = load i32, ptr %arrayidx9, align 4, !dbg !3313
  %qpc10 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !3314
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %qpc10, i64 0, i64 %idxprom8, !dbg !3315
  %10 = load i32, ptr %arrayidx12, align 4, !dbg !3315
  %add13 = add i32 %9, 1, !dbg !3316
  %add14 = add i32 %add13, %10, !dbg !3317
  %shr = ashr i32 %add14, 1, !dbg !3318
    #dbg_value(i32 %shr, !3247, !DIExpression(), !3304)
  %add15 = add nsw i32 %shr, %conv6, !dbg !3319
    #dbg_value(i32 0, !2024, !DIExpression(), !3320)
    #dbg_value(i32 51, !2029, !DIExpression(), !3320)
    #dbg_value(i32 %add15, !2030, !DIExpression(), !3320)
    #dbg_value(i32 %add15, !2033, !DIExpression(), !3322)
    #dbg_value(i32 0, !2038, !DIExpression(), !3322)
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add15, i32 0), !dbg !3324
    #dbg_value(i32 %cond.i.i, !2030, !DIExpression(), !3320)
    #dbg_value(i32 %cond.i.i, !2042, !DIExpression(), !3325)
    #dbg_value(i32 51, !2045, !DIExpression(), !3325)
  %11 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !3327
    #dbg_value(i32 %11, !2030, !DIExpression(), !3320)
    #dbg_value(i32 %11, !3248, !DIExpression(), !3304)
  %add17 = add nsw i32 %shr, %conv7, !dbg !3328
    #dbg_value(i32 0, !2024, !DIExpression(), !3329)
    #dbg_value(i32 51, !2029, !DIExpression(), !3329)
    #dbg_value(i32 %add17, !2030, !DIExpression(), !3329)
    #dbg_value(i32 %add17, !2033, !DIExpression(), !3331)
    #dbg_value(i32 0, !2038, !DIExpression(), !3331)
  %cond.i.i199 = tail call noundef i32 @llvm.smax.i32(i32 %add17, i32 0), !dbg !3333
    #dbg_value(i32 %cond.i.i199, !2030, !DIExpression(), !3329)
    #dbg_value(i32 %cond.i.i199, !2042, !DIExpression(), !3334)
    #dbg_value(i32 51, !2045, !DIExpression(), !3334)
  %12 = tail call i32 @llvm.umin.i32(i32 %cond.i.i199, i32 51), !dbg !3336
    #dbg_value(i32 %12, !2030, !DIExpression(), !3329)
    #dbg_value(i32 %12, !3249, !DIExpression(), !3304)
  %idxprom19 = zext nneg i32 %11 to i64, !dbg !3337
  %arrayidx20 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom19, !dbg !3337
  %13 = load i8, ptr %arrayidx20, align 1, !dbg !3337
  %conv21 = zext i8 %13 to i32, !dbg !3337
  %mul = mul nsw i32 %5, %conv21, !dbg !3338
    #dbg_value(i32 %mul, !3250, !DIExpression(), !3304)
  %idxprom22 = zext nneg i32 %12 to i64, !dbg !3339
  %arrayidx23 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom22, !dbg !3339
  %14 = load i8, ptr %arrayidx23, align 1, !dbg !3339
  %conv24 = zext i8 %14 to i32, !dbg !3339
  %mul25 = mul nsw i32 %5, %conv24, !dbg !3340
    #dbg_value(i32 %mul25, !3251, !DIExpression(), !3304)
  %or = or i32 %mul25, %mul, !dbg !3341
  %cmp26.not = icmp eq i32 %or, 0, !dbg !3342
  br i1 %cmp26.not, label %if.end137, label %if.then28, !dbg !3343

if.then28:                                        ; preds = %if.then
  %iChromaStride = getelementptr inbounds i8, ptr %p, i64 360, !dbg !3344
  %15 = load i32, ptr %iChromaStride, align 8, !dbg !3344
    #dbg_value(i32 %15, !3246, !DIExpression(), !3304)
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !3345
  %16 = load i32, ptr %chroma_format_idc, align 4, !dbg !3345
  %idxprom29 = sext i32 %16 to i64, !dbg !3346
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom29, !dbg !3346
  %17 = load i32, ptr %arrayidx30, align 4, !dbg !3346
    #dbg_value(i32 %17, !3252, !DIExpression(), !3347)
  %arrayidx32 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom19, !dbg !3348
    #dbg_value(ptr %arrayidx32, !3255, !DIExpression(), !3347)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
  %idx.ext = sext i32 %15 to i64, !dbg !3349
    #dbg_value(!DIArgList(ptr poison, i64 poison, i32 poison), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
    #dbg_value(i32 0, !3256, !DIExpression(), !3347)
    #dbg_value(!DIArgList(ptr poison, i32 poison), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
  %cmp42216 = icmp sgt i32 %17, 0, !dbg !3350
  br i1 %cmp42216, label %for.body.lr.ph, label %if.end137, !dbg !3351

for.body.lr.ph:                                   ; preds = %if.then28
  %pix_c_y = getelementptr inbounds i8, ptr %retval.0.i211, i64 56, !dbg !3352
  %18 = load i32, ptr %pix_c_y, align 8, !dbg !3352
  %sub33 = add nsw i32 %2, -1, !dbg !3352
  %and = and i32 %sub33, %cond, !dbg !3352
  %add34 = add nsw i32 %18, %and, !dbg !3352
  %idxprom35 = sext i32 %add34 to i64, !dbg !3353
  %arrayidx36 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom35, !dbg !3353
  %19 = load ptr, ptr %arrayidx36, align 8, !dbg !3353
  %pix_c_x = getelementptr inbounds i8, ptr %retval.0.i211, i64 52, !dbg !3354
  %20 = load i32, ptr %pix_c_x, align 4, !dbg !3354
    #dbg_value(!DIArgList(ptr %19, i64 %idx.ext, i32 %20), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
    #dbg_value(!DIArgList(ptr %19, i32 %20), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
  %idxprom40 = sext i32 %20 to i64, !dbg !3353
    #dbg_value(!DIArgList(ptr %19, i64 %idx.ext, i64 %idxprom40), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
    #dbg_value(!DIArgList(ptr %19, i64 %idxprom40), !3257, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
  %arrayidx41 = getelementptr inbounds i16, ptr %19, i64 %idxprom40, !dbg !3353
    #dbg_value(!DIArgList(ptr %arrayidx41, i64 %idx.ext), !3258, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3347)
    #dbg_value(ptr %arrayidx41, !3257, !DIExpression(), !3347)
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx41, i64 %idx.ext, !dbg !3349
    #dbg_value(ptr %add.ptr, !3258, !DIExpression(), !3347)
  %cmp44 = icmp eq i32 %17, 8
  %idx.neg = sub nsw i64 0, %idx.ext
  br label %for.body, !dbg !3351

for.body:                                         ; preds = %for.body.lr.ph, %if.end134
  %pel.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end134 ]
  %imgP.0218 = phi ptr [ %arrayidx41, %for.body.lr.ph ], [ %incdec.ptr, %if.end134 ]
  %imgQ.0217 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr135, %if.end134 ]
    #dbg_value(i32 %pel.0219, !3256, !DIExpression(), !3347)
    #dbg_value(ptr %imgP.0218, !3257, !DIExpression(), !3347)
    #dbg_value(ptr %imgQ.0217, !3258, !DIExpression(), !3347)
  %21 = shl nuw i32 %pel.0219, 1, !dbg !3355
  %shl = and i32 %21, -4, !dbg !3355
  %and48 = and i32 %pel.0219, 1, !dbg !3355
  %add49 = or disjoint i32 %shl, %and48, !dbg !3355
  %cond52 = select i1 %cmp44, i32 %add49, i32 %pel.0219, !dbg !3355
  %idxprom53 = sext i32 %cond52 to i64, !dbg !3356
  %arrayidx54 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom53, !dbg !3356
  %22 = load i8, ptr %arrayidx54, align 1, !dbg !3356
    #dbg_value(i8 %22, !3259, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3357)
  %cmp56.not = icmp eq i8 %22, 0, !dbg !3358
  br i1 %cmp56.not, label %if.end134, label %if.then58, !dbg !3359

if.then58:                                        ; preds = %for.body
    #dbg_value(ptr %imgP.0218, !3263, !DIExpression(), !3360)
    #dbg_value(ptr %imgQ.0217, !3266, !DIExpression(), !3360)
  %23 = load i16, ptr %imgQ.0217, align 2, !dbg !3361
  %conv59 = zext i16 %23 to i32, !dbg !3361
  %24 = load i16, ptr %imgP.0218, align 2, !dbg !3362
  %conv60 = zext i16 %24 to i32, !dbg !3362
  %sub61 = sub nsw i32 %conv59, %conv60, !dbg !3363
    #dbg_value(i32 %sub61, !3267, !DIExpression(), !3360)
    #dbg_value(i32 %sub61, !80, !DIExpression(), !3364)
    #dbg_value(i32 %sub61, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3364)
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub61, i1 true), !dbg !3366
  %cmp63 = icmp slt i32 %sub.i, %mul, !dbg !3367
  br i1 %cmp63, label %if.then65, label %if.end134, !dbg !3368

if.then65:                                        ; preds = %if.then58
  %add.ptr67 = getelementptr inbounds i16, ptr %imgQ.0217, i64 %idx.ext, !dbg !3369
  %25 = load i16, ptr %add.ptr67, align 2, !dbg !3370
    #dbg_value(i16 %25, !3268, !DIExpression(), !3371)
  %conv69 = zext i16 %25 to i32, !dbg !3372
  %sub70 = sub nsw i32 %conv59, %conv69, !dbg !3373
    #dbg_value(i32 %sub70, !80, !DIExpression(), !3374)
    #dbg_value(i32 %sub70, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3374)
  %sub.i201 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true), !dbg !3376
  %cmp72 = icmp slt i32 %sub.i201, %mul25, !dbg !3377
  br i1 %cmp72, label %if.then74, label %if.end134, !dbg !3378

if.then74:                                        ; preds = %if.then65
  %add.ptr76 = getelementptr inbounds i16, ptr %imgP.0218, i64 %idx.neg, !dbg !3379
  %26 = load i16, ptr %add.ptr76, align 2, !dbg !3380
    #dbg_value(i16 %26, !3271, !DIExpression(), !3381)
  %conv78 = zext i16 %26 to i32, !dbg !3382
  %sub79 = sub nsw i32 %conv60, %conv78, !dbg !3383
    #dbg_value(i32 %sub79, !80, !DIExpression(), !3384)
    #dbg_value(i32 %sub79, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3384)
  %sub.i202 = tail call i32 @llvm.abs.i32(i32 %sub79, i1 true), !dbg !3386
  %cmp81 = icmp ult i32 %sub.i202, %mul25, !dbg !3387
  br i1 %cmp81, label %if.then83, label %if.end134, !dbg !3388

if.then83:                                        ; preds = %if.then74
  %cmp84 = icmp eq i8 %22, 4, !dbg !3389
  br i1 %cmp84, label %if.then86, label %if.else, !dbg !3390

if.then86:                                        ; preds = %if.then83
  %shl88 = shl nuw nsw i32 %conv78, 1, !dbg !3391
  %add90 = add nuw nsw i32 %conv60, 2, !dbg !3393
  %add92 = add nuw nsw i32 %add90, %conv69, !dbg !3394
  %add93 = add nuw nsw i32 %add92, %shl88, !dbg !3395
  %shr94 = lshr i32 %add93, 2, !dbg !3396
  %conv95 = trunc nuw i32 %shr94 to i16, !dbg !3397
  store i16 %conv95, ptr %imgP.0218, align 2, !dbg !3398
  %shl97 = shl nuw nsw i32 %conv69, 1, !dbg !3399
  %27 = load i16, ptr %imgQ.0217, align 2, !dbg !3400
  %conv98 = zext i16 %27 to i32, !dbg !3400
  %add99 = add nuw nsw i32 %shl97, 2, !dbg !3401
  %add101 = add nuw nsw i32 %add99, %conv78, !dbg !3402
  %add102 = add nuw nsw i32 %add101, %conv98, !dbg !3403
  %shr103 = lshr i32 %add102, 2, !dbg !3404
  br label %if.end134.sink.split, !dbg !3405

if.else:                                          ; preds = %if.then83
  %idxprom105 = zext i8 %22 to i64, !dbg !3406
  %arrayidx106 = getelementptr inbounds i8, ptr %arrayidx32, i64 %idxprom105, !dbg !3406
  %28 = load i8, ptr %arrayidx106, align 1, !dbg !3406
  %conv107 = zext i8 %28 to i32, !dbg !3406
  %mul108 = mul nsw i32 %5, %conv107, !dbg !3407
    #dbg_value(i32 %mul108, !3274, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3408)
    #dbg_value(i32 %mul108, !2024, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3409)
    #dbg_value(i32 %mul108, !2029, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3409)
    #dbg_value(i32 poison, !2030, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3409)
    #dbg_value(i32 poison, !2033, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3411)
    #dbg_value(i32 %mul108, !2038, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3411)
  %29 = shl nsw i32 %sub61, 2, !dbg !3413
  %30 = add nsw i32 %conv69, -5, !dbg !3414
  %31 = add nsw i32 %29, %conv78, !dbg !3414
  %32 = sub nsw i32 %30, %31, !dbg !3414
  %33 = ashr i32 %32, 3, !dbg !3414
  %34 = tail call i32 @llvm.smin.i32(i32 %mul108, i32 %33), !dbg !3414
    #dbg_value(i32 %34, !2030, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3409)
    #dbg_value(i32 %34, !2042, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3415)
    #dbg_value(i32 %mul108, !2045, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3415)
  %35 = sub i32 -2, %mul108, !dbg !3417
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %35), !dbg !3417
    #dbg_value(i32 %36, !2030, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3409)
    #dbg_value(i32 %36, !3279, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3408)
  %cmp119.not = icmp eq i32 %36, -1, !dbg !3418
  br i1 %cmp119.not, label %if.end134, label %if.then121, !dbg !3420

if.then121:                                       ; preds = %if.else
  %cond.i4.i204 = xor i32 %36, -1, !dbg !3417
    #dbg_value(i32 %cond.i4.i204, !2030, !DIExpression(), !3409)
    #dbg_value(i32 %cond.i4.i204, !3279, !DIExpression(), !3408)
  %add123 = add nsw i32 %cond.i4.i204, %conv60, !dbg !3421
    #dbg_value(i32 %6, !2293, !DIExpression(), !3423)
    #dbg_value(i32 %add123, !2296, !DIExpression(), !3423)
    #dbg_value(i32 %add123, !2033, !DIExpression(), !3425)
    #dbg_value(i32 0, !2038, !DIExpression(), !3425)
  %cond.i.i205 = tail call noundef i32 @llvm.smax.i32(i32 %add123, i32 0), !dbg !3427
    #dbg_value(i32 %cond.i.i205, !2296, !DIExpression(), !3423)
    #dbg_value(i32 %cond.i.i205, !2042, !DIExpression(), !3428)
    #dbg_value(i32 %6, !2045, !DIExpression(), !3428)
  %cond.i4.i206 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i205, i32 %6), !dbg !3430
    #dbg_value(i32 %cond.i4.i206, !2296, !DIExpression(), !3423)
  %conv125 = trunc i32 %cond.i4.i206 to i16, !dbg !3431
  store i16 %conv125, ptr %imgP.0218, align 2, !dbg !3432
  %37 = load i16, ptr %imgQ.0217, align 2, !dbg !3433
  %conv126 = zext i16 %37 to i32, !dbg !3433
  %sub127 = sub nsw i32 %conv126, %cond.i4.i204, !dbg !3434
    #dbg_value(i32 %6, !2293, !DIExpression(), !3435)
    #dbg_value(i32 %sub127, !2296, !DIExpression(), !3435)
    #dbg_value(i32 %sub127, !2033, !DIExpression(), !3437)
    #dbg_value(i32 0, !2038, !DIExpression(), !3437)
  %cond.i.i207 = tail call noundef i32 @llvm.smax.i32(i32 %sub127, i32 0), !dbg !3439
    #dbg_value(i32 %cond.i.i207, !2296, !DIExpression(), !3435)
    #dbg_value(i32 %cond.i.i207, !2042, !DIExpression(), !3440)
    #dbg_value(i32 %6, !2045, !DIExpression(), !3440)
  %cond.i4.i208 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i207, i32 %6), !dbg !3442
    #dbg_value(i32 %cond.i4.i208, !2296, !DIExpression(), !3435)
  br label %if.end134.sink.split, !dbg !3443

if.end134.sink.split:                             ; preds = %if.then121, %if.then86
  %shr103.sink = phi i32 [ %shr103, %if.then86 ], [ %cond.i4.i208, %if.then121 ]
  %conv104 = trunc i32 %shr103.sink to i16, !dbg !3444
  store i16 %conv104, ptr %imgQ.0217, align 2, !dbg !3444
  br label %if.end134, !dbg !3445

if.end134:                                        ; preds = %if.end134.sink.split, %if.then58, %if.then74, %if.else, %if.then65, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %imgP.0218, i64 2, !dbg !3445
    #dbg_value(ptr %incdec.ptr, !3257, !DIExpression(), !3347)
  %incdec.ptr135 = getelementptr inbounds i8, ptr %imgQ.0217, i64 2, !dbg !3446
    #dbg_value(ptr %incdec.ptr135, !3258, !DIExpression(), !3347)
  %inc = add nuw nsw i32 %pel.0219, 1, !dbg !3447
    #dbg_value(i32 %inc, !3256, !DIExpression(), !3347)
  %exitcond.not = icmp eq i32 %inc, %17, !dbg !3350
  br i1 %exitcond.not, label %if.end137, label %for.body, !dbg !3351, !llvm.loop !3448

if.end137:                                        ; preds = %if.end134, %if.then28, %lor.lhs.false, %if.then
  ret void, !dbg !3450
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "po2", scope: !2, file: !76, line: 247, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !72, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/loop_filter_normal.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "5ded8f1c395a8672df7fb929e81cd4d3")
!4 = !{!5, !14, !20, !29, !36, !44, !52, !59}
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
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 142, baseType: !31, size: 32, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "P_SLICE", value: 0)
!47 = !DIEnumerator(name: "B_SLICE", value: 1)
!48 = !DIEnumerator(name: "I_SLICE", value: 2)
!49 = !DIEnumerator(name: "SP_SLICE", value: 3)
!50 = !DIEnumerator(name: "SI_SLICE", value: 4)
!51 = !DIEnumerator(name: "NUM_SLICE_TYPES", value: 5)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 34, baseType: !31, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "LIST_0", value: 0)
!55 = !DIEnumerator(name: "LIST_1", value: 1)
!56 = !DIEnumerator(name: "BI_PRED", value: 2)
!57 = !DIEnumerator(name: "BI_PRED_L0", value: 3)
!58 = !DIEnumerator(name: "BI_PRED_L1", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 166, baseType: !31, size: 32, elements: !60)
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "IS_LUMA", value: 0)
!62 = !DIEnumerator(name: "IS_CHROMA", value: 1)
!63 = !{!64, !67, !68, !69}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !65, line: 21, baseType: !66)
!65 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !65, line: 41, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !65, line: 23, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !{!0, !73, !83, !90, !92, !97}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "INT_BITS", scope: !75, file: !76, line: 118, type: !82, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "iabs", scope: !76, file: !76, line: 116, type: !77, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!76 = !DIFile(filename: "ldecod_src/inc/ifunctions.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "279401589ed56df99e287ad9e5fc564b")
!77 = !DISubroutineType(types: !78)
!78 = !{!7, !7}
!79 = !{!80, !81}
!80 = !DILocalVariable(name: "x", arg: 1, scope: !75, file: !76, line: 116, type: !7)
!81 = !DILocalVariable(name: "y", scope: !75, file: !76, line: 119, type: !7)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "ALPHA_TABLE", scope: !2, file: !85, line: 36, type: !86, isLocal: true, isDefinition: true)
!85 = !DIFile(filename: "ldecod_src/inc/loop_filter.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "774c4ea00ab9834861f6c14263c9e78a")
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 416, elements: !88)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!88 = !{!89}
!89 = !DISubrange(count: 52)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "BETA_TABLE", scope: !2, file: !85, line: 37, type: !86, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "CLIP_TAB", scope: !2, file: !85, line: 38, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2080, elements: !95)
!95 = !{!89, !96}
!96 = !DISubrange(count: 5)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "pelnum_cr", scope: !2, file: !85, line: 60, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !100)
!100 = !{!101, !102}
!101 = !DISubrange(count: 2)
!102 = !DISubrange(count: 4)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 4096, elements: !112)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !106, line: 104, baseType: !107)
!106 = !DIFile(filename: "ldecod_src/inc/win32.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "100def0ffeee72ecdc377183538a04bb")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !108, line: 27, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !110, line: 45, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!113}
!113 = !DISubrange(count: 64)
!114 = !{i32 7, !"Dwarf Version", i32 5}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{i32 1, !"wchar_size", i32 4}
!117 = !{i32 8, !"PIC Level", i32 2}
!118 = !{i32 7, !"PIE Level", i32 2}
!119 = !{i32 7, !"uwtable", i32 2}
!120 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!121 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!122 = distinct !DISubprogram(name: "set_loop_filter_functions_normal", scope: !3, file: !3, line: 37, type: !123, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoParameters", file: !127, line: 836, baseType: !128)
!127 = !DIFile(filename: "ldecod_src/inc/global.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "c4ca3c417c5616a2ff6b6266e7376fc1")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_par", file: !127, line: 566, size: 6855040, elements: !129)
!129 = !{!130, !215, !268, !371, !373, !375, !433, !435, !436, !437, !438, !439, !442, !461, !473, !474, !475, !476, !477, !478, !1041, !1042, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1052, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1064, !1065, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1189, !1190, !1192, !1193, !1196, !1199, !1200, !1201, !1205, !1208, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1220, !1223, !1224, !1225, !1226, !1229, !1234, !1238, !1242, !1246, !1247, !1251, !1252, !1256, !1257, !1261, !1282, !1283, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !128, file: !127, line: 568, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inp_par", file: !127, line: 850, size: 32128, elements: !133)
!133 = !{!134, !139, !140, !141, !142, !143, !144, !145, !146, !147, !177, !178, !179, !180, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !132, file: !127, line: 852, baseType: !135, size: 2040)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2040, elements: !137)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!137 = !{!138}
!138 = !DISubrange(count: 255)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "outfile", scope: !132, file: !127, line: 853, baseType: !135, size: 2040, offset: 2040)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reffile", scope: !132, file: !127, line: 854, baseType: !135, size: 2040, offset: 4080)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "FileFormat", scope: !132, file: !127, line: 856, baseType: !7, size: 32, offset: 6144)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ref_offset", scope: !132, file: !127, line: 857, baseType: !7, size: 32, offset: 6176)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "poc_scale", scope: !132, file: !127, line: 858, baseType: !7, size: 32, offset: 6208)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "write_uv", scope: !132, file: !127, line: 859, baseType: !7, size: 32, offset: 6240)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !132, file: !127, line: 860, baseType: !7, size: 32, offset: 6272)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "intra_profile_deblocking", scope: !132, file: !127, line: 861, baseType: !7, size: 32, offset: 6304)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !132, file: !127, line: 864, baseType: !148, size: 1088, offset: 6336)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameFormat", file: !6, line: 52, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_format", file: !6, line: 30, size: 1088, elements: !150)
!150 = !{!151, !153, !155, !157, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !149, file: !6, line: 32, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorFormat", file: !6, line: 28, baseType: !5)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "color_model", scope: !149, file: !6, line: 33, baseType: !154, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorModel", file: !6, line: 20, baseType: !14)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "frame_rate", scope: !149, file: !6, line: 34, baseType: !156, size: 64, offset: 64)
!156 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !149, file: !6, line: 35, baseType: !158, size: 96, offset: 128)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 3)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !149, file: !6, line: 36, baseType: !158, size: 96, offset: 224)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right", scope: !149, file: !6, line: 37, baseType: !7, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom", scope: !149, file: !6, line: 38, baseType: !7, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_right_cr", scope: !149, file: !6, line: 39, baseType: !7, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "auto_crop_bottom_cr", scope: !149, file: !6, line: 40, baseType: !7, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "width_crop", scope: !149, file: !6, line: 41, baseType: !7, size: 32, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "height_crop", scope: !149, file: !6, line: 42, baseType: !7, size: 32, offset: 480)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mb_width", scope: !149, file: !6, line: 43, baseType: !7, size: 32, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mb_height", scope: !149, file: !6, line: 44, baseType: !7, size: 32, offset: 544)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "size_cmp", scope: !149, file: !6, line: 45, baseType: !158, size: 96, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !6, line: 46, baseType: !7, size: 32, offset: 672)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth", scope: !149, file: !6, line: 47, baseType: !158, size: 96, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !149, file: !6, line: 48, baseType: !158, size: 96, offset: 800)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "max_value_sq", scope: !149, file: !6, line: 49, baseType: !158, size: 96, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !149, file: !6, line: 50, baseType: !7, size: 32, offset: 992)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_shift3", scope: !149, file: !6, line: 51, baseType: !7, size: 32, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !132, file: !127, line: 865, baseType: !148, size: 1088, offset: 7424)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessInput", scope: !132, file: !127, line: 867, baseType: !7, size: 32, offset: 8512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "enable_32_pulldown", scope: !132, file: !127, line: 868, baseType: !7, size: 32, offset: 8544)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "input_file1", scope: !132, file: !127, line: 869, baseType: !181, size: 7744, offset: 8576)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoDataFile", file: !21, line: 60, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_data_file", file: !21, line: 34, size: 7744, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !182, file: !21, line: 37, baseType: !135, size: 2040)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fhead", scope: !182, file: !21, line: 38, baseType: !135, size: 2040, offset: 2040)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ftail", scope: !182, file: !21, line: 39, baseType: !135, size: 2040, offset: 4080)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_num", scope: !182, file: !21, line: 40, baseType: !7, size: 32, offset: 6144)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "vdtype", scope: !182, file: !21, line: 41, baseType: !189, size: 32, offset: 6176)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VideoFileType", file: !21, line: 32, baseType: !20)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !182, file: !21, line: 42, baseType: !148, size: 1088, offset: 6208)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "is_concatenated", scope: !182, file: !21, line: 43, baseType: !7, size: 32, offset: 7296)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "is_interleaved", scope: !182, file: !21, line: 44, baseType: !7, size: 32, offset: 7328)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "zero_pad", scope: !182, file: !21, line: 45, baseType: !7, size: 32, offset: 7360)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "num_digits", scope: !182, file: !21, line: 46, baseType: !7, size: 32, offset: 7392)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !182, file: !21, line: 47, baseType: !7, size: 32, offset: 7424)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "end_frame", scope: !182, file: !21, line: 48, baseType: !7, size: 32, offset: 7456)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nframes", scope: !182, file: !21, line: 49, baseType: !7, size: 32, offset: 7488)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_size", scope: !182, file: !21, line: 50, baseType: !7, size: 32, offset: 7520)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_size", scope: !182, file: !21, line: 51, baseType: !7, size: 32, offset: 7552)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "crop_x_offset", scope: !182, file: !21, line: 52, baseType: !7, size: 32, offset: 7584)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "crop_y_offset", scope: !182, file: !21, line: 53, baseType: !7, size: 32, offset: 7616)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "avi", scope: !182, file: !21, line: 56, baseType: !68, size: 64, offset: 7680)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "input_file2", scope: !132, file: !127, line: 870, baseType: !181, size: 7744, offset: 16320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "input_file3", scope: !132, file: !127, line: 871, baseType: !181, size: 7744, offset: 24064)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "DecodeAllLayers", scope: !132, file: !127, line: 873, baseType: !7, size: 32, offset: 31808)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !132, file: !127, line: 884, baseType: !7, size: 32, offset: 31840)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !132, file: !127, line: 885, baseType: !7, size: 32, offset: 31872)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !132, file: !127, line: 886, baseType: !7, size: 32, offset: 31904)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !132, file: !127, line: 890, baseType: !7, size: 32, offset: 31936)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "stdRange", scope: !132, file: !127, line: 893, baseType: !7, size: 32, offset: 31968)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "videoCode", scope: !132, file: !127, line: 894, baseType: !7, size: 32, offset: 32000)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "export_views", scope: !132, file: !127, line: 895, baseType: !7, size: 32, offset: 32032)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "iDecFrmNum", scope: !132, file: !127, line: 897, baseType: !7, size: 32, offset: 32064)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bDisplayDecParams", scope: !132, file: !127, line: 899, baseType: !7, size: 32, offset: 32096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !128, file: !127, line: 569, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !218, line: 138, baseType: !219)
!218 = !DIFile(filename: "ldecod_src/inc/parsetcommon.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "d59d7e00f3aec3a23ed88314ae35b687")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 94, size: 17728, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !231, !236, !239, !242, !243, !244, !245, !246, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !219, file: !218, line: 96, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !219, file: !218, line: 97, baseType: !31, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !219, file: !218, line: 98, baseType: !31, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !219, file: !218, line: 99, baseType: !7, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !219, file: !218, line: 100, baseType: !7, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !219, file: !218, line: 102, baseType: !7, size: 32, offset: 160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !219, file: !218, line: 103, baseType: !228, size: 384, offset: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 12)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !219, file: !218, line: 104, baseType: !232, size: 3072, offset: 576)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3072, elements: !233)
!233 = !{!234, !235}
!234 = !DISubrange(count: 6)
!235 = !DISubrange(count: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !219, file: !218, line: 105, baseType: !237, size: 12288, offset: 3648)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 12288, elements: !238)
!238 = !{!234, !113}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !219, file: !218, line: 106, baseType: !240, size: 192, offset: 15936)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !241)
!241 = !{!234}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !219, file: !218, line: 107, baseType: !240, size: 192, offset: 16128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_pic_order_in_frame_present_flag", scope: !219, file: !218, line: 110, baseType: !7, size: 32, offset: 16320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !219, file: !218, line: 111, baseType: !31, size: 32, offset: 16352)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !219, file: !218, line: 112, baseType: !31, size: 32, offset: 16384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !219, file: !218, line: 114, baseType: !247, size: 256, offset: 16416)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !219, file: !218, line: 116, baseType: !247, size: 256, offset: 16672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !219, file: !218, line: 117, baseType: !247, size: 256, offset: 16928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !219, file: !218, line: 119, baseType: !7, size: 32, offset: 17184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !219, file: !218, line: 120, baseType: !31, size: 32, offset: 17216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !219, file: !218, line: 122, baseType: !31, size: 32, offset: 17248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !219, file: !218, line: 123, baseType: !256, size: 64, offset: 17280)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !219, file: !218, line: 125, baseType: !7, size: 32, offset: 17344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !219, file: !218, line: 126, baseType: !7, size: 32, offset: 17376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !219, file: !218, line: 127, baseType: !7, size: 32, offset: 17408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !219, file: !218, line: 128, baseType: !31, size: 32, offset: 17440)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !219, file: !218, line: 129, baseType: !7, size: 32, offset: 17472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !219, file: !218, line: 130, baseType: !7, size: 32, offset: 17504)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !219, file: !218, line: 131, baseType: !7, size: 32, offset: 17536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "second_chroma_qp_index_offset", scope: !219, file: !218, line: 133, baseType: !7, size: 32, offset: 17568)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !219, file: !218, line: 135, baseType: !7, size: 32, offset: 17600)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !219, file: !218, line: 136, baseType: !7, size: 32, offset: 17632)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !219, file: !218, line: 137, baseType: !7, size: 32, offset: 17664)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !128, file: !127, line: 570, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !218, line: 197, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 142, size: 33024, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !369, !370}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !271, file: !218, line: 144, baseType: !7, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !271, file: !218, line: 146, baseType: !31, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !271, file: !218, line: 147, baseType: !7, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !271, file: !218, line: 148, baseType: !7, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !271, file: !218, line: 149, baseType: !7, size: 32, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !271, file: !218, line: 150, baseType: !7, size: 32, offset: 160)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set4_flag", scope: !271, file: !218, line: 152, baseType: !7, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !271, file: !218, line: 154, baseType: !31, size: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !271, file: !218, line: 155, baseType: !31, size: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !271, file: !218, line: 156, baseType: !31, size: 32, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !271, file: !218, line: 158, baseType: !7, size: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !271, file: !218, line: 159, baseType: !228, size: 384, offset: 352)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList4x4", scope: !271, file: !218, line: 160, baseType: !232, size: 3072, offset: 736)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ScalingList8x8", scope: !271, file: !218, line: 161, baseType: !237, size: 12288, offset: 3808)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix4x4Flag", scope: !271, file: !218, line: 162, baseType: !240, size: 192, offset: 16096)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "UseDefaultScalingMatrix8x8Flag", scope: !271, file: !218, line: 163, baseType: !240, size: 192, offset: 16288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !271, file: !218, line: 165, baseType: !31, size: 32, offset: 16480)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !271, file: !218, line: 166, baseType: !31, size: 32, offset: 16512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !271, file: !218, line: 167, baseType: !31, size: 32, offset: 16544)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !271, file: !218, line: 168, baseType: !31, size: 32, offset: 16576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !271, file: !218, line: 170, baseType: !31, size: 32, offset: 16608)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !271, file: !218, line: 172, baseType: !7, size: 32, offset: 16640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !271, file: !218, line: 173, baseType: !7, size: 32, offset: 16672)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !271, file: !218, line: 174, baseType: !7, size: 32, offset: 16704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !271, file: !218, line: 175, baseType: !31, size: 32, offset: 16736)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !271, file: !218, line: 177, baseType: !299, size: 8192, offset: 16768)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !271, file: !218, line: 178, baseType: !31, size: 32, offset: 24960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !271, file: !218, line: 179, baseType: !7, size: 32, offset: 24992)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !271, file: !218, line: 180, baseType: !31, size: 32, offset: 25024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !271, file: !218, line: 181, baseType: !31, size: 32, offset: 25056)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !271, file: !218, line: 182, baseType: !7, size: 32, offset: 25088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !271, file: !218, line: 184, baseType: !7, size: 32, offset: 25120)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !271, file: !218, line: 185, baseType: !7, size: 32, offset: 25152)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !271, file: !218, line: 186, baseType: !7, size: 32, offset: 25184)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !271, file: !218, line: 187, baseType: !31, size: 32, offset: 25216)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !271, file: !218, line: 188, baseType: !31, size: 32, offset: 25248)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !271, file: !218, line: 189, baseType: !31, size: 32, offset: 25280)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !271, file: !218, line: 190, baseType: !31, size: 32, offset: 25312)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !271, file: !218, line: 191, baseType: !7, size: 32, offset: 25344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !271, file: !218, line: 192, baseType: !316, size: 7584, offset: 25376)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !218, line: 90, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 53, size: 7584, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !317, file: !218, line: 55, baseType: !7, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !317, file: !218, line: 56, baseType: !31, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !317, file: !218, line: 57, baseType: !71, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !317, file: !218, line: 58, baseType: !71, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !317, file: !218, line: 59, baseType: !7, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !317, file: !218, line: 60, baseType: !7, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !317, file: !218, line: 61, baseType: !7, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !317, file: !218, line: 62, baseType: !31, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !317, file: !218, line: 63, baseType: !7, size: 32, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !317, file: !218, line: 64, baseType: !7, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !317, file: !218, line: 65, baseType: !31, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !317, file: !218, line: 66, baseType: !31, size: 32, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !317, file: !218, line: 67, baseType: !31, size: 32, offset: 352)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !317, file: !218, line: 68, baseType: !7, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_top_field", scope: !317, file: !218, line: 69, baseType: !31, size: 32, offset: 416)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_sample_loc_type_bottom_field", scope: !317, file: !218, line: 70, baseType: !31, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !317, file: !218, line: 71, baseType: !7, size: 32, offset: 480)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !317, file: !218, line: 72, baseType: !31, size: 32, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !317, file: !218, line: 73, baseType: !31, size: 32, offset: 544)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !317, file: !218, line: 74, baseType: !7, size: 32, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !317, file: !218, line: 75, baseType: !7, size: 32, offset: 608)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !317, file: !218, line: 76, baseType: !341, size: 3296, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !218, line: 50, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 38, size: 3296, elements: !343)
!343 = !{!344, !345, !346, !347, !351, !352, !353, !354, !355, !356}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !342, file: !218, line: 40, baseType: !31, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !342, file: !218, line: 41, baseType: !31, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !342, file: !218, line: 42, baseType: !31, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !342, file: !218, line: 43, baseType: !348, size: 1024, offset: 96)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !342, file: !218, line: 44, baseType: !348, size: 1024, offset: 1120)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !342, file: !218, line: 45, baseType: !348, size: 1024, offset: 2144)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !342, file: !218, line: 46, baseType: !31, size: 32, offset: 3168)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !342, file: !218, line: 47, baseType: !31, size: 32, offset: 3200)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !342, file: !218, line: 48, baseType: !31, size: 32, offset: 3232)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !342, file: !218, line: 49, baseType: !31, size: 32, offset: 3264)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !317, file: !218, line: 77, baseType: !7, size: 32, offset: 3936)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !317, file: !218, line: 78, baseType: !341, size: 3296, offset: 3968)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !317, file: !218, line: 80, baseType: !7, size: 32, offset: 7264)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !317, file: !218, line: 81, baseType: !7, size: 32, offset: 7296)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !317, file: !218, line: 82, baseType: !7, size: 32, offset: 7328)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !317, file: !218, line: 83, baseType: !7, size: 32, offset: 7360)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !317, file: !218, line: 84, baseType: !31, size: 32, offset: 7392)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !317, file: !218, line: 85, baseType: !31, size: 32, offset: 7424)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !317, file: !218, line: 86, baseType: !31, size: 32, offset: 7456)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !317, file: !218, line: 87, baseType: !31, size: 32, offset: 7488)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_reorder_frames", scope: !317, file: !218, line: 88, baseType: !31, size: 32, offset: 7520)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !317, file: !218, line: 89, baseType: !31, size: 32, offset: 7552)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !271, file: !218, line: 193, baseType: !31, size: 32, offset: 32960)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !271, file: !218, line: 195, baseType: !7, size: 32, offset: 32992)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "SeqParSet", scope: !128, file: !127, line: 571, baseType: !372, size: 1056768, offset: 192)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 1056768, elements: !349)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "PicParSet", scope: !128, file: !127, line: 572, baseType: !374, size: 4538368, offset: 1056960)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4538368, elements: !300)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "active_subset_sps", scope: !128, file: !127, line: 575, baseType: !376, size: 64, offset: 5595328)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "subset_seq_parameter_set_rbsp_t", file: !218, line: 256, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 228, size: 37312, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !400, !401, !402, !403}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !378, file: !218, line: 230, baseType: !270, size: 33024)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bit_equal_to_one", scope: !378, file: !218, line: 232, baseType: !31, size: 32, offset: 33024)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "num_views_minus1", scope: !378, file: !218, line: 233, baseType: !7, size: 32, offset: 33056)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !378, file: !218, line: 234, baseType: !68, size: 64, offset: 33088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l0", scope: !378, file: !218, line: 235, baseType: !68, size: 64, offset: 33152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l0", scope: !378, file: !218, line: 236, baseType: !386, size: 64, offset: 33216)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "num_anchor_refs_l1", scope: !378, file: !218, line: 237, baseType: !68, size: 64, offset: 33280)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_ref_l1", scope: !378, file: !218, line: 238, baseType: !386, size: 64, offset: 33344)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l0", scope: !378, file: !218, line: 240, baseType: !68, size: 64, offset: 33408)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l0", scope: !378, file: !218, line: 241, baseType: !386, size: 64, offset: 33472)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "num_non_anchor_refs_l1", scope: !378, file: !218, line: 242, baseType: !68, size: 64, offset: 33536)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "non_anchor_ref_l1", scope: !378, file: !218, line: 243, baseType: !386, size: 64, offset: 33600)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "num_level_values_signalled_minus1", scope: !378, file: !218, line: 245, baseType: !7, size: 32, offset: 33664)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !378, file: !218, line: 246, baseType: !68, size: 64, offset: 33728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "num_applicable_ops_minus1", scope: !378, file: !218, line: 247, baseType: !68, size: 64, offset: 33792)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_temporal_id", scope: !378, file: !218, line: 248, baseType: !386, size: 64, offset: 33856)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_target_views_minus1", scope: !378, file: !218, line: 249, baseType: !386, size: 64, offset: 33920)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_target_view_id", scope: !378, file: !218, line: 250, baseType: !399, size: 64, offset: 33984)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "applicable_op_num_views_minus1", scope: !378, file: !218, line: 251, baseType: !386, size: 64, offset: 34048)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mvc_vui_parameters_present_flag", scope: !378, file: !218, line: 253, baseType: !31, size: 32, offset: 34112)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !378, file: !218, line: 254, baseType: !7, size: 32, offset: 34144)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "MVCVUIParams", scope: !378, file: !218, line: 255, baseType: !404, size: 3136, offset: 34176)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "MVCVUI_t", file: !218, line: 226, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mvcvui_tag", file: !218, line: 200, size: 3136, elements: !406)
!406 = !{!407, !408, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !426, !427, !429, !430, !431, !432}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops_minus1", scope: !405, file: !218, line: 202, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !405, file: !218, line: 203, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "num_target_output_views_minus1", scope: !405, file: !218, line: 204, baseType: !68, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !405, file: !218, line: 205, baseType: !386, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !405, file: !218, line: 206, baseType: !409, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !405, file: !218, line: 207, baseType: !68, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !405, file: !218, line: 208, baseType: !68, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !405, file: !218, line: 209, baseType: !409, size: 64, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !405, file: !218, line: 210, baseType: !409, size: 64, offset: 512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !405, file: !218, line: 211, baseType: !409, size: 64, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !405, file: !218, line: 212, baseType: !409, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pic_struct_present_flag", scope: !405, file: !218, line: 213, baseType: !409, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt_minus1", scope: !405, file: !218, line: 216, baseType: !410, size: 8, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !405, file: !218, line: 217, baseType: !410, size: 8, offset: 776)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !405, file: !218, line: 218, baseType: !410, size: 8, offset: 784)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value_minus1", scope: !405, file: !218, line: 219, baseType: !425, size: 1024, offset: 800)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !349)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value_minus1", scope: !405, file: !218, line: 220, baseType: !425, size: 1024, offset: 1824)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_flag", scope: !405, file: !218, line: 221, baseType: !428, size: 256, offset: 2848)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 256, elements: !349)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !405, file: !218, line: 222, baseType: !410, size: 8, offset: 3104)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !405, file: !218, line: 223, baseType: !410, size: 8, offset: 3112)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !405, file: !218, line: 224, baseType: !410, size: 8, offset: 3120)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !405, file: !218, line: 225, baseType: !410, size: 8, offset: 3128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "SubsetSeqParSet", scope: !128, file: !127, line: 577, baseType: !434, size: 1193984, offset: 5595392)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1193984, elements: !349)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_width_in_mbs_minus1", scope: !128, file: !127, line: 578, baseType: !7, size: 32, offset: 6789376)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_height_in_map_units_minus1", scope: !128, file: !127, line: 579, baseType: !7, size: 32, offset: 6789408)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "last_max_dec_frame_buffering", scope: !128, file: !127, line: 580, baseType: !7, size: 32, offset: 6789440)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "last_profile_idc", scope: !128, file: !127, line: 581, baseType: !7, size: 32, offset: 6789472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "p_SEI", scope: !128, file: !127, line: 584, baseType: !440, size: 64, offset: 6789504)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sei_params", file: !127, line: 584, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "old_slice", scope: !128, file: !127, line: 586, baseType: !443, size: 64, offset: 6789568)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_slice_par", file: !127, line: 902, size: 416, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !454, !455, !456, !457, !458, !459, !460}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !444, file: !127, line: 904, baseType: !31, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !444, file: !127, line: 905, baseType: !31, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nal_ref_idc", scope: !444, file: !127, line: 906, baseType: !7, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pic_oder_cnt_lsb", scope: !444, file: !127, line: 907, baseType: !31, size: 32, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_oder_cnt_bottom", scope: !444, file: !127, line: 908, baseType: !7, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !444, file: !127, line: 909, baseType: !452, size: 64, offset: 160)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !453)
!453 = !{!101}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !444, file: !127, line: 910, baseType: !64, size: 8, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !444, file: !127, line: 911, baseType: !64, size: 8, offset: 232)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !444, file: !127, line: 912, baseType: !7, size: 32, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pps_id", scope: !444, file: !127, line: 913, baseType: !7, size: 32, offset: 288)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !444, file: !127, line: 915, baseType: !7, size: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !444, file: !127, line: 916, baseType: !7, size: 32, offset: 352)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !444, file: !127, line: 917, baseType: !7, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !128, file: !127, line: 587, baseType: !462, size: 64, offset: 6789632)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snr_par", file: !127, line: 839, size: 512, elements: !464)
!464 = !{!465, !466, !469, !470, !471, !472}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "frame_ctr", scope: !463, file: !127, line: 841, baseType: !7, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "snr", scope: !463, file: !127, line: 842, baseType: !467, size: 96, offset: 32)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 96, elements: !159)
!468 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "snr1", scope: !463, file: !127, line: 843, baseType: !467, size: 96, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "snra", scope: !463, file: !127, line: 844, baseType: !467, size: 96, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sse", scope: !463, file: !127, line: 845, baseType: !467, size: 96, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "msse", scope: !463, file: !127, line: 846, baseType: !467, size: 96, offset: 416)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !128, file: !127, line: 588, baseType: !7, size: 32, offset: 6789696)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !128, file: !127, line: 591, baseType: !31, size: 32, offset: 6789728)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "iSliceNumOfCurrPic", scope: !128, file: !127, line: 592, baseType: !7, size: 32, offset: 6789760)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesAllocated", scope: !128, file: !127, line: 593, baseType: !7, size: 32, offset: 6789792)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "iNumOfSlicesDecoded", scope: !128, file: !127, line: 594, baseType: !7, size: 32, offset: 6789824)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ppSliceList", scope: !128, file: !127, line: 595, baseType: !479, size: 64, offset: 6789888)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !127, line: 542, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slice", file: !127, line: 341, size: 109184, elements: !483)
!483 = !{!484, !486, !487, !488, !489, !490, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !709, !711, !871, !900, !926, !929, !930, !932, !933, !934, !935, !936, !937, !938, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !965, !966, !967, !968, !969, !970, !973, !974, !977, !978, !980, !982, !983, !984, !985, !986, !987, !988, !989, !990, !992, !993, !994, !995, !996, !999, !1000, !1001, !1005, !1009, !1013, !1017, !1021, !1022, !1023, !1024, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1038, !1039}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !482, file: !127, line: 343, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !482, file: !127, line: 344, baseType: !131, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "active_pps", scope: !482, file: !127, line: 345, baseType: !216, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "active_sps", scope: !482, file: !127, line: 346, baseType: !269, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "svc_extension_flag", scope: !482, file: !127, line: 347, baseType: !7, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !482, file: !127, line: 350, baseType: !491, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decoded_picture_buffer", file: !493, line: 186, size: 33408, elements: !494)
!493 = !DIFile(filename: "ldecod_src/inc/mbuffer.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "1ba7faf5f978b0f36a8f480bbf7b3401")
!494 = !{!495, !496, !499, !643, !644, !645, !646, !647, !648, !649, !650, !651, !655, !656, !657}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !492, file: !493, line: 188, baseType: !125, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !492, file: !493, line: 189, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "InputParameters", file: !127, line: 900, baseType: !132)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !492, file: !493, line: 190, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameStore", file: !493, line: 182, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frame_store", file: !493, line: 152, size: 768, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !638, !639, !640, !641, !642}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !503, file: !493, line: 154, baseType: !7, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "is_reference", scope: !503, file: !493, line: 155, baseType: !7, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !503, file: !493, line: 156, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "is_orig_reference", scope: !503, file: !493, line: 157, baseType: !7, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_non_existent", scope: !503, file: !493, line: 159, baseType: !7, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !503, file: !493, line: 161, baseType: !31, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !503, file: !493, line: 162, baseType: !31, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num_wrap", scope: !503, file: !493, line: 164, baseType: !7, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !503, file: !493, line: 165, baseType: !7, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !503, file: !493, line: 166, baseType: !7, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !503, file: !493, line: 167, baseType: !7, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_reference", scope: !503, file: !493, line: 170, baseType: !7, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !503, file: !493, line: 172, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicture", file: !493, line: 138, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "storable_picture", file: !493, line: 46, size: 3328, elements: !521)
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !558, !560, !561, !578, !580, !584, !586, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !520, file: !493, line: 48, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "PictureStructure", file: !30, line: 140, baseType: !29)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "poc", scope: !520, file: !493, line: 50, baseType: !7, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "top_poc", scope: !520, file: !493, line: 51, baseType: !7, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_poc", scope: !520, file: !493, line: 52, baseType: !7, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "frame_poc", scope: !520, file: !493, line: 53, baseType: !7, size: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !520, file: !493, line: 54, baseType: !31, size: 32, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame", scope: !520, file: !493, line: 55, baseType: !31, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pic_num", scope: !520, file: !493, line: 57, baseType: !7, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !520, file: !493, line: 58, baseType: !7, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !520, file: !493, line: 59, baseType: !7, size: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !520, file: !493, line: 61, baseType: !64, size: 8, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !520, file: !493, line: 62, baseType: !7, size: 32, offset: 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !520, file: !493, line: 63, baseType: !7, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !520, file: !493, line: 64, baseType: !7, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !520, file: !493, line: 65, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !520, file: !493, line: 67, baseType: !67, size: 16, offset: 480)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "size_x", scope: !520, file: !493, line: 69, baseType: !7, size: 32, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "size_y", scope: !520, file: !493, line: 69, baseType: !7, size: 32, offset: 544)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr", scope: !520, file: !493, line: 69, baseType: !7, size: 32, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr", scope: !520, file: !493, line: 69, baseType: !7, size: 32, offset: 608)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_m1", scope: !520, file: !493, line: 70, baseType: !7, size: 32, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_m1", scope: !520, file: !493, line: 70, baseType: !7, size: 32, offset: 672)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size_x_cr_m1", scope: !520, file: !493, line: 70, baseType: !7, size: 32, offset: 704)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "size_y_cr_m1", scope: !520, file: !493, line: 70, baseType: !7, size: 32, offset: 736)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "coded_frame", scope: !520, file: !493, line: 71, baseType: !7, size: 32, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !520, file: !493, line: 72, baseType: !7, size: 32, offset: 800)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !520, file: !493, line: 73, baseType: !31, size: 32, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !520, file: !493, line: 74, baseType: !31, size: 32, offset: 864)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !520, file: !493, line: 75, baseType: !7, size: 32, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !520, file: !493, line: 75, baseType: !7, size: 32, offset: 928)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !520, file: !493, line: 76, baseType: !7, size: 32, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !520, file: !493, line: 76, baseType: !7, size: 32, offset: 992)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "imgY", scope: !520, file: !493, line: 79, baseType: !556, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV", scope: !520, file: !493, line: 80, baseType: !559, size: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "img_comp", scope: !520, file: !493, line: 81, baseType: !559, size: 64, offset: 1152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mv_info", scope: !520, file: !493, line: 84, baseType: !562, size: 64, offset: 1216)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params", file: !493, line: 36, size: 256, elements: !565)
!565 = !{!566, !569, !576}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic", scope: !564, file: !493, line: 38, baseType: !567, size: 128)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 128, elements: !453)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !564, file: !493, line: 39, baseType: !570, size: 64, offset: 128)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !453)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionVector", file: !127, line: 104, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 100, size: 32, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !572, file: !127, line: 102, baseType: !67, size: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !572, file: !127, line: 103, baseType: !67, size: 16, offset: 16)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ref_idx", scope: !564, file: !493, line: 40, baseType: !577, size: 16, offset: 192)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 16, elements: !453)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "JVmv_info", scope: !520, file: !493, line: 85, baseType: !579, size: 192, offset: 1280)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !159)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !520, file: !493, line: 87, baseType: !581, size: 64, offset: 1472)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pic_motion_params_old", file: !493, line: 29, size: 64, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !581, file: !493, line: 31, baseType: !256, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "JVmotion", scope: !520, file: !493, line: 88, baseType: !585, size: 192, offset: 1536)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 192, elements: !159)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "slice_id", scope: !520, file: !493, line: 90, baseType: !587, size: 64, offset: 1728)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !520, file: !493, line: 92, baseType: !568, size: 64, offset: 1792)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !520, file: !493, line: 93, baseType: !568, size: 64, offset: 1856)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !520, file: !493, line: 94, baseType: !568, size: 64, offset: 1920)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !520, file: !493, line: 96, baseType: !7, size: 32, offset: 1984)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !520, file: !493, line: 97, baseType: !7, size: 32, offset: 2016)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !520, file: !493, line: 98, baseType: !7, size: 32, offset: 2048)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !520, file: !493, line: 99, baseType: !7, size: 32, offset: 2080)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !520, file: !493, line: 100, baseType: !7, size: 32, offset: 2112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !520, file: !493, line: 102, baseType: !7, size: 32, offset: 2144)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !520, file: !493, line: 103, baseType: !7, size: 32, offset: 2176)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !520, file: !493, line: 104, baseType: !7, size: 32, offset: 2208)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !520, file: !493, line: 105, baseType: !7, size: 32, offset: 2240)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !520, file: !493, line: 106, baseType: !7, size: 32, offset: 2272)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !520, file: !493, line: 107, baseType: !7, size: 32, offset: 2304)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !520, file: !493, line: 108, baseType: !7, size: 32, offset: 2336)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !520, file: !493, line: 109, baseType: !7, size: 32, offset: 2368)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_offset", scope: !520, file: !493, line: 110, baseType: !452, size: 64, offset: 2400)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !520, file: !493, line: 111, baseType: !7, size: 32, offset: 2464)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !520, file: !493, line: 112, baseType: !608, size: 64, offset: 2496)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !127, line: 194, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !127, line: 186, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !610, file: !127, line: 188, baseType: !7, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !610, file: !127, line: 189, baseType: !7, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !610, file: !127, line: 190, baseType: !7, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !610, file: !127, line: 191, baseType: !7, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !610, file: !127, line: 192, baseType: !7, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !610, file: !127, line: 193, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "concealed_pic", scope: !520, file: !493, line: 115, baseType: !7, size: 32, offset: 2560)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seiHasTone_mapping", scope: !520, file: !493, line: 118, baseType: !7, size: 32, offset: 2592)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_model_id", scope: !520, file: !493, line: 119, baseType: !7, size: 32, offset: 2624)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tonemapped_bit_depth", scope: !520, file: !493, line: 120, baseType: !7, size: 32, offset: 2656)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tone_mapping_lut", scope: !520, file: !493, line: 121, baseType: !557, size: 64, offset: 2688)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !520, file: !493, line: 124, baseType: !7, size: 32, offset: 2752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !520, file: !493, line: 125, baseType: !7, size: 32, offset: 2784)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !520, file: !493, line: 126, baseType: !7, size: 32, offset: 2816)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaStride", scope: !520, file: !493, line: 128, baseType: !7, size: 32, offset: 2848)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaStride", scope: !520, file: !493, line: 129, baseType: !7, size: 32, offset: 2880)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaExpandedHeight", scope: !520, file: !493, line: 130, baseType: !7, size: 32, offset: 2912)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaExpandedHeight", scope: !520, file: !493, line: 131, baseType: !7, size: 32, offset: 2944)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cur_imgY", scope: !520, file: !493, line: 132, baseType: !556, size: 64, offset: 3008)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !520, file: !493, line: 133, baseType: !7, size: 32, offset: 3072)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "iCodingType", scope: !520, file: !493, line: 134, baseType: !7, size: 32, offset: 3104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !520, file: !493, line: 136, baseType: !577, size: 16, offset: 3136)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !520, file: !493, line: 137, baseType: !636, size: 128, offset: 3200)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !453)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "top_field", scope: !503, file: !493, line: 173, baseType: !518, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field", scope: !503, file: !493, line: 174, baseType: !518, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !503, file: !493, line: 177, baseType: !7, size: 32, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !503, file: !493, line: 178, baseType: !452, size: 64, offset: 608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !503, file: !493, line: 179, baseType: !452, size: 64, offset: 672)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ref", scope: !492, file: !493, line: 191, baseType: !500, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fs_ltref", scope: !492, file: !493, line: 192, baseType: !500, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !493, line: 193, baseType: !31, size: 32, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !492, file: !493, line: 194, baseType: !31, size: 32, offset: 352)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ref_frames_in_buffer", scope: !492, file: !493, line: 195, baseType: !31, size: 32, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ltref_frames_in_buffer", scope: !492, file: !493, line: 196, baseType: !31, size: 32, offset: 416)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_poc", scope: !492, file: !493, line: 197, baseType: !7, size: 32, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "last_output_view_id", scope: !492, file: !493, line: 199, baseType: !7, size: 32, offset: 480)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_pic_idx", scope: !492, file: !493, line: 200, baseType: !652, size: 32768, offset: 512)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 1024)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "init_done", scope: !492, file: !493, line: 205, baseType: !7, size: 32, offset: 33280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !492, file: !493, line: 206, baseType: !7, size: 32, offset: 33312)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "last_picture", scope: !492, file: !493, line: 208, baseType: !501, size: 64, offset: 33344)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !482, file: !127, line: 353, baseType: !7, size: 32, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "idr_pic_id", scope: !482, file: !127, line: 354, baseType: !7, size: 32, offset: 416)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !482, file: !127, line: 355, baseType: !7, size: 32, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "Transform8x8Mode", scope: !482, file: !127, line: 356, baseType: !7, size: 32, offset: 480)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "is_not_independent", scope: !482, file: !127, line: 357, baseType: !7, size: 32, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "toppoc", scope: !482, file: !127, line: 359, baseType: !7, size: 32, offset: 544)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bottompoc", scope: !482, file: !127, line: 360, baseType: !7, size: 32, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "framepoc", scope: !482, file: !127, line: 361, baseType: !7, size: 32, offset: 608)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_lsb", scope: !482, file: !127, line: 365, baseType: !31, size: 32, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt_bottom", scope: !482, file: !127, line: 366, baseType: !7, size: 32, offset: 672)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_cnt", scope: !482, file: !127, line: 368, baseType: !452, size: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntMsb", scope: !482, file: !127, line: 372, baseType: !7, size: 32, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "AbsFrameNum", scope: !482, file: !127, line: 378, baseType: !31, size: 32, offset: 800)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !482, file: !127, line: 379, baseType: !7, size: 32, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "current_mb_nr", scope: !482, file: !127, line: 387, baseType: !31, size: 32, offset: 864)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "num_dec_mb", scope: !482, file: !127, line: 388, baseType: !31, size: 32, offset: 896)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !482, file: !127, line: 389, baseType: !67, size: 16, offset: 928)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cod_counter", scope: !482, file: !127, line: 396, baseType: !7, size: 32, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "allrefzero", scope: !482, file: !127, line: 397, baseType: !7, size: 32, offset: 992)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_frame_flag", scope: !482, file: !127, line: 400, baseType: !7, size: 32, offset: 1024)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "direct_spatial_mv_pred_flag", scope: !482, file: !127, line: 401, baseType: !7, size: 32, offset: 1056)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_active", scope: !482, file: !127, line: 402, baseType: !452, size: 64, offset: 1088)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !482, file: !127, line: 406, baseType: !7, size: 32, offset: 1152)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !482, file: !127, line: 407, baseType: !7, size: 32, offset: 1184)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp_delta", scope: !482, file: !127, line: 408, baseType: !7, size: 32, offset: 1216)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "qs", scope: !482, file: !127, line: 409, baseType: !7, size: 32, offset: 1248)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qs_delta", scope: !482, file: !127, line: 410, baseType: !7, size: 32, offset: 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !482, file: !127, line: 411, baseType: !7, size: 32, offset: 1312)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "model_number", scope: !482, file: !127, line: 412, baseType: !7, size: 32, offset: 1344)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "frame_num", scope: !482, file: !127, line: 413, baseType: !31, size: 32, offset: 1376)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_pic_flag", scope: !482, file: !127, line: 414, baseType: !31, size: 32, offset: 1408)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !482, file: !127, line: 415, baseType: !64, size: 8, offset: 1440)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !482, file: !127, line: 416, baseType: !523, size: 32, offset: 1472)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !482, file: !127, line: 417, baseType: !7, size: 32, offset: 1504)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "end_mb_nr_plus1", scope: !482, file: !127, line: 418, baseType: !7, size: 32, offset: 1536)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !482, file: !127, line: 419, baseType: !7, size: 32, offset: 1568)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mode", scope: !482, file: !127, line: 420, baseType: !7, size: 32, offset: 1600)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "current_header", scope: !482, file: !127, line: 421, baseType: !7, size: 32, offset: 1632)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_header", scope: !482, file: !127, line: 422, baseType: !7, size: 32, offset: 1664)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last_dquant", scope: !482, file: !127, line: 423, baseType: !7, size: 32, offset: 1696)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "colour_plane_id", scope: !482, file: !127, line: 426, baseType: !7, size: 32, offset: 1728)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt", scope: !482, file: !127, line: 427, baseType: !7, size: 32, offset: 1760)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sp_switch", scope: !482, file: !127, line: 428, baseType: !7, size: 32, offset: 1792)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_cycle", scope: !482, file: !127, line: 429, baseType: !7, size: 32, offset: 1824)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_slice_ref_idx", scope: !482, file: !127, line: 430, baseType: !7, size: 32, offset: 1856)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !482, file: !127, line: 431, baseType: !7, size: 32, offset: 1888)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_reference_flag", scope: !482, file: !127, line: 432, baseType: !7, size: 32, offset: 1920)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_ref_pic_buffering_flag", scope: !482, file: !127, line: 433, baseType: !7, size: 32, offset: 1952)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dec_ref_pic_marking_buffer", scope: !482, file: !127, line: 434, baseType: !608, size: 64, offset: 1984)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "listXsize", scope: !482, file: !127, line: 436, baseType: !708, size: 48, offset: 2048)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 48, elements: !241)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "listX", scope: !482, file: !127, line: 437, baseType: !710, size: 384, offset: 2112)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 384, elements: !241)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !482, file: !127, line: 440, baseType: !712, size: 64, offset: 2496)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !127, line: 324, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !127, line: 314, size: 384, elements: !715)
!715 = !{!716, !727, !736}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !714, file: !127, line: 317, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !127, line: 47, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_stream", file: !127, line: 300, size: 256, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "read_len", scope: !719, file: !127, line: 303, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !719, file: !127, line: 304, baseType: !7, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bitoffset", scope: !719, file: !127, line: 306, baseType: !7, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_length", scope: !719, file: !127, line: 307, baseType: !7, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !719, file: !127, line: 309, baseType: !256, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !719, file: !127, line: 310, baseType: !7, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "de_cabac", scope: !714, file: !127, line: 318, baseType: !728, size: 256, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironment", file: !127, line: 95, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 88, size: 256, elements: !730)
!730 = !{!731, !732, !733, !734, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "Drange", scope: !729, file: !127, line: 90, baseType: !31, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "Dvalue", scope: !729, file: !127, line: 91, baseType: !31, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "DbitsLeft", scope: !729, file: !127, line: 92, baseType: !7, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm", scope: !729, file: !127, line: 93, baseType: !256, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "Dcodestrm_len", scope: !729, file: !127, line: 94, baseType: !68, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "readSyntaxElement", scope: !714, file: !127, line: 320, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!7, !740, !869, !867}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !127, line: 273, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !127, line: 197, size: 3840, elements: !743)
!743 = !{!744, !746, !747, !748, !749, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !778, !779, !780, !781, !782, !785, !786, !793, !794, !795, !796, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !822, !823, !838, !844, !868}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "p_Slice", scope: !742, file: !127, line: 199, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "p_Vid", scope: !742, file: !127, line: 200, baseType: !485, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "p_Inp", scope: !742, file: !127, line: 201, baseType: !131, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrX", scope: !742, file: !127, line: 202, baseType: !7, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !742, file: !127, line: 203, baseType: !750, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockPos", file: !127, line: 112, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 108, size: 32, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !751, file: !127, line: 110, baseType: !67, size: 16)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !751, file: !127, line: 111, baseType: !67, size: 16, offset: 16)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "block_x", scope: !742, file: !127, line: 204, baseType: !7, size: 32, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "block_y", scope: !742, file: !127, line: 205, baseType: !7, size: 32, offset: 288)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "block_y_aff", scope: !742, file: !127, line: 206, baseType: !7, size: 32, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pix_x", scope: !742, file: !127, line: 207, baseType: !7, size: 32, offset: 352)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pix_y", scope: !742, file: !127, line: 208, baseType: !7, size: 32, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_x", scope: !742, file: !127, line: 209, baseType: !7, size: 32, offset: 416)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pix_c_y", scope: !742, file: !127, line: 210, baseType: !7, size: 32, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_x", scope: !742, file: !127, line: 212, baseType: !7, size: 32, offset: 480)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "subblock_y", scope: !742, file: !127, line: 213, baseType: !7, size: 32, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !742, file: !127, line: 215, baseType: !7, size: 32, offset: 544)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "qpc", scope: !742, file: !127, line: 216, baseType: !452, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "qp_scaled", scope: !742, file: !127, line: 217, baseType: !158, size: 96, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "is_lossless", scope: !742, file: !127, line: 218, baseType: !7, size: 32, offset: 736)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "is_intra_block", scope: !742, file: !127, line: 219, baseType: !7, size: 32, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_v_block", scope: !742, file: !127, line: 220, baseType: !7, size: 32, offset: 800)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "DeblockCall", scope: !742, file: !127, line: 221, baseType: !7, size: 32, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !742, file: !127, line: 223, baseType: !67, size: 16, offset: 864)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !742, file: !127, line: 224, baseType: !410, size: 8, offset: 880)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !742, file: !127, line: 225, baseType: !410, size: 8, offset: 888)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !742, file: !127, line: 226, baseType: !67, size: 16, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !742, file: !127, line: 227, baseType: !67, size: 16, offset: 912)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !742, file: !127, line: 229, baseType: !777, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !742, file: !127, line: 230, baseType: !777, size: 64, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !742, file: !127, line: 232, baseType: !777, size: 64, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !742, file: !127, line: 233, baseType: !777, size: 64, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !742, file: !127, line: 236, baseType: !67, size: 16, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !742, file: !127, line: 237, baseType: !783, size: 1024, offset: 1232)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !784)
!784 = !{!101, !102, !102, !101}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !742, file: !127, line: 239, baseType: !7, size: 32, offset: 2272)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !742, file: !127, line: 240, baseType: !787, size: 192, offset: 2304)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 192, elements: !159)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !106, line: 103, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !790, line: 27, baseType: !791)
!790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !110, line: 44, baseType: !792)
!792 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !742, file: !127, line: 241, baseType: !787, size: 192, offset: 2496)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits_8x8", scope: !742, file: !127, line: 242, baseType: !787, size: 192, offset: 2688)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i16mode", scope: !742, file: !127, line: 244, baseType: !7, size: 32, offset: 2880)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !742, file: !127, line: 245, baseType: !797, size: 32, offset: 2912)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 32, elements: !798)
!798 = !{!102}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !742, file: !127, line: 246, baseType: !797, size: 32, offset: 2944)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !742, file: !127, line: 247, baseType: !410, size: 8, offset: 2976)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !742, file: !127, line: 248, baseType: !410, size: 8, offset: 2984)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !742, file: !127, line: 249, baseType: !410, size: 8, offset: 2992)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !742, file: !127, line: 250, baseType: !67, size: 16, offset: 3008)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !742, file: !127, line: 251, baseType: !67, size: 16, offset: 3024)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !742, file: !127, line: 252, baseType: !67, size: 16, offset: 3040)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !742, file: !127, line: 254, baseType: !7, size: 32, offset: 3072)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !742, file: !127, line: 256, baseType: !7, size: 32, offset: 3104)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !742, file: !127, line: 256, baseType: !7, size: 32, offset: 3136)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !742, file: !127, line: 256, baseType: !7, size: 32, offset: 3168)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !742, file: !127, line: 256, baseType: !7, size: 32, offset: 3200)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !742, file: !127, line: 257, baseType: !7, size: 32, offset: 3232)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !742, file: !127, line: 257, baseType: !7, size: 32, offset: 3264)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !742, file: !127, line: 257, baseType: !7, size: 32, offset: 3296)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !742, file: !127, line: 257, baseType: !7, size: 32, offset: 3328)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !742, file: !127, line: 259, baseType: !7, size: 32, offset: 3360)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !742, file: !127, line: 260, baseType: !7, size: 32, offset: 3392)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_4x4", scope: !742, file: !127, line: 262, baseType: !818, size: 64, offset: 3456)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !777, !821, !7, !7}
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorPlane", file: !30, line: 32, baseType: !36)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "itrans_8x8", scope: !742, file: !127, line: 263, baseType: !818, size: 64, offset: 3520)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "GetMVPredictor", scope: !742, file: !127, line: 265, baseType: !824, size: 64, offset: 3584)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !777, !827, !837, !67, !562, !7, !7, !7, !7, !7}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !127, line: 85, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !127, line: 77, size: 128, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !829, file: !127, line: 79, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !829, file: !127, line: 80, baseType: !7, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !829, file: !127, line: 81, baseType: !67, size: 16, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !829, file: !127, line: 82, baseType: !67, size: 16, offset: 80)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !829, file: !127, line: 83, baseType: !67, size: 16, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !829, file: !127, line: 84, baseType: !67, size: 16, offset: 112)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "read_and_store_CBP_block_bit", scope: !742, file: !127, line: 268, baseType: !839, size: 64, offset: 3648)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!7, !777, !842, !7}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodingEnvironmentPtr", file: !127, line: 97, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readRefPictureIdx", scope: !742, file: !127, line: 269, baseType: !845, size: 64, offset: 3712)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!410, !777, !848, !867, !410, !7}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !127, line: 276, size: 384, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !863}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !849, file: !127, line: 278, baseType: !7, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !849, file: !127, line: 279, baseType: !7, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !849, file: !127, line: 280, baseType: !7, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !849, file: !127, line: 281, baseType: !7, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !849, file: !127, line: 282, baseType: !7, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !849, file: !127, line: 283, baseType: !31, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !849, file: !127, line: 284, baseType: !7, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !849, file: !127, line: 285, baseType: !7, size: 32, offset: 224)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !849, file: !127, line: 293, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !7, !7, !68, !68}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !849, file: !127, line: 295, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !740, !848, !842}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !742, file: !127, line: 272, baseType: !64, size: 8, offset: 3776)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !127, line: 296, baseType: !849)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !482, file: !127, line: 441, baseType: !872, size: 64, offset: 2560)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !127, line: 153, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 145, size: 2912, elements: !875)
!875 = !{!876, !886, !890, !894, !897, !899}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !874, file: !127, line: 147, baseType: !877, size: 1056)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 1056, elements: !884)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !127, line: 122, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 117, size: 32, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !879, file: !127, line: 119, baseType: !70, size: 16)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !879, file: !127, line: 120, baseType: !66, size: 8, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !879, file: !127, line: 121, baseType: !66, size: 8, offset: 24)
!884 = !{!160, !885}
!885 = !DISubrange(count: 11)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !874, file: !127, line: 148, baseType: !887, size: 576, offset: 1056)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 576, elements: !888)
!888 = !{!101, !889}
!889 = !DISubrange(count: 9)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !874, file: !127, line: 149, baseType: !891, size: 640, offset: 1632)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 640, elements: !892)
!892 = !{!101, !893}
!893 = !DISubrange(count: 10)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !874, file: !127, line: 150, baseType: !895, size: 384, offset: 2272)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 384, elements: !896)
!896 = !{!101, !234}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !874, file: !127, line: 151, baseType: !898, size: 128, offset: 2656)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 128, elements: !798)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !874, file: !127, line: 152, baseType: !898, size: 128, offset: 2784)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !482, file: !127, line: 442, baseType: !901, size: 64, offset: 2624)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !127, line: 175, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 164, size: 52768, elements: !904)
!904 = !{!905, !907, !909, !910, !913, !917, !921, !922, !925}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !903, file: !127, line: 166, baseType: !906, size: 96)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 96, elements: !159)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !903, file: !127, line: 167, baseType: !908, size: 64, offset: 96)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 64, elements: !453)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !903, file: !127, line: 168, baseType: !898, size: 128, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !903, file: !127, line: 169, baseType: !911, size: 384, offset: 288)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 384, elements: !912)
!912 = !{!160, !102}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !903, file: !127, line: 170, baseType: !914, size: 2816, offset: 672)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 2816, elements: !915)
!915 = !{!916, !102}
!916 = !DISubrange(count: 22)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !903, file: !127, line: 171, baseType: !918, size: 21120, offset: 3488)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 21120, elements: !919)
!919 = !{!101, !916, !920}
!920 = !DISubrange(count: 15)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !903, file: !127, line: 172, baseType: !918, size: 21120, offset: 24608)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !903, file: !127, line: 173, baseType: !923, size: 3520, offset: 45728)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 3520, elements: !924)
!924 = !{!916, !96}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !903, file: !127, line: 174, baseType: !923, size: 3520, offset: 49248)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mvscale", scope: !482, file: !127, line: 444, baseType: !927, size: 6144, offset: 2688)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 6144, elements: !928)
!928 = !{!234, !350}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag", scope: !482, file: !127, line: 446, baseType: !452, size: 64, offset: 8832)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "reordering_of_pic_nums_idc", scope: !482, file: !127, line: 447, baseType: !931, size: 128, offset: 8896)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 128, elements: !453)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1", scope: !482, file: !127, line: 448, baseType: !931, size: 128, offset: 9024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx", scope: !482, file: !127, line: 449, baseType: !931, size: 128, offset: 9152)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_view_idx_minus1", scope: !482, file: !127, line: 452, baseType: !931, size: 128, offset: 9280)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !482, file: !127, line: 454, baseType: !7, size: 32, offset: 9408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !482, file: !127, line: 455, baseType: !7, size: 32, offset: 9440)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !482, file: !127, line: 456, baseType: !7, size: 32, offset: 9472)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "NaluHeaderMVCExt", scope: !482, file: !127, line: 458, baseType: !939, size: 256, offset: 9504)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALUnitHeaderMVCExt_t", file: !127, line: 337, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nalunitheadermvcext_tag", file: !127, line: 327, size: 256, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "non_idr_flag", scope: !940, file: !127, line: 329, baseType: !31, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "priority_id", scope: !940, file: !127, line: 330, baseType: !31, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "view_id", scope: !940, file: !127, line: 331, baseType: !31, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "temporal_id", scope: !940, file: !127, line: 332, baseType: !31, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_pic_flag", scope: !940, file: !127, line: 333, baseType: !31, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "inter_view_flag", scope: !940, file: !127, line: 334, baseType: !31, size: 32, offset: 160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_one_bit", scope: !940, file: !127, line: 335, baseType: !31, size: 32, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefixNALU", scope: !940, file: !127, line: 336, baseType: !31, size: 32, offset: 224)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !482, file: !127, line: 461, baseType: !67, size: 16, offset: 9760)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !482, file: !127, line: 462, baseType: !67, size: 16, offset: 9776)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !482, file: !127, line: 463, baseType: !67, size: 16, offset: 9792)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !482, file: !127, line: 465, baseType: !7, size: 32, offset: 9824)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dpB_NotPresent", scope: !482, file: !127, line: 467, baseType: !7, size: 32, offset: 9856)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dpC_NotPresent", scope: !482, file: !127, line: 468, baseType: !7, size: 32, offset: 9888)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_reset_coeff", scope: !482, file: !127, line: 470, baseType: !7, size: 32, offset: 9920)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mb_pred", scope: !482, file: !127, line: 471, baseType: !559, size: 64, offset: 9984)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rec", scope: !482, file: !127, line: 472, baseType: !559, size: 64, offset: 10048)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mb_rres", scope: !482, file: !127, line: 473, baseType: !399, size: 64, offset: 10112)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cof", scope: !482, file: !127, line: 474, baseType: !399, size: 64, offset: 10176)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fcf", scope: !482, file: !127, line: 475, baseType: !399, size: 64, offset: 10240)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cofu", scope: !482, file: !127, line: 477, baseType: !963, size: 512, offset: 10304)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !964)
!964 = !{!235}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l0", scope: !482, file: !127, line: 479, baseType: !556, size: 64, offset: 10816)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l1", scope: !482, file: !127, line: 480, baseType: !556, size: 64, offset: 10880)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_res", scope: !482, file: !127, line: 481, baseType: !386, size: 64, offset: 10944)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l2", scope: !482, file: !127, line: 482, baseType: !556, size: 64, offset: 11008)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_block_l3", scope: !482, file: !127, line: 483, baseType: !556, size: 64, offset: 11072)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Intra", scope: !482, file: !127, line: 486, baseType: !971, size: 9216, offset: 11136)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 9216, elements: !972)
!972 = !{!160, !234, !102, !102}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale4x4_Inter", scope: !482, file: !127, line: 487, baseType: !971, size: 9216, offset: 20352)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Intra", scope: !482, file: !127, line: 488, baseType: !975, size: 36864, offset: 29568)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 36864, elements: !976)
!976 = !{!160, !234, !249, !249}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "InvLevelScale8x8_Inter", scope: !482, file: !127, line: 489, baseType: !975, size: 36864, offset: 66432)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "qmatrix", scope: !482, file: !127, line: 491, baseType: !979, size: 768, offset: 103296)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 768, elements: !229)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !482, file: !127, line: 494, baseType: !981, size: 2048, offset: 104064)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !112)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_ctr", scope: !482, file: !127, line: 495, baseType: !7, size: 32, offset: 106112)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !482, file: !127, line: 496, baseType: !7, size: 32, offset: 106144)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !482, file: !127, line: 500, baseType: !71, size: 16, offset: 106176)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !482, file: !127, line: 501, baseType: !71, size: 16, offset: 106192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "luma_log2_weight_denom", scope: !482, file: !127, line: 503, baseType: !71, size: 16, offset: 106208)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_log2_weight_denom", scope: !482, file: !127, line: 504, baseType: !71, size: 16, offset: 106224)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "wp_weight", scope: !482, file: !127, line: 505, baseType: !399, size: 64, offset: 106240)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "wp_offset", scope: !482, file: !127, line: 506, baseType: !399, size: 64, offset: 106304)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wbp_weight", scope: !482, file: !127, line: 507, baseType: !991, size: 64, offset: 106368)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !482, file: !127, line: 508, baseType: !67, size: 16, offset: 106432)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !482, file: !127, line: 509, baseType: !67, size: 16, offset: 106448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx0", scope: !482, file: !127, line: 512, baseType: !7, size: 32, offset: 106464)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "listinterviewidx1", scope: !482, file: !127, line: 513, baseType: !7, size: 32, offset: 106496)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview0", scope: !482, file: !127, line: 514, baseType: !997, size: 64, offset: 106560)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fs_listinterview1", scope: !482, file: !127, line: 515, baseType: !997, size: 64, offset: 106624)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "max_mb_vmv_r", scope: !482, file: !127, line: 520, baseType: !7, size: 32, offset: 106688)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ref_flag", scope: !482, file: !127, line: 521, baseType: !1002, size: 544, offset: 106720)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 17)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "read_CBP_and_coeffs_from_NAL", scope: !482, file: !127, line: 523, baseType: !1006, size: 64, offset: 107264)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !740}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "decode_one_component", scope: !482, file: !127, line: 524, baseType: !1010, size: 64, offset: 107328)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!7, !740, !821, !556, !568}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "readSlice", scope: !482, file: !127, line: 525, baseType: !1014, size: 64, offset: 107392)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!7, !485, !131}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nal_startcode_follows", scope: !482, file: !127, line: 526, baseType: !1018, size: 64, offset: 107456)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!7, !745, !7}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "read_motion_info_from_NAL", scope: !482, file: !127, line: 527, baseType: !1006, size: 64, offset: 107520)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "read_one_macroblock", scope: !482, file: !127, line: 528, baseType: !1006, size: 64, offset: 107584)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "interpret_mb_mode", scope: !482, file: !127, line: 529, baseType: !1006, size: 64, offset: 107648)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "init_lists", scope: !482, file: !127, line: 530, baseType: !1025, size: 64, offset: 107712)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !745}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "intrapred_chroma", scope: !482, file: !127, line: 531, baseType: !1006, size: 64, offset: 107776)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_intra", scope: !482, file: !127, line: 532, baseType: !860, size: 64, offset: 107840)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "linfo_cbp_inter", scope: !482, file: !127, line: 533, baseType: !860, size: 64, offset: 107904)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "update_direct_mv_info", scope: !482, file: !127, line: 534, baseType: !1006, size: 64, offset: 107968)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !482, file: !127, line: 535, baseType: !7, size: 32, offset: 108032)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !482, file: !127, line: 536, baseType: !740, size: 64, offset: 108096)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !482, file: !127, line: 537, baseType: !568, size: 64, offset: 108160)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !482, file: !127, line: 538, baseType: !386, size: 64, offset: 108224)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !482, file: !127, line: 539, baseType: !1037, size: 64, offset: 108288)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !482, file: !127, line: 540, baseType: !409, size: 64, offset: 108352)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_vector_adjustment", scope: !482, file: !127, line: 541, baseType: !1040, size: 768, offset: 108416)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 768, elements: !233)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block", scope: !128, file: !127, line: 596, baseType: !409, size: 64, offset: 6789952)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "intra_block_JV", scope: !128, file: !127, line: 597, baseType: !1043, size: 192, offset: 6790016)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 192, elements: !159)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !127, line: 601, baseType: !7, size: 32, offset: 6790208)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !128, file: !127, line: 602, baseType: !7, size: 32, offset: 6790240)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !128, file: !127, line: 603, baseType: !7, size: 32, offset: 6790272)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "width_cr", scope: !128, file: !127, line: 604, baseType: !7, size: 32, offset: 6790304)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "height_cr", scope: !128, file: !127, line: 605, baseType: !7, size: 32, offset: 6790336)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !128, file: !127, line: 607, baseType: !1037, size: 64, offset: 6790400)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode_JV", scope: !128, file: !127, line: 608, baseType: !1051, size: 192, offset: 6790464)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 192, elements: !159)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nz_coeff", scope: !128, file: !127, line: 609, baseType: !1053, size: 64, offset: 6790656)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "siblock", scope: !128, file: !127, line: 610, baseType: !386, size: 64, offset: 6790720)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "siblock_JV", scope: !128, file: !127, line: 611, baseType: !1057, size: 192, offset: 6790784)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !159)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "newframe", scope: !128, file: !127, line: 613, baseType: !7, size: 32, offset: 6790976)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !128, file: !127, line: 614, baseType: !7, size: 32, offset: 6791008)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pNextSlice", scope: !128, file: !127, line: 617, baseType: !480, size: 64, offset: 6791040)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data", scope: !128, file: !127, line: 618, baseType: !740, size: 64, offset: 6791104)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mb_data_JV", scope: !128, file: !127, line: 619, baseType: !1063, size: 192, offset: 6791168)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 192, elements: !159)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ChromaArrayType", scope: !128, file: !127, line: 621, baseType: !7, size: 32, offset: 6791360)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_head", scope: !128, file: !127, line: 626, baseType: !1066, size: 64, offset: 6791424)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "concealment_node", file: !127, line: 626, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "concealment_end", scope: !128, file: !127, line: 627, baseType: !1066, size: 64, offset: 6791488)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pre_frame_num", scope: !128, file: !127, line: 629, baseType: !31, size: 32, offset: 6791552)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "non_conforming_stream", scope: !128, file: !127, line: 630, baseType: !7, size: 32, offset: 6791584)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntMsb", scope: !128, file: !127, line: 634, baseType: !7, size: 32, offset: 6791616)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "PrevPicOrderCntLsb", scope: !128, file: !127, line: 635, baseType: !31, size: 32, offset: 6791648)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedPicOrderCnt", scope: !128, file: !127, line: 638, baseType: !7, size: 32, offset: 6791680)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "PicOrderCntCycleCnt", scope: !128, file: !127, line: 638, baseType: !7, size: 32, offset: 6791712)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumInPicOrderCntCycle", scope: !128, file: !127, line: 638, baseType: !7, size: 32, offset: 6791744)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNum", scope: !128, file: !127, line: 639, baseType: !31, size: 32, offset: 6791776)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "FrameNumOffset", scope: !128, file: !127, line: 639, baseType: !31, size: 32, offset: 6791808)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ExpectedDeltaPerPicOrderCntCycle", scope: !128, file: !127, line: 640, baseType: !7, size: 32, offset: 6791840)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ThisPOC", scope: !128, file: !127, line: 641, baseType: !7, size: 32, offset: 6791872)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "PreviousFrameNumOffset", scope: !128, file: !127, line: 642, baseType: !7, size: 32, offset: 6791904)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "MaxFrameNum", scope: !128, file: !127, line: 645, baseType: !7, size: 32, offset: 6791936)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "PicWidthInMbs", scope: !128, file: !127, line: 647, baseType: !31, size: 32, offset: 6791968)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMapUnits", scope: !128, file: !127, line: 648, baseType: !31, size: 32, offset: 6792000)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "FrameHeightInMbs", scope: !128, file: !127, line: 649, baseType: !31, size: 32, offset: 6792032)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "PicHeightInMbs", scope: !128, file: !127, line: 650, baseType: !31, size: 32, offset: 6792064)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "PicSizeInMbs", scope: !128, file: !127, line: 651, baseType: !31, size: 32, offset: 6792096)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "FrameSizeInMbs", scope: !128, file: !127, line: 652, baseType: !31, size: 32, offset: 6792128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "oldFrameSizeInMbs", scope: !128, file: !127, line: 653, baseType: !31, size: 32, offset: 6792160)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "no_output_of_prior_pics_flag", scope: !128, file: !127, line: 655, baseType: !7, size: 32, offset: 6792192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "last_has_mmco_5", scope: !128, file: !127, line: 657, baseType: !7, size: 32, offset: 6792224)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "last_pic_bottom_field", scope: !128, file: !127, line: 658, baseType: !7, size: 32, offset: 6792256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_bitsize_on_disk", scope: !128, file: !127, line: 661, baseType: !7, size: 32, offset: 6792288)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !128, file: !127, line: 662, baseType: !67, size: 16, offset: 6792320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !128, file: !127, line: 663, baseType: !67, size: 16, offset: 6792336)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_scale", scope: !128, file: !127, line: 664, baseType: !452, size: 64, offset: 6792352)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma_qp_scale", scope: !128, file: !127, line: 665, baseType: !7, size: 32, offset: 6792416)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma_qp_scale", scope: !128, file: !127, line: 666, baseType: !7, size: 32, offset: 6792448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dc_pred_value_comp", scope: !128, file: !127, line: 667, baseType: !1099, size: 96, offset: 6792480)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !159)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "max_pel_value_comp", scope: !128, file: !127, line: 668, baseType: !158, size: 96, offset: 6792576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !128, file: !127, line: 670, baseType: !7, size: 32, offset: 6792672)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "yuv_format", scope: !128, file: !127, line: 671, baseType: !7, size: 32, offset: 6792704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lossless_qpprime_flag", scope: !128, file: !127, line: 672, baseType: !7, size: 32, offset: 6792736)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_blk8x8_uv", scope: !128, file: !127, line: 673, baseType: !7, size: 32, offset: 6792768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "num_uv_blocks", scope: !128, file: !127, line: 674, baseType: !7, size: 32, offset: 6792800)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_cdc_coeff", scope: !128, file: !127, line: 675, baseType: !7, size: 32, offset: 6792832)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x", scope: !128, file: !127, line: 676, baseType: !7, size: 32, offset: 6792864)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y", scope: !128, file: !127, line: 677, baseType: !7, size: 32, offset: 6792896)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_x_blk", scope: !128, file: !127, line: 678, baseType: !7, size: 32, offset: 6792928)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cr_size_y_blk", scope: !128, file: !127, line: 679, baseType: !7, size: 32, offset: 6792960)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size", scope: !128, file: !127, line: 680, baseType: !1112, size: 192, offset: 6792992)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !1113)
!1113 = !{!160, !101}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_blk", scope: !128, file: !127, line: 681, baseType: !1112, size: 192, offset: 6793184)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mb_size_shift", scope: !128, file: !127, line: 682, baseType: !1112, size: 192, offset: 6793376)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_x", scope: !128, file: !127, line: 683, baseType: !7, size: 32, offset: 6793568)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "subpel_y", scope: !128, file: !127, line: 684, baseType: !7, size: 32, offset: 6793600)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_x", scope: !128, file: !127, line: 685, baseType: !7, size: 32, offset: 6793632)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "shiftpel_y", scope: !128, file: !127, line: 686, baseType: !7, size: 32, offset: 6793664)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "total_scale", scope: !128, file: !127, line: 687, baseType: !7, size: 32, offset: 6793696)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "max_vmv_r", scope: !128, file: !127, line: 689, baseType: !7, size: 32, offset: 6793728)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "idr_psnr_number", scope: !128, file: !127, line: 692, baseType: !7, size: 32, offset: 6793760)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "psnr_number", scope: !128, file: !127, line: 693, baseType: !7, size: 32, offset: 6793792)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "last_ref_pic_poc", scope: !128, file: !127, line: 700, baseType: !7, size: 32, offset: 6793824)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc_gap", scope: !128, file: !127, line: 701, baseType: !7, size: 32, offset: 6793856)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "poc_gap", scope: !128, file: !127, line: 702, baseType: !7, size: 32, offset: 6793888)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_mode", scope: !128, file: !127, line: 703, baseType: !7, size: 32, offset: 6793920)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "earlier_missing_poc", scope: !128, file: !127, line: 704, baseType: !7, size: 32, offset: 6793952)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "frame_to_conceal", scope: !128, file: !127, line: 705, baseType: !31, size: 32, offset: 6793984)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "IDR_concealment_flag", scope: !128, file: !127, line: 706, baseType: !7, size: 32, offset: 6794016)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "conceal_slice_type", scope: !128, file: !127, line: 707, baseType: !7, size: 32, offset: 6794048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point", scope: !128, file: !127, line: 710, baseType: !7, size: 32, offset: 6794080)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_point_found", scope: !128, file: !127, line: 711, baseType: !7, size: 32, offset: 6794112)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_cnt", scope: !128, file: !127, line: 712, baseType: !7, size: 32, offset: 6794144)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_frame_num", scope: !128, file: !127, line: 713, baseType: !7, size: 32, offset: 6794176)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_poc", scope: !128, file: !127, line: 714, baseType: !7, size: 32, offset: 6794208)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !128, file: !127, line: 716, baseType: !7, size: 32, offset: 6794240)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pic_unit_size_on_disk", scope: !128, file: !127, line: 717, baseType: !7, size: 32, offset: 6794272)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !128, file: !127, line: 719, baseType: !256, size: 64, offset: 6794304)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !128, file: !127, line: 720, baseType: !256, size: 64, offset: 6794368)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "imgData", scope: !128, file: !127, line: 722, baseType: !1142, size: 2560, offset: 6794432)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageData", file: !1143, line: 38, baseType: !1144)
!1143 = !DIFile(filename: "ldecod_src/inc/io_image.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "8caef624e6f5391b0c6ab2984e7f77c6")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "image_data", file: !1143, line: 20, size: 2560, elements: !1145)
!1145 = !{!1146, !1147, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1144, file: !1143, line: 22, baseType: !148, size: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "frm_data", scope: !1144, file: !1143, line: 24, baseType: !1148, size: 192, offset: 1088)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, elements: !159)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "top_data", scope: !1144, file: !1143, line: 25, baseType: !1148, size: 192, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "bot_data", scope: !1144, file: !1143, line: 26, baseType: !1148, size: 192, offset: 1472)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "frm_uint16", scope: !1144, file: !1143, line: 31, baseType: !1152, size: 192, offset: 1664)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 192, elements: !159)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "top_uint16", scope: !1144, file: !1143, line: 32, baseType: !1152, size: 192, offset: 1856)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "bot_uint16", scope: !1144, file: !1143, line: 33, baseType: !1152, size: 192, offset: 2048)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "frm_stride", scope: !1144, file: !1143, line: 35, baseType: !158, size: 96, offset: 2240)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "top_stride", scope: !1144, file: !1143, line: 36, baseType: !158, size: 96, offset: 2336)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "bot_stride", scope: !1144, file: !1143, line: 37, baseType: !158, size: 96, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "imgData0", scope: !128, file: !127, line: 723, baseType: !1142, size: 2560, offset: 6796992)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "imgData1", scope: !128, file: !127, line: 724, baseType: !1142, size: 2560, offset: 6799552)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "imgData2", scope: !128, file: !127, line: 725, baseType: !1142, size: 2560, offset: 6802112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "imgData32", scope: !128, file: !127, line: 728, baseType: !1142, size: 2560, offset: 6804672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "imgData4", scope: !128, file: !127, line: 729, baseType: !1142, size: 2560, offset: 6807232)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "imgData5", scope: !128, file: !127, line: 730, baseType: !1142, size: 2560, offset: 6809792)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "imgData6", scope: !128, file: !127, line: 731, baseType: !1142, size: 2560, offset: 6812352)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "previous_frame_num", scope: !128, file: !127, line: 735, baseType: !31, size: 32, offset: 6814912)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "Is_primary_correct", scope: !128, file: !127, line: 737, baseType: !7, size: 32, offset: 6814944)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "Is_redundant_correct", scope: !128, file: !127, line: 738, baseType: !7, size: 32, offset: 6814976)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tot_time", scope: !128, file: !127, line: 741, baseType: !788, size: 64, offset: 6815040)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "p_out", scope: !128, file: !127, line: 744, baseType: !7, size: 32, offset: 6815104)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "p_out_mvc", scope: !128, file: !127, line: 746, baseType: !652, size: 32768, offset: 6815136)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "p_ref", scope: !128, file: !127, line: 748, baseType: !7, size: 32, offset: 6847904)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessUnitExists", scope: !128, file: !127, line: 751, baseType: !7, size: 32, offset: 6847936)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "NALUCount", scope: !128, file: !127, line: 752, baseType: !7, size: 32, offset: 6847968)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "Bframe_ctr", scope: !128, file: !127, line: 755, baseType: !7, size: 32, offset: 6848000)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "frame_no", scope: !128, file: !127, line: 756, baseType: !7, size: 32, offset: 6848032)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "g_nFrame", scope: !128, file: !127, line: 758, baseType: !7, size: 32, offset: 6848064)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "global_init_done", scope: !128, file: !127, line: 759, baseType: !7, size: 32, offset: 6848096)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "imgY_ref", scope: !128, file: !127, line: 762, baseType: !556, size: 64, offset: 6848128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "imgUV_ref", scope: !128, file: !127, line: 763, baseType: !559, size: 64, offset: 6848192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "qp_per_matrix", scope: !128, file: !127, line: 765, baseType: !68, size: 64, offset: 6848256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "qp_rem_matrix", scope: !128, file: !127, line: 766, baseType: !68, size: 64, offset: 6848320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "last_out_fs", scope: !128, file: !127, line: 768, baseType: !998, size: 64, offset: 6848384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pocs_in_dpb", scope: !128, file: !127, line: 769, baseType: !1186, size: 3200, offset: 6848448)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 100)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture", scope: !128, file: !127, line: 771, baseType: !568, size: 64, offset: 6851648)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dec_picture_JV", scope: !128, file: !127, line: 772, baseType: !1191, size: 192, offset: 6851712)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 192, elements: !159)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "no_reference_picture", scope: !128, file: !127, line: 773, baseType: !568, size: 64, offset: 6851904)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "erc_object_list", scope: !128, file: !127, line: 776, baseType: !1194, size: 64, offset: 6851968)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_buffer", file: !127, line: 776, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "erc_errorVar", scope: !128, file: !127, line: 777, baseType: !1197, size: 64, offset: 6852032)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "ercVariables_s", file: !127, line: 777, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "erc_mvperMB", scope: !128, file: !127, line: 779, baseType: !7, size: 32, offset: 6852096)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "erc_img", scope: !128, file: !127, line: 780, baseType: !485, size: 64, offset: 6852160)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ec_flag", scope: !128, file: !127, line: 781, baseType: !1202, size: 640, offset: 6852224)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 20)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "annex_b", scope: !128, file: !127, line: 783, baseType: !1206, size: 64, offset: 6852864)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "annex_b_struct", file: !127, line: 783, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "bitsfile", scope: !128, file: !127, line: 784, baseType: !1209, size: 64, offset: 6852928)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "sBitsFile", file: !127, line: 784, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !128, file: !127, line: 786, baseType: !998, size: 64, offset: 6852992)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output", scope: !128, file: !127, line: 788, baseType: !568, size: 64, offset: 6853056)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pending_output_state", scope: !128, file: !127, line: 789, baseType: !7, size: 32, offset: 6853120)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_flag", scope: !128, file: !127, line: 790, baseType: !7, size: 32, offset: 6853152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "BitStreamFile", scope: !128, file: !127, line: 792, baseType: !7, size: 32, offset: 6853184)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb", scope: !128, file: !127, line: 794, baseType: !491, size: 64, offset: 6853248)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_legacy", scope: !128, file: !127, line: 795, baseType: !491, size: 64, offset: 6853312)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "p_Dpb_layer", scope: !128, file: !127, line: 796, baseType: !1219, size: 128, offset: 6853376)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 128, elements: !453)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cslice_type", scope: !128, file: !127, line: 800, baseType: !1221, size: 72, offset: 6853504)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 72, elements: !1222)
!1222 = !{!889}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "MbToSliceGroupMap", scope: !128, file: !127, line: 802, baseType: !68, size: 64, offset: 6853632)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "MapUnitToSliceGroupMap", scope: !128, file: !127, line: 803, baseType: !68, size: 64, offset: 6853696)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSliceGroups", scope: !128, file: !127, line: 804, baseType: !7, size: 32, offset: 6853760)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "seiToneMapping", scope: !128, file: !127, line: 807, baseType: !1227, size: 64, offset: 6853824)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "tone_mapping_struct_s", file: !127, line: 807, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "buf2img", scope: !128, file: !127, line: 810, baseType: !1230, size: 64, offset: 6853888)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !556, !1233, !7, !7, !7, !7, !7, !7}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "getNeighbour", scope: !128, file: !127, line: 811, baseType: !1235, size: 64, offset: 6853952)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !740, !7, !7, !68, !827}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_block_pos", scope: !128, file: !127, line: 812, baseType: !1239, size: 64, offset: 6854016)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !7, !588, !588}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthVer", scope: !128, file: !127, line: 813, baseType: !1243, size: 64, offset: 6854080)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !256, !740, !7, !7, !568}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "GetStrengthHor", scope: !128, file: !127, line: 814, baseType: !1243, size: 64, offset: 6854144)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaVer", scope: !128, file: !127, line: 815, baseType: !1248, size: 64, offset: 6854208)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !821, !556, !256, !740, !7, !568}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopLumaHor", scope: !128, file: !127, line: 816, baseType: !1248, size: 64, offset: 6854272)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaVer", scope: !128, file: !127, line: 817, baseType: !1253, size: 64, offset: 6854336)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !556, !256, !740, !7, !7, !568}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "EdgeLoopChromaHor", scope: !128, file: !127, line: 818, baseType: !1253, size: 64, offset: 6854400)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "img2buf", scope: !128, file: !127, line: 819, baseType: !1258, size: 64, offset: 6854464)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !556, !1233, !7, !7, !7, !7, !7, !7, !7, !7}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pDecOuputPic", scope: !128, file: !127, line: 821, baseType: !1262, size: 64, offset: 6854528)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodedPicList", file: !127, line: 561, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decodedpic_t", file: !127, line: 544, size: 640, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bValid", scope: !1264, file: !127, line: 546, baseType: !7, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "iViewId", scope: !1264, file: !127, line: 547, baseType: !7, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "iPOC", scope: !1264, file: !127, line: 548, baseType: !7, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVFormat", scope: !1264, file: !127, line: 549, baseType: !7, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "iYUVStorageFormat", scope: !1264, file: !127, line: 550, baseType: !7, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "iBitDepth", scope: !1264, file: !127, line: 551, baseType: !7, size: 32, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pY", scope: !1264, file: !127, line: 552, baseType: !256, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pU", scope: !1264, file: !127, line: 553, baseType: !256, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pV", scope: !1264, file: !127, line: 554, baseType: !256, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "iWidth", scope: !1264, file: !127, line: 555, baseType: !7, size: 32, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "iHeight", scope: !1264, file: !127, line: 556, baseType: !7, size: 32, offset: 416)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "iYBufStride", scope: !1264, file: !127, line: 557, baseType: !7, size: 32, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "iUVBufStride", scope: !1264, file: !127, line: 558, baseType: !7, size: 32, offset: 480)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "iSkipPicNum", scope: !1264, file: !127, line: 559, baseType: !7, size: 32, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1264, file: !127, line: 560, baseType: !1281, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "iDeblockMode", scope: !128, file: !127, line: 822, baseType: !7, size: 32, offset: 6854592)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nalu", scope: !128, file: !127, line: 823, baseType: !1284, size: 64, offset: 6854656)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "nalu_t", file: !127, line: 823, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadX", scope: !128, file: !127, line: 824, baseType: !7, size: 32, offset: 6854720)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "iLumaPadY", scope: !128, file: !127, line: 825, baseType: !7, size: 32, offset: 6854752)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadX", scope: !128, file: !127, line: 826, baseType: !7, size: 32, offset: 6854784)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "iChromaPadY", scope: !128, file: !127, line: 827, baseType: !7, size: 32, offset: 6854816)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "bDeblockEnable", scope: !128, file: !127, line: 829, baseType: !7, size: 32, offset: 6854848)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "iPostProcess", scope: !128, file: !127, line: 830, baseType: !7, size: 32, offset: 6854880)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "bFrameInit", scope: !128, file: !127, line: 831, baseType: !7, size: 32, offset: 6854912)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pNextPPS", scope: !128, file: !127, line: 835, baseType: !216, size: 64, offset: 6854976)
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !122, file: !3, line: 37, type: !125)
!1296 = !DILocation(line: 0, scope: !122)
!1297 = !DILocation(line: 39, column: 10, scope: !122)
!1298 = !DILocation(line: 39, column: 28, scope: !122)
!1299 = !DILocation(line: 40, column: 10, scope: !122)
!1300 = !DILocation(line: 40, column: 28, scope: !122)
!1301 = !DILocation(line: 41, column: 10, scope: !122)
!1302 = !DILocation(line: 41, column: 28, scope: !122)
!1303 = !DILocation(line: 42, column: 10, scope: !122)
!1304 = !DILocation(line: 42, column: 28, scope: !122)
!1305 = !DILocation(line: 43, column: 10, scope: !122)
!1306 = !DILocation(line: 43, column: 28, scope: !122)
!1307 = !DILocation(line: 44, column: 10, scope: !122)
!1308 = !DILocation(line: 44, column: 28, scope: !122)
!1309 = !DILocation(line: 45, column: 1, scope: !122)
!1310 = distinct !DISubprogram(name: "GetStrengthVer", scope: !3, file: !3, line: 93, type: !1311, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !256, !740, !7, !7, !518}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1326, !1327, !1328, !1331, !1332, !1333, !1334, !1341, !1342, !1343, !1344, !1347, !1349, !1350, !1351, !1352}
!1314 = !DILocalVariable(name: "Strength", arg: 1, scope: !1310, file: !3, line: 93, type: !256)
!1315 = !DILocalVariable(name: "MbQ", arg: 2, scope: !1310, file: !3, line: 93, type: !740)
!1316 = !DILocalVariable(name: "edge", arg: 3, scope: !1310, file: !3, line: 93, type: !7)
!1317 = !DILocalVariable(name: "mvlimit", arg: 4, scope: !1310, file: !3, line: 93, type: !7)
!1318 = !DILocalVariable(name: "p", arg: 5, scope: !1310, file: !3, line: 93, type: !518)
!1319 = !DILocalVariable(name: "currSlice", scope: !1310, file: !3, line: 95, type: !480)
!1320 = !DILocalVariable(name: "StrValue", scope: !1310, file: !3, line: 96, type: !7)
!1321 = !DILocalVariable(name: "MbP", scope: !1322, file: !3, line: 108, type: !740)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 107, column: 5)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 106, column: 9)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 105, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 98, column: 7)
!1326 = !DILocalVariable(name: "xQ", scope: !1322, file: !3, line: 109, type: !7)
!1327 = !DILocalVariable(name: "neighbor", scope: !1322, file: !3, line: 110, type: !740)
!1328 = !DILocalVariable(name: "blkP", scope: !1329, file: !3, line: 115, type: !7)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 114, column: 7)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 113, column: 11)
!1331 = !DILocalVariable(name: "blkQ", scope: !1329, file: !3, line: 115, type: !7)
!1332 = !DILocalVariable(name: "idx", scope: !1329, file: !3, line: 115, type: !7)
!1333 = !DILocalVariable(name: "mb", scope: !1329, file: !3, line: 116, type: !750)
!1334 = !DILocalVariable(name: "blk_y", scope: !1335, file: !3, line: 129, type: !7)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 128, column: 11)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 125, column: 20)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 123, column: 15)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 120, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 119, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 119, column: 9)
!1341 = !DILocalVariable(name: "blk_x", scope: !1335, file: !3, line: 130, type: !7)
!1342 = !DILocalVariable(name: "blk_y2", scope: !1335, file: !3, line: 131, type: !7)
!1343 = !DILocalVariable(name: "blk_x2", scope: !1335, file: !3, line: 132, type: !7)
!1344 = !DILocalVariable(name: "mv_info_p", scope: !1335, file: !3, line: 133, type: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "PicMotionParams", file: !493, line: 43, baseType: !564)
!1347 = !DILocalVariable(name: "ref_p0", scope: !1335, file: !3, line: 134, type: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicturePtr", file: !493, line: 140, baseType: !518)
!1349 = !DILocalVariable(name: "ref_p1", scope: !1335, file: !3, line: 135, type: !1348)
!1350 = !DILocalVariable(name: "mv_info_q", scope: !1335, file: !3, line: 136, type: !1345)
!1351 = !DILocalVariable(name: "ref_q0", scope: !1335, file: !3, line: 137, type: !1348)
!1352 = !DILocalVariable(name: "ref_q1", scope: !1335, file: !3, line: 138, type: !1348)
!1353 = !DILocation(line: 0, scope: !1310)
!1354 = !DILocation(line: 95, column: 27, scope: !1310)
!1355 = !DILocation(line: 98, column: 19, scope: !1325)
!1356 = !DILocation(line: 98, column: 40, scope: !1325)
!1357 = !DILocation(line: 101, column: 22, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 99, column: 3)
!1359 = !DILocation(line: 101, column: 27, scope: !1358)
!1360 = !DILocation(line: 102, column: 5, scope: !1358)
!1361 = !DILocation(line: 103, column: 3, scope: !1358)
!1362 = !DILocation(line: 106, column: 14, scope: !1323)
!1363 = !DILocation(line: 106, column: 29, scope: !1323)
!1364 = !DILocation(line: 106, column: 9, scope: !1324)
!1365 = !DILocation(line: 109, column: 21, scope: !1322)
!1366 = !DILocation(line: 0, scope: !1322)
!1367 = !DILocalVariable(name: "mb", arg: 1, scope: !1368, file: !3, line: 48, type: !740)
!1368 = distinct !DISubprogram(name: "get_non_aff_neighbor_luma", scope: !3, file: !3, line: 48, type: !1369, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!740, !740, !7, !7}
!1371 = !{!1367, !1372, !1373}
!1372 = !DILocalVariable(name: "xN", arg: 2, scope: !1368, file: !3, line: 48, type: !7)
!1373 = !DILocalVariable(name: "yN", arg: 3, scope: !1368, file: !3, line: 48, type: !7)
!1374 = !DILocation(line: 0, scope: !1368, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 110, column: 30, scope: !1322)
!1376 = !DILocation(line: 50, column: 10, scope: !1377, inlinedAt: !1375)
!1377 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 50, column: 7)
!1378 = !DILocation(line: 50, column: 7, scope: !1368, inlinedAt: !1375)
!1379 = !DILocation(line: 0, scope: !1377, inlinedAt: !1375)
!1380 = !DILocation(line: 111, column: 13, scope: !1322)
!1381 = !DILocation(line: 113, column: 16, scope: !1330)
!1382 = !DILocation(line: 113, column: 24, scope: !1330)
!1383 = !DILocation(line: 113, column: 39, scope: !1330)
!1384 = !DILocation(line: 113, column: 11, scope: !1322)
!1385 = !DILocation(line: 116, column: 23, scope: !1329)
!1386 = !DILocation(line: 116, column: 36, scope: !1329)
!1387 = !DILocation(line: 0, scope: !1329)
!1388 = !DILocation(line: 117, column: 14, scope: !1329)
!1389 = !DILocation(line: 118, column: 14, scope: !1329)
!1390 = !DILocation(line: 119, column: 9, scope: !1340)
!1391 = !DILocation(line: 123, column: 17, scope: !1337)
!1392 = !DILocalVariable(name: "x", arg: 1, scope: !1393, file: !76, line: 257, type: !7)
!1393 = distinct !DISubprogram(name: "i64_power2", scope: !76, file: !76, line: 257, type: !1394, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!788, !7}
!1396 = !{!1392}
!1397 = !DILocation(line: 0, scope: !1393, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 123, column: 35, scope: !1337)
!1399 = !DILocation(line: 259, column: 13, scope: !1393, inlinedAt: !1398)
!1400 = !DILocation(line: 259, column: 10, scope: !1393, inlinedAt: !1398)
!1401 = !DILocation(line: 259, column: 25, scope: !1393, inlinedAt: !1398)
!1402 = !DILocation(line: 123, column: 33, scope: !1337)
!1403 = !DILocation(line: 123, column: 53, scope: !1337)
!1404 = !DILocation(line: 123, column: 59, scope: !1337)
!1405 = !DILocation(line: 123, column: 64, scope: !1337)
!1406 = !DILocation(line: 0, scope: !1393, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 123, column: 82, scope: !1337)
!1408 = !DILocation(line: 259, column: 25, scope: !1393, inlinedAt: !1407)
!1409 = !DILocation(line: 123, column: 80, scope: !1337)
!1410 = !DILocation(line: 123, column: 100, scope: !1337)
!1411 = !DILocation(line: 123, column: 15, scope: !1338)
!1412 = !DILocation(line: 125, column: 25, scope: !1336)
!1413 = !DILocation(line: 125, column: 35, scope: !1336)
!1414 = !DILocation(line: 125, column: 50, scope: !1336)
!1415 = !DILocation(line: 129, column: 39, scope: !1335)
!1416 = !DILocation(line: 129, column: 31, scope: !1335)
!1417 = !DILocation(line: 0, scope: !1335)
!1418 = !DILocation(line: 131, column: 34, scope: !1335)
!1419 = !DILocation(line: 131, column: 26, scope: !1335)
!1420 = !DILocation(line: 131, column: 70, scope: !1335)
!1421 = !DILocation(line: 132, column: 34, scope: !1335)
!1422 = !DILocation(line: 132, column: 26, scope: !1335)
!1423 = !DILocation(line: 132, column: 70, scope: !1335)
!1424 = !DILocation(line: 133, column: 46, scope: !1335)
!1425 = !DILocation(line: 133, column: 43, scope: !1335)
!1426 = !DILocation(line: 134, column: 41, scope: !1335)
!1427 = !DILocation(line: 135, column: 41, scope: !1335)
!1428 = !DILocation(line: 136, column: 43, scope: !1335)
!1429 = !DILocation(line: 137, column: 41, scope: !1335)
!1430 = !DILocation(line: 138, column: 41, scope: !1335)
!1431 = !DILocation(line: 140, column: 26, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 140, column: 18)
!1433 = !DILocation(line: 140, column: 36, scope: !1432)
!1434 = !DILocation(line: 140, column: 68, scope: !1432)
!1435 = !DILocation(line: 140, column: 78, scope: !1432)
!1436 = !DILocation(line: 143, column: 26, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 143, column: 19)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 141, column: 13)
!1439 = !DILocation(line: 0, scope: !1437)
!1440 = !DILocation(line: 143, column: 19, scope: !1438)
!1441 = !DILocation(line: 0, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 146, column: 21)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 144, column: 15)
!1444 = !DILocation(line: 146, column: 21, scope: !1443)
!1445 = !DILocation(line: 149, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 147, column: 17)
!1447 = !DILocalVariable(name: "mv0", arg: 1, scope: !1448, file: !85, line: 63, type: !1451)
!1448 = distinct !DISubprogram(name: "compare_mvs", scope: !85, file: !85, line: 63, type: !1449, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1453)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!7, !1451, !1451, !7}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1453 = !{!1447, !1454, !1455}
!1454 = !DILocalVariable(name: "mv1", arg: 2, scope: !1448, file: !85, line: 63, type: !1451)
!1455 = !DILocalVariable(name: "mvlimit", arg: 3, scope: !1448, file: !85, line: 63, type: !7)
!1456 = !DILocation(line: 0, scope: !1448, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 149, column: 21, scope: !1446)
!1458 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1457)
!1459 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1457)
!1460 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1457)
!1461 = !DILocation(line: 0, scope: !75, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1457)
!1463 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1462)
!1464 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1457)
!1465 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1457)
!1466 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1457)
!1467 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1457)
!1468 = !DILocation(line: 0, scope: !75, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1457)
!1470 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1469)
!1471 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1457)
!1472 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1457)
!1473 = !DILocation(line: 150, column: 34, scope: !1446)
!1474 = !DILocation(line: 150, column: 58, scope: !1446)
!1475 = !DILocation(line: 150, column: 21, scope: !1446)
!1476 = !DILocation(line: 0, scope: !1448, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 150, column: 21, scope: !1446)
!1478 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1477)
!1479 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1477)
!1480 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1477)
!1481 = !DILocation(line: 0, scope: !75, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1477)
!1483 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1482)
!1484 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1477)
!1485 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1477)
!1486 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1477)
!1487 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1477)
!1488 = !DILocation(line: 0, scope: !75, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1477)
!1490 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1489)
!1491 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1477)
!1492 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1477)
!1493 = !DILocation(line: 149, column: 90, scope: !1446)
!1494 = !DILocation(line: 151, column: 17, scope: !1446)
!1495 = !DILocation(line: 155, column: 58, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 153, column: 17)
!1497 = !DILocation(line: 155, column: 21, scope: !1496)
!1498 = !DILocation(line: 0, scope: !1448, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 155, column: 21, scope: !1496)
!1500 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1499)
!1501 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1499)
!1502 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1499)
!1503 = !DILocation(line: 0, scope: !75, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1499)
!1505 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1504)
!1506 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1499)
!1507 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1499)
!1508 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1499)
!1509 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1499)
!1510 = !DILocation(line: 0, scope: !75, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1499)
!1512 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1511)
!1513 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1499)
!1514 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1499)
!1515 = !DILocation(line: 156, column: 34, scope: !1496)
!1516 = !DILocation(line: 156, column: 21, scope: !1496)
!1517 = !DILocation(line: 0, scope: !1448, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 156, column: 21, scope: !1496)
!1519 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1518)
!1520 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1518)
!1521 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1518)
!1522 = !DILocation(line: 0, scope: !75, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1518)
!1524 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1523)
!1525 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1518)
!1526 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1518)
!1527 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1518)
!1528 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1518)
!1529 = !DILocation(line: 0, scope: !75, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1518)
!1531 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1530)
!1532 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1518)
!1533 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1518)
!1534 = !DILocation(line: 155, column: 90, scope: !1496)
!1535 = !DILocation(line: 162, column: 19, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 160, column: 15)
!1537 = !DILocation(line: 0, scope: !1448, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 162, column: 19, scope: !1536)
!1539 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1538)
!1540 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1538)
!1541 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1538)
!1542 = !DILocation(line: 0, scope: !75, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1538)
!1544 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1543)
!1545 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1538)
!1546 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1538)
!1547 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1538)
!1548 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1538)
!1549 = !DILocation(line: 0, scope: !75, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1538)
!1551 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1550)
!1552 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1538)
!1553 = !DILocation(line: 163, column: 32, scope: !1536)
!1554 = !DILocation(line: 163, column: 56, scope: !1536)
!1555 = !DILocation(line: 163, column: 19, scope: !1536)
!1556 = !DILocation(line: 0, scope: !1448, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 163, column: 19, scope: !1536)
!1558 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1557)
!1559 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1557)
!1560 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1557)
!1561 = !DILocation(line: 0, scope: !75, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1557)
!1563 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1562)
!1564 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1557)
!1565 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1557)
!1566 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1557)
!1567 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1557)
!1568 = !DILocation(line: 0, scope: !75, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1557)
!1570 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1569)
!1571 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1557)
!1572 = !DILocation(line: 162, column: 88, scope: !1536)
!1573 = !DILocation(line: 164, column: 19, scope: !1536)
!1574 = !DILocation(line: 0, scope: !1448, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 165, column: 19, scope: !1536)
!1576 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1575)
!1577 = !DILocation(line: 0, scope: !75, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1575)
!1579 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1578)
!1580 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1575)
!1581 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1575)
!1582 = !DILocation(line: 0, scope: !75, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1575)
!1584 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1583)
!1585 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1575)
!1586 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1575)
!1587 = !DILocation(line: 0, scope: !1448, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 166, column: 19, scope: !1536)
!1589 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1588)
!1590 = !DILocation(line: 0, scope: !75, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1588)
!1592 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1591)
!1593 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1588)
!1594 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1588)
!1595 = !DILocation(line: 0, scope: !75, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1588)
!1597 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1596)
!1598 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1588)
!1599 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1588)
!1600 = !DILocation(line: 165, column: 88, scope: !1536)
!1601 = !DILocation(line: 0, scope: !1536)
!1602 = !DILocation(line: 0, scope: !1337)
!1603 = !DILocation(line: 175, column: 44, scope: !1338)
!1604 = !DILocation(line: 175, column: 33, scope: !1338)
!1605 = !DILocation(line: 121, column: 33, scope: !1338)
!1606 = !DILocation(line: 122, column: 33, scope: !1338)
!1607 = !DILocation(line: 175, column: 27, scope: !1338)
!1608 = !DILocation(line: 192, column: 1, scope: !1310)
!1609 = !DILocation(line: 182, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 179, column: 7)
!1611 = !DILocation(line: 188, column: 24, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 186, column: 5)
!1613 = !DILocation(line: 188, column: 29, scope: !1612)
!1614 = !DILocation(line: 189, column: 7, scope: !1612)
!1615 = distinct !DISubprogram(name: "GetStrengthHor", scope: !3, file: !3, line: 200, type: !1311, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1629, !1630, !1631, !1634, !1635, !1636, !1637, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652}
!1617 = !DILocalVariable(name: "Strength", arg: 1, scope: !1615, file: !3, line: 200, type: !256)
!1618 = !DILocalVariable(name: "MbQ", arg: 2, scope: !1615, file: !3, line: 200, type: !740)
!1619 = !DILocalVariable(name: "edge", arg: 3, scope: !1615, file: !3, line: 200, type: !7)
!1620 = !DILocalVariable(name: "mvlimit", arg: 4, scope: !1615, file: !3, line: 200, type: !7)
!1621 = !DILocalVariable(name: "p", arg: 5, scope: !1615, file: !3, line: 200, type: !518)
!1622 = !DILocalVariable(name: "StrValue", scope: !1615, file: !3, line: 202, type: !7)
!1623 = !DILocalVariable(name: "currSlice", scope: !1615, file: !3, line: 203, type: !480)
!1624 = !DILocalVariable(name: "MbP", scope: !1625, file: !3, line: 215, type: !740)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 214, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 213, column: 9)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 212, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 205, column: 7)
!1629 = !DILocalVariable(name: "yQ", scope: !1625, file: !3, line: 216, type: !7)
!1630 = !DILocalVariable(name: "neighbor", scope: !1625, file: !3, line: 218, type: !740)
!1631 = !DILocalVariable(name: "blkP", scope: !1632, file: !3, line: 224, type: !7)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 223, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 222, column: 11)
!1634 = !DILocalVariable(name: "blkQ", scope: !1632, file: !3, line: 224, type: !7)
!1635 = !DILocalVariable(name: "idx", scope: !1632, file: !3, line: 224, type: !7)
!1636 = !DILocalVariable(name: "mb", scope: !1632, file: !3, line: 225, type: !750)
!1637 = !DILocalVariable(name: "blk_y", scope: !1638, file: !3, line: 239, type: !7)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 238, column: 11)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 235, column: 20)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 233, column: 15)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 229, column: 9)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 228, column: 9)
!1643 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 228, column: 9)
!1644 = !DILocalVariable(name: "blk_x", scope: !1638, file: !3, line: 240, type: !7)
!1645 = !DILocalVariable(name: "blk_y2", scope: !1638, file: !3, line: 241, type: !7)
!1646 = !DILocalVariable(name: "blk_x2", scope: !1638, file: !3, line: 242, type: !7)
!1647 = !DILocalVariable(name: "mv_info_p", scope: !1638, file: !3, line: 244, type: !1345)
!1648 = !DILocalVariable(name: "mv_info_q", scope: !1638, file: !3, line: 245, type: !1345)
!1649 = !DILocalVariable(name: "ref_p0", scope: !1638, file: !3, line: 247, type: !1348)
!1650 = !DILocalVariable(name: "ref_q0", scope: !1638, file: !3, line: 248, type: !1348)
!1651 = !DILocalVariable(name: "ref_p1", scope: !1638, file: !3, line: 249, type: !1348)
!1652 = !DILocalVariable(name: "ref_q1", scope: !1638, file: !3, line: 250, type: !1348)
!1653 = !DILocation(line: 0, scope: !1615)
!1654 = !DILocation(line: 203, column: 27, scope: !1615)
!1655 = !DILocation(line: 205, column: 19, scope: !1628)
!1656 = !DILocation(line: 205, column: 40, scope: !1628)
!1657 = !DILocation(line: 208, column: 22, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 206, column: 3)
!1659 = !DILocation(line: 208, column: 27, scope: !1658)
!1660 = !DILocation(line: 208, column: 36, scope: !1658)
!1661 = !DILocation(line: 208, column: 45, scope: !1658)
!1662 = !DILocation(line: 209, column: 22, scope: !1658)
!1663 = !DILocation(line: 0, scope: !1658)
!1664 = !DILocation(line: 209, column: 5, scope: !1658)
!1665 = !DILocation(line: 210, column: 3, scope: !1658)
!1666 = !DILocation(line: 213, column: 14, scope: !1626)
!1667 = !DILocation(line: 213, column: 29, scope: !1626)
!1668 = !DILocation(line: 213, column: 9, scope: !1627)
!1669 = !DILocation(line: 216, column: 22, scope: !1625)
!1670 = !DILocation(line: 216, column: 17, scope: !1625)
!1671 = !DILocation(line: 0, scope: !1625)
!1672 = !DILocation(line: 0, scope: !1368, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 218, column: 30, scope: !1625)
!1674 = !DILocation(line: 52, column: 15, scope: !1675, inlinedAt: !1673)
!1675 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 52, column: 12)
!1676 = !DILocation(line: 52, column: 12, scope: !1377, inlinedAt: !1673)
!1677 = !DILocation(line: 0, scope: !1377, inlinedAt: !1673)
!1678 = !DILocation(line: 56, column: 1, scope: !1368, inlinedAt: !1673)
!1679 = !DILocation(line: 220, column: 13, scope: !1625)
!1680 = !DILocation(line: 222, column: 16, scope: !1633)
!1681 = !DILocation(line: 222, column: 24, scope: !1633)
!1682 = !DILocation(line: 222, column: 39, scope: !1633)
!1683 = !DILocation(line: 222, column: 11, scope: !1625)
!1684 = !DILocation(line: 225, column: 23, scope: !1632)
!1685 = !DILocation(line: 225, column: 36, scope: !1632)
!1686 = !DILocation(line: 0, scope: !1632)
!1687 = !DILocation(line: 226, column: 14, scope: !1632)
!1688 = !DILocation(line: 227, column: 14, scope: !1632)
!1689 = !DILocation(line: 228, column: 9, scope: !1643)
!1690 = !DILocation(line: 233, column: 17, scope: !1640)
!1691 = !DILocation(line: 0, scope: !1393, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 233, column: 35, scope: !1640)
!1693 = !DILocation(line: 259, column: 13, scope: !1393, inlinedAt: !1692)
!1694 = !DILocation(line: 259, column: 10, scope: !1393, inlinedAt: !1692)
!1695 = !DILocation(line: 259, column: 25, scope: !1393, inlinedAt: !1692)
!1696 = !DILocation(line: 233, column: 33, scope: !1640)
!1697 = !DILocation(line: 233, column: 53, scope: !1640)
!1698 = !DILocation(line: 233, column: 59, scope: !1640)
!1699 = !DILocation(line: 233, column: 64, scope: !1640)
!1700 = !DILocation(line: 0, scope: !1393, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 233, column: 82, scope: !1640)
!1702 = !DILocation(line: 259, column: 25, scope: !1393, inlinedAt: !1701)
!1703 = !DILocation(line: 233, column: 80, scope: !1640)
!1704 = !DILocation(line: 233, column: 100, scope: !1640)
!1705 = !DILocation(line: 233, column: 15, scope: !1641)
!1706 = !DILocation(line: 235, column: 25, scope: !1639)
!1707 = !DILocation(line: 235, column: 35, scope: !1639)
!1708 = !DILocation(line: 235, column: 50, scope: !1639)
!1709 = !DILocation(line: 0, scope: !1638)
!1710 = !DILocation(line: 241, column: 26, scope: !1638)
!1711 = !DILocation(line: 241, column: 54, scope: !1638)
!1712 = !DILocation(line: 242, column: 34, scope: !1638)
!1713 = !DILocation(line: 242, column: 26, scope: !1638)
!1714 = !DILocation(line: 242, column: 68, scope: !1638)
!1715 = !DILocation(line: 244, column: 46, scope: !1638)
!1716 = !DILocation(line: 244, column: 43, scope: !1638)
!1717 = !DILocation(line: 245, column: 43, scope: !1638)
!1718 = !DILocation(line: 247, column: 41, scope: !1638)
!1719 = !DILocation(line: 248, column: 41, scope: !1638)
!1720 = !DILocation(line: 249, column: 41, scope: !1638)
!1721 = !DILocation(line: 250, column: 41, scope: !1638)
!1722 = !DILocation(line: 252, column: 26, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 252, column: 18)
!1724 = !DILocation(line: 252, column: 36, scope: !1723)
!1725 = !DILocation(line: 252, column: 68, scope: !1723)
!1726 = !DILocation(line: 252, column: 78, scope: !1723)
!1727 = !DILocation(line: 255, column: 26, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 255, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 253, column: 13)
!1730 = !DILocation(line: 0, scope: !1728)
!1731 = !DILocation(line: 255, column: 19, scope: !1729)
!1732 = !DILocation(line: 0, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 258, column: 21)
!1734 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 256, column: 15)
!1735 = !DILocation(line: 258, column: 21, scope: !1734)
!1736 = !DILocation(line: 261, column: 21, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 259, column: 17)
!1738 = !DILocation(line: 0, scope: !1448, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 261, column: 21, scope: !1737)
!1740 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1739)
!1741 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1739)
!1742 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1739)
!1743 = !DILocation(line: 0, scope: !75, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1739)
!1745 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1744)
!1746 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1739)
!1747 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1739)
!1748 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1739)
!1749 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1739)
!1750 = !DILocation(line: 0, scope: !75, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1739)
!1752 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1751)
!1753 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1739)
!1754 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1739)
!1755 = !DILocation(line: 262, column: 34, scope: !1737)
!1756 = !DILocation(line: 262, column: 58, scope: !1737)
!1757 = !DILocation(line: 262, column: 21, scope: !1737)
!1758 = !DILocation(line: 0, scope: !1448, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 262, column: 21, scope: !1737)
!1760 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1759)
!1761 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1759)
!1762 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1759)
!1763 = !DILocation(line: 0, scope: !75, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1759)
!1765 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1764)
!1766 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1759)
!1767 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1759)
!1768 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1759)
!1769 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1759)
!1770 = !DILocation(line: 0, scope: !75, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1759)
!1772 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1771)
!1773 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1759)
!1774 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1759)
!1775 = !DILocation(line: 261, column: 90, scope: !1737)
!1776 = !DILocation(line: 263, column: 17, scope: !1737)
!1777 = !DILocation(line: 267, column: 58, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 265, column: 17)
!1779 = !DILocation(line: 267, column: 21, scope: !1778)
!1780 = !DILocation(line: 0, scope: !1448, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 267, column: 21, scope: !1778)
!1782 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1781)
!1783 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1781)
!1784 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1781)
!1785 = !DILocation(line: 0, scope: !75, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1781)
!1787 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1786)
!1788 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1781)
!1789 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1781)
!1790 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1781)
!1791 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1781)
!1792 = !DILocation(line: 0, scope: !75, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1781)
!1794 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1793)
!1795 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1781)
!1796 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1781)
!1797 = !DILocation(line: 268, column: 34, scope: !1778)
!1798 = !DILocation(line: 268, column: 21, scope: !1778)
!1799 = !DILocation(line: 0, scope: !1448, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 268, column: 21, scope: !1778)
!1801 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1800)
!1802 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1800)
!1803 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1800)
!1804 = !DILocation(line: 0, scope: !75, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1800)
!1806 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1805)
!1807 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1800)
!1808 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1800)
!1809 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1800)
!1810 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1800)
!1811 = !DILocation(line: 0, scope: !75, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1800)
!1813 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1812)
!1814 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1800)
!1815 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1800)
!1816 = !DILocation(line: 267, column: 90, scope: !1778)
!1817 = !DILocation(line: 274, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 272, column: 15)
!1819 = !DILocation(line: 0, scope: !1448, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 274, column: 19, scope: !1818)
!1821 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1820)
!1822 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1820)
!1823 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1820)
!1824 = !DILocation(line: 0, scope: !75, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1820)
!1826 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1825)
!1827 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1820)
!1828 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1820)
!1829 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1820)
!1830 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1820)
!1831 = !DILocation(line: 0, scope: !75, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1820)
!1833 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1832)
!1834 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1820)
!1835 = !DILocation(line: 275, column: 32, scope: !1818)
!1836 = !DILocation(line: 275, column: 56, scope: !1818)
!1837 = !DILocation(line: 275, column: 19, scope: !1818)
!1838 = !DILocation(line: 0, scope: !1448, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 275, column: 19, scope: !1818)
!1840 = !DILocation(line: 65, column: 18, scope: !1448, inlinedAt: !1839)
!1841 = !DILocation(line: 65, column: 30, scope: !1448, inlinedAt: !1839)
!1842 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1839)
!1843 = !DILocation(line: 0, scope: !75, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1839)
!1845 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1844)
!1846 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1839)
!1847 = !DILocation(line: 65, column: 56, scope: !1448, inlinedAt: !1839)
!1848 = !DILocation(line: 65, column: 68, scope: !1448, inlinedAt: !1839)
!1849 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1839)
!1850 = !DILocation(line: 0, scope: !75, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1839)
!1852 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1851)
!1853 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1839)
!1854 = !DILocation(line: 274, column: 88, scope: !1818)
!1855 = !DILocation(line: 276, column: 19, scope: !1818)
!1856 = !DILocation(line: 0, scope: !1448, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 277, column: 19, scope: !1818)
!1858 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1857)
!1859 = !DILocation(line: 0, scope: !75, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1857)
!1861 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1860)
!1862 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1857)
!1863 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1857)
!1864 = !DILocation(line: 0, scope: !75, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1857)
!1866 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1865)
!1867 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1857)
!1868 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1857)
!1869 = !DILocation(line: 0, scope: !1448, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 278, column: 19, scope: !1818)
!1871 = !DILocation(line: 65, column: 28, scope: !1448, inlinedAt: !1870)
!1872 = !DILocation(line: 0, scope: !75, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 65, column: 12, scope: !1448, inlinedAt: !1870)
!1874 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1873)
!1875 = !DILocation(line: 65, column: 41, scope: !1448, inlinedAt: !1870)
!1876 = !DILocation(line: 65, column: 66, scope: !1448, inlinedAt: !1870)
!1877 = !DILocation(line: 0, scope: !75, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 65, column: 50, scope: !1448, inlinedAt: !1870)
!1879 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1878)
!1880 = !DILocation(line: 65, column: 79, scope: !1448, inlinedAt: !1870)
!1881 = !DILocation(line: 65, column: 47, scope: !1448, inlinedAt: !1870)
!1882 = !DILocation(line: 277, column: 88, scope: !1818)
!1883 = !DILocation(line: 0, scope: !1818)
!1884 = !DILocation(line: 0, scope: !1640)
!1885 = !DILocation(line: 286, column: 44, scope: !1641)
!1886 = !DILocation(line: 286, column: 33, scope: !1641)
!1887 = !DILocation(line: 230, column: 38, scope: !1641)
!1888 = !DILocation(line: 231, column: 44, scope: !1641)
!1889 = !DILocation(line: 240, column: 31, scope: !1638)
!1890 = !DILocation(line: 286, column: 27, scope: !1641)
!1891 = !DILocation(line: 303, column: 1, scope: !1615)
!1892 = !DILocation(line: 292, column: 38, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 290, column: 7)
!1894 = !DILocation(line: 292, column: 48, scope: !1893)
!1895 = !DILocation(line: 293, column: 26, scope: !1893)
!1896 = !DILocation(line: 293, column: 9, scope: !1893)
!1897 = !DILocation(line: 299, column: 24, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 297, column: 5)
!1899 = !DILocation(line: 299, column: 29, scope: !1898)
!1900 = !DILocation(line: 299, column: 36, scope: !1898)
!1901 = !DILocation(line: 299, column: 46, scope: !1898)
!1902 = !DILocation(line: 300, column: 24, scope: !1898)
!1903 = !DILocation(line: 0, scope: !1898)
!1904 = !DILocation(line: 300, column: 7, scope: !1898)
!1905 = distinct !DISubprogram(name: "EdgeLoopLumaVer", scope: !3, file: !3, line: 312, type: !1906, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !821, !556, !256, !740, !7, !518}
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1920, !1921, !1922, !1923, !1924, !1925, !1929, !1930, !1931, !1932, !1933, !1939, !1943, !1944, !1945, !1946, !1949, !1950, !1955, !1956, !1957, !1960, !1963, !1966, !1967, !1968, !1969, !1970, !1978, !1979, !1982, !1983, !1984, !1985, !1986, !1987, !1994, !1995, !1998, !1999, !2000, !2001, !2002, !2003}
!1909 = !DILocalVariable(name: "pl", arg: 1, scope: !1905, file: !3, line: 312, type: !821)
!1910 = !DILocalVariable(name: "Img", arg: 2, scope: !1905, file: !3, line: 312, type: !556)
!1911 = !DILocalVariable(name: "Strength", arg: 3, scope: !1905, file: !3, line: 312, type: !256)
!1912 = !DILocalVariable(name: "MbQ", arg: 4, scope: !1905, file: !3, line: 312, type: !740)
!1913 = !DILocalVariable(name: "edge", arg: 5, scope: !1905, file: !3, line: 312, type: !7)
!1914 = !DILocalVariable(name: "p", arg: 6, scope: !1905, file: !3, line: 312, type: !518)
!1915 = !DILocalVariable(name: "p_Vid", scope: !1905, file: !3, line: 314, type: !125)
!1916 = !DILocalVariable(name: "MbP", scope: !1905, file: !3, line: 316, type: !740)
!1917 = !DILocalVariable(name: "bitdepth_scale", scope: !1918, file: !3, line: 320, type: !7)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 319, column: 3)
!1919 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 318, column: 7)
!1920 = !DILocalVariable(name: "QP", scope: !1918, file: !3, line: 323, type: !7)
!1921 = !DILocalVariable(name: "indexA", scope: !1918, file: !3, line: 325, type: !7)
!1922 = !DILocalVariable(name: "indexB", scope: !1918, file: !3, line: 326, type: !7)
!1923 = !DILocalVariable(name: "Alpha", scope: !1918, file: !3, line: 328, type: !7)
!1924 = !DILocalVariable(name: "Beta", scope: !1918, file: !3, line: 329, type: !7)
!1925 = !DILocalVariable(name: "ClipTab", scope: !1926, file: !3, line: 333, type: !1928)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 332, column: 5)
!1927 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 331, column: 9)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1929 = !DILocalVariable(name: "max_imgpel_value", scope: !1926, file: !3, line: 334, type: !7)
!1930 = !DILocalVariable(name: "pos_x1", scope: !1926, file: !3, line: 336, type: !7)
!1931 = !DILocalVariable(name: "cur_img", scope: !1926, file: !3, line: 337, type: !556)
!1932 = !DILocalVariable(name: "pel", scope: !1926, file: !3, line: 338, type: !7)
!1933 = !DILocalVariable(name: "i", scope: !1934, file: !3, line: 344, type: !7)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 343, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 342, column: 12)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 341, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 340, column: 7)
!1938 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 340, column: 7)
!1939 = !DILocalVariable(name: "SrcPtrP", scope: !1940, file: !3, line: 347, type: !557)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 346, column: 11)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 345, column: 11)
!1942 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 345, column: 11)
!1943 = !DILocalVariable(name: "SrcPtrQ", scope: !1940, file: !3, line: 348, type: !557)
!1944 = !DILocalVariable(name: "L0", scope: !1940, file: !3, line: 349, type: !69)
!1945 = !DILocalVariable(name: "R0", scope: !1940, file: !3, line: 350, type: !69)
!1946 = !DILocalVariable(name: "R1", scope: !1947, file: !3, line: 354, type: !69)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 353, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 352, column: 17)
!1949 = !DILocalVariable(name: "L1", scope: !1947, file: !3, line: 355, type: !69)
!1950 = !DILocalVariable(name: "R2", scope: !1951, file: !3, line: 360, type: !69)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 359, column: 17)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 358, column: 21)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 357, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 356, column: 19)
!1955 = !DILocalVariable(name: "L2", scope: !1951, file: !3, line: 361, type: !69)
!1956 = !DILocalVariable(name: "RL0", scope: !1951, file: !3, line: 362, type: !7)
!1957 = !DILocalVariable(name: "L3", scope: !1958, file: !3, line: 366, type: !69)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 365, column: 19)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 364, column: 23)
!1960 = !DILocalVariable(name: "R3", scope: !1961, file: !3, line: 378, type: !69)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 377, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 376, column: 23)
!1963 = !DILocalVariable(name: "C0", scope: !1964, file: !3, line: 399, type: !7)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 398, column: 9)
!1965 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 397, column: 18)
!1966 = !DILocalVariable(name: "i", scope: !1964, file: !3, line: 400, type: !7)
!1967 = !DILocalVariable(name: "SrcPtrP", scope: !1964, file: !3, line: 401, type: !557)
!1968 = !DILocalVariable(name: "SrcPtrQ", scope: !1964, file: !3, line: 401, type: !557)
!1969 = !DILocalVariable(name: "edge_diff", scope: !1964, file: !3, line: 402, type: !7)
!1970 = !DILocalVariable(name: "SrcPtrQ1", scope: !1971, file: !3, line: 413, type: !557)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 412, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 411, column: 19)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 406, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 405, column: 13)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 405, column: 13)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 404, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 403, column: 15)
!1978 = !DILocalVariable(name: "SrcPtrP1", scope: !1971, file: !3, line: 414, type: !557)
!1979 = !DILocalVariable(name: "R2", scope: !1980, file: !3, line: 418, type: !69)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 417, column: 17)
!1981 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 416, column: 21)
!1982 = !DILocalVariable(name: "L2", scope: !1980, file: !3, line: 419, type: !69)
!1983 = !DILocalVariable(name: "aq", scope: !1980, file: !3, line: 421, type: !7)
!1984 = !DILocalVariable(name: "ap", scope: !1980, file: !3, line: 422, type: !7)
!1985 = !DILocalVariable(name: "tc0", scope: !1980, file: !3, line: 424, type: !7)
!1986 = !DILocalVariable(name: "dif", scope: !1980, file: !3, line: 425, type: !7)
!1987 = !DILocalVariable(name: "SrcPtrQ1", scope: !1988, file: !3, line: 446, type: !557)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 445, column: 15)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 444, column: 19)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 439, column: 13)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 438, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 438, column: 13)
!1993 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 437, column: 11)
!1994 = !DILocalVariable(name: "SrcPtrP1", scope: !1988, file: !3, line: 447, type: !557)
!1995 = !DILocalVariable(name: "RL0", scope: !1996, file: !3, line: 451, type: !7)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 450, column: 17)
!1997 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 449, column: 21)
!1998 = !DILocalVariable(name: "R2", scope: !1996, file: !3, line: 452, type: !69)
!1999 = !DILocalVariable(name: "L2", scope: !1996, file: !3, line: 453, type: !69)
!2000 = !DILocalVariable(name: "aq", scope: !1996, file: !3, line: 455, type: !7)
!2001 = !DILocalVariable(name: "ap", scope: !1996, file: !3, line: 456, type: !7)
!2002 = !DILocalVariable(name: "tc0", scope: !1996, file: !3, line: 458, type: !7)
!2003 = !DILocalVariable(name: "dif", scope: !1996, file: !3, line: 459, type: !7)
!2004 = !DILocation(line: 0, scope: !1905)
!2005 = !DILocation(line: 314, column: 33, scope: !1905)
!2006 = !DILocation(line: 316, column: 57, scope: !1905)
!2007 = !DILocation(line: 0, scope: !1368, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 316, column: 21, scope: !1905)
!2009 = !DILocation(line: 50, column: 10, scope: !1377, inlinedAt: !2008)
!2010 = !DILocation(line: 50, column: 7, scope: !1368, inlinedAt: !2008)
!2011 = !DILocation(line: 0, scope: !1377, inlinedAt: !2008)
!2012 = !DILocation(line: 318, column: 7, scope: !1919)
!2013 = !DILocation(line: 318, column: 11, scope: !1919)
!2014 = !DILocation(line: 318, column: 20, scope: !1919)
!2015 = !DILocation(line: 318, column: 32, scope: !1919)
!2016 = !DILocation(line: 318, column: 7, scope: !1905)
!2017 = !DILocation(line: 320, column: 28, scope: !1918)
!2018 = !DILocation(line: 0, scope: !1918)
!2019 = !DILocation(line: 323, column: 14, scope: !1918)
!2020 = !DILocation(line: 323, scope: !1918)
!2021 = !DILocation(line: 325, column: 46, scope: !1918)
!2022 = !DILocation(line: 325, column: 41, scope: !1918)
!2023 = !DILocation(line: 325, column: 39, scope: !1918)
!2024 = !DILocalVariable(name: "low", arg: 1, scope: !2025, file: !76, line: 198, type: !7)
!2025 = distinct !DISubprogram(name: "iClip3", scope: !76, file: !76, line: 198, type: !2026, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!7, !7, !7, !7}
!2028 = !{!2024, !2029, !2030}
!2029 = !DILocalVariable(name: "high", arg: 2, scope: !2025, file: !76, line: 198, type: !7)
!2030 = !DILocalVariable(name: "x", arg: 3, scope: !2025, file: !76, line: 198, type: !7)
!2031 = !DILocation(line: 0, scope: !2025, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 325, column: 18, scope: !1918)
!2033 = !DILocalVariable(name: "a", arg: 1, scope: !2034, file: !76, line: 47, type: !7)
!2034 = distinct !DISubprogram(name: "imax", scope: !76, file: !76, line: 47, type: !2035, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!7, !7, !7}
!2037 = !{!2033, !2038}
!2038 = !DILocalVariable(name: "b", arg: 2, scope: !2034, file: !76, line: 47, type: !7)
!2039 = !DILocation(line: 0, scope: !2034, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2032)
!2041 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2040)
!2042 = !DILocalVariable(name: "a", arg: 1, scope: !2043, file: !76, line: 42, type: !7)
!2043 = distinct !DISubprogram(name: "imin", scope: !76, file: !76, line: 42, type: !2035, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2042, !2045}
!2045 = !DILocalVariable(name: "b", arg: 2, scope: !2043, file: !76, line: 42, type: !7)
!2046 = !DILocation(line: 0, scope: !2043, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2032)
!2048 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2047)
!2049 = !DILocation(line: 326, column: 46, scope: !1918)
!2050 = !DILocation(line: 326, column: 41, scope: !1918)
!2051 = !DILocation(line: 326, column: 39, scope: !1918)
!2052 = !DILocation(line: 0, scope: !2025, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 326, column: 18, scope: !1918)
!2054 = !DILocation(line: 0, scope: !2034, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2053)
!2056 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2055)
!2057 = !DILocation(line: 0, scope: !2043, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2053)
!2059 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2058)
!2060 = !DILocation(line: 328, column: 18, scope: !1918)
!2061 = !DILocation(line: 328, column: 38, scope: !1918)
!2062 = !DILocation(line: 329, column: 18, scope: !1918)
!2063 = !DILocation(line: 329, column: 38, scope: !1918)
!2064 = !DILocation(line: 331, column: 16, scope: !1927)
!2065 = !DILocation(line: 331, column: 24, scope: !1927)
!2066 = !DILocation(line: 331, column: 9, scope: !1918)
!2067 = !DILocation(line: 333, column: 29, scope: !1926)
!2068 = !DILocation(line: 0, scope: !1926)
!2069 = !DILocation(line: 334, column: 37, scope: !1926)
!2070 = !DILocation(line: 334, column: 30, scope: !1926)
!2071 = !DILocation(line: 336, column: 20, scope: !1926)
!2072 = !DILocation(line: 337, column: 31, scope: !1926)
!2073 = !DILocation(line: 337, column: 27, scope: !1926)
!2074 = !DILocation(line: 340, column: 7, scope: !1938)
!2075 = !DILocation(line: 342, column: 12, scope: !1935)
!2076 = !DILocation(line: 342, column: 12, scope: !1936)
!2077 = !DILocation(line: 0, scope: !1934)
!2078 = !DILocation(line: 347, column: 40, scope: !1940)
!2079 = !DILocation(line: 347, column: 31, scope: !1940)
!2080 = !DILocation(line: 347, column: 44, scope: !1940)
!2081 = !DILocation(line: 0, scope: !1940)
!2082 = !DILocation(line: 348, column: 39, scope: !1940)
!2083 = !DILocation(line: 349, column: 26, scope: !1940)
!2084 = !DILocation(line: 350, column: 26, scope: !1940)
!2085 = !DILocation(line: 352, column: 23, scope: !1948)
!2086 = !DILocation(line: 352, column: 28, scope: !1948)
!2087 = !DILocation(line: 352, column: 26, scope: !1948)
!2088 = !DILocation(line: 0, scope: !75, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 352, column: 17, scope: !1948)
!2090 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2089)
!2091 = !DILocation(line: 352, column: 33, scope: !1948)
!2092 = !DILocation(line: 352, column: 17, scope: !1940)
!2093 = !DILocation(line: 354, column: 38, scope: !1947)
!2094 = !DILocation(line: 354, column: 28, scope: !1947)
!2095 = !DILocation(line: 0, scope: !1947)
!2096 = !DILocation(line: 355, column: 38, scope: !1947)
!2097 = !DILocation(line: 356, column: 31, scope: !1954)
!2098 = !DILocation(line: 356, column: 29, scope: !1954)
!2099 = !DILocation(line: 0, scope: !75, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 356, column: 20, scope: !1954)
!2101 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2100)
!2102 = !DILocation(line: 356, column: 35, scope: !1954)
!2103 = !DILocation(line: 356, column: 44, scope: !1954)
!2104 = !DILocation(line: 355, column: 28, scope: !1947)
!2105 = !DILocation(line: 356, column: 58, scope: !1954)
!2106 = !DILocation(line: 356, column: 56, scope: !1954)
!2107 = !DILocation(line: 0, scope: !75, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 356, column: 48, scope: !1954)
!2109 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2108)
!2110 = !DILocation(line: 356, column: 62, scope: !1954)
!2111 = !DILocation(line: 356, column: 19, scope: !1947)
!2112 = !DILocation(line: 0, scope: !75, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 358, column: 22, scope: !1952)
!2114 = !DILocation(line: 358, column: 38, scope: !1952)
!2115 = !DILocation(line: 358, column: 21, scope: !1953)
!2116 = !DILocation(line: 360, column: 42, scope: !1951)
!2117 = !DILocation(line: 360, column: 32, scope: !1951)
!2118 = !DILocation(line: 0, scope: !1951)
!2119 = !DILocation(line: 361, column: 42, scope: !1951)
!2120 = !DILocation(line: 361, column: 32, scope: !1951)
!2121 = !DILocation(line: 362, column: 32, scope: !1951)
!2122 = !DILocation(line: 364, column: 36, scope: !1959)
!2123 = !DILocation(line: 364, column: 34, scope: !1959)
!2124 = !DILocation(line: 0, scope: !75, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 364, column: 25, scope: !1959)
!2126 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2125)
!2127 = !DILocation(line: 364, column: 40, scope: !1959)
!2128 = !DILocation(line: 364, column: 23, scope: !1951)
!2129 = !DILocation(line: 366, column: 44, scope: !1958)
!2130 = !DILocation(line: 366, column: 34, scope: !1958)
!2131 = !DILocation(line: 0, scope: !1958)
!2132 = !DILocation(line: 367, column: 59, scope: !1958)
!2133 = !DILocation(line: 367, column: 66, scope: !1958)
!2134 = !DILocation(line: 367, column: 52, scope: !1958)
!2135 = !DILocation(line: 367, column: 72, scope: !1958)
!2136 = !DILocation(line: 367, column: 78, scope: !1958)
!2137 = !DILocation(line: 367, column: 83, scope: !1958)
!2138 = !DILocation(line: 368, column: 52, scope: !1958)
!2139 = !DILocation(line: 368, column: 57, scope: !1958)
!2140 = !DILocation(line: 368, column: 63, scope: !1958)
!2141 = !DILocation(line: 368, column: 68, scope: !1958)
!2142 = !DILocation(line: 368, column: 36, scope: !1958)
!2143 = !DILocation(line: 368, column: 34, scope: !1958)
!2144 = !DILocation(line: 369, column: 49, scope: !1958)
!2145 = !DILocation(line: 369, column: 52, scope: !1958)
!2146 = !DILocation(line: 369, column: 58, scope: !1958)
!2147 = !DILocation(line: 369, column: 63, scope: !1958)
!2148 = !DILocation(line: 369, column: 68, scope: !1958)
!2149 = !DILocation(line: 369, column: 73, scope: !1958)
!2150 = !DILocation(line: 369, column: 79, scope: !1958)
!2151 = !DILocation(line: 369, column: 84, scope: !1958)
!2152 = !DILocation(line: 369, column: 36, scope: !1958)
!2153 = !DILocation(line: 369, column: 34, scope: !1958)
!2154 = !DILocation(line: 370, column: 19, scope: !1958)
!2155 = !DILocation(line: 373, column: 47, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 372, column: 19)
!2157 = !DILocation(line: 373, column: 53, scope: !2156)
!2158 = !DILocation(line: 373, column: 58, scope: !2156)
!2159 = !DILocation(line: 373, column: 63, scope: !2156)
!2160 = !DILocation(line: 373, column: 68, scope: !2156)
!2161 = !DILocation(line: 0, scope: !1959)
!2162 = !DILocation(line: 376, column: 36, scope: !1962)
!2163 = !DILocation(line: 376, column: 34, scope: !1962)
!2164 = !DILocation(line: 0, scope: !75, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 376, column: 25, scope: !1962)
!2166 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2165)
!2167 = !DILocation(line: 376, column: 40, scope: !1962)
!2168 = !DILocation(line: 376, column: 23, scope: !1951)
!2169 = !DILocation(line: 378, column: 44, scope: !1961)
!2170 = !DILocation(line: 378, column: 34, scope: !1961)
!2171 = !DILocation(line: 0, scope: !1961)
!2172 = !DILocation(line: 379, column: 58, scope: !1961)
!2173 = !DILocation(line: 379, column: 65, scope: !1961)
!2174 = !DILocation(line: 379, column: 51, scope: !1961)
!2175 = !DILocation(line: 379, column: 71, scope: !1961)
!2176 = !DILocation(line: 379, column: 77, scope: !1961)
!2177 = !DILocation(line: 379, column: 82, scope: !1961)
!2178 = !DILocation(line: 379, column: 36, scope: !1961)
!2179 = !DILocation(line: 379, column: 34, scope: !1961)
!2180 = !DILocation(line: 380, column: 51, scope: !1961)
!2181 = !DILocation(line: 380, column: 56, scope: !1961)
!2182 = !DILocation(line: 380, column: 61, scope: !1961)
!2183 = !DILocation(line: 380, column: 66, scope: !1961)
!2184 = !DILocation(line: 380, column: 71, scope: !1961)
!2185 = !DILocation(line: 380, column: 36, scope: !1961)
!2186 = !DILocation(line: 380, column: 34, scope: !1961)
!2187 = !DILocation(line: 381, column: 49, scope: !1961)
!2188 = !DILocation(line: 381, column: 52, scope: !1961)
!2189 = !DILocation(line: 381, column: 58, scope: !1961)
!2190 = !DILocation(line: 381, column: 63, scope: !1961)
!2191 = !DILocation(line: 381, column: 68, scope: !1961)
!2192 = !DILocation(line: 381, column: 73, scope: !1961)
!2193 = !DILocation(line: 381, column: 79, scope: !1961)
!2194 = !DILocation(line: 381, column: 84, scope: !1961)
!2195 = !DILocation(line: 382, column: 19, scope: !1961)
!2196 = !DILocation(line: 385, column: 47, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 384, column: 19)
!2198 = !DILocation(line: 385, column: 53, scope: !2197)
!2199 = !DILocation(line: 385, column: 58, scope: !2197)
!2200 = !DILocation(line: 385, column: 63, scope: !2197)
!2201 = !DILocation(line: 385, column: 68, scope: !2197)
!2202 = !DILocation(line: 390, column: 45, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 389, column: 17)
!2204 = !DILocation(line: 390, column: 51, scope: !2203)
!2205 = !DILocation(line: 390, column: 56, scope: !2203)
!2206 = !DILocation(line: 390, column: 61, scope: !2203)
!2207 = !DILocation(line: 390, column: 66, scope: !2203)
!2208 = !DILocation(line: 390, column: 30, scope: !2203)
!2209 = !DILocation(line: 390, column: 28, scope: !2203)
!2210 = !DILocation(line: 391, column: 45, scope: !2203)
!2211 = !DILocation(line: 391, column: 51, scope: !2203)
!2212 = !DILocation(line: 391, column: 56, scope: !2203)
!2213 = !DILocation(line: 391, column: 61, scope: !2203)
!2214 = !DILocation(line: 391, column: 66, scope: !2203)
!2215 = !DILocation(line: 0, scope: !1952)
!2216 = !DILocation(line: 345, column: 41, scope: !1941)
!2217 = !DILocation(line: 345, column: 26, scope: !1941)
!2218 = !DILocation(line: 345, column: 11, scope: !1942)
!2219 = distinct !{!2219, !2218, !2220}
!2220 = !DILocation(line: 395, column: 11, scope: !1942)
!2221 = !DILocation(line: 399, column: 21, scope: !1964)
!2222 = !DILocation(line: 399, column: 42, scope: !1964)
!2223 = !DILocation(line: 0, scope: !1964)
!2224 = !DILocation(line: 403, column: 18, scope: !1977)
!2225 = !DILocation(line: 403, column: 15, scope: !1964)
!2226 = !DILocation(line: 407, column: 34, scope: !1973)
!2227 = !DILocation(line: 407, column: 25, scope: !1973)
!2228 = !DILocation(line: 407, column: 38, scope: !1973)
!2229 = !DILocation(line: 408, column: 33, scope: !1973)
!2230 = !DILocation(line: 409, column: 27, scope: !1973)
!2231 = !DILocation(line: 409, column: 38, scope: !1973)
!2232 = !DILocation(line: 409, column: 36, scope: !1973)
!2233 = !DILocation(line: 0, scope: !75, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 411, column: 19, scope: !1972)
!2235 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2234)
!2236 = !DILocation(line: 411, column: 37, scope: !1972)
!2237 = !DILocation(line: 411, column: 19, scope: !1973)
!2238 = !DILocation(line: 438, column: 13, scope: !1992)
!2239 = !DILocation(line: 413, column: 45, scope: !1971)
!2240 = !DILocation(line: 0, scope: !1971)
!2241 = !DILocation(line: 416, column: 39, scope: !1981)
!2242 = !DILocation(line: 416, column: 37, scope: !1981)
!2243 = !DILocation(line: 0, scope: !75, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 416, column: 22, scope: !1981)
!2245 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2244)
!2246 = !DILocation(line: 416, column: 50, scope: !1981)
!2247 = !DILocation(line: 416, column: 59, scope: !1981)
!2248 = !DILocation(line: 414, column: 45, scope: !1971)
!2249 = !DILocation(line: 416, column: 79, scope: !1981)
!2250 = !DILocation(line: 416, column: 77, scope: !1981)
!2251 = !DILocation(line: 0, scope: !75, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 416, column: 63, scope: !1981)
!2253 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2252)
!2254 = !DILocation(line: 416, column: 90, scope: !1981)
!2255 = !DILocation(line: 416, column: 21, scope: !1971)
!2256 = !DILocation(line: 418, column: 43, scope: !1980)
!2257 = !DILocation(line: 418, column: 32, scope: !1980)
!2258 = !DILocation(line: 0, scope: !1980)
!2259 = !DILocation(line: 419, column: 43, scope: !1980)
!2260 = !DILocation(line: 419, column: 32, scope: !1980)
!2261 = !DILocation(line: 421, column: 46, scope: !1980)
!2262 = !DILocation(line: 421, column: 44, scope: !1980)
!2263 = !DILocation(line: 0, scope: !75, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 421, column: 30, scope: !1980)
!2265 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2264)
!2266 = !DILocation(line: 421, column: 50, scope: !1980)
!2267 = !DILocation(line: 422, column: 46, scope: !1980)
!2268 = !DILocation(line: 422, column: 44, scope: !1980)
!2269 = !DILocation(line: 0, scope: !75, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 422, column: 30, scope: !1980)
!2271 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2270)
!2272 = !DILocation(line: 422, column: 50, scope: !1980)
!2273 = !DILocation(line: 424, column: 34, scope: !1980)
!2274 = !DILocation(line: 425, column: 37, scope: !1980)
!2275 = !DILocation(line: 425, column: 62, scope: !1980)
!2276 = !DILocation(line: 425, column: 81, scope: !1980)
!2277 = !DILocation(line: 425, column: 68, scope: !1980)
!2278 = !DILocation(line: 425, column: 94, scope: !1980)
!2279 = !DILocation(line: 425, column: 99, scope: !1980)
!2280 = !DILocation(line: 0, scope: !2025, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 425, column: 29, scope: !1980)
!2282 = !DILocation(line: 0, scope: !2034, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2281)
!2284 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2283)
!2285 = !DILocation(line: 0, scope: !2043, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2281)
!2287 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2286)
!2288 = !DILocation(line: 427, column: 27, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 427, column: 23)
!2290 = !DILocation(line: 427, column: 23, scope: !1980)
!2291 = !DILocation(line: 429, column: 75, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 428, column: 19)
!2293 = !DILocalVariable(name: "high", arg: 1, scope: !2294, file: !76, line: 190, type: !7)
!2294 = distinct !DISubprogram(name: "iClip1", scope: !76, file: !76, line: 190, type: !2035, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2293, !2296}
!2296 = !DILocalVariable(name: "x", arg: 2, scope: !2294, file: !76, line: 190, type: !7)
!2297 = !DILocation(line: 0, scope: !2294, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 429, column: 41, scope: !2292)
!2299 = !DILocation(line: 0, scope: !2034, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2298)
!2301 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2300)
!2302 = !DILocation(line: 0, scope: !2043, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2298)
!2304 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2303)
!2305 = !DILocation(line: 429, column: 32, scope: !2292)
!2306 = !DILocation(line: 429, column: 30, scope: !2292)
!2307 = !DILocation(line: 430, column: 75, scope: !2292)
!2308 = !DILocation(line: 0, scope: !2294, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 430, column: 41, scope: !2292)
!2310 = !DILocation(line: 0, scope: !2034, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2309)
!2312 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2311)
!2313 = !DILocation(line: 0, scope: !2043, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2309)
!2315 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2314)
!2316 = !DILocation(line: 430, column: 32, scope: !2292)
!2317 = !DILocation(line: 430, column: 30, scope: !2292)
!2318 = !DILocation(line: 431, column: 19, scope: !2292)
!2319 = !DILocation(line: 440, column: 34, scope: !1990)
!2320 = !DILocation(line: 440, column: 25, scope: !1990)
!2321 = !DILocation(line: 440, column: 38, scope: !1990)
!2322 = !DILocation(line: 441, column: 33, scope: !1990)
!2323 = !DILocation(line: 442, column: 27, scope: !1990)
!2324 = !DILocation(line: 442, column: 38, scope: !1990)
!2325 = !DILocation(line: 442, column: 36, scope: !1990)
!2326 = !DILocation(line: 0, scope: !75, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 444, column: 19, scope: !1989)
!2328 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2327)
!2329 = !DILocation(line: 444, column: 37, scope: !1989)
!2330 = !DILocation(line: 444, column: 19, scope: !1990)
!2331 = !DILocation(line: 446, column: 45, scope: !1988)
!2332 = !DILocation(line: 0, scope: !1988)
!2333 = !DILocation(line: 447, column: 45, scope: !1988)
!2334 = !DILocation(line: 449, column: 39, scope: !1997)
!2335 = !DILocation(line: 449, column: 37, scope: !1997)
!2336 = !DILocation(line: 0, scope: !75, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 449, column: 22, scope: !1997)
!2338 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2337)
!2339 = !DILocation(line: 449, column: 50, scope: !1997)
!2340 = !DILocation(line: 449, column: 59, scope: !1997)
!2341 = !DILocation(line: 449, column: 79, scope: !1997)
!2342 = !DILocation(line: 449, column: 77, scope: !1997)
!2343 = !DILocation(line: 0, scope: !75, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 449, column: 63, scope: !1997)
!2345 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2344)
!2346 = !DILocation(line: 449, column: 90, scope: !1997)
!2347 = !DILocation(line: 449, column: 21, scope: !1988)
!2348 = !DILocation(line: 451, column: 39, scope: !1996)
!2349 = !DILocation(line: 451, column: 50, scope: !1996)
!2350 = !DILocation(line: 451, column: 55, scope: !1996)
!2351 = !DILocation(line: 0, scope: !1996)
!2352 = !DILocation(line: 452, column: 43, scope: !1996)
!2353 = !DILocation(line: 452, column: 32, scope: !1996)
!2354 = !DILocation(line: 453, column: 43, scope: !1996)
!2355 = !DILocation(line: 453, column: 32, scope: !1996)
!2356 = !DILocation(line: 455, column: 46, scope: !1996)
!2357 = !DILocation(line: 455, column: 44, scope: !1996)
!2358 = !DILocation(line: 0, scope: !75, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 455, column: 30, scope: !1996)
!2360 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2359)
!2361 = !DILocation(line: 455, column: 50, scope: !1996)
!2362 = !DILocation(line: 456, column: 46, scope: !1996)
!2363 = !DILocation(line: 456, column: 44, scope: !1996)
!2364 = !DILocation(line: 0, scope: !75, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 456, column: 30, scope: !1996)
!2366 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2365)
!2367 = !DILocation(line: 456, column: 50, scope: !1996)
!2368 = !DILocation(line: 458, column: 34, scope: !1996)
!2369 = !DILocation(line: 458, column: 39, scope: !1996)
!2370 = !DILocation(line: 459, column: 37, scope: !1996)
!2371 = !DILocation(line: 459, column: 62, scope: !1996)
!2372 = !DILocation(line: 459, column: 81, scope: !1996)
!2373 = !DILocation(line: 459, column: 68, scope: !1996)
!2374 = !DILocation(line: 459, column: 94, scope: !1996)
!2375 = !DILocation(line: 459, column: 99, scope: !1996)
!2376 = !DILocation(line: 0, scope: !2025, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 459, column: 29, scope: !1996)
!2378 = !DILocation(line: 0, scope: !2034, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2377)
!2380 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2379)
!2381 = !DILocation(line: 0, scope: !2043, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2377)
!2383 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2382)
!2384 = !DILocation(line: 461, column: 23, scope: !1996)
!2385 = !DILocation(line: 462, column: 56, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 461, column: 23)
!2387 = !DILocation(line: 462, column: 62, scope: !2386)
!2388 = !DILocation(line: 462, column: 80, scope: !2386)
!2389 = !DILocation(line: 0, scope: !2025, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 462, column: 34, scope: !2386)
!2391 = !DILocation(line: 0, scope: !2034, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2390)
!2393 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2392)
!2394 = !DILocation(line: 0, scope: !2043, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2390)
!2396 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2395)
!2397 = !DILocation(line: 462, column: 31, scope: !2386)
!2398 = !DILocation(line: 462, column: 21, scope: !2386)
!2399 = !DILocation(line: 464, column: 27, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 464, column: 23)
!2401 = !DILocation(line: 464, column: 23, scope: !1996)
!2402 = !DILocation(line: 466, column: 75, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 465, column: 19)
!2404 = !DILocation(line: 0, scope: !2294, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 466, column: 41, scope: !2403)
!2406 = !DILocation(line: 0, scope: !2034, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2405)
!2408 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2407)
!2409 = !DILocation(line: 0, scope: !2043, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2405)
!2411 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2410)
!2412 = !DILocation(line: 466, column: 32, scope: !2403)
!2413 = !DILocation(line: 466, column: 30, scope: !2403)
!2414 = !DILocation(line: 467, column: 75, scope: !2403)
!2415 = !DILocation(line: 0, scope: !2294, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 467, column: 41, scope: !2403)
!2417 = !DILocation(line: 0, scope: !2034, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2416)
!2419 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2418)
!2420 = !DILocation(line: 0, scope: !2043, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2416)
!2422 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2421)
!2423 = !DILocation(line: 467, column: 32, scope: !2403)
!2424 = !DILocation(line: 467, column: 30, scope: !2403)
!2425 = !DILocation(line: 468, column: 19, scope: !2403)
!2426 = !DILocation(line: 470, column: 23, scope: !1996)
!2427 = !DILocation(line: 471, column: 56, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 470, column: 23)
!2429 = !DILocation(line: 471, column: 62, scope: !2428)
!2430 = !DILocation(line: 471, column: 80, scope: !2428)
!2431 = !DILocation(line: 0, scope: !2025, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 471, column: 34, scope: !2428)
!2433 = !DILocation(line: 0, scope: !2034, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2432)
!2435 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2434)
!2436 = !DILocation(line: 0, scope: !2043, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2432)
!2438 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2437)
!2439 = !DILocation(line: 471, column: 31, scope: !2428)
!2440 = !DILocation(line: 471, column: 21, scope: !2428)
!2441 = !DILocation(line: 438, column: 42, scope: !1991)
!2442 = !DILocation(line: 438, column: 27, scope: !1991)
!2443 = distinct !{!2443, !2238, !2444}
!2444 = !DILocation(line: 474, column: 13, scope: !1992)
!2445 = !DILocation(line: 479, column: 19, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 478, column: 9)
!2447 = !DILocation(line: 481, column: 18, scope: !1936)
!2448 = !DILocation(line: 340, column: 48, scope: !1937)
!2449 = !DILocation(line: 340, column: 26, scope: !1937)
!2450 = distinct !{!2450, !2074, !2451}
!2451 = !DILocation(line: 482, column: 7, scope: !1938)
!2452 = !DILocation(line: 485, column: 1, scope: !1905)
!2453 = distinct !DISubprogram(name: "EdgeLoopLumaHor", scope: !3, file: !3, line: 494, type: !1906, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2467, !2468, !2469, !2470, !2471, !2472, !2475, !2476, !2477, !2478, !2479, !2480, !2486, !2487, !2488, !2492, !2493, !2494, !2495, !2498, !2499, !2504, !2505, !2506, !2509, !2512, !2515, !2516, !2517, !2518, !2519, !2527, !2528, !2531, !2532, !2533, !2534, !2535, !2536, !2543, !2544, !2547, !2548, !2549, !2550, !2551, !2552}
!2455 = !DILocalVariable(name: "pl", arg: 1, scope: !2453, file: !3, line: 494, type: !821)
!2456 = !DILocalVariable(name: "Img", arg: 2, scope: !2453, file: !3, line: 494, type: !556)
!2457 = !DILocalVariable(name: "Strength", arg: 3, scope: !2453, file: !3, line: 494, type: !256)
!2458 = !DILocalVariable(name: "MbQ", arg: 4, scope: !2453, file: !3, line: 494, type: !740)
!2459 = !DILocalVariable(name: "edge", arg: 5, scope: !2453, file: !3, line: 495, type: !7)
!2460 = !DILocalVariable(name: "p", arg: 6, scope: !2453, file: !3, line: 495, type: !518)
!2461 = !DILocalVariable(name: "p_Vid", scope: !2453, file: !3, line: 497, type: !125)
!2462 = !DILocalVariable(name: "ypos", scope: !2453, file: !3, line: 499, type: !7)
!2463 = !DILocalVariable(name: "MbP", scope: !2453, file: !3, line: 500, type: !740)
!2464 = !DILocalVariable(name: "bitdepth_scale", scope: !2465, file: !3, line: 504, type: !7)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 503, column: 3)
!2466 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 502, column: 7)
!2467 = !DILocalVariable(name: "QP", scope: !2465, file: !3, line: 507, type: !7)
!2468 = !DILocalVariable(name: "indexA", scope: !2465, file: !3, line: 509, type: !7)
!2469 = !DILocalVariable(name: "indexB", scope: !2465, file: !3, line: 510, type: !7)
!2470 = !DILocalVariable(name: "Alpha", scope: !2465, file: !3, line: 512, type: !7)
!2471 = !DILocalVariable(name: "Beta", scope: !2465, file: !3, line: 513, type: !7)
!2472 = !DILocalVariable(name: "ClipTab", scope: !2473, file: !3, line: 517, type: !1928)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 516, column: 5)
!2474 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 515, column: 9)
!2475 = !DILocalVariable(name: "max_imgpel_value", scope: !2473, file: !3, line: 518, type: !7)
!2476 = !DILocalVariable(name: "width", scope: !2473, file: !3, line: 519, type: !7)
!2477 = !DILocalVariable(name: "imgP", scope: !2473, file: !3, line: 521, type: !557)
!2478 = !DILocalVariable(name: "imgQ", scope: !2473, file: !3, line: 522, type: !557)
!2479 = !DILocalVariable(name: "pel", scope: !2473, file: !3, line: 523, type: !7)
!2480 = !DILocalVariable(name: "pixel", scope: !2481, file: !3, line: 529, type: !7)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 528, column: 9)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 527, column: 12)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 526, column: 7)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 525, column: 7)
!2485 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 525, column: 7)
!2486 = !DILocalVariable(name: "inc_dim2", scope: !2481, file: !3, line: 530, type: !7)
!2487 = !DILocalVariable(name: "inc_dim3", scope: !2481, file: !3, line: 531, type: !7)
!2488 = !DILocalVariable(name: "SrcPtrP", scope: !2489, file: !3, line: 534, type: !557)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 533, column: 11)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 532, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 532, column: 11)
!2492 = !DILocalVariable(name: "SrcPtrQ", scope: !2489, file: !3, line: 535, type: !557)
!2493 = !DILocalVariable(name: "L0", scope: !2489, file: !3, line: 536, type: !69)
!2494 = !DILocalVariable(name: "R0", scope: !2489, file: !3, line: 537, type: !69)
!2495 = !DILocalVariable(name: "L1", scope: !2496, file: !3, line: 541, type: !69)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 540, column: 13)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 539, column: 17)
!2498 = !DILocalVariable(name: "R1", scope: !2496, file: !3, line: 542, type: !69)
!2499 = !DILocalVariable(name: "L2", scope: !2500, file: !3, line: 548, type: !69)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 547, column: 17)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 546, column: 21)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 545, column: 15)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 544, column: 19)
!2504 = !DILocalVariable(name: "R2", scope: !2500, file: !3, line: 549, type: !69)
!2505 = !DILocalVariable(name: "RL0", scope: !2500, file: !3, line: 550, type: !7)
!2506 = !DILocalVariable(name: "L3", scope: !2507, file: !3, line: 554, type: !69)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 553, column: 19)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 552, column: 23)
!2509 = !DILocalVariable(name: "R3", scope: !2510, file: !3, line: 566, type: !69)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 565, column: 19)
!2511 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 564, column: 23)
!2512 = !DILocalVariable(name: "C0", scope: !2513, file: !3, line: 587, type: !7)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 586, column: 9)
!2514 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 585, column: 18)
!2515 = !DILocalVariable(name: "i", scope: !2513, file: !3, line: 588, type: !7)
!2516 = !DILocalVariable(name: "SrcPtrP", scope: !2513, file: !3, line: 589, type: !557)
!2517 = !DILocalVariable(name: "SrcPtrQ", scope: !2513, file: !3, line: 589, type: !557)
!2518 = !DILocalVariable(name: "edge_diff", scope: !2513, file: !3, line: 590, type: !7)
!2519 = !DILocalVariable(name: "SrcPtrQ1", scope: !2520, file: !3, line: 601, type: !557)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 600, column: 15)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 599, column: 19)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 594, column: 13)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 593, column: 13)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 593, column: 13)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 592, column: 11)
!2526 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 591, column: 15)
!2527 = !DILocalVariable(name: "SrcPtrP1", scope: !2520, file: !3, line: 602, type: !557)
!2528 = !DILocalVariable(name: "R2", scope: !2529, file: !3, line: 606, type: !69)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 605, column: 17)
!2530 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 604, column: 21)
!2531 = !DILocalVariable(name: "L2", scope: !2529, file: !3, line: 607, type: !69)
!2532 = !DILocalVariable(name: "aq", scope: !2529, file: !3, line: 609, type: !7)
!2533 = !DILocalVariable(name: "ap", scope: !2529, file: !3, line: 610, type: !7)
!2534 = !DILocalVariable(name: "tc0", scope: !2529, file: !3, line: 612, type: !7)
!2535 = !DILocalVariable(name: "dif", scope: !2529, file: !3, line: 613, type: !7)
!2536 = !DILocalVariable(name: "SrcPtrQ1", scope: !2537, file: !3, line: 634, type: !557)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 633, column: 15)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 632, column: 19)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 627, column: 13)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 626, column: 13)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 626, column: 13)
!2542 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 625, column: 11)
!2543 = !DILocalVariable(name: "SrcPtrP1", scope: !2537, file: !3, line: 635, type: !557)
!2544 = !DILocalVariable(name: "RL0", scope: !2545, file: !3, line: 639, type: !7)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 638, column: 17)
!2546 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 637, column: 21)
!2547 = !DILocalVariable(name: "R2", scope: !2545, file: !3, line: 640, type: !69)
!2548 = !DILocalVariable(name: "L2", scope: !2545, file: !3, line: 641, type: !69)
!2549 = !DILocalVariable(name: "aq", scope: !2545, file: !3, line: 643, type: !7)
!2550 = !DILocalVariable(name: "ap", scope: !2545, file: !3, line: 644, type: !7)
!2551 = !DILocalVariable(name: "tc0", scope: !2545, file: !3, line: 646, type: !7)
!2552 = !DILocalVariable(name: "dif", scope: !2545, file: !3, line: 647, type: !7)
!2553 = !DILocation(line: 0, scope: !2453)
!2554 = !DILocation(line: 497, column: 33, scope: !2453)
!2555 = !DILocation(line: 499, column: 20, scope: !2453)
!2556 = !DILocation(line: 499, column: 15, scope: !2453)
!2557 = !DILocation(line: 0, scope: !1368, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 500, column: 21, scope: !2453)
!2559 = !DILocation(line: 52, column: 15, scope: !1675, inlinedAt: !2558)
!2560 = !DILocation(line: 52, column: 12, scope: !1377, inlinedAt: !2558)
!2561 = !DILocation(line: 0, scope: !1377, inlinedAt: !2558)
!2562 = !DILocation(line: 502, column: 7, scope: !2466)
!2563 = !DILocation(line: 502, column: 11, scope: !2466)
!2564 = !DILocation(line: 502, column: 20, scope: !2466)
!2565 = !DILocation(line: 502, column: 32, scope: !2466)
!2566 = !DILocation(line: 502, column: 7, scope: !2453)
!2567 = !DILocation(line: 504, column: 28, scope: !2465)
!2568 = !DILocation(line: 0, scope: !2465)
!2569 = !DILocation(line: 507, column: 14, scope: !2465)
!2570 = !DILocation(line: 507, scope: !2465)
!2571 = !DILocation(line: 509, column: 46, scope: !2465)
!2572 = !DILocation(line: 509, column: 41, scope: !2465)
!2573 = !DILocation(line: 509, column: 39, scope: !2465)
!2574 = !DILocation(line: 0, scope: !2025, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 509, column: 18, scope: !2465)
!2576 = !DILocation(line: 0, scope: !2034, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2575)
!2578 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2577)
!2579 = !DILocation(line: 0, scope: !2043, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2575)
!2581 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2580)
!2582 = !DILocation(line: 510, column: 46, scope: !2465)
!2583 = !DILocation(line: 510, column: 41, scope: !2465)
!2584 = !DILocation(line: 510, column: 39, scope: !2465)
!2585 = !DILocation(line: 0, scope: !2025, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 510, column: 18, scope: !2465)
!2587 = !DILocation(line: 0, scope: !2034, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2586)
!2589 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2588)
!2590 = !DILocation(line: 0, scope: !2043, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2586)
!2592 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2591)
!2593 = !DILocation(line: 512, column: 18, scope: !2465)
!2594 = !DILocation(line: 512, column: 38, scope: !2465)
!2595 = !DILocation(line: 513, column: 18, scope: !2465)
!2596 = !DILocation(line: 513, column: 38, scope: !2465)
!2597 = !DILocation(line: 515, column: 16, scope: !2474)
!2598 = !DILocation(line: 515, column: 24, scope: !2474)
!2599 = !DILocation(line: 515, column: 9, scope: !2465)
!2600 = !DILocation(line: 517, column: 29, scope: !2473)
!2601 = !DILocation(line: 0, scope: !2473)
!2602 = !DILocation(line: 518, column: 37, scope: !2473)
!2603 = !DILocation(line: 518, column: 30, scope: !2473)
!2604 = !DILocation(line: 519, column: 22, scope: !2473)
!2605 = !DILocation(line: 521, column: 27, scope: !2473)
!2606 = !DILocation(line: 521, column: 23, scope: !2473)
!2607 = !DILocation(line: 521, column: 54, scope: !2473)
!2608 = !DILocation(line: 522, column: 27, scope: !2473)
!2609 = !DILocation(line: 525, column: 7, scope: !2485)
!2610 = !DILocation(line: 527, column: 12, scope: !2482)
!2611 = !DILocation(line: 527, column: 12, scope: !2483)
!2612 = !DILocation(line: 0, scope: !2481)
!2613 = !DILocation(line: 534, column: 35, scope: !2489)
!2614 = !DILocation(line: 0, scope: !2489)
!2615 = !DILocation(line: 535, column: 35, scope: !2489)
!2616 = !DILocation(line: 536, column: 26, scope: !2489)
!2617 = !DILocation(line: 537, column: 26, scope: !2489)
!2618 = !DILocation(line: 539, column: 23, scope: !2497)
!2619 = !DILocation(line: 539, column: 28, scope: !2497)
!2620 = !DILocation(line: 539, column: 26, scope: !2497)
!2621 = !DILocation(line: 0, scope: !75, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 539, column: 17, scope: !2497)
!2623 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2622)
!2624 = !DILocation(line: 539, column: 33, scope: !2497)
!2625 = !DILocation(line: 539, column: 17, scope: !2489)
!2626 = !DILocation(line: 541, column: 38, scope: !2496)
!2627 = !DILocation(line: 0, scope: !2496)
!2628 = !DILocation(line: 542, column: 38, scope: !2496)
!2629 = !DILocation(line: 542, column: 28, scope: !2496)
!2630 = !DILocation(line: 544, column: 31, scope: !2503)
!2631 = !DILocation(line: 544, column: 29, scope: !2503)
!2632 = !DILocation(line: 0, scope: !75, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 544, column: 20, scope: !2503)
!2634 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2633)
!2635 = !DILocation(line: 544, column: 35, scope: !2503)
!2636 = !DILocation(line: 544, column: 44, scope: !2503)
!2637 = !DILocation(line: 541, column: 28, scope: !2496)
!2638 = !DILocation(line: 544, column: 58, scope: !2503)
!2639 = !DILocation(line: 544, column: 56, scope: !2503)
!2640 = !DILocation(line: 0, scope: !75, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 544, column: 48, scope: !2503)
!2642 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2641)
!2643 = !DILocation(line: 544, column: 62, scope: !2503)
!2644 = !DILocation(line: 544, column: 19, scope: !2496)
!2645 = !DILocation(line: 0, scope: !75, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 546, column: 22, scope: !2501)
!2647 = !DILocation(line: 546, column: 38, scope: !2501)
!2648 = !DILocation(line: 546, column: 21, scope: !2502)
!2649 = !DILocation(line: 548, column: 42, scope: !2500)
!2650 = !DILocation(line: 548, column: 32, scope: !2500)
!2651 = !DILocation(line: 0, scope: !2500)
!2652 = !DILocation(line: 549, column: 42, scope: !2500)
!2653 = !DILocation(line: 549, column: 32, scope: !2500)
!2654 = !DILocation(line: 550, column: 32, scope: !2500)
!2655 = !DILocation(line: 552, column: 36, scope: !2508)
!2656 = !DILocation(line: 552, column: 34, scope: !2508)
!2657 = !DILocation(line: 0, scope: !75, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 552, column: 25, scope: !2508)
!2659 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2658)
!2660 = !DILocation(line: 552, column: 40, scope: !2508)
!2661 = !DILocation(line: 552, column: 23, scope: !2500)
!2662 = !DILocation(line: 554, column: 44, scope: !2507)
!2663 = !DILocation(line: 554, column: 34, scope: !2507)
!2664 = !DILocation(line: 0, scope: !2507)
!2665 = !DILocation(line: 555, column: 66, scope: !2507)
!2666 = !DILocation(line: 555, column: 73, scope: !2507)
!2667 = !DILocation(line: 555, column: 59, scope: !2507)
!2668 = !DILocation(line: 555, column: 79, scope: !2507)
!2669 = !DILocation(line: 555, column: 85, scope: !2507)
!2670 = !DILocation(line: 555, column: 90, scope: !2507)
!2671 = !DILocation(line: 555, column: 43, scope: !2507)
!2672 = !DILocation(line: 555, column: 41, scope: !2507)
!2673 = !DILocation(line: 556, column: 59, scope: !2507)
!2674 = !DILocation(line: 556, column: 64, scope: !2507)
!2675 = !DILocation(line: 556, column: 70, scope: !2507)
!2676 = !DILocation(line: 556, column: 75, scope: !2507)
!2677 = !DILocation(line: 556, column: 43, scope: !2507)
!2678 = !DILocation(line: 556, column: 41, scope: !2507)
!2679 = !DILocation(line: 557, column: 56, scope: !2507)
!2680 = !DILocation(line: 557, column: 59, scope: !2507)
!2681 = !DILocation(line: 557, column: 65, scope: !2507)
!2682 = !DILocation(line: 557, column: 70, scope: !2507)
!2683 = !DILocation(line: 557, column: 75, scope: !2507)
!2684 = !DILocation(line: 557, column: 80, scope: !2507)
!2685 = !DILocation(line: 557, column: 86, scope: !2507)
!2686 = !DILocation(line: 557, column: 91, scope: !2507)
!2687 = !DILocation(line: 557, column: 43, scope: !2507)
!2688 = !DILocation(line: 557, column: 31, scope: !2507)
!2689 = !DILocation(line: 557, column: 41, scope: !2507)
!2690 = !DILocation(line: 558, column: 19, scope: !2507)
!2691 = !DILocation(line: 561, column: 47, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 560, column: 19)
!2693 = !DILocation(line: 561, column: 53, scope: !2692)
!2694 = !DILocation(line: 561, column: 58, scope: !2692)
!2695 = !DILocation(line: 561, column: 63, scope: !2692)
!2696 = !DILocation(line: 561, column: 68, scope: !2692)
!2697 = !DILocation(line: 561, column: 32, scope: !2692)
!2698 = !DILocation(line: 561, column: 30, scope: !2692)
!2699 = !DILocation(line: 564, column: 36, scope: !2511)
!2700 = !DILocation(line: 564, column: 34, scope: !2511)
!2701 = !DILocation(line: 0, scope: !75, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 564, column: 25, scope: !2511)
!2703 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2702)
!2704 = !DILocation(line: 564, column: 40, scope: !2511)
!2705 = !DILocation(line: 564, column: 23, scope: !2500)
!2706 = !DILocation(line: 566, column: 44, scope: !2510)
!2707 = !DILocation(line: 566, column: 34, scope: !2510)
!2708 = !DILocation(line: 0, scope: !2510)
!2709 = !DILocation(line: 567, column: 67, scope: !2510)
!2710 = !DILocation(line: 567, column: 74, scope: !2510)
!2711 = !DILocation(line: 567, column: 60, scope: !2510)
!2712 = !DILocation(line: 567, column: 80, scope: !2510)
!2713 = !DILocation(line: 567, column: 86, scope: !2510)
!2714 = !DILocation(line: 567, column: 91, scope: !2510)
!2715 = !DILocation(line: 567, column: 44, scope: !2510)
!2716 = !DILocation(line: 567, column: 42, scope: !2510)
!2717 = !DILocation(line: 568, column: 60, scope: !2510)
!2718 = !DILocation(line: 568, column: 65, scope: !2510)
!2719 = !DILocation(line: 568, column: 70, scope: !2510)
!2720 = !DILocation(line: 568, column: 75, scope: !2510)
!2721 = !DILocation(line: 568, column: 80, scope: !2510)
!2722 = !DILocation(line: 568, column: 44, scope: !2510)
!2723 = !DILocation(line: 568, column: 42, scope: !2510)
!2724 = !DILocation(line: 569, column: 57, scope: !2510)
!2725 = !DILocation(line: 569, column: 60, scope: !2510)
!2726 = !DILocation(line: 569, column: 66, scope: !2510)
!2727 = !DILocation(line: 569, column: 71, scope: !2510)
!2728 = !DILocation(line: 569, column: 76, scope: !2510)
!2729 = !DILocation(line: 569, column: 81, scope: !2510)
!2730 = !DILocation(line: 569, column: 87, scope: !2510)
!2731 = !DILocation(line: 569, column: 92, scope: !2510)
!2732 = !DILocation(line: 569, column: 44, scope: !2510)
!2733 = !DILocation(line: 569, column: 31, scope: !2510)
!2734 = !DILocation(line: 569, column: 42, scope: !2510)
!2735 = !DILocation(line: 570, column: 19, scope: !2510)
!2736 = !DILocation(line: 573, column: 47, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 572, column: 19)
!2738 = !DILocation(line: 573, column: 53, scope: !2737)
!2739 = !DILocation(line: 573, column: 58, scope: !2737)
!2740 = !DILocation(line: 573, column: 63, scope: !2737)
!2741 = !DILocation(line: 573, column: 68, scope: !2737)
!2742 = !DILocation(line: 573, column: 32, scope: !2737)
!2743 = !DILocation(line: 573, column: 30, scope: !2737)
!2744 = !DILocation(line: 578, column: 45, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 577, column: 17)
!2746 = !DILocation(line: 578, column: 51, scope: !2745)
!2747 = !DILocation(line: 578, column: 56, scope: !2745)
!2748 = !DILocation(line: 578, column: 61, scope: !2745)
!2749 = !DILocation(line: 578, column: 66, scope: !2745)
!2750 = !DILocation(line: 578, column: 30, scope: !2745)
!2751 = !DILocation(line: 578, column: 28, scope: !2745)
!2752 = !DILocation(line: 579, column: 45, scope: !2745)
!2753 = !DILocation(line: 579, column: 51, scope: !2745)
!2754 = !DILocation(line: 579, column: 56, scope: !2745)
!2755 = !DILocation(line: 579, column: 61, scope: !2745)
!2756 = !DILocation(line: 579, column: 66, scope: !2745)
!2757 = !DILocation(line: 579, column: 30, scope: !2745)
!2758 = !DILocation(line: 579, column: 28, scope: !2745)
!2759 = !DILocation(line: 532, column: 49, scope: !2490)
!2760 = !DILocation(line: 532, column: 34, scope: !2490)
!2761 = !DILocation(line: 532, column: 11, scope: !2491)
!2762 = distinct !{!2762, !2761, !2763}
!2763 = !DILocation(line: 583, column: 11, scope: !2491)
!2764 = !DILocation(line: 587, column: 21, scope: !2513)
!2765 = !DILocation(line: 587, column: 42, scope: !2513)
!2766 = !DILocation(line: 0, scope: !2513)
!2767 = !DILocation(line: 591, column: 18, scope: !2526)
!2768 = !DILocation(line: 591, column: 15, scope: !2513)
!2769 = !DILocation(line: 595, column: 29, scope: !2522)
!2770 = !DILocation(line: 596, column: 29, scope: !2522)
!2771 = !DILocation(line: 597, column: 27, scope: !2522)
!2772 = !DILocation(line: 597, column: 38, scope: !2522)
!2773 = !DILocation(line: 597, column: 36, scope: !2522)
!2774 = !DILocation(line: 0, scope: !75, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 599, column: 19, scope: !2521)
!2776 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2775)
!2777 = !DILocation(line: 599, column: 37, scope: !2521)
!2778 = !DILocation(line: 599, column: 19, scope: !2522)
!2779 = !DILocation(line: 626, column: 13, scope: !2541)
!2780 = !DILocation(line: 601, column: 45, scope: !2520)
!2781 = !DILocation(line: 0, scope: !2520)
!2782 = !DILocation(line: 602, column: 45, scope: !2520)
!2783 = !DILocation(line: 604, column: 39, scope: !2530)
!2784 = !DILocation(line: 604, column: 37, scope: !2530)
!2785 = !DILocation(line: 0, scope: !75, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 604, column: 22, scope: !2530)
!2787 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2786)
!2788 = !DILocation(line: 604, column: 50, scope: !2530)
!2789 = !DILocation(line: 604, column: 59, scope: !2530)
!2790 = !DILocation(line: 604, column: 79, scope: !2530)
!2791 = !DILocation(line: 604, column: 77, scope: !2530)
!2792 = !DILocation(line: 0, scope: !75, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 604, column: 63, scope: !2530)
!2794 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2793)
!2795 = !DILocation(line: 604, column: 90, scope: !2530)
!2796 = !DILocation(line: 604, column: 21, scope: !2520)
!2797 = !DILocation(line: 606, column: 43, scope: !2529)
!2798 = !DILocation(line: 606, column: 32, scope: !2529)
!2799 = !DILocation(line: 0, scope: !2529)
!2800 = !DILocation(line: 607, column: 43, scope: !2529)
!2801 = !DILocation(line: 607, column: 32, scope: !2529)
!2802 = !DILocation(line: 609, column: 46, scope: !2529)
!2803 = !DILocation(line: 609, column: 44, scope: !2529)
!2804 = !DILocation(line: 0, scope: !75, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 609, column: 30, scope: !2529)
!2806 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2805)
!2807 = !DILocation(line: 609, column: 50, scope: !2529)
!2808 = !DILocation(line: 610, column: 46, scope: !2529)
!2809 = !DILocation(line: 610, column: 44, scope: !2529)
!2810 = !DILocation(line: 0, scope: !75, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 610, column: 30, scope: !2529)
!2812 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2811)
!2813 = !DILocation(line: 610, column: 50, scope: !2529)
!2814 = !DILocation(line: 612, column: 34, scope: !2529)
!2815 = !DILocation(line: 613, column: 37, scope: !2529)
!2816 = !DILocation(line: 613, column: 62, scope: !2529)
!2817 = !DILocation(line: 613, column: 81, scope: !2529)
!2818 = !DILocation(line: 613, column: 68, scope: !2529)
!2819 = !DILocation(line: 613, column: 94, scope: !2529)
!2820 = !DILocation(line: 613, column: 99, scope: !2529)
!2821 = !DILocation(line: 0, scope: !2025, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 613, column: 29, scope: !2529)
!2823 = !DILocation(line: 0, scope: !2034, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2822)
!2825 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2824)
!2826 = !DILocation(line: 0, scope: !2043, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2822)
!2828 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2827)
!2829 = !DILocation(line: 615, column: 27, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 615, column: 23)
!2831 = !DILocation(line: 615, column: 23, scope: !2529)
!2832 = !DILocation(line: 617, column: 75, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 616, column: 19)
!2834 = !DILocation(line: 0, scope: !2294, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 617, column: 41, scope: !2833)
!2836 = !DILocation(line: 0, scope: !2034, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2835)
!2838 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2837)
!2839 = !DILocation(line: 0, scope: !2043, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2835)
!2841 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2840)
!2842 = !DILocation(line: 617, column: 32, scope: !2833)
!2843 = !DILocation(line: 617, column: 30, scope: !2833)
!2844 = !DILocation(line: 618, column: 66, scope: !2833)
!2845 = !DILocation(line: 618, column: 75, scope: !2833)
!2846 = !DILocation(line: 0, scope: !2294, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 618, column: 41, scope: !2833)
!2848 = !DILocation(line: 0, scope: !2034, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2847)
!2850 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2849)
!2851 = !DILocation(line: 0, scope: !2043, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2847)
!2853 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2852)
!2854 = !DILocation(line: 618, column: 32, scope: !2833)
!2855 = !DILocation(line: 618, column: 30, scope: !2833)
!2856 = !DILocation(line: 619, column: 19, scope: !2833)
!2857 = !DILocation(line: 628, column: 29, scope: !2539)
!2858 = !DILocation(line: 629, column: 29, scope: !2539)
!2859 = !DILocation(line: 630, column: 27, scope: !2539)
!2860 = !DILocation(line: 630, column: 38, scope: !2539)
!2861 = !DILocation(line: 630, column: 36, scope: !2539)
!2862 = !DILocation(line: 0, scope: !75, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 632, column: 19, scope: !2538)
!2864 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2863)
!2865 = !DILocation(line: 632, column: 37, scope: !2538)
!2866 = !DILocation(line: 632, column: 19, scope: !2539)
!2867 = !DILocation(line: 634, column: 45, scope: !2537)
!2868 = !DILocation(line: 0, scope: !2537)
!2869 = !DILocation(line: 635, column: 45, scope: !2537)
!2870 = !DILocation(line: 637, column: 39, scope: !2546)
!2871 = !DILocation(line: 637, column: 37, scope: !2546)
!2872 = !DILocation(line: 0, scope: !75, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 637, column: 22, scope: !2546)
!2874 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2873)
!2875 = !DILocation(line: 637, column: 50, scope: !2546)
!2876 = !DILocation(line: 637, column: 59, scope: !2546)
!2877 = !DILocation(line: 637, column: 79, scope: !2546)
!2878 = !DILocation(line: 637, column: 77, scope: !2546)
!2879 = !DILocation(line: 0, scope: !75, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 637, column: 63, scope: !2546)
!2881 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2880)
!2882 = !DILocation(line: 637, column: 90, scope: !2546)
!2883 = !DILocation(line: 637, column: 21, scope: !2537)
!2884 = !DILocation(line: 639, column: 39, scope: !2545)
!2885 = !DILocation(line: 639, column: 50, scope: !2545)
!2886 = !DILocation(line: 639, column: 55, scope: !2545)
!2887 = !DILocation(line: 0, scope: !2545)
!2888 = !DILocation(line: 640, column: 43, scope: !2545)
!2889 = !DILocation(line: 640, column: 32, scope: !2545)
!2890 = !DILocation(line: 641, column: 43, scope: !2545)
!2891 = !DILocation(line: 641, column: 32, scope: !2545)
!2892 = !DILocation(line: 643, column: 46, scope: !2545)
!2893 = !DILocation(line: 643, column: 44, scope: !2545)
!2894 = !DILocation(line: 0, scope: !75, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 643, column: 30, scope: !2545)
!2896 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2895)
!2897 = !DILocation(line: 643, column: 50, scope: !2545)
!2898 = !DILocation(line: 644, column: 46, scope: !2545)
!2899 = !DILocation(line: 644, column: 44, scope: !2545)
!2900 = !DILocation(line: 0, scope: !75, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 644, column: 30, scope: !2545)
!2902 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2901)
!2903 = !DILocation(line: 644, column: 50, scope: !2545)
!2904 = !DILocation(line: 646, column: 34, scope: !2545)
!2905 = !DILocation(line: 646, column: 39, scope: !2545)
!2906 = !DILocation(line: 647, column: 37, scope: !2545)
!2907 = !DILocation(line: 647, column: 62, scope: !2545)
!2908 = !DILocation(line: 647, column: 81, scope: !2545)
!2909 = !DILocation(line: 647, column: 68, scope: !2545)
!2910 = !DILocation(line: 647, column: 94, scope: !2545)
!2911 = !DILocation(line: 647, column: 99, scope: !2545)
!2912 = !DILocation(line: 0, scope: !2025, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 647, column: 29, scope: !2545)
!2914 = !DILocation(line: 0, scope: !2034, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2913)
!2916 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2915)
!2917 = !DILocation(line: 0, scope: !2043, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2913)
!2919 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2918)
!2920 = !DILocation(line: 649, column: 23, scope: !2545)
!2921 = !DILocation(line: 650, column: 56, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 649, column: 23)
!2923 = !DILocation(line: 650, column: 62, scope: !2922)
!2924 = !DILocation(line: 650, column: 80, scope: !2922)
!2925 = !DILocation(line: 0, scope: !2025, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 650, column: 34, scope: !2922)
!2927 = !DILocation(line: 0, scope: !2034, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2926)
!2929 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2928)
!2930 = !DILocation(line: 0, scope: !2043, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2926)
!2932 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2931)
!2933 = !DILocation(line: 650, column: 31, scope: !2922)
!2934 = !DILocation(line: 650, column: 21, scope: !2922)
!2935 = !DILocation(line: 652, column: 27, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 652, column: 23)
!2937 = !DILocation(line: 652, column: 23, scope: !2545)
!2938 = !DILocation(line: 654, column: 66, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 653, column: 19)
!2940 = !DILocation(line: 654, column: 75, scope: !2939)
!2941 = !DILocation(line: 0, scope: !2294, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 654, column: 41, scope: !2939)
!2943 = !DILocation(line: 0, scope: !2034, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2942)
!2945 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2944)
!2946 = !DILocation(line: 0, scope: !2043, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2942)
!2948 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2947)
!2949 = !DILocation(line: 654, column: 32, scope: !2939)
!2950 = !DILocation(line: 654, column: 30, scope: !2939)
!2951 = !DILocation(line: 655, column: 66, scope: !2939)
!2952 = !DILocation(line: 655, column: 75, scope: !2939)
!2953 = !DILocation(line: 0, scope: !2294, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 655, column: 41, scope: !2939)
!2955 = !DILocation(line: 0, scope: !2034, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !2954)
!2957 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2956)
!2958 = !DILocation(line: 0, scope: !2043, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !2954)
!2960 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2959)
!2961 = !DILocation(line: 655, column: 32, scope: !2939)
!2962 = !DILocation(line: 655, column: 30, scope: !2939)
!2963 = !DILocation(line: 656, column: 19, scope: !2939)
!2964 = !DILocation(line: 658, column: 23, scope: !2545)
!2965 = !DILocation(line: 659, column: 56, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 658, column: 23)
!2967 = !DILocation(line: 659, column: 65, scope: !2966)
!2968 = !DILocation(line: 659, column: 62, scope: !2966)
!2969 = !DILocation(line: 659, column: 80, scope: !2966)
!2970 = !DILocation(line: 0, scope: !2025, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 659, column: 34, scope: !2966)
!2972 = !DILocation(line: 0, scope: !2034, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !2971)
!2974 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !2973)
!2975 = !DILocation(line: 0, scope: !2043, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !2971)
!2977 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !2976)
!2978 = !DILocation(line: 659, column: 31, scope: !2966)
!2979 = !DILocation(line: 659, column: 21, scope: !2966)
!2980 = !DILocation(line: 626, column: 42, scope: !2540)
!2981 = !DILocation(line: 626, column: 27, scope: !2540)
!2982 = distinct !{!2982, !2779, !2983}
!2983 = !DILocation(line: 662, column: 13, scope: !2541)
!2984 = !DILocation(line: 667, column: 16, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 666, column: 9)
!2986 = !DILocation(line: 668, column: 16, scope: !2985)
!2987 = !DILocation(line: 670, column: 18, scope: !2483)
!2988 = !DILocation(line: 525, column: 48, scope: !2484)
!2989 = !DILocation(line: 525, column: 26, scope: !2484)
!2990 = distinct !{!2990, !2609, !2991}
!2991 = !DILocation(line: 671, column: 7, scope: !2485)
!2992 = !DILocation(line: 674, column: 1, scope: !2453)
!2993 = distinct !DISubprogram(name: "EdgeLoopChromaVer", scope: !3, file: !3, line: 683, type: !2994, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !556, !256, !740, !7, !7, !518}
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3023, !3024, !3025, !3026, !3027, !3031, !3034, !3035, !3036, !3039, !3042, !3047}
!2997 = !DILocalVariable(name: "Img", arg: 1, scope: !2993, file: !3, line: 683, type: !556)
!2998 = !DILocalVariable(name: "Strength", arg: 2, scope: !2993, file: !3, line: 683, type: !256)
!2999 = !DILocalVariable(name: "MbQ", arg: 3, scope: !2993, file: !3, line: 683, type: !740)
!3000 = !DILocalVariable(name: "edge", arg: 4, scope: !2993, file: !3, line: 683, type: !7)
!3001 = !DILocalVariable(name: "uv", arg: 5, scope: !2993, file: !3, line: 683, type: !7)
!3002 = !DILocalVariable(name: "p", arg: 6, scope: !2993, file: !3, line: 683, type: !518)
!3003 = !DILocalVariable(name: "p_Vid", scope: !2993, file: !3, line: 685, type: !125)
!3004 = !DILocalVariable(name: "block_width", scope: !2993, file: !3, line: 687, type: !7)
!3005 = !DILocalVariable(name: "block_height", scope: !2993, file: !3, line: 688, type: !7)
!3006 = !DILocalVariable(name: "xQ", scope: !2993, file: !3, line: 689, type: !7)
!3007 = !DILocalVariable(name: "yQ", scope: !2993, file: !3, line: 690, type: !7)
!3008 = !DILocalVariable(name: "MbP", scope: !2993, file: !3, line: 692, type: !740)
!3009 = !DILocalVariable(name: "bitdepth_scale", scope: !3010, file: !3, line: 696, type: !7)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 695, column: 3)
!3011 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 694, column: 7)
!3012 = !DILocalVariable(name: "max_imgpel_value", scope: !3010, file: !3, line: 697, type: !7)
!3013 = !DILocalVariable(name: "AlphaC0Offset", scope: !3010, file: !3, line: 699, type: !7)
!3014 = !DILocalVariable(name: "BetaOffset", scope: !3010, file: !3, line: 700, type: !7)
!3015 = !DILocalVariable(name: "QP", scope: !3010, file: !3, line: 703, type: !7)
!3016 = !DILocalVariable(name: "indexA", scope: !3010, file: !3, line: 705, type: !7)
!3017 = !DILocalVariable(name: "indexB", scope: !3010, file: !3, line: 706, type: !7)
!3018 = !DILocalVariable(name: "Alpha", scope: !3010, file: !3, line: 708, type: !7)
!3019 = !DILocalVariable(name: "Beta", scope: !3010, file: !3, line: 709, type: !7)
!3020 = !DILocalVariable(name: "PelNum", scope: !3021, file: !3, line: 713, type: !82)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 712, column: 5)
!3022 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 711, column: 9)
!3023 = !DILocalVariable(name: "ClipTab", scope: !3021, file: !3, line: 714, type: !1928)
!3024 = !DILocalVariable(name: "pel", scope: !3021, file: !3, line: 716, type: !7)
!3025 = !DILocalVariable(name: "pos_x1", scope: !3021, file: !3, line: 717, type: !7)
!3026 = !DILocalVariable(name: "cur_img", scope: !3021, file: !3, line: 718, type: !556)
!3027 = !DILocalVariable(name: "Strng", scope: !3028, file: !3, line: 722, type: !7)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 721, column: 7)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 720, column: 7)
!3030 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 720, column: 7)
!3031 = !DILocalVariable(name: "SrcPtrP", scope: !3032, file: !3, line: 726, type: !557)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 725, column: 9)
!3033 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 724, column: 13)
!3034 = !DILocalVariable(name: "SrcPtrQ", scope: !3032, file: !3, line: 727, type: !557)
!3035 = !DILocalVariable(name: "edge_diff", scope: !3032, file: !3, line: 728, type: !7)
!3036 = !DILocalVariable(name: "R1", scope: !3037, file: !3, line: 732, type: !69)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 731, column: 11)
!3038 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 730, column: 16)
!3039 = !DILocalVariable(name: "L1", scope: !3040, file: !3, line: 735, type: !69)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 734, column: 13)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 733, column: 18)
!3042 = !DILocalVariable(name: "tc0", scope: !3043, file: !3, line: 745, type: !7)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 744, column: 17)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 738, column: 21)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 737, column: 15)
!3046 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 736, column: 20)
!3047 = !DILocalVariable(name: "dif", scope: !3043, file: !3, line: 746, type: !7)
!3048 = !DILocation(line: 0, scope: !2993)
!3049 = !DILocation(line: 685, column: 33, scope: !2993)
!3050 = !DILocation(line: 687, column: 29, scope: !2993)
!3051 = !DILocation(line: 688, column: 29, scope: !2993)
!3052 = !DILocation(line: 689, column: 17, scope: !2993)
!3053 = !DILocalVariable(name: "mb", arg: 1, scope: !3054, file: !3, line: 58, type: !740)
!3054 = distinct !DISubprogram(name: "get_non_aff_neighbor_chroma", scope: !3, file: !3, line: 58, type: !3055, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!740, !740, !7, !7, !7, !7}
!3057 = !{!3053, !3058, !3059, !3060, !3061}
!3058 = !DILocalVariable(name: "xN", arg: 2, scope: !3054, file: !3, line: 58, type: !7)
!3059 = !DILocalVariable(name: "yN", arg: 3, scope: !3054, file: !3, line: 58, type: !7)
!3060 = !DILocalVariable(name: "block_width", arg: 4, scope: !3054, file: !3, line: 58, type: !7)
!3061 = !DILocalVariable(name: "block_height", arg: 5, scope: !3054, file: !3, line: 58, type: !7)
!3062 = !DILocation(line: 0, scope: !3054, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 692, column: 21, scope: !2993)
!3064 = !DILocation(line: 60, column: 10, scope: !3065, inlinedAt: !3063)
!3065 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 60, column: 7)
!3066 = !DILocation(line: 60, column: 7, scope: !3054, inlinedAt: !3063)
!3067 = !DILocation(line: 62, column: 12, scope: !3068, inlinedAt: !3063)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 62, column: 9)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 61, column: 3)
!3070 = !DILocation(line: 62, column: 9, scope: !3069, inlinedAt: !3063)
!3071 = !DILocation(line: 67, column: 15, scope: !3072, inlinedAt: !3063)
!3072 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 67, column: 12)
!3073 = !DILocation(line: 67, column: 12, scope: !3065, inlinedAt: !3063)
!3074 = !DILocation(line: 63, column: 18, scope: !3068, inlinedAt: !3063)
!3075 = !DILocation(line: 694, column: 7, scope: !3011)
!3076 = !DILocation(line: 694, column: 11, scope: !3011)
!3077 = !DILocation(line: 694, column: 20, scope: !3011)
!3078 = !DILocation(line: 694, column: 33, scope: !3011)
!3079 = !DILocation(line: 694, column: 7, scope: !2993)
!3080 = !DILocation(line: 696, column: 33, scope: !3010)
!3081 = !DILocation(line: 0, scope: !3010)
!3082 = !DILocation(line: 697, column: 40, scope: !3010)
!3083 = !DILocation(line: 697, column: 62, scope: !3010)
!3084 = !DILocation(line: 697, column: 33, scope: !3010)
!3085 = !DILocation(line: 699, column: 30, scope: !3010)
!3086 = !DILocation(line: 699, column: 25, scope: !3010)
!3087 = !DILocation(line: 700, column: 27, scope: !3010)
!3088 = !DILocation(line: 700, column: 22, scope: !3010)
!3089 = !DILocation(line: 703, column: 20, scope: !3010)
!3090 = !DILocation(line: 703, column: 15, scope: !3010)
!3091 = !DILocation(line: 703, column: 35, scope: !3010)
!3092 = !DILocation(line: 703, column: 30, scope: !3010)
!3093 = !DILocation(line: 703, column: 28, scope: !3010)
!3094 = !DILocation(line: 703, column: 43, scope: !3010)
!3095 = !DILocation(line: 703, column: 48, scope: !3010)
!3096 = !DILocation(line: 705, column: 39, scope: !3010)
!3097 = !DILocation(line: 0, scope: !2025, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 705, column: 18, scope: !3010)
!3099 = !DILocation(line: 0, scope: !2034, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3098)
!3101 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !2043, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3098)
!3104 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3103)
!3105 = !DILocation(line: 706, column: 39, scope: !3010)
!3106 = !DILocation(line: 0, scope: !2025, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 706, column: 18, scope: !3010)
!3108 = !DILocation(line: 0, scope: !2034, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3107)
!3110 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !2043, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3107)
!3113 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3112)
!3114 = !DILocation(line: 708, column: 19, scope: !3010)
!3115 = !DILocation(line: 708, column: 39, scope: !3010)
!3116 = !DILocation(line: 709, column: 19, scope: !3010)
!3117 = !DILocation(line: 709, column: 39, scope: !3010)
!3118 = !DILocation(line: 711, column: 16, scope: !3022)
!3119 = !DILocation(line: 711, column: 24, scope: !3022)
!3120 = !DILocation(line: 711, column: 9, scope: !3010)
!3121 = !DILocation(line: 713, column: 42, scope: !3021)
!3122 = !DILocation(line: 713, column: 26, scope: !3021)
!3123 = !DILocation(line: 0, scope: !3021)
!3124 = !DILocation(line: 714, column: 33, scope: !3021)
!3125 = !DILocation(line: 720, column: 26, scope: !3029)
!3126 = !DILocation(line: 720, column: 7, scope: !3030)
!3127 = !DILocation(line: 718, column: 31, scope: !3021)
!3128 = !DILocation(line: 718, column: 27, scope: !3021)
!3129 = !DILocation(line: 717, column: 20, scope: !3021)
!3130 = !DILocation(line: 722, column: 30, scope: !3028)
!3131 = !DILocation(line: 722, column: 21, scope: !3028)
!3132 = !DILocation(line: 0, scope: !3028)
!3133 = !DILocation(line: 724, column: 19, scope: !3033)
!3134 = !DILocation(line: 724, column: 13, scope: !3028)
!3135 = !DILocation(line: 726, column: 29, scope: !3032)
!3136 = !DILocation(line: 726, column: 38, scope: !3032)
!3137 = !DILocation(line: 0, scope: !3032)
!3138 = !DILocation(line: 727, column: 37, scope: !3032)
!3139 = !DILocation(line: 728, column: 27, scope: !3032)
!3140 = !DILocation(line: 728, column: 38, scope: !3032)
!3141 = !DILocation(line: 728, column: 36, scope: !3032)
!3142 = !DILocation(line: 0, scope: !75, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 730, column: 16, scope: !3038)
!3144 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3143)
!3145 = !DILocation(line: 730, column: 34, scope: !3038)
!3146 = !DILocation(line: 730, column: 16, scope: !3032)
!3147 = !DILocation(line: 732, column: 36, scope: !3037)
!3148 = !DILocation(line: 732, column: 26, scope: !3037)
!3149 = !DILocation(line: 0, scope: !3037)
!3150 = !DILocation(line: 733, column: 34, scope: !3041)
!3151 = !DILocation(line: 733, column: 32, scope: !3041)
!3152 = !DILocation(line: 0, scope: !75, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 733, column: 18, scope: !3041)
!3154 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3153)
!3155 = !DILocation(line: 733, column: 38, scope: !3041)
!3156 = !DILocation(line: 733, column: 18, scope: !3037)
!3157 = !DILocation(line: 735, column: 38, scope: !3040)
!3158 = !DILocation(line: 735, column: 28, scope: !3040)
!3159 = !DILocation(line: 0, scope: !3040)
!3160 = !DILocation(line: 736, column: 36, scope: !3046)
!3161 = !DILocation(line: 736, column: 34, scope: !3046)
!3162 = !DILocation(line: 0, scope: !75, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 736, column: 20, scope: !3046)
!3164 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3163)
!3165 = !DILocation(line: 736, column: 40, scope: !3046)
!3166 = !DILocation(line: 736, column: 20, scope: !3040)
!3167 = !DILocation(line: 738, column: 27, scope: !3044)
!3168 = !DILocation(line: 738, column: 21, scope: !3045)
!3169 = !DILocation(line: 740, column: 46, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 739, column: 17)
!3171 = !DILocation(line: 740, column: 52, scope: !3170)
!3172 = !DILocation(line: 740, column: 63, scope: !3170)
!3173 = !DILocation(line: 740, column: 68, scope: !3170)
!3174 = !DILocation(line: 740, column: 73, scope: !3170)
!3175 = !DILocation(line: 740, column: 30, scope: !3170)
!3176 = !DILocation(line: 740, column: 28, scope: !3170)
!3177 = !DILocation(line: 741, column: 46, scope: !3170)
!3178 = !DILocation(line: 741, column: 52, scope: !3170)
!3179 = !DILocation(line: 741, column: 63, scope: !3170)
!3180 = !DILocation(line: 741, column: 68, scope: !3170)
!3181 = !DILocation(line: 741, column: 73, scope: !3170)
!3182 = !DILocation(line: 742, column: 17, scope: !3170)
!3183 = !DILocation(line: 745, column: 30, scope: !3043)
!3184 = !DILocation(line: 745, column: 47, scope: !3043)
!3185 = !DILocation(line: 0, scope: !3043)
!3186 = !DILocation(line: 0, scope: !2025, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 746, column: 29, scope: !3043)
!3188 = !DILocation(line: 0, scope: !2034, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3187)
!3190 = !DILocation(line: 746, column: 75, scope: !3043)
!3191 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3189)
!3192 = !DILocation(line: 0, scope: !2043, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3187)
!3194 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3193)
!3195 = !DILocation(line: 748, column: 27, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 748, column: 23)
!3197 = !DILocation(line: 748, column: 23, scope: !3043)
!3198 = !DILocation(line: 750, column: 77, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 749, column: 19)
!3200 = !DILocation(line: 0, scope: !2294, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 750, column: 41, scope: !3199)
!3202 = !DILocation(line: 0, scope: !2034, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !3201)
!3204 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3203)
!3205 = !DILocation(line: 0, scope: !2043, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !3201)
!3207 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3206)
!3208 = !DILocation(line: 750, column: 32, scope: !3199)
!3209 = !DILocation(line: 750, column: 30, scope: !3199)
!3210 = !DILocation(line: 751, column: 77, scope: !3199)
!3211 = !DILocation(line: 0, scope: !2294, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 751, column: 41, scope: !3199)
!3213 = !DILocation(line: 0, scope: !2034, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !3212)
!3215 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !2043, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !3212)
!3218 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3217)
!3219 = !DILocation(line: 752, column: 19, scope: !3199)
!3220 = !DILocation(line: 0, scope: !3044)
!3221 = !DILocation(line: 758, column: 16, scope: !3028)
!3222 = !DILocation(line: 720, column: 37, scope: !3029)
!3223 = distinct !{!3223, !3126, !3224}
!3224 = !DILocation(line: 759, column: 7, scope: !3030)
!3225 = !DILocation(line: 762, column: 1, scope: !2993)
!3226 = distinct !DISubprogram(name: "EdgeLoopChromaHor", scope: !3, file: !3, line: 771, type: !2994, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3255, !3256, !3257, !3258, !3259, !3263, !3266, !3267, !3268, !3271, !3274, !3279}
!3228 = !DILocalVariable(name: "Img", arg: 1, scope: !3226, file: !3, line: 771, type: !556)
!3229 = !DILocalVariable(name: "Strength", arg: 2, scope: !3226, file: !3, line: 771, type: !256)
!3230 = !DILocalVariable(name: "MbQ", arg: 3, scope: !3226, file: !3, line: 771, type: !740)
!3231 = !DILocalVariable(name: "edge", arg: 4, scope: !3226, file: !3, line: 771, type: !7)
!3232 = !DILocalVariable(name: "uv", arg: 5, scope: !3226, file: !3, line: 771, type: !7)
!3233 = !DILocalVariable(name: "p", arg: 6, scope: !3226, file: !3, line: 771, type: !518)
!3234 = !DILocalVariable(name: "p_Vid", scope: !3226, file: !3, line: 773, type: !125)
!3235 = !DILocalVariable(name: "block_width", scope: !3226, file: !3, line: 774, type: !7)
!3236 = !DILocalVariable(name: "block_height", scope: !3226, file: !3, line: 775, type: !7)
!3237 = !DILocalVariable(name: "xQ", scope: !3226, file: !3, line: 776, type: !7)
!3238 = !DILocalVariable(name: "yQ", scope: !3226, file: !3, line: 777, type: !7)
!3239 = !DILocalVariable(name: "MbP", scope: !3226, file: !3, line: 779, type: !740)
!3240 = !DILocalVariable(name: "bitdepth_scale", scope: !3241, file: !3, line: 783, type: !7)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 782, column: 3)
!3242 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 781, column: 7)
!3243 = !DILocalVariable(name: "max_imgpel_value", scope: !3241, file: !3, line: 784, type: !7)
!3244 = !DILocalVariable(name: "AlphaC0Offset", scope: !3241, file: !3, line: 786, type: !7)
!3245 = !DILocalVariable(name: "BetaOffset", scope: !3241, file: !3, line: 787, type: !7)
!3246 = !DILocalVariable(name: "width", scope: !3241, file: !3, line: 788, type: !7)
!3247 = !DILocalVariable(name: "QP", scope: !3241, file: !3, line: 791, type: !7)
!3248 = !DILocalVariable(name: "indexA", scope: !3241, file: !3, line: 793, type: !7)
!3249 = !DILocalVariable(name: "indexB", scope: !3241, file: !3, line: 794, type: !7)
!3250 = !DILocalVariable(name: "Alpha", scope: !3241, file: !3, line: 796, type: !7)
!3251 = !DILocalVariable(name: "Beta", scope: !3241, file: !3, line: 797, type: !7)
!3252 = !DILocalVariable(name: "PelNum", scope: !3253, file: !3, line: 801, type: !82)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 800, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 799, column: 9)
!3255 = !DILocalVariable(name: "ClipTab", scope: !3253, file: !3, line: 802, type: !1928)
!3256 = !DILocalVariable(name: "pel", scope: !3253, file: !3, line: 804, type: !7)
!3257 = !DILocalVariable(name: "imgP", scope: !3253, file: !3, line: 806, type: !557)
!3258 = !DILocalVariable(name: "imgQ", scope: !3253, file: !3, line: 807, type: !557)
!3259 = !DILocalVariable(name: "Strng", scope: !3260, file: !3, line: 811, type: !7)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 810, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 809, column: 7)
!3262 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 809, column: 7)
!3263 = !DILocalVariable(name: "SrcPtrP", scope: !3264, file: !3, line: 815, type: !557)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 814, column: 9)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 813, column: 13)
!3266 = !DILocalVariable(name: "SrcPtrQ", scope: !3264, file: !3, line: 816, type: !557)
!3267 = !DILocalVariable(name: "edge_diff", scope: !3264, file: !3, line: 817, type: !7)
!3268 = !DILocalVariable(name: "R1", scope: !3269, file: !3, line: 821, type: !69)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 820, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 819, column: 16)
!3271 = !DILocalVariable(name: "L1", scope: !3272, file: !3, line: 824, type: !69)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 823, column: 13)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 822, column: 18)
!3274 = !DILocalVariable(name: "tc0", scope: !3275, file: !3, line: 834, type: !7)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 833, column: 17)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 827, column: 21)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 826, column: 15)
!3278 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 825, column: 20)
!3279 = !DILocalVariable(name: "dif", scope: !3275, file: !3, line: 835, type: !7)
!3280 = !DILocation(line: 0, scope: !3226)
!3281 = !DILocation(line: 773, column: 33, scope: !3226)
!3282 = !DILocation(line: 774, column: 28, scope: !3226)
!3283 = !DILocation(line: 775, column: 29, scope: !3226)
!3284 = !DILocation(line: 777, column: 18, scope: !3226)
!3285 = !DILocation(line: 777, column: 13, scope: !3226)
!3286 = !DILocation(line: 0, scope: !3054, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 779, column: 21, scope: !3226)
!3288 = !DILocation(line: 67, column: 15, scope: !3072, inlinedAt: !3287)
!3289 = !DILocation(line: 67, column: 12, scope: !3065, inlinedAt: !3287)
!3290 = !DILocation(line: 69, column: 12, scope: !3291, inlinedAt: !3287)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 69, column: 9)
!3292 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 68, column: 3)
!3293 = !DILocation(line: 69, column: 9, scope: !3292, inlinedAt: !3287)
!3294 = !DILocation(line: 71, column: 17, scope: !3295, inlinedAt: !3287)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 71, column: 14)
!3296 = !DILocation(line: 0, scope: !3295, inlinedAt: !3287)
!3297 = !DILocation(line: 70, column: 18, scope: !3291, inlinedAt: !3287)
!3298 = !DILocation(line: 781, column: 7, scope: !3242)
!3299 = !DILocation(line: 781, column: 11, scope: !3242)
!3300 = !DILocation(line: 781, column: 20, scope: !3242)
!3301 = !DILocation(line: 781, column: 33, scope: !3242)
!3302 = !DILocation(line: 781, column: 7, scope: !3226)
!3303 = !DILocation(line: 783, column: 33, scope: !3241)
!3304 = !DILocation(line: 0, scope: !3241)
!3305 = !DILocation(line: 784, column: 40, scope: !3241)
!3306 = !DILocation(line: 784, column: 62, scope: !3241)
!3307 = !DILocation(line: 784, column: 33, scope: !3241)
!3308 = !DILocation(line: 786, column: 30, scope: !3241)
!3309 = !DILocation(line: 786, column: 25, scope: !3241)
!3310 = !DILocation(line: 787, column: 27, scope: !3241)
!3311 = !DILocation(line: 787, column: 22, scope: !3241)
!3312 = !DILocation(line: 791, column: 20, scope: !3241)
!3313 = !DILocation(line: 791, column: 15, scope: !3241)
!3314 = !DILocation(line: 791, column: 35, scope: !3241)
!3315 = !DILocation(line: 791, column: 30, scope: !3241)
!3316 = !DILocation(line: 791, column: 28, scope: !3241)
!3317 = !DILocation(line: 791, column: 43, scope: !3241)
!3318 = !DILocation(line: 791, column: 48, scope: !3241)
!3319 = !DILocation(line: 793, column: 39, scope: !3241)
!3320 = !DILocation(line: 0, scope: !2025, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 793, column: 18, scope: !3241)
!3322 = !DILocation(line: 0, scope: !2034, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3321)
!3324 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !2043, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3321)
!3327 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3326)
!3328 = !DILocation(line: 794, column: 39, scope: !3241)
!3329 = !DILocation(line: 0, scope: !2025, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 794, column: 18, scope: !3241)
!3331 = !DILocation(line: 0, scope: !2034, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3330)
!3333 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3332)
!3334 = !DILocation(line: 0, scope: !2043, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3330)
!3336 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3335)
!3337 = !DILocation(line: 796, column: 19, scope: !3241)
!3338 = !DILocation(line: 796, column: 39, scope: !3241)
!3339 = !DILocation(line: 797, column: 19, scope: !3241)
!3340 = !DILocation(line: 797, column: 39, scope: !3241)
!3341 = !DILocation(line: 799, column: 16, scope: !3254)
!3342 = !DILocation(line: 799, column: 24, scope: !3254)
!3343 = !DILocation(line: 799, column: 9, scope: !3241)
!3344 = !DILocation(line: 788, column: 20, scope: !3241)
!3345 = !DILocation(line: 801, column: 42, scope: !3253)
!3346 = !DILocation(line: 801, column: 26, scope: !3253)
!3347 = !DILocation(line: 0, scope: !3253)
!3348 = !DILocation(line: 802, column: 33, scope: !3253)
!3349 = !DILocation(line: 807, column: 27, scope: !3253)
!3350 = !DILocation(line: 809, column: 26, scope: !3261)
!3351 = !DILocation(line: 809, column: 7, scope: !3262)
!3352 = !DILocation(line: 806, column: 27, scope: !3253)
!3353 = !DILocation(line: 806, column: 23, scope: !3253)
!3354 = !DILocation(line: 806, column: 71, scope: !3253)
!3355 = !DILocation(line: 811, column: 30, scope: !3260)
!3356 = !DILocation(line: 811, column: 21, scope: !3260)
!3357 = !DILocation(line: 0, scope: !3260)
!3358 = !DILocation(line: 813, column: 19, scope: !3265)
!3359 = !DILocation(line: 813, column: 13, scope: !3260)
!3360 = !DILocation(line: 0, scope: !3264)
!3361 = !DILocation(line: 817, column: 27, scope: !3264)
!3362 = !DILocation(line: 817, column: 35, scope: !3264)
!3363 = !DILocation(line: 817, column: 33, scope: !3264)
!3364 = !DILocation(line: 0, scope: !75, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 819, column: 16, scope: !3270)
!3366 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3365)
!3367 = !DILocation(line: 819, column: 34, scope: !3270)
!3368 = !DILocation(line: 819, column: 16, scope: !3264)
!3369 = !DILocation(line: 821, column: 36, scope: !3269)
!3370 = !DILocation(line: 821, column: 26, scope: !3269)
!3371 = !DILocation(line: 0, scope: !3269)
!3372 = !DILocation(line: 822, column: 34, scope: !3273)
!3373 = !DILocation(line: 822, column: 32, scope: !3273)
!3374 = !DILocation(line: 0, scope: !75, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 822, column: 18, scope: !3273)
!3376 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3375)
!3377 = !DILocation(line: 822, column: 38, scope: !3273)
!3378 = !DILocation(line: 822, column: 18, scope: !3269)
!3379 = !DILocation(line: 824, column: 38, scope: !3272)
!3380 = !DILocation(line: 824, column: 28, scope: !3272)
!3381 = !DILocation(line: 0, scope: !3272)
!3382 = !DILocation(line: 825, column: 36, scope: !3278)
!3383 = !DILocation(line: 825, column: 34, scope: !3278)
!3384 = !DILocation(line: 0, scope: !75, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 825, column: 20, scope: !3278)
!3386 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3385)
!3387 = !DILocation(line: 825, column: 40, scope: !3278)
!3388 = !DILocation(line: 825, column: 20, scope: !3272)
!3389 = !DILocation(line: 827, column: 27, scope: !3276)
!3390 = !DILocation(line: 827, column: 21, scope: !3277)
!3391 = !DILocation(line: 829, column: 46, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 828, column: 17)
!3393 = !DILocation(line: 829, column: 52, scope: !3392)
!3394 = !DILocation(line: 829, column: 63, scope: !3392)
!3395 = !DILocation(line: 829, column: 68, scope: !3392)
!3396 = !DILocation(line: 829, column: 73, scope: !3392)
!3397 = !DILocation(line: 829, column: 30, scope: !3392)
!3398 = !DILocation(line: 829, column: 28, scope: !3392)
!3399 = !DILocation(line: 830, column: 46, scope: !3392)
!3400 = !DILocation(line: 830, column: 54, scope: !3392)
!3401 = !DILocation(line: 830, column: 52, scope: !3392)
!3402 = !DILocation(line: 830, column: 63, scope: !3392)
!3403 = !DILocation(line: 830, column: 68, scope: !3392)
!3404 = !DILocation(line: 830, column: 73, scope: !3392)
!3405 = !DILocation(line: 831, column: 17, scope: !3392)
!3406 = !DILocation(line: 834, column: 30, scope: !3275)
!3407 = !DILocation(line: 834, column: 47, scope: !3275)
!3408 = !DILocation(line: 0, scope: !3275)
!3409 = !DILocation(line: 0, scope: !2025, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 835, column: 29, scope: !3275)
!3411 = !DILocation(line: 0, scope: !2034, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 200, column: 7, scope: !2025, inlinedAt: !3410)
!3413 = !DILocation(line: 835, column: 75, scope: !3275)
!3414 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3412)
!3415 = !DILocation(line: 0, scope: !2043, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 201, column: 7, scope: !2025, inlinedAt: !3410)
!3417 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3416)
!3418 = !DILocation(line: 837, column: 27, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 837, column: 23)
!3420 = !DILocation(line: 837, column: 23, scope: !3275)
!3421 = !DILocation(line: 839, column: 77, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 838, column: 19)
!3423 = !DILocation(line: 0, scope: !2294, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 839, column: 41, scope: !3422)
!3425 = !DILocation(line: 0, scope: !2034, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !3424)
!3427 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !2043, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !3424)
!3430 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3429)
!3431 = !DILocation(line: 839, column: 32, scope: !3422)
!3432 = !DILocation(line: 839, column: 30, scope: !3422)
!3433 = !DILocation(line: 840, column: 68, scope: !3422)
!3434 = !DILocation(line: 840, column: 77, scope: !3422)
!3435 = !DILocation(line: 0, scope: !2294, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 840, column: 41, scope: !3422)
!3437 = !DILocation(line: 0, scope: !2034, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 192, column: 7, scope: !2294, inlinedAt: !3436)
!3439 = !DILocation(line: 49, column: 10, scope: !2034, inlinedAt: !3438)
!3440 = !DILocation(line: 0, scope: !2043, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 193, column: 7, scope: !2294, inlinedAt: !3436)
!3442 = !DILocation(line: 44, column: 10, scope: !2043, inlinedAt: !3441)
!3443 = !DILocation(line: 841, column: 19, scope: !3422)
!3444 = !DILocation(line: 0, scope: !3276)
!3445 = !DILocation(line: 847, column: 13, scope: !3260)
!3446 = !DILocation(line: 848, column: 13, scope: !3260)
!3447 = !DILocation(line: 809, column: 37, scope: !3261)
!3448 = distinct !{!3448, !3351, !3449}
!3449 = !DILocation(line: 849, column: 7, scope: !3262)
!3450 = !DILocation(line: 852, column: 1, scope: !3226)
