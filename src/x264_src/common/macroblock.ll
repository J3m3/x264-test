; ModuleID = 'x264_src/common/macroblock.c'
source_filename = "x264_src/common/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }

@x264_mb_type_fix = internal unnamed_addr constant [19 x i8] c"\00\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@x264_size2pixel = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\00\06\04\00\00", [5 x i8] c"\00\05\03\00\01", [5 x i8] zeroinitializer, [5 x i8] c"\00\00\02\00\00"], align 16
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc_8x8(ptr noundef %h, i32 noundef %i8) local_unnamed_addr #0 {
entry:
  %and = shl i32 %i8, 1
  %mul = and i32 %and, 2
  %mul1 = and i32 %i8, -2
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %0 = load i32, ptr %i_type, align 16
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
  %idxprom = sext i32 %i8 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %i_sub_partition, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  switch i8 %1, label %if.end40 [
    i8 3, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
    i8 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2)
  br label %if.end40

sw.bb2:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 1)
  %add3 = or i32 %i8, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add3, i32 noundef 2, i32 noundef 1)
  br label %if.end40

sw.bb4:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 2)
  %add6 = or disjoint i32 %mul, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add6, i32 noundef %mul1, i32 noundef 1, i32 noundef 2)
  br label %if.end40

sw.bb7:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 1)
  %add10 = or disjoint i32 %mul, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %mul1, i32 noundef 1, i32 noundef 1)
  %add13 = or i32 %i8, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add13, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %add13, i32 noundef 1, i32 noundef 1)
  br label %if.end40

if.else:                                          ; preds = %entry
  %mul17 = shl nsw i32 %i8, 3
  %add16 = or disjoint i32 %mul, %mul17
  %add18 = or i32 %add16, 12
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom21 = sext i32 %add18 to i64
  %arrayidx22 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom21
  %2 = load i8, ptr %arrayidx22, align 1
  %cmp24 = icmp sgt i8 %2, -1
  br i1 %cmp24, label %if.then26, label %if.else38

if.then26:                                        ; preds = %if.else
  %arrayidx30 = getelementptr inbounds i8, ptr %h, i64 25160
  %arrayidx32 = getelementptr inbounds [40 x i8], ptr %arrayidx30, i64 0, i64 %idxprom21
  %3 = load i8, ptr %arrayidx32, align 1
  %cmp34 = icmp sgt i8 %3, -1
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2)
  br label %if.end40

if.else37:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2)
  br label %if.end40

if.else38:                                        ; preds = %if.else
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2)
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.else37, %if.then36, %sw.bb, %sw.bb2, %sw.bb4, %sw.bb7, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_0xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 {
entry:
  %add = add nuw nsw i32 %x, 12
  %mul = shl nsw i32 %y, 3
  %add1 = add nsw i32 %add, %mul
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom = sext i32 %add1 to i64
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %0 to i32
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx7 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx7, align 4
  %conv9 = sext i16 %1 to i32
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440
  %2 = load i32, ptr %mv_min, align 8
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448
  %3 = load i32, ptr %mv_max, align 16
  %cmp.i = icmp sgt i32 %2, %conv9
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3)
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i
  %mul14 = shl nuw nsw i32 %x, 4
  %add15 = add nsw i32 %cond5.i, %mul14
  %arrayidx22 = getelementptr inbounds i8, ptr %arrayidx7, i64 2
  %4 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %4 to i32
  %arrayidx26 = getelementptr inbounds i8, ptr %h, i64 16444
  %5 = load i32, ptr %arrayidx26, align 4
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 16452
  %6 = load i32, ptr %arrayidx29, align 4
  %cmp.i267 = icmp sgt i32 %5, %conv23
  %cond.i268 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %6)
  %cond5.i269 = select i1 %cmp.i267, i32 %5, i32 %cond.i268
  %mul31 = shl nsw i32 %y, 4
  %add32 = add nsw i32 %cond5.i269, %mul31
  %mc = getelementptr inbounds i8, ptr %h, i64 32616
  %7 = load ptr, ptr %mc, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %8 = load ptr, ptr %p_fdec, align 16
  %mul36 = shl nsw i32 %y, 7
  %mul37 = shl nuw nsw i32 %x, 2
  %add38 = add nsw i32 %mul36, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %8, i64 %idxprom39
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424
  %idxprom44 = sext i8 %0 to i64
  %arrayidx45 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom44
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008
  %9 = load i32, ptr %i_stride, align 16
  %mul49 = shl nuw nsw i32 %width, 2
  %mul50 = shl nuw nsw i32 %height, 2
  %weight = getelementptr inbounds i8, ptr %h, i64 7584
  %arrayidx52 = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight, i64 0, i64 %idxprom44
  tail call void %7(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %9, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull %arrayidx52) #13
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %10 = load i32, ptr %b_interlaced, align 4
  %and = and i32 %10, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %11 = load i32, ptr %i_mb_y, align 4
  %and56 = shl i32 %11, 2
  %mul57 = and i32 %and56, 4
  %sub = add i32 %add32, -2
  %add58 = add i32 %sub, %mul57
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add58, %if.then ], [ %add32, %entry ]
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %12 = load ptr, ptr %mc_chroma, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %h, i64 21400
  %13 = load ptr, ptr %arrayidx63, align 8
  %mul65 = shl nsw i32 %y, 6
  %mul66 = shl nuw nsw i32 %x, 1
  %add67 = add nsw i32 %mul65, %mul66
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %13, i64 %idxprom68
  %arrayidx76 = getelementptr inbounds i8, ptr %arrayidx45, i64 32
  %14 = load ptr, ptr %arrayidx76, align 16
  %arrayidx80 = getelementptr inbounds i8, ptr %h, i64 25012
  %15 = load i32, ptr %arrayidx80, align 4
  %mul81 = shl nuw nsw i32 %width, 1
  %mul82 = shl nuw nsw i32 %height, 1
  tail call void %12(ptr noundef %arrayidx69, i32 noundef 32, ptr noundef %14, i32 noundef %15, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #13
  %weightfn = getelementptr inbounds i8, ptr %arrayidx52, i64 112
  %16 = load ptr, ptr %weightfn, align 16
  %tobool88.not = icmp eq ptr %16, null
  br i1 %tobool88.not, label %if.end124, label %if.then89

if.then89:                                        ; preds = %if.end
  %arrayidx87 = getelementptr inbounds i8, ptr %arrayidx52, i64 64
  %shr = lshr i32 %width, 1
  %idxprom96 = zext nneg i32 %shr to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %16, i64 %idxprom96
  %17 = load ptr, ptr %arrayidx97, align 8
  %18 = load ptr, ptr %arrayidx63, align 8
  %arrayidx107 = getelementptr inbounds i8, ptr %18, i64 %idxprom68
  tail call void %17(ptr noundef %arrayidx107, i32 noundef 32, ptr noundef %arrayidx107, i32 noundef 32, ptr noundef nonnull %arrayidx87, i32 noundef %mul82) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then89, %if.end
  %19 = load ptr, ptr %mc_chroma, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %h, i64 21408
  %20 = load ptr, ptr %arrayidx130, align 16
  %arrayidx136 = getelementptr inbounds i8, ptr %20, i64 %idxprom68
  %arrayidx143 = getelementptr inbounds i8, ptr %arrayidx45, i64 40
  %21 = load ptr, ptr %arrayidx143, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %h, i64 25016
  %22 = load i32, ptr %arrayidx147, align 8
  tail call void %19(ptr noundef %arrayidx136, i32 noundef 32, ptr noundef %21, i32 noundef %22, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #13
  %weightfn155 = getelementptr inbounds i8, ptr %arrayidx52, i64 176
  %23 = load ptr, ptr %weightfn155, align 16
  %tobool156.not = icmp eq ptr %23, null
  br i1 %tobool156.not, label %if.end193, label %if.then157

if.then157:                                       ; preds = %if.end124
  %arrayidx154 = getelementptr inbounds i8, ptr %arrayidx52, i64 128
  %shr164 = lshr i32 %width, 1
  %idxprom165 = zext nneg i32 %shr164 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %23, i64 %idxprom165
  %24 = load ptr, ptr %arrayidx166, align 8
  %25 = load ptr, ptr %arrayidx130, align 16
  %arrayidx176 = getelementptr inbounds i8, ptr %25, i64 %idxprom68
  tail call void %24(ptr noundef %arrayidx176, i32 noundef 32, ptr noundef %arrayidx176, i32 noundef 32, ptr noundef nonnull %arrayidx154, i32 noundef %mul82) #13
  br label %if.end193

if.end193:                                        ; preds = %if.then157, %if.end124
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_01xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 {
entry:
  %i_stride0 = alloca i32, align 4
  %i_stride1 = alloca i32, align 4
  %tmp0 = alloca [256 x i8], align 16
  %tmp1 = alloca [256 x i8], align 16
  %add = add nuw nsw i32 %x, 12
  %mul = shl nsw i32 %y, 3
  %add1 = add nsw i32 %add, %mul
  %ref = getelementptr inbounds i8, ptr %h, i64 25120
  %idxprom = sext i32 %add1 to i64
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %0 to i32
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 25160
  %arrayidx8 = getelementptr inbounds [40 x i8], ptr %arrayidx6, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %1 to i32
  %bipred_weight = getelementptr inbounds i8, ptr %h, i64 26624
  %2 = load ptr, ptr %bipred_weight, align 16
  %idxprom11 = sext i8 %0 to i64
  %idxprom13 = sext i8 %1 to i64
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %2, i64 %idxprom11, i64 %idxprom13
  %3 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %3 to i32
  %mv = getelementptr inbounds i8, ptr %h, i64 25200
  %arrayidx20 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom
  %4 = load i16, ptr %arrayidx20, align 4
  %conv22 = sext i16 %4 to i32
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440
  %5 = load i32, ptr %mv_min, align 8
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448
  %6 = load i32, ptr %mv_max, align 16
  %cmp.i = icmp sgt i32 %5, %conv22
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv22, i32 %6)
  %cond5.i = select i1 %cmp.i, i32 %5, i32 %cond.i
  %mul27 = shl nuw nsw i32 %x, 4
  %add28 = add nsw i32 %cond5.i, %mul27
  %arrayidx32 = getelementptr inbounds i8, ptr %h, i64 25360
  %arrayidx34 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx32, i64 0, i64 %idxprom
  %7 = load i16, ptr %arrayidx34, align 4
  %conv36 = sext i16 %7 to i32
  %cmp.i330 = icmp sgt i32 %5, %conv36
  %cond.i331 = tail call i32 @llvm.smin.i32(i32 %conv36, i32 %6)
  %cond5.i332 = select i1 %cmp.i330, i32 %5, i32 %cond.i331
  %add45 = add nsw i32 %cond5.i332, %mul27
  %arrayidx52 = getelementptr inbounds i8, ptr %arrayidx20, i64 2
  %8 = load i16, ptr %arrayidx52, align 2
  %conv53 = sext i16 %8 to i32
  %arrayidx56 = getelementptr inbounds i8, ptr %h, i64 16444
  %9 = load i32, ptr %arrayidx56, align 4
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 16452
  %10 = load i32, ptr %arrayidx59, align 4
  %cmp.i333 = icmp sgt i32 %9, %conv53
  %cond.i334 = tail call i32 @llvm.smin.i32(i32 %conv53, i32 %10)
  %cond5.i335 = select i1 %cmp.i333, i32 %9, i32 %cond.i334
  %mul61 = shl nsw i32 %y, 4
  %add62 = add nsw i32 %cond5.i335, %mul61
  %arrayidx69 = getelementptr inbounds i8, ptr %arrayidx34, i64 2
  %11 = load i16, ptr %arrayidx69, align 2
  %conv70 = sext i16 %11 to i32
  %cmp.i336 = icmp sgt i32 %9, %conv70
  %cond.i337 = tail call i32 @llvm.smin.i32(i32 %conv70, i32 %10)
  %cond5.i338 = select i1 %cmp.i336, i32 %9, i32 %cond.i337
  %add79 = add nsw i32 %cond5.i338, %mul61
  %idxprom80 = zext nneg i32 %height to i64
  %idxprom82 = zext nneg i32 %width to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x i8]], ptr @x264_size2pixel, i64 0, i64 %idxprom80, i64 %idxprom82
  %12 = load i8, ptr %arrayidx83, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride0) #13
  store i32 16, ptr %i_stride0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride1) #13
  store i32 16, ptr %i_stride1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp0) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp1) #13
  %get_ref = getelementptr inbounds i8, ptr %h, i64 32624
  %13 = load ptr, ptr %get_ref, align 8
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424
  %arrayidx88 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom11
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008
  %14 = load i32, ptr %i_stride, align 16
  %mul93 = shl nuw nsw i32 %width, 2
  %mul94 = shl nuw nsw i32 %height, 2
  %call95 = call ptr %13(ptr noundef nonnull %tmp0, ptr noundef nonnull %i_stride0, ptr noundef nonnull %arrayidx88, i32 noundef %14, i32 noundef %add28, i32 noundef %add62, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #13
  %15 = load ptr, ptr %get_ref, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 22960
  %arrayidx104 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx102, i64 0, i64 %idxprom13
  %16 = load i32, ptr %i_stride, align 16
  %call112 = call ptr %15(ptr noundef nonnull %tmp1, ptr noundef nonnull %i_stride1, ptr noundef nonnull %arrayidx104, i32 noundef %16, i32 noundef %add45, i32 noundef %add79, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #13
  %avg = getelementptr inbounds i8, ptr %h, i64 32640
  %idxprom114 = zext i8 %12 to i64
  %arrayidx115 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %idxprom114
  %17 = load ptr, ptr %arrayidx115, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %18 = load ptr, ptr %p_fdec, align 16
  %mul120 = shl nsw i32 %y, 7
  %mul121 = shl nuw nsw i32 %x, 2
  %add122 = add nsw i32 %mul120, %mul121
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %18, i64 %idxprom123
  %19 = load i32, ptr %i_stride0, align 4
  %20 = load i32, ptr %i_stride1, align 4
  call void %17(ptr noundef %arrayidx124, i32 noundef 32, ptr noundef %call95, i32 noundef %19, ptr noundef %call112, i32 noundef %20, i32 noundef %conv15) #13
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %21 = load i32, ptr %b_interlaced, align 4
  %and = and i32 %21, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %22 = load i32, ptr %i_mb_y, align 4
  %and127 = shl i32 %22, 2
  %mul128 = and i32 %and127, 4
  %sub = add i32 %add62, -2
  %add129 = add i32 %sub, %mul128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mvy0.0 = phi i32 [ %add129, %if.then ], [ %add62, %entry ]
  %and132 = and i32 %21, %conv9
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end141, label %if.then134

if.then134:                                       ; preds = %if.end
  %i_mb_y136 = getelementptr inbounds i8, ptr %h, i64 16388
  %23 = load i32, ptr %i_mb_y136, align 4
  %and137 = shl i32 %23, 2
  %mul138 = and i32 %and137, 4
  %sub139 = add i32 %add79, -2
  %add140 = add i32 %sub139, %mul138
  br label %if.end141

if.end141:                                        ; preds = %if.then134, %if.end
  %mvy1.0 = phi i32 [ %add140, %if.then134 ], [ %add79, %if.end ]
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %24 = load ptr, ptr %mc_chroma, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %arrayidx88, i64 32
  %25 = load ptr, ptr %arrayidx150, align 16
  %arrayidx154 = getelementptr inbounds i8, ptr %h, i64 25012
  %26 = load i32, ptr %arrayidx154, align 4
  %mul155 = shl nuw nsw i32 %width, 1
  %mul156 = shl nuw nsw i32 %height, 1
  call void %24(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %25, i32 noundef %26, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #13
  %27 = load ptr, ptr %mc_chroma, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %arrayidx104, i64 32
  %28 = load ptr, ptr %arrayidx166, align 16
  %29 = load i32, ptr %arrayidx154, align 4
  call void %27(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %28, i32 noundef %29, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #13
  %add175 = add nuw nsw i64 %idxprom114, 3
  %arrayidx177 = getelementptr inbounds [10 x ptr], ptr %avg, i64 0, i64 %add175
  %30 = load ptr, ptr %arrayidx177, align 8
  %arrayidx181 = getelementptr inbounds i8, ptr %h, i64 21400
  %31 = load ptr, ptr %arrayidx181, align 8
  %mul183 = shl nsw i32 %y, 6
  %mul184 = shl nuw nsw i32 %x, 1
  %add185 = add nsw i32 %mul183, %mul184
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds i8, ptr %31, i64 %idxprom186
  call void %30(ptr noundef %arrayidx187, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #13
  %32 = load ptr, ptr %mc_chroma, align 8
  %arrayidx199 = getelementptr inbounds i8, ptr %arrayidx88, i64 40
  %33 = load ptr, ptr %arrayidx199, align 8
  %arrayidx203 = getelementptr inbounds i8, ptr %h, i64 25016
  %34 = load i32, ptr %arrayidx203, align 8
  call void %32(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %33, i32 noundef %34, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #13
  %35 = load ptr, ptr %mc_chroma, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %arrayidx104, i64 40
  %36 = load ptr, ptr %arrayidx215, align 8
  %37 = load i32, ptr %arrayidx203, align 8
  call void %35(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %36, i32 noundef %37, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #13
  %38 = load ptr, ptr %arrayidx177, align 8
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 21408
  %39 = load ptr, ptr %arrayidx230, align 16
  %arrayidx236 = getelementptr inbounds i8, ptr %39, i64 %idxprom186
  call void %38(ptr noundef %arrayidx236, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp1) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_1xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 {
entry:
  %add = add nuw nsw i32 %x, 12
  %mul = shl nsw i32 %y, 3
  %add1 = add nsw i32 %add, %mul
  %arrayidx = getelementptr inbounds i8, ptr %h, i64 25160
  %idxprom = sext i32 %add1 to i64
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %arrayidx, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %0 to i32
  %arrayidx5 = getelementptr inbounds i8, ptr %h, i64 25360
  %arrayidx7 = getelementptr inbounds [40 x [2 x i16]], ptr %arrayidx5, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx7, align 4
  %conv9 = sext i16 %1 to i32
  %mv_min = getelementptr inbounds i8, ptr %h, i64 16440
  %2 = load i32, ptr %mv_min, align 8
  %mv_max = getelementptr inbounds i8, ptr %h, i64 16448
  %3 = load i32, ptr %mv_max, align 16
  %cmp.i = icmp sgt i32 %2, %conv9
  %cond.i = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3)
  %cond5.i = select i1 %cmp.i, i32 %2, i32 %cond.i
  %mul14 = shl nuw nsw i32 %x, 4
  %add15 = add nsw i32 %cond5.i, %mul14
  %arrayidx22 = getelementptr inbounds i8, ptr %arrayidx7, i64 2
  %4 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %4 to i32
  %arrayidx26 = getelementptr inbounds i8, ptr %h, i64 16444
  %5 = load i32, ptr %arrayidx26, align 4
  %arrayidx29 = getelementptr inbounds i8, ptr %h, i64 16452
  %6 = load i32, ptr %arrayidx29, align 4
  %cmp.i147 = icmp sgt i32 %5, %conv23
  %cond.i148 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %6)
  %cond5.i149 = select i1 %cmp.i147, i32 %5, i32 %cond.i148
  %mul31 = shl nsw i32 %y, 4
  %add32 = add nsw i32 %cond5.i149, %mul31
  %mc = getelementptr inbounds i8, ptr %h, i64 32616
  %7 = load ptr, ptr %mc, align 8
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %8 = load ptr, ptr %p_fdec, align 16
  %mul36 = shl nsw i32 %y, 7
  %mul37 = shl nuw nsw i32 %x, 2
  %add38 = add nsw i32 %mul36, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %8, i64 %idxprom39
  %arrayidx43 = getelementptr inbounds i8, ptr %h, i64 22960
  %idxprom44 = sext i8 %0 to i64
  %arrayidx45 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx43, i64 0, i64 %idxprom44
  %i_stride = getelementptr inbounds i8, ptr %h, i64 25008
  %9 = load i32, ptr %i_stride, align 16
  %mul49 = shl nuw nsw i32 %width, 2
  %mul50 = shl nuw nsw i32 %height, 2
  tail call void %7(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %9, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull @weight_none) #13
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %10 = load i32, ptr %b_interlaced, align 4
  %and = and i32 %10, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %11 = load i32, ptr %i_mb_y, align 4
  %and53 = shl i32 %11, 2
  %mul54 = and i32 %and53, 4
  %sub = add i32 %add32, -2
  %add55 = add i32 %sub, %mul54
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add55, %if.then ], [ %add32, %entry ]
  %mc_chroma = getelementptr inbounds i8, ptr %h, i64 32632
  %12 = load ptr, ptr %mc_chroma, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %h, i64 21400
  %13 = load ptr, ptr %arrayidx60, align 8
  %mul62 = shl nsw i32 %y, 6
  %mul63 = shl nuw nsw i32 %x, 1
  %add64 = add nsw i32 %mul62, %mul63
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %13, i64 %idxprom65
  %arrayidx73 = getelementptr inbounds i8, ptr %arrayidx45, i64 32
  %14 = load ptr, ptr %arrayidx73, align 16
  %arrayidx77 = getelementptr inbounds i8, ptr %h, i64 25012
  %15 = load i32, ptr %arrayidx77, align 4
  %mul78 = shl nuw nsw i32 %width, 1
  %mul79 = shl nuw nsw i32 %height, 1
  tail call void %12(ptr noundef %arrayidx66, i32 noundef 32, ptr noundef %14, i32 noundef %15, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #13
  %16 = load ptr, ptr %mc_chroma, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %h, i64 21408
  %17 = load ptr, ptr %arrayidx85, align 16
  %arrayidx91 = getelementptr inbounds i8, ptr %17, i64 %idxprom65
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx45, i64 40
  %18 = load ptr, ptr %arrayidx98, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %h, i64 25016
  %19 = load i32, ptr %arrayidx102, align 8
  tail call void %16(ptr noundef %arrayidx91, i32 noundef 32, ptr noundef %18, i32 noundef %19, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %0 = load i32, ptr %i_partition, align 4
  %cmp = icmp eq i32 %0, 13
  br i1 %cmp, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %entry
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 0)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 1)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 2)
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %h, i32 noundef 3)
  br label %if.end94

if.else:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8, ptr %h, i64 25132
  %1 = load i8, ptr %arrayidx3, align 1
  %arrayidx9 = getelementptr inbounds i8, ptr %h, i64 25150
  %2 = load i8, ptr %arrayidx9, align 1
  %arrayidx16 = getelementptr inbounds i8, ptr %h, i64 25172
  %3 = load i8, ptr %arrayidx16, align 1
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 25190
  %4 = load i8, ptr %arrayidx23, align 1
  switch i32 %0, label %if.end94 [
    i32 16, label %if.then29
    i32 14, label %if.then44
    i32 15, label %if.then70
  ]

if.then29:                                        ; preds = %if.else
  %cmp30 = icmp sgt i8 %1, -1
  br i1 %cmp30, label %if.then32, label %if.else37

if.then32:                                        ; preds = %if.then29
  %cmp33 = icmp sgt i8 %3, -1
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %if.end94

if.else36:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %if.end94

if.else37:                                        ; preds = %if.then29
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %if.end94

if.then44:                                        ; preds = %if.else
  %cmp45 = icmp sgt i8 %1, -1
  br i1 %cmp45, label %if.then47, label %if.else53

if.then47:                                        ; preds = %if.then44
  %cmp48 = icmp sgt i8 %3, -1
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %if.end54

if.else51:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %if.end54

if.else53:                                        ; preds = %if.then44
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else51, %if.else53
  %cmp55 = icmp sgt i8 %2, -1
  br i1 %cmp55, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.end54
  %cmp58 = icmp sgt i8 %4, -1
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %if.end94

if.else61:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %if.end94

if.else63:                                        ; preds = %if.end54
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %if.end94

if.then70:                                        ; preds = %if.else
  %cmp71 = icmp sgt i8 %1, -1
  br i1 %cmp71, label %if.then73, label %if.else79

if.then73:                                        ; preds = %if.then70
  %cmp74 = icmp sgt i8 %3, -1
  br i1 %cmp74, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end80

if.else77:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end80

if.else79:                                        ; preds = %if.then70
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.else77, %if.else79
  %cmp81 = icmp sgt i8 %2, -1
  br i1 %cmp81, label %if.then83, label %if.else89

if.then83:                                        ; preds = %if.end80
  %cmp84 = icmp sgt i8 %4, -1
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end94

if.else87:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end94

if.else89:                                        ; preds = %if.end80
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %if.end94

if.end94:                                         ; preds = %for.body.preheader, %if.then35, %if.else36, %if.else37, %if.then86, %if.else87, %if.else89, %if.else63, %if.else61, %if.then60, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_cache_allocate(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %mb = getelementptr inbounds i8, ptr %h, i64 16368
  %0 = load i32, ptr %mb, align 16
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %1 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %1, i64 1084
  %2 = load i32, ptr %i_mb_width, align 4
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  store i32 %2, ptr %i_mb_stride, align 4
  %mul = shl nsw i32 %2, 1
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376
  store i32 %mul, ptr %i_b8_stride, align 8
  %3 = load i32, ptr %i_mb_width, align 4
  %mul8 = shl nsw i32 %3, 2
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380
  store i32 %mul8, ptr %i_b4_stride, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %4 = load i32, ptr %b_interlaced, align 8
  %b_interlaced11 = getelementptr inbounds i8, ptr %h, i64 16436
  store i32 %4, ptr %b_interlaced11, align 4
  %call = tail call ptr @x264_malloc(i32 noundef %0) #13
  %qp = getelementptr inbounds i8, ptr %h, i64 16632
  store ptr %call, ptr %qp, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup346, label %do.body17

do.body17:                                        ; preds = %entry
  %conv = sext i32 %0 to i64
  %mul19 = shl nsw i64 %conv, 1
  %conv20 = trunc i64 %mul19 to i32
  %call21 = tail call ptr @x264_malloc(i32 noundef %conv20) #13
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640
  store ptr %call21, ptr %cbp, align 16
  %tobool25.not = icmp eq ptr %call21, null
  br i1 %tobool25.not, label %cleanup346, label %do.body30

do.body30:                                        ; preds = %do.body17
  %call34 = tail call ptr @x264_malloc(i32 noundef %0) #13
  %skipbp = getelementptr inbounds i8, ptr %h, i64 17232
  store ptr %call34, ptr %skipbp, align 16
  %tobool38.not = icmp eq ptr %call34, null
  br i1 %tobool38.not, label %cleanup346, label %do.body43

do.body43:                                        ; preds = %do.body30
  %call47 = tail call ptr @x264_malloc(i32 noundef %0) #13
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  store ptr %call47, ptr %mb_transform_size, align 8
  %tobool51.not = icmp eq ptr %call47, null
  br i1 %tobool51.not, label %cleanup346, label %do.body56

do.body56:                                        ; preds = %do.body43
  %call60 = tail call ptr @x264_malloc(i32 noundef %conv20) #13
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248
  store ptr %call60, ptr %slice_table, align 16
  %tobool64.not = icmp eq ptr %call60, null
  br i1 %tobool64.not, label %cleanup346, label %do.end68

do.end68:                                         ; preds = %do.body56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call60, i8 -1, i64 %mul19, i1 false)
  %mul74 = shl nsw i32 %0, 3
  %call78 = tail call ptr @x264_malloc(i32 noundef %mul74) #13
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648
  store ptr %call78, ptr %intra4x4_pred_mode, align 8
  %tobool82.not = icmp eq ptr %call78, null
  br i1 %tobool82.not, label %cleanup346, label %do.body87

do.body87:                                        ; preds = %do.end68
  %mul88 = mul nsw i32 %0, 24
  %call92 = tail call ptr @x264_malloc(i32 noundef %mul88) #13
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656
  store ptr %call92, ptr %non_zero_count, align 16
  %tobool96.not = icmp eq ptr %call92, null
  br i1 %tobool96.not, label %cleanup346, label %do.end100

do.end100:                                        ; preds = %do.body87
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %5 = load i32, ptr %b_cabac, align 16
  %tobool102.not = icmp eq i32 %5, 0
  br i1 %tobool102.not, label %cond.end, label %do.body104

do.body104:                                       ; preds = %do.end100
  %call108 = tail call ptr @x264_malloc(i32 noundef %0) #13
  %chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 16664
  store ptr %call108, ptr %chroma_pred_mode, align 8
  %tobool112.not = icmp eq ptr %call108, null
  br i1 %tobool112.not, label %cleanup346, label %do.body117

do.body117:                                       ; preds = %do.body104
  %mul119 = shl i32 %0, 4
  %call121 = tail call ptr @x264_malloc(i32 noundef %mul119) #13
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688
  store ptr %call121, ptr %mvd, align 16
  %tobool126.not = icmp eq ptr %call121, null
  br i1 %tobool126.not, label %cleanup346, label %do.body131

do.body131:                                       ; preds = %do.body117
  %call135 = tail call ptr @x264_malloc(i32 noundef %mul119) #13
  %arrayidx138 = getelementptr inbounds i8, ptr %h, i64 16696
  store ptr %call135, ptr %arrayidx138, align 8
  %tobool142.not = icmp eq ptr %call135, null
  br i1 %tobool142.not, label %cleanup346, label %cond.end

cond.end:                                         ; preds = %do.end100, %do.body131
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %i_bframe_pyramid161 = getelementptr inbounds i8, ptr %h, i64 112
  %mul214 = shl i32 %0, 2
  %mvr = getelementptr inbounds i8, ptr %h, i64 16720
  %i_frame_reference = getelementptr inbounds i8, ptr %h, i64 80
  %6 = load i32, ptr %i_frame_reference, align 16
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 16)
  %7 = load i32, ptr %b_interlaced, align 8
  %shl = shl i32 %spec.select, %7
  %8 = load i32, ptr %i_weighted_pred, align 4
  switch i32 %8, label %if.end204 [
    i32 2, label %if.then180
    i32 1, label %if.then194
  ]

if.then180:                                       ; preds = %cond.end
  %9 = tail call i32 @llvm.smin.i32(i32 %shl, i32 14)
  %cond188 = add nsw i32 %9, 2
  br label %if.end204

if.then194:                                       ; preds = %cond.end
  %10 = tail call i32 @llvm.smin.i32(i32 %shl, i32 15)
  %cond202 = add nsw i32 %10, 1
  br label %if.end204

if.end204:                                        ; preds = %cond.end, %if.then194, %if.then180
  %i_refs.0 = phi i32 [ %cond188, %if.then180 ], [ %cond202, %if.then194 ], [ %shl, %cond.end ]
  %cmp209.not451 = icmp sgt i32 %i_refs.0, 1
  br i1 %cmp209.not451, label %do.body213.lr.ph, label %cond.end173.1

do.body213.lr.ph:                                 ; preds = %if.end204
  %wide.trip.count = zext nneg i32 %i_refs.0 to i64
  br label %do.body213

for.cond208:                                      ; preds = %do.body213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cond.end173.1, label %do.body213

do.body213:                                       ; preds = %do.body213.lr.ph, %for.cond208
  %indvars.iv = phi i64 [ 1, %do.body213.lr.ph ], [ %indvars.iv.next, %for.cond208 ]
  %call218 = tail call ptr @x264_malloc(i32 noundef %mul214) #13
  %arrayidx222 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr, i64 0, i64 0, i64 %indvars.iv
  store ptr %call218, ptr %arrayidx222, align 8
  %tobool229.not = icmp eq ptr %call218, null
  br i1 %tobool229.not, label %cleanup346, label %for.cond208

cond.end173.1:                                    ; preds = %for.cond208, %if.end204
  %11 = load i32, ptr %i_bframe_pyramid161, align 16
  %tobool162.not.1 = icmp eq i32 %11, 0
  %add167.1 = select i1 %tobool162.not.1, i32 1, i32 2
  %12 = load i32, ptr %b_interlaced, align 8
  %shl.1 = shl i32 %add167.1, %12
  %13 = load i32, ptr %i_weighted_pred, align 4
  switch i32 %13, label %if.end204.1 [
    i32 2, label %if.then180.1
    i32 1, label %if.then194.1
  ]

if.then194.1:                                     ; preds = %cond.end173.1
  %14 = tail call i32 @llvm.smin.i32(i32 %shl.1, i32 15)
  %cond202.1 = add nsw i32 %14, 1
  br label %if.end204.1

if.then180.1:                                     ; preds = %cond.end173.1
  %15 = tail call i32 @llvm.smin.i32(i32 %shl.1, i32 14)
  %cond188.1 = add nsw i32 %15, 2
  br label %if.end204.1

if.end204.1:                                      ; preds = %if.then180.1, %if.then194.1, %cond.end173.1
  %i_refs.0.1 = phi i32 [ %cond188.1, %if.then180.1 ], [ %cond202.1, %if.then194.1 ], [ %shl.1, %cond.end173.1 ]
  %cmp209.not451.1 = icmp sgt i32 %i_refs.0.1, 0
  br i1 %cmp209.not451.1, label %do.body213.lr.ph.1, label %for.inc236.1

do.body213.lr.ph.1:                               ; preds = %if.end204.1
  %wide.trip.count.1 = zext nneg i32 %i_refs.0.1 to i64
  br label %do.body213.1

do.body213.1:                                     ; preds = %for.cond208.1, %do.body213.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %do.body213.lr.ph.1 ], [ %indvars.iv.next.1, %for.cond208.1 ]
  %call218.1 = tail call ptr @x264_malloc(i32 noundef %mul214) #13
  %arrayidx222.1 = getelementptr inbounds [2 x [32 x ptr]], ptr %mvr, i64 0, i64 1, i64 %indvars.iv.1
  store ptr %call218.1, ptr %arrayidx222.1, align 8
  %tobool229.not.1 = icmp eq ptr %call218.1, null
  br i1 %tobool229.not.1, label %cleanup346, label %for.cond208.1

for.cond208.1:                                    ; preds = %do.body213.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %for.inc236.loopexit.1, label %do.body213.1

for.inc236.loopexit.1:                            ; preds = %for.cond208.1
  %.pre = load i32, ptr %i_weighted_pred, align 4
  br label %for.inc236.1

for.inc236.1:                                     ; preds = %for.inc236.loopexit.1, %if.end204.1
  %16 = phi i32 [ %.pre, %for.inc236.loopexit.1 ], [ %13, %if.end204.1 ]
  %tobool244.not = icmp eq i32 %16, 0
  br i1 %tobool244.not, label %cleanup346, label %if.then245

if.then245:                                       ; preds = %for.inc236.1
  %17 = load i32, ptr %b_interlaced, align 8
  %18 = load i32, ptr %h, align 16
  %and = and i32 %18, 2
  %tobool250.not = icmp eq i32 %and, 0
  %and255 = and i32 %18, 1
  %tobool256.not = icmp eq i32 %and255, 0
  %cond257 = select i1 %tobool256.not, i32 16, i32 32
  %cond259 = select i1 %tobool250.not, i32 %cond257, i32 64
  %cmp263 = icmp eq i32 %16, -1
  br i1 %cmp263, label %if.then265, label %if.else288

if.then265:                                       ; preds = %if.then245
  %i_sync_lookahead = getelementptr inbounds i8, ptr %h, i64 16
  %19 = load i32, ptr %i_sync_lookahead, align 16
  %tobool267.not = icmp eq i32 %19, 0
  br i1 %tobool267.not, label %if.then273, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then265
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %i_threads = getelementptr inbounds i8, ptr %h, i64 4
  %20 = load i32, ptr %i_threads, align 4
  %idxprom269 = sext i32 %20 to i64
  %arrayidx270 = getelementptr inbounds [129 x ptr], ptr %thread, i64 0, i64 %idxprom269
  %21 = load ptr, ptr %arrayidx270, align 8
  %cmp271 = icmp eq ptr %21, %h
  br i1 %cmp271, label %if.then273, label %cleanup346

if.then273:                                       ; preds = %lor.lhs.false, %if.then265
  %22 = load ptr, ptr %sps, align 16
  %i_mb_width275 = getelementptr inbounds i8, ptr %22, i64 1084
  %23 = load i32, ptr %i_mb_width275, align 4
  %mul276 = shl nsw i32 %23, 3
  %sub = add nuw nsw i32 %cond259, 63
  %add278 = add i32 %sub, %mul276
  %not = sub nsw i32 0, %cond259
  %and280 = and i32 %add278, %not
  %i_mb_height = getelementptr inbounds i8, ptr %22, i64 1088
  %24 = load i32, ptr %i_mb_height, align 4
  %mul282 = shl nsw i32 %24, 3
  %mul283 = shl i32 64, %17
  %add284 = add nsw i32 %mul282, %mul283
  %mul285 = mul nsw i32 %and280, %add284
  br label %do.body319.lr.ph

if.else288:                                       ; preds = %if.then245
  %25 = load ptr, ptr %sps, align 16
  %i_mb_width290 = getelementptr inbounds i8, ptr %25, i64 1084
  %26 = load i32, ptr %i_mb_width290, align 4
  %mul291 = shl nsw i32 %26, 4
  %sub293 = add nuw nsw i32 %cond259, 63
  %add294 = add i32 %sub293, %mul291
  %not296 = sub nsw i32 0, %cond259
  %and297 = and i32 %add294, %not296
  %i_mb_height299 = getelementptr inbounds i8, ptr %25, i64 1088
  %27 = load i32, ptr %i_mb_height299, align 4
  %mul300 = shl nsw i32 %27, 4
  %mul301 = shl i32 64, %17
  %add302 = add nsw i32 %mul300, %mul301
  %mul303 = mul nsw i32 %and297, %add302
  %cmp307 = icmp eq i32 %16, 2
  %. = select i1 %cmp307, i64 2, i64 1
  br label %do.body319.lr.ph

do.body319.lr.ph:                                 ; preds = %if.then273, %if.else288
  %luma_plane_size.0.ph = phi i32 [ %mul303, %if.else288 ], [ %mul285, %if.then273 ]
  %numweightbuf.0.ph = phi i64 [ %., %if.else288 ], [ 1, %if.then273 ]
  %p_weight_buf = getelementptr inbounds i8, ptr %h, i64 17256
  br label %do.body319

for.cond314:                                      ; preds = %do.body319
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %numweightbuf.0.ph
  br i1 %exitcond467.not, label %cleanup346, label %do.body319

do.body319:                                       ; preds = %do.body319.lr.ph, %for.cond314
  %indvars.iv463 = phi i64 [ 0, %do.body319.lr.ph ], [ %indvars.iv.next464, %for.cond314 ]
  %call320 = tail call ptr @x264_malloc(i32 noundef %luma_plane_size.0.ph) #13
  %arrayidx323 = getelementptr inbounds [16 x ptr], ptr %p_weight_buf, i64 0, i64 %indvars.iv463
  store ptr %call320, ptr %arrayidx323, align 8
  %tobool328.not = icmp eq ptr %call320, null
  br i1 %tobool328.not, label %cleanup346, label %for.cond314

cleanup346:                                       ; preds = %do.body213, %do.body213.1, %do.body319, %for.cond314, %lor.lhs.false, %entry, %do.body17, %do.body30, %do.body43, %do.body56, %do.end68, %do.body87, %do.body104, %do.body117, %do.body131, %for.inc236.1
  %retval.0 = phi i32 [ 0, %for.inc236.1 ], [ -1, %do.body131 ], [ -1, %do.body117 ], [ -1, %do.body104 ], [ -1, %do.body87 ], [ -1, %do.end68 ], [ -1, %do.body56 ], [ -1, %do.body43 ], [ -1, %do.body30 ], [ -1, %do.body17 ], [ -1, %entry ], [ 0, %lor.lhs.false ], [ -1, %do.body319 ], [ 0, %for.cond314 ], [ -1, %do.body213.1 ], [ -1, %do.body213 ]
  ret i32 %retval.0
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_free(ptr nocapture noundef readonly %h) local_unnamed_addr #0 {
for.cond.cleanup3.1:
  %arrayidx6 = getelementptr inbounds i8, ptr %h, i64 16728
  %0 = load ptr, ptr %arrayidx6, align 8
  tail call void @x264_free(ptr noundef %0) #13
  %arrayidx6.162 = getelementptr inbounds i8, ptr %h, i64 16736
  %1 = load ptr, ptr %arrayidx6.162, align 8
  tail call void @x264_free(ptr noundef %1) #13
  %arrayidx6.2 = getelementptr inbounds i8, ptr %h, i64 16744
  %2 = load ptr, ptr %arrayidx6.2, align 8
  tail call void @x264_free(ptr noundef %2) #13
  %arrayidx6.3 = getelementptr inbounds i8, ptr %h, i64 16752
  %3 = load ptr, ptr %arrayidx6.3, align 8
  tail call void @x264_free(ptr noundef %3) #13
  %arrayidx6.4 = getelementptr inbounds i8, ptr %h, i64 16760
  %4 = load ptr, ptr %arrayidx6.4, align 8
  tail call void @x264_free(ptr noundef %4) #13
  %arrayidx6.5 = getelementptr inbounds i8, ptr %h, i64 16768
  %5 = load ptr, ptr %arrayidx6.5, align 8
  tail call void @x264_free(ptr noundef %5) #13
  %arrayidx6.6 = getelementptr inbounds i8, ptr %h, i64 16776
  %6 = load ptr, ptr %arrayidx6.6, align 8
  tail call void @x264_free(ptr noundef %6) #13
  %arrayidx6.7 = getelementptr inbounds i8, ptr %h, i64 16784
  %7 = load ptr, ptr %arrayidx6.7, align 8
  tail call void @x264_free(ptr noundef %7) #13
  %arrayidx6.8 = getelementptr inbounds i8, ptr %h, i64 16792
  %8 = load ptr, ptr %arrayidx6.8, align 8
  tail call void @x264_free(ptr noundef %8) #13
  %arrayidx6.9 = getelementptr inbounds i8, ptr %h, i64 16800
  %9 = load ptr, ptr %arrayidx6.9, align 8
  tail call void @x264_free(ptr noundef %9) #13
  %arrayidx6.10 = getelementptr inbounds i8, ptr %h, i64 16808
  %10 = load ptr, ptr %arrayidx6.10, align 8
  tail call void @x264_free(ptr noundef %10) #13
  %arrayidx6.11 = getelementptr inbounds i8, ptr %h, i64 16816
  %11 = load ptr, ptr %arrayidx6.11, align 8
  tail call void @x264_free(ptr noundef %11) #13
  %arrayidx6.12 = getelementptr inbounds i8, ptr %h, i64 16824
  %12 = load ptr, ptr %arrayidx6.12, align 8
  tail call void @x264_free(ptr noundef %12) #13
  %arrayidx6.13 = getelementptr inbounds i8, ptr %h, i64 16832
  %13 = load ptr, ptr %arrayidx6.13, align 8
  tail call void @x264_free(ptr noundef %13) #13
  %arrayidx6.14 = getelementptr inbounds i8, ptr %h, i64 16840
  %14 = load ptr, ptr %arrayidx6.14, align 8
  tail call void @x264_free(ptr noundef %14) #13
  %arrayidx6.15 = getelementptr inbounds i8, ptr %h, i64 16848
  %15 = load ptr, ptr %arrayidx6.15, align 8
  tail call void @x264_free(ptr noundef %15) #13
  %arrayidx6.16 = getelementptr inbounds i8, ptr %h, i64 16856
  %16 = load ptr, ptr %arrayidx6.16, align 8
  tail call void @x264_free(ptr noundef %16) #13
  %arrayidx6.17 = getelementptr inbounds i8, ptr %h, i64 16864
  %17 = load ptr, ptr %arrayidx6.17, align 8
  tail call void @x264_free(ptr noundef %17) #13
  %arrayidx6.18 = getelementptr inbounds i8, ptr %h, i64 16872
  %18 = load ptr, ptr %arrayidx6.18, align 8
  tail call void @x264_free(ptr noundef %18) #13
  %arrayidx6.19 = getelementptr inbounds i8, ptr %h, i64 16880
  %19 = load ptr, ptr %arrayidx6.19, align 8
  tail call void @x264_free(ptr noundef %19) #13
  %arrayidx6.20 = getelementptr inbounds i8, ptr %h, i64 16888
  %20 = load ptr, ptr %arrayidx6.20, align 8
  tail call void @x264_free(ptr noundef %20) #13
  %arrayidx6.21 = getelementptr inbounds i8, ptr %h, i64 16896
  %21 = load ptr, ptr %arrayidx6.21, align 8
  tail call void @x264_free(ptr noundef %21) #13
  %arrayidx6.22 = getelementptr inbounds i8, ptr %h, i64 16904
  %22 = load ptr, ptr %arrayidx6.22, align 8
  tail call void @x264_free(ptr noundef %22) #13
  %arrayidx6.23 = getelementptr inbounds i8, ptr %h, i64 16912
  %23 = load ptr, ptr %arrayidx6.23, align 8
  tail call void @x264_free(ptr noundef %23) #13
  %arrayidx6.24 = getelementptr inbounds i8, ptr %h, i64 16920
  %24 = load ptr, ptr %arrayidx6.24, align 8
  tail call void @x264_free(ptr noundef %24) #13
  %arrayidx6.25 = getelementptr inbounds i8, ptr %h, i64 16928
  %25 = load ptr, ptr %arrayidx6.25, align 8
  tail call void @x264_free(ptr noundef %25) #13
  %arrayidx6.26 = getelementptr inbounds i8, ptr %h, i64 16936
  %26 = load ptr, ptr %arrayidx6.26, align 8
  tail call void @x264_free(ptr noundef %26) #13
  %arrayidx6.27 = getelementptr inbounds i8, ptr %h, i64 16944
  %27 = load ptr, ptr %arrayidx6.27, align 8
  tail call void @x264_free(ptr noundef %27) #13
  %arrayidx6.28 = getelementptr inbounds i8, ptr %h, i64 16952
  %28 = load ptr, ptr %arrayidx6.28, align 8
  tail call void @x264_free(ptr noundef %28) #13
  %arrayidx6.29 = getelementptr inbounds i8, ptr %h, i64 16960
  %29 = load ptr, ptr %arrayidx6.29, align 8
  tail call void @x264_free(ptr noundef %29) #13
  %arrayidx6.30 = getelementptr inbounds i8, ptr %h, i64 16968
  %30 = load ptr, ptr %arrayidx6.30, align 8
  tail call void @x264_free(ptr noundef %30) #13
  %arrayidx6.1 = getelementptr inbounds i8, ptr %h, i64 16976
  %31 = load ptr, ptr %arrayidx6.1, align 8
  tail call void @x264_free(ptr noundef %31) #13
  %arrayidx6.1.1 = getelementptr inbounds i8, ptr %h, i64 16984
  %32 = load ptr, ptr %arrayidx6.1.1, align 8
  tail call void @x264_free(ptr noundef %32) #13
  %arrayidx6.1.2 = getelementptr inbounds i8, ptr %h, i64 16992
  %33 = load ptr, ptr %arrayidx6.1.2, align 8
  tail call void @x264_free(ptr noundef %33) #13
  %arrayidx6.1.3 = getelementptr inbounds i8, ptr %h, i64 17000
  %34 = load ptr, ptr %arrayidx6.1.3, align 8
  tail call void @x264_free(ptr noundef %34) #13
  %arrayidx6.1.4 = getelementptr inbounds i8, ptr %h, i64 17008
  %35 = load ptr, ptr %arrayidx6.1.4, align 8
  tail call void @x264_free(ptr noundef %35) #13
  %arrayidx6.1.5 = getelementptr inbounds i8, ptr %h, i64 17016
  %36 = load ptr, ptr %arrayidx6.1.5, align 8
  tail call void @x264_free(ptr noundef %36) #13
  %arrayidx6.1.6 = getelementptr inbounds i8, ptr %h, i64 17024
  %37 = load ptr, ptr %arrayidx6.1.6, align 8
  tail call void @x264_free(ptr noundef %37) #13
  %arrayidx6.1.7 = getelementptr inbounds i8, ptr %h, i64 17032
  %38 = load ptr, ptr %arrayidx6.1.7, align 8
  tail call void @x264_free(ptr noundef %38) #13
  %arrayidx6.1.8 = getelementptr inbounds i8, ptr %h, i64 17040
  %39 = load ptr, ptr %arrayidx6.1.8, align 8
  tail call void @x264_free(ptr noundef %39) #13
  %arrayidx6.1.9 = getelementptr inbounds i8, ptr %h, i64 17048
  %40 = load ptr, ptr %arrayidx6.1.9, align 8
  tail call void @x264_free(ptr noundef %40) #13
  %arrayidx6.1.10 = getelementptr inbounds i8, ptr %h, i64 17056
  %41 = load ptr, ptr %arrayidx6.1.10, align 8
  tail call void @x264_free(ptr noundef %41) #13
  %arrayidx6.1.11 = getelementptr inbounds i8, ptr %h, i64 17064
  %42 = load ptr, ptr %arrayidx6.1.11, align 8
  tail call void @x264_free(ptr noundef %42) #13
  %arrayidx6.1.12 = getelementptr inbounds i8, ptr %h, i64 17072
  %43 = load ptr, ptr %arrayidx6.1.12, align 8
  tail call void @x264_free(ptr noundef %43) #13
  %arrayidx6.1.13 = getelementptr inbounds i8, ptr %h, i64 17080
  %44 = load ptr, ptr %arrayidx6.1.13, align 8
  tail call void @x264_free(ptr noundef %44) #13
  %arrayidx6.1.14 = getelementptr inbounds i8, ptr %h, i64 17088
  %45 = load ptr, ptr %arrayidx6.1.14, align 8
  tail call void @x264_free(ptr noundef %45) #13
  %arrayidx6.1.15 = getelementptr inbounds i8, ptr %h, i64 17096
  %46 = load ptr, ptr %arrayidx6.1.15, align 8
  tail call void @x264_free(ptr noundef %46) #13
  %arrayidx6.1.16 = getelementptr inbounds i8, ptr %h, i64 17104
  %47 = load ptr, ptr %arrayidx6.1.16, align 8
  tail call void @x264_free(ptr noundef %47) #13
  %arrayidx6.1.17 = getelementptr inbounds i8, ptr %h, i64 17112
  %48 = load ptr, ptr %arrayidx6.1.17, align 8
  tail call void @x264_free(ptr noundef %48) #13
  %arrayidx6.1.18 = getelementptr inbounds i8, ptr %h, i64 17120
  %49 = load ptr, ptr %arrayidx6.1.18, align 8
  tail call void @x264_free(ptr noundef %49) #13
  %arrayidx6.1.19 = getelementptr inbounds i8, ptr %h, i64 17128
  %50 = load ptr, ptr %arrayidx6.1.19, align 8
  tail call void @x264_free(ptr noundef %50) #13
  %arrayidx6.1.20 = getelementptr inbounds i8, ptr %h, i64 17136
  %51 = load ptr, ptr %arrayidx6.1.20, align 8
  tail call void @x264_free(ptr noundef %51) #13
  %arrayidx6.1.21 = getelementptr inbounds i8, ptr %h, i64 17144
  %52 = load ptr, ptr %arrayidx6.1.21, align 8
  tail call void @x264_free(ptr noundef %52) #13
  %arrayidx6.1.22 = getelementptr inbounds i8, ptr %h, i64 17152
  %53 = load ptr, ptr %arrayidx6.1.22, align 8
  tail call void @x264_free(ptr noundef %53) #13
  %arrayidx6.1.23 = getelementptr inbounds i8, ptr %h, i64 17160
  %54 = load ptr, ptr %arrayidx6.1.23, align 8
  tail call void @x264_free(ptr noundef %54) #13
  %arrayidx6.1.24 = getelementptr inbounds i8, ptr %h, i64 17168
  %55 = load ptr, ptr %arrayidx6.1.24, align 8
  tail call void @x264_free(ptr noundef %55) #13
  %arrayidx6.1.25 = getelementptr inbounds i8, ptr %h, i64 17176
  %56 = load ptr, ptr %arrayidx6.1.25, align 8
  tail call void @x264_free(ptr noundef %56) #13
  %arrayidx6.1.26 = getelementptr inbounds i8, ptr %h, i64 17184
  %57 = load ptr, ptr %arrayidx6.1.26, align 8
  tail call void @x264_free(ptr noundef %57) #13
  %arrayidx6.1.27 = getelementptr inbounds i8, ptr %h, i64 17192
  %58 = load ptr, ptr %arrayidx6.1.27, align 8
  tail call void @x264_free(ptr noundef %58) #13
  %arrayidx6.1.28 = getelementptr inbounds i8, ptr %h, i64 17200
  %59 = load ptr, ptr %arrayidx6.1.28, align 8
  tail call void @x264_free(ptr noundef %59) #13
  %arrayidx6.1.29 = getelementptr inbounds i8, ptr %h, i64 17208
  %60 = load ptr, ptr %arrayidx6.1.29, align 8
  tail call void @x264_free(ptr noundef %60) #13
  %arrayidx6.1.30 = getelementptr inbounds i8, ptr %h, i64 17216
  %61 = load ptr, ptr %arrayidx6.1.30, align 8
  tail call void @x264_free(ptr noundef %61) #13
  %arrayidx6.1.31 = getelementptr inbounds i8, ptr %h, i64 17224
  %62 = load ptr, ptr %arrayidx6.1.31, align 8
  tail call void @x264_free(ptr noundef %62) #13
  %p_weight_buf = getelementptr inbounds i8, ptr %h, i64 17256
  %63 = load ptr, ptr %p_weight_buf, align 8
  tail call void @x264_free(ptr noundef %63) #13
  %arrayidx17.1 = getelementptr inbounds i8, ptr %h, i64 17264
  %64 = load ptr, ptr %arrayidx17.1, align 8
  tail call void @x264_free(ptr noundef %64) #13
  %arrayidx17.2 = getelementptr inbounds i8, ptr %h, i64 17272
  %65 = load ptr, ptr %arrayidx17.2, align 8
  tail call void @x264_free(ptr noundef %65) #13
  %arrayidx17.3 = getelementptr inbounds i8, ptr %h, i64 17280
  %66 = load ptr, ptr %arrayidx17.3, align 8
  tail call void @x264_free(ptr noundef %66) #13
  %arrayidx17.4 = getelementptr inbounds i8, ptr %h, i64 17288
  %67 = load ptr, ptr %arrayidx17.4, align 8
  tail call void @x264_free(ptr noundef %67) #13
  %arrayidx17.5 = getelementptr inbounds i8, ptr %h, i64 17296
  %68 = load ptr, ptr %arrayidx17.5, align 8
  tail call void @x264_free(ptr noundef %68) #13
  %arrayidx17.6 = getelementptr inbounds i8, ptr %h, i64 17304
  %69 = load ptr, ptr %arrayidx17.6, align 8
  tail call void @x264_free(ptr noundef %69) #13
  %arrayidx17.7 = getelementptr inbounds i8, ptr %h, i64 17312
  %70 = load ptr, ptr %arrayidx17.7, align 8
  tail call void @x264_free(ptr noundef %70) #13
  %arrayidx17.8 = getelementptr inbounds i8, ptr %h, i64 17320
  %71 = load ptr, ptr %arrayidx17.8, align 8
  tail call void @x264_free(ptr noundef %71) #13
  %arrayidx17.9 = getelementptr inbounds i8, ptr %h, i64 17328
  %72 = load ptr, ptr %arrayidx17.9, align 8
  tail call void @x264_free(ptr noundef %72) #13
  %arrayidx17.10 = getelementptr inbounds i8, ptr %h, i64 17336
  %73 = load ptr, ptr %arrayidx17.10, align 8
  tail call void @x264_free(ptr noundef %73) #13
  %arrayidx17.11 = getelementptr inbounds i8, ptr %h, i64 17344
  %74 = load ptr, ptr %arrayidx17.11, align 8
  tail call void @x264_free(ptr noundef %74) #13
  %arrayidx17.12 = getelementptr inbounds i8, ptr %h, i64 17352
  %75 = load ptr, ptr %arrayidx17.12, align 8
  tail call void @x264_free(ptr noundef %75) #13
  %arrayidx17.13 = getelementptr inbounds i8, ptr %h, i64 17360
  %76 = load ptr, ptr %arrayidx17.13, align 8
  tail call void @x264_free(ptr noundef %76) #13
  %arrayidx17.14 = getelementptr inbounds i8, ptr %h, i64 17368
  %77 = load ptr, ptr %arrayidx17.14, align 8
  tail call void @x264_free(ptr noundef %77) #13
  %arrayidx17.15 = getelementptr inbounds i8, ptr %h, i64 17376
  %78 = load ptr, ptr %arrayidx17.15, align 8
  tail call void @x264_free(ptr noundef %78) #13
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %79 = load i32, ptr %b_cabac, align 16
  %tobool21.not = icmp eq i32 %79, 0
  br i1 %tobool21.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond.cleanup3.1
  %chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 16664
  %80 = load ptr, ptr %chroma_pred_mode, align 8
  tail call void @x264_free(ptr noundef %80) #13
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688
  %81 = load ptr, ptr %mvd, align 16
  tail call void @x264_free(ptr noundef %81) #13
  %arrayidx27 = getelementptr inbounds i8, ptr %h, i64 16696
  %82 = load ptr, ptr %arrayidx27, align 8
  tail call void @x264_free(ptr noundef %82) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.cleanup3.1
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248
  %83 = load ptr, ptr %slice_table, align 16
  tail call void @x264_free(ptr noundef %83) #13
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648
  %84 = load ptr, ptr %intra4x4_pred_mode, align 8
  tail call void @x264_free(ptr noundef %84) #13
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656
  %85 = load ptr, ptr %non_zero_count, align 16
  tail call void @x264_free(ptr noundef %85) #13
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  %86 = load ptr, ptr %mb_transform_size, align 8
  tail call void @x264_free(ptr noundef %86) #13
  %skipbp = getelementptr inbounds i8, ptr %h, i64 17232
  %87 = load ptr, ptr %skipbp, align 16
  tail call void @x264_free(ptr noundef %87) #13
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640
  %88 = load ptr, ptr %cbp, align 16
  tail call void @x264_free(ptr noundef %88) #13
  %qp = getelementptr inbounds i8, ptr %h, i64 16632
  %89 = load ptr, ptr %qp, align 8
  tail call void @x264_free(ptr noundef %89) #13
  ret void
}

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @x264_macroblock_thread_allocate(ptr nocapture noundef %h, i32 noundef %b_lookahead) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %b_lookahead, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end165_crit_edge

entry.if.end165_crit_edge:                        ; preds = %entry
  %sps167.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 3200
  %.pre = load ptr, ptr %sps167.phi.trans.insert, align 16
  %i_mb_width168.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 1084
  %.pre264 = load i32, ptr %i_mb_width168.phi.trans.insert, align 4
  br label %if.end165

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %0 = load i32, ptr %b_interlaced, align 8
  %cmp.not259 = icmp slt i32 %0, 0
  br i1 %cmp.not259, label %if.then63, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sps = getelementptr inbounds i8, ptr %h, i64 3200
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  br label %for.cond1.preheader

for.cond:                                         ; preds = %do.end.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %b_interlaced, align 8
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.cond1.preheader, label %if.then63

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %3 = load ptr, ptr %sps, align 16
  %i_mb_width = getelementptr inbounds i8, ptr %3, i64 1084
  %4 = load i32, ptr %i_mb_width, align 4
  %mul = shl nsw i32 %4, 4
  %add = add nsw i32 %mul, 32
  %call = tail call ptr @x264_malloc(i32 noundef %add) #13
  %arrayidx9 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 0
  store ptr %call, ptr %arrayidx9, align 8
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %fail, label %do.end

do.end:                                           ; preds = %for.cond1.preheader
  %5 = load ptr, ptr %sps, align 16
  %i_mb_width23 = getelementptr inbounds i8, ptr %5, i64 1084
  %6 = load i32, ptr %i_mb_width23, align 4
  %mul24 = shl nsw i32 %6, 4
  %add25 = add nsw i32 %mul24, 32
  %conv = sext i32 %add25 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call, i8 0, i64 %conv, i1 false)
  %7 = load ptr, ptr %arrayidx9, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %add.ptr, ptr %arrayidx9, align 8
  %8 = load ptr, ptr %sps, align 16
  %i_mb_width.1 = getelementptr inbounds i8, ptr %8, i64 1084
  %9 = load i32, ptr %i_mb_width.1, align 4
  %mul.1 = shl nsw i32 %9, 4
  %add.1 = add nsw i32 %mul.1, 32
  %shr.1 = ashr exact i32 %add.1, 1
  %call.1 = tail call ptr @x264_malloc(i32 noundef %shr.1) #13
  %arrayidx9.1 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 1
  store ptr %call.1, ptr %arrayidx9.1, align 8
  %tobool15.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool15.not.1, label %fail, label %do.end.1

do.end.1:                                         ; preds = %do.end
  %10 = load ptr, ptr %sps, align 16
  %i_mb_width23.1 = getelementptr inbounds i8, ptr %10, i64 1084
  %11 = load i32, ptr %i_mb_width23.1, align 4
  %mul24.1 = shl nsw i32 %11, 4
  %add25.1 = add nsw i32 %mul24.1, 32
  %shr31.1 = ashr exact i32 %add25.1, 1
  %conv.1 = sext i32 %shr31.1 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call.1, i8 0, i64 %conv.1, i1 false)
  %12 = load ptr, ptr %arrayidx9.1, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %12, i64 8
  store ptr %add.ptr.1, ptr %arrayidx9.1, align 8
  %13 = load ptr, ptr %sps, align 16
  %i_mb_width.2 = getelementptr inbounds i8, ptr %13, i64 1084
  %14 = load i32, ptr %i_mb_width.2, align 4
  %mul.2 = shl nsw i32 %14, 4
  %add.2 = add nsw i32 %mul.2, 32
  %shr.2 = ashr exact i32 %add.2, 1
  %call.2 = tail call ptr @x264_malloc(i32 noundef %shr.2) #13
  %arrayidx9.2 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 2
  store ptr %call.2, ptr %arrayidx9.2, align 8
  %tobool15.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool15.not.2, label %fail, label %do.end.2

do.end.2:                                         ; preds = %do.end.1
  %15 = load ptr, ptr %sps, align 16
  %i_mb_width23.2 = getelementptr inbounds i8, ptr %15, i64 1084
  %16 = load i32, ptr %i_mb_width23.2, align 4
  %mul24.2 = shl nsw i32 %16, 4
  %add25.2 = add nsw i32 %mul24.2, 32
  %shr31.2 = ashr exact i32 %add25.2, 1
  %conv.2 = sext i32 %shr31.2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call.2, i8 0, i64 %conv.2, i1 false)
  %17 = load ptr, ptr %arrayidx9.2, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %add.ptr.2, ptr %arrayidx9.2, align 8
  %18 = load ptr, ptr %sps, align 16
  %i_mb_width41 = getelementptr inbounds i8, ptr %18, i64 1084
  %19 = load i32, ptr %i_mb_width41, align 4
  %mul43 = shl i32 %19, 5
  %call45 = tail call ptr @x264_malloc(i32 noundef %mul43) #13
  %arrayidx47 = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %indvars.iv
  store ptr %call45, ptr %arrayidx47, align 8
  %tobool51.not = icmp eq ptr %call45, null
  br i1 %tobool51.not, label %fail, label %for.cond

if.then63:                                        ; preds = %for.cond, %for.cond.preheader
  %thread = getelementptr inbounds i8, ptr %h, i64 704
  %20 = load ptr, ptr %thread, align 16
  %fdec = getelementptr inbounds i8, ptr %20, i64 14688
  %21 = load ptr, ptr %fdec, align 16
  %i_width = getelementptr inbounds i8, ptr %21, i64 116
  %22 = load i32, ptr %i_width, align 4
  %add66 = shl i32 %22, 1
  %mul68 = add i32 %add66, 96
  %b_ssim = getelementptr inbounds i8, ptr %h, i64 480
  %23 = load i32, ptr %b_ssim, align 16
  %i_width73 = getelementptr inbounds i8, ptr %h, i64 20
  %24 = load i32, ptr %i_width73, align 4
  %div = sdiv i32 %24, 4
  %add74 = add nsw i32 %div, 3
  %mul75 = shl i32 %23, 5
  %mul77 = mul i32 %mul75, %add74
  %i_me_range = getelementptr inbounds i8, ptr %h, i64 416
  %25 = load i32, ptr %i_me_range, align 16
  %i_mv_range = getelementptr inbounds i8, ptr %h, i64 420
  %26 = load i32, ptr %i_mv_range, align 4
  %. = tail call i32 @llvm.smin.i32(i32 %25, i32 %26)
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412
  %27 = load i32, ptr %i_me_method, align 4
  %cmp93 = icmp sgt i32 %27, 2
  %mul96 = shl i32 %., 2
  %mul99 = add i32 %mul96, 36
  %add100 = add nsw i32 %., 4
  %add101 = shl i32 %., 5
  %mul102 = add i32 %add101, 32
  %mul103 = mul i32 %mul102, %add100
  %add106 = add i32 %mul99, %mul103
  %conv108 = select i1 %cmp93, i32 %add106, i32 0
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %28 = load i32, ptr %b_cabac, align 16
  %tobool110.not = icmp eq i32 %28, 0
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %29 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %29, i64 60
  %30 = load i32, ptr %b_transform_8x8_mode, align 4
  %31 = shl i32 %30, 6
  %sps115 = getelementptr inbounds i8, ptr %h, i64 3200
  %32 = load ptr, ptr %sps115, align 16
  %i_mb_width116 = getelementptr inbounds i8, ptr %32, i64 1084
  %33 = load i32, ptr %i_mb_width116, align 4
  %mul118 = select i1 %tobool110.not, i32 %31, i32 0
  %mul121 = mul i32 %mul118, %33
  %cond128 = tail call i32 @llvm.smax.i32(i32 %conv108, i32 %mul121)
  %cond140 = tail call i32 @llvm.smax.i32(i32 %mul77, i32 %cond128)
  %cond164 = tail call i32 @llvm.smax.i32(i32 %mul68, i32 %cond140)
  br label %if.end165

if.end165:                                        ; preds = %entry.if.end165_crit_edge, %if.then63
  %34 = phi i32 [ %33, %if.then63 ], [ %.pre264, %entry.if.end165_crit_edge ]
  %scratch_size.0 = phi i32 [ %cond164, %if.then63 ], [ 0, %entry.if.end165_crit_edge ]
  %b_mb_tree = getelementptr inbounds i8, ptr %h, i64 552
  %35 = load i32, ptr %b_mb_tree, align 8
  %add169 = add nsw i32 %34, 3
  %and = and i32 %add169, 1073741820
  %mul170 = shl i32 %35, 2
  %mul172 = mul i32 %mul170, %and
  %cond179 = tail call i32 @llvm.smax.i32(i32 %scratch_size.0, i32 %mul172)
  %call181 = tail call ptr @x264_malloc(i32 noundef %cond179) #13
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  store ptr %call181, ptr %scratch_buffer, align 8
  %tobool183.not = icmp eq ptr %call181, null
  br i1 %tobool183.not, label %fail, label %return

fail:                                             ; preds = %do.end.2, %for.cond1.preheader, %do.end, %do.end.1, %if.end165
  br label %return

return:                                           ; preds = %if.end165, %fail
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end165 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_thread_free(ptr nocapture noundef readonly %h, i32 noundef %b_lookahead) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %b_lookahead, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 136
  %0 = load i32, ptr %b_interlaced, align 8
  %cmp.not21 = icmp slt i32 %0, 0
  br i1 %cmp.not21, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %deblock_strength = getelementptr inbounds i8, ptr %h, i64 31232
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %deblock_strength, i64 0, i64 %indvars.iv
  %1 = load ptr, ptr %arrayidx, align 8
  tail call void @x264_free(ptr noundef %1) #13
  %arrayidx8 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 0
  %2 = load ptr, ptr %arrayidx8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 -8
  tail call void @x264_free(ptr noundef nonnull %add.ptr) #13
  %arrayidx8.1 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 1
  %3 = load ptr, ptr %arrayidx8.1, align 8
  %add.ptr.1 = getelementptr inbounds i8, ptr %3, i64 -8
  tail call void @x264_free(ptr noundef nonnull %add.ptr.1) #13
  %arrayidx8.2 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %indvars.iv, i64 2
  %4 = load ptr, ptr %arrayidx8.2, align 8
  %add.ptr.2 = getelementptr inbounds i8, ptr %4, i64 -8
  tail call void @x264_free(ptr noundef nonnull %add.ptr.2) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %b_interlaced, align 8
  %6 = sext i32 %5 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp.not.not, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %for.cond.preheader, %entry
  %scratch_buffer = getelementptr inbounds i8, ptr %h, i64 31176
  %7 = load ptr, ptr %scratch_buffer, align 8
  tail call void @x264_free(ptr noundef %7) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_slice_init(ptr noundef %h) local_unnamed_addr #4 {
entry:
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %0 = load ptr, ptr %fdec, align 16
  %mv = getelementptr inbounds i8, ptr %0, i64 3552
  %1 = load ptr, ptr %mv, align 16
  %mv1 = getelementptr inbounds i8, ptr %h, i64 16672
  store ptr %1, ptr %mv1, align 16
  %arrayidx5 = getelementptr inbounds i8, ptr %0, i64 3560
  %2 = load ptr, ptr %arrayidx5, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %h, i64 16680
  store ptr %2, ptr %arrayidx8, align 8
  %mv16x16 = getelementptr inbounds i8, ptr %0, i64 3568
  %3 = load ptr, ptr %mv16x16, align 16
  %mvr = getelementptr inbounds i8, ptr %h, i64 16720
  store ptr %3, ptr %mvr, align 16
  %ref = getelementptr inbounds i8, ptr %0, i64 6712
  %4 = load ptr, ptr %ref, align 8
  %ref16 = getelementptr inbounds i8, ptr %h, i64 16704
  store ptr %4, ptr %ref16, align 16
  %arrayidx20 = getelementptr inbounds i8, ptr %0, i64 6720
  %5 = load ptr, ptr %arrayidx20, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %h, i64 16712
  store ptr %5, ptr %arrayidx23, align 8
  %mb_type = getelementptr inbounds i8, ptr %0, i64 3536
  %6 = load ptr, ptr %mb_type, align 16
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  store ptr %6, ptr %type, align 8
  %mb_partition = getelementptr inbounds i8, ptr %0, i64 3544
  %7 = load ptr, ptr %mb_partition, align 8
  %partition = getelementptr inbounds i8, ptr %h, i64 16624
  store ptr %7, ptr %partition, align 16
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %8 = load i32, ptr %i_ref0, align 8
  %i_ref = getelementptr inbounds i8, ptr %0, i64 6728
  store i32 %8, ptr %i_ref, align 8
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856
  %9 = load i32, ptr %i_ref1, align 8
  %10 = load ptr, ptr %fdec, align 16
  %arrayidx32 = getelementptr inbounds i8, ptr %10, i64 6732
  store i32 %9, ptr %arrayidx32, align 4
  %11 = load i32, ptr %i_ref0, align 8
  %cmp313 = icmp sgt i32 %11, 0
  br i1 %cmp313, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %12 = load i32, ptr %i_type, align 16
  %cmp39 = icmp eq i32 %12, 1
  br i1 %cmp39, label %for.cond41.preheader, label %if.end104

for.cond41.preheader:                             ; preds = %for.cond.cleanup
  %13 = load i32, ptr %i_ref1, align 8
  %cmp43315 = icmp sgt i32 %13, 0
  br i1 %cmp43315, label %for.body45.lr.ph, label %for.cond.cleanup44

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  br label %for.body45

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx34 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv
  %14 = load ptr, ptr %arrayidx34, align 8
  %15 = load i32, ptr %14, align 16
  %16 = load ptr, ptr %fdec, align 16
  %ref_poc = getelementptr inbounds i8, ptr %16, i64 6736
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %ref_poc, i64 0, i64 %indvars.iv
  store i32 %15, ptr %arrayidx38, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32, ptr %i_ref0, align 8
  %18 = sext i32 %17 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %18
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup44:                               ; preds = %for.body45, %for.cond41.preheader
  %map_col_to_list0 = getelementptr inbounds i8, ptr %h, i64 26632
  %arrayidx58 = getelementptr inbounds i8, ptr %h, i64 26633
  store i8 -1, ptr %arrayidx58, align 1
  store i8 -2, ptr %map_col_to_list0, align 8
  %fref164 = getelementptr inbounds i8, ptr %h, i64 14864
  %19 = load ptr, ptr %fref164, align 16
  %i_ref66 = getelementptr inbounds i8, ptr %19, i64 6728
  %20 = load i32, ptr %i_ref66, align 8
  %cmp68319 = icmp sgt i32 %20, 0
  br i1 %cmp68319, label %for.body70.lr.ph, label %if.end104thread-pre-split

for.body70.lr.ph:                                 ; preds = %for.cond.cleanup44
  %ref_poc73 = getelementptr inbounds i8, ptr %19, i64 6736
  %21 = load i32, ptr %i_ref0, align 8
  %cmp83317 = icmp sgt i32 %21, 0
  %fref086 = getelementptr inbounds i8, ptr %h, i64 14704
  br i1 %cmp83317, label %for.body70.us.preheader, label %for.body70

for.body70.us.preheader:                          ; preds = %for.body70.lr.ph
  %wide.trip.count = zext nneg i32 %21 to i64
  br label %for.body70.us

for.body70.us:                                    ; preds = %for.body70.us.preheader, %cleanup.us
  %indvars.iv339 = phi i64 [ 0, %for.body70.us.preheader ], [ %indvars.iv.next340, %cleanup.us ]
  %arrayidx76.us = getelementptr inbounds [16 x i32], ptr %ref_poc73, i64 0, i64 %indvars.iv339
  %22 = load i32, ptr %arrayidx76.us, align 4
  %23 = add nuw nsw i64 %indvars.iv339, 2
  %arrayidx80.us = getelementptr inbounds [18 x i8], ptr %map_col_to_list0, i64 0, i64 %23
  store i8 -2, ptr %arrayidx80.us, align 1
  br label %for.body85.us

for.body85.us:                                    ; preds = %for.body70.us, %for.inc97.us
  %indvars.iv336 = phi i64 [ 0, %for.body70.us ], [ %indvars.iv.next337, %for.inc97.us ]
  %arrayidx88.us = getelementptr inbounds [19 x ptr], ptr %fref086, i64 0, i64 %indvars.iv336
  %24 = load ptr, ptr %arrayidx88.us, align 8
  %25 = load i32, ptr %24, align 16
  %cmp90.us = icmp eq i32 %25, %22
  br i1 %cmp90.us, label %if.then91.us, label %for.inc97.us

for.inc97.us:                                     ; preds = %for.body85.us
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count
  br i1 %exitcond.not, label %cleanup.us, label %for.body85.us

if.then91.us:                                     ; preds = %for.body85.us
  %conv.us = trunc i64 %indvars.iv336 to i8
  store i8 %conv.us, ptr %arrayidx80.us, align 1
  br label %cleanup.us

cleanup.us:                                       ; preds = %for.inc97.us, %if.then91.us
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1
  %26 = load i32, ptr %i_ref66, align 8
  %27 = sext i32 %26 to i64
  %cmp68.us = icmp slt i64 %indvars.iv.next340, %27
  br i1 %cmp68.us, label %for.body70.us, label %if.end104thread-pre-split

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %indvars.iv329 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next330, %for.body45 ]
  %arrayidx47 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv329
  %28 = load ptr, ptr %arrayidx47, align 8
  %29 = load i32, ptr %28, align 16
  %30 = load ptr, ptr %fdec, align 16
  %arrayidx51 = getelementptr inbounds i8, ptr %30, i64 6800
  %arrayidx53 = getelementptr inbounds [16 x i32], ptr %arrayidx51, i64 0, i64 %indvars.iv329
  store i32 %29, ptr %arrayidx53, align 4
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %31 = load i32, ptr %i_ref1, align 8
  %32 = sext i32 %31 to i64
  %cmp43 = icmp slt i64 %indvars.iv.next330, %32
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44

for.body70:                                       ; preds = %for.body70.lr.ph, %for.body70
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %for.body70 ], [ 0, %for.body70.lr.ph ]
  %33 = add nuw nsw i64 %indvars.iv332, 2
  %arrayidx80 = getelementptr inbounds [18 x i8], ptr %map_col_to_list0, i64 0, i64 %33
  store i8 -2, ptr %arrayidx80, align 1
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1
  %34 = load i32, ptr %i_ref66, align 8
  %35 = sext i32 %34 to i64
  %cmp68 = icmp slt i64 %indvars.iv.next333, %35
  br i1 %cmp68, label %for.body70, label %if.end104thread-pre-split

if.end104thread-pre-split:                        ; preds = %for.body70, %cleanup.us, %for.cond.cleanup44
  %.pr = load i32, ptr %i_type, align 16
  br label %if.end104

if.end104:                                        ; preds = %if.end104thread-pre-split, %for.cond.cleanup
  %36 = phi i32 [ %.pr, %if.end104thread-pre-split ], [ %12, %for.cond.cleanup ]
  %cmp107 = icmp eq i32 %36, 0
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end104
  %skip = getelementptr inbounds i8, ptr %h, i64 25680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %skip, i8 0, i64 40, i1 false)
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end104
  %ref114 = getelementptr inbounds i8, ptr %h, i64 25120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %ref114, i8 -2, i64 80, i1 false)
  %37 = load i32, ptr %i_ref0, align 8
  %cmp117 = icmp slt i32 %37, 1
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %38 = load i32, ptr %b_mbaff, align 4
  %cmp122.not321 = icmp slt i32 %38, 0
  %or.cond = select i1 %cmp117, i1 true, i1 %cmp122.not321
  br i1 %or.cond, label %if.end151, label %for.body125.lr.ph

for.body125.lr.ph:                                ; preds = %if.end111
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288
  %fref0130 = getelementptr inbounds i8, ptr %h, i64 14704
  %39 = load ptr, ptr %fdec, align 16
  %40 = load i32, ptr %39, align 16
  %41 = load ptr, ptr %fref0130, align 16
  %42 = load i32, ptr %41, align 16
  %sub.peel = sub i32 %40, %42
  %div.peel = sdiv i32 %sub.peel, 2
  %add141.peel = add nsw i32 %div.peel, 256
  %div142.peel = sdiv i32 %add141.peel, %sub.peel
  %conv143.peel = trunc i32 %div142.peel to i16
  %inv_ref_poc.peel = getelementptr inbounds i8, ptr %39, i64 6864
  store i16 %conv143.peel, ptr %inv_ref_poc.peel, align 2
  %43 = load i32, ptr %b_mbaff, align 4
  %cmp122.not.not.peel = icmp sgt i32 %43, 0
  br i1 %cmp122.not.not.peel, label %for.body125, label %if.end151.loopexit

for.body125:                                      ; preds = %for.body125.lr.ph, %for.body125
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %for.body125 ], [ 1, %for.body125.lr.ph ]
  %44 = phi i32 [ %52, %for.body125 ], [ 1, %for.body125.lr.ph ]
  %45 = load ptr, ptr %fdec, align 16
  %46 = load i32, ptr %45, align 16
  %47 = load i32, ptr %i_delta_poc_bottom, align 8
  %48 = trunc nuw nsw i64 %indvars.iv343 to i32
  %mul = mul nsw i32 %47, %48
  %49 = load ptr, ptr %fref0130, align 16
  %50 = load i32, ptr %49, align 16
  %tobool.not = icmp eq i32 %44, 0
  %add139 = select i1 %tobool.not, i32 0, i32 %47
  %spec.select.neg = add i32 %mul, %46
  %51 = add i32 %add139, %50
  %sub = sub i32 %spec.select.neg, %51
  %div = sdiv i32 %sub, 2
  %add141 = add nsw i32 %div, 256
  %div142 = sdiv i32 %add141, %sub
  %conv143 = trunc i32 %div142 to i16
  %inv_ref_poc = getelementptr inbounds i8, ptr %45, i64 6864
  %arrayidx146 = getelementptr inbounds [2 x i16], ptr %inv_ref_poc, i64 0, i64 %indvars.iv343
  store i16 %conv143, ptr %arrayidx146, align 2
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1
  %52 = load i32, ptr %b_mbaff, align 4
  %53 = sext i32 %52 to i64
  %cmp122.not.not = icmp slt i64 %indvars.iv343, %53
  br i1 %cmp122.not.not, label %for.body125, label %if.end151.loopexit, !llvm.loop !5

if.end151.loopexit:                               ; preds = %for.body125, %for.body125.lr.ph
  %54 = phi i32 [ %43, %for.body125.lr.ph ], [ %52, %for.body125 ]
  %.pre = load i32, ptr %i_ref0, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.end111, %if.end151.loopexit
  %55 = phi i32 [ %54, %if.end151.loopexit ], [ %38, %if.end111 ]
  %56 = phi i32 [ %.pre, %if.end151.loopexit ], [ %37, %if.end111 ]
  %deblock_ref_table = getelementptr inbounds i8, ptr %h, i64 26656
  store i8 -2, ptr %deblock_ref_table, align 16
  %arrayidx156 = getelementptr inbounds i8, ptr %h, i64 26657
  store i8 -1, ptr %arrayidx156, align 1
  %shl = shl i32 %56, %55
  %cmp162323 = icmp sgt i32 %shl, 0
  br i1 %cmp162323, label %for.body165.lr.ph, label %for.cond.cleanup164

for.body165.lr.ph:                                ; preds = %if.end151
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %57 = load i32, ptr %b_interlaced, align 4
  %tobool167.not = icmp eq i32 %57, 0
  %fref0178 = getelementptr inbounds i8, ptr %h, i64 14704
  %wide.trip.count357 = zext nneg i32 %shl to i64
  br i1 %tobool167.not, label %for.body165.us.preheader, label %for.body165.preheader

for.body165.preheader:                            ; preds = %for.body165.lr.ph
  %xtraiter = and i64 %wide.trip.count357, 1
  %58 = icmp eq i32 %shl, 1
  br i1 %58, label %for.cond.cleanup164.loopexit366.unr-lcssa, label %for.body165.preheader.new

for.body165.preheader.new:                        ; preds = %for.body165.preheader
  %unroll_iter = and i64 %wide.trip.count357, 2147483646
  br label %for.body165

for.body165.us.preheader:                         ; preds = %for.body165.lr.ph
  %xtraiter369 = and i64 %wide.trip.count357, 1
  %59 = icmp eq i32 %shl, 1
  br i1 %59, label %for.cond.cleanup164.loopexit.unr-lcssa, label %for.body165.us.preheader.new

for.body165.us.preheader.new:                     ; preds = %for.body165.us.preheader
  %unroll_iter371 = and i64 %wide.trip.count357, 2147483646
  br label %for.body165.us

for.body165.us:                                   ; preds = %for.body165.us, %for.body165.us.preheader.new
  %indvars.iv353 = phi i64 [ 0, %for.body165.us.preheader.new ], [ %indvars.iv.next354.1, %for.body165.us ]
  %niter372 = phi i64 [ 0, %for.body165.us.preheader.new ], [ %niter372.next.1, %for.body165.us ]
  %arrayidx171.us = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv353
  %60 = load ptr, ptr %arrayidx171.us, align 8
  %i_frame_num.us = getelementptr inbounds i8, ptr %60, i64 68
  %61 = load i32, ptr %i_frame_num.us, align 4
  %62 = trunc i32 %61 to i8
  %conv172.us = and i8 %62, 63
  %63 = add nuw nsw i64 %indvars.iv353, 2
  %arrayidx177.us = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %63
  store i8 %conv172.us, ptr %arrayidx177.us, align 1
  %indvars.iv.next354 = or disjoint i64 %indvars.iv353, 1
  %arrayidx171.us.1 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv.next354
  %64 = load ptr, ptr %arrayidx171.us.1, align 8
  %i_frame_num.us.1 = getelementptr inbounds i8, ptr %64, i64 68
  %65 = load i32, ptr %i_frame_num.us.1, align 4
  %66 = trunc i32 %65 to i8
  %conv172.us.1 = and i8 %66, 63
  %67 = add nuw nsw i64 %indvars.iv353, 3
  %arrayidx177.us.1 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %67
  store i8 %conv172.us.1, ptr %arrayidx177.us.1, align 1
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2
  %niter372.next.1 = add i64 %niter372, 2
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %for.cond.cleanup164.loopexit.unr-lcssa, label %for.body165.us

for.cond.cleanup164.loopexit.unr-lcssa:           ; preds = %for.body165.us, %for.body165.us.preheader
  %indvars.iv353.unr = phi i64 [ 0, %for.body165.us.preheader ], [ %indvars.iv.next354.1, %for.body165.us ]
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %for.cond.cleanup164, label %for.body165.us.epil

for.body165.us.epil:                              ; preds = %for.cond.cleanup164.loopexit.unr-lcssa
  %arrayidx171.us.epil = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %indvars.iv353.unr
  %68 = load ptr, ptr %arrayidx171.us.epil, align 8
  %i_frame_num.us.epil = getelementptr inbounds i8, ptr %68, i64 68
  %69 = load i32, ptr %i_frame_num.us.epil, align 4
  %70 = trunc i32 %69 to i8
  %conv172.us.epil = and i8 %70, 63
  %71 = add nuw nsw i64 %indvars.iv353.unr, 2
  %arrayidx177.us.epil = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %71
  store i8 %conv172.us.epil, ptr %arrayidx177.us.epil, align 1
  br label %for.cond.cleanup164

for.cond.cleanup164.loopexit366.unr-lcssa:        ; preds = %for.body165, %for.body165.preheader
  %indvars.iv347.unr = phi i64 [ 0, %for.body165.preheader ], [ %indvars.iv.next348.1, %for.body165 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup164, label %for.body165.epil

for.body165.epil:                                 ; preds = %for.cond.cleanup164.loopexit366.unr-lcssa
  %72 = trunc nuw nsw i64 %indvars.iv347.unr to i32
  %shr.epil = lshr i64 %indvars.iv347.unr, 1
  %idxprom179.epil = and i64 %shr.epil, 2147483647
  %arrayidx180.epil = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179.epil
  %73 = load ptr, ptr %arrayidx180.epil, align 8
  %i_frame_num181.epil = getelementptr inbounds i8, ptr %73, i64 68
  %74 = load i32, ptr %i_frame_num181.epil, align 4
  %and182.epil = shl i32 %74, 1
  %shl183.epil = and i32 %and182.epil, 126
  %and184.epil = and i32 %72, 1
  %add185.epil = or disjoint i32 %shl183.epil, %and184.epil
  %conv186.epil = trunc nuw nsw i32 %add185.epil to i8
  %75 = add nuw nsw i64 %indvars.iv347.unr, 2
  %arrayidx191.epil = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %75
  store i8 %conv186.epil, ptr %arrayidx191.epil, align 1
  br label %for.cond.cleanup164

for.cond.cleanup164:                              ; preds = %for.body165.epil, %for.cond.cleanup164.loopexit366.unr-lcssa, %for.body165.us.epil, %for.cond.cleanup164.loopexit.unr-lcssa, %if.end151
  %arrayidx204 = getelementptr inbounds i8, ptr %h, i64 16544
  store i32 15, ptr %arrayidx204, align 4
  %arrayidx207 = getelementptr inbounds i8, ptr %h, i64 16532
  store i32 15, ptr %arrayidx207, align 4
  %arrayidx209 = getelementptr inbounds i8, ptr %h, i64 16504
  store i32 11, ptr %arrayidx209, align 4
  %arrayidx212 = getelementptr inbounds i8, ptr %h, i64 16568
  store i32 11, ptr %arrayidx212, align 4
  %arrayidx218 = getelementptr inbounds i8, ptr %h, i64 16552
  store <4 x i32> <i32 11, i32 15, i32 11, i32 15>, ptr %arrayidx218, align 4
  %arrayidx221 = getelementptr inbounds i8, ptr %h, i64 16536
  store i32 11, ptr %arrayidx221, align 4
  %arrayidx224 = getelementptr inbounds i8, ptr %h, i64 16520
  store i32 11, ptr %arrayidx224, align 4
  ret void

for.body165:                                      ; preds = %for.body165, %for.body165.preheader.new
  %indvars.iv347 = phi i64 [ 0, %for.body165.preheader.new ], [ %indvars.iv.next348.1, %for.body165 ]
  %niter = phi i64 [ 0, %for.body165.preheader.new ], [ %niter.next.1, %for.body165 ]
  %shr = lshr exact i64 %indvars.iv347, 1
  %idxprom179 = and i64 %shr, 2147483647
  %arrayidx180 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179
  %76 = load ptr, ptr %arrayidx180, align 8
  %i_frame_num181 = getelementptr inbounds i8, ptr %76, i64 68
  %77 = load i32, ptr %i_frame_num181, align 4
  %.tr = trunc i32 %77 to i8
  %78 = shl i8 %.tr, 1
  %conv186 = and i8 %78, 126
  %79 = add nuw nsw i64 %indvars.iv347, 2
  %arrayidx191 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %79
  store i8 %conv186, ptr %arrayidx191, align 1
  %shr.1 = lshr exact i64 %indvars.iv347, 1
  %idxprom179.1 = and i64 %shr.1, 2147483647
  %arrayidx180.1 = getelementptr inbounds [19 x ptr], ptr %fref0178, i64 0, i64 %idxprom179.1
  %80 = load ptr, ptr %arrayidx180.1, align 8
  %i_frame_num181.1 = getelementptr inbounds i8, ptr %80, i64 68
  %81 = load i32, ptr %i_frame_num181.1, align 4
  %.tr373 = trunc i32 %81 to i8
  %82 = shl i8 %.tr373, 1
  %83 = and i8 %82, 126
  %conv186.1 = or disjoint i8 %83, 1
  %84 = add nuw nsw i64 %indvars.iv347, 3
  %arrayidx191.1 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %84
  store i8 %conv186.1, ptr %arrayidx191.1, align 1
  %indvars.iv.next348.1 = add nuw nsw i64 %indvars.iv347, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup164.loopexit366.unr-lcssa, label %for.body165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_macroblock_thread_init(ptr noundef %h) local_unnamed_addr #5 {
entry:
  %i_me_method = getelementptr inbounds i8, ptr %h, i64 412
  %0 = load i32, ptr %i_me_method, align 4
  %i_me_method1 = getelementptr inbounds i8, ptr %h, i64 16404
  store i32 %0, ptr %i_me_method1, align 4
  %i_subpel_refine = getelementptr inbounds i8, ptr %h, i64 428
  %1 = load i32, ptr %i_subpel_refine, align 4
  %i_subpel_refine5 = getelementptr inbounds i8, ptr %h, i64 16408
  store i32 %1, ptr %i_subpel_refine5, align 8
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %2 = load i32, ptr %i_type, align 16
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  switch i32 %1, label %land.end.thread120 [
    i32 6, label %if.then
    i32 8, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i_subpel_refine5, align 8
  br label %land.end.thread120

land.end.thread120:                               ; preds = %if.then, %land.lhs.true
  %b_chroma_me24121 = getelementptr inbounds i8, ptr %h, i64 16412
  store i32 0, ptr %b_chroma_me24121, align 4
  br label %lor.end

if.end:                                           ; preds = %entry
  %b_chroma_me = getelementptr inbounds i8, ptr %h, i64 432
  %3 = load i32, ptr %b_chroma_me, align 16
  %tobool.not = icmp ne i32 %3, 0
  %cmp19 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp19, %tobool.not
  %cmp22 = icmp sgt i32 %1, 4
  %narrow = select i1 %or.cond, i1 %cmp22, i1 false
  %.sink = zext i1 %narrow to i32
  %b_chroma_me24 = getelementptr inbounds i8, ptr %h, i64 16412
  store i32 %.sink, ptr %b_chroma_me24, align 4
  %b_dct_decimate = getelementptr inbounds i8, ptr %h, i64 448
  %4 = load i32, ptr %b_dct_decimate, align 16
  %tobool30.not = icmp eq i32 %4, 0
  br i1 %tobool30.not, label %lor.end, label %land.rhs31

land.rhs31:                                       ; preds = %if.end
  %cmp34 = icmp ne i32 %2, 2
  %5 = zext i1 %cmp34 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.end.thread120, %if.end, %land.rhs31
  %lor.ext = phi i32 [ 0, %if.end ], [ %5, %land.rhs31 ], [ 1, %land.end.thread120 ]
  %b_dct_decimate38 = getelementptr inbounds i8, ptr %h, i64 16424
  store i32 %lor.ext, ptr %b_dct_decimate38, align 8
  %pic = getelementptr inbounds i8, ptr %h, i64 17440
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  store ptr %pic, ptr %p_fenc, align 16
  %add.ptr = getelementptr inbounds i8, ptr %h, i64 17696
  %arrayidx49 = getelementptr inbounds i8, ptr %h, i64 21352
  store ptr %add.ptr, ptr %arrayidx49, align 8
  %add.ptr55 = getelementptr inbounds i8, ptr %h, i64 17704
  %arrayidx59 = getelementptr inbounds i8, ptr %h, i64 21360
  store ptr %add.ptr55, ptr %arrayidx59, align 16
  %add.ptr63 = getelementptr inbounds i8, ptr %h, i64 17888
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  store ptr %add.ptr63, ptr %p_fdec, align 16
  %add.ptr71 = getelementptr inbounds i8, ptr %h, i64 18432
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 21400
  store ptr %add.ptr71, ptr %arrayidx75, align 8
  %add.ptr81 = getelementptr inbounds i8, ptr %h, i64 18448
  %arrayidx85 = getelementptr inbounds i8, ptr %h, i64 21408
  store ptr %add.ptr81, ptr %arrayidx85, align 16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_prefetch_fenc(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %fenc, i32 noundef %i_mb_x, i32 noundef %i_mb_y) local_unnamed_addr #0 {
entry:
  %i_stride = getelementptr inbounds i8, ptr %fenc, i64 104
  %0 = load i32, ptr %i_stride, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %fenc, i64 108
  %1 = load i32, ptr %arrayidx2, align 4
  %mul = mul nsw i32 %0, %i_mb_y
  %add = add nsw i32 %mul, %i_mb_x
  %mul3 = shl nsw i32 %add, 4
  %mul4 = mul nsw i32 %1, %i_mb_y
  %add5 = add nsw i32 %mul4, %i_mb_x
  %mul6 = shl nsw i32 %add5, 3
  %prefetch_fenc = getelementptr inbounds i8, ptr %h, i64 32800
  %2 = load ptr, ptr %prefetch_fenc, align 8
  %plane = getelementptr inbounds i8, ptr %fenc, i64 152
  %3 = load ptr, ptr %plane, align 8
  %idx.ext = sext i32 %mul3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %and = and i32 %i_mb_x, 1
  %add9 = add nuw nsw i32 %and, 1
  %idxprom = zext nneg i32 %add9 to i64
  %arrayidx10 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx10, align 8
  %idx.ext11 = sext i32 %mul6 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %4, i64 %idx.ext11
  tail call void %2(ptr noundef %add.ptr, i32 noundef %0, ptr noundef %add.ptr12, i32 noundef %1, i32 noundef %i_mb_x) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_load(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #0 {
entry:
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436
  %0 = load i32, ptr %b_interlaced.i, align 4
  %shl.neg.i = shl nsw i32 -1, %0
  %sub.i = add i32 %shl.neg.i, %mb_y
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372
  %1 = load i32, ptr %i_mb_stride.i, align 4
  %mul.i = mul nsw i32 %sub.i, %1
  %add.i = add nsw i32 %mul.i, %mb_x
  %i_mb_x.i = getelementptr inbounds i8, ptr %h, i64 16384
  store i32 %mb_x, ptr %i_mb_x.i, align 16
  %i_mb_y.i = getelementptr inbounds i8, ptr %h, i64 16388
  store i32 %mb_y, ptr %i_mb_y.i, align 4
  %mul6.i = mul nsw i32 %1, %mb_y
  %add7.i = add nsw i32 %mul6.i, %mb_x
  %i_mb_xy.i = getelementptr inbounds i8, ptr %h, i64 16392
  store i32 %add7.i, ptr %i_mb_xy.i, align 8
  %i_b8_stride.i = getelementptr inbounds i8, ptr %h, i64 16376
  %2 = load i32, ptr %i_b8_stride.i, align 8
  %mul10.i = mul nsw i32 %2, %mb_y
  %add11.i = add nsw i32 %mul10.i, %mb_x
  %mul12.i = shl nsw i32 %add11.i, 1
  %i_b8_xy.i = getelementptr inbounds i8, ptr %h, i64 16396
  store i32 %mul12.i, ptr %i_b8_xy.i, align 4
  %i_b4_stride.i = getelementptr inbounds i8, ptr %h, i64 16380
  %3 = load i32, ptr %i_b4_stride.i, align 4
  %mul15.i = mul nsw i32 %3, %mb_y
  %add16.i = add nsw i32 %mul15.i, %mb_x
  %mul17.i = shl nsw i32 %add16.i, 2
  %i_b4_xy.i = getelementptr inbounds i8, ptr %h, i64 16400
  store i32 %mul17.i, ptr %i_b4_xy.i, align 16
  %i_neighbour.i = getelementptr inbounds i8, ptr %h, i64 16488
  store i32 0, ptr %i_neighbour.i, align 8
  %i_neighbour_intra.i = getelementptr inbounds i8, ptr %h, i64 16572
  store i32 0, ptr %i_neighbour_intra.i, align 4
  %i_neighbour_frame.i = getelementptr inbounds i8, ptr %h, i64 16576
  store i32 0, ptr %i_neighbour_frame.i, align 16
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600
  %i_mb_topleft_xy.i = getelementptr inbounds i8, ptr %h, i64 16608
  %i_mb_topright_xy.i = getelementptr inbounds i8, ptr %h, i64 16612
  %i_mb_type_top.i = getelementptr inbounds i8, ptr %h, i64 16580
  %i_mb_type_topleft.i = getelementptr inbounds i8, ptr %h, i64 16588
  %i_mb_type_topright.i = getelementptr inbounds i8, ptr %h, i64 16592
  %cmp.i = icmp sgt i32 %mb_x, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i_mb_type_top.i, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i_mb_left_xy.i, i8 -1, i64 16, i1 false)
  br i1 %cmp.i, label %if.then.i, label %if.end74.i

if.then.i:                                        ; preds = %entry
  %i_mb_type_left.i = getelementptr inbounds i8, ptr %h, i64 16584
  store i32 1, ptr %i_neighbour_frame.i, align 16
  %sub34.i = add nsw i32 %add7.i, -1
  store i32 %sub34.i, ptr %i_mb_left_xy.i, align 8
  %type.i = getelementptr inbounds i8, ptr %h, i64 16616
  %4 = load ptr, ptr %type.i, align 8
  %idxprom.i = sext i32 %sub34.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %4, i64 %idxprom.i
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %5 to i32
  store i32 %conv.i, ptr %i_mb_type_left.i, align 8
  %i_first_mb.i = getelementptr inbounds i8, ptr %h, i64 7252
  %6 = load i32, ptr %i_first_mb.i, align 4
  %cmp44.i = icmp sgt i32 %add7.i, %6
  br i1 %cmp44.i, label %if.then46.i, label %if.end74.i

if.then46.i:                                      ; preds = %if.then.i
  store i32 1, ptr %i_neighbour.i, align 8
  %b_constrained_intra.i = getelementptr inbounds i8, ptr %h, i64 140
  %7 = load i32, ptr %b_constrained_intra.i, align 4
  %tobool.not.i = icmp eq i32 %7, 0
  %switch.i = icmp ult i8 %5, 4
  %or.cond394.i = select i1 %tobool.not.i, i1 true, i1 %switch.i
  br i1 %or.cond394.i, label %if.then69.i, label %if.end74.i

if.then69.i:                                      ; preds = %if.then46.i
  store i32 1, ptr %i_neighbour_intra.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then69.i, %if.then46.i, %if.then.i, %entry
  %8 = phi i32 [ %sub34.i, %if.then46.i ], [ %sub34.i, %if.then.i ], [ %sub34.i, %if.then69.i ], [ -1, %entry ]
  %9 = phi i32 [ 0, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %10 = phi i32 [ 1, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %11 = phi i32 [ 1, %if.then46.i ], [ 1, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %i_threadslice_start.i = getelementptr inbounds i8, ptr %h, i64 1748
  %12 = load i32, ptr %i_threadslice_start.i, align 4
  %shr.i = ashr i32 %12, %0
  %shr79.i = ashr i32 %mb_y, %0
  %cmp80.not.i = icmp eq i32 %shr.i, %shr79.i
  br i1 %cmp80.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then82.i

if.then82.i:                                      ; preds = %if.end74.i
  %cmp83.i = icmp sgt i32 %add.i, -1
  br i1 %cmp83.i, label %if.then85.i, label %if.end213.i

if.then85.i:                                      ; preds = %if.then82.i
  %or88.i = or disjoint i32 %11, 2
  store i32 %or88.i, ptr %i_neighbour_frame.i, align 16
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4
  %type92.i = getelementptr inbounds i8, ptr %h, i64 16616
  %13 = load ptr, ptr %type92.i, align 8
  %idxprom95.i = zext nneg i32 %add.i to i64
  %arrayidx96.i = getelementptr inbounds i8, ptr %13, i64 %idxprom95.i
  %14 = load i8, ptr %arrayidx96.i, align 1
  %conv97.i = sext i8 %14 to i32
  store i32 %conv97.i, ptr %i_mb_type_top.i, align 4
  %i_first_mb101.i = getelementptr inbounds i8, ptr %h, i64 7252
  %15 = load i32, ptr %i_first_mb101.i, align 4
  %cmp102.not.i = icmp slt i32 %add.i, %15
  br i1 %cmp102.not.i, label %if.end153.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.then85.i
  %or107.i = or disjoint i32 %10, 2
  store i32 %or107.i, ptr %i_neighbour.i, align 8
  %b_constrained_intra109.i = getelementptr inbounds i8, ptr %h, i64 140
  %16 = load i32, ptr %b_constrained_intra109.i, align 4
  %tobool110.not.i = icmp eq i32 %16, 0
  %switch389.i = icmp ult i8 %14, 4
  %or.cond395.i = select i1 %tobool110.not.i, i1 true, i1 %switch389.i
  br i1 %or.cond395.i, label %if.then131.i, label %if.end135.i

if.then131.i:                                     ; preds = %if.then104.i
  %or134.i = or disjoint i32 %9, 2
  store i32 %or134.i, ptr %i_neighbour_intra.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %if.then104.i
  %17 = phi i32 [ %9, %if.then104.i ], [ %or134.i, %if.then131.i ]
  %cbp.i = getelementptr inbounds i8, ptr %h, i64 16640
  %18 = load ptr, ptr %cbp.i, align 16
  %arrayidx138.i = getelementptr inbounds i16, ptr %18, i64 %idxprom95.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx138.i, i32 0, i32 3, i32 1)
  %intra4x4_pred_mode.i = getelementptr inbounds i8, ptr %h, i64 16648
  %19 = load ptr, ptr %intra4x4_pred_mode.i, align 8
  %arrayidx141.i = getelementptr inbounds [8 x i8], ptr %19, i64 %idxprom95.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx141.i, i32 0, i32 3, i32 1)
  %non_zero_count.i = getelementptr inbounds i8, ptr %h, i64 16656
  %20 = load ptr, ptr %non_zero_count.i, align 16
  %arrayidx145.i = getelementptr inbounds [24 x i8], ptr %20, i64 %idxprom95.i, i64 12
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx145.i, i32 0, i32 3, i32 1)
  %mb_transform_size.i = getelementptr inbounds i8, ptr %h, i64 17240
  %21 = load ptr, ptr %mb_transform_size.i, align 8
  %arrayidx148.i = getelementptr inbounds i8, ptr %21, i64 %idxprom95.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx148.i, i32 0, i32 3, i32 1)
  %skipbp.i = getelementptr inbounds i8, ptr %h, i64 17232
  %22 = load ptr, ptr %skipbp.i, align 16
  %arrayidx151.i = getelementptr inbounds i8, ptr %22, i64 %idxprom95.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx151.i, i32 0, i32 3, i32 1)
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.end135.i, %if.then85.i
  %23 = phi i32 [ %9, %if.then85.i ], [ %17, %if.end135.i ]
  %24 = phi i32 [ %10, %if.then85.i ], [ %or107.i, %if.end135.i ]
  %cmp157.i = icmp ne i32 %add.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp157.i, i1 false
  br i1 %or.cond.i, label %if.then159.i, label %if.end213.i

if.then159.i:                                     ; preds = %if.end153.i
  %sub156.i = add nsw i32 %add.i, -1
  %or162.i = or disjoint i32 %11, 10
  store i32 %or162.i, ptr %i_neighbour_frame.i, align 16
  store i32 %sub156.i, ptr %i_mb_topleft_xy.i, align 16
  %idxprom170.i = zext nneg i32 %sub156.i to i64
  %arrayidx171.i = getelementptr inbounds i8, ptr %13, i64 %idxprom170.i
  %25 = load i8, ptr %arrayidx171.i, align 1
  %conv172.i = sext i8 %25 to i32
  store i32 %conv172.i, ptr %i_mb_type_topleft.i, align 4
  %cmp178.not.not.i = icmp sgt i32 %add.i, %15
  br i1 %cmp178.not.not.i, label %if.then180.i, label %if.end213.i

if.then180.i:                                     ; preds = %if.then159.i
  %or183.i = or i32 %24, 8
  store i32 %or183.i, ptr %i_neighbour.i, align 8
  %b_constrained_intra185.i = getelementptr inbounds i8, ptr %h, i64 140
  %26 = load i32, ptr %b_constrained_intra185.i, align 4
  %tobool186.not.i = icmp eq i32 %26, 0
  %switch390.i = icmp ult i8 %25, 4
  %or.cond396.i = select i1 %tobool186.not.i, i1 true, i1 %switch390.i
  br i1 %or.cond396.i, label %if.then207.i, label %if.end213.i

if.then207.i:                                     ; preds = %if.then180.i
  %or210.i = or i32 %23, 8
  store i32 %or210.i, ptr %i_neighbour_intra.i, align 4
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then207.i, %if.then180.i, %if.then159.i, %if.end153.i, %if.then82.i
  %27 = phi i32 [ %add.i, %if.then180.i ], [ -1, %if.then82.i ], [ %add.i, %if.then159.i ], [ %add.i, %if.then207.i ], [ %add.i, %if.end153.i ]
  %28 = phi i32 [ %23, %if.then180.i ], [ %9, %if.then82.i ], [ %23, %if.then159.i ], [ %or210.i, %if.then207.i ], [ %23, %if.end153.i ]
  %29 = phi i32 [ %or183.i, %if.then180.i ], [ %10, %if.then82.i ], [ %24, %if.then159.i ], [ %or183.i, %if.then207.i ], [ %24, %if.end153.i ]
  %30 = phi i32 [ %or162.i, %if.then180.i ], [ %11, %if.then82.i ], [ %or162.i, %if.then159.i ], [ %or162.i, %if.then207.i ], [ %or88.i, %if.end153.i ]
  %sps.i = getelementptr inbounds i8, ptr %h, i64 3200
  %31 = load ptr, ptr %sps.i, align 16
  %i_mb_width.i = getelementptr inbounds i8, ptr %31, i64 1084
  %32 = load i32, ptr %i_mb_width.i, align 4
  %sub214.i = add nsw i32 %32, -1
  %cmp215.i = icmp sgt i32 %sub214.i, %mb_x
  %cmp219.i = icmp sgt i32 %add.i, -2
  %or.cond388.i = select i1 %cmp215.i, i1 %cmp219.i, i1 false
  br i1 %or.cond388.i, label %if.then221.i, label %x264_macroblock_cache_load_neighbours.exit

if.then221.i:                                     ; preds = %if.end213.i
  %add218.i = add nsw i32 %add.i, 1
  %or224.i = or i32 %30, 4
  store i32 %or224.i, ptr %i_neighbour_frame.i, align 16
  store i32 %add218.i, ptr %i_mb_topright_xy.i, align 4
  %type229.i = getelementptr inbounds i8, ptr %h, i64 16616
  %33 = load ptr, ptr %type229.i, align 8
  %idxprom232.i = zext nneg i32 %add218.i to i64
  %arrayidx233.i = getelementptr inbounds i8, ptr %33, i64 %idxprom232.i
  %34 = load i8, ptr %arrayidx233.i, align 1
  %conv234.i = sext i8 %34 to i32
  store i32 %conv234.i, ptr %i_mb_type_topright.i, align 16
  %i_first_mb239.i = getelementptr inbounds i8, ptr %h, i64 7252
  %35 = load i32, ptr %i_first_mb239.i, align 4
  %cmp240.not.i = icmp slt i32 %add218.i, %35
  br i1 %cmp240.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then242.i

if.then242.i:                                     ; preds = %if.then221.i
  %or245.i = or i32 %29, 4
  store i32 %or245.i, ptr %i_neighbour.i, align 8
  %b_constrained_intra247.i = getelementptr inbounds i8, ptr %h, i64 140
  %36 = load i32, ptr %b_constrained_intra247.i, align 4
  %tobool248.not.i = icmp eq i32 %36, 0
  %switch391.i = icmp ult i8 %34, 4
  %or.cond397.i = select i1 %tobool248.not.i, i1 true, i1 %switch391.i
  br i1 %or.cond397.i, label %if.then269.i, label %x264_macroblock_cache_load_neighbours.exit

if.then269.i:                                     ; preds = %if.then242.i
  %or272.i = or i32 %28, 4
  store i32 %or272.i, ptr %i_neighbour_intra.i, align 4
  br label %x264_macroblock_cache_load_neighbours.exit

x264_macroblock_cache_load_neighbours.exit:       ; preds = %if.end74.i, %if.end213.i, %if.then221.i, %if.then242.i, %if.then269.i
  %37 = phi i32 [ %10, %if.end74.i ], [ %29, %if.end213.i ], [ %29, %if.then221.i ], [ %or245.i, %if.then242.i ], [ %or245.i, %if.then269.i ]
  %38 = phi i32 [ -1, %if.end74.i ], [ %27, %if.end213.i ], [ %27, %if.then221.i ], [ %27, %if.then242.i ], [ %27, %if.then269.i ]
  %mul = shl nsw i32 %sub.i, 1
  %add = or disjoint i32 %mul, 1
  %mul4 = mul nsw i32 %2, %add
  %mul5 = shl nsw i32 %mb_x, 1
  %add6 = add nsw i32 %mul4, %mul5
  %mul7 = shl nsw i32 %sub.i, 2
  %add8 = or disjoint i32 %mul7, 3
  %mul10 = mul nsw i32 %3, %add8
  %mul11 = shl nsw i32 %mb_x, 2
  %add12 = add nsw i32 %mul10, %mul11
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648
  %39 = load ptr, ptr %intra4x4_pred_mode, align 8
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656
  %40 = load ptr, ptr %non_zero_count, align 16
  %cbp16 = getelementptr inbounds i8, ptr %h, i64 16640
  %41 = load ptr, ptr %cbp16, align 16
  %and = and i32 %37, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds i16, ptr %41, i64 %idxprom
  %42 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %42 to i32
  %i_cbp_top = getelementptr inbounds i8, ptr %h, i64 25776
  store i32 %conv, ptr %i_cbp_top, align 16
  %arrayidx20 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom
  %43 = load i32, ptr %arrayidx20, align 4
  %arrayidx27 = getelementptr inbounds i8, ptr %h, i64 25028
  store i32 %43, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom
  %arrayidx30 = getelementptr inbounds i8, ptr %arrayidx29, i64 12
  %44 = load i32, ptr %arrayidx30, align 4
  %non_zero_count33 = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx36 = getelementptr inbounds i8, ptr %h, i64 25076
  store i32 %44, ptr %arrayidx36, align 1
  %arrayidx39 = getelementptr inbounds i8, ptr %arrayidx29, i64 18
  %45 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %45 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  store i32 %shl41, ptr %non_zero_count33, align 1
  %arrayidx50 = getelementptr inbounds i8, ptr %arrayidx29, i64 22
  %46 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %46 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  br label %if.end

if.else:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %i_cbp_top61 = getelementptr inbounds i8, ptr %h, i64 25776
  store i32 -1, ptr %i_cbp_top61, align 16
  %arrayidx67 = getelementptr inbounds i8, ptr %h, i64 25028
  store i32 -1, ptr %arrayidx67, align 1
  %non_zero_count70 = getelementptr inbounds i8, ptr %h, i64 25072
  %arrayidx73 = getelementptr inbounds i8, ptr %h, i64 25076
  store i32 -2139062144, ptr %arrayidx73, align 1
  store i32 -2139062144, ptr %non_zero_count70, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl52.sink = phi i32 [ -2139062144, %if.else ], [ %shl52, %if.then ]
  %47 = getelementptr inbounds i8, ptr %h, i64 25096
  store i32 %shl52.sink, ptr %47, align 1
  %and88 = and i32 %37, 1
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end314.thread1466, label %if.then90

if.then90:                                        ; preds = %if.end
  %idxprom91 = sext i32 %8 to i64
  %arrayidx92 = getelementptr inbounds i16, ptr %41, i64 %idxprom91
  %48 = load i16, ptr %arrayidx92, align 2
  %conv93 = sext i16 %48 to i32
  %i_cbp_left = getelementptr inbounds i8, ptr %h, i64 25780
  store i32 %conv93, ptr %i_cbp_left, align 4
  %arrayidx97 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91
  %arrayidx98 = getelementptr inbounds i8, ptr %arrayidx97, i64 4
  %49 = load i8, ptr %arrayidx98, align 1
  %arrayidx104 = getelementptr inbounds i8, ptr %h, i64 25035
  store i8 %49, ptr %arrayidx104, align 1
  %arrayidx107 = getelementptr inbounds i8, ptr %arrayidx97, i64 5
  %50 = load i8, ptr %arrayidx107, align 1
  %arrayidx113 = getelementptr inbounds i8, ptr %h, i64 25043
  store i8 %50, ptr %arrayidx113, align 1
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx97, i64 6
  %51 = load i8, ptr %arrayidx116, align 1
  %arrayidx122 = getelementptr inbounds i8, ptr %h, i64 25051
  store i8 %51, ptr %arrayidx122, align 1
  %arrayidx125 = getelementptr inbounds i8, ptr %arrayidx97, i64 3
  %52 = load i8, ptr %arrayidx125, align 1
  %arrayidx131 = getelementptr inbounds i8, ptr %h, i64 25059
  store i8 %52, ptr %arrayidx131, align 1
  %arrayidx133 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91
  %arrayidx134 = getelementptr inbounds i8, ptr %arrayidx133, i64 3
  %53 = load i8, ptr %arrayidx134, align 1
  %arrayidx140 = getelementptr inbounds i8, ptr %h, i64 25083
  store i8 %53, ptr %arrayidx140, align 1
  %arrayidx143 = getelementptr inbounds i8, ptr %arrayidx133, i64 7
  %54 = load i8, ptr %arrayidx143, align 1
  %arrayidx149 = getelementptr inbounds i8, ptr %h, i64 25091
  store i8 %54, ptr %arrayidx149, align 1
  %arrayidx152 = getelementptr inbounds i8, ptr %arrayidx133, i64 11
  %55 = load i8, ptr %arrayidx152, align 1
  %arrayidx158 = getelementptr inbounds i8, ptr %h, i64 25099
  store i8 %55, ptr %arrayidx158, align 1
  %arrayidx161 = getelementptr inbounds i8, ptr %arrayidx133, i64 15
  %56 = load i8, ptr %arrayidx161, align 1
  %arrayidx167 = getelementptr inbounds i8, ptr %h, i64 25107
  store i8 %56, ptr %arrayidx167, align 1
  %arrayidx170 = getelementptr inbounds i8, ptr %arrayidx133, i64 17
  %57 = load i8, ptr %arrayidx170, align 1
  %arrayidx176 = getelementptr inbounds i8, ptr %h, i64 25080
  store i8 %57, ptr %arrayidx176, align 1
  %arrayidx179 = getelementptr inbounds i8, ptr %arrayidx133, i64 19
  %58 = load i8, ptr %arrayidx179, align 1
  %arrayidx185 = getelementptr inbounds i8, ptr %h, i64 25088
  store i8 %58, ptr %arrayidx185, align 1
  %arrayidx188 = getelementptr inbounds i8, ptr %arrayidx133, i64 21
  %59 = load i8, ptr %arrayidx188, align 1
  %arrayidx194 = getelementptr inbounds i8, ptr %h, i64 25104
  store i8 %59, ptr %arrayidx194, align 1
  %arrayidx197 = getelementptr inbounds i8, ptr %arrayidx133, i64 23
  %60 = load i8, ptr %arrayidx197, align 1
  %arrayidx203 = getelementptr inbounds i8, ptr %h, i64 25112
  store i8 %60, ptr %arrayidx203, align 1
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %61 = load i32, ptr %i_type, align 16
  %cmp.not = icmp eq i32 %61, 2
  br i1 %cmp.not, label %if.end314.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then90
  %62 = sext i32 %add12 to i64
  %63 = sext i32 %add6 to i64
  %idxprom235 = sext i32 %38 to i64
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688
  %ref = getelementptr inbounds i8, ptr %h, i64 16704
  %mv = getelementptr inbounds i8, ptr %h, i64 16672
  %cmp208 = icmp eq i32 %61, 1
  %64 = load ptr, ptr %mv, align 8
  %65 = getelementptr [2 x i16], ptr %64, i64 %62
  %arrayidx218 = getelementptr i8, ptr %65, i64 -4
  tail call void @llvm.prefetch.p0(ptr %arrayidx218, i32 0, i32 3, i32 1)
  %arrayidx225 = getelementptr i8, ptr %65, i64 16
  tail call void @llvm.prefetch.p0(ptr %arrayidx225, i32 0, i32 3, i32 1)
  %66 = load ptr, ptr %ref, align 8
  %67 = getelementptr i8, ptr %66, i64 %63
  %arrayidx231 = getelementptr i8, ptr %67, i64 -1
  tail call void @llvm.prefetch.p0(ptr %arrayidx231, i32 0, i32 3, i32 1)
  %68 = load ptr, ptr %mvd, align 8
  %arrayidx236 = getelementptr inbounds [8 x [2 x i8]], ptr %68, i64 %idxprom235
  tail call void @llvm.prefetch.p0(ptr %arrayidx236, i32 0, i32 3, i32 1)
  br i1 %cmp208, label %for.body.1, label %if.end314

for.body.1:                                       ; preds = %for.cond.preheader
  %arrayidx215.1 = getelementptr inbounds i8, ptr %h, i64 16680
  %69 = load ptr, ptr %arrayidx215.1, align 8
  %70 = getelementptr [2 x i16], ptr %69, i64 %62
  %arrayidx218.1 = getelementptr i8, ptr %70, i64 -4
  tail call void @llvm.prefetch.p0(ptr %arrayidx218.1, i32 0, i32 3, i32 1)
  %arrayidx225.1 = getelementptr i8, ptr %70, i64 16
  tail call void @llvm.prefetch.p0(ptr %arrayidx225.1, i32 0, i32 3, i32 1)
  %arrayidx228.1 = getelementptr inbounds i8, ptr %h, i64 16712
  %71 = load ptr, ptr %arrayidx228.1, align 8
  %72 = getelementptr i8, ptr %71, i64 %63
  %arrayidx231.1 = getelementptr i8, ptr %72, i64 -1
  tail call void @llvm.prefetch.p0(ptr %arrayidx231.1, i32 0, i32 3, i32 1)
  %arrayidx234.1 = getelementptr inbounds i8, ptr %h, i64 16696
  %73 = load ptr, ptr %arrayidx234.1, align 8
  %arrayidx236.1 = getelementptr inbounds [8 x [2 x i8]], ptr %73, i64 %idxprom235
  tail call void @llvm.prefetch.p0(ptr %arrayidx236.1, i32 0, i32 3, i32 1)
  br label %if.end314

if.end314:                                        ; preds = %for.body.1, %for.cond.preheader
  %pps = getelementptr inbounds i8, ptr %h, i64 3328
  %74 = load ptr, ptr %pps, align 16
  %b_transform_8x8_mode = getelementptr inbounds i8, ptr %74, i64 60
  %75 = load i32, ptr %b_transform_8x8_mode, align 4
  %tobool315.not = icmp eq i32 %75, 0
  br i1 %tobool315.not, label %if.end342, label %land.rhs

if.end314.thread1466:                             ; preds = %if.end
  %i_cbp_left241 = getelementptr inbounds i8, ptr %h, i64 25780
  store i32 -1, ptr %i_cbp_left241, align 4
  %arrayidx247 = getelementptr inbounds i8, ptr %h, i64 25059
  store i8 -1, ptr %arrayidx247, align 1
  %arrayidx253 = getelementptr inbounds i8, ptr %h, i64 25051
  store i8 -1, ptr %arrayidx253, align 1
  %arrayidx259 = getelementptr inbounds i8, ptr %h, i64 25043
  store i8 -1, ptr %arrayidx259, align 1
  %arrayidx265 = getelementptr inbounds i8, ptr %h, i64 25035
  store i8 -1, ptr %arrayidx265, align 1
  %arrayidx271 = getelementptr inbounds i8, ptr %h, i64 25112
  store i8 -128, ptr %arrayidx271, align 1
  %arrayidx277 = getelementptr inbounds i8, ptr %h, i64 25104
  store i8 -128, ptr %arrayidx277, align 1
  %arrayidx283 = getelementptr inbounds i8, ptr %h, i64 25088
  store i8 -128, ptr %arrayidx283, align 1
  %arrayidx289 = getelementptr inbounds i8, ptr %h, i64 25080
  store i8 -128, ptr %arrayidx289, align 1
  %arrayidx295 = getelementptr inbounds i8, ptr %h, i64 25107
  store i8 -128, ptr %arrayidx295, align 1
  %arrayidx301 = getelementptr inbounds i8, ptr %h, i64 25099
  store i8 -128, ptr %arrayidx301, align 1
  %arrayidx307 = getelementptr inbounds i8, ptr %h, i64 25091
  store i8 -128, ptr %arrayidx307, align 1
  %arrayidx313 = getelementptr inbounds i8, ptr %h, i64 25083
  store i8 -128, ptr %arrayidx313, align 1
  %pps1467 = getelementptr inbounds i8, ptr %h, i64 3328
  %76 = load ptr, ptr %pps1467, align 16
  %b_transform_8x8_mode1468 = getelementptr inbounds i8, ptr %76, i64 60
  %77 = load i32, ptr %b_transform_8x8_mode1468, align 4
  %tobool315.not1469 = icmp eq i32 %77, 0
  br i1 %tobool315.not1469, label %if.end342, label %land.end

if.end314.thread:                                 ; preds = %if.then90
  %pps1463 = getelementptr inbounds i8, ptr %h, i64 3328
  %78 = load ptr, ptr %pps1463, align 16
  %b_transform_8x8_mode1464 = getelementptr inbounds i8, ptr %78, i64 60
  %79 = load i32, ptr %b_transform_8x8_mode1464, align 4
  %tobool315.not1465 = icmp eq i32 %79, 0
  br i1 %tobool315.not1465, label %if.end342, label %land.rhs

land.rhs:                                         ; preds = %if.end314, %if.end314.thread
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  %80 = load ptr, ptr %mb_transform_size, align 8
  %arrayidx323 = getelementptr inbounds i8, ptr %80, i64 %idxprom91
  %81 = load i8, ptr %arrayidx323, align 1
  %tobool325 = icmp ne i8 %81, 0
  %82 = zext i1 %tobool325 to i32
  br label %land.end

land.end:                                         ; preds = %if.end314.thread1466, %land.rhs
  %land.ext = phi i32 [ %82, %land.rhs ], [ 0, %if.end314.thread1466 ]
  br i1 %tobool.not, label %land.end337, label %land.rhs330

land.rhs330:                                      ; preds = %land.end
  %mb_transform_size332 = getelementptr inbounds i8, ptr %h, i64 17240
  %83 = load ptr, ptr %mb_transform_size332, align 8
  %idxprom333 = sext i32 %38 to i64
  %arrayidx334 = getelementptr inbounds i8, ptr %83, i64 %idxprom333
  %84 = load i8, ptr %arrayidx334, align 1
  %tobool336 = icmp ne i8 %84, 0
  %85 = zext i1 %tobool336 to i32
  br label %land.end337

land.end337:                                      ; preds = %land.rhs330, %land.end
  %land.ext338 = phi i32 [ 0, %land.end ], [ %85, %land.rhs330 ]
  %add339 = add nuw nsw i32 %land.ext338, %land.ext
  %i_neighbour_transform_size = getelementptr inbounds i8, ptr %h, i64 25768
  store i32 %add339, ptr %i_neighbour_transform_size, align 8
  br label %if.end342

if.end342:                                        ; preds = %if.end314.thread1466, %if.end314.thread, %land.end337, %if.end314
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %86 = load i32, ptr %b_mbaff, align 4
  %tobool344.not = icmp eq i32 %86, 0
  br i1 %tobool344.not, label %if.end374, label %if.then345

if.then345:                                       ; preds = %if.end342
  %i_ref0 = getelementptr inbounds i8, ptr %h, i64 14696
  %87 = load i32, ptr %i_ref0, align 8
  %shl348 = shl i32 %87, %0
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416
  store i32 %shl348, ptr %i_fref, align 8
  %i_ref1 = getelementptr inbounds i8, ptr %h, i64 14856
  %88 = load i32, ptr %i_ref1, align 8
  %shl353 = shl i32 %88, %0
  %arrayidx357 = getelementptr inbounds i8, ptr %h, i64 21420
  store i32 %shl353, ptr %arrayidx357, align 4
  %and365 = lshr i32 %37, 1
  %and365.lobit = and i32 %and365, 1
  %add371 = add nuw nsw i32 %and365.lobit, %and88
  %i_neighbour_interlaced = getelementptr inbounds i8, ptr %h, i64 25772
  store i32 %add371, ptr %i_neighbour_interlaced, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then345, %if.end342
  %tobool377.not = icmp eq i32 %0, 0
  br i1 %tobool377.not, label %if.then378, label %if.end425

if.then378:                                       ; preds = %if.end374
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %89 = load ptr, ptr %p_fdec, align 16
  %add.ptr382 = getelementptr inbounds i8, ptr %89, i64 127
  %add.ptr388 = getelementptr inbounds i8, ptr %89, i64 143
  %arrayidx.i1415 = getelementptr inbounds i8, ptr %89, i64 15
  %90 = load i8, ptr %arrayidx.i1415, align 1
  %arrayidx3.i = getelementptr inbounds i8, ptr %89, i64 -1
  store i8 %90, ptr %arrayidx3.i, align 1
  %arrayidx.1.i = getelementptr inbounds i8, ptr %89, i64 47
  %91 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx3.1.i = getelementptr inbounds i8, ptr %89, i64 31
  store i8 %91, ptr %arrayidx3.1.i, align 1
  %arrayidx.2.i = getelementptr inbounds i8, ptr %89, i64 79
  %92 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx3.2.i = getelementptr inbounds i8, ptr %89, i64 63
  store i8 %92, ptr %arrayidx3.2.i, align 1
  %arrayidx.3.i = getelementptr inbounds i8, ptr %89, i64 111
  %93 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx3.3.i = getelementptr inbounds i8, ptr %89, i64 95
  store i8 %93, ptr %arrayidx3.3.i, align 1
  %94 = load i8, ptr %add.ptr388, align 1
  store i8 %94, ptr %add.ptr382, align 1
  %arrayidx.5.i = getelementptr inbounds i8, ptr %89, i64 175
  %95 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx3.5.i = getelementptr inbounds i8, ptr %89, i64 159
  store i8 %95, ptr %arrayidx3.5.i, align 1
  %arrayidx.6.i = getelementptr inbounds i8, ptr %89, i64 207
  %96 = load i8, ptr %arrayidx.6.i, align 1
  %arrayidx3.6.i = getelementptr inbounds i8, ptr %89, i64 191
  store i8 %96, ptr %arrayidx3.6.i, align 1
  %arrayidx.7.i = getelementptr inbounds i8, ptr %89, i64 239
  %97 = load i8, ptr %arrayidx.7.i, align 1
  %arrayidx3.7.i = getelementptr inbounds i8, ptr %89, i64 223
  store i8 %97, ptr %arrayidx3.7.i, align 1
  %98 = load ptr, ptr %p_fdec, align 16
  %add.ptr394 = getelementptr inbounds i8, ptr %98, i64 383
  %add.ptr400 = getelementptr inbounds i8, ptr %98, i64 399
  %arrayidx.i1416 = getelementptr inbounds i8, ptr %98, i64 271
  %99 = load i8, ptr %arrayidx.i1416, align 1
  %arrayidx3.i1417 = getelementptr inbounds i8, ptr %98, i64 255
  store i8 %99, ptr %arrayidx3.i1417, align 1
  %arrayidx.1.i1418 = getelementptr inbounds i8, ptr %98, i64 303
  %100 = load i8, ptr %arrayidx.1.i1418, align 1
  %arrayidx3.1.i1419 = getelementptr inbounds i8, ptr %98, i64 287
  store i8 %100, ptr %arrayidx3.1.i1419, align 1
  %arrayidx.2.i1420 = getelementptr inbounds i8, ptr %98, i64 335
  %101 = load i8, ptr %arrayidx.2.i1420, align 1
  %arrayidx3.2.i1421 = getelementptr inbounds i8, ptr %98, i64 319
  store i8 %101, ptr %arrayidx3.2.i1421, align 1
  %arrayidx.3.i1422 = getelementptr inbounds i8, ptr %98, i64 367
  %102 = load i8, ptr %arrayidx.3.i1422, align 1
  %arrayidx3.3.i1423 = getelementptr inbounds i8, ptr %98, i64 351
  store i8 %102, ptr %arrayidx3.3.i1423, align 1
  %103 = load i8, ptr %add.ptr400, align 1
  store i8 %103, ptr %add.ptr394, align 1
  %arrayidx.5.i1424 = getelementptr inbounds i8, ptr %98, i64 431
  %104 = load i8, ptr %arrayidx.5.i1424, align 1
  %arrayidx3.5.i1425 = getelementptr inbounds i8, ptr %98, i64 415
  store i8 %104, ptr %arrayidx3.5.i1425, align 1
  %arrayidx.6.i1426 = getelementptr inbounds i8, ptr %98, i64 463
  %105 = load i8, ptr %arrayidx.6.i1426, align 1
  %arrayidx3.6.i1427 = getelementptr inbounds i8, ptr %98, i64 447
  store i8 %105, ptr %arrayidx3.6.i1427, align 1
  %arrayidx.7.i1428 = getelementptr inbounds i8, ptr %98, i64 495
  %106 = load i8, ptr %arrayidx.7.i1428, align 1
  %arrayidx3.7.i1429 = getelementptr inbounds i8, ptr %98, i64 479
  store i8 %106, ptr %arrayidx3.7.i1429, align 1
  %arrayidx404 = getelementptr inbounds i8, ptr %h, i64 21400
  %107 = load ptr, ptr %arrayidx404, align 8
  %add.ptr406 = getelementptr inbounds i8, ptr %107, i64 127
  %add.ptr412 = getelementptr inbounds i8, ptr %107, i64 135
  %arrayidx.i1430 = getelementptr inbounds i8, ptr %107, i64 7
  %108 = load i8, ptr %arrayidx.i1430, align 1
  %arrayidx3.i1431 = getelementptr inbounds i8, ptr %107, i64 -1
  store i8 %108, ptr %arrayidx3.i1431, align 1
  %arrayidx.1.i1432 = getelementptr inbounds i8, ptr %107, i64 39
  %109 = load i8, ptr %arrayidx.1.i1432, align 1
  %arrayidx3.1.i1433 = getelementptr inbounds i8, ptr %107, i64 31
  store i8 %109, ptr %arrayidx3.1.i1433, align 1
  %arrayidx.2.i1434 = getelementptr inbounds i8, ptr %107, i64 71
  %110 = load i8, ptr %arrayidx.2.i1434, align 1
  %arrayidx3.2.i1435 = getelementptr inbounds i8, ptr %107, i64 63
  store i8 %110, ptr %arrayidx3.2.i1435, align 1
  %arrayidx.3.i1436 = getelementptr inbounds i8, ptr %107, i64 103
  %111 = load i8, ptr %arrayidx.3.i1436, align 1
  %arrayidx3.3.i1437 = getelementptr inbounds i8, ptr %107, i64 95
  store i8 %111, ptr %arrayidx3.3.i1437, align 1
  %112 = load i8, ptr %add.ptr412, align 1
  store i8 %112, ptr %add.ptr406, align 1
  %arrayidx.5.i1438 = getelementptr inbounds i8, ptr %107, i64 167
  %113 = load i8, ptr %arrayidx.5.i1438, align 1
  %arrayidx3.5.i1439 = getelementptr inbounds i8, ptr %107, i64 159
  store i8 %113, ptr %arrayidx3.5.i1439, align 1
  %arrayidx.6.i1440 = getelementptr inbounds i8, ptr %107, i64 199
  %114 = load i8, ptr %arrayidx.6.i1440, align 1
  %arrayidx3.6.i1441 = getelementptr inbounds i8, ptr %107, i64 191
  store i8 %114, ptr %arrayidx3.6.i1441, align 1
  %arrayidx.7.i1442 = getelementptr inbounds i8, ptr %107, i64 231
  %115 = load i8, ptr %arrayidx.7.i1442, align 1
  %arrayidx3.7.i1443 = getelementptr inbounds i8, ptr %107, i64 223
  store i8 %115, ptr %arrayidx3.7.i1443, align 1
  %arrayidx416 = getelementptr inbounds i8, ptr %h, i64 21408
  %116 = load ptr, ptr %arrayidx416, align 16
  %add.ptr418 = getelementptr inbounds i8, ptr %116, i64 127
  %add.ptr424 = getelementptr inbounds i8, ptr %116, i64 135
  %arrayidx.i1444 = getelementptr inbounds i8, ptr %116, i64 7
  %117 = load i8, ptr %arrayidx.i1444, align 1
  %arrayidx3.i1445 = getelementptr inbounds i8, ptr %116, i64 -1
  store i8 %117, ptr %arrayidx3.i1445, align 1
  %arrayidx.1.i1446 = getelementptr inbounds i8, ptr %116, i64 39
  %118 = load i8, ptr %arrayidx.1.i1446, align 1
  %arrayidx3.1.i1447 = getelementptr inbounds i8, ptr %116, i64 31
  store i8 %118, ptr %arrayidx3.1.i1447, align 1
  %arrayidx.2.i1448 = getelementptr inbounds i8, ptr %116, i64 71
  %119 = load i8, ptr %arrayidx.2.i1448, align 1
  %arrayidx3.2.i1449 = getelementptr inbounds i8, ptr %116, i64 63
  store i8 %119, ptr %arrayidx3.2.i1449, align 1
  %arrayidx.3.i1450 = getelementptr inbounds i8, ptr %116, i64 103
  %120 = load i8, ptr %arrayidx.3.i1450, align 1
  %arrayidx3.3.i1451 = getelementptr inbounds i8, ptr %116, i64 95
  store i8 %120, ptr %arrayidx3.3.i1451, align 1
  %121 = load i8, ptr %add.ptr424, align 1
  store i8 %121, ptr %add.ptr418, align 1
  %arrayidx.5.i1452 = getelementptr inbounds i8, ptr %116, i64 167
  %122 = load i8, ptr %arrayidx.5.i1452, align 1
  %arrayidx3.5.i1453 = getelementptr inbounds i8, ptr %116, i64 159
  store i8 %122, ptr %arrayidx3.5.i1453, align 1
  %arrayidx.6.i1454 = getelementptr inbounds i8, ptr %116, i64 199
  %123 = load i8, ptr %arrayidx.6.i1454, align 1
  %arrayidx3.6.i1455 = getelementptr inbounds i8, ptr %116, i64 191
  store i8 %123, ptr %arrayidx3.6.i1455, align 1
  %arrayidx.7.i1456 = getelementptr inbounds i8, ptr %116, i64 231
  %124 = load i8, ptr %arrayidx.7.i1456, align 1
  %arrayidx3.7.i1457 = getelementptr inbounds i8, ptr %116, i64 223
  store i8 %124, ptr %arrayidx3.7.i1457, align 1
  br label %if.end425

if.end425:                                        ; preds = %if.then378, %if.end374
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 0)
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 1)
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 2)
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %125 = load ptr, ptr %fdec, align 16
  %integral = getelementptr inbounds i8, ptr %125, i64 240
  %126 = load ptr, ptr %integral, align 16
  %tobool426.not = icmp eq ptr %126, null
  br i1 %tobool426.not, label %if.end479, label %if.then427

if.then427:                                       ; preds = %if.end425
  %i_stride = getelementptr inbounds i8, ptr %125, i64 104
  %127 = load i32, ptr %i_stride, align 8
  %mul430 = mul nsw i32 %127, %mb_y
  %add431 = add nsw i32 %mul430, %mb_x
  %mul432 = shl nsw i32 %add431, 4
  %i_fref436 = getelementptr inbounds i8, ptr %h, i64 21416
  %128 = load i32, ptr %i_fref436, align 8
  %cmp4381473 = icmp sgt i32 %128, 0
  br i1 %cmp4381473, label %for.body441.lr.ph, label %for.cond456.preheader

for.body441.lr.ph:                                ; preds = %if.then427
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %idxprom445 = sext i32 %mul432 to i64
  %p_integral = getelementptr inbounds i8, ptr %h, i64 24752
  %wide.trip.count = zext nneg i32 %128 to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %for.cond456.preheader.loopexit.unr-lcssa, label %for.body441.lr.ph.new

for.body441.lr.ph.new:                            ; preds = %for.body441.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body441

for.cond456.preheader.loopexit.unr-lcssa:         ; preds = %for.body441, %for.body441.lr.ph
  %indvars.iv1483.unr = phi i64 [ 0, %for.body441.lr.ph ], [ %indvars.iv.next1484.3, %for.body441 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond456.preheader, label %for.body441.epil

for.body441.epil:                                 ; preds = %for.cond456.preheader.loopexit.unr-lcssa, %for.body441.epil
  %indvars.iv1483.epil = phi i64 [ %indvars.iv.next1484.epil, %for.body441.epil ], [ %indvars.iv1483.unr, %for.cond456.preheader.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body441.epil ], [ 0, %for.cond456.preheader.loopexit.unr-lcssa ]
  %arrayidx443.epil = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv1483.epil
  %130 = load ptr, ptr %arrayidx443.epil, align 8
  %integral444.epil = getelementptr inbounds i8, ptr %130, i64 240
  %131 = load ptr, ptr %integral444.epil, align 16
  %arrayidx446.epil = getelementptr inbounds i16, ptr %131, i64 %idxprom445
  %arrayidx451.epil = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv1483.epil
  store ptr %arrayidx446.epil, ptr %arrayidx451.epil, align 8
  %indvars.iv.next1484.epil = add nuw nsw i64 %indvars.iv1483.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond456.preheader, label %for.body441.epil, !llvm.loop !7

for.cond456.preheader:                            ; preds = %for.cond456.preheader.loopexit.unr-lcssa, %for.body441.epil, %if.then427
  %arrayidx460 = getelementptr inbounds i8, ptr %h, i64 21420
  %132 = load i32, ptr %arrayidx460, align 4
  %cmp4611475 = icmp sgt i32 %132, 0
  br i1 %cmp4611475, label %for.body464.lr.ph, label %if.end479

for.body464.lr.ph:                                ; preds = %for.cond456.preheader
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %idxprom468 = sext i32 %mul432 to i64
  %arrayidx473 = getelementptr inbounds i8, ptr %h, i64 24880
  %wide.trip.count1489 = zext nneg i32 %132 to i64
  %xtraiter1507 = and i64 %wide.trip.count1489, 3
  %133 = icmp ult i32 %132, 4
  br i1 %133, label %if.end479.loopexit.unr-lcssa, label %for.body464.lr.ph.new

for.body464.lr.ph.new:                            ; preds = %for.body464.lr.ph
  %unroll_iter1510 = and i64 %wide.trip.count1489, 2147483644
  br label %for.body464

for.body441:                                      ; preds = %for.body441, %for.body441.lr.ph.new
  %indvars.iv1483 = phi i64 [ 0, %for.body441.lr.ph.new ], [ %indvars.iv.next1484.3, %for.body441 ]
  %niter = phi i64 [ 0, %for.body441.lr.ph.new ], [ %niter.next.3, %for.body441 ]
  %arrayidx443 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv1483
  %134 = load ptr, ptr %arrayidx443, align 8
  %integral444 = getelementptr inbounds i8, ptr %134, i64 240
  %135 = load ptr, ptr %integral444, align 16
  %arrayidx446 = getelementptr inbounds i16, ptr %135, i64 %idxprom445
  %arrayidx451 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv1483
  store ptr %arrayidx446, ptr %arrayidx451, align 8
  %indvars.iv.next1484 = or disjoint i64 %indvars.iv1483, 1
  %arrayidx443.1 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484
  %136 = load ptr, ptr %arrayidx443.1, align 8
  %integral444.1 = getelementptr inbounds i8, ptr %136, i64 240
  %137 = load ptr, ptr %integral444.1, align 16
  %arrayidx446.1 = getelementptr inbounds i16, ptr %137, i64 %idxprom445
  %arrayidx451.1 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484
  store ptr %arrayidx446.1, ptr %arrayidx451.1, align 8
  %indvars.iv.next1484.1 = or disjoint i64 %indvars.iv1483, 2
  %arrayidx443.2 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484.1
  %138 = load ptr, ptr %arrayidx443.2, align 8
  %integral444.2 = getelementptr inbounds i8, ptr %138, i64 240
  %139 = load ptr, ptr %integral444.2, align 16
  %arrayidx446.2 = getelementptr inbounds i16, ptr %139, i64 %idxprom445
  %arrayidx451.2 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484.1
  store ptr %arrayidx446.2, ptr %arrayidx451.2, align 8
  %indvars.iv.next1484.2 = or disjoint i64 %indvars.iv1483, 3
  %arrayidx443.3 = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %indvars.iv.next1484.2
  %140 = load ptr, ptr %arrayidx443.3, align 8
  %integral444.3 = getelementptr inbounds i8, ptr %140, i64 240
  %141 = load ptr, ptr %integral444.3, align 16
  %arrayidx446.3 = getelementptr inbounds i16, ptr %141, i64 %idxprom445
  %arrayidx451.3 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv.next1484.2
  store ptr %arrayidx446.3, ptr %arrayidx451.3, align 8
  %indvars.iv.next1484.3 = add nuw nsw i64 %indvars.iv1483, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.cond456.preheader.loopexit.unr-lcssa, label %for.body441

for.body464:                                      ; preds = %for.body464, %for.body464.lr.ph.new
  %indvars.iv1486 = phi i64 [ 0, %for.body464.lr.ph.new ], [ %indvars.iv.next1487.3, %for.body464 ]
  %niter1511 = phi i64 [ 0, %for.body464.lr.ph.new ], [ %niter1511.next.3, %for.body464 ]
  %arrayidx466 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv1486
  %142 = load ptr, ptr %arrayidx466, align 8
  %integral467 = getelementptr inbounds i8, ptr %142, i64 240
  %143 = load ptr, ptr %integral467, align 16
  %arrayidx469 = getelementptr inbounds i16, ptr %143, i64 %idxprom468
  %arrayidx475 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv1486
  store ptr %arrayidx469, ptr %arrayidx475, align 8
  %indvars.iv.next1487 = or disjoint i64 %indvars.iv1486, 1
  %arrayidx466.1 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487
  %144 = load ptr, ptr %arrayidx466.1, align 8
  %integral467.1 = getelementptr inbounds i8, ptr %144, i64 240
  %145 = load ptr, ptr %integral467.1, align 16
  %arrayidx469.1 = getelementptr inbounds i16, ptr %145, i64 %idxprom468
  %arrayidx475.1 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487
  store ptr %arrayidx469.1, ptr %arrayidx475.1, align 8
  %indvars.iv.next1487.1 = or disjoint i64 %indvars.iv1486, 2
  %arrayidx466.2 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487.1
  %146 = load ptr, ptr %arrayidx466.2, align 8
  %integral467.2 = getelementptr inbounds i8, ptr %146, i64 240
  %147 = load ptr, ptr %integral467.2, align 16
  %arrayidx469.2 = getelementptr inbounds i16, ptr %147, i64 %idxprom468
  %arrayidx475.2 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487.1
  store ptr %arrayidx469.2, ptr %arrayidx475.2, align 8
  %indvars.iv.next1487.2 = or disjoint i64 %indvars.iv1486, 3
  %arrayidx466.3 = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv.next1487.2
  %148 = load ptr, ptr %arrayidx466.3, align 8
  %integral467.3 = getelementptr inbounds i8, ptr %148, i64 240
  %149 = load ptr, ptr %integral467.3, align 16
  %arrayidx469.3 = getelementptr inbounds i16, ptr %149, i64 %idxprom468
  %arrayidx475.3 = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv.next1487.2
  store ptr %arrayidx469.3, ptr %arrayidx475.3, align 8
  %indvars.iv.next1487.3 = add nuw nsw i64 %indvars.iv1486, 4
  %niter1511.next.3 = add i64 %niter1511, 4
  %niter1511.ncmp.3 = icmp eq i64 %niter1511.next.3, %unroll_iter1510
  br i1 %niter1511.ncmp.3, label %if.end479.loopexit.unr-lcssa, label %for.body464

if.end479.loopexit.unr-lcssa:                     ; preds = %for.body464, %for.body464.lr.ph
  %indvars.iv1486.unr = phi i64 [ 0, %for.body464.lr.ph ], [ %indvars.iv.next1487.3, %for.body464 ]
  %lcmp.mod1509.not = icmp eq i64 %xtraiter1507, 0
  br i1 %lcmp.mod1509.not, label %if.end479, label %for.body464.epil

for.body464.epil:                                 ; preds = %if.end479.loopexit.unr-lcssa, %for.body464.epil
  %indvars.iv1486.epil = phi i64 [ %indvars.iv.next1487.epil, %for.body464.epil ], [ %indvars.iv1486.unr, %if.end479.loopexit.unr-lcssa ]
  %epil.iter1508 = phi i64 [ %epil.iter1508.next, %for.body464.epil ], [ 0, %if.end479.loopexit.unr-lcssa ]
  %arrayidx466.epil = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %indvars.iv1486.epil
  %150 = load ptr, ptr %arrayidx466.epil, align 8
  %integral467.epil = getelementptr inbounds i8, ptr %150, i64 240
  %151 = load ptr, ptr %integral467.epil, align 16
  %arrayidx469.epil = getelementptr inbounds i16, ptr %151, i64 %idxprom468
  %arrayidx475.epil = getelementptr inbounds [16 x ptr], ptr %arrayidx473, i64 0, i64 %indvars.iv1486.epil
  store ptr %arrayidx469.epil, ptr %arrayidx475.epil, align 8
  %indvars.iv.next1487.epil = add nuw nsw i64 %indvars.iv1486.epil, 1
  %epil.iter1508.next = add i64 %epil.iter1508, 1
  %epil.iter1508.cmp.not = icmp eq i64 %epil.iter1508.next, %xtraiter1507
  br i1 %epil.iter1508.cmp.not, label %if.end479, label %for.body464.epil, !llvm.loop !9

if.end479:                                        ; preds = %if.end479.loopexit.unr-lcssa, %for.body464.epil, %for.cond456.preheader, %if.end425
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %152 = load ptr, ptr %fenc, align 8
  %i_stride.i = getelementptr inbounds i8, ptr %152, i64 104
  %153 = load i32, ptr %i_stride.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, ptr %152, i64 108
  %154 = load i32, ptr %arrayidx2.i, align 4
  %mul.i1458 = mul nsw i32 %153, %mb_y
  %add.i1459 = add nsw i32 %mul.i1458, %mb_x
  %mul3.i = shl nsw i32 %add.i1459, 4
  %mul4.i = mul nsw i32 %154, %mb_y
  %add5.i = add nsw i32 %mul4.i, %mb_x
  %mul6.i1460 = shl nsw i32 %add5.i, 3
  %prefetch_fenc.i = getelementptr inbounds i8, ptr %h, i64 32800
  %155 = load ptr, ptr %prefetch_fenc.i, align 8
  %plane.i = getelementptr inbounds i8, ptr %152, i64 152
  %156 = load ptr, ptr %plane.i, align 8
  %idx.ext.i = sext i32 %mul3.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %156, i64 %idx.ext.i
  %and.i = and i32 %mb_x, 1
  %add9.i = add nuw nsw i32 %and.i, 1
  %idxprom.i1461 = zext nneg i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds [3 x ptr], ptr %plane.i, i64 0, i64 %idxprom.i1461
  %157 = load ptr, ptr %arrayidx10.i, align 8
  %idx.ext11.i = sext i32 %mul6.i1460 to i64
  %add.ptr12.i = getelementptr inbounds i8, ptr %157, i64 %idx.ext11.i
  tail call void %155(ptr noundef %add.ptr.i, i32 noundef %153, ptr noundef %add.ptr12.i, i32 noundef %154, i32 noundef %mb_x) #13
  %i_type481 = getelementptr inbounds i8, ptr %h, i64 7248
  %158 = load i32, ptr %i_type481, align 16
  %cmp482.not = icmp eq i32 %158, 2
  br i1 %cmp482.not, label %if.end1018, label %if.then484

if.then484:                                       ; preds = %if.end479
  %159 = load i32, ptr %i_b8_stride.i, align 8
  %160 = load i32, ptr %i_b4_stride.i, align 4
  %cmp493 = icmp eq i32 %158, 1
  %161 = load i32, ptr %i_neighbour.i, align 8
  %162 = insertelement <4 x i32> poison, i32 %161, i64 0
  %163 = shufflevector <4 x i32> %162, <4 x i32> poison, <4 x i32> zeroinitializer
  %164 = and <4 x i32> %163, <i32 1, i32 4, i32 2, i32 8>
  %165 = icmp eq <4 x i32> %164, zeroinitializer
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %166 = load i32, ptr %b_cabac, align 16
  %tobool802.not = icmp eq i32 %166, 0
  %167 = sext i32 %add6 to i64
  %168 = sext i32 %add12 to i64
  %mul744 = shl nsw i32 %160, 1
  %mul758 = mul nsw i32 %160, 3
  %mvd806 = getelementptr inbounds i8, ptr %h, i64 16688
  %idxprom814 = sext i32 %38 to i64
  %idxprom843 = sext i32 %8 to i64
  %169 = extractelement <4 x i1> %165, i64 0
  %170 = extractelement <4 x i1> %165, i64 1
  %171 = extractelement <4 x i1> %165, i64 2
  %172 = extractelement <4 x i1> %165, i64 3
  %ref507 = getelementptr inbounds i8, ptr %h, i64 16704
  %mv502 = getelementptr inbounds i8, ptr %h, i64 16672
  %173 = load ptr, ptr %mv502, align 8
  %174 = load ptr, ptr %ref507, align 8
  br i1 %172, label %if.else538, label %if.then516

if.then516:                                       ; preds = %if.then484
  %175 = getelementptr i8, ptr %174, i64 %167
  %arrayidx519 = getelementptr i8, ptr %175, i64 -1
  %176 = load i8, ptr %arrayidx519, align 1
  %arrayidx526 = getelementptr inbounds i8, ptr %h, i64 25123
  store i8 %176, ptr %arrayidx526, align 1
  %177 = getelementptr [2 x i16], ptr %173, i64 %168
  %arrayidx529 = getelementptr i8, ptr %177, i64 -4
  %178 = load i32, ptr %arrayidx529, align 4
  br label %if.end554

if.else538:                                       ; preds = %if.then484
  %arrayidx545 = getelementptr inbounds i8, ptr %h, i64 25123
  store i8 -2, ptr %arrayidx545, align 1
  br label %if.end554

if.end554:                                        ; preds = %if.else538, %if.then516
  %.sink = phi i32 [ 0, %if.else538 ], [ %178, %if.then516 ]
  %arrayidx552 = getelementptr inbounds i8, ptr %h, i64 25212
  store i32 %.sink, ptr %arrayidx552, align 4
  br i1 %171, label %if.else610, label %if.then560

if.then560:                                       ; preds = %if.end554
  %arrayidx563 = getelementptr inbounds i8, ptr %174, i64 %167
  %179 = load i8, ptr %arrayidx563, align 1
  %arrayidx571 = getelementptr inbounds i8, ptr %h, i64 25125
  store i8 %179, ptr %arrayidx571, align 1
  %arrayidx579 = getelementptr inbounds i8, ptr %h, i64 25124
  store i8 %179, ptr %arrayidx579, align 1
  %arrayidx582 = getelementptr i8, ptr %arrayidx563, i64 1
  %180 = load i8, ptr %arrayidx582, align 1
  %arrayidx590 = getelementptr inbounds i8, ptr %h, i64 25127
  store i8 %180, ptr %arrayidx590, align 1
  %arrayidx598 = getelementptr inbounds i8, ptr %h, i64 25126
  store i8 %180, ptr %arrayidx598, align 1
  %arrayidx605 = getelementptr inbounds i8, ptr %h, i64 25216
  %arrayidx608 = getelementptr inbounds [2 x i16], ptr %173, i64 %168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx605, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx608, i64 16, i1 false)
  br label %if.end627

if.else610:                                       ; preds = %if.end554
  %arrayidx617 = getelementptr inbounds i8, ptr %h, i64 25216
  %arrayidx626 = getelementptr inbounds i8, ptr %h, i64 25124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx617, i8 0, i64 16, i1 false)
  store i32 -16843010, ptr %arrayidx626, align 1
  br label %if.end627

if.end627:                                        ; preds = %if.else610, %if.then560
  br i1 %170, label %if.else657, label %if.then634

if.then634:                                       ; preds = %if.end627
  %181 = getelementptr i8, ptr %174, i64 %167
  %arrayidx637 = getelementptr i8, ptr %181, i64 2
  %182 = load i8, ptr %arrayidx637, align 1
  %arrayidx644 = getelementptr inbounds i8, ptr %h, i64 25128
  store i8 %182, ptr %arrayidx644, align 1
  %183 = getelementptr [2 x i16], ptr %173, i64 %168
  %arrayidx647 = getelementptr i8, ptr %183, i64 16
  %184 = load i32, ptr %arrayidx647, align 4
  %arrayidx655 = getelementptr inbounds i8, ptr %h, i64 25232
  store i32 %184, ptr %arrayidx655, align 4
  br label %if.end665

if.else657:                                       ; preds = %if.end627
  %arrayidx664 = getelementptr inbounds i8, ptr %h, i64 25128
  store i8 -2, ptr %arrayidx664, align 1
  br label %if.end665

if.end665:                                        ; preds = %if.else657, %if.then634
  br i1 %169, label %for.body778.preheader, label %if.then671

for.body778.preheader:                            ; preds = %if.end665
  %arrayidx787 = getelementptr inbounds i8, ptr %h, i64 25131
  store i8 -2, ptr %arrayidx787, align 1
  %arrayidx796 = getelementptr inbounds i8, ptr %h, i64 25244
  store i32 0, ptr %arrayidx796, align 4
  %arrayidx787.1 = getelementptr inbounds i8, ptr %h, i64 25139
  store i8 -2, ptr %arrayidx787.1, align 1
  %arrayidx796.1 = getelementptr inbounds i8, ptr %h, i64 25276
  store i32 0, ptr %arrayidx796.1, align 4
  %arrayidx787.2 = getelementptr inbounds i8, ptr %h, i64 25147
  store i8 -2, ptr %arrayidx787.2, align 1
  %arrayidx796.2 = getelementptr inbounds i8, ptr %h, i64 25308
  store i32 0, ptr %arrayidx796.2, align 4
  %arrayidx787.3 = getelementptr inbounds i8, ptr %h, i64 25155
  store i8 -2, ptr %arrayidx787.3, align 1
  %arrayidx796.3 = getelementptr inbounds i8, ptr %h, i64 25340
  store i32 0, ptr %arrayidx796.3, align 4
  br label %if.end801

if.then671:                                       ; preds = %if.end665
  %185 = load i32, ptr %i_b8_xy.i, align 4
  %sub673 = add nsw i32 %185, -1
  %186 = load i32, ptr %i_b4_xy.i, align 16
  %sub675 = add nsw i32 %186, -1
  %idxprom678 = sext i32 %sub673 to i64
  %arrayidx679 = getelementptr inbounds i8, ptr %174, i64 %idxprom678
  %187 = load i8, ptr %arrayidx679, align 1
  %arrayidx687 = getelementptr inbounds i8, ptr %h, i64 25139
  store i8 %187, ptr %arrayidx687, align 1
  %arrayidx695 = getelementptr inbounds i8, ptr %h, i64 25131
  store i8 %187, ptr %arrayidx695, align 1
  %add697 = add nsw i32 %sub673, %159
  %idxprom698 = sext i32 %add697 to i64
  %arrayidx699 = getelementptr inbounds i8, ptr %174, i64 %idxprom698
  %188 = load i8, ptr %arrayidx699, align 1
  %arrayidx707 = getelementptr inbounds i8, ptr %h, i64 25155
  store i8 %188, ptr %arrayidx707, align 1
  %arrayidx715 = getelementptr inbounds i8, ptr %h, i64 25147
  store i8 %188, ptr %arrayidx715, align 1
  %idxprom718 = sext i32 %sub675 to i64
  %arrayidx719 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom718
  %189 = load i32, ptr %arrayidx719, align 4
  %arrayidx728 = getelementptr inbounds i8, ptr %h, i64 25244
  store i32 %189, ptr %arrayidx728, align 4
  %add731 = add nsw i32 %sub675, %160
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom732
  %190 = load i32, ptr %arrayidx733, align 4
  %arrayidx742 = getelementptr inbounds i8, ptr %h, i64 25276
  store i32 %190, ptr %arrayidx742, align 4
  %add745 = add nsw i32 %sub675, %mul744
  %idxprom746 = sext i32 %add745 to i64
  %arrayidx747 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom746
  %191 = load i32, ptr %arrayidx747, align 4
  %arrayidx756 = getelementptr inbounds i8, ptr %h, i64 25308
  store i32 %191, ptr %arrayidx756, align 4
  %add759 = add nsw i32 %sub675, %mul758
  %idxprom760 = sext i32 %add759 to i64
  %arrayidx761 = getelementptr inbounds [2 x i16], ptr %173, i64 %idxprom760
  %192 = load i32, ptr %arrayidx761, align 4
  %arrayidx770 = getelementptr inbounds i8, ptr %h, i64 25340
  store i32 %192, ptr %arrayidx770, align 4
  br label %if.end801

if.end801:                                        ; preds = %for.body778.preheader, %if.then671
  br i1 %tobool802.not, label %if.end917, label %if.then803

if.then803:                                       ; preds = %if.end801
  %193 = load ptr, ptr %mvd806, align 8
  br i1 %171, label %if.end837, label %if.then813

if.then813:                                       ; preds = %if.then803
  %arrayidx815 = getelementptr inbounds [8 x [2 x i8]], ptr %193, i64 %idxprom814
  %194 = load i64, ptr %arrayidx815, align 8
  br label %if.end837

if.end837:                                        ; preds = %if.then803, %if.then813
  %.sink1506 = phi i64 [ %194, %if.then813 ], [ 0, %if.then803 ]
  %arrayidx835 = getelementptr inbounds i8, ptr %h, i64 25528
  store i64 %.sink1506, ptr %arrayidx835, align 2
  br i1 %169, label %for.body901.preheader, label %if.then842

for.body901.preheader:                            ; preds = %if.end837
  %arrayidx911 = getelementptr inbounds i8, ptr %h, i64 25542
  store i16 0, ptr %arrayidx911, align 2
  %arrayidx911.1 = getelementptr inbounds i8, ptr %h, i64 25558
  store i16 0, ptr %arrayidx911.1, align 2
  %arrayidx911.2 = getelementptr inbounds i8, ptr %h, i64 25574
  store i16 0, ptr %arrayidx911.2, align 2
  %arrayidx911.3 = getelementptr inbounds i8, ptr %h, i64 25590
  store i16 0, ptr %arrayidx911.3, align 2
  br label %if.end917

if.then842:                                       ; preds = %if.end837
  %arrayidx844 = getelementptr inbounds [8 x [2 x i8]], ptr %193, i64 %idxprom843
  %arrayidx845 = getelementptr inbounds i8, ptr %arrayidx844, i64 8
  %195 = load i16, ptr %arrayidx845, align 2
  %arrayidx854 = getelementptr inbounds i8, ptr %h, i64 25542
  store i16 %195, ptr %arrayidx854, align 2
  %arrayidx858 = getelementptr inbounds i8, ptr %arrayidx844, i64 10
  %196 = load i16, ptr %arrayidx858, align 2
  %arrayidx867 = getelementptr inbounds i8, ptr %h, i64 25558
  store i16 %196, ptr %arrayidx867, align 2
  %arrayidx871 = getelementptr inbounds i8, ptr %arrayidx844, i64 12
  %197 = load i16, ptr %arrayidx871, align 2
  %arrayidx880 = getelementptr inbounds i8, ptr %h, i64 25574
  store i16 %197, ptr %arrayidx880, align 2
  %arrayidx884 = getelementptr inbounds i8, ptr %arrayidx844, i64 6
  %198 = load i16, ptr %arrayidx884, align 2
  %arrayidx893 = getelementptr inbounds i8, ptr %h, i64 25590
  store i16 %198, ptr %arrayidx893, align 2
  br label %if.end917

if.end917:                                        ; preds = %for.body901.preheader, %if.then842, %if.end801
  br i1 %cmp493, label %for.body499.1, label %if.end1008

for.body499.1:                                    ; preds = %if.end917
  %arrayidx504.1 = getelementptr inbounds i8, ptr %h, i64 16680
  %199 = load ptr, ptr %arrayidx504.1, align 8
  %arrayidx509.1 = getelementptr inbounds i8, ptr %h, i64 16712
  %200 = load ptr, ptr %arrayidx509.1, align 8
  br i1 %172, label %if.else538.1, label %if.then516.1

if.then516.1:                                     ; preds = %for.body499.1
  %201 = getelementptr i8, ptr %200, i64 %167
  %arrayidx519.1 = getelementptr i8, ptr %201, i64 -1
  %202 = load i8, ptr %arrayidx519.1, align 1
  %arrayidx526.1 = getelementptr inbounds i8, ptr %h, i64 25163
  store i8 %202, ptr %arrayidx526.1, align 1
  %203 = getelementptr [2 x i16], ptr %199, i64 %168
  %arrayidx529.1 = getelementptr i8, ptr %203, i64 -4
  %204 = load i32, ptr %arrayidx529.1, align 4
  br label %if.end554.1

if.else538.1:                                     ; preds = %for.body499.1
  %arrayidx545.1 = getelementptr inbounds i8, ptr %h, i64 25163
  store i8 -2, ptr %arrayidx545.1, align 1
  br label %if.end554.1

if.end554.1:                                      ; preds = %if.else538.1, %if.then516.1
  %.sink.1 = phi i32 [ 0, %if.else538.1 ], [ %204, %if.then516.1 ]
  %arrayidx552.1 = getelementptr inbounds i8, ptr %h, i64 25372
  store i32 %.sink.1, ptr %arrayidx552.1, align 4
  br i1 %171, label %if.else610.1, label %if.then560.1

if.then560.1:                                     ; preds = %if.end554.1
  %arrayidx563.1 = getelementptr inbounds i8, ptr %200, i64 %167
  %205 = load i8, ptr %arrayidx563.1, align 1
  %arrayidx571.1 = getelementptr inbounds i8, ptr %h, i64 25165
  store i8 %205, ptr %arrayidx571.1, align 1
  %arrayidx579.1 = getelementptr inbounds i8, ptr %h, i64 25164
  store i8 %205, ptr %arrayidx579.1, align 1
  %arrayidx582.1 = getelementptr i8, ptr %arrayidx563.1, i64 1
  %206 = load i8, ptr %arrayidx582.1, align 1
  %arrayidx590.1 = getelementptr inbounds i8, ptr %h, i64 25167
  store i8 %206, ptr %arrayidx590.1, align 1
  %arrayidx598.1 = getelementptr inbounds i8, ptr %h, i64 25166
  store i8 %206, ptr %arrayidx598.1, align 1
  %arrayidx605.1 = getelementptr inbounds i8, ptr %h, i64 25376
  %arrayidx608.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx605.1, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx608.1, i64 16, i1 false)
  br label %if.end627.1

if.else610.1:                                     ; preds = %if.end554.1
  %arrayidx617.1 = getelementptr inbounds i8, ptr %h, i64 25376
  %arrayidx626.1 = getelementptr inbounds i8, ptr %h, i64 25164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx617.1, i8 0, i64 16, i1 false)
  store i32 -16843010, ptr %arrayidx626.1, align 1
  br label %if.end627.1

if.end627.1:                                      ; preds = %if.else610.1, %if.then560.1
  br i1 %170, label %if.else657.1, label %if.then634.1

if.then634.1:                                     ; preds = %if.end627.1
  %207 = getelementptr i8, ptr %200, i64 %167
  %arrayidx637.1 = getelementptr i8, ptr %207, i64 2
  %208 = load i8, ptr %arrayidx637.1, align 1
  %arrayidx644.1 = getelementptr inbounds i8, ptr %h, i64 25168
  store i8 %208, ptr %arrayidx644.1, align 1
  %209 = getelementptr [2 x i16], ptr %199, i64 %168
  %arrayidx647.1 = getelementptr i8, ptr %209, i64 16
  %210 = load i32, ptr %arrayidx647.1, align 4
  %arrayidx655.1 = getelementptr inbounds i8, ptr %h, i64 25392
  store i32 %210, ptr %arrayidx655.1, align 4
  br label %if.end665.1

if.else657.1:                                     ; preds = %if.end627.1
  %arrayidx664.1 = getelementptr inbounds i8, ptr %h, i64 25168
  store i8 -2, ptr %arrayidx664.1, align 1
  br label %if.end665.1

if.end665.1:                                      ; preds = %if.else657.1, %if.then634.1
  br i1 %169, label %for.body778.preheader.1, label %if.then671.1

if.then671.1:                                     ; preds = %if.end665.1
  %211 = load i32, ptr %i_b8_xy.i, align 4
  %sub673.1 = add nsw i32 %211, -1
  %212 = load i32, ptr %i_b4_xy.i, align 16
  %sub675.1 = add nsw i32 %212, -1
  %idxprom678.1 = sext i32 %sub673.1 to i64
  %arrayidx679.1 = getelementptr inbounds i8, ptr %200, i64 %idxprom678.1
  %213 = load i8, ptr %arrayidx679.1, align 1
  %arrayidx687.1 = getelementptr inbounds i8, ptr %h, i64 25179
  store i8 %213, ptr %arrayidx687.1, align 1
  %arrayidx695.1 = getelementptr inbounds i8, ptr %h, i64 25171
  store i8 %213, ptr %arrayidx695.1, align 1
  %add697.1 = add nsw i32 %sub673.1, %159
  %idxprom698.1 = sext i32 %add697.1 to i64
  %arrayidx699.1 = getelementptr inbounds i8, ptr %200, i64 %idxprom698.1
  %214 = load i8, ptr %arrayidx699.1, align 1
  %arrayidx707.1 = getelementptr inbounds i8, ptr %h, i64 25195
  store i8 %214, ptr %arrayidx707.1, align 1
  %arrayidx715.1 = getelementptr inbounds i8, ptr %h, i64 25187
  store i8 %214, ptr %arrayidx715.1, align 1
  %idxprom718.1 = sext i32 %sub675.1 to i64
  %arrayidx719.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom718.1
  %215 = load i32, ptr %arrayidx719.1, align 4
  %arrayidx728.1 = getelementptr inbounds i8, ptr %h, i64 25404
  store i32 %215, ptr %arrayidx728.1, align 4
  %add731.1 = add nsw i32 %sub675.1, %160
  %idxprom732.1 = sext i32 %add731.1 to i64
  %arrayidx733.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom732.1
  %216 = load i32, ptr %arrayidx733.1, align 4
  %arrayidx742.1 = getelementptr inbounds i8, ptr %h, i64 25436
  store i32 %216, ptr %arrayidx742.1, align 4
  %add745.1 = add nsw i32 %sub675.1, %mul744
  %idxprom746.1 = sext i32 %add745.1 to i64
  %arrayidx747.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom746.1
  %217 = load i32, ptr %arrayidx747.1, align 4
  %arrayidx756.1 = getelementptr inbounds i8, ptr %h, i64 25468
  store i32 %217, ptr %arrayidx756.1, align 4
  %add759.1 = add nsw i32 %sub675.1, %mul758
  %idxprom760.1 = sext i32 %add759.1 to i64
  %arrayidx761.1 = getelementptr inbounds [2 x i16], ptr %199, i64 %idxprom760.1
  %218 = load i32, ptr %arrayidx761.1, align 4
  %arrayidx770.1 = getelementptr inbounds i8, ptr %h, i64 25500
  store i32 %218, ptr %arrayidx770.1, align 4
  br label %if.end801.1

for.body778.preheader.1:                          ; preds = %if.end665.1
  %arrayidx787.11512 = getelementptr inbounds i8, ptr %h, i64 25171
  store i8 -2, ptr %arrayidx787.11512, align 1
  %arrayidx796.11513 = getelementptr inbounds i8, ptr %h, i64 25404
  store i32 0, ptr %arrayidx796.11513, align 4
  %arrayidx787.1.1 = getelementptr inbounds i8, ptr %h, i64 25179
  store i8 -2, ptr %arrayidx787.1.1, align 1
  %arrayidx796.1.1 = getelementptr inbounds i8, ptr %h, i64 25436
  store i32 0, ptr %arrayidx796.1.1, align 4
  %arrayidx787.2.1 = getelementptr inbounds i8, ptr %h, i64 25187
  store i8 -2, ptr %arrayidx787.2.1, align 1
  %arrayidx796.2.1 = getelementptr inbounds i8, ptr %h, i64 25468
  store i32 0, ptr %arrayidx796.2.1, align 4
  %arrayidx787.3.1 = getelementptr inbounds i8, ptr %h, i64 25195
  store i8 -2, ptr %arrayidx787.3.1, align 1
  %arrayidx796.3.1 = getelementptr inbounds i8, ptr %h, i64 25500
  store i32 0, ptr %arrayidx796.3.1, align 4
  br label %if.end801.1

if.end801.1:                                      ; preds = %for.body778.preheader.1, %if.then671.1
  br i1 %tobool802.not, label %if.end917.1, label %if.then803.1

if.then803.1:                                     ; preds = %if.end801.1
  %arrayidx808.1 = getelementptr inbounds i8, ptr %h, i64 16696
  %219 = load ptr, ptr %arrayidx808.1, align 8
  br i1 %171, label %if.end837.1, label %if.then813.1

if.then813.1:                                     ; preds = %if.then803.1
  %arrayidx815.1 = getelementptr inbounds [8 x [2 x i8]], ptr %219, i64 %idxprom814
  %220 = load i64, ptr %arrayidx815.1, align 8
  br label %if.end837.1

if.end837.1:                                      ; preds = %if.then813.1, %if.then803.1
  %.sink1506.1 = phi i64 [ %220, %if.then813.1 ], [ 0, %if.then803.1 ]
  %arrayidx835.1 = getelementptr inbounds i8, ptr %h, i64 25608
  store i64 %.sink1506.1, ptr %arrayidx835.1, align 2
  br i1 %169, label %for.body901.preheader.1, label %if.then842.1

if.then842.1:                                     ; preds = %if.end837.1
  %arrayidx844.1 = getelementptr inbounds [8 x [2 x i8]], ptr %219, i64 %idxprom843
  %arrayidx845.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 8
  %221 = load i16, ptr %arrayidx845.1, align 2
  %arrayidx854.1 = getelementptr inbounds i8, ptr %h, i64 25622
  store i16 %221, ptr %arrayidx854.1, align 2
  %arrayidx858.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 10
  %222 = load i16, ptr %arrayidx858.1, align 2
  %arrayidx867.1 = getelementptr inbounds i8, ptr %h, i64 25638
  store i16 %222, ptr %arrayidx867.1, align 2
  %arrayidx871.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 12
  %223 = load i16, ptr %arrayidx871.1, align 2
  %arrayidx880.1 = getelementptr inbounds i8, ptr %h, i64 25654
  store i16 %223, ptr %arrayidx880.1, align 2
  %arrayidx884.1 = getelementptr inbounds i8, ptr %arrayidx844.1, i64 6
  %224 = load i16, ptr %arrayidx884.1, align 2
  %arrayidx893.1 = getelementptr inbounds i8, ptr %h, i64 25670
  store i16 %224, ptr %arrayidx893.1, align 2
  br label %if.end917.1

for.body901.preheader.1:                          ; preds = %if.end837.1
  %arrayidx911.11514 = getelementptr inbounds i8, ptr %h, i64 25622
  store i16 0, ptr %arrayidx911.11514, align 2
  %arrayidx911.1.1 = getelementptr inbounds i8, ptr %h, i64 25638
  store i16 0, ptr %arrayidx911.1.1, align 2
  %arrayidx911.2.1 = getelementptr inbounds i8, ptr %h, i64 25654
  store i16 0, ptr %arrayidx911.2.1, align 2
  %arrayidx911.3.1 = getelementptr inbounds i8, ptr %h, i64 25670
  store i16 0, ptr %arrayidx911.3.1, align 2
  br label %if.end917.1

if.end917.1:                                      ; preds = %for.body901.preheader.1, %if.then842.1, %if.end801.1
  br i1 %cmp493, label %if.then925, label %if.end1008

if.then925:                                       ; preds = %if.end917.1
  %bipred_weight_buf = getelementptr inbounds i8, ptr %h, i64 26368
  %225 = load i32, ptr %b_interlaced.i, align 4
  %and929 = and i32 %mb_y, 1
  %and930 = and i32 %and929, %225
  %idxprom931 = zext nneg i32 %and930 to i64
  %arrayidx932 = getelementptr inbounds [2 x [32 x [4 x i8]]], ptr %bipred_weight_buf, i64 0, i64 %idxprom931
  %bipred_weight = getelementptr inbounds i8, ptr %h, i64 26624
  store ptr %arrayidx932, ptr %bipred_weight, align 16
  %dist_scale_factor_buf = getelementptr inbounds i8, ptr %h, i64 25848
  %arrayidx941 = getelementptr inbounds [2 x [32 x [4 x i16]]], ptr %dist_scale_factor_buf, i64 0, i64 %idxprom931
  %dist_scale_factor = getelementptr inbounds i8, ptr %h, i64 26360
  store ptr %arrayidx941, ptr %dist_scale_factor, align 8
  br i1 %tobool802.not, label %if.end1018, label %if.then947

if.then947:                                       ; preds = %if.then925
  %arrayidx.i1462 = getelementptr inbounds i8, ptr %h, i64 25692
  store i32 0, ptr %arrayidx.i1462, align 4
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %h, i64 25700
  store i32 0, ptr %add.ptr49.i.i, align 4
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %h, i64 25708
  store i32 0, ptr %add.ptr56.i.i, align 4
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %h, i64 25716
  store i32 0, ptr %add.ptr59.i.i, align 4
  br i1 %169, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then947
  %skipbp953 = getelementptr inbounds i8, ptr %h, i64 17232
  %226 = load ptr, ptr %skipbp953, align 16
  %arrayidx955 = getelementptr inbounds i8, ptr %226, i64 %idxprom843
  %227 = load i8, ptr %arrayidx955, align 1
  br label %cond.end

cond.end:                                         ; preds = %if.then947, %cond.true
  %cond = phi i8 [ %227, %cond.true ], [ 0, %if.then947 ]
  %conv960 = and i8 %cond, 2
  %arrayidx965 = getelementptr inbounds i8, ptr %h, i64 25691
  store i8 %conv960, ptr %arrayidx965, align 1
  %conv968 = and i8 %cond, 8
  %arrayidx974 = getelementptr inbounds i8, ptr %h, i64 25707
  store i8 %conv968, ptr %arrayidx974, align 1
  br i1 %171, label %cond.end986, label %cond.true979

cond.true979:                                     ; preds = %cond.end
  %skipbp981 = getelementptr inbounds i8, ptr %h, i64 17232
  %228 = load ptr, ptr %skipbp981, align 16
  %arrayidx983 = getelementptr inbounds i8, ptr %228, i64 %idxprom814
  %229 = load i8, ptr %arrayidx983, align 1
  br label %cond.end986

cond.end986:                                      ; preds = %cond.end, %cond.true979
  %cond987 = phi i8 [ %229, %cond.true979 ], [ 0, %cond.end ]
  %conv991 = and i8 %cond987, 4
  %arrayidx997 = getelementptr inbounds i8, ptr %h, i64 25684
  store i8 %conv991, ptr %arrayidx997, align 1
  %conv1000 = and i8 %cond987, 8
  %arrayidx1006 = getelementptr inbounds i8, ptr %h, i64 25686
  store i8 %conv1000, ptr %arrayidx1006, align 1
  br label %if.end1018

if.end1008:                                       ; preds = %if.end917, %if.end917.1
  %cmp1011 = icmp eq i32 %158, 0
  br i1 %cmp1011, label %if.then1013, label %if.end1018

if.then1013:                                      ; preds = %if.end1008
  %pskip_mv = getelementptr inbounds i8, ptr %h, i64 25764
  tail call void @x264_mb_predict_mv_pskip(ptr noundef nonnull %h, ptr noundef nonnull %pskip_mv) #13
  br label %if.end1018

if.end1018:                                       ; preds = %cond.end986, %if.then925, %if.end1008, %if.then1013, %if.end479
  %230 = load i32, ptr %i_neighbour_intra.i, align 4
  %and1020 = and i32 %230, 11
  %and1023 = shl i32 %230, 1
  %cond1025 = and i32 %and1023, 4
  %or = or disjoint i32 %cond1025, %and1020
  %i_neighbour8 = getelementptr inbounds i8, ptr %h, i64 16492
  store i32 %or, ptr %i_neighbour8, align 4
  %i_neighbour4 = getelementptr inbounds i8, ptr %h, i64 16508
  store i32 %or, ptr %i_neighbour4, align 4
  %and1032 = and i32 %230, 2
  %tobool1033.not = icmp eq i32 %and1032, 0
  %or1035 = select i1 %tobool1033.not, i32 1, i32 15
  %arrayidx1038 = getelementptr inbounds i8, ptr %h, i64 16512
  store i32 %or1035, ptr %arrayidx1038, align 4
  %arrayidx1041 = getelementptr inbounds i8, ptr %h, i64 16524
  store i32 %or1035, ptr %arrayidx1041, align 4
  %and1044 = and i32 %230, 1
  %tobool1045.not = icmp eq i32 %and1044, 0
  %or1047 = select i1 %tobool1045.not, i32 6, i32 15
  %arrayidx1050 = getelementptr inbounds i8, ptr %h, i64 16500
  store i32 %or1047, ptr %arrayidx1050, align 4
  %arrayidx1053 = getelementptr inbounds i8, ptr %h, i64 16548
  store i32 %or1047, ptr %arrayidx1053, align 4
  %arrayidx1056 = getelementptr inbounds i8, ptr %h, i64 16540
  store i32 %or1047, ptr %arrayidx1056, align 4
  %arrayidx1059 = getelementptr inbounds i8, ptr %h, i64 16516
  store i32 %or1047, ptr %arrayidx1059, align 4
  %and1062 = and i32 %230, 4
  %cond1068 = select i1 %tobool1033.not, i32 0, i32 10
  %or1063 = or disjoint i32 %and1062, %cond1068
  %or1069 = or disjoint i32 %or1063, 1
  %arrayidx1072 = getelementptr inbounds i8, ptr %h, i64 16496
  store i32 %or1069, ptr %arrayidx1072, align 4
  %arrayidx1075 = getelementptr inbounds i8, ptr %h, i64 16528
  store i32 %or1069, ptr %arrayidx1075, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr nocapture noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %i) unnamed_addr #7 {
entry:
  %ref_pix_offset = alloca [2 x i32], align 4
  %cmp = icmp eq i32 %i, 0
  %cond = select i1 %cmp, i32 16, i32 8
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %0 = load ptr, ptr %fdec, align 16
  %i_stride1 = getelementptr inbounds i8, ptr %0, i64 104
  %tobool = icmp ne i32 %i, 0
  %lnot.ext = zext i1 %tobool to i32
  %idxprom = zext i1 %tobool to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr %i_stride1, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %2 = load i32, ptr %b_interlaced, align 4
  %shl = shl i32 %1, %2
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %and = and i32 %mb_y, -2
  %mul = mul nsw i32 %1, %and
  %add = add nsw i32 %mul, %mb_x
  %3 = select i1 %cmp, i32 4, i32 3
  %mul6 = shl i32 %add, %3
  %4 = trunc i32 %mb_y to i1
  %mul8 = select i1 %4, i32 %1, i32 0
  %add9 = add nsw i32 %mul6, %mul8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %mul10 = mul nsw i32 %1, %mb_y
  %add11 = add nsw i32 %mul10, %mb_x
  %5 = select i1 %cmp, i32 4, i32 3
  %mul12 = shl i32 %add11, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %add9, %cond.true ], [ %mul12, %cond.false ]
  %plane = getelementptr inbounds i8, ptr %0, i64 152
  %idxprom15 = zext nneg i32 %i to i64
  %arrayidx16 = getelementptr inbounds [3 x ptr], ptr %plane, i64 0, i64 %idxprom15
  %6 = load ptr, ptr %arrayidx16, align 8
  %idxprom17 = sext i32 %cond13 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %6, i64 %idxprom17
  %intra_border_backup = getelementptr inbounds i8, ptr %h, i64 31184
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %7 = load i32, ptr %b_mbaff, align 4
  %and19 = and i32 %7, %mb_y
  %idxprom20 = sext i32 %and19 to i64
  %arrayidx23 = getelementptr inbounds [2 x [3 x ptr]], ptr %intra_border_backup, i64 0, i64 %idxprom20, i64 %idxprom15
  %8 = load ptr, ptr %arrayidx23, align 8
  %mul24 = shl nsw i32 %mb_x, 4
  %shr = ashr exact i32 %mul24, %lnot.ext
  %idxprom30 = sext i32 %shr to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %8, i64 %idxprom30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref_pix_offset) #13
  store i32 %cond13, ptr %ref_pix_offset, align 4
  %arrayinit.element = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %and37 = shl i32 %mb_y, 1
  %mul38 = and i32 %and37, 2
  %sub = sub nsw i32 1, %mul38
  %mul39 = mul nsw i32 %1, %sub
  %add41 = add nsw i32 %cond13, %mul39
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %storemerge = phi i32 [ %add41, %if.then ], [ %cond13, %cond.end ]
  store i32 %storemerge, ptr %arrayinit.element, align 4
  %i_stride43 = getelementptr inbounds i8, ptr %h, i64 25008
  %arrayidx45 = getelementptr inbounds [3 x i32], ptr %i_stride43, i64 0, i64 %idxprom15
  store i32 %shl, ptr %arrayidx45, align 4
  %fenc = getelementptr inbounds i8, ptr %h, i64 14680
  %9 = load ptr, ptr %fenc, align 8
  %plane46 = getelementptr inbounds i8, ptr %9, i64 152
  %arrayidx48 = getelementptr inbounds [3 x ptr], ptr %plane46, i64 0, i64 %idxprom15
  %10 = load ptr, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %10, i64 %idxprom17
  %p_fenc_plane = getelementptr inbounds i8, ptr %h, i64 21368
  %arrayidx54 = getelementptr inbounds [3 x ptr], ptr %p_fenc_plane, i64 0, i64 %idxprom15
  store ptr %arrayidx50, ptr %arrayidx54, align 8
  %copy = getelementptr inbounds i8, ptr %h, i64 32720
  %cond56 = select i1 %tobool, i64 3, i64 0
  %arrayidx58 = getelementptr inbounds [7 x ptr], ptr %copy, i64 0, i64 %cond56
  %11 = load ptr, ptr %arrayidx58, align 8
  %p_fenc = getelementptr inbounds i8, ptr %h, i64 21344
  %arrayidx62 = getelementptr inbounds [3 x ptr], ptr %p_fenc, i64 0, i64 %idxprom15
  %12 = load ptr, ptr %arrayidx62, align 8
  tail call void %11(ptr noundef %12, i32 noundef 16, ptr noundef %arrayidx50, i32 noundef %shl, i32 noundef %cond) #13
  %p_fdec = getelementptr inbounds i8, ptr %h, i64 21392
  %arrayidx71 = getelementptr inbounds [3 x ptr], ptr %p_fdec, i64 0, i64 %idxprom15
  %13 = load ptr, ptr %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %13, i64 -33
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx31, i64 -1
  %add74 = select i1 %cmp, i64 25, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %arrayidx72, ptr noundef nonnull align 1 dereferenceable(13) %add.ptr, i64 %add74, i1 false)
  %14 = load i32, ptr %b_interlaced, align 4
  %tobool77.not = icmp eq i32 %14, 0
  br i1 %tobool77.not, label %if.end94, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %invariant.gep = getelementptr i8, ptr %arrayidx18, i64 -1
  %15 = sext i32 %shl to i64
  %wide.trip.count = zext nneg i32 %cond to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next.3, %for.body ]
  %16 = mul nsw i64 %indvars.iv, %15
  %gep = getelementptr i8, ptr %invariant.gep, i64 %16
  %17 = load i8, ptr %gep, align 1
  %18 = load ptr, ptr %arrayidx71, align 8
  %19 = shl nsw i64 %indvars.iv, 5
  %20 = getelementptr i8, ptr %18, i64 %19
  %arrayidx93 = getelementptr i8, ptr %20, i64 -1
  store i8 %17, ptr %arrayidx93, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %21 = mul nsw i64 %indvars.iv.next, %15
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %21
  %22 = load i8, ptr %gep.1, align 1
  %23 = load ptr, ptr %arrayidx71, align 8
  %24 = shl nsw i64 %indvars.iv.next, 5
  %25 = getelementptr i8, ptr %23, i64 %24
  %arrayidx93.1 = getelementptr i8, ptr %25, i64 -1
  store i8 %22, ptr %arrayidx93.1, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %26 = mul nsw i64 %indvars.iv.next.1, %15
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %26
  %27 = load i8, ptr %gep.2, align 1
  %28 = load ptr, ptr %arrayidx71, align 8
  %29 = shl nsw i64 %indvars.iv.next.1, 5
  %30 = getelementptr i8, ptr %28, i64 %29
  %arrayidx93.2 = getelementptr i8, ptr %30, i64 -1
  store i8 %27, ptr %arrayidx93.2, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %31 = mul nsw i64 %indvars.iv.next.2, %15
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %31
  %32 = load i8, ptr %gep.3, align 1
  %33 = load ptr, ptr %arrayidx71, align 8
  %34 = shl nsw i64 %indvars.iv.next.2, 5
  %35 = getelementptr i8, ptr %33, i64 %34
  %arrayidx93.3 = getelementptr i8, ptr %35, i64 -1
  store i8 %32, ptr %arrayidx93.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %if.end94, label %for.body

if.end94:                                         ; preds = %for.body, %if.end
  %i_fref = getelementptr inbounds i8, ptr %h, i64 21416
  %36 = load i32, ptr %i_fref, align 8
  %cmp100390 = icmp sgt i32 %36, 0
  br i1 %cmp100390, label %for.body103.lr.ph, label %for.cond.cleanup102

for.body103.lr.ph:                                ; preds = %if.end94
  %37 = load i32, ptr %b_interlaced, align 4
  %p_fref = getelementptr inbounds i8, ptr %h, i64 21424
  %add127 = add nuw nsw i32 %i, 3
  %cond129 = select i1 %cmp, i32 0, i32 %add127
  %idxprom130 = zext nneg i32 %cond129 to i64
  %weight = getelementptr inbounds i8, ptr %h, i64 7584
  %p_fref_w = getelementptr inbounds i8, ptr %h, i64 24496
  %wide.trip.count412 = zext nneg i32 %36 to i64
  br i1 %cmp, label %for.body103.us, label %for.body103.preheader

for.body103.preheader:                            ; preds = %for.body103.lr.ph
  %xtraiter = and i64 %wide.trip.count412, 1
  %38 = icmp eq i32 %36, 1
  br i1 %38, label %for.cond.cleanup102.loopexit433.unr-lcssa, label %for.body103.preheader.new

for.body103.preheader.new:                        ; preds = %for.body103.preheader
  %unroll_iter = and i64 %wide.trip.count412, 2147483646
  %39 = load i32, ptr %ref_pix_offset, align 4
  %idxprom116 = sext i32 %39 to i64
  %arrayidx115.1 = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4
  %40 = load i32, ptr %arrayidx115.1, align 4
  %idxprom116.1 = sext i32 %40 to i64
  br label %for.body103

for.body103.us:                                   ; preds = %for.body103.lr.ph, %for.inc199.us
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %for.inc199.us ], [ 0, %for.body103.lr.ph ]
  %41 = trunc nuw nsw i64 %indvars.iv409 to i32
  %shr107.us = lshr i32 %41, %37
  %idxprom108.us = zext nneg i32 %shr107.us to i64
  %arrayidx109.us = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.us
  %42 = load ptr, ptr %arrayidx109.us, align 8
  %plane110.us = getelementptr inbounds i8, ptr %42, i64 152
  %arrayidx112.us = getelementptr inbounds [3 x ptr], ptr %plane110.us, i64 0, i64 %idxprom15
  %43 = load ptr, ptr %arrayidx112.us, align 8
  %and113.us = and i64 %indvars.iv409, 1
  %arrayidx115.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and113.us
  %44 = load i32, ptr %arrayidx115.us, align 4
  %idxprom116.us = sext i32 %44 to i64
  %arrayidx117.us = getelementptr inbounds i8, ptr %43, i64 %idxprom116.us
  %arrayidx131.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 %idxprom130
  store ptr %arrayidx117.us, ptr %arrayidx131.us, align 8
  %45 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx147.us = getelementptr inbounds i8, ptr %45, i64 184
  %46 = load ptr, ptr %arrayidx147.us, align 8
  %arrayidx152.us = getelementptr inbounds i8, ptr %46, i64 %idxprom116.us
  %arrayidx160.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 1
  store ptr %arrayidx152.us, ptr %arrayidx160.us, align 8
  %47 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx147.us.1 = getelementptr inbounds i8, ptr %47, i64 192
  %48 = load ptr, ptr %arrayidx147.us.1, align 8
  %arrayidx152.us.1 = getelementptr inbounds i8, ptr %48, i64 %idxprom116.us
  %arrayidx160.us.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 2
  store ptr %arrayidx152.us.1, ptr %arrayidx160.us.1, align 8
  %49 = load ptr, ptr %arrayidx109.us, align 8
  %arrayidx147.us.2 = getelementptr inbounds i8, ptr %49, i64 200
  %50 = load ptr, ptr %arrayidx147.us.2, align 8
  %arrayidx152.us.2 = getelementptr inbounds i8, ptr %50, i64 %idxprom116.us
  %arrayidx160.us.2 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409, i64 3
  store ptr %arrayidx152.us.2, ptr %arrayidx160.us.2, align 8
  %weightfn.us = getelementptr inbounds [32 x [3 x %struct.x264_weight_t]], ptr %weight, i64 0, i64 %indvars.iv409, i64 0, i32 5
  %51 = load ptr, ptr %weightfn.us, align 16
  %tobool168.not.us = icmp eq ptr %51, null
  br i1 %tobool168.not.us, label %if.else.us, label %if.then169.us

if.then169.us:                                    ; preds = %for.body103.us
  %52 = load ptr, ptr %fenc, align 8
  %weighted.us = getelementptr inbounds i8, ptr %52, i64 3392
  %arrayidx175.us = getelementptr inbounds [16 x ptr], ptr %weighted.us, i64 0, i64 %idxprom108.us
  %53 = load ptr, ptr %arrayidx175.us, align 8
  %arrayidx180.us = getelementptr inbounds i8, ptr %53, i64 %idxprom116.us
  br label %for.inc199.us

if.else.us:                                       ; preds = %for.body103.us
  %arrayidx122.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv409
  %54 = load ptr, ptr %arrayidx122.us, align 16
  br label %for.inc199.us

for.inc199.us:                                    ; preds = %if.else.us, %if.then169.us
  %.sink = phi ptr [ %54, %if.else.us ], [ %arrayidx180.us, %if.then169.us ]
  %arrayidx196.us = getelementptr inbounds [32 x ptr], ptr %p_fref_w, i64 0, i64 %indvars.iv409
  store ptr %.sink, ptr %arrayidx196.us, align 8
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412
  br i1 %exitcond413.not, label %for.cond.cleanup102, label %for.body103.us

for.cond.cleanup102.loopexit433.unr-lcssa:        ; preds = %for.body103, %for.body103.preheader
  %indvars.iv400.unr = phi i64 [ 0, %for.body103.preheader ], [ %indvars.iv.next401.1, %for.body103 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup102, label %for.body103.epil

for.body103.epil:                                 ; preds = %for.cond.cleanup102.loopexit433.unr-lcssa
  %55 = trunc nuw nsw i64 %indvars.iv400.unr to i32
  %shr107.epil = lshr i32 %55, %37
  %idxprom108.epil = zext nneg i32 %shr107.epil to i64
  %arrayidx109.epil = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.epil
  %56 = load ptr, ptr %arrayidx109.epil, align 8
  %plane110.epil = getelementptr inbounds i8, ptr %56, i64 152
  %arrayidx112.epil = getelementptr inbounds [3 x ptr], ptr %plane110.epil, i64 0, i64 %idxprom15
  %57 = load ptr, ptr %arrayidx112.epil, align 8
  %and113.epil = and i64 %indvars.iv400.unr, 1
  %arrayidx115.epil = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and113.epil
  %58 = load i32, ptr %arrayidx115.epil, align 4
  %idxprom116.epil = sext i32 %58 to i64
  %arrayidx117.epil = getelementptr inbounds i8, ptr %57, i64 %idxprom116.epil
  %arrayidx131.epil = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv400.unr, i64 %idxprom130
  store ptr %arrayidx117.epil, ptr %arrayidx131.epil, align 8
  br label %for.cond.cleanup102

for.cond.cleanup102:                              ; preds = %for.body103.epil, %for.cond.cleanup102.loopexit433.unr-lcssa, %for.inc199.us, %if.end94
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %59 = load i32, ptr %i_type, align 16
  %cmp203 = icmp eq i32 %59, 1
  br i1 %cmp203, label %for.cond207.preheader, label %if.end283

for.cond207.preheader:                            ; preds = %for.cond.cleanup102
  %arrayidx211 = getelementptr inbounds i8, ptr %h, i64 21420
  %60 = load i32, ptr %arrayidx211, align 4
  %cmp212393 = icmp sgt i32 %60, 0
  br i1 %cmp212393, label %for.body215.lr.ph, label %if.end283

for.body215.lr.ph:                                ; preds = %for.cond207.preheader
  %61 = load i32, ptr %b_interlaced, align 4
  %arrayidx233 = getelementptr inbounds i8, ptr %h, i64 22960
  %add240 = add nuw nsw i32 %i, 3
  %cond242 = select i1 %cmp, i32 0, i32 %add240
  %idxprom243 = zext nneg i32 %cond242 to i64
  %wide.trip.count426 = zext nneg i32 %60 to i64
  br i1 %cmp, label %for.body215.us, label %for.body215.preheader

for.body215.preheader:                            ; preds = %for.body215.lr.ph
  %xtraiter434 = and i64 %wide.trip.count426, 1
  %62 = icmp eq i32 %60, 1
  br i1 %62, label %if.end283.loopexit432.unr-lcssa, label %for.body215.preheader.new

for.body215.preheader.new:                        ; preds = %for.body215.preheader
  %unroll_iter436 = and i64 %wide.trip.count426, 2147483646
  %63 = load i32, ptr %ref_pix_offset, align 4
  %idxprom228 = sext i32 %63 to i64
  %arrayidx227.1 = getelementptr inbounds i8, ptr %ref_pix_offset, i64 4
  %64 = load i32, ptr %arrayidx227.1, align 4
  %idxprom228.1 = sext i32 %64 to i64
  br label %for.body215

for.body215.us:                                   ; preds = %for.body215.lr.ph, %for.body215.us
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %for.body215.us ], [ 0, %for.body215.lr.ph ]
  %65 = trunc nuw nsw i64 %indvars.iv423 to i32
  %shr219.us = lshr i32 %65, %61
  %idxprom220.us = zext nneg i32 %shr219.us to i64
  %arrayidx221.us = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.us
  %66 = load ptr, ptr %arrayidx221.us, align 8
  %plane222.us = getelementptr inbounds i8, ptr %66, i64 152
  %arrayidx224.us = getelementptr inbounds [3 x ptr], ptr %plane222.us, i64 0, i64 %idxprom15
  %67 = load ptr, ptr %arrayidx224.us, align 8
  %and225.us = and i64 %indvars.iv423, 1
  %arrayidx227.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and225.us
  %68 = load i32, ptr %arrayidx227.us, align 4
  %idxprom228.us = sext i32 %68 to i64
  %arrayidx229.us = getelementptr inbounds i8, ptr %67, i64 %idxprom228.us
  %arrayidx244.us = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 %idxprom243
  store ptr %arrayidx229.us, ptr %arrayidx244.us, align 8
  %69 = load ptr, ptr %arrayidx221.us, align 8
  %arrayidx262.us = getelementptr inbounds i8, ptr %69, i64 184
  %70 = load ptr, ptr %arrayidx262.us, align 8
  %arrayidx267.us = getelementptr inbounds i8, ptr %70, i64 %idxprom228.us
  %arrayidx275.us = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 1
  store ptr %arrayidx267.us, ptr %arrayidx275.us, align 8
  %71 = load ptr, ptr %arrayidx221.us, align 8
  %arrayidx262.us.1 = getelementptr inbounds i8, ptr %71, i64 192
  %72 = load ptr, ptr %arrayidx262.us.1, align 8
  %arrayidx267.us.1 = getelementptr inbounds i8, ptr %72, i64 %idxprom228.us
  %arrayidx275.us.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 2
  store ptr %arrayidx267.us.1, ptr %arrayidx275.us.1, align 8
  %73 = load ptr, ptr %arrayidx221.us, align 8
  %arrayidx262.us.2 = getelementptr inbounds i8, ptr %73, i64 200
  %74 = load ptr, ptr %arrayidx262.us.2, align 8
  %arrayidx267.us.2 = getelementptr inbounds i8, ptr %74, i64 %idxprom228.us
  %arrayidx275.us.2 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv423, i64 3
  store ptr %arrayidx267.us.2, ptr %arrayidx275.us.2, align 8
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %if.end283, label %for.body215.us

for.body103:                                      ; preds = %for.body103, %for.body103.preheader.new
  %indvars.iv400 = phi i64 [ 0, %for.body103.preheader.new ], [ %indvars.iv.next401.1, %for.body103 ]
  %niter = phi i64 [ 0, %for.body103.preheader.new ], [ %niter.next.1, %for.body103 ]
  %75 = trunc nuw nsw i64 %indvars.iv400 to i32
  %shr107 = lshr i32 %75, %37
  %idxprom108 = zext nneg i32 %shr107 to i64
  %arrayidx109 = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108
  %76 = load ptr, ptr %arrayidx109, align 8
  %plane110 = getelementptr inbounds i8, ptr %76, i64 152
  %arrayidx112 = getelementptr inbounds [3 x ptr], ptr %plane110, i64 0, i64 %idxprom15
  %77 = load ptr, ptr %arrayidx112, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %77, i64 %idxprom116
  %arrayidx131 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv400, i64 %idxprom130
  store ptr %arrayidx117, ptr %arrayidx131, align 8
  %indvars.iv.next401 = or disjoint i64 %indvars.iv400, 1
  %78 = trunc nuw nsw i64 %indvars.iv.next401 to i32
  %shr107.1 = lshr i32 %78, %37
  %idxprom108.1 = zext nneg i32 %shr107.1 to i64
  %arrayidx109.1 = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom108.1
  %79 = load ptr, ptr %arrayidx109.1, align 8
  %plane110.1 = getelementptr inbounds i8, ptr %79, i64 152
  %arrayidx112.1 = getelementptr inbounds [3 x ptr], ptr %plane110.1, i64 0, i64 %idxprom15
  %80 = load ptr, ptr %arrayidx112.1, align 8
  %arrayidx117.1 = getelementptr inbounds i8, ptr %80, i64 %idxprom116.1
  %arrayidx131.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv.next401, i64 %idxprom130
  store ptr %arrayidx117.1, ptr %arrayidx131.1, align 8
  %indvars.iv.next401.1 = add nuw nsw i64 %indvars.iv400, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond.cleanup102.loopexit433.unr-lcssa, label %for.body103

for.body215:                                      ; preds = %for.body215, %for.body215.preheader.new
  %indvars.iv414 = phi i64 [ 0, %for.body215.preheader.new ], [ %indvars.iv.next415.1, %for.body215 ]
  %niter437 = phi i64 [ 0, %for.body215.preheader.new ], [ %niter437.next.1, %for.body215 ]
  %81 = trunc nuw nsw i64 %indvars.iv414 to i32
  %shr219 = lshr i32 %81, %61
  %idxprom220 = zext nneg i32 %shr219 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220
  %82 = load ptr, ptr %arrayidx221, align 8
  %plane222 = getelementptr inbounds i8, ptr %82, i64 152
  %arrayidx224 = getelementptr inbounds [3 x ptr], ptr %plane222, i64 0, i64 %idxprom15
  %83 = load ptr, ptr %arrayidx224, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %83, i64 %idxprom228
  %arrayidx244 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv414, i64 %idxprom243
  store ptr %arrayidx229, ptr %arrayidx244, align 8
  %indvars.iv.next415 = or disjoint i64 %indvars.iv414, 1
  %84 = trunc nuw nsw i64 %indvars.iv.next415 to i32
  %shr219.1 = lshr i32 %84, %61
  %idxprom220.1 = zext nneg i32 %shr219.1 to i64
  %arrayidx221.1 = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.1
  %85 = load ptr, ptr %arrayidx221.1, align 8
  %plane222.1 = getelementptr inbounds i8, ptr %85, i64 152
  %arrayidx224.1 = getelementptr inbounds [3 x ptr], ptr %plane222.1, i64 0, i64 %idxprom15
  %86 = load ptr, ptr %arrayidx224.1, align 8
  %arrayidx229.1 = getelementptr inbounds i8, ptr %86, i64 %idxprom228.1
  %arrayidx244.1 = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv.next415, i64 %idxprom243
  store ptr %arrayidx229.1, ptr %arrayidx244.1, align 8
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2
  %niter437.next.1 = add i64 %niter437, 2
  %niter437.ncmp.1 = icmp eq i64 %niter437.next.1, %unroll_iter436
  br i1 %niter437.ncmp.1, label %if.end283.loopexit432.unr-lcssa, label %for.body215

if.end283.loopexit432.unr-lcssa:                  ; preds = %for.body215, %for.body215.preheader
  %indvars.iv414.unr = phi i64 [ 0, %for.body215.preheader ], [ %indvars.iv.next415.1, %for.body215 ]
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %if.end283, label %for.body215.epil

for.body215.epil:                                 ; preds = %if.end283.loopexit432.unr-lcssa
  %87 = trunc nuw nsw i64 %indvars.iv414.unr to i32
  %shr219.epil = lshr i32 %87, %61
  %idxprom220.epil = zext nneg i32 %shr219.epil to i64
  %arrayidx221.epil = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom220.epil
  %88 = load ptr, ptr %arrayidx221.epil, align 8
  %plane222.epil = getelementptr inbounds i8, ptr %88, i64 152
  %arrayidx224.epil = getelementptr inbounds [3 x ptr], ptr %plane222.epil, i64 0, i64 %idxprom15
  %89 = load ptr, ptr %arrayidx224.epil, align 8
  %and225.epil = and i64 %indvars.iv414.unr, 1
  %arrayidx227.epil = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and225.epil
  %90 = load i32, ptr %arrayidx227.epil, align 4
  %idxprom228.epil = sext i32 %90 to i64
  %arrayidx229.epil = getelementptr inbounds i8, ptr %89, i64 %idxprom228.epil
  %arrayidx244.epil = getelementptr inbounds [32 x [6 x ptr]], ptr %arrayidx233, i64 0, i64 %indvars.iv414.unr, i64 %idxprom243
  store ptr %arrayidx229.epil, ptr %arrayidx244.epil, align 8
  br label %if.end283

if.end283:                                        ; preds = %for.body215.epil, %if.end283.loopexit432.unr-lcssa, %for.body215.us, %for.cond207.preheader, %for.cond.cleanup102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref_pix_offset) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @x264_mb_predict_mv_pskip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_neighbours_deblock(ptr nocapture noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #9 {
entry:
  %i_disable_deblocking_filter_idc = getelementptr inbounds i8, ptr %h, i64 13884
  %0 = load i32, ptr %i_disable_deblocking_filter_idc, align 4
  %cmp.not = icmp eq i32 %0, 2
  %b_interlaced = getelementptr inbounds i8, ptr %h, i64 16436
  %1 = load i32, ptr %b_interlaced, align 4
  %shl.neg = shl nsw i32 -1, %1
  %sub = add i32 %shl.neg, %mb_y
  %i_mb_stride = getelementptr inbounds i8, ptr %h, i64 16372
  %2 = load i32, ptr %i_mb_stride, align 4
  %mul = mul nsw i32 %sub, %2
  %add = add nsw i32 %mul, %mb_x
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488
  store i32 0, ptr %i_neighbour, align 8
  %mul5 = mul nsw i32 %2, %mb_y
  %add6 = add nsw i32 %mul5, %mb_x
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  store i32 %add6, ptr %i_mb_xy, align 8
  %cmp8 = icmp sgt i32 %mb_x, 0
  br i1 %cmp8, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %sub12 = add nsw i32 %add6, -1
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600
  store i32 %sub12, ptr %i_mb_left_xy, align 8
  br i1 %cmp.not, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %if.then
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248
  %3 = load ptr, ptr %slice_table, align 16
  %idxprom = sext i32 %sub12 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %idxprom22 = sext i32 %add6 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %3, i64 %idxprom22
  %5 = load i16, ptr %arrayidx23, align 2
  %cmp25 = icmp eq i16 %4, %5
  br i1 %cmp25, label %if.then27, label %if.end30.thread

if.then27:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, ptr %i_neighbour, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %entry
  %6 = phi i32 [ 1, %if.then27 ], [ 0, %entry ]
  %cmp31 = icmp sgt i32 %add, -1
  br i1 %cmp31, label %if.then33, label %if.end58

if.end30.thread:                                  ; preds = %lor.lhs.false
  %cmp3182 = icmp sgt i32 %add, -1
  br i1 %cmp3182, label %if.then33.thread, label %if.end58

if.then33.thread:                                 ; preds = %if.end30.thread
  %i_mb_top_xy83 = getelementptr inbounds i8, ptr %h, i64 16604
  store i32 %add, ptr %i_mb_top_xy83, align 4
  br label %lor.lhs.false36

if.then33:                                        ; preds = %if.end30
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604
  store i32 %add, ptr %i_mb_top_xy, align 4
  br i1 %cmp.not, label %if.then33.lor.lhs.false36_crit_edge, label %if.then53

if.then33.lor.lhs.false36_crit_edge:              ; preds = %if.then33
  %slice_table38.phi.trans.insert = getelementptr inbounds i8, ptr %h, i64 17248
  %.pre = load ptr, ptr %slice_table38.phi.trans.insert, align 16
  %.pre84 = sext i32 %add6 to i64
  br label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.then33.lor.lhs.false36_crit_edge, %if.then33.thread
  %7 = phi i32 [ %6, %if.then33.lor.lhs.false36_crit_edge ], [ 0, %if.then33.thread ]
  %idxprom48.pre-phi = phi i64 [ %.pre84, %if.then33.lor.lhs.false36_crit_edge ], [ %idxprom22, %if.then33.thread ]
  %8 = phi ptr [ %.pre, %if.then33.lor.lhs.false36_crit_edge ], [ %3, %if.then33.thread ]
  %idxprom41 = zext nneg i32 %add to i64
  %arrayidx42 = getelementptr inbounds i16, ptr %8, i64 %idxprom41
  %9 = load i16, ptr %arrayidx42, align 2
  %arrayidx49 = getelementptr inbounds i16, ptr %8, i64 %idxprom48.pre-phi
  %10 = load i16, ptr %arrayidx49, align 2
  %cmp51 = icmp eq i16 %9, %10
  br i1 %cmp51, label %if.then53, label %if.end58

if.then53:                                        ; preds = %lor.lhs.false36, %if.then33
  %11 = phi i32 [ %7, %lor.lhs.false36 ], [ %6, %if.then33 ]
  %or56 = or i32 %11, 2
  store i32 %or56, ptr %i_neighbour, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end30.thread, %lor.lhs.false36, %if.then53, %if.end30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_deblock(ptr noundef %h) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %0 = load ptr, ptr %type, align 8
  %i_mb_xy = getelementptr inbounds i8, ptr %h, i64 16392
  %1 = load i32, ptr %i_mb_xy, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %switch = icmp ult i8 %2, 4
  br i1 %switch, label %if.end504, label %if.end

if.end:                                           ; preds = %entry
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252
  %3 = load i32, ptr %i_first_mb, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end295, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %i_disable_deblocking_filter_idc = getelementptr inbounds i8, ptr %h, i64 13884
  %4 = load i32, ptr %i_disable_deblocking_filter_idc, align 4
  %cmp33.not = icmp eq i32 %4, 2
  br i1 %cmp33.not, label %if.end295, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  %i_neighbour = getelementptr inbounds i8, ptr %h, i64 16488
  %5 = load i32, ptr %i_neighbour, align 8
  %i_mb_x = getelementptr inbounds i8, ptr %h, i64 16384
  %6 = load i32, ptr %i_mb_x, align 16
  %i_mb_y = getelementptr inbounds i8, ptr %h, i64 16388
  %7 = load i32, ptr %i_mb_y, align 4
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436
  %8 = load i32, ptr %b_interlaced.i, align 4
  %shl.neg.i = shl nsw i32 -1, %8
  %sub.i = add i32 %shl.neg.i, %7
  %i_mb_stride.i = getelementptr inbounds i8, ptr %h, i64 16372
  %9 = load i32, ptr %i_mb_stride.i, align 4
  %mul.i = mul nsw i32 %sub.i, %9
  %add.i = add nsw i32 %mul.i, %6
  %mul5.i = mul nsw i32 %9, %7
  %add6.i = add nsw i32 %mul5.i, %6
  store i32 %add6.i, ptr %i_mb_xy, align 8
  %cmp8.i = icmp sgt i32 %6, 0
  br i1 %cmp8.i, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %if.then35
  %sub12.i = add nsw i32 %add6.i, -1
  %i_mb_left_xy.i = getelementptr inbounds i8, ptr %h, i64 16600
  store i32 %sub12.i, ptr %i_mb_left_xy.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then35
  %10 = phi i32 [ 1, %if.then27.i ], [ 0, %if.then35 ]
  %or56.i = phi i32 [ 3, %if.then27.i ], [ 2, %if.then35 ]
  %cmp31.i = icmp sgt i32 %add.i, -1
  br i1 %cmp31.i, label %if.then53.i, label %x264_macroblock_cache_load_neighbours_deblock.exit

if.then53.i:                                      ; preds = %if.end30.i
  %i_mb_top_xy.i = getelementptr inbounds i8, ptr %h, i64 16604
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4
  br label %x264_macroblock_cache_load_neighbours_deblock.exit

x264_macroblock_cache_load_neighbours_deblock.exit: ; preds = %if.end30.i, %if.then53.i
  %11 = phi i32 [ %10, %if.end30.i ], [ %or56.i, %if.then53.i ]
  %not = xor i32 %5, -1
  %and = and i32 %11, %not
  store i32 %and, ptr %i_neighbour, align 8
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.end295, label %if.then44

if.then44:                                        ; preds = %x264_macroblock_cache_load_neighbours_deblock.exit
  %i_mb_left_xy = getelementptr inbounds i8, ptr %h, i64 16600
  %12 = load i32, ptr %i_mb_left_xy, align 8
  %mul = shl nsw i32 %sub.i, 1
  %add = or disjoint i32 %mul, 1
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376
  %13 = load i32, ptr %i_b8_stride, align 8
  %mul49 = mul nsw i32 %13, %add
  %mul50 = shl nsw i32 %6, 1
  %add51 = add nsw i32 %mul49, %mul50
  %mul52 = shl nsw i32 %sub.i, 2
  %add53 = or disjoint i32 %mul52, 3
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380
  %14 = load i32, ptr %i_b4_stride, align 4
  %mul55 = mul nsw i32 %14, %add53
  %mul56 = shl nsw i32 %6, 2
  %add57 = add nsw i32 %mul55, %mul56
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656
  %15 = load ptr, ptr %non_zero_count, align 16
  %and65 = and i32 %and, 2
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end76, label %if.end76.thread

if.end76:                                         ; preds = %if.then44
  %and79 = and i32 %and, 1
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end295, label %if.end118.split

if.end76.thread:                                  ; preds = %if.then44
  %i_mb_top_xy = getelementptr inbounds i8, ptr %h, i64 16604
  %16 = load i32, ptr %i_mb_top_xy, align 4
  %idxprom68 = sext i32 %16 to i64
  %arrayidx70 = getelementptr inbounds [24 x i8], ptr %15, i64 %idxprom68, i64 12
  %17 = load i32, ptr %arrayidx70, align 4
  %arrayidx75 = getelementptr inbounds i8, ptr %h, i64 25076
  store i32 %17, ptr %arrayidx75, align 1
  %and79694 = and i32 %and, 1
  %tobool80.not695 = icmp eq i32 %and79694, 0
  br i1 %tobool80.not695, label %for.body.us.preheader, label %if.end118.split

for.body.us.preheader:                            ; preds = %if.end76.thread
  %i_type679696 = getelementptr inbounds i8, ptr %h, i64 7248
  %18 = load i32, ptr %i_type679696, align 16
  %cmp120680697 = icmp eq i32 %18, 1
  %mv125681698 = getelementptr inbounds i8, ptr %h, i64 16672
  %ref129682699 = getelementptr inbounds i8, ptr %h, i64 16704
  %idxprom139683700 = sext i32 %add51 to i64
  %ref143684701 = getelementptr inbounds i8, ptr %h, i64 25120
  %mv178685702 = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom183686703 = sext i32 %add57 to i64
  %wide.trip.count677 = select i1 %cmp120680697, i64 2, i64 1
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv674 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next675, %for.body.us ]
  %arrayidx127.us = getelementptr inbounds [2 x ptr], ptr %mv125681698, i64 0, i64 %indvars.iv674
  %19 = load ptr, ptr %arrayidx127.us, align 8
  %arrayidx131.us = getelementptr inbounds [2 x ptr], ptr %ref129682699, i64 0, i64 %indvars.iv674
  %20 = load ptr, ptr %arrayidx131.us, align 8
  %arrayidx140.us = getelementptr inbounds i8, ptr %20, i64 %idxprom139683700
  %21 = load i8, ptr %arrayidx140.us, align 1
  %arrayidx145.us = getelementptr inbounds [2 x [40 x i8]], ptr %ref143684701, i64 0, i64 %indvars.iv674
  %arrayidx148.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 5
  store i8 %21, ptr %arrayidx148.us, align 1
  %arrayidx156.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 4
  store i8 %21, ptr %arrayidx156.us, align 1
  %arrayidx159.us = getelementptr i8, ptr %arrayidx140.us, i64 1
  %22 = load i8, ptr %arrayidx159.us, align 1
  %arrayidx167.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 7
  store i8 %22, ptr %arrayidx167.us, align 1
  %arrayidx175.us = getelementptr inbounds i8, ptr %arrayidx145.us, i64 6
  store i8 %22, ptr %arrayidx175.us, align 1
  %arrayidx182.us = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178685702, i64 0, i64 %indvars.iv674, i64 4
  %arrayidx184.us = getelementptr inbounds [2 x i16], ptr %19, i64 %idxprom183686703
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182.us, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184.us, i64 16, i1 false)
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %if.end295, label %for.body.us

if.end118.split:                                  ; preds = %if.end76, %if.end76.thread
  %idxprom82 = sext i32 %12 to i64
  %arrayidx83 = getelementptr inbounds [24 x i8], ptr %15, i64 %idxprom82
  %arrayidx84 = getelementptr inbounds i8, ptr %arrayidx83, i64 3
  %23 = load i8, ptr %arrayidx84, align 1
  %arrayidx90 = getelementptr inbounds i8, ptr %h, i64 25083
  store i8 %23, ptr %arrayidx90, align 1
  %arrayidx93 = getelementptr inbounds i8, ptr %arrayidx83, i64 7
  %24 = load i8, ptr %arrayidx93, align 1
  %arrayidx99 = getelementptr inbounds i8, ptr %h, i64 25091
  store i8 %24, ptr %arrayidx99, align 1
  %arrayidx102 = getelementptr inbounds i8, ptr %arrayidx83, i64 11
  %25 = load i8, ptr %arrayidx102, align 1
  %arrayidx108 = getelementptr inbounds i8, ptr %h, i64 25099
  store i8 %25, ptr %arrayidx108, align 1
  %arrayidx111 = getelementptr inbounds i8, ptr %arrayidx83, i64 15
  %26 = load i8, ptr %arrayidx111, align 1
  %arrayidx117 = getelementptr inbounds i8, ptr %h, i64 25107
  store i8 %26, ptr %arrayidx117, align 1
  %i_type = getelementptr inbounds i8, ptr %h, i64 7248
  %27 = load i32, ptr %i_type, align 16
  %cmp120 = icmp eq i32 %27, 1
  %mv125 = getelementptr inbounds i8, ptr %h, i64 16672
  %ref129 = getelementptr inbounds i8, ptr %h, i64 16704
  %idxprom139 = sext i32 %add51 to i64
  %ref143 = getelementptr inbounds i8, ptr %h, i64 25120
  %mv178 = getelementptr inbounds i8, ptr %h, i64 25200
  %idxprom183 = sext i32 %add57 to i64
  %mul279 = mul nsw i32 %14, 3
  %mul265 = shl nsw i32 %14, 1
  %i_b4_xy = getelementptr inbounds i8, ptr %h, i64 16400
  %i_b8_xy = getelementptr inbounds i8, ptr %h, i64 16396
  %28 = load i32, ptr %i_b8_xy, align 4
  %sub194 = add nsw i32 %28, -1
  %29 = load i32, ptr %i_b4_xy, align 16
  %sub196 = add nsw i32 %29, -1
  %idxprom199 = sext i32 %sub194 to i64
  %add218 = add nsw i32 %sub194, %13
  %idxprom219 = sext i32 %add218 to i64
  %idxprom239 = sext i32 %sub196 to i64
  %add252 = add nsw i32 %sub196, %14
  %idxprom253 = sext i32 %add252 to i64
  %add266 = add nsw i32 %sub196, %mul265
  %idxprom267 = sext i32 %add266 to i64
  %add280 = add nsw i32 %sub196, %mul279
  %idxprom281 = sext i32 %add280 to i64
  %wide.trip.count672 = select i1 %cmp120, i64 2, i64 1
  br i1 %tobool66.not, label %for.body.us657, label %for.body

for.body.us657:                                   ; preds = %if.end118.split, %for.body.us657
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %for.body.us657 ], [ 0, %if.end118.split ]
  %arrayidx127.us660 = getelementptr inbounds [2 x ptr], ptr %mv125, i64 0, i64 %indvars.iv669
  %30 = load ptr, ptr %arrayidx127.us660, align 8
  %arrayidx131.us661 = getelementptr inbounds [2 x ptr], ptr %ref129, i64 0, i64 %indvars.iv669
  %31 = load ptr, ptr %arrayidx131.us661, align 8
  %arrayidx200.us = getelementptr inbounds i8, ptr %31, i64 %idxprom199
  %32 = load i8, ptr %arrayidx200.us, align 1
  %arrayidx205.us = getelementptr inbounds [2 x [40 x i8]], ptr %ref143, i64 0, i64 %indvars.iv669
  %arrayidx208.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 19
  store i8 %32, ptr %arrayidx208.us, align 1
  %arrayidx216.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 11
  store i8 %32, ptr %arrayidx216.us, align 1
  %arrayidx220.us = getelementptr inbounds i8, ptr %31, i64 %idxprom219
  %33 = load i8, ptr %arrayidx220.us, align 1
  %arrayidx228.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 35
  store i8 %33, ptr %arrayidx228.us, align 1
  %arrayidx236.us = getelementptr inbounds i8, ptr %arrayidx205.us, i64 27
  store i8 %33, ptr %arrayidx236.us, align 1
  %arrayidx240.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom239
  %34 = load i32, ptr %arrayidx240.us, align 4
  %arrayidx246.us = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv669
  %arrayidx249.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 44
  store i32 %34, ptr %arrayidx249.us, align 4
  %arrayidx254.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom253
  %35 = load i32, ptr %arrayidx254.us, align 4
  %arrayidx263.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 76
  store i32 %35, ptr %arrayidx263.us, align 4
  %arrayidx268.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom267
  %36 = load i32, ptr %arrayidx268.us, align 4
  %arrayidx277.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 108
  store i32 %36, ptr %arrayidx277.us, align 4
  %arrayidx282.us = getelementptr inbounds [2 x i16], ptr %30, i64 %idxprom281
  %37 = load i32, ptr %arrayidx282.us, align 4
  %arrayidx291.us = getelementptr inbounds i8, ptr %arrayidx246.us, i64 140
  store i32 %37, ptr %arrayidx291.us, align 4
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %wide.trip.count672
  br i1 %exitcond673.not, label %if.end295, label %for.body.us657

for.body:                                         ; preds = %if.end118.split, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end118.split ]
  %arrayidx127 = getelementptr inbounds [2 x ptr], ptr %mv125, i64 0, i64 %indvars.iv
  %38 = load ptr, ptr %arrayidx127, align 8
  %arrayidx131 = getelementptr inbounds [2 x ptr], ptr %ref129, i64 0, i64 %indvars.iv
  %39 = load ptr, ptr %arrayidx131, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %39, i64 %idxprom139
  %40 = load i8, ptr %arrayidx140, align 1
  %arrayidx145 = getelementptr inbounds [2 x [40 x i8]], ptr %ref143, i64 0, i64 %indvars.iv
  %arrayidx148 = getelementptr inbounds i8, ptr %arrayidx145, i64 5
  store i8 %40, ptr %arrayidx148, align 1
  %arrayidx156 = getelementptr inbounds i8, ptr %arrayidx145, i64 4
  store i8 %40, ptr %arrayidx156, align 1
  %arrayidx159 = getelementptr i8, ptr %arrayidx140, i64 1
  %41 = load i8, ptr %arrayidx159, align 1
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx145, i64 7
  store i8 %41, ptr %arrayidx167, align 1
  %arrayidx175 = getelementptr inbounds i8, ptr %arrayidx145, i64 6
  store i8 %41, ptr %arrayidx175, align 1
  %arrayidx182 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv, i64 4
  %arrayidx184 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184, i64 16, i1 false)
  %arrayidx200 = getelementptr inbounds i8, ptr %39, i64 %idxprom199
  %42 = load i8, ptr %arrayidx200, align 1
  %arrayidx208 = getelementptr inbounds i8, ptr %arrayidx145, i64 19
  store i8 %42, ptr %arrayidx208, align 1
  %arrayidx216 = getelementptr inbounds i8, ptr %arrayidx145, i64 11
  store i8 %42, ptr %arrayidx216, align 1
  %arrayidx220 = getelementptr inbounds i8, ptr %39, i64 %idxprom219
  %43 = load i8, ptr %arrayidx220, align 1
  %arrayidx228 = getelementptr inbounds i8, ptr %arrayidx145, i64 35
  store i8 %43, ptr %arrayidx228, align 1
  %arrayidx236 = getelementptr inbounds i8, ptr %arrayidx145, i64 27
  store i8 %43, ptr %arrayidx236, align 1
  %arrayidx240 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom239
  %44 = load i32, ptr %arrayidx240, align 4
  %arrayidx246 = getelementptr inbounds [2 x [40 x [2 x i16]]], ptr %mv178, i64 0, i64 %indvars.iv
  %arrayidx249 = getelementptr inbounds i8, ptr %arrayidx246, i64 44
  store i32 %44, ptr %arrayidx249, align 4
  %arrayidx254 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom253
  %45 = load i32, ptr %arrayidx254, align 4
  %arrayidx263 = getelementptr inbounds i8, ptr %arrayidx246, i64 76
  store i32 %45, ptr %arrayidx263, align 4
  %arrayidx268 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom267
  %46 = load i32, ptr %arrayidx268, align 4
  %arrayidx277 = getelementptr inbounds i8, ptr %arrayidx246, i64 108
  store i32 %46, ptr %arrayidx277, align 4
  %arrayidx282 = getelementptr inbounds [2 x i16], ptr %38, i64 %idxprom281
  %47 = load i32, ptr %arrayidx282, align 4
  %arrayidx291 = getelementptr inbounds i8, ptr %arrayidx246, i64 140
  store i32 %47, ptr %arrayidx291, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count672
  br i1 %exitcond.not, label %if.end295, label %for.body

if.end295:                                        ; preds = %for.body.us, %for.body, %for.body.us657, %if.end76, %x264_macroblock_cache_load_neighbours_deblock.exit, %land.lhs.true, %if.end
  %i_weighted_pred = getelementptr inbounds i8, ptr %h, i64 396
  %48 = load i32, ptr %i_weighted_pred, align 4
  %tobool296.not = icmp eq i32 %48, 0
  br i1 %tobool296.not, label %if.end504, label %land.lhs.true297

land.lhs.true297:                                 ; preds = %if.end295
  %i_type299 = getelementptr inbounds i8, ptr %h, i64 7248
  %49 = load i32, ptr %i_type299, align 16
  %cmp300 = icmp eq i32 %49, 0
  br i1 %cmp300, label %if.then302, label %if.end504

if.then302:                                       ; preds = %land.lhs.true297
  %deblock_ref_table = getelementptr inbounds i8, ptr %h, i64 26656
  %arrayidx312 = getelementptr inbounds i8, ptr %h, i64 25124
  %50 = load i8, ptr %arrayidx312, align 1
  %conv313 = sext i8 %50 to i64
  %add314 = add nsw i64 %conv313, 2
  %arrayidx316 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add314
  %51 = load i8, ptr %arrayidx316, align 1
  %arrayidx323 = getelementptr inbounds i8, ptr %h, i64 25125
  store i8 %51, ptr %arrayidx323, align 1
  store i8 %51, ptr %arrayidx312, align 1
  %arrayidx339 = getelementptr inbounds i8, ptr %h, i64 25126
  %52 = load i8, ptr %arrayidx339, align 1
  %conv340 = sext i8 %52 to i64
  %add341 = add nsw i64 %conv340, 2
  %arrayidx343 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add341
  %53 = load i8, ptr %arrayidx343, align 1
  %arrayidx350 = getelementptr inbounds i8, ptr %h, i64 25127
  store i8 %53, ptr %arrayidx350, align 1
  store i8 %53, ptr %arrayidx339, align 1
  %arrayidx367 = getelementptr inbounds i8, ptr %h, i64 25131
  %54 = load i8, ptr %arrayidx367, align 1
  %conv368 = sext i8 %54 to i64
  %add369 = add nsw i64 %conv368, 2
  %arrayidx371 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add369
  %55 = load i8, ptr %arrayidx371, align 1
  %arrayidx378 = getelementptr inbounds i8, ptr %h, i64 25139
  store i8 %55, ptr %arrayidx378, align 1
  store i8 %55, ptr %arrayidx367, align 1
  %arrayidx394 = getelementptr inbounds i8, ptr %h, i64 25147
  %56 = load i8, ptr %arrayidx394, align 1
  %conv395 = sext i8 %56 to i64
  %add396 = add nsw i64 %conv395, 2
  %arrayidx398 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add396
  %57 = load i8, ptr %arrayidx398, align 1
  %arrayidx405 = getelementptr inbounds i8, ptr %h, i64 25155
  store i8 %57, ptr %arrayidx405, align 1
  store i8 %57, ptr %arrayidx394, align 1
  %arrayidx420 = getelementptr inbounds i8, ptr %h, i64 25132
  %58 = load i8, ptr %arrayidx420, align 1
  %conv421 = sext i8 %58 to i64
  %add422 = add nsw i64 %conv421, 2
  %arrayidx424 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add422
  %59 = load i8, ptr %arrayidx424, align 1
  %arrayidx433 = getelementptr inbounds i8, ptr %h, i64 25134
  %60 = load i8, ptr %arrayidx433, align 1
  %conv434 = sext i8 %60 to i64
  %add435 = add nsw i64 %conv434, 2
  %arrayidx437 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add435
  %61 = load i8, ptr %arrayidx437, align 1
  %arrayidx446 = getelementptr inbounds i8, ptr %h, i64 25148
  %62 = load i8, ptr %arrayidx446, align 1
  %conv447 = sext i8 %62 to i64
  %add448 = add nsw i64 %conv447, 2
  %arrayidx450 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add448
  %63 = load i8, ptr %arrayidx450, align 1
  %arrayidx459 = getelementptr inbounds i8, ptr %h, i64 25150
  %64 = load i8, ptr %arrayidx459, align 1
  %conv460 = sext i8 %64 to i64
  %add461 = add nsw i64 %conv460, 2
  %arrayidx463 = getelementptr inbounds [34 x i8], ptr %deblock_ref_table, i64 0, i64 %add461
  %65 = load i8, ptr %arrayidx463, align 1
  %conv466 = zext i8 %59 to i32
  %conv468 = zext i8 %61 to i32
  %shl.i = shl nuw nsw i32 %conv468, 16
  %add.i653 = or disjoint i32 %shl.i, %conv466
  %mul469 = mul nuw i32 %add.i653, 257
  %conv471 = zext i8 %63 to i32
  %conv473 = zext i8 %65 to i32
  %shl.i654 = shl nuw nsw i32 %conv473, 16
  %add.i655 = or disjoint i32 %shl.i654, %conv471
  %mul475 = mul nuw i32 %add.i655, 257
  store i32 %mul469, ptr %arrayidx420, align 1
  %arrayidx489 = getelementptr inbounds i8, ptr %h, i64 25140
  store i32 %mul469, ptr %arrayidx489, align 1
  store i32 %mul475, ptr %arrayidx446, align 1
  %arrayidx503 = getelementptr inbounds i8, ptr %h, i64 25156
  store i32 %mul475, ptr %arrayidx503, align 1
  br label %if.end504

if.end504:                                        ; preds = %entry, %if.then302, %land.lhs.true297, %if.end295
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_save(ptr noundef %h) local_unnamed_addr #0 {
entry:
  %i_mb_xy1 = getelementptr inbounds i8, ptr %h, i64 16392
  %0 = load i32, ptr %i_mb_xy1, align 8
  %i_type = getelementptr inbounds i8, ptr %h, i64 17384
  %1 = load i32, ptr %i_type, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [19 x i8], ptr @x264_mb_type_fix, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %i_b8_stride = getelementptr inbounds i8, ptr %h, i64 16376
  %3 = load i32, ptr %i_b8_stride, align 8
  %i_b4_stride = getelementptr inbounds i8, ptr %h, i64 16380
  %4 = load i32, ptr %i_b4_stride, align 4
  %i_b4_xy = getelementptr inbounds i8, ptr %h, i64 16400
  %5 = load i32, ptr %i_b4_xy, align 16
  %i_b8_xy = getelementptr inbounds i8, ptr %h, i64 16396
  %6 = load i32, ptr %i_b8_xy, align 4
  %intra4x4_pred_mode = getelementptr inbounds i8, ptr %h, i64 16648
  %7 = load ptr, ptr %intra4x4_pred_mode, align 8
  %idxprom8 = sext i32 %0 to i64
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %7, i64 %idxprom8
  %non_zero_count = getelementptr inbounds i8, ptr %h, i64 16656
  %8 = load ptr, ptr %non_zero_count, align 16
  %arrayidx12 = getelementptr inbounds [24 x i8], ptr %8, i64 %idxprom8
  %fdec.i = getelementptr inbounds i8, ptr %h, i64 14688
  %9 = load ptr, ptr %fdec.i, align 16
  %i_stride1.i = getelementptr inbounds i8, ptr %9, i64 104
  %10 = load i32, ptr %i_stride1.i, align 4
  %b_interlaced.i = getelementptr inbounds i8, ptr %h, i64 16436
  %11 = load i32, ptr %b_interlaced.i, align 4
  %tobool6.not.i = icmp eq i32 %11, 0
  %i_mb_x16.i = getelementptr inbounds i8, ptr %h, i64 16384
  %12 = load i32, ptr %i_mb_x16.i, align 16
  %i_mb_y18.i = getelementptr inbounds i8, ptr %h, i64 16388
  %13 = load i32, ptr %i_mb_y18.i, align 4
  br i1 %tobool6.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %and.i = and i32 %13, 268435454
  %mul.i = mul i32 %and.i, %10
  %add.i = add i32 %mul.i, %12
  %mul9.i = shl i32 %add.i, 4
  %14 = trunc i32 %13 to i1
  %mul13.i = select i1 %14, i32 %10, i32 0
  %add14.i = add nsw i32 %mul9.i, %mul13.i
  br label %x264_macroblock_store_pic.exit

cond.false.i:                                     ; preds = %entry
  %mul19.i = mul nsw i32 %13, %10
  %add20.i = add nsw i32 %mul19.i, %12
  %mul21.i = shl i32 %add20.i, 4
  br label %x264_macroblock_store_pic.exit

x264_macroblock_store_pic.exit:                   ; preds = %cond.true.i, %cond.false.i
  %cond22.i = phi i32 [ %add14.i, %cond.true.i ], [ %mul21.i, %cond.false.i ]
  %shl.i = shl i32 %10, %11
  %copy.i = getelementptr inbounds i8, ptr %h, i64 32720
  %15 = load ptr, ptr %copy.i, align 8
  %plane.i = getelementptr inbounds i8, ptr %9, i64 152
  %16 = load ptr, ptr %plane.i, align 8
  %idxprom30.i = sext i32 %cond22.i to i64
  %arrayidx31.i = getelementptr inbounds i8, ptr %16, i64 %idxprom30.i
  %p_fdec.i = getelementptr inbounds i8, ptr %h, i64 21392
  %17 = load ptr, ptr %p_fdec.i, align 8
  tail call void %15(ptr noundef %arrayidx31.i, i32 noundef %shl.i, ptr noundef %17, i32 noundef 32, i32 noundef 16) #13
  %18 = load ptr, ptr %fdec.i, align 16
  %arrayidx.i = getelementptr inbounds i8, ptr %18, i64 108
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = load i32, ptr %b_interlaced.i, align 4
  %tobool6.not.i961 = icmp eq i32 %20, 0
  %21 = load i32, ptr %i_mb_x16.i, align 16
  %22 = load i32, ptr %i_mb_y18.i, align 4
  br i1 %tobool6.not.i961, label %cond.false.i978, label %cond.true.i964

cond.true.i964:                                   ; preds = %x264_macroblock_store_pic.exit
  %and.i965 = and i32 %22, 536870910
  %mul.i966 = mul i32 %and.i965, %19
  %add.i967 = add i32 %mul.i966, %21
  %mul9.i968 = shl i32 %add.i967, 3
  %23 = trunc i32 %22 to i1
  %mul13.i969 = select i1 %23, i32 %19, i32 0
  %add14.i970 = add nsw i32 %mul9.i968, %mul13.i969
  br label %x264_macroblock_store_pic.exit982

cond.false.i978:                                  ; preds = %x264_macroblock_store_pic.exit
  %mul19.i979 = mul nsw i32 %22, %19
  %add20.i980 = add nsw i32 %mul19.i979, %21
  %mul21.i981 = shl i32 %add20.i980, 3
  br label %x264_macroblock_store_pic.exit982

x264_macroblock_store_pic.exit982:                ; preds = %cond.true.i964, %cond.false.i978
  %cond22.i971 = phi i32 [ %add14.i970, %cond.true.i964 ], [ %mul21.i981, %cond.false.i978 ]
  %shl.i972 = shl i32 %19, %20
  %arrayidx26.i = getelementptr inbounds i8, ptr %h, i64 32744
  %24 = load ptr, ptr %arrayidx26.i, align 8
  %arrayidx29.i = getelementptr inbounds i8, ptr %18, i64 160
  %25 = load ptr, ptr %arrayidx29.i, align 8
  %idxprom30.i975 = sext i32 %cond22.i971 to i64
  %arrayidx31.i976 = getelementptr inbounds i8, ptr %25, i64 %idxprom30.i975
  %arrayidx34.i = getelementptr inbounds i8, ptr %h, i64 21400
  %26 = load ptr, ptr %arrayidx34.i, align 8
  tail call void %24(ptr noundef %arrayidx31.i976, i32 noundef %shl.i972, ptr noundef %26, i32 noundef 32, i32 noundef 8) #13
  %27 = load ptr, ptr %fdec.i, align 16
  %arrayidx.i985 = getelementptr inbounds i8, ptr %27, i64 108
  %28 = load i32, ptr %arrayidx.i985, align 4
  %29 = load i32, ptr %b_interlaced.i, align 4
  %tobool6.not.i987 = icmp eq i32 %29, 0
  %30 = load i32, ptr %i_mb_x16.i, align 16
  %31 = load i32, ptr %i_mb_y18.i, align 4
  br i1 %tobool6.not.i987, label %cond.false.i1007, label %cond.true.i990

cond.true.i990:                                   ; preds = %x264_macroblock_store_pic.exit982
  %and.i991 = and i32 %31, 536870910
  %mul.i992 = mul i32 %and.i991, %28
  %add.i993 = add i32 %mul.i992, %30
  %mul9.i994 = shl i32 %add.i993, 3
  %32 = trunc i32 %31 to i1
  %mul13.i995 = select i1 %32, i32 %28, i32 0
  %add14.i996 = add nsw i32 %mul9.i994, %mul13.i995
  br label %x264_macroblock_store_pic.exit1011

cond.false.i1007:                                 ; preds = %x264_macroblock_store_pic.exit982
  %mul19.i1008 = mul nsw i32 %31, %28
  %add20.i1009 = add nsw i32 %mul19.i1008, %30
  %mul21.i1010 = shl i32 %add20.i1009, 3
  br label %x264_macroblock_store_pic.exit1011

x264_macroblock_store_pic.exit1011:               ; preds = %cond.true.i990, %cond.false.i1007
  %cond22.i997 = phi i32 [ %add14.i996, %cond.true.i990 ], [ %mul21.i1010, %cond.false.i1007 ]
  %shl.i998 = shl i32 %28, %29
  %33 = load ptr, ptr %arrayidx26.i, align 8
  %arrayidx29.i1002 = getelementptr inbounds i8, ptr %27, i64 168
  %34 = load ptr, ptr %arrayidx29.i1002, align 8
  %idxprom30.i1003 = sext i32 %cond22.i997 to i64
  %arrayidx31.i1004 = getelementptr inbounds i8, ptr %34, i64 %idxprom30.i1003
  %arrayidx34.i1006 = getelementptr inbounds i8, ptr %h, i64 21408
  %35 = load ptr, ptr %arrayidx34.i1006, align 8
  tail call void %33(ptr noundef %arrayidx31.i1004, i32 noundef %shl.i998, ptr noundef %35, i32 noundef 32, i32 noundef 8) #13
  %36 = load ptr, ptr %fdec.i, align 16
  %37 = load i32, ptr %i_mb_x16.i, align 16
  %38 = load i32, ptr %i_mb_y18.i, align 4
  %i_stride.i = getelementptr inbounds i8, ptr %36, i64 104
  %39 = load i32, ptr %i_stride.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, ptr %36, i64 108
  %40 = load i32, ptr %arrayidx2.i, align 4
  %mul.i1012 = mul nsw i32 %39, %38
  %add.i1013 = add nsw i32 %mul.i1012, %37
  %mul3.i = shl nsw i32 %add.i1013, 4
  %mul4.i = mul nsw i32 %40, %38
  %add5.i = add nsw i32 %mul4.i, %37
  %mul6.i = shl nsw i32 %add5.i, 3
  %prefetch_fenc.i = getelementptr inbounds i8, ptr %h, i64 32800
  %41 = load ptr, ptr %prefetch_fenc.i, align 8
  %plane.i1014 = getelementptr inbounds i8, ptr %36, i64 152
  %42 = load ptr, ptr %plane.i1014, align 8
  %idx.ext.i = sext i32 %mul3.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %42, i64 %idx.ext.i
  %and.i1015 = and i32 %37, 1
  %add9.i = add nuw nsw i32 %and.i1015, 1
  %idxprom.i = zext nneg i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds [3 x ptr], ptr %plane.i1014, i64 0, i64 %idxprom.i
  %43 = load ptr, ptr %arrayidx10.i, align 8
  %idx.ext11.i = sext i32 %mul6.i to i64
  %add.ptr12.i = getelementptr inbounds i8, ptr %43, i64 %idx.ext11.i
  tail call void %41(ptr noundef %add.ptr.i, i32 noundef %39, ptr noundef %add.ptr12.i, i32 noundef %40, i32 noundef %37) #13
  %type = getelementptr inbounds i8, ptr %h, i64 16616
  %44 = load ptr, ptr %type, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %44, i64 %idxprom8
  store i8 %2, ptr %arrayidx19, align 1
  %i_first_mb = getelementptr inbounds i8, ptr %h, i64 7252
  %45 = load i32, ptr %i_first_mb, align 4
  %conv20 = trunc i32 %45 to i16
  %slice_table = getelementptr inbounds i8, ptr %h, i64 17248
  %46 = load ptr, ptr %slice_table, align 16
  %arrayidx23 = getelementptr inbounds i16, ptr %46, i64 %idxprom8
  store i16 %conv20, ptr %arrayidx23, align 2
  %cmp31 = icmp eq i32 %1, 3
  %or.cond714 = icmp ult i32 %1, 4
  br i1 %or.cond714, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %x264_macroblock_store_pic.exit1011
  %i_partition = getelementptr inbounds i8, ptr %h, i64 17388
  %47 = load i32, ptr %i_partition, align 4
  %conv341019 = trunc i32 %47 to i8
  %partition1020 = getelementptr inbounds i8, ptr %h, i64 16624
  %48 = load ptr, ptr %partition1020, align 16
  %arrayidx371021 = getelementptr inbounds i8, ptr %48, i64 %idxprom8
  store i8 %conv341019, ptr %arrayidx371021, align 1
  %i_mb_prev_xy1022 = getelementptr inbounds i8, ptr %h, i64 16596
  store i32 %0, ptr %i_mb_prev_xy1022, align 4
  br label %if.else

cond.end:                                         ; preds = %x264_macroblock_store_pic.exit1011
  %cmp = icmp ult i32 %1, 2
  %partition = getelementptr inbounds i8, ptr %h, i64 16624
  %49 = load ptr, ptr %partition, align 16
  %arrayidx37 = getelementptr inbounds i8, ptr %49, i64 %idxprom8
  store i8 16, ptr %arrayidx37, align 1
  %i_mb_prev_xy = getelementptr inbounds i8, ptr %h, i64 16596
  store i32 %0, ptr %i_mb_prev_xy, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %arrayidx44 = getelementptr inbounds i8, ptr %h, i64 25060
  %50 = load i32, ptr %arrayidx44, align 1
  store i32 %50, ptr %arrayidx9, align 4
  %arrayidx50 = getelementptr inbounds i8, ptr %h, i64 25039
  %51 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %51 to i32
  %arrayidx56 = getelementptr inbounds i8, ptr %h, i64 25047
  %52 = load i8, ptr %arrayidx56, align 1
  %conv57 = sext i8 %52 to i32
  %arrayidx62 = getelementptr inbounds i8, ptr %h, i64 25055
  %53 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %53 to i32
  %shl.i1016 = shl nsw i32 %conv57, 8
  %add.i1017 = add nsw i32 %shl.i1016, %conv51
  %shl1.i = shl nsw i32 %conv63, 16
  %add2.i = add nsw i32 %add.i1017, %shl1.i
  %arrayidx64 = getelementptr inbounds i8, ptr %arrayidx9, i64 4
  store i32 %add2.i, ptr %arrayidx64, align 4
  br label %if.else102

if.else:                                          ; preds = %cond.end.thread, %cond.end
  %b_constrained_intra = getelementptr inbounds i8, ptr %h, i64 140
  %54 = load i32, ptr %b_constrained_intra, align 4
  %tobool = icmp eq i32 %54, 0
  %55 = and i32 %1, -2
  %56 = icmp eq i32 %55, 2
  %or.cond718 = or i1 %56, %tobool
  br i1 %or.cond718, label %if.end79, label %if.else78

if.else78:                                        ; preds = %if.else
  store i64 -1, ptr %arrayidx9, align 8
  br label %if.else102

if.end79:                                         ; preds = %if.else
  store i64 144680345676153346, ptr %arrayidx9, align 8
  br i1 %cmp31, label %if.then82, label %if.else102

if.then82:                                        ; preds = %if.end79
  %qp = getelementptr inbounds i8, ptr %h, i64 16632
  %57 = load ptr, ptr %qp, align 8
  %arrayidx85 = getelementptr inbounds i8, ptr %57, i64 %idxprom8
  store i8 0, ptr %arrayidx85, align 1
  %i_last_dqp = getelementptr inbounds i8, ptr %h, i64 25804
  store i32 0, ptr %i_last_dqp, align 4
  %i_cbp_chroma = getelementptr inbounds i8, ptr %h, i64 17404
  store i32 2, ptr %i_cbp_chroma, align 4
  %i_cbp_luma = getelementptr inbounds i8, ptr %h, i64 17400
  store i32 15, ptr %i_cbp_luma, align 8
  %cbp = getelementptr inbounds i8, ptr %h, i64 16640
  %58 = load ptr, ptr %cbp, align 16
  %arrayidx91 = getelementptr inbounds i16, ptr %58, i64 %idxprom8
  store i16 1839, ptr %arrayidx91, align 2
  %b_transform_8x8 = getelementptr inbounds i8, ptr %h, i64 17396
  store i32 0, ptr %b_transform_8x8, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %arrayidx12, i8 16, i64 24, i1 false)
  %arrayidx101 = getelementptr inbounds i8, ptr %h, i64 25084
  %arrayidx101.2 = getelementptr inbounds i8, ptr %h, i64 25092
  %arrayidx101.8 = getelementptr inbounds i8, ptr %h, i64 25100
  %arrayidx101.10 = getelementptr inbounds i8, ptr %h, i64 25108
  %arrayidx101.16 = getelementptr inbounds i8, ptr %h, i64 25081
  store i8 16, ptr %arrayidx101.16, align 1
  %arrayidx101.17 = getelementptr inbounds i8, ptr %h, i64 25082
  store i8 16, ptr %arrayidx101.17, align 1
  %arrayidx101.18 = getelementptr inbounds i8, ptr %h, i64 25089
  store i8 16, ptr %arrayidx101.18, align 1
  %arrayidx101.19 = getelementptr inbounds i8, ptr %h, i64 25090
  store i8 16, ptr %arrayidx101.19, align 1
  %arrayidx101.20 = getelementptr inbounds i8, ptr %h, i64 25105
  store i8 16, ptr %arrayidx101.20, align 1
  %arrayidx101.21 = getelementptr inbounds i8, ptr %h, i64 25106
  store i8 16, ptr %arrayidx101.21, align 1
  %arrayidx101.22 = getelementptr inbounds i8, ptr %h, i64 25113
  store i8 16, ptr %arrayidx101.22, align 1
  %arrayidx101.23 = getelementptr inbounds i8, ptr %h, i64 25114
  store i8 16, ptr %arrayidx101.23, align 1
  store i32 269488144, ptr %arrayidx101, align 1
  store i32 269488144, ptr %arrayidx101.2, align 1
  store i32 269488144, ptr %arrayidx101.8, align 1
  store i32 269488144, ptr %arrayidx101.10, align 1
  br label %if.end199

if.else102:                                       ; preds = %if.then, %if.else78, %if.end79
  %arrayidx107 = getelementptr inbounds i8, ptr %h, i64 25084
  %59 = load i32, ptr %arrayidx107, align 1
  store i32 %59, ptr %arrayidx12, align 4
  %arrayidx114 = getelementptr inbounds i8, ptr %h, i64 25092
  %60 = load i32, ptr %arrayidx114, align 1
  %arrayidx115 = getelementptr inbounds i8, ptr %arrayidx12, i64 4
  store i32 %60, ptr %arrayidx115, align 4
  %arrayidx121 = getelementptr inbounds i8, ptr %h, i64 25100
  %61 = load i32, ptr %arrayidx121, align 1
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx12, i64 8
  store i32 %61, ptr %arrayidx122, align 4
  %arrayidx128 = getelementptr inbounds i8, ptr %h, i64 25108
  %62 = load i32, ptr %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx12, i64 12
  store i32 %62, ptr %arrayidx129, align 4
  %arrayidx134 = getelementptr inbounds i8, ptr %h, i64 25080
  %63 = load i32, ptr %arrayidx134, align 1
  %shr = lshr i32 %63, 8
  %conv135 = trunc i32 %shr to i16
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx12, i64 16
  store i16 %conv135, ptr %arrayidx136, align 2
  %arrayidx142 = getelementptr inbounds i8, ptr %h, i64 25088
  %64 = load i32, ptr %arrayidx142, align 1
  %shr143 = lshr i32 %64, 8
  %conv144 = trunc i32 %shr143 to i16
  %arrayidx145 = getelementptr inbounds i8, ptr %arrayidx12, i64 18
  store i16 %conv144, ptr %arrayidx145, align 2
  %arrayidx151 = getelementptr inbounds i8, ptr %h, i64 25104
  %65 = load i32, ptr %arrayidx151, align 1
  %shr152 = lshr i32 %65, 8
  %conv153 = trunc i32 %shr152 to i16
  %arrayidx154 = getelementptr inbounds i8, ptr %arrayidx12, i64 20
  store i16 %conv153, ptr %arrayidx154, align 2
  %arrayidx160 = getelementptr inbounds i8, ptr %h, i64 25112
  %66 = load i32, ptr %arrayidx160, align 1
  %shr161 = lshr i32 %66, 8
  %conv162 = trunc i32 %shr161 to i16
  %arrayidx163 = getelementptr inbounds i8, ptr %arrayidx12, i64 22
  store i16 %conv162, ptr %arrayidx163, align 2
  %67 = load i32, ptr %i_type, align 8
  %cmp166.not = icmp eq i32 %67, 2
  br i1 %cmp166.not, label %if.end180, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else102
  %i_cbp_luma169 = getelementptr inbounds i8, ptr %h, i64 17400
  %68 = load i32, ptr %i_cbp_luma169, align 8
  %cmp170 = icmp eq i32 %68, 0
  br i1 %cmp170, label %land.lhs.true172, label %if.end180

land.lhs.true172:                                 ; preds = %land.lhs.true
  %i_cbp_chroma174 = getelementptr inbounds i8, ptr %h, i64 17404
  %69 = load i32, ptr %i_cbp_chroma174, align 4
  %cmp175 = icmp eq i32 %69, 0
  br i1 %cmp175, label %if.then177, label %if.end180

if.then177:                                       ; preds = %land.lhs.true172
  %i_last_qp = getelementptr inbounds i8, ptr %h, i64 25800
  %70 = load i32, ptr %i_last_qp, align 8
  %i_qp = getelementptr inbounds i8, ptr %h, i64 25792
  store i32 %70, ptr %i_qp, align 16
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %land.lhs.true172, %land.lhs.true, %if.else102
  %i_qp182 = getelementptr inbounds i8, ptr %h, i64 25792
  %71 = load i32, ptr %i_qp182, align 16
  %conv183 = trunc i32 %71 to i8
  %qp185 = getelementptr inbounds i8, ptr %h, i64 16632
  %72 = load ptr, ptr %qp185, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %72, i64 %idxprom8
  store i8 %conv183, ptr %arrayidx187, align 1
  %73 = load i32, ptr %i_qp182, align 16
  %i_last_qp191 = getelementptr inbounds i8, ptr %h, i64 25800
  %74 = load i32, ptr %i_last_qp191, align 8
  %sub192 = sub nsw i32 %73, %74
  %i_last_dqp194 = getelementptr inbounds i8, ptr %h, i64 25804
  store i32 %sub192, ptr %i_last_dqp194, align 4
  store i32 %73, ptr %i_last_qp191, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then82, %if.end180
  %i_cbp_luma201 = getelementptr inbounds i8, ptr %h, i64 17400
  %75 = load i32, ptr %i_cbp_luma201, align 8
  %cmp202 = icmp eq i32 %75, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.end212

land.lhs.true204:                                 ; preds = %if.end199
  %76 = load i32, ptr %i_type, align 8
  %cmp207.not = icmp eq i32 %76, 1
  br i1 %cmp207.not, label %if.end212, label %if.then209

if.then209:                                       ; preds = %land.lhs.true204
  %b_transform_8x8211 = getelementptr inbounds i8, ptr %h, i64 17396
  store i32 0, ptr %b_transform_8x8211, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %land.lhs.true204, %if.end199
  %b_transform_8x8214 = getelementptr inbounds i8, ptr %h, i64 17396
  %77 = load i32, ptr %b_transform_8x8214, align 4
  %conv215 = trunc i32 %77 to i8
  %mb_transform_size = getelementptr inbounds i8, ptr %h, i64 17240
  %78 = load ptr, ptr %mb_transform_size, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %78, i64 %idxprom8
  store i8 %conv215, ptr %arrayidx218, align 1
  %i_type220 = getelementptr inbounds i8, ptr %h, i64 7248
  %79 = load i32, ptr %i_type220, align 16
  %cmp221.not = icmp eq i32 %79, 2
  br i1 %cmp221.not, label %if.end493, label %if.then223

if.then223:                                       ; preds = %if.end212
  %mv = getelementptr inbounds i8, ptr %h, i64 16672
  %80 = load ptr, ptr %mv, align 16
  %idxprom226 = sext i32 %5 to i64
  %arrayidx227 = getelementptr inbounds [2 x i16], ptr %80, i64 %idxprom226
  %arrayidx230 = getelementptr inbounds i8, ptr %h, i64 16680
  %81 = load ptr, ptr %arrayidx230, align 8
  %arrayidx232 = getelementptr inbounds [2 x i16], ptr %81, i64 %idxprom226
  %ref = getelementptr inbounds i8, ptr %h, i64 16704
  %82 = load ptr, ptr %ref, align 16
  %idxprom235 = sext i32 %6 to i64
  %arrayidx236 = getelementptr inbounds i8, ptr %82, i64 %idxprom235
  %arrayidx239 = getelementptr inbounds i8, ptr %h, i64 16712
  %83 = load ptr, ptr %arrayidx239, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %83, i64 %idxprom235
  br i1 %or.cond714, label %if.else427, label %if.then253

if.then253:                                       ; preds = %if.then223
  %arrayidx259 = getelementptr inbounds i8, ptr %h, i64 25132
  %84 = load i8, ptr %arrayidx259, align 1
  store i8 %84, ptr %arrayidx236, align 1
  %arrayidx268 = getelementptr inbounds i8, ptr %h, i64 25134
  %85 = load i8, ptr %arrayidx268, align 1
  %arrayidx272 = getelementptr inbounds i8, ptr %arrayidx236, i64 1
  store i8 %85, ptr %arrayidx272, align 1
  %arrayidx278 = getelementptr inbounds i8, ptr %h, i64 25148
  %86 = load i8, ptr %arrayidx278, align 1
  %idxprom281 = sext i32 %3 to i64
  %arrayidx282 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom281
  store i8 %86, ptr %arrayidx282, align 1
  %arrayidx288 = getelementptr inbounds i8, ptr %h, i64 25150
  %87 = load i8, ptr %arrayidx288, align 1
  %add290 = add nsw i32 %3, 1
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom291
  store i8 %87, ptr %arrayidx292, align 1
  %arrayidx302 = getelementptr inbounds i8, ptr %h, i64 25248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx302, i64 16, i1 false)
  %idxprom305 = sext i32 %4 to i64
  %arrayidx306 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom305
  %arrayidx313 = getelementptr inbounds i8, ptr %h, i64 25280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx306, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx313, i64 16, i1 false)
  %mul315 = shl nsw i32 %4, 1
  %idxprom316 = sext i32 %mul315 to i64
  %arrayidx317 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom316
  %arrayidx324 = getelementptr inbounds i8, ptr %h, i64 25312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx317, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx324, i64 16, i1 false)
  %mul326 = mul nsw i32 %4, 3
  %idxprom327 = sext i32 %mul326 to i64
  %arrayidx328 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom327
  %arrayidx335 = getelementptr inbounds i8, ptr %h, i64 25344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx328, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx335, i64 16, i1 false)
  %88 = load i32, ptr %i_type220, align 16
  %cmp339 = icmp eq i32 %88, 1
  br i1 %cmp339, label %if.then341, label %if.end493

if.then341:                                       ; preds = %if.then253
  %arrayidx347 = getelementptr inbounds i8, ptr %h, i64 25172
  %89 = load i8, ptr %arrayidx347, align 1
  store i8 %89, ptr %arrayidx241, align 1
  %arrayidx357 = getelementptr inbounds i8, ptr %h, i64 25174
  %90 = load i8, ptr %arrayidx357, align 1
  %arrayidx361 = getelementptr inbounds i8, ptr %arrayidx241, i64 1
  store i8 %90, ptr %arrayidx361, align 1
  %arrayidx367 = getelementptr inbounds i8, ptr %h, i64 25188
  %91 = load i8, ptr %arrayidx367, align 1
  %arrayidx371 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom281
  store i8 %91, ptr %arrayidx371, align 1
  %arrayidx377 = getelementptr inbounds i8, ptr %h, i64 25190
  %92 = load i8, ptr %arrayidx377, align 1
  %arrayidx381 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom291
  store i8 %92, ptr %arrayidx381, align 1
  %arrayidx391 = getelementptr inbounds i8, ptr %h, i64 25408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx391, i64 16, i1 false)
  %arrayidx395 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom305
  %arrayidx402 = getelementptr inbounds i8, ptr %h, i64 25440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx395, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx402, i64 16, i1 false)
  %arrayidx406 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom316
  %arrayidx413 = getelementptr inbounds i8, ptr %h, i64 25472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx406, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx413, i64 16, i1 false)
  %arrayidx417 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom327
  %arrayidx424 = getelementptr inbounds i8, ptr %h, i64 25504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx417, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx424, i64 16, i1 false)
  br label %if.end493

if.else427:                                       ; preds = %if.then223
  store i16 -1, ptr %arrayidx236, align 2
  %idxprom432 = sext i32 %3 to i64
  %arrayidx433 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom432
  store i16 -1, ptr %arrayidx433, align 2
  %idxprom439 = sext i32 %4 to i64
  %arrayidx440 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, i8 0, i64 16, i1 false)
  %mul444 = shl nsw i32 %4, 1
  %idxprom445 = sext i32 %mul444 to i64
  %arrayidx446 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom445
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx440, i8 0, i64 16, i1 false)
  %mul450 = mul nsw i32 %4, 3
  %idxprom451 = sext i32 %mul450 to i64
  %arrayidx452 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx446, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx452, i8 0, i64 16, i1 false)
  %93 = load i32, ptr %i_type220, align 16
  %cmp458 = icmp eq i32 %93, 1
  br i1 %cmp458, label %if.then460, label %if.end493

if.then460:                                       ; preds = %if.else427
  store i16 -1, ptr %arrayidx241, align 2
  %arrayidx466 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom432
  store i16 -1, ptr %arrayidx466, align 2
  %arrayidx475 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, i8 0, i64 16, i1 false)
  %arrayidx481 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom445
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx475, i8 0, i64 16, i1 false)
  %arrayidx487 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx481, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx487, i8 0, i64 16, i1 false)
  br label %if.end493

if.end493:                                        ; preds = %if.then341, %if.then253, %if.then460, %if.else427, %if.end212
  %b_cabac = getelementptr inbounds i8, ptr %h, i64 128
  %94 = load i32, ptr %b_cabac, align 16
  %tobool495.not = icmp eq i32 %94, 0
  br i1 %tobool495.not, label %if.end712, label %if.then496

if.then496:                                       ; preds = %if.end493
  %mvd = getelementptr inbounds i8, ptr %h, i64 16688
  %95 = load ptr, ptr %mvd, align 16
  %arrayidx500 = getelementptr inbounds [8 x [2 x i8]], ptr %95, i64 %idxprom8
  %arrayidx504 = getelementptr inbounds i8, ptr %h, i64 16696
  %96 = load ptr, ptr %arrayidx504, align 8
  %arrayidx506 = getelementptr inbounds [8 x [2 x i8]], ptr %96, i64 %idxprom8
  %or.cond725 = icmp ult i32 %1, 3
  br i1 %or.cond725, label %if.then522, label %if.end534

if.then522:                                       ; preds = %if.then496
  %i_chroma_pred_mode = getelementptr inbounds i8, ptr %h, i64 17412
  %97 = load i32, ptr %i_chroma_pred_mode, align 4
  %idxprom524 = sext i32 %97 to i64
  %arrayidx525 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom524
  %98 = load i8, ptr %arrayidx525, align 1
  br label %if.end534

if.end534:                                        ; preds = %if.then496, %if.then522
  %.sink = phi i8 [ %98, %if.then522 ], [ 0, %if.then496 ]
  %chroma_pred_mode531 = getelementptr inbounds i8, ptr %h, i64 16664
  %99 = load ptr, ptr %chroma_pred_mode531, align 8
  %arrayidx533 = getelementptr inbounds i8, ptr %99, i64 %idxprom8
  store i8 %.sink, ptr %arrayidx533, align 1
  switch i32 %1, label %if.then555 [
    i32 18, label %if.else634
    i32 7, label %if.else634
    i32 6, label %if.else634
    i32 3, label %if.else634
    i32 2, label %if.else634
    i32 1, label %if.else634
    i32 0, label %if.else634
  ]

if.then555:                                       ; preds = %if.end534
  %arrayidx561 = getelementptr inbounds i8, ptr %h, i64 25592
  %100 = load i64, ptr %arrayidx561, align 2
  store i64 %100, ptr %arrayidx500, align 8
  %arrayidx570 = getelementptr inbounds i8, ptr %h, i64 25550
  %101 = load i16, ptr %arrayidx570, align 2
  %arrayidx572 = getelementptr inbounds i8, ptr %arrayidx500, i64 8
  store i16 %101, ptr %arrayidx572, align 2
  %arrayidx579 = getelementptr inbounds i8, ptr %h, i64 25566
  %102 = load i16, ptr %arrayidx579, align 2
  %arrayidx581 = getelementptr inbounds i8, ptr %arrayidx500, i64 10
  store i16 %102, ptr %arrayidx581, align 2
  %arrayidx588 = getelementptr inbounds i8, ptr %h, i64 25582
  %103 = load i16, ptr %arrayidx588, align 2
  %arrayidx590 = getelementptr inbounds i8, ptr %arrayidx500, i64 12
  store i16 %103, ptr %arrayidx590, align 2
  %104 = load i32, ptr %i_type220, align 16
  %cmp594 = icmp eq i32 %104, 1
  br i1 %cmp594, label %if.then596, label %if.end712

if.then596:                                       ; preds = %if.then555
  %arrayidx602 = getelementptr inbounds i8, ptr %h, i64 25672
  %105 = load i64, ptr %arrayidx602, align 2
  store i64 %105, ptr %arrayidx506, align 8
  %arrayidx611 = getelementptr inbounds i8, ptr %h, i64 25630
  %106 = load i16, ptr %arrayidx611, align 2
  %arrayidx613 = getelementptr inbounds i8, ptr %arrayidx506, i64 8
  store i16 %106, ptr %arrayidx613, align 2
  %arrayidx620 = getelementptr inbounds i8, ptr %h, i64 25646
  %107 = load i16, ptr %arrayidx620, align 2
  %arrayidx622 = getelementptr inbounds i8, ptr %arrayidx506, i64 10
  store i16 %107, ptr %arrayidx622, align 2
  %arrayidx629 = getelementptr inbounds i8, ptr %h, i64 25662
  %108 = load i16, ptr %arrayidx629, align 2
  %arrayidx631 = getelementptr inbounds i8, ptr %arrayidx506, i64 12
  store i16 %108, ptr %arrayidx631, align 2
  br label %if.end651

if.else634:                                       ; preds = %if.end534, %if.end534, %if.end534, %if.end534, %if.end534, %if.end534, %if.end534
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx500, i8 0, i64 16, i1 false)
  %109 = load i32, ptr %i_type220, align 16
  %cmp642 = icmp eq i32 %109, 1
  br i1 %cmp642, label %if.then644, label %if.end712

if.then644:                                       ; preds = %if.else634
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx506, i8 0, i64 16, i1 false)
  br label %if.end651

if.end651:                                        ; preds = %if.then644, %if.then596
  %.pr = load i32, ptr %i_type220, align 16
  %cmp654 = icmp eq i32 %.pr, 1
  br i1 %cmp654, label %if.then656, label %if.end712

if.then656:                                       ; preds = %if.end651
  switch i32 %1, label %if.else704 [
    i32 18, label %if.end712.sink.split
    i32 7, label %if.end712.sink.split
    i32 17, label %if.then669
  ]

if.then669:                                       ; preds = %if.then656
  %i_sub_partition = getelementptr inbounds i8, ptr %h, i64 17392
  %110 = load <4 x i8>, ptr %i_sub_partition, align 16
  %111 = icmp eq <4 x i8> %110, <i8 12, i8 12, i8 12, i8 12>
  %112 = extractelement <4 x i1> %111, i64 0
  %conv675 = zext i1 %112 to i8
  %113 = extractelement <4 x i1> %111, i64 1
  %shl682 = select i1 %113, i8 2, i8 0
  %or = or disjoint i8 %shl682, %conv675
  %114 = extractelement <4 x i1> %111, i64 2
  %shl689 = select i1 %114, i8 4, i8 0
  %or690 = or disjoint i8 %or, %shl689
  %115 = extractelement <4 x i1> %111, i64 3
  %shl697 = select i1 %115, i8 8, i8 0
  %or698 = or disjoint i8 %or690, %shl697
  br label %if.end712.sink.split

if.else704:                                       ; preds = %if.then656
  br label %if.end712.sink.split

if.end712.sink.split:                             ; preds = %if.then656, %if.then656, %if.else704, %if.then669
  %or698.sink = phi i8 [ %or698, %if.then669 ], [ 0, %if.else704 ], [ 15, %if.then656 ], [ 15, %if.then656 ]
  %skipbp701 = getelementptr inbounds i8, ptr %h, i64 17232
  %116 = load ptr, ptr %skipbp701, align 16
  %arrayidx703 = getelementptr inbounds i8, ptr %116, i64 %idxprom8
  store i8 %or698.sink, ptr %arrayidx703, align 1
  br label %if.end712

if.end712:                                        ; preds = %if.end712.sink.split, %if.then555, %if.else634, %if.end651, %if.end493
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_bipred_init(ptr nocapture noundef %h) local_unnamed_addr #10 {
entry:
  %b_mbaff = getelementptr inbounds i8, ptr %h, i64 7268
  %0 = load i32, ptr %b_mbaff, align 4
  %.fr = freeze i32 %0
  %cmp.not162 = icmp slt i32 %.fr, 0
  br i1 %cmp.not162, label %for.cond.cleanup, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %i_ref02 = getelementptr inbounds i8, ptr %h, i64 14696
  %1 = load i32, ptr %i_ref02, align 8
  %shl = shl i32 %1, %.fr
  %cmp5152 = icmp sgt i32 %shl, 0
  %fref0 = getelementptr inbounds i8, ptr %h, i64 14704
  %tobool.not = icmp eq i32 %.fr, 0
  %i_delta_poc_bottom = getelementptr inbounds i8, ptr %h, i64 7288
  %fref1 = getelementptr inbounds i8, ptr %h, i64 14864
  %fdec = getelementptr inbounds i8, ptr %h, i64 14688
  %dist_scale_factor_buf = getelementptr inbounds i8, ptr %h, i64 25848
  %b_weighted_bipred = getelementptr inbounds i8, ptr %h, i64 400
  %bipred_weight_buf81 = getelementptr inbounds i8, ptr %h, i64 26368
  br i1 %cmp5152, label %for.cond1.preheader.lr.ph.split.us, label %for.cond.cleanup

for.cond1.preheader.lr.ph.split.us:               ; preds = %for.cond1.preheader.lr.ph
  %i_ref115 = getelementptr inbounds i8, ptr %h, i64 14856
  %2 = load i32, ptr %i_ref115, align 8
  %shl18.us = shl i32 %2, %.fr
  %cmp19150.us = icmp sgt i32 %shl18.us, 0
  br i1 %cmp19150.us, label %for.cond1.preheader.lr.ph.split.us.split.us, label %for.cond.cleanup

for.cond1.preheader.lr.ph.split.us.split.us:      ; preds = %for.cond1.preheader.lr.ph.split.us
  %3 = load i32, ptr %b_weighted_bipred, align 16
  %tobool62.us.us.us = icmp ne i32 %3, 0
  %4 = add nuw i32 %.fr, 1
  %wide.trip.count194 = zext i32 %4 to i64
  %wide.trip.count189 = zext nneg i32 %shl to i64
  %wide.trip.count = zext nneg i32 %shl18.us to i64
  br label %for.cond1.preheader.us.us

for.cond1.preheader.us.us:                        ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us.split.us
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us ], [ 0, %for.cond1.preheader.lr.ph.split.us.split.us ]
  %5 = trunc nuw nsw i64 %indvars.iv191 to i32
  br label %for.body7.us.us.us

for.body7.us.us.us:                               ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, %for.cond1.preheader.us.us
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %for.cond14.for.cond.cleanup20_crit_edge.us.us.us ], [ 0, %for.cond1.preheader.us.us ]
  %6 = trunc nuw nsw i64 %indvars.iv186 to i32
  %shr.us.us.us = lshr i32 %6, %.fr
  %idxprom.us.us.us = zext nneg i32 %shr.us.us.us to i64
  %arrayidx.us.us.us = getelementptr inbounds [19 x ptr], ptr %fref0, i64 0, i64 %idxprom.us.us.us
  %7 = load ptr, ptr %arrayidx.us.us.us, align 8
  %8 = load i32, ptr %7, align 16
  %and.us.us.us = and i64 %indvars.iv186, 1
  %tobool12.not.us.us.us = icmp eq i64 %indvars.iv191, %and.us.us.us
  %or.cond.us.us.us = or i1 %tobool.not, %tobool12.not.us.us.us
  br i1 %or.cond.us.us.us, label %if.end.us.us.us, label %if.then.us.us.us

if.then.us.us.us:                                 ; preds = %for.body7.us.us.us
  %9 = load i32, ptr %i_delta_poc_bottom, align 8
  %add.us.us.us = add nsw i32 %9, %8
  br label %if.end.us.us.us

if.end.us.us.us:                                  ; preds = %if.then.us.us.us, %for.body7.us.us.us
  %poc0.0.us.us.us = phi i32 [ %add.us.us.us, %if.then.us.us.us ], [ %8, %for.body7.us.us.us ]
  br label %for.body21.us.us.us

for.body21.us.us.us:                              ; preds = %if.end54.us.us.us, %if.end.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end54.us.us.us ], [ 0, %if.end.us.us.us ]
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  %shr24.us.us.us = lshr i32 %10, %.fr
  %idxprom25.us.us.us = zext nneg i32 %shr24.us.us.us to i64
  %arrayidx26.us.us.us = getelementptr inbounds [19 x ptr], ptr %fref1, i64 0, i64 %idxprom25.us.us.us
  %11 = load ptr, ptr %arrayidx26.us.us.us, align 8
  %12 = load i32, ptr %11, align 16
  %and32.us.us.us = and i64 %indvars.iv, 1
  %tobool34.not.us.us.us = icmp eq i64 %indvars.iv191, %and32.us.us.us
  %or.cond142.us.us.us = or i1 %tobool.not, %tobool34.not.us.us.us
  br i1 %or.cond142.us.us.us, label %if.end39.us.us.us, label %if.then35.us.us.us

if.then35.us.us.us:                               ; preds = %for.body21.us.us.us
  %13 = load i32, ptr %i_delta_poc_bottom, align 8
  %add38.us.us.us = add nsw i32 %13, %12
  br label %if.end39.us.us.us

if.end39.us.us.us:                                ; preds = %if.then35.us.us.us, %for.body21.us.us.us
  %poc1.0.us.us.us = phi i32 [ %add38.us.us.us, %if.then35.us.us.us ], [ %12, %for.body21.us.us.us ]
  %cmp44.us.us.us = icmp eq i32 %poc1.0.us.us.us, %poc0.0.us.us.us
  br i1 %cmp44.us.us.us, label %if.end54.us.us.us, label %if.else.us.us.us

if.else.us.us.us:                                 ; preds = %if.end39.us.us.us
  %sub.us.us.us = sub nsw i32 %poc1.0.us.us.us, %poc0.0.us.us.us
  %cond.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %sub.us.us.us, i32 127)
  %cond5.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i.us.us.us, i32 -128)
  %14 = load i32, ptr %i_delta_poc_bottom, align 8
  %15 = load ptr, ptr %fdec, align 16
  %16 = load i32, ptr %15, align 16
  %mul.us.us.us = mul nsw i32 %14, %5
  %add43.us.us.us = sub i32 %mul.us.us.us, %poc0.0.us.us.us
  %sub46.us.us.us = add i32 %add43.us.us.us, %16
  %cond.i144.us.us.us = tail call i32 @llvm.smin.i32(i32 %sub46.us.us.us, i32 127)
  %cond5.i145.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i144.us.us.us, i32 -128)
  %17 = tail call i32 @llvm.abs.i32(i32 %cond5.i.us.us.us, i1 true)
  %shr48.us.us.us = lshr i32 %17, 1
  %18 = trunc nuw nsw i32 %shr48.us.us.us to i16
  %div.lhs.trunc.us.us.us = add nuw nsw i16 %18, 16384
  %div.rhs.trunc.us.us.us = trunc nsw i32 %cond5.i.us.us.us to i16
  %div149.us.us.us = sdiv i16 %div.lhs.trunc.us.us.us, %div.rhs.trunc.us.us.us
  %div.sext.us.us.us = sext i16 %div149.us.us.us to i32
  %mul50.us.us.us = mul nsw i32 %cond5.i145.us.us.us, %div.sext.us.us.us
  %add51.us.us.us = add nsw i32 %mul50.us.us.us, 32
  %shr52.us.us.us = ashr i32 %add51.us.us.us, 6
  %cond.i147.us.us.us = tail call i32 @llvm.smin.i32(i32 %shr52.us.us.us, i32 1023)
  %cond5.i148.us.us.us = tail call i32 @llvm.smax.i32(i32 %cond.i147.us.us.us, i32 -1024)
  br label %if.end54.us.us.us

if.end54.us.us.us:                                ; preds = %if.else.us.us.us, %if.end39.us.us.us
  %dist_scale_factor.0.us.us.us = phi i32 [ %cond5.i148.us.us.us, %if.else.us.us.us ], [ 256, %if.end39.us.us.us ]
  %conv.us.us.us = trunc nsw i32 %dist_scale_factor.0.us.us.us to i16
  %arrayidx60.us.us.us = getelementptr inbounds [2 x [32 x [4 x i16]]], ptr %dist_scale_factor_buf, i64 0, i64 %indvars.iv191, i64 %indvars.iv186, i64 %indvars.iv
  store i16 %conv.us.us.us, ptr %arrayidx60.us.us.us, align 2
  %shr61.us.us.us = ashr i32 %dist_scale_factor.0.us.us.us, 2
  %19 = add nsw i32 %shr61.us.us.us, 64
  %20 = icmp ult i32 %19, 193
  %or.cond95.us.us.us = select i1 %tobool62.us.us.us, i1 %20, i1 false
  %21 = trunc i32 %shr61.us.us.us to i8
  %conv71.us.us.us = sub i8 64, %21
  %conv71.us.us.us.sink = select i1 %or.cond95.us.us.us, i8 %conv71.us.us.us, i8 32
  %arrayidx78.us.us.us = getelementptr inbounds [2 x [32 x [4 x i8]]], ptr %bipred_weight_buf81, i64 0, i64 %indvars.iv191, i64 %indvars.iv186, i64 %indvars.iv
  store i8 %conv71.us.us.us.sink, ptr %arrayidx78.us.us.us, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, label %for.body21.us.us.us

for.cond14.for.cond.cleanup20_crit_edge.us.us.us: ; preds = %if.end54.us.us.us
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, label %for.body7.us.us.us

for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us: ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %for.cond.cleanup, label %for.cond1.preheader.us.us

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us, %for.cond1.preheader.lr.ph, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !8}
