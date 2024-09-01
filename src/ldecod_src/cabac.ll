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

@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: deco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: deco_ctx\00", align 1
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@pos2ctx_map_int = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x8i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4], align 16
@pos2ctx_map = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4], align 16
@type2ctx_last = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21], align 16
@maxpos = internal unnamed_addr constant [22 x i16] [i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 3, i16 14, i16 7, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15], align 16
@pos2ctx_last.rel = internal unnamed_addr constant [22 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last2x4c to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4c to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @pos2ctx_last.rel to i64)) to i32)], align 4
@pos2ctx_map4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0E", align 16
@pos2ctx_map8x8i = internal constant [64 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E\0E", align 16
@pos2ctx_map8x4i = internal constant [32 x i8] c"\00\01\02\03\04\05\06\03\04\05\06\03\04\07\06\08\09\07\06\08\09\0A\0B\0C\0C\0A\0B\0D\0D\0E\0E\0E", align 16
@pos2ctx_map4x8i = internal constant [32 x i8] c"\00\01\01\01\02\03\03\04\04\04\05\06\02\07\07\08\08\08\05\06\09\0A\0A\0B\0B\0B\0C\0D\0D\0E\0E\0E", align 16
@pos2ctx_map2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@pos2ctx_map4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16
@pos2ctx_map8x8 = internal constant [64 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C\0E", align 16
@pos2ctx_map8x4 = internal constant [32 x i8] c"\00\01\02\03\04\05\07\08\09\0A\0B\09\08\06\07\08\09\0A\0B\09\08\06\0C\08\09\0A\0B\09\0D\0D\0E\0E", align 16
@pos2ctx_last4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@pos2ctx_last8x8 = internal constant [64 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08\08", align 16
@pos2ctx_last8x4 = internal constant [32 x i8] c"\00\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\04\04\04\04\05\05\06\06\07\07\08\08", align 16
@pos2ctx_last2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@pos2ctx_last4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16
@type2ctx_abs = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 3, i16 4, i16 5, i16 6, i16 5, i16 5, i16 10, i16 11, i16 12, i16 13, i16 13, i16 14, i16 16, i16 17, i16 18, i16 19, i16 19, i16 20], align 16
@max_c2 = internal unnamed_addr constant [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 3, i16 4, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16

; Function Attrs: nounwind uwtable
define dso_local void @CheckAvailabilityOfNeighborsCABAC(ptr noundef %currMB) local_unnamed_addr #0 {
entry:
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left) #12
  %mb_size2 = getelementptr inbounds i8, ptr %0, i64 849124
  %getNeighbour = getelementptr inbounds i8, ptr %0, i64 856744
  %1 = load ptr, ptr %getNeighbour, align 8
  call void %1(ptr noundef %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2, ptr noundef nonnull %left) #12
  %2 = load ptr, ptr %getNeighbour, align 8
  call void %2(ptr noundef %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2, ptr noundef nonnull %up) #12
  %3 = load i32, ptr %up, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %currMB, align 8
  %mb_data = getelementptr inbounds i8, ptr %4, i64 13512
  %5 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %up, i64 4
  %6 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %arrayidx4.sink = phi ptr [ %arrayidx4, %if.then ], [ null, %entry ]
  %7 = getelementptr inbounds i8, ptr %currMB, i64 120
  store ptr %arrayidx4.sink, ptr %7, align 8
  %8 = load i32, ptr %left, align 4
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %currMB, align 8
  %mb_data10 = getelementptr inbounds i8, ptr %9, i64 13512
  %10 = load ptr, ptr %mb_data10, align 8
  %mb_addr11 = getelementptr inbounds i8, ptr %left, i64 4
  %11 = load i32, ptr %mb_addr11, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %idxprom12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  %arrayidx13.sink = phi ptr [ %arrayidx13, %if.then8 ], [ null, %if.end ]
  %12 = getelementptr inbounds i8, ptr %currMB, i64 128
  store ptr %arrayidx13.sink, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cabac_new_slice(ptr nocapture noundef writeonly %currSlice) local_unnamed_addr #2 {
entry:
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212
  store i32 0, ptr %last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_MotionInfo() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(364) ptr @calloc(i64 noundef 1, i64 noundef 364) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_TextureInfo() local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(6596) ptr @calloc(i64 noundef 1, i64 noundef 6596) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %call
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_MotionInfo(ptr noundef %deco_ctx) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq ptr %deco_ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @free(ptr noundef nonnull %deco_ctx) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_TextureInfo(ptr noundef %deco_ctx) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq ptr %deco_ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @free(ptr noundef nonnull %deco_ctx) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readFieldModeInfo_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %mbAvailA = getelementptr inbounds i8, ptr %currMB, i64 404
  %2 = load i32, ptr %mbAvailA, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512
  %3 = load ptr, ptr %mb_data, align 8
  %mbAddrA = getelementptr inbounds i8, ptr %currMB, i64 388
  %4 = load i32, ptr %mbAddrA, align 4
  %idxprom = sext i32 %4 to i64
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom, i32 45
  %5 = load i32, ptr %mb_field, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry ]
  %mbAvailB = getelementptr inbounds i8, ptr %currMB, i64 408
  %6 = load i32, ptr %mbAvailB, align 8
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %cond.end8, label %cond.true2

cond.true2:                                       ; preds = %cond.end
  %mb_data3 = getelementptr inbounds i8, ptr %0, i64 13512
  %7 = load ptr, ptr %mb_data3, align 8
  %mbAddrB = getelementptr inbounds i8, ptr %currMB, i64 392
  %8 = load i32, ptr %mbAddrB, align 8
  %idxprom4 = sext i32 %8 to i64
  %mb_field6 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom4, i32 45
  %9 = load i32, ptr %mb_field6, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true2
  %cond9 = phi i32 [ %9, %cond.true2 ], [ 0, %cond.end ]
  %add = add nsw i32 %cond9, %cond
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts, i64 0, i64 %idxprom10
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx11) #12
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %call, ptr %value1, align 4
  ret void
}

declare i32 @biari_decode_symbol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef %currSlice, ptr nocapture noundef %se, ptr noundef %act_dp) local_unnamed_addr #0 {
entry:
  %up.i137 = alloca %struct.pix_pos, align 4
  %left.i138 = alloca %struct.pix_pos, align 4
  %up.i = alloca %struct.pix_pos, align 4
  %left.i = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currSlice, align 8
  %mot_ctx2 = getelementptr inbounds i8, ptr %currSlice, i64 320
  %1 = load ptr, ptr %mot_ctx2, align 8
  %de_cabac = getelementptr inbounds i8, ptr %act_dp, i64 8
  %current_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 108
  %2 = load i32, ptr %current_mb_nr, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %current_mb_nr, align 4
  %mb_data = getelementptr inbounds i8, ptr %currSlice, i64 13512
  %3 = load ptr, ptr %mb_data, align 8
  %idxprom = zext i32 %inc to i64
  %arrayidx = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom
  %p_Vid4 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  store ptr %0, ptr %p_Vid4, align 8
  store ptr %currSlice, ptr %arrayidx, align 8
  %current_slice_nr = getelementptr inbounds i8, ptr %currSlice, i64 116
  %4 = load i16, ptr %current_slice_nr, align 4
  %slice_nr = getelementptr inbounds i8, ptr %arrayidx, i64 108
  store i16 %4, ptr %slice_nr, align 4
  %5 = load ptr, ptr %mb_data, align 8
  %6 = load i32, ptr %current_mb_nr, align 4
  %sub = add i32 %6, -1
  %idxprom7 = zext i32 %sub to i64
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom7, i32 45
  %7 = load i32, ptr %mb_field, align 8
  %mb_field9 = getelementptr inbounds i8, ptr %arrayidx, i64 384
  store i32 %7, ptr %mb_field9, align 8
  %8 = load i32, ptr %current_mb_nr, align 4
  %mbAddrX = getelementptr inbounds i8, ptr %arrayidx, i64 24
  store i32 %8, ptr %mbAddrX, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %9 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %9, 0
  %tobool12.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not
  %and = and i32 %8, 1
  %tobool14.not = icmp eq i32 %and, 0
  %10 = select i1 %tobool14.not, i16 2, i16 4
  %cond15 = select i1 %or.cond, i16 0, i16 %10
  %list_offset = getelementptr inbounds i8, ptr %arrayidx, i64 114
  store i16 %cond15, ptr %list_offset, align 2
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %arrayidx) #12
  %11 = load ptr, ptr %p_Vid4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #12
  %mb_size2.i = getelementptr inbounds i8, ptr %11, i64 849124
  %getNeighbour.i = getelementptr inbounds i8, ptr %11, i64 856744
  %12 = load ptr, ptr %getNeighbour.i, align 8
  call void %12(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %left.i) #12
  %13 = load ptr, ptr %getNeighbour.i, align 8
  call void %13(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %up.i) #12
  %14 = load i32, ptr %up.i, align 4
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %15 = load ptr, ptr %arrayidx, align 8
  %mb_data.i = getelementptr inbounds i8, ptr %15, i64 13512
  %16 = load ptr, ptr %mb_data.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %up.i, i64 4
  %17 = load i32, ptr %mb_addr.i, align 4
  %idxprom.i = sext i32 %17 to i64
  %arrayidx4.i = getelementptr inbounds %struct.macroblock, ptr %16, i64 %idxprom.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.then.i ], [ null, %entry ]
  %18 = getelementptr inbounds i8, ptr %arrayidx, i64 120
  store ptr %arrayidx4.sink.i, ptr %18, align 8
  %19 = load i32, ptr %left.i, align 4
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %CheckAvailabilityOfNeighborsCABAC.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %20 = load ptr, ptr %arrayidx, align 8
  %mb_data10.i = getelementptr inbounds i8, ptr %20, i64 13512
  %21 = load ptr, ptr %mb_data10.i, align 8
  %mb_addr11.i = getelementptr inbounds i8, ptr %left.i, i64 4
  %22 = load i32, ptr %mb_addr11.i, align 4
  %idxprom12.i = sext i32 %22 to i64
  %arrayidx13.i = getelementptr inbounds %struct.macroblock, ptr %21, i64 %idxprom12.i
  br label %CheckAvailabilityOfNeighborsCABAC.exit

CheckAvailabilityOfNeighborsCABAC.exit:           ; preds = %if.end.i, %if.then8.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then8.i ], [ null, %if.end.i ]
  %23 = getelementptr inbounds i8, ptr %arrayidx, i64 128
  store ptr %arrayidx13.sink.i, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i) #12
  %call = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %call17 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call17.1 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call17.2 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call21 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call, ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, i64 32, i1 false)
  %Dcodestrm_len = getelementptr inbounds i8, ptr %act_dp, i64 32
  %24 = load ptr, ptr %Dcodestrm_len, align 8
  %25 = load i32, ptr %24, align 4
  %Dcodestrm_len22 = getelementptr inbounds i8, ptr %call, i64 24
  %26 = load ptr, ptr %Dcodestrm_len22, align 8
  store i32 %25, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17, ptr noundef nonnull align 2 dereferenceable(44) %1, i64 44, i1 false)
  %arrayidx30.1 = getelementptr inbounds i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.1, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, i64 44, i1 false)
  %arrayidx30.2 = getelementptr inbounds i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.2, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, i64 44, i1 false)
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %call21, ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, i64 16, i1 false)
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212
  store i32 0, ptr %last_dquant, align 4
  %27 = load ptr, ptr %arrayidx, align 8
  %mot_ctx.i = getelementptr inbounds i8, ptr %27, i64 320
  %28 = load ptr, ptr %mot_ctx.i, align 8
  %29 = load ptr, ptr %23, align 8
  %cmp.not.i = icmp eq ptr %29, null
  br i1 %cmp.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %CheckAvailabilityOfNeighborsCABAC.exit
  %skip_flag.i = getelementptr inbounds i8, ptr %29, i64 374
  %30 = load i8, ptr %skip_flag.i, align 2
  %cmp2.i = icmp eq i8 %30, 0
  %conv3.i = zext i1 %cmp2.i to i64
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %CheckAvailabilityOfNeighborsCABAC.exit
  %cond.i = phi i64 [ %conv3.i, %cond.true.i ], [ 0, %CheckAvailabilityOfNeighborsCABAC.exit ]
  %31 = load ptr, ptr %18, align 8
  %cmp4.not.i = icmp eq ptr %31, null
  br i1 %cmp4.not.i, label %cond.end13.i, label %cond.true6.i

cond.true6.i:                                     ; preds = %cond.end.i
  %skip_flag8.i = getelementptr inbounds i8, ptr %31, i64 374
  %32 = load i8, ptr %skip_flag8.i, align 2
  %cmp10.i = icmp eq i8 %32, 0
  %conv11.i = zext i1 %cmp10.i to i64
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.true6.i, %cond.end.i
  %cond14.i = phi i64 [ %conv11.i, %cond.true6.i ], [ 0, %cond.end.i ]
  %add.i = add nuw nsw i64 %cond14.i, %cond.i
  %arrayidx.i = getelementptr inbounds i8, ptr %28, i64 44
  %arrayidx15.i = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx.i, i64 0, i64 %add.i
  %call.i = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx15.i) #12
  %cmp16.i = icmp eq i32 %call.i, 1
  %33 = getelementptr inbounds i8, ptr %se, i64 4
  br i1 %cmp16.i, label %read_skip_flag_CABAC_p_slice.exit, label %read_skip_flag_CABAC_p_slice.exit.thread

read_skip_flag_CABAC_p_slice.exit.thread:         ; preds = %cond.end13.i
  store i32 1, ptr %33, align 4
  br label %if.then

read_skip_flag_CABAC_p_slice.exit:                ; preds = %cond.end13.i
  store i32 0, ptr %33, align 4
  %last_dquant.i = getelementptr inbounds i8, ptr %27, i64 212
  store i32 0, ptr %last_dquant.i, align 4
  %.pr = load i32, ptr %33, align 4
  %cmp35 = icmp eq i32 %.pr, 0
  br i1 %cmp35, label %if.end, label %if.then

if.then:                                          ; preds = %read_skip_flag_CABAC_p_slice.exit.thread, %read_skip_flag_CABAC_p_slice.exit
  %34 = load ptr, ptr %arrayidx, align 8
  %mot_ctx.i128 = getelementptr inbounds i8, ptr %34, i64 320
  %35 = load ptr, ptr %mot_ctx.i128, align 8
  %mbAvailA.i = getelementptr inbounds i8, ptr %arrayidx, i64 404
  %36 = load i32, ptr %mbAvailA.i, align 4
  %tobool.not.i129 = icmp eq i32 %36, 0
  br i1 %tobool.not.i129, label %cond.end.i133, label %cond.true.i130

cond.true.i130:                                   ; preds = %if.then
  %mb_data.i131 = getelementptr inbounds i8, ptr %34, i64 13512
  %37 = load ptr, ptr %mb_data.i131, align 8
  %mbAddrA.i = getelementptr inbounds i8, ptr %arrayidx, i64 388
  %38 = load i32, ptr %mbAddrA.i, align 4
  %idxprom.i132 = sext i32 %38 to i64
  %mb_field.i = getelementptr inbounds %struct.macroblock, ptr %37, i64 %idxprom.i132, i32 45
  %39 = load i32, ptr %mb_field.i, align 8
  br label %cond.end.i133

cond.end.i133:                                    ; preds = %cond.true.i130, %if.then
  %cond.i134 = phi i32 [ %39, %cond.true.i130 ], [ 0, %if.then ]
  %mbAvailB.i = getelementptr inbounds i8, ptr %arrayidx, i64 408
  %40 = load i32, ptr %mbAvailB.i, align 8
  %tobool1.not.i = icmp eq i32 %40, 0
  br i1 %tobool1.not.i, label %readFieldModeInfo_CABAC.exit, label %cond.true2.i

cond.true2.i:                                     ; preds = %cond.end.i133
  %mb_data3.i = getelementptr inbounds i8, ptr %34, i64 13512
  %41 = load ptr, ptr %mb_data3.i, align 8
  %mbAddrB.i = getelementptr inbounds i8, ptr %arrayidx, i64 392
  %42 = load i32, ptr %mbAddrB.i, align 8
  %idxprom4.i = sext i32 %42 to i64
  %mb_field6.i = getelementptr inbounds %struct.macroblock, ptr %41, i64 %idxprom4.i, i32 45
  %43 = load i32, ptr %mb_field6.i, align 8
  br label %readFieldModeInfo_CABAC.exit

readFieldModeInfo_CABAC.exit:                     ; preds = %cond.end.i133, %cond.true2.i
  %cond9.i = phi i32 [ %43, %cond.true2.i ], [ 0, %cond.end.i133 ]
  %add.i135 = add nsw i32 %cond9.i, %cond.i134
  %mb_aff_contexts.i = getelementptr inbounds i8, ptr %35, i64 348
  %idxprom10.i = sext i32 %add.i135 to i64
  %arrayidx11.i = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts.i, i64 0, i64 %idxprom10.i
  %call.i136 = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx11.i) #12
  store i32 %call.i136, ptr %33, align 4
  %44 = load ptr, ptr %mb_data, align 8
  %45 = load i32, ptr %current_mb_nr, align 4
  %sub41 = add i32 %45, -1
  %idxprom42 = zext i32 %sub41 to i64
  %mb_field44 = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom42, i32 45
  store i32 %call.i136, ptr %mb_field44, align 8
  br label %if.end

if.end:                                           ; preds = %readFieldModeInfo_CABAC.exit, %read_skip_flag_CABAC_p_slice.exit
  %cmp35160 = phi i32 [ 0, %readFieldModeInfo_CABAC.exit ], [ 1, %read_skip_flag_CABAC_p_slice.exit ]
  %46 = load i32, ptr %current_mb_nr, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %current_mb_nr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, ptr noundef nonnull align 8 dereferenceable(32) %call, i64 32, i1 false)
  %47 = load ptr, ptr %Dcodestrm_len, align 8
  store i32 %25, ptr %47, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %1, ptr noundef nonnull align 2 dereferenceable(44) %call17, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, ptr noundef nonnull align 2 dereferenceable(44) %call17.1, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, ptr noundef nonnull align 2 dereferenceable(44) %call17.2, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, ptr noundef nonnull align 2 dereferenceable(16) %call21, i64 16, i1 false)
  %48 = load ptr, ptr %p_Vid4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i137) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i138) #12
  %mb_size2.i140 = getelementptr inbounds i8, ptr %48, i64 849124
  %getNeighbour.i141 = getelementptr inbounds i8, ptr %48, i64 856744
  %49 = load ptr, ptr %getNeighbour.i141, align 8
  call void %49(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i140, ptr noundef nonnull %left.i138) #12
  %50 = load ptr, ptr %getNeighbour.i141, align 8
  call void %50(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i140, ptr noundef nonnull %up.i137) #12
  %51 = load i32, ptr %up.i137, align 4
  %tobool.not.i142 = icmp eq i32 %51, 0
  br i1 %tobool.not.i142, label %if.end.i148, label %if.then.i143

if.then.i143:                                     ; preds = %if.end
  %52 = load ptr, ptr %arrayidx, align 8
  %mb_data.i144 = getelementptr inbounds i8, ptr %52, i64 13512
  %53 = load ptr, ptr %mb_data.i144, align 8
  %mb_addr.i145 = getelementptr inbounds i8, ptr %up.i137, i64 4
  %54 = load i32, ptr %mb_addr.i145, align 4
  %idxprom.i146 = sext i32 %54 to i64
  %arrayidx4.i147 = getelementptr inbounds %struct.macroblock, ptr %53, i64 %idxprom.i146
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.then.i143, %if.end
  %arrayidx4.sink.i149 = phi ptr [ %arrayidx4.i147, %if.then.i143 ], [ null, %if.end ]
  store ptr %arrayidx4.sink.i149, ptr %18, align 8
  %55 = load i32, ptr %left.i138, align 4
  %tobool7.not.i150 = icmp eq i32 %55, 0
  br i1 %tobool7.not.i150, label %CheckAvailabilityOfNeighborsCABAC.exit157, label %if.then8.i151

if.then8.i151:                                    ; preds = %if.end.i148
  %56 = load ptr, ptr %arrayidx, align 8
  %mb_data10.i152 = getelementptr inbounds i8, ptr %56, i64 13512
  %57 = load ptr, ptr %mb_data10.i152, align 8
  %mb_addr11.i153 = getelementptr inbounds i8, ptr %left.i138, i64 4
  %58 = load i32, ptr %mb_addr11.i153, align 4
  %idxprom12.i154 = sext i32 %58 to i64
  %arrayidx13.i155 = getelementptr inbounds %struct.macroblock, ptr %57, i64 %idxprom12.i154
  br label %CheckAvailabilityOfNeighborsCABAC.exit157

CheckAvailabilityOfNeighborsCABAC.exit157:        ; preds = %if.end.i148, %if.then8.i151
  %arrayidx13.sink.i156 = phi ptr [ %arrayidx13.i155, %if.then8.i151 ], [ null, %if.end.i148 ]
  store ptr %arrayidx13.sink.i156, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i138) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i137) #12
  call void @free(ptr noundef nonnull %call) #12
  call void @free(ptr noundef nonnull %call17) #12
  call void @free(ptr noundef nonnull %call17.1) #12
  call void @free(ptr noundef nonnull %call17.2) #12
  call void @free(ptr noundef nonnull %call21) #12
  ret i32 %cmp35160
}

declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %2 = load ptr, ptr %mb_left, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %skip_flag = getelementptr inbounds i8, ptr %2, i64 374
  %3 = load i8, ptr %skip_flag, align 2
  %cmp2 = icmp eq i8 %3, 0
  %conv3 = zext i1 %cmp2 to i64
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ 0, %entry ]
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %4 = load ptr, ptr %mb_up, align 8
  %cmp4.not = icmp eq ptr %4, null
  br i1 %cmp4.not, label %cond.end13, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  %skip_flag8 = getelementptr inbounds i8, ptr %4, i64 374
  %5 = load i8, ptr %skip_flag8, align 2
  %cmp10 = icmp eq i8 %5, 0
  %conv11 = zext i1 %cmp10 to i64
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.true6
  %cond14 = phi i64 [ %conv11, %cond.true6 ], [ 0, %cond.end ]
  %add = add nuw nsw i64 %cond14, %cond
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 44
  %arrayidx15 = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx, i64 0, i64 %add
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx15) #12
  %cmp16 = icmp eq i32 %call, 1
  %6 = getelementptr inbounds i8, ptr %se, i64 4
  br i1 %cmp16, label %if.then20, label %if.end

if.end:                                           ; preds = %cond.end13
  store i32 1, ptr %6, align 4
  br label %if.end21

if.then20:                                        ; preds = %cond.end13
  store i32 0, ptr %6, align 4
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212
  store i32 0, ptr %last_dquant, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef %currSlice, ptr nocapture noundef %se, ptr noundef %act_dp) local_unnamed_addr #0 {
entry:
  %up.i139 = alloca %struct.pix_pos, align 4
  %left.i140 = alloca %struct.pix_pos, align 4
  %up.i = alloca %struct.pix_pos, align 4
  %left.i = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currSlice, align 8
  %de_cabac = getelementptr inbounds i8, ptr %act_dp, i64 8
  %mot_ctx2 = getelementptr inbounds i8, ptr %currSlice, i64 320
  %1 = load ptr, ptr %mot_ctx2, align 8
  %current_mb_nr = getelementptr inbounds i8, ptr %currSlice, i64 108
  %2 = load i32, ptr %current_mb_nr, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %current_mb_nr, align 4
  %mb_data = getelementptr inbounds i8, ptr %currSlice, i64 13512
  %3 = load ptr, ptr %mb_data, align 8
  %idxprom = zext i32 %inc to i64
  %arrayidx = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom
  %p_Vid4 = getelementptr inbounds i8, ptr %arrayidx, i64 8
  store ptr %0, ptr %p_Vid4, align 8
  store ptr %currSlice, ptr %arrayidx, align 8
  %current_slice_nr = getelementptr inbounds i8, ptr %currSlice, i64 116
  %4 = load i16, ptr %current_slice_nr, align 4
  %slice_nr = getelementptr inbounds i8, ptr %arrayidx, i64 108
  store i16 %4, ptr %slice_nr, align 4
  %5 = load ptr, ptr %mb_data, align 8
  %6 = load i32, ptr %current_mb_nr, align 4
  %sub = add i32 %6, -1
  %idxprom7 = zext i32 %sub to i64
  %mb_field = getelementptr inbounds %struct.macroblock, ptr %5, i64 %idxprom7, i32 45
  %7 = load i32, ptr %mb_field, align 8
  %mb_field9 = getelementptr inbounds i8, ptr %arrayidx, i64 384
  store i32 %7, ptr %mb_field9, align 8
  %8 = load i32, ptr %current_mb_nr, align 4
  %mbAddrX = getelementptr inbounds i8, ptr %arrayidx, i64 24
  store i32 %8, ptr %mbAddrX, align 8
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %currSlice, i64 128
  %9 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool.not = icmp eq i32 %9, 0
  %tobool12.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool12.not
  %and = and i32 %8, 1
  %tobool14.not = icmp eq i32 %and, 0
  %10 = select i1 %tobool14.not, i16 2, i16 4
  %cond15 = select i1 %or.cond, i16 0, i16 %10
  %list_offset = getelementptr inbounds i8, ptr %arrayidx, i64 114
  store i16 %cond15, ptr %list_offset, align 2
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %arrayidx) #12
  %11 = load ptr, ptr %p_Vid4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #12
  %mb_size2.i = getelementptr inbounds i8, ptr %11, i64 849124
  %getNeighbour.i = getelementptr inbounds i8, ptr %11, i64 856744
  %12 = load ptr, ptr %getNeighbour.i, align 8
  call void %12(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %left.i) #12
  %13 = load ptr, ptr %getNeighbour.i, align 8
  call void %13(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i, ptr noundef nonnull %up.i) #12
  %14 = load i32, ptr %up.i, align 4
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %15 = load ptr, ptr %arrayidx, align 8
  %mb_data.i = getelementptr inbounds i8, ptr %15, i64 13512
  %16 = load ptr, ptr %mb_data.i, align 8
  %mb_addr.i = getelementptr inbounds i8, ptr %up.i, i64 4
  %17 = load i32, ptr %mb_addr.i, align 4
  %idxprom.i = sext i32 %17 to i64
  %arrayidx4.i = getelementptr inbounds %struct.macroblock, ptr %16, i64 %idxprom.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.then.i ], [ null, %entry ]
  %18 = getelementptr inbounds i8, ptr %arrayidx, i64 120
  store ptr %arrayidx4.sink.i, ptr %18, align 8
  %19 = load i32, ptr %left.i, align 4
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %CheckAvailabilityOfNeighborsCABAC.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %20 = load ptr, ptr %arrayidx, align 8
  %mb_data10.i = getelementptr inbounds i8, ptr %20, i64 13512
  %21 = load ptr, ptr %mb_data10.i, align 8
  %mb_addr11.i = getelementptr inbounds i8, ptr %left.i, i64 4
  %22 = load i32, ptr %mb_addr11.i, align 4
  %idxprom12.i = sext i32 %22 to i64
  %arrayidx13.i = getelementptr inbounds %struct.macroblock, ptr %21, i64 %idxprom12.i
  br label %CheckAvailabilityOfNeighborsCABAC.exit

CheckAvailabilityOfNeighborsCABAC.exit:           ; preds = %if.end.i, %if.then8.i
  %arrayidx13.sink.i = phi ptr [ %arrayidx13.i, %if.then8.i ], [ null, %if.end.i ]
  %23 = getelementptr inbounds i8, ptr %arrayidx, i64 128
  store ptr %arrayidx13.sink.i, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i) #12
  %call = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %call17 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call17.1 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call17.2 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %call21 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %call, ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, i64 32, i1 false)
  %Dcodestrm_len = getelementptr inbounds i8, ptr %act_dp, i64 32
  %24 = load ptr, ptr %Dcodestrm_len, align 8
  %25 = load i32, ptr %24, align 4
  %Dcodestrm_len22 = getelementptr inbounds i8, ptr %call, i64 24
  %26 = load ptr, ptr %Dcodestrm_len22, align 8
  store i32 %25, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17, ptr noundef nonnull align 2 dereferenceable(44) %1, i64 44, i1 false)
  %arrayidx30.1 = getelementptr inbounds i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.1, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, i64 44, i1 false)
  %arrayidx30.2 = getelementptr inbounds i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %call17.2, ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, i64 44, i1 false)
  %mb_aff_contexts = getelementptr inbounds i8, ptr %1, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %call21, ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, i64 16, i1 false)
  %last_dquant = getelementptr inbounds i8, ptr %currSlice, i64 212
  store i32 0, ptr %last_dquant, align 4
  %27 = load ptr, ptr %arrayidx, align 8
  %mot_ctx.i = getelementptr inbounds i8, ptr %27, i64 320
  %28 = load ptr, ptr %mot_ctx.i, align 8
  %29 = load ptr, ptr %23, align 8
  %cmp.not.i = icmp eq ptr %29, null
  br i1 %cmp.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %CheckAvailabilityOfNeighborsCABAC.exit
  %skip_flag.i = getelementptr inbounds i8, ptr %29, i64 374
  %30 = load i8, ptr %skip_flag.i, align 2
  %cmp2.i = icmp eq i8 %30, 0
  %31 = select i1 %cmp2.i, i64 8, i64 7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %CheckAvailabilityOfNeighborsCABAC.exit
  %cond.i = phi i64 [ %31, %cond.true.i ], [ 7, %CheckAvailabilityOfNeighborsCABAC.exit ]
  %32 = load ptr, ptr %18, align 8
  %cmp4.not.i = icmp eq ptr %32, null
  br i1 %cmp4.not.i, label %cond.end13.i, label %cond.true6.i

cond.true6.i:                                     ; preds = %cond.end.i
  %skip_flag8.i = getelementptr inbounds i8, ptr %32, i64 374
  %33 = load i8, ptr %skip_flag8.i, align 2
  %cmp10.i = icmp eq i8 %33, 0
  %conv11.i = zext i1 %cmp10.i to i64
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.true6.i, %cond.end.i
  %cond14.i = phi i64 [ %conv11.i, %cond.true6.i ], [ 0, %cond.end.i ]
  %add15.i = add nuw nsw i64 %cond14.i, %cond.i
  %arrayidx.i = getelementptr inbounds i8, ptr %28, i64 88
  %arrayidx16.i = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx.i, i64 0, i64 %add15.i
  %call.i = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx16.i) #12
  %cmp17.i = icmp eq i32 %call.i, 1
  %34 = getelementptr inbounds i8, ptr %se, i64 8
  %35 = getelementptr inbounds i8, ptr %se, i64 4
  br i1 %cmp17.i, label %read_skip_flag_CABAC_b_slice.exit, label %read_skip_flag_CABAC_b_slice.exit.thread

read_skip_flag_CABAC_b_slice.exit.thread:         ; preds = %cond.end13.i
  store i32 1, ptr %34, align 8
  store i32 1, ptr %35, align 4
  br label %if.then

read_skip_flag_CABAC_b_slice.exit:                ; preds = %cond.end13.i
  store i32 0, ptr %34, align 8
  store i32 0, ptr %35, align 4
  %last_dquant.i = getelementptr inbounds i8, ptr %27, i64 212
  store i32 0, ptr %last_dquant.i, align 4
  %.pr = load i32, ptr %35, align 4
  %cmp35 = icmp eq i32 %.pr, 0
  br i1 %cmp35, label %land.end, label %if.then

land.end:                                         ; preds = %read_skip_flag_CABAC_b_slice.exit
  %36 = load i32, ptr %34, align 8
  %cmp37 = icmp eq i32 %36, 0
  br i1 %cmp37, label %if.end, label %if.then

if.then:                                          ; preds = %read_skip_flag_CABAC_b_slice.exit.thread, %read_skip_flag_CABAC_b_slice.exit, %land.end
  %37 = load ptr, ptr %arrayidx, align 8
  %mot_ctx.i131 = getelementptr inbounds i8, ptr %37, i64 320
  %38 = load ptr, ptr %mot_ctx.i131, align 8
  %mbAvailA.i = getelementptr inbounds i8, ptr %arrayidx, i64 404
  %39 = load i32, ptr %mbAvailA.i, align 4
  %tobool.not.i132 = icmp eq i32 %39, 0
  br i1 %tobool.not.i132, label %cond.end.i136, label %cond.true.i133

cond.true.i133:                                   ; preds = %if.then
  %mb_data.i134 = getelementptr inbounds i8, ptr %37, i64 13512
  %40 = load ptr, ptr %mb_data.i134, align 8
  %mbAddrA.i = getelementptr inbounds i8, ptr %arrayidx, i64 388
  %41 = load i32, ptr %mbAddrA.i, align 4
  %idxprom.i135 = sext i32 %41 to i64
  %mb_field.i = getelementptr inbounds %struct.macroblock, ptr %40, i64 %idxprom.i135, i32 45
  %42 = load i32, ptr %mb_field.i, align 8
  br label %cond.end.i136

cond.end.i136:                                    ; preds = %cond.true.i133, %if.then
  %cond.i137 = phi i32 [ %42, %cond.true.i133 ], [ 0, %if.then ]
  %mbAvailB.i = getelementptr inbounds i8, ptr %arrayidx, i64 408
  %43 = load i32, ptr %mbAvailB.i, align 8
  %tobool1.not.i = icmp eq i32 %43, 0
  br i1 %tobool1.not.i, label %readFieldModeInfo_CABAC.exit, label %cond.true2.i

cond.true2.i:                                     ; preds = %cond.end.i136
  %mb_data3.i = getelementptr inbounds i8, ptr %37, i64 13512
  %44 = load ptr, ptr %mb_data3.i, align 8
  %mbAddrB.i = getelementptr inbounds i8, ptr %arrayidx, i64 392
  %45 = load i32, ptr %mbAddrB.i, align 8
  %idxprom4.i = sext i32 %45 to i64
  %mb_field6.i = getelementptr inbounds %struct.macroblock, ptr %44, i64 %idxprom4.i, i32 45
  %46 = load i32, ptr %mb_field6.i, align 8
  br label %readFieldModeInfo_CABAC.exit

readFieldModeInfo_CABAC.exit:                     ; preds = %cond.end.i136, %cond.true2.i
  %cond9.i = phi i32 [ %46, %cond.true2.i ], [ 0, %cond.end.i136 ]
  %add.i = add nsw i32 %cond9.i, %cond.i137
  %mb_aff_contexts.i = getelementptr inbounds i8, ptr %38, i64 348
  %idxprom10.i = sext i32 %add.i to i64
  %arrayidx11.i = getelementptr inbounds [4 x %struct.BiContextType], ptr %mb_aff_contexts.i, i64 0, i64 %idxprom10.i
  %call.i138 = call i32 @biari_decode_symbol(ptr noundef nonnull %de_cabac, ptr noundef nonnull %arrayidx11.i) #12
  store i32 %call.i138, ptr %35, align 4
  %47 = load ptr, ptr %mb_data, align 8
  %48 = load i32, ptr %current_mb_nr, align 4
  %sub43 = add i32 %48, -1
  %idxprom44 = zext i32 %sub43 to i64
  %mb_field46 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %idxprom44, i32 45
  store i32 %call.i138, ptr %mb_field46, align 8
  br label %if.end

if.end:                                           ; preds = %readFieldModeInfo_CABAC.exit, %land.end
  %land.ext = phi i32 [ 0, %readFieldModeInfo_CABAC.exit ], [ 1, %land.end ]
  %49 = load i32, ptr %current_mb_nr, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %current_mb_nr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %de_cabac, ptr noundef nonnull align 8 dereferenceable(32) %call, i64 32, i1 false)
  %50 = load ptr, ptr %Dcodestrm_len, align 8
  store i32 %25, ptr %50, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %1, ptr noundef nonnull align 2 dereferenceable(44) %call17, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.1, ptr noundef nonnull align 2 dereferenceable(44) %call17.1, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %arrayidx30.2, ptr noundef nonnull align 2 dereferenceable(44) %call17.2, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %mb_aff_contexts, ptr noundef nonnull align 2 dereferenceable(16) %call21, i64 16, i1 false)
  %51 = load ptr, ptr %p_Vid4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %up.i139) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i140) #12
  %mb_size2.i142 = getelementptr inbounds i8, ptr %51, i64 849124
  %getNeighbour.i143 = getelementptr inbounds i8, ptr %51, i64 856744
  %52 = load ptr, ptr %getNeighbour.i143, align 8
  call void %52(ptr noundef nonnull %arrayidx, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size2.i142, ptr noundef nonnull %left.i140) #12
  %53 = load ptr, ptr %getNeighbour.i143, align 8
  call void %53(ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size2.i142, ptr noundef nonnull %up.i139) #12
  %54 = load i32, ptr %up.i139, align 4
  %tobool.not.i144 = icmp eq i32 %54, 0
  br i1 %tobool.not.i144, label %if.end.i150, label %if.then.i145

if.then.i145:                                     ; preds = %if.end
  %55 = load ptr, ptr %arrayidx, align 8
  %mb_data.i146 = getelementptr inbounds i8, ptr %55, i64 13512
  %56 = load ptr, ptr %mb_data.i146, align 8
  %mb_addr.i147 = getelementptr inbounds i8, ptr %up.i139, i64 4
  %57 = load i32, ptr %mb_addr.i147, align 4
  %idxprom.i148 = sext i32 %57 to i64
  %arrayidx4.i149 = getelementptr inbounds %struct.macroblock, ptr %56, i64 %idxprom.i148
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then.i145, %if.end
  %arrayidx4.sink.i151 = phi ptr [ %arrayidx4.i149, %if.then.i145 ], [ null, %if.end ]
  store ptr %arrayidx4.sink.i151, ptr %18, align 8
  %58 = load i32, ptr %left.i140, align 4
  %tobool7.not.i152 = icmp eq i32 %58, 0
  br i1 %tobool7.not.i152, label %CheckAvailabilityOfNeighborsCABAC.exit159, label %if.then8.i153

if.then8.i153:                                    ; preds = %if.end.i150
  %59 = load ptr, ptr %arrayidx, align 8
  %mb_data10.i154 = getelementptr inbounds i8, ptr %59, i64 13512
  %60 = load ptr, ptr %mb_data10.i154, align 8
  %mb_addr11.i155 = getelementptr inbounds i8, ptr %left.i140, i64 4
  %61 = load i32, ptr %mb_addr11.i155, align 4
  %idxprom12.i156 = sext i32 %61 to i64
  %arrayidx13.i157 = getelementptr inbounds %struct.macroblock, ptr %60, i64 %idxprom12.i156
  br label %CheckAvailabilityOfNeighborsCABAC.exit159

CheckAvailabilityOfNeighborsCABAC.exit159:        ; preds = %if.end.i150, %if.then8.i153
  %arrayidx13.sink.i158 = phi ptr [ %arrayidx13.i157, %if.then8.i153 ], [ null, %if.end.i150 ]
  store ptr %arrayidx13.sink.i158, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i140) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %up.i139) #12
  call void @free(ptr noundef nonnull %call) #12
  call void @free(ptr noundef nonnull %call17) #12
  call void @free(ptr noundef nonnull %call17.1) #12
  call void @free(ptr noundef nonnull %call17.2) #12
  call void @free(ptr noundef nonnull %call21) #12
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %2 = load ptr, ptr %mb_left, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %skip_flag = getelementptr inbounds i8, ptr %2, i64 374
  %3 = load i8, ptr %skip_flag, align 2
  %cmp2 = icmp eq i8 %3, 0
  %4 = select i1 %cmp2, i64 8, i64 7
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 7, %entry ]
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %5 = load ptr, ptr %mb_up, align 8
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %cond.end13, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  %skip_flag8 = getelementptr inbounds i8, ptr %5, i64 374
  %6 = load i8, ptr %skip_flag8, align 2
  %cmp10 = icmp eq i8 %6, 0
  %conv11 = zext i1 %cmp10 to i64
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.true6
  %cond14 = phi i64 [ %conv11, %cond.true6 ], [ 0, %cond.end ]
  %add15 = add nuw nsw i64 %cond14, %cond
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 88
  %arrayidx16 = getelementptr inbounds [11 x %struct.BiContextType], ptr %arrayidx, i64 0, i64 %add15
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx16) #12
  %cmp17 = icmp eq i32 %call, 1
  %7 = getelementptr inbounds i8, ptr %se, i64 8
  %8 = getelementptr inbounds i8, ptr %se, i64 4
  br i1 %cmp17, label %if.then22, label %if.end

if.end:                                           ; preds = %cond.end13
  store i32 1, ptr %7, align 8
  store i32 1, ptr %8, align 4
  br label %if.end23

if.then22:                                        ; preds = %cond.end13
  store i32 0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212
  store i32 0, ptr %last_dquant, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @read_MVD_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %1, i64 320
  %2 = load ptr, ptr %mot_ctx, align 8
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60
  %3 = load i32, ptr %subblock_x, align 4
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64
  %4 = load i32, ptr %subblock_y, align 8
  %value2 = getelementptr inbounds i8, ptr %se, i64 8
  %5 = load i32, ptr %value2, align 8
  %and = and i32 %5, 1
  %shr = ashr i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12
  %sub = add nsw i32 %3, -1
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %4, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  %6 = load i32, ptr %block_a, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end40, label %if.then

if.then:                                          ; preds = %entry
  %mb_data = getelementptr inbounds i8, ptr %1, i64 13512
  %7 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %block_a, i64 4
  %8 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %8 to i64
  %idxprom4 = zext nneg i32 %and to i64
  %y = getelementptr inbounds i8, ptr %block_a, i64 10
  %9 = load i16, ptr %y, align 2
  %idxprom6 = sext i16 %9 to i64
  %x = getelementptr inbounds i8, ptr %block_a, i64 8
  %10 = load i16, ptr %x, align 4
  %idxprom8 = sext i16 %10 to i64
  %idxprom10 = sext i32 %shr to i64
  %arrayidx11 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 31, i64 %idxprom4, i64 %idxprom6, i64 %idxprom8, i64 %idxprom10
  %11 = load i16, ptr %arrayidx11, align 2
  %12 = call i16 @llvm.abs.i16(i16 %11, i1 false)
  %sub.i = zext i16 %12 to i32
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %1, i64 128
  %13 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool12 = icmp ne i32 %13, 0
  %cmp = icmp eq i32 %shr, 1
  %or.cond = select i1 %tobool12, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then14, label %if.end40

if.then14:                                        ; preds = %if.then
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %14 = load i32, ptr %mb_field, align 8
  switch i32 %14, label %if.end40 [
    i32 0, label %land.lhs.true17
    i32 1, label %land.lhs.true29
  ]

land.lhs.true17:                                  ; preds = %if.then14
  %mb_field22 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 45
  %15 = load i32, ptr %mb_field22, align 8
  %cmp23 = icmp eq i32 %15, 1
  %mul = zext i1 %cmp23 to i32
  %spec.select188 = shl nuw nsw i32 %sub.i, %mul
  br label %if.end40

land.lhs.true29:                                  ; preds = %if.then14
  %mb_field34 = getelementptr inbounds %struct.macroblock, ptr %7, i64 %idxprom, i32 45
  %16 = load i32, ptr %mb_field34, align 8
  %cmp35 = icmp eq i32 %16, 0
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %land.lhs.true29
  %div186187190 = lshr i16 %12, 1
  %div186.zext = zext nneg i16 %div186187190 to i32
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true17, %if.then14, %if.then, %land.lhs.true29, %if.then37, %entry
  %a.0 = phi i32 [ %div186.zext, %if.then37 ], [ %sub.i, %land.lhs.true29 ], [ %sub.i, %if.then ], [ 0, %entry ], [ %spec.select188, %land.lhs.true17 ], [ %sub.i, %if.then14 ]
  %sub41 = add nsw i32 %4, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %3, i32 noundef %sub41, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12
  %17 = load i32, ptr %block_b, align 4
  %tobool46.not = icmp eq i32 %17, 0
  br i1 %tobool46.not, label %if.end101, label %if.then47

if.then47:                                        ; preds = %if.end40
  %mb_data48 = getelementptr inbounds i8, ptr %1, i64 13512
  %18 = load ptr, ptr %mb_data48, align 8
  %mb_addr49 = getelementptr inbounds i8, ptr %block_b, i64 4
  %19 = load i32, ptr %mb_addr49, align 4
  %idxprom50 = sext i32 %19 to i64
  %idxprom53 = zext nneg i32 %and to i64
  %y55 = getelementptr inbounds i8, ptr %block_b, i64 10
  %20 = load i16, ptr %y55, align 2
  %idxprom56 = sext i16 %20 to i64
  %x58 = getelementptr inbounds i8, ptr %block_b, i64 8
  %21 = load i16, ptr %x58, align 4
  %idxprom59 = sext i16 %21 to i64
  %idxprom61 = sext i32 %shr to i64
  %arrayidx62 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 31, i64 %idxprom53, i64 %idxprom56, i64 %idxprom59, i64 %idxprom61
  %22 = load i16, ptr %arrayidx62, align 2
  %23 = call i16 @llvm.abs.i16(i16 %22, i1 false)
  %sub.i181 = zext i16 %23 to i32
  %mb_aff_frame_flag65 = getelementptr inbounds i8, ptr %1, i64 128
  %24 = load i32, ptr %mb_aff_frame_flag65, align 8
  %tobool66 = icmp ne i32 %24, 0
  %cmp68 = icmp eq i32 %shr, 1
  %or.cond136 = select i1 %tobool66, i1 %cmp68, i1 false
  br i1 %or.cond136, label %if.then70, label %if.end101

if.then70:                                        ; preds = %if.then47
  %mb_field71 = getelementptr inbounds i8, ptr %currMB, i64 384
  %25 = load i32, ptr %mb_field71, align 8
  switch i32 %25, label %if.end101 [
    i32 0, label %land.lhs.true74
    i32 1, label %land.lhs.true88
  ]

land.lhs.true74:                                  ; preds = %if.then70
  %mb_field79 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 45
  %26 = load i32, ptr %mb_field79, align 8
  %cmp80 = icmp eq i32 %26, 1
  %mul83 = zext i1 %cmp80 to i32
  %spec.select189 = shl nuw nsw i32 %sub.i181, %mul83
  br label %if.end101

land.lhs.true88:                                  ; preds = %if.then70
  %mb_field93 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom50, i32 45
  %27 = load i32, ptr %mb_field93, align 8
  %cmp94 = icmp eq i32 %27, 0
  br i1 %cmp94, label %if.then96, label %if.end101

if.then96:                                        ; preds = %land.lhs.true88
  %div97184185191 = lshr i16 %23, 1
  %div97184.zext = zext nneg i16 %div97184185191 to i32
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true74, %if.then70, %if.then47, %land.lhs.true88, %if.then96, %if.end40
  %b.0 = phi i32 [ %div97184.zext, %if.then96 ], [ %sub.i181, %land.lhs.true88 ], [ %sub.i181, %if.then47 ], [ 0, %if.end40 ], [ %spec.select189, %land.lhs.true74 ], [ %sub.i181, %if.then70 ]
  %add = add nuw nsw i32 %b.0, %a.0
  %cmp102 = icmp ult i32 %add, 3
  br i1 %cmp102, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.end101
  %mul105 = mul nsw i32 %shr, 5
  br label %if.end116

if.else106:                                       ; preds = %if.end101
  %cmp107 = icmp ugt i32 %add, 32
  %mul110 = mul nsw i32 %shr, 5
  br i1 %cmp107, label %if.then109, label %if.else112

if.then109:                                       ; preds = %if.else106
  %add111 = add nsw i32 %mul110, 3
  br label %if.end116

if.else112:                                       ; preds = %if.else106
  %add114 = add nsw i32 %mul110, 2
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %if.else112, %if.then104
  %act_ctx.0 = phi i32 [ %mul105, %if.then104 ], [ %add111, %if.then109 ], [ %add114, %if.else112 ]
  %context = getelementptr inbounds i8, ptr %se, i64 24
  store i32 %act_ctx.0, ptr %context, align 8
  %mv_res_contexts = getelementptr inbounds i8, ptr %2, i64 204
  %idxprom118 = sext i32 %act_ctx.0 to i64
  %arrayidx119 = getelementptr inbounds [10 x %struct.BiContextType], ptr %mv_res_contexts, i64 0, i64 %idxprom118
  %call120 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx119) #12
  %cmp121.not = icmp eq i32 %call120, 0
  br i1 %cmp121.not, label %if.end135, label %if.then123

if.then123:                                       ; preds = %if.end116
  %mul124 = mul nsw i32 %shr, 5
  %arrayidx126 = getelementptr inbounds i8, ptr %2, i64 244
  %idx.ext = sext i32 %mul124 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %arrayidx126, i64 %idx.ext
  %call.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %unary_exp_golomb_mv_decode.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then123
  %incdec.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %call1.peel.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr.i) #12
  %cmp11.peel.not.i = icmp eq i32 %call1.peel.i, 0
  br i1 %cmp11.peel.not.i, label %unary_exp_golomb_mv_decode.exit, label %do.body.peel.next.i

do.body.peel.next.i:                              ; preds = %if.else.i
  %spec.select.peel.i = getelementptr inbounds i8, ptr %add.ptr, i64 8
  %call1.peel32.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %spec.select.peel.i) #12
  %ctx.addr.2.peel39.i = getelementptr inbounds i8, ptr %add.ptr, i64 12
  %cmp11.peel41.not.i = icmp eq i32 %call1.peel32.i, 0
  br i1 %cmp11.peel41.not.i, label %unary_exp_golomb_mv_decode.exit, label %do.body.i

do.body.i:                                        ; preds = %do.body.peel.next.i, %do.body.i
  %symbol.0.i = phi i32 [ %inc9.i, %do.body.i ], [ 2, %do.body.peel.next.i ]
  %k.0.i = phi i32 [ %inc10.i, %do.body.i ], [ 3, %do.body.peel.next.i ]
  %call1.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %ctx.addr.2.peel39.i) #12
  %inc10.i = add nuw nsw i32 %k.0.i, 1
  %inc9.i = add nuw nsw i32 %symbol.0.i, 1
  %cmp11.i = icmp ne i32 %call1.i, 0
  %cmp12.i = icmp ne i32 %inc10.i, 8
  %28 = select i1 %cmp11.i, i1 %cmp12.i, i1 false
  br i1 %28, label %do.body.i, label %do.end.i, !llvm.loop !5

do.end.i:                                         ; preds = %do.body.i
  %29 = add nuw i32 %symbol.0.i, 2
  br i1 %cmp11.i, label %do.body.i.i, label %unary_exp_golomb_mv_decode.exit

do.body.i.i:                                      ; preds = %do.end.i, %do.body.i.i
  %k.addr.0.i.i = phi i32 [ %k.addr.1.i.i, %do.body.i.i ], [ 3, %do.end.i ]
  %symbol.0.i.i = phi i32 [ %symbol.1.i.i, %do.body.i.i ], [ 0, %do.end.i ]
  %call.i.i = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  %shl.i.i = shl nuw i32 1, %k.addr.0.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %k.addr.1.i.i = add nuw nsw i32 %k.addr.0.i.i, %inc.i.i
  %add.i.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 0
  %symbol.1.i.i = add nsw i32 %add.i.i, %symbol.0.i.i
  %cmp1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i.i, label %while.body.i.i, label %do.body.i.i

while.body.i.i:                                   ; preds = %do.body.i.i, %while.body.i.i
  %binary_symbol.017.i.i = phi i32 [ %binary_symbol.1.i.i, %while.body.i.i ], [ 0, %do.body.i.i ]
  %k.addr.216.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %k.addr.1.i.i, %do.body.i.i ]
  %dec.i.i = add nsw i32 %k.addr.216.i.i, -1
  %call2.i.i = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %cmp3.i.i = icmp eq i32 %call2.i.i, 1
  %shl5.i.i = shl nuw i32 1, %dec.i.i
  %or.i.i = select i1 %cmp3.i.i, i32 %shl5.i.i, i32 0
  %binary_symbol.1.i.i = or i32 %or.i.i, %binary_symbol.017.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %exp_golomb_decode_eq_prob.exit.i, label %while.body.i.i

exp_golomb_decode_eq_prob.exit.i:                 ; preds = %while.body.i.i
  %add.i = add i32 %29, %symbol.1.i.i
  %add16.i = add i32 %add.i, %binary_symbol.1.i.i
  br label %unary_exp_golomb_mv_decode.exit

unary_exp_golomb_mv_decode.exit:                  ; preds = %if.then123, %if.else.i, %do.body.peel.next.i, %do.end.i, %exp_golomb_decode_eq_prob.exit.i
  %retval.0.i = phi i32 [ 0, %if.then123 ], [ %add16.i, %exp_golomb_decode_eq_prob.exit.i ], [ %inc9.i, %do.end.i ], [ 2, %do.body.peel.next.i ], [ 1, %if.else.i ]
  %add129 = add i32 %retval.0.i, 1
  %call130 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %tobool131.not = icmp eq i32 %call130, 0
  %sub133 = xor i32 %retval.0.i, -1
  %spec.select = select i1 %tobool131.not, i32 %add129, i32 %sub133
  br label %if.end135

if.end135:                                        ; preds = %unary_exp_golomb_mv_decode.exit, %if.end116
  %act_sym.0 = phi i32 [ 0, %if.end116 ], [ %spec.select, %unary_exp_golomb_mv_decode.exit ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %act_sym.0, ptr %value1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12
  ret void
}

declare void @get4x4NeighbourBase(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @biari_decode_symbol_eq_prob(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 136
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end14

if.else:                                          ; preds = %entry
  %incdec.ptr3 = getelementptr inbounds i8, ptr %1, i64 144
  %call4 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr3) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.else
  %incdec.ptr7 = getelementptr inbounds i8, ptr %1, i64 148
  %call8 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr7) #12
  %tobool9.not = icmp eq i32 %call8, 0
  %. = select i1 %tobool9.not, i32 3, i32 2
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6, %entry
  %act_sym.0 = phi i32 [ 0, %entry ], [ %., %if.then6 ], [ 1, %if.else ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %act_sym.0, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 168
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end48, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 172
  %call3 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else38, label %if.then5

if.then5:                                         ; preds = %if.then
  %incdec.ptr2 = getelementptr inbounds i8, ptr %1, i64 176
  %incdec.ptr6 = getelementptr inbounds i8, ptr %1, i64 180
  %call7 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr2) #12
  %tobool8.not = icmp eq i32 %call7, 0
  %call27 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool8.not, label %if.else26, label %if.then9

if.then9:                                         ; preds = %if.then5
  %call16 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool28.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then9
  %spec.select = select i1 %tobool17.not, i32 10, i32 11
  br label %if.end45

if.else:                                          ; preds = %if.then9
  %spec.select73 = select i1 %tobool17.not, i32 6, i32 8
  %call20 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12
  %tobool21.not = icmp ne i32 %call20, 0
  %inc23 = zext i1 %tobool21.not to i32
  %spec.select75 = or disjoint i32 %spec.select73, %inc23
  br label %if.end45

if.else26:                                        ; preds = %if.then5
  %spec.select74 = select i1 %tobool28.not, i32 2, i32 4
  %call32 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr6) #12
  %tobool33.not = icmp ne i32 %call32, 0
  %add35 = zext i1 %tobool33.not to i32
  %spec.select76 = or disjoint i32 %spec.select74, %add35
  br label %if.end45

if.else38:                                        ; preds = %if.then
  %incdec.ptr39 = getelementptr inbounds i8, ptr %1, i64 180
  %call40 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %incdec.ptr39) #12
  %tobool41.not = icmp ne i32 %call40, 0
  %. = zext i1 %tobool41.not to i32
  br label %if.end45

if.end45:                                         ; preds = %if.else26, %if.else, %if.then12, %if.else38
  %act_sym.2 = phi i32 [ %spec.select, %if.then12 ], [ %., %if.else38 ], [ %spec.select75, %if.else ], [ %spec.select76, %if.else26 ]
  %inc46 = add nuw nsw i32 %act_sym.2, 1
  br label %if.end48

if.end48:                                         ; preds = %entry, %if.end45
  %act_sym.3 = phi i32 [ %inc46, %if.end45 ], [ 0, %entry ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %act_sym.3, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_transform_size_flag_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328
  %1 = load ptr, ptr %tex_ctx, align 8
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %2 = load ptr, ptr %mb_up, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %luma_transform_size_8x8_flag = getelementptr inbounds i8, ptr %2, i64 420
  %3 = load i32, ptr %luma_transform_size_8x8_flag, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry ]
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %4 = load ptr, ptr %mb_left, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %cond.end7, label %cond.false4

cond.false4:                                      ; preds = %cond.end
  %luma_transform_size_8x8_flag6 = getelementptr inbounds i8, ptr %4, i64 420
  %5 = load i32, ptr %luma_transform_size_8x8_flag6, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end, %cond.false4
  %cond8 = phi i32 [ %5, %cond.false4 ], [ 0, %cond.end ]
  %add = add nsw i32 %cond8, %cond
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr) #12
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %call, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_i_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164
  %2 = load i32, ptr %slice_type, align 4
  switch i32 %2, label %if.end209 [
    i32 2, label %if.then
    i32 4, label %if.then86
  ]

if.then:                                          ; preds = %entry
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %3 = load ptr, ptr %mb_up, align 8
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %mb_type = getelementptr inbounds i8, ptr %3, i64 152
  %4 = load i16, ptr %mb_type, align 8
  %5 = and i16 %4, -5
  %narrow = icmp ne i16 %5, 9
  %cond = zext i1 %narrow to i32
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %b.0 = phi i32 [ %cond, %if.then2 ], [ 0, %if.then ]
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %6 = load ptr, ptr %mb_left, align 8
  %cmp11.not = icmp eq ptr %6, null
  br i1 %cmp11.not, label %if.end27, label %if.then13

if.then13:                                        ; preds = %if.end
  %mb_type15 = getelementptr inbounds i8, ptr %6, i64 152
  %7 = load i16, ptr %mb_type15, align 8
  %8 = and i16 %7, -5
  %narrow307 = icmp ne i16 %8, 9
  %cond26 = zext i1 %narrow307 to i32
  br label %if.end27

if.end27:                                         ; preds = %if.then13, %if.end
  %a.0 = phi i32 [ %cond26, %if.then13 ], [ 0, %if.end ]
  %add = add nuw nsw i32 %a.0, %b.0
  %idx.ext = zext nneg i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr) #12
  %context = getelementptr inbounds i8, ptr %se, i64 24
  store i32 %add, ptr %context, align 8
  %cmp28 = icmp eq i32 %call, 0
  br i1 %cmp28, label %if.end209, label %if.else

if.else:                                          ; preds = %if.end27
  %call31 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12
  %cmp32 = icmp eq i32 %call31, 1
  br i1 %cmp32, label %if.end209, label %if.else35

if.else35:                                        ; preds = %if.else
  %add.ptr40 = getelementptr inbounds i8, ptr %1, i64 16
  %call41 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr40) #12
  %mul = mul nsw i32 %call41, 12
  %add42 = or disjoint i32 %mul, 1
  %add.ptr47 = getelementptr inbounds i8, ptr %1, i64 20
  %call48 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr47) #12
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %if.end209.sink.split, label %if.then51

if.then51:                                        ; preds = %if.else35
  %add.ptr56 = getelementptr inbounds i8, ptr %1, i64 24
  %call57 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr56) #12
  %cmp59.not = icmp eq i32 %call57, 0
  %spec.select.v = select i1 %cmp59.not, i32 5, i32 9
  %spec.select = add nsw i32 %spec.select.v, %mul
  br label %if.end209.sink.split

if.then86:                                        ; preds = %entry
  %mb_up87 = getelementptr inbounds i8, ptr %currMB, i64 120
  %9 = load ptr, ptr %mb_up87, align 8
  %cmp88.not = icmp eq ptr %9, null
  br i1 %cmp88.not, label %if.end97, label %if.then90

if.then90:                                        ; preds = %if.then86
  %mb_type92 = getelementptr inbounds i8, ptr %9, i64 152
  %10 = load i16, ptr %mb_type92, align 8
  %cmp94.not = icmp ne i16 %10, 12
  %cond96 = zext i1 %cmp94.not to i32
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.then86
  %b.1 = phi i32 [ %cond96, %if.then90 ], [ 0, %if.then86 ]
  %mb_left98 = getelementptr inbounds i8, ptr %currMB, i64 128
  %11 = load ptr, ptr %mb_left98, align 8
  %cmp99.not = icmp eq ptr %11, null
  br i1 %cmp99.not, label %if.end108, label %if.then101

if.then101:                                       ; preds = %if.end97
  %mb_type103 = getelementptr inbounds i8, ptr %11, i64 152
  %12 = load i16, ptr %mb_type103, align 8
  %cmp105.not = icmp ne i16 %12, 12
  %cond107 = zext i1 %cmp105.not to i32
  br label %if.end108

if.end108:                                        ; preds = %if.then101, %if.end97
  %a.1 = phi i32 [ %cond107, %if.then101 ], [ 0, %if.end97 ]
  %add109 = add nuw nsw i32 %a.1, %b.1
  %arrayidx111 = getelementptr inbounds i8, ptr %1, i64 44
  %idx.ext113 = zext nneg i32 %add109 to i64
  %add.ptr114 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx111, i64 %idx.ext113
  %call115 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr114) #12
  %context116 = getelementptr inbounds i8, ptr %se, i64 24
  store i32 %add109, ptr %context116, align 8
  %cmp117 = icmp eq i32 %call115, 0
  br i1 %cmp117, label %if.end209, label %if.else120

if.else120:                                       ; preds = %if.end108
  %13 = load ptr, ptr %mb_up87, align 8
  %cmp122.not = icmp eq ptr %13, null
  br i1 %cmp122.not, label %if.end131, label %if.then124

if.then124:                                       ; preds = %if.else120
  %mb_type126 = getelementptr inbounds i8, ptr %13, i64 152
  %14 = load i16, ptr %mb_type126, align 8
  %cmp128.not = icmp ne i16 %14, 9
  %cond130 = zext i1 %cmp128.not to i32
  br label %if.end131

if.end131:                                        ; preds = %if.then124, %if.else120
  %b.2 = phi i32 [ %cond130, %if.then124 ], [ %b.1, %if.else120 ]
  %15 = load ptr, ptr %mb_left98, align 8
  %cmp133.not = icmp eq ptr %15, null
  br i1 %cmp133.not, label %if.end142, label %if.then135

if.then135:                                       ; preds = %if.end131
  %mb_type137 = getelementptr inbounds i8, ptr %15, i64 152
  %16 = load i16, ptr %mb_type137, align 8
  %cmp139.not = icmp ne i16 %16, 9
  %cond141 = zext i1 %cmp139.not to i32
  br label %if.end142

if.end142:                                        ; preds = %if.then135, %if.end131
  %a.2 = phi i32 [ %cond141, %if.then135 ], [ %a.1, %if.end131 ]
  %add143 = add nuw nsw i32 %a.2, %b.2
  %idx.ext147 = zext nneg i32 %add143 to i64
  %add.ptr148 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 %idx.ext147
  %call149 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef %add.ptr148) #12
  store i32 %add143, ptr %context116, align 8
  %cmp151 = icmp eq i32 %call149, 0
  br i1 %cmp151, label %if.end209, label %if.else154

if.else154:                                       ; preds = %if.end142
  %call155 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12
  %cmp156 = icmp eq i32 %call155, 1
  br i1 %cmp156, label %if.end209, label %if.else159

if.else159:                                       ; preds = %if.else154
  %add.ptr164 = getelementptr inbounds i8, ptr %1, i64 16
  %call165 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr164) #12
  %mul166 = mul nsw i32 %call165, 12
  %add167 = or disjoint i32 %mul166, 2
  %add.ptr172 = getelementptr inbounds i8, ptr %1, i64 20
  %call173 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr172) #12
  %cmp174.not = icmp eq i32 %call173, 0
  br i1 %cmp174.not, label %if.end209.sink.split, label %if.then176

if.then176:                                       ; preds = %if.else159
  %add.ptr181 = getelementptr inbounds i8, ptr %1, i64 24
  %call182 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr181) #12
  %cmp184.not = icmp eq i32 %call182, 0
  %spec.select306.v = select i1 %cmp184.not, i32 6, i32 10
  %spec.select306 = add nsw i32 %spec.select306.v, %mul166
  br label %if.end209.sink.split

if.end209.sink.split:                             ; preds = %if.else159, %if.then176, %if.else35, %if.then51
  %act_sym.1.sink = phi i32 [ %add42, %if.else35 ], [ %spec.select, %if.then51 ], [ %add167, %if.else159 ], [ %spec.select306, %if.then176 ]
  %add.ptr194 = getelementptr inbounds i8, ptr %1, i64 28
  %call195 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr194) #12
  %mul196 = shl nsw i32 %call195, 1
  %add197 = add nsw i32 %mul196, %act_sym.1.sink
  %add.ptr202 = getelementptr inbounds i8, ptr %1, i64 32
  %call203 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr202) #12
  %add204 = add nsw i32 %add197, %call203
  br label %if.end209

if.end209:                                        ; preds = %if.end209.sink.split, %if.else154, %if.end142, %if.end108, %entry, %if.else, %if.end27
  %curr_mb_type.0 = phi i32 [ 0, %if.end27 ], [ 25, %if.else ], [ 0, %entry ], [ 0, %if.end108 ], [ 1, %if.end142 ], [ 26, %if.else154 ], [ %add204, %if.end209.sink.split ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %curr_mb_type.0, ptr %value1, align 4
  ret void
}

declare i32 @biari_decode_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 60
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx2) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else7, label %if.end26

if.else7:                                         ; preds = %entry
  %arrayidx8 = getelementptr inbounds i8, ptr %1, i64 64
  %call9 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx8) #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else18, label %if.then11

if.then11:                                        ; preds = %if.else7
  %arrayidx12 = getelementptr inbounds i8, ptr %1, i64 72
  %call13 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx12) #12
  %tobool14.not = icmp eq i32 %call13, 0
  %.95 = select i1 %tobool14.not, i32 3, i32 2
  br label %if.end58

if.else18:                                        ; preds = %if.else7
  %arrayidx19 = getelementptr inbounds i8, ptr %1, i64 68
  %call20 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx19) #12
  %tobool21.not = icmp eq i32 %call20, 0
  %.96 = select i1 %tobool21.not, i32 1, i32 4
  br label %if.end58

if.end26:                                         ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 72
  %call4 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx3) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end58, label %if.else28

if.else28:                                        ; preds = %if.end26
  %call29 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.end58, label %if.else32

if.else32:                                        ; preds = %if.else28
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 76
  %call33 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %mul = mul nsw i32 %call33, 12
  %add = add nsw i32 %mul, 7
  %add.ptr35 = getelementptr inbounds i8, ptr %1, i64 80
  %call36 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr35) #12
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end47, label %if.then38

if.then38:                                        ; preds = %if.else32
  %call42 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr35) #12
  %cmp43.not = icmp eq i32 %call42, 0
  %spec.select.v = select i1 %cmp43.not, i32 11, i32 15
  %spec.select = add nsw i32 %spec.select.v, %mul
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.else32
  %act_sym.1 = phi i32 [ %add, %if.else32 ], [ %spec.select, %if.then38 ]
  %add.ptr49 = getelementptr inbounds i8, ptr %1, i64 84
  %call50 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr49) #12
  %mul51 = shl nsw i32 %call50, 1
  %add52 = add nsw i32 %mul51, %act_sym.1
  %call55 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr49) #12
  %add56 = add nsw i32 %add52, %call55
  br label %if.end58

if.end58:                                         ; preds = %if.else18, %if.then11, %if.else28, %if.end26, %if.end47
  %curr_mb_type.0 = phi i32 [ %add56, %if.end47 ], [ 6, %if.end26 ], [ 31, %if.else28 ], [ %.96, %if.else18 ], [ %.95, %if.then11 ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %curr_mb_type.0, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 88
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %2 = load ptr, ptr %mb_up, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mb_type = getelementptr inbounds i8, ptr %2, i64 152
  %3 = load i16, ptr %mb_type, align 8
  %cmp3.not = icmp ne i16 %3, 0
  %cond = zext i1 %cmp3.not to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %b.0 = phi i64 [ %cond, %if.then ], [ 0, %entry ]
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %4 = load ptr, ptr %mb_left, align 8
  %cmp5.not = icmp eq ptr %4, null
  br i1 %cmp5.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end
  %mb_type9 = getelementptr inbounds i8, ptr %4, i64 152
  %5 = load i16, ptr %mb_type9, align 8
  %cmp11.not = icmp ne i16 %5, 0
  %cond13 = zext i1 %cmp11.not to i64
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end
  %a.0 = phi i64 [ %cond13, %if.then7 ], [ 0, %if.end ]
  %6 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx, i64 %a.0
  %arrayidx15 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %b.0
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx15) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end132, label %if.then16

if.then16:                                        ; preds = %if.end14
  %arrayidx17 = getelementptr inbounds i8, ptr %1, i64 104
  %call18 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx17) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else82, label %if.then20

if.then20:                                        ; preds = %if.then16
  %arrayidx21 = getelementptr inbounds i8, ptr %1, i64 108
  %call22 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx21) #12
  %tobool23.not = icmp eq i32 %call22, 0
  %arrayidx63 = getelementptr inbounds i8, ptr %1, i64 112
  %call64 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12
  %tobool65.not = icmp eq i32 %call64, 0
  %call70 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12
  %tobool71.not = icmp eq i32 %call70, 0
  %call76 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12
  br i1 %tobool23.not, label %if.else62, label %if.then24

if.then24:                                        ; preds = %if.then20
  %spec.select = select i1 %tobool65.not, i32 12, i32 20
  %add35 = add nuw nsw i32 %spec.select, 4
  %act_sym.1 = select i1 %tobool71.not, i32 %spec.select, i32 %add35
  %tobool39.not = icmp eq i32 %call76, 0
  %add41 = or disjoint i32 %act_sym.1, 2
  %act_sym.2 = select i1 %tobool39.not, i32 %act_sym.1, i32 %add41
  switch i32 %act_sym.2, label %if.end91 [
    i32 24, label %if.end132
    i32 26, label %if.then48
  ]

if.then48:                                        ; preds = %if.then24
  br label %if.end132

if.else62:                                        ; preds = %if.then20
  %spec.select198 = select i1 %tobool65.not, i32 3, i32 7
  %add73 = add nuw nsw i32 %spec.select198, 2
  %act_sym.4 = select i1 %tobool71.not, i32 %spec.select198, i32 %add73
  %tobool77.not = icmp ne i32 %call76, 0
  %add79 = zext i1 %tobool77.not to i32
  %spec.select200 = add nuw nsw i32 %act_sym.4, %add79
  br label %if.end132

if.else82:                                        ; preds = %if.then16
  %arrayidx83 = getelementptr inbounds i8, ptr %1, i64 112
  %call84 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx83) #12
  %tobool85.not = icmp eq i32 %call84, 0
  %. = select i1 %tobool85.not, i32 1, i32 2
  br label %if.end132

if.end91:                                         ; preds = %if.then24
  %cmp50 = icmp eq i32 %act_sym.2, 22
  %spec.store.select = select i1 %cmp50, i32 23, i32 %act_sym.2
  %call55 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %arrayidx63) #12
  %tobool56.not = icmp ne i32 %call55, 0
  %add58 = zext i1 %tobool56.not to i32
  %spec.select197 = add nuw nsw i32 %spec.store.select, %add58
  %cmp92 = icmp ult i32 %spec.select197, 24
  br i1 %cmp92, label %if.end132, label %if.else95

if.else95:                                        ; preds = %if.end91
  %call96 = tail call i32 @biari_decode_final(ptr noundef %dep_dp) #12
  %cmp97 = icmp eq i32 %call96, 1
  br i1 %cmp97, label %if.end132, label %if.else100

if.else100:                                       ; preds = %if.else95
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 76
  %call104 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %mul = mul nsw i32 %call104, 12
  %add105 = add nsw i32 %mul, %spec.select197
  %add.ptr107 = getelementptr inbounds i8, ptr %1, i64 80
  %call108 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr107) #12
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %if.end121, label %if.then111

if.then111:                                       ; preds = %if.else100
  %call115 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr107) #12
  %cmp116.not = icmp eq i32 %call115, 0
  %spec.select199.v = select i1 %cmp116.not, i32 4, i32 8
  %spec.select199 = add nsw i32 %spec.select199.v, %add105
  br label %if.end121

if.end121:                                        ; preds = %if.then111, %if.else100
  %act_sym.6 = phi i32 [ %add105, %if.else100 ], [ %spec.select199, %if.then111 ]
  %add.ptr123 = getelementptr inbounds i8, ptr %1, i64 84
  %call124 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr123) #12
  %mul125 = shl nsw i32 %call124, 1
  %add126 = add nsw i32 %mul125, %act_sym.6
  %call129 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr123) #12
  %add130 = add nsw i32 %add126, %call129
  br label %if.end132

if.end132:                                        ; preds = %if.else62, %if.end14, %if.else82, %if.then24, %if.then48, %if.else95, %if.end91, %if.end121
  %curr_mb_type.0 = phi i32 [ %add130, %if.end121 ], [ %spec.select197, %if.end91 ], [ 48, %if.else95 ], [ %spec.select200, %if.else62 ], [ 0, %if.end14 ], [ %., %if.else82 ], [ 11, %if.then24 ], [ 22, %if.then48 ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %curr_mb_type.0, ptr %value1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readIntraPredMode_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328
  %1 = load ptr, ptr %tex_ctx, align 8
  %ipr_contexts = getelementptr inbounds i8, ptr %1, i64 12
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %ipr_contexts) #12
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 -1, ptr %value1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 16
  %call3 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %value14 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %call3, ptr %value14, align 4
  %call8 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %shl = shl i32 %call8, 1
  %2 = load i32, ptr %value14, align 4
  %or = or i32 %2, %shl
  store i32 %or, ptr %value14, align 4
  %call13 = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %shl14 = shl i32 %call13, 2
  %3 = load i32, ptr %value14, align 4
  %or16 = or i32 %3, %shl14
  store i32 %or16, ptr %value14, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readRefFrame_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %3 = load ptr, ptr %mot_ctx, align 8
  %value2 = getelementptr inbounds i8, ptr %se, i64 8
  %4 = load i32, ptr %value2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60
  %5 = load i32, ptr %subblock_x, align 4
  %sub = add nsw i32 %5, -1
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64
  %6 = load i32, ptr %subblock_y, align 8
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %6, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  %7 = load i32, ptr %subblock_x, align 4
  %8 = load i32, ptr %subblock_y, align 8
  %sub5 = add nsw i32 %8, -1
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %7, i32 noundef %sub5, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12
  %9 = load i32, ptr %block_b, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end66, label %if.then

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds i8, ptr %block_b, i64 8
  %10 = load i16, ptr %x, align 4
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 1
  %y = getelementptr inbounds i8, ptr %block_b, i64 10
  %13 = load i16, ptr %y, align 2
  %14 = and i16 %13, 2
  %add211 = or disjoint i16 %12, %14
  %mb_data = getelementptr inbounds i8, ptr %0, i64 13512
  %15 = load ptr, ptr %mb_data, align 8
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4
  %16 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %idxprom
  %mb_type = getelementptr inbounds i8, ptr %arrayidx11, i64 152
  %17 = load i16, ptr %mb_type, align 8
  switch i16 %17, label %lor.lhs.false20 [
    i16 14, label %if.end66
    i16 0, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.then
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164
  %18 = load i32, ptr %slice_type, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.end66, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.then, %land.lhs.true
  %b8mode = getelementptr inbounds i8, ptr %arrayidx11, i64 364
  %idxprom21 = zext nneg i16 %add211 to i64
  %arrayidx22 = getelementptr inbounds [4 x i8], ptr %b8mode, i64 0, i64 %idxprom21
  %19 = load i8, ptr %arrayidx22, align 1
  %cmp24 = icmp eq i8 %19, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.then32

land.lhs.true26:                                  ; preds = %lor.lhs.false20
  %b8pdir = getelementptr inbounds i8, ptr %arrayidx11, i64 368
  %arrayidx28 = getelementptr inbounds [4 x i8], ptr %b8pdir, i64 0, i64 %idxprom21
  %20 = load i8, ptr %arrayidx28, align 1
  %cmp30 = icmp eq i8 %20, 2
  br i1 %cmp30, label %if.end66, label %if.then32

if.then32:                                        ; preds = %land.lhs.true26, %lor.lhs.false20
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %0, i64 128
  %21 = load i32, ptr %mb_aff_frame_flag, align 8
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %if.else, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.then32
  %mb_field = getelementptr inbounds i8, ptr %currMB, i64 384
  %22 = load i32, ptr %mb_field, align 8
  %cmp35 = icmp eq i32 %22, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.else

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %mb_field38 = getelementptr inbounds i8, ptr %arrayidx11, i64 384
  %23 = load i32, ptr %mb_field38, align 8
  %cmp39 = icmp eq i32 %23, 1
  br i1 %cmp39, label %if.end66.sink.split, label %if.else

if.else:                                          ; preds = %land.lhs.true37, %land.lhs.true34, %if.then32
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %land.lhs.true37, %if.else
  %.sink213 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true37 ]
  %mv_info51 = getelementptr inbounds i8, ptr %2, i64 152
  %24 = load ptr, ptr %mv_info51, align 8
  %pos_y52 = getelementptr inbounds i8, ptr %block_b, i64 14
  %25 = load i16, ptr %pos_y52, align 2
  %idxprom53 = sext i16 %25 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %24, i64 %idxprom53
  %26 = load ptr, ptr %arrayidx54, align 8
  %pos_x55 = getelementptr inbounds i8, ptr %block_b, i64 12
  %27 = load i16, ptr %pos_x55, align 4
  %idxprom56 = sext i16 %27 to i64
  %idxprom59 = sext i32 %4 to i64
  %arrayidx60 = getelementptr inbounds %struct.pic_motion_params, ptr %26, i64 %idxprom56, i32 2, i64 %idxprom59
  %28 = load i8, ptr %arrayidx60, align 1
  %cmp62 = icmp sgt i8 %28, %.sink213
  %cond64 = select i1 %cmp62, i32 2, i32 0
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %land.lhs.true, %land.lhs.true26, %if.then, %entry
  %b.1 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true26 ], [ %cond64, %if.end66.sink.split ]
  %29 = load i32, ptr %block_a, align 4
  %tobool68.not = icmp eq i32 %29, 0
  br i1 %tobool68.not, label %if.end152, label %if.then69

if.then69:                                        ; preds = %if.end66
  %x70 = getelementptr inbounds i8, ptr %block_a, i64 8
  %30 = load i16, ptr %x70, align 4
  %31 = lshr i16 %30, 1
  %32 = and i16 %31, 1
  %y74 = getelementptr inbounds i8, ptr %block_a, i64 10
  %33 = load i16, ptr %y74, align 2
  %34 = and i16 %33, 2
  %add77212 = or disjoint i16 %32, %34
  %mb_data78 = getelementptr inbounds i8, ptr %0, i64 13512
  %35 = load ptr, ptr %mb_data78, align 8
  %mb_addr79 = getelementptr inbounds i8, ptr %block_a, i64 4
  %36 = load i32, ptr %mb_addr79, align 4
  %idxprom80 = sext i32 %36 to i64
  %arrayidx81 = getelementptr inbounds %struct.macroblock, ptr %35, i64 %idxprom80
  %mb_type82 = getelementptr inbounds i8, ptr %arrayidx81, i64 152
  %37 = load i16, ptr %mb_type82, align 8
  switch i16 %37, label %lor.lhs.false95 [
    i16 14, label %if.end152
    i16 0, label %land.lhs.true91
  ]

land.lhs.true91:                                  ; preds = %if.then69
  %slice_type92 = getelementptr inbounds i8, ptr %0, i64 164
  %38 = load i32, ptr %slice_type92, align 4
  %cmp93 = icmp eq i32 %38, 1
  br i1 %cmp93, label %if.end152, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.then69, %land.lhs.true91
  %b8mode96 = getelementptr inbounds i8, ptr %arrayidx81, i64 364
  %idxprom97 = zext nneg i16 %add77212 to i64
  %arrayidx98 = getelementptr inbounds [4 x i8], ptr %b8mode96, i64 0, i64 %idxprom97
  %39 = load i8, ptr %arrayidx98, align 1
  %cmp100 = icmp eq i8 %39, 0
  br i1 %cmp100, label %land.lhs.true102, label %if.then109

land.lhs.true102:                                 ; preds = %lor.lhs.false95
  %b8pdir103 = getelementptr inbounds i8, ptr %arrayidx81, i64 368
  %arrayidx105 = getelementptr inbounds [4 x i8], ptr %b8pdir103, i64 0, i64 %idxprom97
  %40 = load i8, ptr %arrayidx105, align 1
  %cmp107 = icmp eq i8 %40, 2
  br i1 %cmp107, label %if.end152, label %if.then109

if.then109:                                       ; preds = %land.lhs.true102, %lor.lhs.false95
  %mb_aff_frame_flag110 = getelementptr inbounds i8, ptr %0, i64 128
  %41 = load i32, ptr %mb_aff_frame_flag110, align 8
  %tobool111.not = icmp eq i32 %41, 0
  br i1 %tobool111.not, label %if.else135, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.then109
  %mb_field113 = getelementptr inbounds i8, ptr %currMB, i64 384
  %42 = load i32, ptr %mb_field113, align 8
  %cmp114 = icmp eq i32 %42, 0
  br i1 %cmp114, label %land.lhs.true116, label %if.else135

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %mb_field117 = getelementptr inbounds i8, ptr %arrayidx81, i64 384
  %43 = load i32, ptr %mb_field117, align 8
  %cmp118 = icmp eq i32 %43, 1
  br i1 %cmp118, label %if.end151.sink.split, label %if.else135

if.else135:                                       ; preds = %land.lhs.true116, %land.lhs.true112, %if.then109
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %land.lhs.true116, %if.else135
  %.sink216 = phi i8 [ 0, %if.else135 ], [ 1, %land.lhs.true116 ]
  %mv_info121 = getelementptr inbounds i8, ptr %2, i64 152
  %44 = load ptr, ptr %mv_info121, align 8
  %pos_y122 = getelementptr inbounds i8, ptr %block_a, i64 14
  %45 = load i16, ptr %pos_y122, align 2
  %idxprom123 = sext i16 %45 to i64
  %arrayidx124 = getelementptr inbounds ptr, ptr %44, i64 %idxprom123
  %46 = load ptr, ptr %arrayidx124, align 8
  %pos_x125 = getelementptr inbounds i8, ptr %block_a, i64 12
  %47 = load i16, ptr %pos_x125, align 4
  %idxprom126 = sext i16 %47 to i64
  %idxprom129 = sext i32 %4 to i64
  %arrayidx130 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom126, i32 2, i64 %idxprom129
  %48 = load i8, ptr %arrayidx130, align 1
  %cmp132 = icmp sgt i8 %48, %.sink216
  %49 = zext i1 %cmp132 to i32
  br label %if.end152

if.end152:                                        ; preds = %land.lhs.true91, %land.lhs.true102, %if.then69, %if.end151.sink.split, %if.end66
  %a.1 = phi i32 [ 0, %if.end66 ], [ 0, %if.then69 ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true102 ], [ %49, %if.end151.sink.split ]
  %add153 = or disjoint i32 %a.1, %b.1
  %context = getelementptr inbounds i8, ptr %se, i64 24
  store i32 %add153, ptr %context, align 8
  %ref_no_contexts = getelementptr inbounds i8, ptr %3, i64 284
  %idx.ext = zext nneg i32 %add153 to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %ref_no_contexts, i64 %idx.ext
  %call = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %cmp157.not = icmp eq i32 %call, 0
  br i1 %cmp157.not, label %if.end167, label %if.then159

if.then159:                                       ; preds = %if.end152
  %add.ptr165 = getelementptr inbounds i8, ptr %3, i64 300
  %call.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr165) #12
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end167, label %if.else.i

if.else.i:                                        ; preds = %if.then159
  %add.ptr.i = getelementptr inbounds i8, ptr %3, i64 304
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.else.i
  %symbol.0.i = phi i32 [ 0, %if.else.i ], [ %inc.i, %do.body.i ]
  %call1.i = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12
  %inc.i = add i32 %symbol.0.i, 1
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %unary_bin_decode.exit.loopexit, label %do.body.i

unary_bin_decode.exit.loopexit:                   ; preds = %do.body.i
  %50 = add i32 %symbol.0.i, 2
  br label %if.end167

if.end167:                                        ; preds = %if.then159, %unary_bin_decode.exit.loopexit, %if.end152
  %act_sym.0 = phi i32 [ 0, %if.end152 ], [ 1, %if.then159 ], [ %50, %unary_bin_decode.exit.loopexit ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %act_sym.0, ptr %value1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12
  ret void
}

declare void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @read_dQuant_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %mot_ctx = getelementptr inbounds i8, ptr %0, i64 320
  %1 = load ptr, ptr %mot_ctx, align 8
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  %last_dquant = getelementptr inbounds i8, ptr %0, i64 212
  %2 = load i32, ptr %last_dquant, align 4
  %cmp.not = icmp ne i32 %2, 0
  %delta_qp_contexts = getelementptr inbounds i8, ptr %1, i64 332
  %idx.ext = zext i1 %cmp.not to i64
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %delta_qp_contexts, i64 %idx.ext
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end9.sink.split, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr5 = getelementptr inbounds i8, ptr %1, i64 340
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr5) #12
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end9.sink.split, label %if.else.i

if.else.i:                                        ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 344
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.else.i
  %symbol.0.i = phi i32 [ 0, %if.else.i ], [ %inc.i, %do.body.i ]
  %call1.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12
  %inc.i = add i32 %symbol.0.i, 1
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %unary_bin_decode.exit, label %do.body.i

unary_bin_decode.exit:                            ; preds = %do.body.i
  %add = add i32 %symbol.0.i, 3
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %value1, align 4
  %3 = and i32 %symbol.0.i, 1
  %cmp7.not.not = icmp eq i32 %3, 0
  br i1 %cmp7.not.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %unary_bin_decode.exit
  %sub = sub nsw i32 0, %shr
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %entry, %if.then, %if.then8
  %.sink = phi i32 [ %sub, %if.then8 ], [ 1, %if.then ], [ 0, %entry ]
  store i32 %.sink, ptr %value1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %unary_bin_decode.exit
  %4 = phi i32 [ %shr, %unary_bin_decode.exit ], [ %.sink, %if.end9.sink.split ]
  store i32 %4, ptr %last_dquant, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @read_CBP_CABAC(ptr noundef %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %1 = load ptr, ptr %currMB, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %1, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %tex_ctx = getelementptr inbounds i8, ptr %1, i64 328
  %3 = load ptr, ptr %tex_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12
  %mb_size = getelementptr inbounds i8, ptr %0, i64 849124
  %mb_data = getelementptr inbounds i8, ptr %1, i64 13512
  %mb_addr = getelementptr inbounds i8, ptr %block_a, i64 4
  %y = getelementptr inbounds i8, ptr %block_a, i64 10
  %cbp_contexts = getelementptr inbounds i8, ptr %3, i64 36
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %4 = load ptr, ptr %mb_up, align 8
  %cmp10.not237 = icmp eq ptr %4, null
  %mb_type238 = getelementptr inbounds i8, ptr %4, i64 152
  %cbp15239 = getelementptr inbounds i8, ptr %4, i64 284
  br i1 %cmp10.not237, label %if.then28.us, label %if.then11.us

if.then11.us:                                     ; preds = %entry
  %5 = load i16, ptr %mb_type238, align 8
  %cmp12.not.us = icmp eq i16 %5, 14
  br i1 %cmp12.not.us, label %if.then28.us, label %if.then14.us

if.then14.us:                                     ; preds = %if.then11.us
  %6 = load i32, ptr %cbp15239, align 4
  %and.us = lshr i32 %6, 1
  %7 = and i32 %and.us, 2
  %cond.us = xor i32 %7, 2
  br label %if.then28.us

if.then28.us:                                     ; preds = %entry, %if.then11.us, %if.then14.us
  %b.3.us = phi i32 [ %cond.us, %if.then14.us ], [ 0, %if.then11.us ], [ 0, %entry ]
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  %8 = load i32, ptr %block_a, align 4
  %tobool.not.us = icmp eq i32 %8, 0
  br i1 %tobool.not.us, label %if.end61.us, label %if.then31.us

if.then31.us:                                     ; preds = %if.then28.us
  %9 = load ptr, ptr %mb_data, align 8
  %10 = load i32, ptr %mb_addr, align 4
  %idxprom.us = sext i32 %10 to i64
  %arrayidx32.us = getelementptr inbounds %struct.macroblock, ptr %9, i64 %idxprom.us
  %mb_type33.us = getelementptr inbounds i8, ptr %arrayidx32.us, i64 152
  %11 = load i16, ptr %mb_type33.us, align 8
  %cmp35.us = icmp eq i16 %11, 14
  br i1 %cmp35.us, label %if.end61.us, label %if.else38.us

if.else38.us:                                     ; preds = %if.then31.us
  %cbp43.us = getelementptr inbounds i8, ptr %arrayidx32.us, i64 284
  %12 = load i32, ptr %cbp43.us, align 4
  %13 = load i16, ptr %y, align 2
  %14 = sdiv i16 %13, 2
  %div45.us = sext i16 %14 to i32
  %mul.us = shl nsw i32 %div45.us, 1
  %shl47.us = shl nuw i32 2, %mul.us
  %and48.us = and i32 %shl47.us, %12
  %cmp49.us = icmp eq i32 %and48.us, 0
  %cond51.us = zext i1 %cmp49.us to i32
  br label %if.end61.us

if.end61.us:                                      ; preds = %if.else38.us, %if.then31.us, %if.then28.us
  %a.0.us = phi i32 [ %cond51.us, %if.else38.us ], [ 0, %if.then31.us ], [ 0, %if.then28.us ]
  %add62.us = add nuw nsw i32 %a.0.us, %b.3.us
  %idx.ext.us = zext nneg i32 %add62.us to i64
  %add.ptr.us = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.us
  %call.us = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.us) #12
  %tobool68.not.us = icmp ne i32 %call.us, 0
  %add70.us = zext i1 %tobool68.not.us to i32
  br i1 %cmp10.not237, label %for.inc73, label %if.then11.us.1

if.then11.us.1:                                   ; preds = %if.end61.us
  %15 = load i16, ptr %mb_type238, align 8
  %cmp12.not.us.1 = icmp eq i16 %15, 14
  br i1 %cmp12.not.us.1, label %for.inc73, label %if.then14.us.1

if.then14.us.1:                                   ; preds = %if.then11.us.1
  %16 = load i32, ptr %cbp15239, align 4
  %and.us.1 = lshr i32 %16, 2
  %17 = and i32 %and.us.1, 2
  %cond.us.1 = xor i32 %17, 2
  br label %for.inc73

if.then31:                                        ; preds = %for.inc73
  %18 = load ptr, ptr %mb_data, align 8
  %19 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %idxprom
  %mb_type33 = getelementptr inbounds i8, ptr %arrayidx32, i64 152
  %20 = load i16, ptr %mb_type33, align 8
  %cmp35 = icmp eq i16 %20, 14
  br i1 %cmp35, label %for.end75, label %if.else38

if.else38:                                        ; preds = %if.then31
  %cbp43 = getelementptr inbounds i8, ptr %arrayidx32, i64 284
  %21 = load i32, ptr %cbp43, align 4
  %22 = load i16, ptr %y, align 2
  %23 = sdiv i16 %22, 2
  %div45 = sext i16 %23 to i32
  %mul = shl nsw i32 %div45, 1
  %shl47 = shl nuw i32 2, %mul
  %and48 = and i32 %shl47, %21
  %cmp49 = icmp eq i32 %and48, 0
  %cond51 = zext i1 %cmp49 to i64
  br label %for.end75

for.inc73:                                        ; preds = %if.end61.us, %if.then11.us.1, %if.then14.us.1
  %b.3.us.1 = phi i32 [ %cond.us.1, %if.then14.us.1 ], [ %b.3.us, %if.then11.us.1 ], [ %b.3.us, %if.end61.us ]
  %cond60.us.1 = xor i32 %add70.us, 1
  %add62.us.1 = add nuw nsw i32 %cond60.us.1, %b.3.us.1
  %idx.ext.us.1 = zext nneg i32 %add62.us.1 to i64
  %add.ptr.us.1 = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.us.1
  %call.us.1 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.us.1) #12
  %tobool68.not.us.1 = icmp eq i32 %call.us.1, 0
  %add70.us.1 = select i1 %tobool68.not.us.1, i32 0, i32 2
  %and21 = select i1 %tobool68.not.us, i64 2, i64 0
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 8, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  %24 = load i32, ptr %block_a, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %for.end75, label %if.then31

for.end75:                                        ; preds = %if.else38, %if.then31, %for.inc73
  %a.0 = phi i64 [ %cond51, %if.else38 ], [ 0, %if.then31 ], [ 0, %for.inc73 ]
  %25 = or disjoint i64 %and21, %a.0
  %add62 = xor i64 %25, 2
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %add62
  %call = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %tobool68.not = icmp eq i32 %call, 0
  %add70 = select i1 %tobool68.not, i32 0, i32 4
  %26 = xor i32 %add70, -1
  %27 = lshr i32 %26, 2
  %cond60.1 = and i32 %27, 1
  %28 = or disjoint i32 %add70.us.1, %cond60.1
  %add62.1 = xor i32 %28, 2
  %idx.ext.1 = zext nneg i32 %add62.1 to i64
  %add.ptr.1 = getelementptr inbounds %struct.BiContextType, ptr %cbp_contexts, i64 %idx.ext.1
  %call.1 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.1) #12
  %tobool68.not.1 = icmp eq i32 %call.1, 0
  %add70.1 = select i1 %tobool68.not.1, i32 0, i32 8
  %29 = or disjoint i32 %add70, %add70.1
  %30 = or disjoint i32 %29, %add70.us.1
  %cbp.2.1 = or disjoint i32 %30, %add70.us
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268
  %31 = load i32, ptr %chroma_format_idc, align 4
  switch i32 %31, label %if.then81 [
    i32 0, label %if.end163
    i32 3, label %if.end163
  ]

if.then81:                                        ; preds = %for.end75
  %32 = load ptr, ptr %mb_up, align 8
  %cmp83.not = icmp eq ptr %32, null
  br i1 %cmp83.not, label %if.end95, label %if.then85

if.then85:                                        ; preds = %if.then81
  %mb_type86 = getelementptr inbounds i8, ptr %32, i64 152
  %33 = load i16, ptr %mb_type86, align 8
  %cmp88 = icmp eq i16 %33, 14
  br i1 %cmp88, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then85
  %cbp90 = getelementptr inbounds i8, ptr %32, i64 284
  %34 = load i32, ptr %cbp90, align 4
  %cmp91 = icmp sgt i32 %34, 15
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %lor.lhs.false, %if.then85
  br label %if.end95

if.end95:                                         ; preds = %lor.lhs.false, %if.then93, %if.then81
  %b.4 = phi i64 [ 2, %if.then93 ], [ 0, %lor.lhs.false ], [ 0, %if.then81 ]
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %35 = load ptr, ptr %mb_left, align 8
  %cmp96.not = icmp eq ptr %35, null
  br i1 %cmp96.not, label %if.end109, label %if.then98

if.then98:                                        ; preds = %if.end95
  %mb_type99 = getelementptr inbounds i8, ptr %35, i64 152
  %36 = load i16, ptr %mb_type99, align 8
  %cmp101 = icmp eq i16 %36, 14
  br i1 %cmp101, label %if.then107, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.then98
  %cbp104 = getelementptr inbounds i8, ptr %35, i64 284
  %37 = load i32, ptr %cbp104, align 4
  %cmp105 = icmp sgt i32 %37, 15
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %lor.lhs.false103, %if.then98
  br label %if.end109

if.end109:                                        ; preds = %lor.lhs.false103, %if.then107, %if.end95
  %a.1 = phi i64 [ 1, %if.then107 ], [ 0, %lor.lhs.false103 ], [ 0, %if.end95 ]
  %add110 = or disjoint i64 %a.1, %b.4
  %arrayidx112 = getelementptr inbounds i8, ptr %3, i64 52
  %add.ptr115 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx112, i64 %add110
  %call116 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr115) #12
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end163, label %if.then118

if.then118:                                       ; preds = %if.end109
  %38 = load ptr, ptr %mb_up, align 8
  %cmp120.not = icmp eq ptr %38, null
  br i1 %cmp120.not, label %if.end134, label %if.then122

if.then122:                                       ; preds = %if.then118
  %mb_type123 = getelementptr inbounds i8, ptr %38, i64 152
  %39 = load i16, ptr %mb_type123, align 8
  %cmp125 = icmp eq i16 %39, 14
  br i1 %cmp125, label %if.then132, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %if.then122
  %cbp128 = getelementptr inbounds i8, ptr %38, i64 284
  %40 = load i32, ptr %cbp128, align 4
  %shr129.mask = and i32 %40, -16
  %cmp130 = icmp eq i32 %shr129.mask, 32
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %lor.lhs.false127, %if.then122
  br label %if.end134

if.end134:                                        ; preds = %lor.lhs.false127, %if.then132, %if.then118
  %b.5 = phi i64 [ 2, %if.then132 ], [ 0, %lor.lhs.false127 ], [ 0, %if.then118 ]
  %41 = load ptr, ptr %mb_left, align 8
  %cmp136.not = icmp eq ptr %41, null
  br i1 %cmp136.not, label %if.end150, label %if.then138

if.then138:                                       ; preds = %if.end134
  %mb_type139 = getelementptr inbounds i8, ptr %41, i64 152
  %42 = load i16, ptr %mb_type139, align 8
  %cmp141 = icmp eq i16 %42, 14
  br i1 %cmp141, label %if.then148, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.then138
  %cbp144 = getelementptr inbounds i8, ptr %41, i64 284
  %43 = load i32, ptr %cbp144, align 4
  %shr145.mask = and i32 %43, -16
  %cmp146 = icmp eq i32 %shr145.mask, 32
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %lor.lhs.false143, %if.then138
  br label %if.end150

if.end150:                                        ; preds = %lor.lhs.false143, %if.then148, %if.end134
  %a.2 = phi i64 [ 1, %if.then148 ], [ 0, %lor.lhs.false143 ], [ 0, %if.end134 ]
  %add151 = or disjoint i64 %a.2, %b.5
  %arrayidx153 = getelementptr inbounds i8, ptr %3, i64 68
  %add.ptr156 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx153, i64 %add151
  %call157 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr156) #12
  %cmp158 = icmp eq i32 %call157, 1
  %cond160 = select i1 %cmp158, i32 32, i32 16
  %add161 = or disjoint i32 %cond160, %cbp.2.1
  br label %if.end163

if.end163:                                        ; preds = %for.end75, %for.end75, %if.end109, %if.end150
  %cbp.3 = phi i32 [ %add161, %if.end150 ], [ %cbp.2.1, %if.end109 ], [ %cbp.2.1, %for.end75 ], [ %cbp.2.1, %for.end75 ]
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %cbp.3, ptr %value1, align 4
  %tobool164.not = icmp eq i32 %cbp.3, 0
  br i1 %tobool164.not, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end163
  %last_dquant = getelementptr inbounds i8, ptr %1, i64 212
  store i32 0, ptr %last_dquant, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readCIPredMode_CABAC(ptr nocapture noundef readonly %currMB, ptr nocapture noundef writeonly %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328
  %1 = load ptr, ptr %tex_ctx, align 8
  %value1 = getelementptr inbounds i8, ptr %se, i64 4
  %mb_up = getelementptr inbounds i8, ptr %currMB, i64 120
  %2 = load ptr, ptr %mb_up, align 8
  %mb_left = getelementptr inbounds i8, ptr %currMB, i64 128
  %3 = load ptr, ptr %mb_left, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %c_ipred_mode = getelementptr inbounds i8, ptr %2, i64 373
  %4 = load i8, ptr %c_ipred_mode, align 1
  %cmp1.not = icmp eq i8 %4, 0
  br i1 %cmp1.not, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true
  %mb_type = getelementptr inbounds i8, ptr %2, i64 152
  %5 = load i16, ptr %mb_type, align 8
  %cmp4 = icmp ne i16 %5, 14
  %6 = zext i1 %cmp4 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs, %entry
  %cond6 = phi i64 [ 0, %entry ], [ 0, %cond.true ], [ %6, %land.rhs ]
  %cmp7.not = icmp eq ptr %3, null
  br i1 %cmp7.not, label %cond.end22, label %cond.true9

cond.true9:                                       ; preds = %cond.end
  %c_ipred_mode10 = getelementptr inbounds i8, ptr %3, i64 373
  %7 = load i8, ptr %c_ipred_mode10, align 1
  %cmp12.not = icmp eq i8 %7, 0
  br i1 %cmp12.not, label %cond.end22, label %land.rhs14

land.rhs14:                                       ; preds = %cond.true9
  %mb_type15 = getelementptr inbounds i8, ptr %3, i64 152
  %8 = load i16, ptr %mb_type15, align 8
  %cmp17 = icmp ne i16 %8, 14
  %9 = zext i1 %cmp17 to i64
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true9, %land.rhs14, %cond.end
  %cond23 = phi i64 [ 0, %cond.end ], [ 0, %cond.true9 ], [ %9, %land.rhs14 ]
  %cipr_contexts = getelementptr inbounds i8, ptr %1, i64 20
  %10 = getelementptr inbounds %struct.BiContextType, ptr %cipr_contexts, i64 %cond23
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %10, i64 %cond6
  %call = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  store i32 %call, ptr %value1, align 4
  %cmp24.not = icmp eq i32 %call, 0
  br i1 %cmp24.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end22
  %add.ptr28 = getelementptr inbounds i8, ptr %1, i64 32
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28) #12
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %unary_bin_max_decode.exit, label %do.body.i

do.body.i:                                        ; preds = %if.then
  %call2.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28) #12
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  %11 = select i1 %cmp3.not.i, i32 2, i32 3
  br label %unary_bin_max_decode.exit

unary_bin_max_decode.exit:                        ; preds = %if.then, %do.body.i
  %retval.0.i = phi i32 [ %11, %do.body.i ], [ 1, %if.then ]
  store i32 %retval.0.i, ptr %value1, align 4
  br label %if.end

if.end:                                           ; preds = %unary_bin_max_decode.exit, %cond.end22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_read_and_store_CBP(ptr nocapture noundef readonly %currMB, i32 noundef %chroma_format_idc) local_unnamed_addr #8 {
entry:
  %cmp = icmp eq i32 %chroma_format_idc, 3
  %0 = load ptr, ptr %currMB, align 8
  %read_and_store_CBP_block_bit = getelementptr inbounds i8, ptr %0, i64 456
  %read_and_store_CBP_block_bit_444.read_and_store_CBP_block_bit_normal = select i1 %cmp, ptr @read_and_store_CBP_block_bit_444, ptr @read_and_store_CBP_block_bit_normal
  store ptr %read_and_store_CBP_block_bit_444.read_and_store_CBP_block_bit_normal, ptr %read_and_store_CBP_block_bit, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_444(ptr noundef %currMB, ptr noundef %dep_dp, i32 noundef %type) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %0, i64 13520
  %2 = load ptr, ptr %dec_picture2, align 8
  %tex_ctx3 = getelementptr inbounds i8, ptr %0, i64 328
  %3 = load ptr, ptr %tex_ctx3, align 8
  %mb_data4 = getelementptr inbounds i8, ptr %0, i64 13512
  %4 = load ptr, ptr %mb_data4, align 8
  %cmp5 = icmp eq i32 %type, 2
  %cmp15 = icmp eq i32 %type, 12
  %5 = icmp ult i32 %type, 22
  %switch.cast = trunc i32 %type to i22
  %switch.downshift = lshr i22 -67522, %switch.cast
  %switch.masked = trunc i22 %switch.downshift to i1
  %6 = select i1 %5, i1 %switch.masked, i1 false
  %7 = icmp ult i32 %type, 17
  %switch.cast1031 = trunc i32 %type to i17
  %switch.downshift1033 = lshr i17 -64511, %switch.cast1031
  %switch.masked1034 = trunc i17 %switch.downshift1033 to i1
  %8 = select i1 %7, i1 %switch.masked1034, i1 false
  switch i32 %type, label %land.end63 [
    i32 7, label %land.end43.thread
    i32 8, label %land.rhs60
    i32 6, label %land.rhs60
    i32 9, label %land.rhs60
  ]

land.end43.thread:                                ; preds = %entry
  %is_v_block = getelementptr inbounds i8, ptr %currMB, i64 100
  %9 = load i32, ptr %is_v_block, align 4
  %tobool.not = icmp eq i32 %9, 0
  %tobool42 = icmp ne i32 %9, 0
  br label %land.end63

land.rhs60:                                       ; preds = %entry, %entry, %entry
  %is_v_block54 = getelementptr inbounds i8, ptr %currMB, i64 100
  %10 = load i32, ptr %is_v_block54, align 4
  %tobool55.not = icmp eq i32 %10, 0
  %tobool62 = icmp ne i32 %10, 0
  br label %land.end63

land.end63:                                       ; preds = %entry, %land.end43.thread, %land.rhs60
  %11 = phi i1 [ %tobool55.not, %land.rhs60 ], [ false, %land.end43.thread ], [ false, %entry ]
  %12 = phi i1 [ false, %land.rhs60 ], [ %tobool42, %land.end43.thread ], [ false, %entry ]
  %13 = phi i1 [ false, %land.rhs60 ], [ %tobool.not, %land.end43.thread ], [ false, %entry ]
  %14 = phi i1 [ %tobool62, %land.rhs60 ], [ false, %land.end43.thread ], [ false, %entry ]
  %or.cond703 = select i1 %6, i1 true, i1 %13
  %or.cond704 = select i1 %or.cond703, i1 true, i1 %12
  br i1 %or.cond704, label %cond.true75, label %cond.end77

cond.true75:                                      ; preds = %land.end63
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64
  %15 = load i32, ptr %subblock_y, align 8
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60
  %16 = load i32, ptr %subblock_x, align 4
  br label %cond.end77

cond.end77:                                       ; preds = %land.end63, %cond.true75
  %cond1014 = phi i32 [ %15, %cond.true75 ], [ 0, %land.end63 ]
  %cond78 = phi i32 [ %16, %cond.true75 ], [ 0, %land.end63 ]
  %brmerge = or i1 %6, %8
  %not. = xor i1 %8, true
  %.mux = zext i1 %not. to i32
  %cond92 = select i1 %13, i32 19, i32 35
  %spec.select = select i1 %14, i32 18, i32 %cond92
  %.mux.mux = select i1 %11, i32 17, i32 %spec.select
  %cond100 = select i1 %brmerge, i32 %.mux, i32 %.mux.mux
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96
  %17 = load i32, ptr %is_intra_block, align 8
  %tobool101.not = icmp ne i32 %17, 0
  %cond102 = zext i1 %tobool101.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end77
  %sub = add nsw i32 %cond78, -1
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %cond1014, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  %sub104 = add nsw i32 %cond1014, -1
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub104, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12
  %18 = load i32, ptr %block_a, align 4
  %tobool108.not = icmp eq i32 %18, 0
  %y = getelementptr inbounds i8, ptr %block_a, i64 10
  %19 = load i16, ptr %y, align 2
  %conv = sext i16 %19 to i32
  %mul = shl nsw i32 %conv, 2
  %x = getelementptr inbounds i8, ptr %block_a, i64 8
  %20 = load i16, ptr %x, align 4
  %conv110 = sext i16 %20 to i32
  %add = add nsw i32 %mul, %conv110
  %bit_pos_a.0 = select i1 %tobool108.not, i32 0, i32 %add
  %21 = load i32, ptr %block_b, align 4
  %tobool112.not = icmp eq i32 %21, 0
  br i1 %tobool112.not, label %if.end175, label %if.then113

if.then113:                                       ; preds = %if.then
  %y114 = getelementptr inbounds i8, ptr %block_b, i64 10
  %22 = load i16, ptr %y114, align 2
  %conv115 = sext i16 %22 to i32
  %mul116 = shl nsw i32 %conv115, 2
  %x117 = getelementptr inbounds i8, ptr %block_b, i64 8
  %23 = load i16, ptr %x117, align 4
  %conv118 = sext i16 %23 to i32
  %add119 = add nsw i32 %mul116, %conv118
  br label %if.end175

if.else:                                          ; preds = %cond.end77
  br i1 %8, label %if.then122, label %if.else131

if.then122:                                       ; preds = %if.else
  %sub123 = add nsw i32 %cond78, -1
  %mb_size124 = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub123, i32 noundef %cond1014, ptr noundef nonnull %mb_size124, ptr noundef nonnull %block_a) #12
  %sub127 = add nsw i32 %cond1014, -1
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub127, ptr noundef nonnull %mb_size124, ptr noundef nonnull %block_b) #12
  br label %if.end175

if.else131:                                       ; preds = %if.else
  %or.cond707 = select i1 %13, i1 true, i1 %12
  %sub136 = add nsw i32 %cond78, -1
  %arrayidx138 = getelementptr inbounds i8, ptr %1, i64 849132
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %sub136, i32 noundef %cond1014, ptr noundef nonnull %arrayidx138, ptr noundef nonnull %block_a) #12
  %sub140 = add nsw i32 %cond1014, -1
  call void @get4x4Neighbour(ptr noundef nonnull %currMB, i32 noundef %cond78, i32 noundef %sub140, ptr noundef nonnull %arrayidx138, ptr noundef nonnull %block_b) #12
  br i1 %or.cond707, label %if.then135, label %if.end175

if.then135:                                       ; preds = %if.else131
  %24 = load i32, ptr %block_a, align 4
  %tobool145.not = icmp eq i32 %24, 0
  %y147 = getelementptr inbounds i8, ptr %block_a, i64 10
  %25 = load i16, ptr %y147, align 2
  %conv148 = sext i16 %25 to i32
  %mul149 = shl nsw i32 %conv148, 2
  %x150 = getelementptr inbounds i8, ptr %block_a, i64 8
  %26 = load i16, ptr %x150, align 4
  %conv151 = sext i16 %26 to i32
  %add152 = add nsw i32 %mul149, %conv151
  %bit_pos_a.1 = select i1 %tobool145.not, i32 0, i32 %add152
  %27 = load i32, ptr %block_b, align 4
  %tobool155.not = icmp eq i32 %27, 0
  br i1 %tobool155.not, label %if.end175, label %if.then156

if.then156:                                       ; preds = %if.then135
  %y157 = getelementptr inbounds i8, ptr %block_b, i64 10
  %28 = load i16, ptr %y157, align 2
  %conv158 = sext i16 %28 to i32
  %mul159 = shl nsw i32 %conv158, 2
  %x160 = getelementptr inbounds i8, ptr %block_b, i64 8
  %29 = load i16, ptr %x160, align 4
  %conv161 = sext i16 %29 to i32
  %add162 = add nsw i32 %mul159, %conv161
  br label %if.end175

if.end175:                                        ; preds = %if.else131, %if.then122, %if.then135, %if.then156, %if.then, %if.then113
  %bit_pos_a.2 = phi i32 [ %bit_pos_a.0, %if.then113 ], [ %bit_pos_a.0, %if.then ], [ 0, %if.then122 ], [ %bit_pos_a.1, %if.then156 ], [ %bit_pos_a.1, %if.then135 ], [ 0, %if.else131 ]
  %bit_pos_b.0 = phi i32 [ %add119, %if.then113 ], [ 0, %if.then ], [ 0, %if.then122 ], [ %add162, %if.then156 ], [ 0, %if.then135 ], [ 0, %if.else131 ]
  %chroma_format_idc = getelementptr inbounds i8, ptr %2, i64 268
  %30 = load i32, ptr %chroma_format_idc, align 4
  %cmp176.not = icmp eq i32 %30, 3
  br i1 %cmp176.not, label %if.else228, label %if.then178

if.then178:                                       ; preds = %if.end175
  br i1 %cmp5, label %if.end511, label %if.then181

if.then181:                                       ; preds = %if.then178
  %31 = load i32, ptr %block_b, align 4
  %tobool183.not = icmp eq i32 %31, 0
  br i1 %tobool183.not, label %if.end197, label %if.then184

if.then184:                                       ; preds = %if.then181
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4
  %32 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx185 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom
  %mb_type = getelementptr inbounds i8, ptr %arrayidx185, i64 152
  %33 = load i16, ptr %mb_type, align 8
  %cmp187 = icmp eq i16 %33, 14
  br i1 %cmp187, label %if.end197, label %if.else190

if.else190:                                       ; preds = %if.then184
  %cbp_bits = getelementptr inbounds i8, ptr %arrayidx185, i64 312
  %34 = load i64, ptr %cbp_bits, align 8
  %add195 = add nsw i32 %bit_pos_b.0, %cond100
  %sh_prom.i = zext nneg i32 %add195 to i64
  %shr1.i = lshr i64 %34, %sh_prom.i
  %35 = trunc i64 %shr1.i to i32
  %conv.i = and i32 %35, 1
  br label %if.end197

if.end197:                                        ; preds = %if.then184, %if.else190, %if.then181
  %upper_bit.0 = phi i32 [ %conv.i, %if.else190 ], [ %cond102, %if.then181 ], [ 1, %if.then184 ]
  %36 = load i32, ptr %block_a, align 4
  %tobool199.not = icmp eq i32 %36, 0
  br i1 %tobool199.not, label %if.end511.sink.split, label %if.then200

if.then200:                                       ; preds = %if.end197
  %mb_addr201 = getelementptr inbounds i8, ptr %block_a, i64 4
  %37 = load i32, ptr %mb_addr201, align 4
  %idxprom202 = sext i32 %37 to i64
  %arrayidx203 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom202
  %mb_type204 = getelementptr inbounds i8, ptr %arrayidx203, i64 152
  %38 = load i16, ptr %mb_type204, align 8
  %cmp206 = icmp eq i16 %38, 14
  br i1 %cmp206, label %if.end511.sink.split, label %if.else209

if.else209:                                       ; preds = %if.then200
  %cbp_bits213 = getelementptr inbounds i8, ptr %arrayidx203, i64 312
  br label %if.end511.sink.split.sink.split

if.else228:                                       ; preds = %if.end175
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %1, i64 849280
  %39 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp229.not = icmp eq i32 %39, 0
  br i1 %cmp229.not, label %if.else289, label %if.then231

if.then231:                                       ; preds = %if.else228
  br i1 %cmp5, label %if.end511, label %if.then234

if.then234:                                       ; preds = %if.then231
  %40 = load i32, ptr %block_b, align 4
  %tobool236.not = icmp eq i32 %40, 0
  br i1 %tobool236.not, label %if.end255, label %if.then237

if.then237:                                       ; preds = %if.then234
  %mb_addr238 = getelementptr inbounds i8, ptr %block_b, i64 4
  %41 = load i32, ptr %mb_addr238, align 4
  %idxprom239 = sext i32 %41 to i64
  %arrayidx240 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom239
  %mb_type241 = getelementptr inbounds i8, ptr %arrayidx240, i64 152
  %42 = load i16, ptr %mb_type241, align 8
  %cmp243 = icmp eq i16 %42, 14
  br i1 %cmp243, label %if.end255, label %if.else246

if.else246:                                       ; preds = %if.then237
  %cbp_bits250 = getelementptr inbounds i8, ptr %arrayidx240, i64 312
  %43 = load i64, ptr %cbp_bits250, align 8
  %add252 = add nsw i32 %bit_pos_b.0, %cond100
  %sh_prom.i958 = zext nneg i32 %add252 to i64
  %shr1.i959 = lshr i64 %43, %sh_prom.i958
  %44 = trunc i64 %shr1.i959 to i32
  %conv.i960 = and i32 %44, 1
  br label %if.end255

if.end255:                                        ; preds = %if.then237, %if.else246, %if.then234
  %upper_bit.1 = phi i32 [ %conv.i960, %if.else246 ], [ %cond102, %if.then234 ], [ 1, %if.then237 ]
  %45 = load i32, ptr %block_a, align 4
  %tobool257.not = icmp eq i32 %45, 0
  br i1 %tobool257.not, label %if.end511.sink.split, label %if.then258

if.then258:                                       ; preds = %if.end255
  %mb_addr259 = getelementptr inbounds i8, ptr %block_a, i64 4
  %46 = load i32, ptr %mb_addr259, align 4
  %idxprom260 = sext i32 %46 to i64
  %arrayidx261 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom260
  %mb_type262 = getelementptr inbounds i8, ptr %arrayidx261, i64 152
  %47 = load i16, ptr %mb_type262, align 8
  %cmp264 = icmp eq i16 %47, 14
  br i1 %cmp264, label %if.end511.sink.split, label %if.else267

if.else267:                                       ; preds = %if.then258
  %cbp_bits271 = getelementptr inbounds i8, ptr %arrayidx261, i64 312
  br label %if.end511.sink.split.sink.split

if.else289:                                       ; preds = %if.else228
  %48 = load i32, ptr %block_b, align 4
  %tobool291.not = icmp eq i32 %48, 0
  br i1 %tobool291.not, label %if.end393, label %if.then292

if.then292:                                       ; preds = %if.else289
  %mb_addr293 = getelementptr inbounds i8, ptr %block_b, i64 4
  %49 = load i32, ptr %mb_addr293, align 4
  %idxprom294 = sext i32 %49 to i64
  %arrayidx295 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom294
  %mb_type296 = getelementptr inbounds i8, ptr %arrayidx295, i64 152
  %50 = load i16, ptr %mb_type296, align 8
  %cmp298 = icmp eq i16 %50, 14
  br i1 %cmp298, label %if.end393, label %if.else301

if.else301:                                       ; preds = %if.then292
  %.mux1026 = select i1 %cmp15, i64 344, i64 352
  %.mux1026.mux = select i1 %cmp5, i64 336, i64 %.mux1026
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
  ]

if.then371:                                       ; preds = %if.else301, %if.else301, %if.else301, %if.else301, %if.else301
  br label %if.end393.sink.split

if.else379:                                       ; preds = %if.else301
  br label %if.end393.sink.split

if.end393.sink.split.fold.split:                  ; preds = %if.else301, %if.else301, %if.else301, %if.else301, %if.else301
  br label %if.end393.sink.split

if.end393.sink.split:                             ; preds = %if.else301, %if.else301, %if.else301, %if.end393.sink.split.fold.split, %if.then371, %if.else379
  %.sink = phi i64 [ 312, %if.else379 ], [ 328, %if.then371 ], [ %.mux1026.mux, %if.else301 ], [ %.mux1026.mux, %if.else301 ], [ %.mux1026.mux, %if.else301 ], [ 320, %if.end393.sink.split.fold.split ]
  %arrayidx319 = getelementptr inbounds i8, ptr %arrayidx295, i64 %.sink
  %51 = load i64, ptr %arrayidx319, align 8
  %add320 = add nsw i32 %bit_pos_b.0, %cond100
  %sh_prom.i967 = zext nneg i32 %add320 to i64
  %shr1.i968 = lshr i64 %51, %sh_prom.i967
  %52 = trunc i64 %shr1.i968 to i32
  %conv.i969 = and i32 %52, 1
  br label %if.end393

if.end393:                                        ; preds = %if.end393.sink.split, %if.then292, %if.else289
  %upper_bit.2 = phi i32 [ %cond102, %if.else289 ], [ 1, %if.then292 ], [ %conv.i969, %if.end393.sink.split ]
  %53 = load i32, ptr %block_a, align 4
  %tobool395.not = icmp eq i32 %53, 0
  br i1 %tobool395.not, label %if.end511.sink.split, label %if.then396

if.then396:                                       ; preds = %if.end393
  %mb_addr397 = getelementptr inbounds i8, ptr %block_a, i64 4
  %54 = load i32, ptr %mb_addr397, align 4
  %idxprom398 = sext i32 %54 to i64
  %arrayidx399 = getelementptr inbounds %struct.macroblock, ptr %4, i64 %idxprom398
  %mb_type400 = getelementptr inbounds i8, ptr %arrayidx399, i64 152
  %55 = load i16, ptr %mb_type400, align 8
  %cmp402 = icmp eq i16 %55, 14
  br i1 %cmp402, label %if.end511.sink.split, label %if.else405

if.else405:                                       ; preds = %if.then396
  %.mux1029 = select i1 %cmp15, i64 344, i64 352
  %.mux1029.mux = select i1 %cmp5, i64 336, i64 %.mux1029
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
  ]

if.then476:                                       ; preds = %if.else405, %if.else405, %if.else405, %if.else405, %if.else405
  br label %if.end498.sink.split

if.else484:                                       ; preds = %if.else405
  br label %if.end498.sink.split

if.end498.sink.split.fold.split:                  ; preds = %if.else405, %if.else405, %if.else405, %if.else405, %if.else405
  br label %if.end498.sink.split

if.end498.sink.split:                             ; preds = %if.else405, %if.else405, %if.else405, %if.end498.sink.split.fold.split, %if.then476, %if.else484
  %.sink1018 = phi i64 [ 312, %if.else484 ], [ 328, %if.then476 ], [ %.mux1029.mux, %if.else405 ], [ %.mux1029.mux, %if.else405 ], [ %.mux1029.mux, %if.else405 ], [ 320, %if.end498.sink.split.fold.split ]
  %arrayidx424 = getelementptr inbounds i8, ptr %arrayidx399, i64 %.sink1018
  br label %if.end511.sink.split.sink.split

if.end511.sink.split.sink.split:                  ; preds = %if.else209, %if.else267, %if.end498.sink.split
  %arrayidx424.sink = phi ptr [ %arrayidx424, %if.end498.sink.split ], [ %cbp_bits271, %if.else267 ], [ %cbp_bits213, %if.else209 ]
  %upper_bit.2.sink.ph = phi i32 [ %upper_bit.2, %if.end498.sink.split ], [ %upper_bit.1, %if.else267 ], [ %upper_bit.0, %if.else209 ]
  %56 = load i64, ptr %arrayidx424.sink, align 8
  %add425 = add nsw i32 %bit_pos_a.2, %cond100
  %sh_prom.i985 = zext nneg i32 %add425 to i64
  %shr1.i986 = lshr i64 %56, %sh_prom.i985
  %57 = trunc i64 %shr1.i986 to i32
  %conv.i987 = and i32 %57, 1
  br label %if.end511.sink.split

if.end511.sink.split:                             ; preds = %if.end511.sink.split.sink.split, %if.end393, %if.then396, %if.end255, %if.then258, %if.end197, %if.then200
  %upper_bit.2.sink = phi i32 [ %upper_bit.0, %if.then200 ], [ %upper_bit.0, %if.end197 ], [ %upper_bit.1, %if.then258 ], [ %upper_bit.1, %if.end255 ], [ %upper_bit.2, %if.then396 ], [ %upper_bit.2, %if.end393 ], [ %upper_bit.2.sink.ph, %if.end511.sink.split.sink.split ]
  %left_bit.2.sink = phi i32 [ 1, %if.then200 ], [ %cond102, %if.end197 ], [ 1, %if.then258 ], [ %cond102, %if.end255 ], [ 1, %if.then396 ], [ %cond102, %if.end393 ], [ %conv.i987, %if.end511.sink.split.sink.split ]
  %mul499 = shl nuw nsw i32 %upper_bit.2.sink, 1
  %add500 = or disjoint i32 %left_bit.2.sink, %mul499
  %bcbp_contexts501 = getelementptr inbounds i8, ptr %3, i64 84
  %idxprom502 = sext i32 %type to i64
  %arrayidx503 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom502
  %58 = load i16, ptr %arrayidx503, align 2
  %idxprom504 = sext i16 %58 to i64
  %arrayidx505 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts501, i64 0, i64 %idxprom504
  %idx.ext507 = zext nneg i32 %add500 to i64
  %add.ptr508 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx505, i64 %idx.ext507
  %call509 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr508) #12
  br label %if.end511

if.end511:                                        ; preds = %if.end511.sink.split, %if.then231, %if.then178
  %cbp_bit.0 = phi i32 [ 1, %if.then178 ], [ 1, %if.then231 ], [ %call509, %if.end511.sink.split ]
  br i1 %8, label %cond.end543, label %cond.false514

cond.false514:                                    ; preds = %if.end511
  br i1 %6, label %cond.true516, label %cond.false519

cond.true516:                                     ; preds = %cond.false514
  %add517 = add nsw i32 %cond1014, 1
  %shr = ashr i32 %cond78, 2
  %add518 = add nsw i32 %add517, %shr
  br label %cond.end543

cond.false519:                                    ; preds = %cond.false514
  %brmerge953 = select i1 %11, i1 true, i1 %14
  %.mux954 = select i1 %11, i32 17, i32 18
  br i1 %brmerge953, label %cond.end543, label %cond.false525

cond.false525:                                    ; preds = %cond.false519
  %shr529 = ashr i32 %cond78, 2
  br i1 %13, label %cond.true527, label %cond.false531

cond.true527:                                     ; preds = %cond.false525
  %add528 = add nsw i32 %cond1014, 19
  %add530 = add nsw i32 %add528, %shr529
  br label %cond.end543

cond.false531:                                    ; preds = %cond.false525
  %add532 = add nsw i32 %cond1014, 35
  %add534 = add nsw i32 %add532, %shr529
  br label %cond.end543

cond.end543:                                      ; preds = %cond.false519, %cond.true516, %cond.false531, %cond.true527, %if.end511
  %cond544 = phi i32 [ 0, %if.end511 ], [ %add518, %cond.true516 ], [ %.mux954, %cond.false519 ], [ %add530, %cond.true527 ], [ %add534, %cond.false531 ]
  %tobool545.not = icmp eq i32 %cbp_bit.0, 0
  br i1 %tobool545.not, label %if.end688, label %if.then546

if.then546:                                       ; preds = %cond.end543
  br i1 %cmp5, label %if.then549, label %if.else562

if.then549:                                       ; preds = %if.then546
  %sh_prom = zext nneg i32 %cond544 to i64
  %shl = shl i64 51, %sh_prom
  %cbp_bits550 = getelementptr inbounds i8, ptr %currMB, i64 312
  %59 = load i64, ptr %cbp_bits550, align 8
  %or = or i64 %59, %shl
  store i64 %or, ptr %cbp_bits550, align 8
  %60 = load i32, ptr %chroma_format_idc, align 4
  %cmp553 = icmp eq i32 %60, 3
  br i1 %cmp553, label %if.end688.sink.split, label %if.end688

if.else562:                                       ; preds = %if.then546
  br i1 %cmp15, label %if.then565, label %if.else576

if.then565:                                       ; preds = %if.else562
  %sh_prom566 = zext nneg i32 %cond544 to i64
  %shl567 = shl i64 51, %sh_prom566
  %arrayidx569 = getelementptr inbounds i8, ptr %currMB, i64 344
  %61 = load i64, ptr %arrayidx569, align 8
  %or570 = or i64 %61, %shl567
  store i64 %or570, ptr %arrayidx569, align 8
  br label %if.end688.sink.split

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
  ]

if.then579:                                       ; preds = %if.else576
  %sh_prom580 = zext nneg i32 %cond544 to i64
  %shl581 = shl i64 51, %sh_prom580
  %arrayidx583 = getelementptr inbounds i8, ptr %currMB, i64 352
  %62 = load i64, ptr %arrayidx583, align 8
  %or584 = or i64 %62, %shl581
  store i64 %or584, ptr %arrayidx583, align 8
  br label %if.end688.sink.split

if.then593:                                       ; preds = %if.else576
  %sh_prom594 = zext nneg i32 %cond544 to i64
  %shl595 = shl i64 3, %sh_prom594
  br label %if.end688.sink.split

if.then602:                                       ; preds = %if.else576
  %sh_prom603 = zext nneg i32 %cond544 to i64
  %shl604 = shl i64 3, %sh_prom603
  br label %if.end688.sink.split

if.then611:                                       ; preds = %if.else576
  %sh_prom612 = zext nneg i32 %cond544 to i64
  %shl613 = shl i64 3, %sh_prom612
  br label %if.end688.sink.split

if.then620:                                       ; preds = %if.else576
  %sh_prom621 = zext nneg i32 %cond544 to i64
  %shl622 = shl i64 17, %sh_prom621
  br label %if.end688.sink.split

if.then629:                                       ; preds = %if.else576
  %sh_prom630 = zext nneg i32 %cond544 to i64
  %shl631 = shl i64 17, %sh_prom630
  br label %if.end688.sink.split

if.then638:                                       ; preds = %if.else576
  %sh_prom639 = zext nneg i32 %cond544 to i64
  %shl640 = shl i64 17, %sh_prom639
  br label %if.end688.sink.split

if.then653:                                       ; preds = %if.else576, %if.else576, %if.else576
  %cmp.i = icmp sgt i32 %cond544, 63
  br i1 %cmp.i, label %if.end688.sink.split, label %cond.false.i

cond.false.i:                                     ; preds = %if.then653
  %idxprom.i = sext i32 %cond544 to i64
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i
  %63 = load i64, ptr %arrayidx.i, align 8
  br label %if.end688.sink.split

if.then667:                                       ; preds = %if.else576, %if.else576, %if.else576
  %cmp.i1000 = icmp sgt i32 %cond544, 63
  br i1 %cmp.i1000, label %if.end688.sink.split, label %cond.false.i1001

cond.false.i1001:                                 ; preds = %if.then667
  %idxprom.i1002 = sext i32 %cond544 to i64
  %arrayidx.i1003 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i1002
  %64 = load i64, ptr %arrayidx.i1003, align 8
  br label %if.end688.sink.split

if.else672:                                       ; preds = %if.else576
  %cmp.i1006 = icmp sgt i32 %cond544, 63
  br i1 %cmp.i1006, label %if.end688.sink.split, label %cond.false.i1007

cond.false.i1007:                                 ; preds = %if.else672
  %idxprom.i1008 = sext i32 %cond544 to i64
  %arrayidx.i1009 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i1008
  %65 = load i64, ptr %arrayidx.i1009, align 8
  br label %if.end688.sink.split

if.end688.sink.split:                             ; preds = %cond.false.i1007, %if.else672, %cond.false.i1001, %if.then667, %cond.false.i, %if.then653, %if.then549, %if.then565, %if.then593, %if.then611, %if.then629, %if.then638, %if.then620, %if.then602, %if.then579
  %.sink1022 = phi i64 [ 328, %if.then579 ], [ 320, %if.then602 ], [ 312, %if.then620 ], [ 328, %if.then638 ], [ 320, %if.then629 ], [ 328, %if.then611 ], [ 312, %if.then593 ], [ 320, %if.then565 ], [ 336, %if.then549 ], [ 320, %if.then653 ], [ 320, %cond.false.i ], [ 328, %if.then667 ], [ 328, %cond.false.i1001 ], [ 312, %if.else672 ], [ 312, %cond.false.i1007 ]
  %shl.sink = phi i64 [ %shl581, %if.then579 ], [ %shl604, %if.then602 ], [ %shl622, %if.then620 ], [ %shl640, %if.then638 ], [ %shl631, %if.then629 ], [ %shl613, %if.then611 ], [ %shl595, %if.then593 ], [ %shl567, %if.then565 ], [ %shl, %if.then549 ], [ 0, %if.then653 ], [ %63, %cond.false.i ], [ 0, %if.then667 ], [ %64, %cond.false.i1001 ], [ 0, %if.else672 ], [ %65, %cond.false.i1007 ]
  %cbp_bits_8x8558 = getelementptr inbounds i8, ptr %currMB, i64 %.sink1022
  %66 = load i64, ptr %cbp_bits_8x8558, align 8
  %or560 = or i64 %66, %shl.sink
  store i64 %or560, ptr %cbp_bits_8x8558, align 8
  br label %if.end688

if.end688:                                        ; preds = %if.end688.sink.split, %if.then549, %cond.end543
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12
  ret i32 %cbp_bit.0
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_normal(ptr noundef %currMB, ptr noundef %dep_dp, i32 noundef %type) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %block_a33 = alloca %struct.pix_pos, align 4
  %block_b34 = alloca %struct.pix_pos, align 4
  %block_a93 = alloca %struct.pix_pos, align 4
  %block_b94 = alloca %struct.pix_pos, align 4
  %block_a154 = alloca %struct.pix_pos, align 4
  %block_b155 = alloca %struct.pix_pos, align 4
  %block_a217 = alloca %struct.pix_pos, align 4
  %block_b218 = alloca %struct.pix_pos, align 4
  %block_a299 = alloca %struct.pix_pos, align 4
  %block_b300 = alloca %struct.pix_pos, align 4
  %block_a386 = alloca %struct.pix_pos, align 4
  %block_b387 = alloca %struct.pix_pos, align 4
  %0 = load ptr, ptr %currMB, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %currMB, i64 8
  %1 = load ptr, ptr %p_Vid1, align 8
  %tex_ctx2 = getelementptr inbounds i8, ptr %0, i64 328
  %2 = load ptr, ptr %tex_ctx2, align 8
  %mb_data3 = getelementptr inbounds i8, ptr %0, i64 13512
  %3 = load ptr, ptr %mb_data3, align 8
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
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b) #12
  %mb_size = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_a) #12
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %mb_size, ptr noundef nonnull %block_b) #12
  %4 = load i32, ptr %block_b, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  %mb_addr = getelementptr inbounds i8, ptr %block_b, i64 4
  %5 = load i32, ptr %mb_addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom
  %mb_type.i = getelementptr inbounds i8, ptr %arrayidx8, i64 152
  %6 = load i16, ptr %mb_type.i, align 8
  %cmp.i = icmp eq i16 %6, 14
  br i1 %cmp.i, label %if.end, label %if.else.i

if.else.i:                                        ; preds = %if.then7
  %cbp_bits.i = getelementptr inbounds i8, ptr %arrayidx8, i64 312
  %7 = load i64, ptr %cbp_bits.i, align 8
  %conv2.i = shl i64 %7, 1
  %8 = and i64 %conv2.i, 2
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then7, %if.then
  %upper_bit.0 = phi i64 [ 2, %if.then ], [ %8, %if.else.i ], [ 2, %if.then7 ]
  %9 = load i32, ptr %block_a, align 4
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end
  %mb_addr12 = getelementptr inbounds i8, ptr %block_a, i64 4
  %10 = load i32, ptr %mb_addr12, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom13
  %mb_type.i634 = getelementptr inbounds i8, ptr %arrayidx14, i64 152
  %11 = load i16, ptr %mb_type.i634, align 8
  %cmp.i635 = icmp eq i16 %11, 14
  br i1 %cmp.i635, label %if.end16, label %if.else.i636

if.else.i636:                                     ; preds = %if.then11
  %cbp_bits.i637 = getelementptr inbounds i8, ptr %arrayidx14, i64 312
  %12 = load i64, ptr %cbp_bits.i637, align 8
  %conv2.i638 = and i64 %12, 1
  br label %if.end16

if.end16:                                         ; preds = %if.else.i636, %if.then11, %if.end
  %left_bit.0 = phi i64 [ 1, %if.end ], [ %conv2.i638, %if.else.i636 ], [ 1, %if.then11 ]
  %bcbp_contexts = getelementptr inbounds i8, ptr %2, i64 84
  %idx.ext = or disjoint i64 %left_bit.0, %upper_bit.0
  %add.ptr = getelementptr inbounds %struct.BiContextType, ptr %bcbp_contexts, i64 %idx.ext
  %call22 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end16
  %cbp_bits = getelementptr inbounds i8, ptr %currMB, i64 312
  %13 = load i64, ptr %cbp_bits, align 8
  %or = or i64 %13, 1
  store i64 %or, ptr %cbp_bits, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a) #12
  br label %if.end480

if.then28:                                        ; preds = %entry
  %subblock_y = getelementptr inbounds i8, ptr %currMB, i64 64
  %14 = load i32, ptr %subblock_y, align 8
  %subblock_x = getelementptr inbounds i8, ptr %currMB, i64 60
  %15 = load i32, ptr %subblock_x, align 4
  %is_intra_block = getelementptr inbounds i8, ptr %currMB, i64 96
  %16 = load i32, ptr %is_intra_block, align 8
  %tobool29.not = icmp ne i32 %16, 0
  %cond = zext i1 %tobool29.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a33) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b34) #12
  %sub = add nsw i32 %15, -1
  %mb_size35 = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub, i32 noundef %14, ptr noundef nonnull %mb_size35, ptr noundef nonnull %block_a33) #12
  %sub38 = add nsw i32 %14, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %15, i32 noundef %sub38, ptr noundef nonnull %mb_size35, ptr noundef nonnull %block_b34) #12
  %17 = load i32, ptr %block_b34, align 4
  %tobool43.not = icmp eq i32 %17, 0
  br i1 %tobool43.not, label %if.end49, label %if.then44

if.then44:                                        ; preds = %if.then28
  %mb_addr45 = getelementptr inbounds i8, ptr %block_b34, i64 4
  %18 = load i32, ptr %mb_addr45, align 4
  %idxprom46 = sext i32 %18 to i64
  %arrayidx47 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom46
  %mb_type.i641 = getelementptr inbounds i8, ptr %arrayidx47, i64 152
  %19 = load i16, ptr %mb_type.i641, align 8
  %cmp.i642 = icmp eq i16 %19, 14
  br i1 %cmp.i642, label %if.end49, label %if.else.i643

if.else.i643:                                     ; preds = %if.then44
  %20 = getelementptr inbounds i8, ptr %block_b34, i64 10
  %block_b34.val633 = load i16, ptr %20, align 2
  %21 = getelementptr inbounds i8, ptr %block_b34, i64 8
  %block_b34.val = load i16, ptr %21, align 4
  %conv2.i644 = sext i16 %block_b34.val633 to i64
  %shl.i = shl nsw i64 %conv2.i644, 2
  %conv3.i = sext i16 %block_b34.val to i64
  %add.i = add nsw i64 %conv3.i, 1
  %add4.i = add nsw i64 %add.i, %shl.i
  %cbp_bits.i645 = getelementptr inbounds i8, ptr %arrayidx47, i64 312
  %22 = load i64, ptr %cbp_bits.i645, align 8
  %sh_prom.i.i = and i64 %add4.i, 4294967295
  %shr1.i.i = lshr i64 %22, %sh_prom.i.i
  %23 = trunc i64 %shr1.i.i to i32
  %conv.i.i = and i32 %23, 1
  br label %if.end49

if.end49:                                         ; preds = %if.else.i643, %if.then44, %if.then28
  %upper_bit30.0 = phi i32 [ %cond, %if.then28 ], [ %conv.i.i, %if.else.i643 ], [ 1, %if.then44 ]
  %24 = load i32, ptr %block_a33, align 4
  %tobool51.not = icmp eq i32 %24, 0
  br i1 %tobool51.not, label %if.end57, label %if.then52

if.then52:                                        ; preds = %if.end49
  %mb_addr53 = getelementptr inbounds i8, ptr %block_a33, i64 4
  %25 = load i32, ptr %mb_addr53, align 4
  %idxprom54 = sext i32 %25 to i64
  %arrayidx55 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom54
  %mb_type.i647 = getelementptr inbounds i8, ptr %arrayidx55, i64 152
  %26 = load i16, ptr %mb_type.i647, align 8
  %cmp.i648 = icmp eq i16 %26, 14
  br i1 %cmp.i648, label %if.end57, label %if.else.i649

if.else.i649:                                     ; preds = %if.then52
  %27 = getelementptr inbounds i8, ptr %block_a33, i64 10
  %block_a33.val632 = load i16, ptr %27, align 2
  %28 = getelementptr inbounds i8, ptr %block_a33, i64 8
  %block_a33.val = load i16, ptr %28, align 4
  %conv2.i650 = sext i16 %block_a33.val632 to i64
  %shl.i651 = shl nsw i64 %conv2.i650, 2
  %conv3.i652 = sext i16 %block_a33.val to i64
  %add.i653 = add nsw i64 %conv3.i652, 1
  %add4.i654 = add nsw i64 %add.i653, %shl.i651
  %cbp_bits.i655 = getelementptr inbounds i8, ptr %arrayidx55, i64 312
  %29 = load i64, ptr %cbp_bits.i655, align 8
  %sh_prom.i.i656 = and i64 %add4.i654, 4294967295
  %shr1.i.i657 = lshr i64 %29, %sh_prom.i.i656
  %30 = trunc i64 %shr1.i.i657 to i32
  %conv.i.i658 = and i32 %30, 1
  br label %if.end57

if.end57:                                         ; preds = %if.else.i649, %if.then52, %if.end49
  %left_bit31.0 = phi i32 [ %cond, %if.end49 ], [ %conv.i.i658, %if.else.i649 ], [ 1, %if.then52 ]
  %mul58 = shl nuw nsw i32 %upper_bit30.0, 1
  %add59 = or disjoint i32 %left_bit31.0, %mul58
  %arrayidx64 = getelementptr inbounds i8, ptr %2, i64 100
  %idx.ext66 = zext nneg i32 %add59 to i64
  %add.ptr67 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx64, i64 %idx.ext66
  %call68 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr67) #12
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end77, label %if.then70

if.then70:                                        ; preds = %if.end57
  %add71 = add nsw i32 %14, 1
  %shr = ashr i32 %15, 2
  %add72 = add nsw i32 %add71, %shr
  %cmp.i661 = icmp sgt i32 %add72, 63
  br i1 %cmp.i661, label %i64_power2.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.then70
  %idxprom.i = sext i32 %add72 to i64
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i
  %31 = load i64, ptr %arrayidx.i, align 8
  br label %i64_power2.exit

i64_power2.exit:                                  ; preds = %if.then70, %cond.false.i
  %cond.i = phi i64 [ %31, %cond.false.i ], [ 0, %if.then70 ]
  %cbp_bits74 = getelementptr inbounds i8, ptr %currMB, i64 312
  %32 = load i64, ptr %cbp_bits74, align 8
  %or76 = or i64 %32, %cond.i
  store i64 %or76, ptr %cbp_bits74, align 8
  br label %if.end77

if.end77:                                         ; preds = %i64_power2.exit, %if.end57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b34) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a33) #12
  br label %if.end480

if.then80:                                        ; preds = %entry
  %subblock_y82 = getelementptr inbounds i8, ptr %currMB, i64 64
  %33 = load i32, ptr %subblock_y82, align 8
  %subblock_x84 = getelementptr inbounds i8, ptr %currMB, i64 60
  %34 = load i32, ptr %subblock_x84, align 4
  %is_intra_block87 = getelementptr inbounds i8, ptr %currMB, i64 96
  %35 = load i32, ptr %is_intra_block87, align 8
  %tobool88.not = icmp ne i32 %35, 0
  %cond89 = zext i1 %tobool88.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a93) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b94) #12
  %sub95 = add nsw i32 %34, -1
  %mb_size96 = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub95, i32 noundef %33, ptr noundef nonnull %mb_size96, ptr noundef nonnull %block_a93) #12
  %sub99 = add nsw i32 %33, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %34, i32 noundef %sub99, ptr noundef nonnull %mb_size96, ptr noundef nonnull %block_b94) #12
  %36 = load i32, ptr %block_b94, align 4
  %tobool104.not = icmp eq i32 %36, 0
  br i1 %tobool104.not, label %if.end110, label %if.then105

if.then105:                                       ; preds = %if.then80
  %mb_addr106 = getelementptr inbounds i8, ptr %block_b94, i64 4
  %37 = load i32, ptr %mb_addr106, align 4
  %idxprom107 = sext i32 %37 to i64
  %arrayidx108 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom107
  %mb_type.i662 = getelementptr inbounds i8, ptr %arrayidx108, i64 152
  %38 = load i16, ptr %mb_type.i662, align 8
  %cmp.i663 = icmp eq i16 %38, 14
  br i1 %cmp.i663, label %if.end110, label %if.else.i664

if.else.i664:                                     ; preds = %if.then105
  %39 = getelementptr inbounds i8, ptr %block_b94, i64 10
  %block_b94.val631 = load i16, ptr %39, align 2
  %40 = getelementptr inbounds i8, ptr %block_b94, i64 8
  %block_b94.val = load i16, ptr %40, align 4
  %conv2.i665 = sext i16 %block_b94.val631 to i64
  %shl.i666 = shl nsw i64 %conv2.i665, 2
  %conv3.i667 = sext i16 %block_b94.val to i64
  %add.i668 = add nsw i64 %conv3.i667, 1
  %add4.i669 = add nsw i64 %add.i668, %shl.i666
  %cbp_bits.i670 = getelementptr inbounds i8, ptr %arrayidx108, i64 312
  %41 = load i64, ptr %cbp_bits.i670, align 8
  %sh_prom.i.i671 = and i64 %add4.i669, 4294967295
  %shr1.i.i672 = lshr i64 %41, %sh_prom.i.i671
  %42 = trunc i64 %shr1.i.i672 to i32
  %conv.i.i673 = and i32 %42, 1
  br label %if.end110

if.end110:                                        ; preds = %if.else.i664, %if.then105, %if.then80
  %upper_bit90.0 = phi i32 [ %cond89, %if.then80 ], [ %conv.i.i673, %if.else.i664 ], [ 1, %if.then105 ]
  %43 = load i32, ptr %block_a93, align 4
  %tobool112.not = icmp eq i32 %43, 0
  br i1 %tobool112.not, label %if.end118, label %if.then113

if.then113:                                       ; preds = %if.end110
  %mb_addr114 = getelementptr inbounds i8, ptr %block_a93, i64 4
  %44 = load i32, ptr %mb_addr114, align 4
  %idxprom115 = sext i32 %44 to i64
  %arrayidx116 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom115
  %mb_type.i676 = getelementptr inbounds i8, ptr %arrayidx116, i64 152
  %45 = load i16, ptr %mb_type.i676, align 8
  %cmp.i677 = icmp eq i16 %45, 14
  br i1 %cmp.i677, label %if.end118, label %if.else.i678

if.else.i678:                                     ; preds = %if.then113
  %46 = getelementptr inbounds i8, ptr %block_a93, i64 10
  %block_a93.val630 = load i16, ptr %46, align 2
  %47 = getelementptr inbounds i8, ptr %block_a93, i64 8
  %block_a93.val = load i16, ptr %47, align 4
  %conv2.i679 = sext i16 %block_a93.val630 to i64
  %shl.i680 = shl nsw i64 %conv2.i679, 2
  %conv3.i681 = sext i16 %block_a93.val to i64
  %add.i682 = add nsw i64 %conv3.i681, 1
  %add4.i683 = add nsw i64 %add.i682, %shl.i680
  %cbp_bits.i684 = getelementptr inbounds i8, ptr %arrayidx116, i64 312
  %48 = load i64, ptr %cbp_bits.i684, align 8
  %sh_prom.i.i685 = and i64 %add4.i683, 4294967295
  %shr1.i.i686 = lshr i64 %48, %sh_prom.i.i685
  %49 = trunc i64 %shr1.i.i686 to i32
  %conv.i.i687 = and i32 %49, 1
  br label %if.end118

if.end118:                                        ; preds = %if.else.i678, %if.then113, %if.end110
  %left_bit91.0 = phi i32 [ %cond89, %if.end110 ], [ %conv.i.i687, %if.else.i678 ], [ 1, %if.then113 ]
  %mul119 = shl nuw nsw i32 %upper_bit90.0, 1
  %add120 = or disjoint i32 %left_bit91.0, %mul119
  %arrayidx125 = getelementptr inbounds i8, ptr %2, i64 132
  %idx.ext127 = zext nneg i32 %add120 to i64
  %add.ptr128 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx125, i64 %idx.ext127
  %call129 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr128) #12
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end138, label %if.then131

if.then131:                                       ; preds = %if.end118
  %add132 = add nsw i32 %33, 1
  %shr133 = ashr i32 %34, 2
  %add134 = add nsw i32 %add132, %shr133
  %sh_prom = zext nneg i32 %add134 to i64
  %shl = shl i64 3, %sh_prom
  %cbp_bits135 = getelementptr inbounds i8, ptr %currMB, i64 312
  %50 = load i64, ptr %cbp_bits135, align 8
  %or137 = or i64 %50, %shl
  store i64 %or137, ptr %cbp_bits135, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then131, %if.end118
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b94) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a93) #12
  br label %if.end480

if.then141:                                       ; preds = %entry
  %subblock_y143 = getelementptr inbounds i8, ptr %currMB, i64 64
  %51 = load i32, ptr %subblock_y143, align 8
  %subblock_x145 = getelementptr inbounds i8, ptr %currMB, i64 60
  %52 = load i32, ptr %subblock_x145, align 4
  %is_intra_block148 = getelementptr inbounds i8, ptr %currMB, i64 96
  %53 = load i32, ptr %is_intra_block148, align 8
  %tobool149.not = icmp ne i32 %53, 0
  %cond150 = zext i1 %tobool149.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a154) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b155) #12
  %sub156 = add nsw i32 %52, -1
  %mb_size157 = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub156, i32 noundef %51, ptr noundef nonnull %mb_size157, ptr noundef nonnull %block_a154) #12
  %sub160 = add nsw i32 %51, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %52, i32 noundef %sub160, ptr noundef nonnull %mb_size157, ptr noundef nonnull %block_b155) #12
  %54 = load i32, ptr %block_b155, align 4
  %tobool165.not = icmp eq i32 %54, 0
  br i1 %tobool165.not, label %if.end171, label %if.then166

if.then166:                                       ; preds = %if.then141
  %mb_addr167 = getelementptr inbounds i8, ptr %block_b155, i64 4
  %55 = load i32, ptr %mb_addr167, align 4
  %idxprom168 = sext i32 %55 to i64
  %arrayidx169 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom168
  %mb_type.i690 = getelementptr inbounds i8, ptr %arrayidx169, i64 152
  %56 = load i16, ptr %mb_type.i690, align 8
  %cmp.i691 = icmp eq i16 %56, 14
  br i1 %cmp.i691, label %if.end171, label %if.else.i692

if.else.i692:                                     ; preds = %if.then166
  %57 = getelementptr inbounds i8, ptr %block_b155, i64 10
  %block_b155.val629 = load i16, ptr %57, align 2
  %58 = getelementptr inbounds i8, ptr %block_b155, i64 8
  %block_b155.val = load i16, ptr %58, align 4
  %conv2.i693 = sext i16 %block_b155.val629 to i64
  %shl.i694 = shl nsw i64 %conv2.i693, 2
  %conv3.i695 = sext i16 %block_b155.val to i64
  %add.i696 = add nsw i64 %conv3.i695, 1
  %add4.i697 = add nsw i64 %add.i696, %shl.i694
  %cbp_bits.i698 = getelementptr inbounds i8, ptr %arrayidx169, i64 312
  %59 = load i64, ptr %cbp_bits.i698, align 8
  %sh_prom.i.i699 = and i64 %add4.i697, 4294967295
  %shr1.i.i700 = lshr i64 %59, %sh_prom.i.i699
  %60 = trunc i64 %shr1.i.i700 to i32
  %conv.i.i701 = and i32 %60, 1
  br label %if.end171

if.end171:                                        ; preds = %if.else.i692, %if.then166, %if.then141
  %upper_bit151.0 = phi i32 [ %cond150, %if.then141 ], [ %conv.i.i701, %if.else.i692 ], [ 1, %if.then166 ]
  %61 = load i32, ptr %block_a154, align 4
  %tobool173.not = icmp eq i32 %61, 0
  br i1 %tobool173.not, label %if.end179, label %if.then174

if.then174:                                       ; preds = %if.end171
  %mb_addr175 = getelementptr inbounds i8, ptr %block_a154, i64 4
  %62 = load i32, ptr %mb_addr175, align 4
  %idxprom176 = sext i32 %62 to i64
  %arrayidx177 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom176
  %mb_type.i704 = getelementptr inbounds i8, ptr %arrayidx177, i64 152
  %63 = load i16, ptr %mb_type.i704, align 8
  %cmp.i705 = icmp eq i16 %63, 14
  br i1 %cmp.i705, label %if.end179, label %if.else.i706

if.else.i706:                                     ; preds = %if.then174
  %64 = getelementptr inbounds i8, ptr %block_a154, i64 10
  %block_a154.val628 = load i16, ptr %64, align 2
  %65 = getelementptr inbounds i8, ptr %block_a154, i64 8
  %block_a154.val = load i16, ptr %65, align 4
  %conv2.i707 = sext i16 %block_a154.val628 to i64
  %shl.i708 = shl nsw i64 %conv2.i707, 2
  %conv3.i709 = sext i16 %block_a154.val to i64
  %add.i710 = add nsw i64 %conv3.i709, 1
  %add4.i711 = add nsw i64 %add.i710, %shl.i708
  %cbp_bits.i712 = getelementptr inbounds i8, ptr %arrayidx177, i64 312
  %66 = load i64, ptr %cbp_bits.i712, align 8
  %sh_prom.i.i713 = and i64 %add4.i711, 4294967295
  %shr1.i.i714 = lshr i64 %66, %sh_prom.i.i713
  %67 = trunc i64 %shr1.i.i714 to i32
  %conv.i.i715 = and i32 %67, 1
  br label %if.end179

if.end179:                                        ; preds = %if.else.i706, %if.then174, %if.end171
  %left_bit152.0 = phi i32 [ %cond150, %if.end171 ], [ %conv.i.i715, %if.else.i706 ], [ 1, %if.then174 ]
  %mul180 = shl nuw nsw i32 %upper_bit151.0, 1
  %add181 = or disjoint i32 %left_bit152.0, %mul180
  %arrayidx186 = getelementptr inbounds i8, ptr %2, i64 132
  %idx.ext188 = zext nneg i32 %add181 to i64
  %add.ptr189 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx186, i64 %idx.ext188
  %call190 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr189) #12
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end201, label %if.then192

if.then192:                                       ; preds = %if.end179
  %add193 = add nsw i32 %51, 1
  %shr194 = ashr i32 %52, 2
  %add195 = add nsw i32 %add193, %shr194
  %sh_prom196 = zext nneg i32 %add195 to i64
  %shl197 = shl i64 17, %sh_prom196
  %cbp_bits198 = getelementptr inbounds i8, ptr %currMB, i64 312
  %68 = load i64, ptr %cbp_bits198, align 8
  %or200 = or i64 %68, %shl197
  store i64 %or200, ptr %cbp_bits198, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then192, %if.end179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b155) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a154) #12
  br label %if.end480

if.then204:                                       ; preds = %entry
  %subblock_y206 = getelementptr inbounds i8, ptr %currMB, i64 64
  %69 = load i32, ptr %subblock_y206, align 8
  %subblock_x208 = getelementptr inbounds i8, ptr %currMB, i64 60
  %70 = load i32, ptr %subblock_x208, align 4
  %is_intra_block211 = getelementptr inbounds i8, ptr %currMB, i64 96
  %71 = load i32, ptr %is_intra_block211, align 8
  %tobool212.not = icmp ne i32 %71, 0
  %cond213 = zext i1 %tobool212.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a217) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b218) #12
  %sub219 = add nsw i32 %70, -1
  %mb_size220 = getelementptr inbounds i8, ptr %1, i64 849124
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub219, i32 noundef %69, ptr noundef nonnull %mb_size220, ptr noundef nonnull %block_a217) #12
  %sub223 = add nsw i32 %69, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %70, i32 noundef %sub223, ptr noundef nonnull %mb_size220, ptr noundef nonnull %block_b218) #12
  %72 = load i32, ptr %block_b218, align 4
  %tobool228.not = icmp eq i32 %72, 0
  br i1 %tobool228.not, label %if.end234, label %if.then229

if.then229:                                       ; preds = %if.then204
  %mb_addr230 = getelementptr inbounds i8, ptr %block_b218, i64 4
  %73 = load i32, ptr %mb_addr230, align 4
  %idxprom231 = sext i32 %73 to i64
  %arrayidx232 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom231
  %mb_type.i718 = getelementptr inbounds i8, ptr %arrayidx232, i64 152
  %74 = load i16, ptr %mb_type.i718, align 8
  %cmp.i719 = icmp eq i16 %74, 14
  br i1 %cmp.i719, label %if.end234, label %if.else.i720

if.else.i720:                                     ; preds = %if.then229
  %75 = getelementptr inbounds i8, ptr %block_b218, i64 10
  %block_b218.val627 = load i16, ptr %75, align 2
  %76 = getelementptr inbounds i8, ptr %block_b218, i64 8
  %block_b218.val = load i16, ptr %76, align 4
  %conv2.i721 = sext i16 %block_b218.val627 to i64
  %shl.i722 = shl nsw i64 %conv2.i721, 2
  %conv3.i723 = sext i16 %block_b218.val to i64
  %add.i724 = add nsw i64 %conv3.i723, 1
  %add4.i725 = add nsw i64 %add.i724, %shl.i722
  %cbp_bits.i726 = getelementptr inbounds i8, ptr %arrayidx232, i64 312
  %77 = load i64, ptr %cbp_bits.i726, align 8
  %sh_prom.i.i727 = and i64 %add4.i725, 4294967295
  %shr1.i.i728 = lshr i64 %77, %sh_prom.i.i727
  %78 = trunc i64 %shr1.i.i728 to i32
  %conv.i.i729 = and i32 %78, 1
  br label %if.end234

if.end234:                                        ; preds = %if.else.i720, %if.then229, %if.then204
  %upper_bit214.0 = phi i32 [ %cond213, %if.then204 ], [ %conv.i.i729, %if.else.i720 ], [ 1, %if.then229 ]
  %79 = load i32, ptr %block_a217, align 4
  %tobool236.not = icmp eq i32 %79, 0
  br i1 %tobool236.not, label %if.end242, label %if.then237

if.then237:                                       ; preds = %if.end234
  %mb_addr238 = getelementptr inbounds i8, ptr %block_a217, i64 4
  %80 = load i32, ptr %mb_addr238, align 4
  %idxprom239 = sext i32 %80 to i64
  %arrayidx240 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom239
  %mb_type.i732 = getelementptr inbounds i8, ptr %arrayidx240, i64 152
  %81 = load i16, ptr %mb_type.i732, align 8
  %cmp.i733 = icmp eq i16 %81, 14
  br i1 %cmp.i733, label %if.end242, label %if.else.i734

if.else.i734:                                     ; preds = %if.then237
  %82 = getelementptr inbounds i8, ptr %block_a217, i64 10
  %block_a217.val626 = load i16, ptr %82, align 2
  %83 = getelementptr inbounds i8, ptr %block_a217, i64 8
  %block_a217.val = load i16, ptr %83, align 4
  %conv2.i735 = sext i16 %block_a217.val626 to i64
  %shl.i736 = shl nsw i64 %conv2.i735, 2
  %conv3.i737 = sext i16 %block_a217.val to i64
  %add.i738 = add nsw i64 %conv3.i737, 1
  %add4.i739 = add nsw i64 %add.i738, %shl.i736
  %cbp_bits.i740 = getelementptr inbounds i8, ptr %arrayidx240, i64 312
  %84 = load i64, ptr %cbp_bits.i740, align 8
  %sh_prom.i.i741 = and i64 %add4.i739, 4294967295
  %shr1.i.i742 = lshr i64 %84, %sh_prom.i.i741
  %85 = trunc i64 %shr1.i.i742 to i32
  %conv.i.i743 = and i32 %85, 1
  br label %if.end242

if.end242:                                        ; preds = %if.else.i734, %if.then237, %if.end234
  %left_bit215.0 = phi i32 [ %cond213, %if.end234 ], [ %conv.i.i743, %if.else.i734 ], [ 1, %if.then237 ]
  %mul243 = shl nuw nsw i32 %upper_bit214.0, 1
  %add244 = or disjoint i32 %left_bit215.0, %mul243
  %arrayidx249 = getelementptr inbounds i8, ptr %2, i64 148
  %idx.ext251 = zext nneg i32 %add244 to i64
  %add.ptr252 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx249, i64 %idx.ext251
  %call253 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr252) #12
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end263, label %if.then255

if.then255:                                       ; preds = %if.end242
  %add256 = add nsw i32 %69, 1
  %shr257 = ashr i32 %70, 2
  %add258 = add nsw i32 %add256, %shr257
  %cmp.i746 = icmp sgt i32 %add258, 63
  br i1 %cmp.i746, label %i64_power2.exit751, label %cond.false.i747

cond.false.i747:                                  ; preds = %if.then255
  %idxprom.i748 = sext i32 %add258 to i64
  %arrayidx.i749 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i748
  %86 = load i64, ptr %arrayidx.i749, align 8
  br label %i64_power2.exit751

i64_power2.exit751:                               ; preds = %if.then255, %cond.false.i747
  %cond.i750 = phi i64 [ %86, %cond.false.i747 ], [ 0, %if.then255 ]
  %cbp_bits260 = getelementptr inbounds i8, ptr %currMB, i64 312
  %87 = load i64, ptr %cbp_bits260, align 8
  %or262 = or i64 %87, %cond.i750
  store i64 %or262, ptr %cbp_bits260, align 8
  br label %if.end263

if.end263:                                        ; preds = %i64_power2.exit751, %if.end242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b218) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a217) #12
  br label %if.end480

if.then266:                                       ; preds = %entry
  %subblock_y268 = getelementptr inbounds i8, ptr %currMB, i64 64
  %88 = load i32, ptr %subblock_y268, align 8
  %subblock_x270 = getelementptr inbounds i8, ptr %currMB, i64 60
  %89 = load i32, ptr %subblock_x270, align 4
  %add272 = add nsw i32 %88, 1
  %shr273 = ashr i32 %89, 2
  %add274 = add nsw i32 %add272, %shr273
  %sh_prom275 = zext nneg i32 %add274 to i64
  %shl276 = shl i64 51, %sh_prom275
  %cbp_bits277 = getelementptr inbounds i8, ptr %currMB, i64 312
  %90 = load i64, ptr %cbp_bits277, align 8
  %or279 = or i64 %shl276, %90
  store i64 %or279, ptr %cbp_bits277, align 8
  br label %if.end480

if.then285:                                       ; preds = %entry, %entry, %entry
  %is_v_block = getelementptr inbounds i8, ptr %currMB, i64 100
  %91 = load i32, ptr %is_v_block, align 4
  %tobool286.not = icmp eq i32 %91, 0
  %cond291 = select i1 %tobool286.not, i32 17, i32 18
  %is_intra_block293 = getelementptr inbounds i8, ptr %currMB, i64 96
  %92 = load i32, ptr %is_intra_block293, align 8
  %tobool294.not = icmp ne i32 %92, 0
  %cond295 = zext i1 %tobool294.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a299) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b300) #12
  %arrayidx303 = getelementptr inbounds i8, ptr %1, i64 849132
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %arrayidx303, ptr noundef nonnull %block_a299) #12
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %arrayidx303, ptr noundef nonnull %block_b300) #12
  %93 = load i32, ptr %block_b300, align 4
  %tobool310.not = icmp eq i32 %93, 0
  br i1 %tobool310.not, label %if.end326, label %if.then311

if.then311:                                       ; preds = %if.then285
  %mb_addr312 = getelementptr inbounds i8, ptr %block_b300, i64 4
  %94 = load i32, ptr %mb_addr312, align 4
  %idxprom313 = sext i32 %94 to i64
  %arrayidx314 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom313
  %mb_type = getelementptr inbounds i8, ptr %arrayidx314, i64 152
  %95 = load i16, ptr %mb_type, align 8
  %cmp315 = icmp eq i16 %95, 14
  br i1 %cmp315, label %if.end326, label %if.else318

if.else318:                                       ; preds = %if.then311
  %cbp_bits322 = getelementptr inbounds i8, ptr %arrayidx314, i64 312
  %96 = load i64, ptr %cbp_bits322, align 8
  %sh_prom.i = zext nneg i32 %cond291 to i64
  %shr1.i = lshr i64 %96, %sh_prom.i
  %97 = trunc i64 %shr1.i to i32
  %conv.i = and i32 %97, 1
  br label %if.end326

if.end326:                                        ; preds = %if.then311, %if.else318, %if.then285
  %upper_bit296.0 = phi i32 [ %conv.i, %if.else318 ], [ %cond295, %if.then285 ], [ 1, %if.then311 ]
  %98 = load i32, ptr %block_a299, align 4
  %tobool328.not = icmp eq i32 %98, 0
  br i1 %tobool328.not, label %if.end346, label %if.then329

if.then329:                                       ; preds = %if.end326
  %mb_addr330 = getelementptr inbounds i8, ptr %block_a299, i64 4
  %99 = load i32, ptr %mb_addr330, align 4
  %idxprom331 = sext i32 %99 to i64
  %arrayidx332 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom331
  %mb_type333 = getelementptr inbounds i8, ptr %arrayidx332, i64 152
  %100 = load i16, ptr %mb_type333, align 8
  %cmp335 = icmp eq i16 %100, 14
  br i1 %cmp335, label %if.end346, label %if.else338

if.else338:                                       ; preds = %if.then329
  %cbp_bits342 = getelementptr inbounds i8, ptr %arrayidx332, i64 312
  %101 = load i64, ptr %cbp_bits342, align 8
  %sh_prom.i752 = zext nneg i32 %cond291 to i64
  %shr1.i753 = lshr i64 %101, %sh_prom.i752
  %102 = trunc i64 %shr1.i753 to i32
  %conv.i754 = and i32 %102, 1
  br label %if.end346

if.end346:                                        ; preds = %if.then329, %if.else338, %if.end326
  %left_bit297.0 = phi i32 [ %conv.i754, %if.else338 ], [ %cond295, %if.end326 ], [ 1, %if.then329 ]
  %mul347 = shl nuw nsw i32 %upper_bit296.0, 1
  %add348 = or disjoint i32 %left_bit297.0, %mul347
  %bcbp_contexts349 = getelementptr inbounds i8, ptr %2, i64 84
  %idxprom350 = zext nneg i32 %type to i64
  %arrayidx351 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom350
  %103 = load i16, ptr %arrayidx351, align 2
  %idxprom352 = sext i16 %103 to i64
  %arrayidx353 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts349, i64 0, i64 %idxprom352
  %idx.ext355 = zext nneg i32 %add348 to i64
  %add.ptr356 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx353, i64 %idx.ext355
  %call357 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr356) #12
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %if.end366, label %if.then359

if.then359:                                       ; preds = %if.end346
  %idxprom.i757 = zext nneg i32 %cond291 to i64
  %arrayidx.i758 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i757
  %104 = load i64, ptr %arrayidx.i758, align 8
  %cbp_bits363 = getelementptr inbounds i8, ptr %currMB, i64 312
  %105 = load i64, ptr %cbp_bits363, align 8
  %or365 = or i64 %105, %104
  store i64 %or365, ptr %cbp_bits363, align 8
  br label %if.end366

if.end366:                                        ; preds = %if.then359, %if.end346
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b300) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a299) #12
  br label %if.end480

if.else367:                                       ; preds = %entry
  %is_v_block368 = getelementptr inbounds i8, ptr %currMB, i64 100
  %106 = load i32, ptr %is_v_block368, align 4
  %tobool369.not = icmp eq i32 %106, 0
  %subblock_y373 = getelementptr inbounds i8, ptr %currMB, i64 64
  %107 = load i32, ptr %subblock_y373, align 8
  %subblock_x375 = getelementptr inbounds i8, ptr %currMB, i64 60
  %108 = load i32, ptr %subblock_x375, align 4
  %cond378 = select i1 %tobool369.not, i32 19, i32 35
  %is_intra_block380 = getelementptr inbounds i8, ptr %currMB, i64 96
  %109 = load i32, ptr %is_intra_block380, align 8
  %tobool381.not = icmp ne i32 %109, 0
  %cond382 = zext i1 %tobool381.not to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_a386) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %block_b387) #12
  %sub388 = add nsw i32 %108, -1
  %arrayidx390 = getelementptr inbounds i8, ptr %1, i64 849132
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %sub388, i32 noundef %107, ptr noundef nonnull %arrayidx390, ptr noundef nonnull %block_a386) #12
  %sub392 = add nsw i32 %107, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %currMB, i32 noundef %108, i32 noundef %sub392, ptr noundef nonnull %arrayidx390, ptr noundef nonnull %block_b387) #12
  %110 = load i32, ptr %block_b387, align 4
  %tobool397.not = icmp eq i32 %110, 0
  br i1 %tobool397.not, label %if.end420, label %if.then398

if.then398:                                       ; preds = %if.else367
  %mb_addr399 = getelementptr inbounds i8, ptr %block_b387, i64 4
  %111 = load i32, ptr %mb_addr399, align 4
  %idxprom400 = sext i32 %111 to i64
  %arrayidx401 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom400
  %mb_type402 = getelementptr inbounds i8, ptr %arrayidx401, i64 152
  %112 = load i16, ptr %mb_type402, align 8
  %cmp404 = icmp eq i16 %112, 14
  br i1 %cmp404, label %if.end420, label %if.else407

if.else407:                                       ; preds = %if.then398
  %y = getelementptr inbounds i8, ptr %block_b387, i64 10
  %113 = load i16, ptr %y, align 2
  %conv408 = sext i16 %113 to i32
  %mul409 = shl nsw i32 %conv408, 2
  %x = getelementptr inbounds i8, ptr %block_b387, i64 8
  %114 = load i16, ptr %x, align 4
  %conv410 = sext i16 %114 to i32
  %cbp_bits415 = getelementptr inbounds i8, ptr %arrayidx401, i64 312
  %115 = load i64, ptr %cbp_bits415, align 8
  %add411 = add nsw i32 %cond378, %conv410
  %add417 = add nsw i32 %add411, %mul409
  %sh_prom.i760 = zext nneg i32 %add417 to i64
  %shr1.i761 = lshr i64 %115, %sh_prom.i760
  %116 = trunc i64 %shr1.i761 to i32
  %conv.i762 = and i32 %116, 1
  br label %if.end420

if.end420:                                        ; preds = %if.then398, %if.else407, %if.else367
  %upper_bit383.0 = phi i32 [ %conv.i762, %if.else407 ], [ %cond382, %if.else367 ], [ 1, %if.then398 ]
  %117 = load i32, ptr %block_a386, align 4
  %tobool422.not = icmp eq i32 %117, 0
  br i1 %tobool422.not, label %if.end447, label %if.then423

if.then423:                                       ; preds = %if.end420
  %mb_addr424 = getelementptr inbounds i8, ptr %block_a386, i64 4
  %118 = load i32, ptr %mb_addr424, align 4
  %idxprom425 = sext i32 %118 to i64
  %arrayidx426 = getelementptr inbounds %struct.macroblock, ptr %3, i64 %idxprom425
  %mb_type427 = getelementptr inbounds i8, ptr %arrayidx426, i64 152
  %119 = load i16, ptr %mb_type427, align 8
  %cmp429 = icmp eq i16 %119, 14
  br i1 %cmp429, label %if.end447, label %if.else432

if.else432:                                       ; preds = %if.then423
  %y433 = getelementptr inbounds i8, ptr %block_a386, i64 10
  %120 = load i16, ptr %y433, align 2
  %conv434 = sext i16 %120 to i32
  %mul435 = shl nsw i32 %conv434, 2
  %x436 = getelementptr inbounds i8, ptr %block_a386, i64 8
  %121 = load i16, ptr %x436, align 4
  %conv437 = sext i16 %121 to i32
  %cbp_bits442 = getelementptr inbounds i8, ptr %arrayidx426, i64 312
  %122 = load i64, ptr %cbp_bits442, align 8
  %add438 = add nsw i32 %cond378, %conv437
  %add444 = add nsw i32 %add438, %mul435
  %sh_prom.i763 = zext nneg i32 %add444 to i64
  %shr1.i764 = lshr i64 %122, %sh_prom.i763
  %123 = trunc i64 %shr1.i764 to i32
  %conv.i765 = and i32 %123, 1
  br label %if.end447

if.end447:                                        ; preds = %if.then423, %if.else432, %if.end420
  %left_bit384.0 = phi i32 [ %conv.i765, %if.else432 ], [ %cond382, %if.end420 ], [ 1, %if.then423 ]
  %mul448 = shl nuw nsw i32 %upper_bit383.0, 1
  %add449 = or disjoint i32 %left_bit384.0, %mul448
  %bcbp_contexts450 = getelementptr inbounds i8, ptr %2, i64 84
  %idxprom451 = sext i32 %type to i64
  %arrayidx452 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom451
  %124 = load i16, ptr %arrayidx452, align 2
  %idxprom453 = sext i16 %124 to i64
  %arrayidx454 = getelementptr inbounds [22 x [4 x %struct.BiContextType]], ptr %bcbp_contexts450, i64 0, i64 %idxprom453
  %idx.ext456 = zext nneg i32 %add449 to i64
  %add.ptr457 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx454, i64 %idx.ext456
  %call458 = call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr457) #12
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.end473, label %if.then460

if.then460:                                       ; preds = %if.end447
  %shr463 = ashr i32 %108, 2
  %. = select i1 %tobool369.not, i32 19, i32 35
  %add465 = add nsw i32 %107, %.
  %add467 = add nsw i32 %add465, %shr463
  %cmp.i766 = icmp sgt i32 %add467, 63
  br i1 %cmp.i766, label %i64_power2.exit771, label %cond.false.i767

cond.false.i767:                                  ; preds = %if.then460
  %idxprom.i768 = sext i32 %add467 to i64
  %arrayidx.i769 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %idxprom.i768
  %125 = load i64, ptr %arrayidx.i769, align 8
  br label %i64_power2.exit771

i64_power2.exit771:                               ; preds = %if.then460, %cond.false.i767
  %cond.i770 = phi i64 [ %125, %cond.false.i767 ], [ 0, %if.then460 ]
  %cbp_bits470 = getelementptr inbounds i8, ptr %currMB, i64 312
  %126 = load i64, ptr %cbp_bits470, align 8
  %or472 = or i64 %126, %cond.i770
  store i64 %or472, ptr %cbp_bits470, align 8
  br label %if.end473

if.end473:                                        ; preds = %i64_power2.exit771, %if.end447
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_b387) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %block_a386) #12
  br label %if.end480

if.end480:                                        ; preds = %if.end77, %if.end201, %if.then266, %if.end473, %if.end366, %if.end263, %if.end138, %if.end26
  %cbp_bit.0 = phi i32 [ %call22, %if.end26 ], [ %call68, %if.end77 ], [ %call129, %if.end138 ], [ %call190, %if.end201 ], [ %call253, %if.end263 ], [ 1, %if.then266 ], [ %call357, %if.end366 ], [ %call458, %if.end473 ]
  ret i32 %cbp_bit.0
}

; Function Attrs: nounwind uwtable
define dso_local void @readRunLevel_CABAC(ptr noundef %currMB, ptr nocapture noundef %se, ptr noundef %dep_dp) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %currMB, align 8
  %coeff_ctr1 = getelementptr inbounds i8, ptr %0, i64 13264
  %1 = load i32, ptr %coeff_ctr1, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %read_and_store_CBP_block_bit = getelementptr inbounds i8, ptr %currMB, i64 456
  %2 = load ptr, ptr %read_and_store_CBP_block_bit, align 8
  %context = getelementptr inbounds i8, ptr %se, i64 24
  %3 = load i32, ptr %context, align 8
  %call = tail call i32 %2(ptr noundef nonnull %currMB, ptr noundef %dep_dp, i32 noundef %3) #12
  store i32 %call, ptr %coeff_ctr1, align 4
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %context, align 8
  %coeff = getelementptr inbounds i8, ptr %0, i64 13008
  %5 = load ptr, ptr %currMB, align 8
  %structure.i = getelementptr inbounds i8, ptr %5, i64 184
  %6 = load i32, ptr %structure.i, align 8
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %lor.end.i, label %for.body.lr.ph.i

lor.end.i:                                        ; preds = %if.then3
  %mb_field.i = getelementptr inbounds i8, ptr %currMB, i64 384
  %7 = load i32, ptr %mb_field.i, align 8
  %.fr.i = freeze i32 %7
  %tobool.i = icmp ne i32 %.fr.i, 0
  %spec.select78.i = select i1 %tobool.i, ptr @pos2ctx_map_int, ptr @pos2ctx_map
  %8 = zext i1 %tobool.i to i64
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %lor.end.i, %if.then3
  %idxprom.i = phi i64 [ 1, %if.then3 ], [ %8, %lor.end.i ]
  %9 = phi ptr [ @pos2ctx_map_int, %if.then3 ], [ %spec.select78.i, %lor.end.i ]
  %tex_ctx.i = getelementptr inbounds i8, ptr %5, i64 328
  %10 = load ptr, ptr %tex_ctx.i, align 8
  %map_contexts.i = getelementptr inbounds i8, ptr %10, i64 436
  %idxprom2.i = sext i32 %4 to i64
  %arrayidx3.i = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %idxprom2.i
  %11 = load i16, ptr %arrayidx3.i, align 2
  %idxprom4.i = sext i16 %11 to i64
  %arrayidx5.i = getelementptr inbounds [2 x [22 x [15 x %struct.BiContextType]]], ptr %map_contexts.i, i64 0, i64 %idxprom.i, i64 %idxprom4.i
  %last_contexts.i = getelementptr inbounds i8, ptr %10, i64 3076
  %arrayidx10.i = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %idxprom2.i
  %12 = load i16, ptr %arrayidx10.i, align 2
  %idxprom11.i = sext i16 %12 to i64
  %arrayidx12.i = getelementptr inbounds [2 x [22 x [15 x %struct.BiContextType]]], ptr %last_contexts.i, i64 0, i64 %idxprom.i, i64 %idxprom11.i
  %arrayidx15.i = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %idxprom2.i
  %13 = load i16, ptr %arrayidx15.i, align 2
  %conv.i = sext i16 %13 to i32
  %14 = lshr i64 133250, %idxprom2.i
  %15 = trunc nuw nsw i64 %14 to i32
  %spec.select.i = and i32 %15, 1
  %spec.select76.i = add nsw i32 %spec.select.i, %conv.i
  %arrayidx23.i = getelementptr inbounds ptr, ptr %9, i64 %idxprom2.i
  %16 = load ptr, ptr %arrayidx23.i, align 8
  %reltable.shift = shl i64 %idxprom2.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %coeff_ctr.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %coeff_ctr.1.i, %for.inc.i ]
  %i.081.i = phi i32 [ %spec.select.i, %for.body.lr.ph.i ], [ %inc44.i, %for.inc.i ]
  %coeff.addr.080.i = phi ptr [ %coeff, %for.body.lr.ph.i ], [ %incdec.ptr42.i, %for.inc.i ]
  %idxprom24.i = sext i32 %i.081.i to i64
  %arrayidx25.i = getelementptr inbounds i8, ptr %16, i64 %idxprom24.i
  %17 = load i8, ptr %arrayidx25.i, align 1
  %idx.ext.i = zext i8 %17 to i64
  %add.ptr.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx5.i, i64 %idx.ext.i
  %call.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i) #12
  %tobool27.not.i = icmp eq i32 %call.i, 0
  %incdec.ptr42.i = getelementptr inbounds i8, ptr %coeff.addr.080.i, i64 4
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %for.body.i
  store i32 1, ptr %coeff.addr.080.i, align 4
  %inc29.i = add nsw i32 %coeff_ctr.082.i, 1
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @pos2ctx_last.rel, i64 %reltable.shift)
  %arrayidx33.i = getelementptr inbounds i8, ptr %reltable.intrinsic, i64 %idxprom24.i
  %18 = load i8, ptr %arrayidx33.i, align 1
  %idx.ext35.i = zext i8 %18 to i64
  %add.ptr36.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx12.i, i64 %idx.ext35.i
  %call37.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr36.i) #12
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %for.inc.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.then28.i
  %sub.i = sub nsw i32 %spec.select76.i, %i.081.i
  %conv40.i = sext i32 %sub.i to i64
  %mul.i = shl nsw i64 %conv40.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %incdec.ptr42.i, i8 0, i64 %mul.i, i1 false)
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  store i32 0, ptr %coeff.addr.080.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then39.i, %if.then28.i
  %i.1.i = phi i32 [ %spec.select76.i, %if.then39.i ], [ %i.081.i, %if.then28.i ], [ %i.081.i, %if.else.i ]
  %coeff_ctr.1.i = phi i32 [ %inc29.i, %if.then39.i ], [ %inc29.i, %if.then28.i ], [ %coeff_ctr.082.i, %if.else.i ]
  %inc44.i = add nsw i32 %i.1.i, 1
  %cmp20.i = icmp slt i32 %inc44.i, %spec.select76.i
  br i1 %cmp20.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i
  %cmp45.not.not.i = icmp slt i32 %i.1.i, %spec.select76.i
  br i1 %cmp45.not.not.i, label %if.then47.i, label %read_significance_map.exit

if.then47.i:                                      ; preds = %for.end.i
  store i32 1, ptr %incdec.ptr42.i, align 4
  %inc48.i = add nsw i32 %coeff_ctr.1.i, 1
  br label %read_significance_map.exit

read_significance_map.exit:                       ; preds = %for.end.i, %if.then47.i
  %coeff_ctr.2.i = phi i32 [ %inc48.i, %if.then47.i ], [ %coeff_ctr.1.i, %for.end.i ]
  store i32 %coeff_ctr.2.i, ptr %coeff_ctr1, align 4
  %tex_ctx = getelementptr inbounds i8, ptr %0, i64 328
  %19 = load ptr, ptr %tex_ctx, align 8
  %20 = load i32, ptr %context, align 8
  %one_contexts1.i = getelementptr inbounds i8, ptr %19, i64 5716
  %idxprom.i53 = sext i32 %20 to i64
  %arrayidx.i = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom.i53
  %21 = load i16, ptr %arrayidx.i, align 2
  %idxprom2.i54 = sext i16 %21 to i64
  %arrayidx3.i55 = getelementptr inbounds [22 x [5 x %struct.BiContextType]], ptr %one_contexts1.i, i64 0, i64 %idxprom2.i54
  %abs_contexts4.i = getelementptr inbounds i8, ptr %19, i64 6156
  %arrayidx6.i = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %idxprom.i53
  %22 = load i16, ptr %arrayidx6.i, align 2
  %idxprom7.i = sext i16 %22 to i64
  %arrayidx8.i = getelementptr inbounds [22 x [5 x %struct.BiContextType]], ptr %abs_contexts4.i, i64 0, i64 %idxprom7.i
  %arrayidx11.i = getelementptr inbounds [22 x i16], ptr @max_c2, i64 0, i64 %idxprom.i53
  %23 = load i16, ptr %arrayidx11.i, align 2
  %conv.i56 = sext i16 %23 to i32
  %arrayidx13.i = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %idxprom.i53
  %24 = load i16, ptr %arrayidx13.i, align 2
  %conv18.i = sext i16 %24 to i32
  %idxprom14.i = sext i16 %24 to i64
  %arrayidx15.i57 = getelementptr inbounds i32, ptr %coeff, i64 %idxprom14.i
  br label %for.body.i58

for.body.i58:                                     ; preds = %if.end38.i, %read_significance_map.exit
  %cof.060.i = phi ptr [ %incdec.ptr.i, %if.end38.i ], [ %arrayidx15.i57, %read_significance_map.exit ]
  %i.059.i = phi i32 [ %dec.i, %if.end38.i ], [ %conv18.i, %read_significance_map.exit ]
  %c1.058.i = phi i32 [ %c1.2.i, %if.end38.i ], [ 1, %read_significance_map.exit ]
  %c2.057.i = phi i32 [ %c2.2.i, %if.end38.i ], [ 0, %read_significance_map.exit ]
  %25 = load i32, ptr %cof.060.i, align 4
  %cmp20.not.i = icmp eq i32 %25, 0
  br i1 %cmp20.not.i, label %if.end38.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i58
  %cond.i.i = tail call noundef i32 @llvm.smin.i32(i32 %c1.058.i, i32 4)
  %idx.ext.i59 = sext i32 %cond.i.i to i64
  %add.ptr.i60 = getelementptr inbounds %struct.BiContextType, ptr %arrayidx3.i55, i64 %idx.ext.i59
  %call22.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr.i60) #12
  %26 = load i32, ptr %cof.060.i, align 4
  %add.i = add i32 %26, %call22.i
  store i32 %add.i, ptr %cof.060.i, align 4
  %cmp23.i = icmp eq i32 %add.i, 2
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i61

if.then25.i:                                      ; preds = %if.then.i
  %inc.i = add nsw i32 %c2.057.i, 1
  %cond.i55.i = tail call noundef i32 @llvm.smin.i32(i32 %c2.057.i, i32 %conv.i56)
  %idx.ext27.i = sext i32 %cond.i55.i to i64
  %add.ptr28.i = getelementptr inbounds %struct.BiContextType, ptr %arrayidx8.i, i64 %idx.ext27.i
  %call.i.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28.i) #12
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %unary_exp_golomb_level_decode.exit.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then25.i, %do.body.i.i
  %symbol.0.i.i = phi i32 [ %inc.i.i, %do.body.i.i ], [ 0, %if.then25.i ]
  %k.0.i.i = phi i32 [ %inc2.i.i, %do.body.i.i ], [ 1, %if.then25.i ]
  %call1.i.i = tail call i32 @biari_decode_symbol(ptr noundef %dep_dp, ptr noundef nonnull %add.ptr28.i) #12
  %inc.i.i = add nuw nsw i32 %symbol.0.i.i, 1
  %inc2.i.i = add nuw nsw i32 %k.0.i.i, 1
  %cmp3.i.i = icmp ne i32 %call1.i.i, 0
  %cmp4.i.i = icmp ne i32 %inc2.i.i, 13
  %27 = select i1 %cmp3.i.i, i1 %cmp4.i.i, i1 false
  br i1 %27, label %do.body.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  br i1 %cmp3.i.i, label %do.body.i.i.i, label %unary_exp_golomb_level_decode.exit.i

do.body.i.i.i:                                    ; preds = %do.end.i.i, %do.body.i.i.i
  %k.addr.0.i.i.i = phi i32 [ %k.addr.1.i.i.i, %do.body.i.i.i ], [ 0, %do.end.i.i ]
  %symbol.0.i.i.i = phi i32 [ %symbol.1.i.i.i, %do.body.i.i.i ], [ 0, %do.end.i.i ]
  %call.i.i.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 1
  %shl.i.i.i = shl nuw i32 1, %k.addr.0.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %k.addr.1.i.i.i = add nuw nsw i32 %k.addr.0.i.i.i, %inc.i.i.i
  %add.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 0
  %symbol.1.i.i.i = add nsw i32 %add.i.i.i, %symbol.0.i.i.i
  %cmp1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp1.not.i.i.i, label %while.cond.preheader.i.i.i, label %do.body.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %do.body.i.i.i
  %tobool.not15.i.i.i = icmp eq i32 %k.addr.1.i.i.i, 0
  br i1 %tobool.not15.i.i.i, label %exp_golomb_decode_eq_prob.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.preheader.i.i.i, %while.body.i.i.i
  %binary_symbol.017.i.i.i = phi i32 [ %binary_symbol.1.i.i.i, %while.body.i.i.i ], [ 0, %while.cond.preheader.i.i.i ]
  %k.addr.216.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i ], [ %k.addr.1.i.i.i, %while.cond.preheader.i.i.i ]
  %dec.i.i.i = add nsw i32 %k.addr.216.i.i.i, -1
  %call2.i.i.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %cmp3.i.i.i = icmp eq i32 %call2.i.i.i, 1
  %shl5.i.i.i = shl nuw i32 1, %dec.i.i.i
  %or.i.i.i = select i1 %cmp3.i.i.i, i32 %shl5.i.i.i, i32 0
  %binary_symbol.1.i.i.i = or i32 %or.i.i.i, %binary_symbol.017.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %exp_golomb_decode_eq_prob.exit.i.i, label %while.body.i.i.i

exp_golomb_decode_eq_prob.exit.i.i:               ; preds = %while.body.i.i.i, %while.cond.preheader.i.i.i
  %binary_symbol.0.lcssa.i.i.i = phi i32 [ 0, %while.cond.preheader.i.i.i ], [ %binary_symbol.1.i.i.i, %while.body.i.i.i ]
  %add7.i.i.i = add nuw i32 %symbol.0.i.i, 2
  %add.i.i = add i32 %add7.i.i.i, %symbol.1.i.i.i
  %add8.i.i = add i32 %add.i.i, %binary_symbol.0.lcssa.i.i.i
  br label %unary_exp_golomb_level_decode.exit.i

unary_exp_golomb_level_decode.exit.i:             ; preds = %exp_golomb_decode_eq_prob.exit.i.i, %do.end.i.i, %if.then25.i
  %retval.0.i.i = phi i32 [ 0, %if.then25.i ], [ %add8.i.i, %exp_golomb_decode_eq_prob.exit.i.i ], [ %inc.i.i, %do.end.i.i ]
  %28 = load i32, ptr %cof.060.i, align 4
  %add30.i = add i32 %28, %retval.0.i.i
  store i32 %add30.i, ptr %cof.060.i, align 4
  br label %if.end33.i

if.else.i61:                                      ; preds = %if.then.i
  %tobool.not.i = icmp eq i32 %c1.058.i, 0
  %inc32.i = add nsw i32 %c1.058.i, 1
  %spec.select.i62 = select i1 %tobool.not.i, i32 0, i32 %inc32.i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i61, %unary_exp_golomb_level_decode.exit.i
  %c2.1.i = phi i32 [ %inc.i, %unary_exp_golomb_level_decode.exit.i ], [ %c2.057.i, %if.else.i61 ]
  %c1.1.i = phi i32 [ 0, %unary_exp_golomb_level_decode.exit.i ], [ %spec.select.i62, %if.else.i61 ]
  %call34.i = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %dep_dp) #12
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end38.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  %29 = load i32, ptr %cof.060.i, align 4
  %mul.i63 = sub nsw i32 0, %29
  store i32 %mul.i63, ptr %cof.060.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end33.i, %for.body.i58
  %c2.2.i = phi i32 [ %c2.1.i, %if.then36.i ], [ %c2.1.i, %if.end33.i ], [ %c2.057.i, %for.body.i58 ]
  %c1.2.i = phi i32 [ %c1.1.i, %if.then36.i ], [ %c1.1.i, %if.end33.i ], [ %c1.058.i, %for.body.i58 ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %cof.060.i, i64 -4
  %dec.i = add nsw i32 %i.059.i, -1
  %cmp.i = icmp sgt i32 %i.059.i, 0
  br i1 %cmp.i, label %for.body.i58, label %if.end9thread-pre-split

if.end9thread-pre-split:                          ; preds = %if.end38.i
  %.pr = load i32, ptr %coeff_ctr1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %entry
  %30 = phi i32 [ %.pr, %if.end9thread-pre-split ], [ %1, %entry ]
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  %value2 = getelementptr inbounds i8, ptr %se, i64 8
  %coeff11 = getelementptr inbounds i8, ptr %0, i64 13008
  %pos = getelementptr inbounds i8, ptr %0, i64 13268
  store i32 0, ptr %value2, align 8
  %31 = load i32, ptr %pos, align 4
  %idxprom66 = sext i32 %31 to i64
  %arrayidx67 = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom66
  %32 = load i32, ptr %arrayidx67, align 4
  %cmp1268 = icmp eq i32 %32, 0
  br i1 %cmp1268, label %for.inc, label %for.end

for.inc:                                          ; preds = %if.then10, %for.inc
  %33 = phi i32 [ %35, %for.inc ], [ %31, %if.then10 ]
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %pos, align 4
  %34 = load i32, ptr %value2, align 8
  %inc15 = add nsw i32 %34, 1
  store i32 %inc15, ptr %value2, align 8
  %35 = load i32, ptr %pos, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom
  %36 = load i32, ptr %arrayidx, align 4
  %cmp12 = icmp eq i32 %36, 0
  br i1 %cmp12, label %for.inc, label %for.end

for.end:                                          ; preds = %for.inc, %if.then10
  %idxprom.lcssa = phi i64 [ %idxprom66, %if.then10 ], [ %idxprom, %for.inc ]
  %.lcssa = phi i32 [ %31, %if.then10 ], [ %35, %for.inc ]
  %arrayidx.le = getelementptr inbounds [64 x i32], ptr %coeff11, i64 0, i64 %idxprom.lcssa
  %inc18 = add nsw i32 %.lcssa, 1
  store i32 %inc18, ptr %pos, align 4
  %37 = load i32, ptr %arrayidx.le, align 4
  br label %if.end23

if.else:                                          ; preds = %if.then, %if.end9
  %value221 = getelementptr inbounds i8, ptr %se, i64 8
  store i32 0, ptr %value221, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.end
  %.sink = phi i32 [ 0, %if.else ], [ %37, %for.end ]
  %value122 = getelementptr inbounds i8, ptr %se, i64 4
  store i32 %.sink, ptr %value122, align 4
  %38 = load i32, ptr %coeff_ctr1, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, ptr %coeff_ctr1, align 4
  %cmp24 = icmp eq i32 %38, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  %pos26 = getelementptr inbounds i8, ptr %0, i64 13268
  store i32 0, ptr %pos26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @readSyntaxElement_CABAC(ptr noundef %currMB, ptr noundef %se, ptr noundef %this_dataPart) local_unnamed_addr #0 {
entry:
  %de_cabac = getelementptr inbounds i8, ptr %this_dataPart, i64 8
  %call = tail call i32 @arideco_bits_read(ptr noundef nonnull %de_cabac) #12
  %reading = getelementptr inbounds i8, ptr %se, i64 40
  %0 = load ptr, ptr %reading, align 8
  tail call void %0(ptr noundef %currMB, ptr noundef %se, ptr noundef nonnull %de_cabac) #12
  %call1 = tail call i32 @arideco_bits_read(ptr noundef nonnull %de_cabac) #12
  %sub = sub nsw i32 %call1, %call
  %len = getelementptr inbounds i8, ptr %se, i64 12
  store i32 %sub, ptr %len, align 4
  ret i32 %sub
}

declare i32 @arideco_bits_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cabac_startcode_follows(ptr nocapture noundef readonly %currSlice, i32 noundef %eos_bit) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %eos_bit, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %partArr = getelementptr inbounds i8, ptr %currSlice, i64 312
  %0 = load ptr, ptr %partArr, align 8
  %de_cabac = getelementptr inbounds i8, ptr %0, i64 8
  %call = tail call i32 @biari_decode_final(ptr noundef nonnull %de_cabac) #12
  %1 = icmp eq i32 %call, 1
  %2 = zext i1 %1 to i32
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %bit.0 = phi i32 [ %2, %if.then ], [ 0, %entry ]
  ret i32 %bit.0
}

; Function Attrs: nounwind uwtable
define dso_local void @readIPCM_CABAC(ptr nocapture noundef readonly %currSlice, ptr nocapture noundef %dP) local_unnamed_addr #0 {
entry:
  %val = alloca i32, align 4
  %0 = load ptr, ptr %currSlice, align 8
  %dec_picture2 = getelementptr inbounds i8, ptr %currSlice, i64 13520
  %1 = load ptr, ptr %dec_picture2, align 8
  %2 = load ptr, ptr %dP, align 8
  %streamBuffer = getelementptr inbounds i8, ptr %2, i64 16
  %3 = load ptr, ptr %streamBuffer, align 8
  %bitstream_length = getelementptr inbounds i8, ptr %2, i64 12
  %4 = load i32, ptr %bitstream_length, align 4
  %shl = shl i32 %4, 3
  %add = or disjoint i32 %shl, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  store i32 0, ptr %val, align 4
  %DbitsLeft = getelementptr inbounds i8, ptr %dP, i64 16
  %5 = load i32, ptr %DbitsLeft, align 8
  %cmp102 = icmp sgt i32 %5, 7
  br i1 %cmp102, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %Dvalue = getelementptr inbounds i8, ptr %dP, i64 12
  %Dcodestrm_len = getelementptr inbounds i8, ptr %dP, i64 32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %10, %while.body ]
  %7 = load i32, ptr %Dvalue, align 4
  %shr = lshr i32 %7, 8
  store i32 %shr, ptr %Dvalue, align 4
  %sub = add nsw i32 %6, -8
  store i32 %sub, ptr %DbitsLeft, align 8
  %8 = load ptr, ptr %Dcodestrm_len, align 8
  %9 = load i32, ptr %8, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %8, align 4
  %10 = load i32, ptr %DbitsLeft, align 8
  %cmp = icmp sgt i32 %10, 7
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %Dcodestrm_len5 = getelementptr inbounds i8, ptr %dP, i64 32
  %11 = load ptr, ptr %Dcodestrm_len5, align 8
  %12 = load i32, ptr %11, align 4
  %shl6 = shl i32 %12, 3
  %bitdepth_luma = getelementptr inbounds i8, ptr %0, i64 849040
  %13 = load i16, ptr %bitdepth_luma, align 8
  %conv = sext i16 %13 to i32
  %cof = getelementptr inbounds i8, ptr %currSlice, i64 1272
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %while.end, %for.cond9.preheader
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %for.cond9.preheader ]
  %bitoffset.0107 = phi i32 [ %shl6, %while.end ], [ %add17.15, %for.cond9.preheader ]
  %bits_read.0106 = phi i32 [ 0, %while.end ], [ %add13.15, %for.cond9.preheader ]
  %call = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.0107, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13 = add nsw i32 %call, %bits_read.0106
  %14 = load i32, ptr %val, align 4
  %15 = load ptr, ptr %cof, align 8
  %16 = load ptr, ptr %15, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  %17 = load ptr, ptr %arrayidx14, align 8
  store i32 %14, ptr %17, align 4
  %add17 = add nsw i32 %bitoffset.0107, %conv
  %call.1 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.1 = add nsw i32 %call.1, %add13
  %18 = load i32, ptr %val, align 4
  %19 = load ptr, ptr %cof, align 8
  %20 = load ptr, ptr %19, align 8
  %arrayidx14.1 = getelementptr inbounds ptr, ptr %20, i64 %indvars.iv
  %21 = load ptr, ptr %arrayidx14.1, align 8
  %arrayidx16.1 = getelementptr inbounds i8, ptr %21, i64 4
  store i32 %18, ptr %arrayidx16.1, align 4
  %add17.1 = add nsw i32 %add17, %conv
  %call.2 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.1, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.2 = add nsw i32 %call.2, %add13.1
  %22 = load i32, ptr %val, align 4
  %23 = load ptr, ptr %cof, align 8
  %24 = load ptr, ptr %23, align 8
  %arrayidx14.2 = getelementptr inbounds ptr, ptr %24, i64 %indvars.iv
  %25 = load ptr, ptr %arrayidx14.2, align 8
  %arrayidx16.2 = getelementptr inbounds i8, ptr %25, i64 8
  store i32 %22, ptr %arrayidx16.2, align 4
  %add17.2 = add nsw i32 %add17.1, %conv
  %call.3 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.2, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.3 = add nsw i32 %call.3, %add13.2
  %26 = load i32, ptr %val, align 4
  %27 = load ptr, ptr %cof, align 8
  %28 = load ptr, ptr %27, align 8
  %arrayidx14.3 = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv
  %29 = load ptr, ptr %arrayidx14.3, align 8
  %arrayidx16.3 = getelementptr inbounds i8, ptr %29, i64 12
  store i32 %26, ptr %arrayidx16.3, align 4
  %add17.3 = add nsw i32 %add17.2, %conv
  %call.4 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.3, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.4 = add nsw i32 %call.4, %add13.3
  %30 = load i32, ptr %val, align 4
  %31 = load ptr, ptr %cof, align 8
  %32 = load ptr, ptr %31, align 8
  %arrayidx14.4 = getelementptr inbounds ptr, ptr %32, i64 %indvars.iv
  %33 = load ptr, ptr %arrayidx14.4, align 8
  %arrayidx16.4 = getelementptr inbounds i8, ptr %33, i64 16
  store i32 %30, ptr %arrayidx16.4, align 4
  %add17.4 = add nsw i32 %add17.3, %conv
  %call.5 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.4, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.5 = add nsw i32 %call.5, %add13.4
  %34 = load i32, ptr %val, align 4
  %35 = load ptr, ptr %cof, align 8
  %36 = load ptr, ptr %35, align 8
  %arrayidx14.5 = getelementptr inbounds ptr, ptr %36, i64 %indvars.iv
  %37 = load ptr, ptr %arrayidx14.5, align 8
  %arrayidx16.5 = getelementptr inbounds i8, ptr %37, i64 20
  store i32 %34, ptr %arrayidx16.5, align 4
  %add17.5 = add nsw i32 %add17.4, %conv
  %call.6 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.5, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.6 = add nsw i32 %call.6, %add13.5
  %38 = load i32, ptr %val, align 4
  %39 = load ptr, ptr %cof, align 8
  %40 = load ptr, ptr %39, align 8
  %arrayidx14.6 = getelementptr inbounds ptr, ptr %40, i64 %indvars.iv
  %41 = load ptr, ptr %arrayidx14.6, align 8
  %arrayidx16.6 = getelementptr inbounds i8, ptr %41, i64 24
  store i32 %38, ptr %arrayidx16.6, align 4
  %add17.6 = add nsw i32 %add17.5, %conv
  %call.7 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.6, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.7 = add nsw i32 %call.7, %add13.6
  %42 = load i32, ptr %val, align 4
  %43 = load ptr, ptr %cof, align 8
  %44 = load ptr, ptr %43, align 8
  %arrayidx14.7 = getelementptr inbounds ptr, ptr %44, i64 %indvars.iv
  %45 = load ptr, ptr %arrayidx14.7, align 8
  %arrayidx16.7 = getelementptr inbounds i8, ptr %45, i64 28
  store i32 %42, ptr %arrayidx16.7, align 4
  %add17.7 = add nsw i32 %add17.6, %conv
  %call.8 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.7, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.8 = add nsw i32 %call.8, %add13.7
  %46 = load i32, ptr %val, align 4
  %47 = load ptr, ptr %cof, align 8
  %48 = load ptr, ptr %47, align 8
  %arrayidx14.8 = getelementptr inbounds ptr, ptr %48, i64 %indvars.iv
  %49 = load ptr, ptr %arrayidx14.8, align 8
  %arrayidx16.8 = getelementptr inbounds i8, ptr %49, i64 32
  store i32 %46, ptr %arrayidx16.8, align 4
  %add17.8 = add nsw i32 %add17.7, %conv
  %call.9 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.8, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.9 = add nsw i32 %call.9, %add13.8
  %50 = load i32, ptr %val, align 4
  %51 = load ptr, ptr %cof, align 8
  %52 = load ptr, ptr %51, align 8
  %arrayidx14.9 = getelementptr inbounds ptr, ptr %52, i64 %indvars.iv
  %53 = load ptr, ptr %arrayidx14.9, align 8
  %arrayidx16.9 = getelementptr inbounds i8, ptr %53, i64 36
  store i32 %50, ptr %arrayidx16.9, align 4
  %add17.9 = add nsw i32 %add17.8, %conv
  %call.10 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.9, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.10 = add nsw i32 %call.10, %add13.9
  %54 = load i32, ptr %val, align 4
  %55 = load ptr, ptr %cof, align 8
  %56 = load ptr, ptr %55, align 8
  %arrayidx14.10 = getelementptr inbounds ptr, ptr %56, i64 %indvars.iv
  %57 = load ptr, ptr %arrayidx14.10, align 8
  %arrayidx16.10 = getelementptr inbounds i8, ptr %57, i64 40
  store i32 %54, ptr %arrayidx16.10, align 4
  %add17.10 = add nsw i32 %add17.9, %conv
  %call.11 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.10, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.11 = add nsw i32 %call.11, %add13.10
  %58 = load i32, ptr %val, align 4
  %59 = load ptr, ptr %cof, align 8
  %60 = load ptr, ptr %59, align 8
  %arrayidx14.11 = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv
  %61 = load ptr, ptr %arrayidx14.11, align 8
  %arrayidx16.11 = getelementptr inbounds i8, ptr %61, i64 44
  store i32 %58, ptr %arrayidx16.11, align 4
  %add17.11 = add nsw i32 %add17.10, %conv
  %call.12 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.11, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.12 = add nsw i32 %call.12, %add13.11
  %62 = load i32, ptr %val, align 4
  %63 = load ptr, ptr %cof, align 8
  %64 = load ptr, ptr %63, align 8
  %arrayidx14.12 = getelementptr inbounds ptr, ptr %64, i64 %indvars.iv
  %65 = load ptr, ptr %arrayidx14.12, align 8
  %arrayidx16.12 = getelementptr inbounds i8, ptr %65, i64 48
  store i32 %62, ptr %arrayidx16.12, align 4
  %add17.12 = add nsw i32 %add17.11, %conv
  %call.13 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.12, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.13 = add nsw i32 %call.13, %add13.12
  %66 = load i32, ptr %val, align 4
  %67 = load ptr, ptr %cof, align 8
  %68 = load ptr, ptr %67, align 8
  %arrayidx14.13 = getelementptr inbounds ptr, ptr %68, i64 %indvars.iv
  %69 = load ptr, ptr %arrayidx14.13, align 8
  %arrayidx16.13 = getelementptr inbounds i8, ptr %69, i64 52
  store i32 %66, ptr %arrayidx16.13, align 4
  %add17.13 = add nsw i32 %add17.12, %conv
  %call.14 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.13, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.14 = add nsw i32 %call.14, %add13.13
  %70 = load i32, ptr %val, align 4
  %71 = load ptr, ptr %cof, align 8
  %72 = load ptr, ptr %71, align 8
  %arrayidx14.14 = getelementptr inbounds ptr, ptr %72, i64 %indvars.iv
  %73 = load ptr, ptr %arrayidx14.14, align 8
  %arrayidx16.14 = getelementptr inbounds i8, ptr %73, i64 56
  store i32 %70, ptr %arrayidx16.14, align 4
  %add17.14 = add nsw i32 %add17.13, %conv
  %call.15 = call i32 @GetBits(ptr noundef %3, i32 noundef %add17.14, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv) #12
  %add13.15 = add nsw i32 %call.15, %add13.14
  %74 = load i32, ptr %val, align 4
  %75 = load ptr, ptr %cof, align 8
  %76 = load ptr, ptr %75, align 8
  %arrayidx14.15 = getelementptr inbounds ptr, ptr %76, i64 %indvars.iv
  %77 = load ptr, ptr %arrayidx14.15, align 8
  %arrayidx16.15 = getelementptr inbounds i8, ptr %77, i64 60
  store i32 %74, ptr %arrayidx16.15, align 4
  %add17.15 = add nsw i32 %add17.14, %conv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end20, label %for.cond9.preheader

for.end20:                                        ; preds = %for.cond9.preheader
  %bitdepth_chroma = getelementptr inbounds i8, ptr %0, i64 849042
  %78 = load i16, ptr %bitdepth_chroma, align 2
  %conv21 = sext i16 %78 to i32
  %chroma_format_idc = getelementptr inbounds i8, ptr %1, i64 268
  %79 = load i32, ptr %chroma_format_idc, align 4
  %cmp22.not = icmp eq i32 %79, 0
  br i1 %cmp22.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end20
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %0, i64 849280
  %80 = load i32, ptr %separate_colour_plane_flag, align 8
  %cmp24 = icmp eq i32 %80, 0
  br i1 %cmp24, label %for.cond26.preheader, label %if.end

for.cond26.preheader:                             ; preds = %land.lhs.true
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %81 = load i32, ptr %mb_cr_size_y, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %for.cond34.preheader.lr.ph, label %if.end

for.cond34.preheader.lr.ph:                       ; preds = %for.cond26.preheader
  %83 = load i32, ptr %mb_cr_size_x, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %for.cond34.preheader, label %if.end

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.inc51
  %85 = phi i32 [ %93, %for.inc51 ], [ %81, %for.cond34.preheader.lr.ph ]
  %86 = phi i32 [ %94, %for.inc51 ], [ %83, %for.cond34.preheader.lr.ph ]
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %for.inc51 ], [ 0, %for.cond34.preheader.lr.ph ]
  %bitoffset.3116 = phi i32 [ %bitoffset.4.lcssa, %for.inc51 ], [ %add17.15, %for.cond34.preheader.lr.ph ]
  %bits_read.3115 = phi i32 [ %bits_read.4.lcssa, %for.inc51 ], [ %add13.15, %for.cond34.preheader.lr.ph ]
  %cmp35109 = icmp sgt i32 %86, 0
  br i1 %cmp35109, label %for.body37, label %for.inc51

for.body37:                                       ; preds = %for.cond34.preheader, %for.body37
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.body37 ], [ 0, %for.cond34.preheader ]
  %bitoffset.4111 = phi i32 [ %add47, %for.body37 ], [ %bitoffset.3116, %for.cond34.preheader ]
  %bits_read.4110 = phi i32 [ %add39, %for.body37 ], [ %bits_read.3115, %for.cond34.preheader ]
  %call38 = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.4111, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv21) #12
  %add39 = add nsw i32 %call38, %bits_read.4110
  %87 = load i32, ptr %val, align 4
  %88 = load ptr, ptr %cof, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %88, i64 8
  %89 = load ptr, ptr %arrayidx42, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %89, i64 %indvars.iv132
  %90 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %90, i64 %indvars.iv129
  store i32 %87, ptr %arrayidx46, align 4
  %add47 = add nsw i32 %bitoffset.4111, %conv21
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %91 = load i32, ptr %mb_cr_size_x, align 4
  %92 = sext i32 %91 to i64
  %cmp35 = icmp slt i64 %indvars.iv.next130, %92
  br i1 %cmp35, label %for.body37, label %for.inc51.loopexit

for.inc51.loopexit:                               ; preds = %for.body37
  %.pre = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc51.loopexit, %for.cond34.preheader
  %93 = phi i32 [ %85, %for.cond34.preheader ], [ %.pre, %for.inc51.loopexit ]
  %94 = phi i32 [ %86, %for.cond34.preheader ], [ %91, %for.inc51.loopexit ]
  %bits_read.4.lcssa = phi i32 [ %bits_read.3115, %for.cond34.preheader ], [ %add39, %for.inc51.loopexit ]
  %bitoffset.4.lcssa = phi i32 [ %bitoffset.3116, %for.cond34.preheader ], [ %add47, %for.inc51.loopexit ]
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %95 = sext i32 %93 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next133, %95
  br i1 %cmp31, label %for.cond34.preheader, label %for.inc54, !llvm.loop !7

for.inc54:                                        ; preds = %for.inc51
  %cmp31114.1 = icmp sgt i32 %93, 0
  br i1 %cmp31114.1, label %for.cond34.preheader.lr.ph.1, label %if.end

for.cond34.preheader.lr.ph.1:                     ; preds = %for.inc54
  %.pr = load i32, ptr %mb_cr_size_x, align 4
  %96 = icmp sgt i32 %.pr, 0
  br i1 %96, label %for.cond34.preheader.1, label %if.end

for.cond34.preheader.1:                           ; preds = %for.cond34.preheader.lr.ph.1, %for.inc51.1
  %97 = phi i32 [ %105, %for.inc51.1 ], [ %93, %for.cond34.preheader.lr.ph.1 ]
  %98 = phi i32 [ %106, %for.inc51.1 ], [ %.pr, %for.cond34.preheader.lr.ph.1 ]
  %indvars.iv132.1 = phi i64 [ %indvars.iv.next133.1, %for.inc51.1 ], [ 0, %for.cond34.preheader.lr.ph.1 ]
  %bitoffset.3116.1 = phi i32 [ %bitoffset.4.lcssa.1, %for.inc51.1 ], [ %bitoffset.4.lcssa, %for.cond34.preheader.lr.ph.1 ]
  %bits_read.3115.1 = phi i32 [ %bits_read.4.lcssa.1, %for.inc51.1 ], [ %bits_read.4.lcssa, %for.cond34.preheader.lr.ph.1 ]
  %cmp35109.1 = icmp sgt i32 %98, 0
  br i1 %cmp35109.1, label %for.body37.1, label %for.inc51.1

for.body37.1:                                     ; preds = %for.cond34.preheader.1, %for.body37.1
  %indvars.iv129.1 = phi i64 [ %indvars.iv.next130.1, %for.body37.1 ], [ 0, %for.cond34.preheader.1 ]
  %bitoffset.4111.1 = phi i32 [ %add47.1, %for.body37.1 ], [ %bitoffset.3116.1, %for.cond34.preheader.1 ]
  %bits_read.4110.1 = phi i32 [ %add39.1, %for.body37.1 ], [ %bits_read.3115.1, %for.cond34.preheader.1 ]
  %call38.1 = call i32 @GetBits(ptr noundef %3, i32 noundef %bitoffset.4111.1, ptr noundef nonnull %val, i32 noundef %add, i32 noundef %conv21) #12
  %add39.1 = add nsw i32 %call38.1, %bits_read.4110.1
  %99 = load i32, ptr %val, align 4
  %100 = load ptr, ptr %cof, align 8
  %arrayidx42.1 = getelementptr inbounds i8, ptr %100, i64 16
  %101 = load ptr, ptr %arrayidx42.1, align 8
  %arrayidx44.1 = getelementptr inbounds ptr, ptr %101, i64 %indvars.iv132.1
  %102 = load ptr, ptr %arrayidx44.1, align 8
  %arrayidx46.1 = getelementptr inbounds i32, ptr %102, i64 %indvars.iv129.1
  store i32 %99, ptr %arrayidx46.1, align 4
  %add47.1 = add nsw i32 %bitoffset.4111.1, %conv21
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129.1, 1
  %103 = load i32, ptr %mb_cr_size_x, align 4
  %104 = sext i32 %103 to i64
  %cmp35.1 = icmp slt i64 %indvars.iv.next130.1, %104
  br i1 %cmp35.1, label %for.body37.1, label %for.inc51.loopexit.1

for.inc51.loopexit.1:                             ; preds = %for.body37.1
  %.pre139 = load i32, ptr %mb_cr_size_y, align 8
  br label %for.inc51.1

for.inc51.1:                                      ; preds = %for.inc51.loopexit.1, %for.cond34.preheader.1
  %105 = phi i32 [ %97, %for.cond34.preheader.1 ], [ %.pre139, %for.inc51.loopexit.1 ]
  %106 = phi i32 [ %98, %for.cond34.preheader.1 ], [ %103, %for.inc51.loopexit.1 ]
  %bits_read.4.lcssa.1 = phi i32 [ %bits_read.3115.1, %for.cond34.preheader.1 ], [ %add39.1, %for.inc51.loopexit.1 ]
  %bitoffset.4.lcssa.1 = phi i32 [ %bitoffset.3116.1, %for.cond34.preheader.1 ], [ %add47.1, %for.inc51.loopexit.1 ]
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132.1, 1
  %107 = sext i32 %105 to i64
  %cmp31.1 = icmp slt i64 %indvars.iv.next133.1, %107
  br i1 %cmp31.1, label %for.cond34.preheader.1, label %if.end, !llvm.loop !7

if.end:                                           ; preds = %for.inc51.1, %for.cond34.preheader.lr.ph, %for.inc54, %for.cond34.preheader.lr.ph.1, %for.cond26.preheader, %land.lhs.true, %for.end20
  %bits_read.5 = phi i32 [ %add13.15, %land.lhs.true ], [ %add13.15, %for.end20 ], [ %add13.15, %for.cond26.preheader ], [ %bits_read.4.lcssa, %for.inc54 ], [ %bits_read.4.lcssa, %for.cond34.preheader.lr.ph.1 ], [ %add13.15, %for.cond34.preheader.lr.ph ], [ %bits_read.4.lcssa.1, %for.inc51.1 ]
  %shr57 = ashr i32 %bits_read.5, 3
  %108 = load ptr, ptr %Dcodestrm_len5, align 8
  %109 = load i32, ptr %108, align 4
  %add59 = add nsw i32 %109, %shr57
  store i32 %add59, ptr %108, align 4
  %and = and i32 %bits_read.5, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.end
  %110 = load ptr, ptr %Dcodestrm_len5, align 8
  %111 = load i32, ptr %110, align 4
  %inc62 = add nsw i32 %111, 1
  store i32 %inc62, ptr %110, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret void
}

declare i32 @GetBits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 2}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unswitch.partial.disable"}
