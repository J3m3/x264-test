; ModuleID = 'ldecod_src/loopFilter.c'
source_filename = "ldecod_src/loopFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }

@p_Dec = external local_unnamed_addr global ptr, align 8
@__const.DeblockMb.filterNon8x8LumaEdgesFlag = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@chroma_edge = internal unnamed_addr constant [2 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\FC\00\00\00", [4 x i8] c"\FC\FC\FC\04", [4 x i8] c"\FC\04\04\08", [4 x i8] c"\FC\FC\FC\0C"], [4 x [4 x i8]] [[4 x i8] c"\FC\00\00\00", [4 x i8] c"\FC\FC\04\04", [4 x i8] c"\FC\04\08\08", [4 x i8] c"\FC\FC\0C\0C"]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @DeblockPicture(ptr noundef %p_Vid, ptr noundef %p) local_unnamed_addr #0 {
entry:
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p, i64 108
  %0 = load i32, ptr %PicSizeInMbs, align 4
  %cmp4.not = icmp eq i32 %0, 0
  br i1 %cmp4.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  tail call fastcc void @DeblockMb(ptr noundef %p_Vid, ptr noundef nonnull %p, i32 noundef %i.05)
  %inc = add nuw i32 %i.05, 1
  %1 = load i32, ptr %PicSizeInMbs, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DeblockMb(ptr noundef %p_Vid, ptr noundef %p, i32 noundef %MbQAddr) unnamed_addr #0 {
entry:
  %Str8 = alloca [2 x i64], align 16
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %filterNon8x8LumaEdgesFlag = alloca [4 x i32], align 16
  %mb_data = getelementptr inbounds i8, ptr %p_Vid, i64 848888
  %0 = load ptr, ptr %mb_data, align 8
  %idxprom = sext i32 %MbQAddr to i64
  %arrayidx = getelementptr inbounds %struct.macroblock, ptr %0, i64 %idxprom
  %DFDisableIdc = getelementptr inbounds i8, ptr %arrayidx, i64 376
  %1 = load i16, ptr %DFDisableIdc, align 8
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %DeblockCall = getelementptr inbounds i8, ptr %arrayidx, i64 104
  store i32 0, ptr %DeblockCall, align 8
  br label %if.end340

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %Str8) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_x) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mb_y) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %filterNon8x8LumaEdgesFlag) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %filterNon8x8LumaEdgesFlag, ptr noundef nonnull align 16 dereferenceable(16) @__const.DeblockMb.filterNon8x8LumaEdgesFlag, i64 16, i1 false)
  %imgY2 = getelementptr inbounds i8, ptr %p, i64 128
  %2 = load ptr, ptr %imgY2, align 8
  %imgUV3 = getelementptr inbounds i8, ptr %p, i64 136
  %3 = load ptr, ptr %imgUV3, align 8
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i32, ptr %p, align 8
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %lor.rhs, label %lor.end.thread

lor.rhs:                                          ; preds = %if.else
  %mb_aff_frame_flag = getelementptr inbounds i8, ptr %p, i64 100
  %6 = load i32, ptr %mb_aff_frame_flag, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.end.thread544, label %lor.end

lor.end:                                          ; preds = %lor.rhs
  %mb_field = getelementptr inbounds i8, ptr %arrayidx, i64 384
  %7 = load i32, ptr %mb_field, align 8
  %.fr = freeze i32 %7
  %tobool6.not = icmp eq i32 %.fr, 0
  br i1 %tobool6.not, label %lor.end.thread544, label %lor.end.thread

lor.end.thread:                                   ; preds = %if.else, %lor.end
  br label %lor.end.thread544

lor.end.thread544:                                ; preds = %lor.rhs, %lor.end, %lor.end.thread
  %8 = phi i32 [ 2, %lor.end.thread ], [ 4, %lor.end ], [ 4, %lor.rhs ]
  %active_sps7 = getelementptr inbounds i8, ptr %p_Vid, i64 16
  %9 = load ptr, ptr %active_sps7, align 8
  %DeblockCall8 = getelementptr inbounds i8, ptr %arrayidx, i64 104
  store i32 1, ptr %DeblockCall8, align 8
  %mb_size = getelementptr inbounds i8, ptr %p_Vid, i64 849124
  call void @get_mb_pos(ptr noundef nonnull %p_Vid, i32 noundef %MbQAddr, ptr noundef nonnull %mb_size, ptr noundef nonnull %mb_x, ptr noundef nonnull %mb_y) #5
  %mb_type = getelementptr inbounds i8, ptr %arrayidx, i64 152
  %luma_transform_size_8x8_flag = getelementptr inbounds i8, ptr %arrayidx, i64 420
  %10 = load i32, ptr %luma_transform_size_8x8_flag, align 4
  %tobool15.not = icmp eq i32 %10, 0
  %lnot.ext = zext i1 %tobool15.not to i32
  %arrayidx16 = getelementptr inbounds i8, ptr %filterNon8x8LumaEdgesFlag, i64 12
  store i32 %lnot.ext, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr inbounds i8, ptr %filterNon8x8LumaEdgesFlag, i64 4
  store i32 %lnot.ext, ptr %arrayidx17, align 4
  %11 = load i16, ptr %mb_x, align 2
  %cmp19 = icmp ne i16 %11, 0
  %conv20 = zext i1 %cmp19 to i32
  %12 = load i16, ptr %mb_y, align 2
  %cmp22 = icmp ne i16 %12, 0
  %mb_aff_frame_flag24 = getelementptr inbounds i8, ptr %p, i64 100
  %13 = load i32, ptr %mb_aff_frame_flag24, align 4
  %tobool25 = icmp ne i32 %13, 0
  %cmp27 = icmp eq i16 %12, 16
  %or.cond = select i1 %tobool25, i1 %cmp27, i1 false
  br i1 %or.cond, label %land.lhs.true29, label %if.end33

land.lhs.true29:                                  ; preds = %lor.end.thread544
  %mb_field30 = getelementptr inbounds i8, ptr %arrayidx, i64 384
  %14 = load i32, ptr %mb_field30, align 8
  %tobool31.not = icmp eq i32 %14, 0
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true29, %lor.end.thread544
  %filterTopMbEdgeFlag.0.shrunk = phi i1 [ %cmp22, %lor.end.thread544 ], [ %tobool31.not, %land.lhs.true29 ]
  %15 = load i16, ptr %DFDisableIdc, align 8
  %cmp36 = icmp eq i16 %15, 2
  br i1 %cmp36, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end33
  %mbAvailA = getelementptr inbounds i8, ptr %arrayidx, i64 404
  %16 = load i32, ptr %mbAvailA, align 4
  %tobool40.not = icmp eq i32 %13, 0
  br i1 %tobool40.not, label %cond.false, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.then38
  %mb_field42 = getelementptr inbounds i8, ptr %arrayidx, i64 384
  %17 = load i32, ptr %mb_field42, align 8
  %tobool43.not = icmp ne i32 %17, 0
  %and = and i32 %MbQAddr, 1
  %tobool45.not = icmp eq i32 %and, 0
  %or.cond532 = or i1 %tobool45.not, %tobool43.not
  br i1 %or.cond532, label %cond.false, label %if.end47

cond.false:                                       ; preds = %land.lhs.true41, %if.then38
  %mbAvailB = getelementptr inbounds i8, ptr %arrayidx, i64 408
  %18 = load i32, ptr %mbAvailB, align 8
  %19 = icmp ne i32 %18, 0
  br label %if.end47

if.end47:                                         ; preds = %cond.false, %land.lhs.true41, %if.end33
  %filterTopMbEdgeFlag.1 = phi i1 [ %filterTopMbEdgeFlag.0.shrunk, %if.end33 ], [ %19, %cond.false ], [ true, %land.lhs.true41 ]
  %filterLeftMbEdgeFlag.0 = phi i32 [ %conv20, %if.end33 ], [ %16, %cond.false ], [ %16, %land.lhs.true41 ]
  %cmp49 = icmp eq i32 %13, 1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %arrayidx) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47
  %cbp = getelementptr inbounds i8, ptr %arrayidx, i64 284
  %chroma_format_idc = getelementptr inbounds i8, ptr %9, i64 36
  %slice_type = getelementptr inbounds i8, ptr %4, i64 164
  %direct_8x8_inference_flag = getelementptr inbounds i8, ptr %9, i64 3144
  %tobool114.not = icmp eq i32 %filterLeftMbEdgeFlag.0, 0
  %GetStrengthVer = getelementptr inbounds i8, ptr %p_Vid, i64 856760
  %arrayidx119 = getelementptr inbounds i8, ptr %Str8, i64 8
  %EdgeLoopLumaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856776
  %is_not_independent = getelementptr inbounds i8, ptr %4, i64 64
  %arrayidx133 = getelementptr inbounds i8, ptr %3, i64 8
  %chroma_format_idc147 = getelementptr inbounds i8, ptr %p, i64 268
  %cmp151 = icmp ne ptr %3, null
  %EdgeLoopChromaVer = getelementptr inbounds i8, ptr %p_Vid, i64 856792
  br i1 %tobool114.not, label %for.body.preheader, label %if.then115.peel

if.then115.peel:                                  ; preds = %if.end52
  %20 = load ptr, ptr %GetStrengthVer, align 8
  call void %20(ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 0, i32 noundef %8, ptr noundef nonnull %p) #5
  %21 = load i64, ptr %Str8, align 16
  %tobool117.not.peel = icmp eq i64 %21, 0
  %22 = load i64, ptr %arrayidx119, align 8
  %tobool120.not.peel = icmp eq i64 %22, 0
  %or.cond534.peel = select i1 %tobool117.not.peel, i1 %tobool120.not.peel, i1 false
  br i1 %or.cond534.peel, label %for.body.preheader, label %if.then125.peel

if.then125.peel:                                  ; preds = %if.then115.peel
  %23 = load ptr, ptr %EdgeLoopLumaVer, align 8
  call void %23(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 0, ptr noundef nonnull %p) #5
  %24 = load i32, ptr %is_not_independent, align 8
  %tobool127.not.peel = icmp eq i32 %24, 0
  br i1 %tobool127.not.peel, label %if.end136.peel, label %if.then128.peel

if.then128.peel:                                  ; preds = %if.then125.peel
  %25 = load ptr, ptr %EdgeLoopLumaVer, align 8
  %26 = load ptr, ptr %3, align 8
  call void %25(i32 noundef 1, ptr noundef %26, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 0, ptr noundef nonnull %p) #5
  %27 = load ptr, ptr %EdgeLoopLumaVer, align 8
  %28 = load ptr, ptr %arrayidx133, align 8
  call void %27(i32 noundef 2, ptr noundef %28, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 0, ptr noundef nonnull %p) #5
  br label %if.end136.peel

if.end136.peel:                                   ; preds = %if.then128.peel, %if.then125.peel
  %29 = load i32, ptr %chroma_format_idc, align 4
  %.off537.peel = add i32 %29, -1
  %switch538.peel = icmp ult i32 %.off537.peel, 2
  br i1 %switch538.peel, label %if.then144.peel, label %for.body.preheader

if.then144.peel:                                  ; preds = %if.end136.peel
  %30 = load i32, ptr %chroma_format_idc147, align 4
  %idxprom148.peel = sext i32 %30 to i64
  %arrayidx149.peel = getelementptr inbounds [4 x [4 x i8]], ptr @chroma_edge, i64 0, i64 0, i64 %idxprom148.peel
  %31 = load i8, ptr %arrayidx149.peel, align 1
  %cmp154.peel = icmp sgt i8 %31, -1
  %or.cond342.peel = select i1 %cmp151, i1 %cmp154.peel, i1 false
  br i1 %or.cond342.peel, label %if.then156.peel, label %for.body.preheader

if.then156.peel:                                  ; preds = %if.then144.peel
  %conv150.peel = zext nneg i8 %31 to i32
  %32 = load ptr, ptr %EdgeLoopChromaVer, align 8
  %33 = load ptr, ptr %3, align 8
  call void %32(ptr noundef %33, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv150.peel, i32 noundef 0, ptr noundef nonnull %p) #5
  %34 = load ptr, ptr %EdgeLoopChromaVer, align 8
  %35 = load ptr, ptr %arrayidx133, align 8
  call void %34(ptr noundef %35, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv150.peel, i32 noundef 1, ptr noundef nonnull %p) #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end52, %if.then115.peel, %if.end136.peel, %if.then144.peel, %if.then156.peel
  br label %for.body

for.cond164.preheader:                            ; preds = %for.inc
  %GetStrengthHor = getelementptr inbounds i8, ptr %p_Vid, i64 856768
  %EdgeLoopLumaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856784
  %EdgeLoopChromaHor = getelementptr inbounds i8, ptr %p_Vid, i64 856800
  %mb_field285 = getelementptr inbounds i8, ptr %arrayidx, i64 384
  %mixedModeEdgeFlag = getelementptr inbounds i8, ptr %arrayidx, i64 472
  br label %for.body167

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.body.preheader ]
  %36 = load i32, ptr %cbp, align 4
  %cmp55 = icmp eq i32 %36, 0
  br i1 %cmp55, label %if.then57, label %if.then115

if.then57:                                        ; preds = %for.body
  %arrayidx59 = getelementptr inbounds [4 x i32], ptr %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv
  %37 = load i32, ptr %arrayidx59, align 4
  %cmp60 = icmp eq i32 %37, 0
  br i1 %cmp60, label %land.lhs.true62, label %if.then69

land.lhs.true62:                                  ; preds = %if.then57
  %38 = load i32, ptr %chroma_format_idc, align 4
  %cmp63.not = icmp eq i32 %38, 3
  br i1 %cmp63.not, label %if.then69, label %for.inc

if.then69:                                        ; preds = %if.then57, %land.lhs.true62
  %39 = load i16, ptr %mb_type, align 8
  %cmp72 = icmp eq i16 %39, 0
  br i1 %cmp72, label %land.lhs.true74, label %lor.lhs.false

land.lhs.true74:                                  ; preds = %if.then69
  %40 = load i32, ptr %slice_type, align 4
  %cmp75 = icmp eq i32 %40, 0
  br i1 %cmp75, label %for.inc, label %if.else87.thread

lor.lhs.false:                                    ; preds = %if.then69
  %switch = icmp ult i16 %39, 3
  br i1 %switch, label %for.inc, label %if.else87

if.else87:                                        ; preds = %lor.lhs.false
  %and88583 = and i64 %indvars.iv, 1
  %tobool89.not = icmp ne i64 %and88583, 0
  %cmp93 = icmp eq i16 %39, 3
  %or.cond567 = and i1 %tobool89.not, %cmp93
  br i1 %or.cond567, label %for.inc, label %if.then115

if.else87.thread:                                 ; preds = %land.lhs.true74
  %and88548584 = and i64 %indvars.iv, 1
  %tobool89.not549 = icmp ne i64 %and88548584, 0
  %cmp97 = icmp eq i32 %40, 1
  %or.cond587 = and i1 %tobool89.not549, %cmp97
  br i1 %or.cond587, label %land.lhs.true104, label %if.then115

land.lhs.true104:                                 ; preds = %if.else87.thread
  %41 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool105.not = icmp eq i32 %41, 0
  br i1 %tobool105.not, label %if.then115, label %for.inc

if.then115:                                       ; preds = %for.body, %if.else87, %land.lhs.true104, %if.else87.thread
  %42 = load ptr, ptr %GetStrengthVer, align 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %43 = shl i32 %indvars.iv.tr, 2
  call void %42(ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %43, i32 noundef %8, ptr noundef nonnull %p) #5
  %44 = load i64, ptr %Str8, align 16
  %tobool117.not = icmp eq i64 %44, 0
  %45 = load i64, ptr %arrayidx119, align 8
  %tobool120.not = icmp eq i64 %45, 0
  %or.cond534 = select i1 %tobool117.not, i1 %tobool120.not, i1 false
  br i1 %or.cond534, label %for.inc, label %if.then121

if.then121:                                       ; preds = %if.then115
  %arrayidx123 = getelementptr inbounds [4 x i32], ptr %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv
  %46 = load i32, ptr %arrayidx123, align 4
  %tobool124.not = icmp eq i32 %46, 0
  br i1 %tobool124.not, label %if.end136, label %if.then125

if.then125:                                       ; preds = %if.then121
  %47 = load ptr, ptr %EdgeLoopLumaVer, align 8
  call void %47(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %43, ptr noundef nonnull %p) #5
  %48 = load i32, ptr %is_not_independent, align 8
  %tobool127.not = icmp eq i32 %48, 0
  br i1 %tobool127.not, label %if.end136, label %if.then128

if.then128:                                       ; preds = %if.then125
  %49 = load ptr, ptr %EdgeLoopLumaVer, align 8
  %50 = load ptr, ptr %3, align 8
  call void %49(i32 noundef 1, ptr noundef %50, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %43, ptr noundef nonnull %p) #5
  %51 = load ptr, ptr %EdgeLoopLumaVer, align 8
  %52 = load ptr, ptr %arrayidx133, align 8
  call void %51(i32 noundef 2, ptr noundef %52, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %43, ptr noundef nonnull %p) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then125, %if.then128, %if.then121
  %53 = load i32, ptr %chroma_format_idc, align 4
  %.off537 = add i32 %53, -1
  %switch538 = icmp ult i32 %.off537, 2
  br i1 %switch538, label %if.then144, label %for.inc

if.then144:                                       ; preds = %if.end136
  %54 = load i32, ptr %chroma_format_idc147, align 4
  %idxprom148 = sext i32 %54 to i64
  %arrayidx149 = getelementptr inbounds [4 x [4 x i8]], ptr @chroma_edge, i64 0, i64 %indvars.iv, i64 %idxprom148
  %55 = load i8, ptr %arrayidx149, align 1
  %cmp154 = icmp sgt i8 %55, -1
  %or.cond342 = select i1 %cmp151, i1 %cmp154, i1 false
  br i1 %or.cond342, label %if.then156, label %for.inc

if.then156:                                       ; preds = %if.then144
  %conv150 = zext nneg i8 %55 to i32
  %56 = load ptr, ptr %EdgeLoopChromaVer, align 8
  %57 = load ptr, ptr %3, align 8
  call void %56(ptr noundef %57, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv150, i32 noundef 0, ptr noundef nonnull %p) #5
  %58 = load ptr, ptr %EdgeLoopChromaVer, align 8
  %59 = load ptr, ptr %arrayidx133, align 8
  call void %58(ptr noundef %59, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv150, i32 noundef 1, ptr noundef nonnull %p) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else87, %if.end136, %lor.lhs.false, %if.then115, %if.then156, %if.then144, %land.lhs.true104, %land.lhs.true74, %land.lhs.true62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond164.preheader, label %for.body, !llvm.loop !5

for.body167:                                      ; preds = %for.cond164.preheader, %for.inc336
  %indvars.iv578 = phi i64 [ 0, %for.cond164.preheader ], [ %indvars.iv.next579, %for.inc336 ]
  %60 = load i32, ptr %cbp, align 4
  %cmp169 = icmp eq i32 %60, 0
  br i1 %cmp169, label %if.then171, label %if.end229

if.then171:                                       ; preds = %for.body167
  %arrayidx173 = getelementptr inbounds [4 x i32], ptr %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv578
  %61 = load i32, ptr %arrayidx173, align 4
  %cmp174 = icmp eq i32 %61, 0
  br i1 %cmp174, label %land.lhs.true176, label %if.else181

land.lhs.true176:                                 ; preds = %if.then171
  %62 = load i32, ptr %chroma_format_idc, align 4
  %cmp178 = icmp eq i32 %62, 1
  br i1 %cmp178, label %for.inc336, label %if.else181

if.else181:                                       ; preds = %land.lhs.true176, %if.then171
  %cmp182.not = icmp eq i64 %indvars.iv578, 0
  br i1 %cmp182.not, label %if.end229, label %if.then184

if.then184:                                       ; preds = %if.else181
  %63 = load i16, ptr %mb_type, align 8
  switch i16 %63, label %if.else204 [
    i16 0, label %land.lhs.true189
    i16 1, label %for.inc336
    i16 3, label %for.inc336
  ]

land.lhs.true189:                                 ; preds = %if.then184
  %64 = load i32, ptr %slice_type, align 4
  %cmp191 = icmp eq i32 %64, 0
  br i1 %cmp191, label %for.inc336, label %if.else204.thread

if.else204:                                       ; preds = %if.then184
  %and205586 = and i64 %indvars.iv578, 1
  %tobool206.not = icmp ne i64 %and205586, 0
  %cmp210 = icmp eq i16 %63, 2
  %or.cond568 = and i1 %tobool206.not, %cmp210
  br i1 %or.cond568, label %for.inc336, label %if.then233

if.else204.thread:                                ; preds = %land.lhs.true189
  %and205557585 = and i64 %indvars.iv578, 1
  %tobool206.not558 = icmp ne i64 %and205557585, 0
  %cmp214 = icmp eq i32 %64, 1
  %or.cond588 = and i1 %tobool206.not558, %cmp214
  br i1 %or.cond588, label %land.lhs.true221, label %if.then233

land.lhs.true221:                                 ; preds = %if.else204.thread
  %65 = load i32, ptr %direct_8x8_inference_flag, align 4
  %tobool223.not = icmp eq i32 %65, 0
  br i1 %tobool223.not, label %if.then233, label %for.inc336

if.end229:                                        ; preds = %if.else181, %for.body167
  %tobool230 = icmp ne i64 %indvars.iv578, 0
  %or.cond343 = select i1 %tobool230, i1 true, i1 %filterTopMbEdgeFlag.1
  br i1 %or.cond343, label %if.then233, label %for.inc336

if.then233:                                       ; preds = %if.else204, %land.lhs.true221, %if.else204.thread, %if.end229
  %tobool230566 = phi i1 [ %tobool230, %if.end229 ], [ true, %if.else204.thread ], [ true, %land.lhs.true221 ], [ true, %if.else204 ]
  %66 = load ptr, ptr %GetStrengthHor, align 8
  %indvars.iv578.tr = trunc i64 %indvars.iv578 to i32
  %67 = shl i32 %indvars.iv578.tr, 2
  call void %66(ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %67, i32 noundef %8, ptr noundef nonnull %p) #5
  %68 = load i64, ptr %Str8, align 16
  %tobool236.not = icmp eq i64 %68, 0
  %69 = load i64, ptr %arrayidx119, align 8
  %tobool239.not = icmp eq i64 %69, 0
  %or.cond536 = select i1 %tobool236.not, i1 %tobool239.not, i1 false
  br i1 %or.cond536, label %if.end282, label %if.then240

if.then240:                                       ; preds = %if.then233
  %arrayidx242 = getelementptr inbounds [4 x i32], ptr %filterNon8x8LumaEdgesFlag, i64 0, i64 %indvars.iv578
  %70 = load i32, ptr %arrayidx242, align 4
  %tobool243.not = icmp eq i32 %70, 0
  br i1 %tobool243.not, label %if.end256, label %if.then244

if.then244:                                       ; preds = %if.then240
  %71 = load ptr, ptr %EdgeLoopLumaHor, align 8
  call void %71(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %67, ptr noundef nonnull %p) #5
  %72 = load i32, ptr %is_not_independent, align 8
  %tobool247.not = icmp eq i32 %72, 0
  br i1 %tobool247.not, label %if.end256, label %if.then248

if.then248:                                       ; preds = %if.then244
  %73 = load ptr, ptr %EdgeLoopLumaHor, align 8
  %74 = load ptr, ptr %3, align 8
  call void %73(i32 noundef 1, ptr noundef %74, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %67, ptr noundef nonnull %p) #5
  %75 = load ptr, ptr %EdgeLoopLumaHor, align 8
  %76 = load ptr, ptr %arrayidx133, align 8
  call void %75(i32 noundef 2, ptr noundef %76, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %67, ptr noundef nonnull %p) #5
  br label %if.end256

if.end256:                                        ; preds = %if.then244, %if.then248, %if.then240
  %77 = load i32, ptr %chroma_format_idc, align 4
  %.off539 = add i32 %77, -1
  %switch540 = icmp ult i32 %.off539, 2
  br i1 %switch540, label %if.then264, label %if.end282

if.then264:                                       ; preds = %if.end256
  %78 = load i32, ptr %chroma_format_idc147, align 4
  %idxprom268 = sext i32 %78 to i64
  %arrayidx269 = getelementptr inbounds [4 x [4 x i8]], ptr getelementptr inbounds (i8, ptr @chroma_edge, i64 16), i64 0, i64 %indvars.iv578, i64 %idxprom268
  %79 = load i8, ptr %arrayidx269, align 1
  %cmp274 = icmp sgt i8 %79, -1
  %or.cond344 = select i1 %cmp151, i1 %cmp274, i1 false
  br i1 %or.cond344, label %if.then276, label %if.end282

if.then276:                                       ; preds = %if.then264
  %conv270 = zext nneg i8 %79 to i32
  %80 = load ptr, ptr %EdgeLoopChromaHor, align 8
  %81 = load ptr, ptr %3, align 8
  call void %80(ptr noundef %81, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv270, i32 noundef 0, ptr noundef nonnull %p) #5
  %82 = load ptr, ptr %EdgeLoopChromaHor, align 8
  %83 = load ptr, ptr %arrayidx133, align 8
  call void %82(ptr noundef %83, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef %conv270, i32 noundef 1, ptr noundef nonnull %p) #5
  br label %if.end282

if.end282:                                        ; preds = %if.end256, %if.then233, %if.then276, %if.then264
  br i1 %tobool230566, label %for.inc336, label %land.lhs.true284

land.lhs.true284:                                 ; preds = %if.end282
  %84 = load i32, ptr %mb_field285, align 8
  %tobool286.not = icmp eq i32 %84, 0
  br i1 %tobool286.not, label %land.lhs.true287, label %for.inc336

land.lhs.true287:                                 ; preds = %land.lhs.true284
  %85 = load i8, ptr %mixedModeEdgeFlag, align 8
  %tobool289.not = icmp eq i8 %85, 0
  br i1 %tobool289.not, label %for.inc336, label %if.then296

if.then296:                                       ; preds = %land.lhs.true287
  store i32 2, ptr %DeblockCall8, align 8
  %86 = load ptr, ptr %GetStrengthHor, align 8
  call void %86(ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, i32 noundef %8, ptr noundef nonnull %p) #5
  %87 = load ptr, ptr %EdgeLoopLumaHor, align 8
  call void %87(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, ptr noundef nonnull %p) #5
  %88 = load i32, ptr %is_not_independent, align 8
  %tobool299.not = icmp eq i32 %88, 0
  br i1 %tobool299.not, label %if.end306, label %if.then300

if.then300:                                       ; preds = %if.then296
  %89 = load ptr, ptr %EdgeLoopLumaHor, align 8
  %90 = load ptr, ptr %3, align 8
  call void %89(i32 noundef 1, ptr noundef %90, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, ptr noundef nonnull %p) #5
  %91 = load ptr, ptr %EdgeLoopLumaHor, align 8
  %92 = load ptr, ptr %arrayidx133, align 8
  call void %91(i32 noundef 2, ptr noundef %92, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, ptr noundef nonnull %p) #5
  br label %if.end306

if.end306:                                        ; preds = %if.then296, %if.then300
  %93 = load i32, ptr %chroma_format_idc, align 4
  %.off541 = add i32 %93, -1
  %switch542 = icmp ult i32 %.off541, 2
  br i1 %switch542, label %if.then314, label %if.end332

if.then314:                                       ; preds = %if.end306
  %94 = load i32, ptr %chroma_format_idc147, align 4
  %idxprom318 = sext i32 %94 to i64
  %arrayidx319 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds (i8, ptr @chroma_edge, i64 16), i64 0, i64 %idxprom318
  %95 = load i8, ptr %arrayidx319, align 1
  %cmp324 = icmp sgt i8 %95, -1
  %or.cond345 = select i1 %cmp151, i1 %cmp324, i1 false
  br i1 %or.cond345, label %if.then326, label %if.end332

if.then326:                                       ; preds = %if.then314
  %96 = load ptr, ptr %EdgeLoopChromaHor, align 8
  %97 = load ptr, ptr %3, align 8
  call void %96(ptr noundef %97, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %p) #5
  %98 = load ptr, ptr %EdgeLoopChromaHor, align 8
  %99 = load ptr, ptr %arrayidx133, align 8
  call void %98(ptr noundef %99, ptr noundef nonnull %Str8, ptr noundef nonnull %arrayidx, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %p) #5
  br label %if.end332

if.end332:                                        ; preds = %if.end306, %if.then314, %if.then326
  store i32 1, ptr %DeblockCall8, align 8
  br label %for.inc336

for.inc336:                                       ; preds = %if.then184, %if.then184, %if.else204, %if.end229, %if.end332, %land.lhs.true287, %land.lhs.true284, %if.end282, %land.lhs.true221, %land.lhs.true189, %land.lhs.true176
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1
  %exitcond582.not = icmp eq i64 %indvars.iv.next579, 4
  br i1 %exitcond582.not, label %for.end338, label %for.body167

for.end338:                                       ; preds = %for.inc336
  store i32 0, ptr %DeblockCall8, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %filterNon8x8LumaEdgesFlag) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_y) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mb_x) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %Str8) #5
  br label %if.end340

if.end340:                                        ; preds = %for.end338, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @DeblockPicturePartially(ptr noundef %p_Vid, ptr noundef %p, i32 noundef %iStart, i32 noundef %iEnd) local_unnamed_addr #0 {
entry:
  %PicSizeInMbs = getelementptr inbounds i8, ptr %p, i64 108
  %0 = load i32, ptr %PicSizeInMbs, align 4
  %cond.i4 = tail call noundef i32 @llvm.smin.i32(i32 %iEnd, i32 %0)
  %cmp5 = icmp sgt i32 %cond.i4, %iStart
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ %iStart, %entry ]
  tail call fastcc void @DeblockMb(ptr noundef %p_Vid, ptr noundef nonnull %p, i32 noundef %i.06)
  %inc = add nsw i32 %i.06, 1
  %1 = load i32, ptr %PicSizeInMbs, align 4
  %cond.i = tail call noundef i32 @llvm.smin.i32(i32 %iEnd, i32 %1)
  %cmp = icmp slt i32 %inc, %cond.i
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_Deblock(ptr noundef %p_Vid, i32 noundef %mb_aff_frame_flag) local_unnamed_addr #0 {
entry:
  %yuv_format = getelementptr inbounds i8, ptr %p_Vid, i64 849088
  %0 = load i32, ptr %yuv_format, align 8
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %separate_colour_plane_flag = getelementptr inbounds i8, ptr %p_Vid, i64 849280
  %1 = load i32, ptr %separate_colour_plane_flag, align 8
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @change_plane_JV(ptr noundef nonnull %p_Vid, i32 noundef 0, ptr noundef null) #5
  %2 = load ptr, ptr @p_Dec, align 8
  %p_Vid1 = getelementptr inbounds i8, ptr %2, i64 8
  %3 = load ptr, ptr %p_Vid1, align 8
  %PicWidthInMbs.i = getelementptr inbounds i8, ptr %3, i64 848996
  %4 = load i32, ptr %PicWidthInMbs.i, align 4
  %PicHeightInMbs.i = getelementptr inbounds i8, ptr %3, i64 849008
  %5 = load i32, ptr %PicHeightInMbs.i, align 8
  %PicSizeInMbs.i = getelementptr inbounds i8, ptr %3, i64 849012
  %6 = load i32, ptr %PicSizeInMbs.i, align 4
  %mb_data.i = getelementptr inbounds i8, ptr %3, i64 848888
  %7 = load ptr, ptr %mb_data.i, align 8
  %mbup.i = getelementptr inbounds i8, ptr %7, i64 136
  store ptr null, ptr %mbup.i, align 8
  %8 = load ptr, ptr %mb_data.i, align 8
  %mbleft.i = getelementptr inbounds i8, ptr %8, i64 144
  store ptr null, ptr %mbleft.i, align 8
  %cmp96.i = icmp slt i32 %4, 2
  br i1 %cmp96.i, label %for.cond13.preheader.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then
  %wide.trip.count.i = zext nneg i32 %4 to i64
  %9 = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %9, 1
  %10 = icmp eq i32 %4, 2
  br i1 %10, label %for.cond13.preheader.i.loopexit.unr-lcssa, label %for.body.preheader.i.new

for.body.preheader.i.new:                         ; preds = %for.body.preheader.i
  %unroll_iter = and i64 %9, -2
  br label %for.body.i

for.cond13.preheader.i.loopexit.unr-lcssa:        ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i.1, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond13.preheader.i, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %for.cond13.preheader.i.loopexit.unr-lcssa
  %11 = load ptr, ptr %mb_data.i, align 8
  %mbup5.i.epil = getelementptr inbounds %struct.macroblock, ptr %11, i64 %indvars.iv.i.unr, i32 28
  store ptr null, ptr %mbup5.i.epil, align 8
  %12 = load ptr, ptr %mb_data.i, align 8
  %13 = getelementptr %struct.macroblock, ptr %12, i64 %indvars.iv.i.unr
  %arrayidx8.i.epil = getelementptr i8, ptr %13, i64 -480
  %mbleft12.i.epil = getelementptr inbounds %struct.macroblock, ptr %12, i64 %indvars.iv.i.unr, i32 29
  store ptr %arrayidx8.i.epil, ptr %mbleft12.i.epil, align 8
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.body.i.epil, %for.cond13.preheader.i.loopexit.unr-lcssa, %if.then
  %cmp1498.i = icmp slt i32 %4, %6
  br i1 %cmp1498.i, label %for.body15.preheader.i, label %for.cond30.preheader.i

for.body15.preheader.i:                           ; preds = %for.cond13.preheader.i
  %14 = sext i32 %4 to i64
  %15 = sext i32 %6 to i64
  br label %for.body15.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body.i ]
  %niter = phi i64 [ 0, %for.body.preheader.i.new ], [ %niter.next.1, %for.body.i ]
  %16 = load ptr, ptr %mb_data.i, align 8
  %mbup5.i = getelementptr inbounds %struct.macroblock, ptr %16, i64 %indvars.iv.i, i32 28
  store ptr null, ptr %mbup5.i, align 8
  %17 = load ptr, ptr %mb_data.i, align 8
  %18 = getelementptr %struct.macroblock, ptr %17, i64 %indvars.iv.i
  %arrayidx8.i = getelementptr i8, ptr %18, i64 -480
  %mbleft12.i = getelementptr inbounds %struct.macroblock, ptr %17, i64 %indvars.iv.i, i32 29
  store ptr %arrayidx8.i, ptr %mbleft12.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %19 = load ptr, ptr %mb_data.i, align 8
  %mbup5.i.1 = getelementptr inbounds %struct.macroblock, ptr %19, i64 %indvars.iv.next.i, i32 28
  store ptr null, ptr %mbup5.i.1, align 8
  %20 = load ptr, ptr %mb_data.i, align 8
  %21 = getelementptr %struct.macroblock, ptr %20, i64 %indvars.iv.next.i
  %arrayidx8.i.1 = getelementptr i8, ptr %21, i64 -480
  %mbleft12.i.1 = getelementptr inbounds %struct.macroblock, ptr %20, i64 %indvars.iv.next.i, i32 29
  store ptr %arrayidx8.i.1, ptr %mbleft12.i.1, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.cond13.preheader.i.loopexit.unr-lcssa, label %for.body.i

for.cond30.preheader.i:                           ; preds = %for.body15.i, %for.cond13.preheader.i
  %cmp31102.i = icmp slt i32 %5, 2
  %brmerge.i = or i1 %cmp96.i, %cmp31102.i
  br i1 %brmerge.i, label %init_neighbors.exit, label %for.cond33.preheader.us.preheader.i

for.cond33.preheader.us.preheader.i:              ; preds = %for.cond30.preheader.i
  %22 = zext nneg i32 %4 to i64
  %wide.trip.count121.i = zext nneg i32 %5 to i64
  %23 = add nsw i64 %22, -1
  %xtraiter154 = and i64 %23, 1
  %24 = icmp eq i32 %4, 2
  %unroll_iter156 = and i64 %23, -2
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br label %for.cond33.preheader.us.i

for.cond33.preheader.us.i:                        ; preds = %for.cond33.for.inc56_crit_edge.us.i, %for.cond33.preheader.us.preheader.i
  %indvars.iv117.i = phi i64 [ 1, %for.cond33.preheader.us.preheader.i ], [ %indvars.iv.next118.i, %for.cond33.for.inc56_crit_edge.us.i ]
  %25 = mul nuw nsw i64 %indvars.iv117.i, %22
  br i1 %24, label %for.cond33.for.inc56_crit_edge.us.i.unr-lcssa, label %for.body35.us.i

for.body35.us.i:                                  ; preds = %for.cond33.preheader.us.i, %for.body35.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i.1, %for.body35.us.i ], [ 1, %for.cond33.preheader.us.i ]
  %niter157 = phi i64 [ %niter157.next.1, %for.body35.us.i ], [ 0, %for.cond33.preheader.us.i ]
  %26 = add nuw nsw i64 %indvars.iv110.i, %25
  %27 = load ptr, ptr %mb_data.i, align 8
  %28 = sub nuw nsw i64 %26, %22
  %arrayidx40.us.i = getelementptr inbounds %struct.macroblock, ptr %27, i64 %28
  %mbup44.us.i = getelementptr inbounds %struct.macroblock, ptr %27, i64 %26, i32 28
  store ptr %arrayidx40.us.i, ptr %mbup44.us.i, align 8
  %29 = load ptr, ptr %mb_data.i, align 8
  %30 = getelementptr %struct.macroblock, ptr %29, i64 %26
  %arrayidx48.us.i = getelementptr i8, ptr %30, i64 -480
  %mbleft52.us.i = getelementptr inbounds %struct.macroblock, ptr %29, i64 %26, i32 29
  store ptr %arrayidx48.us.i, ptr %mbleft52.us.i, align 8
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  %31 = add nuw nsw i64 %indvars.iv.next111.i, %25
  %32 = load ptr, ptr %mb_data.i, align 8
  %33 = sub nuw nsw i64 %31, %22
  %arrayidx40.us.i.1 = getelementptr inbounds %struct.macroblock, ptr %32, i64 %33
  %mbup44.us.i.1 = getelementptr inbounds %struct.macroblock, ptr %32, i64 %31, i32 28
  store ptr %arrayidx40.us.i.1, ptr %mbup44.us.i.1, align 8
  %34 = load ptr, ptr %mb_data.i, align 8
  %35 = getelementptr %struct.macroblock, ptr %34, i64 %31
  %arrayidx48.us.i.1 = getelementptr i8, ptr %35, i64 -480
  %mbleft52.us.i.1 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %31, i32 29
  store ptr %arrayidx48.us.i.1, ptr %mbleft52.us.i.1, align 8
  %indvars.iv.next111.i.1 = add nuw nsw i64 %indvars.iv110.i, 2
  %niter157.next.1 = add i64 %niter157, 2
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %for.cond33.for.inc56_crit_edge.us.i.unr-lcssa, label %for.body35.us.i

for.cond33.for.inc56_crit_edge.us.i.unr-lcssa:    ; preds = %for.body35.us.i, %for.cond33.preheader.us.i
  %indvars.iv110.i.unr = phi i64 [ 1, %for.cond33.preheader.us.i ], [ %indvars.iv.next111.i.1, %for.body35.us.i ]
  br i1 %lcmp.mod155.not, label %for.cond33.for.inc56_crit_edge.us.i, label %for.body35.us.i.epil

for.body35.us.i.epil:                             ; preds = %for.cond33.for.inc56_crit_edge.us.i.unr-lcssa
  %36 = add nuw nsw i64 %indvars.iv110.i.unr, %25
  %37 = load ptr, ptr %mb_data.i, align 8
  %38 = sub nuw nsw i64 %36, %22
  %arrayidx40.us.i.epil = getelementptr inbounds %struct.macroblock, ptr %37, i64 %38
  %mbup44.us.i.epil = getelementptr inbounds %struct.macroblock, ptr %37, i64 %36, i32 28
  store ptr %arrayidx40.us.i.epil, ptr %mbup44.us.i.epil, align 8
  %39 = load ptr, ptr %mb_data.i, align 8
  %40 = getelementptr %struct.macroblock, ptr %39, i64 %36
  %arrayidx48.us.i.epil = getelementptr i8, ptr %40, i64 -480
  %mbleft52.us.i.epil = getelementptr inbounds %struct.macroblock, ptr %39, i64 %36, i32 29
  store ptr %arrayidx48.us.i.epil, ptr %mbleft52.us.i.epil, align 8
  br label %for.cond33.for.inc56_crit_edge.us.i

for.cond33.for.inc56_crit_edge.us.i:              ; preds = %for.cond33.for.inc56_crit_edge.us.i.unr-lcssa, %for.body35.us.i.epil
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next118.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %init_neighbors.exit, label %for.cond33.preheader.us.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.preheader.i
  %indvars.iv106.i = phi i64 [ %14, %for.body15.preheader.i ], [ %indvars.iv.next107.i, %for.body15.i ]
  %41 = load ptr, ptr %mb_data.i, align 8
  %42 = sub nsw i64 %indvars.iv106.i, %14
  %arrayidx19.i = getelementptr inbounds %struct.macroblock, ptr %41, i64 %42
  %mbup23.i = getelementptr inbounds %struct.macroblock, ptr %41, i64 %indvars.iv106.i, i32 28
  store ptr %arrayidx19.i, ptr %mbup23.i, align 8
  %43 = load ptr, ptr %mb_data.i, align 8
  %mbleft27.i = getelementptr inbounds %struct.macroblock, ptr %43, i64 %indvars.iv106.i, i32 29
  store ptr null, ptr %mbleft27.i, align 8
  %indvars.iv.next107.i = add nsw i64 %indvars.iv106.i, %14
  %cmp14.i = icmp slt i64 %indvars.iv.next107.i, %15
  br i1 %cmp14.i, label %for.body15.i, label %for.cond30.preheader.i

init_neighbors.exit:                              ; preds = %for.cond33.for.inc56_crit_edge.us.i, %for.cond30.preheader.i
  tail call void @change_plane_JV(ptr noundef %p_Vid, i32 noundef 1, ptr noundef null) #5
  %44 = load ptr, ptr @p_Dec, align 8
  %p_Vid2 = getelementptr inbounds i8, ptr %44, i64 8
  %45 = load ptr, ptr %p_Vid2, align 8
  %PicWidthInMbs.i16 = getelementptr inbounds i8, ptr %45, i64 848996
  %46 = load i32, ptr %PicWidthInMbs.i16, align 4
  %PicHeightInMbs.i17 = getelementptr inbounds i8, ptr %45, i64 849008
  %47 = load i32, ptr %PicHeightInMbs.i17, align 8
  %PicSizeInMbs.i18 = getelementptr inbounds i8, ptr %45, i64 849012
  %48 = load i32, ptr %PicSizeInMbs.i18, align 4
  %mb_data.i19 = getelementptr inbounds i8, ptr %45, i64 848888
  %49 = load ptr, ptr %mb_data.i19, align 8
  %mbup.i20 = getelementptr inbounds i8, ptr %49, i64 136
  store ptr null, ptr %mbup.i20, align 8
  %50 = load ptr, ptr %mb_data.i19, align 8
  %mbleft.i21 = getelementptr inbounds i8, ptr %50, i64 144
  store ptr null, ptr %mbleft.i21, align 8
  %cmp96.i22 = icmp slt i32 %46, 2
  br i1 %cmp96.i22, label %for.cond13.preheader.i32, label %for.body.preheader.i23

for.body.preheader.i23:                           ; preds = %init_neighbors.exit
  %wide.trip.count.i24 = zext nneg i32 %46 to i64
  %51 = add nsw i64 %wide.trip.count.i24, -1
  %xtraiter158 = and i64 %51, 1
  %52 = icmp eq i32 %46, 2
  br i1 %52, label %for.cond13.preheader.i32.loopexit.unr-lcssa, label %for.body.preheader.i23.new

for.body.preheader.i23.new:                       ; preds = %for.body.preheader.i23
  %unroll_iter160 = and i64 %51, -2
  br label %for.body.i25

for.cond13.preheader.i32.loopexit.unr-lcssa:      ; preds = %for.body.i25, %for.body.preheader.i23
  %indvars.iv.i26.unr = phi i64 [ 1, %for.body.preheader.i23 ], [ %indvars.iv.next.i30.1, %for.body.i25 ]
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %for.cond13.preheader.i32, label %for.body.i25.epil

for.body.i25.epil:                                ; preds = %for.cond13.preheader.i32.loopexit.unr-lcssa
  %53 = load ptr, ptr %mb_data.i19, align 8
  %mbup5.i27.epil = getelementptr inbounds %struct.macroblock, ptr %53, i64 %indvars.iv.i26.unr, i32 28
  store ptr null, ptr %mbup5.i27.epil, align 8
  %54 = load ptr, ptr %mb_data.i19, align 8
  %55 = getelementptr %struct.macroblock, ptr %54, i64 %indvars.iv.i26.unr
  %arrayidx8.i28.epil = getelementptr i8, ptr %55, i64 -480
  %mbleft12.i29.epil = getelementptr inbounds %struct.macroblock, ptr %54, i64 %indvars.iv.i26.unr, i32 29
  store ptr %arrayidx8.i28.epil, ptr %mbleft12.i29.epil, align 8
  br label %for.cond13.preheader.i32

for.cond13.preheader.i32:                         ; preds = %for.body.i25.epil, %for.cond13.preheader.i32.loopexit.unr-lcssa, %init_neighbors.exit
  %cmp1498.i33 = icmp slt i32 %46, %48
  br i1 %cmp1498.i33, label %for.body15.preheader.i53, label %for.cond30.preheader.i34

for.body15.preheader.i53:                         ; preds = %for.cond13.preheader.i32
  %56 = sext i32 %46 to i64
  %57 = sext i32 %48 to i64
  br label %for.body15.i54

for.body.i25:                                     ; preds = %for.body.i25, %for.body.preheader.i23.new
  %indvars.iv.i26 = phi i64 [ 1, %for.body.preheader.i23.new ], [ %indvars.iv.next.i30.1, %for.body.i25 ]
  %niter161 = phi i64 [ 0, %for.body.preheader.i23.new ], [ %niter161.next.1, %for.body.i25 ]
  %58 = load ptr, ptr %mb_data.i19, align 8
  %mbup5.i27 = getelementptr inbounds %struct.macroblock, ptr %58, i64 %indvars.iv.i26, i32 28
  store ptr null, ptr %mbup5.i27, align 8
  %59 = load ptr, ptr %mb_data.i19, align 8
  %60 = getelementptr %struct.macroblock, ptr %59, i64 %indvars.iv.i26
  %arrayidx8.i28 = getelementptr i8, ptr %60, i64 -480
  %mbleft12.i29 = getelementptr inbounds %struct.macroblock, ptr %59, i64 %indvars.iv.i26, i32 29
  store ptr %arrayidx8.i28, ptr %mbleft12.i29, align 8
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i26, 1
  %61 = load ptr, ptr %mb_data.i19, align 8
  %mbup5.i27.1 = getelementptr inbounds %struct.macroblock, ptr %61, i64 %indvars.iv.next.i30, i32 28
  store ptr null, ptr %mbup5.i27.1, align 8
  %62 = load ptr, ptr %mb_data.i19, align 8
  %63 = getelementptr %struct.macroblock, ptr %62, i64 %indvars.iv.next.i30
  %arrayidx8.i28.1 = getelementptr i8, ptr %63, i64 -480
  %mbleft12.i29.1 = getelementptr inbounds %struct.macroblock, ptr %62, i64 %indvars.iv.next.i30, i32 29
  store ptr %arrayidx8.i28.1, ptr %mbleft12.i29.1, align 8
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i26, 2
  %niter161.next.1 = add i64 %niter161, 2
  %niter161.ncmp.1 = icmp eq i64 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1, label %for.cond13.preheader.i32.loopexit.unr-lcssa, label %for.body.i25

for.cond30.preheader.i34:                         ; preds = %for.body15.i54, %for.cond13.preheader.i32
  %cmp31102.i35 = icmp slt i32 %47, 2
  %brmerge.i36 = or i1 %cmp96.i22, %cmp31102.i35
  br i1 %brmerge.i36, label %init_neighbors.exit61, label %for.cond33.preheader.us.preheader.i37

for.cond33.preheader.us.preheader.i37:            ; preds = %for.cond30.preheader.i34
  %64 = zext nneg i32 %46 to i64
  %wide.trip.count121.i38 = zext nneg i32 %47 to i64
  %65 = add nsw i64 %64, -1
  %xtraiter162 = and i64 %65, 1
  %66 = icmp eq i32 %46, 2
  %unroll_iter164 = and i64 %65, -2
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %for.cond33.preheader.us.i40

for.cond33.preheader.us.i40:                      ; preds = %for.cond33.for.inc56_crit_edge.us.i50, %for.cond33.preheader.us.preheader.i37
  %indvars.iv117.i41 = phi i64 [ 1, %for.cond33.preheader.us.preheader.i37 ], [ %indvars.iv.next118.i51, %for.cond33.for.inc56_crit_edge.us.i50 ]
  %67 = mul nuw nsw i64 %indvars.iv117.i41, %64
  br i1 %66, label %for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa, label %for.body35.us.i42

for.body35.us.i42:                                ; preds = %for.cond33.preheader.us.i40, %for.body35.us.i42
  %indvars.iv110.i43 = phi i64 [ %indvars.iv.next111.i48.1, %for.body35.us.i42 ], [ 1, %for.cond33.preheader.us.i40 ]
  %niter165 = phi i64 [ %niter165.next.1, %for.body35.us.i42 ], [ 0, %for.cond33.preheader.us.i40 ]
  %68 = add nuw nsw i64 %indvars.iv110.i43, %67
  %69 = load ptr, ptr %mb_data.i19, align 8
  %70 = sub nuw nsw i64 %68, %64
  %arrayidx40.us.i44 = getelementptr inbounds %struct.macroblock, ptr %69, i64 %70
  %mbup44.us.i45 = getelementptr inbounds %struct.macroblock, ptr %69, i64 %68, i32 28
  store ptr %arrayidx40.us.i44, ptr %mbup44.us.i45, align 8
  %71 = load ptr, ptr %mb_data.i19, align 8
  %72 = getelementptr %struct.macroblock, ptr %71, i64 %68
  %arrayidx48.us.i46 = getelementptr i8, ptr %72, i64 -480
  %mbleft52.us.i47 = getelementptr inbounds %struct.macroblock, ptr %71, i64 %68, i32 29
  store ptr %arrayidx48.us.i46, ptr %mbleft52.us.i47, align 8
  %indvars.iv.next111.i48 = add nuw nsw i64 %indvars.iv110.i43, 1
  %73 = add nuw nsw i64 %indvars.iv.next111.i48, %67
  %74 = load ptr, ptr %mb_data.i19, align 8
  %75 = sub nuw nsw i64 %73, %64
  %arrayidx40.us.i44.1 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %75
  %mbup44.us.i45.1 = getelementptr inbounds %struct.macroblock, ptr %74, i64 %73, i32 28
  store ptr %arrayidx40.us.i44.1, ptr %mbup44.us.i45.1, align 8
  %76 = load ptr, ptr %mb_data.i19, align 8
  %77 = getelementptr %struct.macroblock, ptr %76, i64 %73
  %arrayidx48.us.i46.1 = getelementptr i8, ptr %77, i64 -480
  %mbleft52.us.i47.1 = getelementptr inbounds %struct.macroblock, ptr %76, i64 %73, i32 29
  store ptr %arrayidx48.us.i46.1, ptr %mbleft52.us.i47.1, align 8
  %indvars.iv.next111.i48.1 = add nuw nsw i64 %indvars.iv110.i43, 2
  %niter165.next.1 = add i64 %niter165, 2
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa, label %for.body35.us.i42

for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa:  ; preds = %for.body35.us.i42, %for.cond33.preheader.us.i40
  %indvars.iv110.i43.unr = phi i64 [ 1, %for.cond33.preheader.us.i40 ], [ %indvars.iv.next111.i48.1, %for.body35.us.i42 ]
  br i1 %lcmp.mod163.not, label %for.cond33.for.inc56_crit_edge.us.i50, label %for.body35.us.i42.epil

for.body35.us.i42.epil:                           ; preds = %for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa
  %78 = add nuw nsw i64 %indvars.iv110.i43.unr, %67
  %79 = load ptr, ptr %mb_data.i19, align 8
  %80 = sub nuw nsw i64 %78, %64
  %arrayidx40.us.i44.epil = getelementptr inbounds %struct.macroblock, ptr %79, i64 %80
  %mbup44.us.i45.epil = getelementptr inbounds %struct.macroblock, ptr %79, i64 %78, i32 28
  store ptr %arrayidx40.us.i44.epil, ptr %mbup44.us.i45.epil, align 8
  %81 = load ptr, ptr %mb_data.i19, align 8
  %82 = getelementptr %struct.macroblock, ptr %81, i64 %78
  %arrayidx48.us.i46.epil = getelementptr i8, ptr %82, i64 -480
  %mbleft52.us.i47.epil = getelementptr inbounds %struct.macroblock, ptr %81, i64 %78, i32 29
  store ptr %arrayidx48.us.i46.epil, ptr %mbleft52.us.i47.epil, align 8
  br label %for.cond33.for.inc56_crit_edge.us.i50

for.cond33.for.inc56_crit_edge.us.i50:            ; preds = %for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa, %for.body35.us.i42.epil
  %indvars.iv.next118.i51 = add nuw nsw i64 %indvars.iv117.i41, 1
  %exitcond122.not.i52 = icmp eq i64 %indvars.iv.next118.i51, %wide.trip.count121.i38
  br i1 %exitcond122.not.i52, label %init_neighbors.exit61, label %for.cond33.preheader.us.i40

for.body15.i54:                                   ; preds = %for.body15.i54, %for.body15.preheader.i53
  %indvars.iv106.i55 = phi i64 [ %56, %for.body15.preheader.i53 ], [ %indvars.iv.next107.i59, %for.body15.i54 ]
  %83 = load ptr, ptr %mb_data.i19, align 8
  %84 = sub nsw i64 %indvars.iv106.i55, %56
  %arrayidx19.i56 = getelementptr inbounds %struct.macroblock, ptr %83, i64 %84
  %mbup23.i57 = getelementptr inbounds %struct.macroblock, ptr %83, i64 %indvars.iv106.i55, i32 28
  store ptr %arrayidx19.i56, ptr %mbup23.i57, align 8
  %85 = load ptr, ptr %mb_data.i19, align 8
  %mbleft27.i58 = getelementptr inbounds %struct.macroblock, ptr %85, i64 %indvars.iv106.i55, i32 29
  store ptr null, ptr %mbleft27.i58, align 8
  %indvars.iv.next107.i59 = add nsw i64 %indvars.iv106.i55, %56
  %cmp14.i60 = icmp slt i64 %indvars.iv.next107.i59, %57
  br i1 %cmp14.i60, label %for.body15.i54, label %for.cond30.preheader.i34

init_neighbors.exit61:                            ; preds = %for.cond33.for.inc56_crit_edge.us.i50, %for.cond30.preheader.i34
  tail call void @change_plane_JV(ptr noundef %p_Vid, i32 noundef 2, ptr noundef null) #5
  %86 = load ptr, ptr @p_Dec, align 8
  %p_Vid3 = getelementptr inbounds i8, ptr %86, i64 8
  %87 = load ptr, ptr %p_Vid3, align 8
  %PicWidthInMbs.i62 = getelementptr inbounds i8, ptr %87, i64 848996
  %88 = load i32, ptr %PicWidthInMbs.i62, align 4
  %PicHeightInMbs.i63 = getelementptr inbounds i8, ptr %87, i64 849008
  %89 = load i32, ptr %PicHeightInMbs.i63, align 8
  %PicSizeInMbs.i64 = getelementptr inbounds i8, ptr %87, i64 849012
  %90 = load i32, ptr %PicSizeInMbs.i64, align 4
  %mb_data.i65 = getelementptr inbounds i8, ptr %87, i64 848888
  %91 = load ptr, ptr %mb_data.i65, align 8
  %mbup.i66 = getelementptr inbounds i8, ptr %91, i64 136
  store ptr null, ptr %mbup.i66, align 8
  %92 = load ptr, ptr %mb_data.i65, align 8
  %mbleft.i67 = getelementptr inbounds i8, ptr %92, i64 144
  store ptr null, ptr %mbleft.i67, align 8
  %cmp96.i68 = icmp slt i32 %88, 2
  br i1 %cmp96.i68, label %for.cond13.preheader.i78, label %for.body.preheader.i69

for.body.preheader.i69:                           ; preds = %init_neighbors.exit61
  %wide.trip.count.i70 = zext nneg i32 %88 to i64
  %93 = add nsw i64 %wide.trip.count.i70, -1
  %xtraiter166 = and i64 %93, 1
  %94 = icmp eq i32 %88, 2
  br i1 %94, label %for.cond13.preheader.i78.loopexit.unr-lcssa, label %for.body.preheader.i69.new

for.body.preheader.i69.new:                       ; preds = %for.body.preheader.i69
  %unroll_iter168 = and i64 %93, -2
  br label %for.body.i71

for.cond13.preheader.i78.loopexit.unr-lcssa:      ; preds = %for.body.i71, %for.body.preheader.i69
  %indvars.iv.i72.unr = phi i64 [ 1, %for.body.preheader.i69 ], [ %indvars.iv.next.i76.1, %for.body.i71 ]
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %for.cond13.preheader.i78, label %for.body.i71.epil

for.body.i71.epil:                                ; preds = %for.cond13.preheader.i78.loopexit.unr-lcssa
  %95 = load ptr, ptr %mb_data.i65, align 8
  %mbup5.i73.epil = getelementptr inbounds %struct.macroblock, ptr %95, i64 %indvars.iv.i72.unr, i32 28
  store ptr null, ptr %mbup5.i73.epil, align 8
  %96 = load ptr, ptr %mb_data.i65, align 8
  %97 = getelementptr %struct.macroblock, ptr %96, i64 %indvars.iv.i72.unr
  %arrayidx8.i74.epil = getelementptr i8, ptr %97, i64 -480
  %mbleft12.i75.epil = getelementptr inbounds %struct.macroblock, ptr %96, i64 %indvars.iv.i72.unr, i32 29
  store ptr %arrayidx8.i74.epil, ptr %mbleft12.i75.epil, align 8
  br label %for.cond13.preheader.i78

for.cond13.preheader.i78:                         ; preds = %for.body.i71.epil, %for.cond13.preheader.i78.loopexit.unr-lcssa, %init_neighbors.exit61
  %cmp1498.i79 = icmp slt i32 %88, %90
  br i1 %cmp1498.i79, label %for.body15.preheader.i99, label %for.cond30.preheader.i80

for.body15.preheader.i99:                         ; preds = %for.cond13.preheader.i78
  %98 = sext i32 %88 to i64
  %99 = sext i32 %90 to i64
  br label %for.body15.i100

for.body.i71:                                     ; preds = %for.body.i71, %for.body.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ 1, %for.body.preheader.i69.new ], [ %indvars.iv.next.i76.1, %for.body.i71 ]
  %niter169 = phi i64 [ 0, %for.body.preheader.i69.new ], [ %niter169.next.1, %for.body.i71 ]
  %100 = load ptr, ptr %mb_data.i65, align 8
  %mbup5.i73 = getelementptr inbounds %struct.macroblock, ptr %100, i64 %indvars.iv.i72, i32 28
  store ptr null, ptr %mbup5.i73, align 8
  %101 = load ptr, ptr %mb_data.i65, align 8
  %102 = getelementptr %struct.macroblock, ptr %101, i64 %indvars.iv.i72
  %arrayidx8.i74 = getelementptr i8, ptr %102, i64 -480
  %mbleft12.i75 = getelementptr inbounds %struct.macroblock, ptr %101, i64 %indvars.iv.i72, i32 29
  store ptr %arrayidx8.i74, ptr %mbleft12.i75, align 8
  %indvars.iv.next.i76 = add nuw nsw i64 %indvars.iv.i72, 1
  %103 = load ptr, ptr %mb_data.i65, align 8
  %mbup5.i73.1 = getelementptr inbounds %struct.macroblock, ptr %103, i64 %indvars.iv.next.i76, i32 28
  store ptr null, ptr %mbup5.i73.1, align 8
  %104 = load ptr, ptr %mb_data.i65, align 8
  %105 = getelementptr %struct.macroblock, ptr %104, i64 %indvars.iv.next.i76
  %arrayidx8.i74.1 = getelementptr i8, ptr %105, i64 -480
  %mbleft12.i75.1 = getelementptr inbounds %struct.macroblock, ptr %104, i64 %indvars.iv.next.i76, i32 29
  store ptr %arrayidx8.i74.1, ptr %mbleft12.i75.1, align 8
  %indvars.iv.next.i76.1 = add nuw nsw i64 %indvars.iv.i72, 2
  %niter169.next.1 = add i64 %niter169, 2
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %for.cond13.preheader.i78.loopexit.unr-lcssa, label %for.body.i71

for.cond30.preheader.i80:                         ; preds = %for.body15.i100, %for.cond13.preheader.i78
  %cmp31102.i81 = icmp slt i32 %89, 2
  %brmerge.i82 = or i1 %cmp96.i68, %cmp31102.i81
  br i1 %brmerge.i82, label %init_neighbors.exit107, label %for.cond33.preheader.us.preheader.i83

for.cond33.preheader.us.preheader.i83:            ; preds = %for.cond30.preheader.i80
  %106 = zext nneg i32 %88 to i64
  %wide.trip.count121.i84 = zext nneg i32 %89 to i64
  %107 = add nsw i64 %106, -1
  %xtraiter170 = and i64 %107, 1
  %108 = icmp eq i32 %88, 2
  %unroll_iter172 = and i64 %107, -2
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br label %for.cond33.preheader.us.i86

for.cond33.preheader.us.i86:                      ; preds = %for.cond33.for.inc56_crit_edge.us.i96, %for.cond33.preheader.us.preheader.i83
  %indvars.iv117.i87 = phi i64 [ 1, %for.cond33.preheader.us.preheader.i83 ], [ %indvars.iv.next118.i97, %for.cond33.for.inc56_crit_edge.us.i96 ]
  %109 = mul nuw nsw i64 %indvars.iv117.i87, %106
  br i1 %108, label %for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa, label %for.body35.us.i88

for.body35.us.i88:                                ; preds = %for.cond33.preheader.us.i86, %for.body35.us.i88
  %indvars.iv110.i89 = phi i64 [ %indvars.iv.next111.i94.1, %for.body35.us.i88 ], [ 1, %for.cond33.preheader.us.i86 ]
  %niter173 = phi i64 [ %niter173.next.1, %for.body35.us.i88 ], [ 0, %for.cond33.preheader.us.i86 ]
  %110 = add nuw nsw i64 %indvars.iv110.i89, %109
  %111 = load ptr, ptr %mb_data.i65, align 8
  %112 = sub nuw nsw i64 %110, %106
  %arrayidx40.us.i90 = getelementptr inbounds %struct.macroblock, ptr %111, i64 %112
  %mbup44.us.i91 = getelementptr inbounds %struct.macroblock, ptr %111, i64 %110, i32 28
  store ptr %arrayidx40.us.i90, ptr %mbup44.us.i91, align 8
  %113 = load ptr, ptr %mb_data.i65, align 8
  %114 = getelementptr %struct.macroblock, ptr %113, i64 %110
  %arrayidx48.us.i92 = getelementptr i8, ptr %114, i64 -480
  %mbleft52.us.i93 = getelementptr inbounds %struct.macroblock, ptr %113, i64 %110, i32 29
  store ptr %arrayidx48.us.i92, ptr %mbleft52.us.i93, align 8
  %indvars.iv.next111.i94 = add nuw nsw i64 %indvars.iv110.i89, 1
  %115 = add nuw nsw i64 %indvars.iv.next111.i94, %109
  %116 = load ptr, ptr %mb_data.i65, align 8
  %117 = sub nuw nsw i64 %115, %106
  %arrayidx40.us.i90.1 = getelementptr inbounds %struct.macroblock, ptr %116, i64 %117
  %mbup44.us.i91.1 = getelementptr inbounds %struct.macroblock, ptr %116, i64 %115, i32 28
  store ptr %arrayidx40.us.i90.1, ptr %mbup44.us.i91.1, align 8
  %118 = load ptr, ptr %mb_data.i65, align 8
  %119 = getelementptr %struct.macroblock, ptr %118, i64 %115
  %arrayidx48.us.i92.1 = getelementptr i8, ptr %119, i64 -480
  %mbleft52.us.i93.1 = getelementptr inbounds %struct.macroblock, ptr %118, i64 %115, i32 29
  store ptr %arrayidx48.us.i92.1, ptr %mbleft52.us.i93.1, align 8
  %indvars.iv.next111.i94.1 = add nuw nsw i64 %indvars.iv110.i89, 2
  %niter173.next.1 = add i64 %niter173, 2
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa, label %for.body35.us.i88

for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa:  ; preds = %for.body35.us.i88, %for.cond33.preheader.us.i86
  %indvars.iv110.i89.unr = phi i64 [ 1, %for.cond33.preheader.us.i86 ], [ %indvars.iv.next111.i94.1, %for.body35.us.i88 ]
  br i1 %lcmp.mod171.not, label %for.cond33.for.inc56_crit_edge.us.i96, label %for.body35.us.i88.epil

for.body35.us.i88.epil:                           ; preds = %for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa
  %120 = add nuw nsw i64 %indvars.iv110.i89.unr, %109
  %121 = load ptr, ptr %mb_data.i65, align 8
  %122 = sub nuw nsw i64 %120, %106
  %arrayidx40.us.i90.epil = getelementptr inbounds %struct.macroblock, ptr %121, i64 %122
  %mbup44.us.i91.epil = getelementptr inbounds %struct.macroblock, ptr %121, i64 %120, i32 28
  store ptr %arrayidx40.us.i90.epil, ptr %mbup44.us.i91.epil, align 8
  %123 = load ptr, ptr %mb_data.i65, align 8
  %124 = getelementptr %struct.macroblock, ptr %123, i64 %120
  %arrayidx48.us.i92.epil = getelementptr i8, ptr %124, i64 -480
  %mbleft52.us.i93.epil = getelementptr inbounds %struct.macroblock, ptr %123, i64 %120, i32 29
  store ptr %arrayidx48.us.i92.epil, ptr %mbleft52.us.i93.epil, align 8
  br label %for.cond33.for.inc56_crit_edge.us.i96

for.cond33.for.inc56_crit_edge.us.i96:            ; preds = %for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa, %for.body35.us.i88.epil
  %indvars.iv.next118.i97 = add nuw nsw i64 %indvars.iv117.i87, 1
  %exitcond122.not.i98 = icmp eq i64 %indvars.iv.next118.i97, %wide.trip.count121.i84
  br i1 %exitcond122.not.i98, label %init_neighbors.exit107, label %for.cond33.preheader.us.i86

for.body15.i100:                                  ; preds = %for.body15.i100, %for.body15.preheader.i99
  %indvars.iv106.i101 = phi i64 [ %98, %for.body15.preheader.i99 ], [ %indvars.iv.next107.i105, %for.body15.i100 ]
  %125 = load ptr, ptr %mb_data.i65, align 8
  %126 = sub nsw i64 %indvars.iv106.i101, %98
  %arrayidx19.i102 = getelementptr inbounds %struct.macroblock, ptr %125, i64 %126
  %mbup23.i103 = getelementptr inbounds %struct.macroblock, ptr %125, i64 %indvars.iv106.i101, i32 28
  store ptr %arrayidx19.i102, ptr %mbup23.i103, align 8
  %127 = load ptr, ptr %mb_data.i65, align 8
  %mbleft27.i104 = getelementptr inbounds %struct.macroblock, ptr %127, i64 %indvars.iv106.i101, i32 29
  store ptr null, ptr %mbleft27.i104, align 8
  %indvars.iv.next107.i105 = add nsw i64 %indvars.iv106.i101, %98
  %cmp14.i106 = icmp slt i64 %indvars.iv.next107.i105, %99
  br i1 %cmp14.i106, label %for.body15.i100, label %for.cond30.preheader.i80

init_neighbors.exit107:                           ; preds = %for.cond33.for.inc56_crit_edge.us.i96, %for.cond30.preheader.i80
  tail call void @change_plane_JV(ptr noundef %p_Vid, i32 noundef 0, ptr noundef null) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %128 = load ptr, ptr @p_Dec, align 8
  %p_Vid4 = getelementptr inbounds i8, ptr %128, i64 8
  %129 = load ptr, ptr %p_Vid4, align 8
  %PicWidthInMbs.i108 = getelementptr inbounds i8, ptr %129, i64 848996
  %130 = load i32, ptr %PicWidthInMbs.i108, align 4
  %PicHeightInMbs.i109 = getelementptr inbounds i8, ptr %129, i64 849008
  %131 = load i32, ptr %PicHeightInMbs.i109, align 8
  %PicSizeInMbs.i110 = getelementptr inbounds i8, ptr %129, i64 849012
  %132 = load i32, ptr %PicSizeInMbs.i110, align 4
  %mb_data.i111 = getelementptr inbounds i8, ptr %129, i64 848888
  %133 = load ptr, ptr %mb_data.i111, align 8
  %mbup.i112 = getelementptr inbounds i8, ptr %133, i64 136
  store ptr null, ptr %mbup.i112, align 8
  %134 = load ptr, ptr %mb_data.i111, align 8
  %mbleft.i113 = getelementptr inbounds i8, ptr %134, i64 144
  store ptr null, ptr %mbleft.i113, align 8
  %cmp96.i114 = icmp slt i32 %130, 2
  br i1 %cmp96.i114, label %for.cond13.preheader.i124, label %for.body.preheader.i115

for.body.preheader.i115:                          ; preds = %if.else
  %wide.trip.count.i116 = zext nneg i32 %130 to i64
  %135 = add nsw i64 %wide.trip.count.i116, -1
  %xtraiter174 = and i64 %135, 1
  %136 = icmp eq i32 %130, 2
  br i1 %136, label %for.cond13.preheader.i124.loopexit.unr-lcssa, label %for.body.preheader.i115.new

for.body.preheader.i115.new:                      ; preds = %for.body.preheader.i115
  %unroll_iter176 = and i64 %135, -2
  br label %for.body.i117

for.cond13.preheader.i124.loopexit.unr-lcssa:     ; preds = %for.body.i117, %for.body.preheader.i115
  %indvars.iv.i118.unr = phi i64 [ 1, %for.body.preheader.i115 ], [ %indvars.iv.next.i122.1, %for.body.i117 ]
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %for.cond13.preheader.i124, label %for.body.i117.epil

for.body.i117.epil:                               ; preds = %for.cond13.preheader.i124.loopexit.unr-lcssa
  %137 = load ptr, ptr %mb_data.i111, align 8
  %mbup5.i119.epil = getelementptr inbounds %struct.macroblock, ptr %137, i64 %indvars.iv.i118.unr, i32 28
  store ptr null, ptr %mbup5.i119.epil, align 8
  %138 = load ptr, ptr %mb_data.i111, align 8
  %139 = getelementptr %struct.macroblock, ptr %138, i64 %indvars.iv.i118.unr
  %arrayidx8.i120.epil = getelementptr i8, ptr %139, i64 -480
  %mbleft12.i121.epil = getelementptr inbounds %struct.macroblock, ptr %138, i64 %indvars.iv.i118.unr, i32 29
  store ptr %arrayidx8.i120.epil, ptr %mbleft12.i121.epil, align 8
  br label %for.cond13.preheader.i124

for.cond13.preheader.i124:                        ; preds = %for.body.i117.epil, %for.cond13.preheader.i124.loopexit.unr-lcssa, %if.else
  %cmp1498.i125 = icmp slt i32 %130, %132
  br i1 %cmp1498.i125, label %for.body15.preheader.i145, label %for.cond30.preheader.i126

for.body15.preheader.i145:                        ; preds = %for.cond13.preheader.i124
  %140 = sext i32 %130 to i64
  %141 = sext i32 %132 to i64
  br label %for.body15.i146

for.body.i117:                                    ; preds = %for.body.i117, %for.body.preheader.i115.new
  %indvars.iv.i118 = phi i64 [ 1, %for.body.preheader.i115.new ], [ %indvars.iv.next.i122.1, %for.body.i117 ]
  %niter177 = phi i64 [ 0, %for.body.preheader.i115.new ], [ %niter177.next.1, %for.body.i117 ]
  %142 = load ptr, ptr %mb_data.i111, align 8
  %mbup5.i119 = getelementptr inbounds %struct.macroblock, ptr %142, i64 %indvars.iv.i118, i32 28
  store ptr null, ptr %mbup5.i119, align 8
  %143 = load ptr, ptr %mb_data.i111, align 8
  %144 = getelementptr %struct.macroblock, ptr %143, i64 %indvars.iv.i118
  %arrayidx8.i120 = getelementptr i8, ptr %144, i64 -480
  %mbleft12.i121 = getelementptr inbounds %struct.macroblock, ptr %143, i64 %indvars.iv.i118, i32 29
  store ptr %arrayidx8.i120, ptr %mbleft12.i121, align 8
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1
  %145 = load ptr, ptr %mb_data.i111, align 8
  %mbup5.i119.1 = getelementptr inbounds %struct.macroblock, ptr %145, i64 %indvars.iv.next.i122, i32 28
  store ptr null, ptr %mbup5.i119.1, align 8
  %146 = load ptr, ptr %mb_data.i111, align 8
  %147 = getelementptr %struct.macroblock, ptr %146, i64 %indvars.iv.next.i122
  %arrayidx8.i120.1 = getelementptr i8, ptr %147, i64 -480
  %mbleft12.i121.1 = getelementptr inbounds %struct.macroblock, ptr %146, i64 %indvars.iv.next.i122, i32 29
  store ptr %arrayidx8.i120.1, ptr %mbleft12.i121.1, align 8
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i118, 2
  %niter177.next.1 = add i64 %niter177, 2
  %niter177.ncmp.1 = icmp eq i64 %niter177.next.1, %unroll_iter176
  br i1 %niter177.ncmp.1, label %for.cond13.preheader.i124.loopexit.unr-lcssa, label %for.body.i117

for.cond30.preheader.i126:                        ; preds = %for.body15.i146, %for.cond13.preheader.i124
  %cmp31102.i127 = icmp slt i32 %131, 2
  %brmerge.i128 = or i1 %cmp96.i114, %cmp31102.i127
  br i1 %brmerge.i128, label %if.end, label %for.cond33.preheader.us.preheader.i129

for.cond33.preheader.us.preheader.i129:           ; preds = %for.cond30.preheader.i126
  %148 = zext nneg i32 %130 to i64
  %wide.trip.count121.i130 = zext nneg i32 %131 to i64
  %149 = add nsw i64 %148, -1
  %xtraiter178 = and i64 %149, 1
  %150 = icmp eq i32 %130, 2
  %unroll_iter180 = and i64 %149, -2
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br label %for.cond33.preheader.us.i132

for.cond33.preheader.us.i132:                     ; preds = %for.cond33.for.inc56_crit_edge.us.i142, %for.cond33.preheader.us.preheader.i129
  %indvars.iv117.i133 = phi i64 [ 1, %for.cond33.preheader.us.preheader.i129 ], [ %indvars.iv.next118.i143, %for.cond33.for.inc56_crit_edge.us.i142 ]
  %151 = mul nuw nsw i64 %indvars.iv117.i133, %148
  br i1 %150, label %for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa, label %for.body35.us.i134

for.body35.us.i134:                               ; preds = %for.cond33.preheader.us.i132, %for.body35.us.i134
  %indvars.iv110.i135 = phi i64 [ %indvars.iv.next111.i140.1, %for.body35.us.i134 ], [ 1, %for.cond33.preheader.us.i132 ]
  %niter181 = phi i64 [ %niter181.next.1, %for.body35.us.i134 ], [ 0, %for.cond33.preheader.us.i132 ]
  %152 = add nuw nsw i64 %indvars.iv110.i135, %151
  %153 = load ptr, ptr %mb_data.i111, align 8
  %154 = sub nuw nsw i64 %152, %148
  %arrayidx40.us.i136 = getelementptr inbounds %struct.macroblock, ptr %153, i64 %154
  %mbup44.us.i137 = getelementptr inbounds %struct.macroblock, ptr %153, i64 %152, i32 28
  store ptr %arrayidx40.us.i136, ptr %mbup44.us.i137, align 8
  %155 = load ptr, ptr %mb_data.i111, align 8
  %156 = getelementptr %struct.macroblock, ptr %155, i64 %152
  %arrayidx48.us.i138 = getelementptr i8, ptr %156, i64 -480
  %mbleft52.us.i139 = getelementptr inbounds %struct.macroblock, ptr %155, i64 %152, i32 29
  store ptr %arrayidx48.us.i138, ptr %mbleft52.us.i139, align 8
  %indvars.iv.next111.i140 = add nuw nsw i64 %indvars.iv110.i135, 1
  %157 = add nuw nsw i64 %indvars.iv.next111.i140, %151
  %158 = load ptr, ptr %mb_data.i111, align 8
  %159 = sub nuw nsw i64 %157, %148
  %arrayidx40.us.i136.1 = getelementptr inbounds %struct.macroblock, ptr %158, i64 %159
  %mbup44.us.i137.1 = getelementptr inbounds %struct.macroblock, ptr %158, i64 %157, i32 28
  store ptr %arrayidx40.us.i136.1, ptr %mbup44.us.i137.1, align 8
  %160 = load ptr, ptr %mb_data.i111, align 8
  %161 = getelementptr %struct.macroblock, ptr %160, i64 %157
  %arrayidx48.us.i138.1 = getelementptr i8, ptr %161, i64 -480
  %mbleft52.us.i139.1 = getelementptr inbounds %struct.macroblock, ptr %160, i64 %157, i32 29
  store ptr %arrayidx48.us.i138.1, ptr %mbleft52.us.i139.1, align 8
  %indvars.iv.next111.i140.1 = add nuw nsw i64 %indvars.iv110.i135, 2
  %niter181.next.1 = add i64 %niter181, 2
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa, label %for.body35.us.i134

for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa: ; preds = %for.body35.us.i134, %for.cond33.preheader.us.i132
  %indvars.iv110.i135.unr = phi i64 [ 1, %for.cond33.preheader.us.i132 ], [ %indvars.iv.next111.i140.1, %for.body35.us.i134 ]
  br i1 %lcmp.mod179.not, label %for.cond33.for.inc56_crit_edge.us.i142, label %for.body35.us.i134.epil

for.body35.us.i134.epil:                          ; preds = %for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa
  %162 = add nuw nsw i64 %indvars.iv110.i135.unr, %151
  %163 = load ptr, ptr %mb_data.i111, align 8
  %164 = sub nuw nsw i64 %162, %148
  %arrayidx40.us.i136.epil = getelementptr inbounds %struct.macroblock, ptr %163, i64 %164
  %mbup44.us.i137.epil = getelementptr inbounds %struct.macroblock, ptr %163, i64 %162, i32 28
  store ptr %arrayidx40.us.i136.epil, ptr %mbup44.us.i137.epil, align 8
  %165 = load ptr, ptr %mb_data.i111, align 8
  %166 = getelementptr %struct.macroblock, ptr %165, i64 %162
  %arrayidx48.us.i138.epil = getelementptr i8, ptr %166, i64 -480
  %mbleft52.us.i139.epil = getelementptr inbounds %struct.macroblock, ptr %165, i64 %162, i32 29
  store ptr %arrayidx48.us.i138.epil, ptr %mbleft52.us.i139.epil, align 8
  br label %for.cond33.for.inc56_crit_edge.us.i142

for.cond33.for.inc56_crit_edge.us.i142:           ; preds = %for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa, %for.body35.us.i134.epil
  %indvars.iv.next118.i143 = add nuw nsw i64 %indvars.iv117.i133, 1
  %exitcond122.not.i144 = icmp eq i64 %indvars.iv.next118.i143, %wide.trip.count121.i130
  br i1 %exitcond122.not.i144, label %if.end, label %for.cond33.preheader.us.i132

for.body15.i146:                                  ; preds = %for.body15.i146, %for.body15.preheader.i145
  %indvars.iv106.i147 = phi i64 [ %140, %for.body15.preheader.i145 ], [ %indvars.iv.next107.i151, %for.body15.i146 ]
  %167 = load ptr, ptr %mb_data.i111, align 8
  %168 = sub nsw i64 %indvars.iv106.i147, %140
  %arrayidx19.i148 = getelementptr inbounds %struct.macroblock, ptr %167, i64 %168
  %mbup23.i149 = getelementptr inbounds %struct.macroblock, ptr %167, i64 %indvars.iv106.i147, i32 28
  store ptr %arrayidx19.i148, ptr %mbup23.i149, align 8
  %169 = load ptr, ptr %mb_data.i111, align 8
  %mbleft27.i150 = getelementptr inbounds %struct.macroblock, ptr %169, i64 %indvars.iv106.i147, i32 29
  store ptr null, ptr %mbleft27.i150, align 8
  %indvars.iv.next107.i151 = add nsw i64 %indvars.iv106.i147, %140
  %cmp14.i152 = icmp slt i64 %indvars.iv.next107.i151, %141
  br i1 %cmp14.i152, label %for.body15.i146, label %for.cond30.preheader.i126

if.end:                                           ; preds = %for.cond33.for.inc56_crit_edge.us.i142, %for.cond30.preheader.i126, %init_neighbors.exit107
  %cmp5 = icmp eq i32 %mb_aff_frame_flag, 1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end
  tail call void @set_loop_filter_functions_mbaff(ptr noundef %p_Vid) #5
  br label %if.end8

if.else7:                                         ; preds = %if.end
  tail call void @set_loop_filter_functions_normal(ptr noundef %p_Vid) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  ret void
}

declare void @change_plane_JV(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @set_loop_filter_functions_mbaff(ptr noundef) local_unnamed_addr #2

declare void @set_loop_filter_functions_normal(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @get_mb_pos(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.peeled.count", i32 1}
