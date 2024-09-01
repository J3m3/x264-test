; ModuleID = 'ldecod_src/loop_filter_mbaff.c'
source_filename = "ldecod_src/loop_filter_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16, !dbg !0
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16, !dbg !83
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16, !dbg !90
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16, !dbg !96
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16, !dbg !98

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_mbaff(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 !dbg !122 {
entry:
    #dbg_value(ptr %p_Vid, !1295, !DIExpression(), !1296)
  %GetStrengthVer = getelementptr inbounds i8, ptr %p_Vid, i64 856760, !dbg !1297
  store ptr @GetStrengthVerMBAff, ptr %GetStrengthVer, align 8, !dbg !1298
  %GetStrengthHor = getelementptr inbounds i8, ptr %p_Vid, i64 856768, !dbg !1299
  store ptr @GetStrengthHorMBAff, ptr %GetStrengthHor, align 8, !dbg !1300
  %EdgeLoopLumaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856776, !dbg !1301
  store ptr @EdgeLoopLumaVerMBAff, ptr %EdgeLoopLumaVer, align 8, !dbg !1302
  %EdgeLoopLumaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856784, !dbg !1303
  store ptr @EdgeLoopLumaHorMBAff, ptr %EdgeLoopLumaHor, align 8, !dbg !1304
  %EdgeLoopChromaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856792, !dbg !1305
  store ptr @EdgeLoopChromaVerMBAff, ptr %EdgeLoopChromaVer, align 8, !dbg !1306
  %EdgeLoopChromaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856800, !dbg !1307
  store ptr @EdgeLoopChromaHorMBAff, ptr %EdgeLoopChromaHor, align 8, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthVerMBAff(ptr nocapture noundef writeonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 !dbg !1310 {
entry:
  %mb_x = alloca i16, align 2, !DIAssignID !1374
    #dbg_assign(i1 undef, !1323, !DIExpression(), !1374, ptr %mb_x, !DIExpression(), !1375)
  %mb_y = alloca i16, align 2, !DIAssignID !1376
    #dbg_assign(i1 undef, !1324, !DIExpression(), !1376, ptr %mb_y, !DIExpression(), !1375)
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !1377
    #dbg_assign(i1 undef, !1326, !DIExpression(), !1377, ptr %pixP, !DIExpression(), !1375)
    #dbg_value(ptr %Strength, !1314, !DIExpression(), !1375)
    #dbg_value(ptr %MbQ, !1315, !DIExpression(), !1375)
    #dbg_value(i32 %edge, !1316, !DIExpression(), !1375)
    #dbg_value(i32 %mvlimit, !1317, !DIExpression(), !1375)
    #dbg_value(ptr %p, !1318, !DIExpression(), !1375)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_x) #7, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_y) #7, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !1379
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !1380
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !1380
    #dbg_value(ptr %0, !1327, !DIExpression(), !1375)
  %slice_type = getelementptr inbounds i8, ptr %p, i64 248, !dbg !1381
  %1 = load i32, ptr %slice_type, align 8, !dbg !1381
  %.off = add i32 %1, -3, !dbg !1382
  %switch = icmp ult i32 %.off, 2, !dbg !1382
  %sub = add nsw i32 %edge, -1
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  br i1 %switch, label %for.cond.preheader, label %if.else, !dbg !1382

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i16 0, !1321, !DIExpression(), !1375)
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %mb_field = getelementptr inbounds i8, ptr %MbQ, i64 384
  %mixedModeEdgeFlag = getelementptr inbounds i8, ptr %MbQ, i64 472
  %cmp20 = icmp eq i32 %edge, 0
  %conv22 = select i1 %cmp20, i8 4, i8 3
    #dbg_value(i64 0, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 0, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
    #dbg_value(!DIArgList(i32 poison, i16 poison), !1319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %2 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %3 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom = sext i32 %3 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %4 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16 = getelementptr inbounds %struct.macroblock, ptr %2, i64 %idxprom, i32 45, !dbg !1392
  %5 = load i32, ptr %mb_field16, align 8, !dbg !1392
  %cmp17 = icmp ne i32 %4, %5, !dbg !1393
  %conv19 = zext i1 %cmp17 to i8, !dbg !1394
  store i8 %conv19, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  store i8 %conv22, ptr %Strength, align 1, !dbg !1396
    #dbg_value(i64 1, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 1, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 1, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %6 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %7 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.1 = sext i32 %7 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %6, i64 %idxprom.1), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %8 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.1 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %idxprom.1, i32 45, !dbg !1392
  %9 = load i32, ptr %mb_field16.1, align 8, !dbg !1392
  %cmp17.1 = icmp ne i32 %8, %9, !dbg !1393
  %conv19.1 = zext i1 %cmp17.1 to i8, !dbg !1394
  store i8 %conv19.1, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.1 = getelementptr inbounds i8, ptr %Strength, i64 1, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.1, align 1, !dbg !1396
    #dbg_value(i64 2, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 2, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 2, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %10 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %11 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.2 = sext i32 %11 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %10, i64 %idxprom.2), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %12 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.2 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom.2, i32 45, !dbg !1392
  %13 = load i32, ptr %mb_field16.2, align 8, !dbg !1392
  %cmp17.2 = icmp ne i32 %12, %13, !dbg !1393
  %conv19.2 = zext i1 %cmp17.2 to i8, !dbg !1394
  store i8 %conv19.2, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.2 = getelementptr inbounds i8, ptr %Strength, i64 2, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.2, align 1, !dbg !1396
    #dbg_value(i64 3, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 3, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 3, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %14 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %15 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.3 = sext i32 %15 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %14, i64 %idxprom.3), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %16 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.3 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom.3, i32 45, !dbg !1392
  %17 = load i32, ptr %mb_field16.3, align 8, !dbg !1392
  %cmp17.3 = icmp ne i32 %16, %17, !dbg !1393
  %conv19.3 = zext i1 %cmp17.3 to i8, !dbg !1394
  store i8 %conv19.3, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.3 = getelementptr inbounds i8, ptr %Strength, i64 3, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.3, align 1, !dbg !1396
    #dbg_value(i64 4, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 4, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 4, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %18 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %19 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.4 = sext i32 %19 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %18, i64 %idxprom.4), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %20 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.4 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom.4, i32 45, !dbg !1392
  %21 = load i32, ptr %mb_field16.4, align 8, !dbg !1392
  %cmp17.4 = icmp ne i32 %20, %21, !dbg !1393
  %conv19.4 = zext i1 %cmp17.4 to i8, !dbg !1394
  store i8 %conv19.4, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.4 = getelementptr inbounds i8, ptr %Strength, i64 4, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.4, align 1, !dbg !1396
    #dbg_value(i64 5, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 5, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 5, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %22 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %23 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.5 = sext i32 %23 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %22, i64 %idxprom.5), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %24 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.5 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %idxprom.5, i32 45, !dbg !1392
  %25 = load i32, ptr %mb_field16.5, align 8, !dbg !1392
  %cmp17.5 = icmp ne i32 %24, %25, !dbg !1393
  %conv19.5 = zext i1 %cmp17.5 to i8, !dbg !1394
  store i8 %conv19.5, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.5 = getelementptr inbounds i8, ptr %Strength, i64 5, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.5, align 1, !dbg !1396
    #dbg_value(i64 6, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 6, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 6, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %26 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %27 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.6 = sext i32 %27 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %26, i64 %idxprom.6), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %28 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.6 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom.6, i32 45, !dbg !1392
  %29 = load i32, ptr %mb_field16.6, align 8, !dbg !1392
  %cmp17.6 = icmp ne i32 %28, %29, !dbg !1393
  %conv19.6 = zext i1 %cmp17.6 to i8, !dbg !1394
  store i8 %conv19.6, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.6 = getelementptr inbounds i8, ptr %Strength, i64 6, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.6, align 1, !dbg !1396
    #dbg_value(i64 7, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 7, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %30 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %31 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.7 = sext i32 %31 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %30, i64 %idxprom.7), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %32 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.7 = getelementptr inbounds %struct.macroblock, ptr %30, i64 %idxprom.7, i32 45, !dbg !1392
  %33 = load i32, ptr %mb_field16.7, align 8, !dbg !1392
  %cmp17.7 = icmp ne i32 %32, %33, !dbg !1393
  %conv19.7 = zext i1 %cmp17.7 to i8, !dbg !1394
  store i8 %conv19.7, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.7 = getelementptr inbounds i8, ptr %Strength, i64 7, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.7, align 1, !dbg !1396
    #dbg_value(i64 8, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 8, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 8, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %34 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %35 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.8 = sext i32 %35 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %34, i64 %idxprom.8), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %36 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.8 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %idxprom.8, i32 45, !dbg !1392
  %37 = load i32, ptr %mb_field16.8, align 8, !dbg !1392
  %cmp17.8 = icmp ne i32 %36, %37, !dbg !1393
  %conv19.8 = zext i1 %cmp17.8 to i8, !dbg !1394
  store i8 %conv19.8, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.8 = getelementptr inbounds i8, ptr %Strength, i64 8, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.8, align 1, !dbg !1396
    #dbg_value(i64 9, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 9, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 9, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %38 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %39 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.9 = sext i32 %39 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %38, i64 %idxprom.9), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %40 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.9 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %idxprom.9, i32 45, !dbg !1392
  %41 = load i32, ptr %mb_field16.9, align 8, !dbg !1392
  %cmp17.9 = icmp ne i32 %40, %41, !dbg !1393
  %conv19.9 = zext i1 %cmp17.9 to i8, !dbg !1394
  store i8 %conv19.9, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.9 = getelementptr inbounds i8, ptr %Strength, i64 9, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.9, align 1, !dbg !1396
    #dbg_value(i64 10, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 10, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 10, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %42 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %43 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.10 = sext i32 %43 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %42, i64 %idxprom.10), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %44 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.10 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %idxprom.10, i32 45, !dbg !1392
  %45 = load i32, ptr %mb_field16.10, align 8, !dbg !1392
  %cmp17.10 = icmp ne i32 %44, %45, !dbg !1393
  %conv19.10 = zext i1 %cmp17.10 to i8, !dbg !1394
  store i8 %conv19.10, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.10 = getelementptr inbounds i8, ptr %Strength, i64 10, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.10, align 1, !dbg !1396
    #dbg_value(i64 11, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 11, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 11, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %46 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %47 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.11 = sext i32 %47 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %46, i64 %idxprom.11), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %48 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.11 = getelementptr inbounds %struct.macroblock, ptr %46, i64 %idxprom.11, i32 45, !dbg !1392
  %49 = load i32, ptr %mb_field16.11, align 8, !dbg !1392
  %cmp17.11 = icmp ne i32 %48, %49, !dbg !1393
  %conv19.11 = zext i1 %cmp17.11 to i8, !dbg !1394
  store i8 %conv19.11, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.11 = getelementptr inbounds i8, ptr %Strength, i64 11, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.11, align 1, !dbg !1396
    #dbg_value(i64 12, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 12, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 12, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %50 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %51 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.12 = sext i32 %51 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %50, i64 %idxprom.12), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %52 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.12 = getelementptr inbounds %struct.macroblock, ptr %50, i64 %idxprom.12, i32 45, !dbg !1392
  %53 = load i32, ptr %mb_field16.12, align 8, !dbg !1392
  %cmp17.12 = icmp ne i32 %52, %53, !dbg !1393
  %conv19.12 = zext i1 %cmp17.12 to i8, !dbg !1394
  store i8 %conv19.12, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.12 = getelementptr inbounds i8, ptr %Strength, i64 12, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.12, align 1, !dbg !1396
    #dbg_value(i64 13, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 13, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 13, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %54 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %55 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.13 = sext i32 %55 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %54, i64 %idxprom.13), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %56 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.13 = getelementptr inbounds %struct.macroblock, ptr %54, i64 %idxprom.13, i32 45, !dbg !1392
  %57 = load i32, ptr %mb_field16.13, align 8, !dbg !1392
  %cmp17.13 = icmp ne i32 %56, %57, !dbg !1393
  %conv19.13 = zext i1 %cmp17.13 to i8, !dbg !1394
  store i8 %conv19.13, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.13 = getelementptr inbounds i8, ptr %Strength, i64 13, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.13, align 1, !dbg !1396
    #dbg_value(i64 14, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 14, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 14, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %58 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %59 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.14 = sext i32 %59 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %58, i64 %idxprom.14), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %60 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.14 = getelementptr inbounds %struct.macroblock, ptr %58, i64 %idxprom.14, i32 45, !dbg !1392
  %61 = load i32, ptr %mb_field16.14, align 8, !dbg !1392
  %cmp17.14 = icmp ne i32 %60, %61, !dbg !1393
  %conv19.14 = zext i1 %cmp17.14 to i8, !dbg !1394
  store i8 %conv19.14, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.14 = getelementptr inbounds i8, ptr %Strength, i64 14, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.14, align 1, !dbg !1396
    #dbg_value(i64 15, !1321, !DIExpression(), !1375)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 15, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1383
    #dbg_value(!DIArgList(i32 15, i32 %edge), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %62 = load ptr, ptr %mb_data, align 8, !dbg !1388
  %63 = load i32, ptr %mb_addr, align 4, !dbg !1389
  %idxprom.15 = sext i32 %63 to i64, !dbg !1390
    #dbg_value(!DIArgList(ptr %62, i64 %idxprom.15), !1325, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1375)
  %64 = load i32, ptr %mb_field, align 8, !dbg !1391
  %mb_field16.15 = getelementptr inbounds %struct.macroblock, ptr %62, i64 %idxprom.15, i32 45, !dbg !1392
  %65 = load i32, ptr %mb_field16.15, align 8, !dbg !1392
  %cmp17.15 = icmp ne i32 %64, %65, !dbg !1393
  %conv19.15 = zext i1 %cmp17.15 to i8, !dbg !1394
  store i8 %conv19.15, ptr %mixedModeEdgeFlag, align 8, !dbg !1395
  %arrayidx24.15 = getelementptr inbounds i8, ptr %Strength, i64 15, !dbg !1397
  store i8 %conv22, ptr %arrayidx24.15, align 1, !dbg !1396
    #dbg_value(i64 16, !1321, !DIExpression(), !1375)
  br label %if.end482, !dbg !1398

if.else:                                          ; preds = %entry
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1399
  %mb_data29 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1400
  %66 = load ptr, ptr %mb_data29, align 8, !dbg !1400
  %mb_addr30 = getelementptr inbounds i8, ptr %pixP, i64 4, !dbg !1401
  %67 = load i32, ptr %mb_addr30, align 4, !dbg !1401
  %idxprom31 = sext i32 %67 to i64, !dbg !1402
  %arrayidx32 = getelementptr inbounds %struct.macroblock, ptr %66, i64 %idxprom31, !dbg !1402
    #dbg_value(ptr %arrayidx32, !1325, !DIExpression(), !1375)
  %mb_field33 = getelementptr inbounds i8, ptr %MbQ, i64 384, !dbg !1403
  %68 = load i32, ptr %mb_field33, align 8, !dbg !1403
  %cmp34 = icmp eq i32 %68, 0, !dbg !1404
  br i1 %cmp34, label %land.lhs.true, label %if.else232, !dbg !1405

land.lhs.true:                                    ; preds = %if.else
  %mb_field36 = getelementptr inbounds i8, ptr %arrayidx32, i64 384, !dbg !1406
  %69 = load i32, ptr %mb_field36, align 8, !dbg !1406
  %cmp37 = icmp eq i32 %69, 0, !dbg !1407
  br i1 %cmp37, label %if.then39, label %if.else232, !dbg !1408

if.then39:                                        ; preds = %land.lhs.true
  %mixedModeEdgeFlag45 = getelementptr inbounds i8, ptr %MbQ, i64 472, !dbg !1409
  store i8 0, ptr %mixedModeEdgeFlag45, align 8, !dbg !1410
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96, !dbg !1411
  %70 = load i32, ptr %is_intra_block, align 8, !dbg !1411
  %cmp46 = icmp eq i32 %70, 1, !dbg !1412
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48, !dbg !1413

lor.lhs.false48:                                  ; preds = %if.then39
  %is_intra_block49 = getelementptr inbounds i8, ptr %arrayidx32, i64 96, !dbg !1414
  %71 = load i32, ptr %is_intra_block49, align 8, !dbg !1414
  %cmp50 = icmp eq i32 %71, 1, !dbg !1415
  br i1 %cmp50, label %if.then52, label %if.else58, !dbg !1416

if.then52:                                        ; preds = %lor.lhs.false48, %if.then39
  %cmp53 = icmp eq i32 %edge, 0, !dbg !1417
  %conv56 = select i1 %cmp53, i8 4, i8 3, !dbg !1419
    #dbg_value(i8 %conv56, !1322, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1375)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %conv56, i64 16, i1 false), !dbg !1420
  br label %if.end482, !dbg !1421

if.else58:                                        ; preds = %lor.lhs.false48
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24, !dbg !1422
  %72 = load i32, ptr %mbAddrX, align 8, !dbg !1422
  call void @get_mb_block_pos_mbaff(i32 noundef %72, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7, !dbg !1423
    #dbg_value(i16 0, !1321, !DIExpression(), !1375)
    #dbg_value(i16 poison, !1321, !DIExpression(), !1375)
  %shr66 = lshr i32 %edge, 2
  %y69 = getelementptr inbounds i8, ptr %pixP, i64 10
  %x72 = getelementptr inbounds i8, ptr %pixP, i64 8
  %73 = load i16, ptr %x72, align 4
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
  %74 = ashr i16 %73, 2
  %cbp_blk83 = getelementptr inbounds i8, ptr %arrayidx32, i64 288
  %tobool.not = icmp eq i32 %edge, 0
  %mb_type = getelementptr inbounds i8, ptr %MbQ, i64 152
  %75 = load i16, ptr %mb_y, align 2
  %conv103 = sext i16 %75 to i32
  %shl = shl nsw i32 %conv103, 2
  %76 = load i16, ptr %mb_x, align 2
  %conv107 = sext i16 %76 to i32
  %shl108 = shl nsw i32 %conv107, 2
  %and110 = and i32 %shr66, 3
  %add111 = or disjoint i32 %shl108, %and110
  %pos_y = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixP, i64 12
  %77 = load i16, ptr %pos_x, align 4
  %78 = ashr i16 %77, 2
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  %idxprom118 = sext i32 %add111 to i64
  %idxprom123 = sext i16 %78 to i64
  %.pre = load i16, ptr %y69, align 2, !dbg !1424
  br label %for.body63, !dbg !1425

for.body63:                                       ; preds = %if.else58, %if.end216
  %79 = phi i16 [ %.pre, %if.else58 ], [ %add220, %if.end216 ], !dbg !1424
  %conv60890 = phi i32 [ 0, %if.else58 ], [ %conv60, %if.end216 ]
  %idx.1889 = phi i32 [ 0, %if.else58 ], [ %add228, %if.end216 ]
  %and65 = and i32 %idx.1889, 65532, !dbg !1426
  %add67 = add nuw nsw i32 %and65, %shr66, !dbg !1427
    #dbg_value(!DIArgList(i32 %and65, i32 %shr66), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
    #dbg_value(!DIArgList(i16 %79, i16 %73), !1319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %80 = load i64, ptr %cbp_blk, align 8, !dbg !1428
  %sext642 = shl i32 %add67, 16, !dbg !1429
  %conv78 = ashr exact i32 %sext642, 16, !dbg !1429
    #dbg_value(i32 %conv78, !1430, !DIExpression(), !1435)
  %cmp.i = icmp sgt i32 %conv78, 63, !dbg !1437
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i, !dbg !1438

cond.false.i:                                     ; preds = %for.body63
  %idxprom.i = sext i32 %conv78 to i64, !dbg !1439
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i, !dbg !1439
  %81 = load i64, ptr %arrayidx.i, align 8, !dbg !1439
  br label %i64_power2.exit, !dbg !1438

i64_power2.exit:                                  ; preds = %for.body63, %cond.false.i
  %cond.i = phi i64 [ %81, %cond.false.i ], [ 0, %for.body63 ], !dbg !1438
  %and79 = and i64 %cond.i, %80, !dbg !1440
  %cmp80.not = icmp eq i64 %and79, 0, !dbg !1441
  br i1 %cmp80.not, label %lor.lhs.false82, label %if.end216, !dbg !1442

lor.lhs.false82:                                  ; preds = %i64_power2.exit
    #dbg_value(!DIArgList(i16 %79, i16 %74), !1319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %82 = and i16 %79, -4, !dbg !1443
    #dbg_value(!DIArgList(i16 %82, i16 %74), !1319, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %add75 = add i16 %74, %82, !dbg !1444
    #dbg_value(i16 %add75, !1319, !DIExpression(), !1375)
  %83 = load i64, ptr %cbp_blk83, align 8, !dbg !1445
    #dbg_value(i16 %add75, !1430, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1446)
  %cmp.i684 = icmp sgt i16 %add75, 63, !dbg !1448
  br i1 %cmp.i684, label %i64_power2.exit689, label %cond.false.i685, !dbg !1449

cond.false.i685:                                  ; preds = %lor.lhs.false82
  %idxprom.i686 = sext i16 %add75 to i64, !dbg !1450
    #dbg_value(i64 %idxprom.i686, !1430, !DIExpression(), !1446)
  %arrayidx.i687 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i686, !dbg !1450
  %84 = load i64, ptr %arrayidx.i687, align 8, !dbg !1450
  br label %i64_power2.exit689, !dbg !1449

i64_power2.exit689:                               ; preds = %lor.lhs.false82, %cond.false.i685
  %cond.i688 = phi i64 [ %84, %cond.false.i685 ], [ 0, %lor.lhs.false82 ], !dbg !1449
  %and87 = and i64 %cond.i688, %83, !dbg !1451
  %cmp88.not = icmp eq i64 %and87, 0, !dbg !1452
  br i1 %cmp88.not, label %if.else91, label %if.end216, !dbg !1453

if.else91:                                        ; preds = %i64_power2.exit689
  br i1 %tobool.not, label %if.else102, label %land.lhs.true92, !dbg !1454

land.lhs.true92:                                  ; preds = %if.else91
  %85 = load i16, ptr %mb_type, align 8, !dbg !1455
  %.off646 = add i16 %85, -1, !dbg !1456
  %switch647 = icmp ult i16 %.off646, 2, !dbg !1456
  br i1 %switch647, label %if.end216, label %if.else102, !dbg !1456

if.else102:                                       ; preds = %land.lhs.true92, %if.else91
  %shr105 = ashr i32 %sext642, 18, !dbg !1457
  %add106 = add nsw i32 %shl, %shr105, !dbg !1458
    #dbg_value(i32 %add106, !1328, !DIExpression(), !1459)
    #dbg_value(i32 %add111, !1341, !DIExpression(), !1459)
  %86 = load i16, ptr %pos_y, align 2, !dbg !1460
  %87 = ashr i16 %86, 2, !dbg !1461
    #dbg_value(i16 %87, !1342, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1459)
    #dbg_value(i16 %78, !1343, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1459)
  %88 = load ptr, ptr %mv_info, align 8, !dbg !1462
  %idxprom116 = sext i32 %add106 to i64, !dbg !1463
  %arrayidx117 = getelementptr inbounds ptr, ptr %88, i64 %idxprom116, !dbg !1463
  %89 = load ptr, ptr %arrayidx117, align 8, !dbg !1463
  %arrayidx119 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %idxprom118, !dbg !1463
    #dbg_value(ptr %arrayidx119, !1344, !DIExpression(), !1459)
  %idxprom121 = sext i16 %87 to i64, !dbg !1464
  %arrayidx122 = getelementptr inbounds ptr, ptr %88, i64 %idxprom121, !dbg !1464
  %90 = load ptr, ptr %arrayidx122, align 8, !dbg !1464
  %arrayidx124 = getelementptr inbounds %struct.pic_motion_params, ptr %90, i64 %idxprom123, !dbg !1464
    #dbg_value(ptr %arrayidx124, !1347, !DIExpression(), !1459)
  %91 = load ptr, ptr %arrayidx119, align 8, !dbg !1465
    #dbg_value(ptr %91, !1348, !DIExpression(), !1459)
  %92 = load ptr, ptr %arrayidx124, align 8, !dbg !1466
    #dbg_value(ptr %92, !1350, !DIExpression(), !1459)
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx119, i64 8, !dbg !1467
  %93 = load ptr, ptr %arrayidx129, align 8, !dbg !1467
    #dbg_value(ptr %93, !1351, !DIExpression(), !1459)
  %arrayidx131 = getelementptr inbounds i8, ptr %arrayidx124, i64 8, !dbg !1468
  %94 = load ptr, ptr %arrayidx131, align 8, !dbg !1468
    #dbg_value(ptr %94, !1352, !DIExpression(), !1459)
  %cmp132 = icmp eq ptr %91, %92, !dbg !1469
  %cmp135 = icmp eq ptr %93, %94
  %or.cond = select i1 %cmp132, i1 %cmp135, i1 false, !dbg !1471
  br i1 %or.cond, label %if.then143, label %lor.lhs.false137, !dbg !1471

lor.lhs.false137:                                 ; preds = %if.else102
  %cmp138 = icmp eq ptr %91, %94, !dbg !1472
  %cmp141 = icmp eq ptr %93, %92
  %or.cond643 = select i1 %cmp138, i1 %cmp141, i1 false, !dbg !1473
  br i1 %or.cond643, label %if.then143, label %if.end214, !dbg !1473

if.then143:                                       ; preds = %lor.lhs.false137, %if.else102
  %cmp144.not = icmp eq ptr %91, %93, !dbg !1474
  %mv182 = getelementptr inbounds i8, ptr %arrayidx119, i64 16, !dbg !1477
  br i1 %cmp144.not, label %if.else181, label %if.then146, !dbg !1478

if.then146:                                       ; preds = %if.then143
  %mv.val = load i16, ptr %mv182, align 2, !dbg !1479
  %95 = getelementptr i8, ptr %arrayidx119, i64 18, !dbg !1479
  %mv.val682 = load i16, ptr %95, align 2, !dbg !1479
    #dbg_value(ptr undef, !1482, !DIExpression(), !1491)
    #dbg_value(ptr undef, !1482, !DIExpression(), !1494)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1491)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1494)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1491)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1494)
  %conv.i = sext i16 %mv.val to i32, !dbg !1497
  %conv4.i = sext i16 %mv.val682 to i32, !dbg !1498
  br i1 %cmp132, label %if.then149, label %if.else163, !dbg !1499

if.then149:                                       ; preds = %if.then146
  %mv151 = getelementptr inbounds i8, ptr %arrayidx124, i64 16, !dbg !1500
  %mv151.val = load i16, ptr %mv151, align 2, !dbg !1501
  %96 = getelementptr i8, ptr %arrayidx124, i64 18, !dbg !1501
  %mv151.val683 = load i16, ptr %96, align 2, !dbg !1501
  %conv2.i = sext i16 %mv151.val to i32, !dbg !1502
  %sub.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1503
    #dbg_value(i32 %sub.i, !80, !DIExpression(), !1504)
    #dbg_value(i32 %sub.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1504)
  %sub.i.i = call i32 @llvm.abs.i32(i32 %sub.i, i1 true), !dbg !1506
  %cmp.i690 = icmp ult i32 %sub.i.i, 4, !dbg !1507
  %conv6.i = sext i16 %mv151.val683 to i32, !dbg !1508
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i, !dbg !1509
    #dbg_value(i32 %sub7.i, !80, !DIExpression(), !1510)
    #dbg_value(i32 %sub7.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1510)
  %sub.i14.i = call i32 @llvm.abs.i32(i32 %sub7.i, i1 true), !dbg !1512
  %cmp9.i = icmp slt i32 %sub.i14.i, %mvlimit, !dbg !1513
  %or13.i.not = and i1 %cmp.i690, %cmp9.i, !dbg !1501
  br i1 %or13.i.not, label %lor.rhs, label %if.end214, !dbg !1514

lor.rhs:                                          ; preds = %if.then149
  %arrayidx156 = getelementptr inbounds i8, ptr %arrayidx119, i64 20, !dbg !1515
  %arrayidx158 = getelementptr inbounds i8, ptr %arrayidx124, i64 20, !dbg !1516
  %arrayidx156.val = load i16, ptr %arrayidx156, align 2, !dbg !1517
  %97 = getelementptr i8, ptr %arrayidx119, i64 22, !dbg !1517
  %arrayidx156.val680 = load i16, ptr %97, align 2, !dbg !1517
  %arrayidx158.val = load i16, ptr %arrayidx158, align 2, !dbg !1517
  %98 = getelementptr i8, ptr %arrayidx124, i64 22, !dbg !1517
  %arrayidx158.val681 = load i16, ptr %98, align 2, !dbg !1517
    #dbg_value(ptr undef, !1482, !DIExpression(), !1518)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1518)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1518)
  %conv.i691 = sext i16 %arrayidx156.val to i32, !dbg !1520
  %conv2.i692 = sext i16 %arrayidx158.val to i32, !dbg !1521
  %sub.i693 = sub nsw i32 %conv.i691, %conv2.i692, !dbg !1522
    #dbg_value(i32 %sub.i693, !80, !DIExpression(), !1523)
    #dbg_value(i32 %sub.i693, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1523)
  %sub.i.i694 = call i32 @llvm.abs.i32(i32 %sub.i693, i1 true), !dbg !1525
  %cmp.i695 = icmp ugt i32 %sub.i.i694, 3, !dbg !1526
  %conv4.i696 = sext i16 %arrayidx156.val680 to i32, !dbg !1527
  %conv6.i697 = sext i16 %arrayidx158.val681 to i32, !dbg !1528
  %sub7.i698 = sub nsw i32 %conv4.i696, %conv6.i697, !dbg !1529
    #dbg_value(i32 %sub7.i698, !80, !DIExpression(), !1530)
    #dbg_value(i32 %sub7.i698, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1530)
  %sub.i14.i699 = call i32 @llvm.abs.i32(i32 %sub7.i698, i1 true), !dbg !1532
  %cmp9.i700 = icmp uge i32 %sub.i14.i699, %mvlimit, !dbg !1533
  %or13.i701 = or i1 %cmp.i695, %cmp9.i700, !dbg !1534
  br label %if.end214, !dbg !1514

if.else163:                                       ; preds = %if.then146
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx124, i64 20, !dbg !1535
  %arrayidx167.val = load i16, ptr %arrayidx167, align 2, !dbg !1536
  %99 = getelementptr i8, ptr %arrayidx124, i64 22, !dbg !1536
  %arrayidx167.val679 = load i16, ptr %99, align 2, !dbg !1536
  %conv2.i704 = sext i16 %arrayidx167.val to i32, !dbg !1537
  %sub.i705 = sub nsw i32 %conv.i, %conv2.i704, !dbg !1538
    #dbg_value(i32 %sub.i705, !80, !DIExpression(), !1539)
    #dbg_value(i32 %sub.i705, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1539)
  %sub.i.i706 = call i32 @llvm.abs.i32(i32 %sub.i705, i1 true), !dbg !1541
  %cmp.i707 = icmp ult i32 %sub.i.i706, 4, !dbg !1542
  %conv6.i709 = sext i16 %arrayidx167.val679 to i32, !dbg !1543
  %sub7.i710 = sub nsw i32 %conv4.i, %conv6.i709, !dbg !1544
    #dbg_value(i32 %sub7.i710, !80, !DIExpression(), !1545)
    #dbg_value(i32 %sub7.i710, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1545)
  %sub.i14.i711 = call i32 @llvm.abs.i32(i32 %sub7.i710, i1 true), !dbg !1547
  %cmp9.i712 = icmp slt i32 %sub.i14.i711, %mvlimit, !dbg !1548
  %or13.i713.not = and i1 %cmp.i707, %cmp9.i712, !dbg !1536
  br i1 %or13.i713.not, label %lor.rhs170, label %if.end214, !dbg !1549

lor.rhs170:                                       ; preds = %if.else163
  %mv166 = getelementptr inbounds i8, ptr %arrayidx124, i64 16, !dbg !1550
  %arrayidx172 = getelementptr inbounds i8, ptr %arrayidx119, i64 20, !dbg !1551
  %arrayidx172.val = load i16, ptr %arrayidx172, align 2, !dbg !1552
  %100 = getelementptr i8, ptr %arrayidx119, i64 22, !dbg !1552
  %arrayidx172.val676 = load i16, ptr %100, align 2, !dbg !1552
  %mv166.val = load i16, ptr %mv166, align 2, !dbg !1552
  %101 = getelementptr i8, ptr %arrayidx124, i64 18, !dbg !1552
  %mv166.val677 = load i16, ptr %101, align 2, !dbg !1552
    #dbg_value(ptr undef, !1482, !DIExpression(), !1553)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1553)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1553)
  %conv.i715 = sext i16 %arrayidx172.val to i32, !dbg !1555
  %conv2.i716 = sext i16 %mv166.val to i32, !dbg !1556
  %sub.i717 = sub nsw i32 %conv.i715, %conv2.i716, !dbg !1557
    #dbg_value(i32 %sub.i717, !80, !DIExpression(), !1558)
    #dbg_value(i32 %sub.i717, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1558)
  %sub.i.i718 = call i32 @llvm.abs.i32(i32 %sub.i717, i1 true), !dbg !1560
  %cmp.i719 = icmp ugt i32 %sub.i.i718, 3, !dbg !1561
  %conv4.i720 = sext i16 %arrayidx172.val676 to i32, !dbg !1562
  %conv6.i721 = sext i16 %mv166.val677 to i32, !dbg !1563
  %sub7.i722 = sub nsw i32 %conv4.i720, %conv6.i721, !dbg !1564
    #dbg_value(i32 %sub7.i722, !80, !DIExpression(), !1565)
    #dbg_value(i32 %sub7.i722, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1565)
  %sub.i14.i723 = call i32 @llvm.abs.i32(i32 %sub7.i722, i1 true), !dbg !1567
  %cmp9.i724 = icmp uge i32 %sub.i14.i723, %mvlimit, !dbg !1568
  %or13.i725 = or i1 %cmp.i719, %cmp9.i724, !dbg !1569
  br label %if.end214, !dbg !1549

if.else181:                                       ; preds = %if.then143
  %mv184 = getelementptr inbounds i8, ptr %arrayidx124, i64 16, !dbg !1570
  %mv182.val672 = load i16, ptr %mv182, align 2, !dbg !1572
  %102 = getelementptr i8, ptr %arrayidx119, i64 18, !dbg !1572
  %mv182.val673 = load i16, ptr %102, align 2, !dbg !1572
  %mv184.val674 = load i16, ptr %mv184, align 2, !dbg !1572
  %103 = getelementptr i8, ptr %arrayidx124, i64 18, !dbg !1572
  %mv184.val675 = load i16, ptr %103, align 2, !dbg !1572
    #dbg_value(ptr undef, !1482, !DIExpression(), !1573)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1573)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1573)
  %conv.i727 = sext i16 %mv182.val672 to i32, !dbg !1575
  %conv2.i728 = sext i16 %mv184.val674 to i32, !dbg !1576
  %sub.i729 = sub nsw i32 %conv.i727, %conv2.i728, !dbg !1577
    #dbg_value(i32 %sub.i729, !80, !DIExpression(), !1578)
    #dbg_value(i32 %sub.i729, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1578)
  %sub.i.i730 = call i32 @llvm.abs.i32(i32 %sub.i729, i1 true), !dbg !1580
  %cmp.i731 = icmp ult i32 %sub.i.i730, 4, !dbg !1581
  %conv4.i732 = sext i16 %mv182.val673 to i32, !dbg !1582
  %conv6.i733 = sext i16 %mv184.val675 to i32, !dbg !1583
  %sub7.i734 = sub nsw i32 %conv4.i732, %conv6.i733, !dbg !1584
    #dbg_value(i32 %sub7.i734, !80, !DIExpression(), !1585)
    #dbg_value(i32 %sub7.i734, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1585)
  %sub.i14.i735 = call i32 @llvm.abs.i32(i32 %sub7.i734, i1 true), !dbg !1587
  %cmp9.i736 = icmp slt i32 %sub.i14.i735, %mvlimit, !dbg !1588
  %or13.i737.not = and i1 %cmp.i731, %cmp9.i736, !dbg !1572
  br i1 %or13.i737.not, label %lor.lhs.false188, label %if.else181.land.rhs_crit_edge, !dbg !1589

if.else181.land.rhs_crit_edge:                    ; preds = %if.else181
  %arrayidx198.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx124, i64 20
  %arrayidx198.val.pre = load i16, ptr %arrayidx198.phi.trans.insert, align 2, !dbg !1590
  %.phi.trans.insert902 = getelementptr i8, ptr %arrayidx124, i64 22
  %arrayidx198.val669.pre = load i16, ptr %.phi.trans.insert902, align 2, !dbg !1590
  %.pre904 = sext i16 %arrayidx198.val.pre to i32, !dbg !1591
  %.pre905 = sext i16 %arrayidx198.val669.pre to i32, !dbg !1593
  br label %land.rhs, !dbg !1589

lor.lhs.false188:                                 ; preds = %if.else181
  %arrayidx190 = getelementptr inbounds i8, ptr %arrayidx119, i64 20, !dbg !1594
  %arrayidx192 = getelementptr inbounds i8, ptr %arrayidx124, i64 20, !dbg !1595
  %arrayidx190.val = load i16, ptr %arrayidx190, align 2, !dbg !1596
  %104 = getelementptr i8, ptr %arrayidx119, i64 22, !dbg !1596
  %arrayidx190.val670 = load i16, ptr %104, align 2, !dbg !1596
  %arrayidx192.val = load i16, ptr %arrayidx192, align 2, !dbg !1596
  %105 = getelementptr i8, ptr %arrayidx124, i64 22, !dbg !1596
  %arrayidx192.val671 = load i16, ptr %105, align 2, !dbg !1596
    #dbg_value(ptr undef, !1482, !DIExpression(), !1597)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1597)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1597)
  %conv.i739 = sext i16 %arrayidx190.val to i32, !dbg !1599
  %conv2.i740 = sext i16 %arrayidx192.val to i32, !dbg !1600
  %sub.i741 = sub nsw i32 %conv.i739, %conv2.i740, !dbg !1601
    #dbg_value(i32 %sub.i741, !80, !DIExpression(), !1602)
    #dbg_value(i32 %sub.i741, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1602)
  %sub.i.i742 = call i32 @llvm.abs.i32(i32 %sub.i741, i1 true), !dbg !1604
  %cmp.i743 = icmp ult i32 %sub.i.i742, 4, !dbg !1605
  %conv4.i744 = sext i16 %arrayidx190.val670 to i32, !dbg !1606
  %conv6.i745 = sext i16 %arrayidx192.val671 to i32, !dbg !1607
  %sub7.i746 = sub nsw i32 %conv4.i744, %conv6.i745, !dbg !1608
    #dbg_value(i32 %sub7.i746, !80, !DIExpression(), !1609)
    #dbg_value(i32 %sub7.i746, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1609)
  %sub.i14.i747 = call i32 @llvm.abs.i32(i32 %sub7.i746, i1 true), !dbg !1611
  %cmp9.i748 = icmp ult i32 %sub.i14.i747, %mvlimit, !dbg !1612
  %or13.i749.not = and i1 %cmp.i743, %cmp9.i748, !dbg !1596
  br i1 %or13.i749.not, label %if.end214, label %land.rhs, !dbg !1613

land.rhs:                                         ; preds = %if.else181.land.rhs_crit_edge, %lor.lhs.false188
  %conv6.i757.pre-phi = phi i32 [ %.pre905, %if.else181.land.rhs_crit_edge ], [ %conv6.i745, %lor.lhs.false188 ], !dbg !1593
  %conv2.i752.pre-phi = phi i32 [ %.pre904, %if.else181.land.rhs_crit_edge ], [ %conv2.i740, %lor.lhs.false188 ], !dbg !1591
    #dbg_value(ptr undef, !1482, !DIExpression(), !1614)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1614)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1614)
  %sub.i753 = sub nsw i32 %conv.i727, %conv2.i752.pre-phi, !dbg !1615
    #dbg_value(i32 %sub.i753, !80, !DIExpression(), !1616)
    #dbg_value(i32 %sub.i753, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1616)
  %sub.i.i754 = call i32 @llvm.abs.i32(i32 %sub.i753, i1 true), !dbg !1618
  %cmp.i755 = icmp ult i32 %sub.i.i754, 4, !dbg !1619
  %sub7.i758 = sub nsw i32 %conv4.i732, %conv6.i757.pre-phi, !dbg !1620
    #dbg_value(i32 %sub7.i758, !80, !DIExpression(), !1621)
    #dbg_value(i32 %sub7.i758, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1621)
  %sub.i14.i759 = call i32 @llvm.abs.i32(i32 %sub7.i758, i1 true), !dbg !1623
  %cmp9.i760 = icmp slt i32 %sub.i14.i759, %mvlimit, !dbg !1624
  %or13.i761.not = and i1 %cmp.i755, %cmp9.i760, !dbg !1590
  br i1 %or13.i761.not, label %lor.rhs201, label %if.end214, !dbg !1625

lor.rhs201:                                       ; preds = %land.rhs
  %arrayidx203 = getelementptr inbounds i8, ptr %arrayidx119, i64 20, !dbg !1626
  %arrayidx203.val = load i16, ptr %arrayidx203, align 2, !dbg !1627
  %106 = getelementptr i8, ptr %arrayidx119, i64 22, !dbg !1627
  %arrayidx203.val666 = load i16, ptr %106, align 2, !dbg !1627
    #dbg_value(ptr undef, !1482, !DIExpression(), !1628)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1628)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1628)
  %conv.i763 = sext i16 %arrayidx203.val to i32, !dbg !1630
  %sub.i765 = sub nsw i32 %conv.i763, %conv2.i728, !dbg !1631
    #dbg_value(i32 %sub.i765, !80, !DIExpression(), !1632)
    #dbg_value(i32 %sub.i765, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1632)
  %sub.i.i766 = call i32 @llvm.abs.i32(i32 %sub.i765, i1 true), !dbg !1634
  %cmp.i767 = icmp ugt i32 %sub.i.i766, 3, !dbg !1635
  %conv4.i768 = sext i16 %arrayidx203.val666 to i32, !dbg !1636
  %sub7.i770 = sub nsw i32 %conv4.i768, %conv6.i733, !dbg !1637
    #dbg_value(i32 %sub7.i770, !80, !DIExpression(), !1638)
    #dbg_value(i32 %sub7.i770, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1638)
  %sub.i14.i771 = call i32 @llvm.abs.i32(i32 %sub7.i770, i1 true), !dbg !1640
  %cmp9.i772 = icmp uge i32 %sub.i14.i771, %mvlimit, !dbg !1641
  %or13.i773 = or i1 %cmp.i767, %cmp9.i772, !dbg !1642
  br label %if.end214, !dbg !1625

if.end214:                                        ; preds = %lor.lhs.false137, %lor.lhs.false188, %lor.rhs201, %land.rhs, %if.else163, %lor.rhs170, %if.then149, %lor.rhs
  %StrValue.0.shrunk = phi i1 [ true, %if.then149 ], [ %or13.i701, %lor.rhs ], [ true, %if.else163 ], [ %or13.i725, %lor.rhs170 ], [ false, %lor.lhs.false188 ], [ true, %land.rhs ], [ %or13.i773, %lor.rhs201 ], [ true, %lor.lhs.false137 ]
  %StrValue.0 = zext i1 %StrValue.0.shrunk to i32, !dbg !1643
    #dbg_value(i32 %StrValue.0, !1322, !DIExpression(), !1375)
  br label %if.end216

if.end216:                                        ; preds = %land.lhs.true92, %i64_power2.exit, %i64_power2.exit689, %if.end214
  %StrValue.1 = phi i32 [ %StrValue.0, %if.end214 ], [ 2, %i64_power2.exit689 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true92 ], !dbg !1644
    #dbg_value(i32 %StrValue.1, !1322, !DIExpression(), !1375)
  %mul = mul nuw nsw i32 %StrValue.1, 16843009, !dbg !1645
  %idx.ext = sext i32 %conv60890 to i64, !dbg !1646
  %add.ptr = getelementptr inbounds i8, ptr %Strength, i64 %idx.ext, !dbg !1646
  store i32 %mul, ptr %add.ptr, align 4, !dbg !1647
  %add220 = add i16 %79, 4, !dbg !1648
  store i16 %add220, ptr %y69, align 2, !dbg !1648, !DIAssignID !1649
    #dbg_assign(i16 %add220, !1326, !DIExpression(DW_OP_LLVM_fragment, 80, 16), !1649, ptr %y69, !DIExpression(), !1375)
  %107 = load i16, ptr %pos_y, align 2, !dbg !1650
  %add224 = add i16 %107, 4, !dbg !1650
  store i16 %add224, ptr %pos_y, align 2, !dbg !1650, !DIAssignID !1651
    #dbg_assign(i16 %add224, !1326, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !1651, ptr %pos_y, !DIExpression(), !1375)
  %add228 = add nsw i32 %conv60890, 4, !dbg !1652
    #dbg_value(i16 poison, !1321, !DIExpression(), !1375)
  %sext641 = shl i32 %add228, 16, !dbg !1653
  %conv60 = ashr exact i32 %sext641, 16, !dbg !1653
  %cmp61 = icmp slt i32 %conv60, 16, !dbg !1654
  br i1 %cmp61, label %for.body63, label %if.end482, !dbg !1425, !llvm.loop !1655

if.else232:                                       ; preds = %land.lhs.true, %if.else
    #dbg_value(i16 0, !1321, !DIExpression(), !1375)
  %shr245 = lshr i32 %edge, 2
  %y248 = getelementptr inbounds i8, ptr %pixP, i64 10
  %x251 = getelementptr inbounds i8, ptr %pixP, i64 8
  %mixedModeEdgeFlag265 = getelementptr inbounds i8, ptr %MbQ, i64 472
  %cmp266 = icmp eq i32 %edge, 0
  %is_intra_block299 = getelementptr inbounds i8, ptr %MbQ, i64 96
  %cbp_blk307 = getelementptr inbounds i8, ptr %MbQ, i64 288
  %mbAddrX332 = getelementptr inbounds i8, ptr %MbQ, i64 24
  %and343 = and i32 %shr245, 3
  %pos_y346 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x350 = getelementptr inbounds i8, ptr %pixP, i64 12
  %mv_info354 = getelementptr inbounds i8, ptr %p, i64 152
  %108 = select i1 %cmp266, i8 4, i8 3
  br label %for.body237, !dbg !1657

for.body237:                                      ; preds = %if.else232, %for.inc478
  %indvars.iv = phi i64 [ 0, %if.else232 ], [ %indvars.iv.next, %for.inc478 ]
    #dbg_value(i64 %indvars.iv, !1321, !DIExpression(), !1375)
  %109 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !1658
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef %109, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1659
  %and244 = and i32 %109, 12, !dbg !1660
  %add246 = add nuw nsw i32 %and244, %shr245, !dbg !1661
    #dbg_value(!DIArgList(i32 %and244, i32 %shr245), !1320, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1375)
  %110 = load i16, ptr %y248, align 2, !dbg !1662
  %111 = and i16 %110, -4, !dbg !1663
  %112 = load i16, ptr %x251, align 4, !dbg !1664
  %113 = ashr i16 %112, 2, !dbg !1665
  %add254 = add i16 %113, %111, !dbg !1666
    #dbg_value(i16 %add254, !1319, !DIExpression(), !1375)
  %114 = load ptr, ptr %mb_data29, align 8, !dbg !1667
  %115 = load i32, ptr %mb_addr30, align 4, !dbg !1668
  %idxprom258 = sext i32 %115 to i64, !dbg !1669
  %arrayidx259 = getelementptr inbounds %struct.macroblock, ptr %114, i64 %idxprom258, !dbg !1669
    #dbg_value(ptr %arrayidx259, !1325, !DIExpression(), !1375)
  %116 = load i32, ptr %mb_field33, align 8, !dbg !1670
  %mb_field261 = getelementptr inbounds i8, ptr %arrayidx259, i64 384, !dbg !1671
  %117 = load i32, ptr %mb_field261, align 8, !dbg !1671
  %cmp262 = icmp ne i32 %116, %117, !dbg !1672
  %conv264 = zext i1 %cmp262 to i8, !dbg !1673
  store i8 %conv264, ptr %mixedModeEdgeFlag265, align 8, !dbg !1674
  %arrayidx298 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv, !dbg !1675
  store i8 %108, ptr %arrayidx298, align 1, !dbg !1676
  %118 = load i32, ptr %is_intra_block299, align 8, !dbg !1677
  %cmp300 = icmp eq i32 %118, 0, !dbg !1678
  br i1 %cmp300, label %land.lhs.true302, label %for.inc478, !dbg !1679

land.lhs.true302:                                 ; preds = %for.body237
  %is_intra_block303 = getelementptr inbounds i8, ptr %arrayidx259, i64 96, !dbg !1680
  %119 = load i32, ptr %is_intra_block303, align 8, !dbg !1680
  %cmp304 = icmp eq i32 %119, 0, !dbg !1681
  br i1 %cmp304, label %if.then306, label %for.inc478, !dbg !1682

if.then306:                                       ; preds = %land.lhs.true302
  %120 = load i64, ptr %cbp_blk307, align 8, !dbg !1683
  %sext = shl i32 %add246, 16, !dbg !1684
  %conv309 = ashr exact i32 %sext, 16, !dbg !1684
    #dbg_value(i32 %conv309, !1430, !DIExpression(), !1685)
  %cmp.i775 = icmp sgt i32 %conv309, 63, !dbg !1687
  br i1 %cmp.i775, label %i64_power2.exit780, label %cond.false.i776, !dbg !1688

cond.false.i776:                                  ; preds = %if.then306
  %idxprom.i777 = sext i32 %conv309 to i64, !dbg !1689
  %arrayidx.i778 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i777, !dbg !1689
  %121 = load i64, ptr %arrayidx.i778, align 8, !dbg !1689
  br label %i64_power2.exit780, !dbg !1688

i64_power2.exit780:                               ; preds = %if.then306, %cond.false.i776
  %cond.i779 = phi i64 [ %121, %cond.false.i776 ], [ 0, %if.then306 ], !dbg !1688
  %and311 = and i64 %cond.i779, %120, !dbg !1690
  %cmp312.not = icmp eq i64 %and311, 0, !dbg !1691
  br i1 %cmp312.not, label %lor.lhs.false314, label %for.inc478.sink.split, !dbg !1692

lor.lhs.false314:                                 ; preds = %i64_power2.exit780
  %cbp_blk315 = getelementptr inbounds i8, ptr %arrayidx259, i64 288, !dbg !1693
  %122 = load i64, ptr %cbp_blk315, align 8, !dbg !1694
    #dbg_value(i16 %add254, !1430, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1695)
  %cmp.i781 = icmp sgt i16 %add254, 63, !dbg !1697
  br i1 %cmp.i781, label %i64_power2.exit786, label %cond.false.i782, !dbg !1698

cond.false.i782:                                  ; preds = %lor.lhs.false314
  %idxprom.i783 = sext i16 %add254 to i64, !dbg !1699
    #dbg_value(i64 %idxprom.i783, !1430, !DIExpression(), !1695)
  %arrayidx.i784 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i783, !dbg !1699
  %123 = load i64, ptr %arrayidx.i784, align 8, !dbg !1699
  br label %i64_power2.exit786, !dbg !1698

i64_power2.exit786:                               ; preds = %lor.lhs.false314, %cond.false.i782
  %cond.i785 = phi i64 [ %123, %cond.false.i782 ], [ 0, %lor.lhs.false314 ], !dbg !1698
  %and319 = and i64 %cond.i785, %122, !dbg !1700
  %cmp320.not = icmp eq i64 %and319, 0, !dbg !1701
  br i1 %cmp320.not, label %if.else325, label %for.inc478.sink.split, !dbg !1702

if.else325:                                       ; preds = %i64_power2.exit786
  %124 = load i8, ptr %mixedModeEdgeFlag265, align 8, !dbg !1703
  %tobool327.not = icmp eq i8 %124, 0, !dbg !1704
  br i1 %tobool327.not, label %if.else331, label %for.inc478.sink.split, !dbg !1705

if.else331:                                       ; preds = %if.else325
  %125 = load i32, ptr %mbAddrX332, align 8, !dbg !1706
  call void @get_mb_block_pos_mbaff(i32 noundef %125, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7, !dbg !1707
  %126 = load i16, ptr %mb_y, align 2, !dbg !1708
  %conv334 = sext i16 %126 to i32, !dbg !1708
  %shl335 = shl nsw i32 %conv334, 2, !dbg !1709
  %shr337 = ashr i32 %sext, 18, !dbg !1710
  %add338 = add nsw i32 %shl335, %shr337, !dbg !1711
    #dbg_value(i32 %add338, !1353, !DIExpression(), !1712)
  %127 = load i16, ptr %mb_x, align 2, !dbg !1713
  %conv340 = sext i16 %127 to i32, !dbg !1713
  %shl341 = shl nsw i32 %conv340, 2, !dbg !1714
  %add344 = or disjoint i32 %shl341, %and343, !dbg !1715
    #dbg_value(i32 %add344, !1365, !DIExpression(), !1712)
  %128 = load i16, ptr %pos_y346, align 2, !dbg !1716
  %129 = ashr i16 %128, 2, !dbg !1717
    #dbg_value(i16 %129, !1366, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1712)
  %130 = load i16, ptr %pos_x350, align 4, !dbg !1718
  %131 = ashr i16 %130, 2, !dbg !1719
    #dbg_value(i16 %131, !1367, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1712)
  %132 = load ptr, ptr %mv_info354, align 8, !dbg !1720
  %idxprom355 = sext i32 %add338 to i64, !dbg !1721
  %arrayidx356 = getelementptr inbounds ptr, ptr %132, i64 %idxprom355, !dbg !1721
  %133 = load ptr, ptr %arrayidx356, align 8, !dbg !1721
  %idxprom357 = sext i32 %add344 to i64, !dbg !1721
  %arrayidx358 = getelementptr inbounds %struct.pic_motion_params, ptr %133, i64 %idxprom357, !dbg !1721
    #dbg_value(ptr %arrayidx358, !1368, !DIExpression(), !1712)
  %idxprom361 = sext i16 %129 to i64, !dbg !1722
  %arrayidx362 = getelementptr inbounds ptr, ptr %132, i64 %idxprom361, !dbg !1722
  %134 = load ptr, ptr %arrayidx362, align 8, !dbg !1722
  %idxprom363 = sext i16 %131 to i64, !dbg !1722
  %arrayidx364 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %idxprom363, !dbg !1722
    #dbg_value(ptr %arrayidx364, !1369, !DIExpression(), !1712)
  %135 = load ptr, ptr %arrayidx358, align 8, !dbg !1723
    #dbg_value(ptr %135, !1370, !DIExpression(), !1712)
  %136 = load ptr, ptr %arrayidx364, align 8, !dbg !1724
    #dbg_value(ptr %136, !1371, !DIExpression(), !1712)
  %arrayidx373 = getelementptr inbounds i8, ptr %arrayidx358, i64 8, !dbg !1725
  %137 = load ptr, ptr %arrayidx373, align 8, !dbg !1725
    #dbg_value(ptr %137, !1372, !DIExpression(), !1712)
  %arrayidx376 = getelementptr inbounds i8, ptr %arrayidx364, i64 8, !dbg !1726
  %138 = load ptr, ptr %arrayidx376, align 8, !dbg !1726
    #dbg_value(ptr %138, !1373, !DIExpression(), !1712)
  %cmp377 = icmp eq ptr %135, %136, !dbg !1727
  %cmp380 = icmp eq ptr %137, %138
  %or.cond644 = select i1 %cmp377, i1 %cmp380, i1 false, !dbg !1729
  br i1 %or.cond644, label %if.then388, label %lor.lhs.false382, !dbg !1729

lor.lhs.false382:                                 ; preds = %if.else331
  %cmp383 = icmp eq ptr %135, %138, !dbg !1730
  %cmp386 = icmp eq ptr %137, %136
  %or.cond645 = select i1 %cmp383, i1 %cmp386, i1 false, !dbg !1731
  br i1 %or.cond645, label %if.then388, label %for.inc478.sink.split, !dbg !1731

if.then388:                                       ; preds = %lor.lhs.false382, %if.else331
  store i8 0, ptr %arrayidx298, align 1, !dbg !1732
  %cmp391.not = icmp eq ptr %135, %137, !dbg !1734
  %mv436 = getelementptr inbounds i8, ptr %arrayidx358, i64 16, !dbg !1736
  br i1 %cmp391.not, label %if.else435, label %if.then393, !dbg !1737

if.then393:                                       ; preds = %if.then388
  %mv397.val = load i16, ptr %mv436, align 2, !dbg !1738
  %139 = getelementptr i8, ptr %arrayidx358, i64 18, !dbg !1738
  %mv397.val664 = load i16, ptr %139, align 2, !dbg !1738
    #dbg_value(ptr undef, !1482, !DIExpression(), !1741)
    #dbg_value(ptr undef, !1482, !DIExpression(), !1744)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1741)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1744)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1741)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1744)
  %conv.i787 = sext i16 %mv397.val to i32, !dbg !1747
  %conv4.i792 = sext i16 %mv397.val664 to i32, !dbg !1748
  br i1 %cmp377, label %if.then396, label %if.else415, !dbg !1749

if.then396:                                       ; preds = %if.then393
  %mv399 = getelementptr inbounds i8, ptr %arrayidx364, i64 16, !dbg !1750
  %mv399.val = load i16, ptr %mv399, align 2, !dbg !1751
  %140 = getelementptr i8, ptr %arrayidx364, i64 18, !dbg !1751
  %mv399.val665 = load i16, ptr %140, align 2, !dbg !1751
  %conv2.i788 = sext i16 %mv399.val to i32, !dbg !1752
  %sub.i789 = sub nsw i32 %conv.i787, %conv2.i788, !dbg !1753
    #dbg_value(i32 %sub.i789, !80, !DIExpression(), !1754)
    #dbg_value(i32 %sub.i789, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1754)
  %sub.i.i790 = call i32 @llvm.abs.i32(i32 %sub.i789, i1 true), !dbg !1756
  %cmp.i791 = icmp ult i32 %sub.i.i790, 4, !dbg !1757
  %conv6.i793 = sext i16 %mv399.val665 to i32, !dbg !1758
  %sub7.i794 = sub nsw i32 %conv4.i792, %conv6.i793, !dbg !1759
    #dbg_value(i32 %sub7.i794, !80, !DIExpression(), !1760)
    #dbg_value(i32 %sub7.i794, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1760)
  %sub.i14.i795 = call i32 @llvm.abs.i32(i32 %sub7.i794, i1 true), !dbg !1762
  %cmp9.i796 = icmp slt i32 %sub.i14.i795, %mvlimit, !dbg !1763
  %or13.i797.not = and i1 %cmp.i791, %cmp9.i796, !dbg !1751
  br i1 %or13.i797.not, label %lor.rhs403, label %lor.end410, !dbg !1764

lor.rhs403:                                       ; preds = %if.then396
  %arrayidx405 = getelementptr inbounds i8, ptr %arrayidx358, i64 20, !dbg !1765
  %arrayidx407 = getelementptr inbounds i8, ptr %arrayidx364, i64 20, !dbg !1766
  %arrayidx405.val = load i16, ptr %arrayidx405, align 2, !dbg !1767
  %141 = getelementptr i8, ptr %arrayidx358, i64 22, !dbg !1767
  %arrayidx405.val662 = load i16, ptr %141, align 2, !dbg !1767
  %arrayidx407.val = load i16, ptr %arrayidx407, align 2, !dbg !1767
  %142 = getelementptr i8, ptr %arrayidx364, i64 22, !dbg !1767
  %arrayidx407.val663 = load i16, ptr %142, align 2, !dbg !1767
    #dbg_value(ptr undef, !1482, !DIExpression(), !1768)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1768)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1768)
  %conv.i799 = sext i16 %arrayidx405.val to i32, !dbg !1770
  %conv2.i800 = sext i16 %arrayidx407.val to i32, !dbg !1771
  %sub.i801 = sub nsw i32 %conv.i799, %conv2.i800, !dbg !1772
    #dbg_value(i32 %sub.i801, !80, !DIExpression(), !1773)
    #dbg_value(i32 %sub.i801, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1773)
  %sub.i.i802 = call i32 @llvm.abs.i32(i32 %sub.i801, i1 true), !dbg !1775
  %cmp.i803 = icmp ugt i32 %sub.i.i802, 3, !dbg !1776
  %conv4.i804 = sext i16 %arrayidx405.val662 to i32, !dbg !1777
  %conv6.i805 = sext i16 %arrayidx407.val663 to i32, !dbg !1778
  %sub7.i806 = sub nsw i32 %conv4.i804, %conv6.i805, !dbg !1779
    #dbg_value(i32 %sub7.i806, !80, !DIExpression(), !1780)
    #dbg_value(i32 %sub7.i806, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1780)
  %sub.i14.i807 = call i32 @llvm.abs.i32(i32 %sub7.i806, i1 true), !dbg !1782
  %cmp9.i808 = icmp uge i32 %sub.i14.i807, %mvlimit, !dbg !1783
  %or13.i809 = or i1 %cmp.i803, %cmp9.i808, !dbg !1784
  br label %lor.end410, !dbg !1764

lor.end410:                                       ; preds = %lor.rhs403, %if.then396
  %143 = phi i1 [ true, %if.then396 ], [ %or13.i809, %lor.rhs403 ]
  %conv412 = zext i1 %143 to i8, !dbg !1785
  br label %for.inc478.sink.split, !dbg !1786

if.else415:                                       ; preds = %if.then393
  %arrayidx419 = getelementptr inbounds i8, ptr %arrayidx364, i64 20, !dbg !1787
  %arrayidx419.val = load i16, ptr %arrayidx419, align 2, !dbg !1788
  %144 = getelementptr i8, ptr %arrayidx364, i64 22, !dbg !1788
  %arrayidx419.val661 = load i16, ptr %144, align 2, !dbg !1788
  %conv2.i812 = sext i16 %arrayidx419.val to i32, !dbg !1789
  %sub.i813 = sub nsw i32 %conv.i787, %conv2.i812, !dbg !1790
    #dbg_value(i32 %sub.i813, !80, !DIExpression(), !1791)
    #dbg_value(i32 %sub.i813, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1791)
  %sub.i.i814 = call i32 @llvm.abs.i32(i32 %sub.i813, i1 true), !dbg !1793
  %cmp.i815 = icmp ult i32 %sub.i.i814, 4, !dbg !1794
  %conv6.i817 = sext i16 %arrayidx419.val661 to i32, !dbg !1795
  %sub7.i818 = sub nsw i32 %conv4.i792, %conv6.i817, !dbg !1796
    #dbg_value(i32 %sub7.i818, !80, !DIExpression(), !1797)
    #dbg_value(i32 %sub7.i818, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1797)
  %sub.i14.i819 = call i32 @llvm.abs.i32(i32 %sub7.i818, i1 true), !dbg !1799
  %cmp9.i820 = icmp slt i32 %sub.i14.i819, %mvlimit, !dbg !1800
  %or13.i821.not = and i1 %cmp.i815, %cmp9.i820, !dbg !1788
  br i1 %or13.i821.not, label %lor.rhs422, label %lor.end429, !dbg !1801

lor.rhs422:                                       ; preds = %if.else415
  %mv418 = getelementptr inbounds i8, ptr %arrayidx364, i64 16, !dbg !1802
  %arrayidx424 = getelementptr inbounds i8, ptr %arrayidx358, i64 20, !dbg !1803
  %arrayidx424.val = load i16, ptr %arrayidx424, align 2, !dbg !1804
  %145 = getelementptr i8, ptr %arrayidx358, i64 22, !dbg !1804
  %arrayidx424.val658 = load i16, ptr %145, align 2, !dbg !1804
  %mv418.val = load i16, ptr %mv418, align 2, !dbg !1804
  %146 = getelementptr i8, ptr %arrayidx364, i64 18, !dbg !1804
  %mv418.val659 = load i16, ptr %146, align 2, !dbg !1804
    #dbg_value(ptr undef, !1482, !DIExpression(), !1805)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1805)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1805)
  %conv.i823 = sext i16 %arrayidx424.val to i32, !dbg !1807
  %conv2.i824 = sext i16 %mv418.val to i32, !dbg !1808
  %sub.i825 = sub nsw i32 %conv.i823, %conv2.i824, !dbg !1809
    #dbg_value(i32 %sub.i825, !80, !DIExpression(), !1810)
    #dbg_value(i32 %sub.i825, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1810)
  %sub.i.i826 = call i32 @llvm.abs.i32(i32 %sub.i825, i1 true), !dbg !1812
  %cmp.i827 = icmp ugt i32 %sub.i.i826, 3, !dbg !1813
  %conv4.i828 = sext i16 %arrayidx424.val658 to i32, !dbg !1814
  %conv6.i829 = sext i16 %mv418.val659 to i32, !dbg !1815
  %sub7.i830 = sub nsw i32 %conv4.i828, %conv6.i829, !dbg !1816
    #dbg_value(i32 %sub7.i830, !80, !DIExpression(), !1817)
    #dbg_value(i32 %sub7.i830, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1817)
  %sub.i14.i831 = call i32 @llvm.abs.i32(i32 %sub7.i830, i1 true), !dbg !1819
  %cmp9.i832 = icmp uge i32 %sub.i14.i831, %mvlimit, !dbg !1820
  %or13.i833 = or i1 %cmp.i827, %cmp9.i832, !dbg !1821
  br label %lor.end429, !dbg !1801

lor.end429:                                       ; preds = %lor.rhs422, %if.else415
  %147 = phi i1 [ true, %if.else415 ], [ %or13.i833, %lor.rhs422 ]
  %conv431 = zext i1 %147 to i8, !dbg !1822
  br label %for.inc478.sink.split

if.else435:                                       ; preds = %if.then388
  %mv438 = getelementptr inbounds i8, ptr %arrayidx364, i64 16, !dbg !1823
  %mv436.val654 = load i16, ptr %mv436, align 2, !dbg !1825
  %148 = getelementptr i8, ptr %arrayidx358, i64 18, !dbg !1825
  %mv436.val655 = load i16, ptr %148, align 2, !dbg !1825
  %mv438.val656 = load i16, ptr %mv438, align 2, !dbg !1825
  %149 = getelementptr i8, ptr %arrayidx364, i64 18, !dbg !1825
  %mv438.val657 = load i16, ptr %149, align 2, !dbg !1825
    #dbg_value(ptr undef, !1482, !DIExpression(), !1826)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1826)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1826)
  %conv.i835 = sext i16 %mv436.val654 to i32, !dbg !1828
  %conv2.i836 = sext i16 %mv438.val656 to i32, !dbg !1829
  %sub.i837 = sub nsw i32 %conv.i835, %conv2.i836, !dbg !1830
    #dbg_value(i32 %sub.i837, !80, !DIExpression(), !1831)
    #dbg_value(i32 %sub.i837, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1831)
  %sub.i.i838 = call i32 @llvm.abs.i32(i32 %sub.i837, i1 true), !dbg !1833
  %cmp.i839 = icmp ult i32 %sub.i.i838, 4, !dbg !1834
  %conv4.i840 = sext i16 %mv436.val655 to i32, !dbg !1835
  %conv6.i841 = sext i16 %mv438.val657 to i32, !dbg !1836
  %sub7.i842 = sub nsw i32 %conv4.i840, %conv6.i841, !dbg !1837
    #dbg_value(i32 %sub7.i842, !80, !DIExpression(), !1838)
    #dbg_value(i32 %sub7.i842, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1838)
  %sub.i14.i843 = call i32 @llvm.abs.i32(i32 %sub7.i842, i1 true), !dbg !1840
  %cmp9.i844 = icmp slt i32 %sub.i14.i843, %mvlimit, !dbg !1841
  %or13.i845.not = and i1 %cmp.i839, %cmp9.i844, !dbg !1825
  br i1 %or13.i845.not, label %lor.lhs.false442, label %if.else435.land.rhs449_crit_edge, !dbg !1842

if.else435.land.rhs449_crit_edge:                 ; preds = %if.else435
  %arrayidx453.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx364, i64 20
  %arrayidx453.val.pre = load i16, ptr %arrayidx453.phi.trans.insert, align 2, !dbg !1843
  %.phi.trans.insert = getelementptr i8, ptr %arrayidx364, i64 22
  %arrayidx453.val651.pre = load i16, ptr %.phi.trans.insert, align 2, !dbg !1843
  %.pre906 = sext i16 %arrayidx453.val.pre to i32, !dbg !1844
  %.pre907 = sext i16 %arrayidx453.val651.pre to i32, !dbg !1846
  br label %land.rhs449, !dbg !1842

lor.lhs.false442:                                 ; preds = %if.else435
  %arrayidx444 = getelementptr inbounds i8, ptr %arrayidx358, i64 20, !dbg !1847
  %arrayidx446 = getelementptr inbounds i8, ptr %arrayidx364, i64 20, !dbg !1848
  %arrayidx444.val = load i16, ptr %arrayidx444, align 2, !dbg !1849
  %150 = getelementptr i8, ptr %arrayidx358, i64 22, !dbg !1849
  %arrayidx444.val652 = load i16, ptr %150, align 2, !dbg !1849
  %arrayidx446.val = load i16, ptr %arrayidx446, align 2, !dbg !1849
  %151 = getelementptr i8, ptr %arrayidx364, i64 22, !dbg !1849
  %arrayidx446.val653 = load i16, ptr %151, align 2, !dbg !1849
    #dbg_value(ptr undef, !1482, !DIExpression(), !1850)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1850)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1850)
  %conv.i847 = sext i16 %arrayidx444.val to i32, !dbg !1852
  %conv2.i848 = sext i16 %arrayidx446.val to i32, !dbg !1853
  %sub.i849 = sub nsw i32 %conv.i847, %conv2.i848, !dbg !1854
    #dbg_value(i32 %sub.i849, !80, !DIExpression(), !1855)
    #dbg_value(i32 %sub.i849, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1855)
  %sub.i.i850 = call i32 @llvm.abs.i32(i32 %sub.i849, i1 true), !dbg !1857
  %cmp.i851 = icmp ult i32 %sub.i.i850, 4, !dbg !1858
  %conv4.i852 = sext i16 %arrayidx444.val652 to i32, !dbg !1859
  %conv6.i853 = sext i16 %arrayidx446.val653 to i32, !dbg !1860
  %sub7.i854 = sub nsw i32 %conv4.i852, %conv6.i853, !dbg !1861
    #dbg_value(i32 %sub7.i854, !80, !DIExpression(), !1862)
    #dbg_value(i32 %sub7.i854, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1862)
  %sub.i14.i855 = call i32 @llvm.abs.i32(i32 %sub7.i854, i1 true), !dbg !1864
  %cmp9.i856 = icmp ult i32 %sub.i14.i855, %mvlimit, !dbg !1865
  %or13.i857.not = and i1 %cmp.i851, %cmp9.i856, !dbg !1849
  br i1 %or13.i857.not, label %land.end465, label %land.rhs449, !dbg !1866

land.rhs449:                                      ; preds = %if.else435.land.rhs449_crit_edge, %lor.lhs.false442
  %conv6.i865.pre-phi = phi i32 [ %.pre907, %if.else435.land.rhs449_crit_edge ], [ %conv6.i853, %lor.lhs.false442 ], !dbg !1846
  %conv2.i860.pre-phi = phi i32 [ %.pre906, %if.else435.land.rhs449_crit_edge ], [ %conv2.i848, %lor.lhs.false442 ], !dbg !1844
    #dbg_value(ptr undef, !1482, !DIExpression(), !1867)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1867)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1867)
  %sub.i861 = sub nsw i32 %conv.i835, %conv2.i860.pre-phi, !dbg !1868
    #dbg_value(i32 %sub.i861, !80, !DIExpression(), !1869)
    #dbg_value(i32 %sub.i861, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1869)
  %sub.i.i862 = call i32 @llvm.abs.i32(i32 %sub.i861, i1 true), !dbg !1871
  %cmp.i863 = icmp ult i32 %sub.i.i862, 4, !dbg !1872
  %sub7.i866 = sub nsw i32 %conv4.i840, %conv6.i865.pre-phi, !dbg !1873
    #dbg_value(i32 %sub7.i866, !80, !DIExpression(), !1874)
    #dbg_value(i32 %sub7.i866, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1874)
  %sub.i14.i867 = call i32 @llvm.abs.i32(i32 %sub7.i866, i1 true), !dbg !1876
  %cmp9.i868 = icmp slt i32 %sub.i14.i867, %mvlimit, !dbg !1877
  %or13.i869.not = and i1 %cmp.i863, %cmp9.i868, !dbg !1843
  br i1 %or13.i869.not, label %lor.rhs456, label %land.end465, !dbg !1878

lor.rhs456:                                       ; preds = %land.rhs449
  %arrayidx458 = getelementptr inbounds i8, ptr %arrayidx358, i64 20, !dbg !1879
  %arrayidx458.val = load i16, ptr %arrayidx458, align 2, !dbg !1880
  %152 = getelementptr i8, ptr %arrayidx358, i64 22, !dbg !1880
  %arrayidx458.val648 = load i16, ptr %152, align 2, !dbg !1880
    #dbg_value(ptr undef, !1482, !DIExpression(), !1881)
    #dbg_value(ptr undef, !1489, !DIExpression(), !1881)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !1881)
  %conv.i871 = sext i16 %arrayidx458.val to i32, !dbg !1883
  %sub.i873 = sub nsw i32 %conv.i871, %conv2.i836, !dbg !1884
    #dbg_value(i32 %sub.i873, !80, !DIExpression(), !1885)
    #dbg_value(i32 %sub.i873, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1885)
  %sub.i.i874 = call i32 @llvm.abs.i32(i32 %sub.i873, i1 true), !dbg !1887
  %cmp.i875 = icmp ugt i32 %sub.i.i874, 3, !dbg !1888
  %conv4.i876 = sext i16 %arrayidx458.val648 to i32, !dbg !1889
  %sub7.i878 = sub nsw i32 %conv4.i876, %conv6.i841, !dbg !1890
    #dbg_value(i32 %sub7.i878, !80, !DIExpression(), !1891)
    #dbg_value(i32 %sub7.i878, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1891)
  %sub.i14.i879 = call i32 @llvm.abs.i32(i32 %sub7.i878, i1 true), !dbg !1893
  %cmp9.i880 = icmp uge i32 %sub.i14.i879, %mvlimit, !dbg !1894
  %or13.i881 = or i1 %cmp.i875, %cmp9.i880, !dbg !1895
  br label %land.end465, !dbg !1878

land.end465:                                      ; preds = %land.rhs449, %lor.rhs456, %lor.lhs.false442
  %153 = phi i1 [ false, %lor.lhs.false442 ], [ true, %land.rhs449 ], [ %or13.i881, %lor.rhs456 ], !dbg !1896
  %conv467 = zext i1 %153 to i8, !dbg !1897
  br label %for.inc478.sink.split

for.inc478.sink.split:                            ; preds = %lor.lhs.false382, %if.else325, %i64_power2.exit780, %i64_power2.exit786, %land.end465, %lor.end429, %lor.end410
  %.sink = phi i8 [ %conv412, %lor.end410 ], [ %conv431, %lor.end429 ], [ %conv467, %land.end465 ], [ 2, %i64_power2.exit786 ], [ 2, %i64_power2.exit780 ], [ 1, %if.else325 ], [ 1, %lor.lhs.false382 ]
  store i8 %.sink, ptr %arrayidx298, align 1, !dbg !1898
  br label %for.inc478, !dbg !1899

for.inc478:                                       ; preds = %for.inc478.sink.split, %for.body237, %land.lhs.true302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1899
    #dbg_value(i64 %indvars.iv.next, !1321, !DIExpression(), !1375)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1900
  br i1 %exitcond.not, label %if.end482, label %for.body237, !dbg !1657, !llvm.loop !1901

if.end482:                                        ; preds = %for.inc478, %if.end216, %for.cond.preheader, %if.then52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !1398
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_y) #7, !dbg !1398
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_x) #7, !dbg !1398
  ret void, !dbg !1398
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthHorMBAff(ptr nocapture noundef writeonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 !dbg !1903 {
entry:
  %mb_x = alloca i16, align 2, !DIAssignID !1943
    #dbg_assign(i1 undef, !1920, !DIExpression(), !1943, ptr %mb_x, !DIExpression(), !1944)
  %mb_y = alloca i16, align 2, !DIAssignID !1945
    #dbg_assign(i1 undef, !1921, !DIExpression(), !1945, ptr %mb_y, !DIExpression(), !1944)
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !1946
    #dbg_assign(i1 undef, !1923, !DIExpression(), !1946, ptr %pixP, !DIExpression(), !1944)
    #dbg_value(ptr %Strength, !1905, !DIExpression(), !1944)
    #dbg_value(ptr %MbQ, !1906, !DIExpression(), !1944)
    #dbg_value(i32 %edge, !1907, !DIExpression(), !1944)
    #dbg_value(i32 %mvlimit, !1908, !DIExpression(), !1944)
    #dbg_value(ptr %p, !1909, !DIExpression(), !1944)
  %cmp = icmp slt i32 %edge, 16, !dbg !1947
  %cond = select i1 %cmp, i32 %edge, i32 1, !dbg !1948
    #dbg_value(i32 %cond, !1919, !DIExpression(), !1944)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_x) #7, !dbg !1949
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_y) #7, !dbg !1949
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !1950
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !1951
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !1951
    #dbg_value(ptr %0, !1924, !DIExpression(), !1944)
  %slice_type = getelementptr inbounds i8, ptr %p, i64 248, !dbg !1952
  %1 = load i32, ptr %slice_type, align 8, !dbg !1952
  %.off = add i32 %1, -3, !dbg !1953
  %switch = icmp ult i32 %.off, 2, !dbg !1953
  %sub = add nsw i32 %cond, -1
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  br i1 %switch, label %for.cond.preheader, label %if.else, !dbg !1953

for.cond.preheader:                               ; preds = %entry
    #dbg_value(i16 poison, !1912, !DIExpression(), !1944)
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %mb_field = getelementptr inbounds i8, ptr %MbQ, i64 384
  %mixedModeEdgeFlag = getelementptr inbounds i8, ptr %MbQ, i64 472
  %cmp20 = icmp eq i32 %edge, 0
    #dbg_value(i32 0, !1918, !DIExpression(), !1944)
    #dbg_value(i32 0, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 0), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
    #dbg_value(!DIArgList(i32 %cond, i32 0), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
    #dbg_value(!DIArgList(i32 poison, i16 poison), !1910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
    #dbg_value(!DIArgList(i32 poison, i16 poison), !1910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %2 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %3 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.us = sext i32 %3 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.us), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
    #dbg_value(!DIArgList(ptr %2, i64 %idxprom.us), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %4 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.us = freeze i32 %4, !dbg !1963
  %mb_field16.us = getelementptr inbounds %struct.macroblock, ptr %2, i64 %idxprom.us, i32 45, !dbg !1964
  %5 = load i32, ptr %mb_field16.us, align 8, !dbg !1964
  %cmp17.us = icmp ne i32 %.fr.us, %5, !dbg !1965
  %conv19.us = zext i1 %cmp17.us to i8, !dbg !1966
  store i8 %conv19.us, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  br i1 %cmp20, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  store i32 50529027, ptr %Strength, align 4, !dbg !1968
    #dbg_value(i16 poison, !1912, !DIExpression(), !1944)
    #dbg_value(i32 4, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 4, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 4), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %6 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %7 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.1 = sext i32 %7 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %6, i64 %idxprom.1), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %8 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.1 = freeze i32 %8, !dbg !1963
  %mb_field16.1 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %idxprom.1, i32 45, !dbg !1964
  %9 = load i32, ptr %mb_field16.1, align 8, !dbg !1964
  %cmp17.1 = icmp ne i32 %.fr.1, %9, !dbg !1965
  %conv19.1 = zext i1 %cmp17.1 to i8, !dbg !1966
  store i8 %conv19.1, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4, !dbg !1969
  store i32 50529027, ptr %add.ptr.1, align 4, !dbg !1968
    #dbg_value(i32 8, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 8, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 8), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %10 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %11 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.2 = sext i32 %11 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %10, i64 %idxprom.2), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %12 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.2 = freeze i32 %12, !dbg !1963
  %mb_field16.2 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom.2, i32 45, !dbg !1964
  %13 = load i32, ptr %mb_field16.2, align 8, !dbg !1964
  %cmp17.2 = icmp ne i32 %.fr.2, %13, !dbg !1965
  %conv19.2 = zext i1 %cmp17.2 to i8, !dbg !1966
  store i8 %conv19.2, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8, !dbg !1969
  store i32 50529027, ptr %add.ptr.2, align 4, !dbg !1968
    #dbg_value(i32 12, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 12, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 12), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %14 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %15 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.3 = sext i32 %15 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %14, i64 %idxprom.3), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %16 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.3 = freeze i32 %16, !dbg !1963
  %mb_field16.3 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom.3, i32 45, !dbg !1964
  %17 = load i32, ptr %mb_field16.3, align 8, !dbg !1964
  %cmp17.3 = icmp ne i32 %.fr.3, %17, !dbg !1965
  %conv19.3 = zext i1 %cmp17.3 to i8, !dbg !1966
  store i8 %conv19.3, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12, !dbg !1969
  store i32 50529027, ptr %add.ptr.3, align 4, !dbg !1968
  br label %if.end238, !dbg !1970

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %18 = load i32, ptr %mb_field16.us, align 8, !dbg !1971
  %19 = or i32 %18, %.fr.us, !dbg !1972
  %20 = icmp eq i32 %19, 0, !dbg !1972
  %21 = select i1 %20, i32 67372036, i32 50529027, !dbg !1972
  store i32 %21, ptr %Strength, align 4, !dbg !1968
    #dbg_value(i16 poison, !1912, !DIExpression(), !1944)
    #dbg_value(i32 4, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 4, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 4), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %22 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %23 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.us.1 = sext i32 %23 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %22, i64 %idxprom.us.1), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %24 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.us.1 = freeze i32 %24, !dbg !1963
  %mb_field16.us.1 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %idxprom.us.1, i32 45, !dbg !1964
  %25 = load i32, ptr %mb_field16.us.1, align 8, !dbg !1964
  %cmp17.us.1 = icmp ne i32 %.fr.us.1, %25, !dbg !1965
  %conv19.us.1 = zext i1 %cmp17.us.1 to i8, !dbg !1966
  store i8 %conv19.us.1, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %26 = load i32, ptr %mb_field16.us.1, align 8, !dbg !1971
  %27 = or i32 %26, %.fr.us.1, !dbg !1972
  %28 = icmp eq i32 %27, 0, !dbg !1972
  %29 = select i1 %28, i32 67372036, i32 50529027, !dbg !1972
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %Strength, i64 4, !dbg !1969
  store i32 %29, ptr %add.ptr.us.1, align 4, !dbg !1968
    #dbg_value(i32 8, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 8, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 8), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %30 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %31 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.us.2 = sext i32 %31 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %30, i64 %idxprom.us.2), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %32 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.us.2 = freeze i32 %32, !dbg !1963
  %mb_field16.us.2 = getelementptr inbounds %struct.macroblock, ptr %30, i64 %idxprom.us.2, i32 45, !dbg !1964
  %33 = load i32, ptr %mb_field16.us.2, align 8, !dbg !1964
  %cmp17.us.2 = icmp ne i32 %.fr.us.2, %33, !dbg !1965
  %conv19.us.2 = zext i1 %cmp17.us.2 to i8, !dbg !1966
  store i8 %conv19.us.2, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %34 = load i32, ptr %mb_field16.us.2, align 8, !dbg !1971
  %35 = or i32 %34, %.fr.us.2, !dbg !1972
  %36 = icmp eq i32 %35, 0, !dbg !1972
  %37 = select i1 %36, i32 67372036, i32 50529027, !dbg !1972
  %add.ptr.us.2 = getelementptr inbounds i8, ptr %Strength, i64 8, !dbg !1969
  store i32 %37, ptr %add.ptr.us.2, align 4, !dbg !1968
    #dbg_value(i32 12, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 12, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1954
    #dbg_value(!DIArgList(i32 %cond, i32 12), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65532, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %38 = load ptr, ptr %mb_data, align 8, !dbg !1959
  %39 = load i32, ptr %mb_addr, align 4, !dbg !1960
  %idxprom.us.3 = sext i32 %39 to i64, !dbg !1961
    #dbg_value(!DIArgList(ptr %38, i64 %idxprom.us.3), !1922, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 480, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1944)
  %40 = load i32, ptr %mb_field, align 8, !dbg !1962
  %.fr.us.3 = freeze i32 %40, !dbg !1963
  %mb_field16.us.3 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %idxprom.us.3, i32 45, !dbg !1964
  %41 = load i32, ptr %mb_field16.us.3, align 8, !dbg !1964
  %cmp17.us.3 = icmp ne i32 %.fr.us.3, %41, !dbg !1965
  %conv19.us.3 = zext i1 %cmp17.us.3 to i8, !dbg !1966
  store i8 %conv19.us.3, ptr %mixedModeEdgeFlag, align 8, !dbg !1967
  %42 = load i32, ptr %mb_field16.us.3, align 8, !dbg !1971
  %43 = or i32 %42, %.fr.us.3, !dbg !1972
  %44 = icmp eq i32 %43, 0, !dbg !1972
  %45 = select i1 %44, i32 67372036, i32 50529027, !dbg !1972
  %add.ptr.us.3 = getelementptr inbounds i8, ptr %Strength, i64 12, !dbg !1969
  store i32 %45, ptr %add.ptr.us.3, align 4, !dbg !1968
  br label %if.end238, !dbg !1970

if.else:                                          ; preds = %entry
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !1973
  %mb_data36 = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !1974
  %46 = load ptr, ptr %mb_data36, align 8, !dbg !1974
  %mb_addr37 = getelementptr inbounds i8, ptr %pixP, i64 4, !dbg !1975
  %47 = load i32, ptr %mb_addr37, align 4, !dbg !1975
  %idxprom38 = sext i32 %47 to i64, !dbg !1976
  %arrayidx39 = getelementptr inbounds %struct.macroblock, ptr %46, i64 %idxprom38, !dbg !1976
    #dbg_value(ptr %arrayidx39, !1922, !DIExpression(), !1944)
  %mb_field40 = getelementptr inbounds i8, ptr %MbQ, i64 384, !dbg !1977
  %48 = load i32, ptr %mb_field40, align 8, !dbg !1977
  %mb_field41 = getelementptr inbounds i8, ptr %arrayidx39, i64 384, !dbg !1978
  %49 = load i32, ptr %mb_field41, align 8, !dbg !1978
  %cmp42 = icmp ne i32 %48, %49, !dbg !1979
  %conv44 = zext i1 %cmp42 to i8, !dbg !1980
  %mixedModeEdgeFlag45 = getelementptr inbounds i8, ptr %MbQ, i64 472, !dbg !1981
  store i8 %conv44, ptr %mixedModeEdgeFlag45, align 8, !dbg !1982
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96, !dbg !1983
  %50 = load i32, ptr %is_intra_block, align 8, !dbg !1983
  %cmp46 = icmp eq i32 %50, 1, !dbg !1984
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48, !dbg !1985

lor.lhs.false48:                                  ; preds = %if.else
  %is_intra_block49 = getelementptr inbounds i8, ptr %arrayidx39, i64 96, !dbg !1986
  %51 = load i32, ptr %is_intra_block49, align 8, !dbg !1986
  %cmp50 = icmp eq i32 %51, 1, !dbg !1987
  br i1 %cmp50, label %if.then52, label %for.cond68.preheader, !dbg !1988

for.cond68.preheader:                             ; preds = %lor.lhs.false48
    #dbg_value(i16 poison, !1912, !DIExpression(), !1944)
  %and78 = and i32 %cond, 65532
  %y82 = getelementptr inbounds i8, ptr %pixP, i64 10
  %x85 = getelementptr inbounds i8, ptr %pixP, i64 8
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
  %cbp_blk96 = getelementptr inbounds i8, ptr %arrayidx39, i64 288
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24
  %pos_y = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixP, i64 12
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  br label %for.body72, !dbg !1989

if.then52:                                        ; preds = %lor.lhs.false48, %if.else
  %cmp53 = icmp eq i32 %edge, 0, !dbg !1990
  br i1 %cmp53, label %land.rhs55, label %land.end63, !dbg !1992

land.rhs55:                                       ; preds = %if.then52
  %52 = load i32, ptr %mb_field41, align 8, !dbg !1993
  %tobool57.not = icmp eq i32 %52, 0, !dbg !1994
  br i1 %tobool57.not, label %land.rhs58, label %land.end63, !dbg !1995

land.rhs58:                                       ; preds = %land.rhs55
  %tobool60.not = icmp eq i32 %48, 0, !dbg !1996
  %53 = select i1 %tobool60.not, i8 4, i8 3, !dbg !1997
  br label %land.end63

land.end63:                                       ; preds = %land.rhs55, %land.rhs58, %if.then52
  %cond64 = phi i8 [ 3, %if.then52 ], [ 3, %land.rhs55 ], [ %53, %land.rhs58 ], !dbg !1998
    #dbg_value(i8 %cond64, !1917, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !1944)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond64, i64 16, i1 false), !dbg !1999
  br label %if.end238, !dbg !2000

for.body72:                                       ; preds = %for.cond68.preheader, %if.end227
  %conv69437 = phi i32 [ 0, %for.cond68.preheader ], [ %conv69, %if.end227 ]
  %sext436 = phi i32 [ 0, %for.cond68.preheader ], [ %sext, %if.end227 ]
    #dbg_value(i32 %conv69437, !1918, !DIExpression(), !1944)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %conv69437, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !2001
  %shr79 = ashr i32 %sext436, 18, !dbg !2002
  %add80 = add nsw i32 %shr79, %and78, !dbg !2003
    #dbg_value(!DIArgList(i32 %and78, i32 %shr79), !1911, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %54 = load i16, ptr %y82, align 2, !dbg !2004
  %55 = load i16, ptr %x85, align 4, !dbg !2005
    #dbg_value(!DIArgList(i16 %54, i16 %55), !1910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shra, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %56 = load i64, ptr %cbp_blk, align 8, !dbg !2006
  %sext320 = shl i32 %add80, 16, !dbg !2007
  %conv91 = ashr exact i32 %sext320, 16, !dbg !2007
    #dbg_value(i32 %conv91, !1430, !DIExpression(), !2008)
  %cmp.i = icmp sgt i32 %conv91, 63, !dbg !2010
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i, !dbg !2011

cond.false.i:                                     ; preds = %for.body72
  %idxprom.i = sext i32 %conv91 to i64, !dbg !2012
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i, !dbg !2012
  %57 = load i64, ptr %arrayidx.i, align 8, !dbg !2012
  br label %i64_power2.exit, !dbg !2011

i64_power2.exit:                                  ; preds = %for.body72, %cond.false.i
  %cond.i = phi i64 [ %57, %cond.false.i ], [ 0, %for.body72 ], !dbg !2011
  %and92 = and i64 %cond.i, %56, !dbg !2013
  %cmp93.not = icmp eq i64 %and92, 0, !dbg !2014
  br i1 %cmp93.not, label %lor.lhs.false95, label %if.end227, !dbg !2015

lor.lhs.false95:                                  ; preds = %i64_power2.exit
  %58 = ashr i16 %55, 2, !dbg !2016
    #dbg_value(!DIArgList(i16 %54, i16 %58), !1910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %59 = and i16 %54, -4, !dbg !2017
    #dbg_value(!DIArgList(i16 %59, i16 %58), !1910, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %add88 = add i16 %58, %59, !dbg !2018
    #dbg_value(i16 %add88, !1910, !DIExpression(), !1944)
  %60 = load i64, ptr %cbp_blk96, align 8, !dbg !2019
    #dbg_value(i16 %add88, !1430, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value), !2020)
  %cmp.i343 = icmp sgt i16 %add88, 63, !dbg !2022
  br i1 %cmp.i343, label %i64_power2.exit348, label %cond.false.i344, !dbg !2023

cond.false.i344:                                  ; preds = %lor.lhs.false95
  %idxprom.i345 = sext i16 %add88 to i64, !dbg !2024
    #dbg_value(i64 %idxprom.i345, !1430, !DIExpression(), !2020)
  %arrayidx.i346 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i345, !dbg !2024
  %61 = load i64, ptr %arrayidx.i346, align 8, !dbg !2024
  br label %i64_power2.exit348, !dbg !2023

i64_power2.exit348:                               ; preds = %lor.lhs.false95, %cond.false.i344
  %cond.i347 = phi i64 [ %61, %cond.false.i344 ], [ 0, %lor.lhs.false95 ], !dbg !2023
  %and100 = and i64 %cond.i347, %60, !dbg !2025
  %cmp101.not = icmp eq i64 %and100, 0, !dbg !2026
  br i1 %cmp101.not, label %if.else104, label %if.end227, !dbg !2027

if.else104:                                       ; preds = %i64_power2.exit348
  %62 = load i8, ptr %mixedModeEdgeFlag45, align 8, !dbg !2028
  %tobool106.not = icmp eq i8 %62, 0, !dbg !2029
  br i1 %tobool106.not, label %if.else108, label %if.end227, !dbg !2030

if.else108:                                       ; preds = %if.else104
  %63 = load i32, ptr %mbAddrX, align 8, !dbg !2031
  call void @get_mb_block_pos_mbaff(i32 noundef %63, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7, !dbg !2032
  %64 = load i16, ptr %mb_y, align 2, !dbg !2033
  %conv109 = sext i16 %64 to i32, !dbg !2033
  %shl = shl nsw i32 %conv109, 2, !dbg !2034
  %shr111 = ashr i32 %sext320, 18, !dbg !2035
  %add112 = add nsw i32 %shl, %shr111, !dbg !2036
  %conv113 = zext i32 %add112 to i64, !dbg !2037
    #dbg_value(i32 %add112, !1915, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %65 = load i16, ptr %mb_x, align 2, !dbg !2038
  %conv114 = sext i16 %65 to i32, !dbg !2038
  %shl115 = shl nsw i32 %conv114, 2, !dbg !2039
  %and117 = and i32 %shr79, 3, !dbg !2040
  %add118 = or disjoint i32 %shl115, %and117, !dbg !2041
  %conv119 = zext i32 %add118 to i64, !dbg !2042
    #dbg_value(i32 %add118, !1913, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !1944)
  %66 = load i16, ptr %pos_y, align 2, !dbg !2043
  %67 = ashr i16 %66, 2, !dbg !2044
    #dbg_value(i16 %67, !1916, !DIExpression(), !1944)
  %68 = load i16, ptr %pos_x, align 4, !dbg !2045
  %69 = ashr i16 %68, 2, !dbg !2046
    #dbg_value(i16 %69, !1914, !DIExpression(), !1944)
  %70 = load ptr, ptr %mv_info, align 8, !dbg !2047
  %sext321 = shl i64 %conv113, 48, !dbg !2048
  %71 = ashr exact i64 %sext321, 45, !dbg !2048
  %arrayidx127 = getelementptr inbounds i8, ptr %70, i64 %71, !dbg !2048
  %72 = load ptr, ptr %arrayidx127, align 8, !dbg !2048
  %sext322 = shl i64 %conv119, 48, !dbg !2048
  %73 = ashr exact i64 %sext322, 43, !dbg !2048
  %arrayidx129 = getelementptr inbounds i8, ptr %72, i64 %73, !dbg !2048
    #dbg_value(ptr %arrayidx129, !1925, !DIExpression(), !2049)
  %idxprom131 = sext i16 %67 to i64, !dbg !2050
  %arrayidx132 = getelementptr inbounds ptr, ptr %70, i64 %idxprom131, !dbg !2050
  %74 = load ptr, ptr %arrayidx132, align 8, !dbg !2050
  %idxprom133 = sext i16 %69 to i64, !dbg !2050
  %arrayidx134 = getelementptr inbounds %struct.pic_motion_params, ptr %74, i64 %idxprom133, !dbg !2050
    #dbg_value(ptr %arrayidx134, !1938, !DIExpression(), !2049)
  %75 = load ptr, ptr %arrayidx129, align 8, !dbg !2051
    #dbg_value(ptr %75, !1939, !DIExpression(), !2049)
  %76 = load ptr, ptr %arrayidx134, align 8, !dbg !2052
    #dbg_value(ptr %76, !1940, !DIExpression(), !2049)
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx129, i64 8, !dbg !2053
  %77 = load ptr, ptr %arrayidx139, align 8, !dbg !2053
    #dbg_value(ptr %77, !1941, !DIExpression(), !2049)
  %arrayidx141 = getelementptr inbounds i8, ptr %arrayidx134, i64 8, !dbg !2054
  %78 = load ptr, ptr %arrayidx141, align 8, !dbg !2054
    #dbg_value(ptr %78, !1942, !DIExpression(), !2049)
  %cmp142 = icmp eq ptr %75, %76, !dbg !2055
  %cmp144 = icmp eq ptr %77, %78
  %or.cond = select i1 %cmp142, i1 %cmp144, i1 false, !dbg !2057
  br i1 %or.cond, label %if.then152, label %lor.lhs.false146, !dbg !2057

lor.lhs.false146:                                 ; preds = %if.else108
  %cmp147 = icmp eq ptr %75, %78, !dbg !2058
  %cmp150 = icmp eq ptr %77, %76
  %or.cond324 = select i1 %cmp147, i1 %cmp150, i1 false, !dbg !2059
  br i1 %or.cond324, label %if.then152, label %if.end225, !dbg !2059

if.then152:                                       ; preds = %lor.lhs.false146, %if.else108
    #dbg_value(i32 0, !1917, !DIExpression(), !1944)
  %cmp153.not = icmp eq ptr %75, %77, !dbg !2060
  %mv191 = getelementptr inbounds i8, ptr %arrayidx129, i64 16, !dbg !2063
  br i1 %cmp153.not, label %if.else190, label %if.then155, !dbg !2064

if.then155:                                       ; preds = %if.then152
  %mv.val = load i16, ptr %mv191, align 2, !dbg !2065
  %79 = getelementptr i8, ptr %arrayidx129, i64 18, !dbg !2065
  %mv.val341 = load i16, ptr %79, align 2, !dbg !2065
    #dbg_value(ptr undef, !1482, !DIExpression(), !2068)
    #dbg_value(ptr undef, !1482, !DIExpression(), !2071)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2068)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2071)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2068)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2071)
  %conv.i = sext i16 %mv.val to i32, !dbg !2074
  %conv4.i = sext i16 %mv.val341 to i32, !dbg !2075
  br i1 %cmp142, label %if.then158, label %if.else172, !dbg !2076

if.then158:                                       ; preds = %if.then155
  %mv160 = getelementptr inbounds i8, ptr %arrayidx134, i64 16, !dbg !2077
  %mv160.val = load i16, ptr %mv160, align 2, !dbg !2078
  %80 = getelementptr i8, ptr %arrayidx134, i64 18, !dbg !2078
  %mv160.val342 = load i16, ptr %80, align 2, !dbg !2078
  %conv2.i = sext i16 %mv160.val to i32, !dbg !2079
  %sub.i = sub nsw i32 %conv.i, %conv2.i, !dbg !2080
    #dbg_value(i32 %sub.i, !80, !DIExpression(), !2081)
    #dbg_value(i32 %sub.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2081)
  %sub.i.i = call i32 @llvm.abs.i32(i32 %sub.i, i1 true), !dbg !2083
  %cmp.i349 = icmp ult i32 %sub.i.i, 4, !dbg !2084
  %conv6.i = sext i16 %mv160.val342 to i32, !dbg !2085
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i, !dbg !2086
    #dbg_value(i32 %sub7.i, !80, !DIExpression(), !2087)
    #dbg_value(i32 %sub7.i, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2087)
  %sub.i14.i = call i32 @llvm.abs.i32(i32 %sub7.i, i1 true), !dbg !2089
  %cmp9.i = icmp slt i32 %sub.i14.i, %mvlimit, !dbg !2090
  %or13.i.not = and i1 %cmp.i349, %cmp9.i, !dbg !2078
  br i1 %or13.i.not, label %lor.rhs, label %if.end225, !dbg !2091

lor.rhs:                                          ; preds = %if.then158
  %arrayidx165 = getelementptr inbounds i8, ptr %arrayidx129, i64 20, !dbg !2092
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx134, i64 20, !dbg !2093
  %arrayidx165.val = load i16, ptr %arrayidx165, align 2, !dbg !2094
  %81 = getelementptr i8, ptr %arrayidx129, i64 22, !dbg !2094
  %arrayidx165.val339 = load i16, ptr %81, align 2, !dbg !2094
  %arrayidx167.val = load i16, ptr %arrayidx167, align 2, !dbg !2094
  %82 = getelementptr i8, ptr %arrayidx134, i64 22, !dbg !2094
  %arrayidx167.val340 = load i16, ptr %82, align 2, !dbg !2094
    #dbg_value(ptr undef, !1482, !DIExpression(), !2095)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2095)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2095)
  %conv.i350 = sext i16 %arrayidx165.val to i32, !dbg !2097
  %conv2.i351 = sext i16 %arrayidx167.val to i32, !dbg !2098
  %sub.i352 = sub nsw i32 %conv.i350, %conv2.i351, !dbg !2099
    #dbg_value(i32 %sub.i352, !80, !DIExpression(), !2100)
    #dbg_value(i32 %sub.i352, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2100)
  %sub.i.i353 = call i32 @llvm.abs.i32(i32 %sub.i352, i1 true), !dbg !2102
  %cmp.i354 = icmp ugt i32 %sub.i.i353, 3, !dbg !2103
  %conv4.i355 = sext i16 %arrayidx165.val339 to i32, !dbg !2104
  %conv6.i356 = sext i16 %arrayidx167.val340 to i32, !dbg !2105
  %sub7.i357 = sub nsw i32 %conv4.i355, %conv6.i356, !dbg !2106
    #dbg_value(i32 %sub7.i357, !80, !DIExpression(), !2107)
    #dbg_value(i32 %sub7.i357, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2107)
  %sub.i14.i358 = call i32 @llvm.abs.i32(i32 %sub7.i357, i1 true), !dbg !2109
  %cmp9.i359 = icmp uge i32 %sub.i14.i358, %mvlimit, !dbg !2110
  %or13.i360 = or i1 %cmp.i354, %cmp9.i359, !dbg !2111
  br label %if.end225, !dbg !2091

if.else172:                                       ; preds = %if.then155
  %arrayidx176 = getelementptr inbounds i8, ptr %arrayidx134, i64 20, !dbg !2112
  %arrayidx176.val = load i16, ptr %arrayidx176, align 2, !dbg !2113
  %83 = getelementptr i8, ptr %arrayidx134, i64 22, !dbg !2113
  %arrayidx176.val338 = load i16, ptr %83, align 2, !dbg !2113
  %conv2.i363 = sext i16 %arrayidx176.val to i32, !dbg !2114
  %sub.i364 = sub nsw i32 %conv.i, %conv2.i363, !dbg !2115
    #dbg_value(i32 %sub.i364, !80, !DIExpression(), !2116)
    #dbg_value(i32 %sub.i364, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2116)
  %sub.i.i365 = call i32 @llvm.abs.i32(i32 %sub.i364, i1 true), !dbg !2118
  %cmp.i366 = icmp ult i32 %sub.i.i365, 4, !dbg !2119
  %conv6.i368 = sext i16 %arrayidx176.val338 to i32, !dbg !2120
  %sub7.i369 = sub nsw i32 %conv4.i, %conv6.i368, !dbg !2121
    #dbg_value(i32 %sub7.i369, !80, !DIExpression(), !2122)
    #dbg_value(i32 %sub7.i369, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2122)
  %sub.i14.i370 = call i32 @llvm.abs.i32(i32 %sub7.i369, i1 true), !dbg !2124
  %cmp9.i371 = icmp slt i32 %sub.i14.i370, %mvlimit, !dbg !2125
  %or13.i372.not = and i1 %cmp.i366, %cmp9.i371, !dbg !2113
  br i1 %or13.i372.not, label %lor.rhs179, label %if.end225, !dbg !2126

lor.rhs179:                                       ; preds = %if.else172
  %mv175 = getelementptr inbounds i8, ptr %arrayidx134, i64 16, !dbg !2127
  %arrayidx181 = getelementptr inbounds i8, ptr %arrayidx129, i64 20, !dbg !2128
  %arrayidx181.val = load i16, ptr %arrayidx181, align 2, !dbg !2129
  %84 = getelementptr i8, ptr %arrayidx129, i64 22, !dbg !2129
  %arrayidx181.val335 = load i16, ptr %84, align 2, !dbg !2129
  %mv175.val = load i16, ptr %mv175, align 2, !dbg !2129
  %85 = getelementptr i8, ptr %arrayidx134, i64 18, !dbg !2129
  %mv175.val336 = load i16, ptr %85, align 2, !dbg !2129
    #dbg_value(ptr undef, !1482, !DIExpression(), !2130)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2130)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2130)
  %conv.i374 = sext i16 %arrayidx181.val to i32, !dbg !2132
  %conv2.i375 = sext i16 %mv175.val to i32, !dbg !2133
  %sub.i376 = sub nsw i32 %conv.i374, %conv2.i375, !dbg !2134
    #dbg_value(i32 %sub.i376, !80, !DIExpression(), !2135)
    #dbg_value(i32 %sub.i376, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2135)
  %sub.i.i377 = call i32 @llvm.abs.i32(i32 %sub.i376, i1 true), !dbg !2137
  %cmp.i378 = icmp ugt i32 %sub.i.i377, 3, !dbg !2138
  %conv4.i379 = sext i16 %arrayidx181.val335 to i32, !dbg !2139
  %conv6.i380 = sext i16 %mv175.val336 to i32, !dbg !2140
  %sub7.i381 = sub nsw i32 %conv4.i379, %conv6.i380, !dbg !2141
    #dbg_value(i32 %sub7.i381, !80, !DIExpression(), !2142)
    #dbg_value(i32 %sub7.i381, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2142)
  %sub.i14.i382 = call i32 @llvm.abs.i32(i32 %sub7.i381, i1 true), !dbg !2144
  %cmp9.i383 = icmp uge i32 %sub.i14.i382, %mvlimit, !dbg !2145
  %or13.i384 = or i1 %cmp.i378, %cmp9.i383, !dbg !2146
  br label %if.end225, !dbg !2126

if.else190:                                       ; preds = %if.then152
  %mv193 = getelementptr inbounds i8, ptr %arrayidx134, i64 16, !dbg !2147
  %mv191.val331 = load i16, ptr %mv191, align 2, !dbg !2149
  %86 = getelementptr i8, ptr %arrayidx129, i64 18, !dbg !2149
  %mv191.val332 = load i16, ptr %86, align 2, !dbg !2149
  %mv193.val333 = load i16, ptr %mv193, align 2, !dbg !2149
  %87 = getelementptr i8, ptr %arrayidx134, i64 18, !dbg !2149
  %mv193.val334 = load i16, ptr %87, align 2, !dbg !2149
    #dbg_value(ptr undef, !1482, !DIExpression(), !2150)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2150)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2150)
  %conv.i386 = sext i16 %mv191.val331 to i32, !dbg !2152
  %conv2.i387 = sext i16 %mv193.val333 to i32, !dbg !2153
  %sub.i388 = sub nsw i32 %conv.i386, %conv2.i387, !dbg !2154
    #dbg_value(i32 %sub.i388, !80, !DIExpression(), !2155)
    #dbg_value(i32 %sub.i388, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2155)
  %sub.i.i389 = call i32 @llvm.abs.i32(i32 %sub.i388, i1 true), !dbg !2157
  %cmp.i390 = icmp ult i32 %sub.i.i389, 4, !dbg !2158
  %conv4.i391 = sext i16 %mv191.val332 to i32, !dbg !2159
  %conv6.i392 = sext i16 %mv193.val334 to i32, !dbg !2160
  %sub7.i393 = sub nsw i32 %conv4.i391, %conv6.i392, !dbg !2161
    #dbg_value(i32 %sub7.i393, !80, !DIExpression(), !2162)
    #dbg_value(i32 %sub7.i393, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2162)
  %sub.i14.i394 = call i32 @llvm.abs.i32(i32 %sub7.i393, i1 true), !dbg !2164
  %cmp9.i395 = icmp slt i32 %sub.i14.i394, %mvlimit, !dbg !2165
  %or13.i396.not = and i1 %cmp.i390, %cmp9.i395, !dbg !2149
  br i1 %or13.i396.not, label %lor.lhs.false197, label %if.else190.land.rhs204_crit_edge, !dbg !2166

if.else190.land.rhs204_crit_edge:                 ; preds = %if.else190
  %arrayidx208.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx134, i64 20
  %arrayidx208.val.pre = load i16, ptr %arrayidx208.phi.trans.insert, align 2, !dbg !2167
  %.phi.trans.insert = getelementptr i8, ptr %arrayidx134, i64 22
  %arrayidx208.val328.pre = load i16, ptr %.phi.trans.insert, align 2, !dbg !2167
  %.pre = sext i16 %arrayidx208.val.pre to i32, !dbg !2168
  %.pre443 = sext i16 %arrayidx208.val328.pre to i32, !dbg !2170
  br label %land.rhs204, !dbg !2166

lor.lhs.false197:                                 ; preds = %if.else190
  %arrayidx199 = getelementptr inbounds i8, ptr %arrayidx129, i64 20, !dbg !2171
  %arrayidx201 = getelementptr inbounds i8, ptr %arrayidx134, i64 20, !dbg !2172
  %arrayidx199.val = load i16, ptr %arrayidx199, align 2, !dbg !2173
  %88 = getelementptr i8, ptr %arrayidx129, i64 22, !dbg !2173
  %arrayidx199.val329 = load i16, ptr %88, align 2, !dbg !2173
  %arrayidx201.val = load i16, ptr %arrayidx201, align 2, !dbg !2173
  %89 = getelementptr i8, ptr %arrayidx134, i64 22, !dbg !2173
  %arrayidx201.val330 = load i16, ptr %89, align 2, !dbg !2173
    #dbg_value(ptr undef, !1482, !DIExpression(), !2174)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2174)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2174)
  %conv.i398 = sext i16 %arrayidx199.val to i32, !dbg !2176
  %conv2.i399 = sext i16 %arrayidx201.val to i32, !dbg !2177
  %sub.i400 = sub nsw i32 %conv.i398, %conv2.i399, !dbg !2178
    #dbg_value(i32 %sub.i400, !80, !DIExpression(), !2179)
    #dbg_value(i32 %sub.i400, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2179)
  %sub.i.i401 = call i32 @llvm.abs.i32(i32 %sub.i400, i1 true), !dbg !2181
  %cmp.i402 = icmp ult i32 %sub.i.i401, 4, !dbg !2182
  %conv4.i403 = sext i16 %arrayidx199.val329 to i32, !dbg !2183
  %conv6.i404 = sext i16 %arrayidx201.val330 to i32, !dbg !2184
  %sub7.i405 = sub nsw i32 %conv4.i403, %conv6.i404, !dbg !2185
    #dbg_value(i32 %sub7.i405, !80, !DIExpression(), !2186)
    #dbg_value(i32 %sub7.i405, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2186)
  %sub.i14.i406 = call i32 @llvm.abs.i32(i32 %sub7.i405, i1 true), !dbg !2188
  %cmp9.i407 = icmp ult i32 %sub.i14.i406, %mvlimit, !dbg !2189
  %or13.i408.not = and i1 %cmp.i402, %cmp9.i407, !dbg !2173
  br i1 %or13.i408.not, label %if.end225, label %land.rhs204, !dbg !2190

land.rhs204:                                      ; preds = %if.else190.land.rhs204_crit_edge, %lor.lhs.false197
  %conv6.i416.pre-phi = phi i32 [ %.pre443, %if.else190.land.rhs204_crit_edge ], [ %conv6.i404, %lor.lhs.false197 ], !dbg !2170
  %conv2.i411.pre-phi = phi i32 [ %.pre, %if.else190.land.rhs204_crit_edge ], [ %conv2.i399, %lor.lhs.false197 ], !dbg !2168
    #dbg_value(ptr undef, !1482, !DIExpression(), !2191)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2191)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2191)
  %sub.i412 = sub nsw i32 %conv.i386, %conv2.i411.pre-phi, !dbg !2192
    #dbg_value(i32 %sub.i412, !80, !DIExpression(), !2193)
    #dbg_value(i32 %sub.i412, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2193)
  %sub.i.i413 = call i32 @llvm.abs.i32(i32 %sub.i412, i1 true), !dbg !2195
  %cmp.i414 = icmp ult i32 %sub.i.i413, 4, !dbg !2196
  %sub7.i417 = sub nsw i32 %conv4.i391, %conv6.i416.pre-phi, !dbg !2197
    #dbg_value(i32 %sub7.i417, !80, !DIExpression(), !2198)
    #dbg_value(i32 %sub7.i417, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2198)
  %sub.i14.i418 = call i32 @llvm.abs.i32(i32 %sub7.i417, i1 true), !dbg !2200
  %cmp9.i419 = icmp slt i32 %sub.i14.i418, %mvlimit, !dbg !2201
  %or13.i420.not = and i1 %cmp.i414, %cmp9.i419, !dbg !2167
  br i1 %or13.i420.not, label %lor.rhs211, label %if.end225, !dbg !2202

lor.rhs211:                                       ; preds = %land.rhs204
  %arrayidx213 = getelementptr inbounds i8, ptr %arrayidx129, i64 20, !dbg !2203
  %arrayidx213.val = load i16, ptr %arrayidx213, align 2, !dbg !2204
  %90 = getelementptr i8, ptr %arrayidx129, i64 22, !dbg !2204
  %arrayidx213.val325 = load i16, ptr %90, align 2, !dbg !2204
    #dbg_value(ptr undef, !1482, !DIExpression(), !2205)
    #dbg_value(ptr undef, !1489, !DIExpression(), !2205)
    #dbg_value(i32 %mvlimit, !1490, !DIExpression(), !2205)
  %conv.i422 = sext i16 %arrayidx213.val to i32, !dbg !2207
  %sub.i424 = sub nsw i32 %conv.i422, %conv2.i387, !dbg !2208
    #dbg_value(i32 %sub.i424, !80, !DIExpression(), !2209)
    #dbg_value(i32 %sub.i424, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2209)
  %sub.i.i425 = call i32 @llvm.abs.i32(i32 %sub.i424, i1 true), !dbg !2211
  %cmp.i426 = icmp ugt i32 %sub.i.i425, 3, !dbg !2212
  %conv4.i427 = sext i16 %arrayidx213.val325 to i32, !dbg !2213
  %sub7.i429 = sub nsw i32 %conv4.i427, %conv6.i392, !dbg !2214
    #dbg_value(i32 %sub7.i429, !80, !DIExpression(), !2215)
    #dbg_value(i32 %sub7.i429, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2215)
  %sub.i14.i430 = call i32 @llvm.abs.i32(i32 %sub7.i429, i1 true), !dbg !2217
  %cmp9.i431 = icmp uge i32 %sub.i14.i430, %mvlimit, !dbg !2218
  %or13.i432 = or i1 %cmp.i426, %cmp9.i431, !dbg !2219
  br label %if.end225, !dbg !2202

if.end225:                                        ; preds = %lor.lhs.false146, %lor.lhs.false197, %lor.rhs211, %land.rhs204, %if.else172, %lor.rhs179, %if.then158, %lor.rhs
  %StrValue.0.shrunk = phi i1 [ true, %if.then158 ], [ %or13.i360, %lor.rhs ], [ true, %if.else172 ], [ %or13.i384, %lor.rhs179 ], [ false, %lor.lhs.false197 ], [ true, %land.rhs204 ], [ %or13.i432, %lor.rhs211 ], [ true, %lor.lhs.false146 ]
  %StrValue.0 = zext i1 %StrValue.0.shrunk to i32, !dbg !2220
    #dbg_value(i32 %StrValue.0, !1917, !DIExpression(), !1944)
  br label %if.end227

if.end227:                                        ; preds = %if.else104, %i64_power2.exit, %i64_power2.exit348, %if.end225
  %StrValue.1 = phi i32 [ %StrValue.0, %if.end225 ], [ 2, %i64_power2.exit348 ], [ 2, %i64_power2.exit ], [ 1, %if.else104 ], !dbg !2221
    #dbg_value(i32 %StrValue.1, !1917, !DIExpression(), !1944)
  %mul228 = mul nuw nsw i32 %StrValue.1, 16843009, !dbg !2222
  %idx.ext230 = sext i32 %conv69437 to i64, !dbg !2223
  %add.ptr231 = getelementptr inbounds i8, ptr %Strength, i64 %idx.ext230, !dbg !2223
  store i32 %mul228, ptr %add.ptr231, align 4, !dbg !2224
    #dbg_value(i16 poison, !1912, !DIExpression(), !1944)
  %add234 = shl nsw i32 %conv69437, 16, !dbg !2225
  %sext = add i32 %add234, 262144, !dbg !2225
  %conv69 = ashr exact i32 %sext, 16, !dbg !2225
  %cmp70 = icmp slt i32 %conv69, 16, !dbg !2226
  br i1 %cmp70, label %for.body72, label %if.end238, !dbg !1989, !llvm.loop !2227

if.end238:                                        ; preds = %if.end227, %for.body.preheader, %for.body.us.preheader, %land.end63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_y) #7, !dbg !1970
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_x) #7, !dbg !1970
  ret void, !dbg !1970
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaVerMBAff(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #1 !dbg !2229 {
entry:
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !2297
    #dbg_assign(i1 undef, !2255, !DIExpression(), !2297, ptr %pixP, !DIExpression(), !2298)
  %pixQ = alloca %struct.pix_pos, align 4, !DIAssignID !2299
    #dbg_assign(i1 undef, !2256, !DIExpression(), !2299, ptr %pixQ, !DIExpression(), !2298)
    #dbg_value(i32 %pl, !2233, !DIExpression(), !2298)
    #dbg_value(ptr %Img, !2234, !DIExpression(), !2298)
    #dbg_value(ptr %Strength, !2235, !DIExpression(), !2298)
    #dbg_value(ptr %MbQ, !2236, !DIExpression(), !2298)
    #dbg_value(i32 %edge, !2237, !DIExpression(), !2298)
    #dbg_value(ptr %p, !2238, !DIExpression(), !2298)
    #dbg_value(i16 0, !2241, !DIExpression(), !2298)
    #dbg_value(i16 0, !2246, !DIExpression(), !2298)
    #dbg_value(i32 0, !2247, !DIExpression(), !2298)
    #dbg_value(i32 0, !2248, !DIExpression(), !2298)
    #dbg_value(ptr null, !2249, !DIExpression(), !2298)
  %tobool.not = icmp eq i32 %pl, 0, !dbg !2300
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !2300

cond.true:                                        ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !2301
  %0 = load i32, ptr %chroma_format_idc, align 4, !dbg !2301
  %idxprom = sext i32 %0 to i64, !dbg !2302
  %arrayidx = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom, !dbg !2302
  %1 = load i32, ptr %arrayidx, align 4, !dbg !2302
  br label %cond.end, !dbg !2300

cond.end:                                         ; preds = %entry, %cond.true
  %cond10.in.v = phi i64 [ 849048, %cond.true ], [ 849044, %entry ], !dbg !2300
  %cond = phi i32 [ %1, %cond.true ], [ 16, %entry ], !dbg !2300
    #dbg_value(i32 %cond, !2253, !DIExpression(), !2298)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !2303
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !2303
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !2304
  %2 = load ptr, ptr %p_Vid1, align 8, !dbg !2304
    #dbg_value(ptr %2, !2257, !DIExpression(), !2298)
  %cond10.in = getelementptr inbounds i8, ptr %2, i64 %cond10.in.v, !dbg !2305
  %cond10 = load i32, ptr %cond10.in, align 4, !dbg !2305
    #dbg_value(i32 %cond10, !2258, !DIExpression(), !2298)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %2, i64 849072, !dbg !2306
  %idxprom11 = zext i32 %pl to i64, !dbg !2307
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom11, !dbg !2307
  %3 = load i32, ptr %arrayidx12, align 4, !dbg !2307
    #dbg_value(i32 %3, !2259, !DIExpression(), !2298)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !2308
  %4 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !2308
  %conv = sext i16 %4 to i32, !dbg !2309
    #dbg_value(i32 %conv, !2260, !DIExpression(), !2298)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !2310
  %5 = load i16, ptr %DFBetaOffset, align 4, !dbg !2310
  %conv13 = sext i16 %5 to i32, !dbg !2311
    #dbg_value(i32 %conv13, !2261, !DIExpression(), !2298)
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !2312
  %6 = load i16, ptr %DFDisableIdc, align 8, !dbg !2312
  %cmp = icmp eq i16 %6, 0, !dbg !2313
    #dbg_value(i32 0, !2239, !DIExpression(), !2298)
  %cmp16455 = icmp sgt i32 %cond, 0
  %or.cond457 = select i1 %cmp, i1 %cmp16455, i1 false, !dbg !2314
  br i1 %or.cond457, label %for.body.lr.ph, label %if.end312, !dbg !2314

for.body.lr.ph:                                   ; preds = %cond.end
  %sub = add nsw i32 %edge, -1
  %mb_size = getelementptr inbounds i8, ptr %2, i64 849124
  %mb_data = getelementptr inbounds i8, ptr %2, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %pos_y = getelementptr inbounds i8, ptr %pixQ, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixQ, i64 12
  %pos_y36 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x39 = getelementptr inbounds i8, ptr %pixP, i64 12
  %sub44 = add i32 %pl, -1
  %idxprom45 = zext i32 %sub44 to i64
  %qpc47 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx50 = getelementptr inbounds [2 x i32], ptr %qpc47, i64 0, i64 %idxprom45
  %qp53 = getelementptr inbounds i8, ptr %MbQ, i64 68
  %wide.trip.count = zext nneg i32 %cond to i64, !dbg !2315
  %qp53.sink = select i1 %tobool.not, ptr %qp53, ptr %arrayidx50
  br label %for.body, !dbg !2316

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
    #dbg_value(i64 %indvars.iv, !2239, !DIExpression(), !2298)
  %7 = trunc nuw nsw i64 %indvars.iv to i32, !dbg !2317
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %sub, i32 noundef %7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !2317
  %8 = load i32, ptr %pixP, align 4, !dbg !2318
  %tobool19.not = icmp eq i32 %8, 0, !dbg !2319
  br i1 %tobool19.not, label %for.inc, label %if.then20, !dbg !2320

if.then20:                                        ; preds = %for.body
  %arrayidx22 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv, !dbg !2321
  %9 = load i8, ptr %arrayidx22, align 1, !dbg !2321
    #dbg_value(i8 %9, !2240, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2298)
  %cmp24.not = icmp eq i8 %9, 0, !dbg !2322
  br i1 %cmp24.not, label %for.inc, label %if.then26, !dbg !2323

if.then26:                                        ; preds = %if.then20
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %edge, i32 noundef %7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixQ) #7, !dbg !2324
  %10 = load ptr, ptr %mb_data, align 8, !dbg !2325
  %11 = load i32, ptr %mb_addr, align 4, !dbg !2326
  %idxprom30 = sext i32 %11 to i64, !dbg !2327
  %arrayidx31 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom30, !dbg !2327
    #dbg_value(ptr %arrayidx31, !2262, !DIExpression(), !2298)
  %12 = load i16, ptr %pos_y, align 2, !dbg !2328
  %idxprom32 = sext i16 %12 to i64, !dbg !2329
  %arrayidx33 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom32, !dbg !2329
  %13 = load ptr, ptr %arrayidx33, align 8, !dbg !2329
  %14 = load i16, ptr %pos_x, align 4, !dbg !2330
  %idxprom34 = sext i16 %14 to i64, !dbg !2329
  %arrayidx35 = getelementptr inbounds i16, ptr %13, i64 %idxprom34, !dbg !2329
    #dbg_value(ptr %arrayidx35, !2264, !DIExpression(), !2298)
  %15 = load i16, ptr %pos_y36, align 2, !dbg !2331
  %idxprom37 = sext i16 %15 to i64, !dbg !2332
  %arrayidx38 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom37, !dbg !2332
  %16 = load ptr, ptr %arrayidx38, align 8, !dbg !2332
  %17 = load i16, ptr %pos_x39, align 4, !dbg !2333
  %idxprom40 = sext i16 %17 to i64, !dbg !2332
  %arrayidx41 = getelementptr inbounds i16, ptr %16, i64 %idxprom40, !dbg !2332
    #dbg_value(ptr %arrayidx41, !2263, !DIExpression(), !2298)
  %qp = getelementptr inbounds i8, ptr %arrayidx31, i64 68, !dbg !2334
  %qpc = getelementptr inbounds i8, ptr %arrayidx31, i64 72, !dbg !2334
  %arrayidx46 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom45, !dbg !2334
  %qp.sink = select i1 %tobool.not, ptr %qp, ptr %arrayidx46, !dbg !2334
  %18 = load i32, ptr %qp.sink, align 4, !dbg !2335
  %19 = load i32, ptr %qp53.sink, align 4, !dbg !2335
  %add54 = add nsw i32 %19, %18, !dbg !2335
  %cond58.in = add nsw i32 %add54, 1, !dbg !2335
  %cond58 = ashr i32 %cond58.in, 1, !dbg !2334
    #dbg_value(i32 %cond58, !2254, !DIExpression(), !2298)
  %add59 = add nsw i32 %cond58, %conv, !dbg !2336
    #dbg_value(i32 0, !2337, !DIExpression(), !2344)
    #dbg_value(i32 51, !2342, !DIExpression(), !2344)
    #dbg_value(i32 %add59, !2343, !DIExpression(), !2344)
    #dbg_value(i32 %add59, !2346, !DIExpression(), !2352)
    #dbg_value(i32 0, !2351, !DIExpression(), !2352)
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add59, i32 0), !dbg !2354
    #dbg_value(i32 %cond.i.i, !2343, !DIExpression(), !2344)
    #dbg_value(i32 %cond.i.i, !2355, !DIExpression(), !2359)
    #dbg_value(i32 51, !2358, !DIExpression(), !2359)
  %20 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !2361
    #dbg_value(i32 %20, !2343, !DIExpression(), !2344)
    #dbg_value(i32 %20, !2251, !DIExpression(), !2298)
  %add60 = add nsw i32 %cond58, %conv13, !dbg !2362
    #dbg_value(i32 0, !2337, !DIExpression(), !2363)
    #dbg_value(i32 51, !2342, !DIExpression(), !2363)
    #dbg_value(i32 %add60, !2343, !DIExpression(), !2363)
    #dbg_value(i32 %add60, !2346, !DIExpression(), !2365)
    #dbg_value(i32 0, !2351, !DIExpression(), !2365)
  %cond.i.i436 = call noundef i32 @llvm.smax.i32(i32 %add60, i32 0), !dbg !2367
    #dbg_value(i32 %cond.i.i436, !2343, !DIExpression(), !2363)
    #dbg_value(i32 %cond.i.i436, !2355, !DIExpression(), !2368)
    #dbg_value(i32 51, !2358, !DIExpression(), !2368)
  %21 = call i32 @llvm.umin.i32(i32 %cond.i.i436, i32 51), !dbg !2370
    #dbg_value(i32 %21, !2343, !DIExpression(), !2363)
    #dbg_value(i32 %21, !2252, !DIExpression(), !2298)
  %idxprom62 = zext nneg i32 %20 to i64, !dbg !2371
  %arrayidx63 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom62, !dbg !2371
  %22 = load i8, ptr %arrayidx63, align 1, !dbg !2371
  %conv64 = zext i8 %22 to i32, !dbg !2371
  %mul = mul nsw i32 %cond10, %conv64, !dbg !2372
    #dbg_value(i32 %mul, !2247, !DIExpression(), !2298)
  %idxprom65 = zext nneg i32 %21 to i64, !dbg !2373
  %arrayidx66 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom65, !dbg !2373
  %23 = load i8, ptr %arrayidx66, align 1, !dbg !2373
  %conv67 = zext i8 %23 to i32, !dbg !2373
  %mul68 = mul nsw i32 %cond10, %conv67, !dbg !2374
    #dbg_value(i32 %mul68, !2248, !DIExpression(), !2298)
  %arrayidx70 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom62, !dbg !2375
    #dbg_value(ptr %arrayidx70, !2249, !DIExpression(), !2298)
  %24 = load i16, ptr %arrayidx41, align 2, !dbg !2376
    #dbg_value(i16 %24, !2243, !DIExpression(), !2298)
  %25 = load i16, ptr %arrayidx35, align 2, !dbg !2377
    #dbg_value(i16 %25, !2244, !DIExpression(), !2298)
  %conv74 = zext i16 %25 to i32, !dbg !2378
  %conv75 = zext i16 %24 to i32, !dbg !2379
  %sub76 = sub nsw i32 %conv74, %conv75, !dbg !2380
    #dbg_value(i32 %sub76, !80, !DIExpression(), !2381)
    #dbg_value(i32 %sub76, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2381)
  %sub.i = call i32 @llvm.abs.i32(i32 %sub76, i1 true), !dbg !2383
  %cmp78 = icmp slt i32 %sub.i, %mul, !dbg !2384
  br i1 %cmp78, label %if.then80, label %for.inc, !dbg !2385

if.then80:                                        ; preds = %if.then26
  %arrayidx81 = getelementptr inbounds i8, ptr %arrayidx41, i64 -2, !dbg !2386
  %26 = load i16, ptr %arrayidx81, align 2, !dbg !2386
    #dbg_value(i16 %26, !2242, !DIExpression(), !2298)
  %arrayidx82 = getelementptr inbounds i8, ptr %arrayidx35, i64 2, !dbg !2387
  %27 = load i16, ptr %arrayidx82, align 2, !dbg !2387
    #dbg_value(i16 %27, !2245, !DIExpression(), !2298)
  %conv84 = zext i16 %27 to i32, !dbg !2388
  %sub85 = sub nsw i32 %conv74, %conv84, !dbg !2389
    #dbg_value(i32 %sub85, !80, !DIExpression(), !2390)
    #dbg_value(i32 %sub85, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2390)
  %sub.i438 = call i32 @llvm.abs.i32(i32 %sub85, i1 true), !dbg !2392
  %cmp87 = icmp slt i32 %sub.i438, %mul68, !dbg !2393
  br i1 %cmp87, label %land.lhs.true, label %for.inc, !dbg !2394

land.lhs.true:                                    ; preds = %if.then80
  %conv90 = zext i16 %26 to i32, !dbg !2395
  %sub91 = sub nsw i32 %conv75, %conv90, !dbg !2396
    #dbg_value(i32 %sub91, !80, !DIExpression(), !2397)
    #dbg_value(i32 %sub91, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2397)
  %sub.i439 = call i32 @llvm.abs.i32(i32 %sub91, i1 true), !dbg !2399
  %cmp93 = icmp ult i32 %sub.i439, %mul68, !dbg !2400
  br i1 %cmp93, label %if.then95, label %for.inc, !dbg !2401

if.then95:                                        ; preds = %land.lhs.true
  %arrayidx96 = getelementptr inbounds i8, ptr %arrayidx41, i64 -4, !dbg !2402
  %28 = load i16, ptr %arrayidx96, align 2, !dbg !2402
    #dbg_value(i16 %28, !2241, !DIExpression(), !2298)
  %arrayidx97 = getelementptr inbounds i8, ptr %arrayidx35, i64 4, !dbg !2403
  %29 = load i16, ptr %arrayidx97, align 2, !dbg !2403
    #dbg_value(i16 %29, !2246, !DIExpression(), !2298)
  %cmp98 = icmp eq i8 %9, 4, !dbg !2404
  %add103 = add nuw nsw i32 %conv74, %conv75, !dbg !2405
  br i1 %cmp98, label %if.then100, label %if.else222, !dbg !2406

if.then100:                                       ; preds = %if.then95
    #dbg_value(i32 %add103, !2265, !DIExpression(), !2407)
    #dbg_value(i32 %sub76, !80, !DIExpression(), !2408)
    #dbg_value(i32 %sub76, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2408)
  %shr108 = lshr i32 %mul, 2, !dbg !2410
  %add109 = add nuw nsw i32 %shr108, 2, !dbg !2411
  %cmp110 = icmp ult i32 %sub.i, %add109, !dbg !2412
    #dbg_value(i1 %cmp110, !2281, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2407)
  %conv113 = zext i16 %29 to i32, !dbg !2413
  %sub114 = sub nsw i32 %conv74, %conv113, !dbg !2414
    #dbg_value(i32 %sub114, !80, !DIExpression(), !2415)
    #dbg_value(i32 %sub114, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2415)
  %sub.i441 = call i32 @llvm.abs.i32(i32 %sub114, i1 true), !dbg !2417
  %cmp116 = icmp ult i32 %sub.i441, %mul68, !dbg !2418
  %and434 = and i1 %cmp110, %cmp116, !dbg !2419
    #dbg_value(i1 %and434, !2282, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2407)
  %conv119 = zext i16 %28 to i32, !dbg !2420
  %sub120 = sub nsw i32 %conv75, %conv119, !dbg !2421
    #dbg_value(i32 %sub120, !80, !DIExpression(), !2422)
    #dbg_value(i32 %sub120, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2422)
  %sub.i442 = call i32 @llvm.abs.i32(i32 %sub120, i1 true), !dbg !2424
  %cmp122 = icmp ult i32 %sub.i442, %mul68, !dbg !2425
  %and124435 = and i1 %cmp110, %cmp122, !dbg !2426
    #dbg_value(i1 %and124435, !2283, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2407)
  br i1 %and124435, label %if.then126, label %if.else, !dbg !2427

if.then126:                                       ; preds = %if.then100
  %arrayidx127 = getelementptr inbounds i8, ptr %arrayidx41, i64 -6, !dbg !2428
  %30 = load i16, ptr %arrayidx127, align 2, !dbg !2428
  %conv128 = zext i16 %30 to i32, !dbg !2428
    #dbg_value(i32 %conv128, !2284, !DIExpression(), !2429)
  %add130 = add nuw nsw i32 %conv128, %conv119, !dbg !2430
  %shl = shl nuw nsw i32 %add130, 1, !dbg !2431
  %add132 = add nuw nsw i32 %add103, 4, !dbg !2432
  %add134 = add nuw nsw i32 %add132, %conv90, !dbg !2433
  %add135 = add nuw nsw i32 %add134, %conv119, !dbg !2434
  %add136 = add nuw nsw i32 %add135, %shl, !dbg !2435
  %shr137 = lshr i32 %add136, 3, !dbg !2436
  %conv138 = trunc nuw i32 %shr137 to i16, !dbg !2437
  store i16 %conv138, ptr %arrayidx96, align 2, !dbg !2438
  %add144 = add nuw nsw i32 %add103, 2, !dbg !2439
  %add146 = add nuw nsw i32 %add144, %conv90, !dbg !2440
  %add147 = add nuw nsw i32 %add146, %conv119, !dbg !2441
  %shr148 = lshr i32 %add147, 2, !dbg !2442
  %conv149 = trunc nuw i32 %shr148 to i16, !dbg !2443
  store i16 %conv149, ptr %arrayidx81, align 2, !dbg !2444
  %add153 = add nuw nsw i32 %add103, %conv90, !dbg !2445
  %shl154 = shl nuw nsw i32 %add153, 1, !dbg !2446
  %add155 = add nuw nsw i32 %conv84, 4, !dbg !2447
  %add157 = add nuw nsw i32 %add155, %shl154, !dbg !2448
  %add158 = add nuw nsw i32 %add157, %conv119, !dbg !2449
  %shr159 = lshr i32 %add158, 3, !dbg !2450
  br label %if.end, !dbg !2451

if.else:                                          ; preds = %if.then100
  %shl163 = shl nuw nsw i32 %conv90, 1, !dbg !2452
  %add165 = add nuw nsw i32 %conv75, 2, !dbg !2454
  %add167 = add nuw nsw i32 %add165, %shl163, !dbg !2455
  %add168 = add nuw nsw i32 %add167, %conv84, !dbg !2456
  %shr169 = lshr i32 %add168, 2, !dbg !2457
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then126
  %storemerge.in = phi i32 [ %shr169, %if.else ], [ %shr159, %if.then126 ]
  %storemerge = trunc nuw i32 %storemerge.in to i16, !dbg !2458
  store i16 %storemerge, ptr %arrayidx41, align 2, !dbg !2458
  br i1 %and434, label %if.then173, label %if.else210, !dbg !2459

if.then173:                                       ; preds = %if.end
  %arrayidx174 = getelementptr inbounds i8, ptr %arrayidx35, i64 6, !dbg !2460
  %31 = load i16, ptr %arrayidx174, align 2, !dbg !2460
    #dbg_value(i16 %31, !2287, !DIExpression(), !2461)
  %add177 = add nuw nsw i32 %add103, %conv84, !dbg !2462
  %shl178 = shl nuw nsw i32 %add177, 1, !dbg !2463
  %add179 = add nuw nsw i32 %conv90, 4, !dbg !2464
  %add181 = add nuw nsw i32 %add179, %shl178, !dbg !2465
  %add182 = add nuw nsw i32 %add181, %conv113, !dbg !2466
  %shr183 = lshr i32 %add182, 3, !dbg !2467
  %conv184 = trunc nuw i32 %shr183 to i16, !dbg !2468
  store i16 %conv184, ptr %arrayidx35, align 2, !dbg !2469
  %add190 = add nuw nsw i32 %add103, 2, !dbg !2470
  %add192 = add nuw nsw i32 %add190, %conv84, !dbg !2471
  %add193 = add nuw nsw i32 %add192, %conv113, !dbg !2472
  %shr194 = lshr i32 %add193, 2, !dbg !2473
  %conv195 = trunc nuw i32 %shr194 to i16, !dbg !2474
  store i16 %conv195, ptr %arrayidx82, align 2, !dbg !2475
  %conv197 = zext i16 %31 to i32, !dbg !2476
  %add199 = add nuw nsw i32 %conv197, %conv113, !dbg !2477
  %shl200 = shl nuw nsw i32 %add199, 1, !dbg !2478
  %add202 = add nuw nsw i32 %add103, 4, !dbg !2479
  %add204 = add nuw nsw i32 %add202, %conv84, !dbg !2480
  %add205 = add nuw nsw i32 %add204, %conv113, !dbg !2481
  %add206 = add nuw nsw i32 %add205, %shl200, !dbg !2482
  %shr207 = lshr i32 %add206, 3, !dbg !2483
  %conv208 = trunc nuw i32 %shr207 to i16, !dbg !2484
  store i16 %conv208, ptr %arrayidx97, align 2, !dbg !2485
  br label %for.inc, !dbg !2486

if.else210:                                       ; preds = %if.end
  %shl212 = shl nuw nsw i32 %conv84, 1, !dbg !2487
  %add214 = add nuw nsw i32 %conv74, 2, !dbg !2489
  %add216 = add nuw nsw i32 %add214, %conv90, !dbg !2490
  %add217 = add nuw nsw i32 %add216, %shl212, !dbg !2491
  %shr218 = lshr i32 %add217, 2, !dbg !2492
  %conv219 = trunc nuw i32 %shr218 to i16, !dbg !2493
  store i16 %conv219, ptr %arrayidx35, align 2, !dbg !2494
  br label %for.inc

if.else222:                                       ; preds = %if.then95
  %add227 = add nuw nsw i32 %add103, 1, !dbg !2495
  %shr228 = lshr i32 %add227, 1, !dbg !2496
    #dbg_value(i32 %shr228, !2290, !DIExpression(), !2497)
  %conv231 = zext i16 %29 to i32, !dbg !2498
  %sub232 = sub nsw i32 %conv74, %conv231, !dbg !2499
    #dbg_value(i32 %sub232, !80, !DIExpression(), !2500)
    #dbg_value(i32 %sub232, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2500)
  %sub.i443 = call i32 @llvm.abs.i32(i32 %sub232, i1 true), !dbg !2502
  %cmp234 = icmp ult i32 %sub.i443, %mul68, !dbg !2503
  %conv235 = zext i1 %cmp234 to i32, !dbg !2503
    #dbg_value(i32 %conv235, !2292, !DIExpression(), !2497)
  %conv238 = zext i16 %28 to i32, !dbg !2504
  %sub239 = sub nsw i32 %conv75, %conv238, !dbg !2505
    #dbg_value(i32 %sub239, !80, !DIExpression(), !2506)
    #dbg_value(i32 %sub239, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2506)
  %sub.i444 = call i32 @llvm.abs.i32(i32 %sub239, i1 true), !dbg !2508
  %cmp241 = icmp ult i32 %sub.i444, %mul68, !dbg !2509
  %conv242 = zext i1 %cmp241 to i32, !dbg !2509
    #dbg_value(i32 %conv242, !2293, !DIExpression(), !2497)
  %idxprom243 = zext i8 %9 to i64, !dbg !2510
  %arrayidx244 = getelementptr inbounds i8, ptr %arrayidx70, i64 %idxprom243, !dbg !2510
  %32 = load i8, ptr %arrayidx244, align 1, !dbg !2510
  %conv245 = zext i8 %32 to i32, !dbg !2510
  %mul246 = mul nsw i32 %cond10, %conv245, !dbg !2511
    #dbg_value(i32 %mul246, !2294, !DIExpression(), !2497)
  %add247 = add nuw nsw i32 %conv235, %conv242, !dbg !2512
  %add248 = add i32 %add247, %mul246, !dbg !2513
    #dbg_value(i32 %add248, !2295, !DIExpression(), !2497)
  %sub249 = sub nsw i32 0, %add248, !dbg !2514
  %shl253 = shl nsw i32 %sub76, 2, !dbg !2515
  %sub256 = add nsw i32 %shl253, 4, !dbg !2516
  %add257 = add nsw i32 %sub256, %conv90, !dbg !2517
  %add258 = sub nsw i32 %add257, %conv84, !dbg !2518
  %shr259 = ashr i32 %add258, 3, !dbg !2519
    #dbg_value(i32 %sub249, !2337, !DIExpression(), !2520)
    #dbg_value(i32 %add248, !2342, !DIExpression(), !2520)
    #dbg_value(i32 %shr259, !2343, !DIExpression(), !2520)
    #dbg_value(i32 %shr259, !2346, !DIExpression(), !2522)
    #dbg_value(i32 %sub249, !2351, !DIExpression(), !2522)
  %cond.i.i445 = call noundef i32 @llvm.smax.i32(i32 %shr259, i32 %sub249), !dbg !2524
    #dbg_value(i32 %cond.i.i445, !2343, !DIExpression(), !2520)
    #dbg_value(i32 %cond.i.i445, !2355, !DIExpression(), !2525)
    #dbg_value(i32 %add248, !2358, !DIExpression(), !2525)
  %cond.i4.i446 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i445, i32 %add248), !dbg !2527
    #dbg_value(i32 %cond.i4.i446, !2343, !DIExpression(), !2520)
    #dbg_value(i32 %cond.i4.i446, !2296, !DIExpression(), !2497)
  %cmp263 = icmp ne i32 %mul246, 0
  %or.cond = and i1 %cmp241, %cmp263, !dbg !2528
  br i1 %or.cond, label %if.then265, label %if.end277, !dbg !2528

if.then265:                                       ; preds = %if.else222
  %sub266 = sub nsw i32 0, %mul246, !dbg !2530
  %33 = shl nuw nsw i32 %conv90, 1, !dbg !2531
  %add268 = sub nsw i32 %shr228, %33, !dbg !2531
  %sub271 = add nsw i32 %add268, %conv238, !dbg !2532
  %shr272 = ashr i32 %sub271, 1, !dbg !2533
    #dbg_value(i32 %sub266, !2337, !DIExpression(), !2534)
    #dbg_value(i32 %mul246, !2342, !DIExpression(), !2534)
    #dbg_value(i32 %shr272, !2343, !DIExpression(), !2534)
    #dbg_value(i32 %shr272, !2346, !DIExpression(), !2536)
    #dbg_value(i32 %sub266, !2351, !DIExpression(), !2536)
  %cond.i.i447 = call noundef i32 @llvm.smax.i32(i32 %shr272, i32 %sub266), !dbg !2538
    #dbg_value(i32 %cond.i.i447, !2343, !DIExpression(), !2534)
    #dbg_value(i32 %cond.i.i447, !2355, !DIExpression(), !2539)
    #dbg_value(i32 %mul246, !2358, !DIExpression(), !2539)
  %cond.i4.i448 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i447, i32 %mul246), !dbg !2541
    #dbg_value(i32 %cond.i4.i448, !2343, !DIExpression(), !2534)
  %34 = trunc i32 %cond.i4.i448 to i16, !dbg !2542
  %conv276 = add i16 %26, %34, !dbg !2542
  store i16 %conv276, ptr %arrayidx81, align 2, !dbg !2542
  br label %if.end277, !dbg !2543

if.end277:                                        ; preds = %if.then265, %if.else222
  %tobool278.not = icmp eq i32 %cond.i4.i446, 0, !dbg !2544
  br i1 %tobool278.not, label %if.end288, label %if.then279, !dbg !2546

if.then279:                                       ; preds = %if.end277
  %add281 = add nsw i32 %cond.i4.i446, %conv75, !dbg !2547
    #dbg_value(i32 %3, !2549, !DIExpression(), !2553)
    #dbg_value(i32 %add281, !2552, !DIExpression(), !2553)
    #dbg_value(i32 %add281, !2346, !DIExpression(), !2555)
    #dbg_value(i32 0, !2351, !DIExpression(), !2555)
  %cond.i.i449 = call noundef i32 @llvm.smax.i32(i32 %add281, i32 0), !dbg !2557
    #dbg_value(i32 %cond.i.i449, !2552, !DIExpression(), !2553)
    #dbg_value(i32 %cond.i.i449, !2355, !DIExpression(), !2558)
    #dbg_value(i32 %3, !2358, !DIExpression(), !2558)
  %cond.i4.i450 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i449, i32 %3), !dbg !2560
    #dbg_value(i32 %cond.i4.i450, !2552, !DIExpression(), !2553)
  %conv283 = trunc i32 %cond.i4.i450 to i16, !dbg !2561
  store i16 %conv283, ptr %arrayidx41, align 2, !dbg !2562
  %sub285 = sub nsw i32 %conv74, %cond.i4.i446, !dbg !2563
    #dbg_value(i32 %3, !2549, !DIExpression(), !2564)
    #dbg_value(i32 %sub285, !2552, !DIExpression(), !2564)
    #dbg_value(i32 %sub285, !2346, !DIExpression(), !2566)
    #dbg_value(i32 0, !2351, !DIExpression(), !2566)
  %cond.i.i451 = call noundef i32 @llvm.smax.i32(i32 %sub285, i32 0), !dbg !2568
    #dbg_value(i32 %cond.i.i451, !2552, !DIExpression(), !2564)
    #dbg_value(i32 %cond.i.i451, !2355, !DIExpression(), !2569)
    #dbg_value(i32 %3, !2358, !DIExpression(), !2569)
  %cond.i4.i452 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i451, i32 %3), !dbg !2571
    #dbg_value(i32 %cond.i4.i452, !2552, !DIExpression(), !2564)
  %conv287 = trunc i32 %cond.i4.i452 to i16, !dbg !2572
  store i16 %conv287, ptr %arrayidx35, align 2, !dbg !2573
  br label %if.end288, !dbg !2574

if.end288:                                        ; preds = %if.then279, %if.end277
  %or.cond313 = and i1 %cmp234, %cmp263, !dbg !2575
  br i1 %or.cond313, label %if.then293, label %for.inc, !dbg !2575

if.then293:                                       ; preds = %if.end288
  %sub294 = sub nsw i32 0, %mul246, !dbg !2577
  %35 = shl nuw nsw i32 %conv84, 1, !dbg !2578
  %add296 = sub nsw i32 %shr228, %35, !dbg !2578
  %sub299 = add nsw i32 %add296, %conv231, !dbg !2579
  %shr300 = ashr i32 %sub299, 1, !dbg !2580
    #dbg_value(i32 %sub294, !2337, !DIExpression(), !2581)
    #dbg_value(i32 %mul246, !2342, !DIExpression(), !2581)
    #dbg_value(i32 %shr300, !2343, !DIExpression(), !2581)
    #dbg_value(i32 %shr300, !2346, !DIExpression(), !2583)
    #dbg_value(i32 %sub294, !2351, !DIExpression(), !2583)
  %cond.i.i453 = call noundef i32 @llvm.smax.i32(i32 %shr300, i32 %sub294), !dbg !2585
    #dbg_value(i32 %cond.i.i453, !2343, !DIExpression(), !2581)
    #dbg_value(i32 %cond.i.i453, !2355, !DIExpression(), !2586)
    #dbg_value(i32 %mul246, !2358, !DIExpression(), !2586)
  %cond.i4.i454 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i453, i32 %mul246), !dbg !2588
    #dbg_value(i32 %cond.i4.i454, !2343, !DIExpression(), !2581)
  %36 = load i16, ptr %arrayidx82, align 2, !dbg !2589
  %37 = trunc i32 %cond.i4.i454 to i16, !dbg !2589
  %conv305 = add i16 %36, %37, !dbg !2589
  store i16 %conv305, ptr %arrayidx82, align 2, !dbg !2589
  br label %for.inc, !dbg !2590

for.inc:                                          ; preds = %if.end288, %if.then293, %if.then173, %if.else210, %for.body, %if.then26, %land.lhs.true, %if.then80, %if.then20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2591
    #dbg_value(i64 %indvars.iv.next, !2239, !DIExpression(), !2298)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2315
  br i1 %exitcond.not, label %if.end312, label %for.body, !dbg !2316, !llvm.loop !2592

if.end312:                                        ; preds = %for.inc, %cond.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !2594
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !2594
  ret void, !dbg !2594
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaHorMBAff(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #1 !dbg !2595 {
entry:
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !2664
    #dbg_assign(i1 undef, !2608, !DIExpression(), !2664, ptr %pixP, !DIExpression(), !2665)
  %pixQ = alloca %struct.pix_pos, align 4, !DIAssignID !2666
    #dbg_assign(i1 undef, !2609, !DIExpression(), !2666, ptr %pixQ, !DIExpression(), !2665)
    #dbg_value(i32 %pl, !2597, !DIExpression(), !2665)
    #dbg_value(ptr %Img, !2598, !DIExpression(), !2665)
    #dbg_value(ptr %Strength, !2599, !DIExpression(), !2665)
    #dbg_value(ptr %MbQ, !2600, !DIExpression(), !2665)
    #dbg_value(i32 %edge, !2601, !DIExpression(), !2665)
    #dbg_value(ptr %p, !2602, !DIExpression(), !2665)
  %iLumaStride = getelementptr inbounds i8, ptr %p, i64 356, !dbg !2667
  %0 = load i32, ptr %iLumaStride, align 4, !dbg !2667
    #dbg_value(i32 %0, !2603, !DIExpression(), !2665)
  %tobool.not = icmp eq i32 %pl, 0, !dbg !2668
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !2668

cond.true:                                        ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !2669
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !2669
  %idxprom = sext i32 %1 to i64, !dbg !2670
  %arrayidx = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom, !dbg !2670
  %2 = load i32, ptr %arrayidx, align 4, !dbg !2670
  br label %cond.end, !dbg !2668

cond.end:                                         ; preds = %entry, %cond.true
  %cond14.in.v = phi i64 [ 849048, %cond.true ], [ 849044, %entry ], !dbg !2668
  %cond = phi i32 [ %2, %cond.true ], [ 16, %entry ], !dbg !2668
    #dbg_value(i32 %cond, !2606, !DIExpression(), !2665)
  %cmp = icmp slt i32 %edge, 16, !dbg !2671
  %cond4 = select i1 %cmp, i32 %edge, i32 1, !dbg !2672
    #dbg_value(i32 %cond4, !2607, !DIExpression(), !2665)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !2673
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !2673
  %p_Vid5 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !2674
  %3 = load ptr, ptr %p_Vid5, align 8, !dbg !2674
    #dbg_value(ptr %3, !2610, !DIExpression(), !2665)
  %cond14.in = getelementptr inbounds i8, ptr %3, i64 %cond14.in.v, !dbg !2675
  %cond14 = load i32, ptr %cond14.in, align 4, !dbg !2675
    #dbg_value(i32 %cond14, !2611, !DIExpression(), !2665)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %3, i64 849072, !dbg !2676
  %idxprom15 = zext i32 %pl to i64, !dbg !2677
  %arrayidx16 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom15, !dbg !2677
  %4 = load i32, ptr %arrayidx16, align 4, !dbg !2677
    #dbg_value(i32 %4, !2612, !DIExpression(), !2665)
  %sub = add nsw i32 %cond4, -1, !dbg !2678
  %mb_size = getelementptr inbounds i8, ptr %3, i64 849124, !dbg !2679
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7, !dbg !2680
  %5 = load i32, ptr %pixP, align 4, !dbg !2681
  %tobool18.not = icmp eq i32 %5, 0, !dbg !2682
  br i1 %tobool18.not, label %lor.lhs.false, label %if.then, !dbg !2683

lor.lhs.false:                                    ; preds = %cond.end
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !2684
  %6 = load i16, ptr %DFDisableIdc, align 8, !dbg !2684
  %cmp19 = icmp eq i16 %6, 0, !dbg !2685
  br i1 %cmp19, label %if.then, label %if.end362, !dbg !2686

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !2687
  %7 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !2687
  %conv21 = sext i16 %7 to i32, !dbg !2688
    #dbg_value(i32 %conv21, !2613, !DIExpression(), !2689)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !2690
  %8 = load i16, ptr %DFBetaOffset, align 4, !dbg !2690
  %conv22 = sext i16 %8 to i32, !dbg !2691
    #dbg_value(i32 %conv22, !2616, !DIExpression(), !2689)
  %mb_data = getelementptr inbounds i8, ptr %3, i64 848888, !dbg !2692
  %9 = load ptr, ptr %mb_data, align 8, !dbg !2692
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4, !dbg !2693
  %10 = load i32, ptr %mb_addr, align 4, !dbg !2693
  %idxprom23 = sext i32 %10 to i64, !dbg !2694
  %arrayidx24 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom23, !dbg !2694
    #dbg_value(ptr %arrayidx24, !2617, !DIExpression(), !2689)
  %mb_field = getelementptr inbounds i8, ptr %arrayidx24, i64 384, !dbg !2695
  %11 = load i32, ptr %mb_field, align 8, !dbg !2695
  %tobool25.not = icmp eq i32 %11, 0, !dbg !2696
  %mb_field32.phi.trans.insert = getelementptr inbounds i8, ptr %MbQ, i64 384
  %.pre = load i32, ptr %mb_field32.phi.trans.insert, align 8, !dbg !2689
  %tobool27.not = icmp eq i32 %.pre, 0, !dbg !2697
  %not.tobool25.not = xor i1 %tobool25.not, true, !dbg !2697
  %narrow531 = select i1 %not.tobool25.not, i1 %tobool27.not, i1 false, !dbg !2697
  %spec.select = zext i1 %narrow531 to i32, !dbg !2697
  %cond31 = shl nsw i32 %0, %spec.select, !dbg !2697
    #dbg_value(i32 %cond31, !2618, !DIExpression(), !2689)
  %tobool33.not = icmp ne i32 %.pre, 0, !dbg !2698
  %narrow = and i1 %tobool25.not, %tobool33.not, !dbg !2699
  %spec.select505 = zext i1 %narrow to i32, !dbg !2699
  %cond41 = shl nsw i32 %0, %spec.select505, !dbg !2699
    #dbg_value(i32 %cond41, !2619, !DIExpression(), !2689)
  %qp = getelementptr inbounds i8, ptr %arrayidx24, i64 68, !dbg !2700
  %qp53 = getelementptr inbounds i8, ptr %MbQ, i64 68, !dbg !2700
  %qpc = getelementptr inbounds i8, ptr %arrayidx24, i64 72, !dbg !2700
  %sub44 = add i32 %pl, -1, !dbg !2700
  %idxprom45 = zext i32 %sub44 to i64, !dbg !2700
  %arrayidx46 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom45, !dbg !2700
  %qpc47 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !2700
  %arrayidx50 = getelementptr inbounds [2 x i32], ptr %qpc47, i64 0, i64 %idxprom45, !dbg !2700
  %qp53.sink = select i1 %tobool.not, ptr %qp53, ptr %arrayidx50, !dbg !2700
  %.sink530.in = select i1 %tobool.not, ptr %qp, ptr %arrayidx46, !dbg !2700
  %.sink530 = load i32, ptr %.sink530.in, align 4, !dbg !2701
  %12 = load i32, ptr %qp53.sink, align 4, !dbg !2701
  %add54 = add nsw i32 %12, %.sink530, !dbg !2701
  %cond58.in = add nsw i32 %add54, 1, !dbg !2701
  %cond58 = ashr i32 %cond58.in, 1, !dbg !2700
    #dbg_value(i32 %cond58, !2620, !DIExpression(), !2689)
  %add59 = add nsw i32 %cond58, %conv21, !dbg !2702
    #dbg_value(i32 0, !2337, !DIExpression(), !2703)
    #dbg_value(i32 51, !2342, !DIExpression(), !2703)
    #dbg_value(i32 %add59, !2343, !DIExpression(), !2703)
    #dbg_value(i32 %add59, !2346, !DIExpression(), !2705)
    #dbg_value(i32 0, !2351, !DIExpression(), !2705)
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add59, i32 0), !dbg !2707
    #dbg_value(i32 %cond.i.i, !2343, !DIExpression(), !2703)
    #dbg_value(i32 %cond.i.i, !2355, !DIExpression(), !2708)
    #dbg_value(i32 51, !2358, !DIExpression(), !2708)
  %13 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !2710
    #dbg_value(i32 %13, !2343, !DIExpression(), !2703)
    #dbg_value(i32 %13, !2621, !DIExpression(), !2689)
  %add60 = add nsw i32 %cond58, %conv22, !dbg !2711
    #dbg_value(i32 0, !2337, !DIExpression(), !2712)
    #dbg_value(i32 51, !2342, !DIExpression(), !2712)
    #dbg_value(i32 %add60, !2343, !DIExpression(), !2712)
    #dbg_value(i32 %add60, !2346, !DIExpression(), !2714)
    #dbg_value(i32 0, !2351, !DIExpression(), !2714)
  %cond.i.i506 = call noundef i32 @llvm.smax.i32(i32 %add60, i32 0), !dbg !2716
    #dbg_value(i32 %cond.i.i506, !2343, !DIExpression(), !2712)
    #dbg_value(i32 %cond.i.i506, !2355, !DIExpression(), !2717)
    #dbg_value(i32 51, !2358, !DIExpression(), !2717)
  %14 = call i32 @llvm.umin.i32(i32 %cond.i.i506, i32 51), !dbg !2719
    #dbg_value(i32 %14, !2343, !DIExpression(), !2712)
    #dbg_value(i32 %14, !2622, !DIExpression(), !2689)
  %idxprom62 = zext nneg i32 %13 to i64, !dbg !2720
  %arrayidx63 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom62, !dbg !2720
  %15 = load i8, ptr %arrayidx63, align 1, !dbg !2720
  %conv64 = zext i8 %15 to i32, !dbg !2720
  %mul65 = mul nsw i32 %cond14, %conv64, !dbg !2721
    #dbg_value(i32 %mul65, !2623, !DIExpression(), !2689)
  %idxprom66 = zext nneg i32 %14 to i64, !dbg !2722
  %arrayidx67 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom66, !dbg !2722
  %16 = load i8, ptr %arrayidx67, align 1, !dbg !2722
  %conv68 = zext i8 %16 to i32, !dbg !2722
  %mul69 = mul nsw i32 %cond14, %conv68, !dbg !2723
    #dbg_value(i32 %mul69, !2624, !DIExpression(), !2689)
  %or = or i32 %mul69, %mul65, !dbg !2724
  %cmp70.not = icmp eq i32 %or, 0, !dbg !2725
  br i1 %cmp70.not, label %if.end362, label %if.then72, !dbg !2726

if.then72:                                        ; preds = %if.then
  %arrayidx74 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom62, !dbg !2727
    #dbg_value(ptr %arrayidx74, !2625, !DIExpression(), !2728)
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %cond4, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixQ) #7, !dbg !2729
    #dbg_value(i32 0, !2604, !DIExpression(), !2665)
  %cmp79525 = icmp sgt i32 %cond, 0, !dbg !2730
  br i1 %cmp79525, label %for.body.lr.ph, label %if.end362, !dbg !2731

for.body.lr.ph:                                   ; preds = %if.then72
  %pos_y = getelementptr inbounds i8, ptr %pixQ, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixQ, i64 12
  %pos_y91 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x94 = getelementptr inbounds i8, ptr %pixP, i64 12
  %sub104 = sub nsw i32 0, %cond41
  %idxprom105 = sext i32 %sub104 to i64
  %idxprom107 = sext i32 %cond31 to i64
  %mul124 = shl nsw i32 %sub104, 1
  %idxprom125 = sext i32 %mul124 to i64
  %mul127 = shl nsw i32 %cond31, 1
  %idxprom128 = sext i32 %mul127 to i64
  %idx.ext = sext i32 %cond41 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %shr140 = lshr i32 %mul65, 2
  %add141 = add nuw nsw i32 %shr140, 2
  %mul160 = mul i32 %cond41, -3
  %idxprom161 = sext i32 %mul160 to i64
  %mul214 = mul nsw i32 %cond31, 3
  %idxprom215 = sext i32 %mul214 to i64
  %wide.trip.count = zext nneg i32 %cond to i64, !dbg !2730
  br label %for.body, !dbg !2731

for.body:                                         ; preds = %for.body.lr.ph, %if.end356
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end356 ]
    #dbg_value(i64 %indvars.iv, !2604, !DIExpression(), !2665)
  %arrayidx82 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv, !dbg !2732
  %17 = load i8, ptr %arrayidx82, align 1, !dbg !2732
    #dbg_value(i8 %17, !2605, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2665)
  %cmp84.not = icmp eq i8 %17, 0, !dbg !2733
  br i1 %cmp84.not, label %if.end356, label %if.then86, !dbg !2734

if.then86:                                        ; preds = %for.body
  %18 = load i16, ptr %pos_y, align 2, !dbg !2735
  %idxprom87 = sext i16 %18 to i64, !dbg !2736
  %arrayidx88 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom87, !dbg !2736
  %19 = load ptr, ptr %arrayidx88, align 8, !dbg !2736
  %20 = load i16, ptr %pos_x, align 4, !dbg !2737
  %idxprom89 = sext i16 %20 to i64, !dbg !2736
  %arrayidx90 = getelementptr inbounds i16, ptr %19, i64 %idxprom89, !dbg !2736
    #dbg_value(ptr %arrayidx90, !2628, !DIExpression(), !2738)
  %21 = load i16, ptr %pos_y91, align 2, !dbg !2739
  %idxprom92 = sext i16 %21 to i64, !dbg !2740
  %arrayidx93 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom92, !dbg !2740
  %22 = load ptr, ptr %arrayidx93, align 8, !dbg !2740
  %23 = load i16, ptr %pos_x94, align 4, !dbg !2741
  %idxprom95 = sext i16 %23 to i64, !dbg !2740
  %arrayidx96 = getelementptr inbounds i16, ptr %22, i64 %idxprom95, !dbg !2740
    #dbg_value(ptr %arrayidx96, !2634, !DIExpression(), !2738)
  %24 = load i16, ptr %arrayidx96, align 2, !dbg !2742
    #dbg_value(i16 %24, !2635, !DIExpression(), !2738)
  %25 = load i16, ptr %arrayidx90, align 2, !dbg !2743
    #dbg_value(i16 %25, !2636, !DIExpression(), !2738)
  %conv97 = zext i16 %25 to i32, !dbg !2744
  %conv98 = zext i16 %24 to i32, !dbg !2745
  %sub99 = sub nsw i32 %conv97, %conv98, !dbg !2746
    #dbg_value(i32 %sub99, !80, !DIExpression(), !2747)
    #dbg_value(i32 %sub99, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2747)
  %sub.i = call i32 @llvm.abs.i32(i32 %sub99, i1 true), !dbg !2749
  %cmp101 = icmp slt i32 %sub.i, %mul65, !dbg !2750
  br i1 %cmp101, label %if.then103, label %if.end356, !dbg !2751

if.then103:                                       ; preds = %if.then86
  %arrayidx106 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom105, !dbg !2752
    #dbg_value(i16 poison, !2637, !DIExpression(), !2753)
  %arrayidx108 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom107, !dbg !2754
  %26 = load i16, ptr %arrayidx108, align 2, !dbg !2754
    #dbg_value(i16 %26, !2640, !DIExpression(), !2753)
  %conv110 = zext i16 %26 to i32, !dbg !2755
  %sub111 = sub nsw i32 %conv97, %conv110, !dbg !2756
    #dbg_value(i32 %sub111, !80, !DIExpression(), !2757)
    #dbg_value(i32 %sub111, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2757)
  %sub.i508 = call i32 @llvm.abs.i32(i32 %sub111, i1 true), !dbg !2759
  %cmp113 = icmp slt i32 %sub.i508, %mul69, !dbg !2760
  br i1 %cmp113, label %land.lhs.true115, label %if.end356, !dbg !2761

land.lhs.true115:                                 ; preds = %if.then103
  %27 = load i16, ptr %arrayidx106, align 2, !dbg !2752
    #dbg_value(i16 %27, !2637, !DIExpression(), !2753)
  %conv117 = zext i16 %27 to i32, !dbg !2762
  %sub118 = sub nsw i32 %conv98, %conv117, !dbg !2763
    #dbg_value(i32 %sub118, !80, !DIExpression(), !2764)
    #dbg_value(i32 %sub118, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2764)
  %sub.i509 = call i32 @llvm.abs.i32(i32 %sub118, i1 true), !dbg !2766
  %cmp120 = icmp ult i32 %sub.i509, %mul69, !dbg !2767
  br i1 %cmp120, label %if.then122, label %if.end356, !dbg !2768

if.then122:                                       ; preds = %land.lhs.true115
  %arrayidx126 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom125, !dbg !2769
  %28 = load i16, ptr %arrayidx126, align 2, !dbg !2769
    #dbg_value(i16 %28, !2641, !DIExpression(), !2770)
  %arrayidx129 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom128, !dbg !2771
  %29 = load i16, ptr %arrayidx129, align 2, !dbg !2771
    #dbg_value(i16 %29, !2644, !DIExpression(), !2770)
  %cmp130 = icmp eq i8 %17, 4, !dbg !2772
  %add135 = add nuw nsw i32 %conv97, %conv98, !dbg !2773
  br i1 %cmp130, label %if.then132, label %if.else267, !dbg !2774

if.then132:                                       ; preds = %if.then122
    #dbg_value(i32 %add135, !2645, !DIExpression(), !2775)
    #dbg_value(i32 %sub99, !80, !DIExpression(), !2776)
    #dbg_value(i32 %sub99, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2776)
  %cmp142 = icmp ult i32 %sub.i, %add141, !dbg !2778
    #dbg_value(i1 %cmp142, !2648, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2775)
  %conv145 = zext i16 %29 to i32, !dbg !2779
  %sub146 = sub nsw i32 %conv97, %conv145, !dbg !2780
    #dbg_value(i32 %sub146, !80, !DIExpression(), !2781)
    #dbg_value(i32 %sub146, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2781)
  %sub.i511 = call i32 @llvm.abs.i32(i32 %sub146, i1 true), !dbg !2783
  %cmp148 = icmp ult i32 %sub.i511, %mul69, !dbg !2784
  %and503 = and i1 %cmp142, %cmp148, !dbg !2785
    #dbg_value(i1 %and503, !2649, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2775)
  %conv151 = zext i16 %28 to i32, !dbg !2786
  %sub152 = sub nsw i32 %conv98, %conv151, !dbg !2787
    #dbg_value(i32 %sub152, !80, !DIExpression(), !2788)
    #dbg_value(i32 %sub152, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2788)
  %sub.i512 = call i32 @llvm.abs.i32(i32 %sub152, i1 true), !dbg !2790
  %cmp154 = icmp ult i32 %sub.i512, %mul69, !dbg !2791
  %and156504 = and i1 %cmp142, %cmp154, !dbg !2792
    #dbg_value(i1 %and156504, !2650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2775)
  br i1 %and156504, label %if.then158, label %if.else, !dbg !2793

if.then158:                                       ; preds = %if.then132
  %arrayidx162 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom161, !dbg !2794
  %30 = load i16, ptr %arrayidx162, align 2, !dbg !2794
    #dbg_value(i16 %30, !2651, !DIExpression(), !2795)
  %conv163 = zext i16 %30 to i32, !dbg !2796
  %add165 = add nuw nsw i32 %conv163, %conv151, !dbg !2797
  %shl = shl nuw nsw i32 %add165, 1, !dbg !2798
  %add167 = add nuw nsw i32 %add135, 4, !dbg !2799
  %add169 = add nuw nsw i32 %add167, %conv117, !dbg !2800
  %add170 = add nuw nsw i32 %add169, %conv151, !dbg !2801
  %add171 = add nuw nsw i32 %add170, %shl, !dbg !2802
  %shr172 = lshr i32 %add171, 3, !dbg !2803
  %conv173 = trunc nuw i32 %shr172 to i16, !dbg !2804
  store i16 %conv173, ptr %arrayidx126, align 2, !dbg !2805
  %add182 = add nuw nsw i32 %add135, 2, !dbg !2806
  %add184 = add nuw nsw i32 %add182, %conv117, !dbg !2807
  %add185 = add nuw nsw i32 %add184, %conv151, !dbg !2808
  %shr186 = lshr i32 %add185, 2, !dbg !2809
  %conv187 = trunc nuw i32 %shr186 to i16, !dbg !2810
  store i16 %conv187, ptr %arrayidx106, align 2, !dbg !2811
  %add193 = add nuw nsw i32 %add135, %conv117, !dbg !2812
  %shl194 = shl nuw nsw i32 %add193, 1, !dbg !2813
  %add195 = add nuw nsw i32 %conv110, 4, !dbg !2814
  %add197 = add nuw nsw i32 %add195, %shl194, !dbg !2815
  %add198 = add nuw nsw i32 %add197, %conv151, !dbg !2816
  %shr199 = lshr i32 %add198, 3, !dbg !2817
  br label %if.end, !dbg !2818

if.else:                                          ; preds = %if.then132
  %shl203 = shl nuw nsw i32 %conv117, 1, !dbg !2819
  %add205 = add nuw nsw i32 %conv98, 2, !dbg !2821
  %add207 = add nuw nsw i32 %add205, %conv110, !dbg !2822
  %add208 = add nuw nsw i32 %add207, %shl203, !dbg !2823
  %shr209 = lshr i32 %add208, 2, !dbg !2824
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then158
  %storemerge.in = phi i32 [ %shr209, %if.else ], [ %shr199, %if.then158 ]
  %storemerge = trunc nuw i32 %storemerge.in to i16, !dbg !2825
  store i16 %storemerge, ptr %arrayidx96, align 2, !dbg !2825
  br i1 %and503, label %if.then213, label %if.else255, !dbg !2826

if.then213:                                       ; preds = %if.end
  %arrayidx216 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom215, !dbg !2827
  %31 = load i16, ptr %arrayidx216, align 2, !dbg !2827
    #dbg_value(i16 %31, !2654, !DIExpression(), !2828)
  %add219 = add nuw nsw i32 %add135, %conv110, !dbg !2829
  %shl220 = shl nuw nsw i32 %add219, 1, !dbg !2830
  %add221 = add nuw nsw i32 %shl220, 4, !dbg !2831
  %add223 = add nuw nsw i32 %add221, %conv117, !dbg !2832
  %add224 = add nuw nsw i32 %add223, %conv145, !dbg !2833
  %shr225 = lshr i32 %add224, 3, !dbg !2834
  %conv226 = trunc nuw i32 %shr225 to i16, !dbg !2835
  store i16 %conv226, ptr %arrayidx90, align 2, !dbg !2836
  %add232 = add nuw nsw i32 %add135, 2, !dbg !2837
  %add234 = add nuw nsw i32 %add232, %conv110, !dbg !2838
  %add235 = add nuw nsw i32 %add234, %conv145, !dbg !2839
  %shr236 = lshr i32 %add235, 2, !dbg !2840
  %conv237 = trunc nuw i32 %shr236 to i16, !dbg !2841
  store i16 %conv237, ptr %arrayidx108, align 2, !dbg !2842
  %conv240 = zext i16 %31 to i32, !dbg !2843
  %add242 = add nuw nsw i32 %conv240, %conv145, !dbg !2844
  %shl243 = shl nuw nsw i32 %add242, 1, !dbg !2845
  %add245 = add nuw nsw i32 %add135, 4, !dbg !2846
  %add247 = add nuw nsw i32 %add245, %conv110, !dbg !2847
  %add248 = add nuw nsw i32 %add247, %conv145, !dbg !2848
  %add249 = add nuw nsw i32 %add248, %shl243, !dbg !2849
  %shr250 = lshr i32 %add249, 3, !dbg !2850
  %conv251 = trunc nuw i32 %shr250 to i16, !dbg !2851
  store i16 %conv251, ptr %arrayidx129, align 2, !dbg !2852
  br label %if.end356, !dbg !2853

if.else255:                                       ; preds = %if.end
  %shl257 = shl nuw nsw i32 %conv110, 1, !dbg !2854
  %add259 = add nuw nsw i32 %conv97, 2, !dbg !2856
  %add261 = add nuw nsw i32 %add259, %shl257, !dbg !2857
  %add262 = add nuw nsw i32 %add261, %conv117, !dbg !2858
  %shr263 = lshr i32 %add262, 2, !dbg !2859
  %conv264 = trunc nuw i32 %shr263 to i16, !dbg !2860
  store i16 %conv264, ptr %arrayidx90, align 2, !dbg !2861
  br label %if.end356

if.else267:                                       ; preds = %if.then122
  %add272 = add nuw nsw i32 %add135, 1, !dbg !2862
  %shr273 = lshr i32 %add272, 1, !dbg !2863
    #dbg_value(i32 %shr273, !2657, !DIExpression(), !2864)
  %conv276 = zext i16 %29 to i32, !dbg !2865
  %sub277 = sub nsw i32 %conv97, %conv276, !dbg !2866
    #dbg_value(i32 %sub277, !80, !DIExpression(), !2867)
    #dbg_value(i32 %sub277, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2867)
  %sub.i513 = call i32 @llvm.abs.i32(i32 %sub277, i1 true), !dbg !2869
  %cmp279 = icmp ult i32 %sub.i513, %mul69, !dbg !2870
  %conv280 = zext i1 %cmp279 to i32, !dbg !2870
    #dbg_value(i32 %conv280, !2659, !DIExpression(), !2864)
  %conv283 = zext i16 %28 to i32, !dbg !2871
  %sub284 = sub nsw i32 %conv98, %conv283, !dbg !2872
    #dbg_value(i32 %sub284, !80, !DIExpression(), !2873)
    #dbg_value(i32 %sub284, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !2873)
  %sub.i514 = call i32 @llvm.abs.i32(i32 %sub284, i1 true), !dbg !2875
  %cmp286 = icmp ult i32 %sub.i514, %mul69, !dbg !2876
  %conv287 = zext i1 %cmp286 to i32, !dbg !2876
    #dbg_value(i32 %conv287, !2660, !DIExpression(), !2864)
  %idxprom288 = zext i8 %17 to i64, !dbg !2877
  %arrayidx289 = getelementptr inbounds i8, ptr %arrayidx74, i64 %idxprom288, !dbg !2877
  %32 = load i8, ptr %arrayidx289, align 1, !dbg !2877
  %conv290 = zext i8 %32 to i32, !dbg !2877
  %mul291 = mul nsw i32 %cond14, %conv290, !dbg !2878
    #dbg_value(i32 %mul291, !2661, !DIExpression(), !2864)
  %add292 = add nuw nsw i32 %conv280, %conv287, !dbg !2879
  %add293 = add i32 %add292, %mul291, !dbg !2880
    #dbg_value(i32 %add293, !2662, !DIExpression(), !2864)
  %sub294 = sub nsw i32 0, %add293, !dbg !2881
  %shl298 = shl nsw i32 %sub99, 2, !dbg !2882
  %sub301 = add nsw i32 %shl298, 4, !dbg !2883
  %add302 = sub nsw i32 %sub301, %conv110, !dbg !2884
  %add303 = add nsw i32 %add302, %conv117, !dbg !2885
  %shr304 = ashr i32 %add303, 3, !dbg !2886
    #dbg_value(i32 %sub294, !2337, !DIExpression(), !2887)
    #dbg_value(i32 %add293, !2342, !DIExpression(), !2887)
    #dbg_value(i32 %shr304, !2343, !DIExpression(), !2887)
    #dbg_value(i32 %shr304, !2346, !DIExpression(), !2889)
    #dbg_value(i32 %sub294, !2351, !DIExpression(), !2889)
  %cond.i.i515 = call noundef i32 @llvm.smax.i32(i32 %shr304, i32 %sub294), !dbg !2891
    #dbg_value(i32 %cond.i.i515, !2343, !DIExpression(), !2887)
    #dbg_value(i32 %cond.i.i515, !2355, !DIExpression(), !2892)
    #dbg_value(i32 %add293, !2358, !DIExpression(), !2892)
  %cond.i4.i516 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i515, i32 %add293), !dbg !2894
    #dbg_value(i32 %cond.i4.i516, !2343, !DIExpression(), !2887)
    #dbg_value(i32 %cond.i4.i516, !2663, !DIExpression(), !2864)
  %cmp308 = icmp ne i32 %mul291, 0
  %or.cond = and i1 %cmp286, %cmp308, !dbg !2895
  br i1 %or.cond, label %if.then310, label %if.end322, !dbg !2895

if.then310:                                       ; preds = %if.else267
  %sub311 = sub nsw i32 0, %mul291, !dbg !2897
  %33 = shl nuw nsw i32 %conv117, 1, !dbg !2898
  %add313 = sub nsw i32 %shr273, %33, !dbg !2898
  %sub316 = add nsw i32 %add313, %conv283, !dbg !2899
  %shr317 = ashr i32 %sub316, 1, !dbg !2900
    #dbg_value(i32 %sub311, !2337, !DIExpression(), !2901)
    #dbg_value(i32 %mul291, !2342, !DIExpression(), !2901)
    #dbg_value(i32 %shr317, !2343, !DIExpression(), !2901)
    #dbg_value(i32 %shr317, !2346, !DIExpression(), !2903)
    #dbg_value(i32 %sub311, !2351, !DIExpression(), !2903)
  %cond.i.i517 = call noundef i32 @llvm.smax.i32(i32 %shr317, i32 %sub311), !dbg !2905
    #dbg_value(i32 %cond.i.i517, !2343, !DIExpression(), !2901)
    #dbg_value(i32 %cond.i.i517, !2355, !DIExpression(), !2906)
    #dbg_value(i32 %mul291, !2358, !DIExpression(), !2906)
  %cond.i4.i518 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i517, i32 %mul291), !dbg !2908
    #dbg_value(i32 %cond.i4.i518, !2343, !DIExpression(), !2901)
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx96, i64 %idx.neg, !dbg !2909
  %34 = load i16, ptr %add.ptr, align 2, !dbg !2910
  %35 = trunc i32 %cond.i4.i518 to i16, !dbg !2910
  %conv321 = add i16 %34, %35, !dbg !2910
  store i16 %conv321, ptr %add.ptr, align 2, !dbg !2910
  br label %if.end322, !dbg !2911

if.end322:                                        ; preds = %if.then310, %if.else267
  %tobool323.not = icmp eq i32 %cond.i4.i516, 0, !dbg !2912
  br i1 %tobool323.not, label %if.end333, label %if.then324, !dbg !2914

if.then324:                                       ; preds = %if.end322
  %add326 = add nsw i32 %cond.i4.i516, %conv98, !dbg !2915
    #dbg_value(i32 %4, !2549, !DIExpression(), !2917)
    #dbg_value(i32 %add326, !2552, !DIExpression(), !2917)
    #dbg_value(i32 %add326, !2346, !DIExpression(), !2919)
    #dbg_value(i32 0, !2351, !DIExpression(), !2919)
  %cond.i.i519 = call noundef i32 @llvm.smax.i32(i32 %add326, i32 0), !dbg !2921
    #dbg_value(i32 %cond.i.i519, !2552, !DIExpression(), !2917)
    #dbg_value(i32 %cond.i.i519, !2355, !DIExpression(), !2922)
    #dbg_value(i32 %4, !2358, !DIExpression(), !2922)
  %cond.i4.i520 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i519, i32 %4), !dbg !2924
    #dbg_value(i32 %cond.i4.i520, !2552, !DIExpression(), !2917)
  %conv328 = trunc i32 %cond.i4.i520 to i16, !dbg !2925
  store i16 %conv328, ptr %arrayidx96, align 2, !dbg !2926
  %sub330 = sub nsw i32 %conv97, %cond.i4.i516, !dbg !2927
    #dbg_value(i32 %4, !2549, !DIExpression(), !2928)
    #dbg_value(i32 %sub330, !2552, !DIExpression(), !2928)
    #dbg_value(i32 %sub330, !2346, !DIExpression(), !2930)
    #dbg_value(i32 0, !2351, !DIExpression(), !2930)
  %cond.i.i521 = call noundef i32 @llvm.smax.i32(i32 %sub330, i32 0), !dbg !2932
    #dbg_value(i32 %cond.i.i521, !2552, !DIExpression(), !2928)
    #dbg_value(i32 %cond.i.i521, !2355, !DIExpression(), !2933)
    #dbg_value(i32 %4, !2358, !DIExpression(), !2933)
  %cond.i4.i522 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i521, i32 %4), !dbg !2935
    #dbg_value(i32 %cond.i4.i522, !2552, !DIExpression(), !2928)
  %conv332 = trunc i32 %cond.i4.i522 to i16, !dbg !2936
  store i16 %conv332, ptr %arrayidx90, align 2, !dbg !2937
  br label %if.end333, !dbg !2938

if.end333:                                        ; preds = %if.then324, %if.end322
  %or.cond363 = and i1 %cmp279, %cmp308, !dbg !2939
  br i1 %or.cond363, label %if.then338, label %if.end356, !dbg !2939

if.then338:                                       ; preds = %if.end333
  %sub339 = sub nsw i32 0, %mul291, !dbg !2941
  %36 = shl nuw nsw i32 %conv110, 1, !dbg !2942
  %add341 = sub nsw i32 %shr273, %36, !dbg !2942
  %sub344 = add nsw i32 %add341, %conv276, !dbg !2943
  %shr345 = ashr i32 %sub344, 1, !dbg !2944
    #dbg_value(i32 %sub339, !2337, !DIExpression(), !2945)
    #dbg_value(i32 %mul291, !2342, !DIExpression(), !2945)
    #dbg_value(i32 %shr345, !2343, !DIExpression(), !2945)
    #dbg_value(i32 %shr345, !2346, !DIExpression(), !2947)
    #dbg_value(i32 %sub339, !2351, !DIExpression(), !2947)
  %cond.i.i523 = call noundef i32 @llvm.smax.i32(i32 %shr345, i32 %sub339), !dbg !2949
    #dbg_value(i32 %cond.i.i523, !2343, !DIExpression(), !2945)
    #dbg_value(i32 %cond.i.i523, !2355, !DIExpression(), !2950)
    #dbg_value(i32 %mul291, !2358, !DIExpression(), !2950)
  %cond.i4.i524 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i523, i32 %mul291), !dbg !2952
    #dbg_value(i32 %cond.i4.i524, !2343, !DIExpression(), !2945)
  %37 = load i16, ptr %arrayidx108, align 2, !dbg !2953
  %38 = trunc i32 %cond.i4.i524 to i16, !dbg !2953
  %conv351 = add i16 %37, %38, !dbg !2953
  store i16 %conv351, ptr %arrayidx108, align 2, !dbg !2953
  br label %if.end356, !dbg !2954

if.end356:                                        ; preds = %if.then86, %if.else255, %if.then213, %if.then338, %if.end333, %land.lhs.true115, %if.then103, %for.body
  %39 = load i16, ptr %pos_x94, align 4, !dbg !2955
  %inc = add i16 %39, 1, !dbg !2955
  store i16 %inc, ptr %pos_x94, align 4, !dbg !2955, !DIAssignID !2956
    #dbg_assign(i16 %inc, !2608, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !2956, ptr %pos_x94, !DIExpression(), !2665)
  %40 = load i16, ptr %pos_x, align 4, !dbg !2957
  %inc359 = add i16 %40, 1, !dbg !2957
  store i16 %inc359, ptr %pos_x, align 4, !dbg !2957, !DIAssignID !2958
    #dbg_assign(i16 %inc359, !2609, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !2958, ptr %pos_x, !DIExpression(), !2665)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2959
    #dbg_value(i64 %indvars.iv.next, !2604, !DIExpression(), !2665)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2730
  br i1 %exitcond.not, label %if.end362, label %for.body, !dbg !2731, !llvm.loop !2960

if.end362:                                        ; preds = %if.end356, %if.then72, %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !2962
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !2962
  ret void, !dbg !2962
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaVerMBAff(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #1 !dbg !2963 {
entry:
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !3015
    #dbg_assign(i1 undef, !2990, !DIExpression(), !3015, ptr %pixP, !DIExpression(), !3016)
  %pixQ = alloca %struct.pix_pos, align 4, !DIAssignID !3017
    #dbg_assign(i1 undef, !2991, !DIExpression(), !3017, ptr %pixQ, !DIExpression(), !3016)
    #dbg_value(ptr %Img, !2967, !DIExpression(), !3016)
    #dbg_value(ptr %Strength, !2968, !DIExpression(), !3016)
    #dbg_value(ptr %MbQ, !2969, !DIExpression(), !3016)
    #dbg_value(i32 %edge, !2970, !DIExpression(), !3016)
    #dbg_value(i32 %uv, !2971, !DIExpression(), !3016)
    #dbg_value(ptr %p, !2972, !DIExpression(), !3016)
    #dbg_value(i32 0, !2979, !DIExpression(), !3016)
    #dbg_value(i32 0, !2980, !DIExpression(), !3016)
    #dbg_value(ptr null, !2981, !DIExpression(), !3016)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !3018
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !3018
    #dbg_value(ptr %0, !2984, !DIExpression(), !3016)
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !3019
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !3019
  %idxprom = sext i32 %1 to i64, !dbg !3020
  %arrayidx = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom, !dbg !3020
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3020
    #dbg_value(i32 %2, !2985, !DIExpression(), !3016)
    #dbg_value(i32 %edge, !2988, !DIExpression(), !3016)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !3021
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !3021
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 849048, !dbg !3022
  %3 = load i32, ptr %arrayidx3, align 4, !dbg !3022
    #dbg_value(i32 %3, !2992, !DIExpression(), !3016)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !3023
  %add = add nsw i32 %uv, 1, !dbg !3024
  %idxprom4 = sext i32 %add to i64, !dbg !3025
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom4, !dbg !3025
  %4 = load i32, ptr %arrayidx5, align 4, !dbg !3025
    #dbg_value(i32 %4, !2993, !DIExpression(), !3016)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !3026
  %5 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !3026
  %conv = sext i16 %5 to i32, !dbg !3027
    #dbg_value(i32 %conv, !2994, !DIExpression(), !3016)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !3028
  %6 = load i16, ptr %DFBetaOffset, align 4, !dbg !3028
  %conv6 = sext i16 %6 to i32, !dbg !3029
    #dbg_value(i32 %conv6, !2995, !DIExpression(), !3016)
    #dbg_value(i32 0, !2973, !DIExpression(), !3016)
  %cmp209 = icmp sgt i32 %2, 0, !dbg !3030
  br i1 %cmp209, label %for.body.lr.ph, label %for.end, !dbg !3031

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx8 = getelementptr inbounds i8, ptr %0, i64 849132
  %sub = add nsw i32 %edge, -1
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %cmp14 = icmp eq i32 %2, 8
  %mb_field = getelementptr inbounds i8, ptr %MbQ, i64 384
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %pos_y = getelementptr inbounds i8, ptr %pixQ, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixQ, i64 12
  %pos_y38 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x41 = getelementptr inbounds i8, ptr %pixP, i64 12
  %idxprom44 = sext i32 %uv to i64
  %qpc46 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx48 = getelementptr inbounds [2 x i32], ptr %qpc46, i64 0, i64 %idxprom44
  br label %for.body, !dbg !3031

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %pel.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
    #dbg_value(i32 %pel.0210, !2973, !DIExpression(), !3016)
    #dbg_value(i32 %pel.0210, !2989, !DIExpression(), !3016)
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %edge, i32 noundef %pel.0210, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %pixQ) #7, !dbg !3032
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %sub, i32 noundef %pel.0210, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %pixP) #7, !dbg !3033
  %7 = load ptr, ptr %mb_data, align 8, !dbg !3034
  %8 = load i32, ptr %mb_addr, align 4, !dbg !3035
  %idxprom12 = sext i32 %8 to i64, !dbg !3036
  %arrayidx13 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom12, !dbg !3036
    #dbg_value(ptr %arrayidx13, !2996, !DIExpression(), !3016)
  br i1 %cmp14, label %cond.true, label %cond.end22, !dbg !3037

cond.true:                                        ; preds = %for.body
  %9 = load i32, ptr %mb_field, align 8, !dbg !3038
  %tobool.not = icmp eq i32 %9, 0, !dbg !3039
  br i1 %tobool.not, label %cond.false, label %land.lhs.true, !dbg !3040

land.lhs.true:                                    ; preds = %cond.true
  %mb_field16 = getelementptr inbounds i8, ptr %arrayidx13, i64 384, !dbg !3041
  %10 = load i32, ptr %mb_field16, align 8, !dbg !3041
  %tobool17.not = icmp eq i32 %10, 0, !dbg !3042
  br i1 %tobool17.not, label %cond.true18, label %cond.false, !dbg !3043

cond.true18:                                      ; preds = %land.lhs.true
  %shl = shl nuw i32 %pel.0210, 1, !dbg !3044
  br label %cond.end22, !dbg !3043

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %11 = shl nuw i32 %pel.0210, 1, !dbg !3045
  %shl19 = and i32 %11, -4, !dbg !3045
  %and = and i32 %pel.0210, 1, !dbg !3046
  %add20 = or disjoint i32 %shl19, %and, !dbg !3047
  br label %cond.end22, !dbg !3043

cond.end22:                                       ; preds = %for.body, %cond.true18, %cond.false
  %cond23 = phi i32 [ %shl, %cond.true18 ], [ %add20, %cond.false ], [ %pel.0210, %for.body ], !dbg !3037
    #dbg_value(i32 %cond23, !2986, !DIExpression(), !3016)
  %12 = load i32, ptr %pixP, align 4, !dbg !3048
  %tobool24.not = icmp eq i32 %12, 0, !dbg !3049
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then, !dbg !3050

lor.lhs.false:                                    ; preds = %cond.end22
  %13 = load i16, ptr %DFDisableIdc, align 8, !dbg !3051
  %cmp26 = icmp eq i16 %13, 0, !dbg !3052
  br i1 %cmp26, label %if.then, label %for.inc, !dbg !3053

if.then:                                          ; preds = %lor.lhs.false, %cond.end22
  %idxprom28 = sext i32 %cond23 to i64, !dbg !3054
  %arrayidx29 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom28, !dbg !3054
  %14 = load i8, ptr %arrayidx29, align 1, !dbg !3054
    #dbg_value(i8 %14, !2974, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3016)
  %cmp31.not = icmp eq i8 %14, 0, !dbg !3055
  br i1 %cmp31.not, label %for.inc, label %if.then33, !dbg !3056

if.then33:                                        ; preds = %if.then
  %15 = load i16, ptr %pos_y, align 2, !dbg !3057
  %idxprom34 = sext i16 %15 to i64, !dbg !3058
  %arrayidx35 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom34, !dbg !3058
  %16 = load ptr, ptr %arrayidx35, align 8, !dbg !3058
  %17 = load i16, ptr %pos_x, align 4, !dbg !3059
  %idxprom36 = sext i16 %17 to i64, !dbg !3058
  %arrayidx37 = getelementptr inbounds i16, ptr %16, i64 %idxprom36, !dbg !3058
    #dbg_value(ptr %arrayidx37, !2998, !DIExpression(), !3016)
  %18 = load i16, ptr %pos_y38, align 2, !dbg !3060
  %idxprom39 = sext i16 %18 to i64, !dbg !3061
  %arrayidx40 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom39, !dbg !3061
  %19 = load ptr, ptr %arrayidx40, align 8, !dbg !3061
  %20 = load i16, ptr %pos_x41, align 4, !dbg !3062
  %idxprom42 = sext i16 %20 to i64, !dbg !3061
  %arrayidx43 = getelementptr inbounds i16, ptr %19, i64 %idxprom42, !dbg !3061
    #dbg_value(ptr %arrayidx43, !2997, !DIExpression(), !3016)
  %qpc = getelementptr inbounds i8, ptr %arrayidx13, i64 72, !dbg !3063
  %arrayidx45 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom44, !dbg !3064
  %21 = load i32, ptr %arrayidx45, align 4, !dbg !3064
  %22 = load i32, ptr %arrayidx48, align 4, !dbg !3065
  %add49 = add i32 %21, 1, !dbg !3066
  %add50 = add i32 %add49, %22, !dbg !3067
  %shr51 = ashr i32 %add50, 1, !dbg !3068
    #dbg_value(i32 %shr51, !2987, !DIExpression(), !3016)
  %add52 = add nsw i32 %shr51, %conv, !dbg !3069
    #dbg_value(i32 0, !2337, !DIExpression(), !3070)
    #dbg_value(i32 51, !2342, !DIExpression(), !3070)
    #dbg_value(i32 %add52, !2343, !DIExpression(), !3070)
    #dbg_value(i32 %add52, !2346, !DIExpression(), !3072)
    #dbg_value(i32 0, !2351, !DIExpression(), !3072)
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add52, i32 0), !dbg !3074
    #dbg_value(i32 %cond.i.i, !2343, !DIExpression(), !3070)
    #dbg_value(i32 %cond.i.i, !2355, !DIExpression(), !3075)
    #dbg_value(i32 51, !2358, !DIExpression(), !3075)
  %23 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !3077
    #dbg_value(i32 %23, !2343, !DIExpression(), !3070)
    #dbg_value(i32 %23, !2982, !DIExpression(), !3016)
  %add53 = add nsw i32 %shr51, %conv6, !dbg !3078
    #dbg_value(i32 0, !2337, !DIExpression(), !3079)
    #dbg_value(i32 51, !2342, !DIExpression(), !3079)
    #dbg_value(i32 %add53, !2343, !DIExpression(), !3079)
    #dbg_value(i32 %add53, !2346, !DIExpression(), !3081)
    #dbg_value(i32 0, !2351, !DIExpression(), !3081)
  %cond.i.i199 = call noundef i32 @llvm.smax.i32(i32 %add53, i32 0), !dbg !3083
    #dbg_value(i32 %cond.i.i199, !2343, !DIExpression(), !3079)
    #dbg_value(i32 %cond.i.i199, !2355, !DIExpression(), !3084)
    #dbg_value(i32 51, !2358, !DIExpression(), !3084)
  %24 = call i32 @llvm.umin.i32(i32 %cond.i.i199, i32 51), !dbg !3086
    #dbg_value(i32 %24, !2343, !DIExpression(), !3079)
    #dbg_value(i32 %24, !2983, !DIExpression(), !3016)
  %idxprom55 = zext nneg i32 %23 to i64, !dbg !3087
  %arrayidx56 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom55, !dbg !3087
  %25 = load i8, ptr %arrayidx56, align 1, !dbg !3087
  %conv57 = zext i8 %25 to i32, !dbg !3087
  %mul = mul nsw i32 %3, %conv57, !dbg !3088
    #dbg_value(i32 %mul, !2979, !DIExpression(), !3016)
  %idxprom58 = zext nneg i32 %24 to i64, !dbg !3089
  %arrayidx59 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom58, !dbg !3089
  %26 = load i8, ptr %arrayidx59, align 1, !dbg !3089
  %conv60 = zext i8 %26 to i32, !dbg !3089
  %mul61 = mul nsw i32 %3, %conv60, !dbg !3090
    #dbg_value(i32 %mul61, !2980, !DIExpression(), !3016)
  %arrayidx63 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom55, !dbg !3091
    #dbg_value(ptr %arrayidx63, !2981, !DIExpression(), !3016)
  %27 = load i16, ptr %arrayidx43, align 2, !dbg !3092
    #dbg_value(i16 %27, !2976, !DIExpression(), !3016)
  %28 = load i16, ptr %arrayidx37, align 2, !dbg !3093
    #dbg_value(i16 %28, !2977, !DIExpression(), !3016)
  %conv65 = zext i16 %28 to i32, !dbg !3094
  %conv66 = zext i16 %27 to i32, !dbg !3095
  %sub67 = sub nsw i32 %conv65, %conv66, !dbg !3096
    #dbg_value(i32 %sub67, !80, !DIExpression(), !3097)
    #dbg_value(i32 %sub67, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3097)
  %sub.i = call i32 @llvm.abs.i32(i32 %sub67, i1 true), !dbg !3099
  %cmp69 = icmp slt i32 %sub.i, %mul, !dbg !3100
  br i1 %cmp69, label %if.then71, label %for.inc, !dbg !3101

if.then71:                                        ; preds = %if.then33
    #dbg_value(i16 poison, !2975, !DIExpression(), !3016)
  %arrayidx73 = getelementptr inbounds i8, ptr %arrayidx37, i64 2, !dbg !3102
  %29 = load i16, ptr %arrayidx73, align 2, !dbg !3102
    #dbg_value(i16 %29, !2978, !DIExpression(), !3016)
  %conv75 = zext i16 %29 to i32, !dbg !3103
  %sub76 = sub nsw i32 %conv65, %conv75, !dbg !3104
    #dbg_value(i32 %sub76, !80, !DIExpression(), !3105)
    #dbg_value(i32 %sub76, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3105)
  %sub.i201 = call i32 @llvm.abs.i32(i32 %sub76, i1 true), !dbg !3107
  %cmp79 = icmp slt i32 %sub.i201, %mul61, !dbg !3108
  br i1 %cmp79, label %land.lhs.true81, label %for.inc, !dbg !3109

land.lhs.true81:                                  ; preds = %if.then71
  %arrayidx72 = getelementptr inbounds i8, ptr %arrayidx43, i64 -2, !dbg !3110
  %30 = load i16, ptr %arrayidx72, align 2, !dbg !3110
    #dbg_value(i16 %30, !2975, !DIExpression(), !3016)
  %conv83 = zext i16 %30 to i32, !dbg !3111
  %sub84 = sub nsw i32 %conv66, %conv83, !dbg !3112
    #dbg_value(i32 %sub84, !80, !DIExpression(), !3113)
    #dbg_value(i32 %sub84, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3113)
  %sub.i202 = call i32 @llvm.abs.i32(i32 %sub84, i1 true), !dbg !3115
  %cmp87 = icmp ult i32 %sub.i202, %mul61, !dbg !3116
  br i1 %cmp87, label %if.then89, label %for.inc, !dbg !3117

if.then89:                                        ; preds = %land.lhs.true81
  %cmp90 = icmp eq i8 %14, 4, !dbg !3118
  br i1 %cmp90, label %if.then92, label %if.else, !dbg !3119

if.then92:                                        ; preds = %if.then89
  %shl94 = shl nuw nsw i32 %conv75, 1, !dbg !3120
  %add96 = add nuw nsw i32 %conv65, 2, !dbg !3122
  %add98 = add nuw nsw i32 %add96, %shl94, !dbg !3123
  %add99 = add nuw nsw i32 %add98, %conv83, !dbg !3124
  %shr100 = lshr i32 %add99, 2, !dbg !3125
  %conv101 = trunc nuw i32 %shr100 to i16, !dbg !3126
  store i16 %conv101, ptr %arrayidx37, align 2, !dbg !3127
  %shl104 = shl nuw nsw i32 %conv83, 1, !dbg !3128
  %add106 = add nuw nsw i32 %conv66, 2, !dbg !3129
  %add108 = add nuw nsw i32 %add106, %conv75, !dbg !3130
  %add109 = add nuw nsw i32 %add108, %shl104, !dbg !3131
  %shr110 = lshr i32 %add109, 2, !dbg !3132
  br label %for.inc.sink.split, !dbg !3133

if.else:                                          ; preds = %if.then89
  %idxprom113 = zext i8 %14 to i64, !dbg !3134
  %arrayidx114 = getelementptr inbounds i8, ptr %arrayidx63, i64 %idxprom113, !dbg !3134
  %31 = load i8, ptr %arrayidx114, align 1, !dbg !3134
  %conv115 = zext i8 %31 to i32, !dbg !3134
  %mul116 = mul nsw i32 %3, %conv115, !dbg !3135
    #dbg_value(i32 %mul116, !2999, !DIExpression(), !3136)
    #dbg_value(i32 %mul116, !3013, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3136)
    #dbg_value(i32 %mul116, !2337, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3137)
    #dbg_value(i32 %mul116, !2342, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3137)
    #dbg_value(i32 poison, !2343, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3137)
    #dbg_value(i32 poison, !2346, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3139)
    #dbg_value(i32 %mul116, !2351, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3139)
  %32 = shl nsw i32 %sub67, 2, !dbg !3141
  %33 = add nsw i32 %conv75, -5, !dbg !3142
  %34 = add nsw i32 %32, %conv83, !dbg !3142
  %35 = sub nsw i32 %33, %34, !dbg !3142
  %36 = ashr i32 %35, 3, !dbg !3142
  %37 = call i32 @llvm.smin.i32(i32 %mul116, i32 %36), !dbg !3142
    #dbg_value(i32 %37, !2343, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3137)
    #dbg_value(i32 %37, !2355, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3143)
    #dbg_value(i32 %mul116, !2358, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3143)
  %38 = sub i32 -2, %mul116, !dbg !3145
  %39 = call i32 @llvm.smax.i32(i32 %37, i32 %38), !dbg !3145
    #dbg_value(i32 %39, !2343, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3137)
    #dbg_value(i32 %39, !3014, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3136)
  %tobool130.not = icmp eq i32 %39, -1, !dbg !3146
  br i1 %tobool130.not, label %for.inc, label %if.then131, !dbg !3148

if.then131:                                       ; preds = %if.else
  %cond.i4.i204 = xor i32 %39, -1, !dbg !3145
    #dbg_value(i32 %cond.i4.i204, !2343, !DIExpression(), !3137)
    #dbg_value(i32 %cond.i4.i204, !3014, !DIExpression(), !3136)
  %add133 = add nsw i32 %cond.i4.i204, %conv66, !dbg !3149
    #dbg_value(i32 %4, !2549, !DIExpression(), !3151)
    #dbg_value(i32 %add133, !2552, !DIExpression(), !3151)
    #dbg_value(i32 %add133, !2346, !DIExpression(), !3153)
    #dbg_value(i32 0, !2351, !DIExpression(), !3153)
  %cond.i.i205 = call noundef i32 @llvm.smax.i32(i32 %add133, i32 0), !dbg !3155
    #dbg_value(i32 %cond.i.i205, !2552, !DIExpression(), !3151)
    #dbg_value(i32 %cond.i.i205, !2355, !DIExpression(), !3156)
    #dbg_value(i32 %4, !2358, !DIExpression(), !3156)
  %cond.i4.i206 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i205, i32 %4), !dbg !3158
    #dbg_value(i32 %cond.i4.i206, !2552, !DIExpression(), !3151)
  %conv135 = trunc i32 %cond.i4.i206 to i16, !dbg !3159
  store i16 %conv135, ptr %arrayidx43, align 2, !dbg !3160
  %sub137 = sub nsw i32 %conv65, %cond.i4.i204, !dbg !3161
    #dbg_value(i32 %4, !2549, !DIExpression(), !3162)
    #dbg_value(i32 %sub137, !2552, !DIExpression(), !3162)
    #dbg_value(i32 %sub137, !2346, !DIExpression(), !3164)
    #dbg_value(i32 0, !2351, !DIExpression(), !3164)
  %cond.i.i207 = call noundef i32 @llvm.smax.i32(i32 %sub137, i32 0), !dbg !3166
    #dbg_value(i32 %cond.i.i207, !2552, !DIExpression(), !3162)
    #dbg_value(i32 %cond.i.i207, !2355, !DIExpression(), !3167)
    #dbg_value(i32 %4, !2358, !DIExpression(), !3167)
  %cond.i4.i208 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i207, i32 %4), !dbg !3169
    #dbg_value(i32 %cond.i4.i208, !2552, !DIExpression(), !3162)
  br label %for.inc.sink.split, !dbg !3170

for.inc.sink.split:                               ; preds = %if.then92, %if.then131
  %cond.i4.i208.sink = phi i32 [ %cond.i4.i208, %if.then131 ], [ %shr110, %if.then92 ]
  %arrayidx37.sink = phi ptr [ %arrayidx37, %if.then131 ], [ %arrayidx43, %if.then92 ]
  %conv139 = trunc i32 %cond.i4.i208.sink to i16, !dbg !3171
  store i16 %conv139, ptr %arrayidx37.sink, align 2, !dbg !3171
  br label %for.inc, !dbg !3172

for.inc:                                          ; preds = %for.inc.sink.split, %if.else, %lor.lhs.false, %if.then33, %land.lhs.true81, %if.then71, %if.then
  %inc = add nuw nsw i32 %pel.0210, 1, !dbg !3172
    #dbg_value(i32 %inc, !2973, !DIExpression(), !3016)
  %exitcond.not = icmp eq i32 %inc, %2, !dbg !3030
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3031, !llvm.loop !3173

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !3175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !3175
  ret void, !dbg !3175
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaHorMBAff(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #1 !dbg !3176 {
entry:
  %pixP = alloca %struct.pix_pos, align 4, !DIAssignID !3230
    #dbg_assign(i1 undef, !3187, !DIExpression(), !3230, ptr %pixP, !DIExpression(), !3231)
  %pixQ = alloca %struct.pix_pos, align 4, !DIAssignID !3232
    #dbg_assign(i1 undef, !3188, !DIExpression(), !3232, ptr %pixQ, !DIExpression(), !3231)
    #dbg_value(ptr %Img, !3178, !DIExpression(), !3231)
    #dbg_value(ptr %Strength, !3179, !DIExpression(), !3231)
    #dbg_value(ptr %MbQ, !3180, !DIExpression(), !3231)
    #dbg_value(i32 %edge, !3181, !DIExpression(), !3231)
    #dbg_value(i32 %uv, !3182, !DIExpression(), !3231)
    #dbg_value(ptr %p, !3183, !DIExpression(), !3231)
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8, !dbg !3233
  %0 = load ptr, ptr %p_Vid1, align 8, !dbg !3233
    #dbg_value(ptr %0, !3184, !DIExpression(), !3231)
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268, !dbg !3234
  %1 = load i32, ptr %chroma_format_idc, align 4, !dbg !3234
  %idxprom = sext i32 %1 to i64, !dbg !3235
  %arrayidx = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom, !dbg !3235
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3235
    #dbg_value(i32 %2, !3185, !DIExpression(), !3231)
  %cmp = icmp slt i32 %edge, 16, !dbg !3236
  %cond = select i1 %cmp, i32 %edge, i32 1, !dbg !3237
    #dbg_value(i32 %cond, !3186, !DIExpression(), !3231)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7, !dbg !3238
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !3238
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 849048, !dbg !3239
  %3 = load i32, ptr %arrayidx3, align 4, !dbg !3239
    #dbg_value(i32 %3, !3189, !DIExpression(), !3231)
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072, !dbg !3240
  %add = add nsw i32 %uv, 1, !dbg !3241
  %idxprom4 = sext i32 %add to i64, !dbg !3242
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom4, !dbg !3242
  %4 = load i32, ptr %arrayidx5, align 4, !dbg !3242
    #dbg_value(i32 %4, !3190, !DIExpression(), !3231)
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378, !dbg !3243
  %5 = load i16, ptr %DFAlphaC0Offset, align 2, !dbg !3243
  %conv = sext i16 %5 to i32, !dbg !3244
    #dbg_value(i32 %conv, !3191, !DIExpression(), !3231)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380, !dbg !3245
  %6 = load i16, ptr %DFBetaOffset, align 4, !dbg !3245
  %conv6 = sext i16 %6 to i32, !dbg !3246
    #dbg_value(i32 %conv6, !3192, !DIExpression(), !3231)
  %iChromaStride = getelementptr inbounds i8, ptr %p, i64 360, !dbg !3247
  %7 = load i32, ptr %iChromaStride, align 8, !dbg !3247
    #dbg_value(i32 %7, !3193, !DIExpression(), !3231)
  %sub = add nsw i32 %cond, -1, !dbg !3248
  %arrayidx7 = getelementptr inbounds i8, ptr %0, i64 849132, !dbg !3249
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %pixP) #7, !dbg !3250
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %cond, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %pixQ) #7, !dbg !3251
  %8 = load i32, ptr %pixP, align 4, !dbg !3252
  %tobool.not = icmp eq i32 %8, 0, !dbg !3253
  br i1 %tobool.not, label %lor.lhs.false, label %if.then, !dbg !3254

lor.lhs.false:                                    ; preds = %entry
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376, !dbg !3255
  %9 = load i16, ptr %DFDisableIdc, align 8, !dbg !3255
  %cmp12 = icmp eq i16 %9, 0, !dbg !3256
  br i1 %cmp12, label %if.then, label %if.end180, !dbg !3257

if.then:                                          ; preds = %lor.lhs.false, %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888, !dbg !3258
  %10 = load ptr, ptr %mb_data, align 8, !dbg !3258
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4, !dbg !3259
  %11 = load i32, ptr %mb_addr, align 4, !dbg !3259
  %idxprom14 = sext i32 %11 to i64, !dbg !3260
  %arrayidx15 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom14, !dbg !3260
    #dbg_value(ptr %arrayidx15, !3194, !DIExpression(), !3261)
  %mb_field = getelementptr inbounds i8, ptr %arrayidx15, i64 384, !dbg !3262
  %12 = load i32, ptr %mb_field, align 8, !dbg !3262
  %tobool16.not = icmp eq i32 %12, 0, !dbg !3263
  %mb_field23.phi.trans.insert = getelementptr inbounds i8, ptr %MbQ, i64 384
  %.pre = load i32, ptr %mb_field23.phi.trans.insert, align 8, !dbg !3261
  %tobool18.not = icmp eq i32 %.pre, 0, !dbg !3264
  %not.tobool16.not = xor i1 %tobool16.not, true, !dbg !3264
  %narrow257 = select i1 %not.tobool16.not, i1 %tobool18.not, i1 false, !dbg !3264
  %spec.select = zext i1 %narrow257 to i32, !dbg !3264
  %cond22 = shl nsw i32 %7, %spec.select, !dbg !3264
    #dbg_value(i32 %cond22, !3197, !DIExpression(), !3261)
  %mb_field23 = getelementptr inbounds i8, ptr %MbQ, i64 384, !dbg !3265
  %tobool24.not = icmp ne i32 %.pre, 0, !dbg !3266
  %narrow = and i1 %tobool16.not, %tobool24.not, !dbg !3267
  %spec.select244 = zext i1 %narrow to i32, !dbg !3267
  %cond32 = shl nsw i32 %7, %spec.select244, !dbg !3267
    #dbg_value(i32 %cond32, !3198, !DIExpression(), !3261)
  %qpc = getelementptr inbounds i8, ptr %arrayidx15, i64 72, !dbg !3268
  %idxprom33 = sext i32 %uv to i64, !dbg !3269
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom33, !dbg !3269
  %13 = load i32, ptr %arrayidx34, align 4, !dbg !3269
  %qpc35 = getelementptr inbounds i8, ptr %MbQ, i64 72, !dbg !3270
  %arrayidx37 = getelementptr inbounds [2 x i32], ptr %qpc35, i64 0, i64 %idxprom33, !dbg !3271
  %14 = load i32, ptr %arrayidx37, align 4, !dbg !3271
  %add38 = add i32 %13, 1, !dbg !3272
  %add39 = add i32 %add38, %14, !dbg !3273
  %shr = ashr i32 %add39, 1, !dbg !3274
    #dbg_value(i32 %shr, !3199, !DIExpression(), !3261)
  %add40 = add nsw i32 %shr, %conv, !dbg !3275
    #dbg_value(i32 0, !2337, !DIExpression(), !3276)
    #dbg_value(i32 51, !2342, !DIExpression(), !3276)
    #dbg_value(i32 %add40, !2343, !DIExpression(), !3276)
    #dbg_value(i32 %add40, !2346, !DIExpression(), !3278)
    #dbg_value(i32 0, !2351, !DIExpression(), !3278)
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add40, i32 0), !dbg !3280
    #dbg_value(i32 %cond.i.i, !2343, !DIExpression(), !3276)
    #dbg_value(i32 %cond.i.i, !2355, !DIExpression(), !3281)
    #dbg_value(i32 51, !2358, !DIExpression(), !3281)
  %15 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51), !dbg !3283
    #dbg_value(i32 %15, !2343, !DIExpression(), !3276)
    #dbg_value(i32 %15, !3200, !DIExpression(), !3261)
  %add41 = add nsw i32 %shr, %conv6, !dbg !3284
    #dbg_value(i32 0, !2337, !DIExpression(), !3285)
    #dbg_value(i32 51, !2342, !DIExpression(), !3285)
    #dbg_value(i32 %add41, !2343, !DIExpression(), !3285)
    #dbg_value(i32 %add41, !2346, !DIExpression(), !3287)
    #dbg_value(i32 0, !2351, !DIExpression(), !3287)
  %cond.i.i245 = call noundef i32 @llvm.smax.i32(i32 %add41, i32 0), !dbg !3289
    #dbg_value(i32 %cond.i.i245, !2343, !DIExpression(), !3285)
    #dbg_value(i32 %cond.i.i245, !2355, !DIExpression(), !3290)
    #dbg_value(i32 51, !2358, !DIExpression(), !3290)
  %16 = call i32 @llvm.umin.i32(i32 %cond.i.i245, i32 51), !dbg !3292
    #dbg_value(i32 %16, !2343, !DIExpression(), !3285)
    #dbg_value(i32 %16, !3201, !DIExpression(), !3261)
  %idxprom43 = zext nneg i32 %15 to i64, !dbg !3293
  %arrayidx44 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom43, !dbg !3293
  %17 = load i8, ptr %arrayidx44, align 1, !dbg !3293
  %conv45 = zext i8 %17 to i32, !dbg !3293
  %mul46 = mul nsw i32 %3, %conv45, !dbg !3294
    #dbg_value(i32 %mul46, !3202, !DIExpression(), !3261)
  %idxprom47 = zext nneg i32 %16 to i64, !dbg !3295
  %arrayidx48 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom47, !dbg !3295
  %18 = load i8, ptr %arrayidx48, align 1, !dbg !3295
  %conv49 = zext i8 %18 to i32, !dbg !3295
  %mul50 = mul nsw i32 %3, %conv49, !dbg !3296
    #dbg_value(i32 %mul50, !3203, !DIExpression(), !3261)
  %or = or i32 %mul50, %mul46, !dbg !3297
  %cmp51.not = icmp eq i32 %or, 0, !dbg !3298
  br i1 %cmp51.not, label %if.end180, label %if.then53, !dbg !3299

if.then53:                                        ; preds = %if.then
  %arrayidx55 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom43, !dbg !3300
    #dbg_value(ptr %arrayidx55, !3204, !DIExpression(), !3301)
    #dbg_value(i32 0, !3207, !DIExpression(), !3301)
  %cmp57255 = icmp sgt i32 %2, 0, !dbg !3302
  br i1 %cmp57255, label %for.body.lr.ph, label %if.end180, !dbg !3303

for.body.lr.ph:                                   ; preds = %if.then53
  %cmp59 = icmp eq i32 %2, 8
  %pos_y = getelementptr inbounds i8, ptr %pixQ, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixQ, i64 12
  %pos_y87 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x90 = getelementptr inbounds i8, ptr %pixP, i64 12
  %idxprom103 = sext i32 %cond22 to i64
  %sub100 = sub nsw i32 0, %cond32
  %idxprom101 = sext i32 %sub100 to i64
  br label %for.body, !dbg !3303

for.body:                                         ; preds = %for.body.lr.ph, %if.end174
  %pel.0256 = phi i32 [ 0, %for.body.lr.ph ], [ %inc178, %if.end174 ]
    #dbg_value(i32 %pel.0256, !3207, !DIExpression(), !3301)
  br i1 %cmp59, label %cond.true61, label %cond.end75, !dbg !3304

cond.true61:                                      ; preds = %for.body
  %19 = load i32, ptr %mb_field23, align 8, !dbg !3305
  %tobool63.not = icmp eq i32 %19, 0, !dbg !3306
  br i1 %tobool63.not, label %cond.false68, label %land.lhs.true64, !dbg !3307

land.lhs.true64:                                  ; preds = %cond.true61
  %20 = load i32, ptr %mb_field, align 8, !dbg !3308
  %tobool66.not = icmp eq i32 %20, 0, !dbg !3309
  br i1 %tobool66.not, label %cond.true67, label %cond.false68, !dbg !3310

cond.true67:                                      ; preds = %land.lhs.true64
  %shl = shl nuw i32 %pel.0256, 1, !dbg !3311
  br label %cond.end75, !dbg !3310

cond.false68:                                     ; preds = %land.lhs.true64, %cond.true61
  %21 = shl nuw i32 %pel.0256, 1, !dbg !3312
  %shl70 = and i32 %21, -4, !dbg !3312
  %and = and i32 %pel.0256, 1, !dbg !3313
  %add71 = or disjoint i32 %shl70, %and, !dbg !3314
  br label %cond.end75, !dbg !3310

cond.end75:                                       ; preds = %for.body, %cond.true67, %cond.false68
  %cond76 = phi i32 [ %shl, %cond.true67 ], [ %add71, %cond.false68 ], [ %pel.0256, %for.body ], !dbg !3304
    #dbg_value(i32 %cond76, !3209, !DIExpression(), !3301)
  %idxprom77 = sext i32 %cond76 to i64, !dbg !3315
  %arrayidx78 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom77, !dbg !3315
  %22 = load i8, ptr %arrayidx78, align 1, !dbg !3315
    #dbg_value(i8 %22, !3208, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !3301)
  %cmp80.not = icmp eq i8 %22, 0, !dbg !3316
  br i1 %cmp80.not, label %if.end174, label %if.then82, !dbg !3317

if.then82:                                        ; preds = %cond.end75
  %23 = load i16, ptr %pos_y, align 2, !dbg !3318
  %idxprom83 = sext i16 %23 to i64, !dbg !3319
  %arrayidx84 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom83, !dbg !3319
  %24 = load ptr, ptr %arrayidx84, align 8, !dbg !3319
  %25 = load i16, ptr %pos_x, align 4, !dbg !3320
  %idxprom85 = sext i16 %25 to i64, !dbg !3319
  %arrayidx86 = getelementptr inbounds i16, ptr %24, i64 %idxprom85, !dbg !3319
    #dbg_value(ptr %arrayidx86, !3210, !DIExpression(), !3321)
  %26 = load i16, ptr %pos_y87, align 2, !dbg !3322
  %idxprom88 = sext i16 %26 to i64, !dbg !3323
  %arrayidx89 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom88, !dbg !3323
  %27 = load ptr, ptr %arrayidx89, align 8, !dbg !3323
  %28 = load i16, ptr %pos_x90, align 4, !dbg !3324
  %idxprom91 = sext i16 %28 to i64, !dbg !3323
  %arrayidx92 = getelementptr inbounds i16, ptr %27, i64 %idxprom91, !dbg !3323
    #dbg_value(ptr %arrayidx92, !3216, !DIExpression(), !3321)
  %29 = load i16, ptr %arrayidx92, align 2, !dbg !3325
    #dbg_value(i16 %29, !3217, !DIExpression(), !3321)
  %30 = load i16, ptr %arrayidx86, align 2, !dbg !3326
    #dbg_value(i16 %30, !3218, !DIExpression(), !3321)
  %conv93 = zext i16 %30 to i32, !dbg !3327
  %conv94 = zext i16 %29 to i32, !dbg !3328
  %sub95 = sub nsw i32 %conv93, %conv94, !dbg !3329
    #dbg_value(i32 %sub95, !80, !DIExpression(), !3330)
    #dbg_value(i32 %sub95, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3330)
  %sub.i = call i32 @llvm.abs.i32(i32 %sub95, i1 true), !dbg !3332
  %cmp97 = icmp slt i32 %sub.i, %mul46, !dbg !3333
  br i1 %cmp97, label %if.then99, label %if.end174, !dbg !3334

if.then99:                                        ; preds = %if.then82
    #dbg_value(i16 poison, !3219, !DIExpression(), !3335)
  %arrayidx104 = getelementptr inbounds i16, ptr %arrayidx86, i64 %idxprom103, !dbg !3336
  %31 = load i16, ptr %arrayidx104, align 2, !dbg !3336
    #dbg_value(i16 %31, !3222, !DIExpression(), !3335)
  %conv106 = zext i16 %31 to i32, !dbg !3337
  %sub107 = sub nsw i32 %conv93, %conv106, !dbg !3338
    #dbg_value(i32 %sub107, !80, !DIExpression(), !3339)
    #dbg_value(i32 %sub107, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3339)
  %sub.i247 = call i32 @llvm.abs.i32(i32 %sub107, i1 true), !dbg !3341
  %cmp110 = icmp slt i32 %sub.i247, %mul50, !dbg !3342
  br i1 %cmp110, label %land.lhs.true112, label %if.end174, !dbg !3343

land.lhs.true112:                                 ; preds = %if.then99
  %arrayidx102 = getelementptr inbounds i16, ptr %arrayidx92, i64 %idxprom101, !dbg !3344
  %32 = load i16, ptr %arrayidx102, align 2, !dbg !3344
    #dbg_value(i16 %32, !3219, !DIExpression(), !3335)
  %conv114 = zext i16 %32 to i32, !dbg !3345
  %sub115 = sub nsw i32 %conv94, %conv114, !dbg !3346
    #dbg_value(i32 %sub115, !80, !DIExpression(), !3347)
    #dbg_value(i32 %sub115, !81, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !3347)
  %sub.i248 = call i32 @llvm.abs.i32(i32 %sub115, i1 true), !dbg !3349
  %cmp118 = icmp ult i32 %sub.i248, %mul50, !dbg !3350
  br i1 %cmp118, label %if.then120, label %if.end174, !dbg !3351

if.then120:                                       ; preds = %land.lhs.true112
  %cmp121 = icmp eq i8 %22, 4, !dbg !3352
  br i1 %cmp121, label %if.then123, label %if.else, !dbg !3353

if.then123:                                       ; preds = %if.then120
  %shl125 = shl nuw nsw i32 %conv106, 1, !dbg !3354
  %add127 = add nuw nsw i32 %conv93, 2, !dbg !3356
  %add129 = add nuw nsw i32 %add127, %shl125, !dbg !3357
  %add130 = add nuw nsw i32 %add129, %conv114, !dbg !3358
  %shr131 = lshr i32 %add130, 2, !dbg !3359
  %conv132 = trunc nuw i32 %shr131 to i16, !dbg !3360
  store i16 %conv132, ptr %arrayidx86, align 2, !dbg !3361
  %shl135 = shl nuw nsw i32 %conv114, 1, !dbg !3362
  %add137 = add nuw nsw i32 %conv94, 2, !dbg !3363
  %add139 = add nuw nsw i32 %add137, %conv106, !dbg !3364
  %add140 = add nuw nsw i32 %add139, %shl135, !dbg !3365
  %shr141 = lshr i32 %add140, 2, !dbg !3366
  br label %if.end174.sink.split, !dbg !3367

if.else:                                          ; preds = %if.then120
  %idxprom144 = zext i8 %22 to i64, !dbg !3368
  %arrayidx145 = getelementptr inbounds i8, ptr %arrayidx55, i64 %idxprom144, !dbg !3368
  %33 = load i8, ptr %arrayidx145, align 1, !dbg !3368
  %conv146 = zext i8 %33 to i32, !dbg !3368
  %mul147 = mul nsw i32 %3, %conv146, !dbg !3369
    #dbg_value(i32 %mul147, !3223, !DIExpression(), !3370)
    #dbg_value(i32 %mul147, !3228, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3370)
    #dbg_value(i32 %mul147, !2337, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3371)
    #dbg_value(i32 %mul147, !2342, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3371)
    #dbg_value(i32 poison, !2343, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3371)
    #dbg_value(i32 poison, !2346, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_constu, 3, DW_OP_shra, DW_OP_stack_value), !3373)
    #dbg_value(i32 %mul147, !2351, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3373)
  %34 = shl nsw i32 %sub95, 2, !dbg !3375
  %35 = add nsw i32 %conv106, -5, !dbg !3376
  %36 = add nsw i32 %34, %conv114, !dbg !3376
  %37 = sub nsw i32 %35, %36, !dbg !3376
  %38 = ashr i32 %37, 3, !dbg !3376
  %39 = call i32 @llvm.smin.i32(i32 %mul147, i32 %38), !dbg !3376
    #dbg_value(i32 %39, !2343, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3371)
    #dbg_value(i32 %39, !2355, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3377)
    #dbg_value(i32 %mul147, !2358, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3377)
  %40 = sub i32 -2, %mul147, !dbg !3379
  %41 = call i32 @llvm.smax.i32(i32 %39, i32 %40), !dbg !3379
    #dbg_value(i32 %41, !2343, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3371)
    #dbg_value(i32 %41, !3229, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3370)
  %tobool161.not = icmp eq i32 %41, -1, !dbg !3380
  br i1 %tobool161.not, label %if.end174, label %if.then162, !dbg !3382

if.then162:                                       ; preds = %if.else
  %cond.i4.i250 = xor i32 %41, -1, !dbg !3379
    #dbg_value(i32 %cond.i4.i250, !2343, !DIExpression(), !3371)
    #dbg_value(i32 %cond.i4.i250, !3229, !DIExpression(), !3370)
  %add164 = add nsw i32 %cond.i4.i250, %conv94, !dbg !3383
    #dbg_value(i32 %4, !2549, !DIExpression(), !3385)
    #dbg_value(i32 %add164, !2552, !DIExpression(), !3385)
    #dbg_value(i32 %add164, !2346, !DIExpression(), !3387)
    #dbg_value(i32 0, !2351, !DIExpression(), !3387)
  %cond.i.i251 = call noundef i32 @llvm.smax.i32(i32 %add164, i32 0), !dbg !3389
    #dbg_value(i32 %cond.i.i251, !2552, !DIExpression(), !3385)
    #dbg_value(i32 %cond.i.i251, !2355, !DIExpression(), !3390)
    #dbg_value(i32 %4, !2358, !DIExpression(), !3390)
  %cond.i4.i252 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i251, i32 %4), !dbg !3392
    #dbg_value(i32 %cond.i4.i252, !2552, !DIExpression(), !3385)
  %conv166 = trunc i32 %cond.i4.i252 to i16, !dbg !3393
  store i16 %conv166, ptr %arrayidx92, align 2, !dbg !3394
  %sub168 = sub nsw i32 %conv93, %cond.i4.i250, !dbg !3395
    #dbg_value(i32 %4, !2549, !DIExpression(), !3396)
    #dbg_value(i32 %sub168, !2552, !DIExpression(), !3396)
    #dbg_value(i32 %sub168, !2346, !DIExpression(), !3398)
    #dbg_value(i32 0, !2351, !DIExpression(), !3398)
  %cond.i.i253 = call noundef i32 @llvm.smax.i32(i32 %sub168, i32 0), !dbg !3400
    #dbg_value(i32 %cond.i.i253, !2552, !DIExpression(), !3396)
    #dbg_value(i32 %cond.i.i253, !2355, !DIExpression(), !3401)
    #dbg_value(i32 %4, !2358, !DIExpression(), !3401)
  %cond.i4.i254 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i253, i32 %4), !dbg !3403
    #dbg_value(i32 %cond.i4.i254, !2552, !DIExpression(), !3396)
  br label %if.end174.sink.split, !dbg !3404

if.end174.sink.split:                             ; preds = %if.then123, %if.then162
  %cond.i4.i254.sink = phi i32 [ %cond.i4.i254, %if.then162 ], [ %shr141, %if.then123 ]
  %arrayidx86.sink = phi ptr [ %arrayidx86, %if.then162 ], [ %arrayidx92, %if.then123 ]
  %conv170 = trunc i32 %cond.i4.i254.sink to i16, !dbg !3405
  store i16 %conv170, ptr %arrayidx86.sink, align 2, !dbg !3405
  br label %if.end174, !dbg !3406

if.end174:                                        ; preds = %if.end174.sink.split, %if.then82, %if.else, %land.lhs.true112, %if.then99, %cond.end75
  %42 = load i16, ptr %pos_x90, align 4, !dbg !3406
  %inc = add i16 %42, 1, !dbg !3406
  store i16 %inc, ptr %pos_x90, align 4, !dbg !3406, !DIAssignID !3407
    #dbg_assign(i16 %inc, !3187, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !3407, ptr %pos_x90, !DIExpression(), !3231)
  %43 = load i16, ptr %pos_x, align 4, !dbg !3408
  %inc177 = add i16 %43, 1, !dbg !3408
  store i16 %inc177, ptr %pos_x, align 4, !dbg !3408, !DIAssignID !3409
    #dbg_assign(i16 %inc177, !3188, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !3409, ptr %pos_x, !DIExpression(), !3231)
  %inc178 = add nuw nsw i32 %pel.0256, 1, !dbg !3410
    #dbg_value(i32 %inc178, !3207, !DIExpression(), !3301)
  %exitcond.not = icmp eq i32 %inc178, %2, !dbg !3302
  br i1 %exitcond.not, label %if.end180, label %for.body, !dbg !3303, !llvm.loop !3411

if.end180:                                        ; preds = %if.end174, %if.then53, %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7, !dbg !3413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7, !dbg !3413
  ret void, !dbg !3413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_luma(ptr noundef readonly %mb, i32 noundef %xN, i32 noundef %yN) local_unnamed_addr #2 !dbg !3414 {
entry:
    #dbg_value(ptr %mb, !3418, !DIExpression(), !3421)
    #dbg_value(i32 %xN, !3419, !DIExpression(), !3421)
    #dbg_value(i32 %yN, !3420, !DIExpression(), !3421)
  %cmp = icmp slt i32 %xN, 0, !dbg !3422
  br i1 %cmp, label %return.sink.split, label %if.else, !dbg !3424

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %yN, 0, !dbg !3425
  br i1 %cmp1, label %return.sink.split, label %return, !dbg !3427

return.sink.split:                                ; preds = %if.else, %entry
  %.sink = phi i64 [ 144, %entry ], [ 136, %if.else ]
  %mbup = getelementptr inbounds i8, ptr %mb, i64 %.sink, !dbg !3428
  %0 = load ptr, ptr %mbup, align 8, !dbg !3428
  br label %return, !dbg !3429

return:                                           ; preds = %return.sink.split, %if.else
  %retval.0 = phi ptr [ %mb, %if.else ], [ %0, %return.sink.split ], !dbg !3428
  ret ptr %retval.0, !dbg !3429
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_chroma(ptr noundef readonly %mb, i32 noundef %xN, i32 noundef %yN, i32 noundef %block_width, i32 noundef %block_height) local_unnamed_addr #2 !dbg !3430 {
entry:
    #dbg_value(ptr %mb, !3434, !DIExpression(), !3439)
    #dbg_value(i32 %xN, !3435, !DIExpression(), !3439)
    #dbg_value(i32 %yN, !3436, !DIExpression(), !3439)
    #dbg_value(i32 %block_width, !3437, !DIExpression(), !3439)
    #dbg_value(i32 %block_height, !3438, !DIExpression(), !3439)
  %cmp = icmp slt i32 %xN, 0, !dbg !3440
  br i1 %cmp, label %if.then, label %if.else3, !dbg !3442

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %yN, %block_height, !dbg !3443
  br i1 %cmp1, label %if.then2, label %return, !dbg !3446

if.then2:                                         ; preds = %if.then
  %mbleft = getelementptr inbounds i8, ptr %mb, i64 144, !dbg !3447
  %0 = load ptr, ptr %mbleft, align 8, !dbg !3447
  br label %return, !dbg !3448

if.else3:                                         ; preds = %entry
  %cmp4 = icmp slt i32 %xN, %block_width, !dbg !3449
  br i1 %cmp4, label %if.then5, label %return, !dbg !3451

if.then5:                                         ; preds = %if.else3
  %cmp6 = icmp slt i32 %yN, 0, !dbg !3452
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !3455

if.then7:                                         ; preds = %if.then5
  %mbup = getelementptr inbounds i8, ptr %mb, i64 136, !dbg !3456
  %1 = load ptr, ptr %mbup, align 8, !dbg !3456
  br label %return, !dbg !3457

if.else8:                                         ; preds = %if.then5
  %cmp9 = icmp slt i32 %yN, %block_height, !dbg !3458
  %mb. = select i1 %cmp9, ptr %mb, ptr null, !dbg !3460
  br label %return, !dbg !3460

return:                                           ; preds = %if.else3, %if.else8, %if.then, %if.then7, %if.then2
  %retval.0 = phi ptr [ %0, %if.then2 ], [ %1, %if.then7 ], [ null, %if.then ], [ %mb., %if.else8 ], [ null, %if.else3 ], !dbg !3461
  ret ptr %retval.0, !dbg !3462
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !3463 void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !3465 void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "po2", scope: !2, file: !76, line: 247, type: !103, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !72, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ldecod_src/loop_filter_mbaff.c", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e13e6847214540c59fa659ab6839c575")
!4 = !{!5, !14, !20, !29, !36, !44, !52, !56}
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
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 166, baseType: !31, size: 32, elements: !53)
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "IS_LUMA", value: 0)
!55 = !DIEnumerator(name: "IS_CHROMA", value: 1)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 34, baseType: !31, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "LIST_0", value: 0)
!59 = !DIEnumerator(name: "LIST_1", value: 1)
!60 = !DIEnumerator(name: "BI_PRED", value: 2)
!61 = !DIEnumerator(name: "BI_PRED_L0", value: 3)
!62 = !DIEnumerator(name: "BI_PRED_L1", value: 4)
!63 = !{!64, !65, !68, !69}
!64 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !66, line: 21, baseType: !67)
!66 = !DIFile(filename: "ldecod_src/inc/typedefs.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "e1393d024b72e653f4e6dbeffdb0b154")
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "imgpel", file: !66, line: 41, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !66, line: 23, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !{!0, !73, !83, !90, !96, !98}
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
!84 = distinct !DIGlobalVariable(name: "pelnum_cr", scope: !2, file: !85, line: 60, type: !86, isLocal: true, isDefinition: true)
!85 = !DIFile(filename: "ldecod_src/inc/loop_filter.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "774c4ea00ab9834861f6c14263c9e78a")
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !87)
!87 = !{!88, !89}
!88 = !DISubrange(count: 2)
!89 = !DISubrange(count: 4)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ALPHA_TABLE", scope: !2, file: !85, line: 36, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 416, elements: !94)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!94 = !{!95}
!95 = !DISubrange(count: 52)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "BETA_TABLE", scope: !2, file: !85, line: 37, type: !92, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "CLIP_TAB", scope: !2, file: !85, line: 38, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2080, elements: !101)
!101 = !{!95, !102}
!102 = !DISubrange(count: 5)
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
!122 = distinct !DISubprogram(name: "set_loop_filter_functions_mbaff", scope: !3, file: !3, line: 36, type: !123, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
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
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
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
!453 = !{!88}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !444, file: !127, line: 910, baseType: !65, size: 8, offset: 224)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !444, file: !127, line: 911, baseType: !65, size: 8, offset: 232)
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
!533 = !DIDerivedType(tag: DW_TAG_member, name: "is_long_term", scope: !520, file: !493, line: 61, baseType: !65, size: 8, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "used_for_reference", scope: !520, file: !493, line: 62, baseType: !7, size: 32, offset: 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "is_output", scope: !520, file: !493, line: 63, baseType: !7, size: 32, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "non_existing", scope: !520, file: !493, line: 64, baseType: !7, size: 32, offset: 416)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "separate_colour_plane_flag", scope: !520, file: !493, line: 65, baseType: !7, size: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice_id", scope: !520, file: !493, line: 67, baseType: !64, size: 16, offset: 480)
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
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mv_x", scope: !572, file: !127, line: 102, baseType: !64, size: 16)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mv_y", scope: !572, file: !127, line: 103, baseType: !64, size: 16, offset: 16)
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
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
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
!674 = !DIDerivedType(tag: DW_TAG_member, name: "current_slice_nr", scope: !482, file: !127, line: 389, baseType: !64, size: 16, offset: 928)
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
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_field_flag", scope: !482, file: !127, line: 415, baseType: !65, size: 8, offset: 1440)
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
!753 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !751, file: !127, line: 110, baseType: !64, size: 16)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !751, file: !127, line: 111, baseType: !64, size: 16, offset: 16)
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
!771 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !742, file: !127, line: 223, baseType: !64, size: 16, offset: 864)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ei_flag", scope: !742, file: !127, line: 224, baseType: !410, size: 8, offset: 880)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dpl_flag", scope: !742, file: !127, line: 225, baseType: !410, size: 8, offset: 888)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "delta_quant", scope: !742, file: !127, line: 226, baseType: !64, size: 16, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "list_offset", scope: !742, file: !127, line: 227, baseType: !64, size: 16, offset: 912)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mb_up", scope: !742, file: !127, line: 229, baseType: !777, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mb_left", scope: !742, file: !127, line: 230, baseType: !777, size: 64, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mbup", scope: !742, file: !127, line: 232, baseType: !777, size: 64, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mbleft", scope: !742, file: !127, line: 233, baseType: !777, size: 64, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !742, file: !127, line: 236, baseType: !64, size: 16, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !742, file: !127, line: 237, baseType: !783, size: 1024, offset: 1232)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !784)
!784 = !{!88, !89, !89, !88}
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
!798 = !{!89}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !742, file: !127, line: 246, baseType: !797, size: 32, offset: 2944)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ipmode_DPCM", scope: !742, file: !127, line: 247, baseType: !410, size: 8, offset: 2976)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !742, file: !127, line: 248, baseType: !410, size: 8, offset: 2984)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !742, file: !127, line: 249, baseType: !410, size: 8, offset: 2992)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !742, file: !127, line: 250, baseType: !64, size: 16, offset: 3008)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !742, file: !127, line: 251, baseType: !64, size: 16, offset: 3024)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !742, file: !127, line: 252, baseType: !64, size: 16, offset: 3040)
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
!826 = !{null, !777, !827, !837, !64, !562, !7, !7, !7, !7, !7}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !127, line: 85, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !127, line: 77, size: 128, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !829, file: !127, line: 79, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !829, file: !127, line: 80, baseType: !7, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !829, file: !127, line: 81, baseType: !64, size: 16, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !829, file: !127, line: 82, baseType: !64, size: 16, offset: 80)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !829, file: !127, line: 83, baseType: !64, size: 16, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !829, file: !127, line: 84, baseType: !64, size: 16, offset: 112)
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
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mixedModeEdgeFlag", scope: !742, file: !127, line: 272, baseType: !65, size: 8, offset: 3776)
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
!882 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !879, file: !127, line: 120, baseType: !67, size: 8, offset: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !879, file: !127, line: 121, baseType: !67, size: 8, offset: 24)
!884 = !{!160, !885}
!885 = !DISubrange(count: 11)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !874, file: !127, line: 148, baseType: !887, size: 576, offset: 1056)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 576, elements: !888)
!888 = !{!88, !889}
!889 = !DISubrange(count: 9)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !874, file: !127, line: 149, baseType: !891, size: 640, offset: 1632)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 640, elements: !892)
!892 = !{!88, !893}
!893 = !DISubrange(count: 10)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !874, file: !127, line: 150, baseType: !895, size: 384, offset: 2272)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 384, elements: !896)
!896 = !{!88, !234}
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
!912 = !{!160, !89}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !903, file: !127, line: 170, baseType: !914, size: 2816, offset: 672)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 2816, elements: !915)
!915 = !{!916, !89}
!916 = !DISubrange(count: 22)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !903, file: !127, line: 171, baseType: !918, size: 21120, offset: 3488)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 21120, elements: !919)
!919 = !{!88, !916, !920}
!920 = !DISubrange(count: 15)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !903, file: !127, line: 172, baseType: !918, size: 21120, offset: 24608)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !903, file: !127, line: 173, baseType: !923, size: 3520, offset: 45728)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 3520, elements: !924)
!924 = !{!916, !102}
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
!950 = !DIDerivedType(tag: DW_TAG_member, name: "DFDisableIdc", scope: !482, file: !127, line: 461, baseType: !64, size: 16, offset: 9760)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "DFAlphaC0Offset", scope: !482, file: !127, line: 462, baseType: !64, size: 16, offset: 9776)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "DFBetaOffset", scope: !482, file: !127, line: 463, baseType: !64, size: 16, offset: 9792)
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
!972 = !{!160, !234, !89, !89}
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
!992 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_luma", scope: !482, file: !127, line: 508, baseType: !64, size: 16, offset: 106432)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wp_round_chroma", scope: !482, file: !127, line: 509, baseType: !64, size: 16, offset: 106448)
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
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_luma", scope: !128, file: !127, line: 662, baseType: !64, size: 16, offset: 6792320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth_chroma", scope: !128, file: !127, line: 663, baseType: !64, size: 16, offset: 6792336)
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
!1113 = !{!160, !88}
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
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
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
!1295 = !DILocalVariable(name: "p_Vid", arg: 1, scope: !122, file: !3, line: 36, type: !125)
!1296 = !DILocation(line: 0, scope: !122)
!1297 = !DILocation(line: 38, column: 10, scope: !122)
!1298 = !DILocation(line: 38, column: 28, scope: !122)
!1299 = !DILocation(line: 39, column: 10, scope: !122)
!1300 = !DILocation(line: 39, column: 28, scope: !122)
!1301 = !DILocation(line: 40, column: 10, scope: !122)
!1302 = !DILocation(line: 40, column: 28, scope: !122)
!1303 = !DILocation(line: 41, column: 10, scope: !122)
!1304 = !DILocation(line: 41, column: 28, scope: !122)
!1305 = !DILocation(line: 42, column: 10, scope: !122)
!1306 = !DILocation(line: 42, column: 28, scope: !122)
!1307 = !DILocation(line: 43, column: 10, scope: !122)
!1308 = !DILocation(line: 43, column: 28, scope: !122)
!1309 = !DILocation(line: 44, column: 1, scope: !122)
!1310 = distinct !DISubprogram(name: "GetStrengthVerMBAff", scope: !3, file: !3, line: 86, type: !1311, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !256, !740, !7, !7, !518}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1341, !1342, !1343, !1344, !1347, !1348, !1350, !1351, !1352, !1353, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1314 = !DILocalVariable(name: "Strength", arg: 1, scope: !1310, file: !3, line: 86, type: !256)
!1315 = !DILocalVariable(name: "MbQ", arg: 2, scope: !1310, file: !3, line: 86, type: !740)
!1316 = !DILocalVariable(name: "edge", arg: 3, scope: !1310, file: !3, line: 86, type: !7)
!1317 = !DILocalVariable(name: "mvlimit", arg: 4, scope: !1310, file: !3, line: 86, type: !7)
!1318 = !DILocalVariable(name: "p", arg: 5, scope: !1310, file: !3, line: 86, type: !518)
!1319 = !DILocalVariable(name: "blkP", scope: !1310, file: !3, line: 88, type: !64)
!1320 = !DILocalVariable(name: "blkQ", scope: !1310, file: !3, line: 88, type: !64)
!1321 = !DILocalVariable(name: "idx", scope: !1310, file: !3, line: 88, type: !64)
!1322 = !DILocalVariable(name: "StrValue", scope: !1310, file: !3, line: 91, type: !7)
!1323 = !DILocalVariable(name: "mb_x", scope: !1310, file: !3, line: 92, type: !64)
!1324 = !DILocalVariable(name: "mb_y", scope: !1310, file: !3, line: 92, type: !64)
!1325 = !DILocalVariable(name: "MbP", scope: !1310, file: !3, line: 94, type: !740)
!1326 = !DILocalVariable(name: "pixP", scope: !1310, file: !3, line: 96, type: !828)
!1327 = !DILocalVariable(name: "p_Vid", scope: !1310, file: !3, line: 97, type: !125)
!1328 = !DILocalVariable(name: "blk_y", scope: !1329, file: !3, line: 144, type: !7)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 143, column: 11)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 140, column: 20)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 138, column: 15)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 134, column: 9)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 133, column: 9)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 133, column: 9)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 131, column: 7)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 122, column: 11)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 120, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 119, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 114, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 99, column: 7)
!1341 = !DILocalVariable(name: "blk_x", scope: !1329, file: !3, line: 145, type: !7)
!1342 = !DILocalVariable(name: "blk_y2", scope: !1329, file: !3, line: 146, type: !7)
!1343 = !DILocalVariable(name: "blk_x2", scope: !1329, file: !3, line: 147, type: !7)
!1344 = !DILocalVariable(name: "mv_info_p", scope: !1329, file: !3, line: 149, type: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "PicMotionParams", file: !493, line: 43, baseType: !564)
!1347 = !DILocalVariable(name: "mv_info_q", scope: !1329, file: !3, line: 150, type: !1345)
!1348 = !DILocalVariable(name: "ref_p0", scope: !1329, file: !3, line: 151, type: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "StorablePicturePtr", file: !493, line: 140, baseType: !518)
!1350 = !DILocalVariable(name: "ref_q0", scope: !1329, file: !3, line: 152, type: !1349)
!1351 = !DILocalVariable(name: "ref_p1", scope: !1329, file: !3, line: 153, type: !1349)
!1352 = !DILocalVariable(name: "ref_q1", scope: !1329, file: !3, line: 154, type: !1349)
!1353 = !DILocalVariable(name: "blk_y", scope: !1354, file: !3, line: 230, type: !7)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 229, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 227, column: 13)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 222, column: 16)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 218, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 215, column: 15)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 214, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 213, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 200, column: 7)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 199, column: 7)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 199, column: 7)
!1364 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 198, column: 5)
!1365 = !DILocalVariable(name: "blk_x", scope: !1354, file: !3, line: 231, type: !7)
!1366 = !DILocalVariable(name: "blk_y2", scope: !1354, file: !3, line: 232, type: !7)
!1367 = !DILocalVariable(name: "blk_x2", scope: !1354, file: !3, line: 233, type: !7)
!1368 = !DILocalVariable(name: "mv_info_p", scope: !1354, file: !3, line: 235, type: !1345)
!1369 = !DILocalVariable(name: "mv_info_q", scope: !1354, file: !3, line: 236, type: !1345)
!1370 = !DILocalVariable(name: "ref_p0", scope: !1354, file: !3, line: 237, type: !1349)
!1371 = !DILocalVariable(name: "ref_q0", scope: !1354, file: !3, line: 238, type: !1349)
!1372 = !DILocalVariable(name: "ref_p1", scope: !1354, file: !3, line: 239, type: !1349)
!1373 = !DILocalVariable(name: "ref_q1", scope: !1354, file: !3, line: 240, type: !1349)
!1374 = distinct !DIAssignID()
!1375 = !DILocation(line: 0, scope: !1310)
!1376 = distinct !DIAssignID()
!1377 = distinct !DIAssignID()
!1378 = !DILocation(line: 92, column: 3, scope: !1310)
!1379 = !DILocation(line: 96, column: 3, scope: !1310)
!1380 = !DILocation(line: 97, column: 33, scope: !1310)
!1381 = !DILocation(line: 99, column: 11, scope: !1340)
!1382 = !DILocation(line: 99, column: 32, scope: !1340)
!1383 = !DILocation(line: 103, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 102, column: 5)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 101, column: 5)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 101, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 100, column: 3)
!1388 = !DILocation(line: 107, column: 22, scope: !1384)
!1389 = !DILocation(line: 107, column: 35, scope: !1384)
!1390 = !DILocation(line: 107, column: 15, scope: !1384)
!1391 = !DILocation(line: 108, column: 45, scope: !1384)
!1392 = !DILocation(line: 108, column: 62, scope: !1384)
!1393 = !DILocation(line: 108, column: 54, scope: !1384)
!1394 = !DILocation(line: 108, column: 32, scope: !1384)
!1395 = !DILocation(line: 108, column: 30, scope: !1384)
!1396 = !DILocation(line: 110, column: 21, scope: !1384)
!1397 = !DILocation(line: 110, column: 7, scope: !1384)
!1398 = !DILocation(line: 284, column: 1, scope: !1310)
!1399 = !DILocation(line: 115, column: 5, scope: !1339)
!1400 = !DILocation(line: 117, column: 20, scope: !1339)
!1401 = !DILocation(line: 117, column: 33, scope: !1339)
!1402 = !DILocation(line: 117, column: 13, scope: !1339)
!1403 = !DILocation(line: 119, column: 15, scope: !1338)
!1404 = !DILocation(line: 119, column: 24, scope: !1338)
!1405 = !DILocation(line: 119, column: 33, scope: !1338)
!1406 = !DILocation(line: 119, column: 41, scope: !1338)
!1407 = !DILocation(line: 119, column: 50, scope: !1338)
!1408 = !DILocation(line: 119, column: 9, scope: !1339)
!1409 = !DILocation(line: 121, column: 12, scope: !1337)
!1410 = !DILocation(line: 121, column: 30, scope: !1337)
!1411 = !DILocation(line: 122, column: 16, scope: !1336)
!1412 = !DILocation(line: 122, column: 31, scope: !1336)
!1413 = !DILocation(line: 122, column: 39, scope: !1336)
!1414 = !DILocation(line: 122, column: 47, scope: !1336)
!1415 = !DILocation(line: 122, column: 62, scope: !1336)
!1416 = !DILocation(line: 122, column: 11, scope: !1337)
!1417 = !DILocation(line: 126, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 123, column: 7)
!1419 = !DILocation(line: 128, column: 26, scope: !1418)
!1420 = !DILocation(line: 128, column: 9, scope: !1418)
!1421 = !DILocation(line: 129, column: 7, scope: !1418)
!1422 = !DILocation(line: 132, column: 38, scope: !1335)
!1423 = !DILocation(line: 132, column: 9, scope: !1335)
!1424 = !DILocation(line: 136, column: 33, scope: !1332)
!1425 = !DILocation(line: 133, column: 9, scope: !1334)
!1426 = !DILocation(line: 135, column: 32, scope: !1332)
!1427 = !DILocation(line: 135, column: 42, scope: !1332)
!1428 = !DILocation(line: 138, column: 17, scope: !1331)
!1429 = !DILocation(line: 138, column: 46, scope: !1331)
!1430 = !DILocalVariable(name: "x", arg: 1, scope: !1431, file: !76, line: 257, type: !7)
!1431 = distinct !DISubprogram(name: "i64_power2", scope: !76, file: !76, line: 257, type: !1432, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!788, !7}
!1434 = !{!1430}
!1435 = !DILocation(line: 0, scope: !1431, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 138, column: 35, scope: !1331)
!1437 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !1436)
!1438 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !1436)
!1439 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !1436)
!1440 = !DILocation(line: 138, column: 33, scope: !1331)
!1441 = !DILocation(line: 138, column: 53, scope: !1331)
!1442 = !DILocation(line: 138, column: 59, scope: !1331)
!1443 = !DILocation(line: 136, column: 35, scope: !1332)
!1444 = !DILocation(line: 136, column: 45, scope: !1332)
!1445 = !DILocation(line: 138, column: 64, scope: !1331)
!1446 = !DILocation(line: 0, scope: !1431, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 138, column: 82, scope: !1331)
!1448 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !1447)
!1449 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !1447)
!1450 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !1447)
!1451 = !DILocation(line: 138, column: 80, scope: !1331)
!1452 = !DILocation(line: 138, column: 100, scope: !1331)
!1453 = !DILocation(line: 138, column: 15, scope: !1332)
!1454 = !DILocation(line: 140, column: 25, scope: !1330)
!1455 = !DILocation(line: 140, column: 35, scope: !1330)
!1456 = !DILocation(line: 140, column: 50, scope: !1330)
!1457 = !DILocation(line: 144, column: 45, scope: !1329)
!1458 = !DILocation(line: 144, column: 37, scope: !1329)
!1459 = !DILocation(line: 0, scope: !1329)
!1460 = !DILocation(line: 146, column: 32, scope: !1329)
!1461 = !DILocation(line: 146, column: 38, scope: !1329)
!1462 = !DILocation(line: 149, column: 46, scope: !1329)
!1463 = !DILocation(line: 149, column: 43, scope: !1329)
!1464 = !DILocation(line: 150, column: 43, scope: !1329)
!1465 = !DILocation(line: 151, column: 41, scope: !1329)
!1466 = !DILocation(line: 152, column: 41, scope: !1329)
!1467 = !DILocation(line: 153, column: 41, scope: !1329)
!1468 = !DILocation(line: 154, column: 41, scope: !1329)
!1469 = !DILocation(line: 156, column: 26, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 156, column: 18)
!1471 = !DILocation(line: 156, column: 36, scope: !1470)
!1472 = !DILocation(line: 156, column: 66, scope: !1470)
!1473 = !DILocation(line: 156, column: 76, scope: !1470)
!1474 = !DILocation(line: 159, column: 26, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 159, column: 19)
!1476 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 157, column: 13)
!1477 = !DILocation(line: 0, scope: !1475)
!1478 = !DILocation(line: 159, column: 19, scope: !1476)
!1479 = !DILocation(line: 0, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 162, column: 21)
!1481 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 160, column: 15)
!1482 = !DILocalVariable(name: "mv0", arg: 1, scope: !1483, file: !85, line: 63, type: !1486)
!1483 = distinct !DISubprogram(name: "compare_mvs", scope: !85, file: !85, line: 63, type: !1484, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!7, !1486, !1486, !7}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1488 = !{!1482, !1489, !1490}
!1489 = !DILocalVariable(name: "mv1", arg: 2, scope: !1483, file: !85, line: 63, type: !1486)
!1490 = !DILocalVariable(name: "mvlimit", arg: 3, scope: !1483, file: !85, line: 63, type: !7)
!1491 = !DILocation(line: 0, scope: !1483, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 165, column: 21, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 163, column: 17)
!1494 = !DILocation(line: 0, scope: !1483, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 171, column: 21, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 169, column: 17)
!1497 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1479)
!1498 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1479)
!1499 = !DILocation(line: 162, column: 21, scope: !1481)
!1500 = !DILocation(line: 165, column: 69, scope: !1493)
!1501 = !DILocation(line: 165, column: 21, scope: !1493)
!1502 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1492)
!1503 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1492)
!1504 = !DILocation(line: 0, scope: !75, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1492)
!1506 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1505)
!1507 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1492)
!1508 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1492)
!1509 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1492)
!1510 = !DILocation(line: 0, scope: !75, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1492)
!1512 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1511)
!1513 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1492)
!1514 = !DILocation(line: 165, column: 90, scope: !1493)
!1515 = !DILocation(line: 166, column: 34, scope: !1493)
!1516 = !DILocation(line: 166, column: 58, scope: !1493)
!1517 = !DILocation(line: 166, column: 21, scope: !1493)
!1518 = !DILocation(line: 0, scope: !1483, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 166, column: 21, scope: !1493)
!1520 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1519)
!1521 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1519)
!1522 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1519)
!1523 = !DILocation(line: 0, scope: !75, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1519)
!1525 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1524)
!1526 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1519)
!1527 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1519)
!1528 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1519)
!1529 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1519)
!1530 = !DILocation(line: 0, scope: !75, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1519)
!1532 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1531)
!1533 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1519)
!1534 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1519)
!1535 = !DILocation(line: 171, column: 58, scope: !1496)
!1536 = !DILocation(line: 171, column: 21, scope: !1496)
!1537 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1495)
!1538 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1495)
!1539 = !DILocation(line: 0, scope: !75, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1495)
!1541 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1540)
!1542 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1495)
!1543 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1495)
!1544 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1495)
!1545 = !DILocation(line: 0, scope: !75, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1495)
!1547 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1546)
!1548 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1495)
!1549 = !DILocation(line: 171, column: 90, scope: !1496)
!1550 = !DILocation(line: 171, column: 69, scope: !1496)
!1551 = !DILocation(line: 172, column: 34, scope: !1496)
!1552 = !DILocation(line: 172, column: 21, scope: !1496)
!1553 = !DILocation(line: 0, scope: !1483, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 172, column: 21, scope: !1496)
!1555 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1554)
!1556 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1554)
!1557 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1554)
!1558 = !DILocation(line: 0, scope: !75, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1554)
!1560 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1559)
!1561 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1554)
!1562 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1554)
!1563 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1554)
!1564 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1554)
!1565 = !DILocation(line: 0, scope: !75, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1554)
!1567 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1566)
!1568 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1554)
!1569 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1554)
!1570 = !DILocation(line: 179, column: 67, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 176, column: 15)
!1572 = !DILocation(line: 179, column: 19, scope: !1571)
!1573 = !DILocation(line: 0, scope: !1483, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 179, column: 19, scope: !1571)
!1575 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1574)
!1576 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1574)
!1577 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1574)
!1578 = !DILocation(line: 0, scope: !75, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1574)
!1580 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1579)
!1581 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1574)
!1582 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1574)
!1583 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1574)
!1584 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1574)
!1585 = !DILocation(line: 0, scope: !75, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1574)
!1587 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1586)
!1588 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1574)
!1589 = !DILocation(line: 179, column: 88, scope: !1571)
!1590 = !DILocation(line: 182, column: 19, scope: !1571)
!1591 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 182, column: 19, scope: !1571)
!1593 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1592)
!1594 = !DILocation(line: 180, column: 32, scope: !1571)
!1595 = !DILocation(line: 180, column: 56, scope: !1571)
!1596 = !DILocation(line: 180, column: 19, scope: !1571)
!1597 = !DILocation(line: 0, scope: !1483, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 180, column: 19, scope: !1571)
!1599 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1598)
!1600 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1598)
!1601 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1598)
!1602 = !DILocation(line: 0, scope: !75, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1598)
!1604 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1603)
!1605 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1598)
!1606 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1598)
!1607 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1598)
!1608 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1598)
!1609 = !DILocation(line: 0, scope: !75, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1598)
!1611 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1610)
!1612 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1598)
!1613 = !DILocation(line: 181, column: 19, scope: !1571)
!1614 = !DILocation(line: 0, scope: !1483, inlinedAt: !1592)
!1615 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1592)
!1616 = !DILocation(line: 0, scope: !75, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1592)
!1618 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1617)
!1619 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1592)
!1620 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1592)
!1621 = !DILocation(line: 0, scope: !75, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1592)
!1623 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1622)
!1624 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1592)
!1625 = !DILocation(line: 182, column: 88, scope: !1571)
!1626 = !DILocation(line: 183, column: 32, scope: !1571)
!1627 = !DILocation(line: 183, column: 19, scope: !1571)
!1628 = !DILocation(line: 0, scope: !1483, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 183, column: 19, scope: !1571)
!1630 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1629)
!1631 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1629)
!1632 = !DILocation(line: 0, scope: !75, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1629)
!1634 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1633)
!1635 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1629)
!1636 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1629)
!1637 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1629)
!1638 = !DILocation(line: 0, scope: !75, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1629)
!1640 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1639)
!1641 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1629)
!1642 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1629)
!1643 = !DILocation(line: 0, scope: !1470)
!1644 = !DILocation(line: 0, scope: !1331)
!1645 = !DILocation(line: 191, column: 44, scope: !1332)
!1646 = !DILocation(line: 191, column: 27, scope: !1332)
!1647 = !DILocation(line: 191, column: 33, scope: !1332)
!1648 = !DILocation(line: 192, column: 18, scope: !1332)
!1649 = distinct !DIAssignID()
!1650 = !DILocation(line: 193, column: 22, scope: !1332)
!1651 = distinct !DIAssignID()
!1652 = !DILocation(line: 133, column: 48, scope: !1333)
!1653 = !DILocation(line: 133, column: 23, scope: !1333)
!1654 = !DILocation(line: 133, column: 27, scope: !1333)
!1655 = distinct !{!1655, !1425, !1656}
!1656 = !DILocation(line: 194, column: 9, scope: !1334)
!1657 = !DILocation(line: 199, column: 7, scope: !1363)
!1658 = !DILocation(line: 199, column: 21, scope: !1362)
!1659 = !DILocation(line: 201, column: 9, scope: !1361)
!1660 = !DILocation(line: 202, column: 30, scope: !1361)
!1661 = !DILocation(line: 202, column: 40, scope: !1361)
!1662 = !DILocation(line: 203, column: 31, scope: !1361)
!1663 = !DILocation(line: 203, column: 33, scope: !1361)
!1664 = !DILocation(line: 203, column: 51, scope: !1361)
!1665 = !DILocation(line: 203, column: 53, scope: !1361)
!1666 = !DILocation(line: 203, column: 43, scope: !1361)
!1667 = !DILocation(line: 205, column: 24, scope: !1361)
!1668 = !DILocation(line: 205, column: 37, scope: !1361)
!1669 = !DILocation(line: 205, column: 17, scope: !1361)
!1670 = !DILocation(line: 206, column: 47, scope: !1361)
!1671 = !DILocation(line: 206, column: 64, scope: !1361)
!1672 = !DILocation(line: 206, column: 56, scope: !1361)
!1673 = !DILocation(line: 206, column: 34, scope: !1361)
!1674 = !DILocation(line: 206, column: 32, scope: !1361)
!1675 = !DILocation(line: 209, column: 9, scope: !1361)
!1676 = !DILocation(line: 209, column: 23, scope: !1361)
!1677 = !DILocation(line: 213, column: 18, scope: !1360)
!1678 = !DILocation(line: 213, column: 33, scope: !1360)
!1679 = !DILocation(line: 213, column: 42, scope: !1360)
!1680 = !DILocation(line: 213, column: 50, scope: !1360)
!1681 = !DILocation(line: 213, column: 65, scope: !1360)
!1682 = !DILocation(line: 213, column: 13, scope: !1361)
!1683 = !DILocation(line: 215, column: 17, scope: !1358)
!1684 = !DILocation(line: 215, column: 46, scope: !1358)
!1685 = !DILocation(line: 0, scope: !1431, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 215, column: 35, scope: !1358)
!1687 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !1686)
!1688 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !1686)
!1689 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !1686)
!1690 = !DILocation(line: 215, column: 33, scope: !1358)
!1691 = !DILocation(line: 215, column: 53, scope: !1358)
!1692 = !DILocation(line: 215, column: 59, scope: !1358)
!1693 = !DILocation(line: 215, column: 69, scope: !1358)
!1694 = !DILocation(line: 215, column: 64, scope: !1358)
!1695 = !DILocation(line: 0, scope: !1431, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 215, column: 82, scope: !1358)
!1697 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !1696)
!1698 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !1696)
!1699 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !1696)
!1700 = !DILocation(line: 215, column: 80, scope: !1358)
!1701 = !DILocation(line: 215, column: 100, scope: !1358)
!1702 = !DILocation(line: 215, column: 15, scope: !1359)
!1703 = !DILocation(line: 222, column: 21, scope: !1356)
!1704 = !DILocation(line: 222, column: 16, scope: !1356)
!1705 = !DILocation(line: 222, column: 16, scope: !1357)
!1706 = !DILocation(line: 228, column: 44, scope: !1355)
!1707 = !DILocation(line: 228, column: 15, scope: !1355)
!1708 = !DILocation(line: 230, column: 32, scope: !1354)
!1709 = !DILocation(line: 230, column: 36, scope: !1354)
!1710 = !DILocation(line: 230, column: 49, scope: !1354)
!1711 = !DILocation(line: 230, column: 41, scope: !1354)
!1712 = !DILocation(line: 0, scope: !1354)
!1713 = !DILocation(line: 231, column: 32, scope: !1354)
!1714 = !DILocation(line: 231, column: 36, scope: !1354)
!1715 = !DILocation(line: 231, column: 41, scope: !1354)
!1716 = !DILocation(line: 232, column: 36, scope: !1354)
!1717 = !DILocation(line: 232, column: 42, scope: !1354)
!1718 = !DILocation(line: 233, column: 36, scope: !1354)
!1719 = !DILocation(line: 233, column: 42, scope: !1354)
!1720 = !DILocation(line: 235, column: 50, scope: !1354)
!1721 = !DILocation(line: 235, column: 47, scope: !1354)
!1722 = !DILocation(line: 236, column: 47, scope: !1354)
!1723 = !DILocation(line: 237, column: 45, scope: !1354)
!1724 = !DILocation(line: 238, column: 45, scope: !1354)
!1725 = !DILocation(line: 239, column: 45, scope: !1354)
!1726 = !DILocation(line: 240, column: 45, scope: !1354)
!1727 = !DILocation(line: 242, column: 30, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 242, column: 22)
!1729 = !DILocation(line: 242, column: 40, scope: !1728)
!1730 = !DILocation(line: 242, column: 70, scope: !1728)
!1731 = !DILocation(line: 242, column: 80, scope: !1728)
!1732 = !DILocation(line: 244, column: 32, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 243, column: 17)
!1734 = !DILocation(line: 246, column: 30, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 246, column: 23)
!1736 = !DILocation(line: 0, scope: !1735)
!1737 = !DILocation(line: 246, column: 23, scope: !1733)
!1738 = !DILocation(line: 0, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 249, column: 25)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 247, column: 19)
!1741 = !DILocation(line: 0, scope: !1483, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 252, column: 25, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 250, column: 21)
!1744 = !DILocation(line: 0, scope: !1483, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 258, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 256, column: 21)
!1747 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1738)
!1748 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1738)
!1749 = !DILocation(line: 249, column: 25, scope: !1740)
!1750 = !DILocation(line: 252, column: 73, scope: !1743)
!1751 = !DILocation(line: 252, column: 25, scope: !1743)
!1752 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1742)
!1753 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1742)
!1754 = !DILocation(line: 0, scope: !75, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1742)
!1756 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1755)
!1757 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1742)
!1758 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1742)
!1759 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1742)
!1760 = !DILocation(line: 0, scope: !75, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1742)
!1762 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1761)
!1763 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1742)
!1764 = !DILocation(line: 252, column: 94, scope: !1743)
!1765 = !DILocation(line: 253, column: 38, scope: !1743)
!1766 = !DILocation(line: 253, column: 62, scope: !1743)
!1767 = !DILocation(line: 253, column: 25, scope: !1743)
!1768 = !DILocation(line: 0, scope: !1483, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 253, column: 25, scope: !1743)
!1770 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1769)
!1771 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1769)
!1772 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1769)
!1773 = !DILocation(line: 0, scope: !75, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1769)
!1775 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1774)
!1776 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1769)
!1777 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1769)
!1778 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1769)
!1779 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1769)
!1780 = !DILocation(line: 0, scope: !75, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1769)
!1782 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1781)
!1783 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1769)
!1784 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1769)
!1785 = !DILocation(line: 251, column: 40, scope: !1743)
!1786 = !DILocation(line: 254, column: 21, scope: !1743)
!1787 = !DILocation(line: 258, column: 62, scope: !1746)
!1788 = !DILocation(line: 258, column: 25, scope: !1746)
!1789 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1745)
!1790 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1745)
!1791 = !DILocation(line: 0, scope: !75, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1745)
!1793 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1792)
!1794 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1745)
!1795 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1745)
!1796 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1745)
!1797 = !DILocation(line: 0, scope: !75, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1745)
!1799 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1798)
!1800 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1745)
!1801 = !DILocation(line: 258, column: 94, scope: !1746)
!1802 = !DILocation(line: 258, column: 73, scope: !1746)
!1803 = !DILocation(line: 259, column: 38, scope: !1746)
!1804 = !DILocation(line: 259, column: 25, scope: !1746)
!1805 = !DILocation(line: 0, scope: !1483, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 259, column: 25, scope: !1746)
!1807 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1806)
!1808 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1806)
!1809 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1806)
!1810 = !DILocation(line: 0, scope: !75, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1806)
!1812 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1811)
!1813 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1806)
!1814 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1806)
!1815 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1806)
!1816 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1806)
!1817 = !DILocation(line: 0, scope: !75, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1806)
!1819 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1818)
!1820 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1806)
!1821 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1806)
!1822 = !DILocation(line: 257, column: 40, scope: !1746)
!1823 = !DILocation(line: 266, column: 71, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 263, column: 19)
!1825 = !DILocation(line: 266, column: 23, scope: !1824)
!1826 = !DILocation(line: 0, scope: !1483, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 266, column: 23, scope: !1824)
!1828 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1827)
!1829 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1827)
!1830 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1827)
!1831 = !DILocation(line: 0, scope: !75, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1827)
!1833 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1832)
!1834 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1827)
!1835 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1827)
!1836 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1827)
!1837 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1827)
!1838 = !DILocation(line: 0, scope: !75, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1827)
!1840 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1839)
!1841 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1827)
!1842 = !DILocation(line: 266, column: 92, scope: !1824)
!1843 = !DILocation(line: 269, column: 23, scope: !1824)
!1844 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 269, column: 23, scope: !1824)
!1846 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1845)
!1847 = !DILocation(line: 267, column: 36, scope: !1824)
!1848 = !DILocation(line: 267, column: 60, scope: !1824)
!1849 = !DILocation(line: 267, column: 23, scope: !1824)
!1850 = !DILocation(line: 0, scope: !1483, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 267, column: 23, scope: !1824)
!1852 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1851)
!1853 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !1851)
!1854 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1851)
!1855 = !DILocation(line: 0, scope: !75, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1851)
!1857 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1856)
!1858 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1851)
!1859 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1851)
!1860 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !1851)
!1861 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1851)
!1862 = !DILocation(line: 0, scope: !75, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1851)
!1864 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1863)
!1865 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1851)
!1866 = !DILocation(line: 268, column: 23, scope: !1824)
!1867 = !DILocation(line: 0, scope: !1483, inlinedAt: !1845)
!1868 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1845)
!1869 = !DILocation(line: 0, scope: !75, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1845)
!1871 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1870)
!1872 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1845)
!1873 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1845)
!1874 = !DILocation(line: 0, scope: !75, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1845)
!1876 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1875)
!1877 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1845)
!1878 = !DILocation(line: 269, column: 92, scope: !1824)
!1879 = !DILocation(line: 270, column: 36, scope: !1824)
!1880 = !DILocation(line: 270, column: 23, scope: !1824)
!1881 = !DILocation(line: 0, scope: !1483, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 270, column: 23, scope: !1824)
!1883 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !1882)
!1884 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !1882)
!1885 = !DILocation(line: 0, scope: !75, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !1882)
!1887 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1886)
!1888 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !1882)
!1889 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !1882)
!1890 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !1882)
!1891 = !DILocation(line: 0, scope: !75, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !1882)
!1893 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !1892)
!1894 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !1882)
!1895 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !1882)
!1896 = !DILocation(line: 0, scope: !1824)
!1897 = !DILocation(line: 265, column: 37, scope: !1824)
!1898 = !DILocation(line: 0, scope: !1358)
!1899 = !DILocation(line: 199, column: 42, scope: !1362)
!1900 = !DILocation(line: 199, column: 25, scope: !1362)
!1901 = distinct !{!1901, !1657, !1902}
!1902 = !DILocation(line: 281, column: 7, scope: !1363)
!1903 = distinct !DISubprogram(name: "GetStrengthHorMBAff", scope: !3, file: !3, line: 292, type: !1311, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1938, !1939, !1940, !1941, !1942}
!1905 = !DILocalVariable(name: "Strength", arg: 1, scope: !1903, file: !3, line: 292, type: !256)
!1906 = !DILocalVariable(name: "MbQ", arg: 2, scope: !1903, file: !3, line: 292, type: !740)
!1907 = !DILocalVariable(name: "edge", arg: 3, scope: !1903, file: !3, line: 292, type: !7)
!1908 = !DILocalVariable(name: "mvlimit", arg: 4, scope: !1903, file: !3, line: 292, type: !7)
!1909 = !DILocalVariable(name: "p", arg: 5, scope: !1903, file: !3, line: 292, type: !518)
!1910 = !DILocalVariable(name: "blkP", scope: !1903, file: !3, line: 294, type: !64)
!1911 = !DILocalVariable(name: "blkQ", scope: !1903, file: !3, line: 294, type: !64)
!1912 = !DILocalVariable(name: "idx", scope: !1903, file: !3, line: 294, type: !64)
!1913 = !DILocalVariable(name: "blk_x", scope: !1903, file: !3, line: 295, type: !64)
!1914 = !DILocalVariable(name: "blk_x2", scope: !1903, file: !3, line: 295, type: !64)
!1915 = !DILocalVariable(name: "blk_y", scope: !1903, file: !3, line: 295, type: !64)
!1916 = !DILocalVariable(name: "blk_y2", scope: !1903, file: !3, line: 295, type: !64)
!1917 = !DILocalVariable(name: "StrValue", scope: !1903, file: !3, line: 297, type: !7)
!1918 = !DILocalVariable(name: "xQ", scope: !1903, file: !3, line: 298, type: !7)
!1919 = !DILocalVariable(name: "yQ", scope: !1903, file: !3, line: 298, type: !7)
!1920 = !DILocalVariable(name: "mb_x", scope: !1903, file: !3, line: 299, type: !64)
!1921 = !DILocalVariable(name: "mb_y", scope: !1903, file: !3, line: 299, type: !64)
!1922 = !DILocalVariable(name: "MbP", scope: !1903, file: !3, line: 301, type: !740)
!1923 = !DILocalVariable(name: "pixP", scope: !1903, file: !3, line: 303, type: !828)
!1924 = !DILocalVariable(name: "p_Vid", scope: !1903, file: !3, line: 304, type: !125)
!1925 = !DILocalVariable(name: "mv_info_p", scope: !1926, file: !3, line: 369, type: !1345)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 368, column: 13)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 361, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 356, column: 14)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 352, column: 9)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 347, column: 13)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 340, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 339, column: 7)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 339, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 338, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 331, column: 9)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 325, column: 3)
!1937 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 306, column: 7)
!1938 = !DILocalVariable(name: "mv_info_q", scope: !1926, file: !3, line: 370, type: !1345)
!1939 = !DILocalVariable(name: "ref_p0", scope: !1926, file: !3, line: 371, type: !1349)
!1940 = !DILocalVariable(name: "ref_q0", scope: !1926, file: !3, line: 372, type: !1349)
!1941 = !DILocalVariable(name: "ref_p1", scope: !1926, file: !3, line: 373, type: !1349)
!1942 = !DILocalVariable(name: "ref_q1", scope: !1926, file: !3, line: 374, type: !1349)
!1943 = distinct !DIAssignID()
!1944 = !DILocation(line: 0, scope: !1903)
!1945 = distinct !DIAssignID()
!1946 = distinct !DIAssignID()
!1947 = !DILocation(line: 298, column: 25, scope: !1903)
!1948 = !DILocation(line: 298, column: 20, scope: !1903)
!1949 = !DILocation(line: 299, column: 3, scope: !1903)
!1950 = !DILocation(line: 303, column: 3, scope: !1903)
!1951 = !DILocation(line: 304, column: 33, scope: !1903)
!1952 = !DILocation(line: 306, column: 11, scope: !1937)
!1953 = !DILocation(line: 306, column: 32, scope: !1937)
!1954 = !DILocation(line: 311, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 309, column: 5)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 308, column: 5)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 308, column: 5)
!1958 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 307, column: 3)
!1959 = !DILocation(line: 316, column: 22, scope: !1955)
!1960 = !DILocation(line: 316, column: 35, scope: !1955)
!1961 = !DILocation(line: 316, column: 15, scope: !1955)
!1962 = !DILocation(line: 317, column: 45, scope: !1955)
!1963 = !DILocation(line: 319, column: 51, scope: !1955)
!1964 = !DILocation(line: 317, column: 62, scope: !1955)
!1965 = !DILocation(line: 317, column: 54, scope: !1955)
!1966 = !DILocation(line: 317, column: 32, scope: !1955)
!1967 = !DILocation(line: 317, column: 30, scope: !1955)
!1968 = !DILocation(line: 321, column: 29, scope: !1955)
!1969 = !DILocation(line: 321, column: 23, scope: !1955)
!1970 = !DILocation(line: 418, column: 1, scope: !1903)
!1971 = !DILocation(line: 319, column: 39, scope: !1955)
!1972 = !DILocation(line: 319, column: 48, scope: !1955)
!1973 = !DILocation(line: 326, column: 5, scope: !1936)
!1974 = !DILocation(line: 327, column: 20, scope: !1936)
!1975 = !DILocation(line: 327, column: 33, scope: !1936)
!1976 = !DILocation(line: 327, column: 13, scope: !1936)
!1977 = !DILocation(line: 328, column: 43, scope: !1936)
!1978 = !DILocation(line: 328, column: 60, scope: !1936)
!1979 = !DILocation(line: 328, column: 52, scope: !1936)
!1980 = !DILocation(line: 328, column: 30, scope: !1936)
!1981 = !DILocation(line: 328, column: 10, scope: !1936)
!1982 = !DILocation(line: 328, column: 28, scope: !1936)
!1983 = !DILocation(line: 331, column: 14, scope: !1935)
!1984 = !DILocation(line: 331, column: 29, scope: !1935)
!1985 = !DILocation(line: 331, column: 37, scope: !1935)
!1986 = !DILocation(line: 331, column: 45, scope: !1935)
!1987 = !DILocation(line: 331, column: 60, scope: !1935)
!1988 = !DILocation(line: 331, column: 9, scope: !1936)
!1989 = !DILocation(line: 339, column: 7, scope: !1933)
!1990 = !DILocation(line: 333, column: 24, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 332, column: 5)
!1992 = !DILocation(line: 333, column: 29, scope: !1991)
!1993 = !DILocation(line: 333, column: 39, scope: !1991)
!1994 = !DILocation(line: 333, column: 34, scope: !1991)
!1995 = !DILocation(line: 333, column: 48, scope: !1991)
!1996 = !DILocation(line: 333, column: 51, scope: !1991)
!1997 = !DILocation(line: 335, column: 24, scope: !1991)
!1998 = !DILocation(line: 0, scope: !1991)
!1999 = !DILocation(line: 335, column: 7, scope: !1991)
!2000 = !DILocation(line: 336, column: 5, scope: !1991)
!2001 = !DILocation(line: 342, column: 9, scope: !1931)
!2002 = !DILocation(line: 344, column: 45, scope: !1931)
!2003 = !DILocation(line: 344, column: 39, scope: !1931)
!2004 = !DILocation(line: 345, column: 31, scope: !1931)
!2005 = !DILocation(line: 345, column: 51, scope: !1931)
!2006 = !DILocation(line: 347, column: 15, scope: !1930)
!2007 = !DILocation(line: 347, column: 44, scope: !1930)
!2008 = !DILocation(line: 0, scope: !1431, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 347, column: 33, scope: !1930)
!2010 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !2009)
!2011 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !2009)
!2012 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !2009)
!2013 = !DILocation(line: 347, column: 31, scope: !1930)
!2014 = !DILocation(line: 347, column: 51, scope: !1930)
!2015 = !DILocation(line: 347, column: 57, scope: !1930)
!2016 = !DILocation(line: 345, column: 53, scope: !1931)
!2017 = !DILocation(line: 345, column: 33, scope: !1931)
!2018 = !DILocation(line: 345, column: 43, scope: !1931)
!2019 = !DILocation(line: 347, column: 62, scope: !1930)
!2020 = !DILocation(line: 0, scope: !1431, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 347, column: 80, scope: !1930)
!2022 = !DILocation(line: 259, column: 13, scope: !1431, inlinedAt: !2021)
!2023 = !DILocation(line: 259, column: 10, scope: !1431, inlinedAt: !2021)
!2024 = !DILocation(line: 259, column: 25, scope: !1431, inlinedAt: !2021)
!2025 = !DILocation(line: 347, column: 78, scope: !1930)
!2026 = !DILocation(line: 347, column: 98, scope: !1930)
!2027 = !DILocation(line: 347, column: 13, scope: !1931)
!2028 = !DILocation(line: 356, column: 19, scope: !1928)
!2029 = !DILocation(line: 356, column: 14, scope: !1928)
!2030 = !DILocation(line: 356, column: 14, scope: !1929)
!2031 = !DILocation(line: 362, column: 42, scope: !1927)
!2032 = !DILocation(line: 362, column: 13, scope: !1927)
!2033 = !DILocation(line: 363, column: 32, scope: !1927)
!2034 = !DILocation(line: 363, column: 36, scope: !1927)
!2035 = !DILocation(line: 363, column: 49, scope: !1927)
!2036 = !DILocation(line: 363, column: 41, scope: !1927)
!2037 = !DILocation(line: 363, column: 22, scope: !1927)
!2038 = !DILocation(line: 364, column: 32, scope: !1927)
!2039 = !DILocation(line: 364, column: 36, scope: !1927)
!2040 = !DILocation(line: 364, column: 50, scope: !1927)
!2041 = !DILocation(line: 364, column: 41, scope: !1927)
!2042 = !DILocation(line: 364, column: 22, scope: !1927)
!2043 = !DILocation(line: 365, column: 36, scope: !1927)
!2044 = !DILocation(line: 365, column: 42, scope: !1927)
!2045 = !DILocation(line: 366, column: 36, scope: !1927)
!2046 = !DILocation(line: 366, column: 42, scope: !1927)
!2047 = !DILocation(line: 369, column: 48, scope: !1926)
!2048 = !DILocation(line: 369, column: 45, scope: !1926)
!2049 = !DILocation(line: 0, scope: !1926)
!2050 = !DILocation(line: 370, column: 45, scope: !1926)
!2051 = !DILocation(line: 371, column: 43, scope: !1926)
!2052 = !DILocation(line: 372, column: 43, scope: !1926)
!2053 = !DILocation(line: 373, column: 43, scope: !1926)
!2054 = !DILocation(line: 374, column: 43, scope: !1926)
!2055 = !DILocation(line: 376, column: 28, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 376, column: 20)
!2057 = !DILocation(line: 376, column: 38, scope: !2056)
!2058 = !DILocation(line: 377, column: 25, scope: !2056)
!2059 = !DILocation(line: 377, column: 35, scope: !2056)
!2060 = !DILocation(line: 381, column: 28, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 381, column: 21)
!2062 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 378, column: 15)
!2063 = !DILocation(line: 0, scope: !2061)
!2064 = !DILocation(line: 381, column: 21, scope: !2062)
!2065 = !DILocation(line: 0, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 384, column: 23)
!2067 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 382, column: 17)
!2068 = !DILocation(line: 0, scope: !1483, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 387, column: 23, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 385, column: 19)
!2071 = !DILocation(line: 0, scope: !1483, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 393, column: 23, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 391, column: 19)
!2074 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2065)
!2075 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2065)
!2076 = !DILocation(line: 384, column: 23, scope: !2067)
!2077 = !DILocation(line: 387, column: 71, scope: !2070)
!2078 = !DILocation(line: 387, column: 23, scope: !2070)
!2079 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2069)
!2080 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2069)
!2081 = !DILocation(line: 0, scope: !75, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2069)
!2083 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2082)
!2084 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2069)
!2085 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2069)
!2086 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2069)
!2087 = !DILocation(line: 0, scope: !75, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2069)
!2089 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2088)
!2090 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2069)
!2091 = !DILocation(line: 387, column: 92, scope: !2070)
!2092 = !DILocation(line: 388, column: 36, scope: !2070)
!2093 = !DILocation(line: 388, column: 60, scope: !2070)
!2094 = !DILocation(line: 388, column: 23, scope: !2070)
!2095 = !DILocation(line: 0, scope: !1483, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 388, column: 23, scope: !2070)
!2097 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2096)
!2098 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2096)
!2099 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2096)
!2100 = !DILocation(line: 0, scope: !75, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2096)
!2102 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2101)
!2103 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2096)
!2104 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2096)
!2105 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2096)
!2106 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2096)
!2107 = !DILocation(line: 0, scope: !75, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2096)
!2109 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2108)
!2110 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2096)
!2111 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !2096)
!2112 = !DILocation(line: 393, column: 60, scope: !2073)
!2113 = !DILocation(line: 393, column: 23, scope: !2073)
!2114 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2072)
!2115 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2072)
!2116 = !DILocation(line: 0, scope: !75, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2072)
!2118 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2117)
!2119 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2072)
!2120 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2072)
!2121 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2072)
!2122 = !DILocation(line: 0, scope: !75, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2072)
!2124 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2123)
!2125 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2072)
!2126 = !DILocation(line: 393, column: 92, scope: !2073)
!2127 = !DILocation(line: 393, column: 71, scope: !2073)
!2128 = !DILocation(line: 394, column: 36, scope: !2073)
!2129 = !DILocation(line: 394, column: 23, scope: !2073)
!2130 = !DILocation(line: 0, scope: !1483, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 394, column: 23, scope: !2073)
!2132 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2131)
!2133 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2131)
!2134 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2131)
!2135 = !DILocation(line: 0, scope: !75, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2131)
!2137 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2136)
!2138 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2131)
!2139 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2131)
!2140 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2131)
!2141 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2131)
!2142 = !DILocation(line: 0, scope: !75, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2131)
!2144 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2143)
!2145 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2131)
!2146 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !2131)
!2147 = !DILocation(line: 400, column: 69, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 398, column: 17)
!2149 = !DILocation(line: 400, column: 21, scope: !2148)
!2150 = !DILocation(line: 0, scope: !1483, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 400, column: 21, scope: !2148)
!2152 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2151)
!2153 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2151)
!2154 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2151)
!2155 = !DILocation(line: 0, scope: !75, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2151)
!2157 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2156)
!2158 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2151)
!2159 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2151)
!2160 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2151)
!2161 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2151)
!2162 = !DILocation(line: 0, scope: !75, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2151)
!2164 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2163)
!2165 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2151)
!2166 = !DILocation(line: 400, column: 90, scope: !2148)
!2167 = !DILocation(line: 403, column: 21, scope: !2148)
!2168 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 403, column: 21, scope: !2148)
!2170 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2169)
!2171 = !DILocation(line: 401, column: 34, scope: !2148)
!2172 = !DILocation(line: 401, column: 58, scope: !2148)
!2173 = !DILocation(line: 401, column: 21, scope: !2148)
!2174 = !DILocation(line: 0, scope: !1483, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 401, column: 21, scope: !2148)
!2176 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2175)
!2177 = !DILocation(line: 65, column: 30, scope: !1483, inlinedAt: !2175)
!2178 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2175)
!2179 = !DILocation(line: 0, scope: !75, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2175)
!2181 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2180)
!2182 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2175)
!2183 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2175)
!2184 = !DILocation(line: 65, column: 68, scope: !1483, inlinedAt: !2175)
!2185 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2175)
!2186 = !DILocation(line: 0, scope: !75, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2175)
!2188 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2187)
!2189 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2175)
!2190 = !DILocation(line: 402, column: 21, scope: !2148)
!2191 = !DILocation(line: 0, scope: !1483, inlinedAt: !2169)
!2192 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2169)
!2193 = !DILocation(line: 0, scope: !75, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2169)
!2195 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2194)
!2196 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2169)
!2197 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2169)
!2198 = !DILocation(line: 0, scope: !75, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2169)
!2200 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2199)
!2201 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2169)
!2202 = !DILocation(line: 403, column: 90, scope: !2148)
!2203 = !DILocation(line: 404, column: 34, scope: !2148)
!2204 = !DILocation(line: 404, column: 21, scope: !2148)
!2205 = !DILocation(line: 0, scope: !1483, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 404, column: 21, scope: !2148)
!2207 = !DILocation(line: 65, column: 18, scope: !1483, inlinedAt: !2206)
!2208 = !DILocation(line: 65, column: 28, scope: !1483, inlinedAt: !2206)
!2209 = !DILocation(line: 0, scope: !75, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 65, column: 12, scope: !1483, inlinedAt: !2206)
!2211 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2210)
!2212 = !DILocation(line: 65, column: 41, scope: !1483, inlinedAt: !2206)
!2213 = !DILocation(line: 65, column: 56, scope: !1483, inlinedAt: !2206)
!2214 = !DILocation(line: 65, column: 66, scope: !1483, inlinedAt: !2206)
!2215 = !DILocation(line: 0, scope: !75, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 65, column: 50, scope: !1483, inlinedAt: !2206)
!2217 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2216)
!2218 = !DILocation(line: 65, column: 79, scope: !1483, inlinedAt: !2206)
!2219 = !DILocation(line: 65, column: 47, scope: !1483, inlinedAt: !2206)
!2220 = !DILocation(line: 0, scope: !2056)
!2221 = !DILocation(line: 0, scope: !1930)
!2222 = !DILocation(line: 414, column: 42, scope: !1931)
!2223 = !DILocation(line: 414, column: 25, scope: !1931)
!2224 = !DILocation(line: 414, column: 31, scope: !1931)
!2225 = !DILocation(line: 339, column: 21, scope: !1932)
!2226 = !DILocation(line: 339, column: 25, scope: !1932)
!2227 = distinct !{!2227, !1989, !2228}
!2228 = !DILocation(line: 415, column: 7, scope: !1933)
!2229 = distinct !DISubprogram(name: "EdgeLoopLumaVerMBAff", scope: !3, file: !3, line: 427, type: !2230, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !821, !556, !256, !740, !7, !518}
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2281, !2282, !2283, !2284, !2287, !2290, !2292, !2293, !2294, !2295, !2296}
!2233 = !DILocalVariable(name: "pl", arg: 1, scope: !2229, file: !3, line: 427, type: !821)
!2234 = !DILocalVariable(name: "Img", arg: 2, scope: !2229, file: !3, line: 427, type: !556)
!2235 = !DILocalVariable(name: "Strength", arg: 3, scope: !2229, file: !3, line: 427, type: !256)
!2236 = !DILocalVariable(name: "MbQ", arg: 4, scope: !2229, file: !3, line: 427, type: !740)
!2237 = !DILocalVariable(name: "edge", arg: 5, scope: !2229, file: !3, line: 428, type: !7)
!2238 = !DILocalVariable(name: "p", arg: 6, scope: !2229, file: !3, line: 428, type: !518)
!2239 = !DILocalVariable(name: "pel", scope: !2229, file: !3, line: 431, type: !7)
!2240 = !DILocalVariable(name: "Strng", scope: !2229, file: !3, line: 431, type: !7)
!2241 = !DILocalVariable(name: "L2", scope: !2229, file: !3, line: 432, type: !69)
!2242 = !DILocalVariable(name: "L1", scope: !2229, file: !3, line: 432, type: !69)
!2243 = !DILocalVariable(name: "L0", scope: !2229, file: !3, line: 432, type: !69)
!2244 = !DILocalVariable(name: "R0", scope: !2229, file: !3, line: 432, type: !69)
!2245 = !DILocalVariable(name: "R1", scope: !2229, file: !3, line: 432, type: !69)
!2246 = !DILocalVariable(name: "R2", scope: !2229, file: !3, line: 432, type: !69)
!2247 = !DILocalVariable(name: "Alpha", scope: !2229, file: !3, line: 433, type: !7)
!2248 = !DILocalVariable(name: "Beta", scope: !2229, file: !3, line: 433, type: !7)
!2249 = !DILocalVariable(name: "ClipTab", scope: !2229, file: !3, line: 434, type: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2251 = !DILocalVariable(name: "indexA", scope: !2229, file: !3, line: 435, type: !7)
!2252 = !DILocalVariable(name: "indexB", scope: !2229, file: !3, line: 435, type: !7)
!2253 = !DILocalVariable(name: "PelNum", scope: !2229, file: !3, line: 436, type: !7)
!2254 = !DILocalVariable(name: "QP", scope: !2229, file: !3, line: 438, type: !7)
!2255 = !DILocalVariable(name: "pixP", scope: !2229, file: !3, line: 440, type: !828)
!2256 = !DILocalVariable(name: "pixQ", scope: !2229, file: !3, line: 440, type: !828)
!2257 = !DILocalVariable(name: "p_Vid", scope: !2229, file: !3, line: 442, type: !125)
!2258 = !DILocalVariable(name: "bitdepth_scale", scope: !2229, file: !3, line: 443, type: !7)
!2259 = !DILocalVariable(name: "max_imgpel_value", scope: !2229, file: !3, line: 444, type: !7)
!2260 = !DILocalVariable(name: "AlphaC0Offset", scope: !2229, file: !3, line: 446, type: !7)
!2261 = !DILocalVariable(name: "BetaOffset", scope: !2229, file: !3, line: 447, type: !7)
!2262 = !DILocalVariable(name: "MbP", scope: !2229, file: !3, line: 449, type: !740)
!2263 = !DILocalVariable(name: "SrcPtrP", scope: !2229, file: !3, line: 450, type: !557)
!2264 = !DILocalVariable(name: "SrcPtrQ", scope: !2229, file: !3, line: 450, type: !557)
!2265 = !DILocalVariable(name: "RL0", scope: !2266, file: !3, line: 493, type: !7)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 492, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 491, column: 18)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 488, column: 13)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 487, column: 17)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 483, column: 11)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 482, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 461, column: 9)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 460, column: 13)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 459, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 458, column: 11)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 455, column: 5)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 454, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 454, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 453, column: 3)
!2280 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 452, column: 7)
!2281 = !DILocalVariable(name: "small_gap", scope: !2266, file: !3, line: 494, type: !7)
!2282 = !DILocalVariable(name: "aq", scope: !2266, file: !3, line: 495, type: !7)
!2283 = !DILocalVariable(name: "ap", scope: !2266, file: !3, line: 496, type: !7)
!2284 = !DILocalVariable(name: "L3", scope: !2285, file: !3, line: 500, type: !7)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 499, column: 17)
!2286 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 498, column: 21)
!2287 = !DILocalVariable(name: "R3", scope: !2288, file: !3, line: 512, type: !69)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 511, column: 17)
!2289 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 510, column: 21)
!2290 = !DILocalVariable(name: "RL0", scope: !2291, file: !3, line: 524, type: !7)
!2291 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 523, column: 15)
!2292 = !DILocalVariable(name: "aq", scope: !2291, file: !3, line: 525, type: !7)
!2293 = !DILocalVariable(name: "ap", scope: !2291, file: !3, line: 526, type: !7)
!2294 = !DILocalVariable(name: "C0", scope: !2291, file: !3, line: 528, type: !7)
!2295 = !DILocalVariable(name: "tc0", scope: !2291, file: !3, line: 529, type: !7)
!2296 = !DILocalVariable(name: "dif", scope: !2291, file: !3, line: 530, type: !7)
!2297 = distinct !DIAssignID()
!2298 = !DILocation(line: 0, scope: !2229)
!2299 = distinct !DIAssignID()
!2300 = !DILocation(line: 436, column: 21, scope: !2229)
!2301 = !DILocation(line: 436, column: 41, scope: !2229)
!2302 = !DILocation(line: 436, column: 25, scope: !2229)
!2303 = !DILocation(line: 440, column: 3, scope: !2229)
!2304 = !DILocation(line: 442, column: 33, scope: !2229)
!2305 = !DILocation(line: 443, column: 29, scope: !2229)
!2306 = !DILocation(line: 444, column: 38, scope: !2229)
!2307 = !DILocation(line: 444, column: 31, scope: !2229)
!2308 = !DILocation(line: 446, column: 28, scope: !2229)
!2309 = !DILocation(line: 446, column: 23, scope: !2229)
!2310 = !DILocation(line: 447, column: 25, scope: !2229)
!2311 = !DILocation(line: 447, column: 20, scope: !2229)
!2312 = !DILocation(line: 452, column: 12, scope: !2280)
!2313 = !DILocation(line: 452, column: 25, scope: !2280)
!2314 = !DILocation(line: 452, column: 7, scope: !2229)
!2315 = !DILocation(line: 454, column: 24, scope: !2277)
!2316 = !DILocation(line: 454, column: 5, scope: !2278)
!2317 = !DILocation(line: 456, column: 7, scope: !2276)
!2318 = !DILocation(line: 458, column: 16, scope: !2275)
!2319 = !DILocation(line: 458, column: 11, scope: !2275)
!2320 = !DILocation(line: 458, column: 11, scope: !2276)
!2321 = !DILocation(line: 460, column: 22, scope: !2273)
!2322 = !DILocation(line: 460, column: 37, scope: !2273)
!2323 = !DILocation(line: 460, column: 13, scope: !2274)
!2324 = !DILocation(line: 462, column: 11, scope: !2272)
!2325 = !DILocation(line: 464, column: 26, scope: !2272)
!2326 = !DILocation(line: 464, column: 39, scope: !2272)
!2327 = !DILocation(line: 464, column: 19, scope: !2272)
!2328 = !DILocation(line: 466, column: 32, scope: !2272)
!2329 = !DILocation(line: 466, column: 23, scope: !2272)
!2330 = !DILocation(line: 466, column: 44, scope: !2272)
!2331 = !DILocation(line: 467, column: 32, scope: !2272)
!2332 = !DILocation(line: 467, column: 23, scope: !2272)
!2333 = !DILocation(line: 467, column: 44, scope: !2272)
!2334 = !DILocation(line: 470, column: 16, scope: !2272)
!2335 = !DILocation(line: 470, scope: !2272)
!2336 = !DILocation(line: 472, column: 41, scope: !2272)
!2337 = !DILocalVariable(name: "low", arg: 1, scope: !2338, file: !76, line: 198, type: !7)
!2338 = distinct !DISubprogram(name: "iClip3", scope: !76, file: !76, line: 198, type: !2339, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!7, !7, !7, !7}
!2341 = !{!2337, !2342, !2343}
!2342 = !DILocalVariable(name: "high", arg: 2, scope: !2338, file: !76, line: 198, type: !7)
!2343 = !DILocalVariable(name: "x", arg: 3, scope: !2338, file: !76, line: 198, type: !7)
!2344 = !DILocation(line: 0, scope: !2338, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 472, column: 20, scope: !2272)
!2346 = !DILocalVariable(name: "a", arg: 1, scope: !2347, file: !76, line: 47, type: !7)
!2347 = distinct !DISubprogram(name: "imax", scope: !76, file: !76, line: 47, type: !2348, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!7, !7, !7}
!2350 = !{!2346, !2351}
!2351 = !DILocalVariable(name: "b", arg: 2, scope: !2347, file: !76, line: 47, type: !7)
!2352 = !DILocation(line: 0, scope: !2347, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2345)
!2354 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2353)
!2355 = !DILocalVariable(name: "a", arg: 1, scope: !2356, file: !76, line: 42, type: !7)
!2356 = distinct !DISubprogram(name: "imin", scope: !76, file: !76, line: 42, type: !2348, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2357 = !{!2355, !2358}
!2358 = !DILocalVariable(name: "b", arg: 2, scope: !2356, file: !76, line: 42, type: !7)
!2359 = !DILocation(line: 0, scope: !2356, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2345)
!2361 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2360)
!2362 = !DILocation(line: 473, column: 41, scope: !2272)
!2363 = !DILocation(line: 0, scope: !2338, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 473, column: 20, scope: !2272)
!2365 = !DILocation(line: 0, scope: !2347, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2364)
!2367 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2366)
!2368 = !DILocation(line: 0, scope: !2356, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2364)
!2370 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2369)
!2371 = !DILocation(line: 475, column: 21, scope: !2272)
!2372 = !DILocation(line: 475, column: 41, scope: !2272)
!2373 = !DILocation(line: 476, column: 21, scope: !2272)
!2374 = !DILocation(line: 476, column: 41, scope: !2272)
!2375 = !DILocation(line: 477, column: 21, scope: !2272)
!2376 = !DILocation(line: 479, column: 17, scope: !2272)
!2377 = !DILocation(line: 480, column: 17, scope: !2272)
!2378 = !DILocation(line: 482, column: 21, scope: !2271)
!2379 = !DILocation(line: 482, column: 26, scope: !2271)
!2380 = !DILocation(line: 482, column: 24, scope: !2271)
!2381 = !DILocation(line: 0, scope: !75, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 482, column: 15, scope: !2271)
!2383 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2382)
!2384 = !DILocation(line: 482, column: 31, scope: !2271)
!2385 = !DILocation(line: 482, column: 15, scope: !2272)
!2386 = !DILocation(line: 484, column: 19, scope: !2270)
!2387 = !DILocation(line: 485, column: 19, scope: !2270)
!2388 = !DILocation(line: 487, column: 29, scope: !2269)
!2389 = !DILocation(line: 487, column: 27, scope: !2269)
!2390 = !DILocation(line: 0, scope: !75, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 487, column: 18, scope: !2269)
!2392 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2391)
!2393 = !DILocation(line: 487, column: 33, scope: !2269)
!2394 = !DILocation(line: 487, column: 44, scope: !2269)
!2395 = !DILocation(line: 487, column: 58, scope: !2269)
!2396 = !DILocation(line: 487, column: 56, scope: !2269)
!2397 = !DILocation(line: 0, scope: !75, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 487, column: 48, scope: !2269)
!2399 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2398)
!2400 = !DILocation(line: 487, column: 62, scope: !2269)
!2401 = !DILocation(line: 487, column: 17, scope: !2270)
!2402 = !DILocation(line: 489, column: 21, scope: !2268)
!2403 = !DILocation(line: 490, column: 21, scope: !2268)
!2404 = !DILocation(line: 491, column: 24, scope: !2267)
!2405 = !DILocation(line: 0, scope: !2267)
!2406 = !DILocation(line: 491, column: 18, scope: !2268)
!2407 = !DILocation(line: 0, scope: !2266)
!2408 = !DILocation(line: 0, scope: !75, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 494, column: 34, scope: !2266)
!2410 = !DILocation(line: 494, column: 60, scope: !2266)
!2411 = !DILocation(line: 494, column: 66, scope: !2266)
!2412 = !DILocation(line: 494, column: 50, scope: !2266)
!2413 = !DILocation(line: 495, column: 40, scope: !2266)
!2414 = !DILocation(line: 495, column: 38, scope: !2266)
!2415 = !DILocation(line: 0, scope: !75, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 495, column: 29, scope: !2266)
!2417 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2416)
!2418 = !DILocation(line: 495, column: 44, scope: !2266)
!2419 = !DILocation(line: 495, column: 53, scope: !2266)
!2420 = !DILocation(line: 496, column: 40, scope: !2266)
!2421 = !DILocation(line: 496, column: 38, scope: !2266)
!2422 = !DILocation(line: 0, scope: !75, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 496, column: 29, scope: !2266)
!2424 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2423)
!2425 = !DILocation(line: 496, column: 44, scope: !2266)
!2426 = !DILocation(line: 496, column: 53, scope: !2266)
!2427 = !DILocation(line: 498, column: 21, scope: !2266)
!2428 = !DILocation(line: 500, column: 29, scope: !2285)
!2429 = !DILocation(line: 0, scope: !2285)
!2430 = !DILocation(line: 501, column: 50, scope: !2285)
!2431 = !DILocation(line: 501, column: 56, scope: !2285)
!2432 = !DILocation(line: 501, column: 62, scope: !2285)
!2433 = !DILocation(line: 501, column: 67, scope: !2285)
!2434 = !DILocation(line: 501, column: 72, scope: !2285)
!2435 = !DILocation(line: 501, column: 78, scope: !2285)
!2436 = !DILocation(line: 501, column: 83, scope: !2285)
!2437 = !DILocation(line: 501, column: 34, scope: !2285)
!2438 = !DILocation(line: 501, column: 32, scope: !2285)
!2439 = !DILocation(line: 502, column: 54, scope: !2285)
!2440 = !DILocation(line: 502, column: 59, scope: !2285)
!2441 = !DILocation(line: 502, column: 64, scope: !2285)
!2442 = !DILocation(line: 502, column: 69, scope: !2285)
!2443 = !DILocation(line: 502, column: 34, scope: !2285)
!2444 = !DILocation(line: 502, column: 32, scope: !2285)
!2445 = !DILocation(line: 503, column: 56, scope: !2285)
!2446 = !DILocation(line: 503, column: 63, scope: !2285)
!2447 = !DILocation(line: 503, column: 49, scope: !2285)
!2448 = !DILocation(line: 503, column: 69, scope: !2285)
!2449 = !DILocation(line: 503, column: 75, scope: !2285)
!2450 = !DILocation(line: 503, column: 80, scope: !2285)
!2451 = !DILocation(line: 504, column: 17, scope: !2285)
!2452 = !DILocation(line: 507, column: 49, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 506, column: 17)
!2454 = !DILocation(line: 507, column: 55, scope: !2453)
!2455 = !DILocation(line: 507, column: 60, scope: !2453)
!2456 = !DILocation(line: 507, column: 65, scope: !2453)
!2457 = !DILocation(line: 507, column: 70, scope: !2453)
!2458 = !DILocation(line: 0, scope: !2286)
!2459 = !DILocation(line: 510, column: 21, scope: !2266)
!2460 = !DILocation(line: 512, column: 32, scope: !2288)
!2461 = !DILocation(line: 0, scope: !2288)
!2462 = !DILocation(line: 513, column: 56, scope: !2288)
!2463 = !DILocation(line: 513, column: 63, scope: !2288)
!2464 = !DILocation(line: 513, column: 49, scope: !2288)
!2465 = !DILocation(line: 513, column: 69, scope: !2288)
!2466 = !DILocation(line: 513, column: 75, scope: !2288)
!2467 = !DILocation(line: 513, column: 80, scope: !2288)
!2468 = !DILocation(line: 513, column: 34, scope: !2288)
!2469 = !DILocation(line: 513, column: 32, scope: !2288)
!2470 = !DILocation(line: 514, column: 54, scope: !2288)
!2471 = !DILocation(line: 514, column: 59, scope: !2288)
!2472 = !DILocation(line: 514, column: 64, scope: !2288)
!2473 = !DILocation(line: 514, column: 69, scope: !2288)
!2474 = !DILocation(line: 514, column: 34, scope: !2288)
!2475 = !DILocation(line: 514, column: 32, scope: !2288)
!2476 = !DILocation(line: 515, column: 47, scope: !2288)
!2477 = !DILocation(line: 515, column: 50, scope: !2288)
!2478 = !DILocation(line: 515, column: 56, scope: !2288)
!2479 = !DILocation(line: 515, column: 62, scope: !2288)
!2480 = !DILocation(line: 515, column: 67, scope: !2288)
!2481 = !DILocation(line: 515, column: 72, scope: !2288)
!2482 = !DILocation(line: 515, column: 78, scope: !2288)
!2483 = !DILocation(line: 515, column: 83, scope: !2288)
!2484 = !DILocation(line: 515, column: 34, scope: !2288)
!2485 = !DILocation(line: 515, column: 32, scope: !2288)
!2486 = !DILocation(line: 516, column: 17, scope: !2288)
!2487 = !DILocation(line: 519, column: 49, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 518, column: 17)
!2489 = !DILocation(line: 519, column: 55, scope: !2488)
!2490 = !DILocation(line: 519, column: 60, scope: !2488)
!2491 = !DILocation(line: 519, column: 65, scope: !2488)
!2492 = !DILocation(line: 519, column: 70, scope: !2488)
!2493 = !DILocation(line: 519, column: 34, scope: !2488)
!2494 = !DILocation(line: 519, column: 32, scope: !2488)
!2495 = !DILocation(line: 524, column: 36, scope: !2291)
!2496 = !DILocation(line: 524, column: 41, scope: !2291)
!2497 = !DILocation(line: 0, scope: !2291)
!2498 = !DILocation(line: 525, column: 39, scope: !2291)
!2499 = !DILocation(line: 525, column: 37, scope: !2291)
!2500 = !DILocation(line: 0, scope: !75, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 525, column: 28, scope: !2291)
!2502 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2501)
!2503 = !DILocation(line: 525, column: 43, scope: !2291)
!2504 = !DILocation(line: 526, column: 39, scope: !2291)
!2505 = !DILocation(line: 526, column: 37, scope: !2291)
!2506 = !DILocation(line: 0, scope: !75, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 526, column: 28, scope: !2291)
!2508 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2507)
!2509 = !DILocation(line: 526, column: 43, scope: !2291)
!2510 = !DILocation(line: 528, column: 27, scope: !2291)
!2511 = !DILocation(line: 528, column: 44, scope: !2291)
!2512 = !DILocation(line: 529, column: 32, scope: !2291)
!2513 = !DILocation(line: 529, column: 37, scope: !2291)
!2514 = !DILocation(line: 530, column: 35, scope: !2291)
!2515 = !DILocation(line: 530, column: 58, scope: !2291)
!2516 = !DILocation(line: 530, column: 70, scope: !2291)
!2517 = !DILocation(line: 530, column: 64, scope: !2291)
!2518 = !DILocation(line: 530, column: 76, scope: !2291)
!2519 = !DILocation(line: 530, column: 81, scope: !2291)
!2520 = !DILocation(line: 0, scope: !2338, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 530, column: 27, scope: !2291)
!2522 = !DILocation(line: 0, scope: !2347, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2521)
!2524 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2523)
!2525 = !DILocation(line: 0, scope: !2356, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2521)
!2527 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2526)
!2528 = !DILocation(line: 532, column: 24, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 532, column: 21)
!2530 = !DILocation(line: 533, column: 45, scope: !2529)
!2531 = !DILocation(line: 533, column: 60, scope: !2529)
!2532 = !DILocation(line: 533, column: 66, scope: !2529)
!2533 = !DILocation(line: 533, column: 79, scope: !2529)
!2534 = !DILocation(line: 0, scope: !2338, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 533, column: 37, scope: !2529)
!2536 = !DILocation(line: 0, scope: !2347, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2535)
!2538 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2537)
!2539 = !DILocation(line: 0, scope: !2356, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2535)
!2541 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2540)
!2542 = !DILocation(line: 533, column: 34, scope: !2529)
!2543 = !DILocation(line: 533, column: 19, scope: !2529)
!2544 = !DILocation(line: 535, column: 21, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 535, column: 21)
!2546 = !DILocation(line: 535, column: 21, scope: !2291)
!2547 = !DILocation(line: 537, column: 69, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 536, column: 17)
!2549 = !DILocalVariable(name: "high", arg: 1, scope: !2550, file: !76, line: 190, type: !7)
!2550 = distinct !DISubprogram(name: "iClip1", scope: !76, file: !76, line: 190, type: !2348, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2551 = !{!2549, !2552}
!2552 = !DILocalVariable(name: "x", arg: 2, scope: !2550, file: !76, line: 190, type: !7)
!2553 = !DILocation(line: 0, scope: !2550, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 537, column: 40, scope: !2548)
!2555 = !DILocation(line: 0, scope: !2347, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !2554)
!2557 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2556)
!2558 = !DILocation(line: 0, scope: !2356, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !2554)
!2560 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2559)
!2561 = !DILocation(line: 537, column: 31, scope: !2548)
!2562 = !DILocation(line: 537, column: 29, scope: !2548)
!2563 = !DILocation(line: 538, column: 69, scope: !2548)
!2564 = !DILocation(line: 0, scope: !2550, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 538, column: 40, scope: !2548)
!2566 = !DILocation(line: 0, scope: !2347, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !2565)
!2568 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2567)
!2569 = !DILocation(line: 0, scope: !2356, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !2565)
!2571 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2570)
!2572 = !DILocation(line: 538, column: 31, scope: !2548)
!2573 = !DILocation(line: 538, column: 29, scope: !2548)
!2574 = !DILocation(line: 539, column: 17, scope: !2548)
!2575 = !DILocation(line: 541, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 541, column: 21)
!2577 = !DILocation(line: 542, column: 45, scope: !2576)
!2578 = !DILocation(line: 542, column: 60, scope: !2576)
!2579 = !DILocation(line: 542, column: 66, scope: !2576)
!2580 = !DILocation(line: 542, column: 79, scope: !2576)
!2581 = !DILocation(line: 0, scope: !2338, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 542, column: 37, scope: !2576)
!2583 = !DILocation(line: 0, scope: !2347, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2582)
!2585 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2584)
!2586 = !DILocation(line: 0, scope: !2356, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2582)
!2588 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2587)
!2589 = !DILocation(line: 542, column: 34, scope: !2576)
!2590 = !DILocation(line: 542, column: 19, scope: !2576)
!2591 = !DILocation(line: 454, column: 35, scope: !2277)
!2592 = distinct !{!2592, !2316, !2593}
!2593 = !DILocation(line: 548, column: 5, scope: !2278)
!2594 = !DILocation(line: 550, column: 1, scope: !2229)
!2595 = distinct !DISubprogram(name: "EdgeLoopLumaHorMBAff", scope: !3, file: !3, line: 558, type: !2230, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2628, !2634, !2635, !2636, !2637, !2640, !2641, !2644, !2645, !2648, !2649, !2650, !2651, !2654, !2657, !2659, !2660, !2661, !2662, !2663}
!2597 = !DILocalVariable(name: "pl", arg: 1, scope: !2595, file: !3, line: 558, type: !821)
!2598 = !DILocalVariable(name: "Img", arg: 2, scope: !2595, file: !3, line: 558, type: !556)
!2599 = !DILocalVariable(name: "Strength", arg: 3, scope: !2595, file: !3, line: 558, type: !256)
!2600 = !DILocalVariable(name: "MbQ", arg: 4, scope: !2595, file: !3, line: 558, type: !740)
!2601 = !DILocalVariable(name: "edge", arg: 5, scope: !2595, file: !3, line: 559, type: !7)
!2602 = !DILocalVariable(name: "p", arg: 6, scope: !2595, file: !3, line: 559, type: !518)
!2603 = !DILocalVariable(name: "width", scope: !2595, file: !3, line: 561, type: !7)
!2604 = !DILocalVariable(name: "pel", scope: !2595, file: !3, line: 562, type: !7)
!2605 = !DILocalVariable(name: "Strng", scope: !2595, file: !3, line: 562, type: !7)
!2606 = !DILocalVariable(name: "PelNum", scope: !2595, file: !3, line: 563, type: !7)
!2607 = !DILocalVariable(name: "yQ", scope: !2595, file: !3, line: 565, type: !7)
!2608 = !DILocalVariable(name: "pixP", scope: !2595, file: !3, line: 567, type: !828)
!2609 = !DILocalVariable(name: "pixQ", scope: !2595, file: !3, line: 567, type: !828)
!2610 = !DILocalVariable(name: "p_Vid", scope: !2595, file: !3, line: 569, type: !125)
!2611 = !DILocalVariable(name: "bitdepth_scale", scope: !2595, file: !3, line: 570, type: !7)
!2612 = !DILocalVariable(name: "max_imgpel_value", scope: !2595, file: !3, line: 571, type: !7)
!2613 = !DILocalVariable(name: "AlphaC0Offset", scope: !2614, file: !3, line: 577, type: !7)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 576, column: 3)
!2615 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 575, column: 7)
!2616 = !DILocalVariable(name: "BetaOffset", scope: !2614, file: !3, line: 578, type: !7)
!2617 = !DILocalVariable(name: "MbP", scope: !2614, file: !3, line: 580, type: !740)
!2618 = !DILocalVariable(name: "incQ", scope: !2614, file: !3, line: 582, type: !7)
!2619 = !DILocalVariable(name: "incP", scope: !2614, file: !3, line: 583, type: !7)
!2620 = !DILocalVariable(name: "QP", scope: !2614, file: !3, line: 586, type: !7)
!2621 = !DILocalVariable(name: "indexA", scope: !2614, file: !3, line: 588, type: !7)
!2622 = !DILocalVariable(name: "indexB", scope: !2614, file: !3, line: 589, type: !7)
!2623 = !DILocalVariable(name: "Alpha", scope: !2614, file: !3, line: 591, type: !7)
!2624 = !DILocalVariable(name: "Beta", scope: !2614, file: !3, line: 592, type: !7)
!2625 = !DILocalVariable(name: "ClipTab", scope: !2626, file: !3, line: 596, type: !2250)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 595, column: 5)
!2627 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 594, column: 9)
!2628 = !DILocalVariable(name: "SrcPtrQ", scope: !2629, file: !3, line: 603, type: !557)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 602, column: 9)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 601, column: 13)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 600, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 599, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 599, column: 7)
!2634 = !DILocalVariable(name: "SrcPtrP", scope: !2629, file: !3, line: 604, type: !557)
!2635 = !DILocalVariable(name: "L0", scope: !2629, file: !3, line: 606, type: !69)
!2636 = !DILocalVariable(name: "R0", scope: !2629, file: !3, line: 607, type: !69)
!2637 = !DILocalVariable(name: "L1", scope: !2638, file: !3, line: 611, type: !69)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 610, column: 11)
!2639 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 609, column: 15)
!2640 = !DILocalVariable(name: "R1", scope: !2638, file: !3, line: 612, type: !69)
!2641 = !DILocalVariable(name: "L2", scope: !2642, file: !3, line: 616, type: !69)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 615, column: 13)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 614, column: 17)
!2644 = !DILocalVariable(name: "R2", scope: !2642, file: !3, line: 617, type: !69)
!2645 = !DILocalVariable(name: "RL0", scope: !2646, file: !3, line: 620, type: !7)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 619, column: 15)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 618, column: 18)
!2648 = !DILocalVariable(name: "small_gap", scope: !2646, file: !3, line: 621, type: !7)
!2649 = !DILocalVariable(name: "aq", scope: !2646, file: !3, line: 622, type: !7)
!2650 = !DILocalVariable(name: "ap", scope: !2646, file: !3, line: 623, type: !7)
!2651 = !DILocalVariable(name: "L3", scope: !2652, file: !3, line: 627, type: !69)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 626, column: 17)
!2653 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 625, column: 21)
!2654 = !DILocalVariable(name: "R3", scope: !2655, file: !3, line: 639, type: !69)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 638, column: 17)
!2656 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 637, column: 21)
!2657 = !DILocalVariable(name: "RL0", scope: !2658, file: !3, line: 651, type: !7)
!2658 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 650, column: 15)
!2659 = !DILocalVariable(name: "aq", scope: !2658, file: !3, line: 652, type: !7)
!2660 = !DILocalVariable(name: "ap", scope: !2658, file: !3, line: 653, type: !7)
!2661 = !DILocalVariable(name: "C0", scope: !2658, file: !3, line: 655, type: !7)
!2662 = !DILocalVariable(name: "tc0", scope: !2658, file: !3, line: 656, type: !7)
!2663 = !DILocalVariable(name: "dif", scope: !2658, file: !3, line: 657, type: !7)
!2664 = distinct !DIAssignID()
!2665 = !DILocation(line: 0, scope: !2595)
!2666 = distinct !DIAssignID()
!2667 = !DILocation(line: 561, column: 23, scope: !2595)
!2668 = !DILocation(line: 563, column: 21, scope: !2595)
!2669 = !DILocation(line: 563, column: 41, scope: !2595)
!2670 = !DILocation(line: 563, column: 25, scope: !2595)
!2671 = !DILocation(line: 565, column: 23, scope: !2595)
!2672 = !DILocation(line: 565, column: 18, scope: !2595)
!2673 = !DILocation(line: 567, column: 3, scope: !2595)
!2674 = !DILocation(line: 569, column: 33, scope: !2595)
!2675 = !DILocation(line: 570, column: 29, scope: !2595)
!2676 = !DILocation(line: 571, column: 38, scope: !2595)
!2677 = !DILocation(line: 571, column: 31, scope: !2595)
!2678 = !DILocation(line: 573, column: 30, scope: !2595)
!2679 = !DILocation(line: 573, column: 42, scope: !2595)
!2680 = !DILocation(line: 573, column: 3, scope: !2595)
!2681 = !DILocation(line: 575, column: 12, scope: !2615)
!2682 = !DILocation(line: 575, column: 7, scope: !2615)
!2683 = !DILocation(line: 575, column: 22, scope: !2615)
!2684 = !DILocation(line: 575, column: 31, scope: !2615)
!2685 = !DILocation(line: 575, column: 44, scope: !2615)
!2686 = !DILocation(line: 575, column: 7, scope: !2595)
!2687 = !DILocation(line: 577, column: 30, scope: !2614)
!2688 = !DILocation(line: 577, column: 25, scope: !2614)
!2689 = !DILocation(line: 0, scope: !2614)
!2690 = !DILocation(line: 578, column: 27, scope: !2614)
!2691 = !DILocation(line: 578, column: 22, scope: !2614)
!2692 = !DILocation(line: 580, column: 32, scope: !2614)
!2693 = !DILocation(line: 580, column: 45, scope: !2614)
!2694 = !DILocation(line: 580, column: 25, scope: !2614)
!2695 = !DILocation(line: 582, column: 26, scope: !2614)
!2696 = !DILocation(line: 582, column: 21, scope: !2614)
!2697 = !DILocation(line: 582, column: 35, scope: !2614)
!2698 = !DILocation(line: 583, column: 21, scope: !2614)
!2699 = !DILocation(line: 583, column: 35, scope: !2614)
!2700 = !DILocation(line: 586, column: 14, scope: !2614)
!2701 = !DILocation(line: 586, scope: !2614)
!2702 = !DILocation(line: 588, column: 39, scope: !2614)
!2703 = !DILocation(line: 0, scope: !2338, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 588, column: 18, scope: !2614)
!2705 = !DILocation(line: 0, scope: !2347, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2704)
!2707 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2706)
!2708 = !DILocation(line: 0, scope: !2356, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2704)
!2710 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2709)
!2711 = !DILocation(line: 589, column: 39, scope: !2614)
!2712 = !DILocation(line: 0, scope: !2338, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 589, column: 18, scope: !2614)
!2714 = !DILocation(line: 0, scope: !2347, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2713)
!2716 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2715)
!2717 = !DILocation(line: 0, scope: !2356, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2713)
!2719 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2718)
!2720 = !DILocation(line: 591, column: 19, scope: !2614)
!2721 = !DILocation(line: 591, column: 39, scope: !2614)
!2722 = !DILocation(line: 592, column: 19, scope: !2614)
!2723 = !DILocation(line: 592, column: 39, scope: !2614)
!2724 = !DILocation(line: 594, column: 16, scope: !2627)
!2725 = !DILocation(line: 594, column: 24, scope: !2627)
!2726 = !DILocation(line: 594, column: 9, scope: !2614)
!2727 = !DILocation(line: 596, column: 29, scope: !2626)
!2728 = !DILocation(line: 0, scope: !2626)
!2729 = !DILocation(line: 597, column: 7, scope: !2626)
!2730 = !DILocation(line: 599, column: 26, scope: !2632)
!2731 = !DILocation(line: 599, column: 7, scope: !2633)
!2732 = !DILocation(line: 601, column: 22, scope: !2630)
!2733 = !DILocation(line: 601, column: 37, scope: !2630)
!2734 = !DILocation(line: 601, column: 13, scope: !2631)
!2735 = !DILocation(line: 603, column: 40, scope: !2629)
!2736 = !DILocation(line: 603, column: 31, scope: !2629)
!2737 = !DILocation(line: 603, column: 52, scope: !2629)
!2738 = !DILocation(line: 0, scope: !2629)
!2739 = !DILocation(line: 604, column: 40, scope: !2629)
!2740 = !DILocation(line: 604, column: 31, scope: !2629)
!2741 = !DILocation(line: 604, column: 52, scope: !2629)
!2742 = !DILocation(line: 606, column: 24, scope: !2629)
!2743 = !DILocation(line: 607, column: 24, scope: !2629)
!2744 = !DILocation(line: 609, column: 21, scope: !2639)
!2745 = !DILocation(line: 609, column: 26, scope: !2639)
!2746 = !DILocation(line: 609, column: 24, scope: !2639)
!2747 = !DILocation(line: 0, scope: !75, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 609, column: 15, scope: !2639)
!2749 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2748)
!2750 = !DILocation(line: 609, column: 31, scope: !2639)
!2751 = !DILocation(line: 609, column: 15, scope: !2629)
!2752 = !DILocation(line: 611, column: 26, scope: !2638)
!2753 = !DILocation(line: 0, scope: !2638)
!2754 = !DILocation(line: 612, column: 26, scope: !2638)
!2755 = !DILocation(line: 614, column: 29, scope: !2643)
!2756 = !DILocation(line: 614, column: 27, scope: !2643)
!2757 = !DILocation(line: 0, scope: !75, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 614, column: 18, scope: !2643)
!2759 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2758)
!2760 = !DILocation(line: 614, column: 33, scope: !2643)
!2761 = !DILocation(line: 614, column: 44, scope: !2643)
!2762 = !DILocation(line: 614, column: 58, scope: !2643)
!2763 = !DILocation(line: 614, column: 56, scope: !2643)
!2764 = !DILocation(line: 0, scope: !75, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 614, column: 48, scope: !2643)
!2766 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2765)
!2767 = !DILocation(line: 614, column: 62, scope: !2643)
!2768 = !DILocation(line: 614, column: 17, scope: !2638)
!2769 = !DILocation(line: 616, column: 28, scope: !2642)
!2770 = !DILocation(line: 0, scope: !2642)
!2771 = !DILocation(line: 617, column: 28, scope: !2642)
!2772 = !DILocation(line: 618, column: 24, scope: !2647)
!2773 = !DILocation(line: 0, scope: !2647)
!2774 = !DILocation(line: 618, column: 18, scope: !2642)
!2775 = !DILocation(line: 0, scope: !2646)
!2776 = !DILocation(line: 0, scope: !75, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 621, column: 34, scope: !2646)
!2778 = !DILocation(line: 621, column: 50, scope: !2646)
!2779 = !DILocation(line: 622, column: 40, scope: !2646)
!2780 = !DILocation(line: 622, column: 38, scope: !2646)
!2781 = !DILocation(line: 0, scope: !75, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 622, column: 29, scope: !2646)
!2783 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2782)
!2784 = !DILocation(line: 622, column: 44, scope: !2646)
!2785 = !DILocation(line: 622, column: 53, scope: !2646)
!2786 = !DILocation(line: 623, column: 40, scope: !2646)
!2787 = !DILocation(line: 623, column: 38, scope: !2646)
!2788 = !DILocation(line: 0, scope: !75, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 623, column: 29, scope: !2646)
!2790 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2789)
!2791 = !DILocation(line: 623, column: 44, scope: !2646)
!2792 = !DILocation(line: 623, column: 53, scope: !2646)
!2793 = !DILocation(line: 625, column: 21, scope: !2646)
!2794 = !DILocation(line: 627, column: 32, scope: !2652)
!2795 = !DILocation(line: 0, scope: !2652)
!2796 = !DILocation(line: 628, column: 53, scope: !2652)
!2797 = !DILocation(line: 628, column: 56, scope: !2652)
!2798 = !DILocation(line: 628, column: 62, scope: !2652)
!2799 = !DILocation(line: 628, column: 68, scope: !2652)
!2800 = !DILocation(line: 628, column: 73, scope: !2652)
!2801 = !DILocation(line: 628, column: 78, scope: !2652)
!2802 = !DILocation(line: 628, column: 84, scope: !2652)
!2803 = !DILocation(line: 628, column: 89, scope: !2652)
!2804 = !DILocation(line: 628, column: 40, scope: !2652)
!2805 = !DILocation(line: 628, column: 38, scope: !2652)
!2806 = !DILocation(line: 629, column: 60, scope: !2652)
!2807 = !DILocation(line: 629, column: 65, scope: !2652)
!2808 = !DILocation(line: 629, column: 70, scope: !2652)
!2809 = !DILocation(line: 629, column: 75, scope: !2652)
!2810 = !DILocation(line: 629, column: 40, scope: !2652)
!2811 = !DILocation(line: 629, column: 38, scope: !2652)
!2812 = !DILocation(line: 630, column: 62, scope: !2652)
!2813 = !DILocation(line: 630, column: 69, scope: !2652)
!2814 = !DILocation(line: 630, column: 55, scope: !2652)
!2815 = !DILocation(line: 630, column: 75, scope: !2652)
!2816 = !DILocation(line: 630, column: 81, scope: !2652)
!2817 = !DILocation(line: 630, column: 86, scope: !2652)
!2818 = !DILocation(line: 631, column: 17, scope: !2652)
!2819 = !DILocation(line: 634, column: 57, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 633, column: 17)
!2821 = !DILocation(line: 634, column: 63, scope: !2820)
!2822 = !DILocation(line: 634, column: 68, scope: !2820)
!2823 = !DILocation(line: 634, column: 73, scope: !2820)
!2824 = !DILocation(line: 634, column: 78, scope: !2820)
!2825 = !DILocation(line: 0, scope: !2653)
!2826 = !DILocation(line: 637, column: 21, scope: !2646)
!2827 = !DILocation(line: 639, column: 31, scope: !2655)
!2828 = !DILocation(line: 0, scope: !2655)
!2829 = !DILocation(line: 640, column: 63, scope: !2655)
!2830 = !DILocation(line: 640, column: 70, scope: !2655)
!2831 = !DILocation(line: 640, column: 56, scope: !2655)
!2832 = !DILocation(line: 640, column: 76, scope: !2655)
!2833 = !DILocation(line: 640, column: 82, scope: !2655)
!2834 = !DILocation(line: 640, column: 87, scope: !2655)
!2835 = !DILocation(line: 640, column: 41, scope: !2655)
!2836 = !DILocation(line: 640, column: 39, scope: !2655)
!2837 = !DILocation(line: 641, column: 61, scope: !2655)
!2838 = !DILocation(line: 641, column: 66, scope: !2655)
!2839 = !DILocation(line: 641, column: 71, scope: !2655)
!2840 = !DILocation(line: 641, column: 76, scope: !2655)
!2841 = !DILocation(line: 641, column: 41, scope: !2655)
!2842 = !DILocation(line: 641, column: 39, scope: !2655)
!2843 = !DILocation(line: 642, column: 54, scope: !2655)
!2844 = !DILocation(line: 642, column: 57, scope: !2655)
!2845 = !DILocation(line: 642, column: 63, scope: !2655)
!2846 = !DILocation(line: 642, column: 69, scope: !2655)
!2847 = !DILocation(line: 642, column: 74, scope: !2655)
!2848 = !DILocation(line: 642, column: 79, scope: !2655)
!2849 = !DILocation(line: 642, column: 85, scope: !2655)
!2850 = !DILocation(line: 642, column: 90, scope: !2655)
!2851 = !DILocation(line: 642, column: 41, scope: !2655)
!2852 = !DILocation(line: 642, column: 39, scope: !2655)
!2853 = !DILocation(line: 643, column: 17, scope: !2655)
!2854 = !DILocation(line: 646, column: 56, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 645, column: 17)
!2856 = !DILocation(line: 646, column: 62, scope: !2855)
!2857 = !DILocation(line: 646, column: 67, scope: !2855)
!2858 = !DILocation(line: 646, column: 72, scope: !2855)
!2859 = !DILocation(line: 646, column: 77, scope: !2855)
!2860 = !DILocation(line: 646, column: 41, scope: !2855)
!2861 = !DILocation(line: 646, column: 39, scope: !2855)
!2862 = !DILocation(line: 651, column: 36, scope: !2658)
!2863 = !DILocation(line: 651, column: 41, scope: !2658)
!2864 = !DILocation(line: 0, scope: !2658)
!2865 = !DILocation(line: 652, column: 39, scope: !2658)
!2866 = !DILocation(line: 652, column: 37, scope: !2658)
!2867 = !DILocation(line: 0, scope: !75, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 652, column: 28, scope: !2658)
!2869 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2868)
!2870 = !DILocation(line: 652, column: 43, scope: !2658)
!2871 = !DILocation(line: 653, column: 39, scope: !2658)
!2872 = !DILocation(line: 653, column: 37, scope: !2658)
!2873 = !DILocation(line: 0, scope: !75, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 653, column: 28, scope: !2658)
!2875 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !2874)
!2876 = !DILocation(line: 653, column: 43, scope: !2658)
!2877 = !DILocation(line: 655, column: 27, scope: !2658)
!2878 = !DILocation(line: 655, column: 44, scope: !2658)
!2879 = !DILocation(line: 656, column: 32, scope: !2658)
!2880 = !DILocation(line: 656, column: 37, scope: !2658)
!2881 = !DILocation(line: 657, column: 35, scope: !2658)
!2882 = !DILocation(line: 657, column: 58, scope: !2658)
!2883 = !DILocation(line: 657, column: 70, scope: !2658)
!2884 = !DILocation(line: 657, column: 64, scope: !2658)
!2885 = !DILocation(line: 657, column: 76, scope: !2658)
!2886 = !DILocation(line: 657, column: 81, scope: !2658)
!2887 = !DILocation(line: 0, scope: !2338, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 657, column: 27, scope: !2658)
!2889 = !DILocation(line: 0, scope: !2347, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2888)
!2891 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2890)
!2892 = !DILocation(line: 0, scope: !2356, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2888)
!2894 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2893)
!2895 = !DILocation(line: 659, column: 24, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 659, column: 21)
!2897 = !DILocation(line: 660, column: 48, scope: !2896)
!2898 = !DILocation(line: 660, column: 63, scope: !2896)
!2899 = !DILocation(line: 660, column: 69, scope: !2896)
!2900 = !DILocation(line: 660, column: 82, scope: !2896)
!2901 = !DILocation(line: 0, scope: !2338, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 660, column: 40, scope: !2896)
!2903 = !DILocation(line: 0, scope: !2347, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2902)
!2905 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2904)
!2906 = !DILocation(line: 0, scope: !2356, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2902)
!2908 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2907)
!2909 = !DILocation(line: 660, column: 29, scope: !2896)
!2910 = !DILocation(line: 660, column: 37, scope: !2896)
!2911 = !DILocation(line: 660, column: 19, scope: !2896)
!2912 = !DILocation(line: 662, column: 21, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 662, column: 21)
!2914 = !DILocation(line: 662, column: 21, scope: !2658)
!2915 = !DILocation(line: 664, column: 69, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 663, column: 17)
!2917 = !DILocation(line: 0, scope: !2550, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 664, column: 40, scope: !2916)
!2919 = !DILocation(line: 0, scope: !2347, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !2918)
!2921 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2920)
!2922 = !DILocation(line: 0, scope: !2356, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !2918)
!2924 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2923)
!2925 = !DILocation(line: 664, column: 31, scope: !2916)
!2926 = !DILocation(line: 664, column: 29, scope: !2916)
!2927 = !DILocation(line: 665, column: 69, scope: !2916)
!2928 = !DILocation(line: 0, scope: !2550, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 665, column: 40, scope: !2916)
!2930 = !DILocation(line: 0, scope: !2347, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !2929)
!2932 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2931)
!2933 = !DILocation(line: 0, scope: !2356, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !2929)
!2935 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2934)
!2936 = !DILocation(line: 665, column: 31, scope: !2916)
!2937 = !DILocation(line: 665, column: 29, scope: !2916)
!2938 = !DILocation(line: 666, column: 17, scope: !2916)
!2939 = !DILocation(line: 668, column: 25, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 668, column: 21)
!2941 = !DILocation(line: 669, column: 48, scope: !2940)
!2942 = !DILocation(line: 669, column: 63, scope: !2940)
!2943 = !DILocation(line: 669, column: 69, scope: !2940)
!2944 = !DILocation(line: 669, column: 82, scope: !2940)
!2945 = !DILocation(line: 0, scope: !2338, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 669, column: 40, scope: !2940)
!2947 = !DILocation(line: 0, scope: !2347, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !2946)
!2949 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !2948)
!2950 = !DILocation(line: 0, scope: !2356, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !2946)
!2952 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !2951)
!2953 = !DILocation(line: 669, column: 37, scope: !2940)
!2954 = !DILocation(line: 669, column: 19, scope: !2940)
!2955 = !DILocation(line: 674, column: 19, scope: !2631)
!2956 = distinct !DIAssignID()
!2957 = !DILocation(line: 675, column: 19, scope: !2631)
!2958 = distinct !DIAssignID()
!2959 = !DILocation(line: 599, column: 37, scope: !2632)
!2960 = distinct !{!2960, !2731, !2961}
!2961 = !DILocation(line: 676, column: 7, scope: !2633)
!2962 = !DILocation(line: 679, column: 1, scope: !2595)
!2963 = distinct !DISubprogram(name: "EdgeLoopChromaVerMBAff", scope: !3, file: !3, line: 689, type: !2964, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !556, !256, !740, !7, !7, !518}
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3013, !3014}
!2967 = !DILocalVariable(name: "Img", arg: 1, scope: !2963, file: !3, line: 689, type: !556)
!2968 = !DILocalVariable(name: "Strength", arg: 2, scope: !2963, file: !3, line: 689, type: !256)
!2969 = !DILocalVariable(name: "MbQ", arg: 3, scope: !2963, file: !3, line: 689, type: !740)
!2970 = !DILocalVariable(name: "edge", arg: 4, scope: !2963, file: !3, line: 689, type: !7)
!2971 = !DILocalVariable(name: "uv", arg: 5, scope: !2963, file: !3, line: 689, type: !7)
!2972 = !DILocalVariable(name: "p", arg: 6, scope: !2963, file: !3, line: 689, type: !518)
!2973 = !DILocalVariable(name: "pel", scope: !2963, file: !3, line: 691, type: !7)
!2974 = !DILocalVariable(name: "Strng", scope: !2963, file: !3, line: 691, type: !7)
!2975 = !DILocalVariable(name: "L1", scope: !2963, file: !3, line: 693, type: !69)
!2976 = !DILocalVariable(name: "L0", scope: !2963, file: !3, line: 693, type: !69)
!2977 = !DILocalVariable(name: "R0", scope: !2963, file: !3, line: 693, type: !69)
!2978 = !DILocalVariable(name: "R1", scope: !2963, file: !3, line: 693, type: !69)
!2979 = !DILocalVariable(name: "Alpha", scope: !2963, file: !3, line: 694, type: !7)
!2980 = !DILocalVariable(name: "Beta", scope: !2963, file: !3, line: 694, type: !7)
!2981 = !DILocalVariable(name: "ClipTab", scope: !2963, file: !3, line: 695, type: !2250)
!2982 = !DILocalVariable(name: "indexA", scope: !2963, file: !3, line: 696, type: !7)
!2983 = !DILocalVariable(name: "indexB", scope: !2963, file: !3, line: 696, type: !7)
!2984 = !DILocalVariable(name: "p_Vid", scope: !2963, file: !3, line: 697, type: !125)
!2985 = !DILocalVariable(name: "PelNum", scope: !2963, file: !3, line: 698, type: !7)
!2986 = !DILocalVariable(name: "StrengthIdx", scope: !2963, file: !3, line: 699, type: !7)
!2987 = !DILocalVariable(name: "QP", scope: !2963, file: !3, line: 700, type: !7)
!2988 = !DILocalVariable(name: "xQ", scope: !2963, file: !3, line: 701, type: !7)
!2989 = !DILocalVariable(name: "yQ", scope: !2963, file: !3, line: 701, type: !7)
!2990 = !DILocalVariable(name: "pixP", scope: !2963, file: !3, line: 702, type: !828)
!2991 = !DILocalVariable(name: "pixQ", scope: !2963, file: !3, line: 702, type: !828)
!2992 = !DILocalVariable(name: "bitdepth_scale", scope: !2963, file: !3, line: 703, type: !7)
!2993 = !DILocalVariable(name: "max_imgpel_value", scope: !2963, file: !3, line: 704, type: !7)
!2994 = !DILocalVariable(name: "AlphaC0Offset", scope: !2963, file: !3, line: 706, type: !7)
!2995 = !DILocalVariable(name: "BetaOffset", scope: !2963, file: !3, line: 707, type: !7)
!2996 = !DILocalVariable(name: "MbP", scope: !2963, file: !3, line: 708, type: !740)
!2997 = !DILocalVariable(name: "SrcPtrP", scope: !2963, file: !3, line: 709, type: !557)
!2998 = !DILocalVariable(name: "SrcPtrQ", scope: !2963, file: !3, line: 709, type: !557)
!2999 = !DILocalVariable(name: "C0", scope: !3000, file: !3, line: 752, type: !7)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 751, column: 13)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 745, column: 17)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 744, column: 11)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 743, column: 15)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 740, column: 9)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 739, column: 13)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 722, column: 7)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 721, column: 11)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 720, column: 5)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 719, column: 9)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 712, column: 3)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 711, column: 3)
!3012 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 711, column: 3)
!3013 = !DILocalVariable(name: "tc0", scope: !3000, file: !3, line: 753, type: !7)
!3014 = !DILocalVariable(name: "dif", scope: !3000, file: !3, line: 754, type: !7)
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 0, scope: !2963)
!3017 = distinct !DIAssignID()
!3018 = !DILocation(line: 697, column: 33, scope: !2963)
!3019 = !DILocation(line: 698, column: 37, scope: !2963)
!3020 = !DILocation(line: 698, column: 21, scope: !2963)
!3021 = !DILocation(line: 702, column: 3, scope: !2963)
!3022 = !DILocation(line: 703, column: 29, scope: !2963)
!3023 = !DILocation(line: 704, column: 38, scope: !2963)
!3024 = !DILocation(line: 704, column: 60, scope: !2963)
!3025 = !DILocation(line: 704, column: 31, scope: !2963)
!3026 = !DILocation(line: 706, column: 33, scope: !2963)
!3027 = !DILocation(line: 706, column: 28, scope: !2963)
!3028 = !DILocation(line: 707, column: 33, scope: !2963)
!3029 = !DILocation(line: 707, column: 28, scope: !2963)
!3030 = !DILocation(line: 711, column: 22, scope: !3011)
!3031 = !DILocation(line: 711, column: 3, scope: !3012)
!3032 = !DILocation(line: 714, column: 5, scope: !3010)
!3033 = !DILocation(line: 715, column: 5, scope: !3010)
!3034 = !DILocation(line: 716, column: 20, scope: !3010)
!3035 = !DILocation(line: 716, column: 33, scope: !3010)
!3036 = !DILocation(line: 716, column: 13, scope: !3010)
!3037 = !DILocation(line: 717, column: 19, scope: !3010)
!3038 = !DILocation(line: 717, column: 42, scope: !3010)
!3039 = !DILocation(line: 717, column: 37, scope: !3010)
!3040 = !DILocation(line: 717, column: 51, scope: !3010)
!3041 = !DILocation(line: 717, column: 60, scope: !3010)
!3042 = !DILocation(line: 717, column: 55, scope: !3010)
!3043 = !DILocation(line: 717, column: 36, scope: !3010)
!3044 = !DILocation(line: 717, column: 76, scope: !3010)
!3045 = !DILocation(line: 717, column: 94, scope: !3010)
!3046 = !DILocation(line: 717, column: 107, scope: !3010)
!3047 = !DILocation(line: 717, column: 100, scope: !3010)
!3048 = !DILocation(line: 719, column: 14, scope: !3009)
!3049 = !DILocation(line: 719, column: 9, scope: !3009)
!3050 = !DILocation(line: 719, column: 24, scope: !3009)
!3051 = !DILocation(line: 719, column: 33, scope: !3009)
!3052 = !DILocation(line: 719, column: 46, scope: !3009)
!3053 = !DILocation(line: 719, column: 9, scope: !3010)
!3054 = !DILocation(line: 721, column: 20, scope: !3007)
!3055 = !DILocation(line: 721, column: 43, scope: !3007)
!3056 = !DILocation(line: 721, column: 11, scope: !3008)
!3057 = !DILocation(line: 723, column: 30, scope: !3006)
!3058 = !DILocation(line: 723, column: 21, scope: !3006)
!3059 = !DILocation(line: 723, column: 42, scope: !3006)
!3060 = !DILocation(line: 724, column: 30, scope: !3006)
!3061 = !DILocation(line: 724, column: 21, scope: !3006)
!3062 = !DILocation(line: 724, column: 42, scope: !3006)
!3063 = !DILocation(line: 727, column: 20, scope: !3006)
!3064 = !DILocation(line: 727, column: 15, scope: !3006)
!3065 = !DILocation(line: 727, column: 30, scope: !3006)
!3066 = !DILocation(line: 727, column: 28, scope: !3006)
!3067 = !DILocation(line: 727, column: 43, scope: !3006)
!3068 = !DILocation(line: 727, column: 48, scope: !3006)
!3069 = !DILocation(line: 729, column: 39, scope: !3006)
!3070 = !DILocation(line: 0, scope: !2338, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 729, column: 18, scope: !3006)
!3072 = !DILocation(line: 0, scope: !2347, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3071)
!3074 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3073)
!3075 = !DILocation(line: 0, scope: !2356, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3071)
!3077 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3076)
!3078 = !DILocation(line: 730, column: 39, scope: !3006)
!3079 = !DILocation(line: 0, scope: !2338, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 730, column: 18, scope: !3006)
!3081 = !DILocation(line: 0, scope: !2347, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3080)
!3083 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3082)
!3084 = !DILocation(line: 0, scope: !2356, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3080)
!3086 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3085)
!3087 = !DILocation(line: 732, column: 19, scope: !3006)
!3088 = !DILocation(line: 732, column: 39, scope: !3006)
!3089 = !DILocation(line: 733, column: 19, scope: !3006)
!3090 = !DILocation(line: 733, column: 39, scope: !3006)
!3091 = !DILocation(line: 734, column: 19, scope: !3006)
!3092 = !DILocation(line: 736, column: 15, scope: !3006)
!3093 = !DILocation(line: 737, column: 15, scope: !3006)
!3094 = !DILocation(line: 739, column: 19, scope: !3005)
!3095 = !DILocation(line: 739, column: 24, scope: !3005)
!3096 = !DILocation(line: 739, column: 22, scope: !3005)
!3097 = !DILocation(line: 0, scope: !75, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 739, column: 13, scope: !3005)
!3099 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3098)
!3100 = !DILocation(line: 739, column: 29, scope: !3005)
!3101 = !DILocation(line: 739, column: 13, scope: !3006)
!3102 = !DILocation(line: 742, column: 17, scope: !3004)
!3103 = !DILocation(line: 743, column: 28, scope: !3003)
!3104 = !DILocation(line: 743, column: 26, scope: !3003)
!3105 = !DILocation(line: 0, scope: !75, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 743, column: 17, scope: !3003)
!3107 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3106)
!3108 = !DILocation(line: 743, column: 39, scope: !3003)
!3109 = !DILocation(line: 743, column: 45, scope: !3003)
!3110 = !DILocation(line: 741, column: 17, scope: !3004)
!3111 = !DILocation(line: 743, column: 59, scope: !3003)
!3112 = !DILocation(line: 743, column: 57, scope: !3003)
!3113 = !DILocation(line: 0, scope: !75, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 743, column: 49, scope: !3003)
!3115 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3114)
!3116 = !DILocation(line: 743, column: 70, scope: !3003)
!3117 = !DILocation(line: 743, column: 15, scope: !3004)
!3118 = !DILocation(line: 745, column: 23, scope: !3001)
!3119 = !DILocation(line: 745, column: 17, scope: !3002)
!3120 = !DILocation(line: 747, column: 44, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 746, column: 13)
!3122 = !DILocation(line: 747, column: 50, scope: !3121)
!3123 = !DILocation(line: 747, column: 55, scope: !3121)
!3124 = !DILocation(line: 747, column: 60, scope: !3121)
!3125 = !DILocation(line: 747, column: 65, scope: !3121)
!3126 = !DILocation(line: 747, column: 28, scope: !3121)
!3127 = !DILocation(line: 747, column: 26, scope: !3121)
!3128 = !DILocation(line: 748, column: 44, scope: !3121)
!3129 = !DILocation(line: 748, column: 50, scope: !3121)
!3130 = !DILocation(line: 748, column: 55, scope: !3121)
!3131 = !DILocation(line: 748, column: 60, scope: !3121)
!3132 = !DILocation(line: 748, column: 65, scope: !3121)
!3133 = !DILocation(line: 749, column: 13, scope: !3121)
!3134 = !DILocation(line: 752, column: 25, scope: !3000)
!3135 = !DILocation(line: 752, column: 42, scope: !3000)
!3136 = !DILocation(line: 0, scope: !3000)
!3137 = !DILocation(line: 0, scope: !2338, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 754, column: 25, scope: !3000)
!3139 = !DILocation(line: 0, scope: !2347, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3138)
!3141 = !DILocation(line: 754, column: 69, scope: !3000)
!3142 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3140)
!3143 = !DILocation(line: 0, scope: !2356, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3138)
!3145 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3144)
!3146 = !DILocation(line: 756, column: 19, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 756, column: 19)
!3148 = !DILocation(line: 756, column: 19, scope: !3000)
!3149 = !DILocation(line: 758, column: 67, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 757, column: 15)
!3151 = !DILocation(line: 0, scope: !2550, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 758, column: 37, scope: !3150)
!3153 = !DILocation(line: 0, scope: !2347, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !3152)
!3155 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3154)
!3156 = !DILocation(line: 0, scope: !2356, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !3152)
!3158 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3157)
!3159 = !DILocation(line: 758, column: 28, scope: !3150)
!3160 = !DILocation(line: 758, column: 26, scope: !3150)
!3161 = !DILocation(line: 759, column: 67, scope: !3150)
!3162 = !DILocation(line: 0, scope: !2550, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 759, column: 37, scope: !3150)
!3164 = !DILocation(line: 0, scope: !2347, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !3163)
!3166 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !2356, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !3163)
!3169 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3168)
!3170 = !DILocation(line: 760, column: 15, scope: !3150)
!3171 = !DILocation(line: 0, scope: !3001)
!3172 = !DILocation(line: 711, column: 33, scope: !3011)
!3173 = distinct !{!3173, !3031, !3174}
!3174 = !DILocation(line: 766, column: 3, scope: !3012)
!3175 = !DILocation(line: 767, column: 1, scope: !2963)
!3176 = distinct !DISubprogram(name: "EdgeLoopChromaHorMBAff", scope: !3, file: !3, line: 775, type: !2964, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3207, !3208, !3209, !3210, !3216, !3217, !3218, !3219, !3222, !3223, !3228, !3229}
!3178 = !DILocalVariable(name: "Img", arg: 1, scope: !3176, file: !3, line: 775, type: !556)
!3179 = !DILocalVariable(name: "Strength", arg: 2, scope: !3176, file: !3, line: 775, type: !256)
!3180 = !DILocalVariable(name: "MbQ", arg: 3, scope: !3176, file: !3, line: 775, type: !740)
!3181 = !DILocalVariable(name: "edge", arg: 4, scope: !3176, file: !3, line: 775, type: !7)
!3182 = !DILocalVariable(name: "uv", arg: 5, scope: !3176, file: !3, line: 775, type: !7)
!3183 = !DILocalVariable(name: "p", arg: 6, scope: !3176, file: !3, line: 775, type: !518)
!3184 = !DILocalVariable(name: "p_Vid", scope: !3176, file: !3, line: 777, type: !125)
!3185 = !DILocalVariable(name: "PelNum", scope: !3176, file: !3, line: 778, type: !7)
!3186 = !DILocalVariable(name: "yQ", scope: !3176, file: !3, line: 779, type: !7)
!3187 = !DILocalVariable(name: "pixP", scope: !3176, file: !3, line: 780, type: !828)
!3188 = !DILocalVariable(name: "pixQ", scope: !3176, file: !3, line: 780, type: !828)
!3189 = !DILocalVariable(name: "bitdepth_scale", scope: !3176, file: !3, line: 781, type: !7)
!3190 = !DILocalVariable(name: "max_imgpel_value", scope: !3176, file: !3, line: 782, type: !7)
!3191 = !DILocalVariable(name: "AlphaC0Offset", scope: !3176, file: !3, line: 784, type: !7)
!3192 = !DILocalVariable(name: "BetaOffset", scope: !3176, file: !3, line: 785, type: !7)
!3193 = !DILocalVariable(name: "width", scope: !3176, file: !3, line: 786, type: !7)
!3194 = !DILocalVariable(name: "MbP", scope: !3195, file: !3, line: 793, type: !740)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 792, column: 3)
!3196 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 791, column: 7)
!3197 = !DILocalVariable(name: "incQ", scope: !3195, file: !3, line: 795, type: !7)
!3198 = !DILocalVariable(name: "incP", scope: !3195, file: !3, line: 796, type: !7)
!3199 = !DILocalVariable(name: "QP", scope: !3195, file: !3, line: 799, type: !7)
!3200 = !DILocalVariable(name: "indexA", scope: !3195, file: !3, line: 801, type: !7)
!3201 = !DILocalVariable(name: "indexB", scope: !3195, file: !3, line: 802, type: !7)
!3202 = !DILocalVariable(name: "Alpha", scope: !3195, file: !3, line: 804, type: !7)
!3203 = !DILocalVariable(name: "Beta", scope: !3195, file: !3, line: 805, type: !7)
!3204 = !DILocalVariable(name: "ClipTab", scope: !3205, file: !3, line: 809, type: !2250)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 808, column: 5)
!3206 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 807, column: 9)
!3207 = !DILocalVariable(name: "pel", scope: !3205, file: !3, line: 810, type: !7)
!3208 = !DILocalVariable(name: "Strng", scope: !3205, file: !3, line: 810, type: !7)
!3209 = !DILocalVariable(name: "StrengthIdx", scope: !3205, file: !3, line: 811, type: !7)
!3210 = !DILocalVariable(name: "SrcPtrQ", scope: !3211, file: !3, line: 818, type: !557)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 817, column: 9)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 816, column: 13)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 813, column: 7)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 812, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 812, column: 7)
!3216 = !DILocalVariable(name: "SrcPtrP", scope: !3211, file: !3, line: 819, type: !557)
!3217 = !DILocalVariable(name: "L0", scope: !3211, file: !3, line: 821, type: !69)
!3218 = !DILocalVariable(name: "R0", scope: !3211, file: !3, line: 822, type: !69)
!3219 = !DILocalVariable(name: "L1", scope: !3220, file: !3, line: 826, type: !69)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 825, column: 11)
!3221 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 824, column: 15)
!3222 = !DILocalVariable(name: "R1", scope: !3220, file: !3, line: 827, type: !69)
!3223 = !DILocalVariable(name: "C0", scope: !3224, file: !3, line: 837, type: !7)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 836, column: 15)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 830, column: 19)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 829, column: 13)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 828, column: 17)
!3228 = !DILocalVariable(name: "tc0", scope: !3224, file: !3, line: 838, type: !7)
!3229 = !DILocalVariable(name: "dif", scope: !3224, file: !3, line: 839, type: !7)
!3230 = distinct !DIAssignID()
!3231 = !DILocation(line: 0, scope: !3176)
!3232 = distinct !DIAssignID()
!3233 = !DILocation(line: 777, column: 33, scope: !3176)
!3234 = !DILocation(line: 778, column: 37, scope: !3176)
!3235 = !DILocation(line: 778, column: 21, scope: !3176)
!3236 = !DILocation(line: 779, column: 23, scope: !3176)
!3237 = !DILocation(line: 779, column: 18, scope: !3176)
!3238 = !DILocation(line: 780, column: 3, scope: !3176)
!3239 = !DILocation(line: 781, column: 29, scope: !3176)
!3240 = !DILocation(line: 782, column: 38, scope: !3176)
!3241 = !DILocation(line: 782, column: 60, scope: !3176)
!3242 = !DILocation(line: 782, column: 31, scope: !3176)
!3243 = !DILocation(line: 784, column: 33, scope: !3176)
!3244 = !DILocation(line: 784, column: 28, scope: !3176)
!3245 = !DILocation(line: 785, column: 33, scope: !3176)
!3246 = !DILocation(line: 785, column: 28, scope: !3176)
!3247 = !DILocation(line: 786, column: 23, scope: !3176)
!3248 = !DILocation(line: 788, column: 30, scope: !3176)
!3249 = !DILocation(line: 788, column: 35, scope: !3176)
!3250 = !DILocation(line: 788, column: 3, scope: !3176)
!3251 = !DILocation(line: 789, column: 3, scope: !3176)
!3252 = !DILocation(line: 791, column: 12, scope: !3196)
!3253 = !DILocation(line: 791, column: 7, scope: !3196)
!3254 = !DILocation(line: 791, column: 22, scope: !3196)
!3255 = !DILocation(line: 791, column: 31, scope: !3196)
!3256 = !DILocation(line: 791, column: 44, scope: !3196)
!3257 = !DILocation(line: 791, column: 7, scope: !3176)
!3258 = !DILocation(line: 793, column: 32, scope: !3195)
!3259 = !DILocation(line: 793, column: 45, scope: !3195)
!3260 = !DILocation(line: 793, column: 25, scope: !3195)
!3261 = !DILocation(line: 0, scope: !3195)
!3262 = !DILocation(line: 795, column: 23, scope: !3195)
!3263 = !DILocation(line: 795, column: 18, scope: !3195)
!3264 = !DILocation(line: 795, column: 32, scope: !3195)
!3265 = !DILocation(line: 796, column: 23, scope: !3195)
!3266 = !DILocation(line: 796, column: 18, scope: !3195)
!3267 = !DILocation(line: 796, column: 33, scope: !3195)
!3268 = !DILocation(line: 799, column: 20, scope: !3195)
!3269 = !DILocation(line: 799, column: 15, scope: !3195)
!3270 = !DILocation(line: 799, column: 35, scope: !3195)
!3271 = !DILocation(line: 799, column: 30, scope: !3195)
!3272 = !DILocation(line: 799, column: 28, scope: !3195)
!3273 = !DILocation(line: 799, column: 43, scope: !3195)
!3274 = !DILocation(line: 799, column: 48, scope: !3195)
!3275 = !DILocation(line: 801, column: 39, scope: !3195)
!3276 = !DILocation(line: 0, scope: !2338, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 801, column: 18, scope: !3195)
!3278 = !DILocation(line: 0, scope: !2347, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3277)
!3280 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3279)
!3281 = !DILocation(line: 0, scope: !2356, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3277)
!3283 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3282)
!3284 = !DILocation(line: 802, column: 39, scope: !3195)
!3285 = !DILocation(line: 0, scope: !2338, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 802, column: 18, scope: !3195)
!3287 = !DILocation(line: 0, scope: !2347, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3286)
!3289 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3288)
!3290 = !DILocation(line: 0, scope: !2356, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3286)
!3292 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3291)
!3293 = !DILocation(line: 804, column: 19, scope: !3195)
!3294 = !DILocation(line: 804, column: 39, scope: !3195)
!3295 = !DILocation(line: 805, column: 19, scope: !3195)
!3296 = !DILocation(line: 805, column: 39, scope: !3195)
!3297 = !DILocation(line: 807, column: 16, scope: !3206)
!3298 = !DILocation(line: 807, column: 24, scope: !3206)
!3299 = !DILocation(line: 807, column: 9, scope: !3195)
!3300 = !DILocation(line: 809, column: 29, scope: !3205)
!3301 = !DILocation(line: 0, scope: !3205)
!3302 = !DILocation(line: 812, column: 26, scope: !3214)
!3303 = !DILocation(line: 812, column: 7, scope: !3215)
!3304 = !DILocation(line: 814, column: 23, scope: !3213)
!3305 = !DILocation(line: 814, column: 46, scope: !3213)
!3306 = !DILocation(line: 814, column: 41, scope: !3213)
!3307 = !DILocation(line: 814, column: 55, scope: !3213)
!3308 = !DILocation(line: 814, column: 64, scope: !3213)
!3309 = !DILocation(line: 814, column: 59, scope: !3213)
!3310 = !DILocation(line: 814, column: 40, scope: !3213)
!3311 = !DILocation(line: 814, column: 80, scope: !3213)
!3312 = !DILocation(line: 814, column: 98, scope: !3213)
!3313 = !DILocation(line: 814, column: 111, scope: !3213)
!3314 = !DILocation(line: 814, column: 104, scope: !3213)
!3315 = !DILocation(line: 816, column: 22, scope: !3212)
!3316 = !DILocation(line: 816, column: 45, scope: !3212)
!3317 = !DILocation(line: 816, column: 13, scope: !3213)
!3318 = !DILocation(line: 818, column: 40, scope: !3211)
!3319 = !DILocation(line: 818, column: 31, scope: !3211)
!3320 = !DILocation(line: 818, column: 52, scope: !3211)
!3321 = !DILocation(line: 0, scope: !3211)
!3322 = !DILocation(line: 819, column: 40, scope: !3211)
!3323 = !DILocation(line: 819, column: 31, scope: !3211)
!3324 = !DILocation(line: 819, column: 52, scope: !3211)
!3325 = !DILocation(line: 821, column: 24, scope: !3211)
!3326 = !DILocation(line: 822, column: 24, scope: !3211)
!3327 = !DILocation(line: 824, column: 21, scope: !3221)
!3328 = !DILocation(line: 824, column: 26, scope: !3221)
!3329 = !DILocation(line: 824, column: 24, scope: !3221)
!3330 = !DILocation(line: 0, scope: !75, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 824, column: 15, scope: !3221)
!3332 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3331)
!3333 = !DILocation(line: 824, column: 31, scope: !3221)
!3334 = !DILocation(line: 824, column: 15, scope: !3211)
!3335 = !DILocation(line: 0, scope: !3220)
!3336 = !DILocation(line: 827, column: 26, scope: !3220)
!3337 = !DILocation(line: 828, column: 30, scope: !3227)
!3338 = !DILocation(line: 828, column: 28, scope: !3227)
!3339 = !DILocation(line: 0, scope: !75, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 828, column: 19, scope: !3227)
!3341 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3340)
!3342 = !DILocation(line: 828, column: 41, scope: !3227)
!3343 = !DILocation(line: 828, column: 47, scope: !3227)
!3344 = !DILocation(line: 826, column: 26, scope: !3220)
!3345 = !DILocation(line: 828, column: 61, scope: !3227)
!3346 = !DILocation(line: 828, column: 59, scope: !3227)
!3347 = !DILocation(line: 0, scope: !75, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 828, column: 51, scope: !3227)
!3349 = !DILocation(line: 120, column: 18, scope: !75, inlinedAt: !3348)
!3350 = !DILocation(line: 828, column: 72, scope: !3227)
!3351 = !DILocation(line: 828, column: 17, scope: !3220)
!3352 = !DILocation(line: 830, column: 25, scope: !3225)
!3353 = !DILocation(line: 830, column: 19, scope: !3226)
!3354 = !DILocation(line: 832, column: 46, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 831, column: 15)
!3356 = !DILocation(line: 832, column: 52, scope: !3355)
!3357 = !DILocation(line: 832, column: 57, scope: !3355)
!3358 = !DILocation(line: 832, column: 62, scope: !3355)
!3359 = !DILocation(line: 832, column: 67, scope: !3355)
!3360 = !DILocation(line: 832, column: 30, scope: !3355)
!3361 = !DILocation(line: 832, column: 28, scope: !3355)
!3362 = !DILocation(line: 833, column: 46, scope: !3355)
!3363 = !DILocation(line: 833, column: 52, scope: !3355)
!3364 = !DILocation(line: 833, column: 57, scope: !3355)
!3365 = !DILocation(line: 833, column: 62, scope: !3355)
!3366 = !DILocation(line: 833, column: 67, scope: !3355)
!3367 = !DILocation(line: 834, column: 15, scope: !3355)
!3368 = !DILocation(line: 837, column: 27, scope: !3224)
!3369 = !DILocation(line: 837, column: 44, scope: !3224)
!3370 = !DILocation(line: 0, scope: !3224)
!3371 = !DILocation(line: 0, scope: !2338, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 839, column: 27, scope: !3224)
!3373 = !DILocation(line: 0, scope: !2347, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 200, column: 7, scope: !2338, inlinedAt: !3372)
!3375 = !DILocation(line: 839, column: 71, scope: !3224)
!3376 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3374)
!3377 = !DILocation(line: 0, scope: !2356, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 201, column: 7, scope: !2338, inlinedAt: !3372)
!3379 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3378)
!3380 = !DILocation(line: 841, column: 21, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 841, column: 21)
!3382 = !DILocation(line: 841, column: 21, scope: !3224)
!3383 = !DILocation(line: 843, column: 69, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 842, column: 17)
!3385 = !DILocation(line: 0, scope: !2550, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 843, column: 39, scope: !3384)
!3387 = !DILocation(line: 0, scope: !2347, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !3386)
!3389 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3388)
!3390 = !DILocation(line: 0, scope: !2356, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !3386)
!3392 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3391)
!3393 = !DILocation(line: 843, column: 30, scope: !3384)
!3394 = !DILocation(line: 843, column: 28, scope: !3384)
!3395 = !DILocation(line: 844, column: 69, scope: !3384)
!3396 = !DILocation(line: 0, scope: !2550, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 844, column: 39, scope: !3384)
!3398 = !DILocation(line: 0, scope: !2347, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 192, column: 7, scope: !2550, inlinedAt: !3397)
!3400 = !DILocation(line: 49, column: 10, scope: !2347, inlinedAt: !3399)
!3401 = !DILocation(line: 0, scope: !2356, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 193, column: 7, scope: !2550, inlinedAt: !3397)
!3403 = !DILocation(line: 44, column: 10, scope: !2356, inlinedAt: !3402)
!3404 = !DILocation(line: 845, column: 17, scope: !3384)
!3405 = !DILocation(line: 0, scope: !3225)
!3406 = !DILocation(line: 850, column: 19, scope: !3213)
!3407 = distinct !DIAssignID()
!3408 = !DILocation(line: 851, column: 19, scope: !3213)
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 812, column: 37, scope: !3214)
!3411 = distinct !{!3411, !3303, !3412}
!3412 = !DILocation(line: 852, column: 7, scope: !3215)
!3413 = !DILocation(line: 855, column: 1, scope: !3176)
!3414 = distinct !DISubprogram(name: "get_non_aff_neighbor_luma", scope: !3, file: !3, line: 47, type: !3415, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!740, !740, !7, !7}
!3417 = !{!3418, !3419, !3420}
!3418 = !DILocalVariable(name: "mb", arg: 1, scope: !3414, file: !3, line: 47, type: !740)
!3419 = !DILocalVariable(name: "xN", arg: 2, scope: !3414, file: !3, line: 47, type: !7)
!3420 = !DILocalVariable(name: "yN", arg: 3, scope: !3414, file: !3, line: 47, type: !7)
!3421 = !DILocation(line: 0, scope: !3414)
!3422 = !DILocation(line: 49, column: 10, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 49, column: 7)
!3424 = !DILocation(line: 49, column: 7, scope: !3414)
!3425 = !DILocation(line: 51, column: 15, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 51, column: 12)
!3427 = !DILocation(line: 51, column: 12, scope: !3423)
!3428 = !DILocation(line: 0, scope: !3423)
!3429 = !DILocation(line: 55, column: 1, scope: !3414)
!3430 = distinct !DISubprogram(name: "get_non_aff_neighbor_chroma", scope: !3, file: !3, line: 57, type: !3431, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!740, !740, !7, !7, !7, !7}
!3433 = !{!3434, !3435, !3436, !3437, !3438}
!3434 = !DILocalVariable(name: "mb", arg: 1, scope: !3430, file: !3, line: 57, type: !740)
!3435 = !DILocalVariable(name: "xN", arg: 2, scope: !3430, file: !3, line: 57, type: !7)
!3436 = !DILocalVariable(name: "yN", arg: 3, scope: !3430, file: !3, line: 57, type: !7)
!3437 = !DILocalVariable(name: "block_width", arg: 4, scope: !3430, file: !3, line: 57, type: !7)
!3438 = !DILocalVariable(name: "block_height", arg: 5, scope: !3430, file: !3, line: 57, type: !7)
!3439 = !DILocation(line: 0, scope: !3430)
!3440 = !DILocation(line: 59, column: 10, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 59, column: 7)
!3442 = !DILocation(line: 59, column: 7, scope: !3430)
!3443 = !DILocation(line: 61, column: 12, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 61, column: 9)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 60, column: 3)
!3446 = !DILocation(line: 61, column: 9, scope: !3445)
!3447 = !DILocation(line: 62, column: 18, scope: !3444)
!3448 = !DILocation(line: 62, column: 7, scope: !3444)
!3449 = !DILocation(line: 66, column: 15, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 66, column: 12)
!3451 = !DILocation(line: 66, column: 12, scope: !3441)
!3452 = !DILocation(line: 68, column: 12, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 68, column: 9)
!3454 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 67, column: 3)
!3455 = !DILocation(line: 68, column: 9, scope: !3454)
!3456 = !DILocation(line: 69, column: 18, scope: !3453)
!3457 = !DILocation(line: 69, column: 7, scope: !3453)
!3458 = !DILocation(line: 70, column: 17, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 70, column: 14)
!3460 = !DILocation(line: 0, scope: !3459)
!3461 = !DILocation(line: 0, scope: !3441)
!3462 = !DILocation(line: 77, column: 1, scope: !3430)
!3463 = !DISubprogram(name: "getAffNeighbour", scope: !3464, file: !3464, line: 21, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3464 = !DIFile(filename: "ldecod_src/inc/mb_access.h", directory: "/home/yjs/workspace/x264-test/src", checksumkind: CSK_MD5, checksum: "eb590c3fb983e8661ba693913fa8cfd2")
!3465 = !DISubprogram(name: "get_mb_block_pos_mbaff", scope: !3464, file: !3464, line: 28, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
