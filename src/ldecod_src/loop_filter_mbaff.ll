; ModuleID = 'ldecod_src/loop_filter_mbaff.c'
source_filename = "ldecod_src/loop_filter_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_mbaff(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 {
entry:
  %GetStrengthVer = getelementptr inbounds i8, ptr %p_Vid, i64 856760
  store ptr @GetStrengthVerMBAff, ptr %GetStrengthVer, align 8
  %GetStrengthHor = getelementptr inbounds i8, ptr %p_Vid, i64 856768
  store ptr @GetStrengthHorMBAff, ptr %GetStrengthHor, align 8
  %EdgeLoopLumaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856776
  store ptr @EdgeLoopLumaVerMBAff, ptr %EdgeLoopLumaVer, align 8
  %EdgeLoopLumaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856784
  store ptr @EdgeLoopLumaHorMBAff, ptr %EdgeLoopLumaHor, align 8
  %EdgeLoopChromaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856792
  store ptr @EdgeLoopChromaVerMBAff, ptr %EdgeLoopChromaVer, align 8
  %EdgeLoopChromaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856800
  store ptr @EdgeLoopChromaHorMBAff, ptr %EdgeLoopChromaHor, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthVerMBAff(ptr nocapture noundef writeonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 {
entry:
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %pixP = alloca %struct.pix_pos, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_x) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_y) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %slice_type = getelementptr inbounds i8, ptr %p, i64 248
  %1 = load i32, ptr %slice_type, align 8
  %.off = add i32 %1, -3
  %switch = icmp ult i32 %.off, 2
  %sub = add nsw i32 %edge, -1
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  br i1 %switch, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %mb_field = getelementptr inbounds i8, ptr %MbQ, i64 384
  %mixedModeEdgeFlag = getelementptr inbounds i8, ptr %MbQ, i64 472
  %cmp20 = icmp eq i32 %edge, 0
  %conv22 = select i1 %cmp20, i8 4, i8 3
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %2 = load ptr, ptr %mb_data, align 8
  %3 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, ptr %mb_field, align 8
  %mb_field16 = getelementptr inbounds %struct.macroblock, ptr %2, i64 %idxprom, i32 45
  %5 = load i32, ptr %mb_field16, align 8
  %cmp17 = icmp ne i32 %4, %5
  %conv19 = zext i1 %cmp17 to i8
  store i8 %conv19, ptr %mixedModeEdgeFlag, align 8
  store i8 %conv22, ptr %Strength, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 1, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %6 = load ptr, ptr %mb_data, align 8
  %7 = load i32, ptr %mb_addr, align 4
  %idxprom.1 = sext i32 %7 to i64
  %8 = load i32, ptr %mb_field, align 8
  %mb_field16.1 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %idxprom.1, i32 45
  %9 = load i32, ptr %mb_field16.1, align 8
  %cmp17.1 = icmp ne i32 %8, %9
  %conv19.1 = zext i1 %cmp17.1 to i8
  store i8 %conv19.1, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.1 = getelementptr inbounds i8, ptr %Strength, i64 1
  store i8 %conv22, ptr %arrayidx24.1, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 2, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %10 = load ptr, ptr %mb_data, align 8
  %11 = load i32, ptr %mb_addr, align 4
  %idxprom.2 = sext i32 %11 to i64
  %12 = load i32, ptr %mb_field, align 8
  %mb_field16.2 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom.2, i32 45
  %13 = load i32, ptr %mb_field16.2, align 8
  %cmp17.2 = icmp ne i32 %12, %13
  %conv19.2 = zext i1 %cmp17.2 to i8
  store i8 %conv19.2, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.2 = getelementptr inbounds i8, ptr %Strength, i64 2
  store i8 %conv22, ptr %arrayidx24.2, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 3, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %14 = load ptr, ptr %mb_data, align 8
  %15 = load i32, ptr %mb_addr, align 4
  %idxprom.3 = sext i32 %15 to i64
  %16 = load i32, ptr %mb_field, align 8
  %mb_field16.3 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom.3, i32 45
  %17 = load i32, ptr %mb_field16.3, align 8
  %cmp17.3 = icmp ne i32 %16, %17
  %conv19.3 = zext i1 %cmp17.3 to i8
  store i8 %conv19.3, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.3 = getelementptr inbounds i8, ptr %Strength, i64 3
  store i8 %conv22, ptr %arrayidx24.3, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 4, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %18 = load ptr, ptr %mb_data, align 8
  %19 = load i32, ptr %mb_addr, align 4
  %idxprom.4 = sext i32 %19 to i64
  %20 = load i32, ptr %mb_field, align 8
  %mb_field16.4 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom.4, i32 45
  %21 = load i32, ptr %mb_field16.4, align 8
  %cmp17.4 = icmp ne i32 %20, %21
  %conv19.4 = zext i1 %cmp17.4 to i8
  store i8 %conv19.4, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.4 = getelementptr inbounds i8, ptr %Strength, i64 4
  store i8 %conv22, ptr %arrayidx24.4, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 5, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %22 = load ptr, ptr %mb_data, align 8
  %23 = load i32, ptr %mb_addr, align 4
  %idxprom.5 = sext i32 %23 to i64
  %24 = load i32, ptr %mb_field, align 8
  %mb_field16.5 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %idxprom.5, i32 45
  %25 = load i32, ptr %mb_field16.5, align 8
  %cmp17.5 = icmp ne i32 %24, %25
  %conv19.5 = zext i1 %cmp17.5 to i8
  store i8 %conv19.5, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.5 = getelementptr inbounds i8, ptr %Strength, i64 5
  store i8 %conv22, ptr %arrayidx24.5, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 6, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %26 = load ptr, ptr %mb_data, align 8
  %27 = load i32, ptr %mb_addr, align 4
  %idxprom.6 = sext i32 %27 to i64
  %28 = load i32, ptr %mb_field, align 8
  %mb_field16.6 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %idxprom.6, i32 45
  %29 = load i32, ptr %mb_field16.6, align 8
  %cmp17.6 = icmp ne i32 %28, %29
  %conv19.6 = zext i1 %cmp17.6 to i8
  store i8 %conv19.6, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.6 = getelementptr inbounds i8, ptr %Strength, i64 6
  store i8 %conv22, ptr %arrayidx24.6, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %30 = load ptr, ptr %mb_data, align 8
  %31 = load i32, ptr %mb_addr, align 4
  %idxprom.7 = sext i32 %31 to i64
  %32 = load i32, ptr %mb_field, align 8
  %mb_field16.7 = getelementptr inbounds %struct.macroblock, ptr %30, i64 %idxprom.7, i32 45
  %33 = load i32, ptr %mb_field16.7, align 8
  %cmp17.7 = icmp ne i32 %32, %33
  %conv19.7 = zext i1 %cmp17.7 to i8
  store i8 %conv19.7, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.7 = getelementptr inbounds i8, ptr %Strength, i64 7
  store i8 %conv22, ptr %arrayidx24.7, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 8, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %34 = load ptr, ptr %mb_data, align 8
  %35 = load i32, ptr %mb_addr, align 4
  %idxprom.8 = sext i32 %35 to i64
  %36 = load i32, ptr %mb_field, align 8
  %mb_field16.8 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %idxprom.8, i32 45
  %37 = load i32, ptr %mb_field16.8, align 8
  %cmp17.8 = icmp ne i32 %36, %37
  %conv19.8 = zext i1 %cmp17.8 to i8
  store i8 %conv19.8, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.8 = getelementptr inbounds i8, ptr %Strength, i64 8
  store i8 %conv22, ptr %arrayidx24.8, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 9, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %38 = load ptr, ptr %mb_data, align 8
  %39 = load i32, ptr %mb_addr, align 4
  %idxprom.9 = sext i32 %39 to i64
  %40 = load i32, ptr %mb_field, align 8
  %mb_field16.9 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %idxprom.9, i32 45
  %41 = load i32, ptr %mb_field16.9, align 8
  %cmp17.9 = icmp ne i32 %40, %41
  %conv19.9 = zext i1 %cmp17.9 to i8
  store i8 %conv19.9, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.9 = getelementptr inbounds i8, ptr %Strength, i64 9
  store i8 %conv22, ptr %arrayidx24.9, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 10, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %42 = load ptr, ptr %mb_data, align 8
  %43 = load i32, ptr %mb_addr, align 4
  %idxprom.10 = sext i32 %43 to i64
  %44 = load i32, ptr %mb_field, align 8
  %mb_field16.10 = getelementptr inbounds %struct.macroblock, ptr %42, i64 %idxprom.10, i32 45
  %45 = load i32, ptr %mb_field16.10, align 8
  %cmp17.10 = icmp ne i32 %44, %45
  %conv19.10 = zext i1 %cmp17.10 to i8
  store i8 %conv19.10, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.10 = getelementptr inbounds i8, ptr %Strength, i64 10
  store i8 %conv22, ptr %arrayidx24.10, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 11, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %46 = load ptr, ptr %mb_data, align 8
  %47 = load i32, ptr %mb_addr, align 4
  %idxprom.11 = sext i32 %47 to i64
  %48 = load i32, ptr %mb_field, align 8
  %mb_field16.11 = getelementptr inbounds %struct.macroblock, ptr %46, i64 %idxprom.11, i32 45
  %49 = load i32, ptr %mb_field16.11, align 8
  %cmp17.11 = icmp ne i32 %48, %49
  %conv19.11 = zext i1 %cmp17.11 to i8
  store i8 %conv19.11, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.11 = getelementptr inbounds i8, ptr %Strength, i64 11
  store i8 %conv22, ptr %arrayidx24.11, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 12, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %50 = load ptr, ptr %mb_data, align 8
  %51 = load i32, ptr %mb_addr, align 4
  %idxprom.12 = sext i32 %51 to i64
  %52 = load i32, ptr %mb_field, align 8
  %mb_field16.12 = getelementptr inbounds %struct.macroblock, ptr %50, i64 %idxprom.12, i32 45
  %53 = load i32, ptr %mb_field16.12, align 8
  %cmp17.12 = icmp ne i32 %52, %53
  %conv19.12 = zext i1 %cmp17.12 to i8
  store i8 %conv19.12, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.12 = getelementptr inbounds i8, ptr %Strength, i64 12
  store i8 %conv22, ptr %arrayidx24.12, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 13, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %54 = load ptr, ptr %mb_data, align 8
  %55 = load i32, ptr %mb_addr, align 4
  %idxprom.13 = sext i32 %55 to i64
  %56 = load i32, ptr %mb_field, align 8
  %mb_field16.13 = getelementptr inbounds %struct.macroblock, ptr %54, i64 %idxprom.13, i32 45
  %57 = load i32, ptr %mb_field16.13, align 8
  %cmp17.13 = icmp ne i32 %56, %57
  %conv19.13 = zext i1 %cmp17.13 to i8
  store i8 %conv19.13, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.13 = getelementptr inbounds i8, ptr %Strength, i64 13
  store i8 %conv22, ptr %arrayidx24.13, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 14, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %58 = load ptr, ptr %mb_data, align 8
  %59 = load i32, ptr %mb_addr, align 4
  %idxprom.14 = sext i32 %59 to i64
  %60 = load i32, ptr %mb_field, align 8
  %mb_field16.14 = getelementptr inbounds %struct.macroblock, ptr %58, i64 %idxprom.14, i32 45
  %61 = load i32, ptr %mb_field16.14, align 8
  %cmp17.14 = icmp ne i32 %60, %61
  %conv19.14 = zext i1 %cmp17.14 to i8
  store i8 %conv19.14, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.14 = getelementptr inbounds i8, ptr %Strength, i64 14
  store i8 %conv22, ptr %arrayidx24.14, align 1
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 15, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %62 = load ptr, ptr %mb_data, align 8
  %63 = load i32, ptr %mb_addr, align 4
  %idxprom.15 = sext i32 %63 to i64
  %64 = load i32, ptr %mb_field, align 8
  %mb_field16.15 = getelementptr inbounds %struct.macroblock, ptr %62, i64 %idxprom.15, i32 45
  %65 = load i32, ptr %mb_field16.15, align 8
  %cmp17.15 = icmp ne i32 %64, %65
  %conv19.15 = zext i1 %cmp17.15 to i8
  store i8 %conv19.15, ptr %mixedModeEdgeFlag, align 8
  %arrayidx24.15 = getelementptr inbounds i8, ptr %Strength, i64 15
  store i8 %conv22, ptr %arrayidx24.15, align 1
  br label %if.end482

if.else:                                          ; preds = %entry
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %mb_data29 = getelementptr inbounds i8, ptr %0, i64 848888
  %66 = load ptr, ptr %mb_data29, align 8
  %mb_addr30 = getelementptr inbounds i8, ptr %pixP, i64 4
  %67 = load i32, ptr %mb_addr30, align 4
  %idxprom31 = sext i32 %67 to i64
  %arrayidx32 = getelementptr inbounds %struct.macroblock, ptr %66, i64 %idxprom31
  %mb_field33 = getelementptr inbounds i8, ptr %MbQ, i64 384
  %68 = load i32, ptr %mb_field33, align 8
  %cmp34 = icmp eq i32 %68, 0
  br i1 %cmp34, label %land.lhs.true, label %if.else232

land.lhs.true:                                    ; preds = %if.else
  %mb_field36 = getelementptr inbounds i8, ptr %arrayidx32, i64 384
  %69 = load i32, ptr %mb_field36, align 8
  %cmp37 = icmp eq i32 %69, 0
  br i1 %cmp37, label %if.then39, label %if.else232

if.then39:                                        ; preds = %land.lhs.true
  %mixedModeEdgeFlag45 = getelementptr inbounds i8, ptr %MbQ, i64 472
  store i8 0, ptr %mixedModeEdgeFlag45, align 8
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96
  %70 = load i32, ptr %is_intra_block, align 8
  %cmp46 = icmp eq i32 %70, 1
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.then39
  %is_intra_block49 = getelementptr inbounds i8, ptr %arrayidx32, i64 96
  %71 = load i32, ptr %is_intra_block49, align 8
  %cmp50 = icmp eq i32 %71, 1
  br i1 %cmp50, label %if.then52, label %if.else58

if.then52:                                        ; preds = %lor.lhs.false48, %if.then39
  %cmp53 = icmp eq i32 %edge, 0
  %conv56 = select i1 %cmp53, i8 4, i8 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %conv56, i64 16, i1 false)
  br label %if.end482

if.else58:                                        ; preds = %lor.lhs.false48
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24
  %72 = load i32, ptr %mbAddrX, align 8
  call void @get_mb_block_pos_mbaff(i32 noundef %72, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7
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
  %.pre = load i16, ptr %y69, align 2
  br label %for.body63

for.body63:                                       ; preds = %if.else58, %if.end216
  %79 = phi i16 [ %.pre, %if.else58 ], [ %add220, %if.end216 ]
  %conv60890 = phi i32 [ 0, %if.else58 ], [ %conv60, %if.end216 ]
  %idx.1889 = phi i32 [ 0, %if.else58 ], [ %add228, %if.end216 ]
  %and65 = and i32 %idx.1889, 65532
  %add67 = add nuw nsw i32 %and65, %shr66
  %80 = load i64, ptr %cbp_blk, align 8
  %sext642 = shl i32 %add67, 16
  %conv78 = ashr exact i32 %sext642, 16
  %cmp.i = icmp sgt i32 %conv78, 63
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i

cond.false.i:                                     ; preds = %for.body63
  %idxprom.i = sext i32 %conv78 to i64
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i
  %81 = load i64, ptr %arrayidx.i, align 8
  br label %i64_power2.exit

i64_power2.exit:                                  ; preds = %for.body63, %cond.false.i
  %cond.i = phi i64 [ %81, %cond.false.i ], [ 0, %for.body63 ]
  %and79 = and i64 %cond.i, %80
  %cmp80.not = icmp eq i64 %and79, 0
  br i1 %cmp80.not, label %lor.lhs.false82, label %if.end216

lor.lhs.false82:                                  ; preds = %i64_power2.exit
  %82 = and i16 %79, -4
  %add75 = add i16 %74, %82
  %83 = load i64, ptr %cbp_blk83, align 8
  %cmp.i684 = icmp sgt i16 %add75, 63
  br i1 %cmp.i684, label %i64_power2.exit689, label %cond.false.i685

cond.false.i685:                                  ; preds = %lor.lhs.false82
  %idxprom.i686 = sext i16 %add75 to i64
  %arrayidx.i687 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i686
  %84 = load i64, ptr %arrayidx.i687, align 8
  br label %i64_power2.exit689

i64_power2.exit689:                               ; preds = %lor.lhs.false82, %cond.false.i685
  %cond.i688 = phi i64 [ %84, %cond.false.i685 ], [ 0, %lor.lhs.false82 ]
  %and87 = and i64 %cond.i688, %83
  %cmp88.not = icmp eq i64 %and87, 0
  br i1 %cmp88.not, label %if.else91, label %if.end216

if.else91:                                        ; preds = %i64_power2.exit689
  br i1 %tobool.not, label %if.else102, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.else91
  %85 = load i16, ptr %mb_type, align 8
  %.off646 = add i16 %85, -1
  %switch647 = icmp ult i16 %.off646, 2
  br i1 %switch647, label %if.end216, label %if.else102

if.else102:                                       ; preds = %land.lhs.true92, %if.else91
  %shr105 = ashr i32 %sext642, 18
  %add106 = add nsw i32 %shl, %shr105
  %86 = load i16, ptr %pos_y, align 2
  %87 = ashr i16 %86, 2
  %88 = load ptr, ptr %mv_info, align 8
  %idxprom116 = sext i32 %add106 to i64
  %arrayidx117 = getelementptr inbounds ptr, ptr %88, i64 %idxprom116
  %89 = load ptr, ptr %arrayidx117, align 8
  %arrayidx119 = getelementptr inbounds %struct.pic_motion_params, ptr %89, i64 %idxprom118
  %idxprom121 = sext i16 %87 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %88, i64 %idxprom121
  %90 = load ptr, ptr %arrayidx122, align 8
  %arrayidx124 = getelementptr inbounds %struct.pic_motion_params, ptr %90, i64 %idxprom123
  %91 = load ptr, ptr %arrayidx119, align 8
  %92 = load ptr, ptr %arrayidx124, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx119, i64 8
  %93 = load ptr, ptr %arrayidx129, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %arrayidx124, i64 8
  %94 = load ptr, ptr %arrayidx131, align 8
  %cmp132 = icmp eq ptr %91, %92
  %cmp135 = icmp eq ptr %93, %94
  %or.cond = select i1 %cmp132, i1 %cmp135, i1 false
  br i1 %or.cond, label %if.then143, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.else102
  %cmp138 = icmp eq ptr %91, %94
  %cmp141 = icmp eq ptr %93, %92
  %or.cond643 = select i1 %cmp138, i1 %cmp141, i1 false
  br i1 %or.cond643, label %if.then143, label %if.end214

if.then143:                                       ; preds = %lor.lhs.false137, %if.else102
  %cmp144.not = icmp eq ptr %91, %93
  %mv182 = getelementptr inbounds i8, ptr %arrayidx119, i64 16
  br i1 %cmp144.not, label %if.else181, label %if.then146

if.then146:                                       ; preds = %if.then143
  %mv.val = load i16, ptr %mv182, align 2
  %95 = getelementptr i8, ptr %arrayidx119, i64 18
  %mv.val682 = load i16, ptr %95, align 2
  %conv.i = sext i16 %mv.val to i32
  %conv4.i = sext i16 %mv.val682 to i32
  br i1 %cmp132, label %if.then149, label %if.else163

if.then149:                                       ; preds = %if.then146
  %mv151 = getelementptr inbounds i8, ptr %arrayidx124, i64 16
  %mv151.val = load i16, ptr %mv151, align 2
  %96 = getelementptr i8, ptr %arrayidx124, i64 18
  %mv151.val683 = load i16, ptr %96, align 2
  %conv2.i = sext i16 %mv151.val to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %sub.i.i = call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %cmp.i690 = icmp ult i32 %sub.i.i, 4
  %conv6.i = sext i16 %mv151.val683 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %sub.i14.i = call i32 @llvm.abs.i32(i32 %sub7.i, i1 true)
  %cmp9.i = icmp slt i32 %sub.i14.i, %mvlimit
  %or13.i.not = and i1 %cmp.i690, %cmp9.i
  br i1 %or13.i.not, label %lor.rhs, label %if.end214

lor.rhs:                                          ; preds = %if.then149
  %arrayidx156 = getelementptr inbounds i8, ptr %arrayidx119, i64 20
  %arrayidx158 = getelementptr inbounds i8, ptr %arrayidx124, i64 20
  %arrayidx156.val = load i16, ptr %arrayidx156, align 2
  %97 = getelementptr i8, ptr %arrayidx119, i64 22
  %arrayidx156.val680 = load i16, ptr %97, align 2
  %arrayidx158.val = load i16, ptr %arrayidx158, align 2
  %98 = getelementptr i8, ptr %arrayidx124, i64 22
  %arrayidx158.val681 = load i16, ptr %98, align 2
  %conv.i691 = sext i16 %arrayidx156.val to i32
  %conv2.i692 = sext i16 %arrayidx158.val to i32
  %sub.i693 = sub nsw i32 %conv.i691, %conv2.i692
  %sub.i.i694 = call i32 @llvm.abs.i32(i32 %sub.i693, i1 true)
  %cmp.i695 = icmp ugt i32 %sub.i.i694, 3
  %conv4.i696 = sext i16 %arrayidx156.val680 to i32
  %conv6.i697 = sext i16 %arrayidx158.val681 to i32
  %sub7.i698 = sub nsw i32 %conv4.i696, %conv6.i697
  %sub.i14.i699 = call i32 @llvm.abs.i32(i32 %sub7.i698, i1 true)
  %cmp9.i700 = icmp uge i32 %sub.i14.i699, %mvlimit
  %or13.i701 = or i1 %cmp.i695, %cmp9.i700
  br label %if.end214

if.else163:                                       ; preds = %if.then146
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx124, i64 20
  %arrayidx167.val = load i16, ptr %arrayidx167, align 2
  %99 = getelementptr i8, ptr %arrayidx124, i64 22
  %arrayidx167.val679 = load i16, ptr %99, align 2
  %conv2.i704 = sext i16 %arrayidx167.val to i32
  %sub.i705 = sub nsw i32 %conv.i, %conv2.i704
  %sub.i.i706 = call i32 @llvm.abs.i32(i32 %sub.i705, i1 true)
  %cmp.i707 = icmp ult i32 %sub.i.i706, 4
  %conv6.i709 = sext i16 %arrayidx167.val679 to i32
  %sub7.i710 = sub nsw i32 %conv4.i, %conv6.i709
  %sub.i14.i711 = call i32 @llvm.abs.i32(i32 %sub7.i710, i1 true)
  %cmp9.i712 = icmp slt i32 %sub.i14.i711, %mvlimit
  %or13.i713.not = and i1 %cmp.i707, %cmp9.i712
  br i1 %or13.i713.not, label %lor.rhs170, label %if.end214

lor.rhs170:                                       ; preds = %if.else163
  %mv166 = getelementptr inbounds i8, ptr %arrayidx124, i64 16
  %arrayidx172 = getelementptr inbounds i8, ptr %arrayidx119, i64 20
  %arrayidx172.val = load i16, ptr %arrayidx172, align 2
  %100 = getelementptr i8, ptr %arrayidx119, i64 22
  %arrayidx172.val676 = load i16, ptr %100, align 2
  %mv166.val = load i16, ptr %mv166, align 2
  %101 = getelementptr i8, ptr %arrayidx124, i64 18
  %mv166.val677 = load i16, ptr %101, align 2
  %conv.i715 = sext i16 %arrayidx172.val to i32
  %conv2.i716 = sext i16 %mv166.val to i32
  %sub.i717 = sub nsw i32 %conv.i715, %conv2.i716
  %sub.i.i718 = call i32 @llvm.abs.i32(i32 %sub.i717, i1 true)
  %cmp.i719 = icmp ugt i32 %sub.i.i718, 3
  %conv4.i720 = sext i16 %arrayidx172.val676 to i32
  %conv6.i721 = sext i16 %mv166.val677 to i32
  %sub7.i722 = sub nsw i32 %conv4.i720, %conv6.i721
  %sub.i14.i723 = call i32 @llvm.abs.i32(i32 %sub7.i722, i1 true)
  %cmp9.i724 = icmp uge i32 %sub.i14.i723, %mvlimit
  %or13.i725 = or i1 %cmp.i719, %cmp9.i724
  br label %if.end214

if.else181:                                       ; preds = %if.then143
  %mv184 = getelementptr inbounds i8, ptr %arrayidx124, i64 16
  %mv182.val672 = load i16, ptr %mv182, align 2
  %102 = getelementptr i8, ptr %arrayidx119, i64 18
  %mv182.val673 = load i16, ptr %102, align 2
  %mv184.val674 = load i16, ptr %mv184, align 2
  %103 = getelementptr i8, ptr %arrayidx124, i64 18
  %mv184.val675 = load i16, ptr %103, align 2
  %conv.i727 = sext i16 %mv182.val672 to i32
  %conv2.i728 = sext i16 %mv184.val674 to i32
  %sub.i729 = sub nsw i32 %conv.i727, %conv2.i728
  %sub.i.i730 = call i32 @llvm.abs.i32(i32 %sub.i729, i1 true)
  %cmp.i731 = icmp ult i32 %sub.i.i730, 4
  %conv4.i732 = sext i16 %mv182.val673 to i32
  %conv6.i733 = sext i16 %mv184.val675 to i32
  %sub7.i734 = sub nsw i32 %conv4.i732, %conv6.i733
  %sub.i14.i735 = call i32 @llvm.abs.i32(i32 %sub7.i734, i1 true)
  %cmp9.i736 = icmp slt i32 %sub.i14.i735, %mvlimit
  %or13.i737.not = and i1 %cmp.i731, %cmp9.i736
  br i1 %or13.i737.not, label %lor.lhs.false188, label %if.else181.land.rhs_crit_edge

if.else181.land.rhs_crit_edge:                    ; preds = %if.else181
  %arrayidx198.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx124, i64 20
  %arrayidx198.val.pre = load i16, ptr %arrayidx198.phi.trans.insert, align 2
  %.phi.trans.insert902 = getelementptr i8, ptr %arrayidx124, i64 22
  %arrayidx198.val669.pre = load i16, ptr %.phi.trans.insert902, align 2
  %.pre904 = sext i16 %arrayidx198.val.pre to i32
  %.pre905 = sext i16 %arrayidx198.val669.pre to i32
  br label %land.rhs

lor.lhs.false188:                                 ; preds = %if.else181
  %arrayidx190 = getelementptr inbounds i8, ptr %arrayidx119, i64 20
  %arrayidx192 = getelementptr inbounds i8, ptr %arrayidx124, i64 20
  %arrayidx190.val = load i16, ptr %arrayidx190, align 2
  %104 = getelementptr i8, ptr %arrayidx119, i64 22
  %arrayidx190.val670 = load i16, ptr %104, align 2
  %arrayidx192.val = load i16, ptr %arrayidx192, align 2
  %105 = getelementptr i8, ptr %arrayidx124, i64 22
  %arrayidx192.val671 = load i16, ptr %105, align 2
  %conv.i739 = sext i16 %arrayidx190.val to i32
  %conv2.i740 = sext i16 %arrayidx192.val to i32
  %sub.i741 = sub nsw i32 %conv.i739, %conv2.i740
  %sub.i.i742 = call i32 @llvm.abs.i32(i32 %sub.i741, i1 true)
  %cmp.i743 = icmp ult i32 %sub.i.i742, 4
  %conv4.i744 = sext i16 %arrayidx190.val670 to i32
  %conv6.i745 = sext i16 %arrayidx192.val671 to i32
  %sub7.i746 = sub nsw i32 %conv4.i744, %conv6.i745
  %sub.i14.i747 = call i32 @llvm.abs.i32(i32 %sub7.i746, i1 true)
  %cmp9.i748 = icmp ult i32 %sub.i14.i747, %mvlimit
  %or13.i749.not = and i1 %cmp.i743, %cmp9.i748
  br i1 %or13.i749.not, label %if.end214, label %land.rhs

land.rhs:                                         ; preds = %if.else181.land.rhs_crit_edge, %lor.lhs.false188
  %conv6.i757.pre-phi = phi i32 [ %.pre905, %if.else181.land.rhs_crit_edge ], [ %conv6.i745, %lor.lhs.false188 ]
  %conv2.i752.pre-phi = phi i32 [ %.pre904, %if.else181.land.rhs_crit_edge ], [ %conv2.i740, %lor.lhs.false188 ]
  %sub.i753 = sub nsw i32 %conv.i727, %conv2.i752.pre-phi
  %sub.i.i754 = call i32 @llvm.abs.i32(i32 %sub.i753, i1 true)
  %cmp.i755 = icmp ult i32 %sub.i.i754, 4
  %sub7.i758 = sub nsw i32 %conv4.i732, %conv6.i757.pre-phi
  %sub.i14.i759 = call i32 @llvm.abs.i32(i32 %sub7.i758, i1 true)
  %cmp9.i760 = icmp slt i32 %sub.i14.i759, %mvlimit
  %or13.i761.not = and i1 %cmp.i755, %cmp9.i760
  br i1 %or13.i761.not, label %lor.rhs201, label %if.end214

lor.rhs201:                                       ; preds = %land.rhs
  %arrayidx203 = getelementptr inbounds i8, ptr %arrayidx119, i64 20
  %arrayidx203.val = load i16, ptr %arrayidx203, align 2
  %106 = getelementptr i8, ptr %arrayidx119, i64 22
  %arrayidx203.val666 = load i16, ptr %106, align 2
  %conv.i763 = sext i16 %arrayidx203.val to i32
  %sub.i765 = sub nsw i32 %conv.i763, %conv2.i728
  %sub.i.i766 = call i32 @llvm.abs.i32(i32 %sub.i765, i1 true)
  %cmp.i767 = icmp ugt i32 %sub.i.i766, 3
  %conv4.i768 = sext i16 %arrayidx203.val666 to i32
  %sub7.i770 = sub nsw i32 %conv4.i768, %conv6.i733
  %sub.i14.i771 = call i32 @llvm.abs.i32(i32 %sub7.i770, i1 true)
  %cmp9.i772 = icmp uge i32 %sub.i14.i771, %mvlimit
  %or13.i773 = or i1 %cmp.i767, %cmp9.i772
  br label %if.end214

if.end214:                                        ; preds = %lor.lhs.false137, %lor.lhs.false188, %lor.rhs201, %land.rhs, %if.else163, %lor.rhs170, %if.then149, %lor.rhs
  %StrValue.0.shrunk = phi i1 [ true, %if.then149 ], [ %or13.i701, %lor.rhs ], [ true, %if.else163 ], [ %or13.i725, %lor.rhs170 ], [ false, %lor.lhs.false188 ], [ true, %land.rhs ], [ %or13.i773, %lor.rhs201 ], [ true, %lor.lhs.false137 ]
  %StrValue.0 = zext i1 %StrValue.0.shrunk to i32
  br label %if.end216

if.end216:                                        ; preds = %land.lhs.true92, %i64_power2.exit, %i64_power2.exit689, %if.end214
  %StrValue.1 = phi i32 [ %StrValue.0, %if.end214 ], [ 2, %i64_power2.exit689 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true92 ]
  %mul = mul nuw nsw i32 %StrValue.1, 16843009
  %idx.ext = sext i32 %conv60890 to i64
  %add.ptr = getelementptr inbounds i8, ptr %Strength, i64 %idx.ext
  store i32 %mul, ptr %add.ptr, align 4
  %add220 = add i16 %79, 4
  store i16 %add220, ptr %y69, align 2
  %107 = load i16, ptr %pos_y, align 2
  %add224 = add i16 %107, 4
  store i16 %add224, ptr %pos_y, align 2
  %add228 = add nsw i32 %conv60890, 4
  %sext641 = shl i32 %add228, 16
  %conv60 = ashr exact i32 %sext641, 16
  %cmp61 = icmp slt i32 %conv60, 16
  br i1 %cmp61, label %for.body63, label %if.end482

if.else232:                                       ; preds = %land.lhs.true, %if.else
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
  br label %for.body237

for.body237:                                      ; preds = %if.else232, %for.inc478
  %indvars.iv = phi i64 [ 0, %if.else232 ], [ %indvars.iv.next, %for.inc478 ]
  %109 = trunc nuw nsw i64 %indvars.iv to i32
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %sub, i32 noundef %109, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %and244 = and i32 %109, 12
  %add246 = add nuw nsw i32 %and244, %shr245
  %110 = load i16, ptr %y248, align 2
  %111 = and i16 %110, -4
  %112 = load i16, ptr %x251, align 4
  %113 = ashr i16 %112, 2
  %add254 = add i16 %113, %111
  %114 = load ptr, ptr %mb_data29, align 8
  %115 = load i32, ptr %mb_addr30, align 4
  %idxprom258 = sext i32 %115 to i64
  %arrayidx259 = getelementptr inbounds %struct.macroblock, ptr %114, i64 %idxprom258
  %116 = load i32, ptr %mb_field33, align 8
  %mb_field261 = getelementptr inbounds i8, ptr %arrayidx259, i64 384
  %117 = load i32, ptr %mb_field261, align 8
  %cmp262 = icmp ne i32 %116, %117
  %conv264 = zext i1 %cmp262 to i8
  store i8 %conv264, ptr %mixedModeEdgeFlag265, align 8
  %arrayidx298 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv
  store i8 %108, ptr %arrayidx298, align 1
  %118 = load i32, ptr %is_intra_block299, align 8
  %cmp300 = icmp eq i32 %118, 0
  br i1 %cmp300, label %land.lhs.true302, label %for.inc478

land.lhs.true302:                                 ; preds = %for.body237
  %is_intra_block303 = getelementptr inbounds i8, ptr %arrayidx259, i64 96
  %119 = load i32, ptr %is_intra_block303, align 8
  %cmp304 = icmp eq i32 %119, 0
  br i1 %cmp304, label %if.then306, label %for.inc478

if.then306:                                       ; preds = %land.lhs.true302
  %120 = load i64, ptr %cbp_blk307, align 8
  %sext = shl i32 %add246, 16
  %conv309 = ashr exact i32 %sext, 16
  %cmp.i775 = icmp sgt i32 %conv309, 63
  br i1 %cmp.i775, label %i64_power2.exit780, label %cond.false.i776

cond.false.i776:                                  ; preds = %if.then306
  %idxprom.i777 = sext i32 %conv309 to i64
  %arrayidx.i778 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i777
  %121 = load i64, ptr %arrayidx.i778, align 8
  br label %i64_power2.exit780

i64_power2.exit780:                               ; preds = %if.then306, %cond.false.i776
  %cond.i779 = phi i64 [ %121, %cond.false.i776 ], [ 0, %if.then306 ]
  %and311 = and i64 %cond.i779, %120
  %cmp312.not = icmp eq i64 %and311, 0
  br i1 %cmp312.not, label %lor.lhs.false314, label %for.inc478.sink.split

lor.lhs.false314:                                 ; preds = %i64_power2.exit780
  %cbp_blk315 = getelementptr inbounds i8, ptr %arrayidx259, i64 288
  %122 = load i64, ptr %cbp_blk315, align 8
  %cmp.i781 = icmp sgt i16 %add254, 63
  br i1 %cmp.i781, label %i64_power2.exit786, label %cond.false.i782

cond.false.i782:                                  ; preds = %lor.lhs.false314
  %idxprom.i783 = sext i16 %add254 to i64
  %arrayidx.i784 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i783
  %123 = load i64, ptr %arrayidx.i784, align 8
  br label %i64_power2.exit786

i64_power2.exit786:                               ; preds = %lor.lhs.false314, %cond.false.i782
  %cond.i785 = phi i64 [ %123, %cond.false.i782 ], [ 0, %lor.lhs.false314 ]
  %and319 = and i64 %cond.i785, %122
  %cmp320.not = icmp eq i64 %and319, 0
  br i1 %cmp320.not, label %if.else325, label %for.inc478.sink.split

if.else325:                                       ; preds = %i64_power2.exit786
  %124 = load i8, ptr %mixedModeEdgeFlag265, align 8
  %tobool327.not = icmp eq i8 %124, 0
  br i1 %tobool327.not, label %if.else331, label %for.inc478.sink.split

if.else331:                                       ; preds = %if.else325
  %125 = load i32, ptr %mbAddrX332, align 8
  call void @get_mb_block_pos_mbaff(i32 noundef %125, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7
  %126 = load i16, ptr %mb_y, align 2
  %conv334 = sext i16 %126 to i32
  %shl335 = shl nsw i32 %conv334, 2
  %shr337 = ashr i32 %sext, 18
  %add338 = add nsw i32 %shl335, %shr337
  %127 = load i16, ptr %mb_x, align 2
  %conv340 = sext i16 %127 to i32
  %shl341 = shl nsw i32 %conv340, 2
  %add344 = or disjoint i32 %shl341, %and343
  %128 = load i16, ptr %pos_y346, align 2
  %129 = ashr i16 %128, 2
  %130 = load i16, ptr %pos_x350, align 4
  %131 = ashr i16 %130, 2
  %132 = load ptr, ptr %mv_info354, align 8
  %idxprom355 = sext i32 %add338 to i64
  %arrayidx356 = getelementptr inbounds ptr, ptr %132, i64 %idxprom355
  %133 = load ptr, ptr %arrayidx356, align 8
  %idxprom357 = sext i32 %add344 to i64
  %arrayidx358 = getelementptr inbounds %struct.pic_motion_params, ptr %133, i64 %idxprom357
  %idxprom361 = sext i16 %129 to i64
  %arrayidx362 = getelementptr inbounds ptr, ptr %132, i64 %idxprom361
  %134 = load ptr, ptr %arrayidx362, align 8
  %idxprom363 = sext i16 %131 to i64
  %arrayidx364 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %idxprom363
  %135 = load ptr, ptr %arrayidx358, align 8
  %136 = load ptr, ptr %arrayidx364, align 8
  %arrayidx373 = getelementptr inbounds i8, ptr %arrayidx358, i64 8
  %137 = load ptr, ptr %arrayidx373, align 8
  %arrayidx376 = getelementptr inbounds i8, ptr %arrayidx364, i64 8
  %138 = load ptr, ptr %arrayidx376, align 8
  %cmp377 = icmp eq ptr %135, %136
  %cmp380 = icmp eq ptr %137, %138
  %or.cond644 = select i1 %cmp377, i1 %cmp380, i1 false
  br i1 %or.cond644, label %if.then388, label %lor.lhs.false382

lor.lhs.false382:                                 ; preds = %if.else331
  %cmp383 = icmp eq ptr %135, %138
  %cmp386 = icmp eq ptr %137, %136
  %or.cond645 = select i1 %cmp383, i1 %cmp386, i1 false
  br i1 %or.cond645, label %if.then388, label %for.inc478.sink.split

if.then388:                                       ; preds = %lor.lhs.false382, %if.else331
  store i8 0, ptr %arrayidx298, align 1
  %cmp391.not = icmp eq ptr %135, %137
  %mv436 = getelementptr inbounds i8, ptr %arrayidx358, i64 16
  br i1 %cmp391.not, label %if.else435, label %if.then393

if.then393:                                       ; preds = %if.then388
  %mv397.val = load i16, ptr %mv436, align 2
  %139 = getelementptr i8, ptr %arrayidx358, i64 18
  %mv397.val664 = load i16, ptr %139, align 2
  %conv.i787 = sext i16 %mv397.val to i32
  %conv4.i792 = sext i16 %mv397.val664 to i32
  br i1 %cmp377, label %if.then396, label %if.else415

if.then396:                                       ; preds = %if.then393
  %mv399 = getelementptr inbounds i8, ptr %arrayidx364, i64 16
  %mv399.val = load i16, ptr %mv399, align 2
  %140 = getelementptr i8, ptr %arrayidx364, i64 18
  %mv399.val665 = load i16, ptr %140, align 2
  %conv2.i788 = sext i16 %mv399.val to i32
  %sub.i789 = sub nsw i32 %conv.i787, %conv2.i788
  %sub.i.i790 = call i32 @llvm.abs.i32(i32 %sub.i789, i1 true)
  %cmp.i791 = icmp ult i32 %sub.i.i790, 4
  %conv6.i793 = sext i16 %mv399.val665 to i32
  %sub7.i794 = sub nsw i32 %conv4.i792, %conv6.i793
  %sub.i14.i795 = call i32 @llvm.abs.i32(i32 %sub7.i794, i1 true)
  %cmp9.i796 = icmp slt i32 %sub.i14.i795, %mvlimit
  %or13.i797.not = and i1 %cmp.i791, %cmp9.i796
  br i1 %or13.i797.not, label %lor.rhs403, label %lor.end410

lor.rhs403:                                       ; preds = %if.then396
  %arrayidx405 = getelementptr inbounds i8, ptr %arrayidx358, i64 20
  %arrayidx407 = getelementptr inbounds i8, ptr %arrayidx364, i64 20
  %arrayidx405.val = load i16, ptr %arrayidx405, align 2
  %141 = getelementptr i8, ptr %arrayidx358, i64 22
  %arrayidx405.val662 = load i16, ptr %141, align 2
  %arrayidx407.val = load i16, ptr %arrayidx407, align 2
  %142 = getelementptr i8, ptr %arrayidx364, i64 22
  %arrayidx407.val663 = load i16, ptr %142, align 2
  %conv.i799 = sext i16 %arrayidx405.val to i32
  %conv2.i800 = sext i16 %arrayidx407.val to i32
  %sub.i801 = sub nsw i32 %conv.i799, %conv2.i800
  %sub.i.i802 = call i32 @llvm.abs.i32(i32 %sub.i801, i1 true)
  %cmp.i803 = icmp ugt i32 %sub.i.i802, 3
  %conv4.i804 = sext i16 %arrayidx405.val662 to i32
  %conv6.i805 = sext i16 %arrayidx407.val663 to i32
  %sub7.i806 = sub nsw i32 %conv4.i804, %conv6.i805
  %sub.i14.i807 = call i32 @llvm.abs.i32(i32 %sub7.i806, i1 true)
  %cmp9.i808 = icmp uge i32 %sub.i14.i807, %mvlimit
  %or13.i809 = or i1 %cmp.i803, %cmp9.i808
  br label %lor.end410

lor.end410:                                       ; preds = %lor.rhs403, %if.then396
  %143 = phi i1 [ true, %if.then396 ], [ %or13.i809, %lor.rhs403 ]
  %conv412 = zext i1 %143 to i8
  br label %for.inc478.sink.split

if.else415:                                       ; preds = %if.then393
  %arrayidx419 = getelementptr inbounds i8, ptr %arrayidx364, i64 20
  %arrayidx419.val = load i16, ptr %arrayidx419, align 2
  %144 = getelementptr i8, ptr %arrayidx364, i64 22
  %arrayidx419.val661 = load i16, ptr %144, align 2
  %conv2.i812 = sext i16 %arrayidx419.val to i32
  %sub.i813 = sub nsw i32 %conv.i787, %conv2.i812
  %sub.i.i814 = call i32 @llvm.abs.i32(i32 %sub.i813, i1 true)
  %cmp.i815 = icmp ult i32 %sub.i.i814, 4
  %conv6.i817 = sext i16 %arrayidx419.val661 to i32
  %sub7.i818 = sub nsw i32 %conv4.i792, %conv6.i817
  %sub.i14.i819 = call i32 @llvm.abs.i32(i32 %sub7.i818, i1 true)
  %cmp9.i820 = icmp slt i32 %sub.i14.i819, %mvlimit
  %or13.i821.not = and i1 %cmp.i815, %cmp9.i820
  br i1 %or13.i821.not, label %lor.rhs422, label %lor.end429

lor.rhs422:                                       ; preds = %if.else415
  %mv418 = getelementptr inbounds i8, ptr %arrayidx364, i64 16
  %arrayidx424 = getelementptr inbounds i8, ptr %arrayidx358, i64 20
  %arrayidx424.val = load i16, ptr %arrayidx424, align 2
  %145 = getelementptr i8, ptr %arrayidx358, i64 22
  %arrayidx424.val658 = load i16, ptr %145, align 2
  %mv418.val = load i16, ptr %mv418, align 2
  %146 = getelementptr i8, ptr %arrayidx364, i64 18
  %mv418.val659 = load i16, ptr %146, align 2
  %conv.i823 = sext i16 %arrayidx424.val to i32
  %conv2.i824 = sext i16 %mv418.val to i32
  %sub.i825 = sub nsw i32 %conv.i823, %conv2.i824
  %sub.i.i826 = call i32 @llvm.abs.i32(i32 %sub.i825, i1 true)
  %cmp.i827 = icmp ugt i32 %sub.i.i826, 3
  %conv4.i828 = sext i16 %arrayidx424.val658 to i32
  %conv6.i829 = sext i16 %mv418.val659 to i32
  %sub7.i830 = sub nsw i32 %conv4.i828, %conv6.i829
  %sub.i14.i831 = call i32 @llvm.abs.i32(i32 %sub7.i830, i1 true)
  %cmp9.i832 = icmp uge i32 %sub.i14.i831, %mvlimit
  %or13.i833 = or i1 %cmp.i827, %cmp9.i832
  br label %lor.end429

lor.end429:                                       ; preds = %lor.rhs422, %if.else415
  %147 = phi i1 [ true, %if.else415 ], [ %or13.i833, %lor.rhs422 ]
  %conv431 = zext i1 %147 to i8
  br label %for.inc478.sink.split

if.else435:                                       ; preds = %if.then388
  %mv438 = getelementptr inbounds i8, ptr %arrayidx364, i64 16
  %mv436.val654 = load i16, ptr %mv436, align 2
  %148 = getelementptr i8, ptr %arrayidx358, i64 18
  %mv436.val655 = load i16, ptr %148, align 2
  %mv438.val656 = load i16, ptr %mv438, align 2
  %149 = getelementptr i8, ptr %arrayidx364, i64 18
  %mv438.val657 = load i16, ptr %149, align 2
  %conv.i835 = sext i16 %mv436.val654 to i32
  %conv2.i836 = sext i16 %mv438.val656 to i32
  %sub.i837 = sub nsw i32 %conv.i835, %conv2.i836
  %sub.i.i838 = call i32 @llvm.abs.i32(i32 %sub.i837, i1 true)
  %cmp.i839 = icmp ult i32 %sub.i.i838, 4
  %conv4.i840 = sext i16 %mv436.val655 to i32
  %conv6.i841 = sext i16 %mv438.val657 to i32
  %sub7.i842 = sub nsw i32 %conv4.i840, %conv6.i841
  %sub.i14.i843 = call i32 @llvm.abs.i32(i32 %sub7.i842, i1 true)
  %cmp9.i844 = icmp slt i32 %sub.i14.i843, %mvlimit
  %or13.i845.not = and i1 %cmp.i839, %cmp9.i844
  br i1 %or13.i845.not, label %lor.lhs.false442, label %if.else435.land.rhs449_crit_edge

if.else435.land.rhs449_crit_edge:                 ; preds = %if.else435
  %arrayidx453.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx364, i64 20
  %arrayidx453.val.pre = load i16, ptr %arrayidx453.phi.trans.insert, align 2
  %.phi.trans.insert = getelementptr i8, ptr %arrayidx364, i64 22
  %arrayidx453.val651.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre906 = sext i16 %arrayidx453.val.pre to i32
  %.pre907 = sext i16 %arrayidx453.val651.pre to i32
  br label %land.rhs449

lor.lhs.false442:                                 ; preds = %if.else435
  %arrayidx444 = getelementptr inbounds i8, ptr %arrayidx358, i64 20
  %arrayidx446 = getelementptr inbounds i8, ptr %arrayidx364, i64 20
  %arrayidx444.val = load i16, ptr %arrayidx444, align 2
  %150 = getelementptr i8, ptr %arrayidx358, i64 22
  %arrayidx444.val652 = load i16, ptr %150, align 2
  %arrayidx446.val = load i16, ptr %arrayidx446, align 2
  %151 = getelementptr i8, ptr %arrayidx364, i64 22
  %arrayidx446.val653 = load i16, ptr %151, align 2
  %conv.i847 = sext i16 %arrayidx444.val to i32
  %conv2.i848 = sext i16 %arrayidx446.val to i32
  %sub.i849 = sub nsw i32 %conv.i847, %conv2.i848
  %sub.i.i850 = call i32 @llvm.abs.i32(i32 %sub.i849, i1 true)
  %cmp.i851 = icmp ult i32 %sub.i.i850, 4
  %conv4.i852 = sext i16 %arrayidx444.val652 to i32
  %conv6.i853 = sext i16 %arrayidx446.val653 to i32
  %sub7.i854 = sub nsw i32 %conv4.i852, %conv6.i853
  %sub.i14.i855 = call i32 @llvm.abs.i32(i32 %sub7.i854, i1 true)
  %cmp9.i856 = icmp ult i32 %sub.i14.i855, %mvlimit
  %or13.i857.not = and i1 %cmp.i851, %cmp9.i856
  br i1 %or13.i857.not, label %land.end465, label %land.rhs449

land.rhs449:                                      ; preds = %if.else435.land.rhs449_crit_edge, %lor.lhs.false442
  %conv6.i865.pre-phi = phi i32 [ %.pre907, %if.else435.land.rhs449_crit_edge ], [ %conv6.i853, %lor.lhs.false442 ]
  %conv2.i860.pre-phi = phi i32 [ %.pre906, %if.else435.land.rhs449_crit_edge ], [ %conv2.i848, %lor.lhs.false442 ]
  %sub.i861 = sub nsw i32 %conv.i835, %conv2.i860.pre-phi
  %sub.i.i862 = call i32 @llvm.abs.i32(i32 %sub.i861, i1 true)
  %cmp.i863 = icmp ult i32 %sub.i.i862, 4
  %sub7.i866 = sub nsw i32 %conv4.i840, %conv6.i865.pre-phi
  %sub.i14.i867 = call i32 @llvm.abs.i32(i32 %sub7.i866, i1 true)
  %cmp9.i868 = icmp slt i32 %sub.i14.i867, %mvlimit
  %or13.i869.not = and i1 %cmp.i863, %cmp9.i868
  br i1 %or13.i869.not, label %lor.rhs456, label %land.end465

lor.rhs456:                                       ; preds = %land.rhs449
  %arrayidx458 = getelementptr inbounds i8, ptr %arrayidx358, i64 20
  %arrayidx458.val = load i16, ptr %arrayidx458, align 2
  %152 = getelementptr i8, ptr %arrayidx358, i64 22
  %arrayidx458.val648 = load i16, ptr %152, align 2
  %conv.i871 = sext i16 %arrayidx458.val to i32
  %sub.i873 = sub nsw i32 %conv.i871, %conv2.i836
  %sub.i.i874 = call i32 @llvm.abs.i32(i32 %sub.i873, i1 true)
  %cmp.i875 = icmp ugt i32 %sub.i.i874, 3
  %conv4.i876 = sext i16 %arrayidx458.val648 to i32
  %sub7.i878 = sub nsw i32 %conv4.i876, %conv6.i841
  %sub.i14.i879 = call i32 @llvm.abs.i32(i32 %sub7.i878, i1 true)
  %cmp9.i880 = icmp uge i32 %sub.i14.i879, %mvlimit
  %or13.i881 = or i1 %cmp.i875, %cmp9.i880
  br label %land.end465

land.end465:                                      ; preds = %land.rhs449, %lor.rhs456, %lor.lhs.false442
  %153 = phi i1 [ false, %lor.lhs.false442 ], [ true, %land.rhs449 ], [ %or13.i881, %lor.rhs456 ]
  %conv467 = zext i1 %153 to i8
  br label %for.inc478.sink.split

for.inc478.sink.split:                            ; preds = %lor.lhs.false382, %if.else325, %i64_power2.exit780, %i64_power2.exit786, %land.end465, %lor.end429, %lor.end410
  %.sink = phi i8 [ %conv412, %lor.end410 ], [ %conv431, %lor.end429 ], [ %conv467, %land.end465 ], [ 2, %i64_power2.exit786 ], [ 2, %i64_power2.exit780 ], [ 1, %if.else325 ], [ 1, %lor.lhs.false382 ]
  store i8 %.sink, ptr %arrayidx298, align 1
  br label %for.inc478

for.inc478:                                       ; preds = %for.inc478.sink.split, %for.body237, %land.lhs.true302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %if.end482, label %for.body237

if.end482:                                        ; preds = %for.inc478, %if.end216, %for.cond.preheader, %if.then52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_y) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_x) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetStrengthHorMBAff(ptr nocapture noundef writeonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 {
entry:
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %pixP = alloca %struct.pix_pos, align 4
  %cmp = icmp slt i32 %edge, 16
  %cond = select i1 %cmp, i32 %edge, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_x) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_y) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %slice_type = getelementptr inbounds i8, ptr %p, i64 248
  %1 = load i32, ptr %slice_type, align 8
  %.off = add i32 %1, -3
  %switch = icmp ult i32 %.off, 2
  %sub = add nsw i32 %cond, -1
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  br i1 %switch, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %mb_field = getelementptr inbounds i8, ptr %MbQ, i64 384
  %mixedModeEdgeFlag = getelementptr inbounds i8, ptr %MbQ, i64 472
  %cmp20 = icmp eq i32 %edge, 0
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %2 = load ptr, ptr %mb_data, align 8
  %3 = load i32, ptr %mb_addr, align 4
  %idxprom.us = sext i32 %3 to i64
  %4 = load i32, ptr %mb_field, align 8
  %.fr.us = freeze i32 %4
  %mb_field16.us = getelementptr inbounds %struct.macroblock, ptr %2, i64 %idxprom.us, i32 45
  %5 = load i32, ptr %mb_field16.us, align 8
  %cmp17.us = icmp ne i32 %.fr.us, %5
  %conv19.us = zext i1 %cmp17.us to i8
  store i8 %conv19.us, ptr %mixedModeEdgeFlag, align 8
  br i1 %cmp20, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  store i32 50529027, ptr %Strength, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 4, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %6 = load ptr, ptr %mb_data, align 8
  %7 = load i32, ptr %mb_addr, align 4
  %idxprom.1 = sext i32 %7 to i64
  %8 = load i32, ptr %mb_field, align 8
  %.fr.1 = freeze i32 %8
  %mb_field16.1 = getelementptr inbounds %struct.macroblock, ptr %6, i64 %idxprom.1, i32 45
  %9 = load i32, ptr %mb_field16.1, align 8
  %cmp17.1 = icmp ne i32 %.fr.1, %9
  %conv19.1 = zext i1 %cmp17.1 to i8
  store i8 %conv19.1, ptr %mixedModeEdgeFlag, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4
  store i32 50529027, ptr %add.ptr.1, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 8, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %10 = load ptr, ptr %mb_data, align 8
  %11 = load i32, ptr %mb_addr, align 4
  %idxprom.2 = sext i32 %11 to i64
  %12 = load i32, ptr %mb_field, align 8
  %.fr.2 = freeze i32 %12
  %mb_field16.2 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom.2, i32 45
  %13 = load i32, ptr %mb_field16.2, align 8
  %cmp17.2 = icmp ne i32 %.fr.2, %13
  %conv19.2 = zext i1 %cmp17.2 to i8
  store i8 %conv19.2, ptr %mixedModeEdgeFlag, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8
  store i32 50529027, ptr %add.ptr.2, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 12, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %14 = load ptr, ptr %mb_data, align 8
  %15 = load i32, ptr %mb_addr, align 4
  %idxprom.3 = sext i32 %15 to i64
  %16 = load i32, ptr %mb_field, align 8
  %.fr.3 = freeze i32 %16
  %mb_field16.3 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %idxprom.3, i32 45
  %17 = load i32, ptr %mb_field16.3, align 8
  %cmp17.3 = icmp ne i32 %.fr.3, %17
  %conv19.3 = zext i1 %cmp17.3 to i8
  store i8 %conv19.3, ptr %mixedModeEdgeFlag, align 8
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12
  store i32 50529027, ptr %add.ptr.3, align 4
  br label %if.end238

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %18 = load i32, ptr %mb_field16.us, align 8
  %19 = or i32 %18, %.fr.us
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 67372036, i32 50529027
  store i32 %21, ptr %Strength, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 4, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %22 = load ptr, ptr %mb_data, align 8
  %23 = load i32, ptr %mb_addr, align 4
  %idxprom.us.1 = sext i32 %23 to i64
  %24 = load i32, ptr %mb_field, align 8
  %.fr.us.1 = freeze i32 %24
  %mb_field16.us.1 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %idxprom.us.1, i32 45
  %25 = load i32, ptr %mb_field16.us.1, align 8
  %cmp17.us.1 = icmp ne i32 %.fr.us.1, %25
  %conv19.us.1 = zext i1 %cmp17.us.1 to i8
  store i8 %conv19.us.1, ptr %mixedModeEdgeFlag, align 8
  %26 = load i32, ptr %mb_field16.us.1, align 8
  %27 = or i32 %26, %.fr.us.1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 67372036, i32 50529027
  %add.ptr.us.1 = getelementptr inbounds i8, ptr %Strength, i64 4
  store i32 %29, ptr %add.ptr.us.1, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 8, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %30 = load ptr, ptr %mb_data, align 8
  %31 = load i32, ptr %mb_addr, align 4
  %idxprom.us.2 = sext i32 %31 to i64
  %32 = load i32, ptr %mb_field, align 8
  %.fr.us.2 = freeze i32 %32
  %mb_field16.us.2 = getelementptr inbounds %struct.macroblock, ptr %30, i64 %idxprom.us.2, i32 45
  %33 = load i32, ptr %mb_field16.us.2, align 8
  %cmp17.us.2 = icmp ne i32 %.fr.us.2, %33
  %conv19.us.2 = zext i1 %cmp17.us.2 to i8
  store i8 %conv19.us.2, ptr %mixedModeEdgeFlag, align 8
  %34 = load i32, ptr %mb_field16.us.2, align 8
  %35 = or i32 %34, %.fr.us.2
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 67372036, i32 50529027
  %add.ptr.us.2 = getelementptr inbounds i8, ptr %Strength, i64 8
  store i32 %37, ptr %add.ptr.us.2, align 4
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 12, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %38 = load ptr, ptr %mb_data, align 8
  %39 = load i32, ptr %mb_addr, align 4
  %idxprom.us.3 = sext i32 %39 to i64
  %40 = load i32, ptr %mb_field, align 8
  %.fr.us.3 = freeze i32 %40
  %mb_field16.us.3 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %idxprom.us.3, i32 45
  %41 = load i32, ptr %mb_field16.us.3, align 8
  %cmp17.us.3 = icmp ne i32 %.fr.us.3, %41
  %conv19.us.3 = zext i1 %cmp17.us.3 to i8
  store i8 %conv19.us.3, ptr %mixedModeEdgeFlag, align 8
  %42 = load i32, ptr %mb_field16.us.3, align 8
  %43 = or i32 %42, %.fr.us.3
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 67372036, i32 50529027
  %add.ptr.us.3 = getelementptr inbounds i8, ptr %Strength, i64 12
  store i32 %45, ptr %add.ptr.us.3, align 4
  br label %if.end238

if.else:                                          ; preds = %entry
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %mb_data36 = getelementptr inbounds i8, ptr %0, i64 848888
  %46 = load ptr, ptr %mb_data36, align 8
  %mb_addr37 = getelementptr inbounds i8, ptr %pixP, i64 4
  %47 = load i32, ptr %mb_addr37, align 4
  %idxprom38 = sext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds %struct.macroblock, ptr %46, i64 %idxprom38
  %mb_field40 = getelementptr inbounds i8, ptr %MbQ, i64 384
  %48 = load i32, ptr %mb_field40, align 8
  %mb_field41 = getelementptr inbounds i8, ptr %arrayidx39, i64 384
  %49 = load i32, ptr %mb_field41, align 8
  %cmp42 = icmp ne i32 %48, %49
  %conv44 = zext i1 %cmp42 to i8
  %mixedModeEdgeFlag45 = getelementptr inbounds i8, ptr %MbQ, i64 472
  store i8 %conv44, ptr %mixedModeEdgeFlag45, align 8
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96
  %50 = load i32, ptr %is_intra_block, align 8
  %cmp46 = icmp eq i32 %50, 1
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.else
  %is_intra_block49 = getelementptr inbounds i8, ptr %arrayidx39, i64 96
  %51 = load i32, ptr %is_intra_block49, align 8
  %cmp50 = icmp eq i32 %51, 1
  br i1 %cmp50, label %if.then52, label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %lor.lhs.false48
  %and78 = and i32 %cond, 65532
  %y82 = getelementptr inbounds i8, ptr %pixP, i64 10
  %x85 = getelementptr inbounds i8, ptr %pixP, i64 8
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
  %cbp_blk96 = getelementptr inbounds i8, ptr %arrayidx39, i64 288
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24
  %pos_y = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixP, i64 12
  %mv_info = getelementptr inbounds i8, ptr %p, i64 152
  br label %for.body72

if.then52:                                        ; preds = %lor.lhs.false48, %if.else
  %cmp53 = icmp eq i32 %edge, 0
  br i1 %cmp53, label %land.rhs55, label %land.end63

land.rhs55:                                       ; preds = %if.then52
  %52 = load i32, ptr %mb_field41, align 8
  %tobool57.not = icmp eq i32 %52, 0
  br i1 %tobool57.not, label %land.rhs58, label %land.end63

land.rhs58:                                       ; preds = %land.rhs55
  %tobool60.not = icmp eq i32 %48, 0
  %53 = select i1 %tobool60.not, i8 4, i8 3
  br label %land.end63

land.end63:                                       ; preds = %land.rhs55, %land.rhs58, %if.then52
  %cond64 = phi i8 [ 3, %if.then52 ], [ 3, %land.rhs55 ], [ %53, %land.rhs58 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond64, i64 16, i1 false)
  br label %if.end238

for.body72:                                       ; preds = %for.cond68.preheader, %if.end227
  %conv69437 = phi i32 [ 0, %for.cond68.preheader ], [ %conv69, %if.end227 ]
  %sext436 = phi i32 [ 0, %for.cond68.preheader ], [ %sext, %if.end227 ]
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef %conv69437, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %shr79 = ashr i32 %sext436, 18
  %add80 = add nsw i32 %shr79, %and78
  %54 = load i16, ptr %y82, align 2
  %55 = load i16, ptr %x85, align 4
  %56 = load i64, ptr %cbp_blk, align 8
  %sext320 = shl i32 %add80, 16
  %conv91 = ashr exact i32 %sext320, 16
  %cmp.i = icmp sgt i32 %conv91, 63
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i

cond.false.i:                                     ; preds = %for.body72
  %idxprom.i = sext i32 %conv91 to i64
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i
  %57 = load i64, ptr %arrayidx.i, align 8
  br label %i64_power2.exit

i64_power2.exit:                                  ; preds = %for.body72, %cond.false.i
  %cond.i = phi i64 [ %57, %cond.false.i ], [ 0, %for.body72 ]
  %and92 = and i64 %cond.i, %56
  %cmp93.not = icmp eq i64 %and92, 0
  br i1 %cmp93.not, label %lor.lhs.false95, label %if.end227

lor.lhs.false95:                                  ; preds = %i64_power2.exit
  %58 = ashr i16 %55, 2
  %59 = and i16 %54, -4
  %add88 = add i16 %58, %59
  %60 = load i64, ptr %cbp_blk96, align 8
  %cmp.i343 = icmp sgt i16 %add88, 63
  br i1 %cmp.i343, label %i64_power2.exit348, label %cond.false.i344

cond.false.i344:                                  ; preds = %lor.lhs.false95
  %idxprom.i345 = sext i16 %add88 to i64
  %arrayidx.i346 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i345
  %61 = load i64, ptr %arrayidx.i346, align 8
  br label %i64_power2.exit348

i64_power2.exit348:                               ; preds = %lor.lhs.false95, %cond.false.i344
  %cond.i347 = phi i64 [ %61, %cond.false.i344 ], [ 0, %lor.lhs.false95 ]
  %and100 = and i64 %cond.i347, %60
  %cmp101.not = icmp eq i64 %and100, 0
  br i1 %cmp101.not, label %if.else104, label %if.end227

if.else104:                                       ; preds = %i64_power2.exit348
  %62 = load i8, ptr %mixedModeEdgeFlag45, align 8
  %tobool106.not = icmp eq i8 %62, 0
  br i1 %tobool106.not, label %if.else108, label %if.end227

if.else108:                                       ; preds = %if.else104
  %63 = load i32, ptr %mbAddrX, align 8
  call void @get_mb_block_pos_mbaff(i32 noundef %63, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #7
  %64 = load i16, ptr %mb_y, align 2
  %conv109 = sext i16 %64 to i32
  %shl = shl nsw i32 %conv109, 2
  %shr111 = ashr i32 %sext320, 18
  %add112 = add nsw i32 %shl, %shr111
  %conv113 = zext i32 %add112 to i64
  %65 = load i16, ptr %mb_x, align 2
  %conv114 = sext i16 %65 to i32
  %shl115 = shl nsw i32 %conv114, 2
  %and117 = and i32 %shr79, 3
  %add118 = or disjoint i32 %shl115, %and117
  %conv119 = zext i32 %add118 to i64
  %66 = load i16, ptr %pos_y, align 2
  %67 = ashr i16 %66, 2
  %68 = load i16, ptr %pos_x, align 4
  %69 = ashr i16 %68, 2
  %70 = load ptr, ptr %mv_info, align 8
  %sext321 = shl i64 %conv113, 48
  %71 = ashr exact i64 %sext321, 45
  %arrayidx127 = getelementptr inbounds i8, ptr %70, i64 %71
  %72 = load ptr, ptr %arrayidx127, align 8
  %sext322 = shl i64 %conv119, 48
  %73 = ashr exact i64 %sext322, 43
  %arrayidx129 = getelementptr inbounds i8, ptr %72, i64 %73
  %idxprom131 = sext i16 %67 to i64
  %arrayidx132 = getelementptr inbounds ptr, ptr %70, i64 %idxprom131
  %74 = load ptr, ptr %arrayidx132, align 8
  %idxprom133 = sext i16 %69 to i64
  %arrayidx134 = getelementptr inbounds %struct.pic_motion_params, ptr %74, i64 %idxprom133
  %75 = load ptr, ptr %arrayidx129, align 8
  %76 = load ptr, ptr %arrayidx134, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx129, i64 8
  %77 = load ptr, ptr %arrayidx139, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %arrayidx134, i64 8
  %78 = load ptr, ptr %arrayidx141, align 8
  %cmp142 = icmp eq ptr %75, %76
  %cmp144 = icmp eq ptr %77, %78
  %or.cond = select i1 %cmp142, i1 %cmp144, i1 false
  br i1 %or.cond, label %if.then152, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %if.else108
  %cmp147 = icmp eq ptr %75, %78
  %cmp150 = icmp eq ptr %77, %76
  %or.cond324 = select i1 %cmp147, i1 %cmp150, i1 false
  br i1 %or.cond324, label %if.then152, label %if.end225

if.then152:                                       ; preds = %lor.lhs.false146, %if.else108
  %cmp153.not = icmp eq ptr %75, %77
  %mv191 = getelementptr inbounds i8, ptr %arrayidx129, i64 16
  br i1 %cmp153.not, label %if.else190, label %if.then155

if.then155:                                       ; preds = %if.then152
  %mv.val = load i16, ptr %mv191, align 2
  %79 = getelementptr i8, ptr %arrayidx129, i64 18
  %mv.val341 = load i16, ptr %79, align 2
  %conv.i = sext i16 %mv.val to i32
  %conv4.i = sext i16 %mv.val341 to i32
  br i1 %cmp142, label %if.then158, label %if.else172

if.then158:                                       ; preds = %if.then155
  %mv160 = getelementptr inbounds i8, ptr %arrayidx134, i64 16
  %mv160.val = load i16, ptr %mv160, align 2
  %80 = getelementptr i8, ptr %arrayidx134, i64 18
  %mv160.val342 = load i16, ptr %80, align 2
  %conv2.i = sext i16 %mv160.val to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %sub.i.i = call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %cmp.i349 = icmp ult i32 %sub.i.i, 4
  %conv6.i = sext i16 %mv160.val342 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %sub.i14.i = call i32 @llvm.abs.i32(i32 %sub7.i, i1 true)
  %cmp9.i = icmp slt i32 %sub.i14.i, %mvlimit
  %or13.i.not = and i1 %cmp.i349, %cmp9.i
  br i1 %or13.i.not, label %lor.rhs, label %if.end225

lor.rhs:                                          ; preds = %if.then158
  %arrayidx165 = getelementptr inbounds i8, ptr %arrayidx129, i64 20
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx134, i64 20
  %arrayidx165.val = load i16, ptr %arrayidx165, align 2
  %81 = getelementptr i8, ptr %arrayidx129, i64 22
  %arrayidx165.val339 = load i16, ptr %81, align 2
  %arrayidx167.val = load i16, ptr %arrayidx167, align 2
  %82 = getelementptr i8, ptr %arrayidx134, i64 22
  %arrayidx167.val340 = load i16, ptr %82, align 2
  %conv.i350 = sext i16 %arrayidx165.val to i32
  %conv2.i351 = sext i16 %arrayidx167.val to i32
  %sub.i352 = sub nsw i32 %conv.i350, %conv2.i351
  %sub.i.i353 = call i32 @llvm.abs.i32(i32 %sub.i352, i1 true)
  %cmp.i354 = icmp ugt i32 %sub.i.i353, 3
  %conv4.i355 = sext i16 %arrayidx165.val339 to i32
  %conv6.i356 = sext i16 %arrayidx167.val340 to i32
  %sub7.i357 = sub nsw i32 %conv4.i355, %conv6.i356
  %sub.i14.i358 = call i32 @llvm.abs.i32(i32 %sub7.i357, i1 true)
  %cmp9.i359 = icmp uge i32 %sub.i14.i358, %mvlimit
  %or13.i360 = or i1 %cmp.i354, %cmp9.i359
  br label %if.end225

if.else172:                                       ; preds = %if.then155
  %arrayidx176 = getelementptr inbounds i8, ptr %arrayidx134, i64 20
  %arrayidx176.val = load i16, ptr %arrayidx176, align 2
  %83 = getelementptr i8, ptr %arrayidx134, i64 22
  %arrayidx176.val338 = load i16, ptr %83, align 2
  %conv2.i363 = sext i16 %arrayidx176.val to i32
  %sub.i364 = sub nsw i32 %conv.i, %conv2.i363
  %sub.i.i365 = call i32 @llvm.abs.i32(i32 %sub.i364, i1 true)
  %cmp.i366 = icmp ult i32 %sub.i.i365, 4
  %conv6.i368 = sext i16 %arrayidx176.val338 to i32
  %sub7.i369 = sub nsw i32 %conv4.i, %conv6.i368
  %sub.i14.i370 = call i32 @llvm.abs.i32(i32 %sub7.i369, i1 true)
  %cmp9.i371 = icmp slt i32 %sub.i14.i370, %mvlimit
  %or13.i372.not = and i1 %cmp.i366, %cmp9.i371
  br i1 %or13.i372.not, label %lor.rhs179, label %if.end225

lor.rhs179:                                       ; preds = %if.else172
  %mv175 = getelementptr inbounds i8, ptr %arrayidx134, i64 16
  %arrayidx181 = getelementptr inbounds i8, ptr %arrayidx129, i64 20
  %arrayidx181.val = load i16, ptr %arrayidx181, align 2
  %84 = getelementptr i8, ptr %arrayidx129, i64 22
  %arrayidx181.val335 = load i16, ptr %84, align 2
  %mv175.val = load i16, ptr %mv175, align 2
  %85 = getelementptr i8, ptr %arrayidx134, i64 18
  %mv175.val336 = load i16, ptr %85, align 2
  %conv.i374 = sext i16 %arrayidx181.val to i32
  %conv2.i375 = sext i16 %mv175.val to i32
  %sub.i376 = sub nsw i32 %conv.i374, %conv2.i375
  %sub.i.i377 = call i32 @llvm.abs.i32(i32 %sub.i376, i1 true)
  %cmp.i378 = icmp ugt i32 %sub.i.i377, 3
  %conv4.i379 = sext i16 %arrayidx181.val335 to i32
  %conv6.i380 = sext i16 %mv175.val336 to i32
  %sub7.i381 = sub nsw i32 %conv4.i379, %conv6.i380
  %sub.i14.i382 = call i32 @llvm.abs.i32(i32 %sub7.i381, i1 true)
  %cmp9.i383 = icmp uge i32 %sub.i14.i382, %mvlimit
  %or13.i384 = or i1 %cmp.i378, %cmp9.i383
  br label %if.end225

if.else190:                                       ; preds = %if.then152
  %mv193 = getelementptr inbounds i8, ptr %arrayidx134, i64 16
  %mv191.val331 = load i16, ptr %mv191, align 2
  %86 = getelementptr i8, ptr %arrayidx129, i64 18
  %mv191.val332 = load i16, ptr %86, align 2
  %mv193.val333 = load i16, ptr %mv193, align 2
  %87 = getelementptr i8, ptr %arrayidx134, i64 18
  %mv193.val334 = load i16, ptr %87, align 2
  %conv.i386 = sext i16 %mv191.val331 to i32
  %conv2.i387 = sext i16 %mv193.val333 to i32
  %sub.i388 = sub nsw i32 %conv.i386, %conv2.i387
  %sub.i.i389 = call i32 @llvm.abs.i32(i32 %sub.i388, i1 true)
  %cmp.i390 = icmp ult i32 %sub.i.i389, 4
  %conv4.i391 = sext i16 %mv191.val332 to i32
  %conv6.i392 = sext i16 %mv193.val334 to i32
  %sub7.i393 = sub nsw i32 %conv4.i391, %conv6.i392
  %sub.i14.i394 = call i32 @llvm.abs.i32(i32 %sub7.i393, i1 true)
  %cmp9.i395 = icmp slt i32 %sub.i14.i394, %mvlimit
  %or13.i396.not = and i1 %cmp.i390, %cmp9.i395
  br i1 %or13.i396.not, label %lor.lhs.false197, label %if.else190.land.rhs204_crit_edge

if.else190.land.rhs204_crit_edge:                 ; preds = %if.else190
  %arrayidx208.phi.trans.insert = getelementptr inbounds i8, ptr %arrayidx134, i64 20
  %arrayidx208.val.pre = load i16, ptr %arrayidx208.phi.trans.insert, align 2
  %.phi.trans.insert = getelementptr i8, ptr %arrayidx134, i64 22
  %arrayidx208.val328.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre = sext i16 %arrayidx208.val.pre to i32
  %.pre443 = sext i16 %arrayidx208.val328.pre to i32
  br label %land.rhs204

lor.lhs.false197:                                 ; preds = %if.else190
  %arrayidx199 = getelementptr inbounds i8, ptr %arrayidx129, i64 20
  %arrayidx201 = getelementptr inbounds i8, ptr %arrayidx134, i64 20
  %arrayidx199.val = load i16, ptr %arrayidx199, align 2
  %88 = getelementptr i8, ptr %arrayidx129, i64 22
  %arrayidx199.val329 = load i16, ptr %88, align 2
  %arrayidx201.val = load i16, ptr %arrayidx201, align 2
  %89 = getelementptr i8, ptr %arrayidx134, i64 22
  %arrayidx201.val330 = load i16, ptr %89, align 2
  %conv.i398 = sext i16 %arrayidx199.val to i32
  %conv2.i399 = sext i16 %arrayidx201.val to i32
  %sub.i400 = sub nsw i32 %conv.i398, %conv2.i399
  %sub.i.i401 = call i32 @llvm.abs.i32(i32 %sub.i400, i1 true)
  %cmp.i402 = icmp ult i32 %sub.i.i401, 4
  %conv4.i403 = sext i16 %arrayidx199.val329 to i32
  %conv6.i404 = sext i16 %arrayidx201.val330 to i32
  %sub7.i405 = sub nsw i32 %conv4.i403, %conv6.i404
  %sub.i14.i406 = call i32 @llvm.abs.i32(i32 %sub7.i405, i1 true)
  %cmp9.i407 = icmp ult i32 %sub.i14.i406, %mvlimit
  %or13.i408.not = and i1 %cmp.i402, %cmp9.i407
  br i1 %or13.i408.not, label %if.end225, label %land.rhs204

land.rhs204:                                      ; preds = %if.else190.land.rhs204_crit_edge, %lor.lhs.false197
  %conv6.i416.pre-phi = phi i32 [ %.pre443, %if.else190.land.rhs204_crit_edge ], [ %conv6.i404, %lor.lhs.false197 ]
  %conv2.i411.pre-phi = phi i32 [ %.pre, %if.else190.land.rhs204_crit_edge ], [ %conv2.i399, %lor.lhs.false197 ]
  %sub.i412 = sub nsw i32 %conv.i386, %conv2.i411.pre-phi
  %sub.i.i413 = call i32 @llvm.abs.i32(i32 %sub.i412, i1 true)
  %cmp.i414 = icmp ult i32 %sub.i.i413, 4
  %sub7.i417 = sub nsw i32 %conv4.i391, %conv6.i416.pre-phi
  %sub.i14.i418 = call i32 @llvm.abs.i32(i32 %sub7.i417, i1 true)
  %cmp9.i419 = icmp slt i32 %sub.i14.i418, %mvlimit
  %or13.i420.not = and i1 %cmp.i414, %cmp9.i419
  br i1 %or13.i420.not, label %lor.rhs211, label %if.end225

lor.rhs211:                                       ; preds = %land.rhs204
  %arrayidx213 = getelementptr inbounds i8, ptr %arrayidx129, i64 20
  %arrayidx213.val = load i16, ptr %arrayidx213, align 2
  %90 = getelementptr i8, ptr %arrayidx129, i64 22
  %arrayidx213.val325 = load i16, ptr %90, align 2
  %conv.i422 = sext i16 %arrayidx213.val to i32
  %sub.i424 = sub nsw i32 %conv.i422, %conv2.i387
  %sub.i.i425 = call i32 @llvm.abs.i32(i32 %sub.i424, i1 true)
  %cmp.i426 = icmp ugt i32 %sub.i.i425, 3
  %conv4.i427 = sext i16 %arrayidx213.val325 to i32
  %sub7.i429 = sub nsw i32 %conv4.i427, %conv6.i392
  %sub.i14.i430 = call i32 @llvm.abs.i32(i32 %sub7.i429, i1 true)
  %cmp9.i431 = icmp uge i32 %sub.i14.i430, %mvlimit
  %or13.i432 = or i1 %cmp.i426, %cmp9.i431
  br label %if.end225

if.end225:                                        ; preds = %lor.lhs.false146, %lor.lhs.false197, %lor.rhs211, %land.rhs204, %if.else172, %lor.rhs179, %if.then158, %lor.rhs
  %StrValue.0.shrunk = phi i1 [ true, %if.then158 ], [ %or13.i360, %lor.rhs ], [ true, %if.else172 ], [ %or13.i384, %lor.rhs179 ], [ false, %lor.lhs.false197 ], [ true, %land.rhs204 ], [ %or13.i432, %lor.rhs211 ], [ true, %lor.lhs.false146 ]
  %StrValue.0 = zext i1 %StrValue.0.shrunk to i32
  br label %if.end227

if.end227:                                        ; preds = %if.else104, %i64_power2.exit, %i64_power2.exit348, %if.end225
  %StrValue.1 = phi i32 [ %StrValue.0, %if.end225 ], [ 2, %i64_power2.exit348 ], [ 2, %i64_power2.exit ], [ 1, %if.else104 ]
  %mul228 = mul nuw nsw i32 %StrValue.1, 16843009
  %idx.ext230 = sext i32 %conv69437 to i64
  %add.ptr231 = getelementptr inbounds i8, ptr %Strength, i64 %idx.ext230
  store i32 %mul228, ptr %add.ptr231, align 4
  %add234 = shl nsw i32 %conv69437, 16
  %sext = add i32 %add234, 262144
  %conv69 = ashr exact i32 %sext, 16
  %cmp70 = icmp slt i32 %conv69, 16
  br i1 %cmp70, label %for.body72, label %if.end238

if.end238:                                        ; preds = %if.end227, %for.body.preheader, %for.body.us.preheader, %land.end63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_y) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_x) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaVerMBAff(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #1 {
entry:
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %tobool.not = icmp eq i32 %pl, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %0 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond10.in.v = phi i64 [ 849048, %cond.true ], [ 849044, %entry ]
  %cond = phi i32 [ %1, %cond.true ], [ 16, %entry ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %2 = load ptr, ptr %p_Vid1, align 8
  %cond10.in = getelementptr inbounds i8, ptr %2, i64 %cond10.in.v
  %cond10 = load i32, ptr %cond10.in, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %2, i64 849072
  %idxprom11 = zext i32 %pl to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom11
  %3 = load i32, ptr %arrayidx12, align 4
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %4 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv = sext i16 %4 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %5 = load i16, ptr %DFBetaOffset, align 4
  %conv13 = sext i16 %5 to i32
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %6 = load i16, ptr %DFDisableIdc, align 8
  %cmp = icmp eq i16 %6, 0
  %cmp16455 = icmp sgt i32 %cond, 0
  %or.cond457 = select i1 %cmp, i1 %cmp16455, i1 false
  br i1 %or.cond457, label %for.body.lr.ph, label %if.end312

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
  %wide.trip.count = zext nneg i32 %cond to i64
  %qp53.sink = select i1 %tobool.not, ptr %qp53, ptr %arrayidx50
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %sub, i32 noundef %7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %8 = load i32, ptr %pixP, align 4
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %for.body
  %arrayidx22 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv
  %9 = load i8, ptr %arrayidx22, align 1
  %cmp24.not = icmp eq i8 %9, 0
  br i1 %cmp24.not, label %for.inc, label %if.then26

if.then26:                                        ; preds = %if.then20
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %edge, i32 noundef %7, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixQ) #7
  %10 = load ptr, ptr %mb_data, align 8
  %11 = load i32, ptr %mb_addr, align 4
  %idxprom30 = sext i32 %11 to i64
  %arrayidx31 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom30
  %12 = load i16, ptr %pos_y, align 2
  %idxprom32 = sext i16 %12 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom32
  %13 = load ptr, ptr %arrayidx33, align 8
  %14 = load i16, ptr %pos_x, align 4
  %idxprom34 = sext i16 %14 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %13, i64 %idxprom34
  %15 = load i16, ptr %pos_y36, align 2
  %idxprom37 = sext i16 %15 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom37
  %16 = load ptr, ptr %arrayidx38, align 8
  %17 = load i16, ptr %pos_x39, align 4
  %idxprom40 = sext i16 %17 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %16, i64 %idxprom40
  %qp = getelementptr inbounds i8, ptr %arrayidx31, i64 68
  %qpc = getelementptr inbounds i8, ptr %arrayidx31, i64 72
  %arrayidx46 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom45
  %qp.sink = select i1 %tobool.not, ptr %qp, ptr %arrayidx46
  %18 = load i32, ptr %qp.sink, align 4
  %19 = load i32, ptr %qp53.sink, align 4
  %add54 = add nsw i32 %19, %18
  %cond58.in = add nsw i32 %add54, 1
  %cond58 = ashr i32 %cond58.in, 1
  %add59 = add nsw i32 %cond58, %conv
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add59, i32 0)
  %20 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add60 = add nsw i32 %cond58, %conv13
  %cond.i.i436 = call noundef i32 @llvm.smax.i32(i32 %add60, i32 0)
  %21 = call i32 @llvm.umin.i32(i32 %cond.i.i436, i32 51)
  %idxprom62 = zext nneg i32 %20 to i64
  %arrayidx63 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom62
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %mul = mul nsw i32 %cond10, %conv64
  %idxprom65 = zext nneg i32 %21 to i64
  %arrayidx66 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom65
  %23 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %23 to i32
  %mul68 = mul nsw i32 %cond10, %conv67
  %arrayidx70 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom62
  %24 = load i16, ptr %arrayidx41, align 2
  %25 = load i16, ptr %arrayidx35, align 2
  %conv74 = zext i16 %25 to i32
  %conv75 = zext i16 %24 to i32
  %sub76 = sub nsw i32 %conv74, %conv75
  %sub.i = call i32 @llvm.abs.i32(i32 %sub76, i1 true)
  %cmp78 = icmp slt i32 %sub.i, %mul
  br i1 %cmp78, label %if.then80, label %for.inc

if.then80:                                        ; preds = %if.then26
  %arrayidx81 = getelementptr inbounds i8, ptr %arrayidx41, i64 -2
  %26 = load i16, ptr %arrayidx81, align 2
  %arrayidx82 = getelementptr inbounds i8, ptr %arrayidx35, i64 2
  %27 = load i16, ptr %arrayidx82, align 2
  %conv84 = zext i16 %27 to i32
  %sub85 = sub nsw i32 %conv74, %conv84
  %sub.i438 = call i32 @llvm.abs.i32(i32 %sub85, i1 true)
  %cmp87 = icmp slt i32 %sub.i438, %mul68
  br i1 %cmp87, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.then80
  %conv90 = zext i16 %26 to i32
  %sub91 = sub nsw i32 %conv75, %conv90
  %sub.i439 = call i32 @llvm.abs.i32(i32 %sub91, i1 true)
  %cmp93 = icmp ult i32 %sub.i439, %mul68
  br i1 %cmp93, label %if.then95, label %for.inc

if.then95:                                        ; preds = %land.lhs.true
  %arrayidx96 = getelementptr inbounds i8, ptr %arrayidx41, i64 -4
  %28 = load i16, ptr %arrayidx96, align 2
  %arrayidx97 = getelementptr inbounds i8, ptr %arrayidx35, i64 4
  %29 = load i16, ptr %arrayidx97, align 2
  %cmp98 = icmp eq i8 %9, 4
  %add103 = add nuw nsw i32 %conv74, %conv75
  br i1 %cmp98, label %if.then100, label %if.else222

if.then100:                                       ; preds = %if.then95
  %shr108 = lshr i32 %mul, 2
  %add109 = add nuw nsw i32 %shr108, 2
  %cmp110 = icmp ult i32 %sub.i, %add109
  %conv113 = zext i16 %29 to i32
  %sub114 = sub nsw i32 %conv74, %conv113
  %sub.i441 = call i32 @llvm.abs.i32(i32 %sub114, i1 true)
  %cmp116 = icmp ult i32 %sub.i441, %mul68
  %and434 = and i1 %cmp110, %cmp116
  %conv119 = zext i16 %28 to i32
  %sub120 = sub nsw i32 %conv75, %conv119
  %sub.i442 = call i32 @llvm.abs.i32(i32 %sub120, i1 true)
  %cmp122 = icmp ult i32 %sub.i442, %mul68
  %and124435 = and i1 %cmp110, %cmp122
  br i1 %and124435, label %if.then126, label %if.else

if.then126:                                       ; preds = %if.then100
  %arrayidx127 = getelementptr inbounds i8, ptr %arrayidx41, i64 -6
  %30 = load i16, ptr %arrayidx127, align 2
  %conv128 = zext i16 %30 to i32
  %add130 = add nuw nsw i32 %conv128, %conv119
  %shl = shl nuw nsw i32 %add130, 1
  %add132 = add nuw nsw i32 %add103, 4
  %add134 = add nuw nsw i32 %add132, %conv90
  %add135 = add nuw nsw i32 %add134, %conv119
  %add136 = add nuw nsw i32 %add135, %shl
  %shr137 = lshr i32 %add136, 3
  %conv138 = trunc nuw i32 %shr137 to i16
  store i16 %conv138, ptr %arrayidx96, align 2
  %add144 = add nuw nsw i32 %add103, 2
  %add146 = add nuw nsw i32 %add144, %conv90
  %add147 = add nuw nsw i32 %add146, %conv119
  %shr148 = lshr i32 %add147, 2
  %conv149 = trunc nuw i32 %shr148 to i16
  store i16 %conv149, ptr %arrayidx81, align 2
  %add153 = add nuw nsw i32 %add103, %conv90
  %shl154 = shl nuw nsw i32 %add153, 1
  %add155 = add nuw nsw i32 %conv84, 4
  %add157 = add nuw nsw i32 %add155, %shl154
  %add158 = add nuw nsw i32 %add157, %conv119
  %shr159 = lshr i32 %add158, 3
  br label %if.end

if.else:                                          ; preds = %if.then100
  %shl163 = shl nuw nsw i32 %conv90, 1
  %add165 = add nuw nsw i32 %conv75, 2
  %add167 = add nuw nsw i32 %add165, %shl163
  %add168 = add nuw nsw i32 %add167, %conv84
  %shr169 = lshr i32 %add168, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then126
  %storemerge.in = phi i32 [ %shr169, %if.else ], [ %shr159, %if.then126 ]
  %storemerge = trunc nuw i32 %storemerge.in to i16
  store i16 %storemerge, ptr %arrayidx41, align 2
  br i1 %and434, label %if.then173, label %if.else210

if.then173:                                       ; preds = %if.end
  %arrayidx174 = getelementptr inbounds i8, ptr %arrayidx35, i64 6
  %31 = load i16, ptr %arrayidx174, align 2
  %add177 = add nuw nsw i32 %add103, %conv84
  %shl178 = shl nuw nsw i32 %add177, 1
  %add179 = add nuw nsw i32 %conv90, 4
  %add181 = add nuw nsw i32 %add179, %shl178
  %add182 = add nuw nsw i32 %add181, %conv113
  %shr183 = lshr i32 %add182, 3
  %conv184 = trunc nuw i32 %shr183 to i16
  store i16 %conv184, ptr %arrayidx35, align 2
  %add190 = add nuw nsw i32 %add103, 2
  %add192 = add nuw nsw i32 %add190, %conv84
  %add193 = add nuw nsw i32 %add192, %conv113
  %shr194 = lshr i32 %add193, 2
  %conv195 = trunc nuw i32 %shr194 to i16
  store i16 %conv195, ptr %arrayidx82, align 2
  %conv197 = zext i16 %31 to i32
  %add199 = add nuw nsw i32 %conv197, %conv113
  %shl200 = shl nuw nsw i32 %add199, 1
  %add202 = add nuw nsw i32 %add103, 4
  %add204 = add nuw nsw i32 %add202, %conv84
  %add205 = add nuw nsw i32 %add204, %conv113
  %add206 = add nuw nsw i32 %add205, %shl200
  %shr207 = lshr i32 %add206, 3
  %conv208 = trunc nuw i32 %shr207 to i16
  store i16 %conv208, ptr %arrayidx97, align 2
  br label %for.inc

if.else210:                                       ; preds = %if.end
  %shl212 = shl nuw nsw i32 %conv84, 1
  %add214 = add nuw nsw i32 %conv74, 2
  %add216 = add nuw nsw i32 %add214, %conv90
  %add217 = add nuw nsw i32 %add216, %shl212
  %shr218 = lshr i32 %add217, 2
  %conv219 = trunc nuw i32 %shr218 to i16
  store i16 %conv219, ptr %arrayidx35, align 2
  br label %for.inc

if.else222:                                       ; preds = %if.then95
  %add227 = add nuw nsw i32 %add103, 1
  %shr228 = lshr i32 %add227, 1
  %conv231 = zext i16 %29 to i32
  %sub232 = sub nsw i32 %conv74, %conv231
  %sub.i443 = call i32 @llvm.abs.i32(i32 %sub232, i1 true)
  %cmp234 = icmp ult i32 %sub.i443, %mul68
  %conv235 = zext i1 %cmp234 to i32
  %conv238 = zext i16 %28 to i32
  %sub239 = sub nsw i32 %conv75, %conv238
  %sub.i444 = call i32 @llvm.abs.i32(i32 %sub239, i1 true)
  %cmp241 = icmp ult i32 %sub.i444, %mul68
  %conv242 = zext i1 %cmp241 to i32
  %idxprom243 = zext i8 %9 to i64
  %arrayidx244 = getelementptr inbounds i8, ptr %arrayidx70, i64 %idxprom243
  %32 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %32 to i32
  %mul246 = mul nsw i32 %cond10, %conv245
  %add247 = add nuw nsw i32 %conv235, %conv242
  %add248 = add i32 %add247, %mul246
  %sub249 = sub nsw i32 0, %add248
  %shl253 = shl nsw i32 %sub76, 2
  %sub256 = add nsw i32 %shl253, 4
  %add257 = add nsw i32 %sub256, %conv90
  %add258 = sub nsw i32 %add257, %conv84
  %shr259 = ashr i32 %add258, 3
  %cond.i.i445 = call noundef i32 @llvm.smax.i32(i32 %shr259, i32 %sub249)
  %cond.i4.i446 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i445, i32 %add248)
  %cmp263 = icmp ne i32 %mul246, 0
  %or.cond = and i1 %cmp241, %cmp263
  br i1 %or.cond, label %if.then265, label %if.end277

if.then265:                                       ; preds = %if.else222
  %sub266 = sub nsw i32 0, %mul246
  %33 = shl nuw nsw i32 %conv90, 1
  %add268 = sub nsw i32 %shr228, %33
  %sub271 = add nsw i32 %add268, %conv238
  %shr272 = ashr i32 %sub271, 1
  %cond.i.i447 = call noundef i32 @llvm.smax.i32(i32 %shr272, i32 %sub266)
  %cond.i4.i448 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i447, i32 %mul246)
  %34 = trunc i32 %cond.i4.i448 to i16
  %conv276 = add i16 %26, %34
  store i16 %conv276, ptr %arrayidx81, align 2
  br label %if.end277

if.end277:                                        ; preds = %if.then265, %if.else222
  %tobool278.not = icmp eq i32 %cond.i4.i446, 0
  br i1 %tobool278.not, label %if.end288, label %if.then279

if.then279:                                       ; preds = %if.end277
  %add281 = add nsw i32 %cond.i4.i446, %conv75
  %cond.i.i449 = call noundef i32 @llvm.smax.i32(i32 %add281, i32 0)
  %cond.i4.i450 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i449, i32 %3)
  %conv283 = trunc i32 %cond.i4.i450 to i16
  store i16 %conv283, ptr %arrayidx41, align 2
  %sub285 = sub nsw i32 %conv74, %cond.i4.i446
  %cond.i.i451 = call noundef i32 @llvm.smax.i32(i32 %sub285, i32 0)
  %cond.i4.i452 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i451, i32 %3)
  %conv287 = trunc i32 %cond.i4.i452 to i16
  store i16 %conv287, ptr %arrayidx35, align 2
  br label %if.end288

if.end288:                                        ; preds = %if.then279, %if.end277
  %or.cond313 = and i1 %cmp234, %cmp263
  br i1 %or.cond313, label %if.then293, label %for.inc

if.then293:                                       ; preds = %if.end288
  %sub294 = sub nsw i32 0, %mul246
  %35 = shl nuw nsw i32 %conv84, 1
  %add296 = sub nsw i32 %shr228, %35
  %sub299 = add nsw i32 %add296, %conv231
  %shr300 = ashr i32 %sub299, 1
  %cond.i.i453 = call noundef i32 @llvm.smax.i32(i32 %shr300, i32 %sub294)
  %cond.i4.i454 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i453, i32 %mul246)
  %36 = load i16, ptr %arrayidx82, align 2
  %37 = trunc i32 %cond.i4.i454 to i16
  %conv305 = add i16 %36, %37
  store i16 %conv305, ptr %arrayidx82, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end288, %if.then293, %if.then173, %if.else210, %for.body, %if.then26, %land.lhs.true, %if.then80, %if.then20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end312, label %for.body

if.end312:                                        ; preds = %for.inc, %cond.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopLumaHorMBAff(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #1 {
entry:
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %iLumaStride = getelementptr inbounds i8, ptr %p, i64 356
  %0 = load i32, ptr %iLumaStride, align 4
  %tobool.not = icmp eq i32 %pl, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond14.in.v = phi i64 [ 849048, %cond.true ], [ 849044, %entry ]
  %cond = phi i32 [ %2, %cond.true ], [ 16, %entry ]
  %cmp = icmp slt i32 %edge, 16
  %cond4 = select i1 %cmp, i32 %edge, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7
  %p_Vid5 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %3 = load ptr, ptr %p_Vid5, align 8
  %cond14.in = getelementptr inbounds i8, ptr %3, i64 %cond14.in.v
  %cond14 = load i32, ptr %cond14.in, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %3, i64 849072
  %idxprom15 = zext i32 %pl to i64
  %arrayidx16 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom15
  %4 = load i32, ptr %arrayidx16, align 4
  %sub = add nsw i32 %cond4, -1
  %mb_size = getelementptr inbounds i8, ptr %3, i64 849124
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixP) #7
  %5 = load i32, ptr %pixP, align 4
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %6 = load i16, ptr %DFDisableIdc, align 8
  %cmp19 = icmp eq i16 %6, 0
  br i1 %cmp19, label %if.then, label %if.end362

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %7 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv21 = sext i16 %7 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %8 = load i16, ptr %DFBetaOffset, align 4
  %conv22 = sext i16 %8 to i32
  %mb_data = getelementptr inbounds i8, ptr %3, i64 848888
  %9 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %10 = load i32, ptr %mb_addr, align 4
  %idxprom23 = sext i32 %10 to i64
  %arrayidx24 = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom23
  %mb_field = getelementptr inbounds i8, ptr %arrayidx24, i64 384
  %11 = load i32, ptr %mb_field, align 8
  %tobool25.not = icmp eq i32 %11, 0
  %mb_field32.phi.trans.insert = getelementptr inbounds i8, ptr %MbQ, i64 384
  %.pre = load i32, ptr %mb_field32.phi.trans.insert, align 8
  %tobool27.not = icmp eq i32 %.pre, 0
  %not.tobool25.not = xor i1 %tobool25.not, true
  %narrow531 = select i1 %not.tobool25.not, i1 %tobool27.not, i1 false
  %spec.select = zext i1 %narrow531 to i32
  %cond31 = shl nsw i32 %0, %spec.select
  %tobool33.not = icmp ne i32 %.pre, 0
  %narrow = and i1 %tobool25.not, %tobool33.not
  %spec.select505 = zext i1 %narrow to i32
  %cond41 = shl nsw i32 %0, %spec.select505
  %qp = getelementptr inbounds i8, ptr %arrayidx24, i64 68
  %qp53 = getelementptr inbounds i8, ptr %MbQ, i64 68
  %qpc = getelementptr inbounds i8, ptr %arrayidx24, i64 72
  %sub44 = add i32 %pl, -1
  %idxprom45 = zext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom45
  %qpc47 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx50 = getelementptr inbounds [2 x i32], ptr %qpc47, i64 0, i64 %idxprom45
  %qp53.sink = select i1 %tobool.not, ptr %qp53, ptr %arrayidx50
  %.sink530.in = select i1 %tobool.not, ptr %qp, ptr %arrayidx46
  %.sink530 = load i32, ptr %.sink530.in, align 4
  %12 = load i32, ptr %qp53.sink, align 4
  %add54 = add nsw i32 %12, %.sink530
  %cond58.in = add nsw i32 %add54, 1
  %cond58 = ashr i32 %cond58.in, 1
  %add59 = add nsw i32 %cond58, %conv21
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add59, i32 0)
  %13 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add60 = add nsw i32 %cond58, %conv22
  %cond.i.i506 = call noundef i32 @llvm.smax.i32(i32 %add60, i32 0)
  %14 = call i32 @llvm.umin.i32(i32 %cond.i.i506, i32 51)
  %idxprom62 = zext nneg i32 %13 to i64
  %arrayidx63 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom62
  %15 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %15 to i32
  %mul65 = mul nsw i32 %cond14, %conv64
  %idxprom66 = zext nneg i32 %14 to i64
  %arrayidx67 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom66
  %16 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %16 to i32
  %mul69 = mul nsw i32 %cond14, %conv68
  %or = or i32 %mul69, %mul65
  %cmp70.not = icmp eq i32 %or, 0
  br i1 %cmp70.not, label %if.end362, label %if.then72

if.then72:                                        ; preds = %if.then
  %arrayidx74 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom62
  call void @getAffNeighbour(ptr noundef nonnull %MbQ, i32 noundef 0, i32 noundef %cond4, ptr noundef nonnull %mb_size, ptr noundef nonnull %pixQ) #7
  %cmp79525 = icmp sgt i32 %cond, 0
  br i1 %cmp79525, label %for.body.lr.ph, label %if.end362

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
  %wide.trip.count = zext nneg i32 %cond to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end356
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end356 ]
  %arrayidx82 = getelementptr inbounds i8, ptr %Strength, i64 %indvars.iv
  %17 = load i8, ptr %arrayidx82, align 1
  %cmp84.not = icmp eq i8 %17, 0
  br i1 %cmp84.not, label %if.end356, label %if.then86

if.then86:                                        ; preds = %for.body
  %18 = load i16, ptr %pos_y, align 2
  %idxprom87 = sext i16 %18 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom87
  %19 = load ptr, ptr %arrayidx88, align 8
  %20 = load i16, ptr %pos_x, align 4
  %idxprom89 = sext i16 %20 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %19, i64 %idxprom89
  %21 = load i16, ptr %pos_y91, align 2
  %idxprom92 = sext i16 %21 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom92
  %22 = load ptr, ptr %arrayidx93, align 8
  %23 = load i16, ptr %pos_x94, align 4
  %idxprom95 = sext i16 %23 to i64
  %arrayidx96 = getelementptr inbounds i16, ptr %22, i64 %idxprom95
  %24 = load i16, ptr %arrayidx96, align 2
  %25 = load i16, ptr %arrayidx90, align 2
  %conv97 = zext i16 %25 to i32
  %conv98 = zext i16 %24 to i32
  %sub99 = sub nsw i32 %conv97, %conv98
  %sub.i = call i32 @llvm.abs.i32(i32 %sub99, i1 true)
  %cmp101 = icmp slt i32 %sub.i, %mul65
  br i1 %cmp101, label %if.then103, label %if.end356

if.then103:                                       ; preds = %if.then86
  %arrayidx106 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom105
  %arrayidx108 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom107
  %26 = load i16, ptr %arrayidx108, align 2
  %conv110 = zext i16 %26 to i32
  %sub111 = sub nsw i32 %conv97, %conv110
  %sub.i508 = call i32 @llvm.abs.i32(i32 %sub111, i1 true)
  %cmp113 = icmp slt i32 %sub.i508, %mul69
  br i1 %cmp113, label %land.lhs.true115, label %if.end356

land.lhs.true115:                                 ; preds = %if.then103
  %27 = load i16, ptr %arrayidx106, align 2
  %conv117 = zext i16 %27 to i32
  %sub118 = sub nsw i32 %conv98, %conv117
  %sub.i509 = call i32 @llvm.abs.i32(i32 %sub118, i1 true)
  %cmp120 = icmp ult i32 %sub.i509, %mul69
  br i1 %cmp120, label %if.then122, label %if.end356

if.then122:                                       ; preds = %land.lhs.true115
  %arrayidx126 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom125
  %28 = load i16, ptr %arrayidx126, align 2
  %arrayidx129 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom128
  %29 = load i16, ptr %arrayidx129, align 2
  %cmp130 = icmp eq i8 %17, 4
  %add135 = add nuw nsw i32 %conv97, %conv98
  br i1 %cmp130, label %if.then132, label %if.else267

if.then132:                                       ; preds = %if.then122
  %cmp142 = icmp ult i32 %sub.i, %add141
  %conv145 = zext i16 %29 to i32
  %sub146 = sub nsw i32 %conv97, %conv145
  %sub.i511 = call i32 @llvm.abs.i32(i32 %sub146, i1 true)
  %cmp148 = icmp ult i32 %sub.i511, %mul69
  %and503 = and i1 %cmp142, %cmp148
  %conv151 = zext i16 %28 to i32
  %sub152 = sub nsw i32 %conv98, %conv151
  %sub.i512 = call i32 @llvm.abs.i32(i32 %sub152, i1 true)
  %cmp154 = icmp ult i32 %sub.i512, %mul69
  %and156504 = and i1 %cmp142, %cmp154
  br i1 %and156504, label %if.then158, label %if.else

if.then158:                                       ; preds = %if.then132
  %arrayidx162 = getelementptr inbounds i16, ptr %arrayidx96, i64 %idxprom161
  %30 = load i16, ptr %arrayidx162, align 2
  %conv163 = zext i16 %30 to i32
  %add165 = add nuw nsw i32 %conv163, %conv151
  %shl = shl nuw nsw i32 %add165, 1
  %add167 = add nuw nsw i32 %add135, 4
  %add169 = add nuw nsw i32 %add167, %conv117
  %add170 = add nuw nsw i32 %add169, %conv151
  %add171 = add nuw nsw i32 %add170, %shl
  %shr172 = lshr i32 %add171, 3
  %conv173 = trunc nuw i32 %shr172 to i16
  store i16 %conv173, ptr %arrayidx126, align 2
  %add182 = add nuw nsw i32 %add135, 2
  %add184 = add nuw nsw i32 %add182, %conv117
  %add185 = add nuw nsw i32 %add184, %conv151
  %shr186 = lshr i32 %add185, 2
  %conv187 = trunc nuw i32 %shr186 to i16
  store i16 %conv187, ptr %arrayidx106, align 2
  %add193 = add nuw nsw i32 %add135, %conv117
  %shl194 = shl nuw nsw i32 %add193, 1
  %add195 = add nuw nsw i32 %conv110, 4
  %add197 = add nuw nsw i32 %add195, %shl194
  %add198 = add nuw nsw i32 %add197, %conv151
  %shr199 = lshr i32 %add198, 3
  br label %if.end

if.else:                                          ; preds = %if.then132
  %shl203 = shl nuw nsw i32 %conv117, 1
  %add205 = add nuw nsw i32 %conv98, 2
  %add207 = add nuw nsw i32 %add205, %conv110
  %add208 = add nuw nsw i32 %add207, %shl203
  %shr209 = lshr i32 %add208, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then158
  %storemerge.in = phi i32 [ %shr209, %if.else ], [ %shr199, %if.then158 ]
  %storemerge = trunc nuw i32 %storemerge.in to i16
  store i16 %storemerge, ptr %arrayidx96, align 2
  br i1 %and503, label %if.then213, label %if.else255

if.then213:                                       ; preds = %if.end
  %arrayidx216 = getelementptr inbounds i16, ptr %arrayidx90, i64 %idxprom215
  %31 = load i16, ptr %arrayidx216, align 2
  %add219 = add nuw nsw i32 %add135, %conv110
  %shl220 = shl nuw nsw i32 %add219, 1
  %add221 = add nuw nsw i32 %shl220, 4
  %add223 = add nuw nsw i32 %add221, %conv117
  %add224 = add nuw nsw i32 %add223, %conv145
  %shr225 = lshr i32 %add224, 3
  %conv226 = trunc nuw i32 %shr225 to i16
  store i16 %conv226, ptr %arrayidx90, align 2
  %add232 = add nuw nsw i32 %add135, 2
  %add234 = add nuw nsw i32 %add232, %conv110
  %add235 = add nuw nsw i32 %add234, %conv145
  %shr236 = lshr i32 %add235, 2
  %conv237 = trunc nuw i32 %shr236 to i16
  store i16 %conv237, ptr %arrayidx108, align 2
  %conv240 = zext i16 %31 to i32
  %add242 = add nuw nsw i32 %conv240, %conv145
  %shl243 = shl nuw nsw i32 %add242, 1
  %add245 = add nuw nsw i32 %add135, 4
  %add247 = add nuw nsw i32 %add245, %conv110
  %add248 = add nuw nsw i32 %add247, %conv145
  %add249 = add nuw nsw i32 %add248, %shl243
  %shr250 = lshr i32 %add249, 3
  %conv251 = trunc nuw i32 %shr250 to i16
  store i16 %conv251, ptr %arrayidx129, align 2
  br label %if.end356

if.else255:                                       ; preds = %if.end
  %shl257 = shl nuw nsw i32 %conv110, 1
  %add259 = add nuw nsw i32 %conv97, 2
  %add261 = add nuw nsw i32 %add259, %shl257
  %add262 = add nuw nsw i32 %add261, %conv117
  %shr263 = lshr i32 %add262, 2
  %conv264 = trunc nuw i32 %shr263 to i16
  store i16 %conv264, ptr %arrayidx90, align 2
  br label %if.end356

if.else267:                                       ; preds = %if.then122
  %add272 = add nuw nsw i32 %add135, 1
  %shr273 = lshr i32 %add272, 1
  %conv276 = zext i16 %29 to i32
  %sub277 = sub nsw i32 %conv97, %conv276
  %sub.i513 = call i32 @llvm.abs.i32(i32 %sub277, i1 true)
  %cmp279 = icmp ult i32 %sub.i513, %mul69
  %conv280 = zext i1 %cmp279 to i32
  %conv283 = zext i16 %28 to i32
  %sub284 = sub nsw i32 %conv98, %conv283
  %sub.i514 = call i32 @llvm.abs.i32(i32 %sub284, i1 true)
  %cmp286 = icmp ult i32 %sub.i514, %mul69
  %conv287 = zext i1 %cmp286 to i32
  %idxprom288 = zext i8 %17 to i64
  %arrayidx289 = getelementptr inbounds i8, ptr %arrayidx74, i64 %idxprom288
  %32 = load i8, ptr %arrayidx289, align 1
  %conv290 = zext i8 %32 to i32
  %mul291 = mul nsw i32 %cond14, %conv290
  %add292 = add nuw nsw i32 %conv280, %conv287
  %add293 = add i32 %add292, %mul291
  %sub294 = sub nsw i32 0, %add293
  %shl298 = shl nsw i32 %sub99, 2
  %sub301 = add nsw i32 %shl298, 4
  %add302 = sub nsw i32 %sub301, %conv110
  %add303 = add nsw i32 %add302, %conv117
  %shr304 = ashr i32 %add303, 3
  %cond.i.i515 = call noundef i32 @llvm.smax.i32(i32 %shr304, i32 %sub294)
  %cond.i4.i516 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i515, i32 %add293)
  %cmp308 = icmp ne i32 %mul291, 0
  %or.cond = and i1 %cmp286, %cmp308
  br i1 %or.cond, label %if.then310, label %if.end322

if.then310:                                       ; preds = %if.else267
  %sub311 = sub nsw i32 0, %mul291
  %33 = shl nuw nsw i32 %conv117, 1
  %add313 = sub nsw i32 %shr273, %33
  %sub316 = add nsw i32 %add313, %conv283
  %shr317 = ashr i32 %sub316, 1
  %cond.i.i517 = call noundef i32 @llvm.smax.i32(i32 %shr317, i32 %sub311)
  %cond.i4.i518 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i517, i32 %mul291)
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx96, i64 %idx.neg
  %34 = load i16, ptr %add.ptr, align 2
  %35 = trunc i32 %cond.i4.i518 to i16
  %conv321 = add i16 %34, %35
  store i16 %conv321, ptr %add.ptr, align 2
  br label %if.end322

if.end322:                                        ; preds = %if.then310, %if.else267
  %tobool323.not = icmp eq i32 %cond.i4.i516, 0
  br i1 %tobool323.not, label %if.end333, label %if.then324

if.then324:                                       ; preds = %if.end322
  %add326 = add nsw i32 %cond.i4.i516, %conv98
  %cond.i.i519 = call noundef i32 @llvm.smax.i32(i32 %add326, i32 0)
  %cond.i4.i520 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i519, i32 %4)
  %conv328 = trunc i32 %cond.i4.i520 to i16
  store i16 %conv328, ptr %arrayidx96, align 2
  %sub330 = sub nsw i32 %conv97, %cond.i4.i516
  %cond.i.i521 = call noundef i32 @llvm.smax.i32(i32 %sub330, i32 0)
  %cond.i4.i522 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i521, i32 %4)
  %conv332 = trunc i32 %cond.i4.i522 to i16
  store i16 %conv332, ptr %arrayidx90, align 2
  br label %if.end333

if.end333:                                        ; preds = %if.then324, %if.end322
  %or.cond363 = and i1 %cmp279, %cmp308
  br i1 %or.cond363, label %if.then338, label %if.end356

if.then338:                                       ; preds = %if.end333
  %sub339 = sub nsw i32 0, %mul291
  %36 = shl nuw nsw i32 %conv110, 1
  %add341 = sub nsw i32 %shr273, %36
  %sub344 = add nsw i32 %add341, %conv276
  %shr345 = ashr i32 %sub344, 1
  %cond.i.i523 = call noundef i32 @llvm.smax.i32(i32 %shr345, i32 %sub339)
  %cond.i4.i524 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i523, i32 %mul291)
  %37 = load i16, ptr %arrayidx108, align 2
  %38 = trunc i32 %cond.i4.i524 to i16
  %conv351 = add i16 %37, %38
  store i16 %conv351, ptr %arrayidx108, align 2
  br label %if.end356

if.end356:                                        ; preds = %if.then86, %if.else255, %if.then213, %if.then338, %if.end333, %land.lhs.true115, %if.then103, %for.body
  %39 = load i16, ptr %pos_x94, align 4
  %inc = add i16 %39, 1
  store i16 %inc, ptr %pos_x94, align 4
  %40 = load i16, ptr %pos_x, align 4
  %inc359 = add i16 %40, 1
  store i16 %inc359, ptr %pos_x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end362, label %for.body

if.end362:                                        ; preds = %if.end356, %if.then72, %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaVerMBAff(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #1 {
entry:
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 849048
  %3 = load i32, ptr %arrayidx3, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %add = add nsw i32 %uv, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom4
  %4 = load i32, ptr %arrayidx5, align 4
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %5 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv = sext i16 %5 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %6 = load i16, ptr %DFBetaOffset, align 4
  %conv6 = sext i16 %6 to i32
  %cmp209 = icmp sgt i32 %2, 0
  br i1 %cmp209, label %for.body.lr.ph, label %for.end

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
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %pel.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %edge, i32 noundef %pel.0210, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %pixQ) #7
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef %sub, i32 noundef %pel.0210, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %pixP) #7
  %7 = load ptr, ptr %mb_data, align 8
  %8 = load i32, ptr %mb_addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom12
  br i1 %cmp14, label %cond.true, label %cond.end22

cond.true:                                        ; preds = %for.body
  %9 = load i32, ptr %mb_field, align 8
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true
  %mb_field16 = getelementptr inbounds i8, ptr %arrayidx13, i64 384
  %10 = load i32, ptr %mb_field16, align 8
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %cond.true18, label %cond.false

cond.true18:                                      ; preds = %land.lhs.true
  %shl = shl nuw i32 %pel.0210, 1
  br label %cond.end22

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %11 = shl nuw i32 %pel.0210, 1
  %shl19 = and i32 %11, -4
  %and = and i32 %pel.0210, 1
  %add20 = or disjoint i32 %shl19, %and
  br label %cond.end22

cond.end22:                                       ; preds = %for.body, %cond.true18, %cond.false
  %cond23 = phi i32 [ %shl, %cond.true18 ], [ %add20, %cond.false ], [ %pel.0210, %for.body ]
  %12 = load i32, ptr %pixP, align 4
  %tobool24.not = icmp eq i32 %12, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %cond.end22
  %13 = load i16, ptr %DFDisableIdc, align 8
  %cmp26 = icmp eq i16 %13, 0
  br i1 %cmp26, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %cond.end22
  %idxprom28 = sext i32 %cond23 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom28
  %14 = load i8, ptr %arrayidx29, align 1
  %cmp31.not = icmp eq i8 %14, 0
  br i1 %cmp31.not, label %for.inc, label %if.then33

if.then33:                                        ; preds = %if.then
  %15 = load i16, ptr %pos_y, align 2
  %idxprom34 = sext i16 %15 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom34
  %16 = load ptr, ptr %arrayidx35, align 8
  %17 = load i16, ptr %pos_x, align 4
  %idxprom36 = sext i16 %17 to i64
  %arrayidx37 = getelementptr inbounds i16, ptr %16, i64 %idxprom36
  %18 = load i16, ptr %pos_y38, align 2
  %idxprom39 = sext i16 %18 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom39
  %19 = load ptr, ptr %arrayidx40, align 8
  %20 = load i16, ptr %pos_x41, align 4
  %idxprom42 = sext i16 %20 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %19, i64 %idxprom42
  %qpc = getelementptr inbounds i8, ptr %arrayidx13, i64 72
  %arrayidx45 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom44
  %21 = load i32, ptr %arrayidx45, align 4
  %22 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %21, 1
  %add50 = add i32 %add49, %22
  %shr51 = ashr i32 %add50, 1
  %add52 = add nsw i32 %shr51, %conv
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add52, i32 0)
  %23 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add53 = add nsw i32 %shr51, %conv6
  %cond.i.i199 = call noundef i32 @llvm.smax.i32(i32 %add53, i32 0)
  %24 = call i32 @llvm.umin.i32(i32 %cond.i.i199, i32 51)
  %idxprom55 = zext nneg i32 %23 to i64
  %arrayidx56 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom55
  %25 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %25 to i32
  %mul = mul nsw i32 %3, %conv57
  %idxprom58 = zext nneg i32 %24 to i64
  %arrayidx59 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom58
  %26 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %26 to i32
  %mul61 = mul nsw i32 %3, %conv60
  %arrayidx63 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom55
  %27 = load i16, ptr %arrayidx43, align 2
  %28 = load i16, ptr %arrayidx37, align 2
  %conv65 = zext i16 %28 to i32
  %conv66 = zext i16 %27 to i32
  %sub67 = sub nsw i32 %conv65, %conv66
  %sub.i = call i32 @llvm.abs.i32(i32 %sub67, i1 true)
  %cmp69 = icmp slt i32 %sub.i, %mul
  br i1 %cmp69, label %if.then71, label %for.inc

if.then71:                                        ; preds = %if.then33
  %arrayidx73 = getelementptr inbounds i8, ptr %arrayidx37, i64 2
  %29 = load i16, ptr %arrayidx73, align 2
  %conv75 = zext i16 %29 to i32
  %sub76 = sub nsw i32 %conv65, %conv75
  %sub.i201 = call i32 @llvm.abs.i32(i32 %sub76, i1 true)
  %cmp79 = icmp slt i32 %sub.i201, %mul61
  br i1 %cmp79, label %land.lhs.true81, label %for.inc

land.lhs.true81:                                  ; preds = %if.then71
  %arrayidx72 = getelementptr inbounds i8, ptr %arrayidx43, i64 -2
  %30 = load i16, ptr %arrayidx72, align 2
  %conv83 = zext i16 %30 to i32
  %sub84 = sub nsw i32 %conv66, %conv83
  %sub.i202 = call i32 @llvm.abs.i32(i32 %sub84, i1 true)
  %cmp87 = icmp ult i32 %sub.i202, %mul61
  br i1 %cmp87, label %if.then89, label %for.inc

if.then89:                                        ; preds = %land.lhs.true81
  %cmp90 = icmp eq i8 %14, 4
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then89
  %shl94 = shl nuw nsw i32 %conv75, 1
  %add96 = add nuw nsw i32 %conv65, 2
  %add98 = add nuw nsw i32 %add96, %shl94
  %add99 = add nuw nsw i32 %add98, %conv83
  %shr100 = lshr i32 %add99, 2
  %conv101 = trunc nuw i32 %shr100 to i16
  store i16 %conv101, ptr %arrayidx37, align 2
  %shl104 = shl nuw nsw i32 %conv83, 1
  %add106 = add nuw nsw i32 %conv66, 2
  %add108 = add nuw nsw i32 %add106, %conv75
  %add109 = add nuw nsw i32 %add108, %shl104
  %shr110 = lshr i32 %add109, 2
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then89
  %idxprom113 = zext i8 %14 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %arrayidx63, i64 %idxprom113
  %31 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %31 to i32
  %mul116 = mul nsw i32 %3, %conv115
  %32 = shl nsw i32 %sub67, 2
  %33 = add nsw i32 %conv75, -5
  %34 = add nsw i32 %32, %conv83
  %35 = sub nsw i32 %33, %34
  %36 = ashr i32 %35, 3
  %37 = call i32 @llvm.smin.i32(i32 %mul116, i32 %36)
  %38 = sub i32 -2, %mul116
  %39 = call i32 @llvm.smax.i32(i32 %37, i32 %38)
  %tobool130.not = icmp eq i32 %39, -1
  br i1 %tobool130.not, label %for.inc, label %if.then131

if.then131:                                       ; preds = %if.else
  %cond.i4.i204 = xor i32 %39, -1
  %add133 = add nsw i32 %cond.i4.i204, %conv66
  %cond.i.i205 = call noundef i32 @llvm.smax.i32(i32 %add133, i32 0)
  %cond.i4.i206 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i205, i32 %4)
  %conv135 = trunc i32 %cond.i4.i206 to i16
  store i16 %conv135, ptr %arrayidx43, align 2
  %sub137 = sub nsw i32 %conv65, %cond.i4.i204
  %cond.i.i207 = call noundef i32 @llvm.smax.i32(i32 %sub137, i32 0)
  %cond.i4.i208 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i207, i32 %4)
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then92, %if.then131
  %cond.i4.i208.sink = phi i32 [ %cond.i4.i208, %if.then131 ], [ %shr110, %if.then92 ]
  %arrayidx37.sink = phi ptr [ %arrayidx37, %if.then131 ], [ %arrayidx43, %if.then92 ]
  %conv139 = trunc i32 %cond.i4.i208.sink to i16
  store i16 %conv139, ptr %arrayidx37.sink, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else, %lor.lhs.false, %if.then33, %land.lhs.true81, %if.then71, %if.then
  %inc = add nuw nsw i32 %pel.0210, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EdgeLoopChromaHorMBAff(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr noundef %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #1 {
entry:
  %pixP = alloca %struct.pix_pos, align 4
  %pixQ = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %1 = load i32, ptr %chroma_format_idc, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %cmp = icmp slt i32 %edge, 16
  %cond = select i1 %cmp, i32 %edge, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixP) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pixQ) #7
  %arrayidx3 = getelementptr inbounds i8, ptr %0, i64 849048
  %3 = load i32, ptr %arrayidx3, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %add = add nsw i32 %uv, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom4
  %4 = load i32, ptr %arrayidx5, align 4
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %5 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv = sext i16 %5 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %6 = load i16, ptr %DFBetaOffset, align 4
  %conv6 = sext i16 %6 to i32
  %iChromaStride = getelementptr inbounds i8, ptr %p, i64 360
  %7 = load i32, ptr %iChromaStride, align 8
  %sub = add nsw i32 %cond, -1
  %arrayidx7 = getelementptr inbounds i8, ptr %0, i64 849132
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %sub, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %pixP) #7
  call void @getAffNeighbour(ptr noundef %MbQ, i32 noundef 0, i32 noundef %cond, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %pixQ) #7
  %8 = load i32, ptr %pixP, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %9 = load i16, ptr %DFDisableIdc, align 8
  %cmp12 = icmp eq i16 %9, 0
  br i1 %cmp12, label %if.then, label %if.end180

if.then:                                          ; preds = %lor.lhs.false, %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 848888
  %10 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %pixP, i64 4
  %11 = load i32, ptr %mb_addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom14
  %mb_field = getelementptr inbounds i8, ptr %arrayidx15, i64 384
  %12 = load i32, ptr %mb_field, align 8
  %tobool16.not = icmp eq i32 %12, 0
  %mb_field23.phi.trans.insert = getelementptr inbounds i8, ptr %MbQ, i64 384
  %.pre = load i32, ptr %mb_field23.phi.trans.insert, align 8
  %tobool18.not = icmp eq i32 %.pre, 0
  %not.tobool16.not = xor i1 %tobool16.not, true
  %narrow257 = select i1 %not.tobool16.not, i1 %tobool18.not, i1 false
  %spec.select = zext i1 %narrow257 to i32
  %cond22 = shl nsw i32 %7, %spec.select
  %mb_field23 = getelementptr inbounds i8, ptr %MbQ, i64 384
  %tobool24.not = icmp ne i32 %.pre, 0
  %narrow = and i1 %tobool16.not, %tobool24.not
  %spec.select244 = zext i1 %narrow to i32
  %cond32 = shl nsw i32 %7, %spec.select244
  %qpc = getelementptr inbounds i8, ptr %arrayidx15, i64 72
  %idxprom33 = sext i32 %uv to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom33
  %13 = load i32, ptr %arrayidx34, align 4
  %qpc35 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx37 = getelementptr inbounds [2 x i32], ptr %qpc35, i64 0, i64 %idxprom33
  %14 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %13, 1
  %add39 = add i32 %add38, %14
  %shr = ashr i32 %add39, 1
  %add40 = add nsw i32 %shr, %conv
  %cond.i.i = call noundef i32 @llvm.smax.i32(i32 %add40, i32 0)
  %15 = call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add41 = add nsw i32 %shr, %conv6
  %cond.i.i245 = call noundef i32 @llvm.smax.i32(i32 %add41, i32 0)
  %16 = call i32 @llvm.umin.i32(i32 %cond.i.i245, i32 51)
  %idxprom43 = zext nneg i32 %15 to i64
  %arrayidx44 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom43
  %17 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %17 to i32
  %mul46 = mul nsw i32 %3, %conv45
  %idxprom47 = zext nneg i32 %16 to i64
  %arrayidx48 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom47
  %18 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %18 to i32
  %mul50 = mul nsw i32 %3, %conv49
  %or = or i32 %mul50, %mul46
  %cmp51.not = icmp eq i32 %or, 0
  br i1 %cmp51.not, label %if.end180, label %if.then53

if.then53:                                        ; preds = %if.then
  %arrayidx55 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom43
  %cmp57255 = icmp sgt i32 %2, 0
  br i1 %cmp57255, label %for.body.lr.ph, label %if.end180

for.body.lr.ph:                                   ; preds = %if.then53
  %cmp59 = icmp eq i32 %2, 8
  %pos_y = getelementptr inbounds i8, ptr %pixQ, i64 14
  %pos_x = getelementptr inbounds i8, ptr %pixQ, i64 12
  %pos_y87 = getelementptr inbounds i8, ptr %pixP, i64 14
  %pos_x90 = getelementptr inbounds i8, ptr %pixP, i64 12
  %idxprom103 = sext i32 %cond22 to i64
  %sub100 = sub nsw i32 0, %cond32
  %idxprom101 = sext i32 %sub100 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end174
  %pel.0256 = phi i32 [ 0, %for.body.lr.ph ], [ %inc178, %if.end174 ]
  br i1 %cmp59, label %cond.true61, label %cond.end75

cond.true61:                                      ; preds = %for.body
  %19 = load i32, ptr %mb_field23, align 8
  %tobool63.not = icmp eq i32 %19, 0
  br i1 %tobool63.not, label %cond.false68, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %cond.true61
  %20 = load i32, ptr %mb_field, align 8
  %tobool66.not = icmp eq i32 %20, 0
  br i1 %tobool66.not, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %land.lhs.true64
  %shl = shl nuw i32 %pel.0256, 1
  br label %cond.end75

cond.false68:                                     ; preds = %land.lhs.true64, %cond.true61
  %21 = shl nuw i32 %pel.0256, 1
  %shl70 = and i32 %21, -4
  %and = and i32 %pel.0256, 1
  %add71 = or disjoint i32 %shl70, %and
  br label %cond.end75

cond.end75:                                       ; preds = %for.body, %cond.true67, %cond.false68
  %cond76 = phi i32 [ %shl, %cond.true67 ], [ %add71, %cond.false68 ], [ %pel.0256, %for.body ]
  %idxprom77 = sext i32 %cond76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom77
  %22 = load i8, ptr %arrayidx78, align 1
  %cmp80.not = icmp eq i8 %22, 0
  br i1 %cmp80.not, label %if.end174, label %if.then82

if.then82:                                        ; preds = %cond.end75
  %23 = load i16, ptr %pos_y, align 2
  %idxprom83 = sext i16 %23 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom83
  %24 = load ptr, ptr %arrayidx84, align 8
  %25 = load i16, ptr %pos_x, align 4
  %idxprom85 = sext i16 %25 to i64
  %arrayidx86 = getelementptr inbounds i16, ptr %24, i64 %idxprom85
  %26 = load i16, ptr %pos_y87, align 2
  %idxprom88 = sext i16 %26 to i64
  %arrayidx89 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom88
  %27 = load ptr, ptr %arrayidx89, align 8
  %28 = load i16, ptr %pos_x90, align 4
  %idxprom91 = sext i16 %28 to i64
  %arrayidx92 = getelementptr inbounds i16, ptr %27, i64 %idxprom91
  %29 = load i16, ptr %arrayidx92, align 2
  %30 = load i16, ptr %arrayidx86, align 2
  %conv93 = zext i16 %30 to i32
  %conv94 = zext i16 %29 to i32
  %sub95 = sub nsw i32 %conv93, %conv94
  %sub.i = call i32 @llvm.abs.i32(i32 %sub95, i1 true)
  %cmp97 = icmp slt i32 %sub.i, %mul46
  br i1 %cmp97, label %if.then99, label %if.end174

if.then99:                                        ; preds = %if.then82
  %arrayidx104 = getelementptr inbounds i16, ptr %arrayidx86, i64 %idxprom103
  %31 = load i16, ptr %arrayidx104, align 2
  %conv106 = zext i16 %31 to i32
  %sub107 = sub nsw i32 %conv93, %conv106
  %sub.i247 = call i32 @llvm.abs.i32(i32 %sub107, i1 true)
  %cmp110 = icmp slt i32 %sub.i247, %mul50
  br i1 %cmp110, label %land.lhs.true112, label %if.end174

land.lhs.true112:                                 ; preds = %if.then99
  %arrayidx102 = getelementptr inbounds i16, ptr %arrayidx92, i64 %idxprom101
  %32 = load i16, ptr %arrayidx102, align 2
  %conv114 = zext i16 %32 to i32
  %sub115 = sub nsw i32 %conv94, %conv114
  %sub.i248 = call i32 @llvm.abs.i32(i32 %sub115, i1 true)
  %cmp118 = icmp ult i32 %sub.i248, %mul50
  br i1 %cmp118, label %if.then120, label %if.end174

if.then120:                                       ; preds = %land.lhs.true112
  %cmp121 = icmp eq i8 %22, 4
  br i1 %cmp121, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.then120
  %shl125 = shl nuw nsw i32 %conv106, 1
  %add127 = add nuw nsw i32 %conv93, 2
  %add129 = add nuw nsw i32 %add127, %shl125
  %add130 = add nuw nsw i32 %add129, %conv114
  %shr131 = lshr i32 %add130, 2
  %conv132 = trunc nuw i32 %shr131 to i16
  store i16 %conv132, ptr %arrayidx86, align 2
  %shl135 = shl nuw nsw i32 %conv114, 1
  %add137 = add nuw nsw i32 %conv94, 2
  %add139 = add nuw nsw i32 %add137, %conv106
  %add140 = add nuw nsw i32 %add139, %shl135
  %shr141 = lshr i32 %add140, 2
  br label %if.end174.sink.split

if.else:                                          ; preds = %if.then120
  %idxprom144 = zext i8 %22 to i64
  %arrayidx145 = getelementptr inbounds i8, ptr %arrayidx55, i64 %idxprom144
  %33 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %33 to i32
  %mul147 = mul nsw i32 %3, %conv146
  %34 = shl nsw i32 %sub95, 2
  %35 = add nsw i32 %conv106, -5
  %36 = add nsw i32 %34, %conv114
  %37 = sub nsw i32 %35, %36
  %38 = ashr i32 %37, 3
  %39 = call i32 @llvm.smin.i32(i32 %mul147, i32 %38)
  %40 = sub i32 -2, %mul147
  %41 = call i32 @llvm.smax.i32(i32 %39, i32 %40)
  %tobool161.not = icmp eq i32 %41, -1
  br i1 %tobool161.not, label %if.end174, label %if.then162

if.then162:                                       ; preds = %if.else
  %cond.i4.i250 = xor i32 %41, -1
  %add164 = add nsw i32 %cond.i4.i250, %conv94
  %cond.i.i251 = call noundef i32 @llvm.smax.i32(i32 %add164, i32 0)
  %cond.i4.i252 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i251, i32 %4)
  %conv166 = trunc i32 %cond.i4.i252 to i16
  store i16 %conv166, ptr %arrayidx92, align 2
  %sub168 = sub nsw i32 %conv93, %cond.i4.i250
  %cond.i.i253 = call noundef i32 @llvm.smax.i32(i32 %sub168, i32 0)
  %cond.i4.i254 = call noundef i32 @llvm.smin.i32(i32 %cond.i.i253, i32 %4)
  br label %if.end174.sink.split

if.end174.sink.split:                             ; preds = %if.then123, %if.then162
  %cond.i4.i254.sink = phi i32 [ %cond.i4.i254, %if.then162 ], [ %shr141, %if.then123 ]
  %arrayidx86.sink = phi ptr [ %arrayidx86, %if.then162 ], [ %arrayidx92, %if.then123 ]
  %conv170 = trunc i32 %cond.i4.i254.sink to i16
  store i16 %conv170, ptr %arrayidx86.sink, align 2
  br label %if.end174

if.end174:                                        ; preds = %if.end174.sink.split, %if.then82, %if.else, %land.lhs.true112, %if.then99, %cond.end75
  %42 = load i16, ptr %pos_x90, align 4
  %inc = add i16 %42, 1
  store i16 %inc, ptr %pos_x90, align 4
  %43 = load i16, ptr %pos_x, align 4
  %inc177 = add i16 %43, 1
  store i16 %inc177, ptr %pos_x, align 4
  %inc178 = add nuw nsw i32 %pel.0256, 1
  %exitcond.not = icmp eq i32 %inc178, %2
  br i1 %exitcond.not, label %if.end180, label %for.body

if.end180:                                        ; preds = %if.end174, %if.then53, %if.then, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixQ) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pixP) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_luma(ptr noundef readonly %mb, i32 noundef %xN, i32 noundef %yN) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %xN, 0
  br i1 %cmp, label %return.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %yN, 0
  br i1 %cmp1, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.else, %entry
  %.sink = phi i64 [ 144, %entry ], [ 136, %if.else ]
  %mbup = getelementptr inbounds i8, ptr %mb, i64 %.sink
  %0 = load ptr, ptr %mbup, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %if.else
  %retval.0 = phi ptr [ %mb, %if.else ], [ %0, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @get_non_aff_neighbor_chroma(ptr noundef readonly %mb, i32 noundef %xN, i32 noundef %yN, i32 noundef %block_width, i32 noundef %block_height) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %xN, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %yN, %block_height
  br i1 %cmp1, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  %mbleft = getelementptr inbounds i8, ptr %mb, i64 144
  %0 = load ptr, ptr %mbleft, align 8
  br label %return

if.else3:                                         ; preds = %entry
  %cmp4 = icmp slt i32 %xN, %block_width
  br i1 %cmp4, label %if.then5, label %return

if.then5:                                         ; preds = %if.else3
  %cmp6 = icmp slt i32 %yN, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.then5
  %mbup = getelementptr inbounds i8, ptr %mb, i64 136
  %1 = load ptr, ptr %mbup, align 8
  br label %return

if.else8:                                         ; preds = %if.then5
  %cmp9 = icmp slt i32 %yN, %block_height
  %mb. = select i1 %cmp9, ptr %mb, ptr null
  br label %return

return:                                           ; preds = %if.else3, %if.else8, %if.then, %if.then7, %if.then2
  %retval.0 = phi ptr [ %0, %if.then2 ], [ %1, %if.then7 ], [ null, %if.then ], [ %mb., %if.else8 ], [ null, %if.else3 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @get_mb_block_pos_mbaff(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
