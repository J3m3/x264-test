; ModuleID = 'ldecod_src/loop_filter_normal.c'
source_filename = "ldecod_src/loop_filter_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BlockPos = type { i16, i16 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@ALPHA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF", align 16
@BETA_TABLE = internal unnamed_addr constant [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12", align 16
@CLIP_TAB = internal unnamed_addr constant [52 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\00\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\01\01", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\01\02\02", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\01\02\03\03", [5 x i8] c"\00\02\02\03\03", [5 x i8] c"\00\02\02\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\02\03\04\04", [5 x i8] c"\00\03\03\05\05", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\03\04\06\06", [5 x i8] c"\00\04\05\07\07", [5 x i8] c"\00\04\05\08\08", [5 x i8] c"\00\04\06\09\09", [5 x i8] c"\00\05\07\0A\0A", [5 x i8] c"\00\06\08\0B\0B", [5 x i8] c"\00\06\08\0D\0D", [5 x i8] c"\00\07\0A\0E\0E", [5 x i8] c"\00\08\0B\10\10", [5 x i8] c"\00\09\0C\12\12", [5 x i8] c"\00\0A\0D\14\14", [5 x i8] c"\00\0B\0F\17\17", [5 x i8] c"\00\0D\11\19\19"], align 16
@pelnum_cr = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 16, i32 16], [4 x i32] [i32 0, i32 8, i32 8, i32 16]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @set_loop_filter_functions_normal(ptr nocapture noundef writeonly %p_Vid) local_unnamed_addr #0 {
entry:
  %GetStrengthVer = getelementptr inbounds i8, ptr %p_Vid, i64 856760
  store ptr @GetStrengthVer, ptr %GetStrengthVer, align 8
  %GetStrengthHor = getelementptr inbounds i8, ptr %p_Vid, i64 856768
  store ptr @GetStrengthHor, ptr %GetStrengthHor, align 8
  %EdgeLoopLumaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856776
  store ptr @EdgeLoopLumaVer, ptr %EdgeLoopLumaVer, align 8
  %EdgeLoopLumaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856784
  store ptr @EdgeLoopLumaHor, ptr %EdgeLoopLumaHor, align 8
  %EdgeLoopChromaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856792
  store ptr @EdgeLoopChromaVer, ptr %EdgeLoopChromaVer, align 8
  %EdgeLoopChromaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856800
  store ptr @EdgeLoopChromaHor, ptr %EdgeLoopChromaHor, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthVer(ptr nocapture noundef writeonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 {
entry:
  %0 = load ptr, ptr %MbQ, align 8
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164
  %1 = load i32, ptr %slice_type, align 4
  %.off = add i32 %1, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %edge, 0
  %cond = select i1 %cmp3, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond, i64 16, i1 false)
  br label %if.end196

if.else:                                          ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96
  %2 = load i32, ptr %is_intra_block, align 8
  %cmp8 = icmp eq i32 %2, 0
  br i1 %cmp8, label %if.then10, label %if.else178

if.then10:                                        ; preds = %if.else
  %sub = add i32 %edge, 15
  %cmp.i = icmp slt i32 %edge, 1
  br i1 %cmp.i, label %get_non_aff_neighbor_luma.exit, label %if.then17

get_non_aff_neighbor_luma.exit:                   ; preds = %if.then10
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 144
  %3 = load ptr, ptr %mbup.i, align 8
  %tobool.not = icmp eq i32 %edge, 0
  br i1 %tobool.not, label %lor.lhs.false13, label %if.then17

lor.lhs.false13:                                  ; preds = %get_non_aff_neighbor_luma.exit
  %is_intra_block14 = getelementptr inbounds i8, ptr %3, i64 96
  %4 = load i32, ptr %is_intra_block14, align 8
  %cmp15 = icmp eq i32 %4, 0
  br i1 %cmp15, label %if.then17, label %land.rhs163

if.then17:                                        ; preds = %if.then10, %lor.lhs.false13, %get_non_aff_neighbor_luma.exit
  %cond11393 = phi ptr [ %3, %lor.lhs.false13 ], [ %MbQ, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %if.then10 ]
  %tobool.not392 = phi i1 [ true, %lor.lhs.false13 ], [ false, %get_non_aff_neighbor_luma.exit ], [ false, %if.then10 ]
  %retval.0.i391 = phi ptr [ %3, %lor.lhs.false13 ], [ %3, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %if.then10 ]
  %5 = load ptr, ptr @PicPos, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24
  %6 = load i32, ptr %mbAddrX, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %5, i64 %idxprom
  %mb.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %mb.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %mb.sroa.6.0.copyload = load i16, ptr %mb.sroa.6.0.arrayidx.sroa_idx, align 2
  %shl = shl i16 %mb.sroa.0.0.copyload, 2
  %shl21 = shl i16 %mb.sroa.6.0.copyload, 2
  %shr = ashr i32 %edge, 2
  %and26 = and i32 %sub, 15
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
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
  %7 = zext nneg i32 %shr27 to i64
  %8 = sext i32 %shr to i64
  %9 = load i64, ptr %cbp_blk, align 8
  %cmp.i296 = icmp sgt i32 %shr, 63
  br i1 %cmp.i296, label %i64_power2.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.then17
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %8
  %10 = load i64, ptr %arrayidx.i, align 8
  br label %i64_power2.exit

i64_power2.exit:                                  ; preds = %if.then17, %cond.false.i
  %cond.i = phi i64 [ %10, %cond.false.i ], [ 0, %if.then17 ]
  %and31 = and i64 %cond.i, %9
  %cmp32.not = icmp eq i64 %and31, 0
  br i1 %cmp32.not, label %lor.lhs.false34, label %if.end158

lor.lhs.false34:                                  ; preds = %i64_power2.exit
  %11 = load i64, ptr %cbp_blk35, align 8
  %arrayidx.i300 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %7
  %12 = load i64, ptr %arrayidx.i300, align 8
  %and38 = and i64 %12, %11
  %cmp39.not = icmp eq i64 %and38, 0
  br i1 %cmp39.not, label %if.else42, label %if.end158

if.else42:                                        ; preds = %lor.lhs.false34
  br i1 %tobool.not392, label %if.else53, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else42
  %13 = load i16, ptr %mb_type, align 8
  %.off274 = add i16 %13, -1
  %switch275 = icmp ult i16 %.off274, 2
  br i1 %switch275, label %if.end158, label %if.else53

if.else53:                                        ; preds = %land.lhs.true, %if.else42
  %shr56 = ashr i32 %edge, 4
  %add57 = add nsw i32 %shr56, %conv55
  %14 = load i32, ptr %pix_y, align 8
  %sext = shl i32 %14, 16
  %shr66 = ashr i32 %sext, 18
  %15 = load i32, ptr %pix_x, align 4
  %add68 = add nsw i32 %15, %and26
  %sext272 = shl i32 %add68, 16
  %shr71 = ashr i32 %sext272, 18
  %16 = load ptr, ptr %mv_info, align 8
  %idxprom72 = sext i32 %add57 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %16, i64 %idxprom72
  %17 = load ptr, ptr %arrayidx73, align 8
  %arrayidx75 = getelementptr inbounds %struct.pic_motion_params, ptr %17, i64 %idxprom74
  %18 = load ptr, ptr %arrayidx75, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %arrayidx75, i64 8
  %19 = load ptr, ptr %arrayidx78, align 8
  %idxprom80 = sext i32 %shr66 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %16, i64 %idxprom80
  %20 = load ptr, ptr %arrayidx81, align 8
  %idxprom82 = sext i32 %shr71 to i64
  %arrayidx83 = getelementptr inbounds %struct.pic_motion_params, ptr %20, i64 %idxprom82
  %21 = load ptr, ptr %arrayidx83, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx83, i64 8
  %22 = load ptr, ptr %arrayidx87, align 8
  %cmp88 = icmp eq ptr %18, %21
  %cmp91 = icmp eq ptr %19, %22
  %or.cond = select i1 %cmp88, i1 %cmp91, i1 false
  br i1 %or.cond, label %if.then99, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.else53
  %cmp94 = icmp eq ptr %18, %22
  %cmp97 = icmp eq ptr %19, %21
  %or.cond273 = select i1 %cmp94, i1 %cmp97, i1 false
  br i1 %or.cond273, label %if.then99, label %if.end158

if.then99:                                        ; preds = %lor.lhs.false93, %if.else53
  %cmp100.not = icmp eq ptr %18, %19
  %mv128 = getelementptr inbounds i8, ptr %arrayidx75, i64 16
  %mv130 = getelementptr inbounds i8, ptr %arrayidx83, i64 16
  br i1 %cmp100.not, label %if.else127, label %if.then102

if.then102:                                       ; preds = %if.then99
  %23 = getelementptr i8, ptr %arrayidx75, i64 22
  %arrayidx111.val292 = load i16, ptr %23, align 2
  br i1 %cmp88, label %if.then105, label %if.else115

if.then105:                                       ; preds = %if.then102
  %mv.val = load i16, ptr %mv128, align 2
  %24 = getelementptr i8, ptr %arrayidx75, i64 18
  %mv.val294 = load i16, ptr %24, align 2
  %mv107.val = load i16, ptr %mv130, align 2
  %25 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv107.val295 = load i16, ptr %25, align 2
  %conv.i = sext i16 %mv.val to i32
  %conv2.i = sext i16 %mv107.val to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %sub.i.i = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %cmp.i303 = icmp ugt i32 %sub.i.i, 3
  %conv4.i = sext i16 %mv.val294 to i32
  %conv6.i = sext i16 %mv107.val295 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %sub.i14.i = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 true)
  %cmp9.i = icmp sge i32 %sub.i14.i, %mvlimit
  %or13.i = or i1 %cmp.i303, %cmp9.i
  %arrayidx111 = getelementptr inbounds i8, ptr %arrayidx75, i64 20
  %arrayidx113 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %arrayidx111.val = load i16, ptr %arrayidx111, align 2
  %arrayidx113.val = load i16, ptr %arrayidx113, align 2
  %26 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx113.val293 = load i16, ptr %26, align 2
  %conv.i304 = sext i16 %arrayidx111.val to i32
  %conv2.i305 = sext i16 %arrayidx113.val to i32
  %sub.i306 = sub nsw i32 %conv.i304, %conv2.i305
  %sub.i.i307 = tail call i32 @llvm.abs.i32(i32 %sub.i306, i1 true)
  %cmp.i308 = icmp ugt i32 %sub.i.i307, 3
  %conv4.i309 = sext i16 %arrayidx111.val292 to i32
  %conv6.i310 = sext i16 %arrayidx113.val293 to i32
  %sub7.i311 = sub nsw i32 %conv4.i309, %conv6.i310
  %sub.i14.i312 = tail call i32 @llvm.abs.i32(i32 %sub7.i311, i1 true)
  %cmp9.i313 = icmp sge i32 %sub.i14.i312, %mvlimit
  %or13.i314 = or i1 %cmp.i308, %cmp9.i313
  %or395 = or i1 %or13.i, %or13.i314
  %or = zext i1 %or395 to i32
  br label %if.end158

if.else115:                                       ; preds = %if.then102
  %arrayidx119 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %mv116.val = load i16, ptr %mv128, align 2
  %27 = getelementptr i8, ptr %arrayidx75, i64 18
  %mv116.val290 = load i16, ptr %27, align 2
  %arrayidx119.val = load i16, ptr %arrayidx119, align 2
  %28 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx119.val291 = load i16, ptr %28, align 2
  %conv.i316 = sext i16 %mv116.val to i32
  %conv2.i317 = sext i16 %arrayidx119.val to i32
  %sub.i318 = sub nsw i32 %conv.i316, %conv2.i317
  %sub.i.i319 = tail call i32 @llvm.abs.i32(i32 %sub.i318, i1 true)
  %cmp.i320 = icmp ugt i32 %sub.i.i319, 3
  %conv4.i321 = sext i16 %mv116.val290 to i32
  %conv6.i322 = sext i16 %arrayidx119.val291 to i32
  %sub7.i323 = sub nsw i32 %conv4.i321, %conv6.i322
  %sub.i14.i324 = tail call i32 @llvm.abs.i32(i32 %sub7.i323, i1 true)
  %cmp9.i325 = icmp sge i32 %sub.i14.i324, %mvlimit
  %or13.i326 = or i1 %cmp.i320, %cmp9.i325
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx75, i64 20
  %arrayidx122.val = load i16, ptr %arrayidx122, align 2
  %mv118.val = load i16, ptr %mv130, align 2
  %29 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv118.val289 = load i16, ptr %29, align 2
  %conv.i328 = sext i16 %arrayidx122.val to i32
  %conv2.i329 = sext i16 %mv118.val to i32
  %sub.i330 = sub nsw i32 %conv.i328, %conv2.i329
  %sub.i.i331 = tail call i32 @llvm.abs.i32(i32 %sub.i330, i1 true)
  %cmp.i332 = icmp ugt i32 %sub.i.i331, 3
  %conv4.i333 = sext i16 %arrayidx111.val292 to i32
  %conv6.i334 = sext i16 %mv118.val289 to i32
  %sub7.i335 = sub nsw i32 %conv4.i333, %conv6.i334
  %sub.i14.i336 = tail call i32 @llvm.abs.i32(i32 %sub7.i335, i1 true)
  %cmp9.i337 = icmp sge i32 %sub.i14.i336, %mvlimit
  %or13.i338 = or i1 %cmp.i332, %cmp9.i337
  %or126394 = or i1 %or13.i326, %or13.i338
  %or126 = zext i1 %or126394 to i32
  br label %if.end158

if.else127:                                       ; preds = %if.then99
  %mv128.val284 = load i16, ptr %mv128, align 2
  %30 = getelementptr i8, ptr %arrayidx75, i64 18
  %mv128.val285 = load i16, ptr %30, align 2
  %mv130.val286 = load i16, ptr %mv130, align 2
  %31 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv130.val287 = load i16, ptr %31, align 2
  %conv.i340 = sext i16 %mv128.val284 to i32
  %conv2.i341 = sext i16 %mv130.val286 to i32
  %sub.i342 = sub nsw i32 %conv.i340, %conv2.i341
  %sub.i.i343 = tail call i32 @llvm.abs.i32(i32 %sub.i342, i1 true)
  %cmp.i344 = icmp ult i32 %sub.i.i343, 4
  %conv4.i345 = sext i16 %mv128.val285 to i32
  %conv6.i346 = sext i16 %mv130.val287 to i32
  %sub7.i347 = sub nsw i32 %conv4.i345, %conv6.i346
  %sub.i14.i348 = tail call i32 @llvm.abs.i32(i32 %sub7.i347, i1 true)
  %cmp9.i349 = icmp slt i32 %sub.i14.i348, %mvlimit
  %or13.i350.not397 = and i1 %cmp.i344, %cmp9.i349
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx75, i64 20
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %arrayidx134.val280 = load i16, ptr %arrayidx134, align 2
  %32 = getelementptr i8, ptr %arrayidx75, i64 22
  %arrayidx134.val281 = load i16, ptr %32, align 2
  %arrayidx136.val282 = load i16, ptr %arrayidx136, align 2
  %33 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx136.val283 = load i16, ptr %33, align 2
  %conv.i352 = sext i16 %arrayidx134.val280 to i32
  %conv2.i353 = sext i16 %arrayidx136.val282 to i32
  %sub.i354 = sub nsw i32 %conv.i352, %conv2.i353
  %sub.i.i355 = tail call i32 @llvm.abs.i32(i32 %sub.i354, i1 true)
  %cmp.i356 = icmp ult i32 %sub.i.i355, 4
  %conv4.i357 = sext i16 %arrayidx134.val281 to i32
  %conv6.i358 = sext i16 %arrayidx136.val283 to i32
  %sub7.i359 = sub nsw i32 %conv4.i357, %conv6.i358
  %sub.i14.i360 = tail call i32 @llvm.abs.i32(i32 %sub7.i359, i1 true)
  %cmp9.i361 = icmp slt i32 %sub.i14.i360, %mvlimit
  %or13.i362.not398 = and i1 %cmp.i356, %cmp9.i361
  %or138396.not = and i1 %or13.i350.not397, %or13.i362.not398
  br i1 %or138396.not, label %land.end153, label %land.rhs140

land.rhs140:                                      ; preds = %if.else127
  %sub.i366 = sub nsw i32 %conv.i340, %conv2.i353
  %sub.i.i367 = tail call i32 @llvm.abs.i32(i32 %sub.i366, i1 true)
  %cmp.i368 = icmp ugt i32 %sub.i.i367, 3
  %sub7.i371 = sub nsw i32 %conv4.i345, %conv6.i358
  %sub.i14.i372 = tail call i32 @llvm.abs.i32(i32 %sub7.i371, i1 true)
  %cmp9.i373 = icmp sge i32 %sub.i14.i372, %mvlimit
  %or13.i374 = or i1 %cmp.i368, %cmp9.i373
  %sub.i378 = sub nsw i32 %conv.i352, %conv2.i341
  %sub.i.i379 = tail call i32 @llvm.abs.i32(i32 %sub.i378, i1 true)
  %cmp.i380 = icmp ugt i32 %sub.i.i379, 3
  %sub7.i383 = sub nsw i32 %conv4.i357, %conv6.i346
  %sub.i14.i384 = tail call i32 @llvm.abs.i32(i32 %sub7.i383, i1 true)
  %cmp9.i385 = icmp sge i32 %sub.i14.i384, %mvlimit
  %or13.i386 = or i1 %cmp.i380, %cmp9.i385
  %or151399 = or i1 %or13.i386, %or13.i374
  br label %land.end153

land.end153:                                      ; preds = %land.rhs140, %if.else127
  %34 = phi i1 [ false, %if.else127 ], [ %or151399, %land.rhs140 ]
  %land.ext = zext i1 %34 to i32
  br label %if.end158

if.end158:                                        ; preds = %land.lhs.true, %if.then105, %if.else115, %land.end153, %lor.lhs.false93, %i64_power2.exit, %lor.lhs.false34
  %StrValue.1 = phi i32 [ 2, %lor.lhs.false34 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true ], [ %or, %if.then105 ], [ %or126, %if.else115 ], [ %land.ext, %land.end153 ], [ 1, %lor.lhs.false93 ]
  %mul = mul nuw nsw i32 %StrValue.1, 16843009
  store i32 %mul, ptr %Strength, align 4
  %35 = add nsw i64 %8, 4
  %36 = load i64, ptr %cbp_blk, align 8
  %cmp.i296.1 = icmp sgt i32 %shr, 59
  br i1 %cmp.i296.1, label %i64_power2.exit.1, label %cond.false.i.1

cond.false.i.1:                                   ; preds = %if.end158
  %arrayidx.i.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %35
  %37 = load i64, ptr %arrayidx.i.1, align 8
  br label %i64_power2.exit.1

i64_power2.exit.1:                                ; preds = %cond.false.i.1, %if.end158
  %cond.i.1 = phi i64 [ %37, %cond.false.i.1 ], [ 0, %if.end158 ]
  %and31.1 = and i64 %cond.i.1, %36
  %cmp32.not.1 = icmp eq i64 %and31.1, 0
  br i1 %cmp32.not.1, label %lor.lhs.false34.1, label %if.end158.1

lor.lhs.false34.1:                                ; preds = %i64_power2.exit.1
  %38 = or disjoint i64 %7, 4
  %39 = load i64, ptr %cbp_blk35, align 8
  %arrayidx.i300.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %38
  %40 = load i64, ptr %arrayidx.i300.1, align 8
  %and38.1 = and i64 %40, %39
  %cmp39.not.1 = icmp eq i64 %and38.1, 0
  br i1 %cmp39.not.1, label %if.else42.1, label %if.end158.1

if.else42.1:                                      ; preds = %lor.lhs.false34.1
  br i1 %tobool.not392, label %if.else53.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.else42.1
  %41 = load i16, ptr %mb_type, align 8
  %.off274.1 = add i16 %41, -1
  %switch275.1 = icmp ult i16 %.off274.1, 2
  br i1 %switch275.1, label %if.end158.1, label %if.else53.1

if.else53.1:                                      ; preds = %land.lhs.true.1, %if.else42.1
  %42 = trunc nsw i64 %35 to i32
  %shr56.1 = ashr i32 %42, 2
  %add57.1 = add nsw i32 %shr56.1, %conv55
  %43 = load i32, ptr %pix_y, align 8
  %add63.1 = shl i32 %43, 16
  %sext.1 = add i32 %add63.1, 262144
  %shr66.1 = ashr i32 %sext.1, 18
  %44 = load i32, ptr %pix_x, align 4
  %add68.1 = add nsw i32 %44, %and26
  %sext272.1 = shl i32 %add68.1, 16
  %shr71.1 = ashr i32 %sext272.1, 18
  %45 = load ptr, ptr %mv_info, align 8
  %idxprom72.1 = sext i32 %add57.1 to i64
  %arrayidx73.1 = getelementptr inbounds ptr, ptr %45, i64 %idxprom72.1
  %46 = load ptr, ptr %arrayidx73.1, align 8
  %arrayidx75.1 = getelementptr inbounds %struct.pic_motion_params, ptr %46, i64 %idxprom74
  %47 = load ptr, ptr %arrayidx75.1, align 8
  %arrayidx78.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 8
  %48 = load ptr, ptr %arrayidx78.1, align 8
  %idxprom80.1 = sext i32 %shr66.1 to i64
  %arrayidx81.1 = getelementptr inbounds ptr, ptr %45, i64 %idxprom80.1
  %49 = load ptr, ptr %arrayidx81.1, align 8
  %idxprom82.1 = sext i32 %shr71.1 to i64
  %arrayidx83.1 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %idxprom82.1
  %50 = load ptr, ptr %arrayidx83.1, align 8
  %arrayidx87.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 8
  %51 = load ptr, ptr %arrayidx87.1, align 8
  %cmp88.1 = icmp eq ptr %47, %50
  %cmp91.1 = icmp eq ptr %48, %51
  %or.cond.1 = select i1 %cmp88.1, i1 %cmp91.1, i1 false
  br i1 %or.cond.1, label %if.then99.1, label %lor.lhs.false93.1

lor.lhs.false93.1:                                ; preds = %if.else53.1
  %cmp94.1 = icmp eq ptr %47, %51
  %cmp97.1 = icmp eq ptr %48, %50
  %or.cond273.1 = select i1 %cmp94.1, i1 %cmp97.1, i1 false
  br i1 %or.cond273.1, label %if.then99.1, label %if.end158.1

if.then99.1:                                      ; preds = %lor.lhs.false93.1, %if.else53.1
  %cmp100.not.1 = icmp eq ptr %47, %48
  %mv128.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 16
  %mv130.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 16
  br i1 %cmp100.not.1, label %if.else127.1, label %if.then102.1

if.then102.1:                                     ; preds = %if.then99.1
  %52 = getelementptr i8, ptr %arrayidx75.1, i64 22
  %arrayidx111.val292.1 = load i16, ptr %52, align 2
  br i1 %cmp88.1, label %if.then105.1, label %if.else115.1

if.else115.1:                                     ; preds = %if.then102.1
  %arrayidx119.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %mv116.val.1 = load i16, ptr %mv128.1, align 2
  %53 = getelementptr i8, ptr %arrayidx75.1, i64 18
  %mv116.val290.1 = load i16, ptr %53, align 2
  %arrayidx119.val.1 = load i16, ptr %arrayidx119.1, align 2
  %54 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx119.val291.1 = load i16, ptr %54, align 2
  %conv.i316.1 = sext i16 %mv116.val.1 to i32
  %conv2.i317.1 = sext i16 %arrayidx119.val.1 to i32
  %sub.i318.1 = sub nsw i32 %conv.i316.1, %conv2.i317.1
  %sub.i.i319.1 = tail call i32 @llvm.abs.i32(i32 %sub.i318.1, i1 true)
  %cmp.i320.1 = icmp ugt i32 %sub.i.i319.1, 3
  %conv4.i321.1 = sext i16 %mv116.val290.1 to i32
  %conv6.i322.1 = sext i16 %arrayidx119.val291.1 to i32
  %sub7.i323.1 = sub nsw i32 %conv4.i321.1, %conv6.i322.1
  %sub.i14.i324.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.1, i1 true)
  %cmp9.i325.1 = icmp sge i32 %sub.i14.i324.1, %mvlimit
  %or13.i326.1 = or i1 %cmp.i320.1, %cmp9.i325.1
  %arrayidx122.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20
  %arrayidx122.val.1 = load i16, ptr %arrayidx122.1, align 2
  %mv118.val.1 = load i16, ptr %mv130.1, align 2
  %55 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv118.val289.1 = load i16, ptr %55, align 2
  %conv.i328.1 = sext i16 %arrayidx122.val.1 to i32
  %conv2.i329.1 = sext i16 %mv118.val.1 to i32
  %sub.i330.1 = sub nsw i32 %conv.i328.1, %conv2.i329.1
  %sub.i.i331.1 = tail call i32 @llvm.abs.i32(i32 %sub.i330.1, i1 true)
  %cmp.i332.1 = icmp ugt i32 %sub.i.i331.1, 3
  %conv4.i333.1 = sext i16 %arrayidx111.val292.1 to i32
  %conv6.i334.1 = sext i16 %mv118.val289.1 to i32
  %sub7.i335.1 = sub nsw i32 %conv4.i333.1, %conv6.i334.1
  %sub.i14.i336.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.1, i1 true)
  %cmp9.i337.1 = icmp sge i32 %sub.i14.i336.1, %mvlimit
  %or13.i338.1 = or i1 %cmp.i332.1, %cmp9.i337.1
  %or126394.1 = or i1 %or13.i326.1, %or13.i338.1
  %or126.1 = zext i1 %or126394.1 to i32
  br label %if.end158.1

if.then105.1:                                     ; preds = %if.then102.1
  %mv.val.1 = load i16, ptr %mv128.1, align 2
  %56 = getelementptr i8, ptr %arrayidx75.1, i64 18
  %mv.val294.1 = load i16, ptr %56, align 2
  %mv107.val.1 = load i16, ptr %mv130.1, align 2
  %57 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv107.val295.1 = load i16, ptr %57, align 2
  %conv.i.1 = sext i16 %mv.val.1 to i32
  %conv2.i.1 = sext i16 %mv107.val.1 to i32
  %sub.i.1 = sub nsw i32 %conv.i.1, %conv2.i.1
  %sub.i.i.1 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 true)
  %cmp.i303.1 = icmp ugt i32 %sub.i.i.1, 3
  %conv4.i.1 = sext i16 %mv.val294.1 to i32
  %conv6.i.1 = sext i16 %mv107.val295.1 to i32
  %sub7.i.1 = sub nsw i32 %conv4.i.1, %conv6.i.1
  %sub.i14.i.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i.1, i1 true)
  %cmp9.i.1 = icmp sge i32 %sub.i14.i.1, %mvlimit
  %or13.i.1 = or i1 %cmp.i303.1, %cmp9.i.1
  %arrayidx111.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20
  %arrayidx113.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %arrayidx111.val.1 = load i16, ptr %arrayidx111.1, align 2
  %arrayidx113.val.1 = load i16, ptr %arrayidx113.1, align 2
  %58 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx113.val293.1 = load i16, ptr %58, align 2
  %conv.i304.1 = sext i16 %arrayidx111.val.1 to i32
  %conv2.i305.1 = sext i16 %arrayidx113.val.1 to i32
  %sub.i306.1 = sub nsw i32 %conv.i304.1, %conv2.i305.1
  %sub.i.i307.1 = tail call i32 @llvm.abs.i32(i32 %sub.i306.1, i1 true)
  %cmp.i308.1 = icmp ugt i32 %sub.i.i307.1, 3
  %conv4.i309.1 = sext i16 %arrayidx111.val292.1 to i32
  %conv6.i310.1 = sext i16 %arrayidx113.val293.1 to i32
  %sub7.i311.1 = sub nsw i32 %conv4.i309.1, %conv6.i310.1
  %sub.i14.i312.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.1, i1 true)
  %cmp9.i313.1 = icmp sge i32 %sub.i14.i312.1, %mvlimit
  %or13.i314.1 = or i1 %cmp.i308.1, %cmp9.i313.1
  %or395.1 = or i1 %or13.i.1, %or13.i314.1
  %or.1 = zext i1 %or395.1 to i32
  br label %if.end158.1

if.else127.1:                                     ; preds = %if.then99.1
  %mv128.val284.1 = load i16, ptr %mv128.1, align 2
  %59 = getelementptr i8, ptr %arrayidx75.1, i64 18
  %mv128.val285.1 = load i16, ptr %59, align 2
  %mv130.val286.1 = load i16, ptr %mv130.1, align 2
  %60 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv130.val287.1 = load i16, ptr %60, align 2
  %conv.i340.1 = sext i16 %mv128.val284.1 to i32
  %conv2.i341.1 = sext i16 %mv130.val286.1 to i32
  %sub.i342.1 = sub nsw i32 %conv.i340.1, %conv2.i341.1
  %sub.i.i343.1 = tail call i32 @llvm.abs.i32(i32 %sub.i342.1, i1 true)
  %cmp.i344.1 = icmp ult i32 %sub.i.i343.1, 4
  %conv4.i345.1 = sext i16 %mv128.val285.1 to i32
  %conv6.i346.1 = sext i16 %mv130.val287.1 to i32
  %sub7.i347.1 = sub nsw i32 %conv4.i345.1, %conv6.i346.1
  %sub.i14.i348.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.1, i1 true)
  %cmp9.i349.1 = icmp slt i32 %sub.i14.i348.1, %mvlimit
  %or13.i350.not397.1 = and i1 %cmp.i344.1, %cmp9.i349.1
  %arrayidx134.1 = getelementptr inbounds i8, ptr %arrayidx75.1, i64 20
  %arrayidx136.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %arrayidx134.val280.1 = load i16, ptr %arrayidx134.1, align 2
  %61 = getelementptr i8, ptr %arrayidx75.1, i64 22
  %arrayidx134.val281.1 = load i16, ptr %61, align 2
  %arrayidx136.val282.1 = load i16, ptr %arrayidx136.1, align 2
  %62 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx136.val283.1 = load i16, ptr %62, align 2
  %conv.i352.1 = sext i16 %arrayidx134.val280.1 to i32
  %conv2.i353.1 = sext i16 %arrayidx136.val282.1 to i32
  %sub.i354.1 = sub nsw i32 %conv.i352.1, %conv2.i353.1
  %sub.i.i355.1 = tail call i32 @llvm.abs.i32(i32 %sub.i354.1, i1 true)
  %cmp.i356.1 = icmp ult i32 %sub.i.i355.1, 4
  %conv4.i357.1 = sext i16 %arrayidx134.val281.1 to i32
  %conv6.i358.1 = sext i16 %arrayidx136.val283.1 to i32
  %sub7.i359.1 = sub nsw i32 %conv4.i357.1, %conv6.i358.1
  %sub.i14.i360.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.1, i1 true)
  %cmp9.i361.1 = icmp slt i32 %sub.i14.i360.1, %mvlimit
  %or13.i362.not398.1 = and i1 %cmp.i356.1, %cmp9.i361.1
  %or138396.not.1 = and i1 %or13.i350.not397.1, %or13.i362.not398.1
  br i1 %or138396.not.1, label %if.end158.1, label %land.rhs140.1

land.rhs140.1:                                    ; preds = %if.else127.1
  %sub.i366.1 = sub nsw i32 %conv.i340.1, %conv2.i353.1
  %sub.i.i367.1 = tail call i32 @llvm.abs.i32(i32 %sub.i366.1, i1 true)
  %cmp.i368.1 = icmp ugt i32 %sub.i.i367.1, 3
  %sub7.i371.1 = sub nsw i32 %conv4.i345.1, %conv6.i358.1
  %sub.i14.i372.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.1, i1 true)
  %cmp9.i373.1 = icmp sge i32 %sub.i14.i372.1, %mvlimit
  %or13.i374.1 = or i1 %cmp.i368.1, %cmp9.i373.1
  %sub.i378.1 = sub nsw i32 %conv.i352.1, %conv2.i341.1
  %sub.i.i379.1 = tail call i32 @llvm.abs.i32(i32 %sub.i378.1, i1 true)
  %cmp.i380.1 = icmp ugt i32 %sub.i.i379.1, 3
  %sub7.i383.1 = sub nsw i32 %conv4.i357.1, %conv6.i346.1
  %sub.i14.i384.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.1, i1 true)
  %cmp9.i385.1 = icmp sge i32 %sub.i14.i384.1, %mvlimit
  %or13.i386.1 = or i1 %cmp.i380.1, %cmp9.i385.1
  %or151399.1 = or i1 %or13.i386.1, %or13.i374.1
  %63 = zext i1 %or151399.1 to i32
  br label %if.end158.1

if.end158.1:                                      ; preds = %if.else127.1, %land.rhs140.1, %if.then105.1, %if.else115.1, %lor.lhs.false93.1, %land.lhs.true.1, %lor.lhs.false34.1, %i64_power2.exit.1
  %StrValue.1.1 = phi i32 [ 2, %lor.lhs.false34.1 ], [ 2, %i64_power2.exit.1 ], [ 0, %land.lhs.true.1 ], [ %or.1, %if.then105.1 ], [ %or126.1, %if.else115.1 ], [ 1, %lor.lhs.false93.1 ], [ 0, %if.else127.1 ], [ %63, %land.rhs140.1 ]
  %mul.1 = mul nuw nsw i32 %StrValue.1.1, 16843009
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4
  store i32 %mul.1, ptr %add.ptr.1, align 4
  %64 = add nsw i64 %8, 8
  %65 = load i64, ptr %cbp_blk, align 8
  %cmp.i296.2 = icmp sgt i32 %shr, 55
  br i1 %cmp.i296.2, label %i64_power2.exit.2, label %cond.false.i.2

cond.false.i.2:                                   ; preds = %if.end158.1
  %arrayidx.i.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %64
  %66 = load i64, ptr %arrayidx.i.2, align 8
  br label %i64_power2.exit.2

i64_power2.exit.2:                                ; preds = %cond.false.i.2, %if.end158.1
  %cond.i.2 = phi i64 [ %66, %cond.false.i.2 ], [ 0, %if.end158.1 ]
  %and31.2 = and i64 %cond.i.2, %65
  %cmp32.not.2 = icmp eq i64 %and31.2, 0
  br i1 %cmp32.not.2, label %lor.lhs.false34.2, label %if.end158.2

lor.lhs.false34.2:                                ; preds = %i64_power2.exit.2
  %67 = or disjoint i64 %7, 8
  %68 = load i64, ptr %cbp_blk35, align 8
  %arrayidx.i300.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %67
  %69 = load i64, ptr %arrayidx.i300.2, align 8
  %and38.2 = and i64 %69, %68
  %cmp39.not.2 = icmp eq i64 %and38.2, 0
  br i1 %cmp39.not.2, label %if.else42.2, label %if.end158.2

if.else42.2:                                      ; preds = %lor.lhs.false34.2
  br i1 %tobool.not392, label %if.else53.2, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.else42.2
  %70 = load i16, ptr %mb_type, align 8
  %.off274.2 = add i16 %70, -1
  %switch275.2 = icmp ult i16 %.off274.2, 2
  br i1 %switch275.2, label %if.end158.2, label %if.else53.2

if.else53.2:                                      ; preds = %land.lhs.true.2, %if.else42.2
  %71 = trunc nsw i64 %64 to i32
  %shr56.2 = ashr i32 %71, 2
  %add57.2 = add nsw i32 %shr56.2, %conv55
  %72 = load i32, ptr %pix_y, align 8
  %add63.2 = shl i32 %72, 16
  %sext.2 = add i32 %add63.2, 524288
  %shr66.2 = ashr i32 %sext.2, 18
  %73 = load i32, ptr %pix_x, align 4
  %add68.2 = add nsw i32 %73, %and26
  %sext272.2 = shl i32 %add68.2, 16
  %shr71.2 = ashr i32 %sext272.2, 18
  %74 = load ptr, ptr %mv_info, align 8
  %idxprom72.2 = sext i32 %add57.2 to i64
  %arrayidx73.2 = getelementptr inbounds ptr, ptr %74, i64 %idxprom72.2
  %75 = load ptr, ptr %arrayidx73.2, align 8
  %arrayidx75.2 = getelementptr inbounds %struct.pic_motion_params, ptr %75, i64 %idxprom74
  %76 = load ptr, ptr %arrayidx75.2, align 8
  %arrayidx78.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 8
  %77 = load ptr, ptr %arrayidx78.2, align 8
  %idxprom80.2 = sext i32 %shr66.2 to i64
  %arrayidx81.2 = getelementptr inbounds ptr, ptr %74, i64 %idxprom80.2
  %78 = load ptr, ptr %arrayidx81.2, align 8
  %idxprom82.2 = sext i32 %shr71.2 to i64
  %arrayidx83.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %idxprom82.2
  %79 = load ptr, ptr %arrayidx83.2, align 8
  %arrayidx87.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 8
  %80 = load ptr, ptr %arrayidx87.2, align 8
  %cmp88.2 = icmp eq ptr %76, %79
  %cmp91.2 = icmp eq ptr %77, %80
  %or.cond.2 = select i1 %cmp88.2, i1 %cmp91.2, i1 false
  br i1 %or.cond.2, label %if.then99.2, label %lor.lhs.false93.2

lor.lhs.false93.2:                                ; preds = %if.else53.2
  %cmp94.2 = icmp eq ptr %76, %80
  %cmp97.2 = icmp eq ptr %77, %79
  %or.cond273.2 = select i1 %cmp94.2, i1 %cmp97.2, i1 false
  br i1 %or.cond273.2, label %if.then99.2, label %if.end158.2

if.then99.2:                                      ; preds = %lor.lhs.false93.2, %if.else53.2
  %cmp100.not.2 = icmp eq ptr %76, %77
  %mv128.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 16
  %mv130.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 16
  br i1 %cmp100.not.2, label %if.else127.2, label %if.then102.2

if.then102.2:                                     ; preds = %if.then99.2
  %81 = getelementptr i8, ptr %arrayidx75.2, i64 22
  %arrayidx111.val292.2 = load i16, ptr %81, align 2
  br i1 %cmp88.2, label %if.then105.2, label %if.else115.2

if.else115.2:                                     ; preds = %if.then102.2
  %arrayidx119.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %mv116.val.2 = load i16, ptr %mv128.2, align 2
  %82 = getelementptr i8, ptr %arrayidx75.2, i64 18
  %mv116.val290.2 = load i16, ptr %82, align 2
  %arrayidx119.val.2 = load i16, ptr %arrayidx119.2, align 2
  %83 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx119.val291.2 = load i16, ptr %83, align 2
  %conv.i316.2 = sext i16 %mv116.val.2 to i32
  %conv2.i317.2 = sext i16 %arrayidx119.val.2 to i32
  %sub.i318.2 = sub nsw i32 %conv.i316.2, %conv2.i317.2
  %sub.i.i319.2 = tail call i32 @llvm.abs.i32(i32 %sub.i318.2, i1 true)
  %cmp.i320.2 = icmp ugt i32 %sub.i.i319.2, 3
  %conv4.i321.2 = sext i16 %mv116.val290.2 to i32
  %conv6.i322.2 = sext i16 %arrayidx119.val291.2 to i32
  %sub7.i323.2 = sub nsw i32 %conv4.i321.2, %conv6.i322.2
  %sub.i14.i324.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.2, i1 true)
  %cmp9.i325.2 = icmp sge i32 %sub.i14.i324.2, %mvlimit
  %or13.i326.2 = or i1 %cmp.i320.2, %cmp9.i325.2
  %arrayidx122.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20
  %arrayidx122.val.2 = load i16, ptr %arrayidx122.2, align 2
  %mv118.val.2 = load i16, ptr %mv130.2, align 2
  %84 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv118.val289.2 = load i16, ptr %84, align 2
  %conv.i328.2 = sext i16 %arrayidx122.val.2 to i32
  %conv2.i329.2 = sext i16 %mv118.val.2 to i32
  %sub.i330.2 = sub nsw i32 %conv.i328.2, %conv2.i329.2
  %sub.i.i331.2 = tail call i32 @llvm.abs.i32(i32 %sub.i330.2, i1 true)
  %cmp.i332.2 = icmp ugt i32 %sub.i.i331.2, 3
  %conv4.i333.2 = sext i16 %arrayidx111.val292.2 to i32
  %conv6.i334.2 = sext i16 %mv118.val289.2 to i32
  %sub7.i335.2 = sub nsw i32 %conv4.i333.2, %conv6.i334.2
  %sub.i14.i336.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.2, i1 true)
  %cmp9.i337.2 = icmp sge i32 %sub.i14.i336.2, %mvlimit
  %or13.i338.2 = or i1 %cmp.i332.2, %cmp9.i337.2
  %or126394.2 = or i1 %or13.i326.2, %or13.i338.2
  %or126.2 = zext i1 %or126394.2 to i32
  br label %if.end158.2

if.then105.2:                                     ; preds = %if.then102.2
  %mv.val.2 = load i16, ptr %mv128.2, align 2
  %85 = getelementptr i8, ptr %arrayidx75.2, i64 18
  %mv.val294.2 = load i16, ptr %85, align 2
  %mv107.val.2 = load i16, ptr %mv130.2, align 2
  %86 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv107.val295.2 = load i16, ptr %86, align 2
  %conv.i.2 = sext i16 %mv.val.2 to i32
  %conv2.i.2 = sext i16 %mv107.val.2 to i32
  %sub.i.2 = sub nsw i32 %conv.i.2, %conv2.i.2
  %sub.i.i.2 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 true)
  %cmp.i303.2 = icmp ugt i32 %sub.i.i.2, 3
  %conv4.i.2 = sext i16 %mv.val294.2 to i32
  %conv6.i.2 = sext i16 %mv107.val295.2 to i32
  %sub7.i.2 = sub nsw i32 %conv4.i.2, %conv6.i.2
  %sub.i14.i.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i.2, i1 true)
  %cmp9.i.2 = icmp sge i32 %sub.i14.i.2, %mvlimit
  %or13.i.2 = or i1 %cmp.i303.2, %cmp9.i.2
  %arrayidx111.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20
  %arrayidx113.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %arrayidx111.val.2 = load i16, ptr %arrayidx111.2, align 2
  %arrayidx113.val.2 = load i16, ptr %arrayidx113.2, align 2
  %87 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx113.val293.2 = load i16, ptr %87, align 2
  %conv.i304.2 = sext i16 %arrayidx111.val.2 to i32
  %conv2.i305.2 = sext i16 %arrayidx113.val.2 to i32
  %sub.i306.2 = sub nsw i32 %conv.i304.2, %conv2.i305.2
  %sub.i.i307.2 = tail call i32 @llvm.abs.i32(i32 %sub.i306.2, i1 true)
  %cmp.i308.2 = icmp ugt i32 %sub.i.i307.2, 3
  %conv4.i309.2 = sext i16 %arrayidx111.val292.2 to i32
  %conv6.i310.2 = sext i16 %arrayidx113.val293.2 to i32
  %sub7.i311.2 = sub nsw i32 %conv4.i309.2, %conv6.i310.2
  %sub.i14.i312.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.2, i1 true)
  %cmp9.i313.2 = icmp sge i32 %sub.i14.i312.2, %mvlimit
  %or13.i314.2 = or i1 %cmp.i308.2, %cmp9.i313.2
  %or395.2 = or i1 %or13.i.2, %or13.i314.2
  %or.2 = zext i1 %or395.2 to i32
  br label %if.end158.2

if.else127.2:                                     ; preds = %if.then99.2
  %mv128.val284.2 = load i16, ptr %mv128.2, align 2
  %88 = getelementptr i8, ptr %arrayidx75.2, i64 18
  %mv128.val285.2 = load i16, ptr %88, align 2
  %mv130.val286.2 = load i16, ptr %mv130.2, align 2
  %89 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv130.val287.2 = load i16, ptr %89, align 2
  %conv.i340.2 = sext i16 %mv128.val284.2 to i32
  %conv2.i341.2 = sext i16 %mv130.val286.2 to i32
  %sub.i342.2 = sub nsw i32 %conv.i340.2, %conv2.i341.2
  %sub.i.i343.2 = tail call i32 @llvm.abs.i32(i32 %sub.i342.2, i1 true)
  %cmp.i344.2 = icmp ult i32 %sub.i.i343.2, 4
  %conv4.i345.2 = sext i16 %mv128.val285.2 to i32
  %conv6.i346.2 = sext i16 %mv130.val287.2 to i32
  %sub7.i347.2 = sub nsw i32 %conv4.i345.2, %conv6.i346.2
  %sub.i14.i348.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.2, i1 true)
  %cmp9.i349.2 = icmp slt i32 %sub.i14.i348.2, %mvlimit
  %or13.i350.not397.2 = and i1 %cmp.i344.2, %cmp9.i349.2
  %arrayidx134.2 = getelementptr inbounds i8, ptr %arrayidx75.2, i64 20
  %arrayidx136.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %arrayidx134.val280.2 = load i16, ptr %arrayidx134.2, align 2
  %90 = getelementptr i8, ptr %arrayidx75.2, i64 22
  %arrayidx134.val281.2 = load i16, ptr %90, align 2
  %arrayidx136.val282.2 = load i16, ptr %arrayidx136.2, align 2
  %91 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx136.val283.2 = load i16, ptr %91, align 2
  %conv.i352.2 = sext i16 %arrayidx134.val280.2 to i32
  %conv2.i353.2 = sext i16 %arrayidx136.val282.2 to i32
  %sub.i354.2 = sub nsw i32 %conv.i352.2, %conv2.i353.2
  %sub.i.i355.2 = tail call i32 @llvm.abs.i32(i32 %sub.i354.2, i1 true)
  %cmp.i356.2 = icmp ult i32 %sub.i.i355.2, 4
  %conv4.i357.2 = sext i16 %arrayidx134.val281.2 to i32
  %conv6.i358.2 = sext i16 %arrayidx136.val283.2 to i32
  %sub7.i359.2 = sub nsw i32 %conv4.i357.2, %conv6.i358.2
  %sub.i14.i360.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.2, i1 true)
  %cmp9.i361.2 = icmp slt i32 %sub.i14.i360.2, %mvlimit
  %or13.i362.not398.2 = and i1 %cmp.i356.2, %cmp9.i361.2
  %or138396.not.2 = and i1 %or13.i350.not397.2, %or13.i362.not398.2
  br i1 %or138396.not.2, label %if.end158.2, label %land.rhs140.2

land.rhs140.2:                                    ; preds = %if.else127.2
  %sub.i366.2 = sub nsw i32 %conv.i340.2, %conv2.i353.2
  %sub.i.i367.2 = tail call i32 @llvm.abs.i32(i32 %sub.i366.2, i1 true)
  %cmp.i368.2 = icmp ugt i32 %sub.i.i367.2, 3
  %sub7.i371.2 = sub nsw i32 %conv4.i345.2, %conv6.i358.2
  %sub.i14.i372.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.2, i1 true)
  %cmp9.i373.2 = icmp sge i32 %sub.i14.i372.2, %mvlimit
  %or13.i374.2 = or i1 %cmp.i368.2, %cmp9.i373.2
  %sub.i378.2 = sub nsw i32 %conv.i352.2, %conv2.i341.2
  %sub.i.i379.2 = tail call i32 @llvm.abs.i32(i32 %sub.i378.2, i1 true)
  %cmp.i380.2 = icmp ugt i32 %sub.i.i379.2, 3
  %sub7.i383.2 = sub nsw i32 %conv4.i357.2, %conv6.i346.2
  %sub.i14.i384.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.2, i1 true)
  %cmp9.i385.2 = icmp sge i32 %sub.i14.i384.2, %mvlimit
  %or13.i386.2 = or i1 %cmp.i380.2, %cmp9.i385.2
  %or151399.2 = or i1 %or13.i386.2, %or13.i374.2
  %92 = zext i1 %or151399.2 to i32
  br label %if.end158.2

if.end158.2:                                      ; preds = %if.else127.2, %land.rhs140.2, %if.then105.2, %if.else115.2, %lor.lhs.false93.2, %land.lhs.true.2, %lor.lhs.false34.2, %i64_power2.exit.2
  %StrValue.1.2 = phi i32 [ 2, %lor.lhs.false34.2 ], [ 2, %i64_power2.exit.2 ], [ 0, %land.lhs.true.2 ], [ %or.2, %if.then105.2 ], [ %or126.2, %if.else115.2 ], [ 1, %lor.lhs.false93.2 ], [ 0, %if.else127.2 ], [ %92, %land.rhs140.2 ]
  %mul.2 = mul nuw nsw i32 %StrValue.1.2, 16843009
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8
  store i32 %mul.2, ptr %add.ptr.2, align 4
  %93 = add nsw i64 %8, 12
  %94 = load i64, ptr %cbp_blk, align 8
  %cmp.i296.3 = icmp sgt i32 %shr, 51
  br i1 %cmp.i296.3, label %i64_power2.exit.3, label %cond.false.i.3

cond.false.i.3:                                   ; preds = %if.end158.2
  %arrayidx.i.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %93
  %95 = load i64, ptr %arrayidx.i.3, align 8
  br label %i64_power2.exit.3

i64_power2.exit.3:                                ; preds = %cond.false.i.3, %if.end158.2
  %cond.i.3 = phi i64 [ %95, %cond.false.i.3 ], [ 0, %if.end158.2 ]
  %and31.3 = and i64 %cond.i.3, %94
  %cmp32.not.3 = icmp eq i64 %and31.3, 0
  br i1 %cmp32.not.3, label %lor.lhs.false34.3, label %if.end158.3

lor.lhs.false34.3:                                ; preds = %i64_power2.exit.3
  %96 = or disjoint i64 %7, 12
  %97 = load i64, ptr %cbp_blk35, align 8
  %arrayidx.i300.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %96
  %98 = load i64, ptr %arrayidx.i300.3, align 8
  %and38.3 = and i64 %98, %97
  %cmp39.not.3 = icmp eq i64 %and38.3, 0
  br i1 %cmp39.not.3, label %if.else42.3, label %if.end158.3

if.else42.3:                                      ; preds = %lor.lhs.false34.3
  br i1 %tobool.not392, label %if.else53.3, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.else42.3
  %99 = load i16, ptr %mb_type, align 8
  %.off274.3 = add i16 %99, -1
  %switch275.3 = icmp ult i16 %.off274.3, 2
  br i1 %switch275.3, label %if.end158.3, label %if.else53.3

if.else53.3:                                      ; preds = %land.lhs.true.3, %if.else42.3
  %100 = trunc nsw i64 %93 to i32
  %shr56.3 = ashr i32 %100, 2
  %add57.3 = add nsw i32 %shr56.3, %conv55
  %101 = load i32, ptr %pix_y, align 8
  %add63.3 = shl i32 %101, 16
  %sext.3 = add i32 %add63.3, 786432
  %shr66.3 = ashr i32 %sext.3, 18
  %102 = load i32, ptr %pix_x, align 4
  %add68.3 = add nsw i32 %102, %and26
  %sext272.3 = shl i32 %add68.3, 16
  %shr71.3 = ashr i32 %sext272.3, 18
  %103 = load ptr, ptr %mv_info, align 8
  %idxprom72.3 = sext i32 %add57.3 to i64
  %arrayidx73.3 = getelementptr inbounds ptr, ptr %103, i64 %idxprom72.3
  %104 = load ptr, ptr %arrayidx73.3, align 8
  %arrayidx75.3 = getelementptr inbounds %struct.pic_motion_params, ptr %104, i64 %idxprom74
  %105 = load ptr, ptr %arrayidx75.3, align 8
  %arrayidx78.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 8
  %106 = load ptr, ptr %arrayidx78.3, align 8
  %idxprom80.3 = sext i32 %shr66.3 to i64
  %arrayidx81.3 = getelementptr inbounds ptr, ptr %103, i64 %idxprom80.3
  %107 = load ptr, ptr %arrayidx81.3, align 8
  %idxprom82.3 = sext i32 %shr71.3 to i64
  %arrayidx83.3 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %idxprom82.3
  %108 = load ptr, ptr %arrayidx83.3, align 8
  %arrayidx87.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 8
  %109 = load ptr, ptr %arrayidx87.3, align 8
  %cmp88.3 = icmp eq ptr %105, %108
  %cmp91.3 = icmp eq ptr %106, %109
  %or.cond.3 = select i1 %cmp88.3, i1 %cmp91.3, i1 false
  br i1 %or.cond.3, label %if.then99.3, label %lor.lhs.false93.3

lor.lhs.false93.3:                                ; preds = %if.else53.3
  %cmp94.3 = icmp eq ptr %105, %109
  %cmp97.3 = icmp eq ptr %106, %108
  %or.cond273.3 = select i1 %cmp94.3, i1 %cmp97.3, i1 false
  br i1 %or.cond273.3, label %if.then99.3, label %if.end158.3

if.then99.3:                                      ; preds = %lor.lhs.false93.3, %if.else53.3
  %cmp100.not.3 = icmp eq ptr %105, %106
  %mv128.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 16
  %mv130.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 16
  br i1 %cmp100.not.3, label %if.else127.3, label %if.then102.3

if.then102.3:                                     ; preds = %if.then99.3
  %110 = getelementptr i8, ptr %arrayidx75.3, i64 22
  %arrayidx111.val292.3 = load i16, ptr %110, align 2
  br i1 %cmp88.3, label %if.then105.3, label %if.else115.3

if.else115.3:                                     ; preds = %if.then102.3
  %arrayidx119.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %mv116.val.3 = load i16, ptr %mv128.3, align 2
  %111 = getelementptr i8, ptr %arrayidx75.3, i64 18
  %mv116.val290.3 = load i16, ptr %111, align 2
  %arrayidx119.val.3 = load i16, ptr %arrayidx119.3, align 2
  %112 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx119.val291.3 = load i16, ptr %112, align 2
  %conv.i316.3 = sext i16 %mv116.val.3 to i32
  %conv2.i317.3 = sext i16 %arrayidx119.val.3 to i32
  %sub.i318.3 = sub nsw i32 %conv.i316.3, %conv2.i317.3
  %sub.i.i319.3 = tail call i32 @llvm.abs.i32(i32 %sub.i318.3, i1 true)
  %cmp.i320.3 = icmp ugt i32 %sub.i.i319.3, 3
  %conv4.i321.3 = sext i16 %mv116.val290.3 to i32
  %conv6.i322.3 = sext i16 %arrayidx119.val291.3 to i32
  %sub7.i323.3 = sub nsw i32 %conv4.i321.3, %conv6.i322.3
  %sub.i14.i324.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i323.3, i1 true)
  %cmp9.i325.3 = icmp sge i32 %sub.i14.i324.3, %mvlimit
  %or13.i326.3 = or i1 %cmp.i320.3, %cmp9.i325.3
  %arrayidx122.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20
  %arrayidx122.val.3 = load i16, ptr %arrayidx122.3, align 2
  %mv118.val.3 = load i16, ptr %mv130.3, align 2
  %113 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv118.val289.3 = load i16, ptr %113, align 2
  %conv.i328.3 = sext i16 %arrayidx122.val.3 to i32
  %conv2.i329.3 = sext i16 %mv118.val.3 to i32
  %sub.i330.3 = sub nsw i32 %conv.i328.3, %conv2.i329.3
  %sub.i.i331.3 = tail call i32 @llvm.abs.i32(i32 %sub.i330.3, i1 true)
  %cmp.i332.3 = icmp ugt i32 %sub.i.i331.3, 3
  %conv4.i333.3 = sext i16 %arrayidx111.val292.3 to i32
  %conv6.i334.3 = sext i16 %mv118.val289.3 to i32
  %sub7.i335.3 = sub nsw i32 %conv4.i333.3, %conv6.i334.3
  %sub.i14.i336.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i335.3, i1 true)
  %cmp9.i337.3 = icmp sge i32 %sub.i14.i336.3, %mvlimit
  %or13.i338.3 = or i1 %cmp.i332.3, %cmp9.i337.3
  %or126394.3 = or i1 %or13.i326.3, %or13.i338.3
  %or126.3 = zext i1 %or126394.3 to i32
  br label %if.end158.3

if.then105.3:                                     ; preds = %if.then102.3
  %mv.val.3 = load i16, ptr %mv128.3, align 2
  %114 = getelementptr i8, ptr %arrayidx75.3, i64 18
  %mv.val294.3 = load i16, ptr %114, align 2
  %mv107.val.3 = load i16, ptr %mv130.3, align 2
  %115 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv107.val295.3 = load i16, ptr %115, align 2
  %conv.i.3 = sext i16 %mv.val.3 to i32
  %conv2.i.3 = sext i16 %mv107.val.3 to i32
  %sub.i.3 = sub nsw i32 %conv.i.3, %conv2.i.3
  %sub.i.i.3 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 true)
  %cmp.i303.3 = icmp ugt i32 %sub.i.i.3, 3
  %conv4.i.3 = sext i16 %mv.val294.3 to i32
  %conv6.i.3 = sext i16 %mv107.val295.3 to i32
  %sub7.i.3 = sub nsw i32 %conv4.i.3, %conv6.i.3
  %sub.i14.i.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i.3, i1 true)
  %cmp9.i.3 = icmp sge i32 %sub.i14.i.3, %mvlimit
  %or13.i.3 = or i1 %cmp.i303.3, %cmp9.i.3
  %arrayidx111.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20
  %arrayidx113.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %arrayidx111.val.3 = load i16, ptr %arrayidx111.3, align 2
  %arrayidx113.val.3 = load i16, ptr %arrayidx113.3, align 2
  %116 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx113.val293.3 = load i16, ptr %116, align 2
  %conv.i304.3 = sext i16 %arrayidx111.val.3 to i32
  %conv2.i305.3 = sext i16 %arrayidx113.val.3 to i32
  %sub.i306.3 = sub nsw i32 %conv.i304.3, %conv2.i305.3
  %sub.i.i307.3 = tail call i32 @llvm.abs.i32(i32 %sub.i306.3, i1 true)
  %cmp.i308.3 = icmp ugt i32 %sub.i.i307.3, 3
  %conv4.i309.3 = sext i16 %arrayidx111.val292.3 to i32
  %conv6.i310.3 = sext i16 %arrayidx113.val293.3 to i32
  %sub7.i311.3 = sub nsw i32 %conv4.i309.3, %conv6.i310.3
  %sub.i14.i312.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i311.3, i1 true)
  %cmp9.i313.3 = icmp sge i32 %sub.i14.i312.3, %mvlimit
  %or13.i314.3 = or i1 %cmp.i308.3, %cmp9.i313.3
  %or395.3 = or i1 %or13.i.3, %or13.i314.3
  %or.3 = zext i1 %or395.3 to i32
  br label %if.end158.3

if.else127.3:                                     ; preds = %if.then99.3
  %mv128.val284.3 = load i16, ptr %mv128.3, align 2
  %117 = getelementptr i8, ptr %arrayidx75.3, i64 18
  %mv128.val285.3 = load i16, ptr %117, align 2
  %mv130.val286.3 = load i16, ptr %mv130.3, align 2
  %118 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv130.val287.3 = load i16, ptr %118, align 2
  %conv.i340.3 = sext i16 %mv128.val284.3 to i32
  %conv2.i341.3 = sext i16 %mv130.val286.3 to i32
  %sub.i342.3 = sub nsw i32 %conv.i340.3, %conv2.i341.3
  %sub.i.i343.3 = tail call i32 @llvm.abs.i32(i32 %sub.i342.3, i1 true)
  %cmp.i344.3 = icmp ult i32 %sub.i.i343.3, 4
  %conv4.i345.3 = sext i16 %mv128.val285.3 to i32
  %conv6.i346.3 = sext i16 %mv130.val287.3 to i32
  %sub7.i347.3 = sub nsw i32 %conv4.i345.3, %conv6.i346.3
  %sub.i14.i348.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i347.3, i1 true)
  %cmp9.i349.3 = icmp slt i32 %sub.i14.i348.3, %mvlimit
  %or13.i350.not397.3 = and i1 %cmp.i344.3, %cmp9.i349.3
  %arrayidx134.3 = getelementptr inbounds i8, ptr %arrayidx75.3, i64 20
  %arrayidx136.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %arrayidx134.val280.3 = load i16, ptr %arrayidx134.3, align 2
  %119 = getelementptr i8, ptr %arrayidx75.3, i64 22
  %arrayidx134.val281.3 = load i16, ptr %119, align 2
  %arrayidx136.val282.3 = load i16, ptr %arrayidx136.3, align 2
  %120 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx136.val283.3 = load i16, ptr %120, align 2
  %conv.i352.3 = sext i16 %arrayidx134.val280.3 to i32
  %conv2.i353.3 = sext i16 %arrayidx136.val282.3 to i32
  %sub.i354.3 = sub nsw i32 %conv.i352.3, %conv2.i353.3
  %sub.i.i355.3 = tail call i32 @llvm.abs.i32(i32 %sub.i354.3, i1 true)
  %cmp.i356.3 = icmp ult i32 %sub.i.i355.3, 4
  %conv4.i357.3 = sext i16 %arrayidx134.val281.3 to i32
  %conv6.i358.3 = sext i16 %arrayidx136.val283.3 to i32
  %sub7.i359.3 = sub nsw i32 %conv4.i357.3, %conv6.i358.3
  %sub.i14.i360.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i359.3, i1 true)
  %cmp9.i361.3 = icmp slt i32 %sub.i14.i360.3, %mvlimit
  %or13.i362.not398.3 = and i1 %cmp.i356.3, %cmp9.i361.3
  %or138396.not.3 = and i1 %or13.i350.not397.3, %or13.i362.not398.3
  br i1 %or138396.not.3, label %if.end158.3, label %land.rhs140.3

land.rhs140.3:                                    ; preds = %if.else127.3
  %sub.i366.3 = sub nsw i32 %conv.i340.3, %conv2.i353.3
  %sub.i.i367.3 = tail call i32 @llvm.abs.i32(i32 %sub.i366.3, i1 true)
  %cmp.i368.3 = icmp ugt i32 %sub.i.i367.3, 3
  %sub7.i371.3 = sub nsw i32 %conv4.i345.3, %conv6.i358.3
  %sub.i14.i372.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i371.3, i1 true)
  %cmp9.i373.3 = icmp sge i32 %sub.i14.i372.3, %mvlimit
  %or13.i374.3 = or i1 %cmp.i368.3, %cmp9.i373.3
  %sub.i378.3 = sub nsw i32 %conv.i352.3, %conv2.i341.3
  %sub.i.i379.3 = tail call i32 @llvm.abs.i32(i32 %sub.i378.3, i1 true)
  %cmp.i380.3 = icmp ugt i32 %sub.i.i379.3, 3
  %sub7.i383.3 = sub nsw i32 %conv4.i357.3, %conv6.i346.3
  %sub.i14.i384.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i383.3, i1 true)
  %cmp9.i385.3 = icmp sge i32 %sub.i14.i384.3, %mvlimit
  %or13.i386.3 = or i1 %cmp.i380.3, %cmp9.i385.3
  %or151399.3 = or i1 %or13.i386.3, %or13.i374.3
  %121 = zext i1 %or151399.3 to i32
  br label %if.end158.3

if.end158.3:                                      ; preds = %if.else127.3, %land.rhs140.3, %if.then105.3, %if.else115.3, %lor.lhs.false93.3, %land.lhs.true.3, %lor.lhs.false34.3, %i64_power2.exit.3
  %StrValue.1.3 = phi i32 [ 2, %lor.lhs.false34.3 ], [ 2, %i64_power2.exit.3 ], [ 0, %land.lhs.true.3 ], [ %or.3, %if.then105.3 ], [ %or126.3, %if.else115.3 ], [ 1, %lor.lhs.false93.3 ], [ 0, %if.else127.3 ], [ %121, %land.rhs140.3 ]
  %mul.3 = mul nuw nsw i32 %StrValue.1.3, 16843009
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12
  store i32 %mul.3, ptr %add.ptr.3, align 4
  br label %if.end196

land.rhs163:                                      ; preds = %lor.lhs.false13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 4, i64 16, i1 false)
  br label %if.end196

if.else178:                                       ; preds = %if.else
  %cmp179 = icmp eq i32 %edge, 0
  %cond192 = select i1 %cmp179, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond192, i64 16, i1 false)
  br label %if.end196

if.end196:                                        ; preds = %if.end158.3, %land.rhs163, %if.else178, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @GetStrengthHor(ptr nocapture noundef writeonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %mvlimit, ptr nocapture noundef readonly %p) #1 {
entry:
  %0 = load ptr, ptr %MbQ, align 8
  %slice_type = getelementptr inbounds i8, ptr %0, i64 164
  %1 = load i32, ptr %slice_type, align 4
  %.off = add i32 %1, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp3 = icmp eq i32 %edge, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %2 = load i32, ptr %p, align 8
  %cmp4 = icmp eq i32 %2, 0
  %3 = select i1 %cmp4, i8 4, i8 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %cond = phi i8 [ 3, %if.then ], [ %3, %land.rhs ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond, i64 16, i1 false)
  br label %if.end189

if.else:                                          ; preds = %entry
  %is_intra_block = getelementptr inbounds i8, ptr %MbQ, i64 96
  %4 = load i32, ptr %is_intra_block, align 8
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then8, label %if.else176

if.then8:                                         ; preds = %if.else
  %cmp9 = icmp slt i32 %edge, 16
  %sub = add nsw i32 %edge, -1
  %cond11 = select i1 %cmp9, i32 %sub, i32 0
  %cmp1.i = icmp slt i32 %cond11, 0
  br i1 %cmp1.i, label %return.sink.split.i, label %get_non_aff_neighbor_luma.exit

return.sink.split.i:                              ; preds = %if.then8
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136
  %5 = load ptr, ptr %mbup.i, align 8
  br label %get_non_aff_neighbor_luma.exit

get_non_aff_neighbor_luma.exit:                   ; preds = %if.then8, %return.sink.split.i
  %retval.0.i = phi ptr [ %MbQ, %if.then8 ], [ %5, %return.sink.split.i ]
  %tobool.not = icmp eq i32 %edge, 0
  %cond15 = select i1 %tobool.not, ptr %retval.0.i, ptr %MbQ
  br i1 %tobool.not, label %lor.lhs.false17, label %if.then21

lor.lhs.false17:                                  ; preds = %get_non_aff_neighbor_luma.exit
  %is_intra_block18 = getelementptr inbounds i8, ptr %retval.0.i, i64 96
  %6 = load i32, ptr %is_intra_block18, align 8
  %cmp19 = icmp eq i32 %6, 0
  br i1 %cmp19, label %if.then21, label %land.end170

if.then21:                                        ; preds = %lor.lhs.false17, %get_non_aff_neighbor_luma.exit
  %7 = load ptr, ptr @PicPos, align 8
  %mbAddrX = getelementptr inbounds i8, ptr %MbQ, i64 24
  %8 = load i32, ptr %mbAddrX, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.BlockPos, ptr %7, i64 %idxprom
  %mb.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %mb.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %mb.sroa.6.0.copyload = load i16, ptr %mb.sroa.6.0.arrayidx.sroa_idx, align 2
  %shl = shl i16 %mb.sroa.0.0.copyload, 2
  %shl25 = shl i16 %mb.sroa.6.0.copyload, 2
  %add = add nsw i32 %cond11, 1
  %and = and i32 %add, 65532
  %and30 = and i32 %cond11, 15
  %cbp_blk = getelementptr inbounds i8, ptr %MbQ, i64 288
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
  %9 = zext nneg i32 %and to i64
  %10 = zext nneg i32 %and31 to i64
  %11 = sext i16 %shl to i64
  %12 = load i64, ptr %cbp_blk, align 8
  %cmp.i = icmp ugt i32 %and, 63
  br i1 %cmp.i, label %i64_power2.exit, label %cond.false.i

cond.false.i:                                     ; preds = %if.then21
  %arrayidx.i = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %9
  %13 = load i64, ptr %arrayidx.i, align 16
  br label %i64_power2.exit

i64_power2.exit:                                  ; preds = %if.then21, %cond.false.i
  %cond.i = phi i64 [ %13, %cond.false.i ], [ 0, %if.then21 ]
  %and36 = and i64 %cond.i, %12
  %cmp37.not = icmp eq i64 %and36, 0
  br i1 %cmp37.not, label %lor.lhs.false39, label %if.end161

lor.lhs.false39:                                  ; preds = %i64_power2.exit
  %14 = load i64, ptr %cbp_blk40, align 8
  %arrayidx.i287 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %10
  %15 = load i64, ptr %arrayidx.i287, align 16
  %and43 = and i64 %15, %14
  %cmp44.not = icmp eq i64 %and43, 0
  br i1 %cmp44.not, label %if.else47, label %if.end161

if.else47:                                        ; preds = %lor.lhs.false39
  br i1 %tobool.not, label %if.else58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else47
  %16 = load i16, ptr %mb_type, align 8
  switch i16 %16, label %if.else58 [
    i16 1, label %if.end161
    i16 3, label %if.end161
  ]

if.else58:                                        ; preds = %land.lhs.true, %if.else47
  %17 = load i32, ptr %pix_y, align 8
  %add68 = add nsw i32 %17, %and30
  %shr69 = ashr i32 %add68, 2
  %18 = load i32, ptr %pix_x, align 4
  %sext = shl i32 %18, 16
  %shr74 = ashr i32 %sext, 18
  %19 = load ptr, ptr %mv_info, align 8
  %arrayidx76 = getelementptr inbounds ptr, ptr %19, i64 %idxprom75
  %20 = load ptr, ptr %arrayidx76, align 8
  %arrayidx78 = getelementptr inbounds %struct.pic_motion_params, ptr %20, i64 %11
  %idxprom80 = sext i32 %shr69 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %19, i64 %idxprom80
  %21 = load ptr, ptr %arrayidx81, align 8
  %idxprom82 = sext i32 %shr74 to i64
  %arrayidx83 = getelementptr inbounds %struct.pic_motion_params, ptr %21, i64 %idxprom82
  %22 = load ptr, ptr %arrayidx78, align 8
  %23 = load ptr, ptr %arrayidx83, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %arrayidx78, i64 8
  %24 = load ptr, ptr %arrayidx88, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %arrayidx83, i64 8
  %25 = load ptr, ptr %arrayidx90, align 8
  %cmp91 = icmp eq ptr %22, %23
  %cmp94 = icmp eq ptr %24, %25
  %or.cond = select i1 %cmp91, i1 %cmp94, i1 false
  br i1 %or.cond, label %if.then102, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.else58
  %cmp97 = icmp eq ptr %22, %25
  %cmp100 = icmp eq ptr %24, %23
  %or.cond263 = select i1 %cmp97, i1 %cmp100, i1 false
  br i1 %or.cond263, label %if.then102, label %if.end161

if.then102:                                       ; preds = %lor.lhs.false96, %if.else58
  %cmp103.not = icmp eq ptr %22, %24
  %mv131 = getelementptr inbounds i8, ptr %arrayidx78, i64 16
  %mv133 = getelementptr inbounds i8, ptr %arrayidx83, i64 16
  br i1 %cmp103.not, label %if.else130, label %if.then105

if.then105:                                       ; preds = %if.then102
  %26 = getelementptr i8, ptr %arrayidx78, i64 22
  %arrayidx114.val280 = load i16, ptr %26, align 2
  br i1 %cmp91, label %if.then108, label %if.else118

if.then108:                                       ; preds = %if.then105
  %mv.val = load i16, ptr %mv131, align 2
  %27 = getelementptr i8, ptr %arrayidx78, i64 18
  %mv.val282 = load i16, ptr %27, align 2
  %mv110.val = load i16, ptr %mv133, align 2
  %28 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv110.val283 = load i16, ptr %28, align 2
  %conv.i = sext i16 %mv.val to i32
  %conv2.i = sext i16 %mv110.val to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %sub.i.i = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true)
  %cmp.i290 = icmp ugt i32 %sub.i.i, 3
  %conv4.i = sext i16 %mv.val282 to i32
  %conv6.i = sext i16 %mv110.val283 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %sub.i14.i = tail call i32 @llvm.abs.i32(i32 %sub7.i, i1 true)
  %cmp9.i = icmp sge i32 %sub.i14.i, %mvlimit
  %or13.i = or i1 %cmp.i290, %cmp9.i
  %arrayidx114 = getelementptr inbounds i8, ptr %arrayidx78, i64 20
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %arrayidx114.val = load i16, ptr %arrayidx114, align 2
  %arrayidx116.val = load i16, ptr %arrayidx116, align 2
  %29 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx116.val281 = load i16, ptr %29, align 2
  %conv.i291 = sext i16 %arrayidx114.val to i32
  %conv2.i292 = sext i16 %arrayidx116.val to i32
  %sub.i293 = sub nsw i32 %conv.i291, %conv2.i292
  %sub.i.i294 = tail call i32 @llvm.abs.i32(i32 %sub.i293, i1 true)
  %cmp.i295 = icmp ugt i32 %sub.i.i294, 3
  %conv4.i296 = sext i16 %arrayidx114.val280 to i32
  %conv6.i297 = sext i16 %arrayidx116.val281 to i32
  %sub7.i298 = sub nsw i32 %conv4.i296, %conv6.i297
  %sub.i14.i299 = tail call i32 @llvm.abs.i32(i32 %sub7.i298, i1 true)
  %cmp9.i300 = icmp sge i32 %sub.i14.i299, %mvlimit
  %or13.i301 = or i1 %cmp.i295, %cmp9.i300
  %or376 = or i1 %or13.i, %or13.i301
  %or = zext i1 %or376 to i32
  br label %if.end161

if.else118:                                       ; preds = %if.then105
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %mv119.val = load i16, ptr %mv131, align 2
  %30 = getelementptr i8, ptr %arrayidx78, i64 18
  %mv119.val278 = load i16, ptr %30, align 2
  %arrayidx122.val = load i16, ptr %arrayidx122, align 2
  %31 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx122.val279 = load i16, ptr %31, align 2
  %conv.i303 = sext i16 %mv119.val to i32
  %conv2.i304 = sext i16 %arrayidx122.val to i32
  %sub.i305 = sub nsw i32 %conv.i303, %conv2.i304
  %sub.i.i306 = tail call i32 @llvm.abs.i32(i32 %sub.i305, i1 true)
  %cmp.i307 = icmp ugt i32 %sub.i.i306, 3
  %conv4.i308 = sext i16 %mv119.val278 to i32
  %conv6.i309 = sext i16 %arrayidx122.val279 to i32
  %sub7.i310 = sub nsw i32 %conv4.i308, %conv6.i309
  %sub.i14.i311 = tail call i32 @llvm.abs.i32(i32 %sub7.i310, i1 true)
  %cmp9.i312 = icmp sge i32 %sub.i14.i311, %mvlimit
  %or13.i313 = or i1 %cmp.i307, %cmp9.i312
  %arrayidx125 = getelementptr inbounds i8, ptr %arrayidx78, i64 20
  %arrayidx125.val = load i16, ptr %arrayidx125, align 2
  %mv121.val = load i16, ptr %mv133, align 2
  %32 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv121.val277 = load i16, ptr %32, align 2
  %conv.i315 = sext i16 %arrayidx125.val to i32
  %conv2.i316 = sext i16 %mv121.val to i32
  %sub.i317 = sub nsw i32 %conv.i315, %conv2.i316
  %sub.i.i318 = tail call i32 @llvm.abs.i32(i32 %sub.i317, i1 true)
  %cmp.i319 = icmp ugt i32 %sub.i.i318, 3
  %conv4.i320 = sext i16 %arrayidx114.val280 to i32
  %conv6.i321 = sext i16 %mv121.val277 to i32
  %sub7.i322 = sub nsw i32 %conv4.i320, %conv6.i321
  %sub.i14.i323 = tail call i32 @llvm.abs.i32(i32 %sub7.i322, i1 true)
  %cmp9.i324 = icmp sge i32 %sub.i14.i323, %mvlimit
  %or13.i325 = or i1 %cmp.i319, %cmp9.i324
  %or129375 = or i1 %or13.i313, %or13.i325
  %or129 = zext i1 %or129375 to i32
  br label %if.end161

if.else130:                                       ; preds = %if.then102
  %mv131.val272 = load i16, ptr %mv131, align 2
  %33 = getelementptr i8, ptr %arrayidx78, i64 18
  %mv131.val273 = load i16, ptr %33, align 2
  %mv133.val274 = load i16, ptr %mv133, align 2
  %34 = getelementptr i8, ptr %arrayidx83, i64 18
  %mv133.val275 = load i16, ptr %34, align 2
  %conv.i327 = sext i16 %mv131.val272 to i32
  %conv2.i328 = sext i16 %mv133.val274 to i32
  %sub.i329 = sub nsw i32 %conv.i327, %conv2.i328
  %sub.i.i330 = tail call i32 @llvm.abs.i32(i32 %sub.i329, i1 true)
  %cmp.i331 = icmp ult i32 %sub.i.i330, 4
  %conv4.i332 = sext i16 %mv131.val273 to i32
  %conv6.i333 = sext i16 %mv133.val275 to i32
  %sub7.i334 = sub nsw i32 %conv4.i332, %conv6.i333
  %sub.i14.i335 = tail call i32 @llvm.abs.i32(i32 %sub7.i334, i1 true)
  %cmp9.i336 = icmp slt i32 %sub.i14.i335, %mvlimit
  %or13.i337.not378 = and i1 %cmp.i331, %cmp9.i336
  %arrayidx137 = getelementptr inbounds i8, ptr %arrayidx78, i64 20
  %arrayidx139 = getelementptr inbounds i8, ptr %arrayidx83, i64 20
  %arrayidx137.val268 = load i16, ptr %arrayidx137, align 2
  %35 = getelementptr i8, ptr %arrayidx78, i64 22
  %arrayidx137.val269 = load i16, ptr %35, align 2
  %arrayidx139.val270 = load i16, ptr %arrayidx139, align 2
  %36 = getelementptr i8, ptr %arrayidx83, i64 22
  %arrayidx139.val271 = load i16, ptr %36, align 2
  %conv.i339 = sext i16 %arrayidx137.val268 to i32
  %conv2.i340 = sext i16 %arrayidx139.val270 to i32
  %sub.i341 = sub nsw i32 %conv.i339, %conv2.i340
  %sub.i.i342 = tail call i32 @llvm.abs.i32(i32 %sub.i341, i1 true)
  %cmp.i343 = icmp ult i32 %sub.i.i342, 4
  %conv4.i344 = sext i16 %arrayidx137.val269 to i32
  %conv6.i345 = sext i16 %arrayidx139.val271 to i32
  %sub7.i346 = sub nsw i32 %conv4.i344, %conv6.i345
  %sub.i14.i347 = tail call i32 @llvm.abs.i32(i32 %sub7.i346, i1 true)
  %cmp9.i348 = icmp slt i32 %sub.i14.i347, %mvlimit
  %or13.i349.not379 = and i1 %cmp.i343, %cmp9.i348
  %or141377.not = and i1 %or13.i337.not378, %or13.i349.not379
  br i1 %or141377.not, label %land.end156, label %land.rhs143

land.rhs143:                                      ; preds = %if.else130
  %sub.i353 = sub nsw i32 %conv.i327, %conv2.i340
  %sub.i.i354 = tail call i32 @llvm.abs.i32(i32 %sub.i353, i1 true)
  %cmp.i355 = icmp ugt i32 %sub.i.i354, 3
  %sub7.i358 = sub nsw i32 %conv4.i332, %conv6.i345
  %sub.i14.i359 = tail call i32 @llvm.abs.i32(i32 %sub7.i358, i1 true)
  %cmp9.i360 = icmp sge i32 %sub.i14.i359, %mvlimit
  %or13.i361 = or i1 %cmp.i355, %cmp9.i360
  %sub.i365 = sub nsw i32 %conv.i339, %conv2.i328
  %sub.i.i366 = tail call i32 @llvm.abs.i32(i32 %sub.i365, i1 true)
  %cmp.i367 = icmp ugt i32 %sub.i.i366, 3
  %sub7.i370 = sub nsw i32 %conv4.i344, %conv6.i333
  %sub.i14.i371 = tail call i32 @llvm.abs.i32(i32 %sub7.i370, i1 true)
  %cmp9.i372 = icmp sge i32 %sub.i14.i371, %mvlimit
  %or13.i373 = or i1 %cmp.i367, %cmp9.i372
  %or154380 = or i1 %or13.i373, %or13.i361
  br label %land.end156

land.end156:                                      ; preds = %land.rhs143, %if.else130
  %37 = phi i1 [ false, %if.else130 ], [ %or154380, %land.rhs143 ]
  %land.ext = zext i1 %37 to i32
  br label %if.end161

if.end161:                                        ; preds = %if.then108, %if.else118, %land.end156, %lor.lhs.false96, %land.lhs.true, %land.lhs.true, %i64_power2.exit, %lor.lhs.false39
  %StrValue.1 = phi i32 [ 2, %lor.lhs.false39 ], [ 2, %i64_power2.exit ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true ], [ %or, %if.then108 ], [ %or129, %if.else118 ], [ %land.ext, %land.end156 ], [ 1, %lor.lhs.false96 ]
  %mul = mul nuw nsw i32 %StrValue.1, 16843009
  store i32 %mul, ptr %Strength, align 4
  %38 = load i64, ptr %cbp_blk, align 8
  %cmp.i.1 = icmp ugt i32 %and, 63
  br i1 %cmp.i.1, label %i64_power2.exit.1, label %cond.false.i.1

cond.false.i.1:                                   ; preds = %if.end161
  %39 = or disjoint i64 %9, 1
  %arrayidx.i.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %39
  %40 = load i64, ptr %arrayidx.i.1, align 8
  br label %i64_power2.exit.1

i64_power2.exit.1:                                ; preds = %cond.false.i.1, %if.end161
  %cond.i.1 = phi i64 [ %40, %cond.false.i.1 ], [ 0, %if.end161 ]
  %and36.1 = and i64 %cond.i.1, %38
  %cmp37.not.1 = icmp eq i64 %and36.1, 0
  br i1 %cmp37.not.1, label %lor.lhs.false39.1, label %if.end161.1

lor.lhs.false39.1:                                ; preds = %i64_power2.exit.1
  %41 = or disjoint i64 %10, 1
  %42 = load i64, ptr %cbp_blk40, align 8
  %arrayidx.i287.1 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %41
  %43 = load i64, ptr %arrayidx.i287.1, align 8
  %and43.1 = and i64 %43, %42
  %cmp44.not.1 = icmp eq i64 %and43.1, 0
  br i1 %cmp44.not.1, label %if.else47.1, label %if.end161.1

if.else47.1:                                      ; preds = %lor.lhs.false39.1
  br i1 %tobool.not, label %if.else58.1, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %if.else47.1
  %44 = load i16, ptr %mb_type, align 8
  switch i16 %44, label %if.else58.1 [
    i16 1, label %if.end161.1
    i16 3, label %if.end161.1
  ]

if.else58.1:                                      ; preds = %land.lhs.true.1, %if.else47.1
  %45 = or disjoint i64 %11, 1
  %46 = load i32, ptr %pix_y, align 8
  %add68.1 = add nsw i32 %46, %and30
  %shr69.1 = ashr i32 %add68.1, 2
  %47 = load i32, ptr %pix_x, align 4
  %add71.1 = shl i32 %47, 16
  %sext.1 = add i32 %add71.1, 262144
  %shr74.1 = ashr i32 %sext.1, 18
  %48 = load ptr, ptr %mv_info, align 8
  %arrayidx76.1 = getelementptr inbounds ptr, ptr %48, i64 %idxprom75
  %49 = load ptr, ptr %arrayidx76.1, align 8
  %arrayidx78.1 = getelementptr inbounds %struct.pic_motion_params, ptr %49, i64 %45
  %idxprom80.1 = sext i32 %shr69.1 to i64
  %arrayidx81.1 = getelementptr inbounds ptr, ptr %48, i64 %idxprom80.1
  %50 = load ptr, ptr %arrayidx81.1, align 8
  %idxprom82.1 = sext i32 %shr74.1 to i64
  %arrayidx83.1 = getelementptr inbounds %struct.pic_motion_params, ptr %50, i64 %idxprom82.1
  %51 = load ptr, ptr %arrayidx78.1, align 8
  %52 = load ptr, ptr %arrayidx83.1, align 8
  %arrayidx88.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 8
  %53 = load ptr, ptr %arrayidx88.1, align 8
  %arrayidx90.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 8
  %54 = load ptr, ptr %arrayidx90.1, align 8
  %cmp91.1 = icmp eq ptr %51, %52
  %cmp94.1 = icmp eq ptr %53, %54
  %or.cond.1 = select i1 %cmp91.1, i1 %cmp94.1, i1 false
  br i1 %or.cond.1, label %if.then102.1, label %lor.lhs.false96.1

lor.lhs.false96.1:                                ; preds = %if.else58.1
  %cmp97.1 = icmp eq ptr %51, %54
  %cmp100.1 = icmp eq ptr %53, %52
  %or.cond263.1 = select i1 %cmp97.1, i1 %cmp100.1, i1 false
  br i1 %or.cond263.1, label %if.then102.1, label %if.end161.1

if.then102.1:                                     ; preds = %lor.lhs.false96.1, %if.else58.1
  %cmp103.not.1 = icmp eq ptr %51, %53
  %mv131.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 16
  %mv133.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 16
  br i1 %cmp103.not.1, label %if.else130.1, label %if.then105.1

if.then105.1:                                     ; preds = %if.then102.1
  %55 = getelementptr i8, ptr %arrayidx78.1, i64 22
  %arrayidx114.val280.1 = load i16, ptr %55, align 2
  br i1 %cmp91.1, label %if.then108.1, label %if.else118.1

if.else118.1:                                     ; preds = %if.then105.1
  %arrayidx122.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %mv119.val.1 = load i16, ptr %mv131.1, align 2
  %56 = getelementptr i8, ptr %arrayidx78.1, i64 18
  %mv119.val278.1 = load i16, ptr %56, align 2
  %arrayidx122.val.1 = load i16, ptr %arrayidx122.1, align 2
  %57 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx122.val279.1 = load i16, ptr %57, align 2
  %conv.i303.1 = sext i16 %mv119.val.1 to i32
  %conv2.i304.1 = sext i16 %arrayidx122.val.1 to i32
  %sub.i305.1 = sub nsw i32 %conv.i303.1, %conv2.i304.1
  %sub.i.i306.1 = tail call i32 @llvm.abs.i32(i32 %sub.i305.1, i1 true)
  %cmp.i307.1 = icmp ugt i32 %sub.i.i306.1, 3
  %conv4.i308.1 = sext i16 %mv119.val278.1 to i32
  %conv6.i309.1 = sext i16 %arrayidx122.val279.1 to i32
  %sub7.i310.1 = sub nsw i32 %conv4.i308.1, %conv6.i309.1
  %sub.i14.i311.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.1, i1 true)
  %cmp9.i312.1 = icmp sge i32 %sub.i14.i311.1, %mvlimit
  %or13.i313.1 = or i1 %cmp.i307.1, %cmp9.i312.1
  %arrayidx125.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20
  %arrayidx125.val.1 = load i16, ptr %arrayidx125.1, align 2
  %mv121.val.1 = load i16, ptr %mv133.1, align 2
  %58 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv121.val277.1 = load i16, ptr %58, align 2
  %conv.i315.1 = sext i16 %arrayidx125.val.1 to i32
  %conv2.i316.1 = sext i16 %mv121.val.1 to i32
  %sub.i317.1 = sub nsw i32 %conv.i315.1, %conv2.i316.1
  %sub.i.i318.1 = tail call i32 @llvm.abs.i32(i32 %sub.i317.1, i1 true)
  %cmp.i319.1 = icmp ugt i32 %sub.i.i318.1, 3
  %conv4.i320.1 = sext i16 %arrayidx114.val280.1 to i32
  %conv6.i321.1 = sext i16 %mv121.val277.1 to i32
  %sub7.i322.1 = sub nsw i32 %conv4.i320.1, %conv6.i321.1
  %sub.i14.i323.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.1, i1 true)
  %cmp9.i324.1 = icmp sge i32 %sub.i14.i323.1, %mvlimit
  %or13.i325.1 = or i1 %cmp.i319.1, %cmp9.i324.1
  %or129375.1 = or i1 %or13.i313.1, %or13.i325.1
  %or129.1 = zext i1 %or129375.1 to i32
  br label %if.end161.1

if.then108.1:                                     ; preds = %if.then105.1
  %mv.val.1 = load i16, ptr %mv131.1, align 2
  %59 = getelementptr i8, ptr %arrayidx78.1, i64 18
  %mv.val282.1 = load i16, ptr %59, align 2
  %mv110.val.1 = load i16, ptr %mv133.1, align 2
  %60 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv110.val283.1 = load i16, ptr %60, align 2
  %conv.i.1 = sext i16 %mv.val.1 to i32
  %conv2.i.1 = sext i16 %mv110.val.1 to i32
  %sub.i.1 = sub nsw i32 %conv.i.1, %conv2.i.1
  %sub.i.i.1 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 true)
  %cmp.i290.1 = icmp ugt i32 %sub.i.i.1, 3
  %conv4.i.1 = sext i16 %mv.val282.1 to i32
  %conv6.i.1 = sext i16 %mv110.val283.1 to i32
  %sub7.i.1 = sub nsw i32 %conv4.i.1, %conv6.i.1
  %sub.i14.i.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i.1, i1 true)
  %cmp9.i.1 = icmp sge i32 %sub.i14.i.1, %mvlimit
  %or13.i.1 = or i1 %cmp.i290.1, %cmp9.i.1
  %arrayidx114.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20
  %arrayidx116.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %arrayidx114.val.1 = load i16, ptr %arrayidx114.1, align 2
  %arrayidx116.val.1 = load i16, ptr %arrayidx116.1, align 2
  %61 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx116.val281.1 = load i16, ptr %61, align 2
  %conv.i291.1 = sext i16 %arrayidx114.val.1 to i32
  %conv2.i292.1 = sext i16 %arrayidx116.val.1 to i32
  %sub.i293.1 = sub nsw i32 %conv.i291.1, %conv2.i292.1
  %sub.i.i294.1 = tail call i32 @llvm.abs.i32(i32 %sub.i293.1, i1 true)
  %cmp.i295.1 = icmp ugt i32 %sub.i.i294.1, 3
  %conv4.i296.1 = sext i16 %arrayidx114.val280.1 to i32
  %conv6.i297.1 = sext i16 %arrayidx116.val281.1 to i32
  %sub7.i298.1 = sub nsw i32 %conv4.i296.1, %conv6.i297.1
  %sub.i14.i299.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.1, i1 true)
  %cmp9.i300.1 = icmp sge i32 %sub.i14.i299.1, %mvlimit
  %or13.i301.1 = or i1 %cmp.i295.1, %cmp9.i300.1
  %or376.1 = or i1 %or13.i.1, %or13.i301.1
  %or.1 = zext i1 %or376.1 to i32
  br label %if.end161.1

if.else130.1:                                     ; preds = %if.then102.1
  %mv131.val272.1 = load i16, ptr %mv131.1, align 2
  %62 = getelementptr i8, ptr %arrayidx78.1, i64 18
  %mv131.val273.1 = load i16, ptr %62, align 2
  %mv133.val274.1 = load i16, ptr %mv133.1, align 2
  %63 = getelementptr i8, ptr %arrayidx83.1, i64 18
  %mv133.val275.1 = load i16, ptr %63, align 2
  %conv.i327.1 = sext i16 %mv131.val272.1 to i32
  %conv2.i328.1 = sext i16 %mv133.val274.1 to i32
  %sub.i329.1 = sub nsw i32 %conv.i327.1, %conv2.i328.1
  %sub.i.i330.1 = tail call i32 @llvm.abs.i32(i32 %sub.i329.1, i1 true)
  %cmp.i331.1 = icmp ult i32 %sub.i.i330.1, 4
  %conv4.i332.1 = sext i16 %mv131.val273.1 to i32
  %conv6.i333.1 = sext i16 %mv133.val275.1 to i32
  %sub7.i334.1 = sub nsw i32 %conv4.i332.1, %conv6.i333.1
  %sub.i14.i335.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.1, i1 true)
  %cmp9.i336.1 = icmp slt i32 %sub.i14.i335.1, %mvlimit
  %or13.i337.not378.1 = and i1 %cmp.i331.1, %cmp9.i336.1
  %arrayidx137.1 = getelementptr inbounds i8, ptr %arrayidx78.1, i64 20
  %arrayidx139.1 = getelementptr inbounds i8, ptr %arrayidx83.1, i64 20
  %arrayidx137.val268.1 = load i16, ptr %arrayidx137.1, align 2
  %64 = getelementptr i8, ptr %arrayidx78.1, i64 22
  %arrayidx137.val269.1 = load i16, ptr %64, align 2
  %arrayidx139.val270.1 = load i16, ptr %arrayidx139.1, align 2
  %65 = getelementptr i8, ptr %arrayidx83.1, i64 22
  %arrayidx139.val271.1 = load i16, ptr %65, align 2
  %conv.i339.1 = sext i16 %arrayidx137.val268.1 to i32
  %conv2.i340.1 = sext i16 %arrayidx139.val270.1 to i32
  %sub.i341.1 = sub nsw i32 %conv.i339.1, %conv2.i340.1
  %sub.i.i342.1 = tail call i32 @llvm.abs.i32(i32 %sub.i341.1, i1 true)
  %cmp.i343.1 = icmp ult i32 %sub.i.i342.1, 4
  %conv4.i344.1 = sext i16 %arrayidx137.val269.1 to i32
  %conv6.i345.1 = sext i16 %arrayidx139.val271.1 to i32
  %sub7.i346.1 = sub nsw i32 %conv4.i344.1, %conv6.i345.1
  %sub.i14.i347.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.1, i1 true)
  %cmp9.i348.1 = icmp slt i32 %sub.i14.i347.1, %mvlimit
  %or13.i349.not379.1 = and i1 %cmp.i343.1, %cmp9.i348.1
  %or141377.not.1 = and i1 %or13.i337.not378.1, %or13.i349.not379.1
  br i1 %or141377.not.1, label %if.end161.1, label %land.rhs143.1

land.rhs143.1:                                    ; preds = %if.else130.1
  %sub.i353.1 = sub nsw i32 %conv.i327.1, %conv2.i340.1
  %sub.i.i354.1 = tail call i32 @llvm.abs.i32(i32 %sub.i353.1, i1 true)
  %cmp.i355.1 = icmp ugt i32 %sub.i.i354.1, 3
  %sub7.i358.1 = sub nsw i32 %conv4.i332.1, %conv6.i345.1
  %sub.i14.i359.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.1, i1 true)
  %cmp9.i360.1 = icmp sge i32 %sub.i14.i359.1, %mvlimit
  %or13.i361.1 = or i1 %cmp.i355.1, %cmp9.i360.1
  %sub.i365.1 = sub nsw i32 %conv.i339.1, %conv2.i328.1
  %sub.i.i366.1 = tail call i32 @llvm.abs.i32(i32 %sub.i365.1, i1 true)
  %cmp.i367.1 = icmp ugt i32 %sub.i.i366.1, 3
  %sub7.i370.1 = sub nsw i32 %conv4.i344.1, %conv6.i333.1
  %sub.i14.i371.1 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.1, i1 true)
  %cmp9.i372.1 = icmp sge i32 %sub.i14.i371.1, %mvlimit
  %or13.i373.1 = or i1 %cmp.i367.1, %cmp9.i372.1
  %or154380.1 = or i1 %or13.i373.1, %or13.i361.1
  %66 = zext i1 %or154380.1 to i32
  br label %if.end161.1

if.end161.1:                                      ; preds = %if.else130.1, %land.rhs143.1, %if.then108.1, %if.else118.1, %lor.lhs.false96.1, %land.lhs.true.1, %land.lhs.true.1, %lor.lhs.false39.1, %i64_power2.exit.1
  %StrValue.1.1 = phi i32 [ 2, %lor.lhs.false39.1 ], [ 2, %i64_power2.exit.1 ], [ 0, %land.lhs.true.1 ], [ 0, %land.lhs.true.1 ], [ %or.1, %if.then108.1 ], [ %or129.1, %if.else118.1 ], [ 1, %lor.lhs.false96.1 ], [ 0, %if.else130.1 ], [ %66, %land.rhs143.1 ]
  %mul.1 = mul nuw nsw i32 %StrValue.1.1, 16843009
  %add.ptr.1 = getelementptr inbounds i8, ptr %Strength, i64 4
  store i32 %mul.1, ptr %add.ptr.1, align 4
  %67 = load i64, ptr %cbp_blk, align 8
  %cmp.i.2 = icmp ugt i32 %and, 63
  br i1 %cmp.i.2, label %i64_power2.exit.2, label %cond.false.i.2

cond.false.i.2:                                   ; preds = %if.end161.1
  %68 = or disjoint i64 %9, 2
  %arrayidx.i.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %68
  %69 = load i64, ptr %arrayidx.i.2, align 16
  br label %i64_power2.exit.2

i64_power2.exit.2:                                ; preds = %cond.false.i.2, %if.end161.1
  %cond.i.2 = phi i64 [ %69, %cond.false.i.2 ], [ 0, %if.end161.1 ]
  %and36.2 = and i64 %cond.i.2, %67
  %cmp37.not.2 = icmp eq i64 %and36.2, 0
  br i1 %cmp37.not.2, label %lor.lhs.false39.2, label %if.end161.2

lor.lhs.false39.2:                                ; preds = %i64_power2.exit.2
  %70 = or disjoint i64 %10, 2
  %71 = load i64, ptr %cbp_blk40, align 8
  %arrayidx.i287.2 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %70
  %72 = load i64, ptr %arrayidx.i287.2, align 16
  %and43.2 = and i64 %72, %71
  %cmp44.not.2 = icmp eq i64 %and43.2, 0
  br i1 %cmp44.not.2, label %if.else47.2, label %if.end161.2

if.else47.2:                                      ; preds = %lor.lhs.false39.2
  br i1 %tobool.not, label %if.else58.2, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %if.else47.2
  %73 = load i16, ptr %mb_type, align 8
  switch i16 %73, label %if.else58.2 [
    i16 1, label %if.end161.2
    i16 3, label %if.end161.2
  ]

if.else58.2:                                      ; preds = %land.lhs.true.2, %if.else47.2
  %74 = or disjoint i64 %11, 2
  %75 = load i32, ptr %pix_y, align 8
  %add68.2 = add nsw i32 %75, %and30
  %shr69.2 = ashr i32 %add68.2, 2
  %76 = load i32, ptr %pix_x, align 4
  %add71.2 = shl i32 %76, 16
  %sext.2 = add i32 %add71.2, 524288
  %shr74.2 = ashr i32 %sext.2, 18
  %77 = load ptr, ptr %mv_info, align 8
  %arrayidx76.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom75
  %78 = load ptr, ptr %arrayidx76.2, align 8
  %arrayidx78.2 = getelementptr inbounds %struct.pic_motion_params, ptr %78, i64 %74
  %idxprom80.2 = sext i32 %shr69.2 to i64
  %arrayidx81.2 = getelementptr inbounds ptr, ptr %77, i64 %idxprom80.2
  %79 = load ptr, ptr %arrayidx81.2, align 8
  %idxprom82.2 = sext i32 %shr74.2 to i64
  %arrayidx83.2 = getelementptr inbounds %struct.pic_motion_params, ptr %79, i64 %idxprom82.2
  %80 = load ptr, ptr %arrayidx78.2, align 8
  %81 = load ptr, ptr %arrayidx83.2, align 8
  %arrayidx88.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 8
  %82 = load ptr, ptr %arrayidx88.2, align 8
  %arrayidx90.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 8
  %83 = load ptr, ptr %arrayidx90.2, align 8
  %cmp91.2 = icmp eq ptr %80, %81
  %cmp94.2 = icmp eq ptr %82, %83
  %or.cond.2 = select i1 %cmp91.2, i1 %cmp94.2, i1 false
  br i1 %or.cond.2, label %if.then102.2, label %lor.lhs.false96.2

lor.lhs.false96.2:                                ; preds = %if.else58.2
  %cmp97.2 = icmp eq ptr %80, %83
  %cmp100.2 = icmp eq ptr %82, %81
  %or.cond263.2 = select i1 %cmp97.2, i1 %cmp100.2, i1 false
  br i1 %or.cond263.2, label %if.then102.2, label %if.end161.2

if.then102.2:                                     ; preds = %lor.lhs.false96.2, %if.else58.2
  %cmp103.not.2 = icmp eq ptr %80, %82
  %mv131.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 16
  %mv133.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 16
  br i1 %cmp103.not.2, label %if.else130.2, label %if.then105.2

if.then105.2:                                     ; preds = %if.then102.2
  %84 = getelementptr i8, ptr %arrayidx78.2, i64 22
  %arrayidx114.val280.2 = load i16, ptr %84, align 2
  br i1 %cmp91.2, label %if.then108.2, label %if.else118.2

if.else118.2:                                     ; preds = %if.then105.2
  %arrayidx122.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %mv119.val.2 = load i16, ptr %mv131.2, align 2
  %85 = getelementptr i8, ptr %arrayidx78.2, i64 18
  %mv119.val278.2 = load i16, ptr %85, align 2
  %arrayidx122.val.2 = load i16, ptr %arrayidx122.2, align 2
  %86 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx122.val279.2 = load i16, ptr %86, align 2
  %conv.i303.2 = sext i16 %mv119.val.2 to i32
  %conv2.i304.2 = sext i16 %arrayidx122.val.2 to i32
  %sub.i305.2 = sub nsw i32 %conv.i303.2, %conv2.i304.2
  %sub.i.i306.2 = tail call i32 @llvm.abs.i32(i32 %sub.i305.2, i1 true)
  %cmp.i307.2 = icmp ugt i32 %sub.i.i306.2, 3
  %conv4.i308.2 = sext i16 %mv119.val278.2 to i32
  %conv6.i309.2 = sext i16 %arrayidx122.val279.2 to i32
  %sub7.i310.2 = sub nsw i32 %conv4.i308.2, %conv6.i309.2
  %sub.i14.i311.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.2, i1 true)
  %cmp9.i312.2 = icmp sge i32 %sub.i14.i311.2, %mvlimit
  %or13.i313.2 = or i1 %cmp.i307.2, %cmp9.i312.2
  %arrayidx125.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20
  %arrayidx125.val.2 = load i16, ptr %arrayidx125.2, align 2
  %mv121.val.2 = load i16, ptr %mv133.2, align 2
  %87 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv121.val277.2 = load i16, ptr %87, align 2
  %conv.i315.2 = sext i16 %arrayidx125.val.2 to i32
  %conv2.i316.2 = sext i16 %mv121.val.2 to i32
  %sub.i317.2 = sub nsw i32 %conv.i315.2, %conv2.i316.2
  %sub.i.i318.2 = tail call i32 @llvm.abs.i32(i32 %sub.i317.2, i1 true)
  %cmp.i319.2 = icmp ugt i32 %sub.i.i318.2, 3
  %conv4.i320.2 = sext i16 %arrayidx114.val280.2 to i32
  %conv6.i321.2 = sext i16 %mv121.val277.2 to i32
  %sub7.i322.2 = sub nsw i32 %conv4.i320.2, %conv6.i321.2
  %sub.i14.i323.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.2, i1 true)
  %cmp9.i324.2 = icmp sge i32 %sub.i14.i323.2, %mvlimit
  %or13.i325.2 = or i1 %cmp.i319.2, %cmp9.i324.2
  %or129375.2 = or i1 %or13.i313.2, %or13.i325.2
  %or129.2 = zext i1 %or129375.2 to i32
  br label %if.end161.2

if.then108.2:                                     ; preds = %if.then105.2
  %mv.val.2 = load i16, ptr %mv131.2, align 2
  %88 = getelementptr i8, ptr %arrayidx78.2, i64 18
  %mv.val282.2 = load i16, ptr %88, align 2
  %mv110.val.2 = load i16, ptr %mv133.2, align 2
  %89 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv110.val283.2 = load i16, ptr %89, align 2
  %conv.i.2 = sext i16 %mv.val.2 to i32
  %conv2.i.2 = sext i16 %mv110.val.2 to i32
  %sub.i.2 = sub nsw i32 %conv.i.2, %conv2.i.2
  %sub.i.i.2 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 true)
  %cmp.i290.2 = icmp ugt i32 %sub.i.i.2, 3
  %conv4.i.2 = sext i16 %mv.val282.2 to i32
  %conv6.i.2 = sext i16 %mv110.val283.2 to i32
  %sub7.i.2 = sub nsw i32 %conv4.i.2, %conv6.i.2
  %sub.i14.i.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i.2, i1 true)
  %cmp9.i.2 = icmp sge i32 %sub.i14.i.2, %mvlimit
  %or13.i.2 = or i1 %cmp.i290.2, %cmp9.i.2
  %arrayidx114.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20
  %arrayidx116.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %arrayidx114.val.2 = load i16, ptr %arrayidx114.2, align 2
  %arrayidx116.val.2 = load i16, ptr %arrayidx116.2, align 2
  %90 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx116.val281.2 = load i16, ptr %90, align 2
  %conv.i291.2 = sext i16 %arrayidx114.val.2 to i32
  %conv2.i292.2 = sext i16 %arrayidx116.val.2 to i32
  %sub.i293.2 = sub nsw i32 %conv.i291.2, %conv2.i292.2
  %sub.i.i294.2 = tail call i32 @llvm.abs.i32(i32 %sub.i293.2, i1 true)
  %cmp.i295.2 = icmp ugt i32 %sub.i.i294.2, 3
  %conv4.i296.2 = sext i16 %arrayidx114.val280.2 to i32
  %conv6.i297.2 = sext i16 %arrayidx116.val281.2 to i32
  %sub7.i298.2 = sub nsw i32 %conv4.i296.2, %conv6.i297.2
  %sub.i14.i299.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.2, i1 true)
  %cmp9.i300.2 = icmp sge i32 %sub.i14.i299.2, %mvlimit
  %or13.i301.2 = or i1 %cmp.i295.2, %cmp9.i300.2
  %or376.2 = or i1 %or13.i.2, %or13.i301.2
  %or.2 = zext i1 %or376.2 to i32
  br label %if.end161.2

if.else130.2:                                     ; preds = %if.then102.2
  %mv131.val272.2 = load i16, ptr %mv131.2, align 2
  %91 = getelementptr i8, ptr %arrayidx78.2, i64 18
  %mv131.val273.2 = load i16, ptr %91, align 2
  %mv133.val274.2 = load i16, ptr %mv133.2, align 2
  %92 = getelementptr i8, ptr %arrayidx83.2, i64 18
  %mv133.val275.2 = load i16, ptr %92, align 2
  %conv.i327.2 = sext i16 %mv131.val272.2 to i32
  %conv2.i328.2 = sext i16 %mv133.val274.2 to i32
  %sub.i329.2 = sub nsw i32 %conv.i327.2, %conv2.i328.2
  %sub.i.i330.2 = tail call i32 @llvm.abs.i32(i32 %sub.i329.2, i1 true)
  %cmp.i331.2 = icmp ult i32 %sub.i.i330.2, 4
  %conv4.i332.2 = sext i16 %mv131.val273.2 to i32
  %conv6.i333.2 = sext i16 %mv133.val275.2 to i32
  %sub7.i334.2 = sub nsw i32 %conv4.i332.2, %conv6.i333.2
  %sub.i14.i335.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.2, i1 true)
  %cmp9.i336.2 = icmp slt i32 %sub.i14.i335.2, %mvlimit
  %or13.i337.not378.2 = and i1 %cmp.i331.2, %cmp9.i336.2
  %arrayidx137.2 = getelementptr inbounds i8, ptr %arrayidx78.2, i64 20
  %arrayidx139.2 = getelementptr inbounds i8, ptr %arrayidx83.2, i64 20
  %arrayidx137.val268.2 = load i16, ptr %arrayidx137.2, align 2
  %93 = getelementptr i8, ptr %arrayidx78.2, i64 22
  %arrayidx137.val269.2 = load i16, ptr %93, align 2
  %arrayidx139.val270.2 = load i16, ptr %arrayidx139.2, align 2
  %94 = getelementptr i8, ptr %arrayidx83.2, i64 22
  %arrayidx139.val271.2 = load i16, ptr %94, align 2
  %conv.i339.2 = sext i16 %arrayidx137.val268.2 to i32
  %conv2.i340.2 = sext i16 %arrayidx139.val270.2 to i32
  %sub.i341.2 = sub nsw i32 %conv.i339.2, %conv2.i340.2
  %sub.i.i342.2 = tail call i32 @llvm.abs.i32(i32 %sub.i341.2, i1 true)
  %cmp.i343.2 = icmp ult i32 %sub.i.i342.2, 4
  %conv4.i344.2 = sext i16 %arrayidx137.val269.2 to i32
  %conv6.i345.2 = sext i16 %arrayidx139.val271.2 to i32
  %sub7.i346.2 = sub nsw i32 %conv4.i344.2, %conv6.i345.2
  %sub.i14.i347.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.2, i1 true)
  %cmp9.i348.2 = icmp slt i32 %sub.i14.i347.2, %mvlimit
  %or13.i349.not379.2 = and i1 %cmp.i343.2, %cmp9.i348.2
  %or141377.not.2 = and i1 %or13.i337.not378.2, %or13.i349.not379.2
  br i1 %or141377.not.2, label %if.end161.2, label %land.rhs143.2

land.rhs143.2:                                    ; preds = %if.else130.2
  %sub.i353.2 = sub nsw i32 %conv.i327.2, %conv2.i340.2
  %sub.i.i354.2 = tail call i32 @llvm.abs.i32(i32 %sub.i353.2, i1 true)
  %cmp.i355.2 = icmp ugt i32 %sub.i.i354.2, 3
  %sub7.i358.2 = sub nsw i32 %conv4.i332.2, %conv6.i345.2
  %sub.i14.i359.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.2, i1 true)
  %cmp9.i360.2 = icmp sge i32 %sub.i14.i359.2, %mvlimit
  %or13.i361.2 = or i1 %cmp.i355.2, %cmp9.i360.2
  %sub.i365.2 = sub nsw i32 %conv.i339.2, %conv2.i328.2
  %sub.i.i366.2 = tail call i32 @llvm.abs.i32(i32 %sub.i365.2, i1 true)
  %cmp.i367.2 = icmp ugt i32 %sub.i.i366.2, 3
  %sub7.i370.2 = sub nsw i32 %conv4.i344.2, %conv6.i333.2
  %sub.i14.i371.2 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.2, i1 true)
  %cmp9.i372.2 = icmp sge i32 %sub.i14.i371.2, %mvlimit
  %or13.i373.2 = or i1 %cmp.i367.2, %cmp9.i372.2
  %or154380.2 = or i1 %or13.i373.2, %or13.i361.2
  %95 = zext i1 %or154380.2 to i32
  br label %if.end161.2

if.end161.2:                                      ; preds = %if.else130.2, %land.rhs143.2, %if.then108.2, %if.else118.2, %lor.lhs.false96.2, %land.lhs.true.2, %land.lhs.true.2, %lor.lhs.false39.2, %i64_power2.exit.2
  %StrValue.1.2 = phi i32 [ 2, %lor.lhs.false39.2 ], [ 2, %i64_power2.exit.2 ], [ 0, %land.lhs.true.2 ], [ 0, %land.lhs.true.2 ], [ %or.2, %if.then108.2 ], [ %or129.2, %if.else118.2 ], [ 1, %lor.lhs.false96.2 ], [ 0, %if.else130.2 ], [ %95, %land.rhs143.2 ]
  %mul.2 = mul nuw nsw i32 %StrValue.1.2, 16843009
  %add.ptr.2 = getelementptr inbounds i8, ptr %Strength, i64 8
  store i32 %mul.2, ptr %add.ptr.2, align 4
  %96 = load i64, ptr %cbp_blk, align 8
  %cmp.i.3 = icmp ugt i32 %and, 63
  br i1 %cmp.i.3, label %i64_power2.exit.3, label %cond.false.i.3

cond.false.i.3:                                   ; preds = %if.end161.2
  %97 = or disjoint i64 %9, 3
  %arrayidx.i.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %97
  %98 = load i64, ptr %arrayidx.i.3, align 8
  br label %i64_power2.exit.3

i64_power2.exit.3:                                ; preds = %cond.false.i.3, %if.end161.2
  %cond.i.3 = phi i64 [ %98, %cond.false.i.3 ], [ 0, %if.end161.2 ]
  %and36.3 = and i64 %cond.i.3, %96
  %cmp37.not.3 = icmp eq i64 %and36.3, 0
  br i1 %cmp37.not.3, label %lor.lhs.false39.3, label %if.end161.3

lor.lhs.false39.3:                                ; preds = %i64_power2.exit.3
  %99 = or disjoint i64 %10, 3
  %100 = load i64, ptr %cbp_blk40, align 8
  %arrayidx.i287.3 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %99
  %101 = load i64, ptr %arrayidx.i287.3, align 8
  %and43.3 = and i64 %101, %100
  %cmp44.not.3 = icmp eq i64 %and43.3, 0
  br i1 %cmp44.not.3, label %if.else47.3, label %if.end161.3

if.else47.3:                                      ; preds = %lor.lhs.false39.3
  br i1 %tobool.not, label %if.else58.3, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.else47.3
  %102 = load i16, ptr %mb_type, align 8
  switch i16 %102, label %if.else58.3 [
    i16 1, label %if.end161.3
    i16 3, label %if.end161.3
  ]

if.else58.3:                                      ; preds = %land.lhs.true.3, %if.else47.3
  %103 = or disjoint i64 %11, 3
  %104 = load i32, ptr %pix_y, align 8
  %add68.3 = add nsw i32 %104, %and30
  %shr69.3 = ashr i32 %add68.3, 2
  %105 = load i32, ptr %pix_x, align 4
  %add71.3 = shl i32 %105, 16
  %sext.3 = add i32 %add71.3, 786432
  %shr74.3 = ashr i32 %sext.3, 18
  %106 = load ptr, ptr %mv_info, align 8
  %arrayidx76.3 = getelementptr inbounds ptr, ptr %106, i64 %idxprom75
  %107 = load ptr, ptr %arrayidx76.3, align 8
  %arrayidx78.3 = getelementptr inbounds %struct.pic_motion_params, ptr %107, i64 %103
  %idxprom80.3 = sext i32 %shr69.3 to i64
  %arrayidx81.3 = getelementptr inbounds ptr, ptr %106, i64 %idxprom80.3
  %108 = load ptr, ptr %arrayidx81.3, align 8
  %idxprom82.3 = sext i32 %shr74.3 to i64
  %arrayidx83.3 = getelementptr inbounds %struct.pic_motion_params, ptr %108, i64 %idxprom82.3
  %109 = load ptr, ptr %arrayidx78.3, align 8
  %110 = load ptr, ptr %arrayidx83.3, align 8
  %arrayidx88.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 8
  %111 = load ptr, ptr %arrayidx88.3, align 8
  %arrayidx90.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 8
  %112 = load ptr, ptr %arrayidx90.3, align 8
  %cmp91.3 = icmp eq ptr %109, %110
  %cmp94.3 = icmp eq ptr %111, %112
  %or.cond.3 = select i1 %cmp91.3, i1 %cmp94.3, i1 false
  br i1 %or.cond.3, label %if.then102.3, label %lor.lhs.false96.3

lor.lhs.false96.3:                                ; preds = %if.else58.3
  %cmp97.3 = icmp eq ptr %109, %112
  %cmp100.3 = icmp eq ptr %111, %110
  %or.cond263.3 = select i1 %cmp97.3, i1 %cmp100.3, i1 false
  br i1 %or.cond263.3, label %if.then102.3, label %if.end161.3

if.then102.3:                                     ; preds = %lor.lhs.false96.3, %if.else58.3
  %cmp103.not.3 = icmp eq ptr %109, %111
  %mv131.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 16
  %mv133.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 16
  br i1 %cmp103.not.3, label %if.else130.3, label %if.then105.3

if.then105.3:                                     ; preds = %if.then102.3
  %113 = getelementptr i8, ptr %arrayidx78.3, i64 22
  %arrayidx114.val280.3 = load i16, ptr %113, align 2
  br i1 %cmp91.3, label %if.then108.3, label %if.else118.3

if.else118.3:                                     ; preds = %if.then105.3
  %arrayidx122.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %mv119.val.3 = load i16, ptr %mv131.3, align 2
  %114 = getelementptr i8, ptr %arrayidx78.3, i64 18
  %mv119.val278.3 = load i16, ptr %114, align 2
  %arrayidx122.val.3 = load i16, ptr %arrayidx122.3, align 2
  %115 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx122.val279.3 = load i16, ptr %115, align 2
  %conv.i303.3 = sext i16 %mv119.val.3 to i32
  %conv2.i304.3 = sext i16 %arrayidx122.val.3 to i32
  %sub.i305.3 = sub nsw i32 %conv.i303.3, %conv2.i304.3
  %sub.i.i306.3 = tail call i32 @llvm.abs.i32(i32 %sub.i305.3, i1 true)
  %cmp.i307.3 = icmp ugt i32 %sub.i.i306.3, 3
  %conv4.i308.3 = sext i16 %mv119.val278.3 to i32
  %conv6.i309.3 = sext i16 %arrayidx122.val279.3 to i32
  %sub7.i310.3 = sub nsw i32 %conv4.i308.3, %conv6.i309.3
  %sub.i14.i311.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i310.3, i1 true)
  %cmp9.i312.3 = icmp sge i32 %sub.i14.i311.3, %mvlimit
  %or13.i313.3 = or i1 %cmp.i307.3, %cmp9.i312.3
  %arrayidx125.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20
  %arrayidx125.val.3 = load i16, ptr %arrayidx125.3, align 2
  %mv121.val.3 = load i16, ptr %mv133.3, align 2
  %116 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv121.val277.3 = load i16, ptr %116, align 2
  %conv.i315.3 = sext i16 %arrayidx125.val.3 to i32
  %conv2.i316.3 = sext i16 %mv121.val.3 to i32
  %sub.i317.3 = sub nsw i32 %conv.i315.3, %conv2.i316.3
  %sub.i.i318.3 = tail call i32 @llvm.abs.i32(i32 %sub.i317.3, i1 true)
  %cmp.i319.3 = icmp ugt i32 %sub.i.i318.3, 3
  %conv4.i320.3 = sext i16 %arrayidx114.val280.3 to i32
  %conv6.i321.3 = sext i16 %mv121.val277.3 to i32
  %sub7.i322.3 = sub nsw i32 %conv4.i320.3, %conv6.i321.3
  %sub.i14.i323.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i322.3, i1 true)
  %cmp9.i324.3 = icmp sge i32 %sub.i14.i323.3, %mvlimit
  %or13.i325.3 = or i1 %cmp.i319.3, %cmp9.i324.3
  %or129375.3 = or i1 %or13.i313.3, %or13.i325.3
  %or129.3 = zext i1 %or129375.3 to i32
  br label %if.end161.3

if.then108.3:                                     ; preds = %if.then105.3
  %mv.val.3 = load i16, ptr %mv131.3, align 2
  %117 = getelementptr i8, ptr %arrayidx78.3, i64 18
  %mv.val282.3 = load i16, ptr %117, align 2
  %mv110.val.3 = load i16, ptr %mv133.3, align 2
  %118 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv110.val283.3 = load i16, ptr %118, align 2
  %conv.i.3 = sext i16 %mv.val.3 to i32
  %conv2.i.3 = sext i16 %mv110.val.3 to i32
  %sub.i.3 = sub nsw i32 %conv.i.3, %conv2.i.3
  %sub.i.i.3 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 true)
  %cmp.i290.3 = icmp ugt i32 %sub.i.i.3, 3
  %conv4.i.3 = sext i16 %mv.val282.3 to i32
  %conv6.i.3 = sext i16 %mv110.val283.3 to i32
  %sub7.i.3 = sub nsw i32 %conv4.i.3, %conv6.i.3
  %sub.i14.i.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i.3, i1 true)
  %cmp9.i.3 = icmp sge i32 %sub.i14.i.3, %mvlimit
  %or13.i.3 = or i1 %cmp.i290.3, %cmp9.i.3
  %arrayidx114.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20
  %arrayidx116.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %arrayidx114.val.3 = load i16, ptr %arrayidx114.3, align 2
  %arrayidx116.val.3 = load i16, ptr %arrayidx116.3, align 2
  %119 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx116.val281.3 = load i16, ptr %119, align 2
  %conv.i291.3 = sext i16 %arrayidx114.val.3 to i32
  %conv2.i292.3 = sext i16 %arrayidx116.val.3 to i32
  %sub.i293.3 = sub nsw i32 %conv.i291.3, %conv2.i292.3
  %sub.i.i294.3 = tail call i32 @llvm.abs.i32(i32 %sub.i293.3, i1 true)
  %cmp.i295.3 = icmp ugt i32 %sub.i.i294.3, 3
  %conv4.i296.3 = sext i16 %arrayidx114.val280.3 to i32
  %conv6.i297.3 = sext i16 %arrayidx116.val281.3 to i32
  %sub7.i298.3 = sub nsw i32 %conv4.i296.3, %conv6.i297.3
  %sub.i14.i299.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i298.3, i1 true)
  %cmp9.i300.3 = icmp sge i32 %sub.i14.i299.3, %mvlimit
  %or13.i301.3 = or i1 %cmp.i295.3, %cmp9.i300.3
  %or376.3 = or i1 %or13.i.3, %or13.i301.3
  %or.3 = zext i1 %or376.3 to i32
  br label %if.end161.3

if.else130.3:                                     ; preds = %if.then102.3
  %mv131.val272.3 = load i16, ptr %mv131.3, align 2
  %120 = getelementptr i8, ptr %arrayidx78.3, i64 18
  %mv131.val273.3 = load i16, ptr %120, align 2
  %mv133.val274.3 = load i16, ptr %mv133.3, align 2
  %121 = getelementptr i8, ptr %arrayidx83.3, i64 18
  %mv133.val275.3 = load i16, ptr %121, align 2
  %conv.i327.3 = sext i16 %mv131.val272.3 to i32
  %conv2.i328.3 = sext i16 %mv133.val274.3 to i32
  %sub.i329.3 = sub nsw i32 %conv.i327.3, %conv2.i328.3
  %sub.i.i330.3 = tail call i32 @llvm.abs.i32(i32 %sub.i329.3, i1 true)
  %cmp.i331.3 = icmp ult i32 %sub.i.i330.3, 4
  %conv4.i332.3 = sext i16 %mv131.val273.3 to i32
  %conv6.i333.3 = sext i16 %mv133.val275.3 to i32
  %sub7.i334.3 = sub nsw i32 %conv4.i332.3, %conv6.i333.3
  %sub.i14.i335.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i334.3, i1 true)
  %cmp9.i336.3 = icmp slt i32 %sub.i14.i335.3, %mvlimit
  %or13.i337.not378.3 = and i1 %cmp.i331.3, %cmp9.i336.3
  %arrayidx137.3 = getelementptr inbounds i8, ptr %arrayidx78.3, i64 20
  %arrayidx139.3 = getelementptr inbounds i8, ptr %arrayidx83.3, i64 20
  %arrayidx137.val268.3 = load i16, ptr %arrayidx137.3, align 2
  %122 = getelementptr i8, ptr %arrayidx78.3, i64 22
  %arrayidx137.val269.3 = load i16, ptr %122, align 2
  %arrayidx139.val270.3 = load i16, ptr %arrayidx139.3, align 2
  %123 = getelementptr i8, ptr %arrayidx83.3, i64 22
  %arrayidx139.val271.3 = load i16, ptr %123, align 2
  %conv.i339.3 = sext i16 %arrayidx137.val268.3 to i32
  %conv2.i340.3 = sext i16 %arrayidx139.val270.3 to i32
  %sub.i341.3 = sub nsw i32 %conv.i339.3, %conv2.i340.3
  %sub.i.i342.3 = tail call i32 @llvm.abs.i32(i32 %sub.i341.3, i1 true)
  %cmp.i343.3 = icmp ult i32 %sub.i.i342.3, 4
  %conv4.i344.3 = sext i16 %arrayidx137.val269.3 to i32
  %conv6.i345.3 = sext i16 %arrayidx139.val271.3 to i32
  %sub7.i346.3 = sub nsw i32 %conv4.i344.3, %conv6.i345.3
  %sub.i14.i347.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i346.3, i1 true)
  %cmp9.i348.3 = icmp slt i32 %sub.i14.i347.3, %mvlimit
  %or13.i349.not379.3 = and i1 %cmp.i343.3, %cmp9.i348.3
  %or141377.not.3 = and i1 %or13.i337.not378.3, %or13.i349.not379.3
  br i1 %or141377.not.3, label %if.end161.3, label %land.rhs143.3

land.rhs143.3:                                    ; preds = %if.else130.3
  %sub.i353.3 = sub nsw i32 %conv.i327.3, %conv2.i340.3
  %sub.i.i354.3 = tail call i32 @llvm.abs.i32(i32 %sub.i353.3, i1 true)
  %cmp.i355.3 = icmp ugt i32 %sub.i.i354.3, 3
  %sub7.i358.3 = sub nsw i32 %conv4.i332.3, %conv6.i345.3
  %sub.i14.i359.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i358.3, i1 true)
  %cmp9.i360.3 = icmp sge i32 %sub.i14.i359.3, %mvlimit
  %or13.i361.3 = or i1 %cmp.i355.3, %cmp9.i360.3
  %sub.i365.3 = sub nsw i32 %conv.i339.3, %conv2.i328.3
  %sub.i.i366.3 = tail call i32 @llvm.abs.i32(i32 %sub.i365.3, i1 true)
  %cmp.i367.3 = icmp ugt i32 %sub.i.i366.3, 3
  %sub7.i370.3 = sub nsw i32 %conv4.i344.3, %conv6.i333.3
  %sub.i14.i371.3 = tail call i32 @llvm.abs.i32(i32 %sub7.i370.3, i1 true)
  %cmp9.i372.3 = icmp sge i32 %sub.i14.i371.3, %mvlimit
  %or13.i373.3 = or i1 %cmp.i367.3, %cmp9.i372.3
  %or154380.3 = or i1 %or13.i373.3, %or13.i361.3
  %124 = zext i1 %or154380.3 to i32
  br label %if.end161.3

if.end161.3:                                      ; preds = %if.else130.3, %land.rhs143.3, %if.then108.3, %if.else118.3, %lor.lhs.false96.3, %land.lhs.true.3, %land.lhs.true.3, %lor.lhs.false39.3, %i64_power2.exit.3
  %StrValue.1.3 = phi i32 [ 2, %lor.lhs.false39.3 ], [ 2, %i64_power2.exit.3 ], [ 0, %land.lhs.true.3 ], [ 0, %land.lhs.true.3 ], [ %or.3, %if.then108.3 ], [ %or129.3, %if.else118.3 ], [ 1, %lor.lhs.false96.3 ], [ 0, %if.else130.3 ], [ %124, %land.rhs143.3 ]
  %mul.3 = mul nuw nsw i32 %StrValue.1.3, 16843009
  %add.ptr.3 = getelementptr inbounds i8, ptr %Strength, i64 12
  store i32 %mul.3, ptr %add.ptr.3, align 4
  br label %if.end189

land.end170:                                      ; preds = %lor.lhs.false17
  %125 = load i32, ptr %p, align 8
  %cmp168 = icmp eq i32 %125, 0
  %conv173 = select i1 %cmp168, i8 4, i8 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %conv173, i64 16, i1 false)
  br label %if.end189

if.else176:                                       ; preds = %if.else
  %cmp177 = icmp eq i32 %edge, 0
  br i1 %cmp177, label %land.rhs179, label %land.end183

land.rhs179:                                      ; preds = %if.else176
  %126 = load i32, ptr %p, align 8
  %cmp181 = icmp eq i32 %126, 0
  %127 = select i1 %cmp181, i8 4, i8 3
  br label %land.end183

land.end183:                                      ; preds = %land.rhs179, %if.else176
  %cond185 = phi i8 [ 3, %if.else176 ], [ %127, %land.rhs179 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %Strength, i8 %cond185, i64 16, i1 false)
  br label %if.end189

if.end189:                                        ; preds = %if.end161.3, %land.end170, %land.end183, %land.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaVer(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, ptr nocapture readnone %p) #2 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %sub = add i32 %edge, 15
  %cmp.i = icmp slt i32 %edge, 1
  br i1 %cmp.i, label %get_non_aff_neighbor_luma.exit, label %if.then

get_non_aff_neighbor_luma.exit:                   ; preds = %entry
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 144
  %1 = load ptr, ptr %mbup.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %get_non_aff_neighbor_luma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %2 = load i16, ptr %DFDisableIdc, align 8
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %if.then, label %if.end432

if.then:                                          ; preds = %entry, %lor.lhs.false, %get_non_aff_neighbor_luma.exit
  %retval.0.i637 = phi ptr [ null, %lor.lhs.false ], [ %1, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %entry ]
  %tobool3.not = icmp eq i32 %pl, 0
  %cond.in.v = select i1 %tobool3.not, i64 849044, i64 849048
  %cond.in = getelementptr inbounds i8, ptr %0, i64 %cond.in.v
  %cond = load i32, ptr %cond.in, align 4
  %qp = getelementptr inbounds i8, ptr %retval.0.i637, i64 68
  %qp17 = getelementptr inbounds i8, ptr %MbQ, i64 68
  %qpc = getelementptr inbounds i8, ptr %retval.0.i637, i64 72
  %sub9 = add i32 %pl, -1
  %idxprom = zext i32 %sub9 to i64
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom
  %qpc11 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %qpc11, i64 0, i64 %idxprom
  %qp17.sink = select i1 %tobool3.not, ptr %qp17, ptr %arrayidx14
  %.sink656.in = select i1 %tobool3.not, ptr %qp, ptr %arrayidx10
  %.sink656 = load i32, ptr %.sink656.in, align 4
  %3 = load i32, ptr %qp17.sink, align 4
  %add18 = add nsw i32 %3, %.sink656
  %cond22.in = add nsw i32 %add18, 1
  %cond22 = ashr i32 %cond22.in, 1
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %4 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv23 = sext i16 %4 to i32
  %add24 = add nsw i32 %cond22, %conv23
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add24, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %6 = load i16, ptr %DFBetaOffset, align 4
  %conv26 = sext i16 %6 to i32
  %add27 = add nsw i32 %cond22, %conv26
  %cond.i.i602 = tail call noundef i32 @llvm.smax.i32(i32 %add27, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %cond.i.i602, i32 51)
  %idxprom29 = zext nneg i32 %5 to i64
  %arrayidx30 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom29
  %8 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %8 to i32
  %mul = mul nsw i32 %cond, %conv31
  %idxprom32 = zext nneg i32 %7 to i64
  %arrayidx33 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom32
  %9 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %9 to i32
  %mul35 = mul nsw i32 %cond, %conv34
  %or = or i32 %mul35, %mul
  %cmp36.not = icmp eq i32 %or, 0
  br i1 %cmp36.not, label %if.end432, label %if.then38

if.then38:                                        ; preds = %if.then
  %arrayidx40 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom29
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %idxprom41 = zext i32 %pl to i64
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom41
  %10 = load i32, ptr %arrayidx42, align 4
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i637, i64 44
  %11 = load i32, ptr %pix_x, align 4
  %and = and i32 %sub, 15
  %add44 = add nsw i32 %11, %and
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i637, i64 48
  %12 = load i32, ptr %pix_y, align 8
  %idxprom46 = sext i32 %12 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom46
  %idx.ext = sext i32 %add44 to i64
  %shr85 = lshr i32 %mul, 2
  %add86 = add nuw nsw i32 %shr85, 2
  br label %for.body

for.body:                                         ; preds = %if.then38, %if.end426
  %Strength.addr.0648 = phi ptr [ %Strength, %if.then38 ], [ %add.ptr427, %if.end426 ]
  %cur_img.0647 = phi ptr [ %arrayidx47, %if.then38 ], [ %cur_img.5, %if.end426 ]
  %pel.0646 = phi i32 [ 0, %if.then38 ], [ %add429, %if.end426 ]
  %13 = load i8, ptr %Strength.addr.0648, align 1
  switch i8 %13, label %if.then221 [
    i8 4, label %for.body57
    i8 0, label %if.else423
  ]

for.body57:                                       ; preds = %for.body, %if.end216
  %cur_img.1641 = phi ptr [ %incdec.ptr, %if.end216 ], [ %cur_img.0647, %for.body ]
  %i.0640 = phi i32 [ %inc, %if.end216 ], [ 0, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %cur_img.1641, i64 8
  %14 = load ptr, ptr %cur_img.1641, align 8
  %add.ptr = getelementptr inbounds i16, ptr %14, i64 %idx.ext
  %add.ptr58 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  %15 = load i16, ptr %add.ptr, align 2
  %16 = load i16, ptr %add.ptr58, align 2
  %conv59 = zext i16 %16 to i32
  %conv60 = zext i16 %15 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub61, i1 true)
  %cmp63 = icmp slt i32 %sub.i, %mul
  br i1 %cmp63, label %if.then65, label %if.end216

if.then65:                                        ; preds = %for.body57
  %add.ptr66 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %17 = load i16, ptr %add.ptr66, align 2
  %add.ptr67 = getelementptr inbounds i8, ptr %add.ptr, i64 -2
  %conv69 = zext i16 %17 to i32
  %sub70 = sub nsw i32 %conv59, %conv69
  %sub.i604 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true)
  %cmp72 = icmp slt i32 %sub.i604, %mul35
  br i1 %cmp72, label %land.lhs.true, label %if.end216

land.lhs.true:                                    ; preds = %if.then65
  %18 = load i16, ptr %add.ptr67, align 2
  %conv75 = zext i16 %18 to i32
  %sub76 = sub nsw i32 %conv60, %conv75
  %sub.i605 = tail call i32 @llvm.abs.i32(i32 %sub76, i1 true)
  %cmp78 = icmp ult i32 %sub.i605, %mul35
  br i1 %cmp78, label %if.then80, label %if.end216

if.then80:                                        ; preds = %land.lhs.true
  %cmp87 = icmp ult i32 %sub.i, %add86
  br i1 %cmp87, label %if.then89, label %if.else195

if.then89:                                        ; preds = %if.then80
  %add.ptr90 = getelementptr inbounds i8, ptr %add.ptr, i64 6
  %19 = load i16, ptr %add.ptr90, align 2
  %add.ptr91 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  %20 = load i16, ptr %add.ptr91, align 2
  %add94 = add nuw nsw i32 %conv59, %conv60
  %conv96 = zext i16 %20 to i32
  %sub97 = sub nsw i32 %conv60, %conv96
  %sub.i607 = tail call i32 @llvm.abs.i32(i32 %sub97, i1 true)
  %cmp99 = icmp ult i32 %sub.i607, %mul35
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.then89
  %add.ptr102 = getelementptr inbounds i8, ptr %add.ptr, i64 -6
  %21 = load i16, ptr %add.ptr102, align 2
  %add105 = add nuw nsw i32 %add94, %conv75
  %shl = shl nuw nsw i32 %add105, 1
  %add106 = add nuw nsw i32 %conv69, 4
  %add108 = add nuw nsw i32 %add106, %shl
  %add109 = add nuw nsw i32 %add108, %conv96
  %shr110 = lshr i32 %add109, 3
  %add115 = add nuw nsw i32 %add94, 2
  %add116 = add nuw nsw i32 %add115, %conv75
  %add117 = add nuw nsw i32 %add116, %conv96
  %shr118 = lshr i32 %add117, 2
  %conv119 = trunc nuw i32 %shr118 to i16
  store i16 %conv119, ptr %add.ptr67, align 2
  %conv121 = zext i16 %21 to i32
  %add123 = add nuw nsw i32 %conv121, %conv96
  %shl124 = shl nuw nsw i32 %add123, 1
  %add126 = add nuw nsw i32 %add94, 4
  %add128 = add nuw nsw i32 %add126, %conv75
  %add129 = add nuw nsw i32 %add128, %conv96
  %add130 = add nuw nsw i32 %add129, %shl124
  %shr131 = lshr i32 %add130, 3
  %conv132 = trunc nuw i32 %shr131 to i16
  store i16 %conv132, ptr %add.ptr91, align 2
  br label %if.end

if.else:                                          ; preds = %if.then89
  %shl134 = shl nuw nsw i32 %conv75, 1
  %add136 = add nuw nsw i32 %conv60, 2
  %add138 = add nuw nsw i32 %add136, %conv69
  %add139 = add nuw nsw i32 %add138, %shl134
  %shr140 = lshr i32 %add139, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then101
  %conv141.sink.in = phi i32 [ %shr110, %if.then101 ], [ %shr140, %if.else ]
  %conv141.sink = trunc i32 %conv141.sink.in to i16
  store i16 %conv141.sink, ptr %add.ptr, align 2
  %conv143 = zext i16 %19 to i32
  %sub144 = sub nsw i32 %conv59, %conv143
  %sub.i608 = tail call i32 @llvm.abs.i32(i32 %sub144, i1 true)
  %cmp146 = icmp ult i32 %sub.i608, %mul35
  br i1 %cmp146, label %if.then148, label %if.else184

if.then148:                                       ; preds = %if.end
  %add.ptr149 = getelementptr inbounds i8, ptr %add.ptr, i64 8
  %22 = load i16, ptr %add.ptr149, align 2
  %add152 = add nuw nsw i32 %add94, %conv69
  %shl153 = shl nuw nsw i32 %add152, 1
  %add154 = add nuw nsw i32 %shl153, 4
  %add156 = add nuw nsw i32 %add154, %conv75
  %add157 = add nuw nsw i32 %add156, %conv143
  %shr158 = lshr i32 %add157, 3
  %conv159 = trunc nuw i32 %shr158 to i16
  store i16 %conv159, ptr %add.ptr58, align 2
  %add163 = add nuw nsw i32 %conv60, 2
  %add165 = add nuw nsw i32 %add163, %conv59
  %add167 = add nuw nsw i32 %add165, %conv69
  %add168 = add nuw nsw i32 %add167, %conv143
  %shr169 = lshr i32 %add168, 2
  %conv170 = trunc nuw i32 %shr169 to i16
  store i16 %conv170, ptr %add.ptr66, align 2
  %conv172 = zext i16 %22 to i32
  %add174 = add nuw nsw i32 %conv172, %conv143
  %shl175 = shl nuw nsw i32 %add174, 1
  %add177 = add nuw nsw i32 %add94, 4
  %add179 = add nuw nsw i32 %add177, %conv69
  %add180 = add nuw nsw i32 %add179, %conv143
  %add181 = add nuw nsw i32 %add180, %shl175
  %shr182 = lshr i32 %add181, 3
  br label %if.end216.sink.split

if.else184:                                       ; preds = %if.end
  %shl186 = shl nuw nsw i32 %conv69, 1
  %add188 = add nuw nsw i32 %conv59, 2
  %add190 = add nuw nsw i32 %add188, %shl186
  %add191 = add nuw nsw i32 %add190, %conv75
  %shr192 = lshr i32 %add191, 2
  br label %if.end216.sink.split

if.else195:                                       ; preds = %if.then80
  %shl197 = shl nuw nsw i32 %conv75, 1
  %add199 = add nuw nsw i32 %conv60, 2
  %add201 = add nuw nsw i32 %add199, %conv69
  %add202 = add nuw nsw i32 %add201, %shl197
  %shr203 = lshr i32 %add202, 2
  %conv204 = trunc nuw i32 %shr203 to i16
  store i16 %conv204, ptr %add.ptr, align 2
  %shl206 = shl nuw nsw i32 %conv69, 1
  %add208 = add nuw nsw i32 %conv59, 2
  %add210 = add nuw nsw i32 %add208, %shl206
  %add211 = add nuw nsw i32 %add210, %conv75
  %shr212 = lshr i32 %add211, 2
  br label %if.end216.sink.split

if.end216.sink.split:                             ; preds = %if.then148, %if.else184, %if.else195
  %shr212.sink = phi i32 [ %shr212, %if.else195 ], [ %shr192, %if.else184 ], [ %shr182, %if.then148 ]
  %add.ptr58.sink = phi ptr [ %add.ptr58, %if.else195 ], [ %add.ptr58, %if.else184 ], [ %add.ptr90, %if.then148 ]
  %conv213 = trunc nuw i32 %shr212.sink to i16
  store i16 %conv213, ptr %add.ptr58.sink, align 2
  br label %if.end216

if.end216:                                        ; preds = %if.end216.sink.split, %if.then65, %land.lhs.true, %for.body57
  %inc = add nuw nsw i32 %i.0640, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end426, label %for.body57

if.then221:                                       ; preds = %for.body
  %idxprom222 = zext i8 %13 to i64
  %arrayidx223 = getelementptr inbounds i8, ptr %arrayidx40, i64 %idxprom222
  %23 = load i8, ptr %arrayidx223, align 1
  %conv224 = zext i8 %23 to i32
  %mul225 = mul nsw i32 %cond, %conv224
  %cmp229 = icmp eq i32 %mul225, 0
  br i1 %cmp229, label %for.body235.preheader, label %for.cond307.preheader

for.body235.preheader:                            ; preds = %if.then221
  %incdec.ptr236 = getelementptr inbounds i8, ptr %cur_img.0647, i64 8
  %24 = load ptr, ptr %cur_img.0647, align 8
  %add.ptr238 = getelementptr inbounds i16, ptr %24, i64 %idx.ext
  %add.ptr239 = getelementptr inbounds i8, ptr %add.ptr238, i64 2
  %25 = load i16, ptr %add.ptr239, align 2
  %conv240 = zext i16 %25 to i32
  %26 = load i16, ptr %add.ptr238, align 2
  %conv241 = zext i16 %26 to i32
  %sub242 = sub nsw i32 %conv240, %conv241
  %sub.i609 = tail call i32 @llvm.abs.i32(i32 %sub242, i1 true)
  %cmp244 = icmp slt i32 %sub.i609, %mul
  br i1 %cmp244, label %if.then246, label %for.inc303

for.cond307.preheader:                            ; preds = %if.then221
  %sub379 = sub nsw i32 0, %mul225
  br label %for.body310

if.then246:                                       ; preds = %for.body235.preheader
  %add.ptr247 = getelementptr inbounds i8, ptr %add.ptr238, i64 4
  %27 = load i16, ptr %add.ptr247, align 2
  %conv250 = zext i16 %27 to i32
  %sub251 = sub nsw i32 %conv240, %conv250
  %sub.i610 = tail call i32 @llvm.abs.i32(i32 %sub251, i1 true)
  %cmp253 = icmp slt i32 %sub.i610, %mul35
  br i1 %cmp253, label %land.lhs.true255, label %for.inc303

land.lhs.true255:                                 ; preds = %if.then246
  %add.ptr248 = getelementptr inbounds i8, ptr %add.ptr238, i64 -2
  %28 = load i16, ptr %add.ptr248, align 2
  %conv257 = zext i16 %28 to i32
  %sub258 = sub nsw i32 %conv241, %conv257
  %sub.i611 = tail call i32 @llvm.abs.i32(i32 %sub258, i1 true)
  %cmp260 = icmp ult i32 %sub.i611, %mul35
  br i1 %cmp260, label %if.then262, label %for.inc303

if.then262:                                       ; preds = %land.lhs.true255
  %add.ptr264 = getelementptr inbounds i8, ptr %add.ptr238, i64 6
  %29 = load i16, ptr %add.ptr264, align 2
  %add.ptr266 = getelementptr inbounds i8, ptr %add.ptr238, i64 -4
  %30 = load i16, ptr %add.ptr266, align 2
  %conv268 = zext i16 %29 to i32
  %sub269 = sub nsw i32 %conv240, %conv268
  %sub.i612 = tail call i32 @llvm.abs.i32(i32 %sub269, i1 true)
  %cmp271 = icmp ult i32 %sub.i612, %mul35
  %conv272 = zext i1 %cmp271 to i32
  %conv274 = zext i16 %30 to i32
  %sub275 = sub nsw i32 %conv241, %conv274
  %sub.i613 = tail call i32 @llvm.abs.i32(i32 %sub275, i1 true)
  %cmp277 = icmp ult i32 %sub.i613, %mul35
  %conv278 = zext i1 %cmp277 to i32
  %add279 = add nuw nsw i32 %conv278, %conv272
  %sub280 = sub nsw i32 0, %add279
  %shl281 = shl nsw i32 %sub242, 2
  %sub284 = add nsw i32 %shl281, 4
  %add285 = sub nsw i32 %sub284, %conv250
  %add286 = add nsw i32 %add285, %conv257
  %shr287 = ashr i32 %add286, 3
  %cond.i.i614 = tail call noundef i32 @llvm.smax.i32(i32 %shr287, i32 %sub280)
  %cond.i4.i615 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614, i32 %add279)
  %cmp289.not = icmp eq i32 %cond.i4.i615, 0
  br i1 %cmp289.not, label %for.inc303, label %if.then291

if.then291:                                       ; preds = %if.then262
  %add293 = add nsw i32 %cond.i4.i615, %conv241
  %cond.i.i616 = tail call noundef i32 @llvm.smax.i32(i32 %add293, i32 0)
  %cond.i4.i617 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616, i32 %10)
  %conv295 = trunc i32 %cond.i4.i617 to i16
  store i16 %conv295, ptr %add.ptr238, align 2
  %sub297 = sub nsw i32 %conv240, %cond.i4.i615
  %cond.i.i618 = tail call noundef i32 @llvm.smax.i32(i32 %sub297, i32 0)
  %cond.i4.i619 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618, i32 %10)
  %conv299 = trunc i32 %cond.i4.i619 to i16
  store i16 %conv299, ptr %add.ptr239, align 2
  br label %for.inc303

for.inc303:                                       ; preds = %if.then246, %land.lhs.true255, %if.then291, %if.then262, %for.body235.preheader
  %incdec.ptr236.1 = getelementptr inbounds i8, ptr %cur_img.0647, i64 16
  %31 = load ptr, ptr %incdec.ptr236, align 8
  %add.ptr238.1 = getelementptr inbounds i16, ptr %31, i64 %idx.ext
  %add.ptr239.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 2
  %32 = load i16, ptr %add.ptr239.1, align 2
  %conv240.1 = zext i16 %32 to i32
  %33 = load i16, ptr %add.ptr238.1, align 2
  %conv241.1 = zext i16 %33 to i32
  %sub242.1 = sub nsw i32 %conv240.1, %conv241.1
  %sub.i609.1 = tail call i32 @llvm.abs.i32(i32 %sub242.1, i1 true)
  %cmp244.1 = icmp slt i32 %sub.i609.1, %mul
  br i1 %cmp244.1, label %if.then246.1, label %for.inc303.1

if.then246.1:                                     ; preds = %for.inc303
  %add.ptr247.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 4
  %34 = load i16, ptr %add.ptr247.1, align 2
  %conv250.1 = zext i16 %34 to i32
  %sub251.1 = sub nsw i32 %conv240.1, %conv250.1
  %sub.i610.1 = tail call i32 @llvm.abs.i32(i32 %sub251.1, i1 true)
  %cmp253.1 = icmp slt i32 %sub.i610.1, %mul35
  br i1 %cmp253.1, label %land.lhs.true255.1, label %for.inc303.1

land.lhs.true255.1:                               ; preds = %if.then246.1
  %add.ptr248.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 -2
  %35 = load i16, ptr %add.ptr248.1, align 2
  %conv257.1 = zext i16 %35 to i32
  %sub258.1 = sub nsw i32 %conv241.1, %conv257.1
  %sub.i611.1 = tail call i32 @llvm.abs.i32(i32 %sub258.1, i1 true)
  %cmp260.1 = icmp ult i32 %sub.i611.1, %mul35
  br i1 %cmp260.1, label %if.then262.1, label %for.inc303.1

if.then262.1:                                     ; preds = %land.lhs.true255.1
  %add.ptr264.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 6
  %36 = load i16, ptr %add.ptr264.1, align 2
  %add.ptr266.1 = getelementptr inbounds i8, ptr %add.ptr238.1, i64 -4
  %37 = load i16, ptr %add.ptr266.1, align 2
  %conv268.1 = zext i16 %36 to i32
  %sub269.1 = sub nsw i32 %conv240.1, %conv268.1
  %sub.i612.1 = tail call i32 @llvm.abs.i32(i32 %sub269.1, i1 true)
  %cmp271.1 = icmp ult i32 %sub.i612.1, %mul35
  %conv272.1 = zext i1 %cmp271.1 to i32
  %conv274.1 = zext i16 %37 to i32
  %sub275.1 = sub nsw i32 %conv241.1, %conv274.1
  %sub.i613.1 = tail call i32 @llvm.abs.i32(i32 %sub275.1, i1 true)
  %cmp277.1 = icmp ult i32 %sub.i613.1, %mul35
  %conv278.1 = zext i1 %cmp277.1 to i32
  %add279.1 = add nuw nsw i32 %conv278.1, %conv272.1
  %sub280.1 = sub nsw i32 0, %add279.1
  %shl281.1 = shl nsw i32 %sub242.1, 2
  %sub284.1 = add nsw i32 %shl281.1, 4
  %add285.1 = sub nsw i32 %sub284.1, %conv250.1
  %add286.1 = add nsw i32 %add285.1, %conv257.1
  %shr287.1 = ashr i32 %add286.1, 3
  %cond.i.i614.1 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.1, i32 %sub280.1)
  %cond.i4.i615.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.1, i32 %add279.1)
  %cmp289.not.1 = icmp eq i32 %cond.i4.i615.1, 0
  br i1 %cmp289.not.1, label %for.inc303.1, label %if.then291.1

if.then291.1:                                     ; preds = %if.then262.1
  %add293.1 = add nsw i32 %cond.i4.i615.1, %conv241.1
  %cond.i.i616.1 = tail call noundef i32 @llvm.smax.i32(i32 %add293.1, i32 0)
  %cond.i4.i617.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.1, i32 %10)
  %conv295.1 = trunc i32 %cond.i4.i617.1 to i16
  store i16 %conv295.1, ptr %add.ptr238.1, align 2
  %sub297.1 = sub nsw i32 %conv240.1, %cond.i4.i615.1
  %cond.i.i618.1 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.1, i32 0)
  %cond.i4.i619.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.1, i32 %10)
  %conv299.1 = trunc i32 %cond.i4.i619.1 to i16
  store i16 %conv299.1, ptr %add.ptr239.1, align 2
  br label %for.inc303.1

for.inc303.1:                                     ; preds = %if.then291.1, %if.then262.1, %land.lhs.true255.1, %if.then246.1, %for.inc303
  %incdec.ptr236.2 = getelementptr inbounds i8, ptr %cur_img.0647, i64 24
  %38 = load ptr, ptr %incdec.ptr236.1, align 8
  %add.ptr238.2 = getelementptr inbounds i16, ptr %38, i64 %idx.ext
  %add.ptr239.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 2
  %39 = load i16, ptr %add.ptr239.2, align 2
  %conv240.2 = zext i16 %39 to i32
  %40 = load i16, ptr %add.ptr238.2, align 2
  %conv241.2 = zext i16 %40 to i32
  %sub242.2 = sub nsw i32 %conv240.2, %conv241.2
  %sub.i609.2 = tail call i32 @llvm.abs.i32(i32 %sub242.2, i1 true)
  %cmp244.2 = icmp slt i32 %sub.i609.2, %mul
  br i1 %cmp244.2, label %if.then246.2, label %for.inc303.2

if.then246.2:                                     ; preds = %for.inc303.1
  %add.ptr247.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 4
  %41 = load i16, ptr %add.ptr247.2, align 2
  %conv250.2 = zext i16 %41 to i32
  %sub251.2 = sub nsw i32 %conv240.2, %conv250.2
  %sub.i610.2 = tail call i32 @llvm.abs.i32(i32 %sub251.2, i1 true)
  %cmp253.2 = icmp slt i32 %sub.i610.2, %mul35
  br i1 %cmp253.2, label %land.lhs.true255.2, label %for.inc303.2

land.lhs.true255.2:                               ; preds = %if.then246.2
  %add.ptr248.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 -2
  %42 = load i16, ptr %add.ptr248.2, align 2
  %conv257.2 = zext i16 %42 to i32
  %sub258.2 = sub nsw i32 %conv241.2, %conv257.2
  %sub.i611.2 = tail call i32 @llvm.abs.i32(i32 %sub258.2, i1 true)
  %cmp260.2 = icmp ult i32 %sub.i611.2, %mul35
  br i1 %cmp260.2, label %if.then262.2, label %for.inc303.2

if.then262.2:                                     ; preds = %land.lhs.true255.2
  %add.ptr264.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 6
  %43 = load i16, ptr %add.ptr264.2, align 2
  %add.ptr266.2 = getelementptr inbounds i8, ptr %add.ptr238.2, i64 -4
  %44 = load i16, ptr %add.ptr266.2, align 2
  %conv268.2 = zext i16 %43 to i32
  %sub269.2 = sub nsw i32 %conv240.2, %conv268.2
  %sub.i612.2 = tail call i32 @llvm.abs.i32(i32 %sub269.2, i1 true)
  %cmp271.2 = icmp ult i32 %sub.i612.2, %mul35
  %conv272.2 = zext i1 %cmp271.2 to i32
  %conv274.2 = zext i16 %44 to i32
  %sub275.2 = sub nsw i32 %conv241.2, %conv274.2
  %sub.i613.2 = tail call i32 @llvm.abs.i32(i32 %sub275.2, i1 true)
  %cmp277.2 = icmp ult i32 %sub.i613.2, %mul35
  %conv278.2 = zext i1 %cmp277.2 to i32
  %add279.2 = add nuw nsw i32 %conv278.2, %conv272.2
  %sub280.2 = sub nsw i32 0, %add279.2
  %shl281.2 = shl nsw i32 %sub242.2, 2
  %sub284.2 = add nsw i32 %shl281.2, 4
  %add285.2 = sub nsw i32 %sub284.2, %conv250.2
  %add286.2 = add nsw i32 %add285.2, %conv257.2
  %shr287.2 = ashr i32 %add286.2, 3
  %cond.i.i614.2 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.2, i32 %sub280.2)
  %cond.i4.i615.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.2, i32 %add279.2)
  %cmp289.not.2 = icmp eq i32 %cond.i4.i615.2, 0
  br i1 %cmp289.not.2, label %for.inc303.2, label %if.then291.2

if.then291.2:                                     ; preds = %if.then262.2
  %add293.2 = add nsw i32 %cond.i4.i615.2, %conv241.2
  %cond.i.i616.2 = tail call noundef i32 @llvm.smax.i32(i32 %add293.2, i32 0)
  %cond.i4.i617.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.2, i32 %10)
  %conv295.2 = trunc i32 %cond.i4.i617.2 to i16
  store i16 %conv295.2, ptr %add.ptr238.2, align 2
  %sub297.2 = sub nsw i32 %conv240.2, %cond.i4.i615.2
  %cond.i.i618.2 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.2, i32 0)
  %cond.i4.i619.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.2, i32 %10)
  %conv299.2 = trunc i32 %cond.i4.i619.2 to i16
  store i16 %conv299.2, ptr %add.ptr239.2, align 2
  br label %for.inc303.2

for.inc303.2:                                     ; preds = %if.then291.2, %if.then262.2, %land.lhs.true255.2, %if.then246.2, %for.inc303.1
  %incdec.ptr236.3 = getelementptr inbounds i8, ptr %cur_img.0647, i64 32
  %45 = load ptr, ptr %incdec.ptr236.2, align 8
  %add.ptr238.3 = getelementptr inbounds i16, ptr %45, i64 %idx.ext
  %add.ptr239.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 2
  %46 = load i16, ptr %add.ptr239.3, align 2
  %conv240.3 = zext i16 %46 to i32
  %47 = load i16, ptr %add.ptr238.3, align 2
  %conv241.3 = zext i16 %47 to i32
  %sub242.3 = sub nsw i32 %conv240.3, %conv241.3
  %sub.i609.3 = tail call i32 @llvm.abs.i32(i32 %sub242.3, i1 true)
  %cmp244.3 = icmp slt i32 %sub.i609.3, %mul
  br i1 %cmp244.3, label %if.then246.3, label %if.end426

if.then246.3:                                     ; preds = %for.inc303.2
  %add.ptr247.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 4
  %48 = load i16, ptr %add.ptr247.3, align 2
  %conv250.3 = zext i16 %48 to i32
  %sub251.3 = sub nsw i32 %conv240.3, %conv250.3
  %sub.i610.3 = tail call i32 @llvm.abs.i32(i32 %sub251.3, i1 true)
  %cmp253.3 = icmp slt i32 %sub.i610.3, %mul35
  br i1 %cmp253.3, label %land.lhs.true255.3, label %if.end426

land.lhs.true255.3:                               ; preds = %if.then246.3
  %add.ptr248.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 -2
  %49 = load i16, ptr %add.ptr248.3, align 2
  %conv257.3 = zext i16 %49 to i32
  %sub258.3 = sub nsw i32 %conv241.3, %conv257.3
  %sub.i611.3 = tail call i32 @llvm.abs.i32(i32 %sub258.3, i1 true)
  %cmp260.3 = icmp ult i32 %sub.i611.3, %mul35
  br i1 %cmp260.3, label %if.then262.3, label %if.end426

if.then262.3:                                     ; preds = %land.lhs.true255.3
  %add.ptr264.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 6
  %50 = load i16, ptr %add.ptr264.3, align 2
  %add.ptr266.3 = getelementptr inbounds i8, ptr %add.ptr238.3, i64 -4
  %51 = load i16, ptr %add.ptr266.3, align 2
  %conv268.3 = zext i16 %50 to i32
  %sub269.3 = sub nsw i32 %conv240.3, %conv268.3
  %sub.i612.3 = tail call i32 @llvm.abs.i32(i32 %sub269.3, i1 true)
  %cmp271.3 = icmp ult i32 %sub.i612.3, %mul35
  %conv272.3 = zext i1 %cmp271.3 to i32
  %conv274.3 = zext i16 %51 to i32
  %sub275.3 = sub nsw i32 %conv241.3, %conv274.3
  %sub.i613.3 = tail call i32 @llvm.abs.i32(i32 %sub275.3, i1 true)
  %cmp277.3 = icmp ult i32 %sub.i613.3, %mul35
  %conv278.3 = zext i1 %cmp277.3 to i32
  %add279.3 = add nuw nsw i32 %conv278.3, %conv272.3
  %sub280.3 = sub nsw i32 0, %add279.3
  %shl281.3 = shl nsw i32 %sub242.3, 2
  %sub284.3 = add nsw i32 %shl281.3, 4
  %add285.3 = sub nsw i32 %sub284.3, %conv250.3
  %add286.3 = add nsw i32 %add285.3, %conv257.3
  %shr287.3 = ashr i32 %add286.3, 3
  %cond.i.i614.3 = tail call noundef i32 @llvm.smax.i32(i32 %shr287.3, i32 %sub280.3)
  %cond.i4.i615.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i614.3, i32 %add279.3)
  %cmp289.not.3 = icmp eq i32 %cond.i4.i615.3, 0
  br i1 %cmp289.not.3, label %if.end426, label %if.then291.3

if.then291.3:                                     ; preds = %if.then262.3
  %add293.3 = add nsw i32 %cond.i4.i615.3, %conv241.3
  %cond.i.i616.3 = tail call noundef i32 @llvm.smax.i32(i32 %add293.3, i32 0)
  %cond.i4.i617.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i616.3, i32 %10)
  %conv295.3 = trunc i32 %cond.i4.i617.3 to i16
  store i16 %conv295.3, ptr %add.ptr238.3, align 2
  %sub297.3 = sub nsw i32 %conv240.3, %cond.i4.i615.3
  %cond.i.i618.3 = tail call noundef i32 @llvm.smax.i32(i32 %sub297.3, i32 0)
  %cond.i4.i619.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i618.3, i32 %10)
  %conv299.3 = trunc i32 %cond.i4.i619.3 to i16
  store i16 %conv299.3, ptr %add.ptr239.3, align 2
  br label %if.end426

for.body310:                                      ; preds = %for.cond307.preheader, %for.inc419
  %cur_img.3643 = phi ptr [ %cur_img.0647, %for.cond307.preheader ], [ %incdec.ptr311, %for.inc419 ]
  %i226.1642 = phi i32 [ 0, %for.cond307.preheader ], [ %inc420, %for.inc419 ]
  %incdec.ptr311 = getelementptr inbounds i8, ptr %cur_img.3643, i64 8
  %52 = load ptr, ptr %cur_img.3643, align 8
  %add.ptr313 = getelementptr inbounds i16, ptr %52, i64 %idx.ext
  %add.ptr314 = getelementptr inbounds i8, ptr %add.ptr313, i64 2
  %53 = load i16, ptr %add.ptr314, align 2
  %conv315 = zext i16 %53 to i32
  %54 = load i16, ptr %add.ptr313, align 2
  %conv316 = zext i16 %54 to i32
  %sub317 = sub nsw i32 %conv315, %conv316
  %sub.i620 = tail call i32 @llvm.abs.i32(i32 %sub317, i1 true)
  %cmp319 = icmp slt i32 %sub.i620, %mul
  br i1 %cmp319, label %if.then321, label %for.inc419

if.then321:                                       ; preds = %for.body310
  %add.ptr323 = getelementptr inbounds i8, ptr %add.ptr313, i64 4
  %add.ptr325 = getelementptr inbounds i8, ptr %add.ptr313, i64 -2
  %55 = load i16, ptr %add.ptr323, align 2
  %conv327 = zext i16 %55 to i32
  %sub328 = sub nsw i32 %conv315, %conv327
  %sub.i621 = tail call i32 @llvm.abs.i32(i32 %sub328, i1 true)
  %cmp330 = icmp slt i32 %sub.i621, %mul35
  br i1 %cmp330, label %land.lhs.true332, label %for.inc419

land.lhs.true332:                                 ; preds = %if.then321
  %56 = load i16, ptr %add.ptr325, align 2
  %conv334 = zext i16 %56 to i32
  %sub335 = sub nsw i32 %conv316, %conv334
  %sub.i622 = tail call i32 @llvm.abs.i32(i32 %sub335, i1 true)
  %cmp337 = icmp ult i32 %sub.i622, %mul35
  br i1 %cmp337, label %if.then339, label %for.inc419

if.then339:                                       ; preds = %land.lhs.true332
  %add343 = add nuw nsw i32 %conv315, 1
  %add344 = add nuw nsw i32 %add343, %conv316
  %shr345 = lshr i32 %add344, 1
  %add.ptr347 = getelementptr inbounds i8, ptr %add.ptr313, i64 6
  %57 = load i16, ptr %add.ptr347, align 2
  %add.ptr349 = getelementptr inbounds i8, ptr %add.ptr313, i64 -4
  %58 = load i16, ptr %add.ptr349, align 2
  %conv352 = zext i16 %57 to i32
  %sub353 = sub nsw i32 %conv315, %conv352
  %sub.i623 = tail call i32 @llvm.abs.i32(i32 %sub353, i1 true)
  %cmp355 = icmp ult i32 %sub.i623, %mul35
  %conv356 = zext i1 %cmp355 to i32
  %conv359 = zext i16 %58 to i32
  %sub360 = sub nsw i32 %conv316, %conv359
  %sub.i624 = tail call i32 @llvm.abs.i32(i32 %sub360, i1 true)
  %cmp362 = icmp ult i32 %sub.i624, %mul35
  %conv363 = zext i1 %cmp362 to i32
  %add365 = add i32 %mul225, %conv356
  %add366 = add i32 %add365, %conv363
  %sub368 = sub nsw i32 0, %add366
  %shl369 = shl nsw i32 %sub317, 2
  %sub372 = add nsw i32 %shl369, 4
  %add373 = sub nsw i32 %sub372, %conv327
  %add374 = add nsw i32 %add373, %conv334
  %shr375 = ashr i32 %add374, 3
  %cond.i.i625 = tail call noundef i32 @llvm.smax.i32(i32 %shr375, i32 %sub368)
  %cond.i4.i626 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i625, i32 %add366)
  br i1 %cmp362, label %if.then378, label %if.end390

if.then378:                                       ; preds = %if.then339
  %59 = shl nuw nsw i32 %conv334, 1
  %add381 = sub nsw i32 %shr345, %59
  %sub384 = add nsw i32 %add381, %conv359
  %shr385 = ashr i32 %sub384, 1
  %cond.i.i627 = tail call noundef i32 @llvm.smax.i32(i32 %shr385, i32 %sub379)
  %cond.i4.i628 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i627, i32 %mul225)
  %60 = trunc i32 %cond.i4.i628 to i16
  %conv389 = add i16 %56, %60
  store i16 %conv389, ptr %add.ptr325, align 2
  br label %if.end390

if.end390:                                        ; preds = %if.then378, %if.then339
  %cmp391.not = icmp eq i32 %cond.i4.i626, 0
  br i1 %cmp391.not, label %if.end402, label %if.then393

if.then393:                                       ; preds = %if.end390
  %add395 = add nsw i32 %cond.i4.i626, %conv316
  %cond.i.i629 = tail call noundef i32 @llvm.smax.i32(i32 %add395, i32 0)
  %cond.i4.i630 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i629, i32 %10)
  %conv397 = trunc i32 %cond.i4.i630 to i16
  store i16 %conv397, ptr %add.ptr313, align 2
  %sub399 = sub nsw i32 %conv315, %cond.i4.i626
  %cond.i.i631 = tail call noundef i32 @llvm.smax.i32(i32 %sub399, i32 0)
  %cond.i4.i632 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i631, i32 %10)
  %conv401 = trunc i32 %cond.i4.i632 to i16
  store i16 %conv401, ptr %add.ptr314, align 2
  br label %if.end402

if.end402:                                        ; preds = %if.then393, %if.end390
  br i1 %cmp355, label %if.then404, label %for.inc419

if.then404:                                       ; preds = %if.end402
  %add407 = add nuw nsw i32 %shr345, %conv352
  %61 = shl nuw nsw i32 %conv327, 1
  %sub410 = sub nsw i32 %add407, %61
  %shr411 = ashr i32 %sub410, 1
  %cond.i.i633 = tail call noundef i32 @llvm.smax.i32(i32 %shr411, i32 %sub379)
  %cond.i4.i634 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i633, i32 %mul225)
  %62 = trunc i32 %cond.i4.i634 to i16
  %conv415 = add i16 %55, %62
  store i16 %conv415, ptr %add.ptr323, align 2
  br label %for.inc419

for.inc419:                                       ; preds = %if.then321, %land.lhs.true332, %if.then404, %if.end402, %for.body310
  %inc420 = add nuw nsw i32 %i226.1642, 1
  %exitcond653.not = icmp eq i32 %inc420, 4
  br i1 %exitcond653.not, label %if.end426, label %for.body310

if.else423:                                       ; preds = %for.body
  %add.ptr424 = getelementptr inbounds i8, ptr %cur_img.0647, i64 32
  br label %if.end426

if.end426:                                        ; preds = %if.end216, %for.inc419, %for.inc303.2, %if.then246.3, %land.lhs.true255.3, %if.then262.3, %if.then291.3, %if.else423
  %cur_img.5 = phi ptr [ %add.ptr424, %if.else423 ], [ %incdec.ptr236.3, %if.then291.3 ], [ %incdec.ptr236.3, %if.then262.3 ], [ %incdec.ptr236.3, %land.lhs.true255.3 ], [ %incdec.ptr236.3, %if.then246.3 ], [ %incdec.ptr236.3, %for.inc303.2 ], [ %incdec.ptr311, %for.inc419 ], [ %incdec.ptr, %if.end216 ]
  %add.ptr427 = getelementptr inbounds i8, ptr %Strength.addr.0648, i64 4
  %add429 = add nuw nsw i32 %pel.0646, 4
  %cmp48 = icmp ult i32 %pel.0646, 12
  br i1 %cmp48, label %for.body, label %if.end432

if.end432:                                        ; preds = %if.end426, %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @EdgeLoopLumaHor(i32 noundef %pl, ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, ptr nocapture noundef readonly %p) #2 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %cmp = icmp slt i32 %edge, 16
  %sub = add nsw i32 %edge, -1
  %cond = select i1 %cmp, i32 %sub, i32 0
  %cmp1.i = icmp slt i32 %cond, 0
  br i1 %cmp1.i, label %get_non_aff_neighbor_luma.exit, label %if.then

get_non_aff_neighbor_luma.exit:                   ; preds = %entry
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136
  %1 = load ptr, ptr %mbup.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %get_non_aff_neighbor_luma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %2 = load i16, ptr %DFDisableIdc, align 8
  %cmp2 = icmp eq i16 %2, 0
  br i1 %cmp2, label %if.then, label %if.end462

if.then:                                          ; preds = %entry, %lor.lhs.false, %get_non_aff_neighbor_luma.exit
  %retval.0.i685 = phi ptr [ null, %lor.lhs.false ], [ %1, %get_non_aff_neighbor_luma.exit ], [ %MbQ, %entry ]
  %tobool4.not = icmp eq i32 %pl, 0
  %cond11.in.v = select i1 %tobool4.not, i64 849044, i64 849048
  %cond11.in = getelementptr inbounds i8, ptr %0, i64 %cond11.in.v
  %cond11 = load i32, ptr %cond11.in, align 4
  %qp = getelementptr inbounds i8, ptr %retval.0.i685, i64 68
  %qp22 = getelementptr inbounds i8, ptr %MbQ, i64 68
  %qpc = getelementptr inbounds i8, ptr %retval.0.i685, i64 72
  %sub14 = add i32 %pl, -1
  %idxprom = zext i32 %sub14 to i64
  %arrayidx15 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom
  %qpc16 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx19 = getelementptr inbounds [2 x i32], ptr %qpc16, i64 0, i64 %idxprom
  %qp22.sink = select i1 %tobool4.not, ptr %qp22, ptr %arrayidx19
  %.sink708.in = select i1 %tobool4.not, ptr %qp, ptr %arrayidx15
  %.sink708 = load i32, ptr %.sink708.in, align 4
  %3 = load i32, ptr %qp22.sink, align 4
  %add23 = add nsw i32 %3, %.sink708
  %cond27.in = add nsw i32 %add23, 1
  %cond27 = ashr i32 %cond27.in, 1
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %4 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv28 = sext i16 %4 to i32
  %add29 = add nsw i32 %cond27, %conv28
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add29, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %6 = load i16, ptr %DFBetaOffset, align 4
  %conv31 = sext i16 %6 to i32
  %add32 = add nsw i32 %cond27, %conv31
  %cond.i.i650 = tail call noundef i32 @llvm.smax.i32(i32 %add32, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %cond.i.i650, i32 51)
  %idxprom34 = zext nneg i32 %5 to i64
  %arrayidx35 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom34
  %8 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %8 to i32
  %mul = mul nsw i32 %cond11, %conv36
  %idxprom37 = zext nneg i32 %7 to i64
  %arrayidx38 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom37
  %9 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %9 to i32
  %mul40 = mul nsw i32 %cond11, %conv39
  %or = or i32 %mul40, %mul
  %cmp41.not = icmp eq i32 %or, 0
  br i1 %cmp41.not, label %if.end462, label %if.then43

if.then43:                                        ; preds = %if.then
  %arrayidx45 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom34
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %idxprom46 = zext i32 %pl to i64
  %arrayidx47 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom46
  %10 = load i32, ptr %arrayidx47, align 4
  %iLumaStride = getelementptr inbounds i8, ptr %p, i64 356
  %11 = load i32, ptr %iLumaStride, align 4
  %pix_y = getelementptr inbounds i8, ptr %retval.0.i685, i64 48
  %12 = load i32, ptr %pix_y, align 8
  %and = and i32 %cond, 15
  %add48 = add nsw i32 %12, %and
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom49
  %13 = load ptr, ptr %arrayidx50, align 8
  %pix_x = getelementptr inbounds i8, ptr %retval.0.i685, i64 44
  %14 = load i32, ptr %pix_x, align 4
  %idxprom52 = sext i32 %14 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %13, i64 %idxprom52
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx53, i64 %idx.ext
  %mul60 = shl nsw i32 %11, 1
  %mul61 = mul nsw i32 %11, 3
  %idx.neg = sub nsw i64 0, %idx.ext
  %shr95 = lshr i32 %mul, 2
  %add96 = add nuw nsw i32 %shr95, 2
  %idx.ext100 = sext i32 %mul60 to i64
  %idx.neg101 = sub nsw i64 0, %idx.ext100
  %idx.ext115 = sext i32 %mul61 to i64
  %idx.neg116 = sub nsw i64 0, %idx.ext115
  br label %for.body

for.body:                                         ; preds = %if.then43, %if.end456
  %Strength.addr.0700 = phi ptr [ %Strength, %if.then43 ], [ %add.ptr457, %if.end456 ]
  %imgP.0699 = phi ptr [ %arrayidx53, %if.then43 ], [ %imgP.5, %if.end456 ]
  %imgQ.0698 = phi ptr [ %add.ptr, %if.then43 ], [ %imgQ.5, %if.end456 ]
  %pel.0697 = phi i32 [ 0, %if.then43 ], [ %add459, %if.end456 ]
  %15 = load i8, ptr %Strength.addr.0700, align 1
  switch i8 %15, label %if.then243 [
    i8 4, label %for.body65
    i8 0, label %if.else452
  ]

for.body65:                                       ; preds = %for.body, %if.end238
  %imgP.1690 = phi ptr [ %incdec.ptr, %if.end238 ], [ %imgP.0699, %for.body ]
  %imgQ.1689 = phi ptr [ %incdec.ptr66, %if.end238 ], [ %imgQ.0698, %for.body ]
  %pixel.0688 = phi i32 [ %inc, %if.end238 ], [ 0, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %imgP.1690, i64 2
  %incdec.ptr66 = getelementptr inbounds i8, ptr %imgQ.1689, i64 2
  %16 = load i16, ptr %imgP.1690, align 2
  %17 = load i16, ptr %imgQ.1689, align 2
  %conv67 = zext i16 %17 to i32
  %conv68 = zext i16 %16 to i32
  %sub69 = sub nsw i32 %conv67, %conv68
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub69, i1 true)
  %cmp71 = icmp slt i32 %sub.i, %mul
  br i1 %cmp71, label %if.then73, label %if.end238

if.then73:                                        ; preds = %for.body65
  %add.ptr75 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg
  %add.ptr77 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext
  %18 = load i16, ptr %add.ptr77, align 2
  %conv79 = zext i16 %18 to i32
  %sub80 = sub nsw i32 %conv67, %conv79
  %sub.i652 = tail call i32 @llvm.abs.i32(i32 %sub80, i1 true)
  %cmp82 = icmp slt i32 %sub.i652, %mul40
  br i1 %cmp82, label %land.lhs.true, label %if.end238

land.lhs.true:                                    ; preds = %if.then73
  %19 = load i16, ptr %add.ptr75, align 2
  %conv85 = zext i16 %19 to i32
  %sub86 = sub nsw i32 %conv68, %conv85
  %sub.i653 = tail call i32 @llvm.abs.i32(i32 %sub86, i1 true)
  %cmp88 = icmp ult i32 %sub.i653, %mul40
  br i1 %cmp88, label %if.then90, label %if.end238

if.then90:                                        ; preds = %land.lhs.true
  %cmp97 = icmp ult i32 %sub.i, %add96
  br i1 %cmp97, label %if.then99, label %if.else217

if.then99:                                        ; preds = %if.then90
  %add.ptr102 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg101
  %20 = load i16, ptr %add.ptr102, align 2
  %add.ptr104 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext100
  %21 = load i16, ptr %add.ptr104, align 2
  %add107 = add nuw nsw i32 %conv67, %conv68
  %conv109 = zext i16 %20 to i32
  %sub110 = sub nsw i32 %conv68, %conv109
  %sub.i655 = tail call i32 @llvm.abs.i32(i32 %sub110, i1 true)
  %cmp112 = icmp ult i32 %sub.i655, %mul40
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %if.then99
  %add.ptr117 = getelementptr inbounds i16, ptr %imgP.1690, i64 %idx.neg116
  %22 = load i16, ptr %add.ptr117, align 2
  %add120 = add nuw nsw i32 %add107, %conv85
  %shl = shl nuw nsw i32 %add120, 1
  %add121 = add nuw nsw i32 %conv79, 4
  %add123 = add nuw nsw i32 %add121, %shl
  %add124 = add nuw nsw i32 %add123, %conv109
  %shr125 = lshr i32 %add124, 3
  %conv126 = trunc nuw i32 %shr125 to i16
  store i16 %conv126, ptr %imgP.1690, align 2
  %add129 = add nuw nsw i32 %add107, 2
  %add130 = add nuw nsw i32 %add129, %conv85
  %add131 = add nuw nsw i32 %add130, %conv109
  %shr132 = lshr i32 %add131, 2
  %conv133 = trunc nuw i32 %shr132 to i16
  store i16 %conv133, ptr %add.ptr75, align 2
  %conv137 = zext i16 %22 to i32
  %add139 = add nuw nsw i32 %conv137, %conv109
  %shl140 = shl nuw nsw i32 %add139, 1
  %add142 = add nuw nsw i32 %add107, 4
  %add144 = add nuw nsw i32 %add142, %conv85
  %add145 = add nuw nsw i32 %add144, %conv109
  %add146 = add nuw nsw i32 %add145, %shl140
  %shr147 = lshr i32 %add146, 3
  %conv148 = trunc nuw i32 %shr147 to i16
  %add.ptr151 = getelementptr inbounds i16, ptr %add.ptr75, i64 %idx.neg
  store i16 %conv148, ptr %add.ptr151, align 2
  br label %if.end

if.else:                                          ; preds = %if.then99
  %shl153 = shl nuw nsw i32 %conv85, 1
  %add155 = add nuw nsw i32 %conv68, 2
  %add157 = add nuw nsw i32 %add155, %conv79
  %add158 = add nuw nsw i32 %add157, %shl153
  %shr159 = lshr i32 %add158, 2
  %conv160 = trunc nuw i32 %shr159 to i16
  store i16 %conv160, ptr %imgP.1690, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then114
  %conv162 = zext i16 %21 to i32
  %sub163 = sub nsw i32 %conv67, %conv162
  %sub.i656 = tail call i32 @llvm.abs.i32(i32 %sub163, i1 true)
  %cmp165 = icmp ult i32 %sub.i656, %mul40
  br i1 %cmp165, label %if.then167, label %if.else206

if.then167:                                       ; preds = %if.end
  %add.ptr169 = getelementptr inbounds i16, ptr %imgQ.1689, i64 %idx.ext115
  %23 = load i16, ptr %add.ptr169, align 2
  %add172 = add nuw nsw i32 %add107, %conv79
  %shl173 = shl nuw nsw i32 %add172, 1
  %add174 = add nuw nsw i32 %shl173, 4
  %add176 = add nuw nsw i32 %add174, %conv85
  %add177 = add nuw nsw i32 %add176, %conv162
  %shr178 = lshr i32 %add177, 3
  %conv179 = trunc nuw i32 %shr178 to i16
  store i16 %conv179, ptr %imgQ.1689, align 2
  %add182 = add nuw nsw i32 %conv68, 2
  %add184 = add nuw nsw i32 %add182, %conv67
  %add186 = add nuw nsw i32 %add184, %conv79
  %add187 = add nuw nsw i32 %add186, %conv162
  %shr188 = lshr i32 %add187, 2
  %conv189 = trunc nuw i32 %shr188 to i16
  store i16 %conv189, ptr %add.ptr77, align 2
  %conv192 = zext i16 %23 to i32
  %add194 = add nuw nsw i32 %conv192, %conv162
  %shl195 = shl nuw nsw i32 %add194, 1
  %add197 = add nuw nsw i32 %add107, 4
  %add199 = add nuw nsw i32 %add197, %conv79
  %add200 = add nuw nsw i32 %add199, %conv162
  %add201 = add nuw nsw i32 %add200, %shl195
  %shr202 = lshr i32 %add201, 3
  %conv203 = trunc nuw i32 %shr202 to i16
  %add.ptr205 = getelementptr inbounds i16, ptr %add.ptr77, i64 %idx.ext
  store i16 %conv203, ptr %add.ptr205, align 2
  br label %if.end238

if.else206:                                       ; preds = %if.end
  %shl208 = shl nuw nsw i32 %conv79, 1
  %add210 = add nuw nsw i32 %conv67, 2
  %add212 = add nuw nsw i32 %add210, %shl208
  %add213 = add nuw nsw i32 %add212, %conv85
  %shr214 = lshr i32 %add213, 2
  %conv215 = trunc nuw i32 %shr214 to i16
  store i16 %conv215, ptr %imgQ.1689, align 2
  br label %if.end238

if.else217:                                       ; preds = %if.then90
  %shl219 = shl nuw nsw i32 %conv85, 1
  %add221 = add nuw nsw i32 %conv68, 2
  %add223 = add nuw nsw i32 %add221, %conv79
  %add224 = add nuw nsw i32 %add223, %shl219
  %shr225 = lshr i32 %add224, 2
  %conv226 = trunc nuw i32 %shr225 to i16
  store i16 %conv226, ptr %imgP.1690, align 2
  %shl228 = shl nuw nsw i32 %conv79, 1
  %add230 = add nuw nsw i32 %conv67, 2
  %add232 = add nuw nsw i32 %add230, %shl228
  %add233 = add nuw nsw i32 %add232, %conv85
  %shr234 = lshr i32 %add233, 2
  %conv235 = trunc nuw i32 %shr234 to i16
  store i16 %conv235, ptr %imgQ.1689, align 2
  br label %if.end238

if.end238:                                        ; preds = %if.then73, %land.lhs.true, %if.else217, %if.else206, %if.then167, %for.body65
  %inc = add nuw nsw i32 %pixel.0688, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end456, label %for.body65

if.then243:                                       ; preds = %for.body
  %idxprom244 = zext i8 %15 to i64
  %arrayidx245 = getelementptr inbounds i8, ptr %arrayidx45, i64 %idxprom244
  %24 = load i8, ptr %arrayidx245, align 1
  %conv246 = zext i8 %24 to i32
  %mul247 = mul nsw i32 %cond11, %conv246
  %cmp250 = icmp eq i32 %mul247, 0
  br i1 %cmp250, label %for.body256.preheader, label %for.cond332.preheader

for.body256.preheader:                            ; preds = %if.then243
  %incdec.ptr257 = getelementptr inbounds i8, ptr %imgP.0699, i64 2
  %incdec.ptr258 = getelementptr inbounds i8, ptr %imgQ.0698, i64 2
  %25 = load i16, ptr %imgQ.0698, align 2
  %conv259 = zext i16 %25 to i32
  %26 = load i16, ptr %imgP.0699, align 2
  %conv260 = zext i16 %26 to i32
  %sub261 = sub nsw i32 %conv259, %conv260
  %sub.i657 = tail call i32 @llvm.abs.i32(i32 %sub261, i1 true)
  %cmp263 = icmp slt i32 %sub.i657, %mul
  br i1 %cmp263, label %if.then265, label %for.inc328

for.cond332.preheader:                            ; preds = %if.then243
  %sub408 = sub nsw i32 0, %mul247
  br label %for.body335

if.then265:                                       ; preds = %for.body256.preheader
  %add.ptr267 = getelementptr inbounds i16, ptr %imgQ.0698, i64 %idx.ext
  %add.ptr270 = getelementptr inbounds i16, ptr %imgP.0699, i64 %idx.neg
  %27 = load i16, ptr %add.ptr267, align 2
  %conv272 = zext i16 %27 to i32
  %sub273 = sub nsw i32 %conv259, %conv272
  %sub.i658 = tail call i32 @llvm.abs.i32(i32 %sub273, i1 true)
  %cmp275 = icmp slt i32 %sub.i658, %mul40
  br i1 %cmp275, label %land.lhs.true277, label %for.inc328

land.lhs.true277:                                 ; preds = %if.then265
  %28 = load i16, ptr %add.ptr270, align 2
  %conv279 = zext i16 %28 to i32
  %sub280 = sub nsw i32 %conv260, %conv279
  %sub.i659 = tail call i32 @llvm.abs.i32(i32 %sub280, i1 true)
  %cmp282 = icmp ult i32 %sub.i659, %mul40
  br i1 %cmp282, label %if.then284, label %for.inc328

if.then284:                                       ; preds = %land.lhs.true277
  %add.ptr287 = getelementptr inbounds i16, ptr %add.ptr267, i64 %idx.ext
  %29 = load i16, ptr %add.ptr287, align 2
  %add.ptr291 = getelementptr inbounds i16, ptr %add.ptr270, i64 %idx.neg
  %30 = load i16, ptr %add.ptr291, align 2
  %conv293 = zext i16 %29 to i32
  %sub294 = sub nsw i32 %conv259, %conv293
  %sub.i660 = tail call i32 @llvm.abs.i32(i32 %sub294, i1 true)
  %cmp296 = icmp ult i32 %sub.i660, %mul40
  %conv297 = zext i1 %cmp296 to i32
  %conv299 = zext i16 %30 to i32
  %sub300 = sub nsw i32 %conv260, %conv299
  %sub.i661 = tail call i32 @llvm.abs.i32(i32 %sub300, i1 true)
  %cmp302 = icmp ult i32 %sub.i661, %mul40
  %conv303 = zext i1 %cmp302 to i32
  %add304 = add nuw nsw i32 %conv303, %conv297
  %sub305 = sub nsw i32 0, %add304
  %shl306 = shl nsw i32 %sub261, 2
  %sub309 = add nsw i32 %shl306, 4
  %add310 = sub nsw i32 %sub309, %conv272
  %add311 = add nsw i32 %add310, %conv279
  %shr312 = ashr i32 %add311, 3
  %cond.i.i662 = tail call noundef i32 @llvm.smax.i32(i32 %shr312, i32 %sub305)
  %cond.i4.i663 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662, i32 %add304)
  %cmp314.not = icmp eq i32 %cond.i4.i663, 0
  br i1 %cmp314.not, label %for.inc328, label %if.then316

if.then316:                                       ; preds = %if.then284
  %add318 = add nsw i32 %cond.i4.i663, %conv260
  %cond.i.i664 = tail call noundef i32 @llvm.smax.i32(i32 %add318, i32 0)
  %cond.i4.i665 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664, i32 %10)
  %conv320 = trunc i32 %cond.i4.i665 to i16
  store i16 %conv320, ptr %imgP.0699, align 2
  %31 = load i16, ptr %imgQ.0698, align 2
  %conv321 = zext i16 %31 to i32
  %sub322 = sub nsw i32 %conv321, %cond.i4.i663
  %cond.i.i666 = tail call noundef i32 @llvm.smax.i32(i32 %sub322, i32 0)
  %cond.i4.i667 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666, i32 %10)
  %conv324 = trunc i32 %cond.i4.i667 to i16
  store i16 %conv324, ptr %imgQ.0698, align 2
  br label %for.inc328

for.inc328:                                       ; preds = %if.then265, %land.lhs.true277, %if.then316, %if.then284, %for.body256.preheader
  %incdec.ptr257.1 = getelementptr inbounds i8, ptr %imgP.0699, i64 4
  %incdec.ptr258.1 = getelementptr inbounds i8, ptr %imgQ.0698, i64 4
  %32 = load i16, ptr %incdec.ptr258, align 2
  %conv259.1 = zext i16 %32 to i32
  %33 = load i16, ptr %incdec.ptr257, align 2
  %conv260.1 = zext i16 %33 to i32
  %sub261.1 = sub nsw i32 %conv259.1, %conv260.1
  %sub.i657.1 = tail call i32 @llvm.abs.i32(i32 %sub261.1, i1 true)
  %cmp263.1 = icmp slt i32 %sub.i657.1, %mul
  br i1 %cmp263.1, label %if.then265.1, label %for.inc328.1

if.then265.1:                                     ; preds = %for.inc328
  %add.ptr267.1 = getelementptr inbounds i16, ptr %incdec.ptr258, i64 %idx.ext
  %add.ptr270.1 = getelementptr inbounds i16, ptr %incdec.ptr257, i64 %idx.neg
  %34 = load i16, ptr %add.ptr267.1, align 2
  %conv272.1 = zext i16 %34 to i32
  %sub273.1 = sub nsw i32 %conv259.1, %conv272.1
  %sub.i658.1 = tail call i32 @llvm.abs.i32(i32 %sub273.1, i1 true)
  %cmp275.1 = icmp slt i32 %sub.i658.1, %mul40
  br i1 %cmp275.1, label %land.lhs.true277.1, label %for.inc328.1

land.lhs.true277.1:                               ; preds = %if.then265.1
  %35 = load i16, ptr %add.ptr270.1, align 2
  %conv279.1 = zext i16 %35 to i32
  %sub280.1 = sub nsw i32 %conv260.1, %conv279.1
  %sub.i659.1 = tail call i32 @llvm.abs.i32(i32 %sub280.1, i1 true)
  %cmp282.1 = icmp ult i32 %sub.i659.1, %mul40
  br i1 %cmp282.1, label %if.then284.1, label %for.inc328.1

if.then284.1:                                     ; preds = %land.lhs.true277.1
  %add.ptr287.1 = getelementptr inbounds i16, ptr %add.ptr267.1, i64 %idx.ext
  %36 = load i16, ptr %add.ptr287.1, align 2
  %add.ptr291.1 = getelementptr inbounds i16, ptr %add.ptr270.1, i64 %idx.neg
  %37 = load i16, ptr %add.ptr291.1, align 2
  %conv293.1 = zext i16 %36 to i32
  %sub294.1 = sub nsw i32 %conv259.1, %conv293.1
  %sub.i660.1 = tail call i32 @llvm.abs.i32(i32 %sub294.1, i1 true)
  %cmp296.1 = icmp ult i32 %sub.i660.1, %mul40
  %conv297.1 = zext i1 %cmp296.1 to i32
  %conv299.1 = zext i16 %37 to i32
  %sub300.1 = sub nsw i32 %conv260.1, %conv299.1
  %sub.i661.1 = tail call i32 @llvm.abs.i32(i32 %sub300.1, i1 true)
  %cmp302.1 = icmp ult i32 %sub.i661.1, %mul40
  %conv303.1 = zext i1 %cmp302.1 to i32
  %add304.1 = add nuw nsw i32 %conv303.1, %conv297.1
  %sub305.1 = sub nsw i32 0, %add304.1
  %shl306.1 = shl nsw i32 %sub261.1, 2
  %sub309.1 = add nsw i32 %shl306.1, 4
  %add310.1 = sub nsw i32 %sub309.1, %conv272.1
  %add311.1 = add nsw i32 %add310.1, %conv279.1
  %shr312.1 = ashr i32 %add311.1, 3
  %cond.i.i662.1 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.1, i32 %sub305.1)
  %cond.i4.i663.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.1, i32 %add304.1)
  %cmp314.not.1 = icmp eq i32 %cond.i4.i663.1, 0
  br i1 %cmp314.not.1, label %for.inc328.1, label %if.then316.1

if.then316.1:                                     ; preds = %if.then284.1
  %add318.1 = add nsw i32 %cond.i4.i663.1, %conv260.1
  %cond.i.i664.1 = tail call noundef i32 @llvm.smax.i32(i32 %add318.1, i32 0)
  %cond.i4.i665.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.1, i32 %10)
  %conv320.1 = trunc i32 %cond.i4.i665.1 to i16
  store i16 %conv320.1, ptr %incdec.ptr257, align 2
  %38 = load i16, ptr %incdec.ptr258, align 2
  %conv321.1 = zext i16 %38 to i32
  %sub322.1 = sub nsw i32 %conv321.1, %cond.i4.i663.1
  %cond.i.i666.1 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.1, i32 0)
  %cond.i4.i667.1 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.1, i32 %10)
  %conv324.1 = trunc i32 %cond.i4.i667.1 to i16
  store i16 %conv324.1, ptr %incdec.ptr258, align 2
  br label %for.inc328.1

for.inc328.1:                                     ; preds = %if.then316.1, %if.then284.1, %land.lhs.true277.1, %if.then265.1, %for.inc328
  %incdec.ptr257.2 = getelementptr inbounds i8, ptr %imgP.0699, i64 6
  %incdec.ptr258.2 = getelementptr inbounds i8, ptr %imgQ.0698, i64 6
  %39 = load i16, ptr %incdec.ptr258.1, align 2
  %conv259.2 = zext i16 %39 to i32
  %40 = load i16, ptr %incdec.ptr257.1, align 2
  %conv260.2 = zext i16 %40 to i32
  %sub261.2 = sub nsw i32 %conv259.2, %conv260.2
  %sub.i657.2 = tail call i32 @llvm.abs.i32(i32 %sub261.2, i1 true)
  %cmp263.2 = icmp slt i32 %sub.i657.2, %mul
  br i1 %cmp263.2, label %if.then265.2, label %for.inc328.2

if.then265.2:                                     ; preds = %for.inc328.1
  %add.ptr267.2 = getelementptr inbounds i16, ptr %incdec.ptr258.1, i64 %idx.ext
  %add.ptr270.2 = getelementptr inbounds i16, ptr %incdec.ptr257.1, i64 %idx.neg
  %41 = load i16, ptr %add.ptr267.2, align 2
  %conv272.2 = zext i16 %41 to i32
  %sub273.2 = sub nsw i32 %conv259.2, %conv272.2
  %sub.i658.2 = tail call i32 @llvm.abs.i32(i32 %sub273.2, i1 true)
  %cmp275.2 = icmp slt i32 %sub.i658.2, %mul40
  br i1 %cmp275.2, label %land.lhs.true277.2, label %for.inc328.2

land.lhs.true277.2:                               ; preds = %if.then265.2
  %42 = load i16, ptr %add.ptr270.2, align 2
  %conv279.2 = zext i16 %42 to i32
  %sub280.2 = sub nsw i32 %conv260.2, %conv279.2
  %sub.i659.2 = tail call i32 @llvm.abs.i32(i32 %sub280.2, i1 true)
  %cmp282.2 = icmp ult i32 %sub.i659.2, %mul40
  br i1 %cmp282.2, label %if.then284.2, label %for.inc328.2

if.then284.2:                                     ; preds = %land.lhs.true277.2
  %add.ptr287.2 = getelementptr inbounds i16, ptr %add.ptr267.2, i64 %idx.ext
  %43 = load i16, ptr %add.ptr287.2, align 2
  %add.ptr291.2 = getelementptr inbounds i16, ptr %add.ptr270.2, i64 %idx.neg
  %44 = load i16, ptr %add.ptr291.2, align 2
  %conv293.2 = zext i16 %43 to i32
  %sub294.2 = sub nsw i32 %conv259.2, %conv293.2
  %sub.i660.2 = tail call i32 @llvm.abs.i32(i32 %sub294.2, i1 true)
  %cmp296.2 = icmp ult i32 %sub.i660.2, %mul40
  %conv297.2 = zext i1 %cmp296.2 to i32
  %conv299.2 = zext i16 %44 to i32
  %sub300.2 = sub nsw i32 %conv260.2, %conv299.2
  %sub.i661.2 = tail call i32 @llvm.abs.i32(i32 %sub300.2, i1 true)
  %cmp302.2 = icmp ult i32 %sub.i661.2, %mul40
  %conv303.2 = zext i1 %cmp302.2 to i32
  %add304.2 = add nuw nsw i32 %conv303.2, %conv297.2
  %sub305.2 = sub nsw i32 0, %add304.2
  %shl306.2 = shl nsw i32 %sub261.2, 2
  %sub309.2 = add nsw i32 %shl306.2, 4
  %add310.2 = sub nsw i32 %sub309.2, %conv272.2
  %add311.2 = add nsw i32 %add310.2, %conv279.2
  %shr312.2 = ashr i32 %add311.2, 3
  %cond.i.i662.2 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.2, i32 %sub305.2)
  %cond.i4.i663.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.2, i32 %add304.2)
  %cmp314.not.2 = icmp eq i32 %cond.i4.i663.2, 0
  br i1 %cmp314.not.2, label %for.inc328.2, label %if.then316.2

if.then316.2:                                     ; preds = %if.then284.2
  %add318.2 = add nsw i32 %cond.i4.i663.2, %conv260.2
  %cond.i.i664.2 = tail call noundef i32 @llvm.smax.i32(i32 %add318.2, i32 0)
  %cond.i4.i665.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.2, i32 %10)
  %conv320.2 = trunc i32 %cond.i4.i665.2 to i16
  store i16 %conv320.2, ptr %incdec.ptr257.1, align 2
  %45 = load i16, ptr %incdec.ptr258.1, align 2
  %conv321.2 = zext i16 %45 to i32
  %sub322.2 = sub nsw i32 %conv321.2, %cond.i4.i663.2
  %cond.i.i666.2 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.2, i32 0)
  %cond.i4.i667.2 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.2, i32 %10)
  %conv324.2 = trunc i32 %cond.i4.i667.2 to i16
  store i16 %conv324.2, ptr %incdec.ptr258.1, align 2
  br label %for.inc328.2

for.inc328.2:                                     ; preds = %if.then316.2, %if.then284.2, %land.lhs.true277.2, %if.then265.2, %for.inc328.1
  %incdec.ptr257.3 = getelementptr inbounds i8, ptr %imgP.0699, i64 8
  %incdec.ptr258.3 = getelementptr inbounds i8, ptr %imgQ.0698, i64 8
  %46 = load i16, ptr %incdec.ptr258.2, align 2
  %conv259.3 = zext i16 %46 to i32
  %47 = load i16, ptr %incdec.ptr257.2, align 2
  %conv260.3 = zext i16 %47 to i32
  %sub261.3 = sub nsw i32 %conv259.3, %conv260.3
  %sub.i657.3 = tail call i32 @llvm.abs.i32(i32 %sub261.3, i1 true)
  %cmp263.3 = icmp slt i32 %sub.i657.3, %mul
  br i1 %cmp263.3, label %if.then265.3, label %if.end456

if.then265.3:                                     ; preds = %for.inc328.2
  %add.ptr267.3 = getelementptr inbounds i16, ptr %incdec.ptr258.2, i64 %idx.ext
  %add.ptr270.3 = getelementptr inbounds i16, ptr %incdec.ptr257.2, i64 %idx.neg
  %48 = load i16, ptr %add.ptr267.3, align 2
  %conv272.3 = zext i16 %48 to i32
  %sub273.3 = sub nsw i32 %conv259.3, %conv272.3
  %sub.i658.3 = tail call i32 @llvm.abs.i32(i32 %sub273.3, i1 true)
  %cmp275.3 = icmp slt i32 %sub.i658.3, %mul40
  br i1 %cmp275.3, label %land.lhs.true277.3, label %if.end456

land.lhs.true277.3:                               ; preds = %if.then265.3
  %49 = load i16, ptr %add.ptr270.3, align 2
  %conv279.3 = zext i16 %49 to i32
  %sub280.3 = sub nsw i32 %conv260.3, %conv279.3
  %sub.i659.3 = tail call i32 @llvm.abs.i32(i32 %sub280.3, i1 true)
  %cmp282.3 = icmp ult i32 %sub.i659.3, %mul40
  br i1 %cmp282.3, label %if.then284.3, label %if.end456

if.then284.3:                                     ; preds = %land.lhs.true277.3
  %add.ptr287.3 = getelementptr inbounds i16, ptr %add.ptr267.3, i64 %idx.ext
  %50 = load i16, ptr %add.ptr287.3, align 2
  %add.ptr291.3 = getelementptr inbounds i16, ptr %add.ptr270.3, i64 %idx.neg
  %51 = load i16, ptr %add.ptr291.3, align 2
  %conv293.3 = zext i16 %50 to i32
  %sub294.3 = sub nsw i32 %conv259.3, %conv293.3
  %sub.i660.3 = tail call i32 @llvm.abs.i32(i32 %sub294.3, i1 true)
  %cmp296.3 = icmp ult i32 %sub.i660.3, %mul40
  %conv297.3 = zext i1 %cmp296.3 to i32
  %conv299.3 = zext i16 %51 to i32
  %sub300.3 = sub nsw i32 %conv260.3, %conv299.3
  %sub.i661.3 = tail call i32 @llvm.abs.i32(i32 %sub300.3, i1 true)
  %cmp302.3 = icmp ult i32 %sub.i661.3, %mul40
  %conv303.3 = zext i1 %cmp302.3 to i32
  %add304.3 = add nuw nsw i32 %conv303.3, %conv297.3
  %sub305.3 = sub nsw i32 0, %add304.3
  %shl306.3 = shl nsw i32 %sub261.3, 2
  %sub309.3 = add nsw i32 %shl306.3, 4
  %add310.3 = sub nsw i32 %sub309.3, %conv272.3
  %add311.3 = add nsw i32 %add310.3, %conv279.3
  %shr312.3 = ashr i32 %add311.3, 3
  %cond.i.i662.3 = tail call noundef i32 @llvm.smax.i32(i32 %shr312.3, i32 %sub305.3)
  %cond.i4.i663.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i662.3, i32 %add304.3)
  %cmp314.not.3 = icmp eq i32 %cond.i4.i663.3, 0
  br i1 %cmp314.not.3, label %if.end456, label %if.then316.3

if.then316.3:                                     ; preds = %if.then284.3
  %add318.3 = add nsw i32 %cond.i4.i663.3, %conv260.3
  %cond.i.i664.3 = tail call noundef i32 @llvm.smax.i32(i32 %add318.3, i32 0)
  %cond.i4.i665.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i664.3, i32 %10)
  %conv320.3 = trunc i32 %cond.i4.i665.3 to i16
  store i16 %conv320.3, ptr %incdec.ptr257.2, align 2
  %52 = load i16, ptr %incdec.ptr258.2, align 2
  %conv321.3 = zext i16 %52 to i32
  %sub322.3 = sub nsw i32 %conv321.3, %cond.i4.i663.3
  %cond.i.i666.3 = tail call noundef i32 @llvm.smax.i32(i32 %sub322.3, i32 0)
  %cond.i4.i667.3 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i666.3, i32 %10)
  %conv324.3 = trunc i32 %cond.i4.i667.3 to i16
  store i16 %conv324.3, ptr %incdec.ptr258.2, align 2
  br label %if.end456

for.body335:                                      ; preds = %for.cond332.preheader, %for.inc448
  %imgP.3693 = phi ptr [ %imgP.0699, %for.cond332.preheader ], [ %incdec.ptr336, %for.inc448 ]
  %imgQ.3692 = phi ptr [ %imgQ.0698, %for.cond332.preheader ], [ %incdec.ptr337, %for.inc448 ]
  %i.1691 = phi i32 [ 0, %for.cond332.preheader ], [ %inc449, %for.inc448 ]
  %incdec.ptr336 = getelementptr inbounds i8, ptr %imgP.3693, i64 2
  %incdec.ptr337 = getelementptr inbounds i8, ptr %imgQ.3692, i64 2
  %53 = load i16, ptr %imgQ.3692, align 2
  %conv338 = zext i16 %53 to i32
  %54 = load i16, ptr %imgP.3693, align 2
  %conv339 = zext i16 %54 to i32
  %sub340 = sub nsw i32 %conv338, %conv339
  %sub.i668 = tail call i32 @llvm.abs.i32(i32 %sub340, i1 true)
  %cmp342 = icmp slt i32 %sub.i668, %mul
  br i1 %cmp342, label %if.then344, label %for.inc448

if.then344:                                       ; preds = %for.body335
  %add.ptr347 = getelementptr inbounds i16, ptr %imgQ.3692, i64 %idx.ext
  %add.ptr351 = getelementptr inbounds i16, ptr %imgP.3693, i64 %idx.neg
  %55 = load i16, ptr %add.ptr347, align 2
  %conv353 = zext i16 %55 to i32
  %sub354 = sub nsw i32 %conv338, %conv353
  %sub.i669 = tail call i32 @llvm.abs.i32(i32 %sub354, i1 true)
  %cmp356 = icmp slt i32 %sub.i669, %mul40
  br i1 %cmp356, label %land.lhs.true358, label %for.inc448

land.lhs.true358:                                 ; preds = %if.then344
  %56 = load i16, ptr %add.ptr351, align 2
  %conv360 = zext i16 %56 to i32
  %sub361 = sub nsw i32 %conv339, %conv360
  %sub.i670 = tail call i32 @llvm.abs.i32(i32 %sub361, i1 true)
  %cmp363 = icmp ult i32 %sub.i670, %mul40
  br i1 %cmp363, label %if.then365, label %for.inc448

if.then365:                                       ; preds = %land.lhs.true358
  %add369 = add nuw nsw i32 %conv338, 1
  %add370 = add nuw nsw i32 %add369, %conv339
  %shr371 = lshr i32 %add370, 1
  %add.ptr374 = getelementptr inbounds i16, ptr %add.ptr347, i64 %idx.ext
  %57 = load i16, ptr %add.ptr374, align 2
  %add.ptr378 = getelementptr inbounds i16, ptr %add.ptr351, i64 %idx.neg
  %58 = load i16, ptr %add.ptr378, align 2
  %conv381 = zext i16 %57 to i32
  %sub382 = sub nsw i32 %conv338, %conv381
  %sub.i671 = tail call i32 @llvm.abs.i32(i32 %sub382, i1 true)
  %cmp384 = icmp ult i32 %sub.i671, %mul40
  %conv385 = zext i1 %cmp384 to i32
  %conv388 = zext i16 %58 to i32
  %sub389 = sub nsw i32 %conv339, %conv388
  %sub.i672 = tail call i32 @llvm.abs.i32(i32 %sub389, i1 true)
  %cmp391 = icmp ult i32 %sub.i672, %mul40
  %conv392 = zext i1 %cmp391 to i32
  %add394 = add i32 %mul247, %conv385
  %add395 = add i32 %add394, %conv392
  %sub397 = sub nsw i32 0, %add395
  %shl398 = shl nsw i32 %sub340, 2
  %sub401 = add nsw i32 %shl398, 4
  %add402 = sub nsw i32 %sub401, %conv353
  %add403 = add nsw i32 %add402, %conv360
  %shr404 = ashr i32 %add403, 3
  %cond.i.i673 = tail call noundef i32 @llvm.smax.i32(i32 %shr404, i32 %sub397)
  %cond.i4.i674 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i673, i32 %add395)
  br i1 %cmp391, label %if.then407, label %if.end419

if.then407:                                       ; preds = %if.then365
  %59 = shl nuw nsw i32 %conv360, 1
  %add410 = sub nsw i32 %shr371, %59
  %sub413 = add nsw i32 %add410, %conv388
  %shr414 = ashr i32 %sub413, 1
  %cond.i.i675 = tail call noundef i32 @llvm.smax.i32(i32 %shr414, i32 %sub408)
  %cond.i4.i676 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i675, i32 %mul247)
  %60 = trunc i32 %cond.i4.i676 to i16
  %conv418 = add i16 %56, %60
  store i16 %conv418, ptr %add.ptr351, align 2
  br label %if.end419

if.end419:                                        ; preds = %if.then407, %if.then365
  %cmp420.not = icmp eq i32 %cond.i4.i674, 0
  br i1 %cmp420.not, label %if.end431, label %if.then422

if.then422:                                       ; preds = %if.end419
  %61 = load i16, ptr %imgP.3693, align 2
  %conv423 = zext i16 %61 to i32
  %add424 = add nsw i32 %cond.i4.i674, %conv423
  %cond.i.i677 = tail call noundef i32 @llvm.smax.i32(i32 %add424, i32 0)
  %cond.i4.i678 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i677, i32 %10)
  %conv426 = trunc i32 %cond.i4.i678 to i16
  store i16 %conv426, ptr %imgP.3693, align 2
  %62 = load i16, ptr %imgQ.3692, align 2
  %conv427 = zext i16 %62 to i32
  %sub428 = sub nsw i32 %conv427, %cond.i4.i674
  %cond.i.i679 = tail call noundef i32 @llvm.smax.i32(i32 %sub428, i32 0)
  %cond.i4.i680 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i679, i32 %10)
  %conv430 = trunc i32 %cond.i4.i680 to i16
  store i16 %conv430, ptr %imgQ.3692, align 2
  br label %if.end431

if.end431:                                        ; preds = %if.then422, %if.end419
  br i1 %cmp384, label %if.then433, label %for.inc448

if.then433:                                       ; preds = %if.end431
  %add436 = add nuw nsw i32 %shr371, %conv381
  %63 = load i16, ptr %add.ptr347, align 2
  %conv437 = zext i16 %63 to i32
  %64 = shl nuw nsw i32 %conv437, 1
  %sub439 = sub nsw i32 %add436, %64
  %shr440 = ashr i32 %sub439, 1
  %cond.i.i681 = tail call noundef i32 @llvm.smax.i32(i32 %shr440, i32 %sub408)
  %cond.i4.i682 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i681, i32 %mul247)
  %65 = trunc i32 %cond.i4.i682 to i16
  %conv444 = add i16 %63, %65
  store i16 %conv444, ptr %add.ptr347, align 2
  br label %for.inc448

for.inc448:                                       ; preds = %if.then344, %land.lhs.true358, %if.then433, %if.end431, %for.body335
  %inc449 = add nuw nsw i32 %i.1691, 1
  %exitcond705.not = icmp eq i32 %inc449, 4
  br i1 %exitcond705.not, label %if.end456, label %for.body335

if.else452:                                       ; preds = %for.body
  %add.ptr453 = getelementptr inbounds i8, ptr %imgP.0699, i64 8
  %add.ptr454 = getelementptr inbounds i8, ptr %imgQ.0698, i64 8
  br label %if.end456

if.end456:                                        ; preds = %if.end238, %for.inc448, %for.inc328.2, %if.then265.3, %land.lhs.true277.3, %if.then284.3, %if.then316.3, %if.else452
  %imgQ.5 = phi ptr [ %add.ptr454, %if.else452 ], [ %incdec.ptr258.3, %if.then316.3 ], [ %incdec.ptr258.3, %if.then284.3 ], [ %incdec.ptr258.3, %land.lhs.true277.3 ], [ %incdec.ptr258.3, %if.then265.3 ], [ %incdec.ptr258.3, %for.inc328.2 ], [ %incdec.ptr337, %for.inc448 ], [ %incdec.ptr66, %if.end238 ]
  %imgP.5 = phi ptr [ %add.ptr453, %if.else452 ], [ %incdec.ptr257.3, %if.then316.3 ], [ %incdec.ptr257.3, %if.then284.3 ], [ %incdec.ptr257.3, %land.lhs.true277.3 ], [ %incdec.ptr257.3, %if.then265.3 ], [ %incdec.ptr257.3, %for.inc328.2 ], [ %incdec.ptr336, %for.inc448 ], [ %incdec.ptr, %if.end238 ]
  %add.ptr457 = getelementptr inbounds i8, ptr %Strength.addr.0700, i64 4
  %add459 = add nuw nsw i32 %pel.0697, 4
  %cmp54 = icmp ult i32 %pel.0697, 12
  br i1 %cmp54, label %for.body, label %if.end462

if.end462:                                        ; preds = %if.end456, %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @EdgeLoopChromaVer(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #3 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %1 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
  %2 = load i32, ptr %mb_cr_size_y, align 8
  %sub = add nsw i32 %edge, -1
  %cmp.i = icmp slt i32 %edge, 1
  br i1 %cmp.i, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %entry
  %cmp1.i = icmp sgt i32 %2, 0
  br i1 %cmp1.i, label %get_non_aff_neighbor_chroma.exit, label %lor.lhs.false

if.else3.i:                                       ; preds = %entry
  %cmp4.i = icmp sge i32 %1, %edge
  %cmp9.i = icmp sgt i32 %2, 0
  %or.cond = select i1 %cmp4.i, i1 %cmp9.i, i1 false
  br i1 %or.cond, label %if.then, label %lor.lhs.false

get_non_aff_neighbor_chroma.exit:                 ; preds = %if.then.i
  %mbleft.i = getelementptr inbounds i8, ptr %MbQ, i64 144
  %3 = load ptr, ptr %mbleft.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %if.else3.i, %if.then.i, %get_non_aff_neighbor_chroma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %4 = load i16, ptr %DFDisableIdc, align 8
  %cmp = icmp ne i16 %4, 0
  tail call void @llvm.assume(i1 %cmp)
  br label %if.end128

if.then:                                          ; preds = %if.else3.i, %get_non_aff_neighbor_chroma.exit
  %retval.0.i197 = phi ptr [ %3, %get_non_aff_neighbor_chroma.exit ], [ %MbQ, %if.else3.i ]
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 849048
  %5 = load i32, ptr %arrayidx, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %add = add nsw i32 %uv, 1
  %idxprom = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx4, align 4
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %7 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv5 = sext i16 %7 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %8 = load i16, ptr %DFBetaOffset, align 4
  %conv6 = sext i16 %8 to i32
  %qpc = getelementptr inbounds i8, ptr %retval.0.i197, i64 72
  %idxprom7 = sext i32 %uv to i64
  %arrayidx8 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom7
  %9 = load i32, ptr %arrayidx8, align 4
  %qpc9 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %qpc9, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %9, 1
  %add13 = add i32 %add12, %10
  %shr = ashr i32 %add13, 1
  %add14 = add nsw i32 %shr, %conv5
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add14, i32 0)
  %11 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add16 = add nsw i32 %shr, %conv6
  %cond.i.i185 = tail call noundef i32 @llvm.smax.i32(i32 %add16, i32 0)
  %12 = tail call i32 @llvm.umin.i32(i32 %cond.i.i185, i32 51)
  %idxprom18 = zext nneg i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom18
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %mul = mul nsw i32 %5, %conv20
  %idxprom21 = zext nneg i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom21
  %14 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %14 to i32
  %mul24 = mul nsw i32 %5, %conv23
  %or = or i32 %mul24, %mul
  %cmp25.not = icmp eq i32 %or, 0
  br i1 %cmp25.not, label %if.end128, label %if.then27

if.then27:                                        ; preds = %if.then
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %15 = load i32, ptr %chroma_format_idc, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr @pelnum_cr, i64 0, i64 %idxprom28
  %16 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom18
  %cmp39202 = icmp sgt i32 %16, 0
  br i1 %cmp39202, label %for.body.lr.ph, label %if.end128

for.body.lr.ph:                                   ; preds = %if.then27
  %pix_c_y = getelementptr inbounds i8, ptr %retval.0.i197, i64 56
  %17 = load i32, ptr %pix_c_y, align 8
  %idxprom37 = sext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom37
  %pix_c_x = getelementptr inbounds i8, ptr %retval.0.i197, i64 52
  %18 = load i32, ptr %pix_c_x, align 4
  %sub32 = add nsw i32 %1, -1
  %and = and i32 %sub32, %sub
  %add33 = add nsw i32 %18, %and
  %cmp41 = icmp eq i32 %16, 8
  %idx.ext = sext i32 %add33 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end126
  %pel.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end126 ]
  %cur_img.0203 = phi ptr [ %arrayidx38, %for.body.lr.ph ], [ %incdec.ptr, %if.end126 ]
  %19 = shl nuw i32 %pel.0204, 1
  %shl = and i32 %19, -4
  %and44 = and i32 %pel.0204, 1
  %add45 = or disjoint i32 %shl, %and44
  %cond = select i1 %cmp41, i32 %add45, i32 %pel.0204
  %idxprom46 = sext i32 %cond to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom46
  %20 = load i8, ptr %arrayidx47, align 1
  %cmp49.not = icmp eq i8 %20, 0
  br i1 %cmp49.not, label %if.end126, label %if.then51

if.then51:                                        ; preds = %for.body
  %21 = load ptr, ptr %cur_img.0203, align 8
  %add.ptr = getelementptr inbounds i16, ptr %21, i64 %idx.ext
  %add.ptr52 = getelementptr inbounds i8, ptr %add.ptr, i64 2
  %22 = load i16, ptr %add.ptr52, align 2
  %conv53 = zext i16 %22 to i32
  %23 = load i16, ptr %add.ptr, align 2
  %conv54 = zext i16 %23 to i32
  %sub55 = sub nsw i32 %conv53, %conv54
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub55, i1 true)
  %cmp57 = icmp slt i32 %sub.i, %mul
  br i1 %cmp57, label %if.then59, label %if.end126

if.then59:                                        ; preds = %if.then51
  %add.ptr60 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %24 = load i16, ptr %add.ptr60, align 2
  %conv62 = zext i16 %24 to i32
  %sub63 = sub nsw i32 %conv53, %conv62
  %sub.i187 = tail call i32 @llvm.abs.i32(i32 %sub63, i1 true)
  %cmp65 = icmp slt i32 %sub.i187, %mul24
  br i1 %cmp65, label %if.then67, label %if.end126

if.then67:                                        ; preds = %if.then59
  %add.ptr68 = getelementptr inbounds i8, ptr %add.ptr, i64 -2
  %25 = load i16, ptr %add.ptr68, align 2
  %conv70 = zext i16 %25 to i32
  %sub71 = sub nsw i32 %conv54, %conv70
  %sub.i188 = tail call i32 @llvm.abs.i32(i32 %sub71, i1 true)
  %cmp73 = icmp ult i32 %sub.i188, %mul24
  br i1 %cmp73, label %if.then75, label %if.end126

if.then75:                                        ; preds = %if.then67
  %cmp76 = icmp eq i8 %20, 4
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.then75
  %shl80 = shl nuw nsw i32 %conv70, 1
  %add82 = add nuw nsw i32 %conv54, 2
  %add84 = add nuw nsw i32 %add82, %conv62
  %add85 = add nuw nsw i32 %add84, %shl80
  %shr86 = lshr i32 %add85, 2
  %conv87 = trunc nuw i32 %shr86 to i16
  store i16 %conv87, ptr %add.ptr, align 2
  %shl89 = shl nuw nsw i32 %conv62, 1
  %add91 = add nuw nsw i32 %conv53, 2
  %add93 = add nuw nsw i32 %add91, %shl89
  %add94 = add nuw nsw i32 %add93, %conv70
  %shr95 = lshr i32 %add94, 2
  br label %if.end126.sink.split

if.else:                                          ; preds = %if.then75
  %idxprom97 = zext i8 %20 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx31, i64 %idxprom97
  %26 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %26 to i32
  %mul100 = mul nsw i32 %5, %conv99
  %27 = shl nsw i32 %sub55, 2
  %28 = add nsw i32 %conv62, -5
  %29 = add nsw i32 %27, %conv70
  %30 = sub nsw i32 %28, %29
  %31 = ashr i32 %30, 3
  %32 = tail call i32 @llvm.smin.i32(i32 %mul100, i32 %31)
  %33 = sub i32 -2, %mul100
  %34 = tail call i32 @llvm.smax.i32(i32 %32, i32 %33)
  %cmp111.not = icmp eq i32 %34, -1
  br i1 %cmp111.not, label %if.end126, label %if.then113

if.then113:                                       ; preds = %if.else
  %cond.i4.i190 = xor i32 %34, -1
  %add115 = add nsw i32 %cond.i4.i190, %conv54
  %cond.i.i191 = tail call noundef i32 @llvm.smax.i32(i32 %add115, i32 0)
  %cond.i4.i192 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i191, i32 %6)
  %conv117 = trunc i32 %cond.i4.i192 to i16
  store i16 %conv117, ptr %add.ptr, align 2
  %sub119 = sub nsw i32 %conv53, %cond.i4.i190
  %cond.i.i193 = tail call noundef i32 @llvm.smax.i32(i32 %sub119, i32 0)
  %cond.i4.i194 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i193, i32 %6)
  br label %if.end126.sink.split

if.end126.sink.split:                             ; preds = %if.then113, %if.then78
  %shr95.sink = phi i32 [ %shr95, %if.then78 ], [ %cond.i4.i194, %if.then113 ]
  %conv96 = trunc i32 %shr95.sink to i16
  store i16 %conv96, ptr %add.ptr52, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.end126.sink.split, %if.then51, %if.then67, %if.else, %if.then59, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %cur_img.0203, i64 8
  %inc = add nuw nsw i32 %pel.0204, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %if.end128, label %for.body

if.end128:                                        ; preds = %if.end126, %if.then27, %lor.lhs.false, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @EdgeLoopChromaHor(ptr nocapture noundef readonly %Img, ptr nocapture noundef readonly %Strength, ptr nocapture noundef readonly %MbQ, i32 noundef %edge, i32 noundef %uv, ptr nocapture noundef readonly %p) #3 {
entry:
  %p_Vid1 = getelementptr inbounds i8, ptr %MbQ, i64 8
  %0 = load ptr, ptr %p_Vid1, align 8
  %mb_cr_size_x = getelementptr inbounds i8, ptr %0, i64 849108
  %1 = load i32, ptr %mb_cr_size_x, align 4
  %mb_cr_size_y = getelementptr inbounds i8, ptr %0, i64 849112
  %2 = load i32, ptr %mb_cr_size_y, align 8
  %cmp = icmp slt i32 %edge, 16
  %sub = add nsw i32 %edge, -1
  %cond = select i1 %cmp, i32 %sub, i32 0
  %cmp4.i = icmp sgt i32 %1, 0
  br i1 %cmp4.i, label %if.then5.i, label %lor.lhs.false

if.then5.i:                                       ; preds = %entry
  %cmp6.i = icmp slt i32 %cond, 0
  br i1 %cmp6.i, label %get_non_aff_neighbor_chroma.exit, label %if.else8.i

if.else8.i:                                       ; preds = %if.then5.i
  %cmp9.i = icmp slt i32 %cond, %2
  br i1 %cmp9.i, label %if.then, label %lor.lhs.false

get_non_aff_neighbor_chroma.exit:                 ; preds = %if.then5.i
  %mbup.i = getelementptr inbounds i8, ptr %MbQ, i64 136
  %3 = load ptr, ptr %mbup.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry, %if.else8.i, %get_non_aff_neighbor_chroma.exit
  %DFDisableIdc = getelementptr inbounds i8, ptr %MbQ, i64 376
  %4 = load i16, ptr %DFDisableIdc, align 8
  %cmp2 = icmp ne i16 %4, 0
  tail call void @llvm.assume(i1 %cmp2)
  br label %if.end137

if.then:                                          ; preds = %if.else8.i, %get_non_aff_neighbor_chroma.exit
  %retval.0.i211 = phi ptr [ %3, %get_non_aff_neighbor_chroma.exit ], [ %MbQ, %if.else8.i ]
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 849048
  %5 = load i32, ptr %arrayidx, align 4
  %max_pel_value_comp = getelementptr inbounds i8, ptr %0, i64 849072
  %add = add nsw i32 %uv, 1
  %idxprom = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %max_pel_value_comp, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx5, align 4
  %DFAlphaC0Offset = getelementptr inbounds i8, ptr %MbQ, i64 378
  %7 = load i16, ptr %DFAlphaC0Offset, align 2
  %conv6 = sext i16 %7 to i32
  %DFBetaOffset = getelementptr inbounds i8, ptr %MbQ, i64 380
  %8 = load i16, ptr %DFBetaOffset, align 4
  %conv7 = sext i16 %8 to i32
  %qpc = getelementptr inbounds i8, ptr %retval.0.i211, i64 72
  %idxprom8 = sext i32 %uv to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %qpc, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4
  %qpc10 = getelementptr inbounds i8, ptr %MbQ, i64 72
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %qpc10, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %9, 1
  %add14 = add i32 %add13, %10
  %shr = ashr i32 %add14, 1
  %add15 = add nsw i32 %shr, %conv6
  %cond.i.i = tail call noundef i32 @llvm.smax.i32(i32 %add15, i32 0)
  %11 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 51)
  %add17 = add nsw i32 %shr, %conv7
  %cond.i.i199 = tail call noundef i32 @llvm.smax.i32(i32 %add17, i32 0)
  %12 = tail call i32 @llvm.umin.i32(i32 %cond.i.i199, i32 51)
  %idxprom19 = zext nneg i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [52 x i8], ptr @ALPHA_TABLE, i64 0, i64 %idxprom19
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %mul = mul nsw i32 %5, %conv21
  %idxprom22 = zext nneg i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [52 x i8], ptr @BETA_TABLE, i64 0, i64 %idxprom22
  %14 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %mul25 = mul nsw i32 %5, %conv24
  %or = or i32 %mul25, %mul
  %cmp26.not = icmp eq i32 %or, 0
  br i1 %cmp26.not, label %if.end137, label %if.then28

if.then28:                                        ; preds = %if.then
  %iChromaStride = getelementptr inbounds i8, ptr %p, i64 360
  %15 = load i32, ptr %iChromaStride, align 8
  %chroma_format_idc = getelementptr inbounds i8, ptr %p, i64 268
  %16 = load i32, ptr %chroma_format_idc, align 4
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr getelementptr inbounds (i8, ptr @pelnum_cr, i64 16), i64 0, i64 %idxprom29
  %17 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr inbounds [52 x [5 x i8]], ptr @CLIP_TAB, i64 0, i64 %idxprom19
  %idx.ext = sext i32 %15 to i64
  %cmp42216 = icmp sgt i32 %17, 0
  br i1 %cmp42216, label %for.body.lr.ph, label %if.end137

for.body.lr.ph:                                   ; preds = %if.then28
  %pix_c_y = getelementptr inbounds i8, ptr %retval.0.i211, i64 56
  %18 = load i32, ptr %pix_c_y, align 8
  %sub33 = add nsw i32 %2, -1
  %and = and i32 %sub33, %cond
  %add34 = add nsw i32 %18, %and
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %Img, i64 %idxprom35
  %19 = load ptr, ptr %arrayidx36, align 8
  %pix_c_x = getelementptr inbounds i8, ptr %retval.0.i211, i64 52
  %20 = load i32, ptr %pix_c_x, align 4
  %idxprom40 = sext i32 %20 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %19, i64 %idxprom40
  %add.ptr = getelementptr inbounds i16, ptr %arrayidx41, i64 %idx.ext
  %cmp44 = icmp eq i32 %17, 8
  %idx.neg = sub nsw i64 0, %idx.ext
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end134
  %pel.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end134 ]
  %imgP.0218 = phi ptr [ %arrayidx41, %for.body.lr.ph ], [ %incdec.ptr, %if.end134 ]
  %imgQ.0217 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr135, %if.end134 ]
  %21 = shl nuw i32 %pel.0219, 1
  %shl = and i32 %21, -4
  %and48 = and i32 %pel.0219, 1
  %add49 = or disjoint i32 %shl, %and48
  %cond52 = select i1 %cmp44, i32 %add49, i32 %pel.0219
  %idxprom53 = sext i32 %cond52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %Strength, i64 %idxprom53
  %22 = load i8, ptr %arrayidx54, align 1
  %cmp56.not = icmp eq i8 %22, 0
  br i1 %cmp56.not, label %if.end134, label %if.then58

if.then58:                                        ; preds = %for.body
  %23 = load i16, ptr %imgQ.0217, align 2
  %conv59 = zext i16 %23 to i32
  %24 = load i16, ptr %imgP.0218, align 2
  %conv60 = zext i16 %24 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  %sub.i = tail call i32 @llvm.abs.i32(i32 %sub61, i1 true)
  %cmp63 = icmp slt i32 %sub.i, %mul
  br i1 %cmp63, label %if.then65, label %if.end134

if.then65:                                        ; preds = %if.then58
  %add.ptr67 = getelementptr inbounds i16, ptr %imgQ.0217, i64 %idx.ext
  %25 = load i16, ptr %add.ptr67, align 2
  %conv69 = zext i16 %25 to i32
  %sub70 = sub nsw i32 %conv59, %conv69
  %sub.i201 = tail call i32 @llvm.abs.i32(i32 %sub70, i1 true)
  %cmp72 = icmp slt i32 %sub.i201, %mul25
  br i1 %cmp72, label %if.then74, label %if.end134

if.then74:                                        ; preds = %if.then65
  %add.ptr76 = getelementptr inbounds i16, ptr %imgP.0218, i64 %idx.neg
  %26 = load i16, ptr %add.ptr76, align 2
  %conv78 = zext i16 %26 to i32
  %sub79 = sub nsw i32 %conv60, %conv78
  %sub.i202 = tail call i32 @llvm.abs.i32(i32 %sub79, i1 true)
  %cmp81 = icmp ult i32 %sub.i202, %mul25
  br i1 %cmp81, label %if.then83, label %if.end134

if.then83:                                        ; preds = %if.then74
  %cmp84 = icmp eq i8 %22, 4
  br i1 %cmp84, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.then83
  %shl88 = shl nuw nsw i32 %conv78, 1
  %add90 = add nuw nsw i32 %conv60, 2
  %add92 = add nuw nsw i32 %add90, %conv69
  %add93 = add nuw nsw i32 %add92, %shl88
  %shr94 = lshr i32 %add93, 2
  %conv95 = trunc nuw i32 %shr94 to i16
  store i16 %conv95, ptr %imgP.0218, align 2
  %shl97 = shl nuw nsw i32 %conv69, 1
  %27 = load i16, ptr %imgQ.0217, align 2
  %conv98 = zext i16 %27 to i32
  %add99 = add nuw nsw i32 %shl97, 2
  %add101 = add nuw nsw i32 %add99, %conv78
  %add102 = add nuw nsw i32 %add101, %conv98
  %shr103 = lshr i32 %add102, 2
  br label %if.end134.sink.split

if.else:                                          ; preds = %if.then83
  %idxprom105 = zext i8 %22 to i64
  %arrayidx106 = getelementptr inbounds i8, ptr %arrayidx32, i64 %idxprom105
  %28 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %28 to i32
  %mul108 = mul nsw i32 %5, %conv107
  %29 = shl nsw i32 %sub61, 2
  %30 = add nsw i32 %conv69, -5
  %31 = add nsw i32 %29, %conv78
  %32 = sub nsw i32 %30, %31
  %33 = ashr i32 %32, 3
  %34 = tail call i32 @llvm.smin.i32(i32 %mul108, i32 %33)
  %35 = sub i32 -2, %mul108
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %35)
  %cmp119.not = icmp eq i32 %36, -1
  br i1 %cmp119.not, label %if.end134, label %if.then121

if.then121:                                       ; preds = %if.else
  %cond.i4.i204 = xor i32 %36, -1
  %add123 = add nsw i32 %cond.i4.i204, %conv60
  %cond.i.i205 = tail call noundef i32 @llvm.smax.i32(i32 %add123, i32 0)
  %cond.i4.i206 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i205, i32 %6)
  %conv125 = trunc i32 %cond.i4.i206 to i16
  store i16 %conv125, ptr %imgP.0218, align 2
  %37 = load i16, ptr %imgQ.0217, align 2
  %conv126 = zext i16 %37 to i32
  %sub127 = sub nsw i32 %conv126, %cond.i4.i204
  %cond.i.i207 = tail call noundef i32 @llvm.smax.i32(i32 %sub127, i32 0)
  %cond.i4.i208 = tail call noundef i32 @llvm.smin.i32(i32 %cond.i.i207, i32 %6)
  br label %if.end134.sink.split

if.end134.sink.split:                             ; preds = %if.then121, %if.then86
  %shr103.sink = phi i32 [ %shr103, %if.then86 ], [ %cond.i4.i208, %if.then121 ]
  %conv104 = trunc i32 %shr103.sink to i16
  store i16 %conv104, ptr %imgQ.0217, align 2
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %if.then58, %if.then74, %if.else, %if.then65, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %imgP.0218, i64 2
  %incdec.ptr135 = getelementptr inbounds i8, ptr %imgQ.0217, i64 2
  %inc = add nuw nsw i32 %pel.0219, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %if.end137, label %for.body

if.end137:                                        ; preds = %if.end134, %if.then28, %lor.lhs.false, %if.then
  ret void
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
